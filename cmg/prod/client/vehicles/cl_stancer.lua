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

    IMPORTANT — this file still contains decompiler temporary names.
      Names like workValue12, textValue4, dataTable7, flag3, cmgCall2,
      arg1/arg2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workValue = GetEntityCoords
        dataTable2 = workValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      I have deliberately NOT mass-renamed these reused temporary variables:
      doing that without full control-flow reconstruction can silently change
      behaviour. Comments/section labels below explain the code safely.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local cmgCall, textValue5, textValue6, textValue8, rageUiCall2, threadCall, textValue11, rageUiCall3, rageUiCall4, textValue13, textValue, dataTable, numberValue, numberValue2, dataTable2, numberValue3, numberValue4, workValue3, numberValue5, numberValue6, numberValue7, mathHelper, workValue4, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, eventRegistration, rageUiCall, numberValue8, workValue13, workValue14, textValue7, cmgCall2, workValue15
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue5 = "cfg/cfg_lscustoms"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue5)
textValue5 = RMenu
textValue5 = textValue5.Add
textValue6 = "stancer"
textValue8 = "mainmenu"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
threadCall = ""
textValue11 = "Stancer"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue13 = "cmg_lscustomsui"
textValue = "cmg_lscustomsui"
rageUiCall2, threadCall, textValue11, rageUiCall3, rageUiCall4, textValue13, textValue, dataTable, numberValue, numberValue2, dataTable2, numberValue3, numberValue4, workValue3, numberValue5, numberValue6, numberValue7, mathHelper, workValue4, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, eventRegistration, rageUiCall, numberValue8, workValue13, workValue14, textValue7, cmgCall2, workValue15 = rageUiCall2(threadCall, textValue11, rageUiCall3, rageUiCall4, textValue13, textValue)
textValue5(textValue6, textValue8, rageUiCall2, threadCall, textValue11, rageUiCall3, rageUiCall4, textValue13, textValue, dataTable, numberValue, numberValue2, dataTable2, numberValue3, numberValue4, workValue3, numberValue5, numberValue6, numberValue7, mathHelper, workValue4, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, eventRegistration, rageUiCall, numberValue8, workValue13, workValue14, textValue7, cmgCall2, workValue15)
textValue5 = {}

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1, arg2) ===
function textValue6(arg1, arg2)
  local arg3
  arg3 = arg1 % 2
  if 0 == arg3 then
    arg3 = -arg2
    return arg3
  else
    return arg2
  end
end

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1) ===
function textValue8(arg1)
  local arg2, arg3, arg4, arg5, workValue16, workValue17, workValue19, workValue21, workValue23, workValue
  arg2 = arg1.frontWidth
  if arg2 then
    arg2 = 0
    arg3 = arg1.frontWheelCount
    arg3 = arg3 - 1
    arg4 = 1
    for arg5 = arg2, arg3, arg4 do
      workValue16 = SetVehicleWheelXOffset
      workValue17 = arg1.vehicle
      workValue19 = arg5
      workValue21 = textValue6
      workValue23 = arg5
      workValue = arg1.frontWidth
      workValue21, workValue23, workValue = workValue21(workValue23, workValue)
      workValue16(workValue17, workValue19, workValue21, workValue23, workValue)
    end
  end
  arg2 = arg1.rearWidth
  if arg2 then
    arg2 = arg1.frontWheelCount
    arg3 = arg1.wheelCount
    arg3 = arg3 - 1
    arg4 = 1
    for arg5 = arg2, arg3, arg4 do
      workValue16 = SetVehicleWheelXOffset
      workValue17 = arg1.vehicle
      workValue19 = arg5
      workValue21 = textValue6
      workValue23 = arg5
      workValue = arg1.rearWidth
      workValue21, workValue23, workValue = workValue21(workValue23, workValue)
      workValue16(workValue17, workValue19, workValue21, workValue23, workValue)
    end
  end
  arg2 = arg1.frontCamber
  if arg2 then
    arg2 = 0
    arg3 = arg1.frontWheelCount
    arg3 = arg3 - 1
    arg4 = 1
    for arg5 = arg2, arg3, arg4 do
      workValue16 = SetVehicleWheelYRotation
      workValue17 = arg1.vehicle
      workValue19 = arg5
      workValue21 = textValue6
      workValue23 = arg5
      workValue = arg1.frontCamber
      workValue21, workValue23, workValue = workValue21(workValue23, workValue)
      workValue16(workValue17, workValue19, workValue21, workValue23, workValue)
    end
  end
  arg2 = arg1.rearCamber
  if arg2 then
    arg2 = arg1.frontWheelCount
    arg3 = arg1.wheelCount
    arg3 = arg3 - 1
    arg4 = 1
    for arg5 = arg2, arg3, arg4 do
      workValue16 = SetVehicleWheelYRotation
      workValue17 = arg1.vehicle
      workValue19 = arg5
      workValue21 = textValue6
      workValue23 = arg5
      workValue = arg1.rearCamber
      workValue21, workValue23, workValue = workValue21(workValue23, workValue)
      workValue16(workValue17, workValue19, workValue21, workValue23, workValue)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: arg1) ===
