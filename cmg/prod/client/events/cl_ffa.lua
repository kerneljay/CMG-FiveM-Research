--[[
    LEVEL 1 BEGINNER GUIDE — Ffa
    =================================

    File: cmg/prod/client/events/cl_ffa.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Ffa feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 18
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
local cmgCall, dataTable, dataTable2, workValue2, textValue2, workValue3, threadCall, eventRegistration, eventRegistration2, textValue3, eventHandlerRegistration, textValue, workValue
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/events/cfg_ffa"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
dataTable = {}
dataTable2 = {}
workValue2 = AddRelationshipGroup
textValue2 = "FFA_FFA"
workValue2, textValue2 = workValue2(textValue2)

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
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
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3, arg4
  arg1 = "FFA"
  arg2 = CMG
  arg2 = arg2.registerMinigameCleanupHandler
  arg3 = arg1

  -- === HELPER FUNCTION: arg4() ===
  function arg4()
    local arg12, arg22, flag7, numberValue3
    dataTable.state = "ended"
    arg12 = {}
    dataTable2 = arg12
    arg12 = CMG
    arg12 = arg12.setSwitchGunEnabled
    arg22 = true
    arg12(arg22)
    arg12 = CMG
    arg12 = arg12.cleanupRockstarMaps
    arg12()
    arg12 = CMG
    arg12 = arg12.enableMinigamePlayerBlips
    arg22 = false
    arg12(arg22)
    arg12 = CMG
    arg12 = arg12.clearAllPickups
    arg12()
    arg12 = SetRelationshipBetweenGroups
    arg22 = 0
    flag7 = textValue2
    numberValue3 = textValue2
    arg12(arg22, flag7, numberValue3)
    arg12 = SetPedRelationshipGroupHash
    arg22 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg22 = arg22()
    flag7 = 1862763509
    arg12(arg22, flag7)
    arg12 = SetLocalPlayerAsGhost
    arg22 = false
    arg12(arg22)
    arg12 = ResetGhostedEntityAlpha
    arg12()
    arg12 = CMG
    arg12 = arg12.setEventRespawnPosition
    arg12()
    arg12 = BusyspinnerOff
    arg12()
    arg12 = SetPlayerControl
    arg22 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    arg22 = arg22()
    flag7 = true
    numberValue3 = 0
    arg12(arg22, flag7, numberValue3)
  end
  arg2(arg3, arg4)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(eventRegistration)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1) ===
function threadCall(arg1)
  local arg2, arg3
  arg2 = #arg1
  if arg2 > 0 then
    arg2 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22, flag7, numberValue3, flag8, workValue4, cmgCall2, workValue5, cmgCall3, workValue6, position
      while true do
        arg12 = dataTable.state
        if "ended" == arg12 then
          break
        end
        arg12 = pairs
        arg22 = dataTable.pickups
        arg12, arg22, flag7, numberValue3 = arg12(arg22)
        for flag8, workValue4 in arg12, arg22, flag7, numberValue3 do
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.deletePickup
          workValue5 = workValue4
          cmgCall2(workValue5)
        end
        arg12 = {}
        dataTable.pickups = arg12
        arg12 = pairs
        arg22 = arg1
        arg12, arg22, flag7, numberValue3 = arg12(arg22)
        for flag8, workValue4 in arg12, arg22, flag7, numberValue3 do
          cmgCall2 = table
          cmgCall2 = cmgCall2.insert
          workValue5 = dataTable.pickups
          cmgCall3 = CMG
          cmgCall3 = cmgCall3.createPickup
          workValue6 = workValue4.hash
          position = workValue4.position
          cmgCall3, workValue6, position = cmgCall3(workValue6, position)
          cmgCall2(workValue5, cmgCall3, workValue6, position)
        end
        arg12 = Wait
        arg22 = 60000
        arg12(arg22)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg2(arg3)
  end
end
eventRegistration = RegisterNetEvent
eventRegistration2 = "1215413e36"
-- Beginner: this function handles network event "1215413e36".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7) ===
function textValue3(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local flag9, playerPed, cmgCall4, flag, flag2, numberValue, numberValue2, flag3, flag4, flag5
  dataTable.mapname = arg1
  dataTable.state = "loading"
  dataTable.spawn = arg3
  dataTable.singleWeaponMode = arg6
  flag9 = false
  playerPed = SetTimeout
  cmgCall4 = 1000
  -- Beginner: this function handles network event "1215413e36".

  -- === HELPER FUNCTION (decompiler name: flag; parameters: none) ===
  function flag()
    local arg12, arg22
    arg12 = true
    flag9 = arg12
  end
  playerPed(cmgCall4, flag)
  if arg2 then
    playerPed = CMG
    playerPed = playerPed.loadClientRockstarMap
    cmgCall4 = arg2
    flag = false
    playerPed(cmgCall4, flag)
  end
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  cmgCall4 = CMG
  cmgCall4 = cmgCall4.setEventRespawnPosition
  flag = arg3
  cmgCall4(flag)
  cmgCall4 = SetEntityCoordsNoOffset
  flag = playerPed
  flag2 = arg3.x
  numberValue = arg3.y
  numberValue2 = arg3.z
  flag3 = true
  flag4 = false
  flag5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  cmgCall4(flag, flag2, numberValue, numberValue2, flag3, flag4, flag5)
  cmgCall4 = SetEntityHeading
  flag = playerPed
  flag2 = arg3.w
  -- Beginner: Change the direction an entity is facing.
  cmgCall4(flag, flag2)
  cmgCall4 = FreezeEntityPosition
  flag = playerPed
  flag2 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  cmgCall4(flag, flag2)
  dataTable.bounds = arg4
  cmgCall4 = CMG
  cmgCall4 = cmgCall4.setMinigameBounds
  flag = arg4
  cmgCall4(flag)
  cmgCall4 = {}
  dataTable.pickups = cmgCall4
  cmgCall4 = threadCall
  flag = arg5
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgCall4(flag)
  if arg7 then
    cmgCall4 = TriggerEvent
    flag = "0b650ac58b"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "0b650ac58b".
    cmgCall4(flag)
    return
  end
  while not flag9 do
    cmgCall4 = Wait
    flag = 0
    cmgCall4(flag)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1215413e36".
eventRegistration(eventRegistration2, textValue3)
eventRegistration = RegisterNetEvent
eventRegistration2 = "0b650ac58b"
-- Beginner: this function handles network event "0b650ac58b".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, flag9, playerPed, cmgCall4, flag, flag2, numberValue, numberValue2, flag3, flag4, flag5, flag6
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
  arg1 = CMG
  arg1 = arg1.setSwitchGunEnabled
  arg2 = false
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.stopEventSequence
  arg1()
  arg1 = currentEvent
  arg1.drawPlayersTimeBar = false
  dataTable.state = "choosingcharacter"
  arg1 = BusyspinnerOff
  arg1()
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetEntityMatrix
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  arg6 = arg2 * 2.0
  arg7 = arg3 * 0.0
  arg6 = arg6 + arg7
  arg7 = arg4 * 0.5
  arg6 = arg6 + arg7
  arg6 = arg6 + arg5
  arg7 = CreateCamWithParams
  flag9 = "DEFAULT_SCRIPTED_CAMERA"
  playerPed = arg6.x
  cmgCall4 = arg6.y
  flag = arg6.z
  flag2 = 0.0
  numberValue = 0.0
  numberValue2 = 0.0
  flag3 = 70.0
  flag4 = false
  flag5 = 2
  arg7 = arg7(flag9, playerPed, cmgCall4, flag, flag2, numberValue, numberValue2, flag3, flag4, flag5)
  dataTable.camera = arg7
  arg7 = SetCamActive
  flag9 = dataTable.camera
  playerPed = true
  arg7(flag9, playerPed)
  arg7 = PointCamAtCoord
  flag9 = dataTable.camera
  playerPed = dataTable.spawn
  playerPed = playerPed.x
  cmgCall4 = dataTable.spawn
  cmgCall4 = cmgCall4.y
  flag = dataTable.spawn
  flag = flag.z
  arg7(flag9, playerPed, cmgCall4, flag)
  arg7 = RenderScriptCams
  flag9 = true
  playerPed = false
  cmgCall4 = 0
  flag = false
  flag2 = false
  arg7(flag9, playerPed, cmgCall4, flag, flag2)
  arg7 = CMG
  arg7 = arg7.loadAnimDict
  flag9 = "mini@triathlon"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg7(flag9)
  arg7 = TaskPlayAnim
  flag9 = CMG
  flag9 = flag9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag9 = flag9()
  playerPed = "mini@triathlon"
  cmgCall4 = "idle_"
  flag = workValue3
  flag = flag()
  cmgCall4 = cmgCall4 .. flag
  flag = 8.0
  flag2 = 8.0
  numberValue = -1
  numberValue2 = 1
  flag3 = 0.2
  flag4 = false
  flag5 = false
  flag6 = false
  -- Beginner: Play an animation on a ped.
  arg7(flag9, playerPed, cmgCall4, flag, flag2, numberValue, numberValue2, flag3, flag4, flag5, flag6)
  arg7 = PlaySoundFrontend
  flag9 = -1
  playerPed = "5s"
  cmgCall4 = "MP_MISSION_COUNTDOWN_SOUNDSET"
  flag = false
  arg7(flag9, playerPed, cmgCall4, flag)
  arg7 = TriggerEvent
  flag9 = "b3cbc4aca5"
  playerPed = 3
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "b3cbc4aca5".
  arg7(flag9, playerPed)
  arg7 = Wait
  flag9 = 4000
  arg7(flag9)
  arg7 = dataTable.state
  if "choosingcharacter" ~= arg7 then
    return
  end
  dataTable.state = "started"
  arg7 = CMG
  arg7 = arg7.setPlayerCanOpenLeaderboard
  flag9 = true
  arg7(flag9)
  arg7 = ClearPedTasks
  flag9 = PlayerPedId
  flag9, playerPed, cmgCall4, flag, flag2, numberValue, numberValue2, flag3, flag4, flag5, flag6 = flag9()
  arg7(flag9, playerPed, cmgCall4, flag, flag2, numberValue, numberValue2, flag3, flag4, flag5, flag6)
  arg7 = SetCamActive
  flag9 = dataTable.camera
  playerPed = false
  arg7(flag9, playerPed)
  arg7 = RenderScriptCams
  flag9 = false
  playerPed = false
  cmgCall4 = 0
  flag = false
  flag2 = false
  arg7(flag9, playerPed, cmgCall4, flag, flag2)
  arg7 = DestroyCam
  flag9 = dataTable.camera
  playerPed = false
  arg7(flag9, playerPed)
  arg7 = DestroyCam
  flag9 = dataTable.camera2
  playerPed = false
  arg7(flag9, playerPed)
  arg7 = CMG
  arg7 = arg7.enableMinigamePlayerBlips
  flag9 = true
  arg7(flag9)
  arg7 = CMG
  arg7 = arg7.enableMinigamePlayerTags
  flag9 = true
  playerPed = true
  arg7(flag9, playerPed)
  arg7 = SetPedRelationshipGroupHash
  flag9 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  flag9 = flag9()
  playerPed = textValue2
  arg7(flag9, playerPed)
  arg7 = SetRelationshipBetweenGroups
  flag9 = 5
  playerPed = textValue2
  cmgCall4 = textValue2
  arg7(flag9, playerPed, cmgCall4)
  arg7 = FreezeEntityPosition
  flag9 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  flag9 = flag9()
  playerPed = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg7(flag9, playerPed)
  arg7 = SetTimeout
  flag9 = 3000

  -- === HELPER FUNCTION: playerPed() ===
  function playerPed()
    local arg12, arg22
    arg12 = SetLocalPlayerAsGhost
    arg22 = false
    arg12(arg22)
    arg12 = ResetEntityAlpha
    arg22 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg22 = arg22()
    arg12(arg22)
  end
  arg7(flag9, playerPed)
  arg7 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION (decompiler name: flag9; parameters: none) ===
  function flag9()
    local arg12, arg22, flag7, numberValue3, flag8
    arg12 = dataTable.singleWeaponMode
    if not arg12 then
      arg12 = IsUsingKeyboard
      arg22 = 0
      arg12 = arg12(arg22)
      if arg12 then
        arg12 = CMG
        arg12 = arg12.announceMpBigMsg
        arg22 = "PRESS B TO OPEN BUY MENU"
        flag7 = ""
        numberValue3 = 5000
        flag8 = true
        arg12(arg22, flag7, numberValue3, flag8)
      else
        arg12 = CMG
        arg12 = arg12.announceMpBigMsg
        arg22 = "PRESS R1 TO OPEN BUY MENU"
        flag7 = ""
        numberValue3 = 5000
        flag8 = true
        arg12(arg22, flag7, numberValue3, flag8)
      end
    else
      arg12 = CMG
      arg12 = arg12.TriggerServerCallback
      arg22 = "29d4ac1c5d"
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg7(flag9)
  while true do
    arg7 = dataTable.state
    if "started" ~= arg7 then
      break
    end
    arg7 = IsUsingKeyboard
    flag9 = 0
    arg7 = arg7(flag9)
    if arg7 then
      arg7 = 29
      if arg7 then
        goto flow_label_182
      end
    end
    arg7 = 44
    ::flow_label_182::
    flag9 = IsControlJustPressed
    playerPed = 0
    cmgCall4 = arg7
    flag9 = flag9(playerPed, cmgCall4)
    if flag9 then
      flag9 = dataTable.singleWeaponMode
      if not flag9 then
        flag9 = CMG
        flag9 = flag9.openRadialMenu
        playerPed = "buyWeaponsFFA"
        flag9(playerPed)
      end
    end
    flag9 = CMG
    flag9 = flag9.disableMeleeControls
    flag9()
    flag9 = DisableFirstPersonCamThisFrame
    flag9()
    flag9 = DisableControlAction
    playerPed = 0
    cmgCall4 = 23
    flag = false
    flag9(playerPed, cmgCall4, flag)
    flag9 = DisableControlAction
    playerPed = 0
    cmgCall4 = 75
    flag = false
    flag9(playerPed, cmgCall4, flag)
    flag9 = Citizen
    flag9 = flag9.Wait
    playerPed = 0
    flag9(playerPed)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0b650ac58b".
eventRegistration(eventRegistration2, textValue3)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, flag9
  arg2 = pairs
  arg3 = dataTable2
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    flag9 = arg7.source
    if flag9 == arg1 then
      return arg6
    end
  end
end
eventRegistration2 = RegisterNetEvent
textValue3 = "a90bb588a8"
-- Beginner: this function handles network event "a90bb588a8".

-- === HELPER FUNCTION: eventHandlerRegistration(arg1, arg2, arg3) ===
function eventHandlerRegistration(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7
  arg4 = eventRegistration
  arg5 = arg1
  arg4 = arg4(arg5)
  if arg4 then
    arg5 = dataTable2
    arg5 = arg5[arg4]
    arg5.points = arg3
  else
    arg5 = table
    arg5 = arg5.insert
    arg6 = dataTable2
    arg7 = {}
    arg7.source = arg1
    arg7.points = arg3
    arg7.name = arg2
    arg5(arg6, arg7)
  end
  arg5 = table
  arg5 = arg5.sort
  arg6 = dataTable2

  -- === HELPER FUNCTION: arg7(arg12, arg22) ===
  function arg7(arg12, arg22)
    local flag7, numberValue3
    flag7 = arg12.points
    numberValue3 = arg22.points
    flag7 = flag7 > numberValue3
    return flag7
  end
  arg5(arg6, arg7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a90bb588a8".
eventRegistration2(textValue3, eventHandlerRegistration)
eventRegistration2 = RegisterNetEvent
textValue3 = "c07ea3b157"
-- Beginner: this function handles network event "c07ea3b157".

-- === HELPER FUNCTION: eventHandlerRegistration(arg1) ===
function eventHandlerRegistration(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = eventRegistration
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg3 = table
    arg3 = arg3.remove
    arg4 = dataTable2
    arg5 = arg2
    arg3(arg4, arg5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c07ea3b157".
eventRegistration2(textValue3, eventHandlerRegistration)
eventRegistration2 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, flag9, playerPed
  while true do
    arg1 = dataTable.state
    if "started" == arg1 then
      arg1 = CMG
      arg1 = arg1.createTimerBars
      -- Beginner: result below is timerBars.
      arg1 = arg1()
      arg2 = 3
      arg3 = 1
      arg4 = -1
      for arg5 = arg2, arg3, arg4 do
        arg6 = dataTable2
        arg6 = arg6[arg5]
        if arg6 then
          arg6 = arg1.push
          arg7 = CMG
          arg7 = arg7.getPlayerColour
          flag9 = dataTable2
          flag9 = flag9[arg5]
          flag9 = flag9.source
          arg7 = arg7(flag9)
          flag9 = dataTable2
          flag9 = flag9[arg5]
          flag9 = flag9.name
          playerPed = "~w~"
          arg7 = arg7 .. flag9 .. playerPed
          flag9 = dataTable2
          flag9 = flag9[arg5]
          flag9 = flag9.points
          playerPed = "/20"
          flag9 = flag9 .. playerPed
          arg6(arg7, flag9)
        end
      end
      arg2 = arg1.draw
      arg2()
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration2(textValue3)
eventRegistration2 = nil

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, arg4
  eventRegistration2 = arg1
  arg2 = CMG
  arg2 = arg2.TriggerServerCallback
  arg3 = "29d4ac1c5d"
  arg4 = arg1
  arg2(arg3, arg4)
end
eventHandlerRegistration = Citizen
eventHandlerRegistration = eventHandlerRegistration.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.addRadialMenuHandler
  arg2 = "buyWeaponsFFA"
  arg3 = textValue3
  arg1(arg2, arg3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration(textValue)
eventHandlerRegistration = AddEventHandler
textValue = "5dac3d7c66"
-- Beginner: this function runs when client event "5dac3d7c66" fires.

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, arg4
  arg1 = dataTable.state
  if "started" == arg1 then
    arg1 = ClearTimecycleModifier
    arg1()
    arg1 = dataTable.singleWeaponMode
    if not arg1 then
      arg1 = notify
      arg2 = "~b~Press [B] to open the buy menu"
      -- Beginner: Show a notification to the player.
      arg1(arg2)
    end
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
    arg1 = dataTable.singleWeaponMode
    if arg1 then
      arg1 = textValue3
      arg1()
    else
      arg1 = eventRegistration2
      if arg1 then
        arg1 = textValue3
        arg2 = eventRegistration2
        arg1(arg2)
      end
    end
    arg1 = SetLocalPlayerAsGhost
    arg2 = true
    arg1(arg2)
    arg1 = Wait
    arg2 = 3000
    arg1(arg2)
    arg1 = SetLocalPlayerAsGhost
    arg2 = false
    arg1(arg2)
    arg1 = ResetGhostedEntityAlpha
    arg1()
    arg1 = cmgCall.locations
    arg2 = dataTable.mapname
    arg1 = arg1[arg2]
    arg1 = arg1.spawnpoints
    arg2 = math
    arg2 = arg2.random
    arg3 = 1
    arg4 = #arg1
    arg2 = arg2(arg3, arg4)
    arg2 = arg1[arg2]
    arg3 = CMG
    arg3 = arg3.setEventRespawnPosition
    arg4 = arg2
    arg3(arg4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "5dac3d7c66".
eventHandlerRegistration(textValue, workValue)
