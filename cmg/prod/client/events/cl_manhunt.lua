--[[
    LEVEL 1 BEGINNER GUIDE — Manhunt
    =====================================

    File: cmg/prod/client/events/cl_manhunt.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Manhunt feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 28
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
local cmgOperation, dataCollection, cmgOperation2, workingValue13, workingValue14, eventHandler, text3, eventHandler2, text4, eventHandler3, text, workingValue, workingValue2, workingValue3, workingValue4, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, backgroundThread, workingValue12
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection = "cfg/events/cfg_manhunt"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection)
dataCollection = {}
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createTimerBars
-- Beginner: result below is timerBars.
cmgOperation2 = cmgOperation2()

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, number, stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12
  localValue1 = SetPedIntoVehicle
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = dataCollection.vehicle
  number = -1
  localValue1(localValue2, localValue3, number)
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue2 = dataCollection
  while true do
    localValue3 = NetworkHasControlOfEntity
    number = dataCollection.vehicle
    localValue3 = localValue3(number)
    if localValue3 then
      break
    end
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    localValue3 = localValue3 - localValue1
    number = 2000
    if not (localValue3 < number) then
      break
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    number = 0
    localValue3(number)
    localValue3 = dataCollection
    if localValue2 ~= localValue3 then
      return
    end
  end
  localValue3 = dataCollection.position
  if nil == localValue3 then
    localValue3 = print
    number = "[Manhunt] Deleting vehicle on spawn, no position was set."
    localValue3(number)
    localValue3 = DeleteEntity
    number = dataCollection.vehicle
    -- Beginner: Delete a GTA entity.
    localValue3(number)
    return
  end
  localValue3 = SetEntityCoordsNoOffset
  number = dataCollection.vehicle
  stateFlag7 = dataCollection.position
  stateFlag7 = stateFlag7.x
  stateFlag8 = dataCollection.position
  stateFlag8 = stateFlag8.y
  number5 = dataCollection.position
  number5 = number5.z
  stateFlag10 = true
  stateFlag11 = false
  stateFlag12 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue3(number, stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12)
  localValue3 = SetVehicleOnGroundProperly
  number = dataCollection.vehicle
  localValue3(number)
  localValue3 = FreezeEntityPosition
  number = dataCollection.vehicle
  stateFlag7 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(number, stateFlag7)
  localValue3 = SetVehRadioStation
  number = dataCollection.vehicle
  stateFlag7 = "OFF"
  localValue3(number, stateFlag7)
  localValue3 = SetVehicleRadioEnabled
  number = dataCollection.vehicle
  stateFlag7 = false
  localValue3(number, stateFlag7)
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1) ===
function workingValue14(localValue1)
  local localValue2, localValue3, number, stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11
  localValue2 = 0
  localValue3 = pairs
  number = currentEvent
  number = number.players
  localValue3, number, stateFlag7, stateFlag8 = localValue3(number)
  for number5, stateFlag10 in localValue3, number, stateFlag7, stateFlag8 do
    stateFlag11 = stateFlag10.team
    if stateFlag11 == localValue1 then
      localValue2 = localValue2 + 1
    end
  end
  return localValue2
end
eventHandler = RegisterNetEvent
text3 = "e69f053374"
-- Beginner: this function handles network event "e69f053374".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, localValue3, number
  localValue2 = dataCollection
  while true do
    localValue3 = DoesEntityExist
    number = dataCollection.vehicle
    localValue3 = localValue3(number)
    if localValue3 then
      break
    end
    localValue3 = NetworkDoesEntityExistWithNetworkId
    number = localValue1
    localValue3 = localValue3(number)
    if localValue3 then
      localValue3 = NetworkGetEntityFromNetworkId
      number = localValue1
      localValue3 = localValue3(number)
      dataCollection.vehicle = localValue3
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    number = 0
    localValue3(number)
    localValue3 = dataCollection
    if localValue2 ~= localValue3 then
      return
    end
  end
  localValue3 = workingValue13
  localValue3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e69f053374".
