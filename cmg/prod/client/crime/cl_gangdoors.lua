--[[
    LEVEL 1 BEGINNER GUIDE — Gangdoors
    =======================================

    File: cmg/prod/client/crime/cl_gangdoors.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Gangdoors feature.

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
local dataTable, dataTable2, dataTable4, dataTable5, numberValue14, workValue12, workValue13, workValue15, workValue16, workValue18, workValue2, workValue4, workValue5, eventRegistration, eventRegistration2, textValue2, workValue6, textValue3, workValue7, rageUiCall, textValue5, textValue6, rageUiCall2, textValue7, textValue8, rageUiCall3, rageUiCall4
dataTable = {}
dataTable2 = {}
dataTable4 = {}
dataTable5 = {}
numberValue14 = 0

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: arg1, arg2, arg3) ===
function workValue12(arg1, arg2, arg3)
  local threadCall, workValue11
  threadCall = Citizen
  threadCall = threadCall.CreateThread

  -- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
  function workValue11()
    local playerPed, flag8, gameTime, textValue9, textValue10, gameTime2, workValue14, numberValue18, numberValue19, numberValue20, flag, flag2, coords, position, flag6
    playerPed = arg1.areaName
    flag8 = arg1.doorName
    playerPed = playerPed .. flag8
    flag8 = dataTable4
    gameTime = arg2
    flag8[playerPed] = gameTime
    flag8 = true
    gameTime = arg2
    if 4 == gameTime then
      flag8 = false
      gameTime = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      gameTime = gameTime()
      textValue9 = gameTime
      textValue10 = GetGamePool
      gameTime2 = "CPed"
      textValue10 = textValue10(gameTime2)
      while true do
        gameTime2 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        gameTime2 = gameTime2()
        workValue14 = gameTime2 - gameTime
        numberValue18 = 5000
        if workValue14 > numberValue18 then
          break
        end
        workValue14 = gameTime2 - textValue9
        numberValue18 = 2000
        if workValue14 > numberValue18 then
          flag8 = true
          break
        else
          numberValue18 = arg1.areaName
          workValue14 = dataTable
          workValue14 = workValue14[numberValue18]
          numberValue18 = arg1.doorName
          workValue14 = workValue14[numberValue18]
          numberValue18 = arg2
          if workValue14 == numberValue18 then
            break
          end
          workValue14 = dataTable4
          workValue14 = workValue14[playerPed]
          numberValue18 = arg2
          if workValue14 ~= numberValue18 then
            break
          end
        end
        workValue14 = pairs
        numberValue18 = textValue10
        workValue14, numberValue18, numberValue19, numberValue20 = workValue14(numberValue18)
        for flag, flag2 in workValue14, numberValue18, numberValue19, numberValue20 do
          coords = GetEntityCoords
          position = flag2
          flag6 = true
          -- Beginner: result below is entityCoords.
          coords = coords(position, flag6)
          position = arg1.doorInfo
          position = position.position
          coords = coords - position
          coords = #coords
          position = 0.75
          if coords < position then
            textValue9 = gameTime2
            break
          end
        end
        workValue14 = Citizen
        workValue14 = workValue14.Wait
        numberValue18 = 0
        workValue14(numberValue18)
      end
    end
    gameTime = dataTable4
    gameTime[playerPed] = nil
    if flag8 then
      gameTime = arg3
      gameTime()
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  threadCall(workValue11)
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local playerPed, flag8, gameTime, textValue9, textValue10, gameTime2, workValue14, numberValue18, numberValue19, numberValue20, flag, flag2, coords
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    flag8 = CMG
    flag8 = flag8.loadAnimDict
    gameTime = "anim@heists@keycard@"
    -- Beginner: Load a GTA animation dictionary before using it.
    flag8(gameTime)
    flag8 = TaskPlayAnim
    gameTime = playerPed
    textValue9 = "anim@heists@keycard@"
    textValue10 = "exit"
    gameTime2 = 5.0
    workValue14 = 1.0
    numberValue18 = -1
    numberValue19 = 48
    numberValue20 = 0
    flag = false
    flag2 = false
    coords = false
    -- Beginner: Play an animation on a ped.
    flag8(gameTime, textValue9, textValue10, gameTime2, workValue14, numberValue18, numberValue19, numberValue20, flag, flag2, coords)
    flag8 = RemoveAnimDict
    gameTime = "anim@heists@keycard@"
    flag8(gameTime)
    flag8 = Citizen
    flag8 = flag8.Wait
    gameTime = 1200
    flag8(gameTime)
    flag8 = ClearPedTasks
    gameTime = playerPed
    flag8(gameTime)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3, threadCall, workValue11, numberValue16, cmgCall2, numberValue17, gameTime3, cmgCall3, textValue
  arg2 = arg1.linkedToHouses
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.isInHouse
  arg2, arg3 = arg2()
  if arg2 then
    threadCall = pairs
    workValue11 = arg1.linkedToHouses
    threadCall, workValue11, numberValue16, cmgCall2 = threadCall(workValue11)
    for numberValue17, gameTime3 in threadCall, workValue11, numberValue16, cmgCall2 do
      if gameTime3 == arg3 then
        cmgCall3 = true
        return cmgCall3
      end
    end
  end
  threadCall = pairs
  workValue11 = arg1.linkedToHouses
  threadCall, workValue11, numberValue16, cmgCall2 = threadCall(workValue11)
  for numberValue17, gameTime3 in threadCall, workValue11, numberValue16, cmgCall2 do
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.clientHasOutsideHouseDoorAccess
    textValue = gameTime3
    cmgCall3 = cmgCall3(textValue)
    if cmgCall3 then
      cmgCall3 = true
      return cmgCall3
    end
  end
  threadCall = false
  return threadCall
end

-- === HELPER FUNCTION (decompiler name: workValue16; parameters: arg1) ===
function workValue16(arg1)
  local arg2, arg3, threadCall, workValue11, numberValue16, cmgCall2, numberValue17, gameTime3
  arg3 = arg1.areaName
  arg2 = dataTable2
  arg2 = arg2[arg3]
  arg2 = arg2[2]
  if arg2 then
    arg2 = true
    return arg2
  end
  arg2 = arg1.doorInfo
  arg2 = arg2.otherPermission
  if arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = arg1.doorInfo
    arg3 = arg3.otherPermission
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = true
      return arg2
    end
  end
  arg3 = arg1.areaName
  arg2 = dataTable5
  arg2 = arg2[arg3]
  if arg2 then
    arg3 = pairs
    threadCall = arg2
    arg3, threadCall, workValue11, numberValue16 = arg3(threadCall)
    for cmgCall2, numberValue17 in arg3, threadCall, workValue11, numberValue16 do
      gameTime3 = numberValue17
      gameTime3 = gameTime3()
      if gameTime3 then
        gameTime3 = true
        return gameTime3
      end
    end
  end
  arg3 = false
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1) ===
function workValue18(arg1)
  local arg2, arg3
  arg2 = workValue16
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.isStaffedOnClient
    arg2 = arg2()
    if not arg2 then
      arg2 = workValue15
      arg3 = arg1.areaInfo
      arg2 = arg2(arg3)
    end
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3, threadCall, workValue11, numberValue16, cmgCall2
  arg2 = workValue18
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = arg1.doorInfo
    arg2 = arg2.automaticGate
    if arg2 then
      goto flow_label_11
    end
  end
  return
  ::flow_label_11::
  arg3 = arg1.areaName
  arg2 = dataTable
  arg2 = arg2[arg3]
  if not arg2 then
    return
  end
  arg3 = arg1.doorName
  arg3 = arg2[arg3]
  if 5 == arg3 then
    threadCall = workValue12
    workValue11 = arg1
    numberValue16 = 4

    -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
    function cmgCall2()
      local playerPed, flag8, gameTime, textValue9, textValue10
      playerPed = TriggerServerEvent
      flag8 = "580c03ccaf"
      gameTime = arg1.areaName
      textValue9 = arg1.doorName
      textValue10 = 4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "580c03ccaf".
      playerPed(flag8, gameTime, textValue9, textValue10)
    end
    threadCall(workValue11, numberValue16, cmgCall2)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local arg2, arg3, threadCall, workValue11, numberValue16, cmgCall2, numberValue17, gameTime3, cmgCall3, textValue, numberValue, numberValue2, flag4
  arg3 = arg1.areaName
  arg2 = dataTable
  arg2 = arg2[arg3]
  if not arg2 then
    return
  end
  arg3 = arg1.doorName
  arg3 = arg2[arg3]
  if not arg3 then
    return
  end
  threadCall = arg1.areaName
  workValue11 = arg1.doorName
  threadCall = threadCall .. workValue11
  workValue11 = dataTable4
  workValue11 = workValue11[threadCall]
  numberValue16 = workValue18
  cmgCall2 = arg1
  numberValue16 = numberValue16(cmgCall2)
  if numberValue16 then
    cmgCall2 = arg1.doorInfo
    cmgCall2 = cmgCall2.automaticGate
    if cmgCall2 then
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      cmgCall2 = cmgCall2()
      if 0 ~= cmgCall2 then
        numberValue17 = workValue11 or numberValue17
        if not workValue11 then
          numberValue17 = arg3
        end
        if 4 == numberValue17 then
          gameTime3 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          gameTime3 = gameTime3()
          cmgCall3 = numberValue14
          cmgCall3 = gameTime3 - cmgCall3
          textValue = 200
          if cmgCall3 > textValue then
            cmgCall3 = TriggerServerEvent
            textValue = "580c03ccaf"
            numberValue = arg1.areaName
            numberValue2 = arg1.doorName
            flag4 = 5
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "580c03ccaf".
            cmgCall3(textValue, numberValue, numberValue2, flag4)
            numberValue14 = gameTime3
          end
        end
      end
    end
  end
  cmgCall2 = arg1.distance
  numberValue17 = 1.5
  if cmgCall2 > numberValue17 then
    return
  end
  cmgCall2 = ""
  if numberValue16 then
    cmgCall2 = " (E to toggle lock)"
  end
  numberValue17 = arg1.doorInfo
  numberValue17 = numberValue17.hidden
  if not numberValue17 then
    if workValue11 then
      numberValue17 = CMG
      numberValue17 = numberValue17.DrawText3D
      gameTime3 = arg1.doorInfo
      gameTime3 = gameTime3.position
      cmgCall3 = "\226\143\179"
      textValue = cmgCall2
      cmgCall3 = cmgCall3 .. textValue
      textValue = 0.45
      numberValue = 4
      numberValue17(gameTime3, cmgCall3, textValue, numberValue)
    elseif 5 == arg3 or 0 == arg3 then
      numberValue17 = CMG
      numberValue17 = numberValue17.DrawText3D
      gameTime3 = arg1.doorInfo
      gameTime3 = gameTime3.position
      cmgCall3 = "\240\159\148\147"
      textValue = cmgCall2
      cmgCall3 = cmgCall3 .. textValue
      textValue = 0.45
      numberValue = 4
      numberValue17(gameTime3, cmgCall3, textValue, numberValue)
    else
      numberValue17 = CMG
      numberValue17 = numberValue17.DrawText3D
      gameTime3 = arg1.doorInfo
      gameTime3 = gameTime3.position
      cmgCall3 = "\240\159\148\146"
      textValue = cmgCall2
      cmgCall3 = cmgCall3 .. textValue
      textValue = 0.45
      numberValue = 4
      numberValue17(gameTime3, cmgCall3, textValue, numberValue)
    end
  end
  numberValue17 = IsControlJustPressed
  gameTime3 = 0
  cmgCall3 = 38
  numberValue17 = numberValue17(gameTime3, cmgCall3)
  if numberValue17 and numberValue16 then
    numberValue17 = CMG
    numberValue17 = numberValue17.setIgnoreRadialInputThisFrame
    numberValue17()
    numberValue17 = CMG
    numberValue17 = numberValue17.getSelectedEntity
    numberValue17, gameTime3 = numberValue17()
    if not numberValue17 or 1 ~= gameTime3 then
      cmgCall3 = workValue11 or cmgCall3
      if not workValue11 then
        cmgCall3 = arg3
      end
      if 4 == cmgCall3 then
        cmgCall3 = 5
        if cmgCall3 then
          goto flow_label_129
        end
      end
      cmgCall3 = 4
      ::flow_label_129::
      textValue = workValue12
      numberValue = arg1
      numberValue2 = cmgCall3

      -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
      function flag4()
        local playerPed, flag8, gameTime, textValue9, textValue10
        playerPed = TriggerServerEvent
        flag8 = "580c03ccaf"
        gameTime = arg1.areaName
        textValue9 = arg1.doorName
        textValue10 = cmgCall3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "580c03ccaf".
        playerPed(flag8, gameTime, textValue9, textValue10)
      end
      textValue(numberValue, numberValue2, flag4)
      textValue = workValue13
      textValue()
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1) ===
function workValue5(arg1)
  local arg2, arg3, threadCall
  arg2 = TriggerServerEvent
  arg3 = "977dcc3a52"
  threadCall = arg1.areaName
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "977dcc3a52".
  arg2(arg3, threadCall)
