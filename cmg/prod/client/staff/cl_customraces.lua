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
local cmgOperation, text5, text7, text10, rageUiOperation2, text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text5 = "cfg/cfg_customraces"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text5)
text5 = RMenu
text5 = text5.Add
text7 = "customraces"
text10 = "mainmenu"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text13 = ""
text16 = "~b~Main Menu"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9 = rageUiOperation4()
rageUiOperation2, text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9 = rageUiOperation2(text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9)
text5(text7, text10, rageUiOperation2, text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9)
text5 = RMenu
text5 = text5.Add
text7 = "customraces"
text10 = "new"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text13 = RMenu
text16 = text13
text13 = text13.Get
rageUiOperation3 = "customraces"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text13 = text13(text16, rageUiOperation3, rageUiOperation4)
text16 = ""
rageUiOperation3 = "~b~Setup New Race"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9 = rageUiOperation5()
rageUiOperation2, text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9 = rageUiOperation2(text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9)
text5(text7, text10, rageUiOperation2, text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9)
text5 = RMenu
text5 = text5.Add
text7 = "customraces"
text10 = "selected"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text13 = RMenu
text16 = text13
text13 = text13.Get
rageUiOperation3 = "customraces"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text13 = text13(text16, rageUiOperation3, rageUiOperation4)
text16 = ""
rageUiOperation3 = "~b~Selected Race"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9 = rageUiOperation5()
rageUiOperation2, text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9 = rageUiOperation2(text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9)
text5(text7, text10, rageUiOperation2, text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9)
text5 = RMenu
text5 = text5.Add
text7 = "customraces"
text10 = "selectedsetup"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text13 = RMenu
text16 = text13
text13 = text13.Get
rageUiOperation3 = "customraces"
rageUiOperation4 = "selected"
-- Beginner: result below is menu.
text13 = text13(text16, rageUiOperation3, rageUiOperation4)
text16 = ""
rageUiOperation3 = "~b~Selected Start Options"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9 = rageUiOperation5()
rageUiOperation2, text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9 = rageUiOperation2(text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9)
text5(text7, text10, rageUiOperation2, text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9)
text5 = RMenu
text5 = text5.Add
text7 = "customraces"
text10 = "manage"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text13 = RMenu
text16 = text13
text13 = text13.Get
rageUiOperation3 = "customraces"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text13 = text13(text16, rageUiOperation3, rageUiOperation4)
text16 = ""
rageUiOperation3 = "~b~Manage Race"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9 = rageUiOperation5()
rageUiOperation2, text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9 = rageUiOperation2(text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9)
text5(text7, text10, rageUiOperation2, text13, text16, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue, workingValue2, rageUiOperation, text, workingValue3, workingValue4, text3, text4, workingValue5, workingValue6, workingValue8, eventHandler, text6, workingValue9)
text5 = {}
text5.name = nil
text5.startPosition = nil
text5.endPosition = nil
text7 = {}
text5.checkpoints = text7
text7 = {}
text10 = nil
rageUiOperation2 = {}
rageUiOperation2.numLaps = 1
text13 = nil
text16 = nil
rageUiOperation3 = nil

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2
  localValue1 = RequestScaleformMovie
  localValue2 = "INSTRUCTIONAL_BUTTONS"
  -- Beginner: result below is scaleformHandle.
  localValue1 = localValue1(localValue2)
  rageUiOperation3 = localValue1
  while true do
    localValue1 = HasScaleformMovieLoaded
    localValue2 = rageUiOperation3
    localValue1 = localValue1(localValue2)
    if localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
