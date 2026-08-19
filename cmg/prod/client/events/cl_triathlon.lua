--[[
    LEVEL 1 BEGINNER GUIDE — Triathlon
    =======================================

    File: cmg/prod/client/events/cl_triathlon.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Triathlon feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 37
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
local cmgOperation, dataCollection, text4, dataCollection2, workingValue4, dataCollection3, dataCollection4, dataCollection5, dataCollection6, eventHandler3, text, workingValue, eventHandler, eventHandler2, backgroundThread, cmgOperation2, cmgOperation3, cmgOperation4, text2, text3, stateFlag4
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection = "cfg/events/cfg_triathlon"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection)
dataCollection = {}
text4 = ""
dataCollection2 = {}
dataCollection2.isParachuting = false
dataCollection2.isOnBMX = false
dataCollection2.isRunning = false
dataCollection2.isInRace = false
dataCollection2.closetCheckpoint = nil
dataCollection2.hasFinished = false
dataCollection2.currentCheckpoint = 0
dataCollection2.currentCheckpointId = 0
dataCollection2.checkpointDistance = 0.0
workingValue4 = nil
dataCollection3 = {}
dataCollection4 = {}
dataCollection5 = {}
dataCollection6 = {}
eventHandler3 = Citizen
eventHandler3 = eventHandler3.CreateThread

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, number10, number11, workingValue5, workingValue6, workingValue7
  localValue1 = pairs
  localValue2 = cmgOperation.triathlon
  localValue2 = localValue2.races
  localValue1, localValue2, number10, number11 = localValue1(localValue2)
  for workingValue5 in localValue1, localValue2, number10, number11 do
    workingValue6 = dataCollection
    workingValue6 = #workingValue6
    workingValue7 = workingValue6 + 1
    workingValue6 = dataCollection
    workingValue6[workingValue7] = workingValue5
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler3(text)
eventHandler3 = RegisterNetEvent
text = "b703d69501"
-- Beginner: this function handles network event "b703d69501".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2
  text4 = localValue1
  dataCollection2.isInRace = true
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b703d69501".
eventHandler3(text, workingValue)
eventHandler3 = RegisterNetEvent
text = "e3ef1bd162"
-- Beginner: this function handles network event "e3ef1bd162".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2, number3, number4, number5, number6, number7, number8
  localValue1 = 1
  localValue2 = cmgOperation.triathlon
  localValue2 = localValue2.races
  number10 = text4
  localValue2 = localValue2[number10]
  localValue2 = localValue2.checkpoints
  localValue2 = #localValue2
  number10 = 1
  for number11 = localValue1, localValue2, number10 do
    workingValue5 = cmgOperation.triathlon
    workingValue5 = workingValue5.races
    workingValue6 = text4
    workingValue5 = workingValue5[workingValue6]
    workingValue5 = workingValue5.checkpoints
    workingValue5 = workingValue5[number11]
    workingValue6 = cmgOperation.triathlon
    workingValue6 = workingValue6.races
    workingValue7 = text4
    workingValue6 = workingValue6[workingValue7]
    workingValue6 = workingValue6.cycle
    workingValue7 = dataCollection5
    number13 = CreateCheckpoint
    number14 = 13
    number15 = workingValue5.x
    stateFlag = workingValue5.y
    stateFlag2 = workingValue5.z
    stateFlag3 = workingValue6.x
    number = workingValue6.y
    number2 = workingValue6.z
    number3 = 50.0
    number4 = 255
    number5 = 255
    number6 = 0
    number7 = 127
    number8 = 0
    -- Beginner: result below is checkpointHandle.
    number13 = number13(number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2, number3, number4, number5, number6, number7, number8)
    workingValue7[number11] = number13
  end
  localValue1 = text4
  if "Vinewood Sign" == localValue1 then
    localValue1 = 0
    localValue2 = CMG
    localValue2 = localValue2.loadModel
    number10 = 1867879106
    -- Beginner: Request/load a GTA model before spawning or applying it.
    localValue2(number10)
    localValue2 = 1
    number10 = 12
    number11 = 1
    for workingValue5 = localValue2, number10, number11 do
      workingValue6 = CreateObject
      workingValue7 = 1867879106
      number13 = 847.02429199219 + localValue1
      number14 = 1290.3720703125
      number14 = number14 - localValue1
      number15 = 359.15859985352
      stateFlag = false
      stateFlag2 = true
      stateFlag3 = true
      -- Beginner: result below is objectEntity.
      workingValue6 = workingValue6(workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3)
      workingValue7 = SetEntityHeading
      number13 = workingValue6
      number14 = 308.5
      -- Beginner: Change the direction an entity is facing.
      workingValue7(number13, number14)
      workingValue7 = FreezeEntityPosition
      number13 = workingValue6
      number14 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      workingValue7(number13, number14)
      workingValue7 = PlaceObjectOnGroundProperly
      number13 = workingValue6
      workingValue7(number13)
      workingValue7 = dataCollection6
      workingValue7 = #workingValue7
      number13 = workingValue7 + 1
      workingValue7 = dataCollection6
      workingValue7[number13] = workingValue6
      localValue1 = localValue1 + 2
    end
    localValue2 = SetModelAsNoLongerNeeded
    number10 = 1867879106
    localValue2(number10)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e3ef1bd162".
eventHandler3(text, workingValue)

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2, number3
  localValue2 = AddBlipForCoord
  number10 = localValue1.x
  number11 = localValue1.y
  workingValue5 = localValue1.z
  -- Beginner: result below is blipHandle.
  localValue2 = localValue2(number10, number11, workingValue5)
  number10 = SetBlipSprite
  number11 = localValue2
  workingValue5 = 38
  number10(number11, workingValue5)
  number10 = CreateCheckpoint
  number11 = 9
  workingValue5 = localValue1.x
  workingValue6 = localValue1.y
  workingValue7 = localValue1.z
  workingValue7 = workingValue7 - 1.0
  number13 = 0
  number14 = 0
  number15 = 0
  stateFlag = 10.0
  stateFlag2 = 255
  stateFlag3 = 255
  number = 0
  number2 = 127
  number3 = 0
  -- Beginner: result below is checkpointHandle.
  number10 = number10(number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2, number3)
  dataCollection3.finish = number10
  dataCollection4.finish = localValue2
end

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2, number3, number4
  localValue2 = AddBlipForCoord
  number10 = localValue1.x
  number11 = localValue1.y
  workingValue5 = localValue1.z
  -- Beginner: result below is blipHandle.
  localValue2 = localValue2(number10, number11, workingValue5)
  number10 = SetBlipSprite
  number11 = localValue2
  workingValue5 = 226
  number10(number11, workingValue5)
  number10 = SetBlipRoute
  number11 = localValue2
  workingValue5 = true
  number10(number11, workingValue5)
  number10 = cmgOperation.triathlon
  number10 = number10.races
  number11 = text4
  number10 = number10[number11]
  number10 = number10.finish
  number11 = CreateCheckpoint
  workingValue5 = 0
  workingValue6 = localValue1.x
  workingValue7 = localValue1.y
  number13 = localValue1.z
  number13 = number13 - 1.0
  number14 = number10.x
  number15 = number10.y
  stateFlag = number10.z
  stateFlag2 = 10.0
  stateFlag3 = 255
  number = 255
  number2 = 0
  number3 = 127
  number4 = 0
  -- Beginner: result below is checkpointHandle.
  number11 = number11(workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2, number3, number4)
  dataCollection3.bmxTo = number11
  number11 = SetCheckpointCylinderHeight
  workingValue5 = dataCollection3.bmxTo
  workingValue6 = 40.0
  workingValue7 = 140.0
  number13 = 25.0
  number11(workingValue5, workingValue6, workingValue7, number13)
  dataCollection4.bmxTo = localValue2

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local modelHash, cmgOperation5, text5, text6, stateFlag9
    modelHash = GetEntityModel
    cmgOperation5 = CMG
    cmgOperation5 = cmgOperation5.getPlayerVehicle
    cmgOperation5, text5, text6, stateFlag9 = cmgOperation5()
    -- Beginner: result below is modelHash.
    modelHash = modelHash(cmgOperation5, text5, text6, stateFlag9)
    if 1131912276 == modelHash then
      modelHash = DeleteEntity
      cmgOperation5 = CMG
      cmgOperation5 = cmgOperation5.getPlayerVehicle
      cmgOperation5, text5, text6, stateFlag9 = cmgOperation5()
      -- Beginner: Delete a GTA entity.
      modelHash(cmgOperation5, text5, text6, stateFlag9)
      dataCollection2.isOnBMX = false
      dataCollection2.isRunning = true
      modelHash = DeleteCheckpoint
      cmgOperation5 = dataCollection3.bmxTo
      modelHash(cmgOperation5)
      modelHash = RemoveBlip
      cmgOperation5 = dataCollection4.bmxTo
      modelHash(cmgOperation5)
      modelHash = tCMG
      modelHash = modelHash.removeArea
      cmgOperation5 = "cmg_triathlon_race_bmxTo"
      modelHash(cmgOperation5)
      modelHash = PlaySoundFrontend
      cmgOperation5 = -1
      text5 = "RACE_PLACED"
      text6 = "HUD_AWARDS"
      stateFlag9 = false
      modelHash(cmgOperation5, text5, text6, stateFlag9)
      modelHash = eventHandler3
      cmgOperation5 = cmgOperation.triathlon
      cmgOperation5 = cmgOperation5.races
      text5 = text4
      cmgOperation5 = cmgOperation5[text5]
      cmgOperation5 = cmgOperation5.finish
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      modelHash(cmgOperation5)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
  function workingValue5()
    local modelHash, cmgOperation5
  end

  -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
  function workingValue6()
    local modelHash, cmgOperation5
  end
  workingValue7 = CMG
  workingValue7 = workingValue7.createArea
  number13 = "cmg_triathlon_race_bmxTo"
  number14 = localValue1
  number15 = 6.0
  stateFlag = 6
  stateFlag2 = number11
  stateFlag3 = workingValue5
  number = workingValue6
  -- Beginner: Create an interaction area around a world position.
  workingValue7(number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2, number3
  localValue1 = dataCollection2.currentCheckpointId
  if 0 ~= localValue1 then
    localValue1 = DeleteCheckpoint
    localValue2 = dataCollection2.currentCheckpointId
    localValue1(localValue2)
    localValue1 = tCMG
    localValue1 = localValue1.removeArea
    localValue2 = "cmg_triathlon_race_"
    number10 = dataCollection2.currentCheckpointId
    localValue2 = localValue2 .. number10
    localValue1(localValue2)
  end
  localValue1 = dataCollection2.currentCheckpoint
  if 1 ~= localValue1 then
    localValue1 = dataCollection2.currentCheckpoint
    localValue1 = localValue1 + 1
    dataCollection2.currentCheckpoint = localValue1
  end
  localValue1 = dataCollection2.currentCheckpoint
  localValue2 = cmgOperation.triathlon
  localValue2 = localValue2.races
  number10 = text4
  localValue2 = localValue2[number10]
  localValue2 = localValue2.extraCheckpoints
  localValue2 = #localValue2
  if localValue1 > localValue2 then
    return
  end
  localValue1 = cmgOperation.triathlon
  localValue1 = localValue1.races
  localValue2 = text4
  localValue1 = localValue1[localValue2]
  localValue1 = localValue1.extraCheckpoints
  localValue2 = dataCollection2.currentCheckpoint
  localValue1 = localValue1[localValue2]
  localValue2 = cmgOperation.triathlon
  localValue2 = localValue2.races
  number10 = text4
  localValue2 = localValue2[number10]
  localValue2 = localValue2.extraCheckpoints
  number10 = dataCollection2.currentCheckpoint
  number10 = number10 + 1
  localValue2 = localValue2[number10]
  number10 = CreateCheckpoint
  number11 = 0
  workingValue5 = localValue1.x
  workingValue6 = localValue1.y
  workingValue7 = localValue1.z
  workingValue7 = workingValue7 - 1.0
  number13 = localValue2.x
  number14 = localValue2.y
  number15 = localValue2.z
  stateFlag = 10.0
  stateFlag2 = 255
  stateFlag3 = 255
  number = 0
  number2 = 127
  number3 = 0
  -- Beginner: result below is checkpointHandle.
  number10 = number10(number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2, number3)
  dataCollection2.currentCheckpointId = number10
  number10 = dataCollection2.currentCheckpoint
  if 1 == number10 then
    dataCollection2.currentCheckpoint = 2
  end
  number10 = CMG
  number10 = number10.getPlayerCoords
  -- Beginner: result below is playerCoords.
  number10 = number10()
  number11 = cmgOperation.triathlon
  number11 = number11.races
  workingValue5 = text4
  number11 = number11[workingValue5]
  number11 = number11.extraCheckpoints
  workingValue5 = dataCollection2.currentCheckpoint
  workingValue5 = workingValue5 + 1
  number11 = number11[workingValue5]
  number10 = number10 - number11
  number10 = #number10
  dataCollection2.checkpointDistance = number10

  -- === HELPER FUNCTION (decompiler name: number10; parameters: none) ===
  function number10()
    local modelHash, cmgOperation5, text5, text6, stateFlag9
    modelHash = GetEntityModel
    cmgOperation5 = CMG
    cmgOperation5 = cmgOperation5.getPlayerVehicle
    cmgOperation5, text5, text6, stateFlag9 = cmgOperation5()
    -- Beginner: result below is modelHash.
    modelHash = modelHash(cmgOperation5, text5, text6, stateFlag9)
    if 1131912276 == modelHash then
      modelHash = workingValue
      modelHash()
      modelHash = PlaySoundFrontend
      cmgOperation5 = -1
      text5 = "RACE_PLACED"
      text6 = "HUD_AWARDS"
      stateFlag9 = false
      modelHash(cmgOperation5, text5, text6, stateFlag9)
    end
  end

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local modelHash, cmgOperation5
  end

  -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
  function workingValue5()
    local modelHash, cmgOperation5
  end
  workingValue6 = CMG
  workingValue6 = workingValue6.createArea
  workingValue7 = "cmg_triathlon_race_"
  number13 = dataCollection2.currentCheckpointId
  workingValue7 = workingValue7 .. number13
  number13 = localValue1
  number14 = 6.0
  number15 = 6
  stateFlag = number10
  stateFlag2 = number11
  stateFlag3 = workingValue5
  -- Beginner: Create an interaction area around a world position.
  workingValue6(workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3)
end
eventHandler = RegisterNetEvent
eventHandler2 = "cdbc466c3d"
-- Beginner: this function handles network event "cdbc466c3d".

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1) ===
function backgroundThread(localValue1)
  local localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2, number3, number4
  workingValue4 = localValue1
  localValue2 = CMG
  localValue2 = localValue2.stopEventSequence
  number10 = false
  localValue2(number10)
  dataCollection2.isParachuting = true
  localValue2 = AddBlipForCoord
  number10 = localValue1.x
  number11 = localValue1.y
  workingValue5 = localValue1.z
  -- Beginner: result below is blipHandle.
  localValue2 = localValue2(number10, number11, workingValue5)
  number10 = SetBlipSprite
  number11 = localValue2
  workingValue5 = 226
  number10(number11, workingValue5)
  number10 = cmgOperation.triathlon
  number10 = number10.races
  number11 = text4
  number10 = number10[number11]
  number10 = number10.run
  number11 = CreateCheckpoint
  workingValue5 = 0
  workingValue6 = localValue1.x
  workingValue7 = localValue1.y
  number13 = localValue1.z
  number13 = number13 - 1.0
  number14 = number10.x
  number15 = number10.y
  stateFlag = number10.z
  stateFlag2 = 10.0
  stateFlag3 = 255
  number = 255
  number2 = 0
  number3 = 127
  number4 = 0
  -- Beginner: result below is checkpointHandle.
  number11 = number11(workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2, number3, number4)
  dataCollection3.bmx = number11
  number11 = SetCheckpointCylinderHeight
  workingValue5 = dataCollection3.bmx
  workingValue6 = 40.0
  workingValue7 = 70.0
  number13 = 25.0
  number11(workingValue5, workingValue6, workingValue7, number13)
  dataCollection4.bmx = localValue2

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local modelHash, cmgOperation5, text5, text6, stateFlag9, number12, stateFlag10, stateFlag11, stateFlag12
    modelHash = CMG
    modelHash = modelHash.loadModel
    cmgOperation5 = 1131912276
    -- Beginner: Request/load a GTA model before spawning or applying it.
    modelHash(cmgOperation5)
    modelHash = CMG
    modelHash = modelHash.spawnVehicle
    cmgOperation5 = 1131912276
    text5 = localValue1.x
    text6 = localValue1.y
    stateFlag9 = localValue1.z
    number12 = 10.0
    stateFlag10 = true
    stateFlag11 = true
    stateFlag12 = true
    modelHash(cmgOperation5, text5, text6, stateFlag9, number12, stateFlag10, stateFlag11, stateFlag12)
    modelHash = SetModelAsNoLongerNeeded
    cmgOperation5 = 1131912276
    modelHash(cmgOperation5)
    dataCollection2.isParachuting = false
    dataCollection2.isOnBMX = true
    modelHash = DeleteCheckpoint
    cmgOperation5 = dataCollection3.bmx
    modelHash(cmgOperation5)
    modelHash = RemoveBlip
    cmgOperation5 = dataCollection4.bmx
    modelHash(cmgOperation5)
    modelHash = tCMG
    modelHash = modelHash.removeArea
    cmgOperation5 = "cmg_triathlon_race_bmx"
    modelHash(cmgOperation5)
    modelHash = PlaySoundFrontend
    cmgOperation5 = -1
    text5 = "RACE_PLACED"
    text6 = "HUD_AWARDS"
    stateFlag9 = false
    modelHash(cmgOperation5, text5, text6, stateFlag9)
    modelHash = text
    cmgOperation5 = cmgOperation.triathlon
    cmgOperation5 = cmgOperation5.races
    text5 = text4
    cmgOperation5 = cmgOperation5[text5]
    cmgOperation5 = cmgOperation5.run
    modelHash(cmgOperation5)
    modelHash = workingValue
    modelHash()
  end

  -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
  function workingValue5()
    local modelHash, cmgOperation5
  end

  -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
  function workingValue6()
    local modelHash, cmgOperation5
  end
  workingValue7 = CMG
  workingValue7 = workingValue7.createArea
  number13 = "cmg_triathlon_race_bmx"
  number14 = localValue1
  number15 = 6.0
  stateFlag = 6
  stateFlag2 = number11
  stateFlag3 = workingValue5
  number = workingValue6
  -- Beginner: Create an interaction area around a world position.
  workingValue7(number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cdbc466c3d".
eventHandler(eventHandler2, backgroundThread)
eventHandler = RegisterNetEvent
eventHandler2 = "a8589480c9"
-- Beginner: this function handles network event "a8589480c9".

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1) ===
function backgroundThread(localValue1)
  local localValue2, number10
  localValue2 = CMG
  localValue2 = localValue2.showCountdownTimer
  number10 = localValue1
  localValue2(number10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a8589480c9".
eventHandler(eventHandler2, backgroundThread)
eventHandler = {}
-- Beginner: this function handles network event "a8589480c9".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15
  localValue1 = true
  localValue2 = Scaleform
  number10 = "MIDSIZED_MESSAGE"
  localValue2 = localValue2(number10)
  number10 = localValue2.RunFunction
  number11 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  workingValue5 = {}
  workingValue6 = "~y~TRIATHLON"
  workingValue7 = "RIDE TO THE CHECKPOINT!"
  number13 = 5
  number14 = true
  number15 = false
  workingValue5[1] = workingValue6
  workingValue5[2] = workingValue7
  workingValue5[3] = number13
  workingValue5[4] = number14
  workingValue5[5] = number15
  number10(number11, workingValue5)
  number10 = Citizen
  number10 = number10.CreateThread

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local modelHash, cmgOperation5
    while true do
      modelHash = localValue1
      if not modelHash then
        break
      end
      modelHash = localValue2.Render2D
      modelHash()
      modelHash = Wait
      cmgOperation5 = 0
      modelHash(cmgOperation5)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number10(number11)
  number10 = Wait
  number11 = 5000
  number10(number11)
  localValue1 = false
end
eventHandler.bmx = eventHandler2

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15
  localValue1 = true
  localValue2 = Scaleform
  number10 = "MIDSIZED_MESSAGE"
  localValue2 = localValue2(number10)
  number10 = localValue2.RunFunction
  number11 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  workingValue5 = {}
  workingValue6 = "~y~TRIATHLON"
  workingValue7 = "RUN TO THE FINISH!"
  number13 = 5
  number14 = true
  number15 = false
  workingValue5[1] = workingValue6
  workingValue5[2] = workingValue7
  workingValue5[3] = number13
  workingValue5[4] = number14
  workingValue5[5] = number15
  number10(number11, workingValue5)
  number10 = Citizen
  number10 = number10.CreateThread

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local modelHash, cmgOperation5
    while true do
      modelHash = localValue1
      if not modelHash then
        break
      end
      modelHash = localValue2.Render2D
      modelHash()
      modelHash = Wait
      cmgOperation5 = 0
      modelHash(cmgOperation5)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number10(number11)
  number10 = Wait
  number11 = 5000
  number10(number11)
  localValue1 = false
end
eventHandler.runto = eventHandler2

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag
  localValue2 = true
  number10 = Scaleform
  number11 = "MIDSIZED_MESSAGE"
  number10 = number10(number11)
  number11 = number10.RunFunction
  workingValue5 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  workingValue6 = {}
  workingValue7 = "~y~TRIATHLON"
  number13 = localValue1
  number14 = 5
  number15 = true
  stateFlag = false
  workingValue6[1] = workingValue7
  workingValue6[2] = number13
  workingValue6[3] = number14
  workingValue6[4] = number15
  workingValue6[5] = stateFlag
  number11(workingValue5, workingValue6)
  number11 = Citizen
  number11 = number11.CreateThread

  -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
  function workingValue5()
    local modelHash, cmgOperation5
    while true do
      modelHash = localValue2
      if not modelHash then
        break
      end
      modelHash = number10.Render2D
      modelHash()
      modelHash = Wait
      cmgOperation5 = 0
      modelHash(cmgOperation5)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number11(workingValue5)
  number11 = Wait
  workingValue5 = 5000
  number11(workingValue5)
  localValue2 = false
end
eventHandler.finish = eventHandler2

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15
  localValue1 = true
  localValue2 = Scaleform
  number10 = "MIDSIZED_MESSAGE"
  localValue2 = localValue2(number10)
  number10 = localValue2.RunFunction
  number11 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  workingValue5 = {}
  workingValue6 = "~y~TRIATHLON"
  workingValue7 = "PARACHUTE THROUGH THE CHECKPOINTS TO THE BMX!"
  number13 = 5
  number14 = true
  number15 = false
  workingValue5[1] = workingValue6
  workingValue5[2] = workingValue7
  workingValue5[3] = number13
  workingValue5[4] = number14
  workingValue5[5] = number15
  number10(number11, workingValue5)
  number10 = Citizen
  number10 = number10.CreateThread

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local modelHash, cmgOperation5
    while true do
      modelHash = localValue1
      if not modelHash then
        break
      end
      modelHash = localValue2.Render2D
      modelHash()
      modelHash = Wait
      cmgOperation5 = 0
      modelHash(cmgOperation5)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number10(number11)
  number10 = Wait
  number11 = 5000
  number10(number11)
  localValue1 = false
end
eventHandler.para = eventHandler2
eventHandler2 = RegisterNetEvent
backgroundThread = "d9697d34f9"
-- Beginner: this function handles network event "d9697d34f9".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2) ===
function cmgOperation2(localValue1, localValue2)
  local number10, number11, workingValue5
  number10 = eventHandler
  number10 = number10[localValue1]
  if nil ~= number10 then
    number10 = eventHandler
    number10 = number10[localValue1]
    number11 = table
    number11 = number11.unpack
    workingValue5 = localValue2 or workingValue5
    if not localValue2 then
      workingValue5 = {}
    end
    number11, workingValue5 = number11(workingValue5)
    number10(number11, workingValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d9697d34f9".
eventHandler2(backgroundThread, cmgOperation2)
eventHandler2 = RegisterNetEvent
backgroundThread = "f1c217712f"
-- Beginner: this function handles network event "f1c217712f".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15
  localValue1 = true
  localValue2 = Scaleform
  number10 = "MIDSIZED_MESSAGE"
  localValue2 = localValue2(number10)
  number10 = localValue2.RunFunction
  number11 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  workingValue5 = {}
  workingValue6 = "~y~TRIATHLON"
  workingValue7 = "EVENT IS ENDING IN 30 SECONDS"
  number13 = 5
  number14 = true
  number15 = false
  workingValue5[1] = workingValue6
  workingValue5[2] = workingValue7
  workingValue5[3] = number13
  workingValue5[4] = number14
  workingValue5[5] = number15
  number10(number11, workingValue5)
  number10 = Citizen
  number10 = number10.CreateThread

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local modelHash, cmgOperation5
    while true do
      modelHash = localValue1
      if not modelHash then
        break
      end
      modelHash = localValue2.Render2D
      modelHash()
      modelHash = Wait
      cmgOperation5 = 0
      modelHash(cmgOperation5)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number10(number11)
  number10 = Wait
  number11 = 5000
  number10(number11)
  number10 = CMG
  number10 = number10.showCountdownTimer
  number11 = 31
  number10(number11)
  localValue1 = false
  number10 = dataCollection2.hasFinished
  if not number10 then
    number10 = TriggerServerEvent
    number11 = "07033c0723"
    workingValue5 = currentEvent
    workingValue5 = workingValue5.minigameId
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "07033c0723".
    number10(number11, workingValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f1c217712f".
eventHandler2(backgroundThread, cmgOperation2)
eventHandler2 = false
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag
  while true do
    localValue1 = dataCollection2.isParachuting
    if localValue1 then
      localValue1 = text4
      if nil ~= localValue1 then
        localValue1 = GetEntityCoords
        localValue2 = PlayerPedId
        localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag = localValue2()
        -- Beginner: result below is entityCoords.
        localValue1 = localValue1(localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag)
        localValue2 = 1
        number10 = cmgOperation.triathlon
        number10 = number10.races
        number11 = text4
        number10 = number10[number11]
        number10 = number10.checkpoints
        number10 = #number10
        number11 = 1
        for workingValue5 = localValue2, number10, number11 do
          workingValue6 = cmgOperation.triathlon
          workingValue6 = workingValue6.races
          workingValue7 = text4
          workingValue6 = workingValue6[workingValue7]
          workingValue6 = workingValue6.checkpoints
          workingValue6 = workingValue6[workingValue5]
          workingValue7 = localValue1 - workingValue6
          workingValue7 = #workingValue7
          if workingValue7 <= 25.0 then
            workingValue7 = eventHandler2
            if not workingValue7 then
              workingValue7 = PlaySoundFrontend
              number13 = -1
              number14 = "RACE_PLACED"
              number15 = "HUD_AWARDS"
              stateFlag = false
              workingValue7(number13, number14, number15, stateFlag)
              workingValue7 = true
              eventHandler2 = workingValue7
              workingValue7 = SetTimeout
              number13 = 500

              -- === HELPER FUNCTION (decompiler name: number14; parameters: none) ===
              function number14()
                local modelHash, cmgOperation5
                modelHash = false
                eventHandler2 = modelHash
              end
              workingValue7(number13, number14)
            end
            workingValue7 = DeleteCheckpoint
            number13 = dataCollection5
            number13 = number13[workingValue5]
            workingValue7(number13)
            workingValue7 = dataCollection5
            workingValue7[workingValue5] = nil
          end
        end
      end
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 150
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(cmgOperation2)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2
  localValue1 = dataCollection2.isParachuting
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.Text
    localValue2 = {}
    localValue2.message = "Press LMB or F to deploy parachute"
    localValue1(localValue2)
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
cmgOperation3 = backgroundThread
cmgOperation4 = "Triathlon Deploy"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(cmgOperation3, cmgOperation4)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2, number3, number4, number5, number6, number7, number8, stateFlag5, stateFlag6, number9, stateFlag7, workingValue2, workingValue3, stateFlag8
  localValue1 = dataCollection2.isParachuting
  if localValue1 then
    localValue1 = workingValue4
    localValue2 = CMG
    localValue2 = localValue2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue2 = localValue2()
    number10 = localValue1 - localValue2
    number11 = #number10
    number10 = number10 / number11
    number11 = DrawMarker
    workingValue5 = 2
    workingValue6 = localValue2.x
    workingValue7 = localValue2.y
    number13 = localValue2.z
    number13 = number13 + 1.0
    number14 = number10.x
    number15 = number10.y
    stateFlag = number10.z
    stateFlag2 = 90.0
    stateFlag3 = 0
    number = 0
    number2 = 1.0
    number3 = 1.0
    number4 = 1.0
    number5 = 0
    number6 = 0
    number7 = 255
    number8 = 150
    stateFlag5 = false
    stateFlag6 = false
    number9 = 2
    stateFlag7 = false
    workingValue2 = nil
    workingValue3 = nil
    stateFlag8 = false
    number11(workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2, number3, number4, number5, number6, number7, number8, stateFlag5, stateFlag6, number9, stateFlag7, workingValue2, workingValue3, stateFlag8)
  end
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
cmgOperation4 = cmgOperation2
text2 = "Triathlon Direction Marker"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(cmgOperation4, text2)

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2
  localValue1 = dataCollection2.isInRace
  if localValue1 then
    localValue1 = IsPedInParachuteFreeFall
    localValue2 = CMG
    localValue2 = localValue2.getPlayerPed
    localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2 = localValue2()
    localValue1 = localValue1(localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2)
    if localValue1 then
      localValue1 = HasEntityCollidedWithAnything
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2 = localValue2()
      localValue1 = localValue1(localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2)
      if not localValue1 then
        localValue1 = ApplyForceToEntity
        localValue2 = CMG
        localValue2 = localValue2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue2 = localValue2()
        number10 = 1
        number11 = 0.0
        workingValue5 = 75.0
        workingValue6 = 2.5
        workingValue7 = 0.0
        number13 = 0.0
        number14 = 0.0
        number15 = 0
        stateFlag = true
        stateFlag2 = false
        stateFlag3 = false
        number = false
        number2 = true
        localValue1(localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag, stateFlag2, stateFlag3, number, number2)
      end
    end
    localValue1 = DisableControlAction
    localValue2 = 2
    number10 = 37
    number11 = true
    localValue1(localValue2, number10, number11)
    localValue1 = DisablePlayerFiring
    localValue2 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue2 = localValue2()
    number10 = true
    localValue1(localValue2, number10)
    localValue1 = DisableControlAction
    localValue2 = 0
    number10 = 106
    number11 = true
    localValue1(localValue2, number10, number11)
    localValue1 = DisableControlAction
    localValue2 = 0
    number10 = 45
    number11 = true
    localValue1(localValue2, number10, number11)
    localValue1 = DisableControlAction
    localValue2 = 0
    number10 = 24
    number11 = true
    localValue1(localValue2, number10, number11)
    localValue1 = DisableControlAction
    localValue2 = 0
    number10 = 263
    number11 = true
    localValue1(localValue2, number10, number11)
    localValue1 = DisableControlAction
    localValue2 = 0
    number10 = 140
    number11 = true
    localValue1(localValue2, number10, number11)
    localValue1 = DisableControlAction
    localValue2 = 0
    number10 = 75
    number11 = true
    localValue1(localValue2, number10, number11)
    localValue1 = DisableControlAction
    localValue2 = 27
    number10 = 75
    number11 = true
    localValue1(localValue2, number10, number11)
    localValue1 = CMG
    localValue1 = localValue1.setWeapon
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    number10 = -1569615261
    number11 = true
    localValue1(localValue2, number10, number11)
    localValue1 = CMG
    localValue1 = localValue1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = SetEntityInvincible
    number10 = localValue1
    number11 = true
    localValue2(number10, number11)
    localValue2 = SetPlayerInvincible
    number10 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    number10 = number10()
    number11 = true
    localValue2(number10, number11)
    localValue2 = SetPedCanRagdoll
    number10 = localValue1
    number11 = false
    localValue2(number10, number11)
    localValue2 = ClearPedBloodDamage
    number10 = localValue1
    localValue2(number10)
    localValue2 = ResetPedVisibleDamage
    number10 = localValue1
    localValue2(number10)
    localValue2 = ClearPedLastWeaponDamage
    number10 = localValue1
    localValue2(number10)
    localValue2 = SetEntityProofs
    number10 = localValue1
    number11 = true
    workingValue5 = true
    workingValue6 = true
    workingValue7 = true
    number13 = true
    number14 = true
    number15 = true
    stateFlag = true
    localValue2(number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag)
    localValue2 = SetEntityCanBeDamaged
    number10 = localValue1
    number11 = false
    localValue2(number10, number11)
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
text2 = cmgOperation3
text3 = "Triathlon Parachute"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(text2, text3)
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.registerCommand
text2 = "heading"

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, number10
  localValue1 = print
  localValue2 = GetEntityHeading
  number10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number10 = number10()
  localValue2, number10 = localValue2(number10)
  localValue1(localValue2, number10)
end
stateFlag4 = false
cmgOperation4(text2, text3, stateFlag4)
cmgOperation4 = RegisterNetEvent
text2 = "c1cdf22c86"
-- Beginner: this function handles network event "c1cdf22c86".

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, number10, number11, workingValue5
  localValue1 = DeleteCheckpoint
  localValue2 = dataCollection3.finish
  localValue1(localValue2)
  localValue1 = RemoveBlip
  localValue2 = dataCollection4.finish
  localValue1(localValue2)
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  number10 = "ScreenFlash"
  number11 = "WastedSounds"
  workingValue5 = false
  localValue1(localValue2, number10, number11, workingValue5)
  dataCollection2.isRunning = false
  dataCollection2.isInRace = false
  dataCollection2.hasFinished = true
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c1cdf22c86".
cmgOperation4(text2, text3)

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13
  localValue1 = currentEvent
  localValue1.isActive = false
  localValue1 = pairs
  localValue2 = dataCollection3
  localValue1, localValue2, number10, number11 = localValue1(localValue2)
  for workingValue5, workingValue6 in localValue1, localValue2, number10, number11 do
    workingValue7 = DeleteCheckpoint
    number13 = workingValue6
    workingValue7(number13)
  end
  localValue1 = {}
  dataCollection3 = localValue1
  localValue1 = pairs
  localValue2 = dataCollection4
  localValue1, localValue2, number10, number11 = localValue1(localValue2)
  for workingValue5, workingValue6 in localValue1, localValue2, number10, number11 do
    workingValue7 = RemoveBlip
    number13 = workingValue6
    workingValue7(number13)
  end
  localValue1 = {}
  dataCollection4 = localValue1
  localValue1 = pairs
  localValue2 = dataCollection5
  localValue1, localValue2, number10, number11 = localValue1(localValue2)
  for workingValue5, workingValue6 in localValue1, localValue2, number10, number11 do
    workingValue7 = DeleteCheckpoint
    number13 = workingValue6
    workingValue7(number13)
  end
  dataCollection2.isInRace = false
end
text2 = AddEventHandler
text3 = "e27d89983c"
stateFlag4 = cmgOperation4
-- Beginner: Register a client-side event handler. Event/command: "e27d89983c".
text2(text3, stateFlag4)
text2 = Citizen
text2 = text2.CreateThread
-- Beginner: this function runs when client event "e27d89983c" fires.

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag
  while true do
    localValue1 = dataCollection2.isInRace
    if localValue1 then
      localValue1 = text4
      if localValue1 then
        localValue1 = dataCollection2.currentCheckpoint
        if nil ~= localValue1 then
          localValue1 = cmgOperation.triathlon
          localValue1 = localValue1.races
          localValue2 = text4
          localValue1 = localValue1[localValue2]
          localValue1 = localValue1.extraCheckpoints
          if localValue1 then
            localValue1 = cmgOperation.triathlon
            localValue1 = localValue1.races
            localValue2 = text4
            localValue1 = localValue1[localValue2]
            localValue1 = localValue1.extraCheckpoints
            localValue2 = dataCollection2.currentCheckpoint
            localValue1 = localValue1[localValue2]
            if localValue1 then
              localValue1 = CMG
              localValue1 = localValue1.getPlayerCoords
              -- Beginner: result below is playerCoords.
              localValue1 = localValue1()
              localValue2 = cmgOperation.triathlon
              localValue2 = localValue2.races
              number10 = text4
              localValue2 = localValue2[number10]
              localValue2 = localValue2.extraCheckpoints
              number10 = dataCollection2.currentCheckpoint
              localValue2 = localValue2[number10]
              localValue1 = localValue1 - localValue2
              localValue1 = #localValue1
              localValue2 = dataCollection2.checkpointDistance
              if localValue1 >= localValue2 then
                localValue1 = cmgOperation.triathlon
                localValue1 = localValue1.races
                localValue2 = text4
                localValue1 = localValue1[localValue2]
                localValue1 = localValue1.extraCheckpoints
                localValue2 = dataCollection2.currentCheckpoint
                localValue1 = localValue1[localValue2]
                localValue2 = SetEntityCoords
                number10 = PlayerPedId
                -- Beginner: result below is localPlayerPed.
                number10 = number10()
                number11 = localValue1.x
                workingValue5 = localValue1.y
                workingValue6 = localValue1.z
                workingValue7 = false
                number13 = false
                number14 = false
                number15 = false
                -- Beginner: Move/teleport an entity to new coordinates.
                localValue2(number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15)
                localValue2 = GetEntityModel
                number10 = CMG
                number10 = number10.getPlayerVehicle
                number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag = number10()
                -- Beginner: result below is modelHash.
                localValue2 = localValue2(number10, number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag)
                if 1131912276 ~= localValue2 then
                  localValue2 = cmgOperation.triathlon
                  localValue2 = localValue2.races
                  number10 = text4
                  localValue2 = localValue2[number10]
                  localValue2 = localValue2.extraCheckpoints
                  number10 = dataCollection2.currentCheckpoint
                  localValue2 = localValue2[number10]
                  number10 = CMG
                  number10 = number10.spawnVehicle
                  number11 = 1131912276
                  workingValue5 = localValue2.x
                  workingValue6 = localValue2.y
                  workingValue7 = localValue2.z
                  number13 = 10.0
                  number14 = true
                  number15 = true
                  stateFlag = true
                  number10(number11, workingValue5, workingValue6, workingValue7, number13, number14, number15, stateFlag)
                end
              end
            end
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 2000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text2(text3)
