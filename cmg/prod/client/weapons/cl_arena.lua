--[[
    LEVEL 1 BEGINNER GUIDE — Arena
    ===================================

    File: cmg/prod/client/weapons/cl_arena.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: weapon/combat gameplay, specifically the Arena feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 181
      * Background threads: 0
      * Always-running loops: 23
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
local cmgOperation, dataCollection2, number13, number14, number15, dataCollection5, dataCollection6, workingValue51, number20, number21, number, workingValue3, workingValue4, cmgOperation2, workingValue5, cmgOperation3, workingValue6, cmgOperation5, number6, dataCollection, dataCollection3, stateFlag15, workingValue7, workingValue8, workingValue9, workingValue10, text2, text3, workingValue11, workingValue12, workingValue13, workingValue14, workingValue16, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue27, workingValue28, workingValue29, workingValue30, workingValue31, workingValue32, workingValue33, workingValue34, cmgOperation6, cmgOperation7, workingValue35, workingValue36, workingValue37, backgroundThread, workingValue38, number16, number17, workingValue39, eventHandler2, cmgOperation8, text4, eventHandler3, text5, workingValue40, workingValue41, workingValue42, workingValue43, eventHandler4, text6, workingValue44, workingValue45, number19, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, eventHandler5, text7, workingValue52, workingValue53, workingValue54, workingValue55, workingValue56, workingValue57, workingValue58, eventHandler6, eventHandler7, text9, text10, workingValue60, workingValue61, workingValue62, workingValue63, workingValue64, workingValue65, cmgOperation9, text11, eventHandler, text, workingValue2
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection2 = "cfg/cfg_arena"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection2)
dataCollection2 = cmgOperation.roundCountdown
if not dataCollection2 then
  dataCollection2 = {}
end
number13 = dataCollection2.stepMs
if not number13 then
  number13 = 600
end
number14 = dataCollection2.roundTitleMs
if not number14 then
  number14 = 500
end
number15 = dataCollection2.goDisplayMs
if not number15 then
  number15 = 400
end
dataCollection5 = cmgOperation.prepareMatch
if not dataCollection5 then
  dataCollection5 = {}
end
dataCollection6 = cmgOperation.arenaOob
if not dataCollection6 then
  dataCollection6 = {}
end
workingValue51 = cmgOperation.spectate
if workingValue51 then
  workingValue51 = cmgOperation.spectate
  workingValue51 = workingValue51.freeCamMargin
  if workingValue51 then
    goto continueAtStep41
  end
end
workingValue51 = 50.0
::continueAtStep41::
number20 = 25.0
number21 = 5000
number = 5000

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, ...) ===
function workingValue3(localValue1, ...)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59
  localValue2 = cmgOperation.strings
  if not localValue2 then
    return localValue1
  end
  localValue3 = string
  localValue3 = localValue3.gmatch
  localValue4 = localValue1
  localValue5 = "[^.]+"
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4, localValue5)
  for localValue7 in localValue3, localValue4, localValue5, localValue6 do
    localValue2 = localValue2[localValue7]
    if nil == localValue2 then
      return localValue1
    end
  end
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "string" ~= localValue3 then
    return localValue1
  end
  localValue3 = select
  localValue4 = "#"
  localValue5, localValue6, localValue7, stringHelper, workingValue59 = ...
  localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59)
  if localValue3 > 0 then
    localValue3 = string
    localValue3 = localValue3.format
    localValue4 = localValue2
    localValue5, localValue6, localValue7, stringHelper, workingValue59 = ...
    return localValue3(localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59)
  end
  return localValue2
end
workingValue4 = AddRelationshipGroup
cmgOperation2 = "CMGARENA_TEAM1"
workingValue4, cmgOperation2 = workingValue4(cmgOperation2)
workingValue5 = AddRelationshipGroup
cmgOperation3 = "CMGARENA_TEAM2"
workingValue5, cmgOperation3 = workingValue5(cmgOperation3)
workingValue6 = AddRelationshipGroup
cmgOperation5 = "CMGARENA_SPECTATOR"
workingValue6, cmgOperation5 = workingValue6(cmgOperation5)
number6 = 1862763509
dataCollection = {}
dataCollection.appOpen = false
dataCollection.lastSync = nil
dataCollection.myRank = nil
dataCollection.lobbyId = nil
dataCollection.match = nil
dataCollection.fighting = false
dataCollection3 = {}
dataCollection3.fingerprint = nil
dataCollection3.ctx = nil
dataCollection.combat = dataCollection3
dataCollection.spectate = nil
dataCollection.warmup = nil
dataCollection.preview = false
dataCollection.forfeitOpen = false
dataCollection.forfeitWatchRunning = false
dataCollection.coverPeekWatchRunning = false
dataCollection.preRoundLockActive = false
dataCollection.preRoundLockTickRunning = false
dataCollection.pendingTournamentNav = nil
dataCollection.awaitingHubReturn = false
dataCollection.lastWagerEndedAt = 0
dataCollection3 = {}
dataCollection.loadedIpls = dataCollection3
dataCollection3 = {}
dataCollection.spawnedProps = dataCollection3
dataCollection3 = {}
dataCollection.adminTicketIpls = dataCollection3
dataCollection.hopOutVehicle = nil
dataCollection.aiBots = nil
dataCollection3 = {}
dataCollection.botPeds = dataCollection3
dataCollection3 = {}
dataCollection.botReported = dataCollection3
dataCollection.botWatchRunning = false
dataCollection3 = false
stateFlag15 = false

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3
  localValue1 = dataCollection.fighting
  if not localValue1 then
    localValue1 = dataCollection.warmup
    localValue1 = nil ~= localValue1
  end
  if localValue1 then
    localValue2 = dataCollection3
    if not localValue2 then
      localValue2 = tCMG
      localValue2 = localValue2.setCanAnim
      localValue3 = false
      localValue2(localValue3)
      localValue2 = true
      dataCollection3 = localValue2
  end
  elseif not localValue1 then
    localValue2 = dataCollection3
    if localValue2 then
      localValue2 = tCMG
      localValue2 = localValue2.setCanAnim
      localValue3 = true
      localValue2(localValue3)
      localValue2 = false
      dataCollection3 = localValue2
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3
  localValue1 = dataCollection.fighting
  if localValue1 then
    localValue2 = stateFlag15
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.setCanOpenPhone
      localValue3 = false
      localValue2(localValue3)
      localValue2 = true
      stateFlag15 = localValue2
  end
  elseif not localValue1 then
    localValue2 = stateFlag15
    if localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.setCanOpenPhone
      localValue3 = true
      localValue2(localValue3)
      localValue2 = false
      stateFlag15 = localValue2
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3
  localValue1 = dataCollection.fighting
  if not localValue1 then
    localValue1 = dataCollection.warmup
    localValue1 = nil ~= localValue1
  end
  if localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.setGreenzonesDisabled
    localValue3 = true
    localValue2(localValue3)
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.inEvent
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.isLbRacingActive
    localValue2 = localValue2()
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.setGreenzonesDisabled
      localValue3 = false
      localValue2(localValue3)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1, localValue2) ===
function workingValue10(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = CMG
  localValue3 = localValue3.uiSendMessage
  localValue4 = {}
  localValue4.action = localValue1
  localValue4.payload = localValue2
  localValue3(localValue4)
end
text2 = "cmg_arena_create_prefs"
text3 = "cmg_arena_maps_prefs"

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = GetResourceKvpString
  localValue2 = text2
  localValue1 = localValue1(localValue2)
  if not localValue1 or "" == localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = pcall
  localValue3 = json
  localValue3 = localValue3.decode
  localValue4 = localValue1
  localValue2, localValue3 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue4 = type
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if "table" == localValue4 then
      return localValue3
    end
  end
  localValue4 = nil
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1) ===
function workingValue12(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" ~= localValue2 then
    return
  end
  localValue2 = {}
  localValue3 = localValue1.mode
  localValue2.mode = localValue3
  localValue3 = localValue1.map
  localValue2.map = localValue3
  localValue3 = localValue1.weaponCategory
  localValue2.weaponCategory = localValue3
  localValue3 = localValue1.weaponId
  localValue2.weaponId = localValue3
  localValue3 = localValue1.bestOf
  localValue2.bestOf = localValue3
  localValue3 = localValue1.stake
  localValue2.stake = localValue3
  localValue3 = localValue1.useArmour
  localValue2.useArmour = localValue3
  localValue3 = localValue1.allowCrouchShoot
  localValue2.allowCrouchShoot = localValue3
  localValue3 = localValue1.disableCoverPeek
  localValue2.disableCoverPeek = localValue3
  localValue3 = localValue1.siphon
  localValue2.siphon = localValue3
  localValue3 = localValue1.isPrivate
  localValue2.isPrivate = localValue3
  localValue3 = localValue1.password
  localValue2.password = localValue3
  localValue3 = localValue1.botCount
  localValue2.botCount = localValue3
  localValue3 = pcall
  localValue4 = json
  localValue4 = localValue4.encode
  localValue5 = localValue2
  localValue3, localValue4 = localValue3(localValue4, localValue5)
  if localValue3 and localValue4 then
    localValue5 = SetResourceKvp
    localValue6 = text2
    localValue7 = localValue4
    localValue5(localValue6, localValue7)
    localValue5 = workingValue10
    localValue6 = "ARENA_CREATE_PREFS"
    localValue7 = localValue2
    localValue5(localValue6, localValue7)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = workingValue11
  localValue1 = localValue1()
  if localValue1 then
    localValue2 = workingValue10
    localValue3 = "ARENA_CREATE_PREFS"
    localValue4 = localValue1
    localValue2(localValue3, localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1) ===
function workingValue14(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" ~= localValue2 then
    localValue2 = {}
    return localValue2
  end
  localValue2 = {}
  localValue3 = {}
  localValue4 = ipairs
  localValue5 = localValue1
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for stringHelper, workingValue59 in localValue4, localValue5, localValue6, localValue7 do
    stringHelper2 = tostring
    stateFlag = workingValue59 or stateFlag
    if not workingValue59 then
      stateFlag = ""
    end
    stringHelper2 = stringHelper2(stateFlag)
    workingValue59 = stringHelper2
    if "" ~= workingValue59 then
      stringHelper2 = localValue3[workingValue59]
      if not stringHelper2 then
        localValue3[workingValue59] = true
        stringHelper2 = #localValue2
        stringHelper2 = stringHelper2 + 1
        localValue2[stringHelper2] = workingValue59
      end
    end
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: none) ===
function workingValue16()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = GetResourceKvpString
  localValue2 = text3
  localValue1 = localValue1(localValue2)
  if not localValue1 or "" == localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = pcall
  localValue3 = json
  localValue3 = localValue3.decode
  localValue4 = localValue1
  localValue2, localValue3 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue4 = type
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if "table" == localValue4 then
      localValue4 = workingValue14
      localValue5 = localValue3.favourites
      localValue4 = localValue4(localValue5)
      localValue3.favourites = localValue4
      return localValue3
    end
  end
  localValue4 = nil
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1) ===
function workingValue18(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" ~= localValue2 then
    return
  end
  localValue2 = workingValue16
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = {}
  end
  localValue3 = {}
  localValue4 = localValue2.favouritesOnly
  localValue4 = true == localValue4
  localValue3.favouritesOnly = localValue4
  localValue4 = localValue2.favourites
  if not localValue4 then
    localValue4 = {}
  end
  localValue3.favourites = localValue4
  localValue4 = localValue1.favouritesOnly
  if nil ~= localValue4 then
    localValue4 = localValue1.favouritesOnly
    localValue4 = true == localValue4
    localValue3.favouritesOnly = localValue4
  end
  localValue4 = type
  localValue5 = localValue1.favourites
  localValue4 = localValue4(localValue5)
  if "table" == localValue4 then
    localValue4 = workingValue14
    localValue5 = localValue1.favourites
    localValue4 = localValue4(localValue5)
    localValue3.favourites = localValue4
  end
  localValue4 = pcall
  localValue5 = json
  localValue5 = localValue5.encode
  localValue6 = localValue3
  localValue4, localValue5 = localValue4(localValue5, localValue6)
  if localValue4 and localValue5 then
    localValue6 = SetResourceKvp
    localValue7 = text3
    stringHelper = localValue5
    localValue6(localValue7, stringHelper)
    localValue6 = workingValue10
    localValue7 = "ARENA_MAPS_PREFS"
    stringHelper = localValue3
    localValue6(localValue7, stringHelper)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
function workingValue19()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = workingValue16
  localValue1 = localValue1()
  if localValue1 then
    localValue2 = workingValue10
    localValue3 = "ARENA_MAPS_PREFS"
    localValue4 = localValue1
    localValue2(localValue3, localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: none) ===
function workingValue20()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = dataCollection.appOpen
  if localValue1 then
    return
  end
  dataCollection.appOpen = true
  localValue1 = CMG
  localValue1 = localValue1.hideHud
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.uiSetFocus
  localValue2 = true
  localValue3 = true
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.type = "APP_TOGGLE"
  localValue2.app = "Arena"
  localValue1(localValue2)
  localValue1 = dataCollection.lastSync
  if localValue1 then
    localValue1 = workingValue10
    localValue2 = "ARENA_SYNC"
    localValue3 = dataCollection.lastSync
    localValue1(localValue2, localValue3)
  end
  localValue1 = workingValue13
  localValue1()
  localValue1 = workingValue19
  localValue1()
  localValue1 = TriggerServerEvent
  localValue2 = "65d1e65933"
  localValue3 = true
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "65d1e65933".
  localValue1(localValue2, localValue3)
  localValue1 = TriggerServerEvent
  localValue2 = "37d8fd04c4"
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: none) ===
function workingValue21()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = dataCollection.appOpen
  if not localValue1 then
    return
  end
  dataCollection.appOpen = false
  localValue1 = CMG
  localValue1 = localValue1.showHud
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.uiSetFocus
  localValue2 = false
  localValue3 = false
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.type = "APP_TOGGLE"
  localValue2.app = ""
  localValue1(localValue2)
  localValue1 = TriggerServerEvent
  localValue2 = "65d1e65933"
  localValue3 = false
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "65d1e65933".
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: none) ===
function workingValue22()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = dataCollection.forfeitOpen
  if not localValue1 then
    localValue1 = dataCollection.match
    if localValue1 then
      goto continueAtStep8
    end
  end
  return
  ::continueAtStep8::
  dataCollection.forfeitOpen = true
  localValue1 = CMG
  localValue1 = localValue1.uiSetFocus
  localValue2 = true
  localValue3 = true
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = workingValue10
  localValue2 = "ARENA_FORFEIT_PROMPT"
  localValue3 = {}
  localValue3.show = true
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
function workingValue23()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = dataCollection.forfeitOpen
  if not localValue1 then
    return
  end
  dataCollection.forfeitOpen = false
  localValue1 = CMG
  localValue1 = localValue1.uiSetFocus
  localValue2 = false
  localValue3 = false
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = workingValue10
  localValue2 = "ARENA_FORFEIT_PROMPT"
  localValue3 = {}
  localValue3.show = false
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue24; parameters: none) ===
function workingValue24()
  local localValue1, localValue2
  localValue1 = dataCollection.coverPeekWatchRunning
  if localValue1 then
    return
  end
  dataCollection.coverPeekWatchRunning = true
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local workingValue, playerPed, iterator, dataCollection4, stateFlag22, stateFlag23, number18, stateFlag24, text8, stateFlag25, stateFlag2, stateFlag4
    while true do
      workingValue = dataCollection.fighting
      if not workingValue then
        break
      end
      workingValue = dataCollection.match
      if not workingValue then
        break
      end
      workingValue = dataCollection.match
      workingValue = workingValue.flags
      if workingValue then
        workingValue = dataCollection.match
        workingValue = workingValue.flags
        workingValue = workingValue.disableCoverPeek
        if workingValue then
          workingValue = PlayerId
          -- Beginner: result below is localPlayerIndex.
          workingValue = workingValue()
          playerPed = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          playerPed = playerPed()
          iterator = SetPlayerCanUseCover
          dataCollection4 = workingValue
          stateFlag22 = false
          iterator(dataCollection4, stateFlag22)
          iterator = SetPedConfigFlag
          dataCollection4 = playerPed
          stateFlag22 = 427
          stateFlag23 = false
          iterator(dataCollection4, stateFlag22, stateFlag23)
          iterator = ipairs
          dataCollection4 = {}
          stateFlag22 = 0
          stateFlag23 = 1
          number18 = 2
          dataCollection4[1] = stateFlag22
          dataCollection4[2] = stateFlag23
          dataCollection4[3] = number18
          iterator, dataCollection4, stateFlag22, stateFlag23 = iterator(dataCollection4)
          for number18, stateFlag24 in iterator, dataCollection4, stateFlag22, stateFlag23 do
            text8 = DisableControlAction
            stateFlag25 = stateFlag24
            stateFlag2 = 44
            stateFlag4 = true
            text8(stateFlag25, stateFlag2, stateFlag4)
          end
          iterator = IsPedInCover
          dataCollection4 = playerPed
          stateFlag22 = false
          iterator = iterator(dataCollection4, stateFlag22)
          if iterator then
            iterator = ClearPedTasks
            dataCollection4 = playerPed
            iterator(dataCollection4)
          end
        end
      end
      workingValue = Wait
      playerPed = 0
      workingValue(playerPed)
    end
    workingValue = SetPlayerCanUseCover
    playerPed = PlayerId
    -- Beginner: result below is localPlayerIndex.
    playerPed = playerPed()
    iterator = true
    workingValue(playerPed, iterator)
    dataCollection.coverPeekWatchRunning = false
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: none) ===
function workingValue25()
  local localValue1, localValue2
  localValue1 = dataCollection.forfeitWatchRunning
  if localValue1 then
    return
  end
  dataCollection.forfeitWatchRunning = true
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local workingValue, playerPed, iterator, dataCollection4
    while true do
      workingValue = dataCollection.fighting
      if not workingValue then
        break
      end
      workingValue = dataCollection.match
      if not workingValue then
        break
      end
      workingValue = dataCollection.forfeitOpen
      if not workingValue then
        workingValue = IsPauseMenuActive
        workingValue = workingValue()
        if not workingValue then
          workingValue = DisableControlAction
          playerPed = 0
          iterator = 199
          dataCollection4 = true
          workingValue(playerPed, iterator, dataCollection4)
          workingValue = DisableControlAction
          playerPed = 0
          iterator = 200
          dataCollection4 = true
          workingValue(playerPed, iterator, dataCollection4)
          workingValue = IsDisabledControlJustPressed
          playerPed = 0
          iterator = 200
          workingValue = workingValue(playerPed, iterator)
          if not workingValue then
            workingValue = IsDisabledControlJustPressed
            playerPed = 0
            iterator = 199
            workingValue = workingValue(playerPed, iterator)
            if not workingValue then
              goto continueAtStep38
            end
          end
          workingValue = workingValue22
          workingValue()
        end
      end
      ::continueAtStep38::
      workingValue = Wait
      playerPed = 0
      workingValue(playerPed)
    end
    dataCollection.forfeitWatchRunning = false
    workingValue = workingValue23
    workingValue()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue1, localValue2) ===
function workingValue26(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  if localValue2 then
    localValue3 = SetRelationshipBetweenGroups
    localValue4 = 5
    localValue5 = cmgOperation2
    localValue6 = cmgOperation2
    localValue3(localValue4, localValue5, localValue6)
    localValue3 = SetRelationshipBetweenGroups
    localValue4 = 5
    localValue5 = cmgOperation2
    localValue6 = cmgOperation3
    localValue3(localValue4, localValue5, localValue6)
    localValue3 = SetRelationshipBetweenGroups
    localValue4 = 5
    localValue5 = cmgOperation3
    localValue6 = cmgOperation2
    localValue3(localValue4, localValue5, localValue6)
    localValue3 = SetPedRelationshipGroupHash
    localValue4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue4 = localValue4()
    localValue5 = cmgOperation2
    localValue3(localValue4, localValue5)
  else
    localValue3 = SetRelationshipBetweenGroups
    localValue4 = 5
    localValue5 = cmgOperation2
    localValue6 = cmgOperation3
    localValue3(localValue4, localValue5, localValue6)
    localValue3 = SetRelationshipBetweenGroups
    localValue4 = 5
    localValue5 = cmgOperation3
    localValue6 = cmgOperation2
    localValue3(localValue4, localValue5, localValue6)
    localValue3 = SetPedRelationshipGroupHash
    localValue4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue4 = localValue4()
    if 1 == localValue1 then
      localValue5 = cmgOperation2
      if localValue5 then
        goto continueAtStep43
      end
    end
    localValue5 = cmgOperation3
    ::continueAtStep43::
    localValue3(localValue4, localValue5)
  end
  localValue3 = CMG
  localValue3 = localValue3.setFriendlyFire
  localValue4 = false
  localValue3(localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
function workingValue27()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = ClearRelationshipBetweenGroups
  localValue2 = 5
  localValue3 = cmgOperation2
  localValue4 = cmgOperation3
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = ClearRelationshipBetweenGroups
  localValue2 = 5
  localValue3 = cmgOperation3
  localValue4 = cmgOperation2
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = ClearRelationshipBetweenGroups
  localValue2 = 5
  localValue3 = cmgOperation2
  localValue4 = cmgOperation2
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = SetPedRelationshipGroupHash
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = number6
  localValue1(localValue2, localValue3)
  localValue1 = CMG
  localValue1 = localValue1.setFriendlyFire
  localValue2 = true
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: none) ===
function workingValue28()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetCurrentPedWeapon
  localValue3 = localValue1
  localValue4 = true
  localValue2, localValue3 = localValue2(localValue3, localValue4)
  localValue4 = table
  localValue4 = localValue4.concat
  localValue5 = {}
  localValue6 = tostring
  localValue7 = localValue3
  localValue6 = localValue6(localValue7)
  localValue7 = tostring
  stringHelper = GetEntityMaxHealth
  workingValue59 = localValue1
  stringHelper, workingValue59, stringHelper2 = stringHelper(workingValue59)
  localValue7 = localValue7(stringHelper, workingValue59, stringHelper2)
  stringHelper = tostring
  workingValue59 = GetPedRelationshipGroupHash
  stringHelper2 = localValue1
  workingValue59, stringHelper2 = workingValue59(stringHelper2)
  stringHelper, workingValue59, stringHelper2 = stringHelper(workingValue59, stringHelper2)
  localValue5[1] = localValue6
  localValue5[2] = localValue7
  localValue5[3] = stringHelper
  localValue5[4] = workingValue59
  localValue5[5] = stringHelper2
  localValue6 = "|"
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = GetHashKey
  localValue6 = localValue4
  return localValue5(localValue6)
end

-- === HELPER FUNCTION (decompiler name: workingValue29; parameters: localValue1, localValue2) ===
function workingValue29(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59
  if not localValue2 or "" == localValue2 then
    return
  end
  if not localValue1 then
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    localValue1 = localValue3
  end
  localValue3 = GetHashKey
  localValue4 = localValue2
  -- Beginner: result below is hash.
  localValue3 = localValue3(localValue4)
  localValue4 = HasWeaponAssetLoaded
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = RequestWeaponAsset
    localValue5 = localValue3
    localValue6 = 31
    localValue7 = 0
    localValue4(localValue5, localValue6, localValue7)
    localValue4 = 0
    while true do
      localValue5 = HasWeaponAssetLoaded
      localValue6 = localValue3
      localValue5 = localValue5(localValue6)
      if not (not localValue5 and localValue4 < 100) then
        break
      end
      localValue5 = Wait
      localValue6 = 0
      localValue5(localValue6)
      localValue4 = localValue4 + 1
    end
  end
  localValue4 = HasPedGotWeapon
  localValue5 = localValue1
  localValue6 = localValue3
  localValue7 = false
  localValue4 = localValue4(localValue5, localValue6, localValue7)
  if not localValue4 then
    localValue4 = GiveWeaponToPed
    localValue5 = localValue1
    localValue6 = localValue3
    localValue7 = cmgOperation.defaultWeaponAmmo
    if not localValue7 then
      localValue7 = 250
    end
    stringHelper = false
    workingValue59 = true
    localValue4(localValue5, localValue6, localValue7, stringHelper, workingValue59)
  end
  localValue4 = SetCurrentPedWeapon
  localValue5 = localValue1
  localValue6 = localValue3
  localValue7 = true
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = SetPedInfiniteAmmo
  localValue5 = localValue1
  localValue6 = true
  localValue7 = localValue3
  localValue4(localValue5, localValue6, localValue7)
end

-- === HELPER FUNCTION (decompiler name: workingValue30; parameters: localValue1, localValue2) ===
function workingValue30(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  if not localValue1 then
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    localValue1 = localValue3
  end
  if localValue2 and "" ~= localValue2 then
    localValue3 = SetPedInfiniteAmmo
    localValue4 = localValue1
    localValue5 = false
    localValue6 = GetHashKey
    localValue7 = localValue2
    localValue6, localValue7 = localValue6(localValue7)
    localValue3(localValue4, localValue5, localValue6, localValue7)
  end
  localValue3 = SetPedInfiniteAmmoClip
  localValue4 = localValue1
  localValue5 = false
  localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue31; parameters: none) ===
function workingValue31()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue1 = localValue1()
  localValue2 = DisablePlayerFiring
  localValue3 = localValue1
  localValue4 = true
  localValue2(localValue3, localValue4)
  localValue2 = DisableControlAction
  localValue3 = 0
  localValue4 = 24
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = DisableControlAction
  localValue3 = 0
  localValue4 = 25
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = DisableControlAction
  localValue3 = 0
  localValue4 = 37
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = DisableControlAction
  localValue3 = 0
  localValue4 = 47
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = DisableControlAction
  localValue3 = 0
  localValue4 = 58
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = DisableControlAction
  localValue3 = 0
  localValue4 = 140
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = DisableControlAction
  localValue3 = 0
  localValue4 = 141
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = DisableControlAction
  localValue3 = 0
  localValue4 = 142
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = DisableControlAction
  localValue3 = 0
  localValue4 = 257
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = DisableControlAction
  localValue3 = 0
  localValue4 = 263
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue32; parameters: none) ===
function workingValue32()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = dataCollection.preRoundLockActive
  if localValue1 then
    return
  end
  dataCollection.preRoundLockActive = true
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = FreezeEntityPosition
  localValue3 = localValue1
  localValue4 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, localValue4)
  localValue2 = dataCollection.hopOutVehicle
  if localValue2 then
    localValue2 = DoesEntityExist
    localValue3 = dataCollection.hopOutVehicle
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = FreezeEntityPosition
      localValue3 = dataCollection.hopOutVehicle
      localValue4 = true
      localValue2(localValue3, localValue4)
    end
  end
  localValue2 = dataCollection.preRoundLockTickRunning
  if localValue2 then
    return
  end
  dataCollection.preRoundLockTickRunning = true
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local workingValue, playerPed
    while true do
      workingValue = dataCollection.preRoundLockActive
      if not workingValue then
        break
      end
      workingValue = workingValue31
      workingValue()
      workingValue = Wait
      playerPed = 0
      workingValue(playerPed)
    end
    dataCollection.preRoundLockTickRunning = false
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue33; parameters: none) ===
function workingValue33()
  local localValue1, localValue2, localValue3
  localValue1 = dataCollection.preRoundLockActive
  if not localValue1 then
    return
  end
  dataCollection.preRoundLockActive = false
  localValue1 = FreezeEntityPosition
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue1(localValue2, localValue3)
  localValue1 = dataCollection.hopOutVehicle
  if localValue1 then
    localValue1 = DoesEntityExist
    localValue2 = dataCollection.hopOutVehicle
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = FreezeEntityPosition
      localValue2 = dataCollection.hopOutVehicle
      localValue3 = false
      localValue1(localValue2, localValue3)
    end
  end
  localValue1 = dataCollection.combat
  localValue1 = localValue1.ctx
  if localValue1 then
    localValue1 = dataCollection.combat
    localValue1 = localValue1.ctx
    localValue1 = localValue1.weaponModel
    if localValue1 then
      localValue1 = workingValue29
      localValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = dataCollection.combat
      localValue3 = localValue3.ctx
      localValue3 = localValue3.weaponModel
      localValue1(localValue2, localValue3)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue34; parameters: localValue1) ===
