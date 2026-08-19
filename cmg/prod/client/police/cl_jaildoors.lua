--[[
    LEVEL 1 BEGINNER GUIDE — Jaildoors
    =======================================

    File: cmg/prod/client/police/cl_jaildoors.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Jaildoors feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 19
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
local workingValue, workingValue5, dataCollection, createVector3, createVector32, createVector33, eventHandler, text9, number12, eventHandler2, cmgOperation, workingValue2
workingValue = nil
workingValue5 = nil
dataCollection = {}
createVector3 = vector3
createVector32 = 448.29037475586
createVector33 = -988.74841308594
eventHandler = 30.689607620239
createVector3 = createVector3(createVector32, createVector33, eventHandler)
createVector32 = vector3
createVector33 = -1083.501953125
eventHandler = -828.93444824219
text9 = 5.4578394889832
createVector32 = createVector32(createVector33, eventHandler, text9)
createVector33 = vector3
eventHandler = 1547.6666259766
text9 = 804.66296386719
number12 = 78.839279174805
createVector33, eventHandler, text9, number12, eventHandler2, cmgOperation, workingValue2 = createVector33(eventHandler, text9, number12)
dataCollection[1] = createVector3
dataCollection[2] = createVector32
dataCollection[3] = createVector33
dataCollection[4] = eventHandler
dataCollection[5] = text9
dataCollection[6] = number12
dataCollection[7] = eventHandler2
dataCollection[8] = cmgOperation
dataCollection[9] = workingValue2
createVector3 = false
createVector32 = 0

-- === HELPER FUNCTION (decompiler name: createVector33; parameters: localValue1) ===
function createVector33(localValue1)
  local localValue2, localValue3, stateFlag7
  localValue2 = BeginTextCommandPrint
  localValue3 = "STRING"
  localValue2(localValue3)
  localValue2 = AddTextComponentSubstringPlayerName
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = EndTextCommandPrint
  localValue3 = 1000
  stateFlag7 = true
  localValue2(localValue3, stateFlag7)
end
eventHandler = RegisterNetEvent
text9 = "447173e10e"
-- Beginner: this function handles network event "447173e10e".

-- === HELPER FUNCTION (decompiler name: number12; parameters: localValue1, localValue2, localValue3) ===
function number12(localValue1, localValue2, localValue3)
  local stateFlag7, number5, cmgOperation4, gameTime, cmgOperation5, gameTime2, cmgOperation6, stateFlag
  stateFlag7 = tonumber
  number5 = localValue2
  stateFlag7 = stateFlag7(number5)
  if not stateFlag7 then
    stateFlag7 = 60000
  end
  number5 = 1000
  if stateFlag7 < number5 then
    stateFlag7 = 60000
  end
  number5 = FreezeEntityPosition
  cmgOperation4 = CMG
  cmgOperation4 = cmgOperation4.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation4 = cmgOperation4()
  gameTime = true
  -- Beginner: Freeze or unfreeze an entity in place.
  number5(cmgOperation4, gameTime)
  number5 = RequestAnimDict
  cmgOperation4 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
  number5(cmgOperation4)
  while true do
    number5 = HasAnimDictLoaded
    cmgOperation4 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
    number5 = number5(cmgOperation4)
    if number5 then
      break
    end
    number5 = Citizen
    number5 = number5.Wait
    cmgOperation4 = 0
    number5(cmgOperation4)
  end
  number5 = true
  cmgOperation4 = false
  gameTime = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  gameTime = gameTime()
  cmgOperation5 = tCMG
  cmgOperation5 = cmgOperation5.notify
  gameTime2 = "~g~Lock Picking in progress, you can cancel with [Backspace]."
  -- Beginner: Show a notification to the player.
  cmgOperation5(gameTime2)
  cmgOperation5 = Citizen
  cmgOperation5 = cmgOperation5.CreateThread

  -- === HELPER FUNCTION: gameTime2() ===
  function gameTime2()
    local localValue12, cmgOperation3, text3, text5, text7, text8, number8, number10, number13, stateFlag8, stateFlag2, stateFlag4
    while true do
      localValue12 = number5
      if not localValue12 then
        break
      end
      localValue12 = IsEntityPlayingAnim
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      cmgOperation3 = cmgOperation3()
      text3 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
      text5 = "machinic_loop_mechandplayer"
      text7 = 3
      localValue12 = localValue12(cmgOperation3, text3, text5, text7)
      if not localValue12 then
        localValue12 = TaskPlayAnim
        cmgOperation3 = CMG
        cmgOperation3 = cmgOperation3.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgOperation3 = cmgOperation3()
        text3 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
        text5 = "machinic_loop_mechandplayer"
        text7 = 8.0
        text8 = -8.0
        number8 = -1
        number10 = 1
        number13 = 0
        stateFlag8 = false
        stateFlag2 = false
        stateFlag4 = false
        -- Beginner: Play an animation on a ped.
        localValue12(cmgOperation3, text3, text5, text7, text8, number8, number10, number13, stateFlag8, stateFlag2, stateFlag4)
      end
      localValue12 = math
      localValue12 = localValue12.floor
      cmgOperation3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      cmgOperation3 = cmgOperation3()
      text3 = gameTime
      cmgOperation3 = cmgOperation3 - text3
      text3 = stateFlag7
      cmgOperation3 = cmgOperation3 / text3
      cmgOperation3 = cmgOperation3 * 100
      localValue12 = localValue12(cmgOperation3)
      cmgOperation3 = createVector33
      text3 = "~y~Lock picking - "
      text5 = localValue12
      text7 = "%"
      text3 = text3 .. text5 .. text7
      cmgOperation3(text3)
      cmgOperation3 = EnableControlAction
      text3 = 0
      text5 = 177
      text7 = true
      cmgOperation3(text3, text5, text7)
      cmgOperation3 = IsControlJustPressed
      text3 = 0
      text5 = 177
      cmgOperation3 = cmgOperation3(text3, text5)
      if not cmgOperation3 then
        cmgOperation3 = IsDisabledControlJustPressed
        text3 = 0
        text5 = 177
        cmgOperation3 = cmgOperation3(text3, text5)
        if not cmgOperation3 then
          goto continueAtStep87
        end
      end
      cmgOperation3 = tCMG
      cmgOperation3 = cmgOperation3.notify
      text3 = "~r~Lock Picking cancelled."
      -- Beginner: Show a notification to the player.
      cmgOperation3(text3)
      cmgOperation3 = false
      number5 = cmgOperation3
      cmgOperation3 = true
      cmgOperation4 = cmgOperation3
      cmgOperation3 = ClearPedTasks
      text3 = CMG
      text3 = text3.getPlayerPed
      text3, text5, text7, text8, number8, number10, number13, stateFlag8, stateFlag2, stateFlag4 = text3()
      cmgOperation3(text3, text5, text7, text8, number8, number10, number13, stateFlag8, stateFlag2, stateFlag4)
      cmgOperation3 = FreezeEntityPosition
      text3 = CMG
      text3 = text3.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      text3 = text3()
      text5 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      cmgOperation3(text3, text5)
      cmgOperation3 = TriggerServerEvent
      text3 = "ed6628790e"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ed6628790e".
      cmgOperation3(text3)
      ::continueAtStep87::
      cmgOperation3 = Wait
      text3 = 0
      cmgOperation3(text3)
    end
    localValue12 = RemoveAnimDict
    cmgOperation3 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
    localValue12(cmgOperation3)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgOperation5(gameTime2)
  cmgOperation5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  cmgOperation5 = cmgOperation5()
  cmgOperation5 = cmgOperation5 + stateFlag7
  while true do
    gameTime2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    gameTime2 = gameTime2()
    if not (cmgOperation5 > gameTime2 and number5) then
      break
    end
    gameTime2 = Wait
    cmgOperation6 = 0
    gameTime2(cmgOperation6)
  end
  number5 = false
  gameTime2 = FreezeEntityPosition
  cmgOperation6 = CMG
  cmgOperation6 = cmgOperation6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation6 = cmgOperation6()
  stateFlag = false
  -- Beginner: Freeze or unfreeze an entity in place.
  gameTime2(cmgOperation6, stateFlag)
  gameTime2 = ClearPedTasks
  cmgOperation6 = CMG
  cmgOperation6 = cmgOperation6.getPlayerPed
  cmgOperation6, stateFlag = cmgOperation6()
  gameTime2(cmgOperation6, stateFlag)
  if localValue1 and not cmgOperation4 then
    gameTime2 = TriggerServerEvent
    cmgOperation6 = "b94b3a304e"
    stateFlag = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b94b3a304e".
    gameTime2(cmgOperation6, stateFlag)
  elseif not localValue1 and not cmgOperation4 then
    gameTime2 = tCMG
    gameTime2 = gameTime2.notify
    cmgOperation6 = "~r~Failed to lockpick the door."
    -- Beginner: Show a notification to the player.
    gameTime2(cmgOperation6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "447173e10e".
eventHandler(text9, number12)
eventHandler = RegisterNetEvent
text9 = "58a0527703"
-- Beginner: this function handles network event "58a0527703".

-- === HELPER FUNCTION (decompiler name: number12; parameters: localValue1, localValue2) ===
function number12(localValue1, localValue2)
  workingValue5 = localValue1
  workingValue = localValue2
end
eventHandler(text9, number12)
-- Beginner: this function handles network event "58a0527703".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "police.onduty.permission"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "nhs.onduty.permission"
    localValue1 = localValue1(localValue2)
    if not localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.hasClientPermission
      localValue2 = "prisonguard.onduty.permission"
      localValue1 = localValue1(localValue2)
      if not localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.hasClientPermission
        localValue2 = "borderforce.onduty.permission"
        localValue1 = localValue1(localValue2)
      end
    end
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "aa.onduty.permission"
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.hasClientSkill
  localValue3 = "lockpicking_police_door_lockpick"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue3 = localValue1.doorHash
  localValue2 = workingValue
  localValue2 = localValue2[localValue3]
  if 4 ~= localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = true
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: number12; parameters: localValue1) ===
function number12(localValue1)
  local localValue2, localValue3, stateFlag7, number5, cmgOperation4, gameTime, cmgOperation5
  localValue2 = eventHandler
  localValue2 = localValue2()
  if not localValue2 then
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  localValue2, localValue3 = localValue2()
  if 0 == localValue2 or not localValue3 then
    return
  end
  stateFlag7 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag7 = stateFlag7()
  number5 = createVector32
  number5 = stateFlag7 - number5
  cmgOperation4 = 2500
  if number5 < cmgOperation4 then
    return
  end
  createVector32 = stateFlag7
  number5 = TriggerServerEvent
  cmgOperation4 = "7ce743191c"
  gameTime = localValue1.doorHash
  cmgOperation5 = 5
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7ce743191c".
  number5(cmgOperation4, gameTime, cmgOperation5)
end
eventHandler2 = AddEventHandler
cmgOperation = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, stateFlag7, number5, cmgOperation4, gameTime, cmgOperation5, gameTime2, cmgOperation6, stateFlag, text, workingValue3, number, number2, stateFlag6, text2, cmgOperation2, workingValue4, stringHelper, number3, number4, workingValue6, workingValue7, workingValue8, workingValue9
  if localValue2 then
    while true do
      localValue3 = workingValue
      if nil ~= localValue3 then
        localValue3 = workingValue5
        if nil ~= localValue3 then
          break
        end
      end
      localValue3 = Citizen
      localValue3 = localValue3.Wait
      stateFlag7 = 1000
      localValue3(stateFlag7)
    end

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, cmgOperation3
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: none) ===
    function stateFlag7()
      local localValue12, cmgOperation3
    end

    -- === HELPER FUNCTION (decompiler name: number5; parameters: localValue12) ===
    function number5(localValue12)
      local cmgOperation3, text3, text5, text7, text8, number8, number10, number13
      cmgOperation3 = ""
      text3 = eventHandler
      text3 = text3()
      if not text3 then
        text3 = localValue12.isAllowlisted
        if text3 then
          text3 = createVector3
          if text3 then
            goto continueAtStep17
          end
        end
        text3 = CMG
        text3 = text3.isStaffedOnClient
        text3 = text3()
        if not text3 then
          goto continueAtStep18
        end
      end
      ::continueAtStep17::
      cmgOperation3 = " (E to toggle lock)"
      ::continueAtStep18::
      text3 = ""
      text5 = text9
      text7 = localValue12
      text5 = text5(text7)
      if text5 then
        text3 = " (G to lockpick)"
      end
      text7 = localValue12.doorHash
      text5 = workingValue
      text5 = text5[text7]
      if 5 ~= text5 then
        text7 = localValue12.doorHash
        text5 = workingValue
        text5 = text5[text7]
        if 0 ~= text5 then
          goto continueAtStep46
        end
      end
      text5 = CMG
      text5 = text5.DrawText3D
      text7 = localValue12.position
      text8 = "\240\159\148\147"
      number8 = cmgOperation3
      number10 = text3
      text8 = text8 .. number8 .. number10
      number8 = 0.45
      number10 = 4
      text5(text7, text8, number8, number10)
      goto continueAtStep56
      ::continueAtStep46::
      text5 = CMG
      text5 = text5.DrawText3D
      text7 = localValue12.position
      text8 = "\240\159\148\146"
      number8 = cmgOperation3
      number10 = text3
      text8 = text8 .. number8 .. number10
      number8 = 0.45
      number10 = 4
      text5(text7, text8, number8, number10)
      ::continueAtStep56::
      text5 = IsControlJustPressed
      text7 = 0
      text8 = 47
      text5 = text5(text7, text8)
      if text5 then
        text5 = text9
        text7 = localValue12
        text5 = text5(text7)
        if text5 then
          text5 = CMG
          text5 = text5.setIgnoreRadialInputThisFrame
          text5()
          text5 = tCMG
          text5 = text5.isInGreenzone
          text7 = false
          text5 = text5(text7)
          if text5 then
            text5 = tCMG
            text5 = text5.notify
            text7 = "~r~You can not lockpick in a greenzone"
            -- Beginner: Show a notification to the player.
            text5(text7)
          else
            text5 = CMG
            text5 = text5.getSelectedEntity
            text5, text7 = text5()
            if not text5 or 1 ~= text7 then
              text8 = TriggerServerEvent
              number8 = "f98fb692bf"
              number10 = localValue12.doorHash
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f98fb692bf".
              text8(number8, number10)
            end
          end
        end
      end
      text5 = IsControlJustPressed
      text7 = 0
      text8 = 38
      text5 = text5(text7, text8)
      if text5 then
        text5 = eventHandler
        text5 = text5()
        if not text5 then
          text5 = localValue12.isAllowlisted
          if text5 then
            text5 = createVector3
            if text5 then
              goto continueAtStep113
            end
          end
          text5 = CMG
          text5 = text5.isStaffedOnClient
          text5 = text5()
          if not text5 then
            goto continueAtStep147
          end
        end
        ::continueAtStep113::
        text5 = CMG
        text5 = text5.setIgnoreRadialInputThisFrame
        text5()
        text5 = CMG
        text5 = text5.getSelectedEntity
        text5, text7 = text5()
        if not text5 or 1 ~= text7 then
          text8 = CMG
          text8 = text8.loadAnimDict
          number8 = "anim@heists@keycard@"
          -- Beginner: Load a GTA animation dictionary before using it.
          text8(number8)
          text8 = Citizen
          text8 = text8.CreateThread

          -- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
          function number8()
            local waitCall, playerPed, text4, text6, number6, number7, number9, number11, number14, stateFlag9, stateFlag3, stateFlag5
            waitCall = TaskPlayAnim
            playerPed = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            playerPed = playerPed()
            text4 = "anim@heists@keycard@"
            text6 = "exit"
            number6 = 5.0
            number7 = 1.0
            number9 = -1
            number11 = 48
            number14 = 0
            stateFlag9 = false
            stateFlag3 = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            waitCall(playerPed, text4, text6, number6, number7, number9, number11, number14, stateFlag9, stateFlag3, stateFlag5)
            waitCall = Wait
            playerPed = 1200
            waitCall(playerPed)
            waitCall = ClearPedTasks
            playerPed = PlayerPedId
            playerPed, text4, text6, number6, number7, number9, number11, number14, stateFlag9, stateFlag3, stateFlag5 = playerPed()
            waitCall(playerPed, text4, text6, number6, number7, number9, number11, number14, stateFlag9, stateFlag3, stateFlag5)
            waitCall = RemoveAnimDict
            playerPed = "anim@heists@keycard@"
            waitCall(playerPed)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          text8(number8)
          number8 = localValue12.doorHash
          text8 = workingValue
          text8 = text8[number8]
          if 4 == text8 then
            text8 = TriggerServerEvent
            number8 = "7ce743191c"
            number10 = localValue12.doorHash
            number13 = 5
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7ce743191c".
            text8(number8, number10, number13)
          else
            text8 = TriggerServerEvent
            number8 = "7ce743191c"
            number10 = localValue12.doorHash
            number13 = 4
            text8(number8, number10, number13)
          end
        end
      end
      ::continueAtStep147::
    end
    cmgOperation4 = 1
    gameTime = workingValue5
    gameTime = #gameTime
    cmgOperation5 = 1
    for gameTime2 = cmgOperation4, gameTime, cmgOperation5 do
      cmgOperation6 = {}
      stateFlag = workingValue5
      stateFlag = stateFlag[gameTime2]
      stateFlag = stateFlag.doorHash
      cmgOperation6.doorHash = stateFlag
      stateFlag = workingValue5
      stateFlag = stateFlag[gameTime2]
      stateFlag = stateFlag.position
      cmgOperation6.position = stateFlag
      stateFlag = workingValue5
      stateFlag = stateFlag[gameTime2]
      stateFlag = stateFlag.isAllowlisted
      cmgOperation6.isAllowlisted = stateFlag
      stateFlag = CMG
      stateFlag = stateFlag.createArea
      text = "openPoliceDoor_"
      workingValue3 = workingValue5
      workingValue3 = workingValue3[gameTime2]
      workingValue3 = workingValue3.doorHash
      text = text .. workingValue3
      workingValue3 = workingValue5
      workingValue3 = workingValue3[gameTime2]
      workingValue3 = workingValue3.position
      number = 1.5
      number2 = 5
      stateFlag6 = localValue3
      text2 = stateFlag7
      cmgOperation2 = number5
      workingValue4 = cmgOperation6
      -- Beginner: Create an interaction area around a world position.
      stateFlag(text, workingValue3, number, number2, stateFlag6, text2, cmgOperation2, workingValue4)
      stateFlag = workingValue5
      stateFlag = stateFlag[gameTime2]
      stateFlag = stateFlag.autoVehiclePositions
      if stateFlag then
        stateFlag = pairs
        text = workingValue5
        text = text[gameTime2]
        text = text.autoVehiclePositions
        stateFlag, text, workingValue3, number = stateFlag(text)
        for number2, stateFlag6 in stateFlag, text, workingValue3, number do
          text2 = "openPoliceDoorAuto_"
          cmgOperation2 = tostring
          workingValue4 = workingValue5
          workingValue4 = workingValue4[gameTime2]
          workingValue4 = workingValue4.doorHash
          cmgOperation2 = cmgOperation2(workingValue4)
          workingValue4 = "_"
          stringHelper = tostring
          number3 = number2
          stringHelper = stringHelper(number3)
          text2 = text2 .. cmgOperation2 .. workingValue4 .. stringHelper
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.createArea
          workingValue4 = text2
          stringHelper = stateFlag6
          number3 = 7.5
          number4 = 10.0

          -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
          function workingValue6()
            local localValue12, cmgOperation3
          end

          -- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
          function workingValue7()
            local localValue12, cmgOperation3
          end
          workingValue8 = number12
          workingValue9 = cmgOperation6
          cmgOperation2(workingValue4, stringHelper, number3, number4, workingValue6, workingValue7, workingValue8, workingValue9)
        end
      end
    end
    cmgOperation4 = 1
    gameTime = workingValue5
    gameTime = #gameTime
    cmgOperation5 = 1
    for gameTime2 = cmgOperation4, gameTime, cmgOperation5 do
      cmgOperation6 = AddDoorToSystem
      stateFlag = workingValue5
      stateFlag = stateFlag[gameTime2]
      stateFlag = stateFlag.doorHash
      text = workingValue5
      text = text[gameTime2]
      text = text.modelHash
      workingValue3 = workingValue5
      workingValue3 = workingValue3[gameTime2]
      workingValue3 = workingValue3.position
      workingValue3 = workingValue3.x
      number = workingValue5
      number = number[gameTime2]
      number = number.position
      number = number.y
      number2 = workingValue5
      number2 = number2[gameTime2]
      number2 = number2.position
      number2 = number2.z
      stateFlag6 = false
      text2 = false
      cmgOperation2 = false
      cmgOperation6(stateFlag, text, workingValue3, number, number2, stateFlag6, text2, cmgOperation2)
      cmgOperation6 = DoorSystemSetDoorState
      stateFlag = workingValue5
      stateFlag = stateFlag[gameTime2]
      stateFlag = stateFlag.doorHash
      text = workingValue5
      text = text[gameTime2]
      workingValue3 = text.doorHash
      text = workingValue
      text = text[workingValue3]
      workingValue3 = false
      number = false
      cmgOperation6(stateFlag, text, workingValue3, number)
    end

    -- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
    function cmgOperation4()
      local localValue12, cmgOperation3, text3, text5, text7, text8, number8, number10, number13, stateFlag8, stateFlag2
      localValue12 = CMG
      localValue12 = localValue12.TriggerServerCallback
      cmgOperation3 = "599ba2320e"
      localValue12 = localValue12(cmgOperation3)
      workingValue = localValue12
      localValue12 = pairs
      cmgOperation3 = workingValue
      localValue12, cmgOperation3, text3, text5 = localValue12(cmgOperation3)
      for text7, text8 in localValue12, cmgOperation3, text3, text5 do
        number8 = DoorSystemSetDoorState
        number10 = text7
        number13 = text8
        stateFlag8 = false
        stateFlag2 = false
        number8(number10, number13, stateFlag8, stateFlag2)
        if 0 == text8 or 5 == text8 then
          number8 = DoorSystemSetHoldOpen
          number10 = text7
          number13 = true
          number8(number10, number13)
        else
          number8 = DoorSystemSetHoldOpen
          number10 = text7
          number13 = false
          number8(number10, number13)
        end
      end
    end
    gameTime = 1
    cmgOperation5 = dataCollection
    cmgOperation5 = #cmgOperation5
    gameTime2 = 1
    for cmgOperation6 = gameTime, cmgOperation5, gameTime2 do
      stateFlag = CMG
      stateFlag = stateFlag.createArea
      text = "policeSyncDoorsOnAreaEnter"
      workingValue3 = dataCollection
      workingValue3 = workingValue3[cmgOperation6]
      number = 250
      number2 = 250
      stateFlag6 = cmgOperation4

      -- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
      function text2()
        local localValue12, cmgOperation3
      end

      -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
      function cmgOperation2()
        local localValue12, cmgOperation3
      end
      workingValue4 = {}
      -- Beginner: Create an interaction area around a world position.
      stateFlag(text, workingValue3, number, number2, stateFlag6, text2, cmgOperation2, workingValue4)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandler2(cmgOperation, workingValue2)
eventHandler2 = RegisterNetEvent
cmgOperation = "f620b4350e"
-- Beginner: this function handles network event "f620b4350e".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, stateFlag7, number5, cmgOperation4, gameTime
  localValue3 = DoorSystemSetDoorState
  stateFlag7 = localValue1
  number5 = localValue2
  cmgOperation4 = false
  gameTime = false
  localValue3(stateFlag7, number5, cmgOperation4, gameTime)
  if 0 == localValue2 or 5 == localValue2 then
    localValue3 = DoorSystemSetHoldOpen
    stateFlag7 = localValue1
    number5 = true
    localValue3(stateFlag7, number5)
  else
    localValue3 = DoorSystemSetHoldOpen
    stateFlag7 = localValue1
    number5 = false
    localValue3(stateFlag7, number5)
  end
  localValue3 = workingValue
  if localValue3 then
    localValue3 = workingValue
    localValue3 = localValue3[localValue1]
    if nil ~= localValue3 then
      localValue3 = workingValue
      localValue3[localValue1] = localValue2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f620b4350e".
eventHandler2(cmgOperation, workingValue2)
eventHandler2 = RegisterNetEvent
cmgOperation = "9827691fb7"
-- Beginner: this function handles network event "9827691fb7".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2
  localValue1 = true
  createVector3 = localValue1
end
eventHandler2(cmgOperation, workingValue2)
