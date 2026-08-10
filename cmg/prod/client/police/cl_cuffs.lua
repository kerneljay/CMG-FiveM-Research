--[[
    Beginner Guide: cl_cuffs.lua
    ============================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Cuffs
    ======================

    File: cmg/prod/client/police/cl_cuffs.lua
    Purpose: This file contains police gameplay.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    Commands/command-like entries found:
      * /cuff
      * /frontcuff

    Network/hash identifiers found: 12
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * chat:addSuggestion

    Example player-facing text in this file:
      * ~r~You have failed to break out in time.
      * Press ~INPUT_VEH_DUCK~ to attempt breaking out of cuffs

]]
local flag, flag10, numberValue10, flag12, numberValue11, flag13, numberValue13, numberValue15, flag16, workValue4, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, cmgCall, textValue, cmgCall2, textValue2, textValue3, numberValue7, numberValue8, eventRegistration, textValue4, cmgCall3, textValue5, cmgCall4, numberValue9, textValue6, workValue, workValue2, workValue3, dataTable2
flag = false
flag10 = false
numberValue10 = 0
flag12 = false
numberValue11 = 0
flag13 = false
numberValue13 = 0
numberValue15 = 0
flag16 = false
workValue4 = DisableControlAction
numberValue = 0
numberValue2 = 0
numberValue3 = 4000
numberValue4 = 2500
numberValue5 = 6000
cmgCall = CMG
function textValue()
  local arg1, arg2
  arg1 = flag
  return arg1
end
cmgCall.isHandcuffed = textValue
cmgCall = exports
textValue = "isHandcuffed"
cmgCall2 = tCMG
cmgCall2 = cmgCall2.isHandcuffed
cmgCall(textValue, cmgCall2)
cmgCall = TriggerEvent
textValue = "chat:addSuggestion"
cmgCall2 = "/cuff"
textValue2 = "Cuff the nearest player"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
cmgCall(textValue, cmgCall2, textValue2)
cmgCall = TriggerEvent
textValue = "chat:addSuggestion"
cmgCall2 = "/frontcuff"
textValue2 = "Frontcuff the nearest player"
cmgCall(textValue, cmgCall2, textValue2)
cmgCall = RegisterKeyMapping
textValue = "cuff"
cmgCall2 = "Handcuff"
textValue2 = "keyboard"
textValue3 = "F11"
-- Beginner: Bind a command to a keyboard/controller key.
cmgCall(textValue, cmgCall2, textValue2, textValue3)
cmgCall = {}
textValue = vector3
cmgCall2 = 460.67126464844
textValue2 = -995.552734375
textValue3 = 24.915018081665
textValue = textValue(cmgCall2, textValue2, textValue3)
cmgCall2 = vector3
textValue2 = 459.45010375977
textValue3 = -1001.6173095703
numberValue7 = 24.914978027344
cmgCall2 = cmgCall2(textValue2, textValue3, numberValue7)
textValue2 = vector3
textValue3 = -1072.6063232422
numberValue7 = -824.88726806641
numberValue8 = 5.479706287384
textValue2, textValue3, numberValue7, numberValue8, eventRegistration, textValue4, cmgCall3, textValue5, cmgCall4, numberValue9, textValue6, workValue, workValue2, workValue3, dataTable2 = textValue2(textValue3, numberValue7, numberValue8)
cmgCall[1] = textValue
cmgCall[2] = cmgCall2
cmgCall[3] = textValue2
cmgCall[4] = textValue3
cmgCall[5] = numberValue7
cmgCall[6] = numberValue8
cmgCall[7] = eventRegistration
cmgCall[8] = textValue4
cmgCall[9] = cmgCall3
cmgCall[10] = textValue5
cmgCall[11] = cmgCall4
cmgCall[12] = numberValue9
cmgCall[13] = textValue6
cmgCall[14] = workValue
cmgCall[15] = workValue2
cmgCall[16] = workValue3
cmgCall[17] = dataTable2
function textValue()
  local arg1, arg2
  arg1 = flag
  if arg1 then
    arg1 = CMG
    arg1 = arg1.setCanOpenPhone
    arg2 = true
    arg1(arg2)
  end
end
function cmgCall2()
  local arg1, arg2
  arg1 = flag
  if arg1 then
    arg1 = CMG
    arg1 = arg1.setCanOpenPhone
    arg2 = false
    arg1(arg2)
  end
end
textValue2 = pairs
textValue3 = cmgCall
textValue2, textValue3, numberValue7, numberValue8 = textValue2(textValue3)
for eventRegistration, textValue4 in textValue2, textValue3, numberValue7, numberValue8 do
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.createArea
  textValue5 = "phone_allowed_"
  cmgCall4 = tostring
  numberValue9 = eventRegistration
  cmgCall4 = cmgCall4(numberValue9)
  textValue5 = textValue5 .. cmgCall4
  cmgCall4 = textValue4
  numberValue9 = 5.0
  textValue6 = 5.0
  workValue = textValue
  workValue2 = cmgCall2
  function workValue3()
    local arg1, arg2
  end
  dataTable2 = {}
  -- Beginner: Create an interaction area around a world position.
  cmgCall3(textValue5, cmgCall4, numberValue9, textValue6, workValue, workValue2, workValue3, dataTable2)
