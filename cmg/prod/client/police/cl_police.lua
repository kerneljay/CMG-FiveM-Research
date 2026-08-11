--[[
    LEVEL 1 BEGINNER GUIDE — Police
    ====================================

    File: cmg/prod/client/police/cl_police.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Police feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 134
      * Background threads: 0
      * Always-running loops: 7
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
local flag, flag10, workValue5, flag13, workValue6, flag15, flag16, flag17, cmgCall6, textValue21, textValue, numberValue, numberValue2, textValue3, textValue4, dataTable2, dataTable3, dataTable4, textValue5, rageUiCall2, textValue6, textValue7, rageUiCall3, rageUiCall4, textValue8, rageUiCall5, rageUiCall6, textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20
flag = false
flag10 = false
workValue5 = nil
flag13 = false
workValue6 = nil
flag15 = false
flag16 = false
flag17 = false
cmgCall6 = CMG

-- === HELPER FUNCTION (decompiler name: textValue21; parameters: none) ===
function textValue21()
  local arg1, arg2
  arg1 = flag
  return arg1
end
cmgCall6.isKnockedOut = textValue21
cmgCall6 = RegisterNetEvent
textValue21 = "playRussianRoulette"
-- Beginner: this function handles network event "playRussianRoulette".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = GetEntityCoords
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  arg3, arg4, arg5 = arg3()
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = arg2 - arg1
  arg3 = #arg3
  if arg3 <= 15 then
    arg4 = SendNUIMessage
    arg5 = {}
    arg5.transactionType = "playRussianRoulette"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg4(arg5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "playRussianRoulette".
cmgCall6(textValue21, textValue)
cmgCall6 = RegisterNetEvent
textValue21 = "playEmptyGun"
-- Beginner: this function handles network event "playEmptyGun".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = GetEntityCoords
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  arg3, arg4, arg5 = arg3()
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = arg2 - arg1
  arg3 = #arg3
  if arg3 <= 15 then
    arg4 = SendNUIMessage
    arg5 = {}
    arg5.transactionType = "emptygun"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg4(arg5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "playEmptyGun".
cmgCall6(textValue21, textValue)
cmgCall6 = CreateTimecycleModifier
textValue21 = "knockout"
cmgCall6(textValue21)
cmgCall6 = SetTimecycleModifierVar
textValue21 = "knockout"
textValue = "postfx_noise"
numberValue = 0.5
numberValue2 = 0.0
cmgCall6(textValue21, textValue, numberValue, numberValue2)
cmgCall6 = SetTimecycleModifierVar
textValue21 = "knockout"
textValue = "postfx_noise_size"
numberValue = 0.5
numberValue2 = 0.0
cmgCall6(textValue21, textValue, numberValue, numberValue2)
cmgCall6 = SetTimecycleModifierVar
textValue21 = "knockout"
textValue = "screen_blur_intensity"
numberValue = 1.0
numberValue2 = 0.0
cmgCall6(textValue21, textValue, numberValue, numberValue2)

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: arg1) ===
function cmgCall6(arg1)
  local arg2, arg3, arg4
  arg2 = GetVehicleClass
  arg3 = arg1
  arg2 = arg2(arg3)
  if 18 == arg2 then
    arg2 = true
    return arg2
  end
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  arg3 = IsThisModelAHeli
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = true
    return arg3
  end
  arg3 = false
  return arg3
end
textValue21 = tCMG

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2) ===
function textValue(arg1, arg2)
  local arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue
  arg3 = CMG
  arg3 = arg3.getClosestVehicle
  arg4 = arg1
  arg3 = arg3(arg4)
  if arg3 then
    arg4 = IsEntityAVehicle
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      if not arg2 then
        arg4 = cmgCall6
        arg5 = arg3
        arg4 = arg4(arg5)
        if not arg4 then
          goto flow_label_45
        end
      end
      arg4 = 1
      arg5 = math
      arg5 = arg5.max
      arg6 = GetVehicleMaxNumberOfPassengers
      numberValue11 = arg3
      arg6 = arg6(numberValue11)
      numberValue11 = 3
      arg5 = arg5(arg6, numberValue11)
      arg6 = 1
      for numberValue11 = arg4, arg5, arg6 do
        workValue7 = IsVehicleSeatFree
        cmgCall7 = arg3
        workValue9 = numberValue11
        workValue7 = workValue7(cmgCall7, workValue9)
        if workValue7 then
          workValue7 = SetPedIntoVehicle
          cmgCall7 = CMG
          cmgCall7 = cmgCall7.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall7 = cmgCall7()
          workValue9 = arg3
          workValue = numberValue11
          workValue7(cmgCall7, workValue9, workValue)
          workValue7 = true
          return workValue7
        end
      end
    end
  end
  ::flow_label_45::
  arg4 = false
  return arg4
end
textValue21.putInNearestVehicleAsPassenger = textValue
textValue21 = tCMG

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9
  arg2 = CMG
  arg2 = arg2.getObjectId
  arg3 = arg1
  arg4 = "putInNetVehicleAsPassenger"
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg3 = IsEntityAVehicle
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = 1
      arg4 = GetVehicleMaxNumberOfPassengers
      arg5 = arg2
      arg4 = arg4(arg5)
      arg5 = 1
      for arg6 = arg3, arg4, arg5 do
        numberValue11 = IsVehicleSeatFree
        workValue7 = arg2
        cmgCall7 = arg6
        numberValue11 = numberValue11(workValue7, cmgCall7)
        if numberValue11 then
          numberValue11 = SetPedIntoVehicle
          workValue7 = CMG
          workValue7 = workValue7.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          workValue7 = workValue7()
          cmgCall7 = arg2
          workValue9 = arg6
          numberValue11(workValue7, cmgCall7, workValue9)
          numberValue11 = true
          return numberValue11
        end
      end
    end
  end
  arg3 = false
  return arg3
end
textValue21.putInNetVehicleAsPassenger = textValue
textValue21 = tCMG

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2, arg3) ===
function textValue(arg1, arg2, arg3)
  local arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2
  arg4 = tCMG
  arg4 = arg4.getVehicleAtPosition
  arg5 = arg1
  arg6 = arg2
  numberValue11 = arg3
  arg4 = arg4(arg5, arg6, numberValue11)
  arg5 = IsEntityAVehicle
  arg6 = arg4
  arg5 = arg5(arg6)
  if arg5 then
    arg5 = 1
    arg6 = GetVehicleMaxNumberOfPassengers
    numberValue11 = arg4
    arg6 = arg6(numberValue11)
    numberValue11 = 1
    for workValue7 = arg5, arg6, numberValue11 do
      cmgCall7 = IsVehicleSeatFree
      workValue9 = arg4
      workValue = workValue7
      cmgCall7 = cmgCall7(workValue9, workValue)
      if cmgCall7 then
        cmgCall7 = SetPedIntoVehicle
        workValue9 = CMG
        workValue9 = workValue9.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        workValue9 = workValue9()
        workValue = arg4
        textValue2 = workValue7
        cmgCall7(workValue9, workValue, textValue2)
        cmgCall7 = true
        return cmgCall7
      end
    end
  end
  arg5 = false
  return arg5
end
textValue21.putInVehiclePositionAsPassenger = textValue
textValue21 = {}
textValue = {}
numberValue = "switch@franklin@bed"
numberValue2 = "sleep_loop"
textValue[1] = numberValue
textValue[2] = numberValue2
numberValue = {}
numberValue2 = "switch@trevor@bed"
textValue3 = "bed_sleep_floyd"
numberValue[1] = numberValue2
numberValue[2] = textValue3
textValue21[1] = textValue
textValue21[2] = numberValue

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3
  arg1 = math
  arg1 = arg1.random
  arg2 = 1
  arg3 = textValue21
  arg3 = #arg3
  arg1 = arg1(arg2, arg3)
  arg2 = textValue21
  arg1 = arg2[arg1]
  return arg1
end
numberValue = RegisterNetEvent
numberValue2 = "8e08db8961"
-- Beginner: this function handles network event "8e08db8961".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2
  arg1 = flag
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.isPurge
    arg1 = arg1()
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.inArena
      arg1 = arg1()
      if not arg1 then
        arg1 = tCMG
        arg1 = arg1.setCanAnim
        arg2 = false
        arg1(arg2)
        arg1 = SetTimecycleModifier
        arg2 = "knockout"
        arg1(arg2)
        arg1 = true
        flag = arg1
        arg1 = textValue
        arg1 = arg1()
        workValue5 = arg1
        arg1 = TriggerServerEvent
        arg2 = "f0adea3789"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f0adea3789".
        arg1(arg2)
        arg1 = tCMG
        arg1 = arg1.notify
        arg2 = "~r~You have been knocked out!"
        -- Beginner: Show a notification to the player.
        arg1(arg2)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8e08db8961".
numberValue(numberValue2, textValue3)
numberValue = RegisterNetEvent
numberValue2 = "259d5b120c"
-- Beginner: this function handles network event "259d5b120c".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = flag
  if arg1 then
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = SetEntityCollision
    arg3 = arg1
    arg4 = true
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = FreezeEntityPosition
    arg3 = arg1
    arg4 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    arg2(arg3, arg4)
    arg2 = workValue5
    if arg2 then
      arg2 = CMG
      arg2 = arg2.getTunableValue
      arg3 = "ragdoll_knockout"
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = ClearPedTasksImmediately
        arg3 = arg1
        arg2(arg3)
      else
        arg2 = StopAnimTask
        arg3 = arg1
        arg4 = workValue5
        arg4 = arg4[1]
        arg5 = workValue5
        arg5 = arg5[2]
        arg6 = 1.0
        arg2(arg3, arg4, arg5, arg6)
      end
    end
    arg2 = flag10
    if arg2 then
      arg2 = TriggerEvent
      arg3 = "TriggerTazer"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "TriggerTazer".
      arg2(arg3)
      arg2 = false
      flag10 = arg2
    end
    arg2 = ClearTimecycleModifier
    arg2()
    arg2 = tCMG
    arg2 = arg2.setCanAnim
    arg3 = true
    arg2(arg3)
    arg2 = false
    flag = arg2
    arg2 = nil
    workValue5 = arg2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "259d5b120c".
numberValue(numberValue2, textValue3)
numberValue = CMG

-- === HELPER FUNCTION (decompiler name: numberValue2; parameters: arg1) ===
function numberValue2(arg1)
  local arg2
  flag10 = arg1
end
numberValue.setKnockoutTasersAfter = numberValue2
numberValue = RegisterNetEvent
numberValue2 = "21d21b8eb5"
numberValue(numberValue2)
numberValue = AddEventHandler
numberValue2 = "21d21b8eb5"
-- Beginner: this function runs when client event "21d21b8eb5" fires.

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2
  workValue6 = arg1
  arg2 = flag15
  arg2 = not arg2
  flag15 = arg2
end
-- Beginner: Register a client-side event handler. Event/command: "21d21b8eb5".
numberValue(numberValue2, textValue3)
numberValue = RegisterNetEvent
numberValue2 = "2ce9e6535d"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2ce9e6535d".
numberValue(numberValue2)
numberValue = AddEventHandler
numberValue2 = "2ce9e6535d"
-- Beginner: this function runs when client event "2ce9e6535d" fires.

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2
  arg1 = false
  flag15 = arg1
end
-- Beginner: Register a client-side event handler. Event/command: "2ce9e6535d".
numberValue(numberValue2, textValue3)
numberValue = RegisterNetEvent
numberValue2 = "ccbe891b9b"
-- Beginner: this function handles network event "ccbe891b9b".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2, arg3, arg4
  arg1 = false
  arg2 = SetTimeout
  arg3 = 10000
  -- Beginner: this function handles network event "ccbe891b9b".

  -- === HELPER FUNCTION: arg4() ===
  function arg4()
    local arg12, cmgCall2
    arg12 = true
    arg1 = arg12
  end
  arg2(arg3, arg4)
  arg2 = CMG
  arg2 = arg2.setDrawingInventoryUI
  arg3 = false
  arg2(arg3)
  while not arg1 do
    arg2 = CMG
    arg2 = arg2.isDrawingInventoryUI
    arg2 = arg2()
    if arg2 then
      arg2 = CMG
      arg2 = arg2.setDrawingInventoryUI
      arg3 = false
      arg2(arg3)
    end
    arg2 = Wait
    arg3 = 0
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ccbe891b9b".
numberValue(numberValue2, textValue3)

-- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
function numberValue()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "8c66af1a00"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8c66af1a00".
  arg1(arg2)
end
GetFounderPerks = numberValue
numberValue = TriggerEvent
numberValue2 = "chat:addSuggestion"
textValue3 = "/s60"
textValue4 = "Authorise a new Section 60 order"
dataTable2 = {}
dataTable3 = {}
dataTable3.name = "Radius"
dataTable3.help = "In metres"
dataTable4 = {}
dataTable4.name = "Duration"
dataTable4.help = "In Minutes"
dataTable2[1] = dataTable3
dataTable2[2] = dataTable4
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
numberValue(numberValue2, textValue3, textValue4, dataTable2)
numberValue = {}
numberValue2 = RegisterNetEvent
textValue3 = "63d1315723"
-- Beginner: this function handles network event "63d1315723".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2, arg3) ===
function textValue4(arg1, arg2, arg3)
  local arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3
  arg4 = AddBlipForCoord
  arg5 = arg1.x
  arg6 = arg1.y
  numberValue11 = arg1.z
  -- Beginner: result below is blipHandle.
  arg4 = arg4(arg5, arg6, numberValue11)
  arg5 = AddBlipForRadius
  arg6 = arg1.x
  numberValue11 = arg1.y
  workValue7 = arg1.z
  cmgCall7 = arg2 + 0.0
  -- Beginner: result below is blipHandle.
  arg5 = arg5(arg6, numberValue11, workValue7, cmgCall7)
  arg6 = 61
  numberValue11 = SetBlipSprite
  workValue7 = arg4
  cmgCall7 = 526
  numberValue11(workValue7, cmgCall7)
  numberValue11 = SetBlipColour
  workValue7 = arg4
  cmgCall7 = arg6
  numberValue11(workValue7, cmgCall7)
  numberValue11 = SetBlipScale
  workValue7 = arg4
  cmgCall7 = 1.0
  numberValue11(workValue7, cmgCall7)
  numberValue11 = BeginTextCommandSetBlipName
  workValue7 = "STRING"
  numberValue11(workValue7)
  numberValue11 = AddTextComponentSubstringPlayerName
  workValue7 = "Section 60"
  numberValue11(workValue7)
  numberValue11 = EndTextCommandSetBlipName
  workValue7 = arg4
  numberValue11(workValue7)
  numberValue11 = SetBlipAlpha
  workValue7 = arg5
  cmgCall7 = 80
  numberValue11(workValue7, cmgCall7)
  numberValue11 = SetBlipColour
  workValue7 = arg5
  cmgCall7 = arg6
  numberValue11(workValue7, cmgCall7)
  numberValue11 = numberValue
  workValue7 = {}
  cmgCall7 = arg5
  workValue9 = arg4
  workValue7[1] = cmgCall7
  workValue7[2] = workValue9
  numberValue11[arg3] = workValue7
  numberValue11 = GetStreetNameAtCoord
  workValue7 = arg1.x
  cmgCall7 = arg1.y
  workValue9 = arg1.z
  numberValue11 = numberValue11(workValue7, cmgCall7, workValue9)
  workValue7 = GetStreetNameFromHashKey
  cmgCall7 = numberValue11
  workValue7 = workValue7(cmgCall7)
  cmgCall7 = TriggerEvent
  workValue9 = "371eab1d3a"
  workValue = {}
  textValue2 = "Metropolitan Police: <br/>A Section 60 has been authorised for the area of"
  flag2 = workValue7
  flag3 = ".<br/><br/>This gives officers the power to search any person or vehicle in the area, without any grounds. <br/><br/>This has been authorised in line with legislation."
  textValue2 = textValue2 .. flag2 .. flag3
  workValue.text = textValue2
  workValue.height = "auto"
  workValue.width = "auto"
  workValue.colour = "#FFF"
  workValue.background = "#3287cd"
  workValue.pos = "bottom-right"
  workValue.icon = "success"
  textValue2 = 100000
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
  cmgCall7(workValue9, workValue, textValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "63d1315723".
numberValue2(textValue3, textValue4)
numberValue2 = RegisterNetEvent
textValue3 = "0e40bd25ed"
-- Beginner: this function handles network event "0e40bd25ed".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = numberValue
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = numberValue
    arg2 = arg2[arg1]
    arg3 = arg2[2]
    arg4 = arg2[1]
    arg5 = RemoveBlip
    arg6 = arg3
    arg5(arg6)
    arg5 = RemoveBlip
    arg6 = arg4
    arg5(arg6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0e40bd25ed".
numberValue2(textValue3, textValue4)
numberValue2 = false
textValue3 = CMG
textValue3 = textValue3.registerCommand
textValue4 = "+handsup"

-- === HELPER FUNCTION (decompiler name: dataTable2; parameters: none) ===
function dataTable2()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.isSittingOnChair
  arg1 = arg1()
  if not arg1 then
    arg1 = true
    numberValue2 = arg1
  end
end
dataTable3 = false
textValue3(textValue4, dataTable2, dataTable3)
textValue3 = CMG
textValue3 = textValue3.registerCommand
textValue4 = "-handsup"

-- === HELPER FUNCTION (decompiler name: dataTable2; parameters: none) ===
function dataTable2()
  local arg1, arg2
  arg1 = false
  numberValue2 = arg1
end
dataTable3 = false
textValue3(textValue4, dataTable2, dataTable3)
textValue3 = RegisterKeyMapping
textValue4 = "+handsup"
dataTable2 = "Hands Up"
dataTable3 = "KEYBOARD"
dataTable4 = "X"
-- Beginner: Bind a command to a keyboard/controller key.
textValue3(textValue4, dataTable2, dataTable3, dataTable4)
textValue3 = 0

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4
  arg2 = IsPedReloading
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = GetIsTaskActive
    arg3 = arg1
    arg4 = 298
    arg2 = arg2(arg3, arg4)
    if not arg2 then
      arg2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg2 = arg2()
      arg3 = textValue3
      arg2 = arg2 - arg3
      arg2 = arg2 < 100
    end
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: dataTable2; parameters: none) ===
function dataTable2()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11
  arg1 = flag15
  if arg1 then
    arg1 = workValue6
    if nil ~= arg1 then
      arg1 = DisableControlAction
      arg2 = 0
      arg3 = 21
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = GetPlayerPed
      arg2 = GetPlayerFromServerId
      arg3 = workValue6
      arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11 = arg2(arg3)
      -- Beginner: result below is playerPed.
      arg1 = arg1(arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11)
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      if 0 ~= arg1 and 0 ~= arg2 and arg2 ~= arg1 then
        arg3 = GetEntityHealth
        arg4 = arg2
        -- Beginner: result below is health.
        arg3 = arg3(arg4)
        if not (arg3 <= 102) then
          arg3 = GetEntityHealth
          arg4 = arg1
          -- Beginner: result below is health.
          arg3 = arg3(arg4)
          if not (arg3 <= 102) then
            goto flow_label_40
          end
        end
        arg3 = TriggerEvent
        arg4 = "2ce9e6535d"
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "2ce9e6535d".
        arg3(arg4)
        goto flow_label_57
        ::flow_label_40::
        arg3 = AttachEntityToEntity
        arg4 = arg2
        arg5 = arg1
        arg6 = 4103
        numberValue11 = 11816
        workValue7 = 0.48
        cmgCall7 = 0.0
        workValue9 = 0.0
        workValue = 0.0
        textValue2 = 0.0
        flag2 = false
        flag3 = false
        flag4 = false
        flag5 = false
        flag6 = 0
        flag7 = false
        -- Beginner: Attach one entity to another entity.
        arg3(arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7)
      end
      ::flow_label_57::
      arg3 = true
      flag16 = arg3
  end
  else
    arg1 = flag16
    if arg1 then
      arg1 = DetachEntity
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = true
      arg4 = false
      arg1(arg2, arg3, arg4)
      arg1 = false
      flag16 = arg1
    end
  end
  arg1 = IsControlPressed
  arg2 = 0
  arg3 = 45
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    textValue3 = arg1
  end
  arg1 = numberValue2
  if not arg1 then
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 27
    arg1 = arg1(arg2, arg3)
    if not arg1 then
      goto flow_label_174
    end
    arg1 = CMG
    arg1 = arg1.isUsingKeyboard
    arg2 = 2
    arg1 = arg1(arg2)
    if arg1 then
      goto flow_label_174
    end
  end
  arg1 = CMG
  arg1 = arg1.isSurrendering
  arg1 = arg1()
  if not arg1 then
    arg1 = tCMG
    arg1 = arg1.isInComa
    arg1 = arg1()
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.isHandcuffed
      arg1 = arg1()
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.isPlayingEmote
        arg1 = arg1()
        if arg1 then
          arg1 = IsPedUsingAnyScenario
          arg2 = PlayerPedId
          arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11 = arg2()
          arg1 = arg1(arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11)
          if arg1 then
            goto flow_label_174
          end
        end
        arg1 = tCMG
        arg1 = arg1.canAnim
        arg1 = arg1()
        if not arg1 then
          arg1 = CMG
          arg1 = arg1.isTazedByRevive
          arg1 = arg1()
          if not arg1 then
            goto flow_label_174
          end
        end
        arg1 = DisablePlayerFiring
        arg2 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        arg2 = arg2()
        arg3 = true
        arg1(arg2, arg3)
        arg1 = DisableControlAction
        arg2 = 0
        arg3 = 22
        arg4 = true
        arg1(arg2, arg3, arg4)
        arg1 = DisableControlAction
        arg2 = 0
        arg3 = 25
        arg4 = true
        arg1(arg2, arg3, arg4)
        arg1 = DisableControlAction
        arg2 = 0
        arg3 = 154
        arg4 = true
        arg1(arg2, arg3, arg4)
        arg1 = IsEntityDead
        arg2 = CMG
        arg2 = arg2.getPlayerPed
        arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11 = arg2()
        arg1 = arg1(arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11)
        if not arg1 then
          arg1 = flag13
          if not arg1 then
            arg1 = textValue4
            arg2 = PlayerPedId
            arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11 = arg2()
            arg1 = arg1(arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11)
            if not arg1 then
              arg1 = true
              flag13 = arg1
              arg1 = Citizen
              arg1 = arg1.CreateThread

              -- === HELPER FUNCTION: arg2() ===
              function arg2()
                local arg12, cmgCall2, textValue11, flag14, textValue15, modelHash, numberValue12, numberValue14, flag19, cmgCall8, rageUiCall, cmgCall
                arg12 = CMG
                arg12 = arg12.loadAnimDict
                cmgCall2 = "missminuteman_1ig_2"
                -- Beginner: Load a GTA animation dictionary before using it.
                arg12(cmgCall2)
                arg12 = TaskPlayAnim
                cmgCall2 = CMG
                cmgCall2 = cmgCall2.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                cmgCall2 = cmgCall2()
                textValue11 = "missminuteman_1ig_2"
                flag14 = "handsup_enter"
                textValue15 = 7.0
                modelHash = 1.0
                numberValue12 = -1
                numberValue14 = 50
                flag19 = 0
                cmgCall8 = false
                rageUiCall = false
                cmgCall = false
                -- Beginner: Play an animation on a ped.
                arg12(cmgCall2, textValue11, flag14, textValue15, modelHash, numberValue12, numberValue14, flag19, cmgCall8, rageUiCall, cmgCall)
                arg12 = RemoveAnimDict
                cmgCall2 = "missminuteman_1ig_2"
                arg12(cmgCall2)
              end
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              arg1(arg2)
            end
          end
        end
      end
    end
  end
  ::flow_label_174::
  arg1 = IsControlJustReleased
  arg2 = 1
  arg3 = 323
  arg1 = arg1(arg2, arg3)
  if not arg1 then
    arg1 = IsControlJustReleased
    arg2 = 1
    arg3 = 27
    arg1 = arg1(arg2, arg3)
    if not arg1 then
      goto flow_label_256
    end
  end
  arg1 = CMG
  arg1 = arg1.isSurrendering
  arg1 = arg1()
  if not arg1 then
    arg1 = flag13
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.isInComa
      arg1 = arg1()
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.isHandcuffed
        arg1 = arg1()
        if not arg1 then
          arg1 = tCMG
          arg1 = arg1.canAnim
          arg1 = arg1()
          if not arg1 then
            arg2 = flag13
            if arg2 then
              arg2 = IsEntityPlayingAnim
              arg3 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              arg3 = arg3()
              arg4 = "missminuteman_1ig_2"
              arg5 = "handsup_enter"
              arg6 = 3
              arg2 = arg2(arg3, arg4, arg5, arg6)
              if arg2 then
                arg1 = true
              end
            end
          end
          if arg1 then
            arg2 = false
            flag13 = arg2
            arg2 = CreateThread
            -- Beginner: this function is the body of a background FiveM thread.

            -- === HELPER FUNCTION: arg3() ===
            function arg3()
              local arg12, cmgCall2, textValue11, flag14
              arg12 = false
              cmgCall2 = CreateThread
              -- Beginner: this function is the body of a background FiveM thread.

              -- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
              function textValue11()
                local arg13, arg22
                arg13 = Wait
                arg22 = 1000
                arg13(arg22)
                arg13 = true
                arg12 = arg13
              end
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              cmgCall2(textValue11)
              while not arg12 do
                cmgCall2 = DisablePlayerFiring
                textValue11 = PlayerId
                -- Beginner: result below is localPlayerIndex.
                textValue11 = textValue11()
                flag14 = true
                cmgCall2(textValue11, flag14)
                cmgCall2 = Wait
                textValue11 = 0
                cmgCall2(textValue11)
              end
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            arg2(arg3)
            arg2 = DisableControlAction
            arg3 = 0
            arg4 = 21
            arg5 = true
            arg2(arg3, arg4, arg5)
            arg2 = DisableControlAction
            arg3 = 0
            arg4 = 137
            arg5 = true
            arg2(arg3, arg4, arg5)
            arg2 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            arg2 = arg2()
            arg3 = textValue4
            arg4 = arg2
            arg3 = arg3(arg4)
            if arg3 then
              arg3 = StopAnimTask
              arg4 = arg2
              arg5 = "missminuteman_1ig_2"
              arg6 = "handsup_enter"
              numberValue11 = 1.0
              arg3(arg4, arg5, arg6, numberValue11)
            else
              arg3 = ClearPedTasks
              arg4 = arg2
              arg3(arg4)
            end
          end
        end
      end
    end
  end
  ::flow_label_256::
  arg1 = flag
  if arg1 then
    arg1 = CMG
    arg1 = arg1.isStaffedOnClient
    arg1 = arg1()
    if arg1 then
      arg1 = TriggerEvent
      arg2 = "259d5b120c"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "259d5b120c".
      arg1(arg2)
    else
      arg1 = tCMG
      arg1 = arg1.isInComa
      arg1 = arg1()
      if not arg1 then
        arg1 = workValue5
        if arg1 then
          arg1 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg1 = arg1()
          arg2 = CMG
          arg2 = arg2.getTunableValue
          arg3 = "ragdoll_knockout"
          arg2 = arg2(arg3)
          if arg2 then
            arg2 = SetPedToRagdoll
            arg3 = arg1
            arg4 = -1
            arg5 = -1
            arg6 = 0
            numberValue11 = false
            workValue7 = true
            cmgCall7 = false
            arg2(arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7)
          else
            arg2 = IsEntityPlayingAnim
            arg3 = arg1
            arg4 = workValue5
            arg4 = arg4[1]
            arg5 = workValue5
            arg5 = arg5[2]
            arg6 = 3
            arg2 = arg2(arg3, arg4, arg5, arg6)
            if not arg2 then
              arg2 = CMG
              arg2 = arg2.loadAnimDict
              arg3 = workValue5
              arg3 = arg3[1]
              -- Beginner: Load a GTA animation dictionary before using it.
              arg2(arg3)
              arg2 = GetEntityCoords
              arg3 = arg1
              arg4 = true
              -- Beginner: result below is entityCoords.
              arg2 = arg2(arg3, arg4)
              arg3 = SetEntityCollision
              arg4 = arg1
              arg5 = false
              arg6 = false
              arg3(arg4, arg5, arg6)
              arg3 = FreezeEntityPosition
              arg4 = arg1
              arg5 = true
              -- Beginner: Freeze or unfreeze an entity in place.
              arg3(arg4, arg5)
              arg3 = GetGroundZFor_3dCoord
              arg4 = arg2.x
              arg5 = arg2.y
              arg6 = arg2.z
              numberValue11 = 0
              workValue7 = false
              arg3, arg4 = arg3(arg4, arg5, arg6, numberValue11, workValue7)
              if arg3 then
                arg5 = vector3
                arg6 = arg2.x
                numberValue11 = arg2.y
                workValue7 = arg4 + 0.3
                arg5 = arg5(arg6, numberValue11, workValue7)
                arg2 = arg5
              end
              arg5 = TaskPlayAnimAdvanced
              arg6 = arg1
              numberValue11 = workValue5
              numberValue11 = numberValue11[1]
              workValue7 = workValue5
              workValue7 = workValue7[2]
              cmgCall7 = arg2.x
              workValue9 = arg2.y
              workValue = arg2.z
              textValue2 = 0.0
              flag2 = 0.0
              flag3 = 0.0
              flag4 = 3.0
              flag5 = 1.0
              flag6 = -1
              flag7 = 1
              flag8 = 0.0
              flag9 = 0
              flag11 = 0
              arg5(arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11)
              arg5 = RemoveAnimDict
              arg6 = workValue5
              arg6 = arg6[1]
              arg5(arg6)
            end
          end
        end
      end
    end
  end
end
dataTable3 = CMG
dataTable3 = dataTable3.createThreadOnTick
dataTable4 = dataTable2
textValue5 = "Police Drag"
-- Beginner: Run a helper every game frame while this script is active.
dataTable3(dataTable4, textValue5)
dataTable3 = RMenu
dataTable3 = dataTable3.Add
dataTable4 = "policehandbook"
textValue5 = "main"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue6 = "Police Handbook"
textValue7 = "~b~Officer Handbook"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue8, rageUiCall5, rageUiCall6, textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20 = rageUiCall4()
rageUiCall2, textValue6, textValue7, rageUiCall3, rageUiCall4, textValue8, rageUiCall5, rageUiCall6, textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20 = rageUiCall2(textValue6, textValue7, rageUiCall3, rageUiCall4, textValue8, rageUiCall5, rageUiCall6, textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20)
dataTable3(dataTable4, textValue5, rageUiCall2, textValue6, textValue7, rageUiCall3, rageUiCall4, textValue8, rageUiCall5, rageUiCall6, textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20)
dataTable3 = RageUI
dataTable3 = dataTable3.CreateWhile
dataTable4 = 1.0
textValue5 = RMenu
rageUiCall2 = textValue5
textValue5 = textValue5.Get
textValue6 = "policehandbook"
textValue7 = "main"
-- Beginner: result below is menu.
textValue5 = textValue5(rageUiCall2, textValue6, textValue7)
rageUiCall2 = nil

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "policehandbook"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, cmgCall2, textValue11, flag14, textValue15
    arg12 = RageUI
    arg12 = arg12.Button
    cmgCall2 = "Arrest"
    textValue11 = nil
    flag14 = true

    -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg13, arg22, arg32) ===
    function textValue15(arg13, arg22, arg32)
      local arg42, textValue16, dataTable5, numberValue13
      if arg32 then
        arg42 = TriggerEvent
        textValue16 = "371eab1d3a"
        dataTable5 = {}
        dataTable5.text = "The time now is ___. <br/>You are currently under arrest on suspision of ___. <br/>You do not have to say anything. But, it may harm your defence if you do not mention when questioned something which you later rely on in court. <br/>Anything you do say may be given in evidence. <br/>Do you understand?. <br/>The necessities for your arrest are to ___."
        dataTable5.height = "auto"
        dataTable5.width = "auto"
        dataTable5.colour = "#FFF"
        dataTable5.background = "#3287cd"
        dataTable5.pos = "bottom-right"
        dataTable5.icon = "success"
        numberValue13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        arg42(textValue16, dataTable5, numberValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(cmgCall2, textValue11, flag14, textValue15)
    arg12 = RageUI
    arg12 = arg12.Button
    cmgCall2 = "Search - GOWISELY"
    textValue11 = nil
    flag14 = true

    -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg13, arg22, arg32) ===
    function textValue15(arg13, arg22, arg32)
      local arg42, textValue16, dataTable5, numberValue13
      if arg32 then
        arg42 = TriggerEvent
        textValue16 = "371eab1d3a"
        dataTable5 = {}
        dataTable5.text = "Before you stop and search someone you must remember GO-WISELY. <br/>You do not have to use this after arrest. <br/>Grounds: for the search. <br/>Object: of the search. <br/>Warrant card: If not in uniform. <br/>Identity: I am PC ___. <br/>Station: attached to ___ Police Station. <br/>Entitlement: Entitled to a copy of this search up to ___ months. <br/>Legal power: Searching under s1 PACE (1984) / s23 MODA (1971). <br/>You: You are currently detained for the purpose of a search."
        dataTable5.height = "auto"
        dataTable5.width = "auto"
        dataTable5.colour = "#FFF"
        dataTable5.background = "#3287cd"
        dataTable5.pos = "bottom-right"
        dataTable5.icon = "success"
        numberValue13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        arg42(textValue16, dataTable5, numberValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(cmgCall2, textValue11, flag14, textValue15)
    arg12 = RageUI
    arg12 = arg12.Button
    cmgCall2 = "PACE - Key Legislation"
    textValue11 = nil
    flag14 = true

    -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg13, arg22, arg32) ===
    function textValue15(arg13, arg22, arg32)
      local arg42, textValue16, dataTable5, numberValue13
      if arg32 then
        arg42 = TriggerEvent
        textValue16 = "371eab1d3a"
        dataTable5 = {}
        dataTable5.text = "Police and Criminal Evidence Act 1984  - PACE.<br/> Section 1 - Stop and search (Stolen property, prohibited articles, weapons, articles used to commit an offence.<br/>Section 17 - Entry for the purpose of life and arrest<br/> Section 18 - Entry to search after an arrest <br/>Section 19 - Power of seizure<br/> Section 24 - Power of arrest <br/> Section 32 - Search after an arrest"
        dataTable5.height = "auto"
        dataTable5.width = "auto"
        dataTable5.colour = "#FFF"
        dataTable5.background = "#3287cd"
        dataTable5.pos = "bottom-right"
        dataTable5.icon = "success"
        numberValue13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        arg42(textValue16, dataTable5, numberValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(cmgCall2, textValue11, flag14, textValue15)
    arg12 = RageUI
    arg12 = arg12.Button
    cmgCall2 = "Identify Codes"
    textValue11 = nil
    flag14 = true

    -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg13, arg22, arg32) ===
    function textValue15(arg13, arg22, arg32)
      local arg42, textValue16, dataTable5, numberValue13
      if arg32 then
        arg42 = TriggerEvent
        textValue16 = "371eab1d3a"
        dataTable5 = {}
        dataTable5.text = "IC1:~s~ White - North European. <br/>IC2: White - South European. <br/>IC3: Black. <br/>IC4: Asian. <br/>IC5: Chinese, Japanese or other South East Asian. <br/>IC6: Arabic or North African. <br/>IC9: Unknown"
        dataTable5.height = "auto"
        dataTable5.width = "auto"
        dataTable5.colour = "#FFF"
        dataTable5.background = "#3287cd"
        dataTable5.pos = "bottom-right"
        dataTable5.icon = "success"
        numberValue13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        arg42(textValue16, dataTable5, numberValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(cmgCall2, textValue11, flag14, textValue15)
    arg12 = RageUI
    arg12 = arg12.Button
    cmgCall2 = "Traffic Offence Report"
    textValue11 = nil
    flag14 = true

    -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg13, arg22, arg32) ===
    function textValue15(arg13, arg22, arg32)
      local arg42, textValue16, dataTable5, numberValue13
      if arg32 then
        arg42 = TriggerEvent
        textValue16 = "371eab1d3a"
        dataTable5 = {}
        dataTable5.text = "I am reporting you for consideration of the question of prosecuting you for the offence(s) of ___. <br/><br/>You do not have to say anything but it may harm your defence if you do not mention NOW something which you may later rely on in court. Anything you do say may be given in evidence. <br/><br/>You are not under arrest - you are entitled to legal advice and you are not obliged to remain with me."
        dataTable5.height = "auto"
        dataTable5.width = "auto"
        dataTable5.colour = "#FFF"
        dataTable5.background = "#3287cd"
        dataTable5.pos = "bottom-right"
        dataTable5.icon = "success"
        numberValue13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        arg42(textValue16, dataTable5, numberValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(cmgCall2, textValue11, flag14, textValue15)
    arg12 = RageUI
    arg12 = arg12.Button
    cmgCall2 = "Initial Phase Pursuit"
    textValue11 = nil
    flag14 = true

    -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg13, arg22, arg32) ===
    function textValue15(arg13, arg22, arg32)
      local arg42, textValue16, dataTable5, numberValue13
      if arg32 then
        arg42 = TriggerEvent
        textValue16 = "371eab1d3a"
        dataTable5 = {}
        dataTable5.text = "VEHICLE DESCRIPTION: MAKE/MODEL/VRM. <br/>LOCATION & DIRECTION: ___. <br/>SPEED: ___. <br/>VEHICLE DENSITY: LOW/MED/HIGH. <br/>PEDESTRIAN DENSITY: LOW/MED/HIGH. <br/>ROAD CONDITIONS: WET/DRY/DIRT. <br/>WEATHER: CLEAR/LIGHT/DARK. <br/>VISIBILITY: CLEAR/MED/LOW. <br/>DRIVER CLASSIFICATION: IPP/ADV/TPAC. <br/>POLICE VEHICLE: MARKED/UNMARKED"
        dataTable5.height = "auto"
        dataTable5.width = "auto"
        dataTable5.colour = "#FFF"
        dataTable5.background = "#3287cd"
        dataTable5.pos = "bottom-right"
        dataTable5.icon = "success"
        numberValue13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        arg42(textValue16, dataTable5, numberValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(cmgCall2, textValue11, flag14, textValue15)
    arg12 = RageUI
    arg12 = arg12.Button
    cmgCall2 = "Warning Markers"
    textValue11 = nil
    flag14 = true

    -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg13, arg22, arg32) ===
    function textValue15(arg13, arg22, arg32)
      local arg42, textValue16, dataTable5, numberValue13
      if arg32 then
        arg42 = TriggerEvent
        textValue16 = "371eab1d3a"
        dataTable5 = {}
        dataTable5.text = "FI: FIREARMS. <br/>WE: WEAPONS. <br/>XP: EXPLOSIVES. <br/>VI: VIOLENT. <br/>CO: CONTAGIOUS. <br/>ES: ESCAPER. <br/>AG: ALLEGES. <br/>AT: AILMENT. <br/>SU: SUICIDAL. <br/>MH: MENTAL HEALTH. <br/>DR: DRUGS. <br/>IM: MALE IMPERSONATOR. <br/>IF: FEMALE IMPERSONATOR"
        dataTable5.height = "auto"
        dataTable5.width = "auto"
        dataTable5.colour = "#FFF"
        dataTable5.background = "#3287cd"
        dataTable5.pos = "bottom-right"
        dataTable5.icon = "success"
        numberValue13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        arg42(textValue16, dataTable5, numberValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(cmgCall2, textValue11, flag14, textValue15)
    arg12 = RageUI
    arg12 = arg12.Button
    cmgCall2 = "s136 - Mental Healt Act"
    textValue11 = nil
    flag14 = true

    -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg13, arg22, arg32) ===
    function textValue15(arg13, arg22, arg32)
      local arg42, textValue16, dataTable5, numberValue13
      if arg32 then
        arg42 = TriggerEvent
        textValue16 = "371eab1d3a"
        dataTable5 = {}
        dataTable5.text = "A constable may take a person to (or keep at) a place of a safety. <br/>This can be done without a warrant if: The individual appears to have a mental disorder, and they are in any place other than a house, flat or room where a person is living, or garden or garage that only one household has access to, and they are in need of immediate care or control. <br/><br/>A registered medical practitioner/healthcare professional must be consulted if practicable to do so."
        dataTable5.height = "auto"
        dataTable5.width = "auto"
        dataTable5.colour = "#FFF"
        dataTable5.background = "#3287cd"
        dataTable5.pos = "bottom-right"
        dataTable5.icon = "success"
        numberValue13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        arg42(textValue16, dataTable5, numberValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(cmgCall2, textValue11, flag14, textValue15)
    arg12 = RageUI
    arg12 = arg12.Button
    cmgCall2 = "Arrest Necessities"
    textValue11 = nil
    flag14 = true

    -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg13, arg22, arg32) ===
    function textValue15(arg13, arg22, arg32)
      local arg42, textValue16, dataTable5, numberValue13
      if arg32 then
        arg42 = TriggerEvent
        textValue16 = "371eab1d3a"
        dataTable5 = {}
        dataTable5.text = "You require at least two of the following necessities to arrest a suspect: <br/><br/>Investigation: conduct a prompt and effective. <br/>Disappearance: prevent the prosecution being hindered. <br/>Child or Vulnerable person: to protect a. <br/>Obstruction: of the highway unlawfully (preventing). <br/>Physical Injury: prevent to themselves or other person. <br/>Public Decency: prevent an offence being committed against. <br/>Loss or Damage: prevent to property. <br/>Address: enable to be ascertained (not readily available). <br/>Name: enable to be ascertained (not readily available)."
        dataTable5.height = "auto"
        dataTable5.width = "auto"
        dataTable5.colour = "#FFF"
        dataTable5.background = "#3287cd"
        dataTable5.pos = "bottom-right"
        dataTable5.icon = "success"
        numberValue13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        arg42(textValue16, dataTable5, numberValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(cmgCall2, textValue11, flag14, textValue15)
  end

  -- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
  function numberValue11()
    local arg12, cmgCall2
  end
  arg1(arg2, arg3, arg4, arg5, arg6, numberValue11)
end
dataTable3(dataTable4, textValue5, rageUiCall2, textValue6)
dataTable3 = TriggerEvent
dataTable4 = "chat:addSuggestion"
textValue5 = "/handbook"
rageUiCall2 = "Toggle the Police Handbook"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
dataTable3(dataTable4, textValue5, rageUiCall2)
dataTable3 = RegisterNetEvent
dataTable4 = "1e098f4492"
-- Beginner: this function handles network event "1e098f4492".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "policehandbook"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1e098f4492".
dataTable3(dataTable4, textValue5)
dataTable3 = RegisterNetEvent
dataTable4 = "playBreathalyserSound"
-- Beginner: this function handles network event "playBreathalyserSound".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2, arg3, arg4
  arg2 = Citizen
  arg2 = arg2.SetTimeout
  arg3 = 10000
  -- Beginner: this function handles network event "playBreathalyserSound".

  -- === HELPER FUNCTION: arg4() ===
  function arg4()
    local arg12, cmgCall2, textValue11, flag14
    arg12 = CMG
    arg12 = arg12.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg12 = arg12()
    cmgCall2 = arg1
    cmgCall2 = arg12 - cmgCall2
    cmgCall2 = #cmgCall2
    if cmgCall2 <= 15 then
      textValue11 = SendNUIMessage
      flag14 = {}
      flag14.transactionType = "breathalyser"
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      textValue11(flag14)
    end
  end
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "playBreathalyserSound".
dataTable3(dataTable4, textValue5)
dataTable3 = TriggerEvent
dataTable4 = "chat:addSuggestion"
textValue5 = "/breathalyse"
rageUiCall2 = "Breathalyse the nearest person"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
dataTable3(dataTable4, textValue5, rageUiCall2)
dataTable3 = RegisterNetEvent
dataTable4 = "a9f0d96ed7"
-- Beginner: this function handles network event "a9f0d96ed7".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4
  arg3 = arg2
  arg4 = RequestAnimDict
  arg5 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
  arg4(arg5)
  while true do
    arg4 = HasAnimDictLoaded
    arg5 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
    arg4 = arg4(arg5)
    if arg4 then
      break
    end
    arg4 = Wait
    arg5 = 0
    arg4(arg5)
  end
  arg4 = TaskPlayAnim
  arg5 = CMG
  arg5 = arg5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
  numberValue11 = "idlerng_med"
  workValue7 = 1.0
  cmgCall7 = -1
  workValue9 = 10000
  workValue = 50
  textValue2 = 0
  flag2 = false
  flag3 = false
  flag4 = false
  -- Beginner: Play an animation on a ped.
  arg4(arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4)
  arg4 = RemoveAnimDict
  arg5 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
  arg4(arg5)
  arg4 = RageUI
  arg4 = arg4.Text
  arg5 = {}
  arg6 = "~w~You are now ~b~breathalysing ~b~"
  numberValue11 = arg3
  workValue7 = "~w~, please wait for the results."
  arg6 = arg6 .. numberValue11 .. workValue7
  arg5.message = arg6
  arg4(arg5)
  arg4 = Citizen
  arg4 = arg4.SetTimeout
  arg5 = 10000

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, cmgCall2, textValue11, flag14, textValue15
    arg12 = arg1
    if arg12 < 36 then
      arg12 = RageUI
      arg12 = arg12.Text
      cmgCall2 = {}
      textValue11 = "~w~The suspect has provided a legal breathalyser sample of ~b~"
      flag14 = arg1
      textValue15 = " ~w~\194\181g/100ml."
      textValue11 = textValue11 .. flag14 .. textValue15
      cmgCall2.message = textValue11
      arg12(cmgCall2)
    else
      arg12 = RageUI
      arg12 = arg12.Text
      cmgCall2 = {}
      textValue11 = "~w~The suspect has provided an illegal breathalyser sample of ~b~"
      flag14 = arg1
      textValue15 = " ~w~\194\181g/100ml."
      textValue11 = textValue11 .. flag14 .. textValue15
      cmgCall2.message = textValue11
      arg12(cmgCall2)
    end
  end
  arg4(arg5, arg6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a9f0d96ed7".
dataTable3(dataTable4, textValue5)
dataTable3 = RegisterNetEvent
dataTable4 = "a1907f9798"
-- Beginner: this function handles network event "a1907f9798".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2
  arg1 = RageUI
  arg1 = arg1.Text
  arg2 = {}
  arg2.message = "~w~You are currently being ~b~breathalysed ~w~by a police officer."
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a1907f9798".
dataTable3(dataTable4, textValue5)
dataTable3 = RegisterNetEvent
dataTable4 = "13984c04c7"
-- Beginner: this function handles network event "13984c04c7".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = IsPedInAnyVehicle
  arg3 = arg1
  arg4 = true
  arg2 = arg2(arg3, arg4)
  if not arg2 then
    arg2 = GetEntityCoords
    arg3 = arg1
    -- Beginner: result below is entityCoords.
    arg2 = arg2(arg3)
    arg3 = GetActivePlayers
    arg3 = arg3()
    arg4 = pairs
    arg5 = arg3
    arg4, arg5, arg6, numberValue11 = arg4(arg5)
    for workValue7, cmgCall7 in arg4, arg5, arg6, numberValue11 do
      workValue9 = GetPlayerPed
      workValue = cmgCall7
      -- Beginner: result below is playerPed.
      workValue9 = workValue9(workValue)
      if workValue9 ~= arg1 then
        workValue9 = GetEntityCoords
        workValue = GetPlayerPed
        textValue2 = cmgCall7
        workValue, textValue2, flag2, flag3, flag4 = workValue(textValue2)
        -- Beginner: result below is entityCoords.
        workValue9 = workValue9(workValue, textValue2, flag2, flag3, flag4)
        workValue = arg2 - workValue9
        workValue = #workValue
        if workValue < 3.0 then
          textValue2 = GetPlayerServerId
          flag2 = cmgCall7
          -- Beginner: result below is serverId.
          textValue2 = textValue2(flag2)
          flag2 = TriggerServerEvent
          flag3 = "191ff5f709"
          flag4 = textValue2
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "191ff5f709".
          flag2(flag3, flag4)
          break
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "13984c04c7".
dataTable3(dataTable4, textValue5)
dataTable3 = TriggerEvent
dataTable4 = "chat:addSuggestion"
textValue5 = "/wc"
rageUiCall2 = "Flash your police warrant card."
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
dataTable3(dataTable4, textValue5, rageUiCall2)
dataTable3 = TriggerEvent
dataTable4 = "chat:addSuggestion"
textValue5 = "/wca"
rageUiCall2 = "Flash your police warrant card."
dataTable3(dataTable4, textValue5, rageUiCall2)
dataTable3 = RegisterNetEvent
dataTable4 = "2fa574f29e"
-- Beginner: this function handles network event "2fa574f29e".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = 1409747695
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = CMG
  arg3 = arg3.requestEntitySpawn
  arg4 = "warrant_card_object"
  arg3(arg4)
  arg3 = CreateObject
  arg4 = arg2
  arg5 = 0
  arg6 = 0
  numberValue11 = 0
  workValue7 = true
  cmgCall7 = true
  workValue9 = true
  -- Beginner: result below is objectEntity.
  arg3 = arg3(arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9)
  while true do
    arg4 = DoesEntityExist
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      break
    end
    arg4 = Wait
    arg5 = 0
    arg4(arg5)
  end
  arg4 = SetModelAsNoLongerNeeded
  arg5 = arg2
  arg4(arg5)
  arg4 = FreezeEntityPosition
  arg5 = arg3
  arg6 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg4(arg5, arg6)
  arg4 = AttachEntityToEntity
  arg5 = arg3
  arg6 = arg1
  numberValue11 = GetPedBoneIndex
  workValue7 = arg1
  cmgCall7 = 58866
  numberValue11 = numberValue11(workValue7, cmgCall7)
  workValue7 = 0.03
  cmgCall7 = -0.05
  workValue9 = -0.044
  workValue = 0.0
  textValue2 = 90.0
  flag2 = 25.0
  flag3 = true
  flag4 = true
  flag5 = false
  flag6 = true
  flag7 = 1
  flag8 = true
  -- Beginner: Attach one entity to another entity.
  arg4(arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8)
  arg4 = Wait
  arg5 = 3000
  arg4(arg5)
  arg4 = DeleteObject
  arg5 = arg3
  arg4(arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2fa574f29e".
dataTable3(dataTable4, textValue5)
dataTable3 = vector3
dataTable4 = 463.30804443359
textValue5 = -1007.4953613281
rageUiCall2 = 35.930892944336
dataTable3 = dataTable3(dataTable4, textValue5, rageUiCall2)
dataTable4 = {}
textValue5 = "Commander"
rageUiCall2 = "Dep. Asst. Commissioner"
textValue6 = "Assistant Commissioner"
textValue7 = "Deputy Commissioner"
rageUiCall3 = "Commissioner"
rageUiCall4 = "ctcommand"
dataTable4[1] = textValue5
dataTable4[2] = rageUiCall2
dataTable4[3] = textValue6
dataTable4[4] = textValue7
dataTable4[5] = rageUiCall3
dataTable4[6] = rageUiCall4

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = 1
  arg2 = dataTable4
  arg2 = #arg2
  arg3 = 1
  for arg4 = arg1, arg2, arg3 do
    arg5 = CMG
    arg5 = arg5.hasClientGroup
    arg6 = dataTable4
    arg6 = arg6[arg4]
    arg5 = arg5(arg6)
    if arg5 then
      arg5 = true
      return arg5
    end
  end
  arg1 = false
  return arg1
end
rageUiCall2 = RMenu
rageUiCall2 = rageUiCall2.Add
textValue6 = "goldcommandwarrants"
textValue7 = "main"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateMenu
rageUiCall4 = ""
textValue8 = "Gold Command: Warrants"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuHeight
rageUiCall6 = rageUiCall6()
textValue9 = "cmg_jobselectorui"
textValue10 = "metpd"
rageUiCall3, rageUiCall4, textValue8, rageUiCall5, rageUiCall6, textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20 = rageUiCall3(rageUiCall4, textValue8, rageUiCall5, rageUiCall6, textValue9, textValue10)
rageUiCall2(textValue6, textValue7, rageUiCall3, rageUiCall4, textValue8, rageUiCall5, rageUiCall6, textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20)
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateWhile
textValue6 = 1.0
textValue7 = RMenu
rageUiCall3 = textValue7
textValue7 = textValue7.Get
rageUiCall4 = "goldcommandwarrants"
textValue8 = "main"
-- Beginner: result below is menu.
textValue7 = textValue7(rageUiCall3, rageUiCall4, textValue8)
rageUiCall3 = nil

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: none) ===
function rageUiCall4()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "goldcommandwarrants"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, cmgCall2, textValue11, flag14, textValue15, modelHash
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    cmgCall2 = "Take UK GOV Warrant"
    textValue11 = "House raid warrant (one per use)."
    flag14 = {}
    flag14.RightLabel = "\226\134\146"
    textValue15 = true

    -- === HELPER FUNCTION: modelHash(arg13, arg22, arg32) ===
    function modelHash(arg13, arg22, arg32)
      local arg42, textValue16
      if arg32 then
        arg42 = TriggerServerEvent
        textValue16 = "864baba06d"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "864baba06d".
        arg42(textValue16)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(cmgCall2, textValue11, flag14, textValue15, modelHash)
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
end
rageUiCall2(textValue6, textValue7, rageUiCall3, rageUiCall4)
rageUiCall2 = TriggerEvent
textValue6 = "chat:addSuggestion"
textValue7 = "/warrants"
rageUiCall3 = "Open Gold Command warrant menu (on duty)."
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
rageUiCall2(textValue6, textValue7, rageUiCall3)
rageUiCall2 = RegisterCommand
textValue6 = "warrants"
-- Beginner: this function is the command handler for "warrants".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = textValue5
  arg1 = arg1()
  if not arg1 then
    arg1 = tCMG
    arg1 = arg1.notify
    arg2 = "~r~You are not authorised to use this."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
    return
  end
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "police.onduty.permission"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = tCMG
    arg1 = arg1.notify
    arg2 = "~r~You must be on duty."
    arg1(arg2)
    return
  end
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "goldcommandwarrants"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg1(arg2, arg3)
end
rageUiCall3 = false
-- Beginner: Register a chat/console command. Event/command: "warrants".
rageUiCall2(textValue6, textValue7, rageUiCall3)
rageUiCall2 = false

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11, flag12, numberValue3, numberValue4, numberValue5

  -- === HELPER FUNCTION: arg1() ===
  function arg1()
    local arg12, cmgCall2
    arg12 = drawNativeNotification
    cmgCall2 = "Press ~INPUT_PICKUP~ for Gold Command warrants"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg12(cmgCall2)
  end

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local arg12, cmgCall2, textValue11, flag14, textValue15
    arg12 = RageUI
    arg12 = arg12.Visible
    cmgCall2 = RMenu
    textValue11 = cmgCall2
    cmgCall2 = cmgCall2.Get
    flag14 = "goldcommandwarrants"
    textValue15 = "main"
    -- Beginner: result below is menu.
    cmgCall2 = cmgCall2(textValue11, flag14, textValue15)
    textValue11 = false
    arg12(cmgCall2, textValue11)
  end

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local arg12, cmgCall2, textValue11, flag14, textValue15
    arg12 = IsControlJustPressed
    cmgCall2 = 1
    textValue11 = 51
    arg12 = arg12(cmgCall2, textValue11)
    if arg12 then
      arg12 = CMG
      arg12 = arg12.hasClientPermission
      cmgCall2 = "police.onduty.permission"
      arg12 = arg12(cmgCall2)
      if not arg12 then
        arg12 = tCMG
        arg12 = arg12.notify
        cmgCall2 = "~r~You must be on duty."
        -- Beginner: Show a notification to the player.
        arg12(cmgCall2)
        return
      end
      arg12 = RageUI
      arg12 = arg12.Visible
      cmgCall2 = RMenu
      textValue11 = cmgCall2
      cmgCall2 = cmgCall2.Get
      flag14 = "goldcommandwarrants"
      textValue15 = "main"
      -- Beginner: result below is menu.
      cmgCall2 = cmgCall2(textValue11, flag14, textValue15)
      textValue11 = true
      arg12(cmgCall2, textValue11)
    end
  end
  arg4 = CMG
  arg4 = arg4.createArea
  arg5 = "goldcommand_warrant_pickup"
  arg6 = dataTable3
  numberValue11 = 1.5
  workValue7 = 6
  cmgCall7 = arg1
  workValue9 = arg2
  workValue = arg3
  -- Beginner: Create an interaction area around a world position.
  arg4(arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue)
  arg4 = tCMG
  arg4 = arg4.setNamedMarker
  arg5 = "goldcommand_warrant_pickup"
  arg6 = dataTable3.x
  numberValue11 = dataTable3.y
  workValue7 = dataTable3.z
  workValue7 = workValue7 - 0.98
  cmgCall7 = 1.0001
  workValue9 = 1.0001
  workValue = 0.5001
  textValue2 = 215
  flag2 = 190
  flag3 = 120
  flag4 = 200
  flag5 = 20.0
  flag6 = 27
  flag7 = true
  flag8 = false
  flag9 = false
  flag11 = nil
  flag12 = nil
  numberValue3 = 0.0
  numberValue4 = 0.0
  numberValue5 = 0.0
  arg4(arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11, flag12, numberValue3, numberValue4, numberValue5)
end

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = tCMG
  arg1 = arg1.removeArea
  arg2 = "goldcommand_warrant_pickup"
  arg1(arg2)
  arg1 = tCMG
  arg1 = arg1.removeNamedMarker
  arg2 = "goldcommand_warrant_pickup"
  arg1(arg2)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "goldcommandwarrants"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: none) ===
function rageUiCall3()
  local arg1, arg2
  arg1 = textValue5
  arg1 = arg1()
  if arg1 then
    arg1 = rageUiCall2
    if not arg1 then
      arg1 = textValue6
      arg1()
      arg1 = true
      rageUiCall2 = arg1
    end
  else
    arg1 = rageUiCall2
    if arg1 then
      arg1 = textValue7
      arg1()
      arg1 = false
      rageUiCall2 = arg1
    end
  end
end
rageUiCall4 = RMenu
rageUiCall4 = rageUiCall4.Add
textValue8 = "vehicleExtraMenu"
rageUiCall5 = "main"
rageUiCall6 = RageUI
rageUiCall6 = rageUiCall6.CreateMenu
textValue9 = "Vehicle Extra Menu"
textValue10 = "~b~Development"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20 = rageUiCall8()
rageUiCall6, textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20 = rageUiCall6(textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20)
rageUiCall4(textValue8, rageUiCall5, rageUiCall6, textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20)
rageUiCall4 = RegisterCommand
textValue8 = "extras"
-- Beginner: this function is the command handler for "extras".

-- === HELPER FUNCTION (decompiler name: rageUiCall5; parameters: none) ===
function rageUiCall5()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = CMG
  arg1 = arg1.getClientUserId
  -- Beginner: result below is userId.
  arg1 = arg1()
  if arg1 then
    arg2 = CMG
    arg2 = arg2.isDeveloper
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = RageUI
      arg2 = arg2.Visible
      arg3 = RMenu
      arg4 = arg3
      arg3 = arg3.Get
      arg5 = "vehicleExtraMenu"
      arg6 = "main"
      -- Beginner: result below is menu.
      arg3 = arg3(arg4, arg5, arg6)
      arg4 = true
      arg2(arg3, arg4)
    end
  end
end
rageUiCall6 = false
-- Beginner: Register a chat/console command. Event/command: "extras".
rageUiCall4(textValue8, rageUiCall5, rageUiCall6)
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateWhile
textValue8 = 1.0
rageUiCall5 = RMenu
rageUiCall6 = rageUiCall5
rageUiCall5 = rageUiCall5.Get
textValue9 = "vehicleExtraMenu"
textValue10 = "main"
-- Beginner: result below is menu.
rageUiCall5 = rageUiCall5(rageUiCall6, textValue9, textValue10)
rageUiCall6 = nil

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: none) ===
function textValue9()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "vehicleExtraMenu"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, cmgCall2, textValue11, flag14, textValue15, modelHash, numberValue12, numberValue14, flag19, cmgCall8
    arg12 = CMG
    arg12 = arg12.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg12 = arg12()
    if 0 ~= arg12 then
      cmgCall2 = RMenu
      textValue11 = cmgCall2
      cmgCall2 = cmgCall2.Get
      flag14 = "vehicleExtraMenu"
      textValue15 = "main"
      -- Beginner: result below is menu.
      cmgCall2 = cmgCall2(textValue11, flag14, textValue15)
      textValue11 = cmgCall2
      cmgCall2 = cmgCall2.SetSubtitle
      flag14 = "Vehicle Model: "
      textValue15 = GetDisplayNameFromVehicleModel
      modelHash = GetEntityModel
      numberValue12 = arg12
      modelHash, numberValue12, numberValue14, flag19, cmgCall8 = modelHash(numberValue12)
      textValue15 = textValue15(modelHash, numberValue12, numberValue14, flag19, cmgCall8)
      flag14 = flag14 .. textValue15
      cmgCall2(textValue11, flag14)
      cmgCall2 = 1
      textValue11 = 12
      flag14 = 1
      for textValue15 = cmgCall2, textValue11, flag14 do
        modelHash = DoesExtraExist
        numberValue12 = arg12
        numberValue14 = textValue15
        modelHash = modelHash(numberValue12, numberValue14)
        if modelHash then
          modelHash = IsVehicleExtraTurnedOn
          numberValue12 = arg12
          numberValue14 = textValue15
          modelHash = modelHash(numberValue12, numberValue14)
          if modelHash then
            modelHash = RageUI
            modelHash = modelHash.Button
            numberValue12 = "Disable Extra "
            numberValue14 = textValue15
            numberValue12 = numberValue12 .. numberValue14
            numberValue14 = nil
            flag19 = true

            -- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: arg13, arg22, arg32) ===
            function cmgCall8(arg13, arg22, arg32)
              local arg42, textValue16, dataTable5, numberValue13
              if arg32 then
                arg42 = SetVehicleExtra
                textValue16 = arg12
                dataTable5 = textValue15
                numberValue13 = true
                arg42(textValue16, dataTable5, numberValue13)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            modelHash(numberValue12, numberValue14, flag19, cmgCall8)
          else
            modelHash = RageUI
            modelHash = modelHash.Button
            numberValue12 = "Enable Extra "
            numberValue14 = textValue15
            numberValue12 = numberValue12 .. numberValue14
            numberValue14 = nil
            flag19 = true

            -- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: arg13, arg22, arg32) ===
            function cmgCall8(arg13, arg22, arg32)
              local arg42, textValue16, dataTable5, numberValue13
              if arg32 then
                arg42 = SetVehicleExtra
                textValue16 = arg12
                dataTable5 = textValue15
                numberValue13 = false
                arg42(textValue16, dataTable5, numberValue13)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            modelHash(numberValue12, numberValue14, flag19, cmgCall8)
          end
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
  function numberValue11()
    local arg12, cmgCall2
  end
  arg1(arg2, arg3, arg4, arg5, arg6, numberValue11)
