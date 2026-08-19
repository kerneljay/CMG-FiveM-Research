--[[
    LEVEL 1 BEGINNER GUIDE — Home
    ==================================

    File: cmg/prod/client/home/cl_home.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: housing/home gameplay, specifically the Home feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 174
      * Background threads: 0
      * Always-running loops: 2
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
local workingValue, dataCollection5, dataCollection9, workingValue16, workingValue19, dataCollection13, number13, dataCollection14, dataCollection15, dataCollection16, cmgOperation, dataCollection, workingValue2, dataCollection2, workingValue5, text3, workingValue8, number4, number5, dataCollection4, dataCollection6, workingValue9, stateFlag3, number6, workingValue10, workingValue11, dataCollection7, number7, workingValue12, dataCollection8, dataCollection10, workingValue14, dataCollection11, number8, number9, number10, number11, stateFlag5, workingValue15, number12, workingValue18, text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5
workingValue = nil
dataCollection5 = {}
dataCollection9 = {}
workingValue16 = nil
workingValue19 = nil
dataCollection13 = {}
number13 = 0
dataCollection14 = {}
dataCollection15 = {}
dataCollection16 = {}
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection = "cfg/homes"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection)
dataCollection = {}
workingValue2 = nil
dataCollection2 = {}
workingValue5 = nil
text3 = ""
workingValue8 = nil
number4 = 0
number5 = 0
dataCollection4 = {}
dataCollection6 = {}
workingValue9 = nil
stateFlag3 = false
number6 = 0
workingValue10 = nil
workingValue11 = nil
dataCollection7 = {}
number7 = 0
workingValue12 = nil
dataCollection8 = {}
dataCollection10 = {}
workingValue14 = nil
dataCollection11 = {}
dataCollection11.income = 0
dataCollection11.outcome = 0
number8 = 10000
number9 = 1
number10 = 1
number11 = 1
stateFlag5 = true
workingValue15 = nil
number12 = 0
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "mainmenu"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text11 = ""
text12 = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_homesui"
text13 = "cmg_homesui"
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
text9 = workingValue18
workingValue18 = workingValue18.Get
text10 = "cmghouses"
rageUiOperation = "mainmenu"
-- Beginner: result below is menu.
workingValue18 = workingValue18(text9, text10, rageUiOperation)
text9 = workingValue18
workingValue18 = workingValue18.SetSubtitle
text10 = "~b~HOME"
workingValue18(text9, text10)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "exit"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text11 = ""
text12 = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_homesui"
text13 = "cmg_homesui"
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
text9 = workingValue18
workingValue18 = workingValue18.Get
text10 = "cmghouses"
rageUiOperation = "exit"
-- Beginner: result below is menu.
workingValue18 = workingValue18(text9, text10, rageUiOperation)
text9 = workingValue18
workingValue18 = workingValue18.SetSubtitle
text10 = "~b~HOME"
workingValue18(text9, text10)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "mail"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "exit"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~CMG Mail Service"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "mailinfo"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "mail"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~CMG Mail Service"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "customise"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "exit"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~Customisation Menu"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "customisecallback"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "customise"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~Customisation Menu"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "keysharing"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "exit"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~House Keys"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "rentmanager"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "mainmenu"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~Rent Management Menu"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "rentedout"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "rentmanager"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~Houses Rented Out"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "rentedin"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "rentmanager"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~Houses Renting"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "rentedinfo"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "rentmanager"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~Houses Rent Info"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "paymentplanmanager"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "mainmenu"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~Payment Plan Management Menu"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "paymentplanout"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "paymentplanmanager"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~Houses Payment Planned Out"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "paymentplanin"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "paymentplanmanager"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~Houses Payment Planned In"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "paymentplansummary"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "paymentplanmanager"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~Payment Plan Summary"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "paymentplaninfo"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "paymentplanin"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~Houses Payment Plan Info"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "paymentplan"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text11 = RMenu
text12 = text11
text11 = text11.Get
rageUiOperation2 = "cmghouses"
rageUiOperation3 = "mainmenu"
-- Beginner: result below is menu.
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
text12 = ""
rageUiOperation2 = "~b~Payment Plan Menu"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation4()
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text9 = "cmghouses"
text10 = "paymentplanoffer"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text11 = ""
text12 = "~b~Payment Plan Offer"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_homesui"
text13 = "cmg_homesui"
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13)
workingValue18(text9, text10, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, rageUiOperation4, text13, workingValue20, workingValue21, workingValue22, cmgOperation3, text15, text16, dataCollection12, cmgOperation4, text17, cmgOperation5)

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1) ===
function workingValue18(localValue1)
  local localValue2
  localValue2 = dataCollection5
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = true
    return localValue2
  else
    localValue2 = false
    return localValue2
  end
