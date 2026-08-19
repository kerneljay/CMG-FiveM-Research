--[[
    LEVEL 1 BEGINNER GUIDE — Chess
    ===================================

    File: cmg/prod/client/events/cl_chess.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Chess feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 30
      * Background threads: 0
      * Always-running loops: 0
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
local cmgOperation, dataCollection2, workingValue8, workingValue10, workingValue11, workingValue12, eventHandler, text4, backgroundThread, workingValue14, workingValue3, cmgOperation2, text, text2
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection2 = "cfg/cfg_chess"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection2)
dataCollection2 = {}
workingValue8 = nil

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3, dataCollection3
  localValue2 = localValue1.bViewingBoard
  if localValue2 then
    localValue2 = SendNUIMessage
    localValue3 = {}
    localValue3.updateChessBoard = true
    dataCollection3 = localValue1.boardFEN
    localValue3.fen = dataCollection3
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue2(localValue3)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, dataCollection3, dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6
  localValue2 = localValue1.boardObjects
  if localValue2 then
    localValue2 = pairs
    localValue3 = localValue1.boardObjects
    localValue2, localValue3, dataCollection3, dataCollection4 = localValue2(localValue3)
    for dataCollection5, dataCollection6 in localValue2, localValue3, dataCollection3, dataCollection4 do
      iterator = pairs
      dataCollection7 = dataCollection6
      iterator, dataCollection7, iterator2, dataCollection = iterator(dataCollection7)
      for number2, number3 in iterator, dataCollection7, iterator2, dataCollection do
        if 0 ~= number3 then
          number5 = DeleteEntity
          number6 = number3
          -- Beginner: Delete a GTA entity.
          number5(number6)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1, localValue2) ===
function workingValue12(localValue1, localValue2)
  local localValue3, dataCollection3, dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6, number7, cmgOperation3, createVector3, workingValue4, workingValue5, heading, workingValue7, stateFlag2, stateFlag3, stateFlag4
  localValue3 = localValue2.insideRadius
  if not localValue3 then
    return
  end
  localValue3 = workingValue11
  dataCollection3 = localValue2
  localValue3(dataCollection3)
  localValue3 = {}
  dataCollection3 = {}
  dataCollection4 = {}
  dataCollection5 = {}
  dataCollection6 = {}
  iterator = {}
  dataCollection7 = {}
  iterator2 = {}
  dataCollection = {}
  localValue3[1] = dataCollection3
  localValue3[2] = dataCollection4
  localValue3[3] = dataCollection5
  localValue3[4] = dataCollection6
  localValue3[5] = iterator
  localValue3[6] = dataCollection7
  localValue3[7] = iterator2
  localValue3[8] = dataCollection
  localValue2.boardObjects = localValue3
  localValue3 = localValue2.boardObject
  if 0 == localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.loadModel
    dataCollection3 = 1235783144
    -- Beginner: Request/load a GTA model before spawning or applying it.
    localValue3(dataCollection3)
    localValue3 = CreateObject
    dataCollection3 = 1235783144
    dataCollection4 = cmgOperation.locations
    dataCollection4 = dataCollection4[localValue1]
    dataCollection4 = dataCollection4.originPosition
    dataCollection4 = dataCollection4.x
    dataCollection4 = dataCollection4 + 10.1
    dataCollection5 = cmgOperation.locations
    dataCollection5 = dataCollection5[localValue1]
    dataCollection5 = dataCollection5.originPosition
    dataCollection5 = dataCollection5.y
    dataCollection5 = dataCollection5 + 9.25
    dataCollection6 = cmgOperation.locations
    dataCollection6 = dataCollection6[localValue1]
    dataCollection6 = dataCollection6.originPosition
    dataCollection6 = dataCollection6.z
    dataCollection6 = dataCollection6 - 42.85
    iterator = false
    dataCollection7 = false
    iterator2 = false
    -- Beginner: result below is objectEntity.
    localValue3 = localValue3(dataCollection3, dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2)
    localValue2.boardObject = localValue3
    localValue3 = FreezeEntityPosition
    dataCollection3 = localValue2.boardObject
    dataCollection4 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue3(dataCollection3, dataCollection4)
    localValue3 = SetEntityLodDist
    dataCollection3 = localValue2.boardObject
    dataCollection4 = 200
    localValue3(dataCollection3, dataCollection4)
    localValue3 = SetModelAsNoLongerNeeded
    dataCollection3 = 1235783144
    localValue3(dataCollection3)
  end
  localValue3 = CMG
  localValue3 = localValue3.parseChessFEN
  dataCollection3 = localValue2.boardFEN
  localValue3 = localValue3(dataCollection3)
  dataCollection3 = pairs
  dataCollection4 = localValue3
  dataCollection3, dataCollection4, dataCollection5, dataCollection6 = dataCollection3(dataCollection4)
  for iterator, dataCollection7 in dataCollection3, dataCollection4, dataCollection5, dataCollection6 do
    iterator2 = pairs
    dataCollection = dataCollection7
    iterator2, dataCollection, number2, number3 = iterator2(dataCollection)
    for number5, number6 in iterator2, dataCollection, number2, number3 do
      number7 = cmgOperation.pieceToArchetypeMap
      number7 = number7[number6]
      if number7 then
        cmgOperation3 = CMG
        cmgOperation3 = cmgOperation3.loadModel
        createVector3 = number7
        -- Beginner: Request/load a GTA model before spawning or applying it.
        cmgOperation3(createVector3)
        cmgOperation3 = cmgOperation.locations
        cmgOperation3 = cmgOperation3[localValue1]
        cmgOperation3 = cmgOperation3.originPosition
        createVector3 = vector3
        workingValue4 = cmgOperation.squareSize
        workingValue4 = iterator * workingValue4
        workingValue5 = cmgOperation.squareSize
        workingValue5 = number5 * workingValue5
        heading = 0.0
        createVector3 = createVector3(workingValue4, workingValue5, heading)
        cmgOperation3 = cmgOperation3 + createVector3
        createVector3 = cmgOperation.archetypeToOffsetMap
        createVector3 = createVector3[number7]
        cmgOperation3 = cmgOperation3 - createVector3
        createVector3 = CreateObjectNoOffset
        workingValue4 = number7
        workingValue5 = cmgOperation3.x
        heading = cmgOperation3.y
        workingValue7 = cmgOperation3.z
        stateFlag2 = false
        stateFlag3 = false
        stateFlag4 = false
        -- Beginner: result below is objectEntity.
        createVector3 = createVector3(workingValue4, workingValue5, heading, workingValue7, stateFlag2, stateFlag3, stateFlag4)
        workingValue4 = SetEntityHeading
        workingValue5 = createVector3
        heading = GetEntityHeading
        workingValue7 = createVector3
        -- Beginner: result below is heading.
        heading = heading(workingValue7)
        workingValue7 = cmgOperation.archetypeToHeadingsMap
        workingValue7 = workingValue7[number7]
        heading = heading + workingValue7
        -- Beginner: Change the direction an entity is facing.
        workingValue4(workingValue5, heading)
        workingValue4 = FreezeEntityPosition
        workingValue5 = createVector3
        heading = true
        -- Beginner: Freeze or unfreeze an entity in place.
        workingValue4(workingValue5, heading)
        workingValue4 = SetEntityLodDist
        workingValue5 = createVector3
        heading = 200
        workingValue4(workingValue5, heading)
        workingValue4 = table
        workingValue4 = workingValue4.insert
        workingValue5 = localValue2.boardObjects
        workingValue5 = workingValue5[iterator]
        heading = createVector3
        workingValue4(workingValue5, heading)
        workingValue4 = SetModelAsNoLongerNeeded
        workingValue5 = number7
        workingValue4(workingValue5)
      end
    end
  end
