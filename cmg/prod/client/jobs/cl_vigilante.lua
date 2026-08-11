--[[
    LEVEL 1 BEGINNER GUIDE — Vigilante
    =======================================

    File: cmg/prod/client/jobs/cl_vigilante.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Vigilante feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 60
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
local cmgCall, cmgCall7, cmgCall10, textValue11, dataTable7, dataTable9, dataTable10, dataTable11, flag4, dataTable12, workValue, dataTable, dataTable2, numberValue3, flag, cmgCall4, cmgCall5, textValue3, workValue4, eventRegistration, textValue6, numberValue6, cmgCall8, eventHandlerRegistration, textValue7, textValue8, rageUiCall, dataTable4, dataTable5, cmgCall9, workValue5, workValue6, workValue7, flag2, textValue9, textValue10, numberValue10, flag3, workValue8, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue9, workValue10, dataTable6
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall7 = "cfg/cfg_vigilante"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall7)
cmgCall7 = CMG
cmgCall7 = cmgCall7.loadModule
cmgCall10 = "cfg/weapons"
-- Beginner: result below is config.
cmgCall7 = cmgCall7(cmgCall10)
cmgCall10 = CMG
cmgCall10 = cmgCall10.loadModule
textValue11 = "cfg/cfg_gunstore"
-- Beginner: result below is config.
cmgCall10 = cmgCall10(textValue11)
textValue11 = 0
dataTable7 = {}
dataTable9 = {}
dataTable10 = {}
dataTable11 = {}
flag4 = false
dataTable12 = {}
workValue = nil
dataTable = {}
dataTable2 = {}
numberValue3 = 0
flag = false
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2
  arg1 = numberValue3
  return arg1
end
cmgCall4.getClientVigilanteLevel = cmgCall5
cmgCall4 = RegisterNetEvent
cmgCall5 = "CMG:updateVigilanteStats"
-- Beginner: this function handles network event "CMG:updateVigilanteStats".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2) ===
function textValue3(arg1, arg2)
  local arg3
  numberValue3 = arg1
  arg3 = true
  flag = arg3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "CMG:updateVigilanteStats".
cmgCall4(cmgCall5, textValue3)
cmgCall4 = RegisterNetEvent
cmgCall5 = "f20ef77560"
-- Beginner: this function handles network event "f20ef77560".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2
  textValue11 = arg1
  arg2 = CMG
  arg2 = arg2.refreshMoneyUI
  arg2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f20ef77560".
cmgCall4(cmgCall5, textValue3)
cmgCall4 = CMG
-- Beginner: this function handles network event "f20ef77560".

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2
  arg1 = textValue11
  return arg1
end
cmgCall4.getClientBounty = cmgCall5
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2
  arg1 = cmgCall.cityPosition
  arg2 = cmgCall.cityRadius
  return arg1, arg2
end
cmgCall4.getCityPositionAndRadius = cmgCall5

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1) ===
function cmgCall4(arg1)
  local arg2, arg3
  arg2 = arg1.iconBlip
  if arg2 then
    arg2 = RemoveBlip
    arg3 = arg1.iconBlip
    arg2(arg3)
    arg1.iconBlip = nil
  end
  arg2 = arg1.radiusBlip
  if arg2 then
    arg2 = RemoveBlip
    arg3 = arg1.radiusBlip
    arg2(arg3)
    arg1.radiusBlip = nil
  end
end
cmgCall5 = RegisterNetEvent
textValue3 = "6ecaac4327"
-- Beginner: this function handles network event "6ecaac4327".

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue
  arg2 = pairs
  arg3 = dataTable7
  arg2, arg3, arg4, waitCall = arg2(arg3)
  for numberValue19, cmgCall12 in arg2, arg3, arg4, waitCall do
    workValue14 = arg1[numberValue19]
    if not workValue14 then
      workValue14 = cmgCall4
      nameValue = cmgCall12
      workValue14(nameValue)
      workValue14 = dataTable7
      workValue14[numberValue19] = nil
    end
  end
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, waitCall = arg2(arg3)
  for numberValue19, cmgCall12 in arg2, arg3, arg4, waitCall do
    workValue14 = dataTable7
    workValue14 = workValue14[numberValue19]
    if not workValue14 then
      nameValue = dataTable7
      nameValue[numberValue19] = cmgCall12
    else
      nameValue = cmgCall12.name
      workValue14.name = nameValue
      nameValue = cmgCall12.totalOutstanding
      workValue14.totalOutstanding = nameValue
      nameValue = cmgCall12.offenses
      workValue14.offenses = nameValue
    end
  end
  arg2 = pairs
  arg3 = dataTable9
  arg2, arg3, arg4, waitCall = arg2(arg3)
  for numberValue19 in arg2, arg3, arg4, waitCall do
    cmgCall12 = CMG
    cmgCall12 = cmgCall12.clientGetUserIdFromSource
    workValue14 = numberValue19
    -- Beginner: result below is userId.
    cmgCall12 = cmgCall12(workValue14)
    if cmgCall12 then
      workValue14 = dataTable7
      workValue14 = workValue14[cmgCall12]
      if workValue14 then
        goto flow_label_52
      end
    end
    workValue14 = dataTable9
    workValue14[numberValue19] = nil
    ::flow_label_52::
  end
  arg2 = TriggerEvent
  arg3 = "CMG:fetchVigilanteAppData"
  arg4 = false
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMG:fetchVigilanteAppData".
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6ecaac4327".
cmgCall5(textValue3, workValue4)

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14
  arg1 = pairs
  arg2 = dataTable7
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for waitCall, numberValue19 in arg1, arg2, arg3, arg4 do
    cmgCall12 = cmgCall4
    workValue14 = numberValue19
    cmgCall12(workValue14)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, arg4
  arg2 = arg1.radiusBlip
  if arg2 then
    arg2 = arg1.iconBlip
    if arg2 then
      goto flow_label_8
    end
  end
  return
  ::flow_label_8::
  arg2 = arg1.isVisible
  if false == arg2 then
    arg2 = SetBlipDisplay
    arg3 = arg1.radiusBlip
    arg4 = 0
    arg2(arg3, arg4)
    arg2 = SetBlipDisplay
    arg3 = arg1.iconBlip
    arg4 = 0
    arg2(arg3, arg4)
  else
    arg2 = SetBlipDisplay
    arg3 = arg1.radiusBlip
    arg4 = 2
    arg2(arg3, arg4)
    arg2 = SetBlipDisplay
    arg3 = arg1.iconBlip
    arg4 = 2
    arg2(arg3, arg4)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1, arg2) ===
function workValue4(arg1, arg2)
  local arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2
  arg3 = dataTable7
  arg3 = arg3[arg1]
  if not arg3 then
    return
  end
  arg4 = #arg2
  waitCall = 0.1
  arg4 = arg4 < waitCall
  waitCall = cmgCall4
  numberValue19 = arg3
  waitCall(numberValue19)
  while true do
    waitCall = flag
    if waitCall then
      break
    end
    waitCall = Wait
    numberValue19 = 0
    waitCall(numberValue19)
  end
  waitCall = cmgCall4
  numberValue19 = arg3
  waitCall(numberValue19)
  waitCall = cmgCall.levels
  numberValue19 = numberValue3
  waitCall = waitCall[numberValue19]
  numberValue19 = math
  numberValue19 = numberValue19.random
  cmgCall12 = cmgCall.targetSuspectedInaccuracy
  cmgCall12 = -cmgCall12
  workValue14 = waitCall.circleScale
  cmgCall12 = cmgCall12 * workValue14
  workValue14 = cmgCall.targetSuspectedInaccuracy
  nameValue = waitCall.circleScale
  workValue14 = workValue14 * nameValue
  numberValue19 = numberValue19(cmgCall12, workValue14)
  cmgCall12 = math
  cmgCall12 = cmgCall12.random
  workValue14 = cmgCall.targetSuspectedInaccuracy
  workValue14 = -workValue14
  nameValue = waitCall.circleScale
  workValue14 = workValue14 * nameValue
  nameValue = cmgCall.targetSuspectedInaccuracy
  workValue15 = waitCall.circleScale
  nameValue = nameValue * workValue15
  cmgCall12 = cmgCall12(workValue14, nameValue)
  workValue14 = vector3
  nameValue = numberValue19
  workValue15 = cmgCall12
  numberValue = 0.0
  workValue14 = workValue14(nameValue, workValue15, numberValue)
  workValue14 = arg2 + workValue14
  if not arg4 then
    nameValue = AddBlipForRadius
    workValue15 = workValue14.x
    numberValue = workValue14.y
    numberValue2 = workValue14.z
    textValue2 = cmgCall.targetSuspectedRadius
    workValue2 = waitCall.circleScale
    textValue2 = textValue2 * workValue2
    -- Beginner: result below is blipHandle.
    nameValue = nameValue(workValue15, numberValue, numberValue2, textValue2)
    arg3.radiusBlip = nameValue
    nameValue = SetBlipColour
    workValue15 = arg3.radiusBlip
    numberValue = 47
    nameValue(workValue15, numberValue)
    nameValue = SetBlipAlpha
    workValue15 = arg3.radiusBlip
    numberValue = 100
    nameValue(workValue15, numberValue)
    nameValue = SetBlipPriority
    workValue15 = arg3.radiusBlip
    numberValue = 0
    nameValue(workValue15, numberValue)
    nameValue = AddBlipForCoord
    workValue15 = workValue14.x
    numberValue = workValue14.y
    numberValue2 = workValue14.z
    -- Beginner: result below is blipHandle.
    nameValue = nameValue(workValue15, numberValue, numberValue2)
    arg3.iconBlip = nameValue
    nameValue = SetBlipSprite
    workValue15 = arg3.iconBlip
    numberValue = 774
    nameValue(workValue15, numberValue)
    nameValue = SetBlipColour
    workValue15 = arg3.iconBlip
    numberValue = 1
    nameValue(workValue15, numberValue)
  end
  nameValue = textValue3
  workValue15 = arg3
  nameValue(workValue15)
  arg3.lastLocation = workValue14
  if arg4 then
    arg3.lastPing = 0
  else
    nameValue = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    nameValue = nameValue()
    arg3.lastPing = nameValue
  end
