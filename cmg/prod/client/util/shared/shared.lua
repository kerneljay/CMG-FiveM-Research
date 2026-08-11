--[[
    LEVEL 1 BEGINNER GUIDE — Shared
    ====================================

    File: cmg/prod/client/util/shared/shared.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 42
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
local tableHelper, dataTable, dataTable2, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue28, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1, arg2) ===
function dataTable(arg1, arg2)
  local arg3, arg4, arg5, stringHelper2, flag
  arg3 = 1
  arg4 = #arg1
  arg5 = 1
  for stringHelper2 = arg3, arg4, arg5 do
    flag = arg1[stringHelper2]
    if flag == arg2 then
      flag = true
      return flag
    end
  end
  arg3 = false
  return arg3
end
tableHelper.has = dataTable
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1, arg2) ===
function dataTable(arg1, arg2)
  local arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, arg5, stringHelper2 = arg3(arg4)
  for flag, workValue8 in arg3, arg4, arg5, stringHelper2 do
    if workValue8 == arg2 then
      return flag
    end
  end
  arg3 = false
  return arg3
end
tableHelper.find = dataTable
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1, arg2) ===
function dataTable(arg1, arg2)
  local arg3
  arg3 = #arg1
  arg3 = arg3 + 1
  arg1[arg3] = arg2
end
tableHelper.add = dataTable
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1, arg2) ===
function dataTable(arg1, arg2)
  local arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27
  arg3 = {}
  arg4 = 1
  arg5 = #arg1
  stringHelper2 = 1
  for flag = arg4, arg5, stringHelper2 do
    workValue8 = #arg3
    workValue8 = workValue8 + 1
    textValue27 = arg1[flag]
    arg3[workValue8] = textValue27
  end
  arg4 = 1
  arg5 = #arg2
  stringHelper2 = 1
  for flag = arg4, arg5, stringHelper2 do
    workValue8 = #arg3
    workValue8 = workValue8 + 1
    textValue27 = arg2[flag]
    arg3[workValue8] = textValue27
  end
  return arg3
end
tableHelper.join = dataTable

-- === HELPER FUNCTION: tableHelper(arg1, arg2) ===
function tableHelper(arg1, arg2)
  local arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2
  if nil == arg2 then
    arg2 = "%s"
  end
  arg3 = {}
  arg4 = 1
  arg5 = string
  arg5 = arg5.gmatch
  stringHelper2 = arg1
  flag = "([^"
  workValue8 = arg2
  textValue27 = "]+)"
  flag = flag .. workValue8 .. textValue27
  arg5, stringHelper2, flag, workValue8 = arg5(stringHelper2, flag)
  for textValue27 in arg5, stringHelper2, flag, workValue8 do
    arg3[arg4] = textValue27
    arg4 = arg4 + 1
  end
  return arg3
end
stringsplit = tableHelper
tableHelper = string

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1, arg2) ===
function dataTable(arg1, arg2)
  local arg3, arg4, arg5, stringHelper2, flag
  arg3 = string
  arg3 = arg3.sub
  arg4 = arg1
  arg5 = 1
  stringHelper2 = string
  stringHelper2 = stringHelper2.len
  flag = arg2
  stringHelper2, flag = stringHelper2(flag)
  arg3 = arg3(arg4, arg5, stringHelper2, flag)
  arg3 = arg3 == arg2
  return arg3
end
tableHelper.starts = dataTable
tableHelper = string

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1, arg2) ===
function dataTable(arg1, arg2)
  local arg3, arg4, arg5, stringHelper2, flag
  arg3 = type
  arg4 = arg1
  arg3 = arg3(arg4)
  if "string" == arg3 then
    arg3 = type
    arg4 = arg2
    arg3 = arg3(arg4)
    if "string" == arg3 then
      goto flow_label_13
    end
  end
  arg3 = false
  return arg3
  ::flow_label_13::
  arg3 = string
  arg3 = arg3.find
  arg4 = arg1
  arg5 = arg2
  stringHelper2 = 1
  flag = true
  arg3 = arg3(arg4, arg5, stringHelper2, flag)
  arg3 = nil ~= arg3
  return arg3
end
tableHelper.contains = dataTable
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1) ===
function dataTable(arg1)
  local arg2, arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27
  arg2 = 0
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, arg5, stringHelper2 = arg3(arg4)
  for flag, workValue8 in arg3, arg4, arg5, stringHelper2 do
    arg2 = arg2 + 1
  end
  return arg2
end
tableHelper.count = dataTable
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1, arg2) ===
function dataTable(arg1, arg2)
  local arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2, tableHelper3, workValue, workValue2
  arg3 = type
  arg4 = arg1
  arg3 = arg3(arg4)
  if "table" ~= arg3 then
    return arg1
  end
  if arg2 then
    arg3 = arg2[arg1]
    if arg3 then
      arg3 = arg2[arg1]
      return arg3
    end
  end
  arg3 = arg2 or arg3
  if not arg2 then
    arg3 = {}
  end
  arg4 = setmetatable
  arg5 = {}
  stringHelper2 = getmetatable
  flag = arg1
  stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2, tableHelper3, workValue, workValue2 = stringHelper2(flag)
  arg4 = arg4(arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2, tableHelper3, workValue, workValue2)
  arg3[arg1] = arg4
  arg5 = pairs
  stringHelper2 = arg1
  arg5, stringHelper2, flag, workValue8 = arg5(stringHelper2)
  for textValue27, tableHelper5 in arg5, stringHelper2, flag, workValue8 do
    tableHelper2 = table
    tableHelper2 = tableHelper2.copy
    tableHelper3 = textValue27
    workValue = arg3
    tableHelper2 = tableHelper2(tableHelper3, workValue)
    tableHelper3 = table
    tableHelper3 = tableHelper3.copy
    workValue = tableHelper5
    workValue2 = arg3
    tableHelper3 = tableHelper3(workValue, workValue2)
    arg4[tableHelper2] = tableHelper3
  end
  return arg4
