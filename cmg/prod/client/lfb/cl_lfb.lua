--[[
    LEVEL 1 BEGINNER GUIDE — Lfb
    =================================

    File: cmg/prod/client/lfb/cl_lfb.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: fire-service gameplay, specifically the Lfb feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 126
      * Background threads: 0
      * Always-running loops: 21
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
local cmgOperation, text6, stateFlag21, stateFlag22, text12, workingValue16, workingValue18, workingValue22, workingValue24, workingValue26, workingValue, workingValue4, workingValue7, stateFlag5, workingValue8, text, text2, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25
cmgOperation = CMG
cmgOperation = cmgOperation.registerCommand
text6 = "lfb_key"

-- === HELPER FUNCTION (decompiler name: stateFlag21; parameters: none) ===
function stateFlag21()
  local localValue1, localValue2
  localValue1 = ExecuteCommand
  localValue2 = "lfb"
  localValue1(localValue2)
end
stateFlag22 = false
cmgOperation(text6, stateFlag21, stateFlag22)
cmgOperation = RegisterKeyMapping
text6 = "lfb_key"
stateFlag21 = "LFB Menu"
stateFlag22 = "keyboard"
text12 = "U"
-- Beginner: Bind a command to a keyboard/controller key.
cmgOperation(text6, stateFlag21, stateFlag22, text12)
cmgOperation = TriggerEvent
text6 = "chat:addSuggestion"
stateFlag21 = "/lfb"
stateFlag22 = "Access your LFB menu"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
cmgOperation(text6, stateFlag21, stateFlag22)
cmgOperation = false
text6 = false
stateFlag21 = false
stateFlag22 = nil
text12 = nil
workingValue16 = nil
workingValue18 = nil
workingValue22 = nil
workingValue24 = nil
workingValue26 = nil
workingValue = nil
workingValue4 = nil
workingValue7 = nil
stateFlag5 = false
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text = "lfb"
text2 = "main"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text4 = ""
text5 = "Status: ~g~Available"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = "cmg_lfbui"
text8 = "cmg_lfbui"
rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation2(text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8)
workingValue8(text, text2, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text = "lfb"
text2 = "tools"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text4 = RMenu
text5 = text4
text4 = text4.Get
rageUiOperation3 = "lfb"
rageUiOperation4 = "main"
-- Beginner: result below is menu.
text4 = text4(text5, rageUiOperation3, rageUiOperation4)
text5 = ""
rageUiOperation3 = "LFB: ~b~Tools"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation5()
rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation2(text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8(text, text2, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text = "lfb"
text2 = "water"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text4 = RMenu
text5 = text4
text4 = text4.Get
rageUiOperation3 = "lfb"
rageUiOperation4 = "main"
-- Beginner: result below is menu.
text4 = text4(text5, rageUiOperation3, rageUiOperation4)
text5 = ""
rageUiOperation3 = "LFB: ~b~Water"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation5()
rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation2(text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8(text, text2, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text = "lfb"
text2 = "ba"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text4 = RMenu
text5 = text4
text4 = text4.Get
rageUiOperation3 = "lfb"
rageUiOperation4 = "main"
-- Beginner: result below is menu.
text4 = text4(text5, rageUiOperation3, rageUiOperation4)
text5 = ""
rageUiOperation3 = "LFB: ~b~BA"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation5()
rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation2(text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8(text, text2, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text = "lfb"
text2 = "firemain"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text4 = ""
text5 = "Manage Fires"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = "cmg_lfbui"
text8 = "cmg_lfbui"
rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation2(text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8)
workingValue8(text, text2, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text = "lfb"
text2 = "fire"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text4 = RMenu
text5 = text4
text4 = text4.Get
rageUiOperation3 = "lfb"
rageUiOperation4 = "firemain"
-- Beginner: result below is menu.
text4 = text4(text5, rageUiOperation3, rageUiOperation4)
text5 = ""
rageUiOperation3 = "LFB: ~b~Start Fires"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation5()
rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation2(text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8(text, text2, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text = "lfb"
text2 = "management"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text4 = RMenu
text5 = text4
text4 = text4.Get
rageUiOperation3 = "lfb"
rageUiOperation4 = "firemain"
-- Beginner: result below is menu.
text4 = text4(text5, rageUiOperation3, rageUiOperation4)
text5 = ""
rageUiOperation3 = "LFB: ~b~Manage Fires"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation5()
rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation2(text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8(text, text2, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text = "lfb"
text2 = "settings"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text4 = RMenu
text5 = text4
text4 = text4.Get
rageUiOperation3 = "lfb"
rageUiOperation4 = "firemain"
-- Beginner: result below is menu.
text4 = text4(text5, rageUiOperation3, rageUiOperation4)
text5 = ""
rageUiOperation3 = "LFB: ~b~Settings"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation5()
rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25 = rageUiOperation2(text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8(text, text2, rageUiOperation2, text4, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text8, number2, rageUiOperation6, number3, number4, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number7, eventHandler, dataCollection8, text10, eventHandler2, eventHandler3, text11, stateFlag23, number8, dataCollection10, number9, stateFlag24, number10, number11, dataCollection11, eventHandler4, dataCollection12, dataCollection13, number12, number13, number14, eventHandler5, text13, workingValue15, backgroundThread, cmgOperation3, eventHandler6, text14, number16, workingValue17, backgroundThread2, backgroundThread3, cmgOperation4, number17, eventHandler7, eventHandler8, text15, cmgOperation5, stateFlag26, text16, number19, eventHandler9, text17, workingValue20, workingValue21, eventHandler10, text18, eventHandler11, stateFlag28, number20, eventHandler12, text19, eventHandler13, text20, number21, eventHandler14, text22, workingValue25)
workingValue8 = RageUI
workingValue8 = workingValue8.CreateWhile
text = 1.0
text2 = RMenu
rageUiOperation2 = text2
text2 = text2.Get
text4 = "lfb"
text5 = "main"
-- Beginner: result below is menu.
text2 = text2(rageUiOperation2, text4, text5)
rageUiOperation2 = nil

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "lfb"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local rageUiOperation, text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23, text21, text23
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Tools"
    text9 = "View and use your LFB tools"
    dataCollection9 = {}
    rageUiOperation7 = RageUI
    rageUiOperation7 = rageUiOperation7.BadgeStyle
    rageUiOperation7 = rageUiOperation7.Key
    dataCollection9.RightBadge = rageUiOperation7
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
    end
    workingValue19 = RMenu
    workingValue23 = workingValue19
    workingValue19 = workingValue19.Get
    text21 = "lfb"
    text23 = "tools"
    workingValue19, workingValue23, text21, text23 = workingValue19(workingValue23, text21, text23)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23, text21, text23)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Water"
    text9 = "Manage your hose and water supply"
    dataCollection9 = {}
    rageUiOperation7 = RageUI
    rageUiOperation7 = rageUiOperation7.BadgeStyle
    rageUiOperation7 = rageUiOperation7.Key
    dataCollection9.RightBadge = rageUiOperation7
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
    end
    workingValue19 = RMenu
    workingValue23 = workingValue19
    workingValue19 = workingValue19.Get
    text21 = "lfb"
    text23 = "water"
    workingValue19, workingValue23, text21, text23 = workingValue19(workingValue23, text21, text23)
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23, text21, text23)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "BA"
    text9 = "Manage your BA"
    dataCollection9 = {}
    rageUiOperation7 = RageUI
    rageUiOperation7 = rageUiOperation7.BadgeStyle
    rageUiOperation7 = rageUiOperation7.Key
    dataCollection9.RightBadge = rageUiOperation7
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
    end
    workingValue19 = RMenu
    workingValue23 = workingValue19
    workingValue19 = workingValue19.Get
    text21 = "lfb"
    text23 = "ba"
    workingValue19, workingValue23, text21, text23 = workingValue19(workingValue23, text21, text23)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23, text21, text23)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local rageUiOperation, text7
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "lfb"
  localValue5 = "tools"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local rageUiOperation, text7, text9, dataCollection9, rageUiOperation7, dataCollection14
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Setup Decontamination Tent"
    text9 = "Setup a decontamination tent"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = workingValue26
        stateFlag25 = true
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Remove Decontamination Tent"
    text9 = "Remove a decontamination tent"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = workingValue26
        stateFlag25 = false
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Setup Rescue Cushion"
    text9 = "Setup a rescue cushion"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = workingValue7
        stateFlag25 = true
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Remove Rescue Cushion"
    text9 = "Remove a rescue cushion"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = workingValue7
        stateFlag25 = false
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = stateFlag5
    if rageUiOperation then
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.ButtonWithStyle
      text7 = "Remove Spreaders"
      text9 = "Remove vehicle spreaders"
      dataCollection9 = {}
      dataCollection9.RightLabel = ""
      rageUiOperation7 = true

      -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
      function dataCollection14(localValue12, localValue22, localValue32)
        local localValue42
        if localValue32 then
          localValue42 = workingValue24
          localValue42()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    else
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.ButtonWithStyle
      text7 = "Use Spreaders"
      text9 = "Use vehicle spreaders"
      dataCollection9 = {}
      dataCollection9.RightLabel = ""
      rageUiOperation7 = true

      -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
      function dataCollection14(localValue12, localValue22, localValue32)
        local localValue42
        if localValue32 then
          localValue42 = workingValue24
          localValue42()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    end
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Setup Stabilisers"
    text9 = "Setup vehicle stabilisers"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = workingValue16
        stateFlag25 = true
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Remove Stabilisers"
    text9 = "Remove vehicle stabilisers"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = workingValue16
        stateFlag25 = false
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Setup extractor fan"
    text9 = "Setup an extractor fan"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = stateFlag22
        stateFlag25 = true
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Remove extractor fan"
    text9 = "Remove an extractor fan"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = stateFlag22
        stateFlag25 = false
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Setup inflatable jack"
    text9 = "Setup an inflatable jack"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = workingValue18
        stateFlag25 = true
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Remove inflatable jack"
    text9 = "Remove an inflatable jack"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = workingValue18
        stateFlag25 = false
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Setup wheel chocks"
    text9 = "Setup wheel chocks"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = text12
        stateFlag25 = true
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Remove wheel chocks"
    text9 = "Remove wheel chocks"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = text12
        stateFlag25 = false
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Collect Ladder"
    text9 = "Collect a ladder from a nearby fire engine"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = ExecuteCommand
        stateFlag25 = "ladder collect"
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Store Ladder"
    text9 = "Store a ladder in a nearby fire engine"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = ExecuteCommand
        stateFlag25 = "ladder store"
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Use a throw bag"
    text9 = "Use a throw bag"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42
      if localValue32 then
        localValue42 = false
        if localValue42 then
          localValue42 = workingValue22
          localValue42()
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local rageUiOperation, text7
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "lfb"
  localValue5 = "water"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local rageUiOperation, text7, text9, dataCollection9, rageUiOperation7, dataCollection14
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Get Fire Hose"
    text9 = "Get a fire hose"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25, number15, number18, stateFlag27, stateFlag29
      if localValue32 then
        localValue42 = GiveWeaponToPed
        stateFlag25 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        stateFlag25 = stateFlag25()
        number15 = -1554970529
        number18 = 0
        stateFlag27 = false
        stateFlag29 = true
        localValue42(stateFlag25, number15, number18, stateFlag27, stateFlag29)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Setup Supply Line"
    text9 = "Setup a supply line"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = workingValue4
        stateFlag25 = true
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Remove Supply Line"
    text9 = "Remove a supply line"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = workingValue4
        stateFlag25 = false
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Setup Water Monitor"
    text9 = "Setup a water monitor"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = workingValue
        stateFlag25 = true
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Remove Water Monitor"
    text9 = "Remove a water monitor"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = workingValue
        stateFlag25 = false
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local rageUiOperation, text7
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "lfb"
  localValue5 = "ba"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local rageUiOperation, text7, text9, dataCollection9, rageUiOperation7, dataCollection14
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Remove BA"
    text9 = "Removes your BA"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.loadCustomisationPreset
        stateFlag25 = "NoBreathingApperatus"
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "BA Down"
    text9 = "Puts your BA down"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.getModelGender
        localValue42 = localValue42()
        if "male" == localValue42 then
          localValue42 = CMG
          localValue42 = localValue42.loadCustomisationPreset
          stateFlag25 = "BreathingApperatusDown"
          localValue42(stateFlag25)
        else
          localValue42 = CMG
          localValue42 = localValue42.loadCustomisationPreset
          stateFlag25 = "BreathingApperatusDownFemale"
          localValue42(stateFlag25)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "BA Up"
    text9 = "Puts your BA up"
    dataCollection9 = {}
    dataCollection9.RightLabel = ""
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.getModelGender
        localValue42 = localValue42()
        if "male" == localValue42 then
          localValue42 = CMG
          localValue42 = localValue42.loadCustomisationPreset
          stateFlag25 = "BreathingApperatusUp"
          localValue42(stateFlag25)
        else
          localValue42 = CMG
          localValue42 = localValue42.loadCustomisationPreset
          stateFlag25 = "BreathingApperatusUpFemale"
          localValue42(stateFlag25)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local rageUiOperation, text7
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
end
workingValue8(text, text2, rageUiOperation2, text4)
workingValue8 = {}
workingValue8.fireType = 1
workingValue8.size = 1
text = {}
text2 = {}
text2.dict = "core"
text2.name = "ent_ray_meth_fires"
text2.smoke = false
text2.smokeType = "normal"
text2.chance = 30
text.normal = text2
text2 = {}
text2.dict = "scr_trevor3"
text2.name = "scr_trev3_trailer_plume"
text2.smoke = false
text2.smokeType = "normal"
text2.chance = 30
text.normal2 = text2
text2 = {}
text2.dict = "scr_michael2"
text2.name = "scr_mich3_heli_fire"
text2.smoke = false
text2.smokeType = "normal"
text2.chance = 20
text.bonfire = text2
text2 = {}
text2.dict = "core"
text2.name = "fire_petroltank_truck"
text2.smoke = false
text2.smokeType = "normal"
text2.chance = 20
text.chemical = text2
text2 = {}
text2.dict = "core"
text2.name = "fire_petroltank_truck"
text2.smoke = true
text2.smokeType = "electrical"
text2.chance = 20
text.electrical = text2
text2 = {}
rageUiOperation2 = pairs
text4 = text
rageUiOperation2, text4, text5, rageUiOperation3 = rageUiOperation2(text4)
for rageUiOperation4 in rageUiOperation2, text4, text5, rageUiOperation3 do
  rageUiOperation5 = table
  rageUiOperation5 = rageUiOperation5.insert
  text8 = text2
  number2 = rageUiOperation4
  rageUiOperation5(text8, number2)
end
rageUiOperation2 = {}
text4 = 1.0
text5 = 2.0
rageUiOperation3 = 3.0
rageUiOperation4 = 4.0
rageUiOperation5 = 5.0
text8 = 6.0
number2 = 7.0
rageUiOperation6 = 8.0
number3 = 9.0
number4 = 10.0
rageUiOperation2[1] = text4
rageUiOperation2[2] = text5
rageUiOperation2[3] = rageUiOperation3
rageUiOperation2[4] = rageUiOperation4
rageUiOperation2[5] = rageUiOperation5
rageUiOperation2[6] = text8
rageUiOperation2[7] = number2
rageUiOperation2[8] = rageUiOperation6
rageUiOperation2[9] = number3
rageUiOperation2[10] = number4
text4 = {}
text5 = 1
rageUiOperation3 = 2
rageUiOperation4 = 3
rageUiOperation5 = 4
text8 = 5
number2 = 6
rageUiOperation6 = 7
number3 = 8
number4 = 9
number6 = 10
dataCollection3 = 11
dataCollection4 = 12
dataCollection5 = 13
dataCollection6 = 14
dataCollection7 = 15
number7 = 16
eventHandler = 17
dataCollection8 = 18
text10 = 19
eventHandler2 = 20
eventHandler3 = 21
text11 = 22
stateFlag23 = 23
number8 = 24
dataCollection10 = 25
number9 = 26
stateFlag24 = 27
number10 = 28
number11 = 29
dataCollection11 = 30
text4[1] = text5
text4[2] = rageUiOperation3
text4[3] = rageUiOperation4
text4[4] = rageUiOperation5
text4[5] = text8
text4[6] = number2
text4[7] = rageUiOperation6
text4[8] = number3
text4[9] = number4
text4[10] = number6
text4[11] = dataCollection3
text4[12] = dataCollection4
text4[13] = dataCollection5
text4[14] = dataCollection6
text4[15] = dataCollection7
text4[16] = number7
text4[17] = eventHandler
text4[18] = dataCollection8
text4[19] = text10
text4[20] = eventHandler2
text4[21] = eventHandler3
text4[22] = text11
text4[23] = stateFlag23
text4[24] = number8
text4[25] = dataCollection10
text4[26] = number9
text4[27] = stateFlag24
text4[28] = number10
text4[29] = number11
text4[30] = dataCollection11
text5 = true
rageUiOperation3 = 8
rageUiOperation4 = 5.0
rageUiOperation5 = 5
text8 = 8

-- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
function number2()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = CMG
  localValue1 = localValue1.generateUUID
  localValue2 = "fire"
  localValue3 = 20
  localValue4 = "alphanumeric"
  return localValue1(localValue2, localValue3, localValue4)
end
rageUiOperation6 = RageUI
rageUiOperation6 = rageUiOperation6.CreateWhile
number3 = 1.0
number4 = RMenu
number6 = number4
number4 = number4.Get
dataCollection3 = "lfb"
dataCollection4 = "firemain"
-- Beginner: result below is menu.
number4 = number4(number6, dataCollection3, dataCollection4)
number6 = nil

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
function dataCollection3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "lfb"
  localValue5 = "firemain"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local rageUiOperation, text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23, text21, text23
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Start Fires"
    text9 = "Start Fires"
    dataCollection9 = {}
    rageUiOperation7 = RageUI
    rageUiOperation7 = rageUiOperation7.BadgeStyle
    rageUiOperation7 = rageUiOperation7.Key
    dataCollection9.RightBadge = rageUiOperation7
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
    end
    workingValue19 = RMenu
    workingValue23 = workingValue19
    workingValue19 = workingValue19.Get
    text21 = "lfb"
    text23 = "fire"
    workingValue19, workingValue23, text21, text23 = workingValue19(workingValue23, text21, text23)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23, text21, text23)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Call Settings"
    text9 = "Manage fire call settings"
    dataCollection9 = {}
    rageUiOperation7 = RageUI
    rageUiOperation7 = rageUiOperation7.BadgeStyle
    rageUiOperation7 = rageUiOperation7.Key
    dataCollection9.RightBadge = rageUiOperation7
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
    end
    workingValue19 = RMenu
    workingValue23 = workingValue19
    workingValue19 = workingValue19.Get
    text21 = "lfb"
    text23 = "settings"
    workingValue19, workingValue23, text21, text23 = workingValue19(workingValue23, text21, text23)
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23, text21, text23)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text7 = "Manage Fires"
    text9 = "Manage Fires"
    dataCollection9 = {}
    rageUiOperation7 = RageUI
    rageUiOperation7 = rageUiOperation7.BadgeStyle
    rageUiOperation7 = rageUiOperation7.Key
    dataCollection9.RightBadge = rageUiOperation7
    rageUiOperation7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection14(localValue12, localValue22, localValue32)
    end
    workingValue19 = RMenu
    workingValue23 = workingValue19
    workingValue19 = workingValue19.Get
    text21 = "lfb"
    text23 = "management"
    workingValue19, workingValue23, text21, text23 = workingValue19(workingValue23, text21, text23)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23, text21, text23)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local rageUiOperation, text7
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "lfb"
  localValue5 = "settings"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local rageUiOperation, text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text7 = "Toggle Automatic Fires"
    text9 = "Toggle automatic fire calls"
    dataCollection9 = text5
    rageUiOperation7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection14; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function dataCollection14(localValue12, localValue22, localValue32, localValue42)
      text5 = localValue42
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.List
    text7 = "Automatic Fires Size"
    text9 = rageUiOperation2
    dataCollection9 = rageUiOperation5
    rageUiOperation7 = nil
    dataCollection14 = {}
    workingValue19 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function workingValue23(localValue12, localValue22, localValue32, localValue42)
      local stateFlag25, number15
      if localValue22 then
        rageUiOperation5 = localValue42
        number15 = rageUiOperation5
        stateFlag25 = rageUiOperation2
        stateFlag25 = stateFlag25[number15]
        rageUiOperation4 = stateFlag25
      end
    end
    -- Beginner: Draw a RageUI list selector.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.List
    text7 = "Fire Cooldown (minutes)"
    text9 = text4
    dataCollection9 = text8
    rageUiOperation7 = nil
    dataCollection14 = {}
    workingValue19 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function workingValue23(localValue12, localValue22, localValue32, localValue42)
      local stateFlag25, number15
      if localValue22 then
        text8 = localValue42
        number15 = text8
        stateFlag25 = text4
        stateFlag25 = stateFlag25[number15]
        rageUiOperation3 = stateFlag25
      end
    end
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Button
    text7 = "Save Options"
    text9 = nil
    dataCollection9 = true

    -- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: localValue12, localValue22, localValue32) ===
    function rageUiOperation7(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25, number15, number18, stateFlag27
      if localValue32 then
        localValue42 = TriggerServerEvent
        stateFlag25 = "ba1852bd6b"
        number15 = text5
        number18 = rageUiOperation4
        stateFlag27 = rageUiOperation3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ba1852bd6b".
        localValue42(stateFlag25, number15, number18, stateFlag27)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local rageUiOperation, text7
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "lfb"
  localValue5 = "management"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local rageUiOperation, text7, text9, dataCollection9, rageUiOperation7
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Button
    text7 = "Stop Nearby Fires"
    text9 = nil
    dataCollection9 = true

    -- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: localValue12, localValue22, localValue32) ===
    function rageUiOperation7(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = TriggerServerEvent
        stateFlag25 = "f4afe89b21"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f4afe89b21".
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Button
    text7 = "Stop All Fires"
    text9 = nil
    dataCollection9 = true

    -- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: localValue12, localValue22, localValue32) ===
    function rageUiOperation7(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25
      if localValue32 then
        localValue42 = TriggerServerEvent
        stateFlag25 = "7fb00d47e4"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7fb00d47e4".
        localValue42(stateFlag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local rageUiOperation, text7
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "lfb"
  localValue5 = "fire"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local rageUiOperation, text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.List
    text7 = "Fire Type"
    text9 = text2
    dataCollection9 = workingValue8.fireType
    rageUiOperation7 = nil
    dataCollection14 = {}
    workingValue19 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function workingValue23(localValue12, localValue22, localValue32, localValue42)
      if localValue22 then
        workingValue8.fireType = localValue42
      end
    end
    -- Beginner: Draw a RageUI list selector.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.List
    text7 = "Fire Size"
    text9 = rageUiOperation2
    dataCollection9 = workingValue8.size
    rageUiOperation7 = nil
    dataCollection14 = {}
    workingValue19 = true

    -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function workingValue23(localValue12, localValue22, localValue32, localValue42)
      if localValue22 then
        workingValue8.size = localValue42
      end
    end
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Button
    text7 = "Start Fire"
    text9 = nil
    dataCollection9 = true

    -- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: localValue12, localValue22, localValue32) ===
    function rageUiOperation7(localValue12, localValue22, localValue32)
      local localValue42, stateFlag25, number15, number18, stateFlag27, stateFlag29, workingValue28, stateFlag, stateFlag2, stateFlag4
      if localValue32 then
        localValue42 = number2
        localValue42 = localValue42()
        stateFlag25 = CMG
        stateFlag25 = stateFlag25.getPlayerCoords
        -- Beginner: result below is playerCoords.
        stateFlag25 = stateFlag25()
        number15 = {}
        number15.coords = stateFlag25
        stateFlag27 = workingValue8.size
        number18 = rageUiOperation2
        number18 = number18[stateFlag27]
        number15.size = number18
        stateFlag27 = workingValue8.fireType
        number18 = text2
        number18 = number18[stateFlag27]
        number15.type = number18
        number15.active = false
        number18 = TriggerServerEvent
        stateFlag27 = "52c48511f6"
        stateFlag29 = localValue42
        workingValue28 = number15
        stateFlag = false
        stateFlag2 = false
        stateFlag4 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "52c48511f6".
        number18(stateFlag27, stateFlag29, workingValue28, stateFlag, stateFlag2, stateFlag4)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text7, text9, dataCollection9, rageUiOperation7)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local rageUiOperation, text7
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
end
rageUiOperation6(number3, number4, number6, dataCollection3)
rageUiOperation6 = RegisterNetEvent
number3 = "0630e1e706"
-- Beginner: this function handles network event "0630e1e706".

-- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
function number4()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "lfb"
  localValue5 = "tools"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "lfb"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "lfb"
  localValue5 = "water"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "lfb"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0630e1e706".
rageUiOperation6(number3, number4)
rageUiOperation6 = TriggerServerEvent
number3 = "bae34c691a"
-- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bae34c691a".
rageUiOperation6(number3)
rageUiOperation6 = {}
number3 = {}
number4 = {}
number6 = {}
dataCollection3 = {}
dataCollection4 = {}
dataCollection5 = {}
dataCollection6 = {}
dataCollection7 = {}

-- === HELPER FUNCTION (decompiler name: number7; parameters: localValue1) ===
function number7(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = rageUiOperation6
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.handle
  if nil ~= localValue2 then
    localValue2 = StopParticleFxLooped
    localValue3 = rageUiOperation6
    localValue3 = localValue3[localValue1]
    localValue3 = localValue3.handle
    localValue4 = false
    localValue2(localValue3, localValue4)
  end
  localValue2 = rageUiOperation6
  localValue2 = localValue2[localValue1]
  localValue3 = localValue2.type
  localValue2 = text
  localValue2 = localValue2[localValue3]
  localValue2 = localValue2.smoke
  if localValue2 then
    localValue2 = rageUiOperation6
    localValue2 = localValue2[localValue1]
    localValue2 = localValue2.smokeHandle
    if nil ~= localValue2 then
      localValue2 = StopParticleFxLooped
      localValue3 = rageUiOperation6
      localValue3 = localValue3[localValue1]
      localValue3 = localValue3.smokeHandle
      localValue4 = false
      localValue2(localValue3, localValue4)
    end
  end
  localValue2 = rageUiOperation6
  localValue2 = localValue2[localValue1]
  localValue2.active = false
end
eventHandler = RegisterNetEvent
dataCollection8 = "7a8883ddd6"
-- Beginner: this function handles network event "7a8883ddd6".

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue1 = pairs
  localValue2 = rageUiOperation6
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = localValue6.active
    if localValue7 then
      localValue7 = number7
      localValue8 = localValue5
      localValue7(localValue8)
    end
    localValue7 = rageUiOperation6
    localValue7[localValue5] = nil
  end
  localValue1 = {}
  rageUiOperation6 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7a8883ddd6".
eventHandler(dataCollection8, text10)
eventHandler = {}
dataCollection8 = {}
dataCollection8.dict = ""
dataCollection8.name = ""
eventHandler.normal = dataCollection8
dataCollection8 = {}
dataCollection8.dict = "core"
dataCollection8.name = "ent_amb_elec_crackle"
eventHandler.electrical = dataCollection8
dataCollection8 = RegisterNetEvent
text10 = "8797322ab7"
-- Beginner: this function handles network event "8797322ab7".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2, localValue3) ===
function eventHandler2(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8
  localValue4 = RageUI
  localValue4 = localValue4.CloseAll
  localValue4()
  localValue4 = RageUI
  localValue4 = localValue4.Visible
  localValue5 = RMenu
  localValue6 = localValue5
  localValue5 = localValue5.Get
  localValue7 = "lfb"
  localValue8 = "tools"
  -- Beginner: result below is menu.
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  localValue6 = false
  localValue4(localValue5, localValue6)
  localValue4 = RageUI
  localValue4 = localValue4.Visible
  localValue5 = RMenu
  localValue6 = localValue5
  localValue5 = localValue5.Get
  localValue7 = "lfb"
  localValue8 = "main"
  -- Beginner: result below is menu.
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  localValue6 = false
  localValue4(localValue5, localValue6)
  localValue4 = RageUI
  localValue4 = localValue4.Visible
  localValue5 = RMenu
  localValue6 = localValue5
  localValue5 = localValue5.Get
  localValue7 = "lfb"
  localValue8 = "water"
  -- Beginner: result below is menu.
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  localValue6 = false
  localValue4(localValue5, localValue6)
  localValue4 = RageUI
  localValue4 = localValue4.Visible
  localValue5 = RMenu
  localValue6 = localValue5
  localValue5 = localValue5.Get
  localValue7 = "lfb"
  localValue8 = "fire"
  -- Beginner: result below is menu.
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  localValue6 = false
  localValue4(localValue5, localValue6)
  localValue4 = RageUI
  localValue4 = localValue4.Visible
  localValue5 = RMenu
  localValue6 = localValue5
  localValue5 = localValue5.Get
  localValue7 = "lfb"
  localValue8 = "management"
  -- Beginner: result below is menu.
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  localValue6 = false
  localValue4(localValue5, localValue6)
  localValue4 = RageUI
  localValue4 = localValue4.Visible
  localValue5 = RMenu
  localValue6 = localValue5
  localValue5 = localValue5.Get
  localValue7 = "lfb"
  localValue8 = "settings"
  -- Beginner: result below is menu.
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  localValue6 = false
  localValue4(localValue5, localValue6)
  localValue4 = RageUI
  localValue4 = localValue4.Visible
  localValue5 = RMenu
  localValue6 = localValue5
  localValue5 = localValue5.Get
  localValue7 = "lfb"
  localValue8 = "firemain"
  -- Beginner: result below is menu.
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  localValue6 = true
  localValue4(localValue5, localValue6)
  text5 = localValue1
  rageUiOperation3 = localValue2
  rageUiOperation4 = localValue3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8797322ab7".
dataCollection8(text10, eventHandler2)
dataCollection8 = {}

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11
  localValue1 = pairs
  localValue2 = number4
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5 in localValue1, localValue2, localValue3, localValue4 do
    localValue6 = number4
    localValue6 = localValue6[localValue5]
    localValue6 = localValue6[4]
    if localValue6 then
      localValue6 = UseParticleFxAsset
      localValue7 = "core"
      localValue6(localValue7)
      localValue6 = SetParticleFxShootoutBoat
      localValue7 = 1
      localValue6(localValue7)
      localValue6 = number4
      localValue6 = localValue6[localValue5]
      localValue6 = localValue6[2]
      localValue7 = dataCollection8
      localValue8 = {}
      localValue7[localValue5] = localValue8
      localValue7 = dataCollection8
      localValue7 = localValue7[localValue5]
      localValue8 = StartParticleFxLoopedAtCoord
      localValue9 = "water_cannon_jet"
      workingValue27 = localValue6.x
      workingValue27 = workingValue27 + 0.0
      workingValue2 = localValue6.y
      workingValue2 = workingValue2 + 0.0
      workingValue5 = localValue6.z
      workingValue5 = workingValue5 + 0.7
      stateFlag3 = 50.0
      stateFlag6 = 0.0
      workingValue9 = number4
      workingValue9 = workingValue9[localValue5]
      workingValue9 = workingValue9[3]
      stateFlag7 = 1.0
      stateFlag8 = false
      stateFlag9 = false
      stateFlag10 = false
      stateFlag11 = false
      localValue8 = localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11)
      localValue7.handle = localValue8
      localValue7 = dataCollection8
      localValue7 = localValue7[localValue5]
      localValue8 = StartParticleFxLoopedAtCoord
      localValue9 = "water_cannon_spray"
      workingValue27 = localValue6.x
      workingValue27 = workingValue27 + 0.0
      workingValue2 = localValue6.y
      workingValue2 = workingValue2 + 0.0
      workingValue5 = localValue6.z
      workingValue5 = workingValue5 + 0.7
      stateFlag3 = 50.0
      stateFlag6 = 0.0
      workingValue9 = number4
      workingValue9 = workingValue9[localValue5]
      workingValue9 = workingValue9[3]
      stateFlag7 = 1.0
      stateFlag8 = false
      stateFlag9 = false
      stateFlag10 = false
      stateFlag11 = false
      localValue8 = localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11)
      localValue7.handle2 = localValue8
      localValue7 = dataCollection8
      localValue7 = localValue7[localValue5]
      localValue7.pitch = 50.0
    end
  end
end
eventHandler2 = RegisterNetEvent
eventHandler3 = "361aa1a3e6"
-- Beginner: this function handles network event "361aa1a3e6".

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9) ===
function text11(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
  local workingValue27
  rageUiOperation6 = localValue1
  number3 = localValue2
  number4 = localValue3
  number6 = localValue4
  workingValue27 = dataCollection3
  dataCollection3 = workingValue27
  dataCollection4 = localValue6
  dataCollection5 = localValue7
  dataCollection6 = localValue8
  dataCollection7 = localValue9
  workingValue27 = text10
  workingValue27()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "361aa1a3e6".
eventHandler2(eventHandler3, text11)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = rageUiOperation6
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.handle
  if nil ~= localValue2 then
    localValue2 = DoesParticleFxLoopedExist
    localValue3 = rageUiOperation6
    localValue3 = localValue3[localValue1]
    localValue3 = localValue3.handle
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = SetParticleFxLoopedScale
      localValue3 = rageUiOperation6
      localValue3 = localValue3[localValue1]
      localValue3 = localValue3.handle
      localValue4 = rageUiOperation6
      localValue4 = localValue4[localValue1]
      localValue4 = localValue4.size
      localValue2(localValue3, localValue4)
    end
  end
end
eventHandler3 = RegisterNetEvent
text11 = "1d32bc1425"
-- Beginner: this function handles network event "1d32bc1425".

-- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue1, localValue2, localValue3, localValue4) ===
function stateFlag23(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6
  if localValue3 then
    localValue5 = rageUiOperation6
    localValue5 = localValue5[localValue1]
    if nil ~= localValue5 then
      localValue5 = rageUiOperation6
      localValue5 = localValue5[localValue1]
      localValue5 = localValue5.active
      if nil ~= localValue5 then
        localValue5 = rageUiOperation6
        localValue5 = localValue5[localValue1]
        localValue5 = localValue5.active
        if localValue5 then
          localValue5 = number7
          localValue6 = localValue1
          localValue5(localValue6)
        end
      end
    end
    localValue5 = rageUiOperation6
    localValue5[localValue1] = nil
    return
  end
  if localValue4 then
    localValue5 = rageUiOperation6
    localValue5 = localValue5[localValue1]
    if nil ~= localValue5 then
      localValue5 = localValue2.size
      if nil ~= localValue5 then
        localValue5 = rageUiOperation6
        localValue5 = localValue5[localValue1]
        localValue6 = localValue2.size
        localValue5.size = localValue6
      end
    end
    localValue5 = rageUiOperation6
    localValue5 = localValue5[localValue1]
    if nil ~= localValue5 then
      localValue5 = rageUiOperation6
      localValue5 = localValue5[localValue1]
      localValue5 = localValue5.active
      if localValue5 then
        localValue5 = eventHandler2
        localValue6 = localValue1
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        localValue5(localValue6)
      end
    end
  else
    localValue5 = rageUiOperation6
    localValue5[localValue1] = localValue2
  end
end
eventHandler3(text11, stateFlag23)

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1) ===
function eventHandler3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8
  localValue2 = rageUiOperation6
  localValue2 = localValue2[localValue1]
  localValue2.active = true
  localValue2 = CMG
  localValue2 = localValue2.loadPtfx
  localValue3 = rageUiOperation6
  localValue3 = localValue3[localValue1]
  localValue4 = localValue3.type
  localValue3 = text
  localValue3 = localValue3[localValue4]
  localValue3 = localValue3.dict
  localValue2(localValue3)
  localValue2 = UseParticleFxAsset
  localValue3 = rageUiOperation6
  localValue3 = localValue3[localValue1]
  localValue4 = localValue3.type
  localValue3 = text
  localValue3 = localValue3[localValue4]
  localValue3 = localValue3.dict
  localValue2(localValue3)
  localValue2 = {}
  localValue3 = 0.0
  localValue4 = 0.0
  localValue5 = 0.0
  localValue2[1] = localValue3
  localValue2[2] = localValue4
  localValue2[3] = localValue5
  localValue3 = rageUiOperation6
  localValue3 = localValue3[localValue1]
  localValue4 = StartParticleFxLoopedAtCoord
  localValue5 = rageUiOperation6
  localValue5 = localValue5[localValue1]
  localValue6 = localValue5.type
  localValue5 = text
  localValue5 = localValue5[localValue6]
  localValue5 = localValue5.name
  localValue6 = rageUiOperation6
  localValue6 = localValue6[localValue1]
  localValue6 = localValue6.coords
  localValue6 = localValue6.x
  localValue7 = rageUiOperation6
  localValue7 = localValue7[localValue1]
  localValue7 = localValue7.coords
  localValue7 = localValue7.y
  localValue8 = rageUiOperation6
  localValue8 = localValue8[localValue1]
  localValue8 = localValue8.coords
  localValue8 = localValue8.z
  localValue9 = localValue2[1]
  workingValue27 = localValue2[2]
  workingValue2 = localValue2[3]
  workingValue5 = rageUiOperation6
  workingValue5 = workingValue5[localValue1]
  workingValue5 = workingValue5.size
  stateFlag3 = false
  stateFlag6 = false
  workingValue9 = false
  stateFlag7 = false
  localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7)
  localValue3.handle = localValue4
  localValue3 = rageUiOperation6
  localValue3 = localValue3[localValue1]
  localValue4 = localValue3.type
  localValue3 = text
  localValue3 = localValue3[localValue4]
  localValue3 = localValue3.smoke
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.loadPtfx
    localValue4 = rageUiOperation6
    localValue4 = localValue4[localValue1]
    localValue5 = localValue4.type
    localValue4 = text
    localValue4 = localValue4[localValue5]
    localValue5 = localValue4.smokeType
    localValue4 = eventHandler
    localValue4 = localValue4[localValue5]
    localValue4 = localValue4.dict
    localValue3(localValue4)
    localValue3 = UseParticleFxAsset
    localValue4 = rageUiOperation6
    localValue4 = localValue4[localValue1]
    localValue5 = localValue4.type
    localValue4 = text
    localValue4 = localValue4[localValue5]
    localValue5 = localValue4.smokeType
    localValue4 = eventHandler
    localValue4 = localValue4[localValue5]
    localValue4 = localValue4.dict
    localValue3(localValue4)
    localValue3 = rageUiOperation6
    localValue3 = localValue3[localValue1]
    localValue3 = localValue3.size
    localValue3 = localValue3 * 2
    localValue4 = rageUiOperation6
    localValue4 = localValue4[localValue1]
    localValue5 = StartParticleFxLoopedAtCoord
    localValue6 = rageUiOperation6
    localValue6 = localValue6[localValue1]
    localValue7 = localValue6.type
    localValue6 = text
    localValue6 = localValue6[localValue7]
    localValue7 = localValue6.smokeType
    localValue6 = eventHandler
    localValue6 = localValue6[localValue7]
    localValue6 = localValue6.name
    localValue7 = rageUiOperation6
    localValue7 = localValue7[localValue1]
    localValue7 = localValue7.coords
    localValue7 = localValue7.x
    localValue8 = rageUiOperation6
    localValue8 = localValue8[localValue1]
    localValue8 = localValue8.coords
    localValue8 = localValue8.y
    localValue9 = rageUiOperation6
    localValue9 = localValue9[localValue1]
    localValue9 = localValue9.coords
    localValue9 = localValue9.z
    workingValue27 = localValue2[1]
    workingValue2 = localValue2[2]
    workingValue5 = localValue2[3]
    stateFlag3 = localValue3
    stateFlag6 = false
    workingValue9 = false
    stateFlag7 = false
    stateFlag8 = false
    localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8)
    localValue4.smokeHandle = localValue5
    localValue4 = RemoveNamedPtfxAsset
    localValue5 = rageUiOperation6
    localValue5 = localValue5[localValue1]
    localValue6 = localValue5.type
    localValue5 = text
    localValue5 = localValue5[localValue6]
    localValue6 = localValue5.smokeType
    localValue5 = eventHandler
    localValue5 = localValue5[localValue6]
    localValue5 = localValue5.dict
    localValue4(localValue5)
  end
  localValue3 = RemoveNamedPtfxAsset
  localValue4 = rageUiOperation6
  localValue4 = localValue4[localValue1]
  localValue5 = localValue4.type
  localValue4 = text
  localValue4 = localValue4[localValue5]
  localValue4 = localValue4.dict
  localValue3(localValue4)
end

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = rageUiOperation6
  if nil == localValue2 then
    localValue2 = {}
    rageUiOperation6 = localValue2
  end
  localValue2 = pairs
  localValue3 = rageUiOperation6
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = localValue7.coords
    localValue8 = localValue1 - localValue8
    localValue8 = #localValue8
    localValue9 = 350.0
    if localValue8 < localValue9 then
      localValue9 = localValue7.active
      if nil ~= localValue9 then
        localValue9 = localValue7.active
        if not localValue9 then
          localValue9 = eventHandler3
          workingValue27 = localValue6
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          localValue9(workingValue27)
        end
      end
    else
      localValue9 = localValue7.active
      if localValue9 then
        localValue9 = number7
        workingValue27 = localValue6
        localValue9(workingValue27)
      end
    end
  end
end
stateFlag23 = false
number8 = 0
dataCollection10 = {}
number9 = 0
stateFlag24 = false
number10 = 12.0
number11 = 876916270
dataCollection11 = {}
eventHandler4 = {}
eventHandler4.model = 1938952078
eventHandler4.bone = ""
dataCollection12 = {}
dataCollection13 = 2.0
number12 = -18.0
number13 = -0.75
dataCollection12[1] = dataCollection13
dataCollection12[2] = number12
dataCollection12[3] = number13
eventHandler4.offSet = dataCollection12
dataCollection12 = {}
dataCollection13 = 0.0
number12 = 0.0
number13 = 180.0
dataCollection12[1] = dataCollection13
dataCollection12[2] = number12
dataCollection12[3] = number13
eventHandler4.rotation = dataCollection12
dataCollection12 = {}
dataCollection12.model = -638337599
dataCollection12.bone = ""
dataCollection13 = {}
number12 = 2.0
number13 = -18.0
number14 = -0.75
dataCollection13[1] = number12
dataCollection13[2] = number13
dataCollection13[3] = number14
dataCollection12.offSet = dataCollection13
dataCollection13 = {}
number12 = 0.0
number13 = 0.0
number14 = 180.0
dataCollection13[1] = number12
dataCollection13[2] = number13
dataCollection13[3] = number14
dataCollection12.rotation = dataCollection13
dataCollection13 = {}
dataCollection13.model = 725442643
dataCollection13.bone = ""
number12 = {}
number13 = 2.0
number14 = -18.0
eventHandler5 = -0.75
number12[1] = number13
number12[2] = number14
number12[3] = eventHandler5
dataCollection13.offSet = number12
number12 = {}
number13 = 0.0
number14 = 0.0
eventHandler5 = 180.0
number12[1] = number13
number12[2] = number14
number12[3] = eventHandler5
dataCollection13.rotation = number12
dataCollection11[1] = eventHandler4
dataCollection11[2] = dataCollection12
dataCollection11[3] = dataCollection13
eventHandler4 = RegisterNetEvent
dataCollection12 = "37a8aa00f8"
-- Beginner: this function handles network event "37a8aa00f8".

-- === HELPER FUNCTION (decompiler name: dataCollection13; parameters: localValue1, localValue2, localValue3) ===
function dataCollection13(localValue1, localValue2, localValue3)
  local localValue4
  if localValue3 then
    localValue4 = number3
    localValue4[localValue1] = nil
    return
  end
  localValue4 = number3
  localValue4[localValue1] = localValue2
  localValue4 = dataCollection10
  localValue4 = localValue4[localValue1]
  if nil ~= localValue4 then
    localValue4 = dataCollection10
    localValue4[localValue1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "37a8aa00f8".
eventHandler4(dataCollection12, dataCollection13)

-- === HELPER FUNCTION (decompiler name: eventHandler4; parameters: none) ===
function eventHandler4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = GetOffsetFromEntityInWorldCoords
  localValue4 = localValue1
  localValue5 = 0.0
  localValue6 = 10.0
  localValue7 = 0.0
  localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue4 = StartShapeTestCapsule
  localValue5 = localValue2.x
  localValue6 = localValue2.y
  localValue7 = localValue2.z
  localValue8 = localValue3.x
  localValue9 = localValue3.y
  workingValue27 = localValue3.z
  workingValue2 = 10.0
  workingValue5 = 2
  stateFlag3 = localValue1
  stateFlag6 = 0
  localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6)
  localValue5 = GetShapeTestResult
  localValue6 = localValue4
  localValue5, localValue6, localValue7, localValue8, localValue9 = localValue5(localValue6)
  return localValue9
end

-- === HELPER FUNCTION (decompiler name: dataCollection12; parameters: localValue1) ===
function dataCollection12(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  if 0 ~= localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.notify
    localValue3 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
    return
  end
  localValue2 = eventHandler4
  localValue2 = localValue2()
  if 0 ~= localValue2 and nil ~= localValue2 then
    localValue3 = NetworkGetNetworkIdFromEntity
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    localValue4 = false
    localValue5 = pairs
    localValue6 = number3
    localValue5, localValue6, localValue7, localValue8 = localValue5(localValue6)
    for localValue9, workingValue27 in localValue5, localValue6, localValue7, localValue8 do
      workingValue2 = workingValue27[1]
      if workingValue2 == localValue3 then
        localValue4 = true
      end
    end
    if localValue1 then
      if localValue4 then
        localValue5 = tCMG
        localValue5 = localValue5.notify
        localValue6 = "~r~Error~w~: A supply line is already setup on this vehicle"
        localValue5(localValue6)
      else
        localValue5 = GetEntityModel
        localValue6 = localValue2
        -- Beginner: result below is modelHash.
        localValue5 = localValue5(localValue6)
        localValue6 = 0
        localValue7 = false
        localValue8 = pairs
        localValue9 = dataCollection11
        localValue8, localValue9, workingValue27, workingValue2 = localValue8(localValue9)
        for workingValue5, stateFlag3 in localValue8, localValue9, workingValue27, workingValue2 do
          stateFlag6 = stateFlag3.model
          if stateFlag6 == localValue5 then
            localValue6 = workingValue5
            localValue7 = true
            break
          end
        end
        if localValue7 then
          localValue8 = FreezeEntityPosition
          localValue9 = localValue2
          workingValue27 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          localValue8(localValue9, workingValue27)
          localValue8 = CMG
          localValue8 = localValue8.loadModel
          localValue9 = number11
          -- Beginner: Request/load a GTA model before spawning or applying it.
          localValue8(localValue9)
          localValue8 = GetEntityCoords
          localValue9 = localValue2
          -- Beginner: result below is entityCoords.
          localValue8 = localValue8(localValue9)
          localValue9 = CMG
          localValue9 = localValue9.requestEntitySpawn
          workingValue27 = "lfb_prop"
          workingValue2 = "supply"
          workingValue5 = localValue8
          localValue9(workingValue27, workingValue2, workingValue5)
          localValue9 = CreateObject
          workingValue27 = number11
          workingValue2 = localValue8.x
          workingValue5 = localValue8.y
          stateFlag3 = localValue8.z
          stateFlag6 = true
          workingValue9 = true
          stateFlag7 = true
          -- Beginner: result below is objectEntity.
          localValue9 = localValue9(workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7)
          while true do
            workingValue27 = DoesEntityExist
            workingValue2 = localValue9
            workingValue27 = workingValue27(workingValue2)
            if workingValue27 then
              break
            end
            workingValue27 = Wait
            workingValue2 = 0
            workingValue27(workingValue2)
          end
          workingValue27 = TriggerServerEvent
          workingValue2 = "3a7f6a2bdf"
          workingValue5 = "Supply Line"
          stateFlag3 = GetEntityCoords
          stateFlag6 = localValue9
          workingValue9 = true
          stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18 = stateFlag3(stateFlag6, workingValue9)
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
          workingValue27(workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18)
          workingValue27 = GetEntityBoneIndexByName
          workingValue2 = localValue2
          workingValue5 = dataCollection11
          workingValue5 = workingValue5[localValue6]
          workingValue5 = workingValue5.bone
          workingValue27 = workingValue27(workingValue2, workingValue5)
          workingValue2 = FreezeEntityPosition
          workingValue5 = localValue9
          stateFlag3 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          workingValue2(workingValue5, stateFlag3)
          workingValue2 = AttachEntityToEntity
          workingValue5 = localValue9
          stateFlag3 = localValue2
          stateFlag6 = workingValue27
          workingValue9 = dataCollection11
          workingValue9 = workingValue9[localValue6]
          workingValue9 = workingValue9.offSet
          workingValue9 = workingValue9[1]
          stateFlag7 = dataCollection11
          stateFlag7 = stateFlag7[localValue6]
          stateFlag7 = stateFlag7.offSet
          stateFlag7 = stateFlag7[2]
          stateFlag8 = dataCollection11
          stateFlag8 = stateFlag8[localValue6]
          stateFlag8 = stateFlag8.offSet
          stateFlag8 = stateFlag8[3]
          stateFlag9 = dataCollection11
          stateFlag9 = stateFlag9[localValue6]
          stateFlag9 = stateFlag9.rotation
          stateFlag9 = stateFlag9[1]
          stateFlag10 = dataCollection11
          stateFlag10 = stateFlag10[localValue6]
          stateFlag10 = stateFlag10.rotation
          stateFlag10 = stateFlag10[2]
          stateFlag11 = dataCollection11
          stateFlag11 = stateFlag11[localValue6]
          stateFlag11 = stateFlag11.rotation
          stateFlag11 = stateFlag11[3]
          stateFlag12 = true
          stateFlag13 = false
          stateFlag14 = true
          stateFlag16 = false
          stateFlag17 = 1
          stateFlag18 = true
          -- Beginner: Attach one entity to another entity.
          workingValue2(workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18)
          workingValue2 = Wait
          workingValue5 = 1000
          workingValue2(workingValue5)
          workingValue2 = NetworkGetNetworkIdFromEntity
          workingValue5 = localValue9
          workingValue2 = workingValue2(workingValue5)
          workingValue5 = number3
          stateFlag3 = {}
          stateFlag6 = localValue3
          workingValue9 = workingValue2
          stateFlag7 = localValue8
          stateFlag3[1] = stateFlag6
          stateFlag3[2] = workingValue9
          stateFlag3[3] = stateFlag7
          workingValue5[localValue3] = stateFlag3
          workingValue5 = TriggerServerEvent
          stateFlag3 = "37a8aa00f8"
          stateFlag6 = localValue3
          workingValue9 = number3
          workingValue9 = workingValue9[localValue3]
          stateFlag7 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "37a8aa00f8".
          workingValue5(stateFlag3, stateFlag6, workingValue9, stateFlag7)
          workingValue5 = SetModelAsNoLongerNeeded
          stateFlag3 = number11
          workingValue5(stateFlag3)
          workingValue5 = tCMG
          workingValue5 = workingValue5.notify
          stateFlag3 = "~g~Success~w~: Supply line setup"
          -- Beginner: Show a notification to the player.
          workingValue5(stateFlag3)
        else
          localValue8 = tCMG
          localValue8 = localValue8.notify
          localValue9 = "~r~Error~w~: You cannot setup a supply line on this vehicle"
          localValue8(localValue9)
        end
      end
    elseif localValue4 then
      localValue5 = TriggerServerEvent
      localValue6 = "37a8aa00f8"
      localValue7 = localValue3
      localValue8 = number3
      localValue8 = localValue8[localValue3]
      localValue9 = true
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "37a8aa00f8".
      localValue5(localValue6, localValue7, localValue8, localValue9)
      localValue5 = TriggerServerEvent
      localValue6 = "6ebeca9722"
      localValue7 = number3
      localValue7 = localValue7[localValue3]
      localValue7 = localValue7[2]
      localValue5(localValue6, localValue7)
      localValue5 = TriggerServerEvent
      localValue6 = "9efbf4fd13"
      localValue7 = localValue3
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9efbf4fd13".
      localValue5(localValue6, localValue7)
      localValue5 = number3
      localValue5[localValue3] = nil
      localValue5 = tCMG
      localValue5 = localValue5.notify
      localValue6 = "~g~Success~w~: Supply line removed"
      -- Beginner: Show a notification to the player.
      localValue5(localValue6)
    else
      localValue5 = tCMG
      localValue5 = localValue5.notify
      localValue6 = "~g~Success~w~: No supply line found"
      localValue5(localValue6)
    end
  else
    localValue3 = tCMG
    localValue3 = localValue3.notify
    localValue4 = "~r~Error~w~: No vehicle found"
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
  end
end
workingValue4 = dataCollection12
dataCollection12 = 200
dataCollection13 = {}
number12 = -1554970529
number13 = false

-- === HELPER FUNCTION (decompiler name: number14; parameters: localValue1) ===
function number14(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8
  localValue2 = CMG
  localValue2 = localValue2.getObjectId
  localValue3 = dataCollection13
  localValue3 = localValue3[localValue1]
  localValue3 = localValue3[1]
  localValue4 = "hoseParticle"
  localValue2 = localValue2(localValue3, localValue4)
  if not localValue2 then
    return
  end
  localValue3 = GetEntityCoords
  localValue4 = localValue2
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4)
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue4 = localValue4()
  localValue4 = localValue4 - localValue3
  localValue4 = #localValue4
  if localValue4 < 100.0 then
    localValue4 = GetSelectedPedWeapon
    localValue5 = localValue2
    -- Beginner: result below is weaponHash.
    localValue4 = localValue4(localValue5)
    localValue5 = number12
    if localValue4 == localValue5 then
      localValue4 = CMG
      localValue4 = localValue4.loadPtfx
      localValue5 = "core"
      localValue4(localValue5)
      localValue4 = UseParticleFxAsset
      localValue5 = "core"
      localValue4(localValue5)
      localValue4 = dataCollection13
      localValue4 = localValue4[localValue1]
      localValue5 = StartParticleFxLoopedOnEntity
      localValue6 = "water_cannon_jet"
      localValue7 = localValue2
      localValue8 = 0.2
      localValue9 = 0.15
      workingValue27 = 0.0
      workingValue2 = 0.1
      workingValue5 = 0.0
      stateFlag3 = 0.0
      stateFlag6 = 0.7
      workingValue9 = false
      stateFlag7 = false
      stateFlag8 = false
      localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8)
      localValue4[4] = localValue5
      localValue4 = UseParticleFxAsset
      localValue5 = "core"
      localValue4(localValue5)
      localValue4 = dataCollection13
      localValue4 = localValue4[localValue1]
      localValue5 = StartParticleFxLoopedOnEntity
      localValue6 = "water_cannon_spray"
      localValue7 = localValue2
      localValue8 = 0.2
      localValue9 = dataCollection13
      localValue9 = localValue9[localValue1]
      localValue9 = localValue9[2]
      localValue9 = localValue9 * 0.4
      localValue9 = 9.0 + localValue9
      workingValue27 = 0
      workingValue2 = 0.1
      workingValue5 = 0.0
      stateFlag3 = 0.0
      stateFlag6 = 0.9
      workingValue9 = false
      stateFlag7 = false
      stateFlag8 = false
      localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8)
      localValue4[5] = localValue5
      localValue4 = UseParticleFxAsset
      localValue5 = "core"
      localValue4(localValue5)
      localValue4 = dataCollection13
      localValue4 = localValue4[localValue1]
      localValue5 = StartParticleFxLoopedOnEntity
      localValue6 = "water_cannon_spray"
      localValue7 = localValue2
      localValue8 = 0.2
      localValue9 = dataCollection13
      localValue9 = localValue9[localValue1]
      localValue9 = localValue9[2]
      localValue9 = localValue9 * 0.4
      localValue9 = 9.0 + localValue9
      workingValue27 = 0
      workingValue2 = 0.1
      workingValue5 = 0.0
      stateFlag3 = 0.0
      stateFlag6 = 0.001
      workingValue9 = false
      stateFlag7 = false
      stateFlag8 = false
      localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8)
      localValue4[6] = localValue5
      localValue4 = RemoveNamedPtfxAsset
      localValue5 = "core"
      localValue4(localValue5)
    end
  end
end
eventHandler5 = RegisterNetEvent
text13 = "f9185a186f"
-- Beginner: this function handles network event "f9185a186f".

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1, localValue2, localValue3) ===
function workingValue15(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2
  if localValue3 then
    localValue4 = dataCollection13
    localValue4 = localValue4[localValue1]
    if nil ~= localValue4 then
      localValue4 = dataCollection13
      localValue4 = localValue4[localValue1]
      localValue4[3] = false
      localValue4 = dataCollection13
      localValue4 = localValue4[localValue1]
      localValue4 = localValue4[4]
      if nil ~= localValue4 then
        localValue4 = StopParticleFxLooped
        localValue5 = dataCollection13
        localValue5 = localValue5[localValue1]
        localValue5 = localValue5[4]
        localValue6 = false
        localValue4(localValue5, localValue6)
      end
      localValue4 = dataCollection13
      localValue4 = localValue4[localValue1]
      localValue4 = localValue4[5]
      if nil ~= localValue4 then
        localValue4 = StopParticleFxLooped
        localValue5 = dataCollection13
        localValue5 = localValue5[localValue1]
        localValue5 = localValue5[5]
        localValue6 = false
        localValue4(localValue5, localValue6)
      end
      localValue4 = dataCollection13
      localValue4 = localValue4[localValue1]
      localValue4 = localValue4[6]
      if nil ~= localValue4 then
        localValue4 = StopParticleFxLooped
        localValue5 = dataCollection13
        localValue5 = localValue5[localValue1]
        localValue5 = localValue5[6]
        localValue6 = false
        localValue4(localValue5, localValue6)
      end
      localValue4 = dataCollection13
      localValue4[localValue1] = nil
    end
  else
    localValue4 = dataCollection13
    localValue5 = {}
    localValue6 = localValue1
    localValue7 = localValue2
    localValue8 = true
    localValue9 = 0
    workingValue27 = 0
    workingValue2 = 0
    localValue5[1] = localValue6
    localValue5[2] = localValue7
    localValue5[3] = localValue8
    localValue5[4] = localValue9
    localValue5[5] = workingValue27
    localValue5[6] = workingValue2
    localValue4[localValue1] = localValue5
    localValue4 = number14
    localValue5 = localValue1
    localValue4(localValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9185a186f".
eventHandler5(text13, workingValue15)
eventHandler5 = 30.0

-- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
function text13()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = pairs
  localValue3 = rageUiOperation6
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = localValue7.active
    if localValue8 then
      localValue8 = localValue7.coords
      localValue8 = localValue1 - localValue8
      localValue8 = #localValue8
      localValue9 = eventHandler5
      if localValue8 < localValue9 then
        localValue8 = GetOffsetFromEntityInWorldCoords
        localValue9 = CMG
        localValue9 = localValue9.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue9 = localValue9()
        workingValue27 = 0.0
        workingValue2 = 3.0
        workingValue5 = 0.5
        localValue8 = localValue8(localValue9, workingValue27, workingValue2, workingValue5)
        localValue9 = localValue7.coords
        localValue9 = localValue8 - localValue9
        localValue9 = #localValue9
        if localValue9 < 7.0 then
          localValue9 = math
          localValue9 = localValue9.random
          workingValue27 = 1
          workingValue5 = localValue7.type
          workingValue2 = text
          workingValue2 = workingValue2[workingValue5]
          workingValue2 = workingValue2.chance
          localValue9 = localValue9(workingValue27, workingValue2)
          if 1 == localValue9 then
            workingValue27 = localValue7.size
            workingValue27 = workingValue27 * 0.92
            workingValue2 = 0.5
            if workingValue27 < workingValue2 then
              workingValue2 = TriggerServerEvent
              workingValue5 = "52c48511f6"
              stateFlag3 = localValue6
              stateFlag6 = rageUiOperation6
              stateFlag6 = stateFlag6[localValue6]
              workingValue9 = true
              stateFlag7 = false
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "52c48511f6".
              workingValue2(workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7)
              workingValue2 = Wait
              workingValue5 = 5000
              workingValue2(workingValue5)
              break
            end
            workingValue2 = rageUiOperation6
            workingValue2 = workingValue2[localValue6]
            workingValue2.size = workingValue27
            workingValue2 = TriggerServerEvent
            workingValue5 = "52c48511f6"
            stateFlag3 = localValue6
            stateFlag6 = rageUiOperation6
            stateFlag6 = stateFlag6[localValue6]
            workingValue9 = false
            stateFlag7 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "52c48511f6".
            workingValue2(workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7)
            workingValue2 = Wait
            workingValue5 = 5000
            workingValue2(workingValue5)
            break
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.getNetId
  localValue3 = localValue1
  localValue4 = "handleHose()"
  localValue2 = localValue2(localValue3, localValue4)
  localValue3 = TriggerServerEvent
  localValue4 = "9ebdb3b947"
  localValue5 = localValue2
  localValue6 = 0.0
  localValue7 = false
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9ebdb3b947".
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = true
  number13 = localValue3
  while true do
    localValue3 = number13
    if not localValue3 then
      break
    end
    localValue3 = DisableControlAction
    localValue4 = 0
    localValue5 = 24
    localValue6 = true
    localValue3(localValue4, localValue5, localValue6)
    localValue3 = DecorSetFloat
    localValue4 = localValue1
    localValue5 = "135893ed9f"
    localValue6 = GetGameplayCamRelativePitch
    localValue6, localValue7 = localValue6()
    localValue3(localValue4, localValue5, localValue6, localValue7)
    localValue3 = DisablePlayerFiring
    localValue4 = CMG
    localValue4 = localValue4.getPlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue4 = localValue4()
    localValue5 = true
    localValue3(localValue4, localValue5)
    localValue3 = text13
    localValue3()
    localValue3 = IsDisabledControlPressed
    localValue4 = 0
    localValue5 = 24
    localValue3 = localValue3(localValue4, localValue5)
    if localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      localValue3 = localValue3()
      if 0 == localValue3 then
        localValue3 = IsPauseMenuActive
        localValue3 = localValue3()
        if not localValue3 then
          localValue3 = GetSelectedPedWeapon
          localValue4 = localValue1
          -- Beginner: result below is weaponHash.
          localValue3 = localValue3(localValue4)
          localValue4 = number12
          if localValue3 == localValue4 then
            localValue3 = IsPlayerFreeAiming
            localValue4 = CMG
            localValue4 = localValue4.getPlayerId
            localValue4, localValue5, localValue6, localValue7 = localValue4()
            localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7)
            if localValue3 then
              localValue3 = stateFlag23
              if localValue3 then
                goto continueAtStep81
              end
              localValue3 = number9
              if not (localValue3 < 1) then
                goto continueAtStep81
              end
            end
          end
        end
      end
    end
    localValue3 = false
    number13 = localValue3
    localValue3 = TriggerServerEvent
    localValue4 = "9ebdb3b947"
    localValue5 = localValue2
    localValue6 = 0.0
    localValue7 = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9ebdb3b947".
    localValue3(localValue4, localValue5, localValue6, localValue7)
    ::continueAtStep81::
    localValue3 = Wait
    localValue4 = 0
    localValue3(localValue4)
  end
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = DecorRegister
  localValue2 = "135893ed9f"
  localValue3 = 1
  localValue1(localValue2, localValue3)
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = CMG
    localValue2 = localValue2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue2 = localValue2()
    localValue3 = CMG
    localValue3 = localValue3.hasClientPermission
    localValue4 = "lfb.onduty.permission"
    localValue3 = localValue3(localValue4)
    if localValue3 and 0 == localValue2 then
      localValue3 = GetSelectedPedWeapon
      localValue4 = localValue1
      -- Beginner: result below is weaponHash.
      localValue3 = localValue3(localValue4)
      localValue4 = number12
      if localValue3 == localValue4 then
        localValue4 = IsPlayerFreeAiming
        localValue5 = CMG
        localValue5 = localValue5.getPlayerId
        localValue5, localValue6, localValue7 = localValue5()
        localValue4 = localValue4(localValue5, localValue6, localValue7)
        if localValue4 then
          localValue4 = true
          stateFlag24 = localValue4
          localValue4 = DisableControlAction
          localValue5 = 0
          localValue6 = 24
          localValue7 = true
          localValue4(localValue5, localValue6, localValue7)
          localValue4 = IsDisabledControlPressed
          localValue5 = 0
          localValue6 = 24
          localValue4 = localValue4(localValue5, localValue6)
          if localValue4 then
            localValue4 = number9
            if not (localValue4 > 0) then
              localValue4 = stateFlag23
              if not localValue4 then
                goto continueAtStep54
              end
            end
            localValue4 = workingValue15
            localValue4()
            goto continueAtStep58
            ::continueAtStep54::
            localValue4 = tCMG
            localValue4 = localValue4.notify
            localValue5 = "~r~Notice~w~: You have no active supply of water"
            -- Beginner: Show a notification to the player.
            localValue4(localValue5)
          end
        end
      end
    end
    ::continueAtStep58::
    localValue3 = Wait
    localValue4 = 0
    localValue3(localValue4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(cmgOperation3)
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2
  while true do
    localValue1 = text11
    localValue1()
    localValue1 = Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(cmgOperation3)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9
  localValue1 = pairs
  localValue2 = dataCollection13
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = localValue6[3]
    if localValue7 then
      localValue7 = DecorGetFloat
      localValue8 = CMG
      localValue8 = localValue8.getObjectId
      localValue9 = localValue6[1]
      workingValue27 = "onTickHosePitch"
      localValue8 = localValue8(localValue9, workingValue27)
      if not localValue8 then
        localValue8 = 0
      end
      localValue9 = "135893ed9f"
      localValue7 = localValue7(localValue8, localValue9)
      localValue8 = localValue6[4]
      if nil ~= localValue8 then
        localValue8 = SetParticleFxLoopedOffsets
        localValue9 = localValue6[4]
        workingValue27 = 0.26
        workingValue2 = 0.2
        workingValue5 = 0.13
        stateFlag3 = localValue7
        stateFlag6 = 0.0
        workingValue9 = 0.0
        localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9)
        localValue8 = SetParticleFxLoopedOffsets
        localValue9 = localValue6[5]
        workingValue27 = 0.2
        workingValue2 = localValue7 * 0.4
        workingValue2 = 9.5 + workingValue2
        workingValue5 = -0.6
        stateFlag3 = localValue7
        stateFlag6 = 0.0
        workingValue9 = 0.8
        localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9)
        localValue8 = SetParticleFxLoopedOffsets
        localValue9 = localValue6[6]
        workingValue27 = 0.2
        workingValue2 = localValue7 * 0.4
        workingValue2 = 5.0 + workingValue2
        workingValue5 = localValue7 - 23.0
        stateFlag3 = localValue7
        stateFlag6 = 0.0
        workingValue9 = 0.0
        localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9)
      end
    end
  end
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
eventHandler6 = backgroundThread
text14 = "LFB Hose Pitch"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(eventHandler6, text14)
cmgOperation3 = RegisterNetEvent
eventHandler6 = "119add1130"
-- Beginner: this function handles network event "119add1130".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1, localValue2, localValue3) ===
function text14(localValue1, localValue2, localValue3)
  local localValue4
  if localValue3 then
    localValue4 = number4
    localValue4[localValue1] = nil
    return
  end
  localValue4 = number4
  localValue4[localValue1] = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "119add1130".