end
textValue2 = false
function textValue3()
  local arg1, arg2, cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15
  arg1 = 7
  arg2 = 38
  cmgCall5 = 1
  for playerIndex = arg1, arg2, cmgCall5 do
    numberValue12 = workValue4
    flag14 = 0
    textValue9 = playerIndex
    flag15 = true
    numberValue12(flag14, textValue9, flag15)
  end
end
function numberValue7()
  local arg1, arg2, cmgCall5
  arg1 = textValue2
  if not arg1 then
    arg1 = tCMG
    arg1 = arg1.setCanAnim
    arg2 = false
    arg1(arg2)
    arg1 = CMG
    arg1 = arg1.createThreadOnTick
    arg2 = textValue3
    cmgCall5 = "Disable Controls Whilst Cuffing"
    -- Beginner: Run a helper every game frame while this script is active.
    arg1(arg2, cmgCall5)
    arg1 = true
    textValue2 = arg1
    arg1 = CMG
    arg1 = arg1.setSwitchGunEnabled
    arg2 = false
    arg1(arg2)
  end
end
function numberValue8()
  local arg1, arg2
  arg1 = textValue2
  if arg1 then
    arg1 = tCMG
    arg1 = arg1.setCanAnim
    arg2 = true
    arg1(arg2)
    arg1 = CMG
    arg1 = arg1.deleteThreadOnTick
    arg2 = textValue3
    arg1(arg2)
    arg1 = false
    textValue2 = arg1
    arg1 = CMG
    arg1 = arg1.setSwitchGunEnabled
    arg2 = true
    arg1(arg2)
  end
end
eventRegistration = RegisterNetEvent
textValue4 = "979a90e0cf"
-- Beginner: this function handles network event "979a90e0cf".
function cmgCall3(arg1)
  local arg2, cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9
  arg2 = TriggerEvent
  cmgCall5 = "259d5b120c"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "259d5b120c".
  arg2(cmgCall5)
  arg2 = numberValue7
  arg2()
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  cmgCall5 = CMG
  cmgCall5 = cmgCall5.setWeapon
  playerIndex = arg2
  numberValue12 = -273849285
  flag14 = true
  cmgCall5(playerIndex, numberValue12, flag14)
  cmgCall5 = GetPlayerPed
  playerIndex = GetPlayerFromServerId
  numberValue12 = arg1
  playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9 = playerIndex(numberValue12)
  -- Beginner: result below is playerPed.
  cmgCall5 = cmgCall5(playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9)
  playerIndex = true
  flag13 = playerIndex
  playerIndex = CMG
  playerIndex = playerIndex.loadAnimDict
  numberValue12 = "mp_arrest_paired"
  -- Beginner: Load a GTA animation dictionary before using it.
  playerIndex(numberValue12)
  playerIndex = AttachEntityToEntity
  numberValue12 = arg2
  flag14 = cmgCall5
  textValue9 = 11816
  flag15 = -0.1
  numberValue16 = 0.45
  numberValue17 = 0.0
  flag2 = 0.0
  flag3 = 0.0
  flag4 = 20.0
  flag5 = false
  flag6 = false
  flag7 = false
  flag8 = false
  numberValue6 = 20
  flag9 = false
  -- Beginner: Attach one entity to another entity.
  playerIndex(numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9)
  playerIndex = TaskPlayAnim
  numberValue12 = arg2
  flag14 = "mp_arrest_paired"
  textValue9 = "crook_p2_back_left"
  flag15 = 8.0
  numberValue16 = -8.0
  numberValue17 = 5500
  flag2 = 33
  flag3 = 0
  flag4 = false
  flag5 = false
  flag6 = false
  -- Beginner: Play an animation on a ped.
  playerIndex(numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6)
  playerIndex = RemoveAnimDict
  numberValue12 = "mp_arrest_paired"
  playerIndex(numberValue12)
  playerIndex = Citizen
  playerIndex = playerIndex.Wait
  numberValue12 = 4000
  playerIndex(numberValue12)
  playerIndex = DetachEntity
  numberValue12 = arg2
  flag14 = true
  textValue9 = false
  playerIndex(numberValue12, flag14, textValue9)
  playerIndex = false
  flag13 = playerIndex
  playerIndex = numberValue8
  playerIndex()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "979a90e0cf".