end
tableHelper.copy = dataTable

-- === HELPER FUNCTION: tableHelper(arg1, arg2) ===
function tableHelper(arg1, arg2)
  local arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2
  arg3 = {}
  arg4 = 0
  arg5 = pairs
  stringHelper2 = arg1
  arg5, stringHelper2, flag, workValue8 = arg5(stringHelper2)
  for textValue27, tableHelper5 in arg5, stringHelper2, flag, workValue8 do
    arg4 = arg4 + 1
    arg3[arg4] = textValue27
  end
  arg5 = table
  arg5 = arg5.sort
  stringHelper2 = arg3
  flag = arg2
  arg5(stringHelper2, flag)
  return arg3
end
sortedKeys = tableHelper
tableHelper = CMG

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1, arg2) ===
function dataTable(arg1, arg2)
  local arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2, tableHelper3, workValue, workValue2
  arg3 = {}
  arg4 = pairs
  arg5 = arg1
  arg4, arg5, stringHelper2, flag = arg4(arg5)
  for workValue8, textValue27 in arg4, arg5, stringHelper2, flag do
    tableHelper5 = table
    tableHelper5 = tableHelper5.insert
    tableHelper2 = arg3
    tableHelper3 = {}
    workValue = workValue8
    workValue2 = textValue27
    tableHelper3[1] = workValue
    tableHelper3[2] = workValue2
    tableHelper5(tableHelper2, tableHelper3)
  end
  arg4 = table
  arg4 = arg4.sort
  arg5 = arg3

  -- === HELPER FUNCTION: stringHelper2(arg12, arg22) ===
  function stringHelper2(arg12, arg22)
    local workValue6, workValue7
    workValue6 = arg2
    if workValue6 then
      workValue6 = arg12[2]
      workValue7 = arg22[2]
      workValue6 = workValue6 < workValue7
      return workValue6
    else
      workValue6 = arg12[1]
      workValue7 = arg22[1]
      workValue6 = workValue6 < workValue7
      return workValue6
    end
  end
  arg4(arg5, stringHelper2)
  arg4 = 0

  -- === HELPER FUNCTION: arg5() ===
  function arg5()
    local arg12, arg22, workValue6
    arg12 = arg4
    arg12 = arg12 + 1
    arg4 = arg12
    arg22 = arg4
    arg12 = arg3
    arg12 = arg12[arg22]
    if arg12 then
      arg22 = arg4
      arg12 = arg3
      arg12 = arg12[arg22]
      arg12 = arg12[1]
      workValue6 = arg4
      arg22 = arg3
      arg22 = arg22[workValue6]
      arg22 = arg22[2]
      return arg12, arg22
    else
      arg12 = nil
      arg22 = nil
      return arg12, arg22
    end
  end
  return arg5
end
tableHelper.keySortedPairs = dataTable

-- === HELPER FUNCTION: tableHelper(arg1) ===
function tableHelper(arg1)
  local arg2, arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2
  arg2 = string
  arg2 = arg2.find
  arg3 = tostring
  arg4 = arg1
  arg3 = arg3(arg4)
  arg4 = "([-]?)(%d+)([.]?%d*)"
  arg2, arg3, arg4, arg5, stringHelper2 = arg2(arg3, arg4)
  workValue8 = arg5
  flag = arg5.reverse
  flag = flag(workValue8)
  workValue8 = flag
  flag = flag.gsub
  textValue27 = "(%d%d%d)"
  tableHelper5 = "%1,"
  flag = flag(workValue8, textValue27, tableHelper5)
  arg5 = flag
  flag = arg4
  textValue27 = arg5
  workValue8 = arg5.reverse
  workValue8 = workValue8(textValue27)
  textValue27 = workValue8
  workValue8 = workValue8.gsub
  tableHelper5 = "^,"
  tableHelper2 = ""
  workValue8 = workValue8(textValue27, tableHelper5, tableHelper2)
  textValue27 = stringHelper2
  flag = flag .. workValue8 .. textValue27
  return flag
end
getMoneyStringFormatted = tableHelper

