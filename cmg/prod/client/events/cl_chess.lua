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
local cmgCall, dataTable2, workValue8, workValue10, workValue11, workValue12, eventRegistration, textValue4, threadCall, workValue14, workValue3, cmgCall2, textValue, textValue2
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable2 = "cfg/cfg_chess"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable2)
dataTable2 = {}
workValue8 = nil

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1) ===
function workValue10(arg1)
  local arg2, arg3, dataTable3
  arg2 = arg1.bViewingBoard
  if arg2 then
    arg2 = SendNUIMessage
    arg3 = {}
    arg3.updateChessBoard = true
    dataTable3 = arg1.boardFEN
    arg3.fen = dataTable3
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg2(arg3)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1) ===
function workValue11(arg1)
  local arg2, arg3, dataTable3, dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6
  arg2 = arg1.boardObjects
  if arg2 then
    arg2 = pairs
    arg3 = arg1.boardObjects
    arg2, arg3, dataTable3, dataTable4 = arg2(arg3)
    for dataTable5, dataTable6 in arg2, arg3, dataTable3, dataTable4 do
      iterator = pairs
      dataTable7 = dataTable6
      iterator, dataTable7, iterator2, dataTable = iterator(dataTable7)
      for numberValue2, numberValue3 in iterator, dataTable7, iterator2, dataTable do
        if 0 ~= numberValue3 then
          numberValue5 = DeleteEntity
          numberValue6 = numberValue3
          -- Beginner: Delete a GTA entity.
          numberValue5(numberValue6)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: arg1, arg2) ===
function workValue12(arg1, arg2)
  local arg3, dataTable3, dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6, numberValue7, cmgCall3, vector3Builder, workValue4, workValue5, heading, workValue7, flag2, flag3, flag4
  arg3 = arg2.insideRadius
  if not arg3 then
    return
  end
  arg3 = workValue11
  dataTable3 = arg2
  arg3(dataTable3)
  arg3 = {}
  dataTable3 = {}
  dataTable4 = {}
  dataTable5 = {}
  dataTable6 = {}
  iterator = {}
  dataTable7 = {}
  iterator2 = {}
  dataTable = {}
  arg3[1] = dataTable3
  arg3[2] = dataTable4
  arg3[3] = dataTable5
  arg3[4] = dataTable6
  arg3[5] = iterator
  arg3[6] = dataTable7
  arg3[7] = iterator2
  arg3[8] = dataTable
  arg2.boardObjects = arg3
  arg3 = arg2.boardObject
  if 0 == arg3 then
    arg3 = CMG
    arg3 = arg3.loadModel
    dataTable3 = 1235783144
    -- Beginner: Request/load a GTA model before spawning or applying it.
    arg3(dataTable3)
    arg3 = CreateObject
    dataTable3 = 1235783144
    dataTable4 = cmgCall.locations
    dataTable4 = dataTable4[arg1]
    dataTable4 = dataTable4.originPosition
    dataTable4 = dataTable4.x
    dataTable4 = dataTable4 + 10.1
    dataTable5 = cmgCall.locations
    dataTable5 = dataTable5[arg1]
    dataTable5 = dataTable5.originPosition
    dataTable5 = dataTable5.y
    dataTable5 = dataTable5 + 9.25
    dataTable6 = cmgCall.locations
    dataTable6 = dataTable6[arg1]
    dataTable6 = dataTable6.originPosition
    dataTable6 = dataTable6.z
    dataTable6 = dataTable6 - 42.85
    iterator = false
    dataTable7 = false
    iterator2 = false
    -- Beginner: result below is objectEntity.
    arg3 = arg3(dataTable3, dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2)
    arg2.boardObject = arg3
    arg3 = FreezeEntityPosition
    dataTable3 = arg2.boardObject
    dataTable4 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg3(dataTable3, dataTable4)
    arg3 = SetEntityLodDist
    dataTable3 = arg2.boardObject
    dataTable4 = 200
    arg3(dataTable3, dataTable4)
    arg3 = SetModelAsNoLongerNeeded
    dataTable3 = 1235783144
    arg3(dataTable3)
  end
  arg3 = CMG
  arg3 = arg3.parseChessFEN
  dataTable3 = arg2.boardFEN
  arg3 = arg3(dataTable3)
  dataTable3 = pairs
  dataTable4 = arg3
  dataTable3, dataTable4, dataTable5, dataTable6 = dataTable3(dataTable4)
  for iterator, dataTable7 in dataTable3, dataTable4, dataTable5, dataTable6 do
    iterator2 = pairs
    dataTable = dataTable7
    iterator2, dataTable, numberValue2, numberValue3 = iterator2(dataTable)
    for numberValue5, numberValue6 in iterator2, dataTable, numberValue2, numberValue3 do
      numberValue7 = cmgCall.pieceToArchetypeMap
      numberValue7 = numberValue7[numberValue6]
      if numberValue7 then
        cmgCall3 = CMG
        cmgCall3 = cmgCall3.loadModel
        vector3Builder = numberValue7
        -- Beginner: Request/load a GTA model before spawning or applying it.
        cmgCall3(vector3Builder)
        cmgCall3 = cmgCall.locations
        cmgCall3 = cmgCall3[arg1]
        cmgCall3 = cmgCall3.originPosition
        vector3Builder = vector3
        workValue4 = cmgCall.squareSize
        workValue4 = iterator * workValue4
        workValue5 = cmgCall.squareSize
        workValue5 = numberValue5 * workValue5
        heading = 0.0
        vector3Builder = vector3Builder(workValue4, workValue5, heading)
        cmgCall3 = cmgCall3 + vector3Builder
        vector3Builder = cmgCall.archetypeToOffsetMap
        vector3Builder = vector3Builder[numberValue7]
        cmgCall3 = cmgCall3 - vector3Builder
        vector3Builder = CreateObjectNoOffset
        workValue4 = numberValue7
        workValue5 = cmgCall3.x
        heading = cmgCall3.y
        workValue7 = cmgCall3.z
        flag2 = false
        flag3 = false
        flag4 = false
        -- Beginner: result below is objectEntity.
        vector3Builder = vector3Builder(workValue4, workValue5, heading, workValue7, flag2, flag3, flag4)
        workValue4 = SetEntityHeading
        workValue5 = vector3Builder
        heading = GetEntityHeading
        workValue7 = vector3Builder
        -- Beginner: result below is heading.
        heading = heading(workValue7)
        workValue7 = cmgCall.archetypeToHeadingsMap
        workValue7 = workValue7[numberValue7]
        heading = heading + workValue7
        -- Beginner: Change the direction an entity is facing.
        workValue4(workValue5, heading)
        workValue4 = FreezeEntityPosition
        workValue5 = vector3Builder
        heading = true
        -- Beginner: Freeze or unfreeze an entity in place.
        workValue4(workValue5, heading)
        workValue4 = SetEntityLodDist
        workValue5 = vector3Builder
        heading = 200
        workValue4(workValue5, heading)
        workValue4 = table
        workValue4 = workValue4.insert
        workValue5 = arg2.boardObjects
        workValue5 = workValue5[iterator]
        heading = vector3Builder
        workValue4(workValue5, heading)
        workValue4 = SetModelAsNoLongerNeeded
        workValue5 = numberValue7
        workValue4(workValue5)
      end
    end
  end
