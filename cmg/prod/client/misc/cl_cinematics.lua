--[[
    LEVEL 1 BEGINNER GUIDE — Cinematics
    ========================================

    File: cmg/prod/client/misc/cl_cinematics.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Cinematics feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 112
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
local workingValue, text11, cmgOperation, rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47
workingValue = RMenu
workingValue = workingValue.Add
text11 = "mainmenu"
cmgOperation = "cinematic"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text42 = ""
text48 = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "new_editor"
text54 = "r_editor_header"
rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47 = rageUiOperation(text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54)
workingValue(text11, cmgOperation, rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47)
workingValue = RMenu
text11 = workingValue
workingValue = workingValue.Get
cmgOperation = "mainmenu"
rageUiOperation = "cinematic"
-- Beginner: result below is menu.
workingValue = workingValue(text11, cmgOperation, rageUiOperation)
text11 = workingValue
workingValue = workingValue.SetSubtitle
cmgOperation = "~b~CMG Cinematic Editor"
workingValue(text11, cmgOperation)
workingValue = RMenu
workingValue = workingValue.Add
text11 = "load_scene"
cmgOperation = "cinematic"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text42 = RMenu
text48 = text42
text42 = text42.Get
rageUiOperation2 = "mainmenu"
rageUiOperation3 = "cinematic"
-- Beginner: result below is menu.
text42 = text42(text48, rageUiOperation2, rageUiOperation3)
text48 = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text54 = "new_editor"
text = "r_editor_header"
rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47 = rageUiOperation(text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text)
workingValue(text11, cmgOperation, rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47)
workingValue = RMenu
text11 = workingValue
workingValue = workingValue.Get
cmgOperation = "load_scene"
rageUiOperation = "cinematic"
-- Beginner: result below is menu.
workingValue = workingValue(text11, cmgOperation, rageUiOperation)
text11 = workingValue
workingValue = workingValue.SetSubtitle
cmgOperation = "~b~Load Scene"
workingValue(text11, cmgOperation)
workingValue = RMenu
workingValue = workingValue.Add
text11 = "scene_manager"
cmgOperation = "cinematic"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text42 = RMenu
text48 = text42
text42 = text42.Get
rageUiOperation2 = "load_scene"
rageUiOperation3 = "cinematic"
-- Beginner: result below is menu.
text42 = text42(text48, rageUiOperation2, rageUiOperation3)
text48 = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text54 = "new_editor"
text = "r_editor_header"
rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47 = rageUiOperation(text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text)
workingValue(text11, cmgOperation, rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47)
workingValue = RMenu
text11 = workingValue
workingValue = workingValue.Get
cmgOperation = "scene_manager"
rageUiOperation = "cinematic"
-- Beginner: result below is menu.
workingValue = workingValue(text11, cmgOperation, rageUiOperation)
text11 = workingValue
workingValue = workingValue.SetSubtitle
cmgOperation = "~b~Scene Manager"
workingValue(text11, cmgOperation)
workingValue = RMenu
workingValue = workingValue.Add
text11 = "camera_manager"
cmgOperation = "cinematic"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text42 = RMenu
text48 = text42
text42 = text42.Get
rageUiOperation2 = "scene_manager"
rageUiOperation3 = "cinematic"
-- Beginner: result below is menu.
text42 = text42(text48, rageUiOperation2, rageUiOperation3)
text48 = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text54 = "new_editor"
text = "r_editor_header"
rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47 = rageUiOperation(text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text)
workingValue(text11, cmgOperation, rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47)
workingValue = RMenu
text11 = workingValue
workingValue = workingValue.Get
cmgOperation = "camera_manager"
rageUiOperation = "cinematic"
-- Beginner: result below is menu.
workingValue = workingValue(text11, cmgOperation, rageUiOperation)
text11 = workingValue
workingValue = workingValue.SetSubtitle
cmgOperation = "~b~Camera Manager"
workingValue(text11, cmgOperation)
workingValue = RMenu
workingValue = workingValue.Add
text11 = "screeneffect_manager"
cmgOperation = "cinematic"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text42 = RMenu
text48 = text42
text42 = text42.Get
rageUiOperation2 = "camera_manager"
rageUiOperation3 = "cinematic"
-- Beginner: result below is menu.
text42 = text42(text48, rageUiOperation2, rageUiOperation3)
text48 = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text54 = "new_editor"
text = "r_editor_header"
rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47 = rageUiOperation(text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text)
workingValue(text11, cmgOperation, rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47)
workingValue = RMenu
text11 = workingValue
workingValue = workingValue.Get
cmgOperation = "screeneffect_manager"
rageUiOperation = "cinematic"
-- Beginner: result below is menu.
workingValue = workingValue(text11, cmgOperation, rageUiOperation)
text11 = workingValue
workingValue = workingValue.SetSubtitle
cmgOperation = "~b~Screen Effect Manager"
workingValue(text11, cmgOperation)
workingValue = RMenu
workingValue = workingValue.Add
text11 = "timecycle_manager"
cmgOperation = "cinematic"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text42 = RMenu
text48 = text42
text42 = text42.Get
rageUiOperation2 = "camera_manager"
rageUiOperation3 = "cinematic"
-- Beginner: result below is menu.
text42 = text42(text48, rageUiOperation2, rageUiOperation3)
text48 = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text54 = "new_editor"
text = "r_editor_header"
rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47 = rageUiOperation(text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text)
workingValue(text11, cmgOperation, rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47)
workingValue = RMenu
text11 = workingValue
workingValue = workingValue.Get
cmgOperation = "timecycle_manager"
rageUiOperation = "cinematic"
-- Beginner: result below is menu.
workingValue = workingValue(text11, cmgOperation, rageUiOperation)
text11 = workingValue
workingValue = workingValue.SetSubtitle
cmgOperation = "~b~Timecycle Effect Manager"
workingValue(text11, cmgOperation)
workingValue = RMenu
workingValue = workingValue.Add
text11 = "shake_manager"
cmgOperation = "cinematic"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text42 = RMenu
text48 = text42
text42 = text42.Get
rageUiOperation2 = "camera_manager"
rageUiOperation3 = "cinematic"
-- Beginner: result below is menu.
text42 = text42(text48, rageUiOperation2, rageUiOperation3)
text48 = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text54 = "new_editor"
text = "r_editor_header"
rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47 = rageUiOperation(text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text)
workingValue(text11, cmgOperation, rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47)
workingValue = RMenu
text11 = workingValue
workingValue = workingValue.Get
cmgOperation = "shake_manager"
rageUiOperation = "cinematic"
-- Beginner: result below is menu.
workingValue = workingValue(text11, cmgOperation, rageUiOperation)
text11 = workingValue
workingValue = workingValue.SetSubtitle
cmgOperation = "~b~Shake Effect Manager"
workingValue(text11, cmgOperation)
workingValue = RMenu
workingValue = workingValue.Add
text11 = "add_camera"
cmgOperation = "cinematic"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text42 = RMenu
text48 = text42
text42 = text42.Get
rageUiOperation2 = "scene_manager"
rageUiOperation3 = "cinematic"
-- Beginner: result below is menu.
text42 = text42(text48, rageUiOperation2, rageUiOperation3)
text48 = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text54 = "new_editor"
text = "r_editor_header"
rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47 = rageUiOperation(text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text)
workingValue(text11, cmgOperation, rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47)
workingValue = RMenu
text11 = workingValue
workingValue = workingValue.Get
cmgOperation = "add_camera"
rageUiOperation = "cinematic"
-- Beginner: result below is menu.
workingValue = workingValue(text11, cmgOperation, rageUiOperation)
text11 = workingValue
workingValue = workingValue.SetSubtitle
cmgOperation = "~b~Add Camera"
workingValue(text11, cmgOperation)
workingValue = RMenu
workingValue = workingValue.Add
text11 = "camera_focus_manager"
cmgOperation = "cinematic"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text42 = RMenu
text48 = text42
text42 = text42.Get
rageUiOperation2 = "camera_manager"
rageUiOperation3 = "cinematic"
-- Beginner: result below is menu.
text42 = text42(text48, rageUiOperation2, rageUiOperation3)
text48 = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text54 = "new_editor"
text = "r_editor_header"
rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47 = rageUiOperation(text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text)
workingValue(text11, cmgOperation, rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47)
workingValue = RMenu
text11 = workingValue
workingValue = workingValue.Get
cmgOperation = "camera_focus_manager"
rageUiOperation = "cinematic"
-- Beginner: result below is menu.
workingValue = workingValue(text11, cmgOperation, rageUiOperation)
text11 = workingValue
workingValue = workingValue.SetSubtitle
cmgOperation = "~b~Camera Focus"
workingValue(text11, cmgOperation)
workingValue = RMenu
workingValue = workingValue.Add
text11 = "weather_time_manager"
cmgOperation = "cinematic"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text42 = RMenu
text48 = text42
text42 = text42.Get
rageUiOperation2 = "mainmenu"
rageUiOperation3 = "cinematic"
-- Beginner: result below is menu.
text42 = text42(text48, rageUiOperation2, rageUiOperation3)
text48 = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text54 = "new_editor"
text = "r_editor_header"
rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47 = rageUiOperation(text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text)
workingValue(text11, cmgOperation, rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47)
workingValue = RMenu
text11 = workingValue
workingValue = workingValue.Get
cmgOperation = "weather_time_manager"
rageUiOperation = "cinematic"
-- Beginner: result below is menu.
workingValue = workingValue(text11, cmgOperation, rageUiOperation)
text11 = workingValue
workingValue = workingValue.SetSubtitle
cmgOperation = "~b~Time/Weather Manager"
workingValue(text11, cmgOperation)
workingValue = RMenu
workingValue = workingValue.Add
text11 = "dof_manager"
cmgOperation = "cinematic"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text42 = RMenu
text48 = text42
text42 = text42.Get
rageUiOperation2 = "camera_manager"
rageUiOperation3 = "cinematic"
-- Beginner: result below is menu.
text42 = text42(text48, rageUiOperation2, rageUiOperation3)
text48 = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text54 = "new_editor"
text = "r_editor_header"
rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47 = rageUiOperation(text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text)
workingValue(text11, cmgOperation, rageUiOperation, text42, text48, rageUiOperation2, rageUiOperation3, rageUiOperation4, text54, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37, text38, text39, text40, text41, text45, text46, text47)
workingValue = RMenu
text11 = workingValue
workingValue = workingValue.Get
cmgOperation = "dof_manager"
rageUiOperation = "cinematic"
-- Beginner: result below is menu.
workingValue = workingValue(text11, cmgOperation, rageUiOperation)
text11 = workingValue
workingValue = workingValue.SetSubtitle
cmgOperation = "~b~Depth of Field Manager"
workingValue(text11, cmgOperation)

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, localValue4, text43, text49
  localValue2 = RageUI
  localValue2 = localValue2.CloseAll
  localValue2()
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  text43 = "mainmenu"
  text49 = "cinematic"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, text43, text49)
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
end
text11 = {}
cmgOperation = "Default"
rageUiOperation = "DeadlineNeon"
text42 = "PPPurple"
text48 = "PPOrange"
rageUiOperation2 = "PPGreen"
rageUiOperation3 = "InchPickup"
rageUiOperation4 = "InchOrange"
text54 = "MP_Bull_tost"
text = "CrossLine"
text2 = "ArenaWheelPurple"
text3 = "SwitchHUDOut"
text4 = "FocusIn"
text5 = "FocusOut"
text6 = "MinigameEndNeutral"
text7 = "MinigameEndTrevor"
text8 = "MinigameEndFranklin"
text9 = "MinigameEndMichael"
text10 = "MinigameTransitionOut"
text12 = "MinigameTransitionIn"
text13 = "SwitchShortNeutralIn"
text14 = "SwitchShortFranklinIn"
text15 = "SwitchShortTrevorIn"
text16 = "SwitchShortMichaelIn"
text17 = "SwitchOpenMichaelIn"
text18 = "SwitchOpenFranklinIn"
text19 = "SwitchOpenTrevorIn"
text20 = "SwitchHUDMichaelOut"
text21 = "SwitchHUDFranklinOut"
text22 = "SwitchHUDTrevorOut"
text23 = "SwitchShortFranklinMid"
text24 = "SwitchShortMichaelMid"
text25 = "SwitchShortTrevorMid"
text26 = "DeathFailOut"
text27 = "CamPushInNeutral"
text28 = "CamPushInFranklin"
text29 = "CamPushInMichael"
text30 = "CamPushInTrevor"
text31 = "SwitchOpenMichaelIn"
text32 = "SwitchSceneFranklin"
text33 = "SwitchSceneTrevor"
text34 = "SwitchSceneMichael"
text35 = "SwitchSceneNeutral"
text36 = "MP_Celeb_Win"
text37 = "MP_Celeb_Win_Out"
text38 = "MP_Celeb_Lose"
text39 = "MP_Celeb_Lose_Out"
text40 = "DeathFailNeutralIn"
text41 = "DeathFailMPDark"
text45 = "DeathFailMPIn"
text46 = "MP_Celeb_Preload_Fade"
text11[1] = cmgOperation
text11[2] = rageUiOperation
text11[3] = text42
text11[4] = text48
text11[5] = rageUiOperation2
text11[6] = rageUiOperation3
text11[7] = rageUiOperation4
text11[8] = text54
text11[9] = text
text11[10] = text2
text11[11] = text3
text11[12] = text4
text11[13] = text5
text11[14] = text6
text11[15] = text7
text11[16] = text8
text11[17] = text9
text11[18] = text10
text11[19] = text12
text11[20] = text13
text11[21] = text14
text11[22] = text15
text11[23] = text16
text11[24] = text17
text11[25] = text18
text11[26] = text19
text11[27] = text20
text11[28] = text21
text11[29] = text22
text11[30] = text23
text11[31] = text24
text11[32] = text25
text11[33] = text26
text11[34] = text27
text11[35] = text28
text11[36] = text29
text11[37] = text30
text11[38] = text31
text11[39] = text32
text11[40] = text33
text11[41] = text34
text11[42] = text35
text11[43] = text36
text11[44] = text37
text11[45] = text38
text11[46] = text39
text11[47] = text40
text11[48] = text41
text11[49] = text45
text11[50] = text46
cmgOperation = "PeyoteEndOut"
rageUiOperation = "PeyoteEndIn"
text42 = "PeyoteIn"
text48 = "PeyoteOut"
rageUiOperation2 = "MP_race_crash"
rageUiOperation3 = "SuccessFranklin"
rageUiOperation4 = "SuccessTrevor"
text54 = "SuccessMichael"
text = "DrugsMichaelAliensFightIn"
text2 = "DrugsMichaelAliensFight"
text3 = "DrugsMichaelAliensFightOut"
text4 = "DrugsTrevorClownsFightIn"
text5 = "DrugsTrevorClownsFight"
text6 = "DrugsTrevorClownsFightOut"
text7 = "HeistCelebPass"
text8 = "HeistCelebPassBW"
text9 = "HeistCelebEnd"
text10 = "HeistCelebToast"
text12 = "MenuMGHeistIn"
text13 = "MenuMGTournamentIn"
text14 = "MenuMGSelectionIn"
text15 = "ChopVision"
text16 = "DMT_flight_intro"
text17 = "DMT_flight"
text18 = "DrugsDrivingIn"
text19 = "DrugsDrivingOut"
text20 = "SwitchOpenNeutralFIB5"
text21 = "HeistLocate"
text22 = "MP_job_load"
text23 = "RaceTurbo"
text24 = "MP_intro_logo"
text25 = "HeistTripSkipFade"
text26 = "MenuMGHeistOut"
text27 = "MP_corona_switch"
text28 = "MenuMGSelectionTint"
text29 = "SuccessNeutral"
text30 = "ExplosionJosh3"
text31 = "SniperOverlay"
text32 = "RampageOut"
text33 = "Rampage"
text34 = "Dont_tazeme_bro"
text35 = "DeathFailOut"
text11[51] = cmgOperation
text11[52] = rageUiOperation
text11[53] = text42
text11[54] = text48
text11[55] = rageUiOperation2
text11[56] = rageUiOperation3
text11[57] = rageUiOperation4
text11[58] = text54
text11[59] = text
text11[60] = text2
text11[61] = text3
text11[62] = text4
text11[63] = text5
text11[64] = text6
text11[65] = text7
text11[66] = text8
text11[67] = text9
text11[68] = text10
text11[69] = text12
text11[70] = text13
text11[71] = text14
text11[72] = text15
text11[73] = text16
text11[74] = text17
text11[75] = text18
text11[76] = text19
text11[77] = text20
text11[78] = text21
text11[79] = text22
text11[80] = text23
text11[81] = text24
text11[82] = text25
text11[83] = text26
text11[84] = text27
text11[85] = text28
text11[86] = text29
text11[87] = text30
text11[88] = text31
text11[89] = text32
text11[90] = text33
text11[91] = text34
text11[92] = text35
cmgOperation = {}
rageUiOperation = "None"
text42 = "AP1_01_B_IntRefRange"
text48 = "AP1_01_C_NoFog"
rageUiOperation2 = "AirRaceBoost01"
rageUiOperation3 = "AirRaceBoost02"
rageUiOperation4 = "AmbientPUSH"
text54 = "ArenaEMP"
text = "ArenaEMP_Blend"
text2 = "ArenaWheelPurple01"
text3 = "ArenaWheelPurple02"
text4 = "Bank_HLWD"
text5 = "Barry1_Stoned"
text6 = "BarryFadeOut"
text7 = "BeastIntro01"
text8 = "BeastIntro02"
text9 = "BeastLaunch01"
text10 = "BeastLaunch02"
text12 = "BikerFilter"
text13 = "BikerForm01"
text14 = "BikerFormFlash"
text15 = "Bikers"
text16 = "BikersSPLASH"
text17 = "BlackOut"
text18 = "BleepYellow01"
text19 = "BleepYellow02"
text20 = "Bloom"
text21 = "BloomLight"
text22 = "BloomMid"
text23 = "BombCam01"
text24 = "BombCamFlash"
text25 = "Broken_camera_fuzz"
text26 = "BulletTimeDark"
text27 = "BulletTimeLight"
text28 = "CAMERA_BW"
text29 = "CAMERA_secuirity"
text30 = "CAMERA_secuirity_FUZZ"
text31 = "CH3_06_water"
text32 = "CHOP"
text33 = "CS1_railwayB_tunnel"
text34 = "CS3_rail_tunnel"
text35 = "CUSTOM_streetlight"
text36 = "Carpark_MP_exit"
text37 = "CopsSPLASH"
text38 = "CrossLine01"
text39 = "CrossLine02"
text40 = "DONT_overide_sunpos"
text41 = "DRUG_2_drive"
text45 = "DRUG_gas_huffin"
text46 = "DeadlineNeon01"
text47 = "DefaultColorCode"
cmgOperation[1] = rageUiOperation
cmgOperation[2] = text42
cmgOperation[3] = text48
cmgOperation[4] = rageUiOperation2
cmgOperation[5] = rageUiOperation3
cmgOperation[6] = rageUiOperation4
cmgOperation[7] = text54
cmgOperation[8] = text
cmgOperation[9] = text2
cmgOperation[10] = text3
cmgOperation[11] = text4
cmgOperation[12] = text5
cmgOperation[13] = text6
cmgOperation[14] = text7
cmgOperation[15] = text8
cmgOperation[16] = text9
cmgOperation[17] = text10
cmgOperation[18] = text12
cmgOperation[19] = text13
cmgOperation[20] = text14
cmgOperation[21] = text15
cmgOperation[22] = text16
cmgOperation[23] = text17
cmgOperation[24] = text18
cmgOperation[25] = text19
cmgOperation[26] = text20
cmgOperation[27] = text21
cmgOperation[28] = text22
cmgOperation[29] = text23
cmgOperation[30] = text24
cmgOperation[31] = text25
cmgOperation[32] = text26
cmgOperation[33] = text27
cmgOperation[34] = text28
cmgOperation[35] = text29
cmgOperation[36] = text30
cmgOperation[37] = text31
cmgOperation[38] = text32
cmgOperation[39] = text33
cmgOperation[40] = text34
cmgOperation[41] = text35
cmgOperation[42] = text36
cmgOperation[43] = text37
cmgOperation[44] = text38
cmgOperation[45] = text39
cmgOperation[46] = text40
cmgOperation[47] = text41
cmgOperation[48] = text45
cmgOperation[49] = text46
cmgOperation[50] = text47
rageUiOperation = "Dont_tazeme_bro"
text42 = "DrivingFocusDark"
text48 = "DrivingFocusLight"
rageUiOperation2 = "Drone_FishEye_Lens"
rageUiOperation3 = "Drug_deadman"
rageUiOperation4 = "Drug_deadman_blend"
text54 = "Drunk"
text = "EXTRA_bouncelight"
text2 = "EXT_FULLAmbientmult_art"
text3 = "ExplosionJosh"
text4 = "FIB_5"
text5 = "FIB_6"
text6 = "FIB_A"
text7 = "FIB_B"
text8 = "FIB_interview"
text9 = "FIB_interview_optimise"
text10 = "FORdoron_delete"
text12 = "FRANKLIN"
text13 = "Facebook_NEW"
text14 = "FinaleBank"
text15 = "FinaleBankMid"
text16 = "FinaleBankexit"
text17 = "Forest"
text18 = "FrankilinsHOUSEhills"
text19 = "FranklinColorCode"
text20 = "FranklinColorCodeBasic"
text21 = "FranklinColorCodeBright"
text22 = "FullAmbientmult_interior"
text23 = "Glasses_BlackOut"
text24 = "Hanger_INTmods"
text25 = "Hicksbar"
text26 = "HicksbarNEW"
text27 = "Hint_cam"
text28 = "IMpExt_Interior_02"
text29 = "IMpExt_Interior_02_stair_cage"
text30 = "INT_FULLAmbientmult_art"
text31 = "INT_FULLAmbientmult_both"
text32 = "INT_FullAmbientmult"
text33 = "INT_NO_fogALPHA"
text34 = "INT_NOdirectLight"
text35 = "INT_NoAmbientmult"
text36 = "INT_NoAmbientmult_art"
text37 = "INT_NoAmbientmult_both"
text38 = "INT_garage"
text39 = "INT_mall"
text40 = "INT_nowaterREF"
text41 = "INT_posh_hairdresser"
text45 = "INT_smshop"
text46 = "INT_smshop_inMOD"
text47 = "INT_smshop_indoor_bloom"
cmgOperation[51] = rageUiOperation
cmgOperation[52] = text42
cmgOperation[53] = text48
cmgOperation[54] = rageUiOperation2
cmgOperation[55] = rageUiOperation3
cmgOperation[56] = rageUiOperation4
cmgOperation[57] = text54
cmgOperation[58] = text
cmgOperation[59] = text2
cmgOperation[60] = text3
cmgOperation[61] = text4
cmgOperation[62] = text5
cmgOperation[63] = text6
cmgOperation[64] = text7
cmgOperation[65] = text8
cmgOperation[66] = text9
cmgOperation[67] = text10
cmgOperation[68] = text12
cmgOperation[69] = text13
cmgOperation[70] = text14
cmgOperation[71] = text15
cmgOperation[72] = text16
cmgOperation[73] = text17
cmgOperation[74] = text18
cmgOperation[75] = text19
cmgOperation[76] = text20
cmgOperation[77] = text21
cmgOperation[78] = text22
cmgOperation[79] = text23
cmgOperation[80] = text24
cmgOperation[81] = text25
cmgOperation[82] = text26
cmgOperation[83] = text27
cmgOperation[84] = text28
cmgOperation[85] = text29
cmgOperation[86] = text30
cmgOperation[87] = text31
cmgOperation[88] = text32
cmgOperation[89] = text33
cmgOperation[90] = text34
cmgOperation[91] = text35
cmgOperation[92] = text36
cmgOperation[93] = text37
cmgOperation[94] = text38
cmgOperation[95] = text39
cmgOperation[96] = text40
cmgOperation[97] = text41
cmgOperation[98] = text45
cmgOperation[99] = text46
cmgOperation[100] = text47
rageUiOperation = "INT_smshop_outdoor_bloom"
text42 = "INT_streetlighting"
text48 = "INT_trailer_cinema"
rageUiOperation2 = "ImpExp_Interior_01"
rageUiOperation3 = "InchOrange01"
rageUiOperation4 = "InchOrange02"
text54 = "InchPickup01"
text = "InchPickup02"
text2 = "InchPurple01"
text3 = "InchPurple02"
text4 = "KT_underpass"
text5 = "Kifflom"
text6 = "LIGHTSreduceFALLOFF"
text7 = "LODmult_HD_orphan_LOD_reduce"
text8 = "LODmult_HD_orphan_reduce"
text9 = "LODmult_LOD_reduce"
text10 = "LODmult_SLOD1_reduce"
text12 = "LODmult_SLOD2_reduce"
text13 = "LODmult_SLOD3_reduce"
text14 = "LODmult_global_reduce"
text15 = "LODmult_global_reduce_NOHD"
text16 = "LectroDark"
text17 = "LectroLight"
text18 = "LifeInvaderLOD"
text19 = "LightPollutionHills"
text20 = "LostTimeDark"
text21 = "LostTimeFlash"
text22 = "LostTimeLight"
text23 = "METRO_Tunnels"
text24 = "METRO_Tunnels_entrance"
text25 = "METRO_platform"
text26 = "MPApartHigh"
text27 = "MPApartHigh_palnning"
text28 = "MPApart_H_01"
text29 = "MPApart_H_01_gym"
text30 = "MP_Arena_VIP"
text31 = "MP_Arena_theme_atlantis"
text32 = "MP_Arena_theme_evening"
text33 = "MP_Arena_theme_hell"
text34 = "MP_Arena_theme_midday"
text35 = "MP_Arena_theme_morning"
text36 = "MP_Arena_theme_night"
text37 = "MP_Arena_theme_saccharine"
text38 = "MP_Arena_theme_sandstorm"
text39 = "MP_Arena_theme_scifi_night"
text40 = "MP_Arena_theme_storm"
text41 = "MP_Arena_theme_toxic"
text45 = "MP_Bull_tost"
text46 = "MP_Bull_tost_blend"
text47 = "MP_Garage_L"
cmgOperation[101] = rageUiOperation
cmgOperation[102] = text42
cmgOperation[103] = text48
cmgOperation[104] = rageUiOperation2
cmgOperation[105] = rageUiOperation3
cmgOperation[106] = rageUiOperation4
cmgOperation[107] = text54
cmgOperation[108] = text
cmgOperation[109] = text2
cmgOperation[110] = text3
cmgOperation[111] = text4
cmgOperation[112] = text5
cmgOperation[113] = text6
cmgOperation[114] = text7
cmgOperation[115] = text8
cmgOperation[116] = text9
cmgOperation[117] = text10
cmgOperation[118] = text12
cmgOperation[119] = text13
cmgOperation[120] = text14
cmgOperation[121] = text15
cmgOperation[122] = text16
cmgOperation[123] = text17
cmgOperation[124] = text18
cmgOperation[125] = text19
cmgOperation[126] = text20
cmgOperation[127] = text21
cmgOperation[128] = text22
cmgOperation[129] = text23
cmgOperation[130] = text24
cmgOperation[131] = text25
cmgOperation[132] = text26
cmgOperation[133] = text27
cmgOperation[134] = text28
cmgOperation[135] = text29
cmgOperation[136] = text30
cmgOperation[137] = text31
cmgOperation[138] = text32
cmgOperation[139] = text33
cmgOperation[140] = text34
cmgOperation[141] = text35
cmgOperation[142] = text36
cmgOperation[143] = text37
cmgOperation[144] = text38
cmgOperation[145] = text39
cmgOperation[146] = text40
cmgOperation[147] = text41
cmgOperation[148] = text45
cmgOperation[149] = text46
cmgOperation[150] = text47
rageUiOperation = "MP_H_01_Bathroom"
text42 = "MP_H_01_Bedroom"
text48 = "MP_H_01_New"
rageUiOperation2 = "MP_H_01_New_Bathroom"
rageUiOperation3 = "MP_H_01_New_Bedroom"
rageUiOperation4 = "MP_H_01_New_Study"
text54 = "MP_H_01_Study"
text = "MP_H_02"
text2 = "MP_H_04"
text3 = "MP_H_06"
text4 = "MP_Killstreak"
text5 = "MP_Killstreak_blend"
text6 = "MP_Loser"
text7 = "MP_Loser_blend"
text8 = "MP_MedGarage"
text9 = "MP_Powerplay"
text10 = "MP_Powerplay_blend"
text12 = "MP_Studio_Lo"
text13 = "MP_corona_heist"
text14 = "MP_corona_heist_BW"
text15 = "MP_corona_heist_BW_night"
text16 = "MP_corona_heist_DOF"
text17 = "MP_corona_heist_blend"
text18 = "MP_corona_heist_night"
text19 = "MP_corona_heist_night_blend"
text20 = "MP_corona_selection"
text21 = "MP_corona_switch"
text22 = "MP_corona_tournament"
text23 = "MP_corona_tournament_DOF"
text24 = "MP_death_grade"
text25 = "MP_death_grade_blend01"
text26 = "MP_death_grade_blend02"
text27 = "MP_deathfail_night"
text28 = "MP_heli_cam"
text29 = "MP_intro_logo"
text30 = "MP_job_end_night"
text31 = "MP_job_load"
text32 = "MP_job_load_01"
text33 = "MP_job_load_02"
text34 = "MP_job_lose"
text35 = "MP_job_preload"
text36 = "MP_job_preload_blend"
text37 = "MP_job_preload_night"
text38 = "MP_job_win"
text39 = "MP_lowgarage"
text40 = "MP_race_finish"
text41 = "MP_select"
text45 = "MichaelColorCode"
text46 = "MichaelColorCodeBasic"
text47 = "MichaelColorCodeBright"
cmgOperation[151] = rageUiOperation
cmgOperation[152] = text42
cmgOperation[153] = text48
cmgOperation[154] = rageUiOperation2
cmgOperation[155] = rageUiOperation3
cmgOperation[156] = rageUiOperation4
cmgOperation[157] = text54
cmgOperation[158] = text
cmgOperation[159] = text2
cmgOperation[160] = text3
cmgOperation[161] = text4
cmgOperation[162] = text5
cmgOperation[163] = text6
cmgOperation[164] = text7
cmgOperation[165] = text8
cmgOperation[166] = text9
cmgOperation[167] = text10
cmgOperation[168] = text12
cmgOperation[169] = text13
cmgOperation[170] = text14
cmgOperation[171] = text15
cmgOperation[172] = text16
cmgOperation[173] = text17
cmgOperation[174] = text18
cmgOperation[175] = text19
cmgOperation[176] = text20
cmgOperation[177] = text21
cmgOperation[178] = text22
cmgOperation[179] = text23
cmgOperation[180] = text24
cmgOperation[181] = text25
cmgOperation[182] = text26
cmgOperation[183] = text27
cmgOperation[184] = text28
cmgOperation[185] = text29
cmgOperation[186] = text30
cmgOperation[187] = text31
cmgOperation[188] = text32
cmgOperation[189] = text33
cmgOperation[190] = text34
cmgOperation[191] = text35
cmgOperation[192] = text36
cmgOperation[193] = text37
cmgOperation[194] = text38
cmgOperation[195] = text39
cmgOperation[196] = text40
cmgOperation[197] = text41
cmgOperation[198] = text45
cmgOperation[199] = text46
cmgOperation[200] = text47
rageUiOperation = "MichaelsDarkroom"
text42 = "MichaelsDirectional"
text48 = "MichaelsNODirectional"
rageUiOperation2 = "Mp_Stilts"
rageUiOperation3 = "Mp_Stilts2"
rageUiOperation4 = "Mp_Stilts2_bath"
text54 = "Mp_Stilts_gym"
text = "Mp_Stilts_gym2"
text2 = "Mp_apart_mid"
text3 = "Multipayer_spectatorCam"
text4 = "NEW_abattoir"
text5 = "NEW_jewel"
text6 = "NEW_jewel_EXIT"
text7 = "NEW_lesters"
text8 = "NEW_ornate_bank"
text9 = "NEW_ornate_bank_entrance"
text10 = "NEW_ornate_bank_office"
text12 = "NEW_ornate_bank_safe"
text13 = "NEW_shrinksOffice"
text14 = "NEW_station_unfinished"
text15 = "NEW_trevorstrailer"
text16 = "NEW_tunnels"
text17 = "NEW_tunnels_ditch"
text18 = "NEW_tunnels_hole"
text19 = "NEW_yellowtunnels"
text20 = "NG_blackout"
text21 = "NG_deathfail_BW_base"
text22 = "NG_deathfail_BW_blend01"
text23 = "NG_deathfail_BW_blend02"
text24 = "NG_filmic01"
text25 = "NG_filmic02"
text26 = "NG_filmic03"
text27 = "NG_filmic04"
text28 = "NG_filmic05"
text29 = "NG_filmic06"
text30 = "NG_filmic07"
text31 = "NG_filmic08"
text32 = "NG_filmic09"
text33 = "NG_filmic10"
text34 = "NG_filmic11"
text35 = "NG_filmic12"
text36 = "NG_filmic13"
text37 = "NG_filmic14"
text38 = "NG_filmic15"
text39 = "NG_filmic16"
text40 = "NG_filmic17"
text41 = "NG_filmic18"
text45 = "NG_filmic19"
text46 = "NG_filmic20"
text47 = "NG_filmic21"
cmgOperation[201] = rageUiOperation
cmgOperation[202] = text42
cmgOperation[203] = text48
cmgOperation[204] = rageUiOperation2
cmgOperation[205] = rageUiOperation3
cmgOperation[206] = rageUiOperation4
cmgOperation[207] = text54
cmgOperation[208] = text
cmgOperation[209] = text2
cmgOperation[210] = text3
cmgOperation[211] = text4
cmgOperation[212] = text5
cmgOperation[213] = text6
cmgOperation[214] = text7
cmgOperation[215] = text8
cmgOperation[216] = text9
cmgOperation[217] = text10
cmgOperation[218] = text12
cmgOperation[219] = text13
cmgOperation[220] = text14
cmgOperation[221] = text15
cmgOperation[222] = text16
cmgOperation[223] = text17
cmgOperation[224] = text18
cmgOperation[225] = text19
cmgOperation[226] = text20
cmgOperation[227] = text21
cmgOperation[228] = text22
cmgOperation[229] = text23
cmgOperation[230] = text24
cmgOperation[231] = text25
cmgOperation[232] = text26
cmgOperation[233] = text27
cmgOperation[234] = text28
cmgOperation[235] = text29
cmgOperation[236] = text30
cmgOperation[237] = text31
cmgOperation[238] = text32
cmgOperation[239] = text33
cmgOperation[240] = text34
cmgOperation[241] = text35
cmgOperation[242] = text36
cmgOperation[243] = text37
cmgOperation[244] = text38
cmgOperation[245] = text39
cmgOperation[246] = text40
cmgOperation[247] = text41
cmgOperation[248] = text45
cmgOperation[249] = text46
cmgOperation[250] = text47
rageUiOperation = "NG_filmic22"
text42 = "NG_filmic23"
text48 = "NG_filmic24"
rageUiOperation2 = "NG_filmic25"
rageUiOperation3 = "NG_filmnoir_BW01"
rageUiOperation4 = "NG_filmnoir_BW02"
text54 = "NG_first"
text = "NO_coronas"
text2 = "NO_fog_alpha"
text3 = "NO_streetAmbient"
text4 = "NO_weather"
text5 = "NOdirectLight"
text6 = "NOrain"
text7 = "NeutralColorCode"
text8 = "NeutralColorCodeBasic"
text9 = "NeutralColorCodeBright"
text10 = "NeutralColorCodeLight"
text12 = "NewMicheal"
text13 = "NewMicheal_night"
text14 = "NewMicheal_upstairs"
text15 = "NewMichealgirly"
text16 = "NewMichealstoilet"
text17 = "NewMichealupstairs"
text18 = "New_sewers"
text19 = "NoAmbientmult"
text20 = "NoAmbientmult_interior"
text21 = "NoPedLight"
text22 = "OrbitalCannon"
text23 = "PERSHING_water_reflect"
text24 = "PORT_heist_underwater"
text25 = "PPFilter"
text26 = "PPGreen01"
text27 = "PPGreen02"
text28 = "PPOrange01"
text29 = "PPOrange02"
text30 = "PPPink01"
text31 = "PPPink02"
text32 = "PPPurple01"
text33 = "PPPurple02"
text34 = "Paleto"
text35 = "PennedInDark"
text36 = "PennedInLight"
text37 = "PlayerSwitchNeutralFlash"
text38 = "PlayerSwitchPulse"
text39 = "PoliceStation"
text40 = "PoliceStationDark"
text41 = "Prologue_shootout_opt"
text45 = "REDMIST"
text46 = "REDMIST_blend"
text47 = "RaceTurboDark"
cmgOperation[251] = rageUiOperation
cmgOperation[252] = text42
cmgOperation[253] = text48
cmgOperation[254] = rageUiOperation2
cmgOperation[255] = rageUiOperation3
cmgOperation[256] = rageUiOperation4
cmgOperation[257] = text54
cmgOperation[258] = text
cmgOperation[259] = text2
cmgOperation[260] = text3
cmgOperation[261] = text4
cmgOperation[262] = text5
cmgOperation[263] = text6
cmgOperation[264] = text7
cmgOperation[265] = text8
cmgOperation[266] = text9
cmgOperation[267] = text10
cmgOperation[268] = text12
cmgOperation[269] = text13
cmgOperation[270] = text14
cmgOperation[271] = text15
cmgOperation[272] = text16
cmgOperation[273] = text17
cmgOperation[274] = text18
cmgOperation[275] = text19
cmgOperation[276] = text20
cmgOperation[277] = text21
cmgOperation[278] = text22
cmgOperation[279] = text23
cmgOperation[280] = text24
cmgOperation[281] = text25
cmgOperation[282] = text26
cmgOperation[283] = text27
cmgOperation[284] = text28
cmgOperation[285] = text29
cmgOperation[286] = text30
cmgOperation[287] = text31
cmgOperation[288] = text32
cmgOperation[289] = text33
cmgOperation[290] = text34
cmgOperation[291] = text35
cmgOperation[292] = text36
cmgOperation[293] = text37
cmgOperation[294] = text38
cmgOperation[295] = text39
cmgOperation[296] = text40
cmgOperation[297] = text41
cmgOperation[298] = text45
cmgOperation[299] = text46
cmgOperation[300] = text47
rageUiOperation = "RaceTurboFlash"
text42 = "RaceTurboLight"
text48 = "ReduceDrawDistance"
rageUiOperation2 = "ReduceDrawDistanceMAP"
rageUiOperation3 = "ReduceDrawDistanceMission"
rageUiOperation4 = "ReduceSSAO"
text54 = "RemixDrone"
text = "RemoteSniper"
text2 = "SALTONSEA"
text3 = "SAWMILL"
text4 = "SP1_03_drawDistance"
text5 = "STRIP_changing"
text6 = "STRIP_nofog"
text7 = "STRIP_office"
text8 = "STRIP_stage"
text9 = "SheriffStation"
text10 = "Shop247"
text12 = "Shop247_none"
text13 = "SmugglerCheckpoint01"
text14 = "SmugglerCheckpoint02"
text15 = "SmugglerFlash"
text16 = "Sniper"
text17 = "StadLobby"
text18 = "StreetLighting"
text19 = "StreetLightingJunction"
text20 = "StreetLightingtraffic"
text21 = "StuntFastDark"
text22 = "StuntFastLight"
text23 = "StuntSlowDark"
text24 = "StuntSlowLight"
text25 = "TREVOR"
text26 = "TUNNEL_green"
text27 = "TUNNEL_green_ext"
text28 = "TUNNEL_orange"
text29 = "TUNNEL_orange_exterior"
text30 = "TUNNEL_white"
text31 = "TUNNEL_yellow"
text32 = "TUNNEL_yellow_ext"
text33 = "TinyGreen01"
text34 = "TinyGreen02"
text35 = "TinyPink01"
text36 = "TinyPink02"
text37 = "TinyRacerMoBlur"
text38 = "TransformFlash"
text39 = "TransformRaceFlash"
text40 = "TrevorColorCode"
text41 = "TrevorColorCodeBasic"
text45 = "TrevorColorCodeBright"
text46 = "Trevors_room"
text47 = "Tunnel"
cmgOperation[301] = rageUiOperation
cmgOperation[302] = text42
cmgOperation[303] = text48
cmgOperation[304] = rageUiOperation2
cmgOperation[305] = rageUiOperation3
cmgOperation[306] = rageUiOperation4
cmgOperation[307] = text54
cmgOperation[308] = text
cmgOperation[309] = text2
cmgOperation[310] = text3
cmgOperation[311] = text4
cmgOperation[312] = text5
cmgOperation[313] = text6
cmgOperation[314] = text7
cmgOperation[315] = text8
cmgOperation[316] = text9
cmgOperation[317] = text10
cmgOperation[318] = text12
cmgOperation[319] = text13
cmgOperation[320] = text14
cmgOperation[321] = text15
cmgOperation[322] = text16
cmgOperation[323] = text17
cmgOperation[324] = text18
cmgOperation[325] = text19
cmgOperation[326] = text20
cmgOperation[327] = text21
cmgOperation[328] = text22
cmgOperation[329] = text23
cmgOperation[330] = text24
cmgOperation[331] = text25
cmgOperation[332] = text26
cmgOperation[333] = text27
cmgOperation[334] = text28
cmgOperation[335] = text29
cmgOperation[336] = text30
cmgOperation[337] = text31
cmgOperation[338] = text32
cmgOperation[339] = text33
cmgOperation[340] = text34
cmgOperation[341] = text35
cmgOperation[342] = text36
cmgOperation[343] = text37
cmgOperation[344] = text38
cmgOperation[345] = text39
cmgOperation[346] = text40
cmgOperation[347] = text41
cmgOperation[348] = text45
cmgOperation[349] = text46
cmgOperation[350] = text47
rageUiOperation = "Tunnel_green1"
text42 = "VAGOS_new_garage"
text48 = "VAGOS_new_hangout"
rageUiOperation2 = "VC_tunnel_entrance"
rageUiOperation3 = "V_Abattoir_Cold"
rageUiOperation4 = "V_CIA_Facility"
text54 = "V_FIB_IT3"
text = "V_FIB_IT3_alt"
text2 = "V_FIB_IT3_alt5"
text3 = "V_FIB_stairs"
text4 = "V_Metro2"
text5 = "V_Metro_station"
text6 = "V_Office_smoke"
text7 = "V_Office_smoke_Fire"
text8 = "V_Office_smoke_ext"
text9 = "V_Solomons"
text10 = "V_recycle_dark"
text12 = "V_recycle_light"
text13 = "V_recycle_mainroom"
text14 = "V_strip_nofog"
text15 = "V_strip_office"
text16 = "Vagos"
text17 = "VagosSPLASH"
text18 = "VolticBlur"
text19 = "VolticFlash"
text20 = "VolticGold"
text21 = "WATER_lab_cooling"
text22 = "WATER_CH2_06_01_03"
text23 = "WATER_CH2_06_02"
text24 = "WATER_CH2_06_04"
text25 = "WATER_ID2_21"
text26 = "WATER_REF_malibu"
text27 = "WATER_RichmanStuntJump"
text28 = "WATER_cove"
text29 = "WATER_hills"
text30 = "WATER_lab"
text31 = "WATER_militaryPOOP"
text32 = "WATER_muddy"
text33 = "WATER_port"
text34 = "WATER_refmap_high"
text35 = "WATER_refmap_hollywoodlake"
text36 = "WATER_refmap_low"
text37 = "WATER_refmap_med"
text38 = "WATER_refmap_off"
text39 = "WATER_refmap_poolside"
text40 = "WATER_refmap_silverlake"
text41 = "WATER_refmap_venice"
text45 = "WATER_refmap_verylow"
text46 = "WATER_resevoir"
text47 = "WATER_river"
cmgOperation[351] = rageUiOperation
cmgOperation[352] = text42
cmgOperation[353] = text48
cmgOperation[354] = rageUiOperation2
cmgOperation[355] = rageUiOperation3
cmgOperation[356] = rageUiOperation4
cmgOperation[357] = text54
cmgOperation[358] = text
cmgOperation[359] = text2
cmgOperation[360] = text3
cmgOperation[361] = text4
cmgOperation[362] = text5
cmgOperation[363] = text6
cmgOperation[364] = text7
cmgOperation[365] = text8
cmgOperation[366] = text9
cmgOperation[367] = text10
cmgOperation[368] = text12
cmgOperation[369] = text13
cmgOperation[370] = text14
cmgOperation[371] = text15
cmgOperation[372] = text16
cmgOperation[373] = text17
cmgOperation[374] = text18
cmgOperation[375] = text19
cmgOperation[376] = text20
cmgOperation[377] = text21
cmgOperation[378] = text22
cmgOperation[379] = text23
cmgOperation[380] = text24
cmgOperation[381] = text25
cmgOperation[382] = text26
cmgOperation[383] = text27
cmgOperation[384] = text28
cmgOperation[385] = text29
cmgOperation[386] = text30
cmgOperation[387] = text31
cmgOperation[388] = text32
cmgOperation[389] = text33
cmgOperation[390] = text34
cmgOperation[391] = text35
cmgOperation[392] = text36
cmgOperation[393] = text37
cmgOperation[394] = text38
cmgOperation[395] = text39
cmgOperation[396] = text40
cmgOperation[397] = text41
cmgOperation[398] = text45
cmgOperation[399] = text46
cmgOperation[400] = text47
rageUiOperation = "WATER_salton"
text42 = "WATER_salton_bottom"
text48 = "WATER_shore"
rageUiOperation2 = "WATER_silty"
rageUiOperation3 = "WATER_silverlake"
rageUiOperation4 = "WarpCheckpoint"
text54 = "WeaponUpgrade"
text = "WhiteOut"
text2 = "baseTONEMAPPING"
text3 = "blackNwhite"
text4 = "buggy_shack"
text5 = "buildingTOP"
text6 = "cBank_back"
text7 = "cBank_front"
text8 = "canyon_mission"
text9 = "carMOD_underpass"
text10 = "carpark"
text12 = "carpark_dt1_02"
text13 = "carpark_dt1_03"
text14 = "cashdepot"
text15 = "cashdepotEMERGENCY"
text16 = "ch2_tunnel_whitelight"
text17 = "cinema"
text18 = "cinema_001"
text19 = "cops"
text20 = "crane_cam"
text21 = "crane_cam_cinematic"
text22 = "damage"
text23 = "default"
text24 = "dont_tazeme_bro_b"
text25 = "downtown_FIB_cascades_opt"
text26 = "drug_drive_blend01"
text27 = "drug_drive_blend02"
text28 = "drug_flying_01"
text29 = "drug_flying_02"
text30 = "drug_flying_base"
text31 = "drug_wobbly"
text32 = "dying"
text33 = "eatra_bouncelight_beach"
text34 = "epsilion"
text35 = "exile1_exit"
text36 = "exile1_plane"
text37 = "ext_int_extlight_large"
text38 = "eyeINtheSKY"
text39 = "facebook_serveroom"
text40 = "fireDEPT"
text41 = "fp_vig_black"
text45 = "fp_vig_blue"
text46 = "fp_vig_brown"
text47 = "fp_vig_gray"
cmgOperation[401] = rageUiOperation
cmgOperation[402] = text42
cmgOperation[403] = text48
cmgOperation[404] = rageUiOperation2
cmgOperation[405] = rageUiOperation3
cmgOperation[406] = rageUiOperation4
cmgOperation[407] = text54
cmgOperation[408] = text
cmgOperation[409] = text2
cmgOperation[410] = text3
cmgOperation[411] = text4
cmgOperation[412] = text5
cmgOperation[413] = text6
cmgOperation[414] = text7
cmgOperation[415] = text8
cmgOperation[416] = text9
cmgOperation[417] = text10
cmgOperation[418] = text12
cmgOperation[419] = text13
cmgOperation[420] = text14
cmgOperation[421] = text15
cmgOperation[422] = text16
cmgOperation[423] = text17
cmgOperation[424] = text18
cmgOperation[425] = text19
cmgOperation[426] = text20
cmgOperation[427] = text21
cmgOperation[428] = text22
cmgOperation[429] = text23
cmgOperation[430] = text24
cmgOperation[431] = text25
cmgOperation[432] = text26
cmgOperation[433] = text27
cmgOperation[434] = text28
cmgOperation[435] = text29
cmgOperation[436] = text30
cmgOperation[437] = text31
cmgOperation[438] = text32
cmgOperation[439] = text33
cmgOperation[440] = text34
cmgOperation[441] = text35
cmgOperation[442] = text36
cmgOperation[443] = text37
cmgOperation[444] = text38
cmgOperation[445] = text39
cmgOperation[446] = text40
cmgOperation[447] = text41
cmgOperation[448] = text45
cmgOperation[449] = text46
cmgOperation[450] = text47
rageUiOperation = "fp_vig_green"
text42 = "fp_vig_red"
text48 = "frankilnsAUNTS_SUNdir"
rageUiOperation2 = "frankilnsAUNTS_new"
rageUiOperation3 = "gallery_refmod"
rageUiOperation4 = "garage"
text54 = "gen_bank"
text = "glasses_Darkblue"
text2 = "glasses_Scuba"
text3 = "glasses_VISOR"
text4 = "glasses_black"
text5 = "glasses_blue"
text6 = "glasses_brown"
text7 = "glasses_green"
text8 = "glasses_orange"
text9 = "glasses_pink"
text10 = "glasses_purple"
text12 = "glasses_red"
text13 = "glasses_yellow"
text14 = "gorge_reflection_gpu"
text15 = "gorge_reflectionoffset"
text16 = "gorge_reflectionoffset2"
text17 = "graveyard_shootout"
text18 = "grdlc_int_02"
text19 = "grdlc_int_02_trailer_cave"
text20 = "gunclub"
text21 = "gunclubrange"
text22 = "gunshop"
text23 = "gunstore"
text24 = "half_direct"
text25 = "hangar_lightsmod"
text26 = "heathaze"
text27 = "heist_boat"
text28 = "heist_boat_engineRoom"
text29 = "heist_boat_norain"
text30 = "heliGunCam"
text31 = "helicamfirst"
text32 = "hillstunnel"
text33 = "hitped"
text34 = "hud_def_Franklin"
text35 = "hud_def_Michael"
text36 = "hud_def_Trevor"
text37 = "hud_def_blur"
text38 = "hud_def_blur_switch"
text39 = "hud_def_colorgrade"
text40 = "hud_def_desat_Franklin"
text41 = "hud_def_desat_Michael"
text45 = "hud_def_desat_Neutral"
text46 = "hud_def_desat_Trevor"
text47 = "hud_def_desat_cold"
cmgOperation[451] = rageUiOperation
cmgOperation[452] = text42
cmgOperation[453] = text48
cmgOperation[454] = rageUiOperation2
cmgOperation[455] = rageUiOperation3
cmgOperation[456] = rageUiOperation4
cmgOperation[457] = text54
cmgOperation[458] = text
cmgOperation[459] = text2
cmgOperation[460] = text3
cmgOperation[461] = text4
cmgOperation[462] = text5
cmgOperation[463] = text6
cmgOperation[464] = text7
cmgOperation[465] = text8
cmgOperation[466] = text9
cmgOperation[467] = text10
cmgOperation[468] = text12
cmgOperation[469] = text13
cmgOperation[470] = text14
cmgOperation[471] = text15
cmgOperation[472] = text16
cmgOperation[473] = text17
cmgOperation[474] = text18
cmgOperation[475] = text19
cmgOperation[476] = text20
cmgOperation[477] = text21
cmgOperation[478] = text22
cmgOperation[479] = text23
cmgOperation[480] = text24
cmgOperation[481] = text25
cmgOperation[482] = text26
cmgOperation[483] = text27
cmgOperation[484] = text28
cmgOperation[485] = text29
cmgOperation[486] = text30
cmgOperation[487] = text31
cmgOperation[488] = text32
cmgOperation[489] = text33
cmgOperation[490] = text34
cmgOperation[491] = text35
cmgOperation[492] = text36
cmgOperation[493] = text37
cmgOperation[494] = text38
cmgOperation[495] = text39
cmgOperation[496] = text40
cmgOperation[497] = text41
cmgOperation[498] = text45
cmgOperation[499] = text46
cmgOperation[500] = text47
rageUiOperation = "hud_def_desat_cold_kill"
text42 = "hud_def_desat_switch"
text48 = "hud_def_desatcrunch"
rageUiOperation2 = "hud_def_flash"
rageUiOperation3 = "hud_def_focus"
rageUiOperation4 = "hud_def_lensdistortion"
text54 = "hud_def_lensdistortion_subtle"
text = "id1_11_tunnel"
text2 = "impexp_interior_01_lift"
text3 = "int_Barber1"
text4 = "int_ClothesHi"
text5 = "int_ControlTower_none"
text6 = "int_ControlTower_small"
text7 = "int_Farmhouse_none"
text8 = "int_Farmhouse_small"
text9 = "int_FranklinAunt_small"
text10 = "int_GasStation"
text12 = "int_Hospital2_DM"
text13 = "int_Hospital_Blue"
text14 = "int_Hospital_BlueB"
text15 = "int_Hospital_DM"
text16 = "int_Lost_none"
text17 = "int_Lost_small"
text18 = "int_amb_mult_large"
text19 = "int_arena_01"
text20 = "int_arena_Mod"
text21 = "int_arena_Mod_garage"
text22 = "int_arena_VIP"
text23 = "int_carmod_small"
text24 = "int_carrier_control"
text25 = "int_carrier_control_2"
text26 = "int_carrier_hanger"
text27 = "int_carrier_rear"
text28 = "int_carrier_stair"
text29 = "int_carshowroom"
text30 = "int_chopshop"
text31 = "int_clean_extlight_large"
text32 = "int_clean_extlight_none"
text33 = "int_clean_extlight_small"
text34 = "int_clotheslow_large"
text35 = "int_cluckinfactory_none"
text36 = "int_cluckinfactory_small"
text37 = "int_dockcontrol_small"
text38 = "int_extlght_sm_cntrst"
text39 = "int_extlight_large"
text40 = "int_extlight_large_fog"
text41 = "int_extlight_none"
text45 = "int_extlight_none_dark"
text46 = "int_extlight_none_dark_fog"
text47 = "int_extlight_none_fog"
cmgOperation[501] = rageUiOperation
cmgOperation[502] = text42
cmgOperation[503] = text48
cmgOperation[504] = rageUiOperation2
cmgOperation[505] = rageUiOperation3
cmgOperation[506] = rageUiOperation4
cmgOperation[507] = text54
cmgOperation[508] = text
cmgOperation[509] = text2
cmgOperation[510] = text3
cmgOperation[511] = text4
cmgOperation[512] = text5
cmgOperation[513] = text6
cmgOperation[514] = text7
cmgOperation[515] = text8
cmgOperation[516] = text9
cmgOperation[517] = text10
cmgOperation[518] = text12
cmgOperation[519] = text13
cmgOperation[520] = text14
cmgOperation[521] = text15
cmgOperation[522] = text16
cmgOperation[523] = text17
cmgOperation[524] = text18
cmgOperation[525] = text19
cmgOperation[526] = text20
cmgOperation[527] = text21
cmgOperation[528] = text22
cmgOperation[529] = text23
cmgOperation[530] = text24
cmgOperation[531] = text25
cmgOperation[532] = text26
cmgOperation[533] = text27
cmgOperation[534] = text28
cmgOperation[535] = text29
cmgOperation[536] = text30
cmgOperation[537] = text31
cmgOperation[538] = text32
cmgOperation[539] = text33
cmgOperation[540] = text34
cmgOperation[541] = text35
cmgOperation[542] = text36
cmgOperation[543] = text37
cmgOperation[544] = text38
cmgOperation[545] = text39
cmgOperation[546] = text40
cmgOperation[547] = text41
cmgOperation[548] = text45
cmgOperation[549] = text46
cmgOperation[550] = text47
rageUiOperation = "int_extlight_small"
text42 = "int_extlight_small_clipped"
text48 = "int_extlight_small_fog"
rageUiOperation2 = "int_hanger_none"
rageUiOperation3 = "int_hanger_small"
rageUiOperation4 = "int_hospital_dark"
text54 = "int_hospital_small"
text = "int_lesters"
text2 = "int_methlab_small"
text3 = "int_motelroom"
text4 = "int_office_Lobby"
text5 = "int_office_LobbyHall"
text6 = "int_tattoo"
text7 = "int_tattoo_B"
text8 = "int_tunnel_none_dark"
text9 = "interior_WATER_lighting"
text10 = "introblue"
text12 = "jewel_gas"
text13 = "jewel_optim"
text14 = "jewelry_entrance"
text15 = "jewelry_entrance_INT"
text16 = "jewelry_entrance_INT_fog"
text17 = "lab_none"
text18 = "lab_none_dark"
text19 = "lab_none_dark_OVR"
text20 = "lab_none_dark_fog"
text21 = "lab_none_exit"
text22 = "lab_none_exit_OVR"
text23 = "li"
text24 = "lightning"
text25 = "lightning_cloud"
text26 = "lightning_strong"
text27 = "lightning_weak"
text28 = "lightpolution"
text29 = "lodscaler"
text30 = "maxlodscaler"
text31 = "metro"
text32 = "micheal"
text33 = "micheals_lightsOFF"
text34 = "michealspliff"
text35 = "michealspliff_blend"
text36 = "michealspliff_blend02"
text37 = "militarybase_nightlight"
text38 = "mineshaft"
text39 = "morebloom"
text40 = "morgue_dark"
text41 = "morgue_dark_ovr"
text45 = "mp_battle_int01"
text46 = "mp_battle_int01_dancefloor"
text47 = "mp_battle_int01_dancefloor_OFF"
cmgOperation[551] = rageUiOperation
cmgOperation[552] = text42
cmgOperation[553] = text48
cmgOperation[554] = rageUiOperation2
cmgOperation[555] = rageUiOperation3
cmgOperation[556] = rageUiOperation4
cmgOperation[557] = text54
cmgOperation[558] = text
cmgOperation[559] = text2
cmgOperation[560] = text3
cmgOperation[561] = text4
cmgOperation[562] = text5
cmgOperation[563] = text6
cmgOperation[564] = text7
cmgOperation[565] = text8
cmgOperation[566] = text9
cmgOperation[567] = text10
cmgOperation[568] = text12
cmgOperation[569] = text13
cmgOperation[570] = text14
cmgOperation[571] = text15
cmgOperation[572] = text16
cmgOperation[573] = text17
cmgOperation[574] = text18
cmgOperation[575] = text19
cmgOperation[576] = text20
cmgOperation[577] = text21
cmgOperation[578] = text22
cmgOperation[579] = text23
cmgOperation[580] = text24
cmgOperation[581] = text25
cmgOperation[582] = text26
cmgOperation[583] = text27
cmgOperation[584] = text28
cmgOperation[585] = text29
cmgOperation[586] = text30
cmgOperation[587] = text31
cmgOperation[588] = text32
cmgOperation[589] = text33
cmgOperation[590] = text34
cmgOperation[591] = text35
cmgOperation[592] = text36
cmgOperation[593] = text37
cmgOperation[594] = text38
cmgOperation[595] = text39
cmgOperation[596] = text40
cmgOperation[597] = text41
cmgOperation[598] = text45
cmgOperation[599] = text46
cmgOperation[600] = text47
rageUiOperation = "mp_battle_int01_entry"
text42 = "mp_battle_int01_garage"
text48 = "mp_battle_int01_office"
rageUiOperation2 = "mp_battle_int02"
rageUiOperation3 = "mp_battle_int03"
rageUiOperation4 = "mp_battle_int03_tint1"
text54 = "mp_battle_int03_tint2"
text = "mp_battle_int03_tint3"
text2 = "mp_battle_int03_tint4"
text3 = "mp_battle_int03_tint5"
text4 = "mp_battle_int03_tint6"
text5 = "mp_battle_int03_tint7"
text6 = "mp_battle_int03_tint8"
text7 = "mp_battle_int03_tint9"
text8 = "mp_bkr_int01_garage"
text9 = "mp_bkr_int01_small_rooms"
text10 = "mp_bkr_int01_transition"
text12 = "mp_bkr_int02_garage"
text13 = "mp_bkr_int02_hangout"
text14 = "mp_bkr_int02_small_rooms"
text15 = "mp_bkr_ware01"
text16 = "mp_bkr_ware02_dry"
text17 = "mp_bkr_ware02_standard"
text18 = "mp_bkr_ware02_upgrade"
text19 = "mp_bkr_ware03_basic"
text20 = "mp_bkr_ware03_upgrade"
text21 = "mp_bkr_ware04"
text22 = "mp_bkr_ware05"
text23 = "mp_exec_office_01"
text24 = "mp_exec_office_02"
text25 = "mp_exec_office_03"
text26 = "mp_exec_office_03C"
text27 = "mp_exec_office_03_blue"
text28 = "mp_exec_office_04"
text29 = "mp_exec_office_05"
text30 = "mp_exec_office_06"
text31 = "mp_exec_warehouse_01"
text32 = "mp_gr_int01_black"
text33 = "mp_gr_int01_grey"
text34 = "mp_gr_int01_white"
text35 = "mp_h_05"
text36 = "mp_h_07"
text37 = "mp_h_08"
text38 = "mp_imx_intwaremed"
text39 = "mp_imx_intwaremed_office"
text40 = "mp_imx_mod_int_01"
text41 = "mp_lad_day"
text45 = "mp_lad_judgment"
text46 = "mp_lad_night"
text47 = "mp_nightshark_shield_fp"
cmgOperation[601] = rageUiOperation
cmgOperation[602] = text42
cmgOperation[603] = text48
cmgOperation[604] = rageUiOperation2
cmgOperation[605] = rageUiOperation3
cmgOperation[606] = rageUiOperation4
cmgOperation[607] = text54
cmgOperation[608] = text
cmgOperation[609] = text2
cmgOperation[610] = text3
cmgOperation[611] = text4
cmgOperation[612] = text5
cmgOperation[613] = text6
cmgOperation[614] = text7
cmgOperation[615] = text8
cmgOperation[616] = text9
cmgOperation[617] = text10
cmgOperation[618] = text12
cmgOperation[619] = text13
cmgOperation[620] = text14
cmgOperation[621] = text15
cmgOperation[622] = text16
cmgOperation[623] = text17
cmgOperation[624] = text18
cmgOperation[625] = text19
cmgOperation[626] = text20
cmgOperation[627] = text21
cmgOperation[628] = text22
cmgOperation[629] = text23
cmgOperation[630] = text24
cmgOperation[631] = text25
cmgOperation[632] = text26
cmgOperation[633] = text27
cmgOperation[634] = text28
cmgOperation[635] = text29
cmgOperation[636] = text30
cmgOperation[637] = text31
cmgOperation[638] = text32
cmgOperation[639] = text33
cmgOperation[640] = text34
cmgOperation[641] = text35
cmgOperation[642] = text36
cmgOperation[643] = text37
cmgOperation[644] = text38
cmgOperation[645] = text39
cmgOperation[646] = text40
cmgOperation[647] = text41
cmgOperation[648] = text45
cmgOperation[649] = text46
cmgOperation[650] = text47
rageUiOperation = "mp_smg_int01_han"
text42 = "mp_smg_int01_han_blue"
text48 = "mp_smg_int01_han_red"
rageUiOperation2 = "mp_smg_int01_han_yellow"
rageUiOperation3 = "mp_x17dlc_base"
rageUiOperation4 = "mp_x17dlc_base_dark"
text54 = "mp_x17dlc_base_darkest"
text = "mp_x17dlc_facility"
text2 = "mp_x17dlc_facility2"
text3 = "mp_x17dlc_facility_conference"
text4 = "mp_x17dlc_in_sub"
text5 = "mp_x17dlc_in_sub_no_reflection"
text6 = "mp_x17dlc_int_01"
text7 = "mp_x17dlc_int_01_tint1"
text8 = "mp_x17dlc_int_01_tint2"
text9 = "mp_x17dlc_int_01_tint3"
text10 = "mp_x17dlc_int_01_tint4"
text12 = "mp_x17dlc_int_01_tint5"
text13 = "mp_x17dlc_int_01_tint6"
text14 = "mp_x17dlc_int_01_tint7"
text15 = "mp_x17dlc_int_01_tint8"
text16 = "mp_x17dlc_int_01_tint9"
text17 = "mp_x17dlc_int_02"
text18 = "mp_x17dlc_int_02_hangar"
text19 = "mp_x17dlc_int_02_outdoor_intro_camera"
text20 = "mp_x17dlc_int_02_tint1"
text21 = "mp_x17dlc_int_02_tint2"
text22 = "mp_x17dlc_int_02_tint3"
text23 = "mp_x17dlc_int_02_tint4"
text24 = "mp_x17dlc_int_02_tint5"
text25 = "mp_x17dlc_int_02_tint6"
text26 = "mp_x17dlc_int_02_tint7"
text27 = "mp_x17dlc_int_02_tint8"
text28 = "mp_x17dlc_int_02_tint9"
text29 = "mp_x17dlc_int_02_vehicle_avenger_camera"
text30 = "mp_x17dlc_int_02_vehicle_workshop_camera"
text31 = "mp_x17dlc_int_02_weapon_avenger_camera"
text32 = "mp_x17dlc_int_silo"
text33 = "mp_x17dlc_int_silo_escape"
text34 = "mp_x17dlc_lab"
text35 = "mp_x17dlc_lab_loading_bay"
text36 = "mugShot"
text37 = "mugShot_lineup"
text38 = "multiplayer_ped_fight"
text39 = "nervousRON_fog"
text40 = "new_MP_Garage_L"
text41 = "new_bank"
text45 = "new_stripper_changing"
text46 = "new_tunnels_entrance"
text47 = "nextgen"
cmgOperation[651] = rageUiOperation
cmgOperation[652] = text42
cmgOperation[653] = text48
cmgOperation[654] = rageUiOperation2
cmgOperation[655] = rageUiOperation3
cmgOperation[656] = rageUiOperation4
cmgOperation[657] = text54
cmgOperation[658] = text
cmgOperation[659] = text2
cmgOperation[660] = text3
cmgOperation[661] = text4
cmgOperation[662] = text5
cmgOperation[663] = text6
cmgOperation[664] = text7
cmgOperation[665] = text8
cmgOperation[666] = text9
cmgOperation[667] = text10
cmgOperation[668] = text12
cmgOperation[669] = text13
cmgOperation[670] = text14
cmgOperation[671] = text15
cmgOperation[672] = text16
cmgOperation[673] = text17
cmgOperation[674] = text18
cmgOperation[675] = text19
cmgOperation[676] = text20
cmgOperation[677] = text21
cmgOperation[678] = text22
cmgOperation[679] = text23
cmgOperation[680] = text24
cmgOperation[681] = text25
cmgOperation[682] = text26
cmgOperation[683] = text27
cmgOperation[684] = text28
cmgOperation[685] = text29
cmgOperation[686] = text30
cmgOperation[687] = text31
cmgOperation[688] = text32
cmgOperation[689] = text33
cmgOperation[690] = text34
cmgOperation[691] = text35
cmgOperation[692] = text36
cmgOperation[693] = text37
cmgOperation[694] = text38
cmgOperation[695] = text39
cmgOperation[696] = text40
cmgOperation[697] = text41
cmgOperation[698] = text45
cmgOperation[699] = text46
cmgOperation[700] = text47
rageUiOperation = "nightvision"
text42 = "overwater"
text48 = "paleto_nightlight"
rageUiOperation2 = "paleto_opt"
rageUiOperation3 = "phone_cam"
rageUiOperation4 = "phone_cam1"
text54 = "phone_cam10"
text = "phone_cam11"
text2 = "phone_cam12"
text3 = "phone_cam13"
text4 = "phone_cam2"
text5 = "phone_cam3"
text6 = "phone_cam3_REMOVED"
text7 = "phone_cam4"
text8 = "phone_cam5"
text9 = "phone_cam6"
text10 = "phone_cam7"
text12 = "phone_cam8"
text13 = "phone_cam8_REMOVED"
text14 = "phone_cam9"
text15 = "plane_inside_mode"
text16 = "player_transition"
text17 = "player_transition_no_scanlines"
text18 = "player_transition_scanlines"
text19 = "plaza_carpark"
text20 = "polluted"
text21 = "poolsidewaterreflection2"
text22 = "powerplant_nightlight"
text23 = "powerstation"
text24 = "prison_nightlight"
text25 = "projector"
text26 = "prologue"
text27 = "prologue_ending_fog"
text28 = "prologue_ext_art_amb"
text29 = "prologue_reflection_opt"
text30 = "prologue_shootout"
text31 = "pulse"
text32 = "ranch"
text33 = "reducelightingcost"
text34 = "reducewaterREF"
text35 = "refit"
text36 = "reflection_correct_ambient"
text37 = "resvoire_reflection"
text38 = "rply_brightness"
text39 = "rply_brightness_neg"
text40 = "rply_contrast"
text41 = "rply_contrast_neg"
text45 = "rply_motionblur"
text46 = "rply_saturation"
text47 = "rply_saturation_neg"
cmgOperation[701] = rageUiOperation
cmgOperation[702] = text42
cmgOperation[703] = text48
cmgOperation[704] = rageUiOperation2
cmgOperation[705] = rageUiOperation3
cmgOperation[706] = rageUiOperation4
cmgOperation[707] = text54
cmgOperation[708] = text
cmgOperation[709] = text2
cmgOperation[710] = text3
cmgOperation[711] = text4
cmgOperation[712] = text5
cmgOperation[713] = text6
cmgOperation[714] = text7
cmgOperation[715] = text8
cmgOperation[716] = text9
cmgOperation[717] = text10
cmgOperation[718] = text12
cmgOperation[719] = text13
cmgOperation[720] = text14
cmgOperation[721] = text15
cmgOperation[722] = text16
cmgOperation[723] = text17
cmgOperation[724] = text18
cmgOperation[725] = text19
cmgOperation[726] = text20
cmgOperation[727] = text21
cmgOperation[728] = text22
cmgOperation[729] = text23
cmgOperation[730] = text24
cmgOperation[731] = text25
cmgOperation[732] = text26
cmgOperation[733] = text27
cmgOperation[734] = text28
cmgOperation[735] = text29
cmgOperation[736] = text30
cmgOperation[737] = text31
cmgOperation[738] = text32
cmgOperation[739] = text33
cmgOperation[740] = text34
cmgOperation[741] = text35
cmgOperation[742] = text36
cmgOperation[743] = text37
cmgOperation[744] = text38
cmgOperation[745] = text39
cmgOperation[746] = text40
cmgOperation[747] = text41
cmgOperation[748] = text45
cmgOperation[749] = text46
cmgOperation[750] = text47
rageUiOperation = "rply_vignette"
text42 = "rply_vignette_neg"
text48 = "sandyshore_nightlight"
rageUiOperation2 = "scanline_cam"
rageUiOperation3 = "scanline_cam_cheap"
rageUiOperation4 = "scope_zoom_in"
text54 = "scope_zoom_out"
text = "secret_camera"
text2 = "services_nightlight"
text3 = "shades_pink"
text4 = "shades_yellow"
text5 = "ship_explosion_underwater"
text6 = "ship_lighting"
text7 = "sleeping"
text8 = "spectator1"
text9 = "spectator10"
text10 = "spectator2"
text12 = "spectator3"
text13 = "spectator4"
text14 = "spectator5"
text15 = "spectator6"
text16 = "spectator7"
text17 = "spectator8"
text18 = "spectator9"
text19 = "stc_coroners"
text20 = "stc_deviant_bedroom"
text21 = "stc_deviant_lounge"
text22 = "stc_franklinsHouse"
text23 = "stc_trevors"
text24 = "stoned"
text25 = "stoned_aliens"
text26 = "stoned_cutscene"
text27 = "stoned_monkeys"
text28 = "subBASE_water_ref"
text29 = "sunglasses"
text30 = "superDARK"
text31 = "switch_cam_1"
text32 = "switch_cam_2"
text33 = "telescope"
text34 = "torpedo"
text35 = "traffic_skycam"
text36 = "trailer_explosion_optimise"
text37 = "trevorspliff"
text38 = "trevorspliff_blend"
text39 = "trevorspliff_blend02"
text40 = "tunnel_entrance"
text41 = "tunnel_entrance_INT"
text45 = "tunnel_id1_11"
text46 = "ufo"
text47 = "ufo_deathray"
cmgOperation[751] = rageUiOperation
cmgOperation[752] = text42
cmgOperation[753] = text48
cmgOperation[754] = rageUiOperation2
cmgOperation[755] = rageUiOperation3
cmgOperation[756] = rageUiOperation4
cmgOperation[757] = text54
cmgOperation[758] = text
cmgOperation[759] = text2
cmgOperation[760] = text3
cmgOperation[761] = text4
cmgOperation[762] = text5
cmgOperation[763] = text6
cmgOperation[764] = text7
cmgOperation[765] = text8
cmgOperation[766] = text9
cmgOperation[767] = text10
cmgOperation[768] = text12
cmgOperation[769] = text13
cmgOperation[770] = text14
cmgOperation[771] = text15
cmgOperation[772] = text16
cmgOperation[773] = text17
cmgOperation[774] = text18
cmgOperation[775] = text19
cmgOperation[776] = text20
cmgOperation[777] = text21
cmgOperation[778] = text22
cmgOperation[779] = text23
cmgOperation[780] = text24
cmgOperation[781] = text25
cmgOperation[782] = text26
cmgOperation[783] = text27
cmgOperation[784] = text28
cmgOperation[785] = text29
cmgOperation[786] = text30
cmgOperation[787] = text31
cmgOperation[788] = text32
cmgOperation[789] = text33
cmgOperation[790] = text34
cmgOperation[791] = text35
cmgOperation[792] = text36
cmgOperation[793] = text37
cmgOperation[794] = text38
cmgOperation[795] = text39
cmgOperation[796] = text40
cmgOperation[797] = text41
cmgOperation[798] = text45
cmgOperation[799] = text46
cmgOperation[800] = text47
rageUiOperation = "underwater"
text42 = "underwater_deep"
text48 = "underwater_deep_clear"
rageUiOperation2 = "v_abattoir"
rageUiOperation3 = "v_bahama"
rageUiOperation4 = "v_cashdepot"
text54 = "v_dark"
text = "v_foundry"
text2 = "v_janitor"
text3 = "v_jewel2"
text4 = "v_metro"
text5 = "v_michael"
text6 = "v_michael_lounge"
text7 = "v_recycle"
text8 = "v_rockclub"
text9 = "v_strip3"
text10 = "v_strpchangerm"
text12 = "v_sweat"
text13 = "v_sweat_NoDirLight"
text14 = "v_sweat_entrance"
text15 = "v_torture"
text16 = "vagos_extlight_small"
text17 = "vehicle_subint"
text18 = "venice_canal_tunnel"
text19 = "vespucci_garage"
text20 = "warehouse"
text21 = "whitenightlighting"
text22 = "winning_room"
text23 = "yacht_DLC"
text24 = "yell_tunnel_nodirect"
cmgOperation[801] = rageUiOperation
cmgOperation[802] = text42
cmgOperation[803] = text48
cmgOperation[804] = rageUiOperation2
cmgOperation[805] = rageUiOperation3
cmgOperation[806] = rageUiOperation4
cmgOperation[807] = text54
cmgOperation[808] = text
cmgOperation[809] = text2
cmgOperation[810] = text3
cmgOperation[811] = text4
cmgOperation[812] = text5
cmgOperation[813] = text6
cmgOperation[814] = text7
cmgOperation[815] = text8
cmgOperation[816] = text9
cmgOperation[817] = text10
cmgOperation[818] = text12
cmgOperation[819] = text13
cmgOperation[820] = text14
cmgOperation[821] = text15
cmgOperation[822] = text16
cmgOperation[823] = text17
cmgOperation[824] = text18
cmgOperation[825] = text19
cmgOperation[826] = text20
cmgOperation[827] = text21
cmgOperation[828] = text22
cmgOperation[829] = text23
cmgOperation[830] = text24
rageUiOperation = 1
text42 = {}
text48 = 0.1
rageUiOperation2 = 2.0
rageUiOperation3 = 0.1
for rageUiOperation4 = text48, rageUiOperation2, rageUiOperation3 do
  text54 = _ENV
  text = "table"
  text54 = text54[text]
  text = "insert"
  text54 = text54[text]
  text = text42
  text2 = rageUiOperation4
  text54(text, text2)
end
text48 = {}
rageUiOperation2 = "DEATH_FAIL_IN_EFFECT_SHAKE"
rageUiOperation3 = "DRUNK_SHAKE"
rageUiOperation4 = "FAMILY5_DRUG_TRIP_SHAKE"
text54 = "HAND_SHAKE"
text = "JOLT_SHAKE"
text2 = "LARGE_EXPLOSION_SHAKE"
text3 = "MEDIUM_EXPLOSION_SHAKE"
text4 = "SMALL_EXPLOSION_SHAKE"
text5 = "ROAD_VIBRATION_SHAKE"
text6 = "SKY_DIVING_SHAKE"
text7 = "VIBRATE_SHAKE"
text8 = "KILL_SHOT_SHAKE"
text48[1] = rageUiOperation2
text48[2] = rageUiOperation3
text48[3] = rageUiOperation4
text48[4] = text54
text48[5] = text
text48[6] = text2
text48[7] = text3
text48[8] = text4
text48[9] = text5
text48[10] = text6
text48[11] = text7
text48[12] = text8
rageUiOperation2 = {}
rageUiOperation3 = 1
rageUiOperation4 = 135
text54 = 1
for text = rageUiOperation3, rageUiOperation4, text54 do
  text2 = _ENV
  text3 = "table"
  text2 = text2[text3]
  text3 = "insert"
  text2 = text2[text3]
  text3 = rageUiOperation2
  text4 = text
  text2(text3, text4)
end
rageUiOperation3 = {}
rageUiOperation4 = "Static Camera"
text54 = "Interpolation Camera"
rageUiOperation3[1] = rageUiOperation4
rageUiOperation3[2] = text54
rageUiOperation4 = {}
text54 = "Curved"
text = "Smooth"
rageUiOperation4[1] = text54
rageUiOperation4[2] = text
text54 = {}
text = "Smooth"
text2 = 0
text54[text] = text2
text = "Curved"
text2 = 5
text54[text] = text2
text = {}
text2 = ""
text3 = false
text4 = 0
text5 = 1
text6 = nil
text7 = nil
text8 = nil
text9 = ""
text10 = 1
text12 = 1
text13 = ""
text14 = nil
text15 = 1
text16 = false
text17 = {}
text18 = 0
text19 = 0
text20 = 23
text21 = 1
for text22 = text19, text20, text21 do
  text17[text22] = text22
end
text19 = {}
text20 = 0
text21 = 59
text22 = 1
for text23 = text20, text21, text22 do
  text19[text23] = text23
end
text20 = 0
text21 = {}
text22 = 0
text23 = 59
text24 = 1
for text25 = text22, text23, text24 do
  text21[text25] = text25
end
text22 = 0
text23 = {}
text24 = 1
text25 = 300
text26 = 1
for text27 = text24, text25, text26 do
  text28 = text27 - 1
  text29 = 10
  text28 = text28 * text29
  text29 = 0.001
  text28 = text28 + text29
  text23[text27] = text28
end
text24 = 1
text25 = 1
text26 = 1
text27 = 1
text28 = {}
text29 = "EXTRASUNNY"
text30 = "CLEAR"
text31 = "NEUTRAL"
text32 = "SMOG"
text33 = "FOGGY"
text34 = "OVERCAST"
text35 = "CLOUDS"
text36 = "CLEARING"
text37 = "RAIN"
text38 = "THUNDER"
text39 = "SNOW"
text40 = "BLIZZARD"
text41 = "SNOWLIGHT"
text45 = "XMAS"
text46 = "HALLOWEEN"
text28[1] = text29
text28[2] = text30
text28[3] = text31
text28[4] = text32
text28[5] = text33
text28[6] = text34
text28[7] = text35
text28[8] = text36
text28[9] = text37
text28[10] = text38
text28[11] = text39
text28[12] = text40
text28[13] = text41
text28[14] = text45
text28[15] = text46
text29 = 1
text30 = nil
text31 = _ENV
text32 = "Citizen"
text31 = text31[text32]
text32 = "CreateThread"
text31 = text31[text32]

-- === HELPER FUNCTION (decompiler name: text32; parameters: none) ===
function text32()
  local localValue1, localValue2, localValue3
  localValue1 = json
  localValue1 = localValue1.decode
  localValue2 = GetResourceKvpString
  localValue3 = "cmg_scenedata"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = "{}"
  end
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = {}
  end
  text = localValue1
end
text31(text32)
text31 = _ENV
text32 = "RegisterNetEvent"
text31 = text31[text32]
text32 = "7d4716cb33"

-- === HELPER FUNCTION (decompiler name: text33; parameters: none) ===
function text33()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCombatTimer
  localValue1 = localValue1()
  if 0 == localValue1 then
    localValue1 = workingValue
    localValue2 = true
    localValue1(localValue2)
  end
end
text31(text32, text33)
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "createCinematicScene"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1) ===
function text33(localValue1)
  local localValue2, localValue3, localValue4, text43
  localValue2 = text
  localValue3 = {}
  localValue2[localValue1] = localValue3
  localValue2 = SetResourceKvp
  localValue3 = "cmg_scenedata"
  localValue4 = json
  localValue4 = localValue4.encode
  text43 = text
  localValue4, text43 = localValue4(text43)
  localValue2(localValue3, localValue4, text43)
  localValue2 = tCMG
  localValue2 = localValue2.notify
  localValue3 = "~g~Scene created & saved."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "deleteCinematicScene"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1) ===
