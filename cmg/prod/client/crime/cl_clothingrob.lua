--[[
    LEVEL 1 BEGINNER GUIDE — Clothingrob
    =========================================

    File: cmg/prod/client/crime/cl_clothingrob.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Clothingrob feature.

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
local cmgOperation, dataCollection, number9, workingValue6, eventHandler2, text3, eventHandler3, backgroundThread, workingValue11, number13, eventHandler, text, number2
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection = "cfg/cfg_clothingrob"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection)
dataCollection = {}
number9 = 0

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, workingValue7, stateFlag13, stateFlag14
  localValue3 = SetPedCanRagdollFromPlayerImpact
  workingValue7 = localValue1
  stateFlag13 = false
  localValue3(workingValue7, stateFlag13)
  localValue3 = SetBlockingOfNonTemporaryEvents
  workingValue7 = localValue1
  stateFlag13 = true
  localValue3(workingValue7, stateFlag13)
  localValue3 = SetPedResetFlag
  workingValue7 = localValue1
  stateFlag13 = 249
  stateFlag14 = true
  localValue3(workingValue7, stateFlag13, stateFlag14)
  localValue3 = SetPedConfigFlag
  workingValue7 = localValue1
  stateFlag13 = 185
  stateFlag14 = true
  localValue3(workingValue7, stateFlag13, stateFlag14)
  localValue3 = SetPedConfigFlag
  workingValue7 = localValue1
  stateFlag13 = 108
  stateFlag14 = true
  localValue3(workingValue7, stateFlag13, stateFlag14)
  localValue3 = SetEntityCollision
  workingValue7 = localValue1
  stateFlag13 = not localValue2
  stateFlag14 = not localValue2
  localValue3(workingValue7, stateFlag13, stateFlag14)
  localValue3 = FreezeEntityPosition
  workingValue7 = localValue1
  stateFlag13 = localValue2
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(workingValue7, stateFlag13)
end
eventHandler2 = RegisterNetEvent
text3 = "9f0a898a2d"
-- Beginner: this function handles network event "9f0a898a2d".

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1, localValue2, localValue3) ===
function eventHandler3(localValue1, localValue2, localValue3)
  local workingValue7, stateFlag13, stateFlag14, workingValue9, stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading, number3
  workingValue7 = cmgOperation.locations
  workingValue7 = workingValue7[localValue1]
  stateFlag13 = dataCollection
  stateFlag13 = stateFlag13[localValue1]
  stateFlag13.isRobbed = localValue2
  stateFlag14 = DoesEntityExist
  workingValue9 = stateFlag13.ped
  stateFlag14 = stateFlag14(workingValue9)
  if stateFlag14 then
    stateFlag14 = IsEntityDead
    workingValue9 = stateFlag13.ped
    stateFlag14 = stateFlag14(workingValue9)
    if not stateFlag14 then
      if localValue2 then
        stateFlag14 = workingValue6
        workingValue9 = stateFlag13.ped
        stateFlag15 = false
        stateFlag14(workingValue9, stateFlag15)
        stateFlag14 = GetOffsetFromEntityInWorldCoords
        workingValue9 = stateFlag13.ped
        stateFlag15 = 1.5
        number12 = 0.0
        number14 = 0.0
        stateFlag14 = stateFlag14(workingValue9, stateFlag15, number12, number14)
        workingValue9 = OpenSequenceTask
        workingValue9 = workingValue9()
        stateFlag15 = cmgOperation.locations
        stateFlag15 = stateFlag15[localValue1]
        stateFlag15 = stateFlag15.hideDirection
        if "right" == stateFlag15 then
          stateFlag15 = 1.5
          if stateFlag15 then
            goto continueAtStep39
          end
        end
        stateFlag15 = -1.5
        ::continueAtStep39::
        number12 = TaskGoStraightToCoord
        number14 = 0
        number = stateFlag14.x
        stateFlag2 = stateFlag14.y
        stateFlag4 = stateFlag14.z
        stateFlag5 = stateFlag15
        stateFlag6 = -1
        heading = GetEntityHeading
        number3 = stateFlag13.ped
        -- Beginner: result below is heading.
        heading = heading(number3)
        number3 = 0.2
        number12(number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading, number3)
        number12 = TaskCower
        number14 = 0
        number = -1
        number12(number14, number)
        number12 = CloseSequenceTask
        number14 = workingValue9
        number12(number14)
        number12 = TaskPerformSequenceLocally
        number14 = stateFlag13.ped
        number = workingValue9
        number12(number14, number)
        number12 = ClearSequenceTask
        number14 = workingValue9
        number12(number14)
      else
        stateFlag14 = ClearPedTasksImmediately
        workingValue9 = stateFlag13.ped
        stateFlag14(workingValue9)
        stateFlag14 = SetEntityCoords
        workingValue9 = stateFlag13.ped
        stateFlag15 = workingValue7.position
        stateFlag15 = stateFlag15.x
        number12 = workingValue7.position
        number12 = number12.y
        number14 = workingValue7.position
        number14 = number14.z
        number = false
        stateFlag2 = false
        stateFlag4 = false
        stateFlag5 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        stateFlag14(workingValue9, stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5)
        stateFlag14 = SetEntityHeading
        workingValue9 = stateFlag13.ped
        stateFlag15 = workingValue7.position
        stateFlag15 = stateFlag15.w
        -- Beginner: Change the direction an entity is facing.
        stateFlag14(workingValue9, stateFlag15)
        stateFlag14 = workingValue6
        workingValue9 = stateFlag13.ped
        stateFlag15 = true
        stateFlag14(workingValue9, stateFlag15)
      end
    end
  end
  if localValue2 and not localValue3 then
    stateFlag14 = Citizen
    stateFlag14 = stateFlag14.Wait
    workingValue9 = 8000
    stateFlag14(workingValue9)
    while true do
      stateFlag14 = RequestScriptAudioBank
      workingValue9 = "Alarms"
      stateFlag15 = false
      stateFlag14 = stateFlag14(workingValue9, stateFlag15)
      if stateFlag14 then
        break
      end
      stateFlag14 = Citizen
      stateFlag14 = stateFlag14.Wait
      workingValue9 = 0
      stateFlag14(workingValue9)
    end
    stateFlag14 = GetSoundId
    -- Beginner: result below is soundHandle.
    stateFlag14 = stateFlag14()
    workingValue9 = PlaySoundFromCoord
    stateFlag15 = stateFlag14
    number12 = "Burglar_Bell"
    number14 = workingValue7.position
    number14 = number14.x
    number = workingValue7.position
    number = number.y
    stateFlag2 = workingValue7.position
    stateFlag2 = stateFlag2.z
    stateFlag4 = "Generic_Alarms"
    stateFlag5 = false
    stateFlag6 = 0.05
    heading = false
    workingValue9(stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading)
    workingValue9 = Citizen
    workingValue9 = workingValue9.Wait
    stateFlag15 = 120000
    workingValue9(stateFlag15)
    workingValue9 = StopSound
    stateFlag15 = stateFlag14
    workingValue9(stateFlag15)
    workingValue9 = ReleaseSoundId
    stateFlag15 = stateFlag14
    workingValue9(stateFlag15)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9f0a898a2d".