rageUiOperation5 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2
  localValue1 = rageUiOperation4
  localValue1()
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiOperation5(workingValue)
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: none) ===
function rageUiOperation5()
  local localValue1, localValue2
  localValue1 = text5.name
  if localValue1 then
    localValue1 = text5.startPosition
    if localValue1 then
      localValue1 = text5.endPosition
      if localValue1 then
        localValue1 = text5.checkpoints
        localValue1 = #localValue1
        if localValue1 > 0 then
          localValue1 = true
          return localValue1
      end
    end
  end
  else
    localValue1 = false
    return localValue1
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, workingValue10, workingValue11, workingValue12, number15, position
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = pairs
  localValue3 = text7
  localValue2, localValue3, workingValue10, workingValue11 = localValue2(localValue3)
  for workingValue12, number15 in localValue2, localValue3, workingValue10, workingValue11 do
    position = number15.position
    position = localValue1 - position
    position = #position
    number15.distance = position
  end
  localValue2 = table
  localValue2 = localValue2.sort
  localValue3 = text7

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue12, localValue22) ===
  function workingValue10(localValue12, localValue22)
    local text8, dataCollection2
    text8 = localValue12.distance
    dataCollection2 = localValue22.distance
    text8 = text8 < dataCollection2
    return text8
  end
  localValue2(localValue3, workingValue10)
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2, localValue3, workingValue10, workingValue11, workingValue12, number15, position, number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4, stateFlag5, stateFlag6, number14, stateFlag7, stateFlag8, stateFlag9, stateFlag10
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = text5.startPosition
  if localValue2 then
    localValue2 = DrawMarker
    localValue3 = 4
    workingValue10 = text5.startPosition
    workingValue10 = workingValue10.x
    workingValue11 = text5.startPosition
    workingValue11 = workingValue11.y
    workingValue12 = text5.startPosition
    workingValue12 = workingValue12.z
    workingValue12 = workingValue12 + 1.5
    number15 = 0.0
    position = 0.0
    number16 = 0.0
    number17 = 0.0
    number = 0.0
    number2 = 0.0
    number3 = 5.0
    number4 = 5.0
    number6 = 5.0
    number7 = 0
    number8 = 255
    number9 = 0
    number10 = 255
    stateFlag = false
    stateFlag2 = false
    number11 = 2
    stateFlag3 = false
    number12 = nil
    number13 = nil
    stateFlag4 = false
    localValue2(localValue3, workingValue10, workingValue11, workingValue12, number15, position, number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4)
  end
  localValue2 = text5.endPosition
  if localValue2 then
    localValue2 = DrawMarker
    localValue3 = 4
    workingValue10 = text5.endPosition
    workingValue10 = workingValue10.x
    workingValue11 = text5.endPosition
    workingValue11 = workingValue11.y
    workingValue12 = text5.endPosition
    workingValue12 = workingValue12.z
    workingValue12 = workingValue12 + 1.5
    number15 = 0.0
    position = 0.0
    number16 = 0.0
    number17 = 0.0
    number = 0.0
    number2 = 0.0
    number3 = 5.0
    number4 = 5.0
    number6 = 5.0
    number7 = 255
    number8 = 0
    number9 = 0
    number10 = 255
    stateFlag = false
    stateFlag2 = false
    number11 = 2
    stateFlag3 = false
    number12 = nil
    number13 = nil
    stateFlag4 = false
    localValue2(localValue3, workingValue10, workingValue11, workingValue12, number15, position, number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4)
  end
  localValue2 = pairs
  localValue3 = text5.checkpoints
  localValue2, localValue3, workingValue10, workingValue11 = localValue2(localValue3)
  for workingValue12, number15 in localValue2, localValue3, workingValue10, workingValue11 do
    position = number15.position
    position = localValue1 - position
    position = #position
    number16 = 500.0
    if position < number16 then
      number16 = DrawMarker
      number17 = 1
      number = number15.position
      number = number.x
      number2 = number15.position
      number2 = number2.y
      number3 = number15.position
      number3 = number3.z
      number3 = number3 - 1.0
      number4 = 0.0
      number6 = 0.0
      number7 = 0.0
      number8 = 0.0
      number9 = 0.0
      number10 = 0.0
      stateFlag = 5.0
      stateFlag2 = 5.0
      number11 = 7.5
      stateFlag3 = 255
      number12 = 255
      number13 = 0
      stateFlag4 = 160
      stateFlag5 = false
      stateFlag6 = false
      number14 = 2
      stateFlag7 = false
      stateFlag8 = nil
      stateFlag9 = nil
      stateFlag10 = false
      number16(number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4, stateFlag5, stateFlag6, number14, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
      number16 = DrawMarker
      number17 = 1
      number = number15.position
      number = number.x
      number2 = number15.position
      number2 = number2.y
      number3 = number15.position
      number3 = number3.z
      number3 = number3 + 0.5
      number4 = 0.0
      number6 = 0.0
      number7 = 0.0
      number8 = 0.0
      number9 = 0.0
      number10 = 0.0
      stateFlag = number15.radius
      stateFlag = stateFlag * 2
      stateFlag2 = number15.radius
      stateFlag2 = stateFlag2 * 2
      number11 = 1.0
      stateFlag3 = 160
      number12 = 0
      number13 = 0
      stateFlag4 = 255
      stateFlag5 = false
      stateFlag6 = false
      number14 = 2
      stateFlag7 = false
      stateFlag8 = nil
      stateFlag9 = nil
      stateFlag10 = false
      number16(number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4, stateFlag5, stateFlag6, number14, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
      if position < 50.0 then
        number16 = CMG
        number16 = number16.DrawText3D
        number17 = number15.position
        number = tostring
        number2 = workingValue12
        number = number(number2)
        number2 = 1.0
        number16(number17, number, number2)
      end
    end
  end
end
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
text = 1.0
workingValue3 = RMenu
workingValue4 = workingValue3
workingValue3 = workingValue3.Get
text3 = "customraces"
text4 = "mainmenu"
-- Beginner: result below is menu.
workingValue3 = workingValue3(workingValue4, text3, text4)
workingValue4 = nil

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3, workingValue10, workingValue11, workingValue12
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue10 = "customraces"
  workingValue11 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue10, workingValue11)
  localValue3 = true
  workingValue10 = true
  workingValue11 = true

  -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
  function workingValue12()
    local localValue12, localValue22, text8, dataCollection2, stringHelper3, text14, workingValue14, mathHelper2, text17, stringHelper4, stringHelper, dataCollection, mathHelper, number5, serverId, text2
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~b~Setup New Race"
    text8 = ""
    dataCollection2 = {}
    dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: text14; parameters: localValue13, localValue23, localValue32) ===
    function text14(localValue13, localValue23, localValue32)
    end
    workingValue14 = RMenu
    mathHelper2 = workingValue14
    workingValue14 = workingValue14.Get
    text17 = "customraces"
    stringHelper4 = "new"
    workingValue14, mathHelper2, text17, stringHelper4, stringHelper, dataCollection, mathHelper, number5, serverId, text2 = workingValue14(mathHelper2, text17, stringHelper4)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, text8, dataCollection2, stringHelper3, text14, workingValue14, mathHelper2, text17, stringHelper4, stringHelper, dataCollection, mathHelper, number5, serverId, text2)
    localValue12 = text13
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "~g~Manage Active Race"
      text8 = ""
      dataCollection2 = {}
      dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stringHelper3 = true

      -- === HELPER FUNCTION (decompiler name: text14; parameters: localValue13, localValue23, localValue32) ===
      function text14(localValue13, localValue23, localValue32)
      end
      workingValue14 = RMenu
      mathHelper2 = workingValue14
      workingValue14 = workingValue14.Get
      text17 = "customraces"
      stringHelper4 = "manage"
      workingValue14, mathHelper2, text17, stringHelper4, stringHelper, dataCollection, mathHelper, number5, serverId, text2 = workingValue14(mathHelper2, text17, stringHelper4)
      localValue12(localValue22, text8, dataCollection2, stringHelper3, text14, workingValue14, mathHelper2, text17, stringHelper4, stringHelper, dataCollection, mathHelper, number5, serverId, text2)
    end
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Nearby Races"
    localValue12(localValue22)
    localValue12 = workingValue
    localValue12()
    localValue12 = pairs
    localValue22 = text7
    localValue12, localValue22, text8, dataCollection2 = localValue12(localValue22)
    for stringHelper3, text14 in localValue12, localValue22, text8, dataCollection2 do
      if stringHelper3 > 5 then
        break
      end
      workingValue14 = RageUI
      workingValue14 = workingValue14.ButtonWithStyle
      mathHelper2 = text14.name
      text17 = ""
      stringHelper4 = {}
      stringHelper = string
      stringHelper = stringHelper.format
      dataCollection = "%sm away"
      mathHelper = math
      mathHelper = mathHelper.floor
      number5 = text14.distance
      if not number5 then
        number5 = 0
      end
      mathHelper, number5, serverId, text2 = mathHelper(number5)
      stringHelper = stringHelper(dataCollection, mathHelper, number5, serverId, text2)
      stringHelper4.RightLabel = stringHelper
      stringHelper = true

      -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue13, localValue23, localValue32) ===
      function dataCollection(localValue13, localValue23, localValue32)
        local serverEventCall
        if localValue32 then
          serverEventCall = text14
          text10 = serverEventCall
        end
      end
      mathHelper = RMenu
      number5 = mathHelper
      mathHelper = mathHelper.Get
      serverId = "customraces"
      text2 = "selected"
      mathHelper, number5, serverId, text2 = mathHelper(number5, serverId, text2)
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue14(mathHelper2, text17, stringHelper4, stringHelper, dataCollection, mathHelper, number5, serverId, text2)
    end
  end
  localValue1(localValue2, localValue3, workingValue10, workingValue11, workingValue12)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue10 = "customraces"
  workingValue11 = "new"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue10, workingValue11)
  localValue3 = true
  workingValue10 = true
  workingValue11 = true

  -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
  function workingValue12()
    local localValue12, localValue22, text8, dataCollection2, stringHelper3, text14, workingValue14, mathHelper2, text17, stringHelper4, stringHelper, dataCollection, mathHelper, number5, serverId
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "~g~Create New Race"
    text8 = ""
    dataCollection2 = true

    -- === HELPER FUNCTION: stringHelper3(localValue13, localValue23, localValue32) ===
    function stringHelper3(localValue13, localValue23, localValue32)
      local serverEventCall, text11, text15
      if localValue32 then
        serverEventCall = rageUiOperation5
        serverEventCall = serverEventCall()
        if serverEventCall then
          serverEventCall = TriggerServerEvent
          text11 = "0cdea4259b"
          text15 = text5
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0cdea4259b".
          serverEventCall(text11, text15)
          serverEventCall = RageUI
          serverEventCall = serverEventCall.GoBack
          serverEventCall()
        else
          serverEventCall = notify
          text11 = "~r~Not all fields are configured. Please complete the setup."
          -- Beginner: Show a notification to the player.
          serverEventCall(text11)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, text8, dataCollection2, stringHelper3)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Name"
    text8 = ""
    dataCollection2 = {}
    stringHelper3 = text5.name
    if stringHelper3 then
      stringHelper3 = string
      stringHelper3 = stringHelper3.format
      text14 = "~g~%s"
      workingValue14 = text5.name
      stringHelper3 = stringHelper3(text14, workingValue14)
      if stringHelper3 then
        goto continueAtStep25
      end
    end
    stringHelper3 = "~r~Not Configured"
    ::continueAtStep25::
    dataCollection2.RightLabel = stringHelper3
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: text14; parameters: localValue13, localValue23, localValue32) ===
    function text14(localValue13, localValue23, localValue32)
      local serverEventCall, text11, text15, cmgOperation2
      if localValue32 then
        serverEventCall = CMG
        serverEventCall = serverEventCall.clientPrompt
        text11 = "Enter Name"
        text15 = ""

        -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue14) ===
        function cmgOperation2(localValue14)
          local workingValue7, text9
          if localValue14 then
            workingValue7 = #localValue14
            if workingValue7 > 2 then
              workingValue7 = #localValue14
              if workingValue7 <= 50 then
                text5.name = localValue14
            end
          end
          else
            workingValue7 = notify
            text9 = "~r~Invalid name. Must be between 3 and 50 characters."
            -- Beginner: Show a notification to the player.
            workingValue7(text9)
          end
        end
        serverEventCall(text11, text15, cmgOperation2)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, text8, dataCollection2, stringHelper3, text14)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Start Point"
    text8 = ""
    dataCollection2 = {}
    stringHelper3 = text5.startPosition
    if stringHelper3 then
      stringHelper3 = "~g~Configured"
      if stringHelper3 then
        goto continueAtStep42
      end
    end
    stringHelper3 = "~r~Not Configured"
    ::continueAtStep42::
    dataCollection2.RightLabel = stringHelper3
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: text14; parameters: localValue13, localValue23, localValue32) ===
    function text14(localValue13, localValue23, localValue32)
      local serverEventCall
      if localValue32 then
        serverEventCall = CMG
        serverEventCall = serverEventCall.getPlayerCoords
        -- Beginner: result below is playerCoords.
        serverEventCall = serverEventCall()
        text5.startPosition = serverEventCall
      end
    end
    localValue12(localValue22, text8, dataCollection2, stringHelper3, text14)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "End Point"
    text8 = ""
    dataCollection2 = {}
    stringHelper3 = text5.endPosition
    if stringHelper3 then
      stringHelper3 = "~g~Configured"
      if stringHelper3 then
        goto continueAtStep59
      end
    end
    stringHelper3 = "~r~Not Configured"
    ::continueAtStep59::
    dataCollection2.RightLabel = stringHelper3
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: text14; parameters: localValue13, localValue23, localValue32) ===
    function text14(localValue13, localValue23, localValue32)
      local serverEventCall
      if localValue32 then
        serverEventCall = CMG
        serverEventCall = serverEventCall.getPlayerCoords
        -- Beginner: result below is playerCoords.
        serverEventCall = serverEventCall()
        text5.endPosition = serverEventCall
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, text8, dataCollection2, stringHelper3, text14)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Checkpoints"
    localValue12(localValue22)
    localValue12 = CMG
    localValue12 = localValue12.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue12 = localValue12()
    localValue22 = pairs
    text8 = text5.checkpoints
    localValue22, text8, dataCollection2, stringHelper3 = localValue22(text8)
    for text14, workingValue14 in localValue22, text8, dataCollection2, stringHelper3 do
      mathHelper2 = math
      mathHelper2 = mathHelper2.floor
      text17 = workingValue14.position
      text17 = localValue12 - text17
      text17 = #text17
      mathHelper2 = mathHelper2(text17)
      text17 = RageUI
      text17 = text17.ButtonWithStyle
      stringHelper4 = string
      stringHelper4 = stringHelper4.format
      stringHelper = "%s. Checkpoint"
      dataCollection = text14
      stringHelper4 = stringHelper4(stringHelper, dataCollection)
      stringHelper = ""
      dataCollection = {}
      mathHelper = string
      mathHelper = mathHelper.format
      number5 = "%sm away"
      serverId = mathHelper2
      mathHelper = mathHelper(number5, serverId)
      dataCollection.RightLabel = mathHelper
      mathHelper = true

      -- === HELPER FUNCTION (decompiler name: number5; parameters: localValue13, localValue23, localValue32) ===
      function number5(localValue13, localValue23, localValue32)
        local serverEventCall, text11, text15, cmgOperation2
        if localValue23 then
          serverEventCall = drawNativeNotification
          text11 = [[
Press ~INPUT_FRONTEND_ACCEPT~ to edit the radius.
Press ~INPUT_FRONTEND_DELETE~ to remove this checkpoint.]]
          -- Beginner: Show a GTA-style notification/help prompt.
          serverEventCall(text11)
          serverEventCall = IsControlJustPressed
          text11 = 0
          text15 = 214
          serverEventCall = serverEventCall(text11, text15)
          if serverEventCall then
            serverEventCall = table
            serverEventCall = serverEventCall.remove
            text11 = text5.checkpoints
            text15 = text14
            serverEventCall(text11, text15)
            serverEventCall = notify
            text11 = "~r~Checkpoint removed."
            -- Beginner: Show a notification to the player.
            serverEventCall(text11)
          end
        end
        if localValue32 then
          serverEventCall = CMG
          serverEventCall = serverEventCall.clientPrompt
          text11 = "Enter Radius (5.0 - 20.0)"
          text15 = ""

          -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue14) ===
          function cmgOperation2(localValue14)
            local workingValue7, text9, stringHelper2, text12, workingValue13
            workingValue7 = tonumber
            text9 = localValue14
            workingValue7 = workingValue7(text9)
            if workingValue7 and workingValue7 >= 10.0 and workingValue7 <= 20.0 then
              text9 = text5.checkpoints
              stringHelper2 = text14
              text9 = text9[stringHelper2]
              stringHelper2 = workingValue7 + 0.0
              text9.radius = stringHelper2
              text9 = notify
              stringHelper2 = string
              stringHelper2 = stringHelper2.format
              text12 = "~g~Checkpoint radius set to %s."
              workingValue13 = workingValue7
              stringHelper2, text12, workingValue13 = stringHelper2(text12, workingValue13)
              text9(stringHelper2, text12, workingValue13)
            else
              text9 = notify
              stringHelper2 = "~r~Invalid radius. Must be between 5.0 and 20.0."
              -- Beginner: Show a notification to the player.
              text9(stringHelper2)
            end
          end
          serverEventCall(text11, text15, cmgOperation2)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      text17(stringHelper4, stringHelper, dataCollection, mathHelper, number5)
    end
    localValue22 = RageUI
    localValue22 = localValue22.Button
    text8 = "~b~Add Checkpoint"
    dataCollection2 = ""
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: text14; parameters: localValue13, localValue23, localValue32) ===
    function text14(localValue13, localValue23, localValue32)
      local serverEventCall, text11, text15, cmgOperation2
      if localValue32 then
        serverEventCall = table
        serverEventCall = serverEventCall.insert
        text11 = text5.checkpoints
        text15 = {}
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.getPlayerCoords
        -- Beginner: result below is playerCoords.
        cmgOperation2 = cmgOperation2()
        text15.position = cmgOperation2
        text15.radius = 10.0
        serverEventCall(text11, text15)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(text8, dataCollection2, stringHelper3, text14)
    localValue22 = workingValue2
    localValue22()
  end
  localValue1(localValue2, localValue3, workingValue10, workingValue11, workingValue12)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue10 = "customraces"
  workingValue11 = "selected"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue10, workingValue11)
  localValue3 = true
  workingValue10 = true
  workingValue11 = true

  -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
  function workingValue12()
    local localValue12, localValue22, text8, dataCollection2, stringHelper3, text14, workingValue14, mathHelper2, text17
    localValue12 = assert
    localValue22 = text10
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "~g~Setup Race"
    text8 = ""
    dataCollection2 = true

    -- === HELPER FUNCTION: stringHelper3() ===
    function stringHelper3()
      local localValue13, localValue23
    end
    text14 = RMenu
    workingValue14 = text14
    text14 = text14.Get
    mathHelper2 = "customraces"
    text17 = "selectedsetup"
    text14, workingValue14, mathHelper2, text17 = text14(workingValue14, mathHelper2, text17)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, text8, dataCollection2, stringHelper3, text14, workingValue14, mathHelper2, text17)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "~r~Delete Race"
    text8 = ""
    dataCollection2 = true

    -- === HELPER FUNCTION: stringHelper3(localValue13, localValue23, localValue32) ===
    function stringHelper3(localValue13, localValue23, localValue32)
      local serverEventCall, text11, text15
      if localValue32 then
        serverEventCall = TriggerServerEvent
        text11 = "18d292e790"
        text15 = text10.id
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "18d292e790".
        serverEventCall(text11, text15)
        serverEventCall = RageUI
        serverEventCall = serverEventCall.GoBack
        serverEventCall()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, text8, dataCollection2, stringHelper3)
  end
  localValue1(localValue2, localValue3, workingValue10, workingValue11, workingValue12)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue10 = "customraces"
  workingValue11 = "selectedsetup"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue10, workingValue11)
  localValue3 = true
  workingValue10 = true
  workingValue11 = true

  -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
  function workingValue12()
    local localValue12, localValue22, text8, dataCollection2, stringHelper3, text14
    localValue12 = assert
    localValue22 = text10
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Number of Laps"
    text8 = ""
    dataCollection2 = {}
    stringHelper3 = tostring
    text14 = rageUiOperation2.numLaps
    stringHelper3 = stringHelper3(text14)
    dataCollection2.RightLabel = stringHelper3
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: text14; parameters: localValue13, localValue23, localValue32) ===
    function text14(localValue13, localValue23, localValue32)
      local serverEventCall, text11, text15, cmgOperation2
      if localValue32 then
        serverEventCall = CMG
        serverEventCall = serverEventCall.clientPrompt
        text11 = "Enter Number of Laps"
        text15 = ""

        -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue14) ===
        function cmgOperation2(localValue14)
          local workingValue7, text9, stringHelper2
          workingValue7 = tonumber
          text9 = localValue14
          workingValue7 = workingValue7(text9)
          if workingValue7 and workingValue7 > 0 and workingValue7 <= 10 then
            rageUiOperation2.numLaps = workingValue7
          else
            text9 = notify
            stringHelper2 = "~r~Invalid number of laps. Must between 1 and 10."
            -- Beginner: Show a notification to the player.
            text9(stringHelper2)
          end
        end
        serverEventCall(text11, text15, cmgOperation2)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, text8, dataCollection2, stringHelper3, text14)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "~g~Start Race"
    text8 = ""
    dataCollection2 = true

    -- === HELPER FUNCTION: stringHelper3(localValue13, localValue23, localValue32) ===
    function stringHelper3(localValue13, localValue23, localValue32)
      local serverEventCall, text11, text15, cmgOperation2
      if localValue32 then
        serverEventCall = TriggerServerEvent
        text11 = "459898e6ab"
        text15 = text10.id
        cmgOperation2 = rageUiOperation2.numLaps
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "459898e6ab".
        serverEventCall(text11, text15, cmgOperation2)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, text8, dataCollection2, stringHelper3)
  end
  localValue1(localValue2, localValue3, workingValue10, workingValue11, workingValue12)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue10 = "customraces"
  workingValue11 = "manage"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue10, workingValue11)
  localValue3 = true
  workingValue10 = true
  workingValue11 = true

  -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
  function workingValue12()
    local localValue12, localValue22, text8, dataCollection2, stringHelper3, text14, workingValue14, mathHelper2, text17, stringHelper4, stringHelper, dataCollection, mathHelper, number5, serverId, text2
    localValue12 = text13
    if not localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Visible
      localValue22 = RMenu
      text8 = localValue22
      localValue22 = localValue22.Get
      dataCollection2 = "customraces"
      stringHelper3 = "mainmenu"
      -- Beginner: result below is menu.
      localValue22 = localValue22(text8, dataCollection2, stringHelper3)
      text8 = true
      localValue12(localValue22, text8)
      return
    end
    localValue12 = text13.hasStarted
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Button
      localValue22 = "~r~Stop Race"
      text8 = "Stops the race, submitting any winners."
      dataCollection2 = true

      -- === HELPER FUNCTION: stringHelper3(localValue13, localValue23, localValue32) ===
      function stringHelper3(localValue13, localValue23, localValue32)
        local serverEventCall, text11
        if localValue32 then
          serverEventCall = TriggerServerEvent
          text11 = "cc914ff479"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cc914ff479".
          serverEventCall(text11)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, text8, dataCollection2, stringHelper3)
    else
      localValue12 = RageUI
      localValue12 = localValue12.Button
      localValue22 = "~g~Fully Start"
      text8 = "Fully starts the race, including all players inside a vehicle inside of the start area"
      dataCollection2 = true

      -- === HELPER FUNCTION: stringHelper3(localValue13, localValue23, localValue32) ===
      function stringHelper3(localValue13, localValue23, localValue32)
        local serverEventCall, text11
        if localValue32 then
          serverEventCall = TriggerServerEvent
          text11 = "2bcb53bfd6"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2bcb53bfd6".
          serverEventCall(text11)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, text8, dataCollection2, stringHelper3)
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~y~Suitable Players"
      localValue12(localValue22)
      localValue12 = pairs
      localValue22 = GetActivePlayers
      localValue22, text8, dataCollection2, stringHelper3, text14, workingValue14, mathHelper2, text17, stringHelper4, stringHelper, dataCollection, mathHelper, number5, serverId, text2 = localValue22()
      localValue12, localValue22, text8, dataCollection2 = localValue12(localValue22, text8, dataCollection2, stringHelper3, text14, workingValue14, mathHelper2, text17, stringHelper4, stringHelper, dataCollection, mathHelper, number5, serverId, text2)
      for stringHelper3, text14 in localValue12, localValue22, text8, dataCollection2 do
        workingValue14 = GetPlayerPed
        mathHelper2 = text14
        -- Beginner: result below is playerPed.
        workingValue14 = workingValue14(mathHelper2)
        if 0 ~= workingValue14 then
          mathHelper2 = GetVehiclePedIsUsing
          text17 = workingValue14
          mathHelper2 = mathHelper2(text17)
          if 0 ~= mathHelper2 then
            mathHelper2 = GetEntityCoords
            text17 = workingValue14
            -- Beginner: result below is entityCoords.
            mathHelper2 = mathHelper2(text17)
            text17 = text13.config
            text17 = text17.startPosition
            text17 = mathHelper2 - text17
            text17 = #text17
            stringHelper4 = cmgOperation.startAreaRadius
            if text17 < stringHelper4 then
              text17 = RageUI
              text17 = text17.ButtonWithStyle
              stringHelper4 = CMG
              stringHelper4 = stringHelper4.getPlayerName
              stringHelper = text14
              stringHelper4 = stringHelper4(stringHelper)
              stringHelper = ""
              dataCollection = {}
              mathHelper = string
              mathHelper = mathHelper.format
              number5 = "Temp ID: %s"
              serverId = GetPlayerServerId
              text2 = text14
              serverId, text2 = serverId(text2)
              mathHelper = mathHelper(number5, serverId, text2)
              dataCollection.RightLabel = mathHelper
              mathHelper = true

              -- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
              function number5()
                local localValue13, localValue23
              end
              -- Beginner: Draw a selectable RageUI menu button.
              text17(stringHelper4, stringHelper, dataCollection, mathHelper, number5)
            end
          end
        end
      end
    end
  end
  localValue1(localValue2, localValue3, workingValue10, workingValue11, workingValue12)
