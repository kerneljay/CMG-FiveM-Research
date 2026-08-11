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
local numberValue, numberValue7, textValue3, numberValue13, flag5, flag6, flag7, dataTable, dataTable2, dataTable3, numberValue2, numberValue3, workValue2, workValue4, workValue6, workValue8, workValue9, workValue11, workValue12, workValue13, eventHandlerRegistration, textValue, cmgCall, textValue2, workValue14
numberValue = 0.1
numberValue7 = 10000
textValue3 = "move_m@injured"
numberValue13 = 110
flag5 = false
flag6 = false
flag7 = false
dataTable = {}
dataTable2 = {}
dataTable.arm = dataTable2
dataTable2 = {}
dataTable.leg = dataTable2
dataTable2 = {}
dataTable.critical = dataTable2
dataTable2 = {}
dataTable3 = {}
numberValue2 = 61163
dataTable3[1] = numberValue2
dataTable2.arm = dataTable3
dataTable3 = {}
numberValue2 = 58271
numberValue3 = 51826
dataTable3[1] = numberValue2
dataTable3[2] = numberValue3
dataTable2.leg = dataTable3
dataTable3 = {}
numberValue2 = 11816
dataTable3[1] = numberValue2
dataTable2.critical = dataTable3
dataTable3 = {}
numberValue2 = 45509
dataTable3[numberValue2] = true
numberValue2 = 61163
dataTable3[numberValue2] = true
numberValue2 = 18905
dataTable3[numberValue2] = true
numberValue2 = 40269
dataTable3[numberValue2] = true
numberValue2 = 28252
dataTable3[numberValue2] = true
numberValue2 = 57005
dataTable3[numberValue2] = true
numberValue2 = {}
numberValue3 = 58271
numberValue2[numberValue3] = true
numberValue3 = 63931
numberValue2[numberValue3] = true
numberValue3 = 14201
numberValue2[numberValue3] = true
numberValue3 = 51826
numberValue2[numberValue3] = true
numberValue3 = 36864
numberValue2[numberValue3] = true
numberValue3 = 52301
numberValue2[numberValue3] = true

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: arg1) ===
function numberValue3(arg1)
  local arg2, arg3, arg4, arg5, cmgCall2, iterator, iterator2, workValue18, flag8
  arg2 = ipairs
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for cmgCall2, iterator in arg2, arg3, arg4, arg5 do
    if iterator then
      iterator2 = DoesParticleFxLoopedExist
      workValue18 = iterator
      iterator2 = iterator2(workValue18)
      if iterator2 then
        iterator2 = StopParticleFxLooped
        workValue18 = iterator
        flag8 = false
        iterator2(workValue18, flag8)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2, arg3) ===
