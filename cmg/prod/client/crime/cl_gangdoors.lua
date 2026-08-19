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
local dataCollection, dataCollection2, dataCollection4, dataCollection5, number14, workingValue12, workingValue13, workingValue15, workingValue16, workingValue18, workingValue2, workingValue4, workingValue5, eventHandler, eventHandler2, text2, workingValue6, text3, workingValue7, rageUiOperation, text5, text6, rageUiOperation2, text7, text8, rageUiOperation3, rageUiOperation4
dataCollection = {}
dataCollection2 = {}
dataCollection4 = {}
dataCollection5 = {}
number14 = 0

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1, localValue2, localValue3) ===
function workingValue12(localValue1, localValue2, localValue3)
  local backgroundThread, workingValue11
  backgroundThread = Citizen
  backgroundThread = backgroundThread.CreateThread

  -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
  function workingValue11()
    local playerPed, stateFlag8, gameTime, text9, text10, gameTime2, workingValue14, number18, number19, number20, stateFlag, stateFlag2, coords, position, stateFlag6
    playerPed = localValue1.areaName
    stateFlag8 = localValue1.doorName
    playerPed = playerPed .. stateFlag8
    stateFlag8 = dataCollection4
    gameTime = localValue2
    stateFlag8[playerPed] = gameTime
    stateFlag8 = true
    gameTime = localValue2
    if 4 == gameTime then
      stateFlag8 = false
      gameTime = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      gameTime = gameTime()
      text9 = gameTime
      text10 = GetGamePool
      gameTime2 = "CPed"
      text10 = text10(gameTime2)
      while true do
        gameTime2 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        gameTime2 = gameTime2()
        workingValue14 = gameTime2 - gameTime
        number18 = 5000
        if workingValue14 > number18 then
          break
        end
        workingValue14 = gameTime2 - text9
        number18 = 2000
        if workingValue14 > number18 then
          stateFlag8 = true
          break
        else
          number18 = localValue1.areaName
          workingValue14 = dataCollection
          workingValue14 = workingValue14[number18]
          number18 = localValue1.doorName
          workingValue14 = workingValue14[number18]
          number18 = localValue2
          if workingValue14 == number18 then
            break
          end
          workingValue14 = dataCollection4
          workingValue14 = workingValue14[playerPed]
          number18 = localValue2
          if workingValue14 ~= number18 then
            break
          end
        end
        workingValue14 = pairs
        number18 = text10
        workingValue14, number18, number19, number20 = workingValue14(number18)
        for stateFlag, stateFlag2 in workingValue14, number18, number19, number20 do
          coords = GetEntityCoords
          position = stateFlag2
          stateFlag6 = true
          -- Beginner: result below is entityCoords.
          coords = coords(position, stateFlag6)
          position = localValue1.doorInfo
          position = position.position
          coords = coords - position
          coords = #coords
          position = 0.75
          if coords < position then
            text9 = gameTime2
            break
          end
        end
        workingValue14 = Citizen
        workingValue14 = workingValue14.Wait
        number18 = 0
        workingValue14(number18)
      end
    end
    gameTime = dataCollection4
    gameTime[playerPed] = nil
    if stateFlag8 then
      gameTime = localValue3
      gameTime()
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  backgroundThread(workingValue11)
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local playerPed, stateFlag8, gameTime, text9, text10, gameTime2, workingValue14, number18, number19, number20, stateFlag, stateFlag2, coords
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    stateFlag8 = CMG
    stateFlag8 = stateFlag8.loadAnimDict
    gameTime = "anim@heists@keycard@"
    -- Beginner: Load a GTA animation dictionary before using it.
    stateFlag8(gameTime)
    stateFlag8 = TaskPlayAnim
    gameTime = playerPed
    text9 = "anim@heists@keycard@"
    text10 = "exit"
    gameTime2 = 5.0
    workingValue14 = 1.0
    number18 = -1
    number19 = 48
    number20 = 0
    stateFlag = false
    stateFlag2 = false
    coords = false
    -- Beginner: Play an animation on a ped.
    stateFlag8(gameTime, text9, text10, gameTime2, workingValue14, number18, number19, number20, stateFlag, stateFlag2, coords)
    stateFlag8 = RemoveAnimDict
    gameTime = "anim@heists@keycard@"
    stateFlag8(gameTime)
    stateFlag8 = Citizen
    stateFlag8 = stateFlag8.Wait
    gameTime = 1200
    stateFlag8(gameTime)
    stateFlag8 = ClearPedTasks
    gameTime = playerPed
    stateFlag8(gameTime)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2, localValue3, backgroundThread, workingValue11, number16, cmgOperation2, number17, gameTime3, cmgOperation3, text
  localValue2 = localValue1.linkedToHouses
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.isInHouse
  localValue2, localValue3 = localValue2()
  if localValue2 then
    backgroundThread = pairs
    workingValue11 = localValue1.linkedToHouses
    backgroundThread, workingValue11, number16, cmgOperation2 = backgroundThread(workingValue11)
    for number17, gameTime3 in backgroundThread, workingValue11, number16, cmgOperation2 do
      if gameTime3 == localValue3 then
        cmgOperation3 = true
        return cmgOperation3
      end
    end
  end
  backgroundThread = pairs
  workingValue11 = localValue1.linkedToHouses
  backgroundThread, workingValue11, number16, cmgOperation2 = backgroundThread(workingValue11)
  for number17, gameTime3 in backgroundThread, workingValue11, number16, cmgOperation2 do
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.clientHasOutsideHouseDoorAccess
    text = gameTime3
    cmgOperation3 = cmgOperation3(text)
    if cmgOperation3 then
      cmgOperation3 = true
      return cmgOperation3
    end
  end
  backgroundThread = false
  return backgroundThread
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1) ===
function workingValue16(localValue1)
  local localValue2, localValue3, backgroundThread, workingValue11, number16, cmgOperation2, number17, gameTime3
  localValue3 = localValue1.areaName
  localValue2 = dataCollection2
  localValue2 = localValue2[localValue3]
  localValue2 = localValue2[2]
  if localValue2 then
    localValue2 = true
    return localValue2
  end
  localValue2 = localValue1.doorInfo
  localValue2 = localValue2.otherPermission
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = localValue1.doorInfo
    localValue3 = localValue3.otherPermission
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = true
      return localValue2
    end
  end
  localValue3 = localValue1.areaName
  localValue2 = dataCollection5
  localValue2 = localValue2[localValue3]
  if localValue2 then
    localValue3 = pairs
    backgroundThread = localValue2
    localValue3, backgroundThread, workingValue11, number16 = localValue3(backgroundThread)
    for cmgOperation2, number17 in localValue3, backgroundThread, workingValue11, number16 do
      gameTime3 = number17
      gameTime3 = gameTime3()
      if gameTime3 then
        gameTime3 = true
        return gameTime3
      end
    end
  end
  localValue3 = false
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1) ===
function workingValue18(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue16
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.isStaffedOnClient
    localValue2 = localValue2()
    if not localValue2 then
      localValue2 = workingValue15
      localValue3 = localValue1.areaInfo
      localValue2 = localValue2(localValue3)
    end
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, backgroundThread, workingValue11, number16, cmgOperation2
  localValue2 = workingValue18
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = localValue1.doorInfo
    localValue2 = localValue2.automaticGate
    if localValue2 then
      goto continueAtStep11
    end
  end
  return
  ::continueAtStep11::
  localValue3 = localValue1.areaName
  localValue2 = dataCollection
  localValue2 = localValue2[localValue3]
  if not localValue2 then
    return
  end
  localValue3 = localValue1.doorName
  localValue3 = localValue2[localValue3]
  if 5 == localValue3 then
    backgroundThread = workingValue12
    workingValue11 = localValue1
    number16 = 4

    -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
    function cmgOperation2()
      local playerPed, stateFlag8, gameTime, text9, text10
      playerPed = TriggerServerEvent
      stateFlag8 = "580c03ccaf"
      gameTime = localValue1.areaName
      text9 = localValue1.doorName
      text10 = 4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "580c03ccaf".
      playerPed(stateFlag8, gameTime, text9, text10)
    end
    backgroundThread(workingValue11, number16, cmgOperation2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, backgroundThread, workingValue11, number16, cmgOperation2, number17, gameTime3, cmgOperation3, text, number, number2, stateFlag4
  localValue3 = localValue1.areaName
  localValue2 = dataCollection
  localValue2 = localValue2[localValue3]
  if not localValue2 then
    return
  end
  localValue3 = localValue1.doorName
  localValue3 = localValue2[localValue3]
  if not localValue3 then
    return
  end
  backgroundThread = localValue1.areaName
  workingValue11 = localValue1.doorName
  backgroundThread = backgroundThread .. workingValue11
  workingValue11 = dataCollection4
  workingValue11 = workingValue11[backgroundThread]
  number16 = workingValue18
  cmgOperation2 = localValue1
  number16 = number16(cmgOperation2)
  if number16 then
    cmgOperation2 = localValue1.doorInfo
    cmgOperation2 = cmgOperation2.automaticGate
    if cmgOperation2 then
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      cmgOperation2 = cmgOperation2()
      if 0 ~= cmgOperation2 then
        number17 = workingValue11 or number17
        if not workingValue11 then
          number17 = localValue3
        end
        if 4 == number17 then
          gameTime3 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          gameTime3 = gameTime3()
          cmgOperation3 = number14
          cmgOperation3 = gameTime3 - cmgOperation3
          text = 200
          if cmgOperation3 > text then
            cmgOperation3 = TriggerServerEvent
            text = "580c03ccaf"
            number = localValue1.areaName
            number2 = localValue1.doorName
            stateFlag4 = 5
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "580c03ccaf".
            cmgOperation3(text, number, number2, stateFlag4)
            number14 = gameTime3
          end
        end
      end
    end
  end
  cmgOperation2 = localValue1.distance
  number17 = 1.5
  if cmgOperation2 > number17 then
    return
  end
  cmgOperation2 = ""
  if number16 then
    cmgOperation2 = " (E to toggle lock)"
  end
  number17 = localValue1.doorInfo
  number17 = number17.hidden
  if not number17 then
    if workingValue11 then
      number17 = CMG
      number17 = number17.DrawText3D
      gameTime3 = localValue1.doorInfo
      gameTime3 = gameTime3.position
      cmgOperation3 = "\226\143\179"
      text = cmgOperation2
      cmgOperation3 = cmgOperation3 .. text
      text = 0.45
      number = 4
      number17(gameTime3, cmgOperation3, text, number)
    elseif 5 == localValue3 or 0 == localValue3 then
      number17 = CMG
      number17 = number17.DrawText3D
      gameTime3 = localValue1.doorInfo
      gameTime3 = gameTime3.position
      cmgOperation3 = "\240\159\148\147"
      text = cmgOperation2
      cmgOperation3 = cmgOperation3 .. text
      text = 0.45
      number = 4
      number17(gameTime3, cmgOperation3, text, number)
    else
      number17 = CMG
      number17 = number17.DrawText3D
      gameTime3 = localValue1.doorInfo
      gameTime3 = gameTime3.position
      cmgOperation3 = "\240\159\148\146"
      text = cmgOperation2
      cmgOperation3 = cmgOperation3 .. text
      text = 0.45
      number = 4
      number17(gameTime3, cmgOperation3, text, number)
    end
  end
  number17 = IsControlJustPressed
  gameTime3 = 0
  cmgOperation3 = 38
  number17 = number17(gameTime3, cmgOperation3)
  if number17 and number16 then
    number17 = CMG
    number17 = number17.setIgnoreRadialInputThisFrame
    number17()
    number17 = CMG
    number17 = number17.getSelectedEntity
    number17, gameTime3 = number17()
    if not number17 or 1 ~= gameTime3 then
      cmgOperation3 = workingValue11 or cmgOperation3
      if not workingValue11 then
        cmgOperation3 = localValue3
      end
      if 4 == cmgOperation3 then
        cmgOperation3 = 5
        if cmgOperation3 then
          goto continueAtStep129
        end
      end
      cmgOperation3 = 4
      ::continueAtStep129::
      text = workingValue12
      number = localValue1
      number2 = cmgOperation3

      -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
      function stateFlag4()
        local playerPed, stateFlag8, gameTime, text9, text10
        playerPed = TriggerServerEvent
        stateFlag8 = "580c03ccaf"
        gameTime = localValue1.areaName
        text9 = localValue1.doorName
        text10 = cmgOperation3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "580c03ccaf".
        playerPed(stateFlag8, gameTime, text9, text10)
      end
      text(number, number2, stateFlag4)
      text = workingValue13
      text()
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, backgroundThread
  localValue2 = TriggerServerEvent
  localValue3 = "977dcc3a52"
  backgroundThread = localValue1.areaName
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "977dcc3a52".
  localValue2(localValue3, backgroundThread)
end
eventHandler = RegisterNetEvent
eventHandler2 = "ff4be674af"
-- Beginner: this function handles network event "ff4be674af".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local localValue3, backgroundThread, workingValue11, number16, cmgOperation2, number17, gameTime3, cmgOperation3, text, number, number2, stateFlag4, stateFlag5, modelValue, cmgOperation, text4, stateFlag7, stringHelper, number8, stateFlag9, stateFlag10, stateFlag11, dataCollection3
  dataCollection2 = localValue2
  localValue3 = pairs
  backgroundThread = localValue1
  localValue3, backgroundThread, workingValue11, number16 = localValue3(backgroundThread)
  for cmgOperation2, number17 in localValue3, backgroundThread, workingValue11, number16 do
    gameTime3 = dataCollection
    cmgOperation3 = {}
    gameTime3[cmgOperation2] = cmgOperation3
    gameTime3 = pairs
    cmgOperation3 = number17.locations
    gameTime3, cmgOperation3, text, number = gameTime3(cmgOperation3)
    for number2, stateFlag4 in gameTime3, cmgOperation3, text, number do
      stateFlag5 = stateFlag4.position
      modelValue = stateFlag4.modelPosition
      if modelValue then
        stateFlag5 = stateFlag4.modelPosition
      end
      modelValue = dataCollection
      modelValue = modelValue[cmgOperation2]
      modelValue[number2] = 4
      modelValue = AddDoorToSystem
      cmgOperation = number2
      text4 = stateFlag4.model
      stateFlag7 = stateFlag5.x
      stringHelper = stateFlag5.y
      number8 = stateFlag5.z
      stateFlag9 = false
      stateFlag10 = false
      stateFlag11 = false
      modelValue(cmgOperation, text4, stateFlag7, stringHelper, number8, stateFlag9, stateFlag10, stateFlag11)
      modelValue = DoorSystemSetDoorState
      cmgOperation = number2
      text4 = 4
      stateFlag7 = false
      stringHelper = false
      modelValue(cmgOperation, text4, stateFlag7, stringHelper)
      modelValue = stateFlag4.automaticGate
      if modelValue then
        modelValue = 10.0
        if modelValue then
          goto continueAtStep45
        end
      end
      modelValue = 1.5
      ::continueAtStep45::
      cmgOperation = CMG
      cmgOperation = cmgOperation.createArea
      text4 = "gangDoor_"
      stateFlag7 = number2
      text4 = text4 .. stateFlag7
      stateFlag7 = stateFlag4.position
      stringHelper = modelValue
      number8 = 5.0

      -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
      function stateFlag9()
        local playerPed, stateFlag8
      end
      stateFlag10 = workingValue2
      stateFlag11 = workingValue4
      dataCollection3 = {}
      dataCollection3.areaName = cmgOperation2
      dataCollection3.doorName = number2
      dataCollection3.doorInfo = stateFlag4
      dataCollection3.areaInfo = number17
      -- Beginner: Create an interaction area around a world position.
      cmgOperation(text4, stateFlag7, stringHelper, number8, stateFlag9, stateFlag10, stateFlag11, dataCollection3)
    end
    gameTime3 = CMG
    gameTime3 = gameTime3.createArea
    cmgOperation3 = "gangDoorsEnterArea_"
    text = cmgOperation2
    cmgOperation3 = cmgOperation3 .. text
    text = number17.centerLocation
    number = number17.eventRadius
    number2 = 100.0
    stateFlag4 = workingValue5

    -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: none) ===
    function stateFlag5()
      local playerPed, stateFlag8
    end

    -- === HELPER FUNCTION: modelValue() ===
    function modelValue()
      local playerPed, stateFlag8
    end
    cmgOperation = {}
    cmgOperation.areaName = cmgOperation2
    gameTime3(cmgOperation3, text, number, number2, stateFlag4, stateFlag5, modelValue, cmgOperation)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ff4be674af".
eventHandler(eventHandler2, text2)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2) ===
function eventHandler(localValue1, localValue2)
  local localValue3, backgroundThread, workingValue11, number16, cmgOperation2
  localValue3 = DoorSystemSetDoorState
  backgroundThread = localValue1
  workingValue11 = localValue2
  number16 = false
  cmgOperation2 = false
  localValue3(backgroundThread, workingValue11, number16, cmgOperation2)
  if 0 == localValue2 or 5 == localValue2 then
    localValue3 = DoorSystemSetHoldOpen
    backgroundThread = localValue1
    workingValue11 = true
    localValue3(backgroundThread, workingValue11)
  else
    localValue3 = DoorSystemSetHoldOpen
    backgroundThread = localValue1
    workingValue11 = false
    localValue3(backgroundThread, workingValue11)
  end
