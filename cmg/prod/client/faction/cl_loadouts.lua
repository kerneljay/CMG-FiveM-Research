--[[
    LEVEL 1 BEGINNER GUIDE — Loadouts
    ======================================

    File: cmg/prod/client/faction/cl_loadouts.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: faction equipment/radio features, specifically the Loadouts feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 15
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
local cmgOperation, dataCollection3, workingValue2, number10, text7, workingValue3, text9, text11, rageUiOperation5, text14, text, rageUiOperation, rageUiOperation2, rageUiOperation3, text3, text4
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection3 = "cfg/cfg_loadouts"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection3)
dataCollection3 = {}
workingValue2 = nil
number10 = 0
text7 = ""
workingValue3 = RMenu
workingValue3 = workingValue3.Add
text9 = "loadouts"
text11 = "mainmenu"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateMenu
text14 = ""
text = "Loadouts"
rageUiOperation = CMG
rageUiOperation = rageUiOperation.getRageUIMenuWidth
rageUiOperation = rageUiOperation()
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuHeight
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = "cmg_loadouts"
text3 = "cmg_loadouts"
rageUiOperation5, text14, text, rageUiOperation, rageUiOperation2, rageUiOperation3, text3, text4 = rageUiOperation5(text14, text, rageUiOperation, rageUiOperation2, rageUiOperation3, text3)
workingValue3(text9, text11, rageUiOperation5, text14, text, rageUiOperation, rageUiOperation2, rageUiOperation3, text3, text4)
workingValue3 = RMenu
workingValue3 = workingValue3.Add
text9 = "loadouts"
text11 = "view"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text14 = RMenu
text = text14
text14 = text14.Get
rageUiOperation = "loadouts"
rageUiOperation2 = "mainmenu"
-- Beginner: result below is menu.
text14 = text14(text, rageUiOperation, rageUiOperation2)
text = ""
rageUiOperation = "Loadouts"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
text3 = "cmg_loadouts"
text4 = "cmg_loadouts"
rageUiOperation5, text14, text, rageUiOperation, rageUiOperation2, rageUiOperation3, text3, text4 = rageUiOperation5(text14, text, rageUiOperation, rageUiOperation2, rageUiOperation3, text3, text4)
workingValue3(text9, text11, rageUiOperation5, text14, text, rageUiOperation, rageUiOperation2, rageUiOperation3, text3, text4)
workingValue3 = RageUI
workingValue3 = workingValue3.CreateWhile
text9 = 1.0
text11 = RMenu
rageUiOperation5 = text11
text11 = text11.Get
text14 = "loadouts"
text = "mainmenu"
-- Beginner: result below is menu.
text11 = text11(rageUiOperation5, text14, text)
rageUiOperation5 = nil

-- === HELPER FUNCTION (decompiler name: text14; parameters: none) ===
function text14()
  local localValue1, localValue2, stateFlag4, stateFlag5, stateFlag6, stateFlag8
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag5 = "loadouts"
  stateFlag6 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag5, stateFlag6)
  stateFlag4 = true
  stateFlag5 = true
  stateFlag6 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: none) ===
  function stateFlag8()
    local localValue12, text5, text6, dataCollection4, stateFlag7, workingValue4, workingValue5, rageUiOperation4, text13, text15
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    text5 = "~y~View Custom Loadouts"
    text6 = ""
    dataCollection4 = {}
    dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag7 = true

    -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue13, localValue22, localValue3) ===
    function workingValue4(localValue13, localValue22, localValue3)
      local serverEventCall
      if localValue3 then
        serverEventCall = 0
        number10 = serverEventCall
      end
    end
    workingValue5 = RMenu
    rageUiOperation4 = workingValue5
    workingValue5 = workingValue5.Get
    text13 = "loadouts"
    text15 = "view"
    workingValue5, rageUiOperation4, text13, text15 = workingValue5(rageUiOperation4, text13, text15)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(text5, text6, dataCollection4, stateFlag7, workingValue4, workingValue5, rageUiOperation4, text13, text15)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    text5 = "~g~Save Current Loadout"
    text6 = ""
    dataCollection4 = {}
    dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag7 = true

    -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue13, localValue22, localValue3) ===
    function workingValue4(localValue13, localValue22, localValue3)
      local serverEventCall, text8, number11
      if localValue3 then
        serverEventCall = TriggerServerEvent
        text8 = "ee12a1db92"
        number11 = workingValue2
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ee12a1db92".
        serverEventCall(text8, number11)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(text5, text6, dataCollection4, stateFlag7, workingValue4)
  end
  localValue1(localValue2, stateFlag4, stateFlag5, stateFlag6, stateFlag8)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag5 = "loadouts"
  stateFlag6 = "view"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag5, stateFlag6)
  stateFlag4 = true
  stateFlag5 = true
  stateFlag6 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: none) ===
  function stateFlag8()
    local localValue12, text5, text6, dataCollection4, stateFlag7, workingValue4, workingValue5, rageUiOperation4, text13, text15, dataCollection, stringHelper, text2, workingValue
    text5 = workingValue2
    localValue12 = dataCollection3
    localValue12 = localValue12[text5]
    if localValue12 then
      text5 = #localValue12
      if 0 ~= text5 then
        goto continueAtStep14
      end
    end
    text5 = RageUI
    text5 = text5.Separator
    text6 = "~r~You have no saved loadouts in this category"
    text5(text6)
    return
    ::continueAtStep14::
    text5 = pairs
    text6 = localValue12
    text5, text6, dataCollection4, stateFlag7 = text5(text6)
    for workingValue4, workingValue5 in text5, text6, dataCollection4, stateFlag7 do
      rageUiOperation4 = RageUI
      rageUiOperation4 = rageUiOperation4.ButtonWithStyle
      text13 = workingValue5.name
      text15 = text7
      dataCollection = {}
      stringHelper = string
      stringHelper = stringHelper.format
      text2 = "\194\163%s"
      workingValue = workingValue5.price
      stringHelper = stringHelper(text2, workingValue)
      dataCollection.RightLabel = stringHelper
      stringHelper = true

      -- === HELPER FUNCTION (decompiler name: text2; parameters: localValue13, localValue22, localValue3) ===
      function text2(localValue13, localValue22, localValue3)
        local serverEventCall, text8, number11, workingValue6, workingValue7
        if localValue22 then
          serverEventCall = number10
          text8 = workingValue4
          if serverEventCall ~= text8 then
            serverEventCall = workingValue4
            number10 = serverEventCall
            serverEventCall = ""
            text7 = serverEventCall
            serverEventCall = TriggerServerEvent
            text8 = "78e1192fb6"
            number11 = workingValue2
            workingValue6 = workingValue4
            workingValue7 = workingValue5.items
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "78e1192fb6".
            serverEventCall(text8, number11, workingValue6, workingValue7)
          end
        end
        if localValue22 then
          serverEventCall = drawNativeNotification
          text8 = "Press ~INPUT_FRONTEND_DELETE~ to delete this loadout"
          -- Beginner: Show a GTA-style notification/help prompt.
          serverEventCall(text8)
          serverEventCall = IsControlJustPressed
          text8 = 0
          number11 = 214
          serverEventCall = serverEventCall(text8, number11)
          if serverEventCall then
            serverEventCall = table
            serverEventCall = serverEventCall.remove
            text8 = localValue12
            number11 = workingValue4
            serverEventCall(text8, number11)
            serverEventCall = SetResourceKvp
            text8 = "cmg_loadouts"
            number11 = json
            number11 = number11.encode
            workingValue6 = dataCollection3
            number11, workingValue6, workingValue7 = number11(workingValue6)
            serverEventCall(text8, number11, workingValue6, workingValue7)
            serverEventCall = notify
            text8 = "~r~Loadout removed successfully."
            -- Beginner: Show a notification to the player.
            serverEventCall(text8)
          end
        end
        if localValue3 then
          serverEventCall = CMG
          serverEventCall = serverEventCall.isPlatClub
          serverEventCall = serverEventCall()
          if serverEventCall then
            serverEventCall = TriggerServerEvent
            text8 = "cbd7c161ac"
            number11 = workingValue2
            workingValue6 = workingValue5.items
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cbd7c161ac".
            serverEventCall(text8, number11, workingValue6)
          else
            serverEventCall = notify
            text8 = "~y~You need to be a subscriber of CMG Platinum to use this feature."
            -- Beginner: Show a notification to the player.
            serverEventCall(text8)
            serverEventCall = notify
            text8 = "~y~Available @ store.cmgstudios.net"
            serverEventCall(text8)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation4(text13, text15, dataCollection, stringHelper, text2)
    end
  end
  localValue1(localValue2, stateFlag4, stateFlag5, stateFlag6, stateFlag8)
