--[[
    LEVEL 1 BEGINNER GUIDE — Passthebomb
    =========================================

    File: cmg/prod/client/events/cl_passthebomb.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Passthebomb feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 32
      * Background threads: 0
      * Always-running loops: 9
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
local cmgOperation, dataCollection, cmgOperation2, workingValue10, workingValue11, workingValue13, workingValue15, workingValue17, workingValue19, workingValue20, workingValue, eventHandler, text, workingValue2, workingValue3, workingValue4, workingValue5, workingValue6, eventHandler2, text2, workingValue7
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection = "cfg/events/cfg_passthebomb"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection)
dataCollection = {}
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createTimerBars
-- Beginner: result below is timerBars.
cmgOperation2 = cmgOperation2()

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, localValue3, stateFlag11
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 23
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 75
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 24
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 25
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 37
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 12
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 13
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 14
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 15
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 16
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 17
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 53
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 54
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 99
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 100
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 261
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 262
  stateFlag11 = true
  localValue1(localValue2, localValue3, stateFlag11)
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1, localValue2) ===
function workingValue11(localValue1, localValue2)
  local localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3, mathHelper
  localValue3 = localValue1.updated
  localValue3 = localValue2 - localValue3
  stateFlag11 = 5000
  if localValue3 > stateFlag11 then
    localValue1.updated = localValue2
    localValue3 = UseParticleFxAsset
    stateFlag11 = localValue1.asset
    localValue3(stateFlag11)
    localValue3 = StartParticleFxNonLoopedAtCoord
    stateFlag11 = localValue1.name
    stateFlag12 = localValue1.pos
    stateFlag12 = stateFlag12.x
    number12 = localValue1.pos
    number12 = number12.y
    number13 = localValue1.pos
    number13 = number13.z
    number14 = 0.0
    stateFlag13 = 0.0
    number15 = 0.0
    number = 1.0
    stateFlag2 = false
    stateFlag3 = false
    mathHelper = false
    localValue3(stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3, mathHelper)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1, localValue2) ===
function workingValue13(localValue1, localValue2)
  local localValue3, stateFlag11
  localValue3 = localValue1.updated
  localValue3 = localValue2 - localValue3
  stateFlag11 = 5000
  if localValue3 > stateFlag11 then
    localValue1.updated = localValue2
    localValue3 = Citizen
    localValue3 = localValue3.CreateThread

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: none) ===
    function stateFlag11()
      local localValue12, waitCall, number11, nameValue, workingValue12, workingValue14, workingValue16, workingValue18, stateFlag14, number16, stateFlag
      localValue12 = GetSoundId
      -- Beginner: result below is soundHandle.
      localValue12 = localValue12()
      waitCall = PlaySoundFromCoord
      number11 = localValue12
      nameValue = localValue1.name
      workingValue12 = localValue1.pos
      workingValue12 = workingValue12.x
      workingValue14 = localValue1.pos
      workingValue14 = workingValue14.y
      workingValue16 = localValue1.pos
      workingValue16 = workingValue16.z
      workingValue18 = localValue1.soundset
      stateFlag14 = false
      number16 = 0
      stateFlag = false
      waitCall(number11, nameValue, workingValue12, workingValue14, workingValue16, workingValue18, stateFlag14, number16, stateFlag)
      waitCall = Citizen
      waitCall = waitCall.Wait
      number11 = 5000
      waitCall(number11)
      waitCall = StopSound
      number11 = localValue12
      waitCall(number11)
      waitCall = ReleaseSoundId
      number11 = localValue12
      waitCall(number11)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue3(stateFlag11)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = GetEntityCoords
  stateFlag11 = localValue1
  stateFlag12 = true
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(stateFlag11, stateFlag12)
  stateFlag11 = dataCollection.particles
  if stateFlag11 then
    stateFlag11 = ipairs
    stateFlag12 = dataCollection.particles
    stateFlag11, stateFlag12, number12, number13 = stateFlag11(stateFlag12)
    for number14, stateFlag13 in stateFlag11, stateFlag12, number12, number13 do
      number15 = stateFlag13.pos
      number15 = number15 - localValue3
      number15 = #number15
      number = stateFlag13.range
      if number15 < number then
        number15 = workingValue11
        number = stateFlag13
        stateFlag2 = localValue2
        number15(number, stateFlag2)
      end
    end
  end
  stateFlag11 = dataCollection.sounds
  if stateFlag11 then
    stateFlag11 = ipairs
    stateFlag12 = dataCollection.sounds
    stateFlag11, stateFlag12, number12, number13 = stateFlag11(stateFlag12)
    for number14, stateFlag13 in stateFlag11, stateFlag12, number12, number13 do
      number15 = stateFlag13.pos
      number15 = number15 - localValue3
      number15 = #number15
      number = stateFlag13.range
      if number15 < number then
        number15 = workingValue13
        number = stateFlag13
        stateFlag2 = localValue2
        number15(number, stateFlag2)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1, localValue2) ===
function workingValue17(localValue1, localValue2)
  local localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3, mathHelper, stateFlag4
  if localValue1 then
    localValue3 = Entity
    stateFlag11 = localValue2
    localValue3 = localValue3(stateFlag11)
    localValue3 = localValue3.state
    localValue3 = localValue3.particle
    if not localValue3 then
      localValue3 = UseParticleFxAsset
      stateFlag11 = "scr_ar_planes"
      localValue3(stateFlag11)
      localValue3 = StartParticleFxLoopedOnEntity
      stateFlag11 = "scr_ar_trail_smoke"
      stateFlag12 = localValue2
      number12 = 0.0
      number13 = -1.0
      number14 = 0.0
      stateFlag13 = 0.0
      number15 = 0.0
      number = 0.0
      stateFlag2 = 1.0
      stateFlag3 = false
      mathHelper = false
      stateFlag4 = false
      localValue3 = localValue3(stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3, mathHelper, stateFlag4)
      stateFlag11 = SetParticleFxLoopedScale
      stateFlag12 = localValue3
      number12 = 0.5
      stateFlag11(stateFlag12, number12)
      stateFlag11 = SetParticleFxLoopedFarClipDist
      stateFlag12 = localValue3
      number12 = 1000.0
      stateFlag11(stateFlag12, number12)
      stateFlag11 = SetParticleFxLoopedColour
      stateFlag12 = localValue3
      number12 = 1.0
      number13 = 0.0
      number14 = 0.0
      stateFlag13 = false
      stateFlag11(stateFlag12, number12, number13, number14, stateFlag13)
      stateFlag11 = Entity
      stateFlag12 = localValue2
      stateFlag11 = stateFlag11(stateFlag12)
      stateFlag11 = stateFlag11.state
      stateFlag11.particle = localValue3
    end
  else
    localValue3 = Entity
    stateFlag11 = localValue2
    localValue3 = localValue3(stateFlag11)
    localValue3 = localValue3.state
    localValue3 = localValue3.particle
    if localValue3 then
      stateFlag11 = StopParticleFxLooped
      stateFlag12 = localValue3
      number12 = false
      stateFlag11(stateFlag12, number12)
      stateFlag11 = Entity
      stateFlag12 = localValue2
      stateFlag11 = stateFlag11(stateFlag12)
      stateFlag11 = stateFlag11.state
      stateFlag11.particle = nil
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue1) ===
function workingValue19(localValue1)
  local localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3, mathHelper, stateFlag4, number2, number3, number4, number5, stateFlag5, stateFlag6, number6, number7, number8, number9, stateFlag7, stateFlag8, number10, stateFlag9, workingValue8, workingValue9, stateFlag10
  localValue2 = dataCollection.boxes
  if not localValue2 then
    return
  end
  localValue2 = ipairs
  localValue3 = dataCollection.boxes
  localValue2, localValue3, stateFlag11, stateFlag12 = localValue2(localValue3)
  for number12, number13 in localValue2, localValue3, stateFlag11, stateFlag12 do
    number14 = number13.visible
    if number14 then
      number14 = DrawMarker
      stateFlag13 = 32
      number15 = number13.pos
      number15 = number15.x
      number = number13.pos
      number = number.y
      stateFlag2 = number13.pos
      stateFlag2 = stateFlag2.z
      stateFlag2 = stateFlag2 + 2.0
      stateFlag3 = 0.0
      mathHelper = 0.0
      stateFlag4 = 0.0
      number2 = 0.0
      number3 = 0.0
      number4 = 0.0
      number5 = 5.0
      stateFlag5 = 5.0
      stateFlag6 = 5.0
      number6 = 0
      number7 = 255
      number8 = 0
      number9 = 255
      stateFlag7 = true
      stateFlag8 = true
      number10 = 2
      stateFlag9 = false
      workingValue8 = nil
      workingValue9 = nil
      stateFlag10 = false
      number14(stateFlag13, number15, number, stateFlag2, stateFlag3, mathHelper, stateFlag4, number2, number3, number4, number5, stateFlag5, stateFlag6, number6, number7, number8, number9, stateFlag7, stateFlag8, number10, stateFlag9, workingValue8, workingValue9, stateFlag10)
      number14 = number13.pos
      number14 = number14 - localValue1
      number14 = #number14
      if number14 < 5.0 then
        number14 = dataCollection.hasBoost
        if not number14 then
          number14 = TriggerServerEvent
          stateFlag13 = "a300517b73"
          number15 = number12
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a300517b73".
          number14(stateFlag13, number15)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1) ===