function workValue2(arg1, arg2, arg3)
  local arg4, arg5, cmgCall2, iterator, iterator2, workValue18, flag8, health, workValue, workValue3, workValue5, workValue7, tableHelper, workValue10, numberValue4, numberValue5, numberValue6, numberValue9, numberValue10, numberValue11, numberValue12, flag, flag2, flag3, flag4
  if 0 ~= arg1 then
    arg4 = DoesEntityExist
    arg5 = arg1
    arg4 = arg4(arg5)
    if arg4 then
      goto flow_label_9
    end
  end
  return
  ::flow_label_9::
  arg4 = "core"
  arg5 = "blood_stab"
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadPtfx
  iterator = arg4
  cmgCall2(iterator)
  cmgCall2 = dataTable2
  cmgCall2 = cmgCall2[arg2]
  iterator = arg3 or iterator
  if not arg3 then
    iterator = {}
  end
  iterator2 = ipairs
  workValue18 = cmgCall2
  iterator2, workValue18, flag8, health = iterator2(workValue18)
  for workValue, workValue3 in iterator2, workValue18, flag8, health do
    workValue5 = UseParticleFxAssetNextCall
    workValue7 = arg4
    workValue5(workValue7)
    workValue5 = GetPedBoneIndex
    workValue7 = arg1
    tableHelper = workValue3
    workValue5 = workValue5(workValue7, tableHelper)
    workValue7 = StartParticleFxLoopedOnPedBone
    tableHelper = arg5
    workValue10 = arg1
    numberValue4 = 0.0
    numberValue5 = 0.0
    numberValue6 = 0.0
    numberValue9 = 0.0
    numberValue10 = 0.0
    numberValue11 = 0.0
    numberValue12 = workValue5
    flag = 1.0
    flag2 = false
    flag3 = false
    flag4 = false
    workValue7 = workValue7(tableHelper, workValue10, numberValue4, numberValue5, numberValue6, numberValue9, numberValue10, numberValue11, numberValue12, flag, flag2, flag3, flag4)
    if workValue7 and 0 ~= workValue7 then
      tableHelper = SetParticleFxLoopedFarClipDist
      workValue10 = workValue7
      numberValue4 = 150.0
      tableHelper(workValue10, numberValue4)
    end
    tableHelper = table
    tableHelper = tableHelper.insert
    workValue10 = iterator
    numberValue4 = workValue7
    tableHelper(workValue10, numberValue4)
  end
  return iterator
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1, arg2) ===
function workValue4(arg1, arg2)
  local arg3, arg4, arg5, cmgCall2, iterator, iterator2, workValue18, flag8, health, workValue, workValue3, workValue5, workValue7, tableHelper, workValue10, numberValue4, numberValue5, numberValue6, numberValue9, numberValue10, numberValue11, numberValue12, flag, flag2, flag3
  if 0 ~= arg1 then
    arg3 = DoesEntityExist
    arg4 = arg1
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_9
    end
  end
  return
  ::flow_label_9::
  arg3 = "core"
  arg4 = "ent_sht_blood"
  arg5 = CMG
  arg5 = arg5.loadPtfx
  cmgCall2 = arg3
  arg5(cmgCall2)
  arg5 = dataTable2.critical
  cmgCall2 = arg2 or cmgCall2
  if not arg2 then
    cmgCall2 = {}
  end
  iterator = ipairs
  iterator2 = arg5
  iterator, iterator2, workValue18, flag8 = iterator(iterator2)
  for health, workValue in iterator, iterator2, workValue18, flag8 do
    workValue3 = UseParticleFxAssetNextCall
    workValue5 = arg3
    workValue3(workValue5)
    workValue3 = GetPedBoneIndex
    workValue5 = arg1
    workValue7 = workValue
    workValue3 = workValue3(workValue5, workValue7)
    workValue5 = StartParticleFxLoopedOnPedBone
    workValue7 = arg4
    tableHelper = arg1
    workValue10 = 0.0
    numberValue4 = 0.0
    numberValue5 = 0.0
    numberValue6 = 0.0
    numberValue9 = 0.0
    numberValue10 = 0.0
    numberValue11 = workValue3
    numberValue12 = 1.0
    flag = false
    flag2 = false
    flag3 = false
    workValue5 = workValue5(workValue7, tableHelper, workValue10, numberValue4, numberValue5, numberValue6, numberValue9, numberValue10, numberValue11, numberValue12, flag, flag2, flag3)
    if workValue5 and 0 ~= workValue5 then
      workValue7 = SetParticleFxLoopedFarClipDist
      tableHelper = workValue5
      workValue10 = 150.0
      workValue7(tableHelper, workValue10)
    end
    workValue7 = table
    workValue7 = workValue7.insert
    tableHelper = cmgCall2
    workValue10 = workValue5
    workValue7(tableHelper, workValue10)
  end
  return cmgCall2
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = dataTable
  arg3 = {}
  arg2[arg1] = arg3
  arg2 = workValue2
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = arg1
  arg5 = dataTable
  arg5 = arg5[arg1]
  arg2(arg3, arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2, arg3
  arg1 = {}
  dataTable.critical = arg1
  arg1 = workValue4
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = dataTable.critical
  arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3, arg4
  arg1 = CMG
  arg1 = arg1.loadClipSet
  arg2 = textValue3
  arg1(arg2)
  arg1 = SetPedMovementClipset
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = textValue3
  arg4 = 1.0
  arg1(arg2, arg3, arg4)
  arg1 = RemoveClipSet
  arg2 = textValue3
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = flag5
  if not arg1 then
    return
  end
  arg1 = false
  flag5 = arg1
  arg1 = false
  flag6 = arg1
  arg1 = false
  flag7 = arg1
  arg1 = numberValue3
  arg2 = dataTable.arm
  arg1(arg2)
  arg1 = numberValue3
  arg2 = dataTable.leg
  arg1(arg2)
  arg1 = numberValue3
  arg2 = dataTable.critical
  arg1(arg2)
  arg1 = {}
  dataTable.arm = arg1
  arg1 = {}
  dataTable.leg = arg1
  arg1 = {}
  dataTable.critical = arg1
  arg1 = ResetPedMovementClipset
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = 1.0
  arg1(arg2, arg3)
  arg1 = TriggerServerEvent
  arg2 = "99b642e30b"
  arg3 = false
  arg4 = false
  arg5 = false
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "99b642e30b".
  arg1(arg2, arg3, arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
function workValue12()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_13
    end
  end
  arg2 = nil
  arg3 = nil
  return arg2, arg3
  ::flow_label_13::
  arg2 = GetPedLastDamageBone
  arg3 = arg1
  arg2, arg3 = arg2(arg3)
  if not arg2 or not arg3 then
    arg4 = nil
    arg5 = nil
    return arg4, arg5
  end
  arg4 = dataTable3
  arg4 = arg4[arg3]
  if arg4 then
    arg4 = true
    arg5 = false
    return arg4, arg5
  end
  arg4 = numberValue2
  arg4 = arg4[arg3]
  if arg4 then
    arg4 = false
    arg5 = true
    return arg4, arg5
  end
  arg4 = nil
  arg5 = nil
  return arg4, arg5
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg1, arg2) ===
function workValue13(arg1, arg2)
  local arg3, arg4, arg5, cmgCall2, iterator, iterator2, workValue18, flag8
  arg3 = flag5
  if arg3 then
    return
  end
  arg3 = true
  flag5 = arg3
  if nil ~= arg1 and nil ~= arg2 then
    flag6 = arg1
    flag7 = arg2
  else
    arg3 = true
    flag6 = arg3
    arg3 = false
    flag7 = arg3
  end
  arg3 = workValue9
  arg3()
  arg3 = flag6
  if arg3 then
    arg3 = workValue6
    arg4 = "arm"
    arg3(arg4)
  end
  arg3 = flag7
  if arg3 then
    arg3 = workValue6
    arg4 = "leg"
    arg3(arg4)
  end
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  if 0 ~= arg3 then
    arg4 = DoesEntityExist
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = NetworkGetNetworkIdFromEntity
      arg5 = arg3
      arg4 = arg4(arg5)
      if arg4 then
        goto flow_label_48
      end
    end
  end
  arg4 = 0
  ::flow_label_48::
  arg5 = TriggerServerEvent
  cmgCall2 = "99b642e30b"
  iterator = true
  iterator2 = flag6
  workValue18 = flag7
  flag8 = arg4
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "99b642e30b".
  arg5(cmgCall2, iterator, iterator2, workValue18, flag8)
  arg5 = notify
  cmgCall2 = "~r~You are bleeding, seek medical attention as soon as possible!"
  -- Beginner: Show a notification to the player.
  arg5(cmgCall2)
end
eventHandlerRegistration = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, arg4, arg5
  while true do
    arg1 = Wait
    arg2 = 2000
    arg1(arg2)
    arg1 = flag5
    if arg1 then
      arg1 = CMG
      arg1 = arg1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      arg2 = GetEntityHealth
      arg3 = arg1
      -- Beginner: result below is health.
      arg2 = arg2(arg3)
      if 0 ~= arg1 then
        arg3 = IsEntityDead
        arg4 = arg1
        arg3 = arg3(arg4)
        if not (arg3 or arg2 <= 100) then
          goto flow_label_25
        end
      end
      arg3 = workValue11
      arg3()
      goto flow_label_64
      ::flow_label_25::
      arg3 = numberValue13
      arg3 = arg2 <= arg3
      arg4 = flag6
      if arg4 then
        arg4 = numberValue3
        arg5 = dataTable.arm
        arg4(arg5)
        arg4 = workValue6
        arg5 = "arm"
        arg4(arg5)
      end
      arg4 = flag7
      if arg4 then
        arg4 = numberValue3
        arg5 = dataTable.leg
        arg4(arg5)
        arg4 = workValue6
        arg5 = "leg"
        arg4(arg5)
      end
      if arg3 then
        arg4 = numberValue3
        arg5 = dataTable.critical
        arg4(arg5)
        arg4 = workValue8
        arg4()
      else
        arg4 = numberValue3
        arg5 = dataTable.critical
        arg4(arg5)
        arg4 = {}
        dataTable.critical = arg4
      end
      arg4 = workValue9
      arg4()
    end
    ::flow_label_64::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration(textValue)
eventHandlerRegistration = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, arg4, arg5, cmgCall2
  while true do
    arg1 = Wait
    arg2 = numberValue7
    arg1(arg2)
    arg1 = flag5
    if arg1 then
      arg1 = CMG
      arg1 = arg1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      if 0 ~= arg1 then
        arg2 = IsEntityDead
        arg3 = arg1
        arg2 = arg2(arg3)
        if not arg2 then
          arg2 = GetEntityHealth
          arg3 = arg1
          -- Beginner: result below is health.
          arg2 = arg2(arg3)
          if not (arg2 <= 100) then
            goto flow_label_25
          end
        end
      end
      arg2 = workValue11
      arg2()
      goto flow_label_42
      ::flow_label_25::
      arg2 = GetEntityHealth
      arg3 = arg1
      -- Beginner: result below is health.
      arg2 = arg2(arg3)
      arg3 = math
      arg3 = arg3.max
      arg4 = 100
      arg5 = arg2 - 1
      arg3 = arg3(arg4, arg5)
      arg4 = SetEntityHealth
      arg5 = arg1
      cmgCall2 = arg3
      arg4(arg5, cmgCall2)
      if arg3 <= 100 then
        arg4 = workValue11
        arg4()
      end
    end
    ::flow_label_42::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration(textValue)
eventHandlerRegistration = AddEventHandler
textValue = "91ac1508c7"
-- Beginner: this function runs when client event "91ac1508c7" fires.

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: none) ===
function cmgCall()
  local arg1, arg2
  arg1 = flag5
  if arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getClientFaction
  arg1 = arg1()
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.isClientClockedOnOrganisation
    arg1 = arg1()
    if not arg1 then
      goto flow_label_24
    end
  end
  arg1 = math
  arg1 = arg1.random
  arg1 = arg1()
  arg2 = numberValue
  if arg1 < arg2 then
    arg1 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION: arg2() ===
    function arg2()
      local waitCall, numberValue8, workValue15, workValue16, workValue17
      waitCall = Wait
      numberValue8 = 0
      waitCall(numberValue8)
      waitCall = workValue12
      waitCall, numberValue8 = waitCall()
      workValue15 = workValue13
      workValue16 = waitCall
      workValue17 = numberValue8
      workValue15(workValue16, workValue17)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg1(arg2)
  end
  ::flow_label_24::
