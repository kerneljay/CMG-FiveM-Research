--[[
    LEVEL 1 BEGINNER GUIDE — Bankheists
    ========================================

    File: cmg/prod/client/crime/cl_bankheists.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Bankheists feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 83
      * Background threads: 0
      * Always-running loops: 14
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
local cmgOperation, eventHandler3, createVector3, createVector32, createVector33, number9, number10, number11, workingValue18, workingValue20, eventHandler, eventHandler2, stateFlag3, workingValue2, workingValue3, workingValue4, rageUiOperation, text2, text3, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, cmgOperation2, text6, number5, number6, number7, number8, stateFlag16, stateFlag17, eventHandler4, text8, workingValue6, workingValue7, workingValue8, workingValue9, eventHandler5, text9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation5, text11, text12, rageUiOperation5, text16, backgroundThread, rageUiOperation6, rageUiOperation7, text17, text18
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
eventHandler3 = "cfg/heists/cfg_heist"
-- Beginner: result below is config.
cmgOperation = cmgOperation(eventHandler3)
eventHandler3 = RegisterNetEvent
RegisterHeistEvent = eventHandler3
-- Beginner: this function handles network event (event name set just above).

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "6342feb8da"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6342feb8da".
  localValue1(localValue2)
end
createVector3 = vector3
createVector32 = 707.01
createVector33 = -966.64
number9 = 30.41
createVector3 = createVector3(createVector32, createVector33, number9)
createVector32 = vector3
createVector33 = 707.95
number9 = -960.6
number10 = 30.4
createVector32 = createVector32(createVector33, number9, number10)
createVector33 = vector3
number9 = 717.9912109375
number10 = -982.55493164062
number11 = 24.130674362183
createVector33 = createVector33(number9, number10, number11)

-- === HELPER FUNCTION (decompiler name: number9; parameters: localValue1, localValue2, localValue3) ===
function number9(localValue1, localValue2, localValue3)
  local cmgOperation3, text13, serverEventCall2, text20, stateFlag20
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.isDevMode
  cmgOperation3 = cmgOperation3()
  if cmgOperation3 then
    cmgOperation3 = localValue1
    text13 = localValue2
    cmgOperation3(text13)
  else
    cmgOperation3 = pcall
    text13 = localValue1
    serverEventCall2 = localValue2
    cmgOperation3, text13 = cmgOperation3(text13, serverEventCall2)
    if not cmgOperation3 then
      if localValue3 then
        serverEventCall2 = TriggerServerEvent
        text20 = "6c3cf6a94e"
        stateFlag20 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6c3cf6a94e".
        serverEventCall2(text20, stateFlag20)
      end
      serverEventCall2 = error
      text20 = text13
      serverEventCall2(text20)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: number10; parameters: localValue1) ===
function number10(localValue1)
  local localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20
  localValue2 = CMG
  localValue2 = localValue2.setGameplayTask
  localValue3 = true
  cmgOperation3 = GetFrameCount
  cmgOperation3, text13, serverEventCall2, text20, stateFlag20 = cmgOperation3()
  localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20)
  localValue2 = CMG
  localValue2 = localValue2.loadResourceFile
  localValue3 = GetCurrentResourceName
  localValue3 = localValue3()
  cmgOperation3 = string
  cmgOperation3 = cmgOperation3.format
  text13 = "cfg/heists/client/cfg_%s.lua"
  serverEventCall2 = localValue1
  cmgOperation3, text13, serverEventCall2, text20, stateFlag20 = cmgOperation3(text13, serverEventCall2)
  localValue2 = localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20)
  localValue3 = CMG
  localValue3 = localValue3.setGameplayTask
  cmgOperation3 = false
  text13 = GetFrameCount
  text13, serverEventCall2, text20, stateFlag20 = text13()
  localValue3(cmgOperation3, text13, serverEventCall2, text20, stateFlag20)
  localValue3 = assert
  cmgOperation3 = nil ~= localValue2
  text13 = string
  text13 = text13.format
  serverEventCall2 = "Failed to read bank heist setup file (name: %s)"
  text20 = localValue1
  text13, serverEventCall2, text20, stateFlag20 = text13(serverEventCall2, text20)
  localValue3(cmgOperation3, text13, serverEventCall2, text20, stateFlag20)
  localValue3 = load
  cmgOperation3 = localValue2
  localValue3 = localValue3(cmgOperation3)
  cmgOperation3 = assert
  text13 = nil ~= localValue3
  serverEventCall2 = string
  serverEventCall2 = serverEventCall2.format
  text20 = "Failed to load chunks for bank heist setup (name: %s)"
  stateFlag20 = localValue1
  serverEventCall2, text20, stateFlag20 = serverEventCall2(text20, stateFlag20)
  cmgOperation3(text13, serverEventCall2, text20, stateFlag20)
  cmgOperation3 = pcall
  text13 = localValue3
  cmgOperation3, text13 = cmgOperation3(text13)
  serverEventCall2 = assert
  text20 = cmgOperation3
  stateFlag20 = text13
  serverEventCall2(text20, stateFlag20)
  return text13
end
number11 = nil

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1) ===
function workingValue18(localValue1)
  local localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag
  localValue2 = ipairs
  localValue3 = GetGamePool
  cmgOperation3 = "CPed"
  localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag = localValue3(cmgOperation3)
  localValue2, localValue3, cmgOperation3, text13 = localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag)
  for serverEventCall2, text20 in localValue2, localValue3, cmgOperation3, text13 do
    stateFlag20 = SetPedDropsWeaponsWhenDead
    workingValue19 = text20
    stateFlag21 = false
    stateFlag20(workingValue19, stateFlag21)
  end
  localValue2 = ipairs
  localValue3 = GetGamePool
  cmgOperation3 = "CPickup"
  localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag = localValue3(cmgOperation3)
  localValue2, localValue3, cmgOperation3, text13 = localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag)
  for serverEventCall2, text20 in localValue2, localValue3, cmgOperation3, text13 do
    stateFlag20 = RemovePickup
    workingValue19 = text20
    stateFlag20(workingValue19)
    stateFlag20 = DeleteEntity
    workingValue19 = text20
    -- Beginner: Delete a GTA entity.
    stateFlag20(workingValue19)
  end
  localValue2 = localValue1.usedWeapons
  if localValue2 then
    localValue2 = type
    localValue3 = localValue1.usedWeapons
    localValue2 = localValue2(localValue3)
    if "table" == localValue2 then
      localValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = ipairs
      cmgOperation3 = localValue1.usedWeapons
      localValue3, cmgOperation3, text13, serverEventCall2 = localValue3(cmgOperation3)
      for text20, stateFlag20 in localValue3, cmgOperation3, text13, serverEventCall2 do
        workingValue19 = HasPedGotWeapon
        stateFlag21 = localValue2
        workingValue = stateFlag20
        stateFlag = false
        workingValue19 = workingValue19(stateFlag21, workingValue, stateFlag)
        if workingValue19 then
          workingValue19 = RemoveWeaponFromPed
          stateFlag21 = localValue2
          workingValue = stateFlag20
          workingValue19(stateFlag21, workingValue)
        end
        workingValue19 = SetCanPedEquipWeapon
        stateFlag21 = localValue2
        workingValue = stateFlag20
        stateFlag = false
        workingValue19(stateFlag21, workingValue, stateFlag)
        workingValue19 = ToggleUsePickupsForPlayer
        stateFlag21 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        stateFlag21 = stateFlag21()
        workingValue = stateFlag20
        stateFlag = false
        workingValue19(stateFlag21, workingValue, stateFlag)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: none) ===
function workingValue20()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2
  while true do
    localValue1 = number11
    if not localValue1 then
      break
    end
    localValue1 = number11.stageIndex
    if localValue1 then
      localValue1 = number11.stages
      localValue2 = number11.stageIndex
      localValue1 = localValue1[localValue2]
      localValue2 = number11.stageSetup
      if not localValue2 then
        localValue2 = print
        localValue3 = string
        localValue3 = localValue3.format
        cmgOperation3 = "Switching stage (stage: %s)"
        text13 = localValue1.name
        localValue3, cmgOperation3, text13, serverEventCall2 = localValue3(cmgOperation3, text13)
        localValue2(localValue3, cmgOperation3, text13, serverEventCall2)
        localValue2 = number11.prevStageIndex
        if localValue2 then
          localValue2 = number11.stages
          localValue3 = number11.prevStageIndex
          localValue2 = localValue2[localValue3]
          localValue3 = localValue2.clean
          if localValue3 then
            localValue3 = number11.inited
            cmgOperation3 = number11.prevStageIndex
            localValue3 = localValue3[cmgOperation3]
            if localValue3 then
              localValue3 = print
              cmgOperation3 = string
              cmgOperation3 = cmgOperation3.format
              text13 = "Cleaning previous stage (prevStage: %s)"
              serverEventCall2 = localValue2.name
              cmgOperation3, text13, serverEventCall2 = cmgOperation3(text13, serverEventCall2)
              localValue3(cmgOperation3, text13, serverEventCall2)
              localValue3 = number9
              cmgOperation3 = localValue2.clean
              text13 = number11.info
              serverEventCall2 = true
              localValue3(cmgOperation3, text13, serverEventCall2)
            end
          end
        end
        localValue2 = localValue1.init
        if localValue2 then
          localValue2 = print
          localValue3 = string
          localValue3 = localValue3.format
          cmgOperation3 = "Initialising stage (stage: %s)"
          text13 = localValue1.name
          localValue3, cmgOperation3, text13, serverEventCall2 = localValue3(cmgOperation3, text13)
          localValue2(localValue3, cmgOperation3, text13, serverEventCall2)
          localValue2 = number9
          localValue3 = localValue1.init
          cmgOperation3 = number11.info
          text13 = true
          localValue2(localValue3, cmgOperation3, text13)
          localValue2 = number11.inited
          localValue3 = number11.stageIndex
          localValue2[localValue3] = true
          localValue2 = print
          localValue3 = string
          localValue3 = localValue3.format
          cmgOperation3 = "Finished initialising stage (stage: %s)"
          text13 = localValue1.name
          localValue3, cmgOperation3, text13, serverEventCall2 = localValue3(cmgOperation3, text13)
          localValue2(localValue3, cmgOperation3, text13, serverEventCall2)
        end
        localValue2 = number11.info
        localValue3 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue3 = localValue3()
        localValue2.lastInit = localValue3
        number11.stageSetup = true
        localValue2 = print
        localValue3 = string
        localValue3 = localValue3.format
        cmgOperation3 = "Finished switching stage (stage: %s)"
        text13 = localValue1.name
        localValue3, cmgOperation3, text13, serverEventCall2 = localValue3(cmgOperation3, text13)
        localValue2(localValue3, cmgOperation3, text13, serverEventCall2)
      end
      localValue2 = workingValue18
      localValue3 = number11.info
      localValue2(localValue3)
      localValue2 = localValue1.run
      if localValue2 then
        localValue2 = number9
        localValue3 = localValue1.run
        cmgOperation3 = number11.info
        text13 = true
        localValue2(localValue3, cmgOperation3, text13)
      end
      localValue2 = localValue1.isFinishStage
      if localValue2 then
        localValue2 = number11.isLeaving
        if not localValue2 then
          localValue2 = CMG
          localValue2 = localValue2.getPlayerCoords
          -- Beginner: result below is playerCoords.
          localValue2 = localValue2()
          localValue3 = createVector3
          localValue2 = localValue2 - localValue3
          localValue2 = #localValue2
          if localValue2 < 15.0 then
            localValue2 = TriggerServerEvent
            localValue3 = "6c3cf6a94e"
            cmgOperation3 = false
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6c3cf6a94e".
            localValue2(localValue3, cmgOperation3)
            number11.isLeaving = true
          end
        end
      end
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
eventHandler = RegisterNetEvent
eventHandler2 = "fb4882a7e3"
-- Beginner: this function handles network event "fb4882a7e3".

-- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: localValue1) ===
function stateFlag3(localValue1)
  local localValue2, localValue3, cmgOperation3, text13
  localValue2 = print
  localValue3 = string
  localValue3 = localValue3.format
  cmgOperation3 = "Received new setup request (name: %s)"
  text13 = localValue1.name
  localValue3, cmgOperation3, text13 = localValue3(cmgOperation3, text13)
  localValue2(localValue3, cmgOperation3, text13)
  localValue2 = number10
  localValue3 = localValue1.name
  localValue2 = localValue2(localValue3)
  number11 = localValue2
  number11.info = localValue1
  number11.isLeaving = false
  number11.stageSetup = false
  localValue2 = {}
  number11.inited = localValue2
  localValue2 = ExecuteCommand
  localValue3 = "hideids"
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.setRedzoneTimerDisabled
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.setRedzoneTimerDisabled
    localValue3 = true
    localValue2(localValue3)
  end
  localValue2 = CMG
  localValue2 = localValue2.setTime
  localValue3 = localValue1.time
  localValue3 = localValue3.hour
  cmgOperation3 = localValue1.time
  cmgOperation3 = cmgOperation3.minute
  text13 = 0
  localValue2(localValue3, cmgOperation3, text13)
  localValue2 = CMG
  localValue2 = localValue2.setWeather
  localValue3 = localValue1.weather
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.setPolice
  localValue3 = true
  localValue2(localValue3)
  localValue2 = Citizen
  localValue2 = localValue2.CreateThreadNow

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, text7
    localValue12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue12 = localValue12()
    while true do
      localValue22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue22 = localValue22()
      localValue22 = localValue22 - localValue12
      text7 = 10000
      if not (localValue22 < text7) then
        break
      end
      localValue22 = drawNativeNotification
      text7 = "You can return to the factory office at any time to exit the setup"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue22(text7)
      localValue22 = Citizen
      localValue22 = localValue22.Wait
      text7 = 0
      localValue22(text7)
    end
  end
  localValue2(localValue3)
  localValue2 = workingValue20
  localValue2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fb4882a7e3".
eventHandler(eventHandler2, stateFlag3)
eventHandler = RegisterNetEvent
eventHandler2 = "0b3ad3a2af"
-- Beginner: this function handles network event "0b3ad3a2af".

-- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: localValue1) ===
function stateFlag3(localValue1)
  local localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20
  localValue2 = number11
  if not localValue2 then
    return
  end
  localValue2 = ipairs
  localValue3 = number11.stages
  localValue2, localValue3, cmgOperation3, text13 = localValue2(localValue3)
  for serverEventCall2, text20 in localValue2, localValue3, cmgOperation3, text13 do
    stateFlag20 = text20.name
    if stateFlag20 == localValue1 then
      stateFlag20 = number11.stageIndex
      number11.prevStageIndex = stateFlag20
      number11.stageIndex = serverEventCall2
      break
    end
  end
  number11.stageSetup = false
end
eventHandler(eventHandler2, stateFlag3)
eventHandler = RegisterNetEvent
eventHandler2 = "db46bf9497"
-- Beginner: this function handles network event "db46bf9497".

-- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: localValue1) ===
function stateFlag3(localValue1)
  local localValue2, localValue3, cmgOperation3, text13
  localValue2 = number11
  if not localValue2 then
    return
  end
  localValue2 = print
  localValue3 = string
  localValue3 = localValue3.format
  cmgOperation3 = "Received player removed (server: %d)"
  text13 = localValue1
  localValue3, cmgOperation3, text13 = localValue3(cmgOperation3, text13)
  localValue2(localValue3, cmgOperation3, text13)
  localValue2 = table
  localValue2 = localValue2.find
  localValue3 = number11.info
  localValue3 = localValue3.players
  cmgOperation3 = localValue1
  localValue2 = localValue2(localValue3, cmgOperation3)
  if localValue2 then
    localValue3 = table
    localValue3 = localValue3.remove
    cmgOperation3 = number11.info
    cmgOperation3 = cmgOperation3.players
    text13 = localValue2
    localValue3(cmgOperation3, text13)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "db46bf9497".
eventHandler(eventHandler2, stateFlag3)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2) ===
function eventHandler(localValue1, localValue2)
  local localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag
  localValue3 = print
  cmgOperation3 = string
  cmgOperation3 = cmgOperation3.format
  text13 = "Started invoking leaveSetup(%s, %s)"
  serverEventCall2 = localValue1
  text20 = localValue2
  cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag = cmgOperation3(text13, serverEventCall2, text20)
  localValue3(cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag)
  localValue3 = assert
  cmgOperation3 = number11
  text13 = "Unable to leave non-existant setup"
  localValue3(cmgOperation3, text13)
  localValue3 = CMG
  localValue3 = localValue3.hideAllDisplays
  cmgOperation3 = "setupleave"
  localValue3(cmgOperation3)
  localValue3 = SetPlayerControl
  cmgOperation3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  cmgOperation3 = cmgOperation3()
  text13 = true
  serverEventCall2 = 0
  localValue3(cmgOperation3, text13, serverEventCall2)
  localValue3 = number11.stages
  cmgOperation3 = number11.stageIndex
  localValue3 = localValue3[cmgOperation3]
  cmgOperation3 = localValue3.clean
  if cmgOperation3 then
    cmgOperation3 = number11.inited
    text13 = number11.stageIndex
    cmgOperation3 = cmgOperation3[text13]
    if cmgOperation3 then
      cmgOperation3 = number9
      text13 = localValue3.clean
      serverEventCall2 = number11.info
      text20 = false
      cmgOperation3(text13, serverEventCall2, text20)
    end
  end
  cmgOperation3 = number11.finish
  if cmgOperation3 then
    cmgOperation3 = number9
    text13 = number11.finish
    serverEventCall2 = number11.info
    text20 = false
    cmgOperation3(text13, serverEventCall2, text20)
  end
  cmgOperation3 = nil
  number11 = cmgOperation3
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.setPolice
  text13 = false
  cmgOperation3(text13)
  cmgOperation3 = SwitchOutPlayer
  text13 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text13 = text13()
  serverEventCall2 = 0
  text20 = 1
  cmgOperation3(text13, serverEventCall2, text20)
  cmgOperation3 = Citizen
  cmgOperation3 = cmgOperation3.Wait
  text13 = 5000
  cmgOperation3(text13)
  cmgOperation3 = SetEntityCoords
  text13 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text13 = text13()
  serverEventCall2 = createVector32.x
  text20 = createVector32.y
  stateFlag20 = createVector32.z
  workingValue19 = false
  stateFlag21 = false
  workingValue = false
  stateFlag = false
  -- Beginner: Move/teleport an entity to new coordinates.
  cmgOperation3(text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag)
  cmgOperation3 = SwitchInPlayer
  text13 = PlayerPedId
  text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag = text13()
  cmgOperation3(text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag)
  cmgOperation3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  cmgOperation3 = cmgOperation3()
  while true do
    text13 = IsPlayerSwitchInProgress
    text13 = text13()
    if not text13 then
      break
    end
    text13 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text13 = text13()
    text13 = text13 - cmgOperation3
    serverEventCall2 = 10000
    if text13 > serverEventCall2 then
      text13 = StopPlayerSwitch
      text13()
      text13 = print
      serverEventCall2 = "Breaking out of player switch in leaveSetup"
      text13(serverEventCall2)
      break
    end
    text13 = SwitchInPlayer
    serverEventCall2 = PlayerPedId
    serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag = serverEventCall2()
    text13(serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag)
    text13 = print
    serverEventCall2 = "Waiting for player switch to complete in leaveSetup..."
    text13(serverEventCall2)
    text13 = Citizen
    text13 = text13.Wait
    serverEventCall2 = 0
    text13(serverEventCall2)
  end
  text13 = SetPlayerControl
  serverEventCall2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  serverEventCall2 = serverEventCall2()
  text20 = true
  stateFlag20 = 0
  text13(serverEventCall2, text20, stateFlag20)
  text13 = CMG
  text13 = text13.showAllDisplays
  serverEventCall2 = "setupleave"
  text13(serverEventCall2)
  text13 = ExecuteCommand
  serverEventCall2 = "showids"
  text13(serverEventCall2)
  text13 = CMG
  text13 = text13.setRedzoneTimerDisabled
  if text13 then
    text13 = CMG
    text13 = text13.setRedzoneTimerDisabled
    serverEventCall2 = false
    text13(serverEventCall2)
  end
  text13 = TriggerEvent
  serverEventCall2 = "193ee4e15e"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "193ee4e15e".
  text13(serverEventCall2)
  text13 = CMG
  text13 = text13.announceMpBigMsg
  serverEventCall2 = localValue1
  text20 = localValue2
  stateFlag20 = 10000
  text13(serverEventCall2, text20, stateFlag20)
  text13 = eventHandler3
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  text13()
  text13 = print
  serverEventCall2 = string
  serverEventCall2 = serverEventCall2.format
  text20 = "Finished invoking leaveSetup"
  serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag = serverEventCall2(text20)
  text13(serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag)