function workingValue34(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = dataCollection.combat
  localValue3.ctx = localValue1
  localValue3 = localValue1.clearSpectator
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.setEventSpectatorMode
    localValue4 = false
    localValue3(localValue4)
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    localValue2 = localValue3
  end
  localValue3 = dataCollection.hopOutVehicle
  localValue4 = localValue1.worldMode
  localValue4 = localValue3 or localValue4
  if localValue4 and localValue3 then
    localValue4 = DoesEntityExist
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = GetVehiclePedIsIn
      localValue5 = localValue2
      localValue6 = false
      -- Beginner: result below is currentVehicle.
      localValue4 = localValue4(localValue5, localValue6)
      localValue4 = localValue4 == localValue3
    end
  end
  localValue5 = localValue1.spawn
  if localValue5 then
    localValue5 = localValue1.clearSpectator
    if localValue5 and not localValue4 then
      localValue5 = IsEntityDead
      localValue6 = localValue2
      localValue5 = localValue5(localValue6)
      if localValue5 then
        localValue5 = NetworkResurrectLocalPlayer
        localValue6 = localValue1.spawn
        localValue6 = localValue6.x
        localValue7 = localValue1.spawn
        localValue7 = localValue7.y
        stringHelper = localValue1.spawn
        stringHelper = stringHelper.z
        workingValue59 = localValue1.spawn
        workingValue59 = workingValue59.w
        if not workingValue59 then
          workingValue59 = 0.0
        end
        stringHelper2 = true
        stateFlag = false
        localValue5(localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag)
        localValue5 = SetPlayerInvincible
        localValue6 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        localValue6 = localValue6()
        localValue7 = false
        localValue5(localValue6, localValue7)
        localValue5 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue5 = localValue5()
        localValue2 = localValue5
      end
      localValue5 = SetEntityCoords
      localValue6 = localValue2
      localValue7 = localValue1.spawn
      localValue7 = localValue7.x
      stringHelper = localValue1.spawn
      stringHelper = stringHelper.y
      workingValue59 = localValue1.spawn
      workingValue59 = workingValue59.z
      stringHelper2 = false
      stateFlag = false
      stateFlag3 = false
      stateFlag5 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      localValue5(localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5)
      localValue5 = SetEntityHeading
      localValue6 = localValue2
      localValue7 = localValue1.spawn
      localValue7 = localValue7.w
      if not localValue7 then
        localValue7 = 0.0
      end
      -- Beginner: Change the direction an entity is facing.
      localValue5(localValue6, localValue7)
      localValue5 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue5 = localValue5()
      localValue2 = localValue5
  end
  else
    localValue5 = IsEntityDead
    localValue6 = localValue2
    localValue5 = localValue5(localValue6)
    if localValue5 then
      localValue5 = localValue1.spawn
      localValue6 = nil
      localValue7 = nil
      stringHelper = nil
      workingValue59 = nil
      if localValue5 then
        stringHelper2 = localValue5.x
        stateFlag = localValue5.y
        stateFlag3 = localValue5.z
        stateFlag5 = localValue5.w
        workingValue59 = stateFlag5 or workingValue59
        if not stateFlag5 then
          workingValue59 = 0.0
        end
        stringHelper = stateFlag3
        localValue7 = stateFlag
        localValue6 = stringHelper2
      else
        stringHelper2 = GetEntityCoords
        stateFlag = localValue2
        -- Beginner: result below is entityCoords.
        stringHelper2 = stringHelper2(stateFlag)
        stateFlag = stringHelper2.x
        stateFlag3 = stringHelper2.y
        stateFlag5 = stringHelper2.z
        heading = GetEntityHeading
        stateFlag7 = localValue2
        -- Beginner: result below is heading.
        heading = heading(stateFlag7)
        workingValue59 = heading
        stringHelper = stateFlag5
        localValue7 = stateFlag3
        localValue6 = stateFlag
      end
      stringHelper2 = NetworkResurrectLocalPlayer
      stateFlag = localValue6
      stateFlag3 = localValue7
      stateFlag5 = stringHelper
      heading = workingValue59
      stateFlag7 = true
      stateFlag9 = false
      stringHelper2(stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9)
      stringHelper2 = SetPlayerInvincible
      stateFlag = PlayerId
      -- Beginner: result below is localPlayerIndex.
      stateFlag = stateFlag()
      stateFlag3 = false
      stringHelper2(stateFlag, stateFlag3)
      stringHelper2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      stringHelper2 = stringHelper2()
      localValue2 = stringHelper2
    end
  end
  if not localValue4 then
    localValue5 = ClearPedTasksImmediately
    localValue6 = localValue2
    localValue5(localValue6)
  end
  localValue5 = ClearPedBloodDamage
  localValue6 = localValue2
  localValue5(localValue6)
  localValue5 = 200
  localValue6 = SetEntityMaxHealth
  localValue7 = localValue2
  stringHelper = localValue5
  localValue6(localValue7, stringHelper)
  localValue6 = SetEntityHealth
  localValue7 = localValue2
  stringHelper = localValue5
  localValue6(localValue7, stringHelper)
  localValue6 = localValue1.useArmour
  if localValue6 then
    localValue6 = SetPedArmour
    localValue7 = localValue2
    stringHelper = 100
    localValue6(localValue7, stringHelper)
  else
    localValue6 = SetPedArmour
    localValue7 = localValue2
    stringHelper = 0
    localValue6(localValue7, stringHelper)
  end
  localValue6 = SetPlayerHealthRechargeMultiplier
  localValue7 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue7 = localValue7()
  stringHelper = 0.0
  localValue6(localValue7, stringHelper)
  localValue6 = SetPlayerWeaponDamageModifier
  localValue7 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue7 = localValue7()
  stringHelper = 1.0
  localValue6(localValue7, stringHelper)
  localValue6 = SetPlayerWeaponDefenseModifier
  localValue7 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue7 = localValue7()
  stringHelper = 1.0
  localValue6(localValue7, stringHelper)
  localValue6 = SetPlayerMeleeWeaponDamageModifier
  localValue7 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue7 = localValue7()
  stringHelper = 1.0
  localValue6(localValue7, stringHelper)
  localValue6 = SetEntityProofs
  localValue7 = localValue2
  stringHelper = false
  workingValue59 = false
  stringHelper2 = false
  stateFlag = false
  stateFlag3 = false
  stateFlag5 = false
  heading = false
  stateFlag7 = false
  localValue6(localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7)
  localValue6 = workingValue26
  localValue7 = localValue1.team
  stringHelper = localValue1.isFFA
  localValue6(localValue7, stringHelper)
  localValue6 = TriggerEvent
  localValue7 = "259d5b120c"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "259d5b120c".
  localValue6(localValue7)
  localValue6 = SetCanAttackFriendly
  localValue7 = localValue2
  stringHelper = false
  workingValue59 = false
  localValue6(localValue7, stringHelper, workingValue59)
  localValue6 = SetPlayerCanDoDriveBy
  localValue7 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue7 = localValue7()
  stringHelper = localValue1.worldMode
  stringHelper = true == stringHelper
  localValue6(localValue7, stringHelper)
  localValue6 = localValue1.disableCoverPeek
  if localValue6 then
    localValue6 = SetPlayerCanUseCover
    localValue7 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue7 = localValue7()
    stringHelper = false
    localValue6(localValue7, stringHelper)
    localValue6 = SetPedConfigFlag
    localValue7 = localValue2
    stringHelper = 427
    workingValue59 = false
    localValue6(localValue7, stringHelper, workingValue59)
  else
    localValue6 = SetPlayerCanUseCover
    localValue7 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue7 = localValue7()
    stringHelper = true
    localValue6(localValue7, stringHelper)
  end
  localValue6 = SetPedPathCanUseLadders
  localValue7 = localValue2
  stringHelper = false
  localValue6(localValue7, stringHelper)
  localValue6 = RefillAmmoInstantly
  localValue7 = localValue2
  localValue6(localValue7)
  localValue6 = localValue1.weaponModel
  if localValue6 then
    localValue6 = workingValue29
    localValue7 = localValue2
    stringHelper = localValue1.weaponModel
    localValue6(localValue7, stringHelper)
  end
  localValue6 = dataCollection.combat
  localValue7 = workingValue28
  localValue7 = localValue7()
  localValue6.fingerprint = localValue7
  localValue6 = TriggerServerEvent
  localValue7 = "27d78c6395"
  stringHelper = localValue1.matchId
  workingValue59 = dataCollection.combat
  workingValue59 = workingValue59.fingerprint
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "27d78c6395".
  localValue6(localValue7, stringHelper, workingValue59)
end
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2
  localValue1 = dataCollection.fighting
  return localValue1
end
cmgOperation6.inArena = cmgOperation7
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2
  localValue1 = dataCollection.warmup
  localValue1 = nil ~= localValue1
  return localValue1
end
cmgOperation6.inArenaWarmup = cmgOperation7
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2
  localValue1 = dataCollection.preview
  return localValue1
end
cmgOperation6.inArenaMapPreview = cmgOperation7
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2
  localValue1 = dataCollection.match
  if not localValue1 then
    localValue1 = {}
    return localValue1
  end
  localValue1 = {}
  localValue2 = pairs
  localValue3 = dataCollection.match
  localValue3 = localValue3.players
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    stringHelper = localValue7.alive
    if false ~= stringHelper then
      stringHelper = #localValue1
      stringHelper = stringHelper + 1
      workingValue59 = {}
      workingValue59.source = localValue6
      stringHelper2 = localValue7.team
      workingValue59.team = stringHelper2
      stringHelper2 = localValue7.name
      workingValue59.name = stringHelper2
      workingValue59.alive = true
      localValue1[stringHelper] = workingValue59
    end
  end
  return localValue1
end
cmgOperation6.getPlayersInWager = cmgOperation7
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2
  localValue1 = dataCollection.match
  if not localValue1 then
    return
  end
  localValue1 = GetPlayerServerId
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  -- Beginner: result below is serverId.
  localValue1 = localValue1(localValue2)
  localValue2 = dataCollection.match
  localValue2 = localValue2.players
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = dataCollection.match
    localValue2 = localValue2.players
    localValue2 = localValue2[localValue1]
    localValue2.alive = false
  end
end
cmgOperation6.markArenaPlayerDead = cmgOperation7
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2
  localValue1 = dataCollection.spectate
  localValue1 = nil ~= localValue1
  return localValue1
end
cmgOperation6.isArenaSpectating = cmgOperation7
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2
  localValue1 = dataCollection.lastWagerEndedAt
  if localValue1 > 0 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    localValue2 = dataCollection.lastWagerEndedAt
    localValue1 = localValue1 - localValue2
    localValue2 = number
    if localValue1 < localValue2 then
      localValue1 = true
      return localValue1
    end
  end
  localValue1 = dataCollection.fighting
  if not localValue1 then
    localValue1 = dataCollection.warmup
    localValue1 = nil ~= localValue1
  end
  return localValue1
end
cmgOperation6.shouldSuppressCombatTimer = cmgOperation7
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2
  localValue1 = dataCollection.fighting
  if not localValue1 then
    localValue1 = dataCollection.warmup
    localValue1 = nil ~= localValue1
  end
  return localValue1
end
cmgOperation6.shouldSkipSavedPosition = cmgOperation7
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2
  localValue1 = workingValue51
  return localValue1
end
cmgOperation6.getArenaSpectatePedOffsetZ = cmgOperation7
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2
  localValue1 = dataCollection.spectate
  if localValue1 then
    localValue1 = dataCollection.spectate
    localValue1 = localValue1.players
    if localValue1 then
      goto continueAtStep11
    end
  end
  localValue1 = {}
  return localValue1
  ::continueAtStep11::
  localValue1 = dataCollection.spectate
  localValue1 = localValue1.players
  return localValue1
end
cmgOperation6.getArenaSpectatePlayers = cmgOperation7
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: localValue1) ===
function cmgOperation7(localValue1)
  local localValue2
  localValue2 = dataCollection.match
  if not localValue2 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = dataCollection.match
  localValue2 = localValue2.flags
  localValue2 = localValue2[localValue1]
  return localValue2
end
cmgOperation6.getCurrentWagerFlag = cmgOperation7
cmgOperation6 = 0
cmgOperation7 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: none) ===
function workingValue35()
  local localValue1, localValue2
  localValue1 = cmgOperation6
  localValue1 = localValue1 > 0
  return localValue1
end
cmgOperation7.isAtArenaWagerHub = workingValue35

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2
  localValue1 = cmgOperation6
  localValue1 = localValue1 + 1
  cmgOperation6 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: none) ===
function workingValue35()
  local localValue1, localValue2, localValue3
  localValue1 = math
  localValue1 = localValue1.max
  localValue2 = 0
  localValue3 = cmgOperation6
  localValue3 = localValue3 - 1
  localValue1 = localValue1(localValue2, localValue3)
  cmgOperation6 = localValue1
  localValue1 = workingValue21
  localValue1()
end

-- === HELPER FUNCTION (decompiler name: workingValue36; parameters: none) ===
function workingValue36()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4, number5, number7, stateFlag12, stateFlag14, stateFlag16, number8, number9, number10, number11, number12, stateFlag17, stateFlag18, stateFlag19
  localValue1 = ipairs
  localValue2 = cmgOperation.wagerMarkers
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = localValue6.blip
    if localValue7 then
      localValue7 = tCMG
      localValue7 = localValue7.addBlip
      stringHelper = localValue6.coords
      stringHelper = stringHelper.x
      workingValue59 = localValue6.coords
      workingValue59 = workingValue59.y
      stringHelper2 = localValue6.coords
      stringHelper2 = stringHelper2.z
      stateFlag = localValue6.blip
      stateFlag = stateFlag.sprite
      if not stateFlag then
        stateFlag = 437
      end
      stateFlag3 = localValue6.blip
      stateFlag3 = stateFlag3.colour
      stateFlag5 = localValue6.label
      -- Beginner: Create a minimap blip.
      localValue7(stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5)
    end
    localValue7 = tCMG
    localValue7 = localValue7.addMarker
    stringHelper = localValue6.coords
    stringHelper = stringHelper.x
    workingValue59 = localValue6.coords
    workingValue59 = workingValue59.y
    stringHelper2 = localValue6.coords
    stringHelper2 = stringHelper2.z
    stringHelper2 = stringHelper2 - 1.0
    stateFlag = 5.5
    stateFlag3 = 5.5
    stateFlag5 = 2.291666666666667
    heading = 74
    stateFlag7 = 144
    stateFlag9 = 245
    cmgOperation4 = 110
    number5 = 150
    number7 = 1
    stateFlag12 = false
    stateFlag14 = false
    stateFlag16 = false
    -- Beginner: Create a world marker.
    localValue7(stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4, number5, number7, stateFlag12, stateFlag14, stateFlag16)
    localValue7 = 0

    -- === HELPER FUNCTION: stringHelper() ===
    function stringHelper()
      local workingValue, playerPed, iterator, dataCollection4, stateFlag22, stateFlag23
      workingValue = dataCollection.fighting
      if not workingValue then
        workingValue = dataCollection.spectate
        if not workingValue then
          goto continueAtStep8
        end
      end
      return
      ::continueAtStep8::
      workingValue = localValue6.permission
      if workingValue then
        workingValue = CMG
        workingValue = workingValue.hasClientPermission
        playerPed = localValue6.permission
        workingValue = workingValue(playerPed)
        if not workingValue then
          return
        end
      end
      workingValue = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      workingValue = workingValue()
      playerPed = localValue7
      playerPed = workingValue - playerPed
      iterator = 2000
      if playerPed > iterator then
        playerPed = BeginTextCommandDisplayHelp
        iterator = "STRING"
        playerPed(iterator)
        playerPed = AddTextComponentSubstringPlayerName
        iterator = workingValue3
        dataCollection4 = "client.hubOpenMenu"
        iterator, dataCollection4, stateFlag22, stateFlag23 = iterator(dataCollection4)
        playerPed(iterator, dataCollection4, stateFlag22, stateFlag23)
        playerPed = EndTextCommandDisplayHelp
        iterator = 0
        dataCollection4 = false
        stateFlag22 = false
        stateFlag23 = -1
        playerPed(iterator, dataCollection4, stateFlag22, stateFlag23)
        localValue7 = workingValue
      end
      playerPed = IsControlJustPressed
      iterator = 0
      dataCollection4 = 38
      playerPed = playerPed(iterator, dataCollection4)
      if playerPed then
        playerPed = workingValue20
        playerPed()
      end
    end
    workingValue59 = CMG
    workingValue59 = workingValue59.createArea
    stringHelper2 = "arena_hub_"
    stateFlag = localValue6.id
    stringHelper2 = stringHelper2 .. stateFlag
    stateFlag = localValue6.coords
    stateFlag3 = 2.9
    stateFlag5 = 5.0
    heading = cmgOperation7
    stateFlag7 = workingValue35
    stateFlag9 = stringHelper
    cmgOperation4 = nil
    -- Beginner: Create an interaction area around a world position.
    workingValue59(stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4)
    workingValue59 = localValue6.spectatorMarkers
    if workingValue59 then
      workingValue59 = ipairs
      stringHelper2 = localValue6.spectatorMarkers
      workingValue59, stringHelper2, stateFlag, stateFlag3 = workingValue59(stringHelper2)
      for stateFlag5, heading in workingValue59, stringHelper2, stateFlag, stateFlag3 do
        stateFlag7 = tCMG
        stateFlag7 = stateFlag7.addMarker
        stateFlag9 = heading.x
        cmgOperation4 = heading.y
        number5 = heading.z
        number5 = number5 - 1.0
        number7 = 3.5
        stateFlag12 = 3.5
        stateFlag14 = 1.4583333333333335
        stateFlag16 = 108
        number8 = 164
        number9 = 250
        number10 = 90
        number11 = 120
        number12 = 1
        stateFlag17 = false
        stateFlag18 = false
        stateFlag19 = false
        -- Beginner: Create a world marker.
        stateFlag7(stateFlag9, cmgOperation4, number5, number7, stateFlag12, stateFlag14, stateFlag16, number8, number9, number10, number11, number12, stateFlag17, stateFlag18, stateFlag19)
        stateFlag7 = 0

        -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
        function stateFlag9()
          local workingValue, playerPed, iterator, dataCollection4, stateFlag22, stateFlag23
          workingValue = dataCollection.fighting
          if not workingValue then
            workingValue = dataCollection.spectate
            if not workingValue then
              goto continueAtStep8
            end
          end
          return
          ::continueAtStep8::
          workingValue = localValue6.permission
          if workingValue then
            workingValue = CMG
            workingValue = workingValue.hasClientPermission
            playerPed = localValue6.permission
            workingValue = workingValue(playerPed)
            if not workingValue then
              return
            end
          end
          workingValue = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          workingValue = workingValue()
          playerPed = stateFlag7
          playerPed = workingValue - playerPed
          iterator = 2000
          if playerPed > iterator then
            playerPed = BeginTextCommandDisplayHelp
            iterator = "STRING"
            playerPed(iterator)
            playerPed = AddTextComponentSubstringPlayerName
            iterator = workingValue3
            dataCollection4 = "client.spectateMarkerOpen"
            iterator, dataCollection4, stateFlag22, stateFlag23 = iterator(dataCollection4)
            playerPed(iterator, dataCollection4, stateFlag22, stateFlag23)
            playerPed = EndTextCommandDisplayHelp
            iterator = 0
            dataCollection4 = false
            stateFlag22 = false
            stateFlag23 = -1
            playerPed(iterator, dataCollection4, stateFlag22, stateFlag23)
            stateFlag7 = workingValue
          end
          playerPed = IsControlJustPressed
          iterator = 0
          dataCollection4 = 38
          playerPed = playerPed(iterator, dataCollection4)
          if playerPed then
            playerPed = workingValue20
            playerPed()
          end
        end
        cmgOperation4 = CMG
        cmgOperation4 = cmgOperation4.createArea
        number5 = "arena_spectate_"
        number7 = localValue6.id
        stateFlag12 = "_"
        stateFlag14 = stateFlag5
        number5 = number5 .. number7 .. stateFlag12 .. stateFlag14
        number7 = heading
        stateFlag12 = 2.2
        stateFlag14 = 4.0
        stateFlag16 = cmgOperation7
        number8 = workingValue35
        number9 = stateFlag9
        number10 = nil
        -- Beginner: Create an interaction area around a world position.
        cmgOperation4(number5, number7, stateFlag12, stateFlag14, stateFlag16, number8, number9, number10)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue37; parameters: none) ===