end
eventHandler2 = RegisterNetEvent
text2 = "b5e4a21f88"
-- Beginner: this function handles network event "b5e4a21f88".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, backgroundThread, workingValue11, number16, cmgOperation2, number17, gameTime3, cmgOperation3, text
  localValue3 = pairs
  backgroundThread = localValue2
  localValue3, backgroundThread, workingValue11, number16 = localValue3(backgroundThread)
  for cmgOperation2, number17 in localValue3, backgroundThread, workingValue11, number16 do
    gameTime3 = eventHandler
    cmgOperation3 = cmgOperation2
    text = number17
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: false.
    gameTime3(cmgOperation3, text)
  end
  localValue3 = dataCollection
  localValue3[localValue1] = localValue2
end
eventHandler2(text2, workingValue6)
eventHandler2 = RegisterNetEvent
text2 = "580c03ccaf"
-- Beginner: this function handles network event "580c03ccaf".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2, localValue3) ===
function workingValue6(localValue1, localValue2, localValue3)
  local backgroundThread, workingValue11, number16
  backgroundThread = eventHandler
  workingValue11 = localValue2
  number16 = localValue3
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  backgroundThread(workingValue11, number16)
  backgroundThread = dataCollection
  backgroundThread = backgroundThread[localValue1]
  backgroundThread[localValue2] = localValue3