function text33(localValue1)
  local localValue2, localValue3, localValue4, text43
  localValue2 = text
  localValue2[localValue1] = nil
  localValue2 = SetResourceKvp
  localValue3 = "cmg_scenedata"
  localValue4 = json
  localValue4 = localValue4.encode
  text43 = text
  localValue4, text43 = localValue4(text43)
  localValue2(localValue3, localValue4, text43)
  localValue2 = tCMG
  localValue2 = localValue2.notify
  localValue3 = "~g~Scene deleted & saved."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "createCamera"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1, localValue2) ===
function text33(localValue1, localValue2)
  local localValue3, localValue4, text43, text49
  localValue3 = text
  localValue3 = localValue3[localValue1]
  localValue3 = #localValue3
  if 0 == localValue3 then
    localValue2.transition = 100
  end
  localValue3 = table
  localValue3 = localValue3.insert
  localValue4 = text
  localValue4 = localValue4[localValue1]
  text43 = localValue2
  localValue3(localValue4, text43)
  localValue3 = text
  localValue3 = localValue3[localValue1]
  localValue3 = #localValue3
  text5 = localValue3
  localValue4 = text2
  localValue3 = text
  localValue3 = localValue3[localValue4]
  localValue4 = text5
  localValue3 = localValue3[localValue4]
  localValue3 = localValue3.type
  if "Static Camera" == localValue3 then
    localValue3 = 1
    text10 = localValue3
  else
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue4 = text5
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3.type
    if "Interpolation Camera" == localValue3 then
      localValue3 = 2
      text10 = localValue3
    end
  end
  localValue4 = text2
  localValue3 = text
  localValue3 = localValue3[localValue4]
  localValue4 = text5
  localValue3 = localValue3[localValue4]
  localValue3 = localValue3.blending
  if 0 == localValue3 then
    localValue3 = 2
    text12 = localValue3
  else
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue4 = text5
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3.blending
    if 5 == localValue3 then
      localValue3 = 1
      text12 = localValue3
    end
  end
  localValue3 = SetResourceKvp
  localValue4 = "cmg_scenedata"
  text43 = json
  text43 = text43.encode
  text49 = text
  text43, text49 = text43(text49)
  localValue3(localValue4, text43, text49)
  localValue3 = tCMG
  localValue3 = localValue3.notify
  localValue4 = "~g~Camera created & saved."
  -- Beginner: Show a notification to the player.
  localValue3(localValue4)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "modifyCamera"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1, localValue2, localValue3) ===