end
eventHandler2 = RegisterNetEvent
stateFlag3 = "6c3cf6a94e"
-- Beginner: this function handles network event "6c3cf6a94e".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, cmgOperation3, text13, serverEventCall2, text20
  localValue3 = print
  cmgOperation3 = string
  cmgOperation3 = cmgOperation3.format
  text13 = "Receieved leave setup request (title: %s subtitle: %s)"
  serverEventCall2 = localValue1
  text20 = localValue2
  cmgOperation3, text13, serverEventCall2, text20 = cmgOperation3(text13, serverEventCall2, text20)
  localValue3(cmgOperation3, text13, serverEventCall2, text20)
  localValue3 = eventHandler
  cmgOperation3 = localValue1
  text13 = localValue2
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue3(cmgOperation3, text13)
end
eventHandler2(stateFlag3, workingValue2)
eventHandler2 = nil
stateFlag3 = false

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6
  localValue2 = print
  localValue3 = string
  localValue3 = localValue3.format
  cmgOperation3 = "Started invoking transitionToSetup(%s)"
  text13 = localValue1
  localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6 = localValue3(cmgOperation3, text13)
  localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6)
  localValue2 = assert
  localValue3 = eventHandler2
  cmgOperation3 = "A valid transition table is required to transition"
  localValue2(localValue3, cmgOperation3)
  eventHandler2.moving = true
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  cmgOperation3 = localValue3
  localValue3 = localValue3.Get
  text13 = "bankheistssetup"
  serverEventCall2 = "mainmenu"
  -- Beginner: result below is menu.
  localValue3 = localValue3(cmgOperation3, text13, serverEventCall2)
  cmgOperation3 = false
  localValue2(localValue3, cmgOperation3)
  localValue2 = eventHandler2.camera
  if localValue2 then
    localValue2 = SetCamActive
    localValue3 = eventHandler2.camera
    cmgOperation3 = false
    localValue2(localValue3, cmgOperation3)
    localValue2 = RenderScriptCams
    localValue3 = false
    cmgOperation3 = false
    text13 = 0
    serverEventCall2 = false
    text20 = false
    localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20)
    localValue2 = DestroyCam
    localValue3 = eventHandler2.camera
    cmgOperation3 = false
    localValue2(localValue3, cmgOperation3)
    eventHandler2.camera = nil
  end
  eventHandler2.setupNumber = localValue1
  localValue2 = eventHandler2.isHost
  if localValue2 then
    localValue2 = TriggerServerEvent
    localValue3 = "9f645124da"
    cmgOperation3 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9f645124da".
    localValue2(localValue3, cmgOperation3)
  end
  localValue2 = cmgOperation.setups
  localValue2 = localValue2[localValue1]
  localValue3 = SwitchOutPlayer
  cmgOperation3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgOperation3 = cmgOperation3()
  text13 = 0
  serverEventCall2 = 1
  localValue3(cmgOperation3, text13, serverEventCall2)
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  cmgOperation3 = 1000
  localValue3(cmgOperation3)
  localValue3 = SetEntityCoords
  cmgOperation3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgOperation3 = cmgOperation3()
  text13 = localValue2.position
  text13 = text13.x
  serverEventCall2 = localValue2.position
  serverEventCall2 = serverEventCall2.y
  text20 = localValue2.position
  text20 = text20.z
  stateFlag20 = false
  workingValue19 = false
  stateFlag21 = false
  workingValue = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue3(cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue)
  localValue3 = SetEntityHeading
  cmgOperation3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgOperation3 = cmgOperation3()
  text13 = localValue2.heading
  -- Beginner: Change the direction an entity is facing.
  localValue3(cmgOperation3, text13)
  localValue3 = FreezeEntityPosition
  cmgOperation3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgOperation3 = cmgOperation3()
  text13 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(cmgOperation3, text13)
  localValue3 = SetEntityVisible
  cmgOperation3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgOperation3 = cmgOperation3()
  text13 = false
  serverEventCall2 = false
  localValue3(cmgOperation3, text13, serverEventCall2)
  localValue3 = SwitchInPlayer
  cmgOperation3 = PlayerPedId
  cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6 = cmgOperation3()
  localValue3(cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6)
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  while true do
    cmgOperation3 = IsPlayerSwitchInProgress
    cmgOperation3 = cmgOperation3()
    if not cmgOperation3 then
      break
    end
    cmgOperation3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgOperation3 = cmgOperation3()
    cmgOperation3 = cmgOperation3 - localValue3
    text13 = 10000
    if cmgOperation3 > text13 then
      cmgOperation3 = StopPlayerSwitch
      cmgOperation3()
      cmgOperation3 = print
      text13 = "Breaking out of player switch in transitionToSetup"
      cmgOperation3(text13)
      break
    end
    cmgOperation3 = SwitchInPlayer
    text13 = PlayerPedId
    text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6 = text13()
    cmgOperation3(text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6)
    cmgOperation3 = print
    text13 = "Waiting for player switch to complete in transitionToSetup..."
    cmgOperation3(text13)
    cmgOperation3 = Citizen
    cmgOperation3 = cmgOperation3.Wait
    text13 = 0
    cmgOperation3(text13)
  end
  cmgOperation3 = BeginScaleformMovieMethod
  text13 = eventHandler2.scaleform
  serverEventCall2 = "SET_MENU_TITLE"
  cmgOperation3(text13, serverEventCall2)
  cmgOperation3 = BeginTextCommandScaleformString
  text13 = "STRING"
  cmgOperation3(text13)
  cmgOperation3 = AddTextComponentSubstringKeyboardDisplay
  text13 = localValue2.title
  cmgOperation3(text13)
  cmgOperation3 = EndTextCommandScaleformString
  cmgOperation3()
  cmgOperation3 = EndScaleformMovieMethod
  cmgOperation3()
  cmgOperation3 = BeginScaleformMovieMethod
  text13 = eventHandler2.scaleform
  serverEventCall2 = "SET_MENU_HELP_TEXT"
  cmgOperation3(text13, serverEventCall2)
  cmgOperation3 = BeginTextCommandScaleformString
  text13 = "STRING"
  cmgOperation3(text13)
  cmgOperation3 = AddTextComponentSubstringKeyboardDisplay
  text13 = localValue2.description
  cmgOperation3(text13)
  cmgOperation3 = EndTextCommandScaleformString
  cmgOperation3()
  cmgOperation3 = EndScaleformMovieMethod
  cmgOperation3()
  cmgOperation3 = CreateCamWithParams
  text13 = "DEFAULT_SCRIPTED_CAMERA"
  serverEventCall2 = localValue2.position
  serverEventCall2 = serverEventCall2.x
  text20 = localValue2.position
  text20 = text20.y
  stateFlag20 = localValue2.position
  stateFlag20 = stateFlag20.z
  workingValue19 = localValue2.rotation
  workingValue19 = workingValue19.x
  stateFlag21 = localValue2.rotation
  stateFlag21 = stateFlag21.y
  workingValue = localValue2.rotation
  workingValue = workingValue.z
  stateFlag = 70.0
  stateFlag4 = false
  stateFlag6 = 2
  cmgOperation3 = cmgOperation3(text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6)
  eventHandler2.camera = cmgOperation3
  cmgOperation3 = SetCamActive
  text13 = eventHandler2.camera
  serverEventCall2 = true
  cmgOperation3(text13, serverEventCall2)
  cmgOperation3 = RenderScriptCams
  text13 = true
  serverEventCall2 = false
  text20 = 0
  stateFlag20 = false
  workingValue19 = false
  cmgOperation3(text13, serverEventCall2, text20, stateFlag20, workingValue19)
  eventHandler2.moving = false
  cmgOperation3 = print
  text13 = string
  text13 = text13.format
  serverEventCall2 = "Finished invoking transitionToSetup"
  text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6 = text13(serverEventCall2)
  cmgOperation3(text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6)
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21
  localValue2 = print
  localValue3 = string
  localValue3 = localValue3.format
  cmgOperation3 = "Started invoking exitSetupSelection(%s)"
  text13 = localValue1
  localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21 = localValue3(cmgOperation3, text13)
  localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21)
  localValue2 = assert
  localValue3 = eventHandler2
  cmgOperation3 = "A valid transition is required to exit setup selection"
  localValue2(localValue3, cmgOperation3)
  while true do
    localValue2 = eventHandler2.moving
    if not localValue2 then
      break
    end
    localValue2 = print
    localValue3 = "Waiting for transition to stop moving in exitSetupSelection..."
    localValue2(localValue3)
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  cmgOperation3 = localValue3
  localValue3 = localValue3.Get
  text13 = "bankheistssetup"
  serverEventCall2 = "mainmenu"
  -- Beginner: result below is menu.
  localValue3 = localValue3(cmgOperation3, text13, serverEventCall2)
  cmgOperation3 = false
  localValue2(localValue3, cmgOperation3)
  localValue2 = eventHandler2.camera
  if localValue2 then
    localValue2 = SetCamActive
    localValue3 = eventHandler2.camera
    cmgOperation3 = false
    localValue2(localValue3, cmgOperation3)
    localValue2 = RenderScriptCams
    localValue3 = false
    cmgOperation3 = false
    text13 = 0
    serverEventCall2 = false
    text20 = false
    localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20)
    localValue2 = DestroyCam
    localValue3 = eventHandler2.camera
    cmgOperation3 = false
    localValue2(localValue3, cmgOperation3)
    eventHandler2.camera = nil
  end
  localValue2 = SetScaleformMovieAsNoLongerNeeded
  localValue3 = eventHandler2.scaleform
  localValue2(localValue3)
  eventHandler2.scaleform = nil
  localValue2 = SwitchOutPlayer
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  cmgOperation3 = 0
  text13 = 1
  localValue2(localValue3, cmgOperation3, text13)
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = 5000
  localValue2(localValue3)
  if localValue1 then
    localValue2 = SetEntityCoords
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    cmgOperation3 = createVector33.x
    text13 = createVector33.y
    serverEventCall2 = createVector33.z
    text20 = false
    stateFlag20 = false
    workingValue19 = false
    stateFlag21 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21)
  else
    localValue2 = SetEntityCoords
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    cmgOperation3 = createVector3.x
    text13 = createVector3.y
    serverEventCall2 = createVector3.z
    text20 = false
    stateFlag20 = false
    workingValue19 = false
    stateFlag21 = false
    localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21)
  end
  localValue2 = FreezeEntityPosition
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  cmgOperation3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, cmgOperation3)
  localValue2 = SetEntityVisible
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  cmgOperation3 = true
  text13 = true
  localValue2(localValue3, cmgOperation3, text13)
  localValue2 = SwitchInPlayer
  localValue3 = PlayerPedId
  localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21 = localValue3()
  localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21)
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  while true do
    localValue3 = IsPlayerSwitchInProgress
    localValue3 = localValue3()
    if not localValue3 then
      break
    end
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    localValue3 = localValue3 - localValue2
    cmgOperation3 = 10000
    if localValue3 > cmgOperation3 then
      localValue3 = StopPlayerSwitch
      localValue3()
      localValue3 = print
      cmgOperation3 = "Breaking out of player switch in exitSetupSelection"
      localValue3(cmgOperation3)
      break
    end
    localValue3 = SwitchInPlayer
    cmgOperation3 = PlayerPedId
    cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21 = cmgOperation3()
    localValue3(cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21)
    localValue3 = print
    cmgOperation3 = "Waiting for player switch to complete in exitSetupSelection..."
    localValue3(cmgOperation3)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    cmgOperation3 = 0
    localValue3(cmgOperation3)
  end
  localValue3 = SetPlayerControl
  cmgOperation3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  cmgOperation3 = cmgOperation3()
  text13 = true
  serverEventCall2 = 0
  localValue3(cmgOperation3, text13, serverEventCall2)
  localValue3 = AnimpostfxStop
  cmgOperation3 = "MP_OrbitalCannon"
  localValue3(cmgOperation3)
  localValue3 = CMG
  localValue3 = localValue3.showAllDisplays
  cmgOperation3 = "setupselection"
  localValue3(cmgOperation3)
  localValue3 = nil
  eventHandler2 = localValue3
  if not localValue1 then
    localValue3 = eventHandler3
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    localValue3()
  end
  localValue3 = print
  cmgOperation3 = string
  cmgOperation3 = cmgOperation3.format
  text13 = "Finished invoking exitSetupSelection"
  cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21 = cmgOperation3(text13)
  localValue3(cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21)
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19
  localValue2 = print
  localValue3 = string
  localValue3 = localValue3.format
  cmgOperation3 = "Started invoking enterSetupSelection(%s)"
  text13 = localValue1
  localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19 = localValue3(cmgOperation3, text13)
  localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19)
  if localValue1 then
    localValue2 = TriggerServerEvent
    localValue3 = "66789e23ac"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "66789e23ac".
    localValue2(localValue3)
  end
  localValue2 = SetPlayerControl
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  cmgOperation3 = false
  text13 = 0
  localValue2(localValue3, cmgOperation3, text13)
  localValue2 = AnimpostfxPlay
  localValue3 = "MP_OrbitalCannon"
  cmgOperation3 = 0
  text13 = true
  localValue2(localValue3, cmgOperation3, text13)
  localValue2 = CMG
  localValue2 = localValue2.hideAllDisplays
  localValue3 = "setupselection"
  localValue2(localValue3)
  localValue2 = {}
  eventHandler2 = localValue2
  eventHandler2.isHost = localValue1
  localValue2 = {}
  eventHandler2.players = localValue2
  eventHandler2.setupNumber = 1
  localValue2 = RequestScaleformMovie
  localValue3 = "ORBITAL_CANNON_CAM"
  -- Beginner: result below is scaleformHandle.
  localValue2 = localValue2(localValue3)
  eventHandler2.scaleform = localValue2
  while true do
    localValue2 = HasScaleformMovieLoaded
    localValue3 = eventHandler2.scaleform
    localValue2 = localValue2(localValue3)
    if localValue2 then
      break
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = BeginScaleformMovieMethod
  localValue3 = eventHandler2.scaleform
  cmgOperation3 = "SET_STATE"
  localValue2(localValue3, cmgOperation3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 1
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = 0
  localValue2(localValue3)
  localValue2 = workingValue2
  localValue3 = eventHandler2.setupNumber
  localValue2(localValue3)
  while true do
    localValue2 = eventHandler2
    if not localValue2 then
      break
    end
    localValue2 = eventHandler2.camera
    if localValue2 then
      localValue2 = eventHandler2.isHost
      if localValue2 then
        localValue2 = eventHandler2.blockInteraction
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 0
          cmgOperation3 = 174
          localValue2 = localValue2(localValue3, cmgOperation3)
          if localValue2 then
            localValue2 = eventHandler2.setupNumber
            localValue2 = localValue2 - 1
            if localValue2 > 0 then
              localValue2 = workingValue2
              localValue3 = eventHandler2.setupNumber
              localValue3 = localValue3 - 1
              localValue2(localValue3)
            end
          end
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 0
          cmgOperation3 = 175
          localValue2 = localValue2(localValue3, cmgOperation3)
          if localValue2 then
            localValue2 = eventHandler2.setupNumber
            localValue2 = localValue2 + 1
            localValue3 = cmgOperation.setups
            localValue3 = #localValue3
            if localValue2 <= localValue3 then
              localValue2 = workingValue2
              localValue3 = eventHandler2.setupNumber
              localValue3 = localValue3 + 1
              localValue2(localValue3)
            end
          end
        end
      end
      localValue2 = eventHandler2.blockInteraction
      if not localValue2 then
        localValue2 = IsDisabledControlJustPressed
        localValue3 = 0
        cmgOperation3 = 200
        localValue2 = localValue2(localValue3, cmgOperation3)
        if localValue2 then
          localValue2 = TriggerServerEvent
          localValue3 = "fcbc43097b"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fcbc43097b".
          localValue2(localValue3)
          localValue2 = print
          localValue3 = string
          localValue3 = localValue3.format
          cmgOperation3 = "Finished invoking enterSetupSelection"
          localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19 = localValue3(cmgOperation3)
          localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19)
          return
        end
      end
      localValue2 = DrawScaleformMovieFullscreen
      localValue3 = eventHandler2.scaleform
      cmgOperation3 = 255
      text13 = 255
      serverEventCall2 = 255
      text20 = 255
      stateFlag20 = 0
      localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20)
      localValue2 = cmgOperation.setups
      localValue3 = eventHandler2.setupNumber
      localValue2 = localValue2[localValue3]
      if localValue2 then
        localValue3 = CMG
        localValue3 = localValue3.DrawText
        cmgOperation3 = 0.5
        text13 = 0.9
        serverEventCall2 = "~r~This setup is part of the ~h~"
        text20 = localValue2.series
        stateFlag20 = "~h~ series."
        serverEventCall2 = serverEventCall2 .. text20 .. stateFlag20
        text20 = 0.8
        stateFlag20 = nil
        workingValue19 = 0
        localValue3(cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19)
      end
      localValue3 = RageUI
      localValue3 = localValue3.Visible
      cmgOperation3 = RMenu
      text13 = cmgOperation3
      cmgOperation3 = cmgOperation3.Get
      serverEventCall2 = "bankheistssetup"
      text20 = "mainmenu"
      -- Beginner: result below is menu.
      cmgOperation3 = cmgOperation3(text13, serverEventCall2, text20)
      text13 = true
      localValue3(cmgOperation3, text13)
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
end
rageUiOperation = RMenu
rageUiOperation = rageUiOperation.Add
text2 = "bankheistssetup"
text3 = "mainmenu"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text4 = "Heist Setup"
text5 = "Main Menu"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, cmgOperation2, text6, number5, number6, number7, number8, stateFlag16, stateFlag17, eventHandler4, text8, workingValue6, workingValue7, workingValue8, workingValue9, eventHandler5, text9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation5, text11, text12, rageUiOperation5, text16, backgroundThread, rageUiOperation6, rageUiOperation7, text17, text18 = rageUiOperation4()
rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, cmgOperation2, text6, number5, number6, number7, number8, stateFlag16, stateFlag17, eventHandler4, text8, workingValue6, workingValue7, workingValue8, workingValue9, eventHandler5, text9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation5, text11, text12, rageUiOperation5, text16, backgroundThread, rageUiOperation6, rageUiOperation7, text17, text18 = rageUiOperation2(text4, text5, rageUiOperation3, rageUiOperation4, cmgOperation2, text6, number5, number6, number7, number8, stateFlag16, stateFlag17, eventHandler4, text8, workingValue6, workingValue7, workingValue8, workingValue9, eventHandler5, text9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation5, text11, text12, rageUiOperation5, text16, backgroundThread, rageUiOperation6, rageUiOperation7, text17, text18)
rageUiOperation(text2, text3, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, cmgOperation2, text6, number5, number6, number7, number8, stateFlag16, stateFlag17, eventHandler4, text8, workingValue6, workingValue7, workingValue8, workingValue9, eventHandler5, text9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation5, text11, text12, rageUiOperation5, text16, backgroundThread, rageUiOperation6, rageUiOperation7, text17, text18)
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
text2 = 1.0
text3 = RMenu
rageUiOperation2 = text3
text3 = text3.Get
text4 = "bankheistssetup"
text5 = "mainmenu"
-- Beginner: result below is menu.
text3 = text3(rageUiOperation2, text4, text5)
rageUiOperation2 = nil

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  cmgOperation3 = "bankheistssetup"
  text13 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, cmgOperation3, text13)
  localValue3 = true
  cmgOperation3 = true
  text13 = true

  -- === HELPER FUNCTION: serverEventCall2() ===
  function serverEventCall2()
    local localValue12, localValue22, text7, stateFlag18, text14, stateFlag19, rageUiOperation8, number12, text21, dataCollection, text, stateFlag2
    localValue12 = eventHandler2
    if not localValue12 then
      return
    end
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = string
    localValue22 = localValue22.format
    text7 = "Joined Players (%d/10)"
    stateFlag18 = eventHandler2.players
    stateFlag18 = #stateFlag18
    localValue22, text7, stateFlag18, text14, stateFlag19, rageUiOperation8, number12, text21, dataCollection, text, stateFlag2 = localValue22(text7, stateFlag18)
    localValue12(localValue22, text7, stateFlag18, text14, stateFlag19, rageUiOperation8, number12, text21, dataCollection, text, stateFlag2)
    localValue12 = ipairs
    localValue22 = eventHandler2.players
    localValue12, localValue22, text7, stateFlag18 = localValue12(localValue22)
    for text14, stateFlag19 in localValue12, localValue22, text7, stateFlag18 do
      rageUiOperation8 = RageUI
      rageUiOperation8 = rageUiOperation8.ButtonWithStyle
      number12 = stateFlag19.name
      text21 = ""
      dataCollection = {}
      text = stateFlag19.isHost
      if text then
        text = "HOST"
        if text then
          goto continueAtStep31
        end
      end
      text = "CREW"
      ::continueAtStep31::
      dataCollection.RightLabel = text
      text = true

      -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
      function stateFlag2()
        local localValue13, localValue23
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation8(number12, text21, dataCollection, text, stateFlag2)
    end
    localValue12 = eventHandler2.blockInteraction
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "Waiting for heist preparation..."
      localValue12(localValue22)
    else
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "Heist Options"
      localValue12(localValue22)
      localValue12 = RageUI
      localValue12 = localValue12.Button
      localValue22 = "~b~Buy Full Armour"
      text7 = ""
      stateFlag18 = true

      -- === HELPER FUNCTION (decompiler name: text14; parameters: localValue13, localValue23, localValue32) ===
      function text14(localValue13, localValue23, localValue32)
        local cmgOperation4, text15
        if localValue32 then
          cmgOperation4 = TriggerServerEvent
          text15 = "9c0126b3c7"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c0126b3c7".
          cmgOperation4(text15)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, text7, stateFlag18, text14)
      localValue12 = eventHandler2.isHost
      if localValue12 then
        localValue12 = eventHandler2.players
        localValue12 = #localValue12
        if localValue12 < 10 then
          localValue12 = RageUI
          localValue12 = localValue12.Button
          localValue22 = "~b~Invite Player"
          text7 = ""
          stateFlag18 = true

          -- === HELPER FUNCTION (decompiler name: text14; parameters: localValue13, localValue23, localValue32) ===
          function text14(localValue13, localValue23, localValue32)
            local cmgOperation4, text15, text19, workingValue17
            if localValue32 then
              cmgOperation4 = CMG
              cmgOperation4 = cmgOperation4.clientPrompt
              text15 = "User's Perm Id"
              text19 = ""

              -- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue14) ===
              function workingValue17(localValue14)
                local workingValue5, serverEventCall, text10, workingValue16
                workingValue5 = tonumber
                serverEventCall = localValue14
                workingValue5 = workingValue5(serverEventCall)
                if workingValue5 then
                  serverEventCall = TriggerServerEvent
                  text10 = "e35887ab2f"
                  workingValue16 = workingValue5
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e35887ab2f".
                  serverEventCall(text10, workingValue16)
                end
              end
              cmgOperation4(text15, text19, workingValue17)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          localValue12(localValue22, text7, stateFlag18, text14)
        end
        localValue12 = cmgOperation.setups
        localValue22 = eventHandler2.setupNumber
        localValue12 = localValue12[localValue22]
        localValue22 = CMG
        text7 = "getClientGangRpHeistSetupCostAfterDiscount"
        localValue22 = localValue22[text7]
        text7 = localValue12.cost
        localValue22 = localValue22(text7)
        text7 = RageUI
        text7 = text7.Button
        stateFlag18 = string
        stateFlag18 = stateFlag18.format
        text14 = "~b~Start Heist (\194\163%s)"
        stateFlag19 = getMoneyStringFormatted
        rageUiOperation8 = localValue22
        stateFlag19, rageUiOperation8, number12, text21, dataCollection, text, stateFlag2 = stateFlag19(rageUiOperation8)
        stateFlag18 = stateFlag18(text14, stateFlag19, rageUiOperation8, number12, text21, dataCollection, text, stateFlag2)
        text14 = ""
        stateFlag19 = true

        -- === HELPER FUNCTION (decompiler name: rageUiOperation8; parameters: localValue13, localValue23, localValue32) ===
        function rageUiOperation8(localValue13, localValue23, localValue32)
          local cmgOperation4, text15, text19
          if localValue32 then
            cmgOperation4 = TriggerServerEvent
            text15 = "ed75e47264"
            text19 = eventHandler2.setupNumber
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ed75e47264".
            cmgOperation4(text15, text19)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        text7(stateFlag18, text14, stateFlag19, rageUiOperation8)
      else
        localValue12 = RageUI
        localValue12 = localValue12.Separator
        localValue22 = "Waiting for host..."
        localValue12(localValue22)
      end
    end
  end
  localValue1(localValue2, localValue3, cmgOperation3, text13, serverEventCall2)
