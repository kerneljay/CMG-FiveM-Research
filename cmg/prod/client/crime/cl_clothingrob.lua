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
local cmgCall, dataTable, numberValue9, workValue6, eventRegistration2, textValue3, eventRegistration3, threadCall, workValue11, numberValue13, eventRegistration, textValue, numberValue2
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/cfg_clothingrob"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
dataTable = {}
numberValue9 = 0

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3, workValue7, flag13, flag14
  arg3 = SetPedCanRagdollFromPlayerImpact
  workValue7 = arg1
  flag13 = false
  arg3(workValue7, flag13)
  arg3 = SetBlockingOfNonTemporaryEvents
  workValue7 = arg1
  flag13 = true
  arg3(workValue7, flag13)
  arg3 = SetPedResetFlag
  workValue7 = arg1
  flag13 = 249
  flag14 = true
  arg3(workValue7, flag13, flag14)
  arg3 = SetPedConfigFlag
  workValue7 = arg1
  flag13 = 185
  flag14 = true
  arg3(workValue7, flag13, flag14)
  arg3 = SetPedConfigFlag
  workValue7 = arg1
  flag13 = 108
  flag14 = true
  arg3(workValue7, flag13, flag14)
  arg3 = SetEntityCollision
  workValue7 = arg1
  flag13 = not arg2
  flag14 = not arg2
  arg3(workValue7, flag13, flag14)
  arg3 = FreezeEntityPosition
  workValue7 = arg1
  flag13 = arg2
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(workValue7, flag13)
end
eventRegistration2 = RegisterNetEvent
textValue3 = "9f0a898a2d"
-- Beginner: this function handles network event "9f0a898a2d".

-- === HELPER FUNCTION (decompiler name: eventRegistration3; parameters: arg1, arg2, arg3) ===
function eventRegistration3(arg1, arg2, arg3)
  local workValue7, flag13, flag14, workValue9, flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5, flag6, heading, numberValue3
  workValue7 = cmgCall.locations
  workValue7 = workValue7[arg1]
  flag13 = dataTable
  flag13 = flag13[arg1]
  flag13.isRobbed = arg2
  flag14 = DoesEntityExist
  workValue9 = flag13.ped
  flag14 = flag14(workValue9)
  if flag14 then
    flag14 = IsEntityDead
    workValue9 = flag13.ped
    flag14 = flag14(workValue9)
    if not flag14 then
      if arg2 then
        flag14 = workValue6
        workValue9 = flag13.ped
        flag15 = false
        flag14(workValue9, flag15)
        flag14 = GetOffsetFromEntityInWorldCoords
        workValue9 = flag13.ped
        flag15 = 1.5
        numberValue12 = 0.0
        numberValue14 = 0.0
        flag14 = flag14(workValue9, flag15, numberValue12, numberValue14)
        workValue9 = OpenSequenceTask
        workValue9 = workValue9()
        flag15 = cmgCall.locations
        flag15 = flag15[arg1]
        flag15 = flag15.hideDirection
        if "right" == flag15 then
          flag15 = 1.5
          if flag15 then
            goto flow_label_39
          end
        end
        flag15 = -1.5
        ::flow_label_39::
        numberValue12 = TaskGoStraightToCoord
        numberValue14 = 0
        numberValue = flag14.x
        flag2 = flag14.y
        flag4 = flag14.z
        flag5 = flag15
        flag6 = -1
        heading = GetEntityHeading
        numberValue3 = flag13.ped
        -- Beginner: result below is heading.
        heading = heading(numberValue3)
        numberValue3 = 0.2
        numberValue12(numberValue14, numberValue, flag2, flag4, flag5, flag6, heading, numberValue3)
        numberValue12 = TaskCower
        numberValue14 = 0
        numberValue = -1
        numberValue12(numberValue14, numberValue)
        numberValue12 = CloseSequenceTask
        numberValue14 = workValue9
        numberValue12(numberValue14)
        numberValue12 = TaskPerformSequenceLocally
        numberValue14 = flag13.ped
        numberValue = workValue9
        numberValue12(numberValue14, numberValue)
        numberValue12 = ClearSequenceTask
        numberValue14 = workValue9
        numberValue12(numberValue14)
      else
        flag14 = ClearPedTasksImmediately
        workValue9 = flag13.ped
        flag14(workValue9)
        flag14 = SetEntityCoords
        workValue9 = flag13.ped
        flag15 = workValue7.position
        flag15 = flag15.x
        numberValue12 = workValue7.position
        numberValue12 = numberValue12.y
        numberValue14 = workValue7.position
        numberValue14 = numberValue14.z
        numberValue = false
        flag2 = false
        flag4 = false
        flag5 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        flag14(workValue9, flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5)
        flag14 = SetEntityHeading
        workValue9 = flag13.ped
        flag15 = workValue7.position
        flag15 = flag15.w
        -- Beginner: Change the direction an entity is facing.
        flag14(workValue9, flag15)
        flag14 = workValue6
        workValue9 = flag13.ped
        flag15 = true
        flag14(workValue9, flag15)
      end
    end
  end
  if arg2 and not arg3 then
    flag14 = Citizen
    flag14 = flag14.Wait
    workValue9 = 8000
    flag14(workValue9)
    while true do
      flag14 = RequestScriptAudioBank
      workValue9 = "Alarms"
      flag15 = false
      flag14 = flag14(workValue9, flag15)
      if flag14 then
        break
      end
      flag14 = Citizen
      flag14 = flag14.Wait
      workValue9 = 0
      flag14(workValue9)
    end
    flag14 = GetSoundId
    -- Beginner: result below is soundHandle.
    flag14 = flag14()
    workValue9 = PlaySoundFromCoord
    flag15 = flag14
    numberValue12 = "Burglar_Bell"
    numberValue14 = workValue7.position
    numberValue14 = numberValue14.x
    numberValue = workValue7.position
    numberValue = numberValue.y
    flag2 = workValue7.position
    flag2 = flag2.z
    flag4 = "Generic_Alarms"
    flag5 = false
    flag6 = 0.05
    heading = false
    workValue9(flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5, flag6, heading)
    workValue9 = Citizen
    workValue9 = workValue9.Wait
    flag15 = 120000
    workValue9(flag15)
    workValue9 = StopSound
    flag15 = flag14
    workValue9(flag15)
    workValue9 = ReleaseSoundId
    flag15 = flag14
    workValue9(flag15)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9f0a898a2d".
