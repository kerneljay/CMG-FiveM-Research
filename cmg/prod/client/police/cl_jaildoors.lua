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
local workValue, workValue5, dataTable, vector3Builder, vector3Builder2, vector3Builder3, eventRegistration, textValue9, numberValue12, eventRegistration2, cmgCall, workValue2
workValue = nil
workValue5 = nil
dataTable = {}
vector3Builder = vector3
vector3Builder2 = 448.29037475586
vector3Builder3 = -988.74841308594
eventRegistration = 30.689607620239
vector3Builder = vector3Builder(vector3Builder2, vector3Builder3, eventRegistration)
vector3Builder2 = vector3
vector3Builder3 = -1083.501953125
eventRegistration = -828.93444824219
textValue9 = 5.4578394889832
vector3Builder2 = vector3Builder2(vector3Builder3, eventRegistration, textValue9)
vector3Builder3 = vector3
eventRegistration = 1547.6666259766
textValue9 = 804.66296386719
numberValue12 = 78.839279174805
vector3Builder3, eventRegistration, textValue9, numberValue12, eventRegistration2, cmgCall, workValue2 = vector3Builder3(eventRegistration, textValue9, numberValue12)
dataTable[1] = vector3Builder
dataTable[2] = vector3Builder2
dataTable[3] = vector3Builder3
dataTable[4] = eventRegistration
dataTable[5] = textValue9
dataTable[6] = numberValue12
dataTable[7] = eventRegistration2
dataTable[8] = cmgCall
dataTable[9] = workValue2
vector3Builder = false
vector3Builder2 = 0

-- === HELPER FUNCTION (decompiler name: vector3Builder3; parameters: arg1) ===
function vector3Builder3(arg1)
  local arg2, arg3, flag7
  arg2 = BeginTextCommandPrint
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentSubstringPlayerName
  arg3 = arg1
  arg2(arg3)
  arg2 = EndTextCommandPrint
  arg3 = 1000
  flag7 = true
  arg2(arg3, flag7)
end
eventRegistration = RegisterNetEvent
textValue9 = "447173e10e"
-- Beginner: this function handles network event "447173e10e".

-- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg1, arg2, arg3) ===
function numberValue12(arg1, arg2, arg3)
  local flag7, numberValue5, cmgCall4, gameTime, cmgCall5, gameTime2, cmgCall6, flag
  flag7 = tonumber
  numberValue5 = arg2
  flag7 = flag7(numberValue5)
  if not flag7 then
    flag7 = 60000
  end
  numberValue5 = 1000
  if flag7 < numberValue5 then
    flag7 = 60000
  end
  numberValue5 = FreezeEntityPosition
  cmgCall4 = CMG
  cmgCall4 = cmgCall4.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall4 = cmgCall4()
  gameTime = true
  -- Beginner: Freeze or unfreeze an entity in place.
  numberValue5(cmgCall4, gameTime)
  numberValue5 = RequestAnimDict
  cmgCall4 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
  numberValue5(cmgCall4)
  while true do
    numberValue5 = HasAnimDictLoaded
    cmgCall4 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
    numberValue5 = numberValue5(cmgCall4)
    if numberValue5 then
      break
    end
    numberValue5 = Citizen
    numberValue5 = numberValue5.Wait
    cmgCall4 = 0
    numberValue5(cmgCall4)
  end
  numberValue5 = true
  cmgCall4 = false
  gameTime = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  gameTime = gameTime()
  cmgCall5 = tCMG
  cmgCall5 = cmgCall5.notify
  gameTime2 = "~g~Lock Picking in progress, you can cancel with [Backspace]."
  -- Beginner: Show a notification to the player.
  cmgCall5(gameTime2)
  cmgCall5 = Citizen
  cmgCall5 = cmgCall5.CreateThread

  -- === HELPER FUNCTION: gameTime2() ===
  function gameTime2()
    local arg12, cmgCall3, textValue3, textValue5, textValue7, textValue8, numberValue8, numberValue10, numberValue13, flag8, flag2, flag4
    while true do
      arg12 = numberValue5
      if not arg12 then
        break
      end
      arg12 = IsEntityPlayingAnim
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      cmgCall3 = cmgCall3()
      textValue3 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
      textValue5 = "machinic_loop_mechandplayer"
      textValue7 = 3
      arg12 = arg12(cmgCall3, textValue3, textValue5, textValue7)
      if not arg12 then
        arg12 = TaskPlayAnim
        cmgCall3 = CMG
        cmgCall3 = cmgCall3.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgCall3 = cmgCall3()
        textValue3 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
        textValue5 = "machinic_loop_mechandplayer"
        textValue7 = 8.0
        textValue8 = -8.0
        numberValue8 = -1
        numberValue10 = 1
        numberValue13 = 0
        flag8 = false
        flag2 = false
        flag4 = false
        -- Beginner: Play an animation on a ped.
        arg12(cmgCall3, textValue3, textValue5, textValue7, textValue8, numberValue8, numberValue10, numberValue13, flag8, flag2, flag4)
      end
      arg12 = math
      arg12 = arg12.floor
      cmgCall3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      cmgCall3 = cmgCall3()
      textValue3 = gameTime
      cmgCall3 = cmgCall3 - textValue3
      textValue3 = flag7
      cmgCall3 = cmgCall3 / textValue3
      cmgCall3 = cmgCall3 * 100
      arg12 = arg12(cmgCall3)
      cmgCall3 = vector3Builder3
      textValue3 = "~y~Lock picking - "
      textValue5 = arg12
      textValue7 = "%"
      textValue3 = textValue3 .. textValue5 .. textValue7
      cmgCall3(textValue3)
      cmgCall3 = EnableControlAction
      textValue3 = 0
      textValue5 = 177
      textValue7 = true
      cmgCall3(textValue3, textValue5, textValue7)
      cmgCall3 = IsControlJustPressed
      textValue3 = 0
      textValue5 = 177
      cmgCall3 = cmgCall3(textValue3, textValue5)
      if not cmgCall3 then
        cmgCall3 = IsDisabledControlJustPressed
        textValue3 = 0
        textValue5 = 177
        cmgCall3 = cmgCall3(textValue3, textValue5)
        if not cmgCall3 then
          goto flow_label_87
        end
      end
      cmgCall3 = tCMG
      cmgCall3 = cmgCall3.notify
      textValue3 = "~r~Lock Picking cancelled."
      -- Beginner: Show a notification to the player.
      cmgCall3(textValue3)
      cmgCall3 = false
      numberValue5 = cmgCall3
      cmgCall3 = true
      cmgCall4 = cmgCall3
      cmgCall3 = ClearPedTasks
      textValue3 = CMG
      textValue3 = textValue3.getPlayerPed
      textValue3, textValue5, textValue7, textValue8, numberValue8, numberValue10, numberValue13, flag8, flag2, flag4 = textValue3()
      cmgCall3(textValue3, textValue5, textValue7, textValue8, numberValue8, numberValue10, numberValue13, flag8, flag2, flag4)
      cmgCall3 = FreezeEntityPosition
      textValue3 = CMG
      textValue3 = textValue3.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      textValue3 = textValue3()
      textValue5 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      cmgCall3(textValue3, textValue5)
      cmgCall3 = TriggerServerEvent
      textValue3 = "ed6628790e"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ed6628790e".
      cmgCall3(textValue3)
      ::flow_label_87::
      cmgCall3 = Wait
      textValue3 = 0
      cmgCall3(textValue3)
    end
    arg12 = RemoveAnimDict
    cmgCall3 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
    arg12(cmgCall3)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgCall5(gameTime2)
  cmgCall5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  cmgCall5 = cmgCall5()
  cmgCall5 = cmgCall5 + flag7
  while true do
    gameTime2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    gameTime2 = gameTime2()
    if not (cmgCall5 > gameTime2 and numberValue5) then
      break
    end
    gameTime2 = Wait
    cmgCall6 = 0
    gameTime2(cmgCall6)
  end
  numberValue5 = false
  gameTime2 = FreezeEntityPosition
  cmgCall6 = CMG
  cmgCall6 = cmgCall6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall6 = cmgCall6()
  flag = false
  -- Beginner: Freeze or unfreeze an entity in place.
  gameTime2(cmgCall6, flag)
  gameTime2 = ClearPedTasks
  cmgCall6 = CMG
  cmgCall6 = cmgCall6.getPlayerPed
  cmgCall6, flag = cmgCall6()
  gameTime2(cmgCall6, flag)
  if arg1 and not cmgCall4 then
    gameTime2 = TriggerServerEvent
    cmgCall6 = "b94b3a304e"
    flag = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b94b3a304e".
    gameTime2(cmgCall6, flag)
  elseif not arg1 and not cmgCall4 then
    gameTime2 = tCMG
    gameTime2 = gameTime2.notify
    cmgCall6 = "~r~Failed to lockpick the door."
    -- Beginner: Show a notification to the player.
    gameTime2(cmgCall6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "447173e10e".
eventRegistration(textValue9, numberValue12)
eventRegistration = RegisterNetEvent
textValue9 = "58a0527703"
-- Beginner: this function handles network event "58a0527703".

-- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg1, arg2) ===
function numberValue12(arg1, arg2)
  workValue5 = arg1
  workValue = arg2