function text33(localValue1, localValue2, localValue3)
  local localValue4, text43, text49, workingValue10
  localValue4 = text
  localValue4 = localValue4[localValue1]
  localValue4[localValue3] = localValue2
  localValue4 = SetResourceKvp
  text43 = "cmg_scenedata"
  text49 = json
  text49 = text49.encode
  workingValue10 = text
  text49, workingValue10 = text49(workingValue10)
  localValue4(text43, text49, workingValue10)
  localValue4 = tCMG
  localValue4 = localValue4.notify
  text43 = "~g~Camera modified & saved."
  -- Beginner: Show a notification to the player.
  localValue4(text43)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "deleteCamera"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1, localValue2) ===
function text33(localValue1, localValue2)
  local localValue3, localValue4, text43, text49
  localValue3 = table
  localValue3 = localValue3.remove
  localValue4 = text
  localValue4 = localValue4[localValue1]
  text43 = localValue2
  localValue3(localValue4, text43)
  localValue3 = SetResourceKvp
  localValue4 = "cmg_scenedata"
  text43 = json
  text43 = text43.encode
  text49 = text
  text43, text49 = text43(text49)
  localValue3(localValue4, text43, text49)
  localValue3 = tCMG
  localValue3 = localValue3.notify
  localValue4 = "~g~Camera deleted & saved."
  -- Beginner: Show a notification to the player.
  localValue3(localValue4)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "modifyTransition"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1, localValue2, localValue3) ===