end
text9 = RageUI
text9 = text9.CreateWhile
text10 = 1.0
rageUiOperation = RMenu
text11 = rageUiOperation
rageUiOperation = rageUiOperation.Get
text12 = "cmghouses"
rageUiOperation2 = "mainmenu"
-- Beginner: result below is menu.
rageUiOperation = rageUiOperation(text11, text12, rageUiOperation2)
text11 = nil

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = false
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6
    localValue12 = workingValue
    if nil ~= localValue12 then
      localValue12 = cmgOperation.homes
      if nil ~= localValue12 then
        localValue12 = pairs
        localValue22 = cmgOperation.homes
        localValue12, localValue22, localValue3, localValue4 = localValue12(localValue22)
        for stateFlag8, workingValue23 in localValue12, localValue22, localValue3, localValue4 do
          workingValue25 = workingValue
          if workingValue25 == stateFlag8 then
            workingValue25 = workingValue23.groupPermission
            workingValue25 = nil ~= workingValue25
            workingValue28 = RMenu
            workingValue30 = workingValue28
            workingValue28 = workingValue28.Get
            text20 = "cmghouses"
            text2 = "mainmenu"
            -- Beginner: result below is menu.
            workingValue28 = workingValue28(workingValue30, text20, text2)
            workingValue30 = workingValue28
            workingValue28 = workingValue28.SetSubtitle
            text20 = "~b~"
            text2 = stateFlag8
            text20 = text20 .. text2
            workingValue28(workingValue30, text20)
            workingValue28 = RMenu
            workingValue30 = workingValue28
            workingValue28 = workingValue28.Get
            text20 = "cmghouses"
            text2 = "exit"
            -- Beginner: result below is menu.
            workingValue28 = workingValue28(workingValue30, text20, text2)
            workingValue30 = workingValue28
            workingValue28 = workingValue28.SetSubtitle
            text20 = "~b~"
            text2 = stateFlag8
            text20 = text20 .. text2
            workingValue28(workingValue30, text20)
            workingValue28 = workingValue23.ownerString
            if workingValue28 then
              workingValue28 = workingValue23.ownerString
              if "For sale." == workingValue28 and not workingValue25 then
                workingValue28 = RageUI
                workingValue28 = workingValue28.ButtonWithStyle
                workingValue30 = "Purchase House"
                text20 = ""
                text2 = {}
                text2.RightLabel = "\226\134\146\226\134\146\226\134\146"
                stateFlag = true

                -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue32) ===
                function workingValue3(localValue13, localValue23, localValue32)
                  local cmgOperation2, text14, workingValue24
                  if localValue32 then
                    cmgOperation2 = TriggerServerEvent
                    text14 = "bb91b31e79"
                    workingValue24 = stateFlag8
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bb91b31e79".
                    cmgOperation2(text14, workingValue24)
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workingValue28(workingValue30, text20, text2, stateFlag, workingValue3)
                workingValue28 = RageUI
                workingValue28 = workingValue28.ButtonWithStyle
                workingValue30 = "Preview House"
                text20 = ""
                text2 = {}
                text2.RightLabel = "\226\134\146\226\134\146\226\134\146"
                stateFlag = true

                -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue32) ===
                function workingValue3(localValue13, localValue23, localValue32)
                  local cmgOperation2, text14, workingValue24
                  if localValue32 then
                    cmgOperation2 = TriggerServerEvent
                    text14 = "3ebcdeb3aa"
                    workingValue24 = stateFlag8
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3ebcdeb3aa".
                    cmgOperation2(text14, workingValue24)
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workingValue28(workingValue30, text20, text2, stateFlag, workingValue3)
              end
            else
              workingValue28 = workingValue18
              workingValue30 = stateFlag8
              workingValue28 = workingValue28(workingValue30)
              if workingValue28 then
                workingValue28 = RageUI
                workingValue28 = workingValue28.ButtonWithStyle
                workingValue30 = "Enter House"
                text20 = "Enter this home"
                text2 = {}
                text2.RightLabel = "\226\134\146\226\134\146\226\134\146"
                stateFlag = true

                -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue32) ===
                function workingValue3(localValue13, localValue23, localValue32)
                  local cmgOperation2, text14, workingValue24
                  if localValue32 then
                    cmgOperation2 = CMG
                    cmgOperation2 = cmgOperation2.inEvent
                    cmgOperation2 = cmgOperation2()
                    if not cmgOperation2 then
                      cmgOperation2 = CMG
                      cmgOperation2 = cmgOperation2.isCarrying
                      cmgOperation2 = cmgOperation2()
                      if cmgOperation2 then
                        cmgOperation2 = notify
                        text14 = "~r~You can not carry someone into a home."
                        -- Beginner: Show a notification to the player.
                        cmgOperation2(text14)
                        return
                      end
                      cmgOperation2 = TriggerServerEvent
                      text14 = "8d3bd0f017"
                      workingValue24 = stateFlag8
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8d3bd0f017".
                      cmgOperation2(text14, workingValue24)
                    end
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workingValue28(workingValue30, text20, text2, stateFlag, workingValue3)
                if workingValue25 then
                  workingValue28 = {}
                  if workingValue28 then
                    goto continueAtStep92
                  end
                end
                workingValue28 = {}
                workingValue28.RightLabel = "\226\134\146\226\134\146\226\134\146"
                ::continueAtStep92::
                workingValue30 = RageUI
                workingValue30 = workingValue30.ButtonWithStyle
                text20 = "Sell House to Player"
                text2 = ""
                stateFlag = workingValue28
                workingValue3 = not workingValue25

                -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue13, localValue23, localValue32) ===
                function workingValue4(localValue13, localValue23, localValue32)
                  local cmgOperation2, text14, workingValue24
                  if localValue32 then
                    cmgOperation2 = CMG
                    cmgOperation2 = cmgOperation2.displaySellDisclaimer
                    text14 = "house"

                    -- === HELPER FUNCTION (decompiler name: workingValue24; parameters: none) ===
                    function workingValue24()
                      local localValue14, text8, workingValue13
                      localValue14 = TriggerServerEvent
                      text8 = "258c3e6770"
                      workingValue13 = stateFlag8
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "258c3e6770".
                      localValue14(text8, workingValue13)
                    end
                    cmgOperation2(text14, workingValue24)
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workingValue30(text20, text2, stateFlag, workingValue3, workingValue4)
                workingValue30 = RageUI
                workingValue30 = workingValue30.ButtonWithStyle
                text20 = "Rent House to Player"
                text2 = ""
                stateFlag = workingValue28
                workingValue3 = not workingValue25

                -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue13, localValue23, localValue32) ===
                function workingValue4(localValue13, localValue23, localValue32)
                  local cmgOperation2, text14, workingValue24
                  if localValue32 then
                    cmgOperation2 = TriggerServerEvent
                    text14 = "1037832668"
                    workingValue24 = stateFlag8
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1037832668".
                    cmgOperation2(text14, workingValue24)
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workingValue30(text20, text2, stateFlag, workingValue3, workingValue4)
                workingValue30 = RageUI
                workingValue30 = workingValue30.ButtonWithStyle
                text20 = "Payment Plan House to Player"
                text2 = ""
                stateFlag = {}
                stateFlag.RightLabel = "\226\134\146\226\134\146\226\134\146"
                workingValue3 = not workingValue25

                -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
                function workingValue4()
                  local localValue13, localValue23
                end
                workingValue6 = RMenu
                text4 = workingValue6
                workingValue6 = workingValue6.Get
                text5 = "cmghouses"
                text6 = "paymentplan"
                workingValue6, text4, text5, text6 = workingValue6(text4, text5, text6)
                workingValue30(text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6)
              else
                workingValue28 = RageUI
                workingValue28 = workingValue28.ButtonWithStyle
                workingValue30 = "Ring Bell"
                text20 = ""
                text2 = {}
                text2.RightLabel = "\226\134\146\226\134\146\226\134\146"
                stateFlag = true

                -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue32) ===
                function workingValue3(localValue13, localValue23, localValue32)
                  local cmgOperation2, text14, workingValue24
                  if localValue32 then
                    cmgOperation2 = GetGameTimer
                    -- Beginner: result below is gameTimeMs.
                    cmgOperation2 = cmgOperation2()
                    text14 = number13
                    cmgOperation2 = cmgOperation2 - text14
                    text14 = 15000
                    if cmgOperation2 > text14 then
                      cmgOperation2 = CMG
                      cmgOperation2 = cmgOperation2.inEvent
                      cmgOperation2 = cmgOperation2()
                      if not cmgOperation2 then
                        cmgOperation2 = GetGameTimer
                        -- Beginner: result below is gameTimeMs.
                        cmgOperation2 = cmgOperation2()
                        number13 = cmgOperation2
                        cmgOperation2 = TriggerServerEvent
                        text14 = "8d3bd0f017"
                        workingValue24 = stateFlag8
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8d3bd0f017".
                        cmgOperation2(text14, workingValue24)
                      end
                    end
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workingValue28(workingValue30, text20, text2, stateFlag, workingValue3)
                workingValue28 = CMG
                workingValue28 = workingValue28.hasClientPermission
                workingValue30 = "police.onduty.permission"
                workingValue28 = workingValue28(workingValue30)
                if workingValue28 then
                  workingValue28 = RageUI
                  workingValue28 = workingValue28.ButtonWithStyle
                  workingValue30 = "Raid House"
                  text20 = "~b~MET Police Raid"
                  text2 = {}
                  text2.RightLabel = "\226\134\146\226\134\146\226\134\146"
                  stateFlag = true

                  -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue32) ===
                  function workingValue3(localValue13, localValue23, localValue32)
                    local cmgOperation2, text14, workingValue24
                    if localValue32 then
                      cmgOperation2 = TriggerServerEvent
                      text14 = "ef7ba975cf"
                      workingValue24 = stateFlag8
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef7ba975cf".
                      cmgOperation2(text14, workingValue24)
                    end
                  end
                  -- Beginner: Draw a selectable RageUI menu button.
                  workingValue28(workingValue30, text20, text2, stateFlag, workingValue3)
                end
                workingValue28 = CMG
                workingValue28 = workingValue28.hasClientPermission
                workingValue30 = "police.onduty.permission"
                workingValue28 = workingValue28(workingValue30)
                if not workingValue28 then
                  workingValue28 = RageUI
                  workingValue28 = workingValue28.ButtonWithStyle
                  workingValue30 = "House Robbery"
                  text20 = "~r~Break into this house"
                  text2 = {}
                  text2.RightLabel = "\226\134\146\226\134\146\226\134\146"
                  stateFlag = true

                  -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue32) ===
                  function workingValue3(localValue13, localValue23, localValue32)
                    local cmgOperation2, text14, workingValue24
                    if localValue32 then
                      cmgOperation2 = CMG
                      cmgOperation2 = cmgOperation2.inEvent
                      cmgOperation2 = cmgOperation2()
                      if not cmgOperation2 then
                        cmgOperation2 = TriggerServerEvent
                        text14 = "0317b3f2cf"
                        workingValue24 = stateFlag8
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0317b3f2cf".
                        cmgOperation2(text14, workingValue24)
                      end
                    end
                  end
                  -- Beginner: Draw a selectable RageUI menu button.
                  workingValue28(workingValue30, text20, text2, stateFlag, workingValue3)
                end
              end
            end
            workingValue28 = RageUI
            workingValue28 = workingValue28.ButtonWithStyle
            workingValue30 = "Rent Manager"
            text20 = "~y~Manage your rented out & renting houses here."
            text2 = {}
            text2.RightLabel = "\226\134\146\226\134\146\226\134\146"
            stateFlag = true

            -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue32) ===
            function workingValue3(localValue13, localValue23, localValue32)
              local cmgOperation2
              if localValue32 then
                cmgOperation2 = stateFlag8
                text3 = cmgOperation2
              end
            end
            workingValue4 = RMenu
            workingValue6 = workingValue4
            workingValue4 = workingValue4.Get
            text4 = "cmghouses"
            text5 = "rentmanager"
            workingValue4, workingValue6, text4, text5, text6 = workingValue4(workingValue6, text4, text5)
            workingValue28(workingValue30, text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6)
            workingValue28 = RageUI
            workingValue28 = workingValue28.ButtonWithStyle
            workingValue30 = "Payment Plan Manager"
            text20 = workingValue
            text2 = {}
            text2.RightLabel = "\226\134\146\226\134\146\226\134\146"
            stateFlag = true

            -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue32) ===
            function workingValue3(localValue13, localValue23, localValue32)
            end
            workingValue4 = RMenu
            workingValue6 = workingValue4
            workingValue4 = workingValue4.Get
            text4 = "cmghouses"
            text5 = "paymentplanmanager"
            workingValue4, workingValue6, text4, text5, text6 = workingValue4(workingValue6, text4, text5)
            -- Beginner: Draw a selectable RageUI menu button.
            workingValue28(workingValue30, text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6)
            workingValue28 = dataCollection
            workingValue28 = workingValue28[stateFlag8]
            if workingValue28 then
              workingValue28 = dataCollection
              workingValue28 = workingValue28[stateFlag8]
              if workingValue28 > 0 then
                workingValue28 = RageUI
                workingValue28 = workingValue28.ButtonWithStyle
                workingValue30 = "~r~Pay Outstanding House tax"
                text20 = ""
                text2 = {}
                stateFlag = "\194\163"
                workingValue3 = getMoneyStringFormatted
                workingValue4 = dataCollection
                workingValue4 = workingValue4[stateFlag8]
                workingValue3 = workingValue3(workingValue4)
                stateFlag = stateFlag .. workingValue3
                text2.RightLabel = stateFlag
                stateFlag = true

                -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue32) ===
                function workingValue3(localValue13, localValue23, localValue32)
                  local cmgOperation2, text14, workingValue24
                  if localValue32 then
                    cmgOperation2 = TriggerServerEvent
                    text14 = "d10c6d94a9"
                    workingValue24 = stateFlag8
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d10c6d94a9".
                    cmgOperation2(text14, workingValue24)
                  end
                end
                -- Beginner: Draw a selectable RageUI menu button.
                workingValue28(workingValue30, text20, text2, stateFlag, workingValue3)
              end
            end
            workingValue28 = number4
            if workingValue28 > 0 then
              workingValue28 = RageUI
              workingValue28 = workingValue28.ButtonWithStyle
              workingValue30 = "~g~Withdraw House Balance"
              text20 = ""
              text2 = {}
              stateFlag = "\194\163"
              workingValue3 = getMoneyStringFormatted
              workingValue4 = number4
              workingValue3 = workingValue3(workingValue4)
              stateFlag = stateFlag .. workingValue3
              text2.RightLabel = stateFlag
              stateFlag = true

              -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue32) ===
              function workingValue3(localValue13, localValue23, localValue32)
                local cmgOperation2, text14, workingValue24
                if localValue32 then
                  cmgOperation2 = TriggerServerEvent
                  text14 = "623ae975a0"
                  workingValue24 = stateFlag8
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "623ae975a0".
                  cmgOperation2(text14, workingValue24)
                end
              end
              -- Beginner: Draw a selectable RageUI menu button.
              workingValue28(workingValue30, text20, text2, stateFlag, workingValue3)
            end
          end
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "exit"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = false
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Exit Home"
    localValue3 = ""
    localValue4 = {}
    localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue13, localValue23, localValue32) ===
    function workingValue23(localValue13, localValue23, localValue32)
      local cmgOperation2, text14, workingValue24, workingValue26
      if localValue32 then
        cmgOperation2 = workingValue19
        if cmgOperation2 then
          cmgOperation2 = tCMG
          cmgOperation2 = cmgOperation2.teleport
          text14 = workingValue19.x
          workingValue24 = workingValue19.y
          workingValue26 = workingValue19.z
          cmgOperation2(text14, workingValue24, workingValue26)
          cmgOperation2 = TriggerEvent
          text14 = "4ee536e033"
          -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "4ee536e033".
          cmgOperation2(text14)
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.leaveActiveHouse
          cmgOperation2()
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "View Mail"
    localValue3 = ""
    localValue4 = {}
    localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue13, localValue23, localValue32) ===
    function workingValue23(localValue13, localValue23, localValue32)
      local cmgOperation2, text14
      if localValue32 then
        cmgOperation2 = TriggerServerEvent
        text14 = "e980a2222d"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e980a2222d".
        cmgOperation2(text14)
      end
    end
    workingValue25 = RMenu
    workingValue28 = workingValue25
    workingValue25 = workingValue25.Get
    workingValue30 = "cmghouses"
    text20 = "mail"
    workingValue25, workingValue28, workingValue30, text20 = workingValue25(workingValue28, workingValue30, text20)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20)
    localValue12 = table
    localValue12 = localValue12.count
    localValue22 = dataCollection4
    -- Beginner: result below is count.
    localValue12 = localValue12(localValue22)
    if localValue12 > 0 then
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Customise Home"
      localValue3 = ""
      localValue4 = {}
      localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag8 = true

      -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
      function workingValue23()
        local localValue13, localValue23
      end
      workingValue25 = RMenu
      workingValue28 = workingValue25
      workingValue25 = workingValue25.Get
      workingValue30 = "cmghouses"
      text20 = "customise"
      workingValue25, workingValue28, workingValue30, text20 = workingValue25(workingValue28, workingValue30, text20)
      localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20)
    end
    localValue12 = workingValue
    if localValue12 then
      localValue12 = cmgOperation.homes
      localValue22 = workingValue
      localValue12 = localValue12[localValue22]
      localValue12 = localValue12.groupPermission
      if not localValue12 then
        localValue12 = RageUI
        localValue12 = localValue12.ButtonWithStyle
        localValue22 = "Key Sharing"
        localValue3 = ""
        localValue4 = {}
        localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag8 = true

        -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
        function workingValue23()
          local localValue13, localValue23
        end
        workingValue25 = RMenu
        workingValue28 = workingValue25
        workingValue25 = workingValue25.Get
        workingValue30 = "cmghouses"
        text20 = "keysharing"
        workingValue25, workingValue28, workingValue30, text20 = workingValue25(workingValue28, workingValue30, text20)
        -- Beginner: Draw a selectable RageUI menu button.
        localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20)
      end
    end
    localValue12 = pairs
    localValue22 = dataCollection6
    localValue12, localValue22, localValue3, localValue4 = localValue12(localValue22)
    for stateFlag8, workingValue23 in localValue12, localValue22, localValue3, localValue4 do
      workingValue25 = workingValue23
      workingValue25()
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "mail"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = false
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6
    localValue12 = pairs
    localValue22 = dataCollection2
    localValue12, localValue22, localValue3, localValue4 = localValue12(localValue22)
    for stateFlag8, workingValue23 in localValue12, localValue22, localValue3, localValue4 do
      workingValue25 = workingValue23.is_read
      workingValue25 = 1 == workingValue25
      if workingValue25 then
        workingValue28 = "~g~"
        if workingValue28 then
          goto continueAtStep16
        end
      end
      workingValue28 = "~r~"
      ::continueAtStep16::
      workingValue30 = RageUI
      workingValue30 = workingValue30.ButtonWithStyle
      text20 = workingValue28
      text2 = "Mail #"
      stateFlag = tostring
      workingValue3 = workingValue23.id
      stateFlag = stateFlag(workingValue3)
      if workingValue25 then
        workingValue3 = ""
        if workingValue3 then
          goto continueAtStep29
        end
      end
      workingValue3 = " (Unread)"
      ::continueAtStep29::
      text20 = text20 .. text2 .. stateFlag .. workingValue3
      text2 = "Delivered at "
      stateFlag = workingValue23.time_sent
      text2 = text2 .. stateFlag
      stateFlag = {}
      stateFlag.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue13, localValue23, localValue32) ===
      function workingValue4(localValue13, localValue23, localValue32)
        local cmgOperation2, text14, workingValue24
        if localValue32 then
          cmgOperation2 = workingValue25
          if not cmgOperation2 then
            cmgOperation2 = TriggerServerEvent
            text14 = "b3c24b1ac2"
            workingValue24 = workingValue23.id
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b3c24b1ac2".
            cmgOperation2(text14, workingValue24)
            workingValue23.is_read = 1
          end
          cmgOperation2 = workingValue23
          workingValue5 = cmgOperation2
        end
      end
      workingValue6 = RMenu
      text4 = workingValue6
      workingValue6 = workingValue6.Get
      text5 = "cmghouses"
      text6 = "mailinfo"
      workingValue6, text4, text5, text6 = workingValue6(text4, text5, text6)
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue30(text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6)
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "mailinfo"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = false
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23
    localValue12 = workingValue5
    if not localValue12 then
      return
    end
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "Mail #"
    localValue3 = tostring
    localValue4 = workingValue5.id
    localValue3 = localValue3(localValue4)
    localValue22 = localValue22 .. localValue3
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "Delivered at "
    localValue3 = workingValue5.time_sent
    localValue22 = localValue22 .. localValue3
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "Signed by "
    localValue3 = workingValue5.signature
    localValue22 = localValue22 .. localValue3
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.FakeButtonWithStyle
    localValue22 = ""
    localValue3 = workingValue5.content
    localValue4 = {}
    localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
    function workingValue23()
      local localValue13, localValue23
    end
    localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "customise"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = false
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4
    localValue12 = pairs
    localValue22 = dataCollection4
    localValue12, localValue22, localValue3, localValue4 = localValue12(localValue22)
    for stateFlag8, workingValue23 in localValue12, localValue22, localValue3, localValue4 do
      workingValue25 = RageUI
      workingValue25 = workingValue25.ButtonWithStyle
      workingValue28 = stateFlag8
      workingValue30 = ""
      text20 = {}
      text20.RightLabel = "\226\134\146\226\134\146\226\134\146"
      text2 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue13, localValue23, localValue32) ===
      function stateFlag(localValue13, localValue23, localValue32)
        local cmgOperation2
        if localValue32 then
          cmgOperation2 = workingValue23
          workingValue9 = cmgOperation2
        end
      end
      workingValue3 = RMenu
      workingValue4 = workingValue3
      workingValue3 = workingValue3.Get
      workingValue6 = "cmghouses"
      text4 = "customisecallback"
      workingValue3, workingValue4, workingValue6, text4 = workingValue3(workingValue4, workingValue6, text4)
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue25(workingValue28, workingValue30, text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4)
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "keysharing"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = false
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20, text2, stateFlag
    localValue12 = workingValue2
    if localValue12 then
      localValue12 = workingValue2
      localValue12 = #localValue12
      if localValue12 > 0 then
        localValue12 = drawNativeNotification
        localValue22 = string
        localValue22 = localValue22.format
        localValue3 = "Press ~INPUT_FRONTEND_ACCEPT~ to change Perm ID"
        localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20, text2, stateFlag = localValue22(localValue3)
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20, text2, stateFlag)
        localValue12 = pairs
        localValue22 = workingValue2
        localValue12, localValue22, localValue3, localValue4 = localValue12(localValue22)
        for stateFlag8, workingValue23 in localValue12, localValue22, localValue3, localValue4 do
          workingValue25 = RageUI
          workingValue25 = workingValue25.ButtonWithStyle
          workingValue28 = string
          workingValue28 = workingValue28.format
          workingValue30 = "Key %s"
          text20 = stateFlag8
          workingValue28 = workingValue28(workingValue30, text20)
          workingValue30 = ""
          text20 = {}
          text2 = tostring
          stateFlag = workingValue23
          text2 = text2(stateFlag)
          text20.RightLabel = text2
          text2 = true

          -- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue13, localValue23, localValue32) ===
          function stateFlag(localValue13, localValue23, localValue32)
            local cmgOperation2, text14, workingValue24, workingValue26
            if localValue32 then
              cmgOperation2 = CMG
              cmgOperation2 = cmgOperation2.clientPrompt
              text14 = "Enter Perm ID"
              workingValue24 = ""

              -- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue14) ===
              function workingValue26(localValue14)
                local text8, workingValue13, workingValue17, mathHelper, mathHelper2
                if localValue14 then
                  text8 = tonumber
                  workingValue13 = localValue14
                  text8 = text8(workingValue13)
                  if text8 then
                    text8 = tonumber
                    workingValue13 = localValue14
                    text8 = text8(workingValue13)
                    workingValue13 = workingValue23
                    if text8 ~= workingValue13 then
                      text8 = tonumber
                      workingValue13 = localValue14
                      text8 = text8(workingValue13)
                      if text8 > 0 then
                        text8 = TriggerServerEvent
                        workingValue13 = "bb2fc3919a"
                        workingValue17 = stateFlag8
                        mathHelper = tonumber
                        mathHelper2 = localValue14
                        mathHelper, mathHelper2 = mathHelper(mathHelper2)
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bb2fc3919a".
                        text8(workingValue13, workingValue17, mathHelper, mathHelper2)
                    end
                  end
                end
                else
                  text8 = notify
                  workingValue13 = "~r~Perm ID must be a number and different."
                  -- Beginner: Show a notification to the player.
                  text8(workingValue13)
                end
              end
              cmgOperation2(text14, workingValue24, workingValue26)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          workingValue25(workingValue28, workingValue30, text20, text2, stateFlag)
        end
      end
    end
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~y~Purchase Additional Key"
    localValue3 = ""
    localValue4 = {}
    localValue4.RightLabel = "\194\163250,000"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue13, localValue23, localValue32) ===
    function workingValue23(localValue13, localValue23, localValue32)
      local cmgOperation2, text14
      if localValue32 then
        cmgOperation2 = TriggerServerEvent
        text14 = "a7121d7960"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a7121d7960".
        cmgOperation2(text14)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "customisecallback"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = false
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22
    localValue12 = workingValue9
    if localValue12 then
      localValue12 = workingValue9
      localValue12()
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "rentmanager"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = true
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Houses Rented Out"
    localValue3 = text3
    localValue4 = {}
    localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue13, localValue23, localValue32) ===
    function workingValue23(localValue13, localValue23, localValue32)
    end
    workingValue25 = RMenu
    workingValue28 = workingValue25
    workingValue25 = workingValue25.Get
    workingValue30 = "cmghouses"
    text20 = "rentedout"
    workingValue25, workingValue28, workingValue30, text20 = workingValue25(workingValue28, workingValue30, text20)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Houses Rented In"
    localValue3 = text3
    localValue4 = {}
    localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue13, localValue23, localValue32) ===
    function workingValue23(localValue13, localValue23, localValue32)
    end
    workingValue25 = RMenu
    workingValue28 = workingValue25
    workingValue25 = workingValue25.Get
    workingValue30 = "cmghouses"
    text20 = "rentedin"
    workingValue25, workingValue28, workingValue30, text20 = workingValue25(workingValue28, workingValue30, text20)
    localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "rentedout"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = true
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6, text7
    localValue12 = pairs
    localValue22 = dataCollection14
    localValue12, localValue22, localValue3, localValue4 = localValue12(localValue22)
    for stateFlag8, workingValue23 in localValue12, localValue22, localValue3, localValue4 do
      workingValue25 = workingValue23.homeName
      workingValue28 = workingValue23.rentedBy
      workingValue30 = workingValue23.hoursLeft
      text20 = RageUI
      text20 = text20.ButtonWithStyle
      text2 = workingValue25
      stateFlag = "Rented to "
      workingValue3 = workingValue28
      workingValue4 = " - "
      workingValue6 = workingValue30
      text4 = " hours left!"
      stateFlag = stateFlag .. workingValue3 .. workingValue4 .. workingValue6 .. text4
      workingValue3 = {}
      workingValue3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue4 = true

      -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue13, localValue23, localValue32) ===
      function workingValue6(localValue13, localValue23, localValue32)
        local cmgOperation2
        if localValue32 then
          cmgOperation2 = workingValue23
          dataCollection16 = cmgOperation2
          dataCollection16.type = "rentingout"
        end
      end
      text4 = RMenu
      text5 = text4
      text4 = text4.Get
      text6 = "cmghouses"
      text7 = "rentedinfo"
      text4, text5, text6, text7 = text4(text5, text6, text7)
      -- Beginner: Draw a selectable RageUI menu button.
      text20(text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6, text7)
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "rentedin"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = true
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6, text7
    localValue12 = pairs
    localValue22 = dataCollection15
    localValue12, localValue22, localValue3, localValue4 = localValue12(localValue22)
    for stateFlag8, workingValue23 in localValue12, localValue22, localValue3, localValue4 do
      workingValue25 = workingValue23.homeName
      workingValue28 = workingValue23.rentedBy
      workingValue30 = workingValue23.hoursLeft
      text20 = RageUI
      text20 = text20.ButtonWithStyle
      text2 = workingValue25
      stateFlag = "Rented from "
      workingValue3 = workingValue28
      workingValue4 = " - "
      workingValue6 = workingValue30
      text4 = " hours left!"
      stateFlag = stateFlag .. workingValue3 .. workingValue4 .. workingValue6 .. text4
      workingValue3 = {}
      workingValue3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue4 = true

      -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue13, localValue23, localValue32) ===
      function workingValue6(localValue13, localValue23, localValue32)
        local cmgOperation2
        if localValue32 then
          cmgOperation2 = workingValue23
          dataCollection16 = cmgOperation2
          dataCollection16.type = "rentingin"
        end
      end
      text4 = RMenu
      text5 = text4
      text4 = text4.Get
      text6 = "cmghouses"
      text7 = "rentedinfo"
      text4, text5, text6, text7 = text4(text5, text6, text7)
      -- Beginner: Draw a selectable RageUI menu button.
      text20(text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6, text7)
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "rentedinfo"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = true
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30
    localValue12 = dataCollection16.homeName
    localValue22 = dataCollection16.rentedBy
    localValue3 = dataCollection16.hoursLeft
    localValue4 = RageUI
    localValue4 = localValue4.Separator
    stateFlag8 = "~y~Rent Info"
    localValue4(stateFlag8)
    localValue4 = RageUI
    localValue4 = localValue4.Separator
    stateFlag8 = "---------"
    localValue4(stateFlag8)
    localValue4 = RageUI
    localValue4 = localValue4.Separator
    stateFlag8 = "House: "
    workingValue23 = localValue12
    stateFlag8 = stateFlag8 .. workingValue23
    localValue4(stateFlag8)
    localValue4 = RageUI
    localValue4 = localValue4.Separator
    stateFlag8 = "Rented from: "
    workingValue23 = localValue22
    stateFlag8 = stateFlag8 .. workingValue23
    localValue4(stateFlag8)
    localValue4 = RageUI
    localValue4 = localValue4.Separator
    stateFlag8 = "Hours Left: "
    workingValue23 = localValue3
    stateFlag8 = stateFlag8 .. workingValue23
    localValue4(stateFlag8)
    localValue4 = RageUI
    localValue4 = localValue4.ButtonWithStyle
    stateFlag8 = "Request Home Rent Cancellation"
    workingValue23 = ""
    workingValue25 = {}
    workingValue25.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue28 = true

    -- === HELPER FUNCTION (decompiler name: workingValue30; parameters: localValue13, localValue23, localValue32) ===
    function workingValue30(localValue13, localValue23, localValue32)
      local cmgOperation2, text14, workingValue24, workingValue26
      if localValue32 then
        cmgOperation2 = TriggerServerEvent
        text14 = "eb4522e277"
        workingValue24 = localValue12
        workingValue26 = dataCollection16.type
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "eb4522e277".
        cmgOperation2(text14, workingValue24, workingValue26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue4(stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "paymentplanmanager"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = true
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Houses Payment Planned Out"
    localValue3 = workingValue
    localValue4 = {}
    localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue13, localValue23, localValue32) ===
    function workingValue23(localValue13, localValue23, localValue32)
    end
    workingValue25 = RMenu
    workingValue28 = workingValue25
    workingValue25 = workingValue25.Get
    workingValue30 = "cmghouses"
    text20 = "paymentplanout"
    workingValue25, workingValue28, workingValue30, text20 = workingValue25(workingValue28, workingValue30, text20)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Houses Payment Planned In"
    localValue3 = workingValue
    localValue4 = {}
    localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue13, localValue23, localValue32) ===
    function workingValue23(localValue13, localValue23, localValue32)
    end
    workingValue25 = RMenu
    workingValue28 = workingValue25
    workingValue25 = workingValue25.Get
    workingValue30 = "cmghouses"
    text20 = "paymentplanin"
    workingValue25, workingValue28, workingValue30, text20 = workingValue25(workingValue28, workingValue30, text20)
    localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Payment Plan Summary"
    localValue3 = ""
    localValue4 = {}
    localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue13, localValue23, localValue32) ===
    function workingValue23(localValue13, localValue23, localValue32)
      local cmgOperation2, text14
      if localValue32 then
        cmgOperation2 = TriggerServerEvent
        text14 = "6597895925"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6597895925".
        cmgOperation2(text14)
      end
    end
    workingValue25 = RMenu
    workingValue28 = workingValue25
    workingValue25 = workingValue25.Get
    workingValue30 = "cmghouses"
    text20 = "paymentplansummary"
    workingValue25, workingValue28, workingValue30, text20 = workingValue25(workingValue28, workingValue30, text20)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "paymentplan"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = true
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~House: "
    localValue3 = workingValue
    localValue22 = localValue22 .. localValue3
    localValue12(localValue22)

    -- === HELPER FUNCTION: localValue12() ===
    function localValue12()
      local localValue13, localValue23
      localValue13 = number8
      localValue23 = number12
      localValue13 = localValue13 - localValue23
      return localValue13
    end

    -- === HELPER FUNCTION: localValue22() ===
    function localValue22()
      local localValue13, localValue23, localValue32
      localValue13 = stateFlag5
      if localValue13 then
        localValue13 = math
        localValue13 = localValue13.ceil
        localValue23 = localValue12
        localValue23 = localValue23()
        localValue32 = number9
        localValue23 = localValue23 / localValue32
        localValue13 = localValue13(localValue23)
        number10 = localValue13
      else
        localValue13 = math
        localValue13 = localValue13.ceil
        localValue23 = localValue12
        localValue23 = localValue23()
        localValue32 = number10
        localValue23 = localValue23 / localValue32
        localValue13 = localValue13(localValue23)
        number9 = localValue13
        localValue13 = number9
        if localValue13 > 26 then
          localValue13 = 1
          number9 = localValue13
          localValue13 = true
          stateFlag5 = localValue13
          localValue13 = localValue22
          localValue13()
        end
      end
    end
    localValue3 = RageUI
    localValue3 = localValue3.ButtonWithStyle
    localValue4 = "Total Price"
    stateFlag8 = "The total amount of money that will have to be paid before ownership is transferred."
    workingValue23 = {}
    workingValue25 = "\194\163"
    workingValue28 = getMoneyStringFormatted
    workingValue30 = number8
    workingValue28 = workingValue28(workingValue30)
    workingValue25 = workingValue25 .. workingValue28
    workingValue23.RightLabel = workingValue25
    workingValue25 = true

    -- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue13, localValue23, localValue32) ===
    function workingValue28(localValue13, localValue23, localValue32)
      local cmgOperation2, text14, workingValue24, workingValue26
      if localValue32 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.clientPrompt
        text14 = "Enter Total Price"
        workingValue24 = ""

        -- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue14) ===
        function workingValue26(localValue14)
          local text8, workingValue13, workingValue17, mathHelper, mathHelper2
          text8 = tonumber
          workingValue13 = localValue14
          text8 = text8(workingValue13)
          if text8 then
            workingValue13 = math
            workingValue13 = workingValue13.type
            workingValue17 = text8
            workingValue13 = workingValue13(workingValue17)
            if "integer" == workingValue13 then
              workingValue13 = 10000
              if text8 >= workingValue13 then
                workingValue13 = 10000000000
                if text8 <= workingValue13 then
                  number8 = text8
                  workingValue13 = math
                  workingValue13 = workingValue13.min
                  workingValue17 = number12
                  mathHelper = math
                  mathHelper = mathHelper.floor
                  mathHelper2 = text8 / 2
                  mathHelper, mathHelper2 = mathHelper(mathHelper2)
                  workingValue13 = workingValue13(workingValue17, mathHelper, mathHelper2)
                  number12 = workingValue13
                  workingValue13 = localValue22
                  workingValue13()
              end
            end
          end
          else
            workingValue13 = notify
            workingValue17 = "~r~Total price must be a whole number between \194\16310,000 and \194\16310,000,000,000."
            -- Beginner: Show a notification to the player.
            workingValue13(workingValue17)
          end
        end
        cmgOperation2(text14, workingValue24, workingValue26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue3(localValue4, stateFlag8, workingValue23, workingValue25, workingValue28)
    localValue3 = RageUI
    localValue3 = localValue3.ButtonWithStyle
    localValue4 = "Weeks To Pay"
    stateFlag8 = "The amount of weeks the player has to pay off the plan. Automatically calculated if Pay Amount Per Week is set."
    workingValue23 = {}
    workingValue25 = tostring
    workingValue28 = number9
    workingValue25 = workingValue25(workingValue28)
    workingValue28 = " week"
    workingValue30 = number9
    if workingValue30 > 1 then
      workingValue30 = "s"
      if workingValue30 then
        goto continueAtStep41
      end
    end
    workingValue30 = ""
    ::continueAtStep41::
    workingValue25 = workingValue25 .. workingValue28 .. workingValue30
    workingValue23.RightLabel = workingValue25
    workingValue25 = true

    -- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue13, localValue23, localValue32) ===
    function workingValue28(localValue13, localValue23, localValue32)
      local cmgOperation2, text14, workingValue24, workingValue26
      if localValue32 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.clientPrompt
        text14 = "Enter Weeks To Pay"
        workingValue24 = ""

        -- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue14) ===
        function workingValue26(localValue14)
          local text8, workingValue13, workingValue17
          text8 = tonumber
          workingValue13 = localValue14
          text8 = text8(workingValue13)
          if text8 then
            workingValue13 = math
            workingValue13 = workingValue13.type
            workingValue17 = text8
            workingValue13 = workingValue13(workingValue17)
            if "integer" == workingValue13 and text8 >= 1 and text8 <= 26 then
              number9 = text8
              workingValue13 = math
              workingValue13 = workingValue13.ceil
              workingValue17 = localValue12
              workingValue17 = workingValue17()
              workingValue17 = workingValue17 / text8
              workingValue13 = workingValue13(workingValue17)
              number10 = workingValue13
              workingValue13 = true
              stateFlag5 = workingValue13
          end
          else
            workingValue13 = notify
            workingValue17 = "~r~Total amount of weeks must be a whole number between 1 week and 26 weeks."
            -- Beginner: Show a notification to the player.
            workingValue13(workingValue17)
          end
        end
        cmgOperation2(text14, workingValue24, workingValue26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue3(localValue4, stateFlag8, workingValue23, workingValue25, workingValue28)
    localValue3 = RageUI
    localValue3 = localValue3.ButtonWithStyle
    localValue4 = "Pay Amount Per Week"
    stateFlag8 = "The amount of money to pay each week. Automatically calculated if Weekly Pay Amount is set."
    workingValue23 = {}
    workingValue25 = "\194\163"
    workingValue28 = getMoneyStringFormatted
    workingValue30 = number10
    workingValue28 = workingValue28(workingValue30)
    workingValue25 = workingValue25 .. workingValue28
    workingValue23.RightLabel = workingValue25
    workingValue25 = true

    -- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue13, localValue23, localValue32) ===
    function workingValue28(localValue13, localValue23, localValue32)
      local cmgOperation2, text14, workingValue24, workingValue26
      if localValue32 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.clientPrompt
        text14 = "Enter Amount Per Week"
        workingValue24 = ""

        -- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue14) ===
        function workingValue26(localValue14)
          local text8, workingValue13, workingValue17, mathHelper, mathHelper2, workingValue27, text19
          text8 = tonumber
          workingValue13 = localValue14
          text8 = text8(workingValue13)
          if text8 then
            workingValue13 = math
            workingValue13 = workingValue13.type
            workingValue17 = text8
            workingValue13 = workingValue13(workingValue17)
            if "integer" == workingValue13 then
              workingValue13 = math
              workingValue13 = workingValue13.ceil
              workingValue17 = localValue12
              workingValue17 = workingValue17()
              workingValue17 = workingValue17 / 26
              workingValue13 = workingValue13(workingValue17)
              if text8 >= workingValue13 then
                workingValue13 = localValue12
                workingValue13 = workingValue13()
                if text8 <= workingValue13 then
                  number10 = text8
                  workingValue13 = math
                  workingValue13 = workingValue13.ceil
                  workingValue17 = localValue12
                  workingValue17 = workingValue17()
                  workingValue17 = workingValue17 / text8
                  workingValue13 = workingValue13(workingValue17)
                  number9 = workingValue13
                  workingValue13 = false
                  stateFlag5 = workingValue13
              end
            end
          end
          else
            workingValue13 = notify
            workingValue17 = "~r~Pay amount per week must be a whole number between \194\163"
            mathHelper = getMoneyStringFormatted
            mathHelper2 = math
            mathHelper2 = mathHelper2.ceil
            workingValue27 = localValue12
            workingValue27 = workingValue27()
            workingValue27 = workingValue27 / 26
            mathHelper2, workingValue27, text19 = mathHelper2(workingValue27)
            mathHelper = mathHelper(mathHelper2, workingValue27, text19)
            mathHelper2 = " and \194\163"
            workingValue27 = getMoneyStringFormatted
            text19 = localValue12
            text19 = text19()
            workingValue27 = workingValue27(text19)
            text19 = "."
            workingValue17 = workingValue17 .. mathHelper .. mathHelper2 .. workingValue27 .. text19
            -- Beginner: Show a notification to the player.
            workingValue13(workingValue17)
          end
        end
        cmgOperation2(text14, workingValue24, workingValue26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue3(localValue4, stateFlag8, workingValue23, workingValue25, workingValue28)
    localValue3 = RageUI
    localValue3 = localValue3.ButtonWithStyle
    localValue4 = "Maximum Missed Payments"
    stateFlag8 = "The maximum amount of missed payments in weeks allowed before the payment plan is automatically cancelled."
    workingValue23 = {}
    workingValue25 = tostring
    workingValue28 = number11
    workingValue25 = workingValue25(workingValue28)
    workingValue28 = " week"
    workingValue30 = number11
    if workingValue30 > 1 then
      workingValue30 = "s"
      if workingValue30 then
        goto continueAtStep78
      end
    end
    workingValue30 = ""
    ::continueAtStep78::
    workingValue25 = workingValue25 .. workingValue28 .. workingValue30
    workingValue23.RightLabel = workingValue25
    workingValue25 = true

    -- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue13, localValue23, localValue32) ===
    function workingValue28(localValue13, localValue23, localValue32)
      local cmgOperation2, text14, workingValue24, workingValue26
      if localValue32 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.clientPrompt
        text14 = "Enter Maximum Missed Payments"
        workingValue24 = ""

        -- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue14) ===
        function workingValue26(localValue14)
          local text8, workingValue13, workingValue17
          text8 = tonumber
          workingValue13 = localValue14
          text8 = text8(workingValue13)
          if text8 then
            workingValue13 = math
            workingValue13 = workingValue13.type
            workingValue17 = text8
            workingValue13 = workingValue13(workingValue17)
            if "integer" == workingValue13 and text8 >= 1 and text8 <= 4 then
              number11 = text8
          end
          else
            workingValue13 = notify
            workingValue17 = "~r~Total price must be a whole number between 1 week and 4 weeks."
            -- Beginner: Show a notification to the player.
            workingValue13(workingValue17)
          end
        end
        cmgOperation2(text14, workingValue24, workingValue26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue3(localValue4, stateFlag8, workingValue23, workingValue25, workingValue28)
    localValue3 = RageUI
    localValue3 = localValue3.ButtonWithStyle
    localValue4 = "Initial Deposit"
    stateFlag8 = "The amount that has to be paid when accepting the offer. Counts towards the total."
    workingValue23 = {}
    workingValue25 = "\194\163"
    workingValue28 = getMoneyStringFormatted
    workingValue30 = number12
    workingValue28 = workingValue28(workingValue30)
    workingValue25 = workingValue25 .. workingValue28
    workingValue23.RightLabel = workingValue25
    workingValue25 = true

    -- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue13, localValue23, localValue32) ===
    function workingValue28(localValue13, localValue23, localValue32)
      local cmgOperation2, text14, workingValue24, workingValue26
      if localValue32 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.clientPrompt
        text14 = "Enter Initial Deposit"
        workingValue24 = ""

        -- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue14) ===
        function workingValue26(localValue14)
          local text8, workingValue13, workingValue17, mathHelper, mathHelper2, workingValue27
          text8 = tonumber
          workingValue13 = localValue14
          text8 = text8(workingValue13)
          if text8 then
            workingValue13 = math
            workingValue13 = workingValue13.type
            workingValue17 = text8
            workingValue13 = workingValue13(workingValue17)
            if "integer" == workingValue13 and text8 >= 0 then
              workingValue13 = number8
              workingValue13 = workingValue13 / 2
              if text8 <= workingValue13 then
                number12 = text8
                workingValue13 = localValue22
                workingValue13()
            end
          end
          else
            workingValue13 = notify
            workingValue17 = "~r~Initial deposit must be a whole number between \194\1630 and \194\163"
            mathHelper = getMoneyStringFormatted
            mathHelper2 = math
            mathHelper2 = mathHelper2.floor
            workingValue27 = number8
            workingValue27 = workingValue27 / 2
            mathHelper2, workingValue27 = mathHelper2(workingValue27)
            mathHelper = mathHelper(mathHelper2, workingValue27)
            mathHelper2 = "."
            workingValue17 = workingValue17 .. mathHelper .. mathHelper2
            -- Beginner: Show a notification to the player.
            workingValue13(workingValue17)
          end
        end
        cmgOperation2(text14, workingValue24, workingValue26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue3(localValue4, stateFlag8, workingValue23, workingValue25, workingValue28)
    localValue3 = RageUI
    localValue3 = localValue3.ButtonWithStyle
    localValue4 = "~g~Submit To Nearby"
    stateFlag8 = ""
    workingValue23 = {}
    workingValue23.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue25 = true

    -- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue13, localValue23, localValue32) ===
    function workingValue28(localValue13, localValue23, localValue32)
      local cmgOperation2, text14, workingValue24, workingValue26, workingValue29, workingValue31, workingValue32
      if localValue32 then
        cmgOperation2 = TriggerServerEvent
        text14 = "f36e68f91d"
        workingValue24 = workingValue
        workingValue26 = number8
        workingValue29 = number9
        workingValue31 = number11
        workingValue32 = number12
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f36e68f91d".
        cmgOperation2(text14, workingValue24, workingValue26, workingValue29, workingValue31, workingValue32)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue3(localValue4, stateFlag8, workingValue23, workingValue25, workingValue28)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "paymentplanoffer"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = true
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30
    localValue12 = workingValue15
    if not localValue12 then
      return
    end
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~House Offered: "
    localValue3 = workingValue15.houseName
    localValue22 = localValue22 .. localValue3
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Total Price"
    localValue3 = "The total amount of money that you will have to be pay before ownership is transferred."
    localValue4 = {}
    stateFlag8 = "\194\163"
    workingValue23 = getMoneyStringFormatted
    workingValue25 = workingValue15.totalPrice
    workingValue23 = workingValue23(workingValue25)
    stateFlag8 = stateFlag8 .. workingValue23
    localValue4.RightLabel = stateFlag8
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
    function workingValue23()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Weeks To Pay"
    localValue3 = "The amount of weeks you have to pay off the plan."
    localValue4 = {}
    stateFlag8 = tostring
    workingValue23 = workingValue15.numWeeks
    stateFlag8 = stateFlag8(workingValue23)
    workingValue23 = " week"
    workingValue25 = workingValue15.numWeeks
    if workingValue25 > 1 then
      workingValue25 = "s"
      if workingValue25 then
        goto continueAtStep43
      end
    end
    workingValue25 = ""
    ::continueAtStep43::
    stateFlag8 = stateFlag8 .. workingValue23 .. workingValue25
    localValue4.RightLabel = stateFlag8
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
    function workingValue23()
      local localValue13, localValue23
    end
    localValue12(localValue22, localValue3, localValue4, stateFlag8, workingValue23)
    localValue12 = workingValue15.totalPrice
    localValue22 = workingValue15.initialDeposit
    localValue12 = localValue12 - localValue22
    localValue22 = math
    localValue22 = localValue22.ceil
    localValue3 = workingValue15.numWeeks
    localValue3 = localValue12 / localValue3
    localValue22 = localValue22(localValue3)
    localValue3 = RageUI
    localValue3 = localValue3.ButtonWithStyle
    localValue4 = "Pay Amount Per Week"
    stateFlag8 = "The amount of money you have to pay each week."
    workingValue23 = {}
    workingValue25 = "\194\163"
    workingValue28 = getMoneyStringFormatted
    workingValue30 = localValue22
    workingValue28 = workingValue28(workingValue30)
    workingValue25 = workingValue25 .. workingValue28
    workingValue23.RightLabel = workingValue25
    workingValue25 = true

    -- === HELPER FUNCTION (decompiler name: workingValue28; parameters: none) ===
    function workingValue28()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue3(localValue4, stateFlag8, workingValue23, workingValue25, workingValue28)
    localValue3 = RageUI
    localValue3 = localValue3.ButtonWithStyle
    localValue4 = "Maximum Missed Payments"
    stateFlag8 = "The maximum amount of missed payments in weeks allowed before the payment plan is automatically cancelled."
    workingValue23 = {}
    workingValue25 = tostring
    workingValue28 = workingValue15.maxMissedWeeks
    workingValue25 = workingValue25(workingValue28)
    workingValue28 = " week"
    workingValue30 = workingValue15.maxMissedWeeks
    if workingValue30 > 1 then
      workingValue30 = "s"
      if workingValue30 then
        goto continueAtStep90
      end
    end
    workingValue30 = ""
    ::continueAtStep90::
    workingValue25 = workingValue25 .. workingValue28 .. workingValue30
    workingValue23.RightLabel = workingValue25
    workingValue25 = true

    -- === HELPER FUNCTION (decompiler name: workingValue28; parameters: none) ===
    function workingValue28()
      local localValue13, localValue23
    end
    localValue3(localValue4, stateFlag8, workingValue23, workingValue25, workingValue28)
    localValue3 = RageUI
    localValue3 = localValue3.ButtonWithStyle
    localValue4 = "Initial Deposit"
    stateFlag8 = "The amount that has to be paid when accepting the offer. Counts towards the total."
    workingValue23 = {}
    workingValue25 = "\194\163"
    workingValue28 = getMoneyStringFormatted
    workingValue30 = workingValue15.initialDeposit
    workingValue28 = workingValue28(workingValue30)
    workingValue25 = workingValue25 .. workingValue28
    workingValue23.RightLabel = workingValue25
    workingValue25 = true

    -- === HELPER FUNCTION (decompiler name: workingValue28; parameters: none) ===
    function workingValue28()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue3(localValue4, stateFlag8, workingValue23, workingValue25, workingValue28)
    localValue3 = RageUI
    localValue3 = localValue3.ButtonWithStyle
    localValue4 = "~g~Accept Payment Plan"
    stateFlag8 = ""
    workingValue23 = {}
    workingValue23.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue25 = true

    -- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue13, localValue23, localValue32) ===
    function workingValue28(localValue13, localValue23, localValue32)
      local cmgOperation2, text14
      if localValue32 then
        cmgOperation2 = nil
        workingValue15 = cmgOperation2
        cmgOperation2 = TriggerServerEvent
        text14 = "8aa5908fd2"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8aa5908fd2".
        cmgOperation2(text14)
        cmgOperation2 = RageUI
        cmgOperation2 = cmgOperation2.CloseAll
        cmgOperation2()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue3(localValue4, stateFlag8, workingValue23, workingValue25, workingValue28)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "paymentplansummary"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = true
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~g~Estimated income of \194\163"
    localValue3 = getMoneyStringFormatted
    localValue4 = dataCollection11.income
    localValue3 = localValue3(localValue4)
    localValue4 = " per week"
    localValue22 = localValue22 .. localValue3 .. localValue4
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Estimated outflow of \194\163"
    localValue3 = getMoneyStringFormatted
    localValue4 = dataCollection11.outcome
    localValue3 = localValue3(localValue4)
    localValue4 = " per week"
    localValue22 = localValue22 .. localValue3 .. localValue4
    localValue12(localValue22)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "paymentplanout"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = true
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6
    localValue12 = pairs
    localValue22 = dataCollection8
    localValue12, localValue22, localValue3, localValue4 = localValue12(localValue22)
    for stateFlag8, workingValue23 in localValue12, localValue22, localValue3, localValue4 do
      workingValue25 = workingValue23.houseName
      workingValue28 = workingValue23.paymentPlannedBy
      workingValue30 = RageUI
      workingValue30 = workingValue30.ButtonWithStyle
      text20 = workingValue25
      text2 = "Payment Planned to "
      stateFlag = workingValue28
      text2 = text2 .. stateFlag
      stateFlag = {}
      stateFlag.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue13, localValue23, localValue32) ===
      function workingValue4(localValue13, localValue23, localValue32)
        local cmgOperation2, text14, workingValue24
        if localValue32 then
          cmgOperation2 = nil
          workingValue14 = cmgOperation2
          cmgOperation2 = TriggerServerEvent
          text14 = "8e0470d982"
          workingValue24 = workingValue23.houseName
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8e0470d982".
          cmgOperation2(text14, workingValue24)
        end
      end
      workingValue6 = RMenu
      text4 = workingValue6
      workingValue6 = workingValue6.Get
      text5 = "cmghouses"
      text6 = "paymentplaninfo"
      workingValue6, text4, text5, text6 = workingValue6(text4, text5, text6)
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue30(text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6)
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "paymentplanin"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = true
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28, workingValue30, text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6
    localValue12 = pairs
    localValue22 = dataCollection10
    localValue12, localValue22, localValue3, localValue4 = localValue12(localValue22)
    for stateFlag8, workingValue23 in localValue12, localValue22, localValue3, localValue4 do
      workingValue25 = workingValue23.houseName
      workingValue28 = workingValue23.paymentPlannedBy
      workingValue30 = RageUI
      workingValue30 = workingValue30.ButtonWithStyle
      text20 = workingValue25
      text2 = "Payment Planned from "
      stateFlag = workingValue28
      text2 = text2 .. stateFlag
      stateFlag = {}
      stateFlag.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue13, localValue23, localValue32) ===
      function workingValue4(localValue13, localValue23, localValue32)
        local cmgOperation2, text14, workingValue24
        if localValue32 then
          cmgOperation2 = nil
          workingValue14 = cmgOperation2
          cmgOperation2 = TriggerServerEvent
          text14 = "8e0470d982"
          workingValue24 = workingValue23.houseName
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8e0470d982".
          cmgOperation2(text14, workingValue24)
        end
      end
      workingValue6 = RMenu
      text4 = workingValue6
      workingValue6 = workingValue6.Get
      text5 = "cmghouses"
      text6 = "paymentplaninfo"
      workingValue6, text4, text5, text6 = workingValue6(text4, text5, text6)
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue30(text20, text2, stateFlag, workingValue3, workingValue4, workingValue6, text4, text5, text6)
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "paymentplaninfo"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag6 = true
  stateFlag7 = true

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28
    localValue12 = workingValue14
    if not localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~y~Fetching information..."
      localValue12(localValue22)
      return
    end
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~House: "
    localValue3 = workingValue14.houseName
    localValue22 = localValue22 .. localValue3
    localValue12(localValue22)
    localValue12 = workingValue14.sellerUserId
    localValue22 = CMG
    localValue22 = localValue22.getClientUserId
    -- Beginner: result below is userId.
    localValue22 = localValue22()
    localValue12 = localValue12 == localValue22
    if localValue12 then
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue3 = "~y~Buying Player: "
      localValue4 = workingValue14.buyerName
      stateFlag8 = " ("
      workingValue23 = tostring
      workingValue25 = workingValue14.buyerUserId
      workingValue23 = workingValue23(workingValue25)
      workingValue25 = ")"
      localValue3 = localValue3 .. localValue4 .. stateFlag8 .. workingValue23 .. workingValue25
      localValue22(localValue3)
    else
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue3 = "~y~Selling Player: "
      localValue4 = workingValue14.sellerName
      stateFlag8 = " ("
      workingValue23 = tostring
      workingValue25 = workingValue14.sellerUserId
      workingValue23 = workingValue23(workingValue25)
      workingValue25 = ")"
      localValue3 = localValue3 .. localValue4 .. stateFlag8 .. workingValue23 .. workingValue25
      localValue22(localValue3)
    end
    localValue22 = workingValue14.hasPaidThisWeek
    if localValue22 then
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue3 = "~g~The payment for this week is completed!"
      localValue22(localValue3)
    else
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue3 = "~r~The payment for this week is outstanding."
      localValue22(localValue3)
    end
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue3 = "Total Price"
    localValue4 = "The total amount of money that has to be paid."
    stateFlag8 = {}
    workingValue23 = "\194\163"
    workingValue25 = getMoneyStringFormatted
    workingValue28 = workingValue14.totalPrice
    workingValue25 = workingValue25(workingValue28)
    workingValue23 = workingValue23 .. workingValue25
    stateFlag8.RightLabel = workingValue23
    workingValue23 = true

    -- === HELPER FUNCTION (decompiler name: workingValue25; parameters: none) ===
    function workingValue25()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue3, localValue4, stateFlag8, workingValue23, workingValue25)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue3 = "Amount Paid"
    localValue4 = "The amount of money that has been paid so far."
    stateFlag8 = {}
    workingValue23 = "\194\163"
    workingValue25 = getMoneyStringFormatted
    workingValue28 = workingValue14.amountPaid
    workingValue25 = workingValue25(workingValue28)
    workingValue23 = workingValue23 .. workingValue25
    stateFlag8.RightLabel = workingValue23
    workingValue23 = true

    -- === HELPER FUNCTION (decompiler name: workingValue25; parameters: none) ===
    function workingValue25()
      local localValue13, localValue23
    end
    localValue22(localValue3, localValue4, stateFlag8, workingValue23, workingValue25)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue3 = "Weeks Remaining"
    localValue4 = "The amount of weeks left until the payment plan is paid off."
    stateFlag8 = {}
    workingValue23 = tostring
    workingValue25 = workingValue14.weeksRemaining
    workingValue23 = workingValue23(workingValue25)
    workingValue25 = " week"
    workingValue28 = workingValue14.weeksRemaining
    if workingValue28 > 1 then
      workingValue28 = "s"
      if workingValue28 then
        goto continueAtStep107
      end
    end
    workingValue28 = ""
    ::continueAtStep107::
    workingValue23 = workingValue23 .. workingValue25 .. workingValue28
    stateFlag8.RightLabel = workingValue23
    workingValue23 = true

    -- === HELPER FUNCTION (decompiler name: workingValue25; parameters: none) ===
    function workingValue25()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue3, localValue4, stateFlag8, workingValue23, workingValue25)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue3 = "Missed Weeks Remaining"
    localValue4 = "The amount of weeks a missed payment is allowed."
    stateFlag8 = {}
    workingValue23 = tostring
    workingValue25 = workingValue14.missedWeeksRemaining
    workingValue23 = workingValue23(workingValue25)
    workingValue25 = " week"
    workingValue28 = workingValue14.missedWeeksRemaining
    if workingValue28 > 1 then
      workingValue28 = "s"
      if workingValue28 then
        goto continueAtStep129
      end
    end
    workingValue28 = ""
    ::continueAtStep129::
    workingValue23 = workingValue23 .. workingValue25 .. workingValue28
    stateFlag8.RightLabel = workingValue23
    workingValue23 = true

    -- === HELPER FUNCTION (decompiler name: workingValue25; parameters: none) ===
    function workingValue25()
      local localValue13, localValue23
    end
    localValue22(localValue3, localValue4, stateFlag8, workingValue23, workingValue25)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue3 = "Week Start Time"
    localValue4 = "The time that is considered the start of the week."
    stateFlag8 = {}
    workingValue23 = workingValue14.weekStartTime
    stateFlag8.RightLabel = workingValue23
    workingValue23 = true

    -- === HELPER FUNCTION (decompiler name: workingValue25; parameters: none) ===
    function workingValue25()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue3, localValue4, stateFlag8, workingValue23, workingValue25)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue3 = "Last Payment Time"
    localValue4 = "The time the payment plan last had a payment."
    stateFlag8 = {}
    workingValue23 = workingValue14.lastPaymentTime
    stateFlag8.RightLabel = workingValue23
    workingValue23 = true

    -- === HELPER FUNCTION (decompiler name: workingValue25; parameters: none) ===
    function workingValue25()
      local localValue13, localValue23
    end
    localValue22(localValue3, localValue4, stateFlag8, workingValue23, workingValue25)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue3 = "Failed Return Date"
    localValue4 = "The time the house would be returned if no further payments were made (within the hour)."
    stateFlag8 = {}
    workingValue23 = workingValue14.estimatedReturnDate
    stateFlag8.RightLabel = workingValue23
    workingValue23 = true

    -- === HELPER FUNCTION (decompiler name: workingValue25; parameters: none) ===
    function workingValue25()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue3, localValue4, stateFlag8, workingValue23, workingValue25)
    if not localValue12 then
      localValue22 = workingValue14.hasPaidThisWeek
      if not localValue22 then
        localValue22 = RageUI
        localValue22 = localValue22.ButtonWithStyle
        localValue3 = "~g~Pay Debt This week"
        localValue4 = "You will make a payment of \194\163"
        stateFlag8 = getMoneyStringFormatted
        workingValue23 = workingValue14.amountPayThisWeek
        stateFlag8 = stateFlag8(workingValue23)
        workingValue23 = " this week."
        localValue4 = localValue4 .. stateFlag8 .. workingValue23
        stateFlag8 = {}
        stateFlag8.RightLabel = "\226\134\146\226\134\146\226\134\146"
        workingValue23 = true

        -- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue13, localValue23, localValue32) ===
        function workingValue25(localValue13, localValue23, localValue32)
          local cmgOperation2, text14, workingValue24
          if localValue32 then
            cmgOperation2 = TriggerServerEvent
            text14 = "a5ba212ffa"
            workingValue24 = workingValue14.houseName
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a5ba212ffa".
            cmgOperation2(text14, workingValue24)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        localValue22(localValue3, localValue4, stateFlag8, workingValue23, workingValue25)
      else
        localValue22 = RageUI
        localValue22 = localValue22.ButtonWithStyle
        localValue3 = "~y~Pay Week In Advance"
        localValue4 = "You will make a payment of \194\163"
        stateFlag8 = getMoneyStringFormatted
        workingValue23 = workingValue14.amountPayThisWeek
        stateFlag8 = stateFlag8(workingValue23)
        workingValue23 = " for the next week."
        localValue4 = localValue4 .. stateFlag8 .. workingValue23
        stateFlag8 = {}
        stateFlag8.RightLabel = "\226\134\146\226\134\146\226\134\146"
        workingValue23 = true

        -- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue13, localValue23, localValue32) ===
        function workingValue25(localValue13, localValue23, localValue32)
          local cmgOperation2, text14, workingValue24
          if localValue32 then
            cmgOperation2 = TriggerServerEvent
            text14 = "a5ba212ffa"
            workingValue24 = workingValue14.houseName
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a5ba212ffa".
            cmgOperation2(text14, workingValue24)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        localValue22(localValue3, localValue4, stateFlag8, workingValue23, workingValue25)
      end
      localValue22 = RageUI
      localValue22 = localValue22.ButtonWithStyle
      localValue3 = "~r~Request Payment Plan Cancellation"
      localValue4 = "~r~This will cancel the payment plan and return the house back to the seller. You will not receive any money back from doing this."
      stateFlag8 = {}
      workingValue23 = true

      -- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue13, localValue23, localValue32) ===
      function workingValue25(localValue13, localValue23, localValue32)
        local cmgOperation2, text14, workingValue24
        if localValue32 then
          cmgOperation2 = TriggerServerEvent
          text14 = "e7f72f09e1"
          workingValue24 = workingValue14.houseName
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7f72f09e1".
          cmgOperation2(text14, workingValue24)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue22(localValue3, localValue4, stateFlag8, workingValue23, workingValue25)
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
  function stateFlag9()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9)