function workingValue20(localValue1)
  local localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2
  localValue2 = cmgOperation.locations
  localValue2 = localValue2[localValue1]
  dataCollection.colour = 1
  localValue3 = localValue2.vehicles
  dataCollection.vehicles = localValue3
  localValue3 = localValue2.bounds
  dataCollection.bounds = localValue3
  dataCollection.confirmedCharacter = false
  localValue3 = localValue2.particles
  if localValue3 then
    localValue3 = json
    localValue3 = localValue3.decode
    stateFlag11 = json
    stateFlag11 = stateFlag11.encode
    stateFlag12 = localValue2.particles
    stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2 = stateFlag11(stateFlag12)
    localValue3 = localValue3(stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2)
    dataCollection.particles = localValue3
    localValue3 = ipairs
    stateFlag11 = dataCollection.particles
    localValue3, stateFlag11, stateFlag12, number12 = localValue3(stateFlag11)
    for number13, number14 in localValue3, stateFlag11, stateFlag12, number12 do
      stateFlag13 = vector3
      number15 = number14.pos
      number15 = number15.x
      number = number14.pos
      number = number.y
      stateFlag2 = number14.pos
      stateFlag2 = stateFlag2.z
      stateFlag13 = stateFlag13(number15, number, stateFlag2)
      number14.pos = stateFlag13
      number14.updated = 0
    end
  end
  localValue3 = localValue2.sounds
  if localValue3 then
    localValue3 = json
    localValue3 = localValue3.decode
    stateFlag11 = json
    stateFlag11 = stateFlag11.encode
    stateFlag12 = localValue2.sounds
    stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2 = stateFlag11(stateFlag12)
    localValue3 = localValue3(stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2)
    dataCollection.sounds = localValue3
    localValue3 = ipairs
    stateFlag11 = dataCollection.sounds
    localValue3, stateFlag11, stateFlag12, number12 = localValue3(stateFlag11)
    for number13, number14 in localValue3, stateFlag11, stateFlag12, number12 do
      stateFlag13 = vector3
      number15 = number14.pos
      number15 = number15.x
      number = number14.pos
      number = number.y
      stateFlag2 = number14.pos
      stateFlag2 = stateFlag2.z
      stateFlag13 = stateFlag13(number15, number, stateFlag2)
      number14.pos = stateFlag13
      number14.updated = 0
    end
  end
  localValue3 = localValue2.boxes
  if localValue3 then
    localValue3 = json
    localValue3 = localValue3.decode
    stateFlag11 = json
    stateFlag11 = stateFlag11.encode
    stateFlag12 = localValue2.boxes
    stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2 = stateFlag11(stateFlag12)
    localValue3 = localValue3(stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2)
    dataCollection.boxes = localValue3
    localValue3 = ipairs
    stateFlag11 = dataCollection.boxes
    localValue3, stateFlag11, stateFlag12, number12 = localValue3(stateFlag11)
    for number13, number14 in localValue3, stateFlag11, stateFlag12, number12 do
      stateFlag13 = vector3
      number15 = number14.pos
      number15 = number15.x
      number = number14.pos
      number = number.y
      stateFlag2 = number14.pos
      stateFlag2 = stateFlag2.z
      stateFlag13 = stateFlag13(number15, number, stateFlag2)
      number14.pos = stateFlag13
      number14.visible = true
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2
  localValue1 = SetPedIntoVehicle
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = dataCollection.vehicle
  stateFlag11 = -1
  localValue1(localValue2, localValue3, stateFlag11)
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue2 = dataCollection
  while true do
    localValue3 = NetworkHasControlOfEntity
    stateFlag11 = dataCollection.vehicle
    localValue3 = localValue3(stateFlag11)
    if localValue3 then
      break
    end
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    localValue3 = localValue3 - localValue1
    stateFlag11 = 2000
    if not (localValue3 < stateFlag11) then
      break
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    stateFlag11 = 0
    localValue3(stateFlag11)
    localValue3 = dataCollection
    if localValue2 ~= localValue3 then
      return
    end
  end
  localValue3 = dataCollection.position
  if nil == localValue3 then
    localValue3 = print
    stateFlag11 = "[Pass The Bomb] Deleting vehicle on spawn, no position was set."
    localValue3(stateFlag11)
    localValue3 = DeleteEntity
    stateFlag11 = dataCollection.vehicle
    -- Beginner: Delete a GTA entity.
    localValue3(stateFlag11)
    return
  end
  localValue3 = SetEntityCoordsNoOffset
  stateFlag11 = dataCollection.vehicle
  stateFlag12 = dataCollection.position
  stateFlag12 = stateFlag12.x
  number12 = dataCollection.position
  number12 = number12.y
  number13 = dataCollection.position
  number13 = number13.z
  number14 = true
  stateFlag13 = false
  number15 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue3(stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15)
  localValue3 = SetVehicleOnGroundProperly
  stateFlag11 = dataCollection.vehicle
  localValue3(stateFlag11)
  localValue3 = FreezeEntityPosition
  stateFlag11 = dataCollection.vehicle
  stateFlag12 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(stateFlag11, stateFlag12)
  localValue3 = SetVehRadioStation
  stateFlag11 = dataCollection.vehicle
  stateFlag12 = "OFF"
  localValue3(stateFlag11, stateFlag12)
  localValue3 = SetVehicleRadioEnabled
  stateFlag11 = dataCollection.vehicle
  stateFlag12 = false
  localValue3(stateFlag11, stateFlag12)
  localValue3 = SetEntityProofs
  stateFlag11 = dataCollection.vehicle
  stateFlag12 = false
  number12 = false
  number13 = false
  number14 = false
  stateFlag13 = false
  number15 = false
  number = false
  stateFlag2 = false
  localValue3(stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2)
  localValue3 = Citizen
  localValue3 = localValue3.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: none) ===
  function stateFlag11()
    local localValue12, waitCall, number11, nameValue, workingValue12, workingValue14
    localValue12 = -1
    waitCall = -1
    while true do
      number11 = dataCollection.colour
      if localValue12 == number11 then
        number11 = dataCollection.colour
        if waitCall == number11 then
          break
        end
      end
      number11 = SetVehicleColours
      nameValue = dataCollection.vehicle
      workingValue12 = dataCollection.colour
      workingValue14 = dataCollection.colour
      number11(nameValue, workingValue12, workingValue14)
      number11 = GetVehicleColours
      nameValue = dataCollection.vehicle
      number11, nameValue = number11(nameValue)
      waitCall = nameValue
      localValue12 = number11
      number11 = Citizen
      number11 = number11.Wait
      nameValue = 0
      number11(nameValue)
    end
  end
  localValue3(stateFlag11)
