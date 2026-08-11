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
local cmgCall, dataTable, cmgCall4, dataTable2, dataTable3, dataTable4, workValue13, workValue15, workValue16, workValue17, workValue, workValue3, workValue4, workValue5, threadCall, workValue7, cmgCall3, textValue, workValue9
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/cfg_casts"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
if not cmgCall then
  cmgCall = {}
end
dataTable = cmgCall.casts
if not dataTable then
  dataTable = {}
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.loadModule
dataTable2 = "cfg/cfg_forcedequipment"
-- Beginner: result below is config.
cmgCall4 = cmgCall4(dataTable2)
cmgCall4 = cmgCall4.types
cmgCall4 = cmgCall4.casts
cmgCall4 = cmgCall4.defaultDurationSeconds
dataTable2 = {}
dataTable3 = {}
dataTable4 = {}
workValue13 = nil

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  arg3 = cmgCall.hashMale
  if arg2 == arg3 then
    arg3 = "m"
    return arg3
  end
  arg3 = cmgCall.hashFemale
  if arg2 == arg3 then
    arg3 = "f"
    return arg3
  end
  arg3 = "m"
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue16; parameters: arg1) ===
function workValue16(arg1)
  local arg2, arg3, arg4
  arg2 = HasAnimDictLoaded
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = true
    return arg2
  end
  arg2 = RequestAnimDict
  arg3 = arg1
  arg2(arg3)
  arg2 = 0
  while true do
    arg3 = HasAnimDictLoaded
    arg4 = arg1
    arg3 = arg3(arg4)
    if not (not arg3 and arg2 < 100) then
      break
    end
    arg3 = Wait
    arg4 = 10
    arg3(arg4)
    arg2 = arg2 + 1
  end
  arg3 = HasAnimDictLoaded
  arg4 = arg1
  return arg3(arg4)
end

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4
  arg2 = HasClipSetLoaded
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = true
    return arg2
  end
  arg2 = RequestClipSet
  arg3 = arg1
  arg2(arg3)
  arg2 = 0
  while true do
    arg3 = HasClipSetLoaded
    arg4 = arg1
    arg3 = arg3(arg4)
    if not (not arg3 and arg2 < 100) then
      break
    end
    arg3 = Wait
    arg4 = 10
    arg3(arg4)
    arg2 = arg2 + 1
  end
  arg3 = HasClipSetLoaded
  arg4 = arg1
  return arg3(arg4)