end
text9(text10, rageUiOperation, text11, text12)

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7, text18
  localValue2 = workingValue18
  stateFlag4 = localValue1
  localValue2 = localValue2(stateFlag4)
  if localValue2 then
    localValue2 = 0
    number4 = localValue2
    localValue2 = TriggerServerEvent
    stateFlag4 = "48af192b47"
    stateFlag6 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "48af192b47".
    localValue2(stateFlag4, stateFlag6)
  end
  workingValue = localValue1
  localValue2 = RageUI
  localValue2 = localValue2.CloseAll
  localValue2()
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  stateFlag4 = RMenu
  stateFlag6 = stateFlag4
  stateFlag4 = stateFlag4.Get
  stateFlag7 = "cmghouses"
  text18 = "mainmenu"
  -- Beginner: result below is menu.
  stateFlag4 = stateFlag4(stateFlag6, stateFlag7, text18)
  stateFlag6 = true
  localValue2(stateFlag4, stateFlag6)
end

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2, stateFlag4, stateFlag6, stateFlag7
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  stateFlag4 = false
  localValue1(localValue2, stateFlag4)
end
rageUiOperation = true

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, stateFlag4, stateFlag6, stateFlag7
  localValue1 = RageUI
  localValue1 = localValue1.IsAnyMenuOfTypeVisible
  localValue2 = "cmghouses"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = rageUiOperation
    if localValue1 then
      localValue1 = RageUI
      localValue1 = localValue1.CloseAll
      localValue1()
      localValue1 = RageUI
      localValue1 = localValue1.Visible
      localValue2 = RMenu
      stateFlag4 = localValue2
      localValue2 = localValue2.Get
      stateFlag6 = "cmghouses"
      stateFlag7 = "exit"
      -- Beginner: result below is menu.
      localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
      stateFlag4 = true
      localValue1(localValue2, stateFlag4)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2, stateFlag4, stateFlag6, stateFlag7
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag6 = "cmghouses"
  stateFlag7 = "exit"
  localValue2, stateFlag4, stateFlag6, stateFlag7 = localValue2(stateFlag4, stateFlag6, stateFlag7)
  -- Beginner: result below is menuVisible.
  localValue1 = localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7)
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.CloseAll
    localValue1()
    localValue1 = RageUI
    localValue1 = localValue1.Visible
    localValue2 = RMenu
    stateFlag4 = localValue2
    localValue2 = localValue2.Get
    stateFlag6 = "cmghouses"
    stateFlag7 = "exit"
    -- Beginner: result below is menu.
    localValue2 = localValue2(stateFlag4, stateFlag6, stateFlag7)
    stateFlag4 = false
    localValue1(localValue2, stateFlag4)
  end
