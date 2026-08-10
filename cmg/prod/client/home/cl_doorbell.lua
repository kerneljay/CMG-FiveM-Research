--[[
    Beginner Guide: cl_doorbell.lua
    ===============================

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
    BEGINNER GUIDE — Doorbell
    =========================

    File: cmg/prod/client/home/cl_doorbell.lua
    Purpose: This file contains housing/home gameplay.

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
      * cfg/homes

    Network/hash identifiers found: 6
      They are intentionally left unchanged because matching server code may use them.
      * e16b232b96
      * 883e3b0778
      * 234e1fca14
      * 290823ad62
      * 44db557297
      * 4aecf540ff

    Example player-facing text in this file:
      * Main Menu

]]
local cmgCall, flag2, flag3, flag4, vector3Builder, numberValue, dataTable2, numberValue2, cmgCall3, eventRegistration, textValue, textValue2, rageUiCall, textValue3, textValue5, rageUiCall2, rageUiCall3, rageUiCall4
cmgCall = Wait
flag2 = 0
cmgCall(flag2)
cmgCall = CMG
cmgCall = cmgCall.loadModule
flag2 = "cfg/homes"
-- Beginner: result below is config.
cmgCall = cmgCall(flag2)
flag2 = false
flag3 = false
flag4 = false
vector3Builder = vector3
numberValue = 0.0
dataTable2 = 0.0
numberValue2 = 0.0
vector3Builder = vector3Builder(numberValue, dataTable2, numberValue2)
numberValue = 0
dataTable2 = {}
numberValue2 = nil
cmgCall3 = RegisterNetEvent
eventRegistration = "e16b232b96"
-- Beginner: this function handles network event "e16b232b96".
function textValue(arg1)
  local arg2, textValue7, dataTable, flag5, textValue8, textValue10
  arg2 = CMG
  arg2 = arg2.notifyPicture
  textValue7 = "polnotification"
  dataTable = "doorbell"
  flag5 = "~y~Your doorbell motion sensor has been activated at "
  textValue8 = arg1
  textValue10 = "."
  flag5 = flag5 .. textValue8 .. textValue10
  textValue8 = "House Notification"
  textValue10 = "~r~Motion Alert"
  arg2(textValue7, dataTable, flag5, textValue8, textValue10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e16b232b96".
cmgCall3(eventRegistration, textValue)
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerHomeCustomisationButtons
eventRegistration = "Motion Doorbell"
function textValue()
  local arg1, arg2, textValue7, dataTable, flag5, textValue8, textValue10, workValue5
  arg1 = RageUI
  arg1 = arg1.Separator
  arg2 = "~y~Adds a doorbell to notify of motion outside the door"
  arg1(arg2)
  arg1 = RageUI
  arg1 = arg1.Separator
  arg2 = "~y~To view all doorbell cameras do /doorbell"
  arg1(arg2)
  arg1 = flag2
  if not arg1 then
    arg1 = RageUI
    arg1 = arg1.ButtonWithStyle
    arg2 = "Purchase"
    textValue7 = ""
    dataTable = {}
    dataTable.RightLabel = "\194\1632,000,000"
    flag5 = true
    function textValue8(arg12, arg22, arg3)
      local arg4, cmgCall2
      if arg3 then
        arg4 = TriggerServerEvent
        cmgCall2 = "883e3b0778"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "883e3b0778".
        arg4(cmgCall2)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg1(arg2, textValue7, dataTable, flag5, textValue8)
  else
    arg1 = RageUI
    arg1 = arg1.Checkbox
    arg2 = "Motion Disabled"
    textValue7 = ""
    dataTable = flag3
    flag5 = {}
    function textValue8(arg12, arg22, arg3, arg4)
      local cmgCall2, rageUiCall5, serverEventCall2, textValue11, dataTable3, flag7
      if arg3 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.isInHouse
        cmgCall2, rageUiCall5 = cmgCall2()
        if cmgCall2 and rageUiCall5 then
          serverEventCall2 = TriggerServerEvent
          textValue11 = "234e1fca14"
          dataTable3 = rageUiCall5
          flag7 = arg4
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "234e1fca14".
          serverEventCall2(textValue11, dataTable3, flag7)
        end
      end
    end
    function textValue10()
      local arg12, arg22
    end
    function workValue5()
      local arg12, arg22
    end
    -- Beginner: Draw a RageUI checkbox.
    arg1(arg2, textValue7, dataTable, flag5, textValue8, textValue10, workValue5)
  end
end
cmgCall3(eventRegistration, textValue)
cmgCall3 = RegisterNetEvent
eventRegistration = "290823ad62"
-- Beginner: this function handles network event "290823ad62".
function textValue(arg1, arg2)
  flag2 = arg1
  flag3 = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "290823ad62".
cmgCall3(eventRegistration, textValue)
-- Beginner: this function handles network event "290823ad62".
function cmgCall3()
  local arg1, arg2, textValue7, dataTable, flag5, textValue8, textValue10, workValue5
  arg1 = DisableAllControlActions
  arg2 = 0
  arg1(arg2)
  arg1 = IsDisabledControlJustReleased
  arg2 = 0
  textValue7 = 202
  arg1 = arg1(arg2, textValue7)
  if arg1 then
    arg1 = false
    return arg1
  end
  arg1 = drawNativeNotification
  arg2 = [[
Use ~INPUT_LOOK_LR~ or ~INPUT_FRONTEND_LEFT~ and ~INPUT_FRONTEND_RIGHT~ to rotate
Press ~INPUT_FRONTEND_CANCEL~ to exit]]
  -- Beginner: Show a GTA-style notification/help prompt.
  arg1(arg2)
  arg1 = GetDisabledControlNormal
  arg2 = 0
  textValue7 = 1
  arg1 = arg1(arg2, textValue7)
  arg2 = 0.02
  if not (arg1 > arg2) then
    arg2 = IsDisabledControlPressed
    textValue7 = 0
    dataTable = 190
    arg2 = arg2(textValue7, dataTable)
    if not arg2 then
      goto flow_label_45
    end
  end
  arg2 = GetCamRot
  textValue7 = numberValue
  dataTable = 2
  arg2 = arg2(textValue7, dataTable)
  textValue7 = SetCamRot
  dataTable = numberValue
  flag5 = arg2.x
  textValue8 = arg2.y
  textValue10 = arg2.z
  workValue5 = GetFrameTime
  workValue5 = workValue5()
  workValue5 = workValue5 * 100.0
  textValue10 = textValue10 - workValue5
  workValue5 = 2
  textValue7(dataTable, flag5, textValue8, textValue10, workValue5)
  ::flow_label_45::
  arg2 = -0.02
  if not (arg1 < arg2) then
    arg2 = IsDisabledControlPressed
    textValue7 = 0
    dataTable = 189
    arg2 = arg2(textValue7, dataTable)
    if not arg2 then
      goto flow_label_71
    end
  end
  arg2 = GetCamRot
  textValue7 = numberValue
  dataTable = 2
  arg2 = arg2(textValue7, dataTable)
  textValue7 = SetCamRot
  dataTable = numberValue
  flag5 = arg2.x
  textValue8 = arg2.y
  textValue10 = arg2.z
  workValue5 = GetFrameTime
  workValue5 = workValue5()
  workValue5 = workValue5 * 100.0
  textValue10 = textValue10 + workValue5
  workValue5 = 2
  textValue7(dataTable, flag5, textValue8, textValue10, workValue5)
  ::flow_label_71::
  arg2 = true
  return arg2
end
eventRegistration = RegisterNetEvent
textValue = "44db557297"
-- Beginner: this function handles network event "44db557297".
function textValue2(arg1)
  local arg2, textValue7, dataTable, flag5, textValue8, textValue10, workValue5, numberValue3, flag6, flag
  arg2 = cmgCall.homes
  arg2 = arg2[arg1]
  if not arg2 then
    return
  end
  textValue7 = flag4
  if textValue7 then
    return
  end
  textValue7 = true
  flag4 = textValue7
  textValue7 = vector3
  dataTable = arg2.entry_point
  dataTable = dataTable[1]
  flag5 = arg2.entry_point
  flag5 = flag5[2]
  textValue8 = arg2.entry_point
  textValue8 = textValue8[3]
  textValue7 = textValue7(dataTable, flag5, textValue8)
  vector3Builder = textValue7
  textValue7 = CreateCam
  dataTable = "DEFAULT_SCRIPTED_CAMERA"
  flag5 = true
  -- Beginner: result below is cameraHandle.
  textValue7 = textValue7(dataTable, flag5)
  numberValue = textValue7
  textValue7 = SetCamCoord
  dataTable = numberValue
  flag5 = vector3Builder.x
  textValue8 = vector3Builder.y
  textValue10 = vector3Builder.z
  textValue7(dataTable, flag5, textValue8, textValue10)
  textValue7 = RenderScriptCams
  dataTable = true
  flag5 = false
  textValue8 = 0
  textValue10 = false
  workValue5 = false
  textValue7(dataTable, flag5, textValue8, textValue10, workValue5)
  textValue7 = SetFocusArea
  dataTable = vector3Builder.x
  flag5 = vector3Builder.y
  textValue8 = vector3Builder.z
  textValue10 = 0.0
  workValue5 = 0.0
  numberValue3 = 0.0
  textValue7(dataTable, flag5, textValue8, textValue10, workValue5, numberValue3)
  textValue7 = "cmg_doorbell_"
  dataTable = arg1
  textValue7 = textValue7 .. dataTable
  dataTable = GetResourceKvpFloat
  flag5 = textValue7
  dataTable = dataTable(flag5)
  if dataTable and 0.0 ~= dataTable then
    flag5 = SetCamRot
    textValue8 = numberValue
    textValue10 = 0.0
    workValue5 = 0.0
    numberValue3 = dataTable
    flag6 = 2
    flag5(textValue8, textValue10, workValue5, numberValue3, flag6)
  end
  while true do
    flag5 = flag4
    if not flag5 then
      break
    end
    flag5 = cmgCall3
    flag5 = flag5()
    if not flag5 then
      break
    end
    flag5 = Wait
    textValue8 = 0
    flag5(textValue8)
  end
  flag5 = GetCamRot
  textValue8 = numberValue
  textValue10 = 2
  flag5 = flag5(textValue8, textValue10)
  textValue8 = SetResourceKvpFloat
  textValue10 = textValue7
  workValue5 = flag5.z
  textValue8(textValue10, workValue5)
  textValue8 = ClearFocus
  textValue8()
  textValue8 = DestroyCam
  textValue10 = numberValue
  workValue5 = false
  textValue8(textValue10, workValue5)
  textValue8 = RenderScriptCams
  textValue10 = false
  workValue5 = false
  numberValue3 = 0
  flag6 = false
  flag = false
  textValue8(textValue10, workValue5, numberValue3, flag6, flag)
  textValue8 = 0
  numberValue = textValue8
  textValue8 = false
  flag4 = textValue8
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "44db557297".
eventRegistration(textValue, textValue2)
eventRegistration = RegisterNetEvent
textValue = "4aecf540ff"
-- Beginner: this function handles network event "4aecf540ff".
function textValue2(arg1)
  local arg2, textValue7, dataTable, flag5, textValue8
  dataTable2 = arg1
  arg2 = RageUI
  arg2 = arg2.Visible
  textValue7 = RMenu
  dataTable = textValue7
  textValue7 = textValue7.Get
  flag5 = "motiondoorbell"
  textValue8 = "mainmenu"
  -- Beginner: result below is menu.
  textValue7 = textValue7(dataTable, flag5, textValue8)
  dataTable = true
  arg2(textValue7, dataTable)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4aecf540ff".
eventRegistration(textValue, textValue2)
eventRegistration = RMenu
eventRegistration = eventRegistration.Add
textValue = "motiondoorbell"
textValue2 = "mainmenu"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue3 = "Motion Doorbell"
textValue5 = "Main Menu"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3, rageUiCall4 = rageUiCall3()
rageUiCall, textValue3, textValue5, rageUiCall2, rageUiCall3, rageUiCall4 = rageUiCall(textValue3, textValue5, rageUiCall2, rageUiCall3, rageUiCall4)
eventRegistration(textValue, textValue2, rageUiCall, textValue3, textValue5, rageUiCall2, rageUiCall3, rageUiCall4)
eventRegistration = RMenu
eventRegistration = eventRegistration.Add
textValue = "motiondoorbell"
textValue2 = "dooroptions"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue3 = RMenu
textValue5 = textValue3
textValue3 = textValue3.Get
rageUiCall2 = "motiondoorbell"
rageUiCall3 = "mainmenu"
-- Beginner: result below is menu.
textValue3 = textValue3(textValue5, rageUiCall2, rageUiCall3)
textValue5 = "Motion Doorbell"
rageUiCall2 = "Door Options"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
rageUiCall, textValue3, textValue5, rageUiCall2, rageUiCall3, rageUiCall4 = rageUiCall(textValue3, textValue5, rageUiCall2, rageUiCall3, rageUiCall4)
eventRegistration(textValue, textValue2, rageUiCall, textValue3, textValue5, rageUiCall2, rageUiCall3, rageUiCall4)
eventRegistration = RageUI
eventRegistration = eventRegistration.CreateWhile
textValue = 1.0
textValue2 = RMenu
rageUiCall = textValue2
textValue2 = textValue2.Get
textValue3 = "motiondoorbell"
textValue5 = "mainmenu"
-- Beginner: result below is menu.
textValue2 = textValue2(rageUiCall, textValue3, textValue5)
rageUiCall = nil
function textValue3()
  local arg1, arg2, textValue7, dataTable, flag5, textValue8, textValue10
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue7 = arg2
  arg2 = arg2.Get
  dataTable = "motiondoorbell"
  flag5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue7, dataTable, flag5)
  textValue7 = true
  dataTable = false
  flag5 = true
  function textValue8()
    local arg12, arg22, arg3, arg4, cmgCall2, rageUiCall5, serverEventCall2, textValue11, dataTable3, flag7, workValue, workValue2, workValue3, textValue4, textValue6
    arg12 = pairs
    arg22 = dataTable2
    arg12, arg22, arg3, arg4 = arg12(arg22)
    for cmgCall2 in arg12, arg22, arg3, arg4 do
      rageUiCall5 = RageUI
      rageUiCall5 = rageUiCall5.ButtonWithStyle
      serverEventCall2 = cmgCall2
      textValue11 = ""
      dataTable3 = {}
      dataTable3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag7 = true
      function workValue(arg13, arg23, arg32)
        local arg42
        if arg32 then
          arg42 = cmgCall2
          numberValue2 = arg42
        end
      end
      workValue2 = RMenu
      workValue3 = workValue2
      workValue2 = workValue2.Get
      textValue4 = "motiondoorbell"
      textValue6 = "dooroptions"
      workValue2, workValue3, textValue4, textValue6 = workValue2(workValue3, textValue4, textValue6)
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall5(serverEventCall2, textValue11, dataTable3, flag7, workValue, workValue2, workValue3, textValue4, textValue6)
    end
  end
  function textValue10()
    local arg12, arg22
  end
  arg1(arg2, textValue7, dataTable, flag5, textValue8, textValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue7 = arg2
  arg2 = arg2.Get
  dataTable = "motiondoorbell"
  flag5 = "dooroptions"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue7, dataTable, flag5)
  textValue7 = true
  dataTable = false
  flag5 = true
  function textValue8()
    local arg12, arg22, arg3, arg4, cmgCall2, rageUiCall5, serverEventCall2, textValue11, dataTable3
    arg12 = numberValue2
    if not arg12 then
      return
    end
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "View Camera"
    arg3 = ""
    arg4 = {}
    arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    cmgCall2 = true
    function rageUiCall5(arg13, arg23, arg32)
      local arg42, serverEventCall, textValue9
      if arg32 then
        arg42 = RageUI
        arg42 = arg42.CloseAll
        arg42()
        arg42 = TriggerServerEvent
        serverEventCall = "44db557297"
        textValue9 = numberValue2
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "44db557297".
        arg42(serverEventCall, textValue9)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg3, arg4, cmgCall2, rageUiCall5)
    arg22 = numberValue2
    arg12 = dataTable2
    arg12 = arg12[arg22]
    arg22 = RageUI
    arg22 = arg22.Checkbox
    arg3 = "Motion Disabled"
    arg4 = ""
    cmgCall2 = arg12
    rageUiCall5 = {}
    function serverEventCall2(arg13, arg23, arg32, arg42)
      local serverEventCall, textValue9, workValue4, workValue6
      if arg32 then
        textValue9 = numberValue2
        serverEventCall = dataTable2
        serverEventCall[textValue9] = arg42
        serverEventCall = TriggerServerEvent
        textValue9 = "234e1fca14"
        workValue4 = numberValue2
        workValue6 = arg42
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "234e1fca14".
        serverEventCall(textValue9, workValue4, workValue6)
      end
    end
    function textValue11()
      local arg13, arg23
    end
    function dataTable3()
      local arg13, arg23
    end
    -- Beginner: Draw a RageUI checkbox.
    arg22(arg3, arg4, cmgCall2, rageUiCall5, serverEventCall2, textValue11, dataTable3)
  end
  function textValue10()
    local arg12, arg22
  end
  arg1(arg2, textValue7, dataTable, flag5, textValue8, textValue10)
end
eventRegistration(textValue, textValue2, rageUiCall, textValue3)