end
eventRegistration = RegisterNetEvent
textValue6 = "d9ca742ca3"
numberValue6 = workValue4
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d9ca742ca3".
eventRegistration(textValue6, numberValue6)
eventRegistration = RegisterNetEvent
textValue6 = "f80b5289a6"
-- Beginner: this function handles network event "f80b5289a6".

-- === HELPER FUNCTION (decompiler name: numberValue6; parameters: arg1) ===
function numberValue6(arg1)
  local arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15
  arg2 = cmgCall5
  arg2()
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, waitCall = arg2(arg3)
  for numberValue19, cmgCall12 in arg2, arg3, arg4, waitCall do
    workValue14 = workValue4
    nameValue = numberValue19
    workValue15 = cmgCall12
    workValue14(nameValue, workValue15)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f80b5289a6".
eventRegistration(textValue6, numberValue6)
eventRegistration = RegisterNetEvent
textValue6 = "a4053df785"
-- Beginner: this function handles network event "a4053df785".

-- === HELPER FUNCTION (decompiler name: numberValue6; parameters: none) ===
function numberValue6()
  local arg1, arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2
  arg1 = pairs
  arg2 = cmgCall.bases
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for waitCall, numberValue19 in arg1, arg2, arg3, arg4 do
    cmgCall12 = AddBlipForRadius
    workValue14 = numberValue19.position
    workValue14 = workValue14.x
    nameValue = numberValue19.position
    nameValue = nameValue.y
    workValue15 = numberValue19.position
    workValue15 = workValue15.z
    numberValue = numberValue19.radius
    -- Beginner: result below is blipHandle.
    cmgCall12 = cmgCall12(workValue14, nameValue, workValue15, numberValue)
    numberValue19.radiusBlip = cmgCall12
    cmgCall12 = SetBlipColour
    workValue14 = numberValue19.radiusBlip
    nameValue = 5
    cmgCall12(workValue14, nameValue)
    cmgCall12 = SetBlipAlpha
    workValue14 = numberValue19.radiusBlip
    nameValue = 150
    cmgCall12(workValue14, nameValue)
    cmgCall12 = tCMG
    cmgCall12 = cmgCall12.addBlip
    workValue14 = numberValue19.position
    workValue14 = workValue14.x
    nameValue = numberValue19.position
    nameValue = nameValue.y
    workValue15 = numberValue19.position
    workValue15 = workValue15.z
    numberValue = 492
    numberValue2 = 59
    textValue2 = "Vigilante Base"
    cmgCall12 = cmgCall12(workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2)
    numberValue19.iconBlip = cmgCall12
    cmgCall12 = CMG
    cmgCall12 = cmgCall12.createGunStore
    workValue14 = string
    workValue14 = workValue14.format
    nameValue = "vigilante_gunstore_%s"
    workValue15 = waitCall
    workValue14 = workValue14(nameValue, workValue15)
    nameValue = "Vigilante"
    workValue15 = numberValue19.gunstoreLocation
    cmgCall12 = cmgCall12(workValue14, nameValue, workValue15)
    numberValue19.gunstoreId = cmgCall12
    cmgCall12 = CMG
    cmgCall12 = cmgCall12.createClothingMenu
    workValue14 = string
    workValue14 = workValue14.format
    nameValue = "vigilante_clothing_%s"
    workValue15 = waitCall
    workValue14 = workValue14(nameValue, workValue15)
    nameValue = numberValue19.clothingLocation
    cmgCall12(workValue14, nameValue)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a4053df785".
eventRegistration(textValue6, numberValue6)
eventRegistration = RegisterNetEvent
textValue6 = "a5ae8ef365"
-- Beginner: this function handles network event "a5ae8ef365".

-- === HELPER FUNCTION (decompiler name: numberValue6; parameters: none) ===
function numberValue6()
  local arg1, arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15
  arg1 = cmgCall5
  arg1()
  arg1 = pairs
  arg2 = cmgCall.bases
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for waitCall, numberValue19 in arg1, arg2, arg3, arg4 do
    cmgCall12 = numberValue19.radiusBlip
    if cmgCall12 then
      cmgCall12 = RemoveBlip
      workValue14 = numberValue19.radiusBlip
      cmgCall12(workValue14)
      numberValue19.radiusBlip = nil
    end
    cmgCall12 = numberValue19.iconBlip
    if cmgCall12 then
      cmgCall12 = tCMG
      cmgCall12 = cmgCall12.removeBlip
      workValue14 = numberValue19.iconBlip
      cmgCall12(workValue14)
      numberValue19.iconBlip = nil
    end
    cmgCall12 = numberValue19.dropMarker
    if cmgCall12 then
      cmgCall12 = tCMG
      cmgCall12 = cmgCall12.removeMarker
      workValue14 = numberValue19.dropMarker
      cmgCall12(workValue14)
      numberValue19.dropMarker = nil
    end
    cmgCall12 = numberValue19.gunstoreId
    if cmgCall12 then
      cmgCall12 = CMG
      cmgCall12 = cmgCall12.deleteGunStore
      workValue14 = numberValue19.gunstoreId
      cmgCall12(workValue14)
      numberValue19.gunstoreId = nil
    end
    cmgCall12 = CMG
    cmgCall12 = cmgCall12.deleteClothingMenu
    workValue14 = string
    workValue14 = workValue14.format
    nameValue = "vigilante_clothing_%s"
    workValue15 = waitCall
    workValue14, nameValue, workValue15 = workValue14(nameValue, workValue15)
    cmgCall12(workValue14, nameValue, workValue15)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a5ae8ef365".
eventRegistration(textValue6, numberValue6)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2) ===
function eventRegistration(arg1, arg2)
  local arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4, textValue5, numberValue5
  arg3 = IsEntityVisible
  arg4 = arg1
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = HasEntityClearLosToEntity
    arg4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg4 = arg4()
    waitCall = arg1
    numberValue19 = 17
    arg3 = arg3(arg4, waitCall, numberValue19)
    if arg3 then
      goto flow_label_15
    end
  end
  return
  ::flow_label_15::
  arg3 = GetEntityCoords
  arg4 = arg1
  waitCall = true
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4, waitCall)
  arg4 = GetScreenCoordFromWorldCoord
  waitCall = arg3.x
  numberValue19 = arg3.y
  cmgCall12 = arg3.z
  arg4 = arg4(waitCall, numberValue19, cmgCall12)
  if not arg4 then
    return
  end
  arg4 = GetPedBoneIndex
  waitCall = arg1
  numberValue19 = 31086
  arg4 = arg4(waitCall, numberValue19)
  waitCall = GetPedBoneIndex
  numberValue19 = arg1
  cmgCall12 = 11816
  waitCall = waitCall(numberValue19, cmgCall12)
  numberValue19 = GetWorldPositionOfEntityBone
  cmgCall12 = arg1
  workValue14 = arg4
  numberValue19 = numberValue19(cmgCall12, workValue14)
  cmgCall12 = GetWorldPositionOfEntityBone
  workValue14 = arg1
  nameValue = waitCall
  cmgCall12 = cmgCall12(workValue14, nameValue)
  workValue14 = GetScreenCoordFromWorldCoord
  nameValue = numberValue19.x
  workValue15 = numberValue19.y
  numberValue = numberValue19.z
  workValue14, nameValue, workValue15 = workValue14(nameValue, workValue15, numberValue)
  numberValue = GetScreenCoordFromWorldCoord
  numberValue2 = cmgCall12.x
  textValue2 = cmgCall12.y
  workValue2 = cmgCall12.z
  numberValue, numberValue2, textValue2 = numberValue(numberValue2, textValue2, workValue2)
  workValue2 = workValue14 or workValue2
  workValue2 = numberValue or workValue2
  if workValue14 and numberValue then
    workValue2 = textValue2 - workValue15
    cmgCall3 = 0.025
    workValue2 = workValue2 > cmgCall3
  end
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  cmgCall3 = cmgCall3()
  cmgCall3 = arg3 - cmgCall3
  cmgCall3 = #cmgCall3
  cmgCall3 = cmgCall3 < 30.0
  if not workValue2 and not cmgCall3 then
    return
  end
  gameTime = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  gameTime = gameTime()
  numberValue4 = dataTable9
  numberValue4 = numberValue4[arg2]
  if numberValue4 then
    cmgCall6 = gameTime - numberValue4
    textValue4 = 5000
    if not (cmgCall6 > textValue4) then
      goto flow_label_93
    end
  end
  cmgCall6 = notify
  textValue4 = "~y~A target has been identified and tagged."
  -- Beginner: Show a notification to the player.
  cmgCall6(textValue4)
  ::flow_label_93::
  cmgCall6 = dataTable9
  cmgCall6[arg2] = gameTime
  cmgCall6 = CMG
  cmgCall6 = cmgCall6.isPositionInGreenzone
  textValue4 = arg3
  cmgCall6 = cmgCall6(textValue4)
  if cmgCall6 then
    return
  end
  cmgCall6 = dataTable10
  cmgCall6 = cmgCall6[arg2]
  if cmgCall6 then
    textValue4 = gameTime - cmgCall6
    textValue5 = 10000
    if not (textValue4 > textValue5) then
      goto flow_label_117
    end
  end
  textValue4 = TriggerServerEvent
  textValue5 = "535f18d011"
  numberValue5 = arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "535f18d011".
  textValue4(textValue5, numberValue5)
  textValue4 = dataTable10
  textValue4[arg2] = gameTime
  ::flow_label_117::