cmgOperation3(eventHandler6, text14)
cmgOperation3 = RegisterNetEvent
eventHandler6 = "98484239a1"
-- Beginner: this function handles network event "98484239a1".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1) ===
function text14(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7
  localValue2 = number4
  localValue2 = localValue2[localValue1]
  if nil ~= localValue2 then
    localValue2 = number4
    localValue2 = localValue2[localValue1]
    localValue3 = number4
    localValue3 = localValue3[localValue1]
    localValue3 = localValue3[4]
    localValue3 = not localValue3
    localValue2[4] = localValue3
  end
  localValue2 = dataCollection8
  localValue2 = localValue2[localValue1]
  if nil ~= localValue2 then
    localValue2 = dataCollection8
    localValue2 = localValue2[localValue1]
    localValue2 = localValue2.handle
    if nil ~= localValue2 then
      localValue2 = DoesParticleFxLoopedExist
      localValue3 = dataCollection8
      localValue3 = localValue3[localValue1]
      localValue3 = localValue3.handle
      localValue2 = localValue2(localValue3)
      if localValue2 then
        localValue2 = StopParticleFxLooped
        localValue3 = dataCollection8
        localValue3 = localValue3[localValue1]
        localValue3 = localValue3.handle
        localValue4 = false
        localValue2(localValue3, localValue4)
        localValue2 = StopParticleFxLooped
        localValue3 = dataCollection8
        localValue3 = localValue3[localValue1]
        localValue3 = localValue3.handle2
        localValue4 = false
        localValue2(localValue3, localValue4)
        localValue2 = dataCollection8
        localValue2[localValue1] = nil
      end
    end
  end
  localValue2 = number4
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2[4]
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.loadPtfx
    localValue3 = "core"
    localValue2(localValue3)
    localValue2 = UseParticleFxAsset
    localValue3 = "core"
    localValue2(localValue3)
    localValue2 = SetParticleFxShootoutBoat
    localValue3 = 1
    localValue2(localValue3)
    localValue2 = number4
    localValue2 = localValue2[localValue1]
    localValue2 = localValue2[2]
    localValue3 = dataCollection8
    localValue4 = {}
    localValue3[localValue1] = localValue4
    localValue3 = dataCollection8
    localValue3 = localValue3[localValue1]
    localValue3.pitch = 50.0
    localValue3 = dataCollection8
    localValue3 = localValue3[localValue1]
    localValue4 = StartParticleFxLoopedAtCoord
    localValue5 = "water_cannon_jet"
    localValue6 = localValue2.x
    localValue7 = localValue2.y
    localValue8 = localValue2.z
    localValue9 = 50.0
    workingValue27 = 0.0
    workingValue2 = number4
    workingValue2 = workingValue2[localValue1]
    workingValue2 = workingValue2[3]
    workingValue5 = 1.0
    stateFlag3 = false
    stateFlag6 = false
    workingValue9 = false
    stateFlag7 = false
    localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7)
    localValue3.handle = localValue4
    localValue3 = dataCollection8
    localValue3 = localValue3[localValue1]
    localValue4 = StartParticleFxLoopedAtCoord
    localValue5 = "water_cannon_spray"
    localValue6 = localValue2.x
    localValue7 = localValue2.y
    localValue8 = localValue2.z
    localValue9 = 50.0
    workingValue27 = 0.0
    workingValue2 = number4
    workingValue2 = workingValue2[localValue1]
    workingValue2 = workingValue2[3]
    workingValue5 = 1.0
    stateFlag3 = false
    stateFlag6 = false
    workingValue9 = false
    stateFlag7 = false
    localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7)
    localValue3.handle2 = localValue4
    localValue3 = RemoveNamedPtfxAsset
    localValue4 = "core"
    localValue3(localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "98484239a1".
cmgOperation3(eventHandler6, text14)
cmgOperation3 = 2087526838

-- === HELPER FUNCTION (decompiler name: eventHandler6; parameters: localValue1) ===
function eventHandler6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = CMG
  localValue3 = localValue3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3()
  if 0 ~= localValue3 then
    localValue4 = tCMG
    localValue4 = localValue4.notify
    localValue5 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue4 = localValue4()
  if localValue1 then
    localValue5 = CMG
    localValue5 = localValue5.loadModel
    localValue6 = cmgOperation3
    -- Beginner: Request/load a GTA model before spawning or applying it.
    localValue5(localValue6)
    localValue5 = GetOffsetFromEntityInWorldCoords
    localValue6 = localValue2
    localValue7 = 0.0
    localValue8 = 1.5
    localValue9 = 0.0
    localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9)
    localValue6 = CMG
    localValue6 = localValue6.requestEntitySpawn
    localValue7 = "lfb_prop"
    localValue8 = "monitor"
    localValue9 = localValue5
    localValue6(localValue7, localValue8, localValue9)
    localValue6 = CreateObject
    localValue7 = cmgOperation3
    localValue8 = localValue5.x
    localValue9 = localValue5.y
    workingValue27 = localValue5.z
    workingValue2 = true
    workingValue5 = true
    stateFlag3 = true
    -- Beginner: result below is objectEntity.
    localValue6 = localValue6(localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3)
    while true do
      localValue7 = DoesEntityExist
      localValue8 = localValue6
      localValue7 = localValue7(localValue8)
      if localValue7 then
        break
      end
      localValue7 = Wait
      localValue8 = 0
      localValue7(localValue8)
    end
    localValue7 = TriggerServerEvent
    localValue8 = "3a7f6a2bdf"
    localValue9 = "Water Monitor"
    workingValue27 = GetEntityCoords
    workingValue2 = localValue6
    workingValue5 = true
    workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6 = workingValue27(workingValue2, workingValue5)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
    localValue7(localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6)
    localValue7 = SetEntityCollision
    localValue8 = localValue6
    localValue9 = false
    workingValue27 = true
    localValue7(localValue8, localValue9, workingValue27)
    localValue7 = NetworkGetNetworkIdFromEntity
    localValue8 = localValue6
    localValue7 = localValue7(localValue8)
    localValue8 = PlaceObjectOnGroundProperly
    localValue9 = localValue6
    localValue8(localValue9)
    localValue8 = FreezeEntityPosition
    localValue9 = localValue6
    workingValue27 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue8(localValue9, workingValue27)
    localValue8 = SetEntityHeading
    localValue9 = localValue6
    workingValue27 = GetEntityHeading
    workingValue2 = localValue2
    workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6 = workingValue27(workingValue2)
    -- Beginner: Change the direction an entity is facing.
    localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6)
    localValue8 = GetOffsetFromEntityInWorldCoords
    localValue9 = localValue6
    workingValue27 = 0.1
    workingValue2 = 0.22
    workingValue5 = 0.7
    localValue8 = localValue8(localValue9, workingValue27, workingValue2, workingValue5)
    localValue5 = localValue8
    localValue8 = number4
    localValue9 = {}
    workingValue27 = localValue7
    workingValue2 = localValue5
    workingValue5 = GetEntityHeading
    stateFlag3 = localValue6
    -- Beginner: result below is heading.
    workingValue5 = workingValue5(stateFlag3)
    stateFlag3 = false
    stateFlag6 = false
    localValue9[1] = workingValue27
    localValue9[2] = workingValue2
    localValue9[3] = workingValue5
    localValue9[4] = stateFlag3
    localValue9[5] = stateFlag6
    localValue8[localValue7] = localValue9
    localValue8 = TriggerServerEvent
    localValue9 = "119add1130"
    workingValue27 = localValue7
    workingValue2 = number4
    workingValue2 = workingValue2[localValue7]
    workingValue5 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "119add1130".
    localValue8(localValue9, workingValue27, workingValue2, workingValue5)
    localValue8 = SetModelAsNoLongerNeeded
    localValue9 = cmgOperation3
    localValue8(localValue9)
    localValue8 = tCMG
    localValue8 = localValue8.notify
    localValue9 = "~g~Success~w~: Water monitor setup"
    -- Beginner: Show a notification to the player.
    localValue8(localValue9)
  else
    localValue5 = false
    localValue6 = 0
    localValue7 = pairs
    localValue8 = number4
    localValue7, localValue8, localValue9, workingValue27 = localValue7(localValue8)
    for workingValue2, workingValue5 in localValue7, localValue8, localValue9, workingValue27 do
      stateFlag3 = workingValue5[2]
      stateFlag3 = localValue4 - stateFlag3
      stateFlag3 = #stateFlag3
      if stateFlag3 < 15.0 then
        localValue6 = workingValue2
        localValue5 = true
        break
      end
    end
    if localValue5 then
      localValue7 = number4
      localValue7 = localValue7[localValue6]
      localValue7 = localValue7[4]
      if localValue7 then
        localValue7 = tCMG
        localValue7 = localValue7.notify
        localValue8 = "~r~Error~w~: This monitor is active and cannot be removed"
        localValue7(localValue8)
      else
        localValue7 = CMG
        localValue7 = localValue7.getObjectId
        localValue8 = number4
        localValue8 = localValue8[localValue6]
        localValue8 = localValue8[1]
        localValue9 = "handleWaterMonitor"
        localValue7 = localValue7(localValue8, localValue9)
        localValue8 = TriggerServerEvent
        localValue9 = "119add1130"
        workingValue27 = localValue6
        workingValue2 = number4
        workingValue2 = workingValue2[localValue6]
        workingValue5 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "119add1130".
        localValue8(localValue9, workingValue27, workingValue2, workingValue5)
        if localValue7 then
          localValue8 = DoesEntityExist
          localValue9 = localValue7
          localValue8 = localValue8(localValue9)
          if localValue8 then
            localValue8 = DeleteEntity
            localValue9 = localValue7
            -- Beginner: Delete a GTA entity.
            localValue8(localValue9)
          end
        end
        localValue8 = number4
        localValue8[localValue6] = nil
        localValue8 = tCMG
        localValue8 = localValue8.notify
        localValue9 = "~g~Success~w~: Water monitor removed"
        -- Beginner: Show a notification to the player.
        localValue8(localValue9)
      end
    else
      localValue7 = tCMG
      localValue7 = localValue7.notify
      localValue8 = "~r~Error~w~: No water monitor found"
      localValue7(localValue8)
    end
  end
