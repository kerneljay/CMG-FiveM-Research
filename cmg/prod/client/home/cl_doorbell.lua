--[[
    LEVEL 1 BEGINNER GUIDE — Doorbell
    ======================================

    File: cmg/prod/client/home/cl_doorbell.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: housing/home gameplay, specifically the Doorbell feature.

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
local cmgOperation, stateFlag2, stateFlag3, stateFlag4, createVector3, number, dataCollection2, number2, cmgOperation3, eventHandler, text, text2, rageUiOperation, text3, text5, rageUiOperation2, rageUiOperation3, rageUiOperation4
cmgOperation = Wait
stateFlag2 = 0
cmgOperation(stateFlag2)
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
stateFlag2 = "cfg/homes"
-- Beginner: result below is config.
cmgOperation = cmgOperation(stateFlag2)
stateFlag2 = false
stateFlag3 = false
stateFlag4 = false
createVector3 = vector3
number = 0.0
dataCollection2 = 0.0
number2 = 0.0
createVector3 = createVector3(number, dataCollection2, number2)
number = 0
dataCollection2 = {}
number2 = nil
cmgOperation3 = RegisterNetEvent
eventHandler = "e16b232b96"
-- Beginner: this function handles network event "e16b232b96".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, text7, dataCollection, stateFlag5, text8, text10
  localValue2 = CMG
  localValue2 = localValue2.notifyPicture
  text7 = "polnotification"
  dataCollection = "doorbell"
  stateFlag5 = "~y~Your doorbell motion sensor has been activated at "
  text8 = localValue1
  text10 = "."
  stateFlag5 = stateFlag5 .. text8 .. text10
  text8 = "House Notification"
  text10 = "~r~Motion Alert"
  localValue2(text7, dataCollection, stateFlag5, text8, text10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e16b232b96".
cmgOperation3(eventHandler, text)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.registerHomeCustomisationButtons
eventHandler = "Motion Doorbell"

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, text7, dataCollection, stateFlag5, text8, text10, workingValue5
  localValue1 = RageUI
  localValue1 = localValue1.Separator
  localValue2 = "~y~Adds a doorbell to notify of motion outside the door"
  localValue1(localValue2)
  localValue1 = RageUI
  localValue1 = localValue1.Separator
  localValue2 = "~y~To view all doorbell cameras do /doorbell"
  localValue1(localValue2)
  localValue1 = stateFlag2
  if not localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.ButtonWithStyle
    localValue2 = "Purchase"
    text7 = ""
    dataCollection = {}
    dataCollection.RightLabel = "\194\1632,000,000"
    stateFlag5 = true

    -- === HELPER FUNCTION (decompiler name: text8; parameters: localValue12, localValue22, localValue3) ===
    function text8(localValue12, localValue22, localValue3)
      local localValue4, cmgOperation2
      if localValue3 then
        localValue4 = TriggerServerEvent
        cmgOperation2 = "883e3b0778"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "883e3b0778".
        localValue4(cmgOperation2)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue1(localValue2, text7, dataCollection, stateFlag5, text8)
  else
    localValue1 = RageUI
    localValue1 = localValue1.Checkbox
    localValue2 = "Motion Disabled"
    text7 = ""
    dataCollection = stateFlag3
    stateFlag5 = {}

    -- === HELPER FUNCTION (decompiler name: text8; parameters: localValue12, localValue22, localValue3, localValue4) ===
    function text8(localValue12, localValue22, localValue3, localValue4)
      local cmgOperation2, rageUiOperation5, serverEventCall2, text11, dataCollection3, stateFlag7
      if localValue3 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.isInHouse
        cmgOperation2, rageUiOperation5 = cmgOperation2()
        if cmgOperation2 and rageUiOperation5 then
          serverEventCall2 = TriggerServerEvent
          text11 = "234e1fca14"
          dataCollection3 = rageUiOperation5
          stateFlag7 = localValue4
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "234e1fca14".
          serverEventCall2(text11, dataCollection3, stateFlag7)
        end
      end
    end

    -- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
    function text10()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
    function workingValue5()
      local localValue12, localValue22
    end
    -- Beginner: Draw a RageUI checkbox.
    localValue1(localValue2, text7, dataCollection, stateFlag5, text8, text10, workingValue5)
  end
end
cmgOperation3(eventHandler, text)
cmgOperation3 = RegisterNetEvent
eventHandler = "290823ad62"
-- Beginner: this function handles network event "290823ad62".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  stateFlag2 = localValue1
  stateFlag3 = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "290823ad62".
cmgOperation3(eventHandler, text)
-- Beginner: this function handles network event "290823ad62".

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, text7, dataCollection, stateFlag5, text8, text10, workingValue5
  localValue1 = DisableAllControlActions
  localValue2 = 0
  localValue1(localValue2)
  localValue1 = IsDisabledControlJustReleased
  localValue2 = 0
  text7 = 202
  localValue1 = localValue1(localValue2, text7)
  if localValue1 then
    localValue1 = false
    return localValue1
  end
  localValue1 = drawNativeNotification
  localValue2 = [[
Use ~INPUT_LOOK_LR~ or ~INPUT_FRONTEND_LEFT~ and ~INPUT_FRONTEND_RIGHT~ to rotate
Press ~INPUT_FRONTEND_CANCEL~ to exit]]
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue1(localValue2)
  localValue1 = GetDisabledControlNormal
  localValue2 = 0
  text7 = 1
  localValue1 = localValue1(localValue2, text7)
  localValue2 = 0.02
  if not (localValue1 > localValue2) then
    localValue2 = IsDisabledControlPressed
    text7 = 0
    dataCollection = 190
    localValue2 = localValue2(text7, dataCollection)
    if not localValue2 then
      goto continueAtStep45
    end
  end
  localValue2 = GetCamRot
  text7 = number
  dataCollection = 2
  localValue2 = localValue2(text7, dataCollection)
  text7 = SetCamRot
  dataCollection = number
  stateFlag5 = localValue2.x
  text8 = localValue2.y
  text10 = localValue2.z
  workingValue5 = GetFrameTime
  workingValue5 = workingValue5()
  workingValue5 = workingValue5 * 100.0
  text10 = text10 - workingValue5
  workingValue5 = 2
  text7(dataCollection, stateFlag5, text8, text10, workingValue5)
  ::continueAtStep45::
  localValue2 = -0.02
  if not (localValue1 < localValue2) then
    localValue2 = IsDisabledControlPressed
    text7 = 0
    dataCollection = 189
    localValue2 = localValue2(text7, dataCollection)
    if not localValue2 then
      goto continueAtStep71
    end
  end
  localValue2 = GetCamRot
  text7 = number
  dataCollection = 2
  localValue2 = localValue2(text7, dataCollection)
  text7 = SetCamRot
  dataCollection = number
  stateFlag5 = localValue2.x
  text8 = localValue2.y
  text10 = localValue2.z
  workingValue5 = GetFrameTime
  workingValue5 = workingValue5()
  workingValue5 = workingValue5 * 100.0
  text10 = text10 + workingValue5
  workingValue5 = 2
  text7(dataCollection, stateFlag5, text8, text10, workingValue5)
  ::continueAtStep71::
  localValue2 = true
  return localValue2
end
eventHandler = RegisterNetEvent
text = "44db557297"
-- Beginner: this function handles network event "44db557297".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, text7, dataCollection, stateFlag5, text8, text10, workingValue5, number3, stateFlag6, stateFlag
  localValue2 = cmgOperation.homes
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    return
  end
  text7 = stateFlag4
  if text7 then
    return
  end
  text7 = true
  stateFlag4 = text7
  text7 = vector3
  dataCollection = localValue2.entry_point
  dataCollection = dataCollection[1]
  stateFlag5 = localValue2.entry_point
  stateFlag5 = stateFlag5[2]
  text8 = localValue2.entry_point
  text8 = text8[3]
  text7 = text7(dataCollection, stateFlag5, text8)
  createVector3 = text7
  text7 = CreateCam
  dataCollection = "DEFAULT_SCRIPTED_CAMERA"
  stateFlag5 = true
  -- Beginner: result below is cameraHandle.
  text7 = text7(dataCollection, stateFlag5)
  number = text7
  text7 = SetCamCoord
  dataCollection = number
  stateFlag5 = createVector3.x
  text8 = createVector3.y
  text10 = createVector3.z
  text7(dataCollection, stateFlag5, text8, text10)
  text7 = RenderScriptCams
  dataCollection = true
  stateFlag5 = false
  text8 = 0
  text10 = false
  workingValue5 = false
  text7(dataCollection, stateFlag5, text8, text10, workingValue5)
  text7 = SetFocusArea
  dataCollection = createVector3.x
  stateFlag5 = createVector3.y
  text8 = createVector3.z
  text10 = 0.0
  workingValue5 = 0.0
  number3 = 0.0
  text7(dataCollection, stateFlag5, text8, text10, workingValue5, number3)
  text7 = "cmg_doorbell_"
  dataCollection = localValue1
  text7 = text7 .. dataCollection
  dataCollection = GetResourceKvpFloat
  stateFlag5 = text7
  dataCollection = dataCollection(stateFlag5)
  if dataCollection and 0.0 ~= dataCollection then
    stateFlag5 = SetCamRot
    text8 = number
    text10 = 0.0
    workingValue5 = 0.0
    number3 = dataCollection
    stateFlag6 = 2
    stateFlag5(text8, text10, workingValue5, number3, stateFlag6)
  end
  while true do
    stateFlag5 = stateFlag4
    if not stateFlag5 then
      break
    end
    stateFlag5 = cmgOperation3
    stateFlag5 = stateFlag5()
    if not stateFlag5 then
      break
    end
    stateFlag5 = Wait
    text8 = 0
    stateFlag5(text8)
  end
  stateFlag5 = GetCamRot
  text8 = number
  text10 = 2
  stateFlag5 = stateFlag5(text8, text10)
  text8 = SetResourceKvpFloat
  text10 = text7
  workingValue5 = stateFlag5.z
  text8(text10, workingValue5)
  text8 = ClearFocus
  text8()
  text8 = DestroyCam
  text10 = number
  workingValue5 = false
  text8(text10, workingValue5)
  text8 = RenderScriptCams
  text10 = false
  workingValue5 = false
  number3 = 0
  stateFlag6 = false
  stateFlag = false
  text8(text10, workingValue5, number3, stateFlag6, stateFlag)
  text8 = 0
  number = text8
  text8 = false
  stateFlag4 = text8
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "44db557297".
eventHandler(text, text2)
eventHandler = RegisterNetEvent
text = "4aecf540ff"
-- Beginner: this function handles network event "4aecf540ff".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, text7, dataCollection, stateFlag5, text8
  dataCollection2 = localValue1
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  text7 = RMenu
  dataCollection = text7
  text7 = text7.Get
  stateFlag5 = "motiondoorbell"
  text8 = "mainmenu"
  -- Beginner: result below is menu.
  text7 = text7(dataCollection, stateFlag5, text8)
  dataCollection = true
  localValue2(text7, dataCollection)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4aecf540ff".
eventHandler(text, text2)
eventHandler = RMenu
eventHandler = eventHandler.Add
text = "motiondoorbell"
text2 = "mainmenu"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text3 = "Motion Doorbell"
text5 = "Main Menu"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3, rageUiOperation4 = rageUiOperation3()
rageUiOperation, text3, text5, rageUiOperation2, rageUiOperation3, rageUiOperation4 = rageUiOperation(text3, text5, rageUiOperation2, rageUiOperation3, rageUiOperation4)
eventHandler(text, text2, rageUiOperation, text3, text5, rageUiOperation2, rageUiOperation3, rageUiOperation4)
eventHandler = RMenu
eventHandler = eventHandler.Add
text = "motiondoorbell"
text2 = "dooroptions"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text3 = RMenu
text5 = text3
text3 = text3.Get
rageUiOperation2 = "motiondoorbell"
rageUiOperation3 = "mainmenu"
-- Beginner: result below is menu.
text3 = text3(text5, rageUiOperation2, rageUiOperation3)
text5 = "Motion Doorbell"
rageUiOperation2 = "Door Options"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
rageUiOperation, text3, text5, rageUiOperation2, rageUiOperation3, rageUiOperation4 = rageUiOperation(text3, text5, rageUiOperation2, rageUiOperation3, rageUiOperation4)
eventHandler(text, text2, rageUiOperation, text3, text5, rageUiOperation2, rageUiOperation3, rageUiOperation4)
eventHandler = RageUI
eventHandler = eventHandler.CreateWhile
text = 1.0
text2 = RMenu
rageUiOperation = text2
text2 = text2.Get
text3 = "motiondoorbell"
text5 = "mainmenu"
-- Beginner: result below is menu.
text2 = text2(rageUiOperation, text3, text5)
rageUiOperation = nil

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, text7, dataCollection, stateFlag5, text8, text10
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  text7 = localValue2
  localValue2 = localValue2.Get
  dataCollection = "motiondoorbell"
  stateFlag5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(text7, dataCollection, stateFlag5)
  text7 = true
  dataCollection = false
  stateFlag5 = true

  -- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
  function text8()
    local localValue12, localValue22, localValue3, localValue4, cmgOperation2, rageUiOperation5, serverEventCall2, text11, dataCollection3, stateFlag7, workingValue, workingValue2, workingValue3, text4, text6
    localValue12 = pairs
    localValue22 = dataCollection2
    localValue12, localValue22, localValue3, localValue4 = localValue12(localValue22)
    for cmgOperation2 in localValue12, localValue22, localValue3, localValue4 do
      rageUiOperation5 = RageUI
      rageUiOperation5 = rageUiOperation5.ButtonWithStyle
      serverEventCall2 = cmgOperation2
      text11 = ""
      dataCollection3 = {}
      dataCollection3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag7 = true

      -- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue13, localValue23, localValue32) ===
      function workingValue(localValue13, localValue23, localValue32)
        local localValue42
        if localValue32 then
          localValue42 = cmgOperation2
          number2 = localValue42
        end
      end
      workingValue2 = RMenu
      workingValue3 = workingValue2
      workingValue2 = workingValue2.Get
      text4 = "motiondoorbell"
      text6 = "dooroptions"
      workingValue2, workingValue3, text4, text6 = workingValue2(workingValue3, text4, text6)
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation5(serverEventCall2, text11, dataCollection3, stateFlag7, workingValue, workingValue2, workingValue3, text4, text6)
    end
  end

  -- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
  function text10()
    local localValue12, localValue22
  end
  localValue1(localValue2, text7, dataCollection, stateFlag5, text8, text10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  text7 = localValue2
  localValue2 = localValue2.Get
  dataCollection = "motiondoorbell"
  stateFlag5 = "dooroptions"
  -- Beginner: result below is menu.
  localValue2 = localValue2(text7, dataCollection, stateFlag5)
  text7 = true
  dataCollection = false
  stateFlag5 = true

  -- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
  function text8()
    local localValue12, localValue22, localValue3, localValue4, cmgOperation2, rageUiOperation5, serverEventCall2, text11, dataCollection3
    localValue12 = number2
    if not localValue12 then
      return
    end
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "View Camera"
    localValue3 = ""
    localValue4 = {}
    localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    cmgOperation2 = true

    -- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: localValue13, localValue23, localValue32) ===
    function rageUiOperation5(localValue13, localValue23, localValue32)
      local localValue42, serverEventCall, text9
      if localValue32 then
        localValue42 = RageUI
        localValue42 = localValue42.CloseAll
        localValue42()
        localValue42 = TriggerServerEvent
        serverEventCall = "44db557297"
        text9 = number2
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "44db557297".
        localValue42(serverEventCall, text9)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue3, localValue4, cmgOperation2, rageUiOperation5)
    localValue22 = number2
    localValue12 = dataCollection2
    localValue12 = localValue12[localValue22]
    localValue22 = RageUI
    localValue22 = localValue22.Checkbox
    localValue3 = "Motion Disabled"
    localValue4 = ""
    cmgOperation2 = localValue12
    rageUiOperation5 = {}

    -- === HELPER FUNCTION: serverEventCall2(localValue13, localValue23, localValue32, localValue42) ===
    function serverEventCall2(localValue13, localValue23, localValue32, localValue42)
      local serverEventCall, text9, workingValue4, workingValue6
      if localValue32 then
        text9 = number2
        serverEventCall = dataCollection2
        serverEventCall[text9] = localValue42
        serverEventCall = TriggerServerEvent
        text9 = "234e1fca14"
        workingValue4 = number2
        workingValue6 = localValue42
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "234e1fca14".
        serverEventCall(text9, workingValue4, workingValue6)
      end
    end

    -- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
    function text11()
      local localValue13, localValue23
    end

    -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
    function dataCollection3()
      local localValue13, localValue23
    end
    -- Beginner: Draw a RageUI checkbox.
    localValue22(localValue3, localValue4, cmgOperation2, rageUiOperation5, serverEventCall2, text11, dataCollection3)
  end

  -- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
  function text10()
    local localValue12, localValue22
  end
  localValue1(localValue2, text7, dataCollection, stateFlag5, text8, text10)
end
eventHandler(text, text2, rageUiOperation, text3)
