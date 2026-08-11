--[[
    LEVEL 1 BEGINNER GUIDE — Ui
    ================================

    File: cmg/prod/client/ui/cl_ui.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: NUI/menu/interface behaviour, specifically the Ui feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 26
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
local flag, numberValue4, flag3, cmgCall5, cmgCall6, textValue12, workValue5, workValue6, workValue7, cmgCall8, cmgCall, cmgCall2, cmgCall3, dataTable, textValue2, textValue3, textValue4, cmgCall4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11
flag = false
numberValue4 = 0
flag3 = false
cmgCall5 = CMG
cmgCall5 = cmgCall5.uiRegisterCallback
cmgCall6 = "onUsernameCheckValid"

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg1) ===
function textValue12(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = numberValue4
  arg2 = arg2 + 1
  numberValue4 = arg2
  arg2 = TriggerServerEvent
  arg3 = "fde18c5340"
  arg4 = arg1.name
  arg5 = numberValue4
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fde18c5340".
  arg2(arg3, arg4, arg5)
end
cmgCall5(cmgCall6, textValue12)
cmgCall5 = CMG
cmgCall5 = cmgCall5.uiRegisterCallback
cmgCall6 = "onUsernameChosen"

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg1) ===
function textValue12(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "30a2a149f7"
  arg4 = arg1.name
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "30a2a149f7".
  arg2(arg3, arg4)
end
cmgCall5(cmgCall6, textValue12)

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2, arg3, arg4
  arg1 = flag
  if not arg1 then
    return
  end
  arg1 = false
  flag = arg1
  arg1 = CMG
  arg1 = arg1.showAllDisplays
  arg2 = "username"
  arg1(arg2)
  arg1 = TriggerScreenblurFadeOut
  arg2 = 0.0
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "APP_TOGGLE"
  arg2.app = ""
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = false
  arg3 = false
  arg4 = false
  arg1(arg2, arg3, arg4)
end
cmgCall6 = CMG
cmgCall6 = cmgCall6.uiRegisterCallback
textValue12 = "closeUsernameUI"

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2
  arg1 = flag3
  if not arg1 then
    arg1 = cmgCall5
    arg1()
  end
end
cmgCall6(textValue12, workValue5)
cmgCall6 = RegisterNetEvent
textValue12 = "e6c1011fc8"
workValue5 = cmgCall5
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e6c1011fc8".
cmgCall6(textValue12, workValue5)
cmgCall6 = RegisterNetEvent
textValue12 = "588e246fc4"
-- Beginner: this function handles network event "588e246fc4".

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1, arg2, arg3, arg4) ===
function workValue5(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7
  arg5 = numberValue4
  if arg4 < arg5 then
    return
  end
  arg5 = CMG
  arg5 = arg5.uiSendMessage
  arg6 = {}
  arg6.action = "setUsernameIsValid"
  arg7 = {}
  arg7.name = arg1
  arg7.isValid = arg2
  arg7.errorMessage = arg3
  arg6.data = arg7
  arg5(arg6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "588e246fc4".
cmgCall6(textValue12, workValue5)
cmgCall6 = RegisterNetEvent
textValue12 = "69df7aca22"
-- Beginner: this function handles network event "69df7aca22".

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1) ===
function workValue5(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = true
  flag = arg2
  flag3 = arg1
  arg2 = RageUI
  arg2 = arg2.CloseAll
  arg2()
  arg2 = CMG
  arg2 = arg2.hideAllDisplays
  arg3 = "username"
  arg2(arg3)
  arg2 = TriggerScreenblurFadeIn
  arg3 = 0.0
  arg2(arg3)
  while true do
    arg2 = flag
    if not arg2 then
      break
    end
    arg2 = CMG
    arg2 = arg2.uiSendMessage
    arg3 = {}
    arg3.type = "APP_TOGGLE"
    arg3.app = "username"
    arg2(arg3)
    arg2 = CMG
    arg2 = arg2.uiSetFocus
    arg3 = true
    arg4 = true
    arg5 = false
    arg2(arg3, arg4, arg5)
    arg2 = CMG
    arg2 = arg2.uiSendMessage
    arg3 = {}
    arg3.action = "setUsernameIsForced"
    arg4 = {}
    arg4.forced = arg1
    arg3.data = arg4
    arg2(arg3)
    arg2 = Wait
    arg3 = 1000
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "69df7aca22".
cmgCall6(textValue12, workValue5)
cmgCall6 = {}

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg1, arg2) ===
function textValue12(arg1, arg2)
  local arg3, arg4, arg5, arg6
  arg1.visible = arg2
  arg3 = TriggerEvent
  arg4 = "CMG:onDisplayVisiblityChange"
  arg5 = arg1.name
  arg6 = arg2
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMG:onDisplayVisiblityChange".
  arg3(arg4, arg5, arg6)
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1) ===
function workValue5(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = table
  arg2 = arg2.has
  arg3 = arg1.disabledBy
  arg4 = "user"
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = 1
    if arg2 then
      goto flow_label_12
    end
  end
  arg2 = 0
  ::flow_label_12::
  arg3 = SetResourceKvpInt
  arg4 = string
  arg4 = arg4.format
  arg5 = "cmg_ui_visible_%s"
  arg6 = arg1.name
  arg4 = arg4(arg5, arg6)
  arg5 = arg2
  arg3(arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2
  arg2 = arg1.disabledBy
  arg2 = #arg2
  arg2 = 0 == arg2
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2, arg3) ===
function workValue7(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8
  arg4 = table
  arg4 = arg4.has
  arg5 = arg2.disabledBy
  arg6 = arg1
  arg4 = arg4(arg5, arg6)
  if not arg4 then
    arg4 = table
    arg4 = arg4.insert
    arg5 = arg2.disabledBy
    arg6 = arg1
    arg4(arg5, arg6)
    if "user" == arg1 then
      arg4 = workValue5
      arg5 = arg2
      arg4(arg5)
    end
  end
  arg4 = workValue6
  arg5 = arg2
  arg4 = arg4(arg5)
  arg5 = arg2.visible
  if arg5 ~= arg4 then
    arg5 = textValue12
    arg6 = arg2
    arg7 = arg4
    arg5(arg6, arg7)
  elseif arg3 then
    arg5 = TriggerEvent
    arg6 = "CMG:onDisplayVisiblityChange"
    arg7 = arg2.name
    arg8 = arg4
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMG:onDisplayVisiblityChange".
    arg5(arg6, arg7, arg8)
  end
end
cmgCall8 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: arg1) ===
function cmgCall(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue8, flag4
  arg2 = pairs
  arg3 = cmgCall6
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = workValue7
    workValue8 = arg1
    flag4 = arg7
    arg8(workValue8, flag4)
  end
end
cmgCall8.hideAllDisplays = cmgCall
cmgCall8 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: arg1, arg2, arg3) ===
function cmgCall(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8
  arg4 = cmgCall6
  arg4 = arg4[arg1]
  if arg4 then
    arg5 = workValue7
    arg6 = arg2
    arg7 = arg4
    arg8 = arg3
    arg5(arg6, arg7, arg8)
  end
end
cmgCall8.hideDisplay = cmgCall

-- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: arg1, arg2, arg3) ===
function cmgCall8(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue8
  arg4 = false
  arg5 = table
  arg5 = arg5.find
  arg6 = arg3.disabledBy
  arg7 = arg1
  arg5 = arg5(arg6, arg7)
  if arg5 then
    arg6 = table
    arg6 = arg6.remove
    arg7 = arg3.disabledBy
    arg8 = arg5
    arg6(arg7, arg8)
    if "user" == arg1 then
      arg6 = workValue5
      arg7 = arg3
      arg6(arg7)
    end
    arg4 = true
  end
  if arg2 then
    arg6 = table
    arg6 = arg6.has
    arg7 = arg3.enabledBy
    arg8 = arg1
    arg6 = arg6(arg7, arg8)
    if not arg6 then
      arg6 = table
      arg6 = arg6.insert
      arg7 = arg3.enabledBy
      arg8 = arg1
      arg6(arg7, arg8)
      arg4 = true
    end
  end
  if arg4 then
    arg6 = workValue6
    arg7 = arg3
    arg6 = arg6(arg7)
    arg7 = arg3.visible
    if arg7 ~= arg6 then
      arg7 = textValue12
      arg8 = arg3
      workValue8 = arg6
      arg7(arg8, workValue8)
    end
  end
end
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue8, flag4, flag2
  arg2 = pairs
  arg3 = cmgCall6
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = cmgCall8
    workValue8 = arg1
    flag4 = false
    flag2 = arg7
    arg8(workValue8, flag4, flag2)
  end
end
cmgCall.showAllDisplays = cmgCall2
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1, arg2) ===
function cmgCall2(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = cmgCall6
  arg3 = arg3[arg1]
  if arg3 then
    arg4 = cmgCall8
    arg5 = arg2
    arg6 = false
    arg7 = arg3
    arg4(arg5, arg6, arg7)
  end
end
cmgCall.showDisplay = cmgCall2
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1, ...) ===
function cmgCall2(arg1, ...)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue8, flag4, flag2, textValue
  arg2 = pairs
  arg3 = {}
  arg4, arg5, arg6, arg7, arg8, workValue8, flag4, flag2, textValue = ...
  arg3[1] = arg4
  arg3[2] = arg5
  arg3[3] = arg6
  arg3[4] = arg7
  arg3[5] = arg8
  arg3[6] = workValue8
  arg3[7] = flag4
  arg3[8] = flag2
  arg3[9] = textValue
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = cmgCall6
    arg8 = arg8[arg7]
    if arg8 then
      workValue8 = cmgCall8
      flag4 = arg1
      flag2 = true
      textValue = arg8
      workValue8(flag4, flag2, textValue)
    end
  end
end
cmgCall.showForcedDisplay = cmgCall2
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1, arg2) ===
function cmgCall2(arg1, arg2)
  local arg3, arg4, arg5, arg6
  arg3 = cmgCall6
  arg3 = arg3[arg1]
  if not arg3 then
    arg4 = false
    return arg4
  end
  if not arg2 then
    arg4 = arg3.visible
    return arg4
  end
  arg4 = table
  arg4 = arg4.has
  arg5 = arg3.disabledBy
  arg6 = arg2
  arg4 = arg4(arg5, arg6)
  arg4 = not arg4
  return arg4
end
cmgCall.isDisplayVisible = cmgCall2

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: ...) ===
function cmgCall(...)
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue8, flag4, flag2
  arg1 = {}
  arg2 = pairs
  arg3 = {}
  arg4, arg5, arg6, arg7, arg8, workValue8, flag4, flag2 = ...
  arg3[1] = arg4
  arg3[2] = arg5
  arg3[3] = arg6
  arg3[4] = arg7
  arg3[5] = arg8
  arg3[6] = workValue8
  arg3[7] = flag4
  arg3[8] = flag2
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = cmgCall6
    workValue8 = {}
    workValue8.name = arg7
    flag4 = {}
    workValue8.disabledBy = flag4
    flag4 = {}
    workValue8.enabledBy = flag4
    workValue8.visible = true
    arg8[arg7] = workValue8
    arg8 = GetResourceKvpInt
    workValue8 = string
    workValue8 = workValue8.format
    flag4 = "cmg_ui_visible_%s"
    flag2 = arg7
    workValue8, flag4, flag2 = workValue8(flag4, flag2)
    arg8 = arg8(workValue8, flag4, flag2)
    if not arg8 then
      arg8 = 0
    end
    if 1 == arg8 then
      workValue8 = table
      workValue8 = workValue8.insert
      flag4 = cmgCall6
      flag4 = flag4[arg7]
      flag4 = flag4.disabledBy
      flag2 = "user"
      workValue8(flag4, flag2)
      workValue8 = cmgCall6
      workValue8 = workValue8[arg7]
      workValue8.visible = false
      workValue8 = table
      workValue8 = workValue8.insert
      flag4 = arg1
      flag2 = arg7
      workValue8(flag4, flag2)
    end
  end
  arg2 = #arg1
  if arg2 > 0 then
    arg2 = Citizen
    arg2 = arg2.CreateThread

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22, arg32, arg42, workValue3, workValue4, localEventCall, cmgCall7, workValue9, flag5
      arg12 = ipairs
      arg22 = arg1
      arg12, arg22, arg32, arg42 = arg12(arg22)
      for workValue3, workValue4 in arg12, arg22, arg32, arg42 do
        localEventCall = TriggerEvent
        cmgCall7 = "CMG:onDisplayVisiblityChange"
        workValue9 = workValue4
        flag5 = false
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMG:onDisplayVisiblityChange".
        localEventCall(cmgCall7, workValue9, flag5)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg2(arg3)
  end
