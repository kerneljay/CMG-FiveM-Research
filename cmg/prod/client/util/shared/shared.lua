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
local tableHelper, dataCollection, dataCollection2, text21, text22, text23, text24, text25, text26, text28, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2) ===
function dataCollection(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stringHelper2, stateFlag
  localValue3 = 1
  localValue4 = #localValue1
  localValue5 = 1
  for stringHelper2 = localValue3, localValue4, localValue5 do
    stateFlag = localValue1[stringHelper2]
    if stateFlag == localValue2 then
      stateFlag = true
      return stateFlag
    end
  end
  localValue3 = false
  return localValue3
end
tableHelper.has = dataCollection
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2) ===
function dataCollection(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, stringHelper2 = localValue3(localValue4)
  for stateFlag, workingValue8 in localValue3, localValue4, localValue5, stringHelper2 do
    if workingValue8 == localValue2 then
      return stateFlag
    end
  end
  localValue3 = false
  return localValue3
end
tableHelper.find = dataCollection
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2) ===
function dataCollection(localValue1, localValue2)
  local localValue3
  localValue3 = #localValue1
  localValue3 = localValue3 + 1
  localValue1[localValue3] = localValue2
end
tableHelper.add = dataCollection
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2) ===
function dataCollection(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27
  localValue3 = {}
  localValue4 = 1
  localValue5 = #localValue1
  stringHelper2 = 1
  for stateFlag = localValue4, localValue5, stringHelper2 do
    workingValue8 = #localValue3
    workingValue8 = workingValue8 + 1
    text27 = localValue1[stateFlag]
    localValue3[workingValue8] = text27
  end
  localValue4 = 1
  localValue5 = #localValue2
  stringHelper2 = 1
  for stateFlag = localValue4, localValue5, stringHelper2 do
    workingValue8 = #localValue3
    workingValue8 = workingValue8 + 1
    text27 = localValue2[stateFlag]
    localValue3[workingValue8] = text27
  end
  return localValue3
end
tableHelper.join = dataCollection

-- === HELPER FUNCTION: tableHelper(localValue1, localValue2) ===
function tableHelper(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2
  if nil == localValue2 then
    localValue2 = "%s"
  end
  localValue3 = {}
  localValue4 = 1
  localValue5 = string
  localValue5 = localValue5.gmatch
  stringHelper2 = localValue1
  stateFlag = "([^"
  workingValue8 = localValue2
  text27 = "]+)"
  stateFlag = stateFlag .. workingValue8 .. text27
  localValue5, stringHelper2, stateFlag, workingValue8 = localValue5(stringHelper2, stateFlag)
  for text27 in localValue5, stringHelper2, stateFlag, workingValue8 do
    localValue3[localValue4] = text27
    localValue4 = localValue4 + 1
  end
  return localValue3
end
stringsplit = tableHelper
tableHelper = string

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2) ===
function dataCollection(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stringHelper2, stateFlag
  localValue3 = string
  localValue3 = localValue3.sub
  localValue4 = localValue1
  localValue5 = 1
  stringHelper2 = string
  stringHelper2 = stringHelper2.len
  stateFlag = localValue2
  stringHelper2, stateFlag = stringHelper2(stateFlag)
  localValue3 = localValue3(localValue4, localValue5, stringHelper2, stateFlag)
  localValue3 = localValue3 == localValue2
  return localValue3
end
tableHelper.starts = dataCollection
tableHelper = string

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2) ===
function dataCollection(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stringHelper2, stateFlag
  localValue3 = type
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if "string" == localValue3 then
    localValue3 = type
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if "string" == localValue3 then
      goto continueAtStep13
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep13::
  localValue3 = string
  localValue3 = localValue3.find
  localValue4 = localValue1
  localValue5 = localValue2
  stringHelper2 = 1
  stateFlag = true
  localValue3 = localValue3(localValue4, localValue5, stringHelper2, stateFlag)
  localValue3 = nil ~= localValue3
  return localValue3
end
tableHelper.contains = dataCollection
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1) ===
function dataCollection(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27
  localValue2 = 0
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, stringHelper2 = localValue3(localValue4)
  for stateFlag, workingValue8 in localValue3, localValue4, localValue5, stringHelper2 do
    localValue2 = localValue2 + 1
  end
  return localValue2
end
tableHelper.count = dataCollection
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2) ===
function dataCollection(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2, tableHelper3, workingValue, workingValue2
  localValue3 = type
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if "table" ~= localValue3 then
    return localValue1
  end
  if localValue2 then
    localValue3 = localValue2[localValue1]
    if localValue3 then
      localValue3 = localValue2[localValue1]
      return localValue3
    end
  end
  localValue3 = localValue2 or localValue3
  if not localValue2 then
    localValue3 = {}
  end
  localValue4 = setmetatable
  localValue5 = {}
  stringHelper2 = getmetatable
  stateFlag = localValue1
  stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2, tableHelper3, workingValue, workingValue2 = stringHelper2(stateFlag)
  localValue4 = localValue4(localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2, tableHelper3, workingValue, workingValue2)
  localValue3[localValue1] = localValue4
  localValue5 = pairs
  stringHelper2 = localValue1
  localValue5, stringHelper2, stateFlag, workingValue8 = localValue5(stringHelper2)
  for text27, tableHelper5 in localValue5, stringHelper2, stateFlag, workingValue8 do
    tableHelper2 = table
    tableHelper2 = tableHelper2.copy
    tableHelper3 = text27
    workingValue = localValue3
    tableHelper2 = tableHelper2(tableHelper3, workingValue)
    tableHelper3 = table
    tableHelper3 = tableHelper3.copy
    workingValue = tableHelper5
    workingValue2 = localValue3
    tableHelper3 = tableHelper3(workingValue, workingValue2)
    localValue4[tableHelper2] = tableHelper3
  end
  return localValue4
end
tableHelper.copy = dataCollection

-- === HELPER FUNCTION: tableHelper(localValue1, localValue2) ===
function tableHelper(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2
  localValue3 = {}
  localValue4 = 0
  localValue5 = pairs
  stringHelper2 = localValue1
  localValue5, stringHelper2, stateFlag, workingValue8 = localValue5(stringHelper2)
  for text27, tableHelper5 in localValue5, stringHelper2, stateFlag, workingValue8 do
    localValue4 = localValue4 + 1
    localValue3[localValue4] = text27
  end
  localValue5 = table
  localValue5 = localValue5.sort
  stringHelper2 = localValue3
  stateFlag = localValue2
  localValue5(stringHelper2, stateFlag)
  return localValue3
end
sortedKeys = tableHelper
tableHelper = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2) ===
function dataCollection(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2, tableHelper3, workingValue, workingValue2
  localValue3 = {}
  localValue4 = pairs
  localValue5 = localValue1
  localValue4, localValue5, stringHelper2, stateFlag = localValue4(localValue5)
  for workingValue8, text27 in localValue4, localValue5, stringHelper2, stateFlag do
    tableHelper5 = table
    tableHelper5 = tableHelper5.insert
    tableHelper2 = localValue3
    tableHelper3 = {}
    workingValue = workingValue8
    workingValue2 = text27
    tableHelper3[1] = workingValue
    tableHelper3[2] = workingValue2
    tableHelper5(tableHelper2, tableHelper3)
  end
  localValue4 = table
  localValue4 = localValue4.sort
  localValue5 = localValue3

  -- === HELPER FUNCTION: stringHelper2(localValue12, localValue22) ===
  function stringHelper2(localValue12, localValue22)
    local workingValue6, workingValue7
    workingValue6 = localValue2
    if workingValue6 then
      workingValue6 = localValue12[2]
      workingValue7 = localValue22[2]
      workingValue6 = workingValue6 < workingValue7
      return workingValue6
    else
      workingValue6 = localValue12[1]
      workingValue7 = localValue22[1]
      workingValue6 = workingValue6 < workingValue7
      return workingValue6
    end
  end
  localValue4(localValue5, stringHelper2)
  localValue4 = 0

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local localValue12, localValue22, workingValue6
    localValue12 = localValue4
    localValue12 = localValue12 + 1
    localValue4 = localValue12
    localValue22 = localValue4
    localValue12 = localValue3
    localValue12 = localValue12[localValue22]
    if localValue12 then
      localValue22 = localValue4
      localValue12 = localValue3
      localValue12 = localValue12[localValue22]
      localValue12 = localValue12[1]
      workingValue6 = localValue4
      localValue22 = localValue3
      localValue22 = localValue22[workingValue6]
      localValue22 = localValue22[2]
      return localValue12, localValue22
    else
      localValue12 = nil
      localValue22 = nil
      return localValue12, localValue22
    end
  end
  return localValue5
end
tableHelper.keySortedPairs = dataCollection

-- === HELPER FUNCTION: tableHelper(localValue1) ===
function tableHelper(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2
  localValue2 = string
  localValue2 = localValue2.find
  localValue3 = tostring
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue4 = "([-]?)(%d+)([.]?%d*)"
  localValue2, localValue3, localValue4, localValue5, stringHelper2 = localValue2(localValue3, localValue4)
  workingValue8 = localValue5
  stateFlag = localValue5.reverse
  stateFlag = stateFlag(workingValue8)
  workingValue8 = stateFlag
  stateFlag = stateFlag.gsub
  text27 = "(%d%d%d)"
  tableHelper5 = "%1,"
  stateFlag = stateFlag(workingValue8, text27, tableHelper5)
  localValue5 = stateFlag
  stateFlag = localValue4
  text27 = localValue5
  workingValue8 = localValue5.reverse
  workingValue8 = workingValue8(text27)
  text27 = workingValue8
  workingValue8 = workingValue8.gsub
  tableHelper5 = "^,"
  tableHelper2 = ""
  workingValue8 = workingValue8(text27, tableHelper5, tableHelper2)
  text27 = stringHelper2
  stateFlag = stateFlag .. workingValue8 .. text27
  return stateFlag
end
getMoneyStringFormatted = tableHelper

-- === HELPER FUNCTION: tableHelper(localValue1) ===
function tableHelper(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2, tableHelper3, workingValue, workingValue2
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" == localValue2 then
    localValue2 = "{ "
    localValue3 = pairs
    localValue4 = localValue1
    localValue3, localValue4, localValue5, stringHelper2 = localValue3(localValue4)
    for stateFlag, workingValue8 in localValue3, localValue4, localValue5, stringHelper2 do
      text27 = type
      tableHelper5 = stateFlag
      text27 = text27(tableHelper5)
      if "number" ~= text27 then
        text27 = "\""
        tableHelper5 = stateFlag
        tableHelper2 = "\""
        text27 = text27 .. tableHelper5 .. tableHelper2
        stateFlag = text27
      end
      text27 = localValue2
      tableHelper5 = "["
      tableHelper2 = stateFlag
      tableHelper3 = "] = "
      workingValue = dump
      workingValue2 = workingValue8
      workingValue = workingValue(workingValue2)
      workingValue2 = ","
      text27 = text27 .. tableHelper5 .. tableHelper2 .. tableHelper3 .. workingValue .. workingValue2
      localValue2 = text27
    end
    localValue3 = localValue2
    localValue4 = "} "
    localValue3 = localValue3 .. localValue4
    return localValue3
  else
    localValue2 = tostring
    localValue3 = localValue1
    return localValue2(localValue3)
  end
end
dump = tableHelper
tableHelper = math

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2) ===
function dataCollection(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = math
  localValue3 = localValue3.floor
  localValue4 = localValue1 / localValue2
  localValue3 = localValue3(localValue4)
  localValue3 = localValue3 * localValue2
  return localValue3
end
tableHelper.round = dataCollection
tableHelper = math

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2) ===
function dataCollection(localValue1, localValue2)
  local localValue3, localValue4
  if not localValue2 then
    localValue2 = 0
  end
  localValue3 = math
  localValue3 = localValue3.floor
  localValue4 = 10
  localValue4 = localValue4 ^ localValue2
  localValue4 = localValue1 * localValue4
  localValue4 = localValue4 + 0.5
  localValue3 = localValue3(localValue4)
  localValue4 = 10
  localValue4 = localValue4 ^ localValue2
  localValue3 = localValue3 / localValue4
  return localValue3
end
tableHelper.rounddp = dataCollection
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2, localValue3) ===
function dataCollection(localValue1, localValue2, localValue3)
  local localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2, tableHelper3, workingValue, workingValue2, workingValue3, stringHelper, workingValue4
  if localValue1 == localValue2 then
    localValue4 = true
    return localValue4
  end
  localValue4 = type
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  localValue5 = type
  stringHelper2 = localValue2
  localValue5 = localValue5(stringHelper2)
  if localValue4 ~= localValue5 then
    stringHelper2 = false
    return stringHelper2
  end
  if "table" ~= localValue4 then
    stringHelper2 = false
    return stringHelper2
  end
  if not localValue3 then
    stringHelper2 = getmetatable
    stateFlag = localValue1
    stringHelper2 = stringHelper2(stateFlag)
    if stringHelper2 then
      stateFlag = stringHelper2.__eq
      if stateFlag then
        stateFlag = localValue1 == localValue2
        return stateFlag
      end
    end
  end
  stringHelper2 = {}
  stateFlag = pairs
  workingValue8 = localValue1
  stateFlag, workingValue8, text27, tableHelper5 = stateFlag(workingValue8)
  for tableHelper2, tableHelper3 in stateFlag, workingValue8, text27, tableHelper5 do
    workingValue = localValue2[tableHelper2]
    if nil ~= workingValue then
      workingValue2 = table
      workingValue2 = workingValue2.contentEquals
      workingValue3 = tableHelper3
      stringHelper = workingValue
      workingValue4 = localValue3
      workingValue2 = workingValue2(workingValue3, stringHelper, workingValue4)
      if false ~= workingValue2 then
        goto continueAtStep53
      end
    end
    workingValue2 = false
    return workingValue2
    ::continueAtStep53::
    stringHelper2[tableHelper2] = true
  end
  stateFlag = pairs
  workingValue8 = localValue2
  stateFlag, workingValue8, text27, tableHelper5 = stateFlag(workingValue8)
  for tableHelper2, tableHelper3 in stateFlag, workingValue8, text27, tableHelper5 do
    workingValue = stringHelper2[tableHelper2]
    if not workingValue then
      workingValue = false
      return workingValue
    end
  end
  stateFlag = true
  return stateFlag
end
tableHelper.contentEquals = dataCollection
tableHelper = table

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1) ===
function dataCollection(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for stringHelper2, stateFlag in localValue2, localValue3, localValue4, localValue5 do
    workingValue8 = false
    return workingValue8
  end
  localValue2 = true
  return localValue2
end
tableHelper.empty = dataCollection
tableHelper = {}
dataCollection = "Sunday"
dataCollection2 = "Monday"
text21 = "Tuesday"
text22 = "Wednesday"
text23 = "Thursday"
text24 = "Friday"
text25 = "Saturday"
tableHelper[1] = dataCollection
tableHelper[2] = dataCollection2
tableHelper[3] = text21
tableHelper[4] = text22
tableHelper[5] = text23
tableHelper[6] = text24
tableHelper[7] = text25
dataCollection = {}
dataCollection2 = "January"
text21 = "February"
text22 = "March"
text23 = "April"
text24 = "May"
text25 = "June"
text26 = "July"
text28 = "August"
text = "September"
text2 = "October"
text3 = "November"
text4 = "December"
dataCollection[1] = dataCollection2
dataCollection[2] = text21
dataCollection[3] = text22
dataCollection[4] = text23
dataCollection[5] = text24
dataCollection[6] = text25
dataCollection[7] = text26
dataCollection[8] = text28
dataCollection[9] = text
dataCollection[10] = text2
dataCollection[11] = text3
dataCollection[12] = text4

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue1) ===
function dataCollection2(localValue1)
  local localValue2, localValue3, localValue4
  localValue3 = localValue1
  localValue2 = localValue1.sub
  localValue4 = -1
  localValue2 = localValue2(localValue3, localValue4)
  if "1" == localValue2 then
    if 11 ~= localValue1 then
      localValue2 = "st"
    else
      localValue2 = "th"
    end
  elseif "2" == localValue2 then
    if 12 ~= localValue1 then
      localValue2 = "nd"
    else
      localValue2 = "th"
    end
  elseif "3" == localValue2 then
    if 13 ~= localValue1 then
      localValue2 = "rd"
    else
      localValue2 = "th"
    end
  else
    localValue2 = "th"
  end
  return localValue2
end
getDaySuffix = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue1) ===
function dataCollection2(localValue1)
  local localValue2
  localValue2 = tableHelper
  localValue2 = localValue2[localValue1]
  return localValue2
end
getDayName = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue1) ===
function dataCollection2(localValue1)
  local localValue2
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  return localValue2
end
getMonthName = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue1) ===
function dataCollection2(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = {}
  localValue3 = math
  localValue3 = localValue3.floor
  localValue4 = localValue1 / 31556926
  localValue3 = localValue3(localValue4)
  localValue2.years = localValue3
  localValue3 = localValue1 % 31556926
  localValue4 = math
  localValue4 = localValue4.floor
  localValue5 = localValue3 / 2629743
  localValue4 = localValue4(localValue5)
  localValue2.months = localValue4
  localValue3 = localValue3 % 2629743
  localValue4 = math
  localValue4 = localValue4.floor
  localValue5 = localValue3 / 86400
  localValue4 = localValue4(localValue5)
  localValue2.days = localValue4
  localValue3 = localValue3 % 86400
  localValue4 = math
  localValue4 = localValue4.floor
  localValue5 = localValue3 / 3600
  localValue4 = localValue4(localValue5)
  localValue2.hours = localValue4
  localValue3 = localValue3 % 3600
  localValue4 = math
  localValue4 = localValue4.floor
  localValue5 = localValue3 / 60
  localValue4 = localValue4(localValue5)
  localValue2.minutes = localValue4
  localValue3 = localValue3 % 60
  localValue4 = math
  localValue4 = localValue4.floor
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  localValue2.seconds = localValue4
  return localValue2
end
formatTime = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue1) ===
function dataCollection2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stringHelper2
  localValue2 = ""
  localValue3 = localValue1.years
  if nil ~= localValue3 then
    localValue3 = localValue1.years
    if localValue3 > 0 then
      localValue3 = localValue1.years
      if 1 == localValue3 then
        localValue2 = "1 Year"
      else
        localValue3 = string
        localValue3 = localValue3.format
        localValue4 = "%u Years"
        localValue5 = localValue1.years
        localValue3 = localValue3(localValue4, localValue5)
        localValue2 = localValue3
      end
    end
  end
  localValue3 = localValue1.months
  if nil ~= localValue3 then
    localValue3 = localValue1.months
    if localValue3 > 0 then
      localValue3 = localValue1.months
      if 1 == localValue3 then
        if "" == localValue2 then
          localValue2 = "1 Month"
        else
          localValue3 = localValue2
          localValue4 = ", 1 Month"
          localValue3 = localValue3 .. localValue4
          localValue2 = localValue3
        end
      elseif "" == localValue2 then
        localValue3 = string
        localValue3 = localValue3.format
        localValue4 = "%u Months"
        localValue5 = localValue1.months
        localValue3 = localValue3(localValue4, localValue5)
        localValue2 = localValue3
      else
        localValue3 = string
        localValue3 = localValue3.format
        localValue4 = "%s, %u Months"
        localValue5 = localValue2
        stringHelper2 = localValue1.months
        localValue3 = localValue3(localValue4, localValue5, stringHelper2)
        localValue2 = localValue3
      end
    end
  end
  localValue3 = localValue1.days
  if nil ~= localValue3 then
    localValue3 = localValue1.days
    if localValue3 > 0 then
      localValue3 = localValue1.days
      if 1 == localValue3 then
        if "" == localValue2 then
          localValue2 = "1 Day"
        else
          localValue3 = localValue2
          localValue4 = ", 1 Day"
          localValue3 = localValue3 .. localValue4
          localValue2 = localValue3
        end
      elseif "" == localValue2 then
        localValue3 = string
        localValue3 = localValue3.format
        localValue4 = "%u Days"
        localValue5 = localValue1.days
        localValue3 = localValue3(localValue4, localValue5)
        localValue2 = localValue3
      else
        localValue3 = string
        localValue3 = localValue3.format
        localValue4 = "%s, %u Days"
        localValue5 = localValue2
        stringHelper2 = localValue1.days
        localValue3 = localValue3(localValue4, localValue5, stringHelper2)
        localValue2 = localValue3
      end
    end
  end
  localValue3 = localValue1.hours
  if nil ~= localValue3 then
    localValue3 = localValue1.hours
    if localValue3 > 0 then
      localValue3 = localValue1.hours
      if 1 == localValue3 then
        if "" == localValue2 then
          localValue2 = "1 Hour"
        else
          localValue3 = localValue2
          localValue4 = ", 1 Hour"
          localValue3 = localValue3 .. localValue4
          localValue2 = localValue3
        end
      elseif "" == localValue2 then
        localValue3 = string
        localValue3 = localValue3.format
        localValue4 = "%u Hour"
        localValue5 = localValue1.hours
        localValue3 = localValue3(localValue4, localValue5)
        localValue2 = localValue3
      else
        localValue3 = string
        localValue3 = localValue3.format
        localValue4 = "%s, %u Hours"
        localValue5 = localValue2
        stringHelper2 = localValue1.hours
        localValue3 = localValue3(localValue4, localValue5, stringHelper2)
        localValue2 = localValue3
      end
    end
  end
  localValue3 = localValue1.minutes
  if nil ~= localValue3 then
    localValue3 = localValue1.minutes
    if localValue3 > 0 then
      localValue3 = localValue1.minutes
      if 1 == localValue3 then
        if "" == localValue2 then
          localValue2 = "1 Minute"
        else
          localValue3 = localValue2
          localValue4 = ", 1 Minute"
          localValue3 = localValue3 .. localValue4
          localValue2 = localValue3
        end
      elseif "" == localValue2 then
        localValue3 = string
        localValue3 = localValue3.format
        localValue4 = "%u Minutes"
        localValue5 = localValue1.minutes
        localValue3 = localValue3(localValue4, localValue5)
        localValue2 = localValue3
      else
        localValue3 = string
        localValue3 = localValue3.format
        localValue4 = "%s, %u Minutes"
        localValue5 = localValue2
        stringHelper2 = localValue1.minutes
        localValue3 = localValue3(localValue4, localValue5, stringHelper2)
        localValue2 = localValue3
      end
    end
  end
  localValue3 = localValue1.seconds
  if nil ~= localValue3 then
    localValue3 = localValue1.seconds
    if localValue3 > 0 then
      localValue3 = localValue1.seconds
      if 1 == localValue3 then
        if "" == localValue2 then
          localValue2 = "1 Second"
        else
          localValue3 = localValue2
          localValue4 = "and  1 Second"
          localValue3 = localValue3 .. localValue4
          localValue2 = localValue3
        end
      elseif "" == localValue2 then
        localValue3 = string
        localValue3 = localValue3.format
        localValue4 = "%u Seconds"
        localValue5 = localValue1.seconds
        localValue3 = localValue3(localValue4, localValue5)
        localValue2 = localValue3
      else
        localValue3 = string
        localValue3 = localValue3.format
        localValue4 = "%s and %u Seconds"
        localValue5 = localValue2
        stringHelper2 = localValue1.seconds
        localValue3 = localValue3(localValue4, localValue5, stringHelper2)
        localValue2 = localValue3
      end
    end
  end
  return localValue2
