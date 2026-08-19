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
local dataCollection, cmgOperation, dataCollection5, dataCollection6, text12, text13, stateFlag, stateFlag2, stateFlag3, number7, text, text4, text5, text6, text7, text8, text9, text10, text11
dataCollection = {}
cmgOperation = {}
dataCollection5 = "Name"
dataCollection6 = "Kills"
text12 = "Deaths"
text13 = "Killstreak"
stateFlag = "KDR"
cmgOperation[1] = dataCollection5
cmgOperation[2] = dataCollection6
cmgOperation[3] = text12
cmgOperation[4] = text13
cmgOperation[5] = stateFlag
dataCollection.columns = cmgOperation
cmgOperation = {}
dataCollection5 = {}
dataCollection6 = "Robbster"
text12 = "~b~BLUE TEAM"
text13 = ""
stateFlag = false
stateFlag2 = 5
stateFlag3 = 2
number7 = 0
text = "1.4"
dataCollection5[1] = dataCollection6
dataCollection5[2] = text12
dataCollection5[3] = text13
dataCollection5[4] = stateFlag
dataCollection5[5] = stateFlag2
dataCollection5[6] = stateFlag3
dataCollection5[7] = number7
dataCollection5[8] = text
dataCollection6 = {}
text12 = "Thomas"
text13 = "~b~BLUE TEAM"
stateFlag = ""
stateFlag2 = false
stateFlag3 = 7
number7 = 5
text = 0
text4 = "0.5"
dataCollection6[1] = text12
dataCollection6[2] = text13
dataCollection6[3] = stateFlag
dataCollection6[4] = stateFlag2
dataCollection6[5] = stateFlag3
dataCollection6[6] = number7
dataCollection6[7] = text
dataCollection6[8] = text4
text12 = {}
text13 = "Arthur"
stateFlag = "~r~RED TEAM"
stateFlag2 = ""
stateFlag3 = false
number7 = 5
text = 0
text4 = 2
text5 = "0.5"
text12[1] = text13
text12[2] = stateFlag
text12[3] = stateFlag2
text12[4] = stateFlag3
text12[5] = number7
text12[6] = text
text12[7] = text4
text12[8] = text5
text13 = {}
stateFlag = "Robbster"
stateFlag2 = "~b~BLUE TEAM"
stateFlag3 = ""
number7 = false
text = 5
text4 = 0
text5 = 2
text6 = "1.4"
text13[1] = stateFlag
text13[2] = stateFlag2
text13[3] = stateFlag3
text13[4] = number7
text13[5] = text
text13[6] = text4
text13[7] = text5
text13[8] = text6
stateFlag = {}
stateFlag2 = "Thomas"
stateFlag3 = "~b~BLUE TEAM"
number7 = ""
text = false
text4 = 7
text5 = 5
text6 = 0
text7 = "0.5"
stateFlag[1] = stateFlag2
stateFlag[2] = stateFlag3
stateFlag[3] = number7
stateFlag[4] = text
stateFlag[5] = text4
stateFlag[6] = text5
stateFlag[7] = text6
stateFlag[8] = text7
stateFlag2 = {}
stateFlag3 = "Arthur"
number7 = "~r~RED TEAM"
text = ""
text4 = false
text5 = 5
text6 = 2
text7 = 0
text8 = "0.5"
stateFlag2[1] = stateFlag3
stateFlag2[2] = number7
stateFlag2[3] = text
stateFlag2[4] = text4
stateFlag2[5] = text5
stateFlag2[6] = text6
stateFlag2[7] = text7
stateFlag2[8] = text8
stateFlag3 = {}
number7 = "Robbster"
text = "~b~BLUE TEAM"
text4 = ""
text5 = false
text6 = 5
text7 = 2
text8 = 0
text9 = "1.4"
stateFlag3[1] = number7
stateFlag3[2] = text
stateFlag3[3] = text4
stateFlag3[4] = text5
stateFlag3[5] = text6
stateFlag3[6] = text7
stateFlag3[7] = text8
stateFlag3[8] = text9
number7 = {}
text = "Thomas"
text4 = "~b~BLUE TEAM"
text5 = ""
text6 = false
text7 = 7
text8 = 5
text9 = 0
text10 = "0.5"
number7[1] = text
number7[2] = text4
number7[3] = text5
number7[4] = text6
number7[5] = text7
number7[6] = text8
number7[7] = text9
number7[8] = text10
text = {}
text4 = "Arthur"
text5 = "~r~RED TEAM"
text6 = ""
text7 = false
text8 = 5
text9 = 2
text10 = 0
text11 = "0.5"
text[1] = text4
text[2] = text5
text[3] = text6
text[4] = text7
text[5] = text8
text[6] = text9
text[7] = text10
text[8] = text11
cmgOperation[1] = dataCollection5
cmgOperation[2] = dataCollection6
cmgOperation[3] = text12
cmgOperation[4] = text13
cmgOperation[5] = stateFlag
cmgOperation[6] = stateFlag2
cmgOperation[7] = stateFlag3
cmgOperation[8] = number7
cmgOperation[9] = text
dataCollection.rows = cmgOperation
cmgOperation = CMG
cmgOperation = cmgOperation.registerCommand
dataCollection5 = "leaderboardtest"

