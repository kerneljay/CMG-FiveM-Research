--[[
    LEVEL 1 BEGINNER GUIDE — Radios
    ====================================

    File: cmg/prod/client/faction/cl_radios.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: faction equipment/radio features, specifically the Radios feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 85
      * Background threads: 0
      * Always-running loops: 3
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
local cmgOperation, dataCollection, number2, stateFlag8, stateFlag11, dataCollection2, dataCollection3, number4, cmgOperation5, workingValue26, workingValue, workingValue3, workingValue5, cmgOperation2, workingValue8, workingValue10, workingValue12, workingValue14, eventHandler, eventHandler2, text4, stateFlag6, eventHandlerRegistration, text5, text6, rageUiOperation2, text7, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection = "cfg/cfg_radios"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection)
dataCollection = {}
number2 = 0
stateFlag8 = false
stateFlag11 = false
dataCollection2 = {}
dataCollection3 = {}
number4 = 0
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: none) ===
function workingValue26()
  local localValue1, localValue2
  localValue1 = number2
  localValue1 = 0 ~= localValue1
  return localValue1
end
cmgOperation5.isInRadioChannel = workingValue26
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: none) ===
function workingValue26()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.isEmergencyService
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = stateFlag11
    return localValue1
  else
    localValue1 = stateFlag8
    return localValue1
  end
end
cmgOperation5.hasRadioItem = workingValue26
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue1) ===
function workingValue26(localValue1)
  local localValue2
  localValue2 = dataCollection2
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue2 = false
  end
  return localValue2
end
cmgOperation5.doesPlayerHaveRadioItem = workingValue26

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2, localValue3
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue3 = true
    return localValue3
  end
  localValue3 = localValue2.noRadioItemRequired
  localValue3 = not localValue3
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: none) ===
function workingValue26()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = CMG
  localValue1 = localValue1.hasRadioItem
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = true
    return localValue1
  end
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = localValue6.noRadioItemRequired
    if localValue7 then
      localValue7 = true
      return localValue7
    end
  end
  localValue1 = false
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = CMG
  localValue1 = localValue1.hasRadioItem
  localValue1 = localValue1()
  if not localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.isInRadioChannel
    localValue2 = localValue2()
    if localValue2 then
      localValue2 = cmgOperation5
      localValue3 = number2
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue1 = true
      end
    end
  end
  if localValue1 then
    localValue2 = LocalPlayer
    localValue2 = localValue2.state
    localValue3 = localValue2
    localValue2 = localValue2.set
    localValue4 = "hasRadio"
    localValue5 = true
    localValue6 = true
    localValue2(localValue3, localValue4, localValue5, localValue6)
  else
    localValue2 = LocalPlayer
    localValue2 = localValue2.state
    localValue3 = localValue2
    localValue2 = localValue2.set
    localValue4 = "hasRadio"
    localValue5 = nil
    localValue6 = true
    localValue2(localValue3, localValue4, localValue5, localValue6)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2
  localValue1 = SendNUIMessage
  localValue2 = {}
  localValue2.radioClear = true
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3
  localValue2 = SendNUIMessage
  localValue3 = {}
  localValue3.radioVisibility = true
  localValue3.isVisible = localValue1
  localValue2(localValue3)
