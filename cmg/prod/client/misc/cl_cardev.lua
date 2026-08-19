--[[
    LEVEL 1 BEGINNER GUIDE — Cardev
    ====================================

    File: cmg/prod/client/misc/cl_cardev.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Cardev feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 95
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
local cmgOperation, text14, text15, text16, rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text14 = "cfg/cfg_garages"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text14)
text14 = RMenu
text14 = text14.Add
text15 = "cardev"
text16 = "mainmenu"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text20 = ""
text29 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = "cmg_adminui"
text6 = "cmg_adminui"
rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = rageUiOperation(text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6)
text14(text15, text16, rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5)
text14 = RMenu
text15 = text14
text14 = text14.Get
text16 = "cardev"
rageUiOperation = "mainmenu"
-- Beginner: result below is menu.
text14 = text14(text15, text16, rageUiOperation)
text15 = text14
text14 = text14.SetSubtitle
text16 = "~b~Car Dev Menu"
text14(text15, text16)
text14 = RMenu
text14 = text14.Add
text15 = "cardev"
text16 = "vehiclemods"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text20 = RMenu
text29 = text20
text20 = text20.Get
rageUiOperation3 = "cardev"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text20 = text20(text29, rageUiOperation3, rageUiOperation4)
text29 = ""
rageUiOperation3 = "~b~Vehicle Mods"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = rageUiOperation5()
rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = rageUiOperation(text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5)
text14(text15, text16, rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5)
text14 = RMenu
text14 = text14.Add
text15 = "cardev"
text16 = "vehiclemodindexes"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text20 = RMenu
text29 = text20
text20 = text20.Get
rageUiOperation3 = "cardev"
rageUiOperation4 = "vehiclemods"
-- Beginner: result below is menu.
text20 = text20(text29, rageUiOperation3, rageUiOperation4)
text29 = ""
rageUiOperation3 = "~b~Vehicle Mod Indexes"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = rageUiOperation5()
rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = rageUiOperation(text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5)
text14(text15, text16, rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5)
text14 = RMenu
text14 = text14.Add
text15 = "cardev"
text16 = "extras"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text20 = RMenu
text29 = text20
text20 = text20.Get
rageUiOperation3 = "cardev"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text20 = text20(text29, rageUiOperation3, rageUiOperation4)
text29 = ""
rageUiOperation3 = "~b~Extras"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = rageUiOperation5()
rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = rageUiOperation(text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5)
text14(text15, text16, rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5)
text14 = RMenu
text14 = text14.Add
text15 = "cardev"
text16 = "colours"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text20 = RMenu
text29 = text20
text20 = text20.Get
rageUiOperation3 = "cardev"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text20 = text20(text29, rageUiOperation3, rageUiOperation4)
text29 = ""
rageUiOperation3 = "~b~Colours"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = rageUiOperation5()
rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = rageUiOperation(text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5)
text14(text15, text16, rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5)
text14 = RMenu
text14 = text14.Add
text15 = "cardev"
text16 = "automatedhandling"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text20 = RMenu
text29 = text20
text20 = text20.Get
rageUiOperation3 = "cardev"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text20 = text20(text29, rageUiOperation3, rageUiOperation4)
text29 = ""
rageUiOperation3 = "~b~Automated Handling"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = rageUiOperation5()
rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = rageUiOperation(text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5)
text14(text15, text16, rageUiOperation, text20, text29, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5)
text14 = false
text15 = {}
text16 = "speed"
rageUiOperation = "drift"
text20 = "handling"
text29 = "city"
rageUiOperation3 = "airport"
rageUiOperation4 = "track"
text15[1] = text16
text15[2] = rageUiOperation
text15[3] = text20
text15[4] = text29
text15[5] = rageUiOperation3
text15[6] = rageUiOperation4
text16 = {}
rageUiOperation = vector3
text20 = 2370.8
text29 = 2856.58
rageUiOperation3 = 40.46
rageUiOperation = rageUiOperation(text20, text29, rageUiOperation3)
text20 = vector3
text29 = 974.58
rageUiOperation3 = -3006.6
rageUiOperation4 = 5.9
text20 = text20(text29, rageUiOperation3, rageUiOperation4)
text29 = vector3
rageUiOperation3 = 1894.57
rageUiOperation4 = 3823.71
rageUiOperation5 = 31.98
text29 = text29(rageUiOperation3, rageUiOperation4, rageUiOperation5)
rageUiOperation3 = vector3
rageUiOperation4 = -482.63
rageUiOperation5 = -664.24
text6 = 32.74
rageUiOperation3 = rageUiOperation3(rageUiOperation4, rageUiOperation5, text6)
rageUiOperation4 = vector3
rageUiOperation5 = -1728.25
text6 = -2894.99
text7 = 13.94
rageUiOperation4 = rageUiOperation4(rageUiOperation5, text6, text7)
rageUiOperation5 = vector3
text6 = 2120.2548828125
text7 = 2433.7978515625
text9 = 152.661499023438
rageUiOperation5, text6, text7, text9, stateFlag5, stateFlag6, cmgOperation2, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection6, dataCollection7, dataCollection8, iterator, dataCollection9, dataCollection10, dataCollection11, dataCollection12, tableHelper, dataCollection13, dataCollection14, createVector3, createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = rageUiOperation5(text6, text7, text9)
text16[1] = rageUiOperation
text16[2] = text20
text16[3] = text29
text16[4] = rageUiOperation3
text16[5] = rageUiOperation4
text16[6] = rageUiOperation5
text16[7] = text6
text16[8] = text7
text16[9] = text9
text16[10] = stateFlag5
text16[11] = stateFlag6
text16[12] = cmgOperation2
text16[13] = dataCollection
text16[14] = dataCollection2
text16[15] = dataCollection3
text16[16] = dataCollection4
text16[17] = dataCollection6
text16[18] = dataCollection7
text16[19] = dataCollection8
text16[20] = iterator
text16[21] = dataCollection9
text16[22] = dataCollection10
text16[23] = dataCollection11
text16[24] = dataCollection12
text16[25] = tableHelper
text16[26] = dataCollection13
text16[27] = dataCollection14
text16[28] = createVector3
text16[29] = createVector32
text16[30] = dataCollection15
text16[31] = dataCollection16
text16[32] = dataCollection17
text16[33] = dataCollection18
text16[34] = dataCollection19
text16[35] = dataCollection20
text16[36] = tableHelper2
text16[37] = dataCollection21
text16[38] = dataCollection22
text16[39] = createVector33
text16[40] = dataCollection23
text16[41] = dataCollection24
text16[42] = dataCollection25
text16[43] = dataCollection26
text16[44] = dataCollection27
text16[45] = dataCollection28
text16[46] = dataCollection29
text16[47] = dataCollection30
text16[48] = dataCollection31
text16[49] = dataCollection32
text16[50] = dataCollection33
text16[51] = dataCollection34
text16[52] = dataCollection35
text16[53] = dataCollection36
text16[54] = dataCollection37
text16[55] = rageUiOperation2
text16[56] = dataCollection38
text16[57] = dataCollection39
text16[58] = dataCollection40
text16[59] = dataCollection41
text16[60] = text22
text16[61] = text23
text16[62] = text24
text16[63] = text25
text16[64] = text26
text16[65] = text27
text16[66] = text28
text16[67] = text30
text16[68] = text31
text16[69] = text32
text16[70] = text33
text16[71] = text34
text16[72] = text35
text16[73] = text36
text16[74] = text37
text16[75] = text38
text16[76] = text39
text16[77] = text40
text16[78] = text41
text16[79] = text42
text16[80] = text43
text16[81] = text44
text16[82] = text45
text16[83] = text46
text16[84] = text47
text16[85] = text48
text16[86] = text49
text16[87] = text50
text16[88] = text51
text16[89] = text52
text16[90] = text53
text16[91] = text54
text16[92] = text55
text16[93] = text56
text16[94] = text57
text16[95] = text58
text16[96] = text59
text16[97] = text
text16[98] = text2
text16[99] = text3
text16[100] = text4
text16[101] = text5
rageUiOperation = 1
text20 = {}
text29 = "0%"
rageUiOperation3 = "10%"
rageUiOperation4 = "20%"
rageUiOperation5 = "30%"
text6 = "40%"
text7 = "50%"
text9 = "60%"
stateFlag5 = "70%"
stateFlag6 = "80%"
cmgOperation2 = "90%"
dataCollection = "100%"
text20[1] = text29
text20[2] = rageUiOperation3
text20[3] = rageUiOperation4
text20[4] = rageUiOperation5
text20[5] = text6
text20[6] = text7
text20[7] = text9
text20[8] = stateFlag5
text20[9] = stateFlag6
text20[10] = cmgOperation2
text20[11] = dataCollection
text29 = {}
rageUiOperation3 = 0.0
rageUiOperation4 = 0.1
rageUiOperation5 = 0.2
text6 = 0.3
text7 = 0.4
text9 = 0.5
stateFlag5 = 0.6
stateFlag6 = 0.7
cmgOperation2 = 0.8
dataCollection = 0.9
dataCollection2 = 1.0
text29[1] = rageUiOperation3
text29[2] = rageUiOperation4
text29[3] = rageUiOperation5
text29[4] = text6
text29[5] = text7
text29[6] = text9
text29[7] = stateFlag5
text29[8] = stateFlag6
text29[9] = cmgOperation2
text29[10] = dataCollection
text29[11] = dataCollection2
rageUiOperation3 = 1
rageUiOperation4 = 1
rageUiOperation5 = {}
text6 = false
text7 = false
text9 = {}
stateFlag5 = true
stateFlag6 = false
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1) ===
function dataCollection(localValue1)
  local localValue2
  localValue2 = rageUiOperation5
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = true
    if localValue2 then
      goto continueAtStep9
    end
  end
  localValue2 = false
  ::continueAtStep9::
  return localValue2
end
cmgOperation2.isVehicleCarDevDamageDisabled = dataCollection
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
function dataCollection()
  local localValue1, localValue2
  localValue1 = text14
  if localValue1 then
    localValue1 = stateFlag6
  end
  return localValue1
end
cmgOperation2.hasCarDevDisabledSpeedCaps = dataCollection
cmgOperation2 = {}
cmgOperation2[0] = "VMT_SPOILER"
cmgOperation2[1] = "VMT_BUMPER_F"
cmgOperation2[2] = "VMT_BUMPER_R"
cmgOperation2[3] = "VMT_SKIRT"
cmgOperation2[4] = "VMT_EXHAUST"
cmgOperation2[5] = "VMT_CHASSIS"
cmgOperation2[6] = "VMT_GRILL"
cmgOperation2[7] = "VMT_BONNET"
cmgOperation2[8] = "VMT_WING_L"
cmgOperation2[9] = "VMT_WING_R"
cmgOperation2[10] = "VMT_ROOF"
cmgOperation2[11] = "VMT_ENGINE"
cmgOperation2[12] = "VMT_BRAKES"
cmgOperation2[13] = "VMT_GEARBOX"
cmgOperation2[14] = "VMT_HORN"
cmgOperation2[15] = "VMT_SUSPENSION"
cmgOperation2[16] = "VMT_ARMOUR"
cmgOperation2[17] = "VMT_NITROUS"
cmgOperation2[18] = "VMT_TURBO"
cmgOperation2[19] = "VMT_SUBWOOFER"
cmgOperation2[20] = "VMT_TYRE_SMOKE"
cmgOperation2[21] = "VMT_HYDRAULICS"
cmgOperation2[22] = "VMT_XENON_LIGHTS"
cmgOperation2[23] = "VMT_WHEELS"
cmgOperation2[24] = "VMT_WHEELS_REAR_OR_HYDRAULICS"
cmgOperation2[25] = "VMT_PLTHOLDER"
cmgOperation2[26] = "VMT_PLTVANITY"
cmgOperation2[27] = "VMT_INTERIOR1"
cmgOperation2[28] = "VMT_INTERIOR2"
cmgOperation2[29] = "VMT_INTERIOR3"
cmgOperation2[30] = "VMT_INTERIOR4"
cmgOperation2[31] = "VMT_INTERIOR5"
cmgOperation2[32] = "VMT_SEATS"
cmgOperation2[33] = "VMT_STEERING"
cmgOperation2[34] = "VMT_KNOB"
cmgOperation2[35] = "VMT_PLAQUE"
cmgOperation2[36] = "VMT_ICE"
cmgOperation2[37] = "VMT_TRUNK"
cmgOperation2[38] = "VMT_HYDRO"
cmgOperation2[39] = "VMT_ENGINEBAY1"
cmgOperation2[40] = "VMT_ENGINEBAY2"
cmgOperation2[41] = "VMT_ENGINEBAY3"
cmgOperation2[42] = "VMT_CHASSIS2"
cmgOperation2[43] = "VMT_CHASSIS3"
cmgOperation2[44] = "VMT_CHASSIS4"
cmgOperation2[45] = "VMT_CHASSIS5"
cmgOperation2[46] = "VMT_DOOR_L"
cmgOperation2[47] = "VMT_DOOR_R"
cmgOperation2[48] = "VMT_LIVERY_MOD"
cmgOperation2[49] = "VMT_LIGHTBAR"
dataCollection = {}
dataCollection2 = {}
dataCollection2.name = "fMass"
dataCollection2.type = "float"
dataCollection3 = {}
dataCollection3.name = "fInitialDragCoeff"
dataCollection3.type = "float"
dataCollection4 = {}
dataCollection4.name = "fDownforceModifier"
dataCollection4.type = "float"
dataCollection6 = {}
dataCollection6.name = "fPercentSubmerged"
dataCollection6.type = "float"
dataCollection7 = {}
dataCollection7.name = "vecCentreOfMassOffset"
dataCollection7.type = "vector"
dataCollection8 = {}
dataCollection8.name = "vecInertiaMultiplier"
dataCollection8.type = "vector"
iterator = {}
iterator.name = "fDriveBiasFront"
iterator.type = "float"
dataCollection9 = {}
dataCollection9.name = "nInitialDriveGears"
dataCollection9.type = "integer"
dataCollection10 = {}
dataCollection10.name = "fInitialDriveForce"
dataCollection10.type = "float"
dataCollection11 = {}
dataCollection11.name = "fDriveInertia"
dataCollection11.type = "float"
dataCollection12 = {}
dataCollection12.name = "fClutchChangeRateScaleUpShift"
dataCollection12.type = "float"
tableHelper = {}
tableHelper.name = "fClutchChangeRateScaleDownShift"
tableHelper.type = "float"
dataCollection13 = {}
dataCollection13.name = "fInitialDriveMaxFlatVel"
dataCollection13.type = "float"
dataCollection14 = {}
dataCollection14.name = "fBrakeForce"
dataCollection14.type = "float"
createVector3 = {}
createVector3.name = "fBrakeBiasFront"
createVector3.type = "float"
createVector32 = {}
createVector32.name = "fHandBrakeForce"
createVector32.type = "float"
dataCollection15 = {}
dataCollection15.name = "fSteeringLock"
dataCollection15.type = "float"
dataCollection16 = {}
dataCollection16.name = "fTractionCurveMax"
dataCollection16.type = "float"
dataCollection17 = {}
dataCollection17.name = "fTractionCurveMin"
dataCollection17.type = "float"
dataCollection18 = {}
dataCollection18.name = "fTractionCurveLateral"
dataCollection18.type = "float"
dataCollection19 = {}
dataCollection19.name = "fTractionSpringDeltaMax"
dataCollection19.type = "float"
dataCollection20 = {}
dataCollection20.name = "fLowSpeedTractionLossMult"
dataCollection20.type = "float"
tableHelper2 = {}
tableHelper2.name = "fCamberStiffnesss"
tableHelper2.type = "float"
dataCollection21 = {}
dataCollection21.name = "fTractionBiasFront"
dataCollection21.type = "float"
dataCollection22 = {}
dataCollection22.name = "fTractionLossMult"
dataCollection22.type = "float"
createVector33 = {}
createVector33.name = "fSuspensionForce"
createVector33.type = "float"
dataCollection23 = {}
dataCollection23.name = "fSuspensionCompDamp"
dataCollection23.type = "float"
dataCollection24 = {}
dataCollection24.name = "fSuspensionReboundDamp"
dataCollection24.type = "float"
dataCollection25 = {}
dataCollection25.name = "fSuspensionUpperLimit"
dataCollection25.type = "float"
dataCollection26 = {}
dataCollection26.name = "fSuspensionLowerLimit"
dataCollection26.type = "float"
dataCollection27 = {}
dataCollection27.name = "fSuspensionRaise"
dataCollection27.type = "float"
dataCollection28 = {}
dataCollection28.name = "fSuspensionBiasFront"
dataCollection28.type = "float"
dataCollection29 = {}
dataCollection29.name = "fAntiRollBarForce"
dataCollection29.type = "float"
dataCollection30 = {}
dataCollection30.name = "fAntiRollBarBiasFront"
dataCollection30.type = "float"
dataCollection31 = {}
dataCollection31.name = "fRollCentreHeightFront"
dataCollection31.type = "float"
dataCollection32 = {}
dataCollection32.name = "fRollCentreHeightRear"
dataCollection32.type = "float"
dataCollection33 = {}
dataCollection33.name = "fCollisionDamageMult"
dataCollection33.type = "float"
dataCollection34 = {}
dataCollection34.name = "fWeaponDamageMult"
dataCollection34.type = "float"
dataCollection35 = {}
dataCollection35.name = "fDeformationDamageMult"
dataCollection35.type = "float"
dataCollection36 = {}
dataCollection36.name = "fEngineDamageMult"
dataCollection36.type = "float"
dataCollection37 = {}
dataCollection37.name = "fPetrolTankVolume"
dataCollection37.type = "float"
rageUiOperation2 = {}
rageUiOperation2.name = "fOilVolume"
rageUiOperation2.type = "float"
dataCollection38 = {}
dataCollection38.name = "fSeatOffsetDistX"
dataCollection38.type = "float"
dataCollection39 = {}
dataCollection39.name = "fSeatOffsetDistY"
dataCollection39.type = "float"
dataCollection40 = {}
dataCollection40.name = "fSeatOffsetDistZ"
dataCollection40.type = "float"
dataCollection41 = {}
dataCollection41.name = "nMonetaryValue"
dataCollection41.type = "integer"
dataCollection[1] = dataCollection2
dataCollection[2] = dataCollection3
dataCollection[3] = dataCollection4
dataCollection[4] = dataCollection6
dataCollection[5] = dataCollection7
dataCollection[6] = dataCollection8
dataCollection[7] = iterator
dataCollection[8] = dataCollection9
dataCollection[9] = dataCollection10
dataCollection[10] = dataCollection11
dataCollection[11] = dataCollection12
dataCollection[12] = tableHelper
dataCollection[13] = dataCollection13
dataCollection[14] = dataCollection14
dataCollection[15] = createVector3
dataCollection[16] = createVector32
dataCollection[17] = dataCollection15
dataCollection[18] = dataCollection16
dataCollection[19] = dataCollection17
dataCollection[20] = dataCollection18
dataCollection[21] = dataCollection19
dataCollection[22] = dataCollection20
dataCollection[23] = tableHelper2
dataCollection[24] = dataCollection21
dataCollection[25] = dataCollection22
dataCollection[26] = createVector33
dataCollection[27] = dataCollection23
dataCollection[28] = dataCollection24
dataCollection[29] = dataCollection25
dataCollection[30] = dataCollection26
dataCollection[31] = dataCollection27
dataCollection[32] = dataCollection28
dataCollection[33] = dataCollection29
dataCollection[34] = dataCollection30
dataCollection[35] = dataCollection31
dataCollection[36] = dataCollection32
dataCollection[37] = dataCollection33
dataCollection[38] = dataCollection34
dataCollection[39] = dataCollection35
dataCollection[40] = dataCollection36
dataCollection[41] = dataCollection37
dataCollection[42] = rageUiOperation2
dataCollection[43] = dataCollection38
dataCollection[44] = dataCollection39
dataCollection[45] = dataCollection40
dataCollection[46] = dataCollection41
dataCollection2 = {}
dataCollection3 = {}
dataCollection3.fMass = 1600.0
dataCollection3.fInitialDragCoeff = 2.0
dataCollection3.fInitialDriveForce = 0.5
dataCollection3.fInitialDriveMaxFlatVel = 400.0
dataCollection3.fBrakeForce = 1.5
dataCollection3.fHandBrakeForce = 1.5
dataCollection3.fCollisionDamageMult = 0.8
dataCollection3.fWeaponDamageMult = 1.0
dataCollection3.fDeformationDamageMult = 0.8
dataCollection3.fEngineDamageMult = 1.0
dataCollection2["Super Sport"] = dataCollection3
dataCollection3 = {}
dataCollection3.fMass = 1700.0
dataCollection3.fInitialDragCoeff = 1.8
dataCollection3.fInitialDriveForce = 0.45
dataCollection3.fInitialDriveMaxFlatVel = 400.0
dataCollection3.fBrakeForce = 1.5
dataCollection3.fHandBrakeForce = 1.5
dataCollection3.fCollisionDamageMult = 0.7
dataCollection3.fWeaponDamageMult = 1.0
dataCollection3.fDeformationDamageMult = 0.7
dataCollection3.fEngineDamageMult = 1.0
dataCollection2["Police Sport"] = dataCollection3
dataCollection3 = {}
dataCollection3.fMass = 1700.0
dataCollection3.fInitialDragCoeff = 4.2
dataCollection3.fInitialDriveForce = 0.45
dataCollection3.fInitialDriveMaxFlatVel = 350.0
dataCollection3.fBrakeForce = 1.5
dataCollection3.fHandBrakeForce = 1.5
dataCollection3.fCollisionDamageMult = 0.7
dataCollection3.fWeaponDamageMult = 1.0
dataCollection3.fDeformationDamageMult = 0.7
dataCollection3.fEngineDamageMult = 1.0
dataCollection2.Sport = dataCollection3
dataCollection3 = {}
dataCollection3.fMass = 1800.0
dataCollection3.fInitialDragCoeff = 4.2
dataCollection3.fInitialDriveForce = 0.4
dataCollection3.fInitialDriveMaxFlatVel = 300.0
dataCollection3.fBrakeForce = 1.5
dataCollection3.fHandBrakeForce = 1.5
dataCollection3.fCollisionDamageMult = 0.6
dataCollection3.fWeaponDamageMult = 1.0
dataCollection3.fDeformationDamageMult = 0.6
dataCollection3.fEngineDamageMult = 1.0
dataCollection2.SUV = dataCollection3
dataCollection3 = {}
dataCollection3.fMass = 1800.0
dataCollection3.fInitialDragCoeff = 3.0
dataCollection3.fInitialDriveForce = 0.3
dataCollection3.fInitialDriveMaxFlatVel = 300.0
dataCollection3.fBrakeForce = 1.5
dataCollection3.fHandBrakeForce = 1.5
dataCollection3.fCollisionDamageMult = 0.5
dataCollection3.fWeaponDamageMult = 1.0
dataCollection3.fDeformationDamageMult = 0.5
dataCollection3.fEngineDamageMult = 1.0
dataCollection2.Offroader = dataCollection3
dataCollection3 = {}
dataCollection3.fMass = 1800.0
dataCollection3.fInitialDragCoeff = 5.0
dataCollection3.fInitialDriveForce = 0.375
dataCollection3.fInitialDriveMaxFlatVel = 320.0
dataCollection3.fBrakeForce = 1.5
dataCollection3.fHandBrakeForce = 1.5
dataCollection3.fCollisionDamageMult = 0.6
dataCollection3.fWeaponDamageMult = 1.0
dataCollection3.fDeformationDamageMult = 0.6
dataCollection3.fEngineDamageMult = 1.0
dataCollection3.fSuspensionForce = 3.0
dataCollection3.fSuspensionCompDamp = 1.5
dataCollection3.fSuspensionReboundDamp = 1.5
dataCollection3.fSuspensionUpperLimit = 0.1
dataCollection3.fSuspensionLowerLimit = -0.1
dataCollection2["300KG"] = dataCollection3
dataCollection3 = {}
dataCollection4 = {}
dataCollection4.fMass = 1400.0
dataCollection4.fInitialDragCoeff = 7.0
dataCollection4.fInitialDriveForce = 0.4
dataCollection4.fInitialDriveMaxFlatVel = 290.0
dataCollection4.fDriveInertia = 1.0
dataCollection4.fClutchChangeRateScaleUpShift = 6.0
dataCollection4.fClutchChangeRateScaleDownShift = 6.0
dataCollection4.fBrakeForce = 1.2
dataCollection4.fHandBrakeForce = 0.8
dataCollection4.fCollisionDamageMult = 0.8
dataCollection4.fWeaponDamageMult = 1.0
dataCollection4.fDeformationDamageMult = 0.8
dataCollection4.fEngineDamageMult = 1.0
dataCollection4.fSuspensionForce = 3.0
dataCollection4.fSuspensionCompDamp = 1.5
dataCollection4.fSuspensionReboundDamp = 1.5
dataCollection4.fSuspensionUpperLimit = 0.1
dataCollection4.fSuspensionLowerLimit = -0.1
dataCollection4.fTractionBiasFront = 0.5
dataCollection4.fSteeringLock = 40.0
dataCollection4.fTractionCurveMax = 3.5
dataCollection4.fTractionCurveMin = 3.5
dataCollection4.fTractionCurveLateral = 22.5
dataCollection4.fTractionSpringDeltaMax = 0.15
dataCollection4.fTractionLossMult = 1.0
dataCollection3.Super = dataCollection4
dataCollection4 = {}
dataCollection4.fMass = 1500.0
dataCollection4.fInitialDragCoeff = 7.5
dataCollection4.fInitialDriveForce = 0.35
dataCollection4.fInitialDriveMaxFlatVel = 260.0
dataCollection4.fDriveInertia = 1.0
dataCollection4.fClutchChangeRateScaleUpShift = 6.0
dataCollection4.fClutchChangeRateScaleDownShift = 6.0
dataCollection4.fBrakeForce = 1.2
dataCollection4.fHandBrakeForce = 0.8
dataCollection4.fCollisionDamageMult = 0.7
dataCollection4.fWeaponDamageMult = 1.0
dataCollection4.fDeformationDamageMult = 0.7
dataCollection4.fEngineDamageMult = 1.0
dataCollection4.fSuspensionForce = 3.0
dataCollection4.fSuspensionCompDamp = 1.5
dataCollection4.fSuspensionReboundDamp = 1.5
dataCollection4.fSuspensionUpperLimit = 0.1
dataCollection4.fSuspensionLowerLimit = -0.1
dataCollection4.fTractionBiasFront = 0.5
dataCollection4.fSteeringLock = 40.0
dataCollection4.fTractionCurveMax = 3.5
dataCollection4.fTractionCurveMin = 3.5
dataCollection4.fTractionCurveLateral = 22.5
dataCollection4.fTractionSpringDeltaMax = 0.15
dataCollection4.fTractionLossMult = 1.0
dataCollection3["Sport & Sedan"] = dataCollection4
dataCollection4 = {}
dataCollection4.fMass = 1600.0
dataCollection4.fInitialDragCoeff = 7.5
dataCollection4.fInitialDriveForce = 0.35
dataCollection4.fInitialDriveMaxFlatVel = 200.0
dataCollection4.fDriveInertia = 0.7
dataCollection4.fClutchChangeRateScaleUpShift = 6.0
dataCollection4.fClutchChangeRateScaleDownShift = 6.0
dataCollection4.fBrakeForce = 1.2
dataCollection4.fHandBrakeForce = 0.8
dataCollection4.fCollisionDamageMult = 0.7
dataCollection4.fWeaponDamageMult = 1.0
dataCollection4.fDeformationDamageMult = 0.7
dataCollection4.fEngineDamageMult = 1.0
dataCollection4.fSuspensionForce = 3.0
dataCollection4.fSuspensionCompDamp = 1.5
dataCollection4.fSuspensionReboundDamp = 1.5
dataCollection4.fSuspensionUpperLimit = 0.1
dataCollection4.fSuspensionLowerLimit = -0.1
dataCollection4.fTractionBiasFront = 0.5
dataCollection4.fSteeringLock = 40.0
dataCollection4.fTractionCurveMax = 3.5
dataCollection4.fTractionCurveMin = 3.5
dataCollection4.fTractionCurveLateral = 22.5
dataCollection4.fTractionSpringDeltaMax = 0.15
dataCollection4.fTractionLossMult = 1.0
dataCollection3.SUV = dataCollection4
dataCollection4 = {}
dataCollection4.fMass = 1600.0
dataCollection4.fInitialDragCoeff = 12.0
dataCollection4.fInitialDriveForce = 0.3
dataCollection4.fInitialDriveMaxFlatVel = 200.0
dataCollection4.fDriveInertia = 0.5
dataCollection4.fClutchChangeRateScaleUpShift = 6.0
dataCollection4.fClutchChangeRateScaleDownShift = 6.0
dataCollection4.fBrakeForce = 0.8
dataCollection4.fHandBrakeForce = 0.8
dataCollection4.fCollisionDamageMult = 0.6
dataCollection4.fWeaponDamageMult = 1.0
dataCollection4.fDeformationDamageMult = 0.6
dataCollection4.fEngineDamageMult = 1.0
dataCollection4.fSuspensionForce = 3.0
dataCollection4.fSuspensionCompDamp = 1.5
dataCollection4.fSuspensionReboundDamp = 1.5
dataCollection4.fSuspensionUpperLimit = 0.1
dataCollection4.fSuspensionLowerLimit = -0.1
dataCollection4.fTractionBiasFront = 0.5
dataCollection4.fSteeringLock = 40.0
dataCollection4.fTractionCurveMax = 3.5
dataCollection4.fTractionCurveMin = 3.5
dataCollection4.fTractionCurveLateral = 22.5
dataCollection4.fTractionSpringDeltaMax = 0.15
dataCollection4.fTractionLossMult = 1.0
dataCollection3.Truck = dataCollection4
dataCollection4 = {}
dataCollection4.fMass = 1600.0
dataCollection4.fInitialDragCoeff = 6.0
dataCollection4.fInitialDriveForce = 0.3
dataCollection4.fInitialDriveMaxFlatVel = 200.0
dataCollection4.fDriveInertia = 1.0
dataCollection4.fClutchChangeRateScaleUpShift = 6.0
dataCollection4.fClutchChangeRateScaleDownShift = 6.0
dataCollection4.fBrakeForce = 1.2
dataCollection4.fHandBrakeForce = 0.8
dataCollection4.fCollisionDamageMult = 0.6
dataCollection4.fWeaponDamageMult = 1.0
dataCollection4.fDeformationDamageMult = 0.6
dataCollection4.fEngineDamageMult = 1.0
dataCollection4.fSuspensionForce = 3.0
dataCollection4.fSuspensionCompDamp = 1.5
dataCollection4.fSuspensionReboundDamp = 1.5
dataCollection4.fSuspensionUpperLimit = 0.1
dataCollection4.fSuspensionLowerLimit = -0.1
dataCollection4.fTractionBiasFront = 0.5
dataCollection4.fSteeringLock = 40.0
dataCollection4.fTractionCurveMax = 3.5
dataCollection4.fTractionCurveMin = 3.5
dataCollection4.fTractionCurveLateral = 22.5
dataCollection4.fTractionSpringDeltaMax = 0.15
dataCollection4.fTractionLossMult = 1.0
dataCollection3["300KG"] = dataCollection4
dataCollection4 = {}
dataCollection6 = 1
dataCollection7 = {}
dataCollection8 = 1
iterator = pairs
dataCollection9 = dataCollection2
iterator, dataCollection9, dataCollection10, dataCollection11 = iterator(dataCollection9)
for dataCollection12 in iterator, dataCollection9, dataCollection10, dataCollection11 do
  tableHelper = table
  tableHelper = tableHelper.insert
  dataCollection13 = dataCollection4
  dataCollection14 = dataCollection12
  tableHelper(dataCollection13, dataCollection14)