function rageUiCall2(arg1)
  local arg2, arg3, arg4
  arg2 = arg1 / 2
  arg3 = arg2 % 2
  if 0 ~= arg3 then
    arg2 = arg2 - 1
  end
  arg3 = math
  arg3 = arg3.floor
  arg4 = arg2
  return arg3(arg4)
end
threadCall = AddStateBagChangeHandler
textValue11 = "stancer"
rageUiCall3 = nil

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: arg1, arg2, arg3) ===
function rageUiCall4(arg1, arg2, arg3)
  local arg4, arg5, workValue16, workValue17, workValue19, workValue21
  arg4 = tonumber
  arg5 = stringsplit
  workValue16 = arg1
  workValue17 = ":"
  arg5 = arg5(workValue16, workValue17)
  arg5 = arg5[2]
  arg4 = arg4(arg5)
  arg5 = 0
  while true do
    if arg5 > 25 then
      return
    elseif arg4 then
      workValue16 = NetworkDoesEntityExistWithNetworkId
      workValue17 = arg4
      workValue16 = workValue16(workValue17)
      if workValue16 then
        workValue16 = NetworkGetEntityFromNetworkId
        workValue17 = arg4
        workValue16 = workValue16(workValue17)
        if 0 ~= workValue16 then
          workValue17 = GetVehicleNumberOfWheels
          workValue19 = workValue16
          workValue17 = workValue17(workValue19)
          if workValue17 < 32 then
            arg3.vehicle = workValue16
            arg3.wheelCount = workValue17
            workValue19 = rageUiCall2
            workValue21 = arg3.wheelCount
            workValue19 = workValue19(workValue21)
            arg3.frontWheelCount = workValue19
            workValue19 = textValue5
            workValue19[workValue16] = arg3
            break
          end
        end
      end
    end
    arg5 = arg5 + 1
    workValue16 = Citizen
    workValue16 = workValue16.Wait
    workValue17 = 200
    workValue16(workValue17)
  end