end
rageUiOperation(text, workingValue3, workingValue4, text3)
rageUiOperation = RegisterNetEvent
text = "3c011b6464"
-- Beginner: this function handles network event "3c011b6464".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2
  text7 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3c011b6464".
rageUiOperation(text, workingValue3)
rageUiOperation = RegisterNetEvent
text = "f70b0b84ff"
-- Beginner: this function handles network event "f70b0b84ff".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, localValue3, workingValue10
  localValue2 = table
  localValue2 = localValue2.insert
  localValue3 = text7
  workingValue10 = localValue1
  localValue2(localValue3, workingValue10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f70b0b84ff".
rageUiOperation(text, workingValue3)
rageUiOperation = RegisterNetEvent
text = "21f1b1eb3e"
-- Beginner: this function handles network event "21f1b1eb3e".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, localValue3, workingValue10, workingValue11, workingValue12, number15, position, number16, number17
  localValue2 = pairs
  localValue3 = text7
  localValue2, localValue3, workingValue10, workingValue11 = localValue2(localValue3)
  for workingValue12, number15 in localValue2, localValue3, workingValue10, workingValue11 do
    position = number15.id
    if position == localValue1 then
      position = table
      position = position.remove
      number16 = text7
      number17 = workingValue12
      position(number16, number17)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "21f1b1eb3e".
rageUiOperation(text, workingValue3)

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3, workingValue10, workingValue11, workingValue12, number15, position, number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4, stateFlag5, stateFlag6
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = localValue1.config
  localValue3 = localValue3.startPosition
  localValue3 = localValue2 - localValue3
  localValue3 = #localValue3
  workingValue10 = DrawMarker
  workingValue11 = 1
  workingValue12 = localValue1.config
  workingValue12 = workingValue12.startPosition
  workingValue12 = workingValue12.x
  number15 = localValue1.config
  number15 = number15.startPosition
  number15 = number15.y
  position = localValue1.config
  position = position.startPosition
  position = position.z
  position = position - 5.0
  number16 = 0.0
  number17 = 0.0
  number = 0.0
  number2 = 0.0
  number3 = 0.0
  number4 = 0.0
  number6 = cmgOperation.startAreaRadius
  number6 = number6 * 2.0
  number7 = cmgOperation.startAreaRadius
  number7 = number7 * 2.0
  number8 = 8.0
  number9 = 255
  number10 = 255
  stateFlag = 0
  stateFlag2 = 200
  number11 = false
  stateFlag3 = false
  number12 = 2
  number13 = false
  stateFlag4 = nil
  stateFlag5 = nil
  stateFlag6 = false
  workingValue10(workingValue11, workingValue12, number15, position, number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4, stateFlag5, stateFlag6)
  workingValue10 = cmgOperation.startAreaRadius
  if localValue3 < workingValue10 then
    workingValue10 = drawNativeText
    workingValue11 = "~y~Waiting for host to start the game..."
    -- Beginner: Draw GTA-style text on screen.
    workingValue10(workingValue11)
  end
end

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local localValue3, workingValue10, workingValue11, workingValue12, number15, position, number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4, stateFlag5
  localValue3 = localValue1.config
  localValue3 = localValue3.endPosition
  if localValue3 then
    localValue3 = DrawMarker
    workingValue10 = 4
    workingValue11 = localValue1.config
    workingValue11 = workingValue11.endPosition
    workingValue11 = workingValue11.x
    workingValue12 = localValue1.config
    workingValue12 = workingValue12.endPosition
    workingValue12 = workingValue12.y
    number15 = localValue1.config
    number15 = number15.endPosition
    number15 = number15.z
    number15 = number15 + 1.5
    position = 0.0
    number16 = 0.0
    number17 = 0.0
    number = 0.0
    number2 = 0.0
    number3 = 0.0
    number4 = 5.0
    number6 = 5.0
    number7 = 5.0
    number8 = 255
    number9 = 0
    number10 = 0
    stateFlag = 255
    stateFlag2 = false
    number11 = false
    stateFlag3 = 2
    number12 = false
    number13 = nil
    stateFlag4 = nil
    stateFlag5 = false
    localValue3(workingValue10, workingValue11, workingValue12, number15, position, number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4, stateFlag5)
  end
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  workingValue10 = localValue1.config
  workingValue10 = workingValue10.endPosition
  workingValue10 = localValue3 - workingValue10
  workingValue10 = #workingValue10
  if workingValue10 < 10.0 then
    workingValue10 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workingValue10 = workingValue10()
    workingValue11 = localValue2.lastSentCheckpointEventTime
    workingValue11 = workingValue10 - workingValue11
    workingValue12 = cmgOperation.delayBetweenEventsMsec
    if workingValue11 > workingValue12 then
      workingValue11 = TriggerServerEvent
      workingValue12 = "ca5022ad11"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ca5022ad11".
      workingValue11(workingValue12)
      localValue2.lastSentCheckpointEventTime = workingValue10
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2, localValue3) ===
function workingValue3(localValue1, localValue2, localValue3)
  local workingValue10, workingValue11, workingValue12, number15, position, number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4, stateFlag5, stateFlag6, number14, stateFlag7, stateFlag8
  workingValue10 = localValue1.config
  workingValue10 = workingValue10.checkpoints
  workingValue11 = localValue3.checkpointIndex
  workingValue10 = workingValue10[workingValue11]
  workingValue11 = assert
  workingValue12 = workingValue10
  workingValue11(workingValue12)
  workingValue11 = CMG
  workingValue11 = workingValue11.getPlayerCoords
  -- Beginner: result below is playerCoords.
  workingValue11 = workingValue11()
  workingValue12 = norm
  number15 = workingValue10.position
  number15 = workingValue11 - number15
  workingValue12 = workingValue12(number15)
  number15 = DrawMarker
  position = 20
  number16 = workingValue11.x
  number17 = workingValue11.y
  number = workingValue11.z
  number = number + 0.75
  number2 = workingValue12.x
  number3 = workingValue12.y
  number4 = workingValue12.z
  number6 = -90.0
  number7 = 0.0
  number8 = 0.0
  number9 = 1.0
  number10 = 1.0
  stateFlag = 1.0
  stateFlag2 = 255
  number11 = 255
  stateFlag3 = 0
  number12 = 100
  number13 = false
  stateFlag4 = false
  stateFlag5 = 2
  stateFlag6 = false
  number14 = nil
  stateFlag7 = nil
  stateFlag8 = false
  number15(position, number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4, stateFlag5, stateFlag6, number14, stateFlag7, stateFlag8)
  number15 = DrawMarker
  position = 1
  number16 = workingValue10.position
  number16 = number16.x
  number17 = workingValue10.position
  number17 = number17.y
  number = workingValue10.position
  number = number.z
  number = number - 2.0
  number2 = 0.0
  number3 = 0.0
  number4 = 0.0
  number6 = 0.0
  number7 = 0.0
  number8 = 0.0
  number9 = 5.0
  number10 = 5.0
  stateFlag = 6.5
  stateFlag2 = 255
  number11 = 255
  stateFlag3 = 0
  number12 = 100
  number13 = false
  stateFlag4 = false
  stateFlag5 = 2
  stateFlag6 = false
  number14 = nil
  stateFlag7 = nil
  stateFlag8 = false
  number15(position, number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4, stateFlag5, stateFlag6, number14, stateFlag7, stateFlag8)
  number15 = CMG
  number15 = number15.getPlayerCoords
  -- Beginner: result below is playerCoords.
  number15 = number15()
  position = workingValue10.position
  position = number15 - position
  position = #position
  number16 = workingValue10.radius
  if position < number16 then
    position = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    position = position()
    number16 = localValue2.lastSentCheckpointEventTime
    number16 = position - number16
    number17 = cmgOperation.delayBetweenEventsMsec
    if number16 > number17 then
      number16 = TriggerServerEvent
      number17 = "352973cadc"
      number = localValue3.checkpointIndex
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "352973cadc".
      number16(number17, number)
      localValue2.lastSentCheckpointEventTime = position
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, workingValue10, workingValue11, workingValue12, number15, position, number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4, stateFlag5, stateFlag6, number14, stateFlag7, stateFlag8, stateFlag9
  localValue2 = pairs
  localValue3 = localValue1.config
  localValue3 = localValue3.checkpoints
  localValue2, localValue3, workingValue10, workingValue11 = localValue2(localValue3)
  for workingValue12, number15 in localValue2, localValue3, workingValue10, workingValue11 do
    position = DrawMarker
    number16 = 1
    number17 = number15.position
    number17 = number17.x
    number = number15.position
    number = number.y
    number2 = number15.position
    number2 = number2.z
    number2 = number2 - 2.0
    number3 = 0.0
    number4 = 0.0
    number6 = 0.0
    number7 = 0.0
    number8 = 0.0
    number9 = 0.0
    number10 = 5.0
    stateFlag = 5.0
    stateFlag2 = 6.5
    number11 = 255
    stateFlag3 = 255
    number12 = 0
    number13 = 100
    stateFlag4 = false
    stateFlag5 = false
    stateFlag6 = 2
    number14 = false
    stateFlag7 = nil
    stateFlag8 = nil
    stateFlag9 = false
    position(number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11, stateFlag3, number12, number13, stateFlag4, stateFlag5, stateFlag6, number14, stateFlag7, stateFlag8, stateFlag9)
  end
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3, workingValue10, workingValue11, workingValue12, number15, position, number16, number17, number, number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11
  localValue3 = CMG
  localValue3 = localValue3.getLocalPlayerSrc
  localValue3 = localValue3()
  workingValue10 = localValue1.players
  workingValue10 = workingValue10[localValue3]
  if not workingValue10 then
    workingValue11 = workingValue4
    workingValue12 = localValue1
    workingValue11(workingValue12)
    return
  end
  workingValue11 = {}
  workingValue12 = pairs
  number15 = localValue1.players
  workingValue12, number15, position, number16 = workingValue12(number15)
  for number17, number in workingValue12, number15, position, number16 do
    number.distanceToNextCheckpoint = 0.0
    number2 = localValue1.config
    number2 = number2.checkpoints
    number3 = number.checkpointIndex
    number2 = number2[number3]
    if number2 then
      number3 = GetPlayerFromServerId
      number4 = number17
      -- Beginner: result below is playerIndex.
      number3 = number3(number4)
      if number3 >= 0 then
        number4 = GetPlayerPed
        number6 = number3
        -- Beginner: result below is playerPed.
        number4 = number4(number6)
        number6 = GetEntityCoords
        number7 = number4
        number8 = true
        -- Beginner: result below is entityCoords.
        number6 = number6(number7, number8)
        number7 = number2.position
        number6 = number6 - number7
        number6 = #number6
        number.distanceToNextCheckpoint = number6
      end
    end
    number3 = table
    number3 = number3.insert
    number4 = workingValue11
    number6 = number
    number3(number4, number6)
  end
  workingValue12 = cmgOperation.sortPlayers
  number15 = workingValue11
  workingValue12(number15)
  workingValue12 = "N/A"
  number15 = pairs
  position = workingValue11
  number15, position, number16, number17 = number15(position)
  for number, number2 in number15, position, number16, number17 do
    number3 = number2.source
    if number3 == localValue3 then
      number3 = tostring
      number4 = number
      number3 = number3(number4)
      workingValue12 = number3
      break
    end
  end
  number15 = localValue2.timers
  number15 = number15.push
  position = "~g~POSITION"
  number16 = workingValue12
  number15(position, number16)
  number15 = workingValue10.finishGameTime
  if not number15 then
    number15 = GetNetworkTime
    -- Beginner: result below is networkTime.
    number15 = number15()
  end
  position = math
  position = position.floor
  number16 = localValue1.startTime
  number16 = number15 - number16
  number16 = number16 / 1000
  position = position(number16)
  number16 = position % 60
  number17 = math
  number17 = number17.floor
  number = position / 60
  number17 = number17(number)
  number = localValue2.timers
  number = number.push
  number2 = "~y~TIME"
  number3 = string
  number3 = number3.format
  number4 = "%s:%s"
  number6 = string
  number6 = number6.rpad
  number7 = tostring
  number8 = number17
  number7 = number7(number8)
  number8 = 2
  number9 = "0"
  number6 = number6(number7, number8, number9)
  number7 = string
  number7 = number7.rpad
  number8 = tostring
  number9 = number16
  number8 = number8(number9)
  number9 = 2
  number10 = "0"
  number7, number8, number9, number10, stateFlag, stateFlag2, number11 = number7(number8, number9, number10)
  number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11 = number3(number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11)
  number(number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11)
  number = localValue2.timers
  number = number.push
  number2 = "~y~CHECKPOINT"
  number3 = string
  number3 = number3.format
  number4 = "%s/%s"
  number6 = workingValue10.checkpointIndex
  number6 = number6 - 1
  number7 = localValue1.config
  number7 = number7.checkpoints
  number7 = #number7
  number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11 = number3(number4, number6, number7)
  number(number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11)
  number = localValue1.numLaps
  if number > 1 then
    number = localValue2.timers
    number = number.push
    number2 = "~y~LAP"
    number3 = string
    number3 = number3.format
    number4 = "%s/%s"
    number6 = workingValue10.numLapsDone
    number7 = localValue1.numLaps
    number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11 = number3(number4, number6, number7)
    number(number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11)
  end
  number = workingValue10.finishGameTime
  if number then
    number = drawNativeText
    number2 = "~g~You have finished the game. Please wait."
    -- Beginner: Draw GTA-style text on screen.
    number(number2)
    return
  end
  number = workingValue10.checkpointIndex
  number2 = localValue1.config
  number2 = number2.checkpoints
  number2 = #number2
  if number > number2 then
    number = text
    number2 = localValue1
    number3 = localValue2
    number(number2, number3)
  else
    number = workingValue3
    number2 = localValue1
    number3 = localValue2
    number4 = workingValue10
    number(number2, number3, number4)
  end
  number = DisableControlAction
  number2 = 0
  number3 = 23
  number4 = true
  number(number2, number3, number4)
  number = DisableControlAction
  number2 = 0
  number3 = 75
  number4 = true
  number(number2, number3, number4)
  number = IsDisabledControlJustPressed
  number2 = 0
  number3 = 23
  number = number(number2, number3)
  if number then
    number = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    number = number()
    number2 = GetVehiclePedIsUsing
    number3 = number
    number2 = number2(number3)
    if number2 and 0 ~= number2 then
      number3 = SetVehicleFixed
      number4 = number2
      number3(number4)
      number3 = SetVehicleDeformationFixed
      number4 = number2
      number3(number4)
      number3 = SetVehicleUndriveable
      number4 = number2
      number6 = false
      number3(number4, number6)
      number3 = SetVehicleEngineHealth
      number4 = number2
      number6 = 1000.0
      number3(number4, number6)
      number3 = SetVehicleEngineOn
      number4 = number2
      number6 = true
      number7 = true
      number8 = false
      number3(number4, number6, number7, number8)
      number3 = localValue1.config
      number3 = number3.checkpoints
      number4 = workingValue10.checkpointIndex
      number4 = number4 - 1
      number3 = number3[number4]
      if number3 then
        number4 = SetEntityCoords
        number6 = number2
        number7 = number3.position
        number7 = number7.x
        number8 = number3.position
        number8 = number8.y
        number9 = number3.position
        number9 = number9.z
        number9 = number9 + 2.0
        number10 = false
        stateFlag = false
        stateFlag2 = false
        number11 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        number4(number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11)
        number4 = SetEntityHeading
        number6 = number2
        number7 = 0.0
        -- Beginner: Change the direction an entity is facing.
        number4(number6, number7)
        number4 = notify
        number6 = "~g~Vehicle repaired and reset to last checkpoint."
        -- Beginner: Show a notification to the player.
        number4(number6)
      else
        number4 = notify
        number6 = "~r~No checkpoint found to reset."
        number4(number6)
      end
    else
      number3 = notify
      number4 = "~r~You must be in a vehicle to use reset."
      -- Beginner: Show a notification to the player.
      number3(number4)
    end
  end
  number = rageUiOperation3
  if number then
    number = BeginScaleformMovieMethod
    number2 = rageUiOperation3
    number3 = "CLEAR_ALL"
    number(number2, number3)
    number = EndScaleformMovieMethod
    number()
    number = BeginScaleformMovieMethod
    number2 = rageUiOperation3
    number3 = "SET_CLEAR_SPACE"
    number(number2, number3)
    number = ScaleformMovieMethodAddParamInt
    number2 = 200
    number(number2)
    number = EndScaleformMovieMethod
    number()
    number = BeginScaleformMovieMethod
    number2 = rageUiOperation3
    number3 = "SET_DATA_SLOT"
    number(number2, number3)
    number = ScaleformMovieMethodAddParamInt
    number2 = 0
    number(number2)
    number = _ENV
    number2 = "PushScaleformMovieMethodParameterButtonName"
    number = number[number2]
    number2 = GetControlInstructionalButton
    number3 = 0
    number4 = 23
    number6 = true
    number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11 = number2(number3, number4, number6)
    number(number2, number3, number4, number6, number7, number8, number9, number10, stateFlag, stateFlag2, number11)
    number = PushScaleformMovieMethodParameterString
    number2 = "Reset Vehicle"
    number(number2)
    number = EndScaleformMovieMethod
    number()
    number = BeginScaleformMovieMethod
    number2 = rageUiOperation3
    number3 = "DRAW_INSTRUCTIONAL_BUTTONS"
    number(number2, number3)
    number = ScaleformMovieMethodAddParamInt
    number2 = 0
    number(number2)
    number = EndScaleformMovieMethod
    number()
    number = DrawScaleformMovieFullscreen
    number2 = rageUiOperation3
    number3 = 255
    number4 = 255
    number6 = 255
    number7 = 255
    number8 = 0
    number(number2, number3, number4, number6, number7, number8)
  end
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local localValue3, workingValue10, workingValue11
  localValue3 = localValue1.hasStarted
  if not localValue3 then
    localValue3 = rageUiOperation
    workingValue10 = localValue1
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    localValue3(workingValue10)
  else
    localValue3 = text3
    workingValue10 = localValue1
    workingValue11 = localValue2
    localValue3(workingValue10, workingValue11)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3
  localValue1 = text13
  if localValue1 then
    localValue1 = text16
    if localValue1 then
      localValue1 = text16.timers
      localValue1 = localValue1.reset
      localValue1()
      localValue1 = text4
      localValue2 = text13
      localValue3 = text16
      localValue1(localValue2, localValue3)
      localValue1 = text16.timers
      localValue1 = localValue1.draw
      localValue1()
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, workingValue10, workingValue11, workingValue12, number15, position, number16, number17, number, number2, number3, number4, number6
  localValue2 = AddBlipForCoord
  localValue3 = localValue1.config
  localValue3 = localValue3.startPosition
  localValue3 = localValue3.x
  workingValue10 = localValue1.config
  workingValue10 = workingValue10.startPosition
  workingValue10 = workingValue10.y
  workingValue11 = localValue1.config
  workingValue11 = workingValue11.startPosition
  workingValue11 = workingValue11.z
  -- Beginner: result below is blipHandle.
  localValue2 = localValue2(localValue3, workingValue10, workingValue11)
  localValue3 = SetBlipSprite
  workingValue10 = localValue2
  workingValue11 = 38
  localValue3(workingValue10, workingValue11)
  localValue3 = AddBlipForRadius
  workingValue10 = localValue1.config
  workingValue10 = workingValue10.startPosition
  workingValue10 = workingValue10.x
  workingValue11 = localValue1.config
  workingValue11 = workingValue11.startPosition
  workingValue11 = workingValue11.y
  workingValue12 = localValue1.config
  workingValue12 = workingValue12.startPosition
  workingValue12 = workingValue12.z
  number15 = cmgOperation.startAreaRadius
  -- Beginner: result below is blipHandle.
  localValue3 = localValue3(workingValue10, workingValue11, workingValue12, number15)
  workingValue10 = SetBlipAlpha
  workingValue11 = localValue3
  workingValue12 = 128
  workingValue10(workingValue11, workingValue12)
  workingValue10 = AddBlipForCoord
  workingValue11 = localValue1.config
  workingValue11 = workingValue11.endPosition
  workingValue11 = workingValue11.x
  workingValue12 = localValue1.config
  workingValue12 = workingValue12.endPosition
  workingValue12 = workingValue12.y
  number15 = localValue1.config
  number15 = number15.endPosition
  number15 = number15.z
  -- Beginner: result below is blipHandle.
  workingValue10 = workingValue10(workingValue11, workingValue12, number15)
  workingValue11 = SetBlipSprite
  workingValue12 = workingValue10
  number15 = 176
  workingValue11(workingValue12, number15)
  workingValue11 = {}
  workingValue12 = pairs
  number15 = localValue1.config
  number15 = number15.checkpoints
  workingValue12, number15, position, number16 = workingValue12(number15)
  for number17, number in workingValue12, number15, position, number16 do
    number2 = AddBlipForCoord
    number3 = number.position
    number3 = number3.x
    number4 = number.position
    number4 = number4.y
    number6 = number.position
    number6 = number6.z
    -- Beginner: result below is blipHandle.
    number2 = number2(number3, number4, number6)
    number3 = SetBlipScale
    number4 = number2
    number6 = 0.7
    number3(number4, number6)
    number3 = table
    number3 = number3.insert
    number4 = workingValue11
    number6 = number2
    number3(number4, number6)
  end
  workingValue12 = {}
  workingValue12.startBlip = localValue2
  workingValue12.startRadiusBlip = localValue3
  workingValue12.endBlip = workingValue10
  workingValue12.checkpointBlips = workingValue11
  number15 = CMG
  number15 = number15.createTimerBars
  -- Beginner: result below is timerBars.
  number15 = number15()
  workingValue12.timers = number15
  workingValue12.lastSentCheckpointEventTime = 0
  text16 = workingValue12
  workingValue12 = CMG
  workingValue12 = workingValue12.createThreadOnTick
  number15 = workingValue5
  position = "Custom Races"
  -- Beginner: Run a helper every game frame while this script is active.
  workingValue12(number15, position)
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3, workingValue10, workingValue11, workingValue12, number15, position, number16
  localValue2 = CMG
  localValue2 = localValue2.deleteThreadOnTick
  localValue3 = workingValue5
  localValue2(localValue3)
  localValue2 = RemoveBlip
  localValue3 = localValue1.startBlip
  localValue2(localValue3)
  localValue2 = RemoveBlip
  localValue3 = localValue1.startRadiusBlip
  localValue2(localValue3)
  localValue2 = RemoveBlip
  localValue3 = localValue1.endBlip
  localValue2(localValue3)
  localValue2 = pairs
  localValue3 = localValue1.checkpointBlips
  localValue2, localValue3, workingValue10, workingValue11 = localValue2(localValue3)
  for workingValue12, number15 in localValue2, localValue3, workingValue10, workingValue11 do
    position = RemoveBlip
    number16 = number15
    position(number16)
  end
  localValue2 = nil
  text16 = localValue2