end
formatTimeString = dataCollection2
dataCollection2 = {}
text21 = "~n~"
text22 = "~h~"
text23 = "<i>"
text24 = "\194\166"
text25 = "\195\183"
text26 = "\226\136\145"
text28 = "~ex_r*~"
text = "~ws~"
text2 = "\206\169"
text3 = "%^0"
text4 = "%^1"
text5 = "%^2"
text6 = "%^3"
text7 = "%^4"
text8 = "%^5"
text9 = "%^6"
text10 = "%^7"
text12 = "%^8"
text13 = "%^9"
text14 = "~bold~"
text15 = "~italic~"
text16 = "<C>"
text17 = "</C>"
text18 = "~nrt~"
text19 = "~a~"
text20 = "~1~"
dataCollection2[1] = text21
dataCollection2[2] = text22
dataCollection2[3] = text23
dataCollection2[4] = text24
dataCollection2[5] = text25
dataCollection2[6] = text26
dataCollection2[7] = text28
dataCollection2[8] = text
dataCollection2[9] = text2
dataCollection2[10] = text3
dataCollection2[11] = text4
dataCollection2[12] = text5
dataCollection2[13] = text6
dataCollection2[14] = text7
dataCollection2[15] = text8
dataCollection2[16] = text9
dataCollection2[17] = text10
dataCollection2[18] = text12
dataCollection2[19] = text13
dataCollection2[20] = text14
dataCollection2[21] = text15
dataCollection2[22] = text16
dataCollection2[23] = text17
dataCollection2[24] = text18
dataCollection2[25] = text19
dataCollection2[26] = text20
text21 = {}
text22 = "~r~"
text23 = "~b~"
text24 = "~g~"
text25 = "~y~"
text26 = "~p~"
text28 = "~q~"
text = "~o~"
text2 = "~c~"
text3 = "~t~"
text4 = "~m~"
text5 = "~u~"
text6 = "~l~"
text7 = "~w~"
text8 = "~s~"
text9 = "~"
text21[1] = text22
text21[2] = text23
text21[3] = text24
text21[4] = text25
text21[5] = text26
text21[6] = text28
text21[7] = text
text21[8] = text2
text21[9] = text3
text21[10] = text4
text21[11] = text5
text21[12] = text6
text21[13] = text7
text21[14] = text8
text21[15] = text9
text22 = CMG