end
threadCall(textValue11, rageUiCall3, rageUiCall4)
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
function textValue11()
  local arg1, arg2, arg3, arg4, arg5, workValue16, workValue17, workValue19, workValue21
  while true do
    arg1 = false
    arg2 = pairs
    arg3 = textValue5
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for workValue16, workValue17 in arg2, arg3, arg4, arg5 do
      workValue19 = DoesEntityExist
      workValue21 = workValue16
      workValue19 = workValue19(workValue21)
      if workValue19 then
        workValue19 = textValue8
        workValue21 = workValue17
        workValue19(workValue21)
      else
        workValue19 = textValue5
        workValue19[workValue16] = nil
      end
      arg1 = true
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    if arg1 then
      arg3 = 0
      if arg3 then
        goto flow_label_29
      end
    end
    arg3 = 1000
    ::flow_label_29::
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(textValue11)
threadCall = {}
textValue11 = 0.0
rageUiCall3 = 0
rageUiCall4 = {}
textValue13 = 0.0
textValue = 0
dataTable = {}
numberValue = 0.0
numberValue2 = 0
dataTable2 = {}
numberValue3 = 0.0
numberValue4 = 0
workValue3 = nil
numberValue5 = 0
numberValue6 = 0
numberValue7 = 10
mathHelper = math
mathHelper = mathHelper.ceil
workValue4 = numberValue7 * 2
workValue4 = workValue4 + 1
workValue4 = workValue4 / 2
mathHelper = mathHelper(workValue4)
workValue4 = nil

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1, arg2) ===
function workValue5(arg1, arg2)
  local arg3, arg4, arg5, workValue16, workValue17, workValue19, workValue21, workValue23
  if arg1 then
    arg3 = arg1[arg2]
    if arg3 then
      arg3 = pairs
      arg4 = arg1[arg2]
      arg3, arg4, arg5, workValue16 = arg3(arg4)
      for workValue17, workValue19 in arg3, arg4, arg5, workValue16 do
        if workValue19 then
          workValue21 = tonumber
          workValue23 = workValue17
          workValue21, workValue23 = workValue21(workValue23)
          return workValue21, workValue23
        end
      end
    end
  end
  arg3 = mathHelper
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3, arg4, arg5, workValue16, workValue17, workValue19, workValue21, workValue23, workValue, textValue2
  arg3 = {}
  arg4 = -arg1
  arg5 = arg1
  workValue16 = 1
  for workValue17 = arg4, arg5, workValue16 do
    workValue19 = table
    workValue19 = workValue19.insert
    workValue21 = arg3
    workValue23 = string
    workValue23 = workValue23.format
    workValue = "%.3f"
    textValue2 = arg2 * workValue17
    workValue23, workValue, textValue2 = workValue23(workValue, textValue2)
    workValue19(workValue21, workValue23, workValue, textValue2)
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = math
  arg2 = arg2.abs
  arg3 = GetVehicleWheelXOffset
  arg4 = arg1
  arg5 = 0
  arg3, arg4, arg5 = arg3(arg4, arg5)
  arg2 = arg2(arg3, arg4, arg5)
  textValue11 = arg2
  arg2 = cmgCall.stancerLimits
  arg2 = arg2.frontWidth
  arg3 = numberValue7
  arg2 = arg2 / arg3
  arg3 = workValue6
  arg4 = numberValue7
  arg5 = arg2
  arg3 = arg3(arg4, arg5)
  threadCall = arg3
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1, arg2) ===
function workValue8(arg1, arg2)
  local arg3, arg4, arg5, workValue16
  arg3 = math
  arg3 = arg3.abs
  arg4 = GetVehicleWheelXOffset
  arg5 = arg1
  workValue16 = arg2
  arg4, arg5, workValue16 = arg4(arg5, workValue16)
  arg3 = arg3(arg4, arg5, workValue16)
  textValue13 = arg3
  arg3 = cmgCall.stancerLimits
  arg3 = arg3.rearWidth
  arg4 = numberValue7
  arg3 = arg3 / arg4
  arg4 = workValue6
  arg5 = numberValue7
  workValue16 = arg3
  arg4 = arg4(arg5, workValue16)
  rageUiCall4 = arg4
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = math
  arg2 = arg2.abs
  arg3 = GetVehicleWheelYRotation
  arg4 = arg1
  arg5 = 0
  arg3, arg4, arg5 = arg3(arg4, arg5)
  arg2 = arg2(arg3, arg4, arg5)
  numberValue = arg2
  arg2 = cmgCall.stancerLimits
  arg2 = arg2.frontCamber
  arg3 = numberValue7
  arg2 = arg2 / arg3
  arg3 = workValue6
  arg4 = numberValue7
  arg5 = arg2
  arg3 = arg3(arg4, arg5)
  dataTable = arg3
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2) ===
function workValue10(arg1, arg2)
  local arg3, arg4, arg5, workValue16
  arg3 = math
  arg3 = arg3.abs
  arg4 = GetVehicleWheelYRotation
  arg5 = arg1
  workValue16 = arg2
  arg4, arg5, workValue16 = arg4(arg5, workValue16)
  arg3 = arg3(arg4, arg5, workValue16)
  numberValue3 = arg3
  arg3 = cmgCall.stancerLimits
  arg3 = arg3.rearCamber
  arg4 = numberValue7
  arg3 = arg3 / arg4
  arg4 = workValue6
  arg5 = numberValue7
  workValue16 = arg3
  arg4 = arg4(arg5, workValue16)
  dataTable2 = arg4
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, arg3, arg4, arg5, workValue16, workValue17, workValue19, workValue21
  arg1 = GetEntityModel
  arg2 = numberValue5
  -- Beginner: result below is modelHash.
  arg1 = arg1(arg2)
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = arg1
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg2(arg3)
  arg2 = CreateVehicle
  arg3 = arg1
  arg4 = 0.0
  arg5 = 0.0
  workValue16 = 0.0
  workValue17 = 0.0
  workValue19 = false
  workValue21 = false
  -- Beginner: result below is vehicleEntity.
  arg2 = arg2(arg3, arg4, arg5, workValue16, workValue17, workValue19, workValue21)
  arg3 = FreezeEntityPosition
  arg4 = arg2
  arg5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, arg5)
  arg3 = GetVehicleNumberOfWheels
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 > 32 then
    arg4 = print
    arg5 = "[LS Customs] Undefined result from GetVehicleNumberOfWheels in generateStancerLists"
    arg4(arg5)
    return
  end
  arg4 = workValue7
  arg5 = arg2
  arg4(arg5)
  arg4 = workValue8
  arg5 = arg2
  workValue16 = arg3 - 1
  arg4(arg5, workValue16)
  arg4 = workValue9
  arg5 = arg2
  arg4(arg5)
  arg4 = workValue10
  arg5 = arg2
  workValue16 = arg3 - 1
  arg4(arg5, workValue16)
  arg4 = DeleteEntity
  arg5 = arg2
  -- Beginner: Delete a GTA entity.
  arg4(arg5)
  arg4 = SetModelAsNoLongerNeeded
  arg5 = arg1
  arg4(arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
function workValue12()
  local arg1, arg2, arg3, arg4, arg5, workValue16, workValue17
  arg1 = GetVehicleNumberOfWheels
  arg2 = numberValue5
  arg1 = arg1(arg2)
  if arg1 > 32 then
    arg2 = print
    arg3 = "[LS Customs] Undefined result from GetVehicleNumberOfWheels in previewWheelCamber"
    arg2(arg3)
    return
  end
  arg2 = textValue8
  arg3 = {}
  arg4 = numberValue5
  arg3.vehicle = arg4
  arg3.wheelCount = arg1
  arg4 = rageUiCall2
  arg5 = arg1
  arg4 = arg4(arg5)
  arg3.frontWheelCount = arg4
  arg4 = textValue11
  arg5 = tonumber
  workValue17 = rageUiCall3
  workValue16 = threadCall
  workValue16 = workValue16[workValue17]
  arg5 = arg5(workValue16)
  arg4 = arg4 + arg5
  arg3.frontWidth = arg4
  arg4 = textValue13
  arg5 = tonumber
  workValue17 = textValue
  workValue16 = rageUiCall4
  workValue16 = workValue16[workValue17]
  arg5 = arg5(workValue16)
  arg4 = arg4 + arg5
  arg3.rearWidth = arg4
  arg4 = numberValue
  arg5 = tonumber
  workValue17 = numberValue2
  workValue16 = dataTable
  workValue16 = workValue16[workValue17]
  arg5 = arg5(workValue16)
  arg4 = arg4 + arg5
  arg3.frontCamber = arg4
  arg4 = numberValue3
  arg5 = tonumber
  workValue17 = numberValue4
  workValue16 = dataTable2
  workValue16 = workValue16[workValue17]
  arg5 = arg5(workValue16)
  arg4 = arg4 + arg5
  arg3.rearCamber = arg4
  arg2(arg3)
end
eventRegistration = AddEventHandler
rageUiCall = "e3500806d7"
-- Beginner: this function runs when client event "e3500806d7" fires.

-- === HELPER FUNCTION (decompiler name: numberValue8; parameters: arg1, arg2, arg3, arg4, arg5) ===
function numberValue8(arg1, arg2, arg3, arg4, arg5)
  local workValue16, workValue17, workValue19, workValue21
  if "stancer" ~= arg1 then
    return
  end
  numberValue5 = arg2
  numberValue6 = arg3
  workValue3 = arg4
  workValue4 = arg5
  workValue16 = workValue3.stancer
  workValue17 = workValue5
  workValue19 = workValue16
  workValue21 = "frontWidth"
  workValue17 = workValue17(workValue19, workValue21)
  rageUiCall3 = workValue17
  workValue17 = workValue5
  workValue19 = workValue16
  workValue21 = "rearWidth"
  workValue17 = workValue17(workValue19, workValue21)
  textValue = workValue17
  workValue17 = workValue5
  workValue19 = workValue16
  workValue21 = "frontCamber"
  workValue17 = workValue17(workValue19, workValue21)
  numberValue2 = workValue17
  workValue17 = workValue5
  workValue19 = workValue16
  workValue21 = "rearCamber"
  workValue17 = workValue17(workValue19, workValue21)
  numberValue4 = workValue17
  workValue17 = workValue11
  workValue17()
end
-- Beginner: Register a client-side event handler. Event/command: "e3500806d7".
eventRegistration(rageUiCall, numberValue8)
eventRegistration = RegisterNetEvent
rageUiCall = "6b3c48e86c"
-- Beginner: this function handles network event "6b3c48e86c".

-- === HELPER FUNCTION (decompiler name: numberValue8; parameters: arg1, arg2) ===
function numberValue8(arg1, arg2)
  local arg3
  arg3 = workValue3
  if arg3 then
    arg3 = workValue3
    arg3[arg1] = arg2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6b3c48e86c".
eventRegistration(rageUiCall, numberValue8)
-- Beginner: this function handles network event "6b3c48e86c".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2) ===
function eventRegistration(arg1, arg2)
  local arg3, arg4, arg5, workValue16, workValue17, workValue19, workValue21, workValue23
  arg3 = workValue3
  if arg3 then
    arg3 = workValue3.stancer
    if arg3 then
      goto flow_label_8
    end
  end
  arg3 = nil
  ::flow_label_8::
  if arg3 then
    arg4 = arg3[arg1]
    if arg4 then
      arg4 = table
      arg4 = arg4.count
      arg5 = arg3[arg1]
      -- Beginner: result below is count.
      arg4 = arg4(arg5)
      if 0 ~= arg4 then
        goto flow_label_37
      end
    end
  end
  arg4 = {}
  arg5 = "\194\163"
  workValue16 = getMoneyStringFormatted
  workValue17 = cmgCall.stancerPrices
  workValue17 = workValue17[arg1]
  workValue16 = workValue16(workValue17)
  arg5 = arg5 .. workValue16
  arg4.RightLabel = arg5
  arg5 = RageUI
  arg5 = arg5.ButtonWithStyle
  workValue16 = arg2
  workValue17 = nil
  workValue19 = arg4
  workValue21 = true

  -- === HELPER FUNCTION (decompiler name: workValue23; parameters: arg12, arg22, arg32) ===
  function workValue23(arg12, arg22, arg32)
    local serverEventCall, textValue9, dataTable3, flag
    if arg32 then
      serverEventCall = TriggerServerEvent
      textValue9 = "0ed46fc187"
      dataTable3 = numberValue6
      flag = arg1
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0ed46fc187".
      serverEventCall(textValue9, dataTable3, flag)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg5(workValue16, workValue17, workValue19, workValue21, workValue23)
  goto flow_label_39
  ::flow_label_37::
  arg4 = true
  return arg4
  ::flow_label_39::