end
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3
  localValue1 = GetResourceKvpInt
  localValue2 = "cmg_radio_transparent_background"
  localValue1 = localValue1(localValue2)
  localValue1 = 1 == localValue1
  localValue2 = SendNUIMessage
  localValue3 = {}
  localValue3.radioTransparentBackground = true
  localValue3.enabled = localValue1
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue2(localValue3)
end
cmgOperation2.syncRadioListNuiAppearance = workingValue8

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3
  localValue2 = SendNUIMessage
  localValue3 = {}
  localValue3.radioHeader = true
  localValue3.name = localValue1
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2, localValue3) ===
function workingValue8(localValue1, localValue2, localValue3)
  local localValue4, localValue5
  localValue4 = SendNUIMessage
  localValue5 = {}
  localValue5.radioAdd = true
  localValue5.playerSrc = localValue1
  localValue5.name = localValue2
  localValue5.sortOrder = localValue3
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue4(localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3
  localValue2 = SendNUIMessage
  localValue3 = {}
  localValue3.radioRemove = true
  localValue3.playerSrc = localValue1
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1, localValue2) ===
function workingValue12(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = SendNUIMessage
  localValue4 = {}
  localValue4.radioTalking = true
  localValue4.playerSrc = localValue1
  localValue4.isTalking = localValue2
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue3(localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1, localValue2) ===
function workingValue14(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = SendNUIMessage
  localValue4 = {}
  localValue4.radioMuted = true
  localValue4.playerSrc = localValue1
  localValue4.isMuted = localValue2
  localValue3(localValue4)
end
eventHandler = RegisterNetEvent
eventHandler2 = "a38ff88f92"
-- Beginner: this function handles network event "a38ff88f92".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2, localValue3) ===
function text4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, number5
  localValue4 = dataCollection
  localValue4 = localValue4[localValue1]
  if not localValue4 then
    return
  end
  localValue5 = localValue4.players
  localValue5[localValue2] = localValue3
  localValue5 = number2
  if localValue1 == localValue5 then
    localValue5 = workingValue8
    localValue6 = localValue2
    localValue7 = localValue3.name
    number5 = localValue3.sortOrder
    localValue5(localValue6, localValue7, number5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a38ff88f92".
eventHandler(eventHandler2, text4)
eventHandler = RegisterNetEvent
eventHandler2 = "41653b2e1e"
-- Beginner: this function handles network event "41653b2e1e".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = dataCollection
  localValue3 = localValue3[localValue1]
  if not localValue3 then
    return
  end
  localValue4 = localValue3.players
  localValue4[localValue2] = nil
  localValue4 = number2
  if localValue1 == localValue4 then
    localValue4 = workingValue10
    localValue5 = localValue2
    localValue4(localValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "41653b2e1e".
eventHandler(eventHandler2, text4)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3
  localValue1 = exports
  localValue1 = localValue1["pma-voice"]
  localValue2 = localValue1
  localValue1 = localValue1.setRadioChannel
  localValue3 = 0
  localValue1(localValue2, localValue3)
  localValue1 = workingValue5
  localValue2 = false
  localValue1(localValue2)
  localValue1 = workingValue3
  localValue1()
  localValue1 = 0
  number2 = localValue1
  localValue1 = workingValue
  localValue1()
end
eventHandler2 = RegisterNetEvent
text4 = "4613b3b411"
-- Beginner: this function handles network event "4613b3b411".

-- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: none) ===
function stateFlag6()
  local localValue1, localValue2
  localValue1 = eventHandler
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue1()
  localValue1 = {}
  dataCollection = localValue1
  localValue1 = workingValue
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4613b3b411".
eventHandler2(text4, stateFlag6)
eventHandler2 = RegisterNetEvent
text4 = "pma-voice:setTalkingOnRadio"
-- Beginner: this function handles network event "pma-voice:setTalkingOnRadio".

-- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: localValue1, localValue2) ===
function stateFlag6(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = workingValue12
  localValue4 = localValue1
  localValue5 = localValue2
  localValue3(localValue4, localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "pma-voice:setTalkingOnRadio".
eventHandler2(text4, stateFlag6)
-- Beginner: this function handles network event "pma-voice:setTalkingOnRadio".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = table
  localValue2 = localValue2.insert
  localValue3 = dataCollection3
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
  localValue2 = exports
  localValue2 = localValue2["pma-voice"]
  localValue3 = localValue2
  localValue2 = localValue2.overrideProximityRange
  localValue4 = dataCollection3
  localValue5 = #localValue4
  localValue4 = dataCollection3
  localValue4 = localValue4[localValue5]
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = table
  localValue1 = localValue1.remove
  localValue2 = dataCollection3
  localValue3 = dataCollection3
  localValue3 = #localValue3
  localValue1(localValue2, localValue3)
  localValue1 = dataCollection3
  localValue2 = #localValue1
  localValue1 = dataCollection3
  localValue1 = localValue1[localValue2]
  if localValue1 then
    localValue1 = exports
    localValue1 = localValue1["pma-voice"]
    localValue2 = localValue1
    localValue1 = localValue1.overrideProximityRange
    localValue3 = dataCollection3
    localValue4 = #localValue3
    localValue3 = dataCollection3
    localValue3 = localValue3[localValue4]
    localValue4 = true
    localValue1(localValue2, localValue3, localValue4)
  else
    localValue1 = exports
    localValue1 = localValue1["pma-voice"]
    localValue2 = localValue1
    localValue1 = localValue1.clearProximityOverride
    localValue1(localValue2)
  end
end
stateFlag6 = false
eventHandlerRegistration = AddEventHandler
text5 = "pma-voice:radioActive"
-- Beginner: this function runs when client event "pma-voice:radioActive" fires.

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue12
  localValue3 = GetPlayerServerId
  localValue4 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue4 = localValue4()
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
  if localValue1 then
    localValue2 = stateFlag6
    if not localValue2 then
      localValue2 = eventHandler2
      localValue3 = 0.75
      -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.75.
      localValue2(localValue3)
      localValue2 = true
      stateFlag6 = localValue2
    end
  else
    localValue2 = stateFlag6
    if localValue2 then
      localValue2 = text4
      localValue2()
      localValue2 = false
      stateFlag6 = localValue2
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "pma-voice:radioActive".
eventHandlerRegistration(text5, text6)
eventHandlerRegistration = RMenu
eventHandlerRegistration = eventHandlerRegistration.Add
text5 = "radios"
text6 = "mainmenu"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text7 = "Radios"
text8 = "Main Menu"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13 = rageUiOperation4()
rageUiOperation2, text7, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13 = rageUiOperation2(text7, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13)
eventHandlerRegistration(text5, text6, rageUiOperation2, text7, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13)
eventHandlerRegistration = RMenu
eventHandlerRegistration = eventHandlerRegistration.Add
text5 = "radios"
text6 = "advancedeffects"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text7 = RMenu
text8 = text7
text7 = text7.Get
rageUiOperation3 = "radios"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text7 = text7(text8, rageUiOperation3, rageUiOperation4)
text8 = "Radios"
rageUiOperation3 = "Advanced Effects"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13 = rageUiOperation5()
rageUiOperation2, text7, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13 = rageUiOperation2(text7, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13)
eventHandlerRegistration(text5, text6, rageUiOperation2, text7, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13)
eventHandlerRegistration = RMenu
eventHandlerRegistration = eventHandlerRegistration.Add
text5 = "radios"
text6 = "channelinfo"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text7 = RMenu
text8 = text7
text7 = text7.Get
rageUiOperation3 = "radios"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text7 = text7(text8, rageUiOperation3, rageUiOperation4)
text8 = "Radios"
rageUiOperation3 = "Channel Information"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13 = rageUiOperation5()
rageUiOperation2, text7, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13 = rageUiOperation2(text7, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13)
eventHandlerRegistration(text5, text6, rageUiOperation2, text7, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, rageUiOperation6, text9, workingValue23, stateFlag7, text11, stateFlag9, eventHandler3, cmgOperation3, workingValue24, eventHandlerRegistration2, cmgOperation4, text12, stateFlag10, text13)

-- === HELPER FUNCTION: eventHandlerRegistration(localValue1, localValue2) ===
function eventHandlerRegistration(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = GetResourceKvpInt
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if localValue3 <= 0 then
    localValue3 = localValue2
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3
  localValue1 = GetResourceKvpString
  localValue2 = "radios_advancedEffects"
  localValue1 = localValue1(localValue2)
  if not localValue1 or "" == localValue1 then
    localValue2 = table
    localValue2 = localValue2.copy
    localValue3 = cmgOperation.advancedEffects
    return localValue2(localValue3)
  else
    localValue2 = json
    localValue2 = localValue2.decode
    localValue3 = localValue1
    return localValue2(localValue3)
  end
end
text6 = 0
rageUiOperation2 = eventHandlerRegistration
text7 = "radios_volume"
text8 = 10
rageUiOperation2 = rageUiOperation2(text7, text8)
text7 = -1
text8 = eventHandlerRegistration
rageUiOperation3 = "radios_leftChannelVolume"
rageUiOperation4 = 6
text8 = text8(rageUiOperation3, rageUiOperation4)
rageUiOperation3 = eventHandlerRegistration
rageUiOperation4 = "radios_rightChannelVolume"
rageUiOperation5 = 6
rageUiOperation3 = rageUiOperation3(rageUiOperation4, rageUiOperation5)
rageUiOperation4 = text5
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = false

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: none) ===
function workingValue18()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue
  localValue1 = SetAudioSubmixOutputVolumes
  localValue2 = text7
  localValue3 = 0
  localValue4 = text8
  localValue4 = localValue4 / 6
  localValue5 = rageUiOperation3
  localValue5 = localValue5 / 6
  localValue6 = 0.0
  localValue7 = 0.0
  number5 = 1.0
  hashValue = 1.0
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue)
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
function workingValue19()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue, workingValue27
  localValue1 = pairs
  localValue2 = cmgOperation.advancedEffects
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5 in localValue1, localValue2, localValue3, localValue4 do
    localValue6 = SetAudioSubmixEffectParamFloat
    localValue7 = text7
    number5 = 0
    hashValue = GetHashKey
    workingValue27 = localValue5
    -- Beginner: result below is hash.
    hashValue = hashValue(workingValue27)
    workingValue27 = rageUiOperation4
    workingValue27 = workingValue27[localValue5]
    workingValue27 = workingValue27 + 0.0
    localValue6(localValue7, number5, hashValue, workingValue27)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: none) ===
function workingValue20()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = SetResourceKvp
  localValue2 = "radios_advancedEffects"
  localValue3 = json
  localValue3 = localValue3.encode
  localValue4 = rageUiOperation4
  localValue3, localValue4 = localValue3(localValue4)
  localValue1(localValue2, localValue3, localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue1, localValue2, localValue3) ===
function workingValue21(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, number5, hashValue, workingValue27, workingValue2, stateFlag, workingValue6
  localValue4 = cmgOperation5
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = CMG
    localValue4 = localValue4.hasRadioItem
    localValue4 = localValue4()
    if not localValue4 then
      localValue4 = notify
      localValue5 = "~r~You are missing a radio item."
      -- Beginner: Show a notification to the player.
      localValue4(localValue5)
      return
    end
  end
  localValue4 = rageUiOperation5
  if not localValue4 then
    localValue4 = workingValue18
    localValue4()
    localValue4 = workingValue19
    localValue4()
    localValue4 = true
    rageUiOperation5 = localValue4
  end
  localValue4 = number2
  if 0 ~= localValue4 then
    localValue4 = eventHandler
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    localValue4()
  end
  localValue4 = exports
  localValue4 = localValue4["pma-voice"]
  localValue5 = localValue4
  localValue4 = localValue4.setRadioChannel
  localValue6 = localValue1
  localValue4(localValue5, localValue6)
  localValue4 = exports
  localValue4 = localValue4["pma-voice"]
  localValue5 = localValue4
  localValue4 = localValue4.getRadioVolume
  localValue4 = localValue4(localValue5)
  if 0 == localValue4 then
    localValue4 = exports
    localValue4 = localValue4["pma-voice"]
    localValue5 = localValue4
    localValue4 = localValue4.setRadioVolume
    localValue6 = eventHandlerRegistration
    localValue7 = "radios_volume"
    number5 = 10
    localValue6 = localValue6(localValue7, number5)
    localValue6 = localValue6 * 10
    localValue4(localValue5, localValue6)
  end
  localValue4 = workingValue5
  localValue5 = true
  localValue4(localValue5)
  localValue4 = cmgOperation2
  localValue5 = localValue2.name
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue2.players
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for number5, hashValue in localValue4, localValue5, localValue6, localValue7 do
    workingValue27 = workingValue8
    workingValue2 = number5
    stateFlag = hashValue.name
    workingValue6 = hashValue.sortOrder
    workingValue27(workingValue2, stateFlag, workingValue6)
    workingValue27 = hashValue.isMuted
    if workingValue27 then
      workingValue27 = workingValue14
      workingValue2 = number5
      stateFlag = true
      workingValue27(workingValue2, stateFlag)
    end
  end
  number2 = localValue1
  if localValue3 then
    localValue4 = ExecuteCommand
    localValue5 = "toggleradiomute"
    localValue4(localValue5)
  end
  localValue4 = CMG
  localValue4 = localValue4.syncRadioListNuiAppearance
  localValue4()
  localValue4 = workingValue
  localValue4()
end

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: localValue1, localValue2) ===
function workingValue22(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue, workingValue27, workingValue2, stateFlag, workingValue6, tableHelper
  localValue3 = 1
  localValue4 = 25
  localValue5 = 1
  for localValue6 = localValue3, localValue4, localValue5 do
    localValue7 = pairs
    number5 = localValue1
    localValue7, number5, hashValue, workingValue27 = localValue7(number5)
    for workingValue2, stateFlag in localValue7, number5, hashValue, workingValue27 do
      workingValue6 = stateFlag.sortOrder
      if workingValue6 == localValue6 then
        workingValue6 = localValue2
        tableHelper = stateFlag
        workingValue6(tableHelper)
      end
    end
  end
end
rageUiOperation6 = RageUI
rageUiOperation6 = rageUiOperation6.CreateWhile
text9 = 1.0
workingValue23 = RMenu
stateFlag7 = workingValue23
workingValue23 = workingValue23.Get
text11 = "radios"
stateFlag9 = "mainmenu"
-- Beginner: result below is menu.
workingValue23 = workingValue23(stateFlag7, text11, stateFlag9)
stateFlag7 = nil

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "radios"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local rageUiOperation, text3, workingValue16, number3, text14, stateFlag12, dataCollection4, stringHelper2, dataCollection5, rageUiOperation7, players, workingValue4, workingValue7, stateFlag2, workingValue9, workingValue11, workingValue13, text, text2
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text3 = "Available Channels"
    rageUiOperation(text3)
    rageUiOperation = pairs
    text3 = dataCollection
    rageUiOperation, text3, workingValue16, number3 = rageUiOperation(text3)
    for text14, stateFlag12 in rageUiOperation, text3, workingValue16, number3 do
      dataCollection4 = number2
      dataCollection4 = text14 == dataCollection4
      stringHelper2 = string
      stringHelper2 = stringHelper2.format
      dataCollection5 = "Connected clients: %d"
      rageUiOperation7 = table
      rageUiOperation7 = rageUiOperation7.count
      players = stateFlag12.players
      rageUiOperation7, players, workingValue4, workingValue7, stateFlag2, workingValue9, workingValue11, workingValue13, text, text2 = rageUiOperation7(players)
      stringHelper2 = stringHelper2(dataCollection5, rageUiOperation7, players, workingValue4, workingValue7, stateFlag2, workingValue9, workingValue11, workingValue13, text, text2)
      if dataCollection4 then
        dataCollection5 = {}
        dataCollection5.RightLabel = "(Selected)"
        if dataCollection5 then
          goto continueAtStep31
        end
      end
      dataCollection5 = {}
      ::continueAtStep31::
      rageUiOperation7 = RageUI
      rageUiOperation7 = rageUiOperation7.ButtonWithStyle
      players = stateFlag12.name
      workingValue4 = stringHelper2
      workingValue7 = dataCollection5
      stateFlag2 = true

      -- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue12, localValue22, localValue32) ===
      function workingValue9(localValue12, localValue22, localValue32)
        local localValue42, workingValue25, stringHelper, text15, nameValue
        if localValue32 then
          localValue42 = RMenu
          workingValue25 = localValue42
          localValue42 = localValue42.Get
          stringHelper = "radios"
          text15 = "channelinfo"
          -- Beginner: result below is menu.
          localValue42 = localValue42(workingValue25, stringHelper, text15)
          workingValue25 = localValue42
          localValue42 = localValue42.SetSubtitle
          stringHelper = string
          stringHelper = stringHelper.format
          text15 = "Viewing %s"
          nameValue = stateFlag12.name
          stringHelper, text15, nameValue = stringHelper(text15, nameValue)
          localValue42(workingValue25, stringHelper, text15, nameValue)
          localValue42 = text14
          text6 = localValue42
        end
      end
      workingValue11 = RMenu
      workingValue13 = workingValue11
      workingValue11 = workingValue11.Get
      text = "radios"
      text2 = "channelinfo"
      workingValue11, workingValue13, text, text2 = workingValue11(workingValue13, text, text2)
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation7(players, workingValue4, workingValue7, stateFlag2, workingValue9, workingValue11, workingValue13, text, text2)
    end
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text3 = "Radio Settings"
    rageUiOperation(text3)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Slider
    text3 = "Total Volume"
    workingValue16 = rageUiOperation2
    number3 = 10
    text14 = ""
    stateFlag12 = false
    dataCollection4 = {}
    stringHelper2 = {}
    stringHelper2.R = 0
    stringHelper2.G = 0
    stringHelper2.B = 0
    stringHelper2.A = 255
    dataCollection4.ProgressBackgroundColor = stringHelper2
    stringHelper2 = {}
    stringHelper2.R = 0
    stringHelper2.G = 117
    stringHelper2.B = 194
    stringHelper2.A = 255
    dataCollection4.ProgressColor = stringHelper2
    stringHelper2 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function dataCollection5(localValue12, localValue22, localValue32, localValue42)
      local workingValue25, stringHelper, text15
      workingValue25 = rageUiOperation2
      if localValue42 ~= workingValue25 and localValue42 > 0 then
        rageUiOperation2 = localValue42
        workingValue25 = exports
        workingValue25 = workingValue25["pma-voice"]
        stringHelper = workingValue25
        workingValue25 = workingValue25.setRadioVolume
        text15 = rageUiOperation2
        text15 = text15 * 10
        workingValue25(stringHelper, text15)
        workingValue25 = SetResourceKvpInt
        stringHelper = "radios_volume"
        text15 = rageUiOperation2
        workingValue25(stringHelper, text15)
      end
    end
    rageUiOperation(text3, workingValue16, number3, text14, stateFlag12, dataCollection4, stringHelper2, dataCollection5)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Slider
    text3 = "Left Channel Volume"
    workingValue16 = text8
    number3 = 6
    text14 = ""
    stateFlag12 = false
    dataCollection4 = {}
    stringHelper2 = {}
    stringHelper2.R = 0
    stringHelper2.G = 0
    stringHelper2.B = 0
    stringHelper2.A = 255
    dataCollection4.ProgressBackgroundColor = stringHelper2
    stringHelper2 = {}
    stringHelper2.R = 0
    stringHelper2.G = 117
    stringHelper2.B = 194
    stringHelper2.A = 255
    dataCollection4.ProgressColor = stringHelper2
    stringHelper2 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function dataCollection5(localValue12, localValue22, localValue32, localValue42)
      local workingValue25, stringHelper, text15
      workingValue25 = text8
      if localValue42 ~= workingValue25 and localValue42 > 0 then
        text8 = localValue42
        workingValue25 = workingValue18
        workingValue25()
        workingValue25 = SetResourceKvpInt
        stringHelper = "radios_leftChannelVolume"
        text15 = text8
        workingValue25(stringHelper, text15)
      end
    end
    rageUiOperation(text3, workingValue16, number3, text14, stateFlag12, dataCollection4, stringHelper2, dataCollection5)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Slider
    text3 = "Right Channel Volume"
    workingValue16 = rageUiOperation3
    number3 = 6
    text14 = ""
    stateFlag12 = false
    dataCollection4 = {}
    stringHelper2 = {}
    stringHelper2.R = 0
    stringHelper2.G = 0
    stringHelper2.B = 0
    stringHelper2.A = 255
    dataCollection4.ProgressBackgroundColor = stringHelper2
    stringHelper2 = {}
    stringHelper2.R = 0
    stringHelper2.G = 117
    stringHelper2.B = 194
    stringHelper2.A = 255
    dataCollection4.ProgressColor = stringHelper2
    stringHelper2 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function dataCollection5(localValue12, localValue22, localValue32, localValue42)
      local workingValue25, stringHelper, text15
      workingValue25 = rageUiOperation3
      if localValue42 ~= workingValue25 and localValue42 > 0 then
        rageUiOperation3 = localValue42
        workingValue25 = workingValue18
        workingValue25()
        workingValue25 = SetResourceKvpInt
        stringHelper = "radios_rightChannelVolume"
        text15 = rageUiOperation3
        workingValue25(stringHelper, text15)
      end
    end
    rageUiOperation(text3, workingValue16, number3, text14, stateFlag12, dataCollection4, stringHelper2, dataCollection5)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Button
    text3 = "Advanced Effects"
    workingValue16 = ""
    number3 = true

    -- === HELPER FUNCTION (decompiler name: text14; parameters: none) ===
    function text14()
      local localValue12, localValue22
    end
    stateFlag12 = RMenu
    dataCollection4 = stateFlag12
    stateFlag12 = stateFlag12.Get
    stringHelper2 = "radios"
    dataCollection5 = "advancedeffects"
    stateFlag12, dataCollection4, stringHelper2, dataCollection5, rageUiOperation7, players, workingValue4, workingValue7, stateFlag2, workingValue9, workingValue11, workingValue13, text, text2 = stateFlag12(dataCollection4, stringHelper2, dataCollection5)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text3, workingValue16, number3, text14, stateFlag12, dataCollection4, stringHelper2, dataCollection5, rageUiOperation7, players, workingValue4, workingValue7, stateFlag2, workingValue9, workingValue11, workingValue13, text, text2)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local rageUiOperation, text3
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "radios"
  localValue5 = "channelinfo"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local rageUiOperation, text3, workingValue16, number3, text14, stateFlag12
    text3 = text6
    rageUiOperation = dataCollection
    rageUiOperation = rageUiOperation[text3]
    if not rageUiOperation then
      text3 = RageUI
      text3 = text3.GoBack
      text3()
      return
    end
    text3 = text6
    workingValue16 = number2
    if text3 ~= workingValue16 then
      text3 = RageUI
      text3 = text3.Button
      workingValue16 = "~b~Join Channel"
      number3 = nil
      text14 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue32) ===
      function stateFlag12(localValue12, localValue22, localValue32)
        local localValue42, workingValue25, stringHelper, text15
        if localValue32 then
          localValue42 = workingValue21
          workingValue25 = text6
          stringHelper = rageUiOperation
          text15 = false
          localValue42(workingValue25, stringHelper, text15)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      text3(workingValue16, number3, text14, stateFlag12)
    else
      text3 = RageUI
      text3 = text3.Button
      workingValue16 = "~r~Leave Channel"
      number3 = nil
      text14 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue32) ===
      function stateFlag12(localValue12, localValue22, localValue32)
        local localValue42
        if localValue32 then
          localValue42 = eventHandler
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          localValue42()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      text3(workingValue16, number3, text14, stateFlag12)
    end
    text3 = RageUI
    text3 = text3.Separator
    workingValue16 = "Connected Clients"
    text3(workingValue16)
    text3 = workingValue22
    workingValue16 = rageUiOperation.players

    -- === HELPER FUNCTION (decompiler name: number3; parameters: localValue12) ===
    function number3(localValue12)
      local localValue22, localValue32, localValue42, workingValue25, stringHelper, text15
      localValue22 = RageUI
      localValue22 = localValue22.Button
      localValue32 = localValue12.name
      localValue42 = nil
      workingValue25 = true

      -- === HELPER FUNCTION: stringHelper() ===
      function stringHelper()
        local localValue13, workingValue15
      end
      text15 = nil
      -- Beginner: Draw a selectable RageUI menu button.
      localValue22(localValue32, localValue42, workingValue25, stringHelper, text15)
    end
    text3(workingValue16, number3)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local rageUiOperation, text3
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "radios"
  localValue5 = "advancedeffects"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local rageUiOperation, text3, workingValue16, number3, text14, stateFlag12, dataCollection4
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text3 = "Frequency Range In (Low)"
    workingValue16 = ""
    number3 = {}
    text14 = tostring
    stateFlag12 = rageUiOperation4.freq_low
    text14 = text14(stateFlag12)
    number3.RightLabel = text14
    text14 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag12(localValue12, localValue22, localValue32)
      local localValue42, workingValue25, stringHelper, text15
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.clientPrompt
        workingValue25 = "Frequency Range In (Low)"
        stringHelper = ""

        -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13) ===
        function text15(localValue13)
          local workingValue15, workingValue17, text10
          workingValue15 = tonumber
          workingValue17 = localValue13
          workingValue15 = workingValue15(workingValue17)
          if not workingValue15 then
            workingValue17 = notify
            text10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workingValue17(text10)
          elseif workingValue15 < 60 then
            workingValue17 = notify
            text10 = "~r~The minimum value this field can be is 60."
            workingValue17(text10)
          else
            workingValue17 = 999
            if workingValue15 > workingValue17 then
              workingValue17 = notify
              text10 = "~r~The maximum value this field can be is 999."
              -- Beginner: Show a notification to the player.
              workingValue17(text10)
            else
              workingValue17 = workingValue15 + 0.0
              rageUiOperation4.freq_low = workingValue17
              workingValue17 = workingValue19
              workingValue17()
              workingValue17 = workingValue20
              workingValue17()
            end
          end
        end
        localValue42(workingValue25, stringHelper, text15)
      end
    end
    dataCollection4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text3, workingValue16, number3, text14, stateFlag12, dataCollection4)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text3 = "Frequency Range In (High)"
    workingValue16 = ""
    number3 = {}
    text14 = tostring
    stateFlag12 = rageUiOperation4.freq_hi
    text14 = text14(stateFlag12)
    number3.RightLabel = text14
    text14 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag12(localValue12, localValue22, localValue32)
      local localValue42, workingValue25, stringHelper, text15
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.clientPrompt
        workingValue25 = "Frequency Range In (High)"
        stringHelper = ""

        -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13) ===
        function text15(localValue13)
          local workingValue15, workingValue17, text10
          workingValue15 = tonumber
          workingValue17 = localValue13
          workingValue15 = workingValue15(workingValue17)
          if not workingValue15 then
            workingValue17 = notify
            text10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workingValue17(text10)
          else
            workingValue17 = 1000
            if workingValue15 < workingValue17 then
              workingValue17 = notify
              text10 = "~r~The minimum value this field can be is 1000."
              workingValue17(text10)
            else
              workingValue17 = 6000
              if workingValue15 > workingValue17 then
                workingValue17 = notify
                text10 = "~r~The maximum value this field can be is 6000."
                -- Beginner: Show a notification to the player.
                workingValue17(text10)
              else
                workingValue17 = workingValue15 + 0.0
                rageUiOperation4.freq_hi = workingValue17
                workingValue17 = workingValue19
                workingValue17()
                workingValue17 = workingValue20
                workingValue17()
              end
            end
          end
        end
        localValue42(workingValue25, stringHelper, text15)
      end
    end
    dataCollection4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text3, workingValue16, number3, text14, stateFlag12, dataCollection4)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text3 = "Ring Modulator (Frequency)"
    workingValue16 = ""
    number3 = {}
    text14 = tostring
    stateFlag12 = rageUiOperation4.rm_mod_freq
    text14 = text14(stateFlag12)
    number3.RightLabel = text14
    text14 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag12(localValue12, localValue22, localValue32)
      local localValue42, workingValue25, stringHelper, text15
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.clientPrompt
        workingValue25 = "Ring Modulator (Frequency)"
        stringHelper = ""

        -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13) ===
        function text15(localValue13)
          local workingValue15, workingValue17, text10
          workingValue15 = tonumber
          workingValue17 = localValue13
          workingValue15 = workingValue15(workingValue17)
          if not workingValue15 then
            workingValue17 = notify
            text10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workingValue17(text10)
          elseif workingValue15 < 0 then
            workingValue17 = notify
            text10 = "~r~The minimum value this field can be is 0."
            workingValue17(text10)
          else
            workingValue17 = 10000
            if workingValue15 > workingValue17 then
              workingValue17 = notify
              text10 = "~r~The maximum value this field can be is 10000."
              -- Beginner: Show a notification to the player.
              workingValue17(text10)
            else
              workingValue17 = workingValue15 + 0.0
              rageUiOperation4.rm_mod_freq = workingValue17
              workingValue17 = workingValue19
              workingValue17()
              workingValue17 = workingValue20
              workingValue17()
            end
          end
        end
        localValue42(workingValue25, stringHelper, text15)
      end
    end
    dataCollection4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text3, workingValue16, number3, text14, stateFlag12, dataCollection4)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text3 = "Ring Modulator (Mix)"
    workingValue16 = ""
    number3 = {}
    text14 = tostring
    stateFlag12 = rageUiOperation4.rm_mix
    text14 = text14(stateFlag12)
    number3.RightLabel = text14
    text14 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag12(localValue12, localValue22, localValue32)
      local localValue42, workingValue25, stringHelper, text15
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.clientPrompt
        workingValue25 = "Ring Modulator (Mix)"
        stringHelper = ""

        -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13) ===
        function text15(localValue13)
          local workingValue15, workingValue17, text10
          workingValue15 = tonumber
          workingValue17 = localValue13
          workingValue15 = workingValue15(workingValue17)
          if not workingValue15 then
            workingValue17 = notify
            text10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workingValue17(text10)
          elseif workingValue15 < 0 then
            workingValue17 = notify
            text10 = "~r~The minimum value this field can be is 0."
            workingValue17(text10)
          elseif workingValue15 > 100 then
            workingValue17 = notify
            text10 = "~r~The maximum value this field can be is 100."
            -- Beginner: Show a notification to the player.
            workingValue17(text10)
          else
            workingValue17 = workingValue15 + 0.0
            rageUiOperation4.rm_mix = workingValue17
            workingValue17 = workingValue19
            workingValue17()
            workingValue17 = workingValue20
            workingValue17()
          end
        end
        localValue42(workingValue25, stringHelper, text15)
      end
    end
    dataCollection4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text3, workingValue16, number3, text14, stateFlag12, dataCollection4)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text3 = "Destruction (Fudge)"
    workingValue16 = ""
    number3 = {}
    text14 = tostring
    stateFlag12 = rageUiOperation4.fudge
    text14 = text14(stateFlag12)
    number3.RightLabel = text14
    text14 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag12(localValue12, localValue22, localValue32)
      local localValue42, workingValue25, stringHelper, text15
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.clientPrompt
        workingValue25 = "Destruction (Fudge)"
        stringHelper = ""

        -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13) ===
        function text15(localValue13)
          local workingValue15, workingValue17, text10
          workingValue15 = tonumber
          workingValue17 = localValue13
          workingValue15 = workingValue15(workingValue17)
          if not workingValue15 then
            workingValue17 = notify
            text10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workingValue17(text10)
          elseif workingValue15 < 0 then
            workingValue17 = notify
            text10 = "~r~The minimum value this field can be is 0."
            workingValue17(text10)
          elseif workingValue15 > 20 then
            workingValue17 = notify
            text10 = "~r~The maximum value this field can be is 20."
            -- Beginner: Show a notification to the player.
            workingValue17(text10)
          else
            workingValue17 = workingValue15 + 0.0
            rageUiOperation4.fudge = workingValue17
            workingValue17 = workingValue19
            workingValue17()
            workingValue17 = workingValue20
            workingValue17()
          end
        end
        localValue42(workingValue25, stringHelper, text15)
      end
    end
    dataCollection4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text3, workingValue16, number3, text14, stateFlag12, dataCollection4)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text3 = "Frequency Range Out (Low)"
    workingValue16 = ""
    number3 = {}
    text14 = tostring
    stateFlag12 = rageUiOperation4.o_freq_lo
    text14 = text14(stateFlag12)
    number3.RightLabel = text14
    text14 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag12(localValue12, localValue22, localValue32)
      local localValue42, workingValue25, stringHelper, text15
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.clientPrompt
        workingValue25 = "Frequency Range Out (Low)"
        stringHelper = ""

        -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13) ===
        function text15(localValue13)
          local workingValue15, workingValue17, text10
          workingValue15 = tonumber
          workingValue17 = localValue13
          workingValue15 = workingValue15(workingValue17)
          if not workingValue15 then
            workingValue17 = notify
            text10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workingValue17(text10)
          elseif workingValue15 < 60 then
            workingValue17 = notify
            text10 = "~r~The minimum value this field can be is 60."
            workingValue17(text10)
          else
            workingValue17 = 999
            if workingValue15 > workingValue17 then
              workingValue17 = notify
              text10 = "~r~The maximum value this field can be is 999."
              -- Beginner: Show a notification to the player.
              workingValue17(text10)
            else
              workingValue17 = workingValue15 + 0.0
              rageUiOperation4.o_freq_lo = workingValue17
              workingValue17 = workingValue19
              workingValue17()
              workingValue17 = workingValue20
              workingValue17()
            end
          end
        end
        localValue42(workingValue25, stringHelper, text15)
      end
    end
    dataCollection4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text3, workingValue16, number3, text14, stateFlag12, dataCollection4)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text3 = "Frequency Range Out (High)"
    workingValue16 = ""
    number3 = {}
    text14 = tostring
    stateFlag12 = rageUiOperation4.o_freq_hi
    text14 = text14(stateFlag12)
    number3.RightLabel = text14
    text14 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag12(localValue12, localValue22, localValue32)
      local localValue42, workingValue25, stringHelper, text15
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.clientPrompt
        workingValue25 = "Frequency Range Out (High)"
        stringHelper = ""

        -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13) ===
        function text15(localValue13)
          local workingValue15, workingValue17, text10
          workingValue15 = tonumber
          workingValue17 = localValue13
          workingValue15 = workingValue15(workingValue17)
          if not workingValue15 then
            workingValue17 = notify
            text10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workingValue17(text10)
          else
            workingValue17 = 1000
            if workingValue15 < workingValue17 then
              workingValue17 = notify
              text10 = "~r~The minimum value this field can be is 1000."
              workingValue17(text10)
            else
              workingValue17 = 6000
              if workingValue15 > workingValue17 then
                workingValue17 = notify
                text10 = "~r~The maximum value this field can be is 6000."
                -- Beginner: Show a notification to the player.
                workingValue17(text10)
              else
                workingValue17 = workingValue15 + 0.0
                rageUiOperation4.o_freq_hi = workingValue17
                workingValue17 = workingValue19
                workingValue17()
                workingValue17 = workingValue20
                workingValue17()
              end
            end
          end
        end
        localValue42(workingValue25, stringHelper, text15)
      end
    end
    dataCollection4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text3, workingValue16, number3, text14, stateFlag12, dataCollection4)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Button
    text3 = "~r~Reset To Default"
    workingValue16 = ""
    number3 = true

    -- === HELPER FUNCTION (decompiler name: text14; parameters: localValue12, localValue22, localValue32) ===
    function text14(localValue12, localValue22, localValue32)
      local localValue42, workingValue25
      if localValue32 then
        localValue42 = table
        localValue42 = localValue42.copy
        workingValue25 = cmgOperation.advancedEffects
        localValue42 = localValue42(workingValue25)
        rageUiOperation4 = localValue42
        localValue42 = workingValue19
        localValue42()
        localValue42 = workingValue20
        localValue42()
      end
    end
    stateFlag12 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text3, workingValue16, number3, text14, stateFlag12)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local rageUiOperation, text3
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
end
rageUiOperation6(text9, workingValue23, stateFlag7, text11)
rageUiOperation6 = RegisterCommand
text9 = "radios"
-- Beginner: this function is the command handler for "radios".

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
function workingValue23()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue, workingValue27, workingValue2, stateFlag, workingValue6, tableHelper, stateFlag3
  localValue1 = workingValue26
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = notify
    localValue2 = "~r~You are missing a radio item."
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
    return
  end
  localValue1 = table
  localValue1 = localValue1.count
  localValue2 = dataCollection
  -- Beginner: result below is count.
  localValue1 = localValue1(localValue2)
  if 0 == localValue1 then
    localValue1 = notify
    localValue2 = "~r~You have no available radio channels"
    localValue1(localValue2)
    return
  end
  localValue1 = {}
  localValue2 = pairs
  localValue3 = dataCollection
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    number5 = table
    number5 = number5.insert
    hashValue = localValue1
    workingValue27 = {}
    workingValue2 = localValue6
    stateFlag = localValue7.name
    workingValue6 = localValue7.isPrimary
    tableHelper = table
    tableHelper = tableHelper.count
    stateFlag3 = localValue7.players
    tableHelper, stateFlag3 = tableHelper(stateFlag3)
    workingValue27[1] = workingValue2
    workingValue27[2] = stateFlag
    workingValue27[3] = workingValue6
    workingValue27[4] = tableHelper
    workingValue27[5] = stateFlag3
    number5(hashValue, workingValue27)
  end
  localValue2 = TriggerEvent
  localValue3 = "CMGUI:showRadioWheel"
  localValue4 = localValue1
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMGUI:showRadioWheel".
  localValue2(localValue3, localValue4)