end
eventHandler = RegisterNetEvent
text6 = "adaa6fbc31"
-- Beginner: this function handles network event "adaa6fbc31".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3
  text13 = localValue1
  localValue2 = workingValue6
  localValue3 = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "adaa6fbc31".
eventHandler(text6, workingValue9)
eventHandler = RegisterNetEvent
text6 = "95aea723be"
-- Beginner: this function handles network event "95aea723be".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2
  localValue1 = text16
  if localValue1 then
    localValue1 = workingValue8
    localValue2 = text16
    localValue1(localValue2)
  end
  localValue1 = nil
  text13 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "95aea723be".
eventHandler(text6, workingValue9)
eventHandler = RegisterNetEvent
text6 = "2bcb53bfd6"
-- Beginner: this function handles network event "2bcb53bfd6".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, workingValue10, workingValue11
  localValue2 = FreezeEntityPosition
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  workingValue10 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, workingValue10)
  localValue2 = FreezeEntityPosition
  localValue3 = GetVehiclePedIsIn
  workingValue10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue10 = workingValue10()
  workingValue11 = false
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3(workingValue10, workingValue11)
  workingValue10 = true
  localValue2(localValue3, workingValue10)
  localValue2 = CMG
  localValue2 = localValue2.showCountdownTimer
  localValue3 = 5
  localValue2(localValue3)
  localValue2 = text13
  if localValue2 then
    text13.hasStarted = true
    text13.startTime = localValue1
  end
  localValue2 = FreezeEntityPosition
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  workingValue10 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, workingValue10)
  localValue2 = FreezeEntityPosition
  localValue3 = GetVehiclePedIsIn
  workingValue10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue10 = workingValue10()
  workingValue11 = false
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3(workingValue10, workingValue11)
  workingValue10 = false
  localValue2(localValue3, workingValue10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2bcb53bfd6".
eventHandler(text6, workingValue9)
eventHandler = RegisterNetEvent
text6 = "68e67790dc"
-- Beginner: this function handles network event "68e67790dc".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2
  localValue2 = text13
  if localValue2 then
    text13.players = localValue1
  end
end
eventHandler(text6, workingValue9)
eventHandler = RegisterNetEvent
text6 = "82025c7089"
-- Beginner: this function handles network event "82025c7089".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2
  localValue2 = text13
  if localValue2 then
    localValue2 = text13.players
    localValue2[localValue1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "82025c7089".
eventHandler(text6, workingValue9)
eventHandler = RegisterNetEvent
text6 = "f9f8708d28"
-- Beginner: this function handles network event "f9f8708d28".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, workingValue10, workingValue11
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue10 = "customraces"
  workingValue11 = "manage"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue10, workingValue11)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9f8708d28".
eventHandler(text6, workingValue9)
eventHandler = RegisterNetEvent
text6 = "a17bc2ff43"
-- Beginner: this function handles network event "a17bc2ff43".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2) ===
function workingValue9(localValue1, localValue2)
  local localValue3
  localValue3 = text13
  if localValue3 then
    localValue3 = text13.players
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3.finishGameTime = localValue2
    end
  end