end
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
numberValue8 = 1.0
workValue13 = RMenu
workValue14 = workValue13
workValue13 = workValue13.Get
textValue7 = "stancer"
cmgCall2 = "mainmenu"
-- Beginner: result below is menu.
workValue13 = workValue13(workValue14, textValue7, cmgCall2)
workValue14 = nil

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, arg4, arg5, workValue16
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "stancer"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true

  -- === HELPER FUNCTION (decompiler name: workValue16; parameters: none) ===
  function workValue16()
    local arg12, arg22, arg32, serverEventCall, textValue9, dataTable3, flag, workValue20
    arg12 = RageUI
    arg12 = arg12.BackspaceMenuCallback

    -- === HELPER FUNCTION: arg22() ===
    function arg22()
      local arg13, arg23, arg33, arg42, serverEventCall2
      arg13 = workValue4
      if arg13 then
        arg13 = RageUI
        arg13 = arg13.Visible
        arg23 = RMenu
        arg33 = arg23
        arg23 = arg23.Get
        arg42 = workValue4
        arg42 = arg42[1]
        serverEventCall2 = workValue4
        serverEventCall2 = serverEventCall2[2]
        -- Beginner: result below is menu.
        arg23 = arg23(arg33, arg42, serverEventCall2)
        arg33 = true
        arg13(arg23, arg33)
      end
    end
    arg12(arg22)
    arg12 = workValue12
    arg12()
    arg12 = eventRegistration
    arg22 = "frontWidth"
    arg32 = "Front Track Width"
    arg12 = arg12(arg22, arg32)
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.List
      arg22 = "Front Track Width"
      arg32 = threadCall
      serverEventCall = rageUiCall3
      textValue9 = nil
      dataTable3 = {}
      flag = true

      -- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg13, arg23, arg33, arg42) ===
      function workValue20(arg13, arg23, arg33, arg42)
        local serverEventCall2, textValue10, workValue18, textValue12, workValue22
        serverEventCall2 = rageUiCall3
        if arg42 ~= serverEventCall2 then
          rageUiCall3 = arg42
          serverEventCall2 = TriggerServerEvent
          textValue10 = "575d62fb6a"
          workValue18 = numberValue6
          textValue12 = "frontWidth"
          workValue22 = arg42
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "575d62fb6a".
          serverEventCall2(textValue10, workValue18, textValue12, workValue22)
        end
      end
      -- Beginner: Draw a RageUI list selector.
      arg12(arg22, arg32, serverEventCall, textValue9, dataTable3, flag, workValue20)
    end
    arg12 = eventRegistration
    arg22 = "rearWidth"
    arg32 = "Rear Track Width"
    arg12 = arg12(arg22, arg32)
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.List
      arg22 = "Rear Track Width"
      arg32 = rageUiCall4
      serverEventCall = textValue
      textValue9 = nil
      dataTable3 = {}
      flag = true

      -- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg13, arg23, arg33, arg42) ===
      function workValue20(arg13, arg23, arg33, arg42)
        local serverEventCall2, textValue10, workValue18, textValue12, workValue22
        serverEventCall2 = textValue
        if arg42 ~= serverEventCall2 then
          textValue = arg42
          serverEventCall2 = TriggerServerEvent
          textValue10 = "575d62fb6a"
          workValue18 = numberValue6
          textValue12 = "rearWidth"
          workValue22 = arg42
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "575d62fb6a".
          serverEventCall2(textValue10, workValue18, textValue12, workValue22)
        end
      end
      -- Beginner: Draw a RageUI list selector.
      arg12(arg22, arg32, serverEventCall, textValue9, dataTable3, flag, workValue20)
    end
    arg12 = eventRegistration
    arg22 = "frontCamber"
    arg32 = "Front Camber"
    arg12 = arg12(arg22, arg32)
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.List
      arg22 = "Front Camber"
      arg32 = dataTable
      serverEventCall = numberValue2
      textValue9 = nil
      dataTable3 = {}
      flag = true

      -- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg13, arg23, arg33, arg42) ===
      function workValue20(arg13, arg23, arg33, arg42)
        local serverEventCall2, textValue10, workValue18, textValue12, workValue22
        serverEventCall2 = numberValue2
        if arg42 ~= serverEventCall2 then
          numberValue2 = arg42
          serverEventCall2 = TriggerServerEvent
          textValue10 = "575d62fb6a"
          workValue18 = numberValue6
          textValue12 = "frontCamber"
          workValue22 = arg42
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "575d62fb6a".
          serverEventCall2(textValue10, workValue18, textValue12, workValue22)
        end
      end
      -- Beginner: Draw a RageUI list selector.
      arg12(arg22, arg32, serverEventCall, textValue9, dataTable3, flag, workValue20)
    end
    arg12 = eventRegistration
    arg22 = "rearCamber"
    arg32 = "Rear Camber"
    arg12 = arg12(arg22, arg32)
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.List
      arg22 = "Rear Camber"
      arg32 = dataTable2
      serverEventCall = numberValue4
      textValue9 = nil
      dataTable3 = {}
      flag = true

      -- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg13, arg23, arg33, arg42) ===
      function workValue20(arg13, arg23, arg33, arg42)
        local serverEventCall2, textValue10, workValue18, textValue12, workValue22
        serverEventCall2 = numberValue4
        if arg42 ~= serverEventCall2 then
          numberValue4 = arg42
          serverEventCall2 = TriggerServerEvent
          textValue10 = "575d62fb6a"
          workValue18 = numberValue6
          textValue12 = "rearCamber"
          workValue22 = arg42
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "575d62fb6a".
          serverEventCall2(textValue10, workValue18, textValue12, workValue22)
        end
      end
      -- Beginner: Draw a RageUI list selector.
      arg12(arg22, arg32, serverEventCall, textValue9, dataTable3, flag, workValue20)
    end
  end
  arg1(arg2, arg3, arg4, arg5, workValue16)
