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
local cmgCall, dataTable, flag7, workValue9, numberValue5, workValue11, workValue12, workValue13, workValue14, workValue15, workValue, workValue2, workValue3, workValue4, workValue5, workValue6, workValue7, cmgCall2, textValue, workValue8
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/cfg_forcedequipment"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
cmgCall = cmgCall.types
cmgCall = cmgCall.crutches
cmgCall = cmgCall.defaultDurationSeconds
dataTable = {}
dataTable.disableSprint = true
dataTable.disableWeapons = true
dataTable.crutchModel = 1702952751
dataTable.clipSet = "move_lester_CaneUp"
flag7 = false
workValue9 = nil
numberValue5 = -1569615261

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, serverEventCall, cmgCall3, textValue3, workValue10
  arg1 = workValue9
  if arg1 then
    arg1 = DoesEntityExist
    serverEventCall = workValue9
    arg1 = arg1(serverEventCall)
    if arg1 then
      goto flow_label_10
    end
  end
  return
  ::flow_label_10::
  arg1 = NetworkGetNetworkIdFromEntity
  serverEventCall = workValue9
  arg1 = arg1(serverEventCall)
  if arg1 and 0 ~= arg1 then
    serverEventCall = TriggerServerEvent
    cmgCall3 = "ce24d993d8"
    textValue3 = "crutch"
    workValue10 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce24d993d8".
    serverEventCall(cmgCall3, textValue3, workValue10)
  else
    serverEventCall = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
    function cmgCall3()
      local waitCall, numberValue4, textValue2, flag8
      waitCall = Wait
      numberValue4 = 100
      waitCall(numberValue4)
      waitCall = workValue9
      if waitCall then
        waitCall = DoesEntityExist
        numberValue4 = workValue9
        waitCall = waitCall(numberValue4)
        if waitCall then
          waitCall = NetworkGetNetworkIdFromEntity
          numberValue4 = workValue9
          waitCall = waitCall(numberValue4)
          arg1 = waitCall
          waitCall = arg1
          if waitCall then
            waitCall = arg1
            if 0 ~= waitCall then
              waitCall = TriggerServerEvent
              numberValue4 = "ce24d993d8"
              textValue2 = "crutch"
              flag8 = arg1
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce24d993d8".
              waitCall(numberValue4, textValue2, flag8)
            end
          end
        end
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    serverEventCall(cmgCall3)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
function workValue12()
  local arg1, serverEventCall, cmgCall3, textValue3, workValue10, flag10, numberValue7, numberValue8, flag13, flag15, flag, numberValue, numberValue2, flag2, flag3, flag4, flag5, numberValue3, flag6
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  serverEventCall = CMG
  serverEventCall = serverEventCall.getPlayerCoords
  -- Beginner: result below is playerCoords.
  serverEventCall = serverEventCall()
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.requestEntitySpawn
  textValue3 = "crutch"
  cmgCall3(textValue3)
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.loadModel
  textValue3 = dataTable.crutchModel
  cmgCall3 = cmgCall3(textValue3)
  if not cmgCall3 then
    return
  end
  textValue3 = CreateObject
  workValue10 = cmgCall3
  flag10 = serverEventCall.x
  numberValue7 = serverEventCall.y
  numberValue8 = serverEventCall.z
  flag13 = true
  flag15 = true
  flag = false
  -- Beginner: result below is objectEntity.
  textValue3 = textValue3(workValue10, flag10, numberValue7, numberValue8, flag13, flag15, flag)
  workValue9 = textValue3
  textValue3 = AttachEntityToEntity
  workValue10 = workValue9
  flag10 = arg1
  numberValue7 = 70
  numberValue8 = 1.18
  flag13 = -0.36
  flag15 = -0.2
  flag = -20.0
  numberValue = -87.0
  numberValue2 = -20.0
  flag2 = true
  flag3 = true
  flag4 = false
  flag5 = true
  numberValue3 = 1
  flag6 = true
  -- Beginner: Attach one entity to another entity.
  textValue3(workValue10, flag10, numberValue7, numberValue8, flag13, flag15, flag, numberValue, numberValue2, flag2, flag3, flag4, flag5, numberValue3, flag6)
  textValue3 = SetModelAsNoLongerNeeded
  workValue10 = cmgCall3
  textValue3(workValue10)
  textValue3 = workValue11
  textValue3()
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, serverEventCall, cmgCall3, textValue3, workValue10, flag10
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  serverEventCall = GetCurrentPedWeapon
  cmgCall3 = arg1
  textValue3 = 0
  workValue10 = false
  serverEventCall, cmgCall3 = serverEventCall(cmgCall3, textValue3, workValue10)
  if serverEventCall then
    textValue3 = false
    workValue10 = "You can't use a crutch while having a weapon out!"
    return textValue3, workValue10
  else
    textValue3 = IsPedInAnyVehicle
    workValue10 = arg1
    flag10 = false
    textValue3 = textValue3(workValue10, flag10)
    if textValue3 then
      textValue3 = false
      workValue10 = "You can't use a crutch while in a vehicle!"
      return textValue3, workValue10
    else
      textValue3 = IsEntityDead
      workValue10 = arg1
      textValue3 = textValue3(workValue10)
      if textValue3 then
        textValue3 = false
        workValue10 = "You can't use a crutch while dead!"
        return textValue3, workValue10
      else
        textValue3 = IsPedInMeleeCombat
        workValue10 = arg1
        textValue3 = textValue3(workValue10)
        if textValue3 then
          textValue3 = false
          workValue10 = "You can't use a crutch while in combat!"
          return textValue3, workValue10
        else
          textValue3 = IsPedFalling
          workValue10 = arg1
          textValue3 = textValue3(workValue10)
          if textValue3 then
            textValue3 = false
            workValue10 = "You can't use a crutch while falling!"
            return textValue3, workValue10
          else
            textValue3 = IsPedRagdoll
            workValue10 = arg1
            textValue3 = textValue3(workValue10)
            if textValue3 then
              textValue3 = false
              workValue10 = "You can't use a crutch while in ragdoll!"
              return textValue3, workValue10
            end
          end
        end
      end
    end
  end
  textValue3 = true
  return textValue3
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, serverEventCall, cmgCall3
  arg1 = workValue9
  if arg1 then
    arg1 = DoesEntityExist
    serverEventCall = workValue9
    arg1 = arg1(serverEventCall)
    if arg1 then
      arg1 = DeleteEntity
      serverEventCall = workValue9
      -- Beginner: Delete a GTA entity.
      arg1(serverEventCall)
      arg1 = nil
      workValue9 = arg1
    end
  end
  arg1 = TriggerServerEvent
  serverEventCall = "607b2e0073"
  cmgCall3 = "crutch"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "607b2e0073".
  arg1(serverEventCall, cmgCall3)
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, serverEventCall, cmgCall3
  arg1 = workValue14
  arg1()
  arg1 = false
  flag7 = arg1
  arg1 = dataTable.disableSprint
  if arg1 then
    arg1 = SetPlayerSprint
    serverEventCall = PlayerId
    -- Beginner: result below is localPlayerIndex.
    serverEventCall = serverEventCall()
    cmgCall3 = true
    arg1(serverEventCall, cmgCall3)
  end
  arg1 = ResetPedMovementClipset
  serverEventCall = CMG
  serverEventCall = serverEventCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  serverEventCall = serverEventCall()
  cmgCall3 = 1.0
  arg1(serverEventCall, cmgCall3)
