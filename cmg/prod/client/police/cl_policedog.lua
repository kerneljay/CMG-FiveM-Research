--[[
    LEVEL 1 BEGINNER GUIDE — Policedog
    =======================================

    File: cmg/prod/client/police/cl_policedog.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Policedog feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 47
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
local stateFlag, dataCollection6, dataCollection7, rageUiOperation2, dataCollection8, dataCollection9, rageUiOperation3, rageUiOperation4, text10, text11, workingValue, dataCollection, workingValue2, workingValue3, workingValue4, workingValue5, dataCollection3, dataCollection4, dataCollection5, text3, workingValue7, workingValue9, eventHandler, eventHandler2, text4, rageUiOperation, eventHandler3, workingValue11, workingValue13, text5, text7
stateFlag = RMenu
stateFlag = stateFlag.Add
dataCollection6 = "policedog"
dataCollection7 = "main"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
dataCollection8 = "Dog Support Unit"
dataCollection9 = "~b~Dog Management"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text10, text11, workingValue, dataCollection, workingValue2, workingValue3, workingValue4, workingValue5, dataCollection3, dataCollection4, dataCollection5, text3, workingValue7, workingValue9, eventHandler, eventHandler2, text4, rageUiOperation, eventHandler3, workingValue11, workingValue13, text5, text7 = rageUiOperation4()
rageUiOperation2, dataCollection8, dataCollection9, rageUiOperation3, rageUiOperation4, text10, text11, workingValue, dataCollection, workingValue2, workingValue3, workingValue4, workingValue5, dataCollection3, dataCollection4, dataCollection5, text3, workingValue7, workingValue9, eventHandler, eventHandler2, text4, rageUiOperation, eventHandler3, workingValue11, workingValue13, text5, text7 = rageUiOperation2(dataCollection8, dataCollection9, rageUiOperation3, rageUiOperation4, text10, text11, workingValue, dataCollection, workingValue2, workingValue3, workingValue4, workingValue5, dataCollection3, dataCollection4, dataCollection5, text3, workingValue7, workingValue9, eventHandler, eventHandler2, text4, rageUiOperation, eventHandler3, workingValue11, workingValue13, text5, text7)
stateFlag(dataCollection6, dataCollection7, rageUiOperation2, dataCollection8, dataCollection9, rageUiOperation3, rageUiOperation4, text10, text11, workingValue, dataCollection, workingValue2, workingValue3, workingValue4, workingValue5, dataCollection3, dataCollection4, dataCollection5, text3, workingValue7, workingValue9, eventHandler, eventHandler2, text4, rageUiOperation, eventHandler3, workingValue11, workingValue13, text5, text7)
stateFlag = false
dataCollection6 = {}
dataCollection6.Follow = 1
dataCollection6.Stay = 2
dataCollection6.Attack = 3
dataCollection6.Sit = 4
dataCollection6.Trick = 5
dataCollection6.SearchNearby = 6
dataCollection6.Indicate = 7
dataCollection6.SearchVehicle = 8
dataCollection7 = {}
dataCollection7.Success = 1
dataCollection7.Error = 2
dataCollection7.Alert = 3
dataCollection7.Info = 4
dataCollection7.Unknown = 5
rageUiOperation2 = {}
rageUiOperation2.active = false
rageUiOperation2.handle = 0
dataCollection8 = dataCollection6.Follow
rageUiOperation2.currentAction = dataCollection8
rageUiOperation2.insideVehicle = false
rageUiOperation2.insideVehicleHandle = 0
rageUiOperation2.isAttacking = false
dataCollection8 = {}
dataCollection9 = {}
dataCollection9.dict = "creatures@rottweiler@amb@world_dog_sitting@base"
rageUiOperation3 = {}
rageUiOperation3.base = "base"
dataCollection9.anims = rageUiOperation3
dataCollection8.Sit = dataCollection9
dataCollection9 = {}
dataCollection9.dict = "creatures@dog@move"
rageUiOperation3 = {}
rageUiOperation3.base = "beg_enter"
dataCollection9.anims = rageUiOperation3
dataCollection8.TrickBeg = dataCollection9
dataCollection9 = {}
dataCollection9.dict = "creatures@rottweiler@tricks@"
rageUiOperation3 = {}
rageUiOperation3.base = "paw_right_loop"
dataCollection9.anims = rageUiOperation3
dataCollection8.TrickPawRight = dataCollection9
dataCollection9 = RegisterKeyMapping
rageUiOperation3 = "k9attack"
rageUiOperation4 = "Police Dog Attack"
text10 = "keyboard"
text11 = "INSERT"
-- Beginner: Bind a command to a keyboard/controller key.
dataCollection9(rageUiOperation3, rageUiOperation4, text10, text11)
dataCollection9 = TriggerEvent
rageUiOperation3 = "chat:addSuggestion"
rageUiOperation4 = "/k9"
text10 = "Manage your Police Dog"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
dataCollection9(rageUiOperation3, rageUiOperation4, text10)
dataCollection9 = TriggerEvent
rageUiOperation3 = "chat:addSuggestion"
rageUiOperation4 = "/k9attack"
text10 = "Start a police dog attack"
dataCollection9(rageUiOperation3, rageUiOperation4, text10)
dataCollection9 = RegisterNetEvent
rageUiOperation3 = "0ca8b17662"
-- Beginner: this function handles network event "0ca8b17662".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "police.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hasPoliceCallsign
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = RMenu
      localValue2 = localValue1
      localValue1 = localValue1.Get
      localValue3 = "cmgscenemenu"
      cmgOperation = "main"
      -- Beginner: result below is menu.
      localValue1 = localValue1(localValue2, localValue3, cmgOperation)
      localValue2 = localValue1
      localValue1 = localValue1.SetSubtitle
      localValue3 = "~b~MPD~w~: "
      cmgOperation = CMG
      cmgOperation = cmgOperation.getPoliceCallsign
      cmgOperation = cmgOperation()
      text8 = " - "
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.getPoliceRank
      cmgOperation2 = cmgOperation2()
      text9 = " - "
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.getPlayerName
      workingValue18 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      workingValue18 = workingValue18()
      cmgOperation3 = cmgOperation3(workingValue18)
      localValue3 = localValue3 .. cmgOperation .. text8 .. cmgOperation2 .. text9 .. cmgOperation3
      localValue1(localValue2, localValue3)
    end
  end
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "prisonguard.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hasHmpCallsign
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = RMenu
      localValue2 = localValue1
      localValue1 = localValue1.Get
      localValue3 = "cmgscenemenu"
      cmgOperation = "main"
      -- Beginner: result below is menu.
      localValue1 = localValue1(localValue2, localValue3, cmgOperation)
      localValue2 = localValue1
      localValue1 = localValue1.SetSubtitle
      localValue3 = "~b~HMP~w~: "
      cmgOperation = CMG
      cmgOperation = cmgOperation.getHmpCallsign
      cmgOperation = cmgOperation()
      text8 = " - "
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.getHmpRank
      cmgOperation2 = cmgOperation2()
      text9 = " - "
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.getPlayerName
      workingValue18 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      workingValue18 = workingValue18()
      cmgOperation3 = cmgOperation3(workingValue18)
      localValue3 = localValue3 .. cmgOperation .. text8 .. cmgOperation2 .. text9 .. cmgOperation3
      localValue1(localValue2, localValue3)
    end
  end
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "borderforce.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hasBorderForceCallsign
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = RMenu
      localValue2 = localValue1
      localValue1 = localValue1.Get
      localValue3 = "cmgscenemenu"
      cmgOperation = "main"
      -- Beginner: result below is menu.
      localValue1 = localValue1(localValue2, localValue3, cmgOperation)
      localValue2 = localValue1
      localValue1 = localValue1.SetSubtitle
      localValue3 = "~b~HMP~w~: "
      cmgOperation = CMG
      cmgOperation = cmgOperation.getBorderForceCallsign
      cmgOperation = cmgOperation()
      text8 = " - "
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.getBorderForceRank
      cmgOperation2 = cmgOperation2()
      text9 = " - "
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.getPlayerName
      workingValue18 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      workingValue18 = workingValue18()
      cmgOperation3 = cmgOperation3(workingValue18)
      localValue3 = localValue3 .. cmgOperation .. text8 .. cmgOperation2 .. text9 .. cmgOperation3
      localValue1(localValue2, localValue3)
    end
  end
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  cmgOperation = "policedog"
  text8 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, cmgOperation, text8)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0ca8b17662".
dataCollection9(rageUiOperation3, rageUiOperation4)

-- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: none) ===
function dataCollection9()
  local localValue1, localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15
  localValue1 = rageUiOperation2.active
  if not localValue1 then
    return
  end
  localValue1 = rageUiOperation2.currentAction
  localValue2 = dataCollection6.Follow
  if localValue1 ~= localValue2 then
    localValue1 = ClearPedTasks
    localValue2 = rageUiOperation2.handle
    localValue1(localValue2)
    localValue1 = TaskFollowToOffsetOfEntity
    localValue2 = rageUiOperation2.handle
    localValue3 = CMG
    localValue3 = localValue3.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    cmgOperation = 0.0
    text8 = 0.0
    cmgOperation2 = 0.0
    text9 = 7.0
    cmgOperation3 = -1
    workingValue18 = 10.0
    stateFlag15 = true
    localValue1(localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15)
    localValue1 = dataCollection6.Follow
    rageUiOperation2.currentAction = localValue1
  else
    localValue1 = ClearPedTasks
    localValue2 = rageUiOperation2.handle
    localValue1(localValue2)
    localValue1 = dataCollection6.Follow
    rageUiOperation2.currentAction = localValue1
    localValue1 = TaskFollowToOffsetOfEntity
    localValue2 = rageUiOperation2.handle
    localValue3 = CMG
    localValue3 = localValue3.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    cmgOperation = 0.0
    text8 = 0.0
    cmgOperation2 = 0.0
    text9 = 7.0
    cmgOperation3 = -1
    workingValue18 = 10.0
    stateFlag15 = true
    localValue1(localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15)
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2
  localValue1 = rageUiOperation2.active
  if not localValue1 then
    return
  end
  localValue1 = ClearPedTasks
  localValue2 = rageUiOperation2.handle
  localValue1(localValue2)
  localValue1 = dataCollection6.Stay
  rageUiOperation2.currentAction = localValue1
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2
  localValue1 = rageUiOperation2.active
  if not localValue1 then
    return
  end
  localValue1 = ClearPedTasks
  localValue2 = rageUiOperation2.handle
  localValue1(localValue2)
  localValue1 = dataCollection8.Sit
  localValue1 = localValue1.dict
  localValue2 = dataCollection8.Sit
  localValue2 = localValue2.anims
  localValue2 = localValue2.base
  localValue3 = RequestAnimDict
  cmgOperation = localValue1
  localValue3(cmgOperation)
  while true do
    localValue3 = HasAnimDictLoaded
    cmgOperation = localValue1
    localValue3 = localValue3(cmgOperation)
    if localValue3 then
      break
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    cmgOperation = 0
    localValue3(cmgOperation)
  end
  localValue3 = TaskPlayAnim
  cmgOperation = rageUiOperation2.handle
  text8 = localValue1
  cmgOperation2 = localValue2
  text9 = 8.0
  cmgOperation3 = -8.0
  workingValue18 = -1
  stateFlag15 = 2
  number = 0.0
  stateFlag2 = false
  stateFlag3 = false
  dataCollection2 = false
  -- Beginner: Play an animation on a ped.
  localValue3(cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2)
  localValue3 = RemoveAnimDict
  cmgOperation = localValue1
  localValue3(cmgOperation)
  localValue3 = dataCollection6.Sit
  rageUiOperation2.currentAction = localValue3