end
workingValue = eventHandler6
eventHandler6 = RegisterNetEvent
text14 = "aa50955ca8"
-- Beginner: this function handles network event "aa50955ca8".

-- === HELPER FUNCTION (decompiler name: number16; parameters: localValue1, localValue2) ===
function number16(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8
  localValue3 = dataCollection8
  localValue3 = localValue3[localValue1]
  if nil ~= localValue3 then
    localValue3 = dataCollection8
    localValue3 = localValue3[localValue1]
    localValue3 = localValue3.handle
    if nil ~= localValue3 then
      localValue3 = DoesParticleFxLoopedExist
      localValue4 = dataCollection8
      localValue4 = localValue4[localValue1]
      localValue4 = localValue4.handle
      localValue3 = localValue3(localValue4)
      if localValue3 then
        localValue3 = number4
        localValue3 = localValue3[localValue1]
        localValue3 = localValue3[2]
        localValue4 = StopParticleFxLooped
        localValue5 = dataCollection8
        localValue5 = localValue5[localValue1]
        localValue5 = localValue5.handle
        localValue6 = false
        localValue4(localValue5, localValue6)
        localValue4 = StopParticleFxLooped
        localValue5 = dataCollection8
        localValue5 = localValue5[localValue1]
        localValue5 = localValue5.handle2
        localValue6 = false
        localValue4(localValue5, localValue6)
        localValue4 = dataCollection8
        localValue4 = localValue4[localValue1]
        localValue5 = dataCollection8
        localValue5 = localValue5[localValue1]
        localValue5 = localValue5.pitch
        localValue5 = localValue5 + localValue2
        localValue4.pitch = localValue5
        localValue4 = RequestNamedPtfxAsset
        localValue5 = "core"
        localValue4(localValue5)
        while true do
          localValue4 = HasNamedPtfxAssetLoaded
          localValue5 = "core"
          localValue4 = localValue4(localValue5)
          if localValue4 then
            break
          end
          localValue4 = Wait
          localValue5 = 0
          localValue4(localValue5)
        end
        localValue4 = UseParticleFxAsset
        localValue5 = "core"
        localValue4(localValue5)
        localValue4 = SetParticleFxShootoutBoat
        localValue5 = 1
        localValue4(localValue5)
        localValue4 = dataCollection8
        localValue4 = localValue4[localValue1]
        localValue5 = StartParticleFxLoopedAtCoord
        localValue6 = "water_cannon_jet"
        localValue7 = localValue3.x
        localValue8 = localValue3.y
        localValue9 = localValue3.z
        workingValue27 = dataCollection8
        workingValue27 = workingValue27[localValue1]
        workingValue27 = workingValue27.pitch
        workingValue2 = 0.0
        workingValue5 = number4
        workingValue5 = workingValue5[localValue1]
        workingValue5 = workingValue5[3]
        stateFlag3 = 1.0
        stateFlag6 = false
        workingValue9 = false
        stateFlag7 = false
        stateFlag8 = false
        localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8)
        localValue4.handle = localValue5
        localValue4 = dataCollection8
        localValue4 = localValue4[localValue1]
        localValue5 = StartParticleFxLoopedAtCoord
        localValue6 = "water_cannon_spray"
        localValue7 = localValue3.x
        localValue8 = localValue3.y
        localValue9 = localValue3.z
        workingValue27 = dataCollection8
        workingValue27 = workingValue27[localValue1]
        workingValue27 = workingValue27.pitch
        workingValue2 = 0.0
        workingValue5 = number4
        workingValue5 = workingValue5[localValue1]
        workingValue5 = workingValue5[3]
        stateFlag3 = 1.0
        stateFlag6 = false
        workingValue9 = false
        stateFlag7 = false
        stateFlag8 = false
        localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8)
        localValue4.handle2 = localValue5
        localValue4 = RemoveNamedPtfxAsset
        localValue5 = "core"
        localValue4(localValue5)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "aa50955ca8".