eventRegistration(textValue4, cmgCall3)
eventRegistration = RegisterNetEvent
textValue4 = "c22d4065c2"
-- Beginner: this function handles network event "c22d4065c2".
function cmgCall3()
  local arg1, arg2, cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4
  arg1 = numberValue7
  arg1()
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.loadAnimDict
  cmgCall5 = "mp_arrest_paired"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg2(cmgCall5)
  arg2 = TaskPlayAnim
  cmgCall5 = arg1
  playerIndex = "mp_arrest_paired"
  numberValue12 = "cop_p2_back_left"
  flag14 = 8.0
  textValue9 = -8.0
  flag15 = 5500
  numberValue16 = 33
  numberValue17 = 0
  flag2 = false
  flag3 = false
  flag4 = false
  -- Beginner: Play an animation on a ped.
  arg2(cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4)
  arg2 = RemoveAnimDict
  cmgCall5 = "mp_arrest_paired"
  arg2(cmgCall5)
  arg2 = math
  arg2 = arg2.floor
  cmgCall5 = GetAnimDuration
  playerIndex = "mp_arrest_paired"
  numberValue12 = "cop_p2_back_left"
  cmgCall5 = cmgCall5(playerIndex, numberValue12)
  cmgCall5 = cmgCall5 * 1000
  arg2 = arg2(cmgCall5)
  cmgCall5 = Wait
  playerIndex = arg2
  cmgCall5(playerIndex)
  cmgCall5 = numberValue8
  cmgCall5()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c22d4065c2".
eventRegistration(textValue4, cmgCall3)
function eventRegistration(arg1)
  local arg2, cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9
  if arg1 then
    arg2 = numberValue10
    if 0 ~= arg2 then
      arg2 = SetEntityVisible
      cmgCall5 = numberValue10
      playerIndex = false
      numberValue12 = false
      arg2(cmgCall5, playerIndex, numberValue12)
      arg2 = DetachEntity
      cmgCall5 = numberValue10
      playerIndex = true
      numberValue12 = true
      arg2(cmgCall5, playerIndex, numberValue12)
      arg2 = DeleteEntity
      cmgCall5 = numberValue10
      -- Beginner: Delete a GTA entity.
      arg2(cmgCall5)
    end
    arg2 = false
    flag12 = arg2
    arg2 = 0
    numberValue11 = arg2
    arg2 = 0
    numberValue10 = arg2
    return
  end
  arg2 = CMG
  arg2 = arg2.loadModel
  cmgCall5 = -1281059971
  arg2 = arg2(cmgCall5)
  if not arg2 then
    return
  end
  cmgCall5 = GetEntityCoords
  playerIndex = CMG
  playerIndex = playerIndex.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  playerIndex = playerIndex()
  numberValue12 = true
  -- Beginner: result below is entityCoords.
  cmgCall5 = cmgCall5(playerIndex, numberValue12)
  playerIndex = CMG
  playerIndex = playerIndex.requestEntitySpawn
  numberValue12 = "cuff_object"
  playerIndex(numberValue12)
  playerIndex = CreateObject
  numberValue12 = arg2
  flag14 = cmgCall5.x
  textValue9 = cmgCall5.y
  flag15 = cmgCall5.z
  numberValue16 = true
  numberValue17 = true
  flag2 = true
  -- Beginner: result below is objectEntity.
  playerIndex = playerIndex(numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2)
  numberValue11 = playerIndex
  playerIndex = SetModelAsNoLongerNeeded
  numberValue12 = arg2
  playerIndex(numberValue12)
  playerIndex = true
  flag12 = playerIndex
  playerIndex = CMG
  playerIndex = playerIndex.syncNetworkId
  numberValue12 = ObjToNet
  flag14 = numberValue11
  numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9 = numberValue12(flag14)
  playerIndex(numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9)
  playerIndex = flag10
  if playerIndex then
    playerIndex = AttachEntityToEntity
    numberValue12 = numberValue11
    flag14 = CMG
    flag14 = flag14.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    flag14 = flag14()
    textValue9 = GetPedBoneIndex
    flag15 = CMG
    flag15 = flag15.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    flag15 = flag15()
    numberValue16 = 60309
    textValue9 = textValue9(flag15, numberValue16)
    flag15 = -0.058
    numberValue16 = 0.005
    numberValue17 = 0.09
    flag2 = 290.0
    flag3 = 95.0
    flag4 = 120.0
    flag5 = true
    flag6 = false
    flag7 = false
    flag8 = false
    numberValue6 = 0
    flag9 = false
    -- Beginner: Attach one entity to another entity.
    playerIndex(numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9)
  else
    playerIndex = AttachEntityToEntity
    numberValue12 = numberValue11
    flag14 = CMG
    flag14 = flag14.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    flag14 = flag14()
    textValue9 = GetPedBoneIndex
    flag15 = CMG
    flag15 = flag15.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    flag15 = flag15()
    numberValue16 = 60309
    textValue9 = textValue9(flag15, numberValue16)
    flag15 = -0.055
    numberValue16 = 0.06
    numberValue17 = 0.04
    flag2 = 265.0
    flag3 = 155.0
    flag4 = 80.0
    flag5 = true
    flag6 = false
    flag7 = false
    flag8 = false
    numberValue6 = 0
    flag9 = true
    playerIndex(numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9)
  end
  playerIndex = numberValue11
  numberValue10 = playerIndex