end
cmgCall2 = cmgCall
cmgCall3 = "killfeed"
dataTable = "chat"
textValue2 = "streetnames"
textValue3 = "compass"
textValue4 = "ids"
cmgCall4 = "radio"
textValue5 = "money"
textValue6 = "speedometer"
textValue7 = "health"
textValue8 = "gang"
textValue9 = "notification"
textValue10 = "radar"
textValue11 = "radialmenu"
cmgCall2(cmgCall3, dataTable, textValue2, textValue3, textValue4, cmgCall4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11)
cmgCall2 = AddEventHandler
cmgCall3 = "CMG:requestChatDisplayVisibilitySync"
-- Beginner: this function runs when client event "CMG:requestChatDisplayVisibilitySync" fires.

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
function dataTable()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = cmgCall6.chat
  if arg1 then
    arg2 = TriggerEvent
    arg3 = "CMG:onDisplayVisiblityChange"
    arg4 = "chat"
    arg5 = arg1.visible
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMG:onDisplayVisiblityChange".
    arg2(arg3, arg4, arg5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:requestChatDisplayVisibilitySync".
cmgCall2(cmgCall3, dataTable)
cmgCall2 = CMG
cmgCall2 = cmgCall2.registerDevMenuState
cmgCall3 = "UI"
dataTable = {}
dataTable.drawingDisplays = false
cmgCall2 = cmgCall2(cmgCall3, dataTable)
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerDevMenuThread
dataTable = "UI"

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue8, flag4, flag2
  arg1 = cmgCall2.drawingDisplays
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.drawDebugText
  arg2 = "---------- Hidden Displays Debug ----------"
  arg1(arg2)
  arg1 = pairs
  arg2 = cmgCall6
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = CMG
    arg7 = arg7.drawDebugText
    arg8 = string
    arg8 = arg8.format
    workValue8 = "%s (%s)"
    flag4 = arg5
    flag2 = arg6.visible
    if flag2 then
      flag2 = "visible"
      if flag2 then
        goto flow_label_26
      end
    end
    flag2 = "hidden"
    ::flow_label_26::
    arg8, workValue8, flag4, flag2 = arg8(workValue8, flag4, flag2)
    arg7(arg8, workValue8, flag4, flag2)
    arg7 = arg6.disabledBy
    arg7 = #arg7
    if arg7 > 0 then
      arg7 = CMG
      arg7 = arg7.drawDebugText
      arg8 = "   > Disabled (%s): %s"
      workValue8 = arg6.disabledBy
      workValue8 = #workValue8
      flag4 = json
      flag4 = flag4.encode
      flag2 = arg6.disabledBy
      flag4, flag2 = flag4(flag2)
      arg7(arg8, workValue8, flag4, flag2)
    end
    arg7 = arg6.enabledBy
    arg7 = #arg7
    if arg7 > 0 then
      arg7 = CMG
      arg7 = arg7.drawDebugText
      arg8 = "   > Enabled (%s): %s"
      workValue8 = arg6.enabledBy
      workValue8 = #workValue8
      flag4 = json
      flag4 = flag4.encode
      flag2 = arg6.enabledBy
      flag4, flag2 = flag4(flag2)
      arg7(arg8, workValue8, flag4, flag2)
    end
  end
end
cmgCall3(dataTable, textValue2)
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerDevMenuItems
dataTable = "UI"

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Draw Display Debug"
  arg3 = "Whether to draw debug about the current state of shown/hidden displays."
  arg4 = cmgCall2.drawingDisplays
  arg5 = {}

  -- === HELPER FUNCTION: arg6(arg12, arg22, arg32, arg42) ===
  function arg6(arg12, arg22, arg32, arg42)
    cmgCall2.drawingDisplays = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, arg5, arg6)
