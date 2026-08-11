--[[
    LEVEL 1 BEGINNER GUIDE — Leaderboard
    =========================================

    File: cmg/prod/client/events/cl_leaderboard.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Leaderboard feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 20
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
local dataTable, cmgCall, dataTable5, dataTable6, textValue12, textValue13, flag, flag2, flag3, numberValue7, textValue, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11
dataTable = {}
cmgCall = {}
dataTable5 = "Name"
dataTable6 = "Kills"
textValue12 = "Deaths"
textValue13 = "Killstreak"
flag = "KDR"
cmgCall[1] = dataTable5
cmgCall[2] = dataTable6
cmgCall[3] = textValue12
cmgCall[4] = textValue13
cmgCall[5] = flag
dataTable.columns = cmgCall
cmgCall = {}
dataTable5 = {}
dataTable6 = "Robbster"
textValue12 = "~b~BLUE TEAM"
textValue13 = ""
flag = false
flag2 = 5
flag3 = 2
numberValue7 = 0
textValue = "1.4"
dataTable5[1] = dataTable6
dataTable5[2] = textValue12
dataTable5[3] = textValue13
dataTable5[4] = flag
dataTable5[5] = flag2
dataTable5[6] = flag3
dataTable5[7] = numberValue7
dataTable5[8] = textValue
dataTable6 = {}
textValue12 = "Thomas"
textValue13 = "~b~BLUE TEAM"
flag = ""
flag2 = false
flag3 = 7
numberValue7 = 5
textValue = 0
textValue4 = "0.5"
dataTable6[1] = textValue12
dataTable6[2] = textValue13
dataTable6[3] = flag
dataTable6[4] = flag2
dataTable6[5] = flag3
dataTable6[6] = numberValue7
dataTable6[7] = textValue
dataTable6[8] = textValue4
textValue12 = {}
textValue13 = "Arthur"
flag = "~r~RED TEAM"
flag2 = ""
flag3 = false
numberValue7 = 5
textValue = 0
textValue4 = 2
textValue5 = "0.5"
textValue12[1] = textValue13
textValue12[2] = flag
textValue12[3] = flag2
textValue12[4] = flag3
textValue12[5] = numberValue7
textValue12[6] = textValue
textValue12[7] = textValue4
textValue12[8] = textValue5
textValue13 = {}
flag = "Robbster"
flag2 = "~b~BLUE TEAM"
flag3 = ""
numberValue7 = false
textValue = 5
textValue4 = 0
textValue5 = 2
textValue6 = "1.4"
textValue13[1] = flag
textValue13[2] = flag2
textValue13[3] = flag3
textValue13[4] = numberValue7
textValue13[5] = textValue
textValue13[6] = textValue4
textValue13[7] = textValue5
textValue13[8] = textValue6
flag = {}
flag2 = "Thomas"
flag3 = "~b~BLUE TEAM"
numberValue7 = ""
textValue = false
textValue4 = 7
textValue5 = 5
textValue6 = 0
textValue7 = "0.5"
flag[1] = flag2
flag[2] = flag3
flag[3] = numberValue7
flag[4] = textValue
flag[5] = textValue4
flag[6] = textValue5
flag[7] = textValue6
flag[8] = textValue7
flag2 = {}
flag3 = "Arthur"
numberValue7 = "~r~RED TEAM"
textValue = ""
textValue4 = false
textValue5 = 5
textValue6 = 2
textValue7 = 0
textValue8 = "0.5"
flag2[1] = flag3
flag2[2] = numberValue7
flag2[3] = textValue
flag2[4] = textValue4
flag2[5] = textValue5
flag2[6] = textValue6
flag2[7] = textValue7
flag2[8] = textValue8
flag3 = {}
numberValue7 = "Robbster"
textValue = "~b~BLUE TEAM"
textValue4 = ""
textValue5 = false
textValue6 = 5
textValue7 = 2
textValue8 = 0
textValue9 = "1.4"
flag3[1] = numberValue7
flag3[2] = textValue
flag3[3] = textValue4
flag3[4] = textValue5
flag3[5] = textValue6
flag3[6] = textValue7
flag3[7] = textValue8
flag3[8] = textValue9
numberValue7 = {}
textValue = "Thomas"
textValue4 = "~b~BLUE TEAM"
textValue5 = ""
textValue6 = false
textValue7 = 7
textValue8 = 5
textValue9 = 0
textValue10 = "0.5"
numberValue7[1] = textValue
numberValue7[2] = textValue4
numberValue7[3] = textValue5
numberValue7[4] = textValue6
numberValue7[5] = textValue7
numberValue7[6] = textValue8
numberValue7[7] = textValue9
numberValue7[8] = textValue10
textValue = {}
textValue4 = "Arthur"
textValue5 = "~r~RED TEAM"
textValue6 = ""
textValue7 = false
textValue8 = 5
textValue9 = 2
textValue10 = 0
textValue11 = "0.5"
textValue[1] = textValue4
textValue[2] = textValue5
textValue[3] = textValue6
textValue[4] = textValue7
textValue[5] = textValue8
textValue[6] = textValue9
textValue[7] = textValue10
textValue[8] = textValue11
cmgCall[1] = dataTable5
cmgCall[2] = dataTable6
cmgCall[3] = textValue12
cmgCall[4] = textValue13
cmgCall[5] = flag
cmgCall[6] = flag2
cmgCall[7] = flag3
cmgCall[8] = numberValue7
cmgCall[9] = textValue
dataTable.rows = cmgCall
cmgCall = CMG
cmgCall = cmgCall.registerCommand
dataTable5 = "leaderboardtest"

-- === HELPER FUNCTION (decompiler name: dataTable6; parameters: none) ===
function dataTable6()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.isDevMode
  arg1 = arg1()
  if arg1 then
    arg1 = CMG
    arg1 = arg1.createLeaderboard
    arg2 = dataTable
    arg1 = arg1(arg2)
    arg2 = Wait
    arg3 = 1000
    arg2(arg3)
    arg2 = CMG
    arg2 = arg2.closeLeaderboard
    arg3 = arg1
    arg2(arg3)
  end
end
textValue12 = false
cmgCall(dataTable5, dataTable6, textValue12)
cmgCall = 1
dataTable5 = {}
dataTable6 = {}
textValue12 = {}
dataTable6.columns = textValue12
textValue12 = {}
dataTable6.rows = textValue12
textValue12 = false
textValue13 = -1

-- === HELPER FUNCTION (decompiler name: flag; parameters: arg1) ===
function flag(arg1)
  local arg2, arg3, stringHelper, dataTable7, dataTable8, stringHelper2, workValue19
  arg2 = math
  arg2 = arg2.floor
  arg3 = arg1 / 1000
  arg2 = arg2(arg3)
  arg3 = arg2 * 1000
  arg1 = arg1 - arg3
  arg3 = math
  arg3 = arg3.floor
  stringHelper = arg2 / 60
  arg3 = arg3(stringHelper)
  stringHelper = arg3 * 60
  arg2 = arg2 - stringHelper
  stringHelper = string
  stringHelper = stringHelper.format
  dataTable7 = "%02d:%02d:%04d"
  dataTable8 = arg3
  stringHelper2 = arg2
  workValue19 = arg1
  return stringHelper(dataTable7, dataTable8, stringHelper2, workValue19)
end

-- === HELPER FUNCTION (decompiler name: flag2; parameters: arg1) ===
function flag2(arg1)
  local arg2, arg3, stringHelper
  arg2 = "th"
  if 1 == arg1 then
    arg2 = "st"
  end
  if 2 == arg1 then
    arg2 = "nd"
  end
  if 3 == arg1 then
    arg2 = "rd"
  end
  arg3 = tostring
  stringHelper = arg1
  arg3 = arg3(stringHelper)
  stringHelper = arg2
  arg3 = arg3 .. stringHelper
  return arg3
end
flag3 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: arg1) ===
function numberValue7(arg1)
  local arg2
  arg2 = dataTable5
  arg2[arg1] = false
end
flag3.closeLeaderboard = numberValue7
flag3 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: arg1) ===
function numberValue7(arg1)
  local arg2, arg3, stringHelper, dataTable7, dataTable8, stringHelper2, workValue19, textValue15, workValue21, textValue2, workValue, dataTable3, dataTable4, numberValue2, numberValue4, workValue4, workValue6, workValue8, workValue10, workValue12, workValue14, workValue15
  arg2 = Scaleform
  arg3 = "SC_LEADERBOARD"
  arg2 = arg2(arg3)
  arg3 = arg2.RunFunction
  stringHelper = "SET_DISPLAY_TYPE"
  dataTable7 = {}
  dataTable8 = 1
  dataTable7[1] = dataTable8
  arg3(stringHelper, dataTable7)
  arg3 = arg1.title
  if arg3 then
    arg3 = arg1.title
    if arg3 then
      goto flow_label_18
    end
  end
  arg3 = "CMG RP Event"
  ::flow_label_18::
  stringHelper = arg2.RunFunction
  dataTable7 = "SET_MULTIPLAYER_TITLE"
  dataTable8 = {}
  stringHelper2 = arg3
  dataTable8[1] = stringHelper2
  stringHelper(dataTable7, dataTable8)
  stringHelper = arg2.RunFunction
  dataTable7 = "SET_TITLE"
  dataTable8 = arg1.columns
  stringHelper(dataTable7, dataTable8)
  stringHelper = ipairs
  dataTable7 = arg1.rows
  stringHelper, dataTable7, dataTable8, stringHelper2 = stringHelper(dataTable7)
  for workValue19, textValue15 in stringHelper, dataTable7, dataTable8, stringHelper2 do
    workValue21 = textValue15[3]
    if "" ~= workValue21 then
      textValue2 = "XXX"
      workValue = workValue21
      textValue2 = textValue2 .. workValue
      workValue21 = textValue2
    end
    textValue2 = arg1.formatTime
    if textValue2 then
      textValue2 = flag
      workValue = textValue15[8]
      textValue2 = textValue2(workValue)
      workValue = arg2.RunFunction
      dataTable3 = "SET_SLOT"
      dataTable4 = {}
      numberValue2 = workValue19 - 1
      numberValue4 = 1
      workValue4 = textValue15[1]
      workValue6 = textValue15[2]
      workValue8 = workValue21
      workValue10 = textValue15[5]
      workValue12 = textValue15[6]
      workValue14 = textValue15[7]
      workValue15 = textValue2
      dataTable4[1] = numberValue2
      dataTable4[2] = numberValue4
      dataTable4[3] = workValue4
      dataTable4[4] = workValue6
      dataTable4[5] = workValue8
      dataTable4[6] = workValue10
      dataTable4[7] = workValue12
      dataTable4[8] = workValue14
      dataTable4[9] = workValue15
      workValue(dataTable3, dataTable4)
    else
      textValue2 = arg2.RunFunction
      workValue = "SET_SLOT"
      dataTable3 = {}
      dataTable4 = workValue19 - 1
      numberValue2 = 1
      numberValue4 = textValue15[1]
      workValue4 = textValue15[2]
      workValue6 = workValue21
      workValue8 = textValue15[5]
      workValue10 = textValue15[6]
      workValue12 = textValue15[7]
      workValue14 = textValue15[8]
      dataTable3[1] = dataTable4
      dataTable3[2] = numberValue2
      dataTable3[3] = numberValue4
      dataTable3[4] = workValue4
      dataTable3[5] = workValue6
      dataTable3[6] = workValue8
      dataTable3[7] = workValue10
      dataTable3[8] = workValue12
      dataTable3[9] = workValue14
      textValue2(workValue, dataTable3)
    end
    textValue2 = textValue15[4]
    if textValue2 then
      textValue2 = arg2.RunFunction
      workValue = "SET_SLOT_STATE"
      dataTable3 = {}
      dataTable4 = workValue19 - 1
      numberValue2 = 2
      numberValue4 = 1
      dataTable3[1] = dataTable4
      dataTable3[2] = numberValue2
      dataTable3[3] = numberValue4
      textValue2(workValue, dataTable3)
    else
      textValue2 = arg2.RunFunction
      workValue = "SET_SLOT_STATE"
      dataTable3 = {}
      dataTable4 = workValue19 - 1
      numberValue2 = 0
      numberValue4 = 1
      dataTable3[1] = dataTable4
      dataTable3[2] = numberValue2
      dataTable3[3] = numberValue4
      textValue2(workValue, dataTable3)
    end
  end
  stringHelper = cmgCall
  stringHelper = stringHelper + 1
  cmgCall = stringHelper
  stringHelper = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION (decompiler name: dataTable7; parameters: none) ===
  function dataTable7()
    local arg12, arg22, numberValue5, numberValue6, workValue16, workValue17, workValue18, textValue14, workValue20, workValue22, textValue3, dataTable2, workValue2, numberValue, numberValue3, workValue3, workValue5, workValue7, workValue9, workValue11, workValue13
    arg22 = cmgCall
    arg12 = dataTable5
    arg12[arg22] = true
    while true do
      arg22 = cmgCall
      arg12 = dataTable5
      arg12 = arg12[arg22]
      if not arg12 then
        break
      end
      arg12 = table
      arg12 = arg12.count
      arg22 = dataTable6.rows
      -- Beginner: result below is count.
      arg12 = arg12(arg22)
      arg22 = 1
      numberValue5 = arg12
      numberValue6 = 1
      for workValue16 = arg22, numberValue5, numberValue6 do
        workValue17 = dataTable6.rows
        workValue17 = workValue17[workValue16]
        workValue18 = workValue17[3]
        if "" ~= workValue18 then
          textValue14 = "XXX"
          workValue20 = workValue18
          textValue14 = textValue14 .. workValue20
          workValue18 = textValue14
        end
        textValue14 = workValue17[1]
        workValue20 = dataTable6.formatPlace
        if workValue20 then
          workValue20 = flag2
          workValue22 = textValue14
          workValue20 = workValue20(workValue22)
          textValue14 = workValue20
        end
        workValue20 = workValue17[8]
        workValue22 = dataTable6.formatTime
        if workValue22 then
          workValue22 = flag
          textValue3 = workValue20
          workValue22 = workValue22(textValue3)
          workValue20 = workValue22
        end
        workValue22 = arg2.RunFunction
        textValue3 = "SET_SLOT"
        dataTable2 = {}
        workValue2 = workValue16 - 1
        numberValue = 1
        numberValue3 = textValue14
        workValue3 = workValue17[2]
        workValue5 = workValue18
        workValue7 = workValue17[5]
        workValue9 = workValue17[6]
        workValue11 = workValue17[7]
        workValue13 = workValue20
        dataTable2[1] = workValue2
        dataTable2[2] = numberValue
        dataTable2[3] = numberValue3
        dataTable2[4] = workValue3
        dataTable2[5] = workValue5
        dataTable2[6] = workValue7
        dataTable2[7] = workValue9
        dataTable2[8] = workValue11
        dataTable2[9] = workValue13
        workValue22(textValue3, dataTable2)
        workValue22 = workValue17[4]
        if workValue22 then
          workValue22 = arg2.RunFunction
          textValue3 = "SET_SLOT_STATE"
          dataTable2 = {}
          workValue2 = workValue16 - 1
          numberValue = 2
          numberValue3 = 1
          dataTable2[1] = workValue2
          dataTable2[2] = numberValue
          dataTable2[3] = numberValue3
          workValue22(textValue3, dataTable2)
        else
          workValue22 = arg2.RunFunction
          textValue3 = "SET_SLOT_STATE"
          dataTable2 = {}
          workValue2 = workValue16 - 1
          numberValue = 0
          numberValue3 = 1
          dataTable2[1] = workValue2
          dataTable2[2] = numberValue
          dataTable2[3] = numberValue3
          workValue22(textValue3, dataTable2)
        end
        workValue22 = textValue13
        if workValue22 > 0 then
          workValue22 = textValue13
          if workValue16 >= workValue22 then
            break
          end
        end
      end
      arg22 = arg2.Render2D
      arg22()
      arg22 = Wait
      numberValue5 = 0
      arg22(numberValue5)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  stringHelper(dataTable7)
  stringHelper = cmgCall
  return stringHelper