end

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1, localValue2) ===
function text10(localValue1, localValue2)
  local localValue3, cmgOperation
  localValue3 = notify
  cmgOperation = localValue2
  -- Beginner: Show a notification to the player.
  localValue3(cmgOperation)
end

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1) ===
function text11(localValue1)
  local localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2, stateFlag4
  localValue2 = dataCollection6.Trick
  rageUiOperation2.currentAction = localValue2
  localValue2 = ClearPedTasks
  localValue3 = rageUiOperation2.handle
  localValue2(localValue3)
  localValue2 = localValue1.dict
  localValue3 = localValue1.anims
  localValue3 = localValue3.base
  cmgOperation = RequestAnimDict
  text8 = localValue2
  cmgOperation(text8)
  while true do
    cmgOperation = HasAnimDictLoaded
    text8 = localValue2
    cmgOperation = cmgOperation(text8)
    if cmgOperation then
      break
    end
    cmgOperation = Citizen
    cmgOperation = cmgOperation.Wait
    text8 = 0
    cmgOperation(text8)
  end
  cmgOperation = TaskPlayAnim
  text8 = rageUiOperation2.handle
  cmgOperation2 = localValue2
  text9 = localValue3
  cmgOperation3 = 8.0
  workingValue18 = -8.0
  stateFlag15 = -1
  number = 2
  stateFlag2 = 0.0
  stateFlag3 = false
  dataCollection2 = false
  stateFlag4 = false
  -- Beginner: Play an animation on a ped.
  cmgOperation(text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2, stateFlag4)
  cmgOperation = RemoveAnimDict
  text8 = localValue2
  cmgOperation(text8)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15
  localValue1 = GetEntityCoords
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = true
  -- Beginner: result below is entityCoords.
  localValue1 = localValue1(localValue2, localValue3)
  localValue2 = SetEntityCoords
  localValue3 = rageUiOperation2.handle
  cmgOperation = localValue1.x
  text8 = localValue1.y
  cmgOperation2 = localValue1.z
  cmgOperation2 = cmgOperation2 - 1.0
  text9 = false
  cmgOperation3 = false
  workingValue18 = false
  stateFlag15 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue2(localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15)
