--[[
    LEVEL 1 BEGINNER GUIDE — Weeklychallenge
    =============================================

    File: cmg/prod/client/events/cl_weeklychallenge.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Weeklychallenge feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 28
      * Background threads: 0
      * Always-running loops: 0
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
local cmgCall, dataTable2, dataTable3, dataTable4, workValue10, numberValue, numberValue2, workValue13, cmgCall3, textValue2, cmgCall2, textValue, workValue3
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable2 = "cfg/cfg_weeklychallenge"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable2)
dataTable2 = {}
dataTable3 = {}
dataTable4 = {}
workValue10 = nil
numberValue = 0
numberValue2 = 0

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg1, arg2) ===
function workValue13(arg1, arg2)
  local arg3
  arg3 = dataTable4
  arg3[arg1] = arg2
end
cmgCall3 = RegisterNetEvent
textValue2 = "3e20320f87"
-- Beginner: this function handles network event "3e20320f87".

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1, arg2, arg3) ===
function cmgCall2(arg1, arg2, arg3)
  local arg4
  dataTable2 = arg1
  dataTable3 = arg2
  arg4 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg4 = arg4()
  numberValue = arg4
  numberValue2 = arg3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3e20320f87".
cmgCall3(textValue2, cmgCall2)
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4
  arg1 = math
  arg1 = arg1.floor
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = numberValue
  arg2 = arg2 - arg3
  arg2 = arg2 / 1000
  arg1 = arg1(arg2)
  arg2 = math
  arg2 = arg2.max
  arg3 = numberValue2
  arg3 = arg3 - arg1
  arg4 = 0
  return arg2(arg3, arg4)
end
cmgCall3.getSecondsUntilChallengesReset = textValue2

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1, arg2, arg3, arg4) ===
function cmgCall3(arg1, arg2, arg3, arg4)
  local iterator, workValue11, workValue12, workValue14, workValue15, workValue16, workValue, workValue2, workValue4, workValue5, workValue6, tableHelper, workValue7, dataTable, stringHelper, workValue8, tableHelper2, workValue9
  iterator = pairs
  workValue11 = arg3
  iterator, workValue11, workValue12, workValue14 = iterator(workValue11)
  for workValue15, workValue16 in iterator, workValue11, workValue12, workValue14 do
    workValue = cmgCall.tasks
    workValue = workValue[workValue15]
    workValue2 = dataTable4
    workValue2 = workValue2[workValue15]
    if workValue2 then
      workValue4 = arg1.tasks
      workValue4 = workValue4[workValue15]
      workValue5 = workValue2
      workValue6 = workValue4
      tableHelper = workValue16
      workValue5, workValue6 = workValue5(workValue6, tableHelper)
      tableHelper = table
      tableHelper = tableHelper.insert
      workValue7 = arg2
      dataTable = {}
      stringHelper = string
      stringHelper = stringHelper.format
      workValue8 = workValue.title
      tableHelper2 = table
      tableHelper2 = tableHelper2.unpack
      workValue9 = workValue16
      tableHelper2, workValue9 = tableHelper2(workValue9)
      stringHelper = stringHelper(workValue8, tableHelper2, workValue9)
      dataTable.title = stringHelper
      dataTable.numCompleted = workValue5
      dataTable.numRequired = workValue6
      stringHelper = getMoneyStringFormatted
      workValue8 = arg4
      stringHelper = stringHelper(workValue8)
      dataTable.rewardAmount = stringHelper
      stringHelper = arg1.completed
      stringHelper = stringHelper[workValue15]
      if not stringHelper then
        stringHelper = false
      end
      dataTable.canClaim = stringHelper
      stringHelper = arg1.claimed
      stringHelper = stringHelper[workValue15]
      if not stringHelper then
        stringHelper = false
      end
      dataTable.isClaimed = stringHelper
      dataTable.taskId = workValue15
      tableHelper(workValue7, dataTable)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4, iterator, workValue11
  arg1 = workValue10
  if not arg1 then
    return
  end
  arg1 = {}
  arg2 = {}
  arg1.weeklyTasks = arg2
  arg2 = {}
  arg1.dailyTasks = arg2
  arg2 = cmgCall3
  arg3 = workValue10.weekly
  arg4 = arg1.weeklyTasks
  iterator = dataTable2
  workValue11 = cmgCall.rewardForEachTask
  arg2(arg3, arg4, iterator, workValue11)
  arg2 = cmgCall3
  arg3 = workValue10.daily
  arg4 = arg1.dailyTasks
  iterator = dataTable3
  workValue11 = cmgCall.rewardForEachDailyTask
  arg2(arg3, arg4, iterator, workValue11)
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.type = "PAUSE_MENU_SET_WEEKLY_CHALLENGES"
  arg3.info = arg1
  arg2(arg3)