eventHandler(text3, eventHandler2)
eventHandler = RegisterNetEvent
text3 = "ea7595f298"
-- Beginner: this function handles network event "ea7595f298".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2, localValue3) ===
function eventHandler2(localValue1, localValue2, localValue3)
  local number, stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12, stateFlag, stateFlag3, stateFlag5
  number = {}
  dataCollection = number
  number = currentEvent
  number.drawPlayersTimeBar = false
  number = SetPlayerControl
  stateFlag7 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  stateFlag7 = stateFlag7()
  stateFlag8 = false
  number5 = 0
  number(stateFlag7, stateFlag8, number5)
  number = cmgOperation.locations
  number = number[localValue1]
  stateFlag7 = number.vehicles
  dataCollection.vehicles = stateFlag7
  stateFlag7 = number.bounds
  dataCollection.bounds = stateFlag7
  stateFlag7 = CMG
  stateFlag7 = stateFlag7.setEventMusic
  stateFlag8 = "AH3B_EVADE_COPS_RT"
  stateFlag7(stateFlag8)
  stateFlag7 = CMG
  stateFlag7 = stateFlag7.loadClientRockstarMap
  stateFlag8 = localValue2
  stateFlag7(stateFlag8)
  stateFlag7 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stateFlag7 = stateFlag7()
  stateFlag8 = SetEntityCoordsNoOffset
  number5 = stateFlag7
  stateFlag10 = localValue3.x
  stateFlag11 = localValue3.y
  stateFlag12 = localValue3.z
  stateFlag = true
  stateFlag3 = false
  stateFlag5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  stateFlag8(number5, stateFlag10, stateFlag11, stateFlag12, stateFlag, stateFlag3, stateFlag5)
  stateFlag8 = SetEntityHeading
  number5 = stateFlag7
  stateFlag10 = localValue3.w
  -- Beginner: Change the direction an entity is facing.
  stateFlag8(number5, stateFlag10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ea7595f298".
eventHandler(text3, eventHandler2)
eventHandler = RegisterNetEvent
text3 = "29ff279987"
-- Beginner: this function handles network event "29ff279987".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, localValue3, number, stateFlag7, stateFlag8, number5, stateFlag10
  localValue2 = CMG
  localValue2 = localValue2.stopEventSequence
  localValue2()
  localValue2 = BusyspinnerOff
  localValue2()
  localValue2 = SetPlayerControl
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  number = true
  stateFlag7 = 0
  localValue2(localValue3, number, stateFlag7)
  localValue2 = CMG
  localValue2 = localValue2.startVehicleSelection
  localValue3 = localValue1.xyz
  number = localValue1.w
  stateFlag7 = dataCollection.vehicles
  stateFlag8 = 20

  -- === HELPER FUNCTION (decompiler name: number5; parameters: localValue12) ===
  function number5(localValue12)
    local serverEventCall, text2, number2
    serverEventCall = TriggerServerEvent
    text2 = "5d4175e240"
    number2 = localValue12
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5d4175e240".
    serverEventCall(text2, number2)
  end
  stateFlag10 = nil
  localValue2(localValue3, number, stateFlag7, stateFlag8, number5, stateFlag10)
  dataCollection.state = "SELECT"
  dataCollection.position = localValue1
  localValue2 = CMG
  localValue2 = localValue2.setEventRespawnPosition
  localValue3 = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "29ff279987".
eventHandler(text3, eventHandler2)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, number, stateFlag7, stateFlag8, number5, stateFlag10
  localValue2 = pairs
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue2, localValue3, number, stateFlag7 = localValue2(localValue3)
  for stateFlag8, number5 in localValue2, localValue3, number, stateFlag7 do
    stateFlag10 = number5.source
    if stateFlag10 == localValue1 then
      stateFlag10 = number5.team
      if "civilian" == stateFlag10 then
        stateFlag10 = 3
        return stateFlag10
      else
        stateFlag10 = 1
        return stateFlag10
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, number, stateFlag7, stateFlag8, number5, stateFlag10
  localValue2 = pairs
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue2, localValue3, number, stateFlag7 = localValue2(localValue3)
  for stateFlag8, number5 in localValue2, localValue3, number, stateFlag7 do
    stateFlag10 = number5.source
    if stateFlag10 == localValue1 then
      stateFlag10 = number5.team
      if "civilian" == stateFlag10 then
        stateFlag10 = 9
        return stateFlag10
      else
        stateFlag10 = 6
        return stateFlag10
      end
    end
  end
end
eventHandler2 = RegisterNetEvent
text4 = "821e2325c4"
-- Beginner: this function handles network event "821e2325c4".

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, number, stateFlag7
  localValue2 = CMG
  localValue2 = localValue2.endVehicleSelection
  localValue2()
  localValue2 = SetFollowPedCamViewMode
  localValue3 = 2
  localValue2(localValue3)
  localValue2 = ExecuteCommand
  localValue3 = "showui"
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.enableMinigamePlayerBlips
  localValue3 = true
  number = eventHandler
  localValue2(localValue3, number)
  localValue2 = CMG
  localValue2 = localValue2.enableMinigamePlayerTags
  localValue3 = true
  number = false
  stateFlag7 = text3
  localValue2(localValue3, number, stateFlag7)
  dataCollection.state = "BEFORE_START"
  localValue2 = CMG
  localValue2 = localValue2.showCountdownTimer
  localValue3 = 3
  localValue2(localValue3)
  localValue2 = dataCollection.state
  if "BEFORE_START" ~= localValue2 then
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.setPlayerCanOpenLeaderboard
  localValue3 = true
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.setMinigameBounds
  localValue3 = dataCollection.bounds
  localValue2(localValue3)
  dataCollection.state = "START"
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  dataCollection.startTime = localValue2
  dataCollection.gameTime = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "821e2325c4".
eventHandler2(text4, eventHandler3)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, localValue3, number, stateFlag7, stateFlag8
  localValue2 = GetPlayerFromServerId
  localValue3 = localValue1.source
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  localValue3 = dataCollection.state
  if "START" ~= localValue3 or -1 == localValue2 then
    return
  end
  localValue3 = GetPlayerPed
  number = localValue2
  -- Beginner: result below is playerPed.
  localValue3 = localValue3(number)
  if 0 == localValue3 then
    return
  end
  number = GetVehiclePedIsUsing
  stateFlag7 = localValue3
  number = number(stateFlag7)
  if 0 == number then
    return
  end
  stateFlag7 = Citizen
  stateFlag7 = stateFlag7.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: none) ===
  function stateFlag8()
    local localValue12, serverEventCall, text2, number2, number3, number4, stateFlag9, number6, number7, number8, stateFlag2, stateFlag4, stateFlag6
    localValue12 = CMG
    localValue12 = localValue12.loadPtfx
    serverEventCall = "scr_as_trans"
    localValue12(serverEventCall)
    localValue12 = UseParticleFxAsset
    serverEventCall = "scr_as_trans"
    localValue12(serverEventCall)
    localValue12 = StartParticleFxLoopedOnEntity
    serverEventCall = "scr_as_trans_smoke"
    text2 = number
    number2 = 0.0
    number3 = 0.0
    number4 = 0.0
    stateFlag9 = 0.0
    number6 = 0.0
    number7 = 0.0
    number8 = 2.0
    stateFlag2 = false
    stateFlag4 = false
    stateFlag6 = false
    localValue12 = localValue12(serverEventCall, text2, number2, number3, number4, stateFlag9, number6, number7, number8, stateFlag2, stateFlag4, stateFlag6)
    serverEventCall = SetParticleFxLoopedColour
    text2 = localValue12
    number2 = 1.0
    number3 = 0.0
    number4 = 0.0
    stateFlag9 = false
    serverEventCall(text2, number2, number3, number4, stateFlag9)
    serverEventCall = Citizen
    serverEventCall = serverEventCall.Wait
    text2 = 3000
    serverEventCall(text2)
    serverEventCall = StopParticleFxLooped
    text2 = localValue12
    number2 = false
    serverEventCall(text2, number2)
    serverEventCall = RemoveNamedPtfxAsset
    text2 = "scr_as_trans"
    serverEventCall(text2)
  end
  stateFlag7(stateFlag8)
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3
  localValue2 = localValue1.blip
  if localValue2 then
    localValue2 = RemoveBlip
    localValue3 = localValue1.blip
    localValue2(localValue3)
    localValue1.blip = nil
  end
  localValue2 = localValue1.tag
  if localValue2 then
    localValue2 = RemoveMpGamerTag
    localValue3 = localValue1.tag
    localValue2(localValue3)
    localValue1.tag = nil
  end