end
iterator = pairs
dataCollection9 = dataCollection3
iterator, dataCollection9, dataCollection10, dataCollection11 = iterator(dataCollection9)
for dataCollection12 in iterator, dataCollection9, dataCollection10, dataCollection11 do
  tableHelper = table
  tableHelper = tableHelper.insert
  dataCollection13 = dataCollection7
  dataCollection14 = dataCollection12
  tableHelper(dataCollection13, dataCollection14)
end
iterator = {}
dataCollection9 = 11
dataCollection10 = 12
dataCollection11 = 13
dataCollection12 = 15
iterator[1] = dataCollection9
iterator[2] = dataCollection10
iterator[3] = dataCollection11
iterator[4] = dataCollection12

-- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue1) ===
function dataCollection9(localValue1)
  local localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4
  localValue2 = {}
  localValue3 = pairs
  text17 = iterator
  localValue3, text17, number24, modelHash = localValue3(text17)
  for cmgOperation5, workingValue18 in localValue3, text17, number24, modelHash do
    workingValue20 = GetVehicleMod
    workingValue21 = localValue1
    workingValue = workingValue18
    workingValue20 = workingValue20(workingValue21, workingValue)
    localValue2[workingValue18] = workingValue20
  end
  localValue3 = ModifyVehicleTopSpeed
  text17 = localValue1
  number24 = 1.0
  localValue3(text17, number24)
  localValue3 = CMG
  localValue3 = localValue3.getTunableValue
  text17 = "reapply_mods_hack"
  localValue3 = localValue3(text17)
  if localValue3 then
    localValue3 = pairs
    text17 = localValue2
    localValue3, text17, number24, modelHash = localValue3(text17)
    for cmgOperation5, workingValue18 in localValue3, text17, number24, modelHash do
      if workingValue18 >= 0 then
        workingValue20 = SetVehicleMod
        workingValue21 = localValue1
        workingValue = cmgOperation5
        text8 = workingValue18
        stateFlag4 = false
        workingValue20(workingValue21, workingValue, text8, stateFlag4)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: dataCollection10; parameters: localValue1, localValue2) ===
function dataCollection10(localValue1, localValue2)
  local localValue3, text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3
  localValue3 = dataCollection2
  localValue3 = localValue3[localValue1]
  text17 = pairs
  number24 = localValue3
  text17, number24, modelHash, cmgOperation5 = text17(number24)
  for workingValue18, workingValue20 in text17, number24, modelHash, cmgOperation5 do
    workingValue21 = type
    workingValue = workingValue20
    workingValue21 = workingValue21(workingValue)
    if "number" == workingValue21 then
      workingValue21 = math
      workingValue21 = workingValue21.type
      workingValue = workingValue20
      workingValue21 = workingValue21(workingValue)
      if "integer" == workingValue21 then
        workingValue21 = SetVehicleHandlingInt
        workingValue = localValue2
        text8 = "CHandlingData"
        stateFlag4 = workingValue18
        workingValue3 = workingValue20
        workingValue21(workingValue, text8, stateFlag4, workingValue3)
      else
        workingValue21 = math
        workingValue21 = workingValue21.type
        workingValue = workingValue20
        workingValue21 = workingValue21(workingValue)
        if "float" == workingValue21 then
          workingValue21 = SetVehicleHandlingFloat
          workingValue = localValue2
          text8 = "CHandlingData"
          stateFlag4 = workingValue18
          workingValue3 = workingValue20
          workingValue21(workingValue, text8, stateFlag4, workingValue3)
        end
      end
    else
      workingValue21 = type
      workingValue = workingValue20
      workingValue21 = workingValue21(workingValue)
      if "vector3" == workingValue21 then
        workingValue21 = SetVehicleHandlingVector
        workingValue = localValue2
        text8 = "CHandlingData"
        stateFlag4 = workingValue18
        workingValue3 = workingValue20
        workingValue21(workingValue, text8, stateFlag4, workingValue3)
      end
    end
  end
  text17 = dataCollection9
  number24 = localValue2
  text17(number24)
  text17 = notify
  number24 = "~g~Baller Handling template applied to vehicle!"
  -- Beginner: Show a notification to the player.
  text17(number24)
end

-- === HELPER FUNCTION (decompiler name: dataCollection11; parameters: none) ===
function dataCollection11()
  local localValue1, localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3
  localValue1 = GetVehiclePedIsUsing
  localValue2 = PlayerPedId
  localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3 = localValue2()
  localValue1 = localValue1(localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3)
  if 0 == localValue1 then
    localValue2 = notify
    localValue3 = "~r~You are not in a vehicle."
    localValue2(localValue3)
    return
  end
  localValue3 = dataCollection8
  localValue2 = dataCollection7
  localValue2 = localValue2[localValue3]
  localValue3 = dataCollection3
  localValue3 = localValue3[localValue2]
  text17 = pairs
  number24 = localValue3
  text17, number24, modelHash, cmgOperation5 = text17(number24)
  for workingValue18, workingValue20 in text17, number24, modelHash, cmgOperation5 do
    workingValue21 = type
    workingValue = workingValue20
    workingValue21 = workingValue21(workingValue)
    if "number" == workingValue21 then
      workingValue21 = math
      workingValue21 = workingValue21.type
      workingValue = workingValue20
      workingValue21 = workingValue21(workingValue)
      if "integer" == workingValue21 then
        workingValue21 = SetVehicleHandlingInt
        workingValue = localValue1
        text8 = "CHandlingData"
        stateFlag4 = workingValue18
        workingValue3 = workingValue20
        workingValue21(workingValue, text8, stateFlag4, workingValue3)
      else
        workingValue21 = math
        workingValue21 = workingValue21.type
        workingValue = workingValue20
        workingValue21 = workingValue21(workingValue)
        if "float" == workingValue21 then
          workingValue21 = SetVehicleHandlingFloat
          workingValue = localValue1
          text8 = "CHandlingData"
          stateFlag4 = workingValue18
          workingValue3 = workingValue20
          workingValue21(workingValue, text8, stateFlag4, workingValue3)
        end
      end
    else
      workingValue21 = type
      workingValue = workingValue20
      workingValue21 = workingValue21(workingValue)
      if "vector3" == workingValue21 then
        workingValue21 = SetVehicleHandlingVector
        workingValue = localValue1
        text8 = "CHandlingData"
        stateFlag4 = workingValue18
        workingValue3 = workingValue20
        workingValue21(workingValue, text8, stateFlag4, workingValue3)
      end
    end
  end
  text17 = dataCollection9
  number24 = localValue1
  text17(number24)
  text17 = notify
  number24 = "~g~Import Handling template applied to vehicle!"
  -- Beginner: Show a notification to the player.
  text17(number24)
end
dataCollection12 = {}
tableHelper = {}
tableHelper.name = "Black"
tableHelper.colorindex = 0
dataCollection13 = {}
dataCollection13.name = "White"
dataCollection13.colorindex = 112
dataCollection14 = {}
dataCollection14.name = "Red"
dataCollection14.colorindex = 27
createVector3 = {}
createVector3.name = "Orange"
createVector3.colorindex = 38
createVector32 = {}
createVector32.name = "Yellow"
createVector32.colorindex = 88
dataCollection15 = {}
dataCollection15.name = "Green"
dataCollection15.colorindex = 92
dataCollection16 = {}
dataCollection16.name = "Blue"
dataCollection16.colorindex = 64
dataCollection17 = {}
dataCollection17.name = "Pink"
dataCollection17.colorindex = 135
dataCollection18 = {}
dataCollection18.name = "Purple"
dataCollection18.colorindex = 142
dataCollection12[1] = tableHelper
dataCollection12[2] = dataCollection13
dataCollection12[3] = dataCollection14
dataCollection12[4] = createVector3
dataCollection12[5] = createVector32
dataCollection12[6] = dataCollection15
dataCollection12[7] = dataCollection16
dataCollection12[8] = dataCollection17
dataCollection12[9] = dataCollection18
tableHelper = vector3
dataCollection13 = 2120.2885742188
dataCollection14 = 2433.8576660156
createVector3 = 152.3650390625
tableHelper = tableHelper(dataCollection13, dataCollection14, createVector3)
dataCollection13 = {}
dataCollection14 = {}
createVector3 = vector3
createVector32 = 2859.890625
dataCollection15 = 3530.3603515625
dataCollection16 = 54.06075668335
createVector3 = createVector3(createVector32, dataCollection15, dataCollection16)
createVector32 = vector3
dataCollection15 = 2901.5375976562
dataCollection16 = 3662.1921386719
dataCollection17 = 52.677833557129
createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = createVector32(dataCollection15, dataCollection16, dataCollection17)
dataCollection14[1] = createVector3
dataCollection14[2] = createVector32
dataCollection14[3] = dataCollection15
dataCollection14[4] = dataCollection16
dataCollection14[5] = dataCollection17
dataCollection14[6] = dataCollection18
dataCollection14[7] = dataCollection19
dataCollection14[8] = dataCollection20
dataCollection14[9] = tableHelper2
dataCollection14[10] = dataCollection21
dataCollection14[11] = dataCollection22
dataCollection14[12] = createVector33
dataCollection14[13] = dataCollection23
dataCollection14[14] = dataCollection24
dataCollection14[15] = dataCollection25
dataCollection14[16] = dataCollection26
dataCollection14[17] = dataCollection27
dataCollection14[18] = dataCollection28
dataCollection14[19] = dataCollection29
dataCollection14[20] = dataCollection30
dataCollection14[21] = dataCollection31
dataCollection14[22] = dataCollection32
dataCollection14[23] = dataCollection33
dataCollection14[24] = dataCollection34
dataCollection14[25] = dataCollection35
dataCollection14[26] = dataCollection36
dataCollection14[27] = dataCollection37
dataCollection14[28] = rageUiOperation2
dataCollection14[29] = dataCollection38
dataCollection14[30] = dataCollection39
dataCollection14[31] = dataCollection40
dataCollection14[32] = dataCollection41
dataCollection14[33] = text22
dataCollection14[34] = text23
dataCollection14[35] = text24
dataCollection14[36] = text25
dataCollection14[37] = text26
dataCollection14[38] = text27
dataCollection14[39] = text28
dataCollection14[40] = text30
dataCollection14[41] = text31
dataCollection14[42] = text32
dataCollection14[43] = text33
dataCollection14[44] = text34
dataCollection14[45] = text35
dataCollection14[46] = text36
dataCollection14[47] = text37
dataCollection14[48] = text38
dataCollection14[49] = text39
dataCollection14[50] = text40
dataCollection14[51] = text41
dataCollection14[52] = text42
dataCollection14[53] = text43
dataCollection14[54] = text44
dataCollection14[55] = text45
dataCollection14[56] = text46
dataCollection14[57] = text47
dataCollection14[58] = text48
dataCollection14[59] = text49
dataCollection14[60] = text50
dataCollection14[61] = text51
dataCollection14[62] = text52
dataCollection14[63] = text53
dataCollection14[64] = text54
dataCollection14[65] = text55
dataCollection14[66] = text56
dataCollection14[67] = text57
dataCollection14[68] = text58
dataCollection14[69] = text59
dataCollection14[70] = text
dataCollection14[71] = text2
dataCollection14[72] = text3
dataCollection14[73] = text4
dataCollection14[74] = text5
dataCollection13["OLD: Super Sport"] = dataCollection14
dataCollection14 = {}
createVector3 = vector3
createVector32 = 2907.548828125
dataCollection15 = 3684.9208984375
dataCollection16 = 52.677875518799
createVector3 = createVector3(createVector32, dataCollection15, dataCollection16)
createVector32 = vector3
dataCollection15 = 2927.6743164062
dataCollection16 = 3760.1481933594
dataCollection17 = 52.678119659424
createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = createVector32(dataCollection15, dataCollection16, dataCollection17)
dataCollection14[1] = createVector3
dataCollection14[2] = createVector32
dataCollection14[3] = dataCollection15
dataCollection14[4] = dataCollection16
dataCollection14[5] = dataCollection17
dataCollection14[6] = dataCollection18
dataCollection14[7] = dataCollection19
dataCollection14[8] = dataCollection20
dataCollection14[9] = tableHelper2
dataCollection14[10] = dataCollection21
dataCollection14[11] = dataCollection22
dataCollection14[12] = createVector33
dataCollection14[13] = dataCollection23
dataCollection14[14] = dataCollection24
dataCollection14[15] = dataCollection25
dataCollection14[16] = dataCollection26
dataCollection14[17] = dataCollection27
dataCollection14[18] = dataCollection28
dataCollection14[19] = dataCollection29
dataCollection14[20] = dataCollection30
dataCollection14[21] = dataCollection31
dataCollection14[22] = dataCollection32
dataCollection14[23] = dataCollection33
dataCollection14[24] = dataCollection34
dataCollection14[25] = dataCollection35
dataCollection14[26] = dataCollection36
dataCollection14[27] = dataCollection37
dataCollection14[28] = rageUiOperation2
dataCollection14[29] = dataCollection38
dataCollection14[30] = dataCollection39
dataCollection14[31] = dataCollection40
dataCollection14[32] = dataCollection41
dataCollection14[33] = text22
dataCollection14[34] = text23
dataCollection14[35] = text24
dataCollection14[36] = text25
dataCollection14[37] = text26
dataCollection14[38] = text27
dataCollection14[39] = text28
dataCollection14[40] = text30
dataCollection14[41] = text31
dataCollection14[42] = text32
dataCollection14[43] = text33
dataCollection14[44] = text34
dataCollection14[45] = text35
dataCollection14[46] = text36
dataCollection14[47] = text37
dataCollection14[48] = text38
dataCollection14[49] = text39
dataCollection14[50] = text40
dataCollection14[51] = text41
dataCollection14[52] = text42
dataCollection14[53] = text43
dataCollection14[54] = text44
dataCollection14[55] = text45
dataCollection14[56] = text46
dataCollection14[57] = text47
dataCollection14[58] = text48
dataCollection14[59] = text49
dataCollection14[60] = text50
dataCollection14[61] = text51
dataCollection14[62] = text52
dataCollection14[63] = text53
dataCollection14[64] = text54
dataCollection14[65] = text55
dataCollection14[66] = text56
dataCollection14[67] = text57
dataCollection14[68] = text58
dataCollection14[69] = text59
dataCollection14[70] = text
dataCollection14[71] = text2
dataCollection14[72] = text3
dataCollection14[73] = text4
dataCollection14[74] = text5
dataCollection13["OLD: Police Sport"] = dataCollection14
dataCollection14 = "OLD: Sport"
createVector3 = {}
createVector32 = vector3
dataCollection15 = 2936.6784667969
dataCollection16 = 3972.7023925781
dataCollection17 = 51.692615509033
createVector32 = createVector32(dataCollection15, dataCollection16, dataCollection17)
dataCollection15 = vector3
dataCollection16 = 2877.8898925781
dataCollection17 = 4194.3125
dataCollection18 = 50.136428833008
dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = dataCollection15(dataCollection16, dataCollection17, dataCollection18)
createVector3[1] = createVector32
createVector3[2] = dataCollection15
createVector3[3] = dataCollection16
createVector3[4] = dataCollection17
createVector3[5] = dataCollection18
createVector3[6] = dataCollection19
createVector3[7] = dataCollection20
createVector3[8] = tableHelper2
createVector3[9] = dataCollection21
createVector3[10] = dataCollection22
createVector3[11] = createVector33
createVector3[12] = dataCollection23
createVector3[13] = dataCollection24
createVector3[14] = dataCollection25
createVector3[15] = dataCollection26
createVector3[16] = dataCollection27
createVector3[17] = dataCollection28
createVector3[18] = dataCollection29
createVector3[19] = dataCollection30
createVector3[20] = dataCollection31
createVector3[21] = dataCollection32
createVector3[22] = dataCollection33
createVector3[23] = dataCollection34
createVector3[24] = dataCollection35
createVector3[25] = dataCollection36
createVector3[26] = dataCollection37
createVector3[27] = rageUiOperation2
createVector3[28] = dataCollection38
createVector3[29] = dataCollection39
createVector3[30] = dataCollection40
createVector3[31] = dataCollection41
createVector3[32] = text22
createVector3[33] = text23
createVector3[34] = text24
createVector3[35] = text25
createVector3[36] = text26
createVector3[37] = text27
createVector3[38] = text28
createVector3[39] = text30
createVector3[40] = text31
createVector3[41] = text32
createVector3[42] = text33
createVector3[43] = text34
createVector3[44] = text35
createVector3[45] = text36
createVector3[46] = text37
createVector3[47] = text38
createVector3[48] = text39
createVector3[49] = text40
createVector3[50] = text41
createVector3[51] = text42
createVector3[52] = text43
createVector3[53] = text44
createVector3[54] = text45
createVector3[55] = text46
createVector3[56] = text47
createVector3[57] = text48
createVector3[58] = text49
createVector3[59] = text50
createVector3[60] = text51
createVector3[61] = text52
createVector3[62] = text53
createVector3[63] = text54
createVector3[64] = text55
createVector3[65] = text56
createVector3[66] = text57
createVector3[67] = text58
createVector3[68] = text59
createVector3[69] = text
createVector3[70] = text2
createVector3[71] = text3
createVector3[72] = text4
createVector3[73] = text5
dataCollection13[dataCollection14] = createVector3
dataCollection14 = "OLD: SUV"
createVector3 = {}
createVector32 = vector3
dataCollection15 = 2830.4113769531
dataCollection16 = 4340.48046875
dataCollection17 = 49.984191894531
createVector32 = createVector32(dataCollection15, dataCollection16, dataCollection17)
dataCollection15 = vector3
dataCollection16 = 2783.9580078125
dataCollection17 = 4498.8803710938
dataCollection18 = 47.151454925537
dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = dataCollection15(dataCollection16, dataCollection17, dataCollection18)
createVector3[1] = createVector32
createVector3[2] = dataCollection15
createVector3[3] = dataCollection16
createVector3[4] = dataCollection17
createVector3[5] = dataCollection18
createVector3[6] = dataCollection19
createVector3[7] = dataCollection20
createVector3[8] = tableHelper2
createVector3[9] = dataCollection21
createVector3[10] = dataCollection22
createVector3[11] = createVector33
createVector3[12] = dataCollection23
createVector3[13] = dataCollection24
createVector3[14] = dataCollection25
createVector3[15] = dataCollection26
createVector3[16] = dataCollection27
createVector3[17] = dataCollection28
createVector3[18] = dataCollection29
createVector3[19] = dataCollection30
createVector3[20] = dataCollection31
createVector3[21] = dataCollection32
createVector3[22] = dataCollection33
createVector3[23] = dataCollection34
createVector3[24] = dataCollection35
createVector3[25] = dataCollection36
createVector3[26] = dataCollection37
createVector3[27] = rageUiOperation2
createVector3[28] = dataCollection38
createVector3[29] = dataCollection39
createVector3[30] = dataCollection40
createVector3[31] = dataCollection41
createVector3[32] = text22
createVector3[33] = text23
createVector3[34] = text24
createVector3[35] = text25
createVector3[36] = text26
createVector3[37] = text27
createVector3[38] = text28
createVector3[39] = text30
createVector3[40] = text31
createVector3[41] = text32
createVector3[42] = text33
createVector3[43] = text34
createVector3[44] = text35
createVector3[45] = text36
createVector3[46] = text37
createVector3[47] = text38
createVector3[48] = text39
createVector3[49] = text40
createVector3[50] = text41
createVector3[51] = text42
createVector3[52] = text43
createVector3[53] = text44
createVector3[54] = text45
createVector3[55] = text46
createVector3[56] = text47
createVector3[57] = text48
createVector3[58] = text49
createVector3[59] = text50
createVector3[60] = text51
createVector3[61] = text52
createVector3[62] = text53
createVector3[63] = text54
createVector3[64] = text55
createVector3[65] = text56
createVector3[66] = text57
createVector3[67] = text58
createVector3[68] = text59
createVector3[69] = text
createVector3[70] = text2
createVector3[71] = text3
createVector3[72] = text4
createVector3[73] = text5
dataCollection13[dataCollection14] = createVector3
dataCollection14 = "OLD: Semi Offroader"
createVector3 = {}
createVector32 = vector3
dataCollection15 = 2830.4113769531
dataCollection16 = 4340.48046875
dataCollection17 = 49.984191894531
createVector32 = createVector32(dataCollection15, dataCollection16, dataCollection17)
dataCollection15 = vector3
dataCollection16 = 2783.9580078125
dataCollection17 = 4498.8803710938
dataCollection18 = 47.151454925537
dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = dataCollection15(dataCollection16, dataCollection17, dataCollection18)
createVector3[1] = createVector32
createVector3[2] = dataCollection15
createVector3[3] = dataCollection16
createVector3[4] = dataCollection17
createVector3[5] = dataCollection18
createVector3[6] = dataCollection19
createVector3[7] = dataCollection20
createVector3[8] = tableHelper2
createVector3[9] = dataCollection21
createVector3[10] = dataCollection22
createVector3[11] = createVector33
createVector3[12] = dataCollection23
createVector3[13] = dataCollection24
createVector3[14] = dataCollection25
createVector3[15] = dataCollection26
createVector3[16] = dataCollection27
createVector3[17] = dataCollection28
createVector3[18] = dataCollection29
createVector3[19] = dataCollection30
createVector3[20] = dataCollection31
createVector3[21] = dataCollection32
createVector3[22] = dataCollection33
createVector3[23] = dataCollection34
createVector3[24] = dataCollection35
createVector3[25] = dataCollection36
createVector3[26] = dataCollection37
createVector3[27] = rageUiOperation2
createVector3[28] = dataCollection38
createVector3[29] = dataCollection39
createVector3[30] = dataCollection40
createVector3[31] = dataCollection41
createVector3[32] = text22
createVector3[33] = text23
createVector3[34] = text24
createVector3[35] = text25
createVector3[36] = text26
createVector3[37] = text27
createVector3[38] = text28
createVector3[39] = text30
createVector3[40] = text31
createVector3[41] = text32
createVector3[42] = text33
createVector3[43] = text34
createVector3[44] = text35
createVector3[45] = text36
createVector3[46] = text37
createVector3[47] = text38
createVector3[48] = text39
createVector3[49] = text40
createVector3[50] = text41
createVector3[51] = text42
createVector3[52] = text43
createVector3[53] = text44
createVector3[54] = text45
createVector3[55] = text46
createVector3[56] = text47
createVector3[57] = text48
createVector3[58] = text49
createVector3[59] = text50
createVector3[60] = text51
createVector3[61] = text52
createVector3[62] = text53
createVector3[63] = text54
createVector3[64] = text55
createVector3[65] = text56
createVector3[66] = text57
createVector3[67] = text58
createVector3[68] = text59
createVector3[69] = text
createVector3[70] = text2
createVector3[71] = text3
createVector3[72] = text4
createVector3[73] = text5
dataCollection13[dataCollection14] = createVector3
dataCollection14 = "OLD: Offroader"
createVector3 = {}
createVector32 = vector3
dataCollection15 = 2934.0314941406
dataCollection16 = 3990.6062011719
dataCollection17 = 51.546661376953
createVector32 = createVector32(dataCollection15, dataCollection16, dataCollection17)
dataCollection15 = vector3
dataCollection16 = 2897.0686035156
dataCollection17 = 4138.1010742188
dataCollection18 = 50.389766693115
dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = dataCollection15(dataCollection16, dataCollection17, dataCollection18)
createVector3[1] = createVector32
createVector3[2] = dataCollection15
createVector3[3] = dataCollection16
createVector3[4] = dataCollection17
createVector3[5] = dataCollection18
createVector3[6] = dataCollection19
createVector3[7] = dataCollection20
createVector3[8] = tableHelper2
createVector3[9] = dataCollection21
createVector3[10] = dataCollection22
createVector3[11] = createVector33
createVector3[12] = dataCollection23
createVector3[13] = dataCollection24
createVector3[14] = dataCollection25
createVector3[15] = dataCollection26
createVector3[16] = dataCollection27
createVector3[17] = dataCollection28
createVector3[18] = dataCollection29
createVector3[19] = dataCollection30
createVector3[20] = dataCollection31
createVector3[21] = dataCollection32
createVector3[22] = dataCollection33
createVector3[23] = dataCollection34
createVector3[24] = dataCollection35
createVector3[25] = dataCollection36
createVector3[26] = dataCollection37
createVector3[27] = rageUiOperation2
createVector3[28] = dataCollection38
createVector3[29] = dataCollection39
createVector3[30] = dataCollection40
createVector3[31] = dataCollection41
createVector3[32] = text22
createVector3[33] = text23
createVector3[34] = text24
createVector3[35] = text25
createVector3[36] = text26
createVector3[37] = text27
createVector3[38] = text28
createVector3[39] = text30
createVector3[40] = text31
createVector3[41] = text32
createVector3[42] = text33
createVector3[43] = text34
createVector3[44] = text35
createVector3[45] = text36
createVector3[46] = text37
createVector3[47] = text38
createVector3[48] = text39
createVector3[49] = text40
createVector3[50] = text41
createVector3[51] = text42
createVector3[52] = text43
createVector3[53] = text44
createVector3[54] = text45
createVector3[55] = text46
createVector3[56] = text47
createVector3[57] = text48
createVector3[58] = text49
createVector3[59] = text50
createVector3[60] = text51
createVector3[61] = text52
createVector3[62] = text53
createVector3[63] = text54
createVector3[64] = text55
createVector3[65] = text56
createVector3[66] = text57
createVector3[67] = text58
createVector3[68] = text59
createVector3[69] = text
createVector3[70] = text2
createVector3[71] = text3
createVector3[72] = text4
createVector3[73] = text5
dataCollection13[dataCollection14] = createVector3
dataCollection14 = {}
createVector3 = vector3
createVector32 = 2118.296875
dataCollection15 = 3183.0803222656
dataCollection16 = 152.139877319336
createVector3 = createVector3(createVector32, dataCollection15, dataCollection16)
createVector32 = vector3
dataCollection15 = 2120.1213378906
dataCollection16 = 3318.7431640625
dataCollection17 = 152.665840148926
createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = createVector32(dataCollection15, dataCollection16, dataCollection17)
dataCollection14[1] = createVector3
dataCollection14[2] = createVector32
dataCollection14[3] = dataCollection15
dataCollection14[4] = dataCollection16
dataCollection14[5] = dataCollection17
dataCollection14[6] = dataCollection18
dataCollection14[7] = dataCollection19
dataCollection14[8] = dataCollection20
dataCollection14[9] = tableHelper2
dataCollection14[10] = dataCollection21
dataCollection14[11] = dataCollection22
dataCollection14[12] = createVector33
dataCollection14[13] = dataCollection23
dataCollection14[14] = dataCollection24
dataCollection14[15] = dataCollection25
dataCollection14[16] = dataCollection26
dataCollection14[17] = dataCollection27
dataCollection14[18] = dataCollection28
dataCollection14[19] = dataCollection29
dataCollection14[20] = dataCollection30
dataCollection14[21] = dataCollection31
dataCollection14[22] = dataCollection32
dataCollection14[23] = dataCollection33
dataCollection14[24] = dataCollection34
dataCollection14[25] = dataCollection35
dataCollection14[26] = dataCollection36
dataCollection14[27] = dataCollection37
dataCollection14[28] = rageUiOperation2
dataCollection14[29] = dataCollection38
dataCollection14[30] = dataCollection39
dataCollection14[31] = dataCollection40
dataCollection14[32] = dataCollection41
dataCollection14[33] = text22
dataCollection14[34] = text23
dataCollection14[35] = text24
dataCollection14[36] = text25
dataCollection14[37] = text26
dataCollection14[38] = text27
dataCollection14[39] = text28
dataCollection14[40] = text30
dataCollection14[41] = text31
dataCollection14[42] = text32
dataCollection14[43] = text33
dataCollection14[44] = text34
dataCollection14[45] = text35
dataCollection14[46] = text36
dataCollection14[47] = text37
dataCollection14[48] = text38
dataCollection14[49] = text39
dataCollection14[50] = text40
dataCollection14[51] = text41
dataCollection14[52] = text42
dataCollection14[53] = text43
dataCollection14[54] = text44
dataCollection14[55] = text45
dataCollection14[56] = text46
dataCollection14[57] = text47
dataCollection14[58] = text48
dataCollection14[59] = text49
dataCollection14[60] = text50
dataCollection14[61] = text51
dataCollection14[62] = text52
dataCollection14[63] = text53
dataCollection14[64] = text54
dataCollection14[65] = text55
dataCollection14[66] = text56
dataCollection14[67] = text57
dataCollection14[68] = text58
dataCollection14[69] = text59
dataCollection14[70] = text
dataCollection14[71] = text2
dataCollection14[72] = text3
dataCollection14[73] = text4
dataCollection14[74] = text5
dataCollection13.Super = dataCollection14
dataCollection14 = {}
createVector3 = vector3
createVector32 = 2120.2062988281
dataCollection15 = 3327.2893066406
dataCollection16 = 152.129135131836
createVector3 = createVector3(createVector32, dataCollection15, dataCollection16)
createVector32 = vector3
dataCollection15 = 2120.1062011719
dataCollection16 = 3507.8864746094
dataCollection17 = 152.665855407715
createVector32, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = createVector32(dataCollection15, dataCollection16, dataCollection17)
dataCollection14[1] = createVector3
dataCollection14[2] = createVector32
dataCollection14[3] = dataCollection15
dataCollection14[4] = dataCollection16
dataCollection14[5] = dataCollection17
dataCollection14[6] = dataCollection18
dataCollection14[7] = dataCollection19
dataCollection14[8] = dataCollection20
dataCollection14[9] = tableHelper2
dataCollection14[10] = dataCollection21
dataCollection14[11] = dataCollection22
dataCollection14[12] = createVector33
dataCollection14[13] = dataCollection23
dataCollection14[14] = dataCollection24
dataCollection14[15] = dataCollection25
dataCollection14[16] = dataCollection26
dataCollection14[17] = dataCollection27
dataCollection14[18] = dataCollection28
dataCollection14[19] = dataCollection29
dataCollection14[20] = dataCollection30
dataCollection14[21] = dataCollection31
dataCollection14[22] = dataCollection32
dataCollection14[23] = dataCollection33
dataCollection14[24] = dataCollection34
dataCollection14[25] = dataCollection35
dataCollection14[26] = dataCollection36
dataCollection14[27] = dataCollection37
dataCollection14[28] = rageUiOperation2
dataCollection14[29] = dataCollection38
dataCollection14[30] = dataCollection39
dataCollection14[31] = dataCollection40
dataCollection14[32] = dataCollection41
dataCollection14[33] = text22
dataCollection14[34] = text23
dataCollection14[35] = text24
dataCollection14[36] = text25
dataCollection14[37] = text26
dataCollection14[38] = text27
dataCollection14[39] = text28
dataCollection14[40] = text30
dataCollection14[41] = text31
dataCollection14[42] = text32
dataCollection14[43] = text33
dataCollection14[44] = text34
dataCollection14[45] = text35
dataCollection14[46] = text36
dataCollection14[47] = text37
dataCollection14[48] = text38
dataCollection14[49] = text39
dataCollection14[50] = text40
dataCollection14[51] = text41
dataCollection14[52] = text42
dataCollection14[53] = text43
dataCollection14[54] = text44
dataCollection14[55] = text45
dataCollection14[56] = text46
dataCollection14[57] = text47
dataCollection14[58] = text48
dataCollection14[59] = text49
dataCollection14[60] = text50
dataCollection14[61] = text51
dataCollection14[62] = text52
dataCollection14[63] = text53
dataCollection14[64] = text54
dataCollection14[65] = text55
dataCollection14[66] = text56
dataCollection14[67] = text57
dataCollection14[68] = text58
dataCollection14[69] = text59
dataCollection14[70] = text
dataCollection14[71] = text2
dataCollection14[72] = text3
dataCollection14[73] = text4
dataCollection14[74] = text5
dataCollection13["Police Sport"] = dataCollection14
dataCollection14 = "Segan/Sport"
createVector3 = {}
createVector32 = vector3
dataCollection15 = 2120.2668457031
dataCollection16 = 3520.6560058594
dataCollection17 = 152.129661560059
createVector32 = createVector32(dataCollection15, dataCollection16, dataCollection17)
dataCollection15 = vector3
dataCollection16 = 2120.3317871094
dataCollection17 = 3718.7065429688
dataCollection18 = 152.66487121582
dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = dataCollection15(dataCollection16, dataCollection17, dataCollection18)
createVector3[1] = createVector32
createVector3[2] = dataCollection15
createVector3[3] = dataCollection16
createVector3[4] = dataCollection17
createVector3[5] = dataCollection18
createVector3[6] = dataCollection19
createVector3[7] = dataCollection20
createVector3[8] = tableHelper2
createVector3[9] = dataCollection21
createVector3[10] = dataCollection22
createVector3[11] = createVector33
createVector3[12] = dataCollection23
createVector3[13] = dataCollection24
createVector3[14] = dataCollection25
createVector3[15] = dataCollection26
createVector3[16] = dataCollection27
createVector3[17] = dataCollection28
createVector3[18] = dataCollection29
createVector3[19] = dataCollection30
createVector3[20] = dataCollection31
createVector3[21] = dataCollection32
createVector3[22] = dataCollection33
createVector3[23] = dataCollection34
createVector3[24] = dataCollection35
createVector3[25] = dataCollection36
createVector3[26] = dataCollection37
createVector3[27] = rageUiOperation2
createVector3[28] = dataCollection38
createVector3[29] = dataCollection39
createVector3[30] = dataCollection40
createVector3[31] = dataCollection41
createVector3[32] = text22
createVector3[33] = text23
createVector3[34] = text24
createVector3[35] = text25
createVector3[36] = text26
createVector3[37] = text27
createVector3[38] = text28
createVector3[39] = text30
createVector3[40] = text31
createVector3[41] = text32
createVector3[42] = text33
createVector3[43] = text34
createVector3[44] = text35
createVector3[45] = text36
createVector3[46] = text37
createVector3[47] = text38
createVector3[48] = text39
createVector3[49] = text40
createVector3[50] = text41
createVector3[51] = text42
createVector3[52] = text43
createVector3[53] = text44
createVector3[54] = text45
createVector3[55] = text46
createVector3[56] = text47
createVector3[57] = text48
createVector3[58] = text49
createVector3[59] = text50
createVector3[60] = text51
createVector3[61] = text52
createVector3[62] = text53
createVector3[63] = text54
createVector3[64] = text55
createVector3[65] = text56
createVector3[66] = text57
createVector3[67] = text58
createVector3[68] = text59
createVector3[69] = text
createVector3[70] = text2
createVector3[71] = text3
createVector3[72] = text4
createVector3[73] = text5
dataCollection13[dataCollection14] = createVector3
dataCollection14 = "Semi Offroader"
createVector3 = {}
createVector32 = vector3
dataCollection15 = 2120.537109375
dataCollection16 = 3713.6108398438
dataCollection17 = 152.128982543945
createVector32 = createVector32(dataCollection15, dataCollection16, dataCollection17)
dataCollection15 = vector3
dataCollection16 = 2120.3146972656
dataCollection17 = 3911.8256835938
dataCollection18 = 152.664909362793
dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, tableHelper2, dataCollection21, dataCollection22, createVector33, dataCollection23, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30, dataCollection31, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection37, rageUiOperation2, dataCollection38, dataCollection39, dataCollection40, dataCollection41, text22, text23, text24, text25, text26, text27, text28, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48, text49, text50, text51, text52, text53, text54, text55, text56, text57, text58, text59, text, text2, text3, text4, text5 = dataCollection15(dataCollection16, dataCollection17, dataCollection18)
createVector3[1] = createVector32
createVector3[2] = dataCollection15
createVector3[3] = dataCollection16
createVector3[4] = dataCollection17
createVector3[5] = dataCollection18
createVector3[6] = dataCollection19
createVector3[7] = dataCollection20
createVector3[8] = tableHelper2
createVector3[9] = dataCollection21
createVector3[10] = dataCollection22
createVector3[11] = createVector33
createVector3[12] = dataCollection23
createVector3[13] = dataCollection24
createVector3[14] = dataCollection25
createVector3[15] = dataCollection26
createVector3[16] = dataCollection27
createVector3[17] = dataCollection28
createVector3[18] = dataCollection29
createVector3[19] = dataCollection30
createVector3[20] = dataCollection31
createVector3[21] = dataCollection32
createVector3[22] = dataCollection33
createVector3[23] = dataCollection34
createVector3[24] = dataCollection35
createVector3[25] = dataCollection36
createVector3[26] = dataCollection37
createVector3[27] = rageUiOperation2
createVector3[28] = dataCollection38
createVector3[29] = dataCollection39
createVector3[30] = dataCollection40
createVector3[31] = dataCollection41
createVector3[32] = text22
createVector3[33] = text23
createVector3[34] = text24
createVector3[35] = text25
createVector3[36] = text26
createVector3[37] = text27
createVector3[38] = text28
createVector3[39] = text30
createVector3[40] = text31
createVector3[41] = text32
createVector3[42] = text33
createVector3[43] = text34
createVector3[44] = text35
createVector3[45] = text36
createVector3[46] = text37
createVector3[47] = text38
createVector3[48] = text39
createVector3[49] = text40
createVector3[50] = text41
createVector3[51] = text42
createVector3[52] = text43
createVector3[53] = text44
createVector3[54] = text45
createVector3[55] = text46
createVector3[56] = text47
createVector3[57] = text48
createVector3[58] = text49
createVector3[59] = text50
createVector3[60] = text51
createVector3[61] = text52
createVector3[62] = text53
createVector3[63] = text54
createVector3[64] = text55
createVector3[65] = text56
createVector3[66] = text57
createVector3[67] = text58
createVector3[68] = text59
createVector3[69] = text
createVector3[70] = text2
createVector3[71] = text3
createVector3[72] = text4
createVector3[73] = text5
dataCollection13[dataCollection14] = createVector3
dataCollection14 = {}
createVector3 = "startDistance"
createVector32 = vector3
dataCollection15 = 2120.0769042969
dataCollection16 = 3538.1611328125
dataCollection17 = 152.13045501709
createVector32 = createVector32(dataCollection15, dataCollection16, dataCollection17)
createVector32 = tableHelper - createVector32
createVector32 = #createVector32
dataCollection14[createVector3] = createVector32
createVector3 = "endDistance"
createVector32 = vector3
dataCollection15 = 2120.40234375
dataCollection16 = 3736.4074707031
dataCollection17 = 152.664390563965
createVector32 = createVector32(dataCollection15, dataCollection16, dataCollection17)
createVector32 = tableHelper - createVector32
createVector32 = #createVector32
dataCollection14[createVector3] = createVector32
dataCollection13.Offroader = dataCollection14
dataCollection14 = {}
createVector3 = nil
createVector32 = 1
dataCollection15 = {}
dataCollection16 = table
dataCollection16 = dataCollection16.insert
dataCollection17 = dataCollection15
dataCollection18 = "Display None"
dataCollection16(dataCollection17, dataCollection18)
dataCollection16 = _ENV
dataCollection17 = "pairs"
dataCollection16 = dataCollection16[dataCollection17]
dataCollection17 = dataCollection13
dataCollection16, dataCollection17, dataCollection18, dataCollection19 = dataCollection16(dataCollection17)
for dataCollection20 in dataCollection16, dataCollection17, dataCollection18, dataCollection19 do
  tableHelper2 = table
  tableHelper2 = tableHelper2.insert
  dataCollection21 = dataCollection15
  dataCollection22 = dataCollection20
  tableHelper2(dataCollection21, dataCollection22)
