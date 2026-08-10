--[[
    Beginner Guide: cl_weeklychallenge.lua
    ======================================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Weeklychallenge
    ================================

    File: cmg/prod/client/events/cl_weeklychallenge.lua
    Purpose: This file contains event/minigame logic.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    Config/data used:
      * cfg/cfg_weeklychallenge

    Network/hash identifiers found: 5
      They are intentionally left unchanged because matching server code may use them.
      * 3e20320f87
      * d957aef202
      * 7ad2e2f656
      * bcd86a8e73
      * 17a84553d6

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
function workValue13(arg1, arg2)
  local arg3
  arg3 = dataTable4
  arg3[arg1] = arg2
end
cmgCall3 = RegisterNetEvent
textValue2 = "3e20320f87"
-- Beginner: this function handles network event "3e20320f87".
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