end
eventRegistration(textValue9, numberValue12)
-- Beginner: this function handles network event "58a0527703".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "police.onduty.permission"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "nhs.onduty.permission"
    arg1 = arg1(arg2)
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.hasClientPermission
      arg2 = "prisonguard.onduty.permission"
      arg1 = arg1(arg2)
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.hasClientPermission
        arg2 = "borderforce.onduty.permission"
        arg1 = arg1(arg2)
      end
    end
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg1) ===
function textValue9(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "aa.onduty.permission"
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.hasClientSkill
  arg3 = "lockpicking_police_door_lockpick"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg3 = arg1.doorHash
  arg2 = workValue
  arg2 = arg2[arg3]
  if 4 ~= arg2 then
    arg2 = false
    return arg2
  end
  arg2 = true
  return arg2
end

-- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg1) ===
function numberValue12(arg1)
  local arg2, arg3, flag7, numberValue5, cmgCall4, gameTime, cmgCall5
  arg2 = eventRegistration
  arg2 = arg2()
  if not arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  arg2, arg3 = arg2()
  if 0 == arg2 or not arg3 then
    return
  end
  flag7 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag7 = flag7()
  numberValue5 = vector3Builder2
  numberValue5 = flag7 - numberValue5
  cmgCall4 = 2500
  if numberValue5 < cmgCall4 then
    return
  end
  vector3Builder2 = flag7
  numberValue5 = TriggerServerEvent
  cmgCall4 = "7ce743191c"
  gameTime = arg1.doorHash
  cmgCall5 = 5
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7ce743191c".
  numberValue5(cmgCall4, gameTime, cmgCall5)