-- === HELPER FUNCTION: tableHelper(arg1) ===
function tableHelper(arg1)
  local arg2, arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2, tableHelper3, workValue, workValue2
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" == arg2 then
    arg2 = "{ "
    arg3 = pairs
    arg4 = arg1
    arg3, arg4, arg5, stringHelper2 = arg3(arg4)
    for flag, workValue8 in arg3, arg4, arg5, stringHelper2 do
      textValue27 = type
      tableHelper5 = flag
      textValue27 = textValue27(tableHelper5)
      if "number" ~= textValue27 then
        textValue27 = "\""
        tableHelper5 = flag
        tableHelper2 = "\""
        textValue27 = textValue27 .. tableHelper5 .. tableHelper2
        flag = textValue27
      end
      textValue27 = arg2
      tableHelper5 = "["
      tableHelper2 = flag
      tableHelper3 = "] = "
      workValue = dump
      workValue2 = workValue8
      workValue = workValue(workValue2)
      workValue2 = ","
      textValue27 = textValue27 .. tableHelper5 .. tableHelper2 .. tableHelper3 .. workValue .. workValue2
      arg2 = textValue27
    end
    arg3 = arg2
    arg4 = "} "
    arg3 = arg3 .. arg4
    return arg3
  else
    arg2 = tostring
    arg3 = arg1
    return arg2(arg3)
  end
end
dump = tableHelper
tableHelper = math

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1, arg2) ===
function dataTable(arg1, arg2)
  local arg3, arg4
  arg3 = math
  arg3 = arg3.floor
  arg4 = arg1 / arg2
  arg3 = arg3(arg4)
  arg3 = arg3 * arg2
  return arg3
end
tableHelper.round = dataTable
tableHelper = math

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1, arg2) ===
function dataTable(arg1, arg2)
  local arg3, arg4
  if not arg2 then
    arg2 = 0
  end
  arg3 = math
  arg3 = arg3.floor
  arg4 = 10
  arg4 = arg4 ^ arg2
  arg4 = arg1 * arg4
  arg4 = arg4 + 0.5
  arg3 = arg3(arg4)
  arg4 = 10
  arg4 = arg4 ^ arg2
  arg3 = arg3 / arg4
  return arg3
end
tableHelper.rounddp = dataTable
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1, arg2, arg3) ===
function dataTable(arg1, arg2, arg3)
  local arg4, arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2, tableHelper3, workValue, workValue2, workValue3, stringHelper, workValue4
  if arg1 == arg2 then
    arg4 = true
    return arg4
  end
  arg4 = type
  arg5 = arg1
  arg4 = arg4(arg5)
  arg5 = type
  stringHelper2 = arg2
  arg5 = arg5(stringHelper2)
  if arg4 ~= arg5 then
    stringHelper2 = false
    return stringHelper2
  end
  if "table" ~= arg4 then
    stringHelper2 = false
    return stringHelper2
  end
  if not arg3 then
    stringHelper2 = getmetatable
    flag = arg1
    stringHelper2 = stringHelper2(flag)
    if stringHelper2 then
      flag = stringHelper2.__eq
      if flag then
        flag = arg1 == arg2
        return flag
      end
    end
  end
  stringHelper2 = {}
  flag = pairs
  workValue8 = arg1
  flag, workValue8, textValue27, tableHelper5 = flag(workValue8)
  for tableHelper2, tableHelper3 in flag, workValue8, textValue27, tableHelper5 do
    workValue = arg2[tableHelper2]
    if nil ~= workValue then
      workValue2 = table
      workValue2 = workValue2.contentEquals
      workValue3 = tableHelper3
      stringHelper = workValue
      workValue4 = arg3
      workValue2 = workValue2(workValue3, stringHelper, workValue4)
      if false ~= workValue2 then
        goto flow_label_53
      end
    end
    workValue2 = false
    return workValue2
    ::flow_label_53::
    stringHelper2[tableHelper2] = true
  end
  flag = pairs
  workValue8 = arg2
  flag, workValue8, textValue27, tableHelper5 = flag(workValue8)
  for tableHelper2, tableHelper3 in flag, workValue8, textValue27, tableHelper5 do
    workValue = stringHelper2[tableHelper2]
    if not workValue then
      workValue = false
      return workValue
    end
  end
  flag = true
  return flag
end
tableHelper.contentEquals = dataTable
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1) ===
function dataTable(arg1)
  local arg2, arg3, arg4, arg5, stringHelper2, flag, workValue8
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for stringHelper2, flag in arg2, arg3, arg4, arg5 do
    workValue8 = false
    return workValue8
  end
  arg2 = true
  return arg2
end
tableHelper.empty = dataTable
tableHelper = {}
dataTable = "Sunday"
dataTable2 = "Monday"
textValue21 = "Tuesday"
textValue22 = "Wednesday"
textValue23 = "Thursday"
textValue24 = "Friday"
textValue25 = "Saturday"
tableHelper[1] = dataTable
tableHelper[2] = dataTable2
tableHelper[3] = textValue21
tableHelper[4] = textValue22
tableHelper[5] = textValue23
tableHelper[6] = textValue24
tableHelper[7] = textValue25
dataTable = {}
dataTable2 = "January"
textValue21 = "February"
textValue22 = "March"
textValue23 = "April"
textValue24 = "May"
textValue25 = "June"
textValue26 = "July"
textValue28 = "August"
textValue = "September"
textValue2 = "October"
textValue3 = "November"
textValue4 = "December"
dataTable[1] = dataTable2
dataTable[2] = textValue21
dataTable[3] = textValue22
dataTable[4] = textValue23
dataTable[5] = textValue24
dataTable[6] = textValue25
dataTable[7] = textValue26
dataTable[8] = textValue28
dataTable[9] = textValue
dataTable[10] = textValue2
dataTable[11] = textValue3
dataTable[12] = textValue4

