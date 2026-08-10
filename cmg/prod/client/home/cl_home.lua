--[[
    Beginner Guide: cl_home.lua
    ===========================

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
    BEGINNER GUIDE — Home
    =====================

    File: cmg/prod/client/home/cl_home.lua
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

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/homes

    Network/hash identifiers found: 59
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * ~b~Customisation Menu
      * ~b~Rent Management Menu
      * ~b~Payment Plan Management Menu
      * ~b~Payment Plan Menu
      * Purchase House

]]
local workValue, dataTable5, dataTable9, workValue16, workValue19, dataTable13, numberValue13, dataTable14, dataTable15, dataTable16, cmgCall, dataTable, workValue2, dataTable2, workValue5, textValue3, workValue8, numberValue4, numberValue5, dataTable4, dataTable6, workValue9, flag3, numberValue6, workValue10, workValue11, dataTable7, numberValue7, workValue12, dataTable8, dataTable10, workValue14, dataTable11, numberValue8, numberValue9, numberValue10, numberValue11, flag5, workValue15, numberValue12, workValue18, textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5
workValue = nil
dataTable5 = {}
dataTable9 = {}
workValue16 = nil
workValue19 = nil
dataTable13 = {}
numberValue13 = 0
dataTable14 = {}
dataTable15 = {}
dataTable16 = {}
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/homes"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
dataTable = {}
workValue2 = nil
dataTable2 = {}
workValue5 = nil
textValue3 = ""
workValue8 = nil
numberValue4 = 0
numberValue5 = 0
dataTable4 = {}
dataTable6 = {}
workValue9 = nil
flag3 = false
numberValue6 = 0
workValue10 = nil
workValue11 = nil
dataTable7 = {}
numberValue7 = 0
workValue12 = nil
dataTable8 = {}
dataTable10 = {}
workValue14 = nil
dataTable11 = {}
dataTable11.income = 0
dataTable11.outcome = 0
numberValue8 = 10000
numberValue9 = 1
numberValue10 = 1
numberValue11 = 1
flag5 = true
workValue15 = nil
numberValue12 = 0
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "mainmenu"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue11 = ""
textValue12 = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_homesui"
textValue13 = "cmg_homesui"
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
textValue9 = workValue18
workValue18 = workValue18.Get
textValue10 = "cmghouses"
rageUiCall = "mainmenu"
-- Beginner: result below is menu.
workValue18 = workValue18(textValue9, textValue10, rageUiCall)
textValue9 = workValue18
workValue18 = workValue18.SetSubtitle
textValue10 = "~b~HOME"
workValue18(textValue9, textValue10)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "exit"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue11 = ""
textValue12 = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_homesui"
textValue13 = "cmg_homesui"
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
textValue9 = workValue18
workValue18 = workValue18.Get
textValue10 = "cmghouses"
rageUiCall = "exit"
-- Beginner: result below is menu.
workValue18 = workValue18(textValue9, textValue10, rageUiCall)
textValue9 = workValue18
workValue18 = workValue18.SetSubtitle
textValue10 = "~b~HOME"
workValue18(textValue9, textValue10)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "mail"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "exit"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~CMG Mail Service"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "mailinfo"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "mail"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~CMG Mail Service"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "customise"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "exit"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~Customisation Menu"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "customisecallback"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "customise"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~Customisation Menu"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "keysharing"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "exit"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~House Keys"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "rentmanager"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "mainmenu"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~Rent Management Menu"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "rentedout"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "rentmanager"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~Houses Rented Out"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "rentedin"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "rentmanager"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~Houses Renting"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "rentedinfo"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "rentmanager"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~Houses Rent Info"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "paymentplanmanager"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "mainmenu"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~Payment Plan Management Menu"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "paymentplanout"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "paymentplanmanager"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~Houses Payment Planned Out"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "paymentplanin"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "paymentplanmanager"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~Houses Payment Planned In"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "paymentplansummary"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "paymentplanmanager"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~Payment Plan Summary"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "paymentplaninfo"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "paymentplanin"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~Houses Payment Plan Info"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "paymentplan"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue11 = RMenu
textValue12 = textValue11
textValue11 = textValue11.Get
rageUiCall2 = "cmghouses"
rageUiCall3 = "mainmenu"
-- Beginner: result below is menu.
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
textValue12 = ""
rageUiCall2 = "~b~Payment Plan Menu"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall4()
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue9 = "cmghouses"
textValue10 = "paymentplanoffer"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue11 = ""
textValue12 = "~b~Payment Plan Offer"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_homesui"
textValue13 = "cmg_homesui"
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13)
workValue18(textValue9, textValue10, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, rageUiCall4, textValue13, workValue20, workValue21, workValue22, cmgCall3, textValue15, textValue16, dataTable12, cmgCall4, textValue17, cmgCall5)
function workValue18(arg1)
  local arg2
  arg2 = dataTable5
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = true
    return arg2
  else
    arg2 = false
    return arg2
  end