end
eventHandler3 = RegisterNetEvent
text = "893a2a1aff"
-- Beginner: this function handles network event "893a2a1aff".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, number, stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12
  localValue2 = pairs
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue2, localValue3, number, stateFlag7 = localValue2(localValue3)
  for stateFlag8, number5 in localValue2, localValue3, number, stateFlag7 do
    stateFlag10 = table
    stateFlag10 = stateFlag10.has
    stateFlag11 = localValue1
    stateFlag12 = number5.source
    stateFlag10 = stateFlag10(stateFlag11, stateFlag12)
    if stateFlag10 then
      stateFlag10 = number5.team
      if "hunter" ~= stateFlag10 then
        number5.team = "hunter"
        stateFlag10 = text4
        stateFlag11 = number5
        stateFlag10(stateFlag11)
        stateFlag10 = eventHandler2
        stateFlag11 = number5
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        stateFlag10(stateFlag11)
      end
    else
      stateFlag10 = number5.team
      if "civilian" ~= stateFlag10 then
        number5.team = "civilian"
        stateFlag10 = text4
        stateFlag11 = number5
        stateFlag10(stateFlag11)
        stateFlag10 = eventHandler2
        stateFlag11 = number5
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        stateFlag10(stateFlag11)
      end
    end
  end
