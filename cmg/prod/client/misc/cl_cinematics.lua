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

    IMPORTANT — this file still contains decompiler temporary names.
      Names like workValue12, textValue4, dataTable7, flag3, cmgCall2,
      arg1/arg2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workValue = GetEntityCoords
        dataTable2 = workValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      I have deliberately NOT mass-renamed these reused temporary variables:
      doing that without full control-flow reconstruction can silently change
      behaviour. Comments/section labels below explain the code safely.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local workValue, textValue11, cmgCall, rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47
workValue = RMenu
workValue = workValue.Add
textValue11 = "mainmenu"
cmgCall = "cinematic"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue42 = ""
textValue48 = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "new_editor"
textValue54 = "r_editor_header"
rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47 = rageUiCall(textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54)
workValue(textValue11, cmgCall, rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47)
workValue = RMenu
textValue11 = workValue
workValue = workValue.Get
cmgCall = "mainmenu"
rageUiCall = "cinematic"
-- Beginner: result below is menu.
workValue = workValue(textValue11, cmgCall, rageUiCall)
textValue11 = workValue
workValue = workValue.SetSubtitle
cmgCall = "~b~CMG Cinematic Editor"
workValue(textValue11, cmgCall)
workValue = RMenu
workValue = workValue.Add
textValue11 = "load_scene"
cmgCall = "cinematic"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue42 = RMenu
textValue48 = textValue42
textValue42 = textValue42.Get
rageUiCall2 = "mainmenu"
rageUiCall3 = "cinematic"
-- Beginner: result below is menu.
textValue42 = textValue42(textValue48, rageUiCall2, rageUiCall3)
textValue48 = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue54 = "new_editor"
textValue = "r_editor_header"
rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47 = rageUiCall(textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue)
workValue(textValue11, cmgCall, rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47)
workValue = RMenu
textValue11 = workValue
workValue = workValue.Get
cmgCall = "load_scene"
rageUiCall = "cinematic"
-- Beginner: result below is menu.
workValue = workValue(textValue11, cmgCall, rageUiCall)
textValue11 = workValue
workValue = workValue.SetSubtitle
cmgCall = "~b~Load Scene"
workValue(textValue11, cmgCall)
workValue = RMenu
workValue = workValue.Add
textValue11 = "scene_manager"
cmgCall = "cinematic"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue42 = RMenu
textValue48 = textValue42
textValue42 = textValue42.Get
rageUiCall2 = "load_scene"
rageUiCall3 = "cinematic"
-- Beginner: result below is menu.
textValue42 = textValue42(textValue48, rageUiCall2, rageUiCall3)
textValue48 = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue54 = "new_editor"
textValue = "r_editor_header"
rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47 = rageUiCall(textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue)
workValue(textValue11, cmgCall, rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47)
workValue = RMenu
textValue11 = workValue
workValue = workValue.Get
cmgCall = "scene_manager"
rageUiCall = "cinematic"
-- Beginner: result below is menu.
workValue = workValue(textValue11, cmgCall, rageUiCall)
textValue11 = workValue
workValue = workValue.SetSubtitle
cmgCall = "~b~Scene Manager"
workValue(textValue11, cmgCall)
workValue = RMenu
workValue = workValue.Add
textValue11 = "camera_manager"
cmgCall = "cinematic"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue42 = RMenu
textValue48 = textValue42
textValue42 = textValue42.Get
rageUiCall2 = "scene_manager"
rageUiCall3 = "cinematic"
-- Beginner: result below is menu.
textValue42 = textValue42(textValue48, rageUiCall2, rageUiCall3)
textValue48 = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue54 = "new_editor"
textValue = "r_editor_header"
rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47 = rageUiCall(textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue)
workValue(textValue11, cmgCall, rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47)
workValue = RMenu
textValue11 = workValue
workValue = workValue.Get
cmgCall = "camera_manager"
rageUiCall = "cinematic"
-- Beginner: result below is menu.
workValue = workValue(textValue11, cmgCall, rageUiCall)
textValue11 = workValue
workValue = workValue.SetSubtitle
cmgCall = "~b~Camera Manager"
workValue(textValue11, cmgCall)
workValue = RMenu
workValue = workValue.Add
textValue11 = "screeneffect_manager"
cmgCall = "cinematic"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue42 = RMenu
textValue48 = textValue42
textValue42 = textValue42.Get
rageUiCall2 = "camera_manager"
rageUiCall3 = "cinematic"
-- Beginner: result below is menu.
textValue42 = textValue42(textValue48, rageUiCall2, rageUiCall3)
textValue48 = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue54 = "new_editor"
textValue = "r_editor_header"
rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47 = rageUiCall(textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue)
workValue(textValue11, cmgCall, rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47)
workValue = RMenu
textValue11 = workValue
workValue = workValue.Get
cmgCall = "screeneffect_manager"
rageUiCall = "cinematic"
-- Beginner: result below is menu.
workValue = workValue(textValue11, cmgCall, rageUiCall)
textValue11 = workValue
workValue = workValue.SetSubtitle
cmgCall = "~b~Screen Effect Manager"
workValue(textValue11, cmgCall)
workValue = RMenu
workValue = workValue.Add
textValue11 = "timecycle_manager"
cmgCall = "cinematic"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue42 = RMenu
textValue48 = textValue42
textValue42 = textValue42.Get
rageUiCall2 = "camera_manager"
rageUiCall3 = "cinematic"
-- Beginner: result below is menu.
textValue42 = textValue42(textValue48, rageUiCall2, rageUiCall3)
textValue48 = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue54 = "new_editor"
textValue = "r_editor_header"
rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47 = rageUiCall(textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue)
workValue(textValue11, cmgCall, rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47)
workValue = RMenu
textValue11 = workValue
workValue = workValue.Get
cmgCall = "timecycle_manager"
rageUiCall = "cinematic"
-- Beginner: result below is menu.
workValue = workValue(textValue11, cmgCall, rageUiCall)
textValue11 = workValue
workValue = workValue.SetSubtitle
cmgCall = "~b~Timecycle Effect Manager"
workValue(textValue11, cmgCall)
workValue = RMenu
workValue = workValue.Add
textValue11 = "shake_manager"
cmgCall = "cinematic"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue42 = RMenu
textValue48 = textValue42
textValue42 = textValue42.Get
rageUiCall2 = "camera_manager"
rageUiCall3 = "cinematic"
-- Beginner: result below is menu.
textValue42 = textValue42(textValue48, rageUiCall2, rageUiCall3)
textValue48 = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue54 = "new_editor"
textValue = "r_editor_header"
rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47 = rageUiCall(textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue)
workValue(textValue11, cmgCall, rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47)
workValue = RMenu
textValue11 = workValue
workValue = workValue.Get
cmgCall = "shake_manager"
rageUiCall = "cinematic"
-- Beginner: result below is menu.
workValue = workValue(textValue11, cmgCall, rageUiCall)
textValue11 = workValue
workValue = workValue.SetSubtitle
cmgCall = "~b~Shake Effect Manager"
workValue(textValue11, cmgCall)
workValue = RMenu
workValue = workValue.Add
textValue11 = "add_camera"
cmgCall = "cinematic"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue42 = RMenu
textValue48 = textValue42
textValue42 = textValue42.Get
rageUiCall2 = "scene_manager"
rageUiCall3 = "cinematic"
-- Beginner: result below is menu.
textValue42 = textValue42(textValue48, rageUiCall2, rageUiCall3)
textValue48 = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue54 = "new_editor"
textValue = "r_editor_header"
rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47 = rageUiCall(textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue)
workValue(textValue11, cmgCall, rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47)
workValue = RMenu
textValue11 = workValue
workValue = workValue.Get
cmgCall = "add_camera"
rageUiCall = "cinematic"
-- Beginner: result below is menu.
workValue = workValue(textValue11, cmgCall, rageUiCall)
textValue11 = workValue
workValue = workValue.SetSubtitle
cmgCall = "~b~Add Camera"
workValue(textValue11, cmgCall)
workValue = RMenu
workValue = workValue.Add
textValue11 = "camera_focus_manager"
cmgCall = "cinematic"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue42 = RMenu
textValue48 = textValue42
textValue42 = textValue42.Get
rageUiCall2 = "camera_manager"
rageUiCall3 = "cinematic"
-- Beginner: result below is menu.
textValue42 = textValue42(textValue48, rageUiCall2, rageUiCall3)
textValue48 = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue54 = "new_editor"
textValue = "r_editor_header"
rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47 = rageUiCall(textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue)
workValue(textValue11, cmgCall, rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47)
workValue = RMenu
textValue11 = workValue
workValue = workValue.Get
cmgCall = "camera_focus_manager"
rageUiCall = "cinematic"
-- Beginner: result below is menu.
workValue = workValue(textValue11, cmgCall, rageUiCall)
textValue11 = workValue
workValue = workValue.SetSubtitle
cmgCall = "~b~Camera Focus"
workValue(textValue11, cmgCall)
workValue = RMenu
workValue = workValue.Add
textValue11 = "weather_time_manager"
cmgCall = "cinematic"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue42 = RMenu
textValue48 = textValue42
textValue42 = textValue42.Get
rageUiCall2 = "mainmenu"
rageUiCall3 = "cinematic"
-- Beginner: result below is menu.
textValue42 = textValue42(textValue48, rageUiCall2, rageUiCall3)
textValue48 = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue54 = "new_editor"
textValue = "r_editor_header"
rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47 = rageUiCall(textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue)
workValue(textValue11, cmgCall, rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47)
workValue = RMenu
textValue11 = workValue
workValue = workValue.Get
cmgCall = "weather_time_manager"
rageUiCall = "cinematic"
-- Beginner: result below is menu.
workValue = workValue(textValue11, cmgCall, rageUiCall)
textValue11 = workValue
workValue = workValue.SetSubtitle
cmgCall = "~b~Time/Weather Manager"
workValue(textValue11, cmgCall)
workValue = RMenu
workValue = workValue.Add
textValue11 = "dof_manager"
cmgCall = "cinematic"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue42 = RMenu
textValue48 = textValue42
textValue42 = textValue42.Get
rageUiCall2 = "camera_manager"
rageUiCall3 = "cinematic"
-- Beginner: result below is menu.
textValue42 = textValue42(textValue48, rageUiCall2, rageUiCall3)
textValue48 = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue54 = "new_editor"
textValue = "r_editor_header"
rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47 = rageUiCall(textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue)
workValue(textValue11, cmgCall, rageUiCall, textValue42, textValue48, rageUiCall2, rageUiCall3, rageUiCall4, textValue54, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue45, textValue46, textValue47)
workValue = RMenu
textValue11 = workValue
workValue = workValue.Get
cmgCall = "dof_manager"
rageUiCall = "cinematic"
-- Beginner: result below is menu.
workValue = workValue(textValue11, cmgCall, rageUiCall)
textValue11 = workValue
workValue = workValue.SetSubtitle
cmgCall = "~b~Depth of Field Manager"
workValue(textValue11, cmgCall)

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3, arg4, textValue43, textValue49
  arg2 = RageUI
  arg2 = arg2.CloseAll
  arg2()
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  textValue43 = "mainmenu"
  textValue49 = "cinematic"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, textValue43, textValue49)
  arg4 = arg1
  arg2(arg3, arg4)