function workingValue37()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.refreshNearbyMarkers
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.forceNearbyAreasReload
  localValue1()
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue38; parameters: none) ===
function workingValue38()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = workingValue36
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.createNoVehicleZone
  localValue2 = cmgOperation.arenaCentre
  localValue3 = 31.0
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(workingValue38)
backgroundThread = nil
workingValue38 = vector2
number16 = 8.0
number17 = 8.0
workingValue38 = workingValue38(number16, number17)
number16 = 0

-- === HELPER FUNCTION (decompiler name: number17; parameters: localValue1) ===
function number17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7
  localValue2 = backgroundThread
  if not localValue2 then
    localValue2 = Scaleform
    localValue3 = "mp_mission_name_freemode"
    localValue2 = localValue2(localValue3)
  end
  backgroundThread = localValue2
  localValue3 = localValue2.RunFunction
  localValue4 = "SET_MISSION_INFO"
  localValue5 = {}
  localValue6 = ""
  localValue7 = workingValue3
  stringHelper = "client.hubMarkerTitle"
  localValue7 = localValue7(stringHelper)
  stringHelper = ""
  workingValue59 = ""
  stringHelper2 = ""
  stateFlag = ""
  stateFlag3 = localValue1
  stateFlag5 = "0"
  heading = ""
  stateFlag7 = ""
  localValue5[1] = localValue6
  localValue5[2] = localValue7
  localValue5[3] = stringHelper
  localValue5[4] = workingValue59
  localValue5[5] = stringHelper2
  localValue5[6] = stateFlag
  localValue5[7] = stateFlag3
  localValue5[8] = stateFlag5
  localValue5[9] = heading
  localValue5[10] = stateFlag7
  localValue3(localValue4, localValue5)
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue39; parameters: none) ===
function workingValue39()
  local localValue1, localValue2
  localValue1 = backgroundThread
  if not localValue1 then
    localValue1 = number17
    localValue2 = number16
    localValue1(localValue2)
  end
  localValue1 = backgroundThread
  return localValue1
end
eventHandler2 = RegisterNetEvent
cmgOperation8 = "e0468ae598"
-- Beginner: this function handles network event "e0468ae598".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3
  localValue2 = tonumber
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = 0
  end
  number16 = localValue2
  localValue2 = number17
  localValue3 = number16
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e0468ae598".
eventHandler2(cmgOperation8, text4)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2) ===
function eventHandler2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  localValue3 = localValue2 - localValue1
  localValue4 = localValue3.x
  if localValue4 > 0.0 then
    localValue4 = math
    localValue4 = localValue4.atan
    localValue5 = localValue3.y
    localValue6 = localValue3.x
    localValue5 = localValue5 / localValue6
    localValue4 = localValue4(localValue5)
    localValue5 = math
    localValue5 = localValue5.pi
    localValue6 = 180.0
    localValue5 = localValue6 / localValue5
    localValue4 = localValue4 * localValue5
    localValue5 = 270.0
    localValue4 = localValue5 - localValue4
    return localValue4
  else
    localValue4 = localValue3.x
    if localValue4 < 0.0 then
      localValue4 = math
      localValue4 = localValue4.atan
      localValue5 = localValue3.y
      localValue6 = localValue3.x
      localValue6 = -localValue6
      localValue5 = localValue5 / localValue6
      localValue4 = localValue4(localValue5)
      localValue5 = math
      localValue5 = localValue5.pi
      localValue6 = 180.0
      localValue5 = localValue6 / localValue5
      localValue4 = localValue4 * localValue5
      localValue4 = localValue4 + 90.0
      return localValue4
    end
  end
  localValue4 = 0.0
  return localValue4