end
rageUiOperation(text2, text3, rageUiOperation2, text4)
rageUiOperation = RMenu
text2 = rageUiOperation
rageUiOperation = rageUiOperation.Get
text3 = "bankheistssetup"
rageUiOperation2 = "mainmenu"
-- Beginner: result below is menu.
rageUiOperation = rageUiOperation(text2, text3, rageUiOperation2)
text2 = rageUiOperation
rageUiOperation = rageUiOperation.AddInstructionButton
text3 = {}
rageUiOperation2 = "~INPUT_CELLPHONE_CANCEL~"
text4 = "Exit Selection"
text3[1] = rageUiOperation2
text3[2] = text4
rageUiOperation(text2, text3)
rageUiOperation = RMenu
text2 = rageUiOperation
rageUiOperation = rageUiOperation.Get
text3 = "bankheistssetup"
rageUiOperation2 = "mainmenu"
-- Beginner: result below is menu.
rageUiOperation = rageUiOperation(text2, text3, rageUiOperation2)
text2 = rageUiOperation
rageUiOperation = rageUiOperation.AddInstructionButton
text3 = {}
rageUiOperation2 = "~INPUT_CELLPHONE_RIGHT~"
text4 = "Next Setup"
text3[1] = rageUiOperation2
text3[2] = text4
rageUiOperation(text2, text3)
rageUiOperation = RMenu
text2 = rageUiOperation
rageUiOperation = rageUiOperation.Get
text3 = "bankheistssetup"
rageUiOperation2 = "mainmenu"
-- Beginner: result below is menu.
rageUiOperation = rageUiOperation(text2, text3, rageUiOperation2)
text2 = rageUiOperation
rageUiOperation = rageUiOperation.AddInstructionButton
text3 = {}
rageUiOperation2 = "~INPUT_CELLPHONE_LEFT~"
text4 = "Previous Setup"
text3[1] = rageUiOperation2
text3[2] = text4
rageUiOperation(text2, text3)
rageUiOperation = RegisterNetEvent
text2 = "cbe753a39d"
-- Beginner: this function handles network event "cbe753a39d".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3, cmgOperation3, text13
  localValue3 = eventHandler2
  if not localValue3 then
    localValue3 = Citizen
    localValue3 = localValue3.CreateThreadNow
    -- Beginner: this function handles network event "cbe753a39d".

    -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
    function cmgOperation3()
      local localValue12, localValue22
      localValue12 = workingValue4
      localValue22 = false
      localValue12(localValue22)
    end
    localValue3(cmgOperation3)
    localValue3 = assert
    cmgOperation3 = eventHandler2
    text13 = "Attempted to set transition information to an invalid table"
    localValue3(cmgOperation3, text13)
    eventHandler2.players = localValue1
    eventHandler2.setupNumber = localValue2
  else
    eventHandler2.players = localValue1
    localValue3 = eventHandler2.setupNumber
    if localValue3 ~= localValue2 then
      localValue3 = eventHandler2.isHost
      if not localValue3 then
        localValue3 = workingValue2
        cmgOperation3 = localValue2
        localValue3(cmgOperation3)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cbe753a39d".
rageUiOperation(text2, text3)
rageUiOperation = RegisterNetEvent
text2 = "fcbc43097b"
-- Beginner: this function handles network event "fcbc43097b".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue3
  localValue3 = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fcbc43097b".
rageUiOperation(text2, text3)
rageUiOperation = RegisterNetEvent
text2 = "ed75e47264"
-- Beginner: this function handles network event "ed75e47264".

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3
  localValue1 = assert
  localValue2 = eventHandler2
  localValue3 = "Attempted to block interaction for an invalid transition"
  localValue1(localValue2, localValue3)
  eventHandler2.blockInteraction = true
  localValue1 = BeginTextCommandBusyspinnerOn
  localValue2 = "CELEB_WPLYRS"
  localValue1(localValue2)
  localValue1 = EndTextCommandBusyspinnerOn
  localValue2 = 4
  localValue1(localValue2)
  localValue1 = Citizen
  localValue1 = localValue1.Wait
  localValue2 = 15000
  localValue1(localValue2)
  localValue1 = BusyspinnerOff
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ed75e47264".
rageUiOperation(text2, text3)
rageUiOperation = RegisterNetEvent
text2 = "252fb6769b"
-- Beginner: this function handles network event "252fb6769b".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, cmgOperation3, text13, serverEventCall2
  localValue2 = stateFlag3
  if localValue2 then
    localValue2 = false
    stateFlag3 = localValue2
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = true
  stateFlag3 = localValue2
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  while true do
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    localValue3 = localValue3 - localValue2
    cmgOperation3 = 10000
    if not (localValue3 < cmgOperation3) then
      break
    end
    localValue3 = stateFlag3
    if not localValue3 then
      return
    end
    localValue3 = tCMG
    localValue3 = localValue3.notify
    cmgOperation3 = string
    cmgOperation3 = cmgOperation3.format
    text13 = "%s has invited you to a setup, press (~y~Y~w~) to accept (~r~L~w~) to refuse"
    serverEventCall2 = localValue1
    cmgOperation3, text13, serverEventCall2 = cmgOperation3(text13, serverEventCall2)
    -- Beginner: Show a notification to the player.
    localValue3(cmgOperation3, text13, serverEventCall2)
    localValue3 = IsControlJustPressed
    cmgOperation3 = 0
    text13 = 246
    localValue3 = localValue3(cmgOperation3, text13)
    if localValue3 then
      localValue3 = tCMG
      localValue3 = localValue3.notify
      cmgOperation3 = "~g~Request Accepted"
      localValue3(cmgOperation3)
      localValue3 = TriggerServerEvent
      cmgOperation3 = "de439b7711"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "de439b7711".
      localValue3(cmgOperation3)
      localValue3 = false
      stateFlag3 = localValue3
    else
      localValue3 = IsControlJustPressed
      cmgOperation3 = 0
      text13 = 182
      localValue3 = localValue3(cmgOperation3, text13)
      if localValue3 then
        localValue3 = tCMG
        localValue3 = localValue3.notify
        cmgOperation3 = "~g~Request Refused"
        -- Beginner: Show a notification to the player.
        localValue3(cmgOperation3)
        localValue3 = false
        stateFlag3 = localValue3
      end
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    cmgOperation3 = 0
    localValue3(cmgOperation3)
  end
  localValue3 = false
  stateFlag3 = localValue3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "252fb6769b".
rageUiOperation(text2, text3)

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2, localValue3, cmgOperation3
  localValue1 = eventHandler2
  if not localValue1 then
    localValue1 = number11
    if localValue1 then
      localValue1 = number11.isLeaving
      if not localValue1 then
        localValue1 = drawNativeNotification
        localValue2 = "Press ~INPUT_PICKUP~ to exit setup"
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue1(localValue2)
        localValue1 = DisableControlAction
        localValue2 = 0
        localValue3 = 38
        cmgOperation3 = true
        localValue1(localValue2, localValue3, cmgOperation3)
        localValue1 = IsDisabledControlJustPressed
        localValue2 = 0
        localValue3 = 38
        localValue1 = localValue1(localValue2, localValue3)
        if localValue1 then
          localValue1 = TriggerServerEvent
          localValue2 = "6c3cf6a94e"
          localValue3 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6c3cf6a94e".
          localValue1(localValue2, localValue3)
          number11.isLeaving = true
        end
      end
    else
      localValue1 = drawNativeNotification
      localValue2 = "Press ~INPUT_PICKUP~ to enter setups"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue1(localValue2)
      localValue1 = DisableControlAction
      localValue2 = 0
      localValue3 = 38
      cmgOperation3 = true
      localValue1(localValue2, localValue3, cmgOperation3)
      localValue1 = IsDisabledControlJustPressed
      localValue2 = 0
      localValue3 = 38
      localValue1 = localValue1(localValue2, localValue3)
      if localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.isEmergencyService
        localValue1 = localValue1()
        if localValue1 then
          localValue1 = notify
          localValue2 = "~r~You can not be clocked on to enter the bank heist."
          -- Beginner: Show a notification to the player.
          localValue1(localValue2)
        else
          localValue1 = Citizen
          localValue1 = localValue1.CreateThreadNow

          -- === HELPER FUNCTION: localValue2() ===
          function localValue2()
            local localValue12, localValue22
            localValue12 = workingValue4
            localValue22 = true
            localValue12(localValue22)
          end
          localValue1(localValue2)
        end
      end
    end
  end
end
text2 = tCMG
text2 = text2.addMarker
text3 = createVector3.x
rageUiOperation2 = createVector3.y
text4 = createVector3.z
text5 = 0.5
rageUiOperation3 = 0.5
rageUiOperation4 = 0.5
cmgOperation2 = 10
text6 = 255
number5 = 81
number6 = 170
number7 = 50
number8 = 2
stateFlag16 = false
stateFlag17 = false
eventHandler4 = true
-- Beginner: Create a world marker.
text2(text3, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, cmgOperation2, text6, number5, number6, number7, number8, stateFlag16, stateFlag17, eventHandler4)
text2 = CMG
text2 = text2.addBlipContext
text3 = "Civilian"
rageUiOperation2 = tCMG
rageUiOperation2 = rageUiOperation2.addBlip
text4 = createVector3.x
text5 = createVector3.y
rageUiOperation3 = createVector3.z
rageUiOperation4 = 363
cmgOperation2 = 26
text6 = "Heist Setup Factory"
rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, cmgOperation2, text6, number5, number6, number7, number8, stateFlag16, stateFlag17, eventHandler4, text8, workingValue6, workingValue7, workingValue8, workingValue9, eventHandler5, text9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation5, text11, text12, rageUiOperation5, text16, backgroundThread, rageUiOperation6, rageUiOperation7, text17, text18 = rageUiOperation2(text4, text5, rageUiOperation3, rageUiOperation4, cmgOperation2, text6)
text2(text3, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, cmgOperation2, text6, number5, number6, number7, number8, stateFlag16, stateFlag17, eventHandler4, text8, workingValue6, workingValue7, workingValue8, workingValue9, eventHandler5, text9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation5, text11, text12, rageUiOperation5, text16, backgroundThread, rageUiOperation6, rageUiOperation7, text17, text18)
text2 = CMG
text2 = text2.createArea
text3 = "bankheists_select_setups"
rageUiOperation2 = createVector3
text4 = 2.0
text5 = 5.0

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2
end
cmgOperation2 = rageUiOperation
text6 = nil
-- Beginner: Create an interaction area around a world position.
text2(text3, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, cmgOperation2, text6)
text2 = {}
text2.state = "INACTIVE"
text2.lastStateChange = 0
text3 = {}
text3.scaleform = nil
text3.buttons = nil
text3.lives = nil
text3.text = nil
text3.type = nil
text2.hacking = text3
text3 = {}
text2.trollies = text3
text2.lastHurt = 0
text2.lootedAmount = 0
text2.alarmDisabled = false
text3 = false
rageUiOperation2 = false
text4 = false
text5 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2
  localValue1 = eventHandler2
  localValue1 = nil ~= localValue1
  return localValue1