-- === HELPER FUNCTION (decompiler name: dataTable2; parameters: arg1) ===
function dataTable2(arg1)
  local arg2, arg3, arg4
  arg3 = arg1
  arg2 = arg1.sub
  arg4 = -1
  arg2 = arg2(arg3, arg4)
  if "1" == arg2 then
    if 11 ~= arg1 then
      arg2 = "st"
    else
      arg2 = "th"
    end
  elseif "2" == arg2 then
    if 12 ~= arg1 then
      arg2 = "nd"
    else
      arg2 = "th"
    end
  elseif "3" == arg2 then
    if 13 ~= arg1 then
      arg2 = "rd"
    else
      arg2 = "th"
    end
  else
    arg2 = "th"
  end
  return arg2
end
getDaySuffix = dataTable2

-- === HELPER FUNCTION (decompiler name: dataTable2; parameters: arg1) ===
function dataTable2(arg1)
  local arg2
  arg2 = tableHelper
  arg2 = arg2[arg1]
  return arg2
end
getDayName = dataTable2

-- === HELPER FUNCTION (decompiler name: dataTable2; parameters: arg1) ===
function dataTable2(arg1)
  local arg2
  arg2 = dataTable
  arg2 = arg2[arg1]
  return arg2
end
getMonthName = dataTable2

