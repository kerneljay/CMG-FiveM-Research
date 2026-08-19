--[[
    LEVEL 1 BEGINNER GUIDE — Casts
    ===================================

    File: cmg/prod/client/nhs/cl_casts.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: health-service/medical gameplay, specifically the Casts feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 23
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
local cmgOperation, dataCollection, cmgOperation4, dataCollection2, dataCollection3, dataCollection4, workingValue13, workingValue15, workingValue16, workingValue17, workingValue, workingValue3, workingValue4, workingValue5, backgroundThread, workingValue7, cmgOperation3, text, workingValue9
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection = "cfg/cfg_casts"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection)
if not cmgOperation then
  cmgOperation = {}
end
dataCollection = cmgOperation.casts
if not dataCollection then
  dataCollection = {}
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.loadModule
dataCollection2 = "cfg/cfg_forcedequipment"
-- Beginner: result below is config.
cmgOperation4 = cmgOperation4(dataCollection2)
cmgOperation4 = cmgOperation4.types
cmgOperation4 = cmgOperation4.casts
cmgOperation4 = cmgOperation4.defaultDurationSeconds
dataCollection2 = {}
dataCollection3 = {}
dataCollection4 = {}
workingValue13 = nil

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2, localValue3
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  localValue3 = cmgOperation.hashMale
  if localValue2 == localValue3 then
    localValue3 = "m"
    return localValue3
  end
  localValue3 = cmgOperation.hashFemale
  if localValue2 == localValue3 then
    localValue3 = "f"
    return localValue3
  end
  localValue3 = "m"
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1) ===
function workingValue16(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = HasAnimDictLoaded
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = true
    return localValue2
  end
  localValue2 = RequestAnimDict
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = 0
  while true do
    localValue3 = HasAnimDictLoaded
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if not (not localValue3 and localValue2 < 100) then
      break
    end
    localValue3 = Wait
    localValue4 = 10
    localValue3(localValue4)
    localValue2 = localValue2 + 1
  end
  localValue3 = HasAnimDictLoaded
  localValue4 = localValue1
  return localValue3(localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = HasClipSetLoaded
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = true
    return localValue2
  end
  localValue2 = RequestClipSet
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = 0
  while true do
    localValue3 = HasClipSetLoaded
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if not (not localValue3 and localValue2 < 100) then
      break
    end
    localValue3 = Wait
    localValue4 = 10
    localValue3(localValue4)
    localValue2 = localValue2 + 1
  end
  localValue3 = HasClipSetLoaded
  localValue4 = localValue1
  return localValue3(localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, localValue4, serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2
  localValue1 = CMG
  localValue1 = localValue1.removeForcedEquipment
  localValue2 = "Cast"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.removeForcedEquipment
  localValue2 = "Bandage"
  localValue1(localValue2)
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue2 = nil
  localValue3 = nil
  localValue4 = pairs
  serverEventCall = dataCollection4
  localValue4, serverEventCall, text3, labelValue = localValue4(serverEventCall)
  for cmgOperation5, text4 in localValue4, serverEventCall, text3, labelValue do
    if text4 > localValue1 and (nil == localValue3 or text4 < localValue3) then
      localValue2 = cmgOperation5
      localValue3 = text4
    end
  end
  if localValue2 and localValue3 then
    localValue4 = localValue3 - localValue1
    localValue4 = localValue4 / 1000

    -- === HELPER FUNCTION: serverEventCall() ===
    function serverEventCall()
      local waitCall, number5
      number5 = localValue2
      waitCall = dataCollection4
      waitCall[number5] = nil
      waitCall = workingValue13
      number5 = localValue2
      waitCall(number5)
      waitCall = workingValue
      waitCall()
    end
    text3 = dataCollection
    text3 = text3[localValue2]
    if text3 then
      labelValue = text3.label
      if labelValue then
        labelValue = text3.label
        cmgOperation5 = labelValue
        labelValue = labelValue.find
        text4 = "Bandage"
        labelValue = labelValue(cmgOperation5, text4)
        if labelValue then
          labelValue = "Bandage"
          if labelValue then
            goto continueAtStep53
          end
        end
      end
    end
    labelValue = "Cast"
    ::continueAtStep53::
    cmgOperation5 = CMG
    cmgOperation5 = cmgOperation5.addForcedEquipment
    text4 = labelValue
    workingValue18 = localValue4
    workingValue2 = serverEventCall
    cmgOperation5(text4, workingValue18, workingValue2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2) ===
function workingValue3(localValue1, localValue2)
  local localValue3, localValue4, serverEventCall, text3, labelValue, cmgOperation5, text4
  if localValue2 then
    localValue3 = DoesEntityExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      goto continueAtStep9
    end
  end
  return
  ::continueAtStep9::
  localValue3 = tostring
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue4 = NetworkGetNetworkIdFromEntity
  serverEventCall = localValue2
  localValue4 = localValue4(serverEventCall)
  if localValue4 and 0 ~= localValue4 then
    serverEventCall = TriggerServerEvent
    text3 = "ce24d993d8"
    labelValue = "cast"
    cmgOperation5 = localValue4
    text4 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce24d993d8".
    serverEventCall(text3, labelValue, cmgOperation5, text4)
  else
    serverEventCall = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
    function text3()
      local waitCall, number5, text2, number11, workingValue11
      waitCall = Wait
      number5 = 100
      waitCall(number5)
      waitCall = localValue2
      if waitCall then
        waitCall = DoesEntityExist
        number5 = localValue2
        waitCall = waitCall(number5)
        if waitCall then
          waitCall = NetworkGetNetworkIdFromEntity
          number5 = localValue2
          waitCall = waitCall(number5)
          localValue4 = waitCall
          waitCall = localValue4
          if waitCall then
            waitCall = localValue4
            if 0 ~= waitCall then
              waitCall = TriggerServerEvent
              number5 = "ce24d993d8"
              text2 = "cast"
              number11 = localValue4
              workingValue11 = localValue3
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce24d993d8".
              waitCall(number5, text2, number11, workingValue11)
            end
          end
        end
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    serverEventCall(text3)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3, localValue4, serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2, number
  localValue3 = dataCollection4
  localValue3[localValue1] = nil
  localValue3 = dataCollection2
  localValue3 = localValue3[localValue1]
  if localValue3 then
    localValue4 = DoesEntityExist
    serverEventCall = localValue3
    localValue4 = localValue4(serverEventCall)
    if localValue4 then
      localValue4 = DetachEntity
      serverEventCall = localValue3
      text3 = false
      labelValue = false
      localValue4(serverEventCall, text3, labelValue)
      localValue4 = DeleteEntity
      serverEventCall = localValue3
      -- Beginner: Delete a GTA entity.
      localValue4(serverEventCall)
      localValue4 = dataCollection2
      localValue4[localValue1] = nil
    end
  end
  localValue4 = TriggerServerEvent
  serverEventCall = "607b2e0073"
  text3 = "cast"
  labelValue = tostring
  cmgOperation5 = localValue1
  labelValue, cmgOperation5, text4, workingValue18, workingValue2, number = labelValue(cmgOperation5)
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "607b2e0073".
  localValue4(serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2, number)
  localValue4 = dataCollection
  localValue4 = localValue4[localValue1]
  if localValue4 then
    serverEventCall = localValue4.anim
    if serverEventCall then
      serverEventCall = CMG
      serverEventCall = serverEventCall.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      serverEventCall = serverEventCall()
      text3 = workingValue15
      labelValue = serverEventCall
      text3 = text3(labelValue)
      labelValue = localValue4.anim
      labelValue = labelValue[text3]
      if labelValue then
        cmgOperation5 = StopAnimTask
        text4 = serverEventCall
        workingValue18 = labelValue[1]
        workingValue2 = labelValue[2]
        number = 1.0
        cmgOperation5(text4, workingValue18, workingValue2, number)
      end
    end
  end
  serverEventCall = dataCollection3
  serverEventCall = serverEventCall[localValue1]
  if serverEventCall then
    serverEventCall = ResetPedMovementClipset
    text3 = CMG
    text3 = text3.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    text3 = text3()
    labelValue = 1.0
    serverEventCall(text3, labelValue)
    serverEventCall = ResetPedWeaponMovementClipset
    text3 = CMG
    text3 = text3.getPlayerPed
    text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2, number = text3()
    serverEventCall(text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2, number)
    serverEventCall = ResetPedStrafeClipset
    text3 = CMG
    text3 = text3.getPlayerPed
    text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2, number = text3()
    serverEventCall(text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2, number)
    serverEventCall = dataCollection3
    serverEventCall[localValue1] = nil
    serverEventCall = TriggerEvent
    text3 = "865ab191af"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "865ab191af".
    serverEventCall(text3)
  end
  if not localValue2 then
    serverEventCall = TriggerServerEvent
    text3 = "c37f2f9014"
    labelValue = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c37f2f9014".
    serverEventCall(text3, labelValue)
  end
  serverEventCall = workingValue
  serverEventCall()
end
workingValue13 = workingValue4

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, localValue4, serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2, number, number2, workingValue6, hashValue, cmgOperation2, number3, workingValue8, number4, workingValue10, stateFlag, stateFlag2, stateFlag3, stateFlag4, number6, number7, number8, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number10, stateFlag9
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue3 = false
    return localValue3
  end
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue4 = localValue4()
  serverEventCall = workingValue15
  text3 = localValue3
  serverEventCall = serverEventCall(text3)
  text3 = localValue2[serverEventCall]
  if not text3 then
    labelValue = false
    return labelValue
  end
  labelValue = text3[1]
  cmgOperation5 = text3[2]
  text4 = text3[3]
  workingValue18 = text3[4]
  workingValue2 = text3[5]
  number = text3[6]
  number2 = text3[7]
  workingValue6 = text3[8]
  hashValue = GetHashKey
  cmgOperation2 = labelValue
  -- Beginner: result below is hash.
  hashValue = hashValue(cmgOperation2)
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadModel
  number3 = hashValue
  cmgOperation2 = cmgOperation2(number3)
  if not cmgOperation2 then
    number3 = RequestModel
    workingValue8 = hashValue
    number3(workingValue8)
    number3 = 0
    while true do
      workingValue8 = HasModelLoaded
      number4 = hashValue
      workingValue8 = workingValue8(number4)
      if workingValue8 then
        break
      end
      workingValue8 = 150
      if not (number3 < workingValue8) then
        break
      end
      workingValue8 = Wait
      number4 = 10
      workingValue8(number4)
      workingValue8 = RequestModel
      number4 = hashValue
      workingValue8(number4)
      number3 = number3 + 1
    end
    workingValue8 = HasModelLoaded
    number4 = hashValue
    workingValue8 = workingValue8(number4)
    if workingValue8 then
      cmgOperation2 = hashValue
    end
  end
  if not cmgOperation2 then
    number3 = notify
    workingValue8 = "~r~Cast model not available. Ensure plastercasts (or esx_plaster_cast) resource is started."
    -- Beginner: Show a notification to the player.
    number3(workingValue8)
    number3 = false
    return number3
  end
  number3 = CMG
  number3 = number3.requestEntitySpawn
  workingValue8 = "cast_prop"
  number4 = localValue1
  number3(workingValue8, number4)
  number3 = CreateObject
  workingValue8 = hashValue
  number4 = localValue4.x
  workingValue10 = localValue4.y
  stateFlag = localValue4.z
  stateFlag2 = true
  stateFlag3 = true
  stateFlag4 = false
  -- Beginner: result below is objectEntity.
  number3 = number3(workingValue8, number4, workingValue10, stateFlag, stateFlag2, stateFlag3, stateFlag4)
  if number3 then
    workingValue8 = DoesEntityExist
    number4 = number3
    workingValue8 = workingValue8(number4)
    if workingValue8 then
      goto continueAtStep98
    end
  end
  workingValue8 = notify
  number4 = "~r~Failed to create cast."
  -- Beginner: Show a notification to the player.
  workingValue8(number4)
  workingValue8 = false
  return workingValue8
  ::continueAtStep98::
  workingValue8 = GetPedBoneIndex
  number4 = localValue3
  workingValue10 = cmgOperation5
  workingValue8 = workingValue8(number4, workingValue10)
  number4 = SetModelAsNoLongerNeeded
  workingValue10 = hashValue
  number4(workingValue10)
  number4 = SetEntityCollision
  workingValue10 = number3
  stateFlag = false
  stateFlag2 = false
  number4(workingValue10, stateFlag, stateFlag2)
  number4 = SetEntityCompletelyDisableCollision
  workingValue10 = number3
  stateFlag = false
  stateFlag2 = false
  number4(workingValue10, stateFlag, stateFlag2)
  number4 = AttachEntityToEntity
  workingValue10 = number3
  stateFlag = localValue3
  stateFlag2 = workingValue8
  stateFlag3 = text4
  stateFlag4 = workingValue18
  number6 = workingValue2
  number7 = number
  number8 = number2
  number9 = workingValue6
  stateFlag5 = true
  stateFlag6 = true
  stateFlag7 = false
  stateFlag8 = true
  number10 = 1
  stateFlag9 = true
  -- Beginner: Attach one entity to another entity.
  number4(workingValue10, stateFlag, stateFlag2, stateFlag3, stateFlag4, number6, number7, number8, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number10, stateFlag9)
  number4 = dataCollection2
  number4[localValue1] = number3
  number4 = workingValue3
  workingValue10 = localValue1
  stateFlag = number3
  number4(workingValue10, stateFlag)
  number4 = localValue2.anim
  if number4 then
    number4 = localValue2.anim
    number4 = number4[serverEventCall]
    if number4 then
      workingValue10 = workingValue16
      stateFlag = number4[1]
      workingValue10 = workingValue10(stateFlag)
      if workingValue10 then
        workingValue10 = TaskPlayAnim
        stateFlag = localValue3
        stateFlag2 = number4[1]
        stateFlag3 = number4[2]
        stateFlag4 = 1.0
        number6 = -1.0
        number7 = -1
        number8 = 49
        number9 = 0
        stateFlag5 = false
        stateFlag6 = false
        stateFlag7 = false
        -- Beginner: Play an animation on a ped.
        workingValue10(stateFlag, stateFlag2, stateFlag3, stateFlag4, number6, number7, number8, number9, stateFlag5, stateFlag6, stateFlag7)
      end
    end
  end
  number4 = localValue2.clipset
  if number4 then
    number4 = workingValue17
    workingValue10 = localValue2.clipset
    number4 = number4(workingValue10)
    if number4 then
      number4 = SetPedMovementClipset
      workingValue10 = localValue3
      stateFlag = localValue2.clipset
      stateFlag2 = 1.0
      number4(workingValue10, stateFlag, stateFlag2)
      number4 = dataCollection3
      number4[localValue1] = true
      number4 = RemoveClipSet
      workingValue10 = localValue2.clipset
      number4(workingValue10)
    end
  end
  number4 = true
  return number4
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, localValue4, serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2, number, number2
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = IsEntityDead
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      goto continueAtStep12
    end
  end
  return
  ::continueAtStep12::
  localValue2 = {}
  localValue3 = pairs
  localValue4 = dataCollection3
  localValue3, localValue4, serverEventCall, text3 = localValue3(localValue4)
  for labelValue in localValue3, localValue4, serverEventCall, text3 do
    cmgOperation5 = #localValue2
    cmgOperation5 = cmgOperation5 + 1
    localValue2[cmgOperation5] = labelValue
  end
  localValue3 = #localValue2
  if 0 == localValue3 then
    return
  end
  localValue3 = table
  localValue3 = localValue3.sort
  localValue4 = localValue2
  localValue3(localValue4)
  localValue3 = ipairs
  localValue4 = localValue2
  localValue3, localValue4, serverEventCall, text3 = localValue3(localValue4)
  for labelValue, cmgOperation5 in localValue3, localValue4, serverEventCall, text3 do
    text4 = dataCollection
    text4 = text4[cmgOperation5]
    if text4 then
      workingValue18 = text4.clipset
      if workingValue18 then
        workingValue18 = HasClipSetLoaded
        workingValue2 = text4.clipset
        workingValue18 = workingValue18(workingValue2)
        if not workingValue18 then
          workingValue18 = RequestClipSet
          workingValue2 = text4.clipset
          workingValue18(workingValue2)
        else
          workingValue18 = SetPedMovementClipset
          workingValue2 = localValue1
          number = text4.clipset
          number2 = 1.0
          workingValue18(workingValue2, number, number2)
        end
      end
    end
  end
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2
  while true do
    localValue1 = Wait
    localValue2 = 100
    localValue1(localValue2)
    localValue1 = next
    localValue2 = dataCollection3
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = workingValue5
      localValue1()
      localValue1 = TriggerEvent
      localValue2 = "cd58811ed9"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "cd58811ed9".
      localValue1(localValue2)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(workingValue7)
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, localValue4, serverEventCall
  while true do
    localValue1 = next
    localValue2 = dataCollection2
    localValue1 = localValue1(localValue2)
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
          localValue2 = IsPedInAnyVehicle
          localValue3 = localValue1
          localValue4 = false
          localValue2 = localValue2(localValue3, localValue4)
          if not localValue2 then
            localValue2 = DisableControlAction
            localValue3 = 0
            localValue4 = 22
            serverEventCall = true
            localValue2(localValue3, localValue4, serverEventCall)
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(workingValue7)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1) ===
function backgroundThread(localValue1)
  local localValue2, localValue3
  localValue2 = dataCollection2
  localValue2 = localValue2[localValue1]
  localValue2 = DoesEntityExist
  localValue3 = dataCollection2
  localValue3 = localValue3[localValue1]
  localValue2 = nil ~= localValue2 and localValue2
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, localValue4, serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2
  localValue2 = {}
  dataCollection4 = localValue2
  localValue2 = CMG
  localValue2 = localValue2.removeForcedEquipment
  localValue3 = "Cast"
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.removeForcedEquipment
  localValue3 = "Bandage"
  localValue2(localValue3)
  localValue2 = {}
  localValue3 = pairs
  localValue4 = dataCollection2
  localValue3, localValue4, serverEventCall, text3 = localValue3(localValue4)
  for labelValue in localValue3, localValue4, serverEventCall, text3 do
    cmgOperation5 = #localValue2
    cmgOperation5 = cmgOperation5 + 1
    localValue2[cmgOperation5] = labelValue
  end
  localValue3 = ipairs
  localValue4 = localValue2
  localValue3, localValue4, serverEventCall, text3 = localValue3(localValue4)
  for labelValue, cmgOperation5 in localValue3, localValue4, serverEventCall, text3 do
    text4 = workingValue13
    workingValue18 = cmgOperation5
    workingValue2 = localValue1
    text4(workingValue18, workingValue2)
  end
  localValue3 = ResetPedMovementClipset
  localValue4 = CMG
  localValue4 = localValue4.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  serverEventCall = 1.0
  localValue3(localValue4, serverEventCall)
  localValue3 = ResetPedWeaponMovementClipset
  localValue4 = CMG
  localValue4 = localValue4.getPlayerPed
  localValue4, serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2 = localValue4()
  localValue3(localValue4, serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2)
  localValue3 = ResetPedStrafeClipset
  localValue4 = CMG
  localValue4 = localValue4.getPlayerPed
  localValue4, serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2 = localValue4()
  localValue3(localValue4, serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2)
  localValue3 = {}
  dataCollection3 = localValue3
  localValue3 = TriggerEvent
  localValue4 = "865ab191af"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "865ab191af".
  localValue3(localValue4)
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.RegisterClientCallback
text = "a20b2cf44e"

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3
  localValue2 = backgroundThread
  localValue3 = localValue1
  return localValue2(localValue3)
end
cmgOperation3(text, workingValue9)
cmgOperation3 = RegisterNetEvent
text = "2b2bfb838d"
-- Beginner: this function handles network event "2b2bfb838d".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2) ===
function workingValue9(localValue1, localValue2)
  local localValue3, localValue4, serverEventCall, text3, labelValue, cmgOperation5
  localValue3 = dataCollection
  localValue3 = localValue3[localValue1]
  if not localValue3 then
    return
  end
  localValue3 = backgroundThread
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = workingValue13
    localValue4 = localValue1
    localValue3(localValue4)
    localValue3 = notify
    localValue4 = "~g~Cast removed."
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
  else
    localValue3 = workingValue4
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = localValue2 or localValue3
      if not localValue2 then
        localValue3 = cmgOperation4
      end
      localValue4 = dataCollection4
      serverEventCall = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      serverEventCall = serverEventCall()
      text3 = localValue3 * 1000
      serverEventCall = serverEventCall + text3
      localValue4[localValue1] = serverEventCall
      localValue4 = workingValue
      localValue4()
      localValue4 = dataCollection
      localValue4 = localValue4[localValue1]
      if localValue4 then
        localValue4 = dataCollection
        localValue4 = localValue4[localValue1]
        localValue4 = localValue4.label
        if localValue4 then
          goto continueAtStep46
        end
      end
      localValue4 = localValue1
      ::continueAtStep46::
      serverEventCall = notify
      text3 = "~g~"
      labelValue = localValue4
      cmgOperation5 = " applied."
      text3 = text3 .. labelValue .. cmgOperation5
      -- Beginner: Show a notification to the player.
      serverEventCall(text3)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2b2bfb838d".
cmgOperation3(text, workingValue9)
cmgOperation3 = RegisterNetEvent
text = "f8c7a2074b"
-- Beginner: this function handles network event "f8c7a2074b".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue9(localValue1, localValue2, localValue3, localValue4)
  local serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18
  serverEventCall = dataCollection
  serverEventCall = serverEventCall[localValue1]
  if not serverEventCall then
    return
  end
  serverEventCall = localValue2 or serverEventCall
  if not localValue2 then
    serverEventCall = cmgOperation4
  end
  text3 = backgroundThread
  labelValue = localValue1
  text3 = text3(labelValue)
  if text3 then
    text3 = dataCollection4
    labelValue = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    labelValue = labelValue()
    cmgOperation5 = serverEventCall * 1000
    labelValue = labelValue + cmgOperation5
    text3[localValue1] = labelValue
    text3 = workingValue
    text3()
    if localValue3 and not localValue4 then
      text3 = notify
      labelValue = "~g~You have been bandaged."
      -- Beginner: Show a notification to the player.
      text3(labelValue)
    end
  elseif localValue4 then
    text3 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION: labelValue() ===
    function labelValue()
      local waitCall, number5, text2, number11, workingValue11, workingValue12, workingValue14, gameTime, gameTime2
      waitCall = serverEventCall
      waitCall = waitCall * 1000
      number5 = 1
      text2 = 30
      number11 = 1
      for workingValue11 = number5, text2, number11 do
        workingValue12 = backgroundThread
        workingValue14 = localValue1
        workingValue12 = workingValue12(workingValue14)
        if workingValue12 then
          workingValue14 = localValue1
          workingValue12 = dataCollection4
          gameTime = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          gameTime = gameTime()
          gameTime = gameTime + waitCall
          workingValue12[workingValue14] = gameTime
          workingValue12 = workingValue
          workingValue12()
          return
        end
        workingValue12 = CMG
        workingValue12 = workingValue12.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        workingValue12 = workingValue12()
        if 0 ~= workingValue12 then
          workingValue14 = DoesEntityExist
          gameTime = workingValue12
          workingValue14 = workingValue14(gameTime)
          if workingValue14 then
            workingValue14 = IsEntityDead
            gameTime = workingValue12
            workingValue14 = workingValue14(gameTime)
            if not workingValue14 then
              workingValue14 = workingValue4
              gameTime = localValue1
              workingValue14 = workingValue14(gameTime)
              if workingValue14 then
                gameTime = localValue1
                workingValue14 = dataCollection4
                gameTime2 = GetGameTimer
                -- Beginner: result below is gameTimeMs.
                gameTime2 = gameTime2()
                gameTime2 = gameTime2 + waitCall
                workingValue14[gameTime] = gameTime2
                workingValue14 = workingValue
                workingValue14()
                return
              end
            end
          end
        end
        workingValue14 = Wait
        gameTime = 300
        workingValue14(gameTime)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    text3(labelValue)
  else
    text3 = workingValue4
    labelValue = localValue1
    text3 = text3(labelValue)
    if text3 then
      text3 = dataCollection4
      labelValue = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      labelValue = labelValue()
      cmgOperation5 = serverEventCall * 1000
      labelValue = labelValue + cmgOperation5
      text3[localValue1] = labelValue
      text3 = workingValue
      text3()
      if not localValue4 then
        if localValue3 then
          text3 = notify
          labelValue = "~g~You have been bandaged."
          -- Beginner: Show a notification to the player.
          text3(labelValue)
        else
          text3 = dataCollection
          text3 = text3[localValue1]
          if text3 then
            text3 = dataCollection
            text3 = text3[localValue1]
            text3 = text3.label
            if text3 then
              goto continueAtStep71
            end
          end
          text3 = localValue1
          ::continueAtStep71::
          labelValue = notify
          cmgOperation5 = "~g~"
          text4 = text3
          workingValue18 = " applied."
          cmgOperation5 = cmgOperation5 .. text4 .. workingValue18
          labelValue(cmgOperation5)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f8c7a2074b".
cmgOperation3(text, workingValue9)
cmgOperation3 = RegisterNetEvent
text = "f95fecdf35"
-- Beginner: this function handles network event "f95fecdf35".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue13
  localValue3 = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f95fecdf35".
cmgOperation3(text, workingValue9)
cmgOperation3 = RegisterNetEvent
text = "5c706bee2d"
-- Beginner: this function handles network event "5c706bee2d".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2
  localValue1 = workingValue7
  localValue2 = false
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5c706bee2d".
cmgOperation3(text, workingValue9)
cmgOperation3 = Citizen
cmgOperation3 = cmgOperation3.CreateThread
-- Beginner: this function handles network event "5c706bee2d".

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, localValue4, serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2, number, number2, workingValue6, hashValue, cmgOperation2, number3, workingValue8, number4, workingValue10, stateFlag, stateFlag2
  while true do
    localValue1 = Wait
    localValue2 = 4000
    localValue1(localValue2)
    localValue1 = pairs
    localValue2 = dataCollection2
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
    for serverEventCall, text3 in localValue1, localValue2, localValue3, localValue4 do
      labelValue = DoesEntityExist
      cmgOperation5 = text3
      labelValue = labelValue(cmgOperation5)
      if labelValue then
        labelValue = dataCollection
        labelValue = labelValue[serverEventCall]
        if labelValue then
          cmgOperation5 = labelValue.anim
          if cmgOperation5 then
            cmgOperation5 = CMG
            cmgOperation5 = cmgOperation5.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            cmgOperation5 = cmgOperation5()
            text4 = workingValue15
            workingValue18 = cmgOperation5
            text4 = text4(workingValue18)
            workingValue18 = labelValue.anim
            workingValue18 = workingValue18[text4]
            if workingValue18 then
              workingValue2 = IsEntityPlayingAnim
              number = cmgOperation5
              number2 = workingValue18[1]
              workingValue6 = workingValue18[2]
              hashValue = 3
              workingValue2 = workingValue2(number, number2, workingValue6, hashValue)
              if not workingValue2 then
                workingValue2 = workingValue16
                number = workingValue18[1]
                workingValue2 = workingValue2(number)
                if workingValue2 then
                  workingValue2 = TaskPlayAnim
                  number = cmgOperation5
                  number2 = workingValue18[1]
                  workingValue6 = workingValue18[2]
                  hashValue = 1.0
                  cmgOperation2 = -1.0
                  number3 = -1
                  workingValue8 = 49
                  number4 = 0
                  workingValue10 = false
                  stateFlag = false
                  stateFlag2 = false
                  -- Beginner: Play an animation on a ped.
                  workingValue2(number, number2, workingValue6, hashValue, cmgOperation2, number3, workingValue8, number4, workingValue10, stateFlag, stateFlag2)
                end
              end
            end
          end
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation3(text)
cmgOperation3 = RegisterNetEvent
text = "706fce7a08"
-- Beginner: this function handles network event "706fce7a08".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2, localValue3) ===
function workingValue9(localValue1, localValue2, localValue3)
  local localValue4, serverEventCall, text3, labelValue, cmgOperation5, text4, workingValue18, workingValue2, number, number2, workingValue6, hashValue, cmgOperation2, number3, workingValue8, number4, workingValue10
  localValue4 = CMG
  localValue4 = localValue4.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  if 0 ~= localValue4 then
    serverEventCall = DoesEntityExist
    text3 = localValue4
    serverEventCall = serverEventCall(text3)
    if serverEventCall then
      goto continueAtStep12
    end
  end
  return
  ::continueAtStep12::
  serverEventCall = GetPlayerFromServerId
  text3 = localValue1
  -- Beginner: result below is playerIndex.
  serverEventCall = serverEventCall(text3)
  if -1 == serverEventCall then
    return
  end
  text3 = GetPlayerPed
  labelValue = serverEventCall
  -- Beginner: result below is playerPed.
  text3 = text3(labelValue)
  if 0 ~= text3 then
    labelValue = DoesEntityExist
    cmgOperation5 = text3
    labelValue = labelValue(cmgOperation5)
    if labelValue then
      goto continueAtStep29
    end
  end
  return
  ::continueAtStep29::
  labelValue = 0.6
  cmgOperation5 = TaskGoToEntity
  text4 = localValue4
  workingValue18 = text3
  workingValue2 = 10000
  number = labelValue
  number2 = 1.0
  workingValue6 = 0
  hashValue = 0
  cmgOperation5(text4, workingValue18, workingValue2, number, number2, workingValue6, hashValue)
  cmgOperation5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  cmgOperation5 = cmgOperation5()
  while true do
    text4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text4 = text4()
    text4 = text4 - cmgOperation5
    workingValue18 = 10000
    if not (text4 < workingValue18) then
      break
    end
    text4 = DoesEntityExist
    workingValue18 = text3
    text4 = text4(workingValue18)
    if not text4 then
      break
    end
    text4 = GetEntityCoords
    workingValue18 = localValue4
    -- Beginner: result below is entityCoords.
    text4 = text4(workingValue18)
    workingValue18 = GetEntityCoords
    workingValue2 = text3
    -- Beginner: result below is entityCoords.
    workingValue18 = workingValue18(workingValue2)
    text4 = text4 - workingValue18
    text4 = #text4
    workingValue18 = labelValue + 0.3
    if text4 <= workingValue18 then
      break
    end
    workingValue18 = Wait
    workingValue2 = 100
    workingValue18(workingValue2)
  end
  text4 = TaskTurnPedToFaceEntity
  workingValue18 = localValue4
  workingValue2 = text3
  number = 500
  text4(workingValue18, workingValue2, number)
  text4 = Wait
  workingValue18 = 300
  text4(workingValue18)
  text4 = CMG
  text4 = text4.loadAnimDict
  workingValue18 = "anim_heist@arcade_combined@"
  -- Beginner: Load a GTA animation dictionary before using it.
  text4(workingValue18)
  text4 = TaskPlayAnim
  workingValue18 = localValue4
  workingValue2 = "anim_heist@arcade_combined@"
  number = "inspecting_high_idle_01_inspector"
  number2 = 8.0
  workingValue6 = -8.0
  hashValue = 3000
  cmgOperation2 = 1
  number3 = 0
  workingValue8 = false
  number4 = false
  workingValue10 = false
  -- Beginner: Play an animation on a ped.
  text4(workingValue18, workingValue2, number, number2, workingValue6, hashValue, cmgOperation2, number3, workingValue8, number4, workingValue10)
  text4 = RemoveAnimDict
  workingValue18 = "anim_heist@arcade_combined@"
  text4(workingValue18)
  text4 = Wait
  workingValue18 = 3000
  text4(workingValue18)
  text4 = TriggerServerEvent
  workingValue18 = "3cd4fe88fe"
  workingValue2 = localValue1
  number = localValue2
  number2 = localValue3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3cd4fe88fe".
  text4(workingValue18, workingValue2, number, number2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "706fce7a08".
cmgOperation3(text, workingValue9)
cmgOperation3 = AddEventHandler
text = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 ~= localValue2 then
    return
  end
  localValue2 = workingValue7
  localValue2()
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation3(text, workingValue9)