end

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, arg4, serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2
  arg1 = CMG
  arg1 = arg1.removeForcedEquipment
  arg2 = "Cast"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.removeForcedEquipment
  arg2 = "Bandage"
  arg1(arg2)
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = nil
  arg3 = nil
  arg4 = pairs
  serverEventCall = dataTable4
  arg4, serverEventCall, textValue3, labelValue = arg4(serverEventCall)
  for cmgCall5, textValue4 in arg4, serverEventCall, textValue3, labelValue do
    if textValue4 > arg1 and (nil == arg3 or textValue4 < arg3) then
      arg2 = cmgCall5
      arg3 = textValue4
    end
  end
  if arg2 and arg3 then
    arg4 = arg3 - arg1
    arg4 = arg4 / 1000

    -- === HELPER FUNCTION: serverEventCall() ===
    function serverEventCall()
      local waitCall, numberValue5
      numberValue5 = arg2
      waitCall = dataTable4
      waitCall[numberValue5] = nil
      waitCall = workValue13
      numberValue5 = arg2
      waitCall(numberValue5)
      waitCall = workValue
      waitCall()
    end
    textValue3 = dataTable
    textValue3 = textValue3[arg2]
    if textValue3 then
      labelValue = textValue3.label
      if labelValue then
        labelValue = textValue3.label
        cmgCall5 = labelValue
        labelValue = labelValue.find
        textValue4 = "Bandage"
        labelValue = labelValue(cmgCall5, textValue4)
        if labelValue then
          labelValue = "Bandage"
          if labelValue then
            goto flow_label_53
          end
        end
      end
    end
    labelValue = "Cast"
    ::flow_label_53::
    cmgCall5 = CMG
    cmgCall5 = cmgCall5.addForcedEquipment
    textValue4 = labelValue
    workValue18 = arg4
    workValue2 = serverEventCall
    cmgCall5(textValue4, workValue18, workValue2)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4, serverEventCall, textValue3, labelValue, cmgCall5, textValue4
  if arg2 then
    arg3 = DoesEntityExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_9
    end
  end
  return
  ::flow_label_9::
  arg3 = tostring
  arg4 = arg1
  arg3 = arg3(arg4)
  arg4 = NetworkGetNetworkIdFromEntity
  serverEventCall = arg2
  arg4 = arg4(serverEventCall)
  if arg4 and 0 ~= arg4 then
    serverEventCall = TriggerServerEvent
    textValue3 = "ce24d993d8"
    labelValue = "cast"
    cmgCall5 = arg4
    textValue4 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce24d993d8".
    serverEventCall(textValue3, labelValue, cmgCall5, textValue4)
  else
    serverEventCall = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
    function textValue3()
      local waitCall, numberValue5, textValue2, numberValue11, workValue11
      waitCall = Wait
      numberValue5 = 100
      waitCall(numberValue5)
      waitCall = arg2
      if waitCall then
        waitCall = DoesEntityExist
        numberValue5 = arg2
        waitCall = waitCall(numberValue5)
        if waitCall then
          waitCall = NetworkGetNetworkIdFromEntity
          numberValue5 = arg2
          waitCall = waitCall(numberValue5)
          arg4 = waitCall
          waitCall = arg4
          if waitCall then
            waitCall = arg4
            if 0 ~= waitCall then
              waitCall = TriggerServerEvent
              numberValue5 = "ce24d993d8"
              textValue2 = "cast"
              numberValue11 = arg4
              workValue11 = arg3
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce24d993d8".
              waitCall(numberValue5, textValue2, numberValue11, workValue11)
            end
          end
        end
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    serverEventCall(textValue3)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1, arg2) ===
function workValue4(arg1, arg2)
  local arg3, arg4, serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2, numberValue
  arg3 = dataTable4
  arg3[arg1] = nil
  arg3 = dataTable2
  arg3 = arg3[arg1]
  if arg3 then
    arg4 = DoesEntityExist
    serverEventCall = arg3
    arg4 = arg4(serverEventCall)
    if arg4 then
      arg4 = DetachEntity
      serverEventCall = arg3
      textValue3 = false
      labelValue = false
      arg4(serverEventCall, textValue3, labelValue)
      arg4 = DeleteEntity
      serverEventCall = arg3
      -- Beginner: Delete a GTA entity.
      arg4(serverEventCall)
      arg4 = dataTable2
      arg4[arg1] = nil
    end
  end
  arg4 = TriggerServerEvent
  serverEventCall = "607b2e0073"
  textValue3 = "cast"
  labelValue = tostring
  cmgCall5 = arg1
  labelValue, cmgCall5, textValue4, workValue18, workValue2, numberValue = labelValue(cmgCall5)
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "607b2e0073".
  arg4(serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2, numberValue)
  arg4 = dataTable
  arg4 = arg4[arg1]
  if arg4 then
    serverEventCall = arg4.anim
    if serverEventCall then
      serverEventCall = CMG
      serverEventCall = serverEventCall.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      serverEventCall = serverEventCall()
      textValue3 = workValue15
      labelValue = serverEventCall
      textValue3 = textValue3(labelValue)
      labelValue = arg4.anim
      labelValue = labelValue[textValue3]
      if labelValue then
        cmgCall5 = StopAnimTask
        textValue4 = serverEventCall
        workValue18 = labelValue[1]
        workValue2 = labelValue[2]
        numberValue = 1.0
        cmgCall5(textValue4, workValue18, workValue2, numberValue)
      end
    end
  end
  serverEventCall = dataTable3
  serverEventCall = serverEventCall[arg1]
  if serverEventCall then
    serverEventCall = ResetPedMovementClipset
    textValue3 = CMG
    textValue3 = textValue3.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    textValue3 = textValue3()
    labelValue = 1.0
    serverEventCall(textValue3, labelValue)
    serverEventCall = ResetPedWeaponMovementClipset
    textValue3 = CMG
    textValue3 = textValue3.getPlayerPed
    textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2, numberValue = textValue3()
    serverEventCall(textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2, numberValue)
    serverEventCall = ResetPedStrafeClipset
    textValue3 = CMG
    textValue3 = textValue3.getPlayerPed
    textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2, numberValue = textValue3()
    serverEventCall(textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2, numberValue)
    serverEventCall = dataTable3
    serverEventCall[arg1] = nil
    serverEventCall = TriggerEvent
    textValue3 = "865ab191af"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "865ab191af".
    serverEventCall(textValue3)
  end
  if not arg2 then
    serverEventCall = TriggerServerEvent
    textValue3 = "c37f2f9014"
    labelValue = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c37f2f9014".
    serverEventCall(textValue3, labelValue)
  end
  serverEventCall = workValue
  serverEventCall()
