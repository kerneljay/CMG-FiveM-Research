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
local cmgCall, dataTable5, textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable5 = "cfg/cfg_emotes"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable5)
dataTable5 = cmgCall.shared
if not dataTable5 then
  dataTable5 = {}
end
cmgCall.shared = dataTable5
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "mainmenu"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateMenu
textValue12 = ""
textValue13 = "Main Menu"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuHeight
rageUiCall7 = rageUiCall7()
rageUiCall8 = "cmg_emotes"
textValue = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "emotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "mainmenu"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "emotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "danceemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Dance Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "danceemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "customemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Custom Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "customemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "fireworksemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Fireworks Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "fireworksemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "carryemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Carry (nearby player)"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "carryemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "vehicleescrowemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Vehicle Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "vehicleescrowemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "punishemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Punish Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "punishemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "roleplayescrowemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Roleplay Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "roleplayescrowemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "flagescrowemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Flag Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "flagescrowemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "trophyescrowemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Trophy Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "trophyescrowemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "standardemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Standard Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "standardemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "gunemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Gun Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "gunemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "favouriteemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Favourite Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "propemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Prop Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "propemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "sharedemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Shared Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "walkingstyles"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "mainmenu"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Walking Styles"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "moods"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "mainmenu"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Moods"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "animalemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Animal Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "animalemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = RMenu
dataTable5 = dataTable5.Add
textValue9 = "emotesmenu"
textValue11 = "searchemotes"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
rageUiCall5 = "emotesmenu"
rageUiCall7 = "emotes"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, rageUiCall5, rageUiCall7)
textValue13 = ""
rageUiCall5 = "Search Emotes"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
textValue = "cmg_emotes"
textValue3 = "cmg_emotes"
rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60 = rageUiCall4(textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3)
dataTable5(textValue9, textValue11, rageUiCall4, textValue12, textValue13, rageUiCall5, rageUiCall7, rageUiCall8, textValue, textValue3, textValue4, dataTable3, numberValue2, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, numberValue4, flag8, numberValue5, dataTable6, flag10, workValue14, numberValue6, workValue15, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, workValue16, flag20, flag21, flag23, textValue10, cmgCall2, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue28, dataTable7, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, workValue29, workValue30, workValue31, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue54, workValue55, workValue56, workValue57, rageUiCall6, textValue16, workValue58, flag26, flag27, textValue17, cmgCall3, textValue19, workValue60)
dataTable5 = RMenu
textValue9 = dataTable5
dataTable5 = dataTable5.Get
textValue11 = "emotesmenu"
rageUiCall4 = "searchemotes"
-- Beginner: result below is menu.
dataTable5 = dataTable5(textValue9, textValue11, rageUiCall4)
textValue9 = dataTable5
dataTable5 = dataTable5.AddInstructionButton
textValue11 = {}
rageUiCall4 = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
textValue12 = "Favourite emote"
textValue11[1] = rageUiCall4
textValue11[2] = textValue12
dataTable5(textValue9, textValue11)
dataTable5 = {}
textValue9 = {}
textValue11 = {}

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: arg1) ===
function rageUiCall4(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = string
  arg2 = arg2.lower
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = string
  arg3 = arg3.gsub
  arg4 = arg2
  arg5 = "[^%w]+"
  arg6 = "_"
  arg3 = arg3(arg4, arg5, arg6)
  arg2 = arg3
  arg3 = string
  arg3 = arg3.gsub
  arg4 = arg2
  arg5 = "^_+"
  arg6 = ""
  arg3 = arg3(arg4, arg5, arg6)
  arg2 = arg3
  arg3 = string
  arg3 = arg3.gsub
  arg4 = arg2
  arg5 = "_+$"
  arg6 = ""
  arg3 = arg3(arg4, arg5, arg6)
  arg2 = arg3
  if "" == arg2 then
    arg3 = "other"
    return arg3
  end
  return arg2
end
textValue12 = {}
textValue12.uk = "United Kingdom"
textValue12.us = "United States"
textValue12.eu = "European Union"
textValue12.scotland = "Scotland"
textValue12.ireland = "Ireland"
textValue12.german = "Germany"
textValue12.france = "France"
textValue12.canada = "Canada"
textValue12.mexico = "Mexico"
textValue12.japan = "Japan"
textValue12.russia = "Russia"
textValue12.china = "China"
textValue12.brazil = "Brazil"
textValue12.australia = "Australia"
textValue12.argentina = "Argentina"
textValue12.spain = "Spain"
textValue12.italy = "Italy"
textValue12.poland = "Poland"
textValue12.portugal = "Portugal"
textValue12.turkey = "Turkey"
textValue12.korea = "South Korea"
textValue12.southkorea = "South Korea"
textValue12.austria = "Austria"
textValue12.belgium = "Belgium"
textValue12.sapd = "SAPD"
textValue12.sa = "San Andreas"
textValue12.lsfd = "LSFD"
textValue12.lssd = "LSSD"
textValue12.lsservices = "LS Services"
textValue12.sheriff = "Sheriff"
textValue12.fbi = "FBI"
textValue12.fp = "FP"

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: arg1) ===
function textValue13(arg1)
  local arg2, arg3, arg4, arg5, arg6
  if not arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = string
  arg2 = arg2.lower
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = string
  arg3 = arg3.gsub
  arg4 = arg2
  arg5 = "_s$"
  arg6 = ""
  arg3 = arg3(arg4, arg5, arg6)
  arg2 = arg3
  arg3 = textValue12
  arg3 = arg3[arg2]
  if arg3 then
    arg3 = textValue12
    arg3 = arg3[arg2]
    return arg3
  end
  arg3 = string
  arg3 = arg3.gsub
  arg4 = arg2
  arg5 = "_"
  arg6 = " "
  arg3 = arg3(arg4, arg5, arg6)
  arg2 = arg3
  arg3 = string
  arg3 = arg3.gsub
  arg4 = " "
  arg5 = arg2
  arg4 = arg4 .. arg5
  arg5 = "%W%l"
  arg6 = string
  arg6 = arg6.upper
  arg3 = arg3(arg4, arg5, arg6)
  arg4 = arg3
  arg3 = arg3.sub
  arg5 = 2
  return arg3(arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: rageUiCall5; parameters: arg1) ===
function rageUiCall5(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  if not arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = string
  arg2 = arg2.lower
  arg3 = arg1
  arg2 = arg2(arg3)
  if "prop_fnccorgm_02pole" == arg2 or "a3d_pole" == arg2 then
    arg3 = nil
    return arg3
  end
  if "stt_prop_flagpole_1a" == arg2 then
    arg3 = "Giant Flag Pole"
    return arg3
  end
  arg3 = string
  arg3 = arg3.find
  arg4 = arg2
  arg5 = "ind_prop_dlc_flag"
  arg6 = 1
  arg7 = true
  arg3 = arg3(arg4, arg5, arg6, arg7)
  if arg3 then
    arg3 = "DLC Flag"
    return arg3
  end
  arg3 = string
  arg3 = arg3.match
  arg4 = arg2
  arg5 = "apa_prop_flag_(.+)"
  arg3 = arg3(arg4, arg5)
  if arg3 then
    arg4 = textValue13
    arg5 = arg3
    return arg4(arg5)
  end
  arg4 = string
  arg4 = arg4.match
  arg5 = arg2
  arg6 = "prop_flag_(.+)"
  arg4 = arg4(arg5, arg6)
  if arg4 then
    arg5 = textValue13
    arg6 = arg4
    return arg5(arg6)
  end
  arg5 = nil
  return arg5
end

-- === HELPER FUNCTION (decompiler name: rageUiCall7; parameters: arg1, arg2) ===
function rageUiCall7(arg1, arg2)
  local arg3, arg4, arg5, arg6
  if arg1 then
    arg3 = string
    arg3 = arg3.match
    arg4 = arg1
    arg5 = "^(.-) \194\183 "
    arg3 = arg3(arg4, arg5)
    if arg3 and "" ~= arg3 then
      return arg3
    end
  end
  if arg2 then
    arg3 = arg2.animationOptions
    if arg3 then
      arg3 = arg2.animationOptions
      arg4 = rageUiCall5
      arg5 = arg3.secondProp
      arg4 = arg4(arg5)
      if arg4 then
        return arg4
      end
      arg5 = rageUiCall5
      arg6 = arg3.prop
      arg5 = arg5(arg6)
      if arg5 then
        return arg5
      end
    end
  end
  arg3 = "Other"
  return arg3
end

-- === HELPER FUNCTION (decompiler name: rageUiCall8; parameters: arg1) ===
function rageUiCall8(arg1)
  local arg2, arg3, arg4
  if not arg1 then
    arg2 = ""
    return arg2
  end
  arg2 = string
  arg2 = arg2.match
  arg3 = arg1
  arg4 = "^.- \194\183 (.+)$"
  arg2 = arg2(arg3, arg4)
  if arg2 then
    return arg2
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5, dataTable4, rageUiCall, textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5, flag6
  arg1 = cmgCall.escrowPazeeeKeys
  if not arg1 then
    return
  end
  arg1 = {}

  -- === HELPER FUNCTION: arg2(arg12, arg22) ===
  function arg2(arg12, arg22)
    local arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable, dataTable2
    if not arg12 then
      return
    end
    arg32 = ipairs
    workValue17 = arg12
    arg32, workValue17, workValue27, flag25 = arg32(workValue17)
    for numberValue19, textValue15 in arg32, workValue17, workValue27, flag25 do
      workValue59 = cmgCall.emotes
      workValue59 = workValue59[textValue15]
      if not workValue59 then
        workValue59 = cmgCall.props
        workValue59 = workValue59[textValue15]
        if not workValue59 then
          workValue59 = cmgCall.shared
          if workValue59 then
            workValue59 = cmgCall.shared
            workValue59 = workValue59[textValue15]
          end
        end
      end
      if workValue59 then
        playerPed = rageUiCall7
        workValue = workValue59[3]
        dataTable = workValue59
        playerPed = playerPed(workValue, dataTable)
        workValue = arg1
        workValue = workValue[playerPed]
        if not workValue then
          workValue = arg1
          dataTable = {}
          workValue[playerPed] = dataTable
        end
        workValue = arg1
        workValue = workValue[playerPed]
        dataTable = arg1
        dataTable = dataTable[playerPed]
        dataTable = #dataTable
        dataTable = dataTable + 1
        dataTable2 = {}
        dataTable2.command = textValue15
        dataTable2.emoteInfo = workValue59
        dataTable2.useNearby = arg22
        workValue[dataTable] = dataTable2
      end
    end
  end
  arg3 = arg2
  arg4 = cmgCall.escrowPazeeeKeys
  arg4 = arg4.flagEmotes
  arg5 = false
  arg3(arg4, arg5)
  arg3 = arg2
  arg4 = cmgCall.escrowPazeeeKeys
  arg4 = arg4.flagProps
  arg5 = false
  arg3(arg4, arg5)
  arg3 = arg2
  arg4 = cmgCall.escrowPazeeeKeys
  arg4 = arg4.flagShared
  arg5 = true
  arg3(arg4, arg5)
  arg3 = {}
  dataTable5 = arg3
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = dataTable5
    arg9 = #arg9
    arg10 = arg9 + 1
    arg9 = dataTable5
    arg9[arg10] = arg7
  end
  arg3 = table
  arg3 = arg3.sort
  arg4 = dataTable5

  -- === HELPER FUNCTION: arg5(arg12, arg22) ===
  function arg5(arg12, arg22)
    local arg32
    if "Other" == arg12 then
      arg32 = false
      return arg32
    end
    if "Other" == arg22 then
      arg32 = true
      return arg32
    end
    arg32 = arg12 < arg22
    return arg32
  end
  arg3(arg4, arg5)
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  arg5 = "emotesmenu"
  arg6 = "flagescrowemotes"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, arg5, arg6)
  arg4 = ipairs
  arg5 = dataTable5
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8, arg9 in arg4, arg5, arg6, arg7 do
    arg10 = arg1[arg9]
    arg11 = table
    arg11 = arg11.sort
    workValue2 = arg10

    -- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg12, arg22) ===
    function textValue5(arg12, arg22)
      local arg32, workValue17, workValue27
      arg32 = rageUiCall8
      workValue17 = arg12.emoteInfo
      workValue17 = workValue17[3]
      arg32 = arg32(workValue17)
      workValue17 = rageUiCall8
      workValue27 = arg22.emoteInfo
      workValue27 = workValue27[3]
      workValue17 = workValue17(workValue27)
      arg32 = arg32 < workValue17
      return arg32
    end
    arg11(workValue2, textValue5)
    arg11 = textValue11
    arg11[arg9] = arg10
    arg11 = "flagcountry_"
    workValue2 = rageUiCall4
    textValue5 = arg9
    workValue2 = workValue2(textValue5)
    arg11 = arg11 .. workValue2
    workValue2 = textValue9
    workValue2[arg9] = arg11
    workValue2 = RMenu
    workValue2 = workValue2.Add
    textValue5 = "emotesmenu"
    dataTable4 = arg11
    rageUiCall = RageUI
    rageUiCall = rageUiCall.CreateSubMenu
    textValue6 = arg3
    textValue8 = ""
    flag = arg9
    rageUiCall2 = CMG
    rageUiCall2 = rageUiCall2.getRageUIMenuWidth
    rageUiCall2 = rageUiCall2()
    rageUiCall3 = CMG
    rageUiCall3 = rageUiCall3.getRageUIMenuHeight
    rageUiCall3 = rageUiCall3()
    flag5 = "cmg_emotes"
    flag6 = "cmg_emotes"
    rageUiCall, textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5, flag6 = rageUiCall(textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5, flag6)
    workValue2(textValue5, dataTable4, rageUiCall, textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5, flag6)
    workValue2 = RMenu
    textValue5 = workValue2
    workValue2 = workValue2.Get
    dataTable4 = "emotesmenu"
    rageUiCall = arg11
    -- Beginner: result below is menu.
    workValue2 = workValue2(textValue5, dataTable4, rageUiCall)
    textValue5 = workValue2
    workValue2 = workValue2.AddInstructionButton
    dataTable4 = {}
    rageUiCall = "~INPUT_VEH_FLY_ATTACK_CAMERA~"
    textValue6 = "Favourite emote"
    dataTable4[1] = rageUiCall
    dataTable4[2] = textValue6
    workValue2(textValue5, dataTable4)
  end
end
textValue3 = textValue
textValue3()
textValue3 = false
textValue4 = ""
dataTable3 = {}
numberValue2 = 0
workValue5 = nil
workValue6 = nil
workValue7 = nil
workValue8 = nil

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3
  if nil == arg1 or false == arg1 then
    arg2 = false
    return arg2
  end
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "number" == arg2 and 0 == arg1 then
    arg2 = false
    return arg2
  end
  arg2 = true
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, arg3
  arg1 = IsDisabledControlPressed
  arg2 = 0
  arg3 = 47
  arg1 = arg1(arg2, arg3)
  if not arg1 then
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 47
    arg1 = arg1(arg2, arg3)
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, arg3
  arg1 = IsDisabledControlJustPressed
  arg2 = 0
  arg3 = 47
  arg1 = arg1(arg2, arg3)
  if not arg1 then
    arg1 = IsControlJustPressed
    arg2 = 0
    arg3 = 47
    arg1 = arg1(arg2, arg3)
  end
  return arg1
end
numberValue4 = 900
flag8 = false
numberValue5 = 0
dataTable6 = {}
flag10 = false
workValue14 = nil
numberValue6 = 0
workValue15 = nil
numberValue8 = 0
numberValue9 = 0
numberValue10 = 0
numberValue11 = 1500
numberValue12 = 0

-- === HELPER FUNCTION (decompiler name: workValue16; parameters: none) ===
function workValue16()
  local arg1, arg2, arg3
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = numberValue12
  arg2 = arg1 - arg2
  arg3 = 5000
  if arg2 < arg3 then
    return
  end
  numberValue12 = arg1
  arg2 = notify
  arg3 = "~r~Emotes are being rate limited."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
end
flag20 = true
flag21 = false
flag23 = false
textValue10 = ""
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1) ===
function workValue18(arg1)
  local arg2
  flag21 = arg1
end
cmgCall2.setEmotesIgnoreCombatTimer = workValue18

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg1 = pairs
  arg2 = dataTable3
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = DeleteEntity
    arg8 = arg6
    -- Beginner: Delete a GTA entity.
    arg7(arg8)
  end
  arg1 = {}
  dataTable3 = arg1
