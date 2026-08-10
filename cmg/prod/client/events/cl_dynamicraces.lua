--[[
    Beginner Guide: cl_dynamicraces.lua
    ===================================

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
    BEGINNER GUIDE — Dynamicraces
    =============================

    File: cmg/prod/client/events/cl_dynamicraces.lua
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

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/events/cfg_dynamicraces

    Network/hash identifiers found: 14
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * Hold ~INPUT_ENTER~ to reset your player to the previous checkpoint.
      * Hold ~INPUT_ENTER~ to reset your vehicle to the previous checkpoint.
      * ~g~You have won the race!
      * ~g~You have finished the race!

]]
local cmgCall, dataTable2, workValue4, eventRegistration2, textValue9, workValue5, workValue6, workValue7, eventRegistration3, eventRegistration4, textValue, workValue, threadCall, cmgCall2, textValue2, eventRegistration, textValue5, workValue2
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable2 = "cfg/events/cfg_dynamicraces"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable2)
dataTable2 = {}
function workValue4()
  local arg1, arg2
  arg1 = {}
  arg1.state = "none"
  arg1.elapsedSeconds = 0
  arg1.elapsedMinutes = 0
  arg1.currentPosition = 1
  arg1.currentCheckpoint = 0
  arg2 = {}
  arg1.checkpoints = arg2
  arg2 = {}
  arg1.checkpointsUUIDs = arg2
  arg1.maxCheckpoints = 0
  arg1.distanceToNextCheckpoint = 10
  arg1.vehicle = ""
  arg1.collisionDisabled = false
  arg1.vehicleId = ""
  arg1.vehicleColour = 1
  arg1.startPosition = -1
  arg1.disableVehicleWeapons = true
  arg1.currentVehicleSpawned = 0
  arg1.holdingF = 0
  arg1.currentLap = 1
  arg1.maxLaps = 1
  arg1.finished = false
  arg1.racePositionScaleform = nil
  dataTable2 = arg1
end
eventRegistration2 = workValue4
eventRegistration2()
eventRegistration2 = Citizen
eventRegistration2 = eventRegistration2.CreateThread
function textValue9()
  local arg1, arg2, arg3, arg4
  arg1 = "Races"
  arg2 = CMG
  arg2 = arg2.registerMinigameCleanupHandler
  arg3 = arg1
  function arg4()
    local arg12, arg22, flag8, textValue8, flag9, flag10, cmgCall4, textValue10, workValue9
    arg12 = Citizen
    arg12 = arg12.InvokeNative
    arg22 = 6917136782320038191
    flag8 = false
    arg12(arg22, flag8)
    arg12 = SetNetworkVehicleAsGhost
    arg22 = dataTable2.currentVehicleSpawned
    flag8 = false
    arg12(arg22, flag8)
    arg12 = DeleteVehicle
    arg22 = dataTable2.currentVehicleSpawned
    arg12(arg22)
    arg12 = pairs
    arg22 = dataTable2.checkpointsUUIDs
    arg12, arg22, flag8, textValue8 = arg12(arg22)
    for flag9, flag10 in arg12, arg22, flag8, textValue8 do
      cmgCall4 = CMG
      cmgCall4 = cmgCall4.deleteCheckpoint
      textValue10 = "rockstar_races"
      workValue9 = flag10
      cmgCall4(textValue10, workValue9)
    end
    arg12 = SetPlayerFallDistance
    arg22 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    arg22 = arg22()
    flag8 = 5.0
    arg12(arg22, flag8)
    arg12 = CMG
    arg12 = arg12.cleanupRockstarMaps
    arg12()
    arg12 = TriggerMusicEvent
    arg22 = "BST_STOP"
    arg12(arg22)
    arg12 = workValue4
    arg12()
  end
  arg2(arg3, arg4)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration2(textValue9)
eventRegistration2 = RegisterNetEvent
textValue9 = "a662d70c86"
-- Beginner: this function handles network event "a662d70c86".
function workValue5(arg1, arg2, arg3)
  local arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6, textValue7, flag7, numberValue, numberValue2, workValue3
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  cmgCall3 = SetEntityCoords
  playerPed = arg4
  flag11 = arg3.x
  tableHelper = arg3.y
  workValue8 = arg3.z
  cmgCall5 = true
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  cmgCall3(playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3)
  cmgCall3 = FreezeEntityPosition
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  flag11 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  cmgCall3(playerPed, flag11)
  dataTable2.state = "waiting"
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.setEventMusic
  playerPed = "FAM2_CHASE_RT"
  cmgCall3(playerPed)
  cmgCall3 = {}
  dataTable2.checkpointData = cmgCall3
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.loadClientRockstarMap
  playerPed = arg2
  flag11 = true
  cmgCall3(playerPed, flag11)
  cmgCall3 = arg2.repairCheckpoints
  if cmgCall3 then
    cmgCall3 = 1
    playerPed = arg2.repairCheckpoints
    playerPed = #playerPed
    flag11 = 1
    for tableHelper = cmgCall3, playerPed, flag11 do
      workValue8 = arg2.repairCheckpoints
      workValue8 = workValue8[tableHelper]
      cmgCall5 = CMG
      cmgCall5 = cmgCall5.createCheckpoint
      flag = "rockstar_races"
      flag2 = 5
      flag3 = workValue8.x
      dataTable = workValue8.y
      textValue3 = workValue8.z
      textValue4 = 0.0
      textValue6 = 0.0
      flag4 = 0.0
      flag5 = 10.0
      flag6 = 255
      textValue7 = 255
      flag7 = 0
      numberValue = 127
      numberValue2 = 0
      function workValue3(arg12)
        local arg22, flag8, textValue8, flag9, flag10
        arg22 = PlaySoundFrontend
        flag8 = -1
        textValue8 = "RACE_PLACED"
        flag9 = "HUD_AWARDS"
        flag10 = false
        arg22(flag8, textValue8, flag9, flag10)
        arg22 = AnimpostfxPlay
        flag8 = "SuccessNeutral"
        textValue8 = 0
        flag9 = false
        arg22(flag8, textValue8, flag9)
        arg22 = CMG
        arg22 = arg22.deleteCheckpoint
        flag8 = "rockstar_races"
        textValue8 = arg12
        arg22(flag8, textValue8)
        arg22 = SetVehicleEngineHealth
        flag8 = dataTable2.currentVehicleSpawned
        textValue8 = 1000.0
        arg22(flag8, textValue8)
        arg22 = SetVehicleBodyHealth
        flag8 = dataTable2.currentVehicleSpawned
        textValue8 = 1000.0
        arg22(flag8, textValue8)
        arg22 = SetVehicleDeformationFixed
        flag8 = dataTable2.currentVehicleSpawned
        arg22(flag8)
        arg22 = SetVehicleFixed
        flag8 = dataTable2.currentVehicleSpawned
        arg22(flag8)
      end
      cmgCall5(flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6, textValue7, flag7, numberValue, numberValue2, workValue3)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a662d70c86".
