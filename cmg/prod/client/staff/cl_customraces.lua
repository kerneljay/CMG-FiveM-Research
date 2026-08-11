--[[
    LEVEL 1 BEGINNER GUIDE — Customraces
    =========================================

    File: cmg/prod/client/staff/cl_customraces.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: staff/admin gameplay and moderation tools, specifically the Customraces feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 54
      * Background threads: 0
      * Always-running loops: 1
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
local cmgCall, textValue5, textValue7, textValue10, rageUiCall2, textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue5 = "cfg/cfg_customraces"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue5)
textValue5 = RMenu
textValue5 = textValue5.Add
textValue7 = "customraces"
textValue10 = "mainmenu"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue13 = ""
textValue16 = "~b~Main Menu"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9 = rageUiCall4()
rageUiCall2, textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9 = rageUiCall2(textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9)
textValue5(textValue7, textValue10, rageUiCall2, textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9)
textValue5 = RMenu
textValue5 = textValue5.Add
textValue7 = "customraces"
textValue10 = "new"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue13 = RMenu
textValue16 = textValue13
textValue13 = textValue13.Get
rageUiCall3 = "customraces"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue13 = textValue13(textValue16, rageUiCall3, rageUiCall4)
textValue16 = ""
rageUiCall3 = "~b~Setup New Race"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9 = rageUiCall5()
rageUiCall2, textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9 = rageUiCall2(textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9)
textValue5(textValue7, textValue10, rageUiCall2, textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9)
textValue5 = RMenu
textValue5 = textValue5.Add
textValue7 = "customraces"
textValue10 = "selected"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue13 = RMenu
textValue16 = textValue13
textValue13 = textValue13.Get
rageUiCall3 = "customraces"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue13 = textValue13(textValue16, rageUiCall3, rageUiCall4)
textValue16 = ""
rageUiCall3 = "~b~Selected Race"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9 = rageUiCall5()
rageUiCall2, textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9 = rageUiCall2(textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9)
textValue5(textValue7, textValue10, rageUiCall2, textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9)
textValue5 = RMenu
textValue5 = textValue5.Add
textValue7 = "customraces"
textValue10 = "selectedsetup"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue13 = RMenu
textValue16 = textValue13
textValue13 = textValue13.Get
rageUiCall3 = "customraces"
rageUiCall4 = "selected"
-- Beginner: result below is menu.
textValue13 = textValue13(textValue16, rageUiCall3, rageUiCall4)
textValue16 = ""
rageUiCall3 = "~b~Selected Start Options"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9 = rageUiCall5()
rageUiCall2, textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9 = rageUiCall2(textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9)
textValue5(textValue7, textValue10, rageUiCall2, textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9)
textValue5 = RMenu
textValue5 = textValue5.Add
textValue7 = "customraces"
textValue10 = "manage"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue13 = RMenu
textValue16 = textValue13
textValue13 = textValue13.Get
rageUiCall3 = "customraces"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue13 = textValue13(textValue16, rageUiCall3, rageUiCall4)
textValue16 = ""
rageUiCall3 = "~b~Manage Race"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9 = rageUiCall5()
rageUiCall2, textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9 = rageUiCall2(textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9)
textValue5(textValue7, textValue10, rageUiCall2, textValue13, textValue16, rageUiCall3, rageUiCall4, rageUiCall5, workValue, workValue2, rageUiCall, textValue, workValue3, workValue4, textValue3, textValue4, workValue5, workValue6, workValue8, eventRegistration, textValue6, workValue9)
textValue5 = {}
textValue5.name = nil
textValue5.startPosition = nil
textValue5.endPosition = nil
textValue7 = {}
textValue5.checkpoints = textValue7
textValue7 = {}
textValue10 = nil
rageUiCall2 = {}
rageUiCall2.numLaps = 1
textValue13 = nil
textValue16 = nil
rageUiCall3 = nil

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: none) ===
function rageUiCall4()
  local arg1, arg2
  arg1 = RequestScaleformMovie
  arg2 = "INSTRUCTIONAL_BUTTONS"
  -- Beginner: result below is scaleformHandle.
  arg1 = arg1(arg2)
  rageUiCall3 = arg1
  while true do
    arg1 = HasScaleformMovieLoaded
    arg2 = rageUiCall3
    arg1 = arg1(arg2)
    if arg1 then
      break
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
rageUiCall5 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2
  arg1 = rageUiCall4
  arg1()
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiCall5(workValue)
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: rageUiCall5; parameters: none) ===
function rageUiCall5()
  local arg1, arg2
  arg1 = textValue5.name
  if arg1 then
    arg1 = textValue5.startPosition
    if arg1 then
      arg1 = textValue5.endPosition
      if arg1 then
        arg1 = textValue5.checkpoints
        arg1 = #arg1
        if arg1 > 0 then
          arg1 = true
          return arg1
      end
    end
  end
  else
    arg1 = false
    return arg1
  end
end

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, workValue10, workValue11, workValue12, numberValue15, position
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = pairs
  arg3 = textValue7
  arg2, arg3, workValue10, workValue11 = arg2(arg3)
  for workValue12, numberValue15 in arg2, arg3, workValue10, workValue11 do
    position = numberValue15.position
    position = arg1 - position
    position = #position
    numberValue15.distance = position
  end
  arg2 = table
  arg2 = arg2.sort
  arg3 = textValue7

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg12, arg22) ===
  function workValue10(arg12, arg22)
    local textValue8, dataTable2
    textValue8 = arg12.distance
    dataTable2 = arg22.distance
    textValue8 = textValue8 < dataTable2
    return textValue8
  end
  arg2(arg3, workValue10)
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, arg2, arg3, workValue10, workValue11, workValue12, numberValue15, position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4, flag5, flag6, numberValue14, flag7, flag8, flag9, flag10
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = textValue5.startPosition
  if arg2 then
    arg2 = DrawMarker
    arg3 = 4
    workValue10 = textValue5.startPosition
    workValue10 = workValue10.x
    workValue11 = textValue5.startPosition
    workValue11 = workValue11.y
    workValue12 = textValue5.startPosition
    workValue12 = workValue12.z
    workValue12 = workValue12 + 1.5
    numberValue15 = 0.0
    position = 0.0
    numberValue16 = 0.0
    numberValue17 = 0.0
    numberValue = 0.0
    numberValue2 = 0.0
    numberValue3 = 5.0
    numberValue4 = 5.0
    numberValue6 = 5.0
    numberValue7 = 0
    numberValue8 = 255
    numberValue9 = 0
    numberValue10 = 255
    flag = false
    flag2 = false
    numberValue11 = 2
    flag3 = false
    numberValue12 = nil
    numberValue13 = nil
    flag4 = false
    arg2(arg3, workValue10, workValue11, workValue12, numberValue15, position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4)
  end
  arg2 = textValue5.endPosition
  if arg2 then
    arg2 = DrawMarker
    arg3 = 4
    workValue10 = textValue5.endPosition
    workValue10 = workValue10.x
    workValue11 = textValue5.endPosition
    workValue11 = workValue11.y
    workValue12 = textValue5.endPosition
    workValue12 = workValue12.z
    workValue12 = workValue12 + 1.5
    numberValue15 = 0.0
    position = 0.0
    numberValue16 = 0.0
    numberValue17 = 0.0
    numberValue = 0.0
    numberValue2 = 0.0
    numberValue3 = 5.0
    numberValue4 = 5.0
    numberValue6 = 5.0
    numberValue7 = 255
    numberValue8 = 0
    numberValue9 = 0
    numberValue10 = 255
    flag = false
    flag2 = false
    numberValue11 = 2
    flag3 = false
    numberValue12 = nil
    numberValue13 = nil
    flag4 = false
    arg2(arg3, workValue10, workValue11, workValue12, numberValue15, position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4)
  end
  arg2 = pairs
  arg3 = textValue5.checkpoints
  arg2, arg3, workValue10, workValue11 = arg2(arg3)
  for workValue12, numberValue15 in arg2, arg3, workValue10, workValue11 do
    position = numberValue15.position
    position = arg1 - position
    position = #position
    numberValue16 = 500.0
    if position < numberValue16 then
      numberValue16 = DrawMarker
      numberValue17 = 1
      numberValue = numberValue15.position
      numberValue = numberValue.x
      numberValue2 = numberValue15.position
      numberValue2 = numberValue2.y
      numberValue3 = numberValue15.position
      numberValue3 = numberValue3.z
      numberValue3 = numberValue3 - 1.0
      numberValue4 = 0.0
      numberValue6 = 0.0
      numberValue7 = 0.0
      numberValue8 = 0.0
      numberValue9 = 0.0
      numberValue10 = 0.0
      flag = 5.0
      flag2 = 5.0
      numberValue11 = 7.5
      flag3 = 255
      numberValue12 = 255
      numberValue13 = 0
      flag4 = 160
      flag5 = false
      flag6 = false
      numberValue14 = 2
      flag7 = false
      flag8 = nil
      flag9 = nil
      flag10 = false
      numberValue16(numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4, flag5, flag6, numberValue14, flag7, flag8, flag9, flag10)
      numberValue16 = DrawMarker
      numberValue17 = 1
      numberValue = numberValue15.position
      numberValue = numberValue.x
      numberValue2 = numberValue15.position
      numberValue2 = numberValue2.y
      numberValue3 = numberValue15.position
      numberValue3 = numberValue3.z
      numberValue3 = numberValue3 + 0.5
      numberValue4 = 0.0
      numberValue6 = 0.0
      numberValue7 = 0.0
      numberValue8 = 0.0
      numberValue9 = 0.0
      numberValue10 = 0.0
      flag = numberValue15.radius
      flag = flag * 2
      flag2 = numberValue15.radius
      flag2 = flag2 * 2
      numberValue11 = 1.0
      flag3 = 160
      numberValue12 = 0
      numberValue13 = 0
      flag4 = 255
      flag5 = false
      flag6 = false
      numberValue14 = 2
      flag7 = false
      flag8 = nil
      flag9 = nil
      flag10 = false
      numberValue16(numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4, flag5, flag6, numberValue14, flag7, flag8, flag9, flag10)
      if position < 50.0 then
        numberValue16 = CMG
        numberValue16 = numberValue16.DrawText3D
        numberValue17 = numberValue15.position
        numberValue = tostring
        numberValue2 = workValue12
        numberValue = numberValue(numberValue2)
        numberValue2 = 1.0
        numberValue16(numberValue17, numberValue, numberValue2)
      end
    end
  end
