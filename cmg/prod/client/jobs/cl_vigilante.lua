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
local cmgOperation, cmgOperation7, cmgOperation10, text11, dataCollection7, dataCollection9, dataCollection10, dataCollection11, stateFlag4, dataCollection12, workingValue, dataCollection, dataCollection2, number3, stateFlag, cmgOperation4, cmgOperation5, text3, workingValue4, eventHandler, text6, number6, cmgOperation8, eventHandlerRegistration, text7, text8, rageUiOperation, dataCollection4, dataCollection5, cmgOperation9, workingValue5, workingValue6, workingValue7, stateFlag2, text9, text10, number10, stateFlag3, workingValue8, number11, number12, number13, number14, number15, number16, number17, number18, workingValue9, workingValue10, dataCollection6
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation7 = "cfg/cfg_vigilante"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation7)
cmgOperation7 = CMG
cmgOperation7 = cmgOperation7.loadModule
cmgOperation10 = "cfg/weapons"
-- Beginner: result below is config.
cmgOperation7 = cmgOperation7(cmgOperation10)
cmgOperation10 = CMG
cmgOperation10 = cmgOperation10.loadModule
text11 = "cfg/cfg_gunstore"
-- Beginner: result below is config.
cmgOperation10 = cmgOperation10(text11)
text11 = 0
dataCollection7 = {}
dataCollection9 = {}
dataCollection10 = {}
dataCollection11 = {}
stateFlag4 = false
dataCollection12 = {}
workingValue = nil
dataCollection = {}
dataCollection2 = {}
number3 = 0
stateFlag = false
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2
  localValue1 = number3
  return localValue1
end
cmgOperation4.getClientVigilanteLevel = cmgOperation5
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "CMG:updateVigilanteStats"
-- Beginner: this function handles network event "CMG:updateVigilanteStats".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3
  number3 = localValue1
  localValue3 = true
  stateFlag = localValue3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "CMG:updateVigilanteStats".
cmgOperation4(cmgOperation5, text3)
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "f20ef77560"
-- Beginner: this function handles network event "f20ef77560".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2
  text11 = localValue1
  localValue2 = CMG
  localValue2 = localValue2.refreshMoneyUI
  localValue2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f20ef77560".
cmgOperation4(cmgOperation5, text3)
cmgOperation4 = CMG
-- Beginner: this function handles network event "f20ef77560".

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2
  localValue1 = text11
  return localValue1
end
cmgOperation4.getClientBounty = cmgOperation5
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2
  localValue1 = cmgOperation.cityPosition
  localValue2 = cmgOperation.cityRadius
  return localValue1, localValue2
end
cmgOperation4.getCityPositionAndRadius = cmgOperation5

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3
  localValue2 = localValue1.iconBlip
  if localValue2 then
    localValue2 = RemoveBlip
    localValue3 = localValue1.iconBlip
    localValue2(localValue3)
    localValue1.iconBlip = nil
  end
  localValue2 = localValue1.radiusBlip
  if localValue2 then
    localValue2 = RemoveBlip
    localValue3 = localValue1.radiusBlip
    localValue2(localValue3)
    localValue1.radiusBlip = nil
  end