end
textValue6 = vector2
numberValue6 = 0.2
cmgCall8 = 0.4
textValue6 = textValue6(numberValue6, cmgCall8)

-- === HELPER FUNCTION (decompiler name: numberValue6; parameters: arg1, arg2, arg3) ===
function numberValue6(arg1, arg2, arg3)
  local arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4, textValue5, numberValue5, numberValue7
  arg4 = dataTable11
  arg4 = arg4[arg1]
  if not arg4 then
    waitCall = RegisterPedheadshot_3
    numberValue19 = arg1
    waitCall = waitCall(numberValue19)
    arg4 = waitCall
    waitCall = dataTable11
    waitCall[arg1] = arg4
  end
  waitCall = IsPedheadshotReady
  numberValue19 = arg4
  waitCall = waitCall(numberValue19)
  if waitCall then
    waitCall = IsPedheadshotValid
    numberValue19 = arg4
    waitCall = waitCall(numberValue19)
    if waitCall then
      goto flow_label_23
    end
  end
  waitCall = false
  return waitCall
  ::flow_label_23::
  waitCall = GetPedheadshotTxdString
  numberValue19 = arg4
  waitCall = waitCall(numberValue19)
  if not waitCall then
    numberValue19 = false
    return numberValue19
  end
  numberValue19 = fullPlayerListData
  numberValue19 = numberValue19[arg3]
  if not numberValue19 then
    numberValue19 = false
    return numberValue19
  end
  numberValue19 = fullPlayerListData
  numberValue19 = numberValue19[arg3]
  numberValue19 = numberValue19[2]
  cmgCall12 = GetActiveScreenResolution
  cmgCall12, workValue14 = cmgCall12()
  nameValue = workValue14 / cmgCall12
  workValue15 = arg2 - 1
  workValue15 = workValue15 * 0.15
  numberValue = DrawRect
  numberValue2 = textValue6.x
  textValue2 = textValue6.y
  textValue2 = textValue2 + workValue15
  workValue2 = nameValue * 0.18
  cmgCall3 = 0.18
  gameTime = 0
  numberValue4 = 0
  cmgCall6 = 0
  textValue4 = 255
  numberValue(numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4)
  numberValue = DrawSprite
  numberValue2 = waitCall
  textValue2 = waitCall
  workValue2 = 0.2
  cmgCall3 = textValue6.y
  cmgCall3 = cmgCall3 + workValue15
  gameTime = nameValue * 0.14
  numberValue4 = 0.14
  cmgCall6 = 0.0
  textValue4 = 255
  textValue5 = 255
  numberValue5 = 255
  numberValue7 = 255
  numberValue(numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4, textValue5, numberValue5, numberValue7)
  numberValue = CMG
  numberValue = numberValue.DrawText
  numberValue2 = textValue6.x
  textValue2 = textValue6.y
  textValue2 = textValue2 + 0.06
  workValue2 = workValue15 * 1.02
  textValue2 = textValue2 + workValue2
  workValue2 = numberValue19
  cmgCall3 = 0.25
  gameTime = 0
  numberValue4 = 0
  numberValue(numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4)
  if 1 == arg2 then
    numberValue = DrawRect
    numberValue2 = textValue6.x
    textValue2 = textValue6.y
    textValue2 = textValue2 - 0.1
    workValue2 = nameValue * 0.18
    cmgCall3 = 0.03
    gameTime = 0
    numberValue4 = 0
    cmgCall6 = 0
    textValue4 = 255
    numberValue(numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4)
    numberValue = CMG
    numberValue = numberValue.DrawText
    numberValue2 = textValue6.x
    textValue2 = textValue6.y
    textValue2 = textValue2 - 0.105
    workValue2 = "WANTED"
    cmgCall3 = 0.4
    gameTime = 0
    numberValue4 = 0
    cmgCall6 = {}
    textValue4 = 255
    textValue5 = 0
    numberValue5 = 0
    numberValue7 = 255
    cmgCall6[1] = textValue4
    cmgCall6[2] = textValue5
    cmgCall6[3] = numberValue5
    cmgCall6[4] = numberValue7
    numberValue(numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6)
  end
  numberValue = true
  return numberValue
end
cmgCall8 = CMG

-- === HELPER FUNCTION: eventHandlerRegistration(arg1) ===
function eventHandlerRegistration(arg1)
  local arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue
  arg2 = pairs
  arg3 = dataTable11
  arg2, arg3, arg4, waitCall = arg2(arg3)
  for numberValue19, cmgCall12 in arg2, arg3, arg4, waitCall do
    workValue14 = DoesEntityExist
    nameValue = numberValue19
    workValue14 = workValue14(nameValue)
    if not workValue14 or arg1 then
      workValue14 = UnregisterPedheadshot
      nameValue = cmgCall12
      workValue14(nameValue)
      workValue14 = dataTable11
      workValue14[numberValue19] = nil
    end
  end
end
cmgCall8.unregisterVigilanteHeadshots = eventHandlerRegistration
cmgCall8 = CMG

-- === HELPER FUNCTION: eventHandlerRegistration() ===
function eventHandlerRegistration()
  local arg1, arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2
  arg1 = CMG
  arg1 = arg1.hasClientGroup
  arg2 = "Vigilante"
  arg1 = arg1(arg2)
  if not arg1 then
    return
  end
  arg1 = 1
  arg2 = pairs
  arg3 = dataTable7
  arg2, arg3, arg4, waitCall = arg2(arg3)
  for numberValue19 in arg2, arg3, arg4, waitCall do
    cmgCall12 = CMG
    cmgCall12 = cmgCall12.getClientUserSource
    workValue14 = numberValue19
    cmgCall12 = cmgCall12(workValue14)
    if cmgCall12 then
      workValue14 = GetPlayerFromServerId
      nameValue = cmgCall12
      -- Beginner: result below is playerIndex.
      workValue14 = workValue14(nameValue)
      if workValue14 >= 0 then
        nameValue = GetPlayerPed
        workValue15 = workValue14
        -- Beginner: result below is playerPed.
        nameValue = nameValue(workValue15)
        if 0 ~= nameValue then
          workValue15 = eventRegistration
          numberValue = nameValue
          numberValue2 = cmgCall12
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          workValue15(numberValue, numberValue2)
          workValue15 = numberValue6
          numberValue = nameValue
          numberValue2 = arg1
          textValue2 = numberValue19
          workValue15 = workValue15(numberValue, numberValue2, textValue2)
          if workValue15 then
            arg1 = arg1 + 1
          end
        end
      end
    end
  end
  arg2 = CMG
  arg2 = arg2.unregisterVigilanteHeadshots
  arg3 = false
  arg2(arg3)
end
cmgCall8.runVigilanteTargetCheckThisFrame = eventHandlerRegistration
cmgCall8 = CMG

-- === HELPER FUNCTION: eventHandlerRegistration(arg1) ===
function eventHandlerRegistration(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.clientGetUserIdFromSource
  arg3 = arg1
  -- Beginner: result below is userId.
  arg2 = arg2(arg3)
  if arg2 then
    arg3 = dataTable7
    arg3 = arg3[arg2]
    if arg3 then
      arg3 = true
      return arg3
    end
  end
  arg3 = false
  return arg3
end
cmgCall8.isPlayerABountyTarget = eventHandlerRegistration
cmgCall8 = CMG

-- === HELPER FUNCTION: eventHandlerRegistration(arg1) ===
function eventHandlerRegistration(arg1)
  local arg2
  arg2 = dataTable9
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = true
    if arg2 then
      goto flow_label_9
    end
  end
  arg2 = false
  ::flow_label_9::
  return arg2
end
cmgCall8.isPlayerTaggedForBounty = eventHandlerRegistration
cmgCall8 = CMG

-- === HELPER FUNCTION: eventHandlerRegistration(arg1) ===
function eventHandlerRegistration(arg1)
  local arg2, arg3, arg4
  arg2 = dataTable9
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    arg3 = arg3 - arg2
    arg4 = cmgCall.tagLongIdsDurationMsec
    if arg3 < arg4 then
      arg3 = true
      return arg3
    end
  end
  arg3 = false
  return arg3
end
cmgCall8.shouldShowTagForBounty = eventHandlerRegistration

-- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: arg1) ===
function cmgCall8(arg1)
  local arg2, arg3, arg4, waitCall
  arg2 = AddBlipForEntity
  arg3 = arg1
  -- Beginner: result below is blipHandle.
  arg2 = arg2(arg3)
  arg3 = SetBlipAsShortRange
  arg4 = arg2
  waitCall = true
  arg3(arg4, waitCall)
  arg3 = SetBlipDisplay
  arg4 = arg2
  waitCall = 9
  arg3(arg4, waitCall)
  arg3 = SetBlipSprite
  arg4 = arg2
  waitCall = 480
  arg3(arg4, waitCall)
  arg3 = SetBlipColour
  arg4 = arg2
  waitCall = 28
  arg3(arg4, waitCall)
  arg3 = CMG
  arg3 = arg3.addBlipContext
  arg4 = "Vigilante"
  waitCall = arg2
  arg3(arg4, waitCall)