end
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
textValue = 1.0
workValue3 = RMenu
workValue4 = workValue3
workValue3 = workValue3.Get
textValue3 = "customraces"
textValue4 = "mainmenu"
-- Beginner: result below is menu.
workValue3 = workValue3(workValue4, textValue3, textValue4)
workValue4 = nil

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2, arg3, workValue10, workValue11, workValue12
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue10 = "customraces"
  workValue11 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue10, workValue11)
  arg3 = true
  workValue10 = true
  workValue11 = true

  -- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
  function workValue12()
    local arg12, arg22, textValue8, dataTable2, stringHelper3, textValue14, workValue14, mathHelper2, textValue17, stringHelper4, stringHelper, dataTable, mathHelper, numberValue5, serverId, textValue2
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~b~Setup New Race"
    textValue8 = ""
    dataTable2 = {}
    dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg13, arg23, arg32) ===
    function textValue14(arg13, arg23, arg32)
    end
    workValue14 = RMenu
    mathHelper2 = workValue14
    workValue14 = workValue14.Get
    textValue17 = "customraces"
    stringHelper4 = "new"
    workValue14, mathHelper2, textValue17, stringHelper4, stringHelper, dataTable, mathHelper, numberValue5, serverId, textValue2 = workValue14(mathHelper2, textValue17, stringHelper4)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, textValue8, dataTable2, stringHelper3, textValue14, workValue14, mathHelper2, textValue17, stringHelper4, stringHelper, dataTable, mathHelper, numberValue5, serverId, textValue2)
    arg12 = textValue13
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "~g~Manage Active Race"
      textValue8 = ""
      dataTable2 = {}
      dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stringHelper3 = true

      -- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg13, arg23, arg32) ===
      function textValue14(arg13, arg23, arg32)
      end
      workValue14 = RMenu
      mathHelper2 = workValue14
      workValue14 = workValue14.Get
      textValue17 = "customraces"
      stringHelper4 = "manage"
      workValue14, mathHelper2, textValue17, stringHelper4, stringHelper, dataTable, mathHelper, numberValue5, serverId, textValue2 = workValue14(mathHelper2, textValue17, stringHelper4)
      arg12(arg22, textValue8, dataTable2, stringHelper3, textValue14, workValue14, mathHelper2, textValue17, stringHelper4, stringHelper, dataTable, mathHelper, numberValue5, serverId, textValue2)
    end
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Nearby Races"
    arg12(arg22)
    arg12 = workValue
    arg12()
    arg12 = pairs
    arg22 = textValue7
    arg12, arg22, textValue8, dataTable2 = arg12(arg22)
    for stringHelper3, textValue14 in arg12, arg22, textValue8, dataTable2 do
      if stringHelper3 > 5 then
        break
      end
      workValue14 = RageUI
      workValue14 = workValue14.ButtonWithStyle
      mathHelper2 = textValue14.name
      textValue17 = ""
      stringHelper4 = {}
      stringHelper = string
      stringHelper = stringHelper.format
      dataTable = "%sm away"
      mathHelper = math
      mathHelper = mathHelper.floor
      numberValue5 = textValue14.distance
      if not numberValue5 then
        numberValue5 = 0
      end
      mathHelper, numberValue5, serverId, textValue2 = mathHelper(numberValue5)
      stringHelper = stringHelper(dataTable, mathHelper, numberValue5, serverId, textValue2)
      stringHelper4.RightLabel = stringHelper
      stringHelper = true

      -- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg13, arg23, arg32) ===
      function dataTable(arg13, arg23, arg32)
        local serverEventCall
        if arg32 then
          serverEventCall = textValue14
          textValue10 = serverEventCall
        end
      end
      mathHelper = RMenu
      numberValue5 = mathHelper
      mathHelper = mathHelper.Get
      serverId = "customraces"
      textValue2 = "selected"
      mathHelper, numberValue5, serverId, textValue2 = mathHelper(numberValue5, serverId, textValue2)
      -- Beginner: Draw a selectable RageUI menu button.
      workValue14(mathHelper2, textValue17, stringHelper4, stringHelper, dataTable, mathHelper, numberValue5, serverId, textValue2)
    end
  end
  arg1(arg2, arg3, workValue10, workValue11, workValue12)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue10 = "customraces"
  workValue11 = "new"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue10, workValue11)
  arg3 = true
  workValue10 = true
  workValue11 = true

  -- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
  function workValue12()
    local arg12, arg22, textValue8, dataTable2, stringHelper3, textValue14, workValue14, mathHelper2, textValue17, stringHelper4, stringHelper, dataTable, mathHelper, numberValue5, serverId
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "~g~Create New Race"
    textValue8 = ""
    dataTable2 = true

    -- === HELPER FUNCTION: stringHelper3(arg13, arg23, arg32) ===
    function stringHelper3(arg13, arg23, arg32)
      local serverEventCall, textValue11, textValue15
      if arg32 then
        serverEventCall = rageUiCall5
        serverEventCall = serverEventCall()
        if serverEventCall then
          serverEventCall = TriggerServerEvent
          textValue11 = "0cdea4259b"
          textValue15 = textValue5
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0cdea4259b".
          serverEventCall(textValue11, textValue15)
          serverEventCall = RageUI
          serverEventCall = serverEventCall.GoBack
          serverEventCall()
        else
          serverEventCall = notify
          textValue11 = "~r~Not all fields are configured. Please complete the setup."
          -- Beginner: Show a notification to the player.
          serverEventCall(textValue11)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, textValue8, dataTable2, stringHelper3)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Name"
    textValue8 = ""
    dataTable2 = {}
    stringHelper3 = textValue5.name
    if stringHelper3 then
      stringHelper3 = string
      stringHelper3 = stringHelper3.format
      textValue14 = "~g~%s"
      workValue14 = textValue5.name
      stringHelper3 = stringHelper3(textValue14, workValue14)
      if stringHelper3 then
        goto flow_label_25
      end
    end
    stringHelper3 = "~r~Not Configured"
    ::flow_label_25::
    dataTable2.RightLabel = stringHelper3
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg13, arg23, arg32) ===
    function textValue14(arg13, arg23, arg32)
      local serverEventCall, textValue11, textValue15, cmgCall2
      if arg32 then
        serverEventCall = CMG
        serverEventCall = serverEventCall.clientPrompt
        textValue11 = "Enter Name"
        textValue15 = ""

        -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg14) ===
        function cmgCall2(arg14)
          local workValue7, textValue9
          if arg14 then
            workValue7 = #arg14
            if workValue7 > 2 then
              workValue7 = #arg14
              if workValue7 <= 50 then
                textValue5.name = arg14
            end
          end
          else
            workValue7 = notify
            textValue9 = "~r~Invalid name. Must be between 3 and 50 characters."
            -- Beginner: Show a notification to the player.
            workValue7(textValue9)
          end
        end
        serverEventCall(textValue11, textValue15, cmgCall2)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, textValue8, dataTable2, stringHelper3, textValue14)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Start Point"
    textValue8 = ""
    dataTable2 = {}
    stringHelper3 = textValue5.startPosition
    if stringHelper3 then
      stringHelper3 = "~g~Configured"
      if stringHelper3 then
        goto flow_label_42
      end
    end
    stringHelper3 = "~r~Not Configured"
    ::flow_label_42::
    dataTable2.RightLabel = stringHelper3
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg13, arg23, arg32) ===
    function textValue14(arg13, arg23, arg32)
      local serverEventCall
      if arg32 then
        serverEventCall = CMG
        serverEventCall = serverEventCall.getPlayerCoords
        -- Beginner: result below is playerCoords.
        serverEventCall = serverEventCall()
        textValue5.startPosition = serverEventCall
      end
    end
    arg12(arg22, textValue8, dataTable2, stringHelper3, textValue14)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "End Point"
    textValue8 = ""
    dataTable2 = {}
    stringHelper3 = textValue5.endPosition
    if stringHelper3 then
      stringHelper3 = "~g~Configured"
      if stringHelper3 then
        goto flow_label_59
      end
    end
    stringHelper3 = "~r~Not Configured"
    ::flow_label_59::
    dataTable2.RightLabel = stringHelper3
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg13, arg23, arg32) ===
    function textValue14(arg13, arg23, arg32)
      local serverEventCall
      if arg32 then
        serverEventCall = CMG
        serverEventCall = serverEventCall.getPlayerCoords
        -- Beginner: result below is playerCoords.
        serverEventCall = serverEventCall()
        textValue5.endPosition = serverEventCall
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, textValue8, dataTable2, stringHelper3, textValue14)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Checkpoints"
    arg12(arg22)
    arg12 = CMG
    arg12 = arg12.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg12 = arg12()
    arg22 = pairs
    textValue8 = textValue5.checkpoints
    arg22, textValue8, dataTable2, stringHelper3 = arg22(textValue8)
    for textValue14, workValue14 in arg22, textValue8, dataTable2, stringHelper3 do
      mathHelper2 = math
      mathHelper2 = mathHelper2.floor
      textValue17 = workValue14.position
      textValue17 = arg12 - textValue17
      textValue17 = #textValue17
      mathHelper2 = mathHelper2(textValue17)
      textValue17 = RageUI
      textValue17 = textValue17.ButtonWithStyle
      stringHelper4 = string
      stringHelper4 = stringHelper4.format
      stringHelper = "%s. Checkpoint"
      dataTable = textValue14
      stringHelper4 = stringHelper4(stringHelper, dataTable)
      stringHelper = ""
      dataTable = {}
      mathHelper = string
      mathHelper = mathHelper.format
      numberValue5 = "%sm away"
      serverId = mathHelper2
      mathHelper = mathHelper(numberValue5, serverId)
      dataTable.RightLabel = mathHelper
      mathHelper = true

      -- === HELPER FUNCTION (decompiler name: numberValue5; parameters: arg13, arg23, arg32) ===
      function numberValue5(arg13, arg23, arg32)
        local serverEventCall, textValue11, textValue15, cmgCall2
        if arg23 then
          serverEventCall = drawNativeNotification
          textValue11 = [[
Press ~INPUT_FRONTEND_ACCEPT~ to edit the radius.
Press ~INPUT_FRONTEND_DELETE~ to remove this checkpoint.]]
          -- Beginner: Show a GTA-style notification/help prompt.
          serverEventCall(textValue11)
          serverEventCall = IsControlJustPressed
          textValue11 = 0
          textValue15 = 214
          serverEventCall = serverEventCall(textValue11, textValue15)
          if serverEventCall then
            serverEventCall = table
            serverEventCall = serverEventCall.remove
            textValue11 = textValue5.checkpoints
            textValue15 = textValue14
            serverEventCall(textValue11, textValue15)
            serverEventCall = notify
            textValue11 = "~r~Checkpoint removed."
            -- Beginner: Show a notification to the player.
            serverEventCall(textValue11)
          end
        end
        if arg32 then
          serverEventCall = CMG
          serverEventCall = serverEventCall.clientPrompt
          textValue11 = "Enter Radius (5.0 - 20.0)"
          textValue15 = ""

          -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg14) ===
          function cmgCall2(arg14)
            local workValue7, textValue9, stringHelper2, textValue12, workValue13
            workValue7 = tonumber
            textValue9 = arg14
            workValue7 = workValue7(textValue9)
            if workValue7 and workValue7 >= 10.0 and workValue7 <= 20.0 then
              textValue9 = textValue5.checkpoints
              stringHelper2 = textValue14
              textValue9 = textValue9[stringHelper2]
              stringHelper2 = workValue7 + 0.0
              textValue9.radius = stringHelper2
              textValue9 = notify
              stringHelper2 = string
              stringHelper2 = stringHelper2.format
              textValue12 = "~g~Checkpoint radius set to %s."
              workValue13 = workValue7
              stringHelper2, textValue12, workValue13 = stringHelper2(textValue12, workValue13)
              textValue9(stringHelper2, textValue12, workValue13)
            else
              textValue9 = notify
              stringHelper2 = "~r~Invalid radius. Must be between 5.0 and 20.0."
              -- Beginner: Show a notification to the player.
              textValue9(stringHelper2)
            end
          end
          serverEventCall(textValue11, textValue15, cmgCall2)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      textValue17(stringHelper4, stringHelper, dataTable, mathHelper, numberValue5)
    end
    arg22 = RageUI
    arg22 = arg22.Button
    textValue8 = "~b~Add Checkpoint"
    dataTable2 = ""
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg13, arg23, arg32) ===
    function textValue14(arg13, arg23, arg32)
      local serverEventCall, textValue11, textValue15, cmgCall2
      if arg32 then
        serverEventCall = table
        serverEventCall = serverEventCall.insert
        textValue11 = textValue5.checkpoints
        textValue15 = {}
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.getPlayerCoords
        -- Beginner: result below is playerCoords.
        cmgCall2 = cmgCall2()
        textValue15.position = cmgCall2
        textValue15.radius = 10.0
        serverEventCall(textValue11, textValue15)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(textValue8, dataTable2, stringHelper3, textValue14)
    arg22 = workValue2
    arg22()
  end
  arg1(arg2, arg3, workValue10, workValue11, workValue12)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue10 = "customraces"
  workValue11 = "selected"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue10, workValue11)
  arg3 = true
  workValue10 = true
  workValue11 = true

  -- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
  function workValue12()
    local arg12, arg22, textValue8, dataTable2, stringHelper3, textValue14, workValue14, mathHelper2, textValue17
    arg12 = assert
    arg22 = textValue10
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "~g~Setup Race"
    textValue8 = ""
    dataTable2 = true

    -- === HELPER FUNCTION: stringHelper3() ===
    function stringHelper3()
      local arg13, arg23
    end
    textValue14 = RMenu
    workValue14 = textValue14
    textValue14 = textValue14.Get
    mathHelper2 = "customraces"
    textValue17 = "selectedsetup"
    textValue14, workValue14, mathHelper2, textValue17 = textValue14(workValue14, mathHelper2, textValue17)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, textValue8, dataTable2, stringHelper3, textValue14, workValue14, mathHelper2, textValue17)
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "~r~Delete Race"
    textValue8 = ""
    dataTable2 = true

    -- === HELPER FUNCTION: stringHelper3(arg13, arg23, arg32) ===
    function stringHelper3(arg13, arg23, arg32)
      local serverEventCall, textValue11, textValue15
      if arg32 then
        serverEventCall = TriggerServerEvent
        textValue11 = "18d292e790"
        textValue15 = textValue10.id
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "18d292e790".
        serverEventCall(textValue11, textValue15)
        serverEventCall = RageUI
        serverEventCall = serverEventCall.GoBack
        serverEventCall()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, textValue8, dataTable2, stringHelper3)
  end
  arg1(arg2, arg3, workValue10, workValue11, workValue12)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue10 = "customraces"
  workValue11 = "selectedsetup"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue10, workValue11)
  arg3 = true
  workValue10 = true
  workValue11 = true

  -- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
  function workValue12()
    local arg12, arg22, textValue8, dataTable2, stringHelper3, textValue14
    arg12 = assert
    arg22 = textValue10
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Number of Laps"
    textValue8 = ""
    dataTable2 = {}
    stringHelper3 = tostring
    textValue14 = rageUiCall2.numLaps
    stringHelper3 = stringHelper3(textValue14)
    dataTable2.RightLabel = stringHelper3
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg13, arg23, arg32) ===
    function textValue14(arg13, arg23, arg32)
      local serverEventCall, textValue11, textValue15, cmgCall2
      if arg32 then
        serverEventCall = CMG
        serverEventCall = serverEventCall.clientPrompt
        textValue11 = "Enter Number of Laps"
        textValue15 = ""

        -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg14) ===
        function cmgCall2(arg14)
          local workValue7, textValue9, stringHelper2
          workValue7 = tonumber
          textValue9 = arg14
          workValue7 = workValue7(textValue9)
          if workValue7 and workValue7 > 0 and workValue7 <= 10 then
            rageUiCall2.numLaps = workValue7
          else
            textValue9 = notify
            stringHelper2 = "~r~Invalid number of laps. Must between 1 and 10."
            -- Beginner: Show a notification to the player.
            textValue9(stringHelper2)
          end
        end
        serverEventCall(textValue11, textValue15, cmgCall2)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, textValue8, dataTable2, stringHelper3, textValue14)
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "~g~Start Race"
    textValue8 = ""
    dataTable2 = true

    -- === HELPER FUNCTION: stringHelper3(arg13, arg23, arg32) ===
    function stringHelper3(arg13, arg23, arg32)
      local serverEventCall, textValue11, textValue15, cmgCall2
      if arg32 then
        serverEventCall = TriggerServerEvent
        textValue11 = "459898e6ab"
        textValue15 = textValue10.id
        cmgCall2 = rageUiCall2.numLaps
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "459898e6ab".
        serverEventCall(textValue11, textValue15, cmgCall2)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, textValue8, dataTable2, stringHelper3)
  end
  arg1(arg2, arg3, workValue10, workValue11, workValue12)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue10 = "customraces"
  workValue11 = "manage"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue10, workValue11)
  arg3 = true
  workValue10 = true
  workValue11 = true

  -- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
  function workValue12()
    local arg12, arg22, textValue8, dataTable2, stringHelper3, textValue14, workValue14, mathHelper2, textValue17, stringHelper4, stringHelper, dataTable, mathHelper, numberValue5, serverId, textValue2
    arg12 = textValue13
    if not arg12 then
      arg12 = RageUI
      arg12 = arg12.Visible
      arg22 = RMenu
      textValue8 = arg22
      arg22 = arg22.Get
      dataTable2 = "customraces"
      stringHelper3 = "mainmenu"
      -- Beginner: result below is menu.
      arg22 = arg22(textValue8, dataTable2, stringHelper3)
      textValue8 = true
      arg12(arg22, textValue8)
      return
    end
    arg12 = textValue13.hasStarted
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.Button
      arg22 = "~r~Stop Race"
      textValue8 = "Stops the race, submitting any winners."
      dataTable2 = true

      -- === HELPER FUNCTION: stringHelper3(arg13, arg23, arg32) ===
      function stringHelper3(arg13, arg23, arg32)
        local serverEventCall, textValue11
        if arg32 then
          serverEventCall = TriggerServerEvent
          textValue11 = "cc914ff479"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cc914ff479".
          serverEventCall(textValue11)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, textValue8, dataTable2, stringHelper3)
    else
      arg12 = RageUI
      arg12 = arg12.Button
      arg22 = "~g~Fully Start"
      textValue8 = "Fully starts the race, including all players inside a vehicle inside of the start area"
      dataTable2 = true

      -- === HELPER FUNCTION: stringHelper3(arg13, arg23, arg32) ===
      function stringHelper3(arg13, arg23, arg32)
        local serverEventCall, textValue11
        if arg32 then
          serverEventCall = TriggerServerEvent
          textValue11 = "2bcb53bfd6"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2bcb53bfd6".
          serverEventCall(textValue11)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, textValue8, dataTable2, stringHelper3)
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~y~Suitable Players"
      arg12(arg22)
      arg12 = pairs
      arg22 = GetActivePlayers
      arg22, textValue8, dataTable2, stringHelper3, textValue14, workValue14, mathHelper2, textValue17, stringHelper4, stringHelper, dataTable, mathHelper, numberValue5, serverId, textValue2 = arg22()
      arg12, arg22, textValue8, dataTable2 = arg12(arg22, textValue8, dataTable2, stringHelper3, textValue14, workValue14, mathHelper2, textValue17, stringHelper4, stringHelper, dataTable, mathHelper, numberValue5, serverId, textValue2)
      for stringHelper3, textValue14 in arg12, arg22, textValue8, dataTable2 do
        workValue14 = GetPlayerPed
        mathHelper2 = textValue14
        -- Beginner: result below is playerPed.
        workValue14 = workValue14(mathHelper2)
        if 0 ~= workValue14 then
          mathHelper2 = GetVehiclePedIsUsing
          textValue17 = workValue14
          mathHelper2 = mathHelper2(textValue17)
          if 0 ~= mathHelper2 then
            mathHelper2 = GetEntityCoords
            textValue17 = workValue14
            -- Beginner: result below is entityCoords.
            mathHelper2 = mathHelper2(textValue17)
            textValue17 = textValue13.config
            textValue17 = textValue17.startPosition
            textValue17 = mathHelper2 - textValue17
            textValue17 = #textValue17
            stringHelper4 = cmgCall.startAreaRadius
            if textValue17 < stringHelper4 then
              textValue17 = RageUI
              textValue17 = textValue17.ButtonWithStyle
              stringHelper4 = CMG
              stringHelper4 = stringHelper4.getPlayerName
              stringHelper = textValue14
              stringHelper4 = stringHelper4(stringHelper)
              stringHelper = ""
              dataTable = {}
              mathHelper = string
              mathHelper = mathHelper.format
              numberValue5 = "Temp ID: %s"
              serverId = GetPlayerServerId
              textValue2 = textValue14
              serverId, textValue2 = serverId(textValue2)
              mathHelper = mathHelper(numberValue5, serverId, textValue2)
              dataTable.RightLabel = mathHelper
              mathHelper = true

              -- === HELPER FUNCTION (decompiler name: numberValue5; parameters: none) ===
              function numberValue5()
                local arg13, arg23
              end
              -- Beginner: Draw a selectable RageUI menu button.
              textValue17(stringHelper4, stringHelper, dataTable, mathHelper, numberValue5)
            end
          end
        end
      end
    end
  end
  arg1(arg2, arg3, workValue10, workValue11, workValue12)