end
cmgOperation5 = RegisterNetEvent
text3 = "6ecaac4327"
-- Beginner: this function handles network event "6ecaac4327".

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue
  localValue2 = pairs
  localValue3 = dataCollection7
  localValue2, localValue3, localValue4, waitCall = localValue2(localValue3)
  for number19, cmgOperation12 in localValue2, localValue3, localValue4, waitCall do
    workingValue14 = localValue1[number19]
    if not workingValue14 then
      workingValue14 = cmgOperation4
      nameValue = cmgOperation12
      workingValue14(nameValue)
      workingValue14 = dataCollection7
      workingValue14[number19] = nil
    end
  end
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, waitCall = localValue2(localValue3)
  for number19, cmgOperation12 in localValue2, localValue3, localValue4, waitCall do
    workingValue14 = dataCollection7
    workingValue14 = workingValue14[number19]
    if not workingValue14 then
      nameValue = dataCollection7
      nameValue[number19] = cmgOperation12
    else
      nameValue = cmgOperation12.name
      workingValue14.name = nameValue
      nameValue = cmgOperation12.totalOutstanding
      workingValue14.totalOutstanding = nameValue
      nameValue = cmgOperation12.offenses
      workingValue14.offenses = nameValue
    end
  end
  localValue2 = pairs
  localValue3 = dataCollection9
  localValue2, localValue3, localValue4, waitCall = localValue2(localValue3)
  for number19 in localValue2, localValue3, localValue4, waitCall do
    cmgOperation12 = CMG
    cmgOperation12 = cmgOperation12.clientGetUserIdFromSource
    workingValue14 = number19
    -- Beginner: result below is userId.
    cmgOperation12 = cmgOperation12(workingValue14)
    if cmgOperation12 then
      workingValue14 = dataCollection7
      workingValue14 = workingValue14[cmgOperation12]
      if workingValue14 then
        goto continueAtStep52
      end
    end
    workingValue14 = dataCollection9
    workingValue14[number19] = nil
    ::continueAtStep52::
  end
  localValue2 = TriggerEvent
  localValue3 = "CMG:fetchVigilanteAppData"
  localValue4 = false
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMG:fetchVigilanteAppData".
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6ecaac4327".
cmgOperation5(text3, workingValue4)

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14
  localValue1 = pairs
  localValue2 = dataCollection7
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for waitCall, number19 in localValue1, localValue2, localValue3, localValue4 do
    cmgOperation12 = cmgOperation4
    workingValue14 = number19
    cmgOperation12(workingValue14)
  end
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = localValue1.radiusBlip
  if localValue2 then
    localValue2 = localValue1.iconBlip
    if localValue2 then
      goto continueAtStep8
    end
  end
  return
  ::continueAtStep8::
  localValue2 = localValue1.isVisible
  if false == localValue2 then
    localValue2 = SetBlipDisplay
    localValue3 = localValue1.radiusBlip
    localValue4 = 0
    localValue2(localValue3, localValue4)
    localValue2 = SetBlipDisplay
    localValue3 = localValue1.iconBlip
    localValue4 = 0
    localValue2(localValue3, localValue4)
  else
    localValue2 = SetBlipDisplay
    localValue3 = localValue1.radiusBlip
    localValue4 = 2
    localValue2(localValue3, localValue4)
    localValue2 = SetBlipDisplay
    localValue3 = localValue1.iconBlip
    localValue4 = 2
    localValue2(localValue3, localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2
  localValue3 = dataCollection7
  localValue3 = localValue3[localValue1]
  if not localValue3 then
    return
  end
  localValue4 = #localValue2
  waitCall = 0.1
  localValue4 = localValue4 < waitCall
  waitCall = cmgOperation4
  number19 = localValue3
  waitCall(number19)
  while true do
    waitCall = stateFlag
    if waitCall then
      break
    end
    waitCall = Wait
    number19 = 0
    waitCall(number19)
  end
  waitCall = cmgOperation4
  number19 = localValue3
  waitCall(number19)
  waitCall = cmgOperation.levels
  number19 = number3
  waitCall = waitCall[number19]
  number19 = math
  number19 = number19.random
  cmgOperation12 = cmgOperation.targetSuspectedInaccuracy
  cmgOperation12 = -cmgOperation12
  workingValue14 = waitCall.circleScale
  cmgOperation12 = cmgOperation12 * workingValue14
  workingValue14 = cmgOperation.targetSuspectedInaccuracy
  nameValue = waitCall.circleScale
  workingValue14 = workingValue14 * nameValue
  number19 = number19(cmgOperation12, workingValue14)
  cmgOperation12 = math
  cmgOperation12 = cmgOperation12.random
  workingValue14 = cmgOperation.targetSuspectedInaccuracy
  workingValue14 = -workingValue14
  nameValue = waitCall.circleScale
  workingValue14 = workingValue14 * nameValue
  nameValue = cmgOperation.targetSuspectedInaccuracy
  workingValue15 = waitCall.circleScale
  nameValue = nameValue * workingValue15
  cmgOperation12 = cmgOperation12(workingValue14, nameValue)
  workingValue14 = vector3
  nameValue = number19
  workingValue15 = cmgOperation12
  number = 0.0
  workingValue14 = workingValue14(nameValue, workingValue15, number)
  workingValue14 = localValue2 + workingValue14
  if not localValue4 then
    nameValue = AddBlipForRadius
    workingValue15 = workingValue14.x
    number = workingValue14.y
    number2 = workingValue14.z
    text2 = cmgOperation.targetSuspectedRadius
    workingValue2 = waitCall.circleScale
    text2 = text2 * workingValue2
    -- Beginner: result below is blipHandle.
    nameValue = nameValue(workingValue15, number, number2, text2)
    localValue3.radiusBlip = nameValue
    nameValue = SetBlipColour
    workingValue15 = localValue3.radiusBlip
    number = 47
    nameValue(workingValue15, number)
    nameValue = SetBlipAlpha
    workingValue15 = localValue3.radiusBlip
    number = 100
    nameValue(workingValue15, number)
    nameValue = SetBlipPriority
    workingValue15 = localValue3.radiusBlip
    number = 0
    nameValue(workingValue15, number)
    nameValue = AddBlipForCoord
    workingValue15 = workingValue14.x
    number = workingValue14.y
    number2 = workingValue14.z
    -- Beginner: result below is blipHandle.
    nameValue = nameValue(workingValue15, number, number2)
    localValue3.iconBlip = nameValue
    nameValue = SetBlipSprite
    workingValue15 = localValue3.iconBlip
    number = 774
    nameValue(workingValue15, number)
    nameValue = SetBlipColour
    workingValue15 = localValue3.iconBlip
    number = 1
    nameValue(workingValue15, number)
  end
  nameValue = text3
  workingValue15 = localValue3
  nameValue(workingValue15)
  localValue3.lastLocation = workingValue14
  if localValue4 then
    localValue3.lastPing = 0
  else
    nameValue = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    nameValue = nameValue()
    localValue3.lastPing = nameValue
  end
end
eventHandler = RegisterNetEvent
text6 = "d9ca742ca3"
number6 = workingValue4
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d9ca742ca3".
eventHandler(text6, number6)
eventHandler = RegisterNetEvent
text6 = "f80b5289a6"
-- Beginner: this function handles network event "f80b5289a6".

-- === HELPER FUNCTION (decompiler name: number6; parameters: localValue1) ===
function number6(localValue1)
  local localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15
  localValue2 = cmgOperation5
  localValue2()
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, waitCall = localValue2(localValue3)
  for number19, cmgOperation12 in localValue2, localValue3, localValue4, waitCall do
    workingValue14 = workingValue4
    nameValue = number19
    workingValue15 = cmgOperation12
    workingValue14(nameValue, workingValue15)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f80b5289a6".
eventHandler(text6, number6)
eventHandler = RegisterNetEvent
text6 = "a4053df785"
-- Beginner: this function handles network event "a4053df785".

-- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
function number6()
  local localValue1, localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2
  localValue1 = pairs
  localValue2 = cmgOperation.bases
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for waitCall, number19 in localValue1, localValue2, localValue3, localValue4 do
    cmgOperation12 = AddBlipForRadius
    workingValue14 = number19.position
    workingValue14 = workingValue14.x
    nameValue = number19.position
    nameValue = nameValue.y
    workingValue15 = number19.position
    workingValue15 = workingValue15.z
    number = number19.radius
    -- Beginner: result below is blipHandle.
    cmgOperation12 = cmgOperation12(workingValue14, nameValue, workingValue15, number)
    number19.radiusBlip = cmgOperation12
    cmgOperation12 = SetBlipColour
    workingValue14 = number19.radiusBlip
    nameValue = 5
    cmgOperation12(workingValue14, nameValue)
    cmgOperation12 = SetBlipAlpha
    workingValue14 = number19.radiusBlip
    nameValue = 150
    cmgOperation12(workingValue14, nameValue)
    cmgOperation12 = tCMG
    cmgOperation12 = cmgOperation12.addBlip
    workingValue14 = number19.position
    workingValue14 = workingValue14.x
    nameValue = number19.position
    nameValue = nameValue.y
    workingValue15 = number19.position
    workingValue15 = workingValue15.z
    number = 492
    number2 = 59
    text2 = "Vigilante Base"
    cmgOperation12 = cmgOperation12(workingValue14, nameValue, workingValue15, number, number2, text2)
    number19.iconBlip = cmgOperation12
    cmgOperation12 = CMG
    cmgOperation12 = cmgOperation12.createGunStore
    workingValue14 = string
    workingValue14 = workingValue14.format
    nameValue = "vigilante_gunstore_%s"
    workingValue15 = waitCall
    workingValue14 = workingValue14(nameValue, workingValue15)
    nameValue = "Vigilante"
    workingValue15 = number19.gunstoreLocation
    cmgOperation12 = cmgOperation12(workingValue14, nameValue, workingValue15)
    number19.gunstoreId = cmgOperation12
    cmgOperation12 = CMG
    cmgOperation12 = cmgOperation12.createClothingMenu
    workingValue14 = string
    workingValue14 = workingValue14.format
    nameValue = "vigilante_clothing_%s"
    workingValue15 = waitCall
    workingValue14 = workingValue14(nameValue, workingValue15)
    nameValue = number19.clothingLocation
    cmgOperation12(workingValue14, nameValue)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a4053df785".
eventHandler(text6, number6)
eventHandler = RegisterNetEvent
text6 = "a5ae8ef365"
-- Beginner: this function handles network event "a5ae8ef365".

-- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
function number6()
  local localValue1, localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15
  localValue1 = cmgOperation5
  localValue1()
  localValue1 = pairs
  localValue2 = cmgOperation.bases
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for waitCall, number19 in localValue1, localValue2, localValue3, localValue4 do
    cmgOperation12 = number19.radiusBlip
    if cmgOperation12 then
      cmgOperation12 = RemoveBlip
      workingValue14 = number19.radiusBlip
      cmgOperation12(workingValue14)
      number19.radiusBlip = nil
    end
    cmgOperation12 = number19.iconBlip
    if cmgOperation12 then
      cmgOperation12 = tCMG
      cmgOperation12 = cmgOperation12.removeBlip
      workingValue14 = number19.iconBlip
      cmgOperation12(workingValue14)
      number19.iconBlip = nil
    end
    cmgOperation12 = number19.dropMarker
    if cmgOperation12 then
      cmgOperation12 = tCMG
      cmgOperation12 = cmgOperation12.removeMarker
      workingValue14 = number19.dropMarker
      cmgOperation12(workingValue14)
      number19.dropMarker = nil
    end
    cmgOperation12 = number19.gunstoreId
    if cmgOperation12 then
      cmgOperation12 = CMG
      cmgOperation12 = cmgOperation12.deleteGunStore
      workingValue14 = number19.gunstoreId
      cmgOperation12(workingValue14)
      number19.gunstoreId = nil
    end
    cmgOperation12 = CMG
    cmgOperation12 = cmgOperation12.deleteClothingMenu
    workingValue14 = string
    workingValue14 = workingValue14.format
    nameValue = "vigilante_clothing_%s"
    workingValue15 = waitCall
    workingValue14, nameValue, workingValue15 = workingValue14(nameValue, workingValue15)
    cmgOperation12(workingValue14, nameValue, workingValue15)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a5ae8ef365".
eventHandler(text6, number6)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2) ===
function eventHandler(localValue1, localValue2)
  local localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4, text5, number5
  localValue3 = IsEntityVisible
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = HasEntityClearLosToEntity
    localValue4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue4 = localValue4()
    waitCall = localValue1
    number19 = 17
    localValue3 = localValue3(localValue4, waitCall, number19)
    if localValue3 then
      goto continueAtStep15
    end
  end
  return
  ::continueAtStep15::
  localValue3 = GetEntityCoords
  localValue4 = localValue1
  waitCall = true
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4, waitCall)
  localValue4 = GetScreenCoordFromWorldCoord
  waitCall = localValue3.x
  number19 = localValue3.y
  cmgOperation12 = localValue3.z
  localValue4 = localValue4(waitCall, number19, cmgOperation12)
  if not localValue4 then
    return
  end
  localValue4 = GetPedBoneIndex
  waitCall = localValue1
  number19 = 31086
  localValue4 = localValue4(waitCall, number19)
  waitCall = GetPedBoneIndex
  number19 = localValue1
  cmgOperation12 = 11816
  waitCall = waitCall(number19, cmgOperation12)
  number19 = GetWorldPositionOfEntityBone
  cmgOperation12 = localValue1
  workingValue14 = localValue4
  number19 = number19(cmgOperation12, workingValue14)
  cmgOperation12 = GetWorldPositionOfEntityBone
  workingValue14 = localValue1
  nameValue = waitCall
  cmgOperation12 = cmgOperation12(workingValue14, nameValue)
  workingValue14 = GetScreenCoordFromWorldCoord
  nameValue = number19.x
  workingValue15 = number19.y
  number = number19.z
  workingValue14, nameValue, workingValue15 = workingValue14(nameValue, workingValue15, number)
  number = GetScreenCoordFromWorldCoord
  number2 = cmgOperation12.x
  text2 = cmgOperation12.y
  workingValue2 = cmgOperation12.z
  number, number2, text2 = number(number2, text2, workingValue2)
  workingValue2 = workingValue14 or workingValue2
  workingValue2 = number or workingValue2
  if workingValue14 and number then
    workingValue2 = text2 - workingValue15
    cmgOperation3 = 0.025
    workingValue2 = workingValue2 > cmgOperation3
  end
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  cmgOperation3 = cmgOperation3()
  cmgOperation3 = localValue3 - cmgOperation3
  cmgOperation3 = #cmgOperation3
  cmgOperation3 = cmgOperation3 < 30.0
  if not workingValue2 and not cmgOperation3 then
    return
  end
  gameTime = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  gameTime = gameTime()
  number4 = dataCollection9
  number4 = number4[localValue2]
  if number4 then
    cmgOperation6 = gameTime - number4
    text4 = 5000
    if not (cmgOperation6 > text4) then
      goto continueAtStep93
    end
  end
  cmgOperation6 = notify
  text4 = "~y~A target has been identified and tagged."
  -- Beginner: Show a notification to the player.
  cmgOperation6(text4)
  ::continueAtStep93::
  cmgOperation6 = dataCollection9
  cmgOperation6[localValue2] = gameTime
  cmgOperation6 = CMG
  cmgOperation6 = cmgOperation6.isPositionInGreenzone
  text4 = localValue3
  cmgOperation6 = cmgOperation6(text4)
  if cmgOperation6 then
    return
  end
  cmgOperation6 = dataCollection10
  cmgOperation6 = cmgOperation6[localValue2]
  if cmgOperation6 then
    text4 = gameTime - cmgOperation6
    text5 = 10000
    if not (text4 > text5) then
      goto continueAtStep117
    end
  end
  text4 = TriggerServerEvent
  text5 = "535f18d011"
  number5 = localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "535f18d011".
  text4(text5, number5)
  text4 = dataCollection10
  text4[localValue2] = gameTime
  ::continueAtStep117::