end
eventHandler = RegisterNetEvent
text4 = "a641ace444"
-- Beginner: this function handles network event "a641ace444".

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1, localValue2) ===
function backgroundThread(localValue1, localValue2)
  local localValue3, dataCollection3, dataCollection4, dataCollection5
  localValue3 = dataCollection2
  localValue3 = localValue3[localValue1]
  dataCollection3 = localValue3.bViewingBoard
  if dataCollection3 then
    dataCollection3 = SendNUIMessage
    dataCollection4 = {}
    dataCollection4.transactionType = "chess_move"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    dataCollection3(dataCollection4)
  end
  localValue3.boardFEN = localValue2
  dataCollection3 = workingValue10
  dataCollection4 = localValue3
  dataCollection3(dataCollection4)
  dataCollection3 = workingValue12
  dataCollection4 = localValue1
  dataCollection5 = localValue3
  dataCollection3(dataCollection4, dataCollection5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a641ace444".
eventHandler(text4, backgroundThread)
eventHandler = RegisterNetEvent
text4 = "36e0214c1e"
-- Beginner: this function handles network event "36e0214c1e".

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1, localValue2) ===
function backgroundThread(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection2
  localValue3 = localValue3[localValue1]
  if not localValue2 then
    localValue3.bPlayingActive = false
  end
  localValue3.playingSide = localValue2
end
eventHandler(text4, backgroundThread)
eventHandler = RegisterNetEvent
text4 = "a8fdaf5c82"
-- Beginner: this function handles network event "a8fdaf5c82".

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1, localValue2) ===
function backgroundThread(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection2
  localValue3 = localValue3[localValue1]
  localValue3.bPlayingActive = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a8fdaf5c82".
eventHandler(text4, backgroundThread)
-- Beginner: this function handles network event "a8fdaf5c82".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, dataCollection3, dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6
  localValue2 = cmgOperation.locations
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.originPosition
  localValue3 = vector3
  dataCollection3 = 10.0
  dataCollection4 = 10.0
  dataCollection5 = 20.0
  localValue3 = localValue3(dataCollection3, dataCollection4, dataCollection5)
  localValue2 = localValue2 + localValue3
  localValue3 = SetCamParams
  dataCollection3 = dataCollection2
  dataCollection3 = dataCollection3[localValue1]
  dataCollection3 = dataCollection3.spectatingCamera
  dataCollection4 = localValue2.x
  dataCollection5 = localValue2.y
  dataCollection6 = localValue2.z
  iterator = -90.0
  dataCollection7 = 0.0
  iterator2 = 90.0
  dataCollection = 50.0
  number2 = 1000
  number3 = 0
  number5 = 0
  number6 = 2
  localValue3(dataCollection3, dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6)
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local localValue3, dataCollection3, dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6, number7
  localValue3 = dataCollection2
  dataCollection3 = {}
  dataCollection3.boardFEN = nil
  dataCollection3.boardObject = 0
  dataCollection4 = {}
  dataCollection3.boardObjects = dataCollection4
  dataCollection3.playingSide = nil
  dataCollection3.playingActive = false
  dataCollection3.bViewingBoard = false
  dataCollection3.spectatingCamera = 0
  dataCollection3.insideStartMarker = false
  dataCollection3.insideRadius = false
  localValue3[localValue1] = dataCollection3
  localValue3 = dataCollection2
  localValue3 = localValue3[localValue1]
  dataCollection3 = CMG
  dataCollection3 = dataCollection3.createArea
  dataCollection4 = "chess_white_"
  dataCollection5 = localValue1
  dataCollection4 = dataCollection4 .. dataCollection5
  dataCollection5 = localValue2.whitePosition
  dataCollection6 = 1.5
  iterator = 6

  -- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
  function dataCollection7()
    local workingValue, text3
    localValue3.insideStartMarker = true
  end

  -- === HELPER FUNCTION: iterator2() ===
  function iterator2()
    local workingValue, text3
    localValue3.insideStartMarker = false
  end

  -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
  function dataCollection()
    local workingValue, text3, number8
    workingValue = localValue3.playingSide
    if not workingValue then
      workingValue = drawNativeNotification
      text3 = "Press ~INPUT_CONTEXT~ to play as white"
      -- Beginner: Show a GTA-style notification/help prompt.
      workingValue(text3)
      workingValue = IsControlJustPressed
      text3 = 0
      number8 = 51
      workingValue = workingValue(text3, number8)
      if workingValue then
        workingValue = TriggerServerEvent
        text3 = "5f8c0ed877"
        number8 = localValue1
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5f8c0ed877".
        workingValue(text3, number8)
      end
    else
      workingValue = localValue3.playingSide
      if "w" == workingValue then
        workingValue = drawNativeNotification
        text3 = [[
Press ~INPUT_CONTEXT~ to resign.
Press ~INPUT_INTERACTION_MENU~ to toggle board]]
        -- Beginner: Show a GTA-style notification/help prompt.
        workingValue(text3)
        workingValue = IsControlJustPressed
        text3 = 0
        number8 = 51
        workingValue = workingValue(text3, number8)
        if workingValue then
          workingValue = localValue3.bViewingBoard
          if not workingValue then
            workingValue = TriggerServerEvent
            text3 = "a7db4cf034"
            number8 = localValue1
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a7db4cf034".
            workingValue(text3, number8)
          end
        end
      end
    end
  end
  -- Beginner: Create an interaction area around a world position.
  dataCollection3(dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection)
  dataCollection3 = tCMG
  dataCollection3 = dataCollection3.addMarker
  dataCollection4 = localValue2.whitePosition
  dataCollection4 = dataCollection4.x
  dataCollection5 = localValue2.whitePosition
  dataCollection5 = dataCollection5.y
  dataCollection6 = localValue2.whitePosition
  dataCollection6 = dataCollection6.z
  iterator = 1.0
  dataCollection7 = 1.0
  iterator2 = 1.0
  dataCollection = 255
  number2 = 0
  number3 = 0
  number5 = 170
  number6 = 50
  number7 = 27
  -- Beginner: Create a world marker.
  dataCollection3(dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6, number7)
  dataCollection3 = CMG
  dataCollection3 = dataCollection3.createArea
  dataCollection4 = "chess_black_"
  dataCollection5 = localValue1
  dataCollection4 = dataCollection4 .. dataCollection5
  dataCollection5 = localValue2.blackPosition
  dataCollection6 = 1.5
  iterator = 6

  -- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
  function dataCollection7()
    local workingValue, text3
    localValue3.insideStartMarker = true
  end

  -- === HELPER FUNCTION: iterator2() ===
  function iterator2()
    local workingValue, text3
    localValue3.insideStartMarker = false
  end

  -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
  function dataCollection()
    local workingValue, text3, number8
    workingValue = localValue3.playingSide
    if not workingValue then
      workingValue = drawNativeNotification
      text3 = "Press ~INPUT_CONTEXT~ to play as black"
      -- Beginner: Show a GTA-style notification/help prompt.
      workingValue(text3)
      workingValue = IsControlJustPressed
      text3 = 0
      number8 = 51
      workingValue = workingValue(text3, number8)
      if workingValue then
        workingValue = TriggerServerEvent
        text3 = "467142150f"
        number8 = localValue1
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "467142150f".
        workingValue(text3, number8)
      end
    else
      workingValue = localValue3.playingSide
      if "b" == workingValue then
        workingValue = drawNativeNotification
        text3 = [[
Press ~INPUT_CONTEXT~ to resign.
Press ~INPUT_INTERACTION_MENU~ to toggle board]]
        -- Beginner: Show a GTA-style notification/help prompt.
        workingValue(text3)
        workingValue = IsControlJustPressed
        text3 = 0
        number8 = 51
        workingValue = workingValue(text3, number8)
        if workingValue then
          workingValue = localValue3.bViewingBoard
          if not workingValue then
            workingValue = TriggerServerEvent
            text3 = "a7db4cf034"
            number8 = localValue1
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a7db4cf034".
            workingValue(text3, number8)
          end
        end
      end
    end
  end
  -- Beginner: Create an interaction area around a world position.
  dataCollection3(dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection)
  dataCollection3 = tCMG
  dataCollection3 = dataCollection3.addMarker
  dataCollection4 = localValue2.blackPosition
  dataCollection4 = dataCollection4.x
  dataCollection5 = localValue2.blackPosition
  dataCollection5 = dataCollection5.y
  dataCollection6 = localValue2.blackPosition
  dataCollection6 = dataCollection6.z
  iterator = 1.0
  dataCollection7 = 1.0
  iterator2 = 1.0
  dataCollection = 255
  number2 = 0
  number3 = 0
  number5 = 170
  number6 = 50
  number7 = 27
  -- Beginner: Create a world marker.
  dataCollection3(dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6, number7)
  dataCollection3 = CMG
  dataCollection3 = dataCollection3.createArea
  dataCollection4 = "chess_spectate_"
  dataCollection5 = localValue1
  dataCollection4 = dataCollection4 .. dataCollection5
  dataCollection5 = localValue2.spectatePosition
  dataCollection6 = 2.0
  iterator = 6

  -- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
  function dataCollection7()
    local workingValue, text3
  end

  -- === HELPER FUNCTION: iterator2() ===
  function iterator2()
    local workingValue, text3
  end

  -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
  function dataCollection()
    local workingValue, text3, number8, stateFlag5, stateFlag6, number9, stateFlag7, stateFlag8, workingValue13, workingValue15, number, stateFlag, number4
    workingValue = localValue3.spectatingCamera
    if 0 == workingValue then
      workingValue = localValue3.playingSide
      if not workingValue then
        workingValue = drawNativeNotification
        text3 = [[
Press ~INPUT_CONTEXT~ to spectate the board
Press ~INPUT_MELEE_ATTACK_LIGHT~ to reset the board]]
        -- Beginner: Show a GTA-style notification/help prompt.
        workingValue(text3)
        workingValue = IsControlJustPressed
        text3 = 0
        number8 = 51
        workingValue = workingValue(text3, number8)
        if workingValue then
          workingValue = GetGameplayCamCoord
          workingValue = workingValue()
          text3 = GetGameplayCamRot
          number8 = 2
          text3 = text3(number8)
          number8 = CreateCamWithParams
          stateFlag5 = "DEFAULT_SCRIPTED_CAMERA"
          stateFlag6 = workingValue.x
          number9 = workingValue.y
          stateFlag7 = workingValue.z
          stateFlag8 = text3.x
          workingValue13 = text3.y
          workingValue15 = text3.z
          number = 50.0
          stateFlag = true
          number4 = 2
          number8 = number8(stateFlag5, stateFlag6, number9, stateFlag7, stateFlag8, workingValue13, workingValue15, number, stateFlag, number4)
          localValue3.spectatingCamera = number8
          number8 = RenderScriptCams
          stateFlag5 = true
          stateFlag6 = true
          number9 = 1000
          stateFlag7 = true
          stateFlag8 = true
          number8(stateFlag5, stateFlag6, number9, stateFlag7, stateFlag8)
          number8 = eventHandler
          stateFlag5 = localValue1
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          number8(stateFlag5)
          number8 = CMG
          number8 = number8.hideAllDisplays
          stateFlag5 = "chess"
          number8(stateFlag5)
        end
        workingValue = DisableControlAction
        text3 = 0
        number8 = 140
        stateFlag5 = true
        workingValue(text3, number8, stateFlag5)
        workingValue = IsDisabledControlPressed
        text3 = 0
        number8 = 140
        workingValue = workingValue(text3, number8)
        if workingValue then
          workingValue = TriggerServerEvent
          text3 = "a07cde6467"
          number8 = localValue1
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a07cde6467".
          workingValue(text3, number8)
        end
      end
    end
  end
  -- Beginner: Create an interaction area around a world position.
  dataCollection3(dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection)
  dataCollection3 = tCMG
  dataCollection3 = dataCollection3.addMarker
  dataCollection4 = localValue2.spectatePosition
  dataCollection4 = dataCollection4.x
  dataCollection5 = localValue2.spectatePosition
  dataCollection5 = dataCollection5.y
  dataCollection6 = localValue2.spectatePosition
  dataCollection6 = dataCollection6.z
  iterator = 1.0
  dataCollection7 = 1.0
  iterator2 = 1.0
  dataCollection = 0
  number2 = 0
  number3 = 255
  number5 = 170
  number6 = 50
  number7 = 27
  -- Beginner: Create a world marker.
  dataCollection3(dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6, number7)
  dataCollection3 = tCMG
  dataCollection3 = dataCollection3.addBlip
  dataCollection4 = localValue2.spectatePosition
  dataCollection4 = dataCollection4.x
  dataCollection5 = localValue2.spectatePosition
  dataCollection5 = dataCollection5.y
  dataCollection6 = localValue2.spectatePosition
  dataCollection6 = dataCollection6.z
  iterator = 183
  dataCollection7 = 13
  iterator2 = "Chess"
  dataCollection = 1.0
  number2 = false
  -- Beginner: Create a minimap blip.
  dataCollection3(dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2)
  dataCollection3 = Citizen
  dataCollection3 = dataCollection3.CreateThread

  -- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: none) ===
  function dataCollection4()
    local workingValue, text3, number8, stateFlag5, stateFlag6, number9, stateFlag7, stateFlag8, workingValue13
    workingValue = Citizen
    workingValue = workingValue.Wait
    text3 = 2000
    workingValue(text3)
    workingValue = CMG
    workingValue = workingValue.createArea
    text3 = "chess_radius_"
    number8 = localValue1
    text3 = text3 .. number8
    number8 = localValue2.spectatePosition
    stateFlag5 = 250.0
    stateFlag6 = 100.0

    -- === HELPER FUNCTION (decompiler name: number9; parameters: none) ===
    function number9()
      local workingValue2, workingValue6, workingValue9
      workingValue2 = localValue1
      workingValue8 = workingValue2
      localValue3.insideRadius = true
      workingValue2 = localValue3.boardFEN
      if workingValue2 then
        workingValue2 = workingValue12
        workingValue6 = localValue1
        workingValue9 = localValue3
        workingValue2(workingValue6, workingValue9)
      end
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: none) ===
    function stateFlag7()
      local workingValue2, workingValue6
      localValue3.insideRadius = false
      workingValue2 = workingValue11
      workingValue6 = localValue3
      workingValue2(workingValue6)
      workingValue2 = localValue3.boardObject
      if 0 ~= workingValue2 then
        workingValue2 = DeleteEntity
        workingValue6 = localValue3.boardObject
        -- Beginner: Delete a GTA entity.
        workingValue2(workingValue6)
        localValue3.boardObject = 0
      end
      workingValue2 = nil
      workingValue8 = workingValue2
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: none) ===
    function stateFlag8()
      local workingValue2, workingValue6
    end
    workingValue13 = nil
    -- Beginner: Create an interaction area around a world position.
    workingValue(text3, number8, stateFlag5, stateFlag6, number9, stateFlag7, stateFlag8, workingValue13)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  dataCollection3(dataCollection4)
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, dataCollection3, dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7
  localValue1 = AddTextEntryByHash
  localValue2 = 198910421
  localValue3 = [[
~INPUT_SELECT_WEAPON_UNARMED~ White View
~INPUT_SELECT_WEAPON_MELEE~ Black View
~INPUT_SELECT_WEAPON_SHOTGUN~ Birds View
~INPUT_FRONTEND_PAUSE_ALTERNATE~ Exit Spectate]]
  localValue1(localValue2, localValue3)
  localValue1 = pairs
  localValue2 = cmgOperation.locations
  localValue1, localValue2, localValue3, dataCollection3 = localValue1(localValue2)
  for dataCollection4, dataCollection5 in localValue1, localValue2, localValue3, dataCollection3 do
    dataCollection6 = text4
    iterator = dataCollection4
    dataCollection7 = dataCollection5
    dataCollection6(iterator, dataCollection7)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(workingValue14)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1, localValue2) ===