function text33(localValue1, localValue2, localValue3)
  local localValue4, text43, text49, workingValue10
  localValue4 = text
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4[localValue2]
  text43 = tonumber
  text49 = localValue3
  text43 = text43(text49)
  localValue4.transition = text43
  localValue4 = SetResourceKvp
  text43 = "cmg_scenedata"
  text49 = json
  text49 = text49.encode
  workingValue10 = text
  text49, workingValue10 = text49(workingValue10)
  localValue4(text43, text49, workingValue10)
  localValue4 = tCMG
  localValue4 = localValue4.notify
  text43 = "~g~Transition change saved."
  -- Beginner: Show a notification to the player.
  localValue4(text43)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "modifyCameraBlending"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1, localValue2, localValue3) ===
function text33(localValue1, localValue2, localValue3)
  local localValue4, text43, text49, workingValue10
  localValue4 = text
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4[localValue2]
  text43 = text54
  text43 = text43[localValue3]
  localValue4.blending = text43
  localValue4 = SetResourceKvp
  text43 = "cmg_scenedata"
  text49 = json
  text49 = text49.encode
  workingValue10 = text
  text49, workingValue10 = text49(workingValue10)
  localValue4(text43, text49, workingValue10)
  localValue4 = tCMG
  localValue4 = localValue4.notify
  text43 = "~g~Camera Blending change saved."
  -- Beginner: Show a notification to the player.
  localValue4(text43)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "modifyScreeneffect"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1, localValue2, localValue3) ===
