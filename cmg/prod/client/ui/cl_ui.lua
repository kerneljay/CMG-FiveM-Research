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
local stateFlag, number4, stateFlag3, cmgOperation5, cmgOperation6, text12, workingValue5, workingValue6, workingValue7, cmgOperation8, cmgOperation, cmgOperation2, cmgOperation3, dataCollection, text2, text3, text4, cmgOperation4, text5, text6, text7, text8, text9, text10, text11
stateFlag = false
number4 = 0
stateFlag3 = false
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.uiRegisterCallback
cmgOperation6 = "onUsernameCheckValid"

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = number4
  localValue2 = localValue2 + 1
  number4 = localValue2
  localValue2 = TriggerServerEvent
  localValue3 = "fde18c5340"
  localValue4 = localValue1.name
  localValue5 = number4
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fde18c5340".
  localValue2(localValue3, localValue4, localValue5)
end
cmgOperation5(cmgOperation6, text12)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.uiRegisterCallback
cmgOperation6 = "onUsernameChosen"

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "30a2a149f7"
  localValue4 = localValue1.name
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "30a2a149f7".
  localValue2(localValue3, localValue4)
end
cmgOperation5(cmgOperation6, text12)

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = stateFlag
  if not localValue1 then
    return
  end
  localValue1 = false
  stateFlag = localValue1
  localValue1 = CMG
  localValue1 = localValue1.showAllDisplays
  localValue2 = "username"
  localValue1(localValue2)
  localValue1 = TriggerScreenblurFadeOut
  localValue2 = 0.0
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.type = "APP_TOGGLE"
  localValue2.app = ""
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.uiSetFocus
  localValue2 = false
  localValue3 = false
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
end
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.uiRegisterCallback
text12 = "closeUsernameUI"

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2
  localValue1 = stateFlag3
  if not localValue1 then
    localValue1 = cmgOperation5
    localValue1()
  end