end
eventHandler = RegisterNetEvent
text = "e3df374c4b"
-- Beginner: this function handles network event "e3df374c4b".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, stateFlag11, stateFlag12
  localValue2 = DoesEntityExist
  localValue3 = dataCollection.vehicle
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = DeleteEntity
    localValue3 = dataCollection.vehicle
    -- Beginner: Delete a GTA entity.
    localValue2(localValue3)
  end
  localValue2 = dataCollection
  while true do
    localValue3 = DoesEntityExist
    stateFlag11 = dataCollection.vehicle
    localValue3 = localValue3(stateFlag11)
    if localValue3 then
      break
    end
    localValue3 = NetworkDoesEntityExistWithNetworkId
    stateFlag11 = localValue1
    localValue3 = localValue3(stateFlag11)
    if localValue3 then
      localValue3 = NetworkGetEntityFromNetworkId
      stateFlag11 = localValue1
      localValue3 = localValue3(stateFlag11)
      dataCollection.vehicle = localValue3
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    stateFlag11 = 0
    localValue3(stateFlag11)
    localValue3 = dataCollection
    if localValue2 ~= localValue3 then
      return
    end
  end
  while true do
    localValue3 = NetworkHasControlOfEntity
    stateFlag11 = dataCollection.vehicle
    localValue3 = localValue3(stateFlag11)
    if localValue3 then
      localValue3 = GetPedInVehicleSeat
      stateFlag11 = dataCollection.vehicle
      stateFlag12 = -1
      localValue3 = localValue3(stateFlag11, stateFlag12)
      stateFlag11 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      stateFlag11 = stateFlag11()
      if localValue3 == stateFlag11 then
        break
      end
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    stateFlag11 = 0
    localValue3(stateFlag11)
    localValue3 = dataCollection
    if localValue2 ~= localValue3 then
      return
    end
  end
  localValue3 = workingValue
  localValue3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e3df374c4b".