end
eventRegistration = RegisterNetEvent
eventRegistration2 = "ff4be674af"
-- Beginner: this function handles network event "ff4be674af".

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2) ===
function textValue2(arg1, arg2)
  local arg3, threadCall, workValue11, numberValue16, cmgCall2, numberValue17, gameTime3, cmgCall3, textValue, numberValue, numberValue2, flag4, flag5, modelValue, cmgCall, textValue4, flag7, stringHelper, numberValue8, flag9, flag10, flag11, dataTable3
  dataTable2 = arg2
  arg3 = pairs
  threadCall = arg1
  arg3, threadCall, workValue11, numberValue16 = arg3(threadCall)
  for cmgCall2, numberValue17 in arg3, threadCall, workValue11, numberValue16 do
    gameTime3 = dataTable
    cmgCall3 = {}
    gameTime3[cmgCall2] = cmgCall3
    gameTime3 = pairs
    cmgCall3 = numberValue17.locations
    gameTime3, cmgCall3, textValue, numberValue = gameTime3(cmgCall3)
    for numberValue2, flag4 in gameTime3, cmgCall3, textValue, numberValue do
      flag5 = flag4.position
      modelValue = flag4.modelPosition
      if modelValue then
        flag5 = flag4.modelPosition
      end
      modelValue = dataTable
      modelValue = modelValue[cmgCall2]
      modelValue[numberValue2] = 4
      modelValue = AddDoorToSystem
      cmgCall = numberValue2
      textValue4 = flag4.model
      flag7 = flag5.x
      stringHelper = flag5.y
      numberValue8 = flag5.z
      flag9 = false
      flag10 = false
      flag11 = false
      modelValue(cmgCall, textValue4, flag7, stringHelper, numberValue8, flag9, flag10, flag11)
      modelValue = DoorSystemSetDoorState
      cmgCall = numberValue2
      textValue4 = 4
      flag7 = false
      stringHelper = false
      modelValue(cmgCall, textValue4, flag7, stringHelper)
      modelValue = flag4.automaticGate
      if modelValue then
        modelValue = 10.0
        if modelValue then
          goto flow_label_45
        end
      end
      modelValue = 1.5
      ::flow_label_45::
      cmgCall = CMG
      cmgCall = cmgCall.createArea
      textValue4 = "gangDoor_"
      flag7 = numberValue2
      textValue4 = textValue4 .. flag7
      flag7 = flag4.position
      stringHelper = modelValue
      numberValue8 = 5.0

      -- === HELPER FUNCTION (decompiler name: flag9; parameters: none) ===
      function flag9()
        local playerPed, flag8
      end
      flag10 = workValue2
      flag11 = workValue4
      dataTable3 = {}
      dataTable3.areaName = cmgCall2
      dataTable3.doorName = numberValue2
      dataTable3.doorInfo = flag4
      dataTable3.areaInfo = numberValue17
      -- Beginner: Create an interaction area around a world position.
      cmgCall(textValue4, flag7, stringHelper, numberValue8, flag9, flag10, flag11, dataTable3)
    end
    gameTime3 = CMG
    gameTime3 = gameTime3.createArea
    cmgCall3 = "gangDoorsEnterArea_"
    textValue = cmgCall2
    cmgCall3 = cmgCall3 .. textValue
    textValue = numberValue17.centerLocation
    numberValue = numberValue17.eventRadius
    numberValue2 = 100.0
    flag4 = workValue5

    -- === HELPER FUNCTION (decompiler name: flag5; parameters: none) ===
    function flag5()
      local playerPed, flag8
    end

    -- === HELPER FUNCTION: modelValue() ===
    function modelValue()
      local playerPed, flag8
    end
    cmgCall = {}
    cmgCall.areaName = cmgCall2
    gameTime3(cmgCall3, textValue, numberValue, numberValue2, flag4, flag5, modelValue, cmgCall)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ff4be674af".