function text33(localValue1, localValue2, localValue3)
  local localValue4, text43, text49, workingValue10
  localValue4 = text
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4[localValue2]
  localValue4.screeneffect = localValue3
  localValue4 = SetResourceKvp
  text43 = "cmg_scenedata"
  text49 = json
  text49 = text49.encode
  workingValue10 = text
  text49, workingValue10 = text49(workingValue10)
  localValue4(text43, text49, workingValue10)
  localValue4 = tCMG
  localValue4 = localValue4.notify
  text43 = "~g~Screeneffect change saved."
  -- Beginner: Show a notification to the player.
  localValue4(text43)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "modifyTimecycleEffect"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1, localValue2, localValue3) ===
function text33(localValue1, localValue2, localValue3)
  local localValue4, text43, text49, workingValue10
  localValue4 = text
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4[localValue2]
  localValue4.timecycleEffect = localValue3
  localValue4 = SetResourceKvp
  text43 = "cmg_scenedata"
  text49 = json
  text49 = text49.encode
  workingValue10 = text
  text49, workingValue10 = text49(workingValue10)
  localValue4(text43, text49, workingValue10)
  localValue4 = tCMG
  localValue4 = localValue4.notify
  text43 = "~g~Timecycle Effect change saved."
  -- Beginner: Show a notification to the player.
  localValue4(text43)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "setTimecycleIntensity"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1, localValue2, localValue3) ===
function text33(localValue1, localValue2, localValue3)
  local localValue4, text43, text49, workingValue10
  localValue4 = text
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4[localValue2]
  localValue4.timecycleIntensity = localValue3
  localValue4 = SetResourceKvp
  text43 = "cmg_scenedata"
  text49 = json
  text49 = text49.encode
  workingValue10 = text
  text49, workingValue10 = text49(workingValue10)
  localValue4(text43, text49, workingValue10)
  localValue4 = tCMG
  localValue4 = localValue4.notify
  text43 = "~g~Timecycle intensity change saved."
  -- Beginner: Show a notification to the player.
  localValue4(text43)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "modifyShakeEffect"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1, localValue2, localValue3) ===
function text33(localValue1, localValue2, localValue3)
  local localValue4, text43, text49, workingValue10
  localValue4 = text
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4[localValue2]
  localValue4.shake = localValue3
  localValue4 = SetResourceKvp
  text43 = "cmg_scenedata"
  text49 = json
  text49 = text49.encode
  workingValue10 = text
  text49, workingValue10 = text49(workingValue10)
  localValue4(text43, text49, workingValue10)
  localValue4 = tCMG
  localValue4 = localValue4.notify
  text43 = "~g~Shake change saved."
  -- Beginner: Show a notification to the player.
  localValue4(text43)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "modifyCameraType"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1, localValue2, localValue3) ===
function text33(localValue1, localValue2, localValue3)
  local localValue4, text43, text49, workingValue10
  localValue4 = text
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4[localValue2]
  localValue4.type = localValue3
  localValue4 = SetResourceKvp
  text43 = "cmg_scenedata"
  text49 = json
  text49 = text49.encode
  workingValue10 = text
  text49, workingValue10 = text49(workingValue10)
  localValue4(text43, text49, workingValue10)
  localValue4 = tCMG
  localValue4 = localValue4.notify
  text43 = "~g~Camera type change saved."
  -- Beginner: Show a notification to the player.
  localValue4(text43)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "addCameraFocus"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1, localValue2, localValue3, localValue4) ===
function text33(localValue1, localValue2, localValue3, localValue4)
  local text43, text49, workingValue10, stateFlag9
  text43 = text
  text43 = text43[localValue1]
  text43 = text43[localValue2]
  text43.focusType = localValue3
  text43 = text
  text43 = text43[localValue1]
  text43 = text43[localValue2]
  text43.focusData = localValue4
  text43 = SetResourceKvp
  text49 = "cmg_scenedata"
  workingValue10 = json
  workingValue10 = workingValue10.encode
  stateFlag9 = text
  workingValue10, stateFlag9 = workingValue10(stateFlag9)
  text43(text49, workingValue10, stateFlag9)
  text43 = tCMG
  text43 = text43.notify
  text49 = "~g~Follow player change saved."
  -- Beginner: Show a notification to the player.
  text43(text49)
end
text31[text32] = text33
text31 = _ENV
text32 = "CMG"
text31 = text31[text32]
text32 = "setCameraFov"

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1, localValue2) ===
function text33(localValue1, localValue2)
  local localValue3, localValue4, text43, text49
  localValue3 = text
  localValue3 = localValue3[localValue1]
  localValue3 = localValue3[localValue2]
  text43 = text15
  localValue4 = rageUiOperation2
  localValue4 = localValue4[text43]
  localValue3.fov = localValue4
  localValue3 = SetResourceKvp
  localValue4 = "cmg_scenedata"
  text43 = json
  text43 = text43.encode
  text49 = text
  text43, text49 = text43(text49)
  localValue3(localValue4, text43, text49)
  localValue3 = tCMG
  localValue3 = localValue3.notify
  localValue4 = "~g~FOV change saved."
  -- Beginner: Show a notification to the player.
  localValue3(localValue4)
end
text31[text32] = text33

-- === HELPER FUNCTION (decompiler name: text31; parameters: localValue1, localValue2) ===
function text31(localValue1, localValue2)
  local localValue3, localValue4, text43
  localValue3 = localValue2.position
  if nil == localValue3 then
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3[localValue1]
    localValue4 = GetEntityCoords
    text43 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    text43 = text43()
    -- Beginner: result below is entityCoords.
    localValue4 = localValue4(text43)
    localValue3.position = localValue4
  end
  localValue3 = localValue2.rotation
  if nil == localValue3 then
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3[localValue1]
    localValue4 = GetGameplayCamRot
    text43 = 0
    localValue4 = localValue4(text43)
    localValue3.rotation = localValue4
  end
  localValue3 = localValue2.transition
  if nil == localValue3 then
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3[localValue1]
    localValue3.transition = 5000
  end
  localValue3 = localValue2.type
  if nil == localValue3 then
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3[localValue1]
    localValue4 = text9
    localValue3.type = localValue4
  end
  localValue3 = localValue2.screeneffect
  if nil == localValue3 then
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3[localValue1]
    localValue3.screeneffect = ""
  end
  localValue3 = localValue2.timecycleEffect
  if nil == localValue3 then
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3[localValue1]
    localValue3.timecycleEffect = ""
  end
  localValue3 = localValue2.timecycleIntensity
  if nil == localValue3 then
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3[localValue1]
    localValue3.timecycleIntensity = 1.0
  end
  localValue3 = localValue2.focusType
  if nil == localValue3 then
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3[localValue1]
    localValue3.focusType = ""
  end
  localValue3 = localValue2.focusData
  if nil == localValue3 then
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3[localValue1]
    localValue3.focusData = 0
  end
  localValue3 = localValue2.shake
  if nil == localValue3 then
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3[localValue1]
    localValue3.shake = ""
  end
  localValue3 = localValue2.fov
  if nil == localValue3 then
    localValue4 = text2
    localValue3 = text
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3[localValue1]
    localValue3.fov = 65.0
  end
end

-- === HELPER FUNCTION (decompiler name: text32; parameters: none) ===
function text32()
  local localValue1, localValue2, localValue3, localValue4, text43, text49
  localValue1 = text6
  if localValue1 then
    localValue1 = DestroyCam
    localValue2 = text6
    localValue3 = false
    localValue1(localValue2, localValue3)
    localValue1 = RenderScriptCams
    localValue2 = false
    localValue3 = false
    localValue4 = 1
    text43 = true
    text49 = true
    localValue1(localValue2, localValue3, localValue4, text43, text49)
  end
  localValue1 = ClearFocus
  localValue1()
end

-- === HELPER FUNCTION (decompiler name: text33; parameters: localValue1) ===
function text33(localValue1)
  local localValue2, localValue3
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local workingValue2, stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number, stateFlag2, number2, stateFlag3, number3
    workingValue2 = clearNativeText
    workingValue2()
    workingValue2 = text7
    if workingValue2 then
      workingValue2 = DestroyCam
      stateFlag4 = text7
      stateFlag5 = false
      workingValue2(stateFlag4, stateFlag5)
      workingValue2 = RenderScriptCams
      stateFlag4 = false
      stateFlag5 = false
      number4 = 1
      stateFlag6 = true
      stateFlag7 = true
      workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7)
    end
    workingValue2 = DoesCamExist
    stateFlag4 = text7
    workingValue2 = workingValue2(stateFlag4)
    if not workingValue2 then
      workingValue2 = CreateCam
      stateFlag4 = "DEFAULT_SCRIPTED_CAMERA"
      stateFlag5 = true
      -- Beginner: result below is cameraHandle.
      workingValue2 = workingValue2(stateFlag4, stateFlag5)
      text7 = workingValue2
      workingValue2 = SetCamActive
      stateFlag4 = text7
      stateFlag5 = true
      workingValue2(stateFlag4, stateFlag5)
      workingValue2 = RenderScriptCams
      stateFlag4 = true
      stateFlag5 = true
      number4 = 0
      stateFlag6 = true
      stateFlag7 = false
      workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7)
    end
    workingValue2 = print
    stateFlag4 = "initiating render"
    workingValue2(stateFlag4)
    workingValue2 = nil
    stateFlag4 = pairs
    number4 = localValue1
    stateFlag5 = text
    stateFlag5 = stateFlag5[number4]
    stateFlag4, stateFlag5, number4, stateFlag6 = stateFlag4(stateFlag5)
    for stateFlag7, stateFlag8 in stateFlag4, stateFlag5, number4, stateFlag6 do
      workingValue11 = CreateCameraWithParams
      text52 = "DEFAULT_SCRIPTED_CAMERA"
      stateFlag14 = stateFlag8.position
      stateFlag14 = stateFlag14.x
      position = stateFlag8.position
      position = position.y
      position2 = stateFlag8.position
      position2 = position2.z
      workingValue7 = stateFlag8.rotation
      workingValue7 = workingValue7.x
      number = stateFlag8.rotation
      number = number.y
      stateFlag2 = stateFlag8.rotation
      stateFlag2 = stateFlag2.z
      number2 = stateFlag8.fov
      if not number2 then
        number2 = 65.0
      end
      number2 = number2 + 0.001
      stateFlag3 = false
      number3 = 2
      workingValue11 = workingValue11(text52, stateFlag14, position, position2, workingValue7, number, stateFlag2, number2, stateFlag3, number3)
      text14 = workingValue11
      workingValue11 = stateFlag8.type
      if "Static Camera" == workingValue11 then
        workingValue11 = SetCamActive
        text52 = text14
        stateFlag14 = true
        workingValue11(text52, stateFlag14)
      else
        workingValue11 = stateFlag8.type
        if "Interpolation Camera" == workingValue11 then
          workingValue11 = SetCamActiveWithInterp
          text52 = text14
          stateFlag14 = workingValue2
          position = stateFlag8.transition
          position2 = stateFlag8.blending
          if not position2 then
            position2 = 5
          end
          workingValue7 = stateFlag8.blending
          if not workingValue7 then
            workingValue7 = 5
          end
          workingValue11(text52, stateFlag14, position, position2, workingValue7)
        end
      end
      workingValue11 = stateFlag8.focusType
      if "" ~= workingValue11 then
        workingValue11 = stateFlag8.focusType
        if "player" == workingValue11 then
          workingValue11 = GetPlayerPed
          text52 = stateFlag8.focusData
          -- Beginner: result below is playerPed.
          workingValue11 = workingValue11(text52)
          if workingValue11 then
            text52 = PointCamAtEntity
            stateFlag14 = text14
            position = workingValue11
            position2 = 1
            workingValue7 = 1
            number = 1
            stateFlag2 = true
            text52(stateFlag14, position, position2, workingValue7, number, stateFlag2)
          else
            text52 = print
            stateFlag14 = "[CMG Cinematic] Failed to point cam at player, could not get entity."
            text52(stateFlag14)
          end
        else
          workingValue11 = stateFlag8.focusType
          if "coord" == workingValue11 then
            workingValue11 = PointCamAtCoord
            text52 = text14
            stateFlag14 = stateFlag8.focusData
            stateFlag14 = stateFlag14.x
            position = stateFlag8.focusData
            position = position.y
            position2 = stateFlag8.focusData
            position2 = position2.z
            workingValue11(text52, stateFlag14, position, position2)
          end
        end
      end
      workingValue11 = stateFlag8.shake
      if "" ~= workingValue11 then
        workingValue11 = ShakeCam
        text52 = text14
        stateFlag14 = stateFlag8.shake
        position = 1.0
        workingValue11(text52, stateFlag14, position)
      end
      workingValue11 = stateFlag8.screeneffect
      if "Default" ~= workingValue11 then
        workingValue11 = stateFlag8.screeneffect
        if "" ~= workingValue11 then
          workingValue11 = AnimpostfxPlay
          text52 = stateFlag8.screeneffect
          stateFlag14 = stateFlag8.transition
          position = false
          workingValue11(text52, stateFlag14, position)
        end
      end
      workingValue11 = stateFlag8.timecycleEffect
      if "Default" ~= workingValue11 then
        workingValue11 = stateFlag8.timecycleEffect
        if "" ~= workingValue11 then
          workingValue11 = SetTimecycleModifier
          text52 = stateFlag8.timecycleEffect
          workingValue11(text52)
          workingValue11 = SetTimecycleModifierStrength
          text52 = stateFlag8.timecycleIntensity
          workingValue11(text52)
        end
      end
      workingValue2 = text14
      workingValue11 = Wait
      text52 = stateFlag8.transition
      workingValue11(text52)
      workingValue11 = AnimpostfxStopAll
      workingValue11()
      workingValue11 = ClearTimecycleModifier
      workingValue11()
    end
    stateFlag4 = DestroyCam
    stateFlag5 = text14
    number4 = false
    stateFlag4(stateFlag5, number4)
    stateFlag4 = RenderScriptCams
    stateFlag5 = false
    number4 = false
    stateFlag6 = 1
    stateFlag7 = true
    stateFlag8 = true
    stateFlag4(stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8)
    stateFlag4 = nil
    text14 = stateFlag4
    stateFlag4 = DestroyCam
    stateFlag5 = workingValue2
    number4 = false
    stateFlag4(stateFlag5, number4)
    stateFlag4 = RenderScriptCams
    stateFlag5 = false
    number4 = false
    stateFlag6 = 1
    stateFlag7 = true
    stateFlag8 = true
    stateFlag4(stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8)
    stateFlag4 = ClearFocus
    stateFlag4()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end
text34 = _ENV
text35 = "RageUI"
text34 = text34[text35]
text35 = "CreateWhile"
text34 = text34[text35]
text35 = 1.0
text36 = _ENV
text37 = "RMenu"
text36 = text36[text37]
text38 = "Get"
text37 = text36
text36 = text36[text38]
text38 = "mainmenu"
text39 = "cinematic"
text36 = text36(text37, text38, text39)
text37 = nil