function backgroundThread(localValue1, localValue2)
  local localValue3, dataCollection3, dataCollection4, dataCollection5, dataCollection6
  localValue3 = CMG
  localValue3 = localValue3.parseChessFEN
  dataCollection3 = localValue1.boardFEN
  localValue3, dataCollection3 = localValue3(dataCollection3)
  dataCollection4 = SendNUIMessage
  dataCollection5 = {}
  dataCollection5.displayChessBoard = true
  dataCollection5.visible = localValue2
  dataCollection5.activeColour = dataCollection3
  dataCollection6 = localValue1.bPlayingActive
  dataCollection5.playingActive = dataCollection6
  dataCollection6 = localValue1.playingSide
  dataCollection5.playingSide = dataCollection6
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  dataCollection4(dataCollection5)
  dataCollection4 = workingValue10
  dataCollection5 = localValue1
  dataCollection4(dataCollection5)
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1) ===
function workingValue14(localValue1)
  local localValue2, localValue3, dataCollection3
  localValue2 = localValue1.bViewingBoard
  localValue2 = not localValue2
  localValue1.bViewingBoard = localValue2
  localValue2 = SetNuiFocus
  localValue3 = localValue1.bViewingBoard
  dataCollection3 = localValue1.bViewingBoard
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  localValue2(localValue3, dataCollection3)
  localValue2 = SetNuiFocusKeepInput
  localValue3 = localValue1.bViewingBoard
  localValue2(localValue3)
  localValue2 = backgroundThread
  localValue3 = localValue1
  dataCollection3 = localValue1.bViewingBoard
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3, dataCollection3)
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, localValue3, dataCollection3, dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6
  localValue1 = workingValue8
  if not localValue1 then
    return
  end
  localValue2 = workingValue8
  localValue1 = dataCollection2
  localValue1 = localValue1[localValue2]
  localValue2 = localValue1.playingSide
  if localValue2 then
    localValue2 = Citizen
    localValue2 = localValue2.InvokeNative
    localValue3 = -6795882342541246497
    dataCollection3 = -1209618476
    localValue2(localValue3, dataCollection3)
    localValue2 = localValue1.insideStartMarker
    if not localValue2 then
      localValue2 = drawNativeNotification
      localValue3 = "Press ~INPUT_INTERACTION_MENU~ to toggle board"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue2(localValue3)
    end
    localValue2 = IsControlJustPressed
    localValue3 = 0
    dataCollection3 = 244
    localValue2 = localValue2(localValue3, dataCollection3)
    if localValue2 then
      localValue2 = workingValue14
      localValue3 = localValue1
      localValue2(localValue3)
    end
    localValue2 = localValue1.bPlayingActive
    if localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.parseChessFEN
      localValue3 = localValue1.boardFEN
      localValue2, localValue3 = localValue2(localValue3)
      dataCollection3 = localValue1.playingSide
      if localValue3 == dataCollection3 then
        dataCollection3 = drawNativeText
        dataCollection4 = "~g~Your turn to make a move."
        -- Beginner: Draw GTA-style text on screen.
        dataCollection3(dataCollection4)
      else
        dataCollection3 = drawNativeText
        dataCollection4 = string
        dataCollection4 = dataCollection4.format
        dataCollection5 = "~y~%s is making their move."
        if "w" == localValue3 then
          dataCollection6 = "White"
          if dataCollection6 then
            goto continueAtStep55
          end
        end
        dataCollection6 = "Black"
        ::continueAtStep55::
        dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6 = dataCollection4(dataCollection5, dataCollection6)
        dataCollection3(dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6)
      end
    else
      localValue2 = drawNativeText
      localValue3 = "~y~Waiting for other player to join..."
      -- Beginner: Draw GTA-style text on screen.
      localValue2(localValue3)
    end
    localValue2 = CMG
    localValue2 = localValue2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue2 = localValue2()
    localValue3 = cmgOperation.locations
    dataCollection3 = workingValue8
    localValue3 = localValue3[dataCollection3]
    localValue3 = localValue3.originPosition
    localValue2 = localValue2 - localValue3
    localValue2 = #localValue2
    if localValue2 > 40.0 then
      localValue2 = TriggerServerEvent
      localValue3 = "a7db4cf034"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a7db4cf034".
      localValue2(localValue3)
    end
  end
  localValue2 = localValue1.bViewingBoard
  if localValue2 then
    localValue2 = 0
    localValue3 = 6
    dataCollection3 = 1
    for dataCollection4 = localValue2, localValue3, dataCollection3 do
      dataCollection5 = DisableControlAction
      dataCollection6 = 0
      iterator = dataCollection4
      dataCollection7 = true
      dataCollection5(dataCollection6, iterator, dataCollection7)
    end
    localValue2 = DisablePlayerFiring
    localValue3 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue3 = localValue3()
    dataCollection3 = true
    localValue2(localValue3, dataCollection3)
    localValue2 = DisableControlAction
    localValue3 = 0
    dataCollection3 = 24
    dataCollection4 = true
    localValue2(localValue3, dataCollection3, dataCollection4)
    localValue2 = DisableControlAction
    localValue3 = 0
    dataCollection3 = 25
    dataCollection4 = true
    localValue2(localValue3, dataCollection3, dataCollection4)
    localValue2 = DisableControlAction
    localValue3 = 0
    dataCollection3 = 200
    dataCollection4 = true
    localValue2(localValue3, dataCollection3, dataCollection4)
    localValue2 = IsDisabledControlJustReleased
    localValue3 = 0
    dataCollection3 = 200
    localValue2 = localValue2(localValue3, dataCollection3)
    if localValue2 then
      localValue2 = workingValue14
      localValue3 = localValue1
      localValue2(localValue3)
    end
  end
  localValue2 = localValue1.spectatingCamera
  if 0 ~= localValue2 then
    localValue2 = Citizen
    localValue2 = localValue2.InvokeNative
    localValue3 = -6795882342541246497
    dataCollection3 = -1209618476
    localValue2(localValue3, dataCollection3)
    localValue2 = DisableAllControlActions
    localValue3 = 0
    localValue2(localValue3)
    localValue2 = BeginTextCommandDisplayHelp
    localValue3 = "STRING"
    localValue2(localValue3)
    localValue2 = AddTextComponentSubstringTextLabel
    localValue3 = "CHESS_SPECTATE"
    localValue2(localValue3)
    localValue2 = EndTextCommandDisplayHelp
    localValue3 = 0
    dataCollection3 = false
    dataCollection4 = false
    dataCollection5 = -1
    localValue2(localValue3, dataCollection3, dataCollection4, dataCollection5)
    localValue2 = IsDisabledControlJustPressed
    localValue3 = 0
    dataCollection3 = 157
    localValue2 = localValue2(localValue3, dataCollection3)
    if localValue2 then
      localValue2 = cmgOperation.locations
      localValue3 = workingValue8
      localValue2 = localValue2[localValue3]
      localValue2 = localValue2.originPosition
      localValue3 = vector3
      dataCollection3 = 24.0
      dataCollection4 = 10.0
      dataCollection5 = 10.0
      localValue3 = localValue3(dataCollection3, dataCollection4, dataCollection5)
      localValue2 = localValue2 + localValue3
      localValue3 = SetCamParams
      dataCollection3 = localValue1.spectatingCamera
      dataCollection4 = localValue2.x
      dataCollection5 = localValue2.y
      dataCollection6 = localValue2.z
      iterator = -45.0
      dataCollection7 = 0.0
      iterator2 = 90.0
      dataCollection = 50.0
      number2 = 1000
      number3 = 0
      number5 = 0
      number6 = 2
      localValue3(dataCollection3, dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6)
    else
      localValue2 = IsDisabledControlJustPressed
      localValue3 = 0
      dataCollection3 = 158
      localValue2 = localValue2(localValue3, dataCollection3)
      if localValue2 then
        localValue2 = cmgOperation.locations
        localValue3 = workingValue8
        localValue2 = localValue2[localValue3]
        localValue2 = localValue2.originPosition
        localValue3 = vector3
        dataCollection3 = -3.0
        dataCollection4 = 10.0
        dataCollection5 = 10.0
        localValue3 = localValue3(dataCollection3, dataCollection4, dataCollection5)
        localValue2 = localValue2 + localValue3
        localValue3 = SetCamParams
        dataCollection3 = localValue1.spectatingCamera
        dataCollection4 = localValue2.x
        dataCollection5 = localValue2.y
        dataCollection6 = localValue2.z
        iterator = -45.0
        dataCollection7 = 0.0
        iterator2 = -90.0
        dataCollection = 50.0
        number2 = 1000
        number3 = 0
        number5 = 0
        number6 = 2
        localValue3(dataCollection3, dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6)
      else
        localValue2 = IsDisabledControlJustPressed
        localValue3 = 0
        dataCollection3 = 160
        localValue2 = localValue2(localValue3, dataCollection3)
        if localValue2 then
          localValue2 = eventHandler
          localValue3 = workingValue8
          -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: nil.
          localValue2(localValue3)
        else
          localValue2 = IsDisabledControlJustReleased
          localValue3 = 0
          dataCollection3 = 200
          localValue2 = localValue2(localValue3, dataCollection3)
          if localValue2 then
            localValue2 = RenderScriptCams
            localValue3 = false
            dataCollection3 = true
            dataCollection4 = 1000
            dataCollection5 = false
            dataCollection6 = false
            localValue2(localValue3, dataCollection3, dataCollection4, dataCollection5, dataCollection6)
            localValue2 = SetCamActive
            localValue3 = localValue1.spectatingCamera
            dataCollection3 = false
            localValue2(localValue3, dataCollection3)
            localValue2 = DestroyCam
            localValue3 = localValue1.spectatingCamera
            dataCollection3 = true
            localValue2(localValue3, dataCollection3)
            localValue1.spectatingCamera = 0
            localValue2 = CMG
            localValue2 = localValue2.showAllDisplays
            localValue3 = "chess"
            localValue2(localValue3)
          end
        end
      end
    end
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
text = workingValue3
text2 = "Chess Board"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(text, text2)
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2
  localValue1 = workingValue8
  if localValue1 then
    localValue2 = workingValue8
    localValue1 = dataCollection2
    localValue1 = localValue1[localValue2]
    localValue1 = localValue1.playingSide
    localValue1 = nil ~= localValue1
    return localValue1
  else
    localValue1 = false
    return localValue1
  end