eventRegistration2(textValue3, eventRegistration3)

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1, arg2, arg3) ===
function eventRegistration2(arg1, arg2, arg3)
  local workValue7, flag13, flag14, workValue9, flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5, flag6, heading
  if arg3 then
    workValue7 = Citizen
    workValue7 = workValue7.Wait
    flag13 = 2000
    workValue7(flag13)
  end
  workValue7 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue7 = workValue7()
  flag13 = CMG
  flag13 = flag13.loadAnimDict
  flag14 = "anim@heists@prison_heiststation@cop_reactions"
  -- Beginner: Load a GTA animation dictionary before using it.
  flag13(flag14)
  flag13 = TaskPlayAnim
  flag14 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  flag14 = flag14()
  workValue9 = "anim@heists@prison_heiststation@cop_reactions"
  flag15 = "cop_b_idle"
  numberValue12 = 8.0
  numberValue14 = 8.0
  numberValue = -1
  flag2 = 51
  flag4 = 1.0
  flag5 = false
  flag6 = false
  heading = false
  -- Beginner: Play an animation on a ped.
  flag13(flag14, workValue9, flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5, flag6, heading)
  flag13 = RemoveAnimDict
  flag14 = "anim@heists@prison_heiststation@cop_reactions"
  flag13(flag14)
  flag13 = Citizen
  flag13 = flag13.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: flag14; parameters: none) ===
  function flag14()
    local arg12, textValue2, workValue5, flag12, workValue8
    arg12 = CMG
    arg12 = arg12.startCircularProgressBar
    textValue2 = ""
    workValue5 = arg2
    flag12 = nil

    -- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
    function workValue8()
      local workValue, workValue2
    end
    arg12(textValue2, workValue5, flag12, workValue8)
  end
  flag13(flag14)
  flag13 = Citizen
  flag13 = flag13.Wait
  flag14 = 0
  flag13(flag14)
  flag13 = true
  flag14 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag14 = flag14()
  while flag13 do
    workValue9 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workValue9 = workValue9()
    workValue9 = workValue9 - flag14
    if not (arg2 > workValue9) then
      break
    end
    workValue9 = CMG
    workValue9 = workValue9.getPlayerCoords
    -- Beginner: result below is playerCoords.
    workValue9 = workValue9()
    flag15 = arg1.position
    flag15 = flag15.xyz
    workValue9 = workValue9 - flag15
    workValue9 = #workValue9
    flag15 = 1.25
    if not (workValue9 > flag15) then
      flag15 = IsEntityPlayingAnim
      numberValue12 = workValue7
      numberValue14 = "anim@heists@prison_heiststation@cop_reactions"
      numberValue = "cop_b_idle"
      flag2 = 3
      flag15 = flag15(numberValue12, numberValue14, numberValue, flag2)
      if flag15 then
        goto flow_label_79
      end
    end
    flag15 = CMG
    flag15 = flag15.stopCircularProgressBar
    flag15()
    flag15 = StopAnimTask
    numberValue12 = workValue7
    numberValue14 = "anim@heists@prison_heiststation@cop_reactions"
    numberValue = "cop_b_idle"
    flag2 = 1.0
    flag15(numberValue12, numberValue14, numberValue, flag2)
    flag13 = false
    do break end
    ::flow_label_79::
    flag15 = Citizen
    flag15 = flag15.Wait
    numberValue12 = 0
    flag15(numberValue12)
  end
  if not flag13 then
    workValue9 = notify
    flag15 = "~r~Failed to break open the cash register."
    -- Beginner: Show a notification to the player.
    workValue9(flag15)
  end
  return flag13
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, workValue7, flag13, flag14
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 500
  arg2(arg3)
  arg2 = true
  arg3 = true
  workValue7 = Citizen
  workValue7 = workValue7.CreateThread

  -- === HELPER FUNCTION (decompiler name: flag13; parameters: none) ===
  function flag13()
    local arg12, textValue2
    while true do
      arg12 = arg3
      if not arg12 then
        break
      end
      arg12 = drawNativeNotification
      textValue2 = "Press ~INPUT_JUMP~ in the correct area break the bolts."
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(textValue2)
      arg12 = Citizen
      arg12 = arg12.Wait
      textValue2 = 0
      arg12(textValue2)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  workValue7(flag13)
  workValue7 = CMG
  workValue7 = workValue7.minigameCircularProgressBar
  flag13 = {}
  flag13.Difficulty = "Medium"
  flag13.Timeout = 20000

  -- === HELPER FUNCTION (decompiler name: flag14; parameters: arg12) ===
  function flag14(arg12)
    local textValue2
    arg2 = arg12
    textValue2 = false
    arg3 = textValue2
  end
  flag13.onComplete = flag14

  -- === HELPER FUNCTION (decompiler name: flag14; parameters: none) ===
  function flag14()
    local arg12, textValue2
    arg12 = false
    arg2 = arg12
    arg12 = false
    arg3 = arg12
  end
  flag13.onTimeout = flag14
  workValue7(flag13)
  while arg3 do
    workValue7 = CMG
    workValue7 = workValue7.getPlayerCoords
    -- Beginner: result below is playerCoords.
    workValue7 = workValue7()
    flag13 = arg1.position
    flag13 = flag13.xyz
    workValue7 = workValue7 - flag13
    workValue7 = #workValue7
    if workValue7 > 2.0 then
      arg2 = false
      arg3 = false
      break
    end
    workValue7 = Citizen
    workValue7 = workValue7.Wait
    flag13 = 0
    workValue7(flag13)
  end
  if not arg2 then
    workValue7 = notify
    flag13 = "~r~Failed to break the bolts."
    -- Beginner: Show a notification to the player.
    workValue7(flag13)
  end
  return arg2