end
textValue11 = {}
cmgCall = "Default"
rageUiCall = "DeadlineNeon"
textValue42 = "PPPurple"
textValue48 = "PPOrange"
rageUiCall2 = "PPGreen"
rageUiCall3 = "InchPickup"
rageUiCall4 = "InchOrange"
textValue54 = "MP_Bull_tost"
textValue = "CrossLine"
textValue2 = "ArenaWheelPurple"
textValue3 = "SwitchHUDOut"
textValue4 = "FocusIn"
textValue5 = "FocusOut"
textValue6 = "MinigameEndNeutral"
textValue7 = "MinigameEndTrevor"
textValue8 = "MinigameEndFranklin"
textValue9 = "MinigameEndMichael"
textValue10 = "MinigameTransitionOut"
textValue12 = "MinigameTransitionIn"
textValue13 = "SwitchShortNeutralIn"
textValue14 = "SwitchShortFranklinIn"
textValue15 = "SwitchShortTrevorIn"
textValue16 = "SwitchShortMichaelIn"
textValue17 = "SwitchOpenMichaelIn"
textValue18 = "SwitchOpenFranklinIn"
textValue19 = "SwitchOpenTrevorIn"
textValue20 = "SwitchHUDMichaelOut"
textValue21 = "SwitchHUDFranklinOut"
textValue22 = "SwitchHUDTrevorOut"
textValue23 = "SwitchShortFranklinMid"
textValue24 = "SwitchShortMichaelMid"
textValue25 = "SwitchShortTrevorMid"
textValue26 = "DeathFailOut"
textValue27 = "CamPushInNeutral"
textValue28 = "CamPushInFranklin"
textValue29 = "CamPushInMichael"
textValue30 = "CamPushInTrevor"
textValue31 = "SwitchOpenMichaelIn"
textValue32 = "SwitchSceneFranklin"
textValue33 = "SwitchSceneTrevor"
textValue34 = "SwitchSceneMichael"
textValue35 = "SwitchSceneNeutral"
textValue36 = "MP_Celeb_Win"
textValue37 = "MP_Celeb_Win_Out"
textValue38 = "MP_Celeb_Lose"
textValue39 = "MP_Celeb_Lose_Out"
textValue40 = "DeathFailNeutralIn"
textValue41 = "DeathFailMPDark"
textValue45 = "DeathFailMPIn"
textValue46 = "MP_Celeb_Preload_Fade"
textValue11[1] = cmgCall
textValue11[2] = rageUiCall
textValue11[3] = textValue42
textValue11[4] = textValue48
textValue11[5] = rageUiCall2
textValue11[6] = rageUiCall3
textValue11[7] = rageUiCall4
textValue11[8] = textValue54
textValue11[9] = textValue
textValue11[10] = textValue2
textValue11[11] = textValue3
textValue11[12] = textValue4
textValue11[13] = textValue5
textValue11[14] = textValue6
textValue11[15] = textValue7
textValue11[16] = textValue8
textValue11[17] = textValue9
textValue11[18] = textValue10
textValue11[19] = textValue12
textValue11[20] = textValue13
textValue11[21] = textValue14
textValue11[22] = textValue15
textValue11[23] = textValue16
textValue11[24] = textValue17
textValue11[25] = textValue18
textValue11[26] = textValue19
textValue11[27] = textValue20
textValue11[28] = textValue21
textValue11[29] = textValue22
textValue11[30] = textValue23
textValue11[31] = textValue24
textValue11[32] = textValue25
textValue11[33] = textValue26
textValue11[34] = textValue27
textValue11[35] = textValue28
textValue11[36] = textValue29
textValue11[37] = textValue30
textValue11[38] = textValue31
textValue11[39] = textValue32
textValue11[40] = textValue33
textValue11[41] = textValue34
textValue11[42] = textValue35
textValue11[43] = textValue36
textValue11[44] = textValue37
textValue11[45] = textValue38
textValue11[46] = textValue39
textValue11[47] = textValue40
textValue11[48] = textValue41
textValue11[49] = textValue45
textValue11[50] = textValue46
cmgCall = "PeyoteEndOut"
rageUiCall = "PeyoteEndIn"
textValue42 = "PeyoteIn"
textValue48 = "PeyoteOut"
rageUiCall2 = "MP_race_crash"
rageUiCall3 = "SuccessFranklin"
rageUiCall4 = "SuccessTrevor"
textValue54 = "SuccessMichael"
textValue = "DrugsMichaelAliensFightIn"
textValue2 = "DrugsMichaelAliensFight"
textValue3 = "DrugsMichaelAliensFightOut"
textValue4 = "DrugsTrevorClownsFightIn"
textValue5 = "DrugsTrevorClownsFight"
textValue6 = "DrugsTrevorClownsFightOut"
textValue7 = "HeistCelebPass"
textValue8 = "HeistCelebPassBW"
textValue9 = "HeistCelebEnd"
textValue10 = "HeistCelebToast"
textValue12 = "MenuMGHeistIn"
textValue13 = "MenuMGTournamentIn"
textValue14 = "MenuMGSelectionIn"
textValue15 = "ChopVision"
textValue16 = "DMT_flight_intro"
textValue17 = "DMT_flight"
textValue18 = "DrugsDrivingIn"
textValue19 = "DrugsDrivingOut"
textValue20 = "SwitchOpenNeutralFIB5"
textValue21 = "HeistLocate"
textValue22 = "MP_job_load"
textValue23 = "RaceTurbo"
textValue24 = "MP_intro_logo"
textValue25 = "HeistTripSkipFade"
textValue26 = "MenuMGHeistOut"
textValue27 = "MP_corona_switch"
textValue28 = "MenuMGSelectionTint"
textValue29 = "SuccessNeutral"
textValue30 = "ExplosionJosh3"
textValue31 = "SniperOverlay"
textValue32 = "RampageOut"
textValue33 = "Rampage"
textValue34 = "Dont_tazeme_bro"
textValue35 = "DeathFailOut"
textValue11[51] = cmgCall
textValue11[52] = rageUiCall
textValue11[53] = textValue42
textValue11[54] = textValue48
textValue11[55] = rageUiCall2
textValue11[56] = rageUiCall3
textValue11[57] = rageUiCall4
textValue11[58] = textValue54
textValue11[59] = textValue
textValue11[60] = textValue2
textValue11[61] = textValue3
textValue11[62] = textValue4
textValue11[63] = textValue5
textValue11[64] = textValue6
textValue11[65] = textValue7
textValue11[66] = textValue8
textValue11[67] = textValue9
textValue11[68] = textValue10
textValue11[69] = textValue12
textValue11[70] = textValue13
textValue11[71] = textValue14
textValue11[72] = textValue15
textValue11[73] = textValue16
textValue11[74] = textValue17
textValue11[75] = textValue18
textValue11[76] = textValue19
textValue11[77] = textValue20
textValue11[78] = textValue21
textValue11[79] = textValue22
textValue11[80] = textValue23
textValue11[81] = textValue24
textValue11[82] = textValue25
textValue11[83] = textValue26
textValue11[84] = textValue27
textValue11[85] = textValue28
textValue11[86] = textValue29
textValue11[87] = textValue30
textValue11[88] = textValue31
textValue11[89] = textValue32
textValue11[90] = textValue33
textValue11[91] = textValue34
textValue11[92] = textValue35
cmgCall = {}
rageUiCall = "None"
textValue42 = "AP1_01_B_IntRefRange"
textValue48 = "AP1_01_C_NoFog"
rageUiCall2 = "AirRaceBoost01"
rageUiCall3 = "AirRaceBoost02"
rageUiCall4 = "AmbientPUSH"
textValue54 = "ArenaEMP"
textValue = "ArenaEMP_Blend"
textValue2 = "ArenaWheelPurple01"
textValue3 = "ArenaWheelPurple02"
textValue4 = "Bank_HLWD"
textValue5 = "Barry1_Stoned"
textValue6 = "BarryFadeOut"
textValue7 = "BeastIntro01"
textValue8 = "BeastIntro02"
textValue9 = "BeastLaunch01"
textValue10 = "BeastLaunch02"
textValue12 = "BikerFilter"
textValue13 = "BikerForm01"
textValue14 = "BikerFormFlash"
textValue15 = "Bikers"
textValue16 = "BikersSPLASH"
textValue17 = "BlackOut"
textValue18 = "BleepYellow01"
textValue19 = "BleepYellow02"
textValue20 = "Bloom"
textValue21 = "BloomLight"
textValue22 = "BloomMid"
textValue23 = "BombCam01"
textValue24 = "BombCamFlash"
textValue25 = "Broken_camera_fuzz"
textValue26 = "BulletTimeDark"
textValue27 = "BulletTimeLight"
textValue28 = "CAMERA_BW"
textValue29 = "CAMERA_secuirity"
textValue30 = "CAMERA_secuirity_FUZZ"
textValue31 = "CH3_06_water"
textValue32 = "CHOP"
textValue33 = "CS1_railwayB_tunnel"
textValue34 = "CS3_rail_tunnel"
textValue35 = "CUSTOM_streetlight"
textValue36 = "Carpark_MP_exit"
textValue37 = "CopsSPLASH"
textValue38 = "CrossLine01"
textValue39 = "CrossLine02"
textValue40 = "DONT_overide_sunpos"
textValue41 = "DRUG_2_drive"
textValue45 = "DRUG_gas_huffin"
textValue46 = "DeadlineNeon01"
textValue47 = "DefaultColorCode"
cmgCall[1] = rageUiCall
cmgCall[2] = textValue42
cmgCall[3] = textValue48
cmgCall[4] = rageUiCall2
cmgCall[5] = rageUiCall3
cmgCall[6] = rageUiCall4
cmgCall[7] = textValue54
cmgCall[8] = textValue
cmgCall[9] = textValue2
cmgCall[10] = textValue3
cmgCall[11] = textValue4
cmgCall[12] = textValue5
cmgCall[13] = textValue6
cmgCall[14] = textValue7
cmgCall[15] = textValue8
cmgCall[16] = textValue9
cmgCall[17] = textValue10
cmgCall[18] = textValue12
cmgCall[19] = textValue13
cmgCall[20] = textValue14
cmgCall[21] = textValue15
cmgCall[22] = textValue16
cmgCall[23] = textValue17
cmgCall[24] = textValue18
cmgCall[25] = textValue19
cmgCall[26] = textValue20
cmgCall[27] = textValue21
cmgCall[28] = textValue22
cmgCall[29] = textValue23
cmgCall[30] = textValue24
cmgCall[31] = textValue25
cmgCall[32] = textValue26
cmgCall[33] = textValue27
cmgCall[34] = textValue28
cmgCall[35] = textValue29
cmgCall[36] = textValue30
cmgCall[37] = textValue31
cmgCall[38] = textValue32
cmgCall[39] = textValue33
cmgCall[40] = textValue34
cmgCall[41] = textValue35
cmgCall[42] = textValue36
cmgCall[43] = textValue37
cmgCall[44] = textValue38
cmgCall[45] = textValue39
cmgCall[46] = textValue40
cmgCall[47] = textValue41
cmgCall[48] = textValue45
cmgCall[49] = textValue46
cmgCall[50] = textValue47
rageUiCall = "Dont_tazeme_bro"
textValue42 = "DrivingFocusDark"
textValue48 = "DrivingFocusLight"
rageUiCall2 = "Drone_FishEye_Lens"
rageUiCall3 = "Drug_deadman"
rageUiCall4 = "Drug_deadman_blend"
textValue54 = "Drunk"
textValue = "EXTRA_bouncelight"
textValue2 = "EXT_FULLAmbientmult_art"
textValue3 = "ExplosionJosh"
textValue4 = "FIB_5"
textValue5 = "FIB_6"
textValue6 = "FIB_A"
textValue7 = "FIB_B"
textValue8 = "FIB_interview"
textValue9 = "FIB_interview_optimise"
textValue10 = "FORdoron_delete"
textValue12 = "FRANKLIN"
textValue13 = "Facebook_NEW"
textValue14 = "FinaleBank"
textValue15 = "FinaleBankMid"
textValue16 = "FinaleBankexit"
textValue17 = "Forest"
textValue18 = "FrankilinsHOUSEhills"
textValue19 = "FranklinColorCode"
textValue20 = "FranklinColorCodeBasic"
textValue21 = "FranklinColorCodeBright"
textValue22 = "FullAmbientmult_interior"
textValue23 = "Glasses_BlackOut"
textValue24 = "Hanger_INTmods"
textValue25 = "Hicksbar"
textValue26 = "HicksbarNEW"
textValue27 = "Hint_cam"
textValue28 = "IMpExt_Interior_02"
textValue29 = "IMpExt_Interior_02_stair_cage"
textValue30 = "INT_FULLAmbientmult_art"
textValue31 = "INT_FULLAmbientmult_both"
textValue32 = "INT_FullAmbientmult"
textValue33 = "INT_NO_fogALPHA"
textValue34 = "INT_NOdirectLight"
textValue35 = "INT_NoAmbientmult"
textValue36 = "INT_NoAmbientmult_art"
textValue37 = "INT_NoAmbientmult_both"
textValue38 = "INT_garage"
textValue39 = "INT_mall"
textValue40 = "INT_nowaterREF"
textValue41 = "INT_posh_hairdresser"
textValue45 = "INT_smshop"
textValue46 = "INT_smshop_inMOD"
textValue47 = "INT_smshop_indoor_bloom"
cmgCall[51] = rageUiCall
cmgCall[52] = textValue42
cmgCall[53] = textValue48
cmgCall[54] = rageUiCall2
cmgCall[55] = rageUiCall3
cmgCall[56] = rageUiCall4
cmgCall[57] = textValue54
cmgCall[58] = textValue
cmgCall[59] = textValue2
cmgCall[60] = textValue3
cmgCall[61] = textValue4
cmgCall[62] = textValue5
cmgCall[63] = textValue6
cmgCall[64] = textValue7
cmgCall[65] = textValue8
cmgCall[66] = textValue9
cmgCall[67] = textValue10
cmgCall[68] = textValue12
cmgCall[69] = textValue13
cmgCall[70] = textValue14
cmgCall[71] = textValue15
cmgCall[72] = textValue16
cmgCall[73] = textValue17
cmgCall[74] = textValue18
cmgCall[75] = textValue19
cmgCall[76] = textValue20
cmgCall[77] = textValue21
cmgCall[78] = textValue22
cmgCall[79] = textValue23
cmgCall[80] = textValue24
cmgCall[81] = textValue25
cmgCall[82] = textValue26
cmgCall[83] = textValue27
cmgCall[84] = textValue28
cmgCall[85] = textValue29
cmgCall[86] = textValue30
cmgCall[87] = textValue31
cmgCall[88] = textValue32
cmgCall[89] = textValue33
cmgCall[90] = textValue34
cmgCall[91] = textValue35
cmgCall[92] = textValue36
cmgCall[93] = textValue37
cmgCall[94] = textValue38
cmgCall[95] = textValue39
cmgCall[96] = textValue40
cmgCall[97] = textValue41
cmgCall[98] = textValue45
cmgCall[99] = textValue46
cmgCall[100] = textValue47
rageUiCall = "INT_smshop_outdoor_bloom"
textValue42 = "INT_streetlighting"
textValue48 = "INT_trailer_cinema"
rageUiCall2 = "ImpExp_Interior_01"
rageUiCall3 = "InchOrange01"
rageUiCall4 = "InchOrange02"
textValue54 = "InchPickup01"
textValue = "InchPickup02"
textValue2 = "InchPurple01"
textValue3 = "InchPurple02"
textValue4 = "KT_underpass"
textValue5 = "Kifflom"
textValue6 = "LIGHTSreduceFALLOFF"
textValue7 = "LODmult_HD_orphan_LOD_reduce"
textValue8 = "LODmult_HD_orphan_reduce"
textValue9 = "LODmult_LOD_reduce"
textValue10 = "LODmult_SLOD1_reduce"
textValue12 = "LODmult_SLOD2_reduce"
textValue13 = "LODmult_SLOD3_reduce"
textValue14 = "LODmult_global_reduce"
textValue15 = "LODmult_global_reduce_NOHD"
textValue16 = "LectroDark"
textValue17 = "LectroLight"
textValue18 = "LifeInvaderLOD"
textValue19 = "LightPollutionHills"
textValue20 = "LostTimeDark"
textValue21 = "LostTimeFlash"
textValue22 = "LostTimeLight"
textValue23 = "METRO_Tunnels"
textValue24 = "METRO_Tunnels_entrance"
textValue25 = "METRO_platform"
textValue26 = "MPApartHigh"
textValue27 = "MPApartHigh_palnning"
textValue28 = "MPApart_H_01"
textValue29 = "MPApart_H_01_gym"
textValue30 = "MP_Arena_VIP"
textValue31 = "MP_Arena_theme_atlantis"
textValue32 = "MP_Arena_theme_evening"
textValue33 = "MP_Arena_theme_hell"
textValue34 = "MP_Arena_theme_midday"
textValue35 = "MP_Arena_theme_morning"
textValue36 = "MP_Arena_theme_night"
textValue37 = "MP_Arena_theme_saccharine"
textValue38 = "MP_Arena_theme_sandstorm"
textValue39 = "MP_Arena_theme_scifi_night"
textValue40 = "MP_Arena_theme_storm"
textValue41 = "MP_Arena_theme_toxic"
textValue45 = "MP_Bull_tost"
textValue46 = "MP_Bull_tost_blend"
textValue47 = "MP_Garage_L"
cmgCall[101] = rageUiCall
cmgCall[102] = textValue42
cmgCall[103] = textValue48
cmgCall[104] = rageUiCall2
cmgCall[105] = rageUiCall3
cmgCall[106] = rageUiCall4
cmgCall[107] = textValue54
cmgCall[108] = textValue
cmgCall[109] = textValue2
cmgCall[110] = textValue3
cmgCall[111] = textValue4
cmgCall[112] = textValue5
cmgCall[113] = textValue6
cmgCall[114] = textValue7
cmgCall[115] = textValue8
cmgCall[116] = textValue9
cmgCall[117] = textValue10
cmgCall[118] = textValue12
cmgCall[119] = textValue13
cmgCall[120] = textValue14
cmgCall[121] = textValue15
cmgCall[122] = textValue16
cmgCall[123] = textValue17
cmgCall[124] = textValue18
cmgCall[125] = textValue19
cmgCall[126] = textValue20
cmgCall[127] = textValue21
cmgCall[128] = textValue22
cmgCall[129] = textValue23
cmgCall[130] = textValue24
cmgCall[131] = textValue25
cmgCall[132] = textValue26
cmgCall[133] = textValue27
cmgCall[134] = textValue28
cmgCall[135] = textValue29
cmgCall[136] = textValue30
cmgCall[137] = textValue31
cmgCall[138] = textValue32
cmgCall[139] = textValue33
cmgCall[140] = textValue34
cmgCall[141] = textValue35
cmgCall[142] = textValue36
cmgCall[143] = textValue37
cmgCall[144] = textValue38
cmgCall[145] = textValue39
cmgCall[146] = textValue40
cmgCall[147] = textValue41
cmgCall[148] = textValue45
cmgCall[149] = textValue46
cmgCall[150] = textValue47
rageUiCall = "MP_H_01_Bathroom"
textValue42 = "MP_H_01_Bedroom"
textValue48 = "MP_H_01_New"
rageUiCall2 = "MP_H_01_New_Bathroom"
rageUiCall3 = "MP_H_01_New_Bedroom"
rageUiCall4 = "MP_H_01_New_Study"
textValue54 = "MP_H_01_Study"
textValue = "MP_H_02"
textValue2 = "MP_H_04"
textValue3 = "MP_H_06"
textValue4 = "MP_Killstreak"
textValue5 = "MP_Killstreak_blend"
textValue6 = "MP_Loser"
textValue7 = "MP_Loser_blend"
textValue8 = "MP_MedGarage"
textValue9 = "MP_Powerplay"
textValue10 = "MP_Powerplay_blend"
textValue12 = "MP_Studio_Lo"
textValue13 = "MP_corona_heist"
textValue14 = "MP_corona_heist_BW"
textValue15 = "MP_corona_heist_BW_night"
textValue16 = "MP_corona_heist_DOF"
textValue17 = "MP_corona_heist_blend"
textValue18 = "MP_corona_heist_night"
textValue19 = "MP_corona_heist_night_blend"
textValue20 = "MP_corona_selection"
textValue21 = "MP_corona_switch"
textValue22 = "MP_corona_tournament"
textValue23 = "MP_corona_tournament_DOF"
textValue24 = "MP_death_grade"
textValue25 = "MP_death_grade_blend01"
textValue26 = "MP_death_grade_blend02"
textValue27 = "MP_deathfail_night"
textValue28 = "MP_heli_cam"
textValue29 = "MP_intro_logo"
textValue30 = "MP_job_end_night"
textValue31 = "MP_job_load"
textValue32 = "MP_job_load_01"
textValue33 = "MP_job_load_02"
textValue34 = "MP_job_lose"
textValue35 = "MP_job_preload"
textValue36 = "MP_job_preload_blend"
textValue37 = "MP_job_preload_night"
textValue38 = "MP_job_win"
textValue39 = "MP_lowgarage"
textValue40 = "MP_race_finish"
textValue41 = "MP_select"
textValue45 = "MichaelColorCode"
textValue46 = "MichaelColorCodeBasic"
textValue47 = "MichaelColorCodeBright"
cmgCall[151] = rageUiCall
cmgCall[152] = textValue42
cmgCall[153] = textValue48
cmgCall[154] = rageUiCall2
cmgCall[155] = rageUiCall3
cmgCall[156] = rageUiCall4
cmgCall[157] = textValue54
cmgCall[158] = textValue
cmgCall[159] = textValue2
cmgCall[160] = textValue3
cmgCall[161] = textValue4
cmgCall[162] = textValue5
cmgCall[163] = textValue6
cmgCall[164] = textValue7
cmgCall[165] = textValue8
cmgCall[166] = textValue9
cmgCall[167] = textValue10
cmgCall[168] = textValue12
cmgCall[169] = textValue13
cmgCall[170] = textValue14
cmgCall[171] = textValue15
cmgCall[172] = textValue16
cmgCall[173] = textValue17
cmgCall[174] = textValue18
cmgCall[175] = textValue19
cmgCall[176] = textValue20
cmgCall[177] = textValue21
cmgCall[178] = textValue22
cmgCall[179] = textValue23
cmgCall[180] = textValue24
cmgCall[181] = textValue25
cmgCall[182] = textValue26
cmgCall[183] = textValue27
cmgCall[184] = textValue28
cmgCall[185] = textValue29
cmgCall[186] = textValue30
cmgCall[187] = textValue31
cmgCall[188] = textValue32
cmgCall[189] = textValue33
cmgCall[190] = textValue34
cmgCall[191] = textValue35
cmgCall[192] = textValue36
cmgCall[193] = textValue37
cmgCall[194] = textValue38
cmgCall[195] = textValue39
cmgCall[196] = textValue40
cmgCall[197] = textValue41
cmgCall[198] = textValue45
cmgCall[199] = textValue46
cmgCall[200] = textValue47
rageUiCall = "MichaelsDarkroom"
textValue42 = "MichaelsDirectional"
textValue48 = "MichaelsNODirectional"
rageUiCall2 = "Mp_Stilts"
rageUiCall3 = "Mp_Stilts2"
rageUiCall4 = "Mp_Stilts2_bath"
textValue54 = "Mp_Stilts_gym"
textValue = "Mp_Stilts_gym2"
textValue2 = "Mp_apart_mid"
textValue3 = "Multipayer_spectatorCam"
textValue4 = "NEW_abattoir"
textValue5 = "NEW_jewel"
textValue6 = "NEW_jewel_EXIT"
textValue7 = "NEW_lesters"
textValue8 = "NEW_ornate_bank"
textValue9 = "NEW_ornate_bank_entrance"
textValue10 = "NEW_ornate_bank_office"
textValue12 = "NEW_ornate_bank_safe"
textValue13 = "NEW_shrinksOffice"
textValue14 = "NEW_station_unfinished"
textValue15 = "NEW_trevorstrailer"
textValue16 = "NEW_tunnels"
textValue17 = "NEW_tunnels_ditch"
textValue18 = "NEW_tunnels_hole"
textValue19 = "NEW_yellowtunnels"
textValue20 = "NG_blackout"
textValue21 = "NG_deathfail_BW_base"
textValue22 = "NG_deathfail_BW_blend01"
textValue23 = "NG_deathfail_BW_blend02"
textValue24 = "NG_filmic01"
textValue25 = "NG_filmic02"
textValue26 = "NG_filmic03"
textValue27 = "NG_filmic04"
textValue28 = "NG_filmic05"
textValue29 = "NG_filmic06"
textValue30 = "NG_filmic07"
textValue31 = "NG_filmic08"
textValue32 = "NG_filmic09"
textValue33 = "NG_filmic10"
textValue34 = "NG_filmic11"
textValue35 = "NG_filmic12"
textValue36 = "NG_filmic13"
textValue37 = "NG_filmic14"
textValue38 = "NG_filmic15"
textValue39 = "NG_filmic16"
textValue40 = "NG_filmic17"
textValue41 = "NG_filmic18"
textValue45 = "NG_filmic19"
textValue46 = "NG_filmic20"
textValue47 = "NG_filmic21"
cmgCall[201] = rageUiCall
cmgCall[202] = textValue42
cmgCall[203] = textValue48
cmgCall[204] = rageUiCall2
cmgCall[205] = rageUiCall3
cmgCall[206] = rageUiCall4
cmgCall[207] = textValue54
cmgCall[208] = textValue
cmgCall[209] = textValue2
cmgCall[210] = textValue3
cmgCall[211] = textValue4
cmgCall[212] = textValue5
cmgCall[213] = textValue6
cmgCall[214] = textValue7
cmgCall[215] = textValue8
cmgCall[216] = textValue9
cmgCall[217] = textValue10
cmgCall[218] = textValue12
cmgCall[219] = textValue13
cmgCall[220] = textValue14
cmgCall[221] = textValue15
cmgCall[222] = textValue16
cmgCall[223] = textValue17
cmgCall[224] = textValue18
cmgCall[225] = textValue19
cmgCall[226] = textValue20
cmgCall[227] = textValue21
cmgCall[228] = textValue22
cmgCall[229] = textValue23
cmgCall[230] = textValue24
cmgCall[231] = textValue25
cmgCall[232] = textValue26
cmgCall[233] = textValue27
cmgCall[234] = textValue28
cmgCall[235] = textValue29
cmgCall[236] = textValue30
cmgCall[237] = textValue31
cmgCall[238] = textValue32
cmgCall[239] = textValue33
cmgCall[240] = textValue34
cmgCall[241] = textValue35
cmgCall[242] = textValue36
cmgCall[243] = textValue37
cmgCall[244] = textValue38
cmgCall[245] = textValue39
cmgCall[246] = textValue40
cmgCall[247] = textValue41
cmgCall[248] = textValue45
cmgCall[249] = textValue46
cmgCall[250] = textValue47
rageUiCall = "NG_filmic22"
textValue42 = "NG_filmic23"
textValue48 = "NG_filmic24"
rageUiCall2 = "NG_filmic25"
rageUiCall3 = "NG_filmnoir_BW01"
rageUiCall4 = "NG_filmnoir_BW02"
textValue54 = "NG_first"
textValue = "NO_coronas"
textValue2 = "NO_fog_alpha"
textValue3 = "NO_streetAmbient"
textValue4 = "NO_weather"
textValue5 = "NOdirectLight"
textValue6 = "NOrain"
textValue7 = "NeutralColorCode"
textValue8 = "NeutralColorCodeBasic"
textValue9 = "NeutralColorCodeBright"
textValue10 = "NeutralColorCodeLight"
textValue12 = "NewMicheal"
textValue13 = "NewMicheal_night"
textValue14 = "NewMicheal_upstairs"
textValue15 = "NewMichealgirly"
textValue16 = "NewMichealstoilet"
textValue17 = "NewMichealupstairs"
textValue18 = "New_sewers"
textValue19 = "NoAmbientmult"
textValue20 = "NoAmbientmult_interior"
textValue21 = "NoPedLight"
textValue22 = "OrbitalCannon"
textValue23 = "PERSHING_water_reflect"
textValue24 = "PORT_heist_underwater"
textValue25 = "PPFilter"
textValue26 = "PPGreen01"
textValue27 = "PPGreen02"
textValue28 = "PPOrange01"
textValue29 = "PPOrange02"
textValue30 = "PPPink01"
textValue31 = "PPPink02"
textValue32 = "PPPurple01"
textValue33 = "PPPurple02"
textValue34 = "Paleto"
textValue35 = "PennedInDark"
textValue36 = "PennedInLight"
textValue37 = "PlayerSwitchNeutralFlash"
textValue38 = "PlayerSwitchPulse"
textValue39 = "PoliceStation"
textValue40 = "PoliceStationDark"
textValue41 = "Prologue_shootout_opt"
textValue45 = "REDMIST"
textValue46 = "REDMIST_blend"
textValue47 = "RaceTurboDark"
cmgCall[251] = rageUiCall
cmgCall[252] = textValue42
cmgCall[253] = textValue48
cmgCall[254] = rageUiCall2
cmgCall[255] = rageUiCall3
cmgCall[256] = rageUiCall4
cmgCall[257] = textValue54
cmgCall[258] = textValue
cmgCall[259] = textValue2
cmgCall[260] = textValue3
cmgCall[261] = textValue4
cmgCall[262] = textValue5
cmgCall[263] = textValue6
cmgCall[264] = textValue7
cmgCall[265] = textValue8
cmgCall[266] = textValue9
cmgCall[267] = textValue10
cmgCall[268] = textValue12
cmgCall[269] = textValue13
cmgCall[270] = textValue14
cmgCall[271] = textValue15
cmgCall[272] = textValue16
cmgCall[273] = textValue17
cmgCall[274] = textValue18
cmgCall[275] = textValue19
cmgCall[276] = textValue20
cmgCall[277] = textValue21
cmgCall[278] = textValue22
cmgCall[279] = textValue23
cmgCall[280] = textValue24
cmgCall[281] = textValue25
cmgCall[282] = textValue26
cmgCall[283] = textValue27
cmgCall[284] = textValue28
cmgCall[285] = textValue29
cmgCall[286] = textValue30
cmgCall[287] = textValue31
cmgCall[288] = textValue32
cmgCall[289] = textValue33
cmgCall[290] = textValue34
cmgCall[291] = textValue35
cmgCall[292] = textValue36
cmgCall[293] = textValue37
cmgCall[294] = textValue38
cmgCall[295] = textValue39
cmgCall[296] = textValue40
cmgCall[297] = textValue41
cmgCall[298] = textValue45
cmgCall[299] = textValue46
cmgCall[300] = textValue47
rageUiCall = "RaceTurboFlash"
textValue42 = "RaceTurboLight"
textValue48 = "ReduceDrawDistance"
rageUiCall2 = "ReduceDrawDistanceMAP"
rageUiCall3 = "ReduceDrawDistanceMission"
rageUiCall4 = "ReduceSSAO"
textValue54 = "RemixDrone"
textValue = "RemoteSniper"
textValue2 = "SALTONSEA"
textValue3 = "SAWMILL"
textValue4 = "SP1_03_drawDistance"
textValue5 = "STRIP_changing"
textValue6 = "STRIP_nofog"
textValue7 = "STRIP_office"
textValue8 = "STRIP_stage"
textValue9 = "SheriffStation"
textValue10 = "Shop247"
textValue12 = "Shop247_none"
textValue13 = "SmugglerCheckpoint01"
textValue14 = "SmugglerCheckpoint02"
textValue15 = "SmugglerFlash"
textValue16 = "Sniper"
textValue17 = "StadLobby"
textValue18 = "StreetLighting"
textValue19 = "StreetLightingJunction"
textValue20 = "StreetLightingtraffic"
textValue21 = "StuntFastDark"
textValue22 = "StuntFastLight"
textValue23 = "StuntSlowDark"
textValue24 = "StuntSlowLight"
textValue25 = "TREVOR"
textValue26 = "TUNNEL_green"
textValue27 = "TUNNEL_green_ext"
textValue28 = "TUNNEL_orange"
textValue29 = "TUNNEL_orange_exterior"
textValue30 = "TUNNEL_white"
textValue31 = "TUNNEL_yellow"
textValue32 = "TUNNEL_yellow_ext"
textValue33 = "TinyGreen01"
textValue34 = "TinyGreen02"
textValue35 = "TinyPink01"
textValue36 = "TinyPink02"
textValue37 = "TinyRacerMoBlur"
textValue38 = "TransformFlash"
textValue39 = "TransformRaceFlash"
textValue40 = "TrevorColorCode"
textValue41 = "TrevorColorCodeBasic"
textValue45 = "TrevorColorCodeBright"
textValue46 = "Trevors_room"
textValue47 = "Tunnel"
cmgCall[301] = rageUiCall
cmgCall[302] = textValue42
cmgCall[303] = textValue48
cmgCall[304] = rageUiCall2
cmgCall[305] = rageUiCall3
cmgCall[306] = rageUiCall4
cmgCall[307] = textValue54
cmgCall[308] = textValue
cmgCall[309] = textValue2
cmgCall[310] = textValue3
cmgCall[311] = textValue4
cmgCall[312] = textValue5
cmgCall[313] = textValue6
cmgCall[314] = textValue7
cmgCall[315] = textValue8
cmgCall[316] = textValue9
cmgCall[317] = textValue10
cmgCall[318] = textValue12
cmgCall[319] = textValue13
cmgCall[320] = textValue14
cmgCall[321] = textValue15
cmgCall[322] = textValue16
cmgCall[323] = textValue17
cmgCall[324] = textValue18
cmgCall[325] = textValue19
cmgCall[326] = textValue20
cmgCall[327] = textValue21
cmgCall[328] = textValue22
cmgCall[329] = textValue23
cmgCall[330] = textValue24
cmgCall[331] = textValue25
cmgCall[332] = textValue26
cmgCall[333] = textValue27
cmgCall[334] = textValue28
cmgCall[335] = textValue29
cmgCall[336] = textValue30
cmgCall[337] = textValue31
cmgCall[338] = textValue32
cmgCall[339] = textValue33
cmgCall[340] = textValue34
cmgCall[341] = textValue35
cmgCall[342] = textValue36
cmgCall[343] = textValue37
cmgCall[344] = textValue38
cmgCall[345] = textValue39
cmgCall[346] = textValue40
cmgCall[347] = textValue41
cmgCall[348] = textValue45
cmgCall[349] = textValue46
cmgCall[350] = textValue47
rageUiCall = "Tunnel_green1"
textValue42 = "VAGOS_new_garage"
textValue48 = "VAGOS_new_hangout"
rageUiCall2 = "VC_tunnel_entrance"
rageUiCall3 = "V_Abattoir_Cold"
rageUiCall4 = "V_CIA_Facility"
textValue54 = "V_FIB_IT3"
textValue = "V_FIB_IT3_alt"
textValue2 = "V_FIB_IT3_alt5"
textValue3 = "V_FIB_stairs"
textValue4 = "V_Metro2"
textValue5 = "V_Metro_station"
textValue6 = "V_Office_smoke"
textValue7 = "V_Office_smoke_Fire"
textValue8 = "V_Office_smoke_ext"
textValue9 = "V_Solomons"
textValue10 = "V_recycle_dark"
textValue12 = "V_recycle_light"
textValue13 = "V_recycle_mainroom"
textValue14 = "V_strip_nofog"
textValue15 = "V_strip_office"
textValue16 = "Vagos"
textValue17 = "VagosSPLASH"
textValue18 = "VolticBlur"
textValue19 = "VolticFlash"
textValue20 = "VolticGold"
textValue21 = "WATER_lab_cooling"
textValue22 = "WATER_CH2_06_01_03"
textValue23 = "WATER_CH2_06_02"
textValue24 = "WATER_CH2_06_04"
textValue25 = "WATER_ID2_21"
textValue26 = "WATER_REF_malibu"
textValue27 = "WATER_RichmanStuntJump"
textValue28 = "WATER_cove"
textValue29 = "WATER_hills"
textValue30 = "WATER_lab"
textValue31 = "WATER_militaryPOOP"
textValue32 = "WATER_muddy"
textValue33 = "WATER_port"
textValue34 = "WATER_refmap_high"
textValue35 = "WATER_refmap_hollywoodlake"
textValue36 = "WATER_refmap_low"
textValue37 = "WATER_refmap_med"
textValue38 = "WATER_refmap_off"
textValue39 = "WATER_refmap_poolside"
textValue40 = "WATER_refmap_silverlake"
textValue41 = "WATER_refmap_venice"
textValue45 = "WATER_refmap_verylow"
textValue46 = "WATER_resevoir"
textValue47 = "WATER_river"
cmgCall[351] = rageUiCall
cmgCall[352] = textValue42
cmgCall[353] = textValue48
cmgCall[354] = rageUiCall2
cmgCall[355] = rageUiCall3
cmgCall[356] = rageUiCall4
cmgCall[357] = textValue54
cmgCall[358] = textValue
cmgCall[359] = textValue2
cmgCall[360] = textValue3
cmgCall[361] = textValue4
cmgCall[362] = textValue5
cmgCall[363] = textValue6
cmgCall[364] = textValue7
cmgCall[365] = textValue8
cmgCall[366] = textValue9
cmgCall[367] = textValue10
cmgCall[368] = textValue12
cmgCall[369] = textValue13
cmgCall[370] = textValue14
cmgCall[371] = textValue15
cmgCall[372] = textValue16
cmgCall[373] = textValue17
cmgCall[374] = textValue18
cmgCall[375] = textValue19
cmgCall[376] = textValue20
cmgCall[377] = textValue21
cmgCall[378] = textValue22
cmgCall[379] = textValue23
cmgCall[380] = textValue24
cmgCall[381] = textValue25
cmgCall[382] = textValue26
cmgCall[383] = textValue27
cmgCall[384] = textValue28
cmgCall[385] = textValue29
cmgCall[386] = textValue30
cmgCall[387] = textValue31
cmgCall[388] = textValue32
cmgCall[389] = textValue33
cmgCall[390] = textValue34
cmgCall[391] = textValue35
cmgCall[392] = textValue36
cmgCall[393] = textValue37
cmgCall[394] = textValue38
cmgCall[395] = textValue39
cmgCall[396] = textValue40
cmgCall[397] = textValue41
cmgCall[398] = textValue45
cmgCall[399] = textValue46
cmgCall[400] = textValue47
rageUiCall = "WATER_salton"
textValue42 = "WATER_salton_bottom"
textValue48 = "WATER_shore"
rageUiCall2 = "WATER_silty"
rageUiCall3 = "WATER_silverlake"
rageUiCall4 = "WarpCheckpoint"
textValue54 = "WeaponUpgrade"
textValue = "WhiteOut"
textValue2 = "baseTONEMAPPING"
textValue3 = "blackNwhite"
textValue4 = "buggy_shack"
textValue5 = "buildingTOP"
textValue6 = "cBank_back"
textValue7 = "cBank_front"
textValue8 = "canyon_mission"
textValue9 = "carMOD_underpass"
textValue10 = "carpark"
textValue12 = "carpark_dt1_02"
textValue13 = "carpark_dt1_03"
textValue14 = "cashdepot"
textValue15 = "cashdepotEMERGENCY"
textValue16 = "ch2_tunnel_whitelight"
textValue17 = "cinema"
textValue18 = "cinema_001"
textValue19 = "cops"
textValue20 = "crane_cam"
textValue21 = "crane_cam_cinematic"
textValue22 = "damage"
textValue23 = "default"
textValue24 = "dont_tazeme_bro_b"
textValue25 = "downtown_FIB_cascades_opt"
textValue26 = "drug_drive_blend01"
textValue27 = "drug_drive_blend02"
textValue28 = "drug_flying_01"
textValue29 = "drug_flying_02"
textValue30 = "drug_flying_base"
textValue31 = "drug_wobbly"
textValue32 = "dying"
textValue33 = "eatra_bouncelight_beach"
textValue34 = "epsilion"
textValue35 = "exile1_exit"
textValue36 = "exile1_plane"
textValue37 = "ext_int_extlight_large"
textValue38 = "eyeINtheSKY"
textValue39 = "facebook_serveroom"
textValue40 = "fireDEPT"
textValue41 = "fp_vig_black"
textValue45 = "fp_vig_blue"
textValue46 = "fp_vig_brown"
textValue47 = "fp_vig_gray"
cmgCall[401] = rageUiCall
cmgCall[402] = textValue42
cmgCall[403] = textValue48
cmgCall[404] = rageUiCall2
cmgCall[405] = rageUiCall3
cmgCall[406] = rageUiCall4
cmgCall[407] = textValue54
cmgCall[408] = textValue
cmgCall[409] = textValue2
cmgCall[410] = textValue3
cmgCall[411] = textValue4
cmgCall[412] = textValue5
cmgCall[413] = textValue6
cmgCall[414] = textValue7
cmgCall[415] = textValue8
cmgCall[416] = textValue9
cmgCall[417] = textValue10
cmgCall[418] = textValue12
cmgCall[419] = textValue13
cmgCall[420] = textValue14
cmgCall[421] = textValue15
cmgCall[422] = textValue16
cmgCall[423] = textValue17
cmgCall[424] = textValue18
cmgCall[425] = textValue19
cmgCall[426] = textValue20
cmgCall[427] = textValue21
cmgCall[428] = textValue22
cmgCall[429] = textValue23
cmgCall[430] = textValue24
cmgCall[431] = textValue25
cmgCall[432] = textValue26
cmgCall[433] = textValue27
cmgCall[434] = textValue28
cmgCall[435] = textValue29
cmgCall[436] = textValue30
cmgCall[437] = textValue31
cmgCall[438] = textValue32
cmgCall[439] = textValue33
cmgCall[440] = textValue34
cmgCall[441] = textValue35
cmgCall[442] = textValue36
cmgCall[443] = textValue37
cmgCall[444] = textValue38
cmgCall[445] = textValue39
cmgCall[446] = textValue40
cmgCall[447] = textValue41
cmgCall[448] = textValue45
cmgCall[449] = textValue46
cmgCall[450] = textValue47
rageUiCall = "fp_vig_green"
textValue42 = "fp_vig_red"
textValue48 = "frankilnsAUNTS_SUNdir"
rageUiCall2 = "frankilnsAUNTS_new"
rageUiCall3 = "gallery_refmod"
rageUiCall4 = "garage"
textValue54 = "gen_bank"
textValue = "glasses_Darkblue"
textValue2 = "glasses_Scuba"
textValue3 = "glasses_VISOR"
textValue4 = "glasses_black"
textValue5 = "glasses_blue"
textValue6 = "glasses_brown"
textValue7 = "glasses_green"
textValue8 = "glasses_orange"
textValue9 = "glasses_pink"
textValue10 = "glasses_purple"
textValue12 = "glasses_red"
textValue13 = "glasses_yellow"
textValue14 = "gorge_reflection_gpu"
textValue15 = "gorge_reflectionoffset"
textValue16 = "gorge_reflectionoffset2"
textValue17 = "graveyard_shootout"
textValue18 = "grdlc_int_02"
textValue19 = "grdlc_int_02_trailer_cave"
textValue20 = "gunclub"
textValue21 = "gunclubrange"
textValue22 = "gunshop"
textValue23 = "gunstore"
textValue24 = "half_direct"
textValue25 = "hangar_lightsmod"
textValue26 = "heathaze"
textValue27 = "heist_boat"
textValue28 = "heist_boat_engineRoom"
textValue29 = "heist_boat_norain"
textValue30 = "heliGunCam"
textValue31 = "helicamfirst"
textValue32 = "hillstunnel"
textValue33 = "hitped"
textValue34 = "hud_def_Franklin"
textValue35 = "hud_def_Michael"
textValue36 = "hud_def_Trevor"
textValue37 = "hud_def_blur"
textValue38 = "hud_def_blur_switch"
textValue39 = "hud_def_colorgrade"
textValue40 = "hud_def_desat_Franklin"
textValue41 = "hud_def_desat_Michael"
textValue45 = "hud_def_desat_Neutral"
textValue46 = "hud_def_desat_Trevor"
textValue47 = "hud_def_desat_cold"
cmgCall[451] = rageUiCall
cmgCall[452] = textValue42
cmgCall[453] = textValue48
cmgCall[454] = rageUiCall2
cmgCall[455] = rageUiCall3
cmgCall[456] = rageUiCall4
cmgCall[457] = textValue54
cmgCall[458] = textValue
cmgCall[459] = textValue2
cmgCall[460] = textValue3
cmgCall[461] = textValue4
cmgCall[462] = textValue5
cmgCall[463] = textValue6
cmgCall[464] = textValue7
cmgCall[465] = textValue8
cmgCall[466] = textValue9
cmgCall[467] = textValue10
cmgCall[468] = textValue12
cmgCall[469] = textValue13
cmgCall[470] = textValue14
cmgCall[471] = textValue15
cmgCall[472] = textValue16
cmgCall[473] = textValue17
cmgCall[474] = textValue18
cmgCall[475] = textValue19
cmgCall[476] = textValue20
cmgCall[477] = textValue21
cmgCall[478] = textValue22
cmgCall[479] = textValue23
cmgCall[480] = textValue24
cmgCall[481] = textValue25
cmgCall[482] = textValue26
cmgCall[483] = textValue27
cmgCall[484] = textValue28
cmgCall[485] = textValue29
cmgCall[486] = textValue30
cmgCall[487] = textValue31
cmgCall[488] = textValue32
cmgCall[489] = textValue33
cmgCall[490] = textValue34
cmgCall[491] = textValue35
cmgCall[492] = textValue36
cmgCall[493] = textValue37
cmgCall[494] = textValue38
cmgCall[495] = textValue39
cmgCall[496] = textValue40
cmgCall[497] = textValue41
cmgCall[498] = textValue45
cmgCall[499] = textValue46
cmgCall[500] = textValue47
rageUiCall = "hud_def_desat_cold_kill"
textValue42 = "hud_def_desat_switch"
textValue48 = "hud_def_desatcrunch"
rageUiCall2 = "hud_def_flash"
rageUiCall3 = "hud_def_focus"
rageUiCall4 = "hud_def_lensdistortion"
textValue54 = "hud_def_lensdistortion_subtle"
textValue = "id1_11_tunnel"
textValue2 = "impexp_interior_01_lift"
textValue3 = "int_Barber1"
textValue4 = "int_ClothesHi"
textValue5 = "int_ControlTower_none"
textValue6 = "int_ControlTower_small"
textValue7 = "int_Farmhouse_none"
textValue8 = "int_Farmhouse_small"
textValue9 = "int_FranklinAunt_small"
textValue10 = "int_GasStation"
textValue12 = "int_Hospital2_DM"
textValue13 = "int_Hospital_Blue"
textValue14 = "int_Hospital_BlueB"
textValue15 = "int_Hospital_DM"
textValue16 = "int_Lost_none"
textValue17 = "int_Lost_small"
textValue18 = "int_amb_mult_large"
textValue19 = "int_arena_01"
textValue20 = "int_arena_Mod"
textValue21 = "int_arena_Mod_garage"
textValue22 = "int_arena_VIP"
textValue23 = "int_carmod_small"
textValue24 = "int_carrier_control"
textValue25 = "int_carrier_control_2"
textValue26 = "int_carrier_hanger"
textValue27 = "int_carrier_rear"
textValue28 = "int_carrier_stair"
textValue29 = "int_carshowroom"
textValue30 = "int_chopshop"
textValue31 = "int_clean_extlight_large"
textValue32 = "int_clean_extlight_none"
textValue33 = "int_clean_extlight_small"
textValue34 = "int_clotheslow_large"
textValue35 = "int_cluckinfactory_none"
textValue36 = "int_cluckinfactory_small"
textValue37 = "int_dockcontrol_small"
textValue38 = "int_extlght_sm_cntrst"
textValue39 = "int_extlight_large"
textValue40 = "int_extlight_large_fog"
textValue41 = "int_extlight_none"
textValue45 = "int_extlight_none_dark"
textValue46 = "int_extlight_none_dark_fog"
textValue47 = "int_extlight_none_fog"
cmgCall[501] = rageUiCall
cmgCall[502] = textValue42
cmgCall[503] = textValue48
cmgCall[504] = rageUiCall2
cmgCall[505] = rageUiCall3
cmgCall[506] = rageUiCall4
cmgCall[507] = textValue54
cmgCall[508] = textValue
cmgCall[509] = textValue2
cmgCall[510] = textValue3
cmgCall[511] = textValue4
cmgCall[512] = textValue5
cmgCall[513] = textValue6
cmgCall[514] = textValue7
cmgCall[515] = textValue8
cmgCall[516] = textValue9
cmgCall[517] = textValue10
cmgCall[518] = textValue12
cmgCall[519] = textValue13
cmgCall[520] = textValue14
cmgCall[521] = textValue15
cmgCall[522] = textValue16
cmgCall[523] = textValue17
cmgCall[524] = textValue18
cmgCall[525] = textValue19
cmgCall[526] = textValue20
cmgCall[527] = textValue21
cmgCall[528] = textValue22
cmgCall[529] = textValue23
cmgCall[530] = textValue24
cmgCall[531] = textValue25
cmgCall[532] = textValue26
cmgCall[533] = textValue27
cmgCall[534] = textValue28
cmgCall[535] = textValue29
cmgCall[536] = textValue30
cmgCall[537] = textValue31
cmgCall[538] = textValue32
cmgCall[539] = textValue33
cmgCall[540] = textValue34
cmgCall[541] = textValue35
cmgCall[542] = textValue36
cmgCall[543] = textValue37
cmgCall[544] = textValue38
cmgCall[545] = textValue39
cmgCall[546] = textValue40
cmgCall[547] = textValue41
cmgCall[548] = textValue45
cmgCall[549] = textValue46
cmgCall[550] = textValue47
rageUiCall = "int_extlight_small"
textValue42 = "int_extlight_small_clipped"
textValue48 = "int_extlight_small_fog"
rageUiCall2 = "int_hanger_none"
rageUiCall3 = "int_hanger_small"
rageUiCall4 = "int_hospital_dark"
textValue54 = "int_hospital_small"
textValue = "int_lesters"
textValue2 = "int_methlab_small"
textValue3 = "int_motelroom"
textValue4 = "int_office_Lobby"
textValue5 = "int_office_LobbyHall"
textValue6 = "int_tattoo"
textValue7 = "int_tattoo_B"
textValue8 = "int_tunnel_none_dark"
textValue9 = "interior_WATER_lighting"
textValue10 = "introblue"
textValue12 = "jewel_gas"
textValue13 = "jewel_optim"
textValue14 = "jewelry_entrance"
textValue15 = "jewelry_entrance_INT"
textValue16 = "jewelry_entrance_INT_fog"
textValue17 = "lab_none"
textValue18 = "lab_none_dark"
textValue19 = "lab_none_dark_OVR"
textValue20 = "lab_none_dark_fog"
textValue21 = "lab_none_exit"
textValue22 = "lab_none_exit_OVR"
textValue23 = "li"
textValue24 = "lightning"
textValue25 = "lightning_cloud"
textValue26 = "lightning_strong"
textValue27 = "lightning_weak"
textValue28 = "lightpolution"
textValue29 = "lodscaler"
textValue30 = "maxlodscaler"
textValue31 = "metro"
textValue32 = "micheal"
textValue33 = "micheals_lightsOFF"
textValue34 = "michealspliff"
textValue35 = "michealspliff_blend"
textValue36 = "michealspliff_blend02"
textValue37 = "militarybase_nightlight"
textValue38 = "mineshaft"
textValue39 = "morebloom"
textValue40 = "morgue_dark"
textValue41 = "morgue_dark_ovr"
textValue45 = "mp_battle_int01"
textValue46 = "mp_battle_int01_dancefloor"
textValue47 = "mp_battle_int01_dancefloor_OFF"
cmgCall[551] = rageUiCall
cmgCall[552] = textValue42
cmgCall[553] = textValue48
cmgCall[554] = rageUiCall2
cmgCall[555] = rageUiCall3
cmgCall[556] = rageUiCall4
cmgCall[557] = textValue54
cmgCall[558] = textValue
cmgCall[559] = textValue2
cmgCall[560] = textValue3
cmgCall[561] = textValue4
cmgCall[562] = textValue5
cmgCall[563] = textValue6
cmgCall[564] = textValue7
cmgCall[565] = textValue8
cmgCall[566] = textValue9
cmgCall[567] = textValue10
cmgCall[568] = textValue12
cmgCall[569] = textValue13
cmgCall[570] = textValue14
cmgCall[571] = textValue15
cmgCall[572] = textValue16
cmgCall[573] = textValue17
cmgCall[574] = textValue18
cmgCall[575] = textValue19
cmgCall[576] = textValue20
cmgCall[577] = textValue21
cmgCall[578] = textValue22
cmgCall[579] = textValue23
cmgCall[580] = textValue24
cmgCall[581] = textValue25
cmgCall[582] = textValue26
cmgCall[583] = textValue27
cmgCall[584] = textValue28
cmgCall[585] = textValue29
cmgCall[586] = textValue30
cmgCall[587] = textValue31
cmgCall[588] = textValue32
cmgCall[589] = textValue33
cmgCall[590] = textValue34
cmgCall[591] = textValue35
cmgCall[592] = textValue36
cmgCall[593] = textValue37
cmgCall[594] = textValue38
cmgCall[595] = textValue39
cmgCall[596] = textValue40
cmgCall[597] = textValue41
cmgCall[598] = textValue45
cmgCall[599] = textValue46
cmgCall[600] = textValue47
rageUiCall = "mp_battle_int01_entry"
textValue42 = "mp_battle_int01_garage"
textValue48 = "mp_battle_int01_office"
rageUiCall2 = "mp_battle_int02"
rageUiCall3 = "mp_battle_int03"
rageUiCall4 = "mp_battle_int03_tint1"
textValue54 = "mp_battle_int03_tint2"
textValue = "mp_battle_int03_tint3"
textValue2 = "mp_battle_int03_tint4"
textValue3 = "mp_battle_int03_tint5"
textValue4 = "mp_battle_int03_tint6"
textValue5 = "mp_battle_int03_tint7"
textValue6 = "mp_battle_int03_tint8"
textValue7 = "mp_battle_int03_tint9"
textValue8 = "mp_bkr_int01_garage"
textValue9 = "mp_bkr_int01_small_rooms"
textValue10 = "mp_bkr_int01_transition"
textValue12 = "mp_bkr_int02_garage"
textValue13 = "mp_bkr_int02_hangout"
textValue14 = "mp_bkr_int02_small_rooms"
textValue15 = "mp_bkr_ware01"
textValue16 = "mp_bkr_ware02_dry"
textValue17 = "mp_bkr_ware02_standard"
textValue18 = "mp_bkr_ware02_upgrade"
textValue19 = "mp_bkr_ware03_basic"
textValue20 = "mp_bkr_ware03_upgrade"
textValue21 = "mp_bkr_ware04"
textValue22 = "mp_bkr_ware05"
textValue23 = "mp_exec_office_01"
textValue24 = "mp_exec_office_02"
textValue25 = "mp_exec_office_03"
textValue26 = "mp_exec_office_03C"
textValue27 = "mp_exec_office_03_blue"
textValue28 = "mp_exec_office_04"
textValue29 = "mp_exec_office_05"
textValue30 = "mp_exec_office_06"
textValue31 = "mp_exec_warehouse_01"
textValue32 = "mp_gr_int01_black"
textValue33 = "mp_gr_int01_grey"
textValue34 = "mp_gr_int01_white"
textValue35 = "mp_h_05"
textValue36 = "mp_h_07"
textValue37 = "mp_h_08"
textValue38 = "mp_imx_intwaremed"
textValue39 = "mp_imx_intwaremed_office"
textValue40 = "mp_imx_mod_int_01"
textValue41 = "mp_lad_day"
textValue45 = "mp_lad_judgment"
textValue46 = "mp_lad_night"
textValue47 = "mp_nightshark_shield_fp"
cmgCall[601] = rageUiCall
cmgCall[602] = textValue42
cmgCall[603] = textValue48
cmgCall[604] = rageUiCall2
cmgCall[605] = rageUiCall3
cmgCall[606] = rageUiCall4
cmgCall[607] = textValue54
cmgCall[608] = textValue
cmgCall[609] = textValue2
cmgCall[610] = textValue3
cmgCall[611] = textValue4
cmgCall[612] = textValue5
cmgCall[613] = textValue6
cmgCall[614] = textValue7
cmgCall[615] = textValue8
cmgCall[616] = textValue9
cmgCall[617] = textValue10
cmgCall[618] = textValue12
cmgCall[619] = textValue13
cmgCall[620] = textValue14
cmgCall[621] = textValue15
cmgCall[622] = textValue16
cmgCall[623] = textValue17
cmgCall[624] = textValue18
cmgCall[625] = textValue19
cmgCall[626] = textValue20
cmgCall[627] = textValue21
cmgCall[628] = textValue22
cmgCall[629] = textValue23
cmgCall[630] = textValue24
cmgCall[631] = textValue25
cmgCall[632] = textValue26
cmgCall[633] = textValue27
cmgCall[634] = textValue28
cmgCall[635] = textValue29
cmgCall[636] = textValue30
cmgCall[637] = textValue31
cmgCall[638] = textValue32
cmgCall[639] = textValue33
cmgCall[640] = textValue34
cmgCall[641] = textValue35
cmgCall[642] = textValue36
cmgCall[643] = textValue37
cmgCall[644] = textValue38
cmgCall[645] = textValue39
cmgCall[646] = textValue40
cmgCall[647] = textValue41
cmgCall[648] = textValue45
cmgCall[649] = textValue46
cmgCall[650] = textValue47
rageUiCall = "mp_smg_int01_han"
textValue42 = "mp_smg_int01_han_blue"
textValue48 = "mp_smg_int01_han_red"
rageUiCall2 = "mp_smg_int01_han_yellow"
rageUiCall3 = "mp_x17dlc_base"
rageUiCall4 = "mp_x17dlc_base_dark"
textValue54 = "mp_x17dlc_base_darkest"
textValue = "mp_x17dlc_facility"
textValue2 = "mp_x17dlc_facility2"
textValue3 = "mp_x17dlc_facility_conference"
textValue4 = "mp_x17dlc_in_sub"
textValue5 = "mp_x17dlc_in_sub_no_reflection"
textValue6 = "mp_x17dlc_int_01"
textValue7 = "mp_x17dlc_int_01_tint1"
textValue8 = "mp_x17dlc_int_01_tint2"
textValue9 = "mp_x17dlc_int_01_tint3"
textValue10 = "mp_x17dlc_int_01_tint4"
textValue12 = "mp_x17dlc_int_01_tint5"
textValue13 = "mp_x17dlc_int_01_tint6"
textValue14 = "mp_x17dlc_int_01_tint7"
textValue15 = "mp_x17dlc_int_01_tint8"
textValue16 = "mp_x17dlc_int_01_tint9"
textValue17 = "mp_x17dlc_int_02"
textValue18 = "mp_x17dlc_int_02_hangar"
textValue19 = "mp_x17dlc_int_02_outdoor_intro_camera"
textValue20 = "mp_x17dlc_int_02_tint1"
textValue21 = "mp_x17dlc_int_02_tint2"
textValue22 = "mp_x17dlc_int_02_tint3"
textValue23 = "mp_x17dlc_int_02_tint4"
textValue24 = "mp_x17dlc_int_02_tint5"
textValue25 = "mp_x17dlc_int_02_tint6"
textValue26 = "mp_x17dlc_int_02_tint7"
textValue27 = "mp_x17dlc_int_02_tint8"
textValue28 = "mp_x17dlc_int_02_tint9"
textValue29 = "mp_x17dlc_int_02_vehicle_avenger_camera"
textValue30 = "mp_x17dlc_int_02_vehicle_workshop_camera"
textValue31 = "mp_x17dlc_int_02_weapon_avenger_camera"
textValue32 = "mp_x17dlc_int_silo"
textValue33 = "mp_x17dlc_int_silo_escape"
textValue34 = "mp_x17dlc_lab"
textValue35 = "mp_x17dlc_lab_loading_bay"
textValue36 = "mugShot"
textValue37 = "mugShot_lineup"
textValue38 = "multiplayer_ped_fight"
textValue39 = "nervousRON_fog"
textValue40 = "new_MP_Garage_L"
textValue41 = "new_bank"
textValue45 = "new_stripper_changing"
textValue46 = "new_tunnels_entrance"
textValue47 = "nextgen"
cmgCall[651] = rageUiCall
cmgCall[652] = textValue42
cmgCall[653] = textValue48
cmgCall[654] = rageUiCall2
cmgCall[655] = rageUiCall3
cmgCall[656] = rageUiCall4
cmgCall[657] = textValue54
cmgCall[658] = textValue
cmgCall[659] = textValue2
cmgCall[660] = textValue3
cmgCall[661] = textValue4
cmgCall[662] = textValue5
cmgCall[663] = textValue6
cmgCall[664] = textValue7
cmgCall[665] = textValue8
cmgCall[666] = textValue9
cmgCall[667] = textValue10
cmgCall[668] = textValue12
cmgCall[669] = textValue13
cmgCall[670] = textValue14
cmgCall[671] = textValue15
cmgCall[672] = textValue16
cmgCall[673] = textValue17
cmgCall[674] = textValue18
cmgCall[675] = textValue19
cmgCall[676] = textValue20
cmgCall[677] = textValue21
cmgCall[678] = textValue22
cmgCall[679] = textValue23
cmgCall[680] = textValue24
cmgCall[681] = textValue25
cmgCall[682] = textValue26
cmgCall[683] = textValue27
cmgCall[684] = textValue28
cmgCall[685] = textValue29
cmgCall[686] = textValue30
cmgCall[687] = textValue31
cmgCall[688] = textValue32
cmgCall[689] = textValue33
cmgCall[690] = textValue34
cmgCall[691] = textValue35
cmgCall[692] = textValue36
cmgCall[693] = textValue37
cmgCall[694] = textValue38
cmgCall[695] = textValue39
cmgCall[696] = textValue40
cmgCall[697] = textValue41
cmgCall[698] = textValue45
cmgCall[699] = textValue46
cmgCall[700] = textValue47
rageUiCall = "nightvision"
textValue42 = "overwater"
textValue48 = "paleto_nightlight"
rageUiCall2 = "paleto_opt"
rageUiCall3 = "phone_cam"
rageUiCall4 = "phone_cam1"
textValue54 = "phone_cam10"
textValue = "phone_cam11"
textValue2 = "phone_cam12"
textValue3 = "phone_cam13"
textValue4 = "phone_cam2"
textValue5 = "phone_cam3"
textValue6 = "phone_cam3_REMOVED"
textValue7 = "phone_cam4"
textValue8 = "phone_cam5"
textValue9 = "phone_cam6"
textValue10 = "phone_cam7"
textValue12 = "phone_cam8"
textValue13 = "phone_cam8_REMOVED"
textValue14 = "phone_cam9"
textValue15 = "plane_inside_mode"
textValue16 = "player_transition"
textValue17 = "player_transition_no_scanlines"
textValue18 = "player_transition_scanlines"
textValue19 = "plaza_carpark"
textValue20 = "polluted"
textValue21 = "poolsidewaterreflection2"
textValue22 = "powerplant_nightlight"
textValue23 = "powerstation"
textValue24 = "prison_nightlight"
textValue25 = "projector"
textValue26 = "prologue"
textValue27 = "prologue_ending_fog"
textValue28 = "prologue_ext_art_amb"
textValue29 = "prologue_reflection_opt"
textValue30 = "prologue_shootout"
textValue31 = "pulse"
textValue32 = "ranch"
textValue33 = "reducelightingcost"
textValue34 = "reducewaterREF"
textValue35 = "refit"
textValue36 = "reflection_correct_ambient"
textValue37 = "resvoire_reflection"
textValue38 = "rply_brightness"
textValue39 = "rply_brightness_neg"
textValue40 = "rply_contrast"
textValue41 = "rply_contrast_neg"
textValue45 = "rply_motionblur"
textValue46 = "rply_saturation"
textValue47 = "rply_saturation_neg"
cmgCall[701] = rageUiCall
cmgCall[702] = textValue42
cmgCall[703] = textValue48
cmgCall[704] = rageUiCall2
cmgCall[705] = rageUiCall3
cmgCall[706] = rageUiCall4
cmgCall[707] = textValue54
cmgCall[708] = textValue
cmgCall[709] = textValue2
cmgCall[710] = textValue3
cmgCall[711] = textValue4
cmgCall[712] = textValue5
cmgCall[713] = textValue6
cmgCall[714] = textValue7
cmgCall[715] = textValue8
cmgCall[716] = textValue9
cmgCall[717] = textValue10
cmgCall[718] = textValue12
cmgCall[719] = textValue13
cmgCall[720] = textValue14
cmgCall[721] = textValue15
cmgCall[722] = textValue16
cmgCall[723] = textValue17
cmgCall[724] = textValue18
cmgCall[725] = textValue19
cmgCall[726] = textValue20
cmgCall[727] = textValue21
cmgCall[728] = textValue22
cmgCall[729] = textValue23
cmgCall[730] = textValue24
cmgCall[731] = textValue25
cmgCall[732] = textValue26
cmgCall[733] = textValue27
cmgCall[734] = textValue28
cmgCall[735] = textValue29
cmgCall[736] = textValue30
cmgCall[737] = textValue31
cmgCall[738] = textValue32
cmgCall[739] = textValue33
cmgCall[740] = textValue34
cmgCall[741] = textValue35
cmgCall[742] = textValue36
cmgCall[743] = textValue37
cmgCall[744] = textValue38
cmgCall[745] = textValue39
cmgCall[746] = textValue40
cmgCall[747] = textValue41
cmgCall[748] = textValue45
cmgCall[749] = textValue46
cmgCall[750] = textValue47
rageUiCall = "rply_vignette"
textValue42 = "rply_vignette_neg"
textValue48 = "sandyshore_nightlight"
rageUiCall2 = "scanline_cam"
rageUiCall3 = "scanline_cam_cheap"
rageUiCall4 = "scope_zoom_in"
textValue54 = "scope_zoom_out"
textValue = "secret_camera"
textValue2 = "services_nightlight"
textValue3 = "shades_pink"
textValue4 = "shades_yellow"
textValue5 = "ship_explosion_underwater"
textValue6 = "ship_lighting"
textValue7 = "sleeping"
textValue8 = "spectator1"
textValue9 = "spectator10"
textValue10 = "spectator2"
textValue12 = "spectator3"
textValue13 = "spectator4"
textValue14 = "spectator5"
textValue15 = "spectator6"
textValue16 = "spectator7"
textValue17 = "spectator8"
textValue18 = "spectator9"
textValue19 = "stc_coroners"
textValue20 = "stc_deviant_bedroom"
textValue21 = "stc_deviant_lounge"
textValue22 = "stc_franklinsHouse"
textValue23 = "stc_trevors"
textValue24 = "stoned"
textValue25 = "stoned_aliens"
textValue26 = "stoned_cutscene"
textValue27 = "stoned_monkeys"
textValue28 = "subBASE_water_ref"
textValue29 = "sunglasses"
textValue30 = "superDARK"
textValue31 = "switch_cam_1"
textValue32 = "switch_cam_2"
textValue33 = "telescope"
textValue34 = "torpedo"
textValue35 = "traffic_skycam"
textValue36 = "trailer_explosion_optimise"
textValue37 = "trevorspliff"
textValue38 = "trevorspliff_blend"
textValue39 = "trevorspliff_blend02"
textValue40 = "tunnel_entrance"
textValue41 = "tunnel_entrance_INT"
textValue45 = "tunnel_id1_11"
textValue46 = "ufo"
textValue47 = "ufo_deathray"
cmgCall[751] = rageUiCall
cmgCall[752] = textValue42
cmgCall[753] = textValue48
cmgCall[754] = rageUiCall2
cmgCall[755] = rageUiCall3
cmgCall[756] = rageUiCall4
cmgCall[757] = textValue54
cmgCall[758] = textValue
cmgCall[759] = textValue2
cmgCall[760] = textValue3
cmgCall[761] = textValue4
cmgCall[762] = textValue5
cmgCall[763] = textValue6
cmgCall[764] = textValue7
cmgCall[765] = textValue8
cmgCall[766] = textValue9
cmgCall[767] = textValue10
cmgCall[768] = textValue12
cmgCall[769] = textValue13
cmgCall[770] = textValue14
cmgCall[771] = textValue15
cmgCall[772] = textValue16
cmgCall[773] = textValue17
cmgCall[774] = textValue18
cmgCall[775] = textValue19
cmgCall[776] = textValue20
cmgCall[777] = textValue21
cmgCall[778] = textValue22
cmgCall[779] = textValue23
cmgCall[780] = textValue24
cmgCall[781] = textValue25
cmgCall[782] = textValue26
cmgCall[783] = textValue27
cmgCall[784] = textValue28
cmgCall[785] = textValue29
cmgCall[786] = textValue30
cmgCall[787] = textValue31
cmgCall[788] = textValue32
cmgCall[789] = textValue33
cmgCall[790] = textValue34
cmgCall[791] = textValue35
cmgCall[792] = textValue36
cmgCall[793] = textValue37
cmgCall[794] = textValue38
cmgCall[795] = textValue39
cmgCall[796] = textValue40
cmgCall[797] = textValue41
cmgCall[798] = textValue45
cmgCall[799] = textValue46
cmgCall[800] = textValue47
rageUiCall = "underwater"
textValue42 = "underwater_deep"
textValue48 = "underwater_deep_clear"
rageUiCall2 = "v_abattoir"
rageUiCall3 = "v_bahama"
rageUiCall4 = "v_cashdepot"
textValue54 = "v_dark"
textValue = "v_foundry"
textValue2 = "v_janitor"
textValue3 = "v_jewel2"
textValue4 = "v_metro"
textValue5 = "v_michael"
textValue6 = "v_michael_lounge"
textValue7 = "v_recycle"
textValue8 = "v_rockclub"
textValue9 = "v_strip3"
textValue10 = "v_strpchangerm"
textValue12 = "v_sweat"
textValue13 = "v_sweat_NoDirLight"
textValue14 = "v_sweat_entrance"
textValue15 = "v_torture"
textValue16 = "vagos_extlight_small"
textValue17 = "vehicle_subint"
textValue18 = "venice_canal_tunnel"
textValue19 = "vespucci_garage"
textValue20 = "warehouse"
textValue21 = "whitenightlighting"
textValue22 = "winning_room"
textValue23 = "yacht_DLC"
textValue24 = "yell_tunnel_nodirect"
cmgCall[801] = rageUiCall
cmgCall[802] = textValue42
cmgCall[803] = textValue48
cmgCall[804] = rageUiCall2
cmgCall[805] = rageUiCall3
cmgCall[806] = rageUiCall4
cmgCall[807] = textValue54
cmgCall[808] = textValue
cmgCall[809] = textValue2
cmgCall[810] = textValue3
cmgCall[811] = textValue4
cmgCall[812] = textValue5
cmgCall[813] = textValue6
cmgCall[814] = textValue7
cmgCall[815] = textValue8
cmgCall[816] = textValue9
cmgCall[817] = textValue10
cmgCall[818] = textValue12
cmgCall[819] = textValue13
cmgCall[820] = textValue14
cmgCall[821] = textValue15
cmgCall[822] = textValue16
cmgCall[823] = textValue17
cmgCall[824] = textValue18
cmgCall[825] = textValue19
cmgCall[826] = textValue20
cmgCall[827] = textValue21
cmgCall[828] = textValue22
cmgCall[829] = textValue23
cmgCall[830] = textValue24
rageUiCall = 1
textValue42 = {}
textValue48 = 0.1
rageUiCall2 = 2.0
rageUiCall3 = 0.1
for rageUiCall4 = textValue48, rageUiCall2, rageUiCall3 do
  textValue54 = _ENV
  textValue = "table"
  textValue54 = textValue54[textValue]
  textValue = "insert"
  textValue54 = textValue54[textValue]
  textValue = textValue42
  textValue2 = rageUiCall4
  textValue54(textValue, textValue2)