end
eventHandler(text6, workingValue9)
eventHandler = RegisterNetEvent
text6 = "4c236bb354"
-- Beginner: this function handles network event "4c236bb354".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2) ===
function workingValue9(localValue1, localValue2)
  local localValue3
  localValue3 = text13
  if localValue3 then
    localValue3 = text13.players
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3.checkpointIndex = localValue2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4c236bb354".
eventHandler(text6, workingValue9)
eventHandler = RegisterNetEvent
text6 = "3f414022a1"
-- Beginner: this function handles network event "3f414022a1".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2, localValue3) ===
function workingValue9(localValue1, localValue2, localValue3)
  local workingValue10, workingValue11, workingValue12, number15, position, number16, number17, number, number2, number3
  workingValue10 = text13
  if workingValue10 then
    workingValue10 = text13.players
    workingValue10 = workingValue10[localValue1]
    if workingValue10 then
      workingValue10.numLapsDone = localValue2
      workingValue10.checkpointIndex = localValue3
    end
    workingValue11 = text16
    if workingValue11 then
      workingValue11 = CMG
      workingValue11 = workingValue11.getLocalPlayerSrc
      workingValue11 = workingValue11()
      if workingValue11 == localValue1 and 1 == localValue3 then
        workingValue11 = pairs
        workingValue12 = text16.checkpointBlips
        workingValue11, workingValue12, number15, position = workingValue11(workingValue12)
        for number16, number17 in workingValue11, workingValue12, number15, position do
          number = SetBlipDisplay
          number2 = number17
          number3 = 2
          number(number2, number3)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3f414022a1".