end
rageUiCall(textValue, workValue3, workValue4, textValue3)
rageUiCall = RegisterNetEvent
textValue = "3c011b6464"
-- Beginner: this function handles network event "3c011b6464".

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2
  textValue7 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3c011b6464".
rageUiCall(textValue, workValue3)
rageUiCall = RegisterNetEvent
textValue = "f70b0b84ff"
-- Beginner: this function handles network event "f70b0b84ff".

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, arg3, workValue10
  arg2 = table
  arg2 = arg2.insert
  arg3 = textValue7
  workValue10 = arg1
  arg2(arg3, workValue10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f70b0b84ff".
rageUiCall(textValue, workValue3)
rageUiCall = RegisterNetEvent
textValue = "21f1b1eb3e"
-- Beginner: this function handles network event "21f1b1eb3e".

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, arg3, workValue10, workValue11, workValue12, numberValue15, position, numberValue16, numberValue17
  arg2 = pairs
  arg3 = textValue7
  arg2, arg3, workValue10, workValue11 = arg2(arg3)
  for workValue12, numberValue15 in arg2, arg3, workValue10, workValue11 do
    position = numberValue15.id
    if position == arg1 then
      position = table
      position = position.remove
      numberValue16 = textValue7
      numberValue17 = workValue12
      position(numberValue16, numberValue17)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "21f1b1eb3e".
rageUiCall(textValue, workValue3)

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1) ===
function rageUiCall(arg1)
  local arg2, arg3, workValue10, workValue11, workValue12, numberValue15, position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4, flag5, flag6
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = arg1.config
  arg3 = arg3.startPosition
  arg3 = arg2 - arg3
  arg3 = #arg3
  workValue10 = DrawMarker
  workValue11 = 1
  workValue12 = arg1.config
  workValue12 = workValue12.startPosition
  workValue12 = workValue12.x
  numberValue15 = arg1.config
  numberValue15 = numberValue15.startPosition
  numberValue15 = numberValue15.y
  position = arg1.config
  position = position.startPosition
  position = position.z
  position = position - 5.0
  numberValue16 = 0.0
  numberValue17 = 0.0
  numberValue = 0.0
  numberValue2 = 0.0
  numberValue3 = 0.0
  numberValue4 = 0.0
  numberValue6 = cmgCall.startAreaRadius
  numberValue6 = numberValue6 * 2.0
  numberValue7 = cmgCall.startAreaRadius
  numberValue7 = numberValue7 * 2.0
  numberValue8 = 8.0
  numberValue9 = 255
  numberValue10 = 255
  flag = 0
  flag2 = 200
  numberValue11 = false
  flag3 = false
  numberValue12 = 2
  numberValue13 = false
  flag4 = nil
  flag5 = nil
  flag6 = false
  workValue10(workValue11, workValue12, numberValue15, position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4, flag5, flag6)
  workValue10 = cmgCall.startAreaRadius
  if arg3 < workValue10 then
    workValue10 = drawNativeText
    workValue11 = "~y~Waiting for host to start the game..."
    -- Beginner: Draw GTA-style text on screen.
    workValue10(workValue11)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2) ===