end
eventRegistration = RegisterNetEvent
textValue4 = "a641ace444"
-- Beginner: this function handles network event "a641ace444".

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1, arg2) ===
function threadCall(arg1, arg2)
  local arg3, dataTable3, dataTable4, dataTable5
  arg3 = dataTable2
  arg3 = arg3[arg1]
  dataTable3 = arg3.bViewingBoard
  if dataTable3 then
    dataTable3 = SendNUIMessage
    dataTable4 = {}
    dataTable4.transactionType = "chess_move"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    dataTable3(dataTable4)
  end
  arg3.boardFEN = arg2
  dataTable3 = workValue10
  dataTable4 = arg3
  dataTable3(dataTable4)
  dataTable3 = workValue12
  dataTable4 = arg1
  dataTable5 = arg3
  dataTable3(dataTable4, dataTable5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a641ace444".
eventRegistration(textValue4, threadCall)
eventRegistration = RegisterNetEvent
textValue4 = "36e0214c1e"
-- Beginner: this function handles network event "36e0214c1e".

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1, arg2) ===
function threadCall(arg1, arg2)
  local arg3
  arg3 = dataTable2
  arg3 = arg3[arg1]
  if not arg2 then
    arg3.bPlayingActive = false
  end
  arg3.playingSide = arg2
end
eventRegistration(textValue4, threadCall)
eventRegistration = RegisterNetEvent
textValue4 = "a8fdaf5c82"
-- Beginner: this function handles network event "a8fdaf5c82".

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1, arg2) ===
function threadCall(arg1, arg2)
  local arg3
  arg3 = dataTable2
  arg3 = arg3[arg1]
  arg3.bPlayingActive = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a8fdaf5c82".
eventRegistration(textValue4, threadCall)
-- Beginner: this function handles network event "a8fdaf5c82".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2, arg3, dataTable3, dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6
  arg2 = cmgCall.locations
  arg2 = arg2[arg1]
  arg2 = arg2.originPosition
  arg3 = vector3
  dataTable3 = 10.0
  dataTable4 = 10.0
  dataTable5 = 20.0
  arg3 = arg3(dataTable3, dataTable4, dataTable5)
  arg2 = arg2 + arg3
  arg3 = SetCamParams
  dataTable3 = dataTable2
  dataTable3 = dataTable3[arg1]
  dataTable3 = dataTable3.spectatingCamera
  dataTable4 = arg2.x
  dataTable5 = arg2.y
  dataTable6 = arg2.z
  iterator = -90.0
  dataTable7 = 0.0
  iterator2 = 90.0
  dataTable = 50.0
  numberValue2 = 1000
  numberValue3 = 0
  numberValue5 = 0
  numberValue6 = 2
  arg3(dataTable3, dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6)