eventRegistration(eventRegistration2, textValue2)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2) ===
function eventRegistration(arg1, arg2)
  local arg3, threadCall, workValue11, numberValue16, cmgCall2
  arg3 = DoorSystemSetDoorState
  threadCall = arg1
  workValue11 = arg2
  numberValue16 = false
  cmgCall2 = false
  arg3(threadCall, workValue11, numberValue16, cmgCall2)
  if 0 == arg2 or 5 == arg2 then
    arg3 = DoorSystemSetHoldOpen
    threadCall = arg1
    workValue11 = true
    arg3(threadCall, workValue11)
  else
    arg3 = DoorSystemSetHoldOpen
    threadCall = arg1
    workValue11 = false
    arg3(threadCall, workValue11)
  end
end
eventRegistration2 = RegisterNetEvent
textValue2 = "b5e4a21f88"
-- Beginner: this function handles network event "b5e4a21f88".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3, threadCall, workValue11, numberValue16, cmgCall2, numberValue17, gameTime3, cmgCall3, textValue
  arg3 = pairs
  threadCall = arg2
  arg3, threadCall, workValue11, numberValue16 = arg3(threadCall)
  for cmgCall2, numberValue17 in arg3, threadCall, workValue11, numberValue16 do
    gameTime3 = eventRegistration
    cmgCall3 = cmgCall2
    textValue = numberValue17
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: false.
    gameTime3(cmgCall3, textValue)
  end
  arg3 = dataTable
  arg3[arg1] = arg2
