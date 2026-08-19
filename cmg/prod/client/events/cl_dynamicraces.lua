--[[
    LEVEL 1 BEGINNER GUIDE — Dynamicraces
    ==========================================

    File: cmg/prod/client/events/cl_dynamicraces.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Dynamicraces feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 33
      * Background threads: 0
      * Always-running loops: 5
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
local cmgOperation, dataCollection2, workingValue4, eventHandler2, text9, workingValue5, workingValue6, workingValue7, eventHandler3, eventHandler4, text, workingValue, backgroundThread, cmgOperation2, text2, eventHandler, text5, workingValue2
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection2 = "cfg/events/cfg_dynamicraces"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection2)
dataCollection2 = {}

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2
  localValue1 = {}
  localValue1.state = "none"
  localValue1.elapsedSeconds = 0
  localValue1.elapsedMinutes = 0
  localValue1.currentPosition = 1
  localValue1.currentCheckpoint = 0
  localValue2 = {}
  localValue1.checkpoints = localValue2
  localValue2 = {}
  localValue1.checkpointsUUIDs = localValue2
  localValue1.maxCheckpoints = 0
  localValue1.distanceToNextCheckpoint = 10
  localValue1.vehicle = ""
  localValue1.collisionDisabled = false
  localValue1.vehicleId = ""
  localValue1.vehicleColour = 1
  localValue1.startPosition = -1
  localValue1.disableVehicleWeapons = true
  localValue1.currentVehicleSpawned = 0
  localValue1.holdingF = 0
  localValue1.currentLap = 1
  localValue1.maxLaps = 1
  localValue1.finished = false
  localValue1.racePositionScaleform = nil
  dataCollection2 = localValue1
end
eventHandler2 = workingValue4
eventHandler2()
eventHandler2 = Citizen
eventHandler2 = eventHandler2.CreateThread

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = "Races"
  localValue2 = CMG
  localValue2 = localValue2.registerMinigameCleanupHandler
  localValue3 = localValue1

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local localValue12, localValue22, stateFlag8, text8, stateFlag9, stateFlag10, cmgOperation4, text10, workingValue9
    localValue12 = Citizen
    localValue12 = localValue12.InvokeNative
    localValue22 = 6917136782320038191
    stateFlag8 = false
    localValue12(localValue22, stateFlag8)
    localValue12 = SetNetworkVehicleAsGhost
    localValue22 = dataCollection2.currentVehicleSpawned
    stateFlag8 = false
    localValue12(localValue22, stateFlag8)
    localValue12 = DeleteVehicle
    localValue22 = dataCollection2.currentVehicleSpawned
    localValue12(localValue22)
    localValue12 = pairs
    localValue22 = dataCollection2.checkpointsUUIDs
    localValue12, localValue22, stateFlag8, text8 = localValue12(localValue22)
    for stateFlag9, stateFlag10 in localValue12, localValue22, stateFlag8, text8 do
      cmgOperation4 = CMG
      cmgOperation4 = cmgOperation4.deleteCheckpoint
      text10 = "rockstar_races"
      workingValue9 = stateFlag10
      cmgOperation4(text10, workingValue9)
    end
    localValue12 = SetPlayerFallDistance
    localValue22 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue22 = localValue22()
    stateFlag8 = 5.0
    localValue12(localValue22, stateFlag8)
    localValue12 = CMG
    localValue12 = localValue12.cleanupRockstarMaps
    localValue12()
    localValue12 = TriggerMusicEvent
    localValue22 = "BST_STOP"
    localValue12(localValue22)
    localValue12 = workingValue4
    localValue12()
  end
  localValue2(localValue3, localValue4)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler2(text9)
eventHandler2 = RegisterNetEvent
text9 = "a662d70c86"
-- Beginner: this function handles network event "a662d70c86".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2, localValue3) ===
function workingValue5(localValue1, localValue2, localValue3)
  local localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6, text7, stateFlag7, number, number2, workingValue3
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  cmgOperation3 = SetEntityCoords
  playerPed = localValue4
  stateFlag11 = localValue3.x
  tableHelper = localValue3.y
  workingValue8 = localValue3.z
  cmgOperation5 = true
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  cmgOperation3(playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3)
  cmgOperation3 = FreezeEntityPosition
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  stateFlag11 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  cmgOperation3(playerPed, stateFlag11)
  dataCollection2.state = "waiting"
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.setEventMusic
  playerPed = "FAM2_CHASE_RT"
  cmgOperation3(playerPed)
  cmgOperation3 = {}
  dataCollection2.checkpointData = cmgOperation3
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.loadClientRockstarMap
  playerPed = localValue2
  stateFlag11 = true
  cmgOperation3(playerPed, stateFlag11)
  cmgOperation3 = localValue2.repairCheckpoints
  if cmgOperation3 then
    cmgOperation3 = 1
    playerPed = localValue2.repairCheckpoints
    playerPed = #playerPed
    stateFlag11 = 1
    for tableHelper = cmgOperation3, playerPed, stateFlag11 do
      workingValue8 = localValue2.repairCheckpoints
      workingValue8 = workingValue8[tableHelper]
      cmgOperation5 = CMG
      cmgOperation5 = cmgOperation5.createCheckpoint
      stateFlag = "rockstar_races"
      stateFlag2 = 5
      stateFlag3 = workingValue8.x
      dataCollection = workingValue8.y
      text3 = workingValue8.z
      text4 = 0.0
      text6 = 0.0
      stateFlag4 = 0.0
      stateFlag5 = 10.0
      stateFlag6 = 255
      text7 = 255
      stateFlag7 = 0
      number = 127
      number2 = 0

      -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue12) ===
      function workingValue3(localValue12)
        local localValue22, stateFlag8, text8, stateFlag9, stateFlag10
        localValue22 = PlaySoundFrontend
        stateFlag8 = -1
        text8 = "RACE_PLACED"
        stateFlag9 = "HUD_AWARDS"
        stateFlag10 = false
        localValue22(stateFlag8, text8, stateFlag9, stateFlag10)
        localValue22 = AnimpostfxPlay
        stateFlag8 = "SuccessNeutral"
        text8 = 0
        stateFlag9 = false
        localValue22(stateFlag8, text8, stateFlag9)
        localValue22 = CMG
        localValue22 = localValue22.deleteCheckpoint
        stateFlag8 = "rockstar_races"
        text8 = localValue12
        localValue22(stateFlag8, text8)
        localValue22 = SetVehicleEngineHealth
        stateFlag8 = dataCollection2.currentVehicleSpawned
        text8 = 1000.0
        localValue22(stateFlag8, text8)
        localValue22 = SetVehicleBodyHealth
        stateFlag8 = dataCollection2.currentVehicleSpawned
        text8 = 1000.0
        localValue22(stateFlag8, text8)
        localValue22 = SetVehicleDeformationFixed
        stateFlag8 = dataCollection2.currentVehicleSpawned
        localValue22(stateFlag8)
        localValue22 = SetVehicleFixed
        stateFlag8 = dataCollection2.currentVehicleSpawned
        localValue22(stateFlag8)
      end
      cmgOperation5(stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6, text7, stateFlag7, number, number2, workingValue3)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a662d70c86".