end
rageUiOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1) ===
function rageUiOperation3(localValue1)
  local localValue2
  rageUiOperation = localValue1
end
rageUiOperation2.setHomeExitForcesOpenMenu = rageUiOperation3
rageUiOperation2 = Citizen
rageUiOperation2 = rageUiOperation2.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position, number, number2, number3, workingValue7, stateFlag2, dataCollection3

  -- === HELPER FUNCTION: localValue1(localValue12) ===
  function localValue1(localValue12)
    local localValue22, localValue3, localValue4
    localValue22 = TriggerServerEvent
    localValue3 = "7638104656"
    localValue4 = localValue12.houseName
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7638104656".
    localValue22(localValue3, localValue4)
  end

  -- === HELPER FUNCTION: localValue2(localValue12) ===
  function localValue2(localValue12)
    local localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28
    localValue22 = localValue12.menuOpen
    if localValue22 then
      localValue22 = PlaySound
      localValue3 = -1
      localValue4 = "Hit"
      stateFlag8 = "RESPAWN_SOUNDSET"
      workingValue23 = false
      workingValue25 = 0
      workingValue28 = true
      localValue22(localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28)
      localValue22 = text10
      localValue22()
      localValue12.menuOpen = false
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12) ===
  function stateFlag4(localValue12)
    local localValue22, localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28
    localValue22 = localValue12.distance
    localValue3 = 1.5
    if localValue22 > localValue3 then
      localValue22 = localValue2
      localValue3 = localValue12
      localValue22(localValue3)
    else
      localValue22 = localValue12.menuOpen
      if not localValue22 then
        localValue22 = PlaySound
        localValue3 = -1
        localValue4 = "Hit"
        stateFlag8 = "RESPAWN_SOUNDSET"
        workingValue23 = false
        workingValue25 = 0
        workingValue28 = true
        localValue22(localValue3, localValue4, stateFlag8, workingValue23, workingValue25, workingValue28)
        localValue22 = text9
        localValue3 = localValue12.houseName
        localValue22(localValue3)
        localValue22 = TriggerServerEvent
        localValue3 = "47cb682b20"
        localValue4 = localValue12.houseName
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "47cb682b20".
        localValue22(localValue3, localValue4)
        localValue12.menuOpen = true
      end
    end
  end
  stateFlag6 = pairs
  stateFlag7 = cmgOperation.homes
  stateFlag6, stateFlag7, text18, stateFlag9 = stateFlag6(stateFlag7)
  for number14, stateFlag10 in stateFlag6, stateFlag7, text18, stateFlag9 do
    cmgOperation6 = vector3
    text = stateFlag10.entry_point
    text = text[1]
    position = stateFlag10.entry_point
    position = position[2]
    number = stateFlag10.entry_point
    number = number[3]
    cmgOperation6 = cmgOperation6(text, position, number)
    stateFlag10.position = cmgOperation6
    cmgOperation6 = CMG
    cmgOperation6 = cmgOperation6.createArea
    text = "house_"
    position = number14
    text = text .. position
    position = stateFlag10.position
    number = 5.0
    number2 = 6
    number3 = localValue1
    workingValue7 = localValue2
    stateFlag2 = stateFlag4
    dataCollection3 = {}
    dataCollection3.houseName = number14
    -- Beginner: Create an interaction area around a world position.
    cmgOperation6(text, position, number, number2, number3, workingValue7, stateFlag2, dataCollection3)
    cmgOperation6 = tCMG
    cmgOperation6 = cmgOperation6.addPropMarker
    text = "bzzz_marker_home_green_anim"
    position = stateFlag10.position
    position = position.x
    number = stateFlag10.position
    number = number.y
    number2 = stateFlag10.position
    number2 = number2.z
    number3 = 20.0
    -- Beginner: Create a prop-style world marker.
    cmgOperation6(text, position, number, number2, number3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiOperation2(rageUiOperation3)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "6cf59e8d50"
-- Beginner: this function handles network event "6cf59e8d50".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag4, stateFlag6
  localValue2 = "home_"
  stateFlag4 = localValue1
  localValue2 = localValue2 .. stateFlag4
  stateFlag4 = dataCollection13
  localValue2 = stateFlag4[localValue2]
  if localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.removeBlip
    stateFlag4 = "home_"
    stateFlag6 = localValue1
    stateFlag4 = stateFlag4 .. stateFlag6
    stateFlag6 = dataCollection13
    stateFlag4 = stateFlag6[stateFlag4]
    localValue2(stateFlag4)
    localValue2 = "home_"
    stateFlag4 = localValue1
    localValue2 = localValue2 .. stateFlag4
    stateFlag4 = dataCollection13
    stateFlag4[localValue2] = nil
  end
  localValue2 = cmgOperation.homes
  localValue2 = localValue2[localValue1]
  localValue2.ownerString = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6cf59e8d50".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "c8882e3ed1"
-- Beginner: this function handles network event "c8882e3ed1".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1, localValue2) ===
function rageUiOperation4(localValue1, localValue2)
  local stateFlag4
  stateFlag4 = cmgOperation.homes
  stateFlag4[localValue1] = localValue2