end
cmgOperation8 = Citizen
cmgOperation8 = cmgOperation8.CreateThread

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4
  while true do
    localValue1 = 1000
    localValue2 = dataCollection.fighting
    if not localValue2 then
      localValue2 = dataCollection.spectate
      if not localValue2 then
        localValue2 = dataCollection.warmup
        if not localValue2 then
          localValue2 = GetEntityCoords
          localValue3 = PlayerPedId
          localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4 = localValue3()
          -- Beginner: result below is entityCoords.
          localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4)
          localValue3 = nil
          localValue4 = ipairs
          localValue5 = cmgOperation.wagerMarkers
          localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
          for stringHelper, workingValue59 in localValue4, localValue5, localValue6, localValue7 do
            stringHelper2 = workingValue59.coords
            stringHelper2 = localValue2 - stringHelper2
            stringHelper2 = #stringHelper2
            if stringHelper2 < 25.0 then
              localValue1 = 0
              if not localValue3 then
                stringHelper2 = workingValue39
                stringHelper2 = stringHelper2()
                localValue3 = stringHelper2
              end
              stringHelper2 = vector3
              stateFlag = workingValue59.coords
              stateFlag = stateFlag.x
              stateFlag3 = workingValue59.coords
              stateFlag3 = stateFlag3.y
              stateFlag5 = workingValue59.coords
              stateFlag5 = stateFlag5.z
              stateFlag5 = stateFlag5 - 0.5
              stringHelper2 = stringHelper2(stateFlag, stateFlag3, stateFlag5)
              stateFlag = eventHandler2
              stateFlag3 = stringHelper2
              stateFlag5 = localValue2
              stateFlag = stateFlag(stateFlag3, stateFlag5)
              stateFlag3 = localValue3.Render3D
              stateFlag5 = stringHelper2
              heading = vector3
              stateFlag7 = 0.0
              stateFlag9 = 0.0
              cmgOperation4 = stateFlag
              heading = heading(stateFlag7, stateFlag9, cmgOperation4)
              stateFlag7 = workingValue38
              stateFlag3(stateFlag5, heading, stateFlag7)
            end
          end
        end
      end
    end
    localValue2 = Wait
    localValue3 = localValue1
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation8(text4)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaClose"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = workingValue21
  localValue1()
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaRequestSync"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "37d8fd04c4"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "37d8fd04c4".
  localValue1(localValue2)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaRequestLeaderboard"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "2f0b74a153"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2f0b74a153".
  localValue1(localValue2)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaRequestTournamentHistory"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "0cd5c10b96"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0cd5c10b96".
  localValue1(localValue2)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaRequestTournamentHistoryDetail"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "62ee4806be"
  localValue4 = localValue1 or localValue4
  if localValue1 then
    localValue4 = localValue1.id
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "62ee4806be".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaSaveCreatePrefs"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue12
  localValue3 = localValue1
  localValue2(localValue3)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaPropose"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue12
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = TriggerServerEvent
  localValue3 = "e37d8c11ce"
  localValue4 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e37d8c11ce".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaSaveMapsPrefs"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue18
  localValue3 = localValue1
  localValue2(localValue3)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaJoin"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = TriggerServerEvent
  localValue3 = "ff4c695c54"
  localValue4 = localValue1.lobbyId
  localValue5 = localValue1.team
  localValue6 = localValue1.password
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ff4c695c54".
  localValue2(localValue3, localValue4, localValue5, localValue6)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaLeave"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "da3a5c87e9"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3a5c87e9".
  localValue1(localValue2)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaSetReady"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "982370d572"
  localValue4 = localValue1 or localValue4
  if localValue1 then
    localValue4 = localValue1.ready
    localValue4 = true == localValue4
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "982370d572".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaSetAllowUneven"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "5cfc0fc0db"
  localValue4 = localValue1 or localValue4
  if localValue1 then
    localValue4 = localValue1.stateFlag
    localValue4 = true == localValue4
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5cfc0fc0db".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaKick"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "960630ff5b"
  localValue4 = localValue1.targetUid
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "960630ff5b".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaRandomiseTeams"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "f23608a75f"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f23608a75f".
  localValue1(localValue2)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaCancel"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "51e5dd4f86"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "51e5dd4f86".
  localValue1(localValue2)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaForceStart"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "ead9a2f7c1"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ead9a2f7c1".
  localValue1(localValue2)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaStartAiTest"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue12
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = TriggerServerEvent
  localValue3 = "964ff47d86"
  localValue4 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "964ff47d86".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaQueueRanked"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "7c3f412810"
  localValue4 = localValue1 or localValue4
  if localValue1 then
    localValue4 = localValue1.mode
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7c3f412810".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaLeaveQueue"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "ad9560f394"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ad9560f394".
  localValue1(localValue2)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaSpectate"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "8b568e2353"
  localValue4 = localValue1.matchId
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8b568e2353".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaStopSpectate"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "7d900d0299"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7d900d0299".
  localValue1(localValue2)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaToggleFavourite"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "0b7db7ef96"
  localValue4 = localValue1.map
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0b7db7ef96".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaCreateTournament"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "cd1e60d311"
  localValue4 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cd1e60d311".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaStartAiTestTournament"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "d2792e55c1"
  localValue4 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d2792e55c1".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaTournamentSignup"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "ad6f1ed6de"
  localValue4 = localValue1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ad6f1ed6de".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaTournamentLeave"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "3699f0344c"
  localValue4 = localValue1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3699f0344c".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaTournamentReady"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "7c5c6b46a5"
  localValue4 = localValue1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7c5c6b46a5".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaTournamentBanMap"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = TriggerServerEvent
  localValue3 = "d37a4a5018"
  localValue4 = localValue1 or localValue4
  if localValue1 then
    localValue4 = localValue1.id
  end
  localValue5 = localValue1 or localValue5
  if localValue1 then
    localValue5 = localValue1.map
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d37a4a5018".
  localValue2(localValue3, localValue4, localValue5)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaTeamCreate"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = TriggerServerEvent
  localValue3 = "d852716b1b"
  localValue4 = localValue1.id
  localValue5 = localValue1.name
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d852716b1b".
  localValue2(localValue3, localValue4, localValue5)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaTeamInvite"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = TriggerServerEvent
  localValue3 = "aca0bcc361"
  localValue4 = localValue1.id
  localValue5 = localValue1.targetUid
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "aca0bcc361".
  localValue2(localValue3, localValue4, localValue5)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaTeamAccept"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "a5e84468f0"
  localValue4 = localValue1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a5e84468f0".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaTeamDecline"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "3b31d48e60"
  localValue4 = localValue1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3b31d48e60".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaTeamLeave"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "9b4169b569"
  localValue4 = localValue1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9b4169b569".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaTeamKick"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = TriggerServerEvent
  localValue3 = "9dc55ae45d"
  localValue4 = localValue1.id
  localValue5 = localValue1.targetUid
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9dc55ae45d".
  localValue2(localValue3, localValue4, localValue5)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaStartTournament"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "91edec2c38"
  localValue4 = localValue1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "91edec2c38".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaCancelTournament"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "3521b0b97b"
  localValue4 = localValue1.id
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3521b0b97b".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaJoinWarmup"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "5a7f5f8b12"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5a7f5f8b12".
  localValue1(localValue2)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaPreviewMap"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "e6ed8d0b17"
  localValue4 = localValue1 or localValue4
  if localValue1 then
    localValue4 = localValue1.map
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e6ed8d0b17".
  localValue2(localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaForfeit"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = workingValue23
  localValue1()
  localValue1 = TriggerServerEvent
  localValue2 = "43967a02a0"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "43967a02a0".
  localValue1(localValue2)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaForfeitCancel"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = workingValue23
  localValue1()
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text4 = "arenaOpenSettings"

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = workingValue23
  localValue1()
  localValue1 = ActivateFrontendMenu
  localValue2 = GetHashKey
  localValue3 = "FE_MENU_VERSION_SP_PAUSE"
  -- Beginner: result below is hash.
  localValue2 = localValue2(localValue3)
  localValue3 = false
  localValue4 = -1
  localValue1(localValue2, localValue3, localValue4)
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = RegisterNetEvent
text4 = "c15b8fcdc0"
-- Beginner: this function handles network event "c15b8fcdc0".

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  dataCollection.lastSync = localValue1
  localValue2 = localValue1.myRank
  dataCollection.myRank = localValue2
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" == localValue2 then
    localValue2 = type
    localValue3 = localValue1.favourites
    localValue2 = localValue2(localValue3)
    if "table" == localValue2 then
      localValue2 = workingValue18
      localValue3 = {}
      localValue4 = localValue1.favourites
      localValue3.favourites = localValue4
      localValue2(localValue3)
    end
  end
  localValue2 = dataCollection.appOpen
  if localValue2 then
    localValue2 = workingValue10
    localValue3 = "ARENA_SYNC"
    localValue4 = localValue1
    localValue2(localValue3, localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c15b8fcdc0".
cmgOperation8(text4, eventHandler3)
cmgOperation8 = RegisterNetEvent
text4 = "82b1a5ab63"
-- Beginner: this function handles network event "82b1a5ab63".

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2
  dataCollection.lobbyId = localValue1
end
cmgOperation8(text4, eventHandler3)
cmgOperation8 = RegisterNetEvent
text4 = "542eed18ed"
-- Beginner: this function handles network event "542eed18ed".

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4
  dataCollection.lobbyId = nil
  if "kicked" == localValue1 then
    localValue2 = tCMG
    localValue2 = localValue2.notify
    localValue3 = workingValue3
    localValue4 = "client.leftLobbyRemoved"
    localValue3, localValue4 = localValue3(localValue4)
    -- Beginner: Show a notification to the player.
    localValue2(localValue3, localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "542eed18ed".
cmgOperation8(text4, eventHandler3)
cmgOperation8 = RegisterNetEvent
text4 = "c5774316e0"
-- Beginner: this function handles network event "c5774316e0".

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" == localValue2 then
    localValue2 = localValue1.type
    if "bad" == localValue2 then
      localValue2 = "~r~"
      if localValue2 then
        goto continueAtStep19
      end
    end
    localValue2 = localValue1.type
    if "good" == localValue2 then
      localValue2 = "~g~"
      if localValue2 then
        goto continueAtStep19
      end
    end
    localValue2 = "~y~"
    ::continueAtStep19::
    localValue3 = localValue1.msg
    if localValue3 then
      localValue3 = tCMG
      localValue3 = localValue3.notify
      localValue4 = localValue2
      localValue5 = localValue1.msg
      localValue4 = localValue4 .. localValue5
      -- Beginner: Show a notification to the player.
      localValue3(localValue4)
    end
    localValue3 = dataCollection.appOpen
    if localValue3 then
      localValue3 = workingValue10
      localValue4 = "ARENA_NOTIFY"
      localValue5 = localValue1
      localValue3(localValue4, localValue5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c5774316e0".
cmgOperation8(text4, eventHandler3)
cmgOperation8 = cmgOperation.tournament
if cmgOperation8 then
  cmgOperation8 = cmgOperation.tournament
  cmgOperation8 = cmgOperation8.startCountdownSec
  if cmgOperation8 then
    goto continueAtStep418
  end
end
cmgOperation8 = 300
::continueAtStep418::

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4, number5
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" ~= localValue2 then
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.getClientUserId
  -- Beginner: result below is userId.
  localValue2 = localValue2()
  if not localValue2 then
    localValue3 = CMG
    localValue3 = localValue3.removeHudTimer
    localValue4 = "arenaTournamentStart"
    localValue3(localValue4)
    return
  end
  localValue3 = nil
  localValue4 = nil
  localValue5 = ipairs
  localValue6 = localValue1.tournaments
  if not localValue6 then
    localValue6 = {}
  end
  localValue5, localValue6, localValue7, stringHelper = localValue5(localValue6)
  for workingValue59, stringHelper2 in localValue5, localValue6, localValue7, stringHelper do
    if not localValue3 then
      stateFlag = stringHelper2.serverNow
      if stateFlag then
        localValue3 = stringHelper2.serverNow
      end
    end
    stateFlag = stringHelper2.status
    if "signup" == stateFlag then
      stateFlag = stringHelper2.startsAt
      if stateFlag then
        stateFlag = stringHelper2.startsAt
        if stateFlag > 0 then
          stateFlag = false
          stateFlag3 = ipairs
          stateFlag5 = stringHelper2.signups
          if not stateFlag5 then
            stateFlag5 = {}
          end
          stateFlag3, stateFlag5, heading, stateFlag7 = stateFlag3(stateFlag5)
          for stateFlag9, cmgOperation4 in stateFlag3, stateFlag5, heading, stateFlag7 do
            number5 = cmgOperation4.uid
            if number5 == localValue2 then
              stateFlag = true
              break
            end
          end
          if stateFlag then
            stateFlag3 = localValue3 or stateFlag3
            if not localValue3 then
              stateFlag3 = CMG
              stateFlag3 = stateFlag3.getEstimatedServerOsTime
              stateFlag3 = stateFlag3()
            end
            stateFlag5 = stringHelper2.startsAt
            stateFlag5 = stateFlag5 - stateFlag3
            if stateFlag5 > 0 then
              heading = cmgOperation8
              if stateFlag5 <= heading and (not localValue4 or localValue4 > stateFlag5) then
                localValue4 = stateFlag5
              end
            end
          end
        end
      end
    end
  end
  if localValue4 then
    localValue5 = CMG
    localValue5 = localValue5.addHudDurationTimer
    localValue6 = "arenaTournamentStart"
    localValue7 = workingValue3
    stringHelper = "client.tournamentStartsIn"
    localValue7 = localValue7(stringHelper)
    stringHelper = localValue4
    workingValue59 = nil
    localValue5(localValue6, localValue7, stringHelper, workingValue59)
  else
    localValue5 = CMG
    localValue5 = localValue5.removeHudTimer
    localValue6 = "arenaTournamentStart"
    localValue5(localValue6)
  end
end
eventHandler3 = RegisterNetEvent
text5 = "3c33249acd"
-- Beginner: this function handles network event "3c33249acd".

-- === HELPER FUNCTION (decompiler name: workingValue40; parameters: localValue1) ===
function workingValue40(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = dataCollection.appOpen
  if localValue2 then
    localValue2 = workingValue10
    localValue3 = "ARENA_TOURNAMENT_STATE"
    localValue4 = localValue1
    localValue2(localValue3, localValue4)
  end
  localValue2 = text4
  localValue3 = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3c33249acd".
eventHandler3(text5, workingValue40)
eventHandler3 = RegisterNetEvent
text5 = "b8045c5c1d"
-- Beginner: this function handles network event "b8045c5c1d".

-- === HELPER FUNCTION (decompiler name: workingValue40; parameters: localValue1) ===
function workingValue40(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue10
  localValue3 = "ARENA_LEADERBOARD"
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b8045c5c1d".
eventHandler3(text5, workingValue40)
eventHandler3 = RegisterNetEvent
text5 = "7896cbfe43"
-- Beginner: this function handles network event "7896cbfe43".

-- === HELPER FUNCTION (decompiler name: workingValue40; parameters: localValue1) ===
function workingValue40(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue10
  localValue3 = "ARENA_TOURNAMENT_HISTORY"
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7896cbfe43".
eventHandler3(text5, workingValue40)
eventHandler3 = RegisterNetEvent
text5 = "b128d3a788"
-- Beginner: this function handles network event "b128d3a788".

-- === HELPER FUNCTION (decompiler name: workingValue40; parameters: localValue1) ===
function workingValue40(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue10
  localValue3 = "ARENA_TOURNAMENT_HISTORY_DETAIL"
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b128d3a788".
eventHandler3(text5, workingValue40)
-- Beginner: this function handles network event "b128d3a788".

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper
  localValue1 = ipairs
  localValue2 = dataCollection.loadedIpls
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = RemoveIpl
    stringHelper = localValue6
    localValue7(stringHelper)
  end
  localValue1 = {}
  dataCollection.loadedIpls = localValue1
  localValue1 = ipairs
  localValue2 = dataCollection.spawnedProps
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = DoesEntityExist
    stringHelper = localValue6
    localValue7 = localValue7(stringHelper)
    if localValue7 then
      localValue7 = DeleteEntity
      stringHelper = localValue6
      -- Beginner: Delete a GTA entity.
      localValue7(stringHelper)
    end
  end
  localValue1 = {}
  dataCollection.spawnedProps = localValue1
  localValue1 = dataCollection.hopOutVehicle
  if localValue1 then
    localValue1 = DoesEntityExist
    localValue2 = dataCollection.hopOutVehicle
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = DeleteEntity
      localValue2 = dataCollection.hopOutVehicle
      localValue1(localValue2)
    end
  end
  dataCollection.hopOutVehicle = nil
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag
  localValue2 = CMG
  localValue2 = localValue2.setEventSpectatorMode
  localValue3 = false
  localValue2(localValue3)
  localValue2 = dataCollection.spectate
  if localValue2 then
    dataCollection.spectate = nil
    localValue2 = workingValue10
    localValue3 = "ARENA_SPECTATE_STATE"
    localValue4 = {}
    localValue4.active = false
    localValue2(localValue3, localValue4)
    localValue2 = workingValue10
    localValue3 = "ARENA_MATCH_HUD"
    localValue4 = false
    localValue2(localValue3, localValue4)
  end
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = FreezeEntityPosition
  localValue4 = localValue2
  localValue5 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(localValue4, localValue5)
  if localValue1 then
    localValue3 = localValue1.x
    if localValue3 then
      localValue3 = localValue1.y
      if localValue3 then
        localValue3 = localValue1.z
        if localValue3 then
          localValue3 = SetEntityCoords
          localValue4 = localValue2
          localValue5 = localValue1.x
          localValue6 = localValue1.y
          localValue7 = localValue1.z
          localValue7 = localValue7 - 1.0
          stringHelper = false
          workingValue59 = false
          stringHelper2 = false
          stateFlag = false
          -- Beginner: Move/teleport an entity to new coordinates.
          localValue3(localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag)
          localValue3 = vector3
          localValue4 = localValue1.x
          localValue5 = localValue1.y
          localValue6 = localValue1.z
          localValue3 = localValue3(localValue4, localValue5, localValue6)
          localValue4 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue4 = localValue4()
          localValue5 = number21
          localValue4 = localValue4 + localValue5
          while true do
            localValue5 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            localValue5 = localValue5()
            if not (localValue4 > localValue5) then
              break
            end
            localValue5 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            localValue5 = localValue5()
            localValue2 = localValue5
            localValue5 = GetEntityCoords
            localValue6 = localValue2
            -- Beginner: result below is entityCoords.
            localValue5 = localValue5(localValue6)
            localValue6 = localValue5 - localValue3
            localValue6 = #localValue6
            localValue7 = number20
            if localValue6 <= localValue7 then
              localValue6 = HasCollisionLoadedAroundEntity
              localValue7 = localValue2
              localValue6 = localValue6(localValue7)
              if localValue6 then
                break
              end
            end
            localValue6 = RequestCollisionAtCoord
            localValue7 = localValue1.x
            stringHelper = localValue1.y
            workingValue59 = localValue1.z
            localValue6(localValue7, stringHelper, workingValue59)
            localValue6 = Wait
            localValue7 = 50
            localValue6(localValue7)
          end
      end
    end
  end
  else
    localValue3 = Wait
    localValue4 = 150
    localValue3(localValue4)
  end
  localValue3 = workingValue9
  localValue3()
end

-- === HELPER FUNCTION (decompiler name: workingValue40; parameters: localValue1) ===
function workingValue40(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4
  if not localValue1 then
    return
  end
  localValue2 = {}
  localValue3 = ipairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, stringHelper in localValue3, localValue4, localValue5, localValue6 do
    localValue2[stringHelper] = true
  end
  localValue3 = {}
  localValue4 = ipairs
  localValue5 = dataCollection.loadedIpls
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for stringHelper, workingValue59 in localValue4, localValue5, localValue6, localValue7 do
    stringHelper2 = localValue2[workingValue59]
    if stringHelper2 then
      stringHelper2 = #localValue3
      stringHelper2 = stringHelper2 + 1
      localValue3[stringHelper2] = workingValue59
    else
      stringHelper2 = RemoveIpl
      stateFlag = workingValue59
      stringHelper2(stateFlag)
    end
  end
  dataCollection.loadedIpls = localValue3
  localValue4 = ipairs
  localValue5 = localValue1
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for stringHelper, workingValue59 in localValue4, localValue5, localValue6, localValue7 do
    stringHelper2 = IsIplActive
    stateFlag = workingValue59
    stringHelper2 = stringHelper2(stateFlag)
    if not stringHelper2 then
      stringHelper2 = RequestIpl
      stateFlag = workingValue59
      stringHelper2(stateFlag)
    end
    stringHelper2 = false
    stateFlag = ipairs
    stateFlag3 = dataCollection.loadedIpls
    stateFlag, stateFlag3, stateFlag5, heading = stateFlag(stateFlag3)
    for stateFlag7, stateFlag9 in stateFlag, stateFlag3, stateFlag5, heading do
      if stateFlag9 == workingValue59 then
        stringHelper2 = true
        break
      end
    end
    if not stringHelper2 then
      stateFlag = dataCollection.loadedIpls
      stateFlag3 = dataCollection.loadedIpls
      stateFlag3 = #stateFlag3
      stateFlag3 = stateFlag3 + 1
      stateFlag[stateFlag3] = workingValue59
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue41; parameters: localValue1) ===
function workingValue41(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7
  if not localValue1 then
    return
  end
  localValue2 = ipairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    stringHelper = CMG
    stringHelper = stringHelper.loadModel
    workingValue59 = localValue7.model
    -- Beginner: Request/load a GTA model before spawning or applying it.
    stringHelper(workingValue59)
    stringHelper = CreateObjectNoOffset
    workingValue59 = localValue7.model
    stringHelper2 = localValue7.pos
    stringHelper2 = stringHelper2.x
    stateFlag = localValue7.pos
    stateFlag = stateFlag.y
    stateFlag3 = localValue7.pos
    stateFlag3 = stateFlag3.z
    stateFlag5 = false
    heading = false
    stateFlag7 = false
    -- Beginner: result below is objectEntity.
    stringHelper = stringHelper(workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7)
    workingValue59 = SetEntityHeading
    stringHelper2 = stringHelper
    stateFlag = localValue7.heading
    if not stateFlag then
      stateFlag = 0.0
    end
    -- Beginner: Change the direction an entity is facing.
    workingValue59(stringHelper2, stateFlag)
    workingValue59 = FreezeEntityPosition
    stringHelper2 = stringHelper
    stateFlag = true
    -- Beginner: Freeze or unfreeze an entity in place.
    workingValue59(stringHelper2, stateFlag)
    workingValue59 = SetModelAsNoLongerNeeded
    stringHelper2 = localValue7.model
    workingValue59(stringHelper2)
    workingValue59 = dataCollection.spawnedProps
    stringHelper2 = dataCollection.spawnedProps
    stringHelper2 = #stringHelper2
    stringHelper2 = stringHelper2 + 1
    workingValue59[stringHelper2] = stringHelper
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue42; parameters: localValue1) ===
function workingValue42(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4, number5
  if not localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = dataCollection.hopOutVehicle
  if localValue2 then
    localValue2 = DoesEntityExist
    localValue3 = dataCollection.hopOutVehicle
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = DeleteEntity
      localValue3 = dataCollection.hopOutVehicle
      -- Beginner: Delete a GTA entity.
      localValue2(localValue3)
    end
  end
  dataCollection.hopOutVehicle = nil
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = GetEntityCoords
  localValue4 = localValue2
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4)
  localValue4 = GetEntityHeading
  localValue5 = localValue2
  -- Beginner: result below is heading.
  localValue4 = localValue4(localValue5)
  localValue5 = GetHashKey
  localValue6 = localValue1
  -- Beginner: result below is hash.
  localValue5 = localValue5(localValue6)
  localValue6 = RequestModel
  localValue7 = localValue5
  localValue6(localValue7)
  localValue6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue6 = localValue6()
  localValue6 = localValue6 + 5000
  while true do
    localValue7 = HasModelLoaded
    stringHelper = localValue5
    localValue7 = localValue7(stringHelper)
    if localValue7 then
      break
    end
    localValue7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue7 = localValue7()
    if not (localValue6 > localValue7) then
      break
    end
    localValue7 = Wait
    stringHelper = 10
    localValue7(stringHelper)
  end
  localValue7 = HasModelLoaded
  stringHelper = localValue5
  localValue7 = localValue7(stringHelper)
  if not localValue7 then
    localValue7 = nil
    return localValue7
  end
  localValue7 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue7 = localValue7()
  localValue7 = localValue7 + 2000
  while true do
    stringHelper = HasCollisionLoadedAroundEntity
    workingValue59 = localValue2
    stringHelper = stringHelper(workingValue59)
    if stringHelper then
      break
    end
    stringHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    stringHelper = stringHelper()
    if not (localValue7 > stringHelper) then
      break
    end
    stringHelper = RequestCollisionAtCoord
    workingValue59 = localValue3.x
    stringHelper2 = localValue3.y
    stateFlag = localValue3.z
    stringHelper(workingValue59, stringHelper2, stateFlag)
    stringHelper = Wait
    workingValue59 = 10
    stringHelper(workingValue59)
  end
  stringHelper = GetGroundZFor_3dCoord
  workingValue59 = localValue3.x
  stringHelper2 = localValue3.y
  stateFlag = localValue3.z
  stateFlag = stateFlag + 5.0
  stateFlag3 = false
  stringHelper, workingValue59 = stringHelper(workingValue59, stringHelper2, stateFlag, stateFlag3)
  stringHelper2 = workingValue59 or stringHelper2
  if not stringHelper or not workingValue59 then
    stringHelper2 = localValue3.z
  end
  stringHelper2 = stringHelper2 + 1.0
  stateFlag = pcall
  stateFlag3 = CMG
  stateFlag3 = stateFlag3.requestEntitySpawn
  stateFlag5 = "arena_hopout"
  stateFlag(stateFlag3, stateFlag5)
  stateFlag = CreateVehicle
  stateFlag3 = localValue5
  stateFlag5 = localValue3.x
  heading = localValue3.y
  stateFlag7 = stringHelper2
  stateFlag9 = localValue4
  cmgOperation4 = true
  number5 = false
  -- Beginner: result below is vehicleEntity.
  stateFlag = stateFlag(stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4, number5)
  stateFlag3 = SetVehicleOnGroundProperly
  stateFlag5 = stateFlag
  stateFlag3(stateFlag5)
  stateFlag3 = SetPedIntoVehicle
  stateFlag5 = localValue2
  heading = stateFlag
  stateFlag7 = -1
  stateFlag3(stateFlag5, heading, stateFlag7)
  stateFlag3 = SetVehicleEngineOn
  stateFlag5 = stateFlag
  heading = true
  stateFlag7 = true
  stateFlag9 = false
  stateFlag3(stateFlag5, heading, stateFlag7, stateFlag9)
  stateFlag3 = SetEntityAsMissionEntity
  stateFlag5 = stateFlag
  heading = true
  stateFlag7 = true
  stateFlag3(stateFlag5, heading, stateFlag7)
  stateFlag3 = FreezeEntityPosition
  stateFlag5 = stateFlag
  heading = true
  -- Beginner: Freeze or unfreeze an entity in place.
  stateFlag3(stateFlag5, heading)
  stateFlag3 = SetModelAsNoLongerNeeded
  stateFlag5 = localValue5
  stateFlag3(stateFlag5)
  dataCollection.hopOutVehicle = stateFlag
  stateFlag3 = dataCollection.combat
  stateFlag3 = stateFlag3.ctx
  if stateFlag3 then
    stateFlag3 = dataCollection.match
    if stateFlag3 then
      stateFlag3 = dataCollection.combat
      stateFlag5 = workingValue28
      stateFlag5 = stateFlag5()
      stateFlag3.fingerprint = stateFlag5
      stateFlag3 = TriggerServerEvent
      stateFlag5 = "27d78c6395"
      heading = dataCollection.match
      heading = heading.id
      stateFlag7 = dataCollection.combat
      stateFlag7 = stateFlag7.fingerprint
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "27d78c6395".
      stateFlag3(stateFlag5, heading, stateFlag7)
    end
  end
  return stateFlag
end

-- === HELPER FUNCTION (decompiler name: workingValue43; parameters: localValue1) ===
function workingValue43(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3
  localValue2 = {}
  localValue3 = localValue1.players
  if localValue3 then
    localValue3 = pairs
    localValue4 = localValue1.players
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7, stringHelper in localValue3, localValue4, localValue5, localValue6 do
      workingValue59 = GetPlayerFromServerId
      stringHelper2 = localValue7
      -- Beginner: result below is playerIndex.
      workingValue59 = workingValue59(stringHelper2)
      stringHelper2 = {}
      stringHelper2.team = stringHelper
      if -1 ~= workingValue59 then
        stateFlag = CMG
        stateFlag = stateFlag.getPlayerName
        stateFlag3 = workingValue59
        stateFlag = stateFlag(stateFlag3)
        if stateFlag then
          goto continueAtStep27
        end
      end
      stateFlag = "#"
      stateFlag3 = localValue7
      stateFlag = stateFlag .. stateFlag3
      ::continueAtStep27::
      stringHelper2.name = stateFlag
      stringHelper2.alive = true
      localValue2[localValue7] = stringHelper2
    end
  end
  localValue3 = localValue1.aiBots
  dataCollection.aiBots = localValue3
  localValue3 = {}
  dataCollection.botPeds = localValue3
  localValue3 = {}
  dataCollection.botReported = localValue3
  dataCollection.botWatchRunning = false
  localValue3 = {}
  localValue4 = localValue1.matchId
  localValue3.id = localValue4
  localValue4 = localValue1.mapName
  localValue3.map = localValue4
  localValue4 = localValue1.mode
  localValue3.mode = localValue4
  localValue4 = localValue1.worldMode
  localValue3.worldMode = localValue4
  localValue4 = localValue1.vehicleModel
  localValue3.vehicleModel = localValue4
  localValue3.isFFA = false
  localValue4 = localValue1.team
  localValue3.team = localValue4
  localValue3.players = localValue2
  localValue4 = localValue1.movement
  if not localValue4 then
    localValue4 = {}
  end
  localValue3.movement = localValue4
  localValue4 = {}
  localValue5 = localValue1.allowCrouchShoot
  localValue4.allowCrouchShoot = localValue5
  localValue5 = localValue1.disableCoverPeek
  localValue5 = true == localValue5
  localValue4.disableCoverPeek = localValue5
  localValue3.flags = localValue4
  localValue4 = {}
  localValue3.score = localValue4
  localValue3.roundNo = 1
  localValue4 = localValue1.bestOf
  localValue3.bestOf = localValue4
  localValue3.startTime = 0
  localValue4 = cmgOperation.roundTime
  localValue4 = localValue4 * 60
  localValue3.roundTime = localValue4
  localValue3.oobWarningRunning = false
  localValue3.tickRunning = false
  localValue3.roundOver = false
  localValue3.spectatorCount = 0
  dataCollection.match = localValue3
end
eventHandler4 = RegisterNetEvent
text6 = "83f418a3d7"
-- Beginner: this function handles network event "83f418a3d7".

-- === HELPER FUNCTION (decompiler name: workingValue44; parameters: localValue1) ===
function workingValue44(localValue1)
  local localValue2, localValue3, localValue4
  dataCollection.fighting = true
  localValue2 = workingValue7
  localValue2()
  localValue2 = workingValue8
  localValue2()
  localValue2 = workingValue9
  localValue2()
  localValue2 = workingValue21
  localValue2()
  localValue2 = CMG
  localValue2 = localValue2.setSwitchGunEnabled
  localValue3 = false
  localValue2(localValue3)
  localValue2 = DoScreenFadeOut
  localValue3 = dataCollection5.fadeOutMs
  if not localValue3 then
    localValue3 = 400
  end
  localValue2(localValue3)
  localValue2 = Wait
  localValue3 = dataCollection5.postFadeOutWaitMs
  if not localValue3 then
    localValue3 = 350
  end
  localValue2(localValue3)
  localValue2 = eventHandler3
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue2()
  localValue2 = workingValue43
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = workingValue40
  localValue3 = localValue1.ipls
  localValue2(localValue3)
  localValue2 = workingValue41
  localValue3 = localValue1.propLayout
  localValue2(localValue3)
  localValue2 = FreezeEntityPosition
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, localValue4)
  localValue2 = Wait
  localValue3 = dataCollection5.postLoadWaitMs
  if not localValue3 then
    localValue3 = 150
  end
  localValue2(localValue3)
  localValue2 = TriggerServerEvent
  localValue3 = "19a079869c"
  localValue4 = localValue1.matchId
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "19a079869c".
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "83f418a3d7".
eventHandler4(text6, workingValue44)
eventHandler4 = RegisterNetEvent
text6 = "e7197c297a"
-- Beginner: this function handles network event "e7197c297a".

-- === HELPER FUNCTION (decompiler name: workingValue44; parameters: localValue1) ===
function workingValue44(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper
  localValue2 = dataCollection.fighting
  if localValue2 then
    localValue2 = type
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if "table" == localValue2 then
      goto continueAtStep10
    end
  end
  return
  ::continueAtStep10::
  localValue2 = localValue1.health
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "number" ~= localValue3 or localValue2 <= 0 then
    return
  end
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = SetEntityHealth
  localValue5 = localValue3
  localValue6 = math
  localValue6 = localValue6.min
  localValue7 = GetEntityHealth
  stringHelper = localValue3
  -- Beginner: result below is health.
  localValue7 = localValue7(stringHelper)
  localValue7 = localValue7 + localValue2
  stringHelper = 200
  localValue6, localValue7, stringHelper = localValue6(localValue7, stringHelper)
  localValue4(localValue5, localValue6, localValue7, stringHelper)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e7197c297a".
eventHandler4(text6, workingValue44)
eventHandler4 = RegisterNetEvent
text6 = "09e09c8df2"
-- Beginner: this function handles network event "09e09c8df2".

-- === HELPER FUNCTION (decompiler name: workingValue44; parameters: localValue1) ===
function workingValue44(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = dataCollection.match
  if localValue2 then
    localValue2 = dataCollection.match
    localValue3 = localValue1.isFFA
    localValue2.isFFA = localValue3
    localValue2 = dataCollection.match
    localValue3 = localValue1.team
    localValue2.team = localValue3
    localValue2 = dataCollection.match
    localValue2 = localValue2.flags
    localValue3 = localValue1.allowCrouchShoot
    localValue2.allowCrouchShoot = localValue3
    localValue2 = dataCollection.match
    localValue2 = localValue2.flags
    localValue3 = localValue1.disableCoverPeek
    localValue3 = true == localValue3
    localValue2.disableCoverPeek = localValue3
  end
  localValue2 = CMG
  localValue2 = localValue2.isSpectatingEvent
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = localValue1.clearSpectator
    if not localValue2 then
      return
    end
  end
  localValue2 = workingValue34
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = localValue1.clearSpectator
  if localValue2 then
    localValue2 = workingValue32
    localValue2()
    localValue2 = localValue1.weaponModel
    if localValue2 then
      localValue2 = localValue1.weaponModel
      localValue3 = Citizen
      localValue3 = localValue3.CreateThread

      -- === HELPER FUNCTION: localValue4() ===
      function localValue4()
        local workingValue, playerPed, iterator, dataCollection4, stateFlag22, stateFlag23, number18
        workingValue = 1
        playerPed = 50
        iterator = 1
        for dataCollection4 = workingValue, playerPed, iterator do
          stateFlag22 = dataCollection.preRoundLockActive
          if stateFlag22 then
            stateFlag22 = dataCollection.combat
            stateFlag22 = stateFlag22.ctx
            if stateFlag22 then
              stateFlag22 = dataCollection.combat
              stateFlag22 = stateFlag22.ctx
              stateFlag22 = stateFlag22.weaponModel
              stateFlag23 = localValue2
              if stateFlag22 == stateFlag23 then
                goto continueAtStep19
              end
            end
          end
          return
          ::continueAtStep19::
          stateFlag22 = workingValue29
          stateFlag23 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          stateFlag23 = stateFlag23()
          number18 = localValue2
          stateFlag22(stateFlag23, number18)
          stateFlag22 = Wait
          stateFlag23 = 0
          stateFlag22(stateFlag23)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      localValue3(localValue4)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "09e09c8df2".
eventHandler4(text6, workingValue44)
eventHandler4 = RegisterNetEvent
text6 = "09b6fc624a"
-- Beginner: this function handles network event "09b6fc624a".

-- === HELPER FUNCTION (decompiler name: workingValue44; parameters: localValue1) ===
function workingValue44(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.isSpectatingEvent
  localValue2 = localValue2()
  if localValue2 then
    return
  end
  localValue2 = TriggerServerEvent
  localValue3 = "dea1e43c91"
  localValue4 = localValue1
  localValue5 = workingValue28
  localValue5 = localValue5()
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dea1e43c91".
  localValue2(localValue3, localValue4, localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "09b6fc624a".
eventHandler4(text6, workingValue44)
eventHandler4 = RegisterNetEvent
text6 = "48abfe6163"
-- Beginner: this function handles network event "48abfe6163".

-- === HELPER FUNCTION (decompiler name: workingValue44; parameters: localValue1) ===
function workingValue44(localValue1)
  local localValue2, localValue3
  localValue2 = DoScreenFadeOut
  localValue3 = 200
  localValue2(localValue3)
  localValue2 = Wait
  localValue3 = 250
  localValue2(localValue3)
  localValue2 = workingValue34
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = DoScreenFadeIn
  localValue3 = 200
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "48abfe6163".
eventHandler4(text6, workingValue44)
eventHandler4 = 31086

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1, localValue2, localValue3) ===
function text6(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7
  if not localValue2 then
    localValue4 = false
    return localValue4
  end
  localValue4 = localValue2.hasInteriorCheck
  if localValue4 then
    localValue4 = GetInteriorFromEntity
    localValue5 = localValue1
    -- Beginner: result below is interiorId.
    localValue4 = localValue4(localValue5)
    if 0 == localValue4 then
      localValue4 = true
      return localValue4
    end
  end
  localValue4 = localValue3.bounds
  if not localValue4 then
    localValue4 = localValue2.bounds
  end
  if localValue4 then
    localValue5 = localValue4[1]
    if localValue5 then
      localValue5 = localValue4[2]
      if localValue5 then
        localValue5 = IsEntityInArea
        localValue6 = localValue1
        localValue7 = localValue4[1]
        localValue7 = localValue7.x
        stringHelper = localValue4[1]
        stringHelper = stringHelper.y
        workingValue59 = localValue4[1]
        workingValue59 = workingValue59.z
        stringHelper2 = localValue4[2]
        stringHelper2 = stringHelper2.x
        stateFlag = localValue4[2]
        stateFlag = stateFlag.y
        stateFlag3 = localValue4[2]
        stateFlag3 = stateFlag3.z
        stateFlag5 = false
        heading = true
        stateFlag7 = 0
        localValue5 = localValue5(localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7)
        if not localValue5 then
          localValue5 = true
          return localValue5
        end
      end
    end
  end
  localValue5 = false
  return localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue44; parameters: none) ===
function workingValue44()
  local localValue1, localValue2
  localValue1 = dataCollection.match
  if localValue1 then
    localValue1 = dataCollection.match
    localValue1 = localValue1.oobWarningRunning
    if not localValue1 then
      goto continueAtStep9
    end
  end
  return
  ::continueAtStep9::
  localValue1 = dataCollection.match
  localValue1.oobWarningRunning = true
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local workingValue, playerPed, iterator, dataCollection4, stateFlag22, stateFlag23, number18, stateFlag24, text8, stateFlag25, stateFlag2, stateFlag4, stateFlag6, number2, stateFlag8
    workingValue = dataCollection6.graceSeconds
    if not workingValue then
      workingValue = 3
    end
    playerPed = workingValue * 1000
    iterator = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    iterator = iterator()
    dataCollection4 = workingValue
    stateFlag22 = AnimpostfxPlay
    stateFlag23 = "MP_race_crash"
    number18 = playerPed
    stateFlag24 = false
    stateFlag22(stateFlag23, number18, stateFlag24)
    stateFlag22 = GetSoundId
    -- Beginner: result below is soundHandle.
    stateFlag22 = stateFlag22()
    stateFlag23 = PlaySound
    number18 = stateFlag22
    stateFlag24 = "OOB_Timer_Dynamic"
    text8 = "GTAO_FM_Events_Soundset"
    stateFlag25 = false
    stateFlag2 = false
    stateFlag4 = false
    stateFlag23(number18, stateFlag24, text8, stateFlag25, stateFlag2, stateFlag4)
    while true do
      stateFlag23 = dataCollection.fighting
      if not stateFlag23 then
        break
      end
      stateFlag23 = dataCollection.match
      if not stateFlag23 then
        break
      end
      stateFlag23 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      stateFlag23 = stateFlag23()
      number18 = cmgOperation.maps
      stateFlag24 = dataCollection.match
      stateFlag24 = stateFlag24.map
      number18 = number18[stateFlag24]
      stateFlag24 = dataCollection.match
      stateFlag24 = stateFlag24.movement
      if not stateFlag24 then
        stateFlag24 = {}
      end
      text8 = IsEntityDead
      stateFlag25 = stateFlag23
      text8 = text8(stateFlag25)
      if text8 then
        break
      end
      text8 = CMG
      text8 = text8.isSpectatingEvent
      text8 = text8()
      if text8 then
        break
      end
      text8 = CMG
      text8 = text8.isArenaSpectating
      text8 = text8()
      if text8 then
        break
      end
      text8 = text6
      stateFlag25 = stateFlag23
      stateFlag2 = number18
      stateFlag4 = stateFlag24
      text8 = text8(stateFlag25, stateFlag2, stateFlag4)
      if not text8 then
        break
      end
      text8 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      text8 = text8()
      text8 = text8 - iterator
      if playerPed <= text8 then
        break
      end
      text8 = CMG
      text8 = text8.announceMpBigMsg
      stateFlag25 = workingValue3
      stateFlag2 = "client.oobTitle"
      stateFlag25 = stateFlag25(stateFlag2)
      stateFlag2 = string
      stateFlag2 = stateFlag2.format
      stateFlag4 = workingValue3
      stateFlag6 = "client.oobReturnMessage"
      stateFlag4 = stateFlag4(stateFlag6)
      stateFlag6 = dataCollection4
      stateFlag2 = stateFlag2(stateFlag4, stateFlag6)
      stateFlag4 = 1000
      text8(stateFlag25, stateFlag2, stateFlag4)
      dataCollection4 = dataCollection4 - 1
    end
    stateFlag23 = StopSound
    number18 = stateFlag22
    stateFlag23(number18)
    stateFlag23 = ReleaseSoundId
    number18 = stateFlag22
    stateFlag23(number18)
    stateFlag23 = AnimpostfxStopAll
    stateFlag23()
    stateFlag23 = dataCollection.fighting
    if stateFlag23 then
      stateFlag23 = dataCollection.match
      if stateFlag23 then
        stateFlag23 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        stateFlag23 = stateFlag23()
        number18 = cmgOperation.maps
        stateFlag24 = dataCollection.match
        stateFlag24 = stateFlag24.map
        number18 = number18[stateFlag24]
        stateFlag24 = dataCollection.match
        stateFlag24 = stateFlag24.movement
        if not stateFlag24 then
          stateFlag24 = {}
        end
        text8 = IsEntityDead
        stateFlag25 = stateFlag23
        text8 = text8(stateFlag25)
        if not text8 then
          text8 = CMG
          text8 = text8.isSpectatingEvent
          text8 = text8()
          if not text8 then
            text8 = CMG
            text8 = text8.isArenaSpectating
            text8 = text8()
            if not text8 then
              text8 = text6
              stateFlag25 = stateFlag23
              stateFlag2 = number18
              stateFlag4 = stateFlag24
              text8 = text8(stateFlag25, stateFlag2, stateFlag4)
              if text8 then
                text8 = SetEntityHealth
                stateFlag25 = stateFlag23
                stateFlag2 = 0
                text8(stateFlag25, stateFlag2)
            end
          end
        end
        else
          text8 = PlaySound
          stateFlag25 = -1
          stateFlag2 = "OOB_Cancel"
          stateFlag4 = "GTAO_FM_Events_Soundset"
          stateFlag6 = false
          number2 = 0
          stateFlag8 = false
          text8(stateFlag25, stateFlag2, stateFlag4, stateFlag6, number2, stateFlag8)
        end
      end
    end
    stateFlag23 = dataCollection.match
    if stateFlag23 then
      stateFlag23 = dataCollection.match
      stateFlag23.oobWarningRunning = false
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue45; parameters: none) ===
function workingValue45()
  local localValue1, localValue2
  localValue1 = dataCollection.match
  if localValue1 then
    localValue1 = dataCollection.match
    localValue1 = localValue1.tickRunning
    if not localValue1 then
      goto continueAtStep9
    end
  end
  return
  ::continueAtStep9::
  localValue1 = dataCollection.match
  localValue1.tickRunning = true
  localValue1 = workingValue25
  localValue1()
  localValue1 = workingValue24
  localValue1()
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local workingValue, playerPed, iterator, dataCollection4, stateFlag22, stateFlag23, number18
    while true do
      workingValue = dataCollection.fighting
      if not workingValue then
        break
      end
      workingValue = dataCollection.match
      if not workingValue then
        break
      end
      workingValue = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workingValue = workingValue()
      playerPed = dataCollection.match
      playerPed = playerPed.movement
      if not playerPed then
        playerPed = {}
      end
      iterator = cmgOperation.maps
      dataCollection4 = dataCollection.match
      dataCollection4 = dataCollection4.map
      iterator = iterator[dataCollection4]
      dataCollection4 = dataCollection.match
      dataCollection4 = dataCollection4.flags
      if dataCollection4 then
        dataCollection4 = dataCollection.match
        dataCollection4 = dataCollection4.flags
        dataCollection4 = dataCollection4.disableCoverPeek
        if dataCollection4 then
          dataCollection4 = SetPedConfigFlag
          stateFlag22 = workingValue
          stateFlag23 = 427
          number18 = false
          dataCollection4(stateFlag22, stateFlag23, number18)
      end
      else
        dataCollection4 = playerPed.pedConfigFlag427
        if false ~= dataCollection4 then
          dataCollection4 = SetPedConfigFlag
          stateFlag22 = workingValue
          stateFlag23 = 427
          number18 = true
          dataCollection4(stateFlag22, stateFlag23, number18)
        end
      end
      if iterator then
        dataCollection4 = dataCollection.match
        dataCollection4 = dataCollection4.worldMode
        if not dataCollection4 then
          dataCollection4 = dataCollection.match
          dataCollection4 = dataCollection4.oobWarningRunning
          if not dataCollection4 then
            dataCollection4 = IsEntityDead
            stateFlag22 = workingValue
            dataCollection4 = dataCollection4(stateFlag22)
            if not dataCollection4 then
              dataCollection4 = CMG
              dataCollection4 = dataCollection4.isSpectatingEvent
              dataCollection4 = dataCollection4()
              if not dataCollection4 then
                dataCollection4 = CMG
                dataCollection4 = dataCollection4.isArenaSpectating
                dataCollection4 = dataCollection4()
                if not dataCollection4 then
                  dataCollection4 = text6
                  stateFlag22 = workingValue
                  stateFlag23 = iterator
                  number18 = playerPed
                  dataCollection4 = dataCollection4(stateFlag22, stateFlag23, number18)
                  if dataCollection4 then
                    dataCollection4 = workingValue44
                    dataCollection4()
                  end
                end
              end
            end
          end
        end
      end
      dataCollection4 = Wait
      stateFlag22 = 250
      dataCollection4(stateFlag22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end
number19 = 500

-- === HELPER FUNCTION (decompiler name: workingValue46; parameters: localValue1, localValue2) ===
function workingValue46(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  if not localValue2 then
    return
  end
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  if not localValue1 then
    localValue4 = {}
    localValue5 = localValue2.cx
    localValue4.cx = localValue5
    localValue5 = localValue2.cy
    localValue4.cy = localValue5
    localValue5 = localValue2.cx
    localValue4.fromCx = localValue5
    localValue5 = localValue2.cy
    localValue4.fromCy = localValue5
    localValue5 = localValue2.cx
    localValue4.toCx = localValue5
    localValue5 = localValue2.cy
    localValue4.toCy = localValue5
    localValue4.snapAt = localValue3
    return localValue4
  end
  localValue4 = hopOutCirclePos
  localValue5 = localValue1
  localValue4, localValue5 = localValue4(localValue5)
  localValue6 = localValue4
  localValue1.fromCy = localValue5
  localValue1.fromCx = localValue6
  localValue6 = localValue2.cx
  localValue7 = localValue2.cy
  localValue1.toCy = localValue7
  localValue1.toCx = localValue6
  localValue6 = localValue4
  localValue1.cy = localValue5
  localValue1.cx = localValue6
  localValue1.snapAt = localValue3
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue47; parameters: localValue1) ===
function workingValue47(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  if not localValue1 then
    localValue2 = nil
    localValue3 = nil
    return localValue2, localValue3
  end
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = localValue1.snapAt
  localValue2 = localValue2 - localValue3
  localValue3 = number19
  localValue2 = localValue2 / localValue3
  if localValue2 > 1.0 then
    localValue2 = 1.0
  end
  if localValue2 < 0.0 then
    localValue2 = 0.0
  end
  localValue3 = localValue1.fromCx
  localValue4 = localValue1.toCx
  localValue5 = localValue1.fromCx
  localValue4 = localValue4 - localValue5
  localValue4 = localValue4 * localValue2
  localValue3 = localValue3 + localValue4
  localValue4 = localValue1.fromCy
  localValue5 = localValue1.toCy
  localValue6 = localValue1.fromCy
  localValue5 = localValue5 - localValue6
  localValue5 = localValue5 * localValue2
  localValue4 = localValue4 + localValue5
  return localValue3, localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue48; parameters: localValue1) ===
function workingValue48(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = dataCollection.match
  if localValue2 then
    localValue2 = dataCollection.match
    localValue2 = localValue2.worldMode
    if localValue2 then
      goto continueAtStep9
    end
  end
  return
  ::continueAtStep9::
  localValue2 = dataCollection.match
  localValue2 = localValue2.hopOutZone
  if not localValue2 then
    localValue3 = {}
    localValue4 = localValue1.radius
    if not localValue4 then
      localValue4 = 250.0
    end
    localValue3.radius = localValue4
    localValue4 = localValue1.oobDps
    if not localValue4 then
      localValue4 = 5
    end
    localValue3.oobDps = localValue4
    localValue4 = localValue1.grace
    if not localValue4 then
      localValue4 = 3
    end
    localValue3.grace = localValue4
    localValue2 = localValue3
    localValue3 = dataCollection.match
    localValue3.hopOutZone = localValue2
  end
  localValue3 = localValue1.radius
  if not localValue3 then
    localValue3 = localValue2.radius
  end
  localValue2.radius = localValue3
  localValue3 = localValue1.oobDps
  if not localValue3 then
    localValue3 = localValue2.oobDps
  end
  localValue2.oobDps = localValue3
  localValue3 = localValue1.grace
  if not localValue3 then
    localValue3 = localValue2.grace
  end
  localValue2.grace = localValue3
  localValue3 = localValue1.phase
  localValue2.phase = localValue3
  localValue3 = localValue1.rendezvous
  localValue2.rendezvous = localValue3
  localValue3 = workingValue46
  localValue4 = localValue2.selfCircle
  localValue5 = localValue1.self
  localValue3 = localValue3(localValue4, localValue5)
  localValue2.selfCircle = localValue3
  localValue3 = workingValue46
  localValue4 = localValue2.oppCircle
  localValue5 = localValue1.opponent
  localValue3 = localValue3(localValue4, localValue5)
  localValue2.oppCircle = localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue49; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function workingValue49(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4, number5, number7, stateFlag12, stateFlag14, stateFlag16, number8, number9, number10, number11, number12, stateFlag17, stateFlag18, stateFlag19, stateFlag20, workingValue15, workingValue17, stateFlag21
  stringHelper = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stringHelper = stringHelper()
  workingValue59 = GetEntityCoords
  stringHelper2 = stringHelper
  -- Beginner: result below is entityCoords.
  workingValue59 = workingValue59(stringHelper2)
  stringHelper2 = DrawMarker
  stateFlag = 1
  stateFlag3 = localValue1
  stateFlag5 = localValue2
  heading = workingValue59.z
  heading = heading - 40.0
  stateFlag7 = 0.0
  stateFlag9 = 0.0
  cmgOperation4 = 0.0
  number5 = 0.0
  number7 = 0.0
  stateFlag12 = 0.0
  stateFlag14 = localValue3 * 2.0
  stateFlag16 = localValue3 * 2.0
  number8 = 140.0
  number9 = localValue4
  number10 = localValue5
  number11 = localValue6
  number12 = localValue7
  stateFlag17 = false
  stateFlag18 = false
  stateFlag19 = 2
  stateFlag20 = false
  workingValue15 = nil
  workingValue17 = nil
  stateFlag21 = false
  stringHelper2(stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4, number5, number7, stateFlag12, stateFlag14, stateFlag16, number8, number9, number10, number11, number12, stateFlag17, stateFlag18, stateFlag19, stateFlag20, workingValue15, workingValue17, stateFlag21)
end

-- === HELPER FUNCTION (decompiler name: workingValue50; parameters: none) ===
function workingValue50()
  local localValue1, localValue2
  localValue1 = dataCollection.match
  if localValue1 then
    localValue1 = dataCollection.match
    localValue1 = localValue1.hopOutZoneTickRunning
    if localValue1 then
      return
    end
  end
  localValue1 = dataCollection.match
  if localValue1 then
    localValue1 = dataCollection.match
    localValue1.hopOutZoneTickRunning = true
  end
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local workingValue, playerPed, iterator, dataCollection4, stateFlag22, stateFlag23, number18, stateFlag24, text8, stateFlag25, stateFlag2, stateFlag4, stateFlag6, number2, stateFlag8, number3, number4, stateFlag10, stateFlag11, stateFlag13
    workingValue = nil
    playerPed = 0
    iterator = 0
    while true do
      dataCollection4 = dataCollection.fighting
      if not dataCollection4 then
        break
      end
      dataCollection4 = dataCollection.match
      if not dataCollection4 then
        break
      end
      dataCollection4 = dataCollection.match
      dataCollection4 = dataCollection4.worldMode
      if not dataCollection4 then
        break
      end
      dataCollection4 = dataCollection.match
      dataCollection4 = dataCollection4.hopOutZone
      if not dataCollection4 then
        break
      end
      dataCollection4 = dataCollection.match
      dataCollection4 = dataCollection4.hopOutZone
      stateFlag22 = workingValue47
      stateFlag23 = dataCollection4.selfCircle
      stateFlag22, stateFlag23 = stateFlag22(stateFlag23)
      number18 = workingValue47
      stateFlag24 = dataCollection4.oppCircle
      number18, stateFlag24 = number18(stateFlag24)
      text8 = dataCollection4.radius
      if not text8 then
        text8 = 250.0
      end
      if stateFlag22 and stateFlag23 then
        stateFlag25 = workingValue49
        stateFlag2 = stateFlag22
        stateFlag4 = stateFlag23
        stateFlag6 = text8
        number2 = 74
        stateFlag8 = 144
        number3 = 245
        number4 = 45
        stateFlag25(stateFlag2, stateFlag4, stateFlag6, number2, stateFlag8, number3, number4)
      end
      if number18 and stateFlag24 then
        stateFlag25 = workingValue49
        stateFlag2 = number18
        stateFlag4 = stateFlag24
        stateFlag6 = text8
        number2 = 245
        stateFlag8 = 74
        number3 = 74
        number4 = 30
        stateFlag25(stateFlag2, stateFlag4, stateFlag6, number2, stateFlag8, number3, number4)
      end
      stateFlag25 = dataCollection4.phase
      if "converge" == stateFlag25 then
        stateFlag25 = dataCollection4.rendezvous
        if stateFlag25 then
          stateFlag25 = workingValue49
          stateFlag2 = dataCollection4.rendezvous
          stateFlag2 = stateFlag2.x
          stateFlag4 = dataCollection4.rendezvous
          stateFlag4 = stateFlag4.y
          stateFlag6 = text8 * 0.35
          number2 = 255
          stateFlag8 = 200
          number3 = 60
          number4 = 25
          stateFlag25(stateFlag2, stateFlag4, stateFlag6, number2, stateFlag8, number3, number4)
        end
      end
      stateFlag25 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      stateFlag25 = stateFlag25()
      stateFlag2 = GetEntityCoords
      stateFlag4 = stateFlag25
      -- Beginner: result below is entityCoords.
      stateFlag2 = stateFlag2(stateFlag4)
      if stateFlag22 and stateFlag23 then
        stateFlag4 = IsEntityDead
        stateFlag6 = stateFlag25
        stateFlag4 = stateFlag4(stateFlag6)
        if not stateFlag4 then
          stateFlag4 = stateFlag2.x
          stateFlag4 = stateFlag4 - stateFlag22
          stateFlag6 = stateFlag2.y
          stateFlag6 = stateFlag6 - stateFlag23
          number2 = stateFlag4 * stateFlag4
          stateFlag8 = stateFlag6 * stateFlag6
          number2 = number2 + stateFlag8
          stateFlag8 = text8 * text8
          number2 = number2 > stateFlag8
          if number2 then
            stateFlag8 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            stateFlag8 = stateFlag8()
            if not workingValue then
              workingValue = stateFlag8
            end
            number3 = stateFlag8 - iterator
            number4 = 1500
            if number3 > number4 then
              iterator = stateFlag8
              number3 = BeginTextCommandDisplayHelp
              number4 = "STRING"
              number3(number4)
              number3 = AddTextComponentSubstringPlayerName
              number4 = workingValue3
              stateFlag10 = "client.hopoutReturnZone"
              number4, stateFlag10, stateFlag11, stateFlag13 = number4(stateFlag10)
              number3(number4, stateFlag10, stateFlag11, stateFlag13)
              number3 = EndTextCommandDisplayHelp
              number4 = 0
              stateFlag10 = false
              stateFlag11 = false
              stateFlag13 = -1
              number3(number4, stateFlag10, stateFlag11, stateFlag13)
            end
            number3 = math
            number3 = number3.max
            number4 = 0
            stateFlag10 = dataCollection4.grace
            if not stateFlag10 then
              stateFlag10 = 3
            end
            number3 = number3(number4, stateFlag10)
            number3 = number3 * 1000
            number4 = stateFlag8 - workingValue
            if number3 < number4 then
              number4 = stateFlag8 - playerPed
              stateFlag10 = 1000
              if number4 >= stateFlag10 then
                playerPed = stateFlag8
                number4 = ApplyDamageToPed
                stateFlag10 = stateFlag25
                stateFlag11 = dataCollection4.oobDps
                if not stateFlag11 then
                  stateFlag11 = 5
                end
                stateFlag13 = false
                number4(stateFlag10, stateFlag11, stateFlag13)
              end
            end
          else
            workingValue = nil
          end
        end
      end
      stateFlag4 = Wait
      stateFlag6 = 0
      stateFlag4(stateFlag6)
    end
    dataCollection4 = dataCollection.match
    if dataCollection4 then
      dataCollection4 = dataCollection.match
      dataCollection4.hopOutZoneTickRunning = false
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end
eventHandler5 = RegisterNetEvent
text7 = "dfc973aeb8"
-- Beginner: this function handles network event "dfc973aeb8".

-- === HELPER FUNCTION (decompiler name: workingValue52; parameters: localValue1) ===
function workingValue52(localValue1)
  local localValue2, localValue3
  localValue2 = dataCollection.match
  if localValue2 then
    localValue2 = dataCollection.match
    localValue2 = localValue2.worldMode
    if localValue2 then
      goto continueAtStep9
    end
  end
  return
  ::continueAtStep9::
  localValue2 = workingValue48
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = workingValue50
  localValue2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dfc973aeb8".
eventHandler5(text7, workingValue52)

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: none) ===
function eventHandler5()
  local localValue1, localValue2
  localValue1 = dataCollection.deathWatchRunning
  if localValue1 then
    return
  end
  dataCollection.deathWatchRunning = true
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local workingValue, playerPed, iterator, dataCollection4, stateFlag22, stateFlag23, number18, stateFlag24, text8, stateFlag25, stateFlag2
    workingValue = false
    while true do
      playerPed = dataCollection.fighting
      if not playerPed then
        break
      end
      playerPed = dataCollection.match
      if not playerPed then
        break
      end
      playerPed = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed = playerPed()
      iterator = IsEntityDead
      dataCollection4 = playerPed
      iterator = iterator(dataCollection4)
      if iterator and not workingValue then
        workingValue = true
        dataCollection4 = dataCollection.match
        if dataCollection4 then
          dataCollection4 = dataCollection.match
          dataCollection4.hopOutZone = nil
          dataCollection4 = dataCollection.match
          dataCollection4.hopOutZoneTickRunning = false
        end
        dataCollection4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        dataCollection4 = dataCollection4()
        stateFlag22 = CMG
        stateFlag22 = stateFlag22.collectKillerInfo
        stateFlag23 = dataCollection4
        stateFlag22(stateFlag23)
        stateFlag22 = CMG
        stateFlag22 = stateFlag22.getKillerInfo
        stateFlag22 = stateFlag22()
        stateFlag23 = stateFlag22.source
        if not stateFlag23 then
          stateFlag23 = -1
        end
        number18 = stateFlag22.wasHeadshot
        number18 = true == number18
        stateFlag24 = stateFlag22.weaponModel
        if stateFlag24 then
          stateFlag24 = GetHashKey
          text8 = stateFlag22.weaponModel
          -- Beginner: result below is hash.
          stateFlag24 = stateFlag24(text8)
          if stateFlag24 then
            goto continueAtStep54
          end
        end
        stateFlag24 = GetPedCauseOfDeath
        text8 = dataCollection4
        stateFlag24 = stateFlag24(text8)
        ::continueAtStep54::
        text8 = TriggerServerEvent
        stateFlag25 = "69132690ee"
        stateFlag2 = {}
        stateFlag2.attackerSrc = stateFlag23
        stateFlag2.weapon = stateFlag24
        stateFlag2.headshot = number18
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "69132690ee".
        text8(stateFlag25, stateFlag2)
      elseif not iterator then
        workingValue = false
      end
      dataCollection4 = Wait
      stateFlag22 = 200
      dataCollection4(stateFlag22)
    end
    dataCollection.deathWatchRunning = false
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2
  if 1 == localValue1 then
    localValue2 = cmgOperation2
    if localValue2 then
      goto continueAtStep7
    end
  end
  localValue2 = cmgOperation3
  ::continueAtStep7::
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue52; parameters: none) ===
function workingValue52()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper
  localValue1 = pairs
  localValue2 = dataCollection.botPeds
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = DoesEntityExist
    stringHelper = localValue6
    localValue7 = localValue7(stringHelper)
    if localValue7 then
      localValue7 = DeleteEntity
      stringHelper = localValue6
      -- Beginner: Delete a GTA entity.
      localValue7(stringHelper)
    end
    localValue7 = dataCollection.botPeds
    localValue7[localValue5] = nil
  end
  localValue1 = {}
  dataCollection.botReported = localValue1
  dataCollection.botWatchRunning = false
end

-- === HELPER FUNCTION (decompiler name: workingValue53; parameters: localValue1) ===
function workingValue53(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5
  localValue2 = dataCollection.botPeds
  localValue3 = localValue1.key
  localValue2 = localValue2[localValue3]
  if localValue2 then
    localValue3 = DoesEntityExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = IsEntityDead
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if not localValue3 then
        return
      end
      localValue3 = DeleteEntity
      localValue4 = localValue2
      localValue3(localValue4)
    end
  end
  localValue3 = localValue1.spawn
  if not localValue3 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.loadModel
  localValue5 = localValue1.model
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue4(localValue5)
  localValue4 = CreatePed
  localValue5 = 4
  localValue6 = localValue1.model
  localValue7 = localValue3.x
  localValue7 = localValue7 + 0.0
  stringHelper = localValue3.y
  stringHelper = stringHelper + 0.0
  workingValue59 = localValue3.z
  workingValue59 = workingValue59 - 1.0
  stringHelper2 = localValue3.w
  if not stringHelper2 then
    stringHelper2 = 0.0
  end
  stateFlag = false
  stateFlag3 = true
  -- Beginner: result below is pedEntity.
  localValue4 = localValue4(localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3)
  localValue5 = SetModelAsNoLongerNeeded
  localValue6 = localValue1.model
  localValue5(localValue6)
  localValue5 = SetEntityAsMissionEntity
  localValue6 = localValue4
  localValue7 = true
  stringHelper = true
  localValue5(localValue6, localValue7, stringHelper)
  localValue5 = localValue1.health
  if not localValue5 then
    localValue5 = 200
  end
  localValue6 = SetEntityMaxHealth
  localValue7 = localValue4
  stringHelper = localValue5
  localValue6(localValue7, stringHelper)
  localValue6 = SetEntityHealth
  localValue7 = localValue4
  stringHelper = localValue5
  localValue6(localValue7, stringHelper)
  localValue6 = SetPedArmour
  localValue7 = localValue4
  stringHelper = localValue1.armour
  if not stringHelper then
    stringHelper = 0
  end
  localValue6(localValue7, stringHelper)
  localValue6 = SetPedRelationshipGroupHash
  localValue7 = localValue4
  stringHelper = text7
  workingValue59 = localValue1.team
  stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5 = stringHelper(workingValue59)
  localValue6(localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5)
  localValue6 = SetPedAccuracy
  localValue7 = localValue4
  stringHelper = localValue1.accuracy
  if not stringHelper then
    stringHelper = 35
  end
  localValue6(localValue7, stringHelper)
  localValue6 = SetPedCombatAbility
  localValue7 = localValue4
  stringHelper = localValue1.combatAbility
  if not stringHelper then
    stringHelper = 2
  end
  localValue6(localValue7, stringHelper)
  localValue6 = SetPedCombatRange
  localValue7 = localValue4
  stringHelper = localValue1.combatRange
  if not stringHelper then
    stringHelper = 2
  end
  localValue6(localValue7, stringHelper)
  localValue6 = SetPedCombatMovement
  localValue7 = localValue4
  stringHelper = 2
  localValue6(localValue7, stringHelper)
  localValue6 = SetPedFleeAttributes
  localValue7 = localValue4
  stringHelper = 0
  workingValue59 = false
  localValue6(localValue7, stringHelper, workingValue59)
  localValue6 = SetPedCombatAttributes
  localValue7 = localValue4
  stringHelper = 46
  workingValue59 = true
  localValue6(localValue7, stringHelper, workingValue59)
  localValue6 = SetPedCombatAttributes
  localValue7 = localValue4
  stringHelper = 5
  workingValue59 = true
  localValue6(localValue7, stringHelper, workingValue59)
  localValue6 = SetPedCombatAttributes
  localValue7 = localValue4
  stringHelper = 0
  workingValue59 = true
  localValue6(localValue7, stringHelper, workingValue59)
  localValue6 = SetBlockingOfNonTemporaryEvents
  localValue7 = localValue4
  stringHelper = true
  localValue6(localValue7, stringHelper)
  localValue6 = SetPedDropsWeaponsWhenDead
  localValue7 = localValue4
  stringHelper = false
  localValue6(localValue7, stringHelper)
  localValue6 = SetPedSuffersCriticalHits
  localValue7 = localValue4
  stringHelper = true
  localValue6(localValue7, stringHelper)
  localValue6 = GetHashKey
  localValue7 = localValue1.weapon
  -- Beginner: result below is hash.
  localValue6 = localValue6(localValue7)
  localValue7 = RequestWeaponAsset
  stringHelper = localValue6
  workingValue59 = 31
  stringHelper2 = 0
  localValue7(stringHelper, workingValue59, stringHelper2)
  localValue7 = 0
  while true do
    stringHelper = HasWeaponAssetLoaded
    workingValue59 = localValue6
    stringHelper = stringHelper(workingValue59)
    if stringHelper then
      break
    end
    stringHelper = 200
    if not (localValue7 < stringHelper) then
      break
    end
    stringHelper = Wait
    workingValue59 = 0
    stringHelper(workingValue59)
    localValue7 = localValue7 + 1
  end
  stringHelper = GiveWeaponToPed
  workingValue59 = localValue4
  stringHelper2 = localValue6
  stateFlag = localValue1.ammo
  if not stateFlag then
    stateFlag = 250
  end
  stateFlag3 = false
  stateFlag5 = true
  stringHelper(workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5)
  stringHelper = SetCurrentPedWeapon
  workingValue59 = localValue4
  stringHelper2 = localValue6
  stateFlag = true
  stringHelper(workingValue59, stringHelper2, stateFlag)
  stringHelper = SetPedCanSwitchWeapon
  workingValue59 = localValue4
  stringHelper2 = true
  stringHelper(workingValue59, stringHelper2)
  stringHelper = SetPedInfiniteAmmo
  workingValue59 = localValue4
  stringHelper2 = true
  stateFlag = localValue6
  stringHelper(workingValue59, stringHelper2, stateFlag)
  stringHelper = SetPedInfiniteAmmoClip
  workingValue59 = localValue4
  stringHelper2 = true
  stringHelper(workingValue59, stringHelper2)
  stringHelper = dataCollection.botPeds
  workingValue59 = localValue1.key
  stringHelper[workingValue59] = localValue4
  stringHelper = dataCollection.botReported
  workingValue59 = localValue1.key
  stringHelper[workingValue59] = nil
end

-- === HELPER FUNCTION (decompiler name: workingValue54; parameters: none) ===
function workingValue54()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper
  localValue1 = dataCollection.aiBots
  if not localValue1 then
    return
  end
  localValue1 = ipairs
  localValue2 = dataCollection.aiBots
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = workingValue53
    stringHelper = localValue6
    localValue7(stringHelper)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue55; parameters: none) ===
function workingValue55()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = pairs
  localValue3 = dataCollection.botPeds
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    stringHelper = DoesEntityExist
    workingValue59 = localValue7
    stringHelper = stringHelper(workingValue59)
    if stringHelper then
      stringHelper = IsEntityDead
      workingValue59 = localValue7
      stringHelper = stringHelper(workingValue59)
      if not stringHelper then
        stringHelper = TaskCombatPed
        workingValue59 = localValue7
        stringHelper2 = localValue1
        stateFlag = 0
        stateFlag3 = 16
        stringHelper(workingValue59, stringHelper2, stateFlag, stateFlag3)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue56; parameters: none) ===
function workingValue56()
  local localValue1, localValue2
  localValue1 = dataCollection.botWatchRunning
  if localValue1 then
    return
  end
  dataCollection.botWatchRunning = true
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local workingValue, playerPed, iterator, dataCollection4, stateFlag22, stateFlag23, number18, stateFlag24, text8, stateFlag25, stateFlag2, stateFlag4, stateFlag6
    while true do
      workingValue = dataCollection.fighting
      if not workingValue then
        break
      end
      workingValue = dataCollection.match
      if not workingValue then
        break
      end
      workingValue = dataCollection.aiBots
      if not workingValue then
        break
      end
      workingValue = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workingValue = workingValue()
      playerPed = pairs
      iterator = dataCollection.botPeds
      playerPed, iterator, dataCollection4, stateFlag22 = playerPed(iterator)
      for stateFlag23, number18 in playerPed, iterator, dataCollection4, stateFlag22 do
        stateFlag24 = DoesEntityExist
        text8 = number18
        stateFlag24 = stateFlag24(text8)
        if stateFlag24 then
          stateFlag24 = IsEntityDead
          text8 = number18
          stateFlag24 = stateFlag24(text8)
          if stateFlag24 then
            stateFlag24 = dataCollection.botReported
            stateFlag24 = stateFlag24[stateFlag23]
            if not stateFlag24 then
              stateFlag24 = dataCollection.botReported
              stateFlag24[stateFlag23] = true
              stateFlag24 = GetPedLastDamageBone
              text8 = number18
              stateFlag24, text8 = stateFlag24(text8)
              stateFlag25 = TriggerServerEvent
              stateFlag2 = "8db23098e2"
              stateFlag4 = {}
              stateFlag6 = dataCollection.match
              stateFlag6 = stateFlag6.id
              stateFlag4.matchId = stateFlag6
              stateFlag4.botKey = stateFlag23
              stateFlag6 = eventHandler4
              stateFlag6 = text8 == stateFlag6
              stateFlag4.headshot = stateFlag6
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8db23098e2".
              stateFlag25(stateFlag2, stateFlag4)
            end
          else
            stateFlag24 = IsPedInCombat
            text8 = number18
            stateFlag25 = workingValue
            stateFlag24 = stateFlag24(text8, stateFlag25)
            if not stateFlag24 then
              stateFlag24 = TaskCombatPed
              text8 = number18
              stateFlag25 = workingValue
              stateFlag2 = 0
              stateFlag4 = 16
              stateFlag24(text8, stateFlag25, stateFlag2, stateFlag4)
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
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue57; parameters: none) ===
function workingValue57()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag
  localValue1 = dataCollection.match
  if localValue1 then
    localValue1 = dataCollection.match
    localValue1 = localValue1.isFFA
    if not localValue1 then
      goto continueAtStep9
    end
  end
  return
  ::continueAtStep9::
  localValue1 = CMG
  localValue1 = localValue1.setPlayerNameDistance
  localValue2 = 50.0
  localValue1(localValue2)
  localValue1 = pairs
  localValue2 = dataCollection.match
  localValue2 = localValue2.players
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = localValue6.team
    stringHelper = dataCollection.match
    stringHelper = stringHelper.team
    if localValue7 == stringHelper then
      localValue7 = GetPlayerServerId
      stringHelper = PlayerId
      stringHelper, workingValue59, stringHelper2, stateFlag = stringHelper()
      -- Beginner: result below is serverId.
      localValue7 = localValue7(stringHelper, workingValue59, stringHelper2, stateFlag)
      if localValue5 ~= localValue7 then
        localValue7 = GetPlayerFromServerId
        stringHelper = localValue5
        -- Beginner: result below is playerIndex.
        localValue7 = localValue7(stringHelper)
        if -1 ~= localValue7 then
          stringHelper = CMG
          stringHelper = stringHelper.setGameTagNameOverride
          workingValue59 = localValue5
          stringHelper2 = CMG
          stringHelper2 = stringHelper2.getPlayerName
          stateFlag = localValue7
          stringHelper2, stateFlag = stringHelper2(stateFlag)
          stringHelper(workingValue59, stringHelper2, stateFlag)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue58; parameters: none) ===
function workingValue58()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9, cmgOperation4, number5, number7, stateFlag12, stateFlag14
  localValue1 = dataCollection.match
  if not localValue1 then
    localValue1 = false
    return localValue1
  end
  localValue1 = dataCollection.match
  localValue1 = localValue1.roundNo
  localValue2 = dataCollection.match
  localValue2 = localValue2.bestOf
  localValue3 = CMG
  localValue3 = localValue3.announceMpSmallMsg
  localValue4 = workingValue3
  localValue5 = "client.matchRoundTitle"
  localValue6 = localValue1
  localValue7 = localValue2
  localValue4 = localValue4(localValue5, localValue6, localValue7)
  localValue5 = ""
  localValue6 = 2
  localValue7 = number14
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = Scaleform
  localValue4 = "COUNTDOWN"
  localValue3 = localValue3(localValue4)
  localValue4 = true
  localValue5 = Citizen
  localValue5 = localValue5.CreateThread

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local workingValue, playerPed
    while true do
      workingValue = localValue4
      if not workingValue then
        break
      end
      workingValue = localValue3.Render2D
      workingValue()
      workingValue = Wait
      playerPed = 0
      workingValue(playerPed)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue5(localValue6)

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local workingValue, playerPed
    workingValue = false
    localValue4 = workingValue
    workingValue = false
    return workingValue
  end
  localValue6 = 3
  localValue7 = 1
  stringHelper = -1
  for workingValue59 = localValue6, localValue7, stringHelper do
    stringHelper2 = dataCollection.match
    if stringHelper2 then
      stringHelper2 = dataCollection.fighting
      if stringHelper2 then
        goto continueAtStep43
      end
    end
    stringHelper2 = localValue5
    return stringHelper2()
    ::continueAtStep43::
    stringHelper2 = 255
    stateFlag = 90
    stateFlag3 = 90
    if 2 == workingValue59 then
      stateFlag5 = 255
      heading = 170
      stateFlag3 = 60
      stateFlag = heading
      stringHelper2 = stateFlag5
    elseif 1 == workingValue59 then
      stateFlag5 = 255
      heading = 220
      stateFlag3 = 80
      stateFlag = heading
      stringHelper2 = stateFlag5
    end
    stateFlag5 = localValue3.RunFunction
    heading = "SET_MESSAGE"
    stateFlag7 = {}
    stateFlag9 = tostring
    cmgOperation4 = workingValue59
    stateFlag9 = stateFlag9(cmgOperation4)
    cmgOperation4 = stringHelper2
    number5 = stateFlag
    number7 = stateFlag3
    stateFlag12 = true
    stateFlag14 = false
    stateFlag7[1] = stateFlag9
    stateFlag7[2] = cmgOperation4
    stateFlag7[3] = number5
    stateFlag7[4] = number7
    stateFlag7[5] = stateFlag12
    stateFlag7[6] = stateFlag14
    stateFlag5(heading, stateFlag7)
    stateFlag5 = PlaySoundFrontend
    heading = -1
    stateFlag7 = "3_2_1"
    stateFlag9 = "HUD_MINI_GAME_SOUNDSET"
    cmgOperation4 = true
    stateFlag5(heading, stateFlag7, stateFlag9, cmgOperation4)
    stateFlag5 = Wait
    heading = number13
    stateFlag5(heading)
  end
  localValue6 = dataCollection.match
  if localValue6 then
    localValue6 = dataCollection.fighting
    if localValue6 then
      goto continueAtStep94
    end
  end
  localValue6 = localValue5
  return localValue6()
  ::continueAtStep94::
  localValue6 = localValue3.RunFunction
  localValue7 = "SET_MESSAGE"
  stringHelper = {}
  workingValue59 = "CNTDWN_GO"
  stringHelper2 = 0
  stateFlag = 255
  stateFlag3 = 0
  stateFlag5 = true
  heading = false
  stringHelper[1] = workingValue59
  stringHelper[2] = stringHelper2
  stringHelper[3] = stateFlag
  stringHelper[4] = stateFlag3
  stringHelper[5] = stateFlag5
  stringHelper[6] = heading
  localValue6(localValue7, stringHelper)
  localValue6 = PlaySoundFrontend
  localValue7 = -1
  stringHelper = "Go"
  workingValue59 = "DLC_EXEC_ARC_MAC_SOUNDS"
  stringHelper2 = true
  localValue6(localValue7, stringHelper, workingValue59, stringHelper2)
  localValue6 = workingValue33
  localValue6()
  localValue6 = Citizen
  localValue6 = localValue6.SetTimeout
  localValue7 = number15

  -- === HELPER FUNCTION: stringHelper() ===
  function stringHelper()
    local workingValue, playerPed
    workingValue = false
    localValue4 = workingValue
  end
  localValue6(localValue7, stringHelper)
  localValue6 = true
  return localValue6
end
eventHandler6 = RegisterNetEvent
eventHandler7 = "2549659225"
-- Beginner: this function handles network event "2549659225".

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = dataCollection.match
  if not localValue2 then
    return
  end
  localValue2 = dataCollection.match
  localValue3 = localValue1.roundNo
  localValue2.roundNo = localValue3
  localValue2 = dataCollection.match
  localValue3 = localValue1.startTime
  localValue2.startTime = localValue3
  localValue2 = dataCollection.match
  localValue3 = localValue1.team
  localValue2.team = localValue3
  localValue2 = dataCollection.match
  localValue2.roundOver = false
  localValue2 = dataCollection.match
  localValue2 = localValue2.worldMode
  if localValue2 then
    localValue2 = dataCollection.match
    localValue2.hopOutZone = nil
    localValue2 = dataCollection.match
    localValue2.hopOutZoneTickRunning = false
  end
  localValue2 = workingValue32
  localValue2()
  localValue2 = dataCollection.match
  localValue2 = localValue2.worldMode
  if localValue2 then
    localValue2 = dataCollection.match
    localValue2 = localValue2.vehicleModel
    if localValue2 then
      localValue2 = workingValue42
      localValue3 = dataCollection.match
      localValue3 = localValue3.vehicleModel
      localValue2(localValue3)
    end
  end
  localValue2 = DoScreenFadeIn
  localValue3 = 300
  localValue2(localValue3)
  localValue2 = workingValue45
  localValue2()
  localValue2 = eventHandler5
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue2()
  localValue2 = Citizen
  localValue2 = localValue2.SetTimeout
  localValue3 = 1500
  localValue4 = workingValue57
  localValue2(localValue3, localValue4)
  localValue2 = dataCollection.aiBots
  if localValue2 then
    localValue2 = workingValue54
    localValue2()
  end
  localValue2 = workingValue58
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = dataCollection.match
    if localValue2 then
      localValue2 = dataCollection.fighting
      if localValue2 then
        goto continueAtStep66
      end
    end
  end
  return
  ::continueAtStep66::
  localValue2 = dataCollection.match
  localValue2 = localValue2.worldMode
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.announceMpSmallMsg
    localValue3 = workingValue3
    localValue4 = "client.hopoutDriveTitle"
    localValue3 = localValue3(localValue4)
    localValue4 = workingValue3
    localValue5 = "client.hopoutDriveSubtitle"
    localValue4 = localValue4(localValue5)
    localValue5 = 2
    localValue6 = 7000
    localValue2(localValue3, localValue4, localValue5, localValue6)
  end
  localValue2 = dataCollection.aiBots
  if localValue2 then
    localValue2 = workingValue55
    localValue2()
    localValue2 = workingValue56
    localValue2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2549659225".
eventHandler6(eventHandler7, text9)
eventHandler6 = RegisterNetEvent
eventHandler7 = "a45805e6ee"
-- Beginner: this function handles network event "a45805e6ee".

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag
  localValue2 = dataCollection.match
  if localValue2 then
    localValue2 = dataCollection.match
    localValue3 = localValue1.score
    localValue2.score = localValue3
    localValue2 = dataCollection.match
    localValue3 = localValue1.bestOf
    localValue2.bestOf = localValue3
    localValue2 = dataCollection.match
    localValue3 = localValue1.roundNo
    localValue2.roundNo = localValue3
    localValue2 = dataCollection.match
    localValue3 = localValue1.startTime
    localValue2.startTime = localValue3
    localValue2 = dataCollection.match
    localValue3 = localValue1.roundTime
    localValue2.roundTime = localValue3
    localValue2 = dataCollection.match
    localValue3 = localValue1.spectatorCount
    if not localValue3 then
      localValue3 = 0
    end
    localValue2.spectatorCount = localValue3
    localValue2 = localValue1.players
    if localValue2 then
      localValue2 = ipairs
      localValue3 = localValue1.players
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
      for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
        stringHelper = localValue7.source
        if stringHelper then
          stringHelper = dataCollection.match
          stringHelper = stringHelper.players
          workingValue59 = localValue7.source
          stringHelper = stringHelper[workingValue59]
          if stringHelper then
            stringHelper = dataCollection.match
            stringHelper = stringHelper.players
            workingValue59 = localValue7.source
            stringHelper = stringHelper[workingValue59]
            workingValue59 = localValue7.alive
            workingValue59 = false ~= workingValue59
            stringHelper.alive = workingValue59
          end
        end
      end
    end
  end
  localValue2 = dataCollection.spectate
  if localValue2 then
    localValue2 = dataCollection.spectate
    localValue2 = localValue2.matchId
    localValue3 = localValue1.matchId
    if localValue2 == localValue3 then
      localValue2 = localValue1.players
      if localValue2 then
        localValue2 = {}
        localValue3 = ipairs
        localValue4 = localValue1.players
        localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
        for localValue7, stringHelper in localValue3, localValue4, localValue5, localValue6 do
          workingValue59 = stringHelper.alive
          if false ~= workingValue59 then
            workingValue59 = stringHelper.source
            if workingValue59 then
              workingValue59 = #localValue2
              workingValue59 = workingValue59 + 1
              stringHelper2 = {}
              stateFlag = stringHelper.source
              stringHelper2.source = stateFlag
              stateFlag = stringHelper.userId
              stringHelper2.userId = stateFlag
              stateFlag = stringHelper.team
              stringHelper2.team = stateFlag
              stateFlag = stringHelper.name
              stringHelper2.name = stateFlag
              stringHelper2.alive = true
              localValue2[workingValue59] = stringHelper2
            end
          end
        end
        localValue3 = dataCollection.spectate
        localValue3.players = localValue2
        localValue3 = workingValue10
        localValue4 = "ARENA_SPECTATE_STATE"
        localValue5 = {}
        localValue5.active = true
        localValue6 = dataCollection.spectate
        localValue6 = localValue6.matchId
        localValue5.matchId = localValue6
        localValue5.players = localValue2
        localValue5.hud = localValue1
        localValue3(localValue4, localValue5)
      end
    end
  end
  localValue2 = workingValue10
  localValue3 = "ARENA_MATCH_HUD"
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a45805e6ee".
eventHandler6(eventHandler7, text9)
eventHandler6 = RegisterNetEvent
eventHandler7 = "a30a685e07"
-- Beginner: this function handles network event "a30a685e07".

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" == localValue2 then
    localValue2 = localValue1.winnerTeam
    if localValue2 then
      localValue2 = tonumber
      localValue3 = localValue1.winnerTeam
      localValue2 = localValue2(localValue3)
      localValue1.winnerTeam = localValue2
    end
    localValue2 = localValue1.players
    if localValue2 then
      localValue2 = ipairs
      localValue3 = localValue1.players
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
      for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
        stringHelper = localValue7.team
        if stringHelper then
          stringHelper = tonumber
          workingValue59 = localValue7.team
          stringHelper = stringHelper(workingValue59)
          localValue7.team = stringHelper
        end
      end
    end
  end
  localValue2 = workingValue10
  localValue3 = "ARENA_MVP"
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" == localValue2 then
    localValue2 = localValue1.tournamentId
    if localValue2 then
      localValue2 = localValue1.tournamentId
      dataCollection.pendingTournamentNav = localValue2
  end
  else
    dataCollection.pendingTournamentNav = nil
  end
  localValue2 = dataCollection.mvpOpen
  if localValue2 then
    return
  end
  dataCollection.mvpOpen = true
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue2 = localValue2 + 600
  localValue3 = Citizen
  localValue3 = localValue3.CreateThread

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local workingValue, playerPed, iterator, dataCollection4
    while true do
      workingValue = dataCollection.mvpOpen
      if workingValue then
        workingValue = DisableControlAction
        playerPed = 0
        iterator = 199
        dataCollection4 = true
        workingValue(playerPed, iterator, dataCollection4)
        workingValue = DisableControlAction
        playerPed = 0
        iterator = 200
        dataCollection4 = true
        workingValue(playerPed, iterator, dataCollection4)
        workingValue = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        workingValue = workingValue()
        playerPed = localValue2
        if workingValue >= playerPed then
          workingValue = IsControlJustReleased
          playerPed = 0
          iterator = 202
          workingValue = workingValue(playerPed, iterator)
          if workingValue then
            dataCollection.mvpOpen = false
            workingValue = workingValue10
            playerPed = "ARENA_MVP"
            iterator = false
            workingValue(playerPed, iterator)
            workingValue = dataCollection.pendingTournamentNav
            if workingValue then
              workingValue = dataCollection.pendingTournamentNav
              dataCollection.pendingTournamentNav = nil
              playerPed = workingValue20
              playerPed()
              playerPed = workingValue10
              iterator = "ARENA_OPEN_TOURNAMENT"
              dataCollection4 = {}
              dataCollection4.id = workingValue
              playerPed(iterator, dataCollection4)
            end
            break
          end
        end
      end
      workingValue = Wait
      playerPed = 0
      workingValue(playerPed)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue3(localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a30a685e07".
eventHandler6(eventHandler7, text9)

-- === HELPER FUNCTION (decompiler name: eventHandler6; parameters: none) ===
function eventHandler6()
  local localValue1, localValue2, localValue3
  localValue1 = workingValue33
  localValue1()
  localValue1 = dataCollection.fighting
  if localValue1 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    dataCollection.lastWagerEndedAt = localValue1
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = ClearEntityLastDamageEntity
    localValue3 = localValue1
    localValue2(localValue3)
    localValue2 = ClearEntityLastWeaponDamage
    localValue3 = localValue1
    localValue2(localValue3)
  end
  dataCollection.fighting = false
  localValue1 = workingValue7
  localValue1()
  localValue1 = workingValue8
  localValue1()
  localValue1 = workingValue23
  localValue1()
  localValue1 = workingValue52
  localValue1()
  dataCollection.aiBots = nil
  localValue1 = workingValue27
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.setSwitchGunEnabled
  localValue2 = true
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.clearAllGameTagNameOverrides
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.setPlayerNameDistance
  localValue2 = -1
  localValue1(localValue2)
  localValue1 = SetPlayerHealthRechargeMultiplier
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  localValue3 = 1.0
  localValue1(localValue2, localValue3)
  localValue1 = SetPlayerWeaponDamageModifier
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  localValue3 = 1.0
  localValue1(localValue2, localValue3)
  localValue1 = SetPlayerCanUseCover
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  localValue3 = true
  localValue1(localValue2, localValue3)
  localValue1 = SetPedPathCanUseLadders
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = true
  localValue1(localValue2, localValue3)
  localValue1 = dataCollection.combat
  localValue1 = localValue1.ctx
  if localValue1 then
    localValue1 = dataCollection.combat
    localValue1 = localValue1.ctx
    localValue1 = localValue1.weaponModel
    if localValue1 then
      localValue1 = workingValue30
      localValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = dataCollection.combat
      localValue3 = localValue3.ctx
      localValue3 = localValue3.weaponModel
      localValue1(localValue2, localValue3)
    end
  end
  dataCollection.match = nil
  localValue1 = dataCollection.combat
  localValue1.ctx = nil
  localValue1 = dataCollection.combat
  localValue1.fingerprint = nil
  localValue1 = workingValue10
  localValue2 = "ARENA_MATCH_HUD"
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = workingValue9
  localValue1()
end
eventHandler7 = RegisterNetEvent
text9 = "85f795c68f"
-- Beginner: this function handles network event "85f795c68f".

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1) ===
function text10(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading
  dataCollection.awaitingHubReturn = true
  localValue2 = localValue1 or localValue2
  if localValue1 then
    localValue2 = localValue1.won
  end
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = dataCollection.combat
  localValue4 = localValue4.ctx
  if localValue4 then
    localValue4 = dataCollection.combat
    localValue4 = localValue4.ctx
    localValue4 = localValue4.spawn
  end
  localValue5 = CMG
  localValue5 = localValue5.isSpectatingEvent
  localValue5 = localValue5()
  if not localValue5 then
    localValue5 = IsEntityDead
    localValue6 = localValue3
    localValue5 = localValue5(localValue6)
  end
  if localValue5 and localValue4 then
    localValue6 = localValue4.x
    if localValue6 then
      localValue6 = IsEntityDead
      localValue7 = localValue3
      localValue6 = localValue6(localValue7)
      if localValue6 then
        localValue6 = NetworkResurrectLocalPlayer
        localValue7 = localValue4.x
        stringHelper = localValue4.y
        workingValue59 = localValue4.z
        stringHelper2 = localValue4.w
        if not stringHelper2 then
          stringHelper2 = 0.0
        end
        stateFlag = true
        stateFlag3 = false
        localValue6(localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3)
        localValue6 = SetPlayerInvincible
        localValue7 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        localValue7 = localValue7()
        stringHelper = false
        localValue6(localValue7, stringHelper)
        localValue6 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue6 = localValue6()
        localValue3 = localValue6
      end
      localValue6 = SetEntityCoords
      localValue7 = localValue3
      stringHelper = localValue4.x
      workingValue59 = localValue4.y
      stringHelper2 = localValue4.z
      stateFlag = false
      stateFlag3 = false
      stateFlag5 = false
      heading = false
      -- Beginner: Move/teleport an entity to new coordinates.
      localValue6(localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading)
      localValue6 = SetEntityHeading
      localValue7 = localValue3
      stringHelper = localValue4.w
      if not stringHelper then
        stringHelper = 0.0
      end
      -- Beginner: Change the direction an entity is facing.
      localValue6(localValue7, stringHelper)
  end
  else
    localValue6 = IsEntityDead
    localValue7 = localValue3
    localValue6 = localValue6(localValue7)
    if localValue6 then
      localValue6 = GetEntityCoords
      localValue7 = localValue3
      -- Beginner: result below is entityCoords.
      localValue6 = localValue6(localValue7)
      localValue7 = NetworkResurrectLocalPlayer
      stringHelper = localValue6.x
      workingValue59 = localValue6.y
      stringHelper2 = localValue6.z
      stateFlag = GetEntityHeading
      stateFlag3 = localValue3
      -- Beginner: result below is heading.
      stateFlag = stateFlag(stateFlag3)
      stateFlag3 = true
      stateFlag5 = false
      localValue7(stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5)
      localValue7 = SetPlayerInvincible
      stringHelper = PlayerId
      -- Beginner: result below is localPlayerIndex.
      stringHelper = stringHelper()
      workingValue59 = false
      localValue7(stringHelper, workingValue59)
      localValue7 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue7 = localValue7()
      localValue3 = localValue7
    end
  end
  localValue6 = CMG
  localValue6 = localValue6.setEventSpectatorMode
  localValue7 = false
  localValue6(localValue7)
  localValue6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue6 = localValue6()
  localValue3 = localValue6
  if localValue5 and localValue4 then
    localValue6 = localValue4.x
    if localValue6 then
      localValue6 = SetEntityCoords
      localValue7 = localValue3
      stringHelper = localValue4.x
      workingValue59 = localValue4.y
      stringHelper2 = localValue4.z
      stateFlag = false
      stateFlag3 = false
      stateFlag5 = false
      heading = false
      -- Beginner: Move/teleport an entity to new coordinates.
      localValue6(localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading)
      localValue6 = SetEntityHeading
      localValue7 = localValue3
      stringHelper = localValue4.w
      if not stringHelper then
        stringHelper = 0.0
      end
      -- Beginner: Change the direction an entity is facing.
      localValue6(localValue7, stringHelper)
    end
  end
  if not localValue2 then
    localValue6 = FreezeEntityPosition
    localValue7 = localValue3
    stringHelper = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue6(localValue7, stringHelper)
  end
  localValue6 = CMG
  localValue6 = localValue6.setPlayerCombatTimer
  localValue7 = 0
  stringHelper = false
  localValue6(localValue7, stringHelper)
  localValue6 = eventHandler6
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue6()
  localValue6 = localValue1.tournamentFinal
  if not localValue6 then
    if localValue2 then
      localValue6 = CMG
      localValue6 = localValue6.announceMpSmallMsg
      localValue7 = "WAGER WON"
      stringHelper = ""
      workingValue59 = 18
      stringHelper2 = 3000
      localValue6(localValue7, stringHelper, workingValue59, stringHelper2)
    else
      localValue6 = CMG
      localValue6 = localValue6.announceMpSmallMsg
      localValue7 = "WAGER LOST"
      stringHelper = ""
      workingValue59 = 6
      stringHelper2 = 3000
      localValue6(localValue7, stringHelper, workingValue59, stringHelper2)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "85f795c68f".
eventHandler7(text9, text10)
eventHandler7 = RegisterNetEvent
text9 = "e0b1d03ed3"
-- Beginner: this function handles network event "e0b1d03ed3".

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2
  localValue1 = DoScreenFadeOut
  localValue2 = 400
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e0b1d03ed3".
eventHandler7(text9, text10)
eventHandler7 = RegisterNetEvent
text9 = "b5322c5402"
-- Beginner: this function handles network event "b5322c5402".

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1, localValue2) ===
function text10(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = dataCollection.mvpOpen
  if localValue3 then
    dataCollection.mvpOpen = false
    localValue3 = workingValue10
    localValue4 = "ARENA_MVP"
    localValue5 = false
    localValue3(localValue4, localValue5)
  end
  localValue3 = FreezeEntityPosition
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(localValue4, localValue5)
  localValue3 = Citizen
  localValue3 = localValue3.CreateThread

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local workingValue, playerPed, iterator
    workingValue = CMG
    workingValue = workingValue.podiumLeaderboard
    playerPed = localValue1
    if not playerPed then
      playerPed = {}
    end
    iterator = localValue2
    if not iterator then
      iterator = {}
    end
    workingValue(playerPed, iterator)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue3(localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b5322c5402".
eventHandler7(text9, text10)
eventHandler7 = RegisterNetEvent
text9 = "4f8a1ad150"
-- Beginner: this function handles network event "4f8a1ad150".

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1) ===
function text10(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2
  localValue2 = CMG
  localValue2 = localValue2.setPlayerCombatTimer
  localValue3 = 0
  localValue4 = false
  localValue2(localValue3, localValue4)
  dataCollection.awaitingHubReturn = false
  localValue2 = text5
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = eventHandler3
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue2()
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = IsEntityDead
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = GetEntityCoords
    localValue4 = localValue2
    -- Beginner: result below is entityCoords.
    localValue3 = localValue3(localValue4)
    localValue4 = NetworkResurrectLocalPlayer
    localValue5 = localValue3.x
    localValue6 = localValue3.y
    localValue7 = localValue3.z
    stringHelper = GetEntityHeading
    workingValue59 = localValue2
    -- Beginner: result below is heading.
    stringHelper = stringHelper(workingValue59)
    workingValue59 = true
    stringHelper2 = false
    localValue4(localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2)
    localValue4 = SetPlayerInvincible
    localValue5 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue5 = localValue5()
    localValue6 = false
    localValue4(localValue5, localValue6)
  end
  localValue3 = workingValue37
  localValue3()
  localValue3 = Wait
  localValue4 = 200
  localValue3(localValue4)
  localValue3 = DoScreenFadeIn
  localValue4 = 400
  localValue3(localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4f8a1ad150".
eventHandler7(text9, text10)

-- === HELPER FUNCTION (decompiler name: eventHandler7; parameters: localValue1) ===
function eventHandler7(localValue1)
  local localValue2, localValue3, localValue4
  dataCollection.spectate = nil
  localValue2 = CMG
  localValue2 = localValue2.setEventSpectatorMode
  localValue3 = false
  localValue2(localValue3)
  localValue2 = workingValue10
  localValue3 = "ARENA_SPECTATE_STATE"
  localValue4 = {}
  localValue4.active = false
  localValue2(localValue3, localValue4)
  localValue2 = workingValue10
  localValue3 = "ARENA_MATCH_HUD"
  localValue4 = false
  localValue2(localValue3, localValue4)
  localValue2 = FreezeEntityPosition
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, localValue4)
  localValue2 = workingValue37
  localValue2()
  if false ~= localValue1 then
    dataCollection.mvpOpen = false
    localValue2 = workingValue10
    localValue3 = "ARENA_MVP"
    localValue4 = false
    localValue2(localValue3, localValue4)
  end
  localValue2 = workingValue9
  localValue2()
end
text9 = RegisterNetEvent
text10 = "37c3f140a7"
-- Beginner: this function handles network event "37c3f140a7".

-- === HELPER FUNCTION (decompiler name: workingValue60; parameters: localValue1) ===
function workingValue60(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3
  dataCollection.spectate = localValue1
  localValue2 = workingValue9
  localValue2()
  localValue2 = workingValue21
  localValue2()
  localValue2 = DoScreenFadeOut
  localValue3 = 400
  localValue2(localValue3)
  localValue2 = Wait
  localValue3 = 500
  localValue2(localValue3)
  localValue2 = eventHandler3
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue2()
  localValue2 = workingValue40
  localValue3 = localValue1.ipls
  localValue2(localValue3)
  localValue2 = workingValue41
  localValue3 = localValue1.propLayout
  localValue2(localValue3)
  localValue2 = localValue1.spawn
  if localValue2 then
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    localValue4 = SetEntityCoords
    localValue5 = localValue3
    localValue6 = localValue2.x
    localValue7 = localValue2.y
    stringHelper = localValue2.z
    workingValue59 = workingValue51
    stringHelper = stringHelper - workingValue59
    workingValue59 = false
    stringHelper2 = false
    stateFlag = false
    stateFlag3 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    localValue4(localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3)
    localValue4 = SetEntityHeading
    localValue5 = localValue3
    localValue6 = localValue2.w
    if not localValue6 then
      localValue6 = 0.0
    end
    -- Beginner: Change the direction an entity is facing.
    localValue4(localValue5, localValue6)
  end
  localValue3 = CMG
  localValue3 = localValue3.setEventSpectatorMode
  localValue4 = true
  localValue3(localValue4)
  localValue3 = Wait
  localValue4 = 300
  localValue3(localValue4)
  localValue3 = DoScreenFadeIn
  localValue4 = 400
  localValue3(localValue4)
  localValue3 = workingValue10
  localValue4 = "ARENA_SPECTATE_STATE"
  localValue5 = {}
  localValue5.active = true
  localValue6 = localValue1.matchId
  localValue5.matchId = localValue6
  localValue6 = localValue1.players
  localValue5.players = localValue6
  localValue6 = localValue1.hud
  localValue5.hud = localValue6
  localValue3(localValue4, localValue5)
  localValue3 = Citizen
  localValue3 = localValue3.CreateThread

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local workingValue, playerPed, iterator, dataCollection4, stateFlag22, stateFlag23, number18
    workingValue = 0
    while true do
      playerPed = dataCollection.spectate
      if playerPed then
        playerPed = DisableControlAction
        iterator = 0
        dataCollection4 = 199
        stateFlag22 = true
        playerPed(iterator, dataCollection4, stateFlag22)
        playerPed = DisableControlAction
        iterator = 0
        dataCollection4 = 200
        stateFlag22 = true
        playerPed(iterator, dataCollection4, stateFlag22)
        playerPed = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        playerPed = playerPed()
        iterator = playerPed - workingValue
        dataCollection4 = 2000
        if iterator > dataCollection4 then
          iterator = BeginTextCommandDisplayHelp
          dataCollection4 = "STRING"
          iterator(dataCollection4)
          iterator = AddTextComponentSubstringPlayerName
          dataCollection4 = workingValue3
          stateFlag22 = "client.spectateLeave"
          dataCollection4, stateFlag22, stateFlag23, number18 = dataCollection4(stateFlag22)
          iterator(dataCollection4, stateFlag22, stateFlag23, number18)
          iterator = EndTextCommandDisplayHelp
          dataCollection4 = 0
          stateFlag22 = false
          stateFlag23 = false
          number18 = -1
          iterator(dataCollection4, stateFlag22, stateFlag23, number18)
          workingValue = playerPed
        end
        iterator = IsControlJustReleased
        dataCollection4 = 0
        stateFlag22 = 202
        iterator = iterator(dataCollection4, stateFlag22)
        if iterator then
          iterator = DoScreenFadeOut
          dataCollection4 = 300
          iterator(dataCollection4)
          iterator = Wait
          dataCollection4 = 350
          iterator(dataCollection4)
          iterator = TriggerServerEvent
          dataCollection4 = "7d900d0299"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7d900d0299".
          iterator(dataCollection4)
          iterator = eventHandler7
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          iterator()
          iterator = IsScreenFadedIn
          iterator = iterator()
          if not iterator then
            iterator = DoScreenFadeIn
            dataCollection4 = 400
            iterator(dataCollection4)
          end
          break
        end
      end
      iterator = Wait
      dataCollection4 = 0
      iterator(dataCollection4)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue3(localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "37c3f140a7".
text9(text10, workingValue60)
text9 = RegisterNetEvent
text10 = "966c51de4b"
-- Beginner: this function handles network event "966c51de4b".

-- === HELPER FUNCTION (decompiler name: workingValue60; parameters: none) ===
function workingValue60()
  local localValue1, localValue2
  localValue1 = eventHandler7
  localValue2 = dataCollection.mvpOpen
  localValue2 = not localValue2
  localValue1(localValue2)
  localValue1 = IsScreenFadedIn
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = Wait
    localValue2 = 200
    localValue1(localValue2)
    localValue1 = DoScreenFadeIn
    localValue2 = 400
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "966c51de4b".
text9(text10, workingValue60)
text9 = {}

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1) ===
function text10(localValue1)
  local localValue2, localValue3
  localValue2 = localValue1 % 6
  if 0 == localValue2 then
    localValue3 = 3
    return localValue3
  elseif 1 == localValue2 then
    localValue3 = 5
    return localValue3
  elseif 2 == localValue2 then
    localValue3 = 17
    return localValue3
  elseif 3 == localValue2 then
    localValue3 = 11
    return localValue3
  elseif 4 == localValue2 then
    localValue3 = 14
    return localValue3
  elseif 5 == localValue2 then
    localValue3 = 8
    return localValue3
  end
  localValue3 = 1
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue60; parameters: none) ===
function workingValue60()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper
  localValue1 = pairs
  localValue2 = text9
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = DoesBlipExist
    stringHelper = localValue6
    localValue7 = localValue7(stringHelper)
    if localValue7 then
      localValue7 = RemoveBlip
      stringHelper = localValue6
      localValue7(stringHelper)
    end
  end
  localValue1 = {}
  text9 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: none) ===
function workingValue61()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9
  localValue1 = dataCollection.warmup
  if not localValue1 then
    return
  end
  localValue1 = {}
  localValue2 = ipairs
  localValue3 = GetActivePlayers
  localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9 = localValue3()
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    stringHelper = PlayerId
    -- Beginner: result below is localPlayerIndex.
    stringHelper = stringHelper()
    if localValue7 ~= stringHelper then
      stringHelper = GetPlayerServerId
      workingValue59 = localValue7
      -- Beginner: result below is serverId.
      stringHelper = stringHelper(workingValue59)
      localValue1[stringHelper] = true
      workingValue59 = GetPlayerPed
      stringHelper2 = localValue7
      -- Beginner: result below is playerPed.
      workingValue59 = workingValue59(stringHelper2)
      if 0 ~= workingValue59 then
        stringHelper2 = IsEntityVisible
        stateFlag = workingValue59
        stringHelper2 = stringHelper2(stateFlag)
        if stringHelper2 then
          stringHelper2 = text9
          stringHelper2 = stringHelper2[stringHelper]
          stateFlag = GetBlipFromEntity
          stateFlag3 = workingValue59
          stateFlag = stateFlag(stateFlag3)
          if stringHelper2 then
            stateFlag3 = DoesBlipExist
            stateFlag5 = stringHelper2
            stateFlag3 = stateFlag3(stateFlag5)
            if stateFlag3 and stateFlag == stringHelper2 then
              goto continueAtStep107
            end
          end
          if stringHelper2 then
            stateFlag3 = DoesBlipExist
            stateFlag5 = stringHelper2
            stateFlag3 = stateFlag3(stateFlag5)
            if stateFlag3 then
              stateFlag3 = RemoveBlip
              stateFlag5 = stringHelper2
              stateFlag3(stateFlag5)
            end
          end
          stateFlag3 = DoesBlipExist
          stateFlag5 = stateFlag
          stateFlag3 = stateFlag3(stateFlag5)
          if stateFlag3 then
            stateFlag3 = RemoveBlip
            stateFlag5 = stateFlag
            stateFlag3(stateFlag5)
          end
          stateFlag3 = AddBlipForEntity
          stateFlag5 = workingValue59
          -- Beginner: result below is blipHandle.
          stateFlag3 = stateFlag3(stateFlag5)
          stringHelper2 = stateFlag3
          stateFlag3 = SetBlipSprite
          stateFlag5 = stringHelper2
          heading = IsEntityDead
          stateFlag7 = workingValue59
          heading = heading(stateFlag7)
          if heading then
            heading = 274
            if heading then
              goto continueAtStep77
            end
          end
          heading = 1
          ::continueAtStep77::
          stateFlag3(stateFlag5, heading)
          stateFlag3 = SetBlipCategory
          stateFlag5 = stringHelper2
          heading = 7
          stateFlag3(stateFlag5, heading)
          stateFlag3 = SetBlipColour
          stateFlag5 = stringHelper2
          heading = text10
          stateFlag7 = stringHelper
          heading, stateFlag7, stateFlag9 = heading(stateFlag7)
          stateFlag3(stateFlag5, heading, stateFlag7, stateFlag9)
          stateFlag3 = ShowHeadingIndicatorOnBlip
          stateFlag5 = stringHelper2
          heading = true
          stateFlag3(stateFlag5, heading)
          stateFlag3 = BeginTextCommandSetBlipName
          stateFlag5 = "STRING"
          stateFlag3(stateFlag5)
          stateFlag3 = AddTextComponentSubstringPlayerName
          stateFlag5 = CMG
          stateFlag5 = stateFlag5.getPlayerName
          heading = localValue7
          stateFlag5, heading, stateFlag7, stateFlag9 = stateFlag5(heading)
          stateFlag3(stateFlag5, heading, stateFlag7, stateFlag9)
          stateFlag3 = EndTextCommandSetBlipName
          stateFlag5 = stringHelper2
          stateFlag3(stateFlag5)
          stateFlag3 = text9
          stateFlag3[stringHelper] = stringHelper2
          goto continueAtStep160
          ::continueAtStep107::
          stateFlag3 = IsEntityDead
          stateFlag5 = workingValue59
          stateFlag3 = stateFlag3(stateFlag5)
          if stateFlag3 then
            stateFlag3 = 274
            if stateFlag3 then
              goto continueAtStep116
            end
          end
          stateFlag3 = 1
          ::continueAtStep116::
          stateFlag5 = GetBlipSprite
          heading = stringHelper2
          stateFlag5 = stateFlag5(heading)
          if stateFlag5 ~= stateFlag3 then
            stateFlag5 = SetBlipSprite
            heading = stringHelper2
            stateFlag7 = stateFlag3
            stateFlag5(heading, stateFlag7)
            stateFlag5 = SetBlipColour
            heading = stringHelper2
            stateFlag7 = text10
            stateFlag9 = stringHelper
            stateFlag7, stateFlag9 = stateFlag7(stateFlag9)
            stateFlag5(heading, stateFlag7, stateFlag9)
            stateFlag5 = BeginTextCommandSetBlipName
            heading = "STRING"
            stateFlag5(heading)
            stateFlag5 = AddTextComponentSubstringPlayerName
            heading = CMG
            heading = heading.getPlayerName
            stateFlag7 = localValue7
            heading, stateFlag7, stateFlag9 = heading(stateFlag7)
            stateFlag5(heading, stateFlag7, stateFlag9)
            stateFlag5 = EndTextCommandSetBlipName
            heading = stringHelper2
            stateFlag5(heading)
          end
      end
      else
        stringHelper2 = text9
        stringHelper2 = stringHelper2[stringHelper]
        if stringHelper2 then
          stringHelper2 = DoesBlipExist
          stateFlag = text9
          stateFlag = stateFlag[stringHelper]
          stringHelper2 = stringHelper2(stateFlag)
          if stringHelper2 then
            stringHelper2 = RemoveBlip
            stateFlag = text9
            stateFlag = stateFlag[stringHelper]
            stringHelper2(stateFlag)
          end
          stringHelper2 = text9
          stringHelper2[stringHelper] = nil
        end
      end
    end
    ::continueAtStep160::
  end
  localValue2 = pairs
  localValue3 = text9
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    stringHelper = localValue1[localValue6]
    if not stringHelper then
      stringHelper = DoesBlipExist
      workingValue59 = localValue7
      stringHelper = stringHelper(workingValue59)
      if stringHelper then
        stringHelper = RemoveBlip
        workingValue59 = localValue7
        stringHelper(workingValue59)
      end
      stringHelper = text9
      stringHelper[localValue6] = nil
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue62; parameters: none) ===
function workingValue62()
  local localValue1, localValue2
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local workingValue, playerPed
    while true do
      workingValue = dataCollection.warmup
      if not workingValue then
        break
      end
      workingValue = workingValue61
      workingValue()
      workingValue = Wait
      playerPed = 100
      workingValue(playerPed)
    end
    workingValue = workingValue60
    workingValue()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue63; parameters: none) ===
function workingValue63()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = ClearPedTasksImmediately
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = ClearPedBloodDamage
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = SetEntityMaxHealth
  localValue3 = localValue1
  localValue4 = 200
  localValue2(localValue3, localValue4)
  localValue2 = SetEntityHealth
  localValue3 = localValue1
  localValue4 = 200
  localValue2(localValue3, localValue4)
  localValue2 = dataCollection.warmup
  if localValue2 then
    localValue2 = dataCollection.warmup
    localValue2 = localValue2.useArmour
    if localValue2 then
      localValue2 = SetPedArmour
      localValue3 = localValue1
      localValue4 = 100
      localValue2(localValue3, localValue4)
  end
  else
    localValue2 = SetPedArmour
    localValue3 = localValue1
    localValue4 = 0
    localValue2(localValue3, localValue4)
  end
  localValue2 = SetPlayerHealthRechargeMultiplier
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  localValue4 = 0.0
  localValue2(localValue3, localValue4)
  localValue2 = SetPlayerWeaponDamageModifier
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  localValue4 = 1.0
  localValue2(localValue3, localValue4)
  localValue2 = SetPlayerWeaponDefenseModifier
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  localValue4 = 1.0
  localValue2(localValue3, localValue4)
  localValue2 = SetPlayerMeleeWeaponDamageModifier
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  localValue4 = 1.0
  localValue2(localValue3, localValue4)
  localValue2 = SetEntityProofs
  localValue3 = localValue1
  localValue4 = false
  localValue5 = false
  localValue6 = false
  localValue7 = false
  stringHelper = false
  workingValue59 = false
  stringHelper2 = false
  stateFlag = false
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag)
  localValue2 = workingValue26
  localValue3 = nil
  localValue4 = true
  localValue2(localValue3, localValue4)
  localValue2 = SetCanAttackFriendly
  localValue3 = localValue1
  localValue4 = false
  localValue5 = false
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = dataCollection.warmup
  if localValue2 then
    localValue2 = dataCollection.warmup
    localValue2 = localValue2.weapon
    if localValue2 then
      localValue2 = dataCollection.warmup
      localValue2 = localValue2.weapon
      localValue3 = GetHashKey
      localValue4 = localValue2
      -- Beginner: result below is hash.
      localValue3 = localValue3(localValue4)
      localValue4 = cmgOperation.defaultWeaponAmmo
      if not localValue4 then
        localValue4 = 250
      end
      localValue5 = HasWeaponAssetLoaded
      localValue6 = localValue3
      localValue5 = localValue5(localValue6)
      if not localValue5 then
        localValue5 = RequestWeaponAsset
        localValue6 = localValue3
        localValue7 = 31
        stringHelper = 0
        localValue5(localValue6, localValue7, stringHelper)
        localValue5 = 0
        while true do
          localValue6 = HasWeaponAssetLoaded
          localValue7 = localValue3
          localValue6 = localValue6(localValue7)
          if not (not localValue6 and localValue5 < 100) then
            break
          end
          localValue6 = Wait
          localValue7 = 0
          localValue6(localValue7)
          localValue5 = localValue5 + 1
        end
      end
      localValue5 = HasPedGotWeapon
      localValue6 = localValue1
      localValue7 = localValue3
      stringHelper = false
      localValue5 = localValue5(localValue6, localValue7, stringHelper)
      if not localValue5 then
        localValue5 = GiveWeaponToPed
        localValue6 = localValue1
        localValue7 = localValue3
        stringHelper = localValue4
        workingValue59 = false
        stringHelper2 = true
        localValue5(localValue6, localValue7, stringHelper, workingValue59, stringHelper2)
      end
      localValue5 = SetCurrentPedWeapon
      localValue6 = localValue1
      localValue7 = localValue3
      stringHelper = true
      localValue5(localValue6, localValue7, stringHelper)
      localValue5 = SetPedInfiniteAmmo
      localValue6 = localValue1
      localValue7 = true
      stringHelper = localValue3
      localValue5(localValue6, localValue7, stringHelper)
      localValue5 = SetPedInfiniteAmmoClip
      localValue6 = localValue1
      localValue7 = true
      localValue5(localValue6, localValue7)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue64; parameters: localValue1) ===
function workingValue64(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5
  localValue2 = dataCollection.warmup
  if localValue2 then
    localValue2 = dataCollection.warmup
    localValue2 = localValue2.spawns
  end
  if localValue2 then
    localValue3 = #localValue2
    if 0 ~= localValue3 then
      goto continueAtStep12
    end
  end
  return
  ::continueAtStep12::
  localValue3 = math
  localValue3 = localValue3.random
  localValue4 = #localValue2
  localValue3 = localValue3(localValue4)
  localValue3 = localValue2[localValue3]
  if localValue1 then
    localValue4 = NetworkResurrectLocalPlayer
    localValue5 = localValue3.x
    localValue6 = localValue3.y
    localValue7 = localValue3.z
    stringHelper = localValue3.w
    workingValue59 = true
    stringHelper2 = false
    localValue4(localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2)
    localValue4 = SetPlayerInvincible
    localValue5 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue5 = localValue5()
    localValue6 = false
    localValue4(localValue5, localValue6)
  else
    localValue4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue4 = localValue4()
    localValue5 = SetEntityCoords
    localValue6 = localValue4
    localValue7 = localValue3.x
    stringHelper = localValue3.y
    workingValue59 = localValue3.z
    workingValue59 = workingValue59 - 1.0
    stringHelper2 = false
    stateFlag = false
    stateFlag3 = false
    stateFlag5 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    localValue5(localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5)
    localValue5 = SetEntityHeading
    localValue6 = localValue4
    localValue7 = localValue3.w
    -- Beginner: Change the direction an entity is facing.
    localValue5(localValue6, localValue7)
  end
  localValue4 = workingValue63
  localValue4()
end

-- === HELPER FUNCTION (decompiler name: workingValue65; parameters: none) ===
function workingValue65()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = cmgOperation.warmup
  if localValue1 then
    localValue1 = cmgOperation.warmup
    localValue1 = localValue1.locations
  end
  if localValue1 then
    localValue2 = #localValue1
    if not (localValue2 < 2) then
      goto continueAtStep13
    end
  end
  localValue2 = nil
  return localValue2
  ::continueAtStep13::
  localValue2 = cmgOperation.warmup
  localValue2 = localValue2.rotateMinutes
  if not localValue2 then
    localValue2 = 30
  end
  localValue2 = localValue2 * 60
  localValue3 = CMG
  localValue3 = localValue3.getEstimatedServerOsTime
  localValue3 = localValue3()
  localValue4 = math
  localValue4 = localValue4.floor
  localValue5 = localValue3 / localValue2
  localValue4 = localValue4(localValue5)
  localValue4 = localValue4 + 1
  localValue4 = localValue4 * localValue2
  localValue5 = math
  localValue5 = localValue5.max
  localValue6 = 0
  localValue7 = localValue4 - localValue3
  return localValue5(localValue6, localValue7)
end
cmgOperation9 = CMG
cmgOperation9 = cmgOperation9.registerHudTimerBarProvider
text11 = "arenaWarmup"

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper
  localValue2 = dataCollection.warmup
  if not localValue2 then
    return
  end
  localValue2 = workingValue65
  localValue2 = localValue2()
  if localValue2 then
    localValue3 = localValue1.push
    localValue4 = workingValue3
    localValue5 = "client.warmupMapChangesIn"
    localValue4 = localValue4(localValue5)
    localValue5 = string
    localValue5 = localValue5.format
    localValue6 = "%d:%02d"
    localValue7 = math
    localValue7 = localValue7.floor
    stringHelper = localValue2 / 60
    localValue7 = localValue7(stringHelper)
    stringHelper = localValue2 % 60
    localValue5, localValue6, localValue7, stringHelper = localValue5(localValue6, localValue7, stringHelper)
    localValue3(localValue4, localValue5, localValue6, localValue7, stringHelper)
  end
  localValue3 = dataCollection.warmup
  localValue3 = localValue3.playerCount
  if not localValue3 then
    localValue3 = 1
  end
  localValue4 = localValue1.push
  localValue5 = workingValue3
  localValue6 = "client.warmupPlayersIn"
  localValue5 = localValue5(localValue6)
  localValue6 = tostring
  localValue7 = localValue3
  localValue6, localValue7, stringHelper = localValue6(localValue7)
  localValue4(localValue5, localValue6, localValue7, stringHelper)
end
cmgOperation9(text11, eventHandler)
cmgOperation9 = RegisterNetEvent
text11 = "424342ff58"
-- Beginner: this function handles network event "424342ff58".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3
  localValue2 = dataCollection.warmup
  if localValue2 then
    localValue2 = type
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if "number" == localValue2 then
      goto continueAtStep10
    end
  end
  return
  ::continueAtStep10::
  localValue2 = dataCollection.warmup
  localValue2.playerCount = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "424342ff58".
cmgOperation9(text11, eventHandler)
cmgOperation9 = RegisterNetEvent
text11 = "8f7c3fe494"
-- Beginner: this function handles network event "8f7c3fe494".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2 = localValue2.setRedzoneTimerDisabled
  localValue3 = true
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.setPlayerCombatTimer
  localValue3 = 0
  localValue4 = false
  localValue2(localValue3, localValue4)
  dataCollection.warmup = localValue1
  localValue2 = workingValue7
  localValue2()
  localValue2 = workingValue9
  localValue2()
  localValue2 = workingValue21
  localValue2()
  localValue2 = CMG
  localValue2 = localValue2.setHudTimerBarProviderActive
  localValue3 = "arenaWarmup"
  localValue4 = true
  localValue2(localValue3, localValue4)
  localValue2 = DoScreenFadeOut
  localValue3 = 400
  localValue2(localValue3)
  localValue2 = Wait
  localValue3 = 500
  localValue2(localValue3)
  localValue2 = workingValue64
  localValue3 = false
  localValue2(localValue3)
  localValue2 = DoScreenFadeIn
  localValue3 = 400
  localValue2(localValue3)
  localValue2 = workingValue62
  localValue2()
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local workingValue, playerPed, iterator
    while true do
      workingValue = dataCollection.warmup
      if not workingValue then
        break
      end
      workingValue = IsEntityDead
      playerPed = PlayerPedId
      playerPed, iterator = playerPed()
      workingValue = workingValue(playerPed, iterator)
      if workingValue then
        workingValue = dataCollection.warmup
        workingValue = workingValue.respawnSeconds
        if not workingValue then
          workingValue = 0
        end
        workingValue = workingValue * 1000
        if workingValue > 0 then
          playerPed = Wait
          iterator = workingValue
          playerPed(iterator)
        end
        playerPed = dataCollection.warmup
        if playerPed then
          playerPed = DoScreenFadeOut
          iterator = 200
          playerPed(iterator)
          playerPed = Wait
          iterator = 250
          playerPed(iterator)
          playerPed = workingValue64
          iterator = true
          playerPed(iterator)
          playerPed = DoScreenFadeIn
          iterator = 200
          playerPed(iterator)
        end
      end
      workingValue = Wait
      playerPed = 150
      workingValue(playerPed)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local workingValue, playerPed, iterator, dataCollection4, stateFlag22, stateFlag23, number18
    workingValue = 0
    while true do
      playerPed = dataCollection.warmup
      if not playerPed then
        break
      end
      playerPed = DisableControlAction
      iterator = 0
      dataCollection4 = 199
      stateFlag22 = true
      playerPed(iterator, dataCollection4, stateFlag22)
      playerPed = DisableControlAction
      iterator = 0
      dataCollection4 = 200
      stateFlag22 = true
      playerPed(iterator, dataCollection4, stateFlag22)
      playerPed = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      playerPed = playerPed()
      iterator = playerPed - workingValue
      dataCollection4 = 2000
      if iterator > dataCollection4 then
        iterator = BeginTextCommandDisplayHelp
        dataCollection4 = "STRING"
        iterator(dataCollection4)
        iterator = AddTextComponentSubstringPlayerName
        dataCollection4 = workingValue3
        stateFlag22 = "client.warmupLeave"
        dataCollection4, stateFlag22, stateFlag23, number18 = dataCollection4(stateFlag22)
        iterator(dataCollection4, stateFlag22, stateFlag23, number18)
        iterator = EndTextCommandDisplayHelp
        dataCollection4 = 0
        stateFlag22 = false
        stateFlag23 = false
        number18 = -1
        iterator(dataCollection4, stateFlag22, stateFlag23, number18)
        workingValue = playerPed
      end
      iterator = IsControlJustReleased
      dataCollection4 = 0
      stateFlag22 = 202
      iterator = iterator(dataCollection4, stateFlag22)
      if iterator then
        iterator = DoScreenFadeOut
        dataCollection4 = 300
        iterator(dataCollection4)
        iterator = Wait
        dataCollection4 = 350
        iterator(dataCollection4)
        iterator = TriggerServerEvent
        dataCollection4 = "c4ac72b450"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c4ac72b450".
        iterator(dataCollection4)
        break
      end
      iterator = Wait
      dataCollection4 = 0
      iterator(dataCollection4)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8f7c3fe494".
cmgOperation9(text11, eventHandler)
cmgOperation9 = RegisterNetEvent
text11 = "40c5828829"
-- Beginner: this function handles network event "40c5828829".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = dataCollection.warmup
  if not localValue2 then
    return
  end
  localValue2 = dataCollection.warmup
  localValue3 = localValue1.spawns
  localValue2.spawns = localValue3
  localValue2 = dataCollection.warmup
  localValue3 = localValue1.locationName
  localValue2.locationName = localValue3
  localValue2 = DoScreenFadeOut
  localValue3 = 250
  localValue2(localValue3)
  localValue2 = Wait
  localValue3 = 300
  localValue2(localValue3)
  localValue2 = workingValue64
  localValue3 = true
  localValue2(localValue3)
  localValue2 = DoScreenFadeIn
  localValue3 = 250
  localValue2(localValue3)
  localValue2 = localValue1.locationName
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.announceMpSmallMsg
    localValue3 = "WARMUP MOVED"
    localValue4 = localValue1.locationName
    localValue5 = 18
    localValue6 = 3000
    localValue2(localValue3, localValue4, localValue5, localValue6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "40c5828829".
cmgOperation9(text11, eventHandler)
cmgOperation9 = RegisterNetEvent
text11 = "40315d934d"
-- Beginner: this function handles network event "40315d934d".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3
  dataCollection.warmup = nil
  localValue1 = workingValue7
  localValue1()
  localValue1 = workingValue60
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.setRedzoneTimerDisabled
  localValue2 = false
  localValue1(localValue2)
  localValue1 = workingValue9
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.setHudTimerBarProviderActive
  localValue2 = "arenaWarmup"
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = cmgOperation.warmup
  if localValue1 then
    localValue1 = cmgOperation.warmup
    localValue1 = localValue1.weapon
    if localValue1 then
      localValue1 = workingValue30
      localValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = cmgOperation.warmup
      localValue3 = localValue3.weapon
      localValue1(localValue2, localValue3)
    end
  end
  localValue1 = workingValue27
  localValue1()
  localValue1 = SetPlayerHealthRechargeMultiplier
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  localValue3 = 1.0
  localValue1(localValue2, localValue3)
  localValue1 = SetPlayerWeaponDamageModifier
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  localValue3 = 1.0
  localValue1(localValue2, localValue3)
  localValue1 = workingValue37
  localValue1()
  localValue1 = IsScreenFadedIn
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = Wait
    localValue2 = 200
    localValue1(localValue2)
    localValue1 = DoScreenFadeIn
    localValue2 = 400
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "40315d934d".
cmgOperation9(text11, eventHandler)

-- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: none) ===
function cmgOperation9()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper
  localValue1 = ipairs
  localValue2 = dataCollection.spawnedProps
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = DoesEntityExist
    stringHelper = localValue6
    localValue7 = localValue7(stringHelper)
    if localValue7 then
      localValue7 = DeleteEntity
      stringHelper = localValue6
      -- Beginner: Delete a GTA entity.
      localValue7(stringHelper)
    end
  end
  localValue1 = {}
  dataCollection.spawnedProps = localValue1
  localValue1 = ipairs
  localValue2 = dataCollection.loadedIpls
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = RemoveIpl
    stringHelper = localValue6
    localValue7(stringHelper)
  end
  localValue1 = {}
  dataCollection.loadedIpls = localValue1
end

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1) ===
function text11(localValue1)
  local localValue2, localValue3
  localValue2 = dataCollection.preview
  if not localValue2 then
    return
  end
  dataCollection.preview = false
  localValue2 = CMG
  localValue2 = localValue2.setRedzoneTimerDisabled
  localValue3 = false
  localValue2(localValue3)
  localValue2 = cmgOperation9
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue2()
  localValue2 = workingValue9
  localValue2()
  if not localValue1 then
    localValue2 = TriggerServerEvent
    localValue3 = "035a5138cc"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "035a5138cc".
    localValue2(localValue3)
  end
end
eventHandler = RegisterNetEvent
text = "573b531e71"
-- Beginner: this function handles network event "573b531e71".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3
  localValue2 = CMG
  localValue2 = localValue2.setRedzoneTimerDisabled
  localValue3 = true
  localValue2(localValue3)
  dataCollection.preview = true
  localValue2 = workingValue9
  localValue2()
  localValue2 = workingValue21
  localValue2()
  localValue2 = DoScreenFadeOut
  localValue3 = 400
  localValue2(localValue3)
  localValue2 = Wait
  localValue3 = 500
  localValue2(localValue3)
  localValue2 = workingValue40
  localValue3 = localValue1.ipls
  localValue2(localValue3)
  localValue2 = workingValue41
  localValue3 = localValue1.propLayout
  localValue2(localValue3)
  localValue2 = localValue1.spawn
  if localValue2 then
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    localValue4 = SetEntityCoords
    localValue5 = localValue3
    localValue6 = localValue2.x
    localValue7 = localValue2.y
    stringHelper = localValue2.z
    stringHelper = stringHelper - 1.0
    workingValue59 = false
    stringHelper2 = false
    stateFlag = false
    stateFlag3 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    localValue4(localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3)
    localValue4 = SetEntityHeading
    localValue5 = localValue3
    localValue6 = localValue2.w
    if not localValue6 then
      localValue6 = 0.0
    end
    -- Beginner: Change the direction an entity is facing.
    localValue4(localValue5, localValue6)
  end
  localValue3 = Wait
  localValue4 = 300
  localValue3(localValue4)
  localValue3 = DoScreenFadeIn
  localValue4 = 400
  localValue3(localValue4)
  localValue3 = Citizen
  localValue3 = localValue3.CreateThread

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local workingValue, playerPed, iterator, dataCollection4, stateFlag22, stateFlag23, number18
    workingValue = 0
    while true do
      playerPed = dataCollection.preview
      if not playerPed then
        break
      end
      playerPed = DisableControlAction
      iterator = 0
      dataCollection4 = 199
      stateFlag22 = true
      playerPed(iterator, dataCollection4, stateFlag22)
      playerPed = DisableControlAction
      iterator = 0
      dataCollection4 = 200
      stateFlag22 = true
      playerPed(iterator, dataCollection4, stateFlag22)
      playerPed = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      playerPed = playerPed()
      iterator = playerPed - workingValue
      dataCollection4 = 2000
      if iterator > dataCollection4 then
        iterator = BeginTextCommandDisplayHelp
        dataCollection4 = "STRING"
        iterator(dataCollection4)
        iterator = AddTextComponentSubstringPlayerName
        dataCollection4 = workingValue3
        stateFlag22 = "client.previewExit"
        dataCollection4, stateFlag22, stateFlag23, number18 = dataCollection4(stateFlag22)
        iterator(dataCollection4, stateFlag22, stateFlag23, number18)
        iterator = EndTextCommandDisplayHelp
        dataCollection4 = 0
        stateFlag22 = false
        stateFlag23 = true
        number18 = -1
        iterator(dataCollection4, stateFlag22, stateFlag23, number18)
        workingValue = playerPed
      end
      iterator = IsControlJustReleased
      dataCollection4 = 0
      stateFlag22 = 202
      iterator = iterator(dataCollection4, stateFlag22)
      if iterator then
        iterator = DoScreenFadeOut
        dataCollection4 = 300
        iterator(dataCollection4)
        iterator = Wait
        dataCollection4 = 350
        iterator(dataCollection4)
        iterator = text11
        dataCollection4 = false
        iterator(dataCollection4)
        break
      end
      iterator = Wait
      dataCollection4 = 0
      iterator(dataCollection4)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue3(localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "573b531e71".
eventHandler(text, workingValue2)
eventHandler = RegisterNetEvent
text = "f2ad0543e3"
-- Beginner: this function handles network event "f2ad0543e3".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2
  dataCollection.preview = false
  localValue1 = CMG
  localValue1 = localValue1.setRedzoneTimerDisabled
  localValue2 = false
  localValue1(localValue2)
  localValue1 = cmgOperation9
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue1()
  localValue1 = workingValue9
  localValue1()
  localValue1 = workingValue37
  localValue1()
  localValue1 = IsScreenFadedIn
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = Wait
    localValue2 = 200
    localValue1(localValue2)
    localValue1 = DoScreenFadeIn
    localValue2 = 400
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f2ad0543e3".
eventHandler(text, workingValue2)
eventHandler = RegisterNetEvent
text = "2492ddffc0"
-- Beginner: this function handles network event "2492ddffc0".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2
  localValue1 = dataCollection.fighting
  if localValue1 then
    return
  end
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = pairs
  localValue3 = cmgOperation.wagerExclusiveWeapons
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6 in localValue2, localValue3, localValue4, localValue5 do
    localValue7 = HasPedGotWeapon
    stringHelper = localValue1
    workingValue59 = localValue6
    stringHelper2 = false
    localValue7 = localValue7(stringHelper, workingValue59, stringHelper2)
    if localValue7 then
      localValue7 = RemoveWeaponFromPed
      stringHelper = localValue1
      workingValue59 = localValue6
      localValue7(stringHelper, workingValue59)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2492ddffc0".
eventHandler(text, workingValue2)
eventHandler = RegisterNetEvent
text = "193ee4e15e"
-- Beginner: this function handles network event "193ee4e15e".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2
  localValue1 = Wait
  localValue2 = 1000
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.inArena
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = RefillAmmoInstantly
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "193ee4e15e".
eventHandler(text, workingValue2)
eventHandler = RegisterNetEvent
text = "cdcf8d66cc"
-- Beginner: this function handles network event "cdcf8d66cc".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2
  if not localValue1 then
    return
  end
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = FreezeEntityPosition
  localValue4 = localValue2
  localValue5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(localValue4, localValue5)
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, stringHelper in localValue3, localValue4, localValue5, localValue6 do
    workingValue59 = RequestIpl
    stringHelper2 = stringHelper
    workingValue59(stringHelper2)
    while true do
      workingValue59 = IsIplActive
      stringHelper2 = stringHelper
      workingValue59 = workingValue59(stringHelper2)
      if workingValue59 then
        break
      end
      workingValue59 = Wait
      stringHelper2 = 100
      workingValue59(stringHelper2)
    end
    workingValue59 = dataCollection.adminTicketIpls
    stringHelper2 = dataCollection.adminTicketIpls
    stringHelper2 = #stringHelper2
    stringHelper2 = stringHelper2 + 1
    workingValue59[stringHelper2] = stringHelper
  end
  localValue3 = FreezeEntityPosition
  localValue4 = localValue2
  localValue5 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(localValue4, localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cdcf8d66cc".
eventHandler(text, workingValue2)
eventHandler = RegisterNetEvent
text = "4e6154b0f0"
-- Beginner: this function handles network event "4e6154b0f0".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59, stringHelper2, stateFlag, stateFlag3, stateFlag5, heading, stateFlag7, stateFlag9
  if not localValue1 then
    return
  end
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    stringHelper = RemoveIpl
    workingValue59 = localValue7
    stringHelper(workingValue59)
    stringHelper = ipairs
    workingValue59 = dataCollection.adminTicketIpls
    stringHelper, workingValue59, stringHelper2, stateFlag = stringHelper(workingValue59)
    for stateFlag3, stateFlag5 in stringHelper, workingValue59, stringHelper2, stateFlag do
      if stateFlag5 == localValue7 then
        heading = table
        heading = heading.remove
        stateFlag7 = dataCollection.adminTicketIpls
        stateFlag9 = stateFlag3
        heading(stateFlag7, stateFlag9)
        break
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4e6154b0f0".
eventHandler(text, workingValue2)
eventHandler = AddEventHandler
text = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, stringHelper, workingValue59
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 ~= localValue1 then
    return
  end
  localValue2 = ipairs
  localValue3 = dataCollection.spawnedProps
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    stringHelper = DoesEntityExist
    workingValue59 = localValue7
    stringHelper = stringHelper(workingValue59)
    if stringHelper then
      stringHelper = DeleteEntity
      workingValue59 = localValue7
      -- Beginner: Delete a GTA entity.
      stringHelper(workingValue59)
    end
  end
  localValue2 = ipairs
  localValue3 = dataCollection.loadedIpls
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    stringHelper = RemoveIpl
    workingValue59 = localValue7
    stringHelper(workingValue59)
  end
  localValue2 = pairs
  localValue3 = dataCollection.botPeds
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    stringHelper = DoesEntityExist
    workingValue59 = localValue7
    stringHelper = stringHelper(workingValue59)
    if stringHelper then
      stringHelper = DeleteEntity
      workingValue59 = localValue7
      -- Beginner: Delete a GTA entity.
      stringHelper(workingValue59)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventHandler(text, workingValue2)