end
text5.isPlayerInBankHeistSetup = rageUiOperation3

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2, localValue3, cmgOperation3, text13
  localValue2 = print
  localValue3 = string
  localValue3 = localValue3.format
  cmgOperation3 = "[BankHeist] %s"
  text13 = localValue1
  localValue3, cmgOperation3, text13 = localValue3(cmgOperation3, text13)
  localValue2(localValue3, cmgOperation3, text13)
end
rageUiOperation3 = RegisterNetEvent
rageUiOperation4 = "f074d4afdf"
-- Beginner: this function handles network event "f074d4afdf".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3, cmgOperation3, text13
  localValue1 = CMG
  localValue1 = localValue1.announceMpSmallMsg
  localValue2 = "ALERT"
  localValue3 = "An alarm has been triggered at the Bank of England"
  cmgOperation3 = 9
  text13 = 10000
  localValue1(localValue2, localValue3, cmgOperation3, text13)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f074d4afdf".
rageUiOperation3(rageUiOperation4, cmgOperation2)
rageUiOperation3 = RegisterNetEvent
rageUiOperation4 = "bb09d4cd38"
-- Beginner: this function handles network event "bb09d4cd38".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2
  text2.alarmDisabled = localValue1
end
rageUiOperation3(rageUiOperation4, cmgOperation2)
-- Beginner: this function handles network event "bb09d4cd38".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "police.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = text2.alarmDisabled
    if not localValue1 then
      localValue1 = text2.state
      if "INACTIVE" ~= localValue1 then
        localValue1 = drawNativeNotification
        localValue2 = "Press ~INPUT_PICKUP~ to turn off the alarm"
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue1(localValue2)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "police.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = text2.alarmDisabled
    if not localValue1 then
      localValue1 = text2.state
      if "INACTIVE" ~= localValue1 then
        localValue1 = IsControlJustPressed
        localValue2 = 0
        localValue3 = 38
        localValue1 = localValue1(localValue2, localValue3)
        if localValue1 then
          localValue1 = TriggerServerEvent
          localValue2 = "bb09d4cd38"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bb09d4cd38".
          localValue1(localValue2)
        end
      end
    end
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createArea
text6 = "bankheists_alarm_disable"
number5 = cmgOperation.alarmDisablePos
number6 = 2.0
number7 = 2.0
number8 = rageUiOperation3

-- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: none) ===
function stateFlag16()
  local localValue1, localValue2
end
stateFlag17 = rageUiOperation4
eventHandler4 = nil
-- Beginner: Create an interaction area around a world position.
cmgOperation2(text6, number5, number6, number7, number8, stateFlag16, stateFlag17, eventHandler4)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21
  localValue1 = GetResourceKvpInt
  localValue2 = "cmg_bankheists_lastdone"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue2 = type
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if "number" == localValue2 and localValue1 > 0 then
      localValue2 = cmgOperation.playerDelayBetweenHeists
      localValue3 = GetCloudTimeAsInt
      -- Beginner: result below is unixTime.
      localValue3 = localValue3()
      localValue3 = localValue3 - localValue1
      localValue2 = localValue2 - localValue3
      localValue3 = math
      localValue3 = localValue3.floor
      cmgOperation3 = localValue2 / 60
      localValue3 = localValue3(cmgOperation3)
      cmgOperation3 = math
      cmgOperation3 = cmgOperation3.floor
      text13 = localValue3 / 60
      cmgOperation3 = cmgOperation3(text13)
      text13 = math
      text13 = text13.floor
      serverEventCall2 = cmgOperation3 / 24
      text13 = text13(serverEventCall2)
      if text13 > 0 then
        serverEventCall2 = cmgOperation3 * 60
        localValue3 = localValue3 - serverEventCall2
        serverEventCall2 = text13 * 24
        cmgOperation3 = cmgOperation3 - serverEventCall2
        serverEventCall2 = string
        serverEventCall2 = serverEventCall2.format
        text20 = "%dd %dh %dm"
        stateFlag20 = text13
        workingValue19 = cmgOperation3
        stateFlag21 = localValue3
        return serverEventCall2(text20, stateFlag20, workingValue19, stateFlag21)
      elseif cmgOperation3 > 0 then
        serverEventCall2 = cmgOperation3 * 60
        localValue3 = localValue3 - serverEventCall2
        serverEventCall2 = string
        serverEventCall2 = serverEventCall2.format
        text20 = "%dh %dm"
        stateFlag20 = cmgOperation3
        workingValue19 = localValue3
        return serverEventCall2(text20, stateFlag20, workingValue19)
      else
        serverEventCall2 = string
        serverEventCall2 = serverEventCall2.format
        text20 = "%dm"
        stateFlag20 = localValue3
        return serverEventCall2(text20, stateFlag20)
      end
  end
  else
    localValue2 = "no time"
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2
  localValue1 = GetResourceKvpInt
  localValue2 = "cmg_bankheists_lastdone"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue2 = type
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if "number" == localValue2 and localValue1 > 0 then
      localValue2 = GetCloudTimeAsInt
      -- Beginner: result below is unixTime.
      localValue2 = localValue2()
      localValue2 = localValue2 - localValue1
      localValue3 = 1800
      if not (localValue2 < localValue3) then
        localValue3 = cmgOperation.playerDelayBetweenHeists
        if not (localValue2 > localValue3) then
          goto continueAtStep26
        end
      end
      localValue3 = false
      return localValue3
      goto continueAtStep39
      ::continueAtStep26::
      localValue3 = drawNativeNotification
      cmgOperation3 = string
      cmgOperation3 = cmgOperation3.format
      text13 = "You can not interact with a heist for another %s"
      serverEventCall2 = cmgOperation2
      serverEventCall2 = serverEventCall2()
      cmgOperation3, text13, serverEventCall2 = cmgOperation3(text13, serverEventCall2)
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue3(cmgOperation3, text13, serverEventCall2)
      localValue3 = true
      return localValue3
  end
  else
    localValue2 = false
    return localValue2
  end
  ::continueAtStep39::
end

-- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
function number5()
  local localValue1, localValue2, localValue3
  localValue1 = SetResourceKvpInt
  localValue2 = "cmg_bankheists_lastdone"
  localValue3 = GetCloudTimeAsInt
  -- Beginner: result below is unixTime.
  localValue3 = localValue3()
  localValue1(localValue2, localValue3)
  localValue1 = CMG
  localValue1 = localValue1.setPlayerCombatTimer
  localValue2 = 300
  localValue3 = false
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: number6; parameters: localValue1) ===
function number6(localValue1)
  local localValue2, localValue3, cmgOperation3, text13
  localValue2 = SetScaleformMovieAsNoLongerNeeded
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  localValue2(localValue3)
  localValue2 = SetScaleformMovieAsNoLongerNeeded
  localValue3 = text2.hacking
  localValue3 = localValue3.buttons
  localValue2(localValue3)
  localValue2 = text2.hacking
  localValue2.scaleform = nil
  localValue2 = text2.hacking
  localValue2.buttons = nil
  localValue2 = text2.hacking
  localValue2.lives = nil
  localValue2 = text2.hacking
  localValue2.text = nil
  localValue2 = text2.hacking
  localValue2.type = nil
  if localValue1 then
    localValue2 = SetPlayerControl
    localValue3 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue3 = localValue3()
    cmgOperation3 = true
    text13 = 0
    localValue2(localValue3, cmgOperation3, text13)
    localValue2 = FreezeEntityPosition
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    cmgOperation3 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue2(localValue3, cmgOperation3)
    localValue2 = CMG
    localValue2 = localValue2.showAllDisplays
    localValue3 = "bankheisthacking"
    localValue2(localValue3)
    localValue2 = TriggerServerEvent
    localValue3 = "42aa1d4e55"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "42aa1d4e55".
    localValue2(localValue3)
  end