end
rageUiCall4(textValue8, rageUiCall5, rageUiCall6, textValue9)
rageUiCall4 = RMenu
rageUiCall4 = rageUiCall4.Add
textValue8 = "incidentsupportunit"
rageUiCall5 = "main"
rageUiCall6 = RageUI
rageUiCall6 = rageUiCall6.CreateMenu
textValue9 = "Incident Support Unit"
textValue10 = "~b~Control Panel"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20 = rageUiCall8()
rageUiCall6, textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20 = rageUiCall6(textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20)
rageUiCall4(textValue8, rageUiCall5, rageUiCall6, textValue9, textValue10, rageUiCall7, rageUiCall8, cmgCall3, textValue12, cmgCall4, cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20)
rageUiCall4 = {}
rageUiCall4.active = false
rageUiCall4.signUp = false
rageUiCall4.flashing = false
rageUiCall4.accidentSign = false
rageUiCall4.aheadSign = false
textValue8 = RageUI
textValue8 = textValue8.CreateWhile
rageUiCall5 = 1.0
rageUiCall6 = RMenu
textValue9 = rageUiCall6
rageUiCall6 = rageUiCall6.Get
textValue10 = "incidentsupportunit"
rageUiCall7 = "main"
-- Beginner: result below is menu.
rageUiCall6 = rageUiCall6(textValue9, textValue10, rageUiCall7)
textValue9 = nil

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: none) ===
function textValue10()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "incidentsupportunit"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, cmgCall2, textValue11, flag14, textValue15, modelHash, numberValue12
    arg12 = CMG
    arg12 = arg12.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg12 = arg12()
    cmgCall2 = GetEntityModel
    textValue11 = arg12
    -- Beginner: result below is modelHash.
    cmgCall2 = cmgCall2(textValue11)
    if 1462516421 == cmgCall2 then
      rageUiCall4.active = true
      cmgCall2 = RageUI
      cmgCall2 = cmgCall2.Checkbox
      textValue11 = "Vehicle Sign Up"
      flag14 = "Toggle the vehicle sign on/off"
      textValue15 = rageUiCall4.signUp
      modelHash = {}
      numberValue12 = RageUI
      numberValue12 = numberValue12.CheckboxStyle
      numberValue12 = numberValue12.Car
      modelHash.Style = numberValue12

      -- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg13, arg22, arg32, arg42) ===
      function numberValue12(arg13, arg22, arg32, arg42)
        local textValue16, dataTable5, numberValue13, flag18
        if arg22 then
          textValue16 = rageUiCall4.signUp
          if textValue16 then
            textValue16 = RageUI
            textValue16 = textValue16.Text
            dataTable5 = {}
            numberValue13 = string
            numberValue13 = numberValue13.format
            flag18 = "~w~Sign is now ~g~~h~up"
            numberValue13 = numberValue13(flag18)
            dataTable5.message = numberValue13
            textValue16(dataTable5)
            textValue16 = SetVehicleExtra
            dataTable5 = arg12
            numberValue13 = 12
            flag18 = false
            textValue16(dataTable5, numberValue13, flag18)
            textValue16 = SetVehicleExtra
            dataTable5 = arg12
            numberValue13 = 11
            flag18 = true
            textValue16(dataTable5, numberValue13, flag18)
            textValue16 = SetVehicleExtra
            dataTable5 = arg12
            numberValue13 = 5
            flag18 = true
            textValue16(dataTable5, numberValue13, flag18)
            textValue16 = SetVehicleExtra
            dataTable5 = arg12
            numberValue13 = 6
            flag18 = true
            textValue16(dataTable5, numberValue13, flag18)
          else
            textValue16 = RageUI
            textValue16 = textValue16.Text
            dataTable5 = {}
            numberValue13 = string
            numberValue13 = numberValue13.format
            flag18 = "~w~Sign is now ~g~~h~down"
            numberValue13 = numberValue13(flag18)
            dataTable5.message = numberValue13
            textValue16(dataTable5)
            textValue16 = SetVehicleExtra
            dataTable5 = arg12
            numberValue13 = 12
            flag18 = true
            textValue16(dataTable5, numberValue13, flag18)
            textValue16 = SetVehicleExtra
            dataTable5 = arg12
            numberValue13 = 5
            flag18 = true
            textValue16(dataTable5, numberValue13, flag18)
            textValue16 = SetVehicleExtra
            dataTable5 = arg12
            numberValue13 = 6
            flag18 = true
            textValue16(dataTable5, numberValue13, flag18)
            textValue16 = SetVehicleExtra
            dataTable5 = arg12
            numberValue13 = 11
            flag18 = false
            textValue16(dataTable5, numberValue13, flag18)
          end
        end
        rageUiCall4.signUp = arg42
      end
      -- Beginner: Draw a RageUI checkbox.
      cmgCall2(textValue11, flag14, textValue15, modelHash, numberValue12)
      cmgCall2 = rageUiCall4.signUp
      if cmgCall2 then
        cmgCall2 = RageUI
        cmgCall2 = cmgCall2.Checkbox
        textValue11 = "Accident Message"
        flag14 = "Toggle the vehicle accident sign on/off"
        textValue15 = rageUiCall4.accidentSign
        modelHash = {}
        numberValue12 = RageUI
        numberValue12 = numberValue12.CheckboxStyle
        numberValue12 = numberValue12.Car
        modelHash.Style = numberValue12

        -- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg13, arg22, arg32, arg42) ===
        function numberValue12(arg13, arg22, arg32, arg42)
          local textValue16, dataTable5, numberValue13, flag18
          if arg22 then
            textValue16 = rageUiCall4.accidentSign
            if textValue16 then
              textValue16 = RageUI
              textValue16 = textValue16.Text
              dataTable5 = {}
              numberValue13 = string
              numberValue13 = numberValue13.format
              flag18 = "~w~Accident Message is now ~g~~h~on"
              numberValue13 = numberValue13(flag18)
              dataTable5.message = numberValue13
              textValue16(dataTable5)
              textValue16 = SetVehicleExtra
              dataTable5 = arg12
              numberValue13 = 6
              flag18 = false
              textValue16(dataTable5, numberValue13, flag18)
            else
              textValue16 = RageUI
              textValue16 = textValue16.Text
              dataTable5 = {}
              numberValue13 = string
              numberValue13 = numberValue13.format
              flag18 = "~w~Accident Message now ~g~~h~off"
              numberValue13 = numberValue13(flag18)
              dataTable5.message = numberValue13
              textValue16(dataTable5)
              textValue16 = SetVehicleExtra
              dataTable5 = arg12
              numberValue13 = 6
              flag18 = true
              textValue16(dataTable5, numberValue13, flag18)
              rageUiCall4.flashing = false
            end
          end
          rageUiCall4.accidentSign = arg42
        end
        -- Beginner: Draw a RageUI checkbox.
        cmgCall2(textValue11, flag14, textValue15, modelHash, numberValue12)
        cmgCall2 = RageUI
        cmgCall2 = cmgCall2.Checkbox
        textValue11 = "Ahead Message"
        flag14 = "Toggle the vehicle ahead sign on/off"
        textValue15 = rageUiCall4.aheadSign
        modelHash = {}
        numberValue12 = RageUI
        numberValue12 = numberValue12.CheckboxStyle
        numberValue12 = numberValue12.Car
        modelHash.Style = numberValue12

        -- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg13, arg22, arg32, arg42) ===
        function numberValue12(arg13, arg22, arg32, arg42)
          local textValue16, dataTable5, numberValue13, flag18
          if arg22 then
            textValue16 = rageUiCall4.aheadSign
            if textValue16 then
              textValue16 = RageUI
              textValue16 = textValue16.Text
              dataTable5 = {}
              numberValue13 = string
              numberValue13 = numberValue13.format
              flag18 = "~w~Ahead Message is now ~g~~h~on"
              numberValue13 = numberValue13(flag18)
              dataTable5.message = numberValue13
              textValue16(dataTable5)
              textValue16 = SetVehicleExtra
              dataTable5 = arg12
              numberValue13 = 5
              flag18 = false
              textValue16(dataTable5, numberValue13, flag18)
            else
              textValue16 = RageUI
              textValue16 = textValue16.Text
              dataTable5 = {}
              numberValue13 = string
              numberValue13 = numberValue13.format
              flag18 = "~w~Ahead Message now ~g~~h~off"
              numberValue13 = numberValue13(flag18)
              dataTable5.message = numberValue13
              textValue16(dataTable5)
              textValue16 = SetVehicleExtra
              dataTable5 = arg12
              numberValue13 = 5
              flag18 = true
              textValue16(dataTable5, numberValue13, flag18)
            end
          end
          rageUiCall4.aheadSign = arg42
        end
        -- Beginner: Draw a RageUI checkbox.
        cmgCall2(textValue11, flag14, textValue15, modelHash, numberValue12)
        cmgCall2 = RageUI
        cmgCall2 = cmgCall2.Checkbox
        textValue11 = "Matrix Flash"
        flag14 = "Toggle the flashing of the matrix sign ahead sign on/off"
        textValue15 = rageUiCall4.flashing
        modelHash = {}
        numberValue12 = RageUI
        numberValue12 = numberValue12.CheckboxStyle
        numberValue12 = numberValue12.Car
        modelHash.Style = numberValue12

        -- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg13, arg22, arg32, arg42) ===
        function numberValue12(arg13, arg22, arg32, arg42)
          local textValue16, dataTable5, numberValue13, flag18
          if arg22 then
            textValue16 = rageUiCall4.flashing
            if textValue16 then
              textValue16 = RageUI
              textValue16 = textValue16.Text
              dataTable5 = {}
              numberValue13 = string
              numberValue13 = numberValue13.format
              flag18 = "~w~Flashing is now ~g~~h~enabled"
              numberValue13 = numberValue13(flag18)
              dataTable5.message = numberValue13
              textValue16(dataTable5)
              rageUiCall4.flashing = true
              rageUiCall4.active = true
            else
              textValue16 = RageUI
              textValue16 = textValue16.Text
              dataTable5 = {}
              numberValue13 = string
              numberValue13 = numberValue13.format
              flag18 = "~w~Flashing now ~g~~h~disabled"
              numberValue13 = numberValue13(flag18)
              dataTable5.message = numberValue13
              textValue16(dataTable5)
            end
          end
          rageUiCall4.flashing = arg42
        end
        -- Beginner: Draw a RageUI checkbox.
        cmgCall2(textValue11, flag14, textValue15, modelHash, numberValue12)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
  function numberValue11()
    local arg12, cmgCall2
  end
  arg1(arg2, arg3, arg4, arg5, arg6, numberValue11)