end
cmgCall3(dataTable, textValue2)
cmgCall3 = 10.0
dataTable = {}
textValue2 = 0
textValue3 = 0
textValue4 = 0
cmgCall4 = 255
dataTable[1] = textValue2
dataTable[2] = textValue3
dataTable[3] = textValue4
dataTable[4] = cmgCall4

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue8, flag4, flag2, textValue
  arg1 = {}
  arg2 = GetActiveScreenResolution
  arg2, arg3 = arg2()
  arg4 = GetAspectRatio
  arg5 = false
  arg4 = arg4(arg5)
  arg5 = 1
  arg5 = arg5 / arg2
  arg6 = 1
  arg6 = arg6 / arg3
  arg7 = nil
  arg8 = nil
  workValue8 = SetScriptGfxAlign
  flag4 = string
  flag4 = flag4.byte
  flag2 = "L"
  flag4 = flag4(flag2)
  flag2 = string
  flag2 = flag2.byte
  textValue = "B"
  flag2, textValue = flag2(textValue)
  workValue8(flag4, flag2, textValue)
  workValue8 = IsBigmapActive
  workValue8 = workValue8()
  if workValue8 then
    workValue8 = GetScriptGfxPosition
    flag4 = -0.003975
    flag2 = -0.43841666599999995
    workValue8, flag4 = workValue8(flag4, flag2)
    arg8 = flag4
    arg7 = workValue8
    workValue8 = 2.52 * arg4
    workValue8 = arg2 / workValue8
    workValue8 = arg5 * workValue8
    arg1.width = workValue8
    workValue8 = arg3 / 2.3374
    workValue8 = arg6 * workValue8
    arg1.height = workValue8
  else
    workValue8 = GetScriptGfxPosition
    flag4 = -0.0045
    flag2 = -0.186888
    workValue8, flag4 = workValue8(flag4, flag2)
    arg8 = flag4
    arg7 = workValue8
    workValue8 = 4 * arg4
    workValue8 = arg2 / workValue8
    workValue8 = arg5 * workValue8
    arg1.width = workValue8
    workValue8 = arg3 / 5.674
    workValue8 = arg6 * workValue8
    arg1.height = workValue8
  end
  workValue8 = ResetScriptGfxAlign
  workValue8()
  arg1.leftX = arg7
  workValue8 = arg1.width
  workValue8 = arg7 + workValue8
  arg1.rightX = workValue8
  arg1.topY = arg8
  workValue8 = arg1.height
  workValue8 = arg8 + workValue8
  arg1.bottomY = workValue8
  workValue8 = arg1.rightX
  flag4 = arg1.leftX
  workValue8 = workValue8 - flag4
  arg1.Width = workValue8
  return arg1
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) ===
function textValue3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local workValue8, flag4, flag2, textValue, numberValue, numberValue2, numberValue3, workValue, workValue2
  workValue8 = DrawRect
  flag4 = arg3 / 2
  flag4 = arg1 + flag4
  flag2 = arg4 / 2
  flag2 = arg2 + flag2
  textValue = arg3
  numberValue = arg4
  numberValue2 = arg5
  numberValue3 = arg6
  workValue = arg7
  workValue2 = arg8
  workValue8(flag4, flag2, textValue, numberValue, numberValue2, numberValue3, workValue, workValue2)