end

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, serverEventCall, cmgCall3, textValue3, workValue10
  arg1 = flag7
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  if 0 ~= arg1 then
    serverEventCall = IsEntityDead
    cmgCall3 = arg1
    serverEventCall = serverEventCall(cmgCall3)
    if not serverEventCall then
      serverEventCall = IsPedInAnyVehicle
      cmgCall3 = arg1
      textValue3 = false
      serverEventCall = serverEventCall(cmgCall3, textValue3)
      if not serverEventCall then
        goto flow_label_22
      end
    end
  end
  return
  ::flow_label_22::
  serverEventCall = HasClipSetLoaded
  cmgCall3 = dataTable.clipSet
  serverEventCall = serverEventCall(cmgCall3)
  if not serverEventCall then
    serverEventCall = RequestClipSet
    cmgCall3 = dataTable.clipSet
    serverEventCall(cmgCall3)
    return
  end
  serverEventCall = SetPedMovementClipset
  cmgCall3 = arg1
  textValue3 = dataTable.clipSet
  workValue10 = 1.0
  serverEventCall(cmgCall3, textValue3, workValue10)
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, serverEventCall
  arg1 = workValue
  arg1()
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, serverEventCall
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: serverEventCall() ===
  function serverEventCall()
    local waitCall, numberValue4
    while true do
      waitCall = flag7
      if not waitCall then
        break
      end
      waitCall = workValue
      waitCall()
      waitCall = Wait
      numberValue4 = 100
      waitCall(numberValue4)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(serverEventCall)
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, serverEventCall
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: serverEventCall() ===
  function serverEventCall()
    local waitCall, numberValue4, textValue2, flag8, flag9
    while true do
      waitCall = flag7
      if not waitCall then
        break
      end
      waitCall = CMG
      waitCall = waitCall.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      waitCall = waitCall()
      numberValue4 = SetPedCanPlayAmbientAnims
      textValue2 = waitCall
      flag8 = false
      numberValue4(textValue2, flag8)
      if 0 ~= waitCall then
        numberValue4 = IsPedInAnyVehicle
        textValue2 = waitCall
        flag8 = false
        numberValue4 = numberValue4(textValue2, flag8)
        if not numberValue4 then
          numberValue4 = DisableControlAction
          textValue2 = 0
          flag8 = 22
          flag9 = true
          numberValue4(textValue2, flag8, flag9)
        end
      end
      numberValue4 = Wait
      textValue2 = 0
      numberValue4(textValue2)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(serverEventCall)
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, serverEventCall
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: serverEventCall() ===
  function serverEventCall()
    local waitCall, numberValue4, textValue2, flag8, flag9, numberValue6, flag11, flag12, flag14
    waitCall = nil
    numberValue4 = 0
    while true do
      textValue2 = Wait
      flag8 = 250
      textValue2(flag8)
      textValue2 = flag7
      if not textValue2 then
        break
      end
      textValue2 = CMG
      textValue2 = textValue2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      textValue2 = textValue2()
      waitCall = textValue2
      textValue2 = false
      flag8 = GetCurrentPedWeapon
      flag9 = waitCall
      numberValue6 = 0
      flag11 = false
      flag8, flag9 = flag8(flag9, numberValue6, flag11)
      if flag8 then
        numberValue6 = dataTable.disableWeapons
        if numberValue6 then
          numberValue6 = SetCurrentPedWeapon
          flag11 = waitCall
          flag12 = numberValue5
          flag14 = true
          numberValue6(flag11, flag12, flag14)
        elseif not textValue2 then
          textValue2 = true
          numberValue6 = workValue14
          numberValue6()
        end
      else
        numberValue6 = IsPedInAnyVehicle
        flag11 = waitCall
        flag12 = true
        numberValue6 = numberValue6(flag11, flag12)
        if numberValue6 then
          if not textValue2 then
            textValue2 = true
            numberValue6 = workValue14
            numberValue6()
          end
        else
          numberValue6 = workValue9
          if numberValue6 then
            numberValue6 = DoesEntityExist
            flag11 = workValue9
            numberValue6 = numberValue6(flag11)
            if numberValue6 then
              goto flow_label_63
            end
          end
          numberValue6 = Wait
          flag11 = 750
          numberValue6(flag11)
          numberValue6 = workValue12
          numberValue6()
          textValue2 = false
          goto flow_label_122
          ::flow_label_63::
          numberValue6 = IsEntityAttachedToEntity
          flag11 = workValue9
          flag12 = waitCall
          numberValue6 = numberValue6(flag11, flag12)
          if not numberValue6 then
            numberValue6 = workValue14
            numberValue6()
          else
            numberValue6 = IsPedRagdoll
            flag11 = waitCall
            numberValue6 = numberValue6(flag11)
            if not numberValue6 then
              numberValue6 = IsEntityDead
              flag11 = waitCall
              numberValue6 = numberValue6(flag11)
              if not numberValue6 then
                goto flow_label_88
              end
            end
            numberValue6 = DetachEntity
            flag11 = workValue9
            flag12 = true
            flag14 = true
            numberValue6(flag11, flag12, flag14)
            goto flow_label_122
            ::flow_label_88::
            numberValue6 = IsPedInMeleeCombat
            flag11 = waitCall
            numberValue6 = numberValue6(flag11)
            if numberValue6 then
              numberValue6 = Wait
              flag11 = 500
              numberValue6(flag11)
              numberValue6 = DetachEntity
              flag11 = workValue9
              flag12 = true
              flag14 = true
              numberValue6(flag11, flag12, flag14)
            else
              numberValue6 = IsPedFalling
              flag11 = waitCall
              numberValue6 = numberValue6(flag11)
              if numberValue6 then
                numberValue4 = numberValue4 + 1
                if numberValue4 > 3 then
                  numberValue6 = DetachEntity
                  flag11 = workValue9
                  flag12 = true
                  flag14 = true
                  numberValue6(flag11, flag12, flag14)
                  numberValue4 = 0
                end
              elseif numberValue4 > 0 then
                numberValue4 = numberValue4 - 1
              end
            end
          end
        end
      end
      ::flow_label_122::
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(serverEventCall)
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, serverEventCall, cmgCall3, textValue3, workValue10, flag10, numberValue7
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  serverEventCall = workValue13
  serverEventCall, cmgCall3 = serverEventCall()
  if not serverEventCall then
    textValue3 = notify
    workValue10 = cmgCall3
    -- Beginner: Show a notification to the player.
    textValue3(workValue10)
    return
  end
  textValue3 = RequestClipSet
  workValue10 = dataTable.clipSet
  textValue3(workValue10)
  while true do
    textValue3 = HasClipSetLoaded
    workValue10 = dataTable.clipSet
    textValue3 = textValue3(workValue10)
    if textValue3 then
      break
    end
    textValue3 = Wait
    workValue10 = 10
    textValue3(workValue10)
  end
  textValue3 = SetPedMovementClipset
  workValue10 = arg1
  flag10 = dataTable.clipSet
  numberValue7 = 1.0
  textValue3(workValue10, flag10, numberValue7)
  textValue3 = RemoveClipSet
  workValue10 = dataTable.clipSet
  textValue3(workValue10)
  textValue3 = workValue12
  textValue3()
  textValue3 = true
  flag7 = textValue3
  textValue3 = dataTable.disableSprint
  if textValue3 then
    textValue3 = SetPlayerSprint
    workValue10 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    workValue10 = workValue10()
    flag10 = false
    textValue3(workValue10, flag10)
  end
  textValue3 = workValue4
  textValue3()
  textValue3 = workValue5
  textValue3()
  textValue3 = workValue3
  textValue3()
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, serverEventCall, cmgCall3
  arg1 = flag7
  if arg1 then
    arg1 = workValue15
    arg1()
  end
  arg1 = TriggerServerEvent
  serverEventCall = "895f60bda9"
  cmgCall3 = "crutches"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "895f60bda9".
  arg1(serverEventCall, cmgCall3)
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.RegisterClientCallback
textValue = "e6ffab8f7e"

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, serverEventCall
  arg1 = flag7
  return arg1