end
textValue48 = {}
rageUiCall2 = "DEATH_FAIL_IN_EFFECT_SHAKE"
rageUiCall3 = "DRUNK_SHAKE"
rageUiCall4 = "FAMILY5_DRUG_TRIP_SHAKE"
textValue54 = "HAND_SHAKE"
textValue = "JOLT_SHAKE"
textValue2 = "LARGE_EXPLOSION_SHAKE"
textValue3 = "MEDIUM_EXPLOSION_SHAKE"
textValue4 = "SMALL_EXPLOSION_SHAKE"
textValue5 = "ROAD_VIBRATION_SHAKE"
textValue6 = "SKY_DIVING_SHAKE"
textValue7 = "VIBRATE_SHAKE"
textValue8 = "KILL_SHOT_SHAKE"
textValue48[1] = rageUiCall2
textValue48[2] = rageUiCall3
textValue48[3] = rageUiCall4
textValue48[4] = textValue54
textValue48[5] = textValue
textValue48[6] = textValue2
textValue48[7] = textValue3
textValue48[8] = textValue4
textValue48[9] = textValue5
textValue48[10] = textValue6
textValue48[11] = textValue7
textValue48[12] = textValue8
rageUiCall2 = {}
rageUiCall3 = 1
rageUiCall4 = 135
textValue54 = 1
for textValue = rageUiCall3, rageUiCall4, textValue54 do
  textValue2 = _ENV
  textValue3 = "table"
  textValue2 = textValue2[textValue3]
  textValue3 = "insert"
  textValue2 = textValue2[textValue3]
  textValue3 = rageUiCall2
  textValue4 = textValue
  textValue2(textValue3, textValue4)