end
function textValue4(arg1)
  local arg2, cmgCall5, playerIndex, numberValue12, flag14
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  cmgCall5 = SetEnableHandcuffs
  playerIndex = arg2
  numberValue12 = flag
  cmgCall5(playerIndex, numberValue12)
  cmgCall5 = SetPedCanPlayGestureAnims
  playerIndex = arg2
  numberValue12 = arg1
  cmgCall5(playerIndex, numberValue12)
  cmgCall5 = SetPedPathCanUseLadders
  playerIndex = arg2
  numberValue12 = arg1
  cmgCall5(playerIndex, numberValue12)
  if arg1 then
    cmgCall5 = SetPedStealthMovement
    playerIndex = arg2
    numberValue12 = false
    flag14 = ""
    cmgCall5(playerIndex, numberValue12, flag14)
  end
  cmgCall5 = ClearPedTasks
  playerIndex = arg2
  cmgCall5(playerIndex)
end
cmgCall3 = RegisterNetEvent
textValue5 = "667b6c018e"
-- Beginner: this function handles network event "667b6c018e".
function cmgCall4(arg1, arg2)
  local cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16
  cmgCall5 = TriggerEvent
  playerIndex = "259d5b120c"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "259d5b120c".
  cmgCall5(playerIndex)
  cmgCall5 = true
  flag13 = cmgCall5
  flag = arg2
  cmgCall5 = globalInPrison
  if not cmgCall5 then
    cmgCall5 = CMG
    cmgCall5 = cmgCall5.setCanOpenPhone
    playerIndex = flag
    playerIndex = not playerIndex
    cmgCall5(playerIndex)
  end
  cmgCall5 = flag
  if cmgCall5 then
    cmgCall5 = 0
    numberValue13 = cmgCall5
    cmgCall5 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgCall5 = cmgCall5()
    playerIndex = math
    playerIndex = playerIndex.random
    numberValue12 = 5000
    flag14 = 45000
    playerIndex = playerIndex(numberValue12, flag14)
    cmgCall5 = cmgCall5 + playerIndex
    numberValue15 = cmgCall5
    cmgCall5 = false
    flag16 = cmgCall5
    cmgCall5 = TriggerEvent
    playerIndex = "56e6172373"
    numberValue12 = false
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "56e6172373".
    cmgCall5(playerIndex, numberValue12)
    cmgCall5 = TriggerEvent
    playerIndex = "2a70dddd80"
    cmgCall5(playerIndex)
  end
  flag10 = arg1
  cmgCall5 = eventRegistration
  playerIndex = flag
  playerIndex = not playerIndex
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  cmgCall5(playerIndex)
  if arg1 then
    cmgCall5 = flag
    if cmgCall5 then
      cmgCall5 = tCMG
      cmgCall5 = cmgCall5.playAnim
      playerIndex = true
      numberValue12 = {}
      flag14 = {}
      textValue9 = "anim@move_m@prisoner_cuffed"
      flag15 = "idle"
      numberValue16 = 1
      flag14[1] = textValue9
      flag14[2] = flag15
      flag14[3] = numberValue16
      numberValue12[1] = flag14
      flag14 = true
      cmgCall5(playerIndex, numberValue12, flag14)
    end
  end
  cmgCall5 = flag
  if cmgCall5 and not arg1 then
    cmgCall5 = Wait
    playerIndex = 3000
    cmgCall5(playerIndex)
    cmgCall5 = textValue4
    playerIndex = false
    cmgCall5(playerIndex)
    cmgCall5 = Citizen
    cmgCall5 = cmgCall5.CreateThread
    function playerIndex()
      local arg12, flag11, dataTable, dataTable3, textValue7, textValue8, numberValue14
      arg12 = Wait
      flag11 = 1000
      arg12(flag11)
      arg12 = arg1
      if arg12 then
        arg12 = tCMG
        arg12 = arg12.playAnim
        flag11 = true
        dataTable = {}
        dataTable3 = {}
        textValue7 = "anim@move_m@prisoner_cuffed"
        textValue8 = "idle"
        numberValue14 = 1
        dataTable3[1] = textValue7
        dataTable3[2] = textValue8
        dataTable3[3] = numberValue14
        dataTable[1] = dataTable3
        dataTable3 = true
        arg12(flag11, dataTable, dataTable3)
      else
        arg12 = tCMG
        arg12 = arg12.playAnim
        flag11 = true
        dataTable = {}
        dataTable3 = {}
        textValue7 = "mp_arresting"
        textValue8 = "idle"
        numberValue14 = 1
        dataTable3[1] = textValue7
        dataTable3[2] = textValue8
        dataTable3[3] = numberValue14
        dataTable[1] = dataTable3
        dataTable3 = true
        arg12(flag11, dataTable, dataTable3)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    cmgCall5(playerIndex)
  else
    cmgCall5 = tCMG
    cmgCall5 = cmgCall5.stopAnim
    playerIndex = true
    cmgCall5(playerIndex)
    cmgCall5 = textValue4
    playerIndex = true
    cmgCall5(playerIndex)
    cmgCall5 = ClearPedTasks
    playerIndex = CMG
    playerIndex = playerIndex.getPlayerPed
    playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16 = playerIndex()
    cmgCall5(playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16)
    cmgCall5 = UncuffPed
    playerIndex = CMG
    playerIndex = playerIndex.getPlayerPed
    playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16 = playerIndex()
    cmgCall5(playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16)
    cmgCall5 = SetPedUsingActionMode
    playerIndex = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerIndex = playerIndex()
    numberValue12 = false
    flag14 = -1
    textValue9 = "DEFAULT_ACTION"
    cmgCall5(playerIndex, numberValue12, flag14, textValue9)
  end
  cmgCall5 = false
  flag13 = cmgCall5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "667b6c018e".
