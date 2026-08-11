--[[
    LEVEL 1 BEGINNER GUIDE — Loginrewards
    ==========================================

    File: cmg/prod/client/misc/cl_loginrewards.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Loginrewards feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 30
      * Background threads: 0
      * Always-running loops: 2
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
local cmgCall, textValue2, textValue4, flag5, rageUiCall4, textValue8, textValue9, rageUiCall5, rageUiCall7, textValue13, flag, workValue, workValue3, cmgCall3, textValue, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14, rageUiCall, textValue3, workValue15, workValue16, flag4, textValue5
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue2 = "cfg/cfg_loginrewards"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue2)
textValue2 = RMenu
textValue2 = textValue2.Add
textValue4 = "loginrewards"
flag5 = "mainmenu"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateMenu
textValue8 = ""
textValue9 = "Main Menu"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuHeight
rageUiCall7 = rageUiCall7()
textValue13 = "cmg_loginrewards"
flag = "cmg_loginrewards"
rageUiCall4, textValue8, textValue9, rageUiCall5, rageUiCall7, textValue13, flag, workValue, workValue3, cmgCall3, textValue, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14, rageUiCall, textValue3, workValue15, workValue16, flag4, textValue5 = rageUiCall4(textValue8, textValue9, rageUiCall5, rageUiCall7, textValue13, flag)
textValue2(textValue4, flag5, rageUiCall4, textValue8, textValue9, rageUiCall5, rageUiCall7, textValue13, flag, workValue, workValue3, cmgCall3, textValue, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14, rageUiCall, textValue3, workValue15, workValue16, flag4, textValue5)
textValue2 = 0
textValue4 = 0
flag5 = false
rageUiCall4 = false
textValue8 = 0
textValue9 = cmgCall.requiredPlaytimeMinutes
textValue9 = textValue9 * 60
rageUiCall5 = 0
rageUiCall7 = false
textValue13 = 0
flag = false

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2
  arg1 = 0
  textValue13 = arg1
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2, arg3, arg4, arg5, arg6, textValue10, textValue11, textValue12, flag6, numberValue, flag2
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = GetSoundId
  -- Beginner: result below is soundHandle.
  arg2 = arg2()
  arg3 = PlaySoundFromCoord
  arg4 = arg2
  arg5 = "Spin_Single_Ticks"
  arg6 = arg1.x
  textValue10 = arg1.y
  textValue11 = arg1.z
  textValue12 = "dlc_vw_casino_lucky_wheel_sounds"
  flag6 = false
  numberValue = 0
  flag2 = false
  arg3(arg4, arg5, arg6, textValue10, textValue11, textValue12, flag6, numberValue, flag2)
  arg3 = SetTimeout
  arg4 = 400

  -- === HELPER FUNCTION: arg5() ===
  function arg5()
    local cmgCall2, stringHelper
    cmgCall2 = ReleaseSoundId
    stringHelper = arg2
    cmgCall2(stringHelper)
  end
  arg3(arg4, arg5)
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue = "dailyRewardReelTick"

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2
  arg1 = rageUiCall7
  if not arg1 then
    arg1 = {}
    return arg1
  end
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = textValue13
  arg2 = arg1 - arg2
  if arg2 < 120 then
    arg2 = {}
    return arg2
  end
  textValue13 = arg1
  arg2 = workValue3
  arg2()
  arg2 = {}
  return arg2
end
cmgCall3(textValue, workValue5)

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1, arg2) ===
function cmgCall3(arg1, arg2)
  local arg3, arg4, arg5, arg6, textValue10
  arg3 = arg2 or nil
  if not arg2 then
    arg3 = "You can claim this reward in"
  end
  arg4 = arg1.months
  if arg4 then
    arg4 = arg1.months
    if arg4 > 0 then
      arg4 = arg3
      arg5 = " "
      arg6 = tostring
      textValue10 = arg1.months
      arg6 = arg6(textValue10)
      textValue10 = "m"
      arg4 = arg4 .. arg5 .. arg6 .. textValue10
      arg3 = arg4
    end
  end
  arg4 = arg1.days
  if arg4 then
    arg4 = arg1.days
    if arg4 > 0 then
      arg4 = arg3
      arg5 = " "
      arg6 = tostring
      textValue10 = arg1.days
      arg6 = arg6(textValue10)
      textValue10 = "d"
      arg4 = arg4 .. arg5 .. arg6 .. textValue10
      arg3 = arg4
    end
  end
  arg4 = arg1.hours
  if arg4 then
    arg4 = arg1.hours
    if arg4 > 0 then
      arg4 = arg3
      arg5 = " "
      arg6 = tostring
      textValue10 = arg1.hours
      arg6 = arg6(textValue10)
      textValue10 = "h"
      arg4 = arg4 .. arg5 .. arg6 .. textValue10
      arg3 = arg4
    end
  end
  arg4 = arg1.minutes
  if arg4 then
    arg4 = arg1.minutes
    if arg4 > 0 then
      arg4 = arg3
      arg5 = " "
      arg6 = tostring
      textValue10 = arg1.minutes
      arg6 = arg6(textValue10)
      textValue10 = "m"
      arg4 = arg4 .. arg5 .. arg6 .. textValue10
      arg3 = arg4
    end
  end
  arg4 = arg1.seconds
  if arg4 then
    arg4 = arg1.seconds
    if arg4 > 0 then
      arg4 = arg3
      arg5 = " "
      arg6 = tostring
      textValue10 = arg1.seconds
      arg6 = arg6(textValue10)
      textValue10 = "s"
      arg4 = arg4 .. arg5 .. arg6 .. textValue10
      arg3 = arg4
    end
  end
  arg4 = arg3
  arg5 = "."
  arg4 = arg4 .. arg5
  arg3 = arg4
  return arg3