end
cmgCall2 = RegisterNetEvent
textValue = "d957aef202"
-- Beginner: this function handles network event "d957aef202".

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2
  workValue10 = arg1
  arg2 = CMG
  arg2 = arg2.isPauseMenuOpen
  arg2 = arg2()
  if arg2 then
    arg2 = textValue2
    arg2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d957aef202".
cmgCall2(textValue, workValue3)
cmgCall2 = AddEventHandler
textValue = "7ad2e2f656"
-- Beginner: this function runs when client event "7ad2e2f656" fires.

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2
  arg1 = textValue2
  arg1()
end
-- Beginner: Register a client-side event handler. Event/command: "7ad2e2f656".
cmgCall2(textValue, workValue3)
cmgCall2 = CMG
cmgCall2 = cmgCall2.uiRegisterCallback
textValue = "claimWeeklyRewards"
-- Beginner: this function runs when client event "7ad2e2f656" fires.

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, arg3, arg4
  arg2 = arg1.isDaily
  if arg2 then
    arg2 = TriggerServerEvent
    arg3 = "bcd86a8e73"
    arg4 = arg1.taskId
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bcd86a8e73".
    arg2(arg3, arg4)
  else
    arg2 = TriggerServerEvent
    arg3 = "17a84553d6"
    arg4 = arg1.taskId
    arg2(arg3, arg4)
  end
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "drive_distance"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = arg1.distance
    if arg3 then
      arg3 = arg1.distance
      if arg3 then
        goto flow_label_10
      end
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "kill_people"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = table
    arg3 = arg3.count
    arg4 = arg1
    -- Beginner: result below is count.
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_10
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "lockpick_vehicle"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = table
    arg3 = arg3.count
    arg4 = arg1
    -- Beginner: result below is count.
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_10
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "capture_turfs"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = arg1.count
    if arg3 then
      arg3 = arg1.count
      if arg3 then
        goto flow_label_10
      end
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "rob_store"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = arg1.count
    if arg3 then
      arg3 = arg1.count
      if arg3 then
        goto flow_label_10
      end
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "redzone_kills"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = table
    arg3 = arg3.count
    arg4 = arg1
    -- Beginner: result below is count.
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_10
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "cpr_revives"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = table
    arg3 = arg3.count
    arg4 = arg1
    -- Beginner: result below is count.
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_10
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "loot_airdrop"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = table
    arg3 = arg3.count
    arg4 = arg1
    -- Beginner: result below is count.
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_10
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "break_handcuffs"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = arg1.count
    if arg3 then
      arg3 = arg1.count
      if arg3 then
        goto flow_label_10
      end
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "take_lsd"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = arg1.count
    if arg3 then
      arg3 = arg1.count
      if arg3 then
        goto flow_label_10
      end
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "repair_vehicles"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = arg1.count
    if arg3 then
      arg3 = arg1.count
      if arg3 then
        goto flow_label_10
      end
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "loot_bags"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = table
    arg3 = arg3.count
    arg4 = arg1
    -- Beginner: result below is count.
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_10
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "scuba_treasure"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = arg1.count
    if arg3 then
      arg3 = arg1.count
      if arg3 then
        goto flow_label_10
      end
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "wager_wins"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = arg1.count
    if arg3 then
      arg3 = arg1.count
      if arg3 then
        goto flow_label_10
      end
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "fire_kills"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = table
    arg3 = arg3.count
    arg4 = arg1
    -- Beginner: result below is count.
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_10
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "bolt_cut"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = table
    arg3 = arg3.count
    arg4 = arg1
    -- Beginner: result below is count.
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_10
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "shave_people"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = table
    arg3 = arg3.count
    arg4 = arg1
    -- Beginner: result below is count.
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_10
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "dumpster_dive"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = arg1.count
    if arg3 then
      arg3 = arg1.count
      if arg3 then
        goto flow_label_10
      end
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "clean_dirty_cash"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = arg1.amount
    if arg3 then
      arg3 = arg1.amount
      if arg3 then
        goto flow_label_10
      end
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
cmgCall2 = workValue13
textValue = "rob_atms"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4
  if arg1 then
    arg3 = arg1.count
    if arg3 then
      arg3 = arg1.count
      if arg3 then
        goto flow_label_10
      end
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg4 = arg2[1]
  return arg3, arg4
end
cmgCall2(textValue, workValue3)