cmgCall3(textValue5, cmgCall4)
cmgCall3 = RegisterNetEvent
textValue5 = "edd7dc445b"
-- Beginner: this function handles network event "edd7dc445b".
function cmgCall4(arg1)
  local arg2, cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15
  arg2 = true
  flag13 = arg2
  arg2 = flag
  if arg2 then
    arg2 = CMG
    arg2 = arg2.setCanOpenPhone
    cmgCall5 = true
    arg2(cmgCall5)
  end
  arg2 = false
  flag = arg2
  flag10 = arg1
  arg2 = eventRegistration
  cmgCall5 = flag
  cmgCall5 = not cmgCall5
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg2(cmgCall5)
  if arg1 then
    arg2 = flag
    if arg2 then
      arg2 = tCMG
      arg2 = arg2.playAnim
      cmgCall5 = true
      playerIndex = {}
      numberValue12 = {}
      flag14 = "anim@move_m@prisoner_cuffed"
      textValue9 = "idle"
      flag15 = 1
      numberValue12[1] = flag14
      numberValue12[2] = textValue9
      numberValue12[3] = flag15
      playerIndex[1] = numberValue12
      numberValue12 = true
      arg2(cmgCall5, playerIndex, numberValue12)
    end
  end
  arg2 = GetEntityAttachedTo
  cmgCall5 = PlayerPedId
  cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15 = cmgCall5()
  arg2 = arg2(cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15)
  if 0 ~= arg2 then
    cmgCall5 = IsPedAPlayer
    playerIndex = arg2
    cmgCall5 = cmgCall5(playerIndex)
    if cmgCall5 then
      cmgCall5 = TriggerEvent
      playerIndex = "2ce9e6535d"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "2ce9e6535d".
      cmgCall5(playerIndex)
    end
  end
  cmgCall5 = tCMG
  cmgCall5 = cmgCall5.stopAnim
  playerIndex = true
  cmgCall5(playerIndex)
  cmgCall5 = textValue4
  playerIndex = true
  cmgCall5(playerIndex)
  cmgCall5 = ClearPedTasks
  playerIndex = CMG
  playerIndex = playerIndex.getPlayerPed
  playerIndex, numberValue12, flag14, textValue9, flag15 = playerIndex()
  cmgCall5(playerIndex, numberValue12, flag14, textValue9, flag15)
  cmgCall5 = UncuffPed
  playerIndex = CMG
  playerIndex = playerIndex.getPlayerPed
  playerIndex, numberValue12, flag14, textValue9, flag15 = playerIndex()
  cmgCall5(playerIndex, numberValue12, flag14, textValue9, flag15)
  cmgCall5 = false
  flag13 = cmgCall5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "edd7dc445b".