end
dataCollection = {}

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2
  localValue1 = rageUiOperation2.currentAction
  localValue2 = dataCollection6.SearchNearby
  if localValue1 == localValue2 then
    return
  end
  localValue1 = dataCollection6.SearchNearby
  rageUiOperation2.currentAction = localValue1
  while true do
    localValue1 = rageUiOperation2.currentAction
    localValue2 = dataCollection6.SearchNearby
    if localValue1 ~= localValue2 then
      break
    end
    localValue1 = DoesEntityExist
    localValue2 = rageUiOperation2.handle
    localValue1 = localValue1(localValue2)
    if not localValue1 then
      break
    end
    localValue1 = {}
    localValue2 = GetEntityCoords
    localValue3 = rageUiOperation2.handle
    cmgOperation = true
    -- Beginner: result below is entityCoords.
    localValue2 = localValue2(localValue3, cmgOperation)
    localValue3 = GetScriptTaskStatus
    cmgOperation = rageUiOperation2.handle
    text8 = 1056466932
    localValue3 = localValue3(cmgOperation, text8)
    if 7 == localValue3 then
      localValue3 = TaskFollowToOffsetOfEntity
      cmgOperation = rageUiOperation2.handle
      text8 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      text8 = text8()
      cmgOperation2 = 0.0
      text9 = 0.0
      cmgOperation3 = 0.0
      workingValue18 = 7.0
      stateFlag15 = -1
      number = 2.0
      stateFlag2 = true
      localValue3(cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2)
    end
    localValue3 = pairs
    cmgOperation = GetActivePlayers
    cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2 = cmgOperation()
    localValue3, cmgOperation, text8, cmgOperation2 = localValue3(cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2)
    for text9, cmgOperation3 in localValue3, cmgOperation, text8, cmgOperation2 do
      workingValue18 = GetPlayerPed
      stateFlag15 = cmgOperation3
      -- Beginner: result below is playerPed.
      workingValue18 = workingValue18(stateFlag15)
      stateFlag15 = GetVehiclePedIsUsing
      number = workingValue18
      stateFlag15 = stateFlag15(number)
      if 0 == stateFlag15 then
        stateFlag15 = IsEntityVisible
        number = workingValue18
        stateFlag15 = stateFlag15(number)
        if stateFlag15 then
          stateFlag15 = GetEntityCoords
          number = workingValue18
          stateFlag2 = true
          -- Beginner: result below is entityCoords.
          stateFlag15 = stateFlag15(number, stateFlag2)
          stateFlag15 = stateFlag15 - localValue2
          stateFlag15 = #stateFlag15
          if stateFlag15 < 5.0 then
            stateFlag15 = GetPlayerServerId
            number = cmgOperation3
            -- Beginner: result below is serverId.
            stateFlag15 = stateFlag15(number)
            number = CMG
            number = number.clientGetUserIdFromSource
            stateFlag2 = stateFlag15
            -- Beginner: result below is userId.
            number = number(stateFlag2)
            stateFlag2 = CMG
            stateFlag2 = stateFlag2.getJobType
            stateFlag3 = number
            stateFlag2 = stateFlag2(stateFlag3)
            if "" == stateFlag2 then
              stateFlag2 = table
              stateFlag2 = stateFlag2.insert
              stateFlag3 = localValue1
              dataCollection2 = {}
              dataCollection2.source = stateFlag15
              dataCollection2.ped = workingValue18
              stateFlag2(stateFlag3, dataCollection2)
            end
          end
        end
      end
    end
    localValue3 = #localValue1
    if localValue3 > 0 then
      localValue3 = nil
      cmgOperation = pairs
      text8 = localValue1
      cmgOperation, text8, cmgOperation2, text9 = cmgOperation(text8)
      for cmgOperation3, workingValue18 in cmgOperation, text8, cmgOperation2, text9 do
        number = workingValue18.source
        stateFlag15 = dataCollection
        stateFlag15 = stateFlag15[number]
        if not stateFlag15 then
          localValue3 = workingValue18
          break
        end
      end
      if not localValue3 then
        cmgOperation = math
        cmgOperation = cmgOperation.random
        text8 = 1
        cmgOperation2 = #localValue1
        cmgOperation = cmgOperation(text8, cmgOperation2)
        localValue3 = localValue1[cmgOperation]
      end
      text8 = localValue3.source
      cmgOperation = dataCollection
      cmgOperation = cmgOperation[text8]
      if not cmgOperation then
        cmgOperation = notify
        text8 = "~y~Dog is smelling a nearby pedestrian..."
        -- Beginner: Show a notification to the player.
        cmgOperation(text8)
        text8 = localValue3.source
        cmgOperation = dataCollection
        cmgOperation[text8] = true
        cmgOperation = Citizen
        cmgOperation = cmgOperation.CreateThread

        -- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
        function text8()
          local waitCall, number9
          waitCall = Citizen
          waitCall = waitCall.Wait
          number9 = 30000
          waitCall(number9)
          number9 = localValue3.source
          waitCall = dataCollection
          waitCall[number9] = nil
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        cmgOperation(text8)
        cmgOperation = TaskFollowToOffsetOfEntity
        text8 = rageUiOperation2.handle
        cmgOperation2 = localValue3.ped
        text9 = 0.0
        cmgOperation3 = 0.0
        workingValue18 = 0.0
        stateFlag15 = 7.0
        number = 4500
        stateFlag2 = 1.0
        stateFlag3 = false
        cmgOperation(text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3)
      end
      cmgOperation = tCMG
      cmgOperation = cmgOperation.isInGreenzone
      text8 = false
      cmgOperation = cmgOperation(text8)
      if not cmgOperation then
        cmgOperation = TriggerServerEvent
        text8 = "a6a898d91c"
        cmgOperation2 = localValue3.source
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a6a898d91c".
        cmgOperation(text8, cmgOperation2)
      end
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    cmgOperation = 5000
    localValue3(cmgOperation)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, localValue3, cmgOperation, text8
  localValue1 = CMG
  localValue1 = localValue1.getClosestVehicle
  localValue2 = 5.0
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue2 = notify
    localValue3 = "~r~No nearby vehicle to search"
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
    return
  end
  localValue2 = NetworkGetNetworkIdFromEntity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 > 0 then
    localValue3 = TriggerServerEvent
    cmgOperation = "ca94823c64"
    text8 = localValue2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ca94823c64".
    localValue3(cmgOperation, text8)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2, stateFlag4, stateFlag5, stateFlag6, stateFlag7
  localValue1 = tCMG
  localValue1 = localValue1.getNearestVehicle
  localValue2 = 7.0
  localValue1 = localValue1(localValue2)
  localValue2 = Citizen
  localValue2 = localValue2.Trace
  localValue3 = localValue1
  localValue2(localValue3)
  if -1 ~= localValue1 and nil ~= localValue1 and 0 ~= localValue1 then
    localValue2 = ClearPedTasks
    localValue3 = rageUiOperation2.handle
    localValue2(localValue3)
    localValue2 = GetEntityBoneIndexByName
    localValue3 = localValue1
    cmgOperation = "seat_dside_r"
    localValue2 = localValue2(localValue3, cmgOperation)
    if -1 == localValue2 then
      localValue3 = GetEntityBoneIndexByName
      cmgOperation = localValue1
      text8 = "seat_pside_f"
      localValue3 = localValue3(cmgOperation, text8)
      localValue2 = localValue3
    end
    localValue3 = dataCollection6.Sit
    rageUiOperation2.currentAction = localValue3
    localValue3 = rageUiOperation4
    localValue3()
    localValue3 = AttachEntityToEntity
    cmgOperation = rageUiOperation2.handle
    text8 = localValue1
    cmgOperation2 = localValue2
    text9 = 0.0
    cmgOperation3 = -0.1
    workingValue18 = 0.4
    stateFlag15 = 0.0
    number = 0.0
    stateFlag2 = 0.0
    stateFlag3 = false
    dataCollection2 = false
    stateFlag4 = false
    stateFlag5 = true
    stateFlag6 = 0
    stateFlag7 = true
    -- Beginner: Attach one entity to another entity.
    localValue3(cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
    rageUiOperation2.insideVehicle = true
    rageUiOperation2.insideVehicleHandle = localValue1
    localValue3 = text10
    cmgOperation = dataCollection7.Info
    text8 = "Dog is now inside the vehicle"
    localValue3(cmgOperation, text8)
  else
    localValue2 = text10
    localValue3 = dataCollection7.Error
    cmgOperation = "No nearby vehicle found."
    localValue2(localValue3, cmgOperation)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15
  localValue1 = IsPedInAnyVehicle
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = true
  localValue1 = localValue1(localValue2, localValue3)
  if localValue1 then
    localValue1 = text10
    localValue2 = dataCollection7.Error
    localValue3 = "You must be outside the vehicle."
    localValue1(localValue2, localValue3)
  else
    localValue1 = ClearPedTasks
    localValue2 = rageUiOperation2.handle
    localValue1(localValue2)
    localValue1 = GetEntityCoords
    localValue2 = CMG
    localValue2 = localValue2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = true
    -- Beginner: result below is entityCoords.
    localValue1 = localValue1(localValue2, localValue3)
    localValue2 = DetachEntity
    localValue3 = rageUiOperation2.handle
    cmgOperation = true
    text8 = true
    localValue2(localValue3, cmgOperation, text8)
    localValue2 = SetEntityCoords
    localValue3 = rageUiOperation2.handle
    cmgOperation = localValue1.x
    text8 = localValue1.y
    cmgOperation2 = localValue1.z
    cmgOperation2 = cmgOperation2 - 1.0
    text9 = false
    cmgOperation3 = false
    workingValue18 = false
    stateFlag15 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    localValue2(localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15)
    rageUiOperation2.insideVehicle = false
    rageUiOperation2.insideVehicleHandle = 0
    localValue2 = dataCollection6.Follow
    rageUiOperation2.currentAction = localValue2
    localValue2 = dataCollection9
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    localValue2()
  end
end
dataCollection3 = {}
dataCollection4 = "Shepherd"
dataCollection5 = "Husky"
dataCollection3[1] = dataCollection4
dataCollection3[2] = dataCollection5
dataCollection4 = {}
dataCollection5 = "a_c_shepherd"
text3 = "a_c_husky"
dataCollection4[1] = dataCollection5
dataCollection4[2] = text3
dataCollection5 = {}
dataCollection5.breed = 1

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3, cmgOperation
  localValue1 = GetResourceKvpString
  localValue2 = "cmg_policedog_customisations"
  localValue1 = localValue1(localValue2)
  if nil ~= localValue1 and "" ~= localValue1 and "null" ~= localValue1 then
    localValue2 = json
    localValue2 = localValue2.decode
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      cmgOperation = dataCollection5.breed
      localValue3 = dataCollection3
      localValue3 = localValue3[cmgOperation]
      cmgOperation = localValue2[localValue3]
      if nil ~= cmgOperation then
        cmgOperation = localValue2[localValue3]
        return cmgOperation
      end
    end
  end
  localValue2 = {}
  localValue2.furColour = 0
  localValue2.vestColour = 0
  localValue2.vestDesign = 0
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2, stateFlag4, stateFlag5, stateFlag6
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  cmgOperation = IsPedInAnyPoliceVehicle
  text8 = localValue3
  cmgOperation = cmgOperation(text8)
  if not cmgOperation then
    cmgOperation = CMG
    cmgOperation = cmgOperation.loadModel
    text8 = localValue1
    cmgOperation = cmgOperation(text8)
    if not cmgOperation then
      return
    end
    text8 = GetOffsetFromEntityInWorldCoords
    cmgOperation2 = localValue3
    text9 = 0.0
    cmgOperation3 = 1.0
    workingValue18 = 0.0
    text8 = text8(cmgOperation2, text9, cmgOperation3, workingValue18)
    cmgOperation2 = GetEntityHeading
    text9 = localValue3
    -- Beginner: result below is heading.
    cmgOperation2 = cmgOperation2(text9)
    text9 = CMG
    text9 = text9.requestEntitySpawn
    cmgOperation3 = "policedog_ped"
    workingValue18 = text8
    stateFlag15 = cmgOperation
    text9(cmgOperation3, workingValue18, stateFlag15)
    text9 = CreatePed
    cmgOperation3 = 28
    workingValue18 = cmgOperation
    stateFlag15 = text8.x
    number = text8.y
    stateFlag2 = text8.z
    stateFlag3 = cmgOperation2
    dataCollection2 = true
    stateFlag4 = true
    -- Beginner: result below is pedEntity.
    text9 = text9(cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2, stateFlag4)
    rageUiOperation2.handle = text9
    text9 = SetModelAsNoLongerNeeded
    cmgOperation3 = cmgOperation
    text9(cmgOperation3)
    text9 = Wait
    cmgOperation3 = 2000
    text9(cmgOperation3)
    text9 = DoesEntityExist
    cmgOperation3 = rageUiOperation2.handle
    text9 = text9(cmgOperation3)
    if text9 then
      rageUiOperation2.active = true
      text9 = SetBlockingOfNonTemporaryEvents
      cmgOperation3 = rageUiOperation2.handle
      workingValue18 = true
      text9(cmgOperation3, workingValue18)
      text9 = SetPedMoveRateOverride
      cmgOperation3 = rageUiOperation2.handle
      workingValue18 = 60.0
      text9(cmgOperation3, workingValue18)
      text9 = GiveWeaponToPed
      cmgOperation3 = rageUiOperation2.handle
      workingValue18 = -100946242
      stateFlag15 = 200
      number = true
      stateFlag2 = true
      text9(cmgOperation3, workingValue18, stateFlag15, number, stateFlag2)
      text9 = SetCanAttackFriendly
      cmgOperation3 = rageUiOperation2.handle
      workingValue18 = false
      stateFlag15 = false
      text9(cmgOperation3, workingValue18, stateFlag15)
      text9 = {}
      cmgOperation3 = 0
      workingValue18 = 3
      stateFlag15 = 5
      number = 46
      text9[1] = cmgOperation3
      text9[2] = workingValue18
      text9[3] = stateFlag15
      text9[4] = number
      cmgOperation3 = pairs
      workingValue18 = text9
      cmgOperation3, workingValue18, stateFlag15, number = cmgOperation3(workingValue18)
      for stateFlag2, stateFlag3 in cmgOperation3, workingValue18, stateFlag15, number do
        dataCollection2 = SetPedFleeAttributes
        stateFlag4 = rageUiOperation2.handle
        stateFlag5 = stateFlag3
        stateFlag6 = true
        dataCollection2(stateFlag4, stateFlag5, stateFlag6)
      end
      cmgOperation3 = ClearPedTasks
      workingValue18 = rageUiOperation2.handle
      cmgOperation3(workingValue18)
      cmgOperation3 = dataCollection9
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      cmgOperation3()
      cmgOperation3 = AddBlipForEntity
      workingValue18 = rageUiOperation2.handle
      -- Beginner: result below is blipHandle.
      cmgOperation3 = cmgOperation3(workingValue18)
      workingValue18 = 61
      stateFlag15 = SetBlipSprite
      number = cmgOperation3
      stateFlag2 = 526
      stateFlag15(number, stateFlag2)
      stateFlag15 = SetBlipColour
      number = cmgOperation3
      stateFlag2 = workingValue18
      stateFlag15(number, stateFlag2)
      stateFlag15 = SetBlipScale
      number = cmgOperation3
      stateFlag2 = 1.0
      stateFlag15(number, stateFlag2)
      stateFlag15 = BeginTextCommandSetBlipName
      number = "STRING"
      stateFlag15(number)
      stateFlag15 = AddTextComponentSubstringPlayerName
      number = "Police Dog"
      stateFlag15(number)
      stateFlag15 = EndTextCommandSetBlipName
      number = cmgOperation3
      stateFlag15(number)
      stateFlag15 = SetBlipAsFriendly
      number = cmgOperation3
      stateFlag2 = true
      stateFlag15(number, stateFlag2)
      stateFlag15 = SetBlipBright
      number = cmgOperation3
      stateFlag2 = true
      stateFlag15(number, stateFlag2)
      stateFlag15 = text3
      stateFlag15 = stateFlag15()
      number = SetPedComponentVariation
      stateFlag2 = rageUiOperation2.handle
      stateFlag3 = 0
      dataCollection2 = 0
      stateFlag4 = stateFlag15.furColour
      stateFlag5 = 0
      number(stateFlag2, stateFlag3, dataCollection2, stateFlag4, stateFlag5)
      number = SetPedComponentVariation
      stateFlag2 = rageUiOperation2.handle
      stateFlag3 = 3
      dataCollection2 = 0
      stateFlag4 = stateFlag15.vestColour
      stateFlag5 = 0
      number(stateFlag2, stateFlag3, dataCollection2, stateFlag4, stateFlag5)
      number = SetPedComponentVariation
      stateFlag2 = rageUiOperation2.handle
      stateFlag3 = 8
      dataCollection2 = 0
      stateFlag4 = stateFlag15.vestDesign
      stateFlag5 = 0
      number(stateFlag2, stateFlag3, dataCollection2, stateFlag4, stateFlag5)
      number = dataCollection9
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      number()
      number = text10
      stateFlag2 = dataCollection7.Success
      stateFlag3 = "Police Dog has been created. Breed: "
      dataCollection2 = localValue2
      stateFlag3 = stateFlag3 .. dataCollection2
      number(stateFlag2, stateFlag3)
      number = TriggerServerEvent
      stateFlag2 = "9c88f7070e"
      stateFlag3 = "Created a new police dog"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c88f7070e".
      number(stateFlag2, stateFlag3)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3
  localValue1 = DeleteEntity
  localValue2 = rageUiOperation2.handle
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  rageUiOperation2.active = false
  rageUiOperation2.handle = 0
  localValue1 = TriggerServerEvent
  localValue2 = "9c88f7070e"
  localValue3 = "Deleted dog"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c88f7070e".
  localValue1(localValue2, localValue3)
end
eventHandler = RegisterNetEvent
eventHandler2 = "21403d7958"
-- Beginner: this function handles network event "21403d7958".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3
  localValue1 = SetPedToRagdoll
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = 12000
  cmgOperation = 12000
  text8 = 0
  cmgOperation2 = false
  text9 = false
  cmgOperation3 = false
  localValue1(localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3)
  localValue1 = text10
  localValue2 = "~y~~h~Alert~h~~s~: "
  localValue3 = "You have been bitten by a police dog."
  localValue2 = localValue2 .. localValue3
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "21403d7958".
eventHandler(eventHandler2, text4)
eventHandler = nil
eventHandler2 = RegisterNetEvent
text4 = "3d3cfdde5b"
-- Beginner: this function handles network event "3d3cfdde5b".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2
  localValue1 = rageUiOperation2.active
  if localValue1 then
    localValue1 = rageUiOperation2.currentAction
    localValue2 = dataCollection6.Attack
    if localValue1 ~= localValue2 then
      localValue1 = eventHandler
      localValue1()
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3d3cfdde5b".
eventHandler2(text4, rageUiOperation)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3
  localValue2 = {}
  localValue3 = GetResourceKvpString
  cmgOperation = "cmg_policedog_customisations"
  localValue3 = localValue3(cmgOperation)
  if nil ~= localValue3 and "" ~= localValue3 and "null" ~= localValue3 then
    cmgOperation = json
    cmgOperation = cmgOperation.decode
    text8 = localValue3
    cmgOperation = cmgOperation(text8)
    localValue2 = cmgOperation or localValue2
    if not cmgOperation then
      cmgOperation = {}
      localValue2 = cmgOperation
    end
  end
  text8 = dataCollection5.breed
  cmgOperation = dataCollection3
  cmgOperation = cmgOperation[text8]
  localValue2[cmgOperation] = localValue1
  text8 = SetResourceKvp
  cmgOperation2 = "cmg_policedog_customisations"
  text9 = json
  text9 = text9.encode
  cmgOperation3 = localValue2
  text9, cmgOperation3 = text9(cmgOperation3)
  text8(cmgOperation2, text9, cmgOperation3)
end
text4 = 0
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
eventHandler3 = 1.0
workingValue11 = RMenu
workingValue13 = workingValue11
workingValue11 = workingValue11.Get
text5 = "policedog"
text7 = "main"
-- Beginner: result below is menu.
workingValue11 = workingValue11(workingValue13, text5, text7)
workingValue13 = nil

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  cmgOperation = "policedog"
  text8 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, cmgOperation, text8)
  localValue3 = true
  cmgOperation = false
  text8 = true

  -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
  function cmgOperation2()
    local waitCall, number9, text6, stateFlag12, workingValue15, dataCollection10, stateFlag13, number13
    waitCall = stateFlag
    if false == waitCall then
      waitCall = true
      stateFlag = waitCall
      waitCall = text10
      number9 = dataCollection7.Info
      text6 = "Press INSERT to attack another player without having the menu open."
      waitCall(number9, text6)
    end
    waitCall = rageUiOperation2.active
    if not waitCall then
      waitCall = RageUI
      waitCall = waitCall.List
      number9 = "Select Breed"
      text6 = dataCollection3
      stateFlag12 = dataCollection5.breed
      workingValue15 = nil
      dataCollection10 = {}
      stateFlag13 = true

      -- === HELPER FUNCTION (decompiler name: number13; parameters: localValue12, localValue22, localValue32, localValue4) ===
      function number13(localValue12, localValue22, localValue32, localValue4)
        local workingValue16, workingValue17
        if localValue32 then
          workingValue16 = Citizen
          workingValue16 = workingValue16.Trace
          workingValue17 = dataCollection3
          workingValue17 = workingValue17[localValue4]
          workingValue16(workingValue17)
        end
        if localValue22 then
          dataCollection5.breed = localValue4
        end
      end
      -- Beginner: Draw a RageUI list selector.
      waitCall(number9, text6, stateFlag12, workingValue15, dataCollection10, stateFlag13, number13)
      waitCall = RageUI
      waitCall = waitCall.Button
      number9 = "Create Dog"
      text6 = "Create a police dog"
      stateFlag12 = true

      -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
      function workingValue15(localValue12, localValue22, localValue32)
        local localValue4, workingValue16, workingValue17, number12
        if localValue32 then
          localValue4 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue4 = localValue4()
          workingValue16 = text4
          localValue4 = localValue4 - workingValue16
          workingValue16 = 10000
          if localValue4 > workingValue16 then
            localValue4 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            localValue4 = localValue4()
            text4 = localValue4
            localValue4 = workingValue7
            workingValue17 = dataCollection5.breed
            workingValue16 = dataCollection4
            workingValue16 = workingValue16[workingValue17]
            number12 = dataCollection5.breed
            workingValue17 = dataCollection3
            workingValue17 = workingValue17[number12]
            localValue4(workingValue16, workingValue17)
          else
            localValue4 = notify
            workingValue16 = "~r~Please wait 10 seconds before spawning another dog."
            -- Beginner: Show a notification to the player.
            localValue4(workingValue16)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      waitCall(number9, text6, stateFlag12, workingValue15)
    else
      waitCall = rageUiOperation2.insideVehicle
      if not waitCall then
        waitCall = rageUiOperation2.currentAction
        number9 = dataCollection6.Follow
        if waitCall ~= number9 then
          waitCall = RageUI
          waitCall = waitCall.Button
          number9 = "Follow"
          text6 = "Dog will follow you"
          stateFlag12 = true

          -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
          function workingValue15(localValue12, localValue22, localValue32)
            local localValue4, workingValue16, workingValue17
            if localValue32 then
              localValue4 = text10
              workingValue16 = dataCollection7.Info
              workingValue17 = "Dog is now following."
              localValue4(workingValue16, workingValue17)
              localValue4 = dataCollection9
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              localValue4()
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(number9, text6, stateFlag12, workingValue15)
        end
        waitCall = rageUiOperation2.currentAction
        number9 = dataCollection6.Stay
        if waitCall ~= number9 then
          waitCall = RageUI
          waitCall = waitCall.Button
          number9 = "Stay"
          text6 = "Dog will stay"
          stateFlag12 = true

          -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
          function workingValue15(localValue12, localValue22, localValue32)
            local localValue4, workingValue16, workingValue17
            if localValue32 then
              localValue4 = text10
              workingValue16 = dataCollection7.Info
              workingValue17 = "Dog is now staying."
              localValue4(workingValue16, workingValue17)
              localValue4 = rageUiOperation3
              localValue4()
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(number9, text6, stateFlag12, workingValue15)
        end
        waitCall = rageUiOperation2.currentAction
        number9 = dataCollection6.Sit
        if waitCall ~= number9 then
          waitCall = RageUI
          waitCall = waitCall.Button
          number9 = "Sit"
          text6 = "Dog will sit"
          stateFlag12 = true

          -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
          function workingValue15(localValue12, localValue22, localValue32)
            local localValue4, workingValue16, workingValue17
            if localValue32 then
              localValue4 = text10
              workingValue16 = dataCollection7.Info
              workingValue17 = "Dog is now sitting."
              localValue4(workingValue16, workingValue17)
              localValue4 = rageUiOperation4
              localValue4()
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(number9, text6, stateFlag12, workingValue15)
        end
        waitCall = rageUiOperation2.currentAction
        number9 = dataCollection6.Attack
        if waitCall ~= number9 then
          waitCall = RageUI
          waitCall = waitCall.Button
          number9 = "Attack"
          text6 = "Begin a dog attack"
          stateFlag12 = true

          -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
          function workingValue15(localValue12, localValue22, localValue32)
            local localValue4
            if localValue32 then
              localValue4 = eventHandler
              localValue4()
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(number9, text6, stateFlag12, workingValue15)
        else
          waitCall = RageUI
          waitCall = waitCall.Button
          number9 = "Stop Attack"
          text6 = "Stop the current attack"
          stateFlag12 = true

          -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
          function workingValue15(localValue12, localValue22, localValue32)
            local localValue4, workingValue16, workingValue17
            if localValue32 then
              localValue4 = text10
              workingValue16 = dataCollection7.Alert
              workingValue17 = "The attack has been cancelled."
              localValue4(workingValue16, workingValue17)
              localValue4 = ClearPedTasks
              workingValue16 = rageUiOperation2.handle
              localValue4(workingValue16)
              localValue4 = dataCollection6.Follow
              rageUiOperation2.currentAction = localValue4
              localValue4 = text10
              workingValue16 = dataCollection7.Info
              workingValue17 = "Dog is now following."
              localValue4(workingValue16, workingValue17)
              localValue4 = dataCollection9
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              localValue4()
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(number9, text6, stateFlag12, workingValue15)
        end
      else
        waitCall = RageUI
        waitCall = waitCall.Button
        number9 = "Remove from vehicle"
        text6 = "Remove the dog from the vehicle"
        stateFlag12 = true

        -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
        function workingValue15(localValue12, localValue22, localValue32)
          local localValue4, workingValue16, workingValue17
          if localValue32 then
            localValue4 = text10
            workingValue16 = dataCollection7.Info
            workingValue17 = "Dog is now out of the vehicle."
            localValue4(workingValue16, workingValue17)
            localValue4 = workingValue5
            localValue4()
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(number9, text6, stateFlag12, workingValue15)
      end
      waitCall = rageUiOperation2.insideVehicle
      if not waitCall then
        waitCall = RageUI
        waitCall = waitCall.Button
        number9 = "Put in vehicle"
        text6 = "Put the dog in a vehicle"
        stateFlag12 = true

        -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
        function workingValue15(localValue12, localValue22, localValue32)
          local localValue4
          if localValue32 then
            localValue4 = workingValue4
            localValue4()
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(number9, text6, stateFlag12, workingValue15)
        waitCall = RageUI
        waitCall = waitCall.Button
        number9 = "Paw Trick"
        text6 = "Perform the paw trick"
        stateFlag12 = true

        -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
        function workingValue15(localValue12, localValue22, localValue32)
          local localValue4, workingValue16
          if localValue32 then
            localValue4 = text11
            workingValue16 = dataCollection8.TrickPawRight
            localValue4(workingValue16)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(number9, text6, stateFlag12, workingValue15)
        waitCall = RageUI
        waitCall = waitCall.Button
        number9 = "Beg Trick"
        text6 = "Perform the beg trick"
        stateFlag12 = true

        -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
        function workingValue15(localValue12, localValue22, localValue32)
          local localValue4, workingValue16
          if localValue32 then
            localValue4 = text11
            workingValue16 = dataCollection8.TrickBeg
            localValue4(workingValue16)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(number9, text6, stateFlag12, workingValue15)
        waitCall = RageUI
        waitCall = waitCall.Button
        number9 = "Search Nearby"
        text6 = "Dog will follow and sniff close pedestrians"
        stateFlag12 = true

        -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
        function workingValue15(localValue12, localValue22, localValue32)
          local localValue4, workingValue16, workingValue17
          if localValue32 then
            localValue4 = text10
            workingValue16 = dataCollection7.Info
            workingValue17 = "Dog is now searching."
            localValue4(workingValue16, workingValue17)
            localValue4 = Citizen
            localValue4 = localValue4.CreateThread
            workingValue16 = workingValue2
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            localValue4(workingValue16)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(number9, text6, stateFlag12, workingValue15)
        waitCall = RageUI
        waitCall = waitCall.Button
        number9 = "Search Nearby Vehicle"
        text6 = "Dog will search the nearest vehicle. This does not include people inside vehicle."
        stateFlag12 = true

        -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
        function workingValue15(localValue12, localValue22, localValue32)
          local localValue4, workingValue16
          if localValue32 then
            localValue4 = Citizen
            localValue4 = localValue4.CreateThread
            workingValue16 = workingValue3
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            localValue4(workingValue16)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(number9, text6, stateFlag12, workingValue15)
        waitCall = RageUI
        waitCall = waitCall.Button
        number9 = "Teleport Dog"
        text6 = "Teleport the dog to you"
        stateFlag12 = true

        -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
        function workingValue15(localValue12, localValue22, localValue32)
          local localValue4, workingValue16, workingValue17
          if localValue32 then
            localValue4 = text10
            workingValue16 = dataCollection7.Success
            workingValue17 = "Dog has now been teleported"
            localValue4(workingValue16, workingValue17)
            localValue4 = workingValue
            localValue4()
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(number9, text6, stateFlag12, workingValue15)
        waitCall = RageUI
        waitCall = waitCall.Button
        number9 = "Change Fur Colour"
        text6 = "Cycle through colours"
        stateFlag12 = true

        -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
        function workingValue15(localValue12, localValue22, localValue32)
          local localValue4, workingValue16, workingValue17, number12, number14, number15, number17, number3, number5
          if localValue32 then
            localValue4 = GetPedTextureVariation
            workingValue16 = rageUiOperation2.handle
            workingValue17 = 0
            localValue4 = localValue4(workingValue16, workingValue17)
            workingValue16 = GetNumberOfPedTextureVariations
            workingValue17 = rageUiOperation2.handle
            number12 = 0
            number14 = 0
            workingValue16 = workingValue16(workingValue17, number12, number14)
            workingValue17 = text3
            workingValue17 = workingValue17()
            number12 = localValue4 + 1
            if workingValue16 > number12 then
              number12 = SetPedComponentVariation
              number14 = rageUiOperation2.handle
              number15 = 0
              number17 = 0
              number3 = localValue4 + 1
              number5 = 0
              number12(number14, number15, number17, number3, number5)
              number12 = localValue4 + 1
              workingValue17.furColour = number12
            else
              number12 = localValue4 + 1
              if number12 == workingValue16 then
                number12 = SetPedComponentVariation
                number14 = rageUiOperation2.handle
                number15 = 0
                number17 = 0
                number3 = 0
                number5 = 0
                number12(number14, number15, number17, number3, number5)
                workingValue17.furColour = 0
              end
            end
            number12 = eventHandler2
            number14 = workingValue17
            -- Beginner: Register a network event handler that the server/other clients can trigger.
            number12(number14)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(number9, text6, stateFlag12, workingValue15)
        waitCall = dataCollection5.breed
        if 1 == waitCall then
          waitCall = RageUI
          waitCall = waitCall.Button
          number9 = "Change Vest Colour"
          text6 = "Cycle through colours"
          stateFlag12 = true

          -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
          function workingValue15(localValue12, localValue22, localValue32)
            local localValue4, workingValue16, workingValue17, number12, number14, number15, number17, number3, number5
            if localValue32 then
              localValue4 = GetPedTextureVariation
              workingValue16 = rageUiOperation2.handle
              workingValue17 = 3
              localValue4 = localValue4(workingValue16, workingValue17)
              workingValue16 = GetNumberOfPedTextureVariations
              workingValue17 = rageUiOperation2.handle
              number12 = 3
              number14 = 0
              workingValue16 = workingValue16(workingValue17, number12, number14)
              workingValue17 = text3
              workingValue17 = workingValue17()
              number12 = localValue4 + 1
              if workingValue16 > number12 then
                number12 = SetPedComponentVariation
                number14 = rageUiOperation2.handle
                number15 = 3
                number17 = 0
                number3 = localValue4 + 1
                number5 = 0
                number12(number14, number15, number17, number3, number5)
                number12 = localValue4 + 1
                workingValue17.vestColour = number12
              else
                number12 = localValue4 + 1
                if number12 == workingValue16 then
                  number12 = SetPedComponentVariation
                  number14 = rageUiOperation2.handle
                  number15 = 3
                  number17 = 0
                  number3 = 0
                  number5 = 0
                  number12(number14, number15, number17, number3, number5)
                  workingValue17.vestColour = 0
                end
              end
              number12 = eventHandler2
              number14 = workingValue17
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              number12(number14)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(number9, text6, stateFlag12, workingValue15)
          waitCall = RageUI
          waitCall = waitCall.Button
          number9 = "Change Vest Design"
          text6 = "Cycle through designs"
          stateFlag12 = true

          -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
          function workingValue15(localValue12, localValue22, localValue32)
            local localValue4, workingValue16, workingValue17, number12, number14, number15, number17, number3, number5
            if localValue32 then
              localValue4 = GetPedTextureVariation
              workingValue16 = rageUiOperation2.handle
              workingValue17 = 8
              localValue4 = localValue4(workingValue16, workingValue17)
              workingValue16 = GetNumberOfPedTextureVariations
              workingValue17 = rageUiOperation2.handle
              number12 = 8
              number14 = 0
              workingValue16 = workingValue16(workingValue17, number12, number14)
              workingValue17 = text3
              workingValue17 = workingValue17()
              number12 = localValue4 + 1
              if workingValue16 > number12 then
                number12 = SetPedComponentVariation
                number14 = rageUiOperation2.handle
                number15 = 8
                number17 = 0
                number3 = localValue4 + 1
                number5 = 0
                number12(number14, number15, number17, number3, number5)
                number12 = localValue4 + 1
                workingValue17.vestDesign = number12
              else
                number12 = localValue4 + 1
                if number12 == workingValue16 then
                  number12 = SetPedComponentVariation
                  number14 = rageUiOperation2.handle
                  number15 = 8
                  number17 = 0
                  number3 = 0
                  number5 = 0
                  number12(number14, number15, number17, number3, number5)
                  workingValue17.vestDesign = 0
                end
              end
              number12 = eventHandler2
              number14 = workingValue17
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              number12(number14)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(number9, text6, stateFlag12, workingValue15)
        end
        waitCall = RageUI
        waitCall = waitCall.Button
        number9 = "Delete Dog"
        text6 = "Delete the dog"
        stateFlag12 = true

        -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32) ===
        function workingValue15(localValue12, localValue22, localValue32)
          local localValue4, workingValue16, workingValue17
          if localValue32 then
            localValue4 = text10
            workingValue16 = dataCollection7.Success
            workingValue17 = "Dog has now been deleted."
            localValue4(workingValue16, workingValue17)
            localValue4 = workingValue9
            localValue4()
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(number9, text6, stateFlag12, workingValue15)
      else
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
  function text9()
    local waitCall, number9
  end
  localValue1(localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9)