eventHandler6(text14, number16)
eventHandler6 = 5.0
text14 = 5.0
number16 = 3

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue2 = pairs
  localValue3 = number3
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = localValue7[3]
    localValue8 = localValue1 - localValue8
    localValue8 = #localValue8
    if localValue8 < 25.0 then
      localValue9 = true
      return localValue9
    end
  end
  localValue2 = false
  return localValue2
end
backgroundThread2 = Citizen
backgroundThread2 = backgroundThread2.CreateThread

-- === HELPER FUNCTION (decompiler name: backgroundThread3; parameters: none) ===
function backgroundThread3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3
  while true do
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "lfb.onduty.permission"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue1 = localValue1()
      localValue2 = pairs
      localValue3 = number4
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
      for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
        localValue8 = localValue7[5]
        if not localValue8 then
          localValue8 = localValue7[2]
          localValue8 = localValue1 - localValue8
          localValue8 = #localValue8
          localValue9 = eventHandler6
          if localValue8 < localValue9 then
            localValue9 = text14
            if localValue8 < localValue9 then
              localValue9 = localValue7[4]
              if localValue9 then
                localValue9 = DisableControlAction
                workingValue27 = 0
                workingValue2 = 172
                workingValue5 = true
                localValue9(workingValue27, workingValue2, workingValue5)
                localValue9 = DisableControlAction
                workingValue27 = 0
                workingValue2 = 173
                workingValue5 = true
                localValue9(workingValue27, workingValue2, workingValue5)
                localValue9 = 0.0
                workingValue27 = IsDisabledControlPressed
                workingValue2 = 0
                workingValue5 = 172
                workingValue27 = workingValue27(workingValue2, workingValue5)
                if workingValue27 then
                  localValue9 = localValue9 + 15.0
                end
                workingValue27 = IsDisabledControlPressed
                workingValue2 = 0
                workingValue5 = 173
                workingValue27 = workingValue27(workingValue2, workingValue5)
                if workingValue27 then
                  localValue9 = localValue9 - 15.0
                end
                if 0.0 ~= localValue9 then
                  workingValue27 = TriggerServerEvent
                  workingValue2 = "cab7906b1d"
                  workingValue5 = localValue6
                  stateFlag3 = localValue9
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cab7906b1d".
                  workingValue27(workingValue2, workingValue5, stateFlag3)
                  workingValue27 = Wait
                  workingValue2 = 1000
                  workingValue27(workingValue2)
                end
                workingValue27 = DisableControlAction
                workingValue2 = 0
                workingValue5 = 38
                stateFlag3 = true
                workingValue27(workingValue2, workingValue5, stateFlag3)
                workingValue27 = IsDisabledControlPressed
                workingValue2 = 0
                workingValue5 = 38
                workingValue27 = workingValue27(workingValue2, workingValue5)
                if workingValue27 then
                  workingValue27 = true
                  text6 = workingValue27
                  workingValue27 = TriggerServerEvent
                  workingValue2 = "98397e121f"
                  workingValue5 = localValue6
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "98397e121f".
                  workingValue27(workingValue2, workingValue5)
                  workingValue27 = tCMG
                  workingValue27 = workingValue27.notify
                  workingValue2 = "~g~Success~w~: Water monitor toggled"
                  -- Beginner: Show a notification to the player.
                  workingValue27(workingValue2)
                  workingValue27 = Wait
                  workingValue2 = number16
                  workingValue2 = workingValue2 * 1000
                  workingValue27(workingValue2)
                end
              else
                localValue9 = workingValue17
                workingValue27 = localValue1
                localValue9 = localValue9(workingValue27)
                if localValue9 then
                  localValue9 = DisableControlAction
                  workingValue27 = 0
                  workingValue2 = 38
                  workingValue5 = true
                  localValue9(workingValue27, workingValue2, workingValue5)
                  localValue9 = IsDisabledControlPressed
                  workingValue27 = 0
                  workingValue2 = 38
                  localValue9 = localValue9(workingValue27, workingValue2)
                  if localValue9 then
                    localValue9 = TriggerServerEvent
                    workingValue27 = "98397e121f"
                    workingValue2 = localValue6
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "98397e121f".
                    localValue9(workingValue27, workingValue2)
                    localValue9 = tCMG
                    localValue9 = localValue9.notify
                    workingValue27 = "~g~Success~w~: Water monitor toggled"
                    -- Beginner: Show a notification to the player.
                    localValue9(workingValue27)
                    localValue9 = Wait
                    workingValue27 = number16
                    workingValue27 = workingValue27 * 1000
                    localValue9(workingValue27)
                  end
                else
                  localValue9 = tCMG
                  localValue9 = localValue9.notify
                  workingValue27 = "~r~Error~w~: No active supply line found to enable this water monitor"
                  -- Beginner: Show a notification to the player.
                  localValue9(workingValue27)
                end
              end
            else
              localValue9 = workingValue17
              workingValue27 = localValue1
              localValue9 = localValue9(workingValue27)
              if localValue9 then
                localValue9 = false
                workingValue27 = false
                text6 = workingValue27
                while not localValue9 do
                  workingValue27 = DisableControlAction
                  workingValue2 = 0
                  workingValue5 = 38
                  stateFlag3 = true
                  workingValue27(workingValue2, workingValue5, stateFlag3)
                  workingValue27 = IsDisabledControlPressed
                  workingValue2 = 0
                  workingValue5 = 38
                  workingValue27 = workingValue27(workingValue2, workingValue5)
                  if workingValue27 then
                    workingValue27 = true
                    text6 = workingValue27
                    localValue9 = true
                  end
                  workingValue27 = Wait
                  workingValue2 = 0
                  workingValue27(workingValue2)
                end
                workingValue27 = text6
                if workingValue27 then
                  workingValue27 = TriggerServerEvent
                  workingValue2 = "98397e121f"
                  workingValue5 = localValue6
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "98397e121f".
                  workingValue27(workingValue2, workingValue5)
                  workingValue27 = tCMG
                  workingValue27 = workingValue27.notify
                  workingValue2 = "~g~Success~w~: Water monitor toggled"
                  -- Beginner: Show a notification to the player.
                  workingValue27(workingValue2)
                  workingValue27 = Wait
                  workingValue2 = number16
                  workingValue2 = workingValue2 * 1000
                  workingValue27(workingValue2)
                end
              else
                localValue9 = tCMG
                localValue9 = localValue9.notify
                workingValue27 = "~r~Error~w~: No active supply line found to enable this water monitor"
                -- Beginner: Show a notification to the player.
                localValue9(workingValue27)
                localValue9 = localValue7[4]
                if localValue9 then
                  localValue9 = DisableControlAction
                  workingValue27 = 0
                  workingValue2 = 38
                  workingValue5 = true
                  localValue9(workingValue27, workingValue2, workingValue5)
                  localValue9 = IsDisabledControlPressed
                  workingValue27 = 0
                  workingValue2 = 38
                  localValue9 = localValue9(workingValue27, workingValue2)
                  if localValue9 then
                    localValue9 = true
                    text6 = localValue9
                    localValue9 = TriggerServerEvent
                    workingValue27 = "98397e121f"
                    workingValue2 = localValue6
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "98397e121f".
                    localValue9(workingValue27, workingValue2)
                    localValue9 = tCMG
                    localValue9 = localValue9.notify
                    workingValue27 = "~g~Success~w~: Water monitor toggled"
                    -- Beginner: Show a notification to the player.
                    localValue9(workingValue27)
                    localValue9 = Wait
                    workingValue27 = number16
                    workingValue27 = workingValue27 * 1000
                    localValue9(workingValue27)
                  end
                end
              end
            end
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread2(backgroundThread3)
backgroundThread2 = 0
backgroundThread3 = Citizen
backgroundThread3 = backgroundThread3.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6
  while true do
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "lfb.onduty.permission"
    localValue1 = localValue1(localValue2)
    if not localValue1 then
      localValue1 = false
      stateFlag24 = localValue1
    end
    localValue1 = stateFlag24
    if localValue1 then
      localValue1 = number13
      if localValue1 then
        localValue1 = stateFlag23
        if not localValue1 then
          localValue1 = number9
          if localValue1 < 1 then
            localValue1 = 0
            number9 = localValue1
            localValue1 = tCMG
            localValue1 = localValue1.notify
            localValue2 = "~r~Notice~w~: You have no active supply of water"
            -- Beginner: Show a notification to the player.
            localValue1(localValue2)
          end
          localValue1 = number9
          localValue1 = localValue1 - 1
          number9 = localValue1
        end
        localValue1 = Wait
        localValue2 = 1000
        localValue1(localValue2)
      end
      localValue1 = number9
      localValue2 = dataCollection12
      localValue1 = localValue1 / localValue2
      localValue1 = localValue1 * 100
      backgroundThread2 = localValue1
      localValue1 = math
      localValue1 = localValue1.floor
      localValue2 = backgroundThread2
      localValue2 = localValue2 + 0.5
      localValue1 = localValue1(localValue2)
      backgroundThread2 = localValue1
      localValue1 = backgroundThread2
      if -1 == localValue1 then
        localValue1 = 0
        backgroundThread2 = localValue1
      end
      localValue1 = stateFlag23
      if not localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.getPlayerCoords
        -- Beginner: result below is playerCoords.
        localValue1 = localValue1()
        localValue2 = CMG
        localValue2 = localValue2.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        localValue2 = localValue2()
        if 0 == localValue2 then
          localValue2 = eventHandler4
          localValue2 = localValue2()
          localValue3 = pairs
          localValue4 = number3
          localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
          for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
            localValue9 = localValue8[3]
            localValue9 = localValue1 - localValue9
            localValue9 = #localValue9
            workingValue27 = number10
            if localValue9 < workingValue27 then
              workingValue27 = false
              workingValue2 = Citizen
              workingValue2 = workingValue2.SetTimeout
              workingValue5 = 5000

              -- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: none) ===
              function stateFlag3()
                local rageUiOperation, text7
                rageUiOperation = true
                workingValue27 = rageUiOperation
              end
              workingValue2(workingValue5, stateFlag3)
              workingValue2 = drawNativeNotification
              workingValue5 = "Press ~INPUT_FRONTEND_RDOWN~ to connect to this vehicle"
              -- Beginner: Show a GTA-style notification/help prompt.
              workingValue2(workingValue5)
              while not workingValue27 do
                workingValue2 = DisableControlAction
                workingValue5 = 0
                stateFlag3 = 191
                stateFlag6 = true
                workingValue2(workingValue5, stateFlag3, stateFlag6)
                workingValue2 = IsDisabledControlJustPressed
                workingValue5 = 0
                stateFlag3 = 191
                workingValue2 = workingValue2(workingValue5, stateFlag3)
                if workingValue2 then
                  workingValue2 = true
                  stateFlag23 = workingValue2
                  number8 = localValue7
                  workingValue2 = tCMG
                  workingValue2 = workingValue2.notify
                  workingValue5 = "~g~Success~w~: You are now connected to this vehicle"
                  -- Beginner: Show a notification to the player.
                  workingValue2(workingValue5)
                  workingValue27 = true
                  workingValue2 = dataCollection12
                  number9 = workingValue2
                  break
                end
                workingValue2 = Wait
                workingValue5 = 0
                workingValue2(workingValue5)
              end
            end
          end
          localValue3 = stateFlag23
          if not localValue3 and 0 ~= localValue2 and nil ~= localValue2 then
            localValue3 = GetEntityModel
            localValue4 = localValue2
            -- Beginner: result below is modelHash.
            localValue3 = localValue3(localValue4)
            localValue4 = false
            localValue5 = pairs
            localValue6 = dataCollection11
            localValue5, localValue6, localValue7, localValue8 = localValue5(localValue6)
            for localValue9, workingValue27 in localValue5, localValue6, localValue7, localValue8 do
              workingValue2 = workingValue27.model
              if workingValue2 == localValue3 then
                localValue4 = true
                break
              end
            end
            if localValue4 then
              localValue5 = NetworkGetNetworkIdFromEntity
              localValue6 = localValue2
              localValue5 = localValue5(localValue6)
              localValue6 = false
              localValue7 = pairs
              localValue8 = dataCollection10
              localValue7, localValue8, localValue9, workingValue27 = localValue7(localValue8)
              for workingValue2 in localValue7, localValue8, localValue9, workingValue27 do
                workingValue5 = dataCollection10
                workingValue5 = workingValue5[workingValue2]
                if localValue5 == workingValue5 then
                  localValue6 = true
                end
              end
              if not localValue6 then
                localValue7 = number9
                if localValue7 < 1 then
                  localValue7 = dataCollection12
                  number9 = localValue7
                  localValue7 = dataCollection10
                  localValue7[localValue5] = localValue5
                  localValue7 = Citizen
                  localValue7 = localValue7.SetTimeout
                  localValue8 = 180000

                  -- === HELPER FUNCTION: localValue9() ===
                  function localValue9()
                    local rageUiOperation, text7
                    text7 = localValue5
                    rageUiOperation = dataCollection10
                    rageUiOperation[text7] = nil
                  end
                  localValue7(localValue8, localValue9)
                  localValue7 = tCMG
                  localValue7 = localValue7.notify
                  localValue8 = "~g~Success~w~: You now have a limited supply of water from the nearest vehicle"
                  -- Beginner: Show a notification to the player.
                  localValue7(localValue8)
                end
              else
                localValue7 = number9
                if localValue7 < 1 then
                  localValue7 = tCMG
                  localValue7 = localValue7.notify
                  localValue8 = "~r~Notice~w~: This vehicle has already supplied you with water, setup a supply line for more"
                  localValue7(localValue8)
                  localValue7 = Wait
                  localValue8 = 5000
                  localValue7(localValue8)
                end
              end
            end
          end
        end
      else
        localValue1 = number8
        if 0 ~= localValue1 then
          localValue2 = number8
          localValue1 = number3
          localValue1 = localValue1[localValue2]
          if nil == localValue1 then
            localValue1 = tCMG
            localValue1 = localValue1.notify
            localValue2 = "~r~Notice~w~: You have now been disconnected from the supply line"
            -- Beginner: Show a notification to the player.
            localValue1(localValue2)
            localValue1 = false
            stateFlag23 = localValue1
          end
        end
        localValue1 = stateFlag23
        if localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.getPlayerCoords
          -- Beginner: result below is playerCoords.
          localValue1 = localValue1()
          localValue3 = number8
          localValue2 = number3
          localValue2 = localValue2[localValue3]
          localValue2 = localValue2[3]
          localValue2 = localValue1 - localValue2
          localValue2 = #localValue2
          localValue3 = 200.0
          if localValue2 > localValue3 then
            localValue3 = false
            stateFlag23 = localValue3
            localValue3 = 0
            number8 = localValue3
            localValue3 = tCMG
            localValue3 = localValue3.notify
            localValue4 = "~r~Notice~w~: You have now been disconnected from the supply line"
            localValue3(localValue4)
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread3(cmgOperation4)

-- === HELPER FUNCTION (decompiler name: backgroundThread3; parameters: none) ===
function backgroundThread3()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = stateFlag24
  if localValue1 then
    localValue1 = drawNativeText
    localValue2 = "~b~Supply Line~w~: "
    localValue3 = tostring
    localValue4 = backgroundThread2
    localValue3 = localValue3(localValue4)
    localValue4 = "/100 %"
    localValue2 = localValue2 .. localValue3 .. localValue4
    -- Beginner: Draw GTA-style text on screen.
    localValue1(localValue2)
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
number17 = backgroundThread3
eventHandler7 = "LFB Hose UI"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(number17, eventHandler7)
cmgOperation4 = {}
number17 = 2.0
eventHandler7 = RegisterNetEvent
eventHandler8 = "611bb4aa94"
-- Beginner: this function handles network event "611bb4aa94".

-- === HELPER FUNCTION (decompiler name: text15; parameters: localValue1) ===
function text15(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9
  localValue2 = number6
  localValue2 = localValue2[localValue1]
  if nil ~= localValue2 then
    localValue2 = number6
    localValue2 = localValue2[localValue1]
    localValue3 = number6
    localValue3 = localValue3[localValue1]
    localValue3 = localValue3[8]
    localValue3 = not localValue3
    localValue2[8] = localValue3
  end
  localValue2 = cmgOperation4
  localValue2 = localValue2[localValue1]
  if nil ~= localValue2 then
    localValue2 = cmgOperation4
    localValue2 = localValue2[localValue1]
    localValue2 = localValue2.handle
    if nil ~= localValue2 then
      localValue2 = DoesParticleFxLoopedExist
      localValue3 = cmgOperation4
      localValue3 = localValue3[localValue1]
      localValue3 = localValue3.handle
      localValue2 = localValue2(localValue3)
      if localValue2 then
        localValue2 = StopParticleFxLooped
        localValue3 = cmgOperation4
        localValue3 = localValue3[localValue1]
        localValue3 = localValue3.handle
        localValue4 = false
        localValue2(localValue3, localValue4)
        localValue2 = StopParticleFxLooped
        localValue3 = cmgOperation4
        localValue3 = localValue3[localValue1]
        localValue3 = localValue3.handle2
        localValue4 = false
        localValue2(localValue3, localValue4)
        localValue2 = StopParticleFxLooped
        localValue3 = cmgOperation4
        localValue3 = localValue3[localValue1]
        localValue3 = localValue3.handle3
        localValue4 = false
        localValue2(localValue3, localValue4)
        localValue2 = StopParticleFxLooped
        localValue3 = cmgOperation4
        localValue3 = localValue3[localValue1]
        localValue3 = localValue3.handle4
        localValue4 = false
        localValue2(localValue3, localValue4)
        localValue2 = cmgOperation4
        localValue2[localValue1] = nil
      end
    end
  end
  localValue2 = number6
  localValue2 = localValue2[localValue1]
  if nil ~= localValue2 then
    localValue2 = number6
    localValue2 = localValue2[localValue1]
    localValue2 = localValue2[8]
    if localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.loadPtfx
      localValue3 = "core"
      localValue2(localValue3)
      localValue2 = UseParticleFxAsset
      localValue3 = "core"
      localValue2(localValue3)
      localValue2 = SetParticleFxShootoutBoat
      localValue3 = 1
      localValue2(localValue3)
      localValue2 = cmgOperation4
      localValue3 = {}
      localValue2[localValue1] = localValue3
      localValue2 = cmgOperation4
      localValue2 = localValue2[localValue1]
      localValue3 = StartParticleFxLoopedAtCoord
      localValue4 = "water_cannon_jet"
      localValue5 = number6
      localValue5 = localValue5[localValue1]
      localValue5 = localValue5[3]
      localValue5 = localValue5.x
      localValue6 = number6
      localValue6 = localValue6[localValue1]
      localValue6 = localValue6[3]
      localValue6 = localValue6.y
      localValue7 = number6
      localValue7 = localValue7[localValue1]
      localValue7 = localValue7[3]
      localValue7 = localValue7.z
      localValue8 = -90.0
      localValue9 = 0.0
      workingValue27 = 0.0
      workingValue2 = number17
      workingValue5 = false
      stateFlag3 = false
      stateFlag6 = false
      workingValue9 = false
      localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9)
      localValue2.handle = localValue3
      localValue2 = UseParticleFxAsset
      localValue3 = "core"
      localValue2(localValue3)
      localValue2 = SetParticleFxShootoutBoat
      localValue3 = 1
      localValue2(localValue3)
      localValue2 = cmgOperation4
      localValue2 = localValue2[localValue1]
      localValue3 = StartParticleFxLoopedAtCoord
      localValue4 = "water_cannon_jet"
      localValue5 = number6
      localValue5 = localValue5[localValue1]
      localValue5 = localValue5[4]
      localValue5 = localValue5.x
      localValue6 = number6
      localValue6 = localValue6[localValue1]
      localValue6 = localValue6[4]
      localValue6 = localValue6.y
      localValue7 = number6
      localValue7 = localValue7[localValue1]
      localValue7 = localValue7[4]
      localValue7 = localValue7.z
      localValue8 = -90.0
      localValue9 = 0.0
      workingValue27 = 0.0
      workingValue2 = number17
      workingValue5 = false
      stateFlag3 = false
      stateFlag6 = false
      workingValue9 = false
      localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9)
      localValue2.handle2 = localValue3
      localValue2 = UseParticleFxAsset
      localValue3 = "core"
      localValue2(localValue3)
      localValue2 = SetParticleFxShootoutBoat
      localValue3 = 1
      localValue2(localValue3)
      localValue2 = cmgOperation4
      localValue2 = localValue2[localValue1]
      localValue3 = StartParticleFxLoopedAtCoord
      localValue4 = "water_cannon_jet"
      localValue5 = number6
      localValue5 = localValue5[localValue1]
      localValue5 = localValue5[5]
      localValue5 = localValue5.x
      localValue6 = number6
      localValue6 = localValue6[localValue1]
      localValue6 = localValue6[5]
      localValue6 = localValue6.y
      localValue7 = number6
      localValue7 = localValue7[localValue1]
      localValue7 = localValue7[5]
      localValue7 = localValue7.z
      localValue8 = -90.0
      localValue9 = 0.0
      workingValue27 = 0.0
      workingValue2 = number17
      workingValue5 = false
      stateFlag3 = false
      stateFlag6 = false
      workingValue9 = false
      localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9)
      localValue2.handle3 = localValue3
      localValue2 = UseParticleFxAsset
      localValue3 = "core"
      localValue2(localValue3)
      localValue2 = SetParticleFxShootoutBoat
      localValue3 = 1
      localValue2(localValue3)
      localValue2 = cmgOperation4
      localValue2 = localValue2[localValue1]
      localValue3 = StartParticleFxLoopedAtCoord
      localValue4 = "water_cannon_jet"
      localValue5 = number6
      localValue5 = localValue5[localValue1]
      localValue5 = localValue5[6]
      localValue5 = localValue5.x
      localValue6 = number6
      localValue6 = localValue6[localValue1]
      localValue6 = localValue6[6]
      localValue6 = localValue6.y
      localValue7 = number6
      localValue7 = localValue7[localValue1]
      localValue7 = localValue7[6]
      localValue7 = localValue7.z
      localValue8 = -90.0
      localValue9 = 0.0
      workingValue27 = 0.0
      workingValue2 = number17
      workingValue5 = false
      stateFlag3 = false
      stateFlag6 = false
      workingValue9 = false
      localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9)
      localValue2.handle4 = localValue3
      localValue2 = RemoveNamedPtfxAsset
      localValue3 = "core"
      localValue2(localValue3)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "611bb4aa94".
eventHandler7(eventHandler8, text15)
eventHandler7 = -431813309