cmgCall3(textValue5, cmgCall4)
function cmgCall3()
  local arg1, arg2, cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5
  arg1 = false
  arg2 = true
  cmgCall5 = CMG
  cmgCall5 = cmgCall5.minigameCircularProgressBar
  playerIndex = {}
  playerIndex.Difficulty = "VeryHard"
  playerIndex.Timeout = 10000
  function numberValue12(arg12)
    local flag11
    arg1 = arg12
    flag11 = false
    arg2 = flag11
  end
  playerIndex.onComplete = numberValue12
  function numberValue12()
    local arg12, flag11
    arg12 = false
    arg1 = arg12
    arg12 = false
    arg2 = arg12
    arg12 = notify
    flag11 = "~r~You have failed to break out in time."
    -- Beginner: Show a notification to the player.
    arg12(flag11)
  end
  playerIndex.onTimeout = numberValue12
  cmgCall5(playerIndex)
  cmgCall5 = CMG
  cmgCall5 = cmgCall5.loadAnimDict
  playerIndex = "misschinese2_crystalmazemcs1_cs"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall5(playerIndex)
  while arg2 do
    cmgCall5 = CMG
    cmgCall5 = cmgCall5.isHandcuffed
    cmgCall5 = cmgCall5()
    if not cmgCall5 then
      arg1 = false
      break
    end
    cmgCall5 = IsEntityPlayingAnim
    playerIndex = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerIndex = playerIndex()
    numberValue12 = "misschinese2_crystalmazemcs1_cs"
    flag14 = "dance_loop_tao"
    textValue9 = 3
    cmgCall5 = cmgCall5(playerIndex, numberValue12, flag14, textValue9)
    if not cmgCall5 then
      cmgCall5 = TaskPlayAnim
      playerIndex = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerIndex = playerIndex()
      numberValue12 = "misschinese2_crystalmazemcs1_cs"
      flag14 = "dance_loop_tao"
      textValue9 = 8.0
      flag15 = -8.0
      numberValue16 = -1
      numberValue17 = 1
      flag2 = 1.0
      flag3 = false
      flag4 = false
      flag5 = false
      -- Beginner: Play an animation on a ped.
      cmgCall5(playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5)
    end
    cmgCall5 = Citizen
    cmgCall5 = cmgCall5.Wait
    playerIndex = 0
    cmgCall5(playerIndex)
  end
  cmgCall5 = RemoveAnimDict
  playerIndex = "misschinese2_crystalmazemcs1_cs"
  cmgCall5(playerIndex)
  cmgCall5 = ClearPedTasks
  playerIndex = PlayerPedId
  playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5 = playerIndex()
  cmgCall5(playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5)
  if arg1 then
    cmgCall5 = TriggerServerEvent
    playerIndex = "79e57a55d8"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "79e57a55d8".
    cmgCall5(playerIndex)
  end
  cmgCall5 = numberValue13
  cmgCall5 = cmgCall5 + 1
  numberValue13 = cmgCall5
  cmgCall5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  cmgCall5 = cmgCall5()
  playerIndex = math
  playerIndex = playerIndex.random
  numberValue12 = 30000
  flag14 = 90000
  playerIndex = playerIndex(numberValue12, flag14)
  cmgCall5 = cmgCall5 + playerIndex
  numberValue15 = cmgCall5
  cmgCall5 = false
  flag16 = cmgCall5