end
stateFlag7 = false
-- Beginner: Register a chat/console command. Event/command: "radios".
rageUiOperation6(text9, workingValue23, stateFlag7)
rageUiOperation6 = RegisterKeyMapping
text9 = "radios"
workingValue23 = "Open Radio Menu"
stateFlag7 = "KEYBOARD"
text11 = ""
-- Beginner: Bind a command to a keyboard/controller key.
rageUiOperation6(text9, workingValue23, stateFlag7, text11)
rageUiOperation6 = Citizen
rageUiOperation6 = rageUiOperation6.CreateThread

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = exports
  localValue1 = localValue1["pma-voice"]
  localValue2 = localValue1
  localValue1 = localValue1.setVoiceProperty
  localValue3 = "micClicks"
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = exports
  localValue1 = localValue1["pma-voice"]
  localValue2 = localValue1
  localValue1 = localValue1.setRadioVolume
  localValue3 = eventHandlerRegistration
  localValue4 = "radios_volume"
  localValue5 = 10
  localValue3 = localValue3(localValue4, localValue5)
  localValue3 = localValue3 * 10
  localValue1(localValue2, localValue3)
  localValue1 = CreateAudioSubmix
  localValue2 = "CMGRadio"
  localValue1 = localValue1(localValue2)
  text7 = localValue1
  localValue1 = SetAudioSubmixEffectRadioFx
  localValue2 = text7
  localValue3 = 0
  localValue1(localValue2, localValue3)
  localValue1 = SetAudioSubmixEffectParamInt
  localValue2 = text7
  localValue3 = 0
  localValue4 = -455129387
  localValue5 = 1
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = workingValue18
  localValue1()
  localValue1 = workingValue19
  localValue1()
  localValue1 = AddAudioSubmixOutput
  localValue2 = text7
  localValue3 = 0
  localValue1(localValue2, localValue3)
  localValue1 = exports
  localValue1 = localValue1["pma-voice"]
  localValue2 = localValue1
  localValue1 = localValue1.setEffectSubmix
  localValue3 = "radio"
  localValue4 = text7
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = Citizen
  localValue1 = localValue1.Wait
  localValue2 = 500
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.syncRadioListNuiAppearance
  localValue1()
  while true do
    localValue1 = number2
    if 0 ~= localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.isEmergencyService
      localValue1 = localValue1()
      if localValue1 then
        localValue1 = exports
        localValue1 = localValue1["pma-voice"]
        localValue2 = localValue1
        localValue1 = localValue1.getRadioVolume
        localValue1 = localValue1(localValue2)
        if localValue1 <= 0.0 then
          localValue1 = number4
          localValue1 = localValue1 + 1
          number4 = localValue1
          localValue1 = number4
          localValue1 = localValue1 % 5
          if 0 == localValue1 then
            localValue1 = TriggerServerEvent
            localValue2 = "bd4ae98730"
            localValue3 = number4
            localValue3 = localValue3 * 2
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bd4ae98730".
            localValue1(localValue2, localValue3)
          end
        else
          localValue1 = 0
          number4 = localValue1
        end
      end
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 120000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiOperation6(text9)
rageUiOperation6 = AddEventHandler
text9 = "pma-voice:registerCustomSubmixes"
-- Beginner: this function runs when client event "pma-voice:registerCustomSubmixes" fires.

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
function workingValue23()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = Citizen
  localValue1 = localValue1.Wait
  localValue2 = 100
  localValue1(localValue2)
  localValue1 = exports
  localValue1 = localValue1["pma-voice"]
  localValue2 = localValue1
  localValue1 = localValue1.setEffectSubmix
  localValue3 = "radio"
  localValue4 = text7
  localValue1(localValue2, localValue3, localValue4)