end
eventHandler2(text2, workingValue6)
eventHandler2 = {}
text2 = 0
workingValue6 = RegisterCommand
text3 = "dooreditor"
-- Beginner: this function is the command handler for "dooreditor".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, backgroundThread, workingValue11
  localValue1 = CMG
  localValue1 = localValue1.isStaffedOnClient
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = notify
    localValue2 = "~r~You must have staff'd on to use this command."
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
    return
  end
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  backgroundThread = "dooreditor"
  workingValue11 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, backgroundThread, workingValue11)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
rageUiOperation = false
-- Beginner: Register a chat/console command. Event/command: "dooreditor".
workingValue6(text3, workingValue7, rageUiOperation)

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3, backgroundThread, workingValue11, number16, cmgOperation2, number17, gameTime3, cmgOperation3, text, number, number2, stateFlag4, stateFlag5, modelValue
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
  localValue1 = 0
  localValue2 = 1.5
  localValue3 = vector3
  backgroundThread = 0.0
  workingValue11 = 0.0
  number16 = 0.0
  localValue3 = localValue3(backgroundThread, workingValue11, number16)
  backgroundThread = pairs
  workingValue11 = GetGamePool
  number16 = "CObject"
  workingValue11, number16, cmgOperation2, number17, gameTime3, cmgOperation3, text, number, number2, stateFlag4, stateFlag5, modelValue = workingValue11(number16)
  backgroundThread, workingValue11, number16, cmgOperation2 = backgroundThread(workingValue11, number16, cmgOperation2, number17, gameTime3, cmgOperation3, text, number, number2, stateFlag4, stateFlag5, modelValue)
  for number17, gameTime3 in backgroundThread, workingValue11, number16, cmgOperation2 do
    cmgOperation3 = GetEntityCoords
    text = gameTime3
    number = true
    -- Beginner: result below is entityCoords.
    cmgOperation3 = cmgOperation3(text, number)
    text = workingValue6
    number = cmgOperation3
    text = text(number)
    if not text then
      text = CMG
      text = text.getPlayerCoords
      -- Beginner: result below is playerCoords.
      text = text()
      text = text - cmgOperation3
      text = #text
      if localValue2 > text then
        number = GetEntityAttachedTo
        number2 = gameTime3
        number = number(number2)
        if 0 == number then
          localValue1 = gameTime3
          localValue2 = text
          localValue3 = cmgOperation3
        end
      end
    else
      text = notify
      number = "~r~Door already exists here"
      -- Beginner: Show a notification to the player.
      text(number)
    end
  end
  if 0 == localValue1 then
    backgroundThread = notify
    workingValue11 = "~r~There is not a door nearby."
    backgroundThread(workingValue11)
    return
  end
  backgroundThread = pairs
  workingValue11 = eventHandler2
  backgroundThread, workingValue11, number16, cmgOperation2 = backgroundThread(workingValue11)
  for number17, gameTime3 in backgroundThread, workingValue11, number16, cmgOperation2 do
    cmgOperation3 = gameTime3.modelPosition
    cmgOperation3 = cmgOperation3 - localValue3
    cmgOperation3 = #cmgOperation3
    text = 0.1
    if cmgOperation3 < text then
      cmgOperation3 = notify
      text = "~r~The closest door has already been edited."
      -- Beginner: Show a notification to the player.
      cmgOperation3(text)
      return
    end
  end
  backgroundThread = DoorSystemGetActive
  backgroundThread = backgroundThread()
  backgroundThread = #backgroundThread
  workingValue11 = GetHashKey
  number16 = string
  number16 = number16.format
  cmgOperation2 = "DOOR_EDITOR_%s"
  number17 = text2
  number16, cmgOperation2, number17, gameTime3, cmgOperation3, text, number, number2, stateFlag4, stateFlag5, modelValue = number16(cmgOperation2, number17)
  -- Beginner: result below is hash.
  workingValue11 = workingValue11(number16, cmgOperation2, number17, gameTime3, cmgOperation3, text, number, number2, stateFlag4, stateFlag5, modelValue)
  number16 = text2
  number16 = number16 + 1
  text2 = number16
  number16 = GetEntityModel
  cmgOperation2 = localValue1
  -- Beginner: result below is modelHash.
  number16 = number16(cmgOperation2)
  cmgOperation2 = AddDoorToSystem
  number17 = workingValue11
  gameTime3 = number16
  cmgOperation3 = localValue3.x
  text = localValue3.y
  number = localValue3.z
  number2 = false
  stateFlag4 = false
  stateFlag5 = false
  cmgOperation2(number17, gameTime3, cmgOperation3, text, number, number2, stateFlag4, stateFlag5)
  cmgOperation2 = DoorSystemGetActive
  cmgOperation2 = cmgOperation2()
  cmgOperation2 = #cmgOperation2
  if cmgOperation2 == backgroundThread then
    cmgOperation2 = notify
    number17 = "~r~The door you selected is not a valid door."
    -- Beginner: Show a notification to the player.
    cmgOperation2(number17)
    cmgOperation2 = RemoveDoorFromSystem
    number17 = workingValue11
    cmgOperation2(number17)
    return
  end
  cmgOperation2 = DoorSystemSetDoorState
  number17 = workingValue11
  gameTime3 = 4
  cmgOperation3 = false
  text = false
  cmgOperation2(number17, gameTime3, cmgOperation3, text)
  cmgOperation2 = DoorSystemSetHoldOpen
  number17 = workingValue11
  gameTime3 = false
  cmgOperation2(number17, gameTime3)
  cmgOperation2 = GetModelDimensions
  number17 = number16
  cmgOperation2, number17 = cmgOperation2(number17)
  gameTime3 = number17 + cmgOperation2
  gameTime3 = gameTime3 / 2.0
  cmgOperation3 = GetOffsetFromEntityInWorldCoords
  text = localValue1
  number = gameTime3.x
  number2 = gameTime3.y
  stateFlag4 = gameTime3.z
  cmgOperation3 = cmgOperation3(text, number, number2, stateFlag4)
  text = RemoveDoorFromSystem
  number = workingValue11
  text(number)
  text = SetEntityDrawOutline
  number = localValue1
  number2 = true
  text(number, number2)
  text = AddTextEntry
  number = "DOOR_EDITOR_CONFIRM"
  number2 = [[
Is the highlighted object the door you want?
~INPUT_FRONTEND_ACCEPT~ Accept
~INPUT_FRONTEND_CANCEL~ Deny]]
  text(number, number2)
  while true do
    text = DisableControlAction
    number = 0
    number2 = 201
    stateFlag4 = true
    text(number, number2, stateFlag4)
    text = DisableControlAction
    number = 0
    number2 = 202
    stateFlag4 = true
    text(number, number2, stateFlag4)
    text = IsDisabledControlJustPressed
    number = 0
    number2 = 201
    text = text(number, number2)
    if text then
      break
    end
    text = IsDisabledControlJustPressed
    number = 0
    number2 = 202
    text = text(number, number2)
    if text then
      text = SetEntityDrawOutline
      number = localValue1
      number2 = false
      text(number, number2)
      text = notify
      number = "~r~Door editing cancelled by user."
      -- Beginner: Show a notification to the player.
      text(number)
      return
    end
    text = DisplayHelpTextThisFrame
    number = "DOOR_EDITOR_CONFIRM"
    number2 = false
    text(number, number2)
    text = Citizen
    text = text.Wait
    number = 0
    text(number)
  end
  text = notify
  number = "~g~Door added successfully to the list!"
  -- Beginner: Show a notification to the player.
  text(number)
  text = table
  text = text.insert
  number = eventHandler2
  number2 = {}
  stateFlag4 = GetEntityArchetypeName
  stateFlag5 = localValue1
  stateFlag4 = stateFlag4(stateFlag5)
  if not stateFlag4 then
    stateFlag4 = tostring
    stateFlag5 = GetEntityModel
    modelValue = localValue1
    stateFlag5, modelValue = stateFlag5(modelValue)
    stateFlag4 = stateFlag4(stateFlag5, modelValue)
  end
  number2.model = stateFlag4
  number2.position = cmgOperation3
  stateFlag4 = GetEntityCoords
  stateFlag5 = localValue1
  modelValue = true
  -- Beginner: result below is entityCoords.
  stateFlag4 = stateFlag4(stateFlag5, modelValue)
  number2.modelPosition = stateFlag4
  text(number, number2)
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, backgroundThread, workingValue11, number16, cmgOperation2, number17, gameTime3, cmgOperation3, text, number, number2, stateFlag4, stateFlag5, modelValue, cmgOperation, text4, stateFlag7, stringHelper, number8, stateFlag9, stateFlag10
  localValue1 = ""
  localValue2 = pairs
  localValue3 = eventHandler2
  localValue2, localValue3, backgroundThread, workingValue11 = localValue2(localValue3)
  for number16, cmgOperation2 in localValue2, localValue3, backgroundThread, workingValue11 do
    number17 = localValue1
    gameTime3 = "{position = vector3("
    cmgOperation3 = tostring
    text = cmgOperation2.position
    text = text.x
    cmgOperation3 = cmgOperation3(text)
    text = ","
    number = tostring
    number2 = cmgOperation2.position
    number2 = number2.y
    number = number(number2)
    number2 = ", "
    stateFlag4 = tostring
    stateFlag5 = cmgOperation2.position
    stateFlag5 = stateFlag5.z
    stateFlag4 = stateFlag4(stateFlag5)
    stateFlag5 = "), modelPosition = vector3("
    modelValue = tostring
    cmgOperation = cmgOperation2.modelPosition
    cmgOperation = cmgOperation.x
    modelValue = modelValue(cmgOperation)
    cmgOperation = ","
    text4 = tostring
    stateFlag7 = cmgOperation2.modelPosition
    stateFlag7 = stateFlag7.y
    text4 = text4(stateFlag7)
    stateFlag7 = ", "
    stringHelper = tostring
    number8 = cmgOperation2.modelPosition
    number8 = number8.z
    stringHelper = stringHelper(number8)
    number8 = "), model = `"
    stateFlag9 = cmgOperation2.model
    stateFlag10 = "`},\n"
    number17 = number17 .. gameTime3 .. cmgOperation3 .. text .. number .. number2 .. stateFlag4 .. stateFlag5 .. modelValue .. cmgOperation .. text4 .. stateFlag7 .. stringHelper .. number8 .. stateFlag9 .. stateFlag10
    localValue1 = number17
  end
  return localValue1