end
rageUiCall(numberValue8, workValue13, workValue14, textValue7)

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1, arg2) ===
function rageUiCall(arg1, arg2)
  local arg3, arg4, arg5, workValue16, workValue17, workValue19, workValue21, workValue23
  arg3 = {}
  arg4 = -arg1
  arg5 = arg1
  workValue16 = 1
  for workValue17 = arg4, arg5, workValue16 do
    workValue19 = table
    workValue19 = workValue19.insert
    workValue21 = arg3
    workValue23 = arg2 * workValue17
    workValue19(workValue21, workValue23)
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: numberValue8; parameters: none) ===
function numberValue8()
  local arg1, arg2, arg3, arg4
  arg1 = cmgCall.stancerLimits
  arg1 = arg1.frontWidth
  arg2 = numberValue7
  arg1 = arg1 / arg2
  arg2 = rageUiCall
  arg3 = numberValue7
  arg4 = arg1
  return arg2(arg3, arg4)
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2, arg3, arg4
  arg1 = cmgCall.stancerLimits
  arg1 = arg1.rearWidth
  arg2 = numberValue7
  arg1 = arg1 / arg2
  arg2 = rageUiCall
  arg3 = numberValue7
  arg4 = arg1
  return arg2(arg3, arg4)
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3, arg4
  arg1 = cmgCall.stancerLimits
  arg1 = arg1.frontCamber
  arg2 = numberValue7
  arg1 = arg1 / arg2
  arg2 = rageUiCall
  arg3 = numberValue7
  arg4 = arg1
  return arg2(arg3, arg4)