-- === HELPER FUNCTION (decompiler name: text23; parameters: localValue1, localValue2) ===
function text23(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2, tableHelper3, workingValue
  if nil == localValue1 then
    localValue3 = "N/A"
    return localValue3
  end
  localValue3 = localValue1
  localValue4 = pairs
  localValue5 = dataCollection2
  localValue4, localValue5, stringHelper2, stateFlag = localValue4(localValue5)
  for workingValue8, text27 in localValue4, localValue5, stringHelper2, stateFlag do
    tableHelper5 = localValue1.gsub
    tableHelper2 = localValue3
    tableHelper3 = localValue1.lower
    workingValue = text27
    tableHelper3 = tableHelper3(workingValue)
    workingValue = ""
    tableHelper5 = tableHelper5(tableHelper2, tableHelper3, workingValue)
    localValue3 = tableHelper5
  end
  if not localValue2 then
    localValue4 = pairs
    localValue5 = text21
    localValue4, localValue5, stringHelper2, stateFlag = localValue4(localValue5)
    for workingValue8, text27 in localValue4, localValue5, stringHelper2, stateFlag do
      tableHelper5 = localValue1.gsub
      tableHelper2 = localValue3
      tableHelper3 = localValue1.lower
      workingValue = text27
      tableHelper3 = tableHelper3(workingValue)
      workingValue = ""
      tableHelper5 = tableHelper5(tableHelper2, tableHelper3, workingValue)
      localValue3 = tableHelper5
    end
  end
  return localValue3
end
text22.sanitizeString = text23
text22 = GetPlayerName

-- === HELPER FUNCTION (decompiler name: text23; parameters: localValue1) ===
function text23(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = text22
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = CMG
  localValue3 = localValue3.sanitizeString
  localValue4 = localValue2
  localValue5 = false
  return localValue3(localValue4, localValue5)
end
GetPlayerName = text23
text23 = {}
text23[1] = true
text23[2] = true
text24 = CMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2
  localValue2 = text23
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue2 = false
  end
  return localValue2
end
text24.isDeveloper = text25
text24 = CMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = localValue1 % 6
  if 0 == localValue2 then
    localValue3 = "~b~"
    return localValue3
  elseif 1 == localValue2 then
    localValue3 = "~y~"
    return localValue3
  elseif 2 == localValue2 then
    localValue3 = "~o~"
    return localValue3
  elseif 3 == localValue2 then
    localValue3 = "~g~"
    return localValue3
  elseif 4 == localValue2 then
    localValue3 = "~p~"
    return localValue3
  elseif 5 == localValue2 then
    localValue3 = "~q~"
    return localValue3
  elseif 6 == localValue2 then
    localValue3 = "~r~"
    return localValue3
  end
  localValue3 = error
  localValue4 = "Modulus operation failed"
  localValue3(localValue4)
end
text24.getPlayerColour = text25
text24 = {}
text24.r = true
text24.n = true
text24.b = true
text24.q = true
text24.k = true
text24.p = true
text24.R = true
text24.N = true
text24.B = true
text24.Q = true
text24.K = true
text24.P = true
text25 = CMG

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1) ===
function text26(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2, tableHelper3, workingValue, workingValue2, workingValue3, stringHelper, workingValue4, tableHelper4, workingValue5, text11
  localValue2 = {}
  localValue3 = {}
  localValue4 = {}
  localValue5 = {}
  stringHelper2 = {}
  stateFlag = {}
  workingValue8 = {}
  text27 = {}
  tableHelper5 = {}
  localValue2[1] = localValue3
  localValue2[2] = localValue4
  localValue2[3] = localValue5
  localValue2[4] = stringHelper2
  localValue2[5] = stateFlag
  localValue2[6] = workingValue8
  localValue2[7] = text27
  localValue2[8] = tableHelper5
  localValue3 = 1
  localValue4 = ""
  localValue5 = 0
  stringHelper2 = 0
  stateFlag = 0
  workingValue8 = 1
  text27 = #localValue1
  tableHelper5 = 1
  for tableHelper2 = workingValue8, text27, tableHelper5 do
    tableHelper3 = string
    tableHelper3 = tableHelper3.sub
    workingValue = localValue1
    workingValue2 = tableHelper2
    workingValue3 = tableHelper2
    tableHelper3 = tableHelper3(workingValue, workingValue2, workingValue3)
    if "/" == tableHelper3 then
      workingValue = assert
      workingValue2 = localValue2[localValue3]
      workingValue2 = #workingValue2
      workingValue2 = 8 == workingValue2
      workingValue(workingValue2)
      localValue3 = localValue3 + 1
    elseif " " == tableHelper3 then
      workingValue = assert
      workingValue2 = stateFlag <= 5
      workingValue(workingValue2)
      stateFlag = stateFlag + 1
    elseif stateFlag > 0 then
      workingValue = string
      workingValue = workingValue.sub
      workingValue2 = localValue1
      workingValue3 = tableHelper2
      stringHelper = string
      stringHelper = stringHelper.find
      workingValue4 = localValue1
      tableHelper4 = " "
      workingValue5 = tableHelper2
      stringHelper, workingValue4, tableHelper4, workingValue5, text11 = stringHelper(workingValue4, tableHelper4, workingValue5)
      workingValue = workingValue(workingValue2, workingValue3, stringHelper, workingValue4, tableHelper4, workingValue5, text11)
      if 1 == stateFlag then
        workingValue2 = assert
        workingValue3 = "w" == tableHelper3 or "b" == tableHelper3
        workingValue2(workingValue3)
        localValue4 = tableHelper3
      elseif 4 == stateFlag then
        workingValue2 = tonumber
        workingValue3 = workingValue
        workingValue2 = workingValue2(workingValue3)
        workingValue3 = assert
        stringHelper = type
        workingValue4 = workingValue2
        stringHelper = stringHelper(workingValue4)
        stringHelper = "number" == stringHelper
        workingValue3(stringHelper)
        workingValue3 = assert
        stringHelper = workingValue2 >= 0
        workingValue3(stringHelper)
        localValue5 = workingValue2
      elseif 5 == stateFlag then
        workingValue2 = tonumber
        workingValue3 = workingValue
        workingValue2 = workingValue2(workingValue3)
        workingValue3 = assert
        stringHelper = type
        workingValue4 = workingValue2
        stringHelper = stringHelper(workingValue4)
        stringHelper = "number" == stringHelper
        workingValue3(stringHelper)
        workingValue3 = assert
        stringHelper = workingValue2 >= 0
        workingValue3(stringHelper)
        stringHelper2 = workingValue2
      end
    elseif localValue3 <= 8 then
      workingValue = tonumber
      workingValue2 = tableHelper3
      workingValue = workingValue(workingValue2)
      if workingValue then
        workingValue2 = assert
        workingValue3 = workingValue >= 0 and workingValue <= 8
        workingValue2(workingValue3)
        workingValue2 = 1
        workingValue3 = workingValue
        stringHelper = 1
        for workingValue4 = workingValue2, workingValue3, stringHelper do
          tableHelper4 = table
          tableHelper4 = tableHelper4.insert
          workingValue5 = localValue2[localValue3]
          text11 = ""
          tableHelper4(workingValue5, text11)
        end
      else
        workingValue2 = assert
        workingValue3 = localValue2[localValue3]
        workingValue3 = #workingValue3
        workingValue3 = workingValue3 <= 8
        workingValue2(workingValue3)
        workingValue2 = assert
        workingValue3 = text24
        workingValue3 = workingValue3[tableHelper3]
        workingValue2(workingValue3)
        workingValue2 = table
        workingValue2 = workingValue2.insert
        workingValue3 = localValue2[localValue3]
        stringHelper = tableHelper3
        workingValue2(workingValue3, stringHelper)
      end
    end
  end
  workingValue8 = assert
  text27 = 8 == localValue3
  workingValue8(text27)
  workingValue8 = assert
  text27 = 5 == stateFlag
  workingValue8(text27)
  workingValue8 = localValue2
  text27 = localValue4
  tableHelper5 = localValue5
  tableHelper2 = stringHelper2
  return workingValue8, text27, tableHelper5, tableHelper2
end
text25.parseChessFEN = text26
text25 = CMG

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1) ===
function text26(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stringHelper2
  localValue2 = nil
  if localValue1 then
    localValue3 = string
    localValue3 = localValue3.upper
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    localValue2 = localValue3
    localValue3 = string
    localValue3 = localValue3.gsub
    localValue4 = localValue2
    localValue5 = "%s+"
    stringHelper2 = ""
    localValue3 = localValue3(localValue4, localValue5, stringHelper2)
    localValue2 = localValue3
    localValue3 = string
    localValue3 = localValue3.gsub
    localValue4 = localValue2
    localValue5 = "%W"
    stringHelper2 = ""
    localValue3 = localValue3(localValue4, localValue5, stringHelper2)
    localValue2 = localValue3
  end
  return localValue2
end
text25.getFlatLicensePlate = text26
text25 = string

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1, localValue2, localValue3) ===
function text26(localValue1, localValue2, localValue3)
  local localValue4, localValue5, stringHelper2, stateFlag
  localValue4 = localValue1
  localValue5 = string
  localValue5 = localValue5.rep
  stringHelper2 = localValue3
  stateFlag = #localValue1
  stateFlag = localValue2 - stateFlag
  localValue5 = localValue5(stringHelper2, stateFlag)
  localValue4 = localValue4 .. localValue5
  return localValue4
end
text25.lpad = text26
text25 = string

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1, localValue2, localValue3) ===
function text26(localValue1, localValue2, localValue3)
  local localValue4, localValue5, stringHelper2
  localValue4 = string
  localValue4 = localValue4.rep
  localValue5 = localValue3
  stringHelper2 = #localValue1
  stringHelper2 = localValue2 - stringHelper2
  localValue4 = localValue4(localValue5, stringHelper2)
  localValue5 = localValue1
  localValue4 = localValue4 .. localValue5
  return localValue4
