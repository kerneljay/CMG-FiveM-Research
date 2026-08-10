--[[
    Beginner Guide: cl_arena.lua
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
    BEGINNER GUIDE — Arena
    ======================

    File: cmg/prod/client/weapons/cl_arena.lua
    Purpose: This file contains weapons/combat gameplay.

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

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/cfg_arena

    Network/hash identifiers found: 79
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * client.hubOpenMenu
      * client.warmupPlayersIn

]]
local cmgCall, dataTable2, numberValue13, numberValue14, numberValue15, dataTable5, dataTable6, workValue51, numberValue20, numberValue21, numberValue, workValue3, workValue4, cmgCall2, workValue5, cmgCall3, workValue6, cmgCall5, numberValue6, dataTable, dataTable3, flag15, workValue7, workValue8, workValue9, workValue10, textValue2, textValue3, workValue11, workValue12, workValue13, workValue14, workValue16, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue27, workValue28, workValue29, workValue30, workValue31, workValue32, workValue33, workValue34, cmgCall6, cmgCall7, workValue35, workValue36, workValue37, threadCall, workValue38, numberValue16, numberValue17, workValue39, eventRegistration2, cmgCall8, textValue4, eventRegistration3, textValue5, workValue40, workValue41, workValue42, workValue43, eventRegistration4, textValue6, workValue44, workValue45, numberValue19, workValue46, workValue47, workValue48, workValue49, workValue50, eventRegistration5, textValue7, workValue52, workValue53, workValue54, workValue55, workValue56, workValue57, workValue58, eventRegistration6, eventRegistration7, textValue9, textValue10, workValue60, workValue61, workValue62, workValue63, workValue64, workValue65, cmgCall9, textValue11, eventRegistration, textValue, workValue2
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable2 = "cfg/cfg_arena"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable2)
dataTable2 = cmgCall.roundCountdown
if not dataTable2 then
  dataTable2 = {}
end
numberValue13 = dataTable2.stepMs
if not numberValue13 then
  numberValue13 = 600
end
numberValue14 = dataTable2.roundTitleMs
if not numberValue14 then
  numberValue14 = 500
end
numberValue15 = dataTable2.goDisplayMs
if not numberValue15 then
  numberValue15 = 400
end
dataTable5 = cmgCall.prepareMatch
if not dataTable5 then
  dataTable5 = {}
end
dataTable6 = cmgCall.arenaOob
if not dataTable6 then
  dataTable6 = {}
end
workValue51 = cmgCall.spectate
if workValue51 then
  workValue51 = cmgCall.spectate
  workValue51 = workValue51.freeCamMargin
  if workValue51 then
    goto flow_label_41
  end
end
workValue51 = 50.0
::flow_label_41::
numberValue20 = 25.0
numberValue21 = 5000
numberValue = 5000
function workValue3(arg1, ...)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59
  arg2 = cmgCall.strings
  if not arg2 then
    return arg1
  end
  arg3 = string
  arg3 = arg3.gmatch
  arg4 = arg1
  arg5 = "[^.]+"
  arg3, arg4, arg5, arg6 = arg3(arg4, arg5)
  for arg7 in arg3, arg4, arg5, arg6 do
    arg2 = arg2[arg7]
    if nil == arg2 then
      return arg1
    end
  end
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "string" ~= arg3 then
    return arg1
  end
  arg3 = select
  arg4 = "#"
  arg5, arg6, arg7, stringHelper, workValue59 = ...
  arg3 = arg3(arg4, arg5, arg6, arg7, stringHelper, workValue59)
  if arg3 > 0 then
    arg3 = string
    arg3 = arg3.format
    arg4 = arg2
    arg5, arg6, arg7, stringHelper, workValue59 = ...
    return arg3(arg4, arg5, arg6, arg7, stringHelper, workValue59)
  end
  return arg2
end
workValue4 = AddRelationshipGroup
cmgCall2 = "CMGARENA_TEAM1"
workValue4, cmgCall2 = workValue4(cmgCall2)
workValue5 = AddRelationshipGroup
cmgCall3 = "CMGARENA_TEAM2"
workValue5, cmgCall3 = workValue5(cmgCall3)
workValue6 = AddRelationshipGroup
cmgCall5 = "CMGARENA_SPECTATOR"
workValue6, cmgCall5 = workValue6(cmgCall5)
numberValue6 = 1862763509
dataTable = {}
dataTable.appOpen = false
dataTable.lastSync = nil
dataTable.myRank = nil
dataTable.lobbyId = nil
dataTable.match = nil
dataTable.fighting = false
dataTable3 = {}
dataTable3.fingerprint = nil
dataTable3.ctx = nil
dataTable.combat = dataTable3
dataTable.spectate = nil
dataTable.warmup = nil
dataTable.preview = false
dataTable.forfeitOpen = false
dataTable.forfeitWatchRunning = false
dataTable.coverPeekWatchRunning = false
dataTable.preRoundLockActive = false
dataTable.preRoundLockTickRunning = false
dataTable.pendingTournamentNav = nil
dataTable.awaitingHubReturn = false
dataTable.lastWagerEndedAt = 0
dataTable3 = {}
dataTable.loadedIpls = dataTable3
dataTable3 = {}
dataTable.spawnedProps = dataTable3
dataTable3 = {}
dataTable.adminTicketIpls = dataTable3
dataTable.hopOutVehicle = nil
dataTable.aiBots = nil
dataTable3 = {}
dataTable.botPeds = dataTable3
dataTable3 = {}
dataTable.botReported = dataTable3
dataTable.botWatchRunning = false
dataTable3 = false
flag15 = false
function workValue7()
  local arg1, arg2, arg3
  arg1 = dataTable.fighting
  if not arg1 then
    arg1 = dataTable.warmup
    arg1 = nil ~= arg1
  end
  if arg1 then
    arg2 = dataTable3
    if not arg2 then
      arg2 = tCMG
      arg2 = arg2.setCanAnim
      arg3 = false
      arg2(arg3)
      arg2 = true
      dataTable3 = arg2
  end
  elseif not arg1 then
    arg2 = dataTable3
    if arg2 then
      arg2 = tCMG
      arg2 = arg2.setCanAnim
      arg3 = true
      arg2(arg3)
      arg2 = false
      dataTable3 = arg2
    end
  end
end
function workValue8()
  local arg1, arg2, arg3
  arg1 = dataTable.fighting
  if arg1 then
    arg2 = flag15
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.setCanOpenPhone
      arg3 = false
      arg2(arg3)
      arg2 = true
      flag15 = arg2
  end
  elseif not arg1 then
    arg2 = flag15
    if arg2 then
      arg2 = CMG
      arg2 = arg2.setCanOpenPhone
      arg3 = true
      arg2(arg3)
      arg2 = false
      flag15 = arg2
    end
  end
end
function workValue9()
  local arg1, arg2, arg3
  arg1 = dataTable.fighting
  if not arg1 then
    arg1 = dataTable.warmup
    arg1 = nil ~= arg1
  end
  if arg1 then
    arg2 = CMG
    arg2 = arg2.setGreenzonesDisabled
    arg3 = true
    arg2(arg3)
    return
  end
  arg2 = CMG
  arg2 = arg2.inEvent
  arg2 = arg2()
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.isLbRacingActive
    arg2 = arg2()
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.setGreenzonesDisabled
      arg3 = false
      arg2(arg3)
    end
  end
end
function workValue10(arg1, arg2)
  local arg3, arg4
  arg3 = CMG
  arg3 = arg3.uiSendMessage
  arg4 = {}
  arg4.action = arg1
  arg4.payload = arg2
  arg3(arg4)
end
textValue2 = "cmg_arena_create_prefs"
textValue3 = "cmg_arena_maps_prefs"
function workValue11()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = GetResourceKvpString
  arg2 = textValue2
  arg1 = arg1(arg2)
  if not arg1 or "" == arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = pcall
  arg3 = json
  arg3 = arg3.decode
  arg4 = arg1
  arg2, arg3 = arg2(arg3, arg4)
  if arg2 then
    arg4 = type
    arg5 = arg3
    arg4 = arg4(arg5)
    if "table" == arg4 then
      return arg3
    end
  end
  arg4 = nil
  return arg4
