--[[
    LEVEL 1 BEGINNER GUIDE — Emotes
    ====================================

    File: cmg/prod/client/misc/cl_emotes.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Emotes feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 146
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
local cmgOperation, dataCollection5, text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection5 = "cfg/cfg_emotes"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection5)
dataCollection5 = cmgOperation.shared
if not dataCollection5 then
  dataCollection5 = {}
end
cmgOperation.shared = dataCollection5
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "mainmenu"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateMenu
text12 = ""
text13 = "Main Menu"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuHeight
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = "cmg_emotes"
text = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "emotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "mainmenu"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "emotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "danceemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Dance Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "danceemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "customemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Custom Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "customemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "fireworksemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Fireworks Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "fireworksemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "carryemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Carry (nearby player)"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "carryemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "vehicleescrowemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Vehicle Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "vehicleescrowemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "punishemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Punish Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "punishemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "roleplayescrowemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Roleplay Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "roleplayescrowemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "flagescrowemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Flag Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "flagescrowemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "trophyescrowemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Trophy Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "trophyescrowemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "standardemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Standard Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "standardemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "gunemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Gun Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "gunemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "favouriteemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Favourite Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "propemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Prop Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "propemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "sharedemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Shared Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "walkingstyles"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "mainmenu"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Walking Styles"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "moods"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "mainmenu"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Moods"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "animalemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Animal Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "animalemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = RMenu
dataCollection5 = dataCollection5.Add
text9 = "emotesmenu"
text11 = "searchemotes"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text12 = RMenu
text13 = text12
text12 = text12.Get
rageUiOperation5 = "emotesmenu"
rageUiOperation7 = "emotes"
-- Beginner: result below is menu.
text12 = text12(text13, rageUiOperation5, rageUiOperation7)
text13 = ""
rageUiOperation5 = "Search Emotes"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
text = "cmg_emotes"
text3 = "cmg_emotes"
rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60 = rageUiOperation4(text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3)
dataCollection5(text9, text11, rageUiOperation4, text12, text13, rageUiOperation5, rageUiOperation7, rageUiOperation8, text, text3, text4, dataCollection3, number2, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, number4, stateFlag8, number5, dataCollection6, stateFlag10, workingValue14, number6, workingValue15, number8, number9, number10, number11, number12, workingValue16, stateFlag20, stateFlag21, stateFlag23, text10, cmgOperation2, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue28, dataCollection7, number14, number15, number16, number17, number18, workingValue29, workingValue30, workingValue31, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue54, workingValue55, workingValue56, workingValue57, rageUiOperation6, text16, workingValue58, stateFlag26, stateFlag27, text17, cmgOperation3, text19, workingValue60)
dataCollection5 = RMenu
text9 = dataCollection5
dataCollection5 = dataCollection5.Get
text11 = "emotesmenu"
rageUiOperation4 = "searchemotes"
-- Beginner: result below is menu.
dataCollection5 = dataCollection5(text9, text11, rageUiOperation4)
text9 = dataCollection5
dataCollection5 = dataCollection5.AddInstructionButton
text11 = {}
rageUiOperation4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
text12 = "Favourite emote"
text11[1] = rageUiOperation4
text11[2] = text12
dataCollection5(text9, text11)
dataCollection5 = {}
text9 = {}
text11 = {}

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = string
  localValue2 = localValue2.lower
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = string
  localValue3 = localValue3.gsub
  localValue4 = localValue2
  localValue5 = "[^%w]+"
  localValue6 = "_"
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue2 = localValue3
  localValue3 = string
  localValue3 = localValue3.gsub
  localValue4 = localValue2
  localValue5 = "^_+"
  localValue6 = ""
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue2 = localValue3
  localValue3 = string
  localValue3 = localValue3.gsub
  localValue4 = localValue2
  localValue5 = "_+$"
  localValue6 = ""
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue2 = localValue3
  if "" == localValue2 then
    localValue3 = "other"
    return localValue3
  end
  return localValue2
end
text12 = {}
text12.uk = "United Kingdom"
text12.us = "United States"
text12.eu = "European Union"
text12.scotland = "Scotland"
text12.ireland = "Ireland"
text12.german = "Germany"
text12.france = "France"
text12.canada = "Canada"
text12.mexico = "Mexico"
text12.japan = "Japan"
text12.russia = "Russia"
text12.china = "China"
text12.brazil = "Brazil"
text12.australia = "Australia"
text12.argentina = "Argentina"
text12.spain = "Spain"
text12.italy = "Italy"
text12.poland = "Poland"
text12.portugal = "Portugal"
text12.turkey = "Turkey"
text12.korea = "South Korea"
text12.southkorea = "South Korea"
text12.austria = "Austria"
text12.belgium = "Belgium"
text12.sapd = "SAPD"
text12.sa = "San Andreas"
text12.lsfd = "LSFD"
text12.lssd = "LSSD"
text12.lsservices = "LS Services"
text12.sheriff = "Sheriff"
text12.fbi = "FBI"
text12.fp = "FP"

-- === HELPER FUNCTION (decompiler name: text13; parameters: localValue1) ===
function text13(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  if not localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = string
  localValue2 = localValue2.lower
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = string
  localValue3 = localValue3.gsub
  localValue4 = localValue2
  localValue5 = "_s$"
  localValue6 = ""
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue2 = localValue3
  localValue3 = text12
  localValue3 = localValue3[localValue2]
  if localValue3 then
    localValue3 = text12
    localValue3 = localValue3[localValue2]
    return localValue3
  end
  localValue3 = string
  localValue3 = localValue3.gsub
  localValue4 = localValue2
  localValue5 = "_"
  localValue6 = " "
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue2 = localValue3
  localValue3 = string
  localValue3 = localValue3.gsub
  localValue4 = " "
  localValue5 = localValue2
  localValue4 = localValue4 .. localValue5
  localValue5 = "%W%l"
  localValue6 = string
  localValue6 = localValue6.upper
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue4 = localValue3
  localValue3 = localValue3.sub
  localValue5 = 2
  return localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: localValue1) ===
function rageUiOperation5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  if not localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = string
  localValue2 = localValue2.lower
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "prop_fnccorgm_02pole" == localValue2 or "a3d_pole" == localValue2 then
    localValue3 = nil
    return localValue3
  end
  if "stt_prop_flagpole_1a" == localValue2 then
    localValue3 = "Giant Flag Pole"
    return localValue3
  end
  localValue3 = string
  localValue3 = localValue3.find
  localValue4 = localValue2
  localValue5 = "ind_prop_dlc_flag"
  localValue6 = 1
  localValue7 = true
  localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7)
  if localValue3 then
    localValue3 = "DLC Flag"
    return localValue3
  end
  localValue3 = string
  localValue3 = localValue3.match
  localValue4 = localValue2
  localValue5 = "apa_prop_flag_(.+)"
  localValue3 = localValue3(localValue4, localValue5)
  if localValue3 then
    localValue4 = text13
    localValue5 = localValue3
    return localValue4(localValue5)
  end
  localValue4 = string
  localValue4 = localValue4.match
  localValue5 = localValue2
  localValue6 = "prop_flag_(.+)"
  localValue4 = localValue4(localValue5, localValue6)
  if localValue4 then
    localValue5 = text13
    localValue6 = localValue4
    return localValue5(localValue6)
  end
  localValue5 = nil
  return localValue5
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: localValue1, localValue2) ===
function rageUiOperation7(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  if localValue1 then
    localValue3 = string
    localValue3 = localValue3.match
    localValue4 = localValue1
    localValue5 = "^(.-) \194\183 "
    localValue3 = localValue3(localValue4, localValue5)
    if localValue3 and "" ~= localValue3 then
      return localValue3
    end
  end
  if localValue2 then
    localValue3 = localValue2.animationOptions
    if localValue3 then
      localValue3 = localValue2.animationOptions
      localValue4 = rageUiOperation5
      localValue5 = localValue3.secondProp
      localValue4 = localValue4(localValue5)
      if localValue4 then
        return localValue4
      end
      localValue5 = rageUiOperation5
      localValue6 = localValue3.prop
      localValue5 = localValue5(localValue6)
      if localValue5 then
        return localValue5
      end
    end
  end
  localValue3 = "Other"
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation8; parameters: localValue1) ===
function rageUiOperation8(localValue1)
  local localValue2, localValue3, localValue4
  if not localValue1 then
    localValue2 = ""
    return localValue2
  end
  localValue2 = string
  localValue2 = localValue2.match
  localValue3 = localValue1
  localValue4 = "^.- \194\183 (.+)$"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    return localValue2
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5, dataCollection4, rageUiOperation, text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6
  localValue1 = cmgOperation.escrowPazeeeKeys
  if not localValue1 then
    return
  end
  localValue1 = {}

  -- === HELPER FUNCTION: localValue2(localValue12, localValue22) ===
  function localValue2(localValue12, localValue22)
    local localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection, dataCollection2
    if not localValue12 then
      return
    end
    localValue32 = ipairs
    workingValue17 = localValue12
    localValue32, workingValue17, workingValue27, stateFlag25 = localValue32(workingValue17)
    for number19, text15 in localValue32, workingValue17, workingValue27, stateFlag25 do
      workingValue59 = cmgOperation.emotes
      workingValue59 = workingValue59[text15]
      if not workingValue59 then
        workingValue59 = cmgOperation.props
        workingValue59 = workingValue59[text15]
        if not workingValue59 then
          workingValue59 = cmgOperation.shared
          if workingValue59 then
            workingValue59 = cmgOperation.shared
            workingValue59 = workingValue59[text15]
          end
        end
      end
      if workingValue59 then
        playerPed = rageUiOperation7
        workingValue = workingValue59[3]
        dataCollection = workingValue59
        playerPed = playerPed(workingValue, dataCollection)
        workingValue = localValue1
        workingValue = workingValue[playerPed]
        if not workingValue then
          workingValue = localValue1
          dataCollection = {}
          workingValue[playerPed] = dataCollection
        end
        workingValue = localValue1
        workingValue = workingValue[playerPed]
        dataCollection = localValue1
        dataCollection = dataCollection[playerPed]
        dataCollection = #dataCollection
        dataCollection = dataCollection + 1
        dataCollection2 = {}
        dataCollection2.command = text15
        dataCollection2.emoteInfo = workingValue59
        dataCollection2.useNearby = localValue22
        workingValue[dataCollection] = dataCollection2
      end
    end
  end
  localValue3 = localValue2
  localValue4 = cmgOperation.escrowPazeeeKeys
  localValue4 = localValue4.flagEmotes
  localValue5 = false
  localValue3(localValue4, localValue5)
  localValue3 = localValue2
  localValue4 = cmgOperation.escrowPazeeeKeys
  localValue4 = localValue4.flagProps
  localValue5 = false
  localValue3(localValue4, localValue5)
  localValue3 = localValue2
  localValue4 = cmgOperation.escrowPazeeeKeys
  localValue4 = localValue4.flagShared
  localValue5 = true
  localValue3(localValue4, localValue5)
  localValue3 = {}
  dataCollection5 = localValue3
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = dataCollection5
    localValue9 = #localValue9
    localValue10 = localValue9 + 1
    localValue9 = dataCollection5
    localValue9[localValue10] = localValue7
  end
  localValue3 = table
  localValue3 = localValue3.sort
  localValue4 = dataCollection5

  -- === HELPER FUNCTION: localValue5(localValue12, localValue22) ===
  function localValue5(localValue12, localValue22)
    local localValue32
    if "Other" == localValue12 then
      localValue32 = false
      return localValue32
    end
    if "Other" == localValue22 then
      localValue32 = true
      return localValue32
    end
    localValue32 = localValue12 < localValue22
    return localValue32
  end
  localValue3(localValue4, localValue5)
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  localValue5 = "emotesmenu"
  localValue6 = "flagescrowemotes"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue4 = ipairs
  localValue5 = dataCollection5
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8, localValue9 in localValue4, localValue5, localValue6, localValue7 do
    localValue10 = localValue1[localValue9]
    localValue11 = table
    localValue11 = localValue11.sort
    workingValue2 = localValue10

    -- === HELPER FUNCTION (decompiler name: text5; parameters: localValue12, localValue22) ===
    function text5(localValue12, localValue22)
      local localValue32, workingValue17, workingValue27
      localValue32 = rageUiOperation8
      workingValue17 = localValue12.emoteInfo
      workingValue17 = workingValue17[3]
      localValue32 = localValue32(workingValue17)
      workingValue17 = rageUiOperation8
      workingValue27 = localValue22.emoteInfo
      workingValue27 = workingValue27[3]
      workingValue17 = workingValue17(workingValue27)
      localValue32 = localValue32 < workingValue17
      return localValue32
    end
    localValue11(workingValue2, text5)
    localValue11 = text11
    localValue11[localValue9] = localValue10
    localValue11 = "flagcountry_"
    workingValue2 = rageUiOperation4
    text5 = localValue9
    workingValue2 = workingValue2(text5)
    localValue11 = localValue11 .. workingValue2
    workingValue2 = text9
    workingValue2[localValue9] = localValue11
    workingValue2 = RMenu
    workingValue2 = workingValue2.Add
    text5 = "emotesmenu"
    dataCollection4 = localValue11
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.CreateSubMenu
    text6 = localValue3
    text8 = ""
    stateFlag = localValue9
    rageUiOperation2 = CMG
    rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
    rageUiOperation2 = rageUiOperation2()
    rageUiOperation3 = CMG
    rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
    rageUiOperation3 = rageUiOperation3()
    stateFlag5 = "cmg_emotes"
    stateFlag6 = "cmg_emotes"
    rageUiOperation, text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6 = rageUiOperation(text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6)
    workingValue2(text5, dataCollection4, rageUiOperation, text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6)
    workingValue2 = RMenu
    text5 = workingValue2
    workingValue2 = workingValue2.Get
    dataCollection4 = "emotesmenu"
    rageUiOperation = localValue11
    -- Beginner: result below is menu.
    workingValue2 = workingValue2(text5, dataCollection4, rageUiOperation)
    text5 = workingValue2
    workingValue2 = workingValue2.AddInstructionButton
    dataCollection4 = {}
    rageUiOperation = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
    text6 = "Favourite emote"
    dataCollection4[1] = rageUiOperation
    dataCollection4[2] = text6
    workingValue2(text5, dataCollection4)
  end
end
text3 = text
text3()
text3 = false
text4 = ""
dataCollection3 = {}
number2 = 0
workingValue5 = nil
workingValue6 = nil
workingValue7 = nil
workingValue8 = nil

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3
  if nil == localValue1 or false == localValue1 then
    localValue2 = false
    return localValue2
  end
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "number" == localValue2 and 0 == localValue1 then
    localValue2 = false
    return localValue2
  end
  localValue2 = true
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, localValue3
  localValue1 = IsDisabledControlPressed
  localValue2 = 0
  localValue3 = 47
  localValue1 = localValue1(localValue2, localValue3)
  if not localValue1 then
    localValue1 = IsControlPressed
    localValue2 = 0
    localValue3 = 47
    localValue1 = localValue1(localValue2, localValue3)
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3
  localValue1 = IsDisabledControlJustPressed
  localValue2 = 0
  localValue3 = 47
  localValue1 = localValue1(localValue2, localValue3)
  if not localValue1 then
    localValue1 = IsControlJustPressed
    localValue2 = 0
    localValue3 = 47
    localValue1 = localValue1(localValue2, localValue3)
  end
  return localValue1
end
number4 = 900
stateFlag8 = false
number5 = 0
dataCollection6 = {}
stateFlag10 = false
workingValue14 = nil
number6 = 0
workingValue15 = nil
number8 = 0
number9 = 0
number10 = 0
number11 = 1500
number12 = 0

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: none) ===
function workingValue16()
  local localValue1, localValue2, localValue3
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue2 = number12
  localValue2 = localValue1 - localValue2
  localValue3 = 5000
  if localValue2 < localValue3 then
    return
  end
  number12 = localValue1
  localValue2 = notify
  localValue3 = "~r~Emotes are being rate limited."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
end
stateFlag20 = true
stateFlag21 = false
stateFlag23 = false
text10 = ""
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1) ===
function workingValue18(localValue1)
  local localValue2
  stateFlag21 = localValue1
end
cmgOperation2.setEmotesIgnoreCombatTimer = workingValue18

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue1 = pairs
  localValue2 = dataCollection3
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = DeleteEntity
    localValue8 = localValue6
    -- Beginner: Delete a GTA entity.
    localValue7(localValue8)
  end
  localValue1 = {}
  dataCollection3 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11) ===
function workingValue18(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
  local workingValue2, text5, dataCollection4, rageUiOperation, text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7, stateFlag14
  workingValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue2 = workingValue2()
  text5 = GetEntityCoords
  dataCollection4 = workingValue2
  rageUiOperation = true
  -- Beginner: result below is entityCoords.
  text5 = text5(dataCollection4, rageUiOperation)
  dataCollection4 = CMG
  dataCollection4 = dataCollection4.loadModel
  rageUiOperation = localValue1
  dataCollection4 = dataCollection4(rageUiOperation)
  rageUiOperation = CMG
  rageUiOperation = rageUiOperation.requestEntitySpawn
  if localValue9 then
    text6 = "emote_object_second"
    if text6 then
      goto continueAtStep19
    end
  end
  text6 = "emote_object"
  ::continueAtStep19::
  text8 = localValue1
  rageUiOperation(text6, text8)
  rageUiOperation = CreateObject
  text6 = GetHashKey
  text8 = localValue1
  -- Beginner: result below is hash.
  text6 = text6(text8)
  text8 = text5.x
  stateFlag = text5.y
  rageUiOperation2 = text5.z
  rageUiOperation2 = rageUiOperation2 + 0.2
  rageUiOperation3 = true
  stateFlag5 = true
  stateFlag6 = true
  -- Beginner: result below is objectEntity.
  rageUiOperation = rageUiOperation(text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6)
  if false == localValue11 then
    text6 = SetEntityCollision
    text8 = rageUiOperation
    stateFlag = true
    rageUiOperation2 = true
    text6(text8, stateFlag, rageUiOperation2)
  else
    text6 = SetEntityCollision
    text8 = rageUiOperation
    stateFlag = false
    rageUiOperation2 = false
    text6(text8, stateFlag, rageUiOperation2)
  end
  text6 = AttachEntityToEntity
  text8 = rageUiOperation
  stateFlag = workingValue2
  rageUiOperation2 = GetPedBoneIndex
  rageUiOperation3 = workingValue2
  stateFlag5 = localValue2
  rageUiOperation2 = rageUiOperation2(rageUiOperation3, stateFlag5)
  rageUiOperation3 = localValue3
  stateFlag5 = localValue4
  stateFlag6 = localValue5
  stateFlag7 = localValue6
  workingValue12 = localValue7
  workingValue13 = localValue8
  stateFlag9 = true
  stateFlag11 = true
  stateFlag12 = false
  stateFlag13 = true
  number7 = 1
  stateFlag14 = true
  -- Beginner: Attach one entity to another entity.
  text6(text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7, stateFlag14)
  if nil ~= localValue10 then
    text6 = SetObjectTextureVariation
    text8 = rageUiOperation
    stateFlag = localValue10
    text6(text8, stateFlag)
  end
  text6 = table
  text6 = text6.insert
  text8 = dataCollection3
  stateFlag = rageUiOperation
  text6(text8, stateFlag)
  text6 = SetModelAsNoLongerNeeded
  text8 = dataCollection4
  text6(text8)
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue1) ===
function workingValue19(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = SetFacialIdleAnimOverride
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = localValue1[2]
  localValue5 = nil
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = true
  text3 = localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1) ===