end
rageUiOperation(eventHandler3, workingValue11, workingValue13, text5)

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3
  localValue2 = BeginTextCommandScaleformString
  localValue3 = "STRING"
  localValue2(localValue3)
  localValue2 = AddTextComponentSubstringKeyboardDisplay
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = EndTextCommandScaleformString
  localValue2()
end
ButtonMessage = rageUiOperation

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3
  localValue2 = _ENV
  localValue3 = "ScaleformMovieMethodAddParamPlayerNameString"
  localValue2 = localValue2[localValue3]
  localValue3 = localValue1
  localValue2(localValue3)
end
Button = rageUiOperation
rageUiOperation = CMG

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9
  localValue2 = RequestScaleformMovie
  localValue3 = localValue1
  -- Beginner: result below is scaleformHandle.
  localValue2 = localValue2(localValue3)
  while true do
    localValue3 = HasScaleformMovieLoaded
    cmgOperation = localValue2
    localValue3 = localValue3(cmgOperation)
    if localValue3 then
      break
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    cmgOperation = 0
    localValue3(cmgOperation)
  end
  localValue3 = BeginScaleformMovieMethod
  cmgOperation = localValue2
  text8 = "CLEAR_ALL"
  localValue3(cmgOperation, text8)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  cmgOperation = localValue2
  text8 = "SET_CLEAR_SPACE"
  localValue3(cmgOperation, text8)
  localValue3 = ScaleformMovieMethodAddParamInt
  cmgOperation = 200
  localValue3(cmgOperation)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = rageUiOperation2.isAttacking
  if localValue3 then
    localValue3 = BeginScaleformMovieMethod
    cmgOperation = localValue2
    text8 = "SET_DATA_SLOT"
    localValue3(cmgOperation, text8)
    localValue3 = ScaleformMovieMethodAddParamInt
    cmgOperation = 1
    localValue3(cmgOperation)
    localValue3 = Button
    cmgOperation = GetControlInstructionalButton
    text8 = 1
    cmgOperation2 = 178
    text9 = true
    cmgOperation, text8, cmgOperation2, text9 = cmgOperation(text8, cmgOperation2, text9)
    localValue3(cmgOperation, text8, cmgOperation2, text9)
    localValue3 = ButtonMessage
    cmgOperation = "Cancel Attack"
    localValue3(cmgOperation)
    localValue3 = EndScaleformMovieMethod
    localValue3()
  else
    localValue3 = BeginScaleformMovieMethod
    cmgOperation = localValue2
    text8 = "SET_DATA_SLOT"
    localValue3(cmgOperation, text8)
    localValue3 = ScaleformMovieMethodAddParamInt
    cmgOperation = 0
    localValue3(cmgOperation)
    localValue3 = Button
    cmgOperation = GetControlInstructionalButton
    text8 = 2
    cmgOperation2 = 191
    text9 = true
    cmgOperation, text8, cmgOperation2, text9 = cmgOperation(text8, cmgOperation2, text9)
    localValue3(cmgOperation, text8, cmgOperation2, text9)
    localValue3 = ButtonMessage
    cmgOperation = "Select Target"
    localValue3(cmgOperation)
    localValue3 = EndScaleformMovieMethod
    localValue3()
    localValue3 = BeginScaleformMovieMethod
    cmgOperation = localValue2
    text8 = "SET_DATA_SLOT"
    localValue3(cmgOperation, text8)
    localValue3 = ScaleformMovieMethodAddParamInt
    cmgOperation = 1
    localValue3(cmgOperation)
    localValue3 = Button
    cmgOperation = GetControlInstructionalButton
    text8 = 1
    cmgOperation2 = 178
    text9 = true
    cmgOperation, text8, cmgOperation2, text9 = cmgOperation(text8, cmgOperation2, text9)
    localValue3(cmgOperation, text8, cmgOperation2, text9)
    localValue3 = ButtonMessage
    cmgOperation = "Cancel Attack"
    localValue3(cmgOperation)
    localValue3 = EndScaleformMovieMethod
    localValue3()
  end
  localValue3 = BeginScaleformMovieMethod
  cmgOperation = localValue2
  text8 = "DRAW_INSTRUCTIONAL_BUTTONS"
  localValue3(cmgOperation, text8)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  cmgOperation = localValue2
  text8 = "SET_BACKGROUND_COLOUR"
  localValue3(cmgOperation, text8)
  localValue3 = ScaleformMovieMethodAddParamInt
  cmgOperation = 0
  localValue3(cmgOperation)
  localValue3 = ScaleformMovieMethodAddParamInt
  cmgOperation = 0
  localValue3(cmgOperation)
  localValue3 = ScaleformMovieMethodAddParamInt
  cmgOperation = 0
  localValue3(cmgOperation)
  localValue3 = ScaleformMovieMethodAddParamInt
  cmgOperation = 80
  localValue3(cmgOperation)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  return localValue2