eventHandler2(text3, eventHandler3)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2, localValue3) ===
function eventHandler2(localValue1, localValue2, localValue3)
  local workingValue7, stateFlag13, stateFlag14, workingValue9, stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading
  if localValue3 then
    workingValue7 = Citizen
    workingValue7 = workingValue7.Wait
    stateFlag13 = 2000
    workingValue7(stateFlag13)
  end
  workingValue7 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue7 = workingValue7()
  stateFlag13 = CMG
  stateFlag13 = stateFlag13.loadAnimDict
  stateFlag14 = "anim@heists@prison_heiststation@cop_reactions"
  -- Beginner: Load a GTA animation dictionary before using it.
  stateFlag13(stateFlag14)
  stateFlag13 = TaskPlayAnim
  stateFlag14 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stateFlag14 = stateFlag14()
  workingValue9 = "anim@heists@prison_heiststation@cop_reactions"
  stateFlag15 = "cop_b_idle"
  number12 = 8.0
  number14 = 8.0
  number = -1
  stateFlag2 = 51
  stateFlag4 = 1.0
  stateFlag5 = false
  stateFlag6 = false
  heading = false
  -- Beginner: Play an animation on a ped.
  stateFlag13(stateFlag14, workingValue9, stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading)
  stateFlag13 = RemoveAnimDict
  stateFlag14 = "anim@heists@prison_heiststation@cop_reactions"
  stateFlag13(stateFlag14)
  stateFlag13 = Citizen
  stateFlag13 = stateFlag13.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: none) ===
  function stateFlag14()
    local localValue12, text2, workingValue5, stateFlag12, workingValue8
    localValue12 = CMG
    localValue12 = localValue12.startCircularProgressBar
    text2 = ""
    workingValue5 = localValue2
    stateFlag12 = nil

    -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
    function workingValue8()
      local workingValue, workingValue2
    end
    localValue12(text2, workingValue5, stateFlag12, workingValue8)
  end
  stateFlag13(stateFlag14)
  stateFlag13 = Citizen
  stateFlag13 = stateFlag13.Wait
  stateFlag14 = 0
  stateFlag13(stateFlag14)
  stateFlag13 = true
  stateFlag14 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag14 = stateFlag14()
  while stateFlag13 do
    workingValue9 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workingValue9 = workingValue9()
    workingValue9 = workingValue9 - stateFlag14
    if not (localValue2 > workingValue9) then
      break
    end
    workingValue9 = CMG
    workingValue9 = workingValue9.getPlayerCoords
    -- Beginner: result below is playerCoords.
    workingValue9 = workingValue9()
    stateFlag15 = localValue1.position
    stateFlag15 = stateFlag15.xyz
    workingValue9 = workingValue9 - stateFlag15
    workingValue9 = #workingValue9
    stateFlag15 = 1.25
    if not (workingValue9 > stateFlag15) then
      stateFlag15 = IsEntityPlayingAnim
      number12 = workingValue7
      number14 = "anim@heists@prison_heiststation@cop_reactions"
      number = "cop_b_idle"
      stateFlag2 = 3
      stateFlag15 = stateFlag15(number12, number14, number, stateFlag2)
      if stateFlag15 then
        goto continueAtStep79
      end
    end
    stateFlag15 = CMG
    stateFlag15 = stateFlag15.stopCircularProgressBar
    stateFlag15()
    stateFlag15 = StopAnimTask
    number12 = workingValue7
    number14 = "anim@heists@prison_heiststation@cop_reactions"
    number = "cop_b_idle"
    stateFlag2 = 1.0
    stateFlag15(number12, number14, number, stateFlag2)
    stateFlag13 = false
    do break end
    ::continueAtStep79::
    stateFlag15 = Citizen
    stateFlag15 = stateFlag15.Wait
    number12 = 0
    stateFlag15(number12)
  end
  if not stateFlag13 then
    workingValue9 = notify
    stateFlag15 = "~r~Failed to break open the cash register."
    -- Beginner: Show a notification to the player.
    workingValue9(stateFlag15)
  end
  return stateFlag13
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, workingValue7, stateFlag13, stateFlag14
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = 500
  localValue2(localValue3)
  localValue2 = true
  localValue3 = true
  workingValue7 = Citizen
  workingValue7 = workingValue7.CreateThread

  -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
  function stateFlag13()
    local localValue12, text2
    while true do
      localValue12 = localValue3
      if not localValue12 then
        break
      end
      localValue12 = drawNativeNotification
      text2 = "Press ~INPUT_JUMP~ in the correct area break the bolts."
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(text2)
      localValue12 = Citizen
      localValue12 = localValue12.Wait
      text2 = 0
      localValue12(text2)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  workingValue7(stateFlag13)
  workingValue7 = CMG
  workingValue7 = workingValue7.minigameCircularProgressBar
  stateFlag13 = {}
  stateFlag13.Difficulty = "Medium"
  stateFlag13.Timeout = 20000

  -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue12) ===
  function stateFlag14(localValue12)
    local text2
    localValue2 = localValue12
    text2 = false
    localValue3 = text2
  end
  stateFlag13.onComplete = stateFlag14

  -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: none) ===
  function stateFlag14()
    local localValue12, text2
    localValue12 = false
    localValue2 = localValue12
    localValue12 = false
    localValue3 = localValue12
  end
  stateFlag13.onTimeout = stateFlag14
  workingValue7(stateFlag13)
  while localValue3 do
    workingValue7 = CMG
    workingValue7 = workingValue7.getPlayerCoords
    -- Beginner: result below is playerCoords.
    workingValue7 = workingValue7()
    stateFlag13 = localValue1.position
    stateFlag13 = stateFlag13.xyz
    workingValue7 = workingValue7 - stateFlag13
    workingValue7 = #workingValue7
    if workingValue7 > 2.0 then
      localValue2 = false
      localValue3 = false
      break
    end
    workingValue7 = Citizen
    workingValue7 = workingValue7.Wait
    stateFlag13 = 0
    workingValue7(stateFlag13)
  end
  if not localValue2 then
    workingValue7 = notify
    stateFlag13 = "~r~Failed to break the bolts."
    -- Beginner: Show a notification to the player.
    workingValue7(stateFlag13)
  end
  return localValue2