end
textValue8(rageUiCall5, rageUiCall6, textValue9, textValue10)
textValue8 = RegisterCommand
rageUiCall5 = "isu"
-- Beginner: this function is the command handler for "isu".

-- === HELPER FUNCTION (decompiler name: rageUiCall6; parameters: none) ===
function rageUiCall6()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "incidentsupportunit"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg1(arg2, arg3)
end
textValue9 = false
-- Beginner: Register a chat/console command. Event/command: "isu".
textValue8(rageUiCall5, rageUiCall6, textValue9)
textValue8 = RegisterNetEvent
rageUiCall5 = "a3b5d904fa"
-- Beginner: this function handles network event "a3b5d904fa".

-- === HELPER FUNCTION (decompiler name: rageUiCall6; parameters: none) ===
function rageUiCall6()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2
  arg1 = tCMG
  arg1 = arg1.setCanAnim
  arg2 = false
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.loadAnimDict
  arg2 = "custom@police"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg1(arg2)
  arg1 = TaskPlayAnim
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = "custom@police"
  arg4 = "police"
  arg5 = 8.0
  arg6 = 8.0
  numberValue11 = -1
  workValue7 = 0
  cmgCall7 = 0.0
  workValue9 = false
  workValue = false
  textValue2 = false
  -- Beginner: Play an animation on a ped.
  arg1(arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2)
  arg1 = RemoveAnimDict
  arg2 = "custom@police"
  arg1(arg2)
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  while true do
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    arg2 = arg2 - arg1
    arg3 = 10000
    if not (arg2 < arg3) then
      break
    end
    arg2 = IsDisabledControlJustPressed
    arg3 = 0
    arg4 = 73
    arg2 = arg2(arg3, arg4)
    if arg2 then
      arg2 = TriggerServerEvent
      arg3 = "9593b2d7eb"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9593b2d7eb".
      arg2(arg3)
      return
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  arg3 = true
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a3b5d904fa".
textValue8(rageUiCall5, rageUiCall6)
textValue8 = false
rageUiCall5 = RegisterNetEvent
rageUiCall6 = "a31306b7df"
-- Beginner: this function handles network event "a31306b7df".

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg1) ===
function textValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11
  arg2 = GetPlayerFromServerId
  arg3 = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  if -1 == arg2 then
    return
  end
  arg3 = GetPlayerPed
  arg4 = arg2
  -- Beginner: result below is playerPed.
  arg3 = arg3(arg4)
  if 0 == arg3 then
    return
  end
  arg4 = CMG
  arg4 = arg4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg4 = arg4()
  arg5 = true
  textValue8 = arg5
  arg5 = tCMG
  arg5 = arg5.setCanAnim
  arg6 = false
  arg5(arg6)
  arg5 = CMG
  arg5 = arg5.loadAnimDict
  arg6 = "custom@suspect"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg5(arg6)
  arg5 = CMG
  arg5 = arg5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = AttachEntityToEntity
  numberValue11 = arg5
  workValue7 = arg3
  cmgCall7 = -1
  workValue9 = -0.05
  workValue = 0.5
  textValue2 = 0.0
  flag2 = 0.0
  flag3 = 0.0
  flag4 = 0.0
  flag5 = false
  flag6 = false
  flag7 = false
  flag8 = false
  flag9 = 2
  flag11 = false
  -- Beginner: Attach one entity to another entity.
  arg6(numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11)
  arg6 = TaskPlayAnim
  numberValue11 = arg5
  workValue7 = "custom@suspect"
  cmgCall7 = "suspect"
  workValue9 = 8.0
  workValue = 8.0
  textValue2 = -1
  flag2 = 2
  flag3 = 0.0
  flag4 = false
  flag5 = false
  flag6 = false
  -- Beginner: Play an animation on a ped.
  arg6(numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6)
  arg6 = RemoveAnimDict
  numberValue11 = "custom@suspect"
  arg6(numberValue11)
  arg6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg6 = arg6()
  while true do
    numberValue11 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    numberValue11 = numberValue11()
    numberValue11 = numberValue11 - arg6
    workValue7 = 10000
    if not (numberValue11 < workValue7) then
      break
    end
    numberValue11 = textValue8
    if not numberValue11 then
      numberValue11 = SetEntityCoordsNoOffset
      workValue7 = arg5
      cmgCall7 = arg4.x
      workValue9 = arg4.y
      workValue = arg4.z
      textValue2 = true
      flag2 = false
      flag3 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      numberValue11(workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3)
      return
    end
    numberValue11 = Citizen
    numberValue11 = numberValue11.Wait
    workValue7 = 0
    numberValue11(workValue7)
  end
  numberValue11 = SetEntityCoordsNoOffset
  workValue7 = arg5
  cmgCall7 = arg4.x
  workValue9 = arg4.y
  workValue = arg4.z
  textValue2 = true
  flag2 = false
  flag3 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  numberValue11(workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3)
  numberValue11 = false
  textValue8 = numberValue11
  numberValue11 = tCMG
  numberValue11 = numberValue11.setCanAnim
  workValue7 = true
  numberValue11(workValue7)
  numberValue11 = DetachEntity
  workValue7 = arg5
  cmgCall7 = false
  workValue9 = false
  numberValue11(workValue7, cmgCall7, workValue9)
  numberValue11 = ClearPedTasks
  workValue7 = arg5
  numberValue11(workValue7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a31306b7df".
rageUiCall5(rageUiCall6, textValue9)
rageUiCall5 = RegisterNetEvent
rageUiCall6 = "9593b2d7eb"
-- Beginner: this function handles network event "9593b2d7eb".

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: none) ===
function textValue9()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = false
  textValue8 = arg1
  arg1 = tCMG
  arg1 = arg1.setCanAnim
  arg2 = true
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = DetachEntity
  arg3 = arg1
  arg4 = false
  arg5 = false
  arg2(arg3, arg4, arg5)
  arg2 = ClearPedTasks
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9593b2d7eb".
rageUiCall5(rageUiCall6, textValue9)
rageUiCall5 = ""
rageUiCall6 = ""
textValue9 = false
textValue10 = ""
rageUiCall7 = ""
rageUiCall8 = false
cmgCall3 = RegisterNetEvent
textValue12 = "93866d3aa7"
-- Beginner: this function handles network event "93866d3aa7".

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2) ===
function cmgCall4(arg1, arg2)
  local arg3
  rageUiCall5 = arg2
  rageUiCall6 = arg1
  arg3 = true
  textValue9 = arg3