end
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "d87cccab80"
-- Beginner: this function handles network event "d87cccab80".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2
  dataCollection5 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d87cccab80".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "40085eb8f5"
-- Beginner: this function handles network event "40085eb8f5".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2
  dataCollection9 = localValue1
end
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = CMG
-- Beginner: this function handles network event "40085eb8f5".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1) ===
function rageUiOperation3(localValue1)
  local localValue2
  localValue2 = dataCollection5
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue2 = dataCollection9
    localValue2 = localValue2[localValue1]
    if not localValue2 then
      goto continueAtStep11
    end
  end
  localValue2 = true
  return localValue2
  ::continueAtStep11::
  localValue2 = false
  return localValue2
end
rageUiOperation2.clientHasOutsideHouseDoorAccess = rageUiOperation3
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "bfe3b10a8c"
-- Beginner: this function handles network event "bfe3b10a8c".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10
  localValue2 = dataCollection5
  localValue2[localValue1] = true
  localValue2 = cmgOperation.homes
  localValue2 = localValue2[localValue1]
  localValue2.ownerString = nil
  localValue2 = cmgOperation.homes
  localValue2 = localValue2[localValue1]
  if localValue2 then
    stateFlag4 = tCMG
    stateFlag4 = stateFlag4.addBlip
    stateFlag6 = localValue2.entry_point
    stateFlag6 = stateFlag6[1]
    stateFlag7 = localValue2.entry_point
    stateFlag7 = stateFlag7[2]
    text18 = localValue2.entry_point
    text18 = text18[3]
    stateFlag9 = 374
    number14 = 1
    stateFlag10 = localValue1
    -- Beginner: Create a minimap blip.
    stateFlag4(stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bfe3b10a8c".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "78d2b13849"
-- Beginner: this function handles network event "78d2b13849".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag4, stateFlag6
  localValue2 = dataCollection5
  localValue2[localValue1] = nil
  localValue2 = dataCollection9
  localValue2[localValue1] = nil
  localValue2 = "home_"
  stateFlag4 = localValue1
  localValue2 = localValue2 .. stateFlag4
  stateFlag4 = dataCollection13
  localValue2 = stateFlag4[localValue2]
  if localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.removeBlip
    stateFlag4 = "home_"
    stateFlag6 = localValue1
    stateFlag4 = stateFlag4 .. stateFlag6
    stateFlag6 = dataCollection13
    stateFlag4 = stateFlag6[stateFlag4]
    localValue2(stateFlag4)
    localValue2 = "home_"
    stateFlag4 = localValue1
    localValue2 = localValue2 .. stateFlag4
    stateFlag4 = dataCollection13
    stateFlag4[localValue2] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "78d2b13849".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "aad5991362"
-- Beginner: this function handles network event "aad5991362".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1, localValue2) ===
function rageUiOperation4(localValue1, localValue2)
  workingValue16 = localValue1
  workingValue19 = localValue2