end
workValue13 = workValue4

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local arg2, arg3, arg4, serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2, numberValue, numberValue2, workValue6, hashValue, cmgCall2, numberValue3, workValue8, numberValue4, workValue10, flag, flag2, flag3, flag4, numberValue6, numberValue7, numberValue8, numberValue9, flag5, flag6, flag7, flag8, numberValue10, flag9
  arg2 = dataTable
  arg2 = arg2[arg1]
  if not arg2 then
    arg3 = false
    return arg3
  end
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = CMG
  arg4 = arg4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg4 = arg4()
  serverEventCall = workValue15
  textValue3 = arg3
  serverEventCall = serverEventCall(textValue3)
  textValue3 = arg2[serverEventCall]
  if not textValue3 then
    labelValue = false
    return labelValue
  end
  labelValue = textValue3[1]
  cmgCall5 = textValue3[2]
  textValue4 = textValue3[3]
  workValue18 = textValue3[4]
  workValue2 = textValue3[5]
  numberValue = textValue3[6]
  numberValue2 = textValue3[7]
  workValue6 = textValue3[8]
  hashValue = GetHashKey
  cmgCall2 = labelValue
  -- Beginner: result below is hash.
  hashValue = hashValue(cmgCall2)
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadModel
  numberValue3 = hashValue
  cmgCall2 = cmgCall2(numberValue3)
  if not cmgCall2 then
    numberValue3 = RequestModel
    workValue8 = hashValue
    numberValue3(workValue8)
    numberValue3 = 0
    while true do
      workValue8 = HasModelLoaded
      numberValue4 = hashValue
      workValue8 = workValue8(numberValue4)
      if workValue8 then
        break
      end
      workValue8 = 150
      if not (numberValue3 < workValue8) then
        break
      end
      workValue8 = Wait
      numberValue4 = 10
      workValue8(numberValue4)
      workValue8 = RequestModel
      numberValue4 = hashValue
      workValue8(numberValue4)
      numberValue3 = numberValue3 + 1
    end
    workValue8 = HasModelLoaded
    numberValue4 = hashValue
    workValue8 = workValue8(numberValue4)
    if workValue8 then
      cmgCall2 = hashValue
    end
  end
  if not cmgCall2 then
    numberValue3 = notify
    workValue8 = "~r~Cast model not available. Ensure plastercasts (or esx_plaster_cast) resource is started."
    -- Beginner: Show a notification to the player.
    numberValue3(workValue8)
    numberValue3 = false
    return numberValue3
  end
  numberValue3 = CMG
  numberValue3 = numberValue3.requestEntitySpawn
  workValue8 = "cast_prop"
  numberValue4 = arg1
  numberValue3(workValue8, numberValue4)
  numberValue3 = CreateObject
  workValue8 = hashValue
  numberValue4 = arg4.x
  workValue10 = arg4.y
  flag = arg4.z
  flag2 = true
  flag3 = true
  flag4 = false
  -- Beginner: result below is objectEntity.
  numberValue3 = numberValue3(workValue8, numberValue4, workValue10, flag, flag2, flag3, flag4)
  if numberValue3 then
    workValue8 = DoesEntityExist
    numberValue4 = numberValue3
    workValue8 = workValue8(numberValue4)
    if workValue8 then
      goto flow_label_98
    end
  end
  workValue8 = notify
  numberValue4 = "~r~Failed to create cast."
  -- Beginner: Show a notification to the player.
  workValue8(numberValue4)
  workValue8 = false
  return workValue8
  ::flow_label_98::
  workValue8 = GetPedBoneIndex
  numberValue4 = arg3
  workValue10 = cmgCall5
  workValue8 = workValue8(numberValue4, workValue10)
  numberValue4 = SetModelAsNoLongerNeeded
  workValue10 = hashValue
  numberValue4(workValue10)
  numberValue4 = SetEntityCollision
  workValue10 = numberValue3
  flag = false
  flag2 = false
  numberValue4(workValue10, flag, flag2)
  numberValue4 = SetEntityCompletelyDisableCollision
  workValue10 = numberValue3
  flag = false
  flag2 = false
  numberValue4(workValue10, flag, flag2)
  numberValue4 = AttachEntityToEntity
  workValue10 = numberValue3
  flag = arg3
  flag2 = workValue8
  flag3 = textValue4
  flag4 = workValue18
  numberValue6 = workValue2
  numberValue7 = numberValue
  numberValue8 = numberValue2
  numberValue9 = workValue6
  flag5 = true
  flag6 = true
  flag7 = false
  flag8 = true
  numberValue10 = 1
  flag9 = true
  -- Beginner: Attach one entity to another entity.
  numberValue4(workValue10, flag, flag2, flag3, flag4, numberValue6, numberValue7, numberValue8, numberValue9, flag5, flag6, flag7, flag8, numberValue10, flag9)
  numberValue4 = dataTable2
  numberValue4[arg1] = numberValue3
  numberValue4 = workValue3
  workValue10 = arg1
  flag = numberValue3
  numberValue4(workValue10, flag)
  numberValue4 = arg2.anim
  if numberValue4 then
    numberValue4 = arg2.anim
    numberValue4 = numberValue4[serverEventCall]
    if numberValue4 then
      workValue10 = workValue16
      flag = numberValue4[1]
      workValue10 = workValue10(flag)
      if workValue10 then
        workValue10 = TaskPlayAnim
        flag = arg3
        flag2 = numberValue4[1]
        flag3 = numberValue4[2]
        flag4 = 1.0
        numberValue6 = -1.0
        numberValue7 = -1
        numberValue8 = 49
        numberValue9 = 0
        flag5 = false
        flag6 = false
        flag7 = false
        -- Beginner: Play an animation on a ped.
        workValue10(flag, flag2, flag3, flag4, numberValue6, numberValue7, numberValue8, numberValue9, flag5, flag6, flag7)
      end
    end
  end
  numberValue4 = arg2.clipset
  if numberValue4 then
    numberValue4 = workValue17
    workValue10 = arg2.clipset
    numberValue4 = numberValue4(workValue10)
    if numberValue4 then
      numberValue4 = SetPedMovementClipset
      workValue10 = arg3
      flag = arg2.clipset
      flag2 = 1.0
      numberValue4(workValue10, flag, flag2)
      numberValue4 = dataTable3
      numberValue4[arg1] = true
      numberValue4 = RemoveClipSet
      workValue10 = arg2.clipset
      numberValue4(workValue10)
    end
  end
  numberValue4 = true
  return numberValue4
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2, arg3, arg4, serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2, numberValue, numberValue2
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = IsEntityDead
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      goto flow_label_12
    end
  end
  return
  ::flow_label_12::
  arg2 = {}
  arg3 = pairs
  arg4 = dataTable3
  arg3, arg4, serverEventCall, textValue3 = arg3(arg4)
  for labelValue in arg3, arg4, serverEventCall, textValue3 do
    cmgCall5 = #arg2
    cmgCall5 = cmgCall5 + 1
    arg2[cmgCall5] = labelValue
  end
  arg3 = #arg2
  if 0 == arg3 then
    return
  end
  arg3 = table
  arg3 = arg3.sort
  arg4 = arg2
  arg3(arg4)
  arg3 = ipairs
  arg4 = arg2
  arg3, arg4, serverEventCall, textValue3 = arg3(arg4)
  for labelValue, cmgCall5 in arg3, arg4, serverEventCall, textValue3 do
    textValue4 = dataTable
    textValue4 = textValue4[cmgCall5]
    if textValue4 then
      workValue18 = textValue4.clipset
      if workValue18 then
        workValue18 = HasClipSetLoaded
        workValue2 = textValue4.clipset
        workValue18 = workValue18(workValue2)
        if not workValue18 then
          workValue18 = RequestClipSet
          workValue2 = textValue4.clipset
          workValue18(workValue2)
        else
          workValue18 = SetPedMovementClipset
          workValue2 = arg1
          numberValue = textValue4.clipset
          numberValue2 = 1.0
          workValue18(workValue2, numberValue, numberValue2)
        end
      end
    end
  end
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2
  while true do
    arg1 = Wait
    arg2 = 100
    arg1(arg2)
    arg1 = next
    arg2 = dataTable3
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = workValue5
      arg1()
      arg1 = TriggerEvent
      arg2 = "cd58811ed9"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "cd58811ed9".
      arg1(arg2)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(workValue7)
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, arg4, serverEventCall
  while true do
    arg1 = next
    arg2 = dataTable2
    arg1 = arg1(arg2)
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
          arg2 = IsPedInAnyVehicle
          arg3 = arg1
          arg4 = false
          arg2 = arg2(arg3, arg4)
          if not arg2 then
            arg2 = DisableControlAction
            arg3 = 0
            arg4 = 22
            serverEventCall = true
            arg2(arg3, arg4, serverEventCall)
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(workValue7)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1) ===
function threadCall(arg1)
  local arg2, arg3
  arg2 = dataTable2
  arg2 = arg2[arg1]
  arg2 = DoesEntityExist
  arg3 = dataTable2
  arg3 = arg3[arg1]
  arg2 = nil ~= arg2 and arg2
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2, arg3, arg4, serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2
  arg2 = {}
  dataTable4 = arg2
  arg2 = CMG
  arg2 = arg2.removeForcedEquipment
  arg3 = "Cast"
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.removeForcedEquipment
  arg3 = "Bandage"
  arg2(arg3)
  arg2 = {}
  arg3 = pairs
  arg4 = dataTable2
  arg3, arg4, serverEventCall, textValue3 = arg3(arg4)
  for labelValue in arg3, arg4, serverEventCall, textValue3 do
    cmgCall5 = #arg2
    cmgCall5 = cmgCall5 + 1
    arg2[cmgCall5] = labelValue
  end
  arg3 = ipairs
  arg4 = arg2
  arg3, arg4, serverEventCall, textValue3 = arg3(arg4)
  for labelValue, cmgCall5 in arg3, arg4, serverEventCall, textValue3 do
    textValue4 = workValue13
    workValue18 = cmgCall5
    workValue2 = arg1
    textValue4(workValue18, workValue2)
  end
  arg3 = ResetPedMovementClipset
  arg4 = CMG
  arg4 = arg4.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  serverEventCall = 1.0
  arg3(arg4, serverEventCall)
  arg3 = ResetPedWeaponMovementClipset
  arg4 = CMG
  arg4 = arg4.getPlayerPed
  arg4, serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2 = arg4()
  arg3(arg4, serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2)
  arg3 = ResetPedStrafeClipset
  arg4 = CMG
  arg4 = arg4.getPlayerPed
  arg4, serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2 = arg4()
  arg3(arg4, serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2)
  arg3 = {}
  dataTable3 = arg3
  arg3 = TriggerEvent
  arg4 = "865ab191af"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "865ab191af".
  arg3(arg4)
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.RegisterClientCallback
textValue = "a20b2cf44e"

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3
  arg2 = threadCall
  arg3 = arg1
  return arg2(arg3)