end
rageUiOperation.setupDogScaleform = eventHandler3

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3, cmgOperation, text8, cmgOperation2
  localValue2 = {}
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  localValue3 = localValue3 / 200
  cmgOperation = math
  cmgOperation = cmgOperation.floor
  text8 = math
  text8 = text8.sin
  cmgOperation2 = localValue3 * localValue1
  cmgOperation2 = cmgOperation2 + 0
  text8 = text8(cmgOperation2)
  text8 = text8 * 127
  text8 = text8 + 128
  cmgOperation = cmgOperation(text8)
  localValue2.r = cmgOperation
  cmgOperation = math
  cmgOperation = cmgOperation.floor
  text8 = math
  text8 = text8.sin
  cmgOperation2 = localValue3 * localValue1
  cmgOperation2 = cmgOperation2 + 2
  text8 = text8(cmgOperation2)
  text8 = text8 * 127
  text8 = text8 + 128
  cmgOperation = cmgOperation(text8)
  localValue2.g = cmgOperation
  cmgOperation = math
  cmgOperation = cmgOperation.floor
  text8 = math
  text8 = text8.sin
  cmgOperation2 = localValue3 * localValue1
  cmgOperation2 = cmgOperation2 + 4
  text8 = text8(cmgOperation2)
  text8 = text8 * 127
  text8 = text8 + 128
  cmgOperation = cmgOperation(text8)
  localValue2.b = cmgOperation
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local waitCall, number9, text6, stateFlag12, workingValue15, dataCollection10, stateFlag13, number13, stateFlag14, number16, number2, number4, number6, number7, number8, playerPed, serverEventCall, text, text2, workingValue6, workingValue8, workingValue10, number10, stateFlag8, stateFlag9, number11, stateFlag10, workingValue12, workingValue14, stateFlag11
    waitCall = dataCollection6.Attack
    rageUiOperation2.currentAction = waitCall
    waitCall = CMG
    waitCall = waitCall.setupDogScaleform
    number9 = "instructional_buttons"
    waitCall = waitCall(number9)
    number9 = text10
    text6 = dataCollection7.Info
    stateFlag12 = "Aim at the ~b~target ~s~and press ENTER to begin the attack."
    number9(text6, stateFlag12)
    while true do
      number9 = rageUiOperation2.currentAction
      text6 = dataCollection6.Attack
      if number9 == text6 then
        number9 = GetEntityPlayerIsFreeAimingAt
        text6 = PlayerId
        text6, stateFlag12, workingValue15, dataCollection10, stateFlag13, number13, stateFlag14, number16, number2, number4, number6, number7, number8, playerPed, serverEventCall, text, text2, workingValue6, workingValue8, workingValue10, number10, stateFlag8, stateFlag9, number11, stateFlag10, workingValue12, workingValue14, stateFlag11 = text6()
        number9, text6 = number9(text6, stateFlag12, workingValue15, dataCollection10, stateFlag13, number13, stateFlag14, number16, number2, number4, number6, number7, number8, playerPed, serverEventCall, text, text2, workingValue6, workingValue8, workingValue10, number10, stateFlag8, stateFlag9, number11, stateFlag10, workingValue12, workingValue14, stateFlag11)
        if number9 then
          stateFlag12 = IsEntityAPed
          workingValue15 = text6
          stateFlag12 = stateFlag12(workingValue15)
          if stateFlag12 then
            stateFlag12 = rageUiOperation2.handle
            if text6 ~= stateFlag12 then
              stateFlag12 = DrawScaleformMovieFullscreen
              workingValue15 = waitCall
              dataCollection10 = 255
              stateFlag13 = 255
              number13 = 255
              stateFlag14 = 255
              number16 = 0
              stateFlag12(workingValue15, dataCollection10, stateFlag13, number13, stateFlag14, number16)
              stateFlag12 = GetEntityCoords
              workingValue15 = text6
              dataCollection10 = true
              -- Beginner: result below is entityCoords.
              stateFlag12 = stateFlag12(workingValue15, dataCollection10)
              workingValue15 = rageUiOperation
              dataCollection10 = 0.5
              workingValue15 = workingValue15(dataCollection10)
              dataCollection10 = DrawMarker
              stateFlag13 = 1
              number13 = stateFlag12.x
              stateFlag14 = stateFlag12.y
              number16 = stateFlag12.z
              number16 = number16 - 1.02
              number2 = 0
              number4 = 0
              number6 = 0
              number7 = 0
              number8 = 0
              playerPed = 0
              serverEventCall = 0.7
              text = 0.7
              text2 = 1.5
              workingValue6 = workingValue15.r
              workingValue8 = workingValue15.g
              workingValue10 = workingValue15.b
              number10 = 200
              stateFlag8 = false
              stateFlag9 = false
              number11 = 2
              stateFlag10 = false
              workingValue12 = nil
              workingValue14 = nil
              stateFlag11 = false
              dataCollection10(stateFlag13, number13, stateFlag14, number16, number2, number4, number6, number7, number8, playerPed, serverEventCall, text, text2, workingValue6, workingValue8, workingValue10, number10, stateFlag8, stateFlag9, number11, stateFlag10, workingValue12, workingValue14, stateFlag11)
              dataCollection10 = IsControlJustPressed
              stateFlag13 = 1
              number13 = 18
              dataCollection10 = dataCollection10(stateFlag13, number13)
              if dataCollection10 then
                dataCollection10 = SetCanAttackFriendly
                stateFlag13 = rageUiOperation2.handle
                number13 = true
                stateFlag14 = true
                dataCollection10(stateFlag13, number13, stateFlag14)
                dataCollection10 = TaskCombatPed
                stateFlag13 = rageUiOperation2.handle
                number13 = text6
                stateFlag14 = 0
                number16 = 16
                dataCollection10(stateFlag13, number13, stateFlag14, number16)
                rageUiOperation2.isAttacking = true
                dataCollection10 = CMG
                dataCollection10 = dataCollection10.setupDogScaleform
                stateFlag13 = "instructional_buttons"
                dataCollection10 = dataCollection10(stateFlag13)
                waitCall = dataCollection10
                dataCollection10 = text10
                stateFlag13 = dataCollection7.Info
                number13 = "Attack has started, press ~b~DEL ~s~to stop the attack."
                dataCollection10(stateFlag13, number13)
                number9 = false
                while true do
                  dataCollection10 = DrawScaleformMovieFullscreen
                  stateFlag13 = waitCall
                  number13 = 255
                  stateFlag14 = 255
                  number16 = 255
                  number2 = 255
                  number4 = 0
                  dataCollection10(stateFlag13, number13, stateFlag14, number16, number2, number4)
                  if false == number9 then
                    dataCollection10 = GetEntityCoords
                    stateFlag13 = text6
                    number13 = true
                    -- Beginner: result below is entityCoords.
                    dataCollection10 = dataCollection10(stateFlag13, number13)
                    stateFlag13 = GetEntityCoords
                    number13 = rageUiOperation2.handle
                    stateFlag14 = true
                    -- Beginner: result below is entityCoords.
                    stateFlag13 = stateFlag13(number13, stateFlag14)
                    number13 = stateFlag13 - dataCollection10
                    number13 = #number13
                    if number13 < 2.0 then
                      stateFlag14 = GetActivePlayers
                      stateFlag14 = stateFlag14()
                      number16 = pairs
                      number2 = stateFlag14
                      number16, number2, number4, number6 = number16(number2)
                      for number7, number8 in number16, number2, number4, number6 do
                        playerPed = GetPlayerPed
                        serverEventCall = number8
                        -- Beginner: result below is playerPed.
                        playerPed = playerPed(serverEventCall)
                        if text6 == playerPed then
                          playerPed = GetPlayerServerId
                          serverEventCall = number8
                          -- Beginner: result below is serverId.
                          playerPed = playerPed(serverEventCall)
                          serverEventCall = TriggerServerEvent
                          text = "9c88f7070e"
                          text2 = "Instructed dog to attack ID: "
                          workingValue6 = playerPed
                          text2 = text2 .. workingValue6
                          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c88f7070e".
                          serverEventCall(text, text2)
                          serverEventCall = TriggerServerEvent
                          text = "d033961afd"
                          text2 = playerPed
                          serverEventCall(text, text2)
                          number9 = true
                          serverEventCall = Wait
                          text = 1000
                          serverEventCall(text)
                          serverEventCall = ClearPedTasksImmediately
                          text = rageUiOperation2.handle
                          serverEventCall(text)
                          serverEventCall = dataCollection6.Follow
                          rageUiOperation2.currentAction = serverEventCall
                          serverEventCall = dataCollection9
                          -- Beginner: Register a network event handler that the server/other clients can trigger.
                          serverEventCall()
                          serverEventCall = text10
                          text = dataCollection7.Alert
                          text2 = "The attack has successfully finished."
                          serverEventCall(text, text2)
                          break
                        end
                      end
                    end
                  end
                  dataCollection10 = IsControlJustPressed
                  stateFlag13 = 1
                  number13 = 178
                  dataCollection10 = dataCollection10(stateFlag13, number13)
                  if dataCollection10 then
                    dataCollection10 = ClearPedTasksImmediately
                    stateFlag13 = rageUiOperation2.handle
                    dataCollection10(stateFlag13)
                    dataCollection10 = text10
                    stateFlag13 = dataCollection7.Alert
                    number13 = "You have now stopped the attack."
                    dataCollection10(stateFlag13, number13)
                    dataCollection10 = dataCollection6.Follow
                    rageUiOperation2.currentAction = dataCollection10
                    dataCollection10 = dataCollection9
                    -- Beginner: Register a network event handler that the server/other clients can trigger.
                    dataCollection10()
                    break
                  end
                  dataCollection10 = Wait
                  stateFlag13 = 0
                  dataCollection10(stateFlag13)
                end
                dataCollection10 = SetCanAttackFriendly
                stateFlag13 = rageUiOperation2.handle
                number13 = false
                stateFlag14 = false
                dataCollection10(stateFlag13, number13, stateFlag14)
                rageUiOperation2.isAttacking = false
                break
              else
                dataCollection10 = IsControlJustPressed
                stateFlag13 = 1
                number13 = 178
                dataCollection10 = dataCollection10(stateFlag13, number13)
                if dataCollection10 then
                  dataCollection10 = dataCollection9
                  -- Beginner: Register a network event handler that the server/other clients can trigger.
                  dataCollection10()
                  break
                end
              end
            end
          end
        end
      else
        break
      end
      number9 = Wait
      text6 = 0
      number9(text6)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end