end

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2) ===
function textValue4(arg1, arg2)
  local arg3, dataTable3, dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6, numberValue7
  arg3 = dataTable2
  dataTable3 = {}
  dataTable3.boardFEN = nil
  dataTable3.boardObject = 0
  dataTable4 = {}
  dataTable3.boardObjects = dataTable4
  dataTable3.playingSide = nil
  dataTable3.playingActive = false
  dataTable3.bViewingBoard = false
  dataTable3.spectatingCamera = 0
  dataTable3.insideStartMarker = false
  dataTable3.insideRadius = false
  arg3[arg1] = dataTable3
  arg3 = dataTable2
  arg3 = arg3[arg1]
  dataTable3 = CMG
  dataTable3 = dataTable3.createArea
  dataTable4 = "chess_white_"
  dataTable5 = arg1
  dataTable4 = dataTable4 .. dataTable5
  dataTable5 = arg2.whitePosition
  dataTable6 = 1.5
  iterator = 6

  -- === HELPER FUNCTION (decompiler name: dataTable7; parameters: none) ===
  function dataTable7()
    local workValue, textValue3
    arg3.insideStartMarker = true
  end

  -- === HELPER FUNCTION: iterator2() ===
  function iterator2()
    local workValue, textValue3
    arg3.insideStartMarker = false
  end

  -- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
  function dataTable()
    local workValue, textValue3, numberValue8
    workValue = arg3.playingSide
    if not workValue then
      workValue = drawNativeNotification
      textValue3 = "Press ~INPUT_CONTEXT~ to play as white"
      -- Beginner: Show a GTA-style notification/help prompt.
      workValue(textValue3)
      workValue = IsControlJustPressed
      textValue3 = 0
      numberValue8 = 51
      workValue = workValue(textValue3, numberValue8)
      if workValue then
        workValue = TriggerServerEvent
        textValue3 = "5f8c0ed877"
        numberValue8 = arg1
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5f8c0ed877".
        workValue(textValue3, numberValue8)
      end
    else
      workValue = arg3.playingSide
      if "w" == workValue then
        workValue = drawNativeNotification
        textValue3 = [[
Press ~INPUT_CONTEXT~ to resign.
Press ~INPUT_INTERACTION_MENU~ to toggle board]]
        -- Beginner: Show a GTA-style notification/help prompt.
        workValue(textValue3)
        workValue = IsControlJustPressed
        textValue3 = 0
        numberValue8 = 51
        workValue = workValue(textValue3, numberValue8)
        if workValue then
          workValue = arg3.bViewingBoard
          if not workValue then
            workValue = TriggerServerEvent
            textValue3 = "a7db4cf034"
            numberValue8 = arg1
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a7db4cf034".
            workValue(textValue3, numberValue8)
          end
        end
      end
    end
  end
  -- Beginner: Create an interaction area around a world position.
  dataTable3(dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable)
  dataTable3 = tCMG
  dataTable3 = dataTable3.addMarker
  dataTable4 = arg2.whitePosition
  dataTable4 = dataTable4.x
  dataTable5 = arg2.whitePosition
  dataTable5 = dataTable5.y
  dataTable6 = arg2.whitePosition
  dataTable6 = dataTable6.z
  iterator = 1.0
  dataTable7 = 1.0
  iterator2 = 1.0
  dataTable = 255
  numberValue2 = 0
  numberValue3 = 0
  numberValue5 = 170
  numberValue6 = 50
  numberValue7 = 27
  -- Beginner: Create a world marker.
  dataTable3(dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6, numberValue7)
  dataTable3 = CMG
  dataTable3 = dataTable3.createArea
  dataTable4 = "chess_black_"
  dataTable5 = arg1
  dataTable4 = dataTable4 .. dataTable5
  dataTable5 = arg2.blackPosition
  dataTable6 = 1.5
  iterator = 6

  -- === HELPER FUNCTION (decompiler name: dataTable7; parameters: none) ===
  function dataTable7()
    local workValue, textValue3
    arg3.insideStartMarker = true
  end

  -- === HELPER FUNCTION: iterator2() ===
  function iterator2()
    local workValue, textValue3
    arg3.insideStartMarker = false
  end

  -- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
  function dataTable()
    local workValue, textValue3, numberValue8
    workValue = arg3.playingSide
    if not workValue then
      workValue = drawNativeNotification
      textValue3 = "Press ~INPUT_CONTEXT~ to play as black"
      -- Beginner: Show a GTA-style notification/help prompt.
      workValue(textValue3)
      workValue = IsControlJustPressed
      textValue3 = 0
      numberValue8 = 51
      workValue = workValue(textValue3, numberValue8)
      if workValue then
        workValue = TriggerServerEvent
        textValue3 = "467142150f"
        numberValue8 = arg1
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "467142150f".
        workValue(textValue3, numberValue8)
      end
    else
      workValue = arg3.playingSide
      if "b" == workValue then
        workValue = drawNativeNotification
        textValue3 = [[
Press ~INPUT_CONTEXT~ to resign.
Press ~INPUT_INTERACTION_MENU~ to toggle board]]
        -- Beginner: Show a GTA-style notification/help prompt.
        workValue(textValue3)
        workValue = IsControlJustPressed
        textValue3 = 0
        numberValue8 = 51
        workValue = workValue(textValue3, numberValue8)
        if workValue then
          workValue = arg3.bViewingBoard
          if not workValue then
            workValue = TriggerServerEvent
            textValue3 = "a7db4cf034"
            numberValue8 = arg1
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a7db4cf034".
            workValue(textValue3, numberValue8)
          end
        end
      end
    end
  end
  -- Beginner: Create an interaction area around a world position.
  dataTable3(dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable)
  dataTable3 = tCMG
  dataTable3 = dataTable3.addMarker
  dataTable4 = arg2.blackPosition
  dataTable4 = dataTable4.x
  dataTable5 = arg2.blackPosition
  dataTable5 = dataTable5.y
  dataTable6 = arg2.blackPosition
  dataTable6 = dataTable6.z
  iterator = 1.0
  dataTable7 = 1.0
  iterator2 = 1.0
  dataTable = 255
  numberValue2 = 0
  numberValue3 = 0
  numberValue5 = 170
  numberValue6 = 50
  numberValue7 = 27
  -- Beginner: Create a world marker.
  dataTable3(dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6, numberValue7)
  dataTable3 = CMG
  dataTable3 = dataTable3.createArea
  dataTable4 = "chess_spectate_"
  dataTable5 = arg1
  dataTable4 = dataTable4 .. dataTable5
  dataTable5 = arg2.spectatePosition
  dataTable6 = 2.0
  iterator = 6

  -- === HELPER FUNCTION (decompiler name: dataTable7; parameters: none) ===
  function dataTable7()
    local workValue, textValue3
  end

  -- === HELPER FUNCTION: iterator2() ===
  function iterator2()
    local workValue, textValue3
  end

  -- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
  function dataTable()
    local workValue, textValue3, numberValue8, flag5, flag6, numberValue9, flag7, flag8, workValue13, workValue15, numberValue, flag, numberValue4
    workValue = arg3.spectatingCamera
    if 0 == workValue then
      workValue = arg3.playingSide
      if not workValue then
        workValue = drawNativeNotification
        textValue3 = [[
Press ~INPUT_CONTEXT~ to spectate the board
Press ~INPUT_MELEE_ATTACK_LIGHT~ to reset the board]]
        -- Beginner: Show a GTA-style notification/help prompt.
        workValue(textValue3)
        workValue = IsControlJustPressed
        textValue3 = 0
        numberValue8 = 51
        workValue = workValue(textValue3, numberValue8)
        if workValue then
          workValue = GetGameplayCamCoord
          workValue = workValue()
          textValue3 = GetGameplayCamRot
          numberValue8 = 2
          textValue3 = textValue3(numberValue8)
          numberValue8 = CreateCamWithParams
          flag5 = "DEFAULT_SCRIPTED_CAMERA"
          flag6 = workValue.x
          numberValue9 = workValue.y
          flag7 = workValue.z
          flag8 = textValue3.x
          workValue13 = textValue3.y
          workValue15 = textValue3.z
          numberValue = 50.0
          flag = true
          numberValue4 = 2
          numberValue8 = numberValue8(flag5, flag6, numberValue9, flag7, flag8, workValue13, workValue15, numberValue, flag, numberValue4)
          arg3.spectatingCamera = numberValue8
          numberValue8 = RenderScriptCams
          flag5 = true
          flag6 = true
          numberValue9 = 1000
          flag7 = true
          flag8 = true
          numberValue8(flag5, flag6, numberValue9, flag7, flag8)
          numberValue8 = eventRegistration
          flag5 = arg1
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          numberValue8(flag5)
          numberValue8 = CMG
          numberValue8 = numberValue8.hideAllDisplays
          flag5 = "chess"
          numberValue8(flag5)
        end
        workValue = DisableControlAction
        textValue3 = 0
        numberValue8 = 140
        flag5 = true
        workValue(textValue3, numberValue8, flag5)
        workValue = IsDisabledControlPressed
        textValue3 = 0
        numberValue8 = 140
        workValue = workValue(textValue3, numberValue8)
        if workValue then
          workValue = TriggerServerEvent
          textValue3 = "a07cde6467"
          numberValue8 = arg1
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a07cde6467".
          workValue(textValue3, numberValue8)
        end
      end
    end
  end
  -- Beginner: Create an interaction area around a world position.
  dataTable3(dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable)
  dataTable3 = tCMG
  dataTable3 = dataTable3.addMarker
  dataTable4 = arg2.spectatePosition
  dataTable4 = dataTable4.x
  dataTable5 = arg2.spectatePosition
  dataTable5 = dataTable5.y
  dataTable6 = arg2.spectatePosition
  dataTable6 = dataTable6.z
  iterator = 1.0
  dataTable7 = 1.0
  iterator2 = 1.0
  dataTable = 0
  numberValue2 = 0
  numberValue3 = 255
  numberValue5 = 170
  numberValue6 = 50
  numberValue7 = 27
  -- Beginner: Create a world marker.
  dataTable3(dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6, numberValue7)
  dataTable3 = tCMG
  dataTable3 = dataTable3.addBlip
  dataTable4 = arg2.spectatePosition
  dataTable4 = dataTable4.x
  dataTable5 = arg2.spectatePosition
  dataTable5 = dataTable5.y
  dataTable6 = arg2.spectatePosition
  dataTable6 = dataTable6.z
  iterator = 183
  dataTable7 = 13
  iterator2 = "Chess"
  dataTable = 1.0
  numberValue2 = false
  -- Beginner: Create a minimap blip.
  dataTable3(dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2)
  dataTable3 = Citizen
  dataTable3 = dataTable3.CreateThread

  -- === HELPER FUNCTION (decompiler name: dataTable4; parameters: none) ===
  function dataTable4()
    local workValue, textValue3, numberValue8, flag5, flag6, numberValue9, flag7, flag8, workValue13
    workValue = Citizen
    workValue = workValue.Wait
    textValue3 = 2000
    workValue(textValue3)
    workValue = CMG
    workValue = workValue.createArea
    textValue3 = "chess_radius_"
    numberValue8 = arg1
    textValue3 = textValue3 .. numberValue8
    numberValue8 = arg2.spectatePosition
    flag5 = 250.0
    flag6 = 100.0

    -- === HELPER FUNCTION (decompiler name: numberValue9; parameters: none) ===
    function numberValue9()
      local workValue2, workValue6, workValue9
      workValue2 = arg1
      workValue8 = workValue2
      arg3.insideRadius = true
      workValue2 = arg3.boardFEN
      if workValue2 then
        workValue2 = workValue12
        workValue6 = arg1
        workValue9 = arg3
        workValue2(workValue6, workValue9)
      end
    end

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: none) ===
    function flag7()
      local workValue2, workValue6
      arg3.insideRadius = false
      workValue2 = workValue11
      workValue6 = arg3
      workValue2(workValue6)
      workValue2 = arg3.boardObject
      if 0 ~= workValue2 then
        workValue2 = DeleteEntity
        workValue6 = arg3.boardObject
        -- Beginner: Delete a GTA entity.
        workValue2(workValue6)
        arg3.boardObject = 0
      end
      workValue2 = nil
      workValue8 = workValue2
    end

    -- === HELPER FUNCTION (decompiler name: flag8; parameters: none) ===
    function flag8()
      local workValue2, workValue6
    end
    workValue13 = nil
    -- Beginner: Create an interaction area around a world position.
    workValue(textValue3, numberValue8, flag5, flag6, numberValue9, flag7, flag8, workValue13)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  dataTable3(dataTable4)
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3, dataTable3, dataTable4, dataTable5, dataTable6, iterator, dataTable7
  arg1 = AddTextEntryByHash
  arg2 = 198910421
  arg3 = [[
~INPUT_SELECT_WEAPON_UNARMED~ White View
~INPUT_SELECT_WEAPON_MELEE~ Black View
~INPUT_SELECT_WEAPON_SHOTGUN~ Birds View
~INPUT_FRONTEND_PAUSE_ALTERNATE~ Exit Spectate]]
  arg1(arg2, arg3)
  arg1 = pairs
  arg2 = cmgCall.locations
  arg1, arg2, arg3, dataTable3 = arg1(arg2)
  for dataTable4, dataTable5 in arg1, arg2, arg3, dataTable3 do
    dataTable6 = textValue4
    iterator = dataTable4
    dataTable7 = dataTable5
    dataTable6(iterator, dataTable7)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(workValue14)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1, arg2) ===