-- === HELPER FUNCTION (decompiler name: dataCollection6; parameters: none) ===
function dataCollection6()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.isDevMode
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.createLeaderboard
    localValue2 = dataCollection
    localValue1 = localValue1(localValue2)
    localValue2 = Wait
    localValue3 = 1000
    localValue2(localValue3)
    localValue2 = CMG
    localValue2 = localValue2.closeLeaderboard
    localValue3 = localValue1
    localValue2(localValue3)
  end
end
text12 = false
cmgOperation(dataCollection5, dataCollection6, text12)
cmgOperation = 1
dataCollection5 = {}
dataCollection6 = {}
text12 = {}
dataCollection6.columns = text12
text12 = {}
dataCollection6.rows = text12
text12 = false
text13 = -1

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue1) ===
function stateFlag(localValue1)
  local localValue2, localValue3, stringHelper, dataCollection7, dataCollection8, stringHelper2, workingValue19
  localValue2 = math
  localValue2 = localValue2.floor
  localValue3 = localValue1 / 1000
  localValue2 = localValue2(localValue3)
  localValue3 = localValue2 * 1000
  localValue1 = localValue1 - localValue3
  localValue3 = math
  localValue3 = localValue3.floor
  stringHelper = localValue2 / 60
  localValue3 = localValue3(stringHelper)
  stringHelper = localValue3 * 60
  localValue2 = localValue2 - stringHelper
  stringHelper = string
  stringHelper = stringHelper.format
  dataCollection7 = "%02d:%02d:%04d"
  dataCollection8 = localValue3
  stringHelper2 = localValue2
  workingValue19 = localValue1
  return stringHelper(dataCollection7, dataCollection8, stringHelper2, workingValue19)
end

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue1) ===
function stateFlag2(localValue1)
  local localValue2, localValue3, stringHelper
  localValue2 = "th"
  if 1 == localValue1 then
    localValue2 = "st"
  end
  if 2 == localValue1 then
    localValue2 = "nd"
  end
  if 3 == localValue1 then
    localValue2 = "rd"
  end
  localValue3 = tostring
  stringHelper = localValue1
  localValue3 = localValue3(stringHelper)
  stringHelper = localValue2
  localValue3 = localValue3 .. stringHelper
  return localValue3
end
stateFlag3 = CMG

-- === HELPER FUNCTION (decompiler name: number7; parameters: localValue1) ===
function number7(localValue1)
  local localValue2
  localValue2 = dataCollection5
  localValue2[localValue1] = false
end
stateFlag3.closeLeaderboard = number7
stateFlag3 = CMG

