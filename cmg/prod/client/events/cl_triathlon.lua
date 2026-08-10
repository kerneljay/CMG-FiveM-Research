--[[
    Beginner Guide: cl_triathlon.lua
    ================================

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
    BEGINNER GUIDE — Triathlon
    ==========================

    File: cmg/prod/client/events/cl_triathlon.lua
    Purpose: This file contains event/minigame logic.

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

    Config/data used:
      * cfg/events/cfg_triathlon

    Network/hash identifiers found: 9
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * Press LMB or F to deploy parachute

]]
local cmgCall, dataTable, textValue4, dataTable2, workValue4, dataTable3, dataTable4, dataTable5, dataTable6, eventRegistration3, textValue, workValue, eventRegistration, eventRegistration2, threadCall, cmgCall2, cmgCall3, cmgCall4, textValue2, textValue3, flag4
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/events/cfg_triathlon"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
dataTable = {}
textValue4 = ""
dataTable2 = {}
dataTable2.isParachuting = false
dataTable2.isOnBMX = false
dataTable2.isRunning = false
dataTable2.isInRace = false
dataTable2.closetCheckpoint = nil
dataTable2.hasFinished = false
dataTable2.currentCheckpoint = 0
dataTable2.currentCheckpointId = 0
dataTable2.checkpointDistance = 0.0
workValue4 = nil
dataTable3 = {}
dataTable4 = {}
dataTable5 = {}
dataTable6 = {}
eventRegistration3 = Citizen
eventRegistration3 = eventRegistration3.CreateThread
function textValue()
  local arg1, arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7
  arg1 = pairs
  arg2 = cmgCall.triathlon
  arg2 = arg2.races
  arg1, arg2, numberValue10, numberValue11 = arg1(arg2)
  for workValue5 in arg1, arg2, numberValue10, numberValue11 do
    workValue6 = dataTable
    workValue6 = #workValue6
    workValue7 = workValue6 + 1
    workValue6 = dataTable
    workValue6[workValue7] = workValue5
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration3(textValue)
eventRegistration3 = RegisterNetEvent
textValue = "b703d69501"
-- Beginner: this function handles network event "b703d69501".
function workValue(arg1)
  local arg2
  textValue4 = arg1
  dataTable2.isInRace = true
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b703d69501".
eventRegistration3(textValue, workValue)
eventRegistration3 = RegisterNetEvent
textValue = "e3ef1bd162"
-- Beginner: this function handles network event "e3ef1bd162".
function workValue()
  local arg1, arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8
  arg1 = 1
  arg2 = cmgCall.triathlon
  arg2 = arg2.races
  numberValue10 = textValue4
  arg2 = arg2[numberValue10]
  arg2 = arg2.checkpoints
  arg2 = #arg2
  numberValue10 = 1
  for numberValue11 = arg1, arg2, numberValue10 do
    workValue5 = cmgCall.triathlon
    workValue5 = workValue5.races
    workValue6 = textValue4
    workValue5 = workValue5[workValue6]
    workValue5 = workValue5.checkpoints
    workValue5 = workValue5[numberValue11]
    workValue6 = cmgCall.triathlon
    workValue6 = workValue6.races
    workValue7 = textValue4
    workValue6 = workValue6[workValue7]
    workValue6 = workValue6.cycle
    workValue7 = dataTable5
    numberValue13 = CreateCheckpoint
    numberValue14 = 13
    numberValue15 = workValue5.x
    flag = workValue5.y
    flag2 = workValue5.z
    flag3 = workValue6.x
    numberValue = workValue6.y
    numberValue2 = workValue6.z
    numberValue3 = 50.0
    numberValue4 = 255
    numberValue5 = 255
    numberValue6 = 0
    numberValue7 = 127
    numberValue8 = 0
    -- Beginner: result below is checkpointHandle.
    numberValue13 = numberValue13(numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8)
    workValue7[numberValue11] = numberValue13
  end
  arg1 = textValue4
  if "Vinewood Sign" == arg1 then
    arg1 = 0
    arg2 = CMG
    arg2 = arg2.loadModel
    numberValue10 = 1867879106
    -- Beginner: Request/load a GTA model before spawning or applying it.
    arg2(numberValue10)
    arg2 = 1
    numberValue10 = 12
    numberValue11 = 1
    for workValue5 = arg2, numberValue10, numberValue11 do
      workValue6 = CreateObject
      workValue7 = 1867879106
      numberValue13 = 847.02429199219 + arg1
      numberValue14 = 1290.3720703125
      numberValue14 = numberValue14 - arg1
      numberValue15 = 359.15859985352
      flag = false
      flag2 = true
      flag3 = true
      -- Beginner: result below is objectEntity.
      workValue6 = workValue6(workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3)
      workValue7 = SetEntityHeading
      numberValue13 = workValue6
      numberValue14 = 308.5
      -- Beginner: Change the direction an entity is facing.
      workValue7(numberValue13, numberValue14)
      workValue7 = FreezeEntityPosition
      numberValue13 = workValue6
      numberValue14 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      workValue7(numberValue13, numberValue14)
      workValue7 = PlaceObjectOnGroundProperly
      numberValue13 = workValue6
      workValue7(numberValue13)
      workValue7 = dataTable6
      workValue7 = #workValue7
      numberValue13 = workValue7 + 1
      workValue7 = dataTable6
      workValue7[numberValue13] = workValue6
      arg1 = arg1 + 2
    end
    arg2 = SetModelAsNoLongerNeeded
    numberValue10 = 1867879106
    arg2(numberValue10)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e3ef1bd162".