end
textValue9 = RageUI
textValue9 = textValue9.CreateWhile
textValue10 = 1.0
rageUiCall = RMenu
textValue11 = rageUiCall
rageUiCall = rageUiCall.Get
textValue12 = "cmghouses"
rageUiCall2 = "mainmenu"
-- Beginner: result below is menu.
rageUiCall = rageUiCall(textValue11, textValue12, rageUiCall2)
textValue11 = nil
function textValue12()
  local arg1, arg2, flag4, flag6, flag7, textValue18, flag9
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = false
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6
    arg12 = workValue
    if nil ~= arg12 then
      arg12 = cmgCall.homes
      if nil ~= arg12 then
        arg12 = pairs
        arg22 = cmgCall.homes
        arg12, arg22, arg3, arg4 = arg12(arg22)
        for flag8, workValue23 in arg12, arg22, arg3, arg4 do
          workValue25 = workValue
          if workValue25 == flag8 then
            workValue25 = workValue23.groupPermission
            workValue25 = nil ~= workValue25
            workValue28 = RMenu
            workValue30 = workValue28
            workValue28 = workValue28.Get
            textValue20 = "cmghouses"
            textValue2 = "mainmenu"
            -- Beginner: result below is menu.
            workValue28 = workValue28(workValue30, textValue20, textValue2)
            workValue30 = workValue28
            workValue28 = workValue28.SetSubtitle
            textValue20 = "~b~"
            textValue2 = flag8
            textValue20 = textValue20 .. textValue2
            workValue28(workValue30, textValue20)
            workValue28 = RMenu
            workValue30 = workValue28
            workValue28 = workValue28.Get
            textValue20 = "cmghouses"
            textValue2 = "exit"
            -- Beginner: result below is menu.
            workValue28 = workValue28(workValue30, textValue20, textValue2)
            workValue30 = workValue28
            workValue28 = workValue28.SetSubtitle
            textValue20 = "~b~"
            textValue2 = flag8
            textValue20 = textValue20 .. textValue2
            workValue28(workValue30, textValue20)
            workValue28 = workValue23.ownerString
            if workValue28 then
              workValue28 = workValue23.ownerString
              if "For sale." == workValue28 and not workValue25 then
                workValue28 = RageUI
                workValue28 = workValue28.ButtonWithStyle
                workValue30 = "Purchase House"
                textValue20 = ""
                textValue2 = {}
                textValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
                flag = true
                function workValue3(arg13, arg23, arg32)
                  local cmgCall2, textValue14, workValue24
                  if arg32 then
                    cmgCall2 = TriggerServerEvent
                    textValue14 = "bb91b31e79"
                    workValue24 = flag8
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bb91b31e79".
                    cmgCall2(textValue14, workValue24)
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workValue28(workValue30, textValue20, textValue2, flag, workValue3)
                workValue28 = RageUI
                workValue28 = workValue28.ButtonWithStyle
                workValue30 = "Preview House"
                textValue20 = ""
                textValue2 = {}
                textValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
                flag = true
                function workValue3(arg13, arg23, arg32)
                  local cmgCall2, textValue14, workValue24
                  if arg32 then
                    cmgCall2 = TriggerServerEvent
                    textValue14 = "3ebcdeb3aa"
                    workValue24 = flag8
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3ebcdeb3aa".
                    cmgCall2(textValue14, workValue24)
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workValue28(workValue30, textValue20, textValue2, flag, workValue3)
              end
            else
              workValue28 = workValue18
              workValue30 = flag8
              workValue28 = workValue28(workValue30)
              if workValue28 then
                workValue28 = RageUI
                workValue28 = workValue28.ButtonWithStyle
                workValue30 = "Enter House"
                textValue20 = "Enter this home"
                textValue2 = {}
                textValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
                flag = true
                function workValue3(arg13, arg23, arg32)
                  local cmgCall2, textValue14, workValue24
                  if arg32 then
                    cmgCall2 = CMG
                    cmgCall2 = cmgCall2.inEvent
                    cmgCall2 = cmgCall2()
                    if not cmgCall2 then
                      cmgCall2 = CMG
                      cmgCall2 = cmgCall2.isCarrying
                      cmgCall2 = cmgCall2()
                      if cmgCall2 then
                        cmgCall2 = notify
                        textValue14 = "~r~You can not carry someone into a home."
                        -- Beginner: Show a notification to the player.
                        cmgCall2(textValue14)
                        return
                      end
                      cmgCall2 = TriggerServerEvent
                      textValue14 = "8d3bd0f017"
                      workValue24 = flag8
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8d3bd0f017".
                      cmgCall2(textValue14, workValue24)
                    end
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workValue28(workValue30, textValue20, textValue2, flag, workValue3)
                if workValue25 then
                  workValue28 = {}
                  if workValue28 then
                    goto flow_label_92
                  end
                end
                workValue28 = {}
                workValue28.RightLabel = "\226\134\146\226\134\146\226\134\146"
                ::flow_label_92::
                workValue30 = RageUI
                workValue30 = workValue30.ButtonWithStyle
                textValue20 = "Sell House to Player"
                textValue2 = ""
                flag = workValue28
                workValue3 = not workValue25
                function workValue4(arg13, arg23, arg32)
                  local cmgCall2, textValue14, workValue24
                  if arg32 then
                    cmgCall2 = CMG
                    cmgCall2 = cmgCall2.displaySellDisclaimer
                    textValue14 = "house"
                    function workValue24()
                      local arg14, textValue8, workValue13
                      arg14 = TriggerServerEvent
                      textValue8 = "258c3e6770"
                      workValue13 = flag8
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "258c3e6770".
                      arg14(textValue8, workValue13)
                    end
                    cmgCall2(textValue14, workValue24)
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workValue30(textValue20, textValue2, flag, workValue3, workValue4)
                workValue30 = RageUI
                workValue30 = workValue30.ButtonWithStyle
                textValue20 = "Rent House to Player"
                textValue2 = ""
                flag = workValue28
                workValue3 = not workValue25
                function workValue4(arg13, arg23, arg32)
                  local cmgCall2, textValue14, workValue24
                  if arg32 then
                    cmgCall2 = TriggerServerEvent
                    textValue14 = "1037832668"
                    workValue24 = flag8
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1037832668".
                    cmgCall2(textValue14, workValue24)
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workValue30(textValue20, textValue2, flag, workValue3, workValue4)
                workValue30 = RageUI
                workValue30 = workValue30.ButtonWithStyle
                textValue20 = "Payment Plan House to Player"
                textValue2 = ""
                flag = {}
                flag.RightLabel = "\226\134\146\226\134\146\226\134\146"
                workValue3 = not workValue25
                function workValue4()
                  local arg13, arg23
                end
                workValue6 = RMenu
                textValue4 = workValue6
                workValue6 = workValue6.Get
                textValue5 = "cmghouses"
                textValue6 = "paymentplan"
                workValue6, textValue4, textValue5, textValue6 = workValue6(textValue4, textValue5, textValue6)
                workValue30(textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6)
              else
                workValue28 = RageUI
                workValue28 = workValue28.ButtonWithStyle
                workValue30 = "Ring Bell"
                textValue20 = ""
                textValue2 = {}
                textValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
                flag = true
                function workValue3(arg13, arg23, arg32)
                  local cmgCall2, textValue14, workValue24
                  if arg32 then
                    cmgCall2 = GetGameTimer
                    -- Beginner: result below is gameTimeMs.
                    cmgCall2 = cmgCall2()
                    textValue14 = numberValue13
                    cmgCall2 = cmgCall2 - textValue14
                    textValue14 = 15000
                    if cmgCall2 > textValue14 then
                      cmgCall2 = CMG
                      cmgCall2 = cmgCall2.inEvent
                      cmgCall2 = cmgCall2()
                      if not cmgCall2 then
                        cmgCall2 = GetGameTimer
                        -- Beginner: result below is gameTimeMs.
                        cmgCall2 = cmgCall2()
                        numberValue13 = cmgCall2
                        cmgCall2 = TriggerServerEvent
                        textValue14 = "8d3bd0f017"
                        workValue24 = flag8
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8d3bd0f017".
                        cmgCall2(textValue14, workValue24)
                      end
                    end
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workValue28(workValue30, textValue20, textValue2, flag, workValue3)
                workValue28 = CMG
                workValue28 = workValue28.hasClientPermission
                workValue30 = "police.onduty.permission"
                workValue28 = workValue28(workValue30)
                if workValue28 then
                  workValue28 = RageUI
                  workValue28 = workValue28.ButtonWithStyle
                  workValue30 = "Raid House"
                  textValue20 = "~b~MET Police Raid"
                  textValue2 = {}
                  textValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
                  flag = true
                  function workValue3(arg13, arg23, arg32)
                    local cmgCall2, textValue14, workValue24
                    if arg32 then
                      cmgCall2 = TriggerServerEvent
                      textValue14 = "ef7ba975cf"
                      workValue24 = flag8
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef7ba975cf".
                      cmgCall2(textValue14, workValue24)
                    end
                  end
                  -- Beginner: Draw a selectable RageUI menu button.
                  workValue28(workValue30, textValue20, textValue2, flag, workValue3)
                end
                workValue28 = CMG
                workValue28 = workValue28.hasClientPermission
                workValue30 = "police.onduty.permission"
                workValue28 = workValue28(workValue30)
                if not workValue28 then
                  workValue28 = RageUI
                  workValue28 = workValue28.ButtonWithStyle
                  workValue30 = "House Robbery"
                  textValue20 = "~r~Break into this house"
                  textValue2 = {}
                  textValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
                  flag = true
                  function workValue3(arg13, arg23, arg32)
                    local cmgCall2, textValue14, workValue24
                    if arg32 then
                      cmgCall2 = CMG
                      cmgCall2 = cmgCall2.inEvent
                      cmgCall2 = cmgCall2()
                      if not cmgCall2 then
                        cmgCall2 = TriggerServerEvent
                        textValue14 = "0317b3f2cf"
                        workValue24 = flag8
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0317b3f2cf".
                        cmgCall2(textValue14, workValue24)
                      end
                    end
                  end
                  -- Beginner: Draw a selectable RageUI menu button.
                  workValue28(workValue30, textValue20, textValue2, flag, workValue3)
                end
              end
            end
            workValue28 = RageUI
            workValue28 = workValue28.ButtonWithStyle
            workValue30 = "Rent Manager"
            textValue20 = "~y~Manage your rented out & renting houses here."
            textValue2 = {}
            textValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
            flag = true
            function workValue3(arg13, arg23, arg32)
              local cmgCall2
              if arg32 then
                cmgCall2 = flag8
                textValue3 = cmgCall2
              end
            end
            workValue4 = RMenu
            workValue6 = workValue4
            workValue4 = workValue4.Get
            textValue4 = "cmghouses"
            textValue5 = "rentmanager"
            workValue4, workValue6, textValue4, textValue5, textValue6 = workValue4(workValue6, textValue4, textValue5)
            workValue28(workValue30, textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6)
            workValue28 = RageUI
            workValue28 = workValue28.ButtonWithStyle
            workValue30 = "Payment Plan Manager"
            textValue20 = workValue
            textValue2 = {}
            textValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
            flag = true
            function workValue3(arg13, arg23, arg32)
            end
            workValue4 = RMenu
            workValue6 = workValue4
            workValue4 = workValue4.Get
            textValue4 = "cmghouses"
            textValue5 = "paymentplanmanager"
            workValue4, workValue6, textValue4, textValue5, textValue6 = workValue4(workValue6, textValue4, textValue5)
            -- Beginner: Draw a selectable RageUI menu button.
            workValue28(workValue30, textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6)
            workValue28 = dataTable
            workValue28 = workValue28[flag8]
            if workValue28 then
              workValue28 = dataTable
              workValue28 = workValue28[flag8]
              if workValue28 > 0 then
                workValue28 = RageUI
                workValue28 = workValue28.ButtonWithStyle
                workValue30 = "~r~Pay Outstanding House tax"
                textValue20 = ""
                textValue2 = {}
                flag = "\194\163"
                workValue3 = getMoneyStringFormatted
                workValue4 = dataTable
                workValue4 = workValue4[flag8]
                workValue3 = workValue3(workValue4)
                flag = flag .. workValue3
                textValue2.RightLabel = flag
                flag = true
                function workValue3(arg13, arg23, arg32)
                  local cmgCall2, textValue14, workValue24
                  if arg32 then
                    cmgCall2 = TriggerServerEvent
                    textValue14 = "d10c6d94a9"
                    workValue24 = flag8
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d10c6d94a9".
                    cmgCall2(textValue14, workValue24)
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workValue28(workValue30, textValue20, textValue2, flag, workValue3)
              end
            end
            workValue28 = numberValue4
            if workValue28 > 0 then
              workValue28 = RageUI
              workValue28 = workValue28.ButtonWithStyle
              workValue30 = "~g~Withdraw House Balance"
              textValue20 = ""
              textValue2 = {}
              flag = "\194\163"
              workValue3 = getMoneyStringFormatted
              workValue4 = numberValue4
              workValue3 = workValue3(workValue4)
              flag = flag .. workValue3
              textValue2.RightLabel = flag
              flag = true
              function workValue3(arg13, arg23, arg32)
                local cmgCall2, textValue14, workValue24
                if arg32 then
                  cmgCall2 = TriggerServerEvent
                  textValue14 = "623ae975a0"
                  workValue24 = flag8
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "623ae975a0".
                  cmgCall2(textValue14, workValue24)
                end
              end
              -- Beginner: Draw a selectable RageUI menu button.
              workValue28(workValue30, textValue20, textValue2, flag, workValue3)
            end
          end
        end
      end
    end
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "exit"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = false
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Exit Home"
    arg3 = ""
    arg4 = {}
    arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag8 = true
    function workValue23(arg13, arg23, arg32)
      local cmgCall2, textValue14, workValue24, workValue26
      if arg32 then
        cmgCall2 = workValue19
        if cmgCall2 then
          cmgCall2 = tCMG
          cmgCall2 = cmgCall2.teleport
          textValue14 = workValue19.x
          workValue24 = workValue19.y
          workValue26 = workValue19.z
          cmgCall2(textValue14, workValue24, workValue26)
          cmgCall2 = TriggerEvent
          textValue14 = "4ee536e033"
          -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "4ee536e033".
          cmgCall2(textValue14)
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.leaveActiveHouse
          cmgCall2()
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg3, arg4, flag8, workValue23)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "View Mail"
    arg3 = ""
    arg4 = {}
    arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag8 = true
    function workValue23(arg13, arg23, arg32)
      local cmgCall2, textValue14
      if arg32 then
        cmgCall2 = TriggerServerEvent
        textValue14 = "e980a2222d"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e980a2222d".
        cmgCall2(textValue14)
      end
    end
    workValue25 = RMenu
    workValue28 = workValue25
    workValue25 = workValue25.Get
    workValue30 = "cmghouses"
    textValue20 = "mail"
    workValue25, workValue28, workValue30, textValue20 = workValue25(workValue28, workValue30, textValue20)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20)
    arg12 = table
    arg12 = arg12.count
    arg22 = dataTable4
    -- Beginner: result below is count.
    arg12 = arg12(arg22)
    if arg12 > 0 then
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Customise Home"
      arg3 = ""
      arg4 = {}
      arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag8 = true
      function workValue23()
        local arg13, arg23
      end
      workValue25 = RMenu
      workValue28 = workValue25
      workValue25 = workValue25.Get
      workValue30 = "cmghouses"
      textValue20 = "customise"
      workValue25, workValue28, workValue30, textValue20 = workValue25(workValue28, workValue30, textValue20)
      arg12(arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20)
    end
    arg12 = workValue
    if arg12 then
      arg12 = cmgCall.homes
      arg22 = workValue
      arg12 = arg12[arg22]
      arg12 = arg12.groupPermission
      if not arg12 then
        arg12 = RageUI
        arg12 = arg12.ButtonWithStyle
        arg22 = "Key Sharing"
        arg3 = ""
        arg4 = {}
        arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag8 = true
        function workValue23()
          local arg13, arg23
        end
        workValue25 = RMenu
        workValue28 = workValue25
        workValue25 = workValue25.Get
        workValue30 = "cmghouses"
        textValue20 = "keysharing"
        workValue25, workValue28, workValue30, textValue20 = workValue25(workValue28, workValue30, textValue20)
        -- Beginner: Draw a selectable RageUI menu button.
        arg12(arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20)
      end
    end
    arg12 = pairs
    arg22 = dataTable6
    arg12, arg22, arg3, arg4 = arg12(arg22)
    for flag8, workValue23 in arg12, arg22, arg3, arg4 do
      workValue25 = workValue23
      workValue25()
    end
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "mail"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = false
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6
    arg12 = pairs
    arg22 = dataTable2
    arg12, arg22, arg3, arg4 = arg12(arg22)
    for flag8, workValue23 in arg12, arg22, arg3, arg4 do
      workValue25 = workValue23.is_read
      workValue25 = 1 == workValue25
      if workValue25 then
        workValue28 = "~g~"
        if workValue28 then
          goto flow_label_16
        end
      end
      workValue28 = "~r~"
      ::flow_label_16::
      workValue30 = RageUI
      workValue30 = workValue30.ButtonWithStyle
      textValue20 = workValue28
      textValue2 = "Mail #"
      flag = tostring
      workValue3 = workValue23.id
      flag = flag(workValue3)
      if workValue25 then
        workValue3 = ""
        if workValue3 then
          goto flow_label_29
        end
      end
      workValue3 = " (Unread)"
      ::flow_label_29::
      textValue20 = textValue20 .. textValue2 .. flag .. workValue3
      textValue2 = "Delivered at "
      flag = workValue23.time_sent
      textValue2 = textValue2 .. flag
      flag = {}
      flag.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue3 = true
      function workValue4(arg13, arg23, arg32)
        local cmgCall2, textValue14, workValue24
        if arg32 then
          cmgCall2 = workValue25
          if not cmgCall2 then
            cmgCall2 = TriggerServerEvent
            textValue14 = "b3c24b1ac2"
            workValue24 = workValue23.id
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b3c24b1ac2".
            cmgCall2(textValue14, workValue24)
            workValue23.is_read = 1
          end
          cmgCall2 = workValue23
          workValue5 = cmgCall2
        end
      end
      workValue6 = RMenu
      textValue4 = workValue6
      workValue6 = workValue6.Get
      textValue5 = "cmghouses"
      textValue6 = "mailinfo"
      workValue6, textValue4, textValue5, textValue6 = workValue6(textValue4, textValue5, textValue6)
      -- Beginner: Draw a selectable RageUI menu button.
      workValue30(textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6)
    end
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "mailinfo"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = false
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23
    arg12 = workValue5
    if not arg12 then
      return
    end
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "Mail #"
    arg3 = tostring
    arg4 = workValue5.id
    arg3 = arg3(arg4)
    arg22 = arg22 .. arg3
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "Delivered at "
    arg3 = workValue5.time_sent
    arg22 = arg22 .. arg3
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "Signed by "
    arg3 = workValue5.signature
    arg22 = arg22 .. arg3
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.FakeButtonWithStyle
    arg22 = ""
    arg3 = workValue5.content
    arg4 = {}
    arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag8 = true
    function workValue23()
      local arg13, arg23
    end
    arg12(arg22, arg3, arg4, flag8, workValue23)
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "customise"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = false
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4
    arg12 = pairs
    arg22 = dataTable4
    arg12, arg22, arg3, arg4 = arg12(arg22)
    for flag8, workValue23 in arg12, arg22, arg3, arg4 do
      workValue25 = RageUI
      workValue25 = workValue25.ButtonWithStyle
      workValue28 = flag8
      workValue30 = ""
      textValue20 = {}
      textValue20.RightLabel = "\226\134\146\226\134\146\226\134\146"
      textValue2 = true
      function flag(arg13, arg23, arg32)
        local cmgCall2
        if arg32 then
          cmgCall2 = workValue23
          workValue9 = cmgCall2
        end
      end
      workValue3 = RMenu
      workValue4 = workValue3
      workValue3 = workValue3.Get
      workValue6 = "cmghouses"
      textValue4 = "customisecallback"
      workValue3, workValue4, workValue6, textValue4 = workValue3(workValue4, workValue6, textValue4)
      -- Beginner: Draw a selectable RageUI menu button.
      workValue25(workValue28, workValue30, textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4)
    end
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "keysharing"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = false
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20, textValue2, flag
    arg12 = workValue2
    if arg12 then
      arg12 = workValue2
      arg12 = #arg12
      if arg12 > 0 then
        arg12 = drawNativeNotification
        arg22 = string
        arg22 = arg22.format
        arg3 = "Press ~INPUT_FRONTEND_ACCEPT~ to change Perm ID"
        arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20, textValue2, flag = arg22(arg3)
        -- Beginner: Show a GTA-style notification/help prompt.
        arg12(arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20, textValue2, flag)
        arg12 = pairs
        arg22 = workValue2
        arg12, arg22, arg3, arg4 = arg12(arg22)
        for flag8, workValue23 in arg12, arg22, arg3, arg4 do
          workValue25 = RageUI
          workValue25 = workValue25.ButtonWithStyle
          workValue28 = string
          workValue28 = workValue28.format
          workValue30 = "Key %s"
          textValue20 = flag8
          workValue28 = workValue28(workValue30, textValue20)
          workValue30 = ""
          textValue20 = {}
          textValue2 = tostring
          flag = workValue23
          textValue2 = textValue2(flag)
          textValue20.RightLabel = textValue2
          textValue2 = true
          function flag(arg13, arg23, arg32)
            local cmgCall2, textValue14, workValue24, workValue26
            if arg32 then
              cmgCall2 = CMG
              cmgCall2 = cmgCall2.clientPrompt
              textValue14 = "Enter Perm ID"
              workValue24 = ""
              function workValue26(arg14)
                local textValue8, workValue13, workValue17, mathHelper, mathHelper2
                if arg14 then
                  textValue8 = tonumber
                  workValue13 = arg14
                  textValue8 = textValue8(workValue13)
                  if textValue8 then
                    textValue8 = tonumber
                    workValue13 = arg14
                    textValue8 = textValue8(workValue13)
                    workValue13 = workValue23
                    if textValue8 ~= workValue13 then
                      textValue8 = tonumber
                      workValue13 = arg14
                      textValue8 = textValue8(workValue13)
                      if textValue8 > 0 then
                        textValue8 = TriggerServerEvent
                        workValue13 = "bb2fc3919a"
                        workValue17 = flag8
                        mathHelper = tonumber
                        mathHelper2 = arg14
                        mathHelper, mathHelper2 = mathHelper(mathHelper2)
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bb2fc3919a".
                        textValue8(workValue13, workValue17, mathHelper, mathHelper2)
                    end
                  end
                end
                else
                  textValue8 = notify
                  workValue13 = "~r~Perm ID must be a number and different."
                  -- Beginner: Show a notification to the player.
                  textValue8(workValue13)
                end
              end
              cmgCall2(textValue14, workValue24, workValue26)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          workValue25(workValue28, workValue30, textValue20, textValue2, flag)
        end
      end
    end
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~y~Purchase Additional Key"
    arg3 = ""
    arg4 = {}
    arg4.RightLabel = "\194\163250,000"
    flag8 = true
    function workValue23(arg13, arg23, arg32)
      local cmgCall2, textValue14
      if arg32 then
        cmgCall2 = TriggerServerEvent
        textValue14 = "a7121d7960"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a7121d7960".
        cmgCall2(textValue14)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg3, arg4, flag8, workValue23)
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "customisecallback"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = false
  flag7 = true
  function textValue18()
    local arg12, arg22
    arg12 = workValue9
    if arg12 then
      arg12 = workValue9
      arg12()
    end
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "rentmanager"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = true
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Houses Rented Out"
    arg3 = textValue3
    arg4 = {}
    arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag8 = true
    function workValue23(arg13, arg23, arg32)
    end
    workValue25 = RMenu
    workValue28 = workValue25
    workValue25 = workValue25.Get
    workValue30 = "cmghouses"
    textValue20 = "rentedout"
    workValue25, workValue28, workValue30, textValue20 = workValue25(workValue28, workValue30, textValue20)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Houses Rented In"
    arg3 = textValue3
    arg4 = {}
    arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag8 = true
    function workValue23(arg13, arg23, arg32)
    end
    workValue25 = RMenu
    workValue28 = workValue25
    workValue25 = workValue25.Get
    workValue30 = "cmghouses"
    textValue20 = "rentedin"
    workValue25, workValue28, workValue30, textValue20 = workValue25(workValue28, workValue30, textValue20)
    arg12(arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20)
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "rentedout"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = true
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6, textValue7
    arg12 = pairs
    arg22 = dataTable14
    arg12, arg22, arg3, arg4 = arg12(arg22)
    for flag8, workValue23 in arg12, arg22, arg3, arg4 do
      workValue25 = workValue23.homeName
      workValue28 = workValue23.rentedBy
      workValue30 = workValue23.hoursLeft
      textValue20 = RageUI
      textValue20 = textValue20.ButtonWithStyle
      textValue2 = workValue25
      flag = "Rented to "
      workValue3 = workValue28
      workValue4 = " - "
      workValue6 = workValue30
      textValue4 = " hours left!"
      flag = flag .. workValue3 .. workValue4 .. workValue6 .. textValue4
      workValue3 = {}
      workValue3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue4 = true
      function workValue6(arg13, arg23, arg32)
        local cmgCall2
        if arg32 then
          cmgCall2 = workValue23
          dataTable16 = cmgCall2
          dataTable16.type = "rentingout"
        end
      end
      textValue4 = RMenu
      textValue5 = textValue4
      textValue4 = textValue4.Get
      textValue6 = "cmghouses"
      textValue7 = "rentedinfo"
      textValue4, textValue5, textValue6, textValue7 = textValue4(textValue5, textValue6, textValue7)
      -- Beginner: Draw a selectable RageUI menu button.
      textValue20(textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6, textValue7)
    end
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "rentedin"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = true
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6, textValue7
    arg12 = pairs
    arg22 = dataTable15
    arg12, arg22, arg3, arg4 = arg12(arg22)
    for flag8, workValue23 in arg12, arg22, arg3, arg4 do
      workValue25 = workValue23.homeName
      workValue28 = workValue23.rentedBy
      workValue30 = workValue23.hoursLeft
      textValue20 = RageUI
      textValue20 = textValue20.ButtonWithStyle
      textValue2 = workValue25
      flag = "Rented from "
      workValue3 = workValue28
      workValue4 = " - "
      workValue6 = workValue30
      textValue4 = " hours left!"
      flag = flag .. workValue3 .. workValue4 .. workValue6 .. textValue4
      workValue3 = {}
      workValue3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue4 = true
      function workValue6(arg13, arg23, arg32)
        local cmgCall2
        if arg32 then
          cmgCall2 = workValue23
          dataTable16 = cmgCall2
          dataTable16.type = "rentingin"
        end
      end
      textValue4 = RMenu
      textValue5 = textValue4
      textValue4 = textValue4.Get
      textValue6 = "cmghouses"
      textValue7 = "rentedinfo"
      textValue4, textValue5, textValue6, textValue7 = textValue4(textValue5, textValue6, textValue7)
      -- Beginner: Draw a selectable RageUI menu button.
      textValue20(textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6, textValue7)
    end
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "rentedinfo"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = true
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30
    arg12 = dataTable16.homeName
    arg22 = dataTable16.rentedBy
    arg3 = dataTable16.hoursLeft
    arg4 = RageUI
    arg4 = arg4.Separator
    flag8 = "~y~Rent Info"
    arg4(flag8)
    arg4 = RageUI
    arg4 = arg4.Separator
    flag8 = "---------"
    arg4(flag8)
    arg4 = RageUI
    arg4 = arg4.Separator
    flag8 = "House: "
    workValue23 = arg12
    flag8 = flag8 .. workValue23
    arg4(flag8)
    arg4 = RageUI
    arg4 = arg4.Separator
    flag8 = "Rented from: "
    workValue23 = arg22
    flag8 = flag8 .. workValue23
    arg4(flag8)
    arg4 = RageUI
    arg4 = arg4.Separator
    flag8 = "Hours Left: "
    workValue23 = arg3
    flag8 = flag8 .. workValue23
    arg4(flag8)
    arg4 = RageUI
    arg4 = arg4.ButtonWithStyle
    flag8 = "Request Home Rent Cancellation"
    workValue23 = ""
    workValue25 = {}
    workValue25.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue28 = true
    function workValue30(arg13, arg23, arg32)
      local cmgCall2, textValue14, workValue24, workValue26
      if arg32 then
        cmgCall2 = TriggerServerEvent
        textValue14 = "eb4522e277"
        workValue24 = arg12
        workValue26 = dataTable16.type
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "eb4522e277".
        cmgCall2(textValue14, workValue24, workValue26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg4(flag8, workValue23, workValue25, workValue28, workValue30)
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "paymentplanmanager"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = true
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Houses Payment Planned Out"
    arg3 = workValue
    arg4 = {}
    arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag8 = true
    function workValue23(arg13, arg23, arg32)
    end
    workValue25 = RMenu
    workValue28 = workValue25
    workValue25 = workValue25.Get
    workValue30 = "cmghouses"
    textValue20 = "paymentplanout"
    workValue25, workValue28, workValue30, textValue20 = workValue25(workValue28, workValue30, textValue20)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Houses Payment Planned In"
    arg3 = workValue
    arg4 = {}
    arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag8 = true
    function workValue23(arg13, arg23, arg32)
    end
    workValue25 = RMenu
    workValue28 = workValue25
    workValue25 = workValue25.Get
    workValue30 = "cmghouses"
    textValue20 = "paymentplanin"
    workValue25, workValue28, workValue30, textValue20 = workValue25(workValue28, workValue30, textValue20)
    arg12(arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Payment Plan Summary"
    arg3 = ""
    arg4 = {}
    arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag8 = true
    function workValue23(arg13, arg23, arg32)
      local cmgCall2, textValue14
      if arg32 then
        cmgCall2 = TriggerServerEvent
        textValue14 = "6597895925"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6597895925".
        cmgCall2(textValue14)
      end
    end
    workValue25 = RMenu
    workValue28 = workValue25
    workValue25 = workValue25.Get
    workValue30 = "cmghouses"
    textValue20 = "paymentplansummary"
    workValue25, workValue28, workValue30, textValue20 = workValue25(workValue28, workValue30, textValue20)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20)
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "paymentplan"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = true
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~House: "
    arg3 = workValue
    arg22 = arg22 .. arg3
    arg12(arg22)
    function arg12()
      local arg13, arg23
      arg13 = numberValue8
      arg23 = numberValue12
      arg13 = arg13 - arg23
      return arg13
    end
    function arg22()
      local arg13, arg23, arg32
      arg13 = flag5
      if arg13 then
        arg13 = math
        arg13 = arg13.ceil
        arg23 = arg12
        arg23 = arg23()
        arg32 = numberValue9
        arg23 = arg23 / arg32
        arg13 = arg13(arg23)
        numberValue10 = arg13
      else
        arg13 = math
        arg13 = arg13.ceil
        arg23 = arg12
        arg23 = arg23()
        arg32 = numberValue10
        arg23 = arg23 / arg32
        arg13 = arg13(arg23)
        numberValue9 = arg13
        arg13 = numberValue9
        if arg13 > 26 then
          arg13 = 1
          numberValue9 = arg13
          arg13 = true
          flag5 = arg13
          arg13 = arg22
          arg13()
        end
      end
    end
    arg3 = RageUI
    arg3 = arg3.ButtonWithStyle
    arg4 = "Total Price"
    flag8 = "The total amount of money that will have to be paid before ownership is transferred."
    workValue23 = {}
    workValue25 = "\194\163"
    workValue28 = getMoneyStringFormatted
    workValue30 = numberValue8
    workValue28 = workValue28(workValue30)
    workValue25 = workValue25 .. workValue28
    workValue23.RightLabel = workValue25
    workValue25 = true
    function workValue28(arg13, arg23, arg32)
      local cmgCall2, textValue14, workValue24, workValue26
      if arg32 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.clientPrompt
        textValue14 = "Enter Total Price"
        workValue24 = ""
        function workValue26(arg14)
          local textValue8, workValue13, workValue17, mathHelper, mathHelper2
          textValue8 = tonumber
          workValue13 = arg14
          textValue8 = textValue8(workValue13)
          if textValue8 then
            workValue13 = math
            workValue13 = workValue13.type
            workValue17 = textValue8
            workValue13 = workValue13(workValue17)
            if "integer" == workValue13 then
              workValue13 = 10000
              if textValue8 >= workValue13 then
                workValue13 = 10000000000
                if textValue8 <= workValue13 then
                  numberValue8 = textValue8
                  workValue13 = math
                  workValue13 = workValue13.min
                  workValue17 = numberValue12
                  mathHelper = math
                  mathHelper = mathHelper.floor
                  mathHelper2 = textValue8 / 2
                  mathHelper, mathHelper2 = mathHelper(mathHelper2)
                  workValue13 = workValue13(workValue17, mathHelper, mathHelper2)
                  numberValue12 = workValue13
                  workValue13 = arg22
                  workValue13()
              end
            end
          end
          else
            workValue13 = notify
            workValue17 = "~r~Total price must be a whole number between \194\16310,000 and \194\16310,000,000,000."
            -- Beginner: Show a notification to the player.
            workValue13(workValue17)
          end
        end
        cmgCall2(textValue14, workValue24, workValue26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg3(arg4, flag8, workValue23, workValue25, workValue28)
    arg3 = RageUI
    arg3 = arg3.ButtonWithStyle
    arg4 = "Weeks To Pay"
    flag8 = "The amount of weeks the player has to pay off the plan. Automatically calculated if Pay Amount Per Week is set."
    workValue23 = {}
    workValue25 = tostring
    workValue28 = numberValue9
    workValue25 = workValue25(workValue28)
    workValue28 = " week"
    workValue30 = numberValue9
    if workValue30 > 1 then
      workValue30 = "s"
      if workValue30 then
        goto flow_label_41
      end
    end
    workValue30 = ""
    ::flow_label_41::
    workValue25 = workValue25 .. workValue28 .. workValue30
    workValue23.RightLabel = workValue25
    workValue25 = true
    function workValue28(arg13, arg23, arg32)
      local cmgCall2, textValue14, workValue24, workValue26
      if arg32 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.clientPrompt
        textValue14 = "Enter Weeks To Pay"
        workValue24 = ""
        function workValue26(arg14)
          local textValue8, workValue13, workValue17
          textValue8 = tonumber
          workValue13 = arg14
          textValue8 = textValue8(workValue13)
          if textValue8 then
            workValue13 = math
            workValue13 = workValue13.type
            workValue17 = textValue8
            workValue13 = workValue13(workValue17)
            if "integer" == workValue13 and textValue8 >= 1 and textValue8 <= 26 then
              numberValue9 = textValue8
              workValue13 = math
              workValue13 = workValue13.ceil
              workValue17 = arg12
              workValue17 = workValue17()
              workValue17 = workValue17 / textValue8
              workValue13 = workValue13(workValue17)
              numberValue10 = workValue13
              workValue13 = true
              flag5 = workValue13
          end
          else
            workValue13 = notify
            workValue17 = "~r~Total amount of weeks must be a whole number between 1 week and 26 weeks."
            -- Beginner: Show a notification to the player.
            workValue13(workValue17)
          end
        end
        cmgCall2(textValue14, workValue24, workValue26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg3(arg4, flag8, workValue23, workValue25, workValue28)
    arg3 = RageUI
    arg3 = arg3.ButtonWithStyle
    arg4 = "Pay Amount Per Week"
    flag8 = "The amount of money to pay each week. Automatically calculated if Weekly Pay Amount is set."
    workValue23 = {}
    workValue25 = "\194\163"
    workValue28 = getMoneyStringFormatted
    workValue30 = numberValue10
    workValue28 = workValue28(workValue30)
    workValue25 = workValue25 .. workValue28
    workValue23.RightLabel = workValue25
    workValue25 = true
    function workValue28(arg13, arg23, arg32)
      local cmgCall2, textValue14, workValue24, workValue26
      if arg32 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.clientPrompt
        textValue14 = "Enter Amount Per Week"
        workValue24 = ""
        function workValue26(arg14)
          local textValue8, workValue13, workValue17, mathHelper, mathHelper2, workValue27, textValue19
          textValue8 = tonumber
          workValue13 = arg14
          textValue8 = textValue8(workValue13)
          if textValue8 then
            workValue13 = math
            workValue13 = workValue13.type
            workValue17 = textValue8
            workValue13 = workValue13(workValue17)
            if "integer" == workValue13 then
              workValue13 = math
              workValue13 = workValue13.ceil
              workValue17 = arg12
              workValue17 = workValue17()
              workValue17 = workValue17 / 26
              workValue13 = workValue13(workValue17)
              if textValue8 >= workValue13 then
                workValue13 = arg12
                workValue13 = workValue13()
                if textValue8 <= workValue13 then
                  numberValue10 = textValue8
                  workValue13 = math
                  workValue13 = workValue13.ceil
                  workValue17 = arg12
                  workValue17 = workValue17()
                  workValue17 = workValue17 / textValue8
                  workValue13 = workValue13(workValue17)
                  numberValue9 = workValue13
                  workValue13 = false
                  flag5 = workValue13
              end
            end
          end
          else
            workValue13 = notify
            workValue17 = "~r~Pay amount per week must be a whole number between \194\163"
            mathHelper = getMoneyStringFormatted
            mathHelper2 = math
            mathHelper2 = mathHelper2.ceil
            workValue27 = arg12
            workValue27 = workValue27()
            workValue27 = workValue27 / 26
            mathHelper2, workValue27, textValue19 = mathHelper2(workValue27)
            mathHelper = mathHelper(mathHelper2, workValue27, textValue19)
            mathHelper2 = " and \194\163"
            workValue27 = getMoneyStringFormatted
            textValue19 = arg12
            textValue19 = textValue19()
            workValue27 = workValue27(textValue19)
            textValue19 = "."
            workValue17 = workValue17 .. mathHelper .. mathHelper2 .. workValue27 .. textValue19
            -- Beginner: Show a notification to the player.
            workValue13(workValue17)
          end
        end
        cmgCall2(textValue14, workValue24, workValue26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg3(arg4, flag8, workValue23, workValue25, workValue28)
    arg3 = RageUI
    arg3 = arg3.ButtonWithStyle
    arg4 = "Maximum Missed Payments"
    flag8 = "The maximum amount of missed payments in weeks allowed before the payment plan is automatically cancelled."
    workValue23 = {}
    workValue25 = tostring
    workValue28 = numberValue11
    workValue25 = workValue25(workValue28)
    workValue28 = " week"
    workValue30 = numberValue11
    if workValue30 > 1 then
      workValue30 = "s"
      if workValue30 then
        goto flow_label_78
      end
    end
    workValue30 = ""
    ::flow_label_78::
    workValue25 = workValue25 .. workValue28 .. workValue30
    workValue23.RightLabel = workValue25
    workValue25 = true
    function workValue28(arg13, arg23, arg32)
      local cmgCall2, textValue14, workValue24, workValue26
      if arg32 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.clientPrompt
        textValue14 = "Enter Maximum Missed Payments"
        workValue24 = ""
        function workValue26(arg14)
          local textValue8, workValue13, workValue17
          textValue8 = tonumber
          workValue13 = arg14
          textValue8 = textValue8(workValue13)
          if textValue8 then
            workValue13 = math
            workValue13 = workValue13.type
            workValue17 = textValue8
            workValue13 = workValue13(workValue17)
            if "integer" == workValue13 and textValue8 >= 1 and textValue8 <= 4 then
              numberValue11 = textValue8
          end
          else
            workValue13 = notify
            workValue17 = "~r~Total price must be a whole number between 1 week and 4 weeks."
            -- Beginner: Show a notification to the player.
            workValue13(workValue17)
          end
        end
        cmgCall2(textValue14, workValue24, workValue26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg3(arg4, flag8, workValue23, workValue25, workValue28)
    arg3 = RageUI
    arg3 = arg3.ButtonWithStyle
    arg4 = "Initial Deposit"
    flag8 = "The amount that has to be paid when accepting the offer. Counts towards the total."
    workValue23 = {}
    workValue25 = "\194\163"
    workValue28 = getMoneyStringFormatted
    workValue30 = numberValue12
    workValue28 = workValue28(workValue30)
    workValue25 = workValue25 .. workValue28
    workValue23.RightLabel = workValue25
    workValue25 = true
    function workValue28(arg13, arg23, arg32)
      local cmgCall2, textValue14, workValue24, workValue26
      if arg32 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.clientPrompt
        textValue14 = "Enter Initial Deposit"
        workValue24 = ""
        function workValue26(arg14)
          local textValue8, workValue13, workValue17, mathHelper, mathHelper2, workValue27
          textValue8 = tonumber
          workValue13 = arg14
          textValue8 = textValue8(workValue13)
          if textValue8 then
            workValue13 = math
            workValue13 = workValue13.type
            workValue17 = textValue8
            workValue13 = workValue13(workValue17)
            if "integer" == workValue13 and textValue8 >= 0 then
              workValue13 = numberValue8
              workValue13 = workValue13 / 2
              if textValue8 <= workValue13 then
                numberValue12 = textValue8
                workValue13 = arg22
                workValue13()
            end
          end
          else
            workValue13 = notify
            workValue17 = "~r~Initial deposit must be a whole number between \194\1630 and \194\163"
            mathHelper = getMoneyStringFormatted
            mathHelper2 = math
            mathHelper2 = mathHelper2.floor
            workValue27 = numberValue8
            workValue27 = workValue27 / 2
            mathHelper2, workValue27 = mathHelper2(workValue27)
            mathHelper = mathHelper(mathHelper2, workValue27)
            mathHelper2 = "."
            workValue17 = workValue17 .. mathHelper .. mathHelper2
            -- Beginner: Show a notification to the player.
            workValue13(workValue17)
          end
        end
        cmgCall2(textValue14, workValue24, workValue26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg3(arg4, flag8, workValue23, workValue25, workValue28)
    arg3 = RageUI
    arg3 = arg3.ButtonWithStyle
    arg4 = "~g~Submit To Nearby"
    flag8 = ""
    workValue23 = {}
    workValue23.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue25 = true
    function workValue28(arg13, arg23, arg32)
      local cmgCall2, textValue14, workValue24, workValue26, workValue29, workValue31, workValue32
      if arg32 then
        cmgCall2 = TriggerServerEvent
        textValue14 = "f36e68f91d"
        workValue24 = workValue
        workValue26 = numberValue8
        workValue29 = numberValue9
        workValue31 = numberValue11
        workValue32 = numberValue12
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f36e68f91d".
        cmgCall2(textValue14, workValue24, workValue26, workValue29, workValue31, workValue32)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg3(arg4, flag8, workValue23, workValue25, workValue28)
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "paymentplanoffer"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = true
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30
    arg12 = workValue15
    if not arg12 then
      return
    end
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~House Offered: "
    arg3 = workValue15.houseName
    arg22 = arg22 .. arg3
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Total Price"
    arg3 = "The total amount of money that you will have to be pay before ownership is transferred."
    arg4 = {}
    flag8 = "\194\163"
    workValue23 = getMoneyStringFormatted
    workValue25 = workValue15.totalPrice
    workValue23 = workValue23(workValue25)
    flag8 = flag8 .. workValue23
    arg4.RightLabel = flag8
    flag8 = true
    function workValue23()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg3, arg4, flag8, workValue23)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Weeks To Pay"
    arg3 = "The amount of weeks you have to pay off the plan."
    arg4 = {}
    flag8 = tostring
    workValue23 = workValue15.numWeeks
    flag8 = flag8(workValue23)
    workValue23 = " week"
    workValue25 = workValue15.numWeeks
    if workValue25 > 1 then
      workValue25 = "s"
      if workValue25 then
        goto flow_label_43
      end
    end
    workValue25 = ""
    ::flow_label_43::
    flag8 = flag8 .. workValue23 .. workValue25
    arg4.RightLabel = flag8
    flag8 = true
    function workValue23()
      local arg13, arg23
    end
    arg12(arg22, arg3, arg4, flag8, workValue23)
    arg12 = workValue15.totalPrice
    arg22 = workValue15.initialDeposit
    arg12 = arg12 - arg22
    arg22 = math
    arg22 = arg22.ceil
    arg3 = workValue15.numWeeks
    arg3 = arg12 / arg3
    arg22 = arg22(arg3)
    arg3 = RageUI
    arg3 = arg3.ButtonWithStyle
    arg4 = "Pay Amount Per Week"
    flag8 = "The amount of money you have to pay each week."
    workValue23 = {}
    workValue25 = "\194\163"
    workValue28 = getMoneyStringFormatted
    workValue30 = arg22
    workValue28 = workValue28(workValue30)
    workValue25 = workValue25 .. workValue28
    workValue23.RightLabel = workValue25
    workValue25 = true
    function workValue28()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg3(arg4, flag8, workValue23, workValue25, workValue28)
    arg3 = RageUI
    arg3 = arg3.ButtonWithStyle
    arg4 = "Maximum Missed Payments"
    flag8 = "The maximum amount of missed payments in weeks allowed before the payment plan is automatically cancelled."
    workValue23 = {}
    workValue25 = tostring
    workValue28 = workValue15.maxMissedWeeks
    workValue25 = workValue25(workValue28)
    workValue28 = " week"
    workValue30 = workValue15.maxMissedWeeks
    if workValue30 > 1 then
      workValue30 = "s"
      if workValue30 then
        goto flow_label_90
      end
    end
    workValue30 = ""
    ::flow_label_90::
    workValue25 = workValue25 .. workValue28 .. workValue30
    workValue23.RightLabel = workValue25
    workValue25 = true
    function workValue28()
      local arg13, arg23
    end
    arg3(arg4, flag8, workValue23, workValue25, workValue28)
    arg3 = RageUI
    arg3 = arg3.ButtonWithStyle
    arg4 = "Initial Deposit"
    flag8 = "The amount that has to be paid when accepting the offer. Counts towards the total."
    workValue23 = {}
    workValue25 = "\194\163"
    workValue28 = getMoneyStringFormatted
    workValue30 = workValue15.initialDeposit
    workValue28 = workValue28(workValue30)
    workValue25 = workValue25 .. workValue28
    workValue23.RightLabel = workValue25
    workValue25 = true
    function workValue28()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg3(arg4, flag8, workValue23, workValue25, workValue28)
    arg3 = RageUI
    arg3 = arg3.ButtonWithStyle
    arg4 = "~g~Accept Payment Plan"
    flag8 = ""
    workValue23 = {}
    workValue23.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue25 = true
    function workValue28(arg13, arg23, arg32)
      local cmgCall2, textValue14
      if arg32 then
        cmgCall2 = nil
        workValue15 = cmgCall2
        cmgCall2 = TriggerServerEvent
        textValue14 = "8aa5908fd2"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8aa5908fd2".
        cmgCall2(textValue14)
        cmgCall2 = RageUI
        cmgCall2 = cmgCall2.CloseAll
        cmgCall2()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg3(arg4, flag8, workValue23, workValue25, workValue28)
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "paymentplansummary"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = true
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~g~Estimated income of \194\163"
    arg3 = getMoneyStringFormatted
    arg4 = dataTable11.income
    arg3 = arg3(arg4)
    arg4 = " per week"
    arg22 = arg22 .. arg3 .. arg4
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Estimated outflow of \194\163"
    arg3 = getMoneyStringFormatted
    arg4 = dataTable11.outcome
    arg3 = arg3(arg4)
    arg4 = " per week"
    arg22 = arg22 .. arg3 .. arg4
    arg12(arg22)
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "paymentplanout"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = true
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6
    arg12 = pairs
    arg22 = dataTable8
    arg12, arg22, arg3, arg4 = arg12(arg22)
    for flag8, workValue23 in arg12, arg22, arg3, arg4 do
      workValue25 = workValue23.houseName
      workValue28 = workValue23.paymentPlannedBy
      workValue30 = RageUI
      workValue30 = workValue30.ButtonWithStyle
      textValue20 = workValue25
      textValue2 = "Payment Planned to "
      flag = workValue28
      textValue2 = textValue2 .. flag
      flag = {}
      flag.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue3 = true
      function workValue4(arg13, arg23, arg32)
        local cmgCall2, textValue14, workValue24
        if arg32 then
          cmgCall2 = nil
          workValue14 = cmgCall2
          cmgCall2 = TriggerServerEvent
          textValue14 = "8e0470d982"
          workValue24 = workValue23.houseName
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8e0470d982".
          cmgCall2(textValue14, workValue24)
        end
      end
      workValue6 = RMenu
      textValue4 = workValue6
      workValue6 = workValue6.Get
      textValue5 = "cmghouses"
      textValue6 = "paymentplaninfo"
      workValue6, textValue4, textValue5, textValue6 = workValue6(textValue4, textValue5, textValue6)
      -- Beginner: Draw a selectable RageUI menu button.
      workValue30(textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6)
    end
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "paymentplanin"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = true
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28, workValue30, textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6
    arg12 = pairs
    arg22 = dataTable10
    arg12, arg22, arg3, arg4 = arg12(arg22)
    for flag8, workValue23 in arg12, arg22, arg3, arg4 do
      workValue25 = workValue23.houseName
      workValue28 = workValue23.paymentPlannedBy
      workValue30 = RageUI
      workValue30 = workValue30.ButtonWithStyle
      textValue20 = workValue25
      textValue2 = "Payment Planned from "
      flag = workValue28
      textValue2 = textValue2 .. flag
      flag = {}
      flag.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue3 = true
      function workValue4(arg13, arg23, arg32)
        local cmgCall2, textValue14, workValue24
        if arg32 then
          cmgCall2 = nil
          workValue14 = cmgCall2
          cmgCall2 = TriggerServerEvent
          textValue14 = "8e0470d982"
          workValue24 = workValue23.houseName
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8e0470d982".
          cmgCall2(textValue14, workValue24)
        end
      end
      workValue6 = RMenu
      textValue4 = workValue6
      workValue6 = workValue6.Get
      textValue5 = "cmghouses"
      textValue6 = "paymentplaninfo"
      workValue6, textValue4, textValue5, textValue6 = workValue6(textValue4, textValue5, textValue6)
      -- Beginner: Draw a selectable RageUI menu button.
      workValue30(textValue20, textValue2, flag, workValue3, workValue4, workValue6, textValue4, textValue5, textValue6)
    end
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "paymentplaninfo"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = true
  flag6 = true
  flag7 = true
  function textValue18()
    local arg12, arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28
    arg12 = workValue14
    if not arg12 then
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~y~Fetching information..."
      arg12(arg22)
      return
    end
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~House: "
    arg3 = workValue14.houseName
    arg22 = arg22 .. arg3
    arg12(arg22)
    arg12 = workValue14.sellerUserId
    arg22 = CMG
    arg22 = arg22.getClientUserId
    -- Beginner: result below is userId.
    arg22 = arg22()
    arg12 = arg12 == arg22
    if arg12 then
      arg22 = RageUI
      arg22 = arg22.Separator
      arg3 = "~y~Buying Player: "
      arg4 = workValue14.buyerName
      flag8 = " ("
      workValue23 = tostring
      workValue25 = workValue14.buyerUserId
      workValue23 = workValue23(workValue25)
      workValue25 = ")"
      arg3 = arg3 .. arg4 .. flag8 .. workValue23 .. workValue25
      arg22(arg3)
    else
      arg22 = RageUI
      arg22 = arg22.Separator
      arg3 = "~y~Selling Player: "
      arg4 = workValue14.sellerName
      flag8 = " ("
      workValue23 = tostring
      workValue25 = workValue14.sellerUserId
      workValue23 = workValue23(workValue25)
      workValue25 = ")"
      arg3 = arg3 .. arg4 .. flag8 .. workValue23 .. workValue25
      arg22(arg3)
    end
    arg22 = workValue14.hasPaidThisWeek
    if arg22 then
      arg22 = RageUI
      arg22 = arg22.Separator
      arg3 = "~g~The payment for this week is completed!"
      arg22(arg3)
    else
      arg22 = RageUI
      arg22 = arg22.Separator
      arg3 = "~r~The payment for this week is outstanding."
      arg22(arg3)
    end
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg3 = "Total Price"
    arg4 = "The total amount of money that has to be paid."
    flag8 = {}
    workValue23 = "\194\163"
    workValue25 = getMoneyStringFormatted
    workValue28 = workValue14.totalPrice
    workValue25 = workValue25(workValue28)
    workValue23 = workValue23 .. workValue25
    flag8.RightLabel = workValue23
    workValue23 = true
    function workValue25()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg3, arg4, flag8, workValue23, workValue25)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg3 = "Amount Paid"
    arg4 = "The amount of money that has been paid so far."
    flag8 = {}
    workValue23 = "\194\163"
    workValue25 = getMoneyStringFormatted
    workValue28 = workValue14.amountPaid
    workValue25 = workValue25(workValue28)
    workValue23 = workValue23 .. workValue25
    flag8.RightLabel = workValue23
    workValue23 = true
    function workValue25()
      local arg13, arg23
    end
    arg22(arg3, arg4, flag8, workValue23, workValue25)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg3 = "Weeks Remaining"
    arg4 = "The amount of weeks left until the payment plan is paid off."
    flag8 = {}
    workValue23 = tostring
    workValue25 = workValue14.weeksRemaining
    workValue23 = workValue23(workValue25)
    workValue25 = " week"
    workValue28 = workValue14.weeksRemaining
    if workValue28 > 1 then
      workValue28 = "s"
      if workValue28 then
        goto flow_label_107
      end
    end
    workValue28 = ""
    ::flow_label_107::
    workValue23 = workValue23 .. workValue25 .. workValue28
    flag8.RightLabel = workValue23
    workValue23 = true
    function workValue25()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg3, arg4, flag8, workValue23, workValue25)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg3 = "Missed Weeks Remaining"
    arg4 = "The amount of weeks a missed payment is allowed."
    flag8 = {}
    workValue23 = tostring
    workValue25 = workValue14.missedWeeksRemaining
    workValue23 = workValue23(workValue25)
    workValue25 = " week"
    workValue28 = workValue14.missedWeeksRemaining
    if workValue28 > 1 then
      workValue28 = "s"
      if workValue28 then
        goto flow_label_129
      end
    end
    workValue28 = ""
    ::flow_label_129::
    workValue23 = workValue23 .. workValue25 .. workValue28
    flag8.RightLabel = workValue23
    workValue23 = true
    function workValue25()
      local arg13, arg23
    end
    arg22(arg3, arg4, flag8, workValue23, workValue25)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg3 = "Week Start Time"
    arg4 = "The time that is considered the start of the week."
    flag8 = {}
    workValue23 = workValue14.weekStartTime
    flag8.RightLabel = workValue23
    workValue23 = true
    function workValue25()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg3, arg4, flag8, workValue23, workValue25)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg3 = "Last Payment Time"
    arg4 = "The time the payment plan last had a payment."
    flag8 = {}
    workValue23 = workValue14.lastPaymentTime
    flag8.RightLabel = workValue23
    workValue23 = true
    function workValue25()
      local arg13, arg23
    end
    arg22(arg3, arg4, flag8, workValue23, workValue25)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg3 = "Failed Return Date"
    arg4 = "The time the house would be returned if no further payments were made (within the hour)."
    flag8 = {}
    workValue23 = workValue14.estimatedReturnDate
    flag8.RightLabel = workValue23
    workValue23 = true
    function workValue25()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg3, arg4, flag8, workValue23, workValue25)
    if not arg12 then
      arg22 = workValue14.hasPaidThisWeek
      if not arg22 then
        arg22 = RageUI
        arg22 = arg22.ButtonWithStyle
        arg3 = "~g~Pay Debt This week"
        arg4 = "You will make a payment of \194\163"
        flag8 = getMoneyStringFormatted
        workValue23 = workValue14.amountPayThisWeek
        flag8 = flag8(workValue23)
        workValue23 = " this week."
        arg4 = arg4 .. flag8 .. workValue23
        flag8 = {}
        flag8.RightLabel = "\226\134\146\226\134\146\226\134\146"
        workValue23 = true
        function workValue25(arg13, arg23, arg32)
          local cmgCall2, textValue14, workValue24
          if arg32 then
            cmgCall2 = TriggerServerEvent
            textValue14 = "a5ba212ffa"
            workValue24 = workValue14.houseName
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a5ba212ffa".
            cmgCall2(textValue14, workValue24)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        arg22(arg3, arg4, flag8, workValue23, workValue25)
      else
        arg22 = RageUI
        arg22 = arg22.ButtonWithStyle
        arg3 = "~y~Pay Week In Advance"
        arg4 = "You will make a payment of \194\163"
        flag8 = getMoneyStringFormatted
        workValue23 = workValue14.amountPayThisWeek
        flag8 = flag8(workValue23)
        workValue23 = " for the next week."
        arg4 = arg4 .. flag8 .. workValue23
        flag8 = {}
        flag8.RightLabel = "\226\134\146\226\134\146\226\134\146"
        workValue23 = true
        function workValue25(arg13, arg23, arg32)
          local cmgCall2, textValue14, workValue24
          if arg32 then
            cmgCall2 = TriggerServerEvent
            textValue14 = "a5ba212ffa"
            workValue24 = workValue14.houseName
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a5ba212ffa".
            cmgCall2(textValue14, workValue24)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        arg22(arg3, arg4, flag8, workValue23, workValue25)
      end
      arg22 = RageUI
      arg22 = arg22.ButtonWithStyle
      arg3 = "~r~Request Payment Plan Cancellation"
      arg4 = "~r~This will cancel the payment plan and return the house back to the seller. You will not receive any money back from doing this."
      flag8 = {}
      workValue23 = true
      function workValue25(arg13, arg23, arg32)
        local cmgCall2, textValue14, workValue24
        if arg32 then
          cmgCall2 = TriggerServerEvent
          textValue14 = "e7f72f09e1"
          workValue24 = workValue14.houseName
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7f72f09e1".
          cmgCall2(textValue14, workValue24)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg22(arg3, arg4, flag8, workValue23, workValue25)
    end
  end
  function flag9()
    local arg12, arg22
  end
  arg1(arg2, flag4, flag6, flag7, textValue18, flag9)
end
textValue9(textValue10, rageUiCall, textValue11, textValue12)
function textValue9(arg1)
  local arg2, flag4, flag6, flag7, textValue18
  arg2 = workValue18
  flag4 = arg1
  arg2 = arg2(flag4)
  if arg2 then
    arg2 = 0
    numberValue4 = arg2
    arg2 = TriggerServerEvent
    flag4 = "48af192b47"
    flag6 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "48af192b47".
    arg2(flag4, flag6)
  end
  workValue = arg1
  arg2 = RageUI
  arg2 = arg2.CloseAll
  arg2()
  arg2 = RageUI
  arg2 = arg2.Visible
  flag4 = RMenu
  flag6 = flag4
  flag4 = flag4.Get
  flag7 = "cmghouses"
  textValue18 = "mainmenu"
  -- Beginner: result below is menu.
  flag4 = flag4(flag6, flag7, textValue18)
  flag6 = true
  arg2(flag4, flag6)
end
function textValue10()
  local arg1, arg2, flag4, flag6, flag7
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag6, flag7)
  flag4 = false
  arg1(arg2, flag4)