end
cmgCall3(textValue12, cmgCall4)
cmgCall3 = RegisterNetEvent
textValue12 = "7c137db0a7"
-- Beginner: this function handles network event "7c137db0a7".

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2) ===
function cmgCall4(arg1, arg2)
  local arg3
  textValue10 = arg2
  rageUiCall7 = arg1
  arg3 = true
  rageUiCall8 = arg3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7c137db0a7".
cmgCall3(textValue12, cmgCall4)
cmgCall3 = CMG
-- Beginner: this function handles network event "7c137db0a7".

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2
  arg1 = rageUiCall6
  return arg1
end
cmgCall3.getPoliceCallsign = textValue12
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2
  arg1 = rageUiCall5
  return arg1
end
cmgCall3.getPoliceRank = textValue12
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2
  arg1 = textValue9
  return arg1
end
cmgCall3.hasPoliceCallsign = textValue12
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2
  arg1 = rageUiCall7
  return arg1
end
cmgCall3.getHmpCallsign = textValue12
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2
  arg1 = textValue10
  return arg1
end
cmgCall3.getHmpRank = textValue12
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2
  arg1 = rageUiCall8
  return arg1
end
cmgCall3.hasHmpCallsign = textValue12
cmgCall3 = 0

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = IsPedShooting
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = GetSelectedPedWeapon
    arg3 = arg1
    -- Beginner: result below is weaponHash.
    arg2 = arg2(arg3)
    arg3 = GetMaxAmmo
    arg4 = arg1
    arg5 = arg2
    arg3, arg4 = arg3(arg4, arg5)
    arg5 = GetWeapontypeGroup
    arg6 = arg2
    arg5 = arg5(arg6)
    if arg4 >= 1 and -728555052 ~= arg5 and 1548507267 ~= arg5 then
      arg6 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg6 = arg6()
      cmgCall3 = arg6
    end
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
cmgCall5 = textValue12
rageUiCall9 = "GSR Logging"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(cmgCall5, rageUiCall9)
cmgCall4 = tCMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2
  arg1 = cmgCall3
  arg1 = 0 ~= arg1
  return arg1