end
text6 = vector2
number6 = 0.2
cmgOperation8 = 0.4
text6 = text6(number6, cmgOperation8)

-- === HELPER FUNCTION (decompiler name: number6; parameters: localValue1, localValue2, localValue3) ===
function number6(localValue1, localValue2, localValue3)
  local localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4, text5, number5, number7
  localValue4 = dataCollection11
  localValue4 = localValue4[localValue1]
  if not localValue4 then
    waitCall = RegisterPedheadshot_3
    number19 = localValue1
    waitCall = waitCall(number19)
    localValue4 = waitCall
    waitCall = dataCollection11
    waitCall[localValue1] = localValue4
  end
  waitCall = IsPedheadshotReady
  number19 = localValue4
  waitCall = waitCall(number19)
  if waitCall then
    waitCall = IsPedheadshotValid
    number19 = localValue4
    waitCall = waitCall(number19)
    if waitCall then
      goto continueAtStep23
    end
  end
  waitCall = false
  return waitCall
  ::continueAtStep23::
  waitCall = GetPedheadshotTxdString
  number19 = localValue4
  waitCall = waitCall(number19)
  if not waitCall then
    number19 = false
    return number19
  end
  number19 = fullPlayerListData
  number19 = number19[localValue3]
  if not number19 then
    number19 = false
    return number19
  end
  number19 = fullPlayerListData
  number19 = number19[localValue3]
  number19 = number19[2]
  cmgOperation12 = GetActiveScreenResolution
  cmgOperation12, workingValue14 = cmgOperation12()
  nameValue = workingValue14 / cmgOperation12
  workingValue15 = localValue2 - 1
  workingValue15 = workingValue15 * 0.15
  number = DrawRect
  number2 = text6.x
  text2 = text6.y
  text2 = text2 + workingValue15
  workingValue2 = nameValue * 0.18
  cmgOperation3 = 0.18
  gameTime = 0
  number4 = 0
  cmgOperation6 = 0
  text4 = 255
  number(number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4)
  number = DrawSprite
  number2 = waitCall
  text2 = waitCall
  workingValue2 = 0.2
  cmgOperation3 = text6.y
  cmgOperation3 = cmgOperation3 + workingValue15
  gameTime = nameValue * 0.14
  number4 = 0.14
  cmgOperation6 = 0.0
  text4 = 255
  text5 = 255
  number5 = 255
  number7 = 255
  number(number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4, text5, number5, number7)
  number = CMG
  number = number.DrawText
  number2 = text6.x
  text2 = text6.y
  text2 = text2 + 0.06
  workingValue2 = workingValue15 * 1.02
  text2 = text2 + workingValue2
  workingValue2 = number19
  cmgOperation3 = 0.25
  gameTime = 0
  number4 = 0
  number(number2, text2, workingValue2, cmgOperation3, gameTime, number4)
  if 1 == localValue2 then
    number = DrawRect
    number2 = text6.x
    text2 = text6.y
    text2 = text2 - 0.1
    workingValue2 = nameValue * 0.18
    cmgOperation3 = 0.03
    gameTime = 0
    number4 = 0
    cmgOperation6 = 0
    text4 = 255
    number(number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4)
    number = CMG
    number = number.DrawText
    number2 = text6.x
    text2 = text6.y
    text2 = text2 - 0.105
    workingValue2 = "WANTED"
    cmgOperation3 = 0.4
    gameTime = 0
    number4 = 0
    cmgOperation6 = {}
    text4 = 255
    text5 = 0
    number5 = 0
    number7 = 255
    cmgOperation6[1] = text4
    cmgOperation6[2] = text5
    cmgOperation6[3] = number5
    cmgOperation6[4] = number7
    number(number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6)
  end
  number = true
  return number
end
cmgOperation8 = CMG

-- === HELPER FUNCTION: eventHandlerRegistration(localValue1) ===
function eventHandlerRegistration(localValue1)
  local localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue
  localValue2 = pairs
  localValue3 = dataCollection11
  localValue2, localValue3, localValue4, waitCall = localValue2(localValue3)
  for number19, cmgOperation12 in localValue2, localValue3, localValue4, waitCall do
    workingValue14 = DoesEntityExist
    nameValue = number19
    workingValue14 = workingValue14(nameValue)
    if not workingValue14 or localValue1 then
      workingValue14 = UnregisterPedheadshot
      nameValue = cmgOperation12
      workingValue14(nameValue)
      workingValue14 = dataCollection11
      workingValue14[number19] = nil
    end
  end
end
cmgOperation8.unregisterVigilanteHeadshots = eventHandlerRegistration
cmgOperation8 = CMG

-- === HELPER FUNCTION: eventHandlerRegistration() ===
function eventHandlerRegistration()
  local localValue1, localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2
  localValue1 = CMG
  localValue1 = localValue1.hasClientGroup
  localValue2 = "Vigilante"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    return
  end
  localValue1 = 1
  localValue2 = pairs
  localValue3 = dataCollection7
  localValue2, localValue3, localValue4, waitCall = localValue2(localValue3)
  for number19 in localValue2, localValue3, localValue4, waitCall do
    cmgOperation12 = CMG
    cmgOperation12 = cmgOperation12.getClientUserSource
    workingValue14 = number19
    cmgOperation12 = cmgOperation12(workingValue14)
    if cmgOperation12 then
      workingValue14 = GetPlayerFromServerId
      nameValue = cmgOperation12
      -- Beginner: result below is playerIndex.
      workingValue14 = workingValue14(nameValue)
      if workingValue14 >= 0 then
        nameValue = GetPlayerPed
        workingValue15 = workingValue14
        -- Beginner: result below is playerPed.
        nameValue = nameValue(workingValue15)
        if 0 ~= nameValue then
          workingValue15 = eventHandler
          number = nameValue
          number2 = cmgOperation12
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          workingValue15(number, number2)
          workingValue15 = number6
          number = nameValue
          number2 = localValue1
          text2 = number19
          workingValue15 = workingValue15(number, number2, text2)
          if workingValue15 then
            localValue1 = localValue1 + 1
          end
        end
      end
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.unregisterVigilanteHeadshots
  localValue3 = false
  localValue2(localValue3)
end
cmgOperation8.runVigilanteTargetCheckThisFrame = eventHandlerRegistration
cmgOperation8 = CMG