eventHandler2(text9, workingValue5)
eventHandler2 = RegisterNetEvent
text9 = "ca51537e29"
-- Beginner: this function handles network event "ca51537e29".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5
  localValue3 = currentEvent
  localValue3.drawPlayersTimeBar = false
  localValue3 = CMG
  localValue3 = localValue3.stopEventSequence
  localValue3()
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = cmgOperation.dynamicRaces
  localValue3 = localValue3[localValue1]
  localValue4 = BusyspinnerOff
  localValue4()
  localValue4 = CMG
  localValue4 = localValue4.startVehicleSelection
  cmgOperation3 = localValue2.xyz
  playerPed = localValue2.w
  stateFlag11 = localValue3.vehicleOptions
  tableHelper = 20

  -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue12) ===
  function workingValue8(localValue12)
    local localValue22
    localValue22 = currentEvent
    localValue22 = localValue22.data
    localValue22 = localValue22.customSpawncode
    if localValue22 then
      localValue22 = currentEvent
      localValue22 = localValue22.data
      localValue22 = localValue22.customSpawncode
      dataCollection2.vehicleId = localValue22
    else
      localValue22 = localValue3.vehicleOptions
      localValue22 = localValue22[localValue12]
      if localValue22 then
        localValue22 = localValue3.vehicleOptions
        localValue22 = localValue22[localValue12]
        localValue22 = localValue22.model
        dataCollection2.vehicleId = localValue22
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue12) ===
  function cmgOperation5(localValue12)
    local localValue22
    dataCollection2.vehicleColour = localValue12
  end
  localValue4(cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ca51537e29".
eventHandler2(text9, workingValue5)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, localValue3, localValue4
  dataCollection2.spawnProtection = true
  localValue1 = Citizen
  localValue1 = localValue1.InvokeNative
  localValue2 = 6917136782320038191
  localValue3 = true
  localValue1(localValue2, localValue3)
  localValue1 = SetNetworkVehicleAsGhost
  localValue2 = dataCollection2.currentVehicleSpawned
  localValue3 = true
  localValue1(localValue2, localValue3)
  localValue1 = SetEntityAlpha
  localValue2 = dataCollection2.currentVehicleSpawned
  localValue3 = 155
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = SetTimeout
  localValue2 = 3000

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, stateFlag8, text8
    localValue12 = Citizen
    localValue12 = localValue12.InvokeNative
    localValue22 = 6917136782320038191
    stateFlag8 = false
    localValue12(localValue22, stateFlag8)
    localValue12 = SetNetworkVehicleAsGhost
    localValue22 = dataCollection2.currentVehicleSpawned
    stateFlag8 = false
    localValue12(localValue22, stateFlag8)
    localValue12 = SetEntityAlpha
    localValue22 = dataCollection2.currentVehicleSpawned
    stateFlag8 = 255
    text8 = false
    localValue12(localValue22, stateFlag8, text8)
    dataCollection2.spawnProtection = false
  end
  localValue1(localValue2, localValue3)
end
text9 = nil

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local localValue3, localValue4, cmgOperation3, playerPed, stateFlag11
  localValue3 = dataCollection2.checkpoints
  localValue3 = localValue3[1]
  if localValue2 == localValue3 then
    localValue3 = PlaySoundFrontend
    localValue4 = -1
    cmgOperation3 = "RACE_PLACED"
    playerPed = "HUD_AWARDS"
    stateFlag11 = false
    localValue3(localValue4, cmgOperation3, playerPed, stateFlag11)
    localValue3 = CMG
    localValue3 = localValue3.deleteCheckpoint
    localValue4 = "rockstar_races"
    cmgOperation3 = localValue1
    localValue3(localValue4, cmgOperation3)
    localValue3 = dataCollection2.currentCheckpoint
    localValue3 = localValue3 + 1
    dataCollection2.currentCheckpoint = localValue3
    localValue3 = dataCollection2.currentLocalCheckpoint
    localValue3 = localValue3 + 1
    dataCollection2.currentLocalCheckpoint = localValue3
    localValue3 = table
    localValue3 = localValue3.remove
    localValue4 = dataCollection2.checkpoints
    cmgOperation3 = 1
    localValue3(localValue4, cmgOperation3)
    localValue3 = TriggerServerEvent
    localValue4 = "6ca31d93b3"
    cmgOperation3 = currentEvent
    cmgOperation3 = cmgOperation3.minigameId
    playerPed = dataCollection2.currentLap
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6ca31d93b3".
    localValue3(localValue4, cmgOperation3, playerPed)
    dataCollection2.disableVehicleWeapons = false
    localValue3 = dataCollection2.currentCheckpoint
    localValue4 = dataCollection2.numOfCheckpointsPerLap
    cmgOperation3 = dataCollection2.currentLap
    localValue4 = localValue4 * cmgOperation3
    if localValue3 == localValue4 then
      localValue3 = dataCollection2.currentLap
      localValue4 = dataCollection2.maxLaps
      if localValue3 < localValue4 then
        localValue3 = dataCollection2.currentLap
        localValue3 = localValue3 + 1
        dataCollection2.currentLap = localValue3
        dataCollection2.currentLocalCheckpoint = 0
      end
    end
    localValue3 = 0
    localValue4 = dataCollection2.currentCheckpoint
    localValue4 = localValue4 + 1
    cmgOperation3 = dataCollection2.maxCheckpoints
    if localValue4 == cmgOperation3 then
      localValue3 = 4
    else
      localValue4 = dataCollection2.currentCheckpoint
      localValue4 = localValue4 + 1
      cmgOperation3 = dataCollection2.maxCheckpoints
      if localValue4 >= cmgOperation3 then
        return
      end
    end
    localValue4 = text9
    cmgOperation3 = dataCollection2.currentLocalCheckpoint
    cmgOperation3 = cmgOperation3 + 1
    playerPed = dataCollection2.raceData
    stateFlag11 = localValue3
    localValue4(cmgOperation3, playerPed, stateFlag11)
  else
    localValue3 = CMG
    localValue3 = localValue3.announceMpSmallMsg
    localValue4 = "Wrong checkpoint!"
    cmgOperation3 = ""
    playerPed = 6
    stateFlag11 = 2000
    localValue3(localValue4, cmgOperation3, playerPed, stateFlag11)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2, localValue3) ===
function workingValue6(localValue1, localValue2, localValue3)
  local localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6, text7
  localValue4 = localValue2.customCheckpoints
  localValue4 = localValue4[localValue1]
  cmgOperation3 = dataCollection2.checkpointData
  cmgOperation3[localValue1] = localValue4
  cmgOperation3 = nil
  playerPed = localValue2.customCheckpoints
  stateFlag11 = localValue1 + 1
  playerPed = playerPed[stateFlag11]
  if playerPed then
    playerPed = localValue2.customCheckpoints
    stateFlag11 = localValue1 + 1
    cmgOperation3 = playerPed[stateFlag11]
  else
    cmgOperation3 = localValue4
  end
  playerPed = CMG
  playerPed = playerPed.createCheckpoint
  stateFlag11 = "rockstar_races"
  tableHelper = localValue3
  workingValue8 = localValue4.x
  cmgOperation5 = localValue4.y
  stateFlag = localValue4.z
  stateFlag2 = cmgOperation3.x
  stateFlag3 = cmgOperation3.y
  dataCollection = cmgOperation3.z
  text3 = 10.0
  text4 = 255
  text6 = 255
  stateFlag4 = 0
  stateFlag5 = 50
  stateFlag6 = 0

  -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue12, localValue22) ===
  function text7(localValue12, localValue22)
    local stateFlag8, text8, stateFlag9
    stateFlag8 = workingValue5
    text8 = localValue12
    stateFlag9 = localValue22
    stateFlag8(text8, stateFlag9)
  end
  playerPed, stateFlag11 = playerPed(stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6, text7)
  tableHelper = table
  tableHelper = tableHelper.insert
  workingValue8 = dataCollection2.checkpoints
  cmgOperation5 = playerPed
  tableHelper(workingValue8, cmgOperation5)
  tableHelper = table
  tableHelper = tableHelper.insert
  workingValue8 = dataCollection2.checkpointsUUIDs
  cmgOperation5 = stateFlag11
  tableHelper(workingValue8, cmgOperation5)
  tableHelper = SetCheckpointCylinderHeight
  workingValue8 = playerPed
  cmgOperation5 = 25.0
  stateFlag = 25.0
  stateFlag2 = 10.0
  tableHelper(workingValue8, cmgOperation5, stateFlag, stateFlag2)
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2, localValue3) ===
function workingValue7(localValue1, localValue2, localValue3)
  local localValue4, cmgOperation3, playerPed, stateFlag11
  localValue4 = workingValue6
  cmgOperation3 = localValue1
  playerPed = localValue2
  stateFlag11 = localValue3
  localValue4(cmgOperation3, playerPed, stateFlag11)
end
text9 = workingValue7

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2
  localValue1 = dataCollection2.vehicleId
  if "" == localValue1 then
    localValue1 = drawNativeNotification
    localValue2 = "Hold ~INPUT_ENTER~ to reset your player to the previous checkpoint."
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue1(localValue2)
  else
    localValue1 = drawNativeNotification
    localValue2 = "Hold ~INPUT_ENTER~ to reset your vehicle to the previous checkpoint."
    localValue1(localValue2)
  end