end
cmgCall4.hasRecentlyShotGun = cmgCall5
cmgCall4 = AddEventHandler
cmgCall5 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: rageUiCall9; parameters: none) ===
function rageUiCall9()
  local arg1, arg2
  arg1 = 0
  cmgCall3 = arg1
  arg1 = rageUiCall3
  arg1()
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgCall4(cmgCall5, rageUiCall9)
cmgCall4 = RMenu
cmgCall4 = cmgCall4.Add
cmgCall5 = "trainingWorlds"
rageUiCall9 = "mainmenu"
rageUiCall10 = RageUI
rageUiCall10 = rageUiCall10.CreateMenu
textValue13 = "Training Worlds"
textValue14 = "Main Menu"
rageUiCall11 = CMG
rageUiCall11 = rageUiCall11.getRageUIMenuWidth
rageUiCall11 = rageUiCall11()
rageUiCall12 = CMG
rageUiCall12 = rageUiCall12.getRageUIMenuHeight
rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20 = rageUiCall12()
rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20 = rageUiCall10(textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20)
cmgCall4(cmgCall5, rageUiCall9, rageUiCall10, textValue13, textValue14, rageUiCall11, rageUiCall12, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20)
cmgCall4 = {}
cmgCall5 = false
rageUiCall9 = RegisterNetEvent
rageUiCall10 = "2ea6f8c095"
-- Beginner: this function handles network event "2ea6f8c095".

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: arg1) ===
function textValue13(arg1)
  local arg2, arg3, arg4, arg5, arg6
  cmgCall5 = arg1
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  arg5 = "trainingWorlds"
  arg6 = "mainmenu"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, arg5, arg6)
  arg4 = true
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2ea6f8c095".
rageUiCall9(rageUiCall10, textValue13)
rageUiCall9 = RageUI
rageUiCall9 = rageUiCall9.CreateWhile
rageUiCall10 = 1.0
textValue13 = RMenu
textValue14 = textValue13
textValue13 = textValue13.Get
rageUiCall11 = "trainingWorlds"
rageUiCall12 = "mainmenu"
-- Beginner: result below is menu.
textValue13 = textValue13(textValue14, rageUiCall11, rageUiCall12)
textValue14 = nil