end
eventHandlerRegistration = pairs
textValue7 = cmgCall.bases
eventHandlerRegistration, textValue7, textValue8, rageUiCall = eventHandlerRegistration(textValue7)
for dataTable4, dataTable5 in eventHandlerRegistration, textValue7, textValue8, rageUiCall do
  cmgCall9 = CMG
  cmgCall9 = cmgCall9.createDynamicPed
  workValue5 = cmgCall.pedModels
  workValue5 = workValue5.dropoff
  workValue6 = dataTable5.pedLocation
  workValue6 = workValue6.xyz
  workValue7 = dataTable5.pedLocation
  workValue7 = workValue7.w
  flag2 = true
  textValue9 = "amb@world_human_hang_out_street@male_c@idle_a"
  textValue10 = "idle_b"
  numberValue10 = 100.0
  flag3 = false
  workValue8 = cmgCall8
  cmgCall9(workValue5, workValue6, workValue7, flag2, textValue9, textValue10, numberValue10, flag3, workValue8)
  cmgCall9 = CMG
  cmgCall9 = cmgCall9.createDynamicPed
  workValue5 = cmgCall.pedModels
  workValue5 = workValue5.gunstore
  workValue6 = dataTable5.gunstorePedLocation
  workValue6 = workValue6.xyz
  workValue7 = dataTable5.gunstorePedLocation
  workValue7 = workValue7.w
  flag2 = true
  textValue9 = "anim@miss@low@fin@vagos@"
  textValue10 = "idle_ped05"
  numberValue10 = 100.0
  flag3 = false
  workValue8 = cmgCall8
  cmgCall9(workValue5, workValue6, workValue7, flag2, textValue9, textValue10, numberValue10, flag3, workValue8)
  cmgCall9 = CMG
  cmgCall9 = cmgCall9.createDynamicPed
  workValue5 = cmgCall.pedModels
  workValue5 = workValue5.market
  workValue6 = dataTable5.marketPedLocation
  workValue6 = workValue6.xyz
  workValue7 = dataTable5.marketPedLocation
  workValue7 = workValue7.w
  flag2 = true
  textValue9 = "amb@world_human_hang_out_street@male_c@idle_a"
  textValue10 = "idle_b"
  numberValue10 = 100.0
  flag3 = false
  workValue8 = cmgCall8
  cmgCall9(workValue5, workValue6, workValue7, flag2, textValue9, textValue10, numberValue10, flag3, workValue8)
  cmgCall9 = CMG
  cmgCall9 = cmgCall9.createDynamicPed
  workValue5 = cmgCall.pedModels
  workValue5 = workValue5.clockon
  workValue6 = dataTable5.groupSelectorPedLocation
  workValue6 = workValue6.xyz
  workValue7 = dataTable5.groupSelectorPedLocation
  workValue7 = workValue7.w
  flag2 = true
  textValue9 = "amb@world_human_hang_out_street@male_c@idle_a"
  textValue10 = "idle_b"
  numberValue10 = 100.0
  flag3 = false
  workValue8 = cmgCall8
  cmgCall9(workValue5, workValue6, workValue7, flag2, textValue9, textValue10, numberValue10, flag3, workValue8)
end
eventHandlerRegistration = AddEventHandler
textValue7 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1) ===
function textValue8(arg1)
  local arg2, arg3
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = CMG
    arg2 = arg2.unregisterVigilanteHeadshots
    arg3 = true
    arg2(arg3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventHandlerRegistration(textValue7, textValue8)
eventHandlerRegistration = RMenu
eventHandlerRegistration = eventHandlerRegistration.Add
textValue7 = "vigilante"
textValue8 = "selectnearby"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
dataTable4 = ""
dataTable5 = "Vigilante Select Nearby"
cmgCall9 = CMG
cmgCall9 = cmgCall9.getRageUIMenuWidth
cmgCall9 = cmgCall9()
workValue5 = CMG
workValue5 = workValue5.getRageUIMenuHeight
workValue5, workValue6, workValue7, flag2, textValue9, textValue10, numberValue10, flag3, workValue8, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue9, workValue10, dataTable6 = workValue5()
rageUiCall, dataTable4, dataTable5, cmgCall9, workValue5, workValue6, workValue7, flag2, textValue9, textValue10, numberValue10, flag3, workValue8, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue9, workValue10, dataTable6 = rageUiCall(dataTable4, dataTable5, cmgCall9, workValue5, workValue6, workValue7, flag2, textValue9, textValue10, numberValue10, flag3, workValue8, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue9, workValue10, dataTable6)
eventHandlerRegistration(textValue7, textValue8, rageUiCall, dataTable4, dataTable5, cmgCall9, workValue5, workValue6, workValue7, flag2, textValue9, textValue10, numberValue10, flag3, workValue8, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue9, workValue10, dataTable6)
eventHandlerRegistration = RageUI
eventHandlerRegistration = eventHandlerRegistration.CreateWhile
textValue7 = 1.0
textValue8 = RMenu
rageUiCall = textValue8
textValue8 = textValue8.Get
dataTable4 = "vigilante"
dataTable5 = "selectnearby"
-- Beginner: result below is menu.
textValue8 = textValue8(rageUiCall, dataTable4, dataTable5)
rageUiCall = nil

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: none) ===
function dataTable4()
  local arg1, arg2, arg3, arg4, waitCall, numberValue19, cmgCall12
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "vigilante"
  waitCall = "selectnearby"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, waitCall)
  arg3 = true
  arg4 = true
  waitCall = true

  -- === HELPER FUNCTION (decompiler name: numberValue19; parameters: none) ===
  function numberValue19()
    local arg12, arg22, arg32, stringHelper, dataTable8, workValue12, workValue13, playerIndex, rageUiCall2, stringHelper2, textValue, cmgCall2, dataTable3, workValue3
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Select players to share bounty with."
    arg12(arg22)
    arg12 = 0
    arg22 = pairs
    arg32 = dataTable12
    arg22, arg32, stringHelper, dataTable8 = arg22(arg32)
    for workValue12, workValue13 in arg22, arg32, stringHelper, dataTable8 do
      playerIndex = GetPlayerFromServerId
      rageUiCall2 = tonumber
      stringHelper2 = workValue12
      rageUiCall2 = rageUiCall2(stringHelper2)
      if not rageUiCall2 then
        rageUiCall2 = 0
      end
      -- Beginner: result below is playerIndex.
      playerIndex = playerIndex(rageUiCall2)
      if playerIndex >= 0 then
        rageUiCall2 = RageUI
        rageUiCall2 = rageUiCall2.Checkbox
        stringHelper2 = string
        stringHelper2 = stringHelper2.format
        textValue = "%s [%s]"
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.getPlayerName
        dataTable3 = playerIndex
        cmgCall2 = cmgCall2(dataTable3)
        dataTable3 = workValue12
        stringHelper2 = stringHelper2(textValue, cmgCall2, dataTable3)
        textValue = ""
        cmgCall2 = workValue13
        dataTable3 = {}

        -- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg13, arg23, arg33, arg42) ===
        function workValue3(arg13, arg23, arg33, arg42)
          local workValue11, cmgCall11
          workValue11 = workValue13
          if arg42 ~= workValue11 then
            workValue11 = workValue12
            cmgCall11 = CMG
            cmgCall11 = cmgCall11.getLocalPlayerSrc
            cmgCall11 = cmgCall11()
            if workValue11 ~= cmgCall11 then
              cmgCall11 = workValue12
              workValue11 = dataTable12
              workValue11[cmgCall11] = arg42
            end
          end
        end
        -- Beginner: Draw a RageUI checkbox.
        rageUiCall2(stringHelper2, textValue, cmgCall2, dataTable3, workValue3)
        if workValue13 then
          arg12 = arg12 + 1
        end
      end
    end
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg32 = "~g~Proceed With Jailing"
    stringHelper = string
    stringHelper = stringHelper.format
    dataTable8 = "You may share your bounty with up to %s additional vigilantes."
    workValue12 = cmgCall.maxNumOtherPlayersToShareWith
    stringHelper = stringHelper(dataTable8, workValue12)
    dataTable8 = {}
    dataTable8.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue12 = cmgCall.maxNumOtherPlayersToShareWith
    workValue12 = workValue12 + 1
    workValue12 = arg12 <= workValue12

    -- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg13, arg23, arg33) ===
    function workValue13(arg13, arg23, arg33)
      local arg42
      if arg33 then
        arg42 = true
        workValue = arg42
        arg42 = RageUI
        arg42 = arg42.CloseAll
        arg42()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg32, stringHelper, dataTable8, workValue12, workValue13)
  end

  -- === HELPER FUNCTION (decompiler name: cmgCall12; parameters: none) ===
  function cmgCall12()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, waitCall, numberValue19, cmgCall12)
end
eventHandlerRegistration(textValue7, textValue8, rageUiCall, dataTable4)
eventHandlerRegistration = RegisterNetEvent
textValue7 = "c3caa6977b"
-- Beginner: this function handles network event "c3caa6977b".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1) ===
function textValue8(arg1)
  local arg2, arg3, arg4, waitCall, numberValue19
  arg2 = CMG
  arg2 = arg2.startCircularProgressBar
  arg3 = ""
  arg4 = arg1 or arg4
  if not arg1 then
    arg4 = cmgCall.jailCountdownMsec
  end
  waitCall = nil
  -- Beginner: this function handles network event "c3caa6977b".

  -- === HELPER FUNCTION (decompiler name: numberValue19; parameters: none) ===
  function numberValue19()
    local arg12, arg22
  end
  arg2(arg3, arg4, waitCall, numberValue19)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c3caa6977b".