end
rageUiOperation = RMenu
rageUiOperation = rageUiOperation.Add
text5 = "dooreditor"
text6 = "mainmenu"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text7 = "Door Editor"
text8 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
rageUiOperation2, text7, text8, rageUiOperation3, rageUiOperation4 = rageUiOperation2(text7, text8, rageUiOperation3, rageUiOperation4)
rageUiOperation(text5, text6, rageUiOperation2, text7, text8, rageUiOperation3, rageUiOperation4)
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
text5 = 1.0
text6 = RMenu
rageUiOperation2 = text6
text6 = text6.Get
text7 = "dooreditor"
text8 = "mainmenu"
-- Beginner: result below is menu.
text6 = text6(rageUiOperation2, text7, text8)
rageUiOperation2 = nil

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, backgroundThread, workingValue11, number16
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  backgroundThread = "dooreditor"
  workingValue11 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, backgroundThread, workingValue11)
  localValue3 = true
  backgroundThread = true
  workingValue11 = true

  -- === HELPER FUNCTION (decompiler name: number16; parameters: none) ===
  function number16()
    local playerPed, stateFlag8, gameTime, text9, text10, gameTime2, workingValue14, number18, number19, number20, stateFlag, stateFlag2, coords, position, stateFlag6, number3, number4, number5, number6, number7, number9, number10, number11, number12, stateFlag12, stateFlag13, number13, stateFlag14, workingValue9, workingValue10, stateFlag15
    playerPed = RageUI
    playerPed = playerPed.Separator
    stateFlag8 = "You have edited "
    gameTime = tostring
    text9 = eventHandler2
    text9 = #text9
    gameTime = gameTime(text9)
    text9 = " doors!"
    stateFlag8 = stateFlag8 .. gameTime .. text9
    playerPed(stateFlag8)
    playerPed = RageUI
    playerPed = playerPed.ButtonWithStyle
    stateFlag8 = "~g~Add Door"
    gameTime = [[
Adds a door position to the list.
For double doors this will have to be done twice (left hand side & right hand side).

Try stand in the middle of the door when you do this as it will also be the location that the lock icon displays at.]]
    text9 = {}
    text9.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text10 = true

    -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
    function gameTime2(localValue12, localValue22, localValue32)
      local rageUiOperation5, number15, stateFlag16, text11, text12
      if localValue32 then
        rageUiOperation5 = text3
        rageUiOperation5()
        rageUiOperation5 = Citizen
        rageUiOperation5 = rageUiOperation5.Wait
        number15 = 0
        rageUiOperation5(number15)
        rageUiOperation5 = RageUI
        rageUiOperation5 = rageUiOperation5.Visible
        number15 = RMenu
        stateFlag16 = number15
        number15 = number15.Get
        text11 = "dooreditor"
        text12 = "mainmenu"
        -- Beginner: result below is menu.
        number15 = number15(stateFlag16, text11, text12)
        stateFlag16 = true
        rageUiOperation5(number15, stateFlag16)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    playerPed(stateFlag8, gameTime, text9, text10, gameTime2)
    playerPed = RageUI
    playerPed = playerPed.ButtonWithStyle
    stateFlag8 = "~y~Export Doors"
    gameTime = "Outputs a door list which should be sent to someone who can forward this to a CMG Developer."
    text9 = {}
    text9.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text10 = true

    -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
    function gameTime2(localValue12, localValue22, localValue32)
      local rageUiOperation5, number15, stateFlag16, text11
      if localValue32 then
        rageUiOperation5 = CMG
        rageUiOperation5 = rageUiOperation5.clientPrompt
        number15 = "Exported (CTRL+A then CTRL+C)"
        stateFlag16 = workingValue7
        stateFlag16 = stateFlag16()

        -- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
        function text11()
          local workingValue, workingValue8
        end
        rageUiOperation5(number15, stateFlag16, text11)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    playerPed(stateFlag8, gameTime, text9, text10, gameTime2)
    playerPed = RageUI
    playerPed = playerPed.ButtonWithStyle
    stateFlag8 = "~r~Remove All Doors"
    gameTime = "This doesn't have a confirmation button so don't press unless you mean it!"
    text9 = {}
    text9.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text10 = true

    -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
    function gameTime2(localValue12, localValue22, localValue32)
      local rageUiOperation5, number15, stateFlag16, text11, text12, workingValue17, workingValue19, workingValue3, stateFlag3
      if localValue32 then
        rageUiOperation5 = {}
        eventHandler2 = rageUiOperation5
        rageUiOperation5 = pairs
        number15 = GetGamePool
        stateFlag16 = "CObject"
        number15, stateFlag16, text11, text12, workingValue17, workingValue19, workingValue3, stateFlag3 = number15(stateFlag16)
        rageUiOperation5, number15, stateFlag16, text11 = rageUiOperation5(number15, stateFlag16, text11, text12, workingValue17, workingValue19, workingValue3, stateFlag3)
        for text12, workingValue17 in rageUiOperation5, number15, stateFlag16, text11 do
          workingValue19 = SetEntityDrawOutline
          workingValue3 = workingValue17
          stateFlag3 = false
          workingValue19(workingValue3, stateFlag3)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    playerPed(stateFlag8, gameTime, text9, text10, gameTime2)
    playerPed = pairs
    stateFlag8 = eventHandler2
    playerPed, stateFlag8, gameTime, text9 = playerPed(stateFlag8)
    for text10, gameTime2 in playerPed, stateFlag8, gameTime, text9 do
      workingValue14 = DrawMarker
      number18 = 28
      number19 = gameTime2.position
      number19 = number19.x
      number20 = gameTime2.position
      number20 = number20.y
      stateFlag = gameTime2.position
      stateFlag = stateFlag.z
      stateFlag2 = 0.0
      coords = 0.0
      position = 0.0
      stateFlag6 = 0.0
      number3 = 0.0
      number4 = 0.0
      number5 = 0.25
      number6 = 0.25
      number7 = 0.25
      number9 = 255
      number10 = 255
      number11 = 255
      number12 = 200
      stateFlag12 = false
      stateFlag13 = true
      number13 = 2
      stateFlag14 = false
      workingValue9 = nil
      workingValue10 = nil
      stateFlag15 = false
      workingValue14(number18, number19, number20, stateFlag, stateFlag2, coords, position, stateFlag6, number3, number4, number5, number6, number7, number9, number10, number11, number12, stateFlag12, stateFlag13, number13, stateFlag14, workingValue9, workingValue10, stateFlag15)
    end
  end
  localValue1(localValue2, localValue3, backgroundThread, workingValue11, number16)