-- === HELPER FUNCTION (decompiler name: rageUiCall11; parameters: none) ===
function rageUiCall11()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "trainingWorlds"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, cmgCall2, textValue11, flag14, textValue15, modelHash, numberValue12, numberValue14, flag19, cmgCall8, rageUiCall, cmgCall, workValue2, workValue3, dataTable, workValue4
    arg12 = false
    cmgCall2 = pairs
    textValue11 = cmgCall4
    cmgCall2, textValue11, flag14, textValue15 = cmgCall2(textValue11)
    for modelHash, numberValue12 in cmgCall2, textValue11, flag14, textValue15 do
      numberValue14 = string
      numberValue14 = numberValue14.format
      flag19 = "Created by %s (%s) - Bucket %s"
      cmgCall8 = numberValue12.ownerName
      rageUiCall = numberValue12.ownerUserId
      cmgCall = numberValue12.bucket
      numberValue14 = numberValue14(flag19, cmgCall8, rageUiCall, cmgCall)
      flag19 = numberValue12.bucket
      cmgCall8 = CMG
      cmgCall8 = cmgCall8.getPlayerBucket
      cmgCall8 = cmgCall8()
      flag19 = flag19 == cmgCall8
      if flag19 then
        cmgCall8 = {}
        cmgCall8.RightLabel = "(Joined)"
        if cmgCall8 then
          goto flow_label_30
        end
      end
      cmgCall8 = {}
      ::flow_label_30::
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ButtonWithStyle
      cmgCall = numberValue12.name
      workValue2 = numberValue14
      workValue3 = cmgCall8
      dataTable = true

      -- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg13, arg22, arg32) ===
      function workValue4(arg13, arg22, arg32)
        local arg42, textValue16, dataTable5
        if arg22 then
          arg42 = cmgCall5
          if arg42 then
            arg42 = drawNativeNotification
            textValue16 = "Press ~INPUT_FRONTEND_DELETE~ to delete this world"
            -- Beginner: Show a GTA-style notification/help prompt.
            arg42(textValue16)
            arg42 = IsControlJustPressed
            textValue16 = 0
            dataTable5 = 214
            arg42 = arg42(textValue16, dataTable5)
            if arg42 then
              arg42 = TriggerServerEvent
              textValue16 = "4604d8f037"
              dataTable5 = modelHash
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4604d8f037".
              arg42(textValue16, dataTable5)
            end
          end
        end
        if arg32 then
          arg42 = TriggerServerEvent
          textValue16 = "aca49a8fe3"
          dataTable5 = modelHash
          arg42(textValue16, dataTable5)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall(cmgCall, workValue2, workValue3, dataTable, workValue4)
      if flag19 then
        arg12 = flag19
      end
    end
    if arg12 then
      cmgCall2 = RageUI
      cmgCall2 = cmgCall2.ButtonWithStyle
      textValue11 = "~r~Leave Training World"
      flag14 = nil
      textValue15 = {}
      modelHash = true

      -- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg13, arg22, arg32) ===
      function numberValue12(arg13, arg22, arg32)
        local arg42, textValue16
        if arg32 then
          arg42 = TriggerServerEvent
          textValue16 = "069d0e3824"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "069d0e3824".
          arg42(textValue16)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      cmgCall2(textValue11, flag14, textValue15, modelHash, numberValue12)
    end
    cmgCall2 = cmgCall5
    if cmgCall2 then
      cmgCall2 = RageUI
      cmgCall2 = cmgCall2.ButtonWithStyle
      textValue11 = "~b~Create Training World"
      flag14 = nil
      textValue15 = {}
      modelHash = true

      -- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg13, arg22, arg32) ===
      function numberValue12(arg13, arg22, arg32)
        local arg42, textValue16
        if arg32 then
          arg42 = TriggerServerEvent
          textValue16 = "e8f086540e"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e8f086540e".
          arg42(textValue16)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      cmgCall2(textValue11, flag14, textValue15, modelHash, numberValue12)
    end
  end

  -- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
  function numberValue11()
    local arg12, cmgCall2
  end
  arg1(arg2, arg3, arg4, arg5, arg6, numberValue11)
end
rageUiCall9(rageUiCall10, textValue13, textValue14, rageUiCall11)
rageUiCall9 = RegisterNetEvent
rageUiCall10 = "d8e38d17a0"
-- Beginner: this function handles network event "d8e38d17a0".

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: arg1, arg2) ===
function textValue13(arg1, arg2)
  local arg3
  arg3 = cmgCall4
  arg3[arg1] = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d8e38d17a0".
rageUiCall9(rageUiCall10, textValue13)
rageUiCall9 = RegisterNetEvent
rageUiCall10 = "059d49db3b"
-- Beginner: this function handles network event "059d49db3b".

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: arg1) ===
function textValue13(arg1)
  local arg2
  cmgCall4 = arg1
end
rageUiCall9(rageUiCall10, textValue13)
rageUiCall9 = RegisterNetEvent
rageUiCall10 = "4604d8f037"
-- Beginner: this function handles network event "4604d8f037".

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: arg1) ===
function textValue13(arg1)
  local arg2
  arg2 = cmgCall4
  arg2[arg1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4604d8f037".
rageUiCall9(rageUiCall10, textValue13)
rageUiCall9 = RegisterNetEvent
rageUiCall10 = "f2c7fa6207"
-- Beginner: this function handles network event "f2c7fa6207".

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: none) ===
function textValue13()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = {}
  cmgCall4 = arg1
  arg1 = false
  cmgCall5 = arg1
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "trainingWorlds"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f2c7fa6207".
rageUiCall9(rageUiCall10, textValue13)
rageUiCall9 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiCall10; parameters: none) ===
function rageUiCall10()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7
  arg1 = pairs
  arg2 = cmgCall4
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    numberValue11 = arg6.bucket
    workValue7 = CMG
    workValue7 = workValue7.getPlayerBucket
    workValue7 = workValue7()
    if numberValue11 == workValue7 then
      numberValue11 = true
      return numberValue11
    end
  end
  arg1 = false
  return arg1
end
rageUiCall9.isInTrainingWorld = rageUiCall10
rageUiCall9 = false
rageUiCall10 = 0

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: arg1, arg2, arg3, arg4, arg5, arg6) ===
function textValue13(arg1, arg2, arg3, arg4, arg5, arg6)
  local numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5
  numberValue11 = arg6 / 100
  numberValue11 = arg3 * numberValue11
  workValue7 = arg6 / 100
  workValue7 = arg3 * workValue7
  workValue7 = workValue7 / 2
  workValue7 = arg1 - workValue7
  cmgCall7 = arg3 / 2
  arg1 = workValue7 - cmgCall7
  workValue7 = DrawRect
  cmgCall7 = arg1 + numberValue11
  workValue9 = arg2
  workValue = numberValue11
  textValue2 = arg4
  flag2 = arg5[1]
  flag3 = arg5[2]
  flag4 = arg5[3]
  flag5 = arg5[4]
  workValue7(cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5)
end

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: none) ===
function textValue14()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "police.onduty.permission"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "prisonguard.onduty.permission"
    arg1 = arg1(arg2)
  end
  if arg1 then
    arg2 = IsControlPressed
    arg3 = 0
    arg4 = 19
    arg2 = arg2(arg3, arg4)
    if arg2 then
      arg2 = IsControlJustPressed
      arg3 = 0
      arg4 = 47
      arg2 = arg2(arg3, arg4)
      if arg2 then
        arg2 = rageUiCall9
        if not arg2 then
          arg2 = tCMG
          arg2 = arg2.canAnim
          arg2 = arg2()
          if arg2 then
            arg2 = CMG
            arg2 = arg2.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            arg2 = arg2()
            if 0 == arg2 then
              arg2 = CMG
              arg2 = arg2.getClosestVehicleIncludingPed
              arg3 = 3.5
              arg4 = true
              arg2, arg3, arg4, arg5 = arg2(arg3, arg4)
              if 0 ~= arg2 and 0 ~= arg3 then
                if -1 == arg4 or 0 == arg4 then
                  arg6 = 1.5
                  if arg5 < arg6 then
                    arg6 = NetworkGetPlayerIndexFromPed
                    numberValue11 = arg3
                    arg6 = arg6(numberValue11)
                    if arg6 >= 0 then
                      numberValue11 = GetPlayerServerId
                      workValue7 = arg6
                      -- Beginner: result below is serverId.
                      numberValue11 = numberValue11(workValue7)
                      if numberValue11 > 0 then
                        workValue7 = TriggerServerEvent
                        cmgCall7 = "e435663fa4"
                        workValue9 = numberValue11
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e435663fa4".
                        workValue7(cmgCall7, workValue9)
                      end
                    end
                  else
                    arg6 = notify
                    numberValue11 = "~r~Closest player is too far away."
                    -- Beginner: Show a notification to the player.
                    arg6(numberValue11)
                  end
                else
                  arg6 = notify
                  numberValue11 = "~r~Closest player is not in the front seats."
                  arg6(numberValue11)
                end
              else
                arg6 = notify
                numberValue11 = "~r~No vehicle found with a player."
                -- Beginner: Show a notification to the player.
                arg6(numberValue11)
              end
            end
          end
        end
      end
    end
  end
  arg2 = rageUiCall10
  if 0 ~= arg2 then
    arg2 = textValue13
    arg3 = 0.475
    arg4 = 0.8
    arg5 = 0.138
    arg6 = 0.012750000000000001
    numberValue11 = {}
    workValue7 = 255
    cmgCall7 = 47
    workValue9 = 27
    workValue = 255
    numberValue11[1] = workValue7
    numberValue11[2] = cmgCall7
    numberValue11[3] = workValue9
    numberValue11[4] = workValue
    workValue7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workValue7 = workValue7()
    cmgCall7 = rageUiCall10
    workValue7 = workValue7 - cmgCall7
    workValue7 = workValue7 / 1500
    workValue7 = workValue7 * 100
    arg2(arg3, arg4, arg5, arg6, numberValue11, workValue7)
  end
end
rageUiCall11 = CMG
rageUiCall11 = rageUiCall11.createThreadOnTick
rageUiCall12 = textValue14
vector3Builder = "Pull Civ Out Vehicle"
-- Beginner: Run a helper every game frame while this script is active.
rageUiCall11(rageUiCall12, vector3Builder)
rageUiCall11 = RegisterNetEvent
rageUiCall12 = "464de6911c"
-- Beginner: this function handles network event "464de6911c".

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: none) ===
function vector3Builder()
  local arg1, arg2
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  rageUiCall10 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "464de6911c".
rageUiCall11(rageUiCall12, vector3Builder)
rageUiCall11 = RegisterNetEvent
rageUiCall12 = "70fe1c273d"
-- Beginner: this function handles network event "70fe1c273d".

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: none) ===
function vector3Builder()
  local arg1, arg2
  arg1 = 0
  rageUiCall10 = arg1
end
rageUiCall11(rageUiCall12, vector3Builder)
rageUiCall11 = RegisterNetEvent
rageUiCall12 = "d61cf70cd5"
-- Beginner: this function handles network event "d61cf70cd5".

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: none) ===
function vector3Builder()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  rageUiCall10 = arg1
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = ClearPedTasksImmediately
  arg3 = arg1
  arg2(arg3)
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 0
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.loadAnimDict
  arg3 = "veh@break_in@0h@p_m_zero@"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg2(arg3)
  arg2 = TaskPlayAnim
  arg3 = arg1
  arg4 = "veh@break_in@0h@p_m_zero@"
  arg5 = "std_force_entry_ds"
  arg6 = 8.0
  numberValue11 = -8.0
  workValue7 = -1
  cmgCall7 = 48
  workValue9 = 0
  workValue = false
  textValue2 = false
  flag2 = false
  -- Beginner: Play an animation on a ped.
  arg2(arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2)
  arg2 = RemoveAnimDict
  arg3 = "veh@break_in@0h@p_m_zero@"
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d61cf70cd5".
rageUiCall11(rageUiCall12, vector3Builder)
rageUiCall11 = RegisterNetEvent
rageUiCall12 = "66ca0790fb"
-- Beginner: this function handles network event "66ca0790fb".

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: none) ===
function vector3Builder()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = StopAnimTask
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = "veh@break_in@0h@p_m_zero@"
  arg4 = "std_force_entry_ds"
  arg5 = 1.0
  arg1(arg2, arg3, arg4, arg5)
  arg1 = 0
  rageUiCall10 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "66ca0790fb".
rageUiCall11(rageUiCall12, vector3Builder)
rageUiCall11 = RegisterNetEvent
rageUiCall12 = "02fd20c813"
-- Beginner: this function handles network event "02fd20c813".

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: arg1) ===
function vector3Builder(arg1)
  local arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6
  arg2 = GetPlayerFromServerId
  arg3 = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  if -1 == arg2 then
    return
  end
  arg3 = GetPlayerPed
  arg4 = arg2
  -- Beginner: result below is playerPed.
  arg3 = arg3(arg4)
  if 0 == arg3 then
    return
  end
  arg4 = GetVehiclePedIsUsing
  arg5 = arg3
  arg4 = arg4(arg5)
  if 0 == arg4 then
    return
  end
  arg5 = true
  rageUiCall9 = arg5
  arg5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = GetPedRelationshipGroupHash
  numberValue11 = arg5
  arg6 = arg6(numberValue11)
  numberValue11 = GetPedRelationshipGroupHash
  workValue7 = arg3
  numberValue11 = numberValue11(workValue7)
  workValue7 = GetRelationshipBetweenGroups
  cmgCall7 = arg6
  workValue9 = numberValue11
  workValue7 = workValue7(cmgCall7, workValue9)
  cmgCall7 = GetRelationshipBetweenGroups
  workValue9 = numberValue11
  workValue = arg6
  cmgCall7 = cmgCall7(workValue9, workValue)
  workValue9 = SetRelationshipBetweenGroups
  workValue = 5
  textValue2 = arg6
  flag2 = numberValue11
  workValue9(workValue, textValue2, flag2)
  workValue9 = SetRelationshipBetweenGroups
  workValue = 5
  textValue2 = numberValue11
  flag2 = arg6
  workValue9(workValue, textValue2, flag2)
  workValue9 = SetPedCanBeDraggedOut
  workValue = arg3
  textValue2 = true
  workValue9(workValue, textValue2)
  workValue9 = TaskEnterVehicle
  workValue = arg5
  textValue2 = arg4
  flag2 = -1
  flag3 = 0
  flag4 = 1.0
  flag5 = 524288
  flag6 = 0
  workValue9(workValue, textValue2, flag2, flag3, flag4, flag5, flag6)
  workValue9 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  workValue9 = workValue9()
  while true do
    workValue = GetVehiclePedIsIn
    textValue2 = arg3
    flag2 = false
    -- Beginner: result below is currentVehicle.
    workValue = workValue(textValue2, flag2)
    if 0 == workValue then
      break
    end
    workValue = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workValue = workValue()
    workValue = workValue - workValue9
    textValue2 = 2500
    if workValue > textValue2 then
      break
    end
    workValue = Citizen
    workValue = workValue.Wait
    textValue2 = 0
    workValue(textValue2)
  end
  workValue = SetPedCanBeDraggedOut
  textValue2 = arg3
  flag2 = false
  workValue(textValue2, flag2)
  workValue = SetRelationshipBetweenGroups
  textValue2 = workValue7
  flag2 = arg6
  flag3 = numberValue11
  workValue(textValue2, flag2, flag3)
  workValue = SetRelationshipBetweenGroups
  textValue2 = cmgCall7
  flag2 = numberValue11
  flag3 = arg6
  workValue(textValue2, flag2, flag3)
  workValue = false
  rageUiCall9 = workValue
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "02fd20c813".
rageUiCall11(rageUiCall12, vector3Builder)
rageUiCall11 = RegisterNetEvent
rageUiCall12 = "188c2532af"
-- Beginner: this function handles network event "188c2532af".

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: arg1) ===
function vector3Builder(arg1)
  local arg2, arg3, arg4
  arg2 = SetNewWaypoint
  arg3 = arg1.x
  arg4 = arg1.y
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "188c2532af".
rageUiCall11(rageUiCall12, vector3Builder)
rageUiCall11 = false
rageUiCall12 = RegisterNetEvent
vector3Builder = "e0ea4a3f43"
-- Beginner: this function handles network event "e0ea4a3f43".