end
dataCollection16 = table
dataCollection16 = dataCollection16.insert
dataCollection17 = dataCollection15
dataCollection18 = "Display All"
dataCollection16(dataCollection17, dataCollection18)

-- === HELPER FUNCTION (decompiler name: dataCollection16; parameters: none) ===
function dataCollection16()
  local localValue1, localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7, workingValue8, dataCollection5
  localValue1 = pairs
  localValue2 = dataCollection13
  localValue1, localValue2, localValue3, text17 = localValue1(localValue2)
  for number24, modelHash in localValue1, localValue2, localValue3, text17 do
    cmgOperation5 = modelHash[1]
    if cmgOperation5 then
      cmgOperation5 = modelHash[2]
      if cmgOperation5 then
        cmgOperation5 = pairs
        workingValue18 = modelHash
        cmgOperation5, workingValue18, workingValue20, workingValue21 = cmgOperation5(workingValue18)
        for workingValue, text8 in cmgOperation5, workingValue18, workingValue20, workingValue21 do
          stateFlag4 = tCMG
          stateFlag4 = stateFlag4.addBlip
          workingValue3 = text8.x
          nameValue = text8.y
          nameValue2 = text8.z
          number5 = 1
          if 2 == workingValue then
            number7 = 1
            if number7 then
              goto continueAtStep27
            end
          end
          number7 = 5
          ::continueAtStep27::
          workingValue8 = nil
          dataCollection5 = 0.4
          stateFlag4 = stateFlag4(workingValue3, nameValue, nameValue2, number5, number7, workingValue8, dataCollection5)
          workingValue3 = table
          workingValue3 = workingValue3.insert
          nameValue = dataCollection14
          nameValue2 = stateFlag4
          workingValue3(nameValue, nameValue2)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: dataCollection17; parameters: none) ===
function dataCollection17()
  local localValue1, localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18
  localValue1 = pairs
  localValue2 = dataCollection14
  localValue1, localValue2, localValue3, text17 = localValue1(localValue2)
  for number24, modelHash in localValue1, localValue2, localValue3, text17 do
    cmgOperation5 = tCMG
    cmgOperation5 = cmgOperation5.removeBlip
    workingValue18 = modelHash
    cmgOperation5(workingValue18)
  end
  localValue1 = RemoveWeaponFromPed
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = -273849285
  localValue1(localValue2, localValue3)
  localValue1 = {}
  dataCollection14 = localValue1
end

-- === HELPER FUNCTION (decompiler name: dataCollection18; parameters: none) ===
function dataCollection18()
  local localValue1, localValue2
  localValue1 = text14
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getPlayerBucket
    localValue1 = localValue1()
    localValue1 = 333 == localValue1
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: dataCollection19; parameters: localValue1) ===
function dataCollection19(localValue1)
  local localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = GetEntityForwardVector
  text17 = PlayerPedId
  text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8 = text17()
  localValue3 = localValue3(text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8)
  text17 = GetEntityHeading
  number24 = PlayerPedId
  number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8 = number24()
  -- Beginner: result below is heading.
  text17 = text17(number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8)
  text17 = text17 + 90.0
  number24 = pairs
  modelHash = localValue1
  number24, modelHash, cmgOperation5, workingValue18 = number24(modelHash)
  for workingValue20, workingValue21 in number24, modelHash, cmgOperation5, workingValue18 do
    workingValue = Citizen
    workingValue = workingValue.Wait
    text8 = 250
    workingValue(text8)
    workingValue = dataCollection18
    workingValue = workingValue()
    if not workingValue then
      return
    end
    workingValue = Citizen
    workingValue = workingValue.CreateThread

    -- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
    function text8()
      local localValue12, localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29, stateFlag
      localValue12 = GetHashKey
      localValue22 = workingValue21
      -- Beginner: result below is hash.
      localValue12 = localValue12(localValue22)
      localValue22 = CMG
      localValue22 = localValue22.loadModel
      localValue32 = localValue12
      -- Beginner: Request/load a GTA model before spawning or applying it.
      localValue22(localValue32)
      localValue22 = localValue2
      localValue32 = localValue3
      localValue32 = localValue32 * 8.0
      text18 = workingValue20
      localValue32 = localValue32 * text18
      localValue22 = localValue22 + localValue32
      localValue32 = CMG
      localValue32 = localValue32.requestEntitySpawn
      text18 = "cardev_rapid"
      workingValue17 = localValue12
      stateFlag23 = localValue22
      localValue32(text18, workingValue17, stateFlag23)
      localValue32 = CMG
      localValue32 = localValue32.spawnVehicle
      text18 = localValue12
      workingValue17 = localValue22.x
      stateFlag23 = localValue22.y
      stateFlag25 = localValue22.z
      workingValue19 = text17
      stateFlag28 = false
      stateFlag29 = true
      stateFlag = true
      localValue32 = localValue32(text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29, stateFlag)
      text18 = SetEntityAsMissionEntity
      workingValue17 = localValue32
      stateFlag23 = true
      stateFlag25 = true
      text18(workingValue17, stateFlag23, stateFlag25)
      text18 = SetModelAsNoLongerNeeded
      workingValue17 = localValue12
      text18(workingValue17)
      text18 = CMG
      text18 = text18.initLocalVehicle
      workingValue17 = localValue32
      text18(workingValue17)
      text18 = SetEntityInvincible
      workingValue17 = localValue32
      stateFlag23 = false
      text18(workingValue17, stateFlag23)
      text18 = CMG
      text18 = text18.applyMaxDefaultModsToVehicle
      workingValue17 = localValue32
      text18(workingValue17)
      text18 = SetVehRadioStation
      workingValue17 = localValue32
      stateFlag23 = "OFF"
      text18(workingValue17, stateFlag23)
      text18 = dataCollection18
      text18 = text18()
      if not text18 then
        text18 = DeleteEntity
        workingValue17 = localValue32
        -- Beginner: Delete a GTA entity.
        text18(workingValue17)
        return
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    workingValue(text8)
  end
end
dataCollection20 = false
tableHelper2 = {}
dataCollection21 = {}
dataCollection22 = "Offroader"
dataCollection21[1] = dataCollection22
dataCollection22 = 1
createVector33 = vector3
dataCollection23 = 2120.3332519531
dataCollection24 = 5278.6479492188
dataCollection25 = 152.3650390625
createVector33 = createVector33(dataCollection23, dataCollection24, dataCollection25)
dataCollection23 = 0
dataCollection24 = 1
dataCollection25 = 0
dataCollection26 = false
dataCollection27 = false
dataCollection28 = 0.0
dataCollection29 = nil
dataCollection30 = 0

-- === HELPER FUNCTION (decompiler name: dataCollection31; parameters: none) ===
function dataCollection31()
  local localValue1, localValue2
  localValue1 = false
  dataCollection20 = localValue1
  localValue1 = DeleteEntity
  localValue2 = dataCollection23
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = 0
  dataCollection23 = localValue1
  localValue1 = 1
  dataCollection24 = localValue1
  localValue1 = 0
  dataCollection25 = localValue1
  localValue1 = 0.0
  dataCollection28 = localValue1
  localValue1 = notify
  localValue2 = "~r~Automated handling disabled."
  -- Beginner: Show a notification to the player.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: dataCollection32; parameters: none) ===
function dataCollection32()
  local localValue1, localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20
  localValue1 = tableHelper2
  localValue1 = #localValue1
  if 0 == localValue1 then
    localValue1 = notify
    localValue2 = "~r~No spawncodes set for automated handling."
    localValue1(localValue2)
    return
  end
  localValue1 = false
  localValue3 = dataCollection22
  localValue2 = dataCollection21
  localValue2 = localValue2[localValue3]
  localValue3 = pairs
  text17 = dataCollection15
  localValue3, text17, number24, modelHash = localValue3(text17)
  for cmgOperation5, workingValue18 in localValue3, text17, number24, modelHash do
    if workingValue18 == localValue2 then
      createVector32 = cmgOperation5
      createVector3 = workingValue18
      localValue1 = true
      break
    end
  end
  if not localValue1 then
    localValue3 = notify
    text17 = string
    text17 = text17.format
    number24 = "~r~Unable to find markers for %s. Is this valid?"
    modelHash = localValue2
    text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20 = text17(number24, modelHash)
    -- Beginner: Show a notification to the player.
    localValue3(text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20)
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.getTargetSpeedFromVehicleType
  text17 = string
  text17 = text17.lower
  number24 = localValue2
  text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20 = text17(number24)
  localValue3 = localValue3(text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20)
  if not localValue3 then
    localValue3 = 250.0
  end
  text17 = localValue3 * 0.44704
  dataCollection28 = text17
  text17 = nil
  dataCollection29 = text17
  text17 = true
  dataCollection20 = text17
  text17 = notify
  number24 = "~g~Automated handling enabled."
  text17(number24)
end

-- === HELPER FUNCTION (decompiler name: dataCollection33; parameters: localValue1) ===
function dataCollection33(localValue1)
  local localValue2, localValue3
  localValue1 = localValue1 * 10000.0
  localValue2 = localValue1 % 1.0
  localValue3 = 0.5
  if localValue2 > localValue3 then
    localValue2 = math
    localValue2 = localValue2.ceil
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep18
    end
  end
  localValue2 = math
  localValue2 = localValue2.floor
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  ::continueAtStep18::
  localValue2 = localValue2 / 10000.0
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: dataCollection34; parameters: localValue1, localValue2, localValue3) ===
function dataCollection34(localValue1, localValue2, localValue3)
  local text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7, workingValue8
  text17 = ""

  -- === HELPER FUNCTION (decompiler name: number24; parameters: localValue12) ===
  function number24(localValue12)
    local localValue22, localValue32
    localValue22 = text17
    if "" ~= localValue22 then
      localValue22 = text17
      localValue32 = [[

			]]
      localValue22 = localValue22 .. localValue32
      text17 = localValue22
    end
    localValue22 = text17
    localValue32 = localValue12
    localValue22 = localValue22 .. localValue32
    text17 = localValue22
  end
  modelHash = pairs
  cmgOperation5 = localValue2
  modelHash, cmgOperation5, workingValue18, workingValue20 = modelHash(cmgOperation5)
  for workingValue21, workingValue in modelHash, cmgOperation5, workingValue18, workingValue20 do
    text8 = workingValue.type
    if "float" == text8 then
      text8 = GetVehicleHandlingFloat
      stateFlag4 = localValue1
      workingValue3 = localValue3
      nameValue = workingValue.name
      text8 = text8(stateFlag4, workingValue3, nameValue)
      stateFlag4 = number24
      workingValue3 = string
      workingValue3 = workingValue3.format
      nameValue = "<%s value=\"%s\" />"
      nameValue2 = workingValue.name
      number5 = dataCollection33
      number7 = text8
      number5, number7, workingValue8 = number5(number7)
      workingValue3, nameValue, nameValue2, number5, number7, workingValue8 = workingValue3(nameValue, nameValue2, number5, number7, workingValue8)
      stateFlag4(workingValue3, nameValue, nameValue2, number5, number7, workingValue8)
    else
      text8 = workingValue.type
      if "integer" == text8 then
        text8 = GetVehicleHandlingInt
        stateFlag4 = localValue1
        workingValue3 = localValue3
        nameValue = workingValue.name
        text8 = text8(stateFlag4, workingValue3, nameValue)
        stateFlag4 = number24
        workingValue3 = string
        workingValue3 = workingValue3.format
        nameValue = "<%s value=\"%s\" />"
        nameValue2 = workingValue.name
        number5 = text8
        workingValue3, nameValue, nameValue2, number5, number7, workingValue8 = workingValue3(nameValue, nameValue2, number5)
        stateFlag4(workingValue3, nameValue, nameValue2, number5, number7, workingValue8)
      else
        text8 = workingValue.type
        if "vector" == text8 then
          text8 = GetVehicleHandlingVector
          stateFlag4 = localValue1
          workingValue3 = localValue3
          nameValue = workingValue.name
          text8 = text8(stateFlag4, workingValue3, nameValue)
          stateFlag4 = number24
          workingValue3 = string
          workingValue3 = workingValue3.format
          nameValue = "<%s x=\"%s\" y=\"%s\" z=\"%s\" />"
          nameValue2 = workingValue.name
          number5 = text8.x
          number7 = text8.y
          workingValue8 = text8.z
          workingValue3, nameValue, nameValue2, number5, number7, workingValue8 = workingValue3(nameValue, nameValue2, number5, number7, workingValue8)
          stateFlag4(workingValue3, nameValue, nameValue2, number5, number7, workingValue8)
        end
      end
    end
  end
  return text17
end