end

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) ===
function workValue18(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
  local workValue2, textValue5, dataTable4, rageUiCall, textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7, flag14
  workValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue2 = workValue2()
  textValue5 = GetEntityCoords
  dataTable4 = workValue2
  rageUiCall = true
  -- Beginner: result below is entityCoords.
  textValue5 = textValue5(dataTable4, rageUiCall)
  dataTable4 = CMG
  dataTable4 = dataTable4.loadModel
  rageUiCall = arg1
  dataTable4 = dataTable4(rageUiCall)
  rageUiCall = CMG
  rageUiCall = rageUiCall.requestEntitySpawn
  if arg9 then
    textValue6 = "emote_object_second"
    if textValue6 then
      goto flow_label_19
    end
  end
  textValue6 = "emote_object"
  ::flow_label_19::
  textValue8 = arg1
  rageUiCall(textValue6, textValue8)
  rageUiCall = CreateObject
  textValue6 = GetHashKey
  textValue8 = arg1
  -- Beginner: result below is hash.
  textValue6 = textValue6(textValue8)
  textValue8 = textValue5.x
  flag = textValue5.y
  rageUiCall2 = textValue5.z
  rageUiCall2 = rageUiCall2 + 0.2
  rageUiCall3 = true
  flag5 = true
  flag6 = true
  -- Beginner: result below is objectEntity.
  rageUiCall = rageUiCall(textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5, flag6)
  if false == arg11 then
    textValue6 = SetEntityCollision
    textValue8 = rageUiCall
    flag = true
    rageUiCall2 = true
    textValue6(textValue8, flag, rageUiCall2)
  else
    textValue6 = SetEntityCollision
    textValue8 = rageUiCall
    flag = false
    rageUiCall2 = false
    textValue6(textValue8, flag, rageUiCall2)
  end
  textValue6 = AttachEntityToEntity
  textValue8 = rageUiCall
  flag = workValue2
  rageUiCall2 = GetPedBoneIndex
  rageUiCall3 = workValue2
  flag5 = arg2
  rageUiCall2 = rageUiCall2(rageUiCall3, flag5)
  rageUiCall3 = arg3
  flag5 = arg4
  flag6 = arg5
  flag7 = arg6
  workValue12 = arg7
  workValue13 = arg8
  flag9 = true
  flag11 = true
  flag12 = false
  flag13 = true
  numberValue7 = 1
  flag14 = true
  -- Beginner: Attach one entity to another entity.
  textValue6(textValue8, flag, rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7, flag14)
  if nil ~= arg10 then
    textValue6 = SetObjectTextureVariation
    textValue8 = rageUiCall
    flag = arg10
    textValue6(textValue8, flag)
  end
  textValue6 = table
  textValue6 = textValue6.insert
  textValue8 = dataTable3
  flag = rageUiCall
  textValue6(textValue8, flag)
  textValue6 = SetModelAsNoLongerNeeded
  textValue8 = dataTable4
  textValue6(textValue8)
end

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: arg1) ===
function workValue19(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = SetFacialIdleAnimOverride
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = arg1[2]
  arg5 = nil
  arg2(arg3, arg4, arg5)
  arg2 = true
  textValue3 = arg2
end

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg1) ===
function workValue20(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  if 0 ~= arg2 then
    arg2 = notify
    arg3 = "~r~Can not use scenarios whilst in a vehicle."
    -- Beginner: Show a notification to the player.
    arg2(arg3)
    return
  end
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = arg1[1]
  if "Scenario" == arg3 then
    arg3 = ClearPedTasks
    arg4 = arg2
    arg3(arg4)
    arg3 = TaskStartScenarioInPlace
    arg4 = arg2
    arg5 = arg1[2]
    arg6 = 0
    arg7 = true
    arg3(arg4, arg5, arg6, arg7)
  else
    arg3 = arg1[1]
    if "MaleScenario" == arg3 then
      arg3 = CMG
      arg3 = arg3.getModelGender
      arg3 = arg3()
      if "male" == arg3 then
        arg3 = ClearPedTasks
        arg4 = arg2
        arg3(arg4)
        arg3 = TaskStartScenarioInPlace
        arg4 = arg2
        arg5 = arg1[2]
        arg6 = 0
        arg7 = true
        arg3(arg4, arg5, arg6, arg7)
      else
        arg3 = notify
        arg4 = "~r~This scenario is male only."
        -- Beginner: Show a notification to the player.
        arg3(arg4)
      end
    else
      arg3 = arg1[1]
      if "ScenarioObject" == arg3 then
        arg3 = GetOffsetFromEntityInWorldCoords
        arg4 = arg2
        arg5 = 0.0
        arg6 = -0.5
        arg7 = -0.5
        arg3 = arg3(arg4, arg5, arg6, arg7)
        arg4 = ClearPedTasks
        arg5 = arg2
        arg4(arg5)
        arg4 = TaskStartScenarioAtPosition
        arg5 = arg2
        arg6 = arg1[2]
        arg7 = arg3.x
        arg8 = arg3.y
        arg9 = arg3.z
        arg10 = GetEntityHeading
        arg11 = arg2
        -- Beginner: result below is heading.
        arg10 = arg10(arg11)
        arg11 = 0
        workValue2 = true
        textValue5 = false
        -- Beginner: Make an NPC start a GTA scenario/ambient animation.
        arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5)
      end
    end
  end
  arg3 = true
  textValue3 = arg3
end

-- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg1) ===
function workValue21(arg1)
  local arg2, arg3, arg4
  arg2 = arg1.animationOptions
  arg3 = CMG
  arg3 = arg3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg3 = arg3()
  arg3 = 0 ~= arg3
  if arg3 then
    if arg2 then
      arg4 = arg2.fullBody
      if arg4 then
        arg4 = 32
        return arg4
      end
    end
    arg4 = 51
    return arg4
  end
  if not arg2 then
    arg4 = 0
    return arg4
  end
  arg4 = arg2.animFlag
  if nil ~= arg4 then
    arg4 = arg2.animFlag
    return arg4
  end
  arg4 = arg2.onFootFlag
  if nil ~= arg4 then
    arg4 = arg2.onFootFlag
    return arg4
  end
  arg4 = arg2.emoteStuck
  if arg4 then
    arg4 = 50
    return arg4
  end
  arg4 = arg2.emoteLoop
  if arg4 then
    arg4 = arg2.emoteMoving
    if arg4 then
      arg4 = 51
      return arg4
    else
      arg4 = 1
      return arg4
    end
  end
  arg4 = arg2.emoteMoving
  if arg4 then
    arg4 = 51
    return arg4
  end
  arg4 = 0
  return arg4
end

-- === HELPER FUNCTION (decompiler name: workValue22; parameters: arg1) ===
function workValue22(arg1)
  local arg2
  arg2 = arg1.animationOptions
  if arg2 then
    arg2 = arg1.animationOptions
    arg2 = arg2.emoteDuration
    if not arg2 then
      arg2 = -1
    end
    return arg2
  else
    arg2 = -1
    return arg2
  end
end

-- === HELPER FUNCTION (decompiler name: workValue23; parameters: arg1) ===
function workValue23(arg1)
  local arg2, arg3
  arg2 = Citizen
  arg2 = arg2.CreateThread

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable, dataTable2, workValue3, workValue4, textValue7, numberValue3, flag2, flag3, flag4
    arg12 = true
    flag23 = arg12
    arg12 = arg1.animationOptions
    if not arg12 then
      arg12 = {}
    end
    arg22 = arg12.emoteDuration
    if not arg22 then
      arg22 = -1
    end
    arg32 = arg12.startDelay
    if not arg32 then
      arg32 = 0
    end
    if arg32 > 0 then
      workValue17 = Citizen
      workValue17 = workValue17.Wait
      workValue27 = arg32
      workValue17(workValue27)
    end
    workValue17 = arg1
    workValue17 = workValue17[1]
    workValue27 = arg1
    workValue27 = workValue27[2]
    if not workValue17 or not workValue27 then
      flag25 = false
      flag23 = flag25
      return
    end
    flag25 = workValue21
    numberValue19 = arg1
    flag25 = flag25(numberValue19)
    numberValue19 = arg12.blendInSpeed
    if not numberValue19 then
      numberValue19 = 8.0
    end
    textValue15 = arg12.blendOutSpeed
    if not textValue15 then
      textValue15 = 8.0
    end
    workValue59 = CMG
    workValue59 = workValue59.loadAnimDict
    playerPed = workValue17
    -- Beginner: Load a GTA animation dictionary before using it.
    workValue59(playerPed)
    workValue59 = TaskPlayAnim
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    workValue = workValue17
    dataTable = workValue27
    dataTable2 = numberValue19
    workValue3 = textValue15
    workValue4 = arg22
    textValue7 = flag25
    numberValue3 = 0
    flag2 = false
    flag3 = false
    flag4 = false
    -- Beginner: Play an animation on a ped.
    workValue59(playerPed, workValue, dataTable, dataTable2, workValue3, workValue4, textValue7, numberValue3, flag2, flag3, flag4)
    workValue59 = RemoveAnimDict
    playerPed = workValue17
    workValue59(playerPed)
    if arg22 > 0 then
      workValue59 = Citizen
      workValue59 = workValue59.Wait
      playerPed = arg22
      workValue59(playerPed)
    else
      workValue59 = GetAnimDuration
      playerPed = workValue17
      workValue = workValue27
      workValue59 = workValue59(playerPed, workValue)
      if workValue59 and workValue59 > 0.0 then
        playerPed = Citizen
        playerPed = playerPed.Wait
        workValue = math
        workValue = workValue.floor
        dataTable = workValue59 * 1000
        workValue, dataTable, dataTable2, workValue3, workValue4, textValue7, numberValue3, flag2, flag3, flag4 = workValue(dataTable)
        playerPed(workValue, dataTable, dataTable2, workValue3, workValue4, textValue7, numberValue3, flag2, flag3, flag4)
      end
    end
    workValue59 = ClearPedTasks
    playerPed = PlayerPedId
    playerPed, workValue, dataTable, dataTable2, workValue3, workValue4, textValue7, numberValue3, flag2, flag3, flag4 = playerPed()
    workValue59(playerPed, workValue, dataTable, dataTable2, workValue3, workValue4, textValue7, numberValue3, flag2, flag3, flag4)
    workValue59 = cmgCall2
    workValue59()
    workValue59 = false
    flag23 = workValue59
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue24; parameters: arg1) ===
function workValue24(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg2 = flag23
  if arg2 then
    return
  end
  arg2 = textValue3
  if not arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.getClientUserId
  -- Beginner: result below is userId.
  arg2 = arg2()
  if not arg2 then
    return
  end
  if not arg1 then
    arg3 = LocalPlayer
    arg3 = arg3.state
    arg3 = arg3.canCancel
    if false == arg3 then
      return
    end
  end
  if not arg1 then
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    arg4 = numberValue2
    arg3 = arg3 - arg4
    arg4 = numberValue11
    if arg3 < arg4 then
      arg3 = CMG
      arg3 = arg3.isDeveloper
      arg4 = arg2
      arg3 = arg3(arg4)
      if not arg3 then
        arg3 = workValue16
        arg3()
        return
      end
    end
  end
  arg3 = workValue7
  if arg3 then
    arg3 = workValue7.animationOptions
  end
  arg4 = arg3 or arg4
  if arg3 then
    arg4 = arg3.exitEmote
  end
  arg5 = arg4 or arg5
  if arg4 then
    arg5 = cmgCall.exits
    if arg5 then
      arg5 = cmgCall.exits
      arg5 = arg5[arg4]
    end
  end
  arg6 = workValue7
  if arg6 then
    arg6 = workValue7.animationOptions
    if arg6 then
      arg6 = workValue7.animationOptions
      arg6 = arg6.attachTo
      if arg6 then
        arg6 = DetachEntity
        arg7 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg7 = arg7()
        arg8 = true
        arg9 = false
        arg6(arg7, arg8, arg9)
      end
    end
  end
  arg6 = workValue8
  if arg6 then
    arg6 = workValue8.handle
    arg7 = workValue9
    arg8 = arg6
    arg7 = arg7(arg8)
    if arg7 then
      arg7 = StopParticleFxLooped
      arg8 = arg6
      arg9 = false
      arg7(arg8, arg9)
    end
    arg7 = nil
    workValue8 = arg7
    arg7 = numberValue5
    arg7 = arg7 + 1
    numberValue5 = arg7
    arg7 = false
    flag8 = arg7
  end
  arg6 = textValue4
  arg7 = workValue7
  arg8 = false
  textValue3 = arg8
  arg8 = nil
  workValue5 = arg8
  arg8 = nil
  workValue6 = arg8
  arg8 = nil
  workValue7 = arg8
  if arg5 and arg7 and "Scenario" ~= arg6 and "MaleScenario" ~= arg6 and "ScenarioObject" ~= arg6 and "Expression" ~= arg6 then
    arg8 = cmgCall2
    arg8()
    arg8 = ClearPedTasks
    arg9 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg9 = arg9()
    arg8(arg9)
    arg8 = workValue23
    arg9 = arg5
    arg8(arg9)
    return
  end
  if "Scenario" == arg6 or "MaleScenario" == arg6 then
    arg8 = ClearPedTasksImmediately
    arg9 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg9 = arg9()
    arg8(arg9)
  else
    arg8 = ClearPedTasks
    arg9 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg9 = arg9()
    arg8(arg9)
    arg8 = cmgCall2
    arg8()
  end
end

-- === HELPER FUNCTION (decompiler name: workValue25; parameters: arg1, arg2) ===
function workValue25(arg1, arg2)
  local arg3, arg4, arg5, arg6
  arg3 = arg1.animationOptions
  if arg3 then
    arg4 = arg3.propTextureVariations
    if arg4 then
      goto flow_label_15
    end
  end
  if nil ~= arg2 then
    arg4 = tonumber
    arg5 = arg2
    return arg4(arg5)
  end
  arg4 = nil
  return arg4
  ::flow_label_15::
  arg4 = arg3.propTextureVariations
  if nil ~= arg2 then
    arg5 = tonumber
    arg6 = arg2
    arg5 = arg5(arg6)
    if arg5 then
      arg6 = arg4[arg5]
      if arg6 then
        arg6 = arg4[arg5]
        arg6 = arg6.value
        return arg6
      end
    end
    if arg5 then
      return arg5
    end
  end
  arg5 = arg4[1]
  if arg5 then
    arg5 = arg4[1]
    arg5 = arg5.value
    return arg5
  end
  arg5 = nil
  return arg5
end

-- === HELPER FUNCTION (decompiler name: workValue26; parameters: arg1, arg2) ===
function workValue26(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5, dataTable4, rageUiCall, textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7, flag14, flag15, flag16, flag17
  arg3 = arg1.animationOptions
  if not arg3 then
    return
  end
  arg4 = arg3.prop
  if not arg4 then
    return
  end
  arg5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg5 = arg5()
  numberValue10 = arg5
  arg5 = workValue25
  arg6 = arg1
  arg7 = arg2
  arg5 = arg5(arg6, arg7)
  arg6 = arg3.propBone
  arg7 = table
  arg7 = arg7.unpack
  arg8 = arg3.propPlacement
  arg7, arg8, arg9, arg10, arg11, workValue2 = arg7(arg8)
  textValue5 = arg3.propNoCollision
  textValue5 = false ~= textValue5
  dataTable4 = workValue18
  rageUiCall = arg4
  textValue6 = arg6
  textValue8 = arg7
  flag = arg8
  rageUiCall2 = arg9
  rageUiCall3 = arg10
  flag5 = arg11
  flag6 = workValue2
  flag7 = false
  workValue12 = arg5
  workValue13 = textValue5
  dataTable4(rageUiCall, textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13)
  dataTable4 = arg3.secondProp
  if not dataTable4 then
    return
  end
  rageUiCall = arg3.secondPropBone
  textValue6 = table
  textValue6 = textValue6.unpack
  textValue8 = arg3.secondPropPlacement
  textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5 = textValue6(textValue8)
  flag6 = arg3.secondPropNoCollision
  flag6 = false ~= flag6
  flag7 = workValue18
  workValue12 = dataTable4
  workValue13 = rageUiCall
  flag9 = textValue6
  flag11 = textValue8
  flag12 = flag
  flag13 = rageUiCall2
  numberValue7 = rageUiCall3
  flag14 = flag5
  flag15 = true
  flag16 = nil
  flag17 = flag6
  flag7(workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7, flag14, flag15, flag16, flag17)
end

-- === HELPER FUNCTION (decompiler name: workValue28; parameters: arg1, arg2, arg3) ===
function workValue28(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5, dataTable4, rageUiCall, textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7, flag14, flag15, flag16, flag17, flag18, flag19, numberValue13, flag22
  arg4 = table
  arg4 = arg4.unpack
  arg5 = arg1
  arg4, arg5 = arg4(arg5)
  arg6 = workValue21
  arg7 = arg1
  arg6 = arg6(arg7)
  arg7 = workValue22
  arg8 = arg1
  arg7 = arg7(arg8)
  arg8 = arg1.animationOptions
  if arg8 then
    arg9 = arg8.startDelay
    if arg9 then
      goto flow_label_18
    end
  end
  arg9 = 0
  ::flow_label_18::
  if arg9 > 0 then
    arg10 = Citizen
    arg10 = arg10.Wait
    arg11 = arg9
    arg10(arg11)
  end
  if arg8 then
    arg10 = arg8.blendInSpeed
    if arg10 then
      goto flow_label_30
    end
  end
  arg10 = 2.0
  ::flow_label_30::
  if arg8 then
    arg11 = arg8.blendOutSpeed
    if arg11 then
      goto flow_label_36
    end
  end
  arg11 = 2.0
  ::flow_label_36::
  workValue2 = CMG
  workValue2 = workValue2.loadAnimDict
  textValue5 = arg4
  -- Beginner: Load a GTA animation dictionary before using it.
  workValue2(textValue5)
  workValue2 = TaskPlayAnim
  textValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue5 = textValue5()
  dataTable4 = arg4
  rageUiCall = arg5
  textValue6 = arg10
  textValue8 = arg11
  flag = arg7
  rageUiCall2 = arg6
  rageUiCall3 = 0
  flag5 = false
  flag6 = false
  flag7 = false
  -- Beginner: Play an animation on a ped.
  workValue2(textValue5, dataTable4, rageUiCall, textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5, flag6, flag7)
  workValue2 = RemoveAnimDict
  textValue5 = arg4
  workValue2(textValue5)
  workValue2 = Citizen
  workValue2 = workValue2.Wait
  textValue5 = 0
  workValue2(textValue5)
  workValue2 = true
  textValue3 = workValue2
  workValue5 = arg4
  workValue6 = arg5
  workValue7 = arg1
  if arg8 then
    workValue2 = arg8.ptfxAsset
    if workValue2 then
      workValue2 = numberValue5
      workValue2 = workValue2 + 1
      numberValue5 = workValue2
      workValue2 = false
      flag8 = workValue2
      workValue2 = {}
      textValue5 = arg8.ptfxAsset
      workValue2.asset = textValue5
      textValue5 = arg8.ptfxName
      workValue2.name = textValue5
      textValue5 = arg8.ptfxPlacement
      workValue2.placement = textValue5
      textValue5 = arg8.ptfxInfo
      workValue2.info = textValue5
      textValue5 = arg8.ptfxWait
      workValue2.wait = textValue5
      textValue5 = arg8.ptfxCanHold
      workValue2.ptfxCanHold = textValue5
      textValue5 = arg8.ptfxNoProp
      workValue2.ptfxNoProp = textValue5
      textValue5 = arg8.ptfxBone
      workValue2.ptfxBone = textValue5
      textValue5 = arg8.ptfxColor
      workValue2.ptfxColor = textValue5
      workValue8 = workValue2
      workValue2 = workValue8.info
      if workValue2 then
        workValue2 = notify
        textValue5 = workValue8.info
        -- Beginner: Show a notification to the player.
        workValue2(textValue5)
      end
    end
  end
  workValue2 = workValue26
  textValue5 = arg1
  dataTable4 = arg3
  workValue2(textValue5, dataTable4)
  workValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue2 = workValue2()
  if not arg2 then
    return
  end
  textValue5 = DetachEntity
  dataTable4 = workValue2
  rageUiCall = true
  textValue6 = false
  textValue5(dataTable4, rageUiCall, textValue6)
  textValue5 = GetPlayerFromServerId
  dataTable4 = arg2
  -- Beginner: result below is playerIndex.
  textValue5 = textValue5(dataTable4)
  if -1 == textValue5 then
    return
  end
  dataTable4 = GetPlayerPed
  rageUiCall = textValue5
  -- Beginner: result below is playerPed.
  dataTable4 = dataTable4(rageUiCall)
  rageUiCall = DoesEntityExist
  textValue6 = dataTable4
  rageUiCall = rageUiCall(textValue6)
  if not rageUiCall or dataTable4 == workValue2 then
    return
  end
  rageUiCall = DetachEntity
  textValue6 = dataTable4
  textValue8 = true
  flag = false
  rageUiCall(textValue6, textValue8, flag)
  if arg8 then
    rageUiCall = arg8.attachTo
    if rageUiCall then
      rageUiCall = GetEntityAttachedTo
      textValue6 = dataTable4
      rageUiCall = rageUiCall(textValue6)
      if 0 == rageUiCall then
        rageUiCall = GetEntityAttachedTo
        textValue6 = workValue2
        rageUiCall = rageUiCall(textValue6)
        if 0 == rageUiCall then
          goto flow_label_156
        end
      end
    end
  end
  return
  ::flow_label_156::
  rageUiCall = arg8.bone
  if not rageUiCall then
    rageUiCall = -1
  end
  textValue6 = GetPedBoneIndex
  textValue8 = dataTable4
  flag = rageUiCall
  textValue6 = textValue6(textValue8, flag)
  if textValue6 < 0 then
    return
  end
  textValue8 = arg8.xPos
  if not textValue8 then
    textValue8 = 0.0
  end
  flag = arg8.yPos
  if not flag then
    flag = 0.0
  end
  rageUiCall2 = arg8.zPos
  if not rageUiCall2 then
    rageUiCall2 = 0.0
  end
  rageUiCall3 = arg8.xRot
  if not rageUiCall3 then
    rageUiCall3 = 0.0
  end
  flag5 = arg8.yRot
  if not flag5 then
    flag5 = 0.0
  end
  flag6 = arg8.zRot
  if not flag6 then
    flag6 = 0.0
  end
  flag7 = AttachEntityToEntity
  workValue12 = workValue2
  workValue13 = dataTable4
  flag9 = textValue6
  flag11 = textValue8
  flag12 = flag
  flag13 = rageUiCall2
  numberValue7 = rageUiCall3
  flag14 = flag5
  flag15 = flag6
  flag16 = false
  flag17 = false
  flag18 = false
  flag19 = true
  numberValue13 = 1
  flag22 = true
  -- Beginner: Attach one entity to another entity.
  flag7(workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7, flag14, flag15, flag16, flag17, flag18, flag19, numberValue13, flag22)
end
dataTable7 = {}
numberValue14 = 2
numberValue15 = 160
numberValue16 = 161
numberValue17 = 163
numberValue18 = 167
dataTable7[1] = numberValue14
dataTable7[2] = numberValue15
dataTable7[3] = numberValue16
dataTable7[4] = numberValue17
dataTable7[5] = numberValue18

-- === HELPER FUNCTION (decompiler name: numberValue14; parameters: arg1) ===
function numberValue14(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2
  arg2 = LocalPlayer
  arg2 = arg2.state
  arg2 = arg2.canEmote
  if false == arg2 then
    arg2 = true
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.isInTurfContest
  arg2 = arg2()
  if arg2 then
    arg2 = true
    return arg2
  end
  arg2 = tCMG
  arg2 = arg2.canAnim
  arg2 = arg2()
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.isInsideDiamondCasino
    arg2 = arg2()
    if not arg2 then
      goto flow_label_40
    end
    arg2 = tCMG
    arg2 = arg2.getNumAnimRefs
    arg2 = arg2()
    if not (arg2 <= 1) then
      goto flow_label_40
    end
  end
  arg2 = CMG
  arg2 = arg2.isHandcuffed
  arg2 = arg2()
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.inEvent
    arg2 = arg2()
    if not arg2 then
      goto flow_label_42
    end
  end
  ::flow_label_40::
  arg2 = true
  return arg2
  ::flow_label_42::
  arg2 = CMG
  arg2 = arg2.isPlayerInRedZone
  arg2 = arg2()
  if arg2 then
    arg2 = true
    return arg2
  end
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = IsPedSwimming
  arg4 = arg2
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = IsPedSwimmingUnderWater
    arg4 = arg2
    arg3 = arg3(arg4)
    if not arg3 then
      goto flow_label_63
    end
  end
  arg3 = true
  return arg3
  ::flow_label_63::
  arg3 = IsPedReloading
  arg4 = arg2
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = IsPlayerFreeAiming
    arg4 = PlayerId
    arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2 = arg4()
    arg3 = arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2)
    if not arg3 then
      arg3 = GetEntityHealth
      arg4 = arg2
      -- Beginner: result below is health.
      arg3 = arg3(arg4)
      if not (arg3 <= 102) then
        goto flow_label_81
      end
    end
  end
  arg3 = true
  return arg3
  ::flow_label_81::
  arg3 = CMG
  arg3 = arg3.getPlayerCombatTimer
  arg3 = arg3()
  if not (arg3 > 0) then
    arg3 = IsPedShooting
    arg4 = arg2
    arg3 = arg3(arg4)
    if not arg3 then
      goto flow_label_96
    end
  end
  arg3 = flag21
  if not arg3 then
    arg3 = true
    return arg3
  end
  ::flow_label_96::
  arg3 = CMG
  arg3 = arg3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg3 = arg3()
  if 0 ~= arg3 then
    arg4 = GetEntitySpeed
    arg5 = arg3
    -- Beginner: result below is speed.
    arg4 = arg4(arg5)
    if arg4 > 1.0 then
      arg4 = GetPedInVehicleSeat
      arg5 = arg3
      arg6 = -1
      arg4 = arg4(arg5, arg6)
      if arg4 == arg2 then
        arg4 = true
        return arg4
      end
    end
  end
  arg4 = pairs
  arg5 = dataTable7
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8, arg9 in arg4, arg5, arg6, arg7 do
    arg10 = GetIsTaskActive
    arg11 = arg2
    workValue2 = arg9
    arg10 = arg10(arg11, workValue2)
    if arg10 then
      arg10 = true
      return arg10
    end
  end
  arg4 = CMG
  arg4 = arg4.isPlayerNearPrison
  arg4 = arg4()
  if arg4 then
    arg4 = CMG
    arg4 = arg4.isEmergencyService
    arg4 = arg4()
    if not arg4 then
      goto flow_label_144
    end
  end
  arg4 = CMG
  arg4 = arg4.isInsideDiamondCasino
  arg4 = arg4()
  ::flow_label_144::
  if arg4 then
    if arg1 then
      arg4 = arg1.animationOptions
      if arg4 then
        arg4 = arg1.animationOptions
        arg4 = arg4.allowedPrison
        if arg4 then
          arg4 = false
          return arg4
      end
    end
    else
      arg4 = true
      return arg4
    end
  end
  arg4 = false
  return arg4
end

-- === HELPER FUNCTION (decompiler name: numberValue15; parameters: none) ===
function numberValue15()
  local arg1, arg2
  arg1 = IsPedHuman
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg1 = arg1(arg2)
  arg1 = not arg1
  return arg1
end

-- === HELPER FUNCTION (decompiler name: numberValue16; parameters: none) ===
function numberValue16()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.getClientUserId
  -- Beginner: result below is userId.
  arg1 = arg1()
  if not arg1 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.isDeveloper
  arg3 = arg1
  return arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: numberValue17; parameters: none) ===
function numberValue17()
  local arg1, arg2, arg3
  arg1 = flag20
  if not arg1 then
    arg1 = true
    return arg1
  end
  arg1 = CMG
  arg1 = arg1.getClientUserId
  -- Beginner: result below is userId.
  arg1 = arg1()
  if not arg1 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.isDeveloper
  arg3 = arg1
  return arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: numberValue18; parameters: arg1) ===
function numberValue18(arg1)
  local arg2
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.devOnly
    arg2 = true == arg2
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue29; parameters: none) ===
function workValue29()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.getClientUserId
  -- Beginner: result below is userId.
  arg1 = arg1()
  if not arg1 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.isDeveloper
  arg3 = arg1
  return arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue30; parameters: arg1) ===