end
rageUiCall3 = {}
rageUiCall4 = "Static Camera"
textValue54 = "Interpolation Camera"
rageUiCall3[1] = rageUiCall4
rageUiCall3[2] = textValue54
rageUiCall4 = {}
textValue54 = "Curved"
textValue = "Smooth"
rageUiCall4[1] = textValue54
rageUiCall4[2] = textValue
textValue54 = {}
textValue = "Smooth"
textValue2 = 0
textValue54[textValue] = textValue2
textValue = "Curved"
textValue2 = 5
textValue54[textValue] = textValue2
textValue = {}
textValue2 = ""
textValue3 = false
textValue4 = 0
textValue5 = 1
textValue6 = nil
textValue7 = nil
textValue8 = nil
textValue9 = ""
textValue10 = 1
textValue12 = 1
textValue13 = ""
textValue14 = nil
textValue15 = 1
textValue16 = false
textValue17 = {}
textValue18 = 0
textValue19 = 0
textValue20 = 23
textValue21 = 1
for textValue22 = textValue19, textValue20, textValue21 do
  textValue17[textValue22] = textValue22
end
textValue19 = {}
textValue20 = 0
textValue21 = 59
textValue22 = 1
for textValue23 = textValue20, textValue21, textValue22 do
  textValue19[textValue23] = textValue23
end
textValue20 = 0
textValue21 = {}
textValue22 = 0
textValue23 = 59
textValue24 = 1
for textValue25 = textValue22, textValue23, textValue24 do
  textValue21[textValue25] = textValue25
end
textValue22 = 0
textValue23 = {}
textValue24 = 1
textValue25 = 300
textValue26 = 1
for textValue27 = textValue24, textValue25, textValue26 do
  textValue28 = textValue27 - 1
  textValue29 = 10
  textValue28 = textValue28 * textValue29
  textValue29 = 0.001
  textValue28 = textValue28 + textValue29
  textValue23[textValue27] = textValue28
end
textValue24 = 1
textValue25 = 1
textValue26 = 1
textValue27 = 1
textValue28 = {}
textValue29 = "EXTRASUNNY"
textValue30 = "CLEAR"
textValue31 = "NEUTRAL"
textValue32 = "SMOG"
textValue33 = "FOGGY"
textValue34 = "OVERCAST"
textValue35 = "CLOUDS"
textValue36 = "CLEARING"
textValue37 = "RAIN"
textValue38 = "THUNDER"
textValue39 = "SNOW"
textValue40 = "BLIZZARD"
textValue41 = "SNOWLIGHT"
textValue45 = "XMAS"
textValue46 = "HALLOWEEN"
textValue28[1] = textValue29
textValue28[2] = textValue30
textValue28[3] = textValue31
textValue28[4] = textValue32
textValue28[5] = textValue33
textValue28[6] = textValue34
textValue28[7] = textValue35
textValue28[8] = textValue36
textValue28[9] = textValue37
textValue28[10] = textValue38
textValue28[11] = textValue39
textValue28[12] = textValue40
textValue28[13] = textValue41
textValue28[14] = textValue45
textValue28[15] = textValue46
textValue29 = 1
textValue30 = nil
textValue31 = _ENV
textValue32 = "Citizen"
textValue31 = textValue31[textValue32]
textValue32 = "CreateThread"
textValue31 = textValue31[textValue32]

-- === HELPER FUNCTION (decompiler name: textValue32; parameters: none) ===
function textValue32()
  local arg1, arg2, arg3
  arg1 = json
  arg1 = arg1.decode
  arg2 = GetResourceKvpString
  arg3 = "cmg_scenedata"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = "{}"
  end
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = {}
  end
  textValue = arg1
end
textValue31(textValue32)
textValue31 = _ENV
textValue32 = "RegisterNetEvent"
textValue31 = textValue31[textValue32]
textValue32 = "7d4716cb33"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: none) ===
function textValue33()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.getPlayerCombatTimer
  arg1 = arg1()
  if 0 == arg1 then
    arg1 = workValue
    arg2 = true
    arg1(arg2)
  end
end
textValue31(textValue32, textValue33)
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "createCinematicScene"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1) ===
function textValue33(arg1)
  local arg2, arg3, arg4, textValue43
  arg2 = textValue
  arg3 = {}
  arg2[arg1] = arg3
  arg2 = SetResourceKvp
  arg3 = "cmg_scenedata"
  arg4 = json
  arg4 = arg4.encode
  textValue43 = textValue
  arg4, textValue43 = arg4(textValue43)
  arg2(arg3, arg4, textValue43)
  arg2 = tCMG
  arg2 = arg2.notify
  arg3 = "~g~Scene created & saved."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "deleteCinematicScene"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1) ===
function textValue33(arg1)
  local arg2, arg3, arg4, textValue43
  arg2 = textValue
  arg2[arg1] = nil
  arg2 = SetResourceKvp
  arg3 = "cmg_scenedata"
  arg4 = json
  arg4 = arg4.encode
  textValue43 = textValue
  arg4, textValue43 = arg4(textValue43)
  arg2(arg3, arg4, textValue43)
  arg2 = tCMG
  arg2 = arg2.notify
  arg3 = "~g~Scene deleted & saved."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "createCamera"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1, arg2) ===