end
-- Beginner: Register a client-side event handler. Event/command: "pma-voice:registerCustomSubmixes".
rageUiOperation6(text9, workingValue23)
rageUiOperation6 = RegisterNetEvent
text9 = "e9fd07f055"
-- Beginner: this function handles network event "e9fd07f055".

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function workingValue23(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local number5, hashValue, workingValue27
  number5 = dataCollection
  number5 = number5[localValue1]
  if not number5 then
    number5 = dataCollection
    hashValue = {}
    hashValue.name = localValue2
    hashValue.players = localValue3
    hashValue.isPrimary = localValue5
    hashValue.switchGroup = localValue6
    workingValue27 = localValue7 or workingValue27
    if not localValue7 then
      workingValue27 = false
    end
    hashValue.noRadioItemRequired = workingValue27
    number5[localValue1] = hashValue
    number5 = workingValue
    number5()
    if localValue4 then
      number5 = Citizen
      number5 = number5.CreateThread

      -- === HELPER FUNCTION: hashValue() ===
      function hashValue()
        local rageUiOperation, text3, workingValue16, number3, text14
        while true do
          rageUiOperation = GetIsLoadingScreenActive
          rageUiOperation = rageUiOperation()
          if not rageUiOperation then
            break
          end
          rageUiOperation = Citizen
          rageUiOperation = rageUiOperation.Wait
          text3 = 0
          rageUiOperation(text3)
        end
        rageUiOperation = Citizen
        rageUiOperation = rageUiOperation.Wait
        text3 = 2000
        rageUiOperation(text3)
        text3 = localValue1
        rageUiOperation = dataCollection
        rageUiOperation = rageUiOperation[text3]
        if rageUiOperation then
          text3 = rageUiOperation.noRadioItemRequired
          if not text3 then
            text3 = CMG
            text3 = text3.hasRadioItem
            text3 = text3()
            if not text3 then
              goto continueAtStep41
            end
          end
          text3 = workingValue21
          workingValue16 = localValue1
          number3 = rageUiOperation
          text14 = CMG
          text14 = text14.isEmergencyService
          text14 = text14()
          text14 = rageUiOperation.noRadioItemRequired
          text14 = not text14 and text14
          text3(workingValue16, number3, text14)
        end
        ::continueAtStep41::
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      number5(hashValue)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e9fd07f055".
rageUiOperation6(text9, workingValue23)
rageUiOperation6 = RegisterNetEvent
text9 = "9af8e11caf"
-- Beginner: this function handles network event "9af8e11caf".

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1) ===
function workingValue23(localValue1)
  local localValue2
  localValue2 = number2
  if localValue2 == localValue1 then
    localValue2 = eventHandler
    localValue2()
  end
  localValue2 = dataCollection
  localValue2[localValue1] = nil
  localValue2 = workingValue
  localValue2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9af8e11caf".