end
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "738efbf85f"
-- Beginner: this function handles network event "738efbf85f".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10
  localValue2 = tonumber
  stateFlag4 = localValue1
  localValue2 = localValue2(stateFlag4)
  if not localValue2 then
    localValue2 = 300000
  end
  stateFlag4 = 1000
  if localValue2 < stateFlag4 then
    localValue2 = 300000
  end
  stateFlag4 = TaskStartScenarioInPlace
  stateFlag6 = CMG
  stateFlag6 = stateFlag6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag6 = stateFlag6()
  stateFlag7 = "WORLD_HUMAN_WELDING"
  text18 = 0
  stateFlag9 = true
  stateFlag4(stateFlag6, stateFlag7, text18, stateFlag9)
  stateFlag4 = true
  stateFlag6 = SetTimeout
  stateFlag7 = localValue2

  -- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
  function text18()
    local localValue12, localValue22
    localValue12 = false
    stateFlag4 = localValue12
  end
  stateFlag6(stateFlag7, text18)
  stateFlag6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag6 = stateFlag6()
  stateFlag7 = tCMG
  stateFlag7 = stateFlag7.notify
  text18 = "~g~House Robbery in progress, you can cancel by pressing [E]."
  -- Beginner: Show a notification to the player.
  stateFlag7(text18)
  while stateFlag4 do
    stateFlag7 = GetEntityHealth
    text18 = CMG
    text18 = text18.getPlayerPed
    text18, stateFlag9, number14, stateFlag10 = text18()
    -- Beginner: result below is health.
    stateFlag7 = stateFlag7(text18, stateFlag9, number14, stateFlag10)
    if not (stateFlag7 > 102) then
      break
    end
    stateFlag7 = IsPedUsingScenario
    text18 = CMG
    text18 = text18.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    text18 = text18()
    stateFlag9 = "WORLD_HUMAN_WELDING"
    stateFlag7 = stateFlag7(text18, stateFlag9)
    if not stateFlag7 then
      stateFlag7 = TaskStartScenarioInPlace
      text18 = CMG
      text18 = text18.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      text18 = text18()
      stateFlag9 = "WORLD_HUMAN_WELDING"
      number14 = 0
      stateFlag10 = true
      stateFlag7(text18, stateFlag9, number14, stateFlag10)
    end
    stateFlag7 = math
    stateFlag7 = stateFlag7.floor
    text18 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text18 = text18()
    text18 = text18 - stateFlag6
    text18 = text18 / localValue2
    text18 = text18 * 100
    stateFlag7 = stateFlag7(text18)
    text18 = drawNativeText
    stateFlag9 = "~b~House Robbery - "
    number14 = stateFlag7
    stateFlag10 = "%"
    stateFlag9 = stateFlag9 .. number14 .. stateFlag10
    -- Beginner: Draw GTA-style text on screen.
    text18(stateFlag9)
    text18 = IsControlJustPressed
    stateFlag9 = 0
    number14 = 38
    text18 = text18(stateFlag9, number14)
    if text18 then
      text18 = tCMG
      text18 = text18.notify
      stateFlag9 = "~b~House Robbery cancelled."
      -- Beginner: Show a notification to the player.
      text18(stateFlag9)
      stateFlag4 = false
      text18 = ClearPedTasks
      stateFlag9 = CMG
      stateFlag9 = stateFlag9.getPlayerPed
      stateFlag9, number14, stateFlag10 = stateFlag9()
      text18(stateFlag9, number14, stateFlag10)
    end
    text18 = Wait
    stateFlag9 = 0
    text18(stateFlag9)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "738efbf85f".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = Citizen
rageUiOperation2 = rageUiOperation2.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, stateFlag4, stateFlag6
  localValue1 = false
  while true do
    localValue2 = workingValue16
    if localValue2 then
      localValue2 = GetEntityCoords
      stateFlag4 = CMG
      stateFlag4 = stateFlag4.getPlayerPed
      stateFlag4, stateFlag6 = stateFlag4()
      -- Beginner: result below is entityCoords.
      localValue2 = localValue2(stateFlag4, stateFlag6)
      stateFlag4 = workingValue16
      stateFlag4 = localValue2 - stateFlag4
      stateFlag4 = #stateFlag4
      stateFlag6 = 1.5
      if stateFlag4 < stateFlag6 then
        stateFlag4 = text11
        stateFlag4()
        localValue1 = false
      elseif not localValue1 then
        localValue1 = true
        stateFlag4 = text12
        stateFlag4()
      end
    end
    localValue2 = Wait
    stateFlag4 = 250
    localValue2(stateFlag4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiOperation2(rageUiOperation3)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "80ef63baad"
-- Beginner: this function handles network event "80ef63baad".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2
  dataCollection14 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "80ef63baad".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "f41258a4d8"
-- Beginner: this function handles network event "f41258a4d8".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2
  dataCollection15 = localValue1
end
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "1af3856b55"
-- Beginner: this function handles network event "1af3856b55".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag4, stateFlag6
  localValue2 = table
  localValue2 = localValue2.insert
  stateFlag4 = dataCollection15
  stateFlag6 = localValue1
  localValue2(stateFlag4, stateFlag6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1af3856b55".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "0392362573"
-- Beginner: this function handles network event "0392362573".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag4, stateFlag6
  localValue2 = table
  localValue2 = localValue2.insert
  stateFlag4 = dataCollection14
  stateFlag6 = localValue1
  localValue2(stateFlag4, stateFlag6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0392362573".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "94e795090f"
-- Beginner: this function handles network event "94e795090f".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6
  localValue2 = pairs
  stateFlag4 = dataCollection15
  localValue2, stateFlag4, stateFlag6, stateFlag7 = localValue2(stateFlag4)
  for text18, stateFlag9 in localValue2, stateFlag4, stateFlag6, stateFlag7 do
    number14 = string
    number14 = number14.lower
    stateFlag10 = stateFlag9.homeName
    number14 = number14(stateFlag10)
    stateFlag10 = string
    stateFlag10 = stateFlag10.lower
    cmgOperation6 = localValue1
    stateFlag10 = stateFlag10(cmgOperation6)
    if number14 == stateFlag10 then
      number14 = dataCollection15
      number14 = number14[text18]
      number14 = number14.hoursLeft
      if number14 > 1 then
        number14 = dataCollection15
        number14 = number14[text18]
        stateFlag10 = dataCollection15
        stateFlag10 = stateFlag10[text18]
        stateFlag10 = stateFlag10.hoursLeft
        stateFlag10 = stateFlag10 - 1
        number14.hoursLeft = stateFlag10
      else
        number14 = dataCollection15
        number14[text18] = nil
      end
    end
  end
end
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "531da50848"
-- Beginner: this function handles network event "531da50848".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6
  localValue2 = pairs
  stateFlag4 = dataCollection14
  localValue2, stateFlag4, stateFlag6, stateFlag7 = localValue2(stateFlag4)
  for text18, stateFlag9 in localValue2, stateFlag4, stateFlag6, stateFlag7 do
    number14 = string
    number14 = number14.lower
    stateFlag10 = stateFlag9.homeName
    number14 = number14(stateFlag10)
    stateFlag10 = string
    stateFlag10 = stateFlag10.lower
    cmgOperation6 = localValue1
    stateFlag10 = stateFlag10(cmgOperation6)
    if number14 == stateFlag10 then
      number14 = dataCollection14
      number14 = number14[text18]
      number14 = number14.hoursLeft
      if number14 > 1 then
        number14 = dataCollection14
        number14 = number14[text18]
        stateFlag10 = dataCollection14
        stateFlag10 = stateFlag10[text18]
        stateFlag10 = stateFlag10.hoursLeft
        stateFlag10 = stateFlag10 - 1
        number14.hoursLeft = stateFlag10
      else
        number14 = dataCollection14
        number14[text18] = nil
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "531da50848".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "ce3ab82b9c"
-- Beginner: this function handles network event "ce3ab82b9c".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6
  localValue2 = pairs
  stateFlag4 = dataCollection15
  localValue2, stateFlag4, stateFlag6, stateFlag7 = localValue2(stateFlag4)
  for text18, stateFlag9 in localValue2, stateFlag4, stateFlag6, stateFlag7 do
    number14 = string
    number14 = number14.lower
    stateFlag10 = stateFlag9.homeName
    number14 = number14(stateFlag10)
    stateFlag10 = string
    stateFlag10 = stateFlag10.lower
    cmgOperation6 = localValue1
    stateFlag10 = stateFlag10(cmgOperation6)
    if number14 == stateFlag10 then
      number14 = dataCollection15
      number14[text18] = nil
    end
  end
end
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "2f43f86835"
-- Beginner: this function handles network event "2f43f86835".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6
  localValue2 = pairs
  stateFlag4 = dataCollection14
  localValue2, stateFlag4, stateFlag6, stateFlag7 = localValue2(stateFlag4)
  for text18, stateFlag9 in localValue2, stateFlag4, stateFlag6, stateFlag7 do
    number14 = string
    number14 = number14.lower
    stateFlag10 = stateFlag9.homeName
    number14 = number14(stateFlag10)
    stateFlag10 = string
    stateFlag10 = stateFlag10.lower
    cmgOperation6 = localValue1
    stateFlag10 = stateFlag10(cmgOperation6)
    if number14 == stateFlag10 then
      number14 = dataCollection14
      number14[text18] = nil
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2f43f86835".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "59e0647678"
-- Beginner: this function handles network event "59e0647678".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, stateFlag4, stateFlag6, stateFlag7, text18
  localValue1 = tCMG
  localValue1 = localValue1.getDoorbellNotificationType
  localValue1 = localValue1()
  if localValue1 <= 1 then
    localValue1 = GetSoundId
    -- Beginner: result below is soundHandle.
    localValue1 = localValue1()
    localValue2 = PlaySoundFrontend
    stateFlag4 = localValue1
    stateFlag6 = "DOOR_Intercom_MASTER"
    stateFlag7 = nil
    text18 = false
    localValue2(stateFlag4, stateFlag6, stateFlag7, text18)
    localValue2 = ReleaseSoundId
    stateFlag4 = localValue1
    localValue2(stateFlag4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "59e0647678".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "3aa585dbec"
-- Beginner: this function handles network event "3aa585dbec".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position, number, number2, number3, workingValue7
  localValue2 = pairs
  stateFlag4 = localValue1
  localValue2, stateFlag4, stateFlag6, stateFlag7 = localValue2(stateFlag4)
  for text18, stateFlag9 in localValue2, stateFlag4, stateFlag6, stateFlag7 do
    number14 = cmgOperation.homes
    number14 = number14[text18]
    number14.ownerString = "For sale."
  end
  localValue2 = CMG
  localValue2 = localValue2.isDevMode
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.getServerNum
    localValue2 = localValue2()
    if 3 ~= localValue2 then
      goto continueAtStep22
    end
  end
  return
  ::continueAtStep22::
  localValue2 = pairs
  stateFlag4 = cmgOperation.homes
  localValue2, stateFlag4, stateFlag6, stateFlag7 = localValue2(stateFlag4)
  for text18, stateFlag9 in localValue2, stateFlag4, stateFlag6, stateFlag7 do
    number14 = stateFlag9.ownerString
    if "For sale." == number14 then
      number14 = "home_"
      stateFlag10 = text18
      number14 = number14 .. stateFlag10
      stateFlag10 = dataCollection13
      cmgOperation6 = tCMG
      cmgOperation6 = cmgOperation6.addBlip
      text = stateFlag9.entry_point
      text = text[1]
      position = stateFlag9.entry_point
      position = position[2]
      number = stateFlag9.entry_point
      number = number[3]
      number2 = stateFlag9.blipId
      number3 = stateFlag9.blipColour
      workingValue7 = text18
      cmgOperation6 = cmgOperation6(text, position, number, number2, number3, workingValue7)
      stateFlag10[number14] = cmgOperation6
    end
  end
end
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "7ead975359"
-- Beginner: this function handles network event "7ead975359".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position, number, number2, number3, workingValue7
  localValue2 = pairs
  stateFlag4 = localValue1
  localValue2, stateFlag4, stateFlag6, stateFlag7 = localValue2(stateFlag4)
  for text18, stateFlag9 in localValue2, stateFlag4, stateFlag6, stateFlag7 do
    number14 = stateFlag9[1]
    stateFlag10 = stateFlag9[2]
    cmgOperation6 = tCMG
    cmgOperation6 = cmgOperation6.addBlip
    text = stateFlag10.x
    position = stateFlag10.y
    number = stateFlag10.z
    number2 = 374
    number3 = 1
    workingValue7 = number14
    -- Beginner: Create a minimap blip.
    cmgOperation6(text, position, number, number2, number3, workingValue7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7ead975359".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "cbd0947931"
-- Beginner: this function handles network event "cbd0947931".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1, localValue2) ===
function rageUiOperation4(localValue1, localValue2)
  local stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14
  stateFlag4 = GetSoundId
  -- Beginner: result below is soundHandle.
  stateFlag4 = stateFlag4()
  stateFlag6 = PlaySoundFrontend
  stateFlag7 = stateFlag4
  text18 = "End_Zone_Flash"
  stateFlag9 = "DLC_BTL_RB_Remix_Sounds"
  number14 = true
  stateFlag6(stateFlag7, text18, stateFlag9, number14)
  stateFlag6 = ReleaseSoundId
  stateFlag7 = stateFlag4
  stateFlag6(stateFlag7)
  if localValue2 then
    stateFlag6 = CMG
    stateFlag6 = stateFlag6.announceMpBigMsg
    stateFlag7 = "~b~WARNING"
    text18 = "~b~Your house "
    stateFlag9 = localValue1
    number14 = " is being RAIDED by the MET Police!"
    text18 = text18 .. stateFlag9 .. number14
    stateFlag9 = 5000
    stateFlag6(stateFlag7, text18, stateFlag9)
  else
    stateFlag6 = CMG
    stateFlag6 = stateFlag6.announceMpBigMsg
    stateFlag7 = "~r~WARNING"
    text18 = "Your house "
    stateFlag9 = localValue1
    number14 = " is being BROKEN INTO!"
    text18 = text18 .. stateFlag9 .. number14
    stateFlag9 = 5000
    stateFlag6(stateFlag7, text18, stateFlag9)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cbd0947931".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, stateFlag4
  localValue1 = workingValue
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.exitHomePlacementPreview
    localValue1()
    localValue1 = CMG
    localValue1 = localValue1.exitHomeDeletionPreview
    localValue1()
    localValue1 = nil
    workingValue16 = localValue1
    localValue1 = nil
    workingValue19 = localValue1
    localValue1 = TriggerServerEvent
    localValue2 = "4b4c578cc4"
    stateFlag4 = workingValue
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4b4c578cc4".
    localValue1(localValue2, stateFlag4)
    localValue1 = nil
    workingValue = localValue1
    localValue1 = nil
    workingValue8 = localValue1
  end
end
rageUiOperation2.leaveActiveHouse = rageUiOperation3
rageUiOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1, localValue2) ===
function rageUiOperation3(localValue1, localValue2)
  local stateFlag4
  stateFlag4 = dataCollection4
  stateFlag4[localValue1] = localValue2
end
rageUiOperation2.registerHomeCustomisationButtons = rageUiOperation3
rageUiOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1, localValue2) ===
function rageUiOperation3(localValue1, localValue2)
  local stateFlag4
  stateFlag4 = dataCollection6
  stateFlag4[localValue1] = localValue2
end
rageUiOperation2.registerHomeExitButtons = rageUiOperation3
rageUiOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1) ===
function rageUiOperation3(localValue1)
  local localValue2
  localValue2 = dataCollection6
  localValue2[localValue1] = nil
end
rageUiOperation2.unregisterHomeExitButtons = rageUiOperation3
rageUiOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1, localValue2) ===
function rageUiOperation3(localValue1, localValue2)
  local stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6
  stateFlag4 = CMG
  stateFlag4 = stateFlag4.exitHomeDeletionPreview
  stateFlag4()
  stateFlag4 = stateFlag3
  if stateFlag4 then
    stateFlag4 = DeleteEntity
    stateFlag6 = number6
    -- Beginner: Delete a GTA entity.
    stateFlag4(stateFlag6)
  end
  stateFlag4 = CMG
  stateFlag4 = stateFlag4.loadModel
  stateFlag6 = localValue1
  -- Beginner: Request/load a GTA model before spawning or applying it.
  stateFlag4(stateFlag6)
  stateFlag4 = CreateObject
  stateFlag6 = localValue1
  stateFlag7 = 0.0
  text18 = 0.0
  stateFlag9 = 0.0
  number14 = false
  stateFlag10 = false
  cmgOperation6 = false
  -- Beginner: result below is objectEntity.
  stateFlag4 = stateFlag4(stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6)
  number6 = stateFlag4
  stateFlag4 = SetModelAsNoLongerNeeded
  stateFlag6 = localValue1
  stateFlag4(stateFlag6)
  stateFlag4 = FreezeEntityPosition
  stateFlag6 = number6
  stateFlag7 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  stateFlag4(stateFlag6, stateFlag7)
  stateFlag4 = SetEntityDrawOutline
  stateFlag6 = number6
  stateFlag7 = true
  stateFlag4(stateFlag6, stateFlag7)
  stateFlag4 = true
  stateFlag3 = stateFlag4
  workingValue10 = localValue2