function workValue30(arg1)
  local arg2, arg3
  if not arg1 then
    arg2 = false
    return arg2
  end
  arg2 = numberValue18
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = workValue29
    arg2 = arg2()
    if not arg2 then
      arg2 = false
      return arg2
    end
  end
  arg2 = true
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue31; parameters: arg1) ===
function workValue31(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = cmgCall.fireworksEmotes
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = ipairs
  arg3 = cmgCall.fireworksEmotes
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    if arg7 == arg1 then
      arg8 = true
      return arg8
    end
  end
  arg2 = false
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue33; parameters: arg1) ===
function workValue33(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg2 = cmgCall.fireworksEmotes
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = ipairs
  arg3 = cmgCall.fireworksEmotes
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = cmgCall.emotes
    arg8 = arg8[arg7]
    if not arg8 then
      arg8 = cmgCall.props
      arg8 = arg8[arg7]
    end
    if arg8 == arg1 then
      arg9 = true
      return arg9
    end
  end
  arg2 = false
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue34; parameters: arg1) ===
function workValue34(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = cmgCall.escrowPazeeeKeys
  if arg2 then
    arg2 = cmgCall.escrowPazeeeKeys
    arg2 = arg2.trash
    if arg2 and arg1 then
      goto flow_label_12
    end
  end
  arg2 = false
  return arg2
  ::flow_label_12::
  arg2 = ipairs
  arg3 = cmgCall.escrowPazeeeKeys
  arg3 = arg3.trash
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = cmgCall.emotes
    arg8 = arg8[arg7]
    if arg8 ~= arg1 then
      arg8 = cmgCall.props
      arg8 = arg8[arg7]
      if arg8 ~= arg1 then
        arg8 = cmgCall.shared
        if not arg8 then
          goto flow_label_34
        end
        arg8 = cmgCall.shared
        arg8 = arg8[arg7]
        if arg8 ~= arg1 then
          goto flow_label_34
        end
      end
    end
    arg8 = true
    return arg8
    ::flow_label_34::
  end
  arg2 = false
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue35; parameters: arg1, arg2, arg3, arg4) ===
function workValue35(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, arg9, arg10, arg11
  arg5 = workValue34
  arg6 = arg1
  arg5 = arg5(arg6)
  if arg5 then
    arg5 = notify
    arg6 = "~r~That emote is not available."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    return
  end
  if not arg3 then
    arg5 = numberValue14
    arg6 = arg1
    arg5 = arg5(arg6)
    if arg5 then
      arg5 = notify
      arg6 = "~r~Can not use this emote at this time."
      arg5(arg6)
      return
    end
  end
  arg5 = CMG
  arg5 = arg5.getClientUserId
  -- Beginner: result below is userId.
  arg5 = arg5()
  if not arg5 then
    return
  end
  if not arg3 then
    arg6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg6 = arg6()
    arg7 = numberValue2
    arg6 = arg6 - arg7
    arg7 = numberValue11
    if arg6 < arg7 then
      arg6 = CMG
      arg6 = arg6.isDeveloper
      arg7 = arg5
      arg6 = arg6(arg7)
      if not arg6 then
        arg6 = workValue16
        arg6()
        return
      end
    end
  end
  arg6 = arg1.animalEmote
  if arg6 then
    arg6 = numberValue16
    arg6 = arg6()
    if not arg6 then
      arg6 = notify
      arg7 = "~r~Animal emotes are developer only."
      -- Beginner: Show a notification to the player.
      arg6(arg7)
      return
    end
    arg6 = IsPedHuman
    arg7 = PlayerPedId
    arg7, arg8, arg9, arg10, arg11 = arg7()
    arg6 = arg6(arg7, arg8, arg9, arg10, arg11)
    if arg6 then
      arg6 = notify
      arg7 = "~r~This emote is for animal peds only."
      arg6(arg7)
      return
    end
  end
  arg6 = workValue33
  arg7 = arg1
  arg6 = arg6(arg7)
  if arg6 then
    arg6 = numberValue17
    arg6 = arg6()
    if not arg6 then
      arg6 = notify
      arg7 = "~r~Fireworks emotes are developer only."
      -- Beginner: Show a notification to the player.
      arg6(arg7)
      return
    end
  end
  arg6 = numberValue18
  arg7 = arg1
  arg6 = arg6(arg7)
  if arg6 then
    arg6 = workValue29
    arg6 = arg6()
    if not arg6 then
      arg6 = notify
      arg7 = "~r~That emote is developer only."
      arg6(arg7)
      return
    end
  end
  arg6 = arg1.animationOptions
  if arg6 then
    arg7 = CMG
    arg7 = arg7.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg7 = arg7()
    arg8 = arg6.vehicleRequirement
    if "REQUIRED" == arg8 and 0 == arg7 then
      arg8 = notify
      arg9 = "~r~This emote requires a vehicle."
      -- Beginner: Show a notification to the player.
      arg8(arg9)
      return
    end
    arg8 = arg6.vehicleRequirement
    if "NOT_ALLOWED" == arg8 and 0 ~= arg7 then
      arg8 = notify
      arg9 = "~r~You cannot use this emote in a vehicle."
      arg8(arg9)
      return
    end
    arg8 = arg6.notInVehicle
    if arg8 and 0 ~= arg7 then
      arg8 = notify
      arg9 = "~r~You cannot use this emote in a vehicle."
      -- Beginner: Show a notification to the player.
      arg8(arg9)
      return
    end
    arg8 = arg6.onlyInVehicle
    if arg8 and 0 == arg7 then
      arg8 = notify
      arg9 = "~r~This emote requires a vehicle."
      arg8(arg9)
      return
    end
  end
  arg7 = workValue24
  arg8 = true
  arg7(arg8)
  arg7 = arg1[1]
  textValue4 = arg7
  arg8 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg8 = arg8()
  numberValue2 = arg8
  if "Expression" == arg7 then
    arg8 = workValue19
    arg9 = arg1
    arg8(arg9)
    return
  end
  if "Scenario" == arg7 or "MaleScenario" == arg7 or "ScenarioObject" == arg7 then
    arg8 = workValue20
    arg9 = arg1
    arg8(arg9)
    return
  end
  arg8 = workValue28
  arg9 = arg1
  arg10 = arg2
  arg11 = arg4
  arg8(arg9, arg10, arg11)
end

-- === HELPER FUNCTION (decompiler name: workValue36; parameters: none) ===
function workValue36()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5, dataTable4
  arg1 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg1 = arg1()
  arg2 = -1
  arg3 = 2.0
  arg4 = CMG
  arg4 = arg4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg4 = arg4()
  arg5 = pairs
  arg6 = GetActivePlayers
  arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5, dataTable4 = arg6()
  arg5, arg6, arg7, arg8 = arg5(arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5, dataTable4)
  for arg9, arg10 in arg5, arg6, arg7, arg8 do
    if arg10 ~= arg1 then
      arg11 = GetPlayerPed
      workValue2 = arg10
      -- Beginner: result below is playerPed.
      arg11 = arg11(workValue2)
      workValue2 = GetEntityCoords
      textValue5 = arg11
      dataTable4 = true
      -- Beginner: result below is entityCoords.
      workValue2 = workValue2(textValue5, dataTable4)
      workValue2 = workValue2 - arg4
      workValue2 = #workValue2
      if arg3 > workValue2 then
        arg2 = arg10
        arg3 = workValue2
      end
    end
  end
  if -1 == arg2 then
    arg5 = 0
    return arg5
  else
    arg5 = GetPlayerServerId
    arg6 = arg2
    return arg5(arg6)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue37; parameters: arg1) ===
function workValue37(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = numberValue14
  arg2 = arg2()
  if arg2 then
    arg2 = notify
    arg3 = "~r~Can not use shared emotes at this time."
    -- Beginner: Show a notification to the player.
    arg2(arg3)
    return
  end
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = numberValue2
  arg2 = arg2 - arg3
  arg3 = numberValue11
  if arg2 < arg3 then
    arg2 = workValue16
    arg2()
    return
  end
  arg2 = workValue36
  arg2 = arg2()
  if 0 ~= arg2 then
    workValue14 = arg1
    numberValue6 = arg2
    arg3 = TriggerServerEvent
    arg4 = "c74831f601"
    arg5 = arg2
    arg6 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c74831f601".
    arg3(arg4, arg5, arg6)
  else
    arg3 = notify
    arg4 = "~r~No player is near by."
    -- Beginner: Show a notification to the player.
    arg3(arg4)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue38; parameters: arg1) ===