end

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, arg4
  arg1 = cmgCall.stancerLimits
  arg1 = arg1.rearCamber
  arg2 = numberValue7
  arg1 = arg1 / arg2
  arg2 = rageUiCall
  arg3 = numberValue7
  arg4 = arg1
  return arg2(arg3, arg4)
end
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1, arg2) ===
function workValue15(arg1, arg2)
  local arg3, arg4, arg5, workValue16, workValue17, workValue19, workValue21, workValue23, workValue, textValue2, textValue3, textValue4, workValue2
  arg3 = {}
  arg4 = GetVehicleNumberOfWheels
  arg5 = arg1
  arg4 = arg4(arg5)
  if arg4 > 32 then
    arg5 = print
    workValue16 = "[LS Customs] Undefined result from GetVehicleNumberOfWheels in setVehicleIdStancer"
    arg5(workValue16)
    return
  end
  arg5 = GetVehicleWheelXOffset
  workValue16 = arg1
  workValue17 = 0
  arg5 = arg5(workValue16, workValue17)
  workValue16 = GetVehicleWheelXOffset
  workValue17 = arg1
  workValue19 = arg4 - 1
  workValue16 = workValue16(workValue17, workValue19)
  workValue17 = GetVehicleWheelYRotation
  workValue19 = arg1
  workValue21 = 0
  workValue17 = workValue17(workValue19, workValue21)
  workValue19 = GetVehicleWheelYRotation
  workValue21 = arg1
  workValue23 = arg4 - 1
  workValue19 = workValue19(workValue21, workValue23)
  workValue21 = Entity
  workValue23 = arg1
  workValue21 = workValue21(workValue23)
  workValue21 = workValue21.state
  workValue21 = workValue21.stancer
  if workValue21 then
    numberValue5 = arg1
    workValue21 = workValue11
    workValue21()
    arg5 = textValue11
    workValue16 = textValue13
    workValue17 = numberValue
    workValue19 = numberValue3
  end
  workValue21 = workValue5
  workValue23 = arg2
  workValue = "frontWidth"
  workValue21 = workValue21(workValue23, workValue)
  workValue23 = mathHelper
  if workValue21 ~= workValue23 then
    workValue23 = math
    workValue23 = workValue23.abs
    workValue = arg5
    workValue23 = workValue23(workValue)
    workValue = numberValue8
    workValue = workValue()
    workValue = workValue[workValue21]
    workValue23 = workValue23 + workValue
    arg3.frontWidth = workValue23
  end
  workValue23 = workValue5
  workValue = arg2
  textValue2 = "rearWidth"
  workValue23 = workValue23(workValue, textValue2)
  workValue = mathHelper
  if workValue23 ~= workValue then
    workValue = math
    workValue = workValue.abs
    textValue2 = workValue16
    workValue = workValue(textValue2)
    textValue2 = workValue13
    textValue2 = textValue2()
    textValue2 = textValue2[workValue23]
    workValue = workValue + textValue2
    arg3.rearWidth = workValue
  end
  workValue = workValue5
  textValue2 = arg2
  textValue3 = "frontCamber"
  workValue = workValue(textValue2, textValue3)
  textValue2 = mathHelper
  if workValue ~= textValue2 then
    textValue2 = math
    textValue2 = textValue2.abs
    textValue3 = workValue17
    textValue2 = textValue2(textValue3)
    textValue3 = workValue14
    textValue3 = textValue3()
    textValue3 = textValue3[workValue]
    textValue2 = textValue2 + textValue3
    arg3.frontCamber = textValue2
  end
  textValue2 = workValue5
  textValue3 = arg2
  textValue4 = "rearCamber"
  textValue2 = textValue2(textValue3, textValue4)
  textValue3 = mathHelper
  if textValue2 ~= textValue3 then
    textValue3 = math
    textValue3 = textValue3.abs
    textValue4 = workValue19
    textValue3 = textValue3(textValue4)
    textValue4 = textValue7
    textValue4 = textValue4()
    textValue4 = textValue4[textValue2]
    textValue3 = textValue3 + textValue4
    arg3.rearCamber = textValue3
  end
  textValue3 = false
  textValue4 = NetworkGetEntityIsNetworked
  workValue2 = arg1
  textValue4 = textValue4(workValue2)
  if textValue4 then
    textValue4 = NetworkGetNetworkIdFromEntity
    workValue2 = arg1
    textValue4 = textValue4(workValue2)
    if 0 ~= textValue4 then
      goto flow_label_124
    end
  end
  textValue3 = true
  ::flow_label_124::
  textValue4 = Citizen
  textValue4 = textValue4.CreateThread

  -- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
  function workValue2()
    local arg12, arg22, arg32, serverEventCall, textValue9
    arg12 = Citizen
    arg12 = arg12.Wait
    arg22 = textValue3
    if arg22 then
      arg22 = 2500
      if arg22 then
        goto flow_label_10
      end
    end
    arg22 = 0
    ::flow_label_10::
    arg12(arg22)
    arg12 = NetworkGetNetworkIdFromEntity
    arg22 = arg1
    arg12 = arg12(arg22)
    arg22 = TriggerServerEvent
    arg32 = "9805295c4f"
    serverEventCall = arg12
    textValue9 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9805295c4f".
    arg22(arg32, serverEventCall, textValue9)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  textValue4(workValue2)
end
cmgCall2.setVehicleIdStancer = workValue15