-- === HELPER FUNCTION (decompiler name: eventHandler8; parameters: localValue1) ===
function eventHandler8(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = CMG
  localValue3 = localValue3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3()
  if 0 ~= localValue3 then
    localValue4 = tCMG
    localValue4 = localValue4.notify
    localValue5 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue4 = localValue4()
  if localValue1 then
    localValue5 = CMG
    localValue5 = localValue5.loadModel
    localValue6 = eventHandler7
    -- Beginner: Request/load a GTA model before spawning or applying it.
    localValue5(localValue6)
    localValue5 = GetOffsetFromEntityInWorldCoords
    localValue6 = localValue2
    localValue7 = 0.0
    localValue8 = 5.0
    localValue9 = 0.0
    localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9)
    localValue6 = CMG
    localValue6 = localValue6.requestEntitySpawn
    localValue7 = "lfb_prop"
    localValue8 = "tent"
    localValue9 = localValue5
    localValue6(localValue7, localValue8, localValue9)
    localValue6 = CreateObject
    localValue7 = eventHandler7
    localValue8 = localValue5.x
    localValue9 = localValue5.y
    workingValue27 = localValue5.z
    workingValue2 = true
    workingValue5 = true
    stateFlag3 = true
    -- Beginner: result below is objectEntity.
    localValue6 = localValue6(localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3)
    while true do
      localValue7 = DoesEntityExist
      localValue8 = localValue6
      localValue7 = localValue7(localValue8)
      if localValue7 then
        break
      end
      localValue7 = Wait
      localValue8 = 0
      localValue7(localValue8)
    end
    localValue7 = TriggerServerEvent
    localValue8 = "3a7f6a2bdf"
    localValue9 = "Decontamination Tent"
    workingValue27 = GetEntityCoords
    workingValue2 = localValue6
    workingValue5 = true
    workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12 = workingValue27(workingValue2, workingValue5)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
    localValue7(localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12)
    localValue7 = NetworkGetNetworkIdFromEntity
    localValue8 = localValue6
    localValue7 = localValue7(localValue8)
    localValue8 = PlaceObjectOnGroundProperly
    localValue9 = localValue6
    localValue8(localValue9)
    localValue8 = FreezeEntityPosition
    localValue9 = localValue6
    workingValue27 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue8(localValue9, workingValue27)
    localValue8 = SetEntityHeading
    localValue9 = localValue6
    workingValue27 = GetEntityHeading
    workingValue2 = localValue2
    workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12 = workingValue27(workingValue2)
    -- Beginner: Change the direction an entity is facing.
    localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12)
    localValue8 = GetOffsetFromEntityInWorldCoords
    localValue9 = localValue6
    workingValue27 = -1.75
    workingValue2 = 0.0
    workingValue5 = 2.9
    localValue8 = localValue8(localValue9, workingValue27, workingValue2, workingValue5)
    localValue9 = GetOffsetFromEntityInWorldCoords
    workingValue27 = localValue6
    workingValue2 = -0.63
    workingValue5 = 0.0
    stateFlag3 = 2.9
    localValue9 = localValue9(workingValue27, workingValue2, workingValue5, stateFlag3)
    workingValue27 = GetOffsetFromEntityInWorldCoords
    workingValue2 = localValue6
    workingValue5 = 0.63
    stateFlag3 = 0.0
    stateFlag6 = 2.9
    workingValue27 = workingValue27(workingValue2, workingValue5, stateFlag3, stateFlag6)
    workingValue2 = GetOffsetFromEntityInWorldCoords
    workingValue5 = localValue6
    stateFlag3 = 1.75
    stateFlag6 = 0.0
    workingValue9 = 2.9
    workingValue2 = workingValue2(workingValue5, stateFlag3, stateFlag6, workingValue9)
    workingValue5 = number6
    stateFlag3 = {}
    stateFlag6 = localValue7
    workingValue9 = localValue5
    stateFlag7 = localValue8
    stateFlag8 = localValue9
    stateFlag9 = workingValue27
    stateFlag10 = workingValue2
    stateFlag11 = GetEntityHeading
    stateFlag12 = localValue6
    -- Beginner: result below is heading.
    stateFlag11 = stateFlag11(stateFlag12)
    stateFlag12 = false
    stateFlag3[1] = stateFlag6
    stateFlag3[2] = workingValue9
    stateFlag3[3] = stateFlag7
    stateFlag3[4] = stateFlag8
    stateFlag3[5] = stateFlag9
    stateFlag3[6] = stateFlag10
    stateFlag3[7] = stateFlag11
    stateFlag3[8] = stateFlag12
    workingValue5[localValue7] = stateFlag3
    workingValue5 = TriggerServerEvent
    stateFlag3 = "e504a7e25b"
    stateFlag6 = localValue7
    workingValue9 = number6
    workingValue9 = workingValue9[localValue7]
    stateFlag7 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e504a7e25b".
    workingValue5(stateFlag3, stateFlag6, workingValue9, stateFlag7)
    workingValue5 = SetModelAsNoLongerNeeded
    stateFlag3 = eventHandler7
    workingValue5(stateFlag3)
    workingValue5 = tCMG
    workingValue5 = workingValue5.notify
    stateFlag3 = "~g~Success~w~: Decontamination tent setup"
    -- Beginner: Show a notification to the player.
    workingValue5(stateFlag3)
  else
    localValue5 = false
    localValue6 = 0
    localValue7 = pairs
    localValue8 = number6
    localValue7, localValue8, localValue9, workingValue27 = localValue7(localValue8)
    for workingValue2, workingValue5 in localValue7, localValue8, localValue9, workingValue27 do
      stateFlag3 = workingValue5[2]
      stateFlag3 = localValue4 - stateFlag3
      stateFlag3 = #stateFlag3
      if stateFlag3 < 25.0 then
        localValue6 = workingValue2
        localValue5 = true
        break
      end
    end
    if localValue5 then
      localValue7 = number6
      localValue7 = localValue7[localValue6]
      localValue7 = localValue7[8]
      if localValue7 then
        localValue7 = tCMG
        localValue7 = localValue7.notify
        localValue8 = "~r~Error~w~: This decontamination tent is active and cannot be removed"
        localValue7(localValue8)
      else
        localValue7 = CMG
        localValue7 = localValue7.getObjectId
        localValue8 = number6
        localValue8 = localValue8[localValue6]
        localValue8 = localValue8[1]
        localValue9 = "handleDecontaminationTent"
        localValue7 = localValue7(localValue8, localValue9)
        localValue8 = TriggerServerEvent
        localValue9 = "e504a7e25b"
        workingValue27 = localValue6
        workingValue2 = number6
        workingValue2 = workingValue2[localValue6]
        workingValue5 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e504a7e25b".
        localValue8(localValue9, workingValue27, workingValue2, workingValue5)
        if localValue7 then
          localValue8 = DoesEntityExist
          localValue9 = localValue7
          localValue8 = localValue8(localValue9)
          if localValue8 then
            localValue8 = DeleteEntity
            localValue9 = localValue7
            -- Beginner: Delete a GTA entity.
            localValue8(localValue9)
          end
        end
        localValue8 = number6
        localValue8[localValue6] = nil
        localValue8 = tCMG
        localValue8 = localValue8.notify
        localValue9 = "~g~Success~w~: Decontamination tent removed"
        -- Beginner: Show a notification to the player.
        localValue8(localValue9)
      end
    else
      localValue7 = tCMG
      localValue7 = localValue7.notify
      localValue8 = "~r~Error~w~: No decontamination tent found"
      localValue7(localValue8)
    end
  end
end
workingValue26 = eventHandler8
eventHandler8 = RegisterNetEvent
text15 = "e504a7e25b"
-- Beginner: this function handles network event "e504a7e25b".

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation5(localValue1, localValue2, localValue3)
  local localValue4
  if localValue3 then
    localValue4 = number6
    localValue4[localValue1] = nil
    return
  end
  localValue4 = number6
  localValue4[localValue1] = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e504a7e25b".
eventHandler8(text15, cmgOperation5)
eventHandler8 = 15.0

-- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
function text15()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "lfb.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue1 = localValue1()
    localValue2 = pairs
    localValue3 = number6
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
      localValue8 = localValue7[2]
      localValue8 = localValue1 - localValue8
      localValue8 = #localValue8
      localValue9 = eventHandler8
      if localValue8 < localValue9 then
        localValue9 = drawNativeNotification
        workingValue27 = "Press ~INPUT_PICKUP~ to toggle the ~b~decontamination showers"
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue9(workingValue27)
        localValue9 = DisableControlAction
        workingValue27 = 0
        workingValue2 = 38
        workingValue5 = true
        localValue9(workingValue27, workingValue2, workingValue5)
        localValue9 = IsDisabledControlJustPressed
        workingValue27 = 0
        workingValue2 = 38
        localValue9 = localValue9(workingValue27, workingValue2)
        if localValue9 then
          localValue9 = TriggerServerEvent
          workingValue27 = "611bb4aa94"
          workingValue2 = localValue6
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "611bb4aa94".
          localValue9(workingValue27, workingValue2)
          localValue9 = tCMG
          localValue9 = localValue9.notify
          workingValue27 = "~g~Success~w~: Decontamination showers toggled"
          -- Beginner: Show a notification to the player.
          localValue9(workingValue27)
        end
      end
    end
  end
end
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.createThreadOnTick
stateFlag26 = text15
text16 = "LFB Showers"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation5(stateFlag26, text16)
cmgOperation5 = RegisterNetEvent
stateFlag26 = "0004c6d062"
-- Beginner: this function handles network event "0004c6d062".

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1, localValue2, localValue3) ===
function text16(localValue1, localValue2, localValue3)
  local localValue4
  if localValue3 then
    localValue4 = dataCollection3
    localValue4[localValue1] = nil
    return
  end
  localValue4 = dataCollection3
  localValue4[localValue1] = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0004c6d062".
cmgOperation5(stateFlag26, text16)
cmgOperation5 = 1230203395

-- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: localValue1) ===
function stateFlag26(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = CMG
  localValue3 = localValue3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3()
  if 0 ~= localValue3 then
    localValue4 = tCMG
    localValue4 = localValue4.notify
    localValue5 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue4 = localValue4()
  if localValue1 then
    localValue5 = CMG
    localValue5 = localValue5.loadModel
    localValue6 = cmgOperation5
    -- Beginner: Request/load a GTA model before spawning or applying it.
    localValue5(localValue6)
    localValue5 = GetOffsetFromEntityInWorldCoords
    localValue6 = localValue2
    localValue7 = 0.0
    localValue8 = 1.5
    localValue9 = 0.0
    localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9)
    localValue6 = CMG
    localValue6 = localValue6.requestEntitySpawn
    localValue7 = "lfb_prop"
    localValue8 = "cushion"
    localValue9 = localValue5
    localValue6(localValue7, localValue8, localValue9)
    localValue6 = CreateObject
    localValue7 = cmgOperation5
    localValue8 = localValue5.x
    localValue9 = localValue5.y
    workingValue27 = localValue5.z
    workingValue2 = true
    workingValue5 = true
    stateFlag3 = true
    -- Beginner: result below is objectEntity.
    localValue6 = localValue6(localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3)
    while true do
      localValue7 = DoesEntityExist
      localValue8 = localValue6
      localValue7 = localValue7(localValue8)
      if localValue7 then
        break
      end
      localValue7 = Wait
      localValue8 = 0
      localValue7(localValue8)
    end
    localValue7 = TriggerServerEvent
    localValue8 = "3a7f6a2bdf"
    localValue9 = "Rescue Cushion"
    workingValue27 = GetEntityCoords
    workingValue2 = localValue6
    workingValue5 = true
    workingValue27, workingValue2, workingValue5, stateFlag3 = workingValue27(workingValue2, workingValue5)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
    localValue7(localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3)
    localValue7 = SetEntityCollision
    localValue8 = localValue6
    localValue9 = false
    workingValue27 = true
    localValue7(localValue8, localValue9, workingValue27)
    localValue7 = PlaceObjectOnGroundProperly
    localValue8 = localValue6
    localValue7(localValue8)
    localValue7 = FreezeEntityPosition
    localValue8 = localValue6
    localValue9 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue7(localValue8, localValue9)
    while true do
      localValue7 = NetworkGetNetworkIdFromEntity
      localValue8 = localValue6
      localValue7 = localValue7(localValue8)
      if 0 ~= localValue7 then
        break
      end
      localValue7 = Wait
      localValue8 = 0
      localValue7(localValue8)
    end
    localValue7 = NetworkGetNetworkIdFromEntity
    localValue8 = localValue6
    localValue7 = localValue7(localValue8)
    localValue8 = dataCollection3
    localValue9 = {}
    workingValue27 = localValue7
    workingValue2 = localValue5
    localValue9[1] = workingValue27
    localValue9[2] = workingValue2
    localValue8[localValue7] = localValue9
    localValue8 = TriggerServerEvent
    localValue9 = "0004c6d062"
    workingValue27 = localValue7
    workingValue2 = dataCollection3
    workingValue2 = workingValue2[localValue7]
    workingValue5 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0004c6d062".
    localValue8(localValue9, workingValue27, workingValue2, workingValue5)
    localValue8 = SetModelAsNoLongerNeeded
    localValue9 = cmgOperation5
    localValue8(localValue9)
    localValue8 = tCMG
    localValue8 = localValue8.notify
    localValue9 = "~g~Success~w~: Rescue cushion setup"
    -- Beginner: Show a notification to the player.
    localValue8(localValue9)
  else
    localValue5 = false
    localValue6 = 0
    localValue7 = pairs
    localValue8 = dataCollection3
    localValue7, localValue8, localValue9, workingValue27 = localValue7(localValue8)
    for workingValue2, workingValue5 in localValue7, localValue8, localValue9, workingValue27 do
      stateFlag3 = workingValue5[2]
      stateFlag3 = localValue4 - stateFlag3
      stateFlag3 = #stateFlag3
      if stateFlag3 < 15.0 then
        localValue6 = workingValue2
        localValue5 = true
        break
      end
    end
    if localValue5 then
      localValue7 = TriggerServerEvent
      localValue8 = "ef321f8c43"
      localValue9 = dataCollection3
      localValue9 = localValue9[localValue6]
      localValue9 = localValue9[1]
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef321f8c43".
      localValue7(localValue8, localValue9)
      localValue7 = CMG
      localValue7 = localValue7.getObjectId
      localValue8 = dataCollection3
      localValue8 = localValue8[localValue6]
      localValue8 = localValue8[1]
      localValue9 = "handleRescueCushion"
      localValue7 = localValue7(localValue8, localValue9)
      localValue8 = TriggerServerEvent
      localValue9 = "0004c6d062"
      workingValue27 = localValue6
      workingValue2 = dataCollection3
      workingValue2 = workingValue2[localValue6]
      workingValue5 = true
      localValue8(localValue9, workingValue27, workingValue2, workingValue5)
      if localValue7 then
        localValue8 = DoesEntityExist
        localValue9 = localValue7
        localValue8 = localValue8(localValue9)
        if localValue8 then
          localValue8 = DeleteEntity
          localValue9 = localValue7
          -- Beginner: Delete a GTA entity.
          localValue8(localValue9)
        end
      end
      localValue8 = dataCollection3
      localValue8[localValue6] = nil
      localValue8 = tCMG
      localValue8 = localValue8.notify
      localValue9 = "~g~Success~w~: Rescue cushion removed"
      -- Beginner: Show a notification to the player.
      localValue8(localValue9)
    else
      localValue7 = tCMG
      localValue7 = localValue7.notify
      localValue8 = "~r~Error~w~: No rescue cushion found"
      localValue7(localValue8)
    end
  end
end
workingValue7 = stateFlag26
stateFlag26 = false
text16 = 10
number19 = 60
eventHandler9 = Citizen
eventHandler9 = eventHandler9.CreateThread

-- === HELPER FUNCTION (decompiler name: text17; parameters: none) ===
function text17()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12
  while true do
    localValue1 = stateFlag26
    if not localValue1 then
      localValue1 = table
      localValue1 = localValue1.count
      localValue2 = dataCollection3
      -- Beginner: result below is count.
      localValue1 = localValue1(localValue2)
      if localValue1 > 0 then
        localValue1 = CMG
        localValue1 = localValue1.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue1 = localValue1()
        localValue2 = CMG
        localValue2 = localValue2.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        localValue2 = localValue2()
        if 0 == localValue2 then
          localValue3 = CMG
          localValue3 = localValue3.getPlayerCoords
          -- Beginner: result below is playerCoords.
          localValue3 = localValue3()
          localValue4 = false
          localValue5 = pairs
          localValue6 = dataCollection3
          localValue5, localValue6, localValue7, localValue8 = localValue5(localValue6)
          for localValue9, workingValue27 in localValue5, localValue6, localValue7, localValue8 do
            workingValue2 = vector3
            workingValue5 = workingValue27[2]
            workingValue5 = workingValue5.x
            stateFlag3 = workingValue27[2]
            stateFlag3 = stateFlag3.y
            stateFlag6 = localValue3.z
            workingValue2 = workingValue2(workingValue5, stateFlag3, stateFlag6)
            workingValue2 = localValue3 - workingValue2
            workingValue2 = #workingValue2
            if workingValue2 < 20.0 then
              localValue4 = true
              workingValue5 = GetEntityHeightAboveGround
              stateFlag3 = localValue1
              workingValue5 = workingValue5(stateFlag3)
              if workingValue5 >= 2.0 then
                workingValue5 = SetPlayerFallDistance
                stateFlag3 = CMG
                stateFlag3 = stateFlag3.getPlayerId
                -- Beginner: result below is localPlayerIndex.
                stateFlag3 = stateFlag3()
                stateFlag6 = 250.0
                workingValue5(stateFlag3, stateFlag6)
                workingValue5 = true
                cmgOperation = workingValue5
              else
                workingValue5 = SetPlayerFallDistance
                stateFlag3 = CMG
                stateFlag3 = stateFlag3.getPlayerId
                -- Beginner: result below is localPlayerIndex.
                stateFlag3 = stateFlag3()
                stateFlag6 = 5.0
                workingValue5(stateFlag3, stateFlag6)
              end
            else
              workingValue5 = SetPlayerFallDistance
              stateFlag3 = CMG
              stateFlag3 = stateFlag3.getPlayerId
              -- Beginner: result below is localPlayerIndex.
              stateFlag3 = stateFlag3()
              stateFlag6 = 5.0
              workingValue5(stateFlag3, stateFlag6)
            end
            if workingValue2 < 12.0 then
              workingValue5 = IsPedFalling
              stateFlag3 = localValue1
              workingValue5 = workingValue5(stateFlag3)
              if workingValue5 then
                workingValue5 = SetEntityInvincible
                stateFlag3 = localValue1
                stateFlag6 = true
                workingValue5(stateFlag3, stateFlag6)
                workingValue5 = false
                stateFlag3 = Citizen
                stateFlag3 = stateFlag3.SetTimeout
                stateFlag6 = 7000

                -- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
                function workingValue9()
                  local rageUiOperation, text7
                  rageUiOperation = true
                  workingValue5 = rageUiOperation
                end
                stateFlag3(stateFlag6, workingValue9)
                while not workingValue5 do
                  stateFlag3 = IsPedFalling
                  stateFlag6 = localValue1
                  stateFlag3 = stateFlag3(stateFlag6)
                  if not stateFlag3 then
                    stateFlag3 = Wait
                    stateFlag6 = 500
                    stateFlag3(stateFlag6)
                    workingValue5 = true
                  end
                  stateFlag3 = Wait
                  stateFlag6 = 0
                  stateFlag3(stateFlag6)
                end
                stateFlag3 = SetEntityInvincible
                stateFlag6 = localValue1
                workingValue9 = false
                stateFlag3(stateFlag6, workingValue9)
                stateFlag3 = CMG
                stateFlag3 = stateFlag3.getPlayerCoords
                -- Beginner: result below is playerCoords.
                stateFlag3 = stateFlag3()
                stateFlag6 = workingValue27[2]
                stateFlag3 = stateFlag3 - stateFlag6
                stateFlag3 = #stateFlag3
                if stateFlag3 < 4.0 then
                  stateFlag6 = SetPedToRagdoll
                  workingValue9 = localValue1
                  stateFlag7 = text16
                  stateFlag7 = stateFlag7 * 1000
                  stateFlag8 = text16
                  stateFlag8 = stateFlag8 * 1000
                  stateFlag9 = 0
                  stateFlag10 = false
                  stateFlag11 = false
                  stateFlag12 = false
                  stateFlag6(workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12)
                end
                stateFlag6 = false
                cmgOperation = stateFlag6
                stateFlag6 = SetPlayerFallDistance
                workingValue9 = CMG
                workingValue9 = workingValue9.getPlayerId
                -- Beginner: result below is localPlayerIndex.
                workingValue9 = workingValue9()
                stateFlag7 = 5.0
                stateFlag6(workingValue9, stateFlag7)
                stateFlag6 = true
                stateFlag26 = stateFlag6
                stateFlag6 = Citizen
                stateFlag6 = stateFlag6.SetTimeout
                workingValue9 = number19
                workingValue9 = workingValue9 * 1000

                -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: none) ===
                function stateFlag7()
                  local rageUiOperation, text7
                  rageUiOperation = false
                  stateFlag26 = rageUiOperation
                end
                stateFlag6(workingValue9, stateFlag7)
              end
            end
          end
          if not localValue4 then
            localValue5 = cmgOperation
            if localValue5 then
              localValue5 = SetPlayerFallDistance
              localValue6 = CMG
              localValue6 = localValue6.getPlayerId
              -- Beginner: result below is localPlayerIndex.
              localValue6 = localValue6()
              localValue7 = 5.0
              localValue5(localValue6, localValue7)
            end
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler9(text17)
eventHandler9 = RegisterNetEvent
text17 = "2580a73806"
-- Beginner: this function handles network event "2580a73806".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1, localValue2, localValue3) ===
function workingValue20(localValue1, localValue2, localValue3)
  local localValue4
  if localValue3 then
    localValue4 = dataCollection4
    localValue4[localValue1] = nil
    return
  end
  localValue4 = dataCollection4
  localValue4[localValue1] = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2580a73806".
eventHandler9(text17, workingValue20)
eventHandler9 = RegisterNetEvent
text17 = "c9e1fb3817"
-- Beginner: this function handles network event "c9e1fb3817".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1, localValue2, localValue3) ===
function workingValue20(localValue1, localValue2, localValue3)
  local localValue4
  if localValue3 then
    localValue4 = dataCollection5
    localValue4[localValue1] = nil
    return
  end
  localValue4 = dataCollection5
  localValue4[localValue1] = localValue2