function workValue38(arg1)
  local arg2, arg3
  arg2 = Citizen
  arg2 = arg2.CreateThreadNow

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local arg12, arg22, arg32, workValue17, workValue27
    arg12 = arg1
    arg12 = arg12[1]
    arg22 = CMG
    arg22 = arg22.loadAnimDict
    arg32 = arg12
    -- Beginner: Load a GTA animation dictionary before using it.
    arg22(arg32)
    arg22 = SetPedMovementClipset
    arg32 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg32 = arg32()
    workValue17 = arg12
    workValue27 = 0.2
    arg22(arg32, workValue17, workValue27)
    arg22 = RemoveAnimSet
    arg32 = arg12
    arg22(arg32)
    arg22 = RemoveAnimDict
    arg32 = arg12
    arg22(arg32)
  end
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue39; parameters: arg1, arg2) ===
function workValue39(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = type
  arg4 = arg1
  arg3 = arg3(arg4)
  arg4 = type
  arg5 = arg2
  arg4 = arg4(arg5)
  if arg3 ~= arg4 then
    arg5 = arg3 < arg4
    return arg5
  else
    arg5 = arg1 < arg2
    return arg5
  end
end

-- === HELPER FUNCTION (decompiler name: workValue40; parameters: arg1, arg2) ===
function workValue40(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11
  arg3 = {}
  if not arg1 then
    return arg3
  end
  arg4 = 1
  arg5 = pairs
  arg6 = arg1
  arg5, arg6, arg7, arg8 = arg5(arg6)
  for arg9 in arg5, arg6, arg7, arg8 do
    arg3[arg4] = arg9
    arg4 = arg4 + 1
  end
  if not arg2 then
    arg2 = workValue39
  end
  arg5 = table
  arg5 = arg5.sort
  arg6 = arg3
  arg7 = arg2
  arg5(arg6, arg7)
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue41; parameters: arg1, arg2) ===
function workValue41(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = workValue40
  arg4 = arg1
  arg5 = arg2
  arg3 = arg3(arg4, arg5)
  arg4 = 0

  -- === HELPER FUNCTION: arg5() ===
  function arg5()
    local arg12, arg22, arg32
    arg12 = arg4
    arg12 = arg12 + 1
    arg4 = arg12
    arg22 = arg4
    arg12 = arg3
    arg12 = arg12[arg22]
    if nil ~= arg12 then
      arg22 = arg12
      arg32 = arg1
      arg32 = arg32[arg12]
      return arg22, arg32
    else
      arg22 = nil
      arg32 = nil
      return arg22, arg32
    end
  end
  return arg5
end

-- === HELPER FUNCTION (decompiler name: workValue42; parameters: arg1) ===
function workValue42(arg1)
  local arg2
  arg2 = cmgCall.emotes
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = cmgCall.emotes
    arg2 = arg2[arg1]
    return arg2
  else
    arg2 = cmgCall.dances
    arg2 = arg2[arg1]
    if arg2 then
      arg2 = cmgCall.dances
      arg2 = arg2[arg1]
      return arg2
    else
      arg2 = cmgCall.custom
      arg2 = arg2[arg1]
      if arg2 then
        arg2 = cmgCall.custom
        arg2 = arg2[arg1]
        return arg2
      else
        arg2 = cmgCall.props
        arg2 = arg2[arg1]
        if arg2 then
          arg2 = cmgCall.props
          arg2 = arg2[arg1]
          return arg2
        else
          arg2 = cmgCall.guns
          arg2 = arg2[arg1]
          if arg2 then
            arg2 = cmgCall.guns
            arg2 = arg2[arg1]
            return arg2
          else
            arg2 = cmgCall.animals
            arg2 = arg2[arg1]
            if arg2 then
              arg2 = cmgCall.animals
              arg2 = arg2[arg1]
              return arg2
            else
              arg2 = cmgCall.shared
              if arg2 then
                arg2 = cmgCall.shared
                arg2 = arg2[arg1]
                if arg2 then
                  arg2 = cmgCall.shared
                  arg2 = arg2[arg1]
                  return arg2
                end
              end
            end
          end
        end
      end
    end
  end
  arg2 = nil
  return arg2
end
workValue43 = nil

-- === HELPER FUNCTION (decompiler name: workValue44; parameters: arg1) ===
function workValue44(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = cmgCall.escrowPazeeeKeys
  if arg2 then
    arg2 = cmgCall.escrowPazeeeKeys
    arg2 = arg2.carry
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = false
  return arg2
  ::flow_label_10::
  arg2 = workValue43
  if not arg2 then
    arg2 = {}
    workValue43 = arg2
    arg2 = ipairs
    arg3 = cmgCall.escrowPazeeeKeys
    arg3 = arg3.carry
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, arg7 in arg2, arg3, arg4, arg5 do
      arg8 = workValue43
      arg8[arg7] = true
    end
  end
  arg2 = workValue43
  arg2 = arg2[arg1]
  arg2 = true == arg2
  return arg2
end
workValue45 = nil

-- === HELPER FUNCTION (decompiler name: workValue46; parameters: arg1) ===
function workValue46(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = cmgCall.escrowPazeeeKeys
  if arg2 then
    arg2 = cmgCall.escrowPazeeeKeys
    arg2 = arg2.trash
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = false
  return arg2
  ::flow_label_10::
  arg2 = workValue45
  if not arg2 then
    arg2 = {}
    workValue45 = arg2
    arg2 = ipairs
    arg3 = cmgCall.escrowPazeeeKeys
    arg3 = arg3.trash
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, arg7 in arg2, arg3, arg4, arg5 do
      arg8 = workValue45
      arg8[arg7] = true
    end
  end
  arg2 = workValue45
  arg2 = arg2[arg1]
  arg2 = true == arg2
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue47; parameters: arg1, arg2, arg3) ===
function workValue47(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9
  if "" == arg3 then
    arg4 = false
    return arg4
  end
  arg4 = string
  arg4 = arg4.lower
  arg5 = arg3
  arg4 = arg4(arg5)
  arg5 = string
  arg5 = arg5.find
  arg6 = string
  arg6 = arg6.lower
  arg7 = arg1
  arg6 = arg6(arg7)
  arg7 = arg4
  arg8 = 1
  arg9 = true
  arg5 = arg5(arg6, arg7, arg8, arg9)
  if not arg5 then
    arg5 = string
    arg5 = arg5.find
    arg6 = string
    arg6 = arg6.lower
    arg7 = arg2 or arg7
    if not arg2 then
      arg7 = ""
    end
    arg6 = arg6(arg7)
    arg7 = arg4
    arg8 = 1
    arg9 = true
    arg5 = arg5(arg6, arg7, arg8, arg9)
  end
  return arg5
end

-- === HELPER FUNCTION (decompiler name: workValue48; parameters: arg1) ===
function workValue48(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2
  arg2 = pairs
  arg3 = cmgCall.emotes
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = workValue46
    arg9 = arg6
    arg8 = arg8(arg9)
    if not arg8 then
      arg8 = numberValue17
      arg8 = arg8()
      if not arg8 then
        arg8 = workValue31
        arg9 = arg6
        arg8 = arg8(arg9)
        if arg8 then
          goto flow_label_34
        end
      end
      arg8 = numberValue18
      arg9 = arg7
      arg8 = arg8(arg9)
      if arg8 then
        arg8 = workValue29
        arg8 = arg8()
        arg8 = not arg8
        if arg8 then
          goto flow_label_34
        end
      end
      arg8 = arg1
      arg9 = arg6
      arg10 = arg7
      arg11 = "emotes"
      arg8(arg9, arg10, arg11)
    end
    ::flow_label_34::
  end
  arg2 = pairs
  arg3 = cmgCall.dances
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = workValue46
    arg9 = arg6
    arg8 = arg8(arg9)
    if not arg8 then
      arg8 = arg1
      arg9 = arg6
      arg10 = arg7
      arg11 = "dances"
      arg8(arg9, arg10, arg11)
    end
  end
  arg2 = pairs
  arg3 = cmgCall.custom
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = workValue46
    arg9 = arg6
    arg8 = arg8(arg9)
    if not arg8 then
      arg8 = arg1
      arg9 = arg6
      arg10 = arg7
      arg11 = "custom"
      arg8(arg9, arg10, arg11)
    end
  end
  arg2 = pairs
  arg3 = cmgCall.props
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = workValue46
    arg9 = arg6
    arg8 = arg8(arg9)
    if not arg8 then
      arg8 = numberValue17
      arg8 = arg8()
      if not arg8 then
        arg8 = workValue31
        arg9 = arg6
        arg8 = arg8(arg9)
        if arg8 then
          goto flow_label_94
        end
      end
      arg8 = arg1
      arg9 = arg6
      arg10 = arg7
      arg11 = "props"
      arg8(arg9, arg10, arg11)
    end
    ::flow_label_94::
  end
  arg2 = pairs
  arg3 = cmgCall.guns
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = workValue46
    arg9 = arg6
    arg8 = arg8(arg9)
    if not arg8 then
      arg8 = arg1
      arg9 = arg6
      arg10 = arg7
      arg11 = "guns"
      arg8(arg9, arg10, arg11)
    end
  end
  arg2 = numberValue16
  arg2 = arg2()
  if arg2 then
    arg2 = pairs
    arg3 = cmgCall.animals
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, arg7 in arg2, arg3, arg4, arg5 do
      arg8 = workValue46
      arg9 = arg6
      arg8 = arg8(arg9)
      if not arg8 then
        arg8 = arg1
        arg9 = arg6
        arg10 = arg7
        arg11 = "animals"
        arg8(arg9, arg10, arg11)
      end
    end
  end
  arg2 = cmgCall.shared
  if arg2 then
    arg2 = pairs
    arg3 = cmgCall.shared
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, arg7 in arg2, arg3, arg4, arg5 do
      arg8 = workValue46
      arg9 = arg6
      arg8 = arg8(arg9)
      if not arg8 then
        arg8 = workValue44
        arg9 = arg6
        arg8 = arg8(arg9)
        if not arg8 then
          arg8 = arg1
          arg9 = arg6
          arg10 = arg7
          arg11 = "shared"
          arg8(arg9, arg10, arg11)
        end
      end
    end
  end
  arg2 = cmgCall.escrowPazeeeKeys
  if arg2 then
    arg2 = cmgCall.escrowPazeeeKeys
    arg2 = arg2.carry
    if arg2 then
      arg2 = ipairs
      arg3 = cmgCall.escrowPazeeeKeys
      arg3 = arg3.carry
      arg2, arg3, arg4, arg5 = arg2(arg3)
      for arg6, arg7 in arg2, arg3, arg4, arg5 do
        arg8 = cmgCall.shared
        if arg8 then
          arg8 = cmgCall.shared
          arg8 = arg8[arg7]
        end
        if arg8 then
          arg9 = workValue46
          arg10 = arg7
          arg9 = arg9(arg10)
          if not arg9 then
            arg9 = arg1
            arg10 = arg7
            arg11 = arg8
            workValue2 = "shared"
            arg9(arg10, arg11, workValue2)
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue49; parameters: arg1) ===
function workValue49(arg1)
  local arg2, arg3, arg4
  arg2 = table
  arg2 = arg2.find
  arg3 = dataTable6
  arg4 = arg1
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = {}
    arg2.RightLabel = "\226\173\144"
    return arg2
  end
  arg2 = {}
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue50; parameters: arg1, arg2) ===
function workValue50(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  if arg1 then
    arg3 = IsControlJustPressed
    arg4 = 0
    arg5 = 121
    arg3 = arg3(arg4, arg5)
    if arg3 then
      arg3 = table
      arg3 = arg3.find
      arg4 = dataTable6
      arg5 = arg2
      arg3 = arg3(arg4, arg5)
      if arg3 and arg3 > 0 then
        arg4 = table
        arg4 = arg4.remove
        arg5 = dataTable6
        arg6 = arg3
        arg4(arg5, arg6)
      else
        arg4 = table
        arg4 = arg4.insert
        arg5 = dataTable6
        arg6 = arg2
        arg4(arg5, arg6)
      end
      arg4 = SetResourceKvp
      arg5 = "cmg_favourite_emotes"
      arg6 = json
      arg6 = arg6.encode
      arg7 = dataTable6
      arg6, arg7 = arg6(arg7)
      arg4(arg5, arg6, arg7)
    end
  end
end
workValue51 = nil

-- === HELPER FUNCTION (decompiler name: workValue52; parameters: arg1) ===
function workValue52(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = cmgCall.escrowPazeeeKeys
  if arg2 then
    arg2 = cmgCall.escrowPazeeeKeys
    arg2 = arg2.all
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = false
  return arg2
  ::flow_label_10::
  arg2 = workValue51
  if not arg2 then
    arg2 = {}
    workValue51 = arg2
    arg2 = ipairs
    arg3 = cmgCall.escrowPazeeeKeys
    arg3 = arg3.all
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, arg7 in arg2, arg3, arg4, arg5 do
      arg8 = workValue51
      arg8[arg7] = true
    end
  end
  arg2 = workValue51
  arg2 = arg2[arg1]
  arg2 = true == arg2
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue54; parameters: arg1) ===
function workValue54(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5, dataTable4, rageUiCall
  arg2 = cmgCall.escrowPazeeeKeys
  if arg2 then
    arg2 = cmgCall.escrowPazeeeKeys
    arg2 = arg2[arg1]
  end
  if not arg2 then
    return
  end
  arg3 = ipairs
  arg4 = arg2
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = cmgCall.emotes
    arg9 = arg9[arg8]
    if not arg9 then
      arg9 = cmgCall.props
      arg9 = arg9[arg8]
      if not arg9 then
        arg9 = cmgCall.shared
        if arg9 then
          arg9 = cmgCall.shared
          arg9 = arg9[arg8]
        end
      end
    end
    if arg9 then
      arg10 = numberValue18
      arg11 = arg9
      arg10 = arg10(arg11)
      if arg10 then
        arg10 = workValue29
        arg10 = arg10()
        arg10 = not arg10
        if arg10 then
          goto flow_label_54
        end
      end
      arg10 = RageUI
      arg10 = arg10.ButtonWithStyle
      arg11 = arg9[3]
      workValue2 = "/e ("
      textValue5 = arg8
      dataTable4 = ")"
      workValue2 = workValue2 .. textValue5 .. dataTable4
      textValue5 = workValue49
      dataTable4 = arg8
      textValue5 = textValue5(dataTable4)
      dataTable4 = numberValue14
      rageUiCall = arg9
      dataTable4 = dataTable4(rageUiCall)
      dataTable4 = not dataTable4

      -- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg12, arg22, arg32) ===
      function rageUiCall(arg12, arg22, arg32)
        local workValue17, workValue27, flag25
        workValue17 = workValue50
        workValue27 = arg22
        flag25 = arg8
        workValue17(workValue27, flag25)
        if arg32 then
          workValue17 = workValue35
          workValue27 = arg9
          workValue17(workValue27)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg10(arg11, workValue2, textValue5, dataTable4, rageUiCall)
    end
    ::flow_label_54::
  end
end

-- === HELPER FUNCTION (decompiler name: workValue55; parameters: arg1) ===
function workValue55(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5, dataTable4, rageUiCall, textValue6, textValue8
  arg2 = textValue11
  arg2 = arg2[arg1]
  if not arg2 then
    return
  end
  arg3 = 1
  arg4 = #arg2
  arg5 = 1
  for arg6 = arg3, arg4, arg5 do
    arg7 = arg2[arg6]
    arg8 = arg7.command
    arg9 = arg7.emoteInfo
    arg10 = numberValue18
    arg11 = arg9
    arg10 = arg10(arg11)
    if arg10 then
      arg10 = workValue29
      arg10 = arg10()
      arg10 = not arg10
      if arg10 then
        goto flow_label_52
      end
    end
    arg10 = rageUiCall8
    arg11 = arg9[3]
    arg10 = arg10(arg11)
    arg11 = arg7.useNearby
    if arg11 then
      arg11 = "/nearby (~g~"
      workValue2 = arg8
      textValue5 = "~w~)"
      arg11 = arg11 .. workValue2 .. textValue5
      if arg11 then
        goto flow_label_39
      end
    end
    arg11 = "/e ("
    workValue2 = arg8
    textValue5 = ")"
    arg11 = arg11 .. workValue2 .. textValue5
    ::flow_label_39::
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    textValue5 = arg10
    dataTable4 = arg11
    rageUiCall = workValue49
    textValue6 = arg8
    rageUiCall = rageUiCall(textValue6)
    textValue6 = numberValue14
    textValue8 = arg9
    textValue6 = textValue6(textValue8)
    textValue6 = not textValue6

    -- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg12, arg22, arg32) ===
    function textValue8(arg12, arg22, arg32)
      local workValue17, workValue27, flag25
      workValue17 = workValue50
      workValue27 = arg22
      flag25 = arg8
      workValue17(workValue27, flag25)
      if arg32 then
        workValue17 = arg7.useNearby
        if workValue17 then
          workValue17 = workValue37
          workValue27 = arg8
          workValue17(workValue27)
        else
          workValue17 = workValue35
          workValue27 = arg9
          workValue17(workValue27)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    workValue2(textValue5, dataTable4, rageUiCall, textValue6, textValue8)
    ::flow_label_52::
  end
end

-- === HELPER FUNCTION (decompiler name: workValue56; parameters: arg1) ===
function workValue56(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = arg1[3]
  if not arg2 then
    arg2 = ""
  end
  arg3 = string
  arg3 = arg3.gsub
  arg4 = arg2
  arg5 = "^PCarry%s+%d+%s+"
  arg6 = ""
  arg3 = arg3(arg4, arg5, arg6)
  if arg3 ~= arg2 then
    return arg3
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue57; parameters: none) ===
function workValue57()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5, dataTable4
  arg1 = cmgCall.escrowPazeeeKeys
  if arg1 then
    arg1 = cmgCall.escrowPazeeeKeys
    arg1 = arg1.carry
  end
  if not arg1 then
    return
  end
  arg2 = ipairs
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = string
    arg8 = arg8.sub
    arg9 = arg7
    arg10 = -1
    arg8 = arg8(arg9, arg10)
    if "1" == arg8 then
      arg8 = cmgCall.shared
      if arg8 then
        arg8 = cmgCall.shared
        arg8 = arg8[arg7]
      end
      if arg8 then
        arg9 = arg8.animationOptions
        if arg9 then
          arg9 = arg8.animationOptions
          arg9 = arg9.invisible
          if arg9 then
            goto flow_label_52
          end
        end
        arg9 = RageUI
        arg9 = arg9.ButtonWithStyle
        arg10 = workValue56
        arg11 = arg8
        arg10 = arg10(arg11)
        arg11 = "/nearby (~g~"
        workValue2 = arg7
        textValue5 = "~w~)"
        arg11 = arg11 .. workValue2 .. textValue5
        workValue2 = workValue49
        textValue5 = arg7
        workValue2 = workValue2(textValue5)
        textValue5 = numberValue14
        dataTable4 = arg8
        textValue5 = textValue5(dataTable4)
        textValue5 = not textValue5

        -- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg12, arg22, arg32) ===
        function dataTable4(arg12, arg22, arg32)
          local workValue17, workValue27, flag25
          workValue17 = workValue50
          workValue27 = arg22
          flag25 = arg7
          workValue17(workValue27, flag25)
          if arg32 then
            workValue17 = workValue37
            workValue27 = arg7
            workValue17(workValue27)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        arg9(arg10, arg11, workValue2, textValue5, dataTable4)
      end
    end
    ::flow_label_52::
  end
end
rageUiCall6 = RageUI
rageUiCall6 = rageUiCall6.CreateWhile
textValue16 = 1.0
workValue58 = RMenu
flag26 = workValue58
workValue58 = workValue58.Get
flag27 = "emotesmenu"
textValue17 = "mainmenu"
-- Beginner: result below is menu.
workValue58 = workValue58(flag26, flag27, textValue17)
flag26 = nil

-- === HELPER FUNCTION (decompiler name: flag27; parameters: none) ===
function flag27()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59
    arg12 = CMG
    arg12 = arg12.isNewPlayer
    arg12 = arg12()
    if arg12 then
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_A6B0CFFB~ to toggle the Emote Menu."
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
    end
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "Emotes"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
    function workValue27()
      local arg13, arg23
    end
    flag25 = RMenu
    numberValue19 = flag25
    flag25 = flag25.Get
    textValue15 = "emotesmenu"
    workValue59 = "emotes"
    flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "Cancel Emotes"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: arg13, arg23, arg33) ===
    function workValue27(arg13, arg23, arg33)
      local gameTime, flag24
      if arg33 then
        gameTime = workValue24
        flag24 = false
        gameTime(flag24)
        gameTime = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        gameTime = gameTime()
        numberValue2 = gameTime
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue17, workValue27)
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "Walking Styles"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
    function workValue27()
      local arg13, arg23
    end
    flag25 = RMenu
    numberValue19 = flag25
    flag25 = flag25.Get
    textValue15 = "emotesmenu"
    workValue59 = "walkingstyles"
    flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
    arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "Moods"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
    function workValue27()
      local arg13, arg23
    end
    flag25 = RMenu
    numberValue19 = flag25
    flag25 = flag25.Get
    textValue15 = "emotesmenu"
    workValue59 = "moods"
    flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "emotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "\240\159\148\141 Search Emotes"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
    function workValue27()
      local arg13, arg23
    end
    flag25 = RMenu
    numberValue19 = flag25
    flag25 = flag25.Get
    textValue15 = "emotesmenu"
    workValue59 = "searchemotes"
    flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "\226\173\144 Favourite Emotes"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
    function workValue27()
      local arg13, arg23
    end
    flag25 = RMenu
    numberValue19 = flag25
    flag25 = flag25.Get
    textValue15 = "emotesmenu"
    workValue59 = "favouriteemotes"
    flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
    arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "\240\159\149\186 Dance Emotes"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
    function workValue27()
      local arg13, arg23
    end
    flag25 = RMenu
    numberValue19 = flag25
    flag25 = flag25.Get
    textValue15 = "emotesmenu"
    workValue59 = "danceemotes"
    flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "\240\159\155\160\239\184\143 Custom Emotes"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
    function workValue27()
      local arg13, arg23
    end
    flag25 = RMenu
    numberValue19 = flag25
    flag25 = flag25.Get
    textValue15 = "emotesmenu"
    workValue59 = "customemotes"
    flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
    arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
    arg12 = numberValue17
    arg12 = arg12()
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.Button
      arg22 = "\240\159\142\134 Fireworks Emotes"
      arg32 = ""
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
      function workValue27()
        local arg13, arg23
      end
      flag25 = RMenu
      numberValue19 = flag25
      flag25 = flag25.Get
      textValue15 = "emotesmenu"
      workValue59 = "fireworksemotes"
      flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
    end
    arg12 = cmgCall.escrowPazeeeKeys
    if arg12 then
      arg12 = cmgCall.escrowPazeeeKeys
      arg12 = arg12.carry
      if arg12 then
        arg12 = RageUI
        arg12 = arg12.Button
        arg22 = "\240\159\147\166 Carry (nearby)"
        arg32 = ""
        workValue17 = true

        -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
        function workValue27()
          local arg13, arg23
        end
        flag25 = RMenu
        numberValue19 = flag25
        flag25 = flag25.Get
        textValue15 = "emotesmenu"
        workValue59 = "carryemotes"
        flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
        arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
        arg12 = RageUI
        arg12 = arg12.Button
        arg22 = "\240\159\154\152 Vehicle Emotes"
        arg32 = ""
        workValue17 = true

        -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
        function workValue27()
          local arg13, arg23
        end
        flag25 = RMenu
        numberValue19 = flag25
        flag25 = flag25.Get
        textValue15 = "emotesmenu"
        workValue59 = "vehicleescrowemotes"
        flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
        -- Beginner: Draw a selectable RageUI menu button.
        arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
        arg12 = RageUI
        arg12 = arg12.Button
        arg22 = "\226\155\147\239\184\143 Punish Emotes"
        arg32 = ""
        workValue17 = true

        -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
        function workValue27()
          local arg13, arg23
        end
        flag25 = RMenu
        numberValue19 = flag25
        flag25 = flag25.Get
        textValue15 = "emotesmenu"
        workValue59 = "punishemotes"
        flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
        arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
        arg12 = RageUI
        arg12 = arg12.Button
        arg22 = "\240\159\142\173 Roleplay Emotes"
        arg32 = ""
        workValue17 = true

        -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
        function workValue27()
          local arg13, arg23
        end
        flag25 = RMenu
        numberValue19 = flag25
        flag25 = flag25.Get
        textValue15 = "emotesmenu"
        workValue59 = "roleplayescrowemotes"
        flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
        -- Beginner: Draw a selectable RageUI menu button.
        arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
      end
    end
    arg12 = cmgCall.escrowPazeeeKeys
    if arg12 then
      arg12 = cmgCall.escrowPazeeeKeys
      arg12 = arg12.flagEmotes
      if arg12 then
        arg12 = RageUI
        arg12 = arg12.Button
        arg22 = "\240\159\143\180 Flag Emotes"
        arg32 = ""
        workValue17 = true

        -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
        function workValue27()
          local arg13, arg23
        end
        flag25 = RMenu
        numberValue19 = flag25
        flag25 = flag25.Get
        textValue15 = "emotesmenu"
        workValue59 = "flagescrowemotes"
        flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
        arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
      end
    end
    arg12 = cmgCall.escrowPazeeeKeys
    if arg12 then
      arg12 = cmgCall.escrowPazeeeKeys
      arg12 = arg12.trophyEmotes
      if arg12 then
        arg12 = RageUI
        arg12 = arg12.Button
        arg22 = "\240\159\143\134 Trophy Emotes"
        arg32 = ""
        workValue17 = true

        -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
        function workValue27()
          local arg13, arg23
        end
        flag25 = RMenu
        numberValue19 = flag25
        flag25 = flag25.Get
        textValue15 = "emotesmenu"
        workValue59 = "trophyescrowemotes"
        flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
        -- Beginner: Draw a selectable RageUI menu button.
        arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
      end
    end
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "\240\159\147\139 Standard Emotes"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
    function workValue27()
      local arg13, arg23
    end
    flag25 = RMenu
    numberValue19 = flag25
    flag25 = flag25.Get
    textValue15 = "emotesmenu"
    workValue59 = "standardemotes"
    flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
    arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "\240\159\147\166 Prop Emotes"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
    function workValue27()
      local arg13, arg23
    end
    flag25 = RMenu
    numberValue19 = flag25
    flag25 = flag25.Get
    textValue15 = "emotesmenu"
    workValue59 = "propemotes"
    flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "\240\159\145\171 Shared Emotes"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
    function workValue27()
      local arg13, arg23
    end
    flag25 = RMenu
    numberValue19 = flag25
    flag25 = flag25.Get
    textValue15 = "emotesmenu"
    workValue59 = "sharedemotes"
    flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
    arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "\240\159\148\171 Gun Emotes"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
    function workValue27()
      local arg13, arg23
    end
    flag25 = RMenu
    numberValue19 = flag25
    flag25 = flag25.Get
    textValue15 = "emotesmenu"
    workValue59 = "gunemotes"
    flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
    arg12 = numberValue16
    arg12 = arg12()
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.Button
      arg22 = "\240\159\144\169 Animal Emotes"
      arg32 = ""
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
      function workValue27()
        local arg13, arg23
      end
      flag25 = RMenu
      numberValue19 = flag25
      flag25 = flag25.Get
      textValue15 = "emotesmenu"
      workValue59 = "animalemotes"
      flag25, numberValue19, textValue15, workValue59 = flag25(numberValue19, textValue15, workValue59)
      arg12(arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59)
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "standardemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable, dataTable2
    arg12 = cmgCall.standardEmotes
    if arg12 then
      arg12 = ipairs
      arg22 = cmgCall.standardEmotes
      arg12, arg22, arg32, workValue17 = arg12(arg22)
      for workValue27, flag25 in arg12, arg22, arg32, workValue17 do
        numberValue19 = cmgCall.emotes
        numberValue19 = numberValue19[flag25]
        if numberValue19 then
          textValue15 = workValue30
          workValue59 = numberValue19
          textValue15 = textValue15(workValue59)
          if textValue15 then
            textValue15 = RageUI
            textValue15 = textValue15.ButtonWithStyle
            workValue59 = numberValue19[3]
            playerPed = "/e ("
            workValue = flag25
            dataTable = ")"
            playerPed = playerPed .. workValue .. dataTable
            workValue = workValue49
            dataTable = flag25
            workValue = workValue(dataTable)
            dataTable = numberValue14
            dataTable2 = numberValue19
            dataTable = dataTable(dataTable2)
            dataTable = not dataTable

            -- === HELPER FUNCTION (decompiler name: dataTable2; parameters: arg13, arg23, arg33) ===
            function dataTable2(arg13, arg23, arg33)
              local gameTime, flag24, workValue32
              gameTime = workValue50
              flag24 = arg23
              workValue32 = flag25
              gameTime(flag24, workValue32)
              if arg33 then
                gameTime = workValue35
                flag24 = numberValue19
                gameTime(flag24)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            textValue15(workValue59, playerPed, workValue, dataTable, dataTable2)
          end
        end
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "danceemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable
    arg12 = workValue41
    arg22 = cmgCall.dances
    arg12, arg22, arg32, workValue17 = arg12(arg22)
    for workValue27, flag25 in arg12, arg22, arg32, workValue17 do
      numberValue19 = workValue30
      textValue15 = flag25
      numberValue19 = numberValue19(textValue15)
      if numberValue19 then
        numberValue19 = RageUI
        numberValue19 = numberValue19.ButtonWithStyle
        textValue15 = flag25[3]
        workValue59 = "/e ("
        playerPed = workValue27
        workValue = ")"
        workValue59 = workValue59 .. playerPed .. workValue
        playerPed = workValue49
        workValue = workValue27
        playerPed = playerPed(workValue)
        workValue = numberValue14
        dataTable = flag25
        workValue = workValue(dataTable)
        workValue = not workValue

        -- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg13, arg23, arg33) ===
        function dataTable(arg13, arg23, arg33)
          local gameTime, flag24, workValue32
          gameTime = workValue50
          flag24 = arg23
          workValue32 = workValue27
          gameTime(flag24, workValue32)
          if arg33 then
            gameTime = workValue35
            flag24 = flag25
            gameTime(flag24)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        numberValue19(textValue15, workValue59, playerPed, workValue, dataTable)
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "customemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable
    arg12 = workValue41
    arg22 = cmgCall.custom
    arg12, arg22, arg32, workValue17 = arg12(arg22)
    for workValue27, flag25 in arg12, arg22, arg32, workValue17 do
      numberValue19 = workValue30
      textValue15 = flag25
      numberValue19 = numberValue19(textValue15)
      if numberValue19 then
        numberValue19 = RageUI
        numberValue19 = numberValue19.ButtonWithStyle
        textValue15 = flag25[3]
        workValue59 = "/e ("
        playerPed = workValue27
        workValue = ")"
        workValue59 = workValue59 .. playerPed .. workValue
        playerPed = workValue49
        workValue = workValue27
        playerPed = playerPed(workValue)
        workValue = numberValue14
        dataTable = flag25
        workValue = workValue(dataTable)
        workValue = not workValue

        -- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg13, arg23, arg33) ===
        function dataTable(arg13, arg23, arg33)
          local gameTime, flag24, workValue32
          gameTime = workValue50
          flag24 = arg23
          workValue32 = workValue27
          gameTime(flag24, workValue32)
          if arg33 then
            gameTime = workValue35
            flag24 = flag25
            gameTime(flag24)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        numberValue19(textValue15, workValue59, playerPed, workValue, dataTable)
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "fireworksemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable, dataTable2
    arg12 = numberValue17
    arg12 = arg12()
    if not arg12 then
      return
    end
    arg12 = cmgCall.fireworksEmotes
    if arg12 then
      arg12 = ipairs
      arg22 = cmgCall.fireworksEmotes
      arg12, arg22, arg32, workValue17 = arg12(arg22)
      for workValue27, flag25 in arg12, arg22, arg32, workValue17 do
        numberValue19 = cmgCall.emotes
        numberValue19 = numberValue19[flag25]
        if not numberValue19 then
          numberValue19 = cmgCall.props
          numberValue19 = numberValue19[flag25]
        end
        if numberValue19 then
          textValue15 = workValue30
          workValue59 = numberValue19
          textValue15 = textValue15(workValue59)
          if textValue15 then
            textValue15 = RageUI
            textValue15 = textValue15.ButtonWithStyle
            workValue59 = numberValue19[3]
            playerPed = "/e ("
            workValue = flag25
            dataTable = ")"
            playerPed = playerPed .. workValue .. dataTable
            workValue = workValue49
            dataTable = flag25
            workValue = workValue(dataTable)
            dataTable = numberValue14
            dataTable2 = numberValue19
            dataTable = dataTable(dataTable2)
            dataTable = not dataTable

            -- === HELPER FUNCTION (decompiler name: dataTable2; parameters: arg13, arg23, arg33) ===
            function dataTable2(arg13, arg23, arg33)
              local gameTime, flag24, workValue32
              gameTime = workValue50
              flag24 = arg23
              workValue32 = flag25
              gameTime(flag24, workValue32)
              if arg33 then
                gameTime = workValue35
                flag24 = numberValue19
                gameTime(flag24)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            textValue15(workValue59, playerPed, workValue, dataTable, dataTable2)
          end
        end
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "carryemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22
    arg12 = workValue57
    arg12()
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "vehicleescrowemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22
    arg12 = workValue54
    arg22 = "vehicle"
    arg12(arg22)
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "punishemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22
    arg12 = workValue54
    arg22 = "punishEmotes"
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Props"
    arg12(arg22)
    arg12 = workValue54
    arg22 = "punishProps"
    arg12(arg22)
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "roleplayescrowemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22
    arg12 = workValue54
    arg22 = "roleplayEmotes"
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Props"
    arg12(arg22)
    arg12 = workValue54
    arg22 = "roleplayProps"
    arg12(arg22)
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "flagescrowemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable, dataTable2, workValue3, workValue4, textValue7, numberValue3
    arg12 = ipairs
    arg22 = dataTable5
    arg12, arg22, arg32, workValue17 = arg12(arg22)
    for workValue27, flag25 in arg12, arg22, arg32, workValue17 do
      numberValue19 = textValue11
      numberValue19 = numberValue19[flag25]
      textValue15 = textValue9
      textValue15 = textValue15[flag25]
      workValue59 = RageUI
      workValue59 = workValue59.Button
      playerPed = flag25
      workValue = tostring
      dataTable = #numberValue19
      workValue = workValue(dataTable)
      dataTable = " emotes"
      workValue = workValue .. dataTable
      dataTable = true

      -- === HELPER FUNCTION (decompiler name: dataTable2; parameters: none) ===
      function dataTable2()
        local arg13, arg23
      end
      workValue3 = RMenu
      workValue4 = workValue3
      workValue3 = workValue3.Get
      textValue7 = "emotesmenu"
      numberValue3 = textValue15
      workValue3, workValue4, textValue7, numberValue3 = workValue3(workValue4, textValue7, numberValue3)
      -- Beginner: Draw a selectable RageUI menu button.
      workValue59(playerPed, workValue, dataTable, dataTable2, workValue3, workValue4, textValue7, numberValue3)
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = ipairs
  arg2 = dataTable5
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = textValue9
    arg7 = arg7[arg6]
    arg8 = RageUI
    arg8 = arg8.IsVisible
    arg9 = RMenu
    arg10 = arg9
    arg9 = arg9.Get
    arg11 = "emotesmenu"
    workValue2 = arg7
    -- Beginner: result below is menu.
    arg9 = arg9(arg10, arg11, workValue2)
    arg10 = true
    arg11 = false
    workValue2 = true

    -- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
    function textValue5()
      local arg12, arg22
      arg12 = workValue55
      arg22 = arg6
      arg12(arg22)
    end
    arg8(arg9, arg10, arg11, workValue2, textValue5)
  end
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "trophyescrowemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22
    arg12 = workValue54
    arg22 = "trophyEmotes"
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Props"
    arg12(arg22)
    arg12 = workValue54
    arg22 = "trophyProps"
    arg12(arg22)
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "gunemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable
    arg12 = workValue41
    arg22 = cmgCall.guns
    arg12, arg22, arg32, workValue17 = arg12(arg22)
    for workValue27, flag25 in arg12, arg22, arg32, workValue17 do
      numberValue19 = workValue30
      textValue15 = flag25
      numberValue19 = numberValue19(textValue15)
      if numberValue19 then
        numberValue19 = RageUI
        numberValue19 = numberValue19.ButtonWithStyle
        textValue15 = flag25[3]
        workValue59 = "/e ("
        playerPed = workValue27
        workValue = ")"
        workValue59 = workValue59 .. playerPed .. workValue
        playerPed = workValue49
        workValue = workValue27
        playerPed = playerPed(workValue)
        workValue = numberValue14
        dataTable = flag25
        workValue = workValue(dataTable)
        workValue = not workValue

        -- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg13, arg23, arg33) ===
        function dataTable(arg13, arg23, arg33)
          local gameTime, flag24, workValue32
          gameTime = workValue50
          flag24 = arg23
          workValue32 = workValue27
          gameTime(flag24, workValue32)
          if arg33 then
            gameTime = workValue35
            flag24 = flag25
            gameTime(flag24)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        numberValue19(textValue15, workValue59, playerPed, workValue, dataTable)
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "favouriteemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable
    arg12 = dataTable6
    arg12 = #arg12
    if 0 == arg12 then
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~y~To favourite an emote press INSERT"
      arg12(arg22)
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~y~Whilst hovering over the button"
      arg12(arg22)
    end
    arg12 = pairs
    arg22 = dataTable6
    arg12, arg22, arg32, workValue17 = arg12(arg22)
    for workValue27, flag25 in arg12, arg22, arg32, workValue17 do
      numberValue19 = workValue42
      textValue15 = flag25
      numberValue19 = numberValue19(textValue15)
      if numberValue19 then
        textValue15 = workValue30
        workValue59 = numberValue19
        textValue15 = textValue15(workValue59)
        if textValue15 then
          textValue15 = RageUI
          textValue15 = textValue15.Button
          workValue59 = numberValue19[3]
          playerPed = "/e ("
          workValue = flag25
          dataTable = ")"
          playerPed = playerPed .. workValue .. dataTable
          workValue = numberValue14
          dataTable = numberValue19
          workValue = workValue(dataTable)
          workValue = not workValue

          -- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg13, arg23, arg33) ===
          function dataTable(arg13, arg23, arg33)
            local gameTime, flag24
            if arg33 then
              gameTime = workValue35
              flag24 = numberValue19
              gameTime(flag24)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          textValue15(workValue59, playerPed, workValue, dataTable)
        end
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "propemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable
    arg12 = workValue41
    arg22 = cmgCall.props
    arg12, arg22, arg32, workValue17 = arg12(arg22)
    for workValue27, flag25 in arg12, arg22, arg32, workValue17 do
      numberValue19 = workValue30
      textValue15 = flag25
      numberValue19 = numberValue19(textValue15)
      if numberValue19 then
        numberValue19 = numberValue17
        numberValue19 = numberValue19()
        if not numberValue19 then
          numberValue19 = workValue31
          textValue15 = workValue27
          numberValue19 = numberValue19(textValue15)
          if numberValue19 then
            goto flow_label_40
          end
        end
        numberValue19 = workValue52
        textValue15 = workValue27
        numberValue19 = numberValue19(textValue15)
        if not numberValue19 then
          numberValue19 = RageUI
          numberValue19 = numberValue19.ButtonWithStyle
          textValue15 = flag25[3]
          workValue59 = "/e ("
          playerPed = workValue27
          workValue = ")"
          workValue59 = workValue59 .. playerPed .. workValue
          playerPed = workValue49
          workValue = workValue27
          playerPed = playerPed(workValue)
          workValue = numberValue14
          dataTable = flag25
          workValue = workValue(dataTable)
          workValue = not workValue

          -- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg13, arg23, arg33) ===
          function dataTable(arg13, arg23, arg33)
            local gameTime, flag24, workValue32
            gameTime = workValue50
            flag24 = arg23
            workValue32 = workValue27
            gameTime(flag24, workValue32)
            if arg33 then
              gameTime = workValue35
              flag24 = flag25
              gameTime(flag24)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          numberValue19(textValue15, workValue59, playerPed, workValue, dataTable)
        end
      end
      ::flow_label_40::
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "sharedemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue
    arg12 = workValue41
    arg22 = cmgCall.shared
    if not arg22 then
      arg22 = {}
    end
    arg12, arg22, arg32, workValue17 = arg12(arg22)
    for workValue27, flag25 in arg12, arg22, arg32, workValue17 do
      numberValue19 = workValue30
      textValue15 = flag25
      numberValue19 = numberValue19(textValue15)
      if numberValue19 then
        numberValue19 = workValue44
        textValue15 = workValue27
        numberValue19 = numberValue19(textValue15)
        if not numberValue19 then
          numberValue19 = flag25.animationOptions
          if numberValue19 then
            numberValue19 = flag25.animationOptions
            numberValue19 = numberValue19.invisible
            if numberValue19 then
              goto flow_label_39
            end
          end
          numberValue19 = RageUI
          numberValue19 = numberValue19.Button
          textValue15 = flag25[3]
          workValue59 = "/nearby (~g~"
          playerPed = workValue27
          workValue = "~w~)"
          workValue59 = workValue59 .. playerPed .. workValue
          playerPed = numberValue14
          workValue = flag25
          playerPed = playerPed(workValue)
          playerPed = not playerPed

          -- === HELPER FUNCTION (decompiler name: workValue; parameters: arg13, arg23, arg33) ===
          function workValue(arg13, arg23, arg33)
            local gameTime, flag24
            if arg33 then
              gameTime = workValue37
              flag24 = workValue27
              gameTime(flag24)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          numberValue19(textValue15, workValue59, playerPed, workValue)
        end
      end
      ::flow_label_39::
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "walkingstyles"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "Normal (Reset)"
    arg32 = ""
    workValue17 = numberValue14
    workValue27 = nil
    workValue17 = workValue17(workValue27)
    workValue17 = not workValue17

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: arg13, arg23, arg33) ===
    function workValue27(arg13, arg23, arg33)
      local gameTime, flag24, workValue32
      if arg33 then
        gameTime = ResetPedMovementClipset
        flag24 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        flag24 = flag24()
        workValue32 = 0.0
        gameTime(flag24, workValue32)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue17, workValue27)
    arg12 = workValue41
    arg22 = cmgCall.walks
    arg12, arg22, arg32, workValue17 = arg12(arg22)
    for workValue27, flag25 in arg12, arg22, arg32, workValue17 do
      numberValue19 = RageUI
      numberValue19 = numberValue19.Button
      textValue15 = workValue27
      workValue59 = ""
      playerPed = numberValue14
      workValue = flag25
      playerPed = playerPed(workValue)
      playerPed = not playerPed

      -- === HELPER FUNCTION (decompiler name: workValue; parameters: arg13, arg23, arg33) ===
      function workValue(arg13, arg23, arg33)
        local gameTime, flag24
        if arg33 then
          gameTime = workValue38
          flag24 = flag25
          gameTime(flag24)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      numberValue19(textValue15, workValue59, playerPed, workValue)
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "moods"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "Normal (Reset)"
    arg32 = ""
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: arg13, arg23, arg33) ===
    function workValue27(arg13, arg23, arg33)
      local gameTime, flag24
      if arg33 then
        gameTime = ClearFacialIdleAnimOverride
        flag24 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        flag24 = flag24()
        gameTime(flag24)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue17, workValue27)
    arg12 = workValue41
    arg22 = cmgCall.moods
    arg12, arg22, arg32, workValue17 = arg12(arg22)
    for workValue27, flag25 in arg12, arg22, arg32, workValue17 do
      numberValue19 = RageUI
      numberValue19 = numberValue19.Button
      textValue15 = workValue27
      workValue59 = ""
      playerPed = true

      -- === HELPER FUNCTION (decompiler name: workValue; parameters: arg13, arg23, arg33) ===
      function workValue(arg13, arg23, arg33)
        local gameTime, flag24
        if arg33 then
          gameTime = workValue35
          flag24 = flag25
          gameTime(flag24)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      numberValue19(textValue15, workValue59, playerPed, workValue)
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "animalemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable, dataTable2
    arg12 = numberValue16
    arg12 = arg12()
    if not arg12 then
      return
    end
    arg12 = numberValue15
    arg12 = arg12()
    if not arg12 then
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~y~Animal emotes need a non-human ped"
      arg12(arg22)
    end
    arg12 = workValue41
    arg22 = cmgCall.animals
    arg12, arg22, arg32, workValue17 = arg12(arg22)
    for workValue27, flag25 in arg12, arg22, arg32, workValue17 do
      numberValue19 = workValue30
      textValue15 = flag25
      numberValue19 = numberValue19(textValue15)
      if numberValue19 then
        numberValue19 = numberValue15
        numberValue19 = numberValue19()
        if numberValue19 then
          numberValue19 = numberValue14
          textValue15 = flag25
          numberValue19 = numberValue19(textValue15)
          numberValue19 = not numberValue19
        end
        textValue15 = RageUI
        textValue15 = textValue15.ButtonWithStyle
        workValue59 = flag25[3]
        playerPed = "/e ("
        workValue = workValue27
        dataTable = ")"
        playerPed = playerPed .. workValue .. dataTable
        workValue = workValue49
        dataTable = workValue27
        workValue = workValue(dataTable)
        dataTable = numberValue19

        -- === HELPER FUNCTION (decompiler name: dataTable2; parameters: arg13, arg23, arg33) ===
        function dataTable2(arg13, arg23, arg33)
          local gameTime, flag24, workValue32
          gameTime = workValue50
          flag24 = arg23
          workValue32 = workValue27
          gameTime(flag24, workValue32)
          if arg33 then
            gameTime = numberValue19
            if gameTime then
              gameTime = workValue35
              flag24 = flag25
              gameTime(flag24)
            end
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        textValue15(workValue59, playerPed, workValue, dataTable, dataTable2)
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "searchemotes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable, dataTable2, workValue3, workValue4, textValue7
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "Set search text"
    arg32 = textValue10
    if "" == arg32 then
      arg32 = "~c~Tap to type"
      if arg32 then
        goto flow_label_11
      end
    end
    arg32 = textValue10
    ::flow_label_11::
    workValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue27; parameters: arg13, arg23, arg33) ===
    function workValue27(arg13, arg23, arg33)
      local gameTime, flag24, workValue32, textValue14, workValue53, textValue18, textValue20, textValue2, numberValue
      if arg33 then
        gameTime = AddTextEntry
        flag24 = "CMG_EMOTE_SEARCH"
        workValue32 = "Search emotes"
        gameTime(flag24, workValue32)
        gameTime = DisplayOnscreenKeyboard
        flag24 = 1
        workValue32 = "CMG_EMOTE_SEARCH"
        textValue14 = ""
        workValue53 = textValue10
        textValue18 = ""
        textValue20 = ""
        textValue2 = ""
        numberValue = 48
        gameTime(flag24, workValue32, textValue14, workValue53, textValue18, textValue20, textValue2, numberValue)
        while true do
          gameTime = UpdateOnscreenKeyboard
          gameTime = gameTime()
          if 0 ~= gameTime then
            break
          end
          gameTime = Citizen
          gameTime = gameTime.Wait
          flag24 = 0
          gameTime(flag24)
        end
        gameTime = GetOnscreenKeyboardResult
        gameTime = gameTime()
        if gameTime then
          flag24 = string
          flag24 = flag24.lower
          workValue32 = gameTime
          flag24 = flag24(workValue32)
          textValue10 = flag24
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue17, workValue27)
    arg12 = textValue10
    if "" == arg12 then
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~y~Set search text to filter emotes"
      arg12(arg22)
    else
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~g~Query: ~w~"
      arg32 = textValue10
      arg22 = arg22 .. arg32
      arg12(arg22)
      arg12 = {}
      arg22 = workValue48

      -- === HELPER FUNCTION: arg32(arg13, arg23, arg33) ===
      function arg32(arg13, arg23, arg33)
        local gameTime, flag24, workValue32, textValue14, workValue53, textValue18
        gameTime = workValue47
        flag24 = arg13
        workValue32 = arg23[3]
        textValue14 = textValue10
        gameTime = gameTime(flag24, workValue32, textValue14)
        if gameTime then
          gameTime = table
          gameTime = gameTime.insert
          flag24 = arg12
          workValue32 = {}
          textValue14 = arg13
          workValue53 = arg23
          textValue18 = arg33
          workValue32[1] = textValue14
          workValue32[2] = workValue53
          workValue32[3] = textValue18
          gameTime(flag24, workValue32)
        end
      end
      arg22(arg32)
      arg22 = table
      arg22 = arg22.sort
      arg32 = arg12

      -- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg13, arg23) ===
      function workValue17(arg13, arg23)
        local arg33, gameTime
        arg33 = arg13[1]
        gameTime = arg23[1]
        arg33 = arg33 < gameTime
        return arg33
      end
      arg22(arg32, workValue17)
      arg22 = math
      arg22 = arg22.min
      arg32 = #arg12
      workValue17 = 80
      arg22 = arg22(arg32, workValue17)
      arg32 = #arg12
      if arg32 > 80 then
        arg32 = RageUI
        arg32 = arg32.Separator
        workValue17 = "~y~"
        workValue27 = #arg12
        flag25 = " hits, showing 80"
        workValue17 = workValue17 .. workValue27 .. flag25
        arg32(workValue17)
      end
      arg32 = 1
      workValue17 = arg22
      workValue27 = 1
      for flag25 = arg32, workValue17, workValue27 do
        numberValue19 = arg12[flag25]
        numberValue19 = numberValue19[1]
        textValue15 = arg12[flag25]
        textValue15 = textValue15[2]
        workValue59 = arg12[flag25]
        workValue59 = workValue59[3]
        if "shared" == workValue59 then
          playerPed = "/nearby (~g~"
          workValue = numberValue19
          dataTable = "~w~)"
          playerPed = playerPed .. workValue .. dataTable
          if playerPed then
            goto flow_label_75
          end
        end
        playerPed = "/e ("
        workValue = numberValue19
        dataTable = ")"
        playerPed = playerPed .. workValue .. dataTable
        ::flow_label_75::
        workValue = RageUI
        workValue = workValue.ButtonWithStyle
        dataTable = textValue15[3]
        dataTable2 = playerPed
        workValue3 = workValue49
        workValue4 = numberValue19
        workValue3 = workValue3(workValue4)
        workValue4 = numberValue14
        textValue7 = textValue15
        workValue4 = workValue4(textValue7)
        workValue4 = not workValue4

        -- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg13, arg23, arg33) ===
        function textValue7(arg13, arg23, arg33)
          local gameTime, flag24, workValue32
          gameTime = workValue50
          flag24 = arg23
          workValue32 = numberValue19
          gameTime(flag24, workValue32)
          if arg33 then
            gameTime = workValue59
            if "shared" == gameTime then
              gameTime = workValue37
              flag24 = numberValue19
              gameTime(flag24)
            else
              gameTime = workValue35
              flag24 = textValue15
              gameTime(flag24)
            end
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        workValue(dataTable, dataTable2, workValue3, workValue4, textValue7)
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
end
rageUiCall6(textValue16, workValue58, flag26, flag27)
rageUiCall6 = RegisterCommand
textValue16 = "emotemenu"
-- Beginner: this function is the command handler for "emotemenu".