end
eventRegistration2 = AddEventHandler
cmgCall = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2) ===
function workValue2(arg1, arg2)
  local arg3, flag7, numberValue5, cmgCall4, gameTime, cmgCall5, gameTime2, cmgCall6, flag, textValue, workValue3, numberValue, numberValue2, flag6, textValue2, cmgCall2, workValue4, stringHelper, numberValue3, numberValue4, workValue6, workValue7, workValue8, workValue9
  if arg2 then
    while true do
      arg3 = workValue
      if nil ~= arg3 then
        arg3 = workValue5
        if nil ~= arg3 then
          break
        end
      end
      arg3 = Citizen
      arg3 = arg3.Wait
      flag7 = 1000
      arg3(flag7)
    end

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, cmgCall3
    end

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: none) ===
    function flag7()
      local arg12, cmgCall3
    end

    -- === HELPER FUNCTION (decompiler name: numberValue5; parameters: arg12) ===
    function numberValue5(arg12)
      local cmgCall3, textValue3, textValue5, textValue7, textValue8, numberValue8, numberValue10, numberValue13
      cmgCall3 = ""
      textValue3 = eventRegistration
      textValue3 = textValue3()
      if not textValue3 then
        textValue3 = arg12.isAllowlisted
        if textValue3 then
          textValue3 = vector3Builder
          if textValue3 then
            goto flow_label_17
          end
        end
        textValue3 = CMG
        textValue3 = textValue3.isStaffedOnClient
        textValue3 = textValue3()
        if not textValue3 then
          goto flow_label_18
        end
      end
      ::flow_label_17::
      cmgCall3 = " (E to toggle lock)"
      ::flow_label_18::
      textValue3 = ""
      textValue5 = textValue9
      textValue7 = arg12
      textValue5 = textValue5(textValue7)
      if textValue5 then
        textValue3 = " (G to lockpick)"
      end
      textValue7 = arg12.doorHash
      textValue5 = workValue
      textValue5 = textValue5[textValue7]
      if 5 ~= textValue5 then
        textValue7 = arg12.doorHash
        textValue5 = workValue
        textValue5 = textValue5[textValue7]
        if 0 ~= textValue5 then
          goto flow_label_46
        end
      end
      textValue5 = CMG
      textValue5 = textValue5.DrawText3D
      textValue7 = arg12.position
      textValue8 = "\240\159\148\147"
      numberValue8 = cmgCall3
      numberValue10 = textValue3
      textValue8 = textValue8 .. numberValue8 .. numberValue10
      numberValue8 = 0.45
      numberValue10 = 4
      textValue5(textValue7, textValue8, numberValue8, numberValue10)
      goto flow_label_56
      ::flow_label_46::
      textValue5 = CMG
      textValue5 = textValue5.DrawText3D
      textValue7 = arg12.position
      textValue8 = "\240\159\148\146"
      numberValue8 = cmgCall3
      numberValue10 = textValue3
      textValue8 = textValue8 .. numberValue8 .. numberValue10
      numberValue8 = 0.45
      numberValue10 = 4
      textValue5(textValue7, textValue8, numberValue8, numberValue10)
      ::flow_label_56::
      textValue5 = IsControlJustPressed
      textValue7 = 0
      textValue8 = 47
      textValue5 = textValue5(textValue7, textValue8)
      if textValue5 then
        textValue5 = textValue9
        textValue7 = arg12
        textValue5 = textValue5(textValue7)
        if textValue5 then
          textValue5 = CMG
          textValue5 = textValue5.setIgnoreRadialInputThisFrame
          textValue5()
          textValue5 = tCMG
          textValue5 = textValue5.isInGreenzone
          textValue7 = false
          textValue5 = textValue5(textValue7)
          if textValue5 then
            textValue5 = tCMG
            textValue5 = textValue5.notify
            textValue7 = "~r~You can not lockpick in a greenzone"
            -- Beginner: Show a notification to the player.
            textValue5(textValue7)
          else
            textValue5 = CMG
            textValue5 = textValue5.getSelectedEntity
            textValue5, textValue7 = textValue5()
            if not textValue5 or 1 ~= textValue7 then
              textValue8 = TriggerServerEvent
              numberValue8 = "f98fb692bf"
              numberValue10 = arg12.doorHash
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f98fb692bf".
              textValue8(numberValue8, numberValue10)
            end
          end
        end
      end
      textValue5 = IsControlJustPressed
      textValue7 = 0
      textValue8 = 38
      textValue5 = textValue5(textValue7, textValue8)
      if textValue5 then
        textValue5 = eventRegistration
        textValue5 = textValue5()
        if not textValue5 then
          textValue5 = arg12.isAllowlisted
          if textValue5 then
            textValue5 = vector3Builder
            if textValue5 then
              goto flow_label_113
            end
          end
          textValue5 = CMG
          textValue5 = textValue5.isStaffedOnClient
          textValue5 = textValue5()
          if not textValue5 then
            goto flow_label_147
          end
        end
        ::flow_label_113::
        textValue5 = CMG
        textValue5 = textValue5.setIgnoreRadialInputThisFrame
        textValue5()
        textValue5 = CMG
        textValue5 = textValue5.getSelectedEntity
        textValue5, textValue7 = textValue5()
        if not textValue5 or 1 ~= textValue7 then
          textValue8 = CMG
          textValue8 = textValue8.loadAnimDict
          numberValue8 = "anim@heists@keycard@"
          -- Beginner: Load a GTA animation dictionary before using it.
          textValue8(numberValue8)
          textValue8 = Citizen
          textValue8 = textValue8.CreateThread

          -- === HELPER FUNCTION (decompiler name: numberValue8; parameters: none) ===
          function numberValue8()
            local waitCall, playerPed, textValue4, textValue6, numberValue6, numberValue7, numberValue9, numberValue11, numberValue14, flag9, flag3, flag5
            waitCall = TaskPlayAnim
            playerPed = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            playerPed = playerPed()
            textValue4 = "anim@heists@keycard@"
            textValue6 = "exit"
            numberValue6 = 5.0
            numberValue7 = 1.0
            numberValue9 = -1
            numberValue11 = 48
            numberValue14 = 0
            flag9 = false
            flag3 = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            waitCall(playerPed, textValue4, textValue6, numberValue6, numberValue7, numberValue9, numberValue11, numberValue14, flag9, flag3, flag5)
            waitCall = Wait
            playerPed = 1200
            waitCall(playerPed)
            waitCall = ClearPedTasks
            playerPed = PlayerPedId
            playerPed, textValue4, textValue6, numberValue6, numberValue7, numberValue9, numberValue11, numberValue14, flag9, flag3, flag5 = playerPed()
            waitCall(playerPed, textValue4, textValue6, numberValue6, numberValue7, numberValue9, numberValue11, numberValue14, flag9, flag3, flag5)
            waitCall = RemoveAnimDict
            playerPed = "anim@heists@keycard@"
            waitCall(playerPed)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          textValue8(numberValue8)
          numberValue8 = arg12.doorHash
          textValue8 = workValue
          textValue8 = textValue8[numberValue8]
          if 4 == textValue8 then
            textValue8 = TriggerServerEvent
            numberValue8 = "7ce743191c"
            numberValue10 = arg12.doorHash
            numberValue13 = 5
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7ce743191c".
            textValue8(numberValue8, numberValue10, numberValue13)
          else
            textValue8 = TriggerServerEvent
            numberValue8 = "7ce743191c"
            numberValue10 = arg12.doorHash
            numberValue13 = 4
            textValue8(numberValue8, numberValue10, numberValue13)
          end
        end
      end
      ::flow_label_147::
    end
    cmgCall4 = 1
    gameTime = workValue5
    gameTime = #gameTime
    cmgCall5 = 1
    for gameTime2 = cmgCall4, gameTime, cmgCall5 do
      cmgCall6 = {}
      flag = workValue5
      flag = flag[gameTime2]
      flag = flag.doorHash
      cmgCall6.doorHash = flag
      flag = workValue5
      flag = flag[gameTime2]
      flag = flag.position
      cmgCall6.position = flag
      flag = workValue5
      flag = flag[gameTime2]
      flag = flag.isAllowlisted
      cmgCall6.isAllowlisted = flag
      flag = CMG
      flag = flag.createArea
      textValue = "openPoliceDoor_"
      workValue3 = workValue5
      workValue3 = workValue3[gameTime2]
      workValue3 = workValue3.doorHash
      textValue = textValue .. workValue3
      workValue3 = workValue5
      workValue3 = workValue3[gameTime2]
      workValue3 = workValue3.position
      numberValue = 1.5
      numberValue2 = 5
      flag6 = arg3
      textValue2 = flag7
      cmgCall2 = numberValue5
      workValue4 = cmgCall6
      -- Beginner: Create an interaction area around a world position.
      flag(textValue, workValue3, numberValue, numberValue2, flag6, textValue2, cmgCall2, workValue4)
      flag = workValue5
      flag = flag[gameTime2]
      flag = flag.autoVehiclePositions
      if flag then
        flag = pairs
        textValue = workValue5
        textValue = textValue[gameTime2]
        textValue = textValue.autoVehiclePositions
        flag, textValue, workValue3, numberValue = flag(textValue)
        for numberValue2, flag6 in flag, textValue, workValue3, numberValue do
          textValue2 = "openPoliceDoorAuto_"
          cmgCall2 = tostring
          workValue4 = workValue5
          workValue4 = workValue4[gameTime2]
          workValue4 = workValue4.doorHash
          cmgCall2 = cmgCall2(workValue4)
          workValue4 = "_"
          stringHelper = tostring
          numberValue3 = numberValue2
          stringHelper = stringHelper(numberValue3)
          textValue2 = textValue2 .. cmgCall2 .. workValue4 .. stringHelper
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.createArea
          workValue4 = textValue2
          stringHelper = flag6
          numberValue3 = 7.5
          numberValue4 = 10.0

          -- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
          function workValue6()
            local arg12, cmgCall3
          end

          -- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
          function workValue7()
            local arg12, cmgCall3
          end
          workValue8 = numberValue12
          workValue9 = cmgCall6
          cmgCall2(workValue4, stringHelper, numberValue3, numberValue4, workValue6, workValue7, workValue8, workValue9)
        end
      end
    end
    cmgCall4 = 1
    gameTime = workValue5
    gameTime = #gameTime
    cmgCall5 = 1
    for gameTime2 = cmgCall4, gameTime, cmgCall5 do
      cmgCall6 = AddDoorToSystem
      flag = workValue5
      flag = flag[gameTime2]
      flag = flag.doorHash
      textValue = workValue5
      textValue = textValue[gameTime2]
      textValue = textValue.modelHash
      workValue3 = workValue5
      workValue3 = workValue3[gameTime2]
      workValue3 = workValue3.position
      workValue3 = workValue3.x
      numberValue = workValue5
      numberValue = numberValue[gameTime2]
      numberValue = numberValue.position
      numberValue = numberValue.y
      numberValue2 = workValue5
      numberValue2 = numberValue2[gameTime2]
      numberValue2 = numberValue2.position
      numberValue2 = numberValue2.z
      flag6 = false
      textValue2 = false
      cmgCall2 = false
      cmgCall6(flag, textValue, workValue3, numberValue, numberValue2, flag6, textValue2, cmgCall2)
      cmgCall6 = DoorSystemSetDoorState
      flag = workValue5
      flag = flag[gameTime2]
      flag = flag.doorHash
      textValue = workValue5
      textValue = textValue[gameTime2]
      workValue3 = textValue.doorHash
      textValue = workValue
      textValue = textValue[workValue3]
      workValue3 = false
      numberValue = false
      cmgCall6(flag, textValue, workValue3, numberValue)
    end

    -- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
    function cmgCall4()
      local arg12, cmgCall3, textValue3, textValue5, textValue7, textValue8, numberValue8, numberValue10, numberValue13, flag8, flag2
      arg12 = CMG
      arg12 = arg12.TriggerServerCallback
      cmgCall3 = "599ba2320e"
      arg12 = arg12(cmgCall3)
      workValue = arg12
      arg12 = pairs
      cmgCall3 = workValue
      arg12, cmgCall3, textValue3, textValue5 = arg12(cmgCall3)
      for textValue7, textValue8 in arg12, cmgCall3, textValue3, textValue5 do
        numberValue8 = DoorSystemSetDoorState
        numberValue10 = textValue7
        numberValue13 = textValue8
        flag8 = false
        flag2 = false
        numberValue8(numberValue10, numberValue13, flag8, flag2)
        if 0 == textValue8 or 5 == textValue8 then
          numberValue8 = DoorSystemSetHoldOpen
          numberValue10 = textValue7
          numberValue13 = true
          numberValue8(numberValue10, numberValue13)
        else
          numberValue8 = DoorSystemSetHoldOpen
          numberValue10 = textValue7
          numberValue13 = false
          numberValue8(numberValue10, numberValue13)
        end
      end
    end
    gameTime = 1
    cmgCall5 = dataTable
    cmgCall5 = #cmgCall5
    gameTime2 = 1
    for cmgCall6 = gameTime, cmgCall5, gameTime2 do
      flag = CMG
      flag = flag.createArea
      textValue = "policeSyncDoorsOnAreaEnter"
      workValue3 = dataTable
      workValue3 = workValue3[cmgCall6]
      numberValue = 250
      numberValue2 = 250
      flag6 = cmgCall4

      -- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
      function textValue2()
        local arg12, cmgCall3
      end

      -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
      function cmgCall2()
        local arg12, cmgCall3
      end
      workValue4 = {}
      -- Beginner: Create an interaction area around a world position.
      flag(textValue, workValue3, numberValue, numberValue2, flag6, textValue2, cmgCall2, workValue4)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventRegistration2(cmgCall, workValue2)