-- === HELPER FUNCTION: eventHandlerRegistration(localValue1) ===
function eventHandlerRegistration(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.clientGetUserIdFromSource
  localValue3 = localValue1
  -- Beginner: result below is userId.
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue3 = dataCollection7
    localValue3 = localValue3[localValue2]
    if localValue3 then
      localValue3 = true
      return localValue3
    end
  end
  localValue3 = false
  return localValue3
end
cmgOperation8.isPlayerABountyTarget = eventHandlerRegistration
cmgOperation8 = CMG

-- === HELPER FUNCTION: eventHandlerRegistration(localValue1) ===
function eventHandlerRegistration(localValue1)
  local localValue2
  localValue2 = dataCollection9
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = true
    if localValue2 then
      goto continueAtStep9
    end
  end
  localValue2 = false
  ::continueAtStep9::
  return localValue2
end
cmgOperation8.isPlayerTaggedForBounty = eventHandlerRegistration
cmgOperation8 = CMG

-- === HELPER FUNCTION: eventHandlerRegistration(localValue1) ===
function eventHandlerRegistration(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = dataCollection9
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    localValue3 = localValue3 - localValue2
    localValue4 = cmgOperation.tagLongIdsDurationMsec
    if localValue3 < localValue4 then
      localValue3 = true
      return localValue3
    end
  end
  localValue3 = false
  return localValue3
end
cmgOperation8.shouldShowTagForBounty = eventHandlerRegistration

-- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue1) ===
function cmgOperation8(localValue1)
  local localValue2, localValue3, localValue4, waitCall
  localValue2 = AddBlipForEntity
  localValue3 = localValue1
  -- Beginner: result below is blipHandle.
  localValue2 = localValue2(localValue3)
  localValue3 = SetBlipAsShortRange
  localValue4 = localValue2
  waitCall = true
  localValue3(localValue4, waitCall)
  localValue3 = SetBlipDisplay
  localValue4 = localValue2
  waitCall = 9
  localValue3(localValue4, waitCall)
  localValue3 = SetBlipSprite
  localValue4 = localValue2
  waitCall = 480
  localValue3(localValue4, waitCall)
  localValue3 = SetBlipColour
  localValue4 = localValue2
  waitCall = 28
  localValue3(localValue4, waitCall)
  localValue3 = CMG
  localValue3 = localValue3.addBlipContext
  localValue4 = "Vigilante"
  waitCall = localValue2
  localValue3(localValue4, waitCall)
end
eventHandlerRegistration = pairs
text7 = cmgOperation.bases
eventHandlerRegistration, text7, text8, rageUiOperation = eventHandlerRegistration(text7)
for dataCollection4, dataCollection5 in eventHandlerRegistration, text7, text8, rageUiOperation do
  cmgOperation9 = CMG
  cmgOperation9 = cmgOperation9.createDynamicPed
  workingValue5 = cmgOperation.pedModels
  workingValue5 = workingValue5.dropoff
  workingValue6 = dataCollection5.pedLocation
  workingValue6 = workingValue6.xyz
  workingValue7 = dataCollection5.pedLocation
  workingValue7 = workingValue7.w
  stateFlag2 = true
  text9 = "amb@world_human_hang_out_street@male_c@idle_a"
  text10 = "idle_b"
  number10 = 100.0
  stateFlag3 = false
  workingValue8 = cmgOperation8
  cmgOperation9(workingValue5, workingValue6, workingValue7, stateFlag2, text9, text10, number10, stateFlag3, workingValue8)
  cmgOperation9 = CMG
  cmgOperation9 = cmgOperation9.createDynamicPed
  workingValue5 = cmgOperation.pedModels
  workingValue5 = workingValue5.gunstore
  workingValue6 = dataCollection5.gunstorePedLocation
  workingValue6 = workingValue6.xyz
  workingValue7 = dataCollection5.gunstorePedLocation
  workingValue7 = workingValue7.w
  stateFlag2 = true
  text9 = "anim@miss@low@fin@vagos@"
  text10 = "idle_ped05"
  number10 = 100.0
  stateFlag3 = false
  workingValue8 = cmgOperation8
  cmgOperation9(workingValue5, workingValue6, workingValue7, stateFlag2, text9, text10, number10, stateFlag3, workingValue8)
  cmgOperation9 = CMG
  cmgOperation9 = cmgOperation9.createDynamicPed
  workingValue5 = cmgOperation.pedModels
  workingValue5 = workingValue5.market
  workingValue6 = dataCollection5.marketPedLocation
  workingValue6 = workingValue6.xyz
  workingValue7 = dataCollection5.marketPedLocation
  workingValue7 = workingValue7.w
  stateFlag2 = true
  text9 = "amb@world_human_hang_out_street@male_c@idle_a"
  text10 = "idle_b"
  number10 = 100.0
  stateFlag3 = false
  workingValue8 = cmgOperation8
  cmgOperation9(workingValue5, workingValue6, workingValue7, stateFlag2, text9, text10, number10, stateFlag3, workingValue8)
  cmgOperation9 = CMG
  cmgOperation9 = cmgOperation9.createDynamicPed
  workingValue5 = cmgOperation.pedModels
  workingValue5 = workingValue5.clockon
  workingValue6 = dataCollection5.groupSelectorPedLocation
  workingValue6 = workingValue6.xyz
  workingValue7 = dataCollection5.groupSelectorPedLocation
  workingValue7 = workingValue7.w
  stateFlag2 = true
  text9 = "amb@world_human_hang_out_street@male_c@idle_a"
  text10 = "idle_b"
  number10 = 100.0
  stateFlag3 = false
  workingValue8 = cmgOperation8
  cmgOperation9(workingValue5, workingValue6, workingValue7, stateFlag2, text9, text10, number10, stateFlag3, workingValue8)
end
eventHandlerRegistration = AddEventHandler
text7 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1) ===
function text8(localValue1)
  local localValue2, localValue3
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.unregisterVigilanteHeadshots
    localValue3 = true
    localValue2(localValue3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventHandlerRegistration(text7, text8)
eventHandlerRegistration = RMenu
eventHandlerRegistration = eventHandlerRegistration.Add
text7 = "vigilante"
text8 = "selectnearby"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
dataCollection4 = ""
dataCollection5 = "Vigilante Select Nearby"
cmgOperation9 = CMG
cmgOperation9 = cmgOperation9.getRageUIMenuWidth
cmgOperation9 = cmgOperation9()
workingValue5 = CMG
workingValue5 = workingValue5.getRageUIMenuHeight
workingValue5, workingValue6, workingValue7, stateFlag2, text9, text10, number10, stateFlag3, workingValue8, number11, number12, number13, number14, number15, number16, number17, number18, workingValue9, workingValue10, dataCollection6 = workingValue5()
rageUiOperation, dataCollection4, dataCollection5, cmgOperation9, workingValue5, workingValue6, workingValue7, stateFlag2, text9, text10, number10, stateFlag3, workingValue8, number11, number12, number13, number14, number15, number16, number17, number18, workingValue9, workingValue10, dataCollection6 = rageUiOperation(dataCollection4, dataCollection5, cmgOperation9, workingValue5, workingValue6, workingValue7, stateFlag2, text9, text10, number10, stateFlag3, workingValue8, number11, number12, number13, number14, number15, number16, number17, number18, workingValue9, workingValue10, dataCollection6)
eventHandlerRegistration(text7, text8, rageUiOperation, dataCollection4, dataCollection5, cmgOperation9, workingValue5, workingValue6, workingValue7, stateFlag2, text9, text10, number10, stateFlag3, workingValue8, number11, number12, number13, number14, number15, number16, number17, number18, workingValue9, workingValue10, dataCollection6)
eventHandlerRegistration = RageUI
eventHandlerRegistration = eventHandlerRegistration.CreateWhile
text7 = 1.0
text8 = RMenu
rageUiOperation = text8
text8 = text8.Get
dataCollection4 = "vigilante"
dataCollection5 = "selectnearby"
-- Beginner: result below is menu.
text8 = text8(rageUiOperation, dataCollection4, dataCollection5)
rageUiOperation = nil

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: none) ===
function dataCollection4()
  local localValue1, localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "vigilante"
  waitCall = "selectnearby"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, waitCall)
  localValue3 = true
  localValue4 = true
  waitCall = true

  -- === HELPER FUNCTION (decompiler name: number19; parameters: none) ===
  function number19()
    local localValue12, localValue22, localValue32, stringHelper, dataCollection8, workingValue12, workingValue13, playerIndex, rageUiOperation2, stringHelper2, text, cmgOperation2, dataCollection3, workingValue3
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Select players to share bounty with."
    localValue12(localValue22)
    localValue12 = 0
    localValue22 = pairs
    localValue32 = dataCollection12
    localValue22, localValue32, stringHelper, dataCollection8 = localValue22(localValue32)
    for workingValue12, workingValue13 in localValue22, localValue32, stringHelper, dataCollection8 do
      playerIndex = GetPlayerFromServerId
      rageUiOperation2 = tonumber
      stringHelper2 = workingValue12
      rageUiOperation2 = rageUiOperation2(stringHelper2)
      if not rageUiOperation2 then
        rageUiOperation2 = 0
      end
      -- Beginner: result below is playerIndex.
      playerIndex = playerIndex(rageUiOperation2)
      if playerIndex >= 0 then
        rageUiOperation2 = RageUI
        rageUiOperation2 = rageUiOperation2.Checkbox
        stringHelper2 = string
        stringHelper2 = stringHelper2.format
        text = "%s [%s]"
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.getPlayerName
        dataCollection3 = playerIndex
        cmgOperation2 = cmgOperation2(dataCollection3)
        dataCollection3 = workingValue12
        stringHelper2 = stringHelper2(text, cmgOperation2, dataCollection3)
        text = ""
        cmgOperation2 = workingValue13
        dataCollection3 = {}

        -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue33, localValue42) ===
        function workingValue3(localValue13, localValue23, localValue33, localValue42)
          local workingValue11, cmgOperation11
          workingValue11 = workingValue13
          if localValue42 ~= workingValue11 then
            workingValue11 = workingValue12
            cmgOperation11 = CMG
            cmgOperation11 = cmgOperation11.getLocalPlayerSrc
            cmgOperation11 = cmgOperation11()
            if workingValue11 ~= cmgOperation11 then
              cmgOperation11 = workingValue12
              workingValue11 = dataCollection12
              workingValue11[cmgOperation11] = localValue42
            end
          end
        end
        -- Beginner: Draw a RageUI checkbox.
        rageUiOperation2(stringHelper2, text, cmgOperation2, dataCollection3, workingValue3)
        if workingValue13 then
          localValue12 = localValue12 + 1
        end
      end
    end
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue32 = "~g~Proceed With Jailing"
    stringHelper = string
    stringHelper = stringHelper.format
    dataCollection8 = "You may share your bounty with up to %s additional vigilantes."
    workingValue12 = cmgOperation.maxNumOtherPlayersToShareWith
    stringHelper = stringHelper(dataCollection8, workingValue12)
    dataCollection8 = {}
    dataCollection8.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue12 = cmgOperation.maxNumOtherPlayersToShareWith
    workingValue12 = workingValue12 + 1
    workingValue12 = localValue12 <= workingValue12

    -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue13, localValue23, localValue33) ===
    function workingValue13(localValue13, localValue23, localValue33)
      local localValue42
      if localValue33 then
        localValue42 = true
        workingValue = localValue42
        localValue42 = RageUI
        localValue42 = localValue42.CloseAll
        localValue42()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue32, stringHelper, dataCollection8, workingValue12, workingValue13)
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation12; parameters: none) ===
  function cmgOperation12()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12)
end
eventHandlerRegistration(text7, text8, rageUiOperation, dataCollection4)
eventHandlerRegistration = RegisterNetEvent
text7 = "c3caa6977b"
-- Beginner: this function handles network event "c3caa6977b".

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1) ===
function text8(localValue1)
  local localValue2, localValue3, localValue4, waitCall, number19
  localValue2 = CMG
  localValue2 = localValue2.startCircularProgressBar
  localValue3 = ""
  localValue4 = localValue1 or localValue4
  if not localValue1 then
    localValue4 = cmgOperation.jailCountdownMsec
  end
  waitCall = nil
  -- Beginner: this function handles network event "c3caa6977b".

  -- === HELPER FUNCTION (decompiler name: number19; parameters: none) ===
  function number19()
    local localValue12, localValue22
  end
  localValue2(localValue3, localValue4, waitCall, number19)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c3caa6977b".