end
flag3.createLeaderboard = numberValue7
flag3 = RegisterNetEvent
numberValue7 = "a8ac0d4162"
-- Beginner: this function handles network event "a8ac0d4162".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2
  dataTable6 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a8ac0d4162".
flag3(numberValue7, textValue)
flag3 = CMG
-- Beginner: this function handles network event "a8ac0d4162".

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: arg1, arg2, arg3) ===
function numberValue7(arg1, arg2, arg3)
  local stringHelper, dataTable7, dataTable8, stringHelper2, workValue19, textValue15, workValue21, textValue2, workValue
  stringHelper = nil
  dataTable7 = pairs
  dataTable8 = dataTable6.rows
  dataTable7, dataTable8, stringHelper2, workValue19 = dataTable7(dataTable8)
  for textValue15, workValue21 in dataTable7, dataTable8, stringHelper2, workValue19 do
    textValue2 = workValue21.playerSrc
    if textValue2 == arg1 then
      stringHelper = textValue15
    end
  end
  if -1 == arg1 then
    dataTable7 = pairs
    dataTable8 = dataTable6.rows
    dataTable7, dataTable8, stringHelper2, workValue19 = dataTable7(dataTable8)
    for textValue15, workValue21 in dataTable7, dataTable8, stringHelper2, workValue19 do
      textValue2 = dataTable6.rows
      textValue2 = textValue2[textValue15]
      textValue2[arg2] = arg3
    end
  elseif stringHelper then
    if "+1" == arg3 then
      dataTable7 = dataTable6.rows
      dataTable7 = dataTable7[stringHelper]
      dataTable8 = dataTable6.rows
      dataTable8 = dataTable8[stringHelper]
      dataTable8 = dataTable8[arg2]
      dataTable8 = dataTable8 + 1
      dataTable7[arg2] = dataTable8
      if 6 == arg2 or 5 == arg2 then
        dataTable7 = dataTable6.rows
        dataTable7 = dataTable7[stringHelper]
        dataTable7 = dataTable7[6]
        dataTable8 = type
        stringHelper2 = dataTable7
        dataTable8 = dataTable8(stringHelper2)
        if "string" == dataTable8 then
          dataTable8 = print
          stringHelper2 = "[Error:updateScoreboard] Death is somehow a string, value is"
          workValue19 = dataTable7
          textValue15 = "playerSrc,column,value ="
          workValue21 = arg1
          textValue2 = arg2
          workValue = arg3
          dataTable8(stringHelper2, workValue19, textValue15, workValue21, textValue2, workValue)
          dataTable8 = print
          stringHelper2 = "leaderboard dump"
          workValue19 = dump
          textValue15 = dataTable6
          workValue19, textValue15, workValue21, textValue2, workValue = workValue19(textValue15)
          dataTable8(stringHelper2, workValue19, textValue15, workValue21, textValue2, workValue)
        end
        if 0 == dataTable7 then
          dataTable7 = 1
        end
        dataTable8 = tostring
        stringHelper2 = math
        stringHelper2 = stringHelper2.floor
        workValue19 = dataTable6.rows
        workValue19 = workValue19[stringHelper]
        workValue19 = workValue19[5]
        workValue19 = workValue19 / dataTable7
        workValue19 = workValue19 * 100
        stringHelper2 = stringHelper2(workValue19)
        stringHelper2 = stringHelper2 / 100
        dataTable8 = dataTable8(stringHelper2)
        stringHelper2 = dataTable6.columns
        stringHelper2 = stringHelper2[4]
        if "KDR" == stringHelper2 then
          stringHelper2 = dataTable6.rows
          stringHelper2 = stringHelper2[stringHelper]
          stringHelper2[7] = dataTable8
        else
          stringHelper2 = dataTable6.columns
          stringHelper2 = stringHelper2[5]
          if "KDR" == stringHelper2 then
            stringHelper2 = dataTable6.rows
            stringHelper2 = stringHelper2[stringHelper]
            stringHelper2[8] = dataTable8
          end
        end
      end
    else
      dataTable7 = dataTable6.rows
      dataTable7 = dataTable7[stringHelper]
      dataTable7[arg2] = arg3
    end
    dataTable7 = dataTable6.sortAscending
    if dataTable7 then
      dataTable7 = table
      dataTable7 = dataTable7.sort
      dataTable8 = dataTable6.rows

      -- === HELPER FUNCTION: stringHelper2(arg12, arg22) ===
      function stringHelper2(arg12, arg22)
        local numberValue5, numberValue6
        numberValue5 = dataTable6.sortColumn
        if not numberValue5 then
          numberValue5 = 5
        end
        numberValue5 = arg12[numberValue5]
        numberValue6 = dataTable6.sortColumn
        if not numberValue6 then
          numberValue6 = 5
        end
        numberValue6 = arg22[numberValue6]
        numberValue5 = numberValue5 < numberValue6
        return numberValue5
      end
      dataTable7(dataTable8, stringHelper2)
    else
      dataTable7 = table
      dataTable7 = dataTable7.sort
      dataTable8 = dataTable6.rows

      -- === HELPER FUNCTION: stringHelper2(arg12, arg22) ===
      function stringHelper2(arg12, arg22)
        local numberValue5, numberValue6
        numberValue5 = dataTable6.sortColumn
        if not numberValue5 then
          numberValue5 = 5
        end
        numberValue5 = arg12[numberValue5]
        numberValue6 = dataTable6.sortColumn
        if not numberValue6 then
          numberValue6 = 5
        end
        numberValue6 = arg22[numberValue6]
        numberValue5 = numberValue5 > numberValue6
        return numberValue5
      end
      dataTable7(dataTable8, stringHelper2)
    end
  else
    dataTable7 = print
    dataTable8 = "error: CMG:updateScoreboard couldn't find row with values"
    stringHelper2 = arg1
    workValue19 = arg2
    textValue15 = arg3
    dataTable7(dataTable8, stringHelper2, workValue19, textValue15)
  end