-- === HELPER FUNCTION (decompiler name: dataCollection35; parameters: localValue1) ===
function dataCollection35(localValue1)
  local localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7
  localValue2 = dataCollection25
  localValue2 = localValue1 - localValue2
  localValue3 = CMG
  localValue3 = localValue3.drawDebugText
  text17 = "Last Spawn Time: %s msec ago"
  number24 = localValue2
  localValue3(text17, number24)
  localValue3 = 30000
  if localValue2 < localValue3 then
    localValue3 = DoesEntityExist
    text17 = dataCollection23
    localValue3 = localValue3(text17)
    if localValue3 then
      localValue3 = dataCollection29
      if nil == localValue3 then
        return
      end
    end
  end
  text17 = dataCollection24
  localValue3 = tableHelper2
  localValue3 = localValue3[text17]
  number24 = dataCollection22
  text17 = dataCollection21
  text17 = text17[number24]
  number24 = dataCollection29
  if true == number24 then
    number24 = dataCollection24
    number24 = number24 + 1
    dataCollection24 = number24
    number24 = 0
    dataCollection30 = number24
    number24 = CMG
    number24 = number24.getVehicleTypeFromModel
    modelHash = GetEntityModel
    cmgOperation5 = dataCollection23
    modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7 = modelHash(cmgOperation5)
    number24 = number24(modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7)
    modelHash = dataCollection34
    cmgOperation5 = dataCollection23
    workingValue18 = dataCollection
    workingValue20 = "CHandlingData"
    modelHash = modelHash(cmgOperation5, workingValue18, workingValue20)
    cmgOperation5 = TriggerServerEvent
    workingValue18 = "ffc09bc489"
    workingValue20 = localValue3
    workingValue21 = number24
    workingValue = text17
    text8 = modelHash
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ffc09bc489".
    cmgOperation5(workingValue18, workingValue20, workingValue21, workingValue, text8)
  end
  number24 = dataCollection30
  if number24 > 5 then
    number24 = dataCollection24
    number24 = number24 + 1
    dataCollection24 = number24
    number24 = 0
    dataCollection30 = number24
    number24 = notify
    modelHash = string
    modelHash = modelHash.format
    cmgOperation5 = "~r~Failed to adjust vehicle %s, moving to next."
    workingValue18 = localValue3
    modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7 = modelHash(cmgOperation5, workingValue18)
    -- Beginner: Show a notification to the player.
    number24(modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7)
  end
  number24 = DeleteEntity
  modelHash = dataCollection23
  -- Beginner: Delete a GTA entity.
  number24(modelHash)
  number24 = 0
  dataCollection23 = number24
  modelHash = dataCollection24
  number24 = tableHelper2
  number24 = number24[modelHash]
  if not number24 then
    modelHash = dataCollection31
    modelHash()
    return
  end
  modelHash = CMG
  modelHash = modelHash.loadModel
  cmgOperation5 = number24
  modelHash = modelHash(cmgOperation5)
  if not modelHash then
    return
  end
  cmgOperation5 = math
  cmgOperation5 = cmgOperation5.atan
  workingValue18 = createVector33.x
  workingValue20 = tableHelper.x
  workingValue18 = workingValue18 - workingValue20
  workingValue20 = createVector33.y
  workingValue21 = tableHelper.y
  workingValue20 = workingValue20 - workingValue21
  cmgOperation5 = cmgOperation5(workingValue18, workingValue20)
  workingValue18 = CMG
  workingValue18 = workingValue18.spawnVehicle
  workingValue20 = modelHash
  workingValue21 = tableHelper.x
  workingValue = tableHelper.y
  text8 = tableHelper.z
  stateFlag4 = math
  stateFlag4 = stateFlag4.deg
  workingValue3 = cmgOperation5
  stateFlag4 = stateFlag4(workingValue3)
  workingValue3 = true
  nameValue = false
  nameValue2 = false
  workingValue18 = workingValue18(workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2)
  if 0 == workingValue18 then
    return
  end
  workingValue20 = rageUiOperation5
  workingValue20[workingValue18] = true
  workingValue20 = SetVehicleEngineOn
  workingValue21 = workingValue18
  workingValue = true
  text8 = true
  stateFlag4 = false
  workingValue20(workingValue21, workingValue, text8, stateFlag4)
  workingValue20 = SetEntityProofs
  workingValue21 = workingValue18
  workingValue = true
  text8 = true
  stateFlag4 = true
  workingValue3 = true
  nameValue = true
  nameValue2 = true
  number5 = true
  number7 = true
  workingValue20(workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7)
  workingValue20 = CMG
  workingValue20 = workingValue20.applyMaxDefaultModsToVehicle
  workingValue21 = workingValue18
  workingValue20(workingValue21)
  workingValue20 = dataCollection10
  workingValue21 = text17
  workingValue = workingValue18
  workingValue20(workingValue21, workingValue)
  workingValue20 = dataCollection30
  workingValue20 = workingValue20 + 1
  dataCollection30 = workingValue20
  workingValue20 = dataCollection30
  if workingValue20 > 1 then
    workingValue20 = dataCollection26
    workingValue20 = not workingValue20
    workingValue21 = dataCollection27
    if workingValue20 or workingValue21 then
      workingValue = GetVehicleHandlingFloat
      text8 = workingValue18
      stateFlag4 = "CHandlingData"
      workingValue3 = "fInitialDragCoeff"
      workingValue = workingValue(text8, stateFlag4, workingValue3)
      text8 = GetVehicleHandlingFloat
      stateFlag4 = workingValue18
      workingValue3 = "CHandlingData"
      nameValue = "fInitialDriveForce"
      text8 = text8(stateFlag4, workingValue3, nameValue)
      if workingValue20 then
        stateFlag4 = -0.05
        if stateFlag4 then
          goto continueAtStep175
        end
      end
      stateFlag4 = 0.05
      ::continueAtStep175::
      workingValue3 = dataCollection30
      stateFlag4 = stateFlag4 * workingValue3
      workingValue = workingValue + stateFlag4
      if workingValue20 then
        stateFlag4 = -0.01
        if stateFlag4 then
          goto continueAtStep186
        end
      end
      stateFlag4 = 0.01
      ::continueAtStep186::
      workingValue3 = dataCollection30
      stateFlag4 = stateFlag4 * workingValue3
      text8 = text8 + stateFlag4
      stateFlag4 = SetVehicleHandlingFloat
      workingValue3 = workingValue18
      nameValue = "CHandlingData"
      nameValue2 = "fInitialDragCoeff"
      number5 = workingValue
      stateFlag4(workingValue3, nameValue, nameValue2, number5)
      stateFlag4 = SetVehicleHandlingFloat
      workingValue3 = workingValue18
      nameValue = "CHandlingData"
      nameValue2 = "fInitialDriveForce"
      number5 = text8
      stateFlag4(workingValue3, nameValue, nameValue2, number5)
      stateFlag4 = dataCollection9
      workingValue3 = workingValue18
      stateFlag4(workingValue3)
    end
  end
  dataCollection23 = workingValue18
  dataCollection25 = localValue1
  workingValue20 = false
  dataCollection26 = workingValue20
  workingValue20 = false
  dataCollection27 = workingValue20
  workingValue20 = nil
  dataCollection29 = workingValue20
end

-- === HELPER FUNCTION (decompiler name: dataCollection36; parameters: none) ===
function dataCollection36()
  local localValue1, localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18
  localValue2 = createVector3
  localValue1 = dataCollection13
  localValue1 = localValue1[localValue2]
  localValue2 = GetEntityCoords
  localValue3 = dataCollection23
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(localValue3)
  localValue3 = tableHelper
  localValue3 = localValue2 - localValue3
  localValue3 = #localValue3
  text17 = localValue1.startDistance
  if localValue3 > text17 then
    localValue3 = true
    dataCollection26 = localValue3
  end
  localValue3 = GetEntitySpeed
  text17 = dataCollection23
  -- Beginner: result below is speed.
  localValue3 = localValue3(text17)
  text17 = dataCollection28
  text17 = text17 - 1.0
  if localValue3 >= text17 then
    text17 = dataCollection29
    if nil == text17 then
      text17 = dataCollection26
      if text17 then
        text17 = dataCollection27
        text17 = not text17
      end
      dataCollection29 = text17
    end
  end
  text17 = CMG
  text17 = text17.drawDebugText
  number24 = "Speed: %s Target: %s"
  modelHash = math
  modelHash = modelHash.floor
  cmgOperation5 = localValue3
  modelHash = modelHash(cmgOperation5)
  cmgOperation5 = math
  cmgOperation5 = cmgOperation5.floor
  workingValue18 = dataCollection28
  cmgOperation5, workingValue18 = cmgOperation5(workingValue18)
  text17(number24, modelHash, cmgOperation5, workingValue18)
  text17 = tableHelper
  text17 = localValue2 - text17
  text17 = #text17
  number24 = localValue1.endDistance
  if text17 > number24 then
    text17 = true
    dataCollection27 = text17
  end
  text17 = dataCollection27
  if text17 then
    text17 = false
    dataCollection29 = text17
  end
  text17 = CMG
  text17 = text17.drawDebugText
  number24 = "Hit Start: %s"
  modelHash = dataCollection26
  if modelHash then
    modelHash = "Yes"
    if modelHash then
      goto continueAtStep69
    end
  end
  modelHash = "No"
  ::continueAtStep69::
  text17(number24, modelHash)
  text17 = CMG
  text17 = text17.drawDebugText
  number24 = "Hit End: %s"
  modelHash = dataCollection27
  if modelHash then
    modelHash = "Yes"
    if modelHash then
      goto continueAtStep80
    end
  end
  modelHash = "No"
  ::continueAtStep80::
  text17(number24, modelHash)
  text17 = "Pending"
  number24 = dataCollection29
  if true == number24 then
    text17 = "Success"
  else
    number24 = dataCollection29
    if false == number24 then
      text17 = "Failed"
    end
  end
  number24 = CMG
  number24 = number24.drawDebugText
  modelHash = "Has Done: %s"
  cmgOperation5 = text17
  number24(modelHash, cmgOperation5)
end

-- === HELPER FUNCTION (decompiler name: dataCollection37; parameters: none) ===
function dataCollection37()
  local localValue1, localValue2, localValue3, text17, number24
  localValue1 = CMG
  localValue1 = localValue1.drawDebugText
  localValue2 = "----------Automated Handling ----------"
  localValue1(localValue2)
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue2 = dataCollection35
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = dataCollection23
  if 0 == localValue2 then
    return
  end
  localValue2 = SetControlNormal
  localValue3 = 0
  text17 = 71
  number24 = 1.0
  localValue2(localValue3, text17, number24)
  localValue2 = dataCollection36
  localValue2()
end
rageUiOperation2 = CMG
dataCollection38 = "applyMaxDefaultModsToVehicle"

-- === HELPER FUNCTION (decompiler name: dataCollection39; parameters: localValue1) ===
function dataCollection39(localValue1)
  local localValue2, localValue3, text17, number24, modelHash
  localValue2 = SetVehicleModKit
  localValue3 = localValue1
  text17 = 0
  localValue2(localValue3, text17)
  localValue2 = CMG
  localValue2 = localValue2.setVehicleMod
  localValue3 = localValue1
  text17 = 11
  number24 = 2
  modelHash = false
  localValue2(localValue3, text17, number24, modelHash)
  localValue2 = CMG
  localValue2 = localValue2.setVehicleMod
  localValue3 = localValue1
  text17 = 13
  number24 = 2
  modelHash = false
  localValue2(localValue3, text17, number24, modelHash)
  localValue2 = CMG
  localValue2 = localValue2.setVehicleMod
  localValue3 = localValue1
  text17 = 12
  number24 = 2
  modelHash = false
  localValue2(localValue3, text17, number24, modelHash)
  localValue2 = CMG
  localValue2 = localValue2.setVehicleMod
  localValue3 = localValue1
  text17 = 15
  number24 = 3
  modelHash = false
  localValue2(localValue3, text17, number24, modelHash)
  localValue2 = ToggleVehicleMod
  localValue3 = localValue1
  text17 = 18
  number24 = true
  localValue2(localValue3, text17, number24)
end
rageUiOperation2[dataCollection38] = dataCollection39
rageUiOperation2 = RageUI
dataCollection38 = "CreateWhile"
rageUiOperation2 = rageUiOperation2[dataCollection38]
dataCollection38 = 1.0
dataCollection39 = RMenu
dataCollection40 = dataCollection39
dataCollection39 = dataCollection39.Get
dataCollection41 = "cardev"
text22 = "mainmenu"
-- Beginner: result below is menu.
dataCollection39 = dataCollection39(dataCollection40, dataCollection41, text22)
dataCollection40 = nil

