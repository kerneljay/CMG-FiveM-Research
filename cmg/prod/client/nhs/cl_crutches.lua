--[[
    LEVEL 1 BEGINNER GUIDE — Crutches
    ======================================

    File: cmg/prod/client/nhs/cl_crutches.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: health-service/medical gameplay, specifically the Crutches feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 20
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
local cmgOperation, dataCollection, stateFlag7, workingValue9, number5, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, workingValue, workingValue2, workingValue3, workingValue4, workingValue5, workingValue6, workingValue7, cmgOperation2, text, workingValue8
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection = "cfg/cfg_forcedequipment"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection)
cmgOperation = cmgOperation.types
cmgOperation = cmgOperation.crutches
cmgOperation = cmgOperation.defaultDurationSeconds
dataCollection = {}
dataCollection.disableSprint = true
dataCollection.disableWeapons = true
dataCollection.crutchModel = 1702952751
dataCollection.clipSet = "move_lester_CaneUp"
stateFlag7 = false
workingValue9 = nil
number5 = -1569615261

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, serverEventCall, cmgOperation3, text3, workingValue10
  localValue1 = workingValue9
  if localValue1 then
    localValue1 = DoesEntityExist
    serverEventCall = workingValue9
    localValue1 = localValue1(serverEventCall)
    if localValue1 then
      goto continueAtStep10
    end
  end
  return
  ::continueAtStep10::
  localValue1 = NetworkGetNetworkIdFromEntity
  serverEventCall = workingValue9
  localValue1 = localValue1(serverEventCall)
  if localValue1 and 0 ~= localValue1 then
    serverEventCall = TriggerServerEvent
    cmgOperation3 = "ce24d993d8"
    text3 = "crutch"
    workingValue10 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce24d993d8".
    serverEventCall(cmgOperation3, text3, workingValue10)
  else
    serverEventCall = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
    function cmgOperation3()
      local waitCall, number4, text2, stateFlag8
      waitCall = Wait
      number4 = 100
      waitCall(number4)
      waitCall = workingValue9
      if waitCall then
        waitCall = DoesEntityExist
        number4 = workingValue9
        waitCall = waitCall(number4)
        if waitCall then
          waitCall = NetworkGetNetworkIdFromEntity
          number4 = workingValue9
          waitCall = waitCall(number4)
          localValue1 = waitCall
          waitCall = localValue1
          if waitCall then
            waitCall = localValue1
            if 0 ~= waitCall then
              waitCall = TriggerServerEvent
              number4 = "ce24d993d8"
              text2 = "crutch"
              stateFlag8 = localValue1
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce24d993d8".
              waitCall(number4, text2, stateFlag8)
            end
          end
        end
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    serverEventCall(cmgOperation3)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, serverEventCall, cmgOperation3, text3, workingValue10, stateFlag10, number7, number8, stateFlag13, stateFlag15, stateFlag, number, number2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number3, stateFlag6
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  serverEventCall = CMG
  serverEventCall = serverEventCall.getPlayerCoords
  -- Beginner: result below is playerCoords.
  serverEventCall = serverEventCall()
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.requestEntitySpawn
  text3 = "crutch"
  cmgOperation3(text3)
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.loadModel
  text3 = dataCollection.crutchModel
  cmgOperation3 = cmgOperation3(text3)
  if not cmgOperation3 then
    return
  end
  text3 = CreateObject
  workingValue10 = cmgOperation3
  stateFlag10 = serverEventCall.x
  number7 = serverEventCall.y
  number8 = serverEventCall.z
  stateFlag13 = true
  stateFlag15 = true
  stateFlag = false
  -- Beginner: result below is objectEntity.
  text3 = text3(workingValue10, stateFlag10, number7, number8, stateFlag13, stateFlag15, stateFlag)
  workingValue9 = text3
  text3 = AttachEntityToEntity
  workingValue10 = workingValue9
  stateFlag10 = localValue1
  number7 = 70
  number8 = 1.18
  stateFlag13 = -0.36
  stateFlag15 = -0.2
  stateFlag = -20.0
  number = -87.0
  number2 = -20.0
  stateFlag2 = true
  stateFlag3 = true
  stateFlag4 = false
  stateFlag5 = true
  number3 = 1
  stateFlag6 = true
  -- Beginner: Attach one entity to another entity.
  text3(workingValue10, stateFlag10, number7, number8, stateFlag13, stateFlag15, stateFlag, number, number2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number3, stateFlag6)
  text3 = SetModelAsNoLongerNeeded
  workingValue10 = cmgOperation3
  text3(workingValue10)
  text3 = workingValue11
  text3()
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, serverEventCall, cmgOperation3, text3, workingValue10, stateFlag10
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  serverEventCall = GetCurrentPedWeapon
  cmgOperation3 = localValue1
  text3 = 0
  workingValue10 = false
  serverEventCall, cmgOperation3 = serverEventCall(cmgOperation3, text3, workingValue10)
  if serverEventCall then
    text3 = false
    workingValue10 = "You can't use a crutch while having a weapon out!"
    return text3, workingValue10
  else
    text3 = IsPedInAnyVehicle
    workingValue10 = localValue1
    stateFlag10 = false
    text3 = text3(workingValue10, stateFlag10)
    if text3 then
      text3 = false
      workingValue10 = "You can't use a crutch while in a vehicle!"
      return text3, workingValue10
    else
      text3 = IsEntityDead
      workingValue10 = localValue1
      text3 = text3(workingValue10)
      if text3 then
        text3 = false
        workingValue10 = "You can't use a crutch while dead!"
        return text3, workingValue10
      else
        text3 = IsPedInMeleeCombat
        workingValue10 = localValue1
        text3 = text3(workingValue10)
        if text3 then
          text3 = false
          workingValue10 = "You can't use a crutch while in combat!"
          return text3, workingValue10
        else
          text3 = IsPedFalling
          workingValue10 = localValue1
          text3 = text3(workingValue10)
          if text3 then
            text3 = false
            workingValue10 = "You can't use a crutch while falling!"
            return text3, workingValue10
          else
            text3 = IsPedRagdoll
            workingValue10 = localValue1
            text3 = text3(workingValue10)
            if text3 then
              text3 = false
              workingValue10 = "You can't use a crutch while in ragdoll!"
              return text3, workingValue10
            end
          end
        end
      end
    end
  end
  text3 = true
  return text3
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, serverEventCall, cmgOperation3
  localValue1 = workingValue9
  if localValue1 then
    localValue1 = DoesEntityExist
    serverEventCall = workingValue9
    localValue1 = localValue1(serverEventCall)
    if localValue1 then
      localValue1 = DeleteEntity
      serverEventCall = workingValue9
      -- Beginner: Delete a GTA entity.
      localValue1(serverEventCall)
      localValue1 = nil
      workingValue9 = localValue1
    end
  end
  localValue1 = TriggerServerEvent
  serverEventCall = "607b2e0073"
  cmgOperation3 = "crutch"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "607b2e0073".
  localValue1(serverEventCall, cmgOperation3)
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, serverEventCall, cmgOperation3
  localValue1 = workingValue14
  localValue1()
  localValue1 = false
  stateFlag7 = localValue1
  localValue1 = dataCollection.disableSprint
  if localValue1 then
    localValue1 = SetPlayerSprint
    serverEventCall = PlayerId
    -- Beginner: result below is localPlayerIndex.
    serverEventCall = serverEventCall()
    cmgOperation3 = true
    localValue1(serverEventCall, cmgOperation3)
  end
  localValue1 = ResetPedMovementClipset
  serverEventCall = CMG
  serverEventCall = serverEventCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  serverEventCall = serverEventCall()
  cmgOperation3 = 1.0
  localValue1(serverEventCall, cmgOperation3)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, serverEventCall, cmgOperation3, text3, workingValue10
  localValue1 = stateFlag7
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    serverEventCall = IsEntityDead
    cmgOperation3 = localValue1
    serverEventCall = serverEventCall(cmgOperation3)
    if not serverEventCall then
      serverEventCall = IsPedInAnyVehicle
      cmgOperation3 = localValue1
      text3 = false
      serverEventCall = serverEventCall(cmgOperation3, text3)
      if not serverEventCall then
        goto continueAtStep22
      end
    end
  end
  return
  ::continueAtStep22::
  serverEventCall = HasClipSetLoaded
  cmgOperation3 = dataCollection.clipSet
  serverEventCall = serverEventCall(cmgOperation3)
  if not serverEventCall then
    serverEventCall = RequestClipSet
    cmgOperation3 = dataCollection.clipSet
    serverEventCall(cmgOperation3)
    return
  end
  serverEventCall = SetPedMovementClipset
  cmgOperation3 = localValue1
  text3 = dataCollection.clipSet
  workingValue10 = 1.0
  serverEventCall(cmgOperation3, text3, workingValue10)
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, serverEventCall
  localValue1 = workingValue
  localValue1()
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, serverEventCall
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: serverEventCall() ===
  function serverEventCall()
    local waitCall, number4
    while true do
      waitCall = stateFlag7
      if not waitCall then
        break
      end
      waitCall = workingValue
      waitCall()
      waitCall = Wait
      number4 = 100
      waitCall(number4)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(serverEventCall)
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, serverEventCall
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: serverEventCall() ===
  function serverEventCall()
    local waitCall, number4, text2, stateFlag8, stateFlag9
    while true do
      waitCall = stateFlag7
      if not waitCall then
        break
      end
      waitCall = CMG
      waitCall = waitCall.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      waitCall = waitCall()
      number4 = SetPedCanPlayAmbientAnims
      text2 = waitCall
      stateFlag8 = false
      number4(text2, stateFlag8)
      if 0 ~= waitCall then
        number4 = IsPedInAnyVehicle
        text2 = waitCall
        stateFlag8 = false
        number4 = number4(text2, stateFlag8)
        if not number4 then
          number4 = DisableControlAction
          text2 = 0
          stateFlag8 = 22
          stateFlag9 = true
          number4(text2, stateFlag8, stateFlag9)
        end
      end
      number4 = Wait
      text2 = 0
      number4(text2)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(serverEventCall)
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, serverEventCall
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: serverEventCall() ===
  function serverEventCall()
    local waitCall, number4, text2, stateFlag8, stateFlag9, number6, stateFlag11, stateFlag12, stateFlag14
    waitCall = nil
    number4 = 0
    while true do
      text2 = Wait
      stateFlag8 = 250
      text2(stateFlag8)
      text2 = stateFlag7
      if not text2 then
        break
      end
      text2 = CMG
      text2 = text2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      text2 = text2()
      waitCall = text2
      text2 = false
      stateFlag8 = GetCurrentPedWeapon
      stateFlag9 = waitCall
      number6 = 0
      stateFlag11 = false
      stateFlag8, stateFlag9 = stateFlag8(stateFlag9, number6, stateFlag11)
      if stateFlag8 then
        number6 = dataCollection.disableWeapons
        if number6 then
          number6 = SetCurrentPedWeapon
          stateFlag11 = waitCall
          stateFlag12 = number5
          stateFlag14 = true
          number6(stateFlag11, stateFlag12, stateFlag14)
        elseif not text2 then
          text2 = true
          number6 = workingValue14
          number6()
        end
      else
        number6 = IsPedInAnyVehicle
        stateFlag11 = waitCall
        stateFlag12 = true
        number6 = number6(stateFlag11, stateFlag12)
        if number6 then
          if not text2 then
            text2 = true
            number6 = workingValue14
            number6()
          end
        else
          number6 = workingValue9
          if number6 then
            number6 = DoesEntityExist
            stateFlag11 = workingValue9
            number6 = number6(stateFlag11)
            if number6 then
              goto continueAtStep63
            end
          end
          number6 = Wait
          stateFlag11 = 750
          number6(stateFlag11)
          number6 = workingValue12
          number6()
          text2 = false
          goto continueAtStep122
          ::continueAtStep63::
          number6 = IsEntityAttachedToEntity
          stateFlag11 = workingValue9
          stateFlag12 = waitCall
          number6 = number6(stateFlag11, stateFlag12)
          if not number6 then
            number6 = workingValue14
            number6()
          else
            number6 = IsPedRagdoll
            stateFlag11 = waitCall
            number6 = number6(stateFlag11)
            if not number6 then
              number6 = IsEntityDead
              stateFlag11 = waitCall
              number6 = number6(stateFlag11)
              if not number6 then
                goto continueAtStep88
              end
            end
            number6 = DetachEntity
            stateFlag11 = workingValue9
            stateFlag12 = true
            stateFlag14 = true
            number6(stateFlag11, stateFlag12, stateFlag14)
            goto continueAtStep122
            ::continueAtStep88::
            number6 = IsPedInMeleeCombat
            stateFlag11 = waitCall
            number6 = number6(stateFlag11)
            if number6 then
              number6 = Wait
              stateFlag11 = 500
              number6(stateFlag11)
              number6 = DetachEntity
              stateFlag11 = workingValue9
              stateFlag12 = true
              stateFlag14 = true
              number6(stateFlag11, stateFlag12, stateFlag14)
            else
              number6 = IsPedFalling
              stateFlag11 = waitCall
              number6 = number6(stateFlag11)
              if number6 then
                number4 = number4 + 1
                if number4 > 3 then
                  number6 = DetachEntity
                  stateFlag11 = workingValue9
                  stateFlag12 = true
                  stateFlag14 = true
                  number6(stateFlag11, stateFlag12, stateFlag14)
                  number4 = 0
                end
              elseif number4 > 0 then
                number4 = number4 - 1
              end
            end
          end
        end
      end
      ::continueAtStep122::
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(serverEventCall)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, serverEventCall, cmgOperation3, text3, workingValue10, stateFlag10, number7
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  serverEventCall = workingValue13
  serverEventCall, cmgOperation3 = serverEventCall()
  if not serverEventCall then
    text3 = notify
    workingValue10 = cmgOperation3
    -- Beginner: Show a notification to the player.
    text3(workingValue10)
    return
  end
  text3 = RequestClipSet
  workingValue10 = dataCollection.clipSet
  text3(workingValue10)
  while true do
    text3 = HasClipSetLoaded
    workingValue10 = dataCollection.clipSet
    text3 = text3(workingValue10)
    if text3 then
      break
    end
    text3 = Wait
    workingValue10 = 10
    text3(workingValue10)
  end
  text3 = SetPedMovementClipset
  workingValue10 = localValue1
  stateFlag10 = dataCollection.clipSet
  number7 = 1.0
  text3(workingValue10, stateFlag10, number7)
  text3 = RemoveClipSet
  workingValue10 = dataCollection.clipSet
  text3(workingValue10)
  text3 = workingValue12
  text3()
  text3 = true
  stateFlag7 = text3
  text3 = dataCollection.disableSprint
  if text3 then
    text3 = SetPlayerSprint
    workingValue10 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    workingValue10 = workingValue10()
    stateFlag10 = false
    text3(workingValue10, stateFlag10)
  end
  text3 = workingValue4
  text3()
  text3 = workingValue5
  text3()
  text3 = workingValue3
  text3()
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, serverEventCall, cmgOperation3
  localValue1 = stateFlag7
  if localValue1 then
    localValue1 = workingValue15
    localValue1()
  end
  localValue1 = TriggerServerEvent
  serverEventCall = "895f60bda9"
  cmgOperation3 = "crutches"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "895f60bda9".
  localValue1(serverEventCall, cmgOperation3)
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.RegisterClientCallback
text = "e6ffab8f7e"

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, serverEventCall
  localValue1 = stateFlag7
  return localValue1
end
cmgOperation2(text, workingValue8)
cmgOperation2 = RegisterNetEvent
text = "4dc930f97a"
-- Beginner: this function handles network event "4dc930f97a".

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, serverEventCall
  localValue1 = stateFlag7
  if localValue1 then
    localValue1 = workingValue15
    localValue1()
  end
  localValue1 = CMG
  localValue1 = localValue1.removeForcedEquipment
  serverEventCall = "Crutches"
  localValue1(serverEventCall)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4dc930f97a".
cmgOperation2(text, workingValue8)
cmgOperation2 = RegisterNetEvent
text = "0e124fc408"
-- Beginner: this function handles network event "0e124fc408".

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local serverEventCall, cmgOperation3, text3, workingValue10
  serverEventCall = stateFlag7
  if not serverEventCall then
    serverEventCall = workingValue6
    serverEventCall()
  end
  serverEventCall = CMG
  serverEventCall = serverEventCall.addForcedEquipment
  cmgOperation3 = "Crutches"
  text3 = localValue1 or text3
  if nil == localValue1 or not localValue1 then
    text3 = cmgOperation
  end
  workingValue10 = workingValue7
  serverEventCall(cmgOperation3, text3, workingValue10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0e124fc408".
cmgOperation2(text, workingValue8)
cmgOperation2 = AddEventHandler
text = "865ab191af"
workingValue8 = workingValue2
-- Beginner: Register a client-side event handler. Event/command: "865ab191af".
cmgOperation2(text, workingValue8)
cmgOperation2 = AddEventHandler
text = "cd58811ed9"
workingValue8 = workingValue2
cmgOperation2(text, workingValue8)
cmgOperation2 = AddEventHandler
text = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local serverEventCall
  serverEventCall = GetCurrentResourceName
  serverEventCall = serverEventCall()
  if localValue1 ~= serverEventCall then
    return
  end
  serverEventCall = stateFlag7
  if serverEventCall then
    serverEventCall = workingValue15
    serverEventCall()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation2(text, workingValue8)