eventHandlerRegistration(text7, text8)
eventHandlerRegistration = RegisterNetEvent
text7 = "b30fc1bd9d"
-- Beginner: this function handles network event "b30fc1bd9d".

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1, localValue2) ===
function text8(localValue1, localValue2)
  local localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue
  localValue3 = pairs
  localValue4 = localValue2
  localValue3, localValue4, waitCall, number19 = localValue3(localValue4)
  for cmgOperation12 in localValue3, localValue4, waitCall, number19 do
    localValue2[cmgOperation12] = false
  end
  localValue3 = CMG
  localValue3 = localValue3.getLocalPlayerSrc
  localValue3 = localValue3()
  localValue4 = localValue2[localValue3]
  if nil ~= localValue4 then
    localValue2[localValue3] = true
  end
  localValue4 = tostring
  waitCall = localValue3
  localValue4 = localValue4(waitCall)
  waitCall = localValue2[localValue4]
  if nil ~= waitCall then
    localValue2[localValue4] = true
  end
  dataCollection12 = localValue2
  waitCall = false
  workingValue = waitCall
  waitCall = RageUI
  waitCall = waitCall.Visible
  number19 = RMenu
  cmgOperation12 = number19
  number19 = number19.Get
  workingValue14 = "vigilante"
  nameValue = "selectnearby"
  -- Beginner: result below is menu.
  number19 = number19(cmgOperation12, workingValue14, nameValue)
  cmgOperation12 = true
  waitCall(number19, cmgOperation12)
  while true do
    waitCall = workingValue
    if nil == waitCall then
      return
    end
    waitCall = workingValue
    if waitCall then
      break
    end
    waitCall = Wait
    number19 = 0
    waitCall(number19)
  end
  waitCall = TriggerServerEvent
  number19 = "63e5e5694b"
  cmgOperation12 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "63e5e5694b".
  waitCall(number19, cmgOperation12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b30fc1bd9d".
eventHandlerRegistration(text7, text8)
eventHandlerRegistration = RegisterNetEvent
text7 = "59804b2139"
-- Beginner: this function handles network event "59804b2139".

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1, localValue2) ===
function text8(localValue1, localValue2)
  local localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = CMG
  localValue4 = localValue4.isUsingDelGun
  localValue4 = localValue4()
  if not localValue4 then
    localValue4 = GetSelectedPedWeapon
    waitCall = localValue3
    -- Beginner: result below is weaponHash.
    localValue4 = localValue4(waitCall)
    if -1569615261 ~= localValue4 then
      localValue4 = CMG
      localValue4 = localValue4.setWeapon
      waitCall = localValue3
      number19 = -1569615261
      cmgOperation12 = true
      localValue4(waitCall, number19, cmgOperation12)
      localValue4 = Wait
      waitCall = 2000
      localValue4(waitCall)
    end
  end
  localValue4 = TaskStartScenarioInPlace
  waitCall = localValue3
  number19 = "WORLD_HUMAN_CLIPBOARD"
  cmgOperation12 = 0
  workingValue14 = true
  localValue4(waitCall, number19, cmgOperation12, workingValue14)
  localValue4 = type
  waitCall = localValue2
  localValue4 = localValue4(waitCall)
  localValue4 = localValue2 or localValue4
  if not ("number" == localValue4 and localValue2 > 0) or not localValue2 then
    localValue4 = cmgOperation.jailCountdownMsec
  end
  waitCall = true
  stateFlag4 = waitCall
  waitCall = Citizen
  waitCall = waitCall.CreateThread

  -- === HELPER FUNCTION (decompiler name: number19; parameters: none) ===
  function number19()
    local localValue12, localValue22, localValue32, stringHelper, dataCollection8
    localValue12 = CMG
    localValue12 = localValue12.startCircularProgressBar
    localValue22 = ""
    localValue32 = localValue4
    stringHelper = nil

    -- === HELPER FUNCTION (decompiler name: dataCollection8; parameters: none) ===
    function dataCollection8()
      local localValue13, localValue23
    end
    localValue12(localValue22, localValue32, stringHelper, dataCollection8)
    localValue12 = stateFlag4
    if localValue12 then
      localValue12 = localValue1
      if localValue12 then
        localValue12 = TriggerServerEvent
        localValue22 = "917a7ba88e"
        localValue32 = localValue1
        stringHelper = dataCollection12
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "917a7ba88e".
        localValue12(localValue22, localValue32, stringHelper)
      end
    end
    localValue12 = RageUI
    localValue12 = localValue12.CloseAll
    localValue12()
    localValue12 = false
    stateFlag4 = localValue12
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  waitCall(number19)
  if not localValue1 then
    return
  end
  waitCall = GetPlayerFromServerId
  number19 = tonumber
  cmgOperation12 = localValue1
  number19 = number19(cmgOperation12)
  if not number19 then
    number19 = 0
  end
  -- Beginner: result below is playerIndex.
  waitCall = waitCall(number19)
  if waitCall < 0 then
    return
  end
  number19 = GetPlayerPed
  cmgOperation12 = waitCall
  -- Beginner: result below is playerPed.
  number19 = number19(cmgOperation12)
  if 0 == number19 or number19 == localValue3 then
    return
  end
  cmgOperation12 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  cmgOperation12 = cmgOperation12()
  while true do
    workingValue14 = stateFlag4
    if not workingValue14 then
      break
    end
    workingValue14 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workingValue14 = workingValue14()
    nameValue = IsPedUsingScenario
    workingValue15 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workingValue15 = workingValue15()
    number = "WORLD_HUMAN_CLIPBOARD"
    nameValue = nameValue(workingValue15, number)
    if nameValue then
      cmgOperation12 = workingValue14
    end
    nameValue = workingValue14 - cmgOperation12
    workingValue15 = 1000
    nameValue = nameValue > workingValue15
    workingValue15 = CMG
    workingValue15 = workingValue15.getPlayerCoords
    -- Beginner: result below is playerCoords.
    workingValue15 = workingValue15()
    number = GetEntityCoords
    number2 = number19
    text2 = true
    -- Beginner: result below is entityCoords.
    number = number(number2, text2)
    workingValue15 = workingValue15 - number
    workingValue15 = #workingValue15
    if not (workingValue15 > 10.0) then
      number = IsEntityDead
      number2 = localValue3
      number = number(number2)
      if not number then
        number = IsEntityDead
        number2 = number19
        number = number(number2)
        if not number then
          number = IsPedRagdoll
          number2 = localValue3
          number = number(number2)
          if not number then
            number = IsPedRagdoll
            number2 = number19
            number = number(number2)
            if not (number or nameValue) then
              goto continueAtStep127
            end
          end
        end
      end
    end
    number = TriggerServerEvent
    number2 = "8fc9bde106"
    text2 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8fc9bde106".
    number(number2, text2)
    do break end
    ::continueAtStep127::
    number = Wait
    number2 = 0
    number(number2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "59804b2139".
eventHandlerRegistration(text7, text8)
eventHandlerRegistration = RegisterNetEvent
text7 = "8fc9bde106"
-- Beginner: this function handles network event "8fc9bde106".

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2
  localValue1 = ClearPedTasks
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.stopCircularProgressBar
  localValue1()
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
  localValue1 = false
  stateFlag4 = localValue1
  localValue1 = notify
  localValue2 = "~r~You or the target are no longer in a suitable situation to jail."
  -- Beginner: Show a notification to the player.
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8fc9bde106".
eventHandlerRegistration(text7, text8)
eventHandlerRegistration = RegisterNetEvent
text7 = "003eadf2da"
-- Beginner: this function handles network event "003eadf2da".

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1) ===
function text8(localValue1)
  local localValue2, localValue3
  if "vigilantelicense" == localValue1 then
    localValue2 = TriggerServerEvent
    localValue3 = "e7a86c3e34"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7a86c3e34".
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "003eadf2da".
eventHandlerRegistration(text7, text8)
eventHandlerRegistration = RegisterNetEvent
text7 = "f1dae6cf3d"
-- Beginner: this function handles network event "f1dae6cf3d".

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1) ===
function text8(localValue1)
  local localValue2, localValue3
  if "vigilantelicense" == localValue1 then
    localValue2 = TriggerServerEvent
    localValue3 = "e7a86c3e34"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7a86c3e34".
    localValue2(localValue3)
  end
  if "Vigilante" == localValue1 then
    localValue2 = TriggerEvent
    localValue3 = "e713d91b70"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f1dae6cf3d".
eventHandlerRegistration(text7, text8)