rageUiOperation6(text9, workingValue23)
rageUiOperation6 = RegisterCommand
text9 = "toggleradiomute"
-- Beginner: this function is the command handler for "toggleradiomute".

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
function workingValue23()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = number2
  if 0 ~= localValue1 then
    localValue1 = exports
    localValue1 = localValue1["pma-voice"]
    localValue2 = localValue1
    localValue1 = localValue1.getRadioVolume
    localValue1 = localValue1(localValue2)
    if 0 == localValue1 then
      localValue1 = exports
      localValue1 = localValue1["pma-voice"]
      localValue2 = localValue1
      localValue1 = localValue1.setRadioVolume
      localValue3 = eventHandlerRegistration
      localValue4 = "radios_volume"
      localValue5 = 10
      localValue3 = localValue3(localValue4, localValue5)
      localValue3 = localValue3 * 10
      localValue1(localValue2, localValue3)
      localValue1 = TriggerServerEvent
      localValue2 = "74fae4ec62"
      localValue3 = false
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "74fae4ec62".
      localValue1(localValue2, localValue3)
    else
      localValue1 = exports
      localValue1 = localValue1["pma-voice"]
      localValue2 = localValue1
      localValue1 = localValue1.setRadioVolume
      localValue3 = 0
      localValue1(localValue2, localValue3)
      localValue1 = TriggerServerEvent
      localValue2 = "74fae4ec62"
      localValue3 = true
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "74fae4ec62".
      localValue1(localValue2, localValue3)
    end
  end