end
cmgCall2(textValue, workValue8)
cmgCall2 = RegisterNetEvent
textValue = "4dc930f97a"
-- Beginner: this function handles network event "4dc930f97a".

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, serverEventCall
  arg1 = flag7
  if arg1 then
    arg1 = workValue15
    arg1()
  end
  arg1 = CMG
  arg1 = arg1.removeForcedEquipment
  serverEventCall = "Crutches"
  arg1(serverEventCall)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4dc930f97a".
cmgCall2(textValue, workValue8)
cmgCall2 = RegisterNetEvent
textValue = "0e124fc408"
-- Beginner: this function handles network event "0e124fc408".

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local serverEventCall, cmgCall3, textValue3, workValue10
  serverEventCall = flag7
  if not serverEventCall then
    serverEventCall = workValue6
    serverEventCall()
  end
  serverEventCall = CMG
  serverEventCall = serverEventCall.addForcedEquipment
  cmgCall3 = "Crutches"
  textValue3 = arg1 or textValue3
  if nil == arg1 or not arg1 then
    textValue3 = cmgCall
  end
  workValue10 = workValue7
  serverEventCall(cmgCall3, textValue3, workValue10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0e124fc408".
cmgCall2(textValue, workValue8)
cmgCall2 = AddEventHandler
textValue = "865ab191af"
workValue8 = workValue2
-- Beginner: Register a client-side event handler. Event/command: "865ab191af".
cmgCall2(textValue, workValue8)
cmgCall2 = AddEventHandler
textValue = "cd58811ed9"
workValue8 = workValue2
cmgCall2(textValue, workValue8)
cmgCall2 = AddEventHandler
textValue = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local serverEventCall
  serverEventCall = GetCurrentResourceName
  serverEventCall = serverEventCall()
  if arg1 ~= serverEventCall then
    return
  end
  serverEventCall = flag7
  if serverEventCall then
    serverEventCall = workValue15
    serverEventCall()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall2(textValue, workValue8)