end
cmgOperation6(text12, workingValue5)
cmgOperation6 = RegisterNetEvent
text12 = "e6c1011fc8"
workingValue5 = cmgOperation5
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e6c1011fc8".
cmgOperation6(text12, workingValue5)
cmgOperation6 = RegisterNetEvent
text12 = "588e246fc4"
-- Beginner: this function handles network event "588e246fc4".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue5(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7
  localValue5 = number4
  if localValue4 < localValue5 then
    return
  end
  localValue5 = CMG
  localValue5 = localValue5.uiSendMessage
  localValue6 = {}
  localValue6.action = "setUsernameIsValid"
  localValue7 = {}
  localValue7.name = localValue1
  localValue7.isValid = localValue2
  localValue7.errorMessage = localValue3
  localValue6.data = localValue7
  localValue5(localValue6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "588e246fc4".
cmgOperation6(text12, workingValue5)
cmgOperation6 = RegisterNetEvent
text12 = "69df7aca22"
-- Beginner: this function handles network event "69df7aca22".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = true
  stateFlag = localValue2
  stateFlag3 = localValue1
  localValue2 = RageUI
  localValue2 = localValue2.CloseAll
  localValue2()
  localValue2 = CMG
  localValue2 = localValue2.hideAllDisplays
  localValue3 = "username"
  localValue2(localValue3)
  localValue2 = TriggerScreenblurFadeIn
  localValue3 = 0.0
  localValue2(localValue3)
  while true do
    localValue2 = stateFlag
    if not localValue2 then
      break
    end
    localValue2 = CMG
    localValue2 = localValue2.uiSendMessage
    localValue3 = {}
    localValue3.type = "APP_TOGGLE"
    localValue3.app = "username"
    localValue2(localValue3)
    localValue2 = CMG
    localValue2 = localValue2.uiSetFocus
    localValue3 = true
    localValue4 = true
    localValue5 = false
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = CMG
    localValue2 = localValue2.uiSendMessage
    localValue3 = {}
    localValue3.action = "setUsernameIsForced"
    localValue4 = {}
    localValue4.forced = localValue1
    localValue3.data = localValue4
    localValue2(localValue3)
    localValue2 = Wait
    localValue3 = 1000
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "69df7aca22".
cmgOperation6(text12, workingValue5)
cmgOperation6 = {}

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1, localValue2) ===
function text12(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  localValue1.visible = localValue2
  localValue3 = TriggerEvent
  localValue4 = "CMG:onDisplayVisiblityChange"
  localValue5 = localValue1.name
  localValue6 = localValue2
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMG:onDisplayVisiblityChange".
  localValue3(localValue4, localValue5, localValue6)
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = table
  localValue2 = localValue2.has
  localValue3 = localValue1.disabledBy
  localValue4 = "user"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = 1
    if localValue2 then
      goto continueAtStep12
    end
  end
  localValue2 = 0
  ::continueAtStep12::
  localValue3 = SetResourceKvpInt
  localValue4 = string
  localValue4 = localValue4.format
  localValue5 = "cmg_ui_visible_%s"
  localValue6 = localValue1.name
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = localValue2
  localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2
  localValue2 = localValue1.disabledBy
  localValue2 = #localValue2
  localValue2 = 0 == localValue2
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2, localValue3) ===
function workingValue7(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8
  localValue4 = table
  localValue4 = localValue4.has
  localValue5 = localValue2.disabledBy
  localValue6 = localValue1
  localValue4 = localValue4(localValue5, localValue6)
  if not localValue4 then
    localValue4 = table
    localValue4 = localValue4.insert
    localValue5 = localValue2.disabledBy
    localValue6 = localValue1
    localValue4(localValue5, localValue6)
    if "user" == localValue1 then
      localValue4 = workingValue5
      localValue5 = localValue2
      localValue4(localValue5)
    end
  end
  localValue4 = workingValue6
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  localValue5 = localValue2.visible
  if localValue5 ~= localValue4 then
    localValue5 = text12
    localValue6 = localValue2
    localValue7 = localValue4
    localValue5(localValue6, localValue7)
  elseif localValue3 then
    localValue5 = TriggerEvent
    localValue6 = "CMG:onDisplayVisiblityChange"
    localValue7 = localValue2.name
    localValue8 = localValue4
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMG:onDisplayVisiblityChange".
    localValue5(localValue6, localValue7, localValue8)
  end
end
cmgOperation8 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: localValue1) ===
function cmgOperation(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue8, stateFlag4
  localValue2 = pairs
  localValue3 = cmgOperation6
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = workingValue7
    workingValue8 = localValue1
    stateFlag4 = localValue7
    localValue8(workingValue8, stateFlag4)
  end
end
cmgOperation8.hideAllDisplays = cmgOperation
cmgOperation8 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8
  localValue4 = cmgOperation6
  localValue4 = localValue4[localValue1]
  if localValue4 then
    localValue5 = workingValue7
    localValue6 = localValue2
    localValue7 = localValue4
    localValue8 = localValue3
    localValue5(localValue6, localValue7, localValue8)
  end
end
cmgOperation8.hideDisplay = cmgOperation

-- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation8(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue8
  localValue4 = false
  localValue5 = table
  localValue5 = localValue5.find
  localValue6 = localValue3.disabledBy
  localValue7 = localValue1
  localValue5 = localValue5(localValue6, localValue7)
  if localValue5 then
    localValue6 = table
    localValue6 = localValue6.remove
    localValue7 = localValue3.disabledBy
    localValue8 = localValue5
    localValue6(localValue7, localValue8)
    if "user" == localValue1 then
      localValue6 = workingValue5
      localValue7 = localValue3
      localValue6(localValue7)
    end
    localValue4 = true
  end
  if localValue2 then
    localValue6 = table
    localValue6 = localValue6.has
    localValue7 = localValue3.enabledBy
    localValue8 = localValue1
    localValue6 = localValue6(localValue7, localValue8)
    if not localValue6 then
      localValue6 = table
      localValue6 = localValue6.insert
      localValue7 = localValue3.enabledBy
      localValue8 = localValue1
      localValue6(localValue7, localValue8)
      localValue4 = true
    end
  end
  if localValue4 then
    localValue6 = workingValue6
    localValue7 = localValue3
    localValue6 = localValue6(localValue7)
    localValue7 = localValue3.visible
    if localValue7 ~= localValue6 then
      localValue7 = text12
      localValue8 = localValue3
      workingValue8 = localValue6
      localValue7(localValue8, workingValue8)
    end
  end
end
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue8, stateFlag4, stateFlag2
  localValue2 = pairs
  localValue3 = cmgOperation6
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = cmgOperation8
    workingValue8 = localValue1
    stateFlag4 = false
    stateFlag2 = localValue7
    localValue8(workingValue8, stateFlag4, stateFlag2)
  end
end
cmgOperation.showAllDisplays = cmgOperation2
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2) ===
function cmgOperation2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = cmgOperation6
  localValue3 = localValue3[localValue1]
  if localValue3 then
    localValue4 = cmgOperation8
    localValue5 = localValue2
    localValue6 = false
    localValue7 = localValue3
    localValue4(localValue5, localValue6, localValue7)
  end
end
cmgOperation.showDisplay = cmgOperation2
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, ...) ===
function cmgOperation2(localValue1, ...)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue8, stateFlag4, stateFlag2, text
  localValue2 = pairs
  localValue3 = {}
  localValue4, localValue5, localValue6, localValue7, localValue8, workingValue8, stateFlag4, stateFlag2, text = ...
  localValue3[1] = localValue4
  localValue3[2] = localValue5
  localValue3[3] = localValue6
  localValue3[4] = localValue7
  localValue3[5] = localValue8
  localValue3[6] = workingValue8
  localValue3[7] = stateFlag4
  localValue3[8] = stateFlag2
  localValue3[9] = text
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = cmgOperation6
    localValue8 = localValue8[localValue7]
    if localValue8 then
      workingValue8 = cmgOperation8
      stateFlag4 = localValue1
      stateFlag2 = true
      text = localValue8
      workingValue8(stateFlag4, stateFlag2, text)
    end
  end
end
cmgOperation.showForcedDisplay = cmgOperation2
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2) ===
function cmgOperation2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  localValue3 = cmgOperation6
  localValue3 = localValue3[localValue1]
  if not localValue3 then
    localValue4 = false
    return localValue4
  end
  if not localValue2 then
    localValue4 = localValue3.visible
    return localValue4
  end
  localValue4 = table
  localValue4 = localValue4.has
  localValue5 = localValue3.disabledBy
  localValue6 = localValue2
  localValue4 = localValue4(localValue5, localValue6)
  localValue4 = not localValue4
  return localValue4