-- === HELPER FUNCTION: eventHandlerRegistration(localValue1) ===
function eventHandlerRegistration(localValue1)
  local localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2, cmgOperation3
  localValue2 = TriggerServerEvent
  localValue3 = "792bb741c8"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "792bb741c8".
  localValue2(localValue3)
  localValue2 = TriggerServerEvent
  localValue3 = "67e7dfc964"
  localValue2(localValue3)
  localValue2 = {}
  localValue3 = pairs
  localValue4 = dataCollection7
  localValue3, localValue4, waitCall, number19 = localValue3(localValue4)
  for cmgOperation12, workingValue14 in localValue3, localValue4, waitCall, number19 do
    nameValue = true
    workingValue15 = workingValue14.isVisible
    if nil ~= workingValue15 then
      nameValue = workingValue14.isVisible
    end
    workingValue15 = 0
    number = -1
    number2 = workingValue14.lastPing
    if number2 then
      number2 = workingValue14.lastPing
      if number2 > 0 then
        number2 = math
        number2 = number2.floor
        text2 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        text2 = text2()
        workingValue2 = workingValue14.lastPing
        text2 = text2 - workingValue2
        text2 = text2 / 1000.0
        number2 = number2(text2)
        workingValue15 = number2
        number2 = workingValue14.lastLocation
        if number2 then
          number2 = math
          number2 = number2.floor
          text2 = workingValue14.lastLocation
          workingValue2 = CMG
          workingValue2 = workingValue2.getPlayerCoords
          -- Beginner: result below is playerCoords.
          workingValue2 = workingValue2()
          text2 = text2 - workingValue2
          text2 = #text2
          number2 = number2(text2)
          number = number2
        end
      end
    end
    number2 = table
    number2 = number2.insert
    text2 = localValue2
    workingValue2 = {}
    cmgOperation3 = workingValue14.name
    workingValue2.name = cmgOperation3
    cmgOperation3 = workingValue14.offenses
    workingValue2.offenses = cmgOperation3
    cmgOperation3 = workingValue14.totalOutstanding
    workingValue2.totalOutstanding = cmgOperation3
    workingValue2.lastPing = workingValue15
    workingValue2.distance = number
    workingValue2.visible = nameValue
    workingValue2.userId = cmgOperation12
    number2(text2, workingValue2)
  end
  localValue3 = table
  localValue3 = localValue3.sort
  localValue4 = localValue2

  -- === HELPER FUNCTION: waitCall(localValue12, localValue22) ===
  function waitCall(localValue12, localValue22)
    local localValue32, stringHelper
    localValue32 = localValue12.name
    stringHelper = localValue22.name
    localValue32 = localValue32 < stringHelper
    return localValue32
  end
  localValue3(localValue4, waitCall)
  localValue3 = TriggerEvent
  localValue4 = "CMG:updateVigilanteTargets"
  waitCall = localValue2
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMG:updateVigilanteTargets".
  localValue3(localValue4, waitCall)
  localValue3 = TriggerEvent
  localValue4 = "CMG:setVigilanteAppConfig"
  waitCall = cmgOperation.levels
  localValue3(localValue4, waitCall)
  if localValue1 then
    localValue3 = TriggerServerEvent
    localValue4 = "4499b42011"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4499b42011".
    localValue3(localValue4)
  end
end
text7 = AddEventHandler
text8 = "CMG:fetchVigilanteAppData"
rageUiOperation = eventHandlerRegistration
-- Beginner: Register a client-side event handler. Event/command: "CMG:fetchVigilanteAppData".
text7(text8, rageUiOperation)
text7 = AddEventHandler
text8 = "CMG:toggleVigilanteTargetVisibility"
-- Beginner: this function runs when client event "CMG:toggleVigilanteTargetVisibility" fires.

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1, localValue2) ===
function rageUiOperation(localValue1, localValue2)
  local localValue3, localValue4, waitCall
  localValue3 = dataCollection7
  localValue3 = localValue3[localValue1]
  if localValue3 then
    localValue3.isVisible = localValue2
    localValue4 = eventHandlerRegistration
    waitCall = true
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
    localValue4(waitCall)
    localValue4 = text3
    waitCall = localValue3
    localValue4(waitCall)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:toggleVigilanteTargetVisibility".
text7(text8, rageUiOperation)
text7 = RegisterNetEvent
text8 = "517cbfa8cc"
-- Beginner: this function handles network event "517cbfa8cc".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12
  localValue2 = CMG
  localValue2 = localValue2.announceMpBigMsg
  localValue3 = "LEVEL UP"
  localValue4 = "You have levelled up to level "
  waitCall = tostring
  number19 = localValue1
  waitCall = waitCall(number19)
  number19 = "!"
  localValue4 = localValue4 .. waitCall .. number19
  waitCall = 10000
  number19 = nil
  cmgOperation12 = nil
  localValue2(localValue3, localValue4, waitCall, number19, cmgOperation12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "517cbfa8cc".
text7(text8, rageUiOperation)
text7 = 0
text8 = 0
rageUiOperation = {}
dataCollection4 = {}
dataCollection5 = {}
cmgOperation9 = 1

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local localValue3, localValue4, waitCall
  localValue3 = IsNamedRendertargetRegistered
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = RegisterNamedRendertarget
    localValue4 = localValue1
    waitCall = false
    localValue3(localValue4, waitCall)
  end
  localValue3 = IsNamedRendertargetLinked
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = LinkNamedRendertarget
    localValue4 = localValue2
    localValue3(localValue4)
  end
  localValue3 = IsNamedRendertargetLinked
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = GetNamedRendertargetRenderId
    localValue4 = localValue1
    return localValue3(localValue4)
  else
    localValue3 = 0
    return localValue3
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = cmgOperation.statsBoardModel
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue2(localValue3)
  localValue2 = CreateObject
  localValue3 = cmgOperation.statsBoardModel
  localValue4 = localValue1.position
  localValue4 = localValue4.x
  waitCall = localValue1.position
  waitCall = waitCall.y
  number19 = localValue1.position
  number19 = number19.z
  cmgOperation12 = false
  workingValue14 = false
  nameValue = false
  -- Beginner: result below is objectEntity.
  localValue2 = localValue2(localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue)
  text7 = localValue2
  localValue2 = SetModelAsNoLongerNeeded
  localValue3 = cmgOperation.statsBoardModel
  localValue2(localValue3)
  localValue2 = SetEntityHeading
  localValue3 = text7
  localValue4 = localValue1.position
  localValue4 = localValue4.w
  -- Beginner: Change the direction an entity is facing.
  localValue2(localValue3, localValue4)
  localValue2 = SetEntityLodDist
  localValue3 = text7
  localValue4 = 75
  localValue2(localValue3, localValue4)
  localValue2 = workingValue5
  localValue3 = "cmgtv9"
  localValue4 = cmgOperation.statsBoardModel
  localValue2 = localValue2(localValue3, localValue4)
  text8 = localValue2
  localValue2 = TriggerServerEvent
  localValue3 = "8573debb45"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8573debb45".
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2
  localValue1 = DeleteEntity
  localValue2 = text7
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = 0
  text7 = localValue1
  localValue1 = ReleaseNamedRendertarget
  localValue2 = "cmgtv9"
  localValue1(localValue2)
  localValue1 = 0
  text8 = localValue1
end
stateFlag2 = {}
text9 = {}
text10 = 255
number10 = 215
stateFlag3 = 0
text9[1] = text10
text9[2] = number10
text9[3] = stateFlag3
text10 = {}
number10 = 192
stateFlag3 = 192
workingValue8 = 192
text10[1] = number10
text10[2] = stateFlag3
text10[3] = workingValue8
number10 = {}
stateFlag3 = 140
workingValue8 = 120
number11 = 83
number10[1] = stateFlag3
number10[2] = workingValue8
number10[3] = number11
stateFlag3 = {}
workingValue8 = 140
number11 = 120
number12 = 83
stateFlag3[1] = workingValue8
stateFlag3[2] = number11
stateFlag3[3] = number12
workingValue8 = {}
number11 = 140
number12 = 120
number13 = 83
workingValue8[1] = number11
workingValue8[2] = number12
workingValue8[3] = number13
number11 = {}
number12 = 140
number13 = 120
number14 = 83
number11[1] = number12
number11[2] = number13
number11[3] = number14
number12 = {}
number13 = 140
number14 = 120
number15 = 83
number12[1] = number13
number12[2] = number14
number12[3] = number15
number13 = {}
number14 = 140
number15 = 120
number16 = 83
number13[1] = number14
number13[2] = number15
number13[3] = number16
number14 = {}
number15 = 140
number16 = 120
number17 = 83
number14[1] = number15
number14[2] = number16
number14[3] = number17
number15 = {}
number16 = 140
number17 = 120
number18 = 83
number15[1] = number16
number15[2] = number17
number15[3] = number18
stateFlag2[1] = text9
stateFlag2[2] = text10
stateFlag2[3] = number10
stateFlag2[4] = stateFlag3
stateFlag2[5] = workingValue8
stateFlag2[6] = number11
stateFlag2[7] = number12
stateFlag2[8] = number13
stateFlag2[9] = number14
stateFlag2[10] = number15

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4, text5, number5, number7, number8, number9
  localValue2 = localValue1.distance
  if localValue2 > 50.0 then
    return
  end
  localValue2 = SetTextRenderId
  localValue3 = text8
  localValue2(localValue3)
  localValue2 = SetScriptGfxDrawOrder
  localValue3 = 4
  localValue2(localValue3)
  localValue2 = SetScriptGfxDrawBehindPausemenu
  localValue3 = true
  localValue2(localValue3)
  localValue2 = "Top Arrests"
  localValue3 = rageUiOperation
  localValue4 = cmgOperation9
  if 2 == localValue4 then
    localValue2 = "Top Earnings"
    localValue3 = dataCollection4
  else
    localValue4 = cmgOperation9
    if 3 == localValue4 then
      localValue2 = "Top Largest Bounties"
      localValue3 = dataCollection5
    end
  end
  localValue4 = DrawAdvancedText
  waitCall = 0.6
  number19 = 0.0
  cmgOperation12 = 0.005
  workingValue14 = 0.0028
  nameValue = 0.7
  workingValue15 = localValue2
  number = 248
  number2 = 246
  text2 = 240
  workingValue2 = 200
  cmgOperation3 = 4
  gameTime = 0
  localValue4(waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2, cmgOperation3, gameTime)
  localValue4 = DrawAdvancedText
  waitCall = 0.15
  number19 = 0.17
  cmgOperation12 = 0.005
  workingValue14 = 0.0028
  nameValue = 0.4
  workingValue15 = "Name"
  number = 248
  number2 = 246
  text2 = 240
  workingValue2 = 255
  cmgOperation3 = 4
  gameTime = 1
  localValue4(waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2, cmgOperation3, gameTime)
  localValue4 = DrawAdvancedText
  waitCall = 0.5
  number19 = 0.17
  cmgOperation12 = 0.005
  workingValue14 = 0.0028
  nameValue = 0.4
  workingValue15 = "Perm ID"
  number = 248
  number2 = 246
  text2 = 240
  workingValue2 = 255
  cmgOperation3 = 4
  gameTime = 1
  localValue4(waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2, cmgOperation3, gameTime)
  localValue4 = DrawAdvancedText
  waitCall = 0.9
  number19 = 0.17
  cmgOperation12 = 0.005
  workingValue14 = 0.0028
  nameValue = 0.4
  workingValue15 = "Amount"
  number = 248
  number2 = 246
  text2 = 240
  workingValue2 = 255
  cmgOperation3 = 4
  gameTime = 1
  localValue4(waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2, cmgOperation3, gameTime)
  localValue4 = DrawRect
  waitCall = 0.5
  number19 = 0.26
  cmgOperation12 = 0.95
  workingValue14 = 0.005
  nameValue = 248
  workingValue15 = 246
  number = 240
  number2 = 255
  localValue4(waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2)
  localValue4 = pairs
  waitCall = localValue3
  localValue4, waitCall, number19, cmgOperation12 = localValue4(waitCall)
  for workingValue14, nameValue in localValue4, waitCall, number19, cmgOperation12 do
    workingValue15 = stateFlag2
    workingValue15 = workingValue15[workingValue14]
    if workingValue15 and nameValue then
      number = DrawAdvancedText
      number2 = 0.15
      text2 = 0.07 * workingValue14
      text2 = 0.205 + text2
      workingValue2 = 0.005
      cmgOperation3 = 0.0028
      gameTime = 0.34
      number4 = nameValue[1]
      cmgOperation6 = workingValue15[1]
      text4 = workingValue15[2]
      text5 = workingValue15[3]
      number5 = 255
      number7 = 4
      number8 = 1
      number(number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4, text5, number5, number7, number8)
      number = DrawAdvancedText
      number2 = 0.5
      text2 = 0.07 * workingValue14
      text2 = 0.205 + text2
      workingValue2 = 0.005
      cmgOperation3 = 0.0028
      gameTime = 0.35
      number4 = nameValue[2]
      cmgOperation6 = workingValue15[1]
      text4 = workingValue15[2]
      text5 = workingValue15[3]
      number5 = 255
      number7 = 4
      number8 = 1
      number(number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4, text5, number5, number7, number8)
      number = cmgOperation9
      if 1 ~= number then
        number = "\194\163"
        number2 = getMoneyStringFormatted
        text2 = nameValue[3]
        number2 = number2(text2)
        number = number .. number2
        if number then
          goto continueAtStep148
        end
      end
      number = nameValue[3]
      ::continueAtStep148::
      number2 = DrawAdvancedText
      text2 = 0.9
      workingValue2 = 0.07 * workingValue14
      workingValue2 = 0.205 + workingValue2
      cmgOperation3 = 0.005
      gameTime = 0.0028
      number4 = 0.35
      cmgOperation6 = number
      text4 = workingValue15[1]
      text5 = workingValue15[2]
      number5 = workingValue15[3]
      number7 = 255
      number8 = 4
      number9 = 1
      number2(text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4, text5, number5, number7, number8, number9)
    end
  end
  localValue4 = SetTextRenderId
  waitCall = GetDefaultScriptRendertargetRenderId
  waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4, text5, number5, number7, number8, number9 = waitCall()
  localValue4(waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4, text5, number5, number7, number8, number9)
  localValue4 = SetScriptGfxDrawBehindPausemenu
  waitCall = false
  localValue4(waitCall)
  localValue4 = localValue1.distance
  waitCall = 2.5
  if localValue4 < waitCall then
    localValue4 = drawNativeNotification
    waitCall = "Press ~INPUT_CONTEXT~ to switch page"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue4(waitCall)
    localValue4 = IsControlJustPressed
    waitCall = 0
    number19 = 51
    localValue4 = localValue4(waitCall, number19)
    if localValue4 then
      localValue4 = TriggerServerEvent
      waitCall = "f6d938d757"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f6d938d757".
      localValue4(waitCall)
    end
  end
end
text10 = pairs
number10 = cmgOperation.statsBoardLocations
text10, number10, stateFlag3, workingValue8 = text10(number10)
for number11, number12 in text10, number10, stateFlag3, workingValue8 do
  number13 = CMG
  number13 = number13.createArea
  number14 = "vigilante_tv_"
  number15 = tostring
  number16 = number11
  number15 = number15(number16)
  number14 = number14 .. number15
  number15 = number12.xyz
  number16 = 100.0
  number17 = 500.0
  number18 = workingValue6
  workingValue9 = workingValue7
  workingValue10 = text9
  dataCollection6 = {}
  dataCollection6.position = number12
  -- Beginner: Create an interaction area around a world position.
  number13(number14, number15, number16, number17, number18, workingValue9, workingValue10, dataCollection6)
end
text10 = AddEventHandler
number10 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: localValue1) ===
function stateFlag3(localValue1)
  local localValue2, localValue3
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = DoesEntityExist
    localValue3 = text7
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = DeleteEntity
      localValue3 = text7
      -- Beginner: Delete a GTA entity.
      localValue2(localValue3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
text10(number10, stateFlag3)
text10 = RegisterNetEvent
number10 = "534ad5c8ab"
-- Beginner: this function handles network event "534ad5c8ab".

-- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: localValue1, localValue2, localValue3, localValue4) ===
function stateFlag3(localValue1, localValue2, localValue3, localValue4)
  rageUiOperation = localValue1
  dataCollection4 = localValue2
  dataCollection5 = localValue3
  cmgOperation9 = localValue4
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "534ad5c8ab".
text10(number10, stateFlag3)
text10 = RegisterNetEvent
number10 = "f6d938d757"
-- Beginner: this function handles network event "f6d938d757".

-- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: localValue1) ===
function stateFlag3(localValue1)
  local localValue2
  cmgOperation9 = localValue1
end
text10(number10, stateFlag3)
text10 = RegisterNetEvent
number10 = "aac7394dd7"
-- Beginner: this function handles network event "aac7394dd7".

-- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: none) ===
function stateFlag3()
  local localValue1, localValue2
  localValue1 = ClearPedTasks
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "aac7394dd7".
text10(number10, stateFlag3)
-- Beginner: this function handles network event "aac7394dd7".

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12
  localValue1 = CMG
  localValue1 = localValue1.hasClientGroup
  localValue2 = "Vigilante"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.shouldSkipSavedPosition
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.isUsingDelGun
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  if 6768186 == localValue2 then
    return
  end
  localValue2 = GetSelectedPedWeapon
  localValue3 = localValue1
  -- Beginner: result below is weaponHash.
  localValue2 = localValue2(localValue3)
  if -1569615261 == localValue2 then
    return
  end
  localValue3 = dataCollection
  localValue3 = localValue3[localValue2]
  if localValue3 then
    localValue4 = CMG
    localValue4 = localValue4.hasClientPermission
    waitCall = localValue3
    localValue4 = localValue4(waitCall)
    if not localValue4 then
      localValue4 = CMG
      localValue4 = localValue4.setWeapon
      waitCall = localValue1
      number19 = -1569615261
      cmgOperation12 = true
      localValue4(waitCall, number19, cmgOperation12)
      localValue4 = notify
      waitCall = "~r~You are not of a high enough level to use this gun."
      -- Beginner: Show a notification to the player.
      localValue4(waitCall)
      return
    end
  end
  localValue4 = dataCollection2
  localValue4 = localValue4[localValue2]
  if not localValue4 then
    localValue4 = CMG
    localValue4 = localValue4.setWeapon
    waitCall = localValue1
    number19 = -1569615261
    cmgOperation12 = true
    localValue4(waitCall, number19, cmgOperation12)
    localValue4 = notify
    waitCall = "~r~You can only use vigilante weapons while clocked on."
    -- Beginner: Show a notification to the player.
    localValue4(waitCall)
  end
end
number10 = CMG
number10 = number10.createThreadOnTick
stateFlag3 = text10
workingValue8 = "Vigilante"
-- Beginner: Run a helper every game frame while this script is active.
number10(stateFlag3, workingValue8)
number10 = RegisterNetEvent
stateFlag3 = "e9d0792f35"
-- Beginner: this function handles network event "e9d0792f35".

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2, localValue3) ===
function workingValue8(localValue1, localValue2, localValue3)
  local localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2
  if localValue3 then
    localValue4 = "~g~The vigilante has provided proof for the legitimacy of your arrest."
    if localValue4 then
      goto continueAtStep7
    end
  end
  localValue4 = "~r~The vigilante has not provided any other information."
  ::continueAtStep7::
  waitCall = CMG
  waitCall = waitCall.notifyPicture
  number19 = "polnotification"
  cmgOperation12 = "vigilante"
  workingValue14 = string
  workingValue14 = workingValue14.format
  nameValue = [[
~y~Name: %s
Temp ID: %s

%s]]
  workingValue15 = localValue2
  number = localValue1
  number2 = localValue4
  workingValue14 = workingValue14(nameValue, workingValue15, number, number2)
  nameValue = "Vigilante Card"
  workingValue15 = "~y~User Information"
  waitCall(number19, cmgOperation12, workingValue14, nameValue, workingValue15)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e9d0792f35".