eventHandler(text, workingValue2)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2
  localValue1 = {}
  localValue2 = ipairs
  localValue3 = CMG
  localValue3 = localValue3.getActiveEventPlayers
  localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2 = localValue3()
  localValue2, localValue3, stateFlag11, stateFlag12 = localValue2(localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2)
  for number12, number13 in localValue2, localValue3, stateFlag11, stateFlag12 do
    number14 = number13.hasBomb
    if number14 then
      number14 = GetPlayerFromServerId
      stateFlag13 = number13.source
      -- Beginner: result below is playerIndex.
      number14 = number14(stateFlag13)
      if -1 ~= number14 then
        stateFlag13 = table
        stateFlag13 = stateFlag13.insert
        number15 = localValue1
        number = CMG
        number = number.getPlayerName
        stateFlag2 = number14
        number, stateFlag2 = number(stateFlag2)
        stateFlag13(number15, number, stateFlag2)
      end
    end
  end
  localValue2 = #localValue1
  if 2 == localValue2 then
    localValue2 = string
    localValue2 = localValue2.format
    localValue3 = "~y~Escape~w~ the ~r~bombers~w~ %s and %s"
    stateFlag11 = localValue1[1]
    stateFlag12 = localValue1[2]
    return localValue2(localValue3, stateFlag11, stateFlag12)
  else
    localValue2 = #localValue1
    if 1 == localValue2 then
      localValue2 = string
      localValue2 = localValue2.format
      localValue3 = "~y~Escape~w~ %s the ~r~bomber~w~"
      stateFlag11 = localValue1[1]
      return localValue2(localValue3, stateFlag11)
    end
  end
  localValue2 = "~y~Escape~w~ the ~r~bomber~w~"
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, stateFlag11, stateFlag12, number12, number13
  localValue1 = DoesEntityExist
  localValue2 = dataCollection.vehicle
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    return
  end
  localValue1 = {}
  localValue2 = GetVehicleHandlingFloat
  localValue3 = dataCollection.vehicle
  stateFlag11 = "CHandlingData"
  stateFlag12 = "fDownforceModifier"
  localValue2 = localValue2(localValue3, stateFlag11, stateFlag12)
  localValue1.downforce = localValue2
  localValue2 = GetVehicleHandlingFloat
  localValue3 = dataCollection.vehicle
  stateFlag11 = "CHandlingData"
  stateFlag12 = "fDriveInertia"
  localValue2 = localValue2(localValue3, stateFlag11, stateFlag12)
  localValue1.driveInertia = localValue2
  localValue2 = GetVehicleHandlingFloat
  localValue3 = dataCollection.vehicle
  stateFlag11 = "CHandlingData"
  stateFlag12 = "fTractionCurveMin"
  localValue2 = localValue2(localValue3, stateFlag11, stateFlag12)
  localValue1.curveMin = localValue2
  localValue2 = GetVehicleHandlingFloat
  localValue3 = dataCollection.vehicle
  stateFlag11 = "CHandlingData"
  stateFlag12 = "fTractionCurveMax"
  localValue2 = localValue2(localValue3, stateFlag11, stateFlag12)
  localValue1.curveMax = localValue2
  localValue2 = GetVehicleHandlingFloat
  localValue3 = dataCollection.vehicle
  stateFlag11 = "CHandlingData"
  stateFlag12 = "fAntiRollBarForce"
  localValue2 = localValue2(localValue3, stateFlag11, stateFlag12)
  localValue1.antiRollBarForce = localValue2
  localValue2 = GetVehicleHandlingFloat
  localValue3 = dataCollection.vehicle
  stateFlag11 = "CHandlingData"
  stateFlag12 = "fAntiRollBarBiasFront"
  localValue2 = localValue2(localValue3, stateFlag11, stateFlag12)
  localValue1.antiRollBarBiasFront = localValue2
  localValue2 = GetVehicleHandlingFloat
  localValue3 = dataCollection.vehicle
  stateFlag11 = "CHandlingData"
  stateFlag12 = "fRollCentreHeightFront"
  localValue2 = localValue2(localValue3, stateFlag11, stateFlag12)
  localValue1.rollCentreHeightFront = localValue2
  localValue2 = GetVehicleHandlingFloat
  localValue3 = dataCollection.vehicle
  stateFlag11 = "CHandlingData"
  stateFlag12 = "fRollCentreHeightRear"
  localValue2 = localValue2(localValue3, stateFlag11, stateFlag12)
  localValue1.rollCentreHeightRear = localValue2
  dataCollection.boostHandling = localValue1
  localValue1 = GetEntityModel
  localValue2 = dataCollection.vehicle
  -- Beginner: result below is modelHash.
  localValue1 = localValue1(localValue2)
  localValue2 = cmgOperation.handlings
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = SetVehicleHandlingFloat
    stateFlag11 = dataCollection.vehicle
    stateFlag12 = "CHandlingData"
    number12 = "fDownforceModifier"
    number13 = localValue2.fDownforceModifier
    localValue3(stateFlag11, stateFlag12, number12, number13)
    localValue3 = SetVehicleHandlingFloat
    stateFlag11 = dataCollection.vehicle
    stateFlag12 = "CHandlingData"
    number12 = "fDriveInertia"
    number13 = dataCollection.boostHandling
    number13 = number13.driveInertia
    number13 = number13 * 1.5
    localValue3(stateFlag11, stateFlag12, number12, number13)
    localValue3 = SetVehicleHandlingFloat
    stateFlag11 = dataCollection.vehicle
    stateFlag12 = "CHandlingData"
    number12 = "fTractionCurveMin"
    number13 = localValue2.fTractionCurveMin
    localValue3(stateFlag11, stateFlag12, number12, number13)
    localValue3 = SetVehicleHandlingFloat
    stateFlag11 = dataCollection.vehicle
    stateFlag12 = "CHandlingData"
    number12 = "fTractionCurveMax"
    number13 = localValue2.fTractionCurveMax
    localValue3(stateFlag11, stateFlag12, number12, number13)
    localValue3 = SetVehicleHandlingFloat
    stateFlag11 = dataCollection.vehicle
    stateFlag12 = "CHandlingData"
    number12 = "fAntiRollBarForce"
    number13 = localValue2.fAntiRollBarForce
    localValue3(stateFlag11, stateFlag12, number12, number13)
    localValue3 = SetVehicleHandlingFloat
    stateFlag11 = dataCollection.vehicle
    stateFlag12 = "CHandlingData"
    number12 = "fAntiRollBarBiasFront"
    number13 = localValue2.fAntiRollBarBiasFront
    localValue3(stateFlag11, stateFlag12, number12, number13)
    localValue3 = SetVehicleHandlingFloat
    stateFlag11 = dataCollection.vehicle
    stateFlag12 = "CHandlingData"
    number12 = "fRollCentreHeightFront"
    number13 = localValue2.fRollCentreHeightFront
    localValue3(stateFlag11, stateFlag12, number12, number13)
    localValue3 = SetVehicleHandlingFloat
    stateFlag11 = dataCollection.vehicle
    stateFlag12 = "CHandlingData"
    number12 = "fRollCentreHeightRear"
    number13 = localValue2.fRollCentreHeightRear
    localValue3(stateFlag11, stateFlag12, number12, number13)
  else
    localValue3 = SetVehicleHandlingFloat
    stateFlag11 = dataCollection.vehicle
    stateFlag12 = "CHandlingData"
    number12 = "fDriveInertia"
    number13 = dataCollection.boostHandling
    number13 = number13.driveInertia
    number13 = number13 * 1.5
    localValue3(stateFlag11, stateFlag12, number12, number13)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2, localValue3, stateFlag11, stateFlag12
  localValue1 = SetVehicleHandlingFloat
  localValue2 = dataCollection.vehicle
  localValue3 = "CHandlingData"
  stateFlag11 = "fDownforceModifier"
  stateFlag12 = dataCollection.boostHandling
  stateFlag12 = stateFlag12.downforce
  localValue1(localValue2, localValue3, stateFlag11, stateFlag12)
  localValue1 = SetVehicleHandlingFloat
  localValue2 = dataCollection.vehicle
  localValue3 = "CHandlingData"
  stateFlag11 = "fDriveInertia"
  stateFlag12 = dataCollection.boostHandling
  stateFlag12 = stateFlag12.driveInertia
  localValue1(localValue2, localValue3, stateFlag11, stateFlag12)
  localValue1 = SetVehicleHandlingFloat
  localValue2 = dataCollection.vehicle
  localValue3 = "CHandlingData"
  stateFlag11 = "fTractionCurveMin"
  stateFlag12 = dataCollection.boostHandling
  stateFlag12 = stateFlag12.curveMin
  localValue1(localValue2, localValue3, stateFlag11, stateFlag12)
  localValue1 = SetVehicleHandlingFloat
  localValue2 = dataCollection.vehicle
  localValue3 = "CHandlingData"
  stateFlag11 = "fTractionCurveMax"
  stateFlag12 = dataCollection.boostHandling
  stateFlag12 = stateFlag12.curveMax
  localValue1(localValue2, localValue3, stateFlag11, stateFlag12)
  localValue1 = SetVehicleHandlingFloat
  localValue2 = dataCollection.vehicle
  localValue3 = "CHandlingData"
  stateFlag11 = "fAntiRollBarForce"
  stateFlag12 = dataCollection.boostHandling
  stateFlag12 = stateFlag12.antiRollBarForce
  localValue1(localValue2, localValue3, stateFlag11, stateFlag12)
  localValue1 = SetVehicleHandlingFloat
  localValue2 = dataCollection.vehicle
  localValue3 = "CHandlingData"
  stateFlag11 = "fAntiRollBarBiasFront"
  stateFlag12 = dataCollection.boostHandling
  stateFlag12 = stateFlag12.antiRollBarBiasFront
  localValue1(localValue2, localValue3, stateFlag11, stateFlag12)
  localValue1 = SetVehicleHandlingFloat
  localValue2 = dataCollection.vehicle
  localValue3 = "CHandlingData"
  stateFlag11 = "fRollCentreHeightFront"
  stateFlag12 = dataCollection.boostHandling
  stateFlag12 = stateFlag12.rollCentreHeightFront
  localValue1(localValue2, localValue3, stateFlag11, stateFlag12)
  localValue1 = SetVehicleHandlingFloat
  localValue2 = dataCollection.vehicle
  localValue3 = "CHandlingData"
  stateFlag11 = "fRollCentreHeightRear"
  stateFlag12 = dataCollection.boostHandling
  stateFlag12 = stateFlag12.rollCentreHeightRear
  localValue1(localValue2, localValue3, stateFlag11, stateFlag12)
  dataCollection.boostHandling = nil
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2) ===
function workingValue3(localValue1, localValue2)
  local localValue3, stateFlag11, stateFlag12, number12
  localValue3 = HasEntityBeenDamagedByEntity
  stateFlag11 = localValue1
  stateFlag12 = localValue2
  number12 = true
  localValue3 = localValue3(stateFlag11, stateFlag12, number12)
  if not localValue3 then
    localValue3 = HasEntityBeenDamagedByEntity
    stateFlag11 = localValue2
    stateFlag12 = localValue1
    number12 = true
    localValue3 = localValue3(stateFlag11, stateFlag12, number12)
    if not localValue3 then
      localValue3 = IsEntityTouchingEntity
      stateFlag11 = localValue1
      stateFlag12 = localValue2
      localValue3 = localValue3(stateFlag11, stateFlag12)
      if not localValue3 then
        localValue3 = IsEntityTouchingEntity
        stateFlag11 = localValue2
        stateFlag12 = localValue1
        localValue3 = localValue3(stateFlag11, stateFlag12)
      end
    end
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2, localValue3) ===
function workingValue4(localValue1, localValue2, localValue3)
  local stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number
  stateFlag11 = GetPlayerFromServerId
  stateFlag12 = localValue3.source
  -- Beginner: result below is playerIndex.
  stateFlag11 = stateFlag11(stateFlag12)
  if -1 == stateFlag11 then
    return
  end
  stateFlag12 = GetPlayerPed
  number12 = stateFlag11
  -- Beginner: result below is playerPed.
  stateFlag12 = stateFlag12(number12)
  number12 = HasEntityClearLosToEntity
  number13 = localValue1
  number14 = stateFlag12
  stateFlag13 = 17
  number12 = number12(number13, number14, stateFlag13)
  number13 = SetMpGamerTagVisibility
  number14 = localValue3.tag
  stateFlag13 = 0
  number15 = number12
  number13(number14, stateFlag13, number15)
  number13 = SetMpGamerTagVisibility
  number14 = localValue3.tag
  stateFlag13 = 29
  number15 = localValue3.hasBomb
  if number15 then
    number15 = number12
  end
  number13(number14, stateFlag13, number15)
  number13 = localValue3.blip
  if number13 then
    number13 = localValue3.active
    if number13 then
      number13 = GetBlipColour
      number14 = localValue3.blip
      number13 = number13(number14)
      number14 = SetBlipSprite
      stateFlag13 = localValue3.blip
      number15 = localValue3.hasBomb
      if number15 then
        number15 = 486
        if number15 then
          goto continueAtStep46
        end
      end
      number15 = 1
      ::continueAtStep46::
      number14(stateFlag13, number15)
      number14 = SetBlipScale
      stateFlag13 = localValue3.blip
      number15 = localValue3.hasBomb
      if number15 then
        number15 = 1.5
        if number15 then
          goto continueAtStep56
        end
      end
      number15 = 1.0
      ::continueAtStep56::
      number14(stateFlag13, number15)
      number14 = BeginTextCommandSetBlipName
      stateFlag13 = "STRING"
      number14(stateFlag13)
      number14 = AddTextComponentSubstringPlayerName
      stateFlag13 = CMG
      stateFlag13 = stateFlag13.getPlayerName
      number15 = stateFlag11
      stateFlag13, number15, number = stateFlag13(number15)
      number14(stateFlag13, number15, number)
      number14 = EndTextCommandSetBlipName
      stateFlag13 = localValue3.blip
      number14(stateFlag13)
      number14 = SetBlipColour
      stateFlag13 = localValue3.blip
      number15 = number13
      number14(stateFlag13, number15)
    end
  end
  number13 = GetVehiclePedIsUsing
  number14 = stateFlag12
  number13 = number13(number14)
  if 0 == number13 then
    return
  end
  number14 = workingValue17
  stateFlag13 = localValue3.hasBomb
  number15 = number13
  number14(stateFlag13, number15)
  number14 = workingValue15
  stateFlag13 = number13
  number14(stateFlag13)
  number14 = CMG
  number14 = number14.getEventLocalPlayer
  number14 = number14()
  if number14 then
    stateFlag13 = number14.hasBomb
    if stateFlag13 then
      stateFlag13 = localValue3.hasBomb
      if not stateFlag13 then
        stateFlag13 = workingValue3
        number15 = number13
        number = localValue2
        stateFlag13 = stateFlag13(number15, number)
        if stateFlag13 then
          stateFlag13 = TriggerServerEvent
          number15 = "a6af2d3e26"
          number = localValue3.source
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a6af2d3e26".
          stateFlag13(number15, number)
          stateFlag13 = ClearEntityLastDamageEntity
          number15 = number13
          stateFlag13(number15)
          stateFlag13 = ClearEntityLastDamageEntity
          number15 = localValue2
          stateFlag13(number15)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, stateFlag11, stateFlag12, number12
  localValue1 = CMG
  localValue1 = localValue1.getActiveEventPlayers
  localValue1 = localValue1()
  localValue1 = #localValue1
  localValue2 = currentEvent
  localValue2 = localValue2.players
  localValue2 = #localValue2
  localValue2 = localValue2 - localValue1
  localValue3 = cmgOperation2.push
  stateFlag11 = "~y~ELIMINATED~w~"
  stateFlag12 = tostring
  number12 = localValue2
  stateFlag12, number12 = stateFlag12(number12)
  localValue3(stateFlag11, stateFlag12, number12)
  localValue3 = cmgOperation2.push
  stateFlag11 = "~y~REMAINING~w~"
  stateFlag12 = tostring
  number12 = localValue1
  stateFlag12, number12 = stateFlag12(number12)
  localValue3(stateFlag11, stateFlag12, number12)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3
  localValue1 = workingValue10
  localValue1()
  localValue1 = cmgOperation2.reset
  localValue1()
  localValue1 = workingValue5
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.getEventLocalPlayer
  localValue1 = localValue1()
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = GetVehiclePedIsUsing
  stateFlag11 = localValue2
  localValue3 = localValue3(stateFlag11)
  if 0 == localValue3 then
    if localValue1 then
      stateFlag11 = localValue1.active
      if stateFlag11 then
        stateFlag11 = SetPedIntoVehicle
        stateFlag12 = localValue2
        number12 = dataCollection.vehicle
        number13 = -1
        stateFlag11(stateFlag12, number12, number13)
      end
    end
  else
    stateFlag11 = dataCollection.vehicle
    if localValue3 ~= stateFlag11 then
      dataCollection.vehicle = localValue3
    end
  end
  stateFlag11 = 0
  stateFlag12 = 5
  number12 = 1
  for number13 = stateFlag11, stateFlag12, number12 do
    number14 = SetTyreTractionLossMultiplier
    stateFlag13 = dataCollection.vehicle
    number15 = number13
    number = 0.0
    number14(stateFlag13, number15, number)
  end
  stateFlag11 = FreezeEntityPosition
  stateFlag12 = dataCollection.vehicle
  number12 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  stateFlag11(stateFlag12, number12)
  stateFlag11 = SetVehicleEngineOn
  stateFlag12 = dataCollection.vehicle
  number12 = true
  number13 = true
  number14 = false
  stateFlag11(stateFlag12, number12, number13, number14)
  stateFlag11 = SetVehicleColours
  stateFlag12 = dataCollection.vehicle
  number12 = dataCollection.colour
  number13 = dataCollection.colour
  stateFlag11(stateFlag12, number12, number13)
  stateFlag11 = ipairs
  stateFlag12 = currentEvent
  stateFlag12 = stateFlag12.players
  stateFlag11, stateFlag12, number12, number13 = stateFlag11(stateFlag12)
  for number14, stateFlag13 in stateFlag11, stateFlag12, number12, number13 do
    number15 = workingValue4
    number = localValue2
    stateFlag2 = localValue3
    stateFlag3 = stateFlag13
    number15(number, stateFlag2, stateFlag3)
  end
  if localValue1 then
    stateFlag11 = localValue1.active
    if stateFlag11 then
      stateFlag11 = DoesEntityExist
      stateFlag12 = dataCollection.vehicle
      stateFlag11 = stateFlag11(stateFlag12)
      if stateFlag11 then
        stateFlag11 = GetEntityHealth
        stateFlag12 = localValue2
        -- Beginner: result below is health.
        stateFlag11 = stateFlag11(stateFlag12)
        if not (stateFlag11 <= 10) then
          stateFlag11 = IsPedDeadOrDying
          stateFlag12 = localValue2
          number12 = false
          stateFlag11 = stateFlag11(stateFlag12, number12)
          if not stateFlag11 then
            stateFlag11 = GetEntityHealth
            stateFlag12 = dataCollection.vehicle
            -- Beginner: result below is health.
            stateFlag11 = stateFlag11(stateFlag12)
            if not (stateFlag11 <= 50) then
              goto continueAtStep100
            end
          end
        end
      end
      stateFlag11 = TriggerServerEvent
      stateFlag12 = "6756dab544"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6756dab544".
      stateFlag11(stateFlag12)
      localValue1.active = false
      ::continueAtStep100::
      stateFlag11 = GetEntityCoords
      stateFlag12 = localValue2
      number12 = true
      -- Beginner: result below is entityCoords.
      stateFlag11 = stateFlag11(stateFlag12, number12)
      stateFlag12 = workingValue19
      number12 = stateFlag11
      stateFlag12(number12)
      stateFlag12 = SetPlayerControl
      number12 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      number12 = number12()
      number13 = true
      number14 = 0
      stateFlag12(number12, number13, number14)
      stateFlag12 = localValue1.hasBomb
      if not stateFlag12 then
        stateFlag12 = dataCollection.hasBoost
        if not stateFlag12 then
          goto continueAtStep125
        end
      end
      stateFlag12 = dataCollection.boostHandling
      if not stateFlag12 then
        stateFlag12 = text
        stateFlag12()
        goto continueAtStep130
        ::continueAtStep125::
        stateFlag12 = dataCollection.boostHandling
        if stateFlag12 then
          stateFlag12 = workingValue2
          stateFlag12()
        end
      end
      ::continueAtStep130::
      stateFlag12 = localValue1.hasBomb
      if stateFlag12 then
        stateFlag12 = drawNativeText
        number12 = "You have the ~r~bomb~w~. Hit another ~y~vehicle~w~ to pass it on"
        -- Beginner: Draw GTA-style text on screen.
        stateFlag12(number12)
      else
        stateFlag12 = drawNativeText
        number12 = eventHandler
        number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3 = number12()
        stateFlag12(number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3)
      end
  end
  else
    stateFlag11 = dataCollection.boostCounter
    if stateFlag11 then
      dataCollection.boostCounter = 0
    end
    stateFlag11 = drawNativeText
    stateFlag12 = eventHandler
    stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3 = stateFlag12()
    -- Beginner: Draw GTA-style text on screen.
    stateFlag11(stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3)
  end
  stateFlag11 = dataCollection.boostCounter
  if stateFlag11 then
    stateFlag11 = dataCollection.boostCounter
    if stateFlag11 > 0 then
      stateFlag11 = cmgOperation2.push
      stateFlag12 = "~b~BOOST TIME~w~"
      number12 = tostring
      number13 = dataCollection.boostCounter
      number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3 = number12(number13)
      stateFlag11(stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3)
    end
  end
  stateFlag11 = dataCollection.explosionCounter
  if stateFlag11 then
    stateFlag11 = dataCollection.explosionCounter
    if stateFlag11 > 0 then
      stateFlag11 = cmgOperation2.push
      stateFlag12 = "~r~EXPLOSION IN~w~"
      number12 = tostring
      number13 = dataCollection.explosionCounter
      number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3 = number12(number13)
      stateFlag11(stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3)
    end
  end
  stateFlag11 = cmgOperation2.draw
  stateFlag11()