end

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, localValue2, localValue3, cmgOperation3, text13
  localValue1 = number6
  localValue2 = false
  localValue1(localValue2)
  localValue1 = true
  localValue2 = TriggerEvent
  localValue3 = "ultra-voltlab"
  cmgOperation3 = 60

  -- === HELPER FUNCTION (decompiler name: text13; parameters: localValue12, localValue22) ===
  function text13(localValue12, localValue22)
    local text7, stateFlag18, text14, stateFlag19, rageUiOperation8
    text7 = false
    localValue1 = text7
    text7 = text5
    stateFlag18 = string
    stateFlag18 = stateFlag18.format
    text14 = "Received voltlab callback (status: %sd message: %s)"
    stateFlag19 = localValue12
    rageUiOperation8 = localValue22
    stateFlag18, text14, stateFlag19, rageUiOperation8 = stateFlag18(text14, stateFlag19, rageUiOperation8)
    text7(stateFlag18, text14, stateFlag19, rageUiOperation8)
    if 1 == localValue12 then
      text7 = number5
      text7()
      text7 = TriggerServerEvent
      stateFlag18 = "59cbb58053"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "59cbb58053".
      text7(stateFlag18)
    else
      text7 = TriggerServerEvent
      stateFlag18 = "42aa1d4e55"
      text7(stateFlag18)
    end
    text7 = SetPlayerControl
    stateFlag18 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    stateFlag18 = stateFlag18()
    text14 = true
    stateFlag19 = 0
    text7(stateFlag18, text14, stateFlag19)
    text7 = FreezeEntityPosition
    stateFlag18 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    stateFlag18 = stateFlag18()
    text14 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    text7(stateFlag18, text14)
    text7 = CMG
    text7 = text7.showAllDisplays
    stateFlag18 = "bankheisthacking"
    text7(stateFlag18)
  end
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "ultra-voltlab".
  localValue2(localValue3, cmgOperation3, text13)
  localValue2 = text2.hacking
  localValue2.type = 2
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, text7, stateFlag18
    while true do
      localValue12 = localValue1
      if not localValue12 then
        break
      end
      localValue12 = DisablePlayerFiring
      localValue22 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      localValue22 = localValue22()
      text7 = true
      localValue12(localValue22, text7)
      localValue12 = DisableControlAction
      localValue22 = 0
      text7 = 24
      stateFlag18 = true
      localValue12(localValue22, text7, stateFlag18)
      localValue12 = DisableControlAction
      localValue22 = 0
      text7 = 25
      stateFlag18 = true
      localValue12(localValue22, text7, stateFlag18)
      localValue12 = Citizen
      localValue12 = localValue12.Wait
      localValue22 = 0
      localValue12(localValue22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
function number8()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2
  localValue1 = CMG
  localValue1 = localValue1.hideAllDisplays
  localValue2 = "bankheisthacking"
  localValue1(localValue2)
  localValue1 = RequestScaleformMovieInteractive
  localValue2 = "HACKING_PC"
  localValue1 = localValue1(localValue2)
  while true do
    localValue2 = HasScaleformMovieLoaded
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      break
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = text2.hacking
  localValue2.scaleform = localValue1
  localValue2 = SetPlayerControl
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  cmgOperation3 = false
  text13 = 0
  localValue2(localValue3, cmgOperation3, text13)
  localValue2 = BeginScaleformMovieMethod
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  cmgOperation3 = "SET_LABELS"
  localValue2(localValue3, cmgOperation3)
  localValue2 = _ENV
  localValue3 = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[localValue3]
  localValue3 = "Local Disk (C:)"
  localValue2(localValue3)
  localValue2 = _ENV
  localValue3 = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[localValue3]
  localValue3 = "Network"
  localValue2(localValue3)
  localValue2 = _ENV
  localValue3 = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[localValue3]
  localValue3 = "External Device (F:)"
  localValue2(localValue3)
  localValue2 = _ENV
  localValue3 = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[localValue3]
  localValue3 = "sonic.exe"
  localValue2(localValue3)
  localValue2 = _ENV
  localValue3 = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[localValue3]
  localValue3 = "keyhack.exe"
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  cmgOperation3 = "SET_BACKGROUND"
  localValue2(localValue3, cmgOperation3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 0
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  cmgOperation3 = "ADD_PROGRAM"
  localValue2(localValue3, cmgOperation3)
  localValue2 = ScaleformMovieMethodAddParamFloat
  localValue3 = 1.0
  localValue2(localValue3)
  localValue2 = ScaleformMovieMethodAddParamFloat
  localValue3 = 4.0
  localValue2(localValue3)
  localValue2 = _ENV
  localValue3 = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[localValue3]
  localValue3 = "My Computer"
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  cmgOperation3 = "ADD_PROGRAM"
  localValue2(localValue3, cmgOperation3)
  localValue2 = ScaleformMovieMethodAddParamFloat
  localValue3 = 6.0
  localValue2(localValue3)
  localValue2 = ScaleformMovieMethodAddParamFloat
  localValue3 = 6.0
  localValue2(localValue3)
  localValue2 = _ENV
  localValue3 = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[localValue3]
  localValue3 = "Power Off"
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  cmgOperation3 = "SET_COLUMN_SPEED"
  localValue2(localValue3, cmgOperation3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 0
  localValue2(localValue3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 255
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  cmgOperation3 = "SET_COLUMN_SPEED"
  localValue2(localValue3, cmgOperation3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 1
  localValue2(localValue3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 255
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  cmgOperation3 = "SET_COLUMN_SPEED"
  localValue2(localValue3, cmgOperation3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 2
  localValue2(localValue3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 255
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  cmgOperation3 = "SET_COLUMN_SPEED"
  localValue2(localValue3, cmgOperation3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 3
  localValue2(localValue3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 255
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  cmgOperation3 = "SET_COLUMN_SPEED"
  localValue2(localValue3, cmgOperation3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 4
  localValue2(localValue3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 255
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  cmgOperation3 = "SET_COLUMN_SPEED"
  localValue2(localValue3, cmgOperation3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 5
  localValue2(localValue3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 255
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  cmgOperation3 = "SET_COLUMN_SPEED"
  localValue2(localValue3, cmgOperation3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 6
  localValue2(localValue3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 255
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = text2.hacking
  localValue3 = localValue3.scaleform
  cmgOperation3 = "SET_COLUMN_SPEED"
  localValue2(localValue3, cmgOperation3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 7
  localValue2(localValue3)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 255
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = text2.hacking
  localValue2.lives = 5
  localValue2 = text2.hacking
  localValue3 = cmgOperation.terminalHack
  localValue3 = localValue3.words
  cmgOperation3 = math
  cmgOperation3 = cmgOperation3.random
  text13 = 1
  serverEventCall2 = cmgOperation.terminalHack
  serverEventCall2 = serverEventCall2.words
  serverEventCall2 = #serverEventCall2
  cmgOperation3 = cmgOperation3(text13, serverEventCall2)
  localValue3 = localValue3[cmgOperation3]
  localValue2.text = localValue3
  localValue2 = text2.hacking
  localValue2.type = 1
end

-- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: none) ===
function stateFlag16()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20
  localValue1 = DisablePlayerFiring
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  localValue3 = true
  localValue1(localValue2, localValue3)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 24
  cmgOperation3 = true
  localValue1(localValue2, localValue3, cmgOperation3)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 25
  cmgOperation3 = true
  localValue1(localValue2, localValue3, cmgOperation3)
  localValue1 = DrawScaleformMovieFullscreen
  localValue2 = text2.hacking
  localValue2 = localValue2.scaleform
  localValue3 = 255
  cmgOperation3 = 255
  text13 = 255
  serverEventCall2 = 255
  text20 = 0
  localValue1(localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20)
  localValue1 = DrawScaleformMovieFullscreen
  localValue2 = text2.hacking
  localValue2 = localValue2.buttons
  localValue3 = 255
  cmgOperation3 = 255
  text13 = 255
  serverEventCall2 = 255
  text20 = 0
  localValue1(localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20)
  localValue1 = BeginScaleformMovieMethod
  localValue2 = text2.hacking
  localValue2 = localValue2.scaleform
  localValue3 = "SET_CURSOR"
  localValue1(localValue2, localValue3)
  localValue1 = ScaleformMovieMethodAddParamFloat
  localValue2 = GetDisabledControlNormal
  localValue3 = 0
  cmgOperation3 = 239
  localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20 = localValue2(localValue3, cmgOperation3)
  localValue1(localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20)
  localValue1 = ScaleformMovieMethodAddParamFloat
  localValue2 = GetDisabledControlNormal
  localValue3 = 0
  cmgOperation3 = 240
  localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20 = localValue2(localValue3, cmgOperation3)
  localValue1(localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20)
  localValue1 = EndScaleformMovieMethod
  localValue1()
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 24
  cmgOperation3 = true
  localValue1(localValue2, localValue3, cmgOperation3)
  localValue1 = IsDisabledControlJustPressed
  localValue2 = 0
  localValue3 = 24
  localValue1 = localValue1(localValue2, localValue3)
  if localValue1 then
    localValue1 = BeginScaleformMovieMethod
    localValue2 = text2.hacking
    localValue2 = localValue2.scaleform
    localValue3 = "SET_INPUT_EVENT_SELECT"
    localValue1(localValue2, localValue3)
    localValue1 = text2.hacking
    localValue2 = EndScaleformMovieMethodReturnValue
    localValue2 = localValue2()
    localValue1.returnValue = localValue2
    localValue1 = PlaySoundFrontend
    localValue2 = -1
    localValue3 = "HACKING_CLICK"
    cmgOperation3 = ""
    text13 = true
    localValue1(localValue2, localValue3, cmgOperation3, text13)
  end
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 25
  cmgOperation3 = true
  localValue1(localValue2, localValue3, cmgOperation3)
  localValue1 = IsDisabledControlJustPressed
  localValue2 = 0
  localValue3 = 25
  localValue1 = localValue1(localValue2, localValue3)
  if localValue1 then
    localValue1 = BeginScaleformMovieMethod
    localValue2 = text2.hacking
    localValue2 = localValue2.scaleform
    localValue3 = "SET_INPUT_EVENT_BACK"
    localValue1(localValue2, localValue3)
    localValue1 = EndScaleformMovieMethod
    localValue1()
    localValue1 = PlaySoundFrontend
    localValue2 = -1
    localValue3 = "HACKING_CLICK"
    cmgOperation3 = ""
    text13 = true
    localValue1(localValue2, localValue3, cmgOperation3, text13)
  end
  localValue1 = text2.hacking
  localValue1 = localValue1.lives
  if localValue1 <= 0 then
    localValue1 = number6
    localValue2 = true
    localValue1(localValue2)
    return
  end
  localValue1 = IsScaleformMovieMethodReturnValueReady
  localValue2 = text2.hacking
  localValue2 = localValue2.returnValue
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = GetScaleformMovieMethodReturnValueInt
    localValue2 = text2.hacking
    localValue2 = localValue2.returnValue
    localValue1 = localValue1(localValue2)
    if 82 == localValue1 then
      localValue2 = PlaySoundFrontend
      localValue3 = -1
      cmgOperation3 = "HACKING_CLICK_BAD"
      text13 = ""
      serverEventCall2 = false
      localValue2(localValue3, cmgOperation3, text13, serverEventCall2)
    elseif 83 == localValue1 then
      localValue2 = BeginScaleformMovieMethod
      localValue3 = text2.hacking
      localValue3 = localValue3.scaleform
      cmgOperation3 = "RUN_PROGRAM"
      localValue2(localValue3, cmgOperation3)
      localValue2 = ScaleformMovieMethodAddParamFloat
      localValue3 = 83.0
      localValue2(localValue3)
      localValue2 = EndScaleformMovieMethod
      localValue2()
      localValue2 = BeginScaleformMovieMethod
      localValue3 = text2.hacking
      localValue3 = localValue3.scaleform
      cmgOperation3 = "SET_ROULETTE_WORD"
      localValue2(localValue3, cmgOperation3)
      localValue2 = _ENV
      localValue3 = "ScaleformMovieMethodAddParamTextureNameString"
      localValue2 = localValue2[localValue3]
      localValue3 = text2.hacking
      localValue3 = localValue3.text
      localValue2(localValue3)
      localValue2 = EndScaleformMovieMethod
      localValue2()
    elseif 87 == localValue1 then
      localValue2 = text2.hacking
      localValue3 = text2.hacking
      localValue3 = localValue3.lives
      localValue3 = localValue3 - 1
      localValue2.lives = localValue3
      localValue2 = BeginScaleformMovieMethod
      localValue3 = text2.hacking
      localValue3 = localValue3.scaleform
      cmgOperation3 = "SET_ROULETTE_WORD"
      localValue2(localValue3, cmgOperation3)
      localValue2 = _ENV
      localValue3 = "ScaleformMovieMethodAddParamTextureNameString"
      localValue2 = localValue2[localValue3]
      localValue3 = text2.hacking
      localValue3 = localValue3.text
      localValue2(localValue3)
      localValue2 = EndScaleformMovieMethod
      localValue2()
      localValue2 = BeginScaleformMovieMethod
      localValue3 = text2.hacking
      localValue3 = localValue3.scaleform
      cmgOperation3 = "SET_LIVES"
      localValue2(localValue3, cmgOperation3)
      localValue2 = ScaleformMovieMethodAddParamInt
      localValue3 = text2.hacking
      localValue3 = localValue3.lives
      localValue2(localValue3)
      localValue2 = ScaleformMovieMethodAddParamInt
      localValue3 = 5
      localValue2(localValue3)
      localValue2 = EndScaleformMovieMethod
      localValue2()
      localValue2 = PlaySoundFrontend
      localValue3 = -1
      cmgOperation3 = "HACKING_CLICK_BAD"
      text13 = ""
      serverEventCall2 = false
      localValue2(localValue3, cmgOperation3, text13, serverEventCall2)
    elseif 86 == localValue1 then
      localValue2 = PlaySoundFrontend
      localValue3 = -1
      cmgOperation3 = "HACKING_SUCCESS"
      text13 = ""
      serverEventCall2 = true
      localValue2(localValue3, cmgOperation3, text13, serverEventCall2)
      localValue2 = Citizen
      localValue2 = localValue2.CreateThread

      -- === HELPER FUNCTION: localValue3() ===
      function localValue3()
        local localValue12, localValue22, text7
        localValue12 = BeginScaleformMovieMethod
        localValue22 = text2.hacking
        localValue22 = localValue22.scaleform
        text7 = "SET_ROULETTE_OUTCOME"
        localValue12(localValue22, text7)
        localValue12 = ScaleformMovieMethodAddParamBool
        localValue22 = true
        localValue12(localValue22)
        localValue12 = _ENV
        localValue22 = "ScaleformMovieMethodAddParamTextureNameString"
        localValue12 = localValue12[localValue22]
        localValue22 = "BRUTEFORCE SUCCESSFUL!"
        localValue12(localValue22)
        localValue12 = EndScaleformMovieMethod
        localValue12()
        localValue12 = Citizen
        localValue12 = localValue12.Wait
        localValue22 = 2500
        localValue12(localValue22)
        localValue12 = BeginScaleformMovieMethod
        localValue22 = text2.hacking
        localValue22 = localValue22.scaleform
        text7 = "CLOSE_APP"
        localValue12(localValue22, text7)
        localValue12 = EndScaleformMovieMethod
        localValue12()
        localValue12 = BeginScaleformMovieMethod
        localValue22 = text2.hacking
        localValue22 = localValue22.scaleform
        text7 = "OPEN_LOADING_PROGRESS"
        localValue12(localValue22, text7)
        localValue12 = ScaleformMovieMethodAddParamBool
        localValue22 = true
        localValue12(localValue22)
        localValue12 = EndScaleformMovieMethod
        localValue12()
        localValue12 = BeginScaleformMovieMethod
        localValue22 = text2.hacking
        localValue22 = localValue22.scaleform
        text7 = "SET_LOADING_PROGRESS"
        localValue12(localValue22, text7)
        localValue12 = ScaleformMovieMethodAddParamInt
        localValue22 = 35
        localValue12(localValue22)
        localValue12 = EndScaleformMovieMethod
        localValue12()
        localValue12 = BeginScaleformMovieMethod
        localValue22 = text2.hacking
        localValue22 = localValue22.scaleform
        text7 = "SET_LOADING_TIME"
        localValue12(localValue22, text7)
        localValue12 = ScaleformMovieMethodAddParamInt
        localValue22 = 35
        localValue12(localValue22)
        localValue12 = EndScaleformMovieMethod
        localValue12()
        localValue12 = BeginScaleformMovieMethod
        localValue22 = text2.hacking
        localValue22 = localValue22.scaleform
        text7 = "SET_LOADING_MESSAGE"
        localValue12(localValue22, text7)
        localValue12 = _ENV
        localValue22 = "ScaleformMovieMethodAddParamTextureNameString"
        localValue12 = localValue12[localValue22]
        localValue22 = "Writing data to buffer.."
        localValue12(localValue22)
        localValue12 = ScaleformMovieMethodAddParamFloat
        localValue22 = 2.0
        localValue12(localValue22)
        localValue12 = EndScaleformMovieMethod
        localValue12()
        localValue12 = Citizen
        localValue12 = localValue12.Wait
        localValue22 = 2500
        localValue12(localValue22)
        localValue12 = BeginScaleformMovieMethod
        localValue22 = text2.hacking
        localValue22 = localValue22.scaleform
        text7 = "SET_LOADING_MESSAGE"
        localValue12(localValue22, text7)
        localValue12 = _ENV
        localValue22 = "ScaleformMovieMethodAddParamTextureNameString"
        localValue12 = localValue12[localValue22]
        localValue22 = "Executing malicious code.."
        localValue12(localValue22)
        localValue12 = ScaleformMovieMethodAddParamFloat
        localValue22 = 2.0
        localValue12(localValue22)
        localValue12 = EndScaleformMovieMethod
        localValue12()
        localValue12 = BeginScaleformMovieMethod
        localValue22 = text2.hacking
        localValue22 = localValue22.scaleform
        text7 = "SET_LOADING_TIME"
        localValue12(localValue22, text7)
        localValue12 = ScaleformMovieMethodAddParamInt
        localValue22 = 15
        localValue12(localValue22)
        localValue12 = EndScaleformMovieMethod
        localValue12()
        localValue12 = BeginScaleformMovieMethod
        localValue22 = text2.hacking
        localValue22 = localValue22.scaleform
        text7 = "SET_LOADING_PROGRESS"
        localValue12(localValue22, text7)
        localValue12 = ScaleformMovieMethodAddParamInt
        localValue22 = 75
        localValue12(localValue22)
        localValue12 = EndScaleformMovieMethod
        localValue12()
        localValue12 = Citizen
        localValue12 = localValue12.Wait
        localValue22 = 1500
        localValue12(localValue22)
        localValue12 = number7
        localValue12()
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      localValue2(localValue3)
    elseif 6 == localValue1 then
      localValue2 = Citizen
      localValue2 = localValue2.Wait
      localValue3 = 500
      localValue2(localValue3)
      localValue2 = number6
      localValue3 = true
      localValue2(localValue3)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: stateFlag17; parameters: none) ===
function stateFlag17()
  local localValue1, localValue2, localValue3
  localValue1 = text2.hacking
  localValue2 = RequestScaleformMovie
  localValue3 = "instructional_buttons"
  -- Beginner: result below is scaleformHandle.
  localValue2 = localValue2(localValue3)
  localValue1.buttons = localValue2
  while true do
    localValue1 = HasScaleformMovieLoaded
    localValue2 = text2.hacking
    localValue2 = localValue2.buttons
    localValue1 = localValue1(localValue2)
    if localValue1 then
      break
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = BeginScaleformMovieMethod
  localValue2 = text2.hacking
  localValue2 = localValue2.buttons
  localValue3 = "CLEAR_ALL"
  localValue1(localValue2, localValue3)
  localValue1 = EndScaleformMovieMethod
  localValue1()
  localValue1 = BeginScaleformMovieMethod
  localValue2 = text2.hacking
  localValue2 = localValue2.buttons
  localValue3 = "SET_DATA_SLOT"
  localValue1(localValue2, localValue3)
  localValue1 = ScaleformMovieMethodAddParamInt
  localValue2 = 0
  localValue1(localValue2)
  localValue1 = _ENV
  localValue2 = "ScaleformMovieMethodAddParamPlayerNameString"
  localValue1 = localValue1[localValue2]
  localValue2 = "~INPUT_ATTACK~"
  localValue1(localValue2)
  localValue1 = BeginTextCommandScaleformString
  localValue2 = "STRING"
  localValue1(localValue2)
  localValue1 = AddTextComponentSubstringKeyboardDisplay
  localValue2 = "Click / Select"
  localValue1(localValue2)
  localValue1 = EndTextCommandScaleformString
  localValue1()
  localValue1 = EndScaleformMovieMethod
  localValue1()
  localValue1 = BeginScaleformMovieMethod
  localValue2 = text2.hacking
  localValue2 = localValue2.buttons
  localValue3 = "DRAW_INSTRUCTIONAL_BUTTONS"
  localValue1(localValue2, localValue3)
  localValue1 = EndScaleformMovieMethod
  localValue1()
  localValue1 = BeginScaleformMovieMethod
  localValue2 = text2.hacking
  localValue2 = localValue2.buttons
  localValue3 = "SET_BACKGROUND_COLOUR"
  localValue1(localValue2, localValue3)
  localValue1 = ScaleformMovieMethodAddParamInt
  localValue2 = 0
  localValue1(localValue2)
  localValue1 = ScaleformMovieMethodAddParamInt
  localValue2 = 0
  localValue1(localValue2)
  localValue1 = ScaleformMovieMethodAddParamInt
  localValue2 = 0
  localValue1(localValue2)
  localValue1 = ScaleformMovieMethodAddParamInt
  localValue2 = 80
  localValue1(localValue2)
  localValue1 = EndScaleformMovieMethod
  localValue1()
end
eventHandler4 = RegisterNetEvent
text8 = "8ad4db1275"
-- Beginner: this function handles network event "8ad4db1275".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.isPlayerInBankHeistSetup
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = FreezeEntityPosition
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue1(localValue2, localValue3)
  localValue1 = number8
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue1()
  localValue1 = stateFlag17
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8ad4db1275".
eventHandler4(text8, workingValue6)

-- === HELPER FUNCTION (decompiler name: eventHandler4; parameters: localValue1) ===
function eventHandler4(localValue1)
  local localValue2, localValue3, cmgOperation3
  localValue2 = text6
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = drawNativeNotification
    localValue3 = "Press ~INPUT_PICKUP~ to plant thermite"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue2(localValue3)
    localValue2 = IsControlJustPressed
    localValue3 = 0
    cmgOperation3 = 38
    localValue2 = localValue2(localValue3, cmgOperation3)
    if localValue2 then
      localValue2 = TriggerServerEvent
      localValue3 = "40cac5cefd"
      cmgOperation3 = localValue1
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "40cac5cefd".
      localValue2(localValue3, cmgOperation3)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3
  localValue1 = text6
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = drawNativeNotification
    localValue2 = "Press ~INPUT_PICKUP~ to begin hacking"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue1(localValue2)
    localValue1 = IsControlJustPressed
    localValue2 = 0
    localValue3 = 38
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = TriggerServerEvent
      localValue2 = "8ad4db1275"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ad4db1275".
      localValue1(localValue2)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, localValue3
  localValue1 = text6
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = drawNativeNotification
    localValue2 = "Press ~INPUT_PICKUP~ to open the safe"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue1(localValue2)
    localValue1 = IsControlJustPressed
    localValue2 = 0
    localValue3 = 38
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = TriggerServerEvent
      localValue2 = "13c85b0cd6"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "13c85b0cd6".
      localValue1(localValue2)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4
  localValue3 = text2.trollies
  localValue3 = localValue3[localValue1]
  if localValue3 then
    cmgOperation3 = localValue3.handle
    if cmgOperation3 then
      cmgOperation3 = tonumber
      text13 = localValue3.state
      cmgOperation3 = cmgOperation3(text13)
      if cmgOperation3 then
        cmgOperation3 = DeleteEntity
        text13 = localValue3.handle
        -- Beginner: Delete a GTA entity.
        cmgOperation3(text13)
        localValue3.handle = nil
      end
      return
    else
      cmgOperation3 = tonumber
      text13 = localValue3.state
      cmgOperation3 = cmgOperation3(text13)
      if cmgOperation3 then
        return
      end
    end
  end
  cmgOperation3 = text4
  if not cmgOperation3 then
    return
  end
  if localValue3 then
    cmgOperation3 = localValue3.state
    if "LOOTED" == cmgOperation3 then
      cmgOperation3 = 769923921
      if cmgOperation3 then
        goto continueAtStep38
      end
    end
  end
  cmgOperation3 = localValue2.model
  ::continueAtStep38::
  text13 = IsModelValid
  serverEventCall2 = cmgOperation3
  text13 = text13(serverEventCall2)
  if text13 then
    text13 = HasModelLoaded
    serverEventCall2 = cmgOperation3
    text13 = text13(serverEventCall2)
    if text13 then
      goto continueAtStep52
    end
  end
  text13 = RequestModel
  serverEventCall2 = cmgOperation3
  text13(serverEventCall2)
  return
  ::continueAtStep52::
  text13 = GetInteriorAtCoords
  serverEventCall2 = localValue2.position
  serverEventCall2 = serverEventCall2.x
  text20 = localValue2.position
  text20 = text20.y
  stateFlag20 = localValue2.position
  stateFlag20 = stateFlag20.z
  -- Beginner: result below is interiorId.
  text13 = text13(serverEventCall2, text20, stateFlag20)
  serverEventCall2 = IsValidInterior
  text20 = text13
  serverEventCall2 = serverEventCall2(text20)
  if serverEventCall2 then
    serverEventCall2 = IsInteriorReady
    text20 = text13
    serverEventCall2 = serverEventCall2(text20)
    if serverEventCall2 then
      goto continueAtStep71
    end
  end
  return
  ::continueAtStep71::
  serverEventCall2 = CreateObjectNoOffset
  text20 = cmgOperation3
  stateFlag20 = localValue2.position
  stateFlag20 = stateFlag20.x
  workingValue19 = localValue2.position
  workingValue19 = workingValue19.y
  stateFlag21 = localValue2.position
  stateFlag21 = stateFlag21.z
  stateFlag21 = stateFlag21 - 0.53
  workingValue = false
  stateFlag = false
  stateFlag4 = false
  -- Beginner: result below is objectEntity.
  serverEventCall2 = serverEventCall2(text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4)
  text20 = FreezeEntityPosition
  stateFlag20 = serverEventCall2
  workingValue19 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  text20(stateFlag20, workingValue19)
  text20 = localValue2.heading
  if 0 ~= text20 then
    text20 = SetEntityHeading
    stateFlag20 = serverEventCall2
    workingValue19 = GetEntityHeading
    stateFlag21 = serverEventCall2
    -- Beginner: result below is heading.
    workingValue19 = workingValue19(stateFlag21)
    stateFlag21 = localValue2.heading
    workingValue19 = workingValue19 + stateFlag21
    -- Beginner: Change the direction an entity is facing.
    text20(stateFlag20, workingValue19)
  end
  text20 = SetModelAsNoLongerNeeded
  stateFlag20 = cmgOperation3
  text20(stateFlag20)
  text20 = text5
  stateFlag20 = string
  stateFlag20 = stateFlag20.format
  workingValue19 = "Created trolly %d with model %d"
  stateFlag21 = localValue1
  workingValue = cmgOperation3
  stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4 = stateFlag20(workingValue19, stateFlag21, workingValue)
  text20(stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4)
  if localValue3 then
    localValue3.handle = serverEventCall2
    localValue3.config = localValue2
  else
    text20 = text2.trollies
    stateFlag20 = {}
    stateFlag20.handle = serverEventCall2
    stateFlag20.config = localValue2
    stateFlag20.state = nil
    text20[localValue1] = stateFlag20
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21
  localValue1 = ipairs
  localValue2 = cmgOperation.trollies
  localValue1, localValue2, localValue3, cmgOperation3 = localValue1(localValue2)
  for text13, serverEventCall2 in localValue1, localValue2, localValue3, cmgOperation3 do
    text20 = workingValue7
    stateFlag20 = text13
    workingValue19 = serverEventCall2
    text20(stateFlag20, workingValue19)
  end
  localValue1 = text2.state
  if "DONE_HACKING" ~= localValue1 then
    return
  end
  localValue1 = nil
  localValue2 = 10.0
  localValue3 = pairs
  cmgOperation3 = text2.trollies
  localValue3, cmgOperation3, text13, serverEventCall2 = localValue3(cmgOperation3)
  for text20, stateFlag20 in localValue3, cmgOperation3, text13, serverEventCall2 do
    workingValue19 = stateFlag20.config
    if workingValue19 then
      workingValue19 = CMG
      workingValue19 = workingValue19.getPlayerCoords
      -- Beginner: result below is playerCoords.
      workingValue19 = workingValue19()
      stateFlag21 = stateFlag20.config
      stateFlag21 = stateFlag21.position
      workingValue19 = workingValue19 - stateFlag21
      workingValue19 = #workingValue19
      if localValue2 > workingValue19 then
        stateFlag21 = stateFlag20.state
        if not stateFlag21 then
          localValue1 = stateFlag20
          localValue2 = workingValue19
        end
      end
    end
  end
  if localValue1 and localValue2 < 2.0 then
    localValue3 = text6
    localValue3 = localValue3()
    if not localValue3 then
      localValue3 = drawNativeNotification
      cmgOperation3 = string
      cmgOperation3 = cmgOperation3.format
      text13 = "Press ~INPUT_PICKUP~ to steal the %s"
      serverEventCall2 = localValue1.config
      serverEventCall2 = serverEventCall2.name
      cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21 = cmgOperation3(text13, serverEventCall2)
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue3(cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21)
      localValue3 = IsControlJustPressed
      cmgOperation3 = 0
      text13 = 38
      localValue3 = localValue3(cmgOperation3, text13)
      if localValue3 then
        localValue3 = TriggerServerEvent
        cmgOperation3 = "8939f8d91f"
        text13 = table
        text13 = text13.find
        serverEventCall2 = cmgOperation.trollies
        text20 = localValue1.config
        text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21 = text13(serverEventCall2, text20)
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8939f8d91f".
        localValue3(cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21)
      end
    end
  end
  localValue3 = text4
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.createTimerBars
    -- Beginner: result below is timerBars.
    localValue3 = localValue3()
    cmgOperation3 = localValue3.push
    text13 = "~g~TOTAL TAKE~w~"
    serverEventCall2 = string
    serverEventCall2 = serverEventCall2.format
    text20 = "\194\163%s"
    stateFlag20 = getMoneyStringFormatted
    workingValue19 = text2.lootedAmount
    stateFlag20, workingValue19, stateFlag21 = stateFlag20(workingValue19)
    serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21 = serverEventCall2(text20, stateFlag20, workingValue19, stateFlag21)
    cmgOperation3(text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21)
    cmgOperation3 = text2.state
    if "DONE_HACKING" == cmgOperation3 then
      cmgOperation3 = localValue3.push
      text13 = "~b~TIME TO GAS~w~"
      serverEventCall2 = tostring
      text20 = math
      text20 = text20.floor
      stateFlag20 = cmgOperation.timeToGas
      workingValue19 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      workingValue19 = workingValue19()
      stateFlag21 = text2.lastStateChange
      workingValue19 = workingValue19 - stateFlag21
      stateFlag20 = stateFlag20 - workingValue19
      stateFlag20 = stateFlag20 / 1000
      text20, stateFlag20, workingValue19, stateFlag21 = text20(stateFlag20)
      serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21 = serverEventCall2(text20, stateFlag20, workingValue19, stateFlag21)
      cmgOperation3(text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21)
    end
    cmgOperation3 = localValue3.draw
    cmgOperation3()
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20
  localValue1 = pairs
  localValue2 = text2.trollies
  localValue1, localValue2, localValue3, cmgOperation3 = localValue1(localValue2)
  for text13, serverEventCall2 in localValue1, localValue2, localValue3, cmgOperation3 do
    text20 = DeleteEntity
    stateFlag20 = serverEventCall2.handle
    -- Beginner: Delete a GTA entity.
    text20(stateFlag20)
  end
  localValue1 = {}
  text2.trollies = localValue1
end
eventHandler5 = RegisterNetEvent
text9 = "370ccb3860"
-- Beginner: this function handles network event "370ccb3860".

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20
  localValue2 = 0
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  while true do
    cmgOperation3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgOperation3 = cmgOperation3()
    cmgOperation3 = cmgOperation3 - localValue3
    text13 = 37000
    if not (cmgOperation3 < text13) then
      break
    end
    cmgOperation3 = math
    cmgOperation3 = cmgOperation3.floor
    text13 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text13 = text13()
    text13 = text13 - localValue3
    text13 = text13 / 37000
    text13 = text13 * localValue1
    cmgOperation3 = cmgOperation3(text13)
    text13 = cmgOperation3 - localValue2
    if text13 > 0 then
      localValue2 = cmgOperation3
      serverEventCall2 = text2.lootedAmount
      serverEventCall2 = serverEventCall2 + text13
      text2.lootedAmount = serverEventCall2
    end
    serverEventCall2 = Citizen
    serverEventCall2 = serverEventCall2.Wait
    text20 = 50
    serverEventCall2(text20)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "370ccb3860".
eventHandler5(text9, workingValue10)
eventHandler5 = RegisterNetEvent
text9 = "8939f8d91f"
-- Beginner: this function handles network event "8939f8d91f".

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, number4, stateFlag15
  localValue2 = CMG
  localValue2 = localValue2.isPlayerInBankHeistSetup
  localValue2 = localValue2()
  if localValue2 then
    return
  end
  localValue2 = number5
  localValue2()
  localValue2 = text2.trollies
  localValue2 = localValue2[localValue1]
  localValue3 = GetEntityModel
  cmgOperation3 = localValue2.handle
  -- Beginner: result below is modelHash.
  localValue3 = localValue3(cmgOperation3)
  cmgOperation3 = GetEntityCoords
  text13 = localValue2.handle
  serverEventCall2 = true
  -- Beginner: result below is entityCoords.
  cmgOperation3 = cmgOperation3(text13, serverEventCall2)
  text13 = GetEntityRotation
  serverEventCall2 = localValue2.handle
  text20 = 2
  text13 = text13(serverEventCall2, text20)
  serverEventCall2 = DeleteEntity
  text20 = localValue2.handle
  -- Beginner: Delete a GTA entity.
  serverEventCall2(text20)
  localValue2.handle = nil
  serverEventCall2 = CMG
  serverEventCall2 = serverEventCall2.requestEntitySpawn
  text20 = "bankheist_trolly"
  stateFlag20 = localValue3
  workingValue19 = cmgOperation3
  serverEventCall2(text20, stateFlag20, workingValue19)
  serverEventCall2 = CreateObjectNoOffset
  text20 = localValue3
  stateFlag20 = cmgOperation3.x
  workingValue19 = cmgOperation3.y
  stateFlag21 = cmgOperation3.z
  workingValue = true
  stateFlag = true
  stateFlag4 = true
  -- Beginner: result below is objectEntity.
  serverEventCall2 = serverEventCall2(text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4)
  text20 = CMG
  text20 = text20.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  text20 = text20()
  stateFlag20 = CMG
  stateFlag20 = stateFlag20.getPlayerCoords
  -- Beginner: result below is playerCoords.
  stateFlag20 = stateFlag20()
  workingValue19 = tCMG
  workingValue19 = workingValue19.setCanAnim
  stateFlag21 = false
  workingValue19(stateFlag21)
  workingValue19 = CMG
  workingValue19 = workingValue19.loadModel
  stateFlag21 = -944468481
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workingValue19(stateFlag21)
  workingValue19 = CMG
  workingValue19 = workingValue19.loadAnimDict
  stateFlag21 = "anim@heists@ornate_bank@grab_cash"
  -- Beginner: Load a GTA animation dictionary before using it.
  workingValue19(stateFlag21)
  workingValue19 = CMG
  workingValue19 = workingValue19.requestEntitySpawn
  stateFlag21 = "bankheist_lootbag"
  workingValue19(stateFlag21)
  workingValue19 = CreateObject
  stateFlag21 = -944468481
  workingValue = stateFlag20.x
  stateFlag = stateFlag20.y
  stateFlag4 = stateFlag20.z
  stateFlag6 = true
  stateFlag7 = true
  stateFlag8 = false
  -- Beginner: result below is objectEntity.
  workingValue19 = workingValue19(stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8)
  stateFlag21 = NetworkCreateSynchronisedScene
  workingValue = cmgOperation3.x
  stateFlag = cmgOperation3.y
  stateFlag4 = cmgOperation3.z
  stateFlag6 = text13.x
  stateFlag7 = text13.y
  stateFlag8 = text13.z
  number = 2
  stateFlag9 = false
  stateFlag10 = false
  number2 = 1065353216
  number3 = 0
  stateFlag11 = 1.3
  stateFlag21 = stateFlag21(workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3, stateFlag11)
  workingValue = NetworkAddPedToSynchronisedScene
  stateFlag = text20
  stateFlag4 = stateFlag21
  stateFlag6 = "anim@heists@ornate_bank@grab_cash"
  stateFlag7 = "intro"
  stateFlag8 = 1.5
  number = -4.0
  stateFlag9 = 1
  stateFlag10 = 16
  number2 = 1148846080
  number3 = 0
  workingValue(stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3)
  workingValue = NetworkAddEntityToSynchronisedScene
  stateFlag = workingValue19
  stateFlag4 = stateFlag21
  stateFlag6 = "anim@heists@ornate_bank@grab_cash"
  stateFlag7 = "bag_intro"
  stateFlag8 = 4.0
  number = -8.0
  stateFlag9 = 1
  workingValue(stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9)
  workingValue = SetPedComponentVariation
  stateFlag = text20
  stateFlag4 = 5
  stateFlag6 = 0
  stateFlag7 = 0
  stateFlag8 = 0
  workingValue(stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8)
  workingValue = NetworkStartSynchronisedScene
  stateFlag = stateFlag21
  workingValue(stateFlag)
  workingValue = CMG
  workingValue = workingValue.loadModel
  stateFlag = localValue2.config
  stateFlag = stateFlag.handModel
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workingValue(stateFlag)
  workingValue = CMG
  workingValue = workingValue.requestEntitySpawn
  stateFlag = "bankheist_hand_object"
  stateFlag4 = localValue2.config
  stateFlag4 = stateFlag4.handModel
  workingValue(stateFlag, stateFlag4)
  workingValue = CreateObject
  stateFlag = localValue2.config
  stateFlag = stateFlag.handModel
  stateFlag4 = stateFlag20.x
  stateFlag6 = stateFlag20.y
  stateFlag7 = stateFlag20.z
  stateFlag8 = true
  number = true
  stateFlag9 = false
  -- Beginner: result below is objectEntity.
  workingValue = workingValue(stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9)
  stateFlag = FreezeEntityPosition
  stateFlag4 = workingValue
  stateFlag6 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  stateFlag(stateFlag4, stateFlag6)
  stateFlag = SetEntityInvincible
  stateFlag4 = workingValue
  stateFlag6 = true
  stateFlag(stateFlag4, stateFlag6)
  stateFlag = SetEntityNoCollisionEntity
  stateFlag4 = workingValue
  stateFlag6 = text20
  stateFlag7 = false
  stateFlag(stateFlag4, stateFlag6, stateFlag7)
  stateFlag = SetEntityVisible
  stateFlag4 = workingValue
  stateFlag6 = false
  stateFlag7 = false
  stateFlag(stateFlag4, stateFlag6, stateFlag7)
  stateFlag = AttachEntityToEntity
  stateFlag4 = workingValue
  stateFlag6 = text20
  stateFlag7 = GetPedBoneIndex
  stateFlag8 = text20
  number = 60309
  stateFlag7 = stateFlag7(stateFlag8, number)
  stateFlag8 = 0.0
  number = 0.0
  stateFlag9 = 0.0
  stateFlag10 = 0.0
  number2 = 0.0
  number3 = 0.0
  stateFlag11 = false
  stateFlag12 = false
  stateFlag13 = false
  stateFlag14 = false
  number4 = 0
  stateFlag15 = true
  -- Beginner: Attach one entity to another entity.
  stateFlag(stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, number4, stateFlag15)
  stateFlag = SetModelAsNoLongerNeeded
  stateFlag4 = localValue2.config
  stateFlag4 = stateFlag4.handModel
  stateFlag(stateFlag4)
  stateFlag = Citizen
  stateFlag = stateFlag.CreateThread

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
  function stateFlag4()
    local localValue12, localValue22, text7, stateFlag18, text14
    localValue12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue12 = localValue12()
    while true do
      localValue22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue22 = localValue22()
      localValue22 = localValue22 - localValue12
      text7 = 37000
      if not (localValue22 < text7) then
        break
      end
      localValue22 = DisableControlAction
      text7 = 0
      stateFlag18 = 73
      text14 = true
      localValue22(text7, stateFlag18, text14)
      localValue22 = HasAnimEventFired
      text7 = text20
      stateFlag18 = 726137971
      localValue22 = localValue22(text7, stateFlag18)
      if localValue22 then
        localValue22 = IsEntityVisible
        text7 = workingValue
        localValue22 = localValue22(text7)
        if not localValue22 then
          localValue22 = SetEntityVisible
          text7 = workingValue
          stateFlag18 = true
          text14 = false
          localValue22(text7, stateFlag18, text14)
        end
      end
      localValue22 = HasAnimEventFired
      text7 = text20
      stateFlag18 = -1157608532
      localValue22 = localValue22(text7, stateFlag18)
      if localValue22 then
        localValue22 = IsEntityVisible
        text7 = workingValue
        localValue22 = localValue22(text7)
        if localValue22 then
          localValue22 = SetEntityVisible
          text7 = workingValue
          stateFlag18 = false
          text14 = false
          localValue22(text7, stateFlag18, text14)
        end
      end
      localValue22 = Citizen
      localValue22 = localValue22.Wait
      text7 = 0
      localValue22(text7)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  stateFlag(stateFlag4)
  stateFlag = NetworkCreateSynchronisedScene
  stateFlag4 = cmgOperation3.x
  stateFlag6 = cmgOperation3.y
  stateFlag7 = cmgOperation3.z
  stateFlag8 = text13.x
  number = text13.y
  stateFlag9 = text13.z
  stateFlag10 = 2
  number2 = false
  number3 = false
  stateFlag11 = 1065353216
  stateFlag12 = 0
  stateFlag13 = 1.3
  stateFlag = stateFlag(stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3, stateFlag11, stateFlag12, stateFlag13)
  stateFlag4 = NetworkAddPedToSynchronisedScene
  stateFlag6 = text20
  stateFlag7 = stateFlag
  stateFlag8 = "anim@heists@ornate_bank@grab_cash"
  number = "grab"
  stateFlag9 = 1.5
  stateFlag10 = -4.0
  number2 = 1
  number3 = 16
  stateFlag11 = 1148846080
  stateFlag12 = 0
  stateFlag4(stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3, stateFlag11, stateFlag12)
  stateFlag4 = NetworkAddEntityToSynchronisedScene
  stateFlag6 = workingValue19
  stateFlag7 = stateFlag
  stateFlag8 = "anim@heists@ornate_bank@grab_cash"
  number = "bag_grab"
  stateFlag9 = 4.0
  stateFlag10 = -8.0
  number2 = 1
  stateFlag4(stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2)
  stateFlag4 = NetworkAddEntityToSynchronisedScene
  stateFlag6 = serverEventCall2
  stateFlag7 = stateFlag
  stateFlag8 = "anim@heists@ornate_bank@grab_cash"
  number = "cart_cash_dissapear"
  stateFlag9 = 4.0
  stateFlag10 = -8.0
  number2 = 1
  stateFlag4(stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2)
  stateFlag4 = NetworkStartSynchronisedScene
  stateFlag6 = stateFlag
  stateFlag4(stateFlag6)
  stateFlag4 = Citizen
  stateFlag4 = stateFlag4.Wait
  stateFlag6 = 37000
  stateFlag4(stateFlag6)
  stateFlag4 = NetworkCreateSynchronisedScene
  stateFlag6 = cmgOperation3.x
  stateFlag7 = cmgOperation3.y
  stateFlag8 = cmgOperation3.z
  number = text13.x
  stateFlag9 = text13.y
  stateFlag10 = text13.z
  number2 = 2
  number3 = false
  stateFlag11 = false
  stateFlag12 = 1065353216
  stateFlag13 = 0
  stateFlag14 = 1.3
  stateFlag4 = stateFlag4(stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14)
  stateFlag6 = NetworkAddPedToSynchronisedScene
  stateFlag7 = text20
  stateFlag8 = stateFlag4
  number = "anim@heists@ornate_bank@grab_cash"
  stateFlag9 = "exit"
  stateFlag10 = 1.5
  number2 = -4.0
  number3 = 1
  stateFlag11 = 16
  stateFlag12 = 1148846080
  stateFlag13 = 0
  stateFlag6(stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3, stateFlag11, stateFlag12, stateFlag13)
  stateFlag6 = NetworkAddEntityToSynchronisedScene
  stateFlag7 = workingValue19
  stateFlag8 = stateFlag4
  number = "anim@heists@ornate_bank@grab_cash"
  stateFlag9 = "bag_exit"
  stateFlag10 = 4.0
  number2 = -8.0
  number3 = 1
  stateFlag6(stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3)
  stateFlag6 = NetworkStartSynchronisedScene
  stateFlag7 = stateFlag4
  stateFlag6(stateFlag7)
  stateFlag6 = DeleteEntity
  stateFlag7 = serverEventCall2
  -- Beginner: Delete a GTA entity.
  stateFlag6(stateFlag7)
  stateFlag6 = DeleteObject
  stateFlag7 = workingValue19
  stateFlag6(stateFlag7)
  stateFlag6 = DeleteObject
  stateFlag7 = workingValue
  stateFlag6(stateFlag7)
  stateFlag6 = SetModelAsNoLongerNeeded
  stateFlag7 = -944468481
  stateFlag6(stateFlag7)
  stateFlag6 = RemoveAnimDict
  stateFlag7 = "anim@heists@ornate_bank@grab_cash"
  stateFlag6(stateFlag7)
  stateFlag6 = tCMG
  stateFlag6 = stateFlag6.setCanAnim
  stateFlag7 = true
  stateFlag6(stateFlag7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8939f8d91f".
eventHandler5(text9, workingValue10)
eventHandler5 = RegisterNetEvent
text9 = "98e8823c20"
-- Beginner: this function handles network event "98e8823c20".

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19
  localValue2 = CMG
  localValue2 = localValue2.isPlayerInBankHeistSetup
  localValue2 = localValue2()
  if localValue2 then
    return
  end
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, cmgOperation3, text13 = localValue2(localValue3)
  for serverEventCall2, text20 in localValue2, localValue3, cmgOperation3, text13 do
    stateFlag20 = text2.trollies
    stateFlag20 = stateFlag20[serverEventCall2]
    if stateFlag20 then
      stateFlag20 = text2.trollies
      stateFlag20 = stateFlag20[serverEventCall2]
      stateFlag20.state = text20
    else
      stateFlag20 = text2.trollies
      workingValue19 = {}
      workingValue19.state = text20
      stateFlag20[serverEventCall2] = workingValue19
    end
  end
end
eventHandler5(text9, workingValue10)

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: none) ===
function eventHandler5()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = 10000.0
  localValue3 = -1
  cmgOperation3 = pairs
  text13 = cmgOperation.staffDoors
  cmgOperation3, text13, serverEventCall2, text20 = cmgOperation3(text13)
  for stateFlag20, workingValue19 in cmgOperation3, text13, serverEventCall2, text20 do
    stateFlag21 = workingValue19.position
    stateFlag21 = localValue1 - stateFlag21
    stateFlag21 = #stateFlag21
    if localValue2 > stateFlag21 then
      localValue2 = stateFlag21
      localValue3 = stateFlag20
    end
  end
  cmgOperation3 = localValue2
  text13 = localValue3
  return cmgOperation3, text13
end

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, cmgOperation3
  localValue1 = text2.state
  if "INACTIVE" == localValue1 then
    localValue1 = eventHandler5
    localValue1, localValue2 = localValue1()
    if localValue1 < 2.0 then
      localValue3 = eventHandler4
      cmgOperation3 = localValue2
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      localValue3(cmgOperation3)
    end
    localValue3 = table
    localValue3 = localValue3.count
    cmgOperation3 = text2.trollies
    -- Beginner: result below is count.
    localValue3 = localValue3(cmgOperation3)
    if localValue3 > 0 then
      localValue3 = workingValue9
      localValue3()
    end
  else
    localValue1 = text2.state
    if "DONE_THERMITE" == localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue1 = localValue1()
      localValue2 = cmgOperation.safeDoorButton
      localValue1 = localValue1 - localValue2
      localValue1 = #localValue1
      if localValue1 < 1.0 then
        localValue1 = workingValue6
        localValue1()
      end
    else
      localValue1 = text2.state
      if "PENDING_HACKING" == localValue1 then
        localValue1 = text2.hacking
        localValue1 = localValue1.scaleform
        if nil ~= localValue1 then
          localValue1 = stateFlag16
          localValue1()
        end
      else
        localValue1 = text2.state
        if "DONE_SAFE" == localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.getPlayerCoords
          -- Beginner: result below is playerCoords.
          localValue1 = localValue1()
          localValue2 = cmgOperation.vaultDoorHack
          localValue1 = localValue1 - localValue2
          localValue1 = #localValue1
          if localValue1 < 1.0 then
            localValue1 = text8
            localValue1()
          end
        end
      end
    end
  end
  localValue1 = text2.state
  if "INACTIVE" ~= localValue1 then
    localValue1 = text2.state
    if "PENDING_THERMITE" ~= localValue1 then
      localValue1 = eventHandler5
      localValue1 = localValue1()
      if localValue1 < 50.0 then
        localValue1 = workingValue8
        localValue1()
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number
  localValue1 = pairs
  localValue2 = cmgOperation.staffDoors
  localValue1, localValue2, localValue3, cmgOperation3 = localValue1(localValue2)
  for text13, serverEventCall2 in localValue1, localValue2, localValue3, cmgOperation3 do
    text20 = serverEventCall2.position
    stateFlag20 = GetClosestObjectOfType
    workingValue19 = text20.x
    stateFlag21 = text20.y
    workingValue = text20.z
    stateFlag = 5.0
    stateFlag4 = serverEventCall2.model
    stateFlag6 = false
    stateFlag7 = false
    stateFlag8 = false
    -- Beginner: result below is objectEntity.
    stateFlag20 = stateFlag20(workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8)
    if 0 == stateFlag20 then
      workingValue19 = GetClosestObjectOfType
      stateFlag21 = text20.x
      workingValue = text20.y
      stateFlag = text20.z
      stateFlag4 = 5.0
      stateFlag6 = serverEventCall2.staffDoorThermiteModel
      stateFlag7 = false
      stateFlag8 = false
      number = false
      -- Beginner: result below is objectEntity.
      workingValue19 = workingValue19(stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number)
      stateFlag20 = workingValue19
    end
    if 0 ~= stateFlag20 then
      workingValue19 = text2.state
      if "INACTIVE" ~= workingValue19 then
        workingValue19 = text2.state
        if "PENDING_THERMITE" ~= workingValue19 then
          goto continueAtStep60
        end
      end
      workingValue19 = FreezeEntityPosition
      stateFlag21 = stateFlag20
      workingValue = true
      -- Beginner: Freeze or unfreeze an entity in place.
      workingValue19(stateFlag21, workingValue)
      workingValue19 = GetEntityModel
      stateFlag21 = stateFlag20
      -- Beginner: result below is modelHash.
      workingValue19 = workingValue19(stateFlag21)
      stateFlag21 = cmgOperation.staffDoorThermiteModel
      if workingValue19 == stateFlag21 then
        workingValue19 = RemoveModelSwap
        stateFlag21 = text20.x
        workingValue = text20.y
        stateFlag = text20.z
        stateFlag4 = 5.0
        stateFlag6 = serverEventCall2.model
        stateFlag7 = cmgOperation.staffDoorThermiteModel
        stateFlag8 = false
        workingValue19(stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8)
        workingValue19 = text5
        stateFlag21 = "Removing model swap for staff door"
        workingValue19(stateFlag21)
        goto continueAtStep82
        ::continueAtStep60::
        workingValue19 = FreezeEntityPosition
        stateFlag21 = stateFlag20
        workingValue = false
        -- Beginner: Freeze or unfreeze an entity in place.
        workingValue19(stateFlag21, workingValue)
        workingValue19 = GetEntityModel
        stateFlag21 = stateFlag20
        -- Beginner: result below is modelHash.
        workingValue19 = workingValue19(stateFlag21)
        stateFlag21 = serverEventCall2.model
        if workingValue19 == stateFlag21 then
          workingValue19 = CreateModelSwap
          stateFlag21 = text20.x
          workingValue = text20.y
          stateFlag = text20.z
          stateFlag4 = 5.0
          stateFlag6 = serverEventCall2.model
          stateFlag7 = cmgOperation.staffDoorThermiteModel
          stateFlag8 = true
          workingValue19(stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8)
          workingValue19 = text5
          stateFlag21 = "Creating model swap for staff door"
          workingValue19(stateFlag21)
        end
      end
    end
    ::continueAtStep82::
  end
  localValue1 = pairs
  localValue2 = cmgOperation.lockedDoors
  localValue1, localValue2, localValue3, cmgOperation3 = localValue1(localValue2)
  for text13, serverEventCall2 in localValue1, localValue2, localValue3, cmgOperation3 do
    text20 = GetClosestObjectOfType
    stateFlag20 = serverEventCall2.position
    stateFlag20 = stateFlag20.x
    workingValue19 = serverEventCall2.position
    workingValue19 = workingValue19.y
    stateFlag21 = serverEventCall2.position
    stateFlag21 = stateFlag21.z
    workingValue = 5.0
    stateFlag = serverEventCall2.model
    stateFlag4 = false
    stateFlag6 = false
    stateFlag7 = false
    -- Beginner: result below is objectEntity.
    text20 = text20(stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7)
    if 0 ~= text20 then
      stateFlag20 = FreezeEntityPosition
      workingValue19 = text20
      stateFlag21 = text2.state
      stateFlag21 = "DONE_HACKING" ~= stateFlag21
      -- Beginner: Freeze or unfreeze an entity in place.
      stateFlag20(workingValue19, stateFlag21)
    end
  end
  localValue1 = GetClosestObjectOfType
  localValue2 = cmgOperation.safeDoor
  localValue2 = localValue2.x
  localValue3 = cmgOperation.safeDoor
  localValue3 = localValue3.y
  cmgOperation3 = cmgOperation.safeDoor
  cmgOperation3 = cmgOperation3.z
  text13 = 5.0
  serverEventCall2 = cmgOperation.safeDoorModel
  text20 = false
  stateFlag20 = false
  workingValue19 = false
  -- Beginner: result below is objectEntity.
  localValue1 = localValue1(localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19)
  localValue2 = DoesEntityExist
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue3 = FreezeEntityPosition
    cmgOperation3 = localValue1
    text13 = true
    localValue3(cmgOperation3, text13)
    localValue3 = text2.state
    if "DONE_SAFE" ~= localValue3 then
      localValue3 = text2.state
      if "PENDING_HACKING" ~= localValue3 then
        localValue3 = text2.state
        if "DONE_HACKING" ~= localValue3 then
          goto continueAtStep164
        end
      end
    end
    localValue3 = GetEntityHeading
    cmgOperation3 = localValue1
    -- Beginner: result below is heading.
    localValue3 = localValue3(cmgOperation3)
    if not (localValue3 <= 75.0) then
      cmgOperation3 = 320.0
      if not (localValue3 >= cmgOperation3) then
        goto continueAtStep182
      end
    end
    cmgOperation3 = SetEntityHeading
    text13 = localValue1
    serverEventCall2 = GetFrameTime
    serverEventCall2 = serverEventCall2()
    serverEventCall2 = 15.0 * serverEventCall2
    serverEventCall2 = localValue3 - serverEventCall2
    -- Beginner: Change the direction an entity is facing.
    cmgOperation3(text13, serverEventCall2)
    goto continueAtStep182
    ::continueAtStep164::
    localValue3 = GetEntityHeading
    cmgOperation3 = localValue1
    -- Beginner: result below is heading.
    localValue3 = localValue3(cmgOperation3)
    cmgOperation3 = 315.0
    if not (localValue3 >= cmgOperation3) then
      cmgOperation3 = 70.55
      if not (localValue3 <= cmgOperation3) then
        goto continueAtStep182
      end
    end
    cmgOperation3 = SetEntityHeading
    text13 = localValue1
    serverEventCall2 = GetFrameTime
    serverEventCall2 = serverEventCall2()
    serverEventCall2 = 10.0 * serverEventCall2
    serverEventCall2 = localValue3 + serverEventCall2
    cmgOperation3(text13, serverEventCall2)
  end
  ::continueAtStep182::
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20
  localValue1 = ipairs
  localValue2 = text2.alarms
  localValue1, localValue2, localValue3, cmgOperation3 = localValue1(localValue2)
  for text13, serverEventCall2 in localValue1, localValue2, localValue3, cmgOperation3 do
    text20 = StopSound
    stateFlag20 = serverEventCall2
    text20(stateFlag20)
    text20 = ReleaseSoundId
    stateFlag20 = serverEventCall2
    text20(stateFlag20)
  end
  text2.alarms = nil
  text2.alarmLastFlashed = nil
  localValue1 = ReleaseNamedScriptAudioBank
  localValue2 = "ALARM_BELL_02"
  localValue1(localValue2)
  localValue1 = text5
  localValue2 = "Removing alarm audio"
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number
  localValue1 = text2.alarms
  if localValue1 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    localValue2 = text2.alarmLastFlashed
    localValue1 = localValue1 - localValue2
    localValue2 = 500
    if localValue1 > localValue2 then
      localValue1 = ipairs
      localValue2 = cmgOperation.alarms
      localValue1, localValue2, localValue3, cmgOperation3 = localValue1(localValue2)
      for text13, serverEventCall2 in localValue1, localValue2, localValue3, cmgOperation3 do
        text20 = DrawLightWithRange
        stateFlag20 = serverEventCall2.x
        stateFlag20 = stateFlag20 - 0.5
        workingValue19 = serverEventCall2.y
        workingValue19 = workingValue19 - 0.5
        stateFlag21 = serverEventCall2.z
        workingValue = 255
        stateFlag = 0
        stateFlag4 = 0
        stateFlag6 = 5.0
        stateFlag7 = 5.0
        text20(stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7)
        text20 = DrawLightWithRange
        stateFlag20 = serverEventCall2.x
        stateFlag20 = stateFlag20 + 0.5
        workingValue19 = serverEventCall2.y
        workingValue19 = workingValue19 + 0.5
        stateFlag21 = serverEventCall2.z
        workingValue = 255
        stateFlag = 0
        stateFlag4 = 0
        stateFlag6 = 5.0
        stateFlag7 = 5.0
        text20(stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7)
        text20 = DrawLightWithRange
        stateFlag20 = serverEventCall2.x
        workingValue19 = serverEventCall2.y
        stateFlag21 = serverEventCall2.z
        workingValue = 255
        stateFlag = 0
        stateFlag4 = 0
        stateFlag6 = 5.0
        stateFlag7 = 5.0
        text20(stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7)
      end
      localValue1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue1 = localValue1()
      text2.alarmLastFlashed = localValue1
    end
  else
    localValue1 = RequestScriptAudioBank
    localValue2 = "ALARM_BELL_02"
    localValue3 = false
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = {}
      text2.alarms = localValue1
      localValue1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue1 = localValue1()
      text2.alarmLastFlashed = localValue1
      localValue1 = ipairs
      localValue2 = cmgOperation.alarms
      localValue1, localValue2, localValue3, cmgOperation3 = localValue1(localValue2)
      for text13, serverEventCall2 in localValue1, localValue2, localValue3, cmgOperation3 do
        text20 = GetSoundId
        -- Beginner: result below is soundHandle.
        text20 = text20()
        stateFlag20 = PlaySoundFromCoord
        workingValue19 = text20
        stateFlag21 = "Bell_02"
        workingValue = serverEventCall2.x
        stateFlag = serverEventCall2.y
        stateFlag4 = serverEventCall2.z
        stateFlag6 = "ALARMS_SOUNDSET"
        stateFlag7 = false
        stateFlag8 = 0
        number = false
        stateFlag20(workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number)
        stateFlag20 = table
        stateFlag20 = stateFlag20.insert
        workingValue19 = text2.alarms
        stateFlag21 = text20
        stateFlag20(workingValue19, stateFlag21)
      end
      localValue1 = text5
      localValue2 = "Creating alarm audio"
      localValue1(localValue2)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10
  localValue1 = text2.gases
  if localValue1 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    localValue2 = text2.lastHurt
    localValue1 = localValue1 - localValue2
    localValue2 = 150
    if localValue1 > localValue2 then
      localValue1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      localValue2 = SetEntityHealth
      localValue3 = localValue1
      cmgOperation3 = GetEntityHealth
      text13 = localValue1
      -- Beginner: result below is health.
      cmgOperation3 = cmgOperation3(text13)
      cmgOperation3 = cmgOperation3 - 1
      localValue2(localValue3, cmgOperation3)
      localValue2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue2 = localValue2()
      text2.lastHurt = localValue2
    end
  else
    localValue1 = CMG
    localValue1 = localValue1.loadPtfx
    localValue2 = "core"
    localValue1(localValue2)
    localValue1 = {}
    text2.gases = localValue1
    localValue1 = ipairs
    localValue2 = cmgOperation.gases
    localValue1, localValue2, localValue3, cmgOperation3 = localValue1(localValue2)
    for text13, serverEventCall2 in localValue1, localValue2, localValue3, cmgOperation3 do
      text20 = UseParticleFxAsset
      stateFlag20 = "core"
      text20(stateFlag20)
      text20 = StartParticleFxLoopedAtCoord
      stateFlag20 = "exp_grd_grenade_smoke"
      workingValue19 = serverEventCall2.position
      workingValue19 = workingValue19.x
      stateFlag21 = serverEventCall2.position
      stateFlag21 = stateFlag21.y
      workingValue = serverEventCall2.position
      workingValue = workingValue.z
      stateFlag = 0.0
      stateFlag4 = 0.0
      stateFlag6 = 0.0
      stateFlag7 = serverEventCall2.scale
      stateFlag8 = false
      number = false
      stateFlag9 = false
      stateFlag10 = false
      text20 = text20(stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10)
      stateFlag20 = table
      stateFlag20 = stateFlag20.insert
      workingValue19 = text2.gases
      stateFlag21 = text20
      stateFlag20(workingValue19, stateFlag21)
    end
    localValue1 = RemoveNamedPtfxAsset
    localValue2 = "core"
    localValue1(localValue2)
    localValue1 = text5
    localValue2 = "Creating gas particle"
    localValue1(localValue2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19
  localValue1 = ipairs
  localValue2 = text2.gases
  localValue1, localValue2, localValue3, cmgOperation3 = localValue1(localValue2)
  for text13, serverEventCall2 in localValue1, localValue2, localValue3, cmgOperation3 do
    text20 = StopParticleFxLooped
    stateFlag20 = serverEventCall2
    workingValue19 = false
    text20(stateFlag20, workingValue19)
  end
  text2.gases = nil
  text2.lastHurt = 0
  localValue1 = RemoveNamedPtfxAsset
  localValue2 = "core"
  localValue1(localValue2)
  localValue1 = text5
  localValue2 = "Removing gas particle"
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3, cmgOperation3
  localValue1 = GetRoomKeyFromEntity
  localValue2 = PlayerPedId
  localValue2, localValue3, cmgOperation3 = localValue2()
  localValue1 = localValue1(localValue2, localValue3, cmgOperation3)
  localValue1 = 0 ~= localValue1
  localValue2 = eventHandler5
  localValue2 = localValue2()
  localValue3 = 150.0
  localValue3 = localValue2 < localValue3
  text3 = localValue3
  localValue3 = localValue2 < 60.0 and localValue3
  rageUiOperation2 = localValue3
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  localValue3 = localValue3.z
  localValue3 = localValue3 < 102.0 and localValue3
  text4 = localValue3
  localValue3 = CMG
  localValue3 = localValue3.isPlayerInBankHeistSetup
  localValue3 = localValue3()
  if localValue3 then
    localValue3 = text2.state
    if "INACTIVE" ~= localValue3 then
      text2.state = "INACTIVE"
      localValue3 = text5
      cmgOperation3 = "Setting state to INACTIVE as in setup"
      localValue3(cmgOperation3)
    end
  else
    localValue3 = text9
    localValue3()
  end
  localValue3 = rageUiOperation2
  if localValue3 then
    localValue3 = workingValue10
    localValue3()
  end
  localValue3 = text2.state
  if "GAS_VAULT" == localValue3 then
    localValue3 = text4
    if localValue3 then
      goto continueAtStep67
    end
  end
  localValue3 = text2.gases
  if localValue3 then
    localValue3 = workingValue14
    localValue3()
    goto continueAtStep69
    ::continueAtStep67::
    localValue3 = workingValue13
    localValue3()
  end
  ::continueAtStep69::
  localValue3 = text2.state
  if "INACTIVE" ~= localValue3 then
    localValue3 = text3
    if localValue3 then
      localValue3 = text2.alarmDisabled
      if not localValue3 then
        goto continueAtStep84
      end
    end
  end
  localValue3 = text2.alarms
  if localValue3 then
    localValue3 = workingValue11
    localValue3()
    goto continueAtStep86
    ::continueAtStep84::
    localValue3 = workingValue12
    localValue3()
  end
  ::continueAtStep86::
end
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.createThreadOnTick
text11 = workingValue15
text12 = "Bank Heist"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation5(text11, text12)
cmgOperation5 = RegisterNetEvent
text11 = "dd054c89ec"
-- Beginner: this function handles network event "dd054c89ec".

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local localValue2
  localValue2 = CMG
  localValue2 = localValue2.isPlayerInBankHeistSetup
  localValue2 = localValue2()
  if localValue2 then
    return
  end
  text2.state = localValue1
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  text2.lastStateChange = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dd054c89ec".
cmgOperation5(text11, text12)
cmgOperation5 = RegisterNetEvent
text11 = "40cac5cefd"
-- Beginner: this function handles network event "40cac5cefd".

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14
  localValue2 = CMG
  localValue2 = localValue2.isPlayerInBankHeistSetup
  localValue2 = localValue2()
  if localValue2 then
    return
  end
  localValue2 = tCMG
  localValue2 = localValue2.setCanAnim
  localValue3 = false
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.setPlayerCombatTimer
  localValue3 = 300
  cmgOperation3 = false
  localValue2(localValue3, cmgOperation3)
  localValue2 = CMG
  localValue2 = localValue2.loadAnimDict
  localValue3 = "anim@heists@ornate_bank@thermal_charge"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = "hei_p_m_bag_var22_arm_s"
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = "hei_prop_heist_thermite"
  localValue2(localValue3)
  localValue2 = cmgOperation.staffDoors
  localValue2 = localValue2[localValue1]
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  cmgOperation3 = SetEntityHeading
  text13 = localValue3
  serverEventCall2 = localValue2.thermiteHeading
  -- Beginner: Change the direction an entity is facing.
  cmgOperation3(text13, serverEventCall2)
  cmgOperation3 = GetEntityRotation
  text13 = localValue3
  serverEventCall2 = 2
  cmgOperation3 = cmgOperation3(text13, serverEventCall2)
  text13 = localValue2.thermitePosition
  serverEventCall2 = NetworkCreateSynchronisedScene
  text20 = text13.x
  stateFlag20 = text13.y
  workingValue19 = text13.z
  stateFlag21 = cmgOperation3.x
  workingValue = cmgOperation3.y
  stateFlag = cmgOperation3.z
  stateFlag4 = 2
  stateFlag6 = false
  stateFlag7 = false
  stateFlag8 = 1065353216
  number = 0
  stateFlag9 = 1.3
  serverEventCall2 = serverEventCall2(text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9)
  text20 = CMG
  text20 = text20.requestEntitySpawn
  stateFlag20 = "bankheist_thermite_bag"
  workingValue19 = localValue1
  text20(stateFlag20, workingValue19)
  text20 = CreateObject
  stateFlag20 = -944468481
  workingValue19 = text13.x
  stateFlag21 = text13.y
  workingValue = text13.z
  stateFlag = true
  stateFlag4 = true
  stateFlag6 = false
  -- Beginner: result below is objectEntity.
  text20 = text20(stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6)
  stateFlag20 = SetEntityCollision
  workingValue19 = text20
  stateFlag21 = false
  workingValue = true
  stateFlag20(workingValue19, stateFlag21, workingValue)
  stateFlag20 = NetworkAddPedToSynchronisedScene
  workingValue19 = localValue3
  stateFlag21 = serverEventCall2
  workingValue = "anim@heists@ornate_bank@thermal_charge"
  stateFlag = "thermal_charge"
  stateFlag4 = 1.5
  stateFlag6 = -4.0
  stateFlag7 = 1
  stateFlag8 = 16
  number = 1148846080
  stateFlag9 = 0
  stateFlag20(workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9)
  stateFlag20 = NetworkAddEntityToSynchronisedScene
  workingValue19 = text20
  stateFlag21 = serverEventCall2
  workingValue = "anim@heists@ornate_bank@thermal_charge"
  stateFlag = "bag_thermal_charge"
  stateFlag4 = 4.0
  stateFlag6 = -8.0
  stateFlag7 = 1
  stateFlag20(workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7)
  stateFlag20 = NetworkStartSynchronisedScene
  workingValue19 = serverEventCall2
  stateFlag20(workingValue19)
  stateFlag20 = Citizen
  stateFlag20 = stateFlag20.Wait
  workingValue19 = 1500
  stateFlag20(workingValue19)
  stateFlag20 = CMG
  stateFlag20 = stateFlag20.getPlayerCoords
  -- Beginner: result below is playerCoords.
  stateFlag20 = stateFlag20()
  workingValue19 = CMG
  workingValue19 = workingValue19.requestEntitySpawn
  stateFlag21 = "bankheist_thermite_object"
  workingValue = localValue1
  workingValue19(stateFlag21, workingValue)
  workingValue19 = CreateObject
  stateFlag21 = 865563579
  workingValue = stateFlag20.x
  stateFlag = stateFlag20.y
  stateFlag4 = stateFlag20.z
  stateFlag4 = stateFlag4 + 0.2
  stateFlag6 = true
  stateFlag7 = true
  stateFlag8 = true
  -- Beginner: result below is objectEntity.
  workingValue19 = workingValue19(stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8)
  stateFlag21 = SetEntityCollision
  workingValue = workingValue19
  stateFlag = false
  stateFlag4 = false
  stateFlag21(workingValue, stateFlag, stateFlag4)
  stateFlag21 = SetEntityCompletelyDisableCollision
  workingValue = workingValue19
  stateFlag = false
  stateFlag4 = false
  stateFlag21(workingValue, stateFlag, stateFlag4)
  stateFlag21 = AttachEntityToEntity
  workingValue = workingValue19
  stateFlag = localValue3
  stateFlag4 = GetPedBoneIndex
  stateFlag6 = localValue3
  stateFlag7 = 28422
  stateFlag4 = stateFlag4(stateFlag6, stateFlag7)
  stateFlag6 = 0
  stateFlag7 = 0
  stateFlag8 = 0
  number = 0
  stateFlag9 = 0
  stateFlag10 = 200.0
  number2 = true
  number3 = true
  stateFlag11 = false
  stateFlag12 = true
  stateFlag13 = 1
  stateFlag14 = true
  -- Beginner: Attach one entity to another entity.
  stateFlag21(workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14)
  stateFlag21 = Citizen
  stateFlag21 = stateFlag21.Wait
  workingValue = 4000
  stateFlag21(workingValue)
  stateFlag21 = DeleteEntity
  workingValue = text20
  -- Beginner: Delete a GTA entity.
  stateFlag21(workingValue)
  stateFlag21 = SetPedComponentVariation
  workingValue = localValue3
  stateFlag = 5
  stateFlag4 = 45
  stateFlag6 = 0
  stateFlag7 = 0
  stateFlag21(workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7)
  stateFlag21 = DetachEntity
  workingValue = workingValue19
  stateFlag = true
  stateFlag4 = true
  stateFlag21(workingValue, stateFlag, stateFlag4)
  stateFlag21 = FreezeEntityPosition
  workingValue = workingValue19
  stateFlag = true
  -- Beginner: Freeze or unfreeze an entity in place.
  stateFlag21(workingValue, stateFlag)
  stateFlag21 = SetEntityCollision
  workingValue = workingValue19
  stateFlag = false
  stateFlag4 = false
  stateFlag21(workingValue, stateFlag, stateFlag4)
  stateFlag21 = SetEntityCompletelyDisableCollision
  workingValue = workingValue19
  stateFlag = false
  stateFlag4 = false
  stateFlag21(workingValue, stateFlag, stateFlag4)
  stateFlag21 = NetworkStopSynchronisedScene
  workingValue = serverEventCall2
  stateFlag21(workingValue)
  stateFlag21 = tCMG
  stateFlag21 = stateFlag21.setCanAnim
  workingValue = true
  stateFlag21(workingValue)
  stateFlag21 = TaskPlayAnim
  workingValue = localValue3
  stateFlag = "anim@heists@ornate_bank@thermal_charge"
  stateFlag4 = "cover_eyes_intro"
  stateFlag6 = 8.0
  stateFlag7 = 8.0
  stateFlag8 = 1000
  number = 36
  stateFlag9 = 1
  stateFlag10 = false
  number2 = false
  number3 = false
  -- Beginner: Play an animation on a ped.
  stateFlag21(workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3)
  stateFlag21 = TaskPlayAnim
  workingValue = localValue3
  stateFlag = "anim@heists@ornate_bank@thermal_charge"
  stateFlag4 = "cover_eyes_loop"
  stateFlag6 = 8.0
  stateFlag7 = 8.0
  stateFlag8 = 10000
  number = 49
  stateFlag9 = 1
  stateFlag10 = false
  number2 = false
  number3 = false
  stateFlag21(workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, stateFlag10, number2, number3)
  stateFlag21 = Citizen
  stateFlag21 = stateFlag21.Wait
  workingValue = 10000
  stateFlag21(workingValue)
  stateFlag21 = ClearPedTasks
  workingValue = localValue3
  stateFlag21(workingValue)
  stateFlag21 = DeleteEntity
  workingValue = workingValue19
  -- Beginner: Delete a GTA entity.
  stateFlag21(workingValue)
  stateFlag21 = SetModelAsNoLongerNeeded
  workingValue = "hei_prop_heist_thermite"
  stateFlag21(workingValue)
  stateFlag21 = SetModelAsNoLongerNeeded
  workingValue = "hei_p_m_bag_var22_arm_s"
  stateFlag21(workingValue)
  stateFlag21 = RemoveAnimDict
  workingValue = "anim@heists@ornate_bank@thermal_charge"
  stateFlag21(workingValue)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "40cac5cefd".
cmgOperation5(text11, text12)
cmgOperation5 = RegisterNetEvent
text11 = "1cbffefd47"
-- Beginner: this function handles network event "1cbffefd47".

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20
  localValue1 = CMG
  localValue1 = localValue1.isPlayerInBankHeistSetup
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.loadPtfx
  localValue2 = "scr_ornate_heist"
  localValue1(localValue2)
  localValue1 = pairs
  localValue2 = cmgOperation.staffDoors
  localValue1, localValue2, localValue3, cmgOperation3 = localValue1(localValue2)
  for text13, serverEventCall2 in localValue1, localValue2, localValue3, cmgOperation3 do
    text20 = Citizen
    text20 = text20.CreateThread

    -- === HELPER FUNCTION (decompiler name: stateFlag20; parameters: none) ===
    function stateFlag20()
      local localValue12, localValue22, text7, stateFlag18, text14, stateFlag19, rageUiOperation8, number12, text21, dataCollection, text, stateFlag2, stateFlag5
      localValue12 = UseParticleFxAsset
      localValue22 = "scr_ornate_heist"
      localValue12(localValue22)
      localValue12 = StartParticleFxLoopedAtCoord
      localValue22 = "scr_heist_ornate_thermal_burn"
      text7 = serverEventCall2.thermiteParticle
      text7 = text7.x
      stateFlag18 = serverEventCall2.thermiteParticle
      stateFlag18 = stateFlag18.y
      text14 = serverEventCall2.thermiteParticle
      text14 = text14.z
      stateFlag19 = 0.0
      rageUiOperation8 = 0.0
      number12 = 0.0
      text21 = 1.0
      dataCollection = false
      text = false
      stateFlag2 = false
      stateFlag5 = false
      localValue12 = localValue12(localValue22, text7, stateFlag18, text14, stateFlag19, rageUiOperation8, number12, text21, dataCollection, text, stateFlag2, stateFlag5)
      localValue22 = Citizen
      localValue22 = localValue22.Wait
      text7 = 10000
      localValue22(text7)
      localValue22 = StopParticleFxLooped
      text7 = localValue12
      stateFlag18 = false
      localValue22(text7, stateFlag18)
      localValue22 = RemoveNamedPtfxAsset
      text7 = "scr_ornate_heist"
      localValue22(text7)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    text20(stateFlag20)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1cbffefd47".
cmgOperation5(text11, text12)
cmgOperation5 = AddEventHandler
text11 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local localValue2, localValue3, cmgOperation3, text13
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 == localValue1 then
    localValue2 = number11
    if localValue2 then
      localValue2 = number11.stages
      localValue3 = number11.stageIndex
      localValue2 = localValue2[localValue3]
      localValue3 = localValue2.clean
      if localValue3 then
        localValue3 = localValue2.clean
        cmgOperation3 = number11.info
        localValue3(cmgOperation3)
      end
      localValue3 = number11.finish
      if localValue3 then
        localValue3 = number11.finish
        cmgOperation3 = number11.info
        localValue3(cmgOperation3)
      end
    end
  end
  localValue2 = workingValue9
  localValue2()
  localValue2 = SetPlayerControl
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  cmgOperation3 = true
  text13 = 0
  localValue2(localValue3, cmgOperation3, text13)
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation5(text11, text12)
cmgOperation5 = RMenu
cmgOperation5 = cmgOperation5.Add
text11 = "sellBankHeistItems"
text12 = "main"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateMenu
text16 = ""
backgroundThread = "~b~Sell Stolen Bank Items"
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuWidth
rageUiOperation6 = rageUiOperation6()
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuHeight
rageUiOperation7 = rageUiOperation7()
text17 = "cmg_blackmarket"
text18 = "cmg_blackmarket"
rageUiOperation5, text16, backgroundThread, rageUiOperation6, rageUiOperation7, text17, text18 = rageUiOperation5(text16, backgroundThread, rageUiOperation6, rageUiOperation7, text17, text18)
cmgOperation5(text11, text12, rageUiOperation5, text16, backgroundThread, rageUiOperation6, rageUiOperation7, text17, text18)
cmgOperation5 = RageUI
cmgOperation5 = cmgOperation5.CreateWhile
text11 = 1.0
text12 = RMenu
rageUiOperation5 = text12
text12 = text12.Get
text16 = "sellBankHeistItems"
backgroundThread = "main"
-- Beginner: result below is menu.
text12 = text12(rageUiOperation5, text16, backgroundThread)
rageUiOperation5 = nil

-- === HELPER FUNCTION (decompiler name: text16; parameters: none) ===
function text16()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  cmgOperation3 = "sellBankHeistItems"
  text13 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, cmgOperation3, text13)
  localValue3 = true
  cmgOperation3 = false
  text13 = true

  -- === HELPER FUNCTION: serverEventCall2() ===
  function serverEventCall2()
    local localValue12, localValue22, text7, stateFlag18, text14, stateFlag19, rageUiOperation8, number12, text21, dataCollection, text, stateFlag2, stateFlag5
    localValue12 = pairs
    localValue22 = cmgOperation.sellableItems
    localValue12, localValue22, text7, stateFlag18 = localValue12(localValue22)
    for text14, stateFlag19 in localValue12, localValue22, text7, stateFlag18 do
      rageUiOperation8 = RageUI
      rageUiOperation8 = rageUiOperation8.ButtonWithStyle
      number12 = text14
      text21 = ""
      dataCollection = {}
      text = "\194\163"
      stateFlag2 = getMoneyStringFormatted
      stateFlag5 = cmgOperation.payouts
      stateFlag5 = stateFlag5[stateFlag19]
      stateFlag2 = stateFlag2(stateFlag5)
      text = text .. stateFlag2
      dataCollection.RightLabel = text
      text = true

      -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue13, localValue23, localValue32) ===
      function stateFlag2(localValue13, localValue23, localValue32)
        local cmgOperation4, text15, text19
        if localValue32 then
          cmgOperation4 = TriggerServerEvent
          text15 = "5e35771e2b"
          text19 = stateFlag19
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5e35771e2b".
          cmgOperation4(text15, text19)
        end
      end
      stateFlag5 = nil
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation8(number12, text21, dataCollection, text, stateFlag2, stateFlag5)
    end
  end

  -- === HELPER FUNCTION (decompiler name: text20; parameters: none) ===
  function text20()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20)
end
cmgOperation5(text11, text12, rageUiOperation5, text16)

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, cmgOperation3, text13
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  cmgOperation3 = "sellBankHeistItems"
  text13 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, cmgOperation3, text13)
  localValue3 = true
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3, cmgOperation3, text13
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  cmgOperation3 = "sellBankHeistItems"
  text13 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, cmgOperation3, text13)
  localValue3 = false
  localValue1(localValue2, localValue3)
end
text12 = 0

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: none) ===
function rageUiOperation5()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = cmgOperation.safeTerminal
  localValue2 = localValue2.model
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue1(localValue2)
  localValue1 = CreateObjectNoOffset
  localValue2 = cmgOperation.safeTerminal
  localValue2 = localValue2.model
  localValue3 = cmgOperation.safeTerminal
  localValue3 = localValue3.position
  localValue3 = localValue3.x
  cmgOperation3 = cmgOperation.safeTerminal
  cmgOperation3 = cmgOperation3.position
  cmgOperation3 = cmgOperation3.y
  text13 = cmgOperation.safeTerminal
  text13 = text13.position
  text13 = text13.z
  serverEventCall2 = false
  text20 = false
  stateFlag20 = false
  -- Beginner: result below is objectEntity.
  localValue1 = localValue1(localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20)
  text12 = localValue1
  localValue1 = SetEntityHeading
  localValue2 = text12
  localValue3 = cmgOperation.safeTerminal
  localValue3 = localValue3.position
  localValue3 = localValue3.w
  -- Beginner: Change the direction an entity is facing.
  localValue1(localValue2, localValue3)
  localValue1 = FreezeEntityPosition
  localValue2 = text12
  localValue3 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue1(localValue2, localValue3)
  localValue1 = SetModelAsNoLongerNeeded
  localValue2 = cmgOperation.safeTerminal
  localValue2 = localValue2.model
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: text16; parameters: none) ===
function text16()
  local localValue1, localValue2
  localValue1 = DeleteEntity
  localValue2 = text12
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = 0
  text12 = localValue1
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiOperation6; parameters: none) ===
function rageUiOperation6()
  local localValue1, localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8
  localValue1 = tCMG
  localValue1 = localValue1.addMarker
  localValue2 = cmgOperation.sellLocation
  localValue2 = localValue2.x
  localValue3 = cmgOperation.sellLocation
  localValue3 = localValue3.y
  cmgOperation3 = cmgOperation.sellLocation
  cmgOperation3 = cmgOperation3.z
  cmgOperation3 = cmgOperation3 - 0.9
  text13 = 0.8
  serverEventCall2 = 0.8
  text20 = 0.8
  stateFlag20 = 200
  workingValue19 = 0
  stateFlag21 = 0
  workingValue = 255
  stateFlag = 30
  stateFlag4 = 27
  stateFlag6 = false
  stateFlag7 = false
  stateFlag8 = false
  -- Beginner: Create a world marker.
  localValue1(localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21, workingValue, stateFlag, stateFlag4, stateFlag6, stateFlag7, stateFlag8)
  localValue1 = tCMG
  localValue1 = localValue1.addBlip
  localValue2 = cmgOperation.sellLocation
  localValue2 = localValue2.x
  localValue3 = cmgOperation.sellLocation
  localValue3 = localValue3.y
  cmgOperation3 = cmgOperation.sellLocation
  cmgOperation3 = cmgOperation3.z
  text13 = 618
  serverEventCall2 = 46
  text20 = "Sell Stolen Bank Items"
  localValue1 = localValue1(localValue2, localValue3, cmgOperation3, text13, serverEventCall2, text20)
  localValue2 = CMG
  localValue2 = localValue2.addBlipContext
  localValue3 = "Civilian"
  cmgOperation3 = localValue1
  localValue2(localValue3, cmgOperation3)
  localValue2 = CMG
  localValue2 = localValue2.createArea
  localValue3 = "sellBankHeistItems"
  cmgOperation3 = cmgOperation.sellLocation
  text13 = 2.0
  serverEventCall2 = 5.0
  text20 = cmgOperation5
  stateFlag20 = text11

  -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
  function workingValue19()
    local localValue12, localValue22
  end
  stateFlag21 = {}
  -- Beginner: Create an interaction area around a world position.
  localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21)
  localValue2 = CMG
  localValue2 = localValue2.createArea
  localValue3 = "bankheist_fakeTerminalObject"
  cmgOperation3 = cmgOperation.safeTerminal
  cmgOperation3 = cmgOperation3.position
  cmgOperation3 = cmgOperation3.xyz
  text13 = 50.0
  serverEventCall2 = 20.0
  text20 = rageUiOperation5
  stateFlag20 = text16

  -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
  function workingValue19()
    local localValue12, localValue22
  end
  stateFlag21 = {}
  localValue2(localValue3, cmgOperation3, text13, serverEventCall2, text20, stateFlag20, workingValue19, stateFlag21)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(rageUiOperation6)