end
eventHandler9(text17, workingValue20)
eventHandler9 = RegisterNetEvent
text17 = "4a9a9f7b1f"
-- Beginner: this function handles network event "4a9a9f7b1f".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: none) ===
function workingValue20()
  local localValue1, localValue2
  localValue1 = Wait
  localValue2 = 20000
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4a9a9f7b1f".
eventHandler9(text17, workingValue20)
eventHandler9 = 1256126702
text17 = 0
-- Beginner: this function handles network event "4a9a9f7b1f".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: none) ===
function workingValue20()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = GetOffsetFromEntityInWorldCoords
  localValue4 = localValue1
  localValue5 = 0.0
  localValue6 = 8.0
  localValue7 = 0.0
  localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue4 = StartShapeTestCapsule
  localValue5 = localValue2.x
  localValue6 = localValue2.y
  localValue7 = localValue2.z
  localValue8 = localValue3.x
  localValue9 = localValue3.y
  workingValue27 = localValue3.z
  workingValue2 = 10.0
  workingValue5 = 2
  stateFlag3 = localValue1
  stateFlag6 = 0
  localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6)
  localValue5 = GetShapeTestResult
  localValue6 = localValue4
  localValue5, localValue6, localValue7, localValue8, localValue9 = localValue5(localValue6)
  return localValue9
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: none) ===
function workingValue21()
  local localValue1, localValue2
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local rageUiOperation, text7, text9, dataCollection9, rageUiOperation7, dataCollection14, workingValue19, workingValue23, text21, text23, workingValue3, workingValue6, dataCollection, dataCollection2, workingValue10, workingValue11, workingValue12, text3, number, workingValue13, workingValue14, cmgOperation2, stateFlag15
    rageUiOperation = "door_dside_f"
    text7 = "door_dside_r"
    text9 = "door_pside_f"
    dataCollection9 = "door_pside_r"
    rageUiOperation7 = "boot"
    while true do
      dataCollection14 = stateFlag5
      if not dataCollection14 then
        break
      end
      dataCollection14 = CMG
      dataCollection14 = dataCollection14.getPlayerCoords
      -- Beginner: result below is playerCoords.
      dataCollection14 = dataCollection14()
      workingValue19 = workingValue20
      workingValue19 = workingValue19()
      if 0 ~= workingValue19 and nil ~= workingValue19 then
        workingValue23 = drawNativeText
        text21 = "~r~Error~w~: No vehicle found"
        -- Beginner: Draw GTA-style text on screen.
        workingValue23(text21)
        workingValue23 = GetEntityBoneIndexByName
        text21 = workingValue19
        text23 = rageUiOperation
        workingValue23 = workingValue23(text21, text23)
        text21 = GetEntityBoneIndexByName
        text23 = workingValue19
        workingValue3 = text7
        text21 = text21(text23, workingValue3)
        text23 = GetEntityBoneIndexByName
        workingValue3 = workingValue19
        workingValue6 = text9
        text23 = text23(workingValue3, workingValue6)
        workingValue3 = GetEntityBoneIndexByName
        workingValue6 = workingValue19
        dataCollection = dataCollection9
        workingValue3 = workingValue3(workingValue6, dataCollection)
        workingValue6 = GetEntityBoneIndexByName
        dataCollection = workingValue19
        dataCollection2 = rageUiOperation7
        workingValue6 = workingValue6(dataCollection, dataCollection2)
        dataCollection = {}
        dataCollection2 = {}
        workingValue10 = GetWorldPositionOfEntityBone
        workingValue11 = workingValue19
        workingValue12 = workingValue23
        workingValue10, workingValue11, workingValue12, text3, number, workingValue13, workingValue14, cmgOperation2, stateFlag15 = workingValue10(workingValue11, workingValue12)
        dataCollection2[1] = workingValue10
        dataCollection2[2] = workingValue11
        dataCollection2[3] = workingValue12
        dataCollection2[4] = text3
        dataCollection2[5] = number
        dataCollection2[6] = workingValue13
        dataCollection2[7] = workingValue14
        dataCollection2[8] = cmgOperation2
        dataCollection2[9] = stateFlag15
        dataCollection[1] = dataCollection2
        dataCollection2 = {}
        workingValue10 = GetWorldPositionOfEntityBone
        workingValue11 = workingValue19
        workingValue12 = text21
        workingValue10, workingValue11, workingValue12, text3, number, workingValue13, workingValue14, cmgOperation2, stateFlag15 = workingValue10(workingValue11, workingValue12)
        dataCollection2[1] = workingValue10
        dataCollection2[2] = workingValue11
        dataCollection2[3] = workingValue12
        dataCollection2[4] = text3
        dataCollection2[5] = number
        dataCollection2[6] = workingValue13
        dataCollection2[7] = workingValue14
        dataCollection2[8] = cmgOperation2
        dataCollection2[9] = stateFlag15
        dataCollection[2] = dataCollection2
        dataCollection2 = {}
        workingValue10 = GetWorldPositionOfEntityBone
        workingValue11 = workingValue19
        workingValue12 = text23
        workingValue10, workingValue11, workingValue12, text3, number, workingValue13, workingValue14, cmgOperation2, stateFlag15 = workingValue10(workingValue11, workingValue12)
        dataCollection2[1] = workingValue10
        dataCollection2[2] = workingValue11
        dataCollection2[3] = workingValue12
        dataCollection2[4] = text3
        dataCollection2[5] = number
        dataCollection2[6] = workingValue13
        dataCollection2[7] = workingValue14
        dataCollection2[8] = cmgOperation2
        dataCollection2[9] = stateFlag15
        dataCollection[3] = dataCollection2
        dataCollection2 = {}
        workingValue10 = GetWorldPositionOfEntityBone
        workingValue11 = workingValue19
        workingValue12 = workingValue3
        workingValue10, workingValue11, workingValue12, text3, number, workingValue13, workingValue14, cmgOperation2, stateFlag15 = workingValue10(workingValue11, workingValue12)
        dataCollection2[1] = workingValue10
        dataCollection2[2] = workingValue11
        dataCollection2[3] = workingValue12
        dataCollection2[4] = text3
        dataCollection2[5] = number
        dataCollection2[6] = workingValue13
        dataCollection2[7] = workingValue14
        dataCollection2[8] = cmgOperation2
        dataCollection2[9] = stateFlag15
        dataCollection[4] = dataCollection2
        dataCollection2 = {}
        workingValue10 = GetWorldPositionOfEntityBone
        workingValue11 = workingValue19
        workingValue12 = workingValue6
        workingValue10, workingValue11, workingValue12, text3, number, workingValue13, workingValue14, cmgOperation2, stateFlag15 = workingValue10(workingValue11, workingValue12)
        dataCollection2[1] = workingValue10
        dataCollection2[2] = workingValue11
        dataCollection2[3] = workingValue12
        dataCollection2[4] = text3
        dataCollection2[5] = number
        dataCollection2[6] = workingValue13
        dataCollection2[7] = workingValue14
        dataCollection2[8] = cmgOperation2
        dataCollection2[9] = stateFlag15
        dataCollection[5] = dataCollection2
        dataCollection2 = dataCollection[1]
        dataCollection2[2] = 0
        dataCollection2 = dataCollection[2]
        dataCollection2[2] = 2
        dataCollection2 = dataCollection[3]
        dataCollection2[2] = 1
        dataCollection2 = dataCollection[4]
        dataCollection2[2] = 3
        dataCollection2 = dataCollection[4]
        dataCollection2[2] = 5
        dataCollection2 = 1
        workingValue10 = 0.0
        workingValue11 = 1
        workingValue12 = 5
        text3 = 1
        for number = workingValue11, workingValue12, text3 do
          workingValue13 = dataCollection[number]
          workingValue13 = workingValue13[1]
          workingValue13 = dataCollection14 - workingValue13
          workingValue13 = #workingValue13
          if 0.0 == workingValue10 then
            workingValue10 = workingValue13
          elseif workingValue13 < workingValue10 then
            workingValue10 = workingValue13
            dataCollection2 = number
          end
          number = number + 1
        end
        workingValue11 = drawNativeText
        workingValue12 = "Vehicle ~g~door found"
        workingValue11(workingValue12)
        workingValue11 = false
        workingValue12 = Citizen
        workingValue12 = workingValue12.SetTimeout
        text3 = 5000

        -- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
        function number()
          local localValue12, localValue22
          localValue12 = true
          workingValue11 = localValue12
        end
        workingValue12(text3, number)
        workingValue12 = drawNativeNotification
        text3 = "Press ~b~ENTER ~w~to open or ~b~SPACE~w~ to break the vehicle door"
        -- Beginner: Show a GTA-style notification/help prompt.
        workingValue12(text3)
        while not workingValue11 do
          workingValue12 = DisableControlAction
          text3 = 0
          number = 191
          workingValue13 = true
          workingValue12(text3, number, workingValue13)
          workingValue12 = DisableControlAction
          text3 = 0
          number = 22
          workingValue13 = true
          workingValue12(text3, number, workingValue13)
          workingValue12 = IsDisabledControlJustPressed
          text3 = 0
          number = 22
          workingValue12 = workingValue12(text3, number)
          if workingValue12 then
            workingValue12 = NetworkGetNetworkIdFromEntity
            text3 = workingValue19
            workingValue12 = workingValue12(text3)
            text3 = TriggerServerEvent
            number = "4f29e75b8e"
            workingValue13 = workingValue12
            workingValue14 = dataCollection[dataCollection2]
            workingValue14 = workingValue14[2]
            cmgOperation2 = CMG
            cmgOperation2 = cmgOperation2.getPlayerCoords
            -- Beginner: result below is playerCoords.
            cmgOperation2 = cmgOperation2()
            stateFlag15 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4f29e75b8e".
            text3(number, workingValue13, workingValue14, cmgOperation2, stateFlag15)
            workingValue11 = true
          end
          workingValue12 = IsDisabledControlJustPressed
          text3 = 0
          number = 191
          workingValue12 = workingValue12(text3, number)
          if workingValue12 then
            workingValue12 = NetworkGetNetworkIdFromEntity
            text3 = workingValue19
            workingValue12 = workingValue12(text3)
            text3 = TriggerServerEvent
            number = "4f29e75b8e"
            workingValue13 = workingValue12
            workingValue14 = dataCollection[dataCollection2]
            workingValue14 = workingValue14[2]
            cmgOperation2 = CMG
            cmgOperation2 = cmgOperation2.getPlayerCoords
            -- Beginner: result below is playerCoords.
            cmgOperation2 = cmgOperation2()
            stateFlag15 = false
            text3(number, workingValue13, workingValue14, cmgOperation2, stateFlag15)
            workingValue11 = true
          end
          workingValue12 = Wait
          text3 = 0
          workingValue12(text3)
        end
      else
        workingValue23 = drawNativeText
        text21 = "Vehicle ~r~not found"
        -- Beginner: Draw GTA-style text on screen.
        workingValue23(text21)
      end
      workingValue23 = Wait
      text21 = 100
      workingValue23(text21)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: eventHandler10; parameters: none) ===
function eventHandler10()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  if 0 ~= localValue2 then
    localValue3 = tCMG
    localValue3 = localValue3.notify
    localValue4 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
    return
  end
  localValue3 = stateFlag5
  if not localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.loadModel
    localValue4 = eventHandler9
    -- Beginner: Request/load a GTA model before spawning or applying it.
    localValue3(localValue4)
    localValue3 = CMG
    localValue3 = localValue3.loadAnimDict
    localValue4 = "weapons@heavy@minigun"
    -- Beginner: Load a GTA animation dictionary before using it.
    localValue3(localValue4)
    localValue3 = TaskPlayAnim
    localValue4 = localValue1
    localValue5 = "weapons@heavy@minigun"
    localValue6 = "idle_2_aim_right_med"
    localValue7 = -8.0
    localValue8 = 8.0
    localValue9 = -1
    workingValue27 = 50
    workingValue2 = 8.0
    workingValue5 = false
    stateFlag3 = false
    stateFlag6 = false
    -- Beginner: Play an animation on a ped.
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6)
    localValue3 = RemoveAnimDict
    localValue4 = "weapons@heavy@minigun"
    localValue3(localValue4)
    localValue3 = CMG
    localValue3 = localValue3.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue3 = localValue3()
    localValue4 = CMG
    localValue4 = localValue4.requestEntitySpawn
    localValue5 = "lfb_prop"
    localValue6 = "spreaders"
    localValue7 = localValue3
    localValue4(localValue5, localValue6, localValue7)
    localValue4 = CreateObject
    localValue5 = eventHandler9
    localValue6 = localValue3.x
    localValue7 = localValue3.y
    localValue8 = localValue3.z
    localValue9 = true
    workingValue27 = true
    workingValue2 = true
    -- Beginner: result below is objectEntity.
    localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2)
    localValue5 = TriggerServerEvent
    localValue6 = "3a7f6a2bdf"
    localValue7 = "Rescue Cushion"
    localValue8 = GetEntityCoords
    localValue9 = localValue4
    workingValue27 = true
    localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12 = localValue8(localValue9, workingValue27)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
    localValue5(localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12)
    text17 = localValue4
    localValue5 = SetEntityCollision
    localValue6 = localValue4
    localValue7 = false
    localValue8 = true
    localValue5(localValue6, localValue7, localValue8)
    localValue5 = GetPedBoneIndex
    localValue6 = localValue1
    localValue7 = 57005
    localValue5 = localValue5(localValue6, localValue7)
    localValue6 = AttachEntityToEntity
    localValue7 = localValue4
    localValue8 = localValue1
    localValue9 = localValue5
    workingValue27 = 1.0
    workingValue2 = 0.4
    workingValue5 = 0.7
    stateFlag3 = 0.0
    stateFlag6 = 220.0
    workingValue9 = 200.0
    stateFlag7 = true
    stateFlag8 = true
    stateFlag9 = true
    stateFlag10 = true
    stateFlag11 = 1
    stateFlag12 = true
    -- Beginner: Attach one entity to another entity.
    localValue6(localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12)
    localValue6 = SetModelAsNoLongerNeeded
    localValue7 = eventHandler9
    localValue6(localValue7)
    localValue6 = true
    stateFlag5 = localValue6
    localValue6 = workingValue21
    localValue6()
  else
    localValue3 = false
    stateFlag5 = localValue3
    localValue3 = DoesEntityExist
    localValue4 = text17
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = TriggerServerEvent
      localValue4 = "ef321f8c43"
      localValue5 = NetworkGetNetworkIdFromEntity
      localValue6 = text17
      localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12 = localValue5(localValue6)
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef321f8c43".
      localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12)
      localValue3 = DetachEntity
      localValue4 = localValue1
      localValue5 = false
      localValue6 = false
      localValue3(localValue4, localValue5, localValue6)
      localValue3 = DetachEntity
      localValue4 = text17
      localValue5 = false
      localValue6 = false
      localValue3(localValue4, localValue5, localValue6)
      localValue3 = DeleteEntity
      localValue4 = text17
      -- Beginner: Delete a GTA entity.
      localValue3(localValue4)
      localValue3 = ClearPedTasks
      localValue4 = localValue1
      localValue3(localValue4)
    end
  end
end
workingValue24 = eventHandler10
eventHandler10 = RegisterNetEvent
text18 = "4f29e75b8e"
-- Beginner: this function handles network event "4f29e75b8e".