end

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, arg4
  arg1 = flag5
  if not arg1 then
    arg1 = textValue8
    return arg1
  end
  arg1 = textValue8
  arg2 = math
  arg2 = arg2.floor
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  arg4 = rageUiCall5
  arg3 = arg3 - arg4
  arg3 = arg3 / 1000
  arg2 = arg2(arg3)
  arg1 = arg1 + arg2
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2, arg3, arg4
  arg1 = math
  arg1 = arg1.max
  arg2 = 0
  arg3 = textValue9
  arg4 = textValue
  arg4 = arg4()
  arg3 = arg3 - arg4
  return arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2, arg3
  arg1 = flag5
  if not arg1 then
    arg1 = "You have already opened today's crate!"
    return arg1
  end
  arg1 = rageUiCall4
  if not arg1 then
    arg1 = workValue5
    arg1 = arg1()
    if not (arg1 <= 0) then
      goto flow_label_15
    end
  end
  arg1 = "Open your daily reward crate!"
  return arg1
  ::flow_label_15::
  arg1 = cmgCall3
  arg2 = formatTime
  arg3 = workValue5
  arg3 = arg3()
  arg2 = arg2(arg3)
  arg3 = "Play for"
  return arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, arg4, arg5, arg6, textValue10
  arg3 = arg1 - 1
  arg4 = textValue2
  arg3 = arg3 - arg4
  arg4 = textValue4
  arg5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg5 = arg5()
  arg4 = arg4 - arg5
  arg5 = arg3 * 86400000
  arg4 = arg4 + arg5
  if arg4 <= 0 then
    arg5 = textValue2
    if arg5 > 0 then
      arg5 = "Unlocks after midnight."
      return arg5
    end
  end
  if arg2 then
    arg5 = "You must claim the previous reward first."
    return arg5
  end
  arg5 = formatTime
  arg6 = arg4 / 1000
  arg5 = arg5(arg6)
  arg6 = cmgCall3
  textValue10 = arg5
  return arg6(textValue10)
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1, arg2) ===
function workValue8(arg1, arg2)
  local arg3
  if arg2 then
    arg3 = "CLAIMED"
    return arg3
  end
  arg3 = "LOOT CRATE"
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2
  arg1 = rageUiCall7
  if arg1 then
    arg1 = false
    return arg1
  end
  arg1 = flag5
  if not arg1 then
    arg1 = false
    return arg1
  end
  arg1 = rageUiCall4
  if arg1 then
    arg1 = true
    return arg1
  end
  arg1 = workValue5
  arg1 = arg1()
  arg1 = arg1 <= 0
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = CMG
  arg1 = arg1.getClientDateTime
  arg1 = arg1()
  arg2 = string
  arg2 = arg2.format
  arg3 = "daily_reward_eligible_%04d-%02d-%02d"
  arg4 = arg1.year
  arg5 = arg1.month
  arg6 = arg1.day
  return arg2(arg3, arg4, arg5, arg6)
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, arg3, arg4
  arg1 = flag
  if arg1 then
    return
  end
  arg1 = workValue10
  arg1 = arg1()
  arg2 = GetResourceKvpString
  arg3 = arg1
  arg2 = arg2(arg3)
  if "1" == arg2 then
    arg2 = true
    flag = arg2
    return
  end
  arg2 = true
  flag = arg2
  arg2 = SetResourceKvp
  arg3 = arg1
  arg4 = "1"
  arg2(arg3, arg4)
  arg2 = Citizen
  arg2 = arg2.CreateThread

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local cmgCall2, stringHelper, rageUiCall2, stringHelper2, textValue6
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.announceMpSmallMsg
    stringHelper = "DAILY REWARD"
    rageUiCall2 = "You are now eligible! Use /daily to redeem your crate."
    stringHelper2 = 18
    textValue6 = 5000
    cmgCall2(stringHelper, rageUiCall2, stringHelper2, textValue6)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