eventHandlerRegistration(textValue7, textValue8)
eventHandlerRegistration = RegisterNetEvent
textValue7 = "b30fc1bd9d"
-- Beginner: this function handles network event "b30fc1bd9d".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1, arg2) ===
function textValue8(arg1, arg2)
  local arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue
  arg3 = pairs
  arg4 = arg2
  arg3, arg4, waitCall, numberValue19 = arg3(arg4)
  for cmgCall12 in arg3, arg4, waitCall, numberValue19 do
    arg2[cmgCall12] = false
  end
  arg3 = CMG
  arg3 = arg3.getLocalPlayerSrc
  arg3 = arg3()
  arg4 = arg2[arg3]
  if nil ~= arg4 then
    arg2[arg3] = true
  end
  arg4 = tostring
  waitCall = arg3
  arg4 = arg4(waitCall)
  waitCall = arg2[arg4]
  if nil ~= waitCall then
    arg2[arg4] = true
  end
  dataTable12 = arg2
  waitCall = false
  workValue = waitCall
  waitCall = RageUI
  waitCall = waitCall.Visible
  numberValue19 = RMenu
  cmgCall12 = numberValue19
  numberValue19 = numberValue19.Get
  workValue14 = "vigilante"
  nameValue = "selectnearby"
  -- Beginner: result below is menu.
  numberValue19 = numberValue19(cmgCall12, workValue14, nameValue)
  cmgCall12 = true
  waitCall(numberValue19, cmgCall12)
  while true do
    waitCall = workValue
    if nil == waitCall then
      return
    end
    waitCall = workValue
    if waitCall then
      break
    end
    waitCall = Wait
    numberValue19 = 0
    waitCall(numberValue19)
  end
  waitCall = TriggerServerEvent
  numberValue19 = "63e5e5694b"
  cmgCall12 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "63e5e5694b".
  waitCall(numberValue19, cmgCall12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b30fc1bd9d".
eventHandlerRegistration(textValue7, textValue8)
eventHandlerRegistration = RegisterNetEvent
textValue7 = "59804b2139"
-- Beginner: this function handles network event "59804b2139".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1, arg2) ===
function textValue8(arg1, arg2)
  local arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = CMG
  arg4 = arg4.isUsingDelGun
  arg4 = arg4()
  if not arg4 then
    arg4 = GetSelectedPedWeapon
    waitCall = arg3
    -- Beginner: result below is weaponHash.
    arg4 = arg4(waitCall)
    if -1569615261 ~= arg4 then
      arg4 = CMG
      arg4 = arg4.setWeapon
      waitCall = arg3
      numberValue19 = -1569615261
      cmgCall12 = true
      arg4(waitCall, numberValue19, cmgCall12)
      arg4 = Wait
      waitCall = 2000
      arg4(waitCall)
    end
  end
  arg4 = TaskStartScenarioInPlace
  waitCall = arg3
  numberValue19 = "WORLD_HUMAN_CLIPBOARD"
  cmgCall12 = 0
  workValue14 = true
  arg4(waitCall, numberValue19, cmgCall12, workValue14)
  arg4 = type
  waitCall = arg2
  arg4 = arg4(waitCall)
  arg4 = arg2 or arg4
  if not ("number" == arg4 and arg2 > 0) or not arg2 then
    arg4 = cmgCall.jailCountdownMsec
  end
  waitCall = true
  flag4 = waitCall
  waitCall = Citizen
  waitCall = waitCall.CreateThread

  -- === HELPER FUNCTION (decompiler name: numberValue19; parameters: none) ===
  function numberValue19()
    local arg12, arg22, arg32, stringHelper, dataTable8
    arg12 = CMG
    arg12 = arg12.startCircularProgressBar
    arg22 = ""
    arg32 = arg4
    stringHelper = nil

    -- === HELPER FUNCTION (decompiler name: dataTable8; parameters: none) ===
    function dataTable8()
      local arg13, arg23
    end
    arg12(arg22, arg32, stringHelper, dataTable8)
    arg12 = flag4
    if arg12 then
      arg12 = arg1
      if arg12 then
        arg12 = TriggerServerEvent
        arg22 = "917a7ba88e"
        arg32 = arg1
        stringHelper = dataTable12
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "917a7ba88e".
        arg12(arg22, arg32, stringHelper)
      end
    end
    arg12 = RageUI
    arg12 = arg12.CloseAll
    arg12()
    arg12 = false
    flag4 = arg12
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  waitCall(numberValue19)
  if not arg1 then
    return
  end
  waitCall = GetPlayerFromServerId
  numberValue19 = tonumber
  cmgCall12 = arg1
  numberValue19 = numberValue19(cmgCall12)
  if not numberValue19 then
    numberValue19 = 0
  end
  -- Beginner: result below is playerIndex.
  waitCall = waitCall(numberValue19)
  if waitCall < 0 then
    return
  end
  numberValue19 = GetPlayerPed
  cmgCall12 = waitCall
  -- Beginner: result below is playerPed.
  numberValue19 = numberValue19(cmgCall12)
  if 0 == numberValue19 or numberValue19 == arg3 then
    return
  end
  cmgCall12 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  cmgCall12 = cmgCall12()
  while true do
    workValue14 = flag4
    if not workValue14 then
      break
    end
    workValue14 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workValue14 = workValue14()
    nameValue = IsPedUsingScenario
    workValue15 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workValue15 = workValue15()
    numberValue = "WORLD_HUMAN_CLIPBOARD"
    nameValue = nameValue(workValue15, numberValue)
    if nameValue then
      cmgCall12 = workValue14
    end
    nameValue = workValue14 - cmgCall12
    workValue15 = 1000
    nameValue = nameValue > workValue15
    workValue15 = CMG
    workValue15 = workValue15.getPlayerCoords
    -- Beginner: result below is playerCoords.
    workValue15 = workValue15()
    numberValue = GetEntityCoords
    numberValue2 = numberValue19
    textValue2 = true
    -- Beginner: result below is entityCoords.
    numberValue = numberValue(numberValue2, textValue2)
    workValue15 = workValue15 - numberValue
    workValue15 = #workValue15
    if not (workValue15 > 10.0) then
      numberValue = IsEntityDead
      numberValue2 = arg3
      numberValue = numberValue(numberValue2)
      if not numberValue then
        numberValue = IsEntityDead
        numberValue2 = numberValue19
        numberValue = numberValue(numberValue2)
        if not numberValue then
          numberValue = IsPedRagdoll
          numberValue2 = arg3
          numberValue = numberValue(numberValue2)
          if not numberValue then
            numberValue = IsPedRagdoll
            numberValue2 = numberValue19
            numberValue = numberValue(numberValue2)
            if not (numberValue or nameValue) then
              goto flow_label_127
            end
          end
        end
      end
    end
    numberValue = TriggerServerEvent
    numberValue2 = "8fc9bde106"
    textValue2 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8fc9bde106".
    numberValue(numberValue2, textValue2)
    do break end
    ::flow_label_127::
    numberValue = Wait
    numberValue2 = 0
    numberValue(numberValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "59804b2139".
eventHandlerRegistration(textValue7, textValue8)
eventHandlerRegistration = RegisterNetEvent
textValue7 = "8fc9bde106"
-- Beginner: this function handles network event "8fc9bde106".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2
  arg1 = ClearPedTasks
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.stopCircularProgressBar
  arg1()
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
  arg1 = false
  flag4 = arg1
  arg1 = notify
  arg2 = "~r~You or the target are no longer in a suitable situation to jail."
  -- Beginner: Show a notification to the player.
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8fc9bde106".
eventHandlerRegistration(textValue7, textValue8)
eventHandlerRegistration = RegisterNetEvent
textValue7 = "003eadf2da"
-- Beginner: this function handles network event "003eadf2da".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1) ===
function textValue8(arg1)
  local arg2, arg3
  if "vigilantelicense" == arg1 then
    arg2 = TriggerServerEvent
    arg3 = "e7a86c3e34"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7a86c3e34".
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "003eadf2da".
eventHandlerRegistration(textValue7, textValue8)
eventHandlerRegistration = RegisterNetEvent
textValue7 = "f1dae6cf3d"
-- Beginner: this function handles network event "f1dae6cf3d".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1) ===
function textValue8(arg1)
  local arg2, arg3
  if "vigilantelicense" == arg1 then
    arg2 = TriggerServerEvent
    arg3 = "e7a86c3e34"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7a86c3e34".
    arg2(arg3)
  end
  if "Vigilante" == arg1 then
    arg2 = TriggerEvent
    arg3 = "e713d91b70"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f1dae6cf3d".
eventHandlerRegistration(textValue7, textValue8)

-- === HELPER FUNCTION: eventHandlerRegistration(arg1) ===
function eventHandlerRegistration(arg1)
  local arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2, cmgCall3
  arg2 = TriggerServerEvent
  arg3 = "792bb741c8"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "792bb741c8".
  arg2(arg3)
  arg2 = TriggerServerEvent
  arg3 = "67e7dfc964"
  arg2(arg3)
  arg2 = {}
  arg3 = pairs
  arg4 = dataTable7
  arg3, arg4, waitCall, numberValue19 = arg3(arg4)
  for cmgCall12, workValue14 in arg3, arg4, waitCall, numberValue19 do
    nameValue = true
    workValue15 = workValue14.isVisible
    if nil ~= workValue15 then
      nameValue = workValue14.isVisible
    end
    workValue15 = 0
    numberValue = -1
    numberValue2 = workValue14.lastPing
    if numberValue2 then
      numberValue2 = workValue14.lastPing
      if numberValue2 > 0 then
        numberValue2 = math
        numberValue2 = numberValue2.floor
        textValue2 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        textValue2 = textValue2()
        workValue2 = workValue14.lastPing
        textValue2 = textValue2 - workValue2
        textValue2 = textValue2 / 1000.0
        numberValue2 = numberValue2(textValue2)
        workValue15 = numberValue2
        numberValue2 = workValue14.lastLocation
        if numberValue2 then
          numberValue2 = math
          numberValue2 = numberValue2.floor
          textValue2 = workValue14.lastLocation
          workValue2 = CMG
          workValue2 = workValue2.getPlayerCoords
          -- Beginner: result below is playerCoords.
          workValue2 = workValue2()
          textValue2 = textValue2 - workValue2
          textValue2 = #textValue2
          numberValue2 = numberValue2(textValue2)
          numberValue = numberValue2
        end
      end
    end
    numberValue2 = table
    numberValue2 = numberValue2.insert
    textValue2 = arg2
    workValue2 = {}
    cmgCall3 = workValue14.name
    workValue2.name = cmgCall3
    cmgCall3 = workValue14.offenses
    workValue2.offenses = cmgCall3
    cmgCall3 = workValue14.totalOutstanding
    workValue2.totalOutstanding = cmgCall3
    workValue2.lastPing = workValue15
    workValue2.distance = numberValue
    workValue2.visible = nameValue
    workValue2.userId = cmgCall12
    numberValue2(textValue2, workValue2)
  end
  arg3 = table
  arg3 = arg3.sort
  arg4 = arg2

  -- === HELPER FUNCTION: waitCall(arg12, arg22) ===
  function waitCall(arg12, arg22)
    local arg32, stringHelper
    arg32 = arg12.name
    stringHelper = arg22.name
    arg32 = arg32 < stringHelper
    return arg32
  end
  arg3(arg4, waitCall)
  arg3 = TriggerEvent
  arg4 = "CMG:updateVigilanteTargets"
  waitCall = arg2
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMG:updateVigilanteTargets".
  arg3(arg4, waitCall)
  arg3 = TriggerEvent
  arg4 = "CMG:setVigilanteAppConfig"
  waitCall = cmgCall.levels
  arg3(arg4, waitCall)
  if arg1 then
    arg3 = TriggerServerEvent
    arg4 = "4499b42011"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4499b42011".
    arg3(arg4)
  end
