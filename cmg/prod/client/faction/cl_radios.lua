--[[
    Beginner Guide: cl_radios.lua
    =============================

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
    BEGINNER GUIDE — Radios
    =======================

    File: cmg/prod/client/faction/cl_radios.lua
    Purpose: This file contains FiveM client/resource logic.

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

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/cfg_radios

    Commands/command-like entries found:
      * radios
      * toggleradiomute
      * switchradios

    Network/hash identifiers found: 14
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * pma-voice:setTalkingOnRadio
      * pma-voice:radioActive
      * CMGUI:showRadioWheel
      * pma-voice:registerCustomSubmixes
      * CMG:onDisplayVisiblityChange

    Example player-facing text in this file:
      * Main Menu
      * ~r~You are missing a radio item.
      * ~r~You have no available radio channels
      * Open Radio Menu
      * Press ~INPUT_CONTEXT~ to 

]]
local cmgCall, dataTable, numberValue2, flag8, flag11, dataTable2, dataTable3, numberValue4, cmgCall5, workValue26, workValue, workValue3, workValue5, cmgCall2, workValue8, workValue10, workValue12, workValue14, eventRegistration, eventRegistration2, textValue4, flag6, eventHandlerRegistration, textValue5, textValue6, rageUiCall2, textValue7, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/cfg_radios"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
dataTable = {}
numberValue2 = 0
flag8 = false
flag11 = false
dataTable2 = {}
dataTable3 = {}
numberValue4 = 0
cmgCall5 = CMG
function workValue26()
  local arg1, arg2
  arg1 = numberValue2
  arg1 = 0 ~= arg1
  return arg1
end
cmgCall5.isInRadioChannel = workValue26
cmgCall5 = CMG
function workValue26()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.isEmergencyService
  arg1 = arg1()
  if arg1 then
    arg1 = flag11
    return arg1
  else
    arg1 = flag8
    return arg1
  end
end
cmgCall5.hasRadioItem = workValue26
cmgCall5 = CMG
function workValue26(arg1)
  local arg2
  arg2 = dataTable2
  arg2 = arg2[arg1]
  if not arg2 then
    arg2 = false
  end
  return arg2
end
cmgCall5.doesPlayerHaveRadioItem = workValue26
function cmgCall5(arg1)
  local arg2, arg3
  arg2 = dataTable
  arg2 = arg2[arg1]
  if not arg2 then
    arg3 = true
    return arg3
  end
  arg3 = arg2.noRadioItemRequired
  arg3 = not arg3
  return arg3
end
function workValue26()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = CMG
  arg1 = arg1.hasRadioItem
  arg1 = arg1()
  if arg1 then
    arg1 = true
    return arg1
  end
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = arg6.noRadioItemRequired
    if arg7 then
      arg7 = true
      return arg7
    end
  end
  arg1 = false
  return arg1
end
function workValue()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = CMG
  arg1 = arg1.hasRadioItem
  arg1 = arg1()
  if not arg1 then
    arg2 = CMG
    arg2 = arg2.isInRadioChannel
    arg2 = arg2()
    if arg2 then
      arg2 = cmgCall5
      arg3 = numberValue2
      arg2 = arg2(arg3)
      if not arg2 then
        arg1 = true
      end
    end
  end
  if arg1 then
    arg2 = LocalPlayer
    arg2 = arg2.state
    arg3 = arg2
    arg2 = arg2.set
    arg4 = "hasRadio"
    arg5 = true
    arg6 = true
    arg2(arg3, arg4, arg5, arg6)
  else
    arg2 = LocalPlayer
    arg2 = arg2.state
    arg3 = arg2
    arg2 = arg2.set
    arg4 = "hasRadio"
    arg5 = nil
    arg6 = true
    arg2(arg3, arg4, arg5, arg6)
  end
end
function workValue3()
  local arg1, arg2
  arg1 = SendNUIMessage
  arg2 = {}
  arg2.radioClear = true
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg1(arg2)
end
function workValue5(arg1)
  local arg2, arg3
  arg2 = SendNUIMessage
  arg3 = {}
  arg3.radioVisibility = true
  arg3.isVisible = arg1
  arg2(arg3)
end
cmgCall2 = CMG
function workValue8()
  local arg1, arg2, arg3
  arg1 = GetResourceKvpInt
  arg2 = "cmg_radio_transparent_background"
  arg1 = arg1(arg2)
  arg1 = 1 == arg1
  arg2 = SendNUIMessage
  arg3 = {}
  arg3.radioTransparentBackground = true
  arg3.enabled = arg1
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg2(arg3)
end
cmgCall2.syncRadioListNuiAppearance = workValue8
function cmgCall2(arg1)
  local arg2, arg3
  arg2 = SendNUIMessage
  arg3 = {}
  arg3.radioHeader = true
  arg3.name = arg1
  arg2(arg3)
end
function workValue8(arg1, arg2, arg3)
  local arg4, arg5
  arg4 = SendNUIMessage
  arg5 = {}
  arg5.radioAdd = true
  arg5.playerSrc = arg1
  arg5.name = arg2
  arg5.sortOrder = arg3
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg4(arg5)
end
function workValue10(arg1)
  local arg2, arg3
  arg2 = SendNUIMessage
  arg3 = {}
  arg3.radioRemove = true
  arg3.playerSrc = arg1
  arg2(arg3)
end
function workValue12(arg1, arg2)
  local arg3, arg4
  arg3 = SendNUIMessage
  arg4 = {}
  arg4.radioTalking = true
  arg4.playerSrc = arg1
  arg4.isTalking = arg2
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg3(arg4)
end
function workValue14(arg1, arg2)
  local arg3, arg4
  arg3 = SendNUIMessage
  arg4 = {}
  arg4.radioMuted = true
  arg4.playerSrc = arg1
  arg4.isMuted = arg2
  arg3(arg4)