end
text25.rpad = text26
text25 = math
text25.pi = 3.141592653589793
text25 = table

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1, localValue2) ===
function text26(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5
  localValue3 = 1
  localValue4 = pairs
  localValue5 = localValue1
  localValue4, localValue5, stringHelper2, stateFlag = localValue4(localValue5)
  for workingValue8 in localValue4, localValue5, stringHelper2, stateFlag do
    if localValue3 == localValue2 then
      return workingValue8
    end
    localValue3 = localValue3 + 1
  end
  localValue4 = error
  localValue5 = string
  localValue5 = localValue5.format
  stringHelper2 = "Index %s out of range (1 to %s)"
  stateFlag = localValue2
  workingValue8 = table
  workingValue8 = workingValue8.count
  text27 = localValue1
  workingValue8, text27, tableHelper5 = workingValue8(text27)
  localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5 = localValue5(stringHelper2, stateFlag, workingValue8, text27, tableHelper5)
  localValue4(localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5)
end
text25.keyat = text26
text25 = string

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function text26(localValue1, localValue2, localValue3, localValue4, localValue5)
  local stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2, tableHelper3
  stringHelper2 = string
  stringHelper2 = stringHelper2.sub
  stateFlag = localValue1
  workingValue8 = 1
  text27 = localValue5 - 1
  stringHelper2 = stringHelper2(stateFlag, workingValue8, text27)
  stateFlag = string
  stateFlag = stateFlag.sub
  workingValue8 = localValue1
  text27 = localValue5
  stateFlag = stateFlag(workingValue8, text27)
  workingValue8 = string
  workingValue8 = workingValue8.gsub
  text27 = stateFlag
  tableHelper5 = localValue2
  tableHelper2 = localValue3
  tableHelper3 = localValue4
  workingValue8, text27 = workingValue8(text27, tableHelper5, tableHelper2, tableHelper3)
  tableHelper5 = stringHelper2
  tableHelper2 = workingValue8
  tableHelper5 = tableHelper5 .. tableHelper2
  tableHelper2 = text27
  return tableHelper5, tableHelper2
end
text25.indexedgsub = text26
text25 = table

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1) ===
function text26(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2
  localValue2 = {}
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, stringHelper2 = localValue3(localValue4)
  for stateFlag, workingValue8 in localValue3, localValue4, localValue5, stringHelper2 do
    text27 = tonumber
    tableHelper5 = stateFlag
    text27 = text27(tableHelper5)
    if text27 then
      tableHelper5 = math
      tableHelper5 = tableHelper5.type
      tableHelper2 = text27
      tableHelper5 = tableHelper5(tableHelper2)
      if "integer" == tableHelper5 then
        localValue2[text27] = workingValue8
      end
    end
  end
  return localValue2
end
text25.indicies = text26
text25 = table

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1, localValue2) ===
function text26(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27, tableHelper5, tableHelper2, tableHelper3
  localValue3 = {}
  localValue4 = pairs
  localValue5 = localValue1
  localValue4, localValue5, stringHelper2, stateFlag = localValue4(localValue5)
  for workingValue8, text27 in localValue4, localValue5, stringHelper2, stateFlag do
    tableHelper5 = localValue2
    tableHelper2 = text27
    tableHelper5 = tableHelper5(tableHelper2)
    if tableHelper5 then
      tableHelper5 = table
      tableHelper5 = tableHelper5.insert
      tableHelper2 = localValue3
      tableHelper3 = text27
      tableHelper5(tableHelper2, tableHelper3)
    end
  end
  return localValue3
end
text25.filter = text26
text25 = CMG

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1, localValue2, localValue3) ===
function text26(localValue1, localValue2, localValue3)
  local localValue4, localValue5
  localValue4 = _G

  -- === HELPER FUNCTION: localValue5(...) ===
  function localValue5(...)
    local localValue12, localValue22, workingValue6
    localValue12 = localValue3
    localValue22 = localValue2
    workingValue6 = ...
    return localValue12(localValue22, workingValue6)
  end
  localValue4[localValue1] = localValue5