-- === HELPER FUNCTION (decompiler name: dataCollection41; parameters: none) ===
function dataCollection41()
  local localValue1, localValue2, localValue3, text17, number24, modelHash, cmgOperation5
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text17 = "cardev"
  number24 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text17, number24)
  localValue3 = true
  text17 = true
  number24 = true

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local localValue12, localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29
    localValue12 = dataCollection18
    localValue12 = localValue12()
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Spawn Vehicle (No Mods)"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4, stateFlag24, stateFlag26
        if localValue33 then
          localValue4 = CMG
          localValue4 = localValue4.clientPrompt
          cmgOperation4 = "Spawncode:"
          stateFlag24 = ""

          -- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: localValue14) ===
          function stateFlag26(localValue14)
            local stringHelper3, workingValue14, cmgOperation3, text19, text21, stateFlag27, number26, heading, cmgOperation6, stateFlag2, stateFlag3
            stringHelper3 = dataCollection18
            stringHelper3 = stringHelper3()
            if not stringHelper3 then
              return
            end
            stringHelper3 = string
            stringHelper3 = stringHelper3.gsub
            workingValue14 = localValue14
            cmgOperation3 = "%s+"
            text19 = ""
            stringHelper3 = stringHelper3(workingValue14, cmgOperation3, text19)
            localValue14 = stringHelper3
            if "" ~= localValue14 then
              stringHelper3 = CMG
              stringHelper3 = stringHelper3.getPlayerBucket
              stringHelper3 = stringHelper3()
              if 333 == stringHelper3 then
                stringHelper3 = CMG
                stringHelper3 = stringHelper3.loadModel
                workingValue14 = localValue14
                stringHelper3 = stringHelper3(workingValue14)
                if stringHelper3 then
                  workingValue14 = dataCollection18
                  workingValue14 = workingValue14()
                  if workingValue14 then
                    goto continueAtStep31
                  end
                end
                return
                ::continueAtStep31::
                workingValue14 = TriggerServerEvent
                cmgOperation3 = "1e0bbaf6cd"
                text19 = localValue14
                text21 = "/cardev"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
                workingValue14(cmgOperation3, text19, text21)
                workingValue14 = CMG
                workingValue14 = workingValue14.getPlayerCoords
                -- Beginner: result below is playerCoords.
                workingValue14 = workingValue14()
                cmgOperation3 = CMG
                cmgOperation3 = cmgOperation3.requestEntitySpawn
                text19 = "cardev"
                text21 = stringHelper3
                cmgOperation3(text19, text21)
                cmgOperation3 = CMG
                cmgOperation3 = cmgOperation3.spawnVehicle
                text19 = stringHelper3
                text21 = workingValue14.x
                stateFlag27 = workingValue14.y
                number26 = workingValue14.z
                heading = GetEntityHeading
                cmgOperation6 = CMG
                cmgOperation6 = cmgOperation6.getPlayerPed
                cmgOperation6, stateFlag2, stateFlag3 = cmgOperation6()
                -- Beginner: result below is heading.
                heading = heading(cmgOperation6, stateFlag2, stateFlag3)
                cmgOperation6 = true
                stateFlag2 = true
                stateFlag3 = true
                cmgOperation3 = cmgOperation3(text19, text21, stateFlag27, number26, heading, cmgOperation6, stateFlag2, stateFlag3)
                text19 = CMG
                text19 = text19.initLocalVehicle
                text21 = cmgOperation3
                text19(text21)
                text19 = rageUiOperation5
                text19[cmgOperation3] = true
                text19 = SetVehicleOnGroundProperly
                text21 = cmgOperation3
                text19(text21)
                text19 = SetEntityInvincible
                text21 = cmgOperation3
                stateFlag27 = false
                text19(text21, stateFlag27)
                text19 = SetPedIntoVehicle
                text21 = CMG
                text21 = text21.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                text21 = text21()
                stateFlag27 = cmgOperation3
                number26 = -1
                text19(text21, stateFlag27, number26)
                text19 = SetModelAsNoLongerNeeded
                text21 = stringHelper3
                text19(text21)
                text19 = SetVehRadioStation
                text21 = cmgOperation3
                stateFlag27 = "OFF"
                text19(text21, stateFlag27)
                text19 = Wait
                text21 = 500
                text19(text21)
                text19 = SetVehRadioStation
                text21 = cmgOperation3
                stateFlag27 = "OFF"
                text19(text21, stateFlag27)
                text19 = dataCollection18
                text19 = text19()
                if not text19 then
                  text19 = DeleteEntity
                  text21 = cmgOperation3
                  -- Beginner: Delete a GTA entity.
                  text19(text21)
                end
              end
            end
          end
          localValue4(cmgOperation4, stateFlag24, stateFlag26)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Spawn Vehicle (Full Mods)"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4, stateFlag24, stateFlag26
        if localValue33 then
          localValue4 = CMG
          localValue4 = localValue4.clientPrompt
          cmgOperation4 = "Spawncode:"
          stateFlag24 = ""

          -- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: localValue14) ===
          function stateFlag26(localValue14)
            local stringHelper3, workingValue14, cmgOperation3, text19, text21, stateFlag27, number26, heading, cmgOperation6, stateFlag2, stateFlag3
            stringHelper3 = dataCollection18
            stringHelper3 = stringHelper3()
            if not stringHelper3 then
              return
            end
            stringHelper3 = string
            stringHelper3 = stringHelper3.gsub
            workingValue14 = localValue14
            cmgOperation3 = "%s+"
            text19 = ""
            stringHelper3 = stringHelper3(workingValue14, cmgOperation3, text19)
            localValue14 = stringHelper3
            if "" ~= localValue14 then
              stringHelper3 = CMG
              stringHelper3 = stringHelper3.getPlayerBucket
              stringHelper3 = stringHelper3()
              if 333 == stringHelper3 then
                stringHelper3 = CMG
                stringHelper3 = stringHelper3.loadModel
                workingValue14 = localValue14
                stringHelper3 = stringHelper3(workingValue14)
                if stringHelper3 then
                  workingValue14 = dataCollection18
                  workingValue14 = workingValue14()
                  if workingValue14 then
                    goto continueAtStep31
                  end
                end
                return
                ::continueAtStep31::
                workingValue14 = TriggerServerEvent
                cmgOperation3 = "1e0bbaf6cd"
                text19 = localValue14
                text21 = "/cardev"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
                workingValue14(cmgOperation3, text19, text21)
                workingValue14 = CMG
                workingValue14 = workingValue14.getPlayerCoords
                -- Beginner: result below is playerCoords.
                workingValue14 = workingValue14()
                cmgOperation3 = CMG
                cmgOperation3 = cmgOperation3.requestEntitySpawn
                text19 = "cardev"
                text21 = stringHelper3
                cmgOperation3(text19, text21)
                cmgOperation3 = CMG
                cmgOperation3 = cmgOperation3.spawnVehicle
                text19 = stringHelper3
                text21 = workingValue14.x
                stateFlag27 = workingValue14.y
                number26 = workingValue14.z
                heading = GetEntityHeading
                cmgOperation6 = CMG
                cmgOperation6 = cmgOperation6.getPlayerPed
                cmgOperation6, stateFlag2, stateFlag3 = cmgOperation6()
                -- Beginner: result below is heading.
                heading = heading(cmgOperation6, stateFlag2, stateFlag3)
                cmgOperation6 = true
                stateFlag2 = true
                stateFlag3 = true
                cmgOperation3 = cmgOperation3(text19, text21, stateFlag27, number26, heading, cmgOperation6, stateFlag2, stateFlag3)
                text19 = CMG
                text19 = text19.initLocalVehicle
                text21 = cmgOperation3
                text19(text21)
                text19 = rageUiOperation5
                text19[cmgOperation3] = true
                text19 = SetVehicleOnGroundProperly
                text21 = cmgOperation3
                text19(text21)
                text19 = SetEntityInvincible
                text21 = cmgOperation3
                stateFlag27 = false
                text19(text21, stateFlag27)
                text19 = CMG
                text19 = text19.applyMaxDefaultModsToVehicle
                text21 = cmgOperation3
                text19(text21)
                text19 = SetPedIntoVehicle
                text21 = CMG
                text21 = text21.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                text21 = text21()
                stateFlag27 = cmgOperation3
                number26 = -1
                text19(text21, stateFlag27, number26)
                text19 = SetModelAsNoLongerNeeded
                text21 = stringHelper3
                text19(text21)
                text19 = SetVehRadioStation
                text21 = cmgOperation3
                stateFlag27 = "OFF"
                text19(text21, stateFlag27)
                text19 = Wait
                text21 = 500
                text19(text21)
                text19 = SetVehRadioStation
                text21 = cmgOperation3
                stateFlag27 = "OFF"
                text19(text21, stateFlag27)
                text19 = dataCollection18
                text19 = text19()
                if not text19 then
                  text19 = DeleteEntity
                  text21 = cmgOperation3
                  -- Beginner: Delete a GTA entity.
                  text19(text21)
                end
              end
            end
          end
          localValue4(cmgOperation4, stateFlag24, stateFlag26)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Delete Vehicle"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4, stateFlag24, stateFlag26, number25
        if localValue33 then
          localValue4 = GetVehiclePedIsIn
          cmgOperation4 = CMG
          cmgOperation4 = cmgOperation4.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation4 = cmgOperation4()
          stateFlag24 = false
          -- Beginner: result below is currentVehicle.
          localValue4 = localValue4(cmgOperation4, stateFlag24)
          cmgOperation4 = NetworkGetEntityIsNetworked
          stateFlag24 = localValue4
          cmgOperation4 = cmgOperation4(stateFlag24)
          if cmgOperation4 then
            cmgOperation4 = NetworkGetNetworkIdFromEntity
            stateFlag24 = localValue4
            cmgOperation4 = cmgOperation4(stateFlag24)
            if 0 ~= cmgOperation4 then
              stateFlag24 = TriggerServerEvent
              stateFlag26 = "8d97d3c809"
              number25 = cmgOperation4
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8d97d3c809".
              stateFlag24(stateFlag26, number25)
            end
          else
            cmgOperation4 = DeleteEntity
            stateFlag24 = localValue4
            -- Beginner: Delete a GTA entity.
            cmgOperation4(stateFlag24)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Fix Vehicle"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4, stateFlag24, stateFlag26, number25
        if localValue33 then
          localValue4 = CMG
          localValue4 = localValue4.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          localValue4 = localValue4()
          cmgOperation4 = IsPedInAnyVehicle
          stateFlag24 = localValue4
          stateFlag26 = true
          cmgOperation4 = cmgOperation4(stateFlag24, stateFlag26)
          if cmgOperation4 then
            cmgOperation4 = GetVehiclePedIsIn
            stateFlag24 = localValue4
            stateFlag26 = false
            -- Beginner: result below is currentVehicle.
            cmgOperation4 = cmgOperation4(stateFlag24, stateFlag26)
            stateFlag24 = SetVehicleEngineHealth
            stateFlag26 = cmgOperation4
            number25 = 9999
            stateFlag24(stateFlag26, number25)
            stateFlag24 = SetVehiclePetrolTankHealth
            stateFlag26 = cmgOperation4
            number25 = 9999
            stateFlag24(stateFlag26, number25)
            stateFlag24 = SetVehicleFixed
            stateFlag26 = cmgOperation4
            stateFlag24(stateFlag26)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23)
      localValue12 = RageUI
      localValue12 = localValue12.List
      localValue22 = "Teleport"
      localValue32 = text15
      text18 = rageUiOperation
      workingValue17 = nil
      stateFlag23 = {}
      stateFlag25 = true

      -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue13, localValue23, localValue33, localValue4) ===
      function workingValue19(localValue13, localValue23, localValue33, localValue4)
        local cmgOperation4, stateFlag24, stateFlag26
        rageUiOperation = localValue4
        if localValue33 then
          cmgOperation4 = CMG
          cmgOperation4 = cmgOperation4.teleport
          stateFlag26 = rageUiOperation
          stateFlag24 = text16
          stateFlag24 = stateFlag24[stateFlag26]
          stateFlag26 = true
          cmgOperation4(stateFlag24, stateFlag26)
        end
      end

      -- === HELPER FUNCTION (decompiler name: stateFlag28; parameters: none) ===
      function stateFlag28()
        local localValue13, localValue23
      end
      -- Beginner: Draw a RageUI list selector.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28)
      localValue12 = CMG
      localValue12 = localValue12.hasClientPermission
      localValue22 = "cardev.whitelisted"
      localValue12 = localValue12(localValue22)
      if localValue12 then
        localValue12 = RageUI
        localValue12 = localValue12.List
        localValue22 = "Marker Display"
        localValue32 = dataCollection15
        text18 = createVector32
        workingValue17 = nil
        stateFlag23 = {}
        stateFlag25 = true

        -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue13, localValue23, localValue33, localValue4) ===
        function workingValue19(localValue13, localValue23, localValue33, localValue4)
          local cmgOperation4
          cmgOperation4 = createVector32
          if localValue4 ~= cmgOperation4 then
            if 1 == localValue4 then
              cmgOperation4 = nil
              createVector3 = cmgOperation4
            else
              cmgOperation4 = dataCollection15
              cmgOperation4 = cmgOperation4[localValue4]
              if cmgOperation4 then
                cmgOperation4 = dataCollection15
                cmgOperation4 = cmgOperation4[localValue4]
                createVector3 = cmgOperation4
              end
            end
            createVector32 = localValue4
          end
        end
        localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19)
        localValue12 = RageUI
        localValue12 = localValue12.List
        localValue22 = "Apply Baller Template"
        localValue32 = dataCollection4
        text18 = dataCollection6
        workingValue17 = nil
        stateFlag23 = {}
        stateFlag25 = true

        -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue13, localValue23, localValue33, localValue4) ===
        function workingValue19(localValue13, localValue23, localValue33, localValue4)
          local cmgOperation4, stateFlag24, stateFlag26, number25, number27
          cmgOperation4 = dataCollection6
          if localValue4 ~= cmgOperation4 then
            dataCollection6 = localValue4
          end
          if localValue33 then
            stateFlag24 = dataCollection6
            cmgOperation4 = dataCollection4
            cmgOperation4 = cmgOperation4[stateFlag24]
            stateFlag24 = CMG
            stateFlag24 = stateFlag24.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            stateFlag24 = stateFlag24()
            if 0 == stateFlag24 then
              stateFlag26 = notify
              number25 = "~r~You are not in a vehicle."
              -- Beginner: Show a notification to the player.
              stateFlag26(number25)
              return
            end
            stateFlag26 = dataCollection10
            number25 = cmgOperation4
            number27 = stateFlag24
            stateFlag26(number25, number27)
          end
        end
        -- Beginner: Draw a RageUI list selector.
        localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19)
        localValue12 = RageUI
        localValue12 = localValue12.List
        localValue22 = "Apply Import Template"
        localValue32 = dataCollection7
        text18 = dataCollection8
        workingValue17 = nil
        stateFlag23 = {}
        stateFlag25 = true

        -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue13, localValue23, localValue33, localValue4) ===
        function workingValue19(localValue13, localValue23, localValue33, localValue4)
          local cmgOperation4
          cmgOperation4 = dataCollection8
          if localValue4 ~= cmgOperation4 then
            dataCollection8 = localValue4
          end
          if localValue33 then
            cmgOperation4 = dataCollection11
            cmgOperation4()
          end
        end
        -- Beginner: Draw a RageUI list selector.
        localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19)
      end
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Cycle through seats"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4, stateFlag24, stateFlag26, number25, number27, dataCollection42, waitCall, number2, number3, workingValue4
        if localValue33 then
          localValue4 = CMG
          localValue4 = localValue4.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          localValue4 = localValue4()
          cmgOperation4 = IsPedInAnyVehicle
          stateFlag24 = localValue4
          stateFlag26 = true
          cmgOperation4 = cmgOperation4(stateFlag24, stateFlag26)
          if cmgOperation4 then
            cmgOperation4 = GetVehiclePedIsIn
            stateFlag24 = localValue4
            stateFlag26 = false
            -- Beginner: result below is currentVehicle.
            cmgOperation4 = cmgOperation4(stateFlag24, stateFlag26)
            stateFlag24 = GetVehicleModelNumberOfSeats
            stateFlag26 = GetEntityModel
            number25 = cmgOperation4
            stateFlag26, number25, number27, dataCollection42, waitCall, number2, number3, workingValue4 = stateFlag26(number25)
            stateFlag24 = stateFlag24(stateFlag26, number25, number27, dataCollection42, waitCall, number2, number3, workingValue4)
            stateFlag26 = -1
            number25 = stateFlag24 - 2
            number27 = 1
            for dataCollection42 = stateFlag26, number25, number27 do
              waitCall = IsVehicleSeatFree
              number2 = cmgOperation4
              number3 = dataCollection42
              waitCall = waitCall(number2, number3)
              if waitCall then
                waitCall = TaskWarpPedIntoVehicle
                number2 = localValue4
                number3 = cmgOperation4
                workingValue4 = dataCollection42
                waitCall(number2, number3, workingValue4)
                waitCall = Wait
                number2 = 2000
                waitCall(number2)
              end
            end
          else
            cmgOperation4 = tCMG
            cmgOperation4 = cmgOperation4.notify
            stateFlag24 = "~r~Not in a vehicle."
            -- Beginner: Show a notification to the player.
            cmgOperation4(stateFlag24)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Get API Key"
      localValue32 = "Gets your API key to be used in localhost. Do not share this key."
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4
        if localValue33 then
          localValue4 = TriggerServerEvent
          cmgOperation4 = "ff5e215cf8"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ff5e215cf8".
          localValue4(cmgOperation4)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Vehicle Mods"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4, stateFlag24, stateFlag26
        if localValue33 then
          localValue4 = CMG
          localValue4 = localValue4.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          localValue4 = localValue4()
          cmgOperation4 = IsPedInAnyVehicle
          stateFlag24 = localValue4
          stateFlag26 = true
          cmgOperation4 = cmgOperation4(stateFlag24, stateFlag26)
          if not cmgOperation4 then
            cmgOperation4 = tCMG
            cmgOperation4 = cmgOperation4.notify
            stateFlag24 = "~r~Not in a vehicle."
            -- Beginner: Show a notification to the player.
            cmgOperation4(stateFlag24)
          end
        end
      end
      stateFlag25 = RMenu
      workingValue19 = stateFlag25
      stateFlag25 = stateFlag25.Get
      stateFlag28 = "cardev"
      stateFlag29 = "vehiclemods"
      stateFlag25, workingValue19, stateFlag28, stateFlag29 = stateFlag25(workingValue19, stateFlag28, stateFlag29)
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Vehicle Extras"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: none) ===
      function stateFlag23()
        local localValue13, localValue23
      end
      stateFlag25 = RMenu
      workingValue19 = stateFlag25
      stateFlag25 = stateFlag25.Get
      stateFlag28 = "cardev"
      stateFlag29 = "extras"
      stateFlag25, workingValue19, stateFlag28, stateFlag29 = stateFlag25(workingValue19, stateFlag28, stateFlag29)
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Vehicle Colours"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: none) ===
      function stateFlag23()
        local localValue13, localValue23
      end
      stateFlag25 = RMenu
      workingValue19 = stateFlag25
      stateFlag25 = stateFlag25.Get
      stateFlag28 = "cardev"
      stateFlag29 = "colours"
      stateFlag25, workingValue19, stateFlag28, stateFlag29 = stateFlag25(workingValue19, stateFlag28, stateFlag29)
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29)
      localValue12 = RageUI
      localValue12 = localValue12.List
      localValue22 = "Dirt Level"
      localValue32 = text20
      text18 = rageUiOperation3
      workingValue17 = ""
      stateFlag23 = {}
      stateFlag25 = true

      -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue13, localValue23, localValue33, localValue4) ===
      function workingValue19(localValue13, localValue23, localValue33, localValue4)
        local cmgOperation4, stateFlag24, stateFlag26, number25
        cmgOperation4 = rageUiOperation3
        if localValue4 ~= cmgOperation4 then
          rageUiOperation3 = localValue4
          cmgOperation4 = CMG
          cmgOperation4 = cmgOperation4.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          cmgOperation4 = cmgOperation4()
          if 0 ~= cmgOperation4 then
            stateFlag24 = SetVehicleDirtLevel
            stateFlag26 = cmgOperation4
            number25 = text29
            number25 = number25[localValue4]
            number25 = number25 * 15.0
            stateFlag24(stateFlag26, number25)
          else
            stateFlag24 = tCMG
            stateFlag24 = stateFlag24.notify
            stateFlag26 = "~r~Not in a vehicle."
            -- Beginner: Show a notification to the player.
            stateFlag24(stateFlag26)
          end
        end
      end
      -- Beginner: Draw a RageUI list selector.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Fill Last Vehicle"
      localValue32 = "Fills the last vehicle you was in."
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4, stateFlag24, stateFlag26, number25, number27, dataCollection42, waitCall, number2, number3, workingValue4, workingValue6, number4, workingValue7, stateFlag7, playerPed, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag14, stateFlag16
        if localValue33 then
          localValue4 = GetVehiclePedIsIn
          cmgOperation4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          cmgOperation4 = cmgOperation4()
          stateFlag24 = true
          -- Beginner: result below is currentVehicle.
          localValue4 = localValue4(cmgOperation4, stateFlag24)
          if 0 == localValue4 then
            cmgOperation4 = notify
            stateFlag24 = "~r~Can not find the last vehicle."
            -- Beginner: Show a notification to the player.
            cmgOperation4(stateFlag24)
            return
          end
          cmgOperation4 = CMG
          cmgOperation4 = cmgOperation4.loadModel
          stateFlag24 = -598109171
          cmgOperation4 = cmgOperation4(stateFlag24)
          if not cmgOperation4 then
            return
          end
          stateFlag24 = CMG
          stateFlag24 = stateFlag24.getPlayerCoords
          -- Beginner: result below is playerCoords.
          stateFlag24 = stateFlag24()
          stateFlag26 = GetEntityHeading
          number25 = PlayerPedId
          number25, number27, dataCollection42, waitCall, number2, number3, workingValue4, workingValue6, number4, workingValue7, stateFlag7, playerPed, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag14, stateFlag16 = number25()
          -- Beginner: result below is heading.
          stateFlag26 = stateFlag26(number25, number27, dataCollection42, waitCall, number2, number3, workingValue4, workingValue6, number4, workingValue7, stateFlag7, playerPed, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag14, stateFlag16)
          number25 = GetEntityModel
          number27 = localValue4
          -- Beginner: result below is modelHash.
          number25 = number25(number27)
          number27 = GetVehicleModelNumberOfSeats
          dataCollection42 = number25
          number27 = number27(dataCollection42)
          dataCollection42 = {}
          waitCall = 1
          number2 = number27
          number3 = 1
          for workingValue4 = waitCall, number2, number3 do
            workingValue6 = CreatePed
            number4 = 0
            workingValue7 = cmgOperation4
            stateFlag7 = stateFlag24.x
            playerPed = stateFlag24.y
            stateFlag8 = stateFlag24.z
            stateFlag9 = stateFlag26
            stateFlag10 = false
            stateFlag11 = false
            -- Beginner: result below is pedEntity.
            workingValue6 = workingValue6(number4, workingValue7, stateFlag7, playerPed, stateFlag8, stateFlag9, stateFlag10, stateFlag11)
            number4 = SetPedCanRagdoll
            workingValue7 = workingValue6
            stateFlag7 = false
            number4(workingValue7, stateFlag7)
            number4 = SetEntityProofs
            workingValue7 = workingValue6
            stateFlag7 = true
            playerPed = true
            stateFlag8 = true
            stateFlag9 = true
            stateFlag10 = true
            stateFlag11 = true
            stateFlag12 = true
            stateFlag14 = true
            number4(workingValue7, stateFlag7, playerPed, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag14)
            number4 = SetEntityCanBeDamaged
            workingValue7 = workingValue6
            stateFlag7 = false
            number4(workingValue7, stateFlag7)
            number4 = SetBlockingOfNonTemporaryEvents
            workingValue7 = workingValue6
            stateFlag7 = true
            number4(workingValue7, stateFlag7)
            number4 = table
            number4 = number4.insert
            workingValue7 = dataCollection42
            stateFlag7 = workingValue6
            number4(workingValue7, stateFlag7)
          end
          waitCall = pairs
          number2 = dataCollection42
          waitCall, number2, number3, workingValue4 = waitCall(number2)
          for workingValue6, number4 in waitCall, number2, number3, workingValue4 do
            workingValue7 = pairs
            stateFlag7 = dataCollection42
            workingValue7, stateFlag7, playerPed, stateFlag8 = workingValue7(stateFlag7)
            for stateFlag9, stateFlag10 in workingValue7, stateFlag7, playerPed, stateFlag8 do
              if number4 ~= stateFlag10 then
                stateFlag11 = SetEntityNoCollisionEntity
                stateFlag12 = number4
                stateFlag14 = stateFlag10
                stateFlag16 = false
                stateFlag11(stateFlag12, stateFlag14, stateFlag16)
                stateFlag11 = SetEntityNoCollisionEntity
                stateFlag12 = stateFlag10
                stateFlag14 = number4
                stateFlag16 = false
                stateFlag11(stateFlag12, stateFlag14, stateFlag16)
              end
            end
            workingValue7 = SetEntityNoCollisionEntity
            stateFlag7 = number4
            playerPed = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            playerPed = playerPed()
            stateFlag8 = false
            workingValue7(stateFlag7, playerPed, stateFlag8)
            workingValue7 = TaskEnterVehicle
            stateFlag7 = number4
            playerPed = localValue4
            stateFlag8 = -1
            stateFlag9 = workingValue6 - 2
            stateFlag10 = 2.0
            stateFlag11 = 1
            stateFlag12 = false
            workingValue7(stateFlag7, playerPed, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12)
          end
          waitCall = SetTimeout
          number2 = 30000

          -- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
          function number3()
            local localValue14, stringHelper3, workingValue14, cmgOperation3, text19, text21, stateFlag27, number26
            localValue14 = pairs
            stringHelper3 = dataCollection42
            localValue14, stringHelper3, workingValue14, cmgOperation3 = localValue14(stringHelper3)
            for text19, text21 in localValue14, stringHelper3, workingValue14, cmgOperation3 do
              stateFlag27 = DeleteEntity
              number26 = text21
              -- Beginner: Delete a GTA entity.
              stateFlag27(number26)
            end
          end
          waitCall(number2, number3)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Give Testing Weapons"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4, stateFlag24
        if localValue33 then
          localValue4 = CMG
          localValue4 = localValue4.giveWeapons
          cmgOperation4 = {}
          stateFlag24 = {}
          stateFlag24.ammo = 250
          cmgOperation4.WEAPON_GLOCKCMG = stateFlag24
          stateFlag24 = {}
          stateFlag24.ammo = 250
          cmgOperation4.WEAPON_REMINGTON700CMG = stateFlag24
          localValue4(cmgOperation4)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Delete All Cars"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4, stateFlag24, stateFlag26, number25, number27, dataCollection42, waitCall, number2, number3
        if localValue33 then
          localValue4 = 0
          cmgOperation4 = 0
          stateFlag24 = pairs
          stateFlag26 = CMG
          stateFlag26 = stateFlag26.getAllVehicles
          stateFlag26, number25, number27, dataCollection42, waitCall, number2, number3 = stateFlag26()
          stateFlag24, stateFlag26, number25, number27 = stateFlag24(stateFlag26, number25, number27, dataCollection42, waitCall, number2, number3)
          for dataCollection42, waitCall in stateFlag24, stateFlag26, number25, number27 do
            number2 = NetworkGetEntityIsNetworked
            number3 = waitCall
            number2 = number2(number3)
            if number2 then
              number2 = NetworkHasControlOfEntity
              number3 = waitCall
              number2 = number2(number3)
              if number2 then
                number2 = DeleteEntity
                number3 = waitCall
                -- Beginner: Delete a GTA entity.
                number2(number3)
                localValue4 = localValue4 + 1
              else
                cmgOperation4 = cmgOperation4 + 1
              end
            end
          end
          stateFlag24 = notify
          stateFlag26 = string
          stateFlag26 = stateFlag26.format
          number25 = "~g~Deleted %d vehicles."
          number27 = localValue4
          stateFlag26, number25, number27, dataCollection42, waitCall, number2, number3 = stateFlag26(number25, number27)
          -- Beginner: Show a notification to the player.
          stateFlag24(stateFlag26, number25, number27, dataCollection42, waitCall, number2, number3)
          if cmgOperation4 > 0 then
            stateFlag24 = notify
            stateFlag26 = string
            stateFlag26 = stateFlag26.format
            number25 = "~r~Unable to delete %d other vehicles due to lack of ownership."
            number27 = cmgOperation4
            stateFlag26, number25, number27, dataCollection42, waitCall, number2, number3 = stateFlag26(number25, number27)
            stateFlag24(stateFlag26, number25, number27, dataCollection42, waitCall, number2, number3)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Spawn By Partial Vehicle Name"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4, stateFlag24, stateFlag26
        if localValue33 then
          localValue4 = CMG
          localValue4 = localValue4.clientPrompt
          cmgOperation4 = "Enter Partial Spawncode"
          stateFlag24 = ""

          -- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: localValue14) ===
          function stateFlag26(localValue14)
            local stringHelper3, workingValue14, cmgOperation3, text19, text21, stateFlag27, number26, heading, cmgOperation6, stateFlag2, stateFlag3, workingValue2, workingValue5, stringHelper, stringHelper2, hashValue, nameValue3
            stringHelper3 = dataCollection18
            stringHelper3 = stringHelper3()
            if not stringHelper3 then
              return
            end
            stringHelper3 = string
            stringHelper3 = stringHelper3.lower
            workingValue14 = localValue14
            stringHelper3 = stringHelper3(workingValue14)
            workingValue14 = #stringHelper3
            if workingValue14 <= 1 then
              workingValue14 = notify
              cmgOperation3 = "~r~Enter at last 2 characters for the partial spawncode."
              -- Beginner: Show a notification to the player.
              workingValue14(cmgOperation3)
              return
            end
            workingValue14 = {}
            cmgOperation3 = pairs
            text19 = cmgOperation.garages
            cmgOperation3, text19, text21, stateFlag27 = cmgOperation3(text19)
            for number26, heading in cmgOperation3, text19, text21, stateFlag27 do
              cmgOperation6 = pairs
              stateFlag2 = heading
              cmgOperation6, stateFlag2, stateFlag3, workingValue2 = cmgOperation6(stateFlag2)
              for workingValue5, stringHelper in cmgOperation6, stateFlag2, stateFlag3, workingValue2 do
                if "_config" ~= workingValue5 then
                  stringHelper2 = string
                  stringHelper2 = stringHelper2.match
                  hashValue = string
                  hashValue = hashValue.lower
                  nameValue3 = stringHelper.name
                  hashValue = hashValue(nameValue3)
                  nameValue3 = stringHelper3
                  stringHelper2 = stringHelper2(hashValue, nameValue3)
                  if stringHelper2 then
                    stringHelper2 = IsModelValid
                    hashValue = GetHashKey
                    nameValue3 = workingValue5
                    hashValue, nameValue3 = hashValue(nameValue3)
                    stringHelper2 = stringHelper2(hashValue, nameValue3)
                    if stringHelper2 then
                      stringHelper2 = table
                      stringHelper2 = stringHelper2.insert
                      hashValue = workingValue14
                      nameValue3 = workingValue5
                      stringHelper2(hashValue, nameValue3)
                    end
                  end
                end
              end
            end
            cmgOperation3 = #workingValue14
            if 0 == cmgOperation3 then
              cmgOperation3 = notify
              text19 = "~r~No vehicle names match the provided string."
              -- Beginner: Show a notification to the player.
              cmgOperation3(text19)
              return
            else
              cmgOperation3 = #workingValue14
              if cmgOperation3 > 100 then
                cmgOperation3 = CMG
                cmgOperation3 = cmgOperation3.getServerNum
                cmgOperation3 = cmgOperation3()
                if 3 ~= cmgOperation3 then
                  cmgOperation3 = notify
                  text19 = "~r~Unable to spawn over 100 vehicle name matches."
                  cmgOperation3(text19)
                  return
              end
              else
                cmgOperation3 = notify
                text19 = "~y~Spawning "
                text21 = tostring
                stateFlag27 = #workingValue14
                text21 = text21(stateFlag27)
                stateFlag27 = " vehicle name matches."
                text19 = text19 .. text21 .. stateFlag27
                -- Beginner: Show a notification to the player.
                cmgOperation3(text19)
              end
            end
            cmgOperation3 = dataCollection19
            text19 = workingValue14
            cmgOperation3(text19)
          end
          localValue4(cmgOperation4, stateFlag24, stateFlag26)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Spawn By Partial Spawncode"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4, stateFlag24, stateFlag26
        if localValue33 then
          localValue4 = CMG
          localValue4 = localValue4.clientPrompt
          cmgOperation4 = "Enter Partial Spawncode"
          stateFlag24 = ""

          -- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: localValue14) ===
          function stateFlag26(localValue14)
            local stringHelper3, workingValue14, cmgOperation3, text19, text21, stateFlag27, number26, heading, cmgOperation6, stateFlag2, stateFlag3, workingValue2, workingValue5, stringHelper, stringHelper2, hashValue
            stringHelper3 = dataCollection18
            stringHelper3 = stringHelper3()
            if not stringHelper3 then
              return
            end
            stringHelper3 = string
            stringHelper3 = stringHelper3.lower
            workingValue14 = localValue14
            stringHelper3 = stringHelper3(workingValue14)
            workingValue14 = #stringHelper3
            if workingValue14 <= 1 then
              workingValue14 = notify
              cmgOperation3 = "~r~Enter at last 2 characters for the partial spawncode."
              -- Beginner: Show a notification to the player.
              workingValue14(cmgOperation3)
              return
            end
            workingValue14 = {}
            cmgOperation3 = pairs
            text19 = cmgOperation.garages
            cmgOperation3, text19, text21, stateFlag27 = cmgOperation3(text19)
            for number26, heading in cmgOperation3, text19, text21, stateFlag27 do
              cmgOperation6 = pairs
              stateFlag2 = heading
              cmgOperation6, stateFlag2, stateFlag3, workingValue2 = cmgOperation6(stateFlag2)
              for workingValue5 in cmgOperation6, stateFlag2, stateFlag3, workingValue2 do
                if "_config" ~= workingValue5 then
                  stringHelper = string
                  stringHelper = stringHelper.match
                  stringHelper2 = string
                  stringHelper2 = stringHelper2.lower
                  hashValue = workingValue5
                  stringHelper2 = stringHelper2(hashValue)
                  hashValue = stringHelper3
                  stringHelper = stringHelper(stringHelper2, hashValue)
                  if stringHelper then
                    stringHelper = IsModelValid
                    stringHelper2 = GetHashKey
                    hashValue = workingValue5
                    stringHelper2, hashValue = stringHelper2(hashValue)
                    stringHelper = stringHelper(stringHelper2, hashValue)
                    if stringHelper then
                      stringHelper = table
                      stringHelper = stringHelper.insert
                      stringHelper2 = workingValue14
                      hashValue = workingValue5
                      stringHelper(stringHelper2, hashValue)
                    end
                  end
                end
              end
            end
            cmgOperation3 = #workingValue14
            if 0 == cmgOperation3 then
              cmgOperation3 = notify
              text19 = "~r~No spawncodes match the provided string."
              -- Beginner: Show a notification to the player.
              cmgOperation3(text19)
              return
            else
              cmgOperation3 = #workingValue14
              if cmgOperation3 > 100 then
                cmgOperation3 = CMG
                cmgOperation3 = cmgOperation3.getServerNum
                cmgOperation3 = cmgOperation3()
                if 3 ~= cmgOperation3 then
                  cmgOperation3 = notify
                  text19 = "~r~Unable to spawn over 100 spawncode matches."
                  cmgOperation3(text19)
                  return
              end
              else
                cmgOperation3 = notify
                text19 = "~y~Spawning "
                text21 = tostring
                stateFlag27 = #workingValue14
                text21 = text21(stateFlag27)
                stateFlag27 = " spawncodes matches."
                text19 = text19 .. text21 .. stateFlag27
                -- Beginner: Show a notification to the player.
                cmgOperation3(text19)
              end
            end
            cmgOperation3 = dataCollection19
            text19 = workingValue14
            cmgOperation3(text19)
          end
          localValue4(cmgOperation4, stateFlag24, stateFlag26)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23)
      localValue12 = RageUI
      localValue12 = localValue12.Checkbox
      localValue22 = "Show Spawncodes"
      localValue32 = "Whether to display spawncodes above each vehicle entity."
      text18 = text6
      workingValue17 = {}

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33, localValue4) ===
      function stateFlag23(localValue13, localValue23, localValue33, localValue4)
        local cmgOperation4
        cmgOperation4 = text6
        if cmgOperation4 ~= localValue4 then
          text6 = localValue4
        end
      end

      -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
      function stateFlag25()
        local localValue13, localValue23
      end

      -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
      function workingValue19()
        local localValue13, localValue23
      end
      -- Beginner: Draw a RageUI checkbox.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19)
      localValue12 = RageUI
      localValue12 = localValue12.Checkbox
      localValue22 = "Disable Caps"
      localValue32 = "Whether to disable the speed caps for vehicles in cardev world."
      text18 = stateFlag6
      workingValue17 = {}

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33, localValue4) ===
      function stateFlag23(localValue13, localValue23, localValue33, localValue4)
        local cmgOperation4
        cmgOperation4 = stateFlag6
        if cmgOperation4 ~= localValue4 then
          stateFlag6 = localValue4
        end
      end

      -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
      function stateFlag25()
        local localValue13, localValue23
      end

      -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
      function workingValue19()
        local localValue13, localValue23
      end
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19)
      localValue12 = RageUI
      localValue12 = localValue12.Checkbox
      localValue22 = "Show 250 Markers"
      localValue32 = "Draws a marker every time the car hits 250 MPH."
      text18 = text7
      workingValue17 = {}

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33, localValue4) ===
      function stateFlag23(localValue13, localValue23, localValue33, localValue4)
        local cmgOperation4, stateFlag24
        cmgOperation4 = text7
        if cmgOperation4 ~= localValue4 then
          cmgOperation4 = true
          stateFlag5 = cmgOperation4
          if not localValue4 then
            cmgOperation4 = table
            cmgOperation4 = cmgOperation4.clear
            stateFlag24 = text9
            cmgOperation4(stateFlag24)
          end
          text7 = localValue4
        end
      end

      -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
      function stateFlag25()
        local localValue13, localValue23
      end

      -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
      function workingValue19()
        local localValue13, localValue23
      end
      -- Beginner: Draw a RageUI checkbox.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Automated Handling"
      localValue32 = ""
      text18 = {}
      text18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: none) ===
      function stateFlag23()
        local localValue13, localValue23
      end
      stateFlag25 = RMenu
      workingValue19 = stateFlag25
      stateFlag25 = stateFlag25.Get
      stateFlag28 = "cardev"
      stateFlag29 = "automatedhandling"
      stateFlag25, workingValue19, stateFlag28, stateFlag29 = stateFlag25(workingValue19, stateFlag28, stateFlag29)
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29)
      localValue12 = RageUI
      localValue12 = localValue12.Checkbox
      localValue22 = "Return to normal Universe"
      localValue32 = ""
      text18 = text14
      workingValue17 = {}

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: none) ===
      function stateFlag23()
        local localValue13, localValue23
      end

      -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
      function stateFlag25()
        local localValue13, localValue23, localValue33
        localValue13 = text14
        if not localValue13 then
          localValue13 = dataCollection16
          localValue13()
        end
        localValue13 = true
        text14 = localValue13
        localValue13 = TriggerServerEvent
        localValue23 = "d33b8da01f"
        localValue33 = text14
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d33b8da01f".
        localValue13(localValue23, localValue33)
      end

      -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
      function workingValue19()
        local localValue13, localValue23, localValue33
        localValue13 = text14
        if localValue13 then
          localValue13 = dataCollection17
          localValue13()
        end
        localValue13 = false
        text14 = localValue13
        localValue13 = TriggerServerEvent
        localValue23 = "d33b8da01f"
        localValue33 = text14
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d33b8da01f".
        localValue13(localValue23, localValue33)
      end
      -- Beginner: Draw a RageUI checkbox.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19)
    else
      localValue12 = RageUI
      localValue12 = localValue12.Checkbox
      localValue22 = "Teleport to Car Dev Universe"
      localValue32 = ""
      text18 = text14
      workingValue17 = {}

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: none) ===
      function stateFlag23()
        local localValue13, localValue23
      end

      -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
      function stateFlag25()
        local localValue13, localValue23, localValue33
        localValue13 = text14
        if not localValue13 then
          localValue13 = dataCollection16
          localValue13()
        end
        localValue13 = true
        text14 = localValue13
        localValue13 = TriggerServerEvent
        localValue23 = "d33b8da01f"
        localValue33 = text14
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d33b8da01f".
        localValue13(localValue23, localValue33)
      end

      -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
      function workingValue19()
        local localValue13, localValue23, localValue33
        localValue13 = text14
        if localValue13 then
          localValue13 = dataCollection17
          localValue13()
        end
        localValue13 = false
        text14 = localValue13
        localValue13 = TriggerServerEvent
        localValue23 = "d33b8da01f"
        localValue33 = text14
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d33b8da01f".
        localValue13(localValue23, localValue33)
      end
      -- Beginner: Draw a RageUI checkbox.
      localValue12(localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19)
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~g~Enter the Car Dev Universe to see more menu options."
      localValue12(localValue22)
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
  function cmgOperation5()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, text17, number24, modelHash, cmgOperation5)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text17 = "cardev"
  number24 = "automatedhandling"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text17, number24)
  localValue3 = true
  text17 = true
  number24 = true

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local localValue12, localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29
    localValue12 = ""
    localValue22 = pairs
    localValue32 = tableHelper2
    localValue22, localValue32, text18, workingValue17 = localValue22(localValue32)
    for stateFlag23, stateFlag25 in localValue22, localValue32, text18, workingValue17 do
      workingValue19 = localValue12
      stateFlag28 = stateFlag25
      stateFlag29 = ", "
      workingValue19 = workingValue19 .. stateFlag28 .. stateFlag29
      localValue12 = workingValue19
    end
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue32 = "Set Spawncodes"
    text18 = string
    text18 = text18.format
    workingValue17 = [[
Current Spawncodes:
%s]]
    stateFlag23 = localValue12
    text18 = text18(workingValue17, stateFlag23)
    workingValue17 = {}
    stateFlag23 = string
    stateFlag23 = stateFlag23.format
    stateFlag25 = "%s configured"
    workingValue19 = tableHelper2
    workingValue19 = #workingValue19
    stateFlag23 = stateFlag23(stateFlag25, workingValue19)
    workingValue17.RightLabel = stateFlag23
    stateFlag23 = dataCollection20
    stateFlag23 = not stateFlag23

    -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag25(localValue13, localValue23, localValue33)
      local localValue4, cmgOperation4, stateFlag24, stateFlag26
      if localValue33 then
        localValue4 = CMG
        localValue4 = localValue4.clientPrompt
        cmgOperation4 = "Enter Spawncodes (seperated by comma)"
        stateFlag24 = ""

        -- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: localValue14) ===
        function stateFlag26(localValue14)
          local stringHelper3, workingValue14, cmgOperation3, text19, text21, stateFlag27, number26, heading, cmgOperation6, stateFlag2, stateFlag3
          stringHelper3 = string
          stringHelper3 = stringHelper3.gsub
          workingValue14 = localValue14
          cmgOperation3 = "%s+"
          text19 = ""
          stringHelper3 = stringHelper3(workingValue14, cmgOperation3, text19)
          localValue14 = stringHelper3
          stringHelper3 = string
          stringHelper3 = stringHelper3.lower
          workingValue14 = localValue14
          stringHelper3 = stringHelper3(workingValue14)
          localValue14 = stringHelper3
          stringHelper3 = {}
          tableHelper2 = stringHelper3
          stringHelper3 = pairs
          workingValue14 = stringsplit
          cmgOperation3 = localValue14
          text19 = ","
          workingValue14, cmgOperation3, text19, text21, stateFlag27, number26, heading, cmgOperation6, stateFlag2, stateFlag3 = workingValue14(cmgOperation3, text19)
          stringHelper3, workingValue14, cmgOperation3, text19 = stringHelper3(workingValue14, cmgOperation3, text19, text21, stateFlag27, number26, heading, cmgOperation6, stateFlag2, stateFlag3)
          for text21, stateFlag27 in stringHelper3, workingValue14, cmgOperation3, text19 do
            number26 = GetHashKey
            heading = stateFlag27
            -- Beginner: result below is hash.
            number26 = number26(heading)
            heading = IsModelValid
            cmgOperation6 = number26
            heading = heading(cmgOperation6)
            if not heading then
              heading = notify
              cmgOperation6 = string
              cmgOperation6 = cmgOperation6.format
              stateFlag2 = "~r~Skipping %s due to being an invalid or inactive spawncode."
              stateFlag3 = stateFlag27
              cmgOperation6, stateFlag2, stateFlag3 = cmgOperation6(stateFlag2, stateFlag3)
              -- Beginner: Show a notification to the player.
              heading(cmgOperation6, stateFlag2, stateFlag3)
            else
              heading = table
              heading = heading.insert
              cmgOperation6 = tableHelper2
              stateFlag2 = stateFlag27
              heading(cmgOperation6, stateFlag2)
            end
          end
        end
        localValue4(cmgOperation4, stateFlag24, stateFlag26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue32, text18, workingValue17, stateFlag23, stateFlag25)
    localValue22 = RageUI
    localValue22 = localValue22.List
    localValue32 = "Target Class"
    text18 = dataCollection21
    workingValue17 = dataCollection22
    stateFlag23 = "The class the provided spawncodes should be changed to"
    stateFlag25 = {}
    workingValue19 = dataCollection20
    workingValue19 = not workingValue19

    -- === HELPER FUNCTION (decompiler name: stateFlag28; parameters: localValue13, localValue23, localValue33, localValue4) ===
    function stateFlag28(localValue13, localValue23, localValue33, localValue4)
      local cmgOperation4
      cmgOperation4 = dataCollection22
      if localValue4 ~= cmgOperation4 then
        dataCollection22 = localValue4
      end
    end
    -- Beginner: Draw a RageUI list selector.
    localValue22(localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28)
    localValue22 = dataCollection20
    if localValue22 then
      localValue22 = RageUI
      localValue22 = localValue22.Button
      localValue32 = "~r~Stop Automated Handling"
      text18 = ""
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4
        if localValue33 then
          localValue4 = dataCollection31
          localValue4()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue22(localValue32, text18, workingValue17, stateFlag23)
    else
      localValue22 = RageUI
      localValue22 = localValue22.Button
      localValue32 = "~g~Start Automated Handling"
      text18 = ""
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag23(localValue13, localValue23, localValue33)
        local localValue4
        if localValue33 then
          localValue4 = dataCollection32
          localValue4()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue22(localValue32, text18, workingValue17, stateFlag23)
    end
  end
  localValue1(localValue2, localValue3, text17, number24, modelHash)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text17 = "cardev"
  number24 = "vehiclemods"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text17, number24)
  localValue3 = true
  text17 = true
  number24 = true

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local localValue12, localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29, stateFlag, number, text10, text11, text12, text13
    localValue12 = pairs
    localValue22 = cmgOperation2
    localValue12, localValue22, localValue32, text18 = localValue12(localValue22)
    for workingValue17, stateFlag23 in localValue12, localValue22, localValue32, text18 do
      stateFlag25 = GetNumVehicleMods
      workingValue19 = CMG
      workingValue19 = workingValue19.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      workingValue19 = workingValue19()
      stateFlag28 = workingValue17
      stateFlag25 = stateFlag25(workingValue19, stateFlag28)
      if stateFlag25 > 0 then
        stateFlag25 = RageUI
        stateFlag25 = stateFlag25.ButtonWithStyle
        workingValue19 = stateFlag23
        stateFlag28 = ""
        stateFlag29 = {}
        stateFlag29.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag = true

        -- === HELPER FUNCTION (decompiler name: number; parameters: localValue13, localValue23, localValue33) ===
        function number(localValue13, localValue23, localValue33)
          local localValue4
          if localValue33 then
            localValue4 = workingValue17
            rageUiOperation4 = localValue4
          end
        end
        text10 = RMenu
        text11 = text10
        text10 = text10.Get
        text12 = "cardev"
        text13 = "vehiclemodindexes"
        text10, text11, text12, text13 = text10(text11, text12, text13)
        -- Beginner: Draw a selectable RageUI menu button.
        stateFlag25(workingValue19, stateFlag28, stateFlag29, stateFlag, number, text10, text11, text12, text13)
      end
    end
  end
  localValue1(localValue2, localValue3, text17, number24, modelHash)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text17 = "cardev"
  number24 = "vehiclemodindexes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text17, number24)
  localValue3 = true
  text17 = true
  number24 = true

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local localValue12, localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29, stateFlag, number, text10, text11
    localValue12 = GetNumVehicleMods
    localValue22 = CMG
    localValue22 = localValue22.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue22 = localValue22()
    localValue32 = rageUiOperation4
    localValue12 = localValue12(localValue22, localValue32)
    if 0 == localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Text
      localValue22 = {}
      localValue22.message = "~r~No available mod indexes for this mod type for this vehicle."
      localValue12(localValue22)
    else
      localValue12 = 0
      localValue22 = GetNumVehicleMods
      localValue32 = CMG
      localValue32 = localValue32.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      localValue32 = localValue32()
      text18 = rageUiOperation4
      localValue22 = localValue22(localValue32, text18)
      localValue32 = 1
      for text18 = localValue12, localValue22, localValue32 do
        workingValue17 = RageUI
        workingValue17 = workingValue17.ButtonWithStyle
        stateFlag23 = "Mod "
        stateFlag25 = text18
        stateFlag23 = stateFlag23 .. stateFlag25
        stateFlag25 = ""
        workingValue19 = {}
        workingValue19.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag28 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag29; parameters: localValue13, localValue23, localValue33) ===
        function stateFlag29(localValue13, localValue23, localValue33)
          local localValue4, cmgOperation4, stateFlag24, stateFlag26, number25
          if localValue33 then
            localValue4 = SetVehicleModKit
            cmgOperation4 = CMG
            cmgOperation4 = cmgOperation4.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            cmgOperation4 = cmgOperation4()
            stateFlag24 = 0
            localValue4(cmgOperation4, stateFlag24)
            localValue4 = CMG
            localValue4 = localValue4.setVehicleMod
            cmgOperation4 = CMG
            cmgOperation4 = cmgOperation4.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            cmgOperation4 = cmgOperation4()
            stateFlag24 = rageUiOperation4
            stateFlag26 = text18
            number25 = false
            localValue4(cmgOperation4, stateFlag24, stateFlag26, number25)
          end
        end
        stateFlag = RMenu
        number = stateFlag
        stateFlag = stateFlag.Get
        text10 = "cardev"
        text11 = "vehiclemodindexes"
        stateFlag, number, text10, text11 = stateFlag(number, text10, text11)
        -- Beginner: Draw a selectable RageUI menu button.
        workingValue17(stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29, stateFlag, number, text10, text11)
      end
    end
  end
  localValue1(localValue2, localValue3, text17, number24, modelHash)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text17 = "cardev"
  number24 = "extras"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text17, number24)
  localValue3 = true
  text17 = true
  number24 = true

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local localValue12, localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29, stateFlag
    localValue12 = CMG
    localValue12 = localValue12.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue12 = localValue12()
    localValue22 = false
    if 0 ~= localValue12 then
      localValue32 = 1
      text18 = 12
      workingValue17 = 1
      for stateFlag23 = localValue32, text18, workingValue17 do
        stateFlag25 = DoesExtraExist
        workingValue19 = localValue12
        stateFlag28 = stateFlag23
        stateFlag25 = stateFlag25(workingValue19, stateFlag28)
        if stateFlag25 then
          localValue22 = true
          stateFlag25 = IsVehicleExtraTurnedOn
          workingValue19 = localValue12
          stateFlag28 = stateFlag23
          stateFlag25 = stateFlag25(workingValue19, stateFlag28)
          if stateFlag25 then
            stateFlag25 = RageUI
            stateFlag25 = stateFlag25.Button
            workingValue19 = "Disable Extra "
            stateFlag28 = stateFlag23
            workingValue19 = workingValue19 .. stateFlag28
            stateFlag28 = nil
            stateFlag29 = true

            -- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue13, localValue23, localValue33) ===
            function stateFlag(localValue13, localValue23, localValue33)
              local localValue4, cmgOperation4, stateFlag24, stateFlag26
              if localValue33 then
                localValue4 = SetVehicleExtra
                cmgOperation4 = localValue12
                stateFlag24 = stateFlag23
                stateFlag26 = true
                localValue4(cmgOperation4, stateFlag24, stateFlag26)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            stateFlag25(workingValue19, stateFlag28, stateFlag29, stateFlag)
          else
            stateFlag25 = RageUI
            stateFlag25 = stateFlag25.Button
            workingValue19 = "Enable Extra "
            stateFlag28 = stateFlag23
            workingValue19 = workingValue19 .. stateFlag28
            stateFlag28 = nil
            stateFlag29 = true

            -- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue13, localValue23, localValue33) ===
            function stateFlag(localValue13, localValue23, localValue33)
              local localValue4, cmgOperation4, stateFlag24, stateFlag26
              if localValue33 then
                localValue4 = SetVehicleExtra
                cmgOperation4 = localValue12
                stateFlag24 = stateFlag23
                stateFlag26 = false
                localValue4(cmgOperation4, stateFlag24, stateFlag26)
                localValue4 = TriggerEvent
                cmgOperation4 = "53092b8739"
                -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "53092b8739".
                localValue4(cmgOperation4)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            stateFlag25(workingValue19, stateFlag28, stateFlag29, stateFlag)
          end
        end
      end
    end
    if not localValue22 then
      localValue32 = RageUI
      localValue32 = localValue32.Text
      text18 = {}
      text18.message = "~r~No available extras for this vehicle."
      localValue32(text18)
    end
  end
  localValue1(localValue2, localValue3, text17, number24, modelHash)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text17 = "cardev"
  number24 = "colours"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text17, number24)
  localValue3 = true
  text17 = true
  number24 = true

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local localValue12, localValue22, localValue32, text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29, stateFlag
    localValue12 = pairs
    localValue22 = dataCollection12
    localValue12, localValue22, localValue32, text18 = localValue12(localValue22)
    for workingValue17, stateFlag23 in localValue12, localValue22, localValue32, text18 do
      stateFlag25 = RageUI
      stateFlag25 = stateFlag25.Button
      workingValue19 = stateFlag23.name
      stateFlag28 = nil
      stateFlag29 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag(localValue13, localValue23, localValue33)
        local localValue4, cmgOperation4, stateFlag24, stateFlag26
        if localValue33 then
          localValue4 = SetVehicleColours
          cmgOperation4 = CMG
          cmgOperation4 = cmgOperation4.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          cmgOperation4 = cmgOperation4()
          stateFlag24 = stateFlag23.colorindex
          stateFlag26 = stateFlag23.colorindex
          localValue4(cmgOperation4, stateFlag24, stateFlag26)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag25(workingValue19, stateFlag28, stateFlag29, stateFlag)
    end
  end
  localValue1(localValue2, localValue3, text17, number24, modelHash)