-- === HELPER FUNCTION (decompiler name: vector3Builder2; parameters: none) ===
function vector3Builder2()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11, flag12
  arg1 = rageUiCall11
  if arg1 then
    arg1 = false
    rageUiCall11 = arg1
    return
  end
  arg1 = true
  rageUiCall11 = arg1
  arg1 = "amb@world_human_paparazzi@male@base"
  arg2 = "base"
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = 0
  arg5 = CMG
  arg5 = arg5.hasClientGroup
  arg6 = "CID"
  arg5 = arg5(arg6)
  if not arg5 then
    arg5 = CMG
    arg5 = arg5.loadModel
    arg6 = 680380202
    -- Beginner: Request/load a GTA model before spawning or applying it.
    arg5(arg6)
    arg5 = CMG
    arg5 = arg5.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg5 = arg5()
    arg6 = CMG
    arg6 = arg6.requestEntitySpawn
    numberValue11 = "police_camera"
    arg6(numberValue11)
    arg6 = CreateObject
    numberValue11 = 680380202
    workValue7 = arg5.x
    cmgCall7 = arg5.y
    workValue9 = arg5.z
    workValue = true
    textValue2 = false
    flag2 = false
    -- Beginner: result below is objectEntity.
    arg6 = arg6(numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2)
    arg4 = arg6
    arg6 = AttachEntityToEntity
    numberValue11 = arg4
    workValue7 = arg3
    cmgCall7 = GetPedBoneIndex
    workValue9 = arg3
    workValue = 28422
    cmgCall7 = cmgCall7(workValue9, workValue)
    workValue9 = 0.0
    workValue = 0.0
    textValue2 = 0.0
    flag2 = 0.0
    flag3 = 0.0
    flag4 = 0.0
    flag5 = true
    flag6 = true
    flag7 = false
    flag8 = true
    flag9 = 1
    flag11 = true
    -- Beginner: Attach one entity to another entity.
    arg6(numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11)
    arg6 = SetModelAsNoLongerNeeded
    numberValue11 = 680380202
    arg6(numberValue11)
  end
  arg5 = false
  arg6 = 0
  numberValue11 = false
  workValue7 = 0
  cmgCall7 = 0

  -- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
  function workValue9()
    local arg12, cmgCall2, textValue11, flag14, textValue15, modelHash
    arg12 = SetCamViewModeForContext
    cmgCall2 = 0
    textValue11 = arg6
    arg12(cmgCall2, textValue11)
    arg12 = CMG
    arg12 = arg12.showAllDisplays
    cmgCall2 = "policecamera"
    arg12(cmgCall2)
    arg12 = SetPedPropIndex
    cmgCall2 = arg3
    textValue11 = 0
    flag14 = workValue7
    textValue15 = cmgCall7
    modelHash = false
    arg12(cmgCall2, textValue11, flag14, textValue15, modelHash)
  end
  while true do
    workValue = rageUiCall11
    if not workValue then
      break
    end
    workValue = tCMG
    workValue = workValue.canAnim
    workValue = workValue()
    if not workValue then
      break
    end
    workValue = CMG
    workValue = workValue.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    workValue = workValue()
    if 0 ~= workValue then
      break
    end
    workValue = IsEntityPlayingAnim
    textValue2 = arg3
    flag2 = arg1
    flag3 = arg2
    flag4 = 3
    workValue = workValue(textValue2, flag2, flag3, flag4)
    if not workValue then
      workValue = CMG
      workValue = workValue.hasClientGroup
      textValue2 = "CID"
      workValue = workValue(textValue2)
      if not workValue then
        workValue = CMG
        workValue = workValue.loadAnimDict
        textValue2 = arg1
        -- Beginner: Load a GTA animation dictionary before using it.
        workValue(textValue2)
        workValue = TaskPlayAnim
        textValue2 = arg3
        flag2 = arg1
        flag3 = arg2
        flag4 = 2.0
        flag5 = 2.0
        flag6 = -1
        flag7 = 51
        flag8 = 0
        flag9 = false
        flag11 = false
        flag12 = false
        -- Beginner: Play an animation on a ped.
        workValue(textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag11, flag12)
        workValue = RemoveAnimDict
        textValue2 = arg1
        workValue(textValue2)
      end
    end
    if arg5 then
      if not numberValue11 then
        workValue = drawNativeNotification
        textValue2 = [[
Press ~INPUT_THROW_GRENADE~ to exit camera
Press ~INPUT_CONTEXT~ to take photograph]]
        -- Beginner: Show a GTA-style notification/help prompt.
        workValue(textValue2)
      else
        workValue = ClearHelp
        textValue2 = true
        workValue(textValue2)
        workValue = HideHudNotificationsThisFrame
        workValue()
      end
      workValue = SetEntityLocallyInvisible
      textValue2 = arg3
      workValue(textValue2)
      if 0 ~= arg4 then
        workValue = SetEntityLocallyInvisible
        textValue2 = arg4
        workValue(textValue2)
      end
      workValue = SetCamViewModeForContext
      textValue2 = 0
      flag2 = 4
      workValue(textValue2, flag2)
      workValue = IsControlJustPressed
      textValue2 = 0
      flag2 = 51
      workValue = workValue(textValue2, flag2)
      if workValue and not numberValue11 then
        numberValue11 = true
        workValue = Citizen
        workValue = workValue.CreateThread

        -- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
        function textValue2()
          local arg12, cmgCall2, textValue11, flag14
          arg12 = Citizen
          arg12 = arg12.Wait
          cmgCall2 = 250
          arg12(cmgCall2)
          arg12 = CMG
          arg12 = arg12.requestScreenshotUpload
          cmgCall2 = "https://cdn.cmgstudios.net/content/upld/upload2.php"
          textValue11 = "files[]"

          -- === HELPER FUNCTION (decompiler name: flag14; parameters: arg13) ===
          function flag14(arg13)
            local arg22, arg32, arg42
            arg22 = false
            numberValue11 = arg22
            arg22 = TriggerServerEvent
            arg32 = "025a5e7ea1"
            arg42 = arg13
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "025a5e7ea1".
            arg22(arg32, arg42)
          end
          arg12(cmgCall2, textValue11, flag14)
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        workValue(textValue2)
      end
    else
      workValue = drawNativeNotification
      textValue2 = "Press ~INPUT_THROW_GRENADE~ to enter camera"
      -- Beginner: Show a GTA-style notification/help prompt.
      workValue(textValue2)
    end
    workValue = IsControlJustPressed
    textValue2 = 0
    flag2 = 58
    workValue = workValue(textValue2, flag2)
    if workValue then
      arg5 = not arg5
      if arg5 then
        workValue = GetCamViewModeForContext
        textValue2 = 0
        workValue = workValue(textValue2)
        arg6 = workValue
        workValue = CMG
        workValue = workValue.hideAllDisplays
        textValue2 = "policecamera"
        workValue(textValue2)
        workValue = GetPedPropIndex
        textValue2 = arg3
        flag2 = 0
        workValue = workValue(textValue2, flag2)
        workValue7 = workValue
        workValue = GetPedPropTextureIndex
        textValue2 = arg3
        flag2 = 0
        workValue = workValue(textValue2, flag2)
        cmgCall7 = workValue
        workValue = ClearPedProp
        textValue2 = arg3
        flag2 = 0
        workValue(textValue2, flag2)
      else
        workValue = workValue9
        workValue()
      end
    end
    workValue = Citizen
    workValue = workValue.Wait
    textValue2 = 0
    workValue(textValue2)
  end
  if arg5 then
    workValue = workValue9
    workValue()
  end
  workValue = StopAnimTask
  textValue2 = arg3
  flag2 = arg1
  flag3 = arg2
  flag4 = 1.0
  workValue(textValue2, flag2, flag3, flag4)
  workValue = DeleteEntity
  textValue2 = arg4
  -- Beginner: Delete a GTA entity.
  workValue(textValue2)
  workValue = false
  rageUiCall11 = workValue
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e0ea4a3f43".
rageUiCall12(vector3Builder, vector3Builder2)
rageUiCall12 = {}
vector3Builder = {}
vector3Builder2 = vector3
vector3Builder3 = 450.529144
vector3Builder4 = -1028.21094
vector3Builder5 = 32.74495
vector3Builder2 = vector3Builder2(vector3Builder3, vector3Builder4, vector3Builder5)
vector3Builder.position = vector3Builder2
vector3Builder.heading = 187.0
vector3Builder2 = {}
vector3Builder3 = vector3
vector3Builder4 = 459.051819
vector3Builder5 = -1027.14771
vector3Builder6 = 32.74495
vector3Builder3 = vector3Builder3(vector3Builder4, vector3Builder5, vector3Builder6)
vector3Builder2.position = vector3Builder3
vector3Builder2.heading = 187.0
vector3Builder3 = {}
vector3Builder4 = vector3
vector3Builder5 = 467.526
vector3Builder6 = -1026.09058
vector3Builder7 = 32.74495
vector3Builder4 = vector3Builder4(vector3Builder5, vector3Builder6, vector3Builder7)
vector3Builder3.position = vector3Builder4
vector3Builder3.heading = 187.0
vector3Builder4 = {}
vector3Builder5 = vector3
vector3Builder6 = 484.770721
vector3Builder7 = -1024.14661
numberValue6 = 32.9292374
vector3Builder5 = vector3Builder5(vector3Builder6, vector3Builder7, numberValue6)
vector3Builder4.position = vector3Builder5
vector3Builder4.heading = 187.0
vector3Builder5 = {}
vector3Builder6 = vector3
vector3Builder7 = 493.179
numberValue6 = -1023.09766
numberValue7 = 32.9292374
vector3Builder6 = vector3Builder6(vector3Builder7, numberValue6, numberValue7)
vector3Builder5.position = vector3Builder6
vector3Builder5.heading = 187.0
vector3Builder6 = {}
vector3Builder7 = vector3
numberValue6 = 476.2486
numberValue7 = -1025.19336
numberValue8 = 32.876
vector3Builder7 = vector3Builder7(numberValue6, numberValue7, numberValue8)
vector3Builder6.position = vector3Builder7
vector3Builder6.heading = 187.0
rageUiCall12[1] = vector3Builder
rageUiCall12[2] = vector3Builder2
rageUiCall12[3] = vector3Builder3
rageUiCall12[4] = vector3Builder4
rageUiCall12[5] = vector3Builder5
rageUiCall12[6] = vector3Builder6
vector3Builder = vector3
vector3Builder2 = 461.96771240234
vector3Builder3 = -1028.4676513672
vector3Builder4 = 33.133514404297
vector3Builder = vector3Builder(vector3Builder2, vector3Builder3, vector3Builder4)
vector3Builder2 = {}

-- === HELPER FUNCTION (decompiler name: vector3Builder3; parameters: none) ===
function vector3Builder3()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3
  arg1 = pairs
  arg2 = rageUiCall12
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    numberValue11 = CreateObjectNoOffset
    workValue7 = -911526563
    cmgCall7 = arg6.position
    cmgCall7 = cmgCall7.x
    workValue9 = arg6.position
    workValue9 = workValue9.y
    workValue = arg6.position
    workValue = workValue.z
    textValue2 = false
    flag2 = false
    flag3 = false
    -- Beginner: result below is objectEntity.
    numberValue11 = numberValue11(workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3)
    workValue7 = SetEntityHeading
    cmgCall7 = numberValue11
    workValue9 = arg6.heading
    -- Beginner: Change the direction an entity is facing.
    workValue7(cmgCall7, workValue9)
    workValue7 = FreezeEntityPosition
    cmgCall7 = numberValue11
    workValue9 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    workValue7(cmgCall7, workValue9)
    workValue7 = SetEntityVisible
    cmgCall7 = numberValue11
    workValue9 = false
    workValue = false
    workValue7(cmgCall7, workValue9, workValue)
    workValue7 = table
    workValue7 = workValue7.insert
    cmgCall7 = vector3Builder2
    workValue9 = numberValue11
    workValue7(cmgCall7, workValue9)
  end
end

-- === HELPER FUNCTION (decompiler name: vector3Builder4; parameters: none) ===
function vector3Builder4()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7
  arg1 = pairs
  arg2 = vector3Builder2
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    numberValue11 = DeleteEntity
    workValue7 = arg6
    -- Beginner: Delete a GTA entity.
    numberValue11(workValue7)
  end
  arg1 = {}
  vector3Builder2 = arg1
end
vector3Builder5 = CMG
vector3Builder5 = vector3Builder5.createArea
vector3Builder6 = "fake_fences"
vector3Builder7 = vector3Builder
numberValue6 = 100.0
numberValue7 = 50.0
numberValue8 = vector3Builder3
numberValue9 = vector3Builder4

-- === HELPER FUNCTION (decompiler name: vector3Builder8; parameters: none) ===
function vector3Builder8()
  local arg1, arg2
end
vector3Builder9 = {}
-- Beginner: Create an interaction area around a world position.
vector3Builder5(vector3Builder6, vector3Builder7, numberValue6, numberValue7, numberValue8, numberValue9, vector3Builder8, vector3Builder9)
vector3Builder5 = 678
vector3Builder6 = 679
vector3Builder7 = 0
numberValue6 = vector3
numberValue7 = -2196.599609375
numberValue8 = 3068.681640625
numberValue9 = 32.955951690674
numberValue6 = numberValue6(numberValue7, numberValue8, numberValue9)
numberValue7 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue8; parameters: none) ===
function numberValue8()
  local arg1, arg2
  arg1 = vector3Builder5
  return arg1
end
numberValue7.getTrainingGroundsBucket = numberValue8
numberValue7 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue8; parameters: none) ===
function numberValue8()
  local arg1, arg2
  arg1 = vector3Builder6
  return arg1
end
numberValue7.getHMPTrainingGroundsBucket = numberValue8
numberValue7 = AddEventHandler
numberValue8 = "62fa42ee34"
-- Beginner: this function runs when client event "62fa42ee34" fires.

-- === HELPER FUNCTION (decompiler name: numberValue9; parameters: arg1) ===
function numberValue9(arg1)
  local arg2, arg3
  if "SCO19 Training Grounds" == arg1 then
    arg2 = TriggerServerEvent
    arg3 = "b88749a675"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b88749a675".
    arg2(arg3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "62fa42ee34".
numberValue7(numberValue8, numberValue9)
numberValue7 = AddEventHandler
numberValue8 = "919aefda0c"
-- Beginner: this function runs when client event "919aefda0c" fires.

-- === HELPER FUNCTION (decompiler name: numberValue9; parameters: arg1) ===
function numberValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7
  arg2 = vector3Builder5
  if arg1 == arg2 then
    arg2 = 0
    vector3Builder7 = arg2
  end
  arg2 = CMG
  arg2 = arg2.isInTrainingGrounds
  arg2 = arg2()
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.isInTrainingWorld
    arg2 = arg2()
  end
  if arg2 then
    arg3 = flag17
    if not arg3 then
      arg3 = CMG
      arg3 = arg3.createGunStore
      arg4 = "Training Large Arms"
      arg5 = "policeLargeArms"
      arg6 = vector3
      numberValue11 = -1948.7639160156
      workValue7 = 3019.4665527344
      cmgCall7 = 31.820279846191
      arg6, numberValue11, workValue7, cmgCall7 = arg6(numberValue11, workValue7, cmgCall7)
      arg3(arg4, arg5, arg6, numberValue11, workValue7, cmgCall7)
      arg3 = CMG
      arg3 = arg3.createGunStore
      arg4 = "Training Small Arms"
      arg5 = "policeSmallArms"
      arg6 = vector3
      numberValue11 = -1952.6622314453
      workValue7 = 3021.583984375
      cmgCall7 = 31.820279846191
      arg6, numberValue11, workValue7, cmgCall7 = arg6(numberValue11, workValue7, cmgCall7)
      arg3(arg4, arg5, arg6, numberValue11, workValue7, cmgCall7)
      arg3 = true
      flag17 = arg3
    end
  else
    arg3 = flag17
    if arg3 then
      arg3 = CMG
      arg3 = arg3.deleteGunStore
      arg4 = "Training Large Arms"
      arg3(arg4)
      arg3 = CMG
      arg3 = arg3.deleteGunStore
      arg4 = "Training Small Arms"
      arg3(arg4)
      arg3 = false
      flag17 = arg3
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "919aefda0c".
numberValue7(numberValue8, numberValue9)

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
function numberValue7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.getPlayerBucket
  arg1 = arg1()
  arg2 = vector3Builder5
  if arg1 ~= arg2 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = numberValue6
  arg1 = arg1 - arg2
  arg1 = #arg1
  arg2 = 750.0
  if arg1 < arg2 then
    arg2 = 0
    vector3Builder7 = arg2
    return
  end
  arg2 = vector3Builder7
  if 0 == arg2 then
    arg2 = notify
    arg3 = "~y~You will be kicked from training grounds in 5 seconds. Please return."
    -- Beginner: Show a notification to the player.
    arg2(arg3)
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    vector3Builder7 = arg2
    return
  end
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = vector3Builder7
  arg2 = arg2 - arg3
  arg3 = 5000
  if arg2 > arg3 then
    arg2 = notify
    arg3 = "~r~You have been kicked from training grounds for going too far away."
    arg2(arg3)
    arg2 = TriggerServerEvent
    arg3 = "ee2c49d787"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ee2c49d787".
    arg2(arg3)
    arg2 = 0
    vector3Builder7 = arg2
  end
end
numberValue8 = CMG
numberValue8 = numberValue8.createThreadOnTick
numberValue9 = numberValue7
vector3Builder8 = "Training Grounds"
-- Beginner: Run a helper every game frame while this script is active.
numberValue8(numberValue9, vector3Builder8)
numberValue8 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue9; parameters: none) ===
function numberValue9()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.getPlayerBucket
  arg1 = arg1()
  arg2 = vector3Builder5
  arg1 = arg1 == arg2
  return arg1
end
numberValue8.isInTrainingGrounds = numberValue9
numberValue8 = AddEventHandler
numberValue9 = "b51e08118b"
-- Beginner: this function runs when client event "b51e08118b" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder8; parameters: none) ===
function vector3Builder8()
  local arg1, arg2
  arg1 = rageUiCall3
  arg1()