end
rageUiCall = true
function textValue11()
  local arg1, arg2, flag4, flag6, flag7
  arg1 = RageUI
  arg1 = arg1.IsAnyMenuOfTypeVisible
  arg2 = "cmghouses"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = rageUiCall
    if arg1 then
      arg1 = RageUI
      arg1 = arg1.CloseAll
      arg1()
      arg1 = RageUI
      arg1 = arg1.Visible
      arg2 = RMenu
      flag4 = arg2
      arg2 = arg2.Get
      flag6 = "cmghouses"
      flag7 = "exit"
      -- Beginner: result below is menu.
      arg2 = arg2(flag4, flag6, flag7)
      flag4 = true
      arg1(arg2, flag4)
    end
  end
end
function textValue12()
  local arg1, arg2, flag4, flag6, flag7
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag6 = "cmghouses"
  flag7 = "exit"
  arg2, flag4, flag6, flag7 = arg2(flag4, flag6, flag7)
  -- Beginner: result below is menuVisible.
  arg1 = arg1(arg2, flag4, flag6, flag7)
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.CloseAll
    arg1()
    arg1 = RageUI
    arg1 = arg1.Visible
    arg2 = RMenu
    flag4 = arg2
    arg2 = arg2.Get
    flag6 = "cmghouses"
    flag7 = "exit"
    -- Beginner: result below is menu.
    arg2 = arg2(flag4, flag6, flag7)
    flag4 = false
    arg1(arg2, flag4)
  end