-- === HELPER FUNCTION (decompiler name: dataTable2; parameters: arg1) ===
function dataTable2(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = {}
  arg3 = math
  arg3 = arg3.floor
  arg4 = arg1 / 31556926
  arg3 = arg3(arg4)
  arg2.years = arg3
  arg3 = arg1 % 31556926
  arg4 = math
  arg4 = arg4.floor
  arg5 = arg3 / 2629743
  arg4 = arg4(arg5)
  arg2.months = arg4
  arg3 = arg3 % 2629743
  arg4 = math
  arg4 = arg4.floor
  arg5 = arg3 / 86400
  arg4 = arg4(arg5)
  arg2.days = arg4
  arg3 = arg3 % 86400
  arg4 = math
  arg4 = arg4.floor
  arg5 = arg3 / 3600
  arg4 = arg4(arg5)
  arg2.hours = arg4
  arg3 = arg3 % 3600
  arg4 = math
  arg4 = arg4.floor
  arg5 = arg3 / 60
  arg4 = arg4(arg5)
  arg2.minutes = arg4
  arg3 = arg3 % 60
  arg4 = math
  arg4 = arg4.floor
  arg5 = arg3
  arg4 = arg4(arg5)
  arg2.seconds = arg4
  return arg2
end
formatTime = dataTable2

-- === HELPER FUNCTION (decompiler name: dataTable2; parameters: arg1) ===
function dataTable2(arg1)
  local arg2, arg3, arg4, arg5, stringHelper2
  arg2 = ""
  arg3 = arg1.years
  if nil ~= arg3 then
    arg3 = arg1.years
    if arg3 > 0 then
      arg3 = arg1.years
      if 1 == arg3 then
        arg2 = "1 Year"
      else
        arg3 = string
        arg3 = arg3.format
        arg4 = "%u Years"
        arg5 = arg1.years
        arg3 = arg3(arg4, arg5)
        arg2 = arg3
      end
    end
  end
  arg3 = arg1.months
  if nil ~= arg3 then
    arg3 = arg1.months
    if arg3 > 0 then
      arg3 = arg1.months
      if 1 == arg3 then
        if "" == arg2 then
          arg2 = "1 Month"
        else
          arg3 = arg2
          arg4 = ", 1 Month"
          arg3 = arg3 .. arg4
          arg2 = arg3
        end
      elseif "" == arg2 then
        arg3 = string
        arg3 = arg3.format
        arg4 = "%u Months"
        arg5 = arg1.months
        arg3 = arg3(arg4, arg5)
        arg2 = arg3
      else
        arg3 = string
        arg3 = arg3.format
        arg4 = "%s, %u Months"
        arg5 = arg2
        stringHelper2 = arg1.months
        arg3 = arg3(arg4, arg5, stringHelper2)
        arg2 = arg3
      end
    end
  end
  arg3 = arg1.days
  if nil ~= arg3 then
    arg3 = arg1.days
    if arg3 > 0 then
      arg3 = arg1.days
      if 1 == arg3 then
        if "" == arg2 then
          arg2 = "1 Day"
        else
          arg3 = arg2
          arg4 = ", 1 Day"
          arg3 = arg3 .. arg4
          arg2 = arg3
        end
      elseif "" == arg2 then
        arg3 = string
        arg3 = arg3.format
        arg4 = "%u Days"
        arg5 = arg1.days
        arg3 = arg3(arg4, arg5)
        arg2 = arg3
      else
        arg3 = string
        arg3 = arg3.format
        arg4 = "%s, %u Days"
        arg5 = arg2
        stringHelper2 = arg1.days
        arg3 = arg3(arg4, arg5, stringHelper2)
        arg2 = arg3
      end
    end
  end
  arg3 = arg1.hours
  if nil ~= arg3 then
    arg3 = arg1.hours
    if arg3 > 0 then
      arg3 = arg1.hours
      if 1 == arg3 then
        if "" == arg2 then
          arg2 = "1 Hour"
        else
          arg3 = arg2
          arg4 = ", 1 Hour"
          arg3 = arg3 .. arg4
          arg2 = arg3
        end
      elseif "" == arg2 then
        arg3 = string
        arg3 = arg3.format
        arg4 = "%u Hour"
        arg5 = arg1.hours
        arg3 = arg3(arg4, arg5)
        arg2 = arg3
      else
        arg3 = string
        arg3 = arg3.format
        arg4 = "%s, %u Hours"
        arg5 = arg2
        stringHelper2 = arg1.hours
        arg3 = arg3(arg4, arg5, stringHelper2)
        arg2 = arg3
      end
    end
  end
  arg3 = arg1.minutes
  if nil ~= arg3 then
    arg3 = arg1.minutes
    if arg3 > 0 then
      arg3 = arg1.minutes
      if 1 == arg3 then
        if "" == arg2 then
          arg2 = "1 Minute"
        else
          arg3 = arg2
          arg4 = ", 1 Minute"
          arg3 = arg3 .. arg4
          arg2 = arg3
        end
      elseif "" == arg2 then
        arg3 = string
        arg3 = arg3.format
        arg4 = "%u Minutes"
        arg5 = arg1.minutes
        arg3 = arg3(arg4, arg5)
        arg2 = arg3
      else
        arg3 = string
        arg3 = arg3.format
        arg4 = "%s, %u Minutes"
        arg5 = arg2
        stringHelper2 = arg1.minutes
        arg3 = arg3(arg4, arg5, stringHelper2)
        arg2 = arg3
      end
    end
  end
  arg3 = arg1.seconds
  if nil ~= arg3 then
    arg3 = arg1.seconds
    if arg3 > 0 then
      arg3 = arg1.seconds
      if 1 == arg3 then
        if "" == arg2 then
          arg2 = "1 Second"
        else
          arg3 = arg2
          arg4 = "and  1 Second"
          arg3 = arg3 .. arg4
          arg2 = arg3
        end
      elseif "" == arg2 then
        arg3 = string
        arg3 = arg3.format
        arg4 = "%u Seconds"
        arg5 = arg1.seconds
        arg3 = arg3(arg4, arg5)
        arg2 = arg3
      else
        arg3 = string
        arg3 = arg3.format
        arg4 = "%s and %u Seconds"
        arg5 = arg2
        stringHelper2 = arg1.seconds
        arg3 = arg3(arg4, arg5, stringHelper2)
        arg2 = arg3
      end
    end
  end
  return arg2
end
formatTimeString = dataTable2
dataTable2 = {}
textValue21 = "~n~"
textValue22 = "~h~"
textValue23 = "<i>"
textValue24 = "\194\166"
textValue25 = "\195\183"
textValue26 = "\226\136\145"
textValue28 = "~ex_r*~"
textValue = "~ws~"
textValue2 = "\206\169"
textValue3 = "%^0"
textValue4 = "%^1"
textValue5 = "%^2"
textValue6 = "%^3"
textValue7 = "%^4"
textValue8 = "%^5"
textValue9 = "%^6"
textValue10 = "%^7"
textValue12 = "%^8"
textValue13 = "%^9"
textValue14 = "~bold~"
textValue15 = "~italic~"
textValue16 = "<C>"
textValue17 = "</C>"
textValue18 = "~nrt~"
textValue19 = "~a~"
textValue20 = "~1~"
dataTable2[1] = textValue21
dataTable2[2] = textValue22
dataTable2[3] = textValue23
dataTable2[4] = textValue24
dataTable2[5] = textValue25
dataTable2[6] = textValue26
dataTable2[7] = textValue28
dataTable2[8] = textValue
dataTable2[9] = textValue2
dataTable2[10] = textValue3
dataTable2[11] = textValue4
dataTable2[12] = textValue5
dataTable2[13] = textValue6
dataTable2[14] = textValue7
dataTable2[15] = textValue8
dataTable2[16] = textValue9
dataTable2[17] = textValue10
dataTable2[18] = textValue12
dataTable2[19] = textValue13
dataTable2[20] = textValue14
dataTable2[21] = textValue15
dataTable2[22] = textValue16
dataTable2[23] = textValue17
dataTable2[24] = textValue18
dataTable2[25] = textValue19
dataTable2[26] = textValue20
textValue21 = {}
textValue22 = "~r~"
textValue23 = "~b~"
textValue24 = "~g~"
textValue25 = "~y~"
textValue26 = "~p~"
textValue28 = "~q~"
textValue = "~o~"
textValue2 = "~c~"
textValue3 = "~t~"
textValue4 = "~m~"
textValue5 = "~u~"
textValue6 = "~l~"
textValue7 = "~w~"
textValue8 = "~s~"
textValue9 = "~"
textValue21[1] = textValue22
textValue21[2] = textValue23
textValue21[3] = textValue24
textValue21[4] = textValue25
textValue21[5] = textValue26
textValue21[6] = textValue28
textValue21[7] = textValue
textValue21[8] = textValue2
textValue21[9] = textValue3
textValue21[10] = textValue4
textValue21[11] = textValue5
textValue21[12] = textValue6
textValue21[13] = textValue7
textValue21[14] = textValue8
textValue21[15] = textValue9
textValue22 = CMG

-- === HELPER FUNCTION (decompiler name: textValue23; parameters: arg1, arg2) ===
function textValue23(arg1, arg2)
  local arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2, tableHelper3, workValue
  if nil == arg1 then
    arg3 = "N/A"
    return arg3
  end
  arg3 = arg1
  arg4 = pairs
  arg5 = dataTable2
  arg4, arg5, stringHelper2, flag = arg4(arg5)
  for workValue8, textValue27 in arg4, arg5, stringHelper2, flag do
    tableHelper5 = arg1.gsub
    tableHelper2 = arg3
    tableHelper3 = arg1.lower
    workValue = textValue27
    tableHelper3 = tableHelper3(workValue)
    workValue = ""
    tableHelper5 = tableHelper5(tableHelper2, tableHelper3, workValue)
    arg3 = tableHelper5
  end
  if not arg2 then
    arg4 = pairs
    arg5 = textValue21
    arg4, arg5, stringHelper2, flag = arg4(arg5)
    for workValue8, textValue27 in arg4, arg5, stringHelper2, flag do
      tableHelper5 = arg1.gsub
      tableHelper2 = arg3
      tableHelper3 = arg1.lower
      workValue = textValue27
      tableHelper3 = tableHelper3(workValue)
      workValue = ""
      tableHelper5 = tableHelper5(tableHelper2, tableHelper3, workValue)
      arg3 = tableHelper5
    end
  end
  return arg3
end
textValue22.sanitizeString = textValue23
textValue22 = GetPlayerName

-- === HELPER FUNCTION (decompiler name: textValue23; parameters: arg1) ===
function textValue23(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = textValue22
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = CMG
  arg3 = arg3.sanitizeString
  arg4 = arg2
  arg5 = false
  return arg3(arg4, arg5)
end
GetPlayerName = textValue23
textValue23 = {}
textValue23[1] = true
textValue23[2] = true
textValue24 = CMG

-- === HELPER FUNCTION (decompiler name: textValue25; parameters: arg1) ===
function textValue25(arg1)
  local arg2
  arg2 = textValue23
  arg2 = arg2[arg1]
  if not arg2 then
    arg2 = false
  end
  return arg2
end
textValue24.isDeveloper = textValue25
textValue24 = CMG

-- === HELPER FUNCTION (decompiler name: textValue25; parameters: arg1) ===
function textValue25(arg1)
  local arg2, arg3, arg4
  arg2 = arg1 % 6
  if 0 == arg2 then
    arg3 = "~b~"
    return arg3
  elseif 1 == arg2 then
    arg3 = "~y~"
    return arg3
  elseif 2 == arg2 then
    arg3 = "~o~"
    return arg3
  elseif 3 == arg2 then
    arg3 = "~g~"
    return arg3
  elseif 4 == arg2 then
    arg3 = "~p~"
    return arg3
  elseif 5 == arg2 then
    arg3 = "~q~"
    return arg3
  elseif 6 == arg2 then
    arg3 = "~r~"
    return arg3
  end
  arg3 = error
  arg4 = "Modulus operation failed"
  arg3(arg4)
end
textValue24.getPlayerColour = textValue25
textValue24 = {}
textValue24.r = true
textValue24.n = true
textValue24.b = true
textValue24.q = true
textValue24.k = true
textValue24.p = true
textValue24.R = true
textValue24.N = true
textValue24.B = true
textValue24.Q = true
textValue24.K = true
textValue24.P = true
textValue25 = CMG

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1) ===
function textValue26(arg1)
  local arg2, arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2, tableHelper3, workValue, workValue2, workValue3, stringHelper, workValue4, tableHelper4, workValue5, textValue11
  arg2 = {}
  arg3 = {}
  arg4 = {}
  arg5 = {}
  stringHelper2 = {}
  flag = {}
  workValue8 = {}
  textValue27 = {}
  tableHelper5 = {}
  arg2[1] = arg3
  arg2[2] = arg4
  arg2[3] = arg5
  arg2[4] = stringHelper2
  arg2[5] = flag
  arg2[6] = workValue8
  arg2[7] = textValue27
  arg2[8] = tableHelper5
  arg3 = 1
  arg4 = ""
  arg5 = 0
  stringHelper2 = 0
  flag = 0
  workValue8 = 1
  textValue27 = #arg1
  tableHelper5 = 1
  for tableHelper2 = workValue8, textValue27, tableHelper5 do
    tableHelper3 = string
    tableHelper3 = tableHelper3.sub
    workValue = arg1
    workValue2 = tableHelper2
    workValue3 = tableHelper2
    tableHelper3 = tableHelper3(workValue, workValue2, workValue3)
    if "/" == tableHelper3 then
      workValue = assert
      workValue2 = arg2[arg3]
      workValue2 = #workValue2
      workValue2 = 8 == workValue2
      workValue(workValue2)
      arg3 = arg3 + 1
    elseif " " == tableHelper3 then
      workValue = assert
      workValue2 = flag <= 5
      workValue(workValue2)
      flag = flag + 1
    elseif flag > 0 then
      workValue = string
      workValue = workValue.sub
      workValue2 = arg1
      workValue3 = tableHelper2
      stringHelper = string
      stringHelper = stringHelper.find
      workValue4 = arg1
      tableHelper4 = " "
      workValue5 = tableHelper2
      stringHelper, workValue4, tableHelper4, workValue5, textValue11 = stringHelper(workValue4, tableHelper4, workValue5)
      workValue = workValue(workValue2, workValue3, stringHelper, workValue4, tableHelper4, workValue5, textValue11)
      if 1 == flag then
        workValue2 = assert
        workValue3 = "w" == tableHelper3 or "b" == tableHelper3
        workValue2(workValue3)
        arg4 = tableHelper3
      elseif 4 == flag then
        workValue2 = tonumber
        workValue3 = workValue
        workValue2 = workValue2(workValue3)
        workValue3 = assert
        stringHelper = type
        workValue4 = workValue2
        stringHelper = stringHelper(workValue4)
        stringHelper = "number" == stringHelper
        workValue3(stringHelper)
        workValue3 = assert
        stringHelper = workValue2 >= 0
        workValue3(stringHelper)
        arg5 = workValue2
      elseif 5 == flag then
        workValue2 = tonumber
        workValue3 = workValue
        workValue2 = workValue2(workValue3)
        workValue3 = assert
        stringHelper = type
        workValue4 = workValue2
        stringHelper = stringHelper(workValue4)
        stringHelper = "number" == stringHelper
        workValue3(stringHelper)
        workValue3 = assert
        stringHelper = workValue2 >= 0
        workValue3(stringHelper)
        stringHelper2 = workValue2
      end
    elseif arg3 <= 8 then
      workValue = tonumber
      workValue2 = tableHelper3
      workValue = workValue(workValue2)
      if workValue then
        workValue2 = assert
        workValue3 = workValue >= 0 and workValue <= 8
        workValue2(workValue3)
        workValue2 = 1
        workValue3 = workValue
        stringHelper = 1
        for workValue4 = workValue2, workValue3, stringHelper do
          tableHelper4 = table
          tableHelper4 = tableHelper4.insert
          workValue5 = arg2[arg3]
          textValue11 = ""
          tableHelper4(workValue5, textValue11)
        end
      else
        workValue2 = assert
        workValue3 = arg2[arg3]
        workValue3 = #workValue3
        workValue3 = workValue3 <= 8
        workValue2(workValue3)
        workValue2 = assert
        workValue3 = textValue24
        workValue3 = workValue3[tableHelper3]
        workValue2(workValue3)
        workValue2 = table
        workValue2 = workValue2.insert
        workValue3 = arg2[arg3]
        stringHelper = tableHelper3
        workValue2(workValue3, stringHelper)
      end
    end
  end
  workValue8 = assert
  textValue27 = 8 == arg3
  workValue8(textValue27)
  workValue8 = assert
  textValue27 = 5 == flag
  workValue8(textValue27)
  workValue8 = arg2
  textValue27 = arg4
  tableHelper5 = arg5
  tableHelper2 = stringHelper2
  return workValue8, textValue27, tableHelper5, tableHelper2
end
textValue25.parseChessFEN = textValue26
textValue25 = CMG

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1) ===
function textValue26(arg1)
  local arg2, arg3, arg4, arg5, stringHelper2
  arg2 = nil
  if arg1 then
    arg3 = string
    arg3 = arg3.upper
    arg4 = arg1
    arg3 = arg3(arg4)
    arg2 = arg3
    arg3 = string
    arg3 = arg3.gsub
    arg4 = arg2
    arg5 = "%s+"
    stringHelper2 = ""
    arg3 = arg3(arg4, arg5, stringHelper2)
    arg2 = arg3
    arg3 = string
    arg3 = arg3.gsub
    arg4 = arg2
    arg5 = "%W"
    stringHelper2 = ""
    arg3 = arg3(arg4, arg5, stringHelper2)
    arg2 = arg3
  end
  return arg2