end
rageUiOperation2.enterHomePlacementPreview = rageUiOperation3
rageUiOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2
  localValue1 = stateFlag3
  if localValue1 then
    localValue1 = DeleteEntity
    localValue2 = number6
    -- Beginner: Delete a GTA entity.
    localValue1(localValue2)
    localValue1 = 0
    number6 = localValue1
    localValue1 = false
    stateFlag3 = localValue1
    localValue1 = nil
    workingValue10 = localValue1
  end
end
rageUiOperation2.exitHomePlacementPreview = rageUiOperation3
rageUiOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1, localValue2) ===
function rageUiOperation3(localValue1, localValue2)
  local stateFlag4
  stateFlag4 = CMG
  stateFlag4 = stateFlag4.exitHomePlacementPreview
  stateFlag4()
  stateFlag4 = true
  workingValue11 = stateFlag4
  dataCollection7 = localValue1
  workingValue12 = localValue2
end
rageUiOperation2.enterHomeDeletionPreview = rageUiOperation3
rageUiOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, stateFlag4
  localValue1 = workingValue11
  if localValue1 then
    localValue1 = number7
    if 0 ~= localValue1 then
      localValue1 = SetEntityDrawOutline
      localValue2 = number7
      stateFlag4 = false
      localValue1(localValue2, stateFlag4)
    end
    localValue1 = 0
    number7 = localValue1
    localValue1 = nil
    dataCollection7 = localValue1
    localValue1 = nil
    workingValue12 = localValue1
    localValue1 = false
    workingValue11 = localValue1
  end
end
rageUiOperation2.exitHomeDeletionPreview = rageUiOperation3
rageUiOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2
  localValue1 = workingValue11
  return localValue1
end
rageUiOperation2.inHomeDeletionPreview = rageUiOperation3

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position
  localValue1 = GetActiveScreenResolution
  localValue1, localValue2 = localValue1()
  stateFlag4 = localValue2 / localValue1
  stateFlag6 = DrawRect
  stateFlag7 = 0.5
  text18 = 0.5
  stateFlag9 = 0.015 * stateFlag4
  number14 = 0.0025
  stateFlag10 = 200
  cmgOperation6 = 30
  text = 30
  position = 255
  stateFlag6(stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position)
  stateFlag6 = DrawRect
  stateFlag7 = 0.5
  text18 = 0.5
  stateFlag9 = 0.0025 * stateFlag4
  number14 = 0.015
  stateFlag10 = 200
  cmgOperation6 = 30
  text = 30
  position = 255
  stateFlag6(stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, stateFlag4, stateFlag6
  localValue1 = RequestScaleformMovie
  localValue2 = "INSTRUCTIONAL_BUTTONS"
  -- Beginner: result below is scaleformHandle.
  localValue1 = localValue1(localValue2)
  while true do
    localValue2 = HasScaleformMovieLoaded
    stateFlag4 = localValue1
    localValue2 = localValue2(stateFlag4)
    if localValue2 then
      break
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    stateFlag4 = 0
    localValue2(stateFlag4)
  end
  localValue2 = BeginScaleformMovieMethod
  stateFlag4 = localValue1
  stateFlag6 = "CLEAR_ALL"
  localValue2(stateFlag4, stateFlag6)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  stateFlag4 = localValue1
  stateFlag6 = "TOGGLE_MOUSE_BUTTONS"
  localValue2(stateFlag4, stateFlag6)
  localValue2 = ScaleformMovieMethodAddParamInt
  stateFlag4 = 0
  localValue2(stateFlag4)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  stateFlag4 = localValue1
  stateFlag6 = "CREATE_CONTAINER"
  localValue2(stateFlag4, stateFlag6)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1, localValue2) ===
function rageUiOperation4(localValue1, localValue2)
  local stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6, text
  stateFlag4 = pairs
  stateFlag6 = localValue2
  stateFlag4, stateFlag6, stateFlag7, text18 = stateFlag4(stateFlag6)
  for stateFlag9, number14 in stateFlag4, stateFlag6, stateFlag7, text18 do
    stateFlag10 = BeginScaleformMovieMethod
    cmgOperation6 = localValue1
    text = "SET_DATA_SLOT"
    stateFlag10(cmgOperation6, text)
    stateFlag10 = ScaleformMovieMethodAddParamInt
    cmgOperation6 = stateFlag9
    stateFlag10(cmgOperation6)
    stateFlag10 = _ENV
    cmgOperation6 = "ScaleformMovieMethodAddParamPlayerNameString"
    stateFlag10 = stateFlag10[cmgOperation6]
    cmgOperation6 = number14[2]
    stateFlag10(cmgOperation6)
    stateFlag10 = _ENV
    cmgOperation6 = "ScaleformMovieMethodAddParamTextureNameString"
    stateFlag10 = stateFlag10[cmgOperation6]
    cmgOperation6 = number14[1]
    stateFlag10(cmgOperation6)
    stateFlag10 = EndScaleformMovieMethod
    stateFlag10()
  end
end

-- === HELPER FUNCTION (decompiler name: text13; parameters: localValue1) ===
function text13(localValue1)
  local localValue2, stateFlag4, stateFlag6
  localValue2 = BeginScaleformMovieMethod
  stateFlag4 = localValue1
  stateFlag6 = "DRAW_INSTRUCTIONAL_BUTTONS"
  localValue2(stateFlag4, stateFlag6)
  localValue2 = ScaleformMovieMethodAddParamInt
  stateFlag4 = -1
  localValue2(stateFlag4)
  localValue2 = EndScaleformMovieMethod
  localValue2()
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: none) ===
function workingValue20()
  local localValue1, localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6
  localValue1 = rageUiOperation3
  localValue1 = localValue1()
  localValue2 = rageUiOperation4
  stateFlag4 = localValue1
  stateFlag6 = {}
  stateFlag7 = {}
  text18 = "Exit Editor"
  stateFlag9 = "~INPUT_CURSOR_CANCEL~"
  stateFlag7[1] = text18
  stateFlag7[2] = stateFlag9
  text18 = {}
  stateFlag9 = "Rotate Left"
  number14 = "~INPUT_PICKUP~"
  text18[1] = stateFlag9
  text18[2] = number14
  stateFlag9 = {}
  number14 = "Rotate Right"
  stateFlag10 = "~INPUT_COVER~"
  stateFlag9[1] = number14
  stateFlag9[2] = stateFlag10
  number14 = {}
  stateFlag10 = "Place Object"
  cmgOperation6 = "~INPUT_CURSOR_ACCEPT~"
  number14[1] = stateFlag10
  number14[2] = cmgOperation6
  stateFlag6[1] = stateFlag7
  stateFlag6[2] = text18
  stateFlag6[3] = stateFlag9
  stateFlag6[4] = number14
  localValue2(stateFlag4, stateFlag6)
  localValue2 = text13
  stateFlag4 = localValue1
  localValue2(stateFlag4)
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: none) ===
function workingValue21()
  local localValue1, localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14
  localValue1 = rageUiOperation3
  localValue1 = localValue1()
  localValue2 = rageUiOperation4
  stateFlag4 = localValue1
  stateFlag6 = {}
  stateFlag7 = {}
  text18 = "Exit Editor"
  stateFlag9 = "~INPUT_CURSOR_CANCEL~"
  stateFlag7[1] = text18
  stateFlag7[2] = stateFlag9
  text18 = {}
  stateFlag9 = "Delete Object"
  number14 = "~INPUT_CURSOR_ACCEPT~"
  text18[1] = stateFlag9
  text18[2] = number14
  stateFlag6[1] = stateFlag7
  stateFlag6[2] = text18
  localValue2(stateFlag4, stateFlag6)
  localValue2 = text13
  stateFlag4 = localValue1
  localValue2(stateFlag4)
end

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: none) ===
function workingValue22()
  local localValue1, localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position, number, number2, number3, workingValue7, stateFlag2
  localValue1 = stateFlag3
  if not localValue1 then
    localValue1 = workingValue11
    if not localValue1 then
      goto continueAtStep30
    end
  end
  localValue1 = DisableAllControlActions
  localValue2 = 0
  localValue1(localValue2)
  localValue1 = 0
  localValue2 = 6
  stateFlag4 = 1
  for stateFlag6 = localValue1, localValue2, stateFlag4 do
    stateFlag7 = EnableControlAction
    text18 = 0
    stateFlag9 = stateFlag6
    number14 = true
    stateFlag7(text18, stateFlag9, number14)
  end
  localValue1 = 30
  localValue2 = 35
  stateFlag4 = 1
  for stateFlag6 = localValue1, localValue2, stateFlag4 do
    stateFlag7 = EnableControlAction
    text18 = 0
    stateFlag9 = stateFlag6
    number14 = true
    stateFlag7(text18, stateFlag9, number14)
  end
  ::continueAtStep30::
  localValue1 = stateFlag3
  if localValue1 then
    localValue1 = workingValue20
    localValue1()
    localValue1 = drawNativeText
    localValue2 = "~r~PLACEMENT PREVIEW"
    -- Beginner: Draw GTA-style text on screen.
    localValue1(localValue2)
    localValue1 = GetGameplayCamCoord
    localValue1 = localValue1()
    localValue2 = GetGameplayCamRot
    stateFlag4 = 2
    localValue2 = localValue2(stateFlag4)
    stateFlag4 = CMG
    stateFlag4 = stateFlag4.rotationToDirection
    stateFlag6 = localValue2
    stateFlag4 = stateFlag4(stateFlag6)
    stateFlag6 = stateFlag4 * 10.0
    stateFlag6 = localValue1 + stateFlag6
    stateFlag7 = _ENV
    text18 = "StartExpensiveSynchronousShapeTestLosProbe"
    stateFlag7 = stateFlag7[text18]
    text18 = localValue1.x
    stateFlag9 = localValue1.y
    number14 = localValue1.z
    stateFlag10 = stateFlag6.x
    cmgOperation6 = stateFlag6.y
    text = stateFlag6.z
    position = 1
    number = number6
    number2 = 4
    stateFlag7 = stateFlag7(text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position, number, number2)
    text18 = GetShapeTestResult
    stateFlag9 = stateFlag7
    text18, stateFlag9, number14 = text18(stateFlag9)
    if stateFlag9 then
      stateFlag10 = GetModelDimensions
      cmgOperation6 = GetEntityModel
      text = number6
      cmgOperation6, text, position, number, number2, number3, workingValue7, stateFlag2 = cmgOperation6(text)
      stateFlag10 = stateFlag10(cmgOperation6, text, position, number, number2, number3, workingValue7, stateFlag2)
      cmgOperation6 = SetEntityCoordsNoOffset
      text = number6
      position = number14.x
      number = number14.y
      number2 = number14.z
      number3 = math
      number3 = number3.abs
      workingValue7 = stateFlag10.z
      number3 = number3(workingValue7)
      number2 = number2 + number3
      number3 = false
      workingValue7 = false
      stateFlag2 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      cmgOperation6(text, position, number, number2, number3, workingValue7, stateFlag2)
    end
    stateFlag10 = IsDisabledControlPressed
    cmgOperation6 = 0
    text = 38
    stateFlag10 = stateFlag10(cmgOperation6, text)
    if stateFlag10 then
      stateFlag10 = GetEntityRotation
      cmgOperation6 = number6
      text = 2
      stateFlag10 = stateFlag10(cmgOperation6, text)
      cmgOperation6 = SetEntityRotation
      text = number6
      position = stateFlag10.x
      number = stateFlag10.y
      number2 = stateFlag10.z
      number3 = GetFrameTime
      number3 = number3()
      number3 = number3 * 180.0
      number2 = number2 + number3
      number3 = 2
      workingValue7 = false
      cmgOperation6(text, position, number, number2, number3, workingValue7)
    end
    stateFlag10 = IsDisabledControlPressed
    cmgOperation6 = 0
    text = 44
    stateFlag10 = stateFlag10(cmgOperation6, text)
    if stateFlag10 then
      stateFlag10 = GetEntityRotation
      cmgOperation6 = number6
      text = 2
      stateFlag10 = stateFlag10(cmgOperation6, text)
      cmgOperation6 = SetEntityRotation
      text = number6
      position = stateFlag10.x
      number = stateFlag10.y
      number2 = stateFlag10.z
      number3 = GetFrameTime
      number3 = number3()
      number3 = number3 * 180.0
      number2 = number2 - number3
      number3 = 2
      workingValue7 = false
      cmgOperation6(text, position, number, number2, number3, workingValue7)
    end
    stateFlag10 = IsDisabledControlJustPressed
    cmgOperation6 = 0
    text = 237
    stateFlag10 = stateFlag10(cmgOperation6, text)
    if stateFlag10 then
      stateFlag10 = GetEntityCoords
      cmgOperation6 = number6
      text = true
      -- Beginner: result below is entityCoords.
      stateFlag10 = stateFlag10(cmgOperation6, text)
      cmgOperation6 = GetEntityRotation
      text = number6
      position = 2
      cmgOperation6 = cmgOperation6(text, position)
      text = workingValue10
      if text then
        text = workingValue10
        position = stateFlag10
        number = cmgOperation6
        text(position, number)
      end
    end
    stateFlag10 = IsDisabledControlJustPressed
    cmgOperation6 = 0
    text = 238
    stateFlag10 = stateFlag10(cmgOperation6, text)
    if stateFlag10 then
      stateFlag10 = CMG
      stateFlag10 = stateFlag10.exitHomePlacementPreview
      stateFlag10()
    end
  else
    localValue1 = workingValue11
    if localValue1 then
      localValue1 = rageUiOperation2
      localValue1()
      localValue1 = workingValue21
      localValue1()
      localValue1 = drawNativeText
      localValue2 = "~r~DELETION PREVIEW"
      -- Beginner: Draw GTA-style text on screen.
      localValue1(localValue2)
      localValue1 = GetGameplayCamCoord
      localValue1 = localValue1()
      localValue2 = GetGameplayCamRot
      stateFlag4 = 2
      localValue2 = localValue2(stateFlag4)
      stateFlag4 = CMG
      stateFlag4 = stateFlag4.rotationToDirection
      stateFlag6 = localValue2
      stateFlag4 = stateFlag4(stateFlag6)
      stateFlag6 = stateFlag4 * 10.0
      stateFlag6 = localValue1 + stateFlag6
      stateFlag7 = _ENV
      text18 = "StartExpensiveSynchronousShapeTestLosProbe"
      stateFlag7 = stateFlag7[text18]
      text18 = localValue1.x
      stateFlag9 = localValue1.y
      number14 = localValue1.z
      stateFlag10 = stateFlag6.x
      cmgOperation6 = stateFlag6.y
      text = stateFlag6.z
      position = 17
      number = number6
      number2 = 4
      stateFlag7 = stateFlag7(text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position, number, number2)
      text18 = GetShapeTestResult
      stateFlag9 = stateFlag7
      text18, stateFlag9, number14, stateFlag10, cmgOperation6 = text18(stateFlag9)
      if stateFlag9 and 0 ~= cmgOperation6 then
        text = table
        text = text.find
        position = dataCollection7
        number = cmgOperation6
        text = text(position, number)
        if text then
          text = number7
          if 0 ~= text then
            text = SetEntityDrawOutline
            position = number7
            number = false
            text(position, number)
          end
          number7 = cmgOperation6
          text = SetEntityDrawOutline
          position = number7
          number = true
          text(position, number)
      end
      else
        text = number7
        if 0 ~= text then
          text = SetEntityDrawOutline
          position = number7
          number = false
          text(position, number)
          text = 0
          number7 = text
        end
      end
      text = IsDisabledControlJustPressed
      position = 0
      number = 237
      text = text(position, number)
      if text then
        text = number7
        if 0 ~= text then
          text = workingValue12
          if text then
            text = workingValue12
            position = number7
            text(position)
          end
        else
          text = notify
          position = "~r~No object selected."
          -- Beginner: Show a notification to the player.
          text(position)
        end
      end
      text = IsDisabledControlJustPressed
      position = 0
      number = 238
      text = text(position, number)
      if text then
        text = CMG
        text = text.exitHomeDeletionPreview
        text()
      end
    end
  end
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
text15 = workingValue22
text16 = "Home Preview"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(text15, text16)
cmgOperation3 = AddEventHandler
text15 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1) ===
function text16(localValue1)
  local localValue2, stateFlag4
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 == localValue1 then
    localValue2 = stateFlag3
    if localValue2 then
      localValue2 = DeleteEntity
      stateFlag4 = number6
      -- Beginner: Delete a GTA entity.
      localValue2(stateFlag4)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation3(text15, text16)