function workingValue20(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  if 0 ~= localValue2 then
    localValue2 = notify
    localValue3 = "~r~Can not use scenarios whilst in a vehicle."
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
    return
  end
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = localValue1[1]
  if "Scenario" == localValue3 then
    localValue3 = ClearPedTasks
    localValue4 = localValue2
    localValue3(localValue4)
    localValue3 = TaskStartScenarioInPlace
    localValue4 = localValue2
    localValue5 = localValue1[2]
    localValue6 = 0
    localValue7 = true
    localValue3(localValue4, localValue5, localValue6, localValue7)
  else
    localValue3 = localValue1[1]
    if "MaleScenario" == localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.getModelGender
      localValue3 = localValue3()
      if "male" == localValue3 then
        localValue3 = ClearPedTasks
        localValue4 = localValue2
        localValue3(localValue4)
        localValue3 = TaskStartScenarioInPlace
        localValue4 = localValue2
        localValue5 = localValue1[2]
        localValue6 = 0
        localValue7 = true
        localValue3(localValue4, localValue5, localValue6, localValue7)
      else
        localValue3 = notify
        localValue4 = "~r~This scenario is male only."
        -- Beginner: Show a notification to the player.
        localValue3(localValue4)
      end
    else
      localValue3 = localValue1[1]
      if "ScenarioObject" == localValue3 then
        localValue3 = GetOffsetFromEntityInWorldCoords
        localValue4 = localValue2
        localValue5 = 0.0
        localValue6 = -0.5
        localValue7 = -0.5
        localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7)
        localValue4 = ClearPedTasks
        localValue5 = localValue2
        localValue4(localValue5)
        localValue4 = TaskStartScenarioAtPosition
        localValue5 = localValue2
        localValue6 = localValue1[2]
        localValue7 = localValue3.x
        localValue8 = localValue3.y
        localValue9 = localValue3.z
        localValue10 = GetEntityHeading
        localValue11 = localValue2
        -- Beginner: result below is heading.
        localValue10 = localValue10(localValue11)
        localValue11 = 0
        workingValue2 = true
        text5 = false
        -- Beginner: Make an NPC start a GTA scenario/ambient animation.
        localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5)
      end
    end
  end
  localValue3 = true
  text3 = localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue1) ===
function workingValue21(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = localValue1.animationOptions
  localValue3 = CMG
  localValue3 = localValue3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3()
  localValue3 = 0 ~= localValue3
  if localValue3 then
    if localValue2 then
      localValue4 = localValue2.fullBody
      if localValue4 then
        localValue4 = 32
        return localValue4
      end
    end
    localValue4 = 51
    return localValue4
  end
  if not localValue2 then
    localValue4 = 0
    return localValue4
  end
  localValue4 = localValue2.animFlag
  if nil ~= localValue4 then
    localValue4 = localValue2.animFlag
    return localValue4
  end
  localValue4 = localValue2.onFootFlag
  if nil ~= localValue4 then
    localValue4 = localValue2.onFootFlag
    return localValue4
  end
  localValue4 = localValue2.emoteStuck
  if localValue4 then
    localValue4 = 50
    return localValue4
  end
  localValue4 = localValue2.emoteLoop
  if localValue4 then
    localValue4 = localValue2.emoteMoving
    if localValue4 then
      localValue4 = 51
      return localValue4
    else
      localValue4 = 1
      return localValue4
    end
  end
  localValue4 = localValue2.emoteMoving
  if localValue4 then
    localValue4 = 51
    return localValue4
  end
  localValue4 = 0
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: localValue1) ===
function workingValue22(localValue1)
  local localValue2
  localValue2 = localValue1.animationOptions
  if localValue2 then
    localValue2 = localValue1.animationOptions
    localValue2 = localValue2.emoteDuration
    if not localValue2 then
      localValue2 = -1
    end
    return localValue2
  else
    localValue2 = -1
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1) ===
function workingValue23(localValue1)
  local localValue2, localValue3
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection, dataCollection2, workingValue3, workingValue4, text7, number3, stateFlag2, stateFlag3, stateFlag4
    localValue12 = true
    stateFlag23 = localValue12
    localValue12 = localValue1.animationOptions
    if not localValue12 then
      localValue12 = {}
    end
    localValue22 = localValue12.emoteDuration
    if not localValue22 then
      localValue22 = -1
    end
    localValue32 = localValue12.startDelay
    if not localValue32 then
      localValue32 = 0
    end
    if localValue32 > 0 then
      workingValue17 = Citizen
      workingValue17 = workingValue17.Wait
      workingValue27 = localValue32
      workingValue17(workingValue27)
    end
    workingValue17 = localValue1
    workingValue17 = workingValue17[1]
    workingValue27 = localValue1
    workingValue27 = workingValue27[2]
    if not workingValue17 or not workingValue27 then
      stateFlag25 = false
      stateFlag23 = stateFlag25
      return
    end
    stateFlag25 = workingValue21
    number19 = localValue1
    stateFlag25 = stateFlag25(number19)
    number19 = localValue12.blendInSpeed
    if not number19 then
      number19 = 8.0
    end
    text15 = localValue12.blendOutSpeed
    if not text15 then
      text15 = 8.0
    end
    workingValue59 = CMG
    workingValue59 = workingValue59.loadAnimDict
    playerPed = workingValue17
    -- Beginner: Load a GTA animation dictionary before using it.
    workingValue59(playerPed)
    workingValue59 = TaskPlayAnim
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    workingValue = workingValue17
    dataCollection = workingValue27
    dataCollection2 = number19
    workingValue3 = text15
    workingValue4 = localValue22
    text7 = stateFlag25
    number3 = 0
    stateFlag2 = false
    stateFlag3 = false
    stateFlag4 = false
    -- Beginner: Play an animation on a ped.
    workingValue59(playerPed, workingValue, dataCollection, dataCollection2, workingValue3, workingValue4, text7, number3, stateFlag2, stateFlag3, stateFlag4)
    workingValue59 = RemoveAnimDict
    playerPed = workingValue17
    workingValue59(playerPed)
    if localValue22 > 0 then
      workingValue59 = Citizen
      workingValue59 = workingValue59.Wait
      playerPed = localValue22
      workingValue59(playerPed)
    else
      workingValue59 = GetAnimDuration
      playerPed = workingValue17
      workingValue = workingValue27
      workingValue59 = workingValue59(playerPed, workingValue)
      if workingValue59 and workingValue59 > 0.0 then
        playerPed = Citizen
        playerPed = playerPed.Wait
        workingValue = math
        workingValue = workingValue.floor
        dataCollection = workingValue59 * 1000
        workingValue, dataCollection, dataCollection2, workingValue3, workingValue4, text7, number3, stateFlag2, stateFlag3, stateFlag4 = workingValue(dataCollection)
        playerPed(workingValue, dataCollection, dataCollection2, workingValue3, workingValue4, text7, number3, stateFlag2, stateFlag3, stateFlag4)
      end
    end
    workingValue59 = ClearPedTasks
    playerPed = PlayerPedId
    playerPed, workingValue, dataCollection, dataCollection2, workingValue3, workingValue4, text7, number3, stateFlag2, stateFlag3, stateFlag4 = playerPed()
    workingValue59(playerPed, workingValue, dataCollection, dataCollection2, workingValue3, workingValue4, text7, number3, stateFlag2, stateFlag3, stateFlag4)
    workingValue59 = cmgOperation2
    workingValue59()
    workingValue59 = false
    stateFlag23 = workingValue59
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue24; parameters: localValue1) ===
function workingValue24(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue2 = stateFlag23
  if localValue2 then
    return
  end
  localValue2 = text3
  if not localValue2 then
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.getClientUserId
  -- Beginner: result below is userId.
  localValue2 = localValue2()
  if not localValue2 then
    return
  end
  if not localValue1 then
    localValue3 = LocalPlayer
    localValue3 = localValue3.state
    localValue3 = localValue3.canCancel
    if false == localValue3 then
      return
    end
  end
  if not localValue1 then
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    localValue4 = number2
    localValue3 = localValue3 - localValue4
    localValue4 = number11
    if localValue3 < localValue4 then
      localValue3 = CMG
      localValue3 = localValue3.isDeveloper
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if not localValue3 then
        localValue3 = workingValue16
        localValue3()
        return
      end
    end
  end
  localValue3 = workingValue7
  if localValue3 then
    localValue3 = workingValue7.animationOptions
  end
  localValue4 = localValue3 or localValue4
  if localValue3 then
    localValue4 = localValue3.exitEmote
  end
  localValue5 = localValue4 or localValue5
  if localValue4 then
    localValue5 = cmgOperation.exits
    if localValue5 then
      localValue5 = cmgOperation.exits
      localValue5 = localValue5[localValue4]
    end
  end
  localValue6 = workingValue7
  if localValue6 then
    localValue6 = workingValue7.animationOptions
    if localValue6 then
      localValue6 = workingValue7.animationOptions
      localValue6 = localValue6.attachTo
      if localValue6 then
        localValue6 = DetachEntity
        localValue7 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue7 = localValue7()
        localValue8 = true
        localValue9 = false
        localValue6(localValue7, localValue8, localValue9)
      end
    end
  end
  localValue6 = workingValue8
  if localValue6 then
    localValue6 = workingValue8.handle
    localValue7 = workingValue9
    localValue8 = localValue6
    localValue7 = localValue7(localValue8)
    if localValue7 then
      localValue7 = StopParticleFxLooped
      localValue8 = localValue6
      localValue9 = false
      localValue7(localValue8, localValue9)
    end
    localValue7 = nil
    workingValue8 = localValue7
    localValue7 = number5
    localValue7 = localValue7 + 1
    number5 = localValue7
    localValue7 = false
    stateFlag8 = localValue7
  end
  localValue6 = text4
  localValue7 = workingValue7
  localValue8 = false
  text3 = localValue8
  localValue8 = nil
  workingValue5 = localValue8
  localValue8 = nil
  workingValue6 = localValue8
  localValue8 = nil
  workingValue7 = localValue8
  if localValue5 and localValue7 and "Scenario" ~= localValue6 and "MaleScenario" ~= localValue6 and "ScenarioObject" ~= localValue6 and "Expression" ~= localValue6 then
    localValue8 = cmgOperation2
    localValue8()
    localValue8 = ClearPedTasks
    localValue9 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue9 = localValue9()
    localValue8(localValue9)
    localValue8 = workingValue23
    localValue9 = localValue5
    localValue8(localValue9)
    return
  end
  if "Scenario" == localValue6 or "MaleScenario" == localValue6 then
    localValue8 = ClearPedTasksImmediately
    localValue9 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue9 = localValue9()
    localValue8(localValue9)
  else
    localValue8 = ClearPedTasks
    localValue9 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue9 = localValue9()
    localValue8(localValue9)
    localValue8 = cmgOperation2
    localValue8()
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1, localValue2) ===
function workingValue25(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  localValue3 = localValue1.animationOptions
  if localValue3 then
    localValue4 = localValue3.propTextureVariations
    if localValue4 then
      goto continueAtStep15
    end
  end
  if nil ~= localValue2 then
    localValue4 = tonumber
    localValue5 = localValue2
    return localValue4(localValue5)
  end
  localValue4 = nil
  return localValue4
  ::continueAtStep15::
  localValue4 = localValue3.propTextureVariations
  if nil ~= localValue2 then
    localValue5 = tonumber
    localValue6 = localValue2
    localValue5 = localValue5(localValue6)
    if localValue5 then
      localValue6 = localValue4[localValue5]
      if localValue6 then
        localValue6 = localValue4[localValue5]
        localValue6 = localValue6.value
        return localValue6
      end
    end
    if localValue5 then
      return localValue5
    end
  end
  localValue5 = localValue4[1]
  if localValue5 then
    localValue5 = localValue4[1]
    localValue5 = localValue5.value
    return localValue5
  end
  localValue5 = nil
  return localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue1, localValue2) ===