end
flag3.updateScoreboard = numberValue7
flag3 = RegisterNetEvent
numberValue7 = "35a2f746a5"
-- Beginner: this function handles network event "35a2f746a5".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2, arg3) ===
function textValue(arg1, arg2, arg3)
  local stringHelper, dataTable7, dataTable8, stringHelper2
  stringHelper = CMG
  stringHelper = stringHelper.updateScoreboard
  dataTable7 = arg1
  dataTable8 = arg2
  stringHelper2 = arg3
  stringHelper(dataTable7, dataTable8, stringHelper2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "35a2f746a5".
flag3(numberValue7, textValue)
flag3 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: arg1) ===
function numberValue7(arg1)
  local arg2
  textValue12 = arg1
end
flag3.setPlayerCanOpenLeaderboard = numberValue7
flag3 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
function numberValue7()
  local arg1, arg2
  arg1 = textValue12
  return arg1
end
flag3.canPlayerOpenLeaderboard = numberValue7
flag3 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
function numberValue7()
  local arg1, arg2
  arg1 = {}
  arg2 = {}
  arg1.columns = arg2
  arg2 = {}
  arg1.rows = arg2
  dataTable6 = arg1
  arg1 = -1
  textValue13 = arg1
end
flag3.clearLeaderboardData = numberValue7
flag3 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
function numberValue7()
  local arg1, arg2
  arg1 = table
  arg1 = arg1.count
  arg2 = dataTable6.rows
  -- Beginner: result below is count.
  arg1 = arg1(arg2)
  arg1 = arg1 > 0
  return arg1