function textValue(arg1, arg2)
  local arg3, workValue10, workValue11, workValue12, numberValue15, position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4, flag5
  arg3 = arg1.config
  arg3 = arg3.endPosition
  if arg3 then
    arg3 = DrawMarker
    workValue10 = 4
    workValue11 = arg1.config
    workValue11 = workValue11.endPosition
    workValue11 = workValue11.x
    workValue12 = arg1.config
    workValue12 = workValue12.endPosition
    workValue12 = workValue12.y
    numberValue15 = arg1.config
    numberValue15 = numberValue15.endPosition
    numberValue15 = numberValue15.z
    numberValue15 = numberValue15 + 1.5
    position = 0.0
    numberValue16 = 0.0
    numberValue17 = 0.0
    numberValue = 0.0
    numberValue2 = 0.0
    numberValue3 = 0.0
    numberValue4 = 5.0
    numberValue6 = 5.0
    numberValue7 = 5.0
    numberValue8 = 255
    numberValue9 = 0
    numberValue10 = 0
    flag = 255
    flag2 = false
    numberValue11 = false
    flag3 = 2
    numberValue12 = false
    numberValue13 = nil
    flag4 = nil
    flag5 = false
    arg3(workValue10, workValue11, workValue12, numberValue15, position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4, flag5)
  end
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  workValue10 = arg1.config
  workValue10 = workValue10.endPosition
  workValue10 = arg3 - workValue10
  workValue10 = #workValue10
  if workValue10 < 10.0 then
    workValue10 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workValue10 = workValue10()
    workValue11 = arg2.lastSentCheckpointEventTime
    workValue11 = workValue10 - workValue11
    workValue12 = cmgCall.delayBetweenEventsMsec
    if workValue11 > workValue12 then
      workValue11 = TriggerServerEvent
      workValue12 = "ca5022ad11"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ca5022ad11".
      workValue11(workValue12)
      arg2.lastSentCheckpointEventTime = workValue10
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2, arg3) ===
function workValue3(arg1, arg2, arg3)
  local workValue10, workValue11, workValue12, numberValue15, position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4, flag5, flag6, numberValue14, flag7, flag8
  workValue10 = arg1.config
  workValue10 = workValue10.checkpoints
  workValue11 = arg3.checkpointIndex
  workValue10 = workValue10[workValue11]
  workValue11 = assert
  workValue12 = workValue10
  workValue11(workValue12)
  workValue11 = CMG
  workValue11 = workValue11.getPlayerCoords
  -- Beginner: result below is playerCoords.
  workValue11 = workValue11()
  workValue12 = norm
  numberValue15 = workValue10.position
  numberValue15 = workValue11 - numberValue15
  workValue12 = workValue12(numberValue15)
  numberValue15 = DrawMarker
  position = 20
  numberValue16 = workValue11.x
  numberValue17 = workValue11.y
  numberValue = workValue11.z
  numberValue = numberValue + 0.75
  numberValue2 = workValue12.x
  numberValue3 = workValue12.y
  numberValue4 = workValue12.z
  numberValue6 = -90.0
  numberValue7 = 0.0
  numberValue8 = 0.0
  numberValue9 = 1.0
  numberValue10 = 1.0
  flag = 1.0
  flag2 = 255
  numberValue11 = 255
  flag3 = 0
  numberValue12 = 100
  numberValue13 = false
  flag4 = false
  flag5 = 2
  flag6 = false
  numberValue14 = nil
  flag7 = nil
  flag8 = false
  numberValue15(position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4, flag5, flag6, numberValue14, flag7, flag8)
  numberValue15 = DrawMarker
  position = 1
  numberValue16 = workValue10.position
  numberValue16 = numberValue16.x
  numberValue17 = workValue10.position
  numberValue17 = numberValue17.y
  numberValue = workValue10.position
  numberValue = numberValue.z
  numberValue = numberValue - 2.0
  numberValue2 = 0.0
  numberValue3 = 0.0
  numberValue4 = 0.0
  numberValue6 = 0.0
  numberValue7 = 0.0
  numberValue8 = 0.0
  numberValue9 = 5.0
  numberValue10 = 5.0
  flag = 6.5
  flag2 = 255
  numberValue11 = 255
  flag3 = 0
  numberValue12 = 100
  numberValue13 = false
  flag4 = false
  flag5 = 2
  flag6 = false
  numberValue14 = nil
  flag7 = nil
  flag8 = false
  numberValue15(position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4, flag5, flag6, numberValue14, flag7, flag8)
  numberValue15 = CMG
  numberValue15 = numberValue15.getPlayerCoords
  -- Beginner: result below is playerCoords.
  numberValue15 = numberValue15()
  position = workValue10.position
  position = numberValue15 - position
  position = #position
  numberValue16 = workValue10.radius
  if position < numberValue16 then
    position = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    position = position()
    numberValue16 = arg2.lastSentCheckpointEventTime
    numberValue16 = position - numberValue16
    numberValue17 = cmgCall.delayBetweenEventsMsec
    if numberValue16 > numberValue17 then
      numberValue16 = TriggerServerEvent
      numberValue17 = "352973cadc"
      numberValue = arg3.checkpointIndex
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "352973cadc".
      numberValue16(numberValue17, numberValue)
      arg2.lastSentCheckpointEventTime = position
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local arg2, arg3, workValue10, workValue11, workValue12, numberValue15, position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4, flag5, flag6, numberValue14, flag7, flag8, flag9
  arg2 = pairs
  arg3 = arg1.config
  arg3 = arg3.checkpoints
  arg2, arg3, workValue10, workValue11 = arg2(arg3)
  for workValue12, numberValue15 in arg2, arg3, workValue10, workValue11 do
    position = DrawMarker
    numberValue16 = 1
    numberValue17 = numberValue15.position
    numberValue17 = numberValue17.x
    numberValue = numberValue15.position
    numberValue = numberValue.y
    numberValue2 = numberValue15.position
    numberValue2 = numberValue2.z
    numberValue2 = numberValue2 - 2.0
    numberValue3 = 0.0
    numberValue4 = 0.0
    numberValue6 = 0.0
    numberValue7 = 0.0
    numberValue8 = 0.0
    numberValue9 = 0.0
    numberValue10 = 5.0
    flag = 5.0
    flag2 = 6.5
    numberValue11 = 255
    flag3 = 255
    numberValue12 = 0
    numberValue13 = 100
    flag4 = false
    flag5 = false
    flag6 = 2
    numberValue14 = false
    flag7 = nil
    flag8 = nil
    flag9 = false
    position(numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11, flag3, numberValue12, numberValue13, flag4, flag5, flag6, numberValue14, flag7, flag8, flag9)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2) ===