end
rageUiOperation2(dataCollection38, dataCollection39, dataCollection40, dataCollection41)

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2, localValue3, text17, number24, modelHash, cmgOperation5
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text17 = "cardev"
  number24 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text17, number24)
  localValue3 = RageUI
  localValue3 = localValue3.Visible
  text17 = RMenu
  number24 = text17
  text17 = text17.Get
  modelHash = "cardev"
  cmgOperation5 = "mainmenu"
  text17, number24, modelHash, cmgOperation5 = text17(number24, modelHash, cmgOperation5)
  -- Beginner: result below is menuVisible.
  localValue3 = localValue3(text17, number24, modelHash, cmgOperation5)
  localValue3 = not localValue3
  localValue1(localValue2, localValue3)
end
dataCollection38 = _ENV
dataCollection39 = "RegisterCommand"
dataCollection38 = dataCollection38[dataCollection39]
dataCollection39 = "cardev"

-- === HELPER FUNCTION (decompiler name: dataCollection40; parameters: none) ===
function dataCollection40()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "carworld.whitelisted"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isPurge
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = rageUiOperation2
      localValue1()
    end
  end
end
dataCollection41 = false
dataCollection38(dataCollection39, dataCollection40, dataCollection41)
dataCollection38 = _ENV
dataCollection39 = "AddEventHandler"
dataCollection38 = dataCollection38[dataCollection39]
dataCollection39 = "919aefda0c"

-- === HELPER FUNCTION (decompiler name: dataCollection40; parameters: localValue1) ===
function dataCollection40(localValue1)
  local localValue2
  if 333 ~= localValue1 then
    localValue2 = text14
    if localValue2 then
      localValue2 = RageUI
      localValue2 = localValue2.CloseAll
      localValue2()
      localValue2 = dataCollection17
      localValue2()
      localValue2 = false
      text14 = localValue2
    end
  end