eventRegistration3(textValue, workValue)
function eventRegistration3(arg1)
  local arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2, numberValue3
  arg2 = AddBlipForCoord
  numberValue10 = arg1.x
  numberValue11 = arg1.y
  workValue5 = arg1.z
  -- Beginner: result below is blipHandle.
  arg2 = arg2(numberValue10, numberValue11, workValue5)
  numberValue10 = SetBlipSprite
  numberValue11 = arg2
  workValue5 = 38
  numberValue10(numberValue11, workValue5)
  numberValue10 = CreateCheckpoint
  numberValue11 = 9
  workValue5 = arg1.x
  workValue6 = arg1.y
  workValue7 = arg1.z
  workValue7 = workValue7 - 1.0
  numberValue13 = 0
  numberValue14 = 0
  numberValue15 = 0
  flag = 10.0
  flag2 = 255
  flag3 = 255
  numberValue = 0
  numberValue2 = 127
  numberValue3 = 0
  -- Beginner: result below is checkpointHandle.
  numberValue10 = numberValue10(numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2, numberValue3)
  dataTable3.finish = numberValue10
  dataTable4.finish = arg2
end
function textValue(arg1)
  local arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2, numberValue3, numberValue4
  arg2 = AddBlipForCoord
  numberValue10 = arg1.x
  numberValue11 = arg1.y
  workValue5 = arg1.z
  -- Beginner: result below is blipHandle.
  arg2 = arg2(numberValue10, numberValue11, workValue5)
  numberValue10 = SetBlipSprite
  numberValue11 = arg2
  workValue5 = 226
  numberValue10(numberValue11, workValue5)
  numberValue10 = SetBlipRoute
  numberValue11 = arg2
  workValue5 = true
  numberValue10(numberValue11, workValue5)
  numberValue10 = cmgCall.triathlon
  numberValue10 = numberValue10.races
  numberValue11 = textValue4
  numberValue10 = numberValue10[numberValue11]
  numberValue10 = numberValue10.finish
  numberValue11 = CreateCheckpoint
  workValue5 = 0
  workValue6 = arg1.x
  workValue7 = arg1.y
  numberValue13 = arg1.z
  numberValue13 = numberValue13 - 1.0
  numberValue14 = numberValue10.x
  numberValue15 = numberValue10.y
  flag = numberValue10.z
  flag2 = 10.0
  flag3 = 255
  numberValue = 255
  numberValue2 = 0
  numberValue3 = 127
  numberValue4 = 0
  -- Beginner: result below is checkpointHandle.
  numberValue11 = numberValue11(workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2, numberValue3, numberValue4)
  dataTable3.bmxTo = numberValue11
  numberValue11 = SetCheckpointCylinderHeight
  workValue5 = dataTable3.bmxTo
  workValue6 = 40.0
  workValue7 = 140.0
  numberValue13 = 25.0
  numberValue11(workValue5, workValue6, workValue7, numberValue13)
  dataTable4.bmxTo = arg2
  function numberValue11()
    local modelHash, cmgCall5, textValue5, textValue6, flag9
    modelHash = GetEntityModel
    cmgCall5 = CMG
    cmgCall5 = cmgCall5.getPlayerVehicle
    cmgCall5, textValue5, textValue6, flag9 = cmgCall5()
    -- Beginner: result below is modelHash.
    modelHash = modelHash(cmgCall5, textValue5, textValue6, flag9)
    if 1131912276 == modelHash then
      modelHash = DeleteEntity
      cmgCall5 = CMG
      cmgCall5 = cmgCall5.getPlayerVehicle
      cmgCall5, textValue5, textValue6, flag9 = cmgCall5()
      -- Beginner: Delete a GTA entity.
      modelHash(cmgCall5, textValue5, textValue6, flag9)
      dataTable2.isOnBMX = false
      dataTable2.isRunning = true
      modelHash = DeleteCheckpoint
      cmgCall5 = dataTable3.bmxTo
      modelHash(cmgCall5)
      modelHash = RemoveBlip
      cmgCall5 = dataTable4.bmxTo
      modelHash(cmgCall5)
      modelHash = tCMG
      modelHash = modelHash.removeArea
      cmgCall5 = "cmg_triathlon_race_bmxTo"
      modelHash(cmgCall5)
      modelHash = PlaySoundFrontend
      cmgCall5 = -1
      textValue5 = "RACE_PLACED"
      textValue6 = "HUD_AWARDS"
      flag9 = false
      modelHash(cmgCall5, textValue5, textValue6, flag9)
      modelHash = eventRegistration3
      cmgCall5 = cmgCall.triathlon
      cmgCall5 = cmgCall5.races
      textValue5 = textValue4
      cmgCall5 = cmgCall5[textValue5]
      cmgCall5 = cmgCall5.finish
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      modelHash(cmgCall5)
    end
  end
  function workValue5()
    local modelHash, cmgCall5
  end
  function workValue6()
    local modelHash, cmgCall5
  end
  workValue7 = CMG
  workValue7 = workValue7.createArea
  numberValue13 = "cmg_triathlon_race_bmxTo"
  numberValue14 = arg1
  numberValue15 = 6.0
  flag = 6
  flag2 = numberValue11
  flag3 = workValue5
  numberValue = workValue6
  -- Beginner: Create an interaction area around a world position.
  workValue7(numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue)