end
flag3.isLeaderboardSetup = numberValue7
flag3 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: arg1) ===
function numberValue7(arg1)
  local arg2, arg3, stringHelper, dataTable7, dataTable8, stringHelper2, workValue19, textValue15
  arg2 = pairs
  arg3 = dataTable6.rows
  arg2, arg3, stringHelper, dataTable7 = arg2(arg3)
  for dataTable8, stringHelper2 in arg2, arg3, stringHelper, dataTable7 do
    workValue19 = stringHelper2.playerSrc
    textValue15 = arg1.playerSrc
    if workValue19 == textValue15 then
      return
    end
  end
  arg2 = table
  arg2 = arg2.insert
  arg3 = dataTable6.rows
  stringHelper = arg1
  arg2(arg3, stringHelper)
end
flag3.addPlayerToLeaderboard = numberValue7
flag3 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: arg1) ===
function numberValue7(arg1)
  local arg2, arg3, stringHelper, dataTable7, dataTable8, stringHelper2, workValue19, textValue15, workValue21
  arg2 = pairs
  arg3 = dataTable6.rows
  arg2, arg3, stringHelper, dataTable7 = arg2(arg3)
  for dataTable8, stringHelper2 in arg2, arg3, stringHelper, dataTable7 do
    workValue19 = stringHelper2.playerSrc
    if workValue19 == arg1 then
      workValue19 = table
      workValue19 = workValue19.remove
      textValue15 = dataTable6.rows
      workValue21 = dataTable8
      workValue19(textValue15, workValue21)
      break
    end
  end