end
dataCollection38(dataCollection39, dataCollection40)
dataCollection38 = {}
dataCollection39 = "CCarHandlingData"
dataCollection40 = {}
dataCollection41 = {}
text22 = "name"
text23 = "fBackEndPopUpCarImpulseMult"
dataCollection41[text22] = text23
text22 = "type"
text23 = "float"
dataCollection41[text22] = text23
text22 = {}
text23 = "name"
text24 = "fBackEndPopUpBuildingImpulseMult"
text22[text23] = text24
text23 = "type"
text24 = "float"
text22[text23] = text24
text23 = {}
text24 = "name"
text25 = "fBackEndPopUpMaxDeltaSpeed"
text23[text24] = text25
text24 = "type"
text25 = "float"
text23[text24] = text25
text24 = {}
text25 = "name"
text26 = "fToeFront"
text24[text25] = text26
text25 = "type"
text26 = "float"
text24[text25] = text26
text25 = {}
text26 = "name"
text27 = "fToeRear"
text25[text26] = text27
text26 = "type"
text27 = "float"
text25[text26] = text27
text26 = {}
text27 = "name"
text28 = "fCamberFront"
text26[text27] = text28
text27 = "type"
text28 = "float"
text26[text27] = text28
text27 = {}
text28 = "name"
text30 = "fCamberRear"
text27[text28] = text30
text28 = "type"
text30 = "float"
text27[text28] = text30
text28 = {}
text30 = "name"
text31 = "fCastor"
text28[text30] = text31
text30 = "type"
text31 = "float"
text28[text30] = text31
text30 = {}
text31 = "name"
text32 = "fEngineResistance"
text30[text31] = text32
text31 = "type"
text32 = "float"
text30[text31] = text32
text31 = {}
text32 = "name"
text33 = "fMaxDriveBiasTransfer"
text31[text32] = text33
text32 = "type"
text33 = "float"
text31[text32] = text33
text32 = {}
text33 = "name"
text34 = "fJumpForceScale"
text32[text33] = text34
text33 = "type"
text34 = "float"
text32[text33] = text34
text33 = {}
text34 = "name"
text35 = "fIncreasedRammingForceScale"
text33[text34] = text35
text34 = "type"
text35 = "float"
text33[text34] = text35
dataCollection40[1] = dataCollection41
dataCollection40[2] = text22
dataCollection40[3] = text23
dataCollection40[4] = text24
dataCollection40[5] = text25
dataCollection40[6] = text26
dataCollection40[7] = text27
dataCollection40[8] = text28
dataCollection40[9] = text30
dataCollection40[10] = text31
dataCollection40[11] = text32
dataCollection40[12] = text33
dataCollection38[dataCollection39] = dataCollection40
dataCollection39 = "CTrailerHandlingData"
dataCollection40 = {}
dataCollection41 = {}
text22 = "name"
text23 = "fAttachLimitPitch"
dataCollection41[text22] = text23
text22 = "type"
text23 = "float"
dataCollection41[text22] = text23
text22 = {}
text23 = "name"
text24 = "fAttachLimitRoll"
text22[text23] = text24
text23 = "type"
text24 = "float"
text22[text23] = text24
text23 = {}
text24 = "name"
text25 = "fAttachLimitYaw"
text23[text24] = text25
text24 = "type"
text25 = "float"
text23[text24] = text25
text24 = {}
text25 = "name"
text26 = "fUprightSpringConstant"
text24[text25] = text26
text25 = "type"
text26 = "float"
text24[text25] = text26
text25 = {}
text26 = "name"
text27 = "fUprightDampingConstant"
text25[text26] = text27
text26 = "type"
text27 = "float"
text25[text26] = text27
text26 = {}
text27 = "name"
text28 = "fAttachedMaxDistance"
text26[text27] = text28
text27 = "type"
text28 = "float"
text26[text27] = text28
text27 = {}
text28 = "name"
text30 = "fAttachedMaxPenetration"
text27[text28] = text30
text28 = "type"
text30 = "float"
text27[text28] = text30
text28 = {}
text30 = "name"
text31 = "fAttachRaiseZ"
text28[text30] = text31
text30 = "type"
text31 = "float"
text28[text30] = text31
text30 = {}
text31 = "name"
text32 = "fPosConstraintMassRatio"
text30[text31] = text32
text31 = "type"
text32 = "float"
text30[text31] = text32
dataCollection40[1] = dataCollection41
dataCollection40[2] = text22
dataCollection40[3] = text23
dataCollection40[4] = text24
dataCollection40[5] = text25
dataCollection40[6] = text26
dataCollection40[7] = text27
dataCollection40[8] = text28
dataCollection40[9] = text30
dataCollection38[dataCollection39] = dataCollection40
dataCollection39 = "CBoatHandlingData"
dataCollection40 = {}
dataCollection41 = {}
text22 = "name"
text23 = "fBoxFrontMult"
dataCollection41[text22] = text23
text22 = "type"
text23 = "float"
dataCollection41[text22] = text23
text22 = {}
text23 = "name"
text24 = "fBoxRearMult"
text22[text23] = text24
text23 = "type"
text24 = "float"
text22[text23] = text24
text23 = {}
text24 = "name"
text25 = "fBoxSideMult"
text23[text24] = text25
text24 = "type"
text25 = "float"
text23[text24] = text25
text24 = {}
text25 = "name"
text26 = "fSampleTop"
text24[text25] = text26
text25 = "type"
text26 = "float"
text24[text25] = text26
text25 = {}
text26 = "name"
text27 = "fSampleBottom"
text25[text26] = text27
text26 = "type"
text27 = "float"
text25[text26] = text27
text26 = {}
text27 = "name"
text28 = "fSampleBottomTestCorrection"
text26[text27] = text28
text27 = "type"
text28 = "float"
text26[text27] = text28
text27 = {}
text28 = "name"
text30 = "fAquaplaneForce"
text27[text28] = text30
text28 = "type"
text30 = "float"
text27[text28] = text30
text28 = {}
text30 = "name"
text31 = "fAquaplanePushWaterMult"
text28[text30] = text31
text30 = "type"
text31 = "float"
text28[text30] = text31
text30 = {}
text31 = "name"
text32 = "fAquaplanePushWaterCap"
text30[text31] = text32
text31 = "type"
text32 = "float"
text30[text31] = text32
text31 = {}
text32 = "name"
text33 = "fAquaplanePushWaterApply"
text31[text32] = text33
text32 = "type"
text33 = "float"
text31[text32] = text33
text32 = {}
text33 = "name"
text34 = "fRudderForce"
text32[text33] = text34
text33 = "type"
text34 = "float"
text32[text33] = text34
text33 = {}
text34 = "name"
text35 = "fRudderOffsetSubmerge"
text33[text34] = text35
text34 = "type"
text35 = "float"
text33[text34] = text35
text34 = {}
text35 = "name"
text36 = "fRudderOffsetForce"
text34[text35] = text36
text35 = "type"
text36 = "float"
text34[text35] = text36
text35 = {}
text36 = "name"
text37 = "fRudderOffsetForceZMult"
text35[text36] = text37
text36 = "type"
text37 = "float"
text35[text36] = text37
text36 = {}
text37 = "name"
text38 = "fWaveAudioMult"
text36[text37] = text38
text37 = "type"
text38 = "float"
text36[text37] = text38
text37 = {}
text38 = "name"
text39 = "vecMoveResistance"
text37[text38] = text39
text38 = "type"
text39 = "vector"
text37[text38] = text39
text38 = {}
text39 = "name"
text40 = "vecTurnResistance"
text38[text39] = text40
text39 = "type"
text40 = "vector"
text38[text39] = text40
text39 = {}
text40 = "name"
text41 = "fLook_L_R_CamHeight"
text39[text40] = text41
text40 = "type"
text41 = "float"
text39[text40] = text41
text40 = {}
text41 = "name"
text42 = "fDragCoefficient"
text40[text41] = text42
text41 = "type"
text42 = "float"
text40[text41] = text42
text41 = {}
text42 = "name"
text43 = "fKeelSphereSize"
text41[text42] = text43
text42 = "type"
text43 = "float"
text41[text42] = text43
text42 = {}
text43 = "name"
text44 = "fPropRadius"
text42[text43] = text44
text43 = "type"
text44 = "float"
text42[text43] = text44
text43 = {}
text44 = "name"
text45 = "fLowLodAngOffset"
text43[text44] = text45
text44 = "type"
text45 = "float"
text43[text44] = text45
text44 = {}
text45 = "name"
text46 = "fLowLodDraughtOffset"
text44[text45] = text46
text45 = "type"
text46 = "float"
text44[text45] = text46
text45 = {}
text46 = "name"
text47 = "fImpellerOffset"
text45[text46] = text47
text46 = "type"
text47 = "float"
text45[text46] = text47
text46 = {}
text47 = "name"
text48 = "fImpellerForceMult"
text46[text47] = text48
text47 = "type"
text48 = "float"
text46[text47] = text48
text47 = {}
text48 = "name"
text49 = "fDinghySphereBuoyConst"
text47[text48] = text49
text48 = "type"
text49 = "float"
text47[text48] = text49
text48 = {}
text49 = "name"
text50 = "fProwRaiseMult"
text48[text49] = text50
text49 = "type"
text50 = "float"
text48[text49] = text50
text49 = {}
text50 = "name"
text51 = "fDeepWaterSampleBuoyancyMult"
text49[text50] = text51
text50 = "type"
text51 = "float"
text49[text50] = text51
text50 = {}
text51 = "name"
text52 = "fTransmissionMultiplier"
text50[text51] = text52
text51 = "type"
text52 = "float"
text50[text51] = text52
text51 = {}
text52 = "name"
text53 = "fTractionMultiplier"
text51[text52] = text53
text52 = "type"
text53 = "float"
text51[text52] = text53
dataCollection40[1] = dataCollection41
dataCollection40[2] = text22
dataCollection40[3] = text23
dataCollection40[4] = text24
dataCollection40[5] = text25
dataCollection40[6] = text26
dataCollection40[7] = text27
dataCollection40[8] = text28
dataCollection40[9] = text30
dataCollection40[10] = text31
dataCollection40[11] = text32
dataCollection40[12] = text33
dataCollection40[13] = text34
dataCollection40[14] = text35
dataCollection40[15] = text36
dataCollection40[16] = text37
dataCollection40[17] = text38
dataCollection40[18] = text39
dataCollection40[19] = text40
dataCollection40[20] = text41
dataCollection40[21] = text42
dataCollection40[22] = text43
dataCollection40[23] = text44
dataCollection40[24] = text45
dataCollection40[25] = text46
dataCollection40[26] = text47
dataCollection40[27] = text48
dataCollection40[28] = text49
dataCollection40[29] = text50
dataCollection40[30] = text51
dataCollection38[dataCollection39] = dataCollection40
dataCollection39 = "CBikeHandlingData"
dataCollection40 = {}
dataCollection41 = {}
text22 = "name"
text23 = "fLeanFwdCOMMult"
dataCollection41[text22] = text23
text22 = "type"
text23 = "float"
dataCollection41[text22] = text23
text22 = {}
text23 = "name"
text24 = "fLeanFwdForceMult"
text22[text23] = text24
text23 = "type"
text24 = "float"
text22[text23] = text24
text23 = {}
text24 = "name"
text25 = "fLeanBakCOMMult"
text23[text24] = text25
text24 = "type"
text25 = "float"
text23[text24] = text25
text24 = {}
text25 = "name"
text26 = "fLeanBakForceMult"
text24[text25] = text26
text25 = "type"
text26 = "float"
text24[text25] = text26
text25 = {}
text26 = "name"
text27 = "fMaxBankAngle"
text25[text26] = text27
text26 = "type"
text27 = "float"
text25[text26] = text27
text26 = {}
text27 = "name"
text28 = "fFullAnimAngle"
text26[text27] = text28
text27 = "type"
text28 = "float"
text26[text27] = text28
text27 = {}
text28 = "name"
text30 = "fDesLeanReturnFrac"
text27[text28] = text30
text28 = "type"
text30 = "float"
text27[text28] = text30
text28 = {}
text30 = "name"
text31 = "fStickLeanMult"
text28[text30] = text31
text30 = "type"
text31 = "float"
text28[text30] = text31
text30 = {}
text31 = "name"
text32 = "fBrakingStabilityMult"
text30[text31] = text32
text31 = "type"
text32 = "float"
text30[text31] = text32
text31 = {}
text32 = "name"
text33 = "fInAirSteerMult"
text31[text32] = text33
text32 = "type"
text33 = "float"
text31[text32] = text33
text32 = {}
text33 = "name"
text34 = "fWheelieBalancePoint"
text32[text33] = text34
text33 = "type"
text34 = "float"
text32[text33] = text34
text33 = {}
text34 = "name"
text35 = "fStoppieBalancePoint"
text33[text34] = text35
text34 = "type"
text35 = "float"
text33[text34] = text35
text34 = {}
text35 = "name"
text36 = "fWheelieSteerMult"
text34[text35] = text36
text35 = "type"
text36 = "float"
text34[text35] = text36
text35 = {}
text36 = "name"
text37 = "fRearBalanceMult"
text35[text36] = text37
text36 = "type"
text37 = "float"
text35[text36] = text37
text36 = {}
text37 = "name"
text38 = "fFrontBalanceMult"
text36[text37] = text38
text37 = "type"
text38 = "float"
text36[text37] = text38
text37 = {}
text38 = "name"
text39 = "fBikeGroundSideFrictionMult"
text37[text38] = text39
text38 = "type"
text39 = "float"
text37[text38] = text39
text38 = {}
text39 = "name"
text40 = "fBikeWheelGroundSideFrictionMult"
text38[text39] = text40
text39 = "type"
text40 = "float"
text38[text39] = text40
text39 = {}
text40 = "name"
text41 = "fBikeOnStandLeanAngle"
text39[text40] = text41
text40 = "type"
text41 = "float"
text39[text40] = text41
text40 = {}
text41 = "name"
text42 = "fBikeOnStandSteerAngle"
text40[text41] = text42
text41 = "type"
text42 = "float"
text40[text41] = text42
text41 = {}
text42 = "name"
text43 = "fJumpForce"
text41[text42] = text43
text42 = "type"
text43 = "float"
text41[text42] = text43
dataCollection40[1] = dataCollection41
dataCollection40[2] = text22
dataCollection40[3] = text23
dataCollection40[4] = text24
dataCollection40[5] = text25
dataCollection40[6] = text26
dataCollection40[7] = text27
dataCollection40[8] = text28
dataCollection40[9] = text30
dataCollection40[10] = text31
dataCollection40[11] = text32
dataCollection40[12] = text33
dataCollection40[13] = text34
dataCollection40[14] = text35
dataCollection40[15] = text36
dataCollection40[16] = text37
dataCollection40[17] = text38
dataCollection40[18] = text39
dataCollection40[19] = text40
dataCollection40[20] = text41
dataCollection38[dataCollection39] = dataCollection40
dataCollection39 = "CSubmarineHandlingData"
dataCollection40 = {}
dataCollection41 = {}
text22 = "name"
text23 = "vTurnRes"
dataCollection41[text22] = text23
text22 = "type"
text23 = "vector"
dataCollection41[text22] = text23
text22 = {}
text23 = "name"
text24 = "fMoveResXY"
text22[text23] = text24
text23 = "type"
text24 = "float"
text22[text23] = text24
text23 = {}
text24 = "name"
text25 = "fMoveResZ"
text23[text24] = text25
text24 = "type"
text25 = "float"
text23[text24] = text25
text24 = {}
text25 = "name"
text26 = "fPitchMult"
text24[text25] = text26
text25 = "type"
text26 = "float"
text24[text25] = text26
text25 = {}
text26 = "name"
text27 = "fPitchAngle"
text25[text26] = text27
text26 = "type"
text27 = "float"
text25[text26] = text27
text26 = {}
text27 = "name"
text28 = "fYawMult"
text26[text27] = text28
text27 = "type"
text28 = "float"
text26[text27] = text28
text27 = {}
text28 = "name"
text30 = "fDiveSpeed"
text27[text28] = text30
text28 = "type"
text30 = "float"
text27[text28] = text30
text28 = {}
text30 = "name"
text31 = "fRollMult"
text28[text30] = text31
text30 = "type"
text31 = "float"
text28[text30] = text31
text30 = {}
text31 = "name"
text32 = "fRollStab"
text30[text31] = text32
text31 = "type"
text32 = "float"
text30[text31] = text32
dataCollection40[1] = dataCollection41
dataCollection40[2] = text22
dataCollection40[3] = text23
dataCollection40[4] = text24
dataCollection40[5] = text25
dataCollection40[6] = text26
dataCollection40[7] = text27
dataCollection40[8] = text28
dataCollection40[9] = text30
dataCollection38[dataCollection39] = dataCollection40
dataCollection39 = "CSpecialFlightHandlingData"
dataCollection40 = {}
dataCollection41 = {}
text22 = "name"
text23 = "vecAngularDamping"
dataCollection41[text22] = text23
text22 = "type"
text23 = "vector"
dataCollection41[text22] = text23
text22 = {}
text23 = "name"
text24 = "vecAngularDampingMin"
text22[text23] = text24
text23 = "type"
text24 = "vector"
text22[text23] = text24
text23 = {}
text24 = "name"
text25 = "vecLinearDamping"
text23[text24] = text25
text24 = "type"
text25 = "vector"
text23[text24] = text25
text24 = {}
text25 = "name"
text26 = "vecLinearDampingMin"
text24[text25] = text26
text25 = "type"
text26 = "vector"
text24[text25] = text26
text25 = {}
text26 = "name"
text27 = "fLiftCoefficient"
text25[text26] = text27
text26 = "type"
text27 = "float"
text25[text26] = text27
text26 = {}
text27 = "name"
text28 = "fCriticalLiftAngle"
text26[text27] = text28
text27 = "type"
text28 = "float"
text26[text27] = text28
text27 = {}
text28 = "name"
text30 = "fInitialLiftAngle"
text27[text28] = text30
text28 = "type"
text30 = "float"
text27[text28] = text30
text28 = {}
text30 = "name"
text31 = "fMaxLiftAngle"
text28[text30] = text31
text30 = "type"
text31 = "float"
text28[text30] = text31
text30 = {}
text31 = "name"
text32 = "fDragCoefficient"
text30[text31] = text32
text31 = "type"
text32 = "float"
text30[text31] = text32
text31 = {}
text32 = "name"
text33 = "fBrakingDrag"
text31[text32] = text33
text32 = "type"
text33 = "float"
text31[text32] = text33
text32 = {}
text33 = "name"
text34 = "fMaxLiftVelocity"
text32[text33] = text34
text33 = "type"
text34 = "float"
text32[text33] = text34
text33 = {}
text34 = "name"
text35 = "fMinLiftVelocity"
text33[text34] = text35
text34 = "type"
text35 = "float"
text33[text34] = text35
text34 = {}
text35 = "name"
text36 = "fRollTorqueScale"
text34[text35] = text36
text35 = "type"
text36 = "float"
text34[text35] = text36
text35 = {}
text36 = "name"
text37 = "fMaxTorqueVelocity"
text35[text36] = text37
text36 = "type"
text37 = "float"
text35[text36] = text37
text36 = {}
text37 = "name"
text38 = "fMinTorqueVelocity"
text36[text37] = text38
text37 = "type"
text38 = "float"
text36[text37] = text38
text37 = {}
text38 = "name"
text39 = "fYawTorqueScale"
text37[text38] = text39
text38 = "type"
text39 = "float"
text37[text38] = text39
text38 = {}
text39 = "name"
text40 = "fSelfLevelingPitchTorqueScale"
text38[text39] = text40
text39 = "type"
text40 = "float"
text38[text39] = text40
text39 = {}
text40 = "name"
text41 = "fInitalOverheadAssist"
text39[text40] = text41
text40 = "type"
text41 = "float"
text39[text40] = text41
text40 = {}
text41 = "name"
text42 = "fMaxPitchTorque"
text40[text41] = text42
text41 = "type"
text42 = "float"
text40[text41] = text42
text41 = {}
text42 = "name"
text43 = "fMaxSteeringRollTorque"
text41[text42] = text43
text42 = "type"
text43 = "float"
text41[text42] = text43
text42 = {}
text43 = "name"
text44 = "fPitchTorqueScale"
text42[text43] = text44
text43 = "type"
text44 = "float"
text42[text43] = text44
text43 = {}
text44 = "name"
text45 = "fSteeringTorqueScale"
text43[text44] = text45
text44 = "type"
text45 = "float"
text43[text44] = text45
text44 = {}
text45 = "name"
text46 = "fMaxThrust"
text44[text45] = text46
text45 = "type"
text46 = "float"
text44[text45] = text46
text45 = {}
text46 = "name"
text47 = "fTransitionDuration"
text45[text46] = text47
text46 = "type"
text47 = "float"
text45[text46] = text47
text46 = {}
text47 = "name"
text48 = "fHoverVelocityScale"
text46[text47] = text48
text47 = "type"
text48 = "float"
text46[text47] = text48
text47 = {}
text48 = "name"
text49 = "fStabilityAssist"
text47[text48] = text49
text48 = "type"
text49 = "float"
text47[text48] = text49
text48 = {}
text49 = "name"
text50 = "fMinSpeedForThrustFalloff"
text48[text49] = text50
text49 = "type"
text50 = "float"
text48[text49] = text50
text49 = {}
text50 = "name"
text51 = "fBrakingThrustScale"
text49[text50] = text51
text50 = "type"
text51 = "float"
text49[text50] = text51
text50 = {}
text51 = "name"
text52 = "mode"
text50[text51] = text52
text51 = "type"
text52 = "integer"
text50[text51] = text52
dataCollection40[1] = dataCollection41
dataCollection40[2] = text22
dataCollection40[3] = text23
dataCollection40[4] = text24
dataCollection40[5] = text25
dataCollection40[6] = text26
dataCollection40[7] = text27
dataCollection40[8] = text28
dataCollection40[9] = text30
dataCollection40[10] = text31
dataCollection40[11] = text32
dataCollection40[12] = text33
dataCollection40[13] = text34
dataCollection40[14] = text35
dataCollection40[15] = text36
dataCollection40[16] = text37
dataCollection40[17] = text38
dataCollection40[18] = text39
dataCollection40[19] = text40
dataCollection40[20] = text41
dataCollection40[21] = text42
dataCollection40[22] = text43
dataCollection40[23] = text44
dataCollection40[24] = text45
dataCollection40[25] = text46
dataCollection40[26] = text47
dataCollection40[27] = text48
dataCollection40[28] = text49
dataCollection40[29] = text50
dataCollection38[dataCollection39] = dataCollection40
dataCollection39 = "CFlyingHandlingData"
dataCollection40 = {}
dataCollection41 = {}
text22 = "name"
text23 = "fThrust"
dataCollection41[text22] = text23
text22 = "type"
text23 = "float"
dataCollection41[text22] = text23
text22 = {}
text23 = "name"
text24 = "fThrustFallOff"
text22[text23] = text24
text23 = "type"
text24 = "float"
text22[text23] = text24
text23 = {}
text24 = "name"
text25 = "fThrustVectoring"
text23[text24] = text25
text24 = "type"
text25 = "float"
text23[text24] = text25
text24 = {}
text25 = "name"
text26 = "fInitialThrust"
text24[text25] = text26
text25 = "type"
text26 = "float"
text24[text25] = text26
text25 = {}
text26 = "name"
text27 = "fInitialThrustFallOff"
text25[text26] = text27
text26 = "type"
text27 = "float"
text25[text26] = text27
text26 = {}
text27 = "name"
text28 = "fYawMult"
text26[text27] = text28
text27 = "type"
text28 = "float"
text26[text27] = text28
text27 = {}
text28 = "name"
text30 = "fYawStabilise"
text27[text28] = text30
text28 = "type"
text30 = "float"
text27[text28] = text30
text28 = {}
text30 = "name"
text31 = "fSideSlipMult"
text28[text30] = text31
text30 = "type"
text31 = "float"
text28[text30] = text31
text30 = {}
text31 = "name"
text32 = "fInitialYawMult"
text30[text31] = text32
text31 = "type"
text32 = "float"
text30[text31] = text32
text31 = {}
text32 = "name"
text33 = "fRollMult"
text31[text32] = text33
text32 = "type"
text33 = "float"
text31[text32] = text33
text32 = {}
text33 = "name"
text34 = "fRollStabilise"
text32[text33] = text34
text33 = "type"
text34 = "float"
text32[text33] = text34
text33 = {}
text34 = "name"
text35 = "fInitialRollMult"
text33[text34] = text35
text34 = "type"
text35 = "float"
text33[text34] = text35
text34 = {}
text35 = "name"
text36 = "fPitchMult"
text34[text35] = text36
text35 = "type"
text36 = "float"
text34[text35] = text36
text35 = {}
text36 = "name"
text37 = "fPitchStabilise"
text35[text36] = text37
text36 = "type"
text37 = "float"
text35[text36] = text37
text36 = {}
text37 = "name"
text38 = "fFormLiftMult"
text36[text37] = text38
text37 = "type"
text38 = "float"
text36[text37] = text38
text37 = {}
text38 = "name"
text39 = "fAttackLiftMult"
text37[text38] = text39
text38 = "type"
text39 = "float"
text37[text38] = text39
text38 = {}
text39 = "name"
text40 = "fAttackDiveMult"
text38[text39] = text40
text39 = "type"
text40 = "float"
text38[text39] = text40
text39 = {}
text40 = "name"
text41 = "fGearDownDragV"
text39[text40] = text41
text40 = "type"
text41 = "float"
text39[text40] = text41
text40 = {}
text41 = "name"
text42 = "fGearDownLiftMult"
text40[text41] = text42
text41 = "type"
text42 = "float"
text40[text41] = text42
text41 = {}
text42 = "name"
text43 = "fWindMult"
text41[text42] = text43
text42 = "type"
text43 = "float"
text41[text42] = text43
text42 = {}
text43 = "name"
text44 = "fMoveRes"
text42[text43] = text44
text43 = "type"
text44 = "float"
text42[text43] = text44
text43 = {}
text44 = "name"
text45 = "vecTurnRes"
text43[text44] = text45
text44 = "type"
text45 = "vector"
text43[text44] = text45
text44 = {}
text45 = "name"
text46 = "vecSpeedRes"
text44[text45] = text46
text45 = "type"
text46 = "vector"
text44[text45] = text46
text45 = {}
text46 = "name"
text47 = "fGearDoorFrontOpen"
text45[text46] = text47
text46 = "type"
text47 = "float"
text45[text46] = text47
text46 = {}
text47 = "name"
text48 = "fGearDoorRearOpen"
text46[text47] = text48
text47 = "type"
text48 = "float"
text46[text47] = text48
text47 = {}
text48 = "name"
text49 = "fGearDoorRearOpen2"
text47[text48] = text49
text48 = "type"
text49 = "float"
text47[text48] = text49
text48 = {}
text49 = "name"
text50 = "fGearDoorRearMOpen"
text48[text49] = text50
text49 = "type"
text50 = "float"
text48[text49] = text50
text49 = {}
text50 = "name"
text51 = "fTurublenceMagnitudeMax"
text49[text50] = text51
text50 = "type"
text51 = "float"
text49[text50] = text51
text50 = {}
text51 = "name"
text52 = "fTurublenceForceMulti"
text50[text51] = text52
text51 = "type"
text52 = "float"
text50[text51] = text52
text51 = {}
text52 = "name"
text53 = "fTurublenceRollTorqueMulti"
text51[text52] = text53
text52 = "type"
text53 = "float"
text51[text52] = text53
text52 = {}
text53 = "name"
text54 = "fTurublencePitchTorqueMulti"
text52[text53] = text54
text53 = "type"
text54 = "float"
text52[text53] = text54
text53 = {}
text54 = "name"
text55 = "fBodyDamageControlEffectMult"
text53[text54] = text55
text54 = "type"
text55 = "float"
text53[text54] = text55
text54 = {}
text55 = "name"
text56 = "fInputSensitivityForDifficulty"
text54[text55] = text56
text55 = "type"
text56 = "float"
text54[text55] = text56
text55 = {}
text56 = "name"
text57 = "fOnGroundYawBoostSpeedPeak"
text55[text56] = text57
text56 = "type"
text57 = "float"
text55[text56] = text57
text56 = {}
text57 = "name"
text58 = "fOnGroundYawBoostSpeedCap"
text56[text57] = text58
text57 = "type"
text58 = "float"
text56[text57] = text58
text57 = {}
text58 = "name"
text59 = "fEngineOffGlideMulti"
text57[text58] = text59
text58 = "type"
text59 = "float"
text57[text58] = text59
text58 = {}
text59 = "name"
text = "fAfterburnerEffectRadius"
text58[text59] = text
text59 = "type"
text = "float"
text58[text59] = text
text59 = {}
text = "name"
text2 = "fAfterburnerEffectDistance"
text59[text] = text2
text = "type"
text2 = "float"
text59[text] = text2
text = {}
text2 = "name"
text3 = "fAfterburnerEffectForceMulti"
text[text2] = text3
text2 = "type"
text3 = "float"
text[text2] = text3
text2 = {}
text3 = "name"
text4 = "fSubmergeLevelToPullHeliUnderwater"
text2[text3] = text4
text3 = "type"
text4 = "float"
text2[text3] = text4
text3 = {}
text4 = "name"
text5 = "fExtraLiftWithRoll"
text3[text4] = text5
text4 = "type"
text5 = "float"
text3[text4] = text5
dataCollection40[1] = dataCollection41
dataCollection40[2] = text22
dataCollection40[3] = text23
dataCollection40[4] = text24
dataCollection40[5] = text25
dataCollection40[6] = text26
dataCollection40[7] = text27
dataCollection40[8] = text28
dataCollection40[9] = text30
dataCollection40[10] = text31
dataCollection40[11] = text32
dataCollection40[12] = text33
dataCollection40[13] = text34
dataCollection40[14] = text35
dataCollection40[15] = text36
dataCollection40[16] = text37
dataCollection40[17] = text38
dataCollection40[18] = text39
dataCollection40[19] = text40
dataCollection40[20] = text41
dataCollection40[21] = text42
dataCollection40[22] = text43
dataCollection40[23] = text44
dataCollection40[24] = text45
dataCollection40[25] = text46
dataCollection40[26] = text47
dataCollection40[27] = text48
dataCollection40[28] = text49
dataCollection40[29] = text50
dataCollection40[30] = text51
dataCollection40[31] = text52
dataCollection40[32] = text53
dataCollection40[33] = text54
dataCollection40[34] = text55
dataCollection40[35] = text56
dataCollection40[36] = text57
dataCollection40[37] = text58
dataCollection40[38] = text59
dataCollection40[39] = text
dataCollection40[40] = text2
dataCollection40[41] = text3
dataCollection38[dataCollection39] = dataCollection40
dataCollection39 = "CSeaPlaneHandlingData"
dataCollection40 = {}
dataCollection41 = {}
text22 = "name"
text23 = "fLeftPontoonComponentId"
dataCollection41[text22] = text23
text22 = "type"
text23 = "integer"
dataCollection41[text22] = text23
text22 = {}
text23 = "name"
text24 = "fRightPontoonComponentId"
text22[text23] = text24
text23 = "type"
text24 = "integer"
text22[text23] = text24
text23 = {}
text24 = "name"
text25 = "fPontoonBuoyConst"
text23[text24] = text25
text24 = "type"
text25 = "float"
text23[text24] = text25
text24 = {}
text25 = "name"
text26 = "fPontoonSampleSizeFront"
text24[text25] = text26
text25 = "type"
text26 = "float"
text24[text25] = text26
text25 = {}
text26 = "name"
text27 = "fPontoonSampleSizeMiddle"
text25[text26] = text27
text26 = "type"
text27 = "float"
text25[text26] = text27
text26 = {}
text27 = "name"
text28 = "fPontoonSampleSizeRear"
text26[text27] = text28
text27 = "type"
text28 = "float"
text26[text27] = text28
text27 = {}
text28 = "name"
text30 = "fPontoonLengthFractionForSamples"
text27[text28] = text30
text28 = "type"
text30 = "float"
text27[text28] = text30
text28 = {}
text30 = "name"
text31 = "fPontoonDragCoefficient"
text28[text30] = text31
text30 = "type"
text31 = "float"
text28[text30] = text31
text30 = {}
text31 = "name"
text32 = "fPontoonVerticalDampingCoefficientUp"
text30[text31] = text32
text31 = "type"
text32 = "float"
text30[text31] = text32
text31 = {}
text32 = "name"
text33 = "fPontoonVerticalDampingCoefficientDown"
text31[text32] = text33
text32 = "type"
text33 = "float"
text31[text32] = text33
text32 = {}
text33 = "name"
text34 = "fKeelSphereSize"
text32[text33] = text34
text33 = "type"
text34 = "float"
text32[text33] = text34
dataCollection40[1] = dataCollection41
dataCollection40[2] = text22
dataCollection40[3] = text23
dataCollection40[4] = text24
dataCollection40[5] = text25
dataCollection40[6] = text26
dataCollection40[7] = text27
dataCollection40[8] = text28
dataCollection40[9] = text30
dataCollection40[10] = text31
dataCollection40[11] = text32
dataCollection38[dataCollection39] = dataCollection40
dataCollection39 = dataCollection
dataCollection40 = "CHandlingData"

-- === HELPER FUNCTION (decompiler name: dataCollection41; parameters: none) ===
function dataCollection41()
  local localValue1, localValue2
  localValue1 = {}
  localValue2 = {}
  localValue1.speedBuffer = localValue2
  localValue1.speed = 0.0
  localValue1.speedDisplay = 0.0
  localValue1.accel = 0.0
  localValue1.accelDisplay = 0.0
  localValue1.decel = 0.0
  localValue1.decelDisplay = 0.0
  return localValue1
end
text22 = false
text23 = dataCollection41
text23 = text23()

-- === HELPER FUNCTION (decompiler name: text24; parameters: none) ===
function text24()
  local localValue1, localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  localValue2 = GetEntitySpeed
  localValue3 = localValue1
  -- Beginner: result below is speed.
  localValue2 = localValue2(localValue3)
  localValue3 = table
  localValue3 = localValue3.insert
  text17 = text23.speedBuffer
  number24 = localValue2
  localValue3(text17, number24)
  localValue3 = text23.speedBuffer
  localValue3 = #localValue3
  if localValue3 > 100 then
    localValue3 = table
    localValue3 = localValue3.remove
    text17 = text23.speedBuffer
    number24 = 1
    localValue3(text17, number24)
  end
  localValue3 = 0.0
  text17 = 0.0
  number24 = 0
  modelHash = 0
  cmgOperation5 = ipairs
  workingValue18 = text23.speedBuffer
  cmgOperation5, workingValue18, workingValue20, workingValue21 = cmgOperation5(workingValue18)
  for workingValue, text8 in cmgOperation5, workingValue18, workingValue20, workingValue21 do
    if workingValue > 1 then
      stateFlag4 = text23.speedBuffer
      workingValue3 = workingValue - 1
      stateFlag4 = stateFlag4[workingValue3]
      stateFlag4 = text8 - stateFlag4
      if stateFlag4 > 0.0 then
        localValue3 = localValue3 + stateFlag4
        number24 = number24 + 1
      else
        text17 = localValue3 + stateFlag4
        modelHash = modelHash + 1
      end
    end
  end
  localValue3 = localValue3 / number24
  text17 = text17 / modelHash
  cmgOperation5 = math
  cmgOperation5 = cmgOperation5.max
  workingValue18 = text23.speed
  workingValue20 = localValue2
  cmgOperation5 = cmgOperation5(workingValue18, workingValue20)
  text23.speed = cmgOperation5
  cmgOperation5 = text23.speed
  cmgOperation5 = cmgOperation5 * 2.236936
  text23.speedDisplay = cmgOperation5
  cmgOperation5 = math
  cmgOperation5 = cmgOperation5.max
  workingValue18 = text23.accel
  workingValue20 = localValue3
  cmgOperation5 = cmgOperation5(workingValue18, workingValue20)
  text23.accel = cmgOperation5
  cmgOperation5 = text23.accel
  cmgOperation5 = cmgOperation5 * 60.0
  cmgOperation5 = cmgOperation5 * 2.236936
  text23.accelDisplay = cmgOperation5
  cmgOperation5 = math
  cmgOperation5 = cmgOperation5.min
  workingValue18 = text23.decel
  workingValue20 = text17
  cmgOperation5 = cmgOperation5(workingValue18, workingValue20)
  text23.decel = cmgOperation5
  cmgOperation5 = math
  cmgOperation5 = cmgOperation5.abs
  workingValue18 = text23.decel
  cmgOperation5 = cmgOperation5(workingValue18)
  cmgOperation5 = cmgOperation5 * 60.0
  cmgOperation5 = cmgOperation5 * 2.236936
  text23.decelDisplay = cmgOperation5
end

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  if 0 == localValue2 then
    localValue3 = "0.0"
    return localValue3
  end
  localValue3 = localValue1.type
  if "float" == localValue3 then
    localValue3 = GetVehicleHandlingFloat
    text17 = localValue2
    number24 = dataCollection40
    modelHash = localValue1.name
    localValue3 = localValue3(text17, number24, modelHash)
    text17 = string
    text17 = text17.format
    number24 = "%.5f"
    modelHash = localValue3
    return text17(number24, modelHash)
  else
    localValue3 = localValue1.type
    if "integer" == localValue3 then
      localValue3 = GetVehicleHandlingInt
      text17 = localValue2
      number24 = dataCollection40
      modelHash = localValue1.name
      localValue3 = localValue3(text17, number24, modelHash)
      text17 = tostring
      number24 = localValue3
      return text17(number24)
    else
      localValue3 = localValue1.type
      if "vector" == localValue3 then
        localValue3 = GetVehicleHandlingVector
        text17 = localValue2
        number24 = dataCollection40
        modelHash = localValue1.name
        localValue3 = localValue3(text17, number24, modelHash)
        text17 = string
        text17 = text17.format
        number24 = "%.3f %.3f %.3f"
        modelHash = localValue3.x
        cmgOperation5 = localValue3.y
        workingValue18 = localValue3.z
        return text17(number24, modelHash, cmgOperation5, workingValue18)
      end
    end
  end
  localValue3 = "INVALID"
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1) ===
function text26(localValue1)
  local localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue
  localValue2 = CMG
  localValue2 = localValue2.GetRageInputText
  localValue3 = "Enter Value"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue3 = notify
    text17 = "~r~Input cancelled."
    -- Beginner: Show a notification to the player.
    localValue3(text17)
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3()
  text17 = localValue1.type
  if "float" == text17 then
    text17 = tonumber
    number24 = localValue2
    text17 = text17(number24)
    if text17 then
      number24 = SetVehicleHandlingFloat
      modelHash = localValue3
      cmgOperation5 = dataCollection40
      workingValue18 = localValue1.name
      workingValue20 = text17 + 0.0
      number24(modelHash, cmgOperation5, workingValue18, workingValue20)
    else
      number24 = notify
      modelHash = "~r~Can not parse float."
      -- Beginner: Show a notification to the player.
      number24(modelHash)
    end
  else
    text17 = localValue1.type
    if "integer" == text17 then
      text17 = tonumber
      number24 = localValue2
      text17 = text17(number24)
      if text17 then
        number24 = SetVehicleHandlingInt
        modelHash = localValue3
        cmgOperation5 = dataCollection40
        workingValue18 = localValue1.name
        workingValue20 = math
        workingValue20 = workingValue20.floor
        workingValue21 = text17
        workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue = workingValue20(workingValue21)
        number24(modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue)
      else
        number24 = notify
        modelHash = "~r~Can not parse integer."
        -- Beginner: Show a notification to the player.
        number24(modelHash)
      end
    else
      text17 = localValue1.type
      if "vector" == text17 then
        text17 = stringsplit
        number24 = localValue2
        modelHash = " "
        text17 = text17(number24, modelHash)
        if text17 then
          number24 = #text17
          if number24 >= 3 then
            number24 = tonumber
            modelHash = text17[1]
            number24 = number24(modelHash)
            modelHash = tonumber
            cmgOperation5 = text17[2]
            modelHash = modelHash(cmgOperation5)
            cmgOperation5 = tonumber
            workingValue18 = text17[3]
            cmgOperation5 = cmgOperation5(workingValue18)
            if number24 and modelHash and cmgOperation5 then
              workingValue18 = SetVehicleHandlingVector
              workingValue20 = localValue3
              workingValue21 = dataCollection40
              workingValue = localValue1.name
              text8 = vector3
              stateFlag4 = number24 + 0.0
              workingValue3 = modelHash + 0.0
              nameValue = cmgOperation5 + 0.0
              text8, stateFlag4, workingValue3, nameValue = text8(stateFlag4, workingValue3, nameValue)
              workingValue18(workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue)
            else
              workingValue18 = notify
              workingValue20 = "~r~Can not parse vector."
              -- Beginner: Show a notification to the player.
              workingValue18(workingValue20)
            end
        end
        else
          number24 = notify
          modelHash = "~r~Expected 3 floats."
          number24(modelHash)
        end
      end
    end
  end
  text17 = dataCollection9
  number24 = localValue3
  text17(number24)
end

-- === HELPER FUNCTION (decompiler name: text27; parameters: none) ===
function text27()
  local localValue1, localValue2, localValue3, text17, number24
  localValue1 = dataCollection34
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  localValue3 = dataCollection39
  text17 = dataCollection40
  localValue1 = localValue1(localValue2, localValue3, text17)
  localValue2 = CMG
  localValue2 = localValue2.clientPrompt
  localValue3 = "Output (CTRL+A, CTRL+C)"
  text17 = localValue1

  -- === HELPER FUNCTION (decompiler name: number24; parameters: none) ===
  function number24()
    local localValue12, localValue22
  end
  localValue2(localValue3, text17, number24)
end

-- === HELPER FUNCTION (decompiler name: text28; parameters: localValue1) ===
function text28(localValue1)
  local localValue2, localValue3
  text22 = localValue1
  localValue2 = CMG
  localValue2 = localValue2.setCursor
  if localValue1 then
    localValue3 = 1
    if localValue3 then
      goto continueAtStep10
    end
  end
  localValue3 = 0
  ::continueAtStep10::
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.setInGUI
  localValue3 = localValue1
  localValue2(localValue3)
end
text30 = false
text31 = false
text32 = 0
text33 = false
text34 = _ENV
text35 = "RegisterCommand"
text34 = text34[text35]
text35 = "hidecardevdraws"

-- === HELPER FUNCTION (decompiler name: text36; parameters: none) ===
function text36()
  local localValue1, localValue2
  localValue1 = text33
  localValue1 = not localValue1
  text33 = localValue1
end
text37 = false
text34(text35, text36, text37)