end
eventHandler3 = RegisterNetEvent
eventHandler4 = "b36ed93333"
-- Beginner: this function handles network event "b36ed93333".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2
  dataCollection2.raceData = localValue1
  localValue2 = CMG
  localValue2 = localValue2.setPlayerCanOpenLeaderboard
  localValue3 = true
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.enableMinigamePlayerBlips
  localValue3 = true
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.enableMinigamePlayerTags
  localValue3 = true
  localValue4 = false
  localValue2(localValue3, localValue4)
  localValue2 = CMG
  localValue2 = localValue2.endVehicleSelection
  localValue2()
  localValue2 = print
  localValue3 = "[CMG] Waiting for eventMap to load."
  localValue2(localValue3)
  while true do
    localValue2 = CMG
    localValue2 = localValue2.hasEventMapLoaded
    localValue2 = localValue2()
    if false ~= localValue2 then
      break
    end
    localValue2 = Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = print
  localValue3 = "[CMG] eventMap loaded."
  localValue2(localValue3)
  localValue2 = dataCollection2.vehicleId
  if "" == localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.stopEventSequence
    localValue2()
    localValue2 = currentEvent
    localValue2.drawPlayersTimeBar = false
    localValue2 = BusyspinnerOff
    localValue2()
  end
  localValue2 = workingValue7
  localValue2()
  localValue2 = localValue1.startPosition
  localValue3 = localValue1.collisionDisabled
  dataCollection2.collisionDisabled = localValue3
  localValue3 = localValue1.maxLaps
  dataCollection2.maxLaps = localValue3
  localValue3 = localValue1.maxCheckpoints
  localValue3 = localValue3 - 1
  dataCollection2.numOfCheckpointsPerLap = localValue3
  localValue3 = dataCollection2.numOfCheckpointsPerLap
  localValue4 = dataCollection2.maxLaps
  localValue3 = localValue3 * localValue4
  localValue3 = localValue3 + 1
  dataCollection2.maxCheckpoints = localValue3
  localValue3 = localValue1.christmasWeather
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.setWeather
    localValue4 = "XMAS"
    localValue3(localValue4)
  end
  localValue3 = workingValue6
  localValue4 = 1
  cmgOperation3 = localValue1
  playerPed = 0
  localValue3(localValue4, cmgOperation3, playerPed)
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = SetEntityCoords
  cmgOperation3 = localValue3
  playerPed = localValue2.x
  stateFlag11 = localValue2.y
  tableHelper = localValue2.z
  workingValue8 = true
  cmgOperation5 = false
  stateFlag = false
  stateFlag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue4(cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2)
  localValue4 = dataCollection2.checkpointData
  localValue4[0] = localValue2
  localValue4 = dataCollection2.vehicleId
  if "" ~= localValue4 then
    dataCollection2.startPosition = localValue2
    localValue4 = CMG
    localValue4 = localValue4.TriggerServerCallback
    cmgOperation3 = "d6bf609f5c"
    playerPed = dataCollection2.vehicleId
    stateFlag11 = localValue2
    localValue4 = localValue4(cmgOperation3, playerPed, stateFlag11)
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.getObjectId
    playerPed = localValue4
    stateFlag11 = "races first spawn"
    cmgOperation3 = cmgOperation3(playerPed, stateFlag11)
    dataCollection2.currentVehicleSpawned = cmgOperation3
    playerPed = SetVehicleColours
    stateFlag11 = dataCollection2.currentVehicleSpawned
    tableHelper = dataCollection2.vehicleColour
    workingValue8 = dataCollection2.vehicleColour
    playerPed(stateFlag11, tableHelper, workingValue8)
    playerPed = SetVehicleOnGroundProperly
    stateFlag11 = dataCollection2.currentVehicleSpawned
    playerPed(stateFlag11)
    playerPed = SetEntityHeading
    stateFlag11 = dataCollection2.currentVehicleSpawned
    tableHelper = localValue2.w
    -- Beginner: Change the direction an entity is facing.
    playerPed(stateFlag11, tableHelper)
    playerPed = eventHandler2
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    playerPed()
  else
    localValue4 = SetEntityHeading
    cmgOperation3 = localValue3
    playerPed = localValue2.w
    -- Beginner: Change the direction an entity is facing.
    localValue4(cmgOperation3, playerPed)
  end
  dataCollection2.state = "racing"
  localValue4 = PlaySoundFrontend
  cmgOperation3 = -1
  playerPed = "5s"
  stateFlag11 = "MP_MISSION_COUNTDOWN_SOUNDSET"
  tableHelper = false
  localValue4(cmgOperation3, playerPed, stateFlag11, tableHelper)
  localValue4 = TriggerEvent
  cmgOperation3 = "b3cbc4aca5"
  playerPed = 5
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "b3cbc4aca5".
  localValue4(cmgOperation3, playerPed)
  localValue4 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue4 = localValue4()
  while true do
    cmgOperation3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgOperation3 = cmgOperation3()
    cmgOperation3 = cmgOperation3 - localValue4
    playerPed = 5000
    if not (cmgOperation3 < playerPed) then
      break
    end
    cmgOperation3 = FreezeEntityPosition
    playerPed = CMG
    playerPed = playerPed.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    playerPed = playerPed()
    stateFlag11 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgOperation3(playerPed, stateFlag11)
    cmgOperation3 = FreezeEntityPosition
    playerPed = CMG
    playerPed = playerPed.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    stateFlag11 = true
    cmgOperation3(playerPed, stateFlag11)
    cmgOperation3 = Wait
    playerPed = 0
    cmgOperation3(playerPed)
  end
  cmgOperation3 = dataCollection2.vehicleId
  if "" ~= cmgOperation3 then
    cmgOperation3 = FreezeEntityPosition
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    stateFlag11 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgOperation3(playerPed, stateFlag11)
    cmgOperation3 = FreezeEntityPosition
    playerPed = dataCollection2.currentVehicleSpawned
    stateFlag11 = false
    cmgOperation3(playerPed, stateFlag11)
    cmgOperation3 = SetVehicleIsRacing
    playerPed = dataCollection2.currentVehicleSpawned
    stateFlag11 = true
    cmgOperation3(playerPed, stateFlag11)
  else
    cmgOperation3 = FreezeEntityPosition
    playerPed = localValue3
    stateFlag11 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgOperation3(playerPed, stateFlag11)
  end
  cmgOperation3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  cmgOperation3 = cmgOperation3()
  dataCollection2.startTime = cmgOperation3
  cmgOperation3 = 0
  while true do
    playerPed = dataCollection2.state
    if "racing" ~= playerPed then
      break
    end
    cmgOperation3 = cmgOperation3 + 1
    playerPed = dataCollection2.elapsedSeconds
    if 59 == playerPed then
      dataCollection2.elapsedSeconds = 0
      playerPed = dataCollection2.elapsedMinutes
      playerPed = playerPed + 1
      dataCollection2.elapsedMinutes = playerPed
    else
      playerPed = dataCollection2.elapsedSeconds
      playerPed = playerPed + 1
      dataCollection2.elapsedSeconds = playerPed
    end
    playerPed = cmgOperation3 % 5
    if 0 == playerPed then
      dataCollection2.holdingF = 0
    end
    playerPed = Wait
    stateFlag11 = 1000
    playerPed(stateFlag11)
  end
  dataCollection2.elapsedSeconds = 0
  dataCollection2.elapsedMinutes = 0
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b36ed93333".
eventHandler3(eventHandler4, text)

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1, localValue2, localValue3, localValue4) ===
function eventHandler3(localValue1, localValue2, localValue3, localValue4)
  local cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6, text7, stateFlag7
  cmgOperation3 = ClearTimecycleModifier
  cmgOperation3()
  cmgOperation3 = {}
  playerPed = Scaleform
  stateFlag11 = "MP_CELEBRATION"
  playerPed = playerPed(stateFlag11)
  cmgOperation3.handle = playerPed
  playerPed = Scaleform
  stateFlag11 = "MP_CELEBRATION_BG"
  playerPed = playerPed(stateFlag11)
  cmgOperation3.handle2 = playerPed
  playerPed = Scaleform
  stateFlag11 = "MP_CELEBRATION_FG"
  playerPed = playerPed(stateFlag11)
  cmgOperation3.handle3 = playerPed
  playerPed = pairs
  stateFlag11 = cmgOperation3
  playerPed, stateFlag11, tableHelper, workingValue8 = playerPed(stateFlag11)
  for cmgOperation5, stateFlag in playerPed, stateFlag11, tableHelper, workingValue8 do
    stateFlag2 = stateFlag.RunFunction
    stateFlag3 = "CLEANUP"
    dataCollection = {}
    text3 = "WINNER"
    dataCollection[1] = text3
    stateFlag2(stateFlag3, dataCollection)
    stateFlag2 = stateFlag.RunFunction
    stateFlag3 = "CREATE_STAT_WALL"
    dataCollection = {}
    text3 = "WINNER"
    text4 = "HUD_COLOUR_BLACK"
    text6 = "70.0"
    dataCollection[1] = text3
    dataCollection[2] = text4
    dataCollection[3] = text6
    stateFlag2(stateFlag3, dataCollection)
    stateFlag2 = stateFlag.RunFunction
    stateFlag3 = "SET_PAUSE_DURATION"
    dataCollection = {}

    -- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
    function text3()
      local localValue12, localValue22
      localValue12 = ScaleformMovieMethodAddParamFloat
      localValue22 = 2.5
      localValue12(localValue22)
    end
    dataCollection[1] = text3
    stateFlag2(stateFlag3, dataCollection)
    stateFlag2 = stateFlag.RunFunction
    stateFlag3 = "ADD_TIME_TO_WALL"
    dataCollection = {}
    text3 = "WINNER"
    text4 = localValue3
    text6 = "CELEB_TIME"
    dataCollection[1] = text3
    dataCollection[2] = text4
    dataCollection[3] = text6
    stateFlag2(stateFlag3, dataCollection)
    stateFlag2 = stateFlag.RunFunction
    stateFlag3 = "ADD_POSITION_TO_WALL"
    dataCollection = {}
    text3 = "WINNER"
    text4 = localValue2
    text6 = "1ST"
    stateFlag4 = false
    stateFlag5 = false
    dataCollection[1] = text3
    dataCollection[2] = text4
    dataCollection[3] = text6
    dataCollection[4] = stateFlag4
    dataCollection[5] = stateFlag5
    stateFlag2(stateFlag3, dataCollection)
    if 0 ~= localValue4 then
      stateFlag2 = stateFlag.RunFunction
      stateFlag3 = "ADD_CASH_TO_WALL"
      dataCollection = {}
      text3 = "WINNER"
      text4 = localValue4
      text6 = true
      dataCollection[1] = text3
      dataCollection[2] = text4
      dataCollection[3] = text6
      stateFlag2(stateFlag3, dataCollection)
    end
    stateFlag2 = stateFlag.RunFunction
    stateFlag3 = "ADD_WINNER_TO_WALL"
    dataCollection = {}
    text3 = "WINNER"
    text4 = "CELEB_WINNER"
    text6 = localValue1
    stateFlag4 = ""
    stateFlag5 = 0
    stateFlag6 = false
    text7 = ""
    stateFlag7 = false
    dataCollection[1] = text3
    dataCollection[2] = text4
    dataCollection[3] = text6
    dataCollection[4] = stateFlag4
    dataCollection[5] = stateFlag5
    dataCollection[6] = stateFlag6
    dataCollection[7] = text7
    dataCollection[8] = stateFlag7
    stateFlag2(stateFlag3, dataCollection)
    stateFlag2 = stateFlag.RunFunction
    stateFlag3 = "ADD_BACKGROUND_TO_WALL"
    dataCollection = {}
    text3 = "WINNER"
    text4 = 75
    text6 = 0
    dataCollection[1] = text3
    dataCollection[2] = text4
    dataCollection[3] = text6
    stateFlag2(stateFlag3, dataCollection)
    stateFlag2 = stateFlag.RunFunction
    stateFlag3 = "SHOW_STAT_WALL"
    dataCollection = {}
    text3 = "WINNER"
    dataCollection[1] = text3
    stateFlag2(stateFlag3, dataCollection)
  end
  playerPed = cmgOperation3.handle
  stateFlag11 = cmgOperation3.handle2
  tableHelper = cmgOperation3.handle3
  return playerPed, stateFlag11, tableHelper