end
textValue25.getFlatLicensePlate = textValue26
textValue25 = string

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1, arg2, arg3) ===
function textValue26(arg1, arg2, arg3)
  local arg4, arg5, stringHelper2, flag
  arg4 = arg1
  arg5 = string
  arg5 = arg5.rep
  stringHelper2 = arg3
  flag = #arg1
  flag = arg2 - flag
  arg5 = arg5(stringHelper2, flag)
  arg4 = arg4 .. arg5
  return arg4
end
textValue25.lpad = textValue26
textValue25 = string

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1, arg2, arg3) ===
function textValue26(arg1, arg2, arg3)
  local arg4, arg5, stringHelper2
  arg4 = string
  arg4 = arg4.rep
  arg5 = arg3
  stringHelper2 = #arg1
  stringHelper2 = arg2 - stringHelper2
  arg4 = arg4(arg5, stringHelper2)
  arg5 = arg1
  arg4 = arg4 .. arg5
  return arg4
end
textValue25.rpad = textValue26
textValue25 = math
textValue25.pi = 3.141592653589793
textValue25 = table

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1, arg2) ===
function textValue26(arg1, arg2)
  local arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5
  arg3 = 1
  arg4 = pairs
  arg5 = arg1
  arg4, arg5, stringHelper2, flag = arg4(arg5)
  for workValue8 in arg4, arg5, stringHelper2, flag do
    if arg3 == arg2 then
      return workValue8
    end
    arg3 = arg3 + 1
  end
  arg4 = error
  arg5 = string
  arg5 = arg5.format
  stringHelper2 = "Index %s out of range (1 to %s)"
  flag = arg2
  workValue8 = table
  workValue8 = workValue8.count
  textValue27 = arg1
  workValue8, textValue27, tableHelper5 = workValue8(textValue27)
  arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5 = arg5(stringHelper2, flag, workValue8, textValue27, tableHelper5)
  arg4(arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5)