end
cmgOperation2.inChessGame = text
cmgOperation2 = RegisterNUICallback
text = "chessUpdatedFEN"

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, dataCollection3, dataCollection4
  localValue2 = workingValue8
  if localValue2 then
    localValue3 = workingValue8
    localValue2 = dataCollection2
    localValue2 = localValue2[localValue3]
    localValue3 = localValue2.bViewingBoard
    if localValue3 then
      localValue3 = localValue2.bPlayingActive
      if localValue3 then
        localValue3 = TriggerServerEvent
        dataCollection3 = "604b58a33c"
        dataCollection4 = localValue1
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "604b58a33c".
        localValue3(dataCollection3, dataCollection4)
      end
    end
  end
end
cmgOperation2(text, text2)
cmgOperation2 = RegisterNUICallback
text = "chessPlayCheckSound"

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = workingValue8
  if localValue1 then
    localValue2 = workingValue8
    localValue1 = dataCollection2
    localValue1 = localValue1[localValue2]
    localValue1 = localValue1.bViewingBoard
    if localValue1 then
      localValue1 = SendNUIMessage
      localValue2 = {}
      localValue2.transactionType = "chess_notify"
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      localValue1(localValue2)
    end
  end
end
cmgOperation2(text, text2)
cmgOperation2 = RegisterNetEvent
text = "29d5f19513"
-- Beginner: this function handles network event "29d5f19513".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2, localValue3) ===
function text2(localValue1, localValue2, localValue3)
  local dataCollection3, dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7, iterator2, dataCollection, number2, number3, number5, number6, number7, cmgOperation3, createVector3, workingValue4, workingValue5, heading
  dataCollection3 = Citizen
  dataCollection3 = dataCollection3.Wait
  dataCollection4 = 5000
  dataCollection3(dataCollection4)
  dataCollection3 = dataCollection2
  dataCollection3 = dataCollection3[localValue1]
  dataCollection4 = dataCollection3.bViewingBoard
  if dataCollection4 then
    dataCollection4 = workingValue14
    dataCollection5 = dataCollection3
    dataCollection4(dataCollection5)
  end
  dataCollection4 = CMG
  dataCollection4 = dataCollection4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  dataCollection4 = dataCollection4()
  dataCollection5 = cmgOperation.locations
  dataCollection5 = dataCollection5[localValue1]
  dataCollection5 = dataCollection5.originPosition
  dataCollection4 = dataCollection4 - dataCollection5
  dataCollection4 = #dataCollection4
  if dataCollection4 < 75.0 then
    if localValue2 then
      dataCollection4 = CMG
      dataCollection4 = dataCollection4.announceMpBigMsg
      dataCollection5 = "STALEMATE"
      dataCollection6 = "The chess game has ended with a draw!"
      iterator = 10000
      dataCollection7 = true
      iterator2 = true
      dataCollection4(dataCollection5, dataCollection6, iterator, dataCollection7, iterator2)
    else
      dataCollection4 = CMG
      dataCollection4 = dataCollection4.announceMpBigMsg
      dataCollection5 = "CHECKMATE"
      dataCollection6 = string
      dataCollection6 = dataCollection6.format
      iterator = "%s has won the chess game!"
      dataCollection7 = localValue3
      dataCollection6 = dataCollection6(iterator, dataCollection7)
      iterator = 10000
      dataCollection7 = true
      iterator2 = true
      dataCollection4(dataCollection5, dataCollection6, iterator, dataCollection7, iterator2)
    end
  end
  dataCollection4 = dataCollection3.boardObjects
  if dataCollection4 then
    dataCollection4 = pairs
    dataCollection5 = dataCollection3.boardObjects
    dataCollection4, dataCollection5, dataCollection6, iterator = dataCollection4(dataCollection5)
    for dataCollection7, iterator2 in dataCollection4, dataCollection5, dataCollection6, iterator do
      dataCollection = pairs
      number2 = iterator2
      dataCollection, number2, number3, number5 = dataCollection(number2)
      for number6, number7 in dataCollection, number2, number3, number5 do
        if 0 ~= number7 then
          cmgOperation3 = GetEntityModel
          createVector3 = number7
          -- Beginner: result below is modelHash.
          cmgOperation3 = cmgOperation3(createVector3)
          if "White" == localValue3 and -581108805 == cmgOperation3 then
            createVector3 = CMG
            createVector3 = createVector3.startFireworksAtCoord
            workingValue4 = GetEntityCoords
            workingValue5 = number7
            heading = true
            workingValue4, workingValue5, heading = workingValue4(workingValue5, heading)
            createVector3(workingValue4, workingValue5, heading)
          elseif "Black" == localValue3 and -864843523 == cmgOperation3 then
            createVector3 = CMG
            createVector3 = createVector3.startFireworksAtCoord
            workingValue4 = GetEntityCoords
            workingValue5 = number7
            heading = true
            workingValue4, workingValue5, heading = workingValue4(workingValue5, heading)
            createVector3(workingValue4, workingValue5, heading)
          end
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "29d5f19513".
cmgOperation2(text, text2)
cmgOperation2 = AddEventHandler
text = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, dataCollection3, dataCollection4, dataCollection5, dataCollection6, iterator, dataCollection7
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 == localValue1 then
    localValue2 = pairs
    localValue3 = dataCollection2
    localValue2, localValue3, dataCollection3, dataCollection4 = localValue2(localValue3)
    for dataCollection5, dataCollection6 in localValue2, localValue3, dataCollection3, dataCollection4 do
      iterator = dataCollection6.boardObject
      if 0 ~= iterator then
        iterator = DeleteEntity
        dataCollection7 = dataCollection6.boardObject
        -- Beginner: Delete a GTA entity.
        iterator(dataCollection7)
      end
      iterator = workingValue11
      dataCollection7 = dataCollection6
      iterator(dataCollection7)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation2(text, text2)