end
eventRegistration3 = RegisterNetEvent
threadCall = "934da7820b"
-- Beginner: this function handles network event "934da7820b".

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1, arg2) ===
function workValue11(arg1, arg2)
  local arg3, workValue7, flag13, flag14, workValue9, flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5, flag6, heading, numberValue3, flag7, numberValue4, numberValue5, numberValue6, numberValue7, flag8, flag9, numberValue8, flag10, workValue3, workValue4, flag11
  arg3 = cmgCall.locations
  arg3 = arg3[arg1]
  workValue7 = dataTable
  workValue7 = workValue7[arg1]
  while true do
    flag13 = DrawMarker
    flag14 = 1
    workValue9 = arg3.position
    workValue9 = workValue9.x
    flag15 = arg3.position
    flag15 = flag15.y
    numberValue12 = arg3.position
    numberValue12 = numberValue12.z
    numberValue14 = 0.0
    numberValue = 0.0
    flag2 = 0.0
    flag4 = 0.0
    flag5 = 0.0
    flag6 = 0.0
    heading = 0.6
    numberValue3 = 0.6
    flag7 = 0.6
    numberValue4 = 255
    numberValue5 = 255
    numberValue6 = 0
    numberValue7 = 80
    flag8 = false
    flag9 = false
    numberValue8 = 2
    flag10 = false
    workValue3 = nil
    workValue4 = nil
    flag11 = false
    flag13(flag14, workValue9, flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5, flag6, heading, numberValue3, flag7, numberValue4, numberValue5, numberValue6, numberValue7, flag8, flag9, numberValue8, flag10, workValue3, workValue4, flag11)
    flag13 = CMG
    flag13 = flag13.getPlayerCoords
    -- Beginner: result below is playerCoords.
    flag13 = flag13()
    flag14 = arg3.position
    flag14 = flag14.xyz
    flag13 = flag13 - flag14
    flag13 = #flag13
    if not (flag13 > 75.0) then
      flag14 = IsEntityDead
      workValue9 = PlayerPedId
      workValue9, flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5, flag6, heading, numberValue3, flag7, numberValue4, numberValue5, numberValue6, numberValue7, flag8, flag9, numberValue8, flag10, workValue3, workValue4, flag11 = workValue9()
      flag14 = flag14(workValue9, flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5, flag6, heading, numberValue3, flag7, numberValue4, numberValue5, numberValue6, numberValue7, flag8, flag9, numberValue8, flag10, workValue3, workValue4, flag11)
      if not flag14 then
        flag14 = workValue7.isRobbed
        if flag14 then
          goto flow_label_54
        end
      end
    end
    return
    goto flow_label_101
    ::flow_label_54::
    if flag13 < 2.0 then
      flag14 = drawNativeNotification
      workValue9 = "Presss ~INPUT_CONTEXT~ to break open the cash register."
      -- Beginner: Show a GTA-style notification/help prompt.
      flag14(workValue9)
      flag14 = IsControlJustPressed
      workValue9 = 0
      flag15 = 51
      flag14 = flag14(workValue9, flag15)
      if flag14 then
        flag14 = math
        flag14 = flag14.floor
        workValue9 = arg2 / 2
        flag14 = flag14(workValue9)
        workValue9 = eventRegistration2
        flag15 = arg3
        numberValue12 = flag14
        numberValue14 = false
        workValue9 = workValue9(flag15, numberValue12, numberValue14)
        if workValue9 then
          workValue9 = textValue3
          flag15 = arg3
          workValue9 = workValue9(flag15)
          if workValue9 then
            workValue9 = eventRegistration2
            flag15 = arg3
            numberValue12 = flag14
            numberValue14 = true
            workValue9 = workValue9(flag15, numberValue12, numberValue14)
            if workValue9 then
              workValue9 = TriggerServerEvent
              flag15 = "b7f88b275b"
              numberValue12 = arg1
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b7f88b275b".
              workValue9(flag15, numberValue12)
              workValue9 = StopAnimTask
              flag15 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              flag15 = flag15()
              numberValue12 = "anim@heists@prison_heiststation@cop_reactions"
              numberValue14 = "cop_b_idle"
              numberValue = 1.0
              workValue9(flag15, numberValue12, numberValue14, numberValue)
              return
            end
          end
        end
      end
    end
    ::flow_label_101::
    flag14 = Citizen
    flag14 = flag14.Wait
    workValue9 = 0
    flag14(workValue9)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "934da7820b".