function workValue12()
  local arg1, arg2
  arg1 = workValue9
  arg1 = arg1()
  if arg1 then
    arg1 = flag5
    if arg1 then
      arg1 = workValue11
      arg1()
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = math
  arg1 = arg1.min
  arg2 = cmgCall.requiredPlaytimeMinutes
  arg3 = math
  arg3 = arg3.floor
  arg4 = textValue
  arg4 = arg4()
  arg4 = arg4 / 60
  arg3, arg4, arg5 = arg3(arg4)
  arg1 = arg1(arg2, arg3, arg4, arg5)
  arg2 = string
  arg2 = arg2.format
  arg3 = "Today's playtime: %d / %d mins"
  arg4 = arg1
  arg5 = cmgCall.requiredPlaytimeMinutes
  return arg2(arg3, arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3, arg4
  arg1 = workValue
  arg1()
  arg1 = false
  rageUiCall7 = arg1
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = false
  arg3 = false
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.action = "DAILY_REWARD_CLOSE"
  arg1(arg2)
end
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
textValue3 = 1.0
workValue15 = RMenu
workValue16 = workValue15
workValue15 = workValue15.Get
flag4 = "loginrewards"
textValue5 = "mainmenu"
-- Beginner: result below is menu.
workValue15 = workValue15(workValue16, flag4, textValue5)
workValue16 = nil

-- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
function flag4()
  local arg1, arg2, arg3, arg4, arg5, arg6, textValue10
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "loginrewards"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local cmgCall2, stringHelper, rageUiCall2, stringHelper2, textValue6, dataTable2, workValue17, rageUiCall6, stringHelper3, textValue14, dataTable, workValue2, workValue4, flag3
    cmgCall2 = textValue2
    if 0 == cmgCall2 then
      cmgCall2 = RageUI
      cmgCall2 = cmgCall2.Separator
      stringHelper = "You have no login streak."
      cmgCall2(stringHelper)
    else
      cmgCall2 = RageUI
      cmgCall2 = cmgCall2.Separator
      stringHelper = string
      stringHelper = stringHelper.format
      rageUiCall2 = "Your login streak is %d %s."
      stringHelper2 = textValue2
      textValue6 = textValue2
      if textValue6 > 1 then
        textValue6 = "days"
        if textValue6 then
          goto flow_label_22
        end
      end
      textValue6 = "day"
      ::flow_label_22::
      stringHelper, rageUiCall2, stringHelper2, textValue6, dataTable2, workValue17, rageUiCall6, stringHelper3, textValue14, dataTable, workValue2, workValue4, flag3 = stringHelper(rageUiCall2, stringHelper2, textValue6)
      cmgCall2(stringHelper, rageUiCall2, stringHelper2, textValue6, dataTable2, workValue17, rageUiCall6, stringHelper3, textValue14, dataTable, workValue2, workValue4, flag3)
    end
    cmgCall2 = flag5
    if cmgCall2 then
      cmgCall2 = RageUI
      cmgCall2 = cmgCall2.Separator
      stringHelper = workValue13
      stringHelper, rageUiCall2, stringHelper2, textValue6, dataTable2, workValue17, rageUiCall6, stringHelper3, textValue14, dataTable, workValue2, workValue4, flag3 = stringHelper()
      cmgCall2(stringHelper, rageUiCall2, stringHelper2, textValue6, dataTable2, workValue17, rageUiCall6, stringHelper3, textValue14, dataTable, workValue2, workValue4, flag3)
    end
    cmgCall2 = workValue9
    cmgCall2 = cmgCall2()
    stringHelper = flag5
    if stringHelper then
      stringHelper = textValue2
      stringHelper = stringHelper + 1
      if stringHelper then
        goto flow_label_43
      end
    end
    stringHelper = textValue2
    ::flow_label_43::
    if 0 == stringHelper then
      stringHelper = 1
    end
    rageUiCall2 = RageUI
    rageUiCall2 = rageUiCall2.ButtonWithStyle
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    textValue6 = "Day %d Crate"
    dataTable2 = stringHelper
    stringHelper2 = stringHelper2(textValue6, dataTable2)
    textValue6 = workValue6
    textValue6 = textValue6()
    dataTable2 = {}
    workValue17 = workValue8
    rageUiCall6 = stringHelper
    stringHelper3 = flag5
    stringHelper3 = not cmgCall2 and stringHelper3
    workValue17 = workValue17(rageUiCall6, stringHelper3)
    dataTable2.RightLabel = workValue17
    workValue17 = cmgCall2

    -- === HELPER FUNCTION (decompiler name: rageUiCall6; parameters: arg12, arg22, arg32) ===
    function rageUiCall6(arg12, arg22, arg32)
      local rageUiCall3, textValue7
      if arg32 then
        rageUiCall3 = RageUI
        rageUiCall3 = rageUiCall3.CloseAll
        rageUiCall3()
        rageUiCall3 = TriggerServerEvent
        textValue7 = "58fdce9920"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58fdce9920".
        rageUiCall3(textValue7)
      end
    end
    stringHelper3 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall2(stringHelper2, textValue6, dataTable2, workValue17, rageUiCall6, stringHelper3)
    rageUiCall2 = RageUI
    rageUiCall2 = rageUiCall2.Separator
    stringHelper2 = "Upcoming Rewards"
    rageUiCall2(stringHelper2)
    if stringHelper < 7 then
      rageUiCall2 = 5
      if rageUiCall2 then
        goto flow_label_82
      end
    end
    rageUiCall2 = 3
    ::flow_label_82::
    stringHelper2 = stringHelper + 1
    textValue6 = stringHelper + rageUiCall2
    dataTable2 = 1
    for workValue17 = stringHelper2, textValue6, dataTable2 do
      rageUiCall6 = RageUI
      rageUiCall6 = rageUiCall6.ButtonWithStyle
      stringHelper3 = string
      stringHelper3 = stringHelper3.format
      textValue14 = "Day %d"
      dataTable = workValue17
      stringHelper3 = stringHelper3(textValue14, dataTable)
      textValue14 = workValue7
      dataTable = workValue17
      workValue2 = cmgCall2
      textValue14 = textValue14(dataTable, workValue2)
      dataTable = {}
      workValue2 = workValue8
      workValue4 = workValue17
      flag3 = false
      workValue2 = workValue2(workValue4, flag3)
      dataTable.RightLabel = workValue2
      workValue2 = false

      -- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
      function workValue4()
        local arg12, arg22
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall6(stringHelper3, textValue14, dataTable, workValue2, workValue4)
    end
    if stringHelper < 55 then
      stringHelper2 = RageUI
      stringHelper2 = stringHelper2.ButtonWithStyle
      textValue6 = "Day 60"
      dataTable2 = workValue7
      workValue17 = 60
      rageUiCall6 = cmgCall2
      dataTable2 = dataTable2(workValue17, rageUiCall6)
      workValue17 = {}
      rageUiCall6 = workValue8
      stringHelper3 = 60
      textValue14 = false
      rageUiCall6 = rageUiCall6(stringHelper3, textValue14)
      workValue17.RightLabel = rageUiCall6
      rageUiCall6 = false

      -- === HELPER FUNCTION: stringHelper3() ===
      function stringHelper3()
        local arg12, arg22
      end
      stringHelper2(textValue6, dataTable2, workValue17, rageUiCall6, stringHelper3)
    end
    if stringHelper < 115 then
      stringHelper2 = RageUI
      stringHelper2 = stringHelper2.ButtonWithStyle
      textValue6 = "Day 120"
      dataTable2 = workValue7
      workValue17 = 120
      rageUiCall6 = cmgCall2
      dataTable2 = dataTable2(workValue17, rageUiCall6)
      workValue17 = {}
      rageUiCall6 = workValue8
      stringHelper3 = 120
      textValue14 = false
      rageUiCall6 = rageUiCall6(stringHelper3, textValue14)
      workValue17.RightLabel = rageUiCall6
      rageUiCall6 = false

      -- === HELPER FUNCTION: stringHelper3() ===
      function stringHelper3()
        local arg12, arg22
      end
      -- Beginner: Draw a selectable RageUI menu button.
      stringHelper2(textValue6, dataTable2, workValue17, rageUiCall6, stringHelper3)
    end
  end

  -- === HELPER FUNCTION (decompiler name: textValue10; parameters: none) ===
  function textValue10()
    local cmgCall2, stringHelper
  end
  arg1(arg2, arg3, arg4, arg5, arg6, textValue10)
end
rageUiCall(textValue3, workValue15, workValue16, flag4)
rageUiCall = RegisterNetEvent
textValue3 = "dcdc8aedbe"
-- Beginner: this function handles network event "dcdc8aedbe".

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1, arg2, arg3, arg4, arg5, arg6) ===
function workValue15(arg1, arg2, arg3, arg4, arg5, arg6)
  local textValue10, textValue11, textValue12, flag6, numberValue, flag2
  textValue2 = arg1
  flag5 = arg2
  rageUiCall4 = arg3
  textValue8 = arg5
  textValue9 = arg6
  textValue10 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  textValue10 = textValue10()
  rageUiCall5 = textValue10
  if arg2 and arg3 then
    textValue10 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue10 = textValue10()
    textValue10 = textValue10 - 1
    textValue4 = textValue10
  else
    textValue10 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue10 = textValue10()
    textValue11 = arg4 * 1000
    textValue10 = textValue10 + textValue11
    textValue4 = textValue10
  end
  textValue10 = CMG
  textValue10 = textValue10.getTunableValue
  textValue11 = "motd"
  textValue10 = textValue10(textValue11)
  textValue11 = #textValue10
  if textValue11 > 1 then
    textValue11 = GetResourceKvpString
    textValue12 = "last_motd"
    textValue11 = textValue11(textValue12)
    if not textValue11 or textValue11 ~= textValue10 then
      textValue12 = notify
      flag6 = [[
~h~Message of the day:
~h~~y~]]
      numberValue = textValue10
      flag2 = "~w~"
      flag6 = flag6 .. numberValue .. flag2
      -- Beginner: Show a notification to the player.
      textValue12(flag6)
      textValue12 = SetResourceKvp
      flag6 = "last_motd"
      numberValue = textValue10
      textValue12(flag6, numberValue)
    end
  end
  textValue11 = workValue12
  textValue11()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dcdc8aedbe".