end

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue8, flag4, flag2, textValue, numberValue, numberValue2, numberValue3
  arg1 = CMG
  arg1 = arg1.isLegacyHudEnabled
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.isDisplayVisible
  arg2 = "health"
  arg1 = arg1(arg2)
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.isEmergencyCallUIHidden
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = textValue2
  arg2 = arg2()
  arg3 = GetEntityHealth
  arg4 = arg1
  -- Beginner: result below is health.
  arg3 = arg3(arg4)
  arg3 = arg3 - 100
  arg3 = arg3 / 100.0
  if arg3 < 0 then
    arg3 = 0.0
  end
  if 0.98 == arg3 then
    arg3 = 1.0
  end
  arg4 = GetPedArmour
  arg5 = arg1
  arg4 = arg4(arg5)
  arg4 = arg4 / 100.0
  arg5 = GetPlayerUnderwaterTimeRemaining
  arg6 = PlayerId
  arg6, arg7, arg8, workValue8, flag4, flag2, textValue, numberValue, numberValue2, numberValue3 = arg6()
  arg5 = arg5(arg6, arg7, arg8, workValue8, flag4, flag2, textValue, numberValue, numberValue2, numberValue3)
  arg6 = cmgCall3
  arg5 = arg5 / arg6
  arg6 = CMG
  arg6 = arg6.getShowHealthPercentageFlag
  arg6 = arg6()
  if arg4 > 1.0 then
    arg4 = 1.0
  end
  arg7 = textValue3
  arg8 = arg2.leftX
  arg8 = arg8 + 0.0045
  workValue8 = arg2.bottomY
  workValue8 = workValue8 - 0.004
  flag4 = arg2.Width
  flag2 = 0.009
  textValue = 88
  numberValue = 88
  numberValue2 = 88
  numberValue3 = 200
  arg7(arg8, workValue8, flag4, flag2, textValue, numberValue, numberValue2, numberValue3)
  arg7 = textValue3
  arg8 = arg2.leftX
  arg8 = arg8 + 0.0045
  workValue8 = arg2.bottomY
  workValue8 = workValue8 - 0.004
  flag4 = arg2.Width
  flag4 = flag4 * arg3
  flag2 = 0.009
  textValue = 86
  numberValue = 215
  numberValue2 = 64
  numberValue3 = 200
  arg7(arg8, workValue8, flag4, flag2, textValue, numberValue, numberValue2, numberValue3)
  arg7 = textValue3
  arg8 = arg2.leftX
  arg8 = arg8 + 0.0045
  workValue8 = arg2.bottomY
  workValue8 = workValue8 + 0.009
  flag4 = arg2.Width
  flag2 = 0.009
  textValue = 88
  numberValue = 88
  numberValue2 = 88
  numberValue3 = 200
  arg7(arg8, workValue8, flag4, flag2, textValue, numberValue, numberValue2, numberValue3)
  if arg6 then
    arg7 = CMG
    arg7 = arg7.DrawText
    arg8 = arg2.leftX
    workValue8 = arg2.Width
    workValue8 = workValue8 / 2.0
    arg8 = arg8 + workValue8
    workValue8 = arg2.bottomY
    workValue8 = workValue8 - 0.0075
    flag4 = tostring
    flag2 = math
    flag2 = flag2.floor
    textValue = arg3 * 100
    flag2, textValue, numberValue, numberValue2, numberValue3 = flag2(textValue)
    flag4 = flag4(flag2, textValue, numberValue, numberValue2, numberValue3)
    flag2 = "%"
    flag4 = flag4 .. flag2
    flag2 = 0.175
    textValue = nil
    numberValue = nil
    numberValue2 = dataTable
    arg7(arg8, workValue8, flag4, flag2, textValue, numberValue, numberValue2)
  end
  arg7 = IsPedSwimmingUnderWater
  arg8 = arg1
  arg7 = arg7(arg8)
  if arg7 and arg5 >= 0.0 then
    arg7 = textValue3
    arg8 = arg2.leftX
    arg8 = arg8 + 0.0045
    workValue8 = arg2.bottomY
    workValue8 = workValue8 + 0.009
    flag4 = arg2.Width
    flag4 = flag4 * arg5
    flag2 = 0.009
    textValue = 243
    numberValue = 214
    numberValue2 = 102
    numberValue3 = 200
    arg7(arg8, workValue8, flag4, flag2, textValue, numberValue, numberValue2, numberValue3)
  elseif arg4 > 0.0 then
    arg7 = textValue3
    arg8 = arg2.leftX
    arg8 = arg8 + 0.0045
    workValue8 = arg2.bottomY
    workValue8 = workValue8 + 0.009
    flag4 = arg2.Width
    flag4 = flag4 * arg4
    flag2 = 0.009
    textValue = 60
    numberValue = 79
    numberValue2 = 255
    numberValue3 = 200
    arg7(arg8, workValue8, flag4, flag2, textValue, numberValue, numberValue2, numberValue3)
    if arg6 then
      arg7 = CMG
      arg7 = arg7.DrawText
      arg8 = arg2.leftX
      workValue8 = arg2.Width
      workValue8 = workValue8 / 2.0
      arg8 = arg8 + workValue8
      workValue8 = arg2.bottomY
      workValue8 = workValue8 + 0.006
      flag4 = tostring
      flag2 = math
      flag2 = flag2.floor
      textValue = arg4 * 100
      flag2, textValue, numberValue, numberValue2, numberValue3 = flag2(textValue)
      flag4 = flag4(flag2, textValue, numberValue, numberValue2, numberValue3)
      flag2 = "%"
      flag4 = flag4 .. flag2
      flag2 = 0.175
      textValue = nil
      numberValue = nil
      numberValue2 = dataTable
      arg7(arg8, workValue8, flag4, flag2, textValue, numberValue, numberValue2)
    end
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
textValue5 = textValue4
textValue6 = "Legacy Health And Armour UI"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(textValue5, textValue6)