end
textValue7 = AddEventHandler
textValue8 = "CMG:fetchVigilanteAppData"
rageUiCall = eventHandlerRegistration
-- Beginner: Register a client-side event handler. Event/command: "CMG:fetchVigilanteAppData".
textValue7(textValue8, rageUiCall)
textValue7 = AddEventHandler
textValue8 = "CMG:toggleVigilanteTargetVisibility"
-- Beginner: this function runs when client event "CMG:toggleVigilanteTargetVisibility" fires.

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1, arg2) ===
function rageUiCall(arg1, arg2)
  local arg3, arg4, waitCall
  arg3 = dataTable7
  arg3 = arg3[arg1]
  if arg3 then
    arg3.isVisible = arg2
    arg4 = eventHandlerRegistration
    waitCall = true
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
    arg4(waitCall)
    arg4 = textValue3
    waitCall = arg3
    arg4(waitCall)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:toggleVigilanteTargetVisibility".
textValue7(textValue8, rageUiCall)
textValue7 = RegisterNetEvent
textValue8 = "517cbfa8cc"
-- Beginner: this function handles network event "517cbfa8cc".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1) ===
function rageUiCall(arg1)
  local arg2, arg3, arg4, waitCall, numberValue19, cmgCall12
  arg2 = CMG
  arg2 = arg2.announceMpBigMsg
  arg3 = "LEVEL UP"
  arg4 = "You have levelled up to level "
  waitCall = tostring
  numberValue19 = arg1
  waitCall = waitCall(numberValue19)
  numberValue19 = "!"
  arg4 = arg4 .. waitCall .. numberValue19
  waitCall = 10000
  numberValue19 = nil
  cmgCall12 = nil
  arg2(arg3, arg4, waitCall, numberValue19, cmgCall12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "517cbfa8cc".
textValue7(textValue8, rageUiCall)
textValue7 = 0
textValue8 = 0
rageUiCall = {}
dataTable4 = {}
dataTable5 = {}
cmgCall9 = 1

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1, arg2) ===
function workValue5(arg1, arg2)
  local arg3, arg4, waitCall
  arg3 = IsNamedRendertargetRegistered
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = RegisterNamedRendertarget
    arg4 = arg1
    waitCall = false
    arg3(arg4, waitCall)
  end
  arg3 = IsNamedRendertargetLinked
  arg4 = arg2
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = LinkNamedRendertarget
    arg4 = arg2
    arg3(arg4)
  end
  arg3 = IsNamedRendertargetLinked
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = GetNamedRendertargetRenderId
    arg4 = arg1
    return arg3(arg4)
  else
    arg3 = 0
    return arg3
  end
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = cmgCall.statsBoardModel
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg2(arg3)
  arg2 = CreateObject
  arg3 = cmgCall.statsBoardModel
  arg4 = arg1.position
  arg4 = arg4.x
  waitCall = arg1.position
  waitCall = waitCall.y
  numberValue19 = arg1.position
  numberValue19 = numberValue19.z
  cmgCall12 = false
  workValue14 = false
  nameValue = false
  -- Beginner: result below is objectEntity.
  arg2 = arg2(arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue)
  textValue7 = arg2
  arg2 = SetModelAsNoLongerNeeded
  arg3 = cmgCall.statsBoardModel
  arg2(arg3)
  arg2 = SetEntityHeading
  arg3 = textValue7
  arg4 = arg1.position
  arg4 = arg4.w
  -- Beginner: Change the direction an entity is facing.
  arg2(arg3, arg4)
  arg2 = SetEntityLodDist
  arg3 = textValue7
  arg4 = 75
  arg2(arg3, arg4)
  arg2 = workValue5
  arg3 = "cmgtv9"
  arg4 = cmgCall.statsBoardModel
  arg2 = arg2(arg3, arg4)
  textValue8 = arg2
  arg2 = TriggerServerEvent
  arg3 = "8573debb45"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8573debb45".
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2
  arg1 = DeleteEntity
  arg2 = textValue7
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = 0
  textValue7 = arg1
  arg1 = ReleaseNamedRendertarget
  arg2 = "cmgtv9"
  arg1(arg2)
  arg1 = 0
  textValue8 = arg1