function textValue3(arg1, arg2)
  local arg3, workValue10, workValue11, workValue12, numberValue15, position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11
  arg3 = CMG
  arg3 = arg3.getLocalPlayerSrc
  arg3 = arg3()
  workValue10 = arg1.players
  workValue10 = workValue10[arg3]
  if not workValue10 then
    workValue11 = workValue4
    workValue12 = arg1
    workValue11(workValue12)
    return
  end
  workValue11 = {}
  workValue12 = pairs
  numberValue15 = arg1.players
  workValue12, numberValue15, position, numberValue16 = workValue12(numberValue15)
  for numberValue17, numberValue in workValue12, numberValue15, position, numberValue16 do
    numberValue.distanceToNextCheckpoint = 0.0
    numberValue2 = arg1.config
    numberValue2 = numberValue2.checkpoints
    numberValue3 = numberValue.checkpointIndex
    numberValue2 = numberValue2[numberValue3]
    if numberValue2 then
      numberValue3 = GetPlayerFromServerId
      numberValue4 = numberValue17
      -- Beginner: result below is playerIndex.
      numberValue3 = numberValue3(numberValue4)
      if numberValue3 >= 0 then
        numberValue4 = GetPlayerPed
        numberValue6 = numberValue3
        -- Beginner: result below is playerPed.
        numberValue4 = numberValue4(numberValue6)
        numberValue6 = GetEntityCoords
        numberValue7 = numberValue4
        numberValue8 = true
        -- Beginner: result below is entityCoords.
        numberValue6 = numberValue6(numberValue7, numberValue8)
        numberValue7 = numberValue2.position
        numberValue6 = numberValue6 - numberValue7
        numberValue6 = #numberValue6
        numberValue.distanceToNextCheckpoint = numberValue6
      end
    end
    numberValue3 = table
    numberValue3 = numberValue3.insert
    numberValue4 = workValue11
    numberValue6 = numberValue
    numberValue3(numberValue4, numberValue6)
  end
  workValue12 = cmgCall.sortPlayers
  numberValue15 = workValue11
  workValue12(numberValue15)
  workValue12 = "N/A"
  numberValue15 = pairs
  position = workValue11
  numberValue15, position, numberValue16, numberValue17 = numberValue15(position)
  for numberValue, numberValue2 in numberValue15, position, numberValue16, numberValue17 do
    numberValue3 = numberValue2.source
    if numberValue3 == arg3 then
      numberValue3 = tostring
      numberValue4 = numberValue
      numberValue3 = numberValue3(numberValue4)
      workValue12 = numberValue3
      break
    end
  end
  numberValue15 = arg2.timers
  numberValue15 = numberValue15.push
  position = "~g~POSITION"
  numberValue16 = workValue12
  numberValue15(position, numberValue16)
  numberValue15 = workValue10.finishGameTime
  if not numberValue15 then
    numberValue15 = GetNetworkTime
    -- Beginner: result below is networkTime.
    numberValue15 = numberValue15()
  end
  position = math
  position = position.floor
  numberValue16 = arg1.startTime
  numberValue16 = numberValue15 - numberValue16
  numberValue16 = numberValue16 / 1000
  position = position(numberValue16)
  numberValue16 = position % 60
  numberValue17 = math
  numberValue17 = numberValue17.floor
  numberValue = position / 60
  numberValue17 = numberValue17(numberValue)
  numberValue = arg2.timers
  numberValue = numberValue.push
  numberValue2 = "~y~TIME"
  numberValue3 = string
  numberValue3 = numberValue3.format
  numberValue4 = "%s:%s"
  numberValue6 = string
  numberValue6 = numberValue6.rpad
  numberValue7 = tostring
  numberValue8 = numberValue17
  numberValue7 = numberValue7(numberValue8)
  numberValue8 = 2
  numberValue9 = "0"
  numberValue6 = numberValue6(numberValue7, numberValue8, numberValue9)
  numberValue7 = string
  numberValue7 = numberValue7.rpad
  numberValue8 = tostring
  numberValue9 = numberValue16
  numberValue8 = numberValue8(numberValue9)
  numberValue9 = 2
  numberValue10 = "0"
  numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11 = numberValue7(numberValue8, numberValue9, numberValue10)
  numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11 = numberValue3(numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11)
  numberValue(numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11)
  numberValue = arg2.timers
  numberValue = numberValue.push
  numberValue2 = "~y~CHECKPOINT"
  numberValue3 = string
  numberValue3 = numberValue3.format
  numberValue4 = "%s/%s"
  numberValue6 = workValue10.checkpointIndex
  numberValue6 = numberValue6 - 1
  numberValue7 = arg1.config
  numberValue7 = numberValue7.checkpoints
  numberValue7 = #numberValue7
  numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11 = numberValue3(numberValue4, numberValue6, numberValue7)
  numberValue(numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11)
  numberValue = arg1.numLaps
  if numberValue > 1 then
    numberValue = arg2.timers
    numberValue = numberValue.push
    numberValue2 = "~y~LAP"
    numberValue3 = string
    numberValue3 = numberValue3.format
    numberValue4 = "%s/%s"
    numberValue6 = workValue10.numLapsDone
    numberValue7 = arg1.numLaps
    numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11 = numberValue3(numberValue4, numberValue6, numberValue7)
    numberValue(numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11)
  end
  numberValue = workValue10.finishGameTime
  if numberValue then
    numberValue = drawNativeText
    numberValue2 = "~g~You have finished the game. Please wait."
    -- Beginner: Draw GTA-style text on screen.
    numberValue(numberValue2)
    return
  end
  numberValue = workValue10.checkpointIndex
  numberValue2 = arg1.config
  numberValue2 = numberValue2.checkpoints
  numberValue2 = #numberValue2
  if numberValue > numberValue2 then
    numberValue = textValue
    numberValue2 = arg1
    numberValue3 = arg2
    numberValue(numberValue2, numberValue3)
  else
    numberValue = workValue3
    numberValue2 = arg1
    numberValue3 = arg2
    numberValue4 = workValue10
    numberValue(numberValue2, numberValue3, numberValue4)
  end
  numberValue = DisableControlAction
  numberValue2 = 0
  numberValue3 = 23
  numberValue4 = true
  numberValue(numberValue2, numberValue3, numberValue4)
  numberValue = DisableControlAction
  numberValue2 = 0
  numberValue3 = 75
  numberValue4 = true
  numberValue(numberValue2, numberValue3, numberValue4)
  numberValue = IsDisabledControlJustPressed
  numberValue2 = 0
  numberValue3 = 23
  numberValue = numberValue(numberValue2, numberValue3)
  if numberValue then
    numberValue = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    numberValue = numberValue()
    numberValue2 = GetVehiclePedIsUsing
    numberValue3 = numberValue
    numberValue2 = numberValue2(numberValue3)
    if numberValue2 and 0 ~= numberValue2 then
      numberValue3 = SetVehicleFixed
      numberValue4 = numberValue2
      numberValue3(numberValue4)
      numberValue3 = SetVehicleDeformationFixed
      numberValue4 = numberValue2
      numberValue3(numberValue4)
      numberValue3 = SetVehicleUndriveable
      numberValue4 = numberValue2
      numberValue6 = false
      numberValue3(numberValue4, numberValue6)
      numberValue3 = SetVehicleEngineHealth
      numberValue4 = numberValue2
      numberValue6 = 1000.0
      numberValue3(numberValue4, numberValue6)
      numberValue3 = SetVehicleEngineOn
      numberValue4 = numberValue2
      numberValue6 = true
      numberValue7 = true
      numberValue8 = false
      numberValue3(numberValue4, numberValue6, numberValue7, numberValue8)
      numberValue3 = arg1.config
      numberValue3 = numberValue3.checkpoints
      numberValue4 = workValue10.checkpointIndex
      numberValue4 = numberValue4 - 1
      numberValue3 = numberValue3[numberValue4]
      if numberValue3 then
        numberValue4 = SetEntityCoords
        numberValue6 = numberValue2
        numberValue7 = numberValue3.position
        numberValue7 = numberValue7.x
        numberValue8 = numberValue3.position
        numberValue8 = numberValue8.y
        numberValue9 = numberValue3.position
        numberValue9 = numberValue9.z
        numberValue9 = numberValue9 + 2.0
        numberValue10 = false
        flag = false
        flag2 = false
        numberValue11 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        numberValue4(numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11)
        numberValue4 = SetEntityHeading
        numberValue6 = numberValue2
        numberValue7 = 0.0
        -- Beginner: Change the direction an entity is facing.
        numberValue4(numberValue6, numberValue7)
        numberValue4 = notify
        numberValue6 = "~g~Vehicle repaired and reset to last checkpoint."
        -- Beginner: Show a notification to the player.
        numberValue4(numberValue6)
      else
        numberValue4 = notify
        numberValue6 = "~r~No checkpoint found to reset."
        numberValue4(numberValue6)
      end
    else
      numberValue3 = notify
      numberValue4 = "~r~You must be in a vehicle to use reset."
      -- Beginner: Show a notification to the player.
      numberValue3(numberValue4)
    end
  end
  numberValue = rageUiCall3
  if numberValue then
    numberValue = BeginScaleformMovieMethod
    numberValue2 = rageUiCall3
    numberValue3 = "CLEAR_ALL"
    numberValue(numberValue2, numberValue3)
    numberValue = EndScaleformMovieMethod
    numberValue()
    numberValue = BeginScaleformMovieMethod
    numberValue2 = rageUiCall3
    numberValue3 = "SET_CLEAR_SPACE"
    numberValue(numberValue2, numberValue3)
    numberValue = ScaleformMovieMethodAddParamInt
    numberValue2 = 200
    numberValue(numberValue2)
    numberValue = EndScaleformMovieMethod
    numberValue()
    numberValue = BeginScaleformMovieMethod
    numberValue2 = rageUiCall3
    numberValue3 = "SET_DATA_SLOT"
    numberValue(numberValue2, numberValue3)
    numberValue = ScaleformMovieMethodAddParamInt
    numberValue2 = 0
    numberValue(numberValue2)
    numberValue = _ENV
    numberValue2 = "PushScaleformMovieMethodParameterButtonName"
    numberValue = numberValue[numberValue2]
    numberValue2 = GetControlInstructionalButton
    numberValue3 = 0
    numberValue4 = 23
    numberValue6 = true
    numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11 = numberValue2(numberValue3, numberValue4, numberValue6)
    numberValue(numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag, flag2, numberValue11)
    numberValue = PushScaleformMovieMethodParameterString
    numberValue2 = "Reset Vehicle"
    numberValue(numberValue2)
    numberValue = EndScaleformMovieMethod
    numberValue()
    numberValue = BeginScaleformMovieMethod
    numberValue2 = rageUiCall3
    numberValue3 = "DRAW_INSTRUCTIONAL_BUTTONS"
    numberValue(numberValue2, numberValue3)
    numberValue = ScaleformMovieMethodAddParamInt
    numberValue2 = 0
    numberValue(numberValue2)
    numberValue = EndScaleformMovieMethod
    numberValue()
    numberValue = DrawScaleformMovieFullscreen
    numberValue2 = rageUiCall3
    numberValue3 = 255
    numberValue4 = 255
    numberValue6 = 255
    numberValue7 = 255
    numberValue8 = 0
    numberValue(numberValue2, numberValue3, numberValue4, numberValue6, numberValue7, numberValue8)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2) ===