end
eventHandler3(text, workingValue)
eventHandler3 = RegisterNetEvent
text = "c387394ea4"
-- Beginner: this function handles network event "c387394ea4".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2
  dataCollection.gameTime = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c387394ea4".
eventHandler3(text, workingValue)
-- Beginner: this function handles network event "c387394ea4".

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2, localValue3, number
  localValue1 = SetCurrentPedWeapon
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = -1569615261
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 21
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 23
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 24
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 25
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 47
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 58
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 75
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 140
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 141
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 142
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 143
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 257
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 263
  number = true
  localValue1(localValue2, localValue3, number)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 264
  number = true
  localValue1(localValue2, localValue3, number)
end

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local localValue3, number, stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12, stateFlag, stateFlag3, stateFlag5
  localValue3 = localValue1.team
  if "civilian" == localValue3 then
    localValue3 = SetVehicleColours
    number = localValue2
    stateFlag7 = 64
    stateFlag8 = 64
    localValue3(number, stateFlag7, stateFlag8)
  else
    localValue3 = SetVehicleColours
    number = localValue2
    stateFlag7 = 29
    stateFlag8 = 29
    localValue3(number, stateFlag7, stateFlag8)
  end
  localValue3 = dataCollection.state
  if "START" ~= localValue3 then
    localValue3 = FreezeEntityPosition
    number = localValue2
    stateFlag7 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue3(number, stateFlag7)
  else
    localValue3 = localValue1.team
    if "civilian" == localValue3 then
      localValue3 = FreezeEntityPosition
      number = localValue2
      stateFlag7 = false
      localValue3(number, stateFlag7)
    else
      localValue3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue3 = localValue3()
      number = dataCollection.startTime
      localValue3 = localValue3 - number
      number = 20000
      if localValue3 > number then
        localValue3 = FreezeEntityPosition
        number = localValue2
        stateFlag7 = false
        -- Beginner: Freeze or unfreeze an entity in place.
        localValue3(number, stateFlag7)
      else
        localValue3 = FreezeEntityPosition
        number = localValue2
        stateFlag7 = true
        localValue3(number, stateFlag7)
      end
    end
  end
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  number = SetEntityProofs
  stateFlag7 = localValue3
  stateFlag8 = true
  number5 = true
  stateFlag10 = true
  stateFlag11 = true
  stateFlag12 = true
  stateFlag = true
  stateFlag3 = true
  stateFlag5 = true
  number(stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12, stateFlag, stateFlag3, stateFlag5)
  number = SetVehicleEngineOn
  stateFlag7 = localValue2
  stateFlag8 = true
  number5 = true
  stateFlag10 = false
  number(stateFlag7, stateFlag8, number5, stateFlag10)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2) ===