cmgOperation3 = RegisterNetEvent
text15 = "93679fdb00"
-- Beginner: this function handles network event "93679fdb00".

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1) ===
function text16(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position, number, number2
  dataCollection = localValue1
  localValue2 = [[
~r~Outstanding House Tax~b~

]]
  stateFlag4 = pairs
  stateFlag6 = localValue1
  stateFlag4, stateFlag6, stateFlag7, text18 = stateFlag4(stateFlag6)
  for stateFlag9, number14 in stateFlag4, stateFlag6, stateFlag7, text18 do
    stateFlag10 = print
    cmgOperation6 = string
    cmgOperation6 = cmgOperation6.format
    text = "[Multiple] House tax for %s set to \194\163%s"
    position = stateFlag9
    number = getMoneyStringFormatted
    number2 = number14
    number, number2 = number(number2)
    cmgOperation6, text, position, number, number2 = cmgOperation6(text, position, number, number2)
    stateFlag10(cmgOperation6, text, position, number, number2)
    stateFlag10 = localValue2
    cmgOperation6 = string
    cmgOperation6 = cmgOperation6.format
    text = "\194\163%s @ %s\n"
    position = getMoneyStringFormatted
    number = number14
    position = position(number)
    number = stateFlag9
    cmgOperation6 = cmgOperation6(text, position, number)
    stateFlag10 = stateFlag10 .. cmgOperation6
    localValue2 = stateFlag10
  end
  stateFlag4 = table
  stateFlag4 = stateFlag4.count
  stateFlag6 = localValue1
  -- Beginner: result below is count.
  stateFlag4 = stateFlag4(stateFlag6)
  if 0 == stateFlag4 then
    return
  end
  stateFlag4 = Wait
  stateFlag6 = 10000
  stateFlag4(stateFlag6)
  stateFlag4 = notify
  stateFlag6 = localValue2
  -- Beginner: Show a notification to the player.
  stateFlag4(stateFlag6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "93679fdb00".
cmgOperation3(text15, text16)
cmgOperation3 = RegisterNetEvent
text15 = "fe80dc02ed"
-- Beginner: this function handles network event "fe80dc02ed".

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1) ===
function text16(localValue1)
  local localValue2
  workingValue2 = localValue1
end
cmgOperation3(text15, text16)
cmgOperation3 = exports
text15 = "lbGetHomes"
-- Beginner: this function handles network event "fe80dc02ed".

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1, localValue2) ===
function text16(localValue1, localValue2)
  local stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position
  stateFlag4 = {}
  stateFlag6 = pairs
  stateFlag7 = dataCollection5
  stateFlag6, stateFlag7, text18, stateFlag9 = stateFlag6(stateFlag7)
  for number14 in stateFlag6, stateFlag7, text18, stateFlag9 do
    stateFlag10 = table
    stateFlag10 = stateFlag10.insert
    cmgOperation6 = stateFlag4
    text = {}
    text.label = number14
    text.id = number14
    text.uniqueId = number14
    text.locked = true
    position = {}
    text.keyholders = position
    stateFlag10(cmgOperation6, text)
  end
  stateFlag6 = localValue2
  stateFlag7 = stateFlag4
  stateFlag6(stateFlag7)
end
cmgOperation3(text15, text16)
cmgOperation3 = exports
text15 = "lbRemoveKeyHolder"

-- === HELPER FUNCTION (decompiler name: text16; parameters: none) ===
function text16()
  local localValue1, localValue2, stateFlag4
  localValue1 = exports
  localValue1 = localValue1["lb-phone"]
  localValue2 = localValue1
  localValue1 = localValue1.SendNotification
  stateFlag4 = {}
  stateFlag4.app = "Home"
  stateFlag4.title = "Home"
  stateFlag4.content = "This is not available right now"
  localValue1(localValue2, stateFlag4)
end
cmgOperation3(text15, text16)
cmgOperation3 = exports
text15 = "lbAddKeyholder"

-- === HELPER FUNCTION (decompiler name: text16; parameters: none) ===
function text16()
  local localValue1, localValue2, stateFlag4
  localValue1 = exports
  localValue1 = localValue1["lb-phone"]
  localValue2 = localValue1
  localValue1 = localValue1.SendNotification
  stateFlag4 = {}
  stateFlag4.app = "Home"
  stateFlag4.title = "Home"
  stateFlag4.content = "This is not available right now"
  localValue1(localValue2, stateFlag4)
end
cmgOperation3(text15, text16)
cmgOperation3 = exports
text15 = "lbToggleLocked"

-- === HELPER FUNCTION (decompiler name: text16; parameters: none) ===
function text16()
  local localValue1, localValue2, stateFlag4
  localValue1 = exports
  localValue1 = localValue1["lb-phone"]
  localValue2 = localValue1
  localValue1 = localValue1.SendNotification
  stateFlag4 = {}
  stateFlag4.app = "Home"
  stateFlag4.title = "Home"
  stateFlag4.content = "This is not available right now"
  localValue1(localValue2, stateFlag4)
end
cmgOperation3(text15, text16)
cmgOperation3 = exports
text15 = "lbSetWaypoint"

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1) ===
function text16(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7
  localValue2 = cmgOperation.homes
  stateFlag4 = localValue1.id
  localValue2 = localValue2[stateFlag4]
  localValue2 = localValue2.position
  stateFlag4 = SetNewWaypoint
  stateFlag6 = localValue2.x
  stateFlag7 = localValue2.y
  stateFlag4(stateFlag6, stateFlag7)
end
cmgOperation3(text15, text16)
cmgOperation3 = RegisterNetEvent
text15 = "7da2e8ef8a"
-- Beginner: this function handles network event "7da2e8ef8a".

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1) ===
function text16(localValue1)
  local localValue2, stateFlag4, stateFlag6
  localValue2 = table
  localValue2 = localValue2.sort
  stateFlag4 = localValue1
  -- Beginner: this function handles network event "7da2e8ef8a".

  -- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: localValue12, localValue22) ===
  function stateFlag6(localValue12, localValue22)
    local localValue3, localValue4
    localValue3 = localValue12.id
    localValue4 = localValue22.id
    localValue3 = localValue3 > localValue4
    return localValue3
  end
  localValue2(stateFlag4, stateFlag6)
  dataCollection2 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7da2e8ef8a".
cmgOperation3(text15, text16)
cmgOperation3 = RegisterNetEvent
text15 = "d0cba285eb"
-- Beginner: this function handles network event "d0cba285eb".

-- === HELPER FUNCTION (decompiler name: text16; parameters: none) ===
function text16()
  local localValue1, localValue2
  localValue1 = RageUI
  localValue1 = localValue1.IsAnyMenuOfTypeVisible
  localValue2 = "cmghouses"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.CloseAll
    localValue1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d0cba285eb".
cmgOperation3(text15, text16)
cmgOperation3 = RegisterNetEvent
text15 = "91b7bc09c9"
-- Beginner: this function handles network event "91b7bc09c9".

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1) ===
function text16(localValue1)
  local localValue2
  dataCollection8 = localValue1
end
cmgOperation3(text15, text16)
-- Beginner: this function handles network event "91b7bc09c9".

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2
  localValue1 = notify
  localValue2 = "~y~You have outstanding debt on house payment plans. Please ensure you make weekly payments."
  -- Beginner: Show a notification to the player.
  localValue1(localValue2)
end
text15 = RegisterNetEvent
text16 = "d7b6c868d9"
-- Beginner: this function handles network event "d7b6c868d9".

-- === HELPER FUNCTION (decompiler name: dataCollection12; parameters: localValue1, localValue2) ===
function dataCollection12(localValue1, localValue2)
  local stateFlag4, stateFlag6, stateFlag7
  dataCollection10 = localValue1
  if localValue2 then
    stateFlag4 = SetTimeout
    stateFlag6 = 10000
    stateFlag7 = cmgOperation3
    stateFlag4(stateFlag6, stateFlag7)
    stateFlag4 = SetTimeout
    stateFlag6 = 30000
    stateFlag7 = cmgOperation3
    stateFlag4(stateFlag6, stateFlag7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d7b6c868d9".
text15(text16, dataCollection12)
text15 = RegisterNetEvent
text16 = "db9c26653f"
-- Beginner: this function handles network event "db9c26653f".

-- === HELPER FUNCTION (decompiler name: dataCollection12; parameters: localValue1) ===
function dataCollection12(localValue1)
  local localValue2
  localValue2 = workingValue14
  if localValue2 then
    localValue2 = workingValue14.houseName
    if localValue2 then
      localValue2 = localValue1.houseName
      if not localValue2 then
        localValue2 = workingValue14.houseName
        localValue1.houseName = localValue2
      end
    end
  end
  workingValue14 = localValue1
end
text15(text16, dataCollection12)
text15 = RegisterNetEvent
text16 = "7aaa8e5a9f"
-- Beginner: this function handles network event "7aaa8e5a9f".

-- === HELPER FUNCTION (decompiler name: dataCollection12; parameters: localValue1) ===
function dataCollection12(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7, text18
  workingValue15 = localValue1
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  stateFlag4 = RMenu
  stateFlag6 = stateFlag4
  stateFlag4 = stateFlag4.Get
  stateFlag7 = "cmghouses"
  text18 = "paymentplanoffer"
  -- Beginner: result below is menu.
  stateFlag4 = stateFlag4(stateFlag6, stateFlag7, text18)
  stateFlag6 = true
  localValue2(stateFlag4, stateFlag6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7aaa8e5a9f".
text15(text16, dataCollection12)
text15 = CMG
text15 = text15.registerDevMenuState
text16 = "Home"
dataCollection12 = {}
dataCollection12.boundsEnabled = false
text15 = text15(text16, dataCollection12)
text16 = CMG
text16 = text16.registerDevMenuItems
dataCollection12 = "Home"

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, stateFlag4, stateFlag6, stateFlag7, text18
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Bounds Enabled"
  stateFlag4 = ""
  stateFlag6 = text15.boundsEnabled
  stateFlag7 = {}

  -- === HELPER FUNCTION (decompiler name: text18; parameters: localValue12, localValue22, localValue3, localValue4) ===
  function text18(localValue12, localValue22, localValue3, localValue4)
    text15.boundsEnabled = localValue4
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, stateFlag4, stateFlag6, stateFlag7, text18)
end
text16(dataCollection12, cmgOperation4)

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1) ===
function text16(localValue1)
  local localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position, number, number2, number3
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  stateFlag4 = localValue1.bounds
  stateFlag4 = stateFlag4[1]
  stateFlag6 = localValue1.bounds
  stateFlag6 = stateFlag6[2]
  stateFlag7 = IsEntityInArea
  text18 = localValue2
  stateFlag9 = stateFlag4.x
  number14 = stateFlag4.y
  stateFlag10 = stateFlag4.z
  cmgOperation6 = stateFlag6.x
  text = stateFlag6.y
  position = stateFlag6.z
  number = false
  number2 = true
  number3 = 0
  stateFlag7 = stateFlag7(text18, stateFlag9, number14, stateFlag10, cmgOperation6, text, position, number, number2, number3)
  text18 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  text18 = text18()
  stateFlag9 = number5
  text18 = text18 - stateFlag9
  stateFlag9 = text15.boundsEnabled
  if stateFlag9 then
    stateFlag9 = CMG
    stateFlag9 = stateFlag9.drawDebugText
    number14 = "---------- House Bounds ----------"
    stateFlag9(number14)
    stateFlag9 = CMG
    stateFlag9 = stateFlag9.drawDebugText
    number14 = "In Bounds: %s"
    if stateFlag7 then
      stateFlag10 = "Yes"
      if stateFlag10 then
        goto continueAtStep40
      end
    end
    stateFlag10 = "No"
    ::continueAtStep40::
    stateFlag9(number14, stateFlag10)
    stateFlag9 = CMG
    stateFlag9 = stateFlag9.drawDebugText
    number14 = "Time Since Entering: %s"
    stateFlag10 = text18
    stateFlag9(number14, stateFlag10)
  end
  if not stateFlag7 then
    stateFlag9 = 5000
    if text18 > stateFlag9 then
      stateFlag9 = notify
      number14 = "~r~You have automatically left the house due to going too far away."
      -- Beginner: Show a notification to the player.
      stateFlag9(number14)
      stateFlag9 = CMG
      stateFlag9 = stateFlag9.leaveActiveHouse
      stateFlag9()
    end
  end
end

-- === HELPER FUNCTION (decompiler name: dataCollection12; parameters: none) ===
function dataCollection12()
  local localValue1, localValue2, stateFlag4
  localValue1 = workingValue15
  if localValue1 then
    localValue1 = workingValue15.sellerUserId
    localValue2 = CMG
    localValue2 = localValue2.isUserOnlineAndNearby
    stateFlag4 = localValue1
    localValue2 = localValue2(stateFlag4)
    if not localValue2 then
      localValue2 = nil
      workingValue15 = localValue2
      localValue2 = TriggerServerEvent
      stateFlag4 = "38dfab8a29"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "38dfab8a29".
      localValue2(stateFlag4)
      localValue2 = RageUI
      localValue2 = localValue2.CloseAll
      localValue2()
      return
    end
  end
  localValue1 = workingValue8
  if localValue1 then
    localValue1 = cmgOperation.homes
    localValue2 = workingValue8
    localValue1 = localValue1[localValue2]
    if localValue1 then
      localValue2 = text16
      stateFlag4 = localValue1
      localValue2(stateFlag4)
    end
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
text17 = dataCollection12
cmgOperation5 = "Home Payment Plan"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(text17, cmgOperation5)
cmgOperation4 = RegisterNetEvent
text17 = "e417f3e111"
-- Beginner: this function handles network event "e417f3e111".

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1, localValue2) ===
function cmgOperation5(localValue1, localValue2)
  dataCollection11.income = localValue1
  dataCollection11.outcome = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e417f3e111".
cmgOperation4(text17, cmgOperation5)
cmgOperation4 = RegisterNetEvent
text17 = "1cf3b7e94a"
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.leaveActiveHouse
cmgOperation4(text17, cmgOperation5)
cmgOperation4 = RegisterNetEvent
text17 = "5e9b531d09"
-- Beginner: this function handles network event "5e9b531d09".

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2
  workingValue8 = localValue1
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  number5 = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5e9b531d09".
cmgOperation4(text17, cmgOperation5)
cmgOperation4 = RegisterNetEvent
text17 = "2b274e7fa8"
-- Beginner: this function handles network event "2b274e7fa8".

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2
  localValue1 = nil
  workingValue8 = localValue1
end
cmgOperation4(text17, cmgOperation5)
cmgOperation4 = CMG
-- Beginner: this function handles network event "2b274e7fa8".

-- === HELPER FUNCTION (decompiler name: text17; parameters: none) ===
function text17()
  local localValue1, localValue2, stateFlag4, stateFlag6, stateFlag7, text18, stateFlag9, number14
  localValue1 = 0
  localValue2 = pairs
  stateFlag4 = dataCollection
  localValue2, stateFlag4, stateFlag6, stateFlag7 = localValue2(stateFlag4)
  for text18, stateFlag9 in localValue2, stateFlag4, stateFlag6, stateFlag7 do
    localValue1 = localValue1 + stateFlag9
  end
  return localValue1
end
cmgOperation4.getOustandingHouseTaxAmount = text17
cmgOperation4 = RegisterNetEvent
text17 = "85fff2fa8b"
-- Beginner: this function handles network event "85fff2fa8b".

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1, localValue2) ===
function cmgOperation5(localValue1, localValue2)
  local stateFlag4
  stateFlag4 = workingValue
  if stateFlag4 == localValue1 then
    number4 = localValue2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "85fff2fa8b".
cmgOperation4(text17, cmgOperation5)