end
rageUiOperation(text5, text6, rageUiOperation2, text7)
rageUiOperation = AddEventHandler
text5 = "b51e08118b"
-- Beginner: this function runs when client event "b51e08118b" fires.

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, backgroundThread, workingValue11, number16, cmgOperation2, number17, gameTime3
  localValue1 = pairs
  localValue2 = dataCollection2
  localValue1, localValue2, localValue3, backgroundThread = localValue1(localValue2)
  for workingValue11, number16 in localValue1, localValue2, localValue3, backgroundThread do
    cmgOperation2 = dataCollection2
    cmgOperation2 = cmgOperation2[workingValue11]
    number17 = CMG
    number17 = number17.hasClientPermission
    gameTime3 = number16[1]
    number17 = number17(gameTime3)
    cmgOperation2[2] = number17
  end
end
-- Beginner: Register a client-side event handler. Event/command: "b51e08118b".
rageUiOperation(text5, text6)
rageUiOperation = CMG

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3, backgroundThread, workingValue11
  localValue3 = dataCollection5
  localValue3 = localValue3[localValue1]
  if not localValue3 then
    localValue3 = dataCollection5
    backgroundThread = {}
    localValue3[localValue1] = backgroundThread
  end
  localValue3 = table
  localValue3 = localValue3.insert
  backgroundThread = dataCollection5
  backgroundThread = backgroundThread[localValue1]
  workingValue11 = localValue2
  localValue3(backgroundThread, workingValue11)
end
rageUiOperation.registerCanAccessGangDoorLocation = text5