end
flag2 = {}
textValue9 = {}
textValue10 = 255
numberValue10 = 215
flag3 = 0
textValue9[1] = textValue10
textValue9[2] = numberValue10
textValue9[3] = flag3
textValue10 = {}
numberValue10 = 192
flag3 = 192
workValue8 = 192
textValue10[1] = numberValue10
textValue10[2] = flag3
textValue10[3] = workValue8
numberValue10 = {}
flag3 = 140
workValue8 = 120
numberValue11 = 83
numberValue10[1] = flag3
numberValue10[2] = workValue8
numberValue10[3] = numberValue11
flag3 = {}
workValue8 = 140
numberValue11 = 120
numberValue12 = 83
flag3[1] = workValue8
flag3[2] = numberValue11
flag3[3] = numberValue12
workValue8 = {}
numberValue11 = 140
numberValue12 = 120
numberValue13 = 83
workValue8[1] = numberValue11
workValue8[2] = numberValue12
workValue8[3] = numberValue13
numberValue11 = {}
numberValue12 = 140
numberValue13 = 120
numberValue14 = 83
numberValue11[1] = numberValue12
numberValue11[2] = numberValue13
numberValue11[3] = numberValue14
numberValue12 = {}
numberValue13 = 140
numberValue14 = 120
numberValue15 = 83
numberValue12[1] = numberValue13
numberValue12[2] = numberValue14
numberValue12[3] = numberValue15
numberValue13 = {}
numberValue14 = 140
numberValue15 = 120
numberValue16 = 83
numberValue13[1] = numberValue14
numberValue13[2] = numberValue15
numberValue13[3] = numberValue16
numberValue14 = {}
numberValue15 = 140
numberValue16 = 120
numberValue17 = 83
numberValue14[1] = numberValue15
numberValue14[2] = numberValue16
numberValue14[3] = numberValue17
numberValue15 = {}
numberValue16 = 140
numberValue17 = 120
numberValue18 = 83
numberValue15[1] = numberValue16
numberValue15[2] = numberValue17
numberValue15[3] = numberValue18
flag2[1] = textValue9
flag2[2] = textValue10
flag2[3] = numberValue10
flag2[4] = flag3
flag2[5] = workValue8
flag2[6] = numberValue11
flag2[7] = numberValue12
flag2[8] = numberValue13
flag2[9] = numberValue14
flag2[10] = numberValue15

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg1) ===
function textValue9(arg1)
  local arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4, textValue5, numberValue5, numberValue7, numberValue8, numberValue9
  arg2 = arg1.distance
  if arg2 > 50.0 then
    return
  end
  arg2 = SetTextRenderId
  arg3 = textValue8
  arg2(arg3)
  arg2 = SetScriptGfxDrawOrder
  arg3 = 4
  arg2(arg3)
  arg2 = SetScriptGfxDrawBehindPausemenu
  arg3 = true
  arg2(arg3)
  arg2 = "Top Arrests"
  arg3 = rageUiCall
  arg4 = cmgCall9
  if 2 == arg4 then
    arg2 = "Top Earnings"
    arg3 = dataTable4
  else
    arg4 = cmgCall9
    if 3 == arg4 then
      arg2 = "Top Largest Bounties"
      arg3 = dataTable5
    end
  end
  arg4 = DrawAdvancedText
  waitCall = 0.6
  numberValue19 = 0.0
  cmgCall12 = 0.005
  workValue14 = 0.0028
  nameValue = 0.7
  workValue15 = arg2
  numberValue = 248
  numberValue2 = 246
  textValue2 = 240
  workValue2 = 200
  cmgCall3 = 4
  gameTime = 0
  arg4(waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2, cmgCall3, gameTime)
  arg4 = DrawAdvancedText
  waitCall = 0.15
  numberValue19 = 0.17
  cmgCall12 = 0.005
  workValue14 = 0.0028
  nameValue = 0.4
  workValue15 = "Name"
  numberValue = 248
  numberValue2 = 246
  textValue2 = 240
  workValue2 = 255
  cmgCall3 = 4
  gameTime = 1
  arg4(waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2, cmgCall3, gameTime)
  arg4 = DrawAdvancedText
  waitCall = 0.5
  numberValue19 = 0.17
  cmgCall12 = 0.005
  workValue14 = 0.0028
  nameValue = 0.4
  workValue15 = "Perm ID"
  numberValue = 248
  numberValue2 = 246
  textValue2 = 240
  workValue2 = 255
  cmgCall3 = 4
  gameTime = 1
  arg4(waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2, cmgCall3, gameTime)
  arg4 = DrawAdvancedText
  waitCall = 0.9
  numberValue19 = 0.17
  cmgCall12 = 0.005
  workValue14 = 0.0028
  nameValue = 0.4
  workValue15 = "Amount"
  numberValue = 248
  numberValue2 = 246
  textValue2 = 240
  workValue2 = 255
  cmgCall3 = 4
  gameTime = 1
  arg4(waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2, cmgCall3, gameTime)
  arg4 = DrawRect
  waitCall = 0.5
  numberValue19 = 0.26
  cmgCall12 = 0.95
  workValue14 = 0.005
  nameValue = 248
  workValue15 = 246
  numberValue = 240
  numberValue2 = 255
  arg4(waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2)
  arg4 = pairs
  waitCall = arg3
  arg4, waitCall, numberValue19, cmgCall12 = arg4(waitCall)
  for workValue14, nameValue in arg4, waitCall, numberValue19, cmgCall12 do
    workValue15 = flag2
    workValue15 = workValue15[workValue14]
    if workValue15 and nameValue then
      numberValue = DrawAdvancedText
      numberValue2 = 0.15
      textValue2 = 0.07 * workValue14
      textValue2 = 0.205 + textValue2
      workValue2 = 0.005
      cmgCall3 = 0.0028
      gameTime = 0.34
      numberValue4 = nameValue[1]
      cmgCall6 = workValue15[1]
      textValue4 = workValue15[2]
      textValue5 = workValue15[3]
      numberValue5 = 255
      numberValue7 = 4
      numberValue8 = 1
      numberValue(numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4, textValue5, numberValue5, numberValue7, numberValue8)
      numberValue = DrawAdvancedText
      numberValue2 = 0.5
      textValue2 = 0.07 * workValue14
      textValue2 = 0.205 + textValue2
      workValue2 = 0.005
      cmgCall3 = 0.0028
      gameTime = 0.35
      numberValue4 = nameValue[2]
      cmgCall6 = workValue15[1]
      textValue4 = workValue15[2]
      textValue5 = workValue15[3]
      numberValue5 = 255
      numberValue7 = 4
      numberValue8 = 1
      numberValue(numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4, textValue5, numberValue5, numberValue7, numberValue8)
      numberValue = cmgCall9
      if 1 ~= numberValue then
        numberValue = "\194\163"
        numberValue2 = getMoneyStringFormatted
        textValue2 = nameValue[3]
        numberValue2 = numberValue2(textValue2)
        numberValue = numberValue .. numberValue2
        if numberValue then
          goto flow_label_148
        end
      end
      numberValue = nameValue[3]
      ::flow_label_148::
      numberValue2 = DrawAdvancedText
      textValue2 = 0.9
      workValue2 = 0.07 * workValue14
      workValue2 = 0.205 + workValue2
      cmgCall3 = 0.005
      gameTime = 0.0028
      numberValue4 = 0.35
      cmgCall6 = numberValue
      textValue4 = workValue15[1]
      textValue5 = workValue15[2]
      numberValue5 = workValue15[3]
      numberValue7 = 255
      numberValue8 = 4
      numberValue9 = 1
      numberValue2(textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4, textValue5, numberValue5, numberValue7, numberValue8, numberValue9)
    end
  end
  arg4 = SetTextRenderId
  waitCall = GetDefaultScriptRendertargetRenderId
  waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4, textValue5, numberValue5, numberValue7, numberValue8, numberValue9 = waitCall()
  arg4(waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4, textValue5, numberValue5, numberValue7, numberValue8, numberValue9)
  arg4 = SetScriptGfxDrawBehindPausemenu
  waitCall = false
  arg4(waitCall)
  arg4 = arg1.distance
  waitCall = 2.5
  if arg4 < waitCall then
    arg4 = drawNativeNotification
    waitCall = "Press ~INPUT_CONTEXT~ to switch page"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg4(waitCall)
    arg4 = IsControlJustPressed
    waitCall = 0
    numberValue19 = 51
    arg4 = arg4(waitCall, numberValue19)
    if arg4 then
      arg4 = TriggerServerEvent
      waitCall = "f6d938d757"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f6d938d757".
      arg4(waitCall)
    end
  end
end
textValue10 = pairs
numberValue10 = cmgCall.statsBoardLocations
textValue10, numberValue10, flag3, workValue8 = textValue10(numberValue10)
for numberValue11, numberValue12 in textValue10, numberValue10, flag3, workValue8 do
  numberValue13 = CMG
  numberValue13 = numberValue13.createArea
  numberValue14 = "vigilante_tv_"
  numberValue15 = tostring
  numberValue16 = numberValue11
  numberValue15 = numberValue15(numberValue16)
  numberValue14 = numberValue14 .. numberValue15
  numberValue15 = numberValue12.xyz
  numberValue16 = 100.0
  numberValue17 = 500.0
  numberValue18 = workValue6
  workValue9 = workValue7
  workValue10 = textValue9
  dataTable6 = {}
  dataTable6.position = numberValue12
  -- Beginner: Create an interaction area around a world position.
  numberValue13(numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue9, workValue10, dataTable6)
end
textValue10 = AddEventHandler
numberValue10 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: flag3; parameters: arg1) ===
function flag3(arg1)
  local arg2, arg3
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = DoesEntityExist
    arg3 = textValue7
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = DeleteEntity
      arg3 = textValue7
      -- Beginner: Delete a GTA entity.
      arg2(arg3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
textValue10(numberValue10, flag3)
textValue10 = RegisterNetEvent
numberValue10 = "534ad5c8ab"
-- Beginner: this function handles network event "534ad5c8ab".

-- === HELPER FUNCTION (decompiler name: flag3; parameters: arg1, arg2, arg3, arg4) ===
function flag3(arg1, arg2, arg3, arg4)
  rageUiCall = arg1
  dataTable4 = arg2
  dataTable5 = arg3
  cmgCall9 = arg4
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "534ad5c8ab".
textValue10(numberValue10, flag3)
textValue10 = RegisterNetEvent
numberValue10 = "f6d938d757"
-- Beginner: this function handles network event "f6d938d757".

-- === HELPER FUNCTION (decompiler name: flag3; parameters: arg1) ===
function flag3(arg1)
  local arg2
  cmgCall9 = arg1
end
textValue10(numberValue10, flag3)
textValue10 = RegisterNetEvent
numberValue10 = "aac7394dd7"
-- Beginner: this function handles network event "aac7394dd7".

-- === HELPER FUNCTION (decompiler name: flag3; parameters: none) ===
function flag3()
  local arg1, arg2
  arg1 = ClearPedTasks
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "aac7394dd7".
textValue10(numberValue10, flag3)
-- Beginner: this function handles network event "aac7394dd7".

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: none) ===
function textValue10()
  local arg1, arg2, arg3, arg4, waitCall, numberValue19, cmgCall12
  arg1 = CMG
  arg1 = arg1.hasClientGroup
  arg2 = "Vigilante"
  arg1 = arg1(arg2)
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.shouldSkipSavedPosition
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.isUsingDelGun
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  if 6768186 == arg2 then
    return
  end
  arg2 = GetSelectedPedWeapon
  arg3 = arg1
  -- Beginner: result below is weaponHash.
  arg2 = arg2(arg3)
  if -1569615261 == arg2 then
    return
  end
  arg3 = dataTable
  arg3 = arg3[arg2]
  if arg3 then
    arg4 = CMG
    arg4 = arg4.hasClientPermission
    waitCall = arg3
    arg4 = arg4(waitCall)
    if not arg4 then
      arg4 = CMG
      arg4 = arg4.setWeapon
      waitCall = arg1
      numberValue19 = -1569615261
      cmgCall12 = true
      arg4(waitCall, numberValue19, cmgCall12)
      arg4 = notify
      waitCall = "~r~You are not of a high enough level to use this gun."
      -- Beginner: Show a notification to the player.
      arg4(waitCall)
      return
    end
  end
  arg4 = dataTable2
  arg4 = arg4[arg2]
  if not arg4 then
    arg4 = CMG
    arg4 = arg4.setWeapon
    waitCall = arg1
    numberValue19 = -1569615261
    cmgCall12 = true
    arg4(waitCall, numberValue19, cmgCall12)
    arg4 = notify
    waitCall = "~r~You can only use vigilante weapons while clocked on."
    -- Beginner: Show a notification to the player.
    arg4(waitCall)
  end
end
numberValue10 = CMG
numberValue10 = numberValue10.createThreadOnTick
flag3 = textValue10
workValue8 = "Vigilante"
-- Beginner: Run a helper every game frame while this script is active.
numberValue10(flag3, workValue8)
numberValue10 = RegisterNetEvent
flag3 = "e9d0792f35"
-- Beginner: this function handles network event "e9d0792f35".

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1, arg2, arg3) ===
function workValue8(arg1, arg2, arg3)
  local arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2
  if arg3 then
    arg4 = "~g~The vigilante has provided proof for the legitimacy of your arrest."
    if arg4 then
      goto flow_label_7
    end
  end
  arg4 = "~r~The vigilante has not provided any other information."
  ::flow_label_7::
  waitCall = CMG
  waitCall = waitCall.notifyPicture
  numberValue19 = "polnotification"
  cmgCall12 = "vigilante"
  workValue14 = string
  workValue14 = workValue14.format
  nameValue = [[
~y~Name: %s
Temp ID: %s

%s]]
  workValue15 = arg2
  numberValue = arg1
  numberValue2 = arg4
  workValue14 = workValue14(nameValue, workValue15, numberValue, numberValue2)
  nameValue = "Vigilante Card"
  workValue15 = "~y~User Information"
  waitCall(numberValue19, cmgCall12, workValue14, nameValue, workValue15)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e9d0792f35".