function threadCall(arg1, arg2)
  local arg3, dataTable3, dataTable4, dataTable5, dataTable6
  arg3 = CMG
  arg3 = arg3.parseChessFEN
  dataTable3 = arg1.boardFEN
  arg3, dataTable3 = arg3(dataTable3)
  dataTable4 = SendNUIMessage
  dataTable5 = {}
  dataTable5.displayChessBoard = true
  dataTable5.visible = arg2
  dataTable5.activeColour = dataTable3
  dataTable6 = arg1.bPlayingActive
  dataTable5.playingActive = dataTable6
  dataTable6 = arg1.playingSide
  dataTable5.playingSide = dataTable6
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  dataTable4(dataTable5)
  dataTable4 = workValue10
  dataTable5 = arg1
  dataTable4(dataTable5)
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: arg1) ===
function workValue14(arg1)
  local arg2, arg3, dataTable3
  arg2 = arg1.bViewingBoard
  arg2 = not arg2
  arg1.bViewingBoard = arg2
  arg2 = SetNuiFocus
  arg3 = arg1.bViewingBoard
  dataTable3 = arg1.bViewingBoard
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  arg2(arg3, dataTable3)
  arg2 = SetNuiFocusKeepInput
  arg3 = arg1.bViewingBoard
  arg2(arg3)
  arg2 = threadCall
  arg3 = arg1
  dataTable3 = arg1.bViewingBoard
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3, dataTable3)
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2, arg3, dataTable3, dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6
  arg1 = workValue8
  if not arg1 then
    return
  end
  arg2 = workValue8
  arg1 = dataTable2
  arg1 = arg1[arg2]
  arg2 = arg1.playingSide
  if arg2 then
    arg2 = Citizen
    arg2 = arg2.InvokeNative
    arg3 = -6795882342541246497
    dataTable3 = -1209618476
    arg2(arg3, dataTable3)
    arg2 = arg1.insideStartMarker
    if not arg2 then
      arg2 = drawNativeNotification
      arg3 = "Press ~INPUT_INTERACTION_MENU~ to toggle board"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg2(arg3)
    end
    arg2 = IsControlJustPressed
    arg3 = 0
    dataTable3 = 244
    arg2 = arg2(arg3, dataTable3)
    if arg2 then
      arg2 = workValue14
      arg3 = arg1
      arg2(arg3)
    end
    arg2 = arg1.bPlayingActive
    if arg2 then
      arg2 = CMG
      arg2 = arg2.parseChessFEN
      arg3 = arg1.boardFEN
      arg2, arg3 = arg2(arg3)
      dataTable3 = arg1.playingSide
      if arg3 == dataTable3 then
        dataTable3 = drawNativeText
        dataTable4 = "~g~Your turn to make a move."
        -- Beginner: Draw GTA-style text on screen.
        dataTable3(dataTable4)
      else
        dataTable3 = drawNativeText
        dataTable4 = string
        dataTable4 = dataTable4.format
        dataTable5 = "~y~%s is making their move."
        if "w" == arg3 then
          dataTable6 = "White"
          if dataTable6 then
            goto flow_label_55
          end
        end
        dataTable6 = "Black"
        ::flow_label_55::
        dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6 = dataTable4(dataTable5, dataTable6)
        dataTable3(dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6)
      end
    else
      arg2 = drawNativeText
      arg3 = "~y~Waiting for other player to join..."
      -- Beginner: Draw GTA-style text on screen.
      arg2(arg3)
    end
    arg2 = CMG
    arg2 = arg2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg2 = arg2()
    arg3 = cmgCall.locations
    dataTable3 = workValue8
    arg3 = arg3[dataTable3]
    arg3 = arg3.originPosition
    arg2 = arg2 - arg3
    arg2 = #arg2
    if arg2 > 40.0 then
      arg2 = TriggerServerEvent
      arg3 = "a7db4cf034"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a7db4cf034".
      arg2(arg3)
    end
  end
  arg2 = arg1.bViewingBoard
  if arg2 then
    arg2 = 0
    arg3 = 6
    dataTable3 = 1
    for dataTable4 = arg2, arg3, dataTable3 do
      dataTable5 = DisableControlAction
      dataTable6 = 0
      iterator = dataTable4
      dataTable7 = true
      dataTable5(dataTable6, iterator, dataTable7)
    end
    arg2 = DisablePlayerFiring
    arg3 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    arg3 = arg3()
    dataTable3 = true
    arg2(arg3, dataTable3)
    arg2 = DisableControlAction
    arg3 = 0
    dataTable3 = 24
    dataTable4 = true
    arg2(arg3, dataTable3, dataTable4)
    arg2 = DisableControlAction
    arg3 = 0
    dataTable3 = 25
    dataTable4 = true
    arg2(arg3, dataTable3, dataTable4)
    arg2 = DisableControlAction
    arg3 = 0
    dataTable3 = 200
    dataTable4 = true
    arg2(arg3, dataTable3, dataTable4)
    arg2 = IsDisabledControlJustReleased
    arg3 = 0
    dataTable3 = 200
    arg2 = arg2(arg3, dataTable3)
    if arg2 then
      arg2 = workValue14
      arg3 = arg1
      arg2(arg3)
    end
  end
  arg2 = arg1.spectatingCamera
  if 0 ~= arg2 then
    arg2 = Citizen
    arg2 = arg2.InvokeNative
    arg3 = -6795882342541246497
    dataTable3 = -1209618476
    arg2(arg3, dataTable3)
    arg2 = DisableAllControlActions
    arg3 = 0
    arg2(arg3)
    arg2 = BeginTextCommandDisplayHelp
    arg3 = "STRING"
    arg2(arg3)
    arg2 = AddTextComponentSubstringTextLabel
    arg3 = "CHESS_SPECTATE"
    arg2(arg3)
    arg2 = EndTextCommandDisplayHelp
    arg3 = 0
    dataTable3 = false
    dataTable4 = false
    dataTable5 = -1
    arg2(arg3, dataTable3, dataTable4, dataTable5)
    arg2 = IsDisabledControlJustPressed
    arg3 = 0
    dataTable3 = 157
    arg2 = arg2(arg3, dataTable3)
    if arg2 then
      arg2 = cmgCall.locations
      arg3 = workValue8
      arg2 = arg2[arg3]
      arg2 = arg2.originPosition
      arg3 = vector3
      dataTable3 = 24.0
      dataTable4 = 10.0
      dataTable5 = 10.0
      arg3 = arg3(dataTable3, dataTable4, dataTable5)
      arg2 = arg2 + arg3
      arg3 = SetCamParams
      dataTable3 = arg1.spectatingCamera
      dataTable4 = arg2.x
      dataTable5 = arg2.y
      dataTable6 = arg2.z
      iterator = -45.0
      dataTable7 = 0.0
      iterator2 = 90.0
      dataTable = 50.0
      numberValue2 = 1000
      numberValue3 = 0
      numberValue5 = 0
      numberValue6 = 2
      arg3(dataTable3, dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6)
    else
      arg2 = IsDisabledControlJustPressed
      arg3 = 0
      dataTable3 = 158
      arg2 = arg2(arg3, dataTable3)
      if arg2 then
        arg2 = cmgCall.locations
        arg3 = workValue8
        arg2 = arg2[arg3]
        arg2 = arg2.originPosition
        arg3 = vector3
        dataTable3 = -3.0
        dataTable4 = 10.0
        dataTable5 = 10.0
        arg3 = arg3(dataTable3, dataTable4, dataTable5)
        arg2 = arg2 + arg3
        arg3 = SetCamParams
        dataTable3 = arg1.spectatingCamera
        dataTable4 = arg2.x
        dataTable5 = arg2.y
        dataTable6 = arg2.z
        iterator = -45.0
        dataTable7 = 0.0
        iterator2 = -90.0
        dataTable = 50.0
        numberValue2 = 1000
        numberValue3 = 0
        numberValue5 = 0
        numberValue6 = 2
        arg3(dataTable3, dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6)
      else
        arg2 = IsDisabledControlJustPressed
        arg3 = 0
        dataTable3 = 160
        arg2 = arg2(arg3, dataTable3)
        if arg2 then
          arg2 = eventRegistration
          arg3 = workValue8
          -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: nil.
          arg2(arg3)
        else
          arg2 = IsDisabledControlJustReleased
          arg3 = 0
          dataTable3 = 200
          arg2 = arg2(arg3, dataTable3)
          if arg2 then
            arg2 = RenderScriptCams
            arg3 = false
            dataTable3 = true
            dataTable4 = 1000
            dataTable5 = false
            dataTable6 = false
            arg2(arg3, dataTable3, dataTable4, dataTable5, dataTable6)
            arg2 = SetCamActive
            arg3 = arg1.spectatingCamera
            dataTable3 = false
            arg2(arg3, dataTable3)
            arg2 = DestroyCam
            arg3 = arg1.spectatingCamera
            dataTable3 = true
            arg2(arg3, dataTable3)
            arg1.spectatingCamera = 0
            arg2 = CMG
            arg2 = arg2.showAllDisplays
            arg3 = "chess"
            arg2(arg3)
          end
        end
      end
    end
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
textValue = workValue3
textValue2 = "Chess Board"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(textValue, textValue2)
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2
  arg1 = workValue8
  if arg1 then
    arg2 = workValue8
    arg1 = dataTable2
    arg1 = arg1[arg2]
    arg1 = arg1.playingSide
    arg1 = nil ~= arg1
    return arg1
  else
    arg1 = false
    return arg1
  end