eventHandler(text6, workingValue9)
eventHandler = RegisterNetEvent
text6 = "a595cac93f"
-- Beginner: this function handles network event "a595cac93f".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, workingValue10, workingValue11, workingValue12, number15
  localValue2 = text16
  if localValue2 then
    localValue2 = text16.checkpointBlips
    localValue2 = localValue2[localValue1]
    if localValue2 then
      localValue3 = SetBlipDisplay
      workingValue10 = localValue2
      workingValue11 = 0
      localValue3(workingValue10, workingValue11)
      localValue3 = PlaySoundFrontend
      workingValue10 = -1
      workingValue11 = "RACE_PLACED"
      workingValue12 = "HUD_AWARDS"
      number15 = false
      localValue3(workingValue10, workingValue11, workingValue12, number15)
      localValue3 = AnimpostfxPlay
      workingValue10 = "SuccessNeutral"
      workingValue11 = 0
      workingValue12 = false
      localValue3(workingValue10, workingValue11, workingValue12)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a595cac93f".
eventHandler(text6, workingValue9)
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2
  localValue1 = text13
  if localValue1 then
    localValue1 = text13.players
    localValue2 = CMG
    localValue2 = localValue2.getLocalPlayerSrc
    localValue2 = localValue2()
    localValue1 = localValue1[localValue2]
    if localValue1 then
      localValue1 = true
      return localValue1
    end
  end
  localValue1 = false
  return localValue1
end
eventHandler.isInCustomRace = text6