numberValue10(flag3, workValue8)
numberValue10 = RegisterNetEvent
flag3 = "f4da8f66cc"
-- Beginner: this function handles network event "f4da8f66cc".

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = 1409747695
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = CMG
  arg3 = arg3.requestEntitySpawn
  arg4 = "vigilante_card_object"
  arg3(arg4)
  arg3 = CreateObject
  arg4 = arg2
  waitCall = 0
  numberValue19 = 0
  cmgCall12 = 0
  workValue14 = true
  nameValue = true
  workValue15 = true
  -- Beginner: result below is objectEntity.
  arg3 = arg3(arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15)
  while true do
    arg4 = DoesEntityExist
    waitCall = arg3
    arg4 = arg4(waitCall)
    if arg4 then
      break
    end
    arg4 = Wait
    waitCall = 0
    arg4(waitCall)
  end
  arg4 = SetModelAsNoLongerNeeded
  waitCall = arg2
  arg4(waitCall)
  arg4 = FreezeEntityPosition
  waitCall = arg3
  numberValue19 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg4(waitCall, numberValue19)
  arg4 = AttachEntityToEntity
  waitCall = arg3
  numberValue19 = arg1
  cmgCall12 = GetPedBoneIndex
  workValue14 = arg1
  nameValue = 58866
  cmgCall12 = cmgCall12(workValue14, nameValue)
  workValue14 = 0.03
  nameValue = -0.05
  workValue15 = -0.044
  numberValue = 0.0
  numberValue2 = 90.0
  textValue2 = 25.0
  workValue2 = true
  cmgCall3 = true
  gameTime = false
  numberValue4 = true
  cmgCall6 = 1
  textValue4 = true
  -- Beginner: Attach one entity to another entity.
  arg4(waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue, numberValue2, textValue2, workValue2, cmgCall3, gameTime, numberValue4, cmgCall6, textValue4)
  arg4 = Wait
  waitCall = 3000
  arg4(waitCall)
  arg4 = DeleteObject
  waitCall = arg3
  arg4(waitCall)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f4da8f66cc".
numberValue10(flag3, workValue8)
numberValue10 = CMG
numberValue10 = numberValue10.registerDevMenuItems
flag3 = "Vigilante"

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2, arg3, arg4, waitCall
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Set Bounty Amount"
  arg3 = ""
  arg4 = true

  -- === HELPER FUNCTION: waitCall(arg12, arg22, arg32) ===
  function waitCall(arg12, arg22, arg32)
    local stringHelper, dataTable8
    if arg32 then
      stringHelper = TriggerServerEvent
      dataTable8 = "969fa69817"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "969fa69817".
      stringHelper(dataTable8)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, arg4, waitCall)
end
numberValue10(flag3, workValue8)
numberValue10 = Citizen
numberValue10 = numberValue10.CreateThread

-- === HELPER FUNCTION (decompiler name: flag3; parameters: none) ===
function flag3()
  local arg1, arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15
  arg1 = pairs
  arg2 = cmgCall7.weapons
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for waitCall, numberValue19 in arg1, arg2, arg3, arg4 do
    cmgCall12 = numberValue19.ammo
    if "plastic" == cmgCall12 then
      cmgCall12 = GetHashKey
      workValue14 = waitCall
      -- Beginner: result below is hash.
      cmgCall12 = cmgCall12(workValue14)
      workValue14 = numberValue19.class
      if "SMG" == workValue14 then
        workValue14 = dataTable
        workValue14[cmgCall12] = "vigilantesting.whitelisted"
      else
        workValue14 = numberValue19.class
        if "AR" == workValue14 then
          workValue14 = dataTable
          workValue14[cmgCall12] = "vigilantespar16.whitelisted"
        else
          workValue14 = numberValue19.subType
          if "musket" == workValue14 then
            workValue14 = dataTable
            workValue14[cmgCall12] = "vigilantemosin.whitelisted"
          end
        end
      end
    end
  end
  arg1 = cmgCall10.CMGGunStores
  if arg1 then
    arg1 = cmgCall10.CMGGunStores
    arg1 = arg1.Vigilante
  end
  if arg1 then
    arg2 = pairs
    arg3 = arg1
    arg2, arg3, arg4, waitCall = arg2(arg3)
    for numberValue19, cmgCall12 in arg2, arg3, arg4, waitCall do
      if "_config" ~= numberValue19 then
        workValue14 = string
        workValue14 = workValue14.find
        nameValue = numberValue19
        workValue15 = "^item|"
        workValue14 = workValue14(nameValue, workValue15)
        if not workValue14 then
          workValue14 = GetHashKey
          nameValue = numberValue19
          -- Beginner: result below is hash.
          workValue14 = workValue14(nameValue)
          nameValue = dataTable2
          nameValue[workValue14] = true
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
numberValue10(flag3)
numberValue10 = false
flag3 = "vigiJammer"
workValue8 = RegisterNetEvent
numberValue11 = "f69c81fc30"
-- Beginner: this function handles network event "f69c81fc30".

-- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg1, arg2) ===
function numberValue12(arg1, arg2)
  local arg3, arg4, waitCall, numberValue19, cmgCall12
  numberValue10 = arg1
  if arg1 and arg2 and arg2 > 0 then
    arg3 = CMG
    arg3 = arg3.addHudDurationTimer
    arg4 = flag3
    waitCall = "Vigilante Jammer"
    numberValue19 = arg2
    cmgCall12 = nil
    arg3(arg4, waitCall, numberValue19, cmgCall12)
  else
    arg3 = CMG
    arg3 = arg3.removeHudTimer
    arg4 = flag3
    arg3(arg4)
  end
  arg3 = CMG
  arg3 = arg3.refreshMoneyUI
  arg3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f69c81fc30".
workValue8(numberValue11, numberValue12)
workValue8 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
function numberValue11()
  local arg1, arg2
  arg1 = numberValue10
  return arg1
end
workValue8.isBountyJammed = numberValue11
workValue8 = {}
numberValue11 = DecorRegister
numberValue12 = "f1f74bea1b"
numberValue13 = 3
numberValue11(numberValue12, numberValue13)
numberValue11 = RegisterNetEvent
numberValue12 = "3bf0c6ee80"
-- Beginner: this function handles network event "3bf0c6ee80".

-- === HELPER FUNCTION (decompiler name: numberValue13; parameters: arg1, arg2) ===
function numberValue13(arg1, arg2)
  local arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue
  arg3 = CMG
  arg3 = arg3.loadModel
  arg4 = "amkzw_medic_skeleton"
  arg3 = arg3(arg4)
  arg4 = CreateObject
  waitCall = arg3
  numberValue19 = arg2.x
  cmgCall12 = arg2.y
  workValue14 = arg2.z
  nameValue = false
  workValue15 = true
  numberValue = true
  -- Beginner: result below is objectEntity.
  arg4 = arg4(waitCall, numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue)
  waitCall = FreezeEntityPosition
  numberValue19 = arg4
  cmgCall12 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  waitCall(numberValue19, cmgCall12)
  waitCall = PlaceObjectOnGroundProperly
  numberValue19 = arg4
  waitCall(numberValue19)
  waitCall = SetEntityRotation
  numberValue19 = arg4
  cmgCall12 = -90.0
  workValue14 = 0.0
  nameValue = 0.0
  workValue15 = 2
  numberValue = true
  waitCall(numberValue19, cmgCall12, workValue14, nameValue, workValue15, numberValue)
  waitCall = DecorSetInt
  numberValue19 = arg4
  cmgCall12 = "f1f74bea1b"
  workValue14 = arg1
  waitCall(numberValue19, cmgCall12, workValue14)
  waitCall = SetModelAsNoLongerNeeded
  numberValue19 = arg3
  waitCall(numberValue19)
  waitCall = workValue8
  waitCall[arg1] = arg4
  waitCall = SetTimeout
  numberValue19 = 600000

  -- === HELPER FUNCTION (decompiler name: cmgCall12; parameters: none) ===
  function cmgCall12()
    local arg12, arg22
    arg22 = arg1
    arg12 = workValue8
    arg12[arg22] = nil
    arg12 = DeleteObject
    arg22 = arg4
    arg12(arg22)
  end
  waitCall(numberValue19, cmgCall12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3bf0c6ee80".
numberValue11(numberValue12, numberValue13)
numberValue11 = RegisterNetEvent
numberValue12 = "3b9fdf5c44"
-- Beginner: this function handles network event "3b9fdf5c44".

-- === HELPER FUNCTION (decompiler name: numberValue13; parameters: arg1) ===
function numberValue13(arg1)
  local arg2, arg3, arg4
  arg2 = workValue8
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = workValue8
    arg3[arg1] = nil
    arg3 = DeleteObject
    arg4 = arg2
    arg3(arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3b9fdf5c44".
numberValue11(numberValue12, numberValue13)
numberValue11 = AddEventHandler
numberValue12 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: numberValue13; parameters: arg1) ===
function numberValue13(arg1)
  local arg2, arg3, arg4, waitCall, numberValue19, cmgCall12, workValue14, nameValue
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = pairs
    arg3 = workValue8
    arg2, arg3, arg4, waitCall = arg2(arg3)
    for numberValue19, cmgCall12 in arg2, arg3, arg4, waitCall do
      workValue14 = DeleteObject
      nameValue = cmgCall12
      workValue14(nameValue)
    end
    arg2 = {}
    workValue8 = arg2
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
numberValue11(numberValue12, numberValue13)