end
stateFlag7 = false
-- Beginner: Register a chat/console command. Event/command: "toggleradiomute".
rageUiOperation6(text9, workingValue23, stateFlag7)
rageUiOperation6 = RegisterKeyMapping
text9 = "toggleradiomute"
workingValue23 = "Mute Selected Radio"
stateFlag7 = "KEYBOARD"
text11 = ""
-- Beginner: Bind a command to a keyboard/controller key.
rageUiOperation6(text9, workingValue23, stateFlag7, text11)
rageUiOperation6 = RegisterNetEvent
text9 = "f4406ef092"
-- Beginner: this function handles network event "f4406ef092".

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1, localValue2, localValue3) ===
function workingValue23(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, number5
  localValue4 = dataCollection
  localValue4 = localValue4[localValue1]
  if not localValue4 then
    return
  end
  localValue5 = localValue4.players
  localValue5 = localValue5[localValue2]
  if not localValue5 then
    return
  end
  localValue5.isMuted = localValue3
  localValue6 = number2
  if localValue1 == localValue6 then
    localValue6 = workingValue14
    localValue7 = localValue2
    number5 = localValue3
    localValue6(localValue7, number5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f4406ef092".
rageUiOperation6(text9, workingValue23)
rageUiOperation6 = RegisterNetEvent
text9 = "c96f59b76d"
-- Beginner: this function handles network event "c96f59b76d".

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1) ===
function workingValue23(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = number2
    if localValue2 ~= localValue1 then
      localValue2 = workingValue21
      localValue3 = localValue1
      localValue4 = dataCollection
      localValue4 = localValue4[localValue1]
      localValue5 = false
      localValue2(localValue3, localValue4, localValue5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c96f59b76d".
rageUiOperation6(text9, workingValue23)
rageUiOperation6 = RegisterNetEvent
text9 = "24a888d2b3"
-- Beginner: this function handles network event "24a888d2b3".

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
function workingValue23()
  local localValue1, localValue2
  localValue1 = number2
  if 0 ~= localValue1 then
    localValue1 = eventHandler
    localValue1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "24a888d2b3".
rageUiOperation6(text9, workingValue23)
rageUiOperation6 = AddEventHandler
text9 = "c9189814b6"
-- Beginner: this function runs when client event "c9189814b6" fires.

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
function workingValue23()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "radios"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a client-side event handler. Event/command: "c9189814b6".
rageUiOperation6(text9, workingValue23)

-- === HELPER FUNCTION (decompiler name: rageUiOperation6; parameters: localValue1) ===
function rageUiOperation6(localValue1)
  local localValue2
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.radio
    localValue2 = nil ~= localValue2
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  if localValue1 then
    localValue2 = localValue1.emergencyradio
    if nil ~= localValue2 then
      localValue2 = localValue1.emergencyradio
      localValue2 = localValue2[2]
      if localValue2 > 0 then
        localValue2 = true
        return localValue2
      end
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.getClientUserId
  -- Beginner: result below is userId.
  localValue2 = localValue2()
  if localValue2 then
    localValue3 = CMG
    localValue3 = localValue3.getJobType
    localValue4 = localValue2
    localValue3, localValue4 = localValue3(localValue4)
    if localValue3 and localValue4 and ("CID" == localValue4 or "Trident" == localValue4 or "CTSFO" == localValue4) then
      localValue5 = rageUiOperation6
      localValue6 = localValue1
      return localValue5(localValue6)
    end
  end
  localValue3 = false
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1) ===
function workingValue23(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = rageUiOperation6
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = text9
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue4 = CMG
  localValue4 = localValue4.isEmergencyService
  localValue4 = localValue4()
  localValue4 = localValue3 or localValue4
  if not localValue4 or not localValue3 then
    localValue4 = localValue2
  end
  localValue5 = CMG
  localValue5 = localValue5.isInRadioChannel
  localValue5 = localValue5()
  if localValue5 then
    localValue5 = cmgOperation5
    localValue6 = number2
    localValue5 = localValue5(localValue6)
    if localValue5 and not localValue4 then
      localValue5 = eventHandler
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      localValue5()
    end
  end
  stateFlag8 = localValue2
  stateFlag11 = localValue3
  localValue5 = workingValue
  localValue5()
end
stateFlag7 = AddEventHandler
text11 = "b51e08118b"
-- Beginner: this function runs when client event "b51e08118b" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
function stateFlag9()
  local localValue1, localValue2
  localValue1 = workingValue23
  localValue2 = CMG
  localValue2 = localValue2.getClientInventoryItemList
  localValue2 = localValue2()
  localValue1(localValue2)
end
-- Beginner: Register a client-side event handler. Event/command: "b51e08118b".
stateFlag7(text11, stateFlag9)
stateFlag7 = RegisterNetEvent
text11 = "96db39f973"
-- Beginner: this function handles network event "96db39f973".

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1) ===
function stateFlag9(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue23
  localValue3 = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "96db39f973".
stateFlag7(text11, stateFlag9)
stateFlag7 = Citizen
stateFlag7 = stateFlag7.CreateThread
-- Beginner: this function handles network event "96db39f973".

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue
  while true do
    localValue1 = {}
    dataCollection2 = localValue1
    localValue1 = pairs
    localValue2 = GetActivePlayers
    localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue = localValue2()
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue)
    for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
      localValue7 = GetPlayerServerId
      number5 = localValue6
      -- Beginner: result below is serverId.
      localValue7 = localValue7(number5)
      if localValue7 > 0 then
        number5 = Player
        hashValue = localValue7
        number5 = number5(hashValue)
        number5 = number5.state
        number5 = number5.hasRadio
        if number5 then
          number5 = dataCollection2
          number5[localValue7] = true
        end
      end
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
stateFlag7(text11)
stateFlag7 = false
text11 = 0
stateFlag9 = false
eventHandler3 = RegisterNetEvent
cmgOperation3 = "2ba3a046fc"
-- Beginner: this function handles network event "2ba3a046fc".

-- === HELPER FUNCTION (decompiler name: workingValue24; parameters: none) ===
function workingValue24()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue, workingValue27, workingValue2, stateFlag, workingValue6, tableHelper, stateFlag3, stateFlag4, number, stateFlag5
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = stateFlag7
  if localValue2 then
    localValue2 = DeleteEntity
    localValue3 = text11
    -- Beginner: Delete a GTA entity.
    localValue2(localValue3)
    localValue2 = StopAnimTask
    localValue3 = localValue1
    localValue4 = "molly@megaphone"
    localValue5 = "megaphone_clip"
    localValue6 = 1.0
    localValue2(localValue3, localValue4, localValue5, localValue6)
    localValue2 = text4
    localValue2()
    localValue2 = false
    stateFlag7 = localValue2
  else
    localValue2 = true
    stateFlag7 = localValue2
    localValue2 = eventHandler2
    localValue3 = 25.0
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 25.0.
    localValue2(localValue3)
    localValue2 = CMG
    localValue2 = localValue2.loadModel
    localValue3 = -1585551192
    -- Beginner: Request/load a GTA model before spawning or applying it.
    localValue2(localValue3)
    localValue2 = CMG
    localValue2 = localValue2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue2 = localValue2()
    localValue3 = CMG
    localValue3 = localValue3.requestEntitySpawn
    localValue4 = "megaphone_object"
    localValue3(localValue4)
    localValue3 = CreateObject
    localValue4 = -1585551192
    localValue5 = localValue2.x
    localValue6 = localValue2.y
    localValue7 = localValue2.z
    number5 = true
    hashValue = true
    workingValue27 = false
    -- Beginner: result below is objectEntity.
    localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, number5, hashValue, workingValue27)
    text11 = localValue3
    localValue3 = AttachEntityToEntity
    localValue4 = text11
    localValue5 = localValue1
    localValue6 = GetPedBoneIndex
    localValue7 = localValue1
    number5 = 28422
    localValue6 = localValue6(localValue7, number5)
    localValue7 = 0.05
    number5 = 0.054
    hashValue = -0.006
    workingValue27 = -71.885498
    workingValue2 = -13.0889
    stateFlag = -16.0242
    workingValue6 = true
    tableHelper = true
    stateFlag3 = false
    stateFlag4 = true
    number = 1
    stateFlag5 = true
    -- Beginner: Attach one entity to another entity.
    localValue3(localValue4, localValue5, localValue6, localValue7, number5, hashValue, workingValue27, workingValue2, stateFlag, workingValue6, tableHelper, stateFlag3, stateFlag4, number, stateFlag5)
    localValue3 = SetModelAsNoLongerNeeded
    localValue4 = -1585551192
    localValue3(localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2ba3a046fc".
eventHandler3(cmgOperation3, workingValue24)

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue, workingValue27, workingValue2, stateFlag, workingValue6
  localValue2 = stateFlag7
  if localValue2 then
    localValue2 = IsEntityPlayingAnim
    localValue3 = localValue1.playerPed
    localValue4 = "molly@megaphone"
    localValue5 = "megaphone_clip"
    localValue6 = 3
    localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.loadAnimDict
      localValue3 = "molly@megaphone"
      -- Beginner: Load a GTA animation dictionary before using it.
      localValue2(localValue3)
      localValue2 = TaskPlayAnim
      localValue3 = localValue1.playerPed
      localValue4 = "molly@megaphone"
      localValue5 = "megaphone_clip"
      localValue6 = 2.0
      localValue7 = 2.0
      number5 = -1
      hashValue = 51
      workingValue27 = 0
      workingValue2 = false
      stateFlag = false
      workingValue6 = false
      -- Beginner: Play an animation on a ped.
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue, workingValue27, workingValue2, stateFlag, workingValue6)
      localValue2 = RemoveAnimDict
      localValue3 = "molly@megaphone"
      localValue2(localValue3)
    end
  end
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
workingValue24 = eventHandler3
eventHandlerRegistration2 = "Megaphone"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(workingValue24, eventHandlerRegistration2)

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2
  localValue1 = stateFlag9
  if localValue1 then
    localValue1 = text4
    localValue1()
    localValue1 = notify
    localValue2 = "~r~Microphone deactivated."
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
    localValue1 = false
    stateFlag9 = localValue1
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue24; parameters: localValue1) ===
function workingValue24(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.DrawText3D
  localValue3 = localValue1[1]
  localValue4 = "\240\159\142\164"
  localValue5 = 1.0
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = drawNativeNotification
  localValue3 = "Press ~INPUT_CONTEXT~ to "
  localValue4 = stateFlag9
  if localValue4 then
    localValue4 = "deactivate"
    if localValue4 then
      goto continueAtStep16
    end
  end
  localValue4 = "activate"
  ::continueAtStep16::
  localValue5 = " the microphone."
  localValue3 = localValue3 .. localValue4 .. localValue5
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue2(localValue3)
  localValue2 = IsControlJustPressed
  localValue3 = 0
  localValue4 = 51
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = stateFlag9
    if localValue2 then
      localValue2 = cmgOperation3
      -- Beginner: Run a helper every game frame while this script is active.
      localValue2()
    else
      localValue2 = eventHandler2
      localValue3 = localValue1[2]
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      localValue2(localValue3)
      localValue2 = notify
      localValue3 = "~g~Microphone activated."
      -- Beginner: Show a notification to the player.
      localValue2(localValue3)
      localValue2 = true
      stateFlag9 = localValue2
    end
  end
end
eventHandlerRegistration2 = Citizen
eventHandlerRegistration2 = eventHandlerRegistration2.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue, workingValue27, workingValue2, stateFlag, workingValue6, tableHelper, stateFlag3
  localValue1 = pairs
  localValue2 = cmgOperation.microphones
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = CMG
    localValue7 = localValue7.createArea
    number5 = "microphone_"
    hashValue = tostring
    workingValue27 = localValue5
    hashValue = hashValue(workingValue27)
    number5 = number5 .. hashValue
    hashValue = localValue6[1]
    workingValue27 = 0.5
    workingValue2 = 1.0

    -- === HELPER FUNCTION (decompiler name: stateFlag; parameters: none) ===
    function stateFlag()
      local rageUiOperation, text3
    end
    workingValue6 = cmgOperation3
    tableHelper = workingValue24
    stateFlag3 = localValue6
    -- Beginner: Create an interaction area around a world position.
    localValue7(number5, hashValue, workingValue27, workingValue2, stateFlag, workingValue6, tableHelper, stateFlag3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration2(cmgOperation4)
eventHandlerRegistration2 = AddEventHandler
cmgOperation4 = "CMG:onDisplayVisiblityChange"
-- Beginner: this function runs when client event "CMG:onDisplayVisiblityChange" fires.

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1, localValue2) ===
function text12(localValue1, localValue2)
  local localValue3, localValue4
  if "radio" == localValue1 then
    localValue3 = SendNUIMessage
    localValue4 = {}
    localValue4.radioHide = true
    localValue4.visible = localValue2
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue3(localValue4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onDisplayVisiblityChange".
eventHandlerRegistration2(cmgOperation4, text12)
eventHandlerRegistration2 = RegisterCommand
cmgOperation4 = "switchradios"
-- Beginner: this function is the command handler for "switchradios".

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, number5, hashValue, workingValue27, workingValue2, stateFlag
  localValue1 = CMG
  localValue1 = localValue1.isInRadioChannel
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = notify
    localValue2 = "~r~You are not in a radio channel"
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
  end
  localValue2 = number2
  localValue1 = dataCollection
  localValue1 = localValue1[localValue2]
  if localValue1 then
    localValue2 = localValue1.switchGroup
    if localValue2 then
      goto continueAtStep21
    end
  end
  localValue2 = notify
  localValue3 = "~r~You have no channels to switch between."
  localValue2(localValue3)
  return
  ::continueAtStep21::
  localValue2 = {}
  localValue3 = 1
  localValue4 = pairs
  localValue5 = dataCollection
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for number5, hashValue in localValue4, localValue5, localValue6, localValue7 do
    workingValue27 = hashValue.switchGroup
    workingValue2 = localValue1.switchGroup
    if workingValue27 == workingValue2 then
      workingValue27 = table
      workingValue27 = workingValue27.insert
      workingValue2 = localValue2
      stateFlag = number5
      workingValue27(workingValue2, stateFlag)
      workingValue27 = number2
      if number5 == workingValue27 then
        localValue3 = #localValue2
      end
    end
  end
  localValue4 = localValue3 + 1
  localValue4 = localValue2[localValue4]
  if not localValue4 then
    localValue4 = localValue2[1]
  end
  localValue5 = TriggerEvent
  localValue6 = "c96f59b76d"
  localValue7 = localValue4
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c96f59b76d".
  localValue5(localValue6, localValue7)
end
stateFlag10 = false
-- Beginner: Register a chat/console command. Event/command: "switchradios".
eventHandlerRegistration2(cmgOperation4, text12, stateFlag10)
eventHandlerRegistration2 = RegisterKeyMapping
cmgOperation4 = "switchradios"
text12 = "Switch Radio Group"
stateFlag10 = "KEYBOARD"
text13 = ""
-- Beginner: Bind a command to a keyboard/controller key.
eventHandlerRegistration2(cmgOperation4, text12, stateFlag10, text13)