end
cmgOperation.isDisplayVisible = cmgOperation2

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: ...) ===
function cmgOperation(...)
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue8, stateFlag4, stateFlag2
  localValue1 = {}
  localValue2 = pairs
  localValue3 = {}
  localValue4, localValue5, localValue6, localValue7, localValue8, workingValue8, stateFlag4, stateFlag2 = ...
  localValue3[1] = localValue4
  localValue3[2] = localValue5
  localValue3[3] = localValue6
  localValue3[4] = localValue7
  localValue3[5] = localValue8
  localValue3[6] = workingValue8
  localValue3[7] = stateFlag4
  localValue3[8] = stateFlag2
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = cmgOperation6
    workingValue8 = {}
    workingValue8.name = localValue7
    stateFlag4 = {}
    workingValue8.disabledBy = stateFlag4
    stateFlag4 = {}
    workingValue8.enabledBy = stateFlag4
    workingValue8.visible = true
    localValue8[localValue7] = workingValue8
    localValue8 = GetResourceKvpInt
    workingValue8 = string
    workingValue8 = workingValue8.format
    stateFlag4 = "cmg_ui_visible_%s"
    stateFlag2 = localValue7
    workingValue8, stateFlag4, stateFlag2 = workingValue8(stateFlag4, stateFlag2)
    localValue8 = localValue8(workingValue8, stateFlag4, stateFlag2)
    if not localValue8 then
      localValue8 = 0
    end
    if 1 == localValue8 then
      workingValue8 = table
      workingValue8 = workingValue8.insert
      stateFlag4 = cmgOperation6
      stateFlag4 = stateFlag4[localValue7]
      stateFlag4 = stateFlag4.disabledBy
      stateFlag2 = "user"
      workingValue8(stateFlag4, stateFlag2)
      workingValue8 = cmgOperation6
      workingValue8 = workingValue8[localValue7]
      workingValue8.visible = false
      workingValue8 = table
      workingValue8 = workingValue8.insert
      stateFlag4 = localValue1
      stateFlag2 = localValue7
      workingValue8(stateFlag4, stateFlag2)
    end
  end
  localValue2 = #localValue1
  if localValue2 > 0 then
    localValue2 = Citizen
    localValue2 = localValue2.CreateThread

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22, localValue32, localValue42, workingValue3, workingValue4, localEventCall, cmgOperation7, workingValue9, stateFlag5
      localValue12 = ipairs
      localValue22 = localValue1
      localValue12, localValue22, localValue32, localValue42 = localValue12(localValue22)
      for workingValue3, workingValue4 in localValue12, localValue22, localValue32, localValue42 do
        localEventCall = TriggerEvent
        cmgOperation7 = "CMG:onDisplayVisiblityChange"
        workingValue9 = workingValue4
        stateFlag5 = false
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMG:onDisplayVisiblityChange".
        localEventCall(cmgOperation7, workingValue9, stateFlag5)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue2(localValue3)
  end