end
function workValue12(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" ~= arg2 then
    return
  end
  arg2 = {}
  arg3 = arg1.mode
  arg2.mode = arg3
  arg3 = arg1.map
  arg2.map = arg3
  arg3 = arg1.weaponCategory
  arg2.weaponCategory = arg3
  arg3 = arg1.weaponId
  arg2.weaponId = arg3
  arg3 = arg1.bestOf
  arg2.bestOf = arg3
  arg3 = arg1.stake
  arg2.stake = arg3
  arg3 = arg1.useArmour
  arg2.useArmour = arg3
  arg3 = arg1.allowCrouchShoot
  arg2.allowCrouchShoot = arg3
  arg3 = arg1.disableCoverPeek
  arg2.disableCoverPeek = arg3
  arg3 = arg1.siphon
  arg2.siphon = arg3
  arg3 = arg1.isPrivate
  arg2.isPrivate = arg3
  arg3 = arg1.password
  arg2.password = arg3
  arg3 = arg1.botCount
  arg2.botCount = arg3
  arg3 = pcall
  arg4 = json
  arg4 = arg4.encode
  arg5 = arg2
  arg3, arg4 = arg3(arg4, arg5)
  if arg3 and arg4 then
    arg5 = SetResourceKvp
    arg6 = textValue2
    arg7 = arg4
    arg5(arg6, arg7)
    arg5 = workValue10
    arg6 = "ARENA_CREATE_PREFS"
    arg7 = arg2
    arg5(arg6, arg7)
  end
end
function workValue13()
  local arg1, arg2, arg3, arg4
  arg1 = workValue11
  arg1 = arg1()
  if arg1 then
    arg2 = workValue10
    arg3 = "ARENA_CREATE_PREFS"
    arg4 = arg1
    arg2(arg3, arg4)
  end
end
function workValue14(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" ~= arg2 then
    arg2 = {}
    return arg2
  end
  arg2 = {}
  arg3 = {}
  arg4 = ipairs
  arg5 = arg1
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for stringHelper, workValue59 in arg4, arg5, arg6, arg7 do
    stringHelper2 = tostring
    flag = workValue59 or flag
    if not workValue59 then
      flag = ""
    end
    stringHelper2 = stringHelper2(flag)
    workValue59 = stringHelper2
    if "" ~= workValue59 then
      stringHelper2 = arg3[workValue59]
      if not stringHelper2 then
        arg3[workValue59] = true
        stringHelper2 = #arg2
        stringHelper2 = stringHelper2 + 1
        arg2[stringHelper2] = workValue59
      end
    end
  end
  return arg2
end
function workValue16()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = GetResourceKvpString
  arg2 = textValue3
  arg1 = arg1(arg2)
  if not arg1 or "" == arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = pcall
  arg3 = json
  arg3 = arg3.decode
  arg4 = arg1
  arg2, arg3 = arg2(arg3, arg4)
  if arg2 then
    arg4 = type
    arg5 = arg3
    arg4 = arg4(arg5)
    if "table" == arg4 then
      arg4 = workValue14
      arg5 = arg3.favourites
      arg4 = arg4(arg5)
      arg3.favourites = arg4
      return arg3
    end
  end
  arg4 = nil
  return arg4
end
function workValue18(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" ~= arg2 then
    return
  end
  arg2 = workValue16
  arg2 = arg2()
  if not arg2 then
    arg2 = {}
  end
  arg3 = {}
  arg4 = arg2.favouritesOnly
  arg4 = true == arg4
  arg3.favouritesOnly = arg4
  arg4 = arg2.favourites
  if not arg4 then
    arg4 = {}
  end
  arg3.favourites = arg4
  arg4 = arg1.favouritesOnly
  if nil ~= arg4 then
    arg4 = arg1.favouritesOnly
    arg4 = true == arg4
    arg3.favouritesOnly = arg4
  end
  arg4 = type
  arg5 = arg1.favourites
  arg4 = arg4(arg5)
  if "table" == arg4 then
    arg4 = workValue14
    arg5 = arg1.favourites
    arg4 = arg4(arg5)
    arg3.favourites = arg4
  end
  arg4 = pcall
  arg5 = json
  arg5 = arg5.encode
  arg6 = arg3
  arg4, arg5 = arg4(arg5, arg6)
  if arg4 and arg5 then
    arg6 = SetResourceKvp
    arg7 = textValue3
    stringHelper = arg5
    arg6(arg7, stringHelper)
    arg6 = workValue10
    arg7 = "ARENA_MAPS_PREFS"
    stringHelper = arg3
    arg6(arg7, stringHelper)
  end
end
function workValue19()
  local arg1, arg2, arg3, arg4
  arg1 = workValue16
  arg1 = arg1()
  if arg1 then
    arg2 = workValue10
    arg3 = "ARENA_MAPS_PREFS"
    arg4 = arg1
    arg2(arg3, arg4)
  end
end
function workValue20()
  local arg1, arg2, arg3, arg4
  arg1 = dataTable.appOpen
  if arg1 then
    return
  end
  dataTable.appOpen = true
  arg1 = CMG
  arg1 = arg1.hideHud
  arg1()
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = true
  arg3 = true
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "APP_TOGGLE"
  arg2.app = "Arena"
  arg1(arg2)
  arg1 = dataTable.lastSync
  if arg1 then
    arg1 = workValue10
    arg2 = "ARENA_SYNC"
    arg3 = dataTable.lastSync
    arg1(arg2, arg3)
  end
  arg1 = workValue13
  arg1()
  arg1 = workValue19
  arg1()
  arg1 = TriggerServerEvent
  arg2 = "65d1e65933"
  arg3 = true
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "65d1e65933".
  arg1(arg2, arg3)
  arg1 = TriggerServerEvent
  arg2 = "37d8fd04c4"
  arg1(arg2)
end
function workValue21()
  local arg1, arg2, arg3, arg4
  arg1 = dataTable.appOpen
  if not arg1 then
    return
  end
  dataTable.appOpen = false
  arg1 = CMG
  arg1 = arg1.showHud
  arg1()
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = false
  arg3 = false
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "APP_TOGGLE"
  arg2.app = ""
  arg1(arg2)
  arg1 = TriggerServerEvent
  arg2 = "65d1e65933"
  arg3 = false
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "65d1e65933".
  arg1(arg2, arg3)
end
function workValue22()
  local arg1, arg2, arg3, arg4
  arg1 = dataTable.forfeitOpen
  if not arg1 then
    arg1 = dataTable.match
    if arg1 then
      goto flow_label_8
    end
  end
  return
  ::flow_label_8::
  dataTable.forfeitOpen = true
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = true
  arg3 = true
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = workValue10
  arg2 = "ARENA_FORFEIT_PROMPT"
  arg3 = {}
  arg3.show = true
  arg1(arg2, arg3)
end
function workValue23()
  local arg1, arg2, arg3, arg4
  arg1 = dataTable.forfeitOpen
  if not arg1 then
    return
  end
  dataTable.forfeitOpen = false
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = false
  arg3 = false
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = workValue10
  arg2 = "ARENA_FORFEIT_PROMPT"
  arg3 = {}
  arg3.show = false
  arg1(arg2, arg3)
end
function workValue24()
  local arg1, arg2
  arg1 = dataTable.coverPeekWatchRunning
  if arg1 then
    return
  end
  dataTable.coverPeekWatchRunning = true
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function arg2()
    local workValue, playerPed, iterator, dataTable4, flag22, flag23, numberValue18, flag24, textValue8, flag25, flag2, flag4
    while true do
      workValue = dataTable.fighting
      if not workValue then
        break
      end
      workValue = dataTable.match
      if not workValue then
        break
      end
      workValue = dataTable.match
      workValue = workValue.flags
      if workValue then
        workValue = dataTable.match
        workValue = workValue.flags
        workValue = workValue.disableCoverPeek
        if workValue then
          workValue = PlayerId
          -- Beginner: result below is localPlayerIndex.
          workValue = workValue()
          playerPed = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          playerPed = playerPed()
          iterator = SetPlayerCanUseCover
          dataTable4 = workValue
          flag22 = false
          iterator(dataTable4, flag22)
          iterator = SetPedConfigFlag
          dataTable4 = playerPed
          flag22 = 427
          flag23 = false
          iterator(dataTable4, flag22, flag23)
          iterator = ipairs
          dataTable4 = {}
          flag22 = 0
          flag23 = 1
          numberValue18 = 2
          dataTable4[1] = flag22
          dataTable4[2] = flag23
          dataTable4[3] = numberValue18
          iterator, dataTable4, flag22, flag23 = iterator(dataTable4)
          for numberValue18, flag24 in iterator, dataTable4, flag22, flag23 do
            textValue8 = DisableControlAction
            flag25 = flag24
            flag2 = 44
            flag4 = true
            textValue8(flag25, flag2, flag4)
          end
          iterator = IsPedInCover
          dataTable4 = playerPed
          flag22 = false
          iterator = iterator(dataTable4, flag22)
          if iterator then
            iterator = ClearPedTasks
            dataTable4 = playerPed
            iterator(dataTable4)
          end
        end
      end
      workValue = Wait
      playerPed = 0
      workValue(playerPed)
    end
    workValue = SetPlayerCanUseCover
    playerPed = PlayerId
    -- Beginner: result below is localPlayerIndex.
    playerPed = playerPed()
    iterator = true
    workValue(playerPed, iterator)
    dataTable.coverPeekWatchRunning = false
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
function workValue25()
  local arg1, arg2
  arg1 = dataTable.forfeitWatchRunning
  if arg1 then
    return
  end
  dataTable.forfeitWatchRunning = true
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function arg2()
    local workValue, playerPed, iterator, dataTable4
    while true do
      workValue = dataTable.fighting
      if not workValue then
        break
      end
      workValue = dataTable.match
      if not workValue then
        break
      end
      workValue = dataTable.forfeitOpen
      if not workValue then
        workValue = IsPauseMenuActive
        workValue = workValue()
        if not workValue then
          workValue = DisableControlAction
          playerPed = 0
          iterator = 199
          dataTable4 = true
          workValue(playerPed, iterator, dataTable4)
          workValue = DisableControlAction
          playerPed = 0
          iterator = 200
          dataTable4 = true
          workValue(playerPed, iterator, dataTable4)
          workValue = IsDisabledControlJustPressed
          playerPed = 0
          iterator = 200
          workValue = workValue(playerPed, iterator)
          if not workValue then
            workValue = IsDisabledControlJustPressed
            playerPed = 0
            iterator = 199
            workValue = workValue(playerPed, iterator)
            if not workValue then
              goto flow_label_38
            end
          end
          workValue = workValue22
          workValue()
        end
      end
      ::flow_label_38::
      workValue = Wait
      playerPed = 0
      workValue(playerPed)
    end
    dataTable.forfeitWatchRunning = false
    workValue = workValue23
    workValue()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
function workValue26(arg1, arg2)
  local arg3, arg4, arg5, arg6
  if arg2 then
    arg3 = SetRelationshipBetweenGroups
    arg4 = 5
    arg5 = cmgCall2
    arg6 = cmgCall2
    arg3(arg4, arg5, arg6)
    arg3 = SetRelationshipBetweenGroups
    arg4 = 5
    arg5 = cmgCall2
    arg6 = cmgCall3
    arg3(arg4, arg5, arg6)
    arg3 = SetRelationshipBetweenGroups
    arg4 = 5
    arg5 = cmgCall3
    arg6 = cmgCall2
    arg3(arg4, arg5, arg6)
    arg3 = SetPedRelationshipGroupHash
    arg4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg4 = arg4()
    arg5 = cmgCall2
    arg3(arg4, arg5)
  else
    arg3 = SetRelationshipBetweenGroups
    arg4 = 5
    arg5 = cmgCall2
    arg6 = cmgCall3
    arg3(arg4, arg5, arg6)
    arg3 = SetRelationshipBetweenGroups
    arg4 = 5
    arg5 = cmgCall3
    arg6 = cmgCall2
    arg3(arg4, arg5, arg6)
    arg3 = SetPedRelationshipGroupHash
    arg4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg4 = arg4()
    if 1 == arg1 then
      arg5 = cmgCall2
      if arg5 then
        goto flow_label_43
      end
    end
    arg5 = cmgCall3
    ::flow_label_43::
    arg3(arg4, arg5)
  end
  arg3 = CMG
  arg3 = arg3.setFriendlyFire
  arg4 = false
  arg3(arg4)
end
function workValue27()
  local arg1, arg2, arg3, arg4
  arg1 = ClearRelationshipBetweenGroups
  arg2 = 5
  arg3 = cmgCall2
  arg4 = cmgCall3
  arg1(arg2, arg3, arg4)
  arg1 = ClearRelationshipBetweenGroups
  arg2 = 5
  arg3 = cmgCall3
  arg4 = cmgCall2
  arg1(arg2, arg3, arg4)
  arg1 = ClearRelationshipBetweenGroups
  arg2 = 5
  arg3 = cmgCall2
  arg4 = cmgCall2
  arg1(arg2, arg3, arg4)
  arg1 = SetPedRelationshipGroupHash
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = numberValue6
  arg1(arg2, arg3)
  arg1 = CMG
  arg1 = arg1.setFriendlyFire
  arg2 = true
  arg1(arg2)
end
function workValue28()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetCurrentPedWeapon
  arg3 = arg1
  arg4 = true
  arg2, arg3 = arg2(arg3, arg4)
  arg4 = table
  arg4 = arg4.concat
  arg5 = {}
  arg6 = tostring
  arg7 = arg3
  arg6 = arg6(arg7)
  arg7 = tostring
  stringHelper = GetEntityMaxHealth
  workValue59 = arg1
  stringHelper, workValue59, stringHelper2 = stringHelper(workValue59)
  arg7 = arg7(stringHelper, workValue59, stringHelper2)
  stringHelper = tostring
  workValue59 = GetPedRelationshipGroupHash
  stringHelper2 = arg1
  workValue59, stringHelper2 = workValue59(stringHelper2)
  stringHelper, workValue59, stringHelper2 = stringHelper(workValue59, stringHelper2)
  arg5[1] = arg6
  arg5[2] = arg7
  arg5[3] = stringHelper
  arg5[4] = workValue59
  arg5[5] = stringHelper2
  arg6 = "|"
  arg4 = arg4(arg5, arg6)
  arg5 = GetHashKey
  arg6 = arg4
  return arg5(arg6)
end
function workValue29(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59
  if not arg2 or "" == arg2 then
    return
  end
  if not arg1 then
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    arg1 = arg3
  end
  arg3 = GetHashKey
  arg4 = arg2
  -- Beginner: result below is hash.
  arg3 = arg3(arg4)
  arg4 = HasWeaponAssetLoaded
  arg5 = arg3
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = RequestWeaponAsset
    arg5 = arg3
    arg6 = 31
    arg7 = 0
    arg4(arg5, arg6, arg7)
    arg4 = 0
    while true do
      arg5 = HasWeaponAssetLoaded
      arg6 = arg3
      arg5 = arg5(arg6)
      if not (not arg5 and arg4 < 100) then
        break
      end
      arg5 = Wait
      arg6 = 0
      arg5(arg6)
      arg4 = arg4 + 1
    end
  end
  arg4 = HasPedGotWeapon
  arg5 = arg1
  arg6 = arg3
  arg7 = false
  arg4 = arg4(arg5, arg6, arg7)
  if not arg4 then
    arg4 = GiveWeaponToPed
    arg5 = arg1
    arg6 = arg3
    arg7 = cmgCall.defaultWeaponAmmo
    if not arg7 then
      arg7 = 250
    end
    stringHelper = false
    workValue59 = true
    arg4(arg5, arg6, arg7, stringHelper, workValue59)
  end
  arg4 = SetCurrentPedWeapon
  arg5 = arg1
  arg6 = arg3
  arg7 = true
  arg4(arg5, arg6, arg7)
  arg4 = SetPedInfiniteAmmo
  arg5 = arg1
  arg6 = true
  arg7 = arg3
  arg4(arg5, arg6, arg7)
end
function workValue30(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  if not arg1 then
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    arg1 = arg3
  end
  if arg2 and "" ~= arg2 then
    arg3 = SetPedInfiniteAmmo
    arg4 = arg1
    arg5 = false
    arg6 = GetHashKey
    arg7 = arg2
    arg6, arg7 = arg6(arg7)
    arg3(arg4, arg5, arg6, arg7)
  end
  arg3 = SetPedInfiniteAmmoClip
  arg4 = arg1
  arg5 = false
  arg3(arg4, arg5)
end
function workValue31()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg1 = arg1()
  arg2 = DisablePlayerFiring
  arg3 = arg1
  arg4 = true
  arg2(arg3, arg4)
  arg2 = DisableControlAction
  arg3 = 0
  arg4 = 24
  arg5 = true
  arg2(arg3, arg4, arg5)
  arg2 = DisableControlAction
  arg3 = 0
  arg4 = 25
  arg5 = true
  arg2(arg3, arg4, arg5)
  arg2 = DisableControlAction
  arg3 = 0
  arg4 = 37
  arg5 = true
  arg2(arg3, arg4, arg5)
  arg2 = DisableControlAction
  arg3 = 0
  arg4 = 47
  arg5 = true
  arg2(arg3, arg4, arg5)
  arg2 = DisableControlAction
  arg3 = 0
  arg4 = 58
  arg5 = true
  arg2(arg3, arg4, arg5)
  arg2 = DisableControlAction
  arg3 = 0
  arg4 = 140
  arg5 = true
  arg2(arg3, arg4, arg5)
  arg2 = DisableControlAction
  arg3 = 0
  arg4 = 141
  arg5 = true
  arg2(arg3, arg4, arg5)
  arg2 = DisableControlAction
  arg3 = 0
  arg4 = 142
  arg5 = true
  arg2(arg3, arg4, arg5)
  arg2 = DisableControlAction
  arg3 = 0
  arg4 = 257
  arg5 = true
  arg2(arg3, arg4, arg5)
  arg2 = DisableControlAction
  arg3 = 0
  arg4 = 263
  arg5 = true
  arg2(arg3, arg4, arg5)
end
function workValue32()
  local arg1, arg2, arg3, arg4
  arg1 = dataTable.preRoundLockActive
  if arg1 then
    return
  end
  dataTable.preRoundLockActive = true
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = FreezeEntityPosition
  arg3 = arg1
  arg4 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, arg4)
  arg2 = dataTable.hopOutVehicle
  if arg2 then
    arg2 = DoesEntityExist
    arg3 = dataTable.hopOutVehicle
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = FreezeEntityPosition
      arg3 = dataTable.hopOutVehicle
      arg4 = true
      arg2(arg3, arg4)
    end
  end
  arg2 = dataTable.preRoundLockTickRunning
  if arg2 then
    return
  end
  dataTable.preRoundLockTickRunning = true
  arg2 = Citizen
  arg2 = arg2.CreateThread
  function arg3()
    local workValue, playerPed
    while true do
      workValue = dataTable.preRoundLockActive
      if not workValue then
        break
      end
      workValue = workValue31
      workValue()
      workValue = Wait
      playerPed = 0
      workValue(playerPed)
    end
    dataTable.preRoundLockTickRunning = false
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
function workValue33()
  local arg1, arg2, arg3
  arg1 = dataTable.preRoundLockActive
  if not arg1 then
    return
  end
  dataTable.preRoundLockActive = false
  arg1 = FreezeEntityPosition
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg1(arg2, arg3)
  arg1 = dataTable.hopOutVehicle
  if arg1 then
    arg1 = DoesEntityExist
    arg2 = dataTable.hopOutVehicle
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = FreezeEntityPosition
      arg2 = dataTable.hopOutVehicle
      arg3 = false
      arg1(arg2, arg3)
    end
  end
  arg1 = dataTable.combat
  arg1 = arg1.ctx
  if arg1 then
    arg1 = dataTable.combat
    arg1 = arg1.ctx
    arg1 = arg1.weaponModel
    if arg1 then
      arg1 = workValue29
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = dataTable.combat
      arg3 = arg3.ctx
      arg3 = arg3.weaponModel
      arg1(arg2, arg3)
    end
  end
end
function workValue34(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = dataTable.combat
  arg3.ctx = arg1
  arg3 = arg1.clearSpectator
  if arg3 then
    arg3 = CMG
    arg3 = arg3.setEventSpectatorMode
    arg4 = false
    arg3(arg4)
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    arg2 = arg3
  end
  arg3 = dataTable.hopOutVehicle
  arg4 = arg1.worldMode
  arg4 = arg3 or arg4
  if arg4 and arg3 then
    arg4 = DoesEntityExist
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = GetVehiclePedIsIn
      arg5 = arg2
      arg6 = false
      -- Beginner: result below is currentVehicle.
      arg4 = arg4(arg5, arg6)
      arg4 = arg4 == arg3
    end
  end
  arg5 = arg1.spawn
  if arg5 then
    arg5 = arg1.clearSpectator
    if arg5 and not arg4 then
      arg5 = IsEntityDead
      arg6 = arg2
      arg5 = arg5(arg6)
      if arg5 then
        arg5 = NetworkResurrectLocalPlayer
        arg6 = arg1.spawn
        arg6 = arg6.x
        arg7 = arg1.spawn
        arg7 = arg7.y
        stringHelper = arg1.spawn
        stringHelper = stringHelper.z
        workValue59 = arg1.spawn
        workValue59 = workValue59.w
        if not workValue59 then
          workValue59 = 0.0
        end
        stringHelper2 = true
        flag = false
        arg5(arg6, arg7, stringHelper, workValue59, stringHelper2, flag)
        arg5 = SetPlayerInvincible
        arg6 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        arg6 = arg6()
        arg7 = false
        arg5(arg6, arg7)
        arg5 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg5 = arg5()
        arg2 = arg5
      end
      arg5 = SetEntityCoords
      arg6 = arg2
      arg7 = arg1.spawn
      arg7 = arg7.x
      stringHelper = arg1.spawn
      stringHelper = stringHelper.y
      workValue59 = arg1.spawn
      workValue59 = workValue59.z
      stringHelper2 = false
      flag = false
      flag3 = false
      flag5 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      arg5(arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5)
      arg5 = SetEntityHeading
      arg6 = arg2
      arg7 = arg1.spawn
      arg7 = arg7.w
      if not arg7 then
        arg7 = 0.0
      end
      -- Beginner: Change the direction an entity is facing.
      arg5(arg6, arg7)
      arg5 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg5 = arg5()
      arg2 = arg5
  end
  else
    arg5 = IsEntityDead
    arg6 = arg2
    arg5 = arg5(arg6)
    if arg5 then
      arg5 = arg1.spawn
      arg6 = nil
      arg7 = nil
      stringHelper = nil
      workValue59 = nil
      if arg5 then
        stringHelper2 = arg5.x
        flag = arg5.y
        flag3 = arg5.z
        flag5 = arg5.w
        workValue59 = flag5 or workValue59
        if not flag5 then
          workValue59 = 0.0
        end
        stringHelper = flag3
        arg7 = flag
        arg6 = stringHelper2
      else
        stringHelper2 = GetEntityCoords
        flag = arg2
        -- Beginner: result below is entityCoords.
        stringHelper2 = stringHelper2(flag)
        flag = stringHelper2.x
        flag3 = stringHelper2.y
        flag5 = stringHelper2.z
        heading = GetEntityHeading
        flag7 = arg2
        -- Beginner: result below is heading.
        heading = heading(flag7)
        workValue59 = heading
        stringHelper = flag5
        arg7 = flag3
        arg6 = flag
      end
      stringHelper2 = NetworkResurrectLocalPlayer
      flag = arg6
      flag3 = arg7
      flag5 = stringHelper
      heading = workValue59
      flag7 = true
      flag9 = false
      stringHelper2(flag, flag3, flag5, heading, flag7, flag9)
      stringHelper2 = SetPlayerInvincible
      flag = PlayerId
      -- Beginner: result below is localPlayerIndex.
      flag = flag()
      flag3 = false
      stringHelper2(flag, flag3)
      stringHelper2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      stringHelper2 = stringHelper2()
      arg2 = stringHelper2
    end
  end
  if not arg4 then
    arg5 = ClearPedTasksImmediately
    arg6 = arg2
    arg5(arg6)
  end
  arg5 = ClearPedBloodDamage
  arg6 = arg2
  arg5(arg6)
  arg5 = 200
  arg6 = SetEntityMaxHealth
  arg7 = arg2
  stringHelper = arg5
  arg6(arg7, stringHelper)
  arg6 = SetEntityHealth
  arg7 = arg2
  stringHelper = arg5
  arg6(arg7, stringHelper)
  arg6 = arg1.useArmour
  if arg6 then
    arg6 = SetPedArmour
    arg7 = arg2
    stringHelper = 100
    arg6(arg7, stringHelper)
  else
    arg6 = SetPedArmour
    arg7 = arg2
    stringHelper = 0
    arg6(arg7, stringHelper)
  end
  arg6 = SetPlayerHealthRechargeMultiplier
  arg7 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg7 = arg7()
  stringHelper = 0.0
  arg6(arg7, stringHelper)
  arg6 = SetPlayerWeaponDamageModifier
  arg7 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg7 = arg7()
  stringHelper = 1.0
  arg6(arg7, stringHelper)
  arg6 = SetPlayerWeaponDefenseModifier
  arg7 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg7 = arg7()
  stringHelper = 1.0
  arg6(arg7, stringHelper)
  arg6 = SetPlayerMeleeWeaponDamageModifier
  arg7 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg7 = arg7()
  stringHelper = 1.0
  arg6(arg7, stringHelper)
  arg6 = SetEntityProofs
  arg7 = arg2
  stringHelper = false
  workValue59 = false
  stringHelper2 = false
  flag = false
  flag3 = false
  flag5 = false
  heading = false
  flag7 = false
  arg6(arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7)
  arg6 = workValue26
  arg7 = arg1.team
  stringHelper = arg1.isFFA
  arg6(arg7, stringHelper)
  arg6 = TriggerEvent
  arg7 = "259d5b120c"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "259d5b120c".
  arg6(arg7)
  arg6 = SetCanAttackFriendly
  arg7 = arg2
  stringHelper = false
  workValue59 = false
  arg6(arg7, stringHelper, workValue59)
  arg6 = SetPlayerCanDoDriveBy
  arg7 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg7 = arg7()
  stringHelper = arg1.worldMode
  stringHelper = true == stringHelper
  arg6(arg7, stringHelper)
  arg6 = arg1.disableCoverPeek
  if arg6 then
    arg6 = SetPlayerCanUseCover
    arg7 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    arg7 = arg7()
    stringHelper = false
    arg6(arg7, stringHelper)
    arg6 = SetPedConfigFlag
    arg7 = arg2
    stringHelper = 427
    workValue59 = false
    arg6(arg7, stringHelper, workValue59)
  else
    arg6 = SetPlayerCanUseCover
    arg7 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    arg7 = arg7()
    stringHelper = true
    arg6(arg7, stringHelper)
  end
  arg6 = SetPedPathCanUseLadders
  arg7 = arg2
  stringHelper = false
  arg6(arg7, stringHelper)
  arg6 = RefillAmmoInstantly
  arg7 = arg2
  arg6(arg7)
  arg6 = arg1.weaponModel
  if arg6 then
    arg6 = workValue29
    arg7 = arg2
    stringHelper = arg1.weaponModel
    arg6(arg7, stringHelper)
  end
  arg6 = dataTable.combat
  arg7 = workValue28
  arg7 = arg7()
  arg6.fingerprint = arg7
  arg6 = TriggerServerEvent
  arg7 = "27d78c6395"
  stringHelper = arg1.matchId
  workValue59 = dataTable.combat
  workValue59 = workValue59.fingerprint
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "27d78c6395".
  arg6(arg7, stringHelper, workValue59)
end
cmgCall6 = CMG
function cmgCall7()
  local arg1, arg2
  arg1 = dataTable.fighting
  return arg1
end
cmgCall6.inArena = cmgCall7
cmgCall6 = CMG
function cmgCall7()
  local arg1, arg2
  arg1 = dataTable.warmup
  arg1 = nil ~= arg1
  return arg1
end
cmgCall6.inArenaWarmup = cmgCall7
cmgCall6 = CMG
function cmgCall7()
  local arg1, arg2
  arg1 = dataTable.preview
  return arg1
end
cmgCall6.inArenaMapPreview = cmgCall7
cmgCall6 = CMG
function cmgCall7()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2
  arg1 = dataTable.match
  if not arg1 then
    arg1 = {}
    return arg1
  end
  arg1 = {}
  arg2 = pairs
  arg3 = dataTable.match
  arg3 = arg3.players
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    stringHelper = arg7.alive
    if false ~= stringHelper then
      stringHelper = #arg1
      stringHelper = stringHelper + 1
      workValue59 = {}
      workValue59.source = arg6
      stringHelper2 = arg7.team
      workValue59.team = stringHelper2
      stringHelper2 = arg7.name
      workValue59.name = stringHelper2
      workValue59.alive = true
      arg1[stringHelper] = workValue59
    end
  end
  return arg1
end
cmgCall6.getPlayersInWager = cmgCall7
cmgCall6 = CMG
function cmgCall7()
  local arg1, arg2
  arg1 = dataTable.match
  if not arg1 then
    return
  end
  arg1 = GetPlayerServerId
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  -- Beginner: result below is serverId.
  arg1 = arg1(arg2)
  arg2 = dataTable.match
  arg2 = arg2.players
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = dataTable.match
    arg2 = arg2.players
    arg2 = arg2[arg1]
    arg2.alive = false
  end
end
cmgCall6.markArenaPlayerDead = cmgCall7
cmgCall6 = CMG
function cmgCall7()
  local arg1, arg2
  arg1 = dataTable.spectate
  arg1 = nil ~= arg1
  return arg1
end
cmgCall6.isArenaSpectating = cmgCall7
cmgCall6 = CMG
function cmgCall7()
  local arg1, arg2
  arg1 = dataTable.lastWagerEndedAt
  if arg1 > 0 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    arg2 = dataTable.lastWagerEndedAt
    arg1 = arg1 - arg2
    arg2 = numberValue
    if arg1 < arg2 then
      arg1 = true
      return arg1
    end
  end
  arg1 = dataTable.fighting
  if not arg1 then
    arg1 = dataTable.warmup
    arg1 = nil ~= arg1
  end
  return arg1
end
cmgCall6.shouldSuppressCombatTimer = cmgCall7
cmgCall6 = CMG
function cmgCall7()
  local arg1, arg2
  arg1 = dataTable.fighting
  if not arg1 then
    arg1 = dataTable.warmup
    arg1 = nil ~= arg1
  end
  return arg1
end
cmgCall6.shouldSkipSavedPosition = cmgCall7
cmgCall6 = CMG
function cmgCall7()
  local arg1, arg2
  arg1 = workValue51
  return arg1
end
cmgCall6.getArenaSpectatePedOffsetZ = cmgCall7
cmgCall6 = CMG
function cmgCall7()
  local arg1, arg2
  arg1 = dataTable.spectate
  if arg1 then
    arg1 = dataTable.spectate
    arg1 = arg1.players
    if arg1 then
      goto flow_label_11
    end
  end
  arg1 = {}
  return arg1
  ::flow_label_11::
  arg1 = dataTable.spectate
  arg1 = arg1.players
  return arg1
end
cmgCall6.getArenaSpectatePlayers = cmgCall7
cmgCall6 = CMG
function cmgCall7(arg1)
  local arg2
  arg2 = dataTable.match
  if not arg2 then
    arg2 = nil
    return arg2
  end
  arg2 = dataTable.match
  arg2 = arg2.flags
  arg2 = arg2[arg1]
  return arg2
end
cmgCall6.getCurrentWagerFlag = cmgCall7
cmgCall6 = 0
cmgCall7 = CMG
function workValue35()
  local arg1, arg2
  arg1 = cmgCall6
  arg1 = arg1 > 0
  return arg1
end
cmgCall7.isAtArenaWagerHub = workValue35
function cmgCall7()
  local arg1, arg2
  arg1 = cmgCall6
  arg1 = arg1 + 1
  cmgCall6 = arg1
end
function workValue35()
  local arg1, arg2, arg3
  arg1 = math
  arg1 = arg1.max
  arg2 = 0
  arg3 = cmgCall6
  arg3 = arg3 - 1
  arg1 = arg1(arg2, arg3)
  cmgCall6 = arg1
  arg1 = workValue21
  arg1()
end
function workValue36()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9, cmgCall4, numberValue5, numberValue7, flag12, flag14, flag16, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag17, flag18, flag19
  arg1 = ipairs
  arg2 = cmgCall.wagerMarkers
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = arg6.blip
    if arg7 then
      arg7 = tCMG
      arg7 = arg7.addBlip
      stringHelper = arg6.coords
      stringHelper = stringHelper.x
      workValue59 = arg6.coords
      workValue59 = workValue59.y
      stringHelper2 = arg6.coords
      stringHelper2 = stringHelper2.z
      flag = arg6.blip
      flag = flag.sprite
      if not flag then
        flag = 437
      end
      flag3 = arg6.blip
      flag3 = flag3.colour
      flag5 = arg6.label
      -- Beginner: Create a minimap blip.
      arg7(stringHelper, workValue59, stringHelper2, flag, flag3, flag5)
    end
    arg7 = tCMG
    arg7 = arg7.addMarker
    stringHelper = arg6.coords
    stringHelper = stringHelper.x
    workValue59 = arg6.coords
    workValue59 = workValue59.y
    stringHelper2 = arg6.coords
    stringHelper2 = stringHelper2.z
    stringHelper2 = stringHelper2 - 1.0
    flag = 5.5
    flag3 = 5.5
    flag5 = 2.291666666666667
    heading = 74
    flag7 = 144
    flag9 = 245
    cmgCall4 = 110
    numberValue5 = 150
    numberValue7 = 1
    flag12 = false
    flag14 = false
    flag16 = false
    -- Beginner: Create a world marker.
    arg7(stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9, cmgCall4, numberValue5, numberValue7, flag12, flag14, flag16)
    arg7 = 0
    function stringHelper()
      local workValue, playerPed, iterator, dataTable4, flag22, flag23
      workValue = dataTable.fighting
      if not workValue then
        workValue = dataTable.spectate
        if not workValue then
          goto flow_label_8
        end
      end
      return
      ::flow_label_8::
      workValue = arg6.permission
      if workValue then
        workValue = CMG
        workValue = workValue.hasClientPermission
        playerPed = arg6.permission
        workValue = workValue(playerPed)
        if not workValue then
          return
        end
      end
      workValue = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      workValue = workValue()
      playerPed = arg7
      playerPed = workValue - playerPed
      iterator = 2000
      if playerPed > iterator then
        playerPed = BeginTextCommandDisplayHelp
        iterator = "STRING"
        playerPed(iterator)
        playerPed = AddTextComponentSubstringPlayerName
        iterator = workValue3
        dataTable4 = "client.hubOpenMenu"
        iterator, dataTable4, flag22, flag23 = iterator(dataTable4)
        playerPed(iterator, dataTable4, flag22, flag23)
        playerPed = EndTextCommandDisplayHelp
        iterator = 0
        dataTable4 = false
        flag22 = false
        flag23 = -1
        playerPed(iterator, dataTable4, flag22, flag23)
        arg7 = workValue
      end
      playerPed = IsControlJustPressed
      iterator = 0
      dataTable4 = 38
      playerPed = playerPed(iterator, dataTable4)
      if playerPed then
        playerPed = workValue20
        playerPed()
      end
    end
    workValue59 = CMG
    workValue59 = workValue59.createArea
    stringHelper2 = "arena_hub_"
    flag = arg6.id
    stringHelper2 = stringHelper2 .. flag
    flag = arg6.coords
    flag3 = 2.9
    flag5 = 5.0
    heading = cmgCall7
    flag7 = workValue35
    flag9 = stringHelper
    cmgCall4 = nil
    -- Beginner: Create an interaction area around a world position.
    workValue59(stringHelper2, flag, flag3, flag5, heading, flag7, flag9, cmgCall4)
    workValue59 = arg6.spectatorMarkers
    if workValue59 then
      workValue59 = ipairs
      stringHelper2 = arg6.spectatorMarkers
      workValue59, stringHelper2, flag, flag3 = workValue59(stringHelper2)
      for flag5, heading in workValue59, stringHelper2, flag, flag3 do
        flag7 = tCMG
        flag7 = flag7.addMarker
        flag9 = heading.x
        cmgCall4 = heading.y
        numberValue5 = heading.z
        numberValue5 = numberValue5 - 1.0
        numberValue7 = 3.5
        flag12 = 3.5
        flag14 = 1.4583333333333335
        flag16 = 108
        numberValue8 = 164
        numberValue9 = 250
        numberValue10 = 90
        numberValue11 = 120
        numberValue12 = 1
        flag17 = false
        flag18 = false
        flag19 = false
        -- Beginner: Create a world marker.
        flag7(flag9, cmgCall4, numberValue5, numberValue7, flag12, flag14, flag16, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag17, flag18, flag19)
        flag7 = 0
        function flag9()
          local workValue, playerPed, iterator, dataTable4, flag22, flag23
          workValue = dataTable.fighting
          if not workValue then
            workValue = dataTable.spectate
            if not workValue then
              goto flow_label_8
            end
          end
          return
          ::flow_label_8::
          workValue = arg6.permission
          if workValue then
            workValue = CMG
            workValue = workValue.hasClientPermission
            playerPed = arg6.permission
            workValue = workValue(playerPed)
            if not workValue then
              return
            end
          end
          workValue = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          workValue = workValue()
          playerPed = flag7
          playerPed = workValue - playerPed
          iterator = 2000
          if playerPed > iterator then
            playerPed = BeginTextCommandDisplayHelp
            iterator = "STRING"
            playerPed(iterator)
            playerPed = AddTextComponentSubstringPlayerName
            iterator = workValue3
            dataTable4 = "client.spectateMarkerOpen"
            iterator, dataTable4, flag22, flag23 = iterator(dataTable4)
            playerPed(iterator, dataTable4, flag22, flag23)
            playerPed = EndTextCommandDisplayHelp
            iterator = 0
            dataTable4 = false
            flag22 = false
            flag23 = -1
            playerPed(iterator, dataTable4, flag22, flag23)
            flag7 = workValue
          end
          playerPed = IsControlJustPressed
          iterator = 0
          dataTable4 = 38
          playerPed = playerPed(iterator, dataTable4)
          if playerPed then
            playerPed = workValue20
            playerPed()
          end
        end
        cmgCall4 = CMG
        cmgCall4 = cmgCall4.createArea
        numberValue5 = "arena_spectate_"
        numberValue7 = arg6.id
        flag12 = "_"
        flag14 = flag5
        numberValue5 = numberValue5 .. numberValue7 .. flag12 .. flag14
        numberValue7 = heading
        flag12 = 2.2
        flag14 = 4.0
        flag16 = cmgCall7
        numberValue8 = workValue35
        numberValue9 = flag9
        numberValue10 = nil
        -- Beginner: Create an interaction area around a world position.
        cmgCall4(numberValue5, numberValue7, flag12, flag14, flag16, numberValue8, numberValue9, numberValue10)
      end
    end
  end
end
function workValue37()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.refreshNearbyMarkers
  arg1()
  arg1 = CMG
  arg1 = arg1.forceNearbyAreasReload
  arg1()
end
threadCall = Citizen
threadCall = threadCall.CreateThread
function workValue38()
  local arg1, arg2, arg3, arg4
  arg1 = workValue36
  arg1()
  arg1 = CMG
  arg1 = arg1.createNoVehicleZone
  arg2 = cmgCall.arenaCentre
  arg3 = 31.0
  arg4 = false
  arg1(arg2, arg3, arg4)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(workValue38)
threadCall = nil
workValue38 = vector2
numberValue16 = 8.0
numberValue17 = 8.0
workValue38 = workValue38(numberValue16, numberValue17)
numberValue16 = 0
function numberValue17(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7
  arg2 = threadCall
  if not arg2 then
    arg2 = Scaleform
    arg3 = "mp_mission_name_freemode"
    arg2 = arg2(arg3)
  end
  threadCall = arg2
  arg3 = arg2.RunFunction
  arg4 = "SET_MISSION_INFO"
  arg5 = {}
  arg6 = ""
  arg7 = workValue3
  stringHelper = "client.hubMarkerTitle"
  arg7 = arg7(stringHelper)
  stringHelper = ""
  workValue59 = ""
  stringHelper2 = ""
  flag = ""
  flag3 = arg1
  flag5 = "0"
  heading = ""
  flag7 = ""
  arg5[1] = arg6
  arg5[2] = arg7
  arg5[3] = stringHelper
  arg5[4] = workValue59
  arg5[5] = stringHelper2
  arg5[6] = flag
  arg5[7] = flag3
  arg5[8] = flag5
  arg5[9] = heading
  arg5[10] = flag7
  arg3(arg4, arg5)
  return arg2
end
function workValue39()
  local arg1, arg2
  arg1 = threadCall
  if not arg1 then
    arg1 = numberValue17
    arg2 = numberValue16
    arg1(arg2)
  end
  arg1 = threadCall
  return arg1
end
eventRegistration2 = RegisterNetEvent
cmgCall8 = "e0468ae598"
-- Beginner: this function handles network event "e0468ae598".
function textValue4(arg1)
  local arg2, arg3
  arg2 = tonumber
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = 0
  end
  numberValue16 = arg2
  arg2 = numberValue17
  arg3 = numberValue16
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e0468ae598".
eventRegistration2(cmgCall8, textValue4)
function eventRegistration2(arg1, arg2)
  local arg3, arg4, arg5, arg6
  arg3 = arg2 - arg1
  arg4 = arg3.x
  if arg4 > 0.0 then
    arg4 = math
    arg4 = arg4.atan
    arg5 = arg3.y
    arg6 = arg3.x
    arg5 = arg5 / arg6
    arg4 = arg4(arg5)
    arg5 = math
    arg5 = arg5.pi
    arg6 = 180.0
    arg5 = arg6 / arg5
    arg4 = arg4 * arg5
    arg5 = 270.0
    arg4 = arg5 - arg4
    return arg4
  else
    arg4 = arg3.x
    if arg4 < 0.0 then
      arg4 = math
      arg4 = arg4.atan
      arg5 = arg3.y
      arg6 = arg3.x
      arg6 = -arg6
      arg5 = arg5 / arg6
      arg4 = arg4(arg5)
      arg5 = math
      arg5 = arg5.pi
      arg6 = 180.0
      arg5 = arg6 / arg5
      arg4 = arg4 * arg5
      arg4 = arg4 + 90.0
      return arg4
    end
  end
  arg4 = 0.0
  return arg4
end
cmgCall8 = Citizen
cmgCall8 = cmgCall8.CreateThread
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9, cmgCall4
  while true do
    arg1 = 1000
    arg2 = dataTable.fighting
    if not arg2 then
      arg2 = dataTable.spectate
      if not arg2 then
        arg2 = dataTable.warmup
        if not arg2 then
          arg2 = GetEntityCoords
          arg3 = PlayerPedId
          arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9, cmgCall4 = arg3()
          -- Beginner: result below is entityCoords.
          arg2 = arg2(arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9, cmgCall4)
          arg3 = nil
          arg4 = ipairs
          arg5 = cmgCall.wagerMarkers
          arg4, arg5, arg6, arg7 = arg4(arg5)
          for stringHelper, workValue59 in arg4, arg5, arg6, arg7 do
            stringHelper2 = workValue59.coords
            stringHelper2 = arg2 - stringHelper2
            stringHelper2 = #stringHelper2
            if stringHelper2 < 25.0 then
              arg1 = 0
              if not arg3 then
                stringHelper2 = workValue39
                stringHelper2 = stringHelper2()
                arg3 = stringHelper2
              end
              stringHelper2 = vector3
              flag = workValue59.coords
              flag = flag.x
              flag3 = workValue59.coords
              flag3 = flag3.y
              flag5 = workValue59.coords
              flag5 = flag5.z
              flag5 = flag5 - 0.5
              stringHelper2 = stringHelper2(flag, flag3, flag5)
              flag = eventRegistration2
              flag3 = stringHelper2
              flag5 = arg2
              flag = flag(flag3, flag5)
              flag3 = arg3.Render3D
              flag5 = stringHelper2
              heading = vector3
              flag7 = 0.0
              flag9 = 0.0
              cmgCall4 = flag
              heading = heading(flag7, flag9, cmgCall4)
              flag7 = workValue38
              flag3(flag5, heading, flag7)
            end
          end
        end
      end
    end
    arg2 = Wait
    arg3 = arg1
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall8(textValue4)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaClose"
function eventRegistration3()
  local arg1, arg2
  arg1 = workValue21
  arg1()
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaRequestSync"
function eventRegistration3()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "37d8fd04c4"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "37d8fd04c4".
  arg1(arg2)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaRequestLeaderboard"
function eventRegistration3()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "2f0b74a153"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2f0b74a153".
  arg1(arg2)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaRequestTournamentHistory"
function eventRegistration3()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "0cd5c10b96"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0cd5c10b96".
  arg1(arg2)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaRequestTournamentHistoryDetail"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "62ee4806be"
  arg4 = arg1 or arg4
  if arg1 then
    arg4 = arg1.id
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "62ee4806be".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaSaveCreatePrefs"
function eventRegistration3(arg1)
  local arg2, arg3
  arg2 = workValue12
  arg3 = arg1
  arg2(arg3)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaPropose"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = workValue12
  arg3 = arg1
  arg2(arg3)
  arg2 = TriggerServerEvent
  arg3 = "e37d8c11ce"
  arg4 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e37d8c11ce".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaSaveMapsPrefs"
function eventRegistration3(arg1)
  local arg2, arg3
  arg2 = workValue18
  arg3 = arg1
  arg2(arg3)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaJoin"
function eventRegistration3(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = TriggerServerEvent
  arg3 = "ff4c695c54"
  arg4 = arg1.lobbyId
  arg5 = arg1.team
  arg6 = arg1.password
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ff4c695c54".
  arg2(arg3, arg4, arg5, arg6)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaLeave"
function eventRegistration3()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "da3a5c87e9"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3a5c87e9".
  arg1(arg2)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaSetReady"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "982370d572"
  arg4 = arg1 or arg4
  if arg1 then
    arg4 = arg1.ready
    arg4 = true == arg4
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "982370d572".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaSetAllowUneven"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "5cfc0fc0db"
  arg4 = arg1 or arg4
  if arg1 then
    arg4 = arg1.flag
    arg4 = true == arg4
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5cfc0fc0db".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaKick"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "960630ff5b"
  arg4 = arg1.targetUid
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "960630ff5b".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaRandomiseTeams"
function eventRegistration3()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "f23608a75f"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f23608a75f".
  arg1(arg2)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaCancel"
function eventRegistration3()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "51e5dd4f86"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "51e5dd4f86".
  arg1(arg2)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaForceStart"
function eventRegistration3()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "ead9a2f7c1"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ead9a2f7c1".
  arg1(arg2)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaStartAiTest"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = workValue12
  arg3 = arg1
  arg2(arg3)
  arg2 = TriggerServerEvent
  arg3 = "964ff47d86"
  arg4 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "964ff47d86".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaQueueRanked"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "7c3f412810"
  arg4 = arg1 or arg4
  if arg1 then
    arg4 = arg1.mode
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7c3f412810".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaLeaveQueue"
function eventRegistration3()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "ad9560f394"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ad9560f394".
  arg1(arg2)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaSpectate"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "8b568e2353"
  arg4 = arg1.matchId
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8b568e2353".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaStopSpectate"
function eventRegistration3()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "7d900d0299"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7d900d0299".
  arg1(arg2)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaToggleFavourite"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "0b7db7ef96"
  arg4 = arg1.map
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0b7db7ef96".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaCreateTournament"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "cd1e60d311"
  arg4 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cd1e60d311".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaStartAiTestTournament"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "d2792e55c1"
  arg4 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d2792e55c1".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaTournamentSignup"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "ad6f1ed6de"
  arg4 = arg1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ad6f1ed6de".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaTournamentLeave"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "3699f0344c"
  arg4 = arg1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3699f0344c".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaTournamentReady"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "7c5c6b46a5"
  arg4 = arg1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7c5c6b46a5".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaTournamentBanMap"
function eventRegistration3(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = TriggerServerEvent
  arg3 = "d37a4a5018"
  arg4 = arg1 or arg4
  if arg1 then
    arg4 = arg1.id
  end
  arg5 = arg1 or arg5
  if arg1 then
    arg5 = arg1.map
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d37a4a5018".
  arg2(arg3, arg4, arg5)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaTeamCreate"
function eventRegistration3(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = TriggerServerEvent
  arg3 = "d852716b1b"
  arg4 = arg1.id
  arg5 = arg1.name
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d852716b1b".
  arg2(arg3, arg4, arg5)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaTeamInvite"
function eventRegistration3(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = TriggerServerEvent
  arg3 = "aca0bcc361"
  arg4 = arg1.id
  arg5 = arg1.targetUid
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "aca0bcc361".
  arg2(arg3, arg4, arg5)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaTeamAccept"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "a5e84468f0"
  arg4 = arg1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a5e84468f0".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaTeamDecline"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "3b31d48e60"
  arg4 = arg1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3b31d48e60".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaTeamLeave"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "9b4169b569"
  arg4 = arg1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9b4169b569".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaTeamKick"
function eventRegistration3(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = TriggerServerEvent
  arg3 = "9dc55ae45d"
  arg4 = arg1.id
  arg5 = arg1.targetUid
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9dc55ae45d".
  arg2(arg3, arg4, arg5)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaStartTournament"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "91edec2c38"
  arg4 = arg1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "91edec2c38".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaCancelTournament"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "3521b0b97b"
  arg4 = arg1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3521b0b97b".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaJoinWarmup"
function eventRegistration3()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "5a7f5f8b12"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5a7f5f8b12".
  arg1(arg2)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaPreviewMap"
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "e6ed8d0b17"
  arg4 = arg1 or arg4
  if arg1 then
    arg4 = arg1.map
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e6ed8d0b17".
  arg2(arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaForfeit"
function eventRegistration3()
  local arg1, arg2
  arg1 = workValue23
  arg1()
  arg1 = TriggerServerEvent
  arg2 = "43967a02a0"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "43967a02a0".
  arg1(arg2)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaForfeitCancel"
function eventRegistration3()
  local arg1, arg2
  arg1 = workValue23
  arg1()
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue4 = "arenaOpenSettings"
function eventRegistration3()
  local arg1, arg2, arg3, arg4
  arg1 = workValue23
  arg1()
  arg1 = ActivateFrontendMenu
  arg2 = GetHashKey
  arg3 = "FE_MENU_VERSION_SP_PAUSE"
  -- Beginner: result below is hash.
  arg2 = arg2(arg3)
  arg3 = false
  arg4 = -1
  arg1(arg2, arg3, arg4)
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = RegisterNetEvent
textValue4 = "c15b8fcdc0"
-- Beginner: this function handles network event "c15b8fcdc0".
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  dataTable.lastSync = arg1
  arg2 = arg1.myRank
  dataTable.myRank = arg2
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" == arg2 then
    arg2 = type
    arg3 = arg1.favourites
    arg2 = arg2(arg3)
    if "table" == arg2 then
      arg2 = workValue18
      arg3 = {}
      arg4 = arg1.favourites
      arg3.favourites = arg4
      arg2(arg3)
    end
  end
  arg2 = dataTable.appOpen
  if arg2 then
    arg2 = workValue10
    arg3 = "ARENA_SYNC"
    arg4 = arg1
    arg2(arg3, arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c15b8fcdc0".
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = RegisterNetEvent
textValue4 = "82b1a5ab63"
-- Beginner: this function handles network event "82b1a5ab63".
function eventRegistration3(arg1)
  local arg2
  dataTable.lobbyId = arg1
end
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = RegisterNetEvent
textValue4 = "542eed18ed"
-- Beginner: this function handles network event "542eed18ed".
function eventRegistration3(arg1)
  local arg2, arg3, arg4
  dataTable.lobbyId = nil
  if "kicked" == arg1 then
    arg2 = tCMG
    arg2 = arg2.notify
    arg3 = workValue3
    arg4 = "client.leftLobbyRemoved"
    arg3, arg4 = arg3(arg4)
    -- Beginner: Show a notification to the player.
    arg2(arg3, arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "542eed18ed".
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = RegisterNetEvent
textValue4 = "c5774316e0"
-- Beginner: this function handles network event "c5774316e0".
function eventRegistration3(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" == arg2 then
    arg2 = arg1.type
    if "bad" == arg2 then
      arg2 = "~r~"
      if arg2 then
        goto flow_label_19
      end
    end
    arg2 = arg1.type
    if "good" == arg2 then
      arg2 = "~g~"
      if arg2 then
        goto flow_label_19
      end
    end
    arg2 = "~y~"
    ::flow_label_19::
    arg3 = arg1.msg
    if arg3 then
      arg3 = tCMG
      arg3 = arg3.notify
      arg4 = arg2
      arg5 = arg1.msg
      arg4 = arg4 .. arg5
      -- Beginner: Show a notification to the player.
      arg3(arg4)
    end
    arg3 = dataTable.appOpen
    if arg3 then
      arg3 = workValue10
      arg4 = "ARENA_NOTIFY"
      arg5 = arg1
      arg3(arg4, arg5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c5774316e0".
cmgCall8(textValue4, eventRegistration3)
cmgCall8 = cmgCall.tournament
if cmgCall8 then
  cmgCall8 = cmgCall.tournament
  cmgCall8 = cmgCall8.startCountdownSec
  if cmgCall8 then
    goto flow_label_418
  end
end
cmgCall8 = 300
::flow_label_418::
function textValue4(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9, cmgCall4, numberValue5
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" ~= arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.getClientUserId
  -- Beginner: result below is userId.
  arg2 = arg2()
  if not arg2 then
    arg3 = CMG
    arg3 = arg3.removeHudTimer
    arg4 = "arenaTournamentStart"
    arg3(arg4)
    return
  end
  arg3 = nil
  arg4 = nil
  arg5 = ipairs
  arg6 = arg1.tournaments
  if not arg6 then
    arg6 = {}
  end
  arg5, arg6, arg7, stringHelper = arg5(arg6)
  for workValue59, stringHelper2 in arg5, arg6, arg7, stringHelper do
    if not arg3 then
      flag = stringHelper2.serverNow
      if flag then
        arg3 = stringHelper2.serverNow
      end
    end
    flag = stringHelper2.status
    if "signup" == flag then
      flag = stringHelper2.startsAt
      if flag then
        flag = stringHelper2.startsAt
        if flag > 0 then
          flag = false
          flag3 = ipairs
          flag5 = stringHelper2.signups
          if not flag5 then
            flag5 = {}
          end
          flag3, flag5, heading, flag7 = flag3(flag5)
          for flag9, cmgCall4 in flag3, flag5, heading, flag7 do
            numberValue5 = cmgCall4.uid
            if numberValue5 == arg2 then
              flag = true
              break
            end
          end
          if flag then
            flag3 = arg3 or flag3
            if not arg3 then
              flag3 = CMG
              flag3 = flag3.getEstimatedServerOsTime
              flag3 = flag3()
            end
            flag5 = stringHelper2.startsAt
            flag5 = flag5 - flag3
            if flag5 > 0 then
              heading = cmgCall8
              if flag5 <= heading and (not arg4 or arg4 > flag5) then
                arg4 = flag5
              end
            end
          end
        end
      end
    end
  end
  if arg4 then
    arg5 = CMG
    arg5 = arg5.addHudDurationTimer
    arg6 = "arenaTournamentStart"
    arg7 = workValue3
    stringHelper = "client.tournamentStartsIn"
    arg7 = arg7(stringHelper)
    stringHelper = arg4
    workValue59 = nil
    arg5(arg6, arg7, stringHelper, workValue59)
  else
    arg5 = CMG
    arg5 = arg5.removeHudTimer
    arg6 = "arenaTournamentStart"
    arg5(arg6)
  end
end
eventRegistration3 = RegisterNetEvent
textValue5 = "3c33249acd"
-- Beginner: this function handles network event "3c33249acd".
function workValue40(arg1)
  local arg2, arg3, arg4
  arg2 = dataTable.appOpen
  if arg2 then
    arg2 = workValue10
    arg3 = "ARENA_TOURNAMENT_STATE"
    arg4 = arg1
    arg2(arg3, arg4)
  end
  arg2 = textValue4
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3c33249acd".
eventRegistration3(textValue5, workValue40)
eventRegistration3 = RegisterNetEvent
textValue5 = "b8045c5c1d"
-- Beginner: this function handles network event "b8045c5c1d".
function workValue40(arg1)
  local arg2, arg3, arg4
  arg2 = workValue10
  arg3 = "ARENA_LEADERBOARD"
  arg4 = arg1
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b8045c5c1d".
eventRegistration3(textValue5, workValue40)
eventRegistration3 = RegisterNetEvent
textValue5 = "7896cbfe43"
-- Beginner: this function handles network event "7896cbfe43".
function workValue40(arg1)
  local arg2, arg3, arg4
  arg2 = workValue10
  arg3 = "ARENA_TOURNAMENT_HISTORY"
  arg4 = arg1
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7896cbfe43".
eventRegistration3(textValue5, workValue40)
eventRegistration3 = RegisterNetEvent
textValue5 = "b128d3a788"
-- Beginner: this function handles network event "b128d3a788".
function workValue40(arg1)
  local arg2, arg3, arg4
  arg2 = workValue10
  arg3 = "ARENA_TOURNAMENT_HISTORY_DETAIL"
  arg4 = arg1
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b128d3a788".
eventRegistration3(textValue5, workValue40)
-- Beginner: this function handles network event "b128d3a788".
function eventRegistration3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper
  arg1 = ipairs
  arg2 = dataTable.loadedIpls
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = RemoveIpl
    stringHelper = arg6
    arg7(stringHelper)
  end
  arg1 = {}
  dataTable.loadedIpls = arg1
  arg1 = ipairs
  arg2 = dataTable.spawnedProps
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = DoesEntityExist
    stringHelper = arg6
    arg7 = arg7(stringHelper)
    if arg7 then
      arg7 = DeleteEntity
      stringHelper = arg6
      -- Beginner: Delete a GTA entity.
      arg7(stringHelper)
    end
  end
  arg1 = {}
  dataTable.spawnedProps = arg1
  arg1 = dataTable.hopOutVehicle
  if arg1 then
    arg1 = DoesEntityExist
    arg2 = dataTable.hopOutVehicle
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = DeleteEntity
      arg2 = dataTable.hopOutVehicle
      arg1(arg2)
    end
  end
  dataTable.hopOutVehicle = nil
end
function textValue5(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag
  arg2 = CMG
  arg2 = arg2.setEventSpectatorMode
  arg3 = false
  arg2(arg3)
  arg2 = dataTable.spectate
  if arg2 then
    dataTable.spectate = nil
    arg2 = workValue10
    arg3 = "ARENA_SPECTATE_STATE"
    arg4 = {}
    arg4.active = false
    arg2(arg3, arg4)
    arg2 = workValue10
    arg3 = "ARENA_MATCH_HUD"
    arg4 = false
    arg2(arg3, arg4)
  end
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = FreezeEntityPosition
  arg4 = arg2
  arg5 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, arg5)
  if arg1 then
    arg3 = arg1.x
    if arg3 then
      arg3 = arg1.y
      if arg3 then
        arg3 = arg1.z
        if arg3 then
          arg3 = SetEntityCoords
          arg4 = arg2
          arg5 = arg1.x
          arg6 = arg1.y
          arg7 = arg1.z
          arg7 = arg7 - 1.0
          stringHelper = false
          workValue59 = false
          stringHelper2 = false
          flag = false
          -- Beginner: Move/teleport an entity to new coordinates.
          arg3(arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag)
          arg3 = vector3
          arg4 = arg1.x
          arg5 = arg1.y
          arg6 = arg1.z
          arg3 = arg3(arg4, arg5, arg6)
          arg4 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg4 = arg4()
          arg5 = numberValue21
          arg4 = arg4 + arg5
          while true do
            arg5 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            arg5 = arg5()
            if not (arg4 > arg5) then
              break
            end
            arg5 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            arg5 = arg5()
            arg2 = arg5
            arg5 = GetEntityCoords
            arg6 = arg2
            -- Beginner: result below is entityCoords.
            arg5 = arg5(arg6)
            arg6 = arg5 - arg3
            arg6 = #arg6
            arg7 = numberValue20
            if arg6 <= arg7 then
              arg6 = HasCollisionLoadedAroundEntity
              arg7 = arg2
              arg6 = arg6(arg7)
              if arg6 then
                break
              end
            end
            arg6 = RequestCollisionAtCoord
            arg7 = arg1.x
            stringHelper = arg1.y
            workValue59 = arg1.z
            arg6(arg7, stringHelper, workValue59)
            arg6 = Wait
            arg7 = 50
            arg6(arg7)
          end
      end
    end
  end
  else
    arg3 = Wait
    arg4 = 150
    arg3(arg4)
  end
  arg3 = workValue9
  arg3()
end
function workValue40(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9, cmgCall4
  if not arg1 then
    return
  end
  arg2 = {}
  arg3 = ipairs
  arg4 = arg1
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, stringHelper in arg3, arg4, arg5, arg6 do
    arg2[stringHelper] = true
  end
  arg3 = {}
  arg4 = ipairs
  arg5 = dataTable.loadedIpls
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for stringHelper, workValue59 in arg4, arg5, arg6, arg7 do
    stringHelper2 = arg2[workValue59]
    if stringHelper2 then
      stringHelper2 = #arg3
      stringHelper2 = stringHelper2 + 1
      arg3[stringHelper2] = workValue59
    else
      stringHelper2 = RemoveIpl
      flag = workValue59
      stringHelper2(flag)
    end
  end
  dataTable.loadedIpls = arg3
  arg4 = ipairs
  arg5 = arg1
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for stringHelper, workValue59 in arg4, arg5, arg6, arg7 do
    stringHelper2 = IsIplActive
    flag = workValue59
    stringHelper2 = stringHelper2(flag)
    if not stringHelper2 then
      stringHelper2 = RequestIpl
      flag = workValue59
      stringHelper2(flag)
    end
    stringHelper2 = false
    flag = ipairs
    flag3 = dataTable.loadedIpls
    flag, flag3, flag5, heading = flag(flag3)
    for flag7, flag9 in flag, flag3, flag5, heading do
      if flag9 == workValue59 then
        stringHelper2 = true
        break
      end
    end
    if not stringHelper2 then
      flag = dataTable.loadedIpls
      flag3 = dataTable.loadedIpls
      flag3 = #flag3
      flag3 = flag3 + 1
      flag[flag3] = workValue59
    end
  end
end
function workValue41(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7
  if not arg1 then
    return
  end
  arg2 = ipairs
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    stringHelper = CMG
    stringHelper = stringHelper.loadModel
    workValue59 = arg7.model
    -- Beginner: Request/load a GTA model before spawning or applying it.
    stringHelper(workValue59)
    stringHelper = CreateObjectNoOffset
    workValue59 = arg7.model
    stringHelper2 = arg7.pos
    stringHelper2 = stringHelper2.x
    flag = arg7.pos
    flag = flag.y
    flag3 = arg7.pos
    flag3 = flag3.z
    flag5 = false
    heading = false
    flag7 = false
    -- Beginner: result below is objectEntity.
    stringHelper = stringHelper(workValue59, stringHelper2, flag, flag3, flag5, heading, flag7)
    workValue59 = SetEntityHeading
    stringHelper2 = stringHelper
    flag = arg7.heading
    if not flag then
      flag = 0.0
    end
    -- Beginner: Change the direction an entity is facing.
    workValue59(stringHelper2, flag)
    workValue59 = FreezeEntityPosition
    stringHelper2 = stringHelper
    flag = true
    -- Beginner: Freeze or unfreeze an entity in place.
    workValue59(stringHelper2, flag)
    workValue59 = SetModelAsNoLongerNeeded
    stringHelper2 = arg7.model
    workValue59(stringHelper2)
    workValue59 = dataTable.spawnedProps
    stringHelper2 = dataTable.spawnedProps
    stringHelper2 = #stringHelper2
    stringHelper2 = stringHelper2 + 1
    workValue59[stringHelper2] = stringHelper
  end
end
function workValue42(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9, cmgCall4, numberValue5
  if not arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = dataTable.hopOutVehicle
  if arg2 then
    arg2 = DoesEntityExist
    arg3 = dataTable.hopOutVehicle
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = DeleteEntity
      arg3 = dataTable.hopOutVehicle
      -- Beginner: Delete a GTA entity.
      arg2(arg3)
    end
  end
  dataTable.hopOutVehicle = nil
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = GetEntityCoords
  arg4 = arg2
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4)
  arg4 = GetEntityHeading
  arg5 = arg2
  -- Beginner: result below is heading.
  arg4 = arg4(arg5)
  arg5 = GetHashKey
  arg6 = arg1
  -- Beginner: result below is hash.
  arg5 = arg5(arg6)
  arg6 = RequestModel
  arg7 = arg5
  arg6(arg7)
  arg6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg6 = arg6()
  arg6 = arg6 + 5000
  while true do
    arg7 = HasModelLoaded
    stringHelper = arg5
    arg7 = arg7(stringHelper)
    if arg7 then
      break
    end
    arg7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg7 = arg7()
    if not (arg6 > arg7) then
      break
    end
    arg7 = Wait
    stringHelper = 10
    arg7(stringHelper)
  end
  arg7 = HasModelLoaded
  stringHelper = arg5
  arg7 = arg7(stringHelper)
  if not arg7 then
    arg7 = nil
    return arg7
  end
  arg7 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg7 = arg7()
  arg7 = arg7 + 2000
  while true do
    stringHelper = HasCollisionLoadedAroundEntity
    workValue59 = arg2
    stringHelper = stringHelper(workValue59)
    if stringHelper then
      break
    end
    stringHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    stringHelper = stringHelper()
    if not (arg7 > stringHelper) then
      break
    end
    stringHelper = RequestCollisionAtCoord
    workValue59 = arg3.x
    stringHelper2 = arg3.y
    flag = arg3.z
    stringHelper(workValue59, stringHelper2, flag)
    stringHelper = Wait
    workValue59 = 10
    stringHelper(workValue59)
  end
  stringHelper = GetGroundZFor_3dCoord
  workValue59 = arg3.x
  stringHelper2 = arg3.y
  flag = arg3.z
  flag = flag + 5.0
  flag3 = false
  stringHelper, workValue59 = stringHelper(workValue59, stringHelper2, flag, flag3)
  stringHelper2 = workValue59 or stringHelper2
  if not stringHelper or not workValue59 then
    stringHelper2 = arg3.z
  end
  stringHelper2 = stringHelper2 + 1.0
  flag = pcall
  flag3 = CMG
  flag3 = flag3.requestEntitySpawn
  flag5 = "arena_hopout"
  flag(flag3, flag5)
  flag = CreateVehicle
  flag3 = arg5
  flag5 = arg3.x
  heading = arg3.y
  flag7 = stringHelper2
  flag9 = arg4
  cmgCall4 = true
  numberValue5 = false
  -- Beginner: result below is vehicleEntity.
  flag = flag(flag3, flag5, heading, flag7, flag9, cmgCall4, numberValue5)
  flag3 = SetVehicleOnGroundProperly
  flag5 = flag
  flag3(flag5)
  flag3 = SetPedIntoVehicle
  flag5 = arg2
  heading = flag
  flag7 = -1
  flag3(flag5, heading, flag7)
  flag3 = SetVehicleEngineOn
  flag5 = flag
  heading = true
  flag7 = true
  flag9 = false
  flag3(flag5, heading, flag7, flag9)
  flag3 = SetEntityAsMissionEntity
  flag5 = flag
  heading = true
  flag7 = true
  flag3(flag5, heading, flag7)
  flag3 = FreezeEntityPosition
  flag5 = flag
  heading = true
  -- Beginner: Freeze or unfreeze an entity in place.
  flag3(flag5, heading)
  flag3 = SetModelAsNoLongerNeeded
  flag5 = arg5
  flag3(flag5)
  dataTable.hopOutVehicle = flag
  flag3 = dataTable.combat
  flag3 = flag3.ctx
  if flag3 then
    flag3 = dataTable.match
    if flag3 then
      flag3 = dataTable.combat
      flag5 = workValue28
      flag5 = flag5()
      flag3.fingerprint = flag5
      flag3 = TriggerServerEvent
      flag5 = "27d78c6395"
      heading = dataTable.match
      heading = heading.id
      flag7 = dataTable.combat
      flag7 = flag7.fingerprint
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "27d78c6395".
      flag3(flag5, heading, flag7)
    end
  end
  return flag
end
function workValue43(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3
  arg2 = {}
  arg3 = arg1.players
  if arg3 then
    arg3 = pairs
    arg4 = arg1.players
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7, stringHelper in arg3, arg4, arg5, arg6 do
      workValue59 = GetPlayerFromServerId
      stringHelper2 = arg7
      -- Beginner: result below is playerIndex.
      workValue59 = workValue59(stringHelper2)
      stringHelper2 = {}
      stringHelper2.team = stringHelper
      if -1 ~= workValue59 then
        flag = CMG
        flag = flag.getPlayerName
        flag3 = workValue59
        flag = flag(flag3)
        if flag then
          goto flow_label_27
        end
      end
      flag = "#"
      flag3 = arg7
      flag = flag .. flag3
      ::flow_label_27::
      stringHelper2.name = flag
      stringHelper2.alive = true
      arg2[arg7] = stringHelper2
    end
  end
  arg3 = arg1.aiBots
  dataTable.aiBots = arg3
  arg3 = {}
  dataTable.botPeds = arg3
  arg3 = {}
  dataTable.botReported = arg3
  dataTable.botWatchRunning = false
  arg3 = {}
  arg4 = arg1.matchId
  arg3.id = arg4
  arg4 = arg1.mapName
  arg3.map = arg4
  arg4 = arg1.mode
  arg3.mode = arg4
  arg4 = arg1.worldMode
  arg3.worldMode = arg4
  arg4 = arg1.vehicleModel
  arg3.vehicleModel = arg4
  arg3.isFFA = false
  arg4 = arg1.team
  arg3.team = arg4
  arg3.players = arg2
  arg4 = arg1.movement
  if not arg4 then
    arg4 = {}
  end
  arg3.movement = arg4
  arg4 = {}
  arg5 = arg1.allowCrouchShoot
  arg4.allowCrouchShoot = arg5
  arg5 = arg1.disableCoverPeek
  arg5 = true == arg5
  arg4.disableCoverPeek = arg5
  arg3.flags = arg4
  arg4 = {}
  arg3.score = arg4
  arg3.roundNo = 1
  arg4 = arg1.bestOf
  arg3.bestOf = arg4
  arg3.startTime = 0
  arg4 = cmgCall.roundTime
  arg4 = arg4 * 60
  arg3.roundTime = arg4
  arg3.oobWarningRunning = false
  arg3.tickRunning = false
  arg3.roundOver = false
  arg3.spectatorCount = 0
  dataTable.match = arg3
end
eventRegistration4 = RegisterNetEvent
textValue6 = "83f418a3d7"
-- Beginner: this function handles network event "83f418a3d7".
function workValue44(arg1)
  local arg2, arg3, arg4
  dataTable.fighting = true
  arg2 = workValue7
  arg2()
  arg2 = workValue8
  arg2()
  arg2 = workValue9
  arg2()
  arg2 = workValue21
  arg2()
  arg2 = CMG
  arg2 = arg2.setSwitchGunEnabled
  arg3 = false
  arg2(arg3)
  arg2 = DoScreenFadeOut
  arg3 = dataTable5.fadeOutMs
  if not arg3 then
    arg3 = 400
  end
  arg2(arg3)
  arg2 = Wait
  arg3 = dataTable5.postFadeOutWaitMs
  if not arg3 then
    arg3 = 350
  end
  arg2(arg3)
  arg2 = eventRegistration3
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg2()
  arg2 = workValue43
  arg3 = arg1
  arg2(arg3)
  arg2 = workValue40
  arg3 = arg1.ipls
  arg2(arg3)
  arg2 = workValue41
  arg3 = arg1.propLayout
  arg2(arg3)
  arg2 = FreezeEntityPosition
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, arg4)
  arg2 = Wait
  arg3 = dataTable5.postLoadWaitMs
  if not arg3 then
    arg3 = 150
  end
  arg2(arg3)
  arg2 = TriggerServerEvent
  arg3 = "19a079869c"
  arg4 = arg1.matchId
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "19a079869c".
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "83f418a3d7".
eventRegistration4(textValue6, workValue44)
eventRegistration4 = RegisterNetEvent
textValue6 = "e7197c297a"
-- Beginner: this function handles network event "e7197c297a".
function workValue44(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper
  arg2 = dataTable.fighting
  if arg2 then
    arg2 = type
    arg3 = arg1
    arg2 = arg2(arg3)
    if "table" == arg2 then
      goto flow_label_10
    end
  end
  return
  ::flow_label_10::
  arg2 = arg1.health
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "number" ~= arg3 or arg2 <= 0 then
    return
  end
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = SetEntityHealth
  arg5 = arg3
  arg6 = math
  arg6 = arg6.min
  arg7 = GetEntityHealth
  stringHelper = arg3
  -- Beginner: result below is health.
  arg7 = arg7(stringHelper)
  arg7 = arg7 + arg2
  stringHelper = 200
  arg6, arg7, stringHelper = arg6(arg7, stringHelper)
  arg4(arg5, arg6, arg7, stringHelper)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e7197c297a".
eventRegistration4(textValue6, workValue44)
eventRegistration4 = RegisterNetEvent
textValue6 = "09e09c8df2"
-- Beginner: this function handles network event "09e09c8df2".
function workValue44(arg1)
  local arg2, arg3, arg4
  arg2 = dataTable.match
  if arg2 then
    arg2 = dataTable.match
    arg3 = arg1.isFFA
    arg2.isFFA = arg3
    arg2 = dataTable.match
    arg3 = arg1.team
    arg2.team = arg3
    arg2 = dataTable.match
    arg2 = arg2.flags
    arg3 = arg1.allowCrouchShoot
    arg2.allowCrouchShoot = arg3
    arg2 = dataTable.match
    arg2 = arg2.flags
    arg3 = arg1.disableCoverPeek
    arg3 = true == arg3
    arg2.disableCoverPeek = arg3
  end
  arg2 = CMG
  arg2 = arg2.isSpectatingEvent
  arg2 = arg2()
  if arg2 then
    arg2 = arg1.clearSpectator
    if not arg2 then
      return
    end
  end
  arg2 = workValue34
  arg3 = arg1
  arg2(arg3)
  arg2 = arg1.clearSpectator
  if arg2 then
    arg2 = workValue32
    arg2()
    arg2 = arg1.weaponModel
    if arg2 then
      arg2 = arg1.weaponModel
      arg3 = Citizen
      arg3 = arg3.CreateThread
      function arg4()
        local workValue, playerPed, iterator, dataTable4, flag22, flag23, numberValue18
        workValue = 1
        playerPed = 50
        iterator = 1
        for dataTable4 = workValue, playerPed, iterator do
          flag22 = dataTable.preRoundLockActive
          if flag22 then
            flag22 = dataTable.combat
            flag22 = flag22.ctx
            if flag22 then
              flag22 = dataTable.combat
              flag22 = flag22.ctx
              flag22 = flag22.weaponModel
              flag23 = arg2
              if flag22 == flag23 then
                goto flow_label_19
              end
            end
          end
          return
          ::flow_label_19::
          flag22 = workValue29
          flag23 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          flag23 = flag23()
          numberValue18 = arg2
          flag22(flag23, numberValue18)
          flag22 = Wait
          flag23 = 0
          flag22(flag23)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg3(arg4)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "09e09c8df2".
eventRegistration4(textValue6, workValue44)
eventRegistration4 = RegisterNetEvent
textValue6 = "09b6fc624a"
-- Beginner: this function handles network event "09b6fc624a".
function workValue44(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.isSpectatingEvent
  arg2 = arg2()
  if arg2 then
    return
  end
  arg2 = TriggerServerEvent
  arg3 = "dea1e43c91"
  arg4 = arg1
  arg5 = workValue28
  arg5 = arg5()
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dea1e43c91".
  arg2(arg3, arg4, arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "09b6fc624a".
eventRegistration4(textValue6, workValue44)
eventRegistration4 = RegisterNetEvent
textValue6 = "48abfe6163"
-- Beginner: this function handles network event "48abfe6163".
function workValue44(arg1)
  local arg2, arg3
  arg2 = DoScreenFadeOut
  arg3 = 200
  arg2(arg3)
  arg2 = Wait
  arg3 = 250
  arg2(arg3)
  arg2 = workValue34
  arg3 = arg1
  arg2(arg3)
  arg2 = DoScreenFadeIn
  arg3 = 200
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "48abfe6163".
eventRegistration4(textValue6, workValue44)
eventRegistration4 = 31086
function textValue6(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7
  if not arg2 then
    arg4 = false
    return arg4
  end
  arg4 = arg2.hasInteriorCheck
  if arg4 then
    arg4 = GetInteriorFromEntity
    arg5 = arg1
    -- Beginner: result below is interiorId.
    arg4 = arg4(arg5)
    if 0 == arg4 then
      arg4 = true
      return arg4
    end
  end
  arg4 = arg3.bounds
  if not arg4 then
    arg4 = arg2.bounds
  end
  if arg4 then
    arg5 = arg4[1]
    if arg5 then
      arg5 = arg4[2]
      if arg5 then
        arg5 = IsEntityInArea
        arg6 = arg1
        arg7 = arg4[1]
        arg7 = arg7.x
        stringHelper = arg4[1]
        stringHelper = stringHelper.y
        workValue59 = arg4[1]
        workValue59 = workValue59.z
        stringHelper2 = arg4[2]
        stringHelper2 = stringHelper2.x
        flag = arg4[2]
        flag = flag.y
        flag3 = arg4[2]
        flag3 = flag3.z
        flag5 = false
        heading = true
        flag7 = 0
        arg5 = arg5(arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7)
        if not arg5 then
          arg5 = true
          return arg5
        end
      end
    end
  end
  arg5 = false
  return arg5
end
function workValue44()
  local arg1, arg2
  arg1 = dataTable.match
  if arg1 then
    arg1 = dataTable.match
    arg1 = arg1.oobWarningRunning
    if not arg1 then
      goto flow_label_9
    end
  end
  return
  ::flow_label_9::
  arg1 = dataTable.match
  arg1.oobWarningRunning = true
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function arg2()
    local workValue, playerPed, iterator, dataTable4, flag22, flag23, numberValue18, flag24, textValue8, flag25, flag2, flag4, flag6, numberValue2, flag8
    workValue = dataTable6.graceSeconds
    if not workValue then
      workValue = 3
    end
    playerPed = workValue * 1000
    iterator = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    iterator = iterator()
    dataTable4 = workValue
    flag22 = AnimpostfxPlay
    flag23 = "MP_race_crash"
    numberValue18 = playerPed
    flag24 = false
    flag22(flag23, numberValue18, flag24)
    flag22 = GetSoundId
    -- Beginner: result below is soundHandle.
    flag22 = flag22()
    flag23 = PlaySound
    numberValue18 = flag22
    flag24 = "OOB_Timer_Dynamic"
    textValue8 = "GTAO_FM_Events_Soundset"
    flag25 = false
    flag2 = false
    flag4 = false
    flag23(numberValue18, flag24, textValue8, flag25, flag2, flag4)
    while true do
      flag23 = dataTable.fighting
      if not flag23 then
        break
      end
      flag23 = dataTable.match
      if not flag23 then
        break
      end
      flag23 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      flag23 = flag23()
      numberValue18 = cmgCall.maps
      flag24 = dataTable.match
      flag24 = flag24.map
      numberValue18 = numberValue18[flag24]
      flag24 = dataTable.match
      flag24 = flag24.movement
      if not flag24 then
        flag24 = {}
      end
      textValue8 = IsEntityDead
      flag25 = flag23
      textValue8 = textValue8(flag25)
      if textValue8 then
        break
      end
      textValue8 = CMG
      textValue8 = textValue8.isSpectatingEvent
      textValue8 = textValue8()
      if textValue8 then
        break
      end
      textValue8 = CMG
      textValue8 = textValue8.isArenaSpectating
      textValue8 = textValue8()
      if textValue8 then
        break
      end
      textValue8 = textValue6
      flag25 = flag23
      flag2 = numberValue18
      flag4 = flag24
      textValue8 = textValue8(flag25, flag2, flag4)
      if not textValue8 then
        break
      end
      textValue8 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      textValue8 = textValue8()
      textValue8 = textValue8 - iterator
      if playerPed <= textValue8 then
        break
      end
      textValue8 = CMG
      textValue8 = textValue8.announceMpBigMsg
      flag25 = workValue3
      flag2 = "client.oobTitle"
      flag25 = flag25(flag2)
      flag2 = string
      flag2 = flag2.format
      flag4 = workValue3
      flag6 = "client.oobReturnMessage"
      flag4 = flag4(flag6)
      flag6 = dataTable4
      flag2 = flag2(flag4, flag6)
      flag4 = 1000
      textValue8(flag25, flag2, flag4)
      dataTable4 = dataTable4 - 1
    end
    flag23 = StopSound
    numberValue18 = flag22
    flag23(numberValue18)
    flag23 = ReleaseSoundId
    numberValue18 = flag22
    flag23(numberValue18)
    flag23 = AnimpostfxStopAll
    flag23()
    flag23 = dataTable.fighting
    if flag23 then
      flag23 = dataTable.match
      if flag23 then
        flag23 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        flag23 = flag23()
        numberValue18 = cmgCall.maps
        flag24 = dataTable.match
        flag24 = flag24.map
        numberValue18 = numberValue18[flag24]
        flag24 = dataTable.match
        flag24 = flag24.movement
        if not flag24 then
          flag24 = {}
        end
        textValue8 = IsEntityDead
        flag25 = flag23
        textValue8 = textValue8(flag25)
        if not textValue8 then
          textValue8 = CMG
          textValue8 = textValue8.isSpectatingEvent
          textValue8 = textValue8()
          if not textValue8 then
            textValue8 = CMG
            textValue8 = textValue8.isArenaSpectating
            textValue8 = textValue8()
            if not textValue8 then
              textValue8 = textValue6
              flag25 = flag23
              flag2 = numberValue18
              flag4 = flag24
              textValue8 = textValue8(flag25, flag2, flag4)
              if textValue8 then
                textValue8 = SetEntityHealth
                flag25 = flag23
                flag2 = 0
                textValue8(flag25, flag2)
            end
          end
        end
        else
          textValue8 = PlaySound
          flag25 = -1
          flag2 = "OOB_Cancel"
          flag4 = "GTAO_FM_Events_Soundset"
          flag6 = false
          numberValue2 = 0
          flag8 = false
          textValue8(flag25, flag2, flag4, flag6, numberValue2, flag8)
        end
      end
    end
    flag23 = dataTable.match
    if flag23 then
      flag23 = dataTable.match
      flag23.oobWarningRunning = false
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
function workValue45()
  local arg1, arg2
  arg1 = dataTable.match
  if arg1 then
    arg1 = dataTable.match
    arg1 = arg1.tickRunning
    if not arg1 then
      goto flow_label_9
    end
  end
  return
  ::flow_label_9::
  arg1 = dataTable.match
  arg1.tickRunning = true
  arg1 = workValue25
  arg1()
  arg1 = workValue24
  arg1()
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function arg2()
    local workValue, playerPed, iterator, dataTable4, flag22, flag23, numberValue18
    while true do
      workValue = dataTable.fighting
      if not workValue then
        break
      end
      workValue = dataTable.match
      if not workValue then
        break
      end
      workValue = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workValue = workValue()
      playerPed = dataTable.match
      playerPed = playerPed.movement
      if not playerPed then
        playerPed = {}
      end
      iterator = cmgCall.maps
      dataTable4 = dataTable.match
      dataTable4 = dataTable4.map
      iterator = iterator[dataTable4]
      dataTable4 = dataTable.match
      dataTable4 = dataTable4.flags
      if dataTable4 then
        dataTable4 = dataTable.match
        dataTable4 = dataTable4.flags
        dataTable4 = dataTable4.disableCoverPeek
        if dataTable4 then
          dataTable4 = SetPedConfigFlag
          flag22 = workValue
          flag23 = 427
          numberValue18 = false
          dataTable4(flag22, flag23, numberValue18)
      end
      else
        dataTable4 = playerPed.pedConfigFlag427
        if false ~= dataTable4 then
          dataTable4 = SetPedConfigFlag
          flag22 = workValue
          flag23 = 427
          numberValue18 = true
          dataTable4(flag22, flag23, numberValue18)
        end
      end
      if iterator then
        dataTable4 = dataTable.match
        dataTable4 = dataTable4.worldMode
        if not dataTable4 then
          dataTable4 = dataTable.match
          dataTable4 = dataTable4.oobWarningRunning
          if not dataTable4 then
            dataTable4 = IsEntityDead
            flag22 = workValue
            dataTable4 = dataTable4(flag22)
            if not dataTable4 then
              dataTable4 = CMG
              dataTable4 = dataTable4.isSpectatingEvent
              dataTable4 = dataTable4()
              if not dataTable4 then
                dataTable4 = CMG
                dataTable4 = dataTable4.isArenaSpectating
                dataTable4 = dataTable4()
                if not dataTable4 then
                  dataTable4 = textValue6
                  flag22 = workValue
                  flag23 = iterator
                  numberValue18 = playerPed
                  dataTable4 = dataTable4(flag22, flag23, numberValue18)
                  if dataTable4 then
                    dataTable4 = workValue44
                    dataTable4()
                  end
                end
              end
            end
          end
        end
      end
      dataTable4 = Wait
      flag22 = 250
      dataTable4(flag22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
numberValue19 = 500
function workValue46(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  if not arg2 then
    return
  end
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  if not arg1 then
    arg4 = {}
    arg5 = arg2.cx
    arg4.cx = arg5
    arg5 = arg2.cy
    arg4.cy = arg5
    arg5 = arg2.cx
    arg4.fromCx = arg5
    arg5 = arg2.cy
    arg4.fromCy = arg5
    arg5 = arg2.cx
    arg4.toCx = arg5
    arg5 = arg2.cy
    arg4.toCy = arg5
    arg4.snapAt = arg3
    return arg4
  end
  arg4 = hopOutCirclePos
  arg5 = arg1
  arg4, arg5 = arg4(arg5)
  arg6 = arg4
  arg1.fromCy = arg5
  arg1.fromCx = arg6
  arg6 = arg2.cx
  arg7 = arg2.cy
  arg1.toCy = arg7
  arg1.toCx = arg6
  arg6 = arg4
  arg1.cy = arg5
  arg1.cx = arg6
  arg1.snapAt = arg3
  return arg1
end
function workValue47(arg1)
  local arg2, arg3, arg4, arg5, arg6
  if not arg1 then
    arg2 = nil
    arg3 = nil
    return arg2, arg3
  end
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = arg1.snapAt
  arg2 = arg2 - arg3
  arg3 = numberValue19
  arg2 = arg2 / arg3
  if arg2 > 1.0 then
    arg2 = 1.0
  end
  if arg2 < 0.0 then
    arg2 = 0.0
  end
  arg3 = arg1.fromCx
  arg4 = arg1.toCx
  arg5 = arg1.fromCx
  arg4 = arg4 - arg5
  arg4 = arg4 * arg2
  arg3 = arg3 + arg4
  arg4 = arg1.fromCy
  arg5 = arg1.toCy
  arg6 = arg1.fromCy
  arg5 = arg5 - arg6
  arg5 = arg5 * arg2
  arg4 = arg4 + arg5
  return arg3, arg4
end
function workValue48(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = dataTable.match
  if arg2 then
    arg2 = dataTable.match
    arg2 = arg2.worldMode
    if arg2 then
      goto flow_label_9
    end
  end
  return
  ::flow_label_9::
  arg2 = dataTable.match
  arg2 = arg2.hopOutZone
  if not arg2 then
    arg3 = {}
    arg4 = arg1.radius
    if not arg4 then
      arg4 = 250.0
    end
    arg3.radius = arg4
    arg4 = arg1.oobDps
    if not arg4 then
      arg4 = 5
    end
    arg3.oobDps = arg4
    arg4 = arg1.grace
    if not arg4 then
      arg4 = 3
    end
    arg3.grace = arg4
    arg2 = arg3
    arg3 = dataTable.match
    arg3.hopOutZone = arg2
  end
  arg3 = arg1.radius
  if not arg3 then
    arg3 = arg2.radius
  end
  arg2.radius = arg3
  arg3 = arg1.oobDps
  if not arg3 then
    arg3 = arg2.oobDps
  end
  arg2.oobDps = arg3
  arg3 = arg1.grace
  if not arg3 then
    arg3 = arg2.grace
  end
  arg2.grace = arg3
  arg3 = arg1.phase
  arg2.phase = arg3
  arg3 = arg1.rendezvous
  arg2.rendezvous = arg3
  arg3 = workValue46
  arg4 = arg2.selfCircle
  arg5 = arg1.self
  arg3 = arg3(arg4, arg5)
  arg2.selfCircle = arg3
  arg3 = workValue46
  arg4 = arg2.oppCircle
  arg5 = arg1.opponent
  arg3 = arg3(arg4, arg5)
  arg2.oppCircle = arg3
end
function workValue49(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9, cmgCall4, numberValue5, numberValue7, flag12, flag14, flag16, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag17, flag18, flag19, flag20, workValue15, workValue17, flag21
  stringHelper = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stringHelper = stringHelper()
  workValue59 = GetEntityCoords
  stringHelper2 = stringHelper
  -- Beginner: result below is entityCoords.
  workValue59 = workValue59(stringHelper2)
  stringHelper2 = DrawMarker
  flag = 1
  flag3 = arg1
  flag5 = arg2
  heading = workValue59.z
  heading = heading - 40.0
  flag7 = 0.0
  flag9 = 0.0
  cmgCall4 = 0.0
  numberValue5 = 0.0
  numberValue7 = 0.0
  flag12 = 0.0
  flag14 = arg3 * 2.0
  flag16 = arg3 * 2.0
  numberValue8 = 140.0
  numberValue9 = arg4
  numberValue10 = arg5
  numberValue11 = arg6
  numberValue12 = arg7
  flag17 = false
  flag18 = false
  flag19 = 2
  flag20 = false
  workValue15 = nil
  workValue17 = nil
  flag21 = false
  stringHelper2(flag, flag3, flag5, heading, flag7, flag9, cmgCall4, numberValue5, numberValue7, flag12, flag14, flag16, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag17, flag18, flag19, flag20, workValue15, workValue17, flag21)
end
function workValue50()
  local arg1, arg2
  arg1 = dataTable.match
  if arg1 then
    arg1 = dataTable.match
    arg1 = arg1.hopOutZoneTickRunning
    if arg1 then
      return
    end
  end
  arg1 = dataTable.match
  if arg1 then
    arg1 = dataTable.match
    arg1.hopOutZoneTickRunning = true
  end
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function arg2()
    local workValue, playerPed, iterator, dataTable4, flag22, flag23, numberValue18, flag24, textValue8, flag25, flag2, flag4, flag6, numberValue2, flag8, numberValue3, numberValue4, flag10, flag11, flag13
    workValue = nil
    playerPed = 0
    iterator = 0
    while true do
      dataTable4 = dataTable.fighting
      if not dataTable4 then
        break
      end
      dataTable4 = dataTable.match
      if not dataTable4 then
        break
      end
      dataTable4 = dataTable.match
      dataTable4 = dataTable4.worldMode
      if not dataTable4 then
        break
      end
      dataTable4 = dataTable.match
      dataTable4 = dataTable4.hopOutZone
      if not dataTable4 then
        break
      end
      dataTable4 = dataTable.match
      dataTable4 = dataTable4.hopOutZone
      flag22 = workValue47
      flag23 = dataTable4.selfCircle
      flag22, flag23 = flag22(flag23)
      numberValue18 = workValue47
      flag24 = dataTable4.oppCircle
      numberValue18, flag24 = numberValue18(flag24)
      textValue8 = dataTable4.radius
      if not textValue8 then
        textValue8 = 250.0
      end
      if flag22 and flag23 then
        flag25 = workValue49
        flag2 = flag22
        flag4 = flag23
        flag6 = textValue8
        numberValue2 = 74
        flag8 = 144
        numberValue3 = 245
        numberValue4 = 45
        flag25(flag2, flag4, flag6, numberValue2, flag8, numberValue3, numberValue4)
      end
      if numberValue18 and flag24 then
        flag25 = workValue49
        flag2 = numberValue18
        flag4 = flag24
        flag6 = textValue8
        numberValue2 = 245
        flag8 = 74
        numberValue3 = 74
        numberValue4 = 30
        flag25(flag2, flag4, flag6, numberValue2, flag8, numberValue3, numberValue4)
      end
      flag25 = dataTable4.phase
      if "converge" == flag25 then
        flag25 = dataTable4.rendezvous
        if flag25 then
          flag25 = workValue49
          flag2 = dataTable4.rendezvous
          flag2 = flag2.x
          flag4 = dataTable4.rendezvous
          flag4 = flag4.y
          flag6 = textValue8 * 0.35
          numberValue2 = 255
          flag8 = 200
          numberValue3 = 60
          numberValue4 = 25
          flag25(flag2, flag4, flag6, numberValue2, flag8, numberValue3, numberValue4)
        end
      end
      flag25 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      flag25 = flag25()
      flag2 = GetEntityCoords
      flag4 = flag25
      -- Beginner: result below is entityCoords.
      flag2 = flag2(flag4)
      if flag22 and flag23 then
        flag4 = IsEntityDead
        flag6 = flag25
        flag4 = flag4(flag6)
        if not flag4 then
          flag4 = flag2.x
          flag4 = flag4 - flag22
          flag6 = flag2.y
          flag6 = flag6 - flag23
          numberValue2 = flag4 * flag4
          flag8 = flag6 * flag6
          numberValue2 = numberValue2 + flag8
          flag8 = textValue8 * textValue8
          numberValue2 = numberValue2 > flag8
          if numberValue2 then
            flag8 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            flag8 = flag8()
            if not workValue then
              workValue = flag8
            end
            numberValue3 = flag8 - iterator
            numberValue4 = 1500
            if numberValue3 > numberValue4 then
              iterator = flag8
              numberValue3 = BeginTextCommandDisplayHelp
              numberValue4 = "STRING"
              numberValue3(numberValue4)
              numberValue3 = AddTextComponentSubstringPlayerName
              numberValue4 = workValue3
              flag10 = "client.hopoutReturnZone"
              numberValue4, flag10, flag11, flag13 = numberValue4(flag10)
              numberValue3(numberValue4, flag10, flag11, flag13)
              numberValue3 = EndTextCommandDisplayHelp
              numberValue4 = 0
              flag10 = false
              flag11 = false
              flag13 = -1
              numberValue3(numberValue4, flag10, flag11, flag13)
            end
            numberValue3 = math
            numberValue3 = numberValue3.max
            numberValue4 = 0
            flag10 = dataTable4.grace
            if not flag10 then
              flag10 = 3
            end
            numberValue3 = numberValue3(numberValue4, flag10)
            numberValue3 = numberValue3 * 1000
            numberValue4 = flag8 - workValue
            if numberValue3 < numberValue4 then
              numberValue4 = flag8 - playerPed
              flag10 = 1000
              if numberValue4 >= flag10 then
                playerPed = flag8
                numberValue4 = ApplyDamageToPed
                flag10 = flag25
                flag11 = dataTable4.oobDps
                if not flag11 then
                  flag11 = 5
                end
                flag13 = false
                numberValue4(flag10, flag11, flag13)
              end
            end
          else
            workValue = nil
          end
        end
      end
      flag4 = Wait
      flag6 = 0
      flag4(flag6)
    end
    dataTable4 = dataTable.match
    if dataTable4 then
      dataTable4 = dataTable.match
      dataTable4.hopOutZoneTickRunning = false
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
eventRegistration5 = RegisterNetEvent
textValue7 = "dfc973aeb8"
-- Beginner: this function handles network event "dfc973aeb8".
function workValue52(arg1)
  local arg2, arg3
  arg2 = dataTable.match
  if arg2 then
    arg2 = dataTable.match
    arg2 = arg2.worldMode
    if arg2 then
      goto flow_label_9
    end
  end
  return
  ::flow_label_9::
  arg2 = workValue48
  arg3 = arg1
  arg2(arg3)
  arg2 = workValue50
  arg2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dfc973aeb8".
eventRegistration5(textValue7, workValue52)
function eventRegistration5()
  local arg1, arg2
  arg1 = dataTable.deathWatchRunning
  if arg1 then
    return
  end
  dataTable.deathWatchRunning = true
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function arg2()
    local workValue, playerPed, iterator, dataTable4, flag22, flag23, numberValue18, flag24, textValue8, flag25, flag2
    workValue = false
    while true do
      playerPed = dataTable.fighting
      if not playerPed then
        break
      end
      playerPed = dataTable.match
      if not playerPed then
        break
      end
      playerPed = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed = playerPed()
      iterator = IsEntityDead
      dataTable4 = playerPed
      iterator = iterator(dataTable4)
      if iterator and not workValue then
        workValue = true
        dataTable4 = dataTable.match
        if dataTable4 then
          dataTable4 = dataTable.match
          dataTable4.hopOutZone = nil
          dataTable4 = dataTable.match
          dataTable4.hopOutZoneTickRunning = false
        end
        dataTable4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        dataTable4 = dataTable4()
        flag22 = CMG
        flag22 = flag22.collectKillerInfo
        flag23 = dataTable4
        flag22(flag23)
        flag22 = CMG
        flag22 = flag22.getKillerInfo
        flag22 = flag22()
        flag23 = flag22.source
        if not flag23 then
          flag23 = -1
        end
        numberValue18 = flag22.wasHeadshot
        numberValue18 = true == numberValue18
        flag24 = flag22.weaponModel
        if flag24 then
          flag24 = GetHashKey
          textValue8 = flag22.weaponModel
          -- Beginner: result below is hash.
          flag24 = flag24(textValue8)
          if flag24 then
            goto flow_label_54
          end
        end
        flag24 = GetPedCauseOfDeath
        textValue8 = dataTable4
        flag24 = flag24(textValue8)
        ::flow_label_54::
        textValue8 = TriggerServerEvent
        flag25 = "69132690ee"
        flag2 = {}
        flag2.attackerSrc = flag23
        flag2.weapon = flag24
        flag2.headshot = numberValue18
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "69132690ee".
        textValue8(flag25, flag2)
      elseif not iterator then
        workValue = false
      end
      dataTable4 = Wait
      flag22 = 200
      dataTable4(flag22)
    end
    dataTable.deathWatchRunning = false
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
function textValue7(arg1)
  local arg2
  if 1 == arg1 then
    arg2 = cmgCall2
    if arg2 then
      goto flow_label_7
    end
  end
  arg2 = cmgCall3
  ::flow_label_7::
  return arg2
end
function workValue52()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper
  arg1 = pairs
  arg2 = dataTable.botPeds
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = DoesEntityExist
    stringHelper = arg6
    arg7 = arg7(stringHelper)
    if arg7 then
      arg7 = DeleteEntity
      stringHelper = arg6
      -- Beginner: Delete a GTA entity.
      arg7(stringHelper)
    end
    arg7 = dataTable.botPeds
    arg7[arg5] = nil
  end
  arg1 = {}
  dataTable.botReported = arg1
  dataTable.botWatchRunning = false
end
function workValue53(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5
  arg2 = dataTable.botPeds
  arg3 = arg1.key
  arg2 = arg2[arg3]
  if arg2 then
    arg3 = DoesEntityExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = IsEntityDead
      arg4 = arg2
      arg3 = arg3(arg4)
      if not arg3 then
        return
      end
      arg3 = DeleteEntity
      arg4 = arg2
      arg3(arg4)
    end
  end
  arg3 = arg1.spawn
  if not arg3 then
    return
  end
  arg4 = CMG
  arg4 = arg4.loadModel
  arg5 = arg1.model
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg4(arg5)
  arg4 = CreatePed
  arg5 = 4
  arg6 = arg1.model
  arg7 = arg3.x
  arg7 = arg7 + 0.0
  stringHelper = arg3.y
  stringHelper = stringHelper + 0.0
  workValue59 = arg3.z
  workValue59 = workValue59 - 1.0
  stringHelper2 = arg3.w
  if not stringHelper2 then
    stringHelper2 = 0.0
  end
  flag = false
  flag3 = true
  -- Beginner: result below is pedEntity.
  arg4 = arg4(arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3)
  arg5 = SetModelAsNoLongerNeeded
  arg6 = arg1.model
  arg5(arg6)
  arg5 = SetEntityAsMissionEntity
  arg6 = arg4
  arg7 = true
  stringHelper = true
  arg5(arg6, arg7, stringHelper)
  arg5 = arg1.health
  if not arg5 then
    arg5 = 200
  end
  arg6 = SetEntityMaxHealth
  arg7 = arg4
  stringHelper = arg5
  arg6(arg7, stringHelper)
  arg6 = SetEntityHealth
  arg7 = arg4
  stringHelper = arg5
  arg6(arg7, stringHelper)
  arg6 = SetPedArmour
  arg7 = arg4
  stringHelper = arg1.armour
  if not stringHelper then
    stringHelper = 0
  end
  arg6(arg7, stringHelper)
  arg6 = SetPedRelationshipGroupHash
  arg7 = arg4
  stringHelper = textValue7
  workValue59 = arg1.team
  stringHelper, workValue59, stringHelper2, flag, flag3, flag5 = stringHelper(workValue59)
  arg6(arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5)
  arg6 = SetPedAccuracy
  arg7 = arg4
  stringHelper = arg1.accuracy
  if not stringHelper then
    stringHelper = 35
  end
  arg6(arg7, stringHelper)
  arg6 = SetPedCombatAbility
  arg7 = arg4
  stringHelper = arg1.combatAbility
  if not stringHelper then
    stringHelper = 2
  end
  arg6(arg7, stringHelper)
  arg6 = SetPedCombatRange
  arg7 = arg4
  stringHelper = arg1.combatRange
  if not stringHelper then
    stringHelper = 2
  end
  arg6(arg7, stringHelper)
  arg6 = SetPedCombatMovement
  arg7 = arg4
  stringHelper = 2
  arg6(arg7, stringHelper)
  arg6 = SetPedFleeAttributes
  arg7 = arg4
  stringHelper = 0
  workValue59 = false
  arg6(arg7, stringHelper, workValue59)
  arg6 = SetPedCombatAttributes
  arg7 = arg4
  stringHelper = 46
  workValue59 = true
  arg6(arg7, stringHelper, workValue59)
  arg6 = SetPedCombatAttributes
  arg7 = arg4
  stringHelper = 5
  workValue59 = true
  arg6(arg7, stringHelper, workValue59)
  arg6 = SetPedCombatAttributes
  arg7 = arg4
  stringHelper = 0
  workValue59 = true
  arg6(arg7, stringHelper, workValue59)
  arg6 = SetBlockingOfNonTemporaryEvents
  arg7 = arg4
  stringHelper = true
  arg6(arg7, stringHelper)
  arg6 = SetPedDropsWeaponsWhenDead
  arg7 = arg4
  stringHelper = false
  arg6(arg7, stringHelper)
  arg6 = SetPedSuffersCriticalHits
  arg7 = arg4
  stringHelper = true
  arg6(arg7, stringHelper)
  arg6 = GetHashKey
  arg7 = arg1.weapon
  -- Beginner: result below is hash.
  arg6 = arg6(arg7)
  arg7 = RequestWeaponAsset
  stringHelper = arg6
  workValue59 = 31
  stringHelper2 = 0
  arg7(stringHelper, workValue59, stringHelper2)
  arg7 = 0
  while true do
    stringHelper = HasWeaponAssetLoaded
    workValue59 = arg6
    stringHelper = stringHelper(workValue59)
    if stringHelper then
      break
    end
    stringHelper = 200
    if not (arg7 < stringHelper) then
      break
    end
    stringHelper = Wait
    workValue59 = 0
    stringHelper(workValue59)
    arg7 = arg7 + 1
  end
  stringHelper = GiveWeaponToPed
  workValue59 = arg4
  stringHelper2 = arg6
  flag = arg1.ammo
  if not flag then
    flag = 250
  end
  flag3 = false
  flag5 = true
  stringHelper(workValue59, stringHelper2, flag, flag3, flag5)
  stringHelper = SetCurrentPedWeapon
  workValue59 = arg4
  stringHelper2 = arg6
  flag = true
  stringHelper(workValue59, stringHelper2, flag)
  stringHelper = SetPedCanSwitchWeapon
  workValue59 = arg4
  stringHelper2 = true
  stringHelper(workValue59, stringHelper2)
  stringHelper = SetPedInfiniteAmmo
  workValue59 = arg4
  stringHelper2 = true
  flag = arg6
  stringHelper(workValue59, stringHelper2, flag)
  stringHelper = SetPedInfiniteAmmoClip
  workValue59 = arg4
  stringHelper2 = true
  stringHelper(workValue59, stringHelper2)
  stringHelper = dataTable.botPeds
  workValue59 = arg1.key
  stringHelper[workValue59] = arg4
  stringHelper = dataTable.botReported
  workValue59 = arg1.key
  stringHelper[workValue59] = nil
end
function workValue54()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper
  arg1 = dataTable.aiBots
  if not arg1 then
    return
  end
  arg1 = ipairs
  arg2 = dataTable.aiBots
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = workValue53
    stringHelper = arg6
    arg7(stringHelper)
  end
end
function workValue55()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = pairs
  arg3 = dataTable.botPeds
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    stringHelper = DoesEntityExist
    workValue59 = arg7
    stringHelper = stringHelper(workValue59)
    if stringHelper then
      stringHelper = IsEntityDead
      workValue59 = arg7
      stringHelper = stringHelper(workValue59)
      if not stringHelper then
        stringHelper = TaskCombatPed
        workValue59 = arg7
        stringHelper2 = arg1
        flag = 0
        flag3 = 16
        stringHelper(workValue59, stringHelper2, flag, flag3)
      end
    end
  end
end
function workValue56()
  local arg1, arg2
  arg1 = dataTable.botWatchRunning
  if arg1 then
    return
  end
  dataTable.botWatchRunning = true
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function arg2()
    local workValue, playerPed, iterator, dataTable4, flag22, flag23, numberValue18, flag24, textValue8, flag25, flag2, flag4, flag6
    while true do
      workValue = dataTable.fighting
      if not workValue then
        break
      end
      workValue = dataTable.match
      if not workValue then
        break
      end
      workValue = dataTable.aiBots
      if not workValue then
        break
      end
      workValue = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workValue = workValue()
      playerPed = pairs
      iterator = dataTable.botPeds
      playerPed, iterator, dataTable4, flag22 = playerPed(iterator)
      for flag23, numberValue18 in playerPed, iterator, dataTable4, flag22 do
        flag24 = DoesEntityExist
        textValue8 = numberValue18
        flag24 = flag24(textValue8)
        if flag24 then
          flag24 = IsEntityDead
          textValue8 = numberValue18
          flag24 = flag24(textValue8)
          if flag24 then
            flag24 = dataTable.botReported
            flag24 = flag24[flag23]
            if not flag24 then
              flag24 = dataTable.botReported
              flag24[flag23] = true
              flag24 = GetPedLastDamageBone
              textValue8 = numberValue18
              flag24, textValue8 = flag24(textValue8)
              flag25 = TriggerServerEvent
              flag2 = "8db23098e2"
              flag4 = {}
              flag6 = dataTable.match
              flag6 = flag6.id
              flag4.matchId = flag6
              flag4.botKey = flag23
              flag6 = eventRegistration4
              flag6 = textValue8 == flag6
              flag4.headshot = flag6
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8db23098e2".
              flag25(flag2, flag4)
            end
          else
            flag24 = IsPedInCombat
            textValue8 = numberValue18
            flag25 = workValue
            flag24 = flag24(textValue8, flag25)
            if not flag24 then
              flag24 = TaskCombatPed
              textValue8 = numberValue18
              flag25 = workValue
              flag2 = 0
              flag4 = 16
              flag24(textValue8, flag25, flag2, flag4)
            end
          end
        end
      end
      playerPed = Wait
      iterator = 400
      playerPed(iterator)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
function workValue57()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag
  arg1 = dataTable.match
  if arg1 then
    arg1 = dataTable.match
    arg1 = arg1.isFFA
    if not arg1 then
      goto flow_label_9
    end
  end
  return
  ::flow_label_9::
  arg1 = CMG
  arg1 = arg1.setPlayerNameDistance
  arg2 = 50.0
  arg1(arg2)
  arg1 = pairs
  arg2 = dataTable.match
  arg2 = arg2.players
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = arg6.team
    stringHelper = dataTable.match
    stringHelper = stringHelper.team
    if arg7 == stringHelper then
      arg7 = GetPlayerServerId
      stringHelper = PlayerId
      stringHelper, workValue59, stringHelper2, flag = stringHelper()
      -- Beginner: result below is serverId.
      arg7 = arg7(stringHelper, workValue59, stringHelper2, flag)
      if arg5 ~= arg7 then
        arg7 = GetPlayerFromServerId
        stringHelper = arg5
        -- Beginner: result below is playerIndex.
        arg7 = arg7(stringHelper)
        if -1 ~= arg7 then
          stringHelper = CMG
          stringHelper = stringHelper.setGameTagNameOverride
          workValue59 = arg5
          stringHelper2 = CMG
          stringHelper2 = stringHelper2.getPlayerName
          flag = arg7
          stringHelper2, flag = stringHelper2(flag)
          stringHelper(workValue59, stringHelper2, flag)
        end
      end
    end
  end
end
function workValue58()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9, cmgCall4, numberValue5, numberValue7, flag12, flag14
  arg1 = dataTable.match
  if not arg1 then
    arg1 = false
    return arg1
  end
  arg1 = dataTable.match
  arg1 = arg1.roundNo
  arg2 = dataTable.match
  arg2 = arg2.bestOf
  arg3 = CMG
  arg3 = arg3.announceMpSmallMsg
  arg4 = workValue3
  arg5 = "client.matchRoundTitle"
  arg6 = arg1
  arg7 = arg2
  arg4 = arg4(arg5, arg6, arg7)
  arg5 = ""
  arg6 = 2
  arg7 = numberValue14
  arg3(arg4, arg5, arg6, arg7)
  arg3 = Scaleform
  arg4 = "COUNTDOWN"
  arg3 = arg3(arg4)
  arg4 = true
  arg5 = Citizen
  arg5 = arg5.CreateThread
  function arg6()
    local workValue, playerPed
    while true do
      workValue = arg4
      if not workValue then
        break
      end
      workValue = arg3.Render2D
      workValue()
      workValue = Wait
      playerPed = 0
      workValue(playerPed)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg5(arg6)
  function arg5()
    local workValue, playerPed
    workValue = false
    arg4 = workValue
    workValue = false
    return workValue
  end
  arg6 = 3
  arg7 = 1
  stringHelper = -1
  for workValue59 = arg6, arg7, stringHelper do
    stringHelper2 = dataTable.match
    if stringHelper2 then
      stringHelper2 = dataTable.fighting
      if stringHelper2 then
        goto flow_label_43
      end
    end
    stringHelper2 = arg5
    return stringHelper2()
    ::flow_label_43::
    stringHelper2 = 255
    flag = 90
    flag3 = 90
    if 2 == workValue59 then
      flag5 = 255
      heading = 170
      flag3 = 60
      flag = heading
      stringHelper2 = flag5
    elseif 1 == workValue59 then
      flag5 = 255
      heading = 220
      flag3 = 80
      flag = heading
      stringHelper2 = flag5
    end
    flag5 = arg3.RunFunction
    heading = "SET_MESSAGE"
    flag7 = {}
    flag9 = tostring
    cmgCall4 = workValue59
    flag9 = flag9(cmgCall4)
    cmgCall4 = stringHelper2
    numberValue5 = flag
    numberValue7 = flag3
    flag12 = true
    flag14 = false
    flag7[1] = flag9
    flag7[2] = cmgCall4
    flag7[3] = numberValue5
    flag7[4] = numberValue7
    flag7[5] = flag12
    flag7[6] = flag14
    flag5(heading, flag7)
    flag5 = PlaySoundFrontend
    heading = -1
    flag7 = "3_2_1"
    flag9 = "HUD_MINI_GAME_SOUNDSET"
    cmgCall4 = true
    flag5(heading, flag7, flag9, cmgCall4)
    flag5 = Wait
    heading = numberValue13
    flag5(heading)
  end
  arg6 = dataTable.match
  if arg6 then
    arg6 = dataTable.fighting
    if arg6 then
      goto flow_label_94
    end
  end
  arg6 = arg5
  return arg6()
  ::flow_label_94::
  arg6 = arg3.RunFunction
  arg7 = "SET_MESSAGE"
  stringHelper = {}
  workValue59 = "CNTDWN_GO"
  stringHelper2 = 0
  flag = 255
  flag3 = 0
  flag5 = true
  heading = false
  stringHelper[1] = workValue59
  stringHelper[2] = stringHelper2
  stringHelper[3] = flag
  stringHelper[4] = flag3
  stringHelper[5] = flag5
  stringHelper[6] = heading
  arg6(arg7, stringHelper)
  arg6 = PlaySoundFrontend
  arg7 = -1
  stringHelper = "Go"
  workValue59 = "DLC_EXEC_ARC_MAC_SOUNDS"
  stringHelper2 = true
  arg6(arg7, stringHelper, workValue59, stringHelper2)
  arg6 = workValue33
  arg6()
  arg6 = Citizen
  arg6 = arg6.SetTimeout
  arg7 = numberValue15
  function stringHelper()
    local workValue, playerPed
    workValue = false
    arg4 = workValue
  end
  arg6(arg7, stringHelper)
  arg6 = true
  return arg6
end
eventRegistration6 = RegisterNetEvent
eventRegistration7 = "2549659225"
-- Beginner: this function handles network event "2549659225".
function textValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = dataTable.match
  if not arg2 then
    return
  end
  arg2 = dataTable.match
  arg3 = arg1.roundNo
  arg2.roundNo = arg3
  arg2 = dataTable.match
  arg3 = arg1.startTime
  arg2.startTime = arg3
  arg2 = dataTable.match
  arg3 = arg1.team
  arg2.team = arg3
  arg2 = dataTable.match
  arg2.roundOver = false
  arg2 = dataTable.match
  arg2 = arg2.worldMode
  if arg2 then
    arg2 = dataTable.match
    arg2.hopOutZone = nil
    arg2 = dataTable.match
    arg2.hopOutZoneTickRunning = false
  end
  arg2 = workValue32
  arg2()
  arg2 = dataTable.match
  arg2 = arg2.worldMode
  if arg2 then
    arg2 = dataTable.match
    arg2 = arg2.vehicleModel
    if arg2 then
      arg2 = workValue42
      arg3 = dataTable.match
      arg3 = arg3.vehicleModel
      arg2(arg3)
    end
  end
  arg2 = DoScreenFadeIn
  arg3 = 300
  arg2(arg3)
  arg2 = workValue45
  arg2()
  arg2 = eventRegistration5
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg2()
  arg2 = Citizen
  arg2 = arg2.SetTimeout
  arg3 = 1500
  arg4 = workValue57
  arg2(arg3, arg4)
  arg2 = dataTable.aiBots
  if arg2 then
    arg2 = workValue54
    arg2()
  end
  arg2 = workValue58
  arg2 = arg2()
  if arg2 then
    arg2 = dataTable.match
    if arg2 then
      arg2 = dataTable.fighting
      if arg2 then
        goto flow_label_66
      end
    end
  end
  return
  ::flow_label_66::
  arg2 = dataTable.match
  arg2 = arg2.worldMode
  if arg2 then
    arg2 = CMG
    arg2 = arg2.announceMpSmallMsg
    arg3 = workValue3
    arg4 = "client.hopoutDriveTitle"
    arg3 = arg3(arg4)
    arg4 = workValue3
    arg5 = "client.hopoutDriveSubtitle"
    arg4 = arg4(arg5)
    arg5 = 2
    arg6 = 7000
    arg2(arg3, arg4, arg5, arg6)
  end
  arg2 = dataTable.aiBots
  if arg2 then
    arg2 = workValue55
    arg2()
    arg2 = workValue56
    arg2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2549659225".
eventRegistration6(eventRegistration7, textValue9)
eventRegistration6 = RegisterNetEvent
eventRegistration7 = "a45805e6ee"
-- Beginner: this function handles network event "a45805e6ee".
function textValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag
  arg2 = dataTable.match
  if arg2 then
    arg2 = dataTable.match
    arg3 = arg1.score
    arg2.score = arg3
    arg2 = dataTable.match
    arg3 = arg1.bestOf
    arg2.bestOf = arg3
    arg2 = dataTable.match
    arg3 = arg1.roundNo
    arg2.roundNo = arg3
    arg2 = dataTable.match
    arg3 = arg1.startTime
    arg2.startTime = arg3
    arg2 = dataTable.match
    arg3 = arg1.roundTime
    arg2.roundTime = arg3
    arg2 = dataTable.match
    arg3 = arg1.spectatorCount
    if not arg3 then
      arg3 = 0
    end
    arg2.spectatorCount = arg3
    arg2 = arg1.players
    if arg2 then
      arg2 = ipairs
      arg3 = arg1.players
      arg2, arg3, arg4, arg5 = arg2(arg3)
      for arg6, arg7 in arg2, arg3, arg4, arg5 do
        stringHelper = arg7.source
        if stringHelper then
          stringHelper = dataTable.match
          stringHelper = stringHelper.players
          workValue59 = arg7.source
          stringHelper = stringHelper[workValue59]
          if stringHelper then
            stringHelper = dataTable.match
            stringHelper = stringHelper.players
            workValue59 = arg7.source
            stringHelper = stringHelper[workValue59]
            workValue59 = arg7.alive
            workValue59 = false ~= workValue59
            stringHelper.alive = workValue59
          end
        end
      end
    end
  end
  arg2 = dataTable.spectate
  if arg2 then
    arg2 = dataTable.spectate
    arg2 = arg2.matchId
    arg3 = arg1.matchId
    if arg2 == arg3 then
      arg2 = arg1.players
      if arg2 then
        arg2 = {}
        arg3 = ipairs
        arg4 = arg1.players
        arg3, arg4, arg5, arg6 = arg3(arg4)
        for arg7, stringHelper in arg3, arg4, arg5, arg6 do
          workValue59 = stringHelper.alive
          if false ~= workValue59 then
            workValue59 = stringHelper.source
            if workValue59 then
              workValue59 = #arg2
              workValue59 = workValue59 + 1
              stringHelper2 = {}
              flag = stringHelper.source
              stringHelper2.source = flag
              flag = stringHelper.userId
              stringHelper2.userId = flag
              flag = stringHelper.team
              stringHelper2.team = flag
              flag = stringHelper.name
              stringHelper2.name = flag
              stringHelper2.alive = true
              arg2[workValue59] = stringHelper2
            end
          end
        end
        arg3 = dataTable.spectate
        arg3.players = arg2
        arg3 = workValue10
        arg4 = "ARENA_SPECTATE_STATE"
        arg5 = {}
        arg5.active = true
        arg6 = dataTable.spectate
        arg6 = arg6.matchId
        arg5.matchId = arg6
        arg5.players = arg2
        arg5.hud = arg1
        arg3(arg4, arg5)
      end
    end
  end
  arg2 = workValue10
  arg3 = "ARENA_MATCH_HUD"
  arg4 = arg1
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a45805e6ee".
eventRegistration6(eventRegistration7, textValue9)
eventRegistration6 = RegisterNetEvent
eventRegistration7 = "a30a685e07"
-- Beginner: this function handles network event "a30a685e07".
function textValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" == arg2 then
    arg2 = arg1.winnerTeam
    if arg2 then
      arg2 = tonumber
      arg3 = arg1.winnerTeam
      arg2 = arg2(arg3)
      arg1.winnerTeam = arg2
    end
    arg2 = arg1.players
    if arg2 then
      arg2 = ipairs
      arg3 = arg1.players
      arg2, arg3, arg4, arg5 = arg2(arg3)
      for arg6, arg7 in arg2, arg3, arg4, arg5 do
        stringHelper = arg7.team
        if stringHelper then
          stringHelper = tonumber
          workValue59 = arg7.team
          stringHelper = stringHelper(workValue59)
          arg7.team = stringHelper
        end
      end
    end
  end
  arg2 = workValue10
  arg3 = "ARENA_MVP"
  arg4 = arg1
  arg2(arg3, arg4)
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" == arg2 then
    arg2 = arg1.tournamentId
    if arg2 then
      arg2 = arg1.tournamentId
      dataTable.pendingTournamentNav = arg2
  end
  else
    dataTable.pendingTournamentNav = nil
  end
  arg2 = dataTable.mvpOpen
  if arg2 then
    return
  end
  dataTable.mvpOpen = true
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg2 = arg2 + 600
  arg3 = Citizen
  arg3 = arg3.CreateThread
  function arg4()
    local workValue, playerPed, iterator, dataTable4
    while true do
      workValue = dataTable.mvpOpen
      if workValue then
        workValue = DisableControlAction
        playerPed = 0
        iterator = 199
        dataTable4 = true
        workValue(playerPed, iterator, dataTable4)
        workValue = DisableControlAction
        playerPed = 0
        iterator = 200
        dataTable4 = true
        workValue(playerPed, iterator, dataTable4)
        workValue = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        workValue = workValue()
        playerPed = arg2
        if workValue >= playerPed then
          workValue = IsControlJustReleased
          playerPed = 0
          iterator = 202
          workValue = workValue(playerPed, iterator)
          if workValue then
            dataTable.mvpOpen = false
            workValue = workValue10
            playerPed = "ARENA_MVP"
            iterator = false
            workValue(playerPed, iterator)
            workValue = dataTable.pendingTournamentNav
            if workValue then
              workValue = dataTable.pendingTournamentNav
              dataTable.pendingTournamentNav = nil
              playerPed = workValue20
              playerPed()
              playerPed = workValue10
              iterator = "ARENA_OPEN_TOURNAMENT"
              dataTable4 = {}
              dataTable4.id = workValue
              playerPed(iterator, dataTable4)
            end
            break
          end
        end
      end
      workValue = Wait
      playerPed = 0
      workValue(playerPed)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg3(arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a30a685e07".
eventRegistration6(eventRegistration7, textValue9)
function eventRegistration6()
  local arg1, arg2, arg3
  arg1 = workValue33
  arg1()
  arg1 = dataTable.fighting
  if arg1 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    dataTable.lastWagerEndedAt = arg1
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = ClearEntityLastDamageEntity
    arg3 = arg1
    arg2(arg3)
    arg2 = ClearEntityLastWeaponDamage
    arg3 = arg1
    arg2(arg3)
  end
  dataTable.fighting = false
  arg1 = workValue7
  arg1()
  arg1 = workValue8
  arg1()
  arg1 = workValue23
  arg1()
  arg1 = workValue52
  arg1()
  dataTable.aiBots = nil
  arg1 = workValue27
  arg1()
  arg1 = CMG
  arg1 = arg1.setSwitchGunEnabled
  arg2 = true
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.clearAllGameTagNameOverrides
  arg1()
  arg1 = CMG
  arg1 = arg1.setPlayerNameDistance
  arg2 = -1
  arg1(arg2)
  arg1 = SetPlayerHealthRechargeMultiplier
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  arg3 = 1.0
  arg1(arg2, arg3)
  arg1 = SetPlayerWeaponDamageModifier
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  arg3 = 1.0
  arg1(arg2, arg3)
  arg1 = SetPlayerCanUseCover
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  arg3 = true
  arg1(arg2, arg3)
  arg1 = SetPedPathCanUseLadders
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = true
  arg1(arg2, arg3)
  arg1 = dataTable.combat
  arg1 = arg1.ctx
  if arg1 then
    arg1 = dataTable.combat
    arg1 = arg1.ctx
    arg1 = arg1.weaponModel
    if arg1 then
      arg1 = workValue30
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = dataTable.combat
      arg3 = arg3.ctx
      arg3 = arg3.weaponModel
      arg1(arg2, arg3)
    end
  end
  dataTable.match = nil
  arg1 = dataTable.combat
  arg1.ctx = nil
  arg1 = dataTable.combat
  arg1.fingerprint = nil
  arg1 = workValue10
  arg2 = "ARENA_MATCH_HUD"
  arg3 = false
  arg1(arg2, arg3)
  arg1 = workValue9
  arg1()
end
eventRegistration7 = RegisterNetEvent
textValue9 = "85f795c68f"
-- Beginner: this function handles network event "85f795c68f".
function textValue10(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading
  dataTable.awaitingHubReturn = true
  arg2 = arg1 or arg2
  if arg1 then
    arg2 = arg1.won
  end
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = dataTable.combat
  arg4 = arg4.ctx
  if arg4 then
    arg4 = dataTable.combat
    arg4 = arg4.ctx
    arg4 = arg4.spawn
  end
  arg5 = CMG
  arg5 = arg5.isSpectatingEvent
  arg5 = arg5()
  if not arg5 then
    arg5 = IsEntityDead
    arg6 = arg3
    arg5 = arg5(arg6)
  end
  if arg5 and arg4 then
    arg6 = arg4.x
    if arg6 then
      arg6 = IsEntityDead
      arg7 = arg3
      arg6 = arg6(arg7)
      if arg6 then
        arg6 = NetworkResurrectLocalPlayer
        arg7 = arg4.x
        stringHelper = arg4.y
        workValue59 = arg4.z
        stringHelper2 = arg4.w
        if not stringHelper2 then
          stringHelper2 = 0.0
        end
        flag = true
        flag3 = false
        arg6(arg7, stringHelper, workValue59, stringHelper2, flag, flag3)
        arg6 = SetPlayerInvincible
        arg7 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        arg7 = arg7()
        stringHelper = false
        arg6(arg7, stringHelper)
        arg6 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg6 = arg6()
        arg3 = arg6
      end
      arg6 = SetEntityCoords
      arg7 = arg3
      stringHelper = arg4.x
      workValue59 = arg4.y
      stringHelper2 = arg4.z
      flag = false
      flag3 = false
      flag5 = false
      heading = false
      -- Beginner: Move/teleport an entity to new coordinates.
      arg6(arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading)
      arg6 = SetEntityHeading
      arg7 = arg3
      stringHelper = arg4.w
      if not stringHelper then
        stringHelper = 0.0
      end
      -- Beginner: Change the direction an entity is facing.
      arg6(arg7, stringHelper)
  end
  else
    arg6 = IsEntityDead
    arg7 = arg3
    arg6 = arg6(arg7)
    if arg6 then
      arg6 = GetEntityCoords
      arg7 = arg3
      -- Beginner: result below is entityCoords.
      arg6 = arg6(arg7)
      arg7 = NetworkResurrectLocalPlayer
      stringHelper = arg6.x
      workValue59 = arg6.y
      stringHelper2 = arg6.z
      flag = GetEntityHeading
      flag3 = arg3
      -- Beginner: result below is heading.
      flag = flag(flag3)
      flag3 = true
      flag5 = false
      arg7(stringHelper, workValue59, stringHelper2, flag, flag3, flag5)
      arg7 = SetPlayerInvincible
      stringHelper = PlayerId
      -- Beginner: result below is localPlayerIndex.
      stringHelper = stringHelper()
      workValue59 = false
      arg7(stringHelper, workValue59)
      arg7 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg7 = arg7()
      arg3 = arg7
    end
  end
  arg6 = CMG
  arg6 = arg6.setEventSpectatorMode
  arg7 = false
  arg6(arg7)
  arg6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg6 = arg6()
  arg3 = arg6
  if arg5 and arg4 then
    arg6 = arg4.x
    if arg6 then
      arg6 = SetEntityCoords
      arg7 = arg3
      stringHelper = arg4.x
      workValue59 = arg4.y
      stringHelper2 = arg4.z
      flag = false
      flag3 = false
      flag5 = false
      heading = false
      -- Beginner: Move/teleport an entity to new coordinates.
      arg6(arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading)
      arg6 = SetEntityHeading
      arg7 = arg3
      stringHelper = arg4.w
      if not stringHelper then
        stringHelper = 0.0
      end
      -- Beginner: Change the direction an entity is facing.
      arg6(arg7, stringHelper)
    end
  end
  if not arg2 then
    arg6 = FreezeEntityPosition
    arg7 = arg3
    stringHelper = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg6(arg7, stringHelper)
  end
  arg6 = CMG
  arg6 = arg6.setPlayerCombatTimer
  arg7 = 0
  stringHelper = false
  arg6(arg7, stringHelper)
  arg6 = eventRegistration6
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg6()
  arg6 = arg1.tournamentFinal
  if not arg6 then
    if arg2 then
      arg6 = CMG
      arg6 = arg6.announceMpSmallMsg
      arg7 = "WAGER WON"
      stringHelper = ""
      workValue59 = 18
      stringHelper2 = 3000
      arg6(arg7, stringHelper, workValue59, stringHelper2)
    else
      arg6 = CMG
      arg6 = arg6.announceMpSmallMsg
      arg7 = "WAGER LOST"
      stringHelper = ""
      workValue59 = 6
      stringHelper2 = 3000
      arg6(arg7, stringHelper, workValue59, stringHelper2)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "85f795c68f".
eventRegistration7(textValue9, textValue10)
eventRegistration7 = RegisterNetEvent
textValue9 = "e0b1d03ed3"
-- Beginner: this function handles network event "e0b1d03ed3".
function textValue10()
  local arg1, arg2
  arg1 = DoScreenFadeOut
  arg2 = 400
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e0b1d03ed3".
eventRegistration7(textValue9, textValue10)
eventRegistration7 = RegisterNetEvent
textValue9 = "b5322c5402"
-- Beginner: this function handles network event "b5322c5402".
function textValue10(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = dataTable.mvpOpen
  if arg3 then
    dataTable.mvpOpen = false
    arg3 = workValue10
    arg4 = "ARENA_MVP"
    arg5 = false
    arg3(arg4, arg5)
  end
  arg3 = FreezeEntityPosition
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, arg5)
  arg3 = Citizen
  arg3 = arg3.CreateThread
  function arg4()
    local workValue, playerPed, iterator
    workValue = CMG
    workValue = workValue.podiumLeaderboard
    playerPed = arg1
    if not playerPed then
      playerPed = {}
    end
    iterator = arg2
    if not iterator then
      iterator = {}
    end
    workValue(playerPed, iterator)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg3(arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b5322c5402".
eventRegistration7(textValue9, textValue10)
eventRegistration7 = RegisterNetEvent
textValue9 = "4f8a1ad150"
-- Beginner: this function handles network event "4f8a1ad150".
function textValue10(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2
  arg2 = CMG
  arg2 = arg2.setPlayerCombatTimer
  arg3 = 0
  arg4 = false
  arg2(arg3, arg4)
  dataTable.awaitingHubReturn = false
  arg2 = textValue5
  arg3 = arg1
  arg2(arg3)
  arg2 = eventRegistration3
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg2()
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = IsEntityDead
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = GetEntityCoords
    arg4 = arg2
    -- Beginner: result below is entityCoords.
    arg3 = arg3(arg4)
    arg4 = NetworkResurrectLocalPlayer
    arg5 = arg3.x
    arg6 = arg3.y
    arg7 = arg3.z
    stringHelper = GetEntityHeading
    workValue59 = arg2
    -- Beginner: result below is heading.
    stringHelper = stringHelper(workValue59)
    workValue59 = true
    stringHelper2 = false
    arg4(arg5, arg6, arg7, stringHelper, workValue59, stringHelper2)
    arg4 = SetPlayerInvincible
    arg5 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    arg5 = arg5()
    arg6 = false
    arg4(arg5, arg6)
  end
  arg3 = workValue37
  arg3()
  arg3 = Wait
  arg4 = 200
  arg3(arg4)
  arg3 = DoScreenFadeIn
  arg4 = 400
  arg3(arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4f8a1ad150".
eventRegistration7(textValue9, textValue10)
function eventRegistration7(arg1)
  local arg2, arg3, arg4
  dataTable.spectate = nil
  arg2 = CMG
  arg2 = arg2.setEventSpectatorMode
  arg3 = false
  arg2(arg3)
  arg2 = workValue10
  arg3 = "ARENA_SPECTATE_STATE"
  arg4 = {}
  arg4.active = false
  arg2(arg3, arg4)
  arg2 = workValue10
  arg3 = "ARENA_MATCH_HUD"
  arg4 = false
  arg2(arg3, arg4)
  arg2 = FreezeEntityPosition
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, arg4)
  arg2 = workValue37
  arg2()
  if false ~= arg1 then
    dataTable.mvpOpen = false
    arg2 = workValue10
    arg3 = "ARENA_MVP"
    arg4 = false
    arg2(arg3, arg4)
  end
  arg2 = workValue9
  arg2()
end
textValue9 = RegisterNetEvent
textValue10 = "37c3f140a7"
-- Beginner: this function handles network event "37c3f140a7".
function workValue60(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3
  dataTable.spectate = arg1
  arg2 = workValue9
  arg2()
  arg2 = workValue21
  arg2()
  arg2 = DoScreenFadeOut
  arg3 = 400
  arg2(arg3)
  arg2 = Wait
  arg3 = 500
  arg2(arg3)
  arg2 = eventRegistration3
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg2()
  arg2 = workValue40
  arg3 = arg1.ipls
  arg2(arg3)
  arg2 = workValue41
  arg3 = arg1.propLayout
  arg2(arg3)
  arg2 = arg1.spawn
  if arg2 then
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    arg4 = SetEntityCoords
    arg5 = arg3
    arg6 = arg2.x
    arg7 = arg2.y
    stringHelper = arg2.z
    workValue59 = workValue51
    stringHelper = stringHelper - workValue59
    workValue59 = false
    stringHelper2 = false
    flag = false
    flag3 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    arg4(arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3)
    arg4 = SetEntityHeading
    arg5 = arg3
    arg6 = arg2.w
    if not arg6 then
      arg6 = 0.0
    end
    -- Beginner: Change the direction an entity is facing.
    arg4(arg5, arg6)
  end
  arg3 = CMG
  arg3 = arg3.setEventSpectatorMode
  arg4 = true
  arg3(arg4)
  arg3 = Wait
  arg4 = 300
  arg3(arg4)
  arg3 = DoScreenFadeIn
  arg4 = 400
  arg3(arg4)
  arg3 = workValue10
  arg4 = "ARENA_SPECTATE_STATE"
  arg5 = {}
  arg5.active = true
  arg6 = arg1.matchId
  arg5.matchId = arg6
  arg6 = arg1.players
  arg5.players = arg6
  arg6 = arg1.hud
  arg5.hud = arg6
  arg3(arg4, arg5)
  arg3 = Citizen
  arg3 = arg3.CreateThread
  function arg4()
    local workValue, playerPed, iterator, dataTable4, flag22, flag23, numberValue18
    workValue = 0
    while true do
      playerPed = dataTable.spectate
      if playerPed then
        playerPed = DisableControlAction
        iterator = 0
        dataTable4 = 199
        flag22 = true
        playerPed(iterator, dataTable4, flag22)
        playerPed = DisableControlAction
        iterator = 0
        dataTable4 = 200
        flag22 = true
        playerPed(iterator, dataTable4, flag22)
        playerPed = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        playerPed = playerPed()
        iterator = playerPed - workValue
        dataTable4 = 2000
        if iterator > dataTable4 then
          iterator = BeginTextCommandDisplayHelp
          dataTable4 = "STRING"
          iterator(dataTable4)
          iterator = AddTextComponentSubstringPlayerName
          dataTable4 = workValue3
          flag22 = "client.spectateLeave"
          dataTable4, flag22, flag23, numberValue18 = dataTable4(flag22)
          iterator(dataTable4, flag22, flag23, numberValue18)
          iterator = EndTextCommandDisplayHelp
          dataTable4 = 0
          flag22 = false
          flag23 = false
          numberValue18 = -1
          iterator(dataTable4, flag22, flag23, numberValue18)
          workValue = playerPed
        end
        iterator = IsControlJustReleased
        dataTable4 = 0
        flag22 = 202
        iterator = iterator(dataTable4, flag22)
        if iterator then
          iterator = DoScreenFadeOut
          dataTable4 = 300
          iterator(dataTable4)
          iterator = Wait
          dataTable4 = 350
          iterator(dataTable4)
          iterator = TriggerServerEvent
          dataTable4 = "7d900d0299"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7d900d0299".
          iterator(dataTable4)
          iterator = eventRegistration7
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          iterator()
          iterator = IsScreenFadedIn
          iterator = iterator()
          if not iterator then
            iterator = DoScreenFadeIn
            dataTable4 = 400
            iterator(dataTable4)
          end
          break
        end
      end
      iterator = Wait
      dataTable4 = 0
      iterator(dataTable4)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg3(arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "37c3f140a7".
textValue9(textValue10, workValue60)
textValue9 = RegisterNetEvent
textValue10 = "966c51de4b"
-- Beginner: this function handles network event "966c51de4b".
function workValue60()
  local arg1, arg2
  arg1 = eventRegistration7
  arg2 = dataTable.mvpOpen
  arg2 = not arg2
  arg1(arg2)
  arg1 = IsScreenFadedIn
  arg1 = arg1()
  if not arg1 then
    arg1 = Wait
    arg2 = 200
    arg1(arg2)
    arg1 = DoScreenFadeIn
    arg2 = 400
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "966c51de4b".
textValue9(textValue10, workValue60)
textValue9 = {}
function textValue10(arg1)
  local arg2, arg3
  arg2 = arg1 % 6
  if 0 == arg2 then
    arg3 = 3
    return arg3
  elseif 1 == arg2 then
    arg3 = 5
    return arg3
  elseif 2 == arg2 then
    arg3 = 17
    return arg3
  elseif 3 == arg2 then
    arg3 = 11
    return arg3
  elseif 4 == arg2 then
    arg3 = 14
    return arg3
  elseif 5 == arg2 then
    arg3 = 8
    return arg3
  end
  arg3 = 1
  return arg3
end
function workValue60()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper
  arg1 = pairs
  arg2 = textValue9
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = DoesBlipExist
    stringHelper = arg6
    arg7 = arg7(stringHelper)
    if arg7 then
      arg7 = RemoveBlip
      stringHelper = arg6
      arg7(stringHelper)
    end
  end
  arg1 = {}
  textValue9 = arg1
end
function workValue61()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9
  arg1 = dataTable.warmup
  if not arg1 then
    return
  end
  arg1 = {}
  arg2 = ipairs
  arg3 = GetActivePlayers
  arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9 = arg3()
  arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    stringHelper = PlayerId
    -- Beginner: result below is localPlayerIndex.
    stringHelper = stringHelper()
    if arg7 ~= stringHelper then
      stringHelper = GetPlayerServerId
      workValue59 = arg7
      -- Beginner: result below is serverId.
      stringHelper = stringHelper(workValue59)
      arg1[stringHelper] = true
      workValue59 = GetPlayerPed
      stringHelper2 = arg7
      -- Beginner: result below is playerPed.
      workValue59 = workValue59(stringHelper2)
      if 0 ~= workValue59 then
        stringHelper2 = IsEntityVisible
        flag = workValue59
        stringHelper2 = stringHelper2(flag)
        if stringHelper2 then
          stringHelper2 = textValue9
          stringHelper2 = stringHelper2[stringHelper]
          flag = GetBlipFromEntity
          flag3 = workValue59
          flag = flag(flag3)
          if stringHelper2 then
            flag3 = DoesBlipExist
            flag5 = stringHelper2
            flag3 = flag3(flag5)
            if flag3 and flag == stringHelper2 then
              goto flow_label_107
            end
          end
          if stringHelper2 then
            flag3 = DoesBlipExist
            flag5 = stringHelper2
            flag3 = flag3(flag5)
            if flag3 then
              flag3 = RemoveBlip
              flag5 = stringHelper2
              flag3(flag5)
            end
          end
          flag3 = DoesBlipExist
          flag5 = flag
          flag3 = flag3(flag5)
          if flag3 then
            flag3 = RemoveBlip
            flag5 = flag
            flag3(flag5)
          end
          flag3 = AddBlipForEntity
          flag5 = workValue59
          -- Beginner: result below is blipHandle.
          flag3 = flag3(flag5)
          stringHelper2 = flag3
          flag3 = SetBlipSprite
          flag5 = stringHelper2
          heading = IsEntityDead
          flag7 = workValue59
          heading = heading(flag7)
          if heading then
            heading = 274
            if heading then
              goto flow_label_77
            end
          end
          heading = 1
          ::flow_label_77::
          flag3(flag5, heading)
          flag3 = SetBlipCategory
          flag5 = stringHelper2
          heading = 7
          flag3(flag5, heading)
          flag3 = SetBlipColour
          flag5 = stringHelper2
          heading = textValue10
          flag7 = stringHelper
          heading, flag7, flag9 = heading(flag7)
          flag3(flag5, heading, flag7, flag9)
          flag3 = ShowHeadingIndicatorOnBlip
          flag5 = stringHelper2
          heading = true
          flag3(flag5, heading)
          flag3 = BeginTextCommandSetBlipName
          flag5 = "STRING"
          flag3(flag5)
          flag3 = AddTextComponentSubstringPlayerName
          flag5 = CMG
          flag5 = flag5.getPlayerName
          heading = arg7
          flag5, heading, flag7, flag9 = flag5(heading)
          flag3(flag5, heading, flag7, flag9)
          flag3 = EndTextCommandSetBlipName
          flag5 = stringHelper2
          flag3(flag5)
          flag3 = textValue9
          flag3[stringHelper] = stringHelper2
          goto flow_label_160
          ::flow_label_107::
          flag3 = IsEntityDead
          flag5 = workValue59
          flag3 = flag3(flag5)
          if flag3 then
            flag3 = 274
            if flag3 then
              goto flow_label_116
            end
          end
          flag3 = 1
          ::flow_label_116::
          flag5 = GetBlipSprite
          heading = stringHelper2
          flag5 = flag5(heading)
          if flag5 ~= flag3 then
            flag5 = SetBlipSprite
            heading = stringHelper2
            flag7 = flag3
            flag5(heading, flag7)
            flag5 = SetBlipColour
            heading = stringHelper2
            flag7 = textValue10
            flag9 = stringHelper
            flag7, flag9 = flag7(flag9)
            flag5(heading, flag7, flag9)
            flag5 = BeginTextCommandSetBlipName
            heading = "STRING"
            flag5(heading)
            flag5 = AddTextComponentSubstringPlayerName
            heading = CMG
            heading = heading.getPlayerName
            flag7 = arg7
            heading, flag7, flag9 = heading(flag7)
            flag5(heading, flag7, flag9)
            flag5 = EndTextCommandSetBlipName
            heading = stringHelper2
            flag5(heading)
          end
      end
      else
        stringHelper2 = textValue9
        stringHelper2 = stringHelper2[stringHelper]
        if stringHelper2 then
          stringHelper2 = DoesBlipExist
          flag = textValue9
          flag = flag[stringHelper]
          stringHelper2 = stringHelper2(flag)
          if stringHelper2 then
            stringHelper2 = RemoveBlip
            flag = textValue9
            flag = flag[stringHelper]
            stringHelper2(flag)
          end
          stringHelper2 = textValue9
          stringHelper2[stringHelper] = nil
        end
      end
    end
    ::flow_label_160::
  end
  arg2 = pairs
  arg3 = textValue9
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    stringHelper = arg1[arg6]
    if not stringHelper then
      stringHelper = DoesBlipExist
      workValue59 = arg7
      stringHelper = stringHelper(workValue59)
      if stringHelper then
        stringHelper = RemoveBlip
        workValue59 = arg7
        stringHelper(workValue59)
      end
      stringHelper = textValue9
      stringHelper[arg6] = nil
    end
  end
end
function workValue62()
  local arg1, arg2
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function arg2()
    local workValue, playerPed
    while true do
      workValue = dataTable.warmup
      if not workValue then
        break
      end
      workValue = workValue61
      workValue()
      workValue = Wait
      playerPed = 100
      workValue(playerPed)
    end
    workValue = workValue60
    workValue()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
function workValue63()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = ClearPedTasksImmediately
  arg3 = arg1
  arg2(arg3)
  arg2 = ClearPedBloodDamage
  arg3 = arg1
  arg2(arg3)
  arg2 = SetEntityMaxHealth
  arg3 = arg1
  arg4 = 200
  arg2(arg3, arg4)
  arg2 = SetEntityHealth
  arg3 = arg1
  arg4 = 200
  arg2(arg3, arg4)
  arg2 = dataTable.warmup
  if arg2 then
    arg2 = dataTable.warmup
    arg2 = arg2.useArmour
    if arg2 then
      arg2 = SetPedArmour
      arg3 = arg1
      arg4 = 100
      arg2(arg3, arg4)
  end
  else
    arg2 = SetPedArmour
    arg3 = arg1
    arg4 = 0
    arg2(arg3, arg4)
  end
  arg2 = SetPlayerHealthRechargeMultiplier
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  arg4 = 0.0
  arg2(arg3, arg4)
  arg2 = SetPlayerWeaponDamageModifier
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  arg4 = 1.0
  arg2(arg3, arg4)
  arg2 = SetPlayerWeaponDefenseModifier
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  arg4 = 1.0
  arg2(arg3, arg4)
  arg2 = SetPlayerMeleeWeaponDamageModifier
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  arg4 = 1.0
  arg2(arg3, arg4)
  arg2 = SetEntityProofs
  arg3 = arg1
  arg4 = false
  arg5 = false
  arg6 = false
  arg7 = false
  stringHelper = false
  workValue59 = false
  stringHelper2 = false
  flag = false
  arg2(arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag)
  arg2 = workValue26
  arg3 = nil
  arg4 = true
  arg2(arg3, arg4)
  arg2 = SetCanAttackFriendly
  arg3 = arg1
  arg4 = false
  arg5 = false
  arg2(arg3, arg4, arg5)
  arg2 = dataTable.warmup
  if arg2 then
    arg2 = dataTable.warmup
    arg2 = arg2.weapon
    if arg2 then
      arg2 = dataTable.warmup
      arg2 = arg2.weapon
      arg3 = GetHashKey
      arg4 = arg2
      -- Beginner: result below is hash.
      arg3 = arg3(arg4)
      arg4 = cmgCall.defaultWeaponAmmo
      if not arg4 then
        arg4 = 250
      end
      arg5 = HasWeaponAssetLoaded
      arg6 = arg3
      arg5 = arg5(arg6)
      if not arg5 then
        arg5 = RequestWeaponAsset
        arg6 = arg3
        arg7 = 31
        stringHelper = 0
        arg5(arg6, arg7, stringHelper)
        arg5 = 0
        while true do
          arg6 = HasWeaponAssetLoaded
          arg7 = arg3
          arg6 = arg6(arg7)
          if not (not arg6 and arg5 < 100) then
            break
          end
          arg6 = Wait
          arg7 = 0
          arg6(arg7)
          arg5 = arg5 + 1
        end
      end
      arg5 = HasPedGotWeapon
      arg6 = arg1
      arg7 = arg3
      stringHelper = false
      arg5 = arg5(arg6, arg7, stringHelper)
      if not arg5 then
        arg5 = GiveWeaponToPed
        arg6 = arg1
        arg7 = arg3
        stringHelper = arg4
        workValue59 = false
        stringHelper2 = true
        arg5(arg6, arg7, stringHelper, workValue59, stringHelper2)
      end
      arg5 = SetCurrentPedWeapon
      arg6 = arg1
      arg7 = arg3
      stringHelper = true
      arg5(arg6, arg7, stringHelper)
      arg5 = SetPedInfiniteAmmo
      arg6 = arg1
      arg7 = true
      stringHelper = arg3
      arg5(arg6, arg7, stringHelper)
      arg5 = SetPedInfiniteAmmoClip
      arg6 = arg1
      arg7 = true
      arg5(arg6, arg7)
    end
  end
end
function workValue64(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5
  arg2 = dataTable.warmup
  if arg2 then
    arg2 = dataTable.warmup
    arg2 = arg2.spawns
  end
  if arg2 then
    arg3 = #arg2
    if 0 ~= arg3 then
      goto flow_label_12
    end
  end
  return
  ::flow_label_12::
  arg3 = math
  arg3 = arg3.random
  arg4 = #arg2
  arg3 = arg3(arg4)
  arg3 = arg2[arg3]
  if arg1 then
    arg4 = NetworkResurrectLocalPlayer
    arg5 = arg3.x
    arg6 = arg3.y
    arg7 = arg3.z
    stringHelper = arg3.w
    workValue59 = true
    stringHelper2 = false
    arg4(arg5, arg6, arg7, stringHelper, workValue59, stringHelper2)
    arg4 = SetPlayerInvincible
    arg5 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    arg5 = arg5()
    arg6 = false
    arg4(arg5, arg6)
  else
    arg4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg4 = arg4()
    arg5 = SetEntityCoords
    arg6 = arg4
    arg7 = arg3.x
    stringHelper = arg3.y
    workValue59 = arg3.z
    workValue59 = workValue59 - 1.0
    stringHelper2 = false
    flag = false
    flag3 = false
    flag5 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    arg5(arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5)
    arg5 = SetEntityHeading
    arg6 = arg4
    arg7 = arg3.w
    -- Beginner: Change the direction an entity is facing.
    arg5(arg6, arg7)
  end
  arg4 = workValue63
  arg4()
end
function workValue65()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = cmgCall.warmup
  if arg1 then
    arg1 = cmgCall.warmup
    arg1 = arg1.locations
  end
  if arg1 then
    arg2 = #arg1
    if not (arg2 < 2) then
      goto flow_label_13
    end
  end
  arg2 = nil
  return arg2
  ::flow_label_13::
  arg2 = cmgCall.warmup
  arg2 = arg2.rotateMinutes
  if not arg2 then
    arg2 = 30
  end
  arg2 = arg2 * 60
  arg3 = CMG
  arg3 = arg3.getEstimatedServerOsTime
  arg3 = arg3()
  arg4 = math
  arg4 = arg4.floor
  arg5 = arg3 / arg2
  arg4 = arg4(arg5)
  arg4 = arg4 + 1
  arg4 = arg4 * arg2
  arg5 = math
  arg5 = arg5.max
  arg6 = 0
  arg7 = arg4 - arg3
  return arg5(arg6, arg7)
end
cmgCall9 = CMG
cmgCall9 = cmgCall9.registerHudTimerBarProvider
textValue11 = "arenaWarmup"
function eventRegistration(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper
  arg2 = dataTable.warmup
  if not arg2 then
    return
  end
  arg2 = workValue65
  arg2 = arg2()
  if arg2 then
    arg3 = arg1.push
    arg4 = workValue3
    arg5 = "client.warmupMapChangesIn"
    arg4 = arg4(arg5)
    arg5 = string
    arg5 = arg5.format
    arg6 = "%d:%02d"
    arg7 = math
    arg7 = arg7.floor
    stringHelper = arg2 / 60
    arg7 = arg7(stringHelper)
    stringHelper = arg2 % 60
    arg5, arg6, arg7, stringHelper = arg5(arg6, arg7, stringHelper)
    arg3(arg4, arg5, arg6, arg7, stringHelper)
  end
  arg3 = dataTable.warmup
  arg3 = arg3.playerCount
  if not arg3 then
    arg3 = 1
  end
  arg4 = arg1.push
  arg5 = workValue3
  arg6 = "client.warmupPlayersIn"
  arg5 = arg5(arg6)
  arg6 = tostring
  arg7 = arg3
  arg6, arg7, stringHelper = arg6(arg7)
  arg4(arg5, arg6, arg7, stringHelper)
end
cmgCall9(textValue11, eventRegistration)
cmgCall9 = RegisterNetEvent
textValue11 = "424342ff58"
-- Beginner: this function handles network event "424342ff58".
function eventRegistration(arg1)
  local arg2, arg3
  arg2 = dataTable.warmup
  if arg2 then
    arg2 = type
    arg3 = arg1
    arg2 = arg2(arg3)
    if "number" == arg2 then
      goto flow_label_10
    end
  end
  return
  ::flow_label_10::
  arg2 = dataTable.warmup
  arg2.playerCount = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "424342ff58".
cmgCall9(textValue11, eventRegistration)
cmgCall9 = RegisterNetEvent
textValue11 = "8f7c3fe494"
-- Beginner: this function handles network event "8f7c3fe494".
function eventRegistration(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.setRedzoneTimerDisabled
  arg3 = true
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.setPlayerCombatTimer
  arg3 = 0
  arg4 = false
  arg2(arg3, arg4)
  dataTable.warmup = arg1
  arg2 = workValue7
  arg2()
  arg2 = workValue9
  arg2()
  arg2 = workValue21
  arg2()
  arg2 = CMG
  arg2 = arg2.setHudTimerBarProviderActive
  arg3 = "arenaWarmup"
  arg4 = true
  arg2(arg3, arg4)
  arg2 = DoScreenFadeOut
  arg3 = 400
  arg2(arg3)
  arg2 = Wait
  arg3 = 500
  arg2(arg3)
  arg2 = workValue64
  arg3 = false
  arg2(arg3)
  arg2 = DoScreenFadeIn
  arg3 = 400
  arg2(arg3)
  arg2 = workValue62
  arg2()
  arg2 = Citizen
  arg2 = arg2.CreateThread
  function arg3()
    local workValue, playerPed, iterator
    while true do
      workValue = dataTable.warmup
      if not workValue then
        break
      end
      workValue = IsEntityDead
      playerPed = PlayerPedId
      playerPed, iterator = playerPed()
      workValue = workValue(playerPed, iterator)
      if workValue then
        workValue = dataTable.warmup
        workValue = workValue.respawnSeconds
        if not workValue then
          workValue = 0
        end
        workValue = workValue * 1000
        if workValue > 0 then
          playerPed = Wait
          iterator = workValue
          playerPed(iterator)
        end
        playerPed = dataTable.warmup
        if playerPed then
          playerPed = DoScreenFadeOut
          iterator = 200
          playerPed(iterator)
          playerPed = Wait
          iterator = 250
          playerPed(iterator)
          playerPed = workValue64
          iterator = true
          playerPed(iterator)
          playerPed = DoScreenFadeIn
          iterator = 200
          playerPed(iterator)
        end
      end
      workValue = Wait
      playerPed = 150
      workValue(playerPed)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
  arg2 = Citizen
  arg2 = arg2.CreateThread
  function arg3()
    local workValue, playerPed, iterator, dataTable4, flag22, flag23, numberValue18
    workValue = 0
    while true do
      playerPed = dataTable.warmup
      if not playerPed then
        break
      end
      playerPed = DisableControlAction
      iterator = 0
      dataTable4 = 199
      flag22 = true
      playerPed(iterator, dataTable4, flag22)
      playerPed = DisableControlAction
      iterator = 0
      dataTable4 = 200
      flag22 = true
      playerPed(iterator, dataTable4, flag22)
      playerPed = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      playerPed = playerPed()
      iterator = playerPed - workValue
      dataTable4 = 2000
      if iterator > dataTable4 then
        iterator = BeginTextCommandDisplayHelp
        dataTable4 = "STRING"
        iterator(dataTable4)
        iterator = AddTextComponentSubstringPlayerName
        dataTable4 = workValue3
        flag22 = "client.warmupLeave"
        dataTable4, flag22, flag23, numberValue18 = dataTable4(flag22)
        iterator(dataTable4, flag22, flag23, numberValue18)
        iterator = EndTextCommandDisplayHelp
        dataTable4 = 0
        flag22 = false
        flag23 = false
        numberValue18 = -1
        iterator(dataTable4, flag22, flag23, numberValue18)
        workValue = playerPed
      end
      iterator = IsControlJustReleased
      dataTable4 = 0
      flag22 = 202
      iterator = iterator(dataTable4, flag22)
      if iterator then
        iterator = DoScreenFadeOut
        dataTable4 = 300
        iterator(dataTable4)
        iterator = Wait
        dataTable4 = 350
        iterator(dataTable4)
        iterator = TriggerServerEvent
        dataTable4 = "c4ac72b450"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c4ac72b450".
        iterator(dataTable4)
        break
      end
      iterator = Wait
      dataTable4 = 0
      iterator(dataTable4)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8f7c3fe494".
cmgCall9(textValue11, eventRegistration)
cmgCall9 = RegisterNetEvent
textValue11 = "40c5828829"
-- Beginner: this function handles network event "40c5828829".
function eventRegistration(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = dataTable.warmup
  if not arg2 then
    return
  end
  arg2 = dataTable.warmup
  arg3 = arg1.spawns
  arg2.spawns = arg3
  arg2 = dataTable.warmup
  arg3 = arg1.locationName
  arg2.locationName = arg3
  arg2 = DoScreenFadeOut
  arg3 = 250
  arg2(arg3)
  arg2 = Wait
  arg3 = 300
  arg2(arg3)
  arg2 = workValue64
  arg3 = true
  arg2(arg3)
  arg2 = DoScreenFadeIn
  arg3 = 250
  arg2(arg3)
  arg2 = arg1.locationName
  if arg2 then
    arg2 = CMG
    arg2 = arg2.announceMpSmallMsg
    arg3 = "WARMUP MOVED"
    arg4 = arg1.locationName
    arg5 = 18
    arg6 = 3000
    arg2(arg3, arg4, arg5, arg6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "40c5828829".
cmgCall9(textValue11, eventRegistration)
cmgCall9 = RegisterNetEvent
textValue11 = "40315d934d"
-- Beginner: this function handles network event "40315d934d".
function eventRegistration()
  local arg1, arg2, arg3
  dataTable.warmup = nil
  arg1 = workValue7
  arg1()
  arg1 = workValue60
  arg1()
  arg1 = CMG
  arg1 = arg1.setRedzoneTimerDisabled
  arg2 = false
  arg1(arg2)
  arg1 = workValue9
  arg1()
  arg1 = CMG
  arg1 = arg1.setHudTimerBarProviderActive
  arg2 = "arenaWarmup"
  arg3 = false
  arg1(arg2, arg3)
  arg1 = cmgCall.warmup
  if arg1 then
    arg1 = cmgCall.warmup
    arg1 = arg1.weapon
    if arg1 then
      arg1 = workValue30
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = cmgCall.warmup
      arg3 = arg3.weapon
      arg1(arg2, arg3)
    end
  end
  arg1 = workValue27
  arg1()
  arg1 = SetPlayerHealthRechargeMultiplier
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  arg3 = 1.0
  arg1(arg2, arg3)
  arg1 = SetPlayerWeaponDamageModifier
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  arg3 = 1.0
  arg1(arg2, arg3)
  arg1 = workValue37
  arg1()
  arg1 = IsScreenFadedIn
  arg1 = arg1()
  if not arg1 then
    arg1 = Wait
    arg2 = 200
    arg1(arg2)
    arg1 = DoScreenFadeIn
    arg2 = 400
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "40315d934d".
cmgCall9(textValue11, eventRegistration)
function cmgCall9()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper
  arg1 = ipairs
  arg2 = dataTable.spawnedProps
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = DoesEntityExist
    stringHelper = arg6
    arg7 = arg7(stringHelper)
    if arg7 then
      arg7 = DeleteEntity
      stringHelper = arg6
      -- Beginner: Delete a GTA entity.
      arg7(stringHelper)
    end
  end
  arg1 = {}
  dataTable.spawnedProps = arg1
  arg1 = ipairs
  arg2 = dataTable.loadedIpls
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = RemoveIpl
    stringHelper = arg6
    arg7(stringHelper)
  end
  arg1 = {}
  dataTable.loadedIpls = arg1
end
function textValue11(arg1)
  local arg2, arg3
  arg2 = dataTable.preview
  if not arg2 then
    return
  end
  dataTable.preview = false
  arg2 = CMG
  arg2 = arg2.setRedzoneTimerDisabled
  arg3 = false
  arg2(arg3)
  arg2 = cmgCall9
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg2()
  arg2 = workValue9
  arg2()
  if not arg1 then
    arg2 = TriggerServerEvent
    arg3 = "035a5138cc"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "035a5138cc".
    arg2(arg3)
  end
end
eventRegistration = RegisterNetEvent
textValue = "573b531e71"
-- Beginner: this function handles network event "573b531e71".
function workValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3
  arg2 = CMG
  arg2 = arg2.setRedzoneTimerDisabled
  arg3 = true
  arg2(arg3)
  dataTable.preview = true
  arg2 = workValue9
  arg2()
  arg2 = workValue21
  arg2()
  arg2 = DoScreenFadeOut
  arg3 = 400
  arg2(arg3)
  arg2 = Wait
  arg3 = 500
  arg2(arg3)
  arg2 = workValue40
  arg3 = arg1.ipls
  arg2(arg3)
  arg2 = workValue41
  arg3 = arg1.propLayout
  arg2(arg3)
  arg2 = arg1.spawn
  if arg2 then
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    arg4 = SetEntityCoords
    arg5 = arg3
    arg6 = arg2.x
    arg7 = arg2.y
    stringHelper = arg2.z
    stringHelper = stringHelper - 1.0
    workValue59 = false
    stringHelper2 = false
    flag = false
    flag3 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    arg4(arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3)
    arg4 = SetEntityHeading
    arg5 = arg3
    arg6 = arg2.w
    if not arg6 then
      arg6 = 0.0
    end
    -- Beginner: Change the direction an entity is facing.
    arg4(arg5, arg6)
  end
  arg3 = Wait
  arg4 = 300
  arg3(arg4)
  arg3 = DoScreenFadeIn
  arg4 = 400
  arg3(arg4)
  arg3 = Citizen
  arg3 = arg3.CreateThread
  function arg4()
    local workValue, playerPed, iterator, dataTable4, flag22, flag23, numberValue18
    workValue = 0
    while true do
      playerPed = dataTable.preview
      if not playerPed then
        break
      end
      playerPed = DisableControlAction
      iterator = 0
      dataTable4 = 199
      flag22 = true
      playerPed(iterator, dataTable4, flag22)
      playerPed = DisableControlAction
      iterator = 0
      dataTable4 = 200
      flag22 = true
      playerPed(iterator, dataTable4, flag22)
      playerPed = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      playerPed = playerPed()
      iterator = playerPed - workValue
      dataTable4 = 2000
      if iterator > dataTable4 then
        iterator = BeginTextCommandDisplayHelp
        dataTable4 = "STRING"
        iterator(dataTable4)
        iterator = AddTextComponentSubstringPlayerName
        dataTable4 = workValue3
        flag22 = "client.previewExit"
        dataTable4, flag22, flag23, numberValue18 = dataTable4(flag22)
        iterator(dataTable4, flag22, flag23, numberValue18)
        iterator = EndTextCommandDisplayHelp
        dataTable4 = 0
        flag22 = false
        flag23 = true
        numberValue18 = -1
        iterator(dataTable4, flag22, flag23, numberValue18)
        workValue = playerPed
      end
      iterator = IsControlJustReleased
      dataTable4 = 0
      flag22 = 202
      iterator = iterator(dataTable4, flag22)
      if iterator then
        iterator = DoScreenFadeOut
        dataTable4 = 300
        iterator(dataTable4)
        iterator = Wait
        dataTable4 = 350
        iterator(dataTable4)
        iterator = textValue11
        dataTable4 = false
        iterator(dataTable4)
        break
      end
      iterator = Wait
      dataTable4 = 0
      iterator(dataTable4)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg3(arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "573b531e71".
eventRegistration(textValue, workValue2)
eventRegistration = RegisterNetEvent
textValue = "f2ad0543e3"
-- Beginner: this function handles network event "f2ad0543e3".
function workValue2()
  local arg1, arg2
  dataTable.preview = false
  arg1 = CMG
  arg1 = arg1.setRedzoneTimerDisabled
  arg2 = false
  arg1(arg2)
  arg1 = cmgCall9
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg1()
  arg1 = workValue9
  arg1()
  arg1 = workValue37
  arg1()
  arg1 = IsScreenFadedIn
  arg1 = arg1()
  if not arg1 then
    arg1 = Wait
    arg2 = 200
    arg1(arg2)
    arg1 = DoScreenFadeIn
    arg2 = 400
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f2ad0543e3".
eventRegistration(textValue, workValue2)
eventRegistration = RegisterNetEvent
textValue = "2492ddffc0"
-- Beginner: this function handles network event "2492ddffc0".
function workValue2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2
  arg1 = dataTable.fighting
  if arg1 then
    return
  end
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = pairs
  arg3 = cmgCall.wagerExclusiveWeapons
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6 in arg2, arg3, arg4, arg5 do
    arg7 = HasPedGotWeapon
    stringHelper = arg1
    workValue59 = arg6
    stringHelper2 = false
    arg7 = arg7(stringHelper, workValue59, stringHelper2)
    if arg7 then
      arg7 = RemoveWeaponFromPed
      stringHelper = arg1
      workValue59 = arg6
      arg7(stringHelper, workValue59)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2492ddffc0".
eventRegistration(textValue, workValue2)
eventRegistration = RegisterNetEvent
textValue = "193ee4e15e"
-- Beginner: this function handles network event "193ee4e15e".
function workValue2()
  local arg1, arg2
  arg1 = Wait
  arg2 = 1000
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.inArena
  arg1 = arg1()
  if arg1 then
    arg1 = RefillAmmoInstantly
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "193ee4e15e".
eventRegistration(textValue, workValue2)
eventRegistration = RegisterNetEvent
textValue = "cdcf8d66cc"
-- Beginner: this function handles network event "cdcf8d66cc".
function workValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2
  if not arg1 then
    return
  end
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = FreezeEntityPosition
  arg4 = arg2
  arg5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, arg5)
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, stringHelper in arg3, arg4, arg5, arg6 do
    workValue59 = RequestIpl
    stringHelper2 = stringHelper
    workValue59(stringHelper2)
    while true do
      workValue59 = IsIplActive
      stringHelper2 = stringHelper
      workValue59 = workValue59(stringHelper2)
      if workValue59 then
        break
      end
      workValue59 = Wait
      stringHelper2 = 100
      workValue59(stringHelper2)
    end
    workValue59 = dataTable.adminTicketIpls
    stringHelper2 = dataTable.adminTicketIpls
    stringHelper2 = #stringHelper2
    stringHelper2 = stringHelper2 + 1
    workValue59[stringHelper2] = stringHelper
  end
  arg3 = FreezeEntityPosition
  arg4 = arg2
  arg5 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cdcf8d66cc".
eventRegistration(textValue, workValue2)
eventRegistration = RegisterNetEvent
textValue = "4e6154b0f0"
-- Beginner: this function handles network event "4e6154b0f0".
function workValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59, stringHelper2, flag, flag3, flag5, heading, flag7, flag9
  if not arg1 then
    return
  end
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    stringHelper = RemoveIpl
    workValue59 = arg7
    stringHelper(workValue59)
    stringHelper = ipairs
    workValue59 = dataTable.adminTicketIpls
    stringHelper, workValue59, stringHelper2, flag = stringHelper(workValue59)
    for flag3, flag5 in stringHelper, workValue59, stringHelper2, flag do
      if flag5 == arg7 then
        heading = table
        heading = heading.remove
        flag7 = dataTable.adminTicketIpls
        flag9 = flag3
        heading(flag7, flag9)
        break
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4e6154b0f0".
eventRegistration(textValue, workValue2)
eventRegistration = AddEventHandler
textValue = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function workValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, stringHelper, workValue59
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 ~= arg1 then
    return
  end
  arg2 = ipairs
  arg3 = dataTable.spawnedProps
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    stringHelper = DoesEntityExist
    workValue59 = arg7
    stringHelper = stringHelper(workValue59)
    if stringHelper then
      stringHelper = DeleteEntity
      workValue59 = arg7
      -- Beginner: Delete a GTA entity.
      stringHelper(workValue59)
    end
  end
  arg2 = ipairs
  arg3 = dataTable.loadedIpls
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    stringHelper = RemoveIpl
    workValue59 = arg7
    stringHelper(workValue59)
  end
  arg2 = pairs
  arg3 = dataTable.botPeds
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    stringHelper = DoesEntityExist
    workValue59 = arg7
    stringHelper = stringHelper(workValue59)
    if stringHelper then
      stringHelper = DeleteEntity
      workValue59 = arg7
      -- Beginner: Delete a GTA entity.
      stringHelper(workValue59)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventRegistration(textValue, workValue2)