end
function workValue()
  local arg1, arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2, numberValue3
  arg1 = dataTable2.currentCheckpointId
  if 0 ~= arg1 then
    arg1 = DeleteCheckpoint
    arg2 = dataTable2.currentCheckpointId
    arg1(arg2)
    arg1 = tCMG
    arg1 = arg1.removeArea
    arg2 = "cmg_triathlon_race_"
    numberValue10 = dataTable2.currentCheckpointId
    arg2 = arg2 .. numberValue10
    arg1(arg2)
  end
  arg1 = dataTable2.currentCheckpoint
  if 1 ~= arg1 then
    arg1 = dataTable2.currentCheckpoint
    arg1 = arg1 + 1
    dataTable2.currentCheckpoint = arg1
  end
  arg1 = dataTable2.currentCheckpoint
  arg2 = cmgCall.triathlon
  arg2 = arg2.races
  numberValue10 = textValue4
  arg2 = arg2[numberValue10]
  arg2 = arg2.extraCheckpoints
  arg2 = #arg2
  if arg1 > arg2 then
    return
  end
  arg1 = cmgCall.triathlon
  arg1 = arg1.races
  arg2 = textValue4
  arg1 = arg1[arg2]
  arg1 = arg1.extraCheckpoints
  arg2 = dataTable2.currentCheckpoint
  arg1 = arg1[arg2]
  arg2 = cmgCall.triathlon
  arg2 = arg2.races
  numberValue10 = textValue4
  arg2 = arg2[numberValue10]
  arg2 = arg2.extraCheckpoints
  numberValue10 = dataTable2.currentCheckpoint
  numberValue10 = numberValue10 + 1
  arg2 = arg2[numberValue10]
  numberValue10 = CreateCheckpoint
  numberValue11 = 0
  workValue5 = arg1.x
  workValue6 = arg1.y
  workValue7 = arg1.z
  workValue7 = workValue7 - 1.0
  numberValue13 = arg2.x
  numberValue14 = arg2.y
  numberValue15 = arg2.z
  flag = 10.0
  flag2 = 255
  flag3 = 255
  numberValue = 0
  numberValue2 = 127
  numberValue3 = 0
  -- Beginner: result below is checkpointHandle.
  numberValue10 = numberValue10(numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2, numberValue3)
  dataTable2.currentCheckpointId = numberValue10
  numberValue10 = dataTable2.currentCheckpoint
  if 1 == numberValue10 then
    dataTable2.currentCheckpoint = 2
  end
  numberValue10 = CMG
  numberValue10 = numberValue10.getPlayerCoords
  -- Beginner: result below is playerCoords.
  numberValue10 = numberValue10()
  numberValue11 = cmgCall.triathlon
  numberValue11 = numberValue11.races
  workValue5 = textValue4
  numberValue11 = numberValue11[workValue5]
  numberValue11 = numberValue11.extraCheckpoints
  workValue5 = dataTable2.currentCheckpoint
  workValue5 = workValue5 + 1
  numberValue11 = numberValue11[workValue5]
  numberValue10 = numberValue10 - numberValue11
  numberValue10 = #numberValue10
  dataTable2.checkpointDistance = numberValue10
  function numberValue10()
    local modelHash, cmgCall5, textValue5, textValue6, flag9
    modelHash = GetEntityModel
    cmgCall5 = CMG
    cmgCall5 = cmgCall5.getPlayerVehicle
    cmgCall5, textValue5, textValue6, flag9 = cmgCall5()
    -- Beginner: result below is modelHash.
    modelHash = modelHash(cmgCall5, textValue5, textValue6, flag9)
    if 1131912276 == modelHash then
      modelHash = workValue
      modelHash()
      modelHash = PlaySoundFrontend
      cmgCall5 = -1
      textValue5 = "RACE_PLACED"
      textValue6 = "HUD_AWARDS"
      flag9 = false
      modelHash(cmgCall5, textValue5, textValue6, flag9)
    end
  end
  function numberValue11()
    local modelHash, cmgCall5
  end
  function workValue5()
    local modelHash, cmgCall5
  end
  workValue6 = CMG
  workValue6 = workValue6.createArea
  workValue7 = "cmg_triathlon_race_"
  numberValue13 = dataTable2.currentCheckpointId
  workValue7 = workValue7 .. numberValue13
  numberValue13 = arg1
  numberValue14 = 6.0
  numberValue15 = 6
  flag = numberValue10
  flag2 = numberValue11
  flag3 = workValue5
  -- Beginner: Create an interaction area around a world position.
  workValue6(workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3)