eventRegistration3(threadCall, workValue11)

-- === HELPER FUNCTION (decompiler name: eventRegistration3; parameters: arg1) ===
function eventRegistration3(arg1)
  local arg2, arg3, workValue7, flag13, flag14, workValue9, flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5
  arg2 = IsPedArmed
  arg3 = arg1.playerPed
  workValue7 = 6
  arg2 = arg2(arg3, workValue7)
  if arg2 then
    arg2 = IsPlayerFreeAiming
    arg3 = arg1.playerId
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = CMG
      arg2 = arg2.isEmergencyService
      arg2 = arg2()
      if not arg2 then
        goto flow_label_18
      end
    end
  end
  return
  ::flow_label_18::
  arg2 = GetEntityPlayerIsFreeAimingAt
  arg3 = arg1.playerId
  arg2, arg3 = arg2(arg3)
  if not arg2 or 0 == arg3 then
    return
  end
  workValue7 = pairs
  flag13 = dataTable
  workValue7, flag13, flag14, workValue9 = workValue7(flag13)
  for flag15, numberValue12 in workValue7, flag13, flag14, workValue9 do
    numberValue14 = numberValue12.ped
    if numberValue14 == arg3 then
      numberValue14 = numberValue12.isRobbed
      if not numberValue14 then
        numberValue14 = cmgCall.locations
        numberValue14 = numberValue14[flag15]
        numberValue = CMG
        numberValue = numberValue.getPlayerCoords
        -- Beginner: result below is playerCoords.
        numberValue = numberValue()
        flag2 = numberValue14.position
        flag2 = flag2.xyz
        numberValue = numberValue - flag2
        numberValue = #numberValue
        if numberValue < 10.0 then
          numberValue = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          numberValue = numberValue()
          flag2 = numberValue9
          flag2 = numberValue - flag2
          flag4 = 2000
          if flag2 > flag4 then
            flag2 = TriggerServerEvent
            flag4 = "f9e7d5459a"
            flag5 = flag15
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9e7d5459a".
            flag2(flag4, flag5)
            numberValue9 = numberValue
          end
          break
        end
      end
    end
  end
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, arg3, workValue7, flag13, flag14, workValue9, flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5, flag6, heading
  arg1 = pairs
  arg2 = cmgCall.locations
  arg1, arg2, arg3, workValue7 = arg1(arg2)
  for flag13, flag14 in arg1, arg2, arg3, workValue7 do
    workValue9 = dataTable
    flag15 = {}
    flag15.ped = 0
    flag15.isRobbed = false
    workValue9[flag13] = flag15
    workValue9 = CMG
    workValue9 = workValue9.createDynamicPed
    flag15 = flag14.model
    numberValue12 = flag14.position
    numberValue12 = numberValue12.xyz
    numberValue14 = flag14.position
    numberValue14 = numberValue14.w
    numberValue = false
    flag2 = nil
    flag4 = nil
    flag5 = 50.0
    flag6 = nil

    -- === HELPER FUNCTION: heading(arg12) ===
    function heading(arg12)
      local textValue2, workValue5, flag12, workValue8, numberValue10, numberValue11, workValue10, flag16, flag17, flag, flag3
      workValue5 = flag13
      textValue2 = dataTable
      textValue2 = textValue2[workValue5]
      textValue2.ped = arg12
      workValue5 = flag13
      textValue2 = dataTable
      textValue2 = textValue2[workValue5]
      textValue2 = textValue2.isRobbed
      if textValue2 then
        textValue2 = IsEntityDead
        flag12 = flag13
        workValue5 = dataTable
        workValue5 = workValue5[flag12]
        workValue5 = workValue5.ped
        textValue2 = textValue2(workValue5)
        if textValue2 then
          goto flow_label_58
        end
        textValue2 = workValue6
        workValue5 = arg12
        flag12 = false
        textValue2(workValue5, flag12)
        textValue2 = cmgCall.locations
        workValue5 = flag13
        textValue2 = textValue2[workValue5]
        textValue2 = textValue2.hideDirection
        if "right" == textValue2 then
          textValue2 = 1.5
          if textValue2 then
            goto flow_label_33
          end
        end
        textValue2 = -1.5
        ::flow_label_33::
        workValue5 = GetOffsetFromEntityInWorldCoords
        flag12 = arg12
        workValue8 = textValue2
        numberValue10 = 0.0
        numberValue11 = 0.0
        workValue5 = workValue5(flag12, workValue8, numberValue10, numberValue11)
        flag12 = SetEntityCoords
        workValue8 = arg12
        numberValue10 = workValue5.x
        numberValue11 = workValue5.y
        workValue10 = workValue5.z
        flag16 = false
        flag17 = false
        flag = false
        flag3 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        flag12(workValue8, numberValue10, numberValue11, workValue10, flag16, flag17, flag, flag3)
        flag12 = TaskCower
        workValue8 = arg12
        numberValue10 = -1
        flag12(workValue8, numberValue10)
      else
        textValue2 = workValue6
        workValue5 = arg12
        flag12 = true
        textValue2(workValue5, flag12)
      end
      ::flow_label_58::
    end
    workValue9(flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5, flag6, heading)
  end
  arg1 = CMG
  arg1 = arg1.createThreadOnTick
  arg2 = eventRegistration3
  arg3 = "Clothing Robbery"
  -- Beginner: Run a helper every game frame while this script is active.
  arg1(arg2, arg3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(workValue11)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3
  arg1 = SetNuiFocus
  arg2 = false
  arg3 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  arg1(arg2, arg3)
  arg1 = SendNUIMessage
  arg2 = {}
  arg2.openNUI = true
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, arg3
  arg1 = SetNuiFocus
  arg2 = false
  arg3 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  arg1(arg2, arg3)
  arg1 = SendNUIMessage
  arg2 = {}
  arg2.openNUI = false
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg1(arg2)
end
numberValue13 = 0
eventRegistration = RegisterNetEvent
textValue = "3ec0d43499"
-- Beginner: this function handles network event "3ec0d43499".

-- === HELPER FUNCTION (decompiler name: numberValue2; parameters: arg1) ===
function numberValue2(arg1)
  local arg2, arg3, workValue7, flag13, flag14, workValue9, flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5, flag6, heading, numberValue3, flag7
  if arg1 then
    arg2 = DecorSetBool
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    workValue7 = "4ac0472477"
    flag13 = true
    arg2(arg3, workValue7, flag13)
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = CMG
    arg3 = arg3.requestEntitySpawn
    workValue7 = "headbag_object"
    arg3(workValue7)
    arg3 = CreateObject
    workValue7 = 289396019
    flag13 = 0
    flag14 = 0
    workValue9 = 0
    flag15 = true
    numberValue12 = true
    numberValue14 = true
    -- Beginner: result below is objectEntity.
    arg3 = arg3(workValue7, flag13, flag14, workValue9, flag15, numberValue12, numberValue14)
    numberValue13 = arg3
    arg3 = AttachEntityToEntity
    workValue7 = numberValue13
    flag13 = arg2
    flag14 = GetPedBoneIndex
    workValue9 = arg2
    flag15 = 12844
    flag14 = flag14(workValue9, flag15)
    workValue9 = 0.2
    flag15 = 0.04
    numberValue12 = 0
    numberValue14 = 0
    numberValue = 270.0
    flag2 = 60.0
    flag4 = true
    flag5 = true
    flag6 = false
    heading = true
    numberValue3 = 1
    flag7 = true
    -- Beginner: Attach one entity to another entity.
    arg3(workValue7, flag13, flag14, workValue9, flag15, numberValue12, numberValue14, numberValue, flag2, flag4, flag5, flag6, heading, numberValue3, flag7)
    arg3 = threadCall
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg3()
  else
    arg2 = DecorSetBool
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    workValue7 = "4ac0472477"
    flag13 = false
    arg2(arg3, workValue7, flag13)
    arg2 = DeleteEntity
    arg3 = numberValue13
    -- Beginner: Delete a GTA entity.
    arg2(arg3)
    arg2 = workValue11
    arg2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3ec0d43499".
eventRegistration(textValue, numberValue2)
eventRegistration = DecorRegister
textValue = "4ac0472477"
numberValue2 = 2
eventRegistration(textValue, numberValue2)