end
cmgCall2.inChessGame = textValue
cmgCall2 = RegisterNUICallback
textValue = "chessUpdatedFEN"

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, arg3, dataTable3, dataTable4
  arg2 = workValue8
  if arg2 then
    arg3 = workValue8
    arg2 = dataTable2
    arg2 = arg2[arg3]
    arg3 = arg2.bViewingBoard
    if arg3 then
      arg3 = arg2.bPlayingActive
      if arg3 then
        arg3 = TriggerServerEvent
        dataTable3 = "604b58a33c"
        dataTable4 = arg1
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "604b58a33c".
        arg3(dataTable3, dataTable4)
      end
    end
  end
end
cmgCall2(textValue, textValue2)
cmgCall2 = RegisterNUICallback
textValue = "chessPlayCheckSound"

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2
  arg1 = workValue8
  if arg1 then
    arg2 = workValue8
    arg1 = dataTable2
    arg1 = arg1[arg2]
    arg1 = arg1.bViewingBoard
    if arg1 then
      arg1 = SendNUIMessage
      arg2 = {}
      arg2.transactionType = "chess_notify"
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      arg1(arg2)
    end
  end
end
cmgCall2(textValue, textValue2)
cmgCall2 = RegisterNetEvent
textValue = "29d5f19513"
-- Beginner: this function handles network event "29d5f19513".

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2, arg3) ===
function textValue2(arg1, arg2, arg3)
  local dataTable3, dataTable4, dataTable5, dataTable6, iterator, dataTable7, iterator2, dataTable, numberValue2, numberValue3, numberValue5, numberValue6, numberValue7, cmgCall3, vector3Builder, workValue4, workValue5, heading
  dataTable3 = Citizen
  dataTable3 = dataTable3.Wait
  dataTable4 = 5000
  dataTable3(dataTable4)
  dataTable3 = dataTable2
  dataTable3 = dataTable3[arg1]
  dataTable4 = dataTable3.bViewingBoard
  if dataTable4 then
    dataTable4 = workValue14
    dataTable5 = dataTable3
    dataTable4(dataTable5)
  end
  dataTable4 = CMG
  dataTable4 = dataTable4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  dataTable4 = dataTable4()
  dataTable5 = cmgCall.locations
  dataTable5 = dataTable5[arg1]
  dataTable5 = dataTable5.originPosition
  dataTable4 = dataTable4 - dataTable5
  dataTable4 = #dataTable4
  if dataTable4 < 75.0 then
    if arg2 then
      dataTable4 = CMG
      dataTable4 = dataTable4.announceMpBigMsg
      dataTable5 = "STALEMATE"
      dataTable6 = "The chess game has ended with a draw!"
      iterator = 10000
      dataTable7 = true
      iterator2 = true
      dataTable4(dataTable5, dataTable6, iterator, dataTable7, iterator2)
    else
      dataTable4 = CMG
      dataTable4 = dataTable4.announceMpBigMsg
      dataTable5 = "CHECKMATE"
      dataTable6 = string
      dataTable6 = dataTable6.format
      iterator = "%s has won the chess game!"
      dataTable7 = arg3
      dataTable6 = dataTable6(iterator, dataTable7)
      iterator = 10000
      dataTable7 = true
      iterator2 = true
      dataTable4(dataTable5, dataTable6, iterator, dataTable7, iterator2)
    end
  end
  dataTable4 = dataTable3.boardObjects
  if dataTable4 then
    dataTable4 = pairs
    dataTable5 = dataTable3.boardObjects
    dataTable4, dataTable5, dataTable6, iterator = dataTable4(dataTable5)
    for dataTable7, iterator2 in dataTable4, dataTable5, dataTable6, iterator do
      dataTable = pairs
      numberValue2 = iterator2
      dataTable, numberValue2, numberValue3, numberValue5 = dataTable(numberValue2)
      for numberValue6, numberValue7 in dataTable, numberValue2, numberValue3, numberValue5 do
        if 0 ~= numberValue7 then
          cmgCall3 = GetEntityModel
          vector3Builder = numberValue7
          -- Beginner: result below is modelHash.
          cmgCall3 = cmgCall3(vector3Builder)
          if "White" == arg3 and -581108805 == cmgCall3 then
            vector3Builder = CMG
            vector3Builder = vector3Builder.startFireworksAtCoord
            workValue4 = GetEntityCoords
            workValue5 = numberValue7
            heading = true
            workValue4, workValue5, heading = workValue4(workValue5, heading)
            vector3Builder(workValue4, workValue5, heading)
          elseif "Black" == arg3 and -864843523 == cmgCall3 then
            vector3Builder = CMG
            vector3Builder = vector3Builder.startFireworksAtCoord
            workValue4 = GetEntityCoords
            workValue5 = numberValue7
            heading = true
            workValue4, workValue5, heading = workValue4(workValue5, heading)
            vector3Builder(workValue4, workValue5, heading)
          end
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "29d5f19513".
cmgCall2(textValue, textValue2)
cmgCall2 = AddEventHandler
textValue = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, arg3, dataTable3, dataTable4, dataTable5, dataTable6, iterator, dataTable7
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 == arg1 then
    arg2 = pairs
    arg3 = dataTable2
    arg2, arg3, dataTable3, dataTable4 = arg2(arg3)
    for dataTable5, dataTable6 in arg2, arg3, dataTable3, dataTable4 do
      iterator = dataTable6.boardObject
      if 0 ~= iterator then
        iterator = DeleteEntity
        dataTable7 = dataTable6.boardObject
        -- Beginner: Delete a GTA entity.
        iterator(dataTable7)
      end
      iterator = workValue11
      dataTable7 = dataTable6
      iterator(dataTable7)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall2(textValue, textValue2)