end
eventHandler4 = RegisterNetEvent
text = "0820e8681f"
-- Beginner: this function handles network event "0820e8681f".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2) ===
function workingValue(localValue1, localValue2)
  local localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection
  dataCollection2.state = "end"
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  dataCollection2.endTime = localValue3
  localValue3 = dataCollection2.endTime
  localValue4 = dataCollection2.startTime
  localValue3 = localValue3 - localValue4
  localValue4 = eventHandler3
  cmgOperation3 = localValue1
  playerPed = dataCollection2.currentPosition
  stateFlag11 = localValue3
  tableHelper = localValue2
  localValue4, cmgOperation3, playerPed = localValue4(cmgOperation3, playerPed, stateFlag11, tableHelper)
  stateFlag11 = true
  tableHelper = SetTimeout
  workingValue8 = 15000

  -- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
  function cmgOperation5()
    local localValue12, localValue22
    localValue12 = false
    stateFlag11 = localValue12
  end
  tableHelper(workingValue8, cmgOperation5)
  while stateFlag11 do
    tableHelper = Wait
    workingValue8 = 0
    tableHelper(workingValue8)
    tableHelper = HideHudAndRadarThisFrame
    tableHelper()
    tableHelper = DrawScaleformMovieFullscreenMasked
    workingValue8 = cmgOperation3.Handle
    cmgOperation5 = playerPed.Handle
    stateFlag = 255
    stateFlag2 = 255
    stateFlag3 = 255
    dataCollection = 255
    tableHelper(workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection)
    tableHelper = localValue4.Render2D
    tableHelper()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0820e8681f".
eventHandler4(text, workingValue)

-- === HELPER FUNCTION (decompiler name: eventHandler4; parameters: localValue1, localValue2) ===
function eventHandler4(localValue1, localValue2)
  local localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper
  localValue3 = ClearTimecycleModifier
  localValue3()
  localValue3 = dataCollection2.racePositionScaleform
  if not localValue3 then
    localValue4 = Scaleform
    cmgOperation3 = "RACE_POSITION"
    localValue4 = localValue4(cmgOperation3)
    localValue3 = localValue4
    dataCollection2.racePositionScaleform = localValue3
  end
  localValue4 = localValue3.RunFunction
  cmgOperation3 = "SET_GATES_POSITION"
  playerPed = {}
  stateFlag11 = localValue1
  tableHelper = localValue2
  playerPed[1] = stateFlag11
  playerPed[2] = tableHelper
  localValue4(cmgOperation3, playerPed)
  localValue4 = localValue3.RunFunction
  cmgOperation3 = "SHOW_RACE_MODULE"
  playerPed = {}
  stateFlag11 = 0
  tableHelper = false
  playerPed[1] = stateFlag11
  playerPed[2] = tableHelper
  localValue4(cmgOperation3, playerPed)
  localValue4 = localValue3.RunFunction
  cmgOperation3 = "SHOW_RACE_MODULE"
  playerPed = {}
  stateFlag11 = 1
  tableHelper = false
  playerPed[1] = stateFlag11
  playerPed[2] = tableHelper
  localValue4(cmgOperation3, playerPed)
  localValue4 = localValue3.RunFunction
  cmgOperation3 = "SHOW_RACE_MODULE"
  playerPed = {}
  stateFlag11 = 2
  tableHelper = false
  playerPed[1] = stateFlag11
  playerPed[2] = tableHelper
  localValue4(cmgOperation3, playerPed)
  localValue4 = localValue3.Render2D
  localValue4()