function textValue33(arg1, arg2)
  local arg3, arg4, textValue43, textValue49
  arg3 = textValue
  arg3 = arg3[arg1]
  arg3 = #arg3
  if 0 == arg3 then
    arg2.transition = 100
  end
  arg3 = table
  arg3 = arg3.insert
  arg4 = textValue
  arg4 = arg4[arg1]
  textValue43 = arg2
  arg3(arg4, textValue43)
  arg3 = textValue
  arg3 = arg3[arg1]
  arg3 = #arg3
  textValue5 = arg3
  arg4 = textValue2
  arg3 = textValue
  arg3 = arg3[arg4]
  arg4 = textValue5
  arg3 = arg3[arg4]
  arg3 = arg3.type
  if "Static Camera" == arg3 then
    arg3 = 1
    textValue10 = arg3
  else
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg4 = textValue5
    arg3 = arg3[arg4]
    arg3 = arg3.type
    if "Interpolation Camera" == arg3 then
      arg3 = 2
      textValue10 = arg3
    end
  end
  arg4 = textValue2
  arg3 = textValue
  arg3 = arg3[arg4]
  arg4 = textValue5
  arg3 = arg3[arg4]
  arg3 = arg3.blending
  if 0 == arg3 then
    arg3 = 2
    textValue12 = arg3
  else
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg4 = textValue5
    arg3 = arg3[arg4]
    arg3 = arg3.blending
    if 5 == arg3 then
      arg3 = 1
      textValue12 = arg3
    end
  end
  arg3 = SetResourceKvp
  arg4 = "cmg_scenedata"
  textValue43 = json
  textValue43 = textValue43.encode
  textValue49 = textValue
  textValue43, textValue49 = textValue43(textValue49)
  arg3(arg4, textValue43, textValue49)
  arg3 = tCMG
  arg3 = arg3.notify
  arg4 = "~g~Camera created & saved."
  -- Beginner: Show a notification to the player.
  arg3(arg4)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "modifyCamera"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1, arg2, arg3) ===
function textValue33(arg1, arg2, arg3)
  local arg4, textValue43, textValue49, workValue10
  arg4 = textValue
  arg4 = arg4[arg1]
  arg4[arg3] = arg2
  arg4 = SetResourceKvp
  textValue43 = "cmg_scenedata"
  textValue49 = json
  textValue49 = textValue49.encode
  workValue10 = textValue
  textValue49, workValue10 = textValue49(workValue10)
  arg4(textValue43, textValue49, workValue10)
  arg4 = tCMG
  arg4 = arg4.notify
  textValue43 = "~g~Camera modified & saved."
  -- Beginner: Show a notification to the player.
  arg4(textValue43)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "deleteCamera"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1, arg2) ===
function textValue33(arg1, arg2)
  local arg3, arg4, textValue43, textValue49
  arg3 = table
  arg3 = arg3.remove
  arg4 = textValue
  arg4 = arg4[arg1]
  textValue43 = arg2
  arg3(arg4, textValue43)
  arg3 = SetResourceKvp
  arg4 = "cmg_scenedata"
  textValue43 = json
  textValue43 = textValue43.encode
  textValue49 = textValue
  textValue43, textValue49 = textValue43(textValue49)
  arg3(arg4, textValue43, textValue49)
  arg3 = tCMG
  arg3 = arg3.notify
  arg4 = "~g~Camera deleted & saved."
  -- Beginner: Show a notification to the player.
  arg3(arg4)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "modifyTransition"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1, arg2, arg3) ===
function textValue33(arg1, arg2, arg3)
  local arg4, textValue43, textValue49, workValue10
  arg4 = textValue
  arg4 = arg4[arg1]
  arg4 = arg4[arg2]
  textValue43 = tonumber
  textValue49 = arg3
  textValue43 = textValue43(textValue49)
  arg4.transition = textValue43
  arg4 = SetResourceKvp
  textValue43 = "cmg_scenedata"
  textValue49 = json
  textValue49 = textValue49.encode
  workValue10 = textValue
  textValue49, workValue10 = textValue49(workValue10)
  arg4(textValue43, textValue49, workValue10)
  arg4 = tCMG
  arg4 = arg4.notify
  textValue43 = "~g~Transition change saved."
  -- Beginner: Show a notification to the player.
  arg4(textValue43)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "modifyCameraBlending"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1, arg2, arg3) ===
function textValue33(arg1, arg2, arg3)
  local arg4, textValue43, textValue49, workValue10
  arg4 = textValue
  arg4 = arg4[arg1]
  arg4 = arg4[arg2]
  textValue43 = textValue54
  textValue43 = textValue43[arg3]
  arg4.blending = textValue43
  arg4 = SetResourceKvp
  textValue43 = "cmg_scenedata"
  textValue49 = json
  textValue49 = textValue49.encode
  workValue10 = textValue
  textValue49, workValue10 = textValue49(workValue10)
  arg4(textValue43, textValue49, workValue10)
  arg4 = tCMG
  arg4 = arg4.notify
  textValue43 = "~g~Camera Blending change saved."
  -- Beginner: Show a notification to the player.
  arg4(textValue43)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "modifyScreeneffect"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1, arg2, arg3) ===
function textValue33(arg1, arg2, arg3)
  local arg4, textValue43, textValue49, workValue10
  arg4 = textValue
  arg4 = arg4[arg1]
  arg4 = arg4[arg2]
  arg4.screeneffect = arg3
  arg4 = SetResourceKvp
  textValue43 = "cmg_scenedata"
  textValue49 = json
  textValue49 = textValue49.encode
  workValue10 = textValue
  textValue49, workValue10 = textValue49(workValue10)
  arg4(textValue43, textValue49, workValue10)
  arg4 = tCMG
  arg4 = arg4.notify
  textValue43 = "~g~Screeneffect change saved."
  -- Beginner: Show a notification to the player.
  arg4(textValue43)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "modifyTimecycleEffect"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1, arg2, arg3) ===
function textValue33(arg1, arg2, arg3)
  local arg4, textValue43, textValue49, workValue10
  arg4 = textValue
  arg4 = arg4[arg1]
  arg4 = arg4[arg2]
  arg4.timecycleEffect = arg3
  arg4 = SetResourceKvp
  textValue43 = "cmg_scenedata"
  textValue49 = json
  textValue49 = textValue49.encode
  workValue10 = textValue
  textValue49, workValue10 = textValue49(workValue10)
  arg4(textValue43, textValue49, workValue10)
  arg4 = tCMG
  arg4 = arg4.notify
  textValue43 = "~g~Timecycle Effect change saved."
  -- Beginner: Show a notification to the player.
  arg4(textValue43)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "setTimecycleIntensity"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1, arg2, arg3) ===
function textValue33(arg1, arg2, arg3)
  local arg4, textValue43, textValue49, workValue10
  arg4 = textValue
  arg4 = arg4[arg1]
  arg4 = arg4[arg2]
  arg4.timecycleIntensity = arg3
  arg4 = SetResourceKvp
  textValue43 = "cmg_scenedata"
  textValue49 = json
  textValue49 = textValue49.encode
  workValue10 = textValue
  textValue49, workValue10 = textValue49(workValue10)
  arg4(textValue43, textValue49, workValue10)
  arg4 = tCMG
  arg4 = arg4.notify
  textValue43 = "~g~Timecycle intensity change saved."
  -- Beginner: Show a notification to the player.
  arg4(textValue43)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "modifyShakeEffect"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1, arg2, arg3) ===
function textValue33(arg1, arg2, arg3)
  local arg4, textValue43, textValue49, workValue10
  arg4 = textValue
  arg4 = arg4[arg1]
  arg4 = arg4[arg2]
  arg4.shake = arg3
  arg4 = SetResourceKvp
  textValue43 = "cmg_scenedata"
  textValue49 = json
  textValue49 = textValue49.encode
  workValue10 = textValue
  textValue49, workValue10 = textValue49(workValue10)
  arg4(textValue43, textValue49, workValue10)
  arg4 = tCMG
  arg4 = arg4.notify
  textValue43 = "~g~Shake change saved."
  -- Beginner: Show a notification to the player.
  arg4(textValue43)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "modifyCameraType"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1, arg2, arg3) ===
function textValue33(arg1, arg2, arg3)
  local arg4, textValue43, textValue49, workValue10
  arg4 = textValue
  arg4 = arg4[arg1]
  arg4 = arg4[arg2]
  arg4.type = arg3
  arg4 = SetResourceKvp
  textValue43 = "cmg_scenedata"
  textValue49 = json
  textValue49 = textValue49.encode
  workValue10 = textValue
  textValue49, workValue10 = textValue49(workValue10)
  arg4(textValue43, textValue49, workValue10)
  arg4 = tCMG
  arg4 = arg4.notify
  textValue43 = "~g~Camera type change saved."
  -- Beginner: Show a notification to the player.
  arg4(textValue43)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "addCameraFocus"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1, arg2, arg3, arg4) ===
function textValue33(arg1, arg2, arg3, arg4)
  local textValue43, textValue49, workValue10, flag9
  textValue43 = textValue
  textValue43 = textValue43[arg1]
  textValue43 = textValue43[arg2]
  textValue43.focusType = arg3
  textValue43 = textValue
  textValue43 = textValue43[arg1]
  textValue43 = textValue43[arg2]
  textValue43.focusData = arg4
  textValue43 = SetResourceKvp
  textValue49 = "cmg_scenedata"
  workValue10 = json
  workValue10 = workValue10.encode
  flag9 = textValue
  workValue10, flag9 = workValue10(flag9)
  textValue43(textValue49, workValue10, flag9)
  textValue43 = tCMG
  textValue43 = textValue43.notify
  textValue49 = "~g~Follow player change saved."
  -- Beginner: Show a notification to the player.
  textValue43(textValue49)
end
textValue31[textValue32] = textValue33
textValue31 = _ENV
textValue32 = "CMG"
textValue31 = textValue31[textValue32]
textValue32 = "setCameraFov"

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1, arg2) ===
function textValue33(arg1, arg2)
  local arg3, arg4, textValue43, textValue49
  arg3 = textValue
  arg3 = arg3[arg1]
  arg3 = arg3[arg2]
  textValue43 = textValue15
  arg4 = rageUiCall2
  arg4 = arg4[textValue43]
  arg3.fov = arg4
  arg3 = SetResourceKvp
  arg4 = "cmg_scenedata"
  textValue43 = json
  textValue43 = textValue43.encode
  textValue49 = textValue
  textValue43, textValue49 = textValue43(textValue49)
  arg3(arg4, textValue43, textValue49)
  arg3 = tCMG
  arg3 = arg3.notify
  arg4 = "~g~FOV change saved."
  -- Beginner: Show a notification to the player.
  arg3(arg4)
end
textValue31[textValue32] = textValue33

-- === HELPER FUNCTION (decompiler name: textValue31; parameters: arg1, arg2) ===
function textValue31(arg1, arg2)
  local arg3, arg4, textValue43
  arg3 = arg2.position
  if nil == arg3 then
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg3 = arg3[arg1]
    arg4 = GetEntityCoords
    textValue43 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    textValue43 = textValue43()
    -- Beginner: result below is entityCoords.
    arg4 = arg4(textValue43)
    arg3.position = arg4
  end
  arg3 = arg2.rotation
  if nil == arg3 then
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg3 = arg3[arg1]
    arg4 = GetGameplayCamRot
    textValue43 = 0
    arg4 = arg4(textValue43)
    arg3.rotation = arg4
  end
  arg3 = arg2.transition
  if nil == arg3 then
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg3 = arg3[arg1]
    arg3.transition = 5000
  end
  arg3 = arg2.type
  if nil == arg3 then
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg3 = arg3[arg1]
    arg4 = textValue9
    arg3.type = arg4
  end
  arg3 = arg2.screeneffect
  if nil == arg3 then
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg3 = arg3[arg1]
    arg3.screeneffect = ""
  end
  arg3 = arg2.timecycleEffect
  if nil == arg3 then
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg3 = arg3[arg1]
    arg3.timecycleEffect = ""
  end
  arg3 = arg2.timecycleIntensity
  if nil == arg3 then
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg3 = arg3[arg1]
    arg3.timecycleIntensity = 1.0
  end
  arg3 = arg2.focusType
  if nil == arg3 then
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg3 = arg3[arg1]
    arg3.focusType = ""
  end
  arg3 = arg2.focusData
  if nil == arg3 then
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg3 = arg3[arg1]
    arg3.focusData = 0
  end
  arg3 = arg2.shake
  if nil == arg3 then
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg3 = arg3[arg1]
    arg3.shake = ""
  end
  arg3 = arg2.fov
  if nil == arg3 then
    arg4 = textValue2
    arg3 = textValue
    arg3 = arg3[arg4]
    arg3 = arg3[arg1]
    arg3.fov = 65.0
  end
end

-- === HELPER FUNCTION (decompiler name: textValue32; parameters: none) ===
function textValue32()
  local arg1, arg2, arg3, arg4, textValue43, textValue49
  arg1 = textValue6
  if arg1 then
    arg1 = DestroyCam
    arg2 = textValue6
    arg3 = false
    arg1(arg2, arg3)
    arg1 = RenderScriptCams
    arg2 = false
    arg3 = false
    arg4 = 1
    textValue43 = true
    textValue49 = true
    arg1(arg2, arg3, arg4, textValue43, textValue49)
  end
  arg1 = ClearFocus
  arg1()
end

-- === HELPER FUNCTION (decompiler name: textValue33; parameters: arg1) ===
function textValue33(arg1)
  local arg2, arg3
  arg2 = Citizen
  arg2 = arg2.CreateThread

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local workValue2, flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue, flag2, numberValue2, flag3, numberValue3
    workValue2 = clearNativeText
    workValue2()
    workValue2 = textValue7
    if workValue2 then
      workValue2 = DestroyCam
      flag4 = textValue7
      flag5 = false
      workValue2(flag4, flag5)
      workValue2 = RenderScriptCams
      flag4 = false
      flag5 = false
      numberValue4 = 1
      flag6 = true
      flag7 = true
      workValue2(flag4, flag5, numberValue4, flag6, flag7)
    end
    workValue2 = DoesCamExist
    flag4 = textValue7
    workValue2 = workValue2(flag4)
    if not workValue2 then
      workValue2 = CreateCam
      flag4 = "DEFAULT_SCRIPTED_CAMERA"
      flag5 = true
      -- Beginner: result below is cameraHandle.
      workValue2 = workValue2(flag4, flag5)
      textValue7 = workValue2
      workValue2 = SetCamActive
      flag4 = textValue7
      flag5 = true
      workValue2(flag4, flag5)
      workValue2 = RenderScriptCams
      flag4 = true
      flag5 = true
      numberValue4 = 0
      flag6 = true
      flag7 = false
      workValue2(flag4, flag5, numberValue4, flag6, flag7)
    end
    workValue2 = print
    flag4 = "initiating render"
    workValue2(flag4)
    workValue2 = nil
    flag4 = pairs
    numberValue4 = arg1
    flag5 = textValue
    flag5 = flag5[numberValue4]
    flag4, flag5, numberValue4, flag6 = flag4(flag5)
    for flag7, flag8 in flag4, flag5, numberValue4, flag6 do
      workValue11 = CreateCameraWithParams
      textValue52 = "DEFAULT_SCRIPTED_CAMERA"
      flag14 = flag8.position
      flag14 = flag14.x
      position = flag8.position
      position = position.y
      position2 = flag8.position
      position2 = position2.z
      workValue7 = flag8.rotation
      workValue7 = workValue7.x
      numberValue = flag8.rotation
      numberValue = numberValue.y
      flag2 = flag8.rotation
      flag2 = flag2.z
      numberValue2 = flag8.fov
      if not numberValue2 then
        numberValue2 = 65.0
      end
      numberValue2 = numberValue2 + 0.001
      flag3 = false
      numberValue3 = 2
      workValue11 = workValue11(textValue52, flag14, position, position2, workValue7, numberValue, flag2, numberValue2, flag3, numberValue3)
      textValue14 = workValue11
      workValue11 = flag8.type
      if "Static Camera" == workValue11 then
        workValue11 = SetCamActive
        textValue52 = textValue14
        flag14 = true
        workValue11(textValue52, flag14)
      else
        workValue11 = flag8.type
        if "Interpolation Camera" == workValue11 then
          workValue11 = SetCamActiveWithInterp
          textValue52 = textValue14
          flag14 = workValue2
          position = flag8.transition
          position2 = flag8.blending
          if not position2 then
            position2 = 5
          end
          workValue7 = flag8.blending
          if not workValue7 then
            workValue7 = 5
          end
          workValue11(textValue52, flag14, position, position2, workValue7)
        end
      end
      workValue11 = flag8.focusType
      if "" ~= workValue11 then
        workValue11 = flag8.focusType
        if "player" == workValue11 then
          workValue11 = GetPlayerPed
          textValue52 = flag8.focusData
          -- Beginner: result below is playerPed.
          workValue11 = workValue11(textValue52)
          if workValue11 then
            textValue52 = PointCamAtEntity
            flag14 = textValue14
            position = workValue11
            position2 = 1
            workValue7 = 1
            numberValue = 1
            flag2 = true
            textValue52(flag14, position, position2, workValue7, numberValue, flag2)
          else
            textValue52 = print
            flag14 = "[CMG Cinematic] Failed to point cam at player, could not get entity."
            textValue52(flag14)
          end
        else
          workValue11 = flag8.focusType
          if "coord" == workValue11 then
            workValue11 = PointCamAtCoord
            textValue52 = textValue14
            flag14 = flag8.focusData
            flag14 = flag14.x
            position = flag8.focusData
            position = position.y
            position2 = flag8.focusData
            position2 = position2.z
            workValue11(textValue52, flag14, position, position2)
          end
        end
      end
      workValue11 = flag8.shake
      if "" ~= workValue11 then
        workValue11 = ShakeCam
        textValue52 = textValue14
        flag14 = flag8.shake
        position = 1.0
        workValue11(textValue52, flag14, position)
      end
      workValue11 = flag8.screeneffect
      if "Default" ~= workValue11 then
        workValue11 = flag8.screeneffect
        if "" ~= workValue11 then
          workValue11 = AnimpostfxPlay
          textValue52 = flag8.screeneffect
          flag14 = flag8.transition
          position = false
          workValue11(textValue52, flag14, position)
        end
      end
      workValue11 = flag8.timecycleEffect
      if "Default" ~= workValue11 then
        workValue11 = flag8.timecycleEffect
        if "" ~= workValue11 then
          workValue11 = SetTimecycleModifier
          textValue52 = flag8.timecycleEffect
          workValue11(textValue52)
          workValue11 = SetTimecycleModifierStrength
          textValue52 = flag8.timecycleIntensity
          workValue11(textValue52)
        end
      end
      workValue2 = textValue14
      workValue11 = Wait
      textValue52 = flag8.transition
      workValue11(textValue52)
      workValue11 = AnimpostfxStopAll
      workValue11()
      workValue11 = ClearTimecycleModifier
      workValue11()
    end
    flag4 = DestroyCam
    flag5 = textValue14
    numberValue4 = false
    flag4(flag5, numberValue4)
    flag4 = RenderScriptCams
    flag5 = false
    numberValue4 = false
    flag6 = 1
    flag7 = true
    flag8 = true
    flag4(flag5, numberValue4, flag6, flag7, flag8)
    flag4 = nil
    textValue14 = flag4
    flag4 = DestroyCam
    flag5 = workValue2
    numberValue4 = false
    flag4(flag5, numberValue4)
    flag4 = RenderScriptCams
    flag5 = false
    numberValue4 = false
    flag6 = 1
    flag7 = true
    flag8 = true
    flag4(flag5, numberValue4, flag6, flag7, flag8)
    flag4 = ClearFocus
    flag4()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
textValue34 = _ENV
textValue35 = "RageUI"
textValue34 = textValue34[textValue35]
textValue35 = "CreateWhile"
textValue34 = textValue34[textValue35]
textValue35 = 1.0
textValue36 = _ENV
textValue37 = "RMenu"
textValue36 = textValue36[textValue37]
textValue38 = "Get"
textValue37 = textValue36
textValue36 = textValue36[textValue38]
textValue38 = "mainmenu"
textValue39 = "cinematic"
textValue36 = textValue36(textValue37, textValue38, textValue39)
textValue37 = nil