end
textValue25.keyat = textValue26
textValue25 = string

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1, arg2, arg3, arg4, arg5) ===
function textValue26(arg1, arg2, arg3, arg4, arg5)
  local stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2, tableHelper3
  stringHelper2 = string
  stringHelper2 = stringHelper2.sub
  flag = arg1
  workValue8 = 1
  textValue27 = arg5 - 1
  stringHelper2 = stringHelper2(flag, workValue8, textValue27)
  flag = string
  flag = flag.sub
  workValue8 = arg1
  textValue27 = arg5
  flag = flag(workValue8, textValue27)
  workValue8 = string
  workValue8 = workValue8.gsub
  textValue27 = flag
  tableHelper5 = arg2
  tableHelper2 = arg3
  tableHelper3 = arg4
  workValue8, textValue27 = workValue8(textValue27, tableHelper5, tableHelper2, tableHelper3)
  tableHelper5 = stringHelper2
  tableHelper2 = workValue8
  tableHelper5 = tableHelper5 .. tableHelper2
  tableHelper2 = textValue27
  return tableHelper5, tableHelper2
end
textValue25.indexedgsub = textValue26
textValue25 = table

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1) ===
function textValue26(arg1)
  local arg2, arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2
  arg2 = {}
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, arg5, stringHelper2 = arg3(arg4)
  for flag, workValue8 in arg3, arg4, arg5, stringHelper2 do
    textValue27 = tonumber
    tableHelper5 = flag
    textValue27 = textValue27(tableHelper5)
    if textValue27 then
      tableHelper5 = math
      tableHelper5 = tableHelper5.type
      tableHelper2 = textValue27
      tableHelper5 = tableHelper5(tableHelper2)
      if "integer" == tableHelper5 then
        arg2[textValue27] = workValue8
      end
    end
  end
  return arg2