end

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag
  localValue2 = localValue1 / 1000
  localValue2 = localValue2 % 60
  localValue3 = localValue1 / 60000
  localValue3 = localValue3 % 60
  localValue4 = localValue1 / 3600000
  localValue4 = localValue4 % 24
  cmgOperation3 = string
  cmgOperation3 = cmgOperation3.sub
  playerPed = tostring
  stateFlag11 = math
  stateFlag11 = stateFlag11.floor
  tableHelper = localValue2
  stateFlag11 = stateFlag11(tableHelper)
  stateFlag11 = localValue2 - stateFlag11
  playerPed = playerPed(stateFlag11)
  stateFlag11 = 3
  tableHelper = 5
  cmgOperation3 = cmgOperation3(playerPed, stateFlag11, tableHelper)
  playerPed = cmgOperation3
  cmgOperation3 = cmgOperation3.gsub
  stateFlag11 = "%."
  tableHelper = ""
  cmgOperation3 = cmgOperation3(playerPed, stateFlag11, tableHelper)
  playerPed = string
  playerPed = playerPed.gsub
  stateFlag11 = cmgOperation3
  tableHelper = "%."
  workingValue8 = ""
  playerPed = playerPed(stateFlag11, tableHelper, workingValue8)
  cmgOperation3 = playerPed
  playerPed = string
  playerPed = playerPed.len
  stateFlag11 = cmgOperation3
  playerPed = playerPed(stateFlag11)
  if 1 == playerPed then
    playerPed = cmgOperation3
    stateFlag11 = "00"
    playerPed = playerPed .. stateFlag11
    cmgOperation3 = playerPed
  else
    playerPed = string
    playerPed = playerPed.len
    stateFlag11 = cmgOperation3
    playerPed = playerPed(stateFlag11)
    if 2 == playerPed then
      playerPed = cmgOperation3
      stateFlag11 = "0"
      playerPed = playerPed .. stateFlag11
      cmgOperation3 = playerPed
    end
  end
  playerPed = string
  playerPed = playerPed.format
  stateFlag11 = "%02d:%02d:%02d.%s"
  tableHelper = math
  tableHelper = tableHelper.floor
  workingValue8 = localValue4
  tableHelper = tableHelper(workingValue8)
  workingValue8 = math
  workingValue8 = workingValue8.floor
  cmgOperation5 = localValue3
  workingValue8 = workingValue8(cmgOperation5)
  cmgOperation5 = math
  cmgOperation5 = cmgOperation5.floor
  stateFlag = localValue2
  cmgOperation5 = cmgOperation5(stateFlag)
  stateFlag = cmgOperation3
  return playerPed(stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = dataCollection2.startTime
  if localValue2 then
    if not localValue1 then
      localValue2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue2 = localValue2()
      localValue1 = localValue2
    end
    localValue2 = dataCollection2.startTime
    localValue2 = localValue1 - localValue2
    localValue3 = text
    localValue4 = localValue2
    return localValue3(localValue4)
  else
    localValue2 = "00:00:00"
    return localValue2
  end
end
backgroundThread = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6
  localValue1 = TriggerMusicEvent
  localValue2 = "BST_STOP"
  localValue1(localValue2)
  while true do
    localValue1 = dataCollection2.state
    if "waiting" == localValue1 then
      localValue1 = FreezeEntityPosition
      localValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      localValue1(localValue2, localValue3)
    else
      localValue1 = dataCollection2.state
      if "racing" == localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.createTimerBars
        -- Beginner: result below is timerBars.
        localValue1 = localValue1()
        localValue2 = localValue1.push
        localValue3 = "~y~DISTANCE:~w~"
        localValue4 = string
        localValue4 = localValue4.format
        cmgOperation3 = "%dm"
        playerPed = math
        playerPed = playerPed.floor
        stateFlag11 = dataCollection2.distanceToNextCheckpoint
        playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6 = playerPed(stateFlag11)
        localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6 = localValue4(cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6)
        localValue2(localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6)
        localValue2 = localValue1.push
        localValue3 = "~y~LAP:~w~"
        localValue4 = string
        localValue4 = localValue4.format
        cmgOperation3 = "%d/%d"
        playerPed = dataCollection2.currentLap
        stateFlag11 = dataCollection2.maxLaps
        localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6 = localValue4(cmgOperation3, playerPed, stateFlag11)
        localValue2(localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6)
        localValue2 = localValue1.push
        localValue3 = "~y~CHECKPOINT:~w~"
        localValue4 = string
        localValue4 = localValue4.format
        cmgOperation3 = "%d/%d"
        playerPed = dataCollection2.currentCheckpoint
        stateFlag11 = dataCollection2.maxCheckpoints
        localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6 = localValue4(cmgOperation3, playerPed, stateFlag11)
        localValue2(localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6)
        localValue2 = localValue1.push
        localValue3 = "~y~TIME:~w~"
        localValue4 = string
        localValue4 = localValue4.format
        cmgOperation3 = "~y~%02d:%02d"
        playerPed = dataCollection2.elapsedMinutes
        stateFlag11 = dataCollection2.elapsedSeconds
        localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6 = localValue4(cmgOperation3, playerPed, stateFlag11)
        localValue2(localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6)
        localValue2 = dataCollection2.dnfTimer
        if localValue2 then
          localValue2 = localValue1.push
          localValue3 = "~r~DNF:~w~"
          localValue4 = string
          localValue4 = localValue4.format
          cmgOperation3 = "~r~%d"
          playerPed = dataCollection2.dnfTimer
          localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6 = localValue4(cmgOperation3, playerPed)
          localValue2(localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6)
        end
        localValue2 = localValue1.draw
        localValue2()
        localValue2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue2 = localValue2()
        localValue3 = GetEntityCoords
        localValue4 = localValue2
        -- Beginner: result below is entityCoords.
        localValue3 = localValue3(localValue4)
        localValue4 = GetVehiclePedIsIn
        cmgOperation3 = localValue2
        playerPed = false
        -- Beginner: result below is currentVehicle.
        localValue4 = localValue4(cmgOperation3, playerPed)
        cmgOperation3 = 0
        if 0 ~= localValue4 then
          playerPed = GetEntityRoll
          stateFlag11 = localValue4
          playerPed = playerPed(stateFlag11)
          cmgOperation3 = playerPed
          playerPed = SetPedRagdollOnCollision
          stateFlag11 = localValue2
          tableHelper = false
          playerPed(stateFlag11, tableHelper)
          playerPed = SetPedCanRagdollFromPlayerImpact
          stateFlag11 = localValue2
          tableHelper = false
          playerPed(stateFlag11, tableHelper)
          playerPed = SetPedCanRagdoll
          stateFlag11 = localValue2
          tableHelper = false
          playerPed(stateFlag11, tableHelper)
          playerPed = SetPedCanBeKnockedOffVehicle
          stateFlag11 = localValue2
          tableHelper = 1
          playerPed(stateFlag11, tableHelper)
          playerPed = SetVehicleColours
          stateFlag11 = dataCollection2.currentVehicleSpawned
          tableHelper = dataCollection2.vehicleColour
          workingValue8 = dataCollection2.vehicleColour
          playerPed(stateFlag11, tableHelper, workingValue8)
          playerPed = SetVehicleEngineOn
          stateFlag11 = dataCollection2.currentVehicleSpawned
          tableHelper = true
          workingValue8 = true
          cmgOperation5 = false
          playerPed(stateFlag11, tableHelper, workingValue8, cmgOperation5)
        else
          playerPed = SetCurrentPedWeapon
          stateFlag11 = localValue2
          tableHelper = -1569615261
          workingValue8 = true
          playerPed(stateFlag11, tableHelper, workingValue8)
          playerPed = SetPlayerFallDistance
          stateFlag11 = PlayerId
          -- Beginner: result below is localPlayerIndex.
          stateFlag11 = stateFlag11()
          tableHelper = 50.0
          playerPed(stateFlag11, tableHelper)
        end
        playerPed = dataCollection2.currentCheckpoint
        stateFlag11 = dataCollection2.currentLap
        stateFlag11 = stateFlag11 - 1
        tableHelper = dataCollection2.numOfCheckpointsPerLap
        stateFlag11 = stateFlag11 * tableHelper
        playerPed = playerPed - stateFlag11
        dataCollection2.currentLocalCheckpoint = playerPed
        stateFlag11 = dataCollection2.checkpointData
        tableHelper = playerPed + 1
        stateFlag11 = stateFlag11[tableHelper]
        tableHelper = dataCollection2.checkpointData
        tableHelper = tableHelper[playerPed]
        workingValue8 = CMG
        workingValue8 = workingValue8.setEventRespawnPosition
        cmgOperation5 = tableHelper
        workingValue8(cmgOperation5)
        if stateFlag11 then
          workingValue8 = vector3
          cmgOperation5 = stateFlag11.x
          stateFlag = stateFlag11.y
          stateFlag2 = stateFlag11.z
          workingValue8 = workingValue8(cmgOperation5, stateFlag, stateFlag2)
          cmgOperation5 = vector3
          stateFlag = tableHelper.x
          stateFlag2 = tableHelper.y
          stateFlag3 = tableHelper.z
          cmgOperation5 = cmgOperation5(stateFlag, stateFlag2, stateFlag3)
          workingValue8 = workingValue8 - cmgOperation5
          workingValue8 = #workingValue8
          cmgOperation5 = vector3
          stateFlag = stateFlag11.x
          stateFlag2 = stateFlag11.y
          stateFlag3 = stateFlag11.z
          cmgOperation5 = cmgOperation5(stateFlag, stateFlag2, stateFlag3)
          cmgOperation5 = localValue3 - cmgOperation5
          cmgOperation5 = #cmgOperation5
          dataCollection2.distanceToNextCheckpoint = cmgOperation5
          if cmgOperation5 > 25 then
            stateFlag = workingValue8 * 2.0
            if cmgOperation5 > stateFlag and 0 ~= playerPed then
              stateFlag = DoScreenFadeOut
              stateFlag2 = 1500
              stateFlag(stateFlag2)
              stateFlag = NetworkFadeOutEntity
              stateFlag2 = localValue2
              stateFlag3 = true
              dataCollection = false
              stateFlag(stateFlag2, stateFlag3, dataCollection)
              stateFlag = Wait
              stateFlag2 = 1500
              stateFlag(stateFlag2)
              if 0 == localValue4 then
                stateFlag = SetEntityCoords
                stateFlag2 = localValue2
                stateFlag3 = tableHelper.x
                dataCollection = tableHelper.y
                text3 = tableHelper.z
                text4 = false
                text6 = false
                stateFlag4 = false
                stateFlag5 = false
                -- Beginner: Move/teleport an entity to new coordinates.
                stateFlag(stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5)
                stateFlag = SetEntityHeading
                stateFlag2 = dataCollection2.currentVehicleSpawned
                stateFlag3 = tableHelper.w
                -- Beginner: Change the direction an entity is facing.
                stateFlag(stateFlag2, stateFlag3)
              else
                stateFlag = SetEntityCoords
                stateFlag2 = localValue4
                stateFlag3 = tableHelper.x
                dataCollection = tableHelper.y
                text3 = tableHelper.z
                text4 = false
                text6 = false
                stateFlag4 = false
                stateFlag5 = false
                -- Beginner: Move/teleport an entity to new coordinates.
                stateFlag(stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5)
                stateFlag = SetEntityHeading
                stateFlag2 = dataCollection2.currentVehicleSpawned
                stateFlag3 = tableHelper.w
                -- Beginner: Change the direction an entity is facing.
                stateFlag(stateFlag2, stateFlag3)
                stateFlag = SetVehicleEngineHealth
                stateFlag2 = localValue4
                stateFlag3 = 1000.0
                stateFlag(stateFlag2, stateFlag3)
              end
              stateFlag = NetworkFadeInEntity
              stateFlag2 = localValue2
              stateFlag3 = false
              stateFlag(stateFlag2, stateFlag3)
              stateFlag = eventHandler2
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              stateFlag()
              stateFlag = DoScreenFadeIn
              stateFlag2 = 1500
              stateFlag(stateFlag2)
              stateFlag = Wait
              stateFlag2 = 1500
              stateFlag(stateFlag2)
              stateFlag = workingValue7
              stateFlag()
          end
          else
            stateFlag = GetEntityHealth
            stateFlag2 = localValue2
            -- Beginner: result below is health.
            stateFlag = stateFlag(stateFlag2)
            if stateFlag <= 100 then
              stateFlag = DoScreenFadeOut
              stateFlag2 = 1500
              stateFlag(stateFlag2)
              stateFlag = NetworkFadeOutEntity
              stateFlag2 = localValue2
              stateFlag3 = true
              dataCollection = false
              stateFlag(stateFlag2, stateFlag3, dataCollection)
              stateFlag = Wait
              stateFlag2 = 1500
              stateFlag(stateFlag2)
              stateFlag = TriggerEvent
              stateFlag2 = "193ee4e15e"
              -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "193ee4e15e".
              stateFlag(stateFlag2)
              stateFlag = Wait
              stateFlag2 = 1500
              stateFlag(stateFlag2)
              stateFlag = dataCollection2.vehicleId
              if "" ~= stateFlag then
                stateFlag = DeleteVehicle
                stateFlag2 = dataCollection2.currentVehicleSpawned
                stateFlag(stateFlag2)
                stateFlag = CMG
                stateFlag = stateFlag.TriggerServerCallback
                stateFlag2 = "d6bf609f5c"
                stateFlag3 = dataCollection2.vehicleId
                dataCollection = tableHelper
                stateFlag = stateFlag(stateFlag2, stateFlag3, dataCollection)
                stateFlag2 = CMG
                stateFlag2 = stateFlag2.getObjectId
                stateFlag3 = stateFlag
                dataCollection = "races re-spawn #1"
                stateFlag2 = stateFlag2(stateFlag3, dataCollection)
                dataCollection2.currentVehicleSpawned = stateFlag2
                stateFlag3 = SetVehicleColours
                dataCollection = dataCollection2.currentVehicleSpawned
                text3 = dataCollection2.vehicleColour
                text4 = dataCollection2.vehicleColour
                stateFlag3(dataCollection, text3, text4)
                stateFlag3 = SetEntityHeading
                dataCollection = dataCollection2.currentVehicleSpawned
                text3 = tableHelper.w
                -- Beginner: Change the direction an entity is facing.
                stateFlag3(dataCollection, text3)
                stateFlag3 = eventHandler2
                -- Beginner: Register a network event handler that the server/other clients can trigger.
                stateFlag3()
              else
                stateFlag = SetEntityCoords
                stateFlag2 = localValue2
                stateFlag3 = tableHelper.x
                dataCollection = tableHelper.y
                text3 = tableHelper.z
                text4 = false
                text6 = false
                stateFlag4 = false
                stateFlag5 = false
                -- Beginner: Move/teleport an entity to new coordinates.
                stateFlag(stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5)
                stateFlag = SetEntityHeading
                stateFlag2 = localValue2
                stateFlag3 = tableHelper.w
                -- Beginner: Change the direction an entity is facing.
                stateFlag(stateFlag2, stateFlag3)
              end
              stateFlag = NetworkFadeInEntity
              stateFlag2 = localValue2
              stateFlag3 = false
              stateFlag(stateFlag2, stateFlag3)
              stateFlag = DoScreenFadeIn
              stateFlag2 = 1500
              stateFlag(stateFlag2)
              stateFlag = Wait
              stateFlag2 = 1500
              stateFlag(stateFlag2)
              stateFlag = workingValue7
              stateFlag()
            else
              if 0 == localValue4 then
                stateFlag = dataCollection2.vehicleId
                if "" ~= stateFlag then
                  stateFlag = DoScreenFadeOut
                  stateFlag2 = 1500
                  stateFlag(stateFlag2)
                  stateFlag = NetworkFadeOutEntity
                  stateFlag2 = localValue2
                  stateFlag3 = true
                  dataCollection = false
                  stateFlag(stateFlag2, stateFlag3, dataCollection)
                  stateFlag = Wait
                  stateFlag2 = 1500
                  stateFlag(stateFlag2)
                  stateFlag = TriggerEvent
                  stateFlag2 = "193ee4e15e"
                  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "193ee4e15e".
                  stateFlag(stateFlag2)
                  stateFlag = Wait
                  stateFlag2 = 1500
                  stateFlag(stateFlag2)
                  stateFlag = DeleteVehicle
                  stateFlag2 = dataCollection2.currentVehicleSpawned
                  stateFlag(stateFlag2)
                  stateFlag = CMG
                  stateFlag = stateFlag.TriggerServerCallback
                  stateFlag2 = "d6bf609f5c"
                  stateFlag3 = dataCollection2.vehicleId
                  dataCollection = tableHelper
                  stateFlag = stateFlag(stateFlag2, stateFlag3, dataCollection)
                  stateFlag2 = CMG
                  stateFlag2 = stateFlag2.getObjectId
                  stateFlag3 = stateFlag
                  dataCollection = "races re-spawn #2"
                  stateFlag2 = stateFlag2(stateFlag3, dataCollection)
                  dataCollection2.currentVehicleSpawned = stateFlag2
                  stateFlag3 = SetVehicleColours
                  dataCollection = dataCollection2.currentVehicleSpawned
                  text3 = dataCollection2.vehicleColour
                  text4 = dataCollection2.vehicleColour
                  stateFlag3(dataCollection, text3, text4)
                  stateFlag3 = SetEntityHeading
                  dataCollection = dataCollection2.currentVehicleSpawned
                  text3 = tableHelper.w
                  -- Beginner: Change the direction an entity is facing.
                  stateFlag3(dataCollection, text3)
                  stateFlag3 = eventHandler2
                  -- Beginner: Register a network event handler that the server/other clients can trigger.
                  stateFlag3()
                  stateFlag3 = NetworkFadeInEntity
                  dataCollection = localValue2
                  text3 = false
                  stateFlag3(dataCollection, text3)
                  stateFlag3 = DoScreenFadeIn
                  dataCollection = 1500
                  stateFlag3(dataCollection)
                  stateFlag3 = Wait
                  dataCollection = 1500
                  stateFlag3(dataCollection)
                  stateFlag3 = workingValue7
                  stateFlag3()
              end
              else
                stateFlag = 178
                if cmgOperation3 > stateFlag then
                  stateFlag = 182
                  if cmgOperation3 < stateFlag then
                    goto continueAtStep389
                  end
                end
                stateFlag = -178
                if cmgOperation3 < stateFlag then
                  stateFlag = -182
                  ::continueAtStep389::
                  if cmgOperation3 > stateFlag then
                    stateFlag = GetEntitySpeed
                    stateFlag2 = dataCollection2.currentVehicleSpawned
                    -- Beginner: result below is speed.
                    stateFlag = stateFlag(stateFlag2)
                    if stateFlag < 5 then
                      stateFlag = DoScreenFadeOut
                      stateFlag2 = 1500
                      stateFlag(stateFlag2)
                      stateFlag = NetworkFadeOutEntity
                      stateFlag2 = localValue2
                      stateFlag3 = true
                      dataCollection = false
                      stateFlag(stateFlag2, stateFlag3, dataCollection)
                      stateFlag = Wait
                      stateFlag2 = 1500
                      stateFlag(stateFlag2)
                      stateFlag = eventHandler2
                      -- Beginner: Register a network event handler that the server/other clients can trigger.
                      stateFlag()
                      stateFlag = SetEntityCoords
                      stateFlag2 = dataCollection2.currentVehicleSpawned
                      stateFlag3 = tableHelper.x
                      dataCollection = tableHelper.y
                      text3 = tableHelper.z
                      text4 = false
                      text6 = false
                      stateFlag4 = false
                      stateFlag5 = false
                      -- Beginner: Move/teleport an entity to new coordinates.
                      stateFlag(stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5)
                      stateFlag = SetEntityHeading
                      stateFlag2 = dataCollection2.currentVehicleSpawned
                      stateFlag3 = tableHelper.w
                      -- Beginner: Change the direction an entity is facing.
                      stateFlag(stateFlag2, stateFlag3)
                      stateFlag = SetVehicleEngineHealth
                      stateFlag2 = dataCollection2.currentVehicleSpawned
                      stateFlag3 = 1000.0
                      stateFlag(stateFlag2, stateFlag3)
                      stateFlag = SetVehicleBodyHealth
                      stateFlag2 = dataCollection2.currentVehicleSpawned
                      stateFlag3 = 1000.0
                      stateFlag(stateFlag2, stateFlag3)
                      stateFlag = SetVehicleDeformationFixed
                      stateFlag2 = dataCollection2.currentVehicleSpawned
                      stateFlag(stateFlag2)
                      stateFlag = NetworkFadeInEntity
                      stateFlag2 = localValue2
                      stateFlag3 = false
                      stateFlag(stateFlag2, stateFlag3)
                      stateFlag = DoScreenFadeIn
                      stateFlag2 = 1500
                      stateFlag(stateFlag2)
                      stateFlag = Wait
                      stateFlag2 = 1500
                      stateFlag(stateFlag2)
                      stateFlag = workingValue7
                      stateFlag()
                    end
                  end
                end
              end
            end
          end
        end
        workingValue8 = SetPlayerControl
        cmgOperation5 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        cmgOperation5 = cmgOperation5()
        stateFlag = true
        stateFlag2 = 0
        workingValue8(cmgOperation5, stateFlag, stateFlag2)
        if 0 == localValue4 then
          workingValue8 = DisableFirstPersonCamThisFrame
          workingValue8()
        end
        workingValue8 = eventHandler4
        cmgOperation5 = dataCollection2.currentPosition
        stateFlag = currentEvent
        stateFlag = stateFlag.players
        stateFlag = #stateFlag
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        workingValue8(cmgOperation5, stateFlag)
        workingValue8 = dataCollection2.collisionDisabled
        if workingValue8 then
          workingValue8 = Citizen
          workingValue8 = workingValue8.InvokeNative
          cmgOperation5 = 6917136782320038191
          stateFlag = true
          workingValue8(cmgOperation5, stateFlag)
          workingValue8 = dataCollection2.currentVehicleSpawned
          if 0 ~= workingValue8 then
            workingValue8 = DoesEntityExist
            cmgOperation5 = dataCollection2.currentVehicleSpawned
            workingValue8 = workingValue8(cmgOperation5)
            if workingValue8 then
              workingValue8 = SetNetworkVehicleAsGhost
              cmgOperation5 = dataCollection2.currentVehicleSpawned
              stateFlag = true
              workingValue8(cmgOperation5, stateFlag)
              workingValue8 = SetEntityAlpha
              cmgOperation5 = dataCollection2.currentVehicleSpawned
              stateFlag = 255
              stateFlag2 = false
              workingValue8(cmgOperation5, stateFlag, stateFlag2)
            end
          end
          workingValue8 = SetEntityAlpha
          cmgOperation5 = localValue2
          stateFlag = 255
          stateFlag2 = false
          workingValue8(cmgOperation5, stateFlag, stateFlag2)
          workingValue8 = pairs
          cmgOperation5 = CMG
          cmgOperation5 = cmgOperation5.getAllVehicles
          cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6 = cmgOperation5()
          workingValue8, cmgOperation5, stateFlag, stateFlag2 = workingValue8(cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6, stateFlag4, stateFlag5, stateFlag6)
          for stateFlag3, dataCollection in workingValue8, cmgOperation5, stateFlag, stateFlag2 do
            text3 = SetEntityAlpha
            text4 = dataCollection
            text6 = 255
            stateFlag4 = false
            text3(text4, text6, stateFlag4)
          end
          workingValue8 = GetActivePlayers
          workingValue8 = workingValue8()
          cmgOperation5 = pairs
          stateFlag = workingValue8
          cmgOperation5, stateFlag, stateFlag2, stateFlag3 = cmgOperation5(stateFlag)
          for dataCollection, text3 in cmgOperation5, stateFlag, stateFlag2, stateFlag3 do
            text4 = GetPlayerPed
            text6 = text3
            -- Beginner: result below is playerPed.
            text4 = text4(text6)
            text6 = SetEntityAlpha
            stateFlag4 = text4
            stateFlag5 = 255
            stateFlag6 = false
            text6(stateFlag4, stateFlag5, stateFlag6)
          end
        end
        workingValue8 = SetCheckpointRgba
        cmgOperation5 = dataCollection2.checkpoints
        cmgOperation5 = cmgOperation5[1]
        stateFlag = 144
        stateFlag2 = 238
        stateFlag3 = 144
        dataCollection = 150
        workingValue8(cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection)
        workingValue8 = IsDisabledControlPressed
        cmgOperation5 = 0
        stateFlag = 23
        workingValue8 = workingValue8(cmgOperation5, stateFlag)
        if workingValue8 then
          workingValue8 = dataCollection2.holdingF
          workingValue8 = workingValue8 + 1
          dataCollection2.holdingF = workingValue8
          workingValue8 = dataCollection2.holdingF
          if workingValue8 >= 60 then
            dataCollection2.holdingF = 0
            workingValue8 = DoScreenFadeOut
            cmgOperation5 = 1500
            workingValue8(cmgOperation5)
            workingValue8 = NetworkFadeOutEntity
            cmgOperation5 = localValue2
            stateFlag = true
            stateFlag2 = false
            workingValue8(cmgOperation5, stateFlag, stateFlag2)
            workingValue8 = Wait
            cmgOperation5 = 1500
            workingValue8(cmgOperation5)
            workingValue8 = TriggerEvent
            cmgOperation5 = "193ee4e15e"
            -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "193ee4e15e".
            workingValue8(cmgOperation5)
            workingValue8 = Wait
            cmgOperation5 = 1500
            workingValue8(cmgOperation5)
            workingValue8 = dataCollection2.vehicleId
            if "" ~= workingValue8 then
              workingValue8 = DeleteVehicle
              cmgOperation5 = dataCollection2.currentVehicleSpawned
              workingValue8(cmgOperation5)
              workingValue8 = CMG
              workingValue8 = workingValue8.TriggerServerCallback
              cmgOperation5 = "d6bf609f5c"
              stateFlag = dataCollection2.vehicleId
              stateFlag2 = tableHelper
              workingValue8 = workingValue8(cmgOperation5, stateFlag, stateFlag2)
              cmgOperation5 = CMG
              cmgOperation5 = cmgOperation5.getObjectId
              stateFlag = workingValue8
              stateFlag2 = "races re-spawn #3"
              cmgOperation5 = cmgOperation5(stateFlag, stateFlag2)
              dataCollection2.currentVehicleSpawned = cmgOperation5
              stateFlag = SetVehicleColours
              stateFlag2 = dataCollection2.currentVehicleSpawned
              stateFlag3 = dataCollection2.vehicleColour
              dataCollection = dataCollection2.vehicleColour
              stateFlag(stateFlag2, stateFlag3, dataCollection)
              stateFlag = SetEntityHeading
              stateFlag2 = dataCollection2.currentVehicleSpawned
              stateFlag3 = tableHelper.w
              -- Beginner: Change the direction an entity is facing.
              stateFlag(stateFlag2, stateFlag3)
              stateFlag = eventHandler2
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              stateFlag()
            else
              workingValue8 = SetEntityCoords
              cmgOperation5 = localValue2
              stateFlag = tableHelper.x
              stateFlag2 = tableHelper.y
              stateFlag3 = tableHelper.z
              dataCollection = false
              text3 = false
              text4 = false
              text6 = false
              -- Beginner: Move/teleport an entity to new coordinates.
              workingValue8(cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6)
              workingValue8 = SetEntityHeading
              cmgOperation5 = localValue2
              stateFlag = tableHelper.w
              -- Beginner: Change the direction an entity is facing.
              workingValue8(cmgOperation5, stateFlag)
            end
            workingValue8 = NetworkFadeInEntity
            cmgOperation5 = localValue2
            stateFlag = false
            workingValue8(cmgOperation5, stateFlag)
            workingValue8 = DoScreenFadeIn
            cmgOperation5 = 1500
            workingValue8(cmgOperation5)
            workingValue8 = Wait
            cmgOperation5 = 1500
            workingValue8(cmgOperation5)
            workingValue8 = workingValue7
            workingValue8()
          end
        end
        workingValue8 = pairs
        cmgOperation5 = currentEvent
        cmgOperation5 = cmgOperation5.players
        workingValue8, cmgOperation5, stateFlag, stateFlag2 = workingValue8(cmgOperation5)
        for stateFlag3, dataCollection in workingValue8, cmgOperation5, stateFlag, stateFlag2 do
          text3 = CMG
          text3 = text3.updateScoreboard
          text4 = dataCollection.source
          text6 = 6
          stateFlag4 = workingValue
          stateFlag5 = dataCollection.finishTime
          stateFlag4, stateFlag5, stateFlag6 = stateFlag4(stateFlag5)
          text3(text4, text6, stateFlag4, stateFlag5, stateFlag6)
        end
      end
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(cmgOperation2)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = dataCollection2.state
  if "waiting" ~= localValue1 then
    localValue1 = dataCollection2.state
    if "racing" ~= localValue1 then
      goto continueAtStep75
    end
  end
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 75
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 49
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 263
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 264
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 257
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 140
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 141
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 142
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 143
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 24
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 25
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = dataCollection2.disableVehicleWeapons
  if localValue1 then
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 68
    localValue4 = true
    localValue1(localValue2, localValue3, localValue4)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 70
    localValue4 = true
    localValue1(localValue2, localValue3, localValue4)
  end
  ::continueAtStep75::
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
text2 = backgroundThread
eventHandler = "Race Controls"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(text2, eventHandler)
cmgOperation2 = RegisterNetEvent
text2 = "5339e115ec"
-- Beginner: this function handles network event "5339e115ec".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2
  localValue2 = dataCollection2.finished
  if not localValue2 then
    dataCollection2.currentPosition = localValue1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5339e115ec".
cmgOperation2(text2, eventHandler)
-- Beginner: this function handles network event "5339e115ec".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper
  localValue2 = pairs
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue2, localValue3, localValue4, cmgOperation3 = localValue2(localValue3)
  for playerPed, stateFlag11 in localValue2, localValue3, localValue4, cmgOperation3 do
    tableHelper = stateFlag11.source
    if localValue1 == tableHelper then
      return stateFlag11
    end
  end
  localValue2 = {}
  localValue2.name = "N/A"
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6
  localValue2 = {}
  localValue3 = {}
  localValue4 = "Position"
  cmgOperation3 = "Name"
  playerPed = "Time"
  localValue3[1] = localValue4
  localValue3[2] = cmgOperation3
  localValue3[3] = playerPed
  localValue2.columns = localValue3
  localValue3 = {}
  localValue2.rows = localValue3
  localValue2.sortColumn = 1
  localValue2.sortAscending = true
  localValue2.formatPlace = true
  localValue3 = ipairs
  localValue4 = localValue1
  localValue3, localValue4, cmgOperation3, playerPed = localValue3(localValue4)
  for stateFlag11, tableHelper in localValue3, localValue4, cmgOperation3, playerPed do
    workingValue8 = table
    workingValue8 = workingValue8.insert
    cmgOperation5 = localValue2.rows
    stateFlag = {}
    stateFlag2 = stateFlag11
    stateFlag3 = ""
    dataCollection = ""
    text3 = false
    text4 = cmgOperation2
    text6 = tableHelper
    text4 = text4(text6)
    text4 = text4.name
    text6 = workingValue
    text6 = text6()
    stateFlag.playerSrc = tableHelper
    stateFlag[1] = stateFlag2
    stateFlag[2] = stateFlag3
    stateFlag[3] = dataCollection
    stateFlag[4] = text3
    stateFlag[5] = text4
    stateFlag[6] = text6
    workingValue8(cmgOperation5, stateFlag)
  end
  return localValue2
end
eventHandler = RegisterNetEvent
text5 = "da8b82fb88"
-- Beginner: this function handles network event "da8b82fb88".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper, workingValue8, cmgOperation5, stateFlag, stateFlag2, stateFlag3, dataCollection, text3, text4, text6
  localValue2 = CMG
  localValue2 = localValue2.isLeaderboardSetup
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = text2
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue3 = TriggerEvent
    localValue4 = "a8ac0d4162"
    cmgOperation3 = localValue2
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "a8ac0d4162".
    localValue3(localValue4, cmgOperation3)
  else
    localValue2 = pairs
    localValue3 = localValue1
    localValue2, localValue3, localValue4, cmgOperation3 = localValue2(localValue3)
    for playerPed, stateFlag11 in localValue2, localValue3, localValue4, cmgOperation3 do
      tableHelper = pairs
      workingValue8 = currentEvent
      workingValue8 = workingValue8.players
      tableHelper, workingValue8, cmgOperation5, stateFlag = tableHelper(workingValue8)
      for stateFlag2, stateFlag3 in tableHelper, workingValue8, cmgOperation5, stateFlag do
        dataCollection = stateFlag3.source
        if dataCollection == stateFlag11 then
          dataCollection = CMG
          dataCollection = dataCollection.updateScoreboard
          text3 = stateFlag11
          text4 = 1
          text6 = playerPed
          dataCollection(text3, text4, text6)
          break
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "da8b82fb88".
eventHandler(text5, workingValue2)
eventHandler = RegisterNetEvent
text5 = "40d3587c5a"
-- Beginner: this function handles network event "40d3587c5a".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper
  dataCollection2.finished = true
  localValue2 = PlaySound
  localValue3 = -1
  localValue4 = "CHECKPOINT_PERFECT"
  cmgOperation3 = "HUD_MINI_GAME_SOUNDSET"
  playerPed = false
  stateFlag11 = 0
  tableHelper = true
  localValue2(localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper)
  if localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.announceMpBigMsg
    localValue3 = "~g~You have won the race!"
    localValue4 = "Race will end in 30 seconds, or if all competitors finish."
    cmgOperation3 = 5000
    playerPed = false
    stateFlag11 = true
    localValue2(localValue3, localValue4, cmgOperation3, playerPed, stateFlag11)
  else
    localValue2 = CMG
    localValue2 = localValue2.announceMpBigMsg
    localValue3 = "~g~You have finished the race!"
    localValue4 = "Race will end in 30 seconds, or if all competitors finish."
    cmgOperation3 = 5000
    playerPed = false
    stateFlag11 = true
    localValue2(localValue3, localValue4, cmgOperation3, playerPed, stateFlag11)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "40d3587c5a".
eventHandler(text5, workingValue2)
eventHandler = RegisterNetEvent
text5 = "f5bcb71e25"
-- Beginner: this function handles network event "f5bcb71e25".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, cmgOperation3, playerPed, stateFlag11, tableHelper
  localValue2 = pairs
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue2, localValue3, localValue4, cmgOperation3 = localValue2(localValue3)
  for playerPed, stateFlag11 in localValue2, localValue3, localValue4, cmgOperation3 do
    tableHelper = stateFlag11.source
    if tableHelper == localValue1 then
      tableHelper = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      tableHelper = tableHelper()
      stateFlag11.finishTime = tableHelper
      break
    end
  end
end
eventHandler(text5, workingValue2)
eventHandler = RegisterNetEvent
text5 = "b64c417a11"
-- Beginner: this function handles network event "b64c417a11".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2, localValue3, localValue4, cmgOperation3
  dataCollection2.dnfTimer = 30
  while true do
    localValue1 = dataCollection2.state
    if "racing" ~= localValue1 then
      break
    end
    localValue1 = dataCollection2.dnfTimer
    if localValue1 >= 1 then
      localValue1 = dataCollection2.dnfTimer
      localValue1 = localValue1 - 1
      dataCollection2.dnfTimer = localValue1
      localValue1 = dataCollection2.dnfTimer
      if localValue1 <= 5 then
        localValue1 = PlaySoundFrontend
        localValue2 = -1
        localValue3 = "Checkpoint_Buzz"
        localValue4 = "DLC_AW_Frontend_Sounds"
        cmgOperation3 = false
        localValue1(localValue2, localValue3, localValue4, cmgOperation3)
      end
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b64c417a11".
eventHandler(text5, workingValue2)
eventHandler = AddEventHandler
text5 = "b3cbc4aca5"
-- Beginner: this function runs when client event "b3cbc4aca5" fires.

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.showCountdownTimer
  localValue3 = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a client-side event handler. Event/command: "b3cbc4aca5".
eventHandler(text5, workingValue2)