function workingValue(localValue1, localValue2)
  local localValue3, number, stateFlag7, stateFlag8
  localValue3 = HasEntityBeenDamagedByEntity
  number = localValue1
  stateFlag7 = localValue2
  stateFlag8 = true
  localValue3 = localValue3(number, stateFlag7, stateFlag8)
  if not localValue3 then
    localValue3 = HasEntityBeenDamagedByEntity
    number = localValue2
    stateFlag7 = localValue1
    stateFlag8 = true
    localValue3 = localValue3(number, stateFlag7, stateFlag8)
    if not localValue3 then
      localValue3 = IsEntityTouchingEntity
      number = localValue1
      stateFlag7 = localValue2
      localValue3 = localValue3(number, stateFlag7)
      if not localValue3 then
        localValue3 = IsEntityTouchingEntity
        number = localValue2
        stateFlag7 = localValue1
        localValue3 = localValue3(number, stateFlag7)
      end
    end
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3
  localValue2 = localValue1.lastCaptured
  if not localValue2 then
    localValue2 = true
    return localValue2
  else
    localValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue2 = localValue2()
    localValue3 = localValue1.lastCaptured
    localValue2 = localValue2 - localValue3
    localValue3 = 1000
    localValue2 = localValue2 > localValue3
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2) ===
function workingValue3(localValue1, localValue2)
  local localValue3, number, stateFlag7, stateFlag8, number5, stateFlag10
  localValue3 = localValue1.team
  if "civilian" == localValue3 then
    localValue3 = workingValue2
    number = localValue1
    localValue3 = localValue3(number)
    if localValue3 then
      goto continueAtStep10
    end
  end
  return
  ::continueAtStep10::
  localValue3 = GetPlayerFromServerId
  number = localValue1.source
  -- Beginner: result below is playerIndex.
  localValue3 = localValue3(number)
  if -1 == localValue3 then
    return
  end
  number = GetPlayerPed
  stateFlag7 = localValue3
  -- Beginner: result below is playerPed.
  number = number(stateFlag7)
  if 0 == number then
    return
  end
  stateFlag7 = GetVehiclePedIsUsing
  stateFlag8 = number
  stateFlag7 = stateFlag7(stateFlag8)
  if 0 == stateFlag7 then
    return
  end
  stateFlag8 = workingValue
  number5 = stateFlag7
  stateFlag10 = localValue2
  stateFlag8 = stateFlag8(number5, stateFlag10)
  if not stateFlag8 then
    return
  end
  stateFlag8 = ClearEntityLastDamageEntity
  number5 = stateFlag7
  stateFlag8(number5)
  stateFlag8 = ClearEntityLastDamageEntity
  number5 = localValue2
  stateFlag8(number5)
  stateFlag8 = TriggerServerEvent
  number5 = "3e5fdec374"
  stateFlag10 = localValue1.source
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3e5fdec374".
  stateFlag8(number5, stateFlag10)
  stateFlag8 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag8 = stateFlag8()
  localValue1.lastCaptured = stateFlag8
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, number, stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12
  localValue2 = pairs
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue2, localValue3, number, stateFlag7 = localValue2(localValue3)
  for stateFlag8, number5 in localValue2, localValue3, number, stateFlag7 do
    stateFlag10 = workingValue3
    stateFlag11 = number5
    stateFlag12 = localValue1
    stateFlag10(stateFlag11, stateFlag12)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local localValue3, number, stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12
  localValue3 = dataCollection.countdownScaleform
  if not localValue3 then
    localValue3 = RequestScaleformMovie
    number = "mp_big_message_freemode"
    -- Beginner: result below is scaleformHandle.
    localValue3 = localValue3(number)
    dataCollection.countdownScaleform = localValue3
  else
    localValue3 = HasScaleformMovieLoaded
    number = dataCollection.countdownScaleform
    localValue3 = localValue3(number)
    if not localValue3 then
      return
    end
  end
  localValue3 = cmgOperation.startHunterDelay
  number = math
  number = number.floor
  stateFlag7 = localValue2 / 1000
  number = number(stateFlag7)
  localValue3 = localValue3 - number
  number = BeginScaleformMovieMethod
  stateFlag7 = dataCollection.countdownScaleform
  stateFlag8 = "SHOW_SHARD_WASTED_MP_MESSAGE"
  number(stateFlag7, stateFlag8)
  number = localValue1.team
  if "hunter" == number then
    number = _ENV
    stateFlag7 = "ScaleformMovieMethodAddParamTextureNameString"
    number = number[stateFlag7]
    stateFlag7 = "~r~YOU ARE A HUNTER"
    number(stateFlag7)
    number = _ENV
    stateFlag7 = "ScaleformMovieMethodAddParamTextureNameString"
    number = number[stateFlag7]
    stateFlag7 = string
    stateFlag7 = stateFlag7.format
    stateFlag8 = "Chase begins in %d seconds"
    number5 = localValue3
    stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12 = stateFlag7(stateFlag8, number5)
    number(stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12)
  else
    number = _ENV
    stateFlag7 = "ScaleformMovieMethodAddParamTextureNameString"
    number = number[stateFlag7]
    stateFlag7 = "~r~GET READY"
    number(stateFlag7)
    number = _ENV
    stateFlag7 = "ScaleformMovieMethodAddParamTextureNameString"
    number = number[stateFlag7]
    stateFlag7 = string
    stateFlag7 = stateFlag7.format
    stateFlag8 = "Hunters released in %d seconds"
    number5 = localValue3
    stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12 = stateFlag7(stateFlag8, number5)
    number(stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12)
  end
  number = ScaleformMovieMethodAddParamInt
  stateFlag7 = 7
  number(stateFlag7)
  number = EndScaleformMovieMethod
  number()
  number = DrawScaleformMovieFullscreen
  stateFlag7 = dataCollection.countdownScaleform
  stateFlag8 = 255
  number5 = 255
  stateFlag10 = 255
  stateFlag11 = 255
  stateFlag12 = 0
  number(stateFlag7, stateFlag8, number5, stateFlag10, stateFlag11, stateFlag12)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3
  localValue2 = SetScaleformMovieAsNoLongerNeeded
  localValue3 = dataCollection.countdownScaleform
  localValue2(localValue3)
  dataCollection.countdownScaleform = nil
  localValue2 = localValue1.team
  if "civilian" == localValue2 then
    localValue2 = notify
    localValue3 = "The hunters have now been released, be on the lookout!"
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
  else
    localValue2 = notify
    localValue3 = "The chase begins, you can now hunt people down!"
    localValue2(localValue3)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, number, stateFlag7, stateFlag8
  localValue2 = localValue1.team
  if "civilian" == localValue2 then
    localValue2 = workingValue14
    localValue3 = "hunter"
    localValue2 = localValue2(localValue3)
    if localValue2 > 1 then
      localValue2 = "hunters"
      if localValue2 then
        goto continueAtStep13
      end
    end
    localValue2 = "hunter"
    ::continueAtStep13::
    localValue3 = drawNativeText
    number = string
    number = number.format
    stateFlag7 = "Escape the ~r~%s~w~"
    stateFlag8 = localValue2
    number, stateFlag7, stateFlag8 = number(stateFlag7, stateFlag8)
    -- Beginner: Draw GTA-style text on screen.
    localValue3(number, stateFlag7, stateFlag8)
  else
    localValue2 = drawNativeText
    localValue3 = "You are a ~r~hunter~w~. Hit a player to kill them"
    localValue2(localValue3)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3, number, stateFlag7, stateFlag8
  localValue2 = math
  localValue2 = localValue2.floor
  localValue3 = localValue1 / 60
  localValue2 = localValue2(localValue3)
  if localValue2 > 0 then
    localValue3 = string
    localValue3 = localValue3.format
    number = "%02d:%02d"
    stateFlag7 = localValue2
    stateFlag8 = localValue2 * 60
    stateFlag8 = localValue1 - stateFlag8
    return localValue3(number, stateFlag7, stateFlag8)
  else
    localValue3 = string
    localValue3 = localValue3.format
    number = "%02d"
    stateFlag7 = localValue1
    return localValue3(number, stateFlag7)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, number, stateFlag7, stateFlag8, number5
  localValue2 = dataCollection.winnerFound
  if localValue2 then
    return
  end
  localValue2 = cmgOperation2.reset
  localValue2()
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = dataCollection.startTime
  localValue2 = localValue2 - localValue3
  localValue3 = 20000
  if localValue2 < localValue3 then
    localValue3 = workingValue5
    number = localValue1
    stateFlag7 = localValue2
    localValue3(number, stateFlag7)
  else
    localValue3 = dataCollection.countdownScaleform
    if localValue3 then
      localValue3 = workingValue6
      number = localValue1
      localValue3(number)
    else
      localValue3 = workingValue7
      number = localValue1
      localValue3(number)
    end
  end
  localValue3 = cmgOperation2.push
  number = "~b~CIVILIANS~w~"
  stateFlag7 = tostring
  stateFlag8 = workingValue14
  number5 = "civilian"
  stateFlag8, number5 = stateFlag8(number5)
  stateFlag7, stateFlag8, number5 = stateFlag7(stateFlag8, number5)
  localValue3(number, stateFlag7, stateFlag8, number5)
  localValue3 = cmgOperation2.push
  number = "~r~HUNTERS~w~"
  stateFlag7 = tostring
  stateFlag8 = workingValue14
  number5 = "hunter"
  stateFlag8, number5 = stateFlag8(number5)
  stateFlag7, stateFlag8, number5 = stateFlag7(stateFlag8, number5)
  localValue3(number, stateFlag7, stateFlag8, number5)
  localValue3 = dataCollection.gameTime
  number = math
  number = number.floor
  stateFlag7 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag7 = stateFlag7()
  stateFlag8 = dataCollection.startTime
  stateFlag7 = stateFlag7 - stateFlag8
  stateFlag7 = stateFlag7 / 1000
  number = number(stateFlag7)
  localValue3 = localValue3 - number
  if localValue3 < 0 then
    localValue3 = 0
  end
  number = cmgOperation2.push
  stateFlag7 = "~y~TIME LEFT~w~"
  stateFlag8 = workingValue8
  number5 = localValue3
  stateFlag8, number5 = stateFlag8(number5)
  number(stateFlag7, stateFlag8, number5)
  number = cmgOperation2.draw
  number()
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, localValue3, number, stateFlag7, stateFlag8, number5
  localValue1 = table
  localValue1 = localValue1.count
  localValue2 = dataCollection
  -- Beginner: result below is count.
  localValue1 = localValue1(localValue2)
  if 0 == localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getEventLocalPlayer
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = GetVehiclePedIsUsing
  number = localValue2
  localValue3 = localValue3(number)
  if 0 ~= localValue3 then
    number = text
    stateFlag7 = localValue1
    stateFlag8 = localValue3
    number(stateFlag7, stateFlag8)
  end
  number = eventHandler3
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  number()
  number = dataCollection.state
  if "START" == number then
    number = SetPlayerControl
    stateFlag7 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    stateFlag7 = stateFlag7()
    stateFlag8 = true
    number5 = 0
    number(stateFlag7, stateFlag8, number5)
    number = workingValue9
    stateFlag7 = localValue1
    number(stateFlag7)
    if 0 ~= localValue3 then
      number = workingValue4
      stateFlag7 = localValue3
      number(stateFlag7)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.enableMinigamePlayerBlips
  localValue2 = false
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.enableMinigamePlayerTags
  localValue2 = false
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = CMG
  localValue1 = localValue1.setPlayerCanOpenLeaderboard
  localValue2 = false
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.cleanupRockstarMaps
  localValue1()
  localValue1 = TriggerMusicEvent
  localValue2 = "BST_STOP"
  localValue1(localValue2)
  localValue1 = {}
  dataCollection = localValue1
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2, localValue3, number
  localValue1 = "Manhunt"
  localValue2 = CMG
  localValue2 = localValue2.registerMinigameCleanupHandler
  localValue3 = localValue1
  number = workingValue11
  localValue2(localValue3, number)
  localValue2 = CMG
  localValue2 = localValue2.createThreadOnTick
  localValue3 = workingValue10
  number = "Manhunt"
  -- Beginner: Run a helper every game frame while this script is active.
  localValue2(localValue3, number)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(workingValue12)