end
text25.patchFunction = text26
text25 = table

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1) ===
function text26(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stringHelper2, stateFlag, workingValue8, text27
  localValue2 = #localValue1
  localValue3 = localValue2
  localValue4 = 2
  localValue5 = -1
  for stringHelper2 = localValue3, localValue4, localValue5 do
    stateFlag = math
    stateFlag = stateFlag.random
    workingValue8 = stringHelper2
    stateFlag = stateFlag(workingValue8)
    workingValue8 = localValue1[stateFlag]
    text27 = localValue1[stringHelper2]
    localValue1[stateFlag] = text27
    localValue1[stringHelper2] = workingValue8
  end
end
text25.shuffle = text26
text25 = table

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1) ===
function text26(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = localValue1.x
  if localValue2 then
    localValue2 = localValue1.y
    if localValue2 then
      localValue2 = vector2
      localValue3 = localValue1.x
      localValue4 = localValue1.y
      return localValue2(localValue3, localValue4)
    end
  end
  localValue2 = error
  localValue3 = "Table can not be converted to a vector."
  localValue2(localValue3)
end
text25.vector2 = text26
text25 = table

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1) ===
function text26(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = localValue1.x
  if localValue2 then
    localValue2 = localValue1.y
    if localValue2 then
      localValue2 = localValue1.z
      if localValue2 then
        localValue2 = vector3
        localValue3 = localValue1.x
        localValue4 = localValue1.y
        localValue5 = localValue1.z
        return localValue2(localValue3, localValue4, localValue5)
      end
    end
  end
  localValue2 = error
  localValue3 = "Table can not be converted to a vector."
  localValue2(localValue3)
end
text25.vector3 = text26
text25 = table

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1) ===
function text26(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stringHelper2
  localValue2 = localValue1.x
  if localValue2 then
    localValue2 = localValue1.y
    if localValue2 then
      localValue2 = localValue1.z
      if localValue2 then
        localValue2 = localValue1.w
        if localValue2 then
          localValue2 = vector4
          localValue3 = localValue1.x
          localValue4 = localValue1.y
          localValue5 = localValue1.z
          stringHelper2 = localValue1.w
          return localValue2(localValue3, localValue4, localValue5, stringHelper2)
        end
      end
    end
  end
  localValue2 = error
  localValue3 = "Table can not be converted to a vector."
  localValue2(localValue3)
end
text25.vector4 = text26