end
textValue25.indicies = textValue26
textValue25 = table

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1, arg2) ===
function textValue26(arg1, arg2)
  local arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27, tableHelper5, tableHelper2, tableHelper3
  arg3 = {}
  arg4 = pairs
  arg5 = arg1
  arg4, arg5, stringHelper2, flag = arg4(arg5)
  for workValue8, textValue27 in arg4, arg5, stringHelper2, flag do
    tableHelper5 = arg2
    tableHelper2 = textValue27
    tableHelper5 = tableHelper5(tableHelper2)
    if tableHelper5 then
      tableHelper5 = table
      tableHelper5 = tableHelper5.insert
      tableHelper2 = arg3
      tableHelper3 = textValue27
      tableHelper5(tableHelper2, tableHelper3)
    end
  end
  return arg3
end
textValue25.filter = textValue26
textValue25 = CMG

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1, arg2, arg3) ===
function textValue26(arg1, arg2, arg3)
  local arg4, arg5
  arg4 = _G

  -- === HELPER FUNCTION: arg5(...) ===
  function arg5(...)
    local arg12, arg22, workValue6
    arg12 = arg3
    arg22 = arg2
    workValue6 = ...
    return arg12(arg22, workValue6)
  end
  arg4[arg1] = arg5
end
textValue25.patchFunction = textValue26
textValue25 = table

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1) ===
function textValue26(arg1)
  local arg2, arg3, arg4, arg5, stringHelper2, flag, workValue8, textValue27
  arg2 = #arg1
  arg3 = arg2
  arg4 = 2
  arg5 = -1
  for stringHelper2 = arg3, arg4, arg5 do
    flag = math
    flag = flag.random
    workValue8 = stringHelper2
    flag = flag(workValue8)
    workValue8 = arg1[flag]
    textValue27 = arg1[stringHelper2]
    arg1[flag] = textValue27
    arg1[stringHelper2] = workValue8
  end
end
textValue25.shuffle = textValue26
textValue25 = table

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1) ===
function textValue26(arg1)
  local arg2, arg3, arg4
  arg2 = arg1.x
  if arg2 then
    arg2 = arg1.y
    if arg2 then
      arg2 = vector2
      arg3 = arg1.x
      arg4 = arg1.y
      return arg2(arg3, arg4)
    end
  end
  arg2 = error
  arg3 = "Table can not be converted to a vector."
  arg2(arg3)
end
textValue25.vector2 = textValue26
textValue25 = table

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1) ===
function textValue26(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = arg1.x
  if arg2 then
    arg2 = arg1.y
    if arg2 then
      arg2 = arg1.z
      if arg2 then
        arg2 = vector3
        arg3 = arg1.x
        arg4 = arg1.y
        arg5 = arg1.z
        return arg2(arg3, arg4, arg5)
      end
    end
  end
  arg2 = error
  arg3 = "Table can not be converted to a vector."
  arg2(arg3)
end
textValue25.vector3 = textValue26
textValue25 = table

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1) ===
function textValue26(arg1)
  local arg2, arg3, arg4, arg5, stringHelper2
  arg2 = arg1.x
  if arg2 then
    arg2 = arg1.y
    if arg2 then
      arg2 = arg1.z
      if arg2 then
        arg2 = arg1.w
        if arg2 then
          arg2 = vector4
          arg3 = arg1.x
          arg4 = arg1.y
          arg5 = arg1.z
          stringHelper2 = arg1.w
          return arg2(arg3, arg4, arg5, stringHelper2)
        end
      end
    end
  end
  arg2 = error
  arg3 = "Table can not be converted to a vector."
  arg2(arg3)
end
textValue25.vector4 = textValue26