function textValue4(arg1, arg2)
  local arg3, workValue10, workValue11
  arg3 = arg1.hasStarted
  if not arg3 then
    arg3 = rageUiCall
    workValue10 = arg1
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    arg3(workValue10)
  else
    arg3 = textValue3
    workValue10 = arg1
    workValue11 = arg2
    arg3(workValue10, workValue11)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2, arg3
  arg1 = textValue13
  if arg1 then
    arg1 = textValue16
    if arg1 then
      arg1 = textValue16.timers
      arg1 = arg1.reset
      arg1()
      arg1 = textValue4
      arg2 = textValue13
      arg3 = textValue16
      arg1(arg2, arg3)
      arg1 = textValue16.timers
      arg1 = arg1.draw
      arg1()
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, workValue10, workValue11, workValue12, numberValue15, position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3, numberValue4, numberValue6
  arg2 = AddBlipForCoord
  arg3 = arg1.config
  arg3 = arg3.startPosition
  arg3 = arg3.x
  workValue10 = arg1.config
  workValue10 = workValue10.startPosition
  workValue10 = workValue10.y
  workValue11 = arg1.config
  workValue11 = workValue11.startPosition
  workValue11 = workValue11.z
  -- Beginner: result below is blipHandle.
  arg2 = arg2(arg3, workValue10, workValue11)
  arg3 = SetBlipSprite
  workValue10 = arg2
  workValue11 = 38
  arg3(workValue10, workValue11)
  arg3 = AddBlipForRadius
  workValue10 = arg1.config
  workValue10 = workValue10.startPosition
  workValue10 = workValue10.x
  workValue11 = arg1.config
  workValue11 = workValue11.startPosition
  workValue11 = workValue11.y
  workValue12 = arg1.config
  workValue12 = workValue12.startPosition
  workValue12 = workValue12.z
  numberValue15 = cmgCall.startAreaRadius
  -- Beginner: result below is blipHandle.
  arg3 = arg3(workValue10, workValue11, workValue12, numberValue15)
  workValue10 = SetBlipAlpha
  workValue11 = arg3
  workValue12 = 128
  workValue10(workValue11, workValue12)
  workValue10 = AddBlipForCoord
  workValue11 = arg1.config
  workValue11 = workValue11.endPosition
  workValue11 = workValue11.x
  workValue12 = arg1.config
  workValue12 = workValue12.endPosition
  workValue12 = workValue12.y
  numberValue15 = arg1.config
  numberValue15 = numberValue15.endPosition
  numberValue15 = numberValue15.z
  -- Beginner: result below is blipHandle.
  workValue10 = workValue10(workValue11, workValue12, numberValue15)
  workValue11 = SetBlipSprite
  workValue12 = workValue10
  numberValue15 = 176
  workValue11(workValue12, numberValue15)
  workValue11 = {}
  workValue12 = pairs
  numberValue15 = arg1.config
  numberValue15 = numberValue15.checkpoints
  workValue12, numberValue15, position, numberValue16 = workValue12(numberValue15)
  for numberValue17, numberValue in workValue12, numberValue15, position, numberValue16 do
    numberValue2 = AddBlipForCoord
    numberValue3 = numberValue.position
    numberValue3 = numberValue3.x
    numberValue4 = numberValue.position
    numberValue4 = numberValue4.y
    numberValue6 = numberValue.position
    numberValue6 = numberValue6.z
    -- Beginner: result below is blipHandle.
    numberValue2 = numberValue2(numberValue3, numberValue4, numberValue6)
    numberValue3 = SetBlipScale
    numberValue4 = numberValue2
    numberValue6 = 0.7
    numberValue3(numberValue4, numberValue6)
    numberValue3 = table
    numberValue3 = numberValue3.insert
    numberValue4 = workValue11
    numberValue6 = numberValue2
    numberValue3(numberValue4, numberValue6)
  end
  workValue12 = {}
  workValue12.startBlip = arg2
  workValue12.startRadiusBlip = arg3
  workValue12.endBlip = workValue10
  workValue12.checkpointBlips = workValue11
  numberValue15 = CMG
  numberValue15 = numberValue15.createTimerBars
  -- Beginner: result below is timerBars.
  numberValue15 = numberValue15()
  workValue12.timers = numberValue15
  workValue12.lastSentCheckpointEventTime = 0
  textValue16 = workValue12
  workValue12 = CMG
  workValue12 = workValue12.createThreadOnTick
  numberValue15 = workValue5
  position = "Custom Races"
  -- Beginner: Run a helper every game frame while this script is active.
  workValue12(numberValue15, position)
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3, workValue10, workValue11, workValue12, numberValue15, position, numberValue16
  arg2 = CMG
  arg2 = arg2.deleteThreadOnTick
  arg3 = workValue5
  arg2(arg3)
  arg2 = RemoveBlip
  arg3 = arg1.startBlip
  arg2(arg3)
  arg2 = RemoveBlip
  arg3 = arg1.startRadiusBlip
  arg2(arg3)
  arg2 = RemoveBlip
  arg3 = arg1.endBlip
  arg2(arg3)
  arg2 = pairs
  arg3 = arg1.checkpointBlips
  arg2, arg3, workValue10, workValue11 = arg2(arg3)
  for workValue12, numberValue15 in arg2, arg3, workValue10, workValue11 do
    position = RemoveBlip
    numberValue16 = numberValue15
    position(numberValue16)
  end
  arg2 = nil
  textValue16 = arg2