-- === HELPER FUNCTION (decompiler name: workValue58; parameters: none) ===
function workValue58()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "emotesmenu"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = RageUI
  arg3 = arg3.Visible
  arg4 = RMenu
  arg5 = arg4
  arg4 = arg4.Get
  arg6 = "emotesmenu"
  arg7 = "mainmenu"
  arg4, arg5, arg6, arg7 = arg4(arg5, arg6, arg7)
  -- Beginner: result below is menuVisible.
  arg3 = arg3(arg4, arg5, arg6, arg7)
  arg3 = not arg3
  arg1(arg2, arg3)
end
flag26 = false
-- Beginner: Register a chat/console command. Event/command: "emotemenu".
rageUiCall6(textValue16, workValue58, flag26)
rageUiCall6 = RegisterKeyMapping
textValue16 = "emotemenu"
workValue58 = "Open Emote Menu"
flag26 = "KEYBOARD"
flag27 = "F3"
-- Beginner: Bind a command to a keyboard/controller key.
rageUiCall6(textValue16, workValue58, flag26, flag27)

-- === HELPER FUNCTION (decompiler name: rageUiCall6; parameters: arg1, arg2) ===
function rageUiCall6(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg3 = #arg2
  if arg3 < 1 then
    arg3 = notify
    arg4 = "~r~No emote name was specified."
    -- Beginner: Show a notification to the player.
    arg3(arg4)
    return
  end
  arg3 = string
  arg3 = arg3.lower
  arg4 = arg2[1]
  arg3 = arg3(arg4)
  if not arg3 then
    arg4 = notify
    arg5 = "~r~No emote name was specified."
    arg4(arg5)
    return
  elseif "c" == arg3 then
    arg4 = workValue24
    arg5 = false
    arg4(arg5)
    return
  end
  arg4 = nil
  arg5 = #arg2
  if arg5 >= 2 then
    arg5 = tonumber
    arg6 = arg2[2]
    arg5 = arg5(arg6)
    arg4 = arg5
  end
  arg5 = cmgCall.emotes
  arg5 = arg5[arg3]
  if arg5 then
    arg5 = workValue35
    arg6 = cmgCall.emotes
    arg6 = arg6[arg3]
    arg7 = nil
    arg8 = nil
    arg9 = arg4
    arg5(arg6, arg7, arg8, arg9)
  else
    arg5 = cmgCall.dances
    arg5 = arg5[arg3]
    if arg5 then
      arg5 = workValue35
      arg6 = cmgCall.dances
      arg6 = arg6[arg3]
      arg7 = nil
      arg8 = nil
      arg9 = arg4
      arg5(arg6, arg7, arg8, arg9)
    else
      arg5 = cmgCall.custom
      arg5 = arg5[arg3]
      if arg5 then
        arg5 = workValue35
        arg6 = cmgCall.custom
        arg6 = arg6[arg3]
        arg7 = nil
        arg8 = nil
        arg9 = arg4
        arg5(arg6, arg7, arg8, arg9)
      else
        arg5 = cmgCall.props
        arg5 = arg5[arg3]
        if arg5 then
          arg5 = workValue35
          arg6 = cmgCall.props
          arg6 = arg6[arg3]
          arg7 = nil
          arg8 = nil
          arg9 = arg4
          arg5(arg6, arg7, arg8, arg9)
        else
          arg5 = cmgCall.guns
          arg5 = arg5[arg3]
          if arg5 then
            arg5 = workValue35
            arg6 = cmgCall.guns
            arg6 = arg6[arg3]
            arg7 = nil
            arg8 = nil
            arg9 = arg4
            arg5(arg6, arg7, arg8, arg9)
          else
            arg5 = cmgCall.animals
            arg5 = arg5[arg3]
            if arg5 then
              arg5 = workValue35
              arg6 = cmgCall.animals
              arg6 = arg6[arg3]
              arg7 = nil
              arg8 = nil
              arg9 = arg4
              arg5(arg6, arg7, arg8, arg9)
            else
              arg5 = cmgCall.shared
              if arg5 then
                arg5 = cmgCall.shared
                arg5 = arg5[arg3]
                if arg5 then
                  arg5 = workValue35
                  arg6 = cmgCall.shared
                  arg6 = arg6[arg3]
                  arg7 = nil
                  arg8 = nil
                  arg9 = arg4
                  arg5(arg6, arg7, arg8, arg9)
              end
              else
                arg5 = notify
                arg6 = "~r~Invalid emote name was specified."
                -- Beginner: Show a notification to the player.
                arg5(arg6)
              end
            end
          end
        end
      end
    end
  end
end
textValue16 = RegisterCommand
workValue58 = "e"
flag26 = rageUiCall6
flag27 = false
-- Beginner: Register a chat/console command. Event/command: "e".
textValue16(workValue58, flag26, flag27)
textValue16 = RegisterCommand
workValue58 = "emote"
flag26 = rageUiCall6
flag27 = false
textValue16(workValue58, flag26, flag27)
textValue16 = RegisterCommand
workValue58 = "nearby"
-- Beginner: this function is the command handler for "nearby".

-- === HELPER FUNCTION (decompiler name: flag26; parameters: arg1, arg2) ===
function flag26(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = #arg2
  if arg3 < 1 then
    arg3 = notify
    arg4 = "~r~No emote name was specified."
    -- Beginner: Show a notification to the player.
    arg3(arg4)
    return
  end
  arg3 = string
  arg3 = arg3.lower
  arg4 = arg2[1]
  arg3 = arg3(arg4)
  if not arg3 then
    arg4 = notify
    arg5 = "~r~No emote name was specified."
    arg4(arg5)
    return
  end
  arg4 = cmgCall.shared
  if arg4 then
    arg4 = cmgCall.shared
    arg4 = arg4[arg3]
    if arg4 then
      arg4 = workValue37
      arg5 = arg3
      arg4(arg5)
  end
  else
    arg4 = notify
    arg5 = "~r~Invalid emote name was specified."
    -- Beginner: Show a notification to the player.
    arg4(arg5)
  end
end
flag27 = false
-- Beginner: Register a chat/console command. Event/command: "nearby".
textValue16(workValue58, flag26, flag27)
textValue16 = RegisterCommand
workValue58 = "walk"
-- Beginner: this function is the command handler for "walk".

-- === HELPER FUNCTION (decompiler name: flag26; parameters: arg1, arg2) ===
function flag26(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = #arg2
  if arg3 < 1 then
    arg3 = notify
    arg4 = "~r~No walk name was specified."
    -- Beginner: Show a notification to the player.
    arg3(arg4)
    return
  end
  arg3 = arg2[1]
  if not arg3 then
    arg4 = notify
    arg5 = "~r~No walk name was specified."
    arg4(arg5)
    return
  end
  arg4 = cmgCall.walks
  arg4 = arg4[arg3]
  if arg4 then
    arg4 = numberValue14
    arg5 = cmgCall.walks
    arg5 = arg5[arg3]
    arg4 = arg4(arg5)
    if not arg4 then
      arg4 = workValue38
      arg5 = cmgCall.walks
      arg5 = arg5[arg3]
      arg4(arg5)
    else
      arg4 = notify
      arg5 = "~r~You can not use emotes at this time."
      -- Beginner: Show a notification to the player.
      arg4(arg5)
    end
  else
    arg4 = notify
    arg5 = "~r~Invalid walk name was specified."
    arg4(arg5)
  end
end
flag27 = false
-- Beginner: Register a chat/console command. Event/command: "walk".
textValue16(workValue58, flag26, flag27)
textValue16 = RegisterNetEvent
workValue58 = "c74831f601"
-- Beginner: this function handles network event "c74831f601".

-- === HELPER FUNCTION (decompiler name: flag26; parameters: arg1, arg2) ===
function flag26(arg1, arg2)
  local arg3, arg4, arg5, arg6
  arg3 = cmgCall.shared
  if arg3 then
    arg3 = cmgCall.shared
    arg3 = arg3[arg2]
    if arg3 then
      arg3 = numberValue14
      arg3 = arg3()
      if not arg3 then
        workValue15 = arg2
        numberValue8 = arg1
        arg3 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg3 = arg3()
        numberValue9 = arg3
        arg3 = notify
        arg4 = "~y~Y~w~ to accept, ~r~L~w~ to refuse (~g~"
        arg5 = cmgCall.shared
        arg5 = arg5[arg2]
        arg5 = arg5[3]
        arg6 = "~w~)"
        arg4 = arg4 .. arg5 .. arg6
        -- Beginner: Show a notification to the player.
        arg3(arg4)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c74831f601".
textValue16(workValue58, flag26)

-- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg1) ===
function textValue16(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = workValue24
  arg3 = false
  arg2(arg3)
  arg2 = SetEntityVelocity
  arg3 = arg1
  arg4 = 0.0
  arg5 = 0.0
  arg6 = 0.0
  arg2(arg3, arg4, arg5, arg6)
  arg2 = ClearPedTasksImmediately
  arg3 = arg1
  arg2(arg3)
  arg2 = DetachEntity
  arg3 = arg1
  arg4 = true
  arg5 = false
  arg2(arg3, arg4, arg5)
end
workValue58 = RegisterNetEvent
flag26 = "3c60b83bb5"
-- Beginner: this function handles network event "3c60b83bb5".

-- === HELPER FUNCTION (decompiler name: flag27; parameters: arg1, arg2) ===
function flag27(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = textValue16
  arg4 = PlayerPedId
  arg4, arg5 = arg4()
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg3(arg4, arg5)
  arg3 = cmgCall.shared
  if arg3 then
    arg3 = cmgCall.shared
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue35
      arg4 = cmgCall.shared
      arg4 = arg4[arg1]
      arg5 = arg2
      arg3(arg4, arg5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3c60b83bb5".
workValue58(flag26, flag27)

-- === HELPER FUNCTION (decompiler name: workValue58; parameters: arg1, arg2) ===
function workValue58(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5, dataTable4, rageUiCall, textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5
  arg3 = arg2.animationOptions
  if not arg3 then
    arg3 = {}
  end
  arg4 = arg3.syncOffsetFront
  if not arg4 then
    arg4 = 1.0
  end
  arg5 = arg3.syncOffsetSide
  if not arg5 then
    arg5 = 0.0
  end
  arg6 = arg3.syncOffsetHeight
  if not arg6 then
    arg6 = 0.0
  end
  arg7 = arg3.syncOffsetHeading
  if nil == arg7 then
    arg7 = -180.0
  end
  arg8 = GetEntityHeading
  arg9 = arg1
  -- Beginner: result below is heading.
  arg8 = arg8(arg9)
  arg9 = math
  arg9 = arg9.rad
  arg10 = arg8
  arg9 = arg9(arg10)
  arg10 = math
  arg10 = arg10.sin
  arg11 = arg9
  arg10 = arg10(arg11)
  arg10 = -arg10
  arg11 = math
  arg11 = arg11.cos
  workValue2 = arg9
  arg11 = arg11(workValue2)
  workValue2 = math
  workValue2 = workValue2.cos
  textValue5 = arg9
  workValue2 = workValue2(textValue5)
  textValue5 = math
  textValue5 = textValue5.sin
  dataTable4 = arg9
  textValue5 = textValue5(dataTable4)
  dataTable4 = GetEntityCoords
  rageUiCall = arg1
  -- Beginner: result below is entityCoords.
  dataTable4 = dataTable4(rageUiCall)
  rageUiCall = dataTable4.x
  textValue6 = arg10 * arg4
  rageUiCall = rageUiCall + textValue6
  textValue6 = workValue2 * arg5
  rageUiCall = rageUiCall + textValue6
  textValue6 = dataTable4.y
  textValue8 = arg11 * arg4
  textValue6 = textValue6 + textValue8
  textValue8 = textValue5 * arg5
  textValue6 = textValue6 + textValue8
  textValue8 = dataTable4.z
  textValue8 = textValue8 + arg6
  flag = rageUiCall
  rageUiCall2 = textValue6
  rageUiCall3 = textValue8
  flag5 = arg8 + arg7
  return flag, rageUiCall2, rageUiCall3, flag5
end
flag26 = RegisterNetEvent
flag27 = "03634a9527"
-- Beginner: this function handles network event "03634a9527".

-- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg1) ===
function textValue17(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5, dataTable4, rageUiCall, textValue6, textValue8
  arg2 = GetPlayerFromServerId
  arg3 = numberValue6
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  if -1 == arg2 then
    return
  end
  arg3 = GetPlayerPed
  arg4 = arg2
  -- Beginner: result below is playerPed.
  arg3 = arg3(arg4)
  if 0 == arg3 then
    return
  end
  arg4 = cmgCall.shared
  if arg4 then
    arg4 = cmgCall.shared
    arg5 = workValue14
    arg4 = arg4[arg5]
  end
  if not arg4 then
    return
  end
  arg5 = workValue58
  arg6 = arg3
  arg7 = arg4
  arg5, arg6, arg7, arg8 = arg5(arg6, arg7)
  arg9 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg9 = arg9()
  arg10 = textValue16
  arg11 = arg9
  arg10(arg11)
  arg10 = SetEntityHeading
  arg11 = arg9
  workValue2 = arg8
  -- Beginner: Change the direction an entity is facing.
  arg10(arg11, workValue2)
  arg10 = SetEntityCoordsNoOffset
  arg11 = arg9
  workValue2 = arg5
  textValue5 = arg6
  dataTable4 = arg7
  rageUiCall = false
  textValue6 = false
  textValue8 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg10(arg11, workValue2, textValue5, dataTable4, rageUiCall, textValue6, textValue8)
  arg10 = workValue35
  arg11 = arg4
  workValue2 = arg1
  arg10(arg11, workValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "03634a9527".
flag26(flag27, textValue17)

-- === HELPER FUNCTION (decompiler name: flag26; parameters: none) ===
function flag26()
  local arg1, arg2
  arg1 = nil
  workValue15 = arg1
  arg1 = 0
  numberValue8 = arg1
  arg1 = 0
  numberValue9 = arg1
end

-- === HELPER FUNCTION (decompiler name: flag27; parameters: none) ===
function flag27()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue2, textValue5, dataTable4, rageUiCall, textValue6, textValue8, flag, rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7, flag14
  arg1 = workValue8
  if not arg1 then
    return
  end
  arg1 = workValue9
  arg2 = workValue8.handle
  arg1 = arg1(arg2)
  if arg1 then
    return
  end
  arg1 = workValue8
  arg2 = HasNamedPtfxAssetLoaded
  arg3 = arg1.asset
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = RequestNamedPtfxAsset
    arg3 = arg1.asset
    arg2(arg3)
    while true do
      arg2 = HasNamedPtfxAssetLoaded
      arg3 = arg1.asset
      arg2 = arg2(arg3)
      if arg2 then
        break
      end
      arg2 = Wait
      arg3 = 0
      arg2(arg3)
    end
  end

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local arg12, arg22
    arg12 = UseParticleFxAsset
    arg22 = arg1.asset
    arg12(arg22)
  end
  arg3 = arg1.placement
  if not arg3 then
    arg3 = {}
    arg4 = 0.0
    arg5 = 0.0
    arg6 = 0.0
    arg7 = 0.0
    arg8 = 0.0
    arg9 = 0.0
    arg10 = 1.0
    arg3[1] = arg4
    arg3[2] = arg5
    arg3[3] = arg6
    arg3[4] = arg7
    arg3[5] = arg8
    arg3[6] = arg9
    arg3[7] = arg10
  end
  arg4 = arg3[1]
  arg5 = arg3[2]
  arg6 = arg3[3]
  arg7 = arg3[4]
  if not arg7 then
    arg7 = 0.0
  end
  arg8 = arg3[5]
  if not arg8 then
    arg8 = 0.0
  end
  arg9 = arg3[6]
  if not arg9 then
    arg9 = 0.0
  end
  arg10 = arg3[7]
  if nil == arg10 or 0.0 == arg10 then
    arg10 = 1.0
  end
  arg11 = arg10 or arg11
  if not arg10 then
    arg11 = 1.0
  end
  arg11 = arg11 + 0.0
  workValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue2 = workValue2()

  -- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg12) ===
  function textValue5(arg12)
    local arg22, arg32, workValue17, workValue27, flag25, numberValue19, textValue15, workValue59, playerPed, workValue, dataTable
    arg22 = workValue9
    arg32 = arg12
    arg22 = arg22(arg32)
    if not arg22 then
      return
    end
    arg22 = arg1.ptfxColor
    if not arg22 then
      arg32 = SetParticleFxLoopedColour
      workValue17 = arg12
      workValue27 = 1.0
      flag25 = 1.0
      numberValue19 = 1.0
      textValue15 = false
      arg32(workValue17, workValue27, flag25, numberValue19, textValue15)
      return
    end
    arg32 = arg22[1]
    if arg32 then
      workValue17 = type
      workValue27 = arg32
      workValue17 = workValue17(workValue27)
      if "table" == workValue17 then
        workValue17 = arg32[1]
        if workValue17 then
          workValue17 = type
          workValue27 = arg32[1]
          workValue17 = workValue17(workValue27)
          if "table" == workValue17 then
            workValue17 = math
            workValue17 = workValue17.random
            workValue27 = 1
            flag25 = #arg22
            workValue17 = workValue17(workValue27, flag25)
            arg32 = arg22[workValue17]
          end
        end
      end
    end
    if arg32 then
      workValue17 = type
      workValue27 = arg32
      workValue17 = workValue17(workValue27)
      if "table" == workValue17 then
        workValue17 = arg32.R
        if not workValue17 then
          workValue17 = arg32.r
          if not workValue17 then
            workValue17 = 255
          end
        end
        workValue17 = workValue17 / 255.0
        workValue27 = arg32.G
        if not workValue27 then
          workValue27 = arg32.g
          if not workValue27 then
            workValue27 = 255
          end
        end
        workValue27 = workValue27 / 255.0
        flag25 = arg32.B
        if not flag25 then
          flag25 = arg32.b
          if not flag25 then
            flag25 = 255
          end
        end
        flag25 = flag25 / 255.0
        numberValue19 = SetParticleFxLoopedColour
        textValue15 = arg12
        workValue59 = workValue17
        playerPed = workValue27
        workValue = flag25
        dataTable = false
        numberValue19(textValue15, workValue59, playerPed, workValue, dataTable)
        numberValue19 = arg32.A
        if not numberValue19 then
          numberValue19 = arg32.a
        end
        if nil ~= numberValue19 and numberValue19 > 1.0 then
          textValue15 = SetParticleFxLoopedAlpha
          workValue59 = arg12
          playerPed = numberValue19 / 255.0
          textValue15(workValue59, playerPed)
        elseif nil ~= numberValue19 then
          textValue15 = SetParticleFxLoopedAlpha
          workValue59 = arg12
          playerPed = numberValue19
          textValue15(workValue59, playerPed)
        end
    end
    else
      workValue17 = SetParticleFxLoopedColour
      workValue27 = arg12
      flag25 = 1.0
      numberValue19 = 1.0
      textValue15 = 1.0
      workValue59 = false
      workValue17(workValue27, flag25, numberValue19, textValue15, workValue59)
    end
  end

  -- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg12) ===
  function dataTable4(arg12)
    local arg22, arg32, workValue17
    arg22 = arg1.ptfxBone
    if arg22 then
      arg22 = GetPedBoneIndex
      arg32 = workValue2
      workValue17 = arg1.ptfxBone
      return arg22(arg32, workValue17)
    end
    arg22 = IsEntityAPed
    arg32 = arg12
    arg22 = arg22(arg32)
    if arg22 then
      arg22 = GetPedBoneIndex
      arg32 = arg12
      workValue17 = 60309
      return arg22(arg32, workValue17)
    end
    arg22 = GetEntityBoneIndexByName
    arg32 = arg12
    workValue17 = "VFX"
    arg22 = arg22(arg32, workValue17)
    if nil == arg22 or arg22 < 0 then
      arg22 = 0
    end
    return arg22
  end
  rageUiCall = workValue2
  textValue6 = arg1.ptfxNoProp
  if not textValue6 then
    textValue6 = dataTable3
    textValue6 = textValue6[1]
    if textValue6 then
      textValue6 = DoesEntityExist
      textValue8 = dataTable3
      textValue8 = textValue8[1]
      textValue6 = textValue6(textValue8)
      if textValue6 then
        textValue6 = dataTable3
        rageUiCall = textValue6[1]
      end
    end
  end
  textValue6 = dataTable4
  textValue8 = rageUiCall
  textValue6 = textValue6(textValue8)
  textValue8 = 0
  flag = IsEntityAPed
  rageUiCall2 = rageUiCall
  flag = flag(rageUiCall2)
  if flag then
    flag = arg2
    flag()
    flag = StartParticleFxLoopedOnEntityBone
    rageUiCall2 = arg1.name
    rageUiCall3 = rageUiCall
    flag5 = arg4
    flag6 = arg5
    flag7 = arg6
    workValue12 = arg7
    workValue13 = arg8
    flag9 = arg9
    flag11 = textValue6
    flag12 = arg11
    flag13 = false
    numberValue7 = false
    flag14 = false
    flag = flag(rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7, flag14)
    textValue8 = flag
    flag = workValue9
    rageUiCall2 = textValue8
    flag = flag(rageUiCall2)
    if not flag then
      flag = arg2
      flag()
      flag = _ENV
      rageUiCall2 = "StartNetworkedParticleFxLoopedOnEntityBone"
      flag = flag[rageUiCall2]
      rageUiCall2 = arg1.name
      rageUiCall3 = rageUiCall
      flag5 = arg4
      flag6 = arg5
      flag7 = arg6
      workValue12 = arg7
      workValue13 = arg8
      flag9 = arg9
      flag11 = textValue6
      flag12 = arg11
      flag13 = false
      numberValue7 = false
      flag14 = false
      flag = flag(rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7, flag14)
      textValue8 = flag
    end
  else
    flag = arg2
    flag()
    flag = StartParticleFxLoopedOnEntity
    rageUiCall2 = arg1.name
    rageUiCall3 = rageUiCall
    flag5 = arg4
    flag6 = arg5
    flag7 = arg6
    workValue12 = arg7
    workValue13 = arg8
    flag9 = arg9
    flag11 = arg11
    flag12 = false
    flag13 = false
    numberValue7 = false
    flag = flag(rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7)
    textValue8 = flag
    flag = workValue9
    rageUiCall2 = textValue8
    flag = flag(rageUiCall2)
    if not flag then
      flag = arg2
      flag()
      flag = StartParticleFxLoopedOnEntityBone
      rageUiCall2 = arg1.name
      rageUiCall3 = rageUiCall
      flag5 = arg4
      flag6 = arg5
      flag7 = arg6
      workValue12 = arg7
      workValue13 = arg8
      flag9 = arg9
      flag11 = -1
      flag12 = arg11
      flag13 = false
      numberValue7 = false
      flag14 = false
      flag = flag(rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7, flag14)
      textValue8 = flag
    end
    flag = workValue9
    rageUiCall2 = textValue8
    flag = flag(rageUiCall2)
    if not flag then
      flag = arg2
      flag()
      flag = StartParticleFxLoopedOnEntityBone
      rageUiCall2 = arg1.name
      rageUiCall3 = rageUiCall
      flag5 = arg4
      flag6 = arg5
      flag7 = arg6
      workValue12 = arg7
      workValue13 = arg8
      flag9 = arg9
      flag11 = textValue6
      flag12 = arg11
      flag13 = false
      numberValue7 = false
      flag14 = false
      flag = flag(rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7, flag14)
      textValue8 = flag
    end
    flag = workValue9
    rageUiCall2 = textValue8
    flag = flag(rageUiCall2)
    if not flag then
      flag = arg2
      flag()
      flag = StartNetworkedParticleFxLoopedOnEntity
      rageUiCall2 = arg1.name
      rageUiCall3 = rageUiCall
      flag5 = arg4
      flag6 = arg5
      flag7 = arg6
      workValue12 = arg7
      workValue13 = arg8
      flag9 = arg9
      flag11 = arg11
      flag12 = false
      flag13 = false
      numberValue7 = false
      flag = flag(rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7)
      textValue8 = flag
    end
    flag = workValue9
    rageUiCall2 = textValue8
    flag = flag(rageUiCall2)
    if not flag then
      flag = arg2
      flag()
      flag = _ENV
      rageUiCall2 = "StartNetworkedParticleFxLoopedOnEntityBone"
      flag = flag[rageUiCall2]
      rageUiCall2 = arg1.name
      rageUiCall3 = rageUiCall
      flag5 = arg4
      flag6 = arg5
      flag7 = arg6
      workValue12 = arg7
      workValue13 = arg8
      flag9 = arg9
      flag11 = textValue6
      flag12 = arg11
      flag13 = false
      numberValue7 = false
      flag14 = false
      flag = flag(rageUiCall2, rageUiCall3, flag5, flag6, flag7, workValue12, workValue13, flag9, flag11, flag12, flag13, numberValue7, flag14)
      textValue8 = flag
    end
  end
  flag = workValue9
  rageUiCall2 = textValue8
  flag = flag(rageUiCall2)
  flag = textValue8 or flag
  if not flag or not textValue8 then
    flag = nil
  end
  arg1.handle = flag
  flag = textValue5
  rageUiCall2 = arg1.handle
  flag(rageUiCall2)
  flag = arg1.ptfxCanHold
  if not flag then
    flag = Citizen
    flag = flag.CreateThread

    -- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: none) ===
    function rageUiCall2()
      local arg12, arg22, arg32, workValue17
      arg12 = workValue8
      if arg12 then
        arg12 = textValue5
        arg22 = workValue8.handle
        arg12(arg22)
        arg12 = workValue8.wait
        if nil == arg12 then
          arg12 = 500
        end
        if arg12 > 0 then
          arg22 = Citizen
          arg22 = arg22.Wait
          arg32 = arg12
          arg22(arg32)
        end
        arg22 = workValue8
        if arg22 then
          arg22 = workValue9
          arg32 = workValue8.handle
          arg22 = arg22(arg32)
          if arg22 then
            arg22 = StopParticleFxLooped
            arg32 = workValue8.handle
            workValue17 = false
            arg22(arg32, workValue17)
            workValue8.handle = nil
          end
        end
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    flag(rageUiCall2)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue17; parameters: none) ===
function textValue17()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = workValue15
  if arg1 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    arg2 = numberValue9
    arg1 = arg1 - arg2
    arg2 = 5000
    if arg1 > arg2 then
      arg1 = flag26
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      arg1()
    else
      arg1 = IsControlJustPressed
      arg2 = 1
      arg3 = 246
      arg1 = arg1(arg2, arg3)
      if arg1 then
        arg1 = numberValue14
        arg1 = arg1()
        if arg1 then
          arg1 = notify
          arg2 = "~r~You can not use emotes at this time."
          -- Beginner: Show a notification to the player.
          arg1(arg2)
        else
          arg1 = cmgCall.shared
          if arg1 then
            arg1 = cmgCall.shared
            arg2 = workValue15
            arg1 = arg1[arg2]
            if arg1 then
              arg1 = TriggerServerEvent
              arg2 = "3c60b83bb5"
              arg3 = numberValue8
              arg4 = cmgCall.shared
              arg5 = workValue15
              arg4 = arg4[arg5]
              arg4 = arg4[4]
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3c60b83bb5".
              arg1(arg2, arg3, arg4)
            end
          end
        end
        arg1 = flag26
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        arg1()
      end
    end
  end
  arg1 = textValue3
  if arg1 then
    arg1 = workValue5
    if arg1 then
      arg1 = workValue6
      if arg1 then
        arg1 = flag23
        if not arg1 then
          arg1 = workValue8
          if arg1 then
            arg1 = EnableControlAction
            arg2 = 0
            arg3 = 47
            arg4 = true
            arg1(arg2, arg3, arg4)
            arg1 = workValue8.ptfxCanHold
            if arg1 then
              arg1 = workValue10
              arg1 = arg1()
              arg2 = workValue11
              arg2 = arg2()
              if arg2 then
                arg3 = numberValue5
                arg3 = arg3 + 1
                numberValue5 = arg3
                arg3 = workValue9
                arg4 = workValue8.handle
                arg3 = arg3(arg4)
                if arg3 then
                  arg3 = StopParticleFxLooped
                  arg4 = workValue8.handle
                  arg5 = false
                  arg3(arg4, arg5)
                  workValue8.handle = nil
                end
                arg3 = flag27
                arg3()
              elseif arg1 then
                arg3 = workValue9
                arg4 = workValue8.handle
                arg3 = arg3(arg4)
                if not arg3 then
                  arg3 = flag27
                  arg3()
                end
              else
                arg3 = flag8
                if arg3 then
                  arg3 = numberValue5
                  arg3 = arg3 + 1
                  numberValue5 = arg3
                  arg3 = numberValue5
                  arg4 = workValue8.handle
                  arg5 = Citizen
                  arg5 = arg5.CreateThread

                  -- === HELPER FUNCTION: arg6() ===
                  function arg6()
                    local arg12, arg22, arg32
                    arg12 = Citizen
                    arg12 = arg12.Wait
                    arg22 = numberValue4
                    arg12(arg22)
                    arg12 = arg3
                    arg22 = numberValue5
                    if arg12 ~= arg22 then
                      return
                    end
                    arg12 = workValue8
                    if not arg12 then
                      return
                    end
                    arg12 = workValue10
                    arg12 = arg12()
                    if arg12 then
                      return
                    end
                    arg12 = workValue9
                    arg22 = workValue8.handle
                    arg12 = arg12(arg22)
                    if not arg12 then
                      return
                    end
                    arg12 = workValue8.handle
                    arg22 = arg4
                    if arg12 ~= arg22 then
                      return
                    end
                    arg12 = StopParticleFxLooped
                    arg22 = workValue8.handle
                    arg32 = false
                    arg12(arg22, arg32)
                    workValue8.handle = nil
                  end
                  -- Beginner: Start a separate FiveM thread so this code can run independently.
                  arg5(arg6)
                end
              end
              flag8 = arg1
            else
              arg1 = workValue11
              arg1 = arg1()
              if arg1 then
                arg1 = flag27
                arg1()
              end
            end
          end
          arg1 = IsEntityPlayingAnim
          arg2 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg2 = arg2()
          arg3 = workValue5
          arg4 = workValue6
          arg5 = 3
          arg1 = arg1(arg2, arg3, arg4, arg5)
          if not arg1 then
            arg1 = GetAnimDuration
            arg2 = workValue5
            arg3 = workValue6
            arg1 = arg1(arg2, arg3)
            if arg1 > 0.0 then
              goto flow_label_145
            end
          end
          arg1 = numberValue14
          arg2 = workValue7
          arg1 = arg1(arg2)
          ::flow_label_145::
          if arg1 then
            arg1 = flag10
            if arg1 then
              arg1 = Citizen
              arg1 = arg1.CreateThreadNow

              -- === HELPER FUNCTION: arg2() ===
              function arg2()
                local arg12, arg22
                arg12 = workValue7
                if arg12 then
                  arg12 = workValue35
                  arg22 = workValue7
                  arg12(arg22)
                end
              end
              arg1(arg2)
            else
              arg1 = workValue24
              arg2 = true
              arg1(arg2)
            end
          end
        end
      end
    end
  end
end
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue19; parameters: arg1, arg2, arg3) ===
function textValue19(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8
  arg4 = cmgCall.emotes
  arg4 = arg4[arg1]
  if arg4 then
    arg4 = workValue35
    arg5 = cmgCall.emotes
    arg5 = arg5[arg1]
    arg6 = nil
    arg7 = arg2
    arg8 = arg3
    arg4(arg5, arg6, arg7, arg8)
  else
    arg4 = cmgCall.dances
    arg4 = arg4[arg1]
    if arg4 then
      arg4 = workValue35
      arg5 = cmgCall.dances
      arg5 = arg5[arg1]
      arg6 = nil
      arg7 = arg2
      arg8 = arg3
      arg4(arg5, arg6, arg7, arg8)
    else
      arg4 = cmgCall.custom
      arg4 = arg4[arg1]
      if arg4 then
        arg4 = workValue35
        arg5 = cmgCall.custom
        arg5 = arg5[arg1]
        arg6 = nil
        arg7 = arg2
        arg8 = arg3
        arg4(arg5, arg6, arg7, arg8)
      else
        arg4 = cmgCall.props
        arg4 = arg4[arg1]
        if arg4 then
          arg4 = workValue35
          arg5 = cmgCall.props
          arg5 = arg5[arg1]
          arg6 = nil
          arg7 = arg2
          arg8 = arg3
          arg4(arg5, arg6, arg7, arg8)
        else
          arg4 = cmgCall.guns
          arg4 = arg4[arg1]
          if arg4 then
            arg4 = workValue35
            arg5 = cmgCall.guns
            arg5 = arg5[arg1]
            arg6 = nil
            arg7 = arg2
            arg8 = arg3
            arg4(arg5, arg6, arg7, arg8)
          else
            arg4 = cmgCall.animals
            arg4 = arg4[arg1]
            if arg4 then
              arg4 = workValue35
              arg5 = cmgCall.animals
              arg5 = arg5[arg1]
              arg6 = nil
              arg7 = arg2
              arg8 = arg3
              arg4(arg5, arg6, arg7, arg8)
            else
              arg4 = cmgCall.shared
              if arg4 then
                arg4 = cmgCall.shared
                arg4 = arg4[arg1]
                if arg4 then
                  arg4 = workValue35
                  arg5 = cmgCall.shared
                  arg5 = arg5[arg1]
                  arg6 = nil
                  arg7 = arg2
                  arg8 = arg3
                  arg4(arg5, arg6, arg7, arg8)
                end
              end
            end
          end
        end
      end
    end
  end
end
cmgCall3.playEmote = textValue19
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue19; parameters: none) ===
function textValue19()
  local arg1, arg2
  arg1 = textValue3
  arg2 = workValue7
  if arg2 then
    arg2 = workValue7
    arg2 = arg2[3]
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = nil
  ::flow_label_10::
  return arg1, arg2
end
cmgCall3.isPlayingEmote = textValue19
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue19; parameters: none) ===
function textValue19()
  local arg1, arg2
  arg1 = workValue7
  if arg1 then
    arg1 = workValue7.animationOptions
    if arg1 then
      arg1 = workValue7.animationOptions
      arg1 = arg1.attachTo
      if arg1 then
        arg1 = true
        return arg1
    end
  end
  else
    arg1 = false
    return arg1
  end
end
cmgCall3.isCurrentEmoteAttachingPed = textValue19
cmgCall3 = CMG
cmgCall3.cancelEmote = workValue24
cmgCall3 = Citizen
cmgCall3 = cmgCall3.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue19; parameters: none) ===
function textValue19()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = json
  arg1 = arg1.decode
  arg2 = GetResourceKvpString
  arg3 = "cmg_favourite_emotes"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = "{}"
  end
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = {}
  end
  dataTable6 = arg1
  arg1 = TriggerEvent
  arg2 = "chat:addSuggestion"
  arg3 = "/e"
  arg4 = "Play an emote"
  arg5 = {}
  arg6 = {}
  arg6.name = "emotename"
  arg6.help = "dance, camera, sit or any valid emote."
  arg5[1] = arg6
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
  arg1(arg2, arg3, arg4, arg5)
  arg1 = TriggerEvent
  arg2 = "chat:addSuggestion"
  arg3 = "/emote"
  arg4 = "Play an emote"
  arg5 = {}
  arg6 = {}
  arg6.name = "emotename"
  arg6.help = "dance, camera, sit or any valid emote."
  arg5[1] = arg6
  arg1(arg2, arg3, arg4, arg5)
  arg1 = TriggerEvent
  arg2 = "chat:addSuggestion"
  arg3 = "/emotemenu"
  arg4 = "Open emotes menu (F3) by default."
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
  arg1(arg2, arg3, arg4)
  arg1 = TriggerEvent
  arg2 = "chat:addSuggestion"
  arg3 = "/walk"
  arg4 = "Set your walkingstyle."
  arg5 = {}
  arg6 = {}
  arg6.name = "style"
  arg6.help = "/walks for a list of valid styles"
  arg5[1] = arg6
  arg1(arg2, arg3, arg4, arg5)
  arg1 = CMG
  arg1 = arg1.createThreadOnTick
  arg2 = textValue17
  arg3 = "Emotes"
  -- Beginner: Run a helper every game frame while this script is active.
  arg1(arg2, arg3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall3(textValue19)
cmgCall3 = RegisterNetEvent
textValue19 = "14d094e30b"
-- Beginner: this function handles network event "14d094e30b".

-- === HELPER FUNCTION (decompiler name: workValue60; parameters: none) ===
function workValue60()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 == arg1 then
    arg1 = tCMG
    arg1 = arg1.canAnim
    arg1 = arg1()
    if arg1 then
      arg1 = TaskStartScenarioInPlace
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = "WORLD_HUMAN_STAND_MOBILE"
      arg4 = 0
      arg5 = true
      arg1(arg2, arg3, arg4, arg5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "14d094e30b".
cmgCall3(textValue19, workValue60)
cmgCall3 = RegisterNetEvent
textValue19 = "8f6ef1fbb5"
-- Beginner: this function handles network event "8f6ef1fbb5".

-- === HELPER FUNCTION (decompiler name: workValue60; parameters: none) ===
function workValue60()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 == arg1 then
    arg1 = tCMG
    arg1 = arg1.canAnim
    arg1 = arg1()
    if arg1 then
      arg1 = ClearPedTasks
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg1(arg2)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8f6ef1fbb5".
cmgCall3(textValue19, workValue60)
cmgCall3 = AddEventHandler
textValue19 = "CEventOpenDoor"
-- Beginner: this function runs when client event "CEventOpenDoor" fires.

-- === HELPER FUNCTION (decompiler name: workValue60; parameters: none) ===
function workValue60()
  local arg1, arg2, arg3
  arg1 = textValue3
  if arg1 then
    arg1 = flag10
    if not arg1 then
      arg1 = true
      flag10 = arg1
      arg1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      while true do
        arg2 = IsPedOpeningADoor
        arg3 = arg1
        arg2 = arg2(arg3)
        if not arg2 then
          break
        end
        arg2 = Citizen
        arg2 = arg2.Wait
        arg3 = 0
        arg2(arg3)
      end
      arg2 = false
      flag10 = arg2
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CEventOpenDoor".
cmgCall3(textValue19, workValue60)
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue19; parameters: none) ===
function textValue19()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg1 = math
  arg1 = arg1.random
  arg2 = 1
  arg3 = table
  arg3 = arg3.count
  arg4 = cmgCall.walks
  arg3, arg4, arg5, arg6, arg7, arg8, arg9 = arg3(arg4)
  arg1 = arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
  arg2 = 1
  arg3 = pairs
  arg4 = cmgCall.walks
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    if arg2 == arg1 then
      arg9 = arg8[1]
      return arg9
    end
    arg2 = arg2 + 1
  end
  arg3 = nil
  return arg3
end
cmgCall3.getRandomWalkStyle = textValue19