end
eventRegistration = RegisterNetEvent
eventRegistration2 = "cdbc466c3d"
-- Beginner: this function handles network event "cdbc466c3d".
function threadCall(arg1)
  local arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2, numberValue3, numberValue4
  workValue4 = arg1
  arg2 = CMG
  arg2 = arg2.stopEventSequence
  numberValue10 = false
  arg2(numberValue10)
  dataTable2.isParachuting = true
  arg2 = AddBlipForCoord
  numberValue10 = arg1.x
  numberValue11 = arg1.y
  workValue5 = arg1.z
  -- Beginner: result below is blipHandle.
  arg2 = arg2(numberValue10, numberValue11, workValue5)
  numberValue10 = SetBlipSprite
  numberValue11 = arg2
  workValue5 = 226
  numberValue10(numberValue11, workValue5)
  numberValue10 = cmgCall.triathlon
  numberValue10 = numberValue10.races
  numberValue11 = textValue4
  numberValue10 = numberValue10[numberValue11]
  numberValue10 = numberValue10.run
  numberValue11 = CreateCheckpoint
  workValue5 = 0
  workValue6 = arg1.x
  workValue7 = arg1.y
  numberValue13 = arg1.z
  numberValue13 = numberValue13 - 1.0
  numberValue14 = numberValue10.x
  numberValue15 = numberValue10.y
  flag = numberValue10.z
  flag2 = 10.0
  flag3 = 255
  numberValue = 255
  numberValue2 = 0
  numberValue3 = 127
  numberValue4 = 0
  -- Beginner: result below is checkpointHandle.
  numberValue11 = numberValue11(workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2, numberValue3, numberValue4)
  dataTable3.bmx = numberValue11
  numberValue11 = SetCheckpointCylinderHeight
  workValue5 = dataTable3.bmx
  workValue6 = 40.0
  workValue7 = 70.0
  numberValue13 = 25.0
  numberValue11(workValue5, workValue6, workValue7, numberValue13)
  dataTable4.bmx = arg2
  function numberValue11()
    local modelHash, cmgCall5, textValue5, textValue6, flag9, numberValue12, flag10, flag11, flag12
    modelHash = CMG
    modelHash = modelHash.loadModel
    cmgCall5 = 1131912276
    -- Beginner: Request/load a GTA model before spawning or applying it.
    modelHash(cmgCall5)
    modelHash = CMG
    modelHash = modelHash.spawnVehicle
    cmgCall5 = 1131912276
    textValue5 = arg1.x
    textValue6 = arg1.y
    flag9 = arg1.z
    numberValue12 = 10.0
    flag10 = true
    flag11 = true
    flag12 = true
    modelHash(cmgCall5, textValue5, textValue6, flag9, numberValue12, flag10, flag11, flag12)
    modelHash = SetModelAsNoLongerNeeded
    cmgCall5 = 1131912276
    modelHash(cmgCall5)
    dataTable2.isParachuting = false
    dataTable2.isOnBMX = true
    modelHash = DeleteCheckpoint
    cmgCall5 = dataTable3.bmx
    modelHash(cmgCall5)
    modelHash = RemoveBlip
    cmgCall5 = dataTable4.bmx
    modelHash(cmgCall5)
    modelHash = tCMG
    modelHash = modelHash.removeArea
    cmgCall5 = "cmg_triathlon_race_bmx"
    modelHash(cmgCall5)
    modelHash = PlaySoundFrontend
    cmgCall5 = -1
    textValue5 = "RACE_PLACED"
    textValue6 = "HUD_AWARDS"
    flag9 = false
    modelHash(cmgCall5, textValue5, textValue6, flag9)
    modelHash = textValue
    cmgCall5 = cmgCall.triathlon
    cmgCall5 = cmgCall5.races
    textValue5 = textValue4
    cmgCall5 = cmgCall5[textValue5]
    cmgCall5 = cmgCall5.run
    modelHash(cmgCall5)
    modelHash = workValue
    modelHash()
  end
  function workValue5()
    local modelHash, cmgCall5
  end
  function workValue6()
    local modelHash, cmgCall5
  end
  workValue7 = CMG
  workValue7 = workValue7.createArea
  numberValue13 = "cmg_triathlon_race_bmx"
  numberValue14 = arg1
  numberValue15 = 6.0
  flag = 6
  flag2 = numberValue11
  flag3 = workValue5
  numberValue = workValue6
  -- Beginner: Create an interaction area around a world position.
  workValue7(numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cdbc466c3d".
eventRegistration(eventRegistration2, threadCall)
eventRegistration = RegisterNetEvent
eventRegistration2 = "a8589480c9"
-- Beginner: this function handles network event "a8589480c9".
function threadCall(arg1)
  local arg2, numberValue10
  arg2 = CMG
  arg2 = arg2.showCountdownTimer
  numberValue10 = arg1
  arg2(numberValue10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a8589480c9".
eventRegistration(eventRegistration2, threadCall)
eventRegistration = {}
-- Beginner: this function handles network event "a8589480c9".
function eventRegistration2()
  local arg1, arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15
  arg1 = true
  arg2 = Scaleform
  numberValue10 = "MIDSIZED_MESSAGE"
  arg2 = arg2(numberValue10)
  numberValue10 = arg2.RunFunction
  numberValue11 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  workValue5 = {}
  workValue6 = "~y~TRIATHLON"
  workValue7 = "RIDE TO THE CHECKPOINT!"
  numberValue13 = 5
  numberValue14 = true
  numberValue15 = false
  workValue5[1] = workValue6
  workValue5[2] = workValue7
  workValue5[3] = numberValue13
  workValue5[4] = numberValue14
  workValue5[5] = numberValue15
  numberValue10(numberValue11, workValue5)
  numberValue10 = Citizen
  numberValue10 = numberValue10.CreateThread
  function numberValue11()
    local modelHash, cmgCall5
    while true do
      modelHash = arg1
      if not modelHash then
        break
      end
      modelHash = arg2.Render2D
      modelHash()
      modelHash = Wait
      cmgCall5 = 0
      modelHash(cmgCall5)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue10(numberValue11)
  numberValue10 = Wait
  numberValue11 = 5000
  numberValue10(numberValue11)
  arg1 = false
end
eventRegistration.bmx = eventRegistration2
function eventRegistration2()
  local arg1, arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15
  arg1 = true
  arg2 = Scaleform
  numberValue10 = "MIDSIZED_MESSAGE"
  arg2 = arg2(numberValue10)
  numberValue10 = arg2.RunFunction
  numberValue11 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  workValue5 = {}
  workValue6 = "~y~TRIATHLON"
  workValue7 = "RUN TO THE FINISH!"
  numberValue13 = 5
  numberValue14 = true
  numberValue15 = false
  workValue5[1] = workValue6
  workValue5[2] = workValue7
  workValue5[3] = numberValue13
  workValue5[4] = numberValue14
  workValue5[5] = numberValue15
  numberValue10(numberValue11, workValue5)
  numberValue10 = Citizen
  numberValue10 = numberValue10.CreateThread
  function numberValue11()
    local modelHash, cmgCall5
    while true do
      modelHash = arg1
      if not modelHash then
        break
      end
      modelHash = arg2.Render2D
      modelHash()
      modelHash = Wait
      cmgCall5 = 0
      modelHash(cmgCall5)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue10(numberValue11)
  numberValue10 = Wait
  numberValue11 = 5000
  numberValue10(numberValue11)
  arg1 = false
end
eventRegistration.runto = eventRegistration2
function eventRegistration2(arg1)
  local arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag
  arg2 = true
  numberValue10 = Scaleform
  numberValue11 = "MIDSIZED_MESSAGE"
  numberValue10 = numberValue10(numberValue11)
  numberValue11 = numberValue10.RunFunction
  workValue5 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  workValue6 = {}
  workValue7 = "~y~TRIATHLON"
  numberValue13 = arg1
  numberValue14 = 5
  numberValue15 = true
  flag = false
  workValue6[1] = workValue7
  workValue6[2] = numberValue13
  workValue6[3] = numberValue14
  workValue6[4] = numberValue15
  workValue6[5] = flag
  numberValue11(workValue5, workValue6)
  numberValue11 = Citizen
  numberValue11 = numberValue11.CreateThread
  function workValue5()
    local modelHash, cmgCall5
    while true do
      modelHash = arg2
      if not modelHash then
        break
      end
      modelHash = numberValue10.Render2D
      modelHash()
      modelHash = Wait
      cmgCall5 = 0
      modelHash(cmgCall5)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue11(workValue5)
  numberValue11 = Wait
  workValue5 = 5000
  numberValue11(workValue5)
  arg2 = false
end
eventRegistration.finish = eventRegistration2
function eventRegistration2()
  local arg1, arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15
  arg1 = true
  arg2 = Scaleform
  numberValue10 = "MIDSIZED_MESSAGE"
  arg2 = arg2(numberValue10)
  numberValue10 = arg2.RunFunction
  numberValue11 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  workValue5 = {}
  workValue6 = "~y~TRIATHLON"
  workValue7 = "PARACHUTE THROUGH THE CHECKPOINTS TO THE BMX!"
  numberValue13 = 5
  numberValue14 = true
  numberValue15 = false
  workValue5[1] = workValue6
  workValue5[2] = workValue7
  workValue5[3] = numberValue13
  workValue5[4] = numberValue14
  workValue5[5] = numberValue15
  numberValue10(numberValue11, workValue5)
  numberValue10 = Citizen
  numberValue10 = numberValue10.CreateThread
  function numberValue11()
    local modelHash, cmgCall5
    while true do
      modelHash = arg1
      if not modelHash then
        break
      end
      modelHash = arg2.Render2D
      modelHash()
      modelHash = Wait
      cmgCall5 = 0
      modelHash(cmgCall5)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue10(numberValue11)
  numberValue10 = Wait
  numberValue11 = 5000
  numberValue10(numberValue11)
  arg1 = false
end
eventRegistration.para = eventRegistration2
eventRegistration2 = RegisterNetEvent
threadCall = "d9697d34f9"
-- Beginner: this function handles network event "d9697d34f9".
function cmgCall2(arg1, arg2)
  local numberValue10, numberValue11, workValue5
  numberValue10 = eventRegistration
  numberValue10 = numberValue10[arg1]
  if nil ~= numberValue10 then
    numberValue10 = eventRegistration
    numberValue10 = numberValue10[arg1]
    numberValue11 = table
    numberValue11 = numberValue11.unpack
    workValue5 = arg2 or workValue5
    if not arg2 then
      workValue5 = {}
    end
    numberValue11, workValue5 = numberValue11(workValue5)
    numberValue10(numberValue11, workValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d9697d34f9".
eventRegistration2(threadCall, cmgCall2)
eventRegistration2 = RegisterNetEvent
threadCall = "f1c217712f"
-- Beginner: this function handles network event "f1c217712f".
function cmgCall2()
  local arg1, arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15
  arg1 = true
  arg2 = Scaleform
  numberValue10 = "MIDSIZED_MESSAGE"
  arg2 = arg2(numberValue10)
  numberValue10 = arg2.RunFunction
  numberValue11 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  workValue5 = {}
  workValue6 = "~y~TRIATHLON"
  workValue7 = "EVENT IS ENDING IN 30 SECONDS"
  numberValue13 = 5
  numberValue14 = true
  numberValue15 = false
  workValue5[1] = workValue6
  workValue5[2] = workValue7
  workValue5[3] = numberValue13
  workValue5[4] = numberValue14
  workValue5[5] = numberValue15
  numberValue10(numberValue11, workValue5)
  numberValue10 = Citizen
  numberValue10 = numberValue10.CreateThread
  function numberValue11()
    local modelHash, cmgCall5
    while true do
      modelHash = arg1
      if not modelHash then
        break
      end
      modelHash = arg2.Render2D
      modelHash()
      modelHash = Wait
      cmgCall5 = 0
      modelHash(cmgCall5)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue10(numberValue11)
  numberValue10 = Wait
  numberValue11 = 5000
  numberValue10(numberValue11)
  numberValue10 = CMG
  numberValue10 = numberValue10.showCountdownTimer
  numberValue11 = 31
  numberValue10(numberValue11)
  arg1 = false
  numberValue10 = dataTable2.hasFinished
  if not numberValue10 then
    numberValue10 = TriggerServerEvent
    numberValue11 = "07033c0723"
    workValue5 = currentEvent
    workValue5 = workValue5.minigameId
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "07033c0723".
    numberValue10(numberValue11, workValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f1c217712f".
eventRegistration2(threadCall, cmgCall2)
eventRegistration2 = false
threadCall = Citizen
threadCall = threadCall.CreateThread
function cmgCall2()
  local arg1, arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag
  while true do
    arg1 = dataTable2.isParachuting
    if arg1 then
      arg1 = textValue4
      if nil ~= arg1 then
        arg1 = GetEntityCoords
        arg2 = PlayerPedId
        arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag = arg2()
        -- Beginner: result below is entityCoords.
        arg1 = arg1(arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag)
        arg2 = 1
        numberValue10 = cmgCall.triathlon
        numberValue10 = numberValue10.races
        numberValue11 = textValue4
        numberValue10 = numberValue10[numberValue11]
        numberValue10 = numberValue10.checkpoints
        numberValue10 = #numberValue10
        numberValue11 = 1
        for workValue5 = arg2, numberValue10, numberValue11 do
          workValue6 = cmgCall.triathlon
          workValue6 = workValue6.races
          workValue7 = textValue4
          workValue6 = workValue6[workValue7]
          workValue6 = workValue6.checkpoints
          workValue6 = workValue6[workValue5]
          workValue7 = arg1 - workValue6
          workValue7 = #workValue7
          if workValue7 <= 25.0 then
            workValue7 = eventRegistration2
            if not workValue7 then
              workValue7 = PlaySoundFrontend
              numberValue13 = -1
              numberValue14 = "RACE_PLACED"
              numberValue15 = "HUD_AWARDS"
              flag = false
              workValue7(numberValue13, numberValue14, numberValue15, flag)
              workValue7 = true
              eventRegistration2 = workValue7
              workValue7 = SetTimeout
              numberValue13 = 500
              function numberValue14()
                local modelHash, cmgCall5
                modelHash = false
                eventRegistration2 = modelHash
              end
              workValue7(numberValue13, numberValue14)
            end
            workValue7 = DeleteCheckpoint
            numberValue13 = dataTable5
            numberValue13 = numberValue13[workValue5]
            workValue7(numberValue13)
            workValue7 = dataTable5
            workValue7[workValue5] = nil
          end
        end
      end
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 150
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(cmgCall2)
function threadCall()
  local arg1, arg2
  arg1 = dataTable2.isParachuting
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.Text
    arg2 = {}
    arg2.message = "Press LMB or F to deploy parachute"
    arg1(arg2)
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
cmgCall3 = threadCall
cmgCall4 = "Triathlon Deploy"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(cmgCall3, cmgCall4)
function cmgCall2()
  local arg1, arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, flag5, flag6, numberValue9, flag7, workValue2, workValue3, flag8
  arg1 = dataTable2.isParachuting
  if arg1 then
    arg1 = workValue4
    arg2 = CMG
    arg2 = arg2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg2 = arg2()
    numberValue10 = arg1 - arg2
    numberValue11 = #numberValue10
    numberValue10 = numberValue10 / numberValue11
    numberValue11 = DrawMarker
    workValue5 = 2
    workValue6 = arg2.x
    workValue7 = arg2.y
    numberValue13 = arg2.z
    numberValue13 = numberValue13 + 1.0
    numberValue14 = numberValue10.x
    numberValue15 = numberValue10.y
    flag = numberValue10.z
    flag2 = 90.0
    flag3 = 0
    numberValue = 0
    numberValue2 = 1.0
    numberValue3 = 1.0
    numberValue4 = 1.0
    numberValue5 = 0
    numberValue6 = 0
    numberValue7 = 255
    numberValue8 = 150
    flag5 = false
    flag6 = false
    numberValue9 = 2
    flag7 = false
    workValue2 = nil
    workValue3 = nil
    flag8 = false
    numberValue11(workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, flag5, flag6, numberValue9, flag7, workValue2, workValue3, flag8)
  end
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
cmgCall4 = cmgCall2
textValue2 = "Triathlon Direction Marker"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(cmgCall4, textValue2)
function cmgCall3()
  local arg1, arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2
  arg1 = dataTable2.isInRace
  if arg1 then
    arg1 = IsPedInParachuteFreeFall
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2 = arg2()
    arg1 = arg1(arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2)
    if arg1 then
      arg1 = HasEntityCollidedWithAnything
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2 = arg2()
      arg1 = arg1(arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2)
      if not arg1 then
        arg1 = ApplyForceToEntity
        arg2 = CMG
        arg2 = arg2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg2 = arg2()
        numberValue10 = 1
        numberValue11 = 0.0
        workValue5 = 75.0
        workValue6 = 2.5
        workValue7 = 0.0
        numberValue13 = 0.0
        numberValue14 = 0.0
        numberValue15 = 0
        flag = true
        flag2 = false
        flag3 = false
        numberValue = false
        numberValue2 = true
        arg1(arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag, flag2, flag3, numberValue, numberValue2)
      end
    end
    arg1 = DisableControlAction
    arg2 = 2
    numberValue10 = 37
    numberValue11 = true
    arg1(arg2, numberValue10, numberValue11)
    arg1 = DisablePlayerFiring
    arg2 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    arg2 = arg2()
    numberValue10 = true
    arg1(arg2, numberValue10)
    arg1 = DisableControlAction
    arg2 = 0
    numberValue10 = 106
    numberValue11 = true
    arg1(arg2, numberValue10, numberValue11)
    arg1 = DisableControlAction
    arg2 = 0
    numberValue10 = 45
    numberValue11 = true
    arg1(arg2, numberValue10, numberValue11)
    arg1 = DisableControlAction
    arg2 = 0
    numberValue10 = 24
    numberValue11 = true
    arg1(arg2, numberValue10, numberValue11)
    arg1 = DisableControlAction
    arg2 = 0
    numberValue10 = 263
    numberValue11 = true
    arg1(arg2, numberValue10, numberValue11)
    arg1 = DisableControlAction
    arg2 = 0
    numberValue10 = 140
    numberValue11 = true
    arg1(arg2, numberValue10, numberValue11)
    arg1 = DisableControlAction
    arg2 = 0
    numberValue10 = 75
    numberValue11 = true
    arg1(arg2, numberValue10, numberValue11)
    arg1 = DisableControlAction
    arg2 = 27
    numberValue10 = 75
    numberValue11 = true
    arg1(arg2, numberValue10, numberValue11)
    arg1 = CMG
    arg1 = arg1.setWeapon
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    numberValue10 = -1569615261
    numberValue11 = true
    arg1(arg2, numberValue10, numberValue11)
    arg1 = CMG
    arg1 = arg1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = SetEntityInvincible
    numberValue10 = arg1
    numberValue11 = true
    arg2(numberValue10, numberValue11)
    arg2 = SetPlayerInvincible
    numberValue10 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    numberValue10 = numberValue10()
    numberValue11 = true
    arg2(numberValue10, numberValue11)
    arg2 = SetPedCanRagdoll
    numberValue10 = arg1
    numberValue11 = false
    arg2(numberValue10, numberValue11)
    arg2 = ClearPedBloodDamage
    numberValue10 = arg1
    arg2(numberValue10)
    arg2 = ResetPedVisibleDamage
    numberValue10 = arg1
    arg2(numberValue10)
    arg2 = ClearPedLastWeaponDamage
    numberValue10 = arg1
    arg2(numberValue10)
    arg2 = SetEntityProofs
    numberValue10 = arg1
    numberValue11 = true
    workValue5 = true
    workValue6 = true
    workValue7 = true
    numberValue13 = true
    numberValue14 = true
    numberValue15 = true
    flag = true
    arg2(numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag)
    arg2 = SetEntityCanBeDamaged
    numberValue10 = arg1
    numberValue11 = false
    arg2(numberValue10, numberValue11)
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
textValue2 = cmgCall3
textValue3 = "Triathlon Parachute"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(textValue2, textValue3)
cmgCall4 = CMG
cmgCall4 = cmgCall4.registerCommand
textValue2 = "heading"
function textValue3()
  local arg1, arg2, numberValue10
  arg1 = print
  arg2 = GetEntityHeading
  numberValue10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue10 = numberValue10()
  arg2, numberValue10 = arg2(numberValue10)
  arg1(arg2, numberValue10)
end
flag4 = false
cmgCall4(textValue2, textValue3, flag4)
cmgCall4 = RegisterNetEvent
textValue2 = "c1cdf22c86"
-- Beginner: this function handles network event "c1cdf22c86".
function textValue3()
  local arg1, arg2, numberValue10, numberValue11, workValue5
  arg1 = DeleteCheckpoint
  arg2 = dataTable3.finish
  arg1(arg2)
  arg1 = RemoveBlip
  arg2 = dataTable4.finish
  arg1(arg2)
  arg1 = PlaySoundFrontend
  arg2 = -1
  numberValue10 = "ScreenFlash"
  numberValue11 = "WastedSounds"
  workValue5 = false
  arg1(arg2, numberValue10, numberValue11, workValue5)
  dataTable2.isRunning = false
  dataTable2.isInRace = false
  dataTable2.hasFinished = true
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c1cdf22c86".
cmgCall4(textValue2, textValue3)
function cmgCall4()
  local arg1, arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13
  arg1 = currentEvent
  arg1.isActive = false
  arg1 = pairs
  arg2 = dataTable3
  arg1, arg2, numberValue10, numberValue11 = arg1(arg2)
  for workValue5, workValue6 in arg1, arg2, numberValue10, numberValue11 do
    workValue7 = DeleteCheckpoint
    numberValue13 = workValue6
    workValue7(numberValue13)
  end
  arg1 = {}
  dataTable3 = arg1
  arg1 = pairs
  arg2 = dataTable4
  arg1, arg2, numberValue10, numberValue11 = arg1(arg2)
  for workValue5, workValue6 in arg1, arg2, numberValue10, numberValue11 do
    workValue7 = RemoveBlip
    numberValue13 = workValue6
    workValue7(numberValue13)
  end
  arg1 = {}
  dataTable4 = arg1
  arg1 = pairs
  arg2 = dataTable5
  arg1, arg2, numberValue10, numberValue11 = arg1(arg2)
  for workValue5, workValue6 in arg1, arg2, numberValue10, numberValue11 do
    workValue7 = DeleteCheckpoint
    numberValue13 = workValue6
    workValue7(numberValue13)
  end
  dataTable2.isInRace = false
end
textValue2 = AddEventHandler
textValue3 = "e27d89983c"
flag4 = cmgCall4
-- Beginner: Register a client-side event handler. Event/command: "e27d89983c".
textValue2(textValue3, flag4)
textValue2 = Citizen
textValue2 = textValue2.CreateThread
-- Beginner: this function runs when client event "e27d89983c" fires.
function textValue3()
  local arg1, arg2, numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag
  while true do
    arg1 = dataTable2.isInRace
    if arg1 then
      arg1 = textValue4
      if arg1 then
        arg1 = dataTable2.currentCheckpoint
        if nil ~= arg1 then
          arg1 = cmgCall.triathlon
          arg1 = arg1.races
          arg2 = textValue4
          arg1 = arg1[arg2]
          arg1 = arg1.extraCheckpoints
          if arg1 then
            arg1 = cmgCall.triathlon
            arg1 = arg1.races
            arg2 = textValue4
            arg1 = arg1[arg2]
            arg1 = arg1.extraCheckpoints
            arg2 = dataTable2.currentCheckpoint
            arg1 = arg1[arg2]
            if arg1 then
              arg1 = CMG
              arg1 = arg1.getPlayerCoords
              -- Beginner: result below is playerCoords.
              arg1 = arg1()
              arg2 = cmgCall.triathlon
              arg2 = arg2.races
              numberValue10 = textValue4
              arg2 = arg2[numberValue10]
              arg2 = arg2.extraCheckpoints
              numberValue10 = dataTable2.currentCheckpoint
              arg2 = arg2[numberValue10]
              arg1 = arg1 - arg2
              arg1 = #arg1
              arg2 = dataTable2.checkpointDistance
              if arg1 >= arg2 then
                arg1 = cmgCall.triathlon
                arg1 = arg1.races
                arg2 = textValue4
                arg1 = arg1[arg2]
                arg1 = arg1.extraCheckpoints
                arg2 = dataTable2.currentCheckpoint
                arg1 = arg1[arg2]
                arg2 = SetEntityCoords
                numberValue10 = PlayerPedId
                -- Beginner: result below is localPlayerPed.
                numberValue10 = numberValue10()
                numberValue11 = arg1.x
                workValue5 = arg1.y
                workValue6 = arg1.z
                workValue7 = false
                numberValue13 = false
                numberValue14 = false
                numberValue15 = false
                -- Beginner: Move/teleport an entity to new coordinates.
                arg2(numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15)
                arg2 = GetEntityModel
                numberValue10 = CMG
                numberValue10 = numberValue10.getPlayerVehicle
                numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag = numberValue10()
                -- Beginner: result below is modelHash.
                arg2 = arg2(numberValue10, numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag)
                if 1131912276 ~= arg2 then
                  arg2 = cmgCall.triathlon
                  arg2 = arg2.races
                  numberValue10 = textValue4
                  arg2 = arg2[numberValue10]
                  arg2 = arg2.extraCheckpoints
                  numberValue10 = dataTable2.currentCheckpoint
                  arg2 = arg2[numberValue10]
                  numberValue10 = CMG
                  numberValue10 = numberValue10.spawnVehicle
                  numberValue11 = 1131912276
                  workValue5 = arg2.x
                  workValue6 = arg2.y
                  workValue7 = arg2.z
                  numberValue13 = 10.0
                  numberValue14 = true
                  numberValue15 = true
                  flag = true
                  numberValue10(numberValue11, workValue5, workValue6, workValue7, numberValue13, numberValue14, numberValue15, flag)
                end
              end
            end
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 2000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue2(textValue3)