-- === HELPER FUNCTION (decompiler name: text34; parameters: none) ===
function text34()
  local localValue1, localValue2, localValue3, text17, number24, modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7, workingValue8, dataCollection5, number11, number12, number13, number14, number16, number17, number18, number20, number21, number22, stateFlag18, stateFlag20, number23, stateFlag21, workingValue15, workingValue16, stateFlag22
  localValue1 = dataCollection20
  if localValue1 then
    localValue1 = dataCollection37
    localValue1()
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  localValue1, localValue2 = localValue1()
  if 0 ~= localValue1 then
    if localValue2 then
      localValue3 = text30
      if not localValue3 then
        text32 = localValue1
        localValue3 = true
        text30 = localValue3
      end
      localValue3 = text31
      if not localValue3 then
        localValue3 = GetIsTaskActive
        text17 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        text17 = text17()
        number24 = 2
        localValue3 = localValue3(text17, number24)
        if localValue3 then
          localValue3 = true
          text31 = localValue3
        end
      end
    end
  else
    localValue3 = text30
    if localValue3 then
      localValue3 = text31
      if not localValue3 then
        localValue3 = DoesEntityExist
        text17 = text32
        localValue3 = localValue3(text17)
        if localValue3 then
          localValue3 = GetEntityModel
          text17 = text32
          -- Beginner: result below is modelHash.
          localValue3 = localValue3(text17)
          if 0 ~= localValue3 then
            text17 = IsThisModelACar
            number24 = localValue3
            text17 = text17(number24)
            if not text17 then
              text17 = IsThisModelABike
              number24 = localValue3
              text17 = text17(number24)
              if not text17 then
                goto continueAtStep68
              end
            end
            text17 = CMG
            text17 = text17.getVehicleIdFromModel
            number24 = localValue3
            text17 = text17(number24)
            if text17 then
              number24 = TriggerServerEvent
              modelHash = "eb0c2e0a14"
              cmgOperation5 = text17
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "eb0c2e0a14".
              number24(modelHash, cmgOperation5)
            end
          end
        end
      end
      ::continueAtStep68::
      localValue3 = false
      text30 = localValue3
      localValue3 = false
      text31 = localValue3
      localValue3 = 0
      text32 = localValue3
    end
  end
  localValue3 = text14
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.getPlayerBucket
    localValue3 = localValue3()
    if 333 == localValue3 then
      goto continueAtStep89
    end
  end
  localValue3 = text22
  if localValue3 then
    localValue3 = text28
    text17 = false
    localValue3(text17)
  end
  return
  ::continueAtStep89::
  localValue3 = text24
  localValue3()
  localValue3 = CMG
  localValue3 = localValue3.getFontId
  text17 = "Akrobat-ExtraBold"
  localValue3 = localValue3(text17)
  text17 = text33
  if not text17 then
    text17 = text22
    if text17 then
      text17 = 0.345
      if text17 then
        goto continueAtStep105
      end
    end
    text17 = 0.505
    ::continueAtStep105::
    number24 = DrawAdvancedTextNoOutline
    modelHash = text17
    cmgOperation5 = 0.055
    workingValue18 = 0.005
    workingValue20 = 0.02
    workingValue21 = 0.35
    workingValue = string
    workingValue = workingValue.format
    text8 = "Top Speed: %.5f"
    stateFlag4 = text23.speedDisplay
    workingValue = workingValue(text8, stateFlag4)
    text8 = 255
    stateFlag4 = 255
    workingValue3 = 255
    nameValue = 255
    nameValue2 = localValue3
    number5 = 1
    number24(modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5)
    number24 = DrawAdvancedTextNoOutline
    modelHash = text17
    cmgOperation5 = 0.075
    workingValue18 = 0.005
    workingValue20 = 0.02
    workingValue21 = 0.35
    workingValue = string
    workingValue = workingValue.format
    text8 = "Top Acceleration: %.5f"
    stateFlag4 = text23.accelDisplay
    workingValue = workingValue(text8, stateFlag4)
    text8 = 255
    stateFlag4 = 255
    workingValue3 = 255
    nameValue = 255
    nameValue2 = localValue3
    number5 = 1
    number24(modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5)
    number24 = DrawAdvancedTextNoOutline
    modelHash = text17
    cmgOperation5 = 0.095
    workingValue18 = 0.005
    workingValue20 = 0.02
    workingValue21 = 0.35
    workingValue = string
    workingValue = workingValue.format
    text8 = "Top Deacceleration: %.5f"
    stateFlag4 = text23.decelDisplay
    workingValue = workingValue(text8, stateFlag4)
    text8 = 255
    stateFlag4 = 255
    workingValue3 = 255
    nameValue = 255
    nameValue2 = localValue3
    number5 = 1
    number24(modelHash, cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5)
  end
  text17 = DisableControlAction
  number24 = 0
  modelHash = 19
  cmgOperation5 = true
  text17(number24, modelHash, cmgOperation5)
  if 0 ~= localValue1 then
    text17 = IsDisabledControlJustPressed
    number24 = 0
    modelHash = 19
    text17 = text17(number24, modelHash)
    if text17 then
      text17 = CMG
      text17 = text17.hasClientPermission
      number24 = "cardev.whitelisted"
      text17 = text17(number24)
      if text17 then
        text17 = text28
        number24 = text22
        number24 = not number24
        text17(number24)
      end
    end
  end
  text17 = CMG
  text17 = text17.getPlayerCoords
  -- Beginner: result below is playerCoords.
  text17 = text17()

  -- === HELPER FUNCTION (decompiler name: number24; parameters: localValue12, localValue22, localValue32) ===
  function number24(localValue12, localValue22, localValue32)
    local text18, workingValue17, stateFlag23, stateFlag25, workingValue19, stateFlag28, stateFlag29, stateFlag, number, text10, text11, text12, text13, number6, number8, number9, number10, workingValue9, workingValue10, workingValue11, number15, stateFlag13, stateFlag15, number19, stateFlag17, workingValue12, workingValue13, stateFlag19
    text18 = {}
    workingValue17 = 255
    stateFlag23 = 255
    stateFlag25 = 0
    text18[1] = workingValue17
    text18[2] = stateFlag23
    text18[3] = stateFlag25
    workingValue17 = localValue12
    stateFlag23 = " Start"
    workingValue17 = workingValue17 .. stateFlag23
    if 2 == localValue22 then
      stateFlag23 = {}
      stateFlag25 = 255
      workingValue19 = 0
      stateFlag28 = 0
      stateFlag23[1] = stateFlag25
      stateFlag23[2] = workingValue19
      stateFlag23[3] = stateFlag28
      text18 = stateFlag23
      stateFlag23 = localValue12
      stateFlag25 = " End"
      stateFlag23 = stateFlag23 .. stateFlag25
      workingValue17 = stateFlag23
    end
    stateFlag23 = CMG
    stateFlag23 = stateFlag23.getPlayerCoords
    -- Beginner: result below is playerCoords.
    stateFlag23 = stateFlag23()
    stateFlag23 = stateFlag23 - localValue32
    stateFlag23 = #stateFlag23
    stateFlag25 = 150.0
    if stateFlag23 < stateFlag25 then
      stateFlag25 = CMG
      stateFlag25 = stateFlag25.DrawText3D
      workingValue19 = vector3
      stateFlag28 = 0.0
      stateFlag29 = 0.0
      stateFlag = 1.0
      workingValue19 = workingValue19(stateFlag28, stateFlag29, stateFlag)
      workingValue19 = localValue32 + workingValue19
      stateFlag28 = workingValue17
      stateFlag29 = 0.2
      stateFlag25(workingValue19, stateFlag28, stateFlag29)
    end
    stateFlag25 = DrawMarker
    workingValue19 = 1
    stateFlag28 = localValue32.x
    stateFlag29 = localValue32.y
    stateFlag = localValue32.z
    stateFlag = stateFlag - 1.5
    number = 0.0
    text10 = 0.0
    text11 = 0.0
    text12 = 0.0
    text13 = 0.0
    number6 = 0.0
    number8 = 1.0
    number9 = 1.0
    number10 = 15.0
    workingValue9 = text18[1]
    workingValue10 = text18[2]
    workingValue11 = text18[3]
    number15 = 100
    stateFlag13 = false
    stateFlag15 = false
    number19 = 2
    stateFlag17 = false
    workingValue12 = nil
    workingValue13 = nil
    stateFlag19 = false
    stateFlag25(workingValue19, stateFlag28, stateFlag29, stateFlag, number, text10, text11, text12, text13, number6, number8, number9, number10, workingValue9, workingValue10, workingValue11, number15, stateFlag13, stateFlag15, number19, stateFlag17, workingValue12, workingValue13, stateFlag19)
  end
  modelHash = pairs
  cmgOperation5 = dataCollection13
  modelHash, cmgOperation5, workingValue18, workingValue20 = modelHash(cmgOperation5)
  for workingValue21, workingValue in modelHash, cmgOperation5, workingValue18, workingValue20 do
    text8 = createVector3
    if text8 then
      text8 = createVector3
      if "Display All" ~= text8 then
        text8 = createVector3
        if text8 ~= workingValue21 then
          goto continueAtStep254
        end
      end
      text8 = workingValue[1]
      if text8 then
        text8 = workingValue[2]
        if text8 then
          text8 = pairs
          stateFlag4 = workingValue
          text8, stateFlag4, workingValue3, nameValue = text8(stateFlag4)
          for nameValue2, number5 in text8, stateFlag4, workingValue3, nameValue do
            number7 = number24
            workingValue8 = workingValue21
            dataCollection5 = nameValue2
            number11 = number5
            number7(workingValue8, dataCollection5, number11)
          end
      end
      else
        text8 = DoesEntityExist
        stateFlag4 = localValue1
        text8 = text8(stateFlag4)
        if text8 then
          text8 = GetEntityForwardVector
          stateFlag4 = localValue1
          text8 = text8(stateFlag4)
          stateFlag4 = tableHelper
          stateFlag4 = text17 - stateFlag4
          stateFlag4 = #stateFlag4
          workingValue3 = workingValue.startDistance
          workingValue3 = workingValue3 - stateFlag4
          workingValue3 = text8 * workingValue3
          workingValue3 = text17 + workingValue3
          nameValue = number24
          nameValue2 = workingValue21
          number5 = 1
          number7 = workingValue3
          nameValue(nameValue2, number5, number7)
          nameValue = workingValue.endDistance
          nameValue = nameValue - stateFlag4
          nameValue = text8 * nameValue
          nameValue = text17 + nameValue
          nameValue2 = number24
          number5 = workingValue21
          number7 = 2
          workingValue8 = nameValue
          nameValue2(number5, number7, workingValue8)
        end
      end
    end
    ::continueAtStep254::
  end
  modelHash = text6
  if modelHash then
    modelHash = CMG
    modelHash = modelHash.getPlayerCoords
    -- Beginner: result below is playerCoords.
    modelHash = modelHash()
    cmgOperation5 = {}
    workingValue18 = pairs
    workingValue20 = CMG
    workingValue20 = workingValue20.getAllVehicles
    workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7, workingValue8, dataCollection5, number11, number12, number13, number14, number16, number17, number18, number20, number21, number22, stateFlag18, stateFlag20, number23, stateFlag21, workingValue15, workingValue16, stateFlag22 = workingValue20()
    workingValue18, workingValue20, workingValue21, workingValue = workingValue18(workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7, workingValue8, dataCollection5, number11, number12, number13, number14, number16, number17, number18, number20, number21, number22, stateFlag18, stateFlag20, number23, stateFlag21, workingValue15, workingValue16, stateFlag22)
    for text8, stateFlag4 in workingValue18, workingValue20, workingValue21, workingValue do
      workingValue3 = GetEntityModel
      nameValue = stateFlag4
      -- Beginner: result below is modelHash.
      workingValue3 = workingValue3(nameValue)
      nameValue = CMG
      nameValue = nameValue.getVehicleIdFromModel
      nameValue2 = workingValue3
      nameValue = nameValue(nameValue2)
      nameValue2 = GetEntityCoords
      number5 = stateFlag4
      number7 = true
      -- Beginner: result below is entityCoords.
      nameValue2 = nameValue2(number5, number7)
      number5 = modelHash - nameValue2
      number5 = #number5
      number7 = 250.0
      if number5 < number7 then
        number7 = table
        number7 = number7.insert
        workingValue8 = cmgOperation5
        dataCollection5 = {}
        number11 = nameValue
        number12 = nameValue2
        number13 = number5
        dataCollection5[1] = number11
        dataCollection5[2] = number12
        dataCollection5[3] = number13
        number7(workingValue8, dataCollection5)
      end
    end
    workingValue18 = table
    workingValue18 = workingValue18.sort
    workingValue20 = cmgOperation5

    -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22) ===
    function workingValue21(localValue12, localValue22)
      local localValue32, text18
      localValue32 = localValue12[3]
      text18 = localValue22[3]
      localValue32 = localValue32 < text18
      return localValue32
    end
    workingValue18(workingValue20, workingValue21)
    workingValue18 = pairs
    workingValue20 = cmgOperation5
    workingValue18, workingValue20, workingValue21, workingValue = workingValue18(workingValue20)
    for text8, stateFlag4 in workingValue18, workingValue20, workingValue21, workingValue do
      if text8 > 20 then
        break
      end
      workingValue3 = CMG
      workingValue3 = workingValue3.DrawText3D
      nameValue = stateFlag4[2]
      nameValue2 = stateFlag4[1]
      if not nameValue2 then
        nameValue2 = "N/A"
      end
      number5 = 0.2
      number7 = nil
      workingValue8 = true
      workingValue3(nameValue, nameValue2, number5, number7, workingValue8)
    end
  end
  modelHash = text7
  if modelHash then
    modelHash = GetEntitySpeed
    cmgOperation5 = localValue1
    -- Beginner: result below is speed.
    modelHash = modelHash(cmgOperation5)
    modelHash = modelHash * 2.236936
    cmgOperation5 = 249.0
    if modelHash >= cmgOperation5 then
      cmgOperation5 = stateFlag5
      if cmgOperation5 then
        cmgOperation5 = table
        cmgOperation5 = cmgOperation5.insert
        workingValue18 = text9
        workingValue20 = GetEntityCoords
        workingValue21 = localValue1
        workingValue = true
        workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7, workingValue8, dataCollection5, number11, number12, number13, number14, number16, number17, number18, number20, number21, number22, stateFlag18, stateFlag20, number23, stateFlag21, workingValue15, workingValue16, stateFlag22 = workingValue20(workingValue21, workingValue)
        cmgOperation5(workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7, workingValue8, dataCollection5, number11, number12, number13, number14, number16, number17, number18, number20, number21, number22, stateFlag18, stateFlag20, number23, stateFlag21, workingValue15, workingValue16, stateFlag22)
        cmgOperation5 = false
        stateFlag5 = cmgOperation5
    end
    else
      cmgOperation5 = 240.0
      if modelHash < cmgOperation5 then
        cmgOperation5 = true
        stateFlag5 = cmgOperation5
      end
    end
    cmgOperation5 = pairs
    workingValue18 = text9
    cmgOperation5, workingValue18, workingValue20, workingValue21 = cmgOperation5(workingValue18)
    for workingValue, text8 in cmgOperation5, workingValue18, workingValue20, workingValue21 do
      stateFlag4 = DrawMarker
      workingValue3 = 28
      nameValue = text8.x
      nameValue2 = text8.y
      number5 = text8.z
      number7 = 0.0
      workingValue8 = 0.0
      dataCollection5 = 0.0
      number11 = 0.0
      number12 = 0.0
      number13 = 0.0
      number14 = 1.0
      number16 = 1.0
      number17 = 1.0
      number18 = 255
      number20 = 0
      number21 = 0
      number22 = 200
      stateFlag18 = false
      stateFlag20 = false
      number23 = 2
      stateFlag21 = false
      workingValue15 = nil
      workingValue16 = nil
      stateFlag22 = false
      stateFlag4(workingValue3, nameValue, nameValue2, number5, number7, workingValue8, dataCollection5, number11, number12, number13, number14, number16, number17, number18, number20, number21, number22, stateFlag18, stateFlag20, number23, stateFlag21, workingValue15, workingValue16, stateFlag22)
      stateFlag4 = CMG
      stateFlag4 = stateFlag4.getPlayerCoords
      -- Beginner: result below is playerCoords.
      stateFlag4 = stateFlag4()
      stateFlag4 = stateFlag4 - text8
      stateFlag4 = #stateFlag4
      if stateFlag4 < 75.0 then
        stateFlag4 = CMG
        stateFlag4 = stateFlag4.DrawText3D
        workingValue3 = text8
        nameValue = tostring
        nameValue2 = workingValue
        nameValue = nameValue(nameValue2)
        nameValue2 = 0.5
        stateFlag4(workingValue3, nameValue, nameValue2)
      end
    end
  end
  modelHash = text22
  if modelHash then
    modelHash = CMG
    modelHash = modelHash.hasClientPermission
    cmgOperation5 = "cardev.whitelisted"
    modelHash = modelHash(cmgOperation5)
    if modelHash then
      goto continueAtStep415
    end
  end
  return
  goto continueAtStep420
  ::continueAtStep415::
  if 0 == localValue1 then
    modelHash = text28
    cmgOperation5 = false
    modelHash(cmgOperation5)
  end
  ::continueAtStep420::
  modelHash = pairs
  cmgOperation5 = dataCollection39
  modelHash, cmgOperation5, workingValue18, workingValue20 = modelHash(cmgOperation5)
  for workingValue21, workingValue in modelHash, cmgOperation5, workingValue18, workingValue20 do
    if workingValue21 > 23 then
      text8 = 1
      if text8 then
        goto continueAtStep430
      end
    end
    text8 = 0
    ::continueAtStep430::
    stateFlag4 = text8 * 23
    stateFlag4 = workingValue21 - stateFlag4
    stateFlag4 = stateFlag4 * 0.0215
    stateFlag4 = 0.14 + stateFlag4
    workingValue3 = CursorInArea
    nameValue = text8 * 0.27
    nameValue = 0.25 + nameValue
    nameValue2 = text8 * 0.27
    nameValue2 = 0.5 + nameValue2
    number5 = stateFlag4
    number7 = stateFlag4 + 0.0215
    workingValue3 = workingValue3(nameValue, nameValue2, number5, number7)
    if workingValue3 then
      nameValue = 100
      if nameValue then
        goto continueAtStep457
      end
    end
    nameValue = 255
    ::continueAtStep457::
    nameValue2 = DrawAdvancedTextNoOutline
    number5 = text8 * 0.27
    number5 = 0.345 + number5
    number7 = stateFlag4
    workingValue8 = 0.005
    dataCollection5 = 0.02
    number11 = 0.35
    number12 = workingValue.name
    number13 = nameValue
    number14 = nameValue
    number16 = 255
    number17 = 255
    number18 = localValue3
    number20 = 1
    nameValue2(number5, number7, workingValue8, dataCollection5, number11, number12, number13, number14, number16, number17, number18, number20)
    nameValue2 = DrawAdvancedTextNoOutline
    number5 = text8 * 0.231
    number5 = 0.516 + number5
    number7 = stateFlag4 + 0.001
    workingValue8 = 0.005
    dataCollection5 = 0.02
    number11 = 0.35
    number12 = text25
    number13 = workingValue
    number12 = number12(number13)
    number13 = nameValue
    number14 = nameValue
    number16 = 255
    number17 = 255
    number18 = localValue3
    number20 = 1
    nameValue2(number5, number7, workingValue8, dataCollection5, number11, number12, number13, number14, number16, number17, number18, number20)
    if workingValue3 then
      nameValue2 = IsDisabledControlJustPressed
      number5 = 0
      number7 = 24
      nameValue2 = nameValue2(number5, number7)
      if nameValue2 then
        nameValue2 = Citizen
        nameValue2 = nameValue2.CreateThreadNow

        -- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
        function number5()
          local localValue12, localValue22
          localValue12 = text26
          localValue22 = workingValue
          localValue12(localValue22)
        end
        nameValue2(number5)
      end
    end
  end
  modelHash = DrawRect
  cmgOperation5 = 0.465
  workingValue18 = 0.415
  workingValue20 = 0.09
  workingValue21 = 0.495
  workingValue = 0
  text8 = 0
  stateFlag4 = 0
  workingValue3 = 100
  modelHash(cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3)
  modelHash = DrawRect
  cmgOperation5 = 0.695
  workingValue18 = 0.415
  workingValue20 = 0.09
  workingValue21 = 0.495
  workingValue = 0
  text8 = 0
  stateFlag4 = 0
  workingValue3 = 100
  modelHash(cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3)
  modelHash = DrawRect
  cmgOperation5 = 0.278
  workingValue18 = 0.14
  workingValue20 = 0.055
  workingValue21 = 0.02
  workingValue = 255
  text8 = 255
  stateFlag4 = 255
  workingValue3 = 230
  modelHash(cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3)
  modelHash = DrawAdvancedTextNoOutline
  cmgOperation5 = 0.346
  workingValue18 = 0.129
  workingValue20 = 0.005
  workingValue21 = 0.02
  workingValue = 0.24
  text8 = "Copy Handling"
  stateFlag4 = 0
  workingValue3 = 0
  nameValue = 0
  nameValue2 = 255
  number5 = 0
  number7 = 1
  modelHash(cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7)
  modelHash = CursorInArea
  cmgOperation5 = 0.25
  workingValue18 = 0.31
  workingValue20 = 0.12
  workingValue21 = 0.15
  modelHash = modelHash(cmgOperation5, workingValue18, workingValue20, workingValue21)
  if modelHash then
    modelHash = IsDisabledControlJustPressed
    cmgOperation5 = 0
    workingValue18 = 24
    modelHash = modelHash(cmgOperation5, workingValue18)
    if modelHash then
      modelHash = text27
      modelHash()
    end
  end
  modelHash = DrawRect
  cmgOperation5 = 0.338
  workingValue18 = 0.14
  workingValue20 = 0.055
  workingValue21 = 0.02
  workingValue = 255
  text8 = 255
  stateFlag4 = 255
  workingValue3 = 230
  modelHash(cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3)
  modelHash = DrawAdvancedTextNoOutline
  cmgOperation5 = 0.41
  workingValue18 = 0.129
  workingValue20 = 0.005
  workingValue21 = 0.02
  workingValue = 0.24
  text8 = "Reset Stats"
  stateFlag4 = 0
  workingValue3 = 0
  nameValue = 0
  nameValue2 = 255
  number5 = 0
  number7 = 1
  modelHash(cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7)
  modelHash = CursorInArea
  cmgOperation5 = 0.31
  workingValue18 = 0.37
  workingValue20 = 0.12
  workingValue21 = 0.15
  modelHash = modelHash(cmgOperation5, workingValue18, workingValue20, workingValue21)
  if modelHash then
    modelHash = IsDisabledControlJustPressed
    cmgOperation5 = 0
    workingValue18 = 24
    modelHash = modelHash(cmgOperation5, workingValue18)
    if modelHash then
      modelHash = dataCollection41
      modelHash = modelHash()
      text23 = modelHash
      modelHash = dataCollection
      dataCollection39 = modelHash
      modelHash = "CHandlingData"
      dataCollection40 = modelHash
    end
  end
  modelHash = DrawRect
  cmgOperation5 = 0.438
  workingValue18 = 0.14
  workingValue20 = 0.095
  workingValue21 = 0.02
  workingValue = 255
  text8 = 255
  stateFlag4 = 255
  workingValue3 = 230
  modelHash(cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3)
  modelHash = DrawAdvancedTextNoOutline
  cmgOperation5 = 0.488
  workingValue18 = 0.129
  workingValue20 = 0.005
  workingValue21 = 0.02
  workingValue = 0.24
  text8 = string
  text8 = text8.format
  stateFlag4 = "CMG Damage: %s"
  workingValue3 = rageUiOperation5
  workingValue3 = workingValue3[localValue1]
  if workingValue3 then
    workingValue3 = "Disabled"
    if workingValue3 then
      goto continueAtStep642
    end
  end
  workingValue3 = "Enabled"
  ::continueAtStep642::
  text8 = text8(stateFlag4, workingValue3)
  stateFlag4 = 0
  workingValue3 = 0
  nameValue = 0
  nameValue2 = 255
  number5 = 0
  number7 = 1
  modelHash(cmgOperation5, workingValue18, workingValue20, workingValue21, workingValue, text8, stateFlag4, workingValue3, nameValue, nameValue2, number5, number7)
  modelHash = CursorInAreaRect
  cmgOperation5 = 0.438
  workingValue18 = 0.14
  workingValue20 = 0.095
  workingValue21 = 0.02
  modelHash = modelHash(cmgOperation5, workingValue18, workingValue20, workingValue21)
  if modelHash then
    modelHash = IsDisabledControlJustPressed
    cmgOperation5 = 0
    workingValue18 = 24
    modelHash = modelHash(cmgOperation5, workingValue18)
    if modelHash then
      modelHash = rageUiOperation5
      cmgOperation5 = rageUiOperation5
      cmgOperation5 = cmgOperation5[localValue1]
      cmgOperation5 = not cmgOperation5
      modelHash[localValue1] = cmgOperation5
    end
  end
  modelHash = 0
  cmgOperation5 = pairs
  workingValue18 = dataCollection38
  cmgOperation5, workingValue18, workingValue20, workingValue21 = cmgOperation5(workingValue18)
  for workingValue, text8 in cmgOperation5, workingValue18, workingValue20, workingValue21 do
    if modelHash >= 4 then
      stateFlag4 = 1
      if stateFlag4 then
        goto continueAtStep680
      end
    end
    stateFlag4 = 0
    ::continueAtStep680::
    workingValue3 = stateFlag4 * 4
    workingValue3 = modelHash - workingValue3
    workingValue3 = workingValue3 * 0.125
    nameValue = DrawRect
    nameValue2 = 0.308 + workingValue3
    number5 = 0.05 * stateFlag4
    number5 = 0.685 + number5
    number7 = 0.115
    workingValue8 = 0.02
    dataCollection5 = 255
    number11 = 255
    number12 = 255
    number13 = 230
    nameValue(nameValue2, number5, number7, workingValue8, dataCollection5, number11, number12, number13)
    nameValue = DrawAdvancedTextNoOutline
    nameValue2 = 0.403 + workingValue3
    number5 = 0.05 * stateFlag4
    number5 = 0.675 + number5
    number7 = 0.005
    workingValue8 = 0.02
    dataCollection5 = 0.24
    number11 = workingValue
    number12 = 0
    number13 = 0
    number14 = 0
    number16 = 255
    number17 = 0
    number18 = 0
    nameValue(nameValue2, number5, number7, workingValue8, dataCollection5, number11, number12, number13, number14, number16, number17, number18)
    nameValue = CursorInArea
    nameValue2 = 0.2505 + workingValue3
    number5 = 0.3655 + workingValue3
    number7 = stateFlag4 * 0.05
    number7 = 0.665 + number7
    workingValue8 = stateFlag4 * 0.05
    workingValue8 = 0.705 + workingValue8
    nameValue = nameValue(nameValue2, number5, number7, workingValue8)
    if nameValue then
      nameValue = IsDisabledControlJustPressed
      nameValue2 = 0
      number5 = 24
      nameValue = nameValue(nameValue2, number5)
      if nameValue then
        dataCollection39 = text8
        dataCollection40 = workingValue
      end
    end
    modelHash = modelHash + 1
  end
end
text35 = _ENV
text36 = "CMG"
text35 = text35[text36]
text36 = "createThreadOnTick"
text35 = text35[text36]
text36 = text34
text37 = "Car Dev"
text35(text36, text37)
text35 = _ENV
text36 = "RegisterNetEvent"
text35 = text35[text36]
text36 = "9f1be64859"

-- === HELPER FUNCTION (decompiler name: text37; parameters: localValue1) ===
function text37(localValue1)
  local localValue2, localValue3, text17, number24
  localValue2 = CMG
  localValue2 = localValue2.clientPrompt
  localValue3 = "Car Dev API Key (CTRL+A & CTRL+C)"
  text17 = localValue1

  -- === HELPER FUNCTION (decompiler name: number24; parameters: none) ===
  function number24()
    local localValue12, localValue22
  end
  localValue2(localValue3, text17, number24)
end
text35(text36, text37)