rageUiCall(textValue3, workValue15)
rageUiCall = RegisterNetEvent
textValue3 = "6de51e7a96"
-- Beginner: this function handles network event "6de51e7a96".

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = true
  rageUiCall7 = arg2
  arg2 = CMG
  arg2 = arg2.uiSetFocus
  arg3 = true
  arg4 = true
  arg5 = false
  arg2(arg3, arg4, arg5)
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.action = "DAILY_REWARD_OPEN"
  arg3.payload = arg1
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6de51e7a96".
rageUiCall(textValue3, workValue15)
rageUiCall = CMG
rageUiCall = rageUiCall.uiRegisterCallback
textValue3 = "dailyRewardLootboxClose"

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, arg2
  arg1 = workValue14
  arg1()
  arg1 = TriggerServerEvent
  arg2 = "102e276787"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "102e276787".
  arg1(arg2)
  arg1 = {}
  return arg1
end
rageUiCall(textValue3, workValue15)

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: none) ===
function rageUiCall()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = TriggerServerEvent
  arg2 = "90f1f4ffc8"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90f1f4ffc8".
  arg1(arg2)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "loginrewards"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg1(arg2, arg3)
end
textValue3 = RegisterCommand
workValue15 = "dailyrewards"
workValue16 = rageUiCall
flag4 = false
-- Beginner: Register a chat/console command. Event/command: "dailyrewards".
textValue3(workValue15, workValue16, flag4)
textValue3 = RegisterCommand
workValue15 = "daily"
workValue16 = rageUiCall
flag4 = false
textValue3(workValue15, workValue16, flag4)
textValue3 = Citizen
textValue3 = textValue3.CreateThread
-- Beginner: this function is the command handler for "daily".

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, arg2
  while true do
    arg1 = workValue12
    arg1()
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 6000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue3(workValue15)
textValue3 = Citizen
textValue3 = textValue3.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, arg2, arg3, arg4, arg5
  while true do
    arg1 = RageUI
    arg1 = arg1.Visible
    arg2 = RMenu
    arg3 = arg2
    arg2 = arg2.Get
    arg4 = "loginrewards"
    arg5 = "mainmenu"
    arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5)
    -- Beginner: result below is menuVisible.
    arg1 = arg1(arg2, arg3, arg4, arg5)
    if arg1 then
      arg1 = TriggerServerEvent
      arg2 = "90f1f4ffc8"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90f1f4ffc8".
      arg1(arg2)
      arg1 = Citizen
      arg1 = arg1.Wait
      arg2 = 30000
      arg1(arg2)
    else
      arg1 = Citizen
      arg1 = arg1.Wait
      arg2 = 1000
      arg1(arg2)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue3(workValue15)
