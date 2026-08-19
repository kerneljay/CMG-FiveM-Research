--[[
    LEVEL 1 BEGINNER GUIDE — Bleeding
    ======================================

    File: cmg/prod/client/nhs/cl_bleeding.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: health-service/medical gameplay, specifically the Bleeding feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 21
      * Background threads: 0
      * Always-running loops: 4
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
local number, number7, text3, number13, stateFlag5, stateFlag6, stateFlag7, dataCollection, dataCollection2, dataCollection3, number2, number3, workingValue2, workingValue4, workingValue6, workingValue8, workingValue9, workingValue11, workingValue12, workingValue13, eventHandlerRegistration, text, cmgOperation, text2, workingValue14
number = 0.1
number7 = 10000
text3 = "move_m@injured"
number13 = 110
stateFlag5 = false
stateFlag6 = false
stateFlag7 = false
dataCollection = {}
dataCollection2 = {}
dataCollection.arm = dataCollection2
dataCollection2 = {}
dataCollection.leg = dataCollection2
dataCollection2 = {}
dataCollection.critical = dataCollection2
dataCollection2 = {}
dataCollection3 = {}
number2 = 61163
dataCollection3[1] = number2
dataCollection2.arm = dataCollection3
dataCollection3 = {}
number2 = 58271
number3 = 51826
dataCollection3[1] = number2
dataCollection3[2] = number3
dataCollection2.leg = dataCollection3
dataCollection3 = {}
number2 = 11816
dataCollection3[1] = number2
dataCollection2.critical = dataCollection3
dataCollection3 = {}
number2 = 45509
dataCollection3[number2] = true
number2 = 61163
dataCollection3[number2] = true
number2 = 18905
dataCollection3[number2] = true
number2 = 40269
dataCollection3[number2] = true
number2 = 28252
dataCollection3[number2] = true
number2 = 57005
dataCollection3[number2] = true
number2 = {}
number3 = 58271
number2[number3] = true
number3 = 63931
number2[number3] = true
number3 = 14201
number2[number3] = true
number3 = 51826
number2[number3] = true
number3 = 36864
number2[number3] = true
number3 = 52301
number2[number3] = true

-- === HELPER FUNCTION (decompiler name: number3; parameters: localValue1) ===
function number3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, cmgOperation2, iterator, iterator2, workingValue18, stateFlag8
  localValue2 = ipairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for cmgOperation2, iterator in localValue2, localValue3, localValue4, localValue5 do
    if iterator then
      iterator2 = DoesParticleFxLoopedExist
      workingValue18 = iterator
      iterator2 = iterator2(workingValue18)
      if iterator2 then
        iterator2 = StopParticleFxLooped
        workingValue18 = iterator
        stateFlag8 = false
        iterator2(workingValue18, stateFlag8)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2, localValue3) ===
function workingValue2(localValue1, localValue2, localValue3)
  local localValue4, localValue5, cmgOperation2, iterator, iterator2, workingValue18, stateFlag8, health, workingValue, workingValue3, workingValue5, workingValue7, tableHelper, workingValue10, number4, number5, number6, number9, number10, number11, number12, stateFlag, stateFlag2, stateFlag3, stateFlag4
  if 0 ~= localValue1 then
    localValue4 = DoesEntityExist
    localValue5 = localValue1
    localValue4 = localValue4(localValue5)
    if localValue4 then
      goto continueAtStep9
    end
  end
  return
  ::continueAtStep9::
  localValue4 = "core"
  localValue5 = "blood_stab"
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadPtfx
  iterator = localValue4
  cmgOperation2(iterator)
  cmgOperation2 = dataCollection2
  cmgOperation2 = cmgOperation2[localValue2]
  iterator = localValue3 or iterator
  if not localValue3 then
    iterator = {}
  end
  iterator2 = ipairs
  workingValue18 = cmgOperation2
  iterator2, workingValue18, stateFlag8, health = iterator2(workingValue18)
  for workingValue, workingValue3 in iterator2, workingValue18, stateFlag8, health do
    workingValue5 = UseParticleFxAssetNextCall
    workingValue7 = localValue4
    workingValue5(workingValue7)
    workingValue5 = GetPedBoneIndex
    workingValue7 = localValue1
    tableHelper = workingValue3
    workingValue5 = workingValue5(workingValue7, tableHelper)
    workingValue7 = StartParticleFxLoopedOnPedBone
    tableHelper = localValue5
    workingValue10 = localValue1
    number4 = 0.0
    number5 = 0.0
    number6 = 0.0
    number9 = 0.0
    number10 = 0.0
    number11 = 0.0
    number12 = workingValue5
    stateFlag = 1.0
    stateFlag2 = false
    stateFlag3 = false
    stateFlag4 = false
    workingValue7 = workingValue7(tableHelper, workingValue10, number4, number5, number6, number9, number10, number11, number12, stateFlag, stateFlag2, stateFlag3, stateFlag4)
    if workingValue7 and 0 ~= workingValue7 then
      tableHelper = SetParticleFxLoopedFarClipDist
      workingValue10 = workingValue7
      number4 = 150.0
      tableHelper(workingValue10, number4)
    end
    tableHelper = table
    tableHelper = tableHelper.insert
    workingValue10 = iterator
    number4 = workingValue7
    tableHelper(workingValue10, number4)
  end
  return iterator
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3, localValue4, localValue5, cmgOperation2, iterator, iterator2, workingValue18, stateFlag8, health, workingValue, workingValue3, workingValue5, workingValue7, tableHelper, workingValue10, number4, number5, number6, number9, number10, number11, number12, stateFlag, stateFlag2, stateFlag3
  if 0 ~= localValue1 then
    localValue3 = DoesEntityExist
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if localValue3 then
      goto continueAtStep9
    end
  end
  return
  ::continueAtStep9::
  localValue3 = "core"
  localValue4 = "ent_sht_blood"
  localValue5 = CMG
  localValue5 = localValue5.loadPtfx
  cmgOperation2 = localValue3
  localValue5(cmgOperation2)
  localValue5 = dataCollection2.critical
  cmgOperation2 = localValue2 or cmgOperation2
  if not localValue2 then
    cmgOperation2 = {}
  end
  iterator = ipairs
  iterator2 = localValue5
  iterator, iterator2, workingValue18, stateFlag8 = iterator(iterator2)
  for health, workingValue in iterator, iterator2, workingValue18, stateFlag8 do
    workingValue3 = UseParticleFxAssetNextCall
    workingValue5 = localValue3
    workingValue3(workingValue5)
    workingValue3 = GetPedBoneIndex
    workingValue5 = localValue1
    workingValue7 = workingValue
    workingValue3 = workingValue3(workingValue5, workingValue7)
    workingValue5 = StartParticleFxLoopedOnPedBone
    workingValue7 = localValue4
    tableHelper = localValue1
    workingValue10 = 0.0
    number4 = 0.0
    number5 = 0.0
    number6 = 0.0
    number9 = 0.0
    number10 = 0.0
    number11 = workingValue3
    number12 = 1.0
    stateFlag = false
    stateFlag2 = false
    stateFlag3 = false
    workingValue5 = workingValue5(workingValue7, tableHelper, workingValue10, number4, number5, number6, number9, number10, number11, number12, stateFlag, stateFlag2, stateFlag3)
    if workingValue5 and 0 ~= workingValue5 then
      workingValue7 = SetParticleFxLoopedFarClipDist
      tableHelper = workingValue5
      workingValue10 = 150.0
      workingValue7(tableHelper, workingValue10)
    end
    workingValue7 = table
    workingValue7 = workingValue7.insert
    tableHelper = cmgOperation2
    workingValue10 = workingValue5
    workingValue7(tableHelper, workingValue10)
  end
  return cmgOperation2
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = dataCollection
  localValue3 = {}
  localValue2[localValue1] = localValue3
  localValue2 = workingValue2
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = localValue1
  localValue5 = dataCollection
  localValue5 = localValue5[localValue1]
  localValue2(localValue3, localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3
  localValue1 = {}
  dataCollection.critical = localValue1
  localValue1 = workingValue4
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = dataCollection.critical
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = CMG
  localValue1 = localValue1.loadClipSet
  localValue2 = text3
  localValue1(localValue2)
  localValue1 = SetPedMovementClipset
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = text3
  localValue4 = 1.0
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = RemoveClipSet
  localValue2 = text3
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = stateFlag5
  if not localValue1 then
    return
  end
  localValue1 = false
  stateFlag5 = localValue1
  localValue1 = false
  stateFlag6 = localValue1
  localValue1 = false
  stateFlag7 = localValue1
  localValue1 = number3
  localValue2 = dataCollection.arm
  localValue1(localValue2)
  localValue1 = number3
  localValue2 = dataCollection.leg
  localValue1(localValue2)
  localValue1 = number3
  localValue2 = dataCollection.critical
  localValue1(localValue2)
  localValue1 = {}
  dataCollection.arm = localValue1
  localValue1 = {}
  dataCollection.leg = localValue1
  localValue1 = {}
  dataCollection.critical = localValue1
  localValue1 = ResetPedMovementClipset
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = 1.0
  localValue1(localValue2, localValue3)
  localValue1 = TriggerServerEvent
  localValue2 = "99b642e30b"
  localValue3 = false
  localValue4 = false
  localValue5 = false
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "99b642e30b".
  localValue1(localValue2, localValue3, localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep13
    end
  end
  localValue2 = nil
  localValue3 = nil
  return localValue2, localValue3
  ::continueAtStep13::
  localValue2 = GetPedLastDamageBone
  localValue3 = localValue1
  localValue2, localValue3 = localValue2(localValue3)
  if not localValue2 or not localValue3 then
    localValue4 = nil
    localValue5 = nil
    return localValue4, localValue5
  end
  localValue4 = dataCollection3
  localValue4 = localValue4[localValue3]
  if localValue4 then
    localValue4 = true
    localValue5 = false
    return localValue4, localValue5
  end
  localValue4 = number2
  localValue4 = localValue4[localValue3]
  if localValue4 then
    localValue4 = false
    localValue5 = true
    return localValue4, localValue5
  end
  localValue4 = nil
  localValue5 = nil
  return localValue4, localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1, localValue2) ===
function workingValue13(localValue1, localValue2)
  local localValue3, localValue4, localValue5, cmgOperation2, iterator, iterator2, workingValue18, stateFlag8
  localValue3 = stateFlag5
  if localValue3 then
    return
  end
  localValue3 = true
  stateFlag5 = localValue3
  if nil ~= localValue1 and nil ~= localValue2 then
    stateFlag6 = localValue1
    stateFlag7 = localValue2
  else
    localValue3 = true
    stateFlag6 = localValue3
    localValue3 = false
    stateFlag7 = localValue3
  end
  localValue3 = workingValue9
  localValue3()
  localValue3 = stateFlag6
  if localValue3 then
    localValue3 = workingValue6
    localValue4 = "arm"
    localValue3(localValue4)
  end
  localValue3 = stateFlag7
  if localValue3 then
    localValue3 = workingValue6
    localValue4 = "leg"
    localValue3(localValue4)
  end
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  if 0 ~= localValue3 then
    localValue4 = DoesEntityExist
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = NetworkGetNetworkIdFromEntity
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if localValue4 then
        goto continueAtStep48
      end
    end
  end
  localValue4 = 0
  ::continueAtStep48::
  localValue5 = TriggerServerEvent
  cmgOperation2 = "99b642e30b"
  iterator = true
  iterator2 = stateFlag6
  workingValue18 = stateFlag7
  stateFlag8 = localValue4
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "99b642e30b".
  localValue5(cmgOperation2, iterator, iterator2, workingValue18, stateFlag8)
  localValue5 = notify
  cmgOperation2 = "~r~You are bleeding, seek medical attention as soon as possible!"
  -- Beginner: Show a notification to the player.
  localValue5(cmgOperation2)
end
eventHandlerRegistration = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  while true do
    localValue1 = Wait
    localValue2 = 2000
    localValue1(localValue2)
    localValue1 = stateFlag5
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      localValue2 = GetEntityHealth
      localValue3 = localValue1
      -- Beginner: result below is health.
      localValue2 = localValue2(localValue3)
      if 0 ~= localValue1 then
        localValue3 = IsEntityDead
        localValue4 = localValue1
        localValue3 = localValue3(localValue4)
        if not (localValue3 or localValue2 <= 100) then
          goto continueAtStep25
        end
      end
      localValue3 = workingValue11
      localValue3()
      goto continueAtStep64
      ::continueAtStep25::
      localValue3 = number13
      localValue3 = localValue2 <= localValue3
      localValue4 = stateFlag6
      if localValue4 then
        localValue4 = number3
        localValue5 = dataCollection.arm
        localValue4(localValue5)
        localValue4 = workingValue6
        localValue5 = "arm"
        localValue4(localValue5)
      end
      localValue4 = stateFlag7
      if localValue4 then
        localValue4 = number3
        localValue5 = dataCollection.leg
        localValue4(localValue5)
        localValue4 = workingValue6
        localValue5 = "leg"
        localValue4(localValue5)
      end
      if localValue3 then
        localValue4 = number3
        localValue5 = dataCollection.critical
        localValue4(localValue5)
        localValue4 = workingValue8
        localValue4()
      else
        localValue4 = number3
        localValue5 = dataCollection.critical
        localValue4(localValue5)
        localValue4 = {}
        dataCollection.critical = localValue4
      end
      localValue4 = workingValue9
      localValue4()
    end
    ::continueAtStep64::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration(text)
eventHandlerRegistration = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, localValue4, localValue5, cmgOperation2
  while true do
    localValue1 = Wait
    localValue2 = number7
    localValue1(localValue2)
    localValue1 = stateFlag5
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      if 0 ~= localValue1 then
        localValue2 = IsEntityDead
        localValue3 = localValue1
        localValue2 = localValue2(localValue3)
        if not localValue2 then
          localValue2 = GetEntityHealth
          localValue3 = localValue1
          -- Beginner: result below is health.
          localValue2 = localValue2(localValue3)
          if not (localValue2 <= 100) then
            goto continueAtStep25
          end
        end
      end
      localValue2 = workingValue11
      localValue2()
      goto continueAtStep42
      ::continueAtStep25::
      localValue2 = GetEntityHealth
      localValue3 = localValue1
      -- Beginner: result below is health.
      localValue2 = localValue2(localValue3)
      localValue3 = math
      localValue3 = localValue3.max
      localValue4 = 100
      localValue5 = localValue2 - 1
      localValue3 = localValue3(localValue4, localValue5)
      localValue4 = SetEntityHealth
      localValue5 = localValue1
      cmgOperation2 = localValue3
      localValue4(localValue5, cmgOperation2)
      if localValue3 <= 100 then
        localValue4 = workingValue11
        localValue4()
      end
    end
    ::continueAtStep42::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration(text)
eventHandlerRegistration = AddEventHandler
text = "91ac1508c7"
-- Beginner: this function runs when client event "91ac1508c7" fires.

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2
  localValue1 = stateFlag5
  if localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getClientFaction
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isClientClockedOnOrganisation
    localValue1 = localValue1()
    if not localValue1 then
      goto continueAtStep24
    end
  end
  localValue1 = math
  localValue1 = localValue1.random
  localValue1 = localValue1()
  localValue2 = number
  if localValue1 < localValue2 then
    localValue1 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION: localValue2() ===
    function localValue2()
      local waitCall, number8, workingValue15, workingValue16, workingValue17
      waitCall = Wait
      number8 = 0
      waitCall(number8)
      waitCall = workingValue12
      waitCall, number8 = waitCall()
      workingValue15 = workingValue13
      workingValue16 = waitCall
      workingValue17 = number8
      workingValue15(workingValue16, workingValue17)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue1(localValue2)
  end
  ::continueAtStep24::
end
-- Beginner: Register a client-side event handler. Event/command: "91ac1508c7".
eventHandlerRegistration(text, cmgOperation)
eventHandlerRegistration = {}
text = 15
cmgOperation = RegisterNetEvent
text2 = "b8bd2bf5c8"
-- Beginner: this function handles network event "b8bd2bf5c8".

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function workingValue14(localValue1, localValue2, localValue3, localValue4, localValue5)
  local cmgOperation2, iterator, iterator2, workingValue18, stateFlag8, health, workingValue, workingValue3, workingValue5, workingValue7, tableHelper
  cmgOperation2 = GetPlayerServerId
  iterator = PlayerId
  iterator, iterator2, workingValue18, stateFlag8, health, workingValue, workingValue3, workingValue5, workingValue7, tableHelper = iterator()
  -- Beginner: result below is serverId.
  cmgOperation2 = cmgOperation2(iterator, iterator2, workingValue18, stateFlag8, health, workingValue, workingValue3, workingValue5, workingValue7, tableHelper)
  if localValue1 == cmgOperation2 then
    return
  end
  if localValue2 and localValue5 and 0 ~= localValue5 then
    iterator = {}
    iterator.fromArm = localValue3
    iterator.fromLeg = localValue4
    iterator.pedNetId = localValue5
    iterator2 = {}
    iterator.arm = iterator2
    iterator2 = {}
    iterator.leg = iterator2
    iterator2 = {}
    iterator.critical = iterator2
    iterator.retries = 0
    iterator2 = eventHandlerRegistration
    iterator2[localValue1] = iterator
    iterator2 = NetworkDoesEntityExistWithNetworkId
    workingValue18 = localValue5
    iterator2 = iterator2(workingValue18)
    if iterator2 then
      workingValue18 = NetworkGetEntityFromNetworkId
      stateFlag8 = localValue5
      workingValue18 = workingValue18(stateFlag8)
      stateFlag8 = DoesEntityExist
      health = workingValue18
      stateFlag8 = stateFlag8(health)
      if stateFlag8 then
        stateFlag8 = IsEntityDead
        health = workingValue18
        stateFlag8 = stateFlag8(health)
        stateFlag8 = 0 ~= workingValue18 and stateFlag8
      end
      if stateFlag8 then
        health = GetEntityHealth
        workingValue = workingValue18
        -- Beginner: result below is health.
        health = health(workingValue)
        workingValue = number13
        workingValue = health <= workingValue
        if localValue3 then
          workingValue3 = workingValue2
          workingValue5 = workingValue18
          workingValue7 = "arm"
          tableHelper = iterator.arm
          workingValue3(workingValue5, workingValue7, tableHelper)
        end
        if localValue4 then
          workingValue3 = workingValue2
          workingValue5 = workingValue18
          workingValue7 = "leg"
          tableHelper = iterator.leg
          workingValue3(workingValue5, workingValue7, tableHelper)
        end
        if workingValue then
          workingValue3 = workingValue4
          workingValue5 = workingValue18
          workingValue7 = iterator.critical
          workingValue3(workingValue5, workingValue7)
        end
        iterator.retries = 0
      end
    end
  else
    iterator = eventHandlerRegistration
    iterator = iterator[localValue1]
    if iterator then
      iterator2 = number3
      workingValue18 = iterator.arm
      iterator2(workingValue18)
      iterator2 = number3
      workingValue18 = iterator.leg
      iterator2(workingValue18)
      iterator2 = number3
      workingValue18 = iterator.critical
      iterator2(workingValue18)
      iterator2 = eventHandlerRegistration
      iterator2[localValue1] = nil
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b8bd2bf5c8".
cmgOperation(text2, workingValue14)
cmgOperation = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, cmgOperation2, iterator, iterator2, workingValue18, stateFlag8, health, workingValue, workingValue3, workingValue5
  while true do
    localValue1 = Wait
    localValue2 = 2000
    localValue1(localValue2)
    localValue1 = pairs
    localValue2 = eventHandlerRegistration
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
    for localValue5, cmgOperation2 in localValue1, localValue2, localValue3, localValue4 do
      iterator = cmgOperation2.pedNetId
      if not iterator or 0 == iterator then
        iterator2 = eventHandlerRegistration
        iterator2[localValue5] = nil
      else
        iterator2 = NetworkDoesEntityExistWithNetworkId
        workingValue18 = iterator
        iterator2 = iterator2(workingValue18)
        if not iterator2 then
          iterator2 = cmgOperation2.retries
          if not iterator2 then
            iterator2 = 0
          end
          iterator2 = iterator2 + 1
          cmgOperation2.retries = iterator2
          iterator2 = cmgOperation2.retries
          if not iterator2 then
            iterator2 = 0
          end
          workingValue18 = text
          if iterator2 >= workingValue18 then
            iterator2 = eventHandlerRegistration
            iterator2[localValue5] = nil
          end
        else
          iterator2 = NetworkGetEntityFromNetworkId
          workingValue18 = iterator
          iterator2 = iterator2(workingValue18)
          if 0 ~= iterator2 then
            workingValue18 = DoesEntityExist
            stateFlag8 = iterator2
            workingValue18 = workingValue18(stateFlag8)
            if workingValue18 then
              workingValue18 = IsEntityDead
              stateFlag8 = iterator2
              workingValue18 = workingValue18(stateFlag8)
              if not workingValue18 then
                goto continueAtStep56
              end
            end
          end
          workingValue18 = eventHandlerRegistration
          workingValue18[localValue5] = nil
          goto continueAtStep105
          ::continueAtStep56::
          workingValue18 = GetEntityHealth
          stateFlag8 = iterator2
          -- Beginner: result below is health.
          workingValue18 = workingValue18(stateFlag8)
          stateFlag8 = number13
          stateFlag8 = workingValue18 <= stateFlag8
          health = number3
          workingValue = cmgOperation2.arm
          health(workingValue)
          health = number3
          workingValue = cmgOperation2.leg
          health(workingValue)
          health = number3
          workingValue = cmgOperation2.critical
          health(workingValue)
          health = {}
          cmgOperation2.arm = health
          health = {}
          cmgOperation2.leg = health
          health = {}
          cmgOperation2.critical = health
          health = cmgOperation2.fromArm
          if health then
            health = workingValue2
            workingValue = iterator2
            workingValue3 = "arm"
            workingValue5 = cmgOperation2.arm
            health(workingValue, workingValue3, workingValue5)
          end
          health = cmgOperation2.fromLeg
          if health then
            health = workingValue2
            workingValue = iterator2
            workingValue3 = "leg"
            workingValue5 = cmgOperation2.leg
            health(workingValue, workingValue3, workingValue5)
          end
          if stateFlag8 then
            health = workingValue4
            workingValue = iterator2
            workingValue3 = cmgOperation2.critical
            health(workingValue, workingValue3)
          end
          cmgOperation2.retries = 0
        end
      end
      ::continueAtStep105::
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation(text2)
cmgOperation = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3
  while true do
    localValue1 = Wait
    localValue2 = 500
    localValue1(localValue2)
    localValue1 = stateFlag5
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      if 0 ~= localValue1 then
        localValue2 = IsEntityDead
        localValue3 = localValue1
        localValue2 = localValue2(localValue3)
        if not localValue2 then
          localValue2 = GetEntityHealth
          localValue3 = localValue1
          -- Beginner: result below is health.
          localValue2 = localValue2(localValue3)
          if not (localValue2 <= 100) then
            goto continueAtStep24
          end
        end
      end
      localValue2 = workingValue11
      localValue2()
    end
    ::continueAtStep24::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation(text2)
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = workingValue11
  localValue1()
end
cmgOperation.stopBleeding = text2
cmgOperation = CMG
cmgOperation = cmgOperation.RegisterClientCallback
text2 = "79d0fa347c"

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2
  localValue1 = {}
  localValue2 = stateFlag5
  localValue1.bleeding = localValue2
  localValue2 = stateFlag6
  localValue1.fromArm = localValue2
  localValue2 = stateFlag7
  localValue1.fromLeg = localValue2
  return localValue1
end
cmgOperation(text2, workingValue14)
cmgOperation = RegisterNetEvent
text2 = "5dc72f6904"
-- Beginner: this function handles network event "5dc72f6904".

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2
  localValue1 = workingValue11
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5dc72f6904".
cmgOperation(text2, workingValue14)
cmgOperation = CMG
-- Beginner: this function handles network event "5dc72f6904".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = workingValue13
  localValue1()
end
cmgOperation.startBleeding = text2
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = stateFlag5
  return localValue1
end
cmgOperation.isBleeding = text2