end
eventRegistration = RegisterNetEvent
textValue6 = "adaa6fbc31"
-- Beginner: this function handles network event "adaa6fbc31".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3
  textValue13 = arg1
  arg2 = workValue6
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "adaa6fbc31".
eventRegistration(textValue6, workValue9)
eventRegistration = RegisterNetEvent
textValue6 = "95aea723be"
-- Beginner: this function handles network event "95aea723be".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2
  arg1 = textValue16
  if arg1 then
    arg1 = workValue8
    arg2 = textValue16
    arg1(arg2)
  end
  arg1 = nil
  textValue13 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "95aea723be".
eventRegistration(textValue6, workValue9)
eventRegistration = RegisterNetEvent
textValue6 = "2bcb53bfd6"
-- Beginner: this function handles network event "2bcb53bfd6".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3, workValue10, workValue11
  arg2 = FreezeEntityPosition
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  workValue10 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, workValue10)
  arg2 = FreezeEntityPosition
  arg3 = GetVehiclePedIsIn
  workValue10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue10 = workValue10()
  workValue11 = false
  -- Beginner: result below is currentVehicle.
  arg3 = arg3(workValue10, workValue11)
  workValue10 = true
  arg2(arg3, workValue10)
  arg2 = CMG
  arg2 = arg2.showCountdownTimer
  arg3 = 5
  arg2(arg3)
  arg2 = textValue13
  if arg2 then
    textValue13.hasStarted = true
    textValue13.startTime = arg1
  end
  arg2 = FreezeEntityPosition
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  workValue10 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, workValue10)
  arg2 = FreezeEntityPosition
  arg3 = GetVehiclePedIsIn
  workValue10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue10 = workValue10()
  workValue11 = false
  -- Beginner: result below is currentVehicle.
  arg3 = arg3(workValue10, workValue11)
  workValue10 = false
  arg2(arg3, workValue10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2bcb53bfd6".
eventRegistration(textValue6, workValue9)
eventRegistration = RegisterNetEvent
textValue6 = "68e67790dc"
-- Beginner: this function handles network event "68e67790dc".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2
  arg2 = textValue13
  if arg2 then
    textValue13.players = arg1
  end
end
eventRegistration(textValue6, workValue9)
eventRegistration = RegisterNetEvent
textValue6 = "82025c7089"
-- Beginner: this function handles network event "82025c7089".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2
  arg2 = textValue13
  if arg2 then
    arg2 = textValue13.players
    arg2[arg1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "82025c7089".
eventRegistration(textValue6, workValue9)
eventRegistration = RegisterNetEvent
textValue6 = "f9f8708d28"
-- Beginner: this function handles network event "f9f8708d28".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3, workValue10, workValue11
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue10 = "customraces"
  workValue11 = "manage"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue10, workValue11)
  arg3 = true
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9f8708d28".
eventRegistration(textValue6, workValue9)
eventRegistration = RegisterNetEvent
textValue6 = "a17bc2ff43"
-- Beginner: this function handles network event "a17bc2ff43".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2) ===
function workValue9(arg1, arg2)
  local arg3
  arg3 = textValue13
  if arg3 then
    arg3 = textValue13.players
    arg3 = arg3[arg1]
    if arg3 then
      arg3.finishGameTime = arg2
    end
  end