end
cmgCall3(textValue, workValue9)
cmgCall3 = RegisterNetEvent
textValue = "2b2bfb838d"
-- Beginner: this function handles network event "2b2bfb838d".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2) ===
function workValue9(arg1, arg2)
  local arg3, arg4, serverEventCall, textValue3, labelValue, cmgCall5
  arg3 = dataTable
  arg3 = arg3[arg1]
  if not arg3 then
    return
  end
  arg3 = threadCall
  arg4 = arg1
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = workValue13
    arg4 = arg1
    arg3(arg4)
    arg3 = notify
    arg4 = "~g~Cast removed."
    -- Beginner: Show a notification to the player.
    arg3(arg4)
  else
    arg3 = workValue4
    arg4 = arg1
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = arg2 or arg3
      if not arg2 then
        arg3 = cmgCall4
      end
      arg4 = dataTable4
      serverEventCall = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      serverEventCall = serverEventCall()
      textValue3 = arg3 * 1000
      serverEventCall = serverEventCall + textValue3
      arg4[arg1] = serverEventCall
      arg4 = workValue
      arg4()
      arg4 = dataTable
      arg4 = arg4[arg1]
      if arg4 then
        arg4 = dataTable
        arg4 = arg4[arg1]
        arg4 = arg4.label
        if arg4 then
          goto flow_label_46
        end
      end
      arg4 = arg1
      ::flow_label_46::
      serverEventCall = notify
      textValue3 = "~g~"
      labelValue = arg4
      cmgCall5 = " applied."
      textValue3 = textValue3 .. labelValue .. cmgCall5
      -- Beginner: Show a notification to the player.
      serverEventCall(textValue3)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2b2bfb838d".