-- === HELPER FUNCTION (decompiler name: number7; parameters: localValue1) ===
function number7(localValue1)
  local localValue2, localValue3, stringHelper, dataCollection7, dataCollection8, stringHelper2, workingValue19, text15, workingValue21, text2, workingValue, dataCollection3, dataCollection4, number2, number4, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, workingValue14, workingValue15
  localValue2 = Scaleform
  localValue3 = "SC_LEADERBOARD"
  localValue2 = localValue2(localValue3)
  localValue3 = localValue2.RunFunction
  stringHelper = "SET_DISPLAY_TYPE"
  dataCollection7 = {}
  dataCollection8 = 1
  dataCollection7[1] = dataCollection8
  localValue3(stringHelper, dataCollection7)
  localValue3 = localValue1.title
  if localValue3 then
    localValue3 = localValue1.title
    if localValue3 then
      goto continueAtStep18
    end
  end
  localValue3 = "CMG RP Event"
  ::continueAtStep18::
  stringHelper = localValue2.RunFunction
  dataCollection7 = "SET_MULTIPLAYER_TITLE"
  dataCollection8 = {}
  stringHelper2 = localValue3
  dataCollection8[1] = stringHelper2
  stringHelper(dataCollection7, dataCollection8)
  stringHelper = localValue2.RunFunction
  dataCollection7 = "SET_TITLE"
  dataCollection8 = localValue1.columns
  stringHelper(dataCollection7, dataCollection8)
  stringHelper = ipairs
  dataCollection7 = localValue1.rows
  stringHelper, dataCollection7, dataCollection8, stringHelper2 = stringHelper(dataCollection7)
  for workingValue19, text15 in stringHelper, dataCollection7, dataCollection8, stringHelper2 do
    workingValue21 = text15[3]
    if "" ~= workingValue21 then
      text2 = "XXX"
      workingValue = workingValue21
      text2 = text2 .. workingValue
      workingValue21 = text2
    end
    text2 = localValue1.formatTime
    if text2 then
      text2 = stateFlag
      workingValue = text15[8]
      text2 = text2(workingValue)
      workingValue = localValue2.RunFunction
      dataCollection3 = "SET_SLOT"
      dataCollection4 = {}
      number2 = workingValue19 - 1
      number4 = 1
      workingValue4 = text15[1]
      workingValue6 = text15[2]
      workingValue8 = workingValue21
      workingValue10 = text15[5]
      workingValue12 = text15[6]
      workingValue14 = text15[7]
      workingValue15 = text2
      dataCollection4[1] = number2
      dataCollection4[2] = number4
      dataCollection4[3] = workingValue4
      dataCollection4[4] = workingValue6
      dataCollection4[5] = workingValue8
      dataCollection4[6] = workingValue10
      dataCollection4[7] = workingValue12
      dataCollection4[8] = workingValue14
      dataCollection4[9] = workingValue15
      workingValue(dataCollection3, dataCollection4)
    else
      text2 = localValue2.RunFunction
      workingValue = "SET_SLOT"
      dataCollection3 = {}
      dataCollection4 = workingValue19 - 1
      number2 = 1
      number4 = text15[1]
      workingValue4 = text15[2]
      workingValue6 = workingValue21
      workingValue8 = text15[5]
      workingValue10 = text15[6]
      workingValue12 = text15[7]
      workingValue14 = text15[8]
      dataCollection3[1] = dataCollection4
      dataCollection3[2] = number2
      dataCollection3[3] = number4
      dataCollection3[4] = workingValue4
      dataCollection3[5] = workingValue6
      dataCollection3[6] = workingValue8
      dataCollection3[7] = workingValue10
      dataCollection3[8] = workingValue12
      dataCollection3[9] = workingValue14
      text2(workingValue, dataCollection3)
    end
    text2 = text15[4]
    if text2 then
      text2 = localValue2.RunFunction
      workingValue = "SET_SLOT_STATE"
      dataCollection3 = {}
      dataCollection4 = workingValue19 - 1
      number2 = 2
      number4 = 1
      dataCollection3[1] = dataCollection4
      dataCollection3[2] = number2
      dataCollection3[3] = number4
      text2(workingValue, dataCollection3)
    else
      text2 = localValue2.RunFunction
      workingValue = "SET_SLOT_STATE"
      dataCollection3 = {}
      dataCollection4 = workingValue19 - 1
      number2 = 0
      number4 = 1
      dataCollection3[1] = dataCollection4
      dataCollection3[2] = number2
      dataCollection3[3] = number4
      text2(workingValue, dataCollection3)
    end
  end
  stringHelper = cmgOperation
  stringHelper = stringHelper + 1
  cmgOperation = stringHelper
  stringHelper = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
  function dataCollection7()
    local localValue12, localValue22, number5, number6, workingValue16, workingValue17, workingValue18, text14, workingValue20, workingValue22, text3, dataCollection2, workingValue2, number, number3, workingValue3, workingValue5, workingValue7, workingValue9, workingValue11, workingValue13
    localValue22 = cmgOperation
    localValue12 = dataCollection5
    localValue12[localValue22] = true
    while true do
      localValue22 = cmgOperation
      localValue12 = dataCollection5
      localValue12 = localValue12[localValue22]
      if not localValue12 then
        break
      end
      localValue12 = table
      localValue12 = localValue12.count
      localValue22 = dataCollection6.rows
      -- Beginner: result below is count.
      localValue12 = localValue12(localValue22)
      localValue22 = 1
      number5 = localValue12
      number6 = 1
      for workingValue16 = localValue22, number5, number6 do
        workingValue17 = dataCollection6.rows
        workingValue17 = workingValue17[workingValue16]
        workingValue18 = workingValue17[3]
        if "" ~= workingValue18 then
          text14 = "XXX"
          workingValue20 = workingValue18
          text14 = text14 .. workingValue20
          workingValue18 = text14
        end
        text14 = workingValue17[1]
        workingValue20 = dataCollection6.formatPlace
        if workingValue20 then
          workingValue20 = stateFlag2
          workingValue22 = text14
          workingValue20 = workingValue20(workingValue22)
          text14 = workingValue20
        end
        workingValue20 = workingValue17[8]
        workingValue22 = dataCollection6.formatTime
        if workingValue22 then
          workingValue22 = stateFlag
          text3 = workingValue20
          workingValue22 = workingValue22(text3)
          workingValue20 = workingValue22
        end
        workingValue22 = localValue2.RunFunction
        text3 = "SET_SLOT"
        dataCollection2 = {}
        workingValue2 = workingValue16 - 1
        number = 1
        number3 = text14
        workingValue3 = workingValue17[2]
        workingValue5 = workingValue18
        workingValue7 = workingValue17[5]
        workingValue9 = workingValue17[6]
        workingValue11 = workingValue17[7]
        workingValue13 = workingValue20
        dataCollection2[1] = workingValue2
        dataCollection2[2] = number
        dataCollection2[3] = number3
        dataCollection2[4] = workingValue3
        dataCollection2[5] = workingValue5
        dataCollection2[6] = workingValue7
        dataCollection2[7] = workingValue9
        dataCollection2[8] = workingValue11
        dataCollection2[9] = workingValue13
        workingValue22(text3, dataCollection2)
        workingValue22 = workingValue17[4]
        if workingValue22 then
          workingValue22 = localValue2.RunFunction
          text3 = "SET_SLOT_STATE"
          dataCollection2 = {}
          workingValue2 = workingValue16 - 1
          number = 2
          number3 = 1
          dataCollection2[1] = workingValue2
          dataCollection2[2] = number
          dataCollection2[3] = number3
          workingValue22(text3, dataCollection2)
        else
          workingValue22 = localValue2.RunFunction
          text3 = "SET_SLOT_STATE"
          dataCollection2 = {}
          workingValue2 = workingValue16 - 1
          number = 0
          number3 = 1
          dataCollection2[1] = workingValue2
          dataCollection2[2] = number
          dataCollection2[3] = number3
          workingValue22(text3, dataCollection2)
        end
        workingValue22 = text13
        if workingValue22 > 0 then
          workingValue22 = text13
          if workingValue16 >= workingValue22 then
            break
          end
        end
      end
      localValue22 = localValue2.Render2D
      localValue22()
      localValue22 = Wait
      number5 = 0
      localValue22(number5)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  stringHelper(dataCollection7)
  stringHelper = cmgOperation
  return stringHelper
