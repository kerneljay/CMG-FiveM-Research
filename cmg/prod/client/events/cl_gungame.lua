--[[
    LEVEL 1 BEGINNER GUIDE — Gungame
    =====================================

    File: cmg/prod/client/events/cl_gungame.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Gungame feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 16
      * Background threads: 0
      * Always-running loops: 3
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
local cmgCall, dataTable, numberValue2, numberValue3, workValue2, textValue, cmgCall2, textValue2, eventRegistration, textValue3, workValue
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/events/cfg_gg"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
dataTable = {}
numberValue2 = 1
numberValue3 = 0
workValue2 = AddRelationshipGroup
textValue = "GG_FFA"
workValue2, textValue = workValue2(textValue)
cmgCall2 = CMG
cmgCall2 = cmgCall2.registerHudTimerBarProvider
textValue2 = "gungame"

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = dataTable.state
  if "started" ~= arg2 then
    return
  end
  arg2 = arg1.push
  arg3 = "~b~WEAPON TIER~w~"
  arg4 = numberValue2
  arg5 = "/10"
  arg4 = arg4 .. arg5
  arg2(arg3, arg4)
  arg2 = arg1.push
  arg3 = "~b~PROGRESS~w~"
  arg4 = numberValue3
  arg5 = "/2"
  arg4 = arg4 .. arg5
  arg2(arg3, arg4)
end
cmgCall2(textValue2, eventRegistration)

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2, arg3
  arg1 = math
  arg1 = arg1.random
  arg2 = 1
  arg3 = 5
  arg1 = arg1(arg2, arg3)
  arg2 = string
  arg2 = arg2.char
  arg3 = 96 + arg1
  return arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, arg3
  arg2 = #arg1
  if arg2 > 0 then
    arg2 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local iterator, numberValue, flag5, numberValue4, workValue3, workValue4, cmgCall4, workValue5, cmgCall5, workValue6, position
      while true do
        iterator = dataTable.pickups
        if not iterator then
          break
        end
        iterator = dataTable.state
        if "ended" == iterator then
          break
        end
        iterator = pairs
        numberValue = dataTable.pickups
        iterator, numberValue, flag5, numberValue4 = iterator(numberValue)
        for workValue3, workValue4 in iterator, numberValue, flag5, numberValue4 do
          cmgCall4 = CMG
          cmgCall4 = cmgCall4.deletePickup
          workValue5 = workValue4
          cmgCall4(workValue5)
        end
        iterator = {}
        dataTable.pickups = iterator
        iterator = pairs
        numberValue = arg1
        iterator, numberValue, flag5, numberValue4 = iterator(numberValue)
        for workValue3, workValue4 in iterator, numberValue, flag5, numberValue4 do
          cmgCall4 = table
          cmgCall4 = cmgCall4.insert
          workValue5 = dataTable.pickups
          cmgCall5 = CMG
          cmgCall5 = cmgCall5.createPickup
          workValue6 = workValue4.hash
          position = workValue4.position
          cmgCall5, workValue6, position = cmgCall5(workValue6, position)
          cmgCall4(workValue5, cmgCall5, workValue6, position)
        end
        iterator = Wait
        numberValue = 60000
        iterator(numberValue)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg2(arg3)
  end
end
eventRegistration = RegisterNetEvent
textValue3 = "7892140796"
-- Beginner: this function handles network event "7892140796".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue(arg1, arg2, arg3, arg4, arg5)
  local playerPed, cmgCall3, flag6, flag7, flag8, flag, flag2, flag3, flag4
  dataTable.state = "loading"
  playerPed = CMG
  playerPed = playerPed.loadClientRockstarMap
  cmgCall3 = arg2
  flag6 = false
  playerPed(cmgCall3, flag6)
  dataTable.name = arg1
  playerPed = {}
  dataTable.pickups = playerPed
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.setEventRespawnPosition
  flag6 = arg3
  cmgCall3(flag6)
  cmgCall3 = SetEntityCoordsNoOffset
  flag6 = playerPed
  flag7 = arg3.x
  flag8 = arg3.y
  flag = arg3.z
  flag2 = true
  flag3 = false
  flag4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  cmgCall3(flag6, flag7, flag8, flag, flag2, flag3, flag4)
  cmgCall3 = SetEntityHeading
  flag6 = playerPed
  flag7 = arg3.w
  -- Beginner: Change the direction an entity is facing.
  cmgCall3(flag6, flag7)
  cmgCall3 = FreezeEntityPosition
  flag6 = playerPed
  flag7 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  cmgCall3(flag6, flag7)
  cmgCall3 = textValue2
  flag6 = arg4
  cmgCall3(flag6)
  if arg5 then
    cmgCall3 = TriggerEvent
    flag6 = "9d8183a5b9"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "9d8183a5b9".
    cmgCall3(flag6)
    return
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7892140796".
eventRegistration(textValue3, workValue)
eventRegistration = RegisterNetEvent
textValue3 = "9d8183a5b9"
-- Beginner: this function handles network event "9d8183a5b9".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, arg4, arg5, playerPed, cmgCall3, flag6, flag7, flag8, flag, flag2
  arg1 = SetLocalPlayerAsGhost
  arg2 = true
  arg1(arg2)
  arg1 = SetEntityAlpha
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = 155
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = SetPedRelationshipGroupHash
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = textValue
  arg1(arg2, arg3)
  arg1 = SetRelationshipBetweenGroups
  arg2 = 5
  arg3 = textValue
  arg4 = textValue
  arg1(arg2, arg3, arg4)
  arg1 = CMG
  arg1 = arg1.loadAnimDict
  arg2 = "mini@triathlon"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg1(arg2)
  arg1 = TaskPlayAnim
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = "mini@triathlon"
  arg4 = "idle_"
  arg5 = cmgCall2
  arg5 = arg5()
  arg4 = arg4 .. arg5
  arg5 = 8.0
  playerPed = 8.0
  cmgCall3 = -1
  flag6 = 1
  flag7 = 0.2
  flag8 = false
  flag = false
  flag2 = true
  -- Beginner: Play an animation on a ped.
  arg1(arg2, arg3, arg4, arg5, playerPed, cmgCall3, flag6, flag7, flag8, flag, flag2)
  arg1 = CMG
  arg1 = arg1.setPlayerCanOpenLeaderboard
  arg2 = true
  arg1(arg2)
  arg1 = SetEntityHealth
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = 200
  arg1(arg2, arg3)
  arg1 = BusyspinnerOff
  arg1()
  arg1 = PlaySoundFrontend
  arg2 = -1
  arg3 = "5s"
  arg4 = "MP_MISSION_COUNTDOWN_SOUNDSET"
  arg5 = false
  arg1(arg2, arg3, arg4, arg5)
  arg1 = TriggerEvent
  arg2 = "b3cbc4aca5"
  arg3 = 5
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "b3cbc4aca5".
  arg1(arg2, arg3)
  arg1 = CMG
  arg1 = arg1.setSwitchGunEnabled
  arg2 = false
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.stopEventSequence
  arg1()
  arg1 = currentEvent
  arg1.drawPlayersTimeBar = false
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  while true do
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    arg2 = arg2 - arg1
    arg3 = 5000
    if not (arg2 < arg3) then
      break
    end
    arg2 = next
    arg3 = dataTable
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = ClearPedTasks
      arg3 = PlayerPedId
      arg3, arg4, arg5, playerPed, cmgCall3, flag6, flag7, flag8, flag, flag2 = arg3()
      arg2(arg3, arg4, arg5, playerPed, cmgCall3, flag6, flag7, flag8, flag, flag2)
      arg2 = SetCamActive
      arg3 = dataTable.camera
      arg4 = false
      arg2(arg3, arg4)
      arg2 = RenderScriptCams
      arg3 = false
      arg4 = false
      arg5 = 0
      playerPed = false
      cmgCall3 = false
      arg2(arg3, arg4, arg5, playerPed, cmgCall3)
      arg2 = DestroyCam
      arg3 = dataTable.camera
      arg4 = false
      arg2(arg3, arg4)
      arg2 = DestroyCam
      arg3 = dataTable.camera2
      arg4 = false
      arg2(arg3, arg4)
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = FreezeEntityPosition
      arg4 = arg2
      arg5 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      arg3(arg4, arg5)
      return
    end
    arg2 = Wait
    arg3 = 0
    arg2(arg3)
  end
  dataTable.state = "started"
  arg2 = ClearPedTasks
  arg3 = PlayerPedId
  arg3, arg4, arg5, playerPed, cmgCall3, flag6, flag7, flag8, flag, flag2 = arg3()
  arg2(arg3, arg4, arg5, playerPed, cmgCall3, flag6, flag7, flag8, flag, flag2)
  arg2 = SetCamActive
  arg3 = dataTable.camera
  arg4 = false
  arg2(arg3, arg4)
  arg2 = RenderScriptCams
  arg3 = false
  arg4 = false
  arg5 = 0
  playerPed = false
  cmgCall3 = false
  arg2(arg3, arg4, arg5, playerPed, cmgCall3)
  arg2 = DestroyCam
  arg3 = dataTable.camera
  arg4 = false
  arg2(arg3, arg4)
  arg2 = DestroyCam
  arg3 = dataTable.camera2
  arg4 = false
  arg2(arg3, arg4)
  arg2 = CMG
  arg2 = arg2.enableMinigamePlayerBlips
  arg3 = true
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.enableMinigamePlayerTags
  arg3 = true
  arg4 = true
  arg2(arg3, arg4)
  arg2 = CMG
  arg2 = arg2.setMinigameBounds
  arg3 = cmgCall.locations
  arg4 = dataTable.name
  arg3 = arg3[arg4]
  arg3 = arg3.bounds
  arg2(arg3)
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = FreezeEntityPosition
  arg4 = arg2
  arg5 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, arg5)
  arg3 = SetTimeout
  arg4 = 3000

  -- === HELPER FUNCTION: arg5() ===
  function arg5()
    local iterator, numberValue
    iterator = SetLocalPlayerAsGhost
    numberValue = false
    iterator(numberValue)
    iterator = ResetEntityAlpha
    numberValue = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    numberValue = numberValue()
    iterator(numberValue)
  end
  arg3(arg4, arg5)
  arg3 = CMG
  arg3 = arg3.setHudTimerBarProviderActive
  arg4 = "gungame"
  arg5 = true
  arg3(arg4, arg5)
  while true do
    arg3 = dataTable.state
    if "started" ~= arg3 then
      break
    end
    arg3 = CMG
    arg3 = arg3.disableMeleeControls
    arg3()
    arg3 = DisableFirstPersonCamThisFrame
    arg3()
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = 0
    arg3(arg4)
  end
  arg3 = CMG
  arg3 = arg3.setHudTimerBarProviderActive
  arg4 = "gungame"
  arg5 = false
  arg3(arg4, arg5)
  arg3 = CMG
  arg3 = arg3.setEventRespawnPosition
  arg3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9d8183a5b9".
eventRegistration(textValue3, workValue)
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2, arg3, arg4
  arg1 = "Gungame"
  arg2 = CMG
  arg2 = arg2.registerMinigameCleanupHandler
  arg3 = arg1

  -- === HELPER FUNCTION: arg4() ===
  function arg4()
    local iterator, numberValue, flag5, numberValue4, workValue3, workValue4, cmgCall4, workValue5
    iterator = CMG
    iterator = iterator.setSwitchGunEnabled
    numberValue = true
    iterator(numberValue)
    iterator = CMG
    iterator = iterator.enableMinigamePlayerBlips
    numberValue = false
    iterator(numberValue)
    iterator = CMG
    iterator = iterator.cleanupRockstarMaps
    iterator()
    iterator = CMG
    iterator = iterator.clearAllPickups
    iterator()
    iterator = CMG
    iterator = iterator.setEventRespawnPosition
    iterator()
    iterator = CMG
    iterator = iterator.clearMinigameBounds
    iterator()
    iterator = RemoveAllPedWeapons
    numberValue = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    numberValue = numberValue()
    flag5 = false
    iterator(numberValue, flag5)
    iterator = BusyspinnerOff
    iterator()
    iterator = SetPlayerControl
    numberValue = PlayerId
    -- Beginner: result below is localPlayerIndex.
    numberValue = numberValue()
    flag5 = true
    numberValue4 = 0
    iterator(numberValue, flag5, numberValue4)
    iterator = SetRelationshipBetweenGroups
    numberValue = 0
    flag5 = textValue
    numberValue4 = textValue
    iterator(numberValue, flag5, numberValue4)
    iterator = SetPedRelationshipGroupHash
    numberValue = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    numberValue = numberValue()
    flag5 = 1862763509
    iterator(numberValue, flag5)
    iterator = dataTable.pickups
    if iterator then
      iterator = pairs
      numberValue = dataTable.pickups
      iterator, numberValue, flag5, numberValue4 = iterator(numberValue)
      for workValue3, workValue4 in iterator, numberValue, flag5, numberValue4 do
        cmgCall4 = CMG
        cmgCall4 = cmgCall4.deletePickup
        workValue5 = workValue4
        cmgCall4(workValue5)
      end
    end
    iterator = 1
    numberValue2 = iterator
    iterator = 0
    numberValue3 = iterator
    iterator = {}
    dataTable = iterator
  end
  arg2(arg3, arg4)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(textValue3)
eventRegistration = RegisterNetEvent
textValue3 = "9aa187d545"
-- Beginner: this function handles network event "9aa187d545".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3
  dataTable.state = "waiting"
  arg1 = CMG
  arg1 = arg1.enableMinigamePlayerBlips
  arg2 = false
  arg1(arg2)
  arg1 = RemoveAllPedWeapons
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = false
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9aa187d545".
eventRegistration(textValue3, workValue)
eventRegistration = RegisterNetEvent
textValue3 = "aaefc4fa92"
-- Beginner: this function handles network event "aaefc4fa92".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2
  arg1 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local iterator, numberValue, flag5
    iterator = SetSpecialAbility
    numberValue = PlayerId
    -- Beginner: result below is localPlayerIndex.
    numberValue = numberValue()
    flag5 = 2
    iterator(numberValue, flag5)
    iterator = SpecialAbilityActivate
    numberValue = PlayerId
    numberValue, flag5 = numberValue()
    iterator(numberValue, flag5)
    iterator = Wait
    numberValue = 10000
    iterator(numberValue)
    iterator = SetSpecialAbility
    numberValue = PlayerId
    -- Beginner: result below is localPlayerIndex.
    numberValue = numberValue()
    flag5 = 3
    iterator(numberValue, flag5)
    iterator = SpecialAbilityActivate
    numberValue = PlayerId
    numberValue, flag5 = numberValue()
    iterator(numberValue, flag5)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "aaefc4fa92".
eventRegistration(textValue3, workValue)
eventRegistration = RegisterNetEvent
textValue3 = "c58a0272ff"
-- Beginner: this function handles network event "c58a0272ff".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = PlaySoundFrontend
  arg2 = -1
  arg3 = "Weapon_Upgrade"
  arg4 = "DLC_GR_Weapon_Upgrade_Soundset"
  arg5 = false
  arg1(arg2, arg3, arg4, arg5)
  arg1 = CMG
  arg1 = arg1.announceMpBigMsg
  arg2 = "~y~WEAPON UPGRADE"
  arg3 = ""
  arg4 = 1000
  arg1(arg2, arg3, arg4)
  arg1 = 0
  numberValue3 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c58a0272ff".
eventRegistration(textValue3, workValue)
eventRegistration = AddEventHandler
textValue3 = "5dac3d7c66"
-- Beginner: this function runs when client event "5dac3d7c66" fires.

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3
  arg1 = dataTable.state
  if "started" == arg1 then
    arg1 = SetLocalPlayerAsGhost
    arg2 = true
    arg1(arg2)
    arg1 = Wait
    arg2 = 4000
    arg1(arg2)
    arg1 = IsPedArmed
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = 5
    arg1 = arg1(arg2, arg3)
    if not arg1 then
      arg1 = TriggerServerEvent
      arg2 = "dfc4f9e64d"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dfc4f9e64d".
      arg1(arg2)
    end
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
    arg1 = SetLocalPlayerAsGhost
    arg2 = false
    arg1(arg2)
    arg1 = ResetGhostedEntityAlpha
    arg1()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "5dac3d7c66".
eventRegistration(textValue3, workValue)
eventRegistration = RegisterNetEvent
textValue3 = "f38733e8a1"
-- Beginner: this function handles network event "f38733e8a1".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2
  numberValue2 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f38733e8a1".
eventRegistration(textValue3, workValue)
eventRegistration = RegisterNetEvent
textValue3 = "985340403d"
-- Beginner: this function handles network event "985340403d".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2
  arg1 = numberValue3
  arg1 = arg1 + 1
  numberValue3 = arg1
end
eventRegistration(textValue3, workValue)