end
eventRegistration2(textValue2, workValue6)
eventRegistration2 = RegisterNetEvent
textValue2 = "580c03ccaf"
-- Beginner: this function handles network event "580c03ccaf".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2, arg3) ===
function workValue6(arg1, arg2, arg3)
  local threadCall, workValue11, numberValue16
  threadCall = eventRegistration
  workValue11 = arg2
  numberValue16 = arg3
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  threadCall(workValue11, numberValue16)
  threadCall = dataTable
  threadCall = threadCall[arg1]
  threadCall[arg2] = arg3
end
eventRegistration2(textValue2, workValue6)
eventRegistration2 = {}
textValue2 = 0
workValue6 = RegisterCommand
textValue3 = "dooreditor"
-- Beginner: this function is the command handler for "dooreditor".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, threadCall, workValue11
  arg1 = CMG
  arg1 = arg1.isStaffedOnClient
  arg1 = arg1()
  if not arg1 then
    arg1 = notify
    arg2 = "~r~You must have staff'd on to use this command."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
    return
  end
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  threadCall = "dooreditor"
  workValue11 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, threadCall, workValue11)
  arg3 = true
  arg1(arg2, arg3)
end
rageUiCall = false
-- Beginner: Register a chat/console command. Event/command: "dooreditor".
workValue6(textValue3, workValue7, rageUiCall)

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2
  arg2 = false
  return arg2
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2, arg3, threadCall, workValue11, numberValue16, cmgCall2, numberValue17, gameTime3, cmgCall3, textValue, numberValue, numberValue2, flag4, flag5, modelValue
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
  arg1 = 0
  arg2 = 1.5
  arg3 = vector3
  threadCall = 0.0
  workValue11 = 0.0
  numberValue16 = 0.0
  arg3 = arg3(threadCall, workValue11, numberValue16)
  threadCall = pairs
  workValue11 = GetGamePool
  numberValue16 = "CObject"
  workValue11, numberValue16, cmgCall2, numberValue17, gameTime3, cmgCall3, textValue, numberValue, numberValue2, flag4, flag5, modelValue = workValue11(numberValue16)
  threadCall, workValue11, numberValue16, cmgCall2 = threadCall(workValue11, numberValue16, cmgCall2, numberValue17, gameTime3, cmgCall3, textValue, numberValue, numberValue2, flag4, flag5, modelValue)
  for numberValue17, gameTime3 in threadCall, workValue11, numberValue16, cmgCall2 do
    cmgCall3 = GetEntityCoords
    textValue = gameTime3
    numberValue = true
    -- Beginner: result below is entityCoords.
    cmgCall3 = cmgCall3(textValue, numberValue)
    textValue = workValue6
    numberValue = cmgCall3
    textValue = textValue(numberValue)
    if not textValue then
      textValue = CMG
      textValue = textValue.getPlayerCoords
      -- Beginner: result below is playerCoords.
      textValue = textValue()
      textValue = textValue - cmgCall3
      textValue = #textValue
      if arg2 > textValue then
        numberValue = GetEntityAttachedTo
        numberValue2 = gameTime3
        numberValue = numberValue(numberValue2)
        if 0 == numberValue then
          arg1 = gameTime3
          arg2 = textValue
          arg3 = cmgCall3
        end
      end
    else
      textValue = notify
      numberValue = "~r~Door already exists here"
      -- Beginner: Show a notification to the player.
      textValue(numberValue)
    end
  end
  if 0 == arg1 then
    threadCall = notify
    workValue11 = "~r~There is not a door nearby."
    threadCall(workValue11)
    return
  end
  threadCall = pairs
  workValue11 = eventRegistration2
  threadCall, workValue11, numberValue16, cmgCall2 = threadCall(workValue11)
  for numberValue17, gameTime3 in threadCall, workValue11, numberValue16, cmgCall2 do
    cmgCall3 = gameTime3.modelPosition
    cmgCall3 = cmgCall3 - arg3
    cmgCall3 = #cmgCall3
    textValue = 0.1
    if cmgCall3 < textValue then
      cmgCall3 = notify
      textValue = "~r~The closest door has already been edited."
      -- Beginner: Show a notification to the player.
      cmgCall3(textValue)
      return
    end
  end
  threadCall = DoorSystemGetActive
  threadCall = threadCall()
  threadCall = #threadCall
  workValue11 = GetHashKey
  numberValue16 = string
  numberValue16 = numberValue16.format
  cmgCall2 = "DOOR_EDITOR_%s"
  numberValue17 = textValue2
  numberValue16, cmgCall2, numberValue17, gameTime3, cmgCall3, textValue, numberValue, numberValue2, flag4, flag5, modelValue = numberValue16(cmgCall2, numberValue17)
  -- Beginner: result below is hash.
  workValue11 = workValue11(numberValue16, cmgCall2, numberValue17, gameTime3, cmgCall3, textValue, numberValue, numberValue2, flag4, flag5, modelValue)
  numberValue16 = textValue2
  numberValue16 = numberValue16 + 1
  textValue2 = numberValue16
  numberValue16 = GetEntityModel
  cmgCall2 = arg1
  -- Beginner: result below is modelHash.
  numberValue16 = numberValue16(cmgCall2)
  cmgCall2 = AddDoorToSystem
  numberValue17 = workValue11
  gameTime3 = numberValue16
  cmgCall3 = arg3.x
  textValue = arg3.y
  numberValue = arg3.z
  numberValue2 = false
  flag4 = false
  flag5 = false
  cmgCall2(numberValue17, gameTime3, cmgCall3, textValue, numberValue, numberValue2, flag4, flag5)
  cmgCall2 = DoorSystemGetActive
  cmgCall2 = cmgCall2()
  cmgCall2 = #cmgCall2
  if cmgCall2 == threadCall then
    cmgCall2 = notify
    numberValue17 = "~r~The door you selected is not a valid door."
    -- Beginner: Show a notification to the player.
    cmgCall2(numberValue17)
    cmgCall2 = RemoveDoorFromSystem
    numberValue17 = workValue11
    cmgCall2(numberValue17)
    return
  end
  cmgCall2 = DoorSystemSetDoorState
  numberValue17 = workValue11
  gameTime3 = 4
  cmgCall3 = false
  textValue = false
  cmgCall2(numberValue17, gameTime3, cmgCall3, textValue)
  cmgCall2 = DoorSystemSetHoldOpen
  numberValue17 = workValue11
  gameTime3 = false
  cmgCall2(numberValue17, gameTime3)
  cmgCall2 = GetModelDimensions
  numberValue17 = numberValue16
  cmgCall2, numberValue17 = cmgCall2(numberValue17)
  gameTime3 = numberValue17 + cmgCall2
  gameTime3 = gameTime3 / 2.0
  cmgCall3 = GetOffsetFromEntityInWorldCoords
  textValue = arg1
  numberValue = gameTime3.x
  numberValue2 = gameTime3.y
  flag4 = gameTime3.z
  cmgCall3 = cmgCall3(textValue, numberValue, numberValue2, flag4)
  textValue = RemoveDoorFromSystem
  numberValue = workValue11
  textValue(numberValue)
  textValue = SetEntityDrawOutline
  numberValue = arg1
  numberValue2 = true
  textValue(numberValue, numberValue2)
  textValue = AddTextEntry
  numberValue = "DOOR_EDITOR_CONFIRM"
  numberValue2 = [[
Is the highlighted object the door you want?
~INPUT_FRONTEND_ACCEPT~ Accept
~INPUT_FRONTEND_CANCEL~ Deny]]
  textValue(numberValue, numberValue2)
  while true do
    textValue = DisableControlAction
    numberValue = 0
    numberValue2 = 201
    flag4 = true
    textValue(numberValue, numberValue2, flag4)
    textValue = DisableControlAction
    numberValue = 0
    numberValue2 = 202
    flag4 = true
    textValue(numberValue, numberValue2, flag4)
    textValue = IsDisabledControlJustPressed
    numberValue = 0
    numberValue2 = 201
    textValue = textValue(numberValue, numberValue2)
    if textValue then
      break
    end
    textValue = IsDisabledControlJustPressed
    numberValue = 0
    numberValue2 = 202
    textValue = textValue(numberValue, numberValue2)
    if textValue then
      textValue = SetEntityDrawOutline
      numberValue = arg1
      numberValue2 = false
      textValue(numberValue, numberValue2)
      textValue = notify
      numberValue = "~r~Door editing cancelled by user."
      -- Beginner: Show a notification to the player.
      textValue(numberValue)
      return
    end
    textValue = DisplayHelpTextThisFrame
    numberValue = "DOOR_EDITOR_CONFIRM"
    numberValue2 = false
    textValue(numberValue, numberValue2)
    textValue = Citizen
    textValue = textValue.Wait
    numberValue = 0
    textValue(numberValue)
  end
  textValue = notify
  numberValue = "~g~Door added successfully to the list!"
  -- Beginner: Show a notification to the player.
  textValue(numberValue)
  textValue = table
  textValue = textValue.insert
  numberValue = eventRegistration2
  numberValue2 = {}
  flag4 = GetEntityArchetypeName
  flag5 = arg1
  flag4 = flag4(flag5)
  if not flag4 then
    flag4 = tostring
    flag5 = GetEntityModel
    modelValue = arg1
    flag5, modelValue = flag5(modelValue)
    flag4 = flag4(flag5, modelValue)
  end
  numberValue2.model = flag4
  numberValue2.position = cmgCall3
  flag4 = GetEntityCoords
  flag5 = arg1
  modelValue = true
  -- Beginner: result below is entityCoords.
  flag4 = flag4(flag5, modelValue)
  numberValue2.modelPosition = flag4
  textValue(numberValue, numberValue2)
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, threadCall, workValue11, numberValue16, cmgCall2, numberValue17, gameTime3, cmgCall3, textValue, numberValue, numberValue2, flag4, flag5, modelValue, cmgCall, textValue4, flag7, stringHelper, numberValue8, flag9, flag10
  arg1 = ""
  arg2 = pairs
  arg3 = eventRegistration2
  arg2, arg3, threadCall, workValue11 = arg2(arg3)
  for numberValue16, cmgCall2 in arg2, arg3, threadCall, workValue11 do
    numberValue17 = arg1
    gameTime3 = "{position = vector3("
    cmgCall3 = tostring
    textValue = cmgCall2.position
    textValue = textValue.x
    cmgCall3 = cmgCall3(textValue)
    textValue = ","
    numberValue = tostring
    numberValue2 = cmgCall2.position
    numberValue2 = numberValue2.y
    numberValue = numberValue(numberValue2)
    numberValue2 = ", "
    flag4 = tostring
    flag5 = cmgCall2.position
    flag5 = flag5.z
    flag4 = flag4(flag5)
    flag5 = "), modelPosition = vector3("
    modelValue = tostring
    cmgCall = cmgCall2.modelPosition
    cmgCall = cmgCall.x
    modelValue = modelValue(cmgCall)
    cmgCall = ","
    textValue4 = tostring
    flag7 = cmgCall2.modelPosition
    flag7 = flag7.y
    textValue4 = textValue4(flag7)
    flag7 = ", "
    stringHelper = tostring
    numberValue8 = cmgCall2.modelPosition
    numberValue8 = numberValue8.z
    stringHelper = stringHelper(numberValue8)
    numberValue8 = "), model = `"
    flag9 = cmgCall2.model
    flag10 = "`},\n"
    numberValue17 = numberValue17 .. gameTime3 .. cmgCall3 .. textValue .. numberValue .. numberValue2 .. flag4 .. flag5 .. modelValue .. cmgCall .. textValue4 .. flag7 .. stringHelper .. numberValue8 .. flag9 .. flag10
    arg1 = numberValue17
  end
  return arg1