-- === HELPER FUNCTION (decompiler name: eventHandler11; parameters: localValue1, localValue2, localValue3, localValue4) ===
function eventHandler11(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27
  localValue5 = CMG
  localValue5 = localValue5.getObjectId
  localValue6 = localValue1
  localValue7 = "4f29e75b8e"
  localValue5 = localValue5(localValue6, localValue7)
  localValue6 = DoesEntityExist
  localValue7 = localValue5
  localValue6 = localValue6(localValue7)
  if localValue6 then
    if localValue4 then
      localValue6 = SetVehicleDoorOpen
      localValue7 = localValue5
      localValue8 = localValue2
      localValue9 = false
      workingValue27 = true
      localValue6(localValue7, localValue8, localValue9, workingValue27)
      localValue6 = SetVehicleDoorBroken
      localValue7 = localValue5
      localValue8 = localValue2
      localValue9 = false
      localValue6(localValue7, localValue8, localValue9)
    else
      localValue6 = SetVehicleDoorOpen
      localValue7 = localValue5
      localValue8 = localValue2
      localValue9 = false
      workingValue27 = true
      localValue6(localValue7, localValue8, localValue9, workingValue27)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4f29e75b8e".
eventHandler10(text18, eventHandler11)
eventHandler10 = RegisterNetEvent
text18 = "900e57e8c0"
-- Beginner: this function handles network event "900e57e8c0".

-- === HELPER FUNCTION (decompiler name: eventHandler11; parameters: localValue1) ===
function eventHandler11(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = localValue1 - localValue2
  localValue3 = #localValue3
  if localValue3 < 15.0 then
    localValue4 = SendNUIMessage
    localValue5 = {}
    localValue5.transactionType = "spreader"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue4(localValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "900e57e8c0".
eventHandler10(text18, eventHandler11)

-- === HELPER FUNCTION (decompiler name: eventHandler10; parameters: localValue1, localValue2) ===
function eventHandler10(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7 in localValue3, localValue4, localValue5, localValue6 do
    if localValue7 == localValue2 then
      localValue8 = true
      return localValue8
    end
  end
  localValue3 = false
  return localValue3
end
text18 = -215281418

-- === HELPER FUNCTION (decompiler name: eventHandler11; parameters: localValue1) ===
function eventHandler11(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = CMG
  localValue3 = localValue3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3()
  if 0 ~= localValue3 then
    localValue3 = tCMG
    localValue3 = localValue3.notify
    localValue4 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
    return
  end
  localValue3 = workingValue20
  localValue3 = localValue3()
  if 0 ~= localValue3 and nil ~= localValue3 then
    localValue4 = NetworkGetNetworkIdFromEntity
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    localValue5 = eventHandler10
    localValue6 = dataCollection4
    localValue7 = localValue4
    localValue5 = localValue5(localValue6, localValue7)
    if localValue1 then
      if localValue5 then
        localValue6 = tCMG
        localValue6 = localValue6.notify
        localValue7 = "~r~Error~w~: Stabilisers are already setup on this vehicle"
        localValue6(localValue7)
      else
        localValue6 = FreezeEntityPosition
        localValue7 = localValue3
        localValue8 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        localValue6(localValue7, localValue8)
        localValue6 = CMG
        localValue6 = localValue6.loadModel
        localValue7 = text18
        -- Beginner: Request/load a GTA model before spawning or applying it.
        localValue6(localValue7)
        localValue6 = GetOffsetFromEntityInWorldCoords
        localValue7 = localValue2
        localValue8 = -0.7
        localValue9 = 1.0
        workingValue27 = 0.0
        localValue6 = localValue6(localValue7, localValue8, localValue9, workingValue27)
        localValue7 = CMG
        localValue7 = localValue7.requestEntitySpawn
        localValue8 = "lfb_prop"
        localValue9 = "stabilisers"
        workingValue27 = localValue6
        localValue7(localValue8, localValue9, workingValue27)
        localValue7 = CreateObject
        localValue8 = text18
        localValue9 = localValue6.x
        workingValue27 = localValue6.y
        workingValue2 = localValue6.z
        workingValue5 = true
        stateFlag3 = true
        stateFlag6 = true
        -- Beginner: result below is objectEntity.
        localValue7 = localValue7(localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6)
        while true do
          localValue8 = DoesEntityExist
          localValue9 = localValue7
          localValue8 = localValue8(localValue9)
          if localValue8 then
            break
          end
          localValue8 = Wait
          localValue9 = 0
          localValue8(localValue9)
        end
        localValue8 = TriggerServerEvent
        localValue9 = "3a7f6a2bdf"
        workingValue27 = "Vehicle Stablisers"
        workingValue2 = GetEntityCoords
        workingValue5 = localValue7
        stateFlag3 = true
        workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14 = workingValue2(workingValue5, stateFlag3)
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
        localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14)
        localValue8 = SetEntityCollision
        localValue9 = localValue7
        workingValue27 = false
        workingValue2 = true
        localValue8(localValue9, workingValue27, workingValue2)
        localValue8 = GetOffsetFromEntityInWorldCoords
        localValue9 = localValue2
        workingValue27 = -0.7
        workingValue2 = 0.0
        workingValue5 = 0.0
        localValue8 = localValue8(localValue9, workingValue27, workingValue2, workingValue5)
        localValue9 = CMG
        localValue9 = localValue9.requestEntitySpawn
        workingValue27 = "lfb_prop"
        workingValue2 = "stabilisers"
        workingValue5 = localValue8
        localValue9(workingValue27, workingValue2, workingValue5)
        localValue9 = CreateObject
        workingValue27 = text18
        workingValue2 = localValue8.x
        workingValue5 = localValue8.y
        stateFlag3 = localValue8.z
        stateFlag6 = true
        workingValue9 = true
        stateFlag7 = true
        -- Beginner: result below is objectEntity.
        localValue9 = localValue9(workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7)
        workingValue27 = SetEntityCollision
        workingValue2 = localValue9
        workingValue5 = false
        stateFlag3 = true
        workingValue27(workingValue2, workingValue5, stateFlag3)
        while true do
          workingValue27 = DoesEntityExist
          workingValue2 = localValue7
          workingValue27 = workingValue27(workingValue2)
          if workingValue27 then
            workingValue27 = DoesEntityExist
            workingValue2 = localValue9
            workingValue27 = workingValue27(workingValue2)
            if workingValue27 then
              break
            end
          end
          workingValue27 = Wait
          workingValue2 = 0
          workingValue27(workingValue2)
        end
        workingValue27 = GetEntityHeading
        workingValue2 = localValue2
        -- Beginner: result below is heading.
        workingValue27 = workingValue27(workingValue2)
        workingValue2 = SetEntityHeading
        workingValue5 = localValue7
        stateFlag3 = workingValue27
        -- Beginner: Change the direction an entity is facing.
        workingValue2(workingValue5, stateFlag3)
        workingValue2 = SetEntityHeading
        workingValue5 = localValue9
        stateFlag3 = workingValue27
        workingValue2(workingValue5, stateFlag3)
        workingValue2 = GetEntityCoords
        workingValue5 = localValue7
        -- Beginner: result below is entityCoords.
        workingValue2 = workingValue2(workingValue5)
        workingValue5 = GetGroundZFor_3dCoord
        stateFlag3 = workingValue2.x
        stateFlag6 = workingValue2.y
        stateFlag6 = stateFlag6 + 0.9
        workingValue9 = workingValue2.z
        workingValue9 = workingValue9 - 0.3
        stateFlag7 = 0
        stateFlag8 = false
        workingValue5, stateFlag3 = workingValue5(stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8)
        stateFlag6 = SetEntityCoords
        workingValue9 = localValue7
        stateFlag7 = workingValue2.x
        stateFlag8 = workingValue2.y
        stateFlag9 = stateFlag3
        stateFlag10 = true
        stateFlag11 = true
        stateFlag12 = true
        stateFlag13 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        stateFlag6(workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13)
        stateFlag6 = GetEntityCoords
        workingValue9 = localValue9
        -- Beginner: result below is entityCoords.
        stateFlag6 = stateFlag6(workingValue9)
        workingValue9 = GetGroundZFor_3dCoord
        stateFlag7 = stateFlag6.x
        stateFlag8 = stateFlag6.y
        stateFlag8 = stateFlag8 + 0.9
        stateFlag9 = stateFlag6.z
        stateFlag9 = stateFlag9 - 0.3
        stateFlag10 = 0
        stateFlag11 = false
        workingValue9, stateFlag7 = workingValue9(stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11)
        stateFlag3 = stateFlag7
        workingValue5 = workingValue9
        workingValue9 = SetEntityCoords
        stateFlag7 = localValue9
        stateFlag8 = stateFlag6.x
        stateFlag9 = stateFlag6.y
        stateFlag10 = stateFlag3
        stateFlag11 = true
        stateFlag12 = true
        stateFlag13 = true
        stateFlag14 = false
        workingValue9(stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14)
        workingValue9 = PlaceObjectOnGroundProperly
        stateFlag7 = localValue7
        workingValue9(stateFlag7)
        workingValue9 = PlaceObjectOnGroundProperly
        stateFlag7 = localValue9
        workingValue9(stateFlag7)
        workingValue9 = FreezeEntityPosition
        stateFlag7 = localValue7
        stateFlag8 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        workingValue9(stateFlag7, stateFlag8)
        workingValue9 = FreezeEntityPosition
        stateFlag7 = localValue9
        stateFlag8 = true
        workingValue9(stateFlag7, stateFlag8)
        workingValue9 = NetworkGetNetworkIdFromEntity
        stateFlag7 = localValue7
        workingValue9 = workingValue9(stateFlag7)
        stateFlag7 = NetworkGetNetworkIdFromEntity
        stateFlag8 = localValue9
        stateFlag7 = stateFlag7(stateFlag8)
        stateFlag8 = dataCollection4
        stateFlag9 = {}
        stateFlag10 = localValue4
        stateFlag11 = workingValue9
        stateFlag12 = stateFlag7
        stateFlag9[1] = stateFlag10
        stateFlag9[2] = stateFlag11
        stateFlag9[3] = stateFlag12
        stateFlag8[localValue4] = stateFlag9
        stateFlag8 = TriggerServerEvent
        stateFlag9 = "2580a73806"
        stateFlag10 = localValue4
        stateFlag11 = dataCollection4
        stateFlag11 = stateFlag11[localValue4]
        stateFlag12 = false
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2580a73806".
        stateFlag8(stateFlag9, stateFlag10, stateFlag11, stateFlag12)
        stateFlag8 = SetModelAsNoLongerNeeded
        stateFlag9 = text18
        stateFlag8(stateFlag9)
        stateFlag8 = tCMG
        stateFlag8 = stateFlag8.notify
        stateFlag9 = "~g~Success~w~: Stabilisers setup"
        -- Beginner: Show a notification to the player.
        stateFlag8(stateFlag9)
      end
    elseif localValue5 then
      localValue6 = CMG
      localValue6 = localValue6.getObjectId
      localValue7 = dataCollection4
      localValue7 = localValue7[localValue4]
      localValue7 = localValue7[2]
      localValue8 = "handleStabilisers 1"
      localValue6 = localValue6(localValue7, localValue8)
      localValue7 = CMG
      localValue7 = localValue7.getObjectId
      localValue8 = dataCollection4
      localValue8 = localValue8[localValue4]
      localValue8 = localValue8[3]
      localValue9 = "handleStabilisers 2"
      localValue7 = localValue7(localValue8, localValue9)
      localValue8 = TriggerServerEvent
      localValue9 = "2580a73806"
      workingValue27 = localValue4
      workingValue2 = dataCollection4
      workingValue2 = workingValue2[localValue4]
      workingValue5 = true
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2580a73806".
      localValue8(localValue9, workingValue27, workingValue2, workingValue5)
      if localValue6 then
        localValue8 = DoesEntityExist
        localValue9 = localValue6
        localValue8 = localValue8(localValue9)
        if localValue8 then
          localValue8 = TriggerServerEvent
          localValue9 = "ef321f8c43"
          workingValue27 = NetworkGetNetworkIdFromEntity
          workingValue2 = localValue6
          workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14 = workingValue27(workingValue2)
          localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14)
          localValue8 = DeleteEntity
          localValue9 = localValue6
          -- Beginner: Delete a GTA entity.
          localValue8(localValue9)
        end
      end
      if localValue7 then
        localValue8 = DoesEntityExist
        localValue9 = localValue7
        localValue8 = localValue8(localValue9)
        if localValue8 then
          localValue8 = TriggerServerEvent
          localValue9 = "ef321f8c43"
          workingValue27 = NetworkGetNetworkIdFromEntity
          workingValue2 = localValue7
          workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14 = workingValue27(workingValue2)
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef321f8c43".
          localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14)
          localValue8 = DeleteEntity
          localValue9 = localValue7
          -- Beginner: Delete a GTA entity.
          localValue8(localValue9)
        end
      end
      localValue8 = TriggerServerEvent
      localValue9 = "9efbf4fd13"
      workingValue27 = localValue4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9efbf4fd13".
      localValue8(localValue9, workingValue27)
      localValue8 = dataCollection4
      localValue8[localValue4] = nil
      localValue8 = tCMG
      localValue8 = localValue8.notify
      localValue9 = "~g~Success~w~: Stabilisers removed"
      -- Beginner: Show a notification to the player.
      localValue8(localValue9)
    else
      localValue6 = tCMG
      localValue6 = localValue6.notify
      localValue7 = "~r~Error~w~: No stabilisers found"
      localValue6(localValue7)
    end
  else
    localValue4 = tCMG
    localValue4 = localValue4.notify
    localValue5 = "~r~Error~w~: No vehicle found"
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
  end
end
workingValue16 = eventHandler11
eventHandler11 = RegisterNetEvent
stateFlag28 = "9efbf4fd13"
-- Beginner: this function handles network event "9efbf4fd13".

-- === HELPER FUNCTION (decompiler name: number20; parameters: localValue1) ===
function number20(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = NetworkDoesNetworkIdExist
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = NetworkGetEntityFromNetworkId
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue3 = FreezeEntityPosition
    localValue4 = localValue2
    localValue5 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue3(localValue4, localValue5)
    localValue3 = DetachEntity
    localValue4 = localValue2
    localValue5 = false
    localValue6 = false
    localValue3(localValue4, localValue5, localValue6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9efbf4fd13".
eventHandler11(stateFlag28, number20)
eventHandler11 = 1382870425

-- === HELPER FUNCTION (decompiler name: stateFlag28; parameters: localValue1) ===
function stateFlag28(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = CMG
  localValue3 = localValue3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3()
  if 0 ~= localValue3 then
    localValue4 = tCMG
    localValue4 = localValue4.notify
    localValue5 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue4 = localValue4()
  if localValue1 then
    localValue5 = CMG
    localValue5 = localValue5.loadModel
    localValue6 = eventHandler11
    -- Beginner: Request/load a GTA model before spawning or applying it.
    localValue5(localValue6)
    localValue5 = GetOffsetFromEntityInWorldCoords
    localValue6 = localValue2
    localValue7 = 0.0
    localValue8 = 1.6
    localValue9 = 0.0
    localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9)
    localValue6 = CMG
    localValue6 = localValue6.requestEntitySpawn
    localValue7 = "lfb_prop"
    localValue8 = "fan"
    localValue9 = localValue5
    localValue6(localValue7, localValue8, localValue9)
    localValue6 = CreateObject
    localValue7 = eventHandler11
    localValue8 = localValue5.x
    localValue9 = localValue5.y
    workingValue27 = localValue5.z
    workingValue2 = true
    workingValue5 = true
    stateFlag3 = true
    -- Beginner: result below is objectEntity.
    localValue6 = localValue6(localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3)
    while true do
      localValue7 = DoesEntityExist
      localValue8 = localValue6
      localValue7 = localValue7(localValue8)
      if localValue7 then
        break
      end
      localValue7 = Wait
      localValue8 = 0
      localValue7(localValue8)
    end
    localValue7 = TriggerServerEvent
    localValue8 = "3a7f6a2bdf"
    localValue9 = "Extractor Fan"
    workingValue27 = GetEntityCoords
    workingValue2 = localValue6
    workingValue5 = true
    workingValue27, workingValue2, workingValue5, stateFlag3 = workingValue27(workingValue2, workingValue5)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
    localValue7(localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3)
    localValue7 = SetEntityCollision
    localValue8 = localValue6
    localValue9 = false
    workingValue27 = true
    localValue7(localValue8, localValue9, workingValue27)
    localValue7 = NetworkGetNetworkIdFromEntity
    localValue8 = localValue6
    localValue7 = localValue7(localValue8)
    localValue8 = PlaceObjectOnGroundProperly
    localValue9 = localValue6
    localValue8(localValue9)
    localValue8 = FreezeEntityPosition
    localValue9 = localValue6
    workingValue27 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue8(localValue9, workingValue27)
    localValue8 = dataCollection5
    localValue9 = {}
    workingValue27 = localValue7
    workingValue2 = localValue5
    localValue9[1] = workingValue27
    localValue9[2] = workingValue2
    localValue8[localValue7] = localValue9
    localValue8 = TriggerServerEvent
    localValue9 = "c9e1fb3817"
    workingValue27 = localValue7
    workingValue2 = dataCollection5
    workingValue2 = workingValue2[localValue7]
    workingValue5 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c9e1fb3817".
    localValue8(localValue9, workingValue27, workingValue2, workingValue5)
    localValue8 = SetModelAsNoLongerNeeded
    localValue9 = eventHandler11
    localValue8(localValue9)
    localValue8 = tCMG
    localValue8 = localValue8.notify
    localValue9 = "~g~Success~w~: Fan setup"
    -- Beginner: Show a notification to the player.
    localValue8(localValue9)
    localValue8 = TriggerServerEvent
    localValue9 = "4a9a9f7b1f"
    workingValue27 = localValue4
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4a9a9f7b1f".
    localValue8(localValue9, workingValue27)
  else
    localValue5 = false
    localValue6 = 0
    localValue7 = pairs
    localValue8 = dataCollection5
    localValue7, localValue8, localValue9, workingValue27 = localValue7(localValue8)
    for workingValue2, workingValue5 in localValue7, localValue8, localValue9, workingValue27 do
      stateFlag3 = workingValue5[2]
      stateFlag3 = localValue4 - stateFlag3
      stateFlag3 = #stateFlag3
      if stateFlag3 < 15.0 then
        localValue6 = workingValue2
        localValue5 = true
        break
      end
    end
    if localValue5 then
      localValue7 = CMG
      localValue7 = localValue7.getObjectId
      localValue8 = dataCollection5
      localValue8 = localValue8[localValue6]
      localValue8 = localValue8[1]
      localValue9 = "handleFan"
      localValue7 = localValue7(localValue8, localValue9)
      localValue8 = TriggerServerEvent
      localValue9 = "c9e1fb3817"
      workingValue27 = localValue6
      workingValue2 = dataCollection5
      workingValue2 = workingValue2[localValue6]
      workingValue5 = true
      localValue8(localValue9, workingValue27, workingValue2, workingValue5)
      if localValue7 then
        localValue8 = DoesEntityExist
        localValue9 = localValue7
        localValue8 = localValue8(localValue9)
        if localValue8 then
          localValue8 = TriggerServerEvent
          localValue9 = "ef321f8c43"
          workingValue27 = NetworkGetNetworkIdFromEntity
          workingValue2 = localValue7
          workingValue27, workingValue2, workingValue5, stateFlag3 = workingValue27(workingValue2)
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef321f8c43".
          localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3)
          localValue8 = DeleteEntity
          localValue9 = localValue7
          -- Beginner: Delete a GTA entity.
          localValue8(localValue9)
        end
      end
      localValue8 = dataCollection5
      localValue8[localValue6] = nil
      localValue8 = tCMG
      localValue8 = localValue8.notify
      localValue9 = "~g~Success~w~: Fan removed"
      -- Beginner: Show a notification to the player.
      localValue8(localValue9)
    else
      localValue7 = tCMG
      localValue7 = localValue7.notify
      localValue8 = "~r~Error~w~: No fan found"
      localValue7(localValue8)
    end
  end
end
stateFlag22 = stateFlag28
stateFlag28 = false
number20 = 0
eventHandler12 = Citizen
eventHandler12 = eventHandler12.CreateThread

-- === HELPER FUNCTION (decompiler name: text19; parameters: none) ===
function text19()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue1 = localValue1()
    localValue2 = stateFlag28
    if localValue2 then
      localValue3 = number20
      localValue2 = dataCollection5
      localValue2 = localValue2[localValue3]
      if nil ~= localValue2 then
        localValue3 = number20
        localValue2 = dataCollection5
        localValue2 = localValue2[localValue3]
        localValue2 = localValue2[2]
        if nil ~= localValue2 then
          localValue3 = number20
          localValue2 = dataCollection5
          localValue2 = localValue2[localValue3]
          localValue2 = localValue2[2]
          localValue2 = localValue1 - localValue2
          localValue2 = #localValue2
          if localValue2 > 20.0 then
            localValue3 = false
            stateFlag28 = localValue3
          else
            localValue3 = SendNUIMessage
            localValue4 = {}
            localValue4.transactionType = "fan"
            -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
            localValue3(localValue4)
            localValue3 = Wait
            localValue4 = 10000
            localValue3(localValue4)
          end
        end
      end
    else
      localValue2 = pairs
      localValue3 = dataCollection5
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
      for localValue6 in localValue2, localValue3, localValue4, localValue5 do
        localValue7 = dataCollection5
        localValue7 = localValue7[localValue6]
        localValue7 = localValue7[2]
        localValue7 = localValue1 - localValue7
        localValue7 = #localValue7
        if localValue7 < 20.0 then
          localValue8 = true
          stateFlag28 = localValue8
          number20 = localValue6
          localValue8 = SendNUIMessage
          localValue9 = {}
          localValue9.transactionType = "fan"
          -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
          localValue8(localValue9)
          localValue8 = Wait
          localValue9 = 10000
          localValue8(localValue9)
        end
      end
    end
    localValue2 = Wait
    localValue3 = 2000
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler12(text19)
eventHandler12 = RegisterNetEvent
text19 = "26cf6c5bda"
-- Beginner: this function handles network event "26cf6c5bda".

-- === HELPER FUNCTION (decompiler name: eventHandler13; parameters: localValue1, localValue2, localValue3) ===
function eventHandler13(localValue1, localValue2, localValue3)
  local localValue4
  if localValue3 then
    localValue4 = dataCollection6
    localValue4[localValue1] = nil
    return
  end
  localValue4 = dataCollection6
  localValue4[localValue1] = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "26cf6c5bda".
eventHandler12(text19, eventHandler13)
eventHandler12 = RegisterNetEvent
text19 = "947eb3be89"
-- Beginner: this function handles network event "947eb3be89".

-- === HELPER FUNCTION (decompiler name: eventHandler13; parameters: localValue1, localValue2, localValue3) ===
function eventHandler13(localValue1, localValue2, localValue3)
  local localValue4
  if localValue3 then
    localValue4 = dataCollection7
    localValue4[localValue1] = nil
    return
  end
  localValue4 = dataCollection7
  localValue4[localValue1] = localValue2
end
eventHandler12(text19, eventHandler13)
eventHandler12 = RegisterNetEvent
text19 = "4726a0ee92"
-- Beginner: this function handles network event "4726a0ee92".

-- === HELPER FUNCTION (decompiler name: eventHandler13; parameters: localValue1) ===
function eventHandler13(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.getObjectId
  localValue3 = localValue1
  localValue4 = "4726a0ee92"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue3 = DoesEntityExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = ResetVehicleWheels
      localValue4 = localValue2
      localValue5 = true
      localValue3(localValue4, localValue5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4726a0ee92".
eventHandler12(text19, eventHandler13)
eventHandler12 = 276838402

-- === HELPER FUNCTION (decompiler name: text19; parameters: localValue1, localValue2, localValue3) ===
function text19(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2
  localValue4 = NetworkGetNetworkIdFromEntity
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  localValue5 = NetworkGetNetworkIdFromEntity
  localValue6 = localValue3
  localValue5 = localValue5(localValue6)
  if 0 == localValue4 or 0 == localValue5 then
    return
  end
  localValue6 = true
  stateFlag21 = localValue6
  localValue6 = drawNativeNotification
  localValue7 = "Use ~INPUT_CELLPHONE_UP~ and ~INPUT_CELLPHONE_DOWN~ to adjust the height"
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue6(localValue7)
  localValue6 = tCMG
  localValue6 = localValue6.notify
  localValue7 = "~g~Success~w~: Use ARROW UP and ARROW DOWN to adjust the height. Press ENTER when done"
  -- Beginner: Show a notification to the player.
  localValue6(localValue7)
  localValue6 = dataCollection6
  localValue6 = localValue6[localValue2]
  localValue6 = localValue6[4]
  localValue7 = dataCollection6
  localValue7 = localValue7[localValue2]
  localValue7[5] = true
  while true do
    localValue7 = stateFlag21
    if not localValue7 then
      break
    end
    localValue7 = DisableControlAction
    localValue8 = 0
    localValue9 = 172
    workingValue27 = true
    localValue7(localValue8, localValue9, workingValue27)
    localValue7 = DisableControlAction
    localValue8 = 0
    localValue9 = 173
    workingValue27 = true
    localValue7(localValue8, localValue9, workingValue27)
    localValue7 = IsDisabledControlJustPressed
    localValue8 = 0
    localValue9 = 172
    localValue7 = localValue7(localValue8, localValue9)
    if localValue7 then
      localValue6 = localValue6 + 0.007
      localValue7 = 0.8
      if localValue6 > localValue7 then
        localValue6 = 0.8
      end
      localValue7 = TriggerServerEvent
      localValue8 = "48188fae63"
      localValue9 = localValue4
      workingValue27 = localValue5
      workingValue2 = localValue6
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "48188fae63".
      localValue7(localValue8, localValue9, workingValue27, workingValue2)
    end
    localValue7 = IsDisabledControlJustPressed
    localValue8 = 0
    localValue9 = 173
    localValue7 = localValue7(localValue8, localValue9)
    if localValue7 then
      localValue6 = localValue6 - 0.007
      localValue7 = -0.7
      if localValue6 < localValue7 then
        localValue6 = -0.7
      end
      localValue7 = TriggerServerEvent
      localValue8 = "48188fae63"
      localValue9 = localValue4
      workingValue27 = localValue5
      workingValue2 = localValue6
      localValue7(localValue8, localValue9, workingValue27, workingValue2)
    end
    localValue7 = IsDisabledControlJustPressed
    localValue8 = 0
    localValue9 = 215
    localValue7 = localValue7(localValue8, localValue9)
    if localValue7 then
      localValue7 = TriggerServerEvent
      localValue8 = "e03701fd84"
      localValue9 = localValue4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e03701fd84".
      localValue7(localValue8, localValue9)
      localValue7 = dataCollection6
      localValue7 = localValue7[localValue2]
      localValue7[5] = false
      localValue7 = dataCollection6
      localValue7 = localValue7[localValue2]
      localValue7[4] = localValue6
      localValue7 = TriggerServerEvent
      localValue8 = "26cf6c5bda"
      localValue9 = localValue2
      workingValue27 = dataCollection6
      workingValue27 = workingValue27[localValue2]
      workingValue2 = false
      localValue7(localValue8, localValue9, workingValue27, workingValue2)
      localValue7 = tCMG
      localValue7 = localValue7.notify
      localValue8 = "~g~Success~w~: You've stopped controlling the inflatable jack"
      -- Beginner: Show a notification to the player.
      localValue7(localValue8)
      localValue7 = false
      stateFlag21 = localValue7
    end
    localValue7 = Wait
    localValue8 = 0
    localValue7(localValue8)
  end
end

-- === HELPER FUNCTION (decompiler name: eventHandler13; parameters: localValue1) ===
function eventHandler13(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10
  localValue2 = workingValue20
  localValue2 = localValue2()
  if 0 ~= localValue2 and nil ~= localValue2 then
    localValue3 = NetworkGetNetworkIdFromEntity
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    localValue4 = eventHandler10
    localValue5 = dataCollection6
    localValue6 = localValue3
    localValue4 = localValue4(localValue5, localValue6)
    localValue5 = false
    if localValue4 then
      localValue6 = dataCollection6
      localValue6 = localValue6[localValue3]
      localValue5 = localValue6[5]
    end
    localValue6 = stateFlag21
    if localValue6 then
      localValue6 = tCMG
      localValue6 = localValue6.notify
      localValue7 = "~r~Error~w~: You are currently using a jack. Press ENTER to stop."
      -- Beginner: Show a notification to the player.
      localValue6(localValue7)
      return
    end
    if localValue1 then
      if localValue4 then
        if not localValue5 then
          localValue6 = dataCollection6
          localValue6 = localValue6[localValue3]
          localValue6[5] = true
          localValue6 = TriggerServerEvent
          localValue7 = "26cf6c5bda"
          localValue8 = localValue3
          localValue9 = dataCollection6
          localValue9 = localValue9[localValue3]
          workingValue27 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "26cf6c5bda".
          localValue6(localValue7, localValue8, localValue9, workingValue27)
          localValue6 = CMG
          localValue6 = localValue6.getObjectId
          localValue7 = dataCollection6
          localValue7 = localValue7[localValue3]
          localValue7 = localValue7[2]
          localValue8 = "handleJack 1"
          localValue6 = localValue6(localValue7, localValue8)
          localValue7 = CMG
          localValue7 = localValue7.getObjectId
          localValue8 = dataCollection6
          localValue8 = localValue8[localValue3]
          localValue8 = localValue8[3]
          localValue9 = "handleJack 2"
          localValue7(localValue8, localValue9)
          if localValue6 then
            localValue7 = TriggerServerEvent
            localValue8 = "ef321f8c43"
            localValue9 = NetworkGetNetworkIdFromEntity
            workingValue27 = localValue6
            localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10 = localValue9(workingValue27)
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef321f8c43".
            localValue7(localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
          end
          localValue7 = tCMG
          localValue7 = localValue7.notify
          localValue8 = "~g~Success~w~: You're now controlling the inflatable jack"
          -- Beginner: Show a notification to the player.
          localValue7(localValue8)
          localValue7 = text19
          localValue8 = localValue2
          localValue9 = localValue3
          workingValue27 = localValue6
          localValue7(localValue8, localValue9, workingValue27)
        else
          localValue6 = tCMG
          localValue6 = localValue6.notify
          localValue7 = "~r~Error~w~: This inflatable jack is in use"
          -- Beginner: Show a notification to the player.
          localValue6(localValue7)
        end
      else
        localValue6 = GetOffsetFromEntityInWorldCoords
        localValue7 = localValue2
        localValue8 = -0.7
        localValue9 = 0.0
        workingValue27 = 0.0
        localValue6 = localValue6(localValue7, localValue8, localValue9, workingValue27)
        localValue7 = GetOffsetFromEntityInWorldCoords
        localValue8 = localValue2
        localValue9 = 0.7
        workingValue27 = 0.0
        workingValue2 = 0.0
        localValue7 = localValue7(localValue8, localValue9, workingValue27, workingValue2)
        localValue8 = CMG
        localValue8 = localValue8.loadModel
        localValue9 = eventHandler12
        -- Beginner: Request/load a GTA model before spawning or applying it.
        localValue8(localValue9)
        localValue8 = CMG
        localValue8 = localValue8.requestEntitySpawn
        localValue9 = "lfb_prop"
        workingValue27 = "jack"
        workingValue2 = localValue6
        localValue8(localValue9, workingValue27, workingValue2)
        localValue8 = CreateObject
        localValue9 = eventHandler12
        workingValue27 = localValue6.x
        workingValue2 = localValue6.y
        workingValue5 = localValue6.z
        stateFlag3 = true
        stateFlag6 = true
        workingValue9 = true
        -- Beginner: result below is objectEntity.
        localValue8 = localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9)
        localValue9 = CMG
        localValue9 = localValue9.requestEntitySpawn
        workingValue27 = "lfb_prop"
        workingValue2 = "jack"
        workingValue5 = localValue7
        localValue9(workingValue27, workingValue2, workingValue5)
        localValue9 = CreateObject
        workingValue27 = eventHandler12
        workingValue2 = localValue7.x
        workingValue5 = localValue7.y
        stateFlag3 = localValue7.z
        stateFlag6 = true
        workingValue9 = true
        stateFlag7 = true
        -- Beginner: result below is objectEntity.
        localValue9 = localValue9(workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7)
        while true do
          workingValue27 = DoesEntityExist
          workingValue2 = localValue8
          workingValue27 = workingValue27(workingValue2)
          if workingValue27 then
            workingValue27 = DoesEntityExist
            workingValue2 = localValue9
            workingValue27 = workingValue27(workingValue2)
            if workingValue27 then
              break
            end
          end
          workingValue27 = Wait
          workingValue2 = 0
          workingValue27(workingValue2)
        end
        workingValue27 = TriggerServerEvent
        workingValue2 = "3a7f6a2bdf"
        workingValue5 = "Inflatable Jack"
        stateFlag3 = GetEntityCoords
        stateFlag6 = localValue8
        workingValue9 = true
        stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10 = stateFlag3(stateFlag6, workingValue9)
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
        workingValue27(workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
        workingValue27 = GetEntityHeading
        workingValue2 = localValue2
        -- Beginner: result below is heading.
        workingValue27 = workingValue27(workingValue2)
        workingValue2 = SetEntityHeading
        workingValue5 = localValue8
        stateFlag3 = workingValue27
        -- Beginner: Change the direction an entity is facing.
        workingValue2(workingValue5, stateFlag3)
        workingValue2 = SetEntityHeading
        workingValue5 = localValue9
        stateFlag3 = workingValue27 + 180.0
        workingValue2(workingValue5, stateFlag3)
        workingValue2 = SetEntityCollision
        workingValue5 = localValue8
        stateFlag3 = false
        stateFlag6 = true
        workingValue2(workingValue5, stateFlag3, stateFlag6)
        workingValue2 = SetEntityCollision
        workingValue5 = localValue9
        stateFlag3 = false
        stateFlag6 = true
        workingValue2(workingValue5, stateFlag3, stateFlag6)
        workingValue2 = PlaceObjectOnGroundProperly
        workingValue5 = localValue8
        workingValue2(workingValue5)
        workingValue2 = PlaceObjectOnGroundProperly
        workingValue5 = localValue9
        workingValue2(workingValue5)
        workingValue2 = FreezeEntityPosition
        workingValue5 = localValue8
        stateFlag3 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        workingValue2(workingValue5, stateFlag3)
        workingValue2 = FreezeEntityPosition
        workingValue5 = localValue9
        stateFlag3 = true
        workingValue2(workingValue5, stateFlag3)
        workingValue2 = NetworkGetNetworkIdFromEntity
        workingValue5 = localValue8
        workingValue2 = workingValue2(workingValue5)
        workingValue5 = NetworkGetNetworkIdFromEntity
        stateFlag3 = localValue9
        workingValue5 = workingValue5(stateFlag3)
        stateFlag3 = dataCollection6
        stateFlag6 = {}
        workingValue9 = localValue3
        stateFlag7 = workingValue2
        stateFlag8 = workingValue5
        stateFlag9 = -0.3
        stateFlag10 = true
        stateFlag6[1] = workingValue9
        stateFlag6[2] = stateFlag7
        stateFlag6[3] = stateFlag8
        stateFlag6[4] = stateFlag9
        stateFlag6[5] = stateFlag10
        stateFlag3[localValue3] = stateFlag6
        stateFlag3 = TriggerServerEvent
        stateFlag6 = "26cf6c5bda"
        workingValue9 = localValue3
        stateFlag7 = dataCollection6
        stateFlag7 = stateFlag7[localValue3]
        stateFlag8 = false
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "26cf6c5bda".
        stateFlag3(stateFlag6, workingValue9, stateFlag7, stateFlag8)
        stateFlag3 = SetModelAsNoLongerNeeded
        stateFlag6 = eventHandler12
        stateFlag3(stateFlag6)
        stateFlag3 = tCMG
        stateFlag3 = stateFlag3.notify
        stateFlag6 = "~g~Success~w~: Inflatable jack setup"
        -- Beginner: Show a notification to the player.
        stateFlag3(stateFlag6)
        stateFlag3 = text19
        stateFlag6 = localValue2
        workingValue9 = localValue3
        stateFlag7 = localValue8
        stateFlag3(stateFlag6, workingValue9, stateFlag7)
      end
    elseif localValue4 then
      if localValue5 then
        localValue6 = tCMG
        localValue6 = localValue6.notify
        localValue7 = "~r~Error~w~: This inflatable jack is in use"
        -- Beginner: Show a notification to the player.
        localValue6(localValue7)
      else
        localValue6 = CMG
        localValue6 = localValue6.getObjectId
        localValue7 = dataCollection6
        localValue7 = localValue7[localValue3]
        localValue7 = localValue7[2]
        localValue8 = "handleJack 3"
        localValue6 = localValue6(localValue7, localValue8)
        localValue7 = CMG
        localValue7 = localValue7.getObjectId
        localValue8 = dataCollection6
        localValue8 = localValue8[localValue3]
        localValue8 = localValue8[3]
        localValue9 = "handleJack 4"
        localValue7 = localValue7(localValue8, localValue9)
        localValue8 = TriggerServerEvent
        localValue9 = "26cf6c5bda"
        workingValue27 = localValue3
        workingValue2 = dataCollection6
        workingValue2 = workingValue2[localValue3]
        workingValue5 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "26cf6c5bda".
        localValue8(localValue9, workingValue27, workingValue2, workingValue5)
        if localValue6 then
          localValue8 = DoesEntityExist
          localValue9 = localValue6
          localValue8 = localValue8(localValue9)
          if localValue8 then
            localValue8 = TriggerServerEvent
            localValue9 = "ef321f8c43"
            workingValue27 = NetworkGetNetworkIdFromEntity
            workingValue2 = localValue6
            workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10 = workingValue27(workingValue2)
            localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
            localValue8 = DeleteEntity
            localValue9 = localValue6
            -- Beginner: Delete a GTA entity.
            localValue8(localValue9)
          end
        end
        if localValue7 then
          localValue8 = DoesEntityExist
          localValue9 = localValue7
          localValue8 = localValue8(localValue9)
          if localValue8 then
            localValue8 = TriggerServerEvent
            localValue9 = "ef321f8c43"
            workingValue27 = NetworkGetNetworkIdFromEntity
            workingValue2 = localValue7
            workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10 = workingValue27(workingValue2)
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef321f8c43".
            localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
            localValue8 = DeleteEntity
            localValue9 = localValue7
            -- Beginner: Delete a GTA entity.
            localValue8(localValue9)
          end
        end
        localValue8 = TriggerServerEvent
        localValue9 = "9efbf4fd13"
        workingValue27 = localValue3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9efbf4fd13".
        localValue8(localValue9, workingValue27)
        localValue8 = dataCollection6
        localValue8[localValue3] = nil
        localValue8 = tCMG
        localValue8 = localValue8.notify
        localValue9 = "~g~Success~w~: Inflatable jack removed"
        -- Beginner: Show a notification to the player.
        localValue8(localValue9)
      end
    else
      localValue6 = tCMG
      localValue6 = localValue6.notify
      localValue7 = "~r~Error~w~: No inflatable jack found"
      localValue6(localValue7)
    end
  else
    localValue3 = tCMG
    localValue3 = localValue3.notify
    localValue4 = "~r~Error~w~: No vehicle found"
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
  end
end
workingValue18 = eventHandler13
eventHandler13 = RegisterNetEvent
text20 = "48188fae63"
-- Beginner: this function handles network event "48188fae63".

-- === HELPER FUNCTION (decompiler name: number21; parameters: localValue1, localValue2, localValue3) ===
function number21(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12
  localValue4 = NetworkDoesNetworkIdExist
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = NetworkDoesNetworkIdExist
    localValue5 = localValue2
    localValue4 = localValue4(localValue5)
    if localValue4 then
      goto continueAtStep12
    end
  end
  return
  ::continueAtStep12::
  localValue4 = NetworkGetEntityFromNetworkId
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  localValue5 = NetworkGetEntityFromNetworkId
  localValue6 = localValue2
  localValue5 = localValue5(localValue6)
  if 0 == localValue4 or 0 == localValue5 then
    return
  end
  localValue6 = DetachEntity
  localValue7 = localValue4
  localValue8 = false
  localValue9 = false
  localValue6(localValue7, localValue8, localValue9)
  localValue6 = AttachEntityToEntity
  localValue7 = localValue4
  localValue8 = localValue5
  localValue9 = -1
  workingValue27 = 0.7
  workingValue2 = 0.0
  workingValue5 = localValue3
  stateFlag3 = 0.0
  stateFlag6 = 0.0
  workingValue9 = 0.0
  stateFlag7 = true
  stateFlag8 = false
  stateFlag9 = true
  stateFlag10 = false
  stateFlag11 = 1
  stateFlag12 = true
  -- Beginner: Attach one entity to another entity.
  localValue6(localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "48188fae63".
eventHandler13(text20, number21)
eventHandler13 = RegisterNetEvent
text20 = "e03701fd84"
-- Beginner: this function handles network event "e03701fd84".

-- === HELPER FUNCTION (decompiler name: number21; parameters: localValue1) ===
function number21(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = NetworkDoesNetworkIdExist
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue2 = NetworkGetEntityFromNetworkId
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 == localValue2 then
    return
  end
  localValue3 = DetachEntity
  localValue4 = localValue2
  localValue5 = false
  localValue6 = false
  localValue3(localValue4, localValue5, localValue6)
  localValue3 = FreezeEntityPosition
  localValue4 = localValue2
  localValue5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(localValue4, localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e03701fd84".
eventHandler13(text20, number21)
eventHandler13 = 1800372691

-- === HELPER FUNCTION (decompiler name: text20; parameters: localValue1) ===
function text20(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18, stateFlag19, number5, stateFlag20
  localValue2 = workingValue20
  localValue2 = localValue2()
  if 0 ~= localValue2 and nil ~= localValue2 then
    localValue3 = NetworkGetNetworkIdFromEntity
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    localValue4 = eventHandler10
    localValue5 = dataCollection7
    localValue6 = localValue3
    localValue4 = localValue4(localValue5, localValue6)
    if localValue1 then
      if localValue4 then
        localValue5 = tCMG
        localValue5 = localValue5.notify
        localValue6 = "~r~Error~w~: This vehicle already has chocks setup"
        -- Beginner: Show a notification to the player.
        localValue5(localValue6)
      else
        localValue5 = GetEntityCoords
        localValue6 = localValue2
        -- Beginner: result below is entityCoords.
        localValue5 = localValue5(localValue6)
        localValue6 = ResetVehicleWheels
        localValue7 = localValue2
        localValue8 = true
        localValue6(localValue7, localValue8)
        localValue6 = CMG
        localValue6 = localValue6.loadModel
        localValue7 = eventHandler13
        -- Beginner: Request/load a GTA model before spawning or applying it.
        localValue6(localValue7)
        localValue6 = TriggerServerEvent
        localValue7 = "4726a0ee92"
        localValue8 = localValue3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4726a0ee92".
        localValue6(localValue7, localValue8)
        localValue6 = CMG
        localValue6 = localValue6.requestEntitySpawn
        localValue7 = "lfb_prop"
        localValue8 = "chock"
        localValue9 = localValue5
        localValue6(localValue7, localValue8, localValue9)
        localValue6 = CreateObject
        localValue7 = eventHandler13
        localValue8 = localValue5.x
        localValue9 = localValue5.y
        workingValue27 = localValue5.z
        workingValue2 = true
        workingValue5 = true
        stateFlag3 = true
        -- Beginner: result below is objectEntity.
        localValue6 = localValue6(localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3)
        localValue7 = CMG
        localValue7 = localValue7.requestEntitySpawn
        localValue8 = "lfb_prop"
        localValue9 = "chock"
        workingValue27 = localValue5
        localValue7(localValue8, localValue9, workingValue27)
        localValue7 = CreateObject
        localValue8 = eventHandler13
        localValue9 = localValue5.x
        workingValue27 = localValue5.y
        workingValue2 = localValue5.z
        workingValue5 = true
        stateFlag3 = true
        stateFlag6 = true
        -- Beginner: result below is objectEntity.
        localValue7 = localValue7(localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6)
        localValue8 = CMG
        localValue8 = localValue8.requestEntitySpawn
        localValue9 = "lfb_prop"
        workingValue27 = "chock"
        workingValue2 = localValue5
        localValue8(localValue9, workingValue27, workingValue2)
        localValue8 = CreateObject
        localValue9 = eventHandler13
        workingValue27 = localValue5.x
        workingValue2 = localValue5.y
        workingValue5 = localValue5.z
        stateFlag3 = true
        stateFlag6 = true
        workingValue9 = true
        -- Beginner: result below is objectEntity.
        localValue8 = localValue8(localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9)
        localValue9 = CMG
        localValue9 = localValue9.requestEntitySpawn
        workingValue27 = "lfb_prop"
        workingValue2 = "chock"
        workingValue5 = localValue5
        localValue9(workingValue27, workingValue2, workingValue5)
        localValue9 = CreateObject
        workingValue27 = eventHandler13
        workingValue2 = localValue5.x
        workingValue5 = localValue5.y
        stateFlag3 = localValue5.z
        stateFlag6 = true
        workingValue9 = true
        stateFlag7 = true
        -- Beginner: result below is objectEntity.
        localValue9 = localValue9(workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7)
        while true do
          workingValue27 = DoesEntityExist
          workingValue2 = localValue6
          workingValue27 = workingValue27(workingValue2)
          if workingValue27 then
            workingValue27 = DoesEntityExist
            workingValue2 = localValue7
            workingValue27 = workingValue27(workingValue2)
            if workingValue27 then
              workingValue27 = DoesEntityExist
              workingValue2 = localValue8
              workingValue27 = workingValue27(workingValue2)
              if workingValue27 then
                workingValue27 = DoesEntityExist
                workingValue2 = localValue9
                workingValue27 = workingValue27(workingValue2)
                if workingValue27 then
                  break
                end
              end
            end
          end
          workingValue27 = Wait
          workingValue2 = 0
          workingValue27(workingValue2)
        end
        workingValue27 = TriggerServerEvent
        workingValue2 = "3a7f6a2bdf"
        workingValue5 = "Air Chocks"
        stateFlag3 = GetEntityCoords
        stateFlag6 = localValue6
        workingValue9 = true
        stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18, stateFlag19, number5, stateFlag20 = stateFlag3(stateFlag6, workingValue9)
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
        workingValue27(workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18, stateFlag19, number5, stateFlag20)
        workingValue27 = GetEntityBoneIndexByName
        workingValue2 = localValue2
        workingValue5 = "wheel_lf"
        workingValue27 = workingValue27(workingValue2, workingValue5)
        workingValue2 = GetEntityBoneIndexByName
        workingValue5 = localValue2
        stateFlag3 = "wheel_lr"
        workingValue2 = workingValue2(workingValue5, stateFlag3)
        workingValue5 = GetEntityBoneIndexByName
        stateFlag3 = localValue2
        stateFlag6 = "wheel_rf"
        workingValue5 = workingValue5(stateFlag3, stateFlag6)
        stateFlag3 = GetEntityBoneIndexByName
        stateFlag6 = localValue2
        workingValue9 = "wheel_rr"
        stateFlag3 = stateFlag3(stateFlag6, workingValue9)
        stateFlag6 = FreezeEntityPosition
        workingValue9 = localValue6
        stateFlag7 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        stateFlag6(workingValue9, stateFlag7)
        stateFlag6 = FreezeEntityPosition
        workingValue9 = localValue7
        stateFlag7 = true
        stateFlag6(workingValue9, stateFlag7)
        stateFlag6 = FreezeEntityPosition
        workingValue9 = localValue8
        stateFlag7 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        stateFlag6(workingValue9, stateFlag7)
        stateFlag6 = FreezeEntityPosition
        workingValue9 = localValue9
        stateFlag7 = true
        stateFlag6(workingValue9, stateFlag7)
        stateFlag6 = AttachEntityToEntity
        workingValue9 = localValue6
        stateFlag7 = localValue2
        stateFlag8 = workingValue27
        stateFlag9 = -0.05
        stateFlag10 = 0.25
        stateFlag11 = -0.29
        stateFlag12 = 0.0
        stateFlag13 = 0.0
        stateFlag14 = 90.0
        stateFlag16 = true
        stateFlag17 = false
        stateFlag18 = true
        stateFlag19 = false
        number5 = 1
        stateFlag20 = true
        -- Beginner: Attach one entity to another entity.
        stateFlag6(workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18, stateFlag19, number5, stateFlag20)
        stateFlag6 = AttachEntityToEntity
        workingValue9 = localValue8
        stateFlag7 = localValue2
        stateFlag8 = workingValue5
        stateFlag9 = -0.05
        stateFlag10 = 0.25
        stateFlag11 = 0.29
        stateFlag12 = 180.0
        stateFlag13 = 0.0
        stateFlag14 = -270.0
        stateFlag16 = true
        stateFlag17 = false
        stateFlag18 = true
        stateFlag19 = false
        number5 = 1
        stateFlag20 = true
        stateFlag6(workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18, stateFlag19, number5, stateFlag20)
        stateFlag6 = AttachEntityToEntity
        workingValue9 = localValue7
        stateFlag7 = localValue2
        stateFlag8 = workingValue2
        stateFlag9 = -0.05
        stateFlag10 = -0.25
        stateFlag11 = -0.29
        stateFlag12 = 0.0
        stateFlag13 = 0.0
        stateFlag14 = -90.0
        stateFlag16 = true
        stateFlag17 = false
        stateFlag18 = true
        stateFlag19 = false
        number5 = 1
        stateFlag20 = true
        -- Beginner: Attach one entity to another entity.
        stateFlag6(workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18, stateFlag19, number5, stateFlag20)
        stateFlag6 = AttachEntityToEntity
        workingValue9 = localValue9
        stateFlag7 = localValue2
        stateFlag8 = stateFlag3
        stateFlag9 = -0.05
        stateFlag10 = -0.25
        stateFlag11 = 0.29
        stateFlag12 = 180.0
        stateFlag13 = 0.0
        stateFlag14 = -90.0
        stateFlag16 = true
        stateFlag17 = false
        stateFlag18 = true
        stateFlag19 = false
        number5 = 1
        stateFlag20 = true
        stateFlag6(workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18, stateFlag19, number5, stateFlag20)
        stateFlag6 = SetEntityCollision
        workingValue9 = localValue6
        stateFlag7 = false
        stateFlag8 = true
        stateFlag6(workingValue9, stateFlag7, stateFlag8)
        stateFlag6 = SetEntityCollision
        workingValue9 = localValue7
        stateFlag7 = false
        stateFlag8 = true
        stateFlag6(workingValue9, stateFlag7, stateFlag8)
        stateFlag6 = SetEntityCollision
        workingValue9 = localValue8
        stateFlag7 = false
        stateFlag8 = true
        stateFlag6(workingValue9, stateFlag7, stateFlag8)
        stateFlag6 = SetEntityCollision
        workingValue9 = localValue9
        stateFlag7 = false
        stateFlag8 = true
        stateFlag6(workingValue9, stateFlag7, stateFlag8)
        stateFlag6 = NetworkGetNetworkIdFromEntity
        workingValue9 = localValue6
        stateFlag6 = stateFlag6(workingValue9)
        workingValue9 = NetworkGetNetworkIdFromEntity
        stateFlag7 = localValue7
        workingValue9 = workingValue9(stateFlag7)
        stateFlag7 = NetworkGetNetworkIdFromEntity
        stateFlag8 = localValue8
        stateFlag7 = stateFlag7(stateFlag8)
        stateFlag8 = NetworkGetNetworkIdFromEntity
        stateFlag9 = localValue9
        stateFlag8 = stateFlag8(stateFlag9)
        stateFlag9 = dataCollection7
        stateFlag10 = {}
        stateFlag11 = localValue3
        stateFlag12 = stateFlag6
        stateFlag13 = workingValue9
        stateFlag14 = stateFlag7
        stateFlag16 = stateFlag8
        stateFlag10[1] = stateFlag11
        stateFlag10[2] = stateFlag12
        stateFlag10[3] = stateFlag13
        stateFlag10[4] = stateFlag14
        stateFlag10[5] = stateFlag16
        stateFlag9[localValue3] = stateFlag10
        stateFlag9 = TriggerServerEvent
        stateFlag10 = "947eb3be89"
        stateFlag11 = localValue3
        stateFlag12 = dataCollection7
        stateFlag12 = stateFlag12[localValue3]
        stateFlag13 = false
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "947eb3be89".
        stateFlag9(stateFlag10, stateFlag11, stateFlag12, stateFlag13)
        stateFlag9 = SetModelAsNoLongerNeeded
        stateFlag10 = eventHandler13
        stateFlag9(stateFlag10)
        stateFlag9 = TaskGoStraightToCoord
        stateFlag10 = CMG
        stateFlag10 = stateFlag10.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        stateFlag10 = stateFlag10()
        stateFlag11 = localValue5.x
        stateFlag12 = localValue5.y
        stateFlag13 = localValue5.z
        stateFlag14 = 30.0
        stateFlag16 = 0.5
        stateFlag17 = 0.0
        stateFlag18 = 10.0
        stateFlag9(stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18)
        stateFlag9 = Wait
        stateFlag10 = 2000
        stateFlag9(stateFlag10)
        stateFlag9 = FreezeEntityPosition
        stateFlag10 = localValue2
        stateFlag11 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        stateFlag9(stateFlag10, stateFlag11)
        stateFlag9 = tCMG
        stateFlag9 = stateFlag9.notify
        stateFlag10 = "~g~Success~w~: Car chocks setup"
        -- Beginner: Show a notification to the player.
        stateFlag9(stateFlag10)
      end
    elseif localValue4 then
      localValue5 = Wait
      localValue6 = 2000
      localValue5(localValue6)
      localValue5 = CMG
      localValue5 = localValue5.getObjectId
      localValue6 = dataCollection7
      localValue6 = localValue6[localValue3]
      localValue6 = localValue6[2]
      localValue7 = "chock1"
      localValue5 = localValue5(localValue6, localValue7)
      localValue6 = CMG
      localValue6 = localValue6.getObjectId
      localValue7 = dataCollection7
      localValue7 = localValue7[localValue3]
      localValue7 = localValue7[3]
      localValue8 = "chock2"
      localValue6 = localValue6(localValue7, localValue8)
      localValue7 = CMG
      localValue7 = localValue7.getObjectId
      localValue8 = dataCollection7
      localValue8 = localValue8[localValue3]
      localValue8 = localValue8[4]
      localValue9 = "chock3"
      localValue7 = localValue7(localValue8, localValue9)
      localValue8 = CMG
      localValue8 = localValue8.getObjectId
      localValue9 = dataCollection7
      localValue9 = localValue9[localValue3]
      localValue9 = localValue9[5]
      workingValue27 = "chock4"
      localValue8 = localValue8(localValue9, workingValue27)
      localValue9 = Wait
      workingValue27 = 1000
      localValue9(workingValue27)
      if localValue5 then
        localValue9 = DoesEntityExist
        workingValue27 = localValue5
        localValue9 = localValue9(workingValue27)
        if localValue9 then
          localValue9 = DeleteEntity
          workingValue27 = localValue5
          -- Beginner: Delete a GTA entity.
          localValue9(workingValue27)
        end
      end
      if localValue6 then
        localValue9 = DoesEntityExist
        workingValue27 = localValue6
        localValue9 = localValue9(workingValue27)
        if localValue9 then
          localValue9 = DeleteEntity
          workingValue27 = localValue6
          localValue9(workingValue27)
        end
      end
      if localValue7 then
        localValue9 = DoesEntityExist
        workingValue27 = localValue7
        localValue9 = localValue9(workingValue27)
        if localValue9 then
          localValue9 = DeleteEntity
          workingValue27 = localValue7
          -- Beginner: Delete a GTA entity.
          localValue9(workingValue27)
        end
      end
      if localValue8 then
        localValue9 = DoesEntityExist
        workingValue27 = localValue8
        localValue9 = localValue9(workingValue27)
        if localValue9 then
          localValue9 = DeleteEntity
          workingValue27 = localValue8
          localValue9(workingValue27)
        end
      end
      localValue9 = TriggerServerEvent
      workingValue27 = "947eb3be89"
      workingValue2 = localValue3
      workingValue5 = dataCollection7
      workingValue5 = workingValue5[localValue3]
      stateFlag3 = true
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "947eb3be89".
      localValue9(workingValue27, workingValue2, workingValue5, stateFlag3)
      localValue9 = TriggerServerEvent
      workingValue27 = "9efbf4fd13"
      workingValue2 = localValue3
      localValue9(workingValue27, workingValue2)
      localValue9 = tCMG
      localValue9 = localValue9.notify
      workingValue27 = "~g~Success~w~: Car chocks removed"
      -- Beginner: Show a notification to the player.
      localValue9(workingValue27)
    else
      localValue5 = tCMG
      localValue5 = localValue5.notify
      localValue6 = "~r~Error~w~: No car chocks found"
      localValue5(localValue6)
    end
  else
    localValue3 = tCMG
    localValue3 = localValue3.notify
    localValue4 = "~r~Error~w~: No vehicle found"
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
  end
end
text12 = text20

-- === HELPER FUNCTION (decompiler name: text20; parameters: localValue1) ===
function text20(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  localValue4 = TriggerServerEvent
  localValue5 = "7fef947eae"
  localValue6 = localValue3
  localValue7 = CMG
  localValue7 = localValue7.getNetId
  localValue8 = localValue1
  localValue9 = "spawnRope(entity)"
  localValue7 = localValue7(localValue8, localValue9)
  localValue8 = CMG
  localValue8 = localValue8.getNetId
  localValue9 = localValue2
  workingValue27 = "spawnRope(ped)"
  localValue8, localValue9, workingValue27 = localValue8(localValue9, workingValue27)
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7fef947eae".
  localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27)
  localValue4 = Wait
  localValue5 = 2000
  localValue4(localValue5)
  localValue4 = tCMG
  localValue4 = localValue4.notify
  localValue5 = "~g~Success~w~: Rope is now winding"
  -- Beginner: Show a notification to the player.
  localValue4(localValue5)
end

-- === HELPER FUNCTION (decompiler name: number21; parameters: none) ===
function number21()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue1 = true
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = GiveWeaponToPed
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = -243142012
  localValue6 = 1
  localValue7 = false
  localValue8 = true
  localValue3(localValue4, localValue5, localValue6, localValue7, localValue8)
  localValue3 = false
  localValue4 = 0
  while localValue1 do
    localValue5 = CMG
    localValue5 = localValue5.getPlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue5 = localValue5()
    localValue6 = GetEntityPlayerIsFreeAimingAt
    localValue7 = localValue5
    localValue6, localValue7 = localValue6(localValue7)
    localValue8 = IsPedShooting
    localValue9 = localValue2
    localValue8 = localValue8(localValue9)
    if localValue8 then
      if localValue6 then
        localValue3 = true
        localValue4 = localValue7
        localValue1 = false
        break
      end
      localValue3 = false
      break
    end
    localValue8 = Wait
    localValue9 = 0
    localValue8(localValue9)
  end
  if localValue3 then
    localValue5 = tCMG
    localValue5 = localValue5.notify
    localValue6 = "~g~Success~w~: Throw bag deployed"
    -- Beginner: Show a notification to the player.
    localValue5(localValue6)
    localValue5 = text20
    localValue6 = localValue4
    localValue5(localValue6)
  else
    localValue5 = tCMG
    localValue5 = localValue5.notify
    localValue6 = "~r~Error~w~: No player found"
    -- Beginner: Show a notification to the player.
    localValue5(localValue6)
  end
  localValue1 = false
end
workingValue22 = number21
number21 = 100
eventHandler14 = RegisterNetEvent
text22 = "7fef947eae"
-- Beginner: this function handles network event "7fef947eae".

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1, localValue2, localValue3) ===
function workingValue25(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, workingValue27, workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18, stateFlag19
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue4 = localValue4()
  localValue5 = localValue4 - localValue1
  localValue5 = #localValue5
  if localValue5 < 30.0 then
    localValue6 = RopeLoadTextures
    localValue6()
    localValue6 = CMG
    localValue6 = localValue6.getObjectId
    localValue7 = localValue2
    localValue8 = "spawnThrowBag 1"
    localValue6 = localValue6(localValue7, localValue8)
    localValue7 = CMG
    localValue7 = localValue7.getObjectId
    localValue8 = localValue3
    localValue9 = "spawnThrowBag 2"
    localValue7 = localValue7(localValue8, localValue9)
    localValue8 = GetEntityCoords
    localValue9 = localValue6
    -- Beginner: result below is entityCoords.
    localValue8 = localValue8(localValue9)
    localValue9 = GetEntityCoords
    workingValue27 = localValue6
    -- Beginner: result below is entityCoords.
    localValue9 = localValue9(workingValue27)
    workingValue27 = GetEntityCoords
    workingValue2 = localValue7
    -- Beginner: result below is entityCoords.
    workingValue27 = workingValue27(workingValue2)
    localValue9 = localValue9 - workingValue27
    localValue9 = #localValue9
    workingValue27 = AddRope
    workingValue2 = localValue1.x
    workingValue5 = localValue1.y
    stateFlag3 = localValue1.z
    stateFlag6 = 0.0
    workingValue9 = 0.0
    stateFlag7 = 0.0
    stateFlag8 = localValue9
    stateFlag9 = 2
    stateFlag10 = localValue9 + 10.0
    stateFlag11 = 1.0
    stateFlag12 = 0
    stateFlag13 = false
    stateFlag14 = false
    stateFlag16 = false
    stateFlag17 = 0
    stateFlag18 = false
    stateFlag19 = 0
    workingValue27 = workingValue27(workingValue2, workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18, stateFlag19)
    workingValue2 = AttachEntitiesToRope
    workingValue5 = workingValue27
    stateFlag3 = localValue7
    stateFlag6 = localValue6
    workingValue9 = localValue1.x
    stateFlag7 = localValue1.y
    stateFlag8 = localValue1.z
    stateFlag8 = stateFlag8 + 0.2
    stateFlag9 = localValue8.x
    stateFlag10 = localValue8.y
    stateFlag11 = localValue8.z
    stateFlag11 = stateFlag11 - 0.6
    stateFlag12 = localValue9
    stateFlag13 = true
    stateFlag14 = true
    workingValue2(workingValue5, stateFlag3, stateFlag6, workingValue9, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14)
    workingValue2 = StartRopeWinding
    workingValue5 = workingValue27
    workingValue2(workingValue5)
    workingValue2 = "rcmlastone2leadinout"
    workingValue5 = "sas_idle_sit"
    stateFlag3 = "missprologueig_4@hold_head_base"
    stateFlag6 = "hold_head_loop_base_brad"
    workingValue9 = FreezeEntityPosition
    stateFlag7 = localValue7
    stateFlag8 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    workingValue9(stateFlag7, stateFlag8)
    workingValue9 = CMG
    workingValue9 = workingValue9.loadAnimDict
    stateFlag7 = stateFlag3
    -- Beginner: Load a GTA animation dictionary before using it.
    workingValue9(stateFlag7)
    workingValue9 = TaskPlayAnim
    stateFlag7 = localValue7
    stateFlag8 = stateFlag3
    stateFlag9 = stateFlag6
    stateFlag10 = 8.0
    stateFlag11 = -8.0
    stateFlag12 = -1
    stateFlag13 = 1
    stateFlag14 = 0.0
    stateFlag16 = false
    stateFlag17 = false
    stateFlag18 = false
    -- Beginner: Play an animation on a ped.
    workingValue9(stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18)
    workingValue9 = RemoveAnimDict
    stateFlag7 = stateFlag3
    workingValue9(stateFlag7)
    workingValue9 = false
    while true do
      stateFlag7 = GetEntityCoords
      stateFlag8 = localValue6
      -- Beginner: result below is entityCoords.
      stateFlag7 = stateFlag7(stateFlag8)
      stateFlag8 = GetEntityCoords
      stateFlag9 = localValue7
      -- Beginner: result below is entityCoords.
      stateFlag8 = stateFlag8(stateFlag9)
      stateFlag7 = stateFlag7 - stateFlag8
      stateFlag7 = #stateFlag7
      stateFlag8 = 1.4
      if stateFlag7 < stateFlag8 then
        break
      end
      if not workingValue9 then
        stateFlag7 = IsPedSwimming
        stateFlag8 = localValue6
        stateFlag7 = stateFlag7(stateFlag8)
        if not stateFlag7 then
          workingValue9 = true
          stateFlag7 = CMG
          stateFlag7 = stateFlag7.loadAnimDict
          stateFlag8 = workingValue2
          -- Beginner: Load a GTA animation dictionary before using it.
          stateFlag7(stateFlag8)
          stateFlag7 = TaskPlayAnim
          stateFlag8 = localValue6
          stateFlag9 = workingValue2
          stateFlag10 = workingValue5
          stateFlag11 = 8.0
          stateFlag12 = -8.0
          stateFlag13 = -1
          stateFlag14 = 1
          stateFlag16 = 0.0
          stateFlag17 = false
          stateFlag18 = false
          stateFlag19 = false
          -- Beginner: Play an animation on a ped.
          stateFlag7(stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag16, stateFlag17, stateFlag18, stateFlag19)
          stateFlag7 = RemoveAnimDict
          stateFlag8 = workingValue2
          stateFlag7(stateFlag8)
        end
      end
      stateFlag7 = RopeGetDistanceBetweenEnds
      stateFlag8 = workingValue27
      stateFlag7 = stateFlag7(stateFlag8)
      stateFlag8 = 1.4
      if stateFlag7 < stateFlag8 then
        break
      end
      stateFlag8 = RopeForceLength
      stateFlag9 = workingValue27
      stateFlag10 = stateFlag7 - 0.1
      stateFlag8(stateFlag9, stateFlag10)
      stateFlag8 = number21
      if stateFlag8 < 0 then
        stateFlag8 = Wait
        stateFlag9 = 0
        stateFlag8(stateFlag9)
      else
        stateFlag8 = Wait
        stateFlag9 = number21
        stateFlag8(stateFlag9)
      end
    end
    stateFlag7 = DeleteRope
    stateFlag8 = workingValue27
    stateFlag7(stateFlag8)
    stateFlag7 = ClearPedTasks
    stateFlag8 = localValue6
    stateFlag7(stateFlag8)
    stateFlag7 = ClearPedTasks
    stateFlag8 = localValue7
    stateFlag7(stateFlag8)
    stateFlag7 = FreezeEntityPosition
    stateFlag8 = localValue7
    stateFlag9 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    stateFlag7(stateFlag8, stateFlag9)
    stateFlag7 = RopeUnloadTextures
    stateFlag7()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7fef947eae".
eventHandler14(text22, workingValue25)
eventHandler14 = RegisterNetEvent
text22 = "9d1c946a2e"
-- Beginner: this function handles network event "9d1c946a2e".

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1) ===
function workingValue25(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = GetGroundZAndNormalFor_3dCoord
  localValue3 = localValue1.x
  localValue4 = localValue1.y
  localValue5 = localValue1.z
  localValue2, localValue3 = localValue2(localValue3, localValue4, localValue5)
  if localValue2 then
    localValue4 = math
    localValue4 = localValue4.abs
    localValue5 = localValue1.z
    localValue5 = localValue5 - localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 < 4.0 then
      localValue4 = CMG
      localValue4 = localValue4.isPositionInGreenzone
      localValue5 = localValue1
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = CMG
        localValue4 = localValue4.isPositionInRedzone
        localValue5 = localValue1
        localValue4 = localValue4(localValue5)
        if not localValue4 then
          localValue4 = TriggerServerEvent
          localValue5 = "fe180b3801"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fe180b3801".
          localValue4(localValue5)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9d1c946a2e".
eventHandler14(text22, workingValue25)