-- === HELPER FUNCTION (decompiler name: text38; parameters: none) ===
function text38()
  local localValue1, localValue2, localValue3, localValue4, text43, text49, workingValue10
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "mainmenu"
  text43 = "cinematic"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text43)
  localValue3 = true
  localValue4 = true
  text43 = true

  -- === HELPER FUNCTION (decompiler name: text49; parameters: none) ===
  function text49()
    local workingValue2, stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14
    workingValue2 = CMG
    workingValue2 = workingValue2.getPlayerCombatTimer
    workingValue2 = workingValue2()
    if workingValue2 > 0 then
      workingValue2 = RageUI
      workingValue2 = workingValue2.CloseAll
      workingValue2()
    end
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    stateFlag4 = "Create Scene"
    stateFlag5 = ""
    number4 = {}
    number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag7(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation2, number5
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.GetRageInputText
        cmgOperation2 = "Scene Name"
        localValue42 = localValue42(cmgOperation2)
        if "" ~= localValue42 then
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.createCinematicScene
          number5 = localValue42
          cmgOperation2(number5)
        end
      end
    end
    stateFlag8 = RMenu
    workingValue11 = stateFlag8
    stateFlag8 = stateFlag8.Get
    text52 = "mainmenu"
    stateFlag14 = "cinematic"
    stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    stateFlag4 = "Load Scene"
    stateFlag5 = ""
    number4 = {}
    number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag7(localValue12, localValue22, localValue32)
    end
    stateFlag8 = RMenu
    workingValue11 = stateFlag8
    stateFlag8 = stateFlag8.Get
    text52 = "load_scene"
    stateFlag14 = "cinematic"
    stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    stateFlag4 = "Weather/Time Editor"
    stateFlag5 = ""
    number4 = {}
    number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag7(localValue12, localValue22, localValue32)
    end
    stateFlag8 = RMenu
    workingValue11 = stateFlag8
    stateFlag8 = stateFlag8.Get
    text52 = "weather_time_manager"
    stateFlag14 = "cinematic"
    stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    stateFlag4 = "Delete Scene"
    stateFlag5 = ""
    number4 = {}
    number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag7(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation2, number5
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.GetRageInputText
        cmgOperation2 = "Scene Name"
        localValue42 = localValue42(cmgOperation2)
        if "" ~= localValue42 then
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.deleteCinematicScene
          number5 = localValue42
          cmgOperation2(number5)
        end
      end
    end
    stateFlag8 = RMenu
    workingValue11 = stateFlag8
    stateFlag8 = stateFlag8.Get
    text52 = "mainmenu"
    stateFlag14 = "cinematic"
    stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    stateFlag4 = "UI Visiblity"
    stateFlag5 = ""
    number4 = {}
    number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: none) ===
    function stateFlag7()
      local localValue12, localValue22
    end
    stateFlag8 = RMenu
    workingValue11 = stateFlag8
    stateFlag8 = stateFlag8.Get
    text52 = "settingsmenu"
    stateFlag14 = "uivisibility"
    stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
    workingValue2 = CMG
    workingValue2 = workingValue2.getPlayerBucket
    workingValue2 = workingValue2()
    if 420 == workingValue2 then
      stateFlag4 = "Leave"
      if stateFlag4 then
        goto continueAtStep93
      end
    end
    stateFlag4 = "Enter"
    ::continueAtStep93::
    stateFlag5 = RageUI
    stateFlag5 = stateFlag5.ButtonWithStyle
    number4 = stateFlag4
    stateFlag6 = " Cinematic World"
    number4 = number4 .. stateFlag6
    stateFlag6 = ""
    stateFlag7 = {}
    stateFlag7.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue12, localValue22, localValue32) ===
    function workingValue11(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation2
      if localValue32 then
        localValue42 = tCMG
        localValue42 = localValue42.canAnim
        localValue42 = localValue42()
        if localValue42 then
          localValue42 = CMG
          localValue42 = localValue42.getPlayerCombatTimer
          localValue42 = localValue42()
          if 0 == localValue42 then
            localValue42 = CMG
            localValue42 = localValue42.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            localValue42 = localValue42()
            if 0 == localValue42 then
              localValue42 = CMG
              localValue42 = localValue42.isPlayerInRedZone
              localValue42 = localValue42()
              if not localValue42 then
                localValue42 = workingValue2
                if 0 ~= localValue42 then
                  localValue42 = workingValue2
                  if 420 ~= localValue42 then
                    goto continueAtStep33
                  end
                end
                localValue42 = TriggerServerEvent
                cmgOperation2 = "076f7eba26"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "076f7eba26".
                localValue42(cmgOperation2)
            end
          end
        end
        else
          ::continueAtStep33::
          localValue42 = notify
          cmgOperation2 = "~r~You can not do this right now."
          -- Beginner: Show a notification to the player.
          localValue42(cmgOperation2)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    stateFlag5(number4, stateFlag6, stateFlag7, stateFlag8, workingValue11)
    stateFlag5 = RageUI
    stateFlag5 = stateFlag5.ButtonWithStyle
    number4 = CMG
    number4 = number4.isTimelapseRunning
    number4 = number4()
    if number4 then
      number4 = "Stop Timelapse"
      if number4 then
        goto continueAtStep116
      end
    end
    number4 = "Start Timelapse"
    ::continueAtStep116::
    stateFlag6 = ""
    stateFlag7 = {}
    stateFlag7.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue12, localValue22, localValue32) ===
    function workingValue11(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation2, number5
      if localValue32 then
        localValue42 = tCMG
        localValue42 = localValue42.canAnim
        localValue42 = localValue42()
        if localValue42 then
          localValue42 = CMG
          localValue42 = localValue42.getPlayerCombatTimer
          localValue42 = localValue42()
          if 0 == localValue42 then
            localValue42 = CMG
            localValue42 = localValue42.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            localValue42 = localValue42()
            if 0 == localValue42 then
              localValue42 = CMG
              localValue42 = localValue42.isPlayerInRedZone
              localValue42 = localValue42()
              if not localValue42 then
                localValue42 = workingValue2
                if 0 ~= localValue42 then
                  localValue42 = workingValue2
                  if 420 ~= localValue42 then
                    goto continueAtStep44
                  end
                end
                localValue42 = CMG
                localValue42 = localValue42.isTimelapseRunning
                localValue42 = localValue42()
                if localValue42 then
                  localValue42 = CMG
                  localValue42 = localValue42.stopTimelapse
                  localValue42()
                else
                  localValue42 = CMG
                  localValue42 = localValue42.startTimelapse
                  cmgOperation2 = 7200
                  number5 = 200
                  localValue42(cmgOperation2, number5)
                end
            end
          end
        end
        else
          ::continueAtStep44::
          localValue42 = notify
          cmgOperation2 = "~r~You can not do this right now."
          -- Beginner: Show a notification to the player.
          localValue42(cmgOperation2)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    stateFlag5(number4, stateFlag6, stateFlag7, stateFlag8, workingValue11)
    stateFlag5 = RageUI
    stateFlag5 = stateFlag5.ButtonWithStyle
    number4 = CMG
    number4 = number4.isTimelapseRunning
    number4 = number4()
    if number4 then
      number4 = "Stop Timelapse x4"
      if number4 then
        goto continueAtStep134
      end
    end
    number4 = "Start Timelapse x4"
    ::continueAtStep134::
    stateFlag6 = ""
    stateFlag7 = {}
    stateFlag7.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue12, localValue22, localValue32) ===
    function workingValue11(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation2, number5
      if localValue32 then
        localValue42 = tCMG
        localValue42 = localValue42.canAnim
        localValue42 = localValue42()
        if localValue42 then
          localValue42 = CMG
          localValue42 = localValue42.getPlayerCombatTimer
          localValue42 = localValue42()
          if 0 == localValue42 then
            localValue42 = CMG
            localValue42 = localValue42.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            localValue42 = localValue42()
            if 0 == localValue42 then
              localValue42 = CMG
              localValue42 = localValue42.isPlayerInRedZone
              localValue42 = localValue42()
              if not localValue42 then
                localValue42 = workingValue2
                if 0 ~= localValue42 then
                  localValue42 = workingValue2
                  if 420 ~= localValue42 then
                    goto continueAtStep44
                  end
                end
                localValue42 = CMG
                localValue42 = localValue42.isTimelapseRunning
                localValue42 = localValue42()
                if localValue42 then
                  localValue42 = CMG
                  localValue42 = localValue42.stopTimelapse
                  localValue42()
                else
                  localValue42 = CMG
                  localValue42 = localValue42.startTimelapse
                  cmgOperation2 = 7200
                  number5 = 50
                  localValue42(cmgOperation2, number5)
                end
            end
          end
        end
        else
          ::continueAtStep44::
          localValue42 = notify
          cmgOperation2 = "~r~You can not do this right now."
          -- Beginner: Show a notification to the player.
          localValue42(cmgOperation2)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    stateFlag5(number4, stateFlag6, stateFlag7, stateFlag8, workingValue11)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local workingValue2, stateFlag4
  end
  localValue1(localValue2, localValue3, localValue4, text43, text49, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "load_scene"
  text43 = "cinematic"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text43)
  localValue3 = true
  localValue4 = true
  text43 = true

  -- === HELPER FUNCTION (decompiler name: text49; parameters: none) ===
  function text49()
    local workingValue2, stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number, stateFlag2
    workingValue2 = pairs
    stateFlag4 = text
    workingValue2, stateFlag4, stateFlag5, number4 = workingValue2(stateFlag4)
    for stateFlag6 in workingValue2, stateFlag4, stateFlag5, number4 do
      stateFlag7 = RageUI
      stateFlag7 = stateFlag7.ButtonWithStyle
      stateFlag8 = stateFlag6
      workingValue11 = ""
      text52 = {}
      text52.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag14 = true

      -- === HELPER FUNCTION: position(localValue12, localValue22, localValue32) ===
      function position(localValue12, localValue22, localValue32)
        local localValue42
        if localValue32 then
          localValue42 = stateFlag6
          text2 = localValue42
        end
      end
      position2 = RMenu
      workingValue7 = position2
      position2 = position2.Get
      number = "scene_manager"
      stateFlag2 = "cinematic"
      position2, workingValue7, number, stateFlag2 = position2(workingValue7, number, stateFlag2)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag7(stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number, stateFlag2)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local workingValue2, stateFlag4
  end
  localValue1(localValue2, localValue3, localValue4, text43, text49, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "scene_manager"
  text43 = "cinematic"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text43)
  localValue3 = true
  localValue4 = true
  text43 = true

  -- === HELPER FUNCTION (decompiler name: text49; parameters: none) ===
  function text49()
    local workingValue2, stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number, stateFlag2, number2
    workingValue2 = RageUI
    workingValue2 = workingValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22
      localValue12 = nil
      text30 = localValue12
      localValue12 = text32
      localValue12()
    end
    workingValue2(stateFlag4)
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    stateFlag4 = "Play Scene"
    stateFlag5 = ""
    number4 = {}
    number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag7(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation2
      if localValue22 then
        localValue42 = nil
        text30 = localValue42
        localValue42 = text32
        localValue42()
      end
      if localValue32 then
        localValue42 = workingValue
        cmgOperation2 = false
        localValue42(cmgOperation2)
        localValue42 = text33
        cmgOperation2 = text2
        localValue42(cmgOperation2)
      end
    end
    stateFlag8 = RMenu
    workingValue11 = stateFlag8
    stateFlag8 = stateFlag8.Get
    text52 = "scene_manager"
    stateFlag14 = "cinematic"
    stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number, stateFlag2, number2 = stateFlag8(workingValue11, text52, stateFlag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number, stateFlag2, number2)
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    stateFlag4 = "[Add Camera]"
    stateFlag5 = ""
    number4 = {}
    number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag7(localValue12, localValue22, localValue32)
      local localValue42
      if localValue22 then
        localValue42 = nil
        text30 = localValue42
        localValue42 = text32
        localValue42()
      end
    end
    stateFlag8 = RMenu
    workingValue11 = stateFlag8
    stateFlag8 = stateFlag8.Get
    text52 = "add_camera"
    stateFlag14 = "cinematic"
    stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number, stateFlag2, number2 = stateFlag8(workingValue11, text52, stateFlag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number, stateFlag2, number2)
    workingValue2 = type
    stateFlag5 = text2
    stateFlag4 = text
    stateFlag4 = stateFlag4[stateFlag5]
    workingValue2 = workingValue2(stateFlag4)
    if "table" == workingValue2 then
      workingValue2 = pairs
      stateFlag5 = text2
      stateFlag4 = text
      stateFlag4 = stateFlag4[stateFlag5]
      workingValue2, stateFlag4, stateFlag5, number4 = workingValue2(stateFlag4)
      for stateFlag6, stateFlag7 in workingValue2, stateFlag4, stateFlag5, number4 do
        stateFlag8 = text31
        workingValue11 = stateFlag6
        text52 = stateFlag7
        stateFlag8(workingValue11, text52)
        stateFlag8 = RageUI
        stateFlag8 = stateFlag8.ButtonWithStyle
        workingValue11 = "Camera "
        text52 = stateFlag6
        workingValue11 = workingValue11 .. text52
        text52 = ""
        stateFlag14 = {}
        stateFlag14.RightLabel = "\226\134\146\226\134\146\226\134\146"
        position = true

        -- === HELPER FUNCTION: position2(localValue12, localValue22, localValue32) ===
        function position2(localValue12, localValue22, localValue32)
          local localValue42, cmgOperation2, number5, number6, stateFlag10, stateFlag12
          if localValue22 then
            localValue42 = stateFlag6
            text30 = localValue42
            localValue42 = DoesCamExist
            cmgOperation2 = text6
            localValue42 = localValue42(cmgOperation2)
            if not localValue42 then
              localValue42 = print
              cmgOperation2 = "Creating cam because it doesn't exist"
              localValue42(cmgOperation2)
              localValue42 = CreateCam
              cmgOperation2 = "DEFAULT_SCRIPTED_CAMERA"
              number5 = true
              -- Beginner: result below is cameraHandle.
              localValue42 = localValue42(cmgOperation2, number5)
              text6 = localValue42
              localValue42 = SetCamActive
              cmgOperation2 = text6
              number5 = true
              localValue42(cmgOperation2, number5)
              localValue42 = RenderScriptCams
              cmgOperation2 = true
              number5 = true
              number6 = 500
              stateFlag10 = true
              stateFlag12 = false
              localValue42(cmgOperation2, number5, number6, stateFlag10, stateFlag12)
            end
          end
          if localValue32 then
            localValue42 = stateFlag6
            text5 = localValue42
            cmgOperation2 = text2
            localValue42 = text
            localValue42 = localValue42[cmgOperation2]
            cmgOperation2 = text5
            localValue42 = localValue42[cmgOperation2]
            localValue42 = localValue42.type
            if "Static Camera" == localValue42 then
              localValue42 = 1
              text10 = localValue42
            else
              cmgOperation2 = text2
              localValue42 = text
              localValue42 = localValue42[cmgOperation2]
              cmgOperation2 = text5
              localValue42 = localValue42[cmgOperation2]
              localValue42 = localValue42.type
              if "Interpolation Camera" == localValue42 then
                localValue42 = 2
                text10 = localValue42
              end
            end
            cmgOperation2 = text2
            localValue42 = text
            localValue42 = localValue42[cmgOperation2]
            cmgOperation2 = text5
            localValue42 = localValue42[cmgOperation2]
            localValue42 = localValue42.blending
            if 0 == localValue42 then
              localValue42 = 2
              text12 = localValue42
            else
              cmgOperation2 = text2
              localValue42 = text
              localValue42 = localValue42[cmgOperation2]
              cmgOperation2 = text5
              localValue42 = localValue42[cmgOperation2]
              localValue42 = localValue42.blending
              if 5 == localValue42 then
                localValue42 = 1
                text12 = localValue42
              end
            end
          end
        end
        workingValue7 = RMenu
        number = workingValue7
        workingValue7 = workingValue7.Get
        stateFlag2 = "camera_manager"
        number2 = "cinematic"
        workingValue7, number, stateFlag2, number2 = workingValue7(number, stateFlag2, number2)
        -- Beginner: Draw a selectable RageUI menu button.
        stateFlag8(workingValue11, text52, stateFlag14, position, position2, workingValue7, number, stateFlag2, number2)
      end
    else
      workingValue2 = print
      stateFlag4 = "failed, loaded scene was not a table?"
      workingValue2(stateFlag4)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local workingValue2, stateFlag4
  end
  localValue1(localValue2, localValue3, localValue4, text43, text49, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "camera_manager"
  text43 = "cinematic"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text43)
  localValue3 = true
  localValue4 = true
  text43 = true

  -- === HELPER FUNCTION (decompiler name: text49; parameters: none) ===
  function text49()
    local workingValue2, stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14
    workingValue2 = RageUI
    workingValue2 = workingValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22
      localValue12 = nil
      text30 = localValue12
      localValue12 = text32
      localValue12()
    end
    workingValue2(stateFlag4)
    workingValue2 = text5
    if workingValue2 then
      stateFlag4 = text2
      workingValue2 = text
      workingValue2 = workingValue2[stateFlag4]
      stateFlag4 = text5
      workingValue2 = workingValue2[stateFlag4]
      if workingValue2 then
        workingValue2 = RMenu
        stateFlag4 = workingValue2
        workingValue2 = workingValue2.Get
        stateFlag5 = "camera_manager"
        number4 = "cinematic"
        -- Beginner: result below is menu.
        workingValue2 = workingValue2(stateFlag4, stateFlag5, number4)
        stateFlag4 = workingValue2
        workingValue2 = workingValue2.SetSubtitle
        stateFlag5 = "~b~"
        stateFlag6 = text2
        number4 = text
        number4 = number4[stateFlag6]
        stateFlag6 = text5
        number4 = number4[stateFlag6]
        number4 = number4.type
        stateFlag5 = stateFlag5 .. number4
        workingValue2(stateFlag4, stateFlag5)
        workingValue2 = RageUI
        workingValue2 = workingValue2.ButtonWithStyle
        stateFlag4 = "~b~Transition: "
        number4 = text2
        stateFlag5 = text
        stateFlag5 = stateFlag5[number4]
        number4 = text5
        stateFlag5 = stateFlag5[number4]
        stateFlag5 = stateFlag5.transition
        number4 = "ms"
        stateFlag4 = stateFlag4 .. stateFlag5 .. number4
        stateFlag5 = ""
        number4 = {}
        number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag6 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
        function stateFlag7(localValue12, localValue22, localValue32)
          local localValue42, cmgOperation2, number5, number6, stateFlag10
          if localValue32 then
            localValue42 = CMG
            localValue42 = localValue42.GetRageInputText
            cmgOperation2 = "Transition(in ms):"
            localValue42 = localValue42(cmgOperation2)
            if localValue42 then
              cmgOperation2 = tonumber
              number5 = localValue42
              cmgOperation2 = cmgOperation2(number5)
              if cmgOperation2 then
                cmgOperation2 = CMG
                cmgOperation2 = cmgOperation2.modifyTransition
                number5 = text2
                number6 = text5
                stateFlag10 = localValue42
                cmgOperation2(number5, number6, stateFlag10)
            end
            else
              cmgOperation2 = tCMG
              cmgOperation2 = cmgOperation2.notify
              number5 = "~r~Failed to change transition time."
              -- Beginner: Show a notification to the player.
              cmgOperation2(number5)
            end
          end
        end
        stateFlag8 = RMenu
        workingValue11 = stateFlag8
        stateFlag8 = stateFlag8.Get
        text52 = "camera_manager"
        stateFlag14 = "cinematic"
        stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
        -- Beginner: Draw a selectable RageUI menu button.
        workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
        workingValue2 = RageUI
        workingValue2 = workingValue2.ButtonWithStyle
        stateFlag4 = "Move Camera"
        stateFlag5 = ""
        number4 = {}
        number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag6 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
        function stateFlag7(localValue12, localValue22, localValue32)
          local localValue42, cmgOperation2
          if localValue32 then
            localValue42 = text3
            if not localValue42 then
              localValue42 = text4
              if 0 == localValue42 then
                localValue42 = nil
                text30 = localValue42
                localValue42 = GetEntityCoords
                cmgOperation2 = PlayerPedId
                -- Beginner: result below is localPlayerPed.
                cmgOperation2 = cmgOperation2()
                -- Beginner: result below is entityCoords.
                localValue42 = localValue42(cmgOperation2)
                text8 = localValue42
                localValue42 = text32
                localValue42()
                localValue42 = tCMG
                localValue42 = localValue42.toggleNoclip
                localValue42()
                localValue42 = text5
                text4 = localValue42
              end
            end
          end
        end
        stateFlag8 = RMenu
        workingValue11 = stateFlag8
        stateFlag8 = stateFlag8.Get
        text52 = "camera_manager"
        stateFlag14 = "cinematic"
        stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
        -- Beginner: Draw a selectable RageUI menu button.
        workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
        workingValue2 = RageUI
        workingValue2 = workingValue2.List
        stateFlag4 = "Camera Type:"
        stateFlag5 = rageUiOperation3
        number4 = text10
        stateFlag6 = ""
        stateFlag7 = {}
        stateFlag8 = true

        -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue12, localValue22, localValue32, localValue42) ===
        function workingValue11(localValue12, localValue22, localValue32, localValue42)
          local cmgOperation2, number5, number6, stateFlag10, stateFlag12
          cmgOperation2 = text10
          if localValue42 ~= cmgOperation2 then
            text10 = localValue42
            cmgOperation2 = CMG
            cmgOperation2 = cmgOperation2.modifyCameraType
            number5 = text2
            number6 = text5
            stateFlag12 = text10
            stateFlag10 = rageUiOperation3
            stateFlag10 = stateFlag10[stateFlag12]
            cmgOperation2(number5, number6, stateFlag10)
          end
        end

        -- === HELPER FUNCTION (decompiler name: text52; parameters: none) ===
        function text52()
          local localValue12, localValue22
        end
        stateFlag14 = nil
        -- Beginner: Draw a RageUI list selector.
        workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
        workingValue2 = RageUI
        workingValue2 = workingValue2.List
        stateFlag4 = "Camera Blending:"
        stateFlag5 = rageUiOperation4
        number4 = text12
        stateFlag6 = ""
        stateFlag7 = {}
        stateFlag8 = true

        -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue12, localValue22, localValue32, localValue42) ===
        function workingValue11(localValue12, localValue22, localValue32, localValue42)
          local cmgOperation2, number5, number6, stateFlag10, stateFlag12
          cmgOperation2 = text12
          if localValue42 ~= cmgOperation2 then
            text12 = localValue42
            cmgOperation2 = CMG
            cmgOperation2 = cmgOperation2.modifyCameraBlending
            number5 = text2
            number6 = text5
            stateFlag12 = text12
            stateFlag10 = rageUiOperation4
            stateFlag10 = stateFlag10[stateFlag12]
            cmgOperation2(number5, number6, stateFlag10)
          end
        end

        -- === HELPER FUNCTION (decompiler name: text52; parameters: none) ===
        function text52()
          local localValue12, localValue22
        end
        stateFlag14 = nil
        -- Beginner: Draw a RageUI list selector.
        workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
        workingValue2 = RageUI
        workingValue2 = workingValue2.ButtonWithStyle
        stateFlag4 = "Select Camera Focus"
        stateFlag5 = ""
        number4 = {}
        number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag6 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
        function stateFlag7(localValue12, localValue22, localValue32)
        end
        stateFlag8 = RMenu
        workingValue11 = stateFlag8
        stateFlag8 = stateFlag8.Get
        text52 = "camera_focus_manager"
        stateFlag14 = "cinematic"
        stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
        -- Beginner: Draw a selectable RageUI menu button.
        workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
        workingValue2 = RageUI
        workingValue2 = workingValue2.ButtonWithStyle
        stateFlag4 = "Screen Effect: "
        number4 = text2
        stateFlag5 = text
        stateFlag5 = stateFlag5[number4]
        number4 = text5
        stateFlag5 = stateFlag5[number4]
        stateFlag5 = stateFlag5.screeneffect
        if not stateFlag5 then
          stateFlag5 = "N/A"
        end
        stateFlag4 = stateFlag4 .. stateFlag5
        stateFlag5 = ""
        number4 = {}
        number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag6 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
        function stateFlag7(localValue12, localValue22, localValue32)
        end
        stateFlag8 = RMenu
        workingValue11 = stateFlag8
        stateFlag8 = stateFlag8.Get
        text52 = "screeneffect_manager"
        stateFlag14 = "cinematic"
        stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
        workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
        workingValue2 = RageUI
        workingValue2 = workingValue2.List
        stateFlag4 = "Timecycle Intensity"
        stateFlag5 = text42
        number4 = rageUiOperation
        stateFlag6 = ""
        stateFlag7 = {}
        stateFlag8 = true

        -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue12, localValue22, localValue32, localValue42) ===
        function workingValue11(localValue12, localValue22, localValue32, localValue42)
          local cmgOperation2, number5, number6, stateFlag10, stateFlag12
          cmgOperation2 = RageUI
          cmgOperation2 = cmgOperation2.BackspaceMenuCallback

          -- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
          function number5()
            local localValue13, dataCollection
            localValue13 = ClearTimecycleModifier
            localValue13()
          end
          cmgOperation2(number5)
          cmgOperation2 = rageUiOperation
          if localValue42 ~= cmgOperation2 then
            rageUiOperation = localValue42
            number5 = text2
            cmgOperation2 = text
            cmgOperation2 = cmgOperation2[number5]
            number5 = text5
            cmgOperation2 = cmgOperation2[number5]
            cmgOperation2 = cmgOperation2.timecycleEffect
            if "" ~= cmgOperation2 then
              cmgOperation2 = SetTimecycleModifier
              number6 = text2
              number5 = text
              number5 = number5[number6]
              number6 = text5
              number5 = number5[number6]
              number5 = number5.timecycleEffect
              cmgOperation2(number5)
              cmgOperation2 = SetTimecycleModifierStrength
              number6 = text2
              number5 = text
              number5 = number5[number6]
              number6 = text5
              number5 = number5[number6]
              number5 = number5.timecycleIntensity
              cmgOperation2(number5)
              cmgOperation2 = CMG
              cmgOperation2 = cmgOperation2.setTimecycleIntensity
              number5 = text2
              number6 = text5
              stateFlag12 = rageUiOperation
              stateFlag10 = text42
              stateFlag10 = stateFlag10[stateFlag12]
              cmgOperation2(number5, number6, stateFlag10)
            end
          end
        end

        -- === HELPER FUNCTION (decompiler name: text52; parameters: none) ===
        function text52()
          local localValue12, localValue22
        end
        stateFlag14 = nil
        -- Beginner: Draw a RageUI list selector.
        workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
        workingValue2 = RageUI
        workingValue2 = workingValue2.ButtonWithStyle
        stateFlag4 = "Timecycle Effect: "
        number4 = text2
        stateFlag5 = text
        stateFlag5 = stateFlag5[number4]
        number4 = text5
        stateFlag5 = stateFlag5[number4]
        stateFlag5 = stateFlag5.timecycleEffect
        if not stateFlag5 then
          stateFlag5 = "N/A"
        end
        stateFlag4 = stateFlag4 .. stateFlag5
        stateFlag5 = ""
        number4 = {}
        number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag6 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
        function stateFlag7(localValue12, localValue22, localValue32)
        end
        stateFlag8 = RMenu
        workingValue11 = stateFlag8
        stateFlag8 = stateFlag8.Get
        text52 = "timecycle_manager"
        stateFlag14 = "cinematic"
        stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
        -- Beginner: Draw a selectable RageUI menu button.
        workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
        workingValue2 = RageUI
        workingValue2 = workingValue2.ButtonWithStyle
        stateFlag4 = "Shake Effect: "
        number4 = text2
        stateFlag5 = text
        stateFlag5 = stateFlag5[number4]
        number4 = text5
        stateFlag5 = stateFlag5[number4]
        stateFlag5 = stateFlag5.shake
        if not stateFlag5 then
          stateFlag5 = "N/A"
        end
        stateFlag4 = stateFlag4 .. stateFlag5
        stateFlag5 = ""
        number4 = {}
        number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag6 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
        function stateFlag7(localValue12, localValue22, localValue32)
        end
        stateFlag8 = RMenu
        workingValue11 = stateFlag8
        stateFlag8 = stateFlag8.Get
        text52 = "shake_manager"
        stateFlag14 = "cinematic"
        stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
        workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
        workingValue2 = RageUI
        workingValue2 = workingValue2.List
        stateFlag4 = "Field of View (FOV)"
        stateFlag5 = rageUiOperation2
        number4 = text15
        stateFlag6 = ""
        stateFlag7 = {}
        stateFlag8 = true

        -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue12, localValue22, localValue32, localValue42) ===
        function workingValue11(localValue12, localValue22, localValue32, localValue42)
          local cmgOperation2, number5, number6
          cmgOperation2 = text15
          if localValue42 ~= cmgOperation2 then
            text15 = localValue42
            cmgOperation2 = CMG
            cmgOperation2 = cmgOperation2.setCameraFov
            number5 = text2
            number6 = text5
            cmgOperation2(number5, number6)
          end
        end

        -- === HELPER FUNCTION (decompiler name: text52; parameters: none) ===
        function text52()
          local localValue12, localValue22
        end
        stateFlag14 = nil
        -- Beginner: Draw a RageUI list selector.
        workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
        workingValue2 = RageUI
        workingValue2 = workingValue2.ButtonWithStyle
        stateFlag4 = "Remove Camera"
        stateFlag5 = ""
        number4 = {}
        number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag6 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
        function stateFlag7(localValue12, localValue22, localValue32)
          local localValue42, cmgOperation2, number5
          if localValue32 then
            localValue42 = CMG
            localValue42 = localValue42.deleteCamera
            cmgOperation2 = text2
            number5 = text5
            localValue42(cmgOperation2, number5)
            localValue42 = nil
            text30 = localValue42
            localValue42 = text32
            localValue42()
            localValue42 = 1
            text5 = localValue42
          end
        end
        stateFlag8 = RMenu
        workingValue11 = stateFlag8
        stateFlag8 = stateFlag8.Get
        text52 = "camera_manager"
        stateFlag14 = "cinematic"
        stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
        -- Beginner: Draw a selectable RageUI menu button.
        workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
    end
    else
      workingValue2 = RageUI
      workingValue2 = workingValue2.Separator
      stateFlag4 = "~r~No Camera ID selected."
      workingValue2(stateFlag4)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local workingValue2, stateFlag4
  end
  localValue1(localValue2, localValue3, localValue4, text43, text49, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "add_camera"
  text43 = "cinematic"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text43)
  localValue3 = true
  localValue4 = true
  text43 = true

  -- === HELPER FUNCTION (decompiler name: text49; parameters: none) ===
  function text49()
    local workingValue2, stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14
    workingValue2 = RageUI
    workingValue2 = workingValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22
    end
    workingValue2(stateFlag4)
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    stateFlag4 = "Add Static Camera"
    stateFlag5 = ""
    number4 = {}
    number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag7(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation2
      if localValue32 then
        localValue42 = text3
        if localValue42 then
          localValue42 = notify
          cmgOperation2 = "~r~Can not add a camera whilst you are adding a camera."
          -- Beginner: Show a notification to the player.
          localValue42(cmgOperation2)
          return
        end
        localValue42 = nil
        text30 = localValue42
        localValue42 = GetEntityCoords
        cmgOperation2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        cmgOperation2 = cmgOperation2()
        -- Beginner: result below is entityCoords.
        localValue42 = localValue42(cmgOperation2)
        text8 = localValue42
        localValue42 = text32
        localValue42()
        localValue42 = tCMG
        localValue42 = localValue42.toggleNoclip
        localValue42()
        localValue42 = true
        text3 = localValue42
        localValue42 = "Static Camera"
        text9 = localValue42
      end
    end
    stateFlag8 = RMenu
    workingValue11 = stateFlag8
    stateFlag8 = stateFlag8.Get
    text52 = "camera_manager"
    stateFlag14 = "cinematic"
    stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    stateFlag4 = "Add Interpolation Camera"
    stateFlag5 = ""
    number4 = {}
    number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag7(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation2
      if localValue32 then
        localValue42 = text3
        if localValue42 then
          localValue42 = notify
          cmgOperation2 = "~r~Can not add a camera whilst you are adding a camera."
          -- Beginner: Show a notification to the player.
          localValue42(cmgOperation2)
          return
        end
        localValue42 = nil
        text30 = localValue42
        localValue42 = GetEntityCoords
        cmgOperation2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        cmgOperation2 = cmgOperation2()
        -- Beginner: result below is entityCoords.
        localValue42 = localValue42(cmgOperation2)
        text8 = localValue42
        localValue42 = text32
        localValue42()
        localValue42 = tCMG
        localValue42 = localValue42.toggleNoclip
        localValue42()
        localValue42 = true
        text3 = localValue42
        localValue42 = "Interpolation Camera"
        text9 = localValue42
      end
    end
    stateFlag8 = RMenu
    workingValue11 = stateFlag8
    stateFlag8 = stateFlag8.Get
    text52 = "camera_manager"
    stateFlag14 = "cinematic"
    stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local workingValue2, stateFlag4
  end
  localValue1(localValue2, localValue3, localValue4, text43, text49, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "screeneffect_manager"
  text43 = "cinematic"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text43)
  localValue3 = true
  localValue4 = true
  text43 = true

  -- === HELPER FUNCTION (decompiler name: text49; parameters: none) ===
  function text49()
    local workingValue2, stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number
    workingValue2 = RageUI
    workingValue2 = workingValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22
      localValue12 = AnimpostfxStopAll
      localValue12()
    end
    workingValue2(stateFlag4)
    workingValue2 = 1
    stateFlag4 = text11
    stateFlag4 = #stateFlag4
    stateFlag5 = 1
    for number4 = workingValue2, stateFlag4, stateFlag5 do
      stateFlag6 = RageUI
      stateFlag6 = stateFlag6.ButtonWithStyle
      stateFlag7 = text11
      stateFlag7 = stateFlag7[number4]
      stateFlag8 = ""
      workingValue11 = {}
      workingValue11.RightLabel = "\226\134\146\226\134\146\226\134\146"
      text52 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue12, localValue22, localValue32) ===
      function stateFlag14(localValue12, localValue22, localValue32)
        local localValue42, cmgOperation2, number5, number6, stateFlag10
        if localValue22 then
          localValue42 = AnimpostfxStopAll
          localValue42()
          cmgOperation2 = number4
          localValue42 = text11
          localValue42 = localValue42[cmgOperation2]
          if "Default" ~= localValue42 then
            localValue42 = AnimpostfxPlay
            number5 = number4
            cmgOperation2 = text11
            cmgOperation2 = cmgOperation2[number5]
            number5 = 5000
            number6 = false
            localValue42(cmgOperation2, number5, number6)
          end
        end
        if localValue32 then
          localValue42 = CMG
          localValue42 = localValue42.modifyScreeneffect
          cmgOperation2 = text2
          number5 = text5
          stateFlag10 = number4
          number6 = text11
          number6 = number6[stateFlag10]
          localValue42(cmgOperation2, number5, number6)
        end
      end
      position = RMenu
      position2 = position
      position = position.Get
      workingValue7 = "camera_manager"
      number = "cinematic"
      position, position2, workingValue7, number = position(position2, workingValue7, number)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag6(stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local workingValue2, stateFlag4
  end
  localValue1(localValue2, localValue3, localValue4, text43, text49, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "timecycle_manager"
  text43 = "cinematic"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text43)
  localValue3 = true
  localValue4 = true
  text43 = true

  -- === HELPER FUNCTION (decompiler name: text49; parameters: none) ===
  function text49()
    local workingValue2, stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number
    workingValue2 = RageUI
    workingValue2 = workingValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22
      localValue12 = ClearTimecycleModifier
      localValue12()
    end
    workingValue2(stateFlag4)
    workingValue2 = 1
    stateFlag4 = cmgOperation
    stateFlag4 = #stateFlag4
    stateFlag5 = 1
    for number4 = workingValue2, stateFlag4, stateFlag5 do
      stateFlag6 = RageUI
      stateFlag6 = stateFlag6.ButtonWithStyle
      stateFlag7 = cmgOperation
      stateFlag7 = stateFlag7[number4]
      stateFlag8 = ""
      workingValue11 = {}
      workingValue11.RightLabel = "\226\134\146\226\134\146\226\134\146"
      text52 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue12, localValue22, localValue32) ===
      function stateFlag14(localValue12, localValue22, localValue32)
        local localValue42, cmgOperation2, number5, number6, stateFlag10
        if localValue22 then
          localValue42 = ClearTimecycleModifier
          localValue42()
          cmgOperation2 = number4
          localValue42 = cmgOperation
          localValue42 = localValue42[cmgOperation2]
          if "Default" ~= localValue42 then
            localValue42 = SetTimecycleModifier
            number5 = number4
            cmgOperation2 = cmgOperation
            cmgOperation2 = cmgOperation2[number5]
            localValue42(cmgOperation2)
          end
        end
        if localValue32 then
          localValue42 = CMG
          localValue42 = localValue42.modifyTimecycleEffect
          cmgOperation2 = text2
          number5 = text5
          stateFlag10 = number4
          number6 = cmgOperation
          number6 = number6[stateFlag10]
          localValue42(cmgOperation2, number5, number6)
        end
      end
      position = RMenu
      position2 = position
      position = position.Get
      workingValue7 = "camera_manager"
      number = "cinematic"
      position, position2, workingValue7, number = position(position2, workingValue7, number)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag6(stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local workingValue2, stateFlag4
  end
  localValue1(localValue2, localValue3, localValue4, text43, text49, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "shake_manager"
  text43 = "cinematic"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text43)
  localValue3 = true
  localValue4 = true
  text43 = true

  -- === HELPER FUNCTION (decompiler name: text49; parameters: none) ===
  function text49()
    local workingValue2, stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number
    workingValue2 = RageUI
    workingValue2 = workingValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22
      localValue12 = AnimpostfxStopAll
      localValue12()
    end
    workingValue2(stateFlag4)
    workingValue2 = 1
    stateFlag4 = text48
    stateFlag4 = #stateFlag4
    stateFlag5 = 1
    for number4 = workingValue2, stateFlag4, stateFlag5 do
      stateFlag6 = RageUI
      stateFlag6 = stateFlag6.ButtonWithStyle
      stateFlag7 = text48
      stateFlag7 = stateFlag7[number4]
      stateFlag8 = ""
      workingValue11 = {}
      workingValue11.RightLabel = "\226\134\146\226\134\146\226\134\146"
      text52 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue12, localValue22, localValue32) ===
      function stateFlag14(localValue12, localValue22, localValue32)
        local localValue42, cmgOperation2, number5, number6, stateFlag10
        if localValue22 then
          localValue42 = text13
          if "" ~= localValue42 then
            localValue42 = text13
            number5 = number4
            cmgOperation2 = text48
            cmgOperation2 = cmgOperation2[number5]
            if localValue42 == cmgOperation2 then
              goto continueAtStep28
            end
          end
          cmgOperation2 = number4
          localValue42 = text48
          localValue42 = localValue42[cmgOperation2]
          text13 = localValue42
          localValue42 = SetTimeout
          cmgOperation2 = 25000

          -- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
          function number5()
            local localValue13, dataCollection
            localValue13 = ""
            text13 = localValue13
          end
          localValue42(cmgOperation2, number5)
          localValue42 = ShakeCam
          cmgOperation2 = GetRenderingCam
          cmgOperation2 = cmgOperation2()
          number6 = number4
          number5 = text48
          number5 = number5[number6]
          number6 = 1.0
          localValue42(cmgOperation2, number5, number6)
        end
        ::continueAtStep28::
        if localValue32 then
          localValue42 = CMG
          localValue42 = localValue42.modifyShakeEffect
          cmgOperation2 = text2
          number5 = text5
          stateFlag10 = number4
          number6 = text48
          number6 = number6[stateFlag10]
          localValue42(cmgOperation2, number5, number6)
        end
      end
      position = RMenu
      position2 = position
      position = position.Get
      workingValue7 = "camera_manager"
      number = "cinematic"
      position, position2, workingValue7, number = position(position2, workingValue7, number)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag6(stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2, workingValue7, number)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local workingValue2, stateFlag4
  end
  localValue1(localValue2, localValue3, localValue4, text43, text49, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "camera_focus_manager"
  text43 = "cinematic"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text43)
  localValue3 = true
  localValue4 = true
  text43 = true

  -- === HELPER FUNCTION (decompiler name: text49; parameters: none) ===
  function text49()
    local workingValue2, stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14
    workingValue2 = RageUI
    workingValue2 = workingValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22
      localValue12 = AnimpostfxStopAll
      localValue12()
    end
    workingValue2(stateFlag4)
    workingValue2 = RageUI
    workingValue2 = workingValue2.Separator
    stateFlag4 = "~b~Currently pointed at: "
    number4 = text2
    stateFlag5 = text
    stateFlag5 = stateFlag5[number4]
    number4 = text5
    stateFlag5 = stateFlag5[number4]
    stateFlag5 = stateFlag5.focusType
    number4 = " : "
    stateFlag7 = text2
    stateFlag6 = text
    stateFlag6 = stateFlag6[stateFlag7]
    stateFlag7 = text5
    stateFlag6 = stateFlag6[stateFlag7]
    stateFlag6 = stateFlag6.focusData
    stateFlag4 = stateFlag4 .. stateFlag5 .. number4 .. stateFlag6
    workingValue2(stateFlag4)
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    stateFlag4 = "Player"
    stateFlag5 = ""
    number4 = {}
    number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag7(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation2, number5, number6, stateFlag10, stateFlag12
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.GetRageInputText
        cmgOperation2 = "Temp ID:"
        localValue42 = localValue42(cmgOperation2)
        if "" ~= localValue42 then
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.addCameraFocus
          number5 = text2
          number6 = text5
          stateFlag10 = "player"
          stateFlag12 = localValue42
          cmgOperation2(number5, number6, stateFlag10, stateFlag12)
        end
      end
    end
    stateFlag8 = RMenu
    workingValue11 = stateFlag8
    stateFlag8 = stateFlag8.Get
    text52 = "camera_manager"
    stateFlag14 = "cinematic"
    stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    stateFlag4 = "Coordinates"
    stateFlag5 = ""
    number4 = {}
    number4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag7(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation2, number5, number6
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.clientPrompt
        cmgOperation2 = "Enter coordinates:"
        number5 = ""

        -- === HELPER FUNCTION (decompiler name: number6; parameters: localValue13) ===
        function number6(localValue13)
          local dataCollection, stringHelper, workingValue9, text44, text50, text51, tableHelper, text53, createVector3, workingValue4, workingValue6, workingValue8
          dataCollection = {}
          stringHelper = string
          stringHelper = stringHelper.gmatch
          text44 = localValue13
          workingValue9 = localValue13.gsub
          text50 = "\" y=\""
          text51 = ","
          workingValue9 = workingValue9(text44, text50, text51)
          text44 = workingValue9
          workingValue9 = workingValue9.gsub
          text50 = "\" z=\""
          text51 = ","
          workingValue9 = workingValue9(text44, text50, text51)
          if not workingValue9 then
            workingValue9 = "0,0,0"
          end
          text44 = "[^,]+"
          stringHelper, workingValue9, text44, text50 = stringHelper(workingValue9, text44)
          for text51 in stringHelper, workingValue9, text44, text50 do
            tableHelper = table
            tableHelper = tableHelper.insert
            text53 = dataCollection
            createVector3 = tonumber
            workingValue4 = text51
            createVector3, workingValue4, workingValue6, workingValue8 = createVector3(workingValue4)
            tableHelper(text53, createVector3, workingValue4, workingValue6, workingValue8)
          end
          if "" == localValue13 then
            return
          end
          stringHelper = 0
          workingValue9 = 0
          text44 = 0
          text50 = dataCollection[1]
          if nil ~= text50 then
            stringHelper = dataCollection[1]
          end
          text50 = dataCollection[2]
          if nil ~= text50 then
            workingValue9 = dataCollection[2]
          end
          text50 = dataCollection[3]
          if nil ~= text50 then
            text44 = dataCollection[3]
          end
          text50 = CMG
          text50 = text50.addCameraFocus
          text51 = text2
          tableHelper = text5
          text53 = "coord"
          createVector3 = vector3
          workingValue4 = stringHelper
          workingValue6 = workingValue9
          workingValue8 = text44
          createVector3, workingValue4, workingValue6, workingValue8 = createVector3(workingValue4, workingValue6, workingValue8)
          text50(text51, tableHelper, text53, createVector3, workingValue4, workingValue6, workingValue8)
        end
        localValue42(cmgOperation2, number5, number6)
      end
    end
    stateFlag8 = RMenu
    workingValue11 = stateFlag8
    stateFlag8 = stateFlag8.Get
    text52 = "camera_manager"
    stateFlag14 = "cinematic"
    stateFlag8, workingValue11, text52, stateFlag14 = stateFlag8(workingValue11, text52, stateFlag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local workingValue2, stateFlag4
  end
  localValue1(localValue2, localValue3, localValue4, text43, text49, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dof_manager"
  text43 = "cinematic"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text43)
  localValue3 = true
  localValue4 = true
  text43 = true

  -- === HELPER FUNCTION (decompiler name: text49; parameters: none) ===
  function text49()
    local workingValue2, stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14
    workingValue2 = RageUI
    workingValue2 = workingValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22
    end
    workingValue2(stateFlag4)
    workingValue2 = RageUI
    workingValue2 = workingValue2.Separator
    stateFlag4 = "~g~These settings require some fiddling to get the desired result."
    workingValue2(stateFlag4)
    workingValue2 = RageUI
    workingValue2 = workingValue2.List
    stateFlag4 = "Near Plane Out"
    stateFlag5 = text23
    number4 = text24
    stateFlag6 = ""
    stateFlag7 = {}
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function workingValue11(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation2, number5, number6, stateFlag10, stateFlag12, workingValue12, workingValue3, workingValue5
      cmgOperation2 = text24
      if localValue42 ~= cmgOperation2 then
        text24 = localValue42
        cmgOperation2 = SetHidofOverride
        number5 = true
        number6 = true
        stateFlag12 = text24
        stateFlag10 = text23
        stateFlag10 = stateFlag10[stateFlag12]
        workingValue12 = text25
        stateFlag12 = text23
        stateFlag12 = stateFlag12[workingValue12]
        workingValue3 = text26
        workingValue12 = text23
        workingValue12 = workingValue12[workingValue3]
        workingValue5 = text27
        workingValue3 = text23
        workingValue3 = workingValue3[workingValue5]
        cmgOperation2(number5, number6, stateFlag10, stateFlag12, workingValue12, workingValue3)
      end
    end

    -- === HELPER FUNCTION (decompiler name: text52; parameters: none) ===
    function text52()
      local localValue12, localValue22
    end
    stateFlag14 = nil
    -- Beginner: Draw a RageUI list selector.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
    workingValue2 = RageUI
    workingValue2 = workingValue2.List
    stateFlag4 = "Near Plane In"
    stateFlag5 = text23
    number4 = text25
    stateFlag6 = ""
    stateFlag7 = {}
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function workingValue11(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation2, number5, number6, stateFlag10, stateFlag12, workingValue12, workingValue3, workingValue5
      cmgOperation2 = text25
      if localValue42 ~= cmgOperation2 then
        text25 = localValue42
        cmgOperation2 = SetHidofOverride
        number5 = true
        number6 = true
        stateFlag12 = text24
        stateFlag10 = text23
        stateFlag10 = stateFlag10[stateFlag12]
        workingValue12 = text25
        stateFlag12 = text23
        stateFlag12 = stateFlag12[workingValue12]
        workingValue3 = text26
        workingValue12 = text23
        workingValue12 = workingValue12[workingValue3]
        workingValue5 = text27
        workingValue3 = text23
        workingValue3 = workingValue3[workingValue5]
        cmgOperation2(number5, number6, stateFlag10, stateFlag12, workingValue12, workingValue3)
      end
    end

    -- === HELPER FUNCTION (decompiler name: text52; parameters: none) ===
    function text52()
      local localValue12, localValue22
    end
    stateFlag14 = nil
    -- Beginner: Draw a RageUI list selector.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
    workingValue2 = RageUI
    workingValue2 = workingValue2.List
    stateFlag4 = "Far Plane Out"
    stateFlag5 = text23
    number4 = text26
    stateFlag6 = ""
    stateFlag7 = {}
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function workingValue11(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation2, number5, number6, stateFlag10, stateFlag12, workingValue12, workingValue3, workingValue5
      cmgOperation2 = text26
      if localValue42 ~= cmgOperation2 then
        text26 = localValue42
        cmgOperation2 = SetHidofOverride
        number5 = true
        number6 = true
        stateFlag12 = text24
        stateFlag10 = text23
        stateFlag10 = stateFlag10[stateFlag12]
        workingValue12 = text25
        stateFlag12 = text23
        stateFlag12 = stateFlag12[workingValue12]
        workingValue3 = text26
        workingValue12 = text23
        workingValue12 = workingValue12[workingValue3]
        workingValue5 = text27
        workingValue3 = text23
        workingValue3 = workingValue3[workingValue5]
        cmgOperation2(number5, number6, stateFlag10, stateFlag12, workingValue12, workingValue3)
      end
    end

    -- === HELPER FUNCTION (decompiler name: text52; parameters: none) ===
    function text52()
      local localValue12, localValue22
    end
    stateFlag14 = nil
    -- Beginner: Draw a RageUI list selector.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
    workingValue2 = RageUI
    workingValue2 = workingValue2.List
    stateFlag4 = "Far Plane In"
    stateFlag5 = text23
    number4 = text27
    stateFlag6 = ""
    stateFlag7 = {}
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function workingValue11(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation2, number5, number6, stateFlag10, stateFlag12, workingValue12, workingValue3, workingValue5
      cmgOperation2 = text27
      if localValue42 ~= cmgOperation2 then
        text27 = localValue42
        cmgOperation2 = SetHidofOverride
        number5 = true
        number6 = true
        stateFlag12 = text24
        stateFlag10 = text23
        stateFlag10 = stateFlag10[stateFlag12]
        workingValue12 = text25
        stateFlag12 = text23
        stateFlag12 = stateFlag12[workingValue12]
        workingValue3 = text26
        workingValue12 = text23
        workingValue12 = workingValue12[workingValue3]
        workingValue5 = text27
        workingValue3 = text23
        workingValue3 = workingValue3[workingValue5]
        cmgOperation2(number5, number6, stateFlag10, stateFlag12, workingValue12, workingValue3)
      end
    end

    -- === HELPER FUNCTION (decompiler name: text52; parameters: none) ===
    function text52()
      local localValue12, localValue22
    end
    stateFlag14 = nil
    -- Beginner: Draw a RageUI list selector.
    workingValue2(stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local workingValue2, stateFlag4
  end
  localValue1(localValue2, localValue3, localValue4, text43, text49, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "weather_time_manager"
  text43 = "cinematic"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text43)
  localValue3 = true
  localValue4 = true
  text43 = true

  -- === HELPER FUNCTION (decompiler name: text49; parameters: none) ===
  function text49()
    local workingValue2, stateFlag4, stateFlag5, number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2
    workingValue2 = RageUI
    workingValue2 = workingValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22
    end
    workingValue2(stateFlag4)

    -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
    function workingValue2()
      local localValue12, localValue22, localValue32, localValue42, cmgOperation2
      localValue12 = true
      text16 = localValue12
      localValue12 = CMG
      localValue12 = localValue12.overrideTime
      localValue32 = text18
      localValue22 = text17
      localValue22 = localValue22[localValue32]
      localValue42 = text20
      localValue32 = text19
      localValue32 = localValue32[localValue42]
      cmgOperation2 = text22
      localValue42 = text21
      localValue42 = localValue42[cmgOperation2]
      localValue12(localValue22, localValue32, localValue42)
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22, localValue32, localValue42
      localValue12 = false
      text16 = localValue12
      localValue12 = DecorSetBool
      localValue22 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue22 = localValue22()
      localValue32 = "a99d39faff"
      localValue42 = false
      localValue12(localValue22, localValue32, localValue42)
      localValue12 = CMG
      localValue12 = localValue12.cancelOverrideTimeWeather
      localValue12()
    end
    stateFlag5 = RageUI
    stateFlag5 = stateFlag5.Checkbox
    number4 = "Override Weather/Time"
    stateFlag6 = ""
    stateFlag7 = text16
    stateFlag8 = {}
    workingValue11 = RageUI
    workingValue11 = workingValue11.CheckboxStyle
    workingValue11 = workingValue11.Car
    stateFlag8.Style = workingValue11

    -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function workingValue11(localValue12, localValue22, localValue32, localValue42)
      text16 = localValue42
    end
    text52 = workingValue2
    stateFlag14 = stateFlag4
    -- Beginner: Draw a RageUI checkbox.
    stateFlag5(number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14)
    stateFlag5 = RageUI
    stateFlag5 = stateFlag5.List
    number4 = "Hours"
    stateFlag6 = text17
    stateFlag7 = text18
    stateFlag8 = ""
    workingValue11 = {}
    text52 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function stateFlag14(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation2, number5, number6, stateFlag10, stateFlag12
      cmgOperation2 = text18
      if localValue42 ~= cmgOperation2 then
        text18 = localValue42
        cmgOperation2 = text16
        if cmgOperation2 then
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.overrideTime
          number6 = text18
          number5 = text17
          number5 = number5[number6]
          stateFlag10 = text20
          number6 = text19
          number6 = number6[stateFlag10]
          stateFlag12 = text22
          stateFlag10 = text21
          stateFlag10 = stateFlag10[stateFlag12]
          cmgOperation2(number5, number6, stateFlag10)
        end
      end
    end

    -- === HELPER FUNCTION: position() ===
    function position()
      local localValue12, localValue22
    end
    position2 = nil
    -- Beginner: Draw a RageUI list selector.
    stateFlag5(number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2)
    stateFlag5 = RageUI
    stateFlag5 = stateFlag5.List
    number4 = "Minutes"
    stateFlag6 = text19
    stateFlag7 = text20
    stateFlag8 = ""
    workingValue11 = {}
    text52 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function stateFlag14(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation2, number5, number6, stateFlag10, stateFlag12
      cmgOperation2 = text20
      if localValue42 ~= cmgOperation2 then
        text20 = localValue42
        cmgOperation2 = text16
        if cmgOperation2 then
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.overrideTime
          number6 = text18
          number5 = text17
          number5 = number5[number6]
          stateFlag10 = text20
          number6 = text19
          number6 = number6[stateFlag10]
          stateFlag12 = text22
          stateFlag10 = text21
          stateFlag10 = stateFlag10[stateFlag12]
          cmgOperation2(number5, number6, stateFlag10)
        end
      end
    end

    -- === HELPER FUNCTION: position() ===
    function position()
      local localValue12, localValue22
    end
    position2 = nil
    -- Beginner: Draw a RageUI list selector.
    stateFlag5(number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2)
    stateFlag5 = RageUI
    stateFlag5 = stateFlag5.List
    number4 = "Seconds"
    stateFlag6 = text21
    stateFlag7 = text22
    stateFlag8 = ""
    workingValue11 = {}
    text52 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function stateFlag14(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation2, number5, number6, stateFlag10, stateFlag12
      cmgOperation2 = text22
      if localValue42 ~= cmgOperation2 then
        text22 = localValue42
        cmgOperation2 = text16
        if cmgOperation2 then
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.overrideTime
          number6 = text18
          number5 = text17
          number5 = number5[number6]
          stateFlag10 = text20
          number6 = text19
          number6 = number6[stateFlag10]
          stateFlag12 = text22
          stateFlag10 = text21
          stateFlag10 = stateFlag10[stateFlag12]
          cmgOperation2(number5, number6, stateFlag10)
        end
      end
    end

    -- === HELPER FUNCTION: position() ===
    function position()
      local localValue12, localValue22
    end
    position2 = nil
    -- Beginner: Draw a RageUI list selector.
    stateFlag5(number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2)
    stateFlag5 = RageUI
    stateFlag5 = stateFlag5.List
    number4 = "Weather"
    stateFlag6 = text28
    stateFlag7 = text29
    stateFlag8 = ""
    workingValue11 = {}
    text52 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function stateFlag14(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation2, number5, number6
      cmgOperation2 = text29
      if localValue42 ~= cmgOperation2 then
        text29 = localValue42
        cmgOperation2 = text16
        if cmgOperation2 then
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.setWeather
          number6 = text29
          number5 = text28
          number5 = number5[number6]
          cmgOperation2(number5)
        end
      end
    end

    -- === HELPER FUNCTION: position() ===
    function position()
      local localValue12, localValue22
    end
    position2 = nil
    -- Beginner: Draw a RageUI list selector.
    stateFlag5(number4, stateFlag6, stateFlag7, stateFlag8, workingValue11, text52, stateFlag14, position, position2)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local workingValue2, stateFlag4
  end
  localValue1(localValue2, localValue3, localValue4, text43, text49, workingValue10)
end
text34(text35, text36, text37, text38)

-- === HELPER FUNCTION (decompiler name: text34; parameters: none) ===
function text34()
  local localValue1, localValue2, localValue3, localValue4, text43, text49, workingValue10, stateFlag9, stateFlag11, stateFlag13, stateFlag
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = text16
  if localValue2 then
    localValue2 = text14
    if nil == localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.isDisplayVisible
      localValue3 = "radar"
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = drawNativeText
        localValue3 = "~r~CINEMATIC MODE ENABLED"
        -- Beginner: Draw GTA-style text on screen.
        localValue2(localValue3)
      end
    end
    localValue2 = DecorExistOn
    localValue3 = localValue1
    localValue4 = "a99d39faff"
    localValue2 = localValue2(localValue3, localValue4)
    if not localValue2 then
      localValue2 = DecorSetBool
      localValue3 = localValue1
      localValue4 = "a99d39faff"
      text43 = true
      localValue2(localValue3, localValue4, text43)
    end
  end
  localValue2 = text3
  if not localValue2 then
    localValue2 = text4
    if 0 == localValue2 then
      goto continueAtStep52
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.isNoClipActive
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue2 = localValue2()
    if 0 ~= localValue2 then
      localValue2 = tCMG
      localValue2 = localValue2.notify
      localValue3 = "~r~You may not noclip when in a vehicle."
      -- Beginner: Show a notification to the player.
      localValue2(localValue3)
      localValue2 = tCMG
      localValue2 = localValue2.toggleNoclip
      localValue2()
    end
  end
  ::continueAtStep52::
  localValue2 = text3
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.isNoClipActive
    localValue2 = localValue2()
    if localValue2 then
      localValue2 = drawNativeText
      localValue3 = "~g~Press [SPACEBAR] to confirm camera placement."
      -- Beginner: Draw GTA-style text on screen.
      localValue2(localValue3)
      localValue2 = IsControlJustPressed
      localValue3 = 0
      localValue4 = 22
      localValue2 = localValue2(localValue3, localValue4)
      if localValue2 then
        localValue2 = {}
        localValue3 = GetEntityCoords
        localValue4 = localValue1
        -- Beginner: result below is entityCoords.
        localValue3 = localValue3(localValue4)
        localValue2.position = localValue3
        localValue3 = GetGameplayCamRot
        localValue4 = 0
        localValue3 = localValue3(localValue4)
        localValue2.rotation = localValue3
        localValue2.transition = 5000
        localValue3 = text9
        localValue2.type = localValue3
        localValue2.screeneffect = ""
        localValue2.timecycleEffect = ""
        localValue2.timecycleIntensity = 1.0
        localValue2.focusType = ""
        localValue2.focusData = 0
        localValue2.shake = ""
        localValue2.fov = 65.0
        localValue3 = CMG
        localValue3 = localValue3.createCamera
        localValue4 = text2
        text43 = localValue2
        localValue3(localValue4, text43)
        localValue3 = tCMG
        localValue3 = localValue3.toggleNoclip
        localValue3()
        localValue3 = false
        text3 = localValue3
        localValue3 = SetEntityCoords
        localValue4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue4 = localValue4()
        text43 = text8.x
        text49 = text8.y
        workingValue10 = text8.z
        stateFlag9 = true
        stateFlag11 = false
        stateFlag13 = false
        stateFlag = false
        -- Beginner: Move/teleport an entity to new coordinates.
        localValue3(localValue4, text43, text49, workingValue10, stateFlag9, stateFlag11, stateFlag13, stateFlag)
      end
    end
  end
  localValue2 = text4
  if 0 ~= localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.isNoClipActive
    localValue2 = localValue2()
    if localValue2 then
      localValue2 = drawNativeText
      localValue3 = "~g~Press [SPACEBAR] to confirm camera placement."
      -- Beginner: Draw GTA-style text on screen.
      localValue2(localValue3)
      localValue2 = IsControlJustPressed
      localValue3 = 0
      localValue4 = 22
      localValue2 = localValue2(localValue3, localValue4)
      if localValue2 then
        localValue2 = {}
        localValue3 = GetEntityCoords
        localValue4 = localValue1
        -- Beginner: result below is entityCoords.
        localValue3 = localValue3(localValue4)
        localValue2.position = localValue3
        localValue3 = GetGameplayCamRot
        localValue4 = 0
        localValue3 = localValue3(localValue4)
        localValue2.rotation = localValue3
        localValue4 = text2
        localValue3 = text
        localValue3 = localValue3[localValue4]
        localValue4 = text4
        localValue3 = localValue3[localValue4]
        localValue3 = localValue3.transition
        localValue2.transition = localValue3
        localValue4 = text2
        localValue3 = text
        localValue3 = localValue3[localValue4]
        localValue4 = text4
        localValue3 = localValue3[localValue4]
        localValue3 = localValue3.type
        localValue2.type = localValue3
        localValue4 = text2
        localValue3 = text
        localValue3 = localValue3[localValue4]
        localValue4 = text4
        localValue3 = localValue3[localValue4]
        localValue3 = localValue3.screeneffect
        localValue2.screeneffect = localValue3
        localValue4 = text2
        localValue3 = text
        localValue3 = localValue3[localValue4]
        localValue4 = text4
        localValue3 = localValue3[localValue4]
        localValue3 = localValue3.timecycleEffect
        localValue2.timecycleEffect = localValue3
        localValue4 = text2
        localValue3 = text
        localValue3 = localValue3[localValue4]
        localValue4 = text4
        localValue3 = localValue3[localValue4]
        localValue3 = localValue3.timecycleIntensity
        localValue2.timecycleIntensity = localValue3
        localValue4 = text2
        localValue3 = text
        localValue3 = localValue3[localValue4]
        localValue4 = text4
        localValue3 = localValue3[localValue4]
        localValue3 = localValue3.focusType
        localValue2.focusType = localValue3
        localValue4 = text2
        localValue3 = text
        localValue3 = localValue3[localValue4]
        localValue4 = text4
        localValue3 = localValue3[localValue4]
        localValue3 = localValue3.focusData
        localValue2.focusData = localValue3
        localValue4 = text2
        localValue3 = text
        localValue3 = localValue3[localValue4]
        localValue4 = text4
        localValue3 = localValue3[localValue4]
        localValue3 = localValue3.shake
        localValue2.shake = localValue3
        localValue4 = text2
        localValue3 = text
        localValue3 = localValue3[localValue4]
        localValue4 = text4
        localValue3 = localValue3[localValue4]
        localValue3 = localValue3.fov
        if not localValue3 then
          localValue3 = 65.0
        end
        localValue2.fov = localValue3
        localValue3 = CMG
        localValue3 = localValue3.modifyCamera
        localValue4 = text2
        text43 = localValue2
        text49 = text4
        localValue3(localValue4, text43, text49)
        localValue3 = tCMG
        localValue3 = localValue3.toggleNoclip
        localValue3()
        localValue3 = 0
        text4 = localValue3
        localValue3 = SetEntityCoords
        localValue4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue4 = localValue4()
        text43 = text8.x
        text49 = text8.y
        workingValue10 = text8.z
        stateFlag9 = false
        stateFlag11 = false
        stateFlag13 = false
        stateFlag = false
        -- Beginner: Move/teleport an entity to new coordinates.
        localValue3(localValue4, text43, text49, workingValue10, stateFlag9, stateFlag11, stateFlag13, stateFlag)
      end
    end
  end
  localValue2 = text30
  if nil ~= localValue2 then
    localValue3 = text2
    localValue2 = text
    localValue2 = localValue2[localValue3]
    localValue3 = text30
    localValue2 = localValue2[localValue3]
    localValue3 = SetFocusPosAndVel
    localValue4 = localValue2.position
    localValue4 = localValue4.x
    text43 = localValue2.position
    text43 = text43.y
    text49 = localValue2.position
    text49 = text49.z
    workingValue10 = 0.0
    stateFlag9 = 0.0
    stateFlag11 = 0.0
    localValue3(localValue4, text43, text49, workingValue10, stateFlag9, stateFlag11)
    localValue3 = SetCamCoord
    localValue4 = text6
    text43 = localValue2.position
    text43 = text43.x
    text49 = localValue2.position
    text49 = text49.y
    workingValue10 = localValue2.position
    workingValue10 = workingValue10.z
    localValue3(localValue4, text43, text49, workingValue10)
    localValue3 = SetCamRot
    localValue4 = text6
    text43 = localValue2.rotation
    text43 = text43.x
    text49 = localValue2.rotation
    text49 = text49.y
    workingValue10 = localValue2.rotation
    workingValue10 = workingValue10.z
    stateFlag9 = 2
    localValue3(localValue4, text43, text49, workingValue10, stateFlag9)
    localValue3 = SetCamFov
    localValue4 = text6
    text43 = localValue2.fov
    if not text43 then
      text43 = 65.0
    end
    text43 = text43 + 0.001
    localValue3(localValue4, text43)
  end
  localValue2 = text14
  if nil ~= localValue2 then
    localValue2 = GetCamCoord
    localValue3 = text14
    localValue2 = localValue2(localValue3)
    localValue3 = SetFocusPosAndVel
    localValue4 = localValue2.x
    text43 = localValue2.y
    text49 = localValue2.z
    workingValue10 = 0.0
    stateFlag9 = 0.0
    stateFlag11 = 0.0
    localValue3(localValue4, text43, text49, workingValue10, stateFlag9, stateFlag11)
  end
end
text35 = _ENV
text36 = "DecorRegister"
text35 = text35[text36]
text36 = "a99d39faff"
text37 = 2
text35(text36, text37)
text35 = _ENV
text36 = "CMG"
text35 = text35[text36]
text36 = "createThreadOnTick"
text35 = text35[text36]
text36 = text34
text37 = "Cinematic Mode"
text35(text36, text37)
text35 = -1
text36 = _ENV
text37 = "RegisterCommand"
text36 = text36[text37]
text37 = "setlastvehicleon"

-- === HELPER FUNCTION (decompiler name: text38; parameters: none) ===
function text38()
  local localValue1, localValue2, localValue3, localValue4, text43, text49, workingValue10
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = IsPedInAnyVehicle
  localValue3 = localValue1
  localValue4 = true
  localValue2 = localValue2(localValue3, localValue4)
  if not localValue2 then
    localValue2 = IsControlPressed
    localValue3 = 0
    localValue4 = 23
    localValue2 = localValue2(localValue3, localValue4)
    if not localValue2 then
      localValue2 = GetVehiclePedIsIn
      localValue3 = localValue1
      localValue4 = true
      -- Beginner: result below is currentVehicle.
      localValue2 = localValue2(localValue3, localValue4)
      if 0 ~= localValue2 then
        localValue3 = SetVehicleEngineOn
        localValue4 = localValue2
        text43 = true
        text49 = true
        workingValue10 = false
        localValue3(localValue4, text43, text49, workingValue10)
        text35 = localValue2
      end
    end
  end
end
text39 = false
text36(text37, text38, text39)
text36 = _ENV
text37 = "Citizen"
text36 = text36[text37]
text37 = "CreateThread"
text36 = text36[text37]

-- === HELPER FUNCTION (decompiler name: text37; parameters: none) ===
function text37()
  local localValue1, localValue2, localValue3, localValue4, text43, text49, workingValue10, stateFlag9, stateFlag11
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getPlayerVehicle
    localValue1, localValue2 = localValue1()
    if 0 ~= localValue1 then
      localValue3 = text35
      if localValue1 == localValue3 and localValue2 then
        localValue3 = SetVehicleEngineOn
        localValue4 = localValue1
        text43 = false
        text49 = true
        workingValue10 = true
        localValue3(localValue4, text43, text49, workingValue10)
        localValue3 = -1
        text35 = localValue3
      end
    end
    localValue3 = GetEntityAttachedTo
    localValue4 = PlayerPedId
    localValue4, text43, text49, workingValue10, stateFlag9, stateFlag11 = localValue4()
    localValue3 = localValue3(localValue4, text43, text49, workingValue10, stateFlag9, stateFlag11)
    if 0 ~= localValue3 then
      localValue4 = IsEntityAPed
      text43 = localValue3
      localValue4 = localValue4(text43)
      if localValue4 then
        localValue4 = IsPedAPlayer
        text43 = localValue3
        localValue4 = localValue4(text43)
        if localValue4 then
          localValue4 = IsEntityVisible
          text43 = localValue3
          localValue4 = localValue4(text43)
          if not localValue4 then
            localValue4 = NetworkGetPlayerIndexFromPed
            text43 = localValue3
            localValue4 = localValue4(text43)
            if -1 ~= localValue4 then
              text43 = GetPlayerServerId
              text49 = localValue4
              -- Beginner: result below is serverId.
              text43 = text43(text49)
              if text43 > 0 then
                text49 = CMG
                text49 = text49.clientGetPlayerIsStaff
                workingValue10 = text43
                text49 = text49(workingValue10)
                if not text49 then
                  text49 = SetEntityVisible
                  workingValue10 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  workingValue10 = workingValue10()
                  stateFlag9 = true
                  stateFlag11 = true
                  text49(workingValue10, stateFlag9, stateFlag11)
                  text49 = DetachEntity
                  workingValue10 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  workingValue10 = workingValue10()
                  stateFlag9 = true
                  stateFlag11 = true
                  text49(workingValue10, stateFlag9, stateFlag11)
                end
              end
            end
          end
        end
      end
    end
    localValue4 = Citizen
    localValue4 = localValue4.Wait
    text43 = 1000
    localValue4(text43)
  end
end
text36(text37)