end
rageUiCall = RMenu
rageUiCall = rageUiCall.Add
textValue5 = "dooreditor"
textValue6 = "mainmenu"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue7 = "Door Editor"
textValue8 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
rageUiCall2, textValue7, textValue8, rageUiCall3, rageUiCall4 = rageUiCall2(textValue7, textValue8, rageUiCall3, rageUiCall4)
rageUiCall(textValue5, textValue6, rageUiCall2, textValue7, textValue8, rageUiCall3, rageUiCall4)
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
textValue5 = 1.0
textValue6 = RMenu
rageUiCall2 = textValue6
textValue6 = textValue6.Get
textValue7 = "dooreditor"
textValue8 = "mainmenu"
-- Beginner: result below is menu.
textValue6 = textValue6(rageUiCall2, textValue7, textValue8)
rageUiCall2 = nil

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, threadCall, workValue11, numberValue16
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  threadCall = "dooreditor"
  workValue11 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, threadCall, workValue11)
  arg3 = true
  threadCall = true
  workValue11 = true

  -- === HELPER FUNCTION (decompiler name: numberValue16; parameters: none) ===
  function numberValue16()
    local playerPed, flag8, gameTime, textValue9, textValue10, gameTime2, workValue14, numberValue18, numberValue19, numberValue20, flag, flag2, coords, position, flag6, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue9, numberValue10, numberValue11, numberValue12, flag12, flag13, numberValue13, flag14, workValue9, workValue10, flag15
    playerPed = RageUI
    playerPed = playerPed.Separator
    flag8 = "You have edited "
    gameTime = tostring
    textValue9 = eventRegistration2
    textValue9 = #textValue9
    gameTime = gameTime(textValue9)
    textValue9 = " doors!"
    flag8 = flag8 .. gameTime .. textValue9
    playerPed(flag8)
    playerPed = RageUI
    playerPed = playerPed.ButtonWithStyle
    flag8 = "~g~Add Door"
    gameTime = [[
Adds a door position to the list.
For double doors this will have to be done twice (left hand side & right hand side).

Try stand in the middle of the door when you do this as it will also be the location that the lock icon displays at.]]
    textValue9 = {}
    textValue9.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue10 = true

    -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
    function gameTime2(arg12, arg22, arg32)
      local rageUiCall5, numberValue15, flag16, textValue11, textValue12
      if arg32 then
        rageUiCall5 = textValue3
        rageUiCall5()
        rageUiCall5 = Citizen
        rageUiCall5 = rageUiCall5.Wait
        numberValue15 = 0
        rageUiCall5(numberValue15)
        rageUiCall5 = RageUI
        rageUiCall5 = rageUiCall5.Visible
        numberValue15 = RMenu
        flag16 = numberValue15
        numberValue15 = numberValue15.Get
        textValue11 = "dooreditor"
        textValue12 = "mainmenu"
        -- Beginner: result below is menu.
        numberValue15 = numberValue15(flag16, textValue11, textValue12)
        flag16 = true
        rageUiCall5(numberValue15, flag16)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    playerPed(flag8, gameTime, textValue9, textValue10, gameTime2)
    playerPed = RageUI
    playerPed = playerPed.ButtonWithStyle
    flag8 = "~y~Export Doors"
    gameTime = "Outputs a door list which should be sent to someone who can forward this to a CMG Developer."
    textValue9 = {}
    textValue9.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue10 = true

    -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
    function gameTime2(arg12, arg22, arg32)
      local rageUiCall5, numberValue15, flag16, textValue11
      if arg32 then
        rageUiCall5 = CMG
        rageUiCall5 = rageUiCall5.clientPrompt
        numberValue15 = "Exported (CTRL+A then CTRL+C)"
        flag16 = workValue7
        flag16 = flag16()

        -- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
        function textValue11()
          local workValue, workValue8
        end
        rageUiCall5(numberValue15, flag16, textValue11)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    playerPed(flag8, gameTime, textValue9, textValue10, gameTime2)
    playerPed = RageUI
    playerPed = playerPed.ButtonWithStyle
    flag8 = "~r~Remove All Doors"
    gameTime = "This doesn't have a confirmation button so don't press unless you mean it!"
    textValue9 = {}
    textValue9.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue10 = true

    -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
    function gameTime2(arg12, arg22, arg32)
      local rageUiCall5, numberValue15, flag16, textValue11, textValue12, workValue17, workValue19, workValue3, flag3
      if arg32 then
        rageUiCall5 = {}
        eventRegistration2 = rageUiCall5
        rageUiCall5 = pairs
        numberValue15 = GetGamePool
        flag16 = "CObject"
        numberValue15, flag16, textValue11, textValue12, workValue17, workValue19, workValue3, flag3 = numberValue15(flag16)
        rageUiCall5, numberValue15, flag16, textValue11 = rageUiCall5(numberValue15, flag16, textValue11, textValue12, workValue17, workValue19, workValue3, flag3)
        for textValue12, workValue17 in rageUiCall5, numberValue15, flag16, textValue11 do
          workValue19 = SetEntityDrawOutline
          workValue3 = workValue17
          flag3 = false
          workValue19(workValue3, flag3)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    playerPed(flag8, gameTime, textValue9, textValue10, gameTime2)
    playerPed = pairs
    flag8 = eventRegistration2
    playerPed, flag8, gameTime, textValue9 = playerPed(flag8)
    for textValue10, gameTime2 in playerPed, flag8, gameTime, textValue9 do
      workValue14 = DrawMarker
      numberValue18 = 28
      numberValue19 = gameTime2.position
      numberValue19 = numberValue19.x
      numberValue20 = gameTime2.position
      numberValue20 = numberValue20.y
      flag = gameTime2.position
      flag = flag.z
      flag2 = 0.0
      coords = 0.0
      position = 0.0
      flag6 = 0.0
      numberValue3 = 0.0
      numberValue4 = 0.0
      numberValue5 = 0.25
      numberValue6 = 0.25
      numberValue7 = 0.25
      numberValue9 = 255
      numberValue10 = 255
      numberValue11 = 255
      numberValue12 = 200
      flag12 = false
      flag13 = true
      numberValue13 = 2
      flag14 = false
      workValue9 = nil
      workValue10 = nil
      flag15 = false
      workValue14(numberValue18, numberValue19, numberValue20, flag, flag2, coords, position, flag6, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue9, numberValue10, numberValue11, numberValue12, flag12, flag13, numberValue13, flag14, workValue9, workValue10, flag15)
    end
  end
  arg1(arg2, arg3, threadCall, workValue11, numberValue16)