end
eventRegistration = RegisterNetEvent
eventRegistration2 = "a38ff88f92"
-- Beginner: this function handles network event "a38ff88f92".
function textValue4(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, numberValue5
  arg4 = dataTable
  arg4 = arg4[arg1]
  if not arg4 then
    return
  end
  arg5 = arg4.players
  arg5[arg2] = arg3
  arg5 = numberValue2
  if arg1 == arg5 then
    arg5 = workValue8
    arg6 = arg2
    arg7 = arg3.name
    numberValue5 = arg3.sortOrder
    arg5(arg6, arg7, numberValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a38ff88f92".
eventRegistration(eventRegistration2, textValue4)
eventRegistration = RegisterNetEvent
eventRegistration2 = "41653b2e1e"
-- Beginner: this function handles network event "41653b2e1e".
function textValue4(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = dataTable
  arg3 = arg3[arg1]
  if not arg3 then
    return
  end
  arg4 = arg3.players
  arg4[arg2] = nil
  arg4 = numberValue2
  if arg1 == arg4 then
    arg4 = workValue10
    arg5 = arg2
    arg4(arg5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "41653b2e1e".
eventRegistration(eventRegistration2, textValue4)
function eventRegistration()
  local arg1, arg2, arg3
  arg1 = exports
  arg1 = arg1["pma-voice"]
  arg2 = arg1
  arg1 = arg1.setRadioChannel
  arg3 = 0
  arg1(arg2, arg3)
  arg1 = workValue5
  arg2 = false
  arg1(arg2)
  arg1 = workValue3
  arg1()
  arg1 = 0
  numberValue2 = arg1
  arg1 = workValue
  arg1()
end
eventRegistration2 = RegisterNetEvent
textValue4 = "4613b3b411"
-- Beginner: this function handles network event "4613b3b411".
function flag6()
  local arg1, arg2
  arg1 = eventRegistration
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg1()
  arg1 = {}
  dataTable = arg1
  arg1 = workValue
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4613b3b411".
eventRegistration2(textValue4, flag6)
eventRegistration2 = RegisterNetEvent
textValue4 = "pma-voice:setTalkingOnRadio"
-- Beginner: this function handles network event "pma-voice:setTalkingOnRadio".
function flag6(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = workValue12
  arg4 = arg1
  arg5 = arg2
  arg3(arg4, arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "pma-voice:setTalkingOnRadio".
eventRegistration2(textValue4, flag6)
-- Beginner: this function handles network event "pma-voice:setTalkingOnRadio".
function eventRegistration2(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = table
  arg2 = arg2.insert
  arg3 = dataTable3
  arg4 = arg1
  arg2(arg3, arg4)
  arg2 = exports
  arg2 = arg2["pma-voice"]
  arg3 = arg2
  arg2 = arg2.overrideProximityRange
  arg4 = dataTable3
  arg5 = #arg4
  arg4 = dataTable3
  arg4 = arg4[arg5]
  arg5 = true
  arg2(arg3, arg4, arg5)
end
function textValue4()
  local arg1, arg2, arg3, arg4
  arg1 = table
  arg1 = arg1.remove
  arg2 = dataTable3
  arg3 = dataTable3
  arg3 = #arg3
  arg1(arg2, arg3)
  arg1 = dataTable3
  arg2 = #arg1
  arg1 = dataTable3
  arg1 = arg1[arg2]
  if arg1 then
    arg1 = exports
    arg1 = arg1["pma-voice"]
    arg2 = arg1
    arg1 = arg1.overrideProximityRange
    arg3 = dataTable3
    arg4 = #arg3
    arg3 = dataTable3
    arg3 = arg3[arg4]
    arg4 = true
    arg1(arg2, arg3, arg4)
  else
    arg1 = exports
    arg1 = arg1["pma-voice"]
    arg2 = arg1
    arg1 = arg1.clearProximityOverride
    arg1(arg2)
  end
end
flag6 = false
eventHandlerRegistration = AddEventHandler
textValue5 = "pma-voice:radioActive"
-- Beginner: this function runs when client event "pma-voice:radioActive" fires.
function textValue6(arg1)
  local arg2, arg3, arg4
  arg2 = workValue12
  arg3 = GetPlayerServerId
  arg4 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg4 = arg4()
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  arg4 = arg1
  arg2(arg3, arg4)
  if arg1 then
    arg2 = flag6
    if not arg2 then
      arg2 = eventRegistration2
      arg3 = 0.75
      -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.75.
      arg2(arg3)
      arg2 = true
      flag6 = arg2
    end
  else
    arg2 = flag6
    if arg2 then
      arg2 = textValue4
      arg2()
      arg2 = false
      flag6 = arg2
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "pma-voice:radioActive".
eventHandlerRegistration(textValue5, textValue6)
eventHandlerRegistration = RMenu
eventHandlerRegistration = eventHandlerRegistration.Add
textValue5 = "radios"
textValue6 = "mainmenu"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue7 = "Radios"
textValue8 = "Main Menu"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13 = rageUiCall4()
rageUiCall2, textValue7, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13 = rageUiCall2(textValue7, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13)
eventHandlerRegistration(textValue5, textValue6, rageUiCall2, textValue7, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13)
eventHandlerRegistration = RMenu
eventHandlerRegistration = eventHandlerRegistration.Add
textValue5 = "radios"
textValue6 = "advancedeffects"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue7 = RMenu
textValue8 = textValue7
textValue7 = textValue7.Get
rageUiCall3 = "radios"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue7 = textValue7(textValue8, rageUiCall3, rageUiCall4)
textValue8 = "Radios"
rageUiCall3 = "Advanced Effects"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13 = rageUiCall5()
rageUiCall2, textValue7, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13 = rageUiCall2(textValue7, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13)
eventHandlerRegistration(textValue5, textValue6, rageUiCall2, textValue7, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13)
eventHandlerRegistration = RMenu
eventHandlerRegistration = eventHandlerRegistration.Add
textValue5 = "radios"
textValue6 = "channelinfo"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue7 = RMenu
textValue8 = textValue7
textValue7 = textValue7.Get
rageUiCall3 = "radios"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue7 = textValue7(textValue8, rageUiCall3, rageUiCall4)
textValue8 = "Radios"
rageUiCall3 = "Channel Information"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13 = rageUiCall5()
rageUiCall2, textValue7, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13 = rageUiCall2(textValue7, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13)
eventHandlerRegistration(textValue5, textValue6, rageUiCall2, textValue7, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, workValue18, workValue19, workValue20, workValue21, workValue22, rageUiCall6, textValue9, workValue23, flag7, textValue11, flag9, eventRegistration3, cmgCall3, workValue24, eventHandlerRegistration2, cmgCall4, textValue12, flag10, textValue13)
function eventHandlerRegistration(arg1, arg2)
  local arg3, arg4
  arg3 = GetResourceKvpInt
  arg4 = arg1
  arg3 = arg3(arg4)
  if arg3 <= 0 then
    arg3 = arg2
  end
  return arg3
end
function textValue5()
  local arg1, arg2, arg3
  arg1 = GetResourceKvpString
  arg2 = "radios_advancedEffects"
  arg1 = arg1(arg2)
  if not arg1 or "" == arg1 then
    arg2 = table
    arg2 = arg2.copy
    arg3 = cmgCall.advancedEffects
    return arg2(arg3)
  else
    arg2 = json
    arg2 = arg2.decode
    arg3 = arg1
    return arg2(arg3)
  end
end
textValue6 = 0
rageUiCall2 = eventHandlerRegistration
textValue7 = "radios_volume"
textValue8 = 10
rageUiCall2 = rageUiCall2(textValue7, textValue8)
textValue7 = -1
textValue8 = eventHandlerRegistration
rageUiCall3 = "radios_leftChannelVolume"
rageUiCall4 = 6
textValue8 = textValue8(rageUiCall3, rageUiCall4)
rageUiCall3 = eventHandlerRegistration
rageUiCall4 = "radios_rightChannelVolume"
rageUiCall5 = 6
rageUiCall3 = rageUiCall3(rageUiCall4, rageUiCall5)
rageUiCall4 = textValue5
rageUiCall4 = rageUiCall4()
rageUiCall5 = false
function workValue18()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue
  arg1 = SetAudioSubmixOutputVolumes
  arg2 = textValue7
  arg3 = 0
  arg4 = textValue8
  arg4 = arg4 / 6
  arg5 = rageUiCall3
  arg5 = arg5 / 6
  arg6 = 0.0
  arg7 = 0.0
  numberValue5 = 1.0
  hashValue = 1.0
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue)
end
function workValue19()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue, workValue27
  arg1 = pairs
  arg2 = cmgCall.advancedEffects
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5 in arg1, arg2, arg3, arg4 do
    arg6 = SetAudioSubmixEffectParamFloat
    arg7 = textValue7
    numberValue5 = 0
    hashValue = GetHashKey
    workValue27 = arg5
    -- Beginner: result below is hash.
    hashValue = hashValue(workValue27)
    workValue27 = rageUiCall4
    workValue27 = workValue27[arg5]
    workValue27 = workValue27 + 0.0
    arg6(arg7, numberValue5, hashValue, workValue27)
  end
end
function workValue20()
  local arg1, arg2, arg3, arg4
  arg1 = SetResourceKvp
  arg2 = "radios_advancedEffects"
  arg3 = json
  arg3 = arg3.encode
  arg4 = rageUiCall4
  arg3, arg4 = arg3(arg4)
  arg1(arg2, arg3, arg4)
end
function workValue21(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, numberValue5, hashValue, workValue27, workValue2, flag, workValue6
  arg4 = cmgCall5
  arg5 = arg1
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = CMG
    arg4 = arg4.hasRadioItem
    arg4 = arg4()
    if not arg4 then
      arg4 = notify
      arg5 = "~r~You are missing a radio item."
      -- Beginner: Show a notification to the player.
      arg4(arg5)
      return
    end
  end
  arg4 = rageUiCall5
  if not arg4 then
    arg4 = workValue18
    arg4()
    arg4 = workValue19
    arg4()
    arg4 = true
    rageUiCall5 = arg4
  end
  arg4 = numberValue2
  if 0 ~= arg4 then
    arg4 = eventRegistration
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    arg4()
  end
  arg4 = exports
  arg4 = arg4["pma-voice"]
  arg5 = arg4
  arg4 = arg4.setRadioChannel
  arg6 = arg1
  arg4(arg5, arg6)
  arg4 = exports
  arg4 = arg4["pma-voice"]
  arg5 = arg4
  arg4 = arg4.getRadioVolume
  arg4 = arg4(arg5)
  if 0 == arg4 then
    arg4 = exports
    arg4 = arg4["pma-voice"]
    arg5 = arg4
    arg4 = arg4.setRadioVolume
    arg6 = eventHandlerRegistration
    arg7 = "radios_volume"
    numberValue5 = 10
    arg6 = arg6(arg7, numberValue5)
    arg6 = arg6 * 10
    arg4(arg5, arg6)
  end
  arg4 = workValue5
  arg5 = true
  arg4(arg5)
  arg4 = cmgCall2
  arg5 = arg2.name
  arg4(arg5)
  arg4 = pairs
  arg5 = arg2.players
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for numberValue5, hashValue in arg4, arg5, arg6, arg7 do
    workValue27 = workValue8
    workValue2 = numberValue5
    flag = hashValue.name
    workValue6 = hashValue.sortOrder
    workValue27(workValue2, flag, workValue6)
    workValue27 = hashValue.isMuted
    if workValue27 then
      workValue27 = workValue14
      workValue2 = numberValue5
      flag = true
      workValue27(workValue2, flag)
    end
  end
  numberValue2 = arg1
  if arg3 then
    arg4 = ExecuteCommand
    arg5 = "toggleradiomute"
    arg4(arg5)
  end
  arg4 = CMG
  arg4 = arg4.syncRadioListNuiAppearance
  arg4()
  arg4 = workValue
  arg4()
end
function workValue22(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue, workValue27, workValue2, flag, workValue6, tableHelper
  arg3 = 1
  arg4 = 25
  arg5 = 1
  for arg6 = arg3, arg4, arg5 do
    arg7 = pairs
    numberValue5 = arg1
    arg7, numberValue5, hashValue, workValue27 = arg7(numberValue5)
    for workValue2, flag in arg7, numberValue5, hashValue, workValue27 do
      workValue6 = flag.sortOrder
      if workValue6 == arg6 then
        workValue6 = arg2
        tableHelper = flag
        workValue6(tableHelper)
      end
    end
  end
end
rageUiCall6 = RageUI
rageUiCall6 = rageUiCall6.CreateWhile
textValue9 = 1.0
workValue23 = RMenu
flag7 = workValue23
workValue23 = workValue23.Get
textValue11 = "radios"
flag9 = "mainmenu"
-- Beginner: result below is menu.
workValue23 = workValue23(flag7, textValue11, flag9)
flag7 = nil
function textValue11()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "radios"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local rageUiCall, textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4, stringHelper2, dataTable5, rageUiCall7, players, workValue4, workValue7, flag2, workValue9, workValue11, workValue13, textValue, textValue2
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue3 = "Available Channels"
    rageUiCall(textValue3)
    rageUiCall = pairs
    textValue3 = dataTable
    rageUiCall, textValue3, workValue16, numberValue3 = rageUiCall(textValue3)
    for textValue14, flag12 in rageUiCall, textValue3, workValue16, numberValue3 do
      dataTable4 = numberValue2
      dataTable4 = textValue14 == dataTable4
      stringHelper2 = string
      stringHelper2 = stringHelper2.format
      dataTable5 = "Connected clients: %d"
      rageUiCall7 = table
      rageUiCall7 = rageUiCall7.count
      players = flag12.players
      rageUiCall7, players, workValue4, workValue7, flag2, workValue9, workValue11, workValue13, textValue, textValue2 = rageUiCall7(players)
      stringHelper2 = stringHelper2(dataTable5, rageUiCall7, players, workValue4, workValue7, flag2, workValue9, workValue11, workValue13, textValue, textValue2)
      if dataTable4 then
        dataTable5 = {}
        dataTable5.RightLabel = "(Selected)"
        if dataTable5 then
          goto flow_label_31
        end
      end
      dataTable5 = {}
      ::flow_label_31::
      rageUiCall7 = RageUI
      rageUiCall7 = rageUiCall7.ButtonWithStyle
      players = flag12.name
      workValue4 = stringHelper2
      workValue7 = dataTable5
      flag2 = true
      function workValue9(arg12, arg22, arg32)
        local arg42, workValue25, stringHelper, textValue15, nameValue
        if arg32 then
          arg42 = RMenu
          workValue25 = arg42
          arg42 = arg42.Get
          stringHelper = "radios"
          textValue15 = "channelinfo"
          -- Beginner: result below is menu.
          arg42 = arg42(workValue25, stringHelper, textValue15)
          workValue25 = arg42
          arg42 = arg42.SetSubtitle
          stringHelper = string
          stringHelper = stringHelper.format
          textValue15 = "Viewing %s"
          nameValue = flag12.name
          stringHelper, textValue15, nameValue = stringHelper(textValue15, nameValue)
          arg42(workValue25, stringHelper, textValue15, nameValue)
          arg42 = textValue14
          textValue6 = arg42
        end
      end
      workValue11 = RMenu
      workValue13 = workValue11
      workValue11 = workValue11.Get
      textValue = "radios"
      textValue2 = "channelinfo"
      workValue11, workValue13, textValue, textValue2 = workValue11(workValue13, textValue, textValue2)
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall7(players, workValue4, workValue7, flag2, workValue9, workValue11, workValue13, textValue, textValue2)
    end
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue3 = "Radio Settings"
    rageUiCall(textValue3)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Slider
    textValue3 = "Total Volume"
    workValue16 = rageUiCall2
    numberValue3 = 10
    textValue14 = ""
    flag12 = false
    dataTable4 = {}
    stringHelper2 = {}
    stringHelper2.R = 0
    stringHelper2.G = 0
    stringHelper2.B = 0
    stringHelper2.A = 255
    dataTable4.ProgressBackgroundColor = stringHelper2
    stringHelper2 = {}
    stringHelper2.R = 0
    stringHelper2.G = 117
    stringHelper2.B = 194
    stringHelper2.A = 255
    dataTable4.ProgressColor = stringHelper2
    stringHelper2 = true
    function dataTable5(arg12, arg22, arg32, arg42)
      local workValue25, stringHelper, textValue15
      workValue25 = rageUiCall2
      if arg42 ~= workValue25 and arg42 > 0 then
        rageUiCall2 = arg42
        workValue25 = exports
        workValue25 = workValue25["pma-voice"]
        stringHelper = workValue25
        workValue25 = workValue25.setRadioVolume
        textValue15 = rageUiCall2
        textValue15 = textValue15 * 10
        workValue25(stringHelper, textValue15)
        workValue25 = SetResourceKvpInt
        stringHelper = "radios_volume"
        textValue15 = rageUiCall2
        workValue25(stringHelper, textValue15)
      end
    end
    rageUiCall(textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4, stringHelper2, dataTable5)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Slider
    textValue3 = "Left Channel Volume"
    workValue16 = textValue8
    numberValue3 = 6
    textValue14 = ""
    flag12 = false
    dataTable4 = {}
    stringHelper2 = {}
    stringHelper2.R = 0
    stringHelper2.G = 0
    stringHelper2.B = 0
    stringHelper2.A = 255
    dataTable4.ProgressBackgroundColor = stringHelper2
    stringHelper2 = {}
    stringHelper2.R = 0
    stringHelper2.G = 117
    stringHelper2.B = 194
    stringHelper2.A = 255
    dataTable4.ProgressColor = stringHelper2
    stringHelper2 = true
    function dataTable5(arg12, arg22, arg32, arg42)
      local workValue25, stringHelper, textValue15
      workValue25 = textValue8
      if arg42 ~= workValue25 and arg42 > 0 then
        textValue8 = arg42
        workValue25 = workValue18
        workValue25()
        workValue25 = SetResourceKvpInt
        stringHelper = "radios_leftChannelVolume"
        textValue15 = textValue8
        workValue25(stringHelper, textValue15)
      end
    end
    rageUiCall(textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4, stringHelper2, dataTable5)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Slider
    textValue3 = "Right Channel Volume"
    workValue16 = rageUiCall3
    numberValue3 = 6
    textValue14 = ""
    flag12 = false
    dataTable4 = {}
    stringHelper2 = {}
    stringHelper2.R = 0
    stringHelper2.G = 0
    stringHelper2.B = 0
    stringHelper2.A = 255
    dataTable4.ProgressBackgroundColor = stringHelper2
    stringHelper2 = {}
    stringHelper2.R = 0
    stringHelper2.G = 117
    stringHelper2.B = 194
    stringHelper2.A = 255
    dataTable4.ProgressColor = stringHelper2
    stringHelper2 = true
    function dataTable5(arg12, arg22, arg32, arg42)
      local workValue25, stringHelper, textValue15
      workValue25 = rageUiCall3
      if arg42 ~= workValue25 and arg42 > 0 then
        rageUiCall3 = arg42
        workValue25 = workValue18
        workValue25()
        workValue25 = SetResourceKvpInt
        stringHelper = "radios_rightChannelVolume"
        textValue15 = rageUiCall3
        workValue25(stringHelper, textValue15)
      end
    end
    rageUiCall(textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4, stringHelper2, dataTable5)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Button
    textValue3 = "Advanced Effects"
    workValue16 = ""
    numberValue3 = true
    function textValue14()
      local arg12, arg22
    end
    flag12 = RMenu
    dataTable4 = flag12
    flag12 = flag12.Get
    stringHelper2 = "radios"
    dataTable5 = "advancedeffects"
    flag12, dataTable4, stringHelper2, dataTable5, rageUiCall7, players, workValue4, workValue7, flag2, workValue9, workValue11, workValue13, textValue, textValue2 = flag12(dataTable4, stringHelper2, dataTable5)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4, stringHelper2, dataTable5, rageUiCall7, players, workValue4, workValue7, flag2, workValue9, workValue11, workValue13, textValue, textValue2)
  end
  function arg7()
    local rageUiCall, textValue3
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "radios"
  arg5 = "channelinfo"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local rageUiCall, textValue3, workValue16, numberValue3, textValue14, flag12
    textValue3 = textValue6
    rageUiCall = dataTable
    rageUiCall = rageUiCall[textValue3]
    if not rageUiCall then
      textValue3 = RageUI
      textValue3 = textValue3.GoBack
      textValue3()
      return
    end
    textValue3 = textValue6
    workValue16 = numberValue2
    if textValue3 ~= workValue16 then
      textValue3 = RageUI
      textValue3 = textValue3.Button
      workValue16 = "~b~Join Channel"
      numberValue3 = nil
      textValue14 = true
      function flag12(arg12, arg22, arg32)
        local arg42, workValue25, stringHelper, textValue15
        if arg32 then
          arg42 = workValue21
          workValue25 = textValue6
          stringHelper = rageUiCall
          textValue15 = false
          arg42(workValue25, stringHelper, textValue15)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      textValue3(workValue16, numberValue3, textValue14, flag12)
    else
      textValue3 = RageUI
      textValue3 = textValue3.Button
      workValue16 = "~r~Leave Channel"
      numberValue3 = nil
      textValue14 = true
      function flag12(arg12, arg22, arg32)
        local arg42
        if arg32 then
          arg42 = eventRegistration
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          arg42()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      textValue3(workValue16, numberValue3, textValue14, flag12)
    end
    textValue3 = RageUI
    textValue3 = textValue3.Separator
    workValue16 = "Connected Clients"
    textValue3(workValue16)
    textValue3 = workValue22
    workValue16 = rageUiCall.players
    function numberValue3(arg12)
      local arg22, arg32, arg42, workValue25, stringHelper, textValue15
      arg22 = RageUI
      arg22 = arg22.Button
      arg32 = arg12.name
      arg42 = nil
      workValue25 = true
      function stringHelper()
        local arg13, workValue15
      end
      textValue15 = nil
      -- Beginner: Draw a selectable RageUI menu button.
      arg22(arg32, arg42, workValue25, stringHelper, textValue15)
    end
    textValue3(workValue16, numberValue3)
  end
  function arg7()
    local rageUiCall, textValue3
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "radios"
  arg5 = "advancedeffects"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local rageUiCall, textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue3 = "Frequency Range In (Low)"
    workValue16 = ""
    numberValue3 = {}
    textValue14 = tostring
    flag12 = rageUiCall4.freq_low
    textValue14 = textValue14(flag12)
    numberValue3.RightLabel = textValue14
    textValue14 = true
    function flag12(arg12, arg22, arg32)
      local arg42, workValue25, stringHelper, textValue15
      if arg32 then
        arg42 = CMG
        arg42 = arg42.clientPrompt
        workValue25 = "Frequency Range In (Low)"
        stringHelper = ""
        function textValue15(arg13)
          local workValue15, workValue17, textValue10
          workValue15 = tonumber
          workValue17 = arg13
          workValue15 = workValue15(workValue17)
          if not workValue15 then
            workValue17 = notify
            textValue10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workValue17(textValue10)
          elseif workValue15 < 60 then
            workValue17 = notify
            textValue10 = "~r~The minimum value this field can be is 60."
            workValue17(textValue10)
          else
            workValue17 = 999
            if workValue15 > workValue17 then
              workValue17 = notify
              textValue10 = "~r~The maximum value this field can be is 999."
              -- Beginner: Show a notification to the player.
              workValue17(textValue10)
            else
              workValue17 = workValue15 + 0.0
              rageUiCall4.freq_low = workValue17
              workValue17 = workValue19
              workValue17()
              workValue17 = workValue20
              workValue17()
            end
          end
        end
        arg42(workValue25, stringHelper, textValue15)
      end
    end
    dataTable4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue3 = "Frequency Range In (High)"
    workValue16 = ""
    numberValue3 = {}
    textValue14 = tostring
    flag12 = rageUiCall4.freq_hi
    textValue14 = textValue14(flag12)
    numberValue3.RightLabel = textValue14
    textValue14 = true
    function flag12(arg12, arg22, arg32)
      local arg42, workValue25, stringHelper, textValue15
      if arg32 then
        arg42 = CMG
        arg42 = arg42.clientPrompt
        workValue25 = "Frequency Range In (High)"
        stringHelper = ""
        function textValue15(arg13)
          local workValue15, workValue17, textValue10
          workValue15 = tonumber
          workValue17 = arg13
          workValue15 = workValue15(workValue17)
          if not workValue15 then
            workValue17 = notify
            textValue10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workValue17(textValue10)
          else
            workValue17 = 1000
            if workValue15 < workValue17 then
              workValue17 = notify
              textValue10 = "~r~The minimum value this field can be is 1000."
              workValue17(textValue10)
            else
              workValue17 = 6000
              if workValue15 > workValue17 then
                workValue17 = notify
                textValue10 = "~r~The maximum value this field can be is 6000."
                -- Beginner: Show a notification to the player.
                workValue17(textValue10)
              else
                workValue17 = workValue15 + 0.0
                rageUiCall4.freq_hi = workValue17
                workValue17 = workValue19
                workValue17()
                workValue17 = workValue20
                workValue17()
              end
            end
          end
        end
        arg42(workValue25, stringHelper, textValue15)
      end
    end
    dataTable4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue3 = "Ring Modulator (Frequency)"
    workValue16 = ""
    numberValue3 = {}
    textValue14 = tostring
    flag12 = rageUiCall4.rm_mod_freq
    textValue14 = textValue14(flag12)
    numberValue3.RightLabel = textValue14
    textValue14 = true
    function flag12(arg12, arg22, arg32)
      local arg42, workValue25, stringHelper, textValue15
      if arg32 then
        arg42 = CMG
        arg42 = arg42.clientPrompt
        workValue25 = "Ring Modulator (Frequency)"
        stringHelper = ""
        function textValue15(arg13)
          local workValue15, workValue17, textValue10
          workValue15 = tonumber
          workValue17 = arg13
          workValue15 = workValue15(workValue17)
          if not workValue15 then
            workValue17 = notify
            textValue10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workValue17(textValue10)
          elseif workValue15 < 0 then
            workValue17 = notify
            textValue10 = "~r~The minimum value this field can be is 0."
            workValue17(textValue10)
          else
            workValue17 = 10000
            if workValue15 > workValue17 then
              workValue17 = notify
              textValue10 = "~r~The maximum value this field can be is 10000."
              -- Beginner: Show a notification to the player.
              workValue17(textValue10)
            else
              workValue17 = workValue15 + 0.0
              rageUiCall4.rm_mod_freq = workValue17
              workValue17 = workValue19
              workValue17()
              workValue17 = workValue20
              workValue17()
            end
          end
        end
        arg42(workValue25, stringHelper, textValue15)
      end
    end
    dataTable4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue3 = "Ring Modulator (Mix)"
    workValue16 = ""
    numberValue3 = {}
    textValue14 = tostring
    flag12 = rageUiCall4.rm_mix
    textValue14 = textValue14(flag12)
    numberValue3.RightLabel = textValue14
    textValue14 = true
    function flag12(arg12, arg22, arg32)
      local arg42, workValue25, stringHelper, textValue15
      if arg32 then
        arg42 = CMG
        arg42 = arg42.clientPrompt
        workValue25 = "Ring Modulator (Mix)"
        stringHelper = ""
        function textValue15(arg13)
          local workValue15, workValue17, textValue10
          workValue15 = tonumber
          workValue17 = arg13
          workValue15 = workValue15(workValue17)
          if not workValue15 then
            workValue17 = notify
            textValue10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workValue17(textValue10)
          elseif workValue15 < 0 then
            workValue17 = notify
            textValue10 = "~r~The minimum value this field can be is 0."
            workValue17(textValue10)
          elseif workValue15 > 100 then
            workValue17 = notify
            textValue10 = "~r~The maximum value this field can be is 100."
            -- Beginner: Show a notification to the player.
            workValue17(textValue10)
          else
            workValue17 = workValue15 + 0.0
            rageUiCall4.rm_mix = workValue17
            workValue17 = workValue19
            workValue17()
            workValue17 = workValue20
            workValue17()
          end
        end
        arg42(workValue25, stringHelper, textValue15)
      end
    end
    dataTable4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue3 = "Destruction (Fudge)"
    workValue16 = ""
    numberValue3 = {}
    textValue14 = tostring
    flag12 = rageUiCall4.fudge
    textValue14 = textValue14(flag12)
    numberValue3.RightLabel = textValue14
    textValue14 = true
    function flag12(arg12, arg22, arg32)
      local arg42, workValue25, stringHelper, textValue15
      if arg32 then
        arg42 = CMG
        arg42 = arg42.clientPrompt
        workValue25 = "Destruction (Fudge)"
        stringHelper = ""
        function textValue15(arg13)
          local workValue15, workValue17, textValue10
          workValue15 = tonumber
          workValue17 = arg13
          workValue15 = workValue15(workValue17)
          if not workValue15 then
            workValue17 = notify
            textValue10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workValue17(textValue10)
          elseif workValue15 < 0 then
            workValue17 = notify
            textValue10 = "~r~The minimum value this field can be is 0."
            workValue17(textValue10)
          elseif workValue15 > 20 then
            workValue17 = notify
            textValue10 = "~r~The maximum value this field can be is 20."
            -- Beginner: Show a notification to the player.
            workValue17(textValue10)
          else
            workValue17 = workValue15 + 0.0
            rageUiCall4.fudge = workValue17
            workValue17 = workValue19
            workValue17()
            workValue17 = workValue20
            workValue17()
          end
        end
        arg42(workValue25, stringHelper, textValue15)
      end
    end
    dataTable4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue3 = "Frequency Range Out (Low)"
    workValue16 = ""
    numberValue3 = {}
    textValue14 = tostring
    flag12 = rageUiCall4.o_freq_lo
    textValue14 = textValue14(flag12)
    numberValue3.RightLabel = textValue14
    textValue14 = true
    function flag12(arg12, arg22, arg32)
      local arg42, workValue25, stringHelper, textValue15
      if arg32 then
        arg42 = CMG
        arg42 = arg42.clientPrompt
        workValue25 = "Frequency Range Out (Low)"
        stringHelper = ""
        function textValue15(arg13)
          local workValue15, workValue17, textValue10
          workValue15 = tonumber
          workValue17 = arg13
          workValue15 = workValue15(workValue17)
          if not workValue15 then
            workValue17 = notify
            textValue10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workValue17(textValue10)
          elseif workValue15 < 60 then
            workValue17 = notify
            textValue10 = "~r~The minimum value this field can be is 60."
            workValue17(textValue10)
          else
            workValue17 = 999
            if workValue15 > workValue17 then
              workValue17 = notify
              textValue10 = "~r~The maximum value this field can be is 999."
              -- Beginner: Show a notification to the player.
              workValue17(textValue10)
            else
              workValue17 = workValue15 + 0.0
              rageUiCall4.o_freq_lo = workValue17
              workValue17 = workValue19
              workValue17()
              workValue17 = workValue20
              workValue17()
            end
          end
        end
        arg42(workValue25, stringHelper, textValue15)
      end
    end
    dataTable4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue3 = "Frequency Range Out (High)"
    workValue16 = ""
    numberValue3 = {}
    textValue14 = tostring
    flag12 = rageUiCall4.o_freq_hi
    textValue14 = textValue14(flag12)
    numberValue3.RightLabel = textValue14
    textValue14 = true
    function flag12(arg12, arg22, arg32)
      local arg42, workValue25, stringHelper, textValue15
      if arg32 then
        arg42 = CMG
        arg42 = arg42.clientPrompt
        workValue25 = "Frequency Range Out (High)"
        stringHelper = ""
        function textValue15(arg13)
          local workValue15, workValue17, textValue10
          workValue15 = tonumber
          workValue17 = arg13
          workValue15 = workValue15(workValue17)
          if not workValue15 then
            workValue17 = notify
            textValue10 = "~r~Inputted text could not be parsed as a number."
            -- Beginner: Show a notification to the player.
            workValue17(textValue10)
          else
            workValue17 = 1000
            if workValue15 < workValue17 then
              workValue17 = notify
              textValue10 = "~r~The minimum value this field can be is 1000."
              workValue17(textValue10)
            else
              workValue17 = 6000
              if workValue15 > workValue17 then
                workValue17 = notify
                textValue10 = "~r~The maximum value this field can be is 6000."
                -- Beginner: Show a notification to the player.
                workValue17(textValue10)
              else
                workValue17 = workValue15 + 0.0
                rageUiCall4.o_freq_hi = workValue17
                workValue17 = workValue19
                workValue17()
                workValue17 = workValue20
                workValue17()
              end
            end
          end
        end
        arg42(workValue25, stringHelper, textValue15)
      end
    end
    dataTable4 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue3, workValue16, numberValue3, textValue14, flag12, dataTable4)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Button
    textValue3 = "~r~Reset To Default"
    workValue16 = ""
    numberValue3 = true
    function textValue14(arg12, arg22, arg32)
      local arg42, workValue25
      if arg32 then
        arg42 = table
        arg42 = arg42.copy
        workValue25 = cmgCall.advancedEffects
        arg42 = arg42(workValue25)
        rageUiCall4 = arg42
        arg42 = workValue19
        arg42()
        arg42 = workValue20
        arg42()
      end
    end
    flag12 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue3, workValue16, numberValue3, textValue14, flag12)
  end
  function arg7()
    local rageUiCall, textValue3
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
end
rageUiCall6(textValue9, workValue23, flag7, textValue11)
rageUiCall6 = RegisterCommand
textValue9 = "radios"
-- Beginner: this function is the command handler for "radios".
function workValue23()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue, workValue27, workValue2, flag, workValue6, tableHelper, flag3
  arg1 = workValue26
  arg1 = arg1()
  if not arg1 then
    arg1 = notify
    arg2 = "~r~You are missing a radio item."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
    return
  end
  arg1 = table
  arg1 = arg1.count
  arg2 = dataTable
  -- Beginner: result below is count.
  arg1 = arg1(arg2)
  if 0 == arg1 then
    arg1 = notify
    arg2 = "~r~You have no available radio channels"
    arg1(arg2)
    return
  end
  arg1 = {}
  arg2 = pairs
  arg3 = dataTable
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    numberValue5 = table
    numberValue5 = numberValue5.insert
    hashValue = arg1
    workValue27 = {}
    workValue2 = arg6
    flag = arg7.name
    workValue6 = arg7.isPrimary
    tableHelper = table
    tableHelper = tableHelper.count
    flag3 = arg7.players
    tableHelper, flag3 = tableHelper(flag3)
    workValue27[1] = workValue2
    workValue27[2] = flag
    workValue27[3] = workValue6
    workValue27[4] = tableHelper
    workValue27[5] = flag3
    numberValue5(hashValue, workValue27)
  end
  arg2 = TriggerEvent
  arg3 = "CMGUI:showRadioWheel"
  arg4 = arg1
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMGUI:showRadioWheel".
  arg2(arg3, arg4)
end
flag7 = false
-- Beginner: Register a chat/console command. Event/command: "radios".
rageUiCall6(textValue9, workValue23, flag7)
rageUiCall6 = RegisterKeyMapping
textValue9 = "radios"
workValue23 = "Open Radio Menu"
flag7 = "KEYBOARD"
textValue11 = ""
-- Beginner: Bind a command to a keyboard/controller key.
rageUiCall6(textValue9, workValue23, flag7, textValue11)
rageUiCall6 = Citizen
rageUiCall6 = rageUiCall6.CreateThread
function textValue9()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = exports
  arg1 = arg1["pma-voice"]
  arg2 = arg1
  arg1 = arg1.setVoiceProperty
  arg3 = "micClicks"
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = exports
  arg1 = arg1["pma-voice"]
  arg2 = arg1
  arg1 = arg1.setRadioVolume
  arg3 = eventHandlerRegistration
  arg4 = "radios_volume"
  arg5 = 10
  arg3 = arg3(arg4, arg5)
  arg3 = arg3 * 10
  arg1(arg2, arg3)
  arg1 = CreateAudioSubmix
  arg2 = "CMGRadio"
  arg1 = arg1(arg2)
  textValue7 = arg1
  arg1 = SetAudioSubmixEffectRadioFx
  arg2 = textValue7
  arg3 = 0
  arg1(arg2, arg3)
  arg1 = SetAudioSubmixEffectParamInt
  arg2 = textValue7
  arg3 = 0
  arg4 = -455129387
  arg5 = 1
  arg1(arg2, arg3, arg4, arg5)
  arg1 = workValue18
  arg1()
  arg1 = workValue19
  arg1()
  arg1 = AddAudioSubmixOutput
  arg2 = textValue7
  arg3 = 0
  arg1(arg2, arg3)
  arg1 = exports
  arg1 = arg1["pma-voice"]
  arg2 = arg1
  arg1 = arg1.setEffectSubmix
  arg3 = "radio"
  arg4 = textValue7
  arg1(arg2, arg3, arg4)
  arg1 = Citizen
  arg1 = arg1.Wait
  arg2 = 500
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.syncRadioListNuiAppearance
  arg1()
  while true do
    arg1 = numberValue2
    if 0 ~= arg1 then
      arg1 = CMG
      arg1 = arg1.isEmergencyService
      arg1 = arg1()
      if arg1 then
        arg1 = exports
        arg1 = arg1["pma-voice"]
        arg2 = arg1
        arg1 = arg1.getRadioVolume
        arg1 = arg1(arg2)
        if arg1 <= 0.0 then
          arg1 = numberValue4
          arg1 = arg1 + 1
          numberValue4 = arg1
          arg1 = numberValue4
          arg1 = arg1 % 5
          if 0 == arg1 then
            arg1 = TriggerServerEvent
            arg2 = "bd4ae98730"
            arg3 = numberValue4
            arg3 = arg3 * 2
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bd4ae98730".
            arg1(arg2, arg3)
          end
        else
          arg1 = 0
          numberValue4 = arg1
        end
      end
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 120000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiCall6(textValue9)
rageUiCall6 = AddEventHandler
textValue9 = "pma-voice:registerCustomSubmixes"
-- Beginner: this function runs when client event "pma-voice:registerCustomSubmixes" fires.
function workValue23()
  local arg1, arg2, arg3, arg4
  arg1 = Citizen
  arg1 = arg1.Wait
  arg2 = 100
  arg1(arg2)
  arg1 = exports
  arg1 = arg1["pma-voice"]
  arg2 = arg1
  arg1 = arg1.setEffectSubmix
  arg3 = "radio"
  arg4 = textValue7
  arg1(arg2, arg3, arg4)
end
-- Beginner: Register a client-side event handler. Event/command: "pma-voice:registerCustomSubmixes".
rageUiCall6(textValue9, workValue23)
rageUiCall6 = RegisterNetEvent
textValue9 = "e9fd07f055"
-- Beginner: this function handles network event "e9fd07f055".
function workValue23(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local numberValue5, hashValue, workValue27
  numberValue5 = dataTable
  numberValue5 = numberValue5[arg1]
  if not numberValue5 then
    numberValue5 = dataTable
    hashValue = {}
    hashValue.name = arg2
    hashValue.players = arg3
    hashValue.isPrimary = arg5
    hashValue.switchGroup = arg6
    workValue27 = arg7 or workValue27
    if not arg7 then
      workValue27 = false
    end
    hashValue.noRadioItemRequired = workValue27
    numberValue5[arg1] = hashValue
    numberValue5 = workValue
    numberValue5()
    if arg4 then
      numberValue5 = Citizen
      numberValue5 = numberValue5.CreateThread
      function hashValue()
        local rageUiCall, textValue3, workValue16, numberValue3, textValue14
        while true do
          rageUiCall = GetIsLoadingScreenActive
          rageUiCall = rageUiCall()
          if not rageUiCall then
            break
          end
          rageUiCall = Citizen
          rageUiCall = rageUiCall.Wait
          textValue3 = 0
          rageUiCall(textValue3)
        end
        rageUiCall = Citizen
        rageUiCall = rageUiCall.Wait
        textValue3 = 2000
        rageUiCall(textValue3)
        textValue3 = arg1
        rageUiCall = dataTable
        rageUiCall = rageUiCall[textValue3]
        if rageUiCall then
          textValue3 = rageUiCall.noRadioItemRequired
          if not textValue3 then
            textValue3 = CMG
            textValue3 = textValue3.hasRadioItem
            textValue3 = textValue3()
            if not textValue3 then
              goto flow_label_41
            end
          end
          textValue3 = workValue21
          workValue16 = arg1
          numberValue3 = rageUiCall
          textValue14 = CMG
          textValue14 = textValue14.isEmergencyService
          textValue14 = textValue14()
          textValue14 = rageUiCall.noRadioItemRequired
          textValue14 = not textValue14 and textValue14
          textValue3(workValue16, numberValue3, textValue14)
        end
        ::flow_label_41::
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      numberValue5(hashValue)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e9fd07f055".
rageUiCall6(textValue9, workValue23)
rageUiCall6 = RegisterNetEvent
textValue9 = "9af8e11caf"
-- Beginner: this function handles network event "9af8e11caf".
function workValue23(arg1)
  local arg2
  arg2 = numberValue2
  if arg2 == arg1 then
    arg2 = eventRegistration
    arg2()
  end
  arg2 = dataTable
  arg2[arg1] = nil
  arg2 = workValue
  arg2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9af8e11caf".
rageUiCall6(textValue9, workValue23)
rageUiCall6 = RegisterCommand
textValue9 = "toggleradiomute"
-- Beginner: this function is the command handler for "toggleradiomute".
function workValue23()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = numberValue2
  if 0 ~= arg1 then
    arg1 = exports
    arg1 = arg1["pma-voice"]
    arg2 = arg1
    arg1 = arg1.getRadioVolume
    arg1 = arg1(arg2)
    if 0 == arg1 then
      arg1 = exports
      arg1 = arg1["pma-voice"]
      arg2 = arg1
      arg1 = arg1.setRadioVolume
      arg3 = eventHandlerRegistration
      arg4 = "radios_volume"
      arg5 = 10
      arg3 = arg3(arg4, arg5)
      arg3 = arg3 * 10
      arg1(arg2, arg3)
      arg1 = TriggerServerEvent
      arg2 = "74fae4ec62"
      arg3 = false
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "74fae4ec62".
      arg1(arg2, arg3)
    else
      arg1 = exports
      arg1 = arg1["pma-voice"]
      arg2 = arg1
      arg1 = arg1.setRadioVolume
      arg3 = 0
      arg1(arg2, arg3)
      arg1 = TriggerServerEvent
      arg2 = "74fae4ec62"
      arg3 = true
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "74fae4ec62".
      arg1(arg2, arg3)
    end
  end
end
flag7 = false
-- Beginner: Register a chat/console command. Event/command: "toggleradiomute".
rageUiCall6(textValue9, workValue23, flag7)
rageUiCall6 = RegisterKeyMapping
textValue9 = "toggleradiomute"
workValue23 = "Mute Selected Radio"
flag7 = "KEYBOARD"
textValue11 = ""
-- Beginner: Bind a command to a keyboard/controller key.
rageUiCall6(textValue9, workValue23, flag7, textValue11)
rageUiCall6 = RegisterNetEvent
textValue9 = "f4406ef092"
-- Beginner: this function handles network event "f4406ef092".
function workValue23(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, numberValue5
  arg4 = dataTable
  arg4 = arg4[arg1]
  if not arg4 then
    return
  end
  arg5 = arg4.players
  arg5 = arg5[arg2]
  if not arg5 then
    return
  end
  arg5.isMuted = arg3
  arg6 = numberValue2
  if arg1 == arg6 then
    arg6 = workValue14
    arg7 = arg2
    numberValue5 = arg3
    arg6(arg7, numberValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f4406ef092".
rageUiCall6(textValue9, workValue23)
rageUiCall6 = RegisterNetEvent
textValue9 = "c96f59b76d"
-- Beginner: this function handles network event "c96f59b76d".
function workValue23(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = dataTable
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = numberValue2
    if arg2 ~= arg1 then
      arg2 = workValue21
      arg3 = arg1
      arg4 = dataTable
      arg4 = arg4[arg1]
      arg5 = false
      arg2(arg3, arg4, arg5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c96f59b76d".
rageUiCall6(textValue9, workValue23)
rageUiCall6 = RegisterNetEvent
textValue9 = "24a888d2b3"
-- Beginner: this function handles network event "24a888d2b3".
function workValue23()
  local arg1, arg2
  arg1 = numberValue2
  if 0 ~= arg1 then
    arg1 = eventRegistration
    arg1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "24a888d2b3".
rageUiCall6(textValue9, workValue23)
rageUiCall6 = AddEventHandler
textValue9 = "c9189814b6"
-- Beginner: this function runs when client event "c9189814b6" fires.
function workValue23()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "radios"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg1(arg2, arg3)
end
-- Beginner: Register a client-side event handler. Event/command: "c9189814b6".
rageUiCall6(textValue9, workValue23)
function rageUiCall6(arg1)
  local arg2
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.radio
    arg2 = nil ~= arg2
  end
  return arg2
end
function textValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6
  if arg1 then
    arg2 = arg1.emergencyradio
    if nil ~= arg2 then
      arg2 = arg1.emergencyradio
      arg2 = arg2[2]
      if arg2 > 0 then
        arg2 = true
        return arg2
      end
    end
  end
  arg2 = CMG
  arg2 = arg2.getClientUserId
  -- Beginner: result below is userId.
  arg2 = arg2()
  if arg2 then
    arg3 = CMG
    arg3 = arg3.getJobType
    arg4 = arg2
    arg3, arg4 = arg3(arg4)
    if arg3 and arg4 and ("CID" == arg4 or "Trident" == arg4 or "CTSFO" == arg4) then
      arg5 = rageUiCall6
      arg6 = arg1
      return arg5(arg6)
    end
  end
  arg3 = false
  return arg3
end
function workValue23(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = rageUiCall6
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = textValue9
  arg4 = arg1
  arg3 = arg3(arg4)
  arg4 = CMG
  arg4 = arg4.isEmergencyService
  arg4 = arg4()
  arg4 = arg3 or arg4
  if not arg4 or not arg3 then
    arg4 = arg2
  end
  arg5 = CMG
  arg5 = arg5.isInRadioChannel
  arg5 = arg5()
  if arg5 then
    arg5 = cmgCall5
    arg6 = numberValue2
    arg5 = arg5(arg6)
    if arg5 and not arg4 then
      arg5 = eventRegistration
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      arg5()
    end
  end
  flag8 = arg2
  flag11 = arg3
  arg5 = workValue
  arg5()
end
flag7 = AddEventHandler
textValue11 = "b51e08118b"
-- Beginner: this function runs when client event "b51e08118b" fires.
function flag9()
  local arg1, arg2
  arg1 = workValue23
  arg2 = CMG
  arg2 = arg2.getClientInventoryItemList
  arg2 = arg2()
  arg1(arg2)
end
-- Beginner: Register a client-side event handler. Event/command: "b51e08118b".
flag7(textValue11, flag9)
flag7 = RegisterNetEvent
textValue11 = "96db39f973"
-- Beginner: this function handles network event "96db39f973".
function flag9(arg1)
  local arg2, arg3
  arg2 = workValue23
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "96db39f973".
flag7(textValue11, flag9)
flag7 = Citizen
flag7 = flag7.CreateThread
-- Beginner: this function handles network event "96db39f973".
function textValue11()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue
  while true do
    arg1 = {}
    dataTable2 = arg1
    arg1 = pairs
    arg2 = GetActivePlayers
    arg2, arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue = arg2()
    arg1, arg2, arg3, arg4 = arg1(arg2, arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue)
    for arg5, arg6 in arg1, arg2, arg3, arg4 do
      arg7 = GetPlayerServerId
      numberValue5 = arg6
      -- Beginner: result below is serverId.
      arg7 = arg7(numberValue5)
      if arg7 > 0 then
        numberValue5 = Player
        hashValue = arg7
        numberValue5 = numberValue5(hashValue)
        numberValue5 = numberValue5.state
        numberValue5 = numberValue5.hasRadio
        if numberValue5 then
          numberValue5 = dataTable2
          numberValue5[arg7] = true
        end
      end
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
flag7(textValue11)
flag7 = false
textValue11 = 0
flag9 = false
eventRegistration3 = RegisterNetEvent
cmgCall3 = "2ba3a046fc"
-- Beginner: this function handles network event "2ba3a046fc".
function workValue24()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue, workValue27, workValue2, flag, workValue6, tableHelper, flag3, flag4, numberValue, flag5
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = flag7
  if arg2 then
    arg2 = DeleteEntity
    arg3 = textValue11
    -- Beginner: Delete a GTA entity.
    arg2(arg3)
    arg2 = StopAnimTask
    arg3 = arg1
    arg4 = "molly@megaphone"
    arg5 = "megaphone_clip"
    arg6 = 1.0
    arg2(arg3, arg4, arg5, arg6)
    arg2 = textValue4
    arg2()
    arg2 = false
    flag7 = arg2
  else
    arg2 = true
    flag7 = arg2
    arg2 = eventRegistration2
    arg3 = 25.0
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 25.0.
    arg2(arg3)
    arg2 = CMG
    arg2 = arg2.loadModel
    arg3 = -1585551192
    -- Beginner: Request/load a GTA model before spawning or applying it.
    arg2(arg3)
    arg2 = CMG
    arg2 = arg2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg2 = arg2()
    arg3 = CMG
    arg3 = arg3.requestEntitySpawn
    arg4 = "megaphone_object"
    arg3(arg4)
    arg3 = CreateObject
    arg4 = -1585551192
    arg5 = arg2.x
    arg6 = arg2.y
    arg7 = arg2.z
    numberValue5 = true
    hashValue = true
    workValue27 = false
    -- Beginner: result below is objectEntity.
    arg3 = arg3(arg4, arg5, arg6, arg7, numberValue5, hashValue, workValue27)
    textValue11 = arg3
    arg3 = AttachEntityToEntity
    arg4 = textValue11
    arg5 = arg1
    arg6 = GetPedBoneIndex
    arg7 = arg1
    numberValue5 = 28422
    arg6 = arg6(arg7, numberValue5)
    arg7 = 0.05
    numberValue5 = 0.054
    hashValue = -0.006
    workValue27 = -71.885498
    workValue2 = -13.0889
    flag = -16.0242
    workValue6 = true
    tableHelper = true
    flag3 = false
    flag4 = true
    numberValue = 1
    flag5 = true
    -- Beginner: Attach one entity to another entity.
    arg3(arg4, arg5, arg6, arg7, numberValue5, hashValue, workValue27, workValue2, flag, workValue6, tableHelper, flag3, flag4, numberValue, flag5)
    arg3 = SetModelAsNoLongerNeeded
    arg4 = -1585551192
    arg3(arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2ba3a046fc".
eventRegistration3(cmgCall3, workValue24)
function eventRegistration3(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue, workValue27, workValue2, flag, workValue6
  arg2 = flag7
  if arg2 then
    arg2 = IsEntityPlayingAnim
    arg3 = arg1.playerPed
    arg4 = "molly@megaphone"
    arg5 = "megaphone_clip"
    arg6 = 3
    arg2 = arg2(arg3, arg4, arg5, arg6)
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.loadAnimDict
      arg3 = "molly@megaphone"
      -- Beginner: Load a GTA animation dictionary before using it.
      arg2(arg3)
      arg2 = TaskPlayAnim
      arg3 = arg1.playerPed
      arg4 = "molly@megaphone"
      arg5 = "megaphone_clip"
      arg6 = 2.0
      arg7 = 2.0
      numberValue5 = -1
      hashValue = 51
      workValue27 = 0
      workValue2 = false
      flag = false
      workValue6 = false
      -- Beginner: Play an animation on a ped.
      arg2(arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue, workValue27, workValue2, flag, workValue6)
      arg2 = RemoveAnimDict
      arg3 = "molly@megaphone"
      arg2(arg3)
    end
  end
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
workValue24 = eventRegistration3
eventHandlerRegistration2 = "Megaphone"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(workValue24, eventHandlerRegistration2)
function cmgCall3()
  local arg1, arg2
  arg1 = flag9
  if arg1 then
    arg1 = textValue4
    arg1()
    arg1 = notify
    arg2 = "~r~Microphone deactivated."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
    arg1 = false
    flag9 = arg1
  end
end
function workValue24(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.DrawText3D
  arg3 = arg1[1]
  arg4 = "\240\159\142\164"
  arg5 = 1.0
  arg2(arg3, arg4, arg5)
  arg2 = drawNativeNotification
  arg3 = "Press ~INPUT_CONTEXT~ to "
  arg4 = flag9
  if arg4 then
    arg4 = "deactivate"
    if arg4 then
      goto flow_label_16
    end
  end
  arg4 = "activate"
  ::flow_label_16::
  arg5 = " the microphone."
  arg3 = arg3 .. arg4 .. arg5
  -- Beginner: Show a GTA-style notification/help prompt.
  arg2(arg3)
  arg2 = IsControlJustPressed
  arg3 = 0
  arg4 = 51
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = flag9
    if arg2 then
      arg2 = cmgCall3
      -- Beginner: Run a helper every game frame while this script is active.
      arg2()
    else
      arg2 = eventRegistration2
      arg3 = arg1[2]
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      arg2(arg3)
      arg2 = notify
      arg3 = "~g~Microphone activated."
      -- Beginner: Show a notification to the player.
      arg2(arg3)
      arg2 = true
      flag9 = arg2
    end
  end
end
eventHandlerRegistration2 = Citizen
eventHandlerRegistration2 = eventHandlerRegistration2.CreateThread
function cmgCall4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue, workValue27, workValue2, flag, workValue6, tableHelper, flag3
  arg1 = pairs
  arg2 = cmgCall.microphones
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = CMG
    arg7 = arg7.createArea
    numberValue5 = "microphone_"
    hashValue = tostring
    workValue27 = arg5
    hashValue = hashValue(workValue27)
    numberValue5 = numberValue5 .. hashValue
    hashValue = arg6[1]
    workValue27 = 0.5
    workValue2 = 1.0
    function flag()
      local rageUiCall, textValue3
    end
    workValue6 = cmgCall3
    tableHelper = workValue24
    flag3 = arg6
    -- Beginner: Create an interaction area around a world position.
    arg7(numberValue5, hashValue, workValue27, workValue2, flag, workValue6, tableHelper, flag3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration2(cmgCall4)
eventHandlerRegistration2 = AddEventHandler
cmgCall4 = "CMG:onDisplayVisiblityChange"
-- Beginner: this function runs when client event "CMG:onDisplayVisiblityChange" fires.
function textValue12(arg1, arg2)
  local arg3, arg4
  if "radio" == arg1 then
    arg3 = SendNUIMessage
    arg4 = {}
    arg4.radioHide = true
    arg4.visible = arg2
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg3(arg4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onDisplayVisiblityChange".
eventHandlerRegistration2(cmgCall4, textValue12)
eventHandlerRegistration2 = RegisterCommand
cmgCall4 = "switchradios"
-- Beginner: this function is the command handler for "switchradios".
function textValue12()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, numberValue5, hashValue, workValue27, workValue2, flag
  arg1 = CMG
  arg1 = arg1.isInRadioChannel
  arg1 = arg1()
  if not arg1 then
    arg1 = notify
    arg2 = "~r~You are not in a radio channel"
    -- Beginner: Show a notification to the player.
    arg1(arg2)
  end
  arg2 = numberValue2
  arg1 = dataTable
  arg1 = arg1[arg2]
  if arg1 then
    arg2 = arg1.switchGroup
    if arg2 then
      goto flow_label_21
    end
  end
  arg2 = notify
  arg3 = "~r~You have no channels to switch between."
  arg2(arg3)
  return
  ::flow_label_21::
  arg2 = {}
  arg3 = 1
  arg4 = pairs
  arg5 = dataTable
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for numberValue5, hashValue in arg4, arg5, arg6, arg7 do
    workValue27 = hashValue.switchGroup
    workValue2 = arg1.switchGroup
    if workValue27 == workValue2 then
      workValue27 = table
      workValue27 = workValue27.insert
      workValue2 = arg2
      flag = numberValue5
      workValue27(workValue2, flag)
      workValue27 = numberValue2
      if numberValue5 == workValue27 then
        arg3 = #arg2
      end
    end
  end
  arg4 = arg3 + 1
  arg4 = arg2[arg4]
  if not arg4 then
    arg4 = arg2[1]
  end
  arg5 = TriggerEvent
  arg6 = "c96f59b76d"
  arg7 = arg4
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c96f59b76d".
  arg5(arg6, arg7)
end
flag10 = false
-- Beginner: Register a chat/console command. Event/command: "switchradios".
eventHandlerRegistration2(cmgCall4, textValue12, flag10)
eventHandlerRegistration2 = RegisterKeyMapping
cmgCall4 = "switchradios"
textValue12 = "Switch Radio Group"
flag10 = "KEYBOARD"
textValue13 = ""
-- Beginner: Bind a command to a keyboard/controller key.
eventHandlerRegistration2(cmgCall4, textValue12, flag10, textValue13)