end
stateFlag3.createLeaderboard = number7
stateFlag3 = RegisterNetEvent
number7 = "a8ac0d4162"
-- Beginner: this function handles network event "a8ac0d4162".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2
  dataCollection6 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a8ac0d4162".
stateFlag3(number7, text)
stateFlag3 = CMG
-- Beginner: this function handles network event "a8ac0d4162".

-- === HELPER FUNCTION (decompiler name: number7; parameters: localValue1, localValue2, localValue3) ===
function number7(localValue1, localValue2, localValue3)
  local stringHelper, dataCollection7, dataCollection8, stringHelper2, workingValue19, text15, workingValue21, text2, workingValue
  stringHelper = nil
  dataCollection7 = pairs
  dataCollection8 = dataCollection6.rows
  dataCollection7, dataCollection8, stringHelper2, workingValue19 = dataCollection7(dataCollection8)
  for text15, workingValue21 in dataCollection7, dataCollection8, stringHelper2, workingValue19 do
    text2 = workingValue21.playerSrc
    if text2 == localValue1 then
      stringHelper = text15
    end
  end
  if -1 == localValue1 then
    dataCollection7 = pairs
    dataCollection8 = dataCollection6.rows
    dataCollection7, dataCollection8, stringHelper2, workingValue19 = dataCollection7(dataCollection8)
    for text15, workingValue21 in dataCollection7, dataCollection8, stringHelper2, workingValue19 do
      text2 = dataCollection6.rows
      text2 = text2[text15]
      text2[localValue2] = localValue3
    end
  elseif stringHelper then
    if "+1" == localValue3 then
      dataCollection7 = dataCollection6.rows
      dataCollection7 = dataCollection7[stringHelper]
      dataCollection8 = dataCollection6.rows
      dataCollection8 = dataCollection8[stringHelper]
      dataCollection8 = dataCollection8[localValue2]
      dataCollection8 = dataCollection8 + 1
      dataCollection7[localValue2] = dataCollection8
      if 6 == localValue2 or 5 == localValue2 then
        dataCollection7 = dataCollection6.rows
        dataCollection7 = dataCollection7[stringHelper]
        dataCollection7 = dataCollection7[6]
        dataCollection8 = type
        stringHelper2 = dataCollection7
        dataCollection8 = dataCollection8(stringHelper2)
        if "string" == dataCollection8 then
          dataCollection8 = print
          stringHelper2 = "[Error:updateScoreboard] Death is somehow a string, value is"
          workingValue19 = dataCollection7
          text15 = "playerSrc,column,value ="
          workingValue21 = localValue1
          text2 = localValue2
          workingValue = localValue3
          dataCollection8(stringHelper2, workingValue19, text15, workingValue21, text2, workingValue)
          dataCollection8 = print
          stringHelper2 = "leaderboard dump"
          workingValue19 = dump
          text15 = dataCollection6
          workingValue19, text15, workingValue21, text2, workingValue = workingValue19(text15)
          dataCollection8(stringHelper2, workingValue19, text15, workingValue21, text2, workingValue)
        end
        if 0 == dataCollection7 then
          dataCollection7 = 1
        end
        dataCollection8 = tostring
        stringHelper2 = math
        stringHelper2 = stringHelper2.floor
        workingValue19 = dataCollection6.rows
        workingValue19 = workingValue19[stringHelper]
        workingValue19 = workingValue19[5]
        workingValue19 = workingValue19 / dataCollection7
        workingValue19 = workingValue19 * 100
        stringHelper2 = stringHelper2(workingValue19)
        stringHelper2 = stringHelper2 / 100
        dataCollection8 = dataCollection8(stringHelper2)
        stringHelper2 = dataCollection6.columns
        stringHelper2 = stringHelper2[4]
        if "KDR" == stringHelper2 then
          stringHelper2 = dataCollection6.rows
          stringHelper2 = stringHelper2[stringHelper]
          stringHelper2[7] = dataCollection8
        else
          stringHelper2 = dataCollection6.columns
          stringHelper2 = stringHelper2[5]
          if "KDR" == stringHelper2 then
            stringHelper2 = dataCollection6.rows
            stringHelper2 = stringHelper2[stringHelper]
            stringHelper2[8] = dataCollection8
          end
        end
      end
    else
      dataCollection7 = dataCollection6.rows
      dataCollection7 = dataCollection7[stringHelper]
      dataCollection7[localValue2] = localValue3
    end
    dataCollection7 = dataCollection6.sortAscending
    if dataCollection7 then
      dataCollection7 = table
      dataCollection7 = dataCollection7.sort
      dataCollection8 = dataCollection6.rows

      -- === HELPER FUNCTION: stringHelper2(localValue12, localValue22) ===
      function stringHelper2(localValue12, localValue22)
        local number5, number6
        number5 = dataCollection6.sortColumn
        if not number5 then
          number5 = 5
        end
        number5 = localValue12[number5]
        number6 = dataCollection6.sortColumn
        if not number6 then
          number6 = 5
        end
        number6 = localValue22[number6]
        number5 = number5 < number6
        return number5
      end
      dataCollection7(dataCollection8, stringHelper2)
    else
      dataCollection7 = table
      dataCollection7 = dataCollection7.sort
      dataCollection8 = dataCollection6.rows

      -- === HELPER FUNCTION: stringHelper2(localValue12, localValue22) ===
      function stringHelper2(localValue12, localValue22)
        local number5, number6
        number5 = dataCollection6.sortColumn
        if not number5 then
          number5 = 5
        end
        number5 = localValue12[number5]
        number6 = dataCollection6.sortColumn
        if not number6 then
          number6 = 5
        end
        number6 = localValue22[number6]
        number5 = number5 > number6
        return number5
      end
      dataCollection7(dataCollection8, stringHelper2)
    end
  else
    dataCollection7 = print
    dataCollection8 = "error: CMG:updateScoreboard couldn't find row with values"
    stringHelper2 = localValue1
    workingValue19 = localValue2
    text15 = localValue3
    dataCollection7(dataCollection8, stringHelper2, workingValue19, text15)
  end