end
cmgOperation2 = cmgOperation
cmgOperation3 = "killfeed"
dataCollection = "chat"
text2 = "streetnames"
text3 = "compass"
text4 = "ids"
cmgOperation4 = "radio"
text5 = "money"
text6 = "speedometer"
text7 = "health"
text8 = "gang"
text9 = "notification"
text10 = "radar"
text11 = "radialmenu"
cmgOperation2(cmgOperation3, dataCollection, text2, text3, text4, cmgOperation4, text5, text6, text7, text8, text9, text10, text11)
cmgOperation2 = AddEventHandler
cmgOperation3 = "CMG:requestChatDisplayVisibilitySync"
-- Beginner: this function runs when client event "CMG:requestChatDisplayVisibilitySync" fires.

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
function dataCollection()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = cmgOperation6.chat
  if localValue1 then
    localValue2 = TriggerEvent
    localValue3 = "CMG:onDisplayVisiblityChange"
    localValue4 = "chat"
    localValue5 = localValue1.visible
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMG:onDisplayVisiblityChange".
    localValue2(localValue3, localValue4, localValue5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:requestChatDisplayVisibilitySync".
cmgOperation2(cmgOperation3, dataCollection)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.registerDevMenuState
cmgOperation3 = "UI"
dataCollection = {}
dataCollection.drawingDisplays = false
cmgOperation2 = cmgOperation2(cmgOperation3, dataCollection)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.registerDevMenuThread
dataCollection = "UI"

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue8, stateFlag4, stateFlag2
  localValue1 = cmgOperation2.drawingDisplays
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.drawDebugText
  localValue2 = "---------- Hidden Displays Debug ----------"
  localValue1(localValue2)
  localValue1 = pairs
  localValue2 = cmgOperation6
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = CMG
    localValue7 = localValue7.drawDebugText
    localValue8 = string
    localValue8 = localValue8.format
    workingValue8 = "%s (%s)"
    stateFlag4 = localValue5
    stateFlag2 = localValue6.visible
    if stateFlag2 then
      stateFlag2 = "visible"
      if stateFlag2 then
        goto continueAtStep26
      end
    end
    stateFlag2 = "hidden"
    ::continueAtStep26::
    localValue8, workingValue8, stateFlag4, stateFlag2 = localValue8(workingValue8, stateFlag4, stateFlag2)
    localValue7(localValue8, workingValue8, stateFlag4, stateFlag2)
    localValue7 = localValue6.disabledBy
    localValue7 = #localValue7
    if localValue7 > 0 then
      localValue7 = CMG
      localValue7 = localValue7.drawDebugText
      localValue8 = "   > Disabled (%s): %s"
      workingValue8 = localValue6.disabledBy
      workingValue8 = #workingValue8
      stateFlag4 = json
      stateFlag4 = stateFlag4.encode
      stateFlag2 = localValue6.disabledBy
      stateFlag4, stateFlag2 = stateFlag4(stateFlag2)
      localValue7(localValue8, workingValue8, stateFlag4, stateFlag2)
    end
    localValue7 = localValue6.enabledBy
    localValue7 = #localValue7
    if localValue7 > 0 then
      localValue7 = CMG
      localValue7 = localValue7.drawDebugText
      localValue8 = "   > Enabled (%s): %s"
      workingValue8 = localValue6.enabledBy
      workingValue8 = #workingValue8
      stateFlag4 = json
      stateFlag4 = stateFlag4.encode
      stateFlag2 = localValue6.enabledBy
      stateFlag4, stateFlag2 = stateFlag4(stateFlag2)
      localValue7(localValue8, workingValue8, stateFlag4, stateFlag2)
    end
  end
end
cmgOperation3(dataCollection, text2)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.registerDevMenuItems
dataCollection = "UI"

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Draw Display Debug"
  localValue3 = "Whether to draw debug about the current state of shown/hidden displays."
  localValue4 = cmgOperation2.drawingDisplays
  localValue5 = {}

  -- === HELPER FUNCTION: localValue6(localValue12, localValue22, localValue32, localValue42) ===
  function localValue6(localValue12, localValue22, localValue32, localValue42)
    cmgOperation2.drawingDisplays = localValue42
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
end
cmgOperation3(dataCollection, text2)
cmgOperation3 = 10.0
dataCollection = {}
text2 = 0
text3 = 0
text4 = 0
cmgOperation4 = 255
dataCollection[1] = text2
dataCollection[2] = text3
dataCollection[3] = text4
dataCollection[4] = cmgOperation4

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue8, stateFlag4, stateFlag2, text
  localValue1 = {}
  localValue2 = GetActiveScreenResolution
  localValue2, localValue3 = localValue2()
  localValue4 = GetAspectRatio
  localValue5 = false
  localValue4 = localValue4(localValue5)
  localValue5 = 1
  localValue5 = localValue5 / localValue2
  localValue6 = 1
  localValue6 = localValue6 / localValue3
  localValue7 = nil
  localValue8 = nil
  workingValue8 = SetScriptGfxAlign
  stateFlag4 = string
  stateFlag4 = stateFlag4.byte
  stateFlag2 = "L"
  stateFlag4 = stateFlag4(stateFlag2)
  stateFlag2 = string
  stateFlag2 = stateFlag2.byte
  text = "B"
  stateFlag2, text = stateFlag2(text)
  workingValue8(stateFlag4, stateFlag2, text)
  workingValue8 = IsBigmapActive
  workingValue8 = workingValue8()
  if workingValue8 then
    workingValue8 = GetScriptGfxPosition
    stateFlag4 = -0.003975
    stateFlag2 = -0.43841666599999995
    workingValue8, stateFlag4 = workingValue8(stateFlag4, stateFlag2)
    localValue8 = stateFlag4
    localValue7 = workingValue8
    workingValue8 = 2.52 * localValue4
    workingValue8 = localValue2 / workingValue8
    workingValue8 = localValue5 * workingValue8
    localValue1.width = workingValue8
    workingValue8 = localValue3 / 2.3374
    workingValue8 = localValue6 * workingValue8
    localValue1.height = workingValue8
  else
    workingValue8 = GetScriptGfxPosition
    stateFlag4 = -0.0045
    stateFlag2 = -0.186888
    workingValue8, stateFlag4 = workingValue8(stateFlag4, stateFlag2)
    localValue8 = stateFlag4
    localValue7 = workingValue8
    workingValue8 = 4 * localValue4
    workingValue8 = localValue2 / workingValue8
    workingValue8 = localValue5 * workingValue8
    localValue1.width = workingValue8
    workingValue8 = localValue3 / 5.674
    workingValue8 = localValue6 * workingValue8
    localValue1.height = workingValue8
  end
  workingValue8 = ResetScriptGfxAlign
  workingValue8()
  localValue1.leftX = localValue7
  workingValue8 = localValue1.width
  workingValue8 = localValue7 + workingValue8
  localValue1.rightX = workingValue8
  localValue1.topY = localValue8
  workingValue8 = localValue1.height
  workingValue8 = localValue8 + workingValue8
  localValue1.bottomY = workingValue8
  workingValue8 = localValue1.rightX
  stateFlag4 = localValue1.leftX
  workingValue8 = workingValue8 - stateFlag4
  localValue1.Width = workingValue8
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8) ===
function text3(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  local workingValue8, stateFlag4, stateFlag2, text, number, number2, number3, workingValue, workingValue2
  workingValue8 = DrawRect
  stateFlag4 = localValue3 / 2
  stateFlag4 = localValue1 + stateFlag4
  stateFlag2 = localValue4 / 2
  stateFlag2 = localValue2 + stateFlag2
  text = localValue3
  number = localValue4
  number2 = localValue5
  number3 = localValue6
  workingValue = localValue7
  workingValue2 = localValue8
  workingValue8(stateFlag4, stateFlag2, text, number, number2, number3, workingValue, workingValue2)
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue8, stateFlag4, stateFlag2, text, number, number2, number3
  localValue1 = CMG
  localValue1 = localValue1.isLegacyHudEnabled
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.isDisplayVisible
  localValue2 = "health"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.isEmergencyCallUIHidden
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = text2
  localValue2 = localValue2()
  localValue3 = GetEntityHealth
  localValue4 = localValue1
  -- Beginner: result below is health.
  localValue3 = localValue3(localValue4)
  localValue3 = localValue3 - 100
  localValue3 = localValue3 / 100.0
  if localValue3 < 0 then
    localValue3 = 0.0
  end
  if 0.98 == localValue3 then
    localValue3 = 1.0
  end
  localValue4 = GetPedArmour
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  localValue4 = localValue4 / 100.0
  localValue5 = GetPlayerUnderwaterTimeRemaining
  localValue6 = PlayerId
  localValue6, localValue7, localValue8, workingValue8, stateFlag4, stateFlag2, text, number, number2, number3 = localValue6()
  localValue5 = localValue5(localValue6, localValue7, localValue8, workingValue8, stateFlag4, stateFlag2, text, number, number2, number3)
  localValue6 = cmgOperation3
  localValue5 = localValue5 / localValue6
  localValue6 = CMG
  localValue6 = localValue6.getShowHealthPercentageFlag
  localValue6 = localValue6()
  if localValue4 > 1.0 then
    localValue4 = 1.0
  end
  localValue7 = text3
  localValue8 = localValue2.leftX
  localValue8 = localValue8 + 0.0045
  workingValue8 = localValue2.bottomY
  workingValue8 = workingValue8 - 0.004
  stateFlag4 = localValue2.Width
  stateFlag2 = 0.009
  text = 88
  number = 88
  number2 = 88
  number3 = 200
  localValue7(localValue8, workingValue8, stateFlag4, stateFlag2, text, number, number2, number3)
  localValue7 = text3
  localValue8 = localValue2.leftX
  localValue8 = localValue8 + 0.0045
  workingValue8 = localValue2.bottomY
  workingValue8 = workingValue8 - 0.004
  stateFlag4 = localValue2.Width
  stateFlag4 = stateFlag4 * localValue3
  stateFlag2 = 0.009
  text = 86
  number = 215
  number2 = 64
  number3 = 200
  localValue7(localValue8, workingValue8, stateFlag4, stateFlag2, text, number, number2, number3)
  localValue7 = text3
  localValue8 = localValue2.leftX
  localValue8 = localValue8 + 0.0045
  workingValue8 = localValue2.bottomY
  workingValue8 = workingValue8 + 0.009
  stateFlag4 = localValue2.Width
  stateFlag2 = 0.009
  text = 88
  number = 88
  number2 = 88
  number3 = 200
  localValue7(localValue8, workingValue8, stateFlag4, stateFlag2, text, number, number2, number3)
  if localValue6 then
    localValue7 = CMG
    localValue7 = localValue7.DrawText
    localValue8 = localValue2.leftX
    workingValue8 = localValue2.Width
    workingValue8 = workingValue8 / 2.0
    localValue8 = localValue8 + workingValue8
    workingValue8 = localValue2.bottomY
    workingValue8 = workingValue8 - 0.0075
    stateFlag4 = tostring
    stateFlag2 = math
    stateFlag2 = stateFlag2.floor
    text = localValue3 * 100
    stateFlag2, text, number, number2, number3 = stateFlag2(text)
    stateFlag4 = stateFlag4(stateFlag2, text, number, number2, number3)
    stateFlag2 = "%"
    stateFlag4 = stateFlag4 .. stateFlag2
    stateFlag2 = 0.175
    text = nil
    number = nil
    number2 = dataCollection
    localValue7(localValue8, workingValue8, stateFlag4, stateFlag2, text, number, number2)
  end
  localValue7 = IsPedSwimmingUnderWater
  localValue8 = localValue1
  localValue7 = localValue7(localValue8)
  if localValue7 and localValue5 >= 0.0 then
    localValue7 = text3
    localValue8 = localValue2.leftX
    localValue8 = localValue8 + 0.0045
    workingValue8 = localValue2.bottomY
    workingValue8 = workingValue8 + 0.009
    stateFlag4 = localValue2.Width
    stateFlag4 = stateFlag4 * localValue5
    stateFlag2 = 0.009
    text = 243
    number = 214
    number2 = 102
    number3 = 200
    localValue7(localValue8, workingValue8, stateFlag4, stateFlag2, text, number, number2, number3)
  elseif localValue4 > 0.0 then
    localValue7 = text3
    localValue8 = localValue2.leftX
    localValue8 = localValue8 + 0.0045
    workingValue8 = localValue2.bottomY
    workingValue8 = workingValue8 + 0.009
    stateFlag4 = localValue2.Width
    stateFlag4 = stateFlag4 * localValue4
    stateFlag2 = 0.009
    text = 60
    number = 79
    number2 = 255
    number3 = 200
    localValue7(localValue8, workingValue8, stateFlag4, stateFlag2, text, number, number2, number3)
    if localValue6 then
      localValue7 = CMG
      localValue7 = localValue7.DrawText
      localValue8 = localValue2.leftX
      workingValue8 = localValue2.Width
      workingValue8 = workingValue8 / 2.0
      localValue8 = localValue8 + workingValue8
      workingValue8 = localValue2.bottomY
      workingValue8 = workingValue8 + 0.006
      stateFlag4 = tostring
      stateFlag2 = math
      stateFlag2 = stateFlag2.floor
      text = localValue4 * 100
      stateFlag2, text, number, number2, number3 = stateFlag2(text)
      stateFlag4 = stateFlag4(stateFlag2, text, number, number2, number3)
      stateFlag2 = "%"
      stateFlag4 = stateFlag4 .. stateFlag2
      stateFlag2 = 0.175
      text = nil
      number = nil
      number2 = dataCollection
      localValue7(localValue8, workingValue8, stateFlag4, stateFlag2, text, number, number2)
    end
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
text5 = text4
text6 = "Legacy Health And Armour UI"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(text5, text6)