cmgCall3(textValue, workValue9)
cmgCall3 = RegisterNetEvent
textValue = "f8c7a2074b"
-- Beginner: this function handles network event "f8c7a2074b".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2, arg3, arg4) ===
function workValue9(arg1, arg2, arg3, arg4)
  local serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18
  serverEventCall = dataTable
  serverEventCall = serverEventCall[arg1]
  if not serverEventCall then
    return
  end
  serverEventCall = arg2 or serverEventCall
  if not arg2 then
    serverEventCall = cmgCall4
  end
  textValue3 = threadCall
  labelValue = arg1
  textValue3 = textValue3(labelValue)
  if textValue3 then
    textValue3 = dataTable4
    labelValue = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    labelValue = labelValue()
    cmgCall5 = serverEventCall * 1000
    labelValue = labelValue + cmgCall5
    textValue3[arg1] = labelValue
    textValue3 = workValue
    textValue3()
    if arg3 and not arg4 then
      textValue3 = notify
      labelValue = "~g~You have been bandaged."
      -- Beginner: Show a notification to the player.
      textValue3(labelValue)
    end
  elseif arg4 then
    textValue3 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION: labelValue() ===
    function labelValue()
      local waitCall, numberValue5, textValue2, numberValue11, workValue11, workValue12, workValue14, gameTime, gameTime2
      waitCall = serverEventCall
      waitCall = waitCall * 1000
      numberValue5 = 1
      textValue2 = 30
      numberValue11 = 1
      for workValue11 = numberValue5, textValue2, numberValue11 do
        workValue12 = threadCall
        workValue14 = arg1
        workValue12 = workValue12(workValue14)
        if workValue12 then
          workValue14 = arg1
          workValue12 = dataTable4
          gameTime = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          gameTime = gameTime()
          gameTime = gameTime + waitCall
          workValue12[workValue14] = gameTime
          workValue12 = workValue
          workValue12()
          return
        end
        workValue12 = CMG
        workValue12 = workValue12.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        workValue12 = workValue12()
        if 0 ~= workValue12 then
          workValue14 = DoesEntityExist
          gameTime = workValue12
          workValue14 = workValue14(gameTime)
          if workValue14 then
            workValue14 = IsEntityDead
            gameTime = workValue12
            workValue14 = workValue14(gameTime)
            if not workValue14 then
              workValue14 = workValue4
              gameTime = arg1
              workValue14 = workValue14(gameTime)
              if workValue14 then
                gameTime = arg1
                workValue14 = dataTable4
                gameTime2 = GetGameTimer
                -- Beginner: result below is gameTimeMs.
                gameTime2 = gameTime2()
                gameTime2 = gameTime2 + waitCall
                workValue14[gameTime] = gameTime2
                workValue14 = workValue
                workValue14()
                return
              end
            end
          end
        end
        workValue14 = Wait
        gameTime = 300
        workValue14(gameTime)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    textValue3(labelValue)
  else
    textValue3 = workValue4
    labelValue = arg1
    textValue3 = textValue3(labelValue)
    if textValue3 then
      textValue3 = dataTable4
      labelValue = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      labelValue = labelValue()
      cmgCall5 = serverEventCall * 1000
      labelValue = labelValue + cmgCall5
      textValue3[arg1] = labelValue
      textValue3 = workValue
      textValue3()
      if not arg4 then
        if arg3 then
          textValue3 = notify
          labelValue = "~g~You have been bandaged."
          -- Beginner: Show a notification to the player.
          textValue3(labelValue)
        else
          textValue3 = dataTable
          textValue3 = textValue3[arg1]
          if textValue3 then
            textValue3 = dataTable
            textValue3 = textValue3[arg1]
            textValue3 = textValue3.label
            if textValue3 then
              goto flow_label_71
            end
          end
          textValue3 = arg1
          ::flow_label_71::
          labelValue = notify
          cmgCall5 = "~g~"
          textValue4 = textValue3
          workValue18 = " applied."
          cmgCall5 = cmgCall5 .. textValue4 .. workValue18
          labelValue(cmgCall5)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f8c7a2074b".