end
-- Beginner: Register a client-side event handler. Event/command: "91ac1508c7".
eventHandlerRegistration(textValue, cmgCall)
eventHandlerRegistration = {}
textValue = 15
cmgCall = RegisterNetEvent
textValue2 = "b8bd2bf5c8"
-- Beginner: this function handles network event "b8bd2bf5c8".

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue14(arg1, arg2, arg3, arg4, arg5)
  local cmgCall2, iterator, iterator2, workValue18, flag8, health, workValue, workValue3, workValue5, workValue7, tableHelper
  cmgCall2 = GetPlayerServerId
  iterator = PlayerId
  iterator, iterator2, workValue18, flag8, health, workValue, workValue3, workValue5, workValue7, tableHelper = iterator()
  -- Beginner: result below is serverId.
  cmgCall2 = cmgCall2(iterator, iterator2, workValue18, flag8, health, workValue, workValue3, workValue5, workValue7, tableHelper)
  if arg1 == cmgCall2 then
    return
  end
  if arg2 and arg5 and 0 ~= arg5 then
    iterator = {}
    iterator.fromArm = arg3
    iterator.fromLeg = arg4
    iterator.pedNetId = arg5
    iterator2 = {}
    iterator.arm = iterator2
    iterator2 = {}
    iterator.leg = iterator2
    iterator2 = {}
    iterator.critical = iterator2
    iterator.retries = 0
    iterator2 = eventHandlerRegistration
    iterator2[arg1] = iterator
    iterator2 = NetworkDoesEntityExistWithNetworkId
    workValue18 = arg5
    iterator2 = iterator2(workValue18)
    if iterator2 then
      workValue18 = NetworkGetEntityFromNetworkId
      flag8 = arg5
      workValue18 = workValue18(flag8)
      flag8 = DoesEntityExist
      health = workValue18
      flag8 = flag8(health)
      if flag8 then
        flag8 = IsEntityDead
        health = workValue18
        flag8 = flag8(health)
        flag8 = 0 ~= workValue18 and flag8
      end
      if flag8 then
        health = GetEntityHealth
        workValue = workValue18
        -- Beginner: result below is health.
        health = health(workValue)
        workValue = numberValue13
        workValue = health <= workValue
        if arg3 then
          workValue3 = workValue2
          workValue5 = workValue18
          workValue7 = "arm"
          tableHelper = iterator.arm
          workValue3(workValue5, workValue7, tableHelper)
        end
        if arg4 then
          workValue3 = workValue2
          workValue5 = workValue18
          workValue7 = "leg"
          tableHelper = iterator.leg
          workValue3(workValue5, workValue7, tableHelper)
        end
        if workValue then
          workValue3 = workValue4
          workValue5 = workValue18
          workValue7 = iterator.critical
          workValue3(workValue5, workValue7)
        end
        iterator.retries = 0
      end
    end
  else
    iterator = eventHandlerRegistration
    iterator = iterator[arg1]
    if iterator then
      iterator2 = numberValue3
      workValue18 = iterator.arm
      iterator2(workValue18)
      iterator2 = numberValue3
      workValue18 = iterator.leg
      iterator2(workValue18)
      iterator2 = numberValue3
      workValue18 = iterator.critical
      iterator2(workValue18)
      iterator2 = eventHandlerRegistration
      iterator2[arg1] = nil
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b8bd2bf5c8".
cmgCall(textValue2, workValue14)
cmgCall = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4, arg5, cmgCall2, iterator, iterator2, workValue18, flag8, health, workValue, workValue3, workValue5
  while true do
    arg1 = Wait
    arg2 = 2000
    arg1(arg2)
    arg1 = pairs
    arg2 = eventHandlerRegistration
    arg1, arg2, arg3, arg4 = arg1(arg2)
    for arg5, cmgCall2 in arg1, arg2, arg3, arg4 do
      iterator = cmgCall2.pedNetId
      if not iterator or 0 == iterator then
        iterator2 = eventHandlerRegistration
        iterator2[arg5] = nil
      else
        iterator2 = NetworkDoesEntityExistWithNetworkId
        workValue18 = iterator
        iterator2 = iterator2(workValue18)
        if not iterator2 then
          iterator2 = cmgCall2.retries
          if not iterator2 then
            iterator2 = 0
          end
          iterator2 = iterator2 + 1
          cmgCall2.retries = iterator2
          iterator2 = cmgCall2.retries
          if not iterator2 then
            iterator2 = 0
          end
          workValue18 = textValue
          if iterator2 >= workValue18 then
            iterator2 = eventHandlerRegistration
            iterator2[arg5] = nil
          end
        else
          iterator2 = NetworkGetEntityFromNetworkId
          workValue18 = iterator
          iterator2 = iterator2(workValue18)
          if 0 ~= iterator2 then
            workValue18 = DoesEntityExist
            flag8 = iterator2
            workValue18 = workValue18(flag8)
            if workValue18 then
              workValue18 = IsEntityDead
              flag8 = iterator2
              workValue18 = workValue18(flag8)
              if not workValue18 then
                goto flow_label_56
              end
            end
          end
          workValue18 = eventHandlerRegistration
          workValue18[arg5] = nil
          goto flow_label_105
          ::flow_label_56::
          workValue18 = GetEntityHealth
          flag8 = iterator2
          -- Beginner: result below is health.
          workValue18 = workValue18(flag8)
          flag8 = numberValue13
          flag8 = workValue18 <= flag8
          health = numberValue3
          workValue = cmgCall2.arm
          health(workValue)
          health = numberValue3
          workValue = cmgCall2.leg
          health(workValue)
          health = numberValue3
          workValue = cmgCall2.critical
          health(workValue)
          health = {}
          cmgCall2.arm = health
          health = {}
          cmgCall2.leg = health
          health = {}
          cmgCall2.critical = health
          health = cmgCall2.fromArm
          if health then
            health = workValue2
            workValue = iterator2
            workValue3 = "arm"
            workValue5 = cmgCall2.arm
            health(workValue, workValue3, workValue5)
          end
          health = cmgCall2.fromLeg
          if health then
            health = workValue2
            workValue = iterator2
            workValue3 = "leg"
            workValue5 = cmgCall2.leg
            health(workValue, workValue3, workValue5)
          end
          if flag8 then
            health = workValue4
            workValue = iterator2
            workValue3 = cmgCall2.critical
            health(workValue, workValue3)
          end
          cmgCall2.retries = 0
        end
      end
      ::flow_label_105::
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall(textValue2)
cmgCall = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3
  while true do
    arg1 = Wait
    arg2 = 500
    arg1(arg2)
    arg1 = flag5
    if arg1 then
      arg1 = CMG
      arg1 = arg1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      if 0 ~= arg1 then
        arg2 = IsEntityDead
        arg3 = arg1
        arg2 = arg2(arg3)
        if not arg2 then
          arg2 = GetEntityHealth
          arg3 = arg1
          -- Beginner: result below is health.
          arg2 = arg2(arg3)
          if not (arg2 <= 100) then
            goto flow_label_24
          end
        end
      end
      arg2 = workValue11
      arg2()
    end
    ::flow_label_24::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall(textValue2)
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2
  arg1 = workValue11
  arg1()
end
cmgCall.stopBleeding = textValue2
cmgCall = CMG
cmgCall = cmgCall.RegisterClientCallback
textValue2 = "79d0fa347c"

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2
  arg1 = {}
  arg2 = flag5
  arg1.bleeding = arg2
  arg2 = flag6
  arg1.fromArm = arg2
  arg2 = flag7
  arg1.fromLeg = arg2
  return arg1
end
cmgCall(textValue2, workValue14)
cmgCall = RegisterNetEvent
textValue2 = "5dc72f6904"
-- Beginner: this function handles network event "5dc72f6904".

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2
  arg1 = workValue11
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5dc72f6904".
cmgCall(textValue2, workValue14)
cmgCall = CMG
-- Beginner: this function handles network event "5dc72f6904".

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2
  arg1 = workValue13
  arg1()
end
cmgCall.startBleeding = textValue2
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2
  arg1 = flag5
  return arg1
end
cmgCall.isBleeding = textValue2