eventRegistration2 = RegisterNetEvent
cmgCall = "f620b4350e"
-- Beginner: this function handles network event "f620b4350e".

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2) ===
function workValue2(arg1, arg2)
  local arg3, flag7, numberValue5, cmgCall4, gameTime
  arg3 = DoorSystemSetDoorState
  flag7 = arg1
  numberValue5 = arg2
  cmgCall4 = false
  gameTime = false
  arg3(flag7, numberValue5, cmgCall4, gameTime)
  if 0 == arg2 or 5 == arg2 then
    arg3 = DoorSystemSetHoldOpen
    flag7 = arg1
    numberValue5 = true
    arg3(flag7, numberValue5)
  else
    arg3 = DoorSystemSetHoldOpen
    flag7 = arg1
    numberValue5 = false
    arg3(flag7, numberValue5)
  end
  arg3 = workValue
  if arg3 then
    arg3 = workValue
    arg3 = arg3[arg1]
    if nil ~= arg3 then
      arg3 = workValue
      arg3[arg1] = arg2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f620b4350e".
eventRegistration2(cmgCall, workValue2)
eventRegistration2 = RegisterNetEvent
cmgCall = "9827691fb7"
-- Beginner: this function handles network event "9827691fb7".

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, arg2
  arg1 = true
  vector3Builder = arg1
end
eventRegistration2(cmgCall, workValue2)