end
flag3.removePlayerFromLeaderboard = numberValue7
flag3 = false

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
function numberValue7()
  local arg1, arg2, arg3
  arg1 = textValue12
  if arg1 then
    arg1 = IsControlJustPressed
    arg2 = 0
    arg3 = 212
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = flag3
      if not arg1 then
        arg1 = true
        flag3 = arg1
        arg1 = Citizen
        arg1 = arg1.CreateThreadNow

        -- === HELPER FUNCTION: arg2() ===
        function arg2()
          local arg12, arg22, numberValue5
          arg12 = CMG
          arg12 = arg12.createLeaderboard
          arg22 = dataTable6
          arg12(arg22)
          while true do
            arg12 = textValue12
            if not arg12 then
              break
            end
            arg12 = IsControlPressed
            arg22 = 0
            numberValue5 = 212
            arg12 = arg12(arg22, numberValue5)
            if not arg12 then
              break
            end
            arg12 = Wait
            arg22 = 0
            arg12(arg22)
          end
          arg12 = CMG
          arg12 = arg12.closeLeaderboard
          arg22 = cmgCall
          arg12(arg22)
          arg12 = false
          flag3 = arg12
        end
        arg1(arg2)
      end
    end
  end
end
textValue = CMG
textValue = textValue.createThreadOnTick
textValue4 = numberValue7
textValue5 = "Event Leaderboard"
-- Beginner: Run a helper every game frame while this script is active.
textValue(textValue4, textValue5)
textValue = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2
  textValue13 = arg1
end
textValue.setMaximumLeaderboardRows = textValue4