cmgCall3(textValue, workValue9)
cmgCall3 = RegisterNetEvent
textValue = "f95fecdf35"
-- Beginner: this function handles network event "f95fecdf35".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3
  arg2 = workValue13
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f95fecdf35".
cmgCall3(textValue, workValue9)
cmgCall3 = RegisterNetEvent
textValue = "5c706bee2d"
-- Beginner: this function handles network event "5c706bee2d".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2
  arg1 = workValue7
  arg2 = false
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5c706bee2d".
cmgCall3(textValue, workValue9)
cmgCall3 = Citizen
cmgCall3 = cmgCall3.CreateThread
-- Beginner: this function handles network event "5c706bee2d".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, arg4, serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2, numberValue, numberValue2, workValue6, hashValue, cmgCall2, numberValue3, workValue8, numberValue4, workValue10, flag, flag2
  while true do
    arg1 = Wait
    arg2 = 4000
    arg1(arg2)
    arg1 = pairs
    arg2 = dataTable2
    arg1, arg2, arg3, arg4 = arg1(arg2)
    for serverEventCall, textValue3 in arg1, arg2, arg3, arg4 do
      labelValue = DoesEntityExist
      cmgCall5 = textValue3
      labelValue = labelValue(cmgCall5)
      if labelValue then
        labelValue = dataTable
        labelValue = labelValue[serverEventCall]
        if labelValue then
          cmgCall5 = labelValue.anim
          if cmgCall5 then
            cmgCall5 = CMG
            cmgCall5 = cmgCall5.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            cmgCall5 = cmgCall5()
            textValue4 = workValue15
            workValue18 = cmgCall5
            textValue4 = textValue4(workValue18)
            workValue18 = labelValue.anim
            workValue18 = workValue18[textValue4]
            if workValue18 then
              workValue2 = IsEntityPlayingAnim
              numberValue = cmgCall5
              numberValue2 = workValue18[1]
              workValue6 = workValue18[2]
              hashValue = 3
              workValue2 = workValue2(numberValue, numberValue2, workValue6, hashValue)
              if not workValue2 then
                workValue2 = workValue16
                numberValue = workValue18[1]
                workValue2 = workValue2(numberValue)
                if workValue2 then
                  workValue2 = TaskPlayAnim
                  numberValue = cmgCall5
                  numberValue2 = workValue18[1]
                  workValue6 = workValue18[2]
                  hashValue = 1.0
                  cmgCall2 = -1.0
                  numberValue3 = -1
                  workValue8 = 49
                  numberValue4 = 0
                  workValue10 = false
                  flag = false
                  flag2 = false
                  -- Beginner: Play an animation on a ped.
                  workValue2(numberValue, numberValue2, workValue6, hashValue, cmgCall2, numberValue3, workValue8, numberValue4, workValue10, flag, flag2)
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
cmgCall3(textValue)
cmgCall3 = RegisterNetEvent
textValue = "706fce7a08"
-- Beginner: this function handles network event "706fce7a08".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2, arg3) ===
function workValue9(arg1, arg2, arg3)
  local arg4, serverEventCall, textValue3, labelValue, cmgCall5, textValue4, workValue18, workValue2, numberValue, numberValue2, workValue6, hashValue, cmgCall2, numberValue3, workValue8, numberValue4, workValue10
  arg4 = CMG
  arg4 = arg4.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  if 0 ~= arg4 then
    serverEventCall = DoesEntityExist
    textValue3 = arg4
    serverEventCall = serverEventCall(textValue3)
    if serverEventCall then
      goto flow_label_12
    end
  end
  return
  ::flow_label_12::
  serverEventCall = GetPlayerFromServerId
  textValue3 = arg1
  -- Beginner: result below is playerIndex.
  serverEventCall = serverEventCall(textValue3)
  if -1 == serverEventCall then
    return
  end
  textValue3 = GetPlayerPed
  labelValue = serverEventCall
  -- Beginner: result below is playerPed.
  textValue3 = textValue3(labelValue)
  if 0 ~= textValue3 then
    labelValue = DoesEntityExist
    cmgCall5 = textValue3
    labelValue = labelValue(cmgCall5)
    if labelValue then
      goto flow_label_29
    end
  end
  return
  ::flow_label_29::
  labelValue = 0.6
  cmgCall5 = TaskGoToEntity
  textValue4 = arg4
  workValue18 = textValue3
  workValue2 = 10000
  numberValue = labelValue
  numberValue2 = 1.0
  workValue6 = 0
  hashValue = 0
  cmgCall5(textValue4, workValue18, workValue2, numberValue, numberValue2, workValue6, hashValue)
  cmgCall5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  cmgCall5 = cmgCall5()
  while true do
    textValue4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue4 = textValue4()
    textValue4 = textValue4 - cmgCall5
    workValue18 = 10000
    if not (textValue4 < workValue18) then
      break
    end
    textValue4 = DoesEntityExist
    workValue18 = textValue3
    textValue4 = textValue4(workValue18)
    if not textValue4 then
      break
    end
    textValue4 = GetEntityCoords
    workValue18 = arg4
    -- Beginner: result below is entityCoords.
    textValue4 = textValue4(workValue18)
    workValue18 = GetEntityCoords
    workValue2 = textValue3
    -- Beginner: result below is entityCoords.
    workValue18 = workValue18(workValue2)
    textValue4 = textValue4 - workValue18
    textValue4 = #textValue4
    workValue18 = labelValue + 0.3
    if textValue4 <= workValue18 then
      break
    end
    workValue18 = Wait
    workValue2 = 100
    workValue18(workValue2)
  end
  textValue4 = TaskTurnPedToFaceEntity
  workValue18 = arg4
  workValue2 = textValue3
  numberValue = 500
  textValue4(workValue18, workValue2, numberValue)
  textValue4 = Wait
  workValue18 = 300
  textValue4(workValue18)
  textValue4 = CMG
  textValue4 = textValue4.loadAnimDict
  workValue18 = "anim_heist@arcade_combined@"
  -- Beginner: Load a GTA animation dictionary before using it.
  textValue4(workValue18)
  textValue4 = TaskPlayAnim
  workValue18 = arg4
  workValue2 = "anim_heist@arcade_combined@"
  numberValue = "inspecting_high_idle_01_inspector"
  numberValue2 = 8.0
  workValue6 = -8.0
  hashValue = 3000
  cmgCall2 = 1
  numberValue3 = 0
  workValue8 = false
  numberValue4 = false
  workValue10 = false
  -- Beginner: Play an animation on a ped.
  textValue4(workValue18, workValue2, numberValue, numberValue2, workValue6, hashValue, cmgCall2, numberValue3, workValue8, numberValue4, workValue10)
  textValue4 = RemoveAnimDict
  workValue18 = "anim_heist@arcade_combined@"
  textValue4(workValue18)
  textValue4 = Wait
  workValue18 = 3000
  textValue4(workValue18)
  textValue4 = TriggerServerEvent
  workValue18 = "3cd4fe88fe"
  workValue2 = arg1
  numberValue = arg2
  numberValue2 = arg3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3cd4fe88fe".
  textValue4(workValue18, workValue2, numberValue, numberValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "706fce7a08".
cmgCall3(textValue, workValue9)
cmgCall3 = AddEventHandler
textValue = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 ~= arg2 then
    return
  end
  arg2 = workValue7
  arg2()
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall3(textValue, workValue9)