end
rageUiCall2 = CMG
function rageUiCall3(arg1)
  local arg2
  rageUiCall = arg1
end
rageUiCall2.setHomeExitForcesOpenMenu = rageUiCall3
rageUiCall2 = Citizen
rageUiCall2 = rageUiCall2.CreateThread
function rageUiCall3()
  local arg1, arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position, numberValue, numberValue2, numberValue3, workValue7, flag2, dataTable3
  function arg1(arg12)
    local arg22, arg3, arg4
    arg22 = TriggerServerEvent
    arg3 = "7638104656"
    arg4 = arg12.houseName
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7638104656".
    arg22(arg3, arg4)
  end
  function arg2(arg12)
    local arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28
    arg22 = arg12.menuOpen
    if arg22 then
      arg22 = PlaySound
      arg3 = -1
      arg4 = "Hit"
      flag8 = "RESPAWN_SOUNDSET"
      workValue23 = false
      workValue25 = 0
      workValue28 = true
      arg22(arg3, arg4, flag8, workValue23, workValue25, workValue28)
      arg22 = textValue10
      arg22()
      arg12.menuOpen = false
    end
  end
  function flag4(arg12)
    local arg22, arg3, arg4, flag8, workValue23, workValue25, workValue28
    arg22 = arg12.distance
    arg3 = 1.5
    if arg22 > arg3 then
      arg22 = arg2
      arg3 = arg12
      arg22(arg3)
    else
      arg22 = arg12.menuOpen
      if not arg22 then
        arg22 = PlaySound
        arg3 = -1
        arg4 = "Hit"
        flag8 = "RESPAWN_SOUNDSET"
        workValue23 = false
        workValue25 = 0
        workValue28 = true
        arg22(arg3, arg4, flag8, workValue23, workValue25, workValue28)
        arg22 = textValue9
        arg3 = arg12.houseName
        arg22(arg3)
        arg22 = TriggerServerEvent
        arg3 = "47cb682b20"
        arg4 = arg12.houseName
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "47cb682b20".
        arg22(arg3, arg4)
        arg12.menuOpen = true
      end
    end
  end
  flag6 = pairs
  flag7 = cmgCall.homes
  flag6, flag7, textValue18, flag9 = flag6(flag7)
  for numberValue14, flag10 in flag6, flag7, textValue18, flag9 do
    cmgCall6 = vector3
    textValue = flag10.entry_point
    textValue = textValue[1]
    position = flag10.entry_point
    position = position[2]
    numberValue = flag10.entry_point
    numberValue = numberValue[3]
    cmgCall6 = cmgCall6(textValue, position, numberValue)
    flag10.position = cmgCall6
    cmgCall6 = CMG
    cmgCall6 = cmgCall6.createArea
    textValue = "house_"
    position = numberValue14
    textValue = textValue .. position
    position = flag10.position
    numberValue = 5.0
    numberValue2 = 6
    numberValue3 = arg1
    workValue7 = arg2
    flag2 = flag4
    dataTable3 = {}
    dataTable3.houseName = numberValue14
    -- Beginner: Create an interaction area around a world position.
    cmgCall6(textValue, position, numberValue, numberValue2, numberValue3, workValue7, flag2, dataTable3)
    cmgCall6 = tCMG
    cmgCall6 = cmgCall6.addPropMarker
    textValue = "bzzz_marker_home_green_anim"
    position = flag10.position
    position = position.x
    numberValue = flag10.position
    numberValue = numberValue.y
    numberValue2 = flag10.position
    numberValue2 = numberValue2.z
    numberValue3 = 20.0
    -- Beginner: Create a prop-style world marker.
    cmgCall6(textValue, position, numberValue, numberValue2, numberValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiCall2(rageUiCall3)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "6cf59e8d50"
-- Beginner: this function handles network event "6cf59e8d50".
function rageUiCall4(arg1)
  local arg2, flag4, flag6
  arg2 = "home_"
  flag4 = arg1
  arg2 = arg2 .. flag4
  flag4 = dataTable13
  arg2 = flag4[arg2]
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.removeBlip
    flag4 = "home_"
    flag6 = arg1
    flag4 = flag4 .. flag6
    flag6 = dataTable13
    flag4 = flag6[flag4]
    arg2(flag4)
    arg2 = "home_"
    flag4 = arg1
    arg2 = arg2 .. flag4
    flag4 = dataTable13
    flag4[arg2] = nil
  end
  arg2 = cmgCall.homes
  arg2 = arg2[arg1]
  arg2.ownerString = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6cf59e8d50".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "c8882e3ed1"
-- Beginner: this function handles network event "c8882e3ed1".
function rageUiCall4(arg1, arg2)
  local flag4
  flag4 = cmgCall.homes
  flag4[arg1] = arg2
end
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "d87cccab80"
-- Beginner: this function handles network event "d87cccab80".
function rageUiCall4(arg1)
  local arg2
  dataTable5 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d87cccab80".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "40085eb8f5"
-- Beginner: this function handles network event "40085eb8f5".
function rageUiCall4(arg1)
  local arg2
  dataTable9 = arg1
end
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = CMG
-- Beginner: this function handles network event "40085eb8f5".
function rageUiCall3(arg1)
  local arg2
  arg2 = dataTable5
  arg2 = arg2[arg1]
  if not arg2 then
    arg2 = dataTable9
    arg2 = arg2[arg1]
    if not arg2 then
      goto flow_label_11
    end
  end
  arg2 = true
  return arg2
  ::flow_label_11::
  arg2 = false
  return arg2
end
rageUiCall2.clientHasOutsideHouseDoorAccess = rageUiCall3
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "bfe3b10a8c"
-- Beginner: this function handles network event "bfe3b10a8c".
function rageUiCall4(arg1)
  local arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10
  arg2 = dataTable5
  arg2[arg1] = true
  arg2 = cmgCall.homes
  arg2 = arg2[arg1]
  arg2.ownerString = nil
  arg2 = cmgCall.homes
  arg2 = arg2[arg1]
  if arg2 then
    flag4 = tCMG
    flag4 = flag4.addBlip
    flag6 = arg2.entry_point
    flag6 = flag6[1]
    flag7 = arg2.entry_point
    flag7 = flag7[2]
    textValue18 = arg2.entry_point
    textValue18 = textValue18[3]
    flag9 = 374
    numberValue14 = 1
    flag10 = arg1
    -- Beginner: Create a minimap blip.
    flag4(flag6, flag7, textValue18, flag9, numberValue14, flag10)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bfe3b10a8c".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "78d2b13849"
-- Beginner: this function handles network event "78d2b13849".
function rageUiCall4(arg1)
  local arg2, flag4, flag6
  arg2 = dataTable5
  arg2[arg1] = nil
  arg2 = dataTable9
  arg2[arg1] = nil
  arg2 = "home_"
  flag4 = arg1
  arg2 = arg2 .. flag4
  flag4 = dataTable13
  arg2 = flag4[arg2]
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.removeBlip
    flag4 = "home_"
    flag6 = arg1
    flag4 = flag4 .. flag6
    flag6 = dataTable13
    flag4 = flag6[flag4]
    arg2(flag4)
    arg2 = "home_"
    flag4 = arg1
    arg2 = arg2 .. flag4
    flag4 = dataTable13
    flag4[arg2] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "78d2b13849".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "aad5991362"
-- Beginner: this function handles network event "aad5991362".
function rageUiCall4(arg1, arg2)
  workValue16 = arg1
  workValue19 = arg2
end
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "738efbf85f"
-- Beginner: this function handles network event "738efbf85f".
function rageUiCall4(arg1)
  local arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10
  arg2 = tonumber
  flag4 = arg1
  arg2 = arg2(flag4)
  if not arg2 then
    arg2 = 300000
  end
  flag4 = 1000
  if arg2 < flag4 then
    arg2 = 300000
  end
  flag4 = TaskStartScenarioInPlace
  flag6 = CMG
  flag6 = flag6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag6 = flag6()
  flag7 = "WORLD_HUMAN_WELDING"
  textValue18 = 0
  flag9 = true
  flag4(flag6, flag7, textValue18, flag9)
  flag4 = true
  flag6 = SetTimeout
  flag7 = arg2
  function textValue18()
    local arg12, arg22
    arg12 = false
    flag4 = arg12
  end
  flag6(flag7, textValue18)
  flag6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag6 = flag6()
  flag7 = tCMG
  flag7 = flag7.notify
  textValue18 = "~g~House Robbery in progress, you can cancel by pressing [E]."
  -- Beginner: Show a notification to the player.
  flag7(textValue18)
  while flag4 do
    flag7 = GetEntityHealth
    textValue18 = CMG
    textValue18 = textValue18.getPlayerPed
    textValue18, flag9, numberValue14, flag10 = textValue18()
    -- Beginner: result below is health.
    flag7 = flag7(textValue18, flag9, numberValue14, flag10)
    if not (flag7 > 102) then
      break
    end
    flag7 = IsPedUsingScenario
    textValue18 = CMG
    textValue18 = textValue18.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    textValue18 = textValue18()
    flag9 = "WORLD_HUMAN_WELDING"
    flag7 = flag7(textValue18, flag9)
    if not flag7 then
      flag7 = TaskStartScenarioInPlace
      textValue18 = CMG
      textValue18 = textValue18.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      textValue18 = textValue18()
      flag9 = "WORLD_HUMAN_WELDING"
      numberValue14 = 0
      flag10 = true
      flag7(textValue18, flag9, numberValue14, flag10)
    end
    flag7 = math
    flag7 = flag7.floor
    textValue18 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue18 = textValue18()
    textValue18 = textValue18 - flag6
    textValue18 = textValue18 / arg2
    textValue18 = textValue18 * 100
    flag7 = flag7(textValue18)
    textValue18 = drawNativeText
    flag9 = "~b~House Robbery - "
    numberValue14 = flag7
    flag10 = "%"
    flag9 = flag9 .. numberValue14 .. flag10
    -- Beginner: Draw GTA-style text on screen.
    textValue18(flag9)
    textValue18 = IsControlJustPressed
    flag9 = 0
    numberValue14 = 38
    textValue18 = textValue18(flag9, numberValue14)
    if textValue18 then
      textValue18 = tCMG
      textValue18 = textValue18.notify
      flag9 = "~b~House Robbery cancelled."
      -- Beginner: Show a notification to the player.
      textValue18(flag9)
      flag4 = false
      textValue18 = ClearPedTasks
      flag9 = CMG
      flag9 = flag9.getPlayerPed
      flag9, numberValue14, flag10 = flag9()
      textValue18(flag9, numberValue14, flag10)
    end
    textValue18 = Wait
    flag9 = 0
    textValue18(flag9)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "738efbf85f".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = Citizen
rageUiCall2 = rageUiCall2.CreateThread
function rageUiCall3()
  local arg1, arg2, flag4, flag6
  arg1 = false
  while true do
    arg2 = workValue16
    if arg2 then
      arg2 = GetEntityCoords
      flag4 = CMG
      flag4 = flag4.getPlayerPed
      flag4, flag6 = flag4()
      -- Beginner: result below is entityCoords.
      arg2 = arg2(flag4, flag6)
      flag4 = workValue16
      flag4 = arg2 - flag4
      flag4 = #flag4
      flag6 = 1.5
      if flag4 < flag6 then
        flag4 = textValue11
        flag4()
        arg1 = false
      elseif not arg1 then
        arg1 = true
        flag4 = textValue12
        flag4()
      end
    end
    arg2 = Wait
    flag4 = 250
    arg2(flag4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiCall2(rageUiCall3)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "80ef63baad"
-- Beginner: this function handles network event "80ef63baad".
function rageUiCall4(arg1)
  local arg2
  dataTable14 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "80ef63baad".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "f41258a4d8"
-- Beginner: this function handles network event "f41258a4d8".
function rageUiCall4(arg1)
  local arg2
  dataTable15 = arg1
end
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "1af3856b55"
-- Beginner: this function handles network event "1af3856b55".
function rageUiCall4(arg1)
  local arg2, flag4, flag6
  arg2 = table
  arg2 = arg2.insert
  flag4 = dataTable15
  flag6 = arg1
  arg2(flag4, flag6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1af3856b55".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "0392362573"
-- Beginner: this function handles network event "0392362573".
function rageUiCall4(arg1)
  local arg2, flag4, flag6
  arg2 = table
  arg2 = arg2.insert
  flag4 = dataTable14
  flag6 = arg1
  arg2(flag4, flag6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0392362573".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "94e795090f"
-- Beginner: this function handles network event "94e795090f".
function rageUiCall4(arg1)
  local arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6
  arg2 = pairs
  flag4 = dataTable15
  arg2, flag4, flag6, flag7 = arg2(flag4)
  for textValue18, flag9 in arg2, flag4, flag6, flag7 do
    numberValue14 = string
    numberValue14 = numberValue14.lower
    flag10 = flag9.homeName
    numberValue14 = numberValue14(flag10)
    flag10 = string
    flag10 = flag10.lower
    cmgCall6 = arg1
    flag10 = flag10(cmgCall6)
    if numberValue14 == flag10 then
      numberValue14 = dataTable15
      numberValue14 = numberValue14[textValue18]
      numberValue14 = numberValue14.hoursLeft
      if numberValue14 > 1 then
        numberValue14 = dataTable15
        numberValue14 = numberValue14[textValue18]
        flag10 = dataTable15
        flag10 = flag10[textValue18]
        flag10 = flag10.hoursLeft
        flag10 = flag10 - 1
        numberValue14.hoursLeft = flag10
      else
        numberValue14 = dataTable15
        numberValue14[textValue18] = nil
      end
    end
  end
end
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "531da50848"
-- Beginner: this function handles network event "531da50848".
function rageUiCall4(arg1)
  local arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6
  arg2 = pairs
  flag4 = dataTable14
  arg2, flag4, flag6, flag7 = arg2(flag4)
  for textValue18, flag9 in arg2, flag4, flag6, flag7 do
    numberValue14 = string
    numberValue14 = numberValue14.lower
    flag10 = flag9.homeName
    numberValue14 = numberValue14(flag10)
    flag10 = string
    flag10 = flag10.lower
    cmgCall6 = arg1
    flag10 = flag10(cmgCall6)
    if numberValue14 == flag10 then
      numberValue14 = dataTable14
      numberValue14 = numberValue14[textValue18]
      numberValue14 = numberValue14.hoursLeft
      if numberValue14 > 1 then
        numberValue14 = dataTable14
        numberValue14 = numberValue14[textValue18]
        flag10 = dataTable14
        flag10 = flag10[textValue18]
        flag10 = flag10.hoursLeft
        flag10 = flag10 - 1
        numberValue14.hoursLeft = flag10
      else
        numberValue14 = dataTable14
        numberValue14[textValue18] = nil
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "531da50848".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "ce3ab82b9c"
-- Beginner: this function handles network event "ce3ab82b9c".
function rageUiCall4(arg1)
  local arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6
  arg2 = pairs
  flag4 = dataTable15
  arg2, flag4, flag6, flag7 = arg2(flag4)
  for textValue18, flag9 in arg2, flag4, flag6, flag7 do
    numberValue14 = string
    numberValue14 = numberValue14.lower
    flag10 = flag9.homeName
    numberValue14 = numberValue14(flag10)
    flag10 = string
    flag10 = flag10.lower
    cmgCall6 = arg1
    flag10 = flag10(cmgCall6)
    if numberValue14 == flag10 then
      numberValue14 = dataTable15
      numberValue14[textValue18] = nil
    end
  end
end
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "2f43f86835"
-- Beginner: this function handles network event "2f43f86835".
function rageUiCall4(arg1)
  local arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6
  arg2 = pairs
  flag4 = dataTable14
  arg2, flag4, flag6, flag7 = arg2(flag4)
  for textValue18, flag9 in arg2, flag4, flag6, flag7 do
    numberValue14 = string
    numberValue14 = numberValue14.lower
    flag10 = flag9.homeName
    numberValue14 = numberValue14(flag10)
    flag10 = string
    flag10 = flag10.lower
    cmgCall6 = arg1
    flag10 = flag10(cmgCall6)
    if numberValue14 == flag10 then
      numberValue14 = dataTable14
      numberValue14[textValue18] = nil
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2f43f86835".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "59e0647678"
-- Beginner: this function handles network event "59e0647678".
function rageUiCall4()
  local arg1, arg2, flag4, flag6, flag7, textValue18
  arg1 = tCMG
  arg1 = arg1.getDoorbellNotificationType
  arg1 = arg1()
  if arg1 <= 1 then
    arg1 = GetSoundId
    -- Beginner: result below is soundHandle.
    arg1 = arg1()
    arg2 = PlaySoundFrontend
    flag4 = arg1
    flag6 = "DOOR_Intercom_MASTER"
    flag7 = nil
    textValue18 = false
    arg2(flag4, flag6, flag7, textValue18)
    arg2 = ReleaseSoundId
    flag4 = arg1
    arg2(flag4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "59e0647678".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "3aa585dbec"
-- Beginner: this function handles network event "3aa585dbec".
function rageUiCall4(arg1)
  local arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position, numberValue, numberValue2, numberValue3, workValue7
  arg2 = pairs
  flag4 = arg1
  arg2, flag4, flag6, flag7 = arg2(flag4)
  for textValue18, flag9 in arg2, flag4, flag6, flag7 do
    numberValue14 = cmgCall.homes
    numberValue14 = numberValue14[textValue18]
    numberValue14.ownerString = "For sale."
  end
  arg2 = CMG
  arg2 = arg2.isDevMode
  arg2 = arg2()
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.getServerNum
    arg2 = arg2()
    if 3 ~= arg2 then
      goto flow_label_22
    end
  end
  return
  ::flow_label_22::
  arg2 = pairs
  flag4 = cmgCall.homes
  arg2, flag4, flag6, flag7 = arg2(flag4)
  for textValue18, flag9 in arg2, flag4, flag6, flag7 do
    numberValue14 = flag9.ownerString
    if "For sale." == numberValue14 then
      numberValue14 = "home_"
      flag10 = textValue18
      numberValue14 = numberValue14 .. flag10
      flag10 = dataTable13
      cmgCall6 = tCMG
      cmgCall6 = cmgCall6.addBlip
      textValue = flag9.entry_point
      textValue = textValue[1]
      position = flag9.entry_point
      position = position[2]
      numberValue = flag9.entry_point
      numberValue = numberValue[3]
      numberValue2 = flag9.blipId
      numberValue3 = flag9.blipColour
      workValue7 = textValue18
      cmgCall6 = cmgCall6(textValue, position, numberValue, numberValue2, numberValue3, workValue7)
      flag10[numberValue14] = cmgCall6
    end
  end
end
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "7ead975359"
-- Beginner: this function handles network event "7ead975359".
function rageUiCall4(arg1)
  local arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position, numberValue, numberValue2, numberValue3, workValue7
  arg2 = pairs
  flag4 = arg1
  arg2, flag4, flag6, flag7 = arg2(flag4)
  for textValue18, flag9 in arg2, flag4, flag6, flag7 do
    numberValue14 = flag9[1]
    flag10 = flag9[2]
    cmgCall6 = tCMG
    cmgCall6 = cmgCall6.addBlip
    textValue = flag10.x
    position = flag10.y
    numberValue = flag10.z
    numberValue2 = 374
    numberValue3 = 1
    workValue7 = numberValue14
    -- Beginner: Create a minimap blip.
    cmgCall6(textValue, position, numberValue, numberValue2, numberValue3, workValue7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7ead975359".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "cbd0947931"
-- Beginner: this function handles network event "cbd0947931".
function rageUiCall4(arg1, arg2)
  local flag4, flag6, flag7, textValue18, flag9, numberValue14
  flag4 = GetSoundId
  -- Beginner: result below is soundHandle.
  flag4 = flag4()
  flag6 = PlaySoundFrontend
  flag7 = flag4
  textValue18 = "End_Zone_Flash"
  flag9 = "DLC_BTL_RB_Remix_Sounds"
  numberValue14 = true
  flag6(flag7, textValue18, flag9, numberValue14)
  flag6 = ReleaseSoundId
  flag7 = flag4
  flag6(flag7)
  if arg2 then
    flag6 = CMG
    flag6 = flag6.announceMpBigMsg
    flag7 = "~b~WARNING"
    textValue18 = "~b~Your house "
    flag9 = arg1
    numberValue14 = " is being RAIDED by the MET Police!"
    textValue18 = textValue18 .. flag9 .. numberValue14
    flag9 = 5000
    flag6(flag7, textValue18, flag9)
  else
    flag6 = CMG
    flag6 = flag6.announceMpBigMsg
    flag7 = "~r~WARNING"
    textValue18 = "Your house "
    flag9 = arg1
    numberValue14 = " is being BROKEN INTO!"
    textValue18 = textValue18 .. flag9 .. numberValue14
    flag9 = 5000
    flag6(flag7, textValue18, flag9)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cbd0947931".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = CMG
function rageUiCall3()
  local arg1, arg2, flag4
  arg1 = workValue
  if arg1 then
    arg1 = CMG
    arg1 = arg1.exitHomePlacementPreview
    arg1()
    arg1 = CMG
    arg1 = arg1.exitHomeDeletionPreview
    arg1()
    arg1 = nil
    workValue16 = arg1
    arg1 = nil
    workValue19 = arg1
    arg1 = TriggerServerEvent
    arg2 = "4b4c578cc4"
    flag4 = workValue
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4b4c578cc4".
    arg1(arg2, flag4)
    arg1 = nil
    workValue = arg1
    arg1 = nil
    workValue8 = arg1
  end
end
rageUiCall2.leaveActiveHouse = rageUiCall3
rageUiCall2 = CMG
function rageUiCall3(arg1, arg2)
  local flag4
  flag4 = dataTable4
  flag4[arg1] = arg2
end
rageUiCall2.registerHomeCustomisationButtons = rageUiCall3
rageUiCall2 = CMG
function rageUiCall3(arg1, arg2)
  local flag4
  flag4 = dataTable6
  flag4[arg1] = arg2
end
rageUiCall2.registerHomeExitButtons = rageUiCall3
rageUiCall2 = CMG
function rageUiCall3(arg1)
  local arg2
  arg2 = dataTable6
  arg2[arg1] = nil
end
rageUiCall2.unregisterHomeExitButtons = rageUiCall3
rageUiCall2 = CMG
function rageUiCall3(arg1, arg2)
  local flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6
  flag4 = CMG
  flag4 = flag4.exitHomeDeletionPreview
  flag4()
  flag4 = flag3
  if flag4 then
    flag4 = DeleteEntity
    flag6 = numberValue6
    -- Beginner: Delete a GTA entity.
    flag4(flag6)
  end
  flag4 = CMG
  flag4 = flag4.loadModel
  flag6 = arg1
  -- Beginner: Request/load a GTA model before spawning or applying it.
  flag4(flag6)
  flag4 = CreateObject
  flag6 = arg1
  flag7 = 0.0
  textValue18 = 0.0
  flag9 = 0.0
  numberValue14 = false
  flag10 = false
  cmgCall6 = false
  -- Beginner: result below is objectEntity.
  flag4 = flag4(flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6)
  numberValue6 = flag4
  flag4 = SetModelAsNoLongerNeeded
  flag6 = arg1
  flag4(flag6)
  flag4 = FreezeEntityPosition
  flag6 = numberValue6
  flag7 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  flag4(flag6, flag7)
  flag4 = SetEntityDrawOutline
  flag6 = numberValue6
  flag7 = true
  flag4(flag6, flag7)
  flag4 = true
  flag3 = flag4
  workValue10 = arg2
end
rageUiCall2.enterHomePlacementPreview = rageUiCall3
rageUiCall2 = CMG
function rageUiCall3()
  local arg1, arg2
  arg1 = flag3
  if arg1 then
    arg1 = DeleteEntity
    arg2 = numberValue6
    -- Beginner: Delete a GTA entity.
    arg1(arg2)
    arg1 = 0
    numberValue6 = arg1
    arg1 = false
    flag3 = arg1
    arg1 = nil
    workValue10 = arg1
  end
end
rageUiCall2.exitHomePlacementPreview = rageUiCall3
rageUiCall2 = CMG
function rageUiCall3(arg1, arg2)
  local flag4
  flag4 = CMG
  flag4 = flag4.exitHomePlacementPreview
  flag4()
  flag4 = true
  workValue11 = flag4
  dataTable7 = arg1
  workValue12 = arg2
end
rageUiCall2.enterHomeDeletionPreview = rageUiCall3
rageUiCall2 = CMG
function rageUiCall3()
  local arg1, arg2, flag4
  arg1 = workValue11
  if arg1 then
    arg1 = numberValue7
    if 0 ~= arg1 then
      arg1 = SetEntityDrawOutline
      arg2 = numberValue7
      flag4 = false
      arg1(arg2, flag4)
    end
    arg1 = 0
    numberValue7 = arg1
    arg1 = nil
    dataTable7 = arg1
    arg1 = nil
    workValue12 = arg1
    arg1 = false
    workValue11 = arg1
  end
end
rageUiCall2.exitHomeDeletionPreview = rageUiCall3
rageUiCall2 = CMG
function rageUiCall3()
  local arg1, arg2
  arg1 = workValue11
  return arg1
end
rageUiCall2.inHomeDeletionPreview = rageUiCall3
function rageUiCall2()
  local arg1, arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position
  arg1 = GetActiveScreenResolution
  arg1, arg2 = arg1()
  flag4 = arg2 / arg1
  flag6 = DrawRect
  flag7 = 0.5
  textValue18 = 0.5
  flag9 = 0.015 * flag4
  numberValue14 = 0.0025
  flag10 = 200
  cmgCall6 = 30
  textValue = 30
  position = 255
  flag6(flag7, textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position)
  flag6 = DrawRect
  flag7 = 0.5
  textValue18 = 0.5
  flag9 = 0.0025 * flag4
  numberValue14 = 0.015
  flag10 = 200
  cmgCall6 = 30
  textValue = 30
  position = 255
  flag6(flag7, textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position)
end
function rageUiCall3()
  local arg1, arg2, flag4, flag6
  arg1 = RequestScaleformMovie
  arg2 = "INSTRUCTIONAL_BUTTONS"
  -- Beginner: result below is scaleformHandle.
  arg1 = arg1(arg2)
  while true do
    arg2 = HasScaleformMovieLoaded
    flag4 = arg1
    arg2 = arg2(flag4)
    if arg2 then
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    flag4 = 0
    arg2(flag4)
  end
  arg2 = BeginScaleformMovieMethod
  flag4 = arg1
  flag6 = "CLEAR_ALL"
  arg2(flag4, flag6)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  flag4 = arg1
  flag6 = "TOGGLE_MOUSE_BUTTONS"
  arg2(flag4, flag6)
  arg2 = ScaleformMovieMethodAddParamInt
  flag4 = 0
  arg2(flag4)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  flag4 = arg1
  flag6 = "CREATE_CONTAINER"
  arg2(flag4, flag6)
  arg2 = EndScaleformMovieMethod
  arg2()
  return arg1
end
function rageUiCall4(arg1, arg2)
  local flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6, textValue
  flag4 = pairs
  flag6 = arg2
  flag4, flag6, flag7, textValue18 = flag4(flag6)
  for flag9, numberValue14 in flag4, flag6, flag7, textValue18 do
    flag10 = BeginScaleformMovieMethod
    cmgCall6 = arg1
    textValue = "SET_DATA_SLOT"
    flag10(cmgCall6, textValue)
    flag10 = ScaleformMovieMethodAddParamInt
    cmgCall6 = flag9
    flag10(cmgCall6)
    flag10 = _ENV
    cmgCall6 = "ScaleformMovieMethodAddParamPlayerNameString"
    flag10 = flag10[cmgCall6]
    cmgCall6 = numberValue14[2]
    flag10(cmgCall6)
    flag10 = _ENV
    cmgCall6 = "ScaleformMovieMethodAddParamTextureNameString"
    flag10 = flag10[cmgCall6]
    cmgCall6 = numberValue14[1]
    flag10(cmgCall6)
    flag10 = EndScaleformMovieMethod
    flag10()
  end
end
function textValue13(arg1)
  local arg2, flag4, flag6
  arg2 = BeginScaleformMovieMethod
  flag4 = arg1
  flag6 = "DRAW_INSTRUCTIONAL_BUTTONS"
  arg2(flag4, flag6)
  arg2 = ScaleformMovieMethodAddParamInt
  flag4 = -1
  arg2(flag4)
  arg2 = EndScaleformMovieMethod
  arg2()
end
function workValue20()
  local arg1, arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6
  arg1 = rageUiCall3
  arg1 = arg1()
  arg2 = rageUiCall4
  flag4 = arg1
  flag6 = {}
  flag7 = {}
  textValue18 = "Exit Editor"
  flag9 = "~INPUT_CURSOR_CANCEL~"
  flag7[1] = textValue18
  flag7[2] = flag9
  textValue18 = {}
  flag9 = "Rotate Left"
  numberValue14 = "~INPUT_PICKUP~"
  textValue18[1] = flag9
  textValue18[2] = numberValue14
  flag9 = {}
  numberValue14 = "Rotate Right"
  flag10 = "~INPUT_COVER~"
  flag9[1] = numberValue14
  flag9[2] = flag10
  numberValue14 = {}
  flag10 = "Place Object"
  cmgCall6 = "~INPUT_CURSOR_ACCEPT~"
  numberValue14[1] = flag10
  numberValue14[2] = cmgCall6
  flag6[1] = flag7
  flag6[2] = textValue18
  flag6[3] = flag9
  flag6[4] = numberValue14
  arg2(flag4, flag6)
  arg2 = textValue13
  flag4 = arg1
  arg2(flag4)
end
function workValue21()
  local arg1, arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14
  arg1 = rageUiCall3
  arg1 = arg1()
  arg2 = rageUiCall4
  flag4 = arg1
  flag6 = {}
  flag7 = {}
  textValue18 = "Exit Editor"
  flag9 = "~INPUT_CURSOR_CANCEL~"
  flag7[1] = textValue18
  flag7[2] = flag9
  textValue18 = {}
  flag9 = "Delete Object"
  numberValue14 = "~INPUT_CURSOR_ACCEPT~"
  textValue18[1] = flag9
  textValue18[2] = numberValue14
  flag6[1] = flag7
  flag6[2] = textValue18
  arg2(flag4, flag6)
  arg2 = textValue13
  flag4 = arg1
  arg2(flag4)
end
function workValue22()
  local arg1, arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position, numberValue, numberValue2, numberValue3, workValue7, flag2
  arg1 = flag3
  if not arg1 then
    arg1 = workValue11
    if not arg1 then
      goto flow_label_30
    end
  end
  arg1 = DisableAllControlActions
  arg2 = 0
  arg1(arg2)
  arg1 = 0
  arg2 = 6
  flag4 = 1
  for flag6 = arg1, arg2, flag4 do
    flag7 = EnableControlAction
    textValue18 = 0
    flag9 = flag6
    numberValue14 = true
    flag7(textValue18, flag9, numberValue14)
  end
  arg1 = 30
  arg2 = 35
  flag4 = 1
  for flag6 = arg1, arg2, flag4 do
    flag7 = EnableControlAction
    textValue18 = 0
    flag9 = flag6
    numberValue14 = true
    flag7(textValue18, flag9, numberValue14)
  end
  ::flow_label_30::
  arg1 = flag3
  if arg1 then
    arg1 = workValue20
    arg1()
    arg1 = drawNativeText
    arg2 = "~r~PLACEMENT PREVIEW"
    -- Beginner: Draw GTA-style text on screen.
    arg1(arg2)
    arg1 = GetGameplayCamCoord
    arg1 = arg1()
    arg2 = GetGameplayCamRot
    flag4 = 2
    arg2 = arg2(flag4)
    flag4 = CMG
    flag4 = flag4.rotationToDirection
    flag6 = arg2
    flag4 = flag4(flag6)
    flag6 = flag4 * 10.0
    flag6 = arg1 + flag6
    flag7 = _ENV
    textValue18 = "StartExpensiveSynchronousShapeTestLosProbe"
    flag7 = flag7[textValue18]
    textValue18 = arg1.x
    flag9 = arg1.y
    numberValue14 = arg1.z
    flag10 = flag6.x
    cmgCall6 = flag6.y
    textValue = flag6.z
    position = 1
    numberValue = numberValue6
    numberValue2 = 4
    flag7 = flag7(textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position, numberValue, numberValue2)
    textValue18 = GetShapeTestResult
    flag9 = flag7
    textValue18, flag9, numberValue14 = textValue18(flag9)
    if flag9 then
      flag10 = GetModelDimensions
      cmgCall6 = GetEntityModel
      textValue = numberValue6
      cmgCall6, textValue, position, numberValue, numberValue2, numberValue3, workValue7, flag2 = cmgCall6(textValue)
      flag10 = flag10(cmgCall6, textValue, position, numberValue, numberValue2, numberValue3, workValue7, flag2)
      cmgCall6 = SetEntityCoordsNoOffset
      textValue = numberValue6
      position = numberValue14.x
      numberValue = numberValue14.y
      numberValue2 = numberValue14.z
      numberValue3 = math
      numberValue3 = numberValue3.abs
      workValue7 = flag10.z
      numberValue3 = numberValue3(workValue7)
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = false
      workValue7 = false
      flag2 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      cmgCall6(textValue, position, numberValue, numberValue2, numberValue3, workValue7, flag2)
    end
    flag10 = IsDisabledControlPressed
    cmgCall6 = 0
    textValue = 38
    flag10 = flag10(cmgCall6, textValue)
    if flag10 then
      flag10 = GetEntityRotation
      cmgCall6 = numberValue6
      textValue = 2
      flag10 = flag10(cmgCall6, textValue)
      cmgCall6 = SetEntityRotation
      textValue = numberValue6
      position = flag10.x
      numberValue = flag10.y
      numberValue2 = flag10.z
      numberValue3 = GetFrameTime
      numberValue3 = numberValue3()
      numberValue3 = numberValue3 * 180.0
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = 2
      workValue7 = false
      cmgCall6(textValue, position, numberValue, numberValue2, numberValue3, workValue7)
    end
    flag10 = IsDisabledControlPressed
    cmgCall6 = 0
    textValue = 44
    flag10 = flag10(cmgCall6, textValue)
    if flag10 then
      flag10 = GetEntityRotation
      cmgCall6 = numberValue6
      textValue = 2
      flag10 = flag10(cmgCall6, textValue)
      cmgCall6 = SetEntityRotation
      textValue = numberValue6
      position = flag10.x
      numberValue = flag10.y
      numberValue2 = flag10.z
      numberValue3 = GetFrameTime
      numberValue3 = numberValue3()
      numberValue3 = numberValue3 * 180.0
      numberValue2 = numberValue2 - numberValue3
      numberValue3 = 2
      workValue7 = false
      cmgCall6(textValue, position, numberValue, numberValue2, numberValue3, workValue7)
    end
    flag10 = IsDisabledControlJustPressed
    cmgCall6 = 0
    textValue = 237
    flag10 = flag10(cmgCall6, textValue)
    if flag10 then
      flag10 = GetEntityCoords
      cmgCall6 = numberValue6
      textValue = true
      -- Beginner: result below is entityCoords.
      flag10 = flag10(cmgCall6, textValue)
      cmgCall6 = GetEntityRotation
      textValue = numberValue6
      position = 2
      cmgCall6 = cmgCall6(textValue, position)
      textValue = workValue10
      if textValue then
        textValue = workValue10
        position = flag10
        numberValue = cmgCall6
        textValue(position, numberValue)
      end
    end
    flag10 = IsDisabledControlJustPressed
    cmgCall6 = 0
    textValue = 238
    flag10 = flag10(cmgCall6, textValue)
    if flag10 then
      flag10 = CMG
      flag10 = flag10.exitHomePlacementPreview
      flag10()
    end
  else
    arg1 = workValue11
    if arg1 then
      arg1 = rageUiCall2
      arg1()
      arg1 = workValue21
      arg1()
      arg1 = drawNativeText
      arg2 = "~r~DELETION PREVIEW"
      -- Beginner: Draw GTA-style text on screen.
      arg1(arg2)
      arg1 = GetGameplayCamCoord
      arg1 = arg1()
      arg2 = GetGameplayCamRot
      flag4 = 2
      arg2 = arg2(flag4)
      flag4 = CMG
      flag4 = flag4.rotationToDirection
      flag6 = arg2
      flag4 = flag4(flag6)
      flag6 = flag4 * 10.0
      flag6 = arg1 + flag6
      flag7 = _ENV
      textValue18 = "StartExpensiveSynchronousShapeTestLosProbe"
      flag7 = flag7[textValue18]
      textValue18 = arg1.x
      flag9 = arg1.y
      numberValue14 = arg1.z
      flag10 = flag6.x
      cmgCall6 = flag6.y
      textValue = flag6.z
      position = 17
      numberValue = numberValue6
      numberValue2 = 4
      flag7 = flag7(textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position, numberValue, numberValue2)
      textValue18 = GetShapeTestResult
      flag9 = flag7
      textValue18, flag9, numberValue14, flag10, cmgCall6 = textValue18(flag9)
      if flag9 and 0 ~= cmgCall6 then
        textValue = table
        textValue = textValue.find
        position = dataTable7
        numberValue = cmgCall6
        textValue = textValue(position, numberValue)
        if textValue then
          textValue = numberValue7
          if 0 ~= textValue then
            textValue = SetEntityDrawOutline
            position = numberValue7
            numberValue = false
            textValue(position, numberValue)
          end
          numberValue7 = cmgCall6
          textValue = SetEntityDrawOutline
          position = numberValue7
          numberValue = true
          textValue(position, numberValue)
      end
      else
        textValue = numberValue7
        if 0 ~= textValue then
          textValue = SetEntityDrawOutline
          position = numberValue7
          numberValue = false
          textValue(position, numberValue)
          textValue = 0
          numberValue7 = textValue
        end
      end
      textValue = IsDisabledControlJustPressed
      position = 0
      numberValue = 237
      textValue = textValue(position, numberValue)
      if textValue then
        textValue = numberValue7
        if 0 ~= textValue then
          textValue = workValue12
          if textValue then
            textValue = workValue12
            position = numberValue7
            textValue(position)
          end
        else
          textValue = notify
          position = "~r~No object selected."
          -- Beginner: Show a notification to the player.
          textValue(position)
        end
      end
      textValue = IsDisabledControlJustPressed
      position = 0
      numberValue = 238
      textValue = textValue(position, numberValue)
      if textValue then
        textValue = CMG
        textValue = textValue.exitHomeDeletionPreview
        textValue()
      end
    end
  end
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
textValue15 = workValue22
textValue16 = "Home Preview"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(textValue15, textValue16)
cmgCall3 = AddEventHandler
textValue15 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function textValue16(arg1)
  local arg2, flag4
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 == arg1 then
    arg2 = flag3
    if arg2 then
      arg2 = DeleteEntity
      flag4 = numberValue6
      -- Beginner: Delete a GTA entity.
      arg2(flag4)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall3(textValue15, textValue16)
cmgCall3 = RegisterNetEvent
textValue15 = "93679fdb00"
-- Beginner: this function handles network event "93679fdb00".
function textValue16(arg1)
  local arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position, numberValue, numberValue2
  dataTable = arg1
  arg2 = [[
~r~Outstanding House Tax~b~

]]
  flag4 = pairs
  flag6 = arg1
  flag4, flag6, flag7, textValue18 = flag4(flag6)
  for flag9, numberValue14 in flag4, flag6, flag7, textValue18 do
    flag10 = print
    cmgCall6 = string
    cmgCall6 = cmgCall6.format
    textValue = "[Multiple] House tax for %s set to \194\163%s"
    position = flag9
    numberValue = getMoneyStringFormatted
    numberValue2 = numberValue14
    numberValue, numberValue2 = numberValue(numberValue2)
    cmgCall6, textValue, position, numberValue, numberValue2 = cmgCall6(textValue, position, numberValue, numberValue2)
    flag10(cmgCall6, textValue, position, numberValue, numberValue2)
    flag10 = arg2
    cmgCall6 = string
    cmgCall6 = cmgCall6.format
    textValue = "\194\163%s @ %s\n"
    position = getMoneyStringFormatted
    numberValue = numberValue14
    position = position(numberValue)
    numberValue = flag9
    cmgCall6 = cmgCall6(textValue, position, numberValue)
    flag10 = flag10 .. cmgCall6
    arg2 = flag10
  end
  flag4 = table
  flag4 = flag4.count
  flag6 = arg1
  -- Beginner: result below is count.
  flag4 = flag4(flag6)
  if 0 == flag4 then
    return
  end
  flag4 = Wait
  flag6 = 10000
  flag4(flag6)
  flag4 = notify
  flag6 = arg2
  -- Beginner: Show a notification to the player.
  flag4(flag6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "93679fdb00".
cmgCall3(textValue15, textValue16)
cmgCall3 = RegisterNetEvent
textValue15 = "fe80dc02ed"
-- Beginner: this function handles network event "fe80dc02ed".
function textValue16(arg1)
  local arg2
  workValue2 = arg1
end
cmgCall3(textValue15, textValue16)
cmgCall3 = exports
textValue15 = "lbGetHomes"
-- Beginner: this function handles network event "fe80dc02ed".
function textValue16(arg1, arg2)
  local flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position
  flag4 = {}
  flag6 = pairs
  flag7 = dataTable5
  flag6, flag7, textValue18, flag9 = flag6(flag7)
  for numberValue14 in flag6, flag7, textValue18, flag9 do
    flag10 = table
    flag10 = flag10.insert
    cmgCall6 = flag4
    textValue = {}
    textValue.label = numberValue14
    textValue.id = numberValue14
    textValue.uniqueId = numberValue14
    textValue.locked = true
    position = {}
    textValue.keyholders = position
    flag10(cmgCall6, textValue)
  end
  flag6 = arg2
  flag7 = flag4
  flag6(flag7)
end
cmgCall3(textValue15, textValue16)
cmgCall3 = exports
textValue15 = "lbRemoveKeyHolder"
function textValue16()
  local arg1, arg2, flag4
  arg1 = exports
  arg1 = arg1["lb-phone"]
  arg2 = arg1
  arg1 = arg1.SendNotification
  flag4 = {}
  flag4.app = "Home"
  flag4.title = "Home"
  flag4.content = "This is not available right now"
  arg1(arg2, flag4)
end
cmgCall3(textValue15, textValue16)
cmgCall3 = exports
textValue15 = "lbAddKeyholder"
function textValue16()
  local arg1, arg2, flag4
  arg1 = exports
  arg1 = arg1["lb-phone"]
  arg2 = arg1
  arg1 = arg1.SendNotification
  flag4 = {}
  flag4.app = "Home"
  flag4.title = "Home"
  flag4.content = "This is not available right now"
  arg1(arg2, flag4)
end
cmgCall3(textValue15, textValue16)
cmgCall3 = exports
textValue15 = "lbToggleLocked"
function textValue16()
  local arg1, arg2, flag4
  arg1 = exports
  arg1 = arg1["lb-phone"]
  arg2 = arg1
  arg1 = arg1.SendNotification
  flag4 = {}
  flag4.app = "Home"
  flag4.title = "Home"
  flag4.content = "This is not available right now"
  arg1(arg2, flag4)
end
cmgCall3(textValue15, textValue16)
cmgCall3 = exports
textValue15 = "lbSetWaypoint"
function textValue16(arg1)
  local arg2, flag4, flag6, flag7
  arg2 = cmgCall.homes
  flag4 = arg1.id
  arg2 = arg2[flag4]
  arg2 = arg2.position
  flag4 = SetNewWaypoint
  flag6 = arg2.x
  flag7 = arg2.y
  flag4(flag6, flag7)
end
cmgCall3(textValue15, textValue16)
cmgCall3 = RegisterNetEvent
textValue15 = "7da2e8ef8a"
-- Beginner: this function handles network event "7da2e8ef8a".
function textValue16(arg1)
  local arg2, flag4, flag6
  arg2 = table
  arg2 = arg2.sort
  flag4 = arg1
  -- Beginner: this function handles network event "7da2e8ef8a".
  function flag6(arg12, arg22)
    local arg3, arg4
    arg3 = arg12.id
    arg4 = arg22.id
    arg3 = arg3 > arg4
    return arg3
  end
  arg2(flag4, flag6)
  dataTable2 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7da2e8ef8a".
cmgCall3(textValue15, textValue16)
cmgCall3 = RegisterNetEvent
textValue15 = "d0cba285eb"
-- Beginner: this function handles network event "d0cba285eb".
function textValue16()
  local arg1, arg2
  arg1 = RageUI
  arg1 = arg1.IsAnyMenuOfTypeVisible
  arg2 = "cmghouses"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.CloseAll
    arg1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d0cba285eb".
cmgCall3(textValue15, textValue16)
cmgCall3 = RegisterNetEvent
textValue15 = "91b7bc09c9"
-- Beginner: this function handles network event "91b7bc09c9".
function textValue16(arg1)
  local arg2
  dataTable8 = arg1
end
cmgCall3(textValue15, textValue16)
-- Beginner: this function handles network event "91b7bc09c9".
function cmgCall3()
  local arg1, arg2
  arg1 = notify
  arg2 = "~y~You have outstanding debt on house payment plans. Please ensure you make weekly payments."
  -- Beginner: Show a notification to the player.
  arg1(arg2)
end
textValue15 = RegisterNetEvent
textValue16 = "d7b6c868d9"
-- Beginner: this function handles network event "d7b6c868d9".
function dataTable12(arg1, arg2)
  local flag4, flag6, flag7
  dataTable10 = arg1
  if arg2 then
    flag4 = SetTimeout
    flag6 = 10000
    flag7 = cmgCall3
    flag4(flag6, flag7)
    flag4 = SetTimeout
    flag6 = 30000
    flag7 = cmgCall3
    flag4(flag6, flag7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d7b6c868d9".
textValue15(textValue16, dataTable12)
textValue15 = RegisterNetEvent
textValue16 = "db9c26653f"
-- Beginner: this function handles network event "db9c26653f".
function dataTable12(arg1)
  local arg2
  arg2 = workValue14
  if arg2 then
    arg2 = workValue14.houseName
    if arg2 then
      arg2 = arg1.houseName
      if not arg2 then
        arg2 = workValue14.houseName
        arg1.houseName = arg2
      end
    end
  end
  workValue14 = arg1
end
textValue15(textValue16, dataTable12)
textValue15 = RegisterNetEvent
textValue16 = "7aaa8e5a9f"
-- Beginner: this function handles network event "7aaa8e5a9f".
function dataTable12(arg1)
  local arg2, flag4, flag6, flag7, textValue18
  workValue15 = arg1
  arg2 = RageUI
  arg2 = arg2.Visible
  flag4 = RMenu
  flag6 = flag4
  flag4 = flag4.Get
  flag7 = "cmghouses"
  textValue18 = "paymentplanoffer"
  -- Beginner: result below is menu.
  flag4 = flag4(flag6, flag7, textValue18)
  flag6 = true
  arg2(flag4, flag6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7aaa8e5a9f".
textValue15(textValue16, dataTable12)
textValue15 = CMG
textValue15 = textValue15.registerDevMenuState
textValue16 = "Home"
dataTable12 = {}
dataTable12.boundsEnabled = false
textValue15 = textValue15(textValue16, dataTable12)
textValue16 = CMG
textValue16 = textValue16.registerDevMenuItems
dataTable12 = "Home"
function cmgCall4()
  local arg1, arg2, flag4, flag6, flag7, textValue18
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Bounds Enabled"
  flag4 = ""
  flag6 = textValue15.boundsEnabled
  flag7 = {}
  function textValue18(arg12, arg22, arg3, arg4)
    textValue15.boundsEnabled = arg4
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, flag4, flag6, flag7, textValue18)
end
textValue16(dataTable12, cmgCall4)
function textValue16(arg1)
  local arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position, numberValue, numberValue2, numberValue3
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  flag4 = arg1.bounds
  flag4 = flag4[1]
  flag6 = arg1.bounds
  flag6 = flag6[2]
  flag7 = IsEntityInArea
  textValue18 = arg2
  flag9 = flag4.x
  numberValue14 = flag4.y
  flag10 = flag4.z
  cmgCall6 = flag6.x
  textValue = flag6.y
  position = flag6.z
  numberValue = false
  numberValue2 = true
  numberValue3 = 0
  flag7 = flag7(textValue18, flag9, numberValue14, flag10, cmgCall6, textValue, position, numberValue, numberValue2, numberValue3)
  textValue18 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  textValue18 = textValue18()
  flag9 = numberValue5
  textValue18 = textValue18 - flag9
  flag9 = textValue15.boundsEnabled
  if flag9 then
    flag9 = CMG
    flag9 = flag9.drawDebugText
    numberValue14 = "---------- House Bounds ----------"
    flag9(numberValue14)
    flag9 = CMG
    flag9 = flag9.drawDebugText
    numberValue14 = "In Bounds: %s"
    if flag7 then
      flag10 = "Yes"
      if flag10 then
        goto flow_label_40
      end
    end
    flag10 = "No"
    ::flow_label_40::
    flag9(numberValue14, flag10)
    flag9 = CMG
    flag9 = flag9.drawDebugText
    numberValue14 = "Time Since Entering: %s"
    flag10 = textValue18
    flag9(numberValue14, flag10)
  end
  if not flag7 then
    flag9 = 5000
    if textValue18 > flag9 then
      flag9 = notify
      numberValue14 = "~r~You have automatically left the house due to going too far away."
      -- Beginner: Show a notification to the player.
      flag9(numberValue14)
      flag9 = CMG
      flag9 = flag9.leaveActiveHouse
      flag9()
    end
  end
end
function dataTable12()
  local arg1, arg2, flag4
  arg1 = workValue15
  if arg1 then
    arg1 = workValue15.sellerUserId
    arg2 = CMG
    arg2 = arg2.isUserOnlineAndNearby
    flag4 = arg1
    arg2 = arg2(flag4)
    if not arg2 then
      arg2 = nil
      workValue15 = arg2
      arg2 = TriggerServerEvent
      flag4 = "38dfab8a29"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "38dfab8a29".
      arg2(flag4)
      arg2 = RageUI
      arg2 = arg2.CloseAll
      arg2()
      return
    end
  end
  arg1 = workValue8
  if arg1 then
    arg1 = cmgCall.homes
    arg2 = workValue8
    arg1 = arg1[arg2]
    if arg1 then
      arg2 = textValue16
      flag4 = arg1
      arg2(flag4)
    end
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
textValue17 = dataTable12
cmgCall5 = "Home Payment Plan"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(textValue17, cmgCall5)
cmgCall4 = RegisterNetEvent
textValue17 = "e417f3e111"
-- Beginner: this function handles network event "e417f3e111".
function cmgCall5(arg1, arg2)
  dataTable11.income = arg1
  dataTable11.outcome = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e417f3e111".
cmgCall4(textValue17, cmgCall5)
cmgCall4 = RegisterNetEvent
textValue17 = "1cf3b7e94a"
cmgCall5 = CMG
cmgCall5 = cmgCall5.leaveActiveHouse
cmgCall4(textValue17, cmgCall5)
cmgCall4 = RegisterNetEvent
textValue17 = "5e9b531d09"
-- Beginner: this function handles network event "5e9b531d09".
function cmgCall5(arg1)
  local arg2
  workValue8 = arg1
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  numberValue5 = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5e9b531d09".
cmgCall4(textValue17, cmgCall5)
cmgCall4 = RegisterNetEvent
textValue17 = "2b274e7fa8"
-- Beginner: this function handles network event "2b274e7fa8".
function cmgCall5()
  local arg1, arg2
  arg1 = nil
  workValue8 = arg1
end
cmgCall4(textValue17, cmgCall5)
cmgCall4 = CMG
-- Beginner: this function handles network event "2b274e7fa8".
function textValue17()
  local arg1, arg2, flag4, flag6, flag7, textValue18, flag9, numberValue14
  arg1 = 0
  arg2 = pairs
  flag4 = dataTable
  arg2, flag4, flag6, flag7 = arg2(flag4)
  for textValue18, flag9 in arg2, flag4, flag6, flag7 do
    arg1 = arg1 + flag9
  end
  return arg1
end
cmgCall4.getOustandingHouseTaxAmount = textValue17
cmgCall4 = RegisterNetEvent
textValue17 = "85fff2fa8b"
-- Beginner: this function handles network event "85fff2fa8b".
function cmgCall5(arg1, arg2)
  local flag4
  flag4 = workValue
  if flag4 == arg1 then
    numberValue4 = arg2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "85fff2fa8b".
cmgCall4(textValue17, cmgCall5)