-- === HELPER FUNCTION (decompiler name: textValue38; parameters: none) ===
function textValue38()
  local arg1, arg2, arg3, arg4, textValue43, textValue49, workValue10
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "mainmenu"
  textValue43 = "cinematic"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue43)
  arg3 = true
  arg4 = true
  textValue43 = true

  -- === HELPER FUNCTION (decompiler name: textValue49; parameters: none) ===
  function textValue49()
    local workValue2, flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14
    workValue2 = CMG
    workValue2 = workValue2.getPlayerCombatTimer
    workValue2 = workValue2()
    if workValue2 > 0 then
      workValue2 = RageUI
      workValue2 = workValue2.CloseAll
      workValue2()
    end
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    flag4 = "Create Scene"
    flag5 = ""
    numberValue4 = {}
    numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
    function flag7(arg12, arg22, arg32)
      local arg42, cmgCall2, numberValue5
      if arg32 then
        arg42 = CMG
        arg42 = arg42.GetRageInputText
        cmgCall2 = "Scene Name"
        arg42 = arg42(cmgCall2)
        if "" ~= arg42 then
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.createCinematicScene
          numberValue5 = arg42
          cmgCall2(numberValue5)
        end
      end
    end
    flag8 = RMenu
    workValue11 = flag8
    flag8 = flag8.Get
    textValue52 = "mainmenu"
    flag14 = "cinematic"
    flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    flag4 = "Load Scene"
    flag5 = ""
    numberValue4 = {}
    numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
    function flag7(arg12, arg22, arg32)
    end
    flag8 = RMenu
    workValue11 = flag8
    flag8 = flag8.Get
    textValue52 = "load_scene"
    flag14 = "cinematic"
    flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    flag4 = "Weather/Time Editor"
    flag5 = ""
    numberValue4 = {}
    numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
    function flag7(arg12, arg22, arg32)
    end
    flag8 = RMenu
    workValue11 = flag8
    flag8 = flag8.Get
    textValue52 = "weather_time_manager"
    flag14 = "cinematic"
    flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    flag4 = "Delete Scene"
    flag5 = ""
    numberValue4 = {}
    numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
    function flag7(arg12, arg22, arg32)
      local arg42, cmgCall2, numberValue5
      if arg32 then
        arg42 = CMG
        arg42 = arg42.GetRageInputText
        cmgCall2 = "Scene Name"
        arg42 = arg42(cmgCall2)
        if "" ~= arg42 then
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.deleteCinematicScene
          numberValue5 = arg42
          cmgCall2(numberValue5)
        end
      end
    end
    flag8 = RMenu
    workValue11 = flag8
    flag8 = flag8.Get
    textValue52 = "mainmenu"
    flag14 = "cinematic"
    flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    flag4 = "UI Visiblity"
    flag5 = ""
    numberValue4 = {}
    numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: none) ===
    function flag7()
      local arg12, arg22
    end
    flag8 = RMenu
    workValue11 = flag8
    flag8 = flag8.Get
    textValue52 = "settingsmenu"
    flag14 = "uivisibility"
    flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
    workValue2 = CMG
    workValue2 = workValue2.getPlayerBucket
    workValue2 = workValue2()
    if 420 == workValue2 then
      flag4 = "Leave"
      if flag4 then
        goto flow_label_93
      end
    end
    flag4 = "Enter"
    ::flow_label_93::
    flag5 = RageUI
    flag5 = flag5.ButtonWithStyle
    numberValue4 = flag4
    flag6 = " Cinematic World"
    numberValue4 = numberValue4 .. flag6
    flag6 = ""
    flag7 = {}
    flag7.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag8 = true

    -- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg12, arg22, arg32) ===
    function workValue11(arg12, arg22, arg32)
      local arg42, cmgCall2
      if arg32 then
        arg42 = tCMG
        arg42 = arg42.canAnim
        arg42 = arg42()
        if arg42 then
          arg42 = CMG
          arg42 = arg42.getPlayerCombatTimer
          arg42 = arg42()
          if 0 == arg42 then
            arg42 = CMG
            arg42 = arg42.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            arg42 = arg42()
            if 0 == arg42 then
              arg42 = CMG
              arg42 = arg42.isPlayerInRedZone
              arg42 = arg42()
              if not arg42 then
                arg42 = workValue2
                if 0 ~= arg42 then
                  arg42 = workValue2
                  if 420 ~= arg42 then
                    goto flow_label_33
                  end
                end
                arg42 = TriggerServerEvent
                cmgCall2 = "076f7eba26"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "076f7eba26".
                arg42(cmgCall2)
            end
          end
        end
        else
          ::flow_label_33::
          arg42 = notify
          cmgCall2 = "~r~You can not do this right now."
          -- Beginner: Show a notification to the player.
          arg42(cmgCall2)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    flag5(numberValue4, flag6, flag7, flag8, workValue11)
    flag5 = RageUI
    flag5 = flag5.ButtonWithStyle
    numberValue4 = CMG
    numberValue4 = numberValue4.isTimelapseRunning
    numberValue4 = numberValue4()
    if numberValue4 then
      numberValue4 = "Stop Timelapse"
      if numberValue4 then
        goto flow_label_116
      end
    end
    numberValue4 = "Start Timelapse"
    ::flow_label_116::
    flag6 = ""
    flag7 = {}
    flag7.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag8 = true

    -- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg12, arg22, arg32) ===
    function workValue11(arg12, arg22, arg32)
      local arg42, cmgCall2, numberValue5
      if arg32 then
        arg42 = tCMG
        arg42 = arg42.canAnim
        arg42 = arg42()
        if arg42 then
          arg42 = CMG
          arg42 = arg42.getPlayerCombatTimer
          arg42 = arg42()
          if 0 == arg42 then
            arg42 = CMG
            arg42 = arg42.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            arg42 = arg42()
            if 0 == arg42 then
              arg42 = CMG
              arg42 = arg42.isPlayerInRedZone
              arg42 = arg42()
              if not arg42 then
                arg42 = workValue2
                if 0 ~= arg42 then
                  arg42 = workValue2
                  if 420 ~= arg42 then
                    goto flow_label_44
                  end
                end
                arg42 = CMG
                arg42 = arg42.isTimelapseRunning
                arg42 = arg42()
                if arg42 then
                  arg42 = CMG
                  arg42 = arg42.stopTimelapse
                  arg42()
                else
                  arg42 = CMG
                  arg42 = arg42.startTimelapse
                  cmgCall2 = 7200
                  numberValue5 = 200
                  arg42(cmgCall2, numberValue5)
                end
            end
          end
        end
        else
          ::flow_label_44::
          arg42 = notify
          cmgCall2 = "~r~You can not do this right now."
          -- Beginner: Show a notification to the player.
          arg42(cmgCall2)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    flag5(numberValue4, flag6, flag7, flag8, workValue11)
    flag5 = RageUI
    flag5 = flag5.ButtonWithStyle
    numberValue4 = CMG
    numberValue4 = numberValue4.isTimelapseRunning
    numberValue4 = numberValue4()
    if numberValue4 then
      numberValue4 = "Stop Timelapse x4"
      if numberValue4 then
        goto flow_label_134
      end
    end
    numberValue4 = "Start Timelapse x4"
    ::flow_label_134::
    flag6 = ""
    flag7 = {}
    flag7.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag8 = true

    -- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg12, arg22, arg32) ===
    function workValue11(arg12, arg22, arg32)
      local arg42, cmgCall2, numberValue5
      if arg32 then
        arg42 = tCMG
        arg42 = arg42.canAnim
        arg42 = arg42()
        if arg42 then
          arg42 = CMG
          arg42 = arg42.getPlayerCombatTimer
          arg42 = arg42()
          if 0 == arg42 then
            arg42 = CMG
            arg42 = arg42.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            arg42 = arg42()
            if 0 == arg42 then
              arg42 = CMG
              arg42 = arg42.isPlayerInRedZone
              arg42 = arg42()
              if not arg42 then
                arg42 = workValue2
                if 0 ~= arg42 then
                  arg42 = workValue2
                  if 420 ~= arg42 then
                    goto flow_label_44
                  end
                end
                arg42 = CMG
                arg42 = arg42.isTimelapseRunning
                arg42 = arg42()
                if arg42 then
                  arg42 = CMG
                  arg42 = arg42.stopTimelapse
                  arg42()
                else
                  arg42 = CMG
                  arg42 = arg42.startTimelapse
                  cmgCall2 = 7200
                  numberValue5 = 50
                  arg42(cmgCall2, numberValue5)
                end
            end
          end
        end
        else
          ::flow_label_44::
          arg42 = notify
          cmgCall2 = "~r~You can not do this right now."
          -- Beginner: Show a notification to the player.
          arg42(cmgCall2)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    flag5(numberValue4, flag6, flag7, flag8, workValue11)
  end

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
  function workValue10()
    local workValue2, flag4
  end
  arg1(arg2, arg3, arg4, textValue43, textValue49, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "load_scene"
  textValue43 = "cinematic"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue43)
  arg3 = true
  arg4 = true
  textValue43 = true

  -- === HELPER FUNCTION (decompiler name: textValue49; parameters: none) ===
  function textValue49()
    local workValue2, flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue, flag2
    workValue2 = pairs
    flag4 = textValue
    workValue2, flag4, flag5, numberValue4 = workValue2(flag4)
    for flag6 in workValue2, flag4, flag5, numberValue4 do
      flag7 = RageUI
      flag7 = flag7.ButtonWithStyle
      flag8 = flag6
      workValue11 = ""
      textValue52 = {}
      textValue52.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag14 = true

      -- === HELPER FUNCTION: position(arg12, arg22, arg32) ===
      function position(arg12, arg22, arg32)
        local arg42
        if arg32 then
          arg42 = flag6
          textValue2 = arg42
        end
      end
      position2 = RMenu
      workValue7 = position2
      position2 = position2.Get
      numberValue = "scene_manager"
      flag2 = "cinematic"
      position2, workValue7, numberValue, flag2 = position2(workValue7, numberValue, flag2)
      -- Beginner: Draw a selectable RageUI menu button.
      flag7(flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue, flag2)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
  function workValue10()
    local workValue2, flag4
  end
  arg1(arg2, arg3, arg4, textValue43, textValue49, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "scene_manager"
  textValue43 = "cinematic"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue43)
  arg3 = true
  arg4 = true
  textValue43 = true

  -- === HELPER FUNCTION (decompiler name: textValue49; parameters: none) ===
  function textValue49()
    local workValue2, flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue, flag2, numberValue2
    workValue2 = RageUI
    workValue2 = workValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22
      arg12 = nil
      textValue30 = arg12
      arg12 = textValue32
      arg12()
    end
    workValue2(flag4)
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    flag4 = "Play Scene"
    flag5 = ""
    numberValue4 = {}
    numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
    function flag7(arg12, arg22, arg32)
      local arg42, cmgCall2
      if arg22 then
        arg42 = nil
        textValue30 = arg42
        arg42 = textValue32
        arg42()
      end
      if arg32 then
        arg42 = workValue
        cmgCall2 = false
        arg42(cmgCall2)
        arg42 = textValue33
        cmgCall2 = textValue2
        arg42(cmgCall2)
      end
    end
    flag8 = RMenu
    workValue11 = flag8
    flag8 = flag8.Get
    textValue52 = "scene_manager"
    flag14 = "cinematic"
    flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue, flag2, numberValue2 = flag8(workValue11, textValue52, flag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue, flag2, numberValue2)
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    flag4 = "[Add Camera]"
    flag5 = ""
    numberValue4 = {}
    numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
    function flag7(arg12, arg22, arg32)
      local arg42
      if arg22 then
        arg42 = nil
        textValue30 = arg42
        arg42 = textValue32
        arg42()
      end
    end
    flag8 = RMenu
    workValue11 = flag8
    flag8 = flag8.Get
    textValue52 = "add_camera"
    flag14 = "cinematic"
    flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue, flag2, numberValue2 = flag8(workValue11, textValue52, flag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue, flag2, numberValue2)
    workValue2 = type
    flag5 = textValue2
    flag4 = textValue
    flag4 = flag4[flag5]
    workValue2 = workValue2(flag4)
    if "table" == workValue2 then
      workValue2 = pairs
      flag5 = textValue2
      flag4 = textValue
      flag4 = flag4[flag5]
      workValue2, flag4, flag5, numberValue4 = workValue2(flag4)
      for flag6, flag7 in workValue2, flag4, flag5, numberValue4 do
        flag8 = textValue31
        workValue11 = flag6
        textValue52 = flag7
        flag8(workValue11, textValue52)
        flag8 = RageUI
        flag8 = flag8.ButtonWithStyle
        workValue11 = "Camera "
        textValue52 = flag6
        workValue11 = workValue11 .. textValue52
        textValue52 = ""
        flag14 = {}
        flag14.RightLabel = "\226\134\146\226\134\146\226\134\146"
        position = true

        -- === HELPER FUNCTION: position2(arg12, arg22, arg32) ===
        function position2(arg12, arg22, arg32)
          local arg42, cmgCall2, numberValue5, numberValue6, flag10, flag12
          if arg22 then
            arg42 = flag6
            textValue30 = arg42
            arg42 = DoesCamExist
            cmgCall2 = textValue6
            arg42 = arg42(cmgCall2)
            if not arg42 then
              arg42 = print
              cmgCall2 = "Creating cam because it doesn't exist"
              arg42(cmgCall2)
              arg42 = CreateCam
              cmgCall2 = "DEFAULT_SCRIPTED_CAMERA"
              numberValue5 = true
              -- Beginner: result below is cameraHandle.
              arg42 = arg42(cmgCall2, numberValue5)
              textValue6 = arg42
              arg42 = SetCamActive
              cmgCall2 = textValue6
              numberValue5 = true
              arg42(cmgCall2, numberValue5)
              arg42 = RenderScriptCams
              cmgCall2 = true
              numberValue5 = true
              numberValue6 = 500
              flag10 = true
              flag12 = false
              arg42(cmgCall2, numberValue5, numberValue6, flag10, flag12)
            end
          end
          if arg32 then
            arg42 = flag6
            textValue5 = arg42
            cmgCall2 = textValue2
            arg42 = textValue
            arg42 = arg42[cmgCall2]
            cmgCall2 = textValue5
            arg42 = arg42[cmgCall2]
            arg42 = arg42.type
            if "Static Camera" == arg42 then
              arg42 = 1
              textValue10 = arg42
            else
              cmgCall2 = textValue2
              arg42 = textValue
              arg42 = arg42[cmgCall2]
              cmgCall2 = textValue5
              arg42 = arg42[cmgCall2]
              arg42 = arg42.type
              if "Interpolation Camera" == arg42 then
                arg42 = 2
                textValue10 = arg42
              end
            end
            cmgCall2 = textValue2
            arg42 = textValue
            arg42 = arg42[cmgCall2]
            cmgCall2 = textValue5
            arg42 = arg42[cmgCall2]
            arg42 = arg42.blending
            if 0 == arg42 then
              arg42 = 2
              textValue12 = arg42
            else
              cmgCall2 = textValue2
              arg42 = textValue
              arg42 = arg42[cmgCall2]
              cmgCall2 = textValue5
              arg42 = arg42[cmgCall2]
              arg42 = arg42.blending
              if 5 == arg42 then
                arg42 = 1
                textValue12 = arg42
              end
            end
          end
        end
        workValue7 = RMenu
        numberValue = workValue7
        workValue7 = workValue7.Get
        flag2 = "camera_manager"
        numberValue2 = "cinematic"
        workValue7, numberValue, flag2, numberValue2 = workValue7(numberValue, flag2, numberValue2)
        -- Beginner: Draw a selectable RageUI menu button.
        flag8(workValue11, textValue52, flag14, position, position2, workValue7, numberValue, flag2, numberValue2)
      end
    else
      workValue2 = print
      flag4 = "failed, loaded scene was not a table?"
      workValue2(flag4)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
  function workValue10()
    local workValue2, flag4
  end
  arg1(arg2, arg3, arg4, textValue43, textValue49, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "camera_manager"
  textValue43 = "cinematic"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue43)
  arg3 = true
  arg4 = true
  textValue43 = true

  -- === HELPER FUNCTION (decompiler name: textValue49; parameters: none) ===
  function textValue49()
    local workValue2, flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14
    workValue2 = RageUI
    workValue2 = workValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22
      arg12 = nil
      textValue30 = arg12
      arg12 = textValue32
      arg12()
    end
    workValue2(flag4)
    workValue2 = textValue5
    if workValue2 then
      flag4 = textValue2
      workValue2 = textValue
      workValue2 = workValue2[flag4]
      flag4 = textValue5
      workValue2 = workValue2[flag4]
      if workValue2 then
        workValue2 = RMenu
        flag4 = workValue2
        workValue2 = workValue2.Get
        flag5 = "camera_manager"
        numberValue4 = "cinematic"
        -- Beginner: result below is menu.
        workValue2 = workValue2(flag4, flag5, numberValue4)
        flag4 = workValue2
        workValue2 = workValue2.SetSubtitle
        flag5 = "~b~"
        flag6 = textValue2
        numberValue4 = textValue
        numberValue4 = numberValue4[flag6]
        flag6 = textValue5
        numberValue4 = numberValue4[flag6]
        numberValue4 = numberValue4.type
        flag5 = flag5 .. numberValue4
        workValue2(flag4, flag5)
        workValue2 = RageUI
        workValue2 = workValue2.ButtonWithStyle
        flag4 = "~b~Transition: "
        numberValue4 = textValue2
        flag5 = textValue
        flag5 = flag5[numberValue4]
        numberValue4 = textValue5
        flag5 = flag5[numberValue4]
        flag5 = flag5.transition
        numberValue4 = "ms"
        flag4 = flag4 .. flag5 .. numberValue4
        flag5 = ""
        numberValue4 = {}
        numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag6 = true

        -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
        function flag7(arg12, arg22, arg32)
          local arg42, cmgCall2, numberValue5, numberValue6, flag10
          if arg32 then
            arg42 = CMG
            arg42 = arg42.GetRageInputText
            cmgCall2 = "Transition(in ms):"
            arg42 = arg42(cmgCall2)
            if arg42 then
              cmgCall2 = tonumber
              numberValue5 = arg42
              cmgCall2 = cmgCall2(numberValue5)
              if cmgCall2 then
                cmgCall2 = CMG
                cmgCall2 = cmgCall2.modifyTransition
                numberValue5 = textValue2
                numberValue6 = textValue5
                flag10 = arg42
                cmgCall2(numberValue5, numberValue6, flag10)
            end
            else
              cmgCall2 = tCMG
              cmgCall2 = cmgCall2.notify
              numberValue5 = "~r~Failed to change transition time."
              -- Beginner: Show a notification to the player.
              cmgCall2(numberValue5)
            end
          end
        end
        flag8 = RMenu
        workValue11 = flag8
        flag8 = flag8.Get
        textValue52 = "camera_manager"
        flag14 = "cinematic"
        flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
        -- Beginner: Draw a selectable RageUI menu button.
        workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
        workValue2 = RageUI
        workValue2 = workValue2.ButtonWithStyle
        flag4 = "Move Camera"
        flag5 = ""
        numberValue4 = {}
        numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag6 = true

        -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
        function flag7(arg12, arg22, arg32)
          local arg42, cmgCall2
          if arg32 then
            arg42 = textValue3
            if not arg42 then
              arg42 = textValue4
              if 0 == arg42 then
                arg42 = nil
                textValue30 = arg42
                arg42 = GetEntityCoords
                cmgCall2 = PlayerPedId
                -- Beginner: result below is localPlayerPed.
                cmgCall2 = cmgCall2()
                -- Beginner: result below is entityCoords.
                arg42 = arg42(cmgCall2)
                textValue8 = arg42
                arg42 = textValue32
                arg42()
                arg42 = tCMG
                arg42 = arg42.toggleNoclip
                arg42()
                arg42 = textValue5
                textValue4 = arg42
              end
            end
          end
        end
        flag8 = RMenu
        workValue11 = flag8
        flag8 = flag8.Get
        textValue52 = "camera_manager"
        flag14 = "cinematic"
        flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
        -- Beginner: Draw a selectable RageUI menu button.
        workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
        workValue2 = RageUI
        workValue2 = workValue2.List
        flag4 = "Camera Type:"
        flag5 = rageUiCall3
        numberValue4 = textValue10
        flag6 = ""
        flag7 = {}
        flag8 = true

        -- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg12, arg22, arg32, arg42) ===
        function workValue11(arg12, arg22, arg32, arg42)
          local cmgCall2, numberValue5, numberValue6, flag10, flag12
          cmgCall2 = textValue10
          if arg42 ~= cmgCall2 then
            textValue10 = arg42
            cmgCall2 = CMG
            cmgCall2 = cmgCall2.modifyCameraType
            numberValue5 = textValue2
            numberValue6 = textValue5
            flag12 = textValue10
            flag10 = rageUiCall3
            flag10 = flag10[flag12]
            cmgCall2(numberValue5, numberValue6, flag10)
          end
        end

        -- === HELPER FUNCTION (decompiler name: textValue52; parameters: none) ===
        function textValue52()
          local arg12, arg22
        end
        flag14 = nil
        -- Beginner: Draw a RageUI list selector.
        workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
        workValue2 = RageUI
        workValue2 = workValue2.List
        flag4 = "Camera Blending:"
        flag5 = rageUiCall4
        numberValue4 = textValue12
        flag6 = ""
        flag7 = {}
        flag8 = true

        -- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg12, arg22, arg32, arg42) ===
        function workValue11(arg12, arg22, arg32, arg42)
          local cmgCall2, numberValue5, numberValue6, flag10, flag12
          cmgCall2 = textValue12
          if arg42 ~= cmgCall2 then
            textValue12 = arg42
            cmgCall2 = CMG
            cmgCall2 = cmgCall2.modifyCameraBlending
            numberValue5 = textValue2
            numberValue6 = textValue5
            flag12 = textValue12
            flag10 = rageUiCall4
            flag10 = flag10[flag12]
            cmgCall2(numberValue5, numberValue6, flag10)
          end
        end

        -- === HELPER FUNCTION (decompiler name: textValue52; parameters: none) ===
        function textValue52()
          local arg12, arg22
        end
        flag14 = nil
        -- Beginner: Draw a RageUI list selector.
        workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
        workValue2 = RageUI
        workValue2 = workValue2.ButtonWithStyle
        flag4 = "Select Camera Focus"
        flag5 = ""
        numberValue4 = {}
        numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag6 = true

        -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
        function flag7(arg12, arg22, arg32)
        end
        flag8 = RMenu
        workValue11 = flag8
        flag8 = flag8.Get
        textValue52 = "camera_focus_manager"
        flag14 = "cinematic"
        flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
        -- Beginner: Draw a selectable RageUI menu button.
        workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
        workValue2 = RageUI
        workValue2 = workValue2.ButtonWithStyle
        flag4 = "Screen Effect: "
        numberValue4 = textValue2
        flag5 = textValue
        flag5 = flag5[numberValue4]
        numberValue4 = textValue5
        flag5 = flag5[numberValue4]
        flag5 = flag5.screeneffect
        if not flag5 then
          flag5 = "N/A"
        end
        flag4 = flag4 .. flag5
        flag5 = ""
        numberValue4 = {}
        numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag6 = true

        -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
        function flag7(arg12, arg22, arg32)
        end
        flag8 = RMenu
        workValue11 = flag8
        flag8 = flag8.Get
        textValue52 = "screeneffect_manager"
        flag14 = "cinematic"
        flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
        workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
        workValue2 = RageUI
        workValue2 = workValue2.List
        flag4 = "Timecycle Intensity"
        flag5 = textValue42
        numberValue4 = rageUiCall
        flag6 = ""
        flag7 = {}
        flag8 = true

        -- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg12, arg22, arg32, arg42) ===
        function workValue11(arg12, arg22, arg32, arg42)
          local cmgCall2, numberValue5, numberValue6, flag10, flag12
          cmgCall2 = RageUI
          cmgCall2 = cmgCall2.BackspaceMenuCallback

          -- === HELPER FUNCTION (decompiler name: numberValue5; parameters: none) ===
          function numberValue5()
            local arg13, dataTable
            arg13 = ClearTimecycleModifier
            arg13()
          end
          cmgCall2(numberValue5)
          cmgCall2 = rageUiCall
          if arg42 ~= cmgCall2 then
            rageUiCall = arg42
            numberValue5 = textValue2
            cmgCall2 = textValue
            cmgCall2 = cmgCall2[numberValue5]
            numberValue5 = textValue5
            cmgCall2 = cmgCall2[numberValue5]
            cmgCall2 = cmgCall2.timecycleEffect
            if "" ~= cmgCall2 then
              cmgCall2 = SetTimecycleModifier
              numberValue6 = textValue2
              numberValue5 = textValue
              numberValue5 = numberValue5[numberValue6]
              numberValue6 = textValue5
              numberValue5 = numberValue5[numberValue6]
              numberValue5 = numberValue5.timecycleEffect
              cmgCall2(numberValue5)
              cmgCall2 = SetTimecycleModifierStrength
              numberValue6 = textValue2
              numberValue5 = textValue
              numberValue5 = numberValue5[numberValue6]
              numberValue6 = textValue5
              numberValue5 = numberValue5[numberValue6]
              numberValue5 = numberValue5.timecycleIntensity
              cmgCall2(numberValue5)
              cmgCall2 = CMG
              cmgCall2 = cmgCall2.setTimecycleIntensity
              numberValue5 = textValue2
              numberValue6 = textValue5
              flag12 = rageUiCall
              flag10 = textValue42
              flag10 = flag10[flag12]
              cmgCall2(numberValue5, numberValue6, flag10)
            end
          end
        end

        -- === HELPER FUNCTION (decompiler name: textValue52; parameters: none) ===
        function textValue52()
          local arg12, arg22
        end
        flag14 = nil
        -- Beginner: Draw a RageUI list selector.
        workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
        workValue2 = RageUI
        workValue2 = workValue2.ButtonWithStyle
        flag4 = "Timecycle Effect: "
        numberValue4 = textValue2
        flag5 = textValue
        flag5 = flag5[numberValue4]
        numberValue4 = textValue5
        flag5 = flag5[numberValue4]
        flag5 = flag5.timecycleEffect
        if not flag5 then
          flag5 = "N/A"
        end
        flag4 = flag4 .. flag5
        flag5 = ""
        numberValue4 = {}
        numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag6 = true

        -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
        function flag7(arg12, arg22, arg32)
        end
        flag8 = RMenu
        workValue11 = flag8
        flag8 = flag8.Get
        textValue52 = "timecycle_manager"
        flag14 = "cinematic"
        flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
        -- Beginner: Draw a selectable RageUI menu button.
        workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
        workValue2 = RageUI
        workValue2 = workValue2.ButtonWithStyle
        flag4 = "Shake Effect: "
        numberValue4 = textValue2
        flag5 = textValue
        flag5 = flag5[numberValue4]
        numberValue4 = textValue5
        flag5 = flag5[numberValue4]
        flag5 = flag5.shake
        if not flag5 then
          flag5 = "N/A"
        end
        flag4 = flag4 .. flag5
        flag5 = ""
        numberValue4 = {}
        numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag6 = true

        -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
        function flag7(arg12, arg22, arg32)
        end
        flag8 = RMenu
        workValue11 = flag8
        flag8 = flag8.Get
        textValue52 = "shake_manager"
        flag14 = "cinematic"
        flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
        workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
        workValue2 = RageUI
        workValue2 = workValue2.List
        flag4 = "Field of View (FOV)"
        flag5 = rageUiCall2
        numberValue4 = textValue15
        flag6 = ""
        flag7 = {}
        flag8 = true

        -- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg12, arg22, arg32, arg42) ===
        function workValue11(arg12, arg22, arg32, arg42)
          local cmgCall2, numberValue5, numberValue6
          cmgCall2 = textValue15
          if arg42 ~= cmgCall2 then
            textValue15 = arg42
            cmgCall2 = CMG
            cmgCall2 = cmgCall2.setCameraFov
            numberValue5 = textValue2
            numberValue6 = textValue5
            cmgCall2(numberValue5, numberValue6)
          end
        end

        -- === HELPER FUNCTION (decompiler name: textValue52; parameters: none) ===
        function textValue52()
          local arg12, arg22
        end
        flag14 = nil
        -- Beginner: Draw a RageUI list selector.
        workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
        workValue2 = RageUI
        workValue2 = workValue2.ButtonWithStyle
        flag4 = "Remove Camera"
        flag5 = ""
        numberValue4 = {}
        numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag6 = true

        -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
        function flag7(arg12, arg22, arg32)
          local arg42, cmgCall2, numberValue5
          if arg32 then
            arg42 = CMG
            arg42 = arg42.deleteCamera
            cmgCall2 = textValue2
            numberValue5 = textValue5
            arg42(cmgCall2, numberValue5)
            arg42 = nil
            textValue30 = arg42
            arg42 = textValue32
            arg42()
            arg42 = 1
            textValue5 = arg42
          end
        end
        flag8 = RMenu
        workValue11 = flag8
        flag8 = flag8.Get
        textValue52 = "camera_manager"
        flag14 = "cinematic"
        flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
        -- Beginner: Draw a selectable RageUI menu button.
        workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
    end
    else
      workValue2 = RageUI
      workValue2 = workValue2.Separator
      flag4 = "~r~No Camera ID selected."
      workValue2(flag4)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
  function workValue10()
    local workValue2, flag4
  end
  arg1(arg2, arg3, arg4, textValue43, textValue49, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "add_camera"
  textValue43 = "cinematic"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue43)
  arg3 = true
  arg4 = true
  textValue43 = true

  -- === HELPER FUNCTION (decompiler name: textValue49; parameters: none) ===
  function textValue49()
    local workValue2, flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14
    workValue2 = RageUI
    workValue2 = workValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22
    end
    workValue2(flag4)
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    flag4 = "Add Static Camera"
    flag5 = ""
    numberValue4 = {}
    numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
    function flag7(arg12, arg22, arg32)
      local arg42, cmgCall2
      if arg32 then
        arg42 = textValue3
        if arg42 then
          arg42 = notify
          cmgCall2 = "~r~Can not add a camera whilst you are adding a camera."
          -- Beginner: Show a notification to the player.
          arg42(cmgCall2)
          return
        end
        arg42 = nil
        textValue30 = arg42
        arg42 = GetEntityCoords
        cmgCall2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        cmgCall2 = cmgCall2()
        -- Beginner: result below is entityCoords.
        arg42 = arg42(cmgCall2)
        textValue8 = arg42
        arg42 = textValue32
        arg42()
        arg42 = tCMG
        arg42 = arg42.toggleNoclip
        arg42()
        arg42 = true
        textValue3 = arg42
        arg42 = "Static Camera"
        textValue9 = arg42
      end
    end
    flag8 = RMenu
    workValue11 = flag8
    flag8 = flag8.Get
    textValue52 = "camera_manager"
    flag14 = "cinematic"
    flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    flag4 = "Add Interpolation Camera"
    flag5 = ""
    numberValue4 = {}
    numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
    function flag7(arg12, arg22, arg32)
      local arg42, cmgCall2
      if arg32 then
        arg42 = textValue3
        if arg42 then
          arg42 = notify
          cmgCall2 = "~r~Can not add a camera whilst you are adding a camera."
          -- Beginner: Show a notification to the player.
          arg42(cmgCall2)
          return
        end
        arg42 = nil
        textValue30 = arg42
        arg42 = GetEntityCoords
        cmgCall2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        cmgCall2 = cmgCall2()
        -- Beginner: result below is entityCoords.
        arg42 = arg42(cmgCall2)
        textValue8 = arg42
        arg42 = textValue32
        arg42()
        arg42 = tCMG
        arg42 = arg42.toggleNoclip
        arg42()
        arg42 = true
        textValue3 = arg42
        arg42 = "Interpolation Camera"
        textValue9 = arg42
      end
    end
    flag8 = RMenu
    workValue11 = flag8
    flag8 = flag8.Get
    textValue52 = "camera_manager"
    flag14 = "cinematic"
    flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
  end

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
  function workValue10()
    local workValue2, flag4
  end
  arg1(arg2, arg3, arg4, textValue43, textValue49, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "screeneffect_manager"
  textValue43 = "cinematic"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue43)
  arg3 = true
  arg4 = true
  textValue43 = true

  -- === HELPER FUNCTION (decompiler name: textValue49; parameters: none) ===
  function textValue49()
    local workValue2, flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue
    workValue2 = RageUI
    workValue2 = workValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22
      arg12 = AnimpostfxStopAll
      arg12()
    end
    workValue2(flag4)
    workValue2 = 1
    flag4 = textValue11
    flag4 = #flag4
    flag5 = 1
    for numberValue4 = workValue2, flag4, flag5 do
      flag6 = RageUI
      flag6 = flag6.ButtonWithStyle
      flag7 = textValue11
      flag7 = flag7[numberValue4]
      flag8 = ""
      workValue11 = {}
      workValue11.RightLabel = "\226\134\146\226\134\146\226\134\146"
      textValue52 = true

      -- === HELPER FUNCTION (decompiler name: flag14; parameters: arg12, arg22, arg32) ===
      function flag14(arg12, arg22, arg32)
        local arg42, cmgCall2, numberValue5, numberValue6, flag10
        if arg22 then
          arg42 = AnimpostfxStopAll
          arg42()
          cmgCall2 = numberValue4
          arg42 = textValue11
          arg42 = arg42[cmgCall2]
          if "Default" ~= arg42 then
            arg42 = AnimpostfxPlay
            numberValue5 = numberValue4
            cmgCall2 = textValue11
            cmgCall2 = cmgCall2[numberValue5]
            numberValue5 = 5000
            numberValue6 = false
            arg42(cmgCall2, numberValue5, numberValue6)
          end
        end
        if arg32 then
          arg42 = CMG
          arg42 = arg42.modifyScreeneffect
          cmgCall2 = textValue2
          numberValue5 = textValue5
          flag10 = numberValue4
          numberValue6 = textValue11
          numberValue6 = numberValue6[flag10]
          arg42(cmgCall2, numberValue5, numberValue6)
        end
      end
      position = RMenu
      position2 = position
      position = position.Get
      workValue7 = "camera_manager"
      numberValue = "cinematic"
      position, position2, workValue7, numberValue = position(position2, workValue7, numberValue)
      -- Beginner: Draw a selectable RageUI menu button.
      flag6(flag7, flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
  function workValue10()
    local workValue2, flag4
  end
  arg1(arg2, arg3, arg4, textValue43, textValue49, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "timecycle_manager"
  textValue43 = "cinematic"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue43)
  arg3 = true
  arg4 = true
  textValue43 = true

  -- === HELPER FUNCTION (decompiler name: textValue49; parameters: none) ===
  function textValue49()
    local workValue2, flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue
    workValue2 = RageUI
    workValue2 = workValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22
      arg12 = ClearTimecycleModifier
      arg12()
    end
    workValue2(flag4)
    workValue2 = 1
    flag4 = cmgCall
    flag4 = #flag4
    flag5 = 1
    for numberValue4 = workValue2, flag4, flag5 do
      flag6 = RageUI
      flag6 = flag6.ButtonWithStyle
      flag7 = cmgCall
      flag7 = flag7[numberValue4]
      flag8 = ""
      workValue11 = {}
      workValue11.RightLabel = "\226\134\146\226\134\146\226\134\146"
      textValue52 = true

      -- === HELPER FUNCTION (decompiler name: flag14; parameters: arg12, arg22, arg32) ===
      function flag14(arg12, arg22, arg32)
        local arg42, cmgCall2, numberValue5, numberValue6, flag10
        if arg22 then
          arg42 = ClearTimecycleModifier
          arg42()
          cmgCall2 = numberValue4
          arg42 = cmgCall
          arg42 = arg42[cmgCall2]
          if "Default" ~= arg42 then
            arg42 = SetTimecycleModifier
            numberValue5 = numberValue4
            cmgCall2 = cmgCall
            cmgCall2 = cmgCall2[numberValue5]
            arg42(cmgCall2)
          end
        end
        if arg32 then
          arg42 = CMG
          arg42 = arg42.modifyTimecycleEffect
          cmgCall2 = textValue2
          numberValue5 = textValue5
          flag10 = numberValue4
          numberValue6 = cmgCall
          numberValue6 = numberValue6[flag10]
          arg42(cmgCall2, numberValue5, numberValue6)
        end
      end
      position = RMenu
      position2 = position
      position = position.Get
      workValue7 = "camera_manager"
      numberValue = "cinematic"
      position, position2, workValue7, numberValue = position(position2, workValue7, numberValue)
      -- Beginner: Draw a selectable RageUI menu button.
      flag6(flag7, flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
  function workValue10()
    local workValue2, flag4
  end
  arg1(arg2, arg3, arg4, textValue43, textValue49, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "shake_manager"
  textValue43 = "cinematic"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue43)
  arg3 = true
  arg4 = true
  textValue43 = true

  -- === HELPER FUNCTION (decompiler name: textValue49; parameters: none) ===
  function textValue49()
    local workValue2, flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue
    workValue2 = RageUI
    workValue2 = workValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22
      arg12 = AnimpostfxStopAll
      arg12()
    end
    workValue2(flag4)
    workValue2 = 1
    flag4 = textValue48
    flag4 = #flag4
    flag5 = 1
    for numberValue4 = workValue2, flag4, flag5 do
      flag6 = RageUI
      flag6 = flag6.ButtonWithStyle
      flag7 = textValue48
      flag7 = flag7[numberValue4]
      flag8 = ""
      workValue11 = {}
      workValue11.RightLabel = "\226\134\146\226\134\146\226\134\146"
      textValue52 = true

      -- === HELPER FUNCTION (decompiler name: flag14; parameters: arg12, arg22, arg32) ===
      function flag14(arg12, arg22, arg32)
        local arg42, cmgCall2, numberValue5, numberValue6, flag10
        if arg22 then
          arg42 = textValue13
          if "" ~= arg42 then
            arg42 = textValue13
            numberValue5 = numberValue4
            cmgCall2 = textValue48
            cmgCall2 = cmgCall2[numberValue5]
            if arg42 == cmgCall2 then
              goto flow_label_28
            end
          end
          cmgCall2 = numberValue4
          arg42 = textValue48
          arg42 = arg42[cmgCall2]
          textValue13 = arg42
          arg42 = SetTimeout
          cmgCall2 = 25000

          -- === HELPER FUNCTION (decompiler name: numberValue5; parameters: none) ===
          function numberValue5()
            local arg13, dataTable
            arg13 = ""
            textValue13 = arg13
          end
          arg42(cmgCall2, numberValue5)
          arg42 = ShakeCam
          cmgCall2 = GetRenderingCam
          cmgCall2 = cmgCall2()
          numberValue6 = numberValue4
          numberValue5 = textValue48
          numberValue5 = numberValue5[numberValue6]
          numberValue6 = 1.0
          arg42(cmgCall2, numberValue5, numberValue6)
        end
        ::flow_label_28::
        if arg32 then
          arg42 = CMG
          arg42 = arg42.modifyShakeEffect
          cmgCall2 = textValue2
          numberValue5 = textValue5
          flag10 = numberValue4
          numberValue6 = textValue48
          numberValue6 = numberValue6[flag10]
          arg42(cmgCall2, numberValue5, numberValue6)
        end
      end
      position = RMenu
      position2 = position
      position = position.Get
      workValue7 = "camera_manager"
      numberValue = "cinematic"
      position, position2, workValue7, numberValue = position(position2, workValue7, numberValue)
      -- Beginner: Draw a selectable RageUI menu button.
      flag6(flag7, flag8, workValue11, textValue52, flag14, position, position2, workValue7, numberValue)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
  function workValue10()
    local workValue2, flag4
  end
  arg1(arg2, arg3, arg4, textValue43, textValue49, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "camera_focus_manager"
  textValue43 = "cinematic"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue43)
  arg3 = true
  arg4 = true
  textValue43 = true

  -- === HELPER FUNCTION (decompiler name: textValue49; parameters: none) ===
  function textValue49()
    local workValue2, flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14
    workValue2 = RageUI
    workValue2 = workValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22
      arg12 = AnimpostfxStopAll
      arg12()
    end
    workValue2(flag4)
    workValue2 = RageUI
    workValue2 = workValue2.Separator
    flag4 = "~b~Currently pointed at: "
    numberValue4 = textValue2
    flag5 = textValue
    flag5 = flag5[numberValue4]
    numberValue4 = textValue5
    flag5 = flag5[numberValue4]
    flag5 = flag5.focusType
    numberValue4 = " : "
    flag7 = textValue2
    flag6 = textValue
    flag6 = flag6[flag7]
    flag7 = textValue5
    flag6 = flag6[flag7]
    flag6 = flag6.focusData
    flag4 = flag4 .. flag5 .. numberValue4 .. flag6
    workValue2(flag4)
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    flag4 = "Player"
    flag5 = ""
    numberValue4 = {}
    numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
    function flag7(arg12, arg22, arg32)
      local arg42, cmgCall2, numberValue5, numberValue6, flag10, flag12
      if arg32 then
        arg42 = CMG
        arg42 = arg42.GetRageInputText
        cmgCall2 = "Temp ID:"
        arg42 = arg42(cmgCall2)
        if "" ~= arg42 then
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.addCameraFocus
          numberValue5 = textValue2
          numberValue6 = textValue5
          flag10 = "player"
          flag12 = arg42
          cmgCall2(numberValue5, numberValue6, flag10, flag12)
        end
      end
    end
    flag8 = RMenu
    workValue11 = flag8
    flag8 = flag8.Get
    textValue52 = "camera_manager"
    flag14 = "cinematic"
    flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    flag4 = "Coordinates"
    flag5 = ""
    numberValue4 = {}
    numberValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32) ===
    function flag7(arg12, arg22, arg32)
      local arg42, cmgCall2, numberValue5, numberValue6
      if arg32 then
        arg42 = CMG
        arg42 = arg42.clientPrompt
        cmgCall2 = "Enter coordinates:"
        numberValue5 = ""

        -- === HELPER FUNCTION (decompiler name: numberValue6; parameters: arg13) ===
        function numberValue6(arg13)
          local dataTable, stringHelper, workValue9, textValue44, textValue50, textValue51, tableHelper, textValue53, vector3Builder, workValue4, workValue6, workValue8
          dataTable = {}
          stringHelper = string
          stringHelper = stringHelper.gmatch
          textValue44 = arg13
          workValue9 = arg13.gsub
          textValue50 = "\" y=\""
          textValue51 = ","
          workValue9 = workValue9(textValue44, textValue50, textValue51)
          textValue44 = workValue9
          workValue9 = workValue9.gsub
          textValue50 = "\" z=\""
          textValue51 = ","
          workValue9 = workValue9(textValue44, textValue50, textValue51)
          if not workValue9 then
            workValue9 = "0,0,0"
          end
          textValue44 = "[^,]+"
          stringHelper, workValue9, textValue44, textValue50 = stringHelper(workValue9, textValue44)
          for textValue51 in stringHelper, workValue9, textValue44, textValue50 do
            tableHelper = table
            tableHelper = tableHelper.insert
            textValue53 = dataTable
            vector3Builder = tonumber
            workValue4 = textValue51
            vector3Builder, workValue4, workValue6, workValue8 = vector3Builder(workValue4)
            tableHelper(textValue53, vector3Builder, workValue4, workValue6, workValue8)
          end
          if "" == arg13 then
            return
          end
          stringHelper = 0
          workValue9 = 0
          textValue44 = 0
          textValue50 = dataTable[1]
          if nil ~= textValue50 then
            stringHelper = dataTable[1]
          end
          textValue50 = dataTable[2]
          if nil ~= textValue50 then
            workValue9 = dataTable[2]
          end
          textValue50 = dataTable[3]
          if nil ~= textValue50 then
            textValue44 = dataTable[3]
          end
          textValue50 = CMG
          textValue50 = textValue50.addCameraFocus
          textValue51 = textValue2
          tableHelper = textValue5
          textValue53 = "coord"
          vector3Builder = vector3
          workValue4 = stringHelper
          workValue6 = workValue9
          workValue8 = textValue44
          vector3Builder, workValue4, workValue6, workValue8 = vector3Builder(workValue4, workValue6, workValue8)
          textValue50(textValue51, tableHelper, textValue53, vector3Builder, workValue4, workValue6, workValue8)
        end
        arg42(cmgCall2, numberValue5, numberValue6)
      end
    end
    flag8 = RMenu
    workValue11 = flag8
    flag8 = flag8.Get
    textValue52 = "camera_manager"
    flag14 = "cinematic"
    flag8, workValue11, textValue52, flag14 = flag8(workValue11, textValue52, flag14)
    -- Beginner: Draw a selectable RageUI menu button.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
  end

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
  function workValue10()
    local workValue2, flag4
  end
  arg1(arg2, arg3, arg4, textValue43, textValue49, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dof_manager"
  textValue43 = "cinematic"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue43)
  arg3 = true
  arg4 = true
  textValue43 = true

  -- === HELPER FUNCTION (decompiler name: textValue49; parameters: none) ===
  function textValue49()
    local workValue2, flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14
    workValue2 = RageUI
    workValue2 = workValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22
    end
    workValue2(flag4)
    workValue2 = RageUI
    workValue2 = workValue2.Separator
    flag4 = "~g~These settings require some fiddling to get the desired result."
    workValue2(flag4)
    workValue2 = RageUI
    workValue2 = workValue2.List
    flag4 = "Near Plane Out"
    flag5 = textValue23
    numberValue4 = textValue24
    flag6 = ""
    flag7 = {}
    flag8 = true

    -- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg12, arg22, arg32, arg42) ===
    function workValue11(arg12, arg22, arg32, arg42)
      local cmgCall2, numberValue5, numberValue6, flag10, flag12, workValue12, workValue3, workValue5
      cmgCall2 = textValue24
      if arg42 ~= cmgCall2 then
        textValue24 = arg42
        cmgCall2 = SetHidofOverride
        numberValue5 = true
        numberValue6 = true
        flag12 = textValue24
        flag10 = textValue23
        flag10 = flag10[flag12]
        workValue12 = textValue25
        flag12 = textValue23
        flag12 = flag12[workValue12]
        workValue3 = textValue26
        workValue12 = textValue23
        workValue12 = workValue12[workValue3]
        workValue5 = textValue27
        workValue3 = textValue23
        workValue3 = workValue3[workValue5]
        cmgCall2(numberValue5, numberValue6, flag10, flag12, workValue12, workValue3)
      end
    end

    -- === HELPER FUNCTION (decompiler name: textValue52; parameters: none) ===
    function textValue52()
      local arg12, arg22
    end
    flag14 = nil
    -- Beginner: Draw a RageUI list selector.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
    workValue2 = RageUI
    workValue2 = workValue2.List
    flag4 = "Near Plane In"
    flag5 = textValue23
    numberValue4 = textValue25
    flag6 = ""
    flag7 = {}
    flag8 = true

    -- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg12, arg22, arg32, arg42) ===
    function workValue11(arg12, arg22, arg32, arg42)
      local cmgCall2, numberValue5, numberValue6, flag10, flag12, workValue12, workValue3, workValue5
      cmgCall2 = textValue25
      if arg42 ~= cmgCall2 then
        textValue25 = arg42
        cmgCall2 = SetHidofOverride
        numberValue5 = true
        numberValue6 = true
        flag12 = textValue24
        flag10 = textValue23
        flag10 = flag10[flag12]
        workValue12 = textValue25
        flag12 = textValue23
        flag12 = flag12[workValue12]
        workValue3 = textValue26
        workValue12 = textValue23
        workValue12 = workValue12[workValue3]
        workValue5 = textValue27
        workValue3 = textValue23
        workValue3 = workValue3[workValue5]
        cmgCall2(numberValue5, numberValue6, flag10, flag12, workValue12, workValue3)
      end
    end

    -- === HELPER FUNCTION (decompiler name: textValue52; parameters: none) ===
    function textValue52()
      local arg12, arg22
    end
    flag14 = nil
    -- Beginner: Draw a RageUI list selector.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
    workValue2 = RageUI
    workValue2 = workValue2.List
    flag4 = "Far Plane Out"
    flag5 = textValue23
    numberValue4 = textValue26
    flag6 = ""
    flag7 = {}
    flag8 = true

    -- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg12, arg22, arg32, arg42) ===
    function workValue11(arg12, arg22, arg32, arg42)
      local cmgCall2, numberValue5, numberValue6, flag10, flag12, workValue12, workValue3, workValue5
      cmgCall2 = textValue26
      if arg42 ~= cmgCall2 then
        textValue26 = arg42
        cmgCall2 = SetHidofOverride
        numberValue5 = true
        numberValue6 = true
        flag12 = textValue24
        flag10 = textValue23
        flag10 = flag10[flag12]
        workValue12 = textValue25
        flag12 = textValue23
        flag12 = flag12[workValue12]
        workValue3 = textValue26
        workValue12 = textValue23
        workValue12 = workValue12[workValue3]
        workValue5 = textValue27
        workValue3 = textValue23
        workValue3 = workValue3[workValue5]
        cmgCall2(numberValue5, numberValue6, flag10, flag12, workValue12, workValue3)
      end
    end

    -- === HELPER FUNCTION (decompiler name: textValue52; parameters: none) ===
    function textValue52()
      local arg12, arg22
    end
    flag14 = nil
    -- Beginner: Draw a RageUI list selector.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
    workValue2 = RageUI
    workValue2 = workValue2.List
    flag4 = "Far Plane In"
    flag5 = textValue23
    numberValue4 = textValue27
    flag6 = ""
    flag7 = {}
    flag8 = true

    -- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg12, arg22, arg32, arg42) ===
    function workValue11(arg12, arg22, arg32, arg42)
      local cmgCall2, numberValue5, numberValue6, flag10, flag12, workValue12, workValue3, workValue5
      cmgCall2 = textValue27
      if arg42 ~= cmgCall2 then
        textValue27 = arg42
        cmgCall2 = SetHidofOverride
        numberValue5 = true
        numberValue6 = true
        flag12 = textValue24
        flag10 = textValue23
        flag10 = flag10[flag12]
        workValue12 = textValue25
        flag12 = textValue23
        flag12 = flag12[workValue12]
        workValue3 = textValue26
        workValue12 = textValue23
        workValue12 = workValue12[workValue3]
        workValue5 = textValue27
        workValue3 = textValue23
        workValue3 = workValue3[workValue5]
        cmgCall2(numberValue5, numberValue6, flag10, flag12, workValue12, workValue3)
      end
    end

    -- === HELPER FUNCTION (decompiler name: textValue52; parameters: none) ===
    function textValue52()
      local arg12, arg22
    end
    flag14 = nil
    -- Beginner: Draw a RageUI list selector.
    workValue2(flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
  end

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
  function workValue10()
    local workValue2, flag4
  end
  arg1(arg2, arg3, arg4, textValue43, textValue49, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "weather_time_manager"
  textValue43 = "cinematic"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue43)
  arg3 = true
  arg4 = true
  textValue43 = true

  -- === HELPER FUNCTION (decompiler name: textValue49; parameters: none) ===
  function textValue49()
    local workValue2, flag4, flag5, numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2
    workValue2 = RageUI
    workValue2 = workValue2.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22
    end
    workValue2(flag4)

    -- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
    function workValue2()
      local arg12, arg22, arg32, arg42, cmgCall2
      arg12 = true
      textValue16 = arg12
      arg12 = CMG
      arg12 = arg12.overrideTime
      arg32 = textValue18
      arg22 = textValue17
      arg22 = arg22[arg32]
      arg42 = textValue20
      arg32 = textValue19
      arg32 = arg32[arg42]
      cmgCall2 = textValue22
      arg42 = textValue21
      arg42 = arg42[cmgCall2]
      arg12(arg22, arg32, arg42)
    end

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22, arg32, arg42
      arg12 = false
      textValue16 = arg12
      arg12 = DecorSetBool
      arg22 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg22 = arg22()
      arg32 = "a99d39faff"
      arg42 = false
      arg12(arg22, arg32, arg42)
      arg12 = CMG
      arg12 = arg12.cancelOverrideTimeWeather
      arg12()
    end
    flag5 = RageUI
    flag5 = flag5.Checkbox
    numberValue4 = "Override Weather/Time"
    flag6 = ""
    flag7 = textValue16
    flag8 = {}
    workValue11 = RageUI
    workValue11 = workValue11.CheckboxStyle
    workValue11 = workValue11.Car
    flag8.Style = workValue11

    -- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg12, arg22, arg32, arg42) ===
    function workValue11(arg12, arg22, arg32, arg42)
      textValue16 = arg42
    end
    textValue52 = workValue2
    flag14 = flag4
    -- Beginner: Draw a RageUI checkbox.
    flag5(numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14)
    flag5 = RageUI
    flag5 = flag5.List
    numberValue4 = "Hours"
    flag6 = textValue17
    flag7 = textValue18
    flag8 = ""
    workValue11 = {}
    textValue52 = true

    -- === HELPER FUNCTION (decompiler name: flag14; parameters: arg12, arg22, arg32, arg42) ===
    function flag14(arg12, arg22, arg32, arg42)
      local cmgCall2, numberValue5, numberValue6, flag10, flag12
      cmgCall2 = textValue18
      if arg42 ~= cmgCall2 then
        textValue18 = arg42
        cmgCall2 = textValue16
        if cmgCall2 then
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.overrideTime
          numberValue6 = textValue18
          numberValue5 = textValue17
          numberValue5 = numberValue5[numberValue6]
          flag10 = textValue20
          numberValue6 = textValue19
          numberValue6 = numberValue6[flag10]
          flag12 = textValue22
          flag10 = textValue21
          flag10 = flag10[flag12]
          cmgCall2(numberValue5, numberValue6, flag10)
        end
      end
    end

    -- === HELPER FUNCTION: position() ===
    function position()
      local arg12, arg22
    end
    position2 = nil
    -- Beginner: Draw a RageUI list selector.
    flag5(numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2)
    flag5 = RageUI
    flag5 = flag5.List
    numberValue4 = "Minutes"
    flag6 = textValue19
    flag7 = textValue20
    flag8 = ""
    workValue11 = {}
    textValue52 = true

    -- === HELPER FUNCTION (decompiler name: flag14; parameters: arg12, arg22, arg32, arg42) ===
    function flag14(arg12, arg22, arg32, arg42)
      local cmgCall2, numberValue5, numberValue6, flag10, flag12
      cmgCall2 = textValue20
      if arg42 ~= cmgCall2 then
        textValue20 = arg42
        cmgCall2 = textValue16
        if cmgCall2 then
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.overrideTime
          numberValue6 = textValue18
          numberValue5 = textValue17
          numberValue5 = numberValue5[numberValue6]
          flag10 = textValue20
          numberValue6 = textValue19
          numberValue6 = numberValue6[flag10]
          flag12 = textValue22
          flag10 = textValue21
          flag10 = flag10[flag12]
          cmgCall2(numberValue5, numberValue6, flag10)
        end
      end
    end

    -- === HELPER FUNCTION: position() ===
    function position()
      local arg12, arg22
    end
    position2 = nil
    -- Beginner: Draw a RageUI list selector.
    flag5(numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2)
    flag5 = RageUI
    flag5 = flag5.List
    numberValue4 = "Seconds"
    flag6 = textValue21
    flag7 = textValue22
    flag8 = ""
    workValue11 = {}
    textValue52 = true

    -- === HELPER FUNCTION (decompiler name: flag14; parameters: arg12, arg22, arg32, arg42) ===
    function flag14(arg12, arg22, arg32, arg42)
      local cmgCall2, numberValue5, numberValue6, flag10, flag12
      cmgCall2 = textValue22
      if arg42 ~= cmgCall2 then
        textValue22 = arg42
        cmgCall2 = textValue16
        if cmgCall2 then
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.overrideTime
          numberValue6 = textValue18
          numberValue5 = textValue17
          numberValue5 = numberValue5[numberValue6]
          flag10 = textValue20
          numberValue6 = textValue19
          numberValue6 = numberValue6[flag10]
          flag12 = textValue22
          flag10 = textValue21
          flag10 = flag10[flag12]
          cmgCall2(numberValue5, numberValue6, flag10)
        end
      end
    end

    -- === HELPER FUNCTION: position() ===
    function position()
      local arg12, arg22
    end
    position2 = nil
    -- Beginner: Draw a RageUI list selector.
    flag5(numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2)
    flag5 = RageUI
    flag5 = flag5.List
    numberValue4 = "Weather"
    flag6 = textValue28
    flag7 = textValue29
    flag8 = ""
    workValue11 = {}
    textValue52 = true

    -- === HELPER FUNCTION (decompiler name: flag14; parameters: arg12, arg22, arg32, arg42) ===
    function flag14(arg12, arg22, arg32, arg42)
      local cmgCall2, numberValue5, numberValue6
      cmgCall2 = textValue29
      if arg42 ~= cmgCall2 then
        textValue29 = arg42
        cmgCall2 = textValue16
        if cmgCall2 then
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.setWeather
          numberValue6 = textValue29
          numberValue5 = textValue28
          numberValue5 = numberValue5[numberValue6]
          cmgCall2(numberValue5)
        end
      end
    end

    -- === HELPER FUNCTION: position() ===
    function position()
      local arg12, arg22
    end
    position2 = nil
    -- Beginner: Draw a RageUI list selector.
    flag5(numberValue4, flag6, flag7, flag8, workValue11, textValue52, flag14, position, position2)
  end

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
  function workValue10()
    local workValue2, flag4
  end
  arg1(arg2, arg3, arg4, textValue43, textValue49, workValue10)