end
workingValue3(text9, text11, rageUiOperation5, text14)

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, stateFlag4, stateFlag5, stateFlag6, stateFlag8, text10, cmgOperation2
  localValue2 = cmgOperation.types
  stateFlag4 = localValue1.info
  stateFlag4 = stateFlag4.type
  localValue2 = localValue2[stateFlag4]
  if localValue2 then
    stateFlag4 = localValue2.permission
    if stateFlag4 then
      stateFlag4 = CMG
      stateFlag4 = stateFlag4.hasClientPermission
      stateFlag5 = localValue2.permission
      stateFlag4 = stateFlag4(stateFlag5)
      if stateFlag4 then
        stateFlag4 = localValue1.info
        stateFlag4 = stateFlag4.type
        workingValue2 = stateFlag4
        stateFlag5 = workingValue2
        stateFlag4 = dataCollection3
        stateFlag4 = stateFlag4[stateFlag5]
        if stateFlag4 then
          stateFlag5 = #stateFlag4
          if stateFlag5 > 0 then
            stateFlag5 = TriggerServerEvent
            stateFlag6 = "fbc104fb05"
            stateFlag8 = workingValue2
            text10 = stateFlag4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fbc104fb05".
            stateFlag5(stateFlag6, stateFlag8, text10)
          end
        end
        stateFlag5 = RageUI
        stateFlag5 = stateFlag5.Visible
        stateFlag6 = RMenu
        stateFlag8 = stateFlag6
        stateFlag6 = stateFlag6.Get
        text10 = "loadouts"
        cmgOperation2 = "mainmenu"
        -- Beginner: result below is menu.
        stateFlag6 = stateFlag6(stateFlag8, text10, cmgOperation2)
        stateFlag8 = true
        stateFlag5(stateFlag6, stateFlag8)
      else
        stateFlag4 = notify
        stateFlag5 = "~r~No permission to access loadouts here."
        -- Beginner: Show a notification to the player.
        stateFlag4(stateFlag5)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2
  localValue1 = RageUI
  localValue1 = localValue1.IsAnyMenuOfTypeVisible
  localValue2 = "loadouts"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.CloseAll
    localValue1()
  end