end
-- Beginner: Register a client-side event handler. Event/command: "b51e08118b".
numberValue8(numberValue9, vector3Builder8)
numberValue8 = {}
numberValue9 = vector3
vector3Builder8 = 472.66070556641
vector3Builder9 = -985.42517089844
vector3Builder10 = 24.914979934692
numberValue9 = numberValue9(vector3Builder8, vector3Builder9, vector3Builder10)
vector3Builder8 = vector3
vector3Builder9 = -1074.2965087891
vector3Builder10 = -823.36840820312
vector3Builder11 = 11.035833358765
vector3Builder8 = vector3Builder8(vector3Builder9, vector3Builder10, vector3Builder11)
vector3Builder9 = vector3
vector3Builder10 = 1858.0747070312
vector3Builder11 = 3697.7080078125
vector3Builder12 = 34.26692199707
vector3Builder9 = vector3Builder9(vector3Builder10, vector3Builder11, vector3Builder12)
vector3Builder10 = vector3
vector3Builder11 = -448.13220214844
vector3Builder12 = 6008.2236328125
numberValue10 = 31.716361999512
vector3Builder10 = vector3Builder10(vector3Builder11, vector3Builder12, numberValue10)
vector3Builder11 = vector3
vector3Builder12 = 1784.0445556641
numberValue10 = 2543.3447265625
rageUiCall13 = 45.797943115234
vector3Builder11 = vector3Builder11(vector3Builder12, numberValue10, rageUiCall13)
vector3Builder12 = vector3
numberValue10 = 1557.6273193359
rageUiCall13 = 810.14892578125
textValue17 = 78.693084716797
vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20 = vector3Builder12(numberValue10, rageUiCall13, textValue17)
numberValue8[1] = numberValue9
numberValue8[2] = vector3Builder8
numberValue8[3] = vector3Builder9
numberValue8[4] = vector3Builder10
numberValue8[5] = vector3Builder11
numberValue8[6] = vector3Builder12
numberValue8[7] = numberValue10
numberValue8[8] = rageUiCall13
numberValue8[9] = textValue17
numberValue8[10] = textValue18
numberValue8[11] = rageUiCall14
numberValue8[12] = rageUiCall15
numberValue8[13] = textValue19
numberValue8[14] = textValue20

-- === HELPER FUNCTION (decompiler name: numberValue9; parameters: none) ===
function numberValue9()
  local arg1, arg2, arg3, arg4
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "police.onduty.permission"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "prisonguard.onduty.permission"
    arg1 = arg1(arg2)
    if not arg1 then
      return
    end
  end
  arg1 = drawNativeNotification
  arg2 = "Press ~INPUT_CONTEXT_SECONDARY~ to drop off any evidence bags."
  -- Beginner: Show a GTA-style notification/help prompt.
  arg1(arg2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 44
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 52
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = IsDisabledControlJustPressed
  arg2 = 0
  arg3 = 52
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = TriggerServerEvent
    arg2 = "dcb45454ac"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dcb45454ac".
    arg1(arg2)
  end
end
vector3Builder8 = Citizen
vector3Builder8 = vector3Builder8.CreateThread

-- === HELPER FUNCTION (decompiler name: vector3Builder9; parameters: none) ===
function vector3Builder9()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8
  arg1 = pairs
  arg2 = numberValue8
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    numberValue11 = CMG
    numberValue11 = numberValue11.createArea
    workValue7 = string
    workValue7 = workValue7.format
    cmgCall7 = "evidencebag_dropoff_%s"
    workValue9 = arg5
    workValue7 = workValue7(cmgCall7, workValue9)
    cmgCall7 = arg6
    workValue9 = 2.0
    workValue = 2.5

    -- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
    function textValue2()
      local arg12, cmgCall2
    end

    -- === HELPER FUNCTION (decompiler name: flag2; parameters: none) ===
    function flag2()
      local arg12, cmgCall2
    end
    flag3 = numberValue9
    -- Beginner: Create an interaction area around a world position.
    numberValue11(workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3)
    numberValue11 = tCMG
    numberValue11 = numberValue11.addMarker
    workValue7 = arg6.x
    cmgCall7 = arg6.y
    workValue9 = arg6.z
    workValue9 = workValue9 - 1.0
    workValue = 1.0
    textValue2 = 1.0
    flag2 = 1.0
    flag3 = 255
    flag4 = 165
    flag5 = 0
    flag6 = 170
    flag7 = 50
    flag8 = 27
    -- Beginner: Create a world marker.
    numberValue11(workValue7, cmgCall7, workValue9, workValue, textValue2, flag2, flag3, flag4, flag5, flag6, flag7, flag8)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
vector3Builder8(vector3Builder9)
vector3Builder8 = RegisterNetEvent
vector3Builder9 = "678da4b471"
-- Beginner: this function handles network event "678da4b471".

-- === HELPER FUNCTION (decompiler name: vector3Builder10; parameters: none) ===
function vector3Builder10()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7
  arg1 = true
  arg2 = false
  arg3 = Citizen
  arg3 = arg3.CreateThread
  -- Beginner: this function handles network event "678da4b471".

  -- === HELPER FUNCTION: arg4() ===
  function arg4()
    local arg12, cmgCall2
    while true do
      arg12 = arg2
      if arg12 then
        break
      end
      arg12 = drawNativeNotification
      cmgCall2 = "Press ~INPUT_JUMP~ in the correct area to unseal the bag."
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(cmgCall2)
      arg12 = Citizen
      arg12 = arg12.Wait
      cmgCall2 = 0
      arg12(cmgCall2)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg3(arg4)
  arg3 = true
  arg4 = CMG
  arg4 = arg4.minigameCircularProgressBar
  arg5 = {}
  arg5.Difficulty = "Medium"
  arg5.Timeout = 25000

  -- === HELPER FUNCTION: arg6(arg12) ===
  function arg6(arg12)
    local cmgCall2
    arg1 = arg12
    cmgCall2 = false
    arg3 = cmgCall2
  end
  arg5.onComplete = arg6

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, cmgCall2
    arg12 = false
    arg1 = arg12
    arg12 = false
    arg3 = arg12
  end
  arg5.onTimeout = arg6
  arg4(arg5)
  while arg3 do
    arg4 = drawNativeText
    arg5 = "Unseal the bag."
    -- Beginner: Draw GTA-style text on screen.
    arg4(arg5)
    arg4 = Citizen
    arg4 = arg4.Wait
    arg5 = 0
    arg4(arg5)
  end
  arg2 = true
  if arg1 then
    arg4 = PlaySoundFrontend
    arg5 = -1
    arg6 = "HACKING_CLICK_BAD"
    numberValue11 = ""
    workValue7 = false
    arg4(arg5, arg6, numberValue11, workValue7)
    arg4 = notify
    arg5 = "~g~You succesfully unsealed the evidence bag."
    -- Beginner: Show a notification to the player.
    arg4(arg5)
  else
    arg4 = PlaySoundFrontend
    arg5 = -1
    arg6 = "HACKING_SUCCESS"
    numberValue11 = ""
    workValue7 = true
    arg4(arg5, arg6, numberValue11, workValue7)
    arg4 = notify
    arg5 = "~r~You failed to unseal the evidence bag."
    -- Beginner: Show a notification to the player.
    arg4(arg5)
  end
  arg4 = TriggerServerEvent
  arg5 = "c5002dc873"
  arg6 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c5002dc873".
  arg4(arg5, arg6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "678da4b471".
vector3Builder8(vector3Builder9, vector3Builder10)
vector3Builder8 = {}
vector3Builder9 = 3
vector3Builder10 = nil
vector3Builder11 = RMenu
vector3Builder11 = vector3Builder11.Add
vector3Builder12 = "police"
numberValue10 = "selectofficers"
rageUiCall13 = RageUI
rageUiCall13 = rageUiCall13.CreateMenu
textValue17 = ""
textValue18 = "~b~Officers Involved"
rageUiCall14 = CMG
rageUiCall14 = rageUiCall14.getRageUIMenuWidth
rageUiCall14 = rageUiCall14()
rageUiCall15 = CMG
rageUiCall15 = rageUiCall15.getRageUIMenuHeight
rageUiCall15 = rageUiCall15()
textValue19 = "cmg_jobselectorui"
textValue20 = "metpd"
rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20 = rageUiCall13(textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20)
vector3Builder11(vector3Builder12, numberValue10, rageUiCall13, textValue17, textValue18, rageUiCall14, rageUiCall15, textValue19, textValue20)

-- === HELPER FUNCTION (decompiler name: vector3Builder11; parameters: none) ===
function vector3Builder11()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7
  arg1 = vector3Builder10
  if arg1 then
    return
  end
  arg1 = true
  vector3Builder10 = arg1
  arg1 = {}
  arg2 = pairs
  arg3 = vector3Builder8
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, numberValue11 in arg2, arg3, arg4, arg5 do
    if numberValue11 then
      workValue7 = tonumber
      cmgCall7 = arg6
      workValue7 = workValue7(cmgCall7)
      if workValue7 then
        cmgCall7 = #arg1
        cmgCall7 = cmgCall7 + 1
        arg1[cmgCall7] = workValue7
      end
    end
  end
  arg2 = TriggerServerEvent
  arg3 = "6710146a17"
  arg4 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6710146a17".
  arg2(arg3, arg4)
  arg2 = RageUI
  arg2 = arg2.CloseAll
  arg2()
end
vector3Builder12 = RageUI
vector3Builder12 = vector3Builder12.CreateWhile
numberValue10 = 1.0
rageUiCall13 = RMenu
textValue17 = rageUiCall13
rageUiCall13 = rageUiCall13.Get
textValue18 = "police"
rageUiCall14 = "selectofficers"
-- Beginner: result below is menu.
rageUiCall13 = rageUiCall13(textValue17, textValue18, rageUiCall14)
textValue17 = nil

-- === HELPER FUNCTION (decompiler name: textValue18; parameters: none) ===
function textValue18()
  local arg1, arg2, arg3, arg4, arg5, arg6, numberValue11
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "police"
  arg5 = "selectofficers"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, cmgCall2, textValue11, flag14, textValue15, modelHash, numberValue12, numberValue14, flag19, cmgCall8, rageUiCall, cmgCall, workValue2, workValue3, dataTable, workValue4
    arg12 = RageUI
    arg12 = arg12.Separator
    cmgCall2 = string
    cmgCall2 = cmgCall2.format
    textValue11 = "~y~Pick up to %s helping officers to share XP / arrests with."
    flag14 = vector3Builder9
    cmgCall2, textValue11, flag14, textValue15, modelHash, numberValue12, numberValue14, flag19, cmgCall8, rageUiCall, cmgCall, workValue2, workValue3, dataTable, workValue4 = cmgCall2(textValue11, flag14)
    arg12(cmgCall2, textValue11, flag14, textValue15, modelHash, numberValue12, numberValue14, flag19, cmgCall8, rageUiCall, cmgCall, workValue2, workValue3, dataTable, workValue4)
    arg12 = 0
    cmgCall2 = pairs
    textValue11 = vector3Builder8
    cmgCall2, textValue11, flag14, textValue15 = cmgCall2(textValue11)
    for modelHash, numberValue12 in cmgCall2, textValue11, flag14, textValue15 do
      if numberValue12 then
        arg12 = arg12 + 1
      end
    end
    cmgCall2 = pairs
    textValue11 = vector3Builder8
    cmgCall2, textValue11, flag14, textValue15 = cmgCall2(textValue11)
    for modelHash, numberValue12 in cmgCall2, textValue11, flag14, textValue15 do
      numberValue14 = GetPlayerFromServerId
      flag19 = tonumber
      cmgCall8 = modelHash
      flag19 = flag19(cmgCall8)
      if not flag19 then
        flag19 = 0
      end
      -- Beginner: result below is playerIndex.
      numberValue14 = numberValue14(flag19)
      if numberValue14 >= 0 then
        flag19 = vector3Builder9
        flag19 = arg12 >= flag19 and flag19
        cmgCall8 = string
        cmgCall8 = cmgCall8.format
        rageUiCall = "%s [%s]"
        cmgCall = CMG
        cmgCall = cmgCall.getPlayerName
        workValue2 = numberValue14
        cmgCall = cmgCall(workValue2)
        workValue2 = modelHash
        cmgCall8 = cmgCall8(rageUiCall, cmgCall, workValue2)
        rageUiCall = RageUI
        rageUiCall = rageUiCall.Checkbox
        cmgCall = cmgCall8
        workValue2 = ""
        workValue3 = numberValue12
        dataTable = {}
        workValue4 = not flag19
        dataTable.Enabled = workValue4

        -- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg13, arg22, arg32, arg42) ===
        function workValue4(arg13, arg22, arg32, arg42)
          local textValue16, dataTable5
          textValue16 = numberValue12
          if arg42 ~= textValue16 then
            if arg42 then
              textValue16 = arg12
              dataTable5 = vector3Builder9
              if textValue16 >= dataTable5 then
                return
              end
            end
            dataTable5 = modelHash
            textValue16 = vector3Builder8
            textValue16[dataTable5] = arg42
          end
        end
        -- Beginner: Draw a RageUI checkbox.
        rageUiCall(cmgCall, workValue2, workValue3, dataTable, workValue4)
      end
    end
    cmgCall2 = arg12 + 1
    textValue11 = string
    textValue11 = textValue11.format
    flag14 = "Confirm, XP/arrests split %s ways."
    textValue15 = cmgCall2
    textValue11 = textValue11(flag14, textValue15)
    flag14 = RageUI
    flag14 = flag14.ButtonWithStyle
    textValue15 = "~g~Confirm"
    modelHash = textValue11
    numberValue12 = {}
    numberValue12.RightLabel = "\226\134\146\226\134\146\226\134\146"
    numberValue14 = true

    -- === HELPER FUNCTION (decompiler name: flag19; parameters: arg13, arg22, arg32) ===
    function flag19(arg13, arg22, arg32)
      local arg42
      if arg32 then
        arg42 = vector3Builder11
        arg42()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    flag14(textValue15, modelHash, numberValue12, numberValue14, flag19)
    flag14 = RageUI
    flag14 = flag14.ButtonWithStyle
    textValue15 = "~b~Skip, keep XP to myself"
    modelHash = "Award full XP and arrest stat to you only."
    numberValue12 = {}
    numberValue12.RightLabel = "\226\134\146\226\134\146\226\134\146"
    numberValue14 = true

    -- === HELPER FUNCTION (decompiler name: flag19; parameters: arg13, arg22, arg32) ===
    function flag19(arg13, arg22, arg32)
      local arg42, textValue16, dataTable5, numberValue13, flag18, workValue8, workValue10
      if arg32 then
        arg42 = pairs
        textValue16 = vector3Builder8
        arg42, textValue16, dataTable5, numberValue13 = arg42(textValue16)
        for flag18 in arg42, textValue16, dataTable5, numberValue13 do
          workValue8 = vector3Builder8
          workValue8[flag18] = false
        end
        arg42 = vector3Builder11
        arg42()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    flag14(textValue15, modelHash, numberValue12, numberValue14, flag19)
  end

  -- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
  function numberValue11()
    local arg12, cmgCall2
  end
  arg1(arg2, arg3, arg4, arg5, arg6, numberValue11)
end
vector3Builder12(numberValue10, rageUiCall13, textValue17, textValue18)
vector3Builder12 = RegisterNetEvent
numberValue10 = "0d3ff1e19d"
-- Beginner: this function handles network event "0d3ff1e19d".

-- === HELPER FUNCTION (decompiler name: rageUiCall13; parameters: arg1, arg2) ===
function rageUiCall13(arg1, arg2)
  local arg3, arg4, arg5, arg6, numberValue11, workValue7, cmgCall7, workValue9, workValue
  arg3 = {}
  vector3Builder8 = arg3
  arg3 = type
  arg4 = arg1
  arg3 = arg3(arg4)
  if "table" == arg3 then
    arg3 = pairs
    arg4 = arg1
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for numberValue11, workValue7 in arg3, arg4, arg5, arg6 do
      cmgCall7 = tonumber
      workValue9 = workValue7
      cmgCall7 = cmgCall7(workValue9)
      if cmgCall7 then
        workValue9 = tostring
        workValue = cmgCall7
        workValue9 = workValue9(workValue)
        workValue = vector3Builder8
        workValue[workValue9] = false
      end
    end
  end
  arg3 = tonumber
  arg4 = arg2
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = 3
  end
  vector3Builder9 = arg3
  arg3 = false
  vector3Builder10 = arg3
  arg3 = RageUI
  arg3 = arg3.Visible
  arg4 = RMenu
  arg5 = arg4
  arg4 = arg4.Get
  arg6 = "police"
  numberValue11 = "selectofficers"
  -- Beginner: result below is menu.
  arg4 = arg4(arg5, arg6, numberValue11)
  arg5 = true
  arg3(arg4, arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0d3ff1e19d".
vector3Builder12(numberValue10, rageUiCall13)