end
eventHandler3 = RegisterNetEvent
backgroundThread = "934da7820b"
-- Beginner: this function handles network event "934da7820b".

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1, localValue2) ===
function workingValue11(localValue1, localValue2)
  local localValue3, workingValue7, stateFlag13, stateFlag14, workingValue9, stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading, number3, stateFlag7, number4, number5, number6, number7, stateFlag8, stateFlag9, number8, stateFlag10, workingValue3, workingValue4, stateFlag11
  localValue3 = cmgOperation.locations
  localValue3 = localValue3[localValue1]
  workingValue7 = dataCollection
  workingValue7 = workingValue7[localValue1]
  while true do
    stateFlag13 = DrawMarker
    stateFlag14 = 1
    workingValue9 = localValue3.position
    workingValue9 = workingValue9.x
    stateFlag15 = localValue3.position
    stateFlag15 = stateFlag15.y
    number12 = localValue3.position
    number12 = number12.z
    number14 = 0.0
    number = 0.0
    stateFlag2 = 0.0
    stateFlag4 = 0.0
    stateFlag5 = 0.0
    stateFlag6 = 0.0
    heading = 0.6
    number3 = 0.6
    stateFlag7 = 0.6
    number4 = 255
    number5 = 255
    number6 = 0
    number7 = 80
    stateFlag8 = false
    stateFlag9 = false
    number8 = 2
    stateFlag10 = false
    workingValue3 = nil
    workingValue4 = nil
    stateFlag11 = false
    stateFlag13(stateFlag14, workingValue9, stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading, number3, stateFlag7, number4, number5, number6, number7, stateFlag8, stateFlag9, number8, stateFlag10, workingValue3, workingValue4, stateFlag11)
    stateFlag13 = CMG
    stateFlag13 = stateFlag13.getPlayerCoords
    -- Beginner: result below is playerCoords.
    stateFlag13 = stateFlag13()
    stateFlag14 = localValue3.position
    stateFlag14 = stateFlag14.xyz
    stateFlag13 = stateFlag13 - stateFlag14
    stateFlag13 = #stateFlag13
    if not (stateFlag13 > 75.0) then
      stateFlag14 = IsEntityDead
      workingValue9 = PlayerPedId
      workingValue9, stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading, number3, stateFlag7, number4, number5, number6, number7, stateFlag8, stateFlag9, number8, stateFlag10, workingValue3, workingValue4, stateFlag11 = workingValue9()
      stateFlag14 = stateFlag14(workingValue9, stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading, number3, stateFlag7, number4, number5, number6, number7, stateFlag8, stateFlag9, number8, stateFlag10, workingValue3, workingValue4, stateFlag11)
      if not stateFlag14 then
        stateFlag14 = workingValue7.isRobbed
        if stateFlag14 then
          goto continueAtStep54
        end
      end
    end
    return
    goto continueAtStep101
    ::continueAtStep54::
    if stateFlag13 < 2.0 then
      stateFlag14 = drawNativeNotification
      workingValue9 = "Presss ~INPUT_CONTEXT~ to break open the cash register."
      -- Beginner: Show a GTA-style notification/help prompt.
      stateFlag14(workingValue9)
      stateFlag14 = IsControlJustPressed
      workingValue9 = 0
      stateFlag15 = 51
      stateFlag14 = stateFlag14(workingValue9, stateFlag15)
      if stateFlag14 then
        stateFlag14 = math
        stateFlag14 = stateFlag14.floor
        workingValue9 = localValue2 / 2
        stateFlag14 = stateFlag14(workingValue9)
        workingValue9 = eventHandler2
        stateFlag15 = localValue3
        number12 = stateFlag14
        number14 = false
        workingValue9 = workingValue9(stateFlag15, number12, number14)
        if workingValue9 then
          workingValue9 = text3
          stateFlag15 = localValue3
          workingValue9 = workingValue9(stateFlag15)
          if workingValue9 then
            workingValue9 = eventHandler2
            stateFlag15 = localValue3
            number12 = stateFlag14
            number14 = true
            workingValue9 = workingValue9(stateFlag15, number12, number14)
            if workingValue9 then
              workingValue9 = TriggerServerEvent
              stateFlag15 = "b7f88b275b"
              number12 = localValue1
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b7f88b275b".
              workingValue9(stateFlag15, number12)
              workingValue9 = StopAnimTask
              stateFlag15 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              stateFlag15 = stateFlag15()
              number12 = "anim@heists@prison_heiststation@cop_reactions"
              number14 = "cop_b_idle"
              number = 1.0
              workingValue9(stateFlag15, number12, number14, number)
              return
            end
          end
        end
      end
    end
    ::continueAtStep101::
    stateFlag14 = Citizen
    stateFlag14 = stateFlag14.Wait
    workingValue9 = 0
    stateFlag14(workingValue9)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "934da7820b".