end
rageUiCall(textValue5, textValue6, rageUiCall2, textValue7)
rageUiCall = AddEventHandler
textValue5 = "b51e08118b"
-- Beginner: this function runs when client event "b51e08118b" fires.

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3, threadCall, workValue11, numberValue16, cmgCall2, numberValue17, gameTime3
  arg1 = pairs
  arg2 = dataTable2
  arg1, arg2, arg3, threadCall = arg1(arg2)
  for workValue11, numberValue16 in arg1, arg2, arg3, threadCall do
    cmgCall2 = dataTable2
    cmgCall2 = cmgCall2[workValue11]
    numberValue17 = CMG
    numberValue17 = numberValue17.hasClientPermission
    gameTime3 = numberValue16[1]
    numberValue17 = numberValue17(gameTime3)
    cmgCall2[2] = numberValue17
  end
end
-- Beginner: Register a client-side event handler. Event/command: "b51e08118b".
rageUiCall(textValue5, textValue6)
rageUiCall = CMG

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3, threadCall, workValue11
  arg3 = dataTable5
  arg3 = arg3[arg1]
  if not arg3 then
    arg3 = dataTable5
    threadCall = {}
    arg3[arg1] = threadCall
  end
  arg3 = table
  arg3 = arg3.insert
  threadCall = dataTable5
  threadCall = threadCall[arg1]
  workValue11 = arg2
  arg3(threadCall, workValue11)
end
rageUiCall.registerCanAccessGangDoorLocation = textValue5