end
stateFlag3.updateScoreboard = number7
stateFlag3 = RegisterNetEvent
number7 = "35a2f746a5"
-- Beginner: this function handles network event "35a2f746a5".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2, localValue3) ===
function text(localValue1, localValue2, localValue3)
  local stringHelper, dataCollection7, dataCollection8, stringHelper2
  stringHelper = CMG
  stringHelper = stringHelper.updateScoreboard
  dataCollection7 = localValue1
  dataCollection8 = localValue2
  stringHelper2 = localValue3
  stringHelper(dataCollection7, dataCollection8, stringHelper2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "35a2f746a5".
stateFlag3(number7, text)
stateFlag3 = CMG

-- === HELPER FUNCTION (decompiler name: number7; parameters: localValue1) ===
function number7(localValue1)
  local localValue2
  text12 = localValue1
end
stateFlag3.setPlayerCanOpenLeaderboard = number7
stateFlag3 = CMG

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, localValue2
  localValue1 = text12
  return localValue1
end
stateFlag3.canPlayerOpenLeaderboard = number7
stateFlag3 = CMG

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, localValue2
  localValue1 = {}
  localValue2 = {}
  localValue1.columns = localValue2
  localValue2 = {}
  localValue1.rows = localValue2
  dataCollection6 = localValue1
  localValue1 = -1
  text13 = localValue1
end
stateFlag3.clearLeaderboardData = number7
stateFlag3 = CMG

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, localValue2
  localValue1 = table
  localValue1 = localValue1.count
  localValue2 = dataCollection6.rows
  -- Beginner: result below is count.
  localValue1 = localValue1(localValue2)
  localValue1 = localValue1 > 0
  return localValue1
end
stateFlag3.isLeaderboardSetup = number7
stateFlag3 = CMG

-- === HELPER FUNCTION (decompiler name: number7; parameters: localValue1) ===
function number7(localValue1)
  local localValue2, localValue3, stringHelper, dataCollection7, dataCollection8, stringHelper2, workingValue19, text15
  localValue2 = pairs
  localValue3 = dataCollection6.rows
  localValue2, localValue3, stringHelper, dataCollection7 = localValue2(localValue3)
  for dataCollection8, stringHelper2 in localValue2, localValue3, stringHelper, dataCollection7 do
    workingValue19 = stringHelper2.playerSrc
    text15 = localValue1.playerSrc
    if workingValue19 == text15 then
      return
    end
  end
  localValue2 = table
  localValue2 = localValue2.insert
  localValue3 = dataCollection6.rows
  stringHelper = localValue1
  localValue2(localValue3, stringHelper)
end
stateFlag3.addPlayerToLeaderboard = number7
stateFlag3 = CMG

-- === HELPER FUNCTION (decompiler name: number7; parameters: localValue1) ===
function number7(localValue1)
  local localValue2, localValue3, stringHelper, dataCollection7, dataCollection8, stringHelper2, workingValue19, text15, workingValue21
  localValue2 = pairs
  localValue3 = dataCollection6.rows
  localValue2, localValue3, stringHelper, dataCollection7 = localValue2(localValue3)
  for dataCollection8, stringHelper2 in localValue2, localValue3, stringHelper, dataCollection7 do
    workingValue19 = stringHelper2.playerSrc
    if workingValue19 == localValue1 then
      workingValue19 = table
      workingValue19 = workingValue19.remove
      text15 = dataCollection6.rows
      workingValue21 = dataCollection8
      workingValue19(text15, workingValue21)
      break
    end
  end
end
stateFlag3.removePlayerFromLeaderboard = number7
stateFlag3 = false

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, localValue2, localValue3
  localValue1 = text12
  if localValue1 then
    localValue1 = IsControlJustPressed
    localValue2 = 0
    localValue3 = 212
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = stateFlag3
      if not localValue1 then
        localValue1 = true
        stateFlag3 = localValue1
        localValue1 = Citizen
        localValue1 = localValue1.CreateThreadNow

        -- === HELPER FUNCTION: localValue2() ===
        function localValue2()
          local localValue12, localValue22, number5
          localValue12 = CMG
          localValue12 = localValue12.createLeaderboard
          localValue22 = dataCollection6
          localValue12(localValue22)
          while true do
            localValue12 = text12
            if not localValue12 then
              break
            end
            localValue12 = IsControlPressed
            localValue22 = 0
            number5 = 212
            localValue12 = localValue12(localValue22, number5)
            if not localValue12 then
              break
            end
            localValue12 = Wait
            localValue22 = 0
            localValue12(localValue22)
          end
          localValue12 = CMG
          localValue12 = localValue12.closeLeaderboard
          localValue22 = cmgOperation
          localValue12(localValue22)
          localValue12 = false
          stateFlag3 = localValue12
        end
        localValue1(localValue2)
      end
    end
  end
end
text = CMG
text = text.createThreadOnTick
text4 = number7
text5 = "Event Leaderboard"
-- Beginner: Run a helper every game frame while this script is active.
text(text4, text5)
text = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2
  text13 = localValue1
end
text.setMaximumLeaderboardRows = text4