end
function textValue5()
  local arg1, arg2, cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17
  arg1 = flag
  if arg1 then
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 24
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 25
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 47
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 58
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 23
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 263
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 264
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 257
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 140
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 141
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 142
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 143
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 75
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 27
    cmgCall5 = 75
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 22
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = workValue4
    arg2 = 0
    cmgCall5 = 170
    playerIndex = true
    arg1(arg2, cmgCall5, playerIndex)
    arg1 = 12
    arg2 = 17
    cmgCall5 = 1
    for playerIndex = arg1, arg2, cmgCall5 do
      numberValue12 = workValue4
      flag14 = 0
      textValue9 = playerIndex
      flag15 = true
      numberValue12(flag14, textValue9, flag15)
    end
    arg1 = flag13
    if not arg1 then
      arg1 = SetPedStealthMovement
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      cmgCall5 = false
      playerIndex = ""
      arg1(arg2, cmgCall5, playerIndex)
      arg1 = CMG
      arg1 = arg1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      arg2 = IsPedStill
      cmgCall5 = arg1
      arg2 = arg2(cmgCall5)
      if arg2 then
        arg2 = flag10
        if arg2 then
          arg2 = IsEntityPlayingAnim
          cmgCall5 = arg1
          playerIndex = "anim@move_m@prisoner_cuffed"
          numberValue12 = "idle"
          flag14 = 3
          arg2 = arg2(cmgCall5, playerIndex, numberValue12, flag14)
          if not arg2 then
            arg2 = CMG
            arg2 = arg2.loadAnimDict
            cmgCall5 = "anim@move_m@prisoner_cuffed"
            -- Beginner: Load a GTA animation dictionary before using it.
            arg2(cmgCall5)
            arg2 = tCMG
            arg2 = arg2.playAnim
            cmgCall5 = true
            playerIndex = {}
            numberValue12 = {}
            flag14 = "anim@move_m@prisoner_cuffed"
            textValue9 = "idle"
            flag15 = 1
            numberValue12[1] = flag14
            numberValue12[2] = textValue9
            numberValue12[3] = flag15
            playerIndex[1] = numberValue12
            numberValue12 = true
            arg2(cmgCall5, playerIndex, numberValue12)
            arg2 = RemoveAnimDict
            cmgCall5 = "anim@move_m@prisoner_cuffed"
            arg2(cmgCall5)
          end
        else
          arg2 = IsEntityPlayingAnim
          cmgCall5 = arg1
          playerIndex = "mp_arresting"
          numberValue12 = "idle"
          flag14 = 3
          arg2 = arg2(cmgCall5, playerIndex, numberValue12, flag14)
          if not arg2 then
            arg2 = CMG
            arg2 = arg2.loadAnimDict
            cmgCall5 = "mp_arresting"
            -- Beginner: Load a GTA animation dictionary before using it.
            arg2(cmgCall5)
            arg2 = tCMG
            arg2 = arg2.playAnim
            cmgCall5 = true
            playerIndex = {}
            numberValue12 = {}
            flag14 = "mp_arresting"
            textValue9 = "idle"
            flag15 = 1
            numberValue12[1] = flag14
            numberValue12[2] = textValue9
            numberValue12[3] = flag15
            playerIndex[1] = numberValue12
            numberValue12 = true
            arg2(cmgCall5, playerIndex, numberValue12)
            arg2 = RemoveAnimDict
            cmgCall5 = "mp_arresting"
            arg2(cmgCall5)
          end
        end
      end
    end
    arg1 = CMG
    arg1 = arg1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg1 = arg1()
    if 0 ~= arg1 then
      arg1 = flag12
      if arg1 then
        arg1 = numberValue11
        if 0 ~= arg1 then
          arg1 = SetEntityVisible
          arg2 = numberValue11
          cmgCall5 = false
          playerIndex = false
          arg1(arg2, cmgCall5, playerIndex)
          arg1 = false
          flag12 = arg1
        end
      end
    else
      arg1 = flag12
      if not arg1 then
        arg1 = numberValue11
        if 0 ~= arg1 then
          arg1 = SetEntityVisible
          arg2 = numberValue11
          cmgCall5 = true
          playerIndex = false
          arg1(arg2, cmgCall5, playerIndex)
          arg1 = true
          flag12 = arg1
        end
      end
    end
    arg1 = GetSelectedPedWeapon
    arg2 = PlayerPedId
    arg2, cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17 = arg2()
    -- Beginner: result below is weaponHash.
    arg1 = arg1(arg2, cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17)
    if -1569615261 ~= arg1 then
      arg1 = CMG
      arg1 = arg1.setWeapon
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      cmgCall5 = -1569615261
      playerIndex = true
      arg1(arg2, cmgCall5, playerIndex)
    end
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    cmgCall5 = IsPedSprinting
    playerIndex = arg1
    cmgCall5 = cmgCall5(playerIndex)
    if cmgCall5 then
      cmgCall5 = GetEntityAttachedTo
      playerIndex = arg1
      cmgCall5 = cmgCall5(playerIndex)
      if 0 == cmgCall5 then
        cmgCall5 = numberValue2
        if arg2 >= cmgCall5 then
          cmgCall5 = numberValue
          playerIndex = GetFrameTime
          playerIndex = playerIndex()
          playerIndex = playerIndex * 1000.0
          cmgCall5 = cmgCall5 + playerIndex
          numberValue = cmgCall5
          cmgCall5 = numberValue
          playerIndex = numberValue3
          if cmgCall5 >= playerIndex then
            cmgCall5 = ShakeGameplayCam
            playerIndex = "SMALL_EXPLOSION_SHAKE"
            numberValue12 = 0.1
            cmgCall5(playerIndex, numberValue12)
            cmgCall5 = SetPedToRagdoll
            playerIndex = arg1
            numberValue12 = numberValue4
            flag14 = numberValue4
            textValue9 = 0
            flag15 = false
            numberValue16 = false
            numberValue17 = false
            cmgCall5(playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17)
            cmgCall5 = numberValue5
            cmgCall5 = arg2 + cmgCall5
            numberValue2 = cmgCall5
            cmgCall5 = 0
            numberValue = cmgCall5
          end
        end
    end
    else
      cmgCall5 = numberValue
      if cmgCall5 > 0 then
        cmgCall5 = math
        cmgCall5 = cmgCall5.max
        playerIndex = 0
        numberValue12 = numberValue
        flag14 = GetFrameTime
        flag14 = flag14()
        flag14 = flag14 * 1000.0
        flag14 = flag14 * 2.0
        numberValue12 = numberValue12 - flag14
        cmgCall5 = cmgCall5(playerIndex, numberValue12)
        numberValue = cmgCall5
      end
    end
    cmgCall5 = flag16
    if not cmgCall5 then
      cmgCall5 = numberValue13
      if cmgCall5 < 20 then
        cmgCall5 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        cmgCall5 = cmgCall5()
        playerIndex = numberValue15
        if cmgCall5 > playerIndex then
          cmgCall5 = IsPedStill
          playerIndex = arg1
          cmgCall5 = cmgCall5(playerIndex)
          if cmgCall5 then
            cmgCall5 = GetEntityAttachedTo
            playerIndex = arg1
            cmgCall5 = cmgCall5(playerIndex)
            if 0 == cmgCall5 then
              cmgCall5 = drawNativeNotification
              playerIndex = "Press ~INPUT_VEH_DUCK~ to attempt breaking out of cuffs"
              -- Beginner: Show a GTA-style notification/help prompt.
              cmgCall5(playerIndex)
              cmgCall5 = IsControlJustPressed
              playerIndex = 0
              numberValue12 = 73
              cmgCall5 = cmgCall5(playerIndex, numberValue12)
              if cmgCall5 then
                cmgCall5 = true
                flag16 = cmgCall5
                cmgCall5 = Citizen
                cmgCall5 = cmgCall5.CreateThread
                playerIndex = cmgCall3
                -- Beginner: Start a separate FiveM thread so this code can run independently.
                cmgCall5(playerIndex)
              end
            end
          end
        end
      end
    end
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
numberValue9 = textValue5
textValue6 = "Cuff Control Disabling"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(numberValue9, textValue6)
cmgCall4 = RegisterNetEvent
numberValue9 = "ce0419a8ee"
-- Beginner: this function handles network event "ce0419a8ee".
function textValue6(arg1, arg2)
  local cmgCall5, playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9
  cmgCall5 = numberValue7
  cmgCall5()
  cmgCall5 = CMG
  cmgCall5 = cmgCall5.loadAnimDict
  playerIndex = "mp_arresting"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall5(playerIndex)
  cmgCall5 = tCMG
  cmgCall5 = cmgCall5.playAnim
  playerIndex = false
  numberValue12 = {}
  flag14 = {}
  textValue9 = "mp_arresting"
  flag15 = "a_uncuff"
  numberValue16 = 1
  flag14[1] = textValue9
  flag14[2] = flag15
  flag14[3] = numberValue16
  numberValue12[1] = flag14
  flag14 = false
  cmgCall5(playerIndex, numberValue12, flag14)
  cmgCall5 = GetPlayerPed
  playerIndex = GetPlayerFromServerId
  numberValue12 = arg1
  playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9 = playerIndex(numberValue12)
  -- Beginner: result below is playerPed.
  cmgCall5 = cmgCall5(playerIndex, numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9)
  if 0 ~= cmgCall5 then
    if arg2 then
      playerIndex = AttachEntityToEntity
      numberValue12 = CMG
      numberValue12 = numberValue12.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      numberValue12 = numberValue12()
      flag14 = cmgCall5
      textValue9 = 11816
      flag15 = 0.0
      numberValue16 = 0.6
      numberValue17 = 0.0
      flag2 = 0.0
      flag3 = 0.0
      flag4 = 180.0
      flag5 = false
      flag6 = false
      flag7 = false
      flag8 = false
      numberValue6 = 0
      flag9 = false
      -- Beginner: Attach one entity to another entity.
      playerIndex(numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9)
    else
      playerIndex = AttachEntityToEntity
      numberValue12 = CMG
      numberValue12 = numberValue12.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      numberValue12 = numberValue12()
      flag14 = cmgCall5
      textValue9 = 11816
      flag15 = 0.0
      numberValue16 = -0.75
      numberValue17 = 0.0
      flag2 = 0.0
      flag3 = 0.0
      flag4 = 0.0
      flag5 = false
      flag6 = false
      flag7 = false
      flag8 = false
      numberValue6 = 0
      flag9 = false
      playerIndex(numberValue12, flag14, textValue9, flag15, numberValue16, numberValue17, flag2, flag3, flag4, flag5, flag6, flag7, flag8, numberValue6, flag9)
    end
    playerIndex = Wait
    numberValue12 = 5000
    playerIndex(numberValue12)
    playerIndex = DetachEntity
    numberValue12 = CMG
    numberValue12 = numberValue12.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    numberValue12 = numberValue12()
    flag14 = true
    textValue9 = false
    playerIndex(numberValue12, flag14, textValue9)
  end
  playerIndex = numberValue8
  playerIndex()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ce0419a8ee".