end
textValue34(textValue35, textValue36, textValue37, textValue38)

-- === HELPER FUNCTION (decompiler name: textValue34; parameters: none) ===
function textValue34()
  local arg1, arg2, arg3, arg4, textValue43, textValue49, workValue10, flag9, flag11, flag13, flag
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = textValue16
  if arg2 then
    arg2 = textValue14
    if nil == arg2 then
      arg2 = CMG
      arg2 = arg2.isDisplayVisible
      arg3 = "radar"
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = drawNativeText
        arg3 = "~r~CINEMATIC MODE ENABLED"
        -- Beginner: Draw GTA-style text on screen.
        arg2(arg3)
      end
    end
    arg2 = DecorExistOn
    arg3 = arg1
    arg4 = "a99d39faff"
    arg2 = arg2(arg3, arg4)
    if not arg2 then
      arg2 = DecorSetBool
      arg3 = arg1
      arg4 = "a99d39faff"
      textValue43 = true
      arg2(arg3, arg4, textValue43)
    end
  end
  arg2 = textValue3
  if not arg2 then
    arg2 = textValue4
    if 0 == arg2 then
      goto flow_label_52
    end
  end
  arg2 = CMG
  arg2 = arg2.isNoClipActive
  arg2 = arg2()
  if arg2 then
    arg2 = CMG
    arg2 = arg2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg2 = arg2()
    if 0 ~= arg2 then
      arg2 = tCMG
      arg2 = arg2.notify
      arg3 = "~r~You may not noclip when in a vehicle."
      -- Beginner: Show a notification to the player.
      arg2(arg3)
      arg2 = tCMG
      arg2 = arg2.toggleNoclip
      arg2()
    end
  end
  ::flow_label_52::
  arg2 = textValue3
  if arg2 then
    arg2 = CMG
    arg2 = arg2.isNoClipActive
    arg2 = arg2()
    if arg2 then
      arg2 = drawNativeText
      arg3 = "~g~Press [SPACEBAR] to confirm camera placement."
      -- Beginner: Draw GTA-style text on screen.
      arg2(arg3)
      arg2 = IsControlJustPressed
      arg3 = 0
      arg4 = 22
      arg2 = arg2(arg3, arg4)
      if arg2 then
        arg2 = {}
        arg3 = GetEntityCoords
        arg4 = arg1
        -- Beginner: result below is entityCoords.
        arg3 = arg3(arg4)
        arg2.position = arg3
        arg3 = GetGameplayCamRot
        arg4 = 0
        arg3 = arg3(arg4)
        arg2.rotation = arg3
        arg2.transition = 5000
        arg3 = textValue9
        arg2.type = arg3
        arg2.screeneffect = ""
        arg2.timecycleEffect = ""
        arg2.timecycleIntensity = 1.0
        arg2.focusType = ""
        arg2.focusData = 0
        arg2.shake = ""
        arg2.fov = 65.0
        arg3 = CMG
        arg3 = arg3.createCamera
        arg4 = textValue2
        textValue43 = arg2
        arg3(arg4, textValue43)
        arg3 = tCMG
        arg3 = arg3.toggleNoclip
        arg3()
        arg3 = false
        textValue3 = arg3
        arg3 = SetEntityCoords
        arg4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg4 = arg4()
        textValue43 = textValue8.x
        textValue49 = textValue8.y
        workValue10 = textValue8.z
        flag9 = true
        flag11 = false
        flag13 = false
        flag = false
        -- Beginner: Move/teleport an entity to new coordinates.
        arg3(arg4, textValue43, textValue49, workValue10, flag9, flag11, flag13, flag)
      end
    end
  end
  arg2 = textValue4
  if 0 ~= arg2 then
    arg2 = CMG
    arg2 = arg2.isNoClipActive
    arg2 = arg2()
    if arg2 then
      arg2 = drawNativeText
      arg3 = "~g~Press [SPACEBAR] to confirm camera placement."
      -- Beginner: Draw GTA-style text on screen.
      arg2(arg3)
      arg2 = IsControlJustPressed
      arg3 = 0
      arg4 = 22
      arg2 = arg2(arg3, arg4)
      if arg2 then
        arg2 = {}
        arg3 = GetEntityCoords
        arg4 = arg1
        -- Beginner: result below is entityCoords.
        arg3 = arg3(arg4)
        arg2.position = arg3
        arg3 = GetGameplayCamRot
        arg4 = 0
        arg3 = arg3(arg4)
        arg2.rotation = arg3
        arg4 = textValue2
        arg3 = textValue
        arg3 = arg3[arg4]
        arg4 = textValue4
        arg3 = arg3[arg4]
        arg3 = arg3.transition
        arg2.transition = arg3
        arg4 = textValue2
        arg3 = textValue
        arg3 = arg3[arg4]
        arg4 = textValue4
        arg3 = arg3[arg4]
        arg3 = arg3.type
        arg2.type = arg3
        arg4 = textValue2
        arg3 = textValue
        arg3 = arg3[arg4]
        arg4 = textValue4
        arg3 = arg3[arg4]
        arg3 = arg3.screeneffect
        arg2.screeneffect = arg3
        arg4 = textValue2
        arg3 = textValue
        arg3 = arg3[arg4]
        arg4 = textValue4
        arg3 = arg3[arg4]
        arg3 = arg3.timecycleEffect
        arg2.timecycleEffect = arg3
        arg4 = textValue2
        arg3 = textValue
        arg3 = arg3[arg4]
        arg4 = textValue4
        arg3 = arg3[arg4]
        arg3 = arg3.timecycleIntensity
        arg2.timecycleIntensity = arg3
        arg4 = textValue2
        arg3 = textValue
        arg3 = arg3[arg4]
        arg4 = textValue4
        arg3 = arg3[arg4]
        arg3 = arg3.focusType
        arg2.focusType = arg3
        arg4 = textValue2
        arg3 = textValue
        arg3 = arg3[arg4]
        arg4 = textValue4
        arg3 = arg3[arg4]
        arg3 = arg3.focusData
        arg2.focusData = arg3
        arg4 = textValue2
        arg3 = textValue
        arg3 = arg3[arg4]
        arg4 = textValue4
        arg3 = arg3[arg4]
        arg3 = arg3.shake
        arg2.shake = arg3
        arg4 = textValue2
        arg3 = textValue
        arg3 = arg3[arg4]
        arg4 = textValue4
        arg3 = arg3[arg4]
        arg3 = arg3.fov
        if not arg3 then
          arg3 = 65.0
        end
        arg2.fov = arg3
        arg3 = CMG
        arg3 = arg3.modifyCamera
        arg4 = textValue2
        textValue43 = arg2
        textValue49 = textValue4
        arg3(arg4, textValue43, textValue49)
        arg3 = tCMG
        arg3 = arg3.toggleNoclip
        arg3()
        arg3 = 0
        textValue4 = arg3
        arg3 = SetEntityCoords
        arg4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg4 = arg4()
        textValue43 = textValue8.x
        textValue49 = textValue8.y
        workValue10 = textValue8.z
        flag9 = false
        flag11 = false
        flag13 = false
        flag = false
        -- Beginner: Move/teleport an entity to new coordinates.
        arg3(arg4, textValue43, textValue49, workValue10, flag9, flag11, flag13, flag)
      end
    end
  end
  arg2 = textValue30
  if nil ~= arg2 then
    arg3 = textValue2
    arg2 = textValue
    arg2 = arg2[arg3]
    arg3 = textValue30
    arg2 = arg2[arg3]
    arg3 = SetFocusPosAndVel
    arg4 = arg2.position
    arg4 = arg4.x
    textValue43 = arg2.position
    textValue43 = textValue43.y
    textValue49 = arg2.position
    textValue49 = textValue49.z
    workValue10 = 0.0
    flag9 = 0.0
    flag11 = 0.0
    arg3(arg4, textValue43, textValue49, workValue10, flag9, flag11)
    arg3 = SetCamCoord
    arg4 = textValue6
    textValue43 = arg2.position
    textValue43 = textValue43.x
    textValue49 = arg2.position
    textValue49 = textValue49.y
    workValue10 = arg2.position
    workValue10 = workValue10.z
    arg3(arg4, textValue43, textValue49, workValue10)
    arg3 = SetCamRot
    arg4 = textValue6
    textValue43 = arg2.rotation
    textValue43 = textValue43.x
    textValue49 = arg2.rotation
    textValue49 = textValue49.y
    workValue10 = arg2.rotation
    workValue10 = workValue10.z
    flag9 = 2
    arg3(arg4, textValue43, textValue49, workValue10, flag9)
    arg3 = SetCamFov
    arg4 = textValue6
    textValue43 = arg2.fov
    if not textValue43 then
      textValue43 = 65.0
    end
    textValue43 = textValue43 + 0.001
    arg3(arg4, textValue43)
  end
  arg2 = textValue14
  if nil ~= arg2 then
    arg2 = GetCamCoord
    arg3 = textValue14
    arg2 = arg2(arg3)
    arg3 = SetFocusPosAndVel
    arg4 = arg2.x
    textValue43 = arg2.y
    textValue49 = arg2.z
    workValue10 = 0.0
    flag9 = 0.0
    flag11 = 0.0
    arg3(arg4, textValue43, textValue49, workValue10, flag9, flag11)
  end