eventHandler = eventHandler3
eventHandler3 = RegisterNetEvent
workingValue11 = "f89085dfdd"
-- Beginner: this function handles network event "f89085dfdd".

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1) ===
function workingValue13(localValue1)
  local localValue2, localValue3, cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2, stateFlag4, stateFlag5, stateFlag6
  localValue2 = GetPlayerFromServerId
  localValue3 = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  if -1 == localValue2 then
    return
  end
  localValue3 = GetPlayerPed
  cmgOperation = localValue2
  -- Beginner: result below is playerPed.
  localValue3 = localValue3(cmgOperation)
  if 0 == localValue3 then
    return
  end
  cmgOperation = rageUiOperation2.active
  if cmgOperation then
    cmgOperation = DoesEntityExist
    text8 = rageUiOperation2.handle
    cmgOperation = cmgOperation(text8)
    if cmgOperation then
      goto continueAtStep22
    end
  end
  return
  ::continueAtStep22::
  cmgOperation = rageUiOperation2.currentAction
  text8 = dataCollection6.SearchNearby
  if cmgOperation ~= text8 then
    return
  end
  cmgOperation = dataCollection6.Indicate
  rageUiOperation2.currentAction = cmgOperation
  cmgOperation = notify
  text8 = "~b~Your dog starts indicating."
  -- Beginner: Show a notification to the player.
  cmgOperation(text8)
  cmgOperation = ClearPedTasks
  text8 = rageUiOperation2.handle
  cmgOperation(text8)
  cmgOperation = 0
  while true do
    text8 = rageUiOperation2.currentAction
    cmgOperation2 = dataCollection6.Indicate
    if text8 ~= cmgOperation2 then
      break
    end
    text8 = DoesEntityExist
    cmgOperation2 = localValue3
    text8 = text8(cmgOperation2)
    if not text8 then
      break
    end
    text8 = GetEntityCoords
    cmgOperation2 = localValue3
    text9 = true
    -- Beginner: result below is entityCoords.
    text8 = text8(cmgOperation2, text9)
    cmgOperation2 = GetEntityCoords
    text9 = rageUiOperation2.handle
    cmgOperation3 = true
    -- Beginner: result below is entityCoords.
    cmgOperation2 = cmgOperation2(text9, cmgOperation3)
    text8 = text8 - cmgOperation2
    text8 = #text8
    cmgOperation2 = 1.5
    if text8 > cmgOperation2 then
      cmgOperation2 = GetScriptTaskStatus
      text9 = rageUiOperation2.handle
      cmgOperation3 = 1056466932
      cmgOperation2 = cmgOperation2(text9, cmgOperation3)
      if 7 == cmgOperation2 then
        cmgOperation2 = TaskFollowToOffsetOfEntity
        text9 = rageUiOperation2.handle
        cmgOperation3 = localValue3
        workingValue18 = 0.0
        stateFlag15 = 0.0
        number = 0.0
        stateFlag2 = 7.0
        stateFlag3 = -1
        dataCollection2 = 2.0
        stateFlag4 = true
        cmgOperation2(text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2, stateFlag4)
        cmgOperation = 0
      end
    else
      cmgOperation2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      cmgOperation2 = cmgOperation2()
      cmgOperation2 = cmgOperation2 - cmgOperation
      text9 = 3500
      if cmgOperation2 > text9 then
        cmgOperation2 = IsEntityPlayingAnim
        text9 = rageUiOperation2.handle
        cmgOperation3 = dataCollection8.Sit
        cmgOperation3 = cmgOperation3.dict
        workingValue18 = dataCollection8.Sit
        workingValue18 = workingValue18.anims
        workingValue18 = workingValue18.base
        stateFlag15 = 3
        cmgOperation2 = cmgOperation2(text9, cmgOperation3, workingValue18, stateFlag15)
        if not cmgOperation2 then
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.loadAnimDict
          text9 = dataCollection8.Sit
          text9 = text9.dict
          -- Beginner: Load a GTA animation dictionary before using it.
          cmgOperation2(text9)
          cmgOperation2 = TaskPlayAnim
          text9 = rageUiOperation2.handle
          cmgOperation3 = dataCollection8.Sit
          cmgOperation3 = cmgOperation3.dict
          workingValue18 = dataCollection8.Sit
          workingValue18 = workingValue18.anims
          workingValue18 = workingValue18.base
          stateFlag15 = 8.0
          number = -8.0
          stateFlag2 = -1
          stateFlag3 = 2
          dataCollection2 = 0.0
          stateFlag4 = false
          stateFlag5 = false
          stateFlag6 = false
          -- Beginner: Play an animation on a ped.
          cmgOperation2(text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2, stateFlag4, stateFlag5, stateFlag6)
          cmgOperation2 = RemoveAnimDict
          text9 = dataCollection8.Sit
          text9 = text9.dict
          cmgOperation2(text9)
        end
      else
        cmgOperation2 = GetScriptTaskStatus
        text9 = rageUiOperation2.handle
        cmgOperation3 = -875674219
        cmgOperation2 = cmgOperation2(text9, cmgOperation3)
        if 7 == cmgOperation2 then
          cmgOperation2 = TaskTurnPedToFaceEntity
          text9 = rageUiOperation2.handle
          cmgOperation3 = localValue3
          workingValue18 = 4000
          cmgOperation2(text9, cmgOperation3, workingValue18)
          cmgOperation2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          cmgOperation2 = cmgOperation2()
          cmgOperation = cmgOperation2
        end
      end
    end
    cmgOperation2 = Citizen
    cmgOperation2 = cmgOperation2.Wait
    text9 = 0
    cmgOperation2(text9)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f89085dfdd".