cmgCall4(numberValue9, textValue6)
cmgCall4 = RegisterNetEvent
numberValue9 = "b88765332f"
-- Beginner: this function handles network event "b88765332f".
function textValue6(arg1)
  local arg2, cmgCall5, playerIndex, numberValue12
  arg2 = GetEntityCoords
  cmgCall5 = CMG
  cmgCall5 = cmgCall5.getPlayerPed
  cmgCall5, playerIndex, numberValue12 = cmgCall5()
  -- Beginner: result below is entityCoords.
  arg2 = arg2(cmgCall5, playerIndex, numberValue12)
  cmgCall5 = arg2 - arg1
  cmgCall5 = #cmgCall5
  if cmgCall5 <= 15 then
    playerIndex = SendNUIMessage
    numberValue12 = {}
    numberValue12.transactionType = "playHandcuff"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    playerIndex(numberValue12)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b88765332f".
cmgCall4(numberValue9, textValue6)
cmgCall4 = RegisterNetEvent
numberValue9 = "f5674fc7a7"
-- Beginner: this function handles network event "f5674fc7a7".
function textValue6()
  local arg1, arg2
  arg1 = numberValue7
  arg1()
  arg1 = Wait
  arg2 = 5000
  arg1(arg2)
  arg1 = numberValue8
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f5674fc7a7".
cmgCall4(numberValue9, textValue6)