end
textValue35 = _ENV
textValue36 = "DecorRegister"
textValue35 = textValue35[textValue36]
textValue36 = "a99d39faff"
textValue37 = 2
textValue35(textValue36, textValue37)
textValue35 = _ENV
textValue36 = "CMG"
textValue35 = textValue35[textValue36]
textValue36 = "createThreadOnTick"
textValue35 = textValue35[textValue36]
textValue36 = textValue34
textValue37 = "Cinematic Mode"
textValue35(textValue36, textValue37)
textValue35 = -1
textValue36 = _ENV
textValue37 = "RegisterCommand"
textValue36 = textValue36[textValue37]
textValue37 = "setlastvehicleon"

-- === HELPER FUNCTION (decompiler name: textValue38; parameters: none) ===
function textValue38()
  local arg1, arg2, arg3, arg4, textValue43, textValue49, workValue10
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = IsPedInAnyVehicle
  arg3 = arg1
  arg4 = true
  arg2 = arg2(arg3, arg4)
  if not arg2 then
    arg2 = IsControlPressed
    arg3 = 0
    arg4 = 23
    arg2 = arg2(arg3, arg4)
    if not arg2 then
      arg2 = GetVehiclePedIsIn
      arg3 = arg1
      arg4 = true
      -- Beginner: result below is currentVehicle.
      arg2 = arg2(arg3, arg4)
      if 0 ~= arg2 then
        arg3 = SetVehicleEngineOn
        arg4 = arg2
        textValue43 = true
        textValue49 = true
        workValue10 = false
        arg3(arg4, textValue43, textValue49, workValue10)
        textValue35 = arg2
      end
    end
  end
end
textValue39 = false
textValue36(textValue37, textValue38, textValue39)
textValue36 = _ENV
textValue37 = "Citizen"
textValue36 = textValue36[textValue37]
textValue37 = "CreateThread"
textValue36 = textValue36[textValue37]

-- === HELPER FUNCTION (decompiler name: textValue37; parameters: none) ===
function textValue37()
  local arg1, arg2, arg3, arg4, textValue43, textValue49, workValue10, flag9, flag11
  while true do
    arg1 = CMG
    arg1 = arg1.getPlayerVehicle
    arg1, arg2 = arg1()
    if 0 ~= arg1 then
      arg3 = textValue35
      if arg1 == arg3 and arg2 then
        arg3 = SetVehicleEngineOn
        arg4 = arg1
        textValue43 = false
        textValue49 = true
        workValue10 = true
        arg3(arg4, textValue43, textValue49, workValue10)
        arg3 = -1
        textValue35 = arg3
      end
    end
    arg3 = GetEntityAttachedTo
    arg4 = PlayerPedId
    arg4, textValue43, textValue49, workValue10, flag9, flag11 = arg4()
    arg3 = arg3(arg4, textValue43, textValue49, workValue10, flag9, flag11)
    if 0 ~= arg3 then
      arg4 = IsEntityAPed
      textValue43 = arg3
      arg4 = arg4(textValue43)
      if arg4 then
        arg4 = IsPedAPlayer
        textValue43 = arg3
        arg4 = arg4(textValue43)
        if arg4 then
          arg4 = IsEntityVisible
          textValue43 = arg3
          arg4 = arg4(textValue43)
          if not arg4 then
            arg4 = NetworkGetPlayerIndexFromPed
            textValue43 = arg3
            arg4 = arg4(textValue43)
            if -1 ~= arg4 then
              textValue43 = GetPlayerServerId
              textValue49 = arg4
              -- Beginner: result below is serverId.
              textValue43 = textValue43(textValue49)
              if textValue43 > 0 then
                textValue49 = CMG
                textValue49 = textValue49.clientGetPlayerIsStaff
                workValue10 = textValue43
                textValue49 = textValue49(workValue10)
                if not textValue49 then
                  textValue49 = SetEntityVisible
                  workValue10 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  workValue10 = workValue10()
                  flag9 = true
                  flag11 = true
                  textValue49(workValue10, flag9, flag11)
                  textValue49 = DetachEntity
                  workValue10 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  workValue10 = workValue10()
                  flag9 = true
                  flag11 = true
                  textValue49(workValue10, flag9, flag11)
                end
              end
            end
          end
        end
      end
    end
    arg4 = Citizen
    arg4 = arg4.Wait
    textValue43 = 1000
    arg4(textValue43)
  end
end
textValue36(textValue37)