eventHandler3(backgroundThread, workingValue11)

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, workingValue7, stateFlag13, stateFlag14, workingValue9, stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5
  localValue2 = IsPedArmed
  localValue3 = localValue1.playerPed
  workingValue7 = 6
  localValue2 = localValue2(localValue3, workingValue7)
  if localValue2 then
    localValue2 = IsPlayerFreeAiming
    localValue3 = localValue1.playerId
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.isEmergencyService
      localValue2 = localValue2()
      if not localValue2 then
        goto continueAtStep18
      end
    end
  end
  return
  ::continueAtStep18::
  localValue2 = GetEntityPlayerIsFreeAimingAt
  localValue3 = localValue1.playerId
  localValue2, localValue3 = localValue2(localValue3)
  if not localValue2 or 0 == localValue3 then
    return
  end
  workingValue7 = pairs
  stateFlag13 = dataCollection
  workingValue7, stateFlag13, stateFlag14, workingValue9 = workingValue7(stateFlag13)
  for stateFlag15, number12 in workingValue7, stateFlag13, stateFlag14, workingValue9 do
    number14 = number12.ped
    if number14 == localValue3 then
      number14 = number12.isRobbed
      if not number14 then
        number14 = cmgOperation.locations
        number14 = number14[stateFlag15]
        number = CMG
        number = number.getPlayerCoords
        -- Beginner: result below is playerCoords.
        number = number()
        stateFlag2 = number14.position
        stateFlag2 = stateFlag2.xyz
        number = number - stateFlag2
        number = #number
        if number < 10.0 then
          number = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          number = number()
          stateFlag2 = number9
          stateFlag2 = number - stateFlag2
          stateFlag4 = 2000
          if stateFlag2 > stateFlag4 then
            stateFlag2 = TriggerServerEvent
            stateFlag4 = "f9e7d5459a"
            stateFlag5 = stateFlag15
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9e7d5459a".
            stateFlag2(stateFlag4, stateFlag5)
            number9 = number
          end
          break
        end
      end
    end
  end
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3, workingValue7, stateFlag13, stateFlag14, workingValue9, stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading
  localValue1 = pairs
  localValue2 = cmgOperation.locations
  localValue1, localValue2, localValue3, workingValue7 = localValue1(localValue2)
  for stateFlag13, stateFlag14 in localValue1, localValue2, localValue3, workingValue7 do
    workingValue9 = dataCollection
    stateFlag15 = {}
    stateFlag15.ped = 0
    stateFlag15.isRobbed = false
    workingValue9[stateFlag13] = stateFlag15
    workingValue9 = CMG
    workingValue9 = workingValue9.createDynamicPed
    stateFlag15 = stateFlag14.model
    number12 = stateFlag14.position
    number12 = number12.xyz
    number14 = stateFlag14.position
    number14 = number14.w
    number = false
    stateFlag2 = nil
    stateFlag4 = nil
    stateFlag5 = 50.0
    stateFlag6 = nil

    -- === HELPER FUNCTION: heading(localValue12) ===
    function heading(localValue12)
      local text2, workingValue5, stateFlag12, workingValue8, number10, number11, workingValue10, stateFlag16, stateFlag17, stateFlag, stateFlag3
      workingValue5 = stateFlag13
      text2 = dataCollection
      text2 = text2[workingValue5]
      text2.ped = localValue12
      workingValue5 = stateFlag13
      text2 = dataCollection
      text2 = text2[workingValue5]
      text2 = text2.isRobbed
      if text2 then
        text2 = IsEntityDead
        stateFlag12 = stateFlag13
        workingValue5 = dataCollection
        workingValue5 = workingValue5[stateFlag12]
        workingValue5 = workingValue5.ped
        text2 = text2(workingValue5)
        if text2 then
          goto continueAtStep58
        end
        text2 = workingValue6
        workingValue5 = localValue12
        stateFlag12 = false
        text2(workingValue5, stateFlag12)
        text2 = cmgOperation.locations
        workingValue5 = stateFlag13
        text2 = text2[workingValue5]
        text2 = text2.hideDirection
        if "right" == text2 then
          text2 = 1.5
          if text2 then
            goto continueAtStep33
          end
        end
        text2 = -1.5
        ::continueAtStep33::
        workingValue5 = GetOffsetFromEntityInWorldCoords
        stateFlag12 = localValue12
        workingValue8 = text2
        number10 = 0.0
        number11 = 0.0
        workingValue5 = workingValue5(stateFlag12, workingValue8, number10, number11)
        stateFlag12 = SetEntityCoords
        workingValue8 = localValue12
        number10 = workingValue5.x
        number11 = workingValue5.y
        workingValue10 = workingValue5.z
        stateFlag16 = false
        stateFlag17 = false
        stateFlag = false
        stateFlag3 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        stateFlag12(workingValue8, number10, number11, workingValue10, stateFlag16, stateFlag17, stateFlag, stateFlag3)
        stateFlag12 = TaskCower
        workingValue8 = localValue12
        number10 = -1
        stateFlag12(workingValue8, number10)
      else
        text2 = workingValue6
        workingValue5 = localValue12
        stateFlag12 = true
        text2(workingValue5, stateFlag12)
      end
      ::continueAtStep58::
    end
    workingValue9(stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading)
  end
  localValue1 = CMG
  localValue1 = localValue1.createThreadOnTick
  localValue2 = eventHandler3
  localValue3 = "Clothing Robbery"
  -- Beginner: Run a helper every game frame while this script is active.
  localValue1(localValue2, localValue3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(workingValue11)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3
  localValue1 = SetNuiFocus
  localValue2 = false
  localValue3 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  localValue1(localValue2, localValue3)
  localValue1 = SendNUIMessage
  localValue2 = {}
  localValue2.openNUI = true
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3
  localValue1 = SetNuiFocus
  localValue2 = false
  localValue3 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  localValue1(localValue2, localValue3)
  localValue1 = SendNUIMessage
  localValue2 = {}
  localValue2.openNUI = false
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue1(localValue2)
end
number13 = 0
eventHandler = RegisterNetEvent
text = "3ec0d43499"
-- Beginner: this function handles network event "3ec0d43499".

-- === HELPER FUNCTION (decompiler name: number2; parameters: localValue1) ===
function number2(localValue1)
  local localValue2, localValue3, workingValue7, stateFlag13, stateFlag14, workingValue9, stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading, number3, stateFlag7
  if localValue1 then
    localValue2 = DecorSetBool
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    workingValue7 = "4ac0472477"
    stateFlag13 = true
    localValue2(localValue3, workingValue7, stateFlag13)
    localValue2 = CMG
    localValue2 = localValue2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = CMG
    localValue3 = localValue3.requestEntitySpawn
    workingValue7 = "headbag_object"
    localValue3(workingValue7)
    localValue3 = CreateObject
    workingValue7 = 289396019
    stateFlag13 = 0
    stateFlag14 = 0
    workingValue9 = 0
    stateFlag15 = true
    number12 = true
    number14 = true
    -- Beginner: result below is objectEntity.
    localValue3 = localValue3(workingValue7, stateFlag13, stateFlag14, workingValue9, stateFlag15, number12, number14)
    number13 = localValue3
    localValue3 = AttachEntityToEntity
    workingValue7 = number13
    stateFlag13 = localValue2
    stateFlag14 = GetPedBoneIndex
    workingValue9 = localValue2
    stateFlag15 = 12844
    stateFlag14 = stateFlag14(workingValue9, stateFlag15)
    workingValue9 = 0.2
    stateFlag15 = 0.04
    number12 = 0
    number14 = 0
    number = 270.0
    stateFlag2 = 60.0
    stateFlag4 = true
    stateFlag5 = true
    stateFlag6 = false
    heading = true
    number3 = 1
    stateFlag7 = true
    -- Beginner: Attach one entity to another entity.
    localValue3(workingValue7, stateFlag13, stateFlag14, workingValue9, stateFlag15, number12, number14, number, stateFlag2, stateFlag4, stateFlag5, stateFlag6, heading, number3, stateFlag7)
    localValue3 = backgroundThread
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue3()
  else
    localValue2 = DecorSetBool
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    workingValue7 = "4ac0472477"
    stateFlag13 = false
    localValue2(localValue3, workingValue7, stateFlag13)
    localValue2 = DeleteEntity
    localValue3 = number13
    -- Beginner: Delete a GTA entity.
    localValue2(localValue3)
    localValue2 = workingValue11
    localValue2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3ec0d43499".
eventHandler(text, number2)
eventHandler = DecorRegister
text = "4ac0472477"
number2 = 2
eventHandler(text, number2)