number10(stateFlag3, workingValue8)
number10 = RegisterNetEvent
stateFlag3 = "f4da8f66cc"
-- Beginner: this function handles network event "f4da8f66cc".

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = 1409747695
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.requestEntitySpawn
  localValue4 = "vigilante_card_object"
  localValue3(localValue4)
  localValue3 = CreateObject
  localValue4 = localValue2
  waitCall = 0
  number19 = 0
  cmgOperation12 = 0
  workingValue14 = true
  nameValue = true
  workingValue15 = true
  -- Beginner: result below is objectEntity.
  localValue3 = localValue3(localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15)
  while true do
    localValue4 = DoesEntityExist
    waitCall = localValue3
    localValue4 = localValue4(waitCall)
    if localValue4 then
      break
    end
    localValue4 = Wait
    waitCall = 0
    localValue4(waitCall)
  end
  localValue4 = SetModelAsNoLongerNeeded
  waitCall = localValue2
  localValue4(waitCall)
  localValue4 = FreezeEntityPosition
  waitCall = localValue3
  number19 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue4(waitCall, number19)
  localValue4 = AttachEntityToEntity
  waitCall = localValue3
  number19 = localValue1
  cmgOperation12 = GetPedBoneIndex
  workingValue14 = localValue1
  nameValue = 58866
  cmgOperation12 = cmgOperation12(workingValue14, nameValue)
  workingValue14 = 0.03
  nameValue = -0.05
  workingValue15 = -0.044
  number = 0.0
  number2 = 90.0
  text2 = 25.0
  workingValue2 = true
  cmgOperation3 = true
  gameTime = false
  number4 = true
  cmgOperation6 = 1
  text4 = true
  -- Beginner: Attach one entity to another entity.
  localValue4(waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number, number2, text2, workingValue2, cmgOperation3, gameTime, number4, cmgOperation6, text4)
  localValue4 = Wait
  waitCall = 3000
  localValue4(waitCall)
  localValue4 = DeleteObject
  waitCall = localValue3
  localValue4(waitCall)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f4da8f66cc".
number10(stateFlag3, workingValue8)
number10 = CMG
number10 = number10.registerDevMenuItems
stateFlag3 = "Vigilante"

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3, localValue4, waitCall
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Set Bounty Amount"
  localValue3 = ""
  localValue4 = true

  -- === HELPER FUNCTION: waitCall(localValue12, localValue22, localValue32) ===
  function waitCall(localValue12, localValue22, localValue32)
    local stringHelper, dataCollection8
    if localValue32 then
      stringHelper = TriggerServerEvent
      dataCollection8 = "969fa69817"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "969fa69817".
      stringHelper(dataCollection8)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, localValue4, waitCall)
end
number10(stateFlag3, workingValue8)
number10 = Citizen
number10 = number10.CreateThread

-- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: none) ===
function stateFlag3()
  local localValue1, localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15
  localValue1 = pairs
  localValue2 = cmgOperation7.weapons
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for waitCall, number19 in localValue1, localValue2, localValue3, localValue4 do
    cmgOperation12 = number19.ammo
    if "plastic" == cmgOperation12 then
      cmgOperation12 = GetHashKey
      workingValue14 = waitCall
      -- Beginner: result below is hash.
      cmgOperation12 = cmgOperation12(workingValue14)
      workingValue14 = number19.class
      if "SMG" == workingValue14 then
        workingValue14 = dataCollection
        workingValue14[cmgOperation12] = "vigilantesting.whitelisted"
      else
        workingValue14 = number19.class
        if "AR" == workingValue14 then
          workingValue14 = dataCollection
          workingValue14[cmgOperation12] = "vigilantespar16.whitelisted"
        else
          workingValue14 = number19.subType
          if "musket" == workingValue14 then
            workingValue14 = dataCollection
            workingValue14[cmgOperation12] = "vigilantemosin.whitelisted"
          end
        end
      end
    end
  end
  localValue1 = cmgOperation10.CMGGunStores
  if localValue1 then
    localValue1 = cmgOperation10.CMGGunStores
    localValue1 = localValue1.Vigilante
  end
  if localValue1 then
    localValue2 = pairs
    localValue3 = localValue1
    localValue2, localValue3, localValue4, waitCall = localValue2(localValue3)
    for number19, cmgOperation12 in localValue2, localValue3, localValue4, waitCall do
      if "_config" ~= number19 then
        workingValue14 = string
        workingValue14 = workingValue14.find
        nameValue = number19
        workingValue15 = "^item|"
        workingValue14 = workingValue14(nameValue, workingValue15)
        if not workingValue14 then
          workingValue14 = GetHashKey
          nameValue = number19
          -- Beginner: result below is hash.
          workingValue14 = workingValue14(nameValue)
          nameValue = dataCollection2
          nameValue[workingValue14] = true
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
number10(stateFlag3)
number10 = false
stateFlag3 = "vigiJammer"
workingValue8 = RegisterNetEvent
number11 = "f69c81fc30"
-- Beginner: this function handles network event "f69c81fc30".

-- === HELPER FUNCTION (decompiler name: number12; parameters: localValue1, localValue2) ===
function number12(localValue1, localValue2)
  local localValue3, localValue4, waitCall, number19, cmgOperation12
  number10 = localValue1
  if localValue1 and localValue2 and localValue2 > 0 then
    localValue3 = CMG
    localValue3 = localValue3.addHudDurationTimer
    localValue4 = stateFlag3
    waitCall = "Vigilante Jammer"
    number19 = localValue2
    cmgOperation12 = nil
    localValue3(localValue4, waitCall, number19, cmgOperation12)
  else
    localValue3 = CMG
    localValue3 = localValue3.removeHudTimer
    localValue4 = stateFlag3
    localValue3(localValue4)
  end
  localValue3 = CMG
  localValue3 = localValue3.refreshMoneyUI
  localValue3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f69c81fc30".
workingValue8(number11, number12)
workingValue8 = CMG

-- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
function number11()
  local localValue1, localValue2
  localValue1 = number10
  return localValue1
end
workingValue8.isBountyJammed = number11
workingValue8 = {}
number11 = DecorRegister
number12 = "f1f74bea1b"
number13 = 3
number11(number12, number13)
number11 = RegisterNetEvent
number12 = "3bf0c6ee80"
-- Beginner: this function handles network event "3bf0c6ee80".

-- === HELPER FUNCTION (decompiler name: number13; parameters: localValue1, localValue2) ===
function number13(localValue1, localValue2)
  local localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number
  localValue3 = CMG
  localValue3 = localValue3.loadModel
  localValue4 = "amkzw_medic_skeleton"
  localValue3 = localValue3(localValue4)
  localValue4 = CreateObject
  waitCall = localValue3
  number19 = localValue2.x
  cmgOperation12 = localValue2.y
  workingValue14 = localValue2.z
  nameValue = false
  workingValue15 = true
  number = true
  -- Beginner: result below is objectEntity.
  localValue4 = localValue4(waitCall, number19, cmgOperation12, workingValue14, nameValue, workingValue15, number)
  waitCall = FreezeEntityPosition
  number19 = localValue4
  cmgOperation12 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  waitCall(number19, cmgOperation12)
  waitCall = PlaceObjectOnGroundProperly
  number19 = localValue4
  waitCall(number19)
  waitCall = SetEntityRotation
  number19 = localValue4
  cmgOperation12 = -90.0
  workingValue14 = 0.0
  nameValue = 0.0
  workingValue15 = 2
  number = true
  waitCall(number19, cmgOperation12, workingValue14, nameValue, workingValue15, number)
  waitCall = DecorSetInt
  number19 = localValue4
  cmgOperation12 = "f1f74bea1b"
  workingValue14 = localValue1
  waitCall(number19, cmgOperation12, workingValue14)
  waitCall = SetModelAsNoLongerNeeded
  number19 = localValue3
  waitCall(number19)
  waitCall = workingValue8
  waitCall[localValue1] = localValue4
  waitCall = SetTimeout
  number19 = 600000

  -- === HELPER FUNCTION (decompiler name: cmgOperation12; parameters: none) ===
  function cmgOperation12()
    local localValue12, localValue22
    localValue22 = localValue1
    localValue12 = workingValue8
    localValue12[localValue22] = nil
    localValue12 = DeleteObject
    localValue22 = localValue4
    localValue12(localValue22)
  end
  waitCall(number19, cmgOperation12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3bf0c6ee80".
number11(number12, number13)
number11 = RegisterNetEvent
number12 = "3b9fdf5c44"
-- Beginner: this function handles network event "3b9fdf5c44".

-- === HELPER FUNCTION (decompiler name: number13; parameters: localValue1) ===
function number13(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue8
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = workingValue8
    localValue3[localValue1] = nil
    localValue3 = DeleteObject
    localValue4 = localValue2
    localValue3(localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3b9fdf5c44".
number11(number12, number13)
number11 = AddEventHandler
number12 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: number13; parameters: localValue1) ===
function number13(localValue1)
  local localValue2, localValue3, localValue4, waitCall, number19, cmgOperation12, workingValue14, nameValue
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = pairs
    localValue3 = workingValue8
    localValue2, localValue3, localValue4, waitCall = localValue2(localValue3)
    for number19, cmgOperation12 in localValue2, localValue3, localValue4, waitCall do
      workingValue14 = DeleteObject
      nameValue = cmgOperation12
      workingValue14(nameValue)
    end
    localValue2 = {}
    workingValue8 = localValue2
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
number11(number12, number13)