end
eventRegistration(textValue6, workValue9)
eventRegistration = RegisterNetEvent
textValue6 = "4c236bb354"
-- Beginner: this function handles network event "4c236bb354".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2) ===
function workValue9(arg1, arg2)
  local arg3
  arg3 = textValue13
  if arg3 then
    arg3 = textValue13.players
    arg3 = arg3[arg1]
    if arg3 then
      arg3.checkpointIndex = arg2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4c236bb354".
eventRegistration(textValue6, workValue9)
eventRegistration = RegisterNetEvent
textValue6 = "3f414022a1"
-- Beginner: this function handles network event "3f414022a1".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2, arg3) ===
function workValue9(arg1, arg2, arg3)
  local workValue10, workValue11, workValue12, numberValue15, position, numberValue16, numberValue17, numberValue, numberValue2, numberValue3
  workValue10 = textValue13
  if workValue10 then
    workValue10 = textValue13.players
    workValue10 = workValue10[arg1]
    if workValue10 then
      workValue10.numLapsDone = arg2
      workValue10.checkpointIndex = arg3
    end
    workValue11 = textValue16
    if workValue11 then
      workValue11 = CMG
      workValue11 = workValue11.getLocalPlayerSrc
      workValue11 = workValue11()
      if workValue11 == arg1 and 1 == arg3 then
        workValue11 = pairs
        workValue12 = textValue16.checkpointBlips
        workValue11, workValue12, numberValue15, position = workValue11(workValue12)
        for numberValue16, numberValue17 in workValue11, workValue12, numberValue15, position do
          numberValue = SetBlipDisplay
          numberValue2 = numberValue17
          numberValue3 = 2
          numberValue(numberValue2, numberValue3)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3f414022a1".
eventRegistration(textValue6, workValue9)
eventRegistration = RegisterNetEvent
textValue6 = "a595cac93f"
-- Beginner: this function handles network event "a595cac93f".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3, workValue10, workValue11, workValue12, numberValue15
  arg2 = textValue16
  if arg2 then
    arg2 = textValue16.checkpointBlips
    arg2 = arg2[arg1]
    if arg2 then
      arg3 = SetBlipDisplay
      workValue10 = arg2
      workValue11 = 0
      arg3(workValue10, workValue11)
      arg3 = PlaySoundFrontend
      workValue10 = -1
      workValue11 = "RACE_PLACED"
      workValue12 = "HUD_AWARDS"
      numberValue15 = false
      arg3(workValue10, workValue11, workValue12, numberValue15)
      arg3 = AnimpostfxPlay
      workValue10 = "SuccessNeutral"
      workValue11 = 0
      workValue12 = false
      arg3(workValue10, workValue11, workValue12)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a595cac93f".
eventRegistration(textValue6, workValue9)
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2
  arg1 = textValue13
  if arg1 then
    arg1 = textValue13.players
    arg2 = CMG
    arg2 = arg2.getLocalPlayerSrc
    arg2 = arg2()
    arg1 = arg1[arg2]
    if arg1 then
      arg1 = true
      return arg1
    end
  end
  arg1 = false
  return arg1
end
eventRegistration.isInCustomRace = textValue6