end
eventHandler2 = RegisterNetEvent
text2 = "5335fd3810"
-- Beginner: this function handles network event "5335fd3810".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2, localValue3) ===
function workingValue7(localValue1, localValue2, localValue3)
  local stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2
  stateFlag11 = currentEvent
  stateFlag11.drawPlayersTimeBar = false
  stateFlag11 = SetPlayerControl
  stateFlag12 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  stateFlag12 = stateFlag12()
  number12 = false
  number13 = 0
  stateFlag11(stateFlag12, number12, number13)
  stateFlag11 = workingValue20
  stateFlag12 = localValue1
  stateFlag11(stateFlag12)
  stateFlag11 = CMG
  stateFlag11 = stateFlag11.loadClientRockstarMap
  stateFlag12 = localValue2
  number12 = false
  number13 = true
  stateFlag11(stateFlag12, number12, number13)
  stateFlag11 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stateFlag11 = stateFlag11()
  stateFlag12 = SetEntityCoordsNoOffset
  number12 = stateFlag11
  number13 = localValue3.x
  number14 = localValue3.y
  stateFlag13 = localValue3.z
  number15 = true
  number = false
  stateFlag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  stateFlag12(number12, number13, number14, stateFlag13, number15, number, stateFlag2)
  stateFlag12 = SetEntityHeading
  number12 = stateFlag11
  number13 = localValue3.w
  -- Beginner: Change the direction an entity is facing.
  stateFlag12(number12, number13)
  stateFlag12 = RequestScriptAudioBank
  number12 = "DLC_STUNT/STUNT_RACE_01"
  number13 = false
  stateFlag12(number12, number13)
  stateFlag12 = RequestScriptAudioBank
  number12 = "DLC_STUNT/STUNT_RACE_02"
  number13 = false
  stateFlag12(number12, number13)
  stateFlag12 = RequestScriptAudioBank
  number12 = "DLC_STUNT/STUNT_RACE_03"
  number13 = false
  stateFlag12(number12, number13)
  stateFlag12 = CMG
  stateFlag12 = stateFlag12.setEventMusic
  number12 = "AW_LOBBY_MUSIC_START"
  stateFlag12(number12)
  stateFlag12 = dataCollection.particles
  if stateFlag12 then
    stateFlag12 = ipairs
    number12 = dataCollection.particles
    stateFlag12, number12, number13, number14 = stateFlag12(number12)
    for stateFlag13, number15 in stateFlag12, number12, number13, number14 do
      number = CMG
      number = number.loadPtfx
      stateFlag2 = number15.asset
      number(stateFlag2)
    end
  end
  stateFlag12 = CMG
  stateFlag12 = stateFlag12.loadPtfx
  number12 = "scr_ar_planes"
  stateFlag12(number12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5335fd3810".
eventHandler2(text2, workingValue7)
eventHandler2 = RegisterNetEvent
text2 = "fa1dcbdb4d"
-- Beginner: this function handles network event "fa1dcbdb4d".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14
  localValue2 = CMG
  localValue2 = localValue2.stopEventSequence
  localValue2()
  localValue2 = BusyspinnerOff
  localValue2()
  localValue2 = SetPlayerControl
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  stateFlag11 = true
  stateFlag12 = 0
  localValue2(localValue3, stateFlag11, stateFlag12)
  localValue2 = SetEntityVisible
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  stateFlag11 = true
  stateFlag12 = false
  localValue2(localValue3, stateFlag11, stateFlag12)
  localValue2 = CMG
  localValue2 = localValue2.startVehicleSelection
  localValue3 = localValue1.xyz
  stateFlag11 = localValue1.w
  stateFlag12 = dataCollection.vehicles
  number12 = 20

  -- === HELPER FUNCTION (decompiler name: number13; parameters: localValue12) ===
  function number13(localValue12)
    local waitCall, number11, nameValue
    waitCall = TriggerServerEvent
    number11 = "977e3c099a"
    nameValue = localValue12
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "977e3c099a".
    waitCall(number11, nameValue)
  end

  -- === HELPER FUNCTION (decompiler name: number14; parameters: localValue12) ===
  function number14(localValue12)
    local waitCall
    dataCollection.colour = localValue12
  end
  localValue2(localValue3, stateFlag11, stateFlag12, number12, number13, number14)
  dataCollection.state = "SELECT"
  dataCollection.position = localValue1
  while true do
    localValue2 = dataCollection.state
    if "SELECT" ~= localValue2 then
      break
    end
    localValue2 = GetVehiclePedIsUsing
    localValue3 = PlayerPedId
    localValue3, stateFlag11, stateFlag12, number12, number13, number14 = localValue3()
    localValue2 = localValue2(localValue3, stateFlag11, stateFlag12, number12, number13, number14)
    if 0 ~= localValue2 then
      localValue3 = FreezeEntityPosition
      stateFlag11 = localValue2
      stateFlag12 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      localValue3(stateFlag11, stateFlag12)
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    stateFlag11 = 0
    localValue3(stateFlag11)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fa1dcbdb4d".
eventHandler2(text2, workingValue7)
eventHandler2 = RegisterNetEvent
text2 = "26fbaead36"
-- Beginner: this function handles network event "26fbaead36".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15
  dataCollection.state = "BEFORE_START"
  localValue1 = DoesEntityExist
  localValue2 = dataCollection.vehicle
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = DeleteEntity
    localValue2 = dataCollection.vehicle
    -- Beginner: Delete a GTA entity.
    localValue1(localValue2)
  end
  localValue1 = pairs
  localValue2 = GetActivePlayers
  localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15 = localValue2()
  localValue1, localValue2, localValue3, stateFlag11 = localValue1(localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15)
  for stateFlag12, number12 in localValue1, localValue2, localValue3, stateFlag11 do
    number13 = SetEntityVisible
    number14 = GetPlayerPed
    stateFlag13 = number12
    -- Beginner: result below is playerPed.
    number14 = number14(stateFlag13)
    stateFlag13 = true
    number15 = false
    number13(number14, stateFlag13, number15)
  end
  localValue1 = Citizen
  localValue1 = localValue1.CreateThreadNow

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, waitCall, number11, nameValue
    while true do
      localValue12 = dataCollection.state
      if "SELECT" ~= localValue12 then
        localValue12 = dataCollection.state
        if "BEFORE_START" ~= localValue12 then
          break
        end
      end
      localValue12 = workingValue10
      localValue12()
      localValue12 = GetVehiclePedIsUsing
      waitCall = PlayerPedId
      waitCall, number11, nameValue = waitCall()
      localValue12 = localValue12(waitCall, number11, nameValue)
      if 0 ~= localValue12 then
        waitCall = FreezeEntityPosition
        number11 = localValue12
        nameValue = true
        -- Beginner: Freeze or unfreeze an entity in place.
        waitCall(number11, nameValue)
      end
      waitCall = Citizen
      waitCall = waitCall.Wait
      number11 = 0
      waitCall(number11)
    end
  end
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.endVehicleSelection
  localValue1()
  localValue1 = SetFollowPedCamViewMode
  localValue2 = 2
  localValue1(localValue2)
  localValue1 = SetGameplayCamRelativeHeading
  localValue2 = GetEntityHeading
  localValue3 = dataCollection.vehicle
  localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15 = localValue2(localValue3)
  localValue1(localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15)
  localValue1 = CMG
  localValue1 = localValue1.enableMinigamePlayerBlips
  localValue2 = true
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.enableMinigamePlayerTags
  localValue2 = true
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = CMG
  localValue1 = localValue1.setMinigameBounds
  localValue2 = dataCollection.bounds
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.showCountdownTimer
  localValue2 = 3
  localValue1(localValue2)
  localValue1 = dataCollection.state
  if "BEFORE_START" ~= localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.setPlayerCanOpenLeaderboard
  localValue2 = true
  localValue1(localValue2)
  dataCollection.state = "START"
  while true do
    localValue1 = dataCollection.state
    if "START" ~= localValue1 then
      break
    end
    localValue1 = workingValue6
    localValue1()
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "26fbaead36".
eventHandler2(text2, workingValue7)
eventHandler2 = RegisterNetEvent
text2 = "263c039cf3"
-- Beginner: this function handles network event "263c039cf3".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, stateFlag11, stateFlag12, number12
  localValue1 = 0
  dataCollection.explosionCounter = 5
  while true do
    localValue2 = dataCollection.explosionCounter
    if not localValue2 then
      break
    end
    localValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue2 = localValue2()
    localValue2 = localValue2 - localValue1
    localValue3 = 1000
    if localValue2 > localValue3 then
      localValue2 = dataCollection.explosionCounter
      localValue2 = localValue2 - 1
      dataCollection.explosionCounter = localValue2
      localValue2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue2 = localValue2()
      localValue1 = localValue2
      localValue2 = dataCollection.explosionCounter
      if 0 == localValue2 then
        dataCollection.explosionCounter = nil
        return
      else
        localValue2 = PlaySoundFrontend
        localValue3 = -1
        stateFlag11 = "Checkpoint_Buzz"
        stateFlag12 = "DLC_AW_Frontend_Sounds"
        number12 = false
        localValue2(localValue3, stateFlag11, stateFlag12, number12)
      end
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "263c039cf3".
eventHandler2(text2, workingValue7)
eventHandler2 = RegisterNetEvent
text2 = "134e3e09c1"
-- Beginner: this function handles network event "134e3e09c1".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3, mathHelper, stateFlag4, number2, number3, number4, number5, stateFlag5, stateFlag6, number6
  localValue2 = GetPlayerFromServerId
  localValue3 = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  if -1 == localValue2 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.getPlayerColour
  stateFlag11 = localValue1
  localValue3 = localValue3(stateFlag11)
  stateFlag11 = notify
  stateFlag12 = localValue3
  number12 = CMG
  number12 = number12.getPlayerName
  number13 = localValue2
  number12 = number12(number13)
  number13 = " ~w~has been eliminated!"
  stateFlag12 = stateFlag12 .. number12 .. number13
  -- Beginner: Show a notification to the player.
  stateFlag11(stateFlag12)
  stateFlag11 = ShakeGameplayCam
  stateFlag12 = "MEDIUM_EXPLOSION_SHAKE"
  number12 = 1.0
  stateFlag11(stateFlag12, number12)
  stateFlag11 = GetPlayerPed
  stateFlag12 = localValue2
  -- Beginner: result below is playerPed.
  stateFlag11 = stateFlag11(stateFlag12)
  stateFlag12 = SetEntityHealth
  number12 = stateFlag11
  number13 = 0
  stateFlag12(number12, number13)
  stateFlag12 = GetVehiclePedIsUsing
  number12 = stateFlag11
  stateFlag12 = stateFlag12(number12)
  if 0 ~= stateFlag12 then
    number12 = ExplodeVehicle
    number13 = stateFlag12
    number14 = true
    stateFlag13 = false
    number12(number13, number14, stateFlag13)
  end
  number12 = GetEntityCoords
  number13 = stateFlag11
  number14 = true
  -- Beginner: result below is entityCoords.
  number12 = number12(number13, number14)
  number13 = 1
  number14 = 15
  stateFlag13 = 1
  for number15 = number13, number14, stateFlag13 do
    number = number12.x
    stateFlag2 = math
    stateFlag2 = stateFlag2.random
    stateFlag2 = stateFlag2()
    stateFlag2 = stateFlag2 - 0.5
    stateFlag2 = stateFlag2 * 8.0
    number = number + stateFlag2
    stateFlag2 = number12.y
    stateFlag3 = math
    stateFlag3 = stateFlag3.random
    stateFlag3 = stateFlag3()
    stateFlag3 = stateFlag3 - 0.5
    stateFlag3 = stateFlag3 * 8.0
    stateFlag2 = stateFlag2 + stateFlag3
    stateFlag3 = number12.z
    mathHelper = math
    mathHelper = mathHelper.random
    mathHelper = mathHelper()
    mathHelper = mathHelper - 0.5
    mathHelper = mathHelper * 4.0
    stateFlag3 = stateFlag3 + mathHelper
    mathHelper = AddExplosion
    stateFlag4 = number
    number2 = stateFlag2
    number3 = stateFlag3
    number4 = 0
    number5 = 1.0
    stateFlag5 = true
    stateFlag6 = false
    number6 = 5.0
    mathHelper(stateFlag4, number2, number3, number4, number5, stateFlag5, stateFlag6, number6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "134e3e09c1".
eventHandler2(text2, workingValue7)
eventHandler2 = RegisterNetEvent
text2 = "a300517b73"
-- Beginner: this function handles network event "a300517b73".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number
  localValue3 = dataCollection.boxes
  localValue3 = localValue3[localValue1]
  localValue3.visible = false
  stateFlag11 = GetPlayerFromServerId
  stateFlag12 = localValue2
  -- Beginner: result below is playerIndex.
  stateFlag11 = stateFlag11(stateFlag12)
  if -1 == stateFlag11 then
    return
  end
  stateFlag12 = GetPlayerPed
  number12 = stateFlag11
  -- Beginner: result below is playerPed.
  stateFlag12 = stateFlag12(number12)
  if 0 == stateFlag12 then
    return
  end
  number12 = GetVehiclePedIsUsing
  number13 = stateFlag12
  number12 = number12(number13)
  if 0 == number12 then
    return
  end
  number13 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number13 = number13()
  if stateFlag12 == number13 then
    number13 = AnimpostfxPlay
    number14 = "MinigameEndNeutral"
    stateFlag13 = 0
    number15 = false
    number13(number14, stateFlag13, number15)
    number13 = PlaySoundFrontend
    number14 = -1
    stateFlag13 = "Hit_1"
    number15 = "LONG_PLAYER_SWITCH_SOUNDS"
    number = true
    number13(number14, stateFlag13, number15, number)
    number13 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    number13 = number13()
    number14 = number13
    dataCollection.hasBoost = true
    dataCollection.boostCounter = 20
    while true do
      stateFlag13 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      stateFlag13 = stateFlag13()
      stateFlag13 = stateFlag13 - number13
      number15 = 20000
      if not (stateFlag13 < number15) then
        break
      end
      stateFlag13 = dataCollection.state
      if "START" ~= stateFlag13 then
        break
      end
      stateFlag13 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      stateFlag13 = stateFlag13()
      stateFlag13 = stateFlag13 - number14
      number15 = 1000
      if stateFlag13 >= number15 then
        stateFlag13 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        stateFlag13 = stateFlag13()
        number14 = stateFlag13
        stateFlag13 = dataCollection.boostCounter
        stateFlag13 = stateFlag13 - 1
        dataCollection.boostCounter = stateFlag13
      end
      stateFlag13 = Citizen
      stateFlag13 = stateFlag13.Wait
      number15 = 0
      stateFlag13(number15)
    end
    dataCollection.hasBoost = false
    dataCollection.boostCounter = nil
    stateFlag13 = SetVehicleCheatPowerIncrease
    number15 = number12
    number = 1.0
    stateFlag13(number15, number)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a300517b73".
eventHandler2(text2, workingValue7)
eventHandler2 = RegisterNetEvent
text2 = "de2d0af415"
-- Beginner: this function handles network event "de2d0af415".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2
  localValue2 = dataCollection.boxes
  localValue2 = localValue2[localValue1]
  localValue2.visible = true
end
eventHandler2(text2, workingValue7)
eventHandler2 = RegisterNetEvent
text2 = "7d017cf727"
-- Beginner: this function handles network event "7d017cf727".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, stateFlag11, stateFlag12, number12, number13, number14, stateFlag13, number15, number, stateFlag2, stateFlag3, mathHelper
  localValue2 = ipairs
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue2, localValue3, stateFlag11, stateFlag12 = localValue2(localValue3)
  for number12, number13 in localValue2, localValue3, stateFlag11, stateFlag12 do
    number13.hasBomb = false
    number14 = ipairs
    stateFlag13 = localValue1
    number14, stateFlag13, number15, number = number14(stateFlag13)
    for stateFlag2, stateFlag3 in number14, stateFlag13, number15, number do
      mathHelper = number13.source
      if mathHelper == stateFlag3 then
        number13.hasBomb = true
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7d017cf727".
eventHandler2(text2, workingValue7)
eventHandler2 = RegisterNetEvent
text2 = "4322b11758"
-- Beginner: this function handles network event "4322b11758".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, stateFlag11, stateFlag12, number12
  localValue3 = notify
  stateFlag11 = localValue1
  stateFlag12 = localValue2
  number12 = " ~w~has been eliminated"
  stateFlag11 = stateFlag11 .. stateFlag12 .. number12
  -- Beginner: Show a notification to the player.
  localValue3(stateFlag11)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4322b11758".
eventHandler2(text2, workingValue7)
eventHandler2 = Citizen
eventHandler2 = eventHandler2.CreateThread

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, stateFlag11
  localValue1 = "Pass The Bomb"
  localValue2 = CMG
  localValue2 = localValue2.registerMinigameCleanupHandler
  localValue3 = localValue1

  -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: none) ===
  function stateFlag11()
    local localValue12, waitCall, number11, nameValue, workingValue12, workingValue14, workingValue16, workingValue18
    localValue12 = CMG
    localValue12 = localValue12.enableMinigamePlayerBlips
    waitCall = false
    localValue12(waitCall)
    localValue12 = CMG
    localValue12 = localValue12.enableMinigamePlayerTags
    waitCall = false
    number11 = false
    localValue12(waitCall, number11)
    localValue12 = dataCollection.boostHandling
    if localValue12 then
      localValue12 = workingValue2
      localValue12()
    end
    localValue12 = DeleteEntity
    waitCall = dataCollection.vehicle
    -- Beginner: Delete a GTA entity.
    localValue12(waitCall)
    localValue12 = ReleaseNamedScriptAudioBank
    waitCall = "DLC_STUNT/STUNT_RACE_01"
    localValue12(waitCall)
    localValue12 = ReleaseNamedScriptAudioBank
    waitCall = "DLC_STUNT/STUNT_RACE_02"
    localValue12(waitCall)
    localValue12 = ReleaseNamedScriptAudioBank
    waitCall = "DLC_STUNT/STUNT_RACE_03"
    localValue12(waitCall)
    localValue12 = CMG
    localValue12 = localValue12.setPlayerCanOpenLeaderboard
    waitCall = false
    localValue12(waitCall)
    localValue12 = dataCollection.particles
    if localValue12 then
      localValue12 = ipairs
      waitCall = dataCollection.particles
      localValue12, waitCall, number11, nameValue = localValue12(waitCall)
      for workingValue12, workingValue14 in localValue12, waitCall, number11, nameValue do
        workingValue16 = RemoveNamedPtfxAsset
        workingValue18 = workingValue14.asset
        workingValue16(workingValue18)
      end
    end
    localValue12 = RemoveNamedPtfxAsset
    waitCall = "scr_ar_planes"
    localValue12(waitCall)
    localValue12 = CMG
    localValue12 = localValue12.cleanupRockstarMaps
    localValue12()
    localValue12 = TriggerMusicEvent
    waitCall = "BST_STOP"
    localValue12(waitCall)
    localValue12 = BusyspinnerOff
    localValue12()
    localValue12 = SetPlayerControl
    waitCall = PlayerId
    -- Beginner: result below is localPlayerIndex.
    waitCall = waitCall()
    number11 = true
    nameValue = 0
    localValue12(waitCall, number11, nameValue)
    localValue12 = {}
    dataCollection = localValue12
  end
  localValue2(localValue3, stateFlag11)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler2(text2)