eventRegistration2(textValue9, workValue5)
eventRegistration2 = RegisterNetEvent
textValue9 = "ca51537e29"
-- Beginner: this function handles network event "ca51537e29".
function workValue5(arg1, arg2)
  local arg3, arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5
  arg3 = currentEvent
  arg3.drawPlayersTimeBar = false
  arg3 = CMG
  arg3 = arg3.stopEventSequence
  arg3()
  arg3 = Citizen
  arg3 = arg3.Wait
  arg4 = 0
  arg3(arg4)
  arg3 = cmgCall.dynamicRaces
  arg3 = arg3[arg1]
  arg4 = BusyspinnerOff
  arg4()
  arg4 = CMG
  arg4 = arg4.startVehicleSelection
  cmgCall3 = arg2.xyz
  playerPed = arg2.w
  flag11 = arg3.vehicleOptions
  tableHelper = 20
  function workValue8(arg12)
    local arg22
    arg22 = currentEvent
    arg22 = arg22.data
    arg22 = arg22.customSpawncode
    if arg22 then
      arg22 = currentEvent
      arg22 = arg22.data
      arg22 = arg22.customSpawncode
      dataTable2.vehicleId = arg22
    else
      arg22 = arg3.vehicleOptions
      arg22 = arg22[arg12]
      if arg22 then
        arg22 = arg3.vehicleOptions
        arg22 = arg22[arg12]
        arg22 = arg22.model
        dataTable2.vehicleId = arg22
      end
    end
  end
  function cmgCall5(arg12)
    local arg22
    dataTable2.vehicleColour = arg12
  end
  arg4(cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ca51537e29".
eventRegistration2(textValue9, workValue5)
function eventRegistration2()
  local arg1, arg2, arg3, arg4
  dataTable2.spawnProtection = true
  arg1 = Citizen
  arg1 = arg1.InvokeNative
  arg2 = 6917136782320038191
  arg3 = true
  arg1(arg2, arg3)
  arg1 = SetNetworkVehicleAsGhost
  arg2 = dataTable2.currentVehicleSpawned
  arg3 = true
  arg1(arg2, arg3)
  arg1 = SetEntityAlpha
  arg2 = dataTable2.currentVehicleSpawned
  arg3 = 155
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = SetTimeout
  arg2 = 3000
  function arg3()
    local arg12, arg22, flag8, textValue8
    arg12 = Citizen
    arg12 = arg12.InvokeNative
    arg22 = 6917136782320038191
    flag8 = false
    arg12(arg22, flag8)
    arg12 = SetNetworkVehicleAsGhost
    arg22 = dataTable2.currentVehicleSpawned
    flag8 = false
    arg12(arg22, flag8)
    arg12 = SetEntityAlpha
    arg22 = dataTable2.currentVehicleSpawned
    flag8 = 255
    textValue8 = false
    arg12(arg22, flag8, textValue8)
    dataTable2.spawnProtection = false
  end
  arg1(arg2, arg3)
end
textValue9 = nil
function workValue5(arg1, arg2)
  local arg3, arg4, cmgCall3, playerPed, flag11
  arg3 = dataTable2.checkpoints
  arg3 = arg3[1]
  if arg2 == arg3 then
    arg3 = PlaySoundFrontend
    arg4 = -1
    cmgCall3 = "RACE_PLACED"
    playerPed = "HUD_AWARDS"
    flag11 = false
    arg3(arg4, cmgCall3, playerPed, flag11)
    arg3 = CMG
    arg3 = arg3.deleteCheckpoint
    arg4 = "rockstar_races"
    cmgCall3 = arg1
    arg3(arg4, cmgCall3)
    arg3 = dataTable2.currentCheckpoint
    arg3 = arg3 + 1
    dataTable2.currentCheckpoint = arg3
    arg3 = dataTable2.currentLocalCheckpoint
    arg3 = arg3 + 1
    dataTable2.currentLocalCheckpoint = arg3
    arg3 = table
    arg3 = arg3.remove
    arg4 = dataTable2.checkpoints
    cmgCall3 = 1
    arg3(arg4, cmgCall3)
    arg3 = TriggerServerEvent
    arg4 = "6ca31d93b3"
    cmgCall3 = currentEvent
    cmgCall3 = cmgCall3.minigameId
    playerPed = dataTable2.currentLap
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6ca31d93b3".
    arg3(arg4, cmgCall3, playerPed)
    dataTable2.disableVehicleWeapons = false
    arg3 = dataTable2.currentCheckpoint
    arg4 = dataTable2.numOfCheckpointsPerLap
    cmgCall3 = dataTable2.currentLap
    arg4 = arg4 * cmgCall3
    if arg3 == arg4 then
      arg3 = dataTable2.currentLap
      arg4 = dataTable2.maxLaps
      if arg3 < arg4 then
        arg3 = dataTable2.currentLap
        arg3 = arg3 + 1
        dataTable2.currentLap = arg3
        dataTable2.currentLocalCheckpoint = 0
      end
    end
    arg3 = 0
    arg4 = dataTable2.currentCheckpoint
    arg4 = arg4 + 1
    cmgCall3 = dataTable2.maxCheckpoints
    if arg4 == cmgCall3 then
      arg3 = 4
    else
      arg4 = dataTable2.currentCheckpoint
      arg4 = arg4 + 1
      cmgCall3 = dataTable2.maxCheckpoints
      if arg4 >= cmgCall3 then
        return
      end
    end
    arg4 = textValue9
    cmgCall3 = dataTable2.currentLocalCheckpoint
    cmgCall3 = cmgCall3 + 1
    playerPed = dataTable2.raceData
    flag11 = arg3
    arg4(cmgCall3, playerPed, flag11)
  else
    arg3 = CMG
    arg3 = arg3.announceMpSmallMsg
    arg4 = "Wrong checkpoint!"
    cmgCall3 = ""
    playerPed = 6
    flag11 = 2000
    arg3(arg4, cmgCall3, playerPed, flag11)
  end
end
function workValue6(arg1, arg2, arg3)
  local arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6, textValue7
  arg4 = arg2.customCheckpoints
  arg4 = arg4[arg1]
  cmgCall3 = dataTable2.checkpointData
  cmgCall3[arg1] = arg4
  cmgCall3 = nil
  playerPed = arg2.customCheckpoints
  flag11 = arg1 + 1
  playerPed = playerPed[flag11]
  if playerPed then
    playerPed = arg2.customCheckpoints
    flag11 = arg1 + 1
    cmgCall3 = playerPed[flag11]
  else
    cmgCall3 = arg4
  end
  playerPed = CMG
  playerPed = playerPed.createCheckpoint
  flag11 = "rockstar_races"
  tableHelper = arg3
  workValue8 = arg4.x
  cmgCall5 = arg4.y
  flag = arg4.z
  flag2 = cmgCall3.x
  flag3 = cmgCall3.y
  dataTable = cmgCall3.z
  textValue3 = 10.0
  textValue4 = 255
  textValue6 = 255
  flag4 = 0
  flag5 = 50
  flag6 = 0
  function textValue7(arg12, arg22)
    local flag8, textValue8, flag9
    flag8 = workValue5
    textValue8 = arg12
    flag9 = arg22
    flag8(textValue8, flag9)
  end
  playerPed, flag11 = playerPed(flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6, textValue7)
  tableHelper = table
  tableHelper = tableHelper.insert
  workValue8 = dataTable2.checkpoints
  cmgCall5 = playerPed
  tableHelper(workValue8, cmgCall5)
  tableHelper = table
  tableHelper = tableHelper.insert
  workValue8 = dataTable2.checkpointsUUIDs
  cmgCall5 = flag11
  tableHelper(workValue8, cmgCall5)
  tableHelper = SetCheckpointCylinderHeight
  workValue8 = playerPed
  cmgCall5 = 25.0
  flag = 25.0
  flag2 = 10.0
  tableHelper(workValue8, cmgCall5, flag, flag2)
end
function workValue7(arg1, arg2, arg3)
  local arg4, cmgCall3, playerPed, flag11
  arg4 = workValue6
  cmgCall3 = arg1
  playerPed = arg2
  flag11 = arg3
  arg4(cmgCall3, playerPed, flag11)
end
textValue9 = workValue7
function workValue7()
  local arg1, arg2
  arg1 = dataTable2.vehicleId
  if "" == arg1 then
    arg1 = drawNativeNotification
    arg2 = "Hold ~INPUT_ENTER~ to reset your player to the previous checkpoint."
    -- Beginner: Show a GTA-style notification/help prompt.
    arg1(arg2)
  else
    arg1 = drawNativeNotification
    arg2 = "Hold ~INPUT_ENTER~ to reset your vehicle to the previous checkpoint."
    arg1(arg2)
  end
end
eventRegistration3 = RegisterNetEvent
eventRegistration4 = "b36ed93333"
-- Beginner: this function handles network event "b36ed93333".
function textValue(arg1)
  local arg2, arg3, arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2
  dataTable2.raceData = arg1
  arg2 = CMG
  arg2 = arg2.setPlayerCanOpenLeaderboard
  arg3 = true
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.enableMinigamePlayerBlips
  arg3 = true
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.enableMinigamePlayerTags
  arg3 = true
  arg4 = false
  arg2(arg3, arg4)
  arg2 = CMG
  arg2 = arg2.endVehicleSelection
  arg2()
  arg2 = print
  arg3 = "[CMG] Waiting for eventMap to load."
  arg2(arg3)
  while true do
    arg2 = CMG
    arg2 = arg2.hasEventMapLoaded
    arg2 = arg2()
    if false ~= arg2 then
      break
    end
    arg2 = Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = print
  arg3 = "[CMG] eventMap loaded."
  arg2(arg3)
  arg2 = dataTable2.vehicleId
  if "" == arg2 then
    arg2 = CMG
    arg2 = arg2.stopEventSequence
    arg2()
    arg2 = currentEvent
    arg2.drawPlayersTimeBar = false
    arg2 = BusyspinnerOff
    arg2()
  end
  arg2 = workValue7
  arg2()
  arg2 = arg1.startPosition
  arg3 = arg1.collisionDisabled
  dataTable2.collisionDisabled = arg3
  arg3 = arg1.maxLaps
  dataTable2.maxLaps = arg3
  arg3 = arg1.maxCheckpoints
  arg3 = arg3 - 1
  dataTable2.numOfCheckpointsPerLap = arg3
  arg3 = dataTable2.numOfCheckpointsPerLap
  arg4 = dataTable2.maxLaps
  arg3 = arg3 * arg4
  arg3 = arg3 + 1
  dataTable2.maxCheckpoints = arg3
  arg3 = arg1.christmasWeather
  if arg3 then
    arg3 = CMG
    arg3 = arg3.setWeather
    arg4 = "XMAS"
    arg3(arg4)
  end
  arg3 = workValue6
  arg4 = 1
  cmgCall3 = arg1
  playerPed = 0
  arg3(arg4, cmgCall3, playerPed)
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = SetEntityCoords
  cmgCall3 = arg3
  playerPed = arg2.x
  flag11 = arg2.y
  tableHelper = arg2.z
  workValue8 = true
  cmgCall5 = false
  flag = false
  flag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg4(cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2)
  arg4 = dataTable2.checkpointData
  arg4[0] = arg2
  arg4 = dataTable2.vehicleId
  if "" ~= arg4 then
    dataTable2.startPosition = arg2
    arg4 = CMG
    arg4 = arg4.TriggerServerCallback
    cmgCall3 = "d6bf609f5c"
    playerPed = dataTable2.vehicleId
    flag11 = arg2
    arg4 = arg4(cmgCall3, playerPed, flag11)
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.getObjectId
    playerPed = arg4
    flag11 = "races first spawn"
    cmgCall3 = cmgCall3(playerPed, flag11)
    dataTable2.currentVehicleSpawned = cmgCall3
    playerPed = SetVehicleColours
    flag11 = dataTable2.currentVehicleSpawned
    tableHelper = dataTable2.vehicleColour
    workValue8 = dataTable2.vehicleColour
    playerPed(flag11, tableHelper, workValue8)
    playerPed = SetVehicleOnGroundProperly
    flag11 = dataTable2.currentVehicleSpawned
    playerPed(flag11)
    playerPed = SetEntityHeading
    flag11 = dataTable2.currentVehicleSpawned
    tableHelper = arg2.w
    -- Beginner: Change the direction an entity is facing.
    playerPed(flag11, tableHelper)
    playerPed = eventRegistration2
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    playerPed()
  else
    arg4 = SetEntityHeading
    cmgCall3 = arg3
    playerPed = arg2.w
    -- Beginner: Change the direction an entity is facing.
    arg4(cmgCall3, playerPed)
  end
  dataTable2.state = "racing"
  arg4 = PlaySoundFrontend
  cmgCall3 = -1
  playerPed = "5s"
  flag11 = "MP_MISSION_COUNTDOWN_SOUNDSET"
  tableHelper = false
  arg4(cmgCall3, playerPed, flag11, tableHelper)
  arg4 = TriggerEvent
  cmgCall3 = "b3cbc4aca5"
  playerPed = 5
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "b3cbc4aca5".
  arg4(cmgCall3, playerPed)
  arg4 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg4 = arg4()
  while true do
    cmgCall3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgCall3 = cmgCall3()
    cmgCall3 = cmgCall3 - arg4
    playerPed = 5000
    if not (cmgCall3 < playerPed) then
      break
    end
    cmgCall3 = FreezeEntityPosition
    playerPed = CMG
    playerPed = playerPed.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    playerPed = playerPed()
    flag11 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgCall3(playerPed, flag11)
    cmgCall3 = FreezeEntityPosition
    playerPed = CMG
    playerPed = playerPed.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    flag11 = true
    cmgCall3(playerPed, flag11)
    cmgCall3 = Wait
    playerPed = 0
    cmgCall3(playerPed)
  end
  cmgCall3 = dataTable2.vehicleId
  if "" ~= cmgCall3 then
    cmgCall3 = FreezeEntityPosition
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    flag11 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgCall3(playerPed, flag11)
    cmgCall3 = FreezeEntityPosition
    playerPed = dataTable2.currentVehicleSpawned
    flag11 = false
    cmgCall3(playerPed, flag11)
    cmgCall3 = SetVehicleIsRacing
    playerPed = dataTable2.currentVehicleSpawned
    flag11 = true
    cmgCall3(playerPed, flag11)
  else
    cmgCall3 = FreezeEntityPosition
    playerPed = arg3
    flag11 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgCall3(playerPed, flag11)
  end
  cmgCall3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  cmgCall3 = cmgCall3()
  dataTable2.startTime = cmgCall3
  cmgCall3 = 0
  while true do
    playerPed = dataTable2.state
    if "racing" ~= playerPed then
      break
    end
    cmgCall3 = cmgCall3 + 1
    playerPed = dataTable2.elapsedSeconds
    if 59 == playerPed then
      dataTable2.elapsedSeconds = 0
      playerPed = dataTable2.elapsedMinutes
      playerPed = playerPed + 1
      dataTable2.elapsedMinutes = playerPed
    else
      playerPed = dataTable2.elapsedSeconds
      playerPed = playerPed + 1
      dataTable2.elapsedSeconds = playerPed
    end
    playerPed = cmgCall3 % 5
    if 0 == playerPed then
      dataTable2.holdingF = 0
    end
    playerPed = Wait
    flag11 = 1000
    playerPed(flag11)
  end
  dataTable2.elapsedSeconds = 0
  dataTable2.elapsedMinutes = 0
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b36ed93333".
eventRegistration3(eventRegistration4, textValue)
function eventRegistration3(arg1, arg2, arg3, arg4)
  local cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6, textValue7, flag7
  cmgCall3 = ClearTimecycleModifier
  cmgCall3()
  cmgCall3 = {}
  playerPed = Scaleform
  flag11 = "MP_CELEBRATION"
  playerPed = playerPed(flag11)
  cmgCall3.handle = playerPed
  playerPed = Scaleform
  flag11 = "MP_CELEBRATION_BG"
  playerPed = playerPed(flag11)
  cmgCall3.handle2 = playerPed
  playerPed = Scaleform
  flag11 = "MP_CELEBRATION_FG"
  playerPed = playerPed(flag11)
  cmgCall3.handle3 = playerPed
  playerPed = pairs
  flag11 = cmgCall3
  playerPed, flag11, tableHelper, workValue8 = playerPed(flag11)
  for cmgCall5, flag in playerPed, flag11, tableHelper, workValue8 do
    flag2 = flag.RunFunction
    flag3 = "CLEANUP"
    dataTable = {}
    textValue3 = "WINNER"
    dataTable[1] = textValue3
    flag2(flag3, dataTable)
    flag2 = flag.RunFunction
    flag3 = "CREATE_STAT_WALL"
    dataTable = {}
    textValue3 = "WINNER"
    textValue4 = "HUD_COLOUR_BLACK"
    textValue6 = "70.0"
    dataTable[1] = textValue3
    dataTable[2] = textValue4
    dataTable[3] = textValue6
    flag2(flag3, dataTable)
    flag2 = flag.RunFunction
    flag3 = "SET_PAUSE_DURATION"
    dataTable = {}
    function textValue3()
      local arg12, arg22
      arg12 = ScaleformMovieMethodAddParamFloat
      arg22 = 2.5
      arg12(arg22)
    end
    dataTable[1] = textValue3
    flag2(flag3, dataTable)
    flag2 = flag.RunFunction
    flag3 = "ADD_TIME_TO_WALL"
    dataTable = {}
    textValue3 = "WINNER"
    textValue4 = arg3
    textValue6 = "CELEB_TIME"
    dataTable[1] = textValue3
    dataTable[2] = textValue4
    dataTable[3] = textValue6
    flag2(flag3, dataTable)
    flag2 = flag.RunFunction
    flag3 = "ADD_POSITION_TO_WALL"
    dataTable = {}
    textValue3 = "WINNER"
    textValue4 = arg2
    textValue6 = "1ST"
    flag4 = false
    flag5 = false
    dataTable[1] = textValue3
    dataTable[2] = textValue4
    dataTable[3] = textValue6
    dataTable[4] = flag4
    dataTable[5] = flag5
    flag2(flag3, dataTable)
    if 0 ~= arg4 then
      flag2 = flag.RunFunction
      flag3 = "ADD_CASH_TO_WALL"
      dataTable = {}
      textValue3 = "WINNER"
      textValue4 = arg4
      textValue6 = true
      dataTable[1] = textValue3
      dataTable[2] = textValue4
      dataTable[3] = textValue6
      flag2(flag3, dataTable)
    end
    flag2 = flag.RunFunction
    flag3 = "ADD_WINNER_TO_WALL"
    dataTable = {}
    textValue3 = "WINNER"
    textValue4 = "CELEB_WINNER"
    textValue6 = arg1
    flag4 = ""
    flag5 = 0
    flag6 = false
    textValue7 = ""
    flag7 = false
    dataTable[1] = textValue3
    dataTable[2] = textValue4
    dataTable[3] = textValue6
    dataTable[4] = flag4
    dataTable[5] = flag5
    dataTable[6] = flag6
    dataTable[7] = textValue7
    dataTable[8] = flag7
    flag2(flag3, dataTable)
    flag2 = flag.RunFunction
    flag3 = "ADD_BACKGROUND_TO_WALL"
    dataTable = {}
    textValue3 = "WINNER"
    textValue4 = 75
    textValue6 = 0
    dataTable[1] = textValue3
    dataTable[2] = textValue4
    dataTable[3] = textValue6
    flag2(flag3, dataTable)
    flag2 = flag.RunFunction
    flag3 = "SHOW_STAT_WALL"
    dataTable = {}
    textValue3 = "WINNER"
    dataTable[1] = textValue3
    flag2(flag3, dataTable)
  end
  playerPed = cmgCall3.handle
  flag11 = cmgCall3.handle2
  tableHelper = cmgCall3.handle3
  return playerPed, flag11, tableHelper
end
eventRegistration4 = RegisterNetEvent
textValue = "0820e8681f"
-- Beginner: this function handles network event "0820e8681f".
function workValue(arg1, arg2)
  local arg3, arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable
  dataTable2.state = "end"
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  dataTable2.endTime = arg3
  arg3 = dataTable2.endTime
  arg4 = dataTable2.startTime
  arg3 = arg3 - arg4
  arg4 = eventRegistration3
  cmgCall3 = arg1
  playerPed = dataTable2.currentPosition
  flag11 = arg3
  tableHelper = arg2
  arg4, cmgCall3, playerPed = arg4(cmgCall3, playerPed, flag11, tableHelper)
  flag11 = true
  tableHelper = SetTimeout
  workValue8 = 15000
  function cmgCall5()
    local arg12, arg22
    arg12 = false
    flag11 = arg12
  end
  tableHelper(workValue8, cmgCall5)
  while flag11 do
    tableHelper = Wait
    workValue8 = 0
    tableHelper(workValue8)
    tableHelper = HideHudAndRadarThisFrame
    tableHelper()
    tableHelper = DrawScaleformMovieFullscreenMasked
    workValue8 = cmgCall3.Handle
    cmgCall5 = playerPed.Handle
    flag = 255
    flag2 = 255
    flag3 = 255
    dataTable = 255
    tableHelper(workValue8, cmgCall5, flag, flag2, flag3, dataTable)
    tableHelper = arg4.Render2D
    tableHelper()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0820e8681f".
eventRegistration4(textValue, workValue)
function eventRegistration4(arg1, arg2)
  local arg3, arg4, cmgCall3, playerPed, flag11, tableHelper
  arg3 = ClearTimecycleModifier
  arg3()
  arg3 = dataTable2.racePositionScaleform
  if not arg3 then
    arg4 = Scaleform
    cmgCall3 = "RACE_POSITION"
    arg4 = arg4(cmgCall3)
    arg3 = arg4
    dataTable2.racePositionScaleform = arg3
  end
  arg4 = arg3.RunFunction
  cmgCall3 = "SET_GATES_POSITION"
  playerPed = {}
  flag11 = arg1
  tableHelper = arg2
  playerPed[1] = flag11
  playerPed[2] = tableHelper
  arg4(cmgCall3, playerPed)
  arg4 = arg3.RunFunction
  cmgCall3 = "SHOW_RACE_MODULE"
  playerPed = {}
  flag11 = 0
  tableHelper = false
  playerPed[1] = flag11
  playerPed[2] = tableHelper
  arg4(cmgCall3, playerPed)
  arg4 = arg3.RunFunction
  cmgCall3 = "SHOW_RACE_MODULE"
  playerPed = {}
  flag11 = 1
  tableHelper = false
  playerPed[1] = flag11
  playerPed[2] = tableHelper
  arg4(cmgCall3, playerPed)
  arg4 = arg3.RunFunction
  cmgCall3 = "SHOW_RACE_MODULE"
  playerPed = {}
  flag11 = 2
  tableHelper = false
  playerPed[1] = flag11
  playerPed[2] = tableHelper
  arg4(cmgCall3, playerPed)
  arg4 = arg3.Render2D
  arg4()
end
function textValue(arg1)
  local arg2, arg3, arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag
  arg2 = arg1 / 1000
  arg2 = arg2 % 60
  arg3 = arg1 / 60000
  arg3 = arg3 % 60
  arg4 = arg1 / 3600000
  arg4 = arg4 % 24
  cmgCall3 = string
  cmgCall3 = cmgCall3.sub
  playerPed = tostring
  flag11 = math
  flag11 = flag11.floor
  tableHelper = arg2
  flag11 = flag11(tableHelper)
  flag11 = arg2 - flag11
  playerPed = playerPed(flag11)
  flag11 = 3
  tableHelper = 5
  cmgCall3 = cmgCall3(playerPed, flag11, tableHelper)
  playerPed = cmgCall3
  cmgCall3 = cmgCall3.gsub
  flag11 = "%."
  tableHelper = ""
  cmgCall3 = cmgCall3(playerPed, flag11, tableHelper)
  playerPed = string
  playerPed = playerPed.gsub
  flag11 = cmgCall3
  tableHelper = "%."
  workValue8 = ""
  playerPed = playerPed(flag11, tableHelper, workValue8)
  cmgCall3 = playerPed
  playerPed = string
  playerPed = playerPed.len
  flag11 = cmgCall3
  playerPed = playerPed(flag11)
  if 1 == playerPed then
    playerPed = cmgCall3
    flag11 = "00"
    playerPed = playerPed .. flag11
    cmgCall3 = playerPed
  else
    playerPed = string
    playerPed = playerPed.len
    flag11 = cmgCall3
    playerPed = playerPed(flag11)
    if 2 == playerPed then
      playerPed = cmgCall3
      flag11 = "0"
      playerPed = playerPed .. flag11
      cmgCall3 = playerPed
    end
  end
  playerPed = string
  playerPed = playerPed.format
  flag11 = "%02d:%02d:%02d.%s"
  tableHelper = math
  tableHelper = tableHelper.floor
  workValue8 = arg4
  tableHelper = tableHelper(workValue8)
  workValue8 = math
  workValue8 = workValue8.floor
  cmgCall5 = arg3
  workValue8 = workValue8(cmgCall5)
  cmgCall5 = math
  cmgCall5 = cmgCall5.floor
  flag = arg2
  cmgCall5 = cmgCall5(flag)
  flag = cmgCall3
  return playerPed(flag11, tableHelper, workValue8, cmgCall5, flag)
end
function workValue(arg1)
  local arg2, arg3, arg4
  arg2 = dataTable2.startTime
  if arg2 then
    if not arg1 then
      arg2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg2 = arg2()
      arg1 = arg2
    end
    arg2 = dataTable2.startTime
    arg2 = arg1 - arg2
    arg3 = textValue
    arg4 = arg2
    return arg3(arg4)
  else
    arg2 = "00:00:00"
    return arg2
  end
end
threadCall = CreateThread
-- Beginner: this function is the body of a background FiveM thread.
function cmgCall2()
  local arg1, arg2, arg3, arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6
  arg1 = TriggerMusicEvent
  arg2 = "BST_STOP"
  arg1(arg2)
  while true do
    arg1 = dataTable2.state
    if "waiting" == arg1 then
      arg1 = FreezeEntityPosition
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      arg1(arg2, arg3)
    else
      arg1 = dataTable2.state
      if "racing" == arg1 then
        arg1 = CMG
        arg1 = arg1.createTimerBars
        -- Beginner: result below is timerBars.
        arg1 = arg1()
        arg2 = arg1.push
        arg3 = "~y~DISTANCE:~w~"
        arg4 = string
        arg4 = arg4.format
        cmgCall3 = "%dm"
        playerPed = math
        playerPed = playerPed.floor
        flag11 = dataTable2.distanceToNextCheckpoint
        playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6 = playerPed(flag11)
        arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6 = arg4(cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6)
        arg2(arg3, arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6)
        arg2 = arg1.push
        arg3 = "~y~LAP:~w~"
        arg4 = string
        arg4 = arg4.format
        cmgCall3 = "%d/%d"
        playerPed = dataTable2.currentLap
        flag11 = dataTable2.maxLaps
        arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6 = arg4(cmgCall3, playerPed, flag11)
        arg2(arg3, arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6)
        arg2 = arg1.push
        arg3 = "~y~CHECKPOINT:~w~"
        arg4 = string
        arg4 = arg4.format
        cmgCall3 = "%d/%d"
        playerPed = dataTable2.currentCheckpoint
        flag11 = dataTable2.maxCheckpoints
        arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6 = arg4(cmgCall3, playerPed, flag11)
        arg2(arg3, arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6)
        arg2 = arg1.push
        arg3 = "~y~TIME:~w~"
        arg4 = string
        arg4 = arg4.format
        cmgCall3 = "~y~%02d:%02d"
        playerPed = dataTable2.elapsedMinutes
        flag11 = dataTable2.elapsedSeconds
        arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6 = arg4(cmgCall3, playerPed, flag11)
        arg2(arg3, arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6)
        arg2 = dataTable2.dnfTimer
        if arg2 then
          arg2 = arg1.push
          arg3 = "~r~DNF:~w~"
          arg4 = string
          arg4 = arg4.format
          cmgCall3 = "~r~%d"
          playerPed = dataTable2.dnfTimer
          arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6 = arg4(cmgCall3, playerPed)
          arg2(arg3, arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6)
        end
        arg2 = arg1.draw
        arg2()
        arg2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg2 = arg2()
        arg3 = GetEntityCoords
        arg4 = arg2
        -- Beginner: result below is entityCoords.
        arg3 = arg3(arg4)
        arg4 = GetVehiclePedIsIn
        cmgCall3 = arg2
        playerPed = false
        -- Beginner: result below is currentVehicle.
        arg4 = arg4(cmgCall3, playerPed)
        cmgCall3 = 0
        if 0 ~= arg4 then
          playerPed = GetEntityRoll
          flag11 = arg4
          playerPed = playerPed(flag11)
          cmgCall3 = playerPed
          playerPed = SetPedRagdollOnCollision
          flag11 = arg2
          tableHelper = false
          playerPed(flag11, tableHelper)
          playerPed = SetPedCanRagdollFromPlayerImpact
          flag11 = arg2
          tableHelper = false
          playerPed(flag11, tableHelper)
          playerPed = SetPedCanRagdoll
          flag11 = arg2
          tableHelper = false
          playerPed(flag11, tableHelper)
          playerPed = SetPedCanBeKnockedOffVehicle
          flag11 = arg2
          tableHelper = 1
          playerPed(flag11, tableHelper)
          playerPed = SetVehicleColours
          flag11 = dataTable2.currentVehicleSpawned
          tableHelper = dataTable2.vehicleColour
          workValue8 = dataTable2.vehicleColour
          playerPed(flag11, tableHelper, workValue8)
          playerPed = SetVehicleEngineOn
          flag11 = dataTable2.currentVehicleSpawned
          tableHelper = true
          workValue8 = true
          cmgCall5 = false
          playerPed(flag11, tableHelper, workValue8, cmgCall5)
        else
          playerPed = SetCurrentPedWeapon
          flag11 = arg2
          tableHelper = -1569615261
          workValue8 = true
          playerPed(flag11, tableHelper, workValue8)
          playerPed = SetPlayerFallDistance
          flag11 = PlayerId
          -- Beginner: result below is localPlayerIndex.
          flag11 = flag11()
          tableHelper = 50.0
          playerPed(flag11, tableHelper)
        end
        playerPed = dataTable2.currentCheckpoint
        flag11 = dataTable2.currentLap
        flag11 = flag11 - 1
        tableHelper = dataTable2.numOfCheckpointsPerLap
        flag11 = flag11 * tableHelper
        playerPed = playerPed - flag11
        dataTable2.currentLocalCheckpoint = playerPed
        flag11 = dataTable2.checkpointData
        tableHelper = playerPed + 1
        flag11 = flag11[tableHelper]
        tableHelper = dataTable2.checkpointData
        tableHelper = tableHelper[playerPed]
        workValue8 = CMG
        workValue8 = workValue8.setEventRespawnPosition
        cmgCall5 = tableHelper
        workValue8(cmgCall5)
        if flag11 then
          workValue8 = vector3
          cmgCall5 = flag11.x
          flag = flag11.y
          flag2 = flag11.z
          workValue8 = workValue8(cmgCall5, flag, flag2)
          cmgCall5 = vector3
          flag = tableHelper.x
          flag2 = tableHelper.y
          flag3 = tableHelper.z
          cmgCall5 = cmgCall5(flag, flag2, flag3)
          workValue8 = workValue8 - cmgCall5
          workValue8 = #workValue8
          cmgCall5 = vector3
          flag = flag11.x
          flag2 = flag11.y
          flag3 = flag11.z
          cmgCall5 = cmgCall5(flag, flag2, flag3)
          cmgCall5 = arg3 - cmgCall5
          cmgCall5 = #cmgCall5
          dataTable2.distanceToNextCheckpoint = cmgCall5
          if cmgCall5 > 25 then
            flag = workValue8 * 2.0
            if cmgCall5 > flag and 0 ~= playerPed then
              flag = DoScreenFadeOut
              flag2 = 1500
              flag(flag2)
              flag = NetworkFadeOutEntity
              flag2 = arg2
              flag3 = true
              dataTable = false
              flag(flag2, flag3, dataTable)
              flag = Wait
              flag2 = 1500
              flag(flag2)
              if 0 == arg4 then
                flag = SetEntityCoords
                flag2 = arg2
                flag3 = tableHelper.x
                dataTable = tableHelper.y
                textValue3 = tableHelper.z
                textValue4 = false
                textValue6 = false
                flag4 = false
                flag5 = false
                -- Beginner: Move/teleport an entity to new coordinates.
                flag(flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5)
                flag = SetEntityHeading
                flag2 = dataTable2.currentVehicleSpawned
                flag3 = tableHelper.w
                -- Beginner: Change the direction an entity is facing.
                flag(flag2, flag3)
              else
                flag = SetEntityCoords
                flag2 = arg4
                flag3 = tableHelper.x
                dataTable = tableHelper.y
                textValue3 = tableHelper.z
                textValue4 = false
                textValue6 = false
                flag4 = false
                flag5 = false
                -- Beginner: Move/teleport an entity to new coordinates.
                flag(flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5)
                flag = SetEntityHeading
                flag2 = dataTable2.currentVehicleSpawned
                flag3 = tableHelper.w
                -- Beginner: Change the direction an entity is facing.
                flag(flag2, flag3)
                flag = SetVehicleEngineHealth
                flag2 = arg4
                flag3 = 1000.0
                flag(flag2, flag3)
              end
              flag = NetworkFadeInEntity
              flag2 = arg2
              flag3 = false
              flag(flag2, flag3)
              flag = eventRegistration2
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              flag()
              flag = DoScreenFadeIn
              flag2 = 1500
              flag(flag2)
              flag = Wait
              flag2 = 1500
              flag(flag2)
              flag = workValue7
              flag()
          end
          else
            flag = GetEntityHealth
            flag2 = arg2
            -- Beginner: result below is health.
            flag = flag(flag2)
            if flag <= 100 then
              flag = DoScreenFadeOut
              flag2 = 1500
              flag(flag2)
              flag = NetworkFadeOutEntity
              flag2 = arg2
              flag3 = true
              dataTable = false
              flag(flag2, flag3, dataTable)
              flag = Wait
              flag2 = 1500
              flag(flag2)
              flag = TriggerEvent
              flag2 = "193ee4e15e"
              -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "193ee4e15e".
              flag(flag2)
              flag = Wait
              flag2 = 1500
              flag(flag2)
              flag = dataTable2.vehicleId
              if "" ~= flag then
                flag = DeleteVehicle
                flag2 = dataTable2.currentVehicleSpawned
                flag(flag2)
                flag = CMG
                flag = flag.TriggerServerCallback
                flag2 = "d6bf609f5c"
                flag3 = dataTable2.vehicleId
                dataTable = tableHelper
                flag = flag(flag2, flag3, dataTable)
                flag2 = CMG
                flag2 = flag2.getObjectId
                flag3 = flag
                dataTable = "races re-spawn #1"
                flag2 = flag2(flag3, dataTable)
                dataTable2.currentVehicleSpawned = flag2
                flag3 = SetVehicleColours
                dataTable = dataTable2.currentVehicleSpawned
                textValue3 = dataTable2.vehicleColour
                textValue4 = dataTable2.vehicleColour
                flag3(dataTable, textValue3, textValue4)
                flag3 = SetEntityHeading
                dataTable = dataTable2.currentVehicleSpawned
                textValue3 = tableHelper.w
                -- Beginner: Change the direction an entity is facing.
                flag3(dataTable, textValue3)
                flag3 = eventRegistration2
                -- Beginner: Register a network event handler that the server/other clients can trigger.
                flag3()
              else
                flag = SetEntityCoords
                flag2 = arg2
                flag3 = tableHelper.x
                dataTable = tableHelper.y
                textValue3 = tableHelper.z
                textValue4 = false
                textValue6 = false
                flag4 = false
                flag5 = false
                -- Beginner: Move/teleport an entity to new coordinates.
                flag(flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5)
                flag = SetEntityHeading
                flag2 = arg2
                flag3 = tableHelper.w
                -- Beginner: Change the direction an entity is facing.
                flag(flag2, flag3)
              end
              flag = NetworkFadeInEntity
              flag2 = arg2
              flag3 = false
              flag(flag2, flag3)
              flag = DoScreenFadeIn
              flag2 = 1500
              flag(flag2)
              flag = Wait
              flag2 = 1500
              flag(flag2)
              flag = workValue7
              flag()
            else
              if 0 == arg4 then
                flag = dataTable2.vehicleId
                if "" ~= flag then
                  flag = DoScreenFadeOut
                  flag2 = 1500
                  flag(flag2)
                  flag = NetworkFadeOutEntity
                  flag2 = arg2
                  flag3 = true
                  dataTable = false
                  flag(flag2, flag3, dataTable)
                  flag = Wait
                  flag2 = 1500
                  flag(flag2)
                  flag = TriggerEvent
                  flag2 = "193ee4e15e"
                  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "193ee4e15e".
                  flag(flag2)
                  flag = Wait
                  flag2 = 1500
                  flag(flag2)
                  flag = DeleteVehicle
                  flag2 = dataTable2.currentVehicleSpawned
                  flag(flag2)
                  flag = CMG
                  flag = flag.TriggerServerCallback
                  flag2 = "d6bf609f5c"
                  flag3 = dataTable2.vehicleId
                  dataTable = tableHelper
                  flag = flag(flag2, flag3, dataTable)
                  flag2 = CMG
                  flag2 = flag2.getObjectId
                  flag3 = flag
                  dataTable = "races re-spawn #2"
                  flag2 = flag2(flag3, dataTable)
                  dataTable2.currentVehicleSpawned = flag2
                  flag3 = SetVehicleColours
                  dataTable = dataTable2.currentVehicleSpawned
                  textValue3 = dataTable2.vehicleColour
                  textValue4 = dataTable2.vehicleColour
                  flag3(dataTable, textValue3, textValue4)
                  flag3 = SetEntityHeading
                  dataTable = dataTable2.currentVehicleSpawned
                  textValue3 = tableHelper.w
                  -- Beginner: Change the direction an entity is facing.
                  flag3(dataTable, textValue3)
                  flag3 = eventRegistration2
                  -- Beginner: Register a network event handler that the server/other clients can trigger.
                  flag3()
                  flag3 = NetworkFadeInEntity
                  dataTable = arg2
                  textValue3 = false
                  flag3(dataTable, textValue3)
                  flag3 = DoScreenFadeIn
                  dataTable = 1500
                  flag3(dataTable)
                  flag3 = Wait
                  dataTable = 1500
                  flag3(dataTable)
                  flag3 = workValue7
                  flag3()
              end
              else
                flag = 178
                if cmgCall3 > flag then
                  flag = 182
                  if cmgCall3 < flag then
                    goto flow_label_389
                  end
                end
                flag = -178
                if cmgCall3 < flag then
                  flag = -182
                  ::flow_label_389::
                  if cmgCall3 > flag then
                    flag = GetEntitySpeed
                    flag2 = dataTable2.currentVehicleSpawned
                    -- Beginner: result below is speed.
                    flag = flag(flag2)
                    if flag < 5 then
                      flag = DoScreenFadeOut
                      flag2 = 1500
                      flag(flag2)
                      flag = NetworkFadeOutEntity
                      flag2 = arg2
                      flag3 = true
                      dataTable = false
                      flag(flag2, flag3, dataTable)
                      flag = Wait
                      flag2 = 1500
                      flag(flag2)
                      flag = eventRegistration2
                      -- Beginner: Register a network event handler that the server/other clients can trigger.
                      flag()
                      flag = SetEntityCoords
                      flag2 = dataTable2.currentVehicleSpawned
                      flag3 = tableHelper.x
                      dataTable = tableHelper.y
                      textValue3 = tableHelper.z
                      textValue4 = false
                      textValue6 = false
                      flag4 = false
                      flag5 = false
                      -- Beginner: Move/teleport an entity to new coordinates.
                      flag(flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5)
                      flag = SetEntityHeading
                      flag2 = dataTable2.currentVehicleSpawned
                      flag3 = tableHelper.w
                      -- Beginner: Change the direction an entity is facing.
                      flag(flag2, flag3)
                      flag = SetVehicleEngineHealth
                      flag2 = dataTable2.currentVehicleSpawned
                      flag3 = 1000.0
                      flag(flag2, flag3)
                      flag = SetVehicleBodyHealth
                      flag2 = dataTable2.currentVehicleSpawned
                      flag3 = 1000.0
                      flag(flag2, flag3)
                      flag = SetVehicleDeformationFixed
                      flag2 = dataTable2.currentVehicleSpawned
                      flag(flag2)
                      flag = NetworkFadeInEntity
                      flag2 = arg2
                      flag3 = false
                      flag(flag2, flag3)
                      flag = DoScreenFadeIn
                      flag2 = 1500
                      flag(flag2)
                      flag = Wait
                      flag2 = 1500
                      flag(flag2)
                      flag = workValue7
                      flag()
                    end
                  end
                end
              end
            end
          end
        end
        workValue8 = SetPlayerControl
        cmgCall5 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        cmgCall5 = cmgCall5()
        flag = true
        flag2 = 0
        workValue8(cmgCall5, flag, flag2)
        if 0 == arg4 then
          workValue8 = DisableFirstPersonCamThisFrame
          workValue8()
        end
        workValue8 = eventRegistration4
        cmgCall5 = dataTable2.currentPosition
        flag = currentEvent
        flag = flag.players
        flag = #flag
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        workValue8(cmgCall5, flag)
        workValue8 = dataTable2.collisionDisabled
        if workValue8 then
          workValue8 = Citizen
          workValue8 = workValue8.InvokeNative
          cmgCall5 = 6917136782320038191
          flag = true
          workValue8(cmgCall5, flag)
          workValue8 = dataTable2.currentVehicleSpawned
          if 0 ~= workValue8 then
            workValue8 = DoesEntityExist
            cmgCall5 = dataTable2.currentVehicleSpawned
            workValue8 = workValue8(cmgCall5)
            if workValue8 then
              workValue8 = SetNetworkVehicleAsGhost
              cmgCall5 = dataTable2.currentVehicleSpawned
              flag = true
              workValue8(cmgCall5, flag)
              workValue8 = SetEntityAlpha
              cmgCall5 = dataTable2.currentVehicleSpawned
              flag = 255
              flag2 = false
              workValue8(cmgCall5, flag, flag2)
            end
          end
          workValue8 = SetEntityAlpha
          cmgCall5 = arg2
          flag = 255
          flag2 = false
          workValue8(cmgCall5, flag, flag2)
          workValue8 = pairs
          cmgCall5 = CMG
          cmgCall5 = cmgCall5.getAllVehicles
          cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6 = cmgCall5()
          workValue8, cmgCall5, flag, flag2 = workValue8(cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6, flag4, flag5, flag6)
          for flag3, dataTable in workValue8, cmgCall5, flag, flag2 do
            textValue3 = SetEntityAlpha
            textValue4 = dataTable
            textValue6 = 255
            flag4 = false
            textValue3(textValue4, textValue6, flag4)
          end
          workValue8 = GetActivePlayers
          workValue8 = workValue8()
          cmgCall5 = pairs
          flag = workValue8
          cmgCall5, flag, flag2, flag3 = cmgCall5(flag)
          for dataTable, textValue3 in cmgCall5, flag, flag2, flag3 do
            textValue4 = GetPlayerPed
            textValue6 = textValue3
            -- Beginner: result below is playerPed.
            textValue4 = textValue4(textValue6)
            textValue6 = SetEntityAlpha
            flag4 = textValue4
            flag5 = 255
            flag6 = false
            textValue6(flag4, flag5, flag6)
          end
        end
        workValue8 = SetCheckpointRgba
        cmgCall5 = dataTable2.checkpoints
        cmgCall5 = cmgCall5[1]
        flag = 144
        flag2 = 238
        flag3 = 144
        dataTable = 150
        workValue8(cmgCall5, flag, flag2, flag3, dataTable)
        workValue8 = IsDisabledControlPressed
        cmgCall5 = 0
        flag = 23
        workValue8 = workValue8(cmgCall5, flag)
        if workValue8 then
          workValue8 = dataTable2.holdingF
          workValue8 = workValue8 + 1
          dataTable2.holdingF = workValue8
          workValue8 = dataTable2.holdingF
          if workValue8 >= 60 then
            dataTable2.holdingF = 0
            workValue8 = DoScreenFadeOut
            cmgCall5 = 1500
            workValue8(cmgCall5)
            workValue8 = NetworkFadeOutEntity
            cmgCall5 = arg2
            flag = true
            flag2 = false
            workValue8(cmgCall5, flag, flag2)
            workValue8 = Wait
            cmgCall5 = 1500
            workValue8(cmgCall5)
            workValue8 = TriggerEvent
            cmgCall5 = "193ee4e15e"
            -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "193ee4e15e".
            workValue8(cmgCall5)
            workValue8 = Wait
            cmgCall5 = 1500
            workValue8(cmgCall5)
            workValue8 = dataTable2.vehicleId
            if "" ~= workValue8 then
              workValue8 = DeleteVehicle
              cmgCall5 = dataTable2.currentVehicleSpawned
              workValue8(cmgCall5)
              workValue8 = CMG
              workValue8 = workValue8.TriggerServerCallback
              cmgCall5 = "d6bf609f5c"
              flag = dataTable2.vehicleId
              flag2 = tableHelper
              workValue8 = workValue8(cmgCall5, flag, flag2)
              cmgCall5 = CMG
              cmgCall5 = cmgCall5.getObjectId
              flag = workValue8
              flag2 = "races re-spawn #3"
              cmgCall5 = cmgCall5(flag, flag2)
              dataTable2.currentVehicleSpawned = cmgCall5
              flag = SetVehicleColours
              flag2 = dataTable2.currentVehicleSpawned
              flag3 = dataTable2.vehicleColour
              dataTable = dataTable2.vehicleColour
              flag(flag2, flag3, dataTable)
              flag = SetEntityHeading
              flag2 = dataTable2.currentVehicleSpawned
              flag3 = tableHelper.w
              -- Beginner: Change the direction an entity is facing.
              flag(flag2, flag3)
              flag = eventRegistration2
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              flag()
            else
              workValue8 = SetEntityCoords
              cmgCall5 = arg2
              flag = tableHelper.x
              flag2 = tableHelper.y
              flag3 = tableHelper.z
              dataTable = false
              textValue3 = false
              textValue4 = false
              textValue6 = false
              -- Beginner: Move/teleport an entity to new coordinates.
              workValue8(cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6)
              workValue8 = SetEntityHeading
              cmgCall5 = arg2
              flag = tableHelper.w
              -- Beginner: Change the direction an entity is facing.
              workValue8(cmgCall5, flag)
            end
            workValue8 = NetworkFadeInEntity
            cmgCall5 = arg2
            flag = false
            workValue8(cmgCall5, flag)
            workValue8 = DoScreenFadeIn
            cmgCall5 = 1500
            workValue8(cmgCall5)
            workValue8 = Wait
            cmgCall5 = 1500
            workValue8(cmgCall5)
            workValue8 = workValue7
            workValue8()
          end
        end
        workValue8 = pairs
        cmgCall5 = currentEvent
        cmgCall5 = cmgCall5.players
        workValue8, cmgCall5, flag, flag2 = workValue8(cmgCall5)
        for flag3, dataTable in workValue8, cmgCall5, flag, flag2 do
          textValue3 = CMG
          textValue3 = textValue3.updateScoreboard
          textValue4 = dataTable.source
          textValue6 = 6
          flag4 = workValue
          flag5 = dataTable.finishTime
          flag4, flag5, flag6 = flag4(flag5)
          textValue3(textValue4, textValue6, flag4, flag5, flag6)
        end
      end
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(cmgCall2)
function threadCall()
  local arg1, arg2, arg3, arg4
  arg1 = dataTable2.state
  if "waiting" ~= arg1 then
    arg1 = dataTable2.state
    if "racing" ~= arg1 then
      goto flow_label_75
    end
  end
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 75
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 49
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 263
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 264
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 257
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 140
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 141
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 142
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 143
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 24
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 25
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = dataTable2.disableVehicleWeapons
  if arg1 then
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 68
    arg4 = true
    arg1(arg2, arg3, arg4)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 70
    arg4 = true
    arg1(arg2, arg3, arg4)
  end
  ::flow_label_75::
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
textValue2 = threadCall
eventRegistration = "Race Controls"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(textValue2, eventRegistration)
cmgCall2 = RegisterNetEvent
textValue2 = "5339e115ec"
-- Beginner: this function handles network event "5339e115ec".
function eventRegistration(arg1)
  local arg2
  arg2 = dataTable2.finished
  if not arg2 then
    dataTable2.currentPosition = arg1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5339e115ec".
cmgCall2(textValue2, eventRegistration)
-- Beginner: this function handles network event "5339e115ec".
function cmgCall2(arg1)
  local arg2, arg3, arg4, cmgCall3, playerPed, flag11, tableHelper
  arg2 = pairs
  arg3 = currentEvent
  arg3 = arg3.players
  arg2, arg3, arg4, cmgCall3 = arg2(arg3)
  for playerPed, flag11 in arg2, arg3, arg4, cmgCall3 do
    tableHelper = flag11.source
    if arg1 == tableHelper then
      return flag11
    end
  end
  arg2 = {}
  arg2.name = "N/A"
  return arg2
end
function textValue2(arg1)
  local arg2, arg3, arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6
  arg2 = {}
  arg3 = {}
  arg4 = "Position"
  cmgCall3 = "Name"
  playerPed = "Time"
  arg3[1] = arg4
  arg3[2] = cmgCall3
  arg3[3] = playerPed
  arg2.columns = arg3
  arg3 = {}
  arg2.rows = arg3
  arg2.sortColumn = 1
  arg2.sortAscending = true
  arg2.formatPlace = true
  arg3 = ipairs
  arg4 = arg1
  arg3, arg4, cmgCall3, playerPed = arg3(arg4)
  for flag11, tableHelper in arg3, arg4, cmgCall3, playerPed do
    workValue8 = table
    workValue8 = workValue8.insert
    cmgCall5 = arg2.rows
    flag = {}
    flag2 = flag11
    flag3 = ""
    dataTable = ""
    textValue3 = false
    textValue4 = cmgCall2
    textValue6 = tableHelper
    textValue4 = textValue4(textValue6)
    textValue4 = textValue4.name
    textValue6 = workValue
    textValue6 = textValue6()
    flag.playerSrc = tableHelper
    flag[1] = flag2
    flag[2] = flag3
    flag[3] = dataTable
    flag[4] = textValue3
    flag[5] = textValue4
    flag[6] = textValue6
    workValue8(cmgCall5, flag)
  end
  return arg2
end
eventRegistration = RegisterNetEvent
textValue5 = "da8b82fb88"
-- Beginner: this function handles network event "da8b82fb88".
function workValue2(arg1)
  local arg2, arg3, arg4, cmgCall3, playerPed, flag11, tableHelper, workValue8, cmgCall5, flag, flag2, flag3, dataTable, textValue3, textValue4, textValue6
  arg2 = CMG
  arg2 = arg2.isLeaderboardSetup
  arg2 = arg2()
  if not arg2 then
    arg2 = textValue2
    arg3 = arg1
    arg2 = arg2(arg3)
    arg3 = TriggerEvent
    arg4 = "a8ac0d4162"
    cmgCall3 = arg2
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "a8ac0d4162".
    arg3(arg4, cmgCall3)
  else
    arg2 = pairs
    arg3 = arg1
    arg2, arg3, arg4, cmgCall3 = arg2(arg3)
    for playerPed, flag11 in arg2, arg3, arg4, cmgCall3 do
      tableHelper = pairs
      workValue8 = currentEvent
      workValue8 = workValue8.players
      tableHelper, workValue8, cmgCall5, flag = tableHelper(workValue8)
      for flag2, flag3 in tableHelper, workValue8, cmgCall5, flag do
        dataTable = flag3.source
        if dataTable == flag11 then
          dataTable = CMG
          dataTable = dataTable.updateScoreboard
          textValue3 = flag11
          textValue4 = 1
          textValue6 = playerPed
          dataTable(textValue3, textValue4, textValue6)
          break
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "da8b82fb88".
eventRegistration(textValue5, workValue2)
eventRegistration = RegisterNetEvent
textValue5 = "40d3587c5a"
-- Beginner: this function handles network event "40d3587c5a".
function workValue2(arg1)
  local arg2, arg3, arg4, cmgCall3, playerPed, flag11, tableHelper
  dataTable2.finished = true
  arg2 = PlaySound
  arg3 = -1
  arg4 = "CHECKPOINT_PERFECT"
  cmgCall3 = "HUD_MINI_GAME_SOUNDSET"
  playerPed = false
  flag11 = 0
  tableHelper = true
  arg2(arg3, arg4, cmgCall3, playerPed, flag11, tableHelper)
  if arg1 then
    arg2 = CMG
    arg2 = arg2.announceMpBigMsg
    arg3 = "~g~You have won the race!"
    arg4 = "Race will end in 30 seconds, or if all competitors finish."
    cmgCall3 = 5000
    playerPed = false
    flag11 = true
    arg2(arg3, arg4, cmgCall3, playerPed, flag11)
  else
    arg2 = CMG
    arg2 = arg2.announceMpBigMsg
    arg3 = "~g~You have finished the race!"
    arg4 = "Race will end in 30 seconds, or if all competitors finish."
    cmgCall3 = 5000
    playerPed = false
    flag11 = true
    arg2(arg3, arg4, cmgCall3, playerPed, flag11)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "40d3587c5a".
eventRegistration(textValue5, workValue2)
eventRegistration = RegisterNetEvent
textValue5 = "f5bcb71e25"
-- Beginner: this function handles network event "f5bcb71e25".
function workValue2(arg1)
  local arg2, arg3, arg4, cmgCall3, playerPed, flag11, tableHelper
  arg2 = pairs
  arg3 = currentEvent
  arg3 = arg3.players
  arg2, arg3, arg4, cmgCall3 = arg2(arg3)
  for playerPed, flag11 in arg2, arg3, arg4, cmgCall3 do
    tableHelper = flag11.source
    if tableHelper == arg1 then
      tableHelper = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      tableHelper = tableHelper()
      flag11.finishTime = tableHelper
      break
    end
  end
end
eventRegistration(textValue5, workValue2)
eventRegistration = RegisterNetEvent
textValue5 = "b64c417a11"
-- Beginner: this function handles network event "b64c417a11".
function workValue2()
  local arg1, arg2, arg3, arg4, cmgCall3
  dataTable2.dnfTimer = 30
  while true do
    arg1 = dataTable2.state
    if "racing" ~= arg1 then
      break
    end
    arg1 = dataTable2.dnfTimer
    if arg1 >= 1 then
      arg1 = dataTable2.dnfTimer
      arg1 = arg1 - 1
      dataTable2.dnfTimer = arg1
      arg1 = dataTable2.dnfTimer
      if arg1 <= 5 then
        arg1 = PlaySoundFrontend
        arg2 = -1
        arg3 = "Checkpoint_Buzz"
        arg4 = "DLC_AW_Frontend_Sounds"
        cmgCall3 = false
        arg1(arg2, arg3, arg4, cmgCall3)
      end
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b64c417a11".
eventRegistration(textValue5, workValue2)
eventRegistration = AddEventHandler
textValue5 = "b3cbc4aca5"
-- Beginner: this function runs when client event "b3cbc4aca5" fires.
function workValue2(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.showCountdownTimer
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Register a client-side event handler. Event/command: "b3cbc4aca5".
eventRegistration(textValue5, workValue2)