function workingValue26(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5, dataCollection4, rageUiOperation, text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7, stateFlag14, stateFlag15, stateFlag16, stateFlag17
  localValue3 = localValue1.animationOptions
  if not localValue3 then
    return
  end
  localValue4 = localValue3.prop
  if not localValue4 then
    return
  end
  localValue5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue5 = localValue5()
  number10 = localValue5
  localValue5 = workingValue25
  localValue6 = localValue1
  localValue7 = localValue2
  localValue5 = localValue5(localValue6, localValue7)
  localValue6 = localValue3.propBone
  localValue7 = table
  localValue7 = localValue7.unpack
  localValue8 = localValue3.propPlacement
  localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2 = localValue7(localValue8)
  text5 = localValue3.propNoCollision
  text5 = false ~= text5
  dataCollection4 = workingValue18
  rageUiOperation = localValue4
  text6 = localValue6
  text8 = localValue7
  stateFlag = localValue8
  rageUiOperation2 = localValue9
  rageUiOperation3 = localValue10
  stateFlag5 = localValue11
  stateFlag6 = workingValue2
  stateFlag7 = false
  workingValue12 = localValue5
  workingValue13 = text5
  dataCollection4(rageUiOperation, text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13)
  dataCollection4 = localValue3.secondProp
  if not dataCollection4 then
    return
  end
  rageUiOperation = localValue3.secondPropBone
  text6 = table
  text6 = text6.unpack
  text8 = localValue3.secondPropPlacement
  text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5 = text6(text8)
  stateFlag6 = localValue3.secondPropNoCollision
  stateFlag6 = false ~= stateFlag6
  stateFlag7 = workingValue18
  workingValue12 = dataCollection4
  workingValue13 = rageUiOperation
  stateFlag9 = text6
  stateFlag11 = text8
  stateFlag12 = stateFlag
  stateFlag13 = rageUiOperation2
  number7 = rageUiOperation3
  stateFlag14 = stateFlag5
  stateFlag15 = true
  stateFlag16 = nil
  stateFlag17 = stateFlag6
  stateFlag7(workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7, stateFlag14, stateFlag15, stateFlag16, stateFlag17)
end

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue1, localValue2, localValue3) ===
function workingValue28(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5, dataCollection4, rageUiOperation, text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7, stateFlag14, stateFlag15, stateFlag16, stateFlag17, stateFlag18, stateFlag19, number13, stateFlag22
  localValue4 = table
  localValue4 = localValue4.unpack
  localValue5 = localValue1
  localValue4, localValue5 = localValue4(localValue5)
  localValue6 = workingValue21
  localValue7 = localValue1
  localValue6 = localValue6(localValue7)
  localValue7 = workingValue22
  localValue8 = localValue1
  localValue7 = localValue7(localValue8)
  localValue8 = localValue1.animationOptions
  if localValue8 then
    localValue9 = localValue8.startDelay
    if localValue9 then
      goto continueAtStep18
    end
  end
  localValue9 = 0
  ::continueAtStep18::
  if localValue9 > 0 then
    localValue10 = Citizen
    localValue10 = localValue10.Wait
    localValue11 = localValue9
    localValue10(localValue11)
  end
  if localValue8 then
    localValue10 = localValue8.blendInSpeed
    if localValue10 then
      goto continueAtStep30
    end
  end
  localValue10 = 2.0
  ::continueAtStep30::
  if localValue8 then
    localValue11 = localValue8.blendOutSpeed
    if localValue11 then
      goto continueAtStep36
    end
  end
  localValue11 = 2.0
  ::continueAtStep36::
  workingValue2 = CMG
  workingValue2 = workingValue2.loadAnimDict
  text5 = localValue4
  -- Beginner: Load a GTA animation dictionary before using it.
  workingValue2(text5)
  workingValue2 = TaskPlayAnim
  text5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text5 = text5()
  dataCollection4 = localValue4
  rageUiOperation = localValue5
  text6 = localValue10
  text8 = localValue11
  stateFlag = localValue7
  rageUiOperation2 = localValue6
  rageUiOperation3 = 0
  stateFlag5 = false
  stateFlag6 = false
  stateFlag7 = false
  -- Beginner: Play an animation on a ped.
  workingValue2(text5, dataCollection4, rageUiOperation, text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7)
  workingValue2 = RemoveAnimDict
  text5 = localValue4
  workingValue2(text5)
  workingValue2 = Citizen
  workingValue2 = workingValue2.Wait
  text5 = 0
  workingValue2(text5)
  workingValue2 = true
  text3 = workingValue2
  workingValue5 = localValue4
  workingValue6 = localValue5
  workingValue7 = localValue1
  if localValue8 then
    workingValue2 = localValue8.ptfxAsset
    if workingValue2 then
      workingValue2 = number5
      workingValue2 = workingValue2 + 1
      number5 = workingValue2
      workingValue2 = false
      stateFlag8 = workingValue2
      workingValue2 = {}
      text5 = localValue8.ptfxAsset
      workingValue2.asset = text5
      text5 = localValue8.ptfxName
      workingValue2.name = text5
      text5 = localValue8.ptfxPlacement
      workingValue2.placement = text5
      text5 = localValue8.ptfxInfo
      workingValue2.info = text5
      text5 = localValue8.ptfxWait
      workingValue2.wait = text5
      text5 = localValue8.ptfxCanHold
      workingValue2.ptfxCanHold = text5
      text5 = localValue8.ptfxNoProp
      workingValue2.ptfxNoProp = text5
      text5 = localValue8.ptfxBone
      workingValue2.ptfxBone = text5
      text5 = localValue8.ptfxColor
      workingValue2.ptfxColor = text5
      workingValue8 = workingValue2
      workingValue2 = workingValue8.info
      if workingValue2 then
        workingValue2 = notify
        text5 = workingValue8.info
        -- Beginner: Show a notification to the player.
        workingValue2(text5)
      end
    end
  end
  workingValue2 = workingValue26
  text5 = localValue1
  dataCollection4 = localValue3
  workingValue2(text5, dataCollection4)
  workingValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue2 = workingValue2()
  if not localValue2 then
    return
  end
  text5 = DetachEntity
  dataCollection4 = workingValue2
  rageUiOperation = true
  text6 = false
  text5(dataCollection4, rageUiOperation, text6)
  text5 = GetPlayerFromServerId
  dataCollection4 = localValue2
  -- Beginner: result below is playerIndex.
  text5 = text5(dataCollection4)
  if -1 == text5 then
    return
  end
  dataCollection4 = GetPlayerPed
  rageUiOperation = text5
  -- Beginner: result below is playerPed.
  dataCollection4 = dataCollection4(rageUiOperation)
  rageUiOperation = DoesEntityExist
  text6 = dataCollection4
  rageUiOperation = rageUiOperation(text6)
  if not rageUiOperation or dataCollection4 == workingValue2 then
    return
  end
  rageUiOperation = DetachEntity
  text6 = dataCollection4
  text8 = true
  stateFlag = false
  rageUiOperation(text6, text8, stateFlag)
  if localValue8 then
    rageUiOperation = localValue8.attachTo
    if rageUiOperation then
      rageUiOperation = GetEntityAttachedTo
      text6 = dataCollection4
      rageUiOperation = rageUiOperation(text6)
      if 0 == rageUiOperation then
        rageUiOperation = GetEntityAttachedTo
        text6 = workingValue2
        rageUiOperation = rageUiOperation(text6)
        if 0 == rageUiOperation then
          goto continueAtStep156
        end
      end
    end
  end
  return
  ::continueAtStep156::
  rageUiOperation = localValue8.bone
  if not rageUiOperation then
    rageUiOperation = -1
  end
  text6 = GetPedBoneIndex
  text8 = dataCollection4
  stateFlag = rageUiOperation
  text6 = text6(text8, stateFlag)
  if text6 < 0 then
    return
  end
  text8 = localValue8.xPos
  if not text8 then
    text8 = 0.0
  end
  stateFlag = localValue8.yPos
  if not stateFlag then
    stateFlag = 0.0
  end
  rageUiOperation2 = localValue8.zPos
  if not rageUiOperation2 then
    rageUiOperation2 = 0.0
  end
  rageUiOperation3 = localValue8.xRot
  if not rageUiOperation3 then
    rageUiOperation3 = 0.0
  end
  stateFlag5 = localValue8.yRot
  if not stateFlag5 then
    stateFlag5 = 0.0
  end
  stateFlag6 = localValue8.zRot
  if not stateFlag6 then
    stateFlag6 = 0.0
  end
  stateFlag7 = AttachEntityToEntity
  workingValue12 = workingValue2
  workingValue13 = dataCollection4
  stateFlag9 = text6
  stateFlag11 = text8
  stateFlag12 = stateFlag
  stateFlag13 = rageUiOperation2
  number7 = rageUiOperation3
  stateFlag14 = stateFlag5
  stateFlag15 = stateFlag6
  stateFlag16 = false
  stateFlag17 = false
  stateFlag18 = false
  stateFlag19 = true
  number13 = 1
  stateFlag22 = true
  -- Beginner: Attach one entity to another entity.
  stateFlag7(workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7, stateFlag14, stateFlag15, stateFlag16, stateFlag17, stateFlag18, stateFlag19, number13, stateFlag22)
end
dataCollection7 = {}
number14 = 2
number15 = 160
number16 = 161
number17 = 163
number18 = 167
dataCollection7[1] = number14
dataCollection7[2] = number15
dataCollection7[3] = number16
dataCollection7[4] = number17
dataCollection7[5] = number18

-- === HELPER FUNCTION (decompiler name: number14; parameters: localValue1) ===
function number14(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2
  localValue2 = LocalPlayer
  localValue2 = localValue2.state
  localValue2 = localValue2.canEmote
  if false == localValue2 then
    localValue2 = true
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.isInTurfContest
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = true
    return localValue2
  end
  localValue2 = tCMG
  localValue2 = localValue2.canAnim
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.isInsideDiamondCasino
    localValue2 = localValue2()
    if not localValue2 then
      goto continueAtStep40
    end
    localValue2 = tCMG
    localValue2 = localValue2.getNumAnimRefs
    localValue2 = localValue2()
    if not (localValue2 <= 1) then
      goto continueAtStep40
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.isHandcuffed
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.inEvent
    localValue2 = localValue2()
    if not localValue2 then
      goto continueAtStep42
    end
  end
  ::continueAtStep40::
  localValue2 = true
  return localValue2
  ::continueAtStep42::
  localValue2 = CMG
  localValue2 = localValue2.isPlayerInRedZone
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = true
    return localValue2
  end
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = IsPedSwimming
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = IsPedSwimmingUnderWater
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      goto continueAtStep63
    end
  end
  localValue3 = true
  return localValue3
  ::continueAtStep63::
  localValue3 = IsPedReloading
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = IsPlayerFreeAiming
    localValue4 = PlayerId
    localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2 = localValue4()
    localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2)
    if not localValue3 then
      localValue3 = GetEntityHealth
      localValue4 = localValue2
      -- Beginner: result below is health.
      localValue3 = localValue3(localValue4)
      if not (localValue3 <= 102) then
        goto continueAtStep81
      end
    end
  end
  localValue3 = true
  return localValue3
  ::continueAtStep81::
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCombatTimer
  localValue3 = localValue3()
  if not (localValue3 > 0) then
    localValue3 = IsPedShooting
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      goto continueAtStep96
    end
  end
  localValue3 = stateFlag21
  if not localValue3 then
    localValue3 = true
    return localValue3
  end
  ::continueAtStep96::
  localValue3 = CMG
  localValue3 = localValue3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3()
  if 0 ~= localValue3 then
    localValue4 = GetEntitySpeed
    localValue5 = localValue3
    -- Beginner: result below is speed.
    localValue4 = localValue4(localValue5)
    if localValue4 > 1.0 then
      localValue4 = GetPedInVehicleSeat
      localValue5 = localValue3
      localValue6 = -1
      localValue4 = localValue4(localValue5, localValue6)
      if localValue4 == localValue2 then
        localValue4 = true
        return localValue4
      end
    end
  end
  localValue4 = pairs
  localValue5 = dataCollection7
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8, localValue9 in localValue4, localValue5, localValue6, localValue7 do
    localValue10 = GetIsTaskActive
    localValue11 = localValue2
    workingValue2 = localValue9
    localValue10 = localValue10(localValue11, workingValue2)
    if localValue10 then
      localValue10 = true
      return localValue10
    end
  end
  localValue4 = CMG
  localValue4 = localValue4.isPlayerNearPrison
  localValue4 = localValue4()
  if localValue4 then
    localValue4 = CMG
    localValue4 = localValue4.isEmergencyService
    localValue4 = localValue4()
    if not localValue4 then
      goto continueAtStep144
    end
  end
  localValue4 = CMG
  localValue4 = localValue4.isInsideDiamondCasino
  localValue4 = localValue4()
  ::continueAtStep144::
  if localValue4 then
    if localValue1 then
      localValue4 = localValue1.animationOptions
      if localValue4 then
        localValue4 = localValue1.animationOptions
        localValue4 = localValue4.allowedPrison
        if localValue4 then
          localValue4 = false
          return localValue4
      end
    end
    else
      localValue4 = true
      return localValue4
    end
  end
  localValue4 = false
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: number15; parameters: none) ===
function number15()
  local localValue1, localValue2
  localValue1 = IsPedHuman
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue1 = localValue1(localValue2)
  localValue1 = not localValue1
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: number16; parameters: none) ===
function number16()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.getClientUserId
  -- Beginner: result below is userId.
  localValue1 = localValue1()
  if not localValue1 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.isDeveloper
  localValue3 = localValue1
  return localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: number17; parameters: none) ===
function number17()
  local localValue1, localValue2, localValue3
  localValue1 = stateFlag20
  if not localValue1 then
    localValue1 = true
    return localValue1
  end
  localValue1 = CMG
  localValue1 = localValue1.getClientUserId
  -- Beginner: result below is userId.
  localValue1 = localValue1()
  if not localValue1 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.isDeveloper
  localValue3 = localValue1
  return localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: number18; parameters: localValue1) ===
function number18(localValue1)
  local localValue2
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.devOnly
    localValue2 = true == localValue2
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue29; parameters: none) ===
function workingValue29()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.getClientUserId
  -- Beginner: result below is userId.
  localValue1 = localValue1()
  if not localValue1 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.isDeveloper
  localValue3 = localValue1
  return localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue30; parameters: localValue1) ===
function workingValue30(localValue1)
  local localValue2, localValue3
  if not localValue1 then
    localValue2 = false
    return localValue2
  end
  localValue2 = number18
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = workingValue29
    localValue2 = localValue2()
    if not localValue2 then
      localValue2 = false
      return localValue2
    end
  end
  localValue2 = true
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue31; parameters: localValue1) ===
function workingValue31(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = cmgOperation.fireworksEmotes
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = ipairs
  localValue3 = cmgOperation.fireworksEmotes
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    if localValue7 == localValue1 then
      localValue8 = true
      return localValue8
    end
  end
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue33; parameters: localValue1) ===
function workingValue33(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue2 = cmgOperation.fireworksEmotes
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = ipairs
  localValue3 = cmgOperation.fireworksEmotes
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = cmgOperation.emotes
    localValue8 = localValue8[localValue7]
    if not localValue8 then
      localValue8 = cmgOperation.props
      localValue8 = localValue8[localValue7]
    end
    if localValue8 == localValue1 then
      localValue9 = true
      return localValue9
    end
  end
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue34; parameters: localValue1) ===
function workingValue34(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = cmgOperation.escrowPazeeeKeys
  if localValue2 then
    localValue2 = cmgOperation.escrowPazeeeKeys
    localValue2 = localValue2.trash
    if localValue2 and localValue1 then
      goto continueAtStep12
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep12::
  localValue2 = ipairs
  localValue3 = cmgOperation.escrowPazeeeKeys
  localValue3 = localValue3.trash
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = cmgOperation.emotes
    localValue8 = localValue8[localValue7]
    if localValue8 ~= localValue1 then
      localValue8 = cmgOperation.props
      localValue8 = localValue8[localValue7]
      if localValue8 ~= localValue1 then
        localValue8 = cmgOperation.shared
        if not localValue8 then
          goto continueAtStep34
        end
        localValue8 = cmgOperation.shared
        localValue8 = localValue8[localValue7]
        if localValue8 ~= localValue1 then
          goto continueAtStep34
        end
      end
    end
    localValue8 = true
    return localValue8
    ::continueAtStep34::
  end
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue35(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11
  localValue5 = workingValue34
  localValue6 = localValue1
  localValue5 = localValue5(localValue6)
  if localValue5 then
    localValue5 = notify
    localValue6 = "~r~That emote is not available."
    -- Beginner: Show a notification to the player.
    localValue5(localValue6)
    return
  end
  if not localValue3 then
    localValue5 = number14
    localValue6 = localValue1
    localValue5 = localValue5(localValue6)
    if localValue5 then
      localValue5 = notify
      localValue6 = "~r~Can not use this emote at this time."
      localValue5(localValue6)
      return
    end
  end
  localValue5 = CMG
  localValue5 = localValue5.getClientUserId
  -- Beginner: result below is userId.
  localValue5 = localValue5()
  if not localValue5 then
    return
  end
  if not localValue3 then
    localValue6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue6 = localValue6()
    localValue7 = number2
    localValue6 = localValue6 - localValue7
    localValue7 = number11
    if localValue6 < localValue7 then
      localValue6 = CMG
      localValue6 = localValue6.isDeveloper
      localValue7 = localValue5
      localValue6 = localValue6(localValue7)
      if not localValue6 then
        localValue6 = workingValue16
        localValue6()
        return
      end
    end
  end
  localValue6 = localValue1.animalEmote
  if localValue6 then
    localValue6 = number16
    localValue6 = localValue6()
    if not localValue6 then
      localValue6 = notify
      localValue7 = "~r~Animal emotes are developer only."
      -- Beginner: Show a notification to the player.
      localValue6(localValue7)
      return
    end
    localValue6 = IsPedHuman
    localValue7 = PlayerPedId
    localValue7, localValue8, localValue9, localValue10, localValue11 = localValue7()
    localValue6 = localValue6(localValue7, localValue8, localValue9, localValue10, localValue11)
    if localValue6 then
      localValue6 = notify
      localValue7 = "~r~This emote is for animal peds only."
      localValue6(localValue7)
      return
    end
  end
  localValue6 = workingValue33
  localValue7 = localValue1
  localValue6 = localValue6(localValue7)
  if localValue6 then
    localValue6 = number17
    localValue6 = localValue6()
    if not localValue6 then
      localValue6 = notify
      localValue7 = "~r~Fireworks emotes are developer only."
      -- Beginner: Show a notification to the player.
      localValue6(localValue7)
      return
    end
  end
  localValue6 = number18
  localValue7 = localValue1
  localValue6 = localValue6(localValue7)
  if localValue6 then
    localValue6 = workingValue29
    localValue6 = localValue6()
    if not localValue6 then
      localValue6 = notify
      localValue7 = "~r~That emote is developer only."
      localValue6(localValue7)
      return
    end
  end
  localValue6 = localValue1.animationOptions
  if localValue6 then
    localValue7 = CMG
    localValue7 = localValue7.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue7 = localValue7()
    localValue8 = localValue6.vehicleRequirement
    if "REQUIRED" == localValue8 and 0 == localValue7 then
      localValue8 = notify
      localValue9 = "~r~This emote requires a vehicle."
      -- Beginner: Show a notification to the player.
      localValue8(localValue9)
      return
    end
    localValue8 = localValue6.vehicleRequirement
    if "NOT_ALLOWED" == localValue8 and 0 ~= localValue7 then
      localValue8 = notify
      localValue9 = "~r~You cannot use this emote in a vehicle."
      localValue8(localValue9)
      return
    end
    localValue8 = localValue6.notInVehicle
    if localValue8 and 0 ~= localValue7 then
      localValue8 = notify
      localValue9 = "~r~You cannot use this emote in a vehicle."
      -- Beginner: Show a notification to the player.
      localValue8(localValue9)
      return
    end
    localValue8 = localValue6.onlyInVehicle
    if localValue8 and 0 == localValue7 then
      localValue8 = notify
      localValue9 = "~r~This emote requires a vehicle."
      localValue8(localValue9)
      return
    end
  end
  localValue7 = workingValue24
  localValue8 = true
  localValue7(localValue8)
  localValue7 = localValue1[1]
  text4 = localValue7
  localValue8 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue8 = localValue8()
  number2 = localValue8
  if "Expression" == localValue7 then
    localValue8 = workingValue19
    localValue9 = localValue1
    localValue8(localValue9)
    return
  end
  if "Scenario" == localValue7 or "MaleScenario" == localValue7 or "ScenarioObject" == localValue7 then
    localValue8 = workingValue20
    localValue9 = localValue1
    localValue8(localValue9)
    return
  end
  localValue8 = workingValue28
  localValue9 = localValue1
  localValue10 = localValue2
  localValue11 = localValue4
  localValue8(localValue9, localValue10, localValue11)
end

-- === HELPER FUNCTION (decompiler name: workingValue36; parameters: none) ===
function workingValue36()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5, dataCollection4
  localValue1 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue1 = localValue1()
  localValue2 = -1
  localValue3 = 2.0
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue4 = localValue4()
  localValue5 = pairs
  localValue6 = GetActivePlayers
  localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5, dataCollection4 = localValue6()
  localValue5, localValue6, localValue7, localValue8 = localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5, dataCollection4)
  for localValue9, localValue10 in localValue5, localValue6, localValue7, localValue8 do
    if localValue10 ~= localValue1 then
      localValue11 = GetPlayerPed
      workingValue2 = localValue10
      -- Beginner: result below is playerPed.
      localValue11 = localValue11(workingValue2)
      workingValue2 = GetEntityCoords
      text5 = localValue11
      dataCollection4 = true
      -- Beginner: result below is entityCoords.
      workingValue2 = workingValue2(text5, dataCollection4)
      workingValue2 = workingValue2 - localValue4
      workingValue2 = #workingValue2
      if localValue3 > workingValue2 then
        localValue2 = localValue10
        localValue3 = workingValue2
      end
    end
  end
  if -1 == localValue2 then
    localValue5 = 0
    return localValue5
  else
    localValue5 = GetPlayerServerId
    localValue6 = localValue2
    return localValue5(localValue6)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue37; parameters: localValue1) ===
function workingValue37(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = number14
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = notify
    localValue3 = "~r~Can not use shared emotes at this time."
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
    return
  end
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = number2
  localValue2 = localValue2 - localValue3
  localValue3 = number11
  if localValue2 < localValue3 then
    localValue2 = workingValue16
    localValue2()
    return
  end
  localValue2 = workingValue36
  localValue2 = localValue2()
  if 0 ~= localValue2 then
    workingValue14 = localValue1
    number6 = localValue2
    localValue3 = TriggerServerEvent
    localValue4 = "c74831f601"
    localValue5 = localValue2
    localValue6 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c74831f601".
    localValue3(localValue4, localValue5, localValue6)
  else
    localValue3 = notify
    localValue4 = "~r~No player is near by."
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue38; parameters: localValue1) ===
function workingValue38(localValue1)
  local localValue2, localValue3
  localValue2 = Citizen
  localValue2 = localValue2.CreateThreadNow

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27
    localValue12 = localValue1
    localValue12 = localValue12[1]
    localValue22 = CMG
    localValue22 = localValue22.loadAnimDict
    localValue32 = localValue12
    -- Beginner: Load a GTA animation dictionary before using it.
    localValue22(localValue32)
    localValue22 = SetPedMovementClipset
    localValue32 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue32 = localValue32()
    workingValue17 = localValue12
    workingValue27 = 0.2
    localValue22(localValue32, workingValue17, workingValue27)
    localValue22 = RemoveAnimSet
    localValue32 = localValue12
    localValue22(localValue32)
    localValue22 = RemoveAnimDict
    localValue32 = localValue12
    localValue22(localValue32)
  end
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue39; parameters: localValue1, localValue2) ===
function workingValue39(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = type
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue4 = type
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  if localValue3 ~= localValue4 then
    localValue5 = localValue3 < localValue4
    return localValue5
  else
    localValue5 = localValue1 < localValue2
    return localValue5
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue40; parameters: localValue1, localValue2) ===
function workingValue40(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11
  localValue3 = {}
  if not localValue1 then
    return localValue3
  end
  localValue4 = 1
  localValue5 = pairs
  localValue6 = localValue1
  localValue5, localValue6, localValue7, localValue8 = localValue5(localValue6)
  for localValue9 in localValue5, localValue6, localValue7, localValue8 do
    localValue3[localValue4] = localValue9
    localValue4 = localValue4 + 1
  end
  if not localValue2 then
    localValue2 = workingValue39
  end
  localValue5 = table
  localValue5 = localValue5.sort
  localValue6 = localValue3
  localValue7 = localValue2
  localValue5(localValue6, localValue7)
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue41; parameters: localValue1, localValue2) ===
function workingValue41(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = workingValue40
  localValue4 = localValue1
  localValue5 = localValue2
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = 0

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local localValue12, localValue22, localValue32
    localValue12 = localValue4
    localValue12 = localValue12 + 1
    localValue4 = localValue12
    localValue22 = localValue4
    localValue12 = localValue3
    localValue12 = localValue12[localValue22]
    if nil ~= localValue12 then
      localValue22 = localValue12
      localValue32 = localValue1
      localValue32 = localValue32[localValue12]
      return localValue22, localValue32
    else
      localValue22 = nil
      localValue32 = nil
      return localValue22, localValue32
    end
  end
  return localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue42; parameters: localValue1) ===
function workingValue42(localValue1)
  local localValue2
  localValue2 = cmgOperation.emotes
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = cmgOperation.emotes
    localValue2 = localValue2[localValue1]
    return localValue2
  else
    localValue2 = cmgOperation.dances
    localValue2 = localValue2[localValue1]
    if localValue2 then
      localValue2 = cmgOperation.dances
      localValue2 = localValue2[localValue1]
      return localValue2
    else
      localValue2 = cmgOperation.custom
      localValue2 = localValue2[localValue1]
      if localValue2 then
        localValue2 = cmgOperation.custom
        localValue2 = localValue2[localValue1]
        return localValue2
      else
        localValue2 = cmgOperation.props
        localValue2 = localValue2[localValue1]
        if localValue2 then
          localValue2 = cmgOperation.props
          localValue2 = localValue2[localValue1]
          return localValue2
        else
          localValue2 = cmgOperation.guns
          localValue2 = localValue2[localValue1]
          if localValue2 then
            localValue2 = cmgOperation.guns
            localValue2 = localValue2[localValue1]
            return localValue2
          else
            localValue2 = cmgOperation.animals
            localValue2 = localValue2[localValue1]
            if localValue2 then
              localValue2 = cmgOperation.animals
              localValue2 = localValue2[localValue1]
              return localValue2
            else
              localValue2 = cmgOperation.shared
              if localValue2 then
                localValue2 = cmgOperation.shared
                localValue2 = localValue2[localValue1]
                if localValue2 then
                  localValue2 = cmgOperation.shared
                  localValue2 = localValue2[localValue1]
                  return localValue2
                end
              end
            end
          end
        end
      end
    end
  end
  localValue2 = nil
  return localValue2
end
workingValue43 = nil

-- === HELPER FUNCTION (decompiler name: workingValue44; parameters: localValue1) ===
function workingValue44(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = cmgOperation.escrowPazeeeKeys
  if localValue2 then
    localValue2 = cmgOperation.escrowPazeeeKeys
    localValue2 = localValue2.carry
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep10::
  localValue2 = workingValue43
  if not localValue2 then
    localValue2 = {}
    workingValue43 = localValue2
    localValue2 = ipairs
    localValue3 = cmgOperation.escrowPazeeeKeys
    localValue3 = localValue3.carry
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
      localValue8 = workingValue43
      localValue8[localValue7] = true
    end
  end
  localValue2 = workingValue43
  localValue2 = localValue2[localValue1]
  localValue2 = true == localValue2
  return localValue2
end
workingValue45 = nil

-- === HELPER FUNCTION (decompiler name: workingValue46; parameters: localValue1) ===
function workingValue46(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = cmgOperation.escrowPazeeeKeys
  if localValue2 then
    localValue2 = cmgOperation.escrowPazeeeKeys
    localValue2 = localValue2.trash
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep10::
  localValue2 = workingValue45
  if not localValue2 then
    localValue2 = {}
    workingValue45 = localValue2
    localValue2 = ipairs
    localValue3 = cmgOperation.escrowPazeeeKeys
    localValue3 = localValue3.trash
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
      localValue8 = workingValue45
      localValue8[localValue7] = true
    end
  end
  localValue2 = workingValue45
  localValue2 = localValue2[localValue1]
  localValue2 = true == localValue2
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue47; parameters: localValue1, localValue2, localValue3) ===
function workingValue47(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  if "" == localValue3 then
    localValue4 = false
    return localValue4
  end
  localValue4 = string
  localValue4 = localValue4.lower
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  localValue5 = string
  localValue5 = localValue5.find
  localValue6 = string
  localValue6 = localValue6.lower
  localValue7 = localValue1
  localValue6 = localValue6(localValue7)
  localValue7 = localValue4
  localValue8 = 1
  localValue9 = true
  localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9)
  if not localValue5 then
    localValue5 = string
    localValue5 = localValue5.find
    localValue6 = string
    localValue6 = localValue6.lower
    localValue7 = localValue2 or localValue7
    if not localValue2 then
      localValue7 = ""
    end
    localValue6 = localValue6(localValue7)
    localValue7 = localValue4
    localValue8 = 1
    localValue9 = true
    localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9)
  end
  return localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue48; parameters: localValue1) ===
function workingValue48(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2
  localValue2 = pairs
  localValue3 = cmgOperation.emotes
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = workingValue46
    localValue9 = localValue6
    localValue8 = localValue8(localValue9)
    if not localValue8 then
      localValue8 = number17
      localValue8 = localValue8()
      if not localValue8 then
        localValue8 = workingValue31
        localValue9 = localValue6
        localValue8 = localValue8(localValue9)
        if localValue8 then
          goto continueAtStep34
        end
      end
      localValue8 = number18
      localValue9 = localValue7
      localValue8 = localValue8(localValue9)
      if localValue8 then
        localValue8 = workingValue29
        localValue8 = localValue8()
        localValue8 = not localValue8
        if localValue8 then
          goto continueAtStep34
        end
      end
      localValue8 = localValue1
      localValue9 = localValue6
      localValue10 = localValue7
      localValue11 = "emotes"
      localValue8(localValue9, localValue10, localValue11)
    end
    ::continueAtStep34::
  end
  localValue2 = pairs
  localValue3 = cmgOperation.dances
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = workingValue46
    localValue9 = localValue6
    localValue8 = localValue8(localValue9)
    if not localValue8 then
      localValue8 = localValue1
      localValue9 = localValue6
      localValue10 = localValue7
      localValue11 = "dances"
      localValue8(localValue9, localValue10, localValue11)
    end
  end
  localValue2 = pairs
  localValue3 = cmgOperation.custom
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = workingValue46
    localValue9 = localValue6
    localValue8 = localValue8(localValue9)
    if not localValue8 then
      localValue8 = localValue1
      localValue9 = localValue6
      localValue10 = localValue7
      localValue11 = "custom"
      localValue8(localValue9, localValue10, localValue11)
    end
  end
  localValue2 = pairs
  localValue3 = cmgOperation.props
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = workingValue46
    localValue9 = localValue6
    localValue8 = localValue8(localValue9)
    if not localValue8 then
      localValue8 = number17
      localValue8 = localValue8()
      if not localValue8 then
        localValue8 = workingValue31
        localValue9 = localValue6
        localValue8 = localValue8(localValue9)
        if localValue8 then
          goto continueAtStep94
        end
      end
      localValue8 = localValue1
      localValue9 = localValue6
      localValue10 = localValue7
      localValue11 = "props"
      localValue8(localValue9, localValue10, localValue11)
    end
    ::continueAtStep94::
  end
  localValue2 = pairs
  localValue3 = cmgOperation.guns
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = workingValue46
    localValue9 = localValue6
    localValue8 = localValue8(localValue9)
    if not localValue8 then
      localValue8 = localValue1
      localValue9 = localValue6
      localValue10 = localValue7
      localValue11 = "guns"
      localValue8(localValue9, localValue10, localValue11)
    end
  end
  localValue2 = number16
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = pairs
    localValue3 = cmgOperation.animals
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
      localValue8 = workingValue46
      localValue9 = localValue6
      localValue8 = localValue8(localValue9)
      if not localValue8 then
        localValue8 = localValue1
        localValue9 = localValue6
        localValue10 = localValue7
        localValue11 = "animals"
        localValue8(localValue9, localValue10, localValue11)
      end
    end
  end
  localValue2 = cmgOperation.shared
  if localValue2 then
    localValue2 = pairs
    localValue3 = cmgOperation.shared
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
      localValue8 = workingValue46
      localValue9 = localValue6
      localValue8 = localValue8(localValue9)
      if not localValue8 then
        localValue8 = workingValue44
        localValue9 = localValue6
        localValue8 = localValue8(localValue9)
        if not localValue8 then
          localValue8 = localValue1
          localValue9 = localValue6
          localValue10 = localValue7
          localValue11 = "shared"
          localValue8(localValue9, localValue10, localValue11)
        end
      end
    end
  end
  localValue2 = cmgOperation.escrowPazeeeKeys
  if localValue2 then
    localValue2 = cmgOperation.escrowPazeeeKeys
    localValue2 = localValue2.carry
    if localValue2 then
      localValue2 = ipairs
      localValue3 = cmgOperation.escrowPazeeeKeys
      localValue3 = localValue3.carry
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
      for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
        localValue8 = cmgOperation.shared
        if localValue8 then
          localValue8 = cmgOperation.shared
          localValue8 = localValue8[localValue7]
        end
        if localValue8 then
          localValue9 = workingValue46
          localValue10 = localValue7
          localValue9 = localValue9(localValue10)
          if not localValue9 then
            localValue9 = localValue1
            localValue10 = localValue7
            localValue11 = localValue8
            workingValue2 = "shared"
            localValue9(localValue10, localValue11, workingValue2)
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue49; parameters: localValue1) ===
function workingValue49(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = table
  localValue2 = localValue2.find
  localValue3 = dataCollection6
  localValue4 = localValue1
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = {}
    localValue2.RightLabel = "\226\173\144"
    return localValue2
  end
  localValue2 = {}
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue50; parameters: localValue1, localValue2) ===
function workingValue50(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  if localValue1 then
    localValue3 = IsControlJustPressed
    localValue4 = 0
    localValue5 = 121
    localValue3 = localValue3(localValue4, localValue5)
    if localValue3 then
      localValue3 = table
      localValue3 = localValue3.find
      localValue4 = dataCollection6
      localValue5 = localValue2
      localValue3 = localValue3(localValue4, localValue5)
      if localValue3 and localValue3 > 0 then
        localValue4 = table
        localValue4 = localValue4.remove
        localValue5 = dataCollection6
        localValue6 = localValue3
        localValue4(localValue5, localValue6)
      else
        localValue4 = table
        localValue4 = localValue4.insert
        localValue5 = dataCollection6
        localValue6 = localValue2
        localValue4(localValue5, localValue6)
      end
      localValue4 = SetResourceKvp
      localValue5 = "cmg_favourite_emotes"
      localValue6 = json
      localValue6 = localValue6.encode
      localValue7 = dataCollection6
      localValue6, localValue7 = localValue6(localValue7)
      localValue4(localValue5, localValue6, localValue7)
    end
  end
end
workingValue51 = nil

-- === HELPER FUNCTION (decompiler name: workingValue52; parameters: localValue1) ===
function workingValue52(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = cmgOperation.escrowPazeeeKeys
  if localValue2 then
    localValue2 = cmgOperation.escrowPazeeeKeys
    localValue2 = localValue2.all
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep10::
  localValue2 = workingValue51
  if not localValue2 then
    localValue2 = {}
    workingValue51 = localValue2
    localValue2 = ipairs
    localValue3 = cmgOperation.escrowPazeeeKeys
    localValue3 = localValue3.all
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
      localValue8 = workingValue51
      localValue8[localValue7] = true
    end
  end
  localValue2 = workingValue51
  localValue2 = localValue2[localValue1]
  localValue2 = true == localValue2
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue54; parameters: localValue1) ===
function workingValue54(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5, dataCollection4, rageUiOperation
  localValue2 = cmgOperation.escrowPazeeeKeys
  if localValue2 then
    localValue2 = cmgOperation.escrowPazeeeKeys
    localValue2 = localValue2[localValue1]
  end
  if not localValue2 then
    return
  end
  localValue3 = ipairs
  localValue4 = localValue2
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = cmgOperation.emotes
    localValue9 = localValue9[localValue8]
    if not localValue9 then
      localValue9 = cmgOperation.props
      localValue9 = localValue9[localValue8]
      if not localValue9 then
        localValue9 = cmgOperation.shared
        if localValue9 then
          localValue9 = cmgOperation.shared
          localValue9 = localValue9[localValue8]
        end
      end
    end
    if localValue9 then
      localValue10 = number18
      localValue11 = localValue9
      localValue10 = localValue10(localValue11)
      if localValue10 then
        localValue10 = workingValue29
        localValue10 = localValue10()
        localValue10 = not localValue10
        if localValue10 then
          goto continueAtStep54
        end
      end
      localValue10 = RageUI
      localValue10 = localValue10.ButtonWithStyle
      localValue11 = localValue9[3]
      workingValue2 = "/e ("
      text5 = localValue8
      dataCollection4 = ")"
      workingValue2 = workingValue2 .. text5 .. dataCollection4
      text5 = workingValue49
      dataCollection4 = localValue8
      text5 = text5(dataCollection4)
      dataCollection4 = number14
      rageUiOperation = localValue9
      dataCollection4 = dataCollection4(rageUiOperation)
      dataCollection4 = not dataCollection4

      -- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue12, localValue22, localValue32) ===
      function rageUiOperation(localValue12, localValue22, localValue32)
        local workingValue17, workingValue27, stateFlag25
        workingValue17 = workingValue50
        workingValue27 = localValue22
        stateFlag25 = localValue8
        workingValue17(workingValue27, stateFlag25)
        if localValue32 then
          workingValue17 = workingValue35
          workingValue27 = localValue9
          workingValue17(workingValue27)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue10(localValue11, workingValue2, text5, dataCollection4, rageUiOperation)
    end
    ::continueAtStep54::
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue55; parameters: localValue1) ===
function workingValue55(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5, dataCollection4, rageUiOperation, text6, text8
  localValue2 = text11
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    return
  end
  localValue3 = 1
  localValue4 = #localValue2
  localValue5 = 1
  for localValue6 = localValue3, localValue4, localValue5 do
    localValue7 = localValue2[localValue6]
    localValue8 = localValue7.command
    localValue9 = localValue7.emoteInfo
    localValue10 = number18
    localValue11 = localValue9
    localValue10 = localValue10(localValue11)
    if localValue10 then
      localValue10 = workingValue29
      localValue10 = localValue10()
      localValue10 = not localValue10
      if localValue10 then
        goto continueAtStep52
      end
    end
    localValue10 = rageUiOperation8
    localValue11 = localValue9[3]
    localValue10 = localValue10(localValue11)
    localValue11 = localValue7.useNearby
    if localValue11 then
      localValue11 = "/nearby (~g~"
      workingValue2 = localValue8
      text5 = "~w~)"
      localValue11 = localValue11 .. workingValue2 .. text5
      if localValue11 then
        goto continueAtStep39
      end
    end
    localValue11 = "/e ("
    workingValue2 = localValue8
    text5 = ")"
    localValue11 = localValue11 .. workingValue2 .. text5
    ::continueAtStep39::
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    text5 = localValue10
    dataCollection4 = localValue11
    rageUiOperation = workingValue49
    text6 = localValue8
    rageUiOperation = rageUiOperation(text6)
    text6 = number14
    text8 = localValue9
    text6 = text6(text8)
    text6 = not text6

    -- === HELPER FUNCTION (decompiler name: text8; parameters: localValue12, localValue22, localValue32) ===
    function text8(localValue12, localValue22, localValue32)
      local workingValue17, workingValue27, stateFlag25
      workingValue17 = workingValue50
      workingValue27 = localValue22
      stateFlag25 = localValue8
      workingValue17(workingValue27, stateFlag25)
      if localValue32 then
        workingValue17 = localValue7.useNearby
        if workingValue17 then
          workingValue17 = workingValue37
          workingValue27 = localValue8
          workingValue17(workingValue27)
        else
          workingValue17 = workingValue35
          workingValue27 = localValue9
          workingValue17(workingValue27)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue2(text5, dataCollection4, rageUiOperation, text6, text8)
    ::continueAtStep52::
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue56; parameters: localValue1) ===
function workingValue56(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = localValue1[3]
  if not localValue2 then
    localValue2 = ""
  end
  localValue3 = string
  localValue3 = localValue3.gsub
  localValue4 = localValue2
  localValue5 = "^PCarry%s+%d+%s+"
  localValue6 = ""
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  if localValue3 ~= localValue2 then
    return localValue3
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue57; parameters: none) ===
function workingValue57()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5, dataCollection4
  localValue1 = cmgOperation.escrowPazeeeKeys
  if localValue1 then
    localValue1 = cmgOperation.escrowPazeeeKeys
    localValue1 = localValue1.carry
  end
  if not localValue1 then
    return
  end
  localValue2 = ipairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = string
    localValue8 = localValue8.sub
    localValue9 = localValue7
    localValue10 = -1
    localValue8 = localValue8(localValue9, localValue10)
    if "1" == localValue8 then
      localValue8 = cmgOperation.shared
      if localValue8 then
        localValue8 = cmgOperation.shared
        localValue8 = localValue8[localValue7]
      end
      if localValue8 then
        localValue9 = localValue8.animationOptions
        if localValue9 then
          localValue9 = localValue8.animationOptions
          localValue9 = localValue9.invisible
          if localValue9 then
            goto continueAtStep52
          end
        end
        localValue9 = RageUI
        localValue9 = localValue9.ButtonWithStyle
        localValue10 = workingValue56
        localValue11 = localValue8
        localValue10 = localValue10(localValue11)
        localValue11 = "/nearby (~g~"
        workingValue2 = localValue7
        text5 = "~w~)"
        localValue11 = localValue11 .. workingValue2 .. text5
        workingValue2 = workingValue49
        text5 = localValue7
        workingValue2 = workingValue2(text5)
        text5 = number14
        dataCollection4 = localValue8
        text5 = text5(dataCollection4)
        text5 = not text5

        -- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue12, localValue22, localValue32) ===
        function dataCollection4(localValue12, localValue22, localValue32)
          local workingValue17, workingValue27, stateFlag25
          workingValue17 = workingValue50
          workingValue27 = localValue22
          stateFlag25 = localValue7
          workingValue17(workingValue27, stateFlag25)
          if localValue32 then
            workingValue17 = workingValue37
            workingValue27 = localValue7
            workingValue17(workingValue27)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        localValue9(localValue10, localValue11, workingValue2, text5, dataCollection4)
      end
    end
    ::continueAtStep52::
  end
end
rageUiOperation6 = RageUI
rageUiOperation6 = rageUiOperation6.CreateWhile
text16 = 1.0
workingValue58 = RMenu
stateFlag26 = workingValue58
workingValue58 = workingValue58.Get
stateFlag27 = "emotesmenu"
text17 = "mainmenu"
-- Beginner: result below is menu.
workingValue58 = workingValue58(stateFlag26, stateFlag27, text17)
stateFlag26 = nil

-- === HELPER FUNCTION (decompiler name: stateFlag27; parameters: none) ===
function stateFlag27()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59
    localValue12 = CMG
    localValue12 = localValue12.isNewPlayer
    localValue12 = localValue12()
    if localValue12 then
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_A6B0CFFB~ to toggle the Emote Menu."
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
    end
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "Emotes"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
    function workingValue27()
      local localValue13, localValue23
    end
    stateFlag25 = RMenu
    number19 = stateFlag25
    stateFlag25 = stateFlag25.Get
    text15 = "emotesmenu"
    workingValue59 = "emotes"
    stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "Cancel Emotes"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: localValue13, localValue23, localValue33) ===
    function workingValue27(localValue13, localValue23, localValue33)
      local gameTime, stateFlag24
      if localValue33 then
        gameTime = workingValue24
        stateFlag24 = false
        gameTime(stateFlag24)
        gameTime = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        gameTime = gameTime()
        number2 = gameTime
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue17, workingValue27)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "Walking Styles"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
    function workingValue27()
      local localValue13, localValue23
    end
    stateFlag25 = RMenu
    number19 = stateFlag25
    stateFlag25 = stateFlag25.Get
    text15 = "emotesmenu"
    workingValue59 = "walkingstyles"
    stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
    localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "Moods"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
    function workingValue27()
      local localValue13, localValue23
    end
    stateFlag25 = RMenu
    number19 = stateFlag25
    stateFlag25 = stateFlag25.Get
    text15 = "emotesmenu"
    workingValue59 = "moods"
    stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "emotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "\240\159\148\141 Search Emotes"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
    function workingValue27()
      local localValue13, localValue23
    end
    stateFlag25 = RMenu
    number19 = stateFlag25
    stateFlag25 = stateFlag25.Get
    text15 = "emotesmenu"
    workingValue59 = "searchemotes"
    stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "\226\173\144 Favourite Emotes"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
    function workingValue27()
      local localValue13, localValue23
    end
    stateFlag25 = RMenu
    number19 = stateFlag25
    stateFlag25 = stateFlag25.Get
    text15 = "emotesmenu"
    workingValue59 = "favouriteemotes"
    stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
    localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "\240\159\149\186 Dance Emotes"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
    function workingValue27()
      local localValue13, localValue23
    end
    stateFlag25 = RMenu
    number19 = stateFlag25
    stateFlag25 = stateFlag25.Get
    text15 = "emotesmenu"
    workingValue59 = "danceemotes"
    stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "\240\159\155\160\239\184\143 Custom Emotes"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
    function workingValue27()
      local localValue13, localValue23
    end
    stateFlag25 = RMenu
    number19 = stateFlag25
    stateFlag25 = stateFlag25.Get
    text15 = "emotesmenu"
    workingValue59 = "customemotes"
    stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
    localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
    localValue12 = number17
    localValue12 = localValue12()
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Button
      localValue22 = "\240\159\142\134 Fireworks Emotes"
      localValue32 = ""
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
      function workingValue27()
        local localValue13, localValue23
      end
      stateFlag25 = RMenu
      number19 = stateFlag25
      stateFlag25 = stateFlag25.Get
      text15 = "emotesmenu"
      workingValue59 = "fireworksemotes"
      stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
    end
    localValue12 = cmgOperation.escrowPazeeeKeys
    if localValue12 then
      localValue12 = cmgOperation.escrowPazeeeKeys
      localValue12 = localValue12.carry
      if localValue12 then
        localValue12 = RageUI
        localValue12 = localValue12.Button
        localValue22 = "\240\159\147\166 Carry (nearby)"
        localValue32 = ""
        workingValue17 = true

        -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
        function workingValue27()
          local localValue13, localValue23
        end
        stateFlag25 = RMenu
        number19 = stateFlag25
        stateFlag25 = stateFlag25.Get
        text15 = "emotesmenu"
        workingValue59 = "carryemotes"
        stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
        localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
        localValue12 = RageUI
        localValue12 = localValue12.Button
        localValue22 = "\240\159\154\152 Vehicle Emotes"
        localValue32 = ""
        workingValue17 = true

        -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
        function workingValue27()
          local localValue13, localValue23
        end
        stateFlag25 = RMenu
        number19 = stateFlag25
        stateFlag25 = stateFlag25.Get
        text15 = "emotesmenu"
        workingValue59 = "vehicleescrowemotes"
        stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
        -- Beginner: Draw a selectable RageUI menu button.
        localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
        localValue12 = RageUI
        localValue12 = localValue12.Button
        localValue22 = "\226\155\147\239\184\143 Punish Emotes"
        localValue32 = ""
        workingValue17 = true

        -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
        function workingValue27()
          local localValue13, localValue23
        end
        stateFlag25 = RMenu
        number19 = stateFlag25
        stateFlag25 = stateFlag25.Get
        text15 = "emotesmenu"
        workingValue59 = "punishemotes"
        stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
        localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
        localValue12 = RageUI
        localValue12 = localValue12.Button
        localValue22 = "\240\159\142\173 Roleplay Emotes"
        localValue32 = ""
        workingValue17 = true

        -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
        function workingValue27()
          local localValue13, localValue23
        end
        stateFlag25 = RMenu
        number19 = stateFlag25
        stateFlag25 = stateFlag25.Get
        text15 = "emotesmenu"
        workingValue59 = "roleplayescrowemotes"
        stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
        -- Beginner: Draw a selectable RageUI menu button.
        localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
      end
    end
    localValue12 = cmgOperation.escrowPazeeeKeys
    if localValue12 then
      localValue12 = cmgOperation.escrowPazeeeKeys
      localValue12 = localValue12.flagEmotes
      if localValue12 then
        localValue12 = RageUI
        localValue12 = localValue12.Button
        localValue22 = "\240\159\143\180 Flag Emotes"
        localValue32 = ""
        workingValue17 = true

        -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
        function workingValue27()
          local localValue13, localValue23
        end
        stateFlag25 = RMenu
        number19 = stateFlag25
        stateFlag25 = stateFlag25.Get
        text15 = "emotesmenu"
        workingValue59 = "flagescrowemotes"
        stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
        localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
      end
    end
    localValue12 = cmgOperation.escrowPazeeeKeys
    if localValue12 then
      localValue12 = cmgOperation.escrowPazeeeKeys
      localValue12 = localValue12.trophyEmotes
      if localValue12 then
        localValue12 = RageUI
        localValue12 = localValue12.Button
        localValue22 = "\240\159\143\134 Trophy Emotes"
        localValue32 = ""
        workingValue17 = true

        -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
        function workingValue27()
          local localValue13, localValue23
        end
        stateFlag25 = RMenu
        number19 = stateFlag25
        stateFlag25 = stateFlag25.Get
        text15 = "emotesmenu"
        workingValue59 = "trophyescrowemotes"
        stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
        -- Beginner: Draw a selectable RageUI menu button.
        localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
      end
    end
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "\240\159\147\139 Standard Emotes"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
    function workingValue27()
      local localValue13, localValue23
    end
    stateFlag25 = RMenu
    number19 = stateFlag25
    stateFlag25 = stateFlag25.Get
    text15 = "emotesmenu"
    workingValue59 = "standardemotes"
    stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
    localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "\240\159\147\166 Prop Emotes"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
    function workingValue27()
      local localValue13, localValue23
    end
    stateFlag25 = RMenu
    number19 = stateFlag25
    stateFlag25 = stateFlag25.Get
    text15 = "emotesmenu"
    workingValue59 = "propemotes"
    stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "\240\159\145\171 Shared Emotes"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
    function workingValue27()
      local localValue13, localValue23
    end
    stateFlag25 = RMenu
    number19 = stateFlag25
    stateFlag25 = stateFlag25.Get
    text15 = "emotesmenu"
    workingValue59 = "sharedemotes"
    stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
    localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "\240\159\148\171 Gun Emotes"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
    function workingValue27()
      local localValue13, localValue23
    end
    stateFlag25 = RMenu
    number19 = stateFlag25
    stateFlag25 = stateFlag25.Get
    text15 = "emotesmenu"
    workingValue59 = "gunemotes"
    stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
    localValue12 = number16
    localValue12 = localValue12()
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Button
      localValue22 = "\240\159\144\169 Animal Emotes"
      localValue32 = ""
      workingValue17 = true

      -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
      function workingValue27()
        local localValue13, localValue23
      end
      stateFlag25 = RMenu
      number19 = stateFlag25
      stateFlag25 = stateFlag25.Get
      text15 = "emotesmenu"
      workingValue59 = "animalemotes"
      stateFlag25, number19, text15, workingValue59 = stateFlag25(number19, text15, workingValue59)
      localValue12(localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59)
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "standardemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection, dataCollection2
    localValue12 = cmgOperation.standardEmotes
    if localValue12 then
      localValue12 = ipairs
      localValue22 = cmgOperation.standardEmotes
      localValue12, localValue22, localValue32, workingValue17 = localValue12(localValue22)
      for workingValue27, stateFlag25 in localValue12, localValue22, localValue32, workingValue17 do
        number19 = cmgOperation.emotes
        number19 = number19[stateFlag25]
        if number19 then
          text15 = workingValue30
          workingValue59 = number19
          text15 = text15(workingValue59)
          if text15 then
            text15 = RageUI
            text15 = text15.ButtonWithStyle
            workingValue59 = number19[3]
            playerPed = "/e ("
            workingValue = stateFlag25
            dataCollection = ")"
            playerPed = playerPed .. workingValue .. dataCollection
            workingValue = workingValue49
            dataCollection = stateFlag25
            workingValue = workingValue(dataCollection)
            dataCollection = number14
            dataCollection2 = number19
            dataCollection = dataCollection(dataCollection2)
            dataCollection = not dataCollection

            -- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue13, localValue23, localValue33) ===
            function dataCollection2(localValue13, localValue23, localValue33)
              local gameTime, stateFlag24, workingValue32
              gameTime = workingValue50
              stateFlag24 = localValue23
              workingValue32 = stateFlag25
              gameTime(stateFlag24, workingValue32)
              if localValue33 then
                gameTime = workingValue35
                stateFlag24 = number19
                gameTime(stateFlag24)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            text15(workingValue59, playerPed, workingValue, dataCollection, dataCollection2)
          end
        end
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "danceemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection
    localValue12 = workingValue41
    localValue22 = cmgOperation.dances
    localValue12, localValue22, localValue32, workingValue17 = localValue12(localValue22)
    for workingValue27, stateFlag25 in localValue12, localValue22, localValue32, workingValue17 do
      number19 = workingValue30
      text15 = stateFlag25
      number19 = number19(text15)
      if number19 then
        number19 = RageUI
        number19 = number19.ButtonWithStyle
        text15 = stateFlag25[3]
        workingValue59 = "/e ("
        playerPed = workingValue27
        workingValue = ")"
        workingValue59 = workingValue59 .. playerPed .. workingValue
        playerPed = workingValue49
        workingValue = workingValue27
        playerPed = playerPed(workingValue)
        workingValue = number14
        dataCollection = stateFlag25
        workingValue = workingValue(dataCollection)
        workingValue = not workingValue

        -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue13, localValue23, localValue33) ===
        function dataCollection(localValue13, localValue23, localValue33)
          local gameTime, stateFlag24, workingValue32
          gameTime = workingValue50
          stateFlag24 = localValue23
          workingValue32 = workingValue27
          gameTime(stateFlag24, workingValue32)
          if localValue33 then
            gameTime = workingValue35
            stateFlag24 = stateFlag25
            gameTime(stateFlag24)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        number19(text15, workingValue59, playerPed, workingValue, dataCollection)
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "customemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection
    localValue12 = workingValue41
    localValue22 = cmgOperation.custom
    localValue12, localValue22, localValue32, workingValue17 = localValue12(localValue22)
    for workingValue27, stateFlag25 in localValue12, localValue22, localValue32, workingValue17 do
      number19 = workingValue30
      text15 = stateFlag25
      number19 = number19(text15)
      if number19 then
        number19 = RageUI
        number19 = number19.ButtonWithStyle
        text15 = stateFlag25[3]
        workingValue59 = "/e ("
        playerPed = workingValue27
        workingValue = ")"
        workingValue59 = workingValue59 .. playerPed .. workingValue
        playerPed = workingValue49
        workingValue = workingValue27
        playerPed = playerPed(workingValue)
        workingValue = number14
        dataCollection = stateFlag25
        workingValue = workingValue(dataCollection)
        workingValue = not workingValue

        -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue13, localValue23, localValue33) ===
        function dataCollection(localValue13, localValue23, localValue33)
          local gameTime, stateFlag24, workingValue32
          gameTime = workingValue50
          stateFlag24 = localValue23
          workingValue32 = workingValue27
          gameTime(stateFlag24, workingValue32)
          if localValue33 then
            gameTime = workingValue35
            stateFlag24 = stateFlag25
            gameTime(stateFlag24)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        number19(text15, workingValue59, playerPed, workingValue, dataCollection)
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "fireworksemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection, dataCollection2
    localValue12 = number17
    localValue12 = localValue12()
    if not localValue12 then
      return
    end
    localValue12 = cmgOperation.fireworksEmotes
    if localValue12 then
      localValue12 = ipairs
      localValue22 = cmgOperation.fireworksEmotes
      localValue12, localValue22, localValue32, workingValue17 = localValue12(localValue22)
      for workingValue27, stateFlag25 in localValue12, localValue22, localValue32, workingValue17 do
        number19 = cmgOperation.emotes
        number19 = number19[stateFlag25]
        if not number19 then
          number19 = cmgOperation.props
          number19 = number19[stateFlag25]
        end
        if number19 then
          text15 = workingValue30
          workingValue59 = number19
          text15 = text15(workingValue59)
          if text15 then
            text15 = RageUI
            text15 = text15.ButtonWithStyle
            workingValue59 = number19[3]
            playerPed = "/e ("
            workingValue = stateFlag25
            dataCollection = ")"
            playerPed = playerPed .. workingValue .. dataCollection
            workingValue = workingValue49
            dataCollection = stateFlag25
            workingValue = workingValue(dataCollection)
            dataCollection = number14
            dataCollection2 = number19
            dataCollection = dataCollection(dataCollection2)
            dataCollection = not dataCollection

            -- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue13, localValue23, localValue33) ===
            function dataCollection2(localValue13, localValue23, localValue33)
              local gameTime, stateFlag24, workingValue32
              gameTime = workingValue50
              stateFlag24 = localValue23
              workingValue32 = stateFlag25
              gameTime(stateFlag24, workingValue32)
              if localValue33 then
                gameTime = workingValue35
                stateFlag24 = number19
                gameTime(stateFlag24)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            text15(workingValue59, playerPed, workingValue, dataCollection, dataCollection2)
          end
        end
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "carryemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22
    localValue12 = workingValue57
    localValue12()
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "vehicleescrowemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22
    localValue12 = workingValue54
    localValue22 = "vehicle"
    localValue12(localValue22)
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "punishemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22
    localValue12 = workingValue54
    localValue22 = "punishEmotes"
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Props"
    localValue12(localValue22)
    localValue12 = workingValue54
    localValue22 = "punishProps"
    localValue12(localValue22)
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "roleplayescrowemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22
    localValue12 = workingValue54
    localValue22 = "roleplayEmotes"
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Props"
    localValue12(localValue22)
    localValue12 = workingValue54
    localValue22 = "roleplayProps"
    localValue12(localValue22)
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "flagescrowemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection, dataCollection2, workingValue3, workingValue4, text7, number3
    localValue12 = ipairs
    localValue22 = dataCollection5
    localValue12, localValue22, localValue32, workingValue17 = localValue12(localValue22)
    for workingValue27, stateFlag25 in localValue12, localValue22, localValue32, workingValue17 do
      number19 = text11
      number19 = number19[stateFlag25]
      text15 = text9
      text15 = text15[stateFlag25]
      workingValue59 = RageUI
      workingValue59 = workingValue59.Button
      playerPed = stateFlag25
      workingValue = tostring
      dataCollection = #number19
      workingValue = workingValue(dataCollection)
      dataCollection = " emotes"
      workingValue = workingValue .. dataCollection
      dataCollection = true

      -- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
      function dataCollection2()
        local localValue13, localValue23
      end
      workingValue3 = RMenu
      workingValue4 = workingValue3
      workingValue3 = workingValue3.Get
      text7 = "emotesmenu"
      number3 = text15
      workingValue3, workingValue4, text7, number3 = workingValue3(workingValue4, text7, number3)
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue59(playerPed, workingValue, dataCollection, dataCollection2, workingValue3, workingValue4, text7, number3)
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = ipairs
  localValue2 = dataCollection5
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = text9
    localValue7 = localValue7[localValue6]
    localValue8 = RageUI
    localValue8 = localValue8.IsVisible
    localValue9 = RMenu
    localValue10 = localValue9
    localValue9 = localValue9.Get
    localValue11 = "emotesmenu"
    workingValue2 = localValue7
    -- Beginner: result below is menu.
    localValue9 = localValue9(localValue10, localValue11, workingValue2)
    localValue10 = true
    localValue11 = false
    workingValue2 = true

    -- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
    function text5()
      local localValue12, localValue22
      localValue12 = workingValue55
      localValue22 = localValue6
      localValue12(localValue22)
    end
    localValue8(localValue9, localValue10, localValue11, workingValue2, text5)
  end
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "trophyescrowemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22
    localValue12 = workingValue54
    localValue22 = "trophyEmotes"
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Props"
    localValue12(localValue22)
    localValue12 = workingValue54
    localValue22 = "trophyProps"
    localValue12(localValue22)
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "gunemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection
    localValue12 = workingValue41
    localValue22 = cmgOperation.guns
    localValue12, localValue22, localValue32, workingValue17 = localValue12(localValue22)
    for workingValue27, stateFlag25 in localValue12, localValue22, localValue32, workingValue17 do
      number19 = workingValue30
      text15 = stateFlag25
      number19 = number19(text15)
      if number19 then
        number19 = RageUI
        number19 = number19.ButtonWithStyle
        text15 = stateFlag25[3]
        workingValue59 = "/e ("
        playerPed = workingValue27
        workingValue = ")"
        workingValue59 = workingValue59 .. playerPed .. workingValue
        playerPed = workingValue49
        workingValue = workingValue27
        playerPed = playerPed(workingValue)
        workingValue = number14
        dataCollection = stateFlag25
        workingValue = workingValue(dataCollection)
        workingValue = not workingValue

        -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue13, localValue23, localValue33) ===
        function dataCollection(localValue13, localValue23, localValue33)
          local gameTime, stateFlag24, workingValue32
          gameTime = workingValue50
          stateFlag24 = localValue23
          workingValue32 = workingValue27
          gameTime(stateFlag24, workingValue32)
          if localValue33 then
            gameTime = workingValue35
            stateFlag24 = stateFlag25
            gameTime(stateFlag24)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        number19(text15, workingValue59, playerPed, workingValue, dataCollection)
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "favouriteemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection
    localValue12 = dataCollection6
    localValue12 = #localValue12
    if 0 == localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~y~To favourite an emote press INSERT"
      localValue12(localValue22)
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~y~Whilst hovering over the button"
      localValue12(localValue22)
    end
    localValue12 = pairs
    localValue22 = dataCollection6
    localValue12, localValue22, localValue32, workingValue17 = localValue12(localValue22)
    for workingValue27, stateFlag25 in localValue12, localValue22, localValue32, workingValue17 do
      number19 = workingValue42
      text15 = stateFlag25
      number19 = number19(text15)
      if number19 then
        text15 = workingValue30
        workingValue59 = number19
        text15 = text15(workingValue59)
        if text15 then
          text15 = RageUI
          text15 = text15.Button
          workingValue59 = number19[3]
          playerPed = "/e ("
          workingValue = stateFlag25
          dataCollection = ")"
          playerPed = playerPed .. workingValue .. dataCollection
          workingValue = number14
          dataCollection = number19
          workingValue = workingValue(dataCollection)
          workingValue = not workingValue

          -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue13, localValue23, localValue33) ===
          function dataCollection(localValue13, localValue23, localValue33)
            local gameTime, stateFlag24
            if localValue33 then
              gameTime = workingValue35
              stateFlag24 = number19
              gameTime(stateFlag24)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          text15(workingValue59, playerPed, workingValue, dataCollection)
        end
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "propemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection
    localValue12 = workingValue41
    localValue22 = cmgOperation.props
    localValue12, localValue22, localValue32, workingValue17 = localValue12(localValue22)
    for workingValue27, stateFlag25 in localValue12, localValue22, localValue32, workingValue17 do
      number19 = workingValue30
      text15 = stateFlag25
      number19 = number19(text15)
      if number19 then
        number19 = number17
        number19 = number19()
        if not number19 then
          number19 = workingValue31
          text15 = workingValue27
          number19 = number19(text15)
          if number19 then
            goto continueAtStep40
          end
        end
        number19 = workingValue52
        text15 = workingValue27
        number19 = number19(text15)
        if not number19 then
          number19 = RageUI
          number19 = number19.ButtonWithStyle
          text15 = stateFlag25[3]
          workingValue59 = "/e ("
          playerPed = workingValue27
          workingValue = ")"
          workingValue59 = workingValue59 .. playerPed .. workingValue
          playerPed = workingValue49
          workingValue = workingValue27
          playerPed = playerPed(workingValue)
          workingValue = number14
          dataCollection = stateFlag25
          workingValue = workingValue(dataCollection)
          workingValue = not workingValue

          -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue13, localValue23, localValue33) ===
          function dataCollection(localValue13, localValue23, localValue33)
            local gameTime, stateFlag24, workingValue32
            gameTime = workingValue50
            stateFlag24 = localValue23
            workingValue32 = workingValue27
            gameTime(stateFlag24, workingValue32)
            if localValue33 then
              gameTime = workingValue35
              stateFlag24 = stateFlag25
              gameTime(stateFlag24)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          number19(text15, workingValue59, playerPed, workingValue, dataCollection)
        end
      end
      ::continueAtStep40::
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "sharedemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue
    localValue12 = workingValue41
    localValue22 = cmgOperation.shared
    if not localValue22 then
      localValue22 = {}
    end
    localValue12, localValue22, localValue32, workingValue17 = localValue12(localValue22)
    for workingValue27, stateFlag25 in localValue12, localValue22, localValue32, workingValue17 do
      number19 = workingValue30
      text15 = stateFlag25
      number19 = number19(text15)
      if number19 then
        number19 = workingValue44
        text15 = workingValue27
        number19 = number19(text15)
        if not number19 then
          number19 = stateFlag25.animationOptions
          if number19 then
            number19 = stateFlag25.animationOptions
            number19 = number19.invisible
            if number19 then
              goto continueAtStep39
            end
          end
          number19 = RageUI
          number19 = number19.Button
          text15 = stateFlag25[3]
          workingValue59 = "/nearby (~g~"
          playerPed = workingValue27
          workingValue = "~w~)"
          workingValue59 = workingValue59 .. playerPed .. workingValue
          playerPed = number14
          workingValue = stateFlag25
          playerPed = playerPed(workingValue)
          playerPed = not playerPed

          -- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue13, localValue23, localValue33) ===
          function workingValue(localValue13, localValue23, localValue33)
            local gameTime, stateFlag24
            if localValue33 then
              gameTime = workingValue37
              stateFlag24 = workingValue27
              gameTime(stateFlag24)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          number19(text15, workingValue59, playerPed, workingValue)
        end
      end
      ::continueAtStep39::
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "walkingstyles"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "Normal (Reset)"
    localValue32 = ""
    workingValue17 = number14
    workingValue27 = nil
    workingValue17 = workingValue17(workingValue27)
    workingValue17 = not workingValue17

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: localValue13, localValue23, localValue33) ===
    function workingValue27(localValue13, localValue23, localValue33)
      local gameTime, stateFlag24, workingValue32
      if localValue33 then
        gameTime = ResetPedMovementClipset
        stateFlag24 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        stateFlag24 = stateFlag24()
        workingValue32 = 0.0
        gameTime(stateFlag24, workingValue32)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue17, workingValue27)
    localValue12 = workingValue41
    localValue22 = cmgOperation.walks
    localValue12, localValue22, localValue32, workingValue17 = localValue12(localValue22)
    for workingValue27, stateFlag25 in localValue12, localValue22, localValue32, workingValue17 do
      number19 = RageUI
      number19 = number19.Button
      text15 = workingValue27
      workingValue59 = ""
      playerPed = number14
      workingValue = stateFlag25
      playerPed = playerPed(workingValue)
      playerPed = not playerPed

      -- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue13, localValue23, localValue33) ===
      function workingValue(localValue13, localValue23, localValue33)
        local gameTime, stateFlag24
        if localValue33 then
          gameTime = workingValue38
          stateFlag24 = stateFlag25
          gameTime(stateFlag24)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      number19(text15, workingValue59, playerPed, workingValue)
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "moods"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "Normal (Reset)"
    localValue32 = ""
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: localValue13, localValue23, localValue33) ===
    function workingValue27(localValue13, localValue23, localValue33)
      local gameTime, stateFlag24
      if localValue33 then
        gameTime = ClearFacialIdleAnimOverride
        stateFlag24 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        stateFlag24 = stateFlag24()
        gameTime(stateFlag24)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue17, workingValue27)
    localValue12 = workingValue41
    localValue22 = cmgOperation.moods
    localValue12, localValue22, localValue32, workingValue17 = localValue12(localValue22)
    for workingValue27, stateFlag25 in localValue12, localValue22, localValue32, workingValue17 do
      number19 = RageUI
      number19 = number19.Button
      text15 = workingValue27
      workingValue59 = ""
      playerPed = true

      -- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue13, localValue23, localValue33) ===
      function workingValue(localValue13, localValue23, localValue33)
        local gameTime, stateFlag24
        if localValue33 then
          gameTime = workingValue35
          stateFlag24 = stateFlag25
          gameTime(stateFlag24)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      number19(text15, workingValue59, playerPed, workingValue)
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "animalemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection, dataCollection2
    localValue12 = number16
    localValue12 = localValue12()
    if not localValue12 then
      return
    end
    localValue12 = number15
    localValue12 = localValue12()
    if not localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~y~Animal emotes need a non-human ped"
      localValue12(localValue22)
    end
    localValue12 = workingValue41
    localValue22 = cmgOperation.animals
    localValue12, localValue22, localValue32, workingValue17 = localValue12(localValue22)
    for workingValue27, stateFlag25 in localValue12, localValue22, localValue32, workingValue17 do
      number19 = workingValue30
      text15 = stateFlag25
      number19 = number19(text15)
      if number19 then
        number19 = number15
        number19 = number19()
        if number19 then
          number19 = number14
          text15 = stateFlag25
          number19 = number19(text15)
          number19 = not number19
        end
        text15 = RageUI
        text15 = text15.ButtonWithStyle
        workingValue59 = stateFlag25[3]
        playerPed = "/e ("
        workingValue = workingValue27
        dataCollection = ")"
        playerPed = playerPed .. workingValue .. dataCollection
        workingValue = workingValue49
        dataCollection = workingValue27
        workingValue = workingValue(dataCollection)
        dataCollection = number19

        -- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue13, localValue23, localValue33) ===
        function dataCollection2(localValue13, localValue23, localValue33)
          local gameTime, stateFlag24, workingValue32
          gameTime = workingValue50
          stateFlag24 = localValue23
          workingValue32 = workingValue27
          gameTime(stateFlag24, workingValue32)
          if localValue33 then
            gameTime = number19
            if gameTime then
              gameTime = workingValue35
              stateFlag24 = stateFlag25
              gameTime(stateFlag24)
            end
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        text15(workingValue59, playerPed, workingValue, dataCollection, dataCollection2)
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "searchemotes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection, dataCollection2, workingValue3, workingValue4, text7
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "Set search text"
    localValue32 = text10
    if "" == localValue32 then
      localValue32 = "~c~Tap to type"
      if localValue32 then
        goto continueAtStep11
      end
    end
    localValue32 = text10
    ::continueAtStep11::
    workingValue17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: localValue13, localValue23, localValue33) ===
    function workingValue27(localValue13, localValue23, localValue33)
      local gameTime, stateFlag24, workingValue32, text14, workingValue53, text18, text20, text2, number
      if localValue33 then
        gameTime = AddTextEntry
        stateFlag24 = "CMG_EMOTE_SEARCH"
        workingValue32 = "Search emotes"
        gameTime(stateFlag24, workingValue32)
        gameTime = DisplayOnscreenKeyboard
        stateFlag24 = 1
        workingValue32 = "CMG_EMOTE_SEARCH"
        text14 = ""
        workingValue53 = text10
        text18 = ""
        text20 = ""
        text2 = ""
        number = 48
        gameTime(stateFlag24, workingValue32, text14, workingValue53, text18, text20, text2, number)
        while true do
          gameTime = UpdateOnscreenKeyboard
          gameTime = gameTime()
          if 0 ~= gameTime then
            break
          end
          gameTime = Citizen
          gameTime = gameTime.Wait
          stateFlag24 = 0
          gameTime(stateFlag24)
        end
        gameTime = GetOnscreenKeyboardResult
        gameTime = gameTime()
        if gameTime then
          stateFlag24 = string
          stateFlag24 = stateFlag24.lower
          workingValue32 = gameTime
          stateFlag24 = stateFlag24(workingValue32)
          text10 = stateFlag24
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue17, workingValue27)
    localValue12 = text10
    if "" == localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~y~Set search text to filter emotes"
      localValue12(localValue22)
    else
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~g~Query: ~w~"
      localValue32 = text10
      localValue22 = localValue22 .. localValue32
      localValue12(localValue22)
      localValue12 = {}
      localValue22 = workingValue48

      -- === HELPER FUNCTION: localValue32(localValue13, localValue23, localValue33) ===
      function localValue32(localValue13, localValue23, localValue33)
        local gameTime, stateFlag24, workingValue32, text14, workingValue53, text18
        gameTime = workingValue47
        stateFlag24 = localValue13
        workingValue32 = localValue23[3]
        text14 = text10
        gameTime = gameTime(stateFlag24, workingValue32, text14)
        if gameTime then
          gameTime = table
          gameTime = gameTime.insert
          stateFlag24 = localValue12
          workingValue32 = {}
          text14 = localValue13
          workingValue53 = localValue23
          text18 = localValue33
          workingValue32[1] = text14
          workingValue32[2] = workingValue53
          workingValue32[3] = text18
          gameTime(stateFlag24, workingValue32)
        end
      end
      localValue22(localValue32)
      localValue22 = table
      localValue22 = localValue22.sort
      localValue32 = localValue12

      -- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue13, localValue23) ===
      function workingValue17(localValue13, localValue23)
        local localValue33, gameTime
        localValue33 = localValue13[1]
        gameTime = localValue23[1]
        localValue33 = localValue33 < gameTime
        return localValue33
      end
      localValue22(localValue32, workingValue17)
      localValue22 = math
      localValue22 = localValue22.min
      localValue32 = #localValue12
      workingValue17 = 80
      localValue22 = localValue22(localValue32, workingValue17)
      localValue32 = #localValue12
      if localValue32 > 80 then
        localValue32 = RageUI
        localValue32 = localValue32.Separator
        workingValue17 = "~y~"
        workingValue27 = #localValue12
        stateFlag25 = " hits, showing 80"
        workingValue17 = workingValue17 .. workingValue27 .. stateFlag25
        localValue32(workingValue17)
      end
      localValue32 = 1
      workingValue17 = localValue22
      workingValue27 = 1
      for stateFlag25 = localValue32, workingValue17, workingValue27 do
        number19 = localValue12[stateFlag25]
        number19 = number19[1]
        text15 = localValue12[stateFlag25]
        text15 = text15[2]
        workingValue59 = localValue12[stateFlag25]
        workingValue59 = workingValue59[3]
        if "shared" == workingValue59 then
          playerPed = "/nearby (~g~"
          workingValue = number19
          dataCollection = "~w~)"
          playerPed = playerPed .. workingValue .. dataCollection
          if playerPed then
            goto continueAtStep75
          end
        end
        playerPed = "/e ("
        workingValue = number19
        dataCollection = ")"
        playerPed = playerPed .. workingValue .. dataCollection
        ::continueAtStep75::
        workingValue = RageUI
        workingValue = workingValue.ButtonWithStyle
        dataCollection = text15[3]
        dataCollection2 = playerPed
        workingValue3 = workingValue49
        workingValue4 = number19
        workingValue3 = workingValue3(workingValue4)
        workingValue4 = number14
        text7 = text15
        workingValue4 = workingValue4(text7)
        workingValue4 = not workingValue4

        -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue23, localValue33) ===
        function text7(localValue13, localValue23, localValue33)
          local gameTime, stateFlag24, workingValue32
          gameTime = workingValue50
          stateFlag24 = localValue23
          workingValue32 = number19
          gameTime(stateFlag24, workingValue32)
          if localValue33 then
            gameTime = workingValue59
            if "shared" == gameTime then
              gameTime = workingValue37
              stateFlag24 = number19
              gameTime(stateFlag24)
            else
              gameTime = workingValue35
              stateFlag24 = text15
              gameTime(stateFlag24)
            end
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        workingValue(dataCollection, dataCollection2, workingValue3, workingValue4, text7)
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
end
rageUiOperation6(text16, workingValue58, stateFlag26, stateFlag27)
rageUiOperation6 = RegisterCommand
text16 = "emotemenu"
-- Beginner: this function is the command handler for "emotemenu".

-- === HELPER FUNCTION (decompiler name: workingValue58; parameters: none) ===
function workingValue58()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "emotesmenu"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = RageUI
  localValue3 = localValue3.Visible
  localValue4 = RMenu
  localValue5 = localValue4
  localValue4 = localValue4.Get
  localValue6 = "emotesmenu"
  localValue7 = "mainmenu"
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5, localValue6, localValue7)
  -- Beginner: result below is menuVisible.
  localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = not localValue3
  localValue1(localValue2, localValue3)
end
stateFlag26 = false
-- Beginner: Register a chat/console command. Event/command: "emotemenu".
rageUiOperation6(text16, workingValue58, stateFlag26)
rageUiOperation6 = RegisterKeyMapping
text16 = "emotemenu"
workingValue58 = "Open Emote Menu"
stateFlag26 = "KEYBOARD"
stateFlag27 = "F3"
-- Beginner: Bind a command to a keyboard/controller key.
rageUiOperation6(text16, workingValue58, stateFlag26, stateFlag27)

-- === HELPER FUNCTION (decompiler name: rageUiOperation6; parameters: localValue1, localValue2) ===
function rageUiOperation6(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue3 = #localValue2
  if localValue3 < 1 then
    localValue3 = notify
    localValue4 = "~r~No emote name was specified."
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
    return
  end
  localValue3 = string
  localValue3 = localValue3.lower
  localValue4 = localValue2[1]
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue4 = notify
    localValue5 = "~r~No emote name was specified."
    localValue4(localValue5)
    return
  elseif "c" == localValue3 then
    localValue4 = workingValue24
    localValue5 = false
    localValue4(localValue5)
    return
  end
  localValue4 = nil
  localValue5 = #localValue2
  if localValue5 >= 2 then
    localValue5 = tonumber
    localValue6 = localValue2[2]
    localValue5 = localValue5(localValue6)
    localValue4 = localValue5
  end
  localValue5 = cmgOperation.emotes
  localValue5 = localValue5[localValue3]
  if localValue5 then
    localValue5 = workingValue35
    localValue6 = cmgOperation.emotes
    localValue6 = localValue6[localValue3]
    localValue7 = nil
    localValue8 = nil
    localValue9 = localValue4
    localValue5(localValue6, localValue7, localValue8, localValue9)
  else
    localValue5 = cmgOperation.dances
    localValue5 = localValue5[localValue3]
    if localValue5 then
      localValue5 = workingValue35
      localValue6 = cmgOperation.dances
      localValue6 = localValue6[localValue3]
      localValue7 = nil
      localValue8 = nil
      localValue9 = localValue4
      localValue5(localValue6, localValue7, localValue8, localValue9)
    else
      localValue5 = cmgOperation.custom
      localValue5 = localValue5[localValue3]
      if localValue5 then
        localValue5 = workingValue35
        localValue6 = cmgOperation.custom
        localValue6 = localValue6[localValue3]
        localValue7 = nil
        localValue8 = nil
        localValue9 = localValue4
        localValue5(localValue6, localValue7, localValue8, localValue9)
      else
        localValue5 = cmgOperation.props
        localValue5 = localValue5[localValue3]
        if localValue5 then
          localValue5 = workingValue35
          localValue6 = cmgOperation.props
          localValue6 = localValue6[localValue3]
          localValue7 = nil
          localValue8 = nil
          localValue9 = localValue4
          localValue5(localValue6, localValue7, localValue8, localValue9)
        else
          localValue5 = cmgOperation.guns
          localValue5 = localValue5[localValue3]
          if localValue5 then
            localValue5 = workingValue35
            localValue6 = cmgOperation.guns
            localValue6 = localValue6[localValue3]
            localValue7 = nil
            localValue8 = nil
            localValue9 = localValue4
            localValue5(localValue6, localValue7, localValue8, localValue9)
          else
            localValue5 = cmgOperation.animals
            localValue5 = localValue5[localValue3]
            if localValue5 then
              localValue5 = workingValue35
              localValue6 = cmgOperation.animals
              localValue6 = localValue6[localValue3]
              localValue7 = nil
              localValue8 = nil
              localValue9 = localValue4
              localValue5(localValue6, localValue7, localValue8, localValue9)
            else
              localValue5 = cmgOperation.shared
              if localValue5 then
                localValue5 = cmgOperation.shared
                localValue5 = localValue5[localValue3]
                if localValue5 then
                  localValue5 = workingValue35
                  localValue6 = cmgOperation.shared
                  localValue6 = localValue6[localValue3]
                  localValue7 = nil
                  localValue8 = nil
                  localValue9 = localValue4
                  localValue5(localValue6, localValue7, localValue8, localValue9)
              end
              else
                localValue5 = notify
                localValue6 = "~r~Invalid emote name was specified."
                -- Beginner: Show a notification to the player.
                localValue5(localValue6)
              end
            end
          end
        end
      end
    end
  end
end
text16 = RegisterCommand
workingValue58 = "e"
stateFlag26 = rageUiOperation6
stateFlag27 = false
-- Beginner: Register a chat/console command. Event/command: "e".
text16(workingValue58, stateFlag26, stateFlag27)
text16 = RegisterCommand
workingValue58 = "emote"
stateFlag26 = rageUiOperation6
stateFlag27 = false
text16(workingValue58, stateFlag26, stateFlag27)
text16 = RegisterCommand
workingValue58 = "nearby"
-- Beginner: this function is the command handler for "nearby".

-- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: localValue1, localValue2) ===
function stateFlag26(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = #localValue2
  if localValue3 < 1 then
    localValue3 = notify
    localValue4 = "~r~No emote name was specified."
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
    return
  end
  localValue3 = string
  localValue3 = localValue3.lower
  localValue4 = localValue2[1]
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue4 = notify
    localValue5 = "~r~No emote name was specified."
    localValue4(localValue5)
    return
  end
  localValue4 = cmgOperation.shared
  if localValue4 then
    localValue4 = cmgOperation.shared
    localValue4 = localValue4[localValue3]
    if localValue4 then
      localValue4 = workingValue37
      localValue5 = localValue3
      localValue4(localValue5)
  end
  else
    localValue4 = notify
    localValue5 = "~r~Invalid emote name was specified."
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
  end
end
stateFlag27 = false
-- Beginner: Register a chat/console command. Event/command: "nearby".
text16(workingValue58, stateFlag26, stateFlag27)
text16 = RegisterCommand
workingValue58 = "walk"
-- Beginner: this function is the command handler for "walk".

-- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: localValue1, localValue2) ===
function stateFlag26(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = #localValue2
  if localValue3 < 1 then
    localValue3 = notify
    localValue4 = "~r~No walk name was specified."
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
    return
  end
  localValue3 = localValue2[1]
  if not localValue3 then
    localValue4 = notify
    localValue5 = "~r~No walk name was specified."
    localValue4(localValue5)
    return
  end
  localValue4 = cmgOperation.walks
  localValue4 = localValue4[localValue3]
  if localValue4 then
    localValue4 = number14
    localValue5 = cmgOperation.walks
    localValue5 = localValue5[localValue3]
    localValue4 = localValue4(localValue5)
    if not localValue4 then
      localValue4 = workingValue38
      localValue5 = cmgOperation.walks
      localValue5 = localValue5[localValue3]
      localValue4(localValue5)
    else
      localValue4 = notify
      localValue5 = "~r~You can not use emotes at this time."
      -- Beginner: Show a notification to the player.
      localValue4(localValue5)
    end
  else
    localValue4 = notify
    localValue5 = "~r~Invalid walk name was specified."
    localValue4(localValue5)
  end
end
stateFlag27 = false
-- Beginner: Register a chat/console command. Event/command: "walk".
text16(workingValue58, stateFlag26, stateFlag27)
text16 = RegisterNetEvent
workingValue58 = "c74831f601"
-- Beginner: this function handles network event "c74831f601".

-- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: localValue1, localValue2) ===
function stateFlag26(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  localValue3 = cmgOperation.shared
  if localValue3 then
    localValue3 = cmgOperation.shared
    localValue3 = localValue3[localValue2]
    if localValue3 then
      localValue3 = number14
      localValue3 = localValue3()
      if not localValue3 then
        workingValue15 = localValue2
        number8 = localValue1
        localValue3 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue3 = localValue3()
        number9 = localValue3
        localValue3 = notify
        localValue4 = "~y~Y~w~ to accept, ~r~L~w~ to refuse (~g~"
        localValue5 = cmgOperation.shared
        localValue5 = localValue5[localValue2]
        localValue5 = localValue5[3]
        localValue6 = "~w~)"
        localValue4 = localValue4 .. localValue5 .. localValue6
        -- Beginner: Show a notification to the player.
        localValue3(localValue4)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c74831f601".
text16(workingValue58, stateFlag26)

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1) ===
function text16(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = workingValue24
  localValue3 = false
  localValue2(localValue3)
  localValue2 = SetEntityVelocity
  localValue3 = localValue1
  localValue4 = 0.0
  localValue5 = 0.0
  localValue6 = 0.0
  localValue2(localValue3, localValue4, localValue5, localValue6)
  localValue2 = ClearPedTasksImmediately
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = DetachEntity
  localValue3 = localValue1
  localValue4 = true
  localValue5 = false
  localValue2(localValue3, localValue4, localValue5)
end
workingValue58 = RegisterNetEvent
stateFlag26 = "3c60b83bb5"
-- Beginner: this function handles network event "3c60b83bb5".

-- === HELPER FUNCTION (decompiler name: stateFlag27; parameters: localValue1, localValue2) ===
function stateFlag27(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = text16
  localValue4 = PlayerPedId
  localValue4, localValue5 = localValue4()
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue3(localValue4, localValue5)
  localValue3 = cmgOperation.shared
  if localValue3 then
    localValue3 = cmgOperation.shared
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue35
      localValue4 = cmgOperation.shared
      localValue4 = localValue4[localValue1]
      localValue5 = localValue2
      localValue3(localValue4, localValue5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3c60b83bb5".
workingValue58(stateFlag26, stateFlag27)

-- === HELPER FUNCTION (decompiler name: workingValue58; parameters: localValue1, localValue2) ===
function workingValue58(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5, dataCollection4, rageUiOperation, text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5
  localValue3 = localValue2.animationOptions
  if not localValue3 then
    localValue3 = {}
  end
  localValue4 = localValue3.syncOffsetFront
  if not localValue4 then
    localValue4 = 1.0
  end
  localValue5 = localValue3.syncOffsetSide
  if not localValue5 then
    localValue5 = 0.0
  end
  localValue6 = localValue3.syncOffsetHeight
  if not localValue6 then
    localValue6 = 0.0
  end
  localValue7 = localValue3.syncOffsetHeading
  if nil == localValue7 then
    localValue7 = -180.0
  end
  localValue8 = GetEntityHeading
  localValue9 = localValue1
  -- Beginner: result below is heading.
  localValue8 = localValue8(localValue9)
  localValue9 = math
  localValue9 = localValue9.rad
  localValue10 = localValue8
  localValue9 = localValue9(localValue10)
  localValue10 = math
  localValue10 = localValue10.sin
  localValue11 = localValue9
  localValue10 = localValue10(localValue11)
  localValue10 = -localValue10
  localValue11 = math
  localValue11 = localValue11.cos
  workingValue2 = localValue9
  localValue11 = localValue11(workingValue2)
  workingValue2 = math
  workingValue2 = workingValue2.cos
  text5 = localValue9
  workingValue2 = workingValue2(text5)
  text5 = math
  text5 = text5.sin
  dataCollection4 = localValue9
  text5 = text5(dataCollection4)
  dataCollection4 = GetEntityCoords
  rageUiOperation = localValue1
  -- Beginner: result below is entityCoords.
  dataCollection4 = dataCollection4(rageUiOperation)
  rageUiOperation = dataCollection4.x
  text6 = localValue10 * localValue4
  rageUiOperation = rageUiOperation + text6
  text6 = workingValue2 * localValue5
  rageUiOperation = rageUiOperation + text6
  text6 = dataCollection4.y
  text8 = localValue11 * localValue4
  text6 = text6 + text8
  text8 = text5 * localValue5
  text6 = text6 + text8
  text8 = dataCollection4.z
  text8 = text8 + localValue6
  stateFlag = rageUiOperation
  rageUiOperation2 = text6
  rageUiOperation3 = text8
  stateFlag5 = localValue8 + localValue7
  return stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5
end
stateFlag26 = RegisterNetEvent
stateFlag27 = "03634a9527"
-- Beginner: this function handles network event "03634a9527".

-- === HELPER FUNCTION (decompiler name: text17; parameters: localValue1) ===
function text17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5, dataCollection4, rageUiOperation, text6, text8
  localValue2 = GetPlayerFromServerId
  localValue3 = number6
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  if -1 == localValue2 then
    return
  end
  localValue3 = GetPlayerPed
  localValue4 = localValue2
  -- Beginner: result below is playerPed.
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    return
  end
  localValue4 = cmgOperation.shared
  if localValue4 then
    localValue4 = cmgOperation.shared
    localValue5 = workingValue14
    localValue4 = localValue4[localValue5]
  end
  if not localValue4 then
    return
  end
  localValue5 = workingValue58
  localValue6 = localValue3
  localValue7 = localValue4
  localValue5, localValue6, localValue7, localValue8 = localValue5(localValue6, localValue7)
  localValue9 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue9 = localValue9()
  localValue10 = text16
  localValue11 = localValue9
  localValue10(localValue11)
  localValue10 = SetEntityHeading
  localValue11 = localValue9
  workingValue2 = localValue8
  -- Beginner: Change the direction an entity is facing.
  localValue10(localValue11, workingValue2)
  localValue10 = SetEntityCoordsNoOffset
  localValue11 = localValue9
  workingValue2 = localValue5
  text5 = localValue6
  dataCollection4 = localValue7
  rageUiOperation = false
  text6 = false
  text8 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue10(localValue11, workingValue2, text5, dataCollection4, rageUiOperation, text6, text8)
  localValue10 = workingValue35
  localValue11 = localValue4
  workingValue2 = localValue1
  localValue10(localValue11, workingValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "03634a9527".
stateFlag26(stateFlag27, text17)

-- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: none) ===
function stateFlag26()
  local localValue1, localValue2
  localValue1 = nil
  workingValue15 = localValue1
  localValue1 = 0
  number8 = localValue1
  localValue1 = 0
  number9 = localValue1
end

-- === HELPER FUNCTION (decompiler name: stateFlag27; parameters: none) ===
function stateFlag27()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue2, text5, dataCollection4, rageUiOperation, text6, text8, stateFlag, rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7, stateFlag14
  localValue1 = workingValue8
  if not localValue1 then
    return
  end
  localValue1 = workingValue9
  localValue2 = workingValue8.handle
  localValue1 = localValue1(localValue2)
  if localValue1 then
    return
  end
  localValue1 = workingValue8
  localValue2 = HasNamedPtfxAssetLoaded
  localValue3 = localValue1.asset
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = RequestNamedPtfxAsset
    localValue3 = localValue1.asset
    localValue2(localValue3)
    while true do
      localValue2 = HasNamedPtfxAssetLoaded
      localValue3 = localValue1.asset
      localValue2 = localValue2(localValue3)
      if localValue2 then
        break
      end
      localValue2 = Wait
      localValue3 = 0
      localValue2(localValue3)
    end
  end

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, localValue22
    localValue12 = UseParticleFxAsset
    localValue22 = localValue1.asset
    localValue12(localValue22)
  end
  localValue3 = localValue1.placement
  if not localValue3 then
    localValue3 = {}
    localValue4 = 0.0
    localValue5 = 0.0
    localValue6 = 0.0
    localValue7 = 0.0
    localValue8 = 0.0
    localValue9 = 0.0
    localValue10 = 1.0
    localValue3[1] = localValue4
    localValue3[2] = localValue5
    localValue3[3] = localValue6
    localValue3[4] = localValue7
    localValue3[5] = localValue8
    localValue3[6] = localValue9
    localValue3[7] = localValue10
  end
  localValue4 = localValue3[1]
  localValue5 = localValue3[2]
  localValue6 = localValue3[3]
  localValue7 = localValue3[4]
  if not localValue7 then
    localValue7 = 0.0
  end
  localValue8 = localValue3[5]
  if not localValue8 then
    localValue8 = 0.0
  end
  localValue9 = localValue3[6]
  if not localValue9 then
    localValue9 = 0.0
  end
  localValue10 = localValue3[7]
  if nil == localValue10 or 0.0 == localValue10 then
    localValue10 = 1.0
  end
  localValue11 = localValue10 or localValue11
  if not localValue10 then
    localValue11 = 1.0
  end
  localValue11 = localValue11 + 0.0
  workingValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue2 = workingValue2()

  -- === HELPER FUNCTION (decompiler name: text5; parameters: localValue12) ===
  function text5(localValue12)
    local localValue22, localValue32, workingValue17, workingValue27, stateFlag25, number19, text15, workingValue59, playerPed, workingValue, dataCollection
    localValue22 = workingValue9
    localValue32 = localValue12
    localValue22 = localValue22(localValue32)
    if not localValue22 then
      return
    end
    localValue22 = localValue1.ptfxColor
    if not localValue22 then
      localValue32 = SetParticleFxLoopedColour
      workingValue17 = localValue12
      workingValue27 = 1.0
      stateFlag25 = 1.0
      number19 = 1.0
      text15 = false
      localValue32(workingValue17, workingValue27, stateFlag25, number19, text15)
      return
    end
    localValue32 = localValue22[1]
    if localValue32 then
      workingValue17 = type
      workingValue27 = localValue32
      workingValue17 = workingValue17(workingValue27)
      if "table" == workingValue17 then
        workingValue17 = localValue32[1]
        if workingValue17 then
          workingValue17 = type
          workingValue27 = localValue32[1]
          workingValue17 = workingValue17(workingValue27)
          if "table" == workingValue17 then
            workingValue17 = math
            workingValue17 = workingValue17.random
            workingValue27 = 1
            stateFlag25 = #localValue22
            workingValue17 = workingValue17(workingValue27, stateFlag25)
            localValue32 = localValue22[workingValue17]
          end
        end
      end
    end
    if localValue32 then
      workingValue17 = type
      workingValue27 = localValue32
      workingValue17 = workingValue17(workingValue27)
      if "table" == workingValue17 then
        workingValue17 = localValue32.R
        if not workingValue17 then
          workingValue17 = localValue32.r
          if not workingValue17 then
            workingValue17 = 255
          end
        end
        workingValue17 = workingValue17 / 255.0
        workingValue27 = localValue32.G
        if not workingValue27 then
          workingValue27 = localValue32.g
          if not workingValue27 then
            workingValue27 = 255
          end
        end
        workingValue27 = workingValue27 / 255.0
        stateFlag25 = localValue32.B
        if not stateFlag25 then
          stateFlag25 = localValue32.b
          if not stateFlag25 then
            stateFlag25 = 255
          end
        end
        stateFlag25 = stateFlag25 / 255.0
        number19 = SetParticleFxLoopedColour
        text15 = localValue12
        workingValue59 = workingValue17
        playerPed = workingValue27
        workingValue = stateFlag25
        dataCollection = false
        number19(text15, workingValue59, playerPed, workingValue, dataCollection)
        number19 = localValue32.A
        if not number19 then
          number19 = localValue32.a
        end
        if nil ~= number19 and number19 > 1.0 then
          text15 = SetParticleFxLoopedAlpha
          workingValue59 = localValue12
          playerPed = number19 / 255.0
          text15(workingValue59, playerPed)
        elseif nil ~= number19 then
          text15 = SetParticleFxLoopedAlpha
          workingValue59 = localValue12
          playerPed = number19
          text15(workingValue59, playerPed)
        end
    end
    else
      workingValue17 = SetParticleFxLoopedColour
      workingValue27 = localValue12
      stateFlag25 = 1.0
      number19 = 1.0
      text15 = 1.0
      workingValue59 = false
      workingValue17(workingValue27, stateFlag25, number19, text15, workingValue59)
    end
  end

  -- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue12) ===
  function dataCollection4(localValue12)
    local localValue22, localValue32, workingValue17
    localValue22 = localValue1.ptfxBone
    if localValue22 then
      localValue22 = GetPedBoneIndex
      localValue32 = workingValue2
      workingValue17 = localValue1.ptfxBone
      return localValue22(localValue32, workingValue17)
    end
    localValue22 = IsEntityAPed
    localValue32 = localValue12
    localValue22 = localValue22(localValue32)
    if localValue22 then
      localValue22 = GetPedBoneIndex
      localValue32 = localValue12
      workingValue17 = 60309
      return localValue22(localValue32, workingValue17)
    end
    localValue22 = GetEntityBoneIndexByName
    localValue32 = localValue12
    workingValue17 = "VFX"
    localValue22 = localValue22(localValue32, workingValue17)
    if nil == localValue22 or localValue22 < 0 then
      localValue22 = 0
    end
    return localValue22
  end
  rageUiOperation = workingValue2
  text6 = localValue1.ptfxNoProp
  if not text6 then
    text6 = dataCollection3
    text6 = text6[1]
    if text6 then
      text6 = DoesEntityExist
      text8 = dataCollection3
      text8 = text8[1]
      text6 = text6(text8)
      if text6 then
        text6 = dataCollection3
        rageUiOperation = text6[1]
      end
    end
  end
  text6 = dataCollection4
  text8 = rageUiOperation
  text6 = text6(text8)
  text8 = 0
  stateFlag = IsEntityAPed
  rageUiOperation2 = rageUiOperation
  stateFlag = stateFlag(rageUiOperation2)
  if stateFlag then
    stateFlag = localValue2
    stateFlag()
    stateFlag = StartParticleFxLoopedOnEntityBone
    rageUiOperation2 = localValue1.name
    rageUiOperation3 = rageUiOperation
    stateFlag5 = localValue4
    stateFlag6 = localValue5
    stateFlag7 = localValue6
    workingValue12 = localValue7
    workingValue13 = localValue8
    stateFlag9 = localValue9
    stateFlag11 = text6
    stateFlag12 = localValue11
    stateFlag13 = false
    number7 = false
    stateFlag14 = false
    stateFlag = stateFlag(rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7, stateFlag14)
    text8 = stateFlag
    stateFlag = workingValue9
    rageUiOperation2 = text8
    stateFlag = stateFlag(rageUiOperation2)
    if not stateFlag then
      stateFlag = localValue2
      stateFlag()
      stateFlag = _ENV
      rageUiOperation2 = "StartNetworkedParticleFxLoopedOnEntityBone"
      stateFlag = stateFlag[rageUiOperation2]
      rageUiOperation2 = localValue1.name
      rageUiOperation3 = rageUiOperation
      stateFlag5 = localValue4
      stateFlag6 = localValue5
      stateFlag7 = localValue6
      workingValue12 = localValue7
      workingValue13 = localValue8
      stateFlag9 = localValue9
      stateFlag11 = text6
      stateFlag12 = localValue11
      stateFlag13 = false
      number7 = false
      stateFlag14 = false
      stateFlag = stateFlag(rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7, stateFlag14)
      text8 = stateFlag
    end
  else
    stateFlag = localValue2
    stateFlag()
    stateFlag = StartParticleFxLoopedOnEntity
    rageUiOperation2 = localValue1.name
    rageUiOperation3 = rageUiOperation
    stateFlag5 = localValue4
    stateFlag6 = localValue5
    stateFlag7 = localValue6
    workingValue12 = localValue7
    workingValue13 = localValue8
    stateFlag9 = localValue9
    stateFlag11 = localValue11
    stateFlag12 = false
    stateFlag13 = false
    number7 = false
    stateFlag = stateFlag(rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7)
    text8 = stateFlag
    stateFlag = workingValue9
    rageUiOperation2 = text8
    stateFlag = stateFlag(rageUiOperation2)
    if not stateFlag then
      stateFlag = localValue2
      stateFlag()
      stateFlag = StartParticleFxLoopedOnEntityBone
      rageUiOperation2 = localValue1.name
      rageUiOperation3 = rageUiOperation
      stateFlag5 = localValue4
      stateFlag6 = localValue5
      stateFlag7 = localValue6
      workingValue12 = localValue7
      workingValue13 = localValue8
      stateFlag9 = localValue9
      stateFlag11 = -1
      stateFlag12 = localValue11
      stateFlag13 = false
      number7 = false
      stateFlag14 = false
      stateFlag = stateFlag(rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7, stateFlag14)
      text8 = stateFlag
    end
    stateFlag = workingValue9
    rageUiOperation2 = text8
    stateFlag = stateFlag(rageUiOperation2)
    if not stateFlag then
      stateFlag = localValue2
      stateFlag()
      stateFlag = StartParticleFxLoopedOnEntityBone
      rageUiOperation2 = localValue1.name
      rageUiOperation3 = rageUiOperation
      stateFlag5 = localValue4
      stateFlag6 = localValue5
      stateFlag7 = localValue6
      workingValue12 = localValue7
      workingValue13 = localValue8
      stateFlag9 = localValue9
      stateFlag11 = text6
      stateFlag12 = localValue11
      stateFlag13 = false
      number7 = false
      stateFlag14 = false
      stateFlag = stateFlag(rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7, stateFlag14)
      text8 = stateFlag
    end
    stateFlag = workingValue9
    rageUiOperation2 = text8
    stateFlag = stateFlag(rageUiOperation2)
    if not stateFlag then
      stateFlag = localValue2
      stateFlag()
      stateFlag = StartNetworkedParticleFxLoopedOnEntity
      rageUiOperation2 = localValue1.name
      rageUiOperation3 = rageUiOperation
      stateFlag5 = localValue4
      stateFlag6 = localValue5
      stateFlag7 = localValue6
      workingValue12 = localValue7
      workingValue13 = localValue8
      stateFlag9 = localValue9
      stateFlag11 = localValue11
      stateFlag12 = false
      stateFlag13 = false
      number7 = false
      stateFlag = stateFlag(rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7)
      text8 = stateFlag
    end
    stateFlag = workingValue9
    rageUiOperation2 = text8
    stateFlag = stateFlag(rageUiOperation2)
    if not stateFlag then
      stateFlag = localValue2
      stateFlag()
      stateFlag = _ENV
      rageUiOperation2 = "StartNetworkedParticleFxLoopedOnEntityBone"
      stateFlag = stateFlag[rageUiOperation2]
      rageUiOperation2 = localValue1.name
      rageUiOperation3 = rageUiOperation
      stateFlag5 = localValue4
      stateFlag6 = localValue5
      stateFlag7 = localValue6
      workingValue12 = localValue7
      workingValue13 = localValue8
      stateFlag9 = localValue9
      stateFlag11 = text6
      stateFlag12 = localValue11
      stateFlag13 = false
      number7 = false
      stateFlag14 = false
      stateFlag = stateFlag(rageUiOperation2, rageUiOperation3, stateFlag5, stateFlag6, stateFlag7, workingValue12, workingValue13, stateFlag9, stateFlag11, stateFlag12, stateFlag13, number7, stateFlag14)
      text8 = stateFlag
    end
  end
  stateFlag = workingValue9
  rageUiOperation2 = text8
  stateFlag = stateFlag(rageUiOperation2)
  stateFlag = text8 or stateFlag
  if not stateFlag or not text8 then
    stateFlag = nil
  end
  localValue1.handle = stateFlag
  stateFlag = text5
  rageUiOperation2 = localValue1.handle
  stateFlag(rageUiOperation2)
  stateFlag = localValue1.ptfxCanHold
  if not stateFlag then
    stateFlag = Citizen
    stateFlag = stateFlag.CreateThread

    -- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
    function rageUiOperation2()
      local localValue12, localValue22, localValue32, workingValue17
      localValue12 = workingValue8
      if localValue12 then
        localValue12 = text5
        localValue22 = workingValue8.handle
        localValue12(localValue22)
        localValue12 = workingValue8.wait
        if nil == localValue12 then
          localValue12 = 500
        end
        if localValue12 > 0 then
          localValue22 = Citizen
          localValue22 = localValue22.Wait
          localValue32 = localValue12
          localValue22(localValue32)
        end
        localValue22 = workingValue8
        if localValue22 then
          localValue22 = workingValue9
          localValue32 = workingValue8.handle
          localValue22 = localValue22(localValue32)
          if localValue22 then
            localValue22 = StopParticleFxLooped
            localValue32 = workingValue8.handle
            workingValue17 = false
            localValue22(localValue32, workingValue17)
            workingValue8.handle = nil
          end
        end
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    stateFlag(rageUiOperation2)
  end
end

-- === HELPER FUNCTION (decompiler name: text17; parameters: none) ===
function text17()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = workingValue15
  if localValue1 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    localValue2 = number9
    localValue1 = localValue1 - localValue2
    localValue2 = 5000
    if localValue1 > localValue2 then
      localValue1 = stateFlag26
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      localValue1()
    else
      localValue1 = IsControlJustPressed
      localValue2 = 1
      localValue3 = 246
      localValue1 = localValue1(localValue2, localValue3)
      if localValue1 then
        localValue1 = number14
        localValue1 = localValue1()
        if localValue1 then
          localValue1 = notify
          localValue2 = "~r~You can not use emotes at this time."
          -- Beginner: Show a notification to the player.
          localValue1(localValue2)
        else
          localValue1 = cmgOperation.shared
          if localValue1 then
            localValue1 = cmgOperation.shared
            localValue2 = workingValue15
            localValue1 = localValue1[localValue2]
            if localValue1 then
              localValue1 = TriggerServerEvent
              localValue2 = "3c60b83bb5"
              localValue3 = number8
              localValue4 = cmgOperation.shared
              localValue5 = workingValue15
              localValue4 = localValue4[localValue5]
              localValue4 = localValue4[4]
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3c60b83bb5".
              localValue1(localValue2, localValue3, localValue4)
            end
          end
        end
        localValue1 = stateFlag26
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        localValue1()
      end
    end
  end
  localValue1 = text3
  if localValue1 then
    localValue1 = workingValue5
    if localValue1 then
      localValue1 = workingValue6
      if localValue1 then
        localValue1 = stateFlag23
        if not localValue1 then
          localValue1 = workingValue8
          if localValue1 then
            localValue1 = EnableControlAction
            localValue2 = 0
            localValue3 = 47
            localValue4 = true
            localValue1(localValue2, localValue3, localValue4)
            localValue1 = workingValue8.ptfxCanHold
            if localValue1 then
              localValue1 = workingValue10
              localValue1 = localValue1()
              localValue2 = workingValue11
              localValue2 = localValue2()
              if localValue2 then
                localValue3 = number5
                localValue3 = localValue3 + 1
                number5 = localValue3
                localValue3 = workingValue9
                localValue4 = workingValue8.handle
                localValue3 = localValue3(localValue4)
                if localValue3 then
                  localValue3 = StopParticleFxLooped
                  localValue4 = workingValue8.handle
                  localValue5 = false
                  localValue3(localValue4, localValue5)
                  workingValue8.handle = nil
                end
                localValue3 = stateFlag27
                localValue3()
              elseif localValue1 then
                localValue3 = workingValue9
                localValue4 = workingValue8.handle
                localValue3 = localValue3(localValue4)
                if not localValue3 then
                  localValue3 = stateFlag27
                  localValue3()
                end
              else
                localValue3 = stateFlag8
                if localValue3 then
                  localValue3 = number5
                  localValue3 = localValue3 + 1
                  number5 = localValue3
                  localValue3 = number5
                  localValue4 = workingValue8.handle
                  localValue5 = Citizen
                  localValue5 = localValue5.CreateThread

                  -- === HELPER FUNCTION: localValue6() ===
                  function localValue6()
                    local localValue12, localValue22, localValue32
                    localValue12 = Citizen
                    localValue12 = localValue12.Wait
                    localValue22 = number4
                    localValue12(localValue22)
                    localValue12 = localValue3
                    localValue22 = number5
                    if localValue12 ~= localValue22 then
                      return
                    end
                    localValue12 = workingValue8
                    if not localValue12 then
                      return
                    end
                    localValue12 = workingValue10
                    localValue12 = localValue12()
                    if localValue12 then
                      return
                    end
                    localValue12 = workingValue9
                    localValue22 = workingValue8.handle
                    localValue12 = localValue12(localValue22)
                    if not localValue12 then
                      return
                    end
                    localValue12 = workingValue8.handle
                    localValue22 = localValue4
                    if localValue12 ~= localValue22 then
                      return
                    end
                    localValue12 = StopParticleFxLooped
                    localValue22 = workingValue8.handle
                    localValue32 = false
                    localValue12(localValue22, localValue32)
                    workingValue8.handle = nil
                  end
                  -- Beginner: Start a separate FiveM thread so this code can run independently.
                  localValue5(localValue6)
                end
              end
              stateFlag8 = localValue1
            else
              localValue1 = workingValue11
              localValue1 = localValue1()
              if localValue1 then
                localValue1 = stateFlag27
                localValue1()
              end
            end
          end
          localValue1 = IsEntityPlayingAnim
          localValue2 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue2 = localValue2()
          localValue3 = workingValue5
          localValue4 = workingValue6
          localValue5 = 3
          localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
          if not localValue1 then
            localValue1 = GetAnimDuration
            localValue2 = workingValue5
            localValue3 = workingValue6
            localValue1 = localValue1(localValue2, localValue3)
            if localValue1 > 0.0 then
              goto continueAtStep145
            end
          end
          localValue1 = number14
          localValue2 = workingValue7
          localValue1 = localValue1(localValue2)
          ::continueAtStep145::
          if localValue1 then
            localValue1 = stateFlag10
            if localValue1 then
              localValue1 = Citizen
              localValue1 = localValue1.CreateThreadNow

              -- === HELPER FUNCTION: localValue2() ===
              function localValue2()
                local localValue12, localValue22
                localValue12 = workingValue7
                if localValue12 then
                  localValue12 = workingValue35
                  localValue22 = workingValue7
                  localValue12(localValue22)
                end
              end
              localValue1(localValue2)
            else
              localValue1 = workingValue24
              localValue2 = true
              localValue1(localValue2)
            end
          end
        end
      end
    end
  end
end
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text19; parameters: localValue1, localValue2, localValue3) ===
function text19(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8
  localValue4 = cmgOperation.emotes
  localValue4 = localValue4[localValue1]
  if localValue4 then
    localValue4 = workingValue35
    localValue5 = cmgOperation.emotes
    localValue5 = localValue5[localValue1]
    localValue6 = nil
    localValue7 = localValue2
    localValue8 = localValue3
    localValue4(localValue5, localValue6, localValue7, localValue8)
  else
    localValue4 = cmgOperation.dances
    localValue4 = localValue4[localValue1]
    if localValue4 then
      localValue4 = workingValue35
      localValue5 = cmgOperation.dances
      localValue5 = localValue5[localValue1]
      localValue6 = nil
      localValue7 = localValue2
      localValue8 = localValue3
      localValue4(localValue5, localValue6, localValue7, localValue8)
    else
      localValue4 = cmgOperation.custom
      localValue4 = localValue4[localValue1]
      if localValue4 then
        localValue4 = workingValue35
        localValue5 = cmgOperation.custom
        localValue5 = localValue5[localValue1]
        localValue6 = nil
        localValue7 = localValue2
        localValue8 = localValue3
        localValue4(localValue5, localValue6, localValue7, localValue8)
      else
        localValue4 = cmgOperation.props
        localValue4 = localValue4[localValue1]
        if localValue4 then
          localValue4 = workingValue35
          localValue5 = cmgOperation.props
          localValue5 = localValue5[localValue1]
          localValue6 = nil
          localValue7 = localValue2
          localValue8 = localValue3
          localValue4(localValue5, localValue6, localValue7, localValue8)
        else
          localValue4 = cmgOperation.guns
          localValue4 = localValue4[localValue1]
          if localValue4 then
            localValue4 = workingValue35
            localValue5 = cmgOperation.guns
            localValue5 = localValue5[localValue1]
            localValue6 = nil
            localValue7 = localValue2
            localValue8 = localValue3
            localValue4(localValue5, localValue6, localValue7, localValue8)
          else
            localValue4 = cmgOperation.animals
            localValue4 = localValue4[localValue1]
            if localValue4 then
              localValue4 = workingValue35
              localValue5 = cmgOperation.animals
              localValue5 = localValue5[localValue1]
              localValue6 = nil
              localValue7 = localValue2
              localValue8 = localValue3
              localValue4(localValue5, localValue6, localValue7, localValue8)
            else
              localValue4 = cmgOperation.shared
              if localValue4 then
                localValue4 = cmgOperation.shared
                localValue4 = localValue4[localValue1]
                if localValue4 then
                  localValue4 = workingValue35
                  localValue5 = cmgOperation.shared
                  localValue5 = localValue5[localValue1]
                  localValue6 = nil
                  localValue7 = localValue2
                  localValue8 = localValue3
                  localValue4(localValue5, localValue6, localValue7, localValue8)
                end
              end
            end
          end
        end
      end
    end
  end
end
cmgOperation3.playEmote = text19
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text19; parameters: none) ===
function text19()
  local localValue1, localValue2
  localValue1 = text3
  localValue2 = workingValue7
  if localValue2 then
    localValue2 = workingValue7
    localValue2 = localValue2[3]
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = nil
  ::continueAtStep10::
  return localValue1, localValue2
end
cmgOperation3.isPlayingEmote = text19
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text19; parameters: none) ===
function text19()
  local localValue1, localValue2
  localValue1 = workingValue7
  if localValue1 then
    localValue1 = workingValue7.animationOptions
    if localValue1 then
      localValue1 = workingValue7.animationOptions
      localValue1 = localValue1.attachTo
      if localValue1 then
        localValue1 = true
        return localValue1
    end
  end
  else
    localValue1 = false
    return localValue1
  end
end
cmgOperation3.isCurrentEmoteAttachingPed = text19
cmgOperation3 = CMG
cmgOperation3.cancelEmote = workingValue24
cmgOperation3 = Citizen
cmgOperation3 = cmgOperation3.CreateThread

-- === HELPER FUNCTION (decompiler name: text19; parameters: none) ===
function text19()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = json
  localValue1 = localValue1.decode
  localValue2 = GetResourceKvpString
  localValue3 = "cmg_favourite_emotes"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = "{}"
  end
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = {}
  end
  dataCollection6 = localValue1
  localValue1 = TriggerEvent
  localValue2 = "chat:addSuggestion"
  localValue3 = "/e"
  localValue4 = "Play an emote"
  localValue5 = {}
  localValue6 = {}
  localValue6.name = "emotename"
  localValue6.help = "dance, camera, sit or any valid emote."
  localValue5[1] = localValue6
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = TriggerEvent
  localValue2 = "chat:addSuggestion"
  localValue3 = "/emote"
  localValue4 = "Play an emote"
  localValue5 = {}
  localValue6 = {}
  localValue6.name = "emotename"
  localValue6.help = "dance, camera, sit or any valid emote."
  localValue5[1] = localValue6
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = TriggerEvent
  localValue2 = "chat:addSuggestion"
  localValue3 = "/emotemenu"
  localValue4 = "Open emotes menu (F3) by default."
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = TriggerEvent
  localValue2 = "chat:addSuggestion"
  localValue3 = "/walk"
  localValue4 = "Set your walkingstyle."
  localValue5 = {}
  localValue6 = {}
  localValue6.name = "style"
  localValue6.help = "/walks for a list of valid styles"
  localValue5[1] = localValue6
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = CMG
  localValue1 = localValue1.createThreadOnTick
  localValue2 = text17
  localValue3 = "Emotes"
  -- Beginner: Run a helper every game frame while this script is active.
  localValue1(localValue2, localValue3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation3(text19)
cmgOperation3 = RegisterNetEvent
text19 = "14d094e30b"
-- Beginner: this function handles network event "14d094e30b".

-- === HELPER FUNCTION (decompiler name: workingValue60; parameters: none) ===
function workingValue60()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  if 0 == localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.canAnim
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = TaskStartScenarioInPlace
      localValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = "WORLD_HUMAN_STAND_MOBILE"
      localValue4 = 0
      localValue5 = true
      localValue1(localValue2, localValue3, localValue4, localValue5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "14d094e30b".
cmgOperation3(text19, workingValue60)
cmgOperation3 = RegisterNetEvent
text19 = "8f6ef1fbb5"
-- Beginner: this function handles network event "8f6ef1fbb5".

-- === HELPER FUNCTION (decompiler name: workingValue60; parameters: none) ===
function workingValue60()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  if 0 == localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.canAnim
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = ClearPedTasks
      localValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue1(localValue2)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8f6ef1fbb5".
cmgOperation3(text19, workingValue60)
cmgOperation3 = AddEventHandler
text19 = "CEventOpenDoor"
-- Beginner: this function runs when client event "CEventOpenDoor" fires.

-- === HELPER FUNCTION (decompiler name: workingValue60; parameters: none) ===
function workingValue60()
  local localValue1, localValue2, localValue3
  localValue1 = text3
  if localValue1 then
    localValue1 = stateFlag10
    if not localValue1 then
      localValue1 = true
      stateFlag10 = localValue1
      localValue1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      while true do
        localValue2 = IsPedOpeningADoor
        localValue3 = localValue1
        localValue2 = localValue2(localValue3)
        if not localValue2 then
          break
        end
        localValue2 = Citizen
        localValue2 = localValue2.Wait
        localValue3 = 0
        localValue2(localValue3)
      end
      localValue2 = false
      stateFlag10 = localValue2
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CEventOpenDoor".
cmgOperation3(text19, workingValue60)
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text19; parameters: none) ===
function text19()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue1 = math
  localValue1 = localValue1.random
  localValue2 = 1
  localValue3 = table
  localValue3 = localValue3.count
  localValue4 = cmgOperation.walks
  localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9 = localValue3(localValue4)
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
  localValue2 = 1
  localValue3 = pairs
  localValue4 = cmgOperation.walks
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    if localValue2 == localValue1 then
      localValue9 = localValue8[1]
      return localValue9
    end
    localValue2 = localValue2 + 1
  end
  localValue3 = nil
  return localValue3
end
cmgOperation3.getRandomWalkStyle = text19