eventHandler3(workingValue11, workingValue13)
eventHandler3 = RegisterNetEvent
workingValue11 = "d63a2502ab"
-- Beginner: this function handles network event "d63a2502ab".

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1, localValue2, localValue3) ===
function workingValue13(localValue1, localValue2, localValue3)
  local cmgOperation, text8, cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2, stateFlag4, stateFlag5
  cmgOperation = dataCollection6.SearchVehicle
  rageUiOperation2.currentAction = cmgOperation
  cmgOperation = NetworkDoesNetworkIdExist
  text8 = localValue1
  cmgOperation = cmgOperation(text8)
  if not cmgOperation then
    return
  end
  cmgOperation = NetworkGetEntityFromNetworkId
  text8 = localValue1
  cmgOperation = cmgOperation(text8)
  if 0 == cmgOperation then
    return
  end
  text8 = rageUiOperation2
  if text8 then
    text8 = rageUiOperation2.active
    if text8 then
      text8 = DoesEntityExist
      cmgOperation2 = rageUiOperation2.handle
      text8 = text8(cmgOperation2)
      if text8 then
        goto continueAtStep27
      end
    end
  end
  return
  ::continueAtStep27::
  text8 = text10
  cmgOperation2 = dataCollection7.Info
  text9 = "Your dog is now searching the vehicle."
  text8(cmgOperation2, text9)
  text8 = TaskFollowToOffsetOfEntity
  cmgOperation2 = rageUiOperation2.handle
  text9 = cmgOperation
  cmgOperation3 = 0.0
  workingValue18 = 0.0
  stateFlag15 = 0.0
  number = 7.0
  stateFlag2 = -1
  stateFlag3 = 2.0
  dataCollection2 = true
  text8(cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2)
  text8 = Citizen
  text8 = text8.Wait
  cmgOperation2 = 8000
  text8(cmgOperation2)
  text8 = rageUiOperation2
  if text8 then
    text8 = rageUiOperation2.active
    if text8 then
      text8 = DoesEntityExist
      cmgOperation2 = rageUiOperation2.handle
      text8 = text8(cmgOperation2)
      if text8 then
        goto continueAtStep58
      end
    end
  end
  return
  ::continueAtStep58::
  if localValue2 or localValue3 then
    text8 = text10
    cmgOperation2 = dataCollection7.Alert
    text9 = "Your dog is indicating!"
    text8(cmgOperation2, text9)
    text8 = CMG
    text8 = text8.loadAnimDict
    cmgOperation2 = dataCollection8.Sit
    cmgOperation2 = cmgOperation2.dict
    -- Beginner: Load a GTA animation dictionary before using it.
    text8(cmgOperation2)
    text8 = TaskPlayAnim
    cmgOperation2 = rageUiOperation2.handle
    text9 = dataCollection8.Sit
    text9 = text9.dict
    cmgOperation3 = dataCollection8.Sit
    cmgOperation3 = cmgOperation3.anims
    cmgOperation3 = cmgOperation3.base
    workingValue18 = 8.0
    stateFlag15 = -8.0
    number = -1
    stateFlag2 = 2
    stateFlag3 = 0.0
    dataCollection2 = false
    stateFlag4 = false
    stateFlag5 = false
    -- Beginner: Play an animation on a ped.
    text8(cmgOperation2, text9, cmgOperation3, workingValue18, stateFlag15, number, stateFlag2, stateFlag3, dataCollection2, stateFlag4, stateFlag5)
    text8 = RemoveAnimDict
    cmgOperation2 = dataCollection8.Sit
    cmgOperation2 = cmgOperation2.dict
    text8(cmgOperation2)
  else
    text8 = text10
    cmgOperation2 = dataCollection7.Info
    text9 = "Your dog did not indicate."
    text8(cmgOperation2, text9)
    text8 = ClearPedTasks
    cmgOperation2 = rageUiOperation2.handle
    text8(cmgOperation2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d63a2502ab".
eventHandler3(workingValue11, workingValue13)