end
text11 = Citizen
text11 = text11.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: none) ===
function rageUiOperation5()
  local localValue1, localValue2, stateFlag4, stateFlag5, stateFlag6, stateFlag8, text10, cmgOperation2, text12, stringHelper2, number, number2, number3, number4, number5, dataCollection2, number6, number7, number8, number9, stateFlag, stateFlag2, stateFlag3
  localValue1 = GetResourceKvpString
  localValue2 = "cmg_loadouts"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue2 = json
    localValue2 = localValue2.decode
    stateFlag4 = localValue1
    localValue2 = localValue2(stateFlag4)
    if not localValue2 then
      localValue2 = {}
    end
    dataCollection3 = localValue2
  end
  localValue2 = pairs
  stateFlag4 = cmgOperation.locations
  localValue2, stateFlag4, stateFlag5, stateFlag6 = localValue2(stateFlag4)
  for stateFlag8, text10 in localValue2, stateFlag4, stateFlag5, stateFlag6 do
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.createArea
    text12 = "loadout_"
    stringHelper2 = tostring
    number = stateFlag8
    stringHelper2 = stringHelper2(number)
    text12 = text12 .. stringHelper2
    stringHelper2 = text10.position
    number = 1.5
    number2 = 2.5
    number3 = workingValue3
    number4 = text9

    -- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
    function number5()
      local localValue12, text5
    end
    dataCollection2 = {}
    dataCollection2.info = text10
    -- Beginner: Create an interaction area around a world position.
    cmgOperation2(text12, stringHelper2, number, number2, number3, number4, number5, dataCollection2)
    cmgOperation2 = tCMG
    cmgOperation2 = cmgOperation2.addMarker
    text12 = text10.position
    text12 = text12.x
    stringHelper2 = text10.position
    stringHelper2 = stringHelper2.y
    number = text10.position
    number = number.z
    number = number - 0.2
    number2 = 0.5
    number3 = 0.5
    number4 = 0.5
    number5 = 255
    dataCollection2 = 165
    number6 = 0
    number7 = 170
    number8 = 50
    number9 = 20
    stateFlag = false
    stateFlag2 = false
    stateFlag3 = true
    -- Beginner: Create a world marker.
    cmgOperation2(text12, stringHelper2, number, number2, number3, number4, number5, dataCollection2, number6, number7, number8, number9, stateFlag, stateFlag2, stateFlag3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text11(rageUiOperation5)
text11 = RegisterNetEvent
rageUiOperation5 = "cbd7c161ac"
-- Beginner: this function handles network event "cbd7c161ac".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1) ===
function text14(localValue1)
  local localValue2, stateFlag4, stateFlag5, stateFlag6, stateFlag8, text10, cmgOperation2, text12, stringHelper2, number
  localValue2 = pairs
  stateFlag4 = localValue1
  localValue2, stateFlag4, stateFlag5, stateFlag6 = localValue2(stateFlag4)
  for stateFlag8, text10 in localValue2, stateFlag4, stateFlag5, stateFlag6 do
    cmgOperation2 = text10.isInGunstore
    if cmgOperation2 then
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.purchaseFromGunstore
      text12 = text10.gunstoreName
      stringHelper2 = stateFlag8
      number = text10.amount
      cmgOperation2(text12, stringHelper2, number)
    else
      cmgOperation2 = text10.isInMarket
      if cmgOperation2 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.purchaseFromMarket
        text12 = text10.marketName
        stringHelper2 = stateFlag8
        number = text10.amount
        cmgOperation2(text12, stringHelper2, number)
      end
    end
  end
  localValue2 = TriggerServerEvent
  stateFlag4 = "53d18271be"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "53d18271be".
  localValue2(stateFlag4)
  localValue2 = notify
  stateFlag4 = "~g~Custom loadout equipped!"
  -- Beginner: Show a notification to the player.
  localValue2(stateFlag4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cbd7c161ac".
text11(rageUiOperation5, text14)
text11 = RegisterNetEvent
rageUiOperation5 = "ee12a1db92"
-- Beginner: this function handles network event "ee12a1db92".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1, localValue2) ===
function text14(localValue1, localValue2)
  local stateFlag4, stateFlag5, stateFlag6, stateFlag8
  stateFlag4 = dataCollection3
  stateFlag4 = stateFlag4[localValue1]
  if not stateFlag4 then
    stateFlag4 = dataCollection3
    stateFlag5 = {}
    stateFlag4[localValue1] = stateFlag5
  end
  stateFlag4 = CMG
  stateFlag4 = stateFlag4.clientPrompt
  stateFlag5 = "Enter Loadout Name"
  stateFlag6 = ""

  -- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: localValue12) ===
  function stateFlag8(localValue12)
    local text5, text6, dataCollection4, stateFlag7, workingValue4
    text5 = #localValue12
    if text5 < 2 then
      text5 = notify
      text6 = "~r~Loadout name must be at least 2 characters."
      -- Beginner: Show a notification to the player.
      text5(text6)
      return
    end
    text5 = {}
    text5.name = localValue12
    text6 = localValue2
    text5.items = text6
    text6 = table
    text6 = text6.insert
    stateFlag7 = localValue1
    dataCollection4 = dataCollection3
    dataCollection4 = dataCollection4[stateFlag7]
    stateFlag7 = text5
    text6(dataCollection4, stateFlag7)
    text6 = SetResourceKvp
    dataCollection4 = "cmg_loadouts"
    stateFlag7 = json
    stateFlag7 = stateFlag7.encode
    workingValue4 = dataCollection3
    stateFlag7, workingValue4 = stateFlag7(workingValue4)
    text6(dataCollection4, stateFlag7, workingValue4)
    text6 = notify
    dataCollection4 = "~g~Loadout saved successfully!"
    -- Beginner: Show a notification to the player.
    text6(dataCollection4)
  end
  stateFlag4(stateFlag5, stateFlag6, stateFlag8)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ee12a1db92".
text11(rageUiOperation5, text14)
text11 = RegisterNetEvent
rageUiOperation5 = "78e1192fb6"
-- Beginner: this function handles network event "78e1192fb6".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1, localValue2) ===
function text14(localValue1, localValue2)
  local stateFlag4
  stateFlag4 = number10
  if localValue1 == stateFlag4 then
    text7 = localValue2
  end
end
text11(rageUiOperation5, text14)
text11 = RegisterNetEvent
rageUiOperation5 = "d39749e61b"
-- Beginner: this function handles network event "d39749e61b".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1, localValue2) ===
function text14(localValue1, localValue2)
  local stateFlag4
  stateFlag4 = workingValue2
  if stateFlag4 == localValue1 then
    stateFlag4 = dataCollection3
    stateFlag4[localValue1] = localValue2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d39749e61b".
text11(rageUiOperation5, text14)
