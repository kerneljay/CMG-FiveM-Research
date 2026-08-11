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
local cmgCall, textValue6, flag21, flag22, textValue12, workValue16, workValue18, workValue22, workValue24, workValue26, workValue, workValue4, workValue7, flag5, workValue8, textValue, textValue2, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25
cmgCall = CMG
cmgCall = cmgCall.registerCommand
textValue6 = "lfb_key"

-- === HELPER FUNCTION (decompiler name: flag21; parameters: none) ===
function flag21()
  local arg1, arg2
  arg1 = ExecuteCommand
  arg2 = "lfb"
  arg1(arg2)
end
flag22 = false
cmgCall(textValue6, flag21, flag22)
cmgCall = RegisterKeyMapping
textValue6 = "lfb_key"
flag21 = "LFB Menu"
flag22 = "keyboard"
textValue12 = "U"
-- Beginner: Bind a command to a keyboard/controller key.
cmgCall(textValue6, flag21, flag22, textValue12)
cmgCall = TriggerEvent
textValue6 = "chat:addSuggestion"
flag21 = "/lfb"
flag22 = "Access your LFB menu"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
cmgCall(textValue6, flag21, flag22)
cmgCall = false
textValue6 = false
flag21 = false
flag22 = nil
textValue12 = nil
workValue16 = nil
workValue18 = nil
workValue22 = nil
workValue24 = nil
workValue26 = nil
workValue = nil
workValue4 = nil
workValue7 = nil
flag5 = false
workValue8 = RMenu
workValue8 = workValue8.Add
textValue = "lfb"
textValue2 = "main"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue4 = ""
textValue5 = "Status: ~g~Available"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
rageUiCall5 = "cmg_lfbui"
textValue8 = "cmg_lfbui"
rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall2(textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8)
workValue8(textValue, textValue2, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue = "lfb"
textValue2 = "tools"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue4 = RMenu
textValue5 = textValue4
textValue4 = textValue4.Get
rageUiCall3 = "lfb"
rageUiCall4 = "main"
-- Beginner: result below is menu.
textValue4 = textValue4(textValue5, rageUiCall3, rageUiCall4)
textValue5 = ""
rageUiCall3 = "LFB: ~b~Tools"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall5()
rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall2(textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8(textValue, textValue2, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue = "lfb"
textValue2 = "water"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue4 = RMenu
textValue5 = textValue4
textValue4 = textValue4.Get
rageUiCall3 = "lfb"
rageUiCall4 = "main"
-- Beginner: result below is menu.
textValue4 = textValue4(textValue5, rageUiCall3, rageUiCall4)
textValue5 = ""
rageUiCall3 = "LFB: ~b~Water"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall5()
rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall2(textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8(textValue, textValue2, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue = "lfb"
textValue2 = "ba"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue4 = RMenu
textValue5 = textValue4
textValue4 = textValue4.Get
rageUiCall3 = "lfb"
rageUiCall4 = "main"
-- Beginner: result below is menu.
textValue4 = textValue4(textValue5, rageUiCall3, rageUiCall4)
textValue5 = ""
rageUiCall3 = "LFB: ~b~BA"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall5()
rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall2(textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8(textValue, textValue2, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue = "lfb"
textValue2 = "firemain"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue4 = ""
textValue5 = "Manage Fires"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
rageUiCall5 = "cmg_lfbui"
textValue8 = "cmg_lfbui"
rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall2(textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8)
workValue8(textValue, textValue2, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue = "lfb"
textValue2 = "fire"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue4 = RMenu
textValue5 = textValue4
textValue4 = textValue4.Get
rageUiCall3 = "lfb"
rageUiCall4 = "firemain"
-- Beginner: result below is menu.
textValue4 = textValue4(textValue5, rageUiCall3, rageUiCall4)
textValue5 = ""
rageUiCall3 = "LFB: ~b~Start Fires"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall5()
rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall2(textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8(textValue, textValue2, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue = "lfb"
textValue2 = "management"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue4 = RMenu
textValue5 = textValue4
textValue4 = textValue4.Get
rageUiCall3 = "lfb"
rageUiCall4 = "firemain"
-- Beginner: result below is menu.
textValue4 = textValue4(textValue5, rageUiCall3, rageUiCall4)
textValue5 = ""
rageUiCall3 = "LFB: ~b~Manage Fires"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall5()
rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall2(textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8(textValue, textValue2, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue = "lfb"
textValue2 = "settings"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue4 = RMenu
textValue5 = textValue4
textValue4 = textValue4.Get
rageUiCall3 = "lfb"
rageUiCall4 = "firemain"
-- Beginner: result below is menu.
textValue4 = textValue4(textValue5, rageUiCall3, rageUiCall4)
textValue5 = ""
rageUiCall3 = "LFB: ~b~Settings"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall5()
rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25 = rageUiCall2(textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8(textValue, textValue2, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue8, numberValue2, rageUiCall6, numberValue3, numberValue4, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, numberValue7, eventRegistration, dataTable8, textValue10, eventRegistration2, eventRegistration3, textValue11, flag23, numberValue8, dataTable10, numberValue9, flag24, numberValue10, numberValue11, dataTable11, eventRegistration4, dataTable12, dataTable13, numberValue12, numberValue13, numberValue14, eventRegistration5, textValue13, workValue15, threadCall, cmgCall3, eventRegistration6, textValue14, numberValue16, workValue17, threadCall2, threadCall3, cmgCall4, numberValue17, eventRegistration7, eventRegistration8, textValue15, cmgCall5, flag26, textValue16, numberValue19, eventRegistration9, textValue17, workValue20, workValue21, eventRegistration10, textValue18, eventRegistration11, flag28, numberValue20, eventRegistration12, textValue19, eventRegistration13, textValue20, numberValue21, eventRegistration14, textValue22, workValue25)
workValue8 = RageUI
workValue8 = workValue8.CreateWhile
textValue = 1.0
textValue2 = RMenu
rageUiCall2 = textValue2
textValue2 = textValue2.Get
textValue4 = "lfb"
textValue5 = "main"
-- Beginner: result below is menu.
textValue2 = textValue2(rageUiCall2, textValue4, textValue5)
rageUiCall2 = nil

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "lfb"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local rageUiCall, textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23, textValue21, textValue23
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Tools"
    textValue9 = "View and use your LFB tools"
    dataTable9 = {}
    rageUiCall7 = RageUI
    rageUiCall7 = rageUiCall7.BadgeStyle
    rageUiCall7 = rageUiCall7.Key
    dataTable9.RightBadge = rageUiCall7
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
    end
    workValue19 = RMenu
    workValue23 = workValue19
    workValue19 = workValue19.Get
    textValue21 = "lfb"
    textValue23 = "tools"
    workValue19, workValue23, textValue21, textValue23 = workValue19(workValue23, textValue21, textValue23)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23, textValue21, textValue23)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Water"
    textValue9 = "Manage your hose and water supply"
    dataTable9 = {}
    rageUiCall7 = RageUI
    rageUiCall7 = rageUiCall7.BadgeStyle
    rageUiCall7 = rageUiCall7.Key
    dataTable9.RightBadge = rageUiCall7
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
    end
    workValue19 = RMenu
    workValue23 = workValue19
    workValue19 = workValue19.Get
    textValue21 = "lfb"
    textValue23 = "water"
    workValue19, workValue23, textValue21, textValue23 = workValue19(workValue23, textValue21, textValue23)
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23, textValue21, textValue23)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "BA"
    textValue9 = "Manage your BA"
    dataTable9 = {}
    rageUiCall7 = RageUI
    rageUiCall7 = rageUiCall7.BadgeStyle
    rageUiCall7 = rageUiCall7.Key
    dataTable9.RightBadge = rageUiCall7
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
    end
    workValue19 = RMenu
    workValue23 = workValue19
    workValue19 = workValue19.Get
    textValue21 = "lfb"
    textValue23 = "ba"
    workValue19, workValue23, textValue21, textValue23 = workValue19(workValue23, textValue21, textValue23)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23, textValue21, textValue23)
  end

  -- === HELPER FUNCTION: arg7() ===
  function arg7()
    local rageUiCall, textValue7
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "lfb"
  arg5 = "tools"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local rageUiCall, textValue7, textValue9, dataTable9, rageUiCall7, dataTable14
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Setup Decontamination Tent"
    textValue9 = "Setup a decontamination tent"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = workValue26
        flag25 = true
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Remove Decontamination Tent"
    textValue9 = "Remove a decontamination tent"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = workValue26
        flag25 = false
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Setup Rescue Cushion"
    textValue9 = "Setup a rescue cushion"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = workValue7
        flag25 = true
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Remove Rescue Cushion"
    textValue9 = "Remove a rescue cushion"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = workValue7
        flag25 = false
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = flag5
    if rageUiCall then
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ButtonWithStyle
      textValue7 = "Remove Spreaders"
      textValue9 = "Remove vehicle spreaders"
      dataTable9 = {}
      dataTable9.RightLabel = ""
      rageUiCall7 = true

      -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
      function dataTable14(arg12, arg22, arg32)
        local arg42
        if arg32 then
          arg42 = workValue24
          arg42()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    else
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ButtonWithStyle
      textValue7 = "Use Spreaders"
      textValue9 = "Use vehicle spreaders"
      dataTable9 = {}
      dataTable9.RightLabel = ""
      rageUiCall7 = true

      -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
      function dataTable14(arg12, arg22, arg32)
        local arg42
        if arg32 then
          arg42 = workValue24
          arg42()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    end
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Setup Stabilisers"
    textValue9 = "Setup vehicle stabilisers"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = workValue16
        flag25 = true
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Remove Stabilisers"
    textValue9 = "Remove vehicle stabilisers"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = workValue16
        flag25 = false
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Setup extractor fan"
    textValue9 = "Setup an extractor fan"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = flag22
        flag25 = true
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Remove extractor fan"
    textValue9 = "Remove an extractor fan"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = flag22
        flag25 = false
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Setup inflatable jack"
    textValue9 = "Setup an inflatable jack"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = workValue18
        flag25 = true
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Remove inflatable jack"
    textValue9 = "Remove an inflatable jack"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = workValue18
        flag25 = false
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Setup wheel chocks"
    textValue9 = "Setup wheel chocks"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = textValue12
        flag25 = true
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Remove wheel chocks"
    textValue9 = "Remove wheel chocks"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = textValue12
        flag25 = false
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Collect Ladder"
    textValue9 = "Collect a ladder from a nearby fire engine"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = ExecuteCommand
        flag25 = "ladder collect"
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Store Ladder"
    textValue9 = "Store a ladder in a nearby fire engine"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = ExecuteCommand
        flag25 = "ladder store"
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Use a throw bag"
    textValue9 = "Use a throw bag"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42
      if arg32 then
        arg42 = false
        if arg42 then
          arg42 = workValue22
          arg42()
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
  end

  -- === HELPER FUNCTION: arg7() ===
  function arg7()
    local rageUiCall, textValue7
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "lfb"
  arg5 = "water"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local rageUiCall, textValue7, textValue9, dataTable9, rageUiCall7, dataTable14
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Get Fire Hose"
    textValue9 = "Get a fire hose"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25, numberValue15, numberValue18, flag27, flag29
      if arg32 then
        arg42 = GiveWeaponToPed
        flag25 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        flag25 = flag25()
        numberValue15 = -1554970529
        numberValue18 = 0
        flag27 = false
        flag29 = true
        arg42(flag25, numberValue15, numberValue18, flag27, flag29)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Setup Supply Line"
    textValue9 = "Setup a supply line"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = workValue4
        flag25 = true
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Remove Supply Line"
    textValue9 = "Remove a supply line"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = workValue4
        flag25 = false
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Setup Water Monitor"
    textValue9 = "Setup a water monitor"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = workValue
        flag25 = true
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Remove Water Monitor"
    textValue9 = "Remove a water monitor"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = workValue
        flag25 = false
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
  end

  -- === HELPER FUNCTION: arg7() ===
  function arg7()
    local rageUiCall, textValue7
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "lfb"
  arg5 = "ba"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local rageUiCall, textValue7, textValue9, dataTable9, rageUiCall7, dataTable14
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Remove BA"
    textValue9 = "Removes your BA"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = CMG
        arg42 = arg42.loadCustomisationPreset
        flag25 = "NoBreathingApperatus"
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "BA Down"
    textValue9 = "Puts your BA down"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = CMG
        arg42 = arg42.getModelGender
        arg42 = arg42()
        if "male" == arg42 then
          arg42 = CMG
          arg42 = arg42.loadCustomisationPreset
          flag25 = "BreathingApperatusDown"
          arg42(flag25)
        else
          arg42 = CMG
          arg42 = arg42.loadCustomisationPreset
          flag25 = "BreathingApperatusDownFemale"
          arg42(flag25)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "BA Up"
    textValue9 = "Puts your BA up"
    dataTable9 = {}
    dataTable9.RightLabel = ""
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = CMG
        arg42 = arg42.getModelGender
        arg42 = arg42()
        if "male" == arg42 then
          arg42 = CMG
          arg42 = arg42.loadCustomisationPreset
          flag25 = "BreathingApperatusUp"
          arg42(flag25)
        else
          arg42 = CMG
          arg42 = arg42.loadCustomisationPreset
          flag25 = "BreathingApperatusUpFemale"
          arg42(flag25)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
  end

  -- === HELPER FUNCTION: arg7() ===
  function arg7()
    local rageUiCall, textValue7
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
end
workValue8(textValue, textValue2, rageUiCall2, textValue4)
workValue8 = {}
workValue8.fireType = 1
workValue8.size = 1
textValue = {}
textValue2 = {}
textValue2.dict = "core"
textValue2.name = "ent_ray_meth_fires"
textValue2.smoke = false
textValue2.smokeType = "normal"
textValue2.chance = 30
textValue.normal = textValue2
textValue2 = {}
textValue2.dict = "scr_trevor3"
textValue2.name = "scr_trev3_trailer_plume"
textValue2.smoke = false
textValue2.smokeType = "normal"
textValue2.chance = 30
textValue.normal2 = textValue2
textValue2 = {}
textValue2.dict = "scr_michael2"
textValue2.name = "scr_mich3_heli_fire"
textValue2.smoke = false
textValue2.smokeType = "normal"
textValue2.chance = 20
textValue.bonfire = textValue2
textValue2 = {}
textValue2.dict = "core"
textValue2.name = "fire_petroltank_truck"
textValue2.smoke = false
textValue2.smokeType = "normal"
textValue2.chance = 20
textValue.chemical = textValue2
textValue2 = {}
textValue2.dict = "core"
textValue2.name = "fire_petroltank_truck"
textValue2.smoke = true
textValue2.smokeType = "electrical"
textValue2.chance = 20
textValue.electrical = textValue2
textValue2 = {}
rageUiCall2 = pairs
textValue4 = textValue
rageUiCall2, textValue4, textValue5, rageUiCall3 = rageUiCall2(textValue4)
for rageUiCall4 in rageUiCall2, textValue4, textValue5, rageUiCall3 do
  rageUiCall5 = table
  rageUiCall5 = rageUiCall5.insert
  textValue8 = textValue2
  numberValue2 = rageUiCall4
  rageUiCall5(textValue8, numberValue2)
end
rageUiCall2 = {}
textValue4 = 1.0
textValue5 = 2.0
rageUiCall3 = 3.0
rageUiCall4 = 4.0
rageUiCall5 = 5.0
textValue8 = 6.0
numberValue2 = 7.0
rageUiCall6 = 8.0
numberValue3 = 9.0
numberValue4 = 10.0
rageUiCall2[1] = textValue4
rageUiCall2[2] = textValue5
rageUiCall2[3] = rageUiCall3
rageUiCall2[4] = rageUiCall4
rageUiCall2[5] = rageUiCall5
rageUiCall2[6] = textValue8
rageUiCall2[7] = numberValue2
rageUiCall2[8] = rageUiCall6
rageUiCall2[9] = numberValue3
rageUiCall2[10] = numberValue4
textValue4 = {}
textValue5 = 1
rageUiCall3 = 2
rageUiCall4 = 3
rageUiCall5 = 4
textValue8 = 5
numberValue2 = 6
rageUiCall6 = 7
numberValue3 = 8
numberValue4 = 9
numberValue6 = 10
dataTable3 = 11
dataTable4 = 12
dataTable5 = 13
dataTable6 = 14
dataTable7 = 15
numberValue7 = 16
eventRegistration = 17
dataTable8 = 18
textValue10 = 19
eventRegistration2 = 20
eventRegistration3 = 21
textValue11 = 22
flag23 = 23
numberValue8 = 24
dataTable10 = 25
numberValue9 = 26
flag24 = 27
numberValue10 = 28
numberValue11 = 29
dataTable11 = 30
textValue4[1] = textValue5
textValue4[2] = rageUiCall3
textValue4[3] = rageUiCall4
textValue4[4] = rageUiCall5
textValue4[5] = textValue8
textValue4[6] = numberValue2
textValue4[7] = rageUiCall6
textValue4[8] = numberValue3
textValue4[9] = numberValue4
textValue4[10] = numberValue6
textValue4[11] = dataTable3
textValue4[12] = dataTable4
textValue4[13] = dataTable5
textValue4[14] = dataTable6
textValue4[15] = dataTable7
textValue4[16] = numberValue7
textValue4[17] = eventRegistration
textValue4[18] = dataTable8
textValue4[19] = textValue10
textValue4[20] = eventRegistration2
textValue4[21] = eventRegistration3
textValue4[22] = textValue11
textValue4[23] = flag23
textValue4[24] = numberValue8
textValue4[25] = dataTable10
textValue4[26] = numberValue9
textValue4[27] = flag24
textValue4[28] = numberValue10
textValue4[29] = numberValue11
textValue4[30] = dataTable11
textValue5 = true
rageUiCall3 = 8
rageUiCall4 = 5.0
rageUiCall5 = 5
textValue8 = 8

-- === HELPER FUNCTION (decompiler name: numberValue2; parameters: none) ===
function numberValue2()
  local arg1, arg2, arg3, arg4
  arg1 = CMG
  arg1 = arg1.generateUUID
  arg2 = "fire"
  arg3 = 20
  arg4 = "alphanumeric"
  return arg1(arg2, arg3, arg4)
end
rageUiCall6 = RageUI
rageUiCall6 = rageUiCall6.CreateWhile
numberValue3 = 1.0
numberValue4 = RMenu
numberValue6 = numberValue4
numberValue4 = numberValue4.Get
dataTable3 = "lfb"
dataTable4 = "firemain"
-- Beginner: result below is menu.
numberValue4 = numberValue4(numberValue6, dataTable3, dataTable4)
numberValue6 = nil

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
function dataTable3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "lfb"
  arg5 = "firemain"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local rageUiCall, textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23, textValue21, textValue23
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Start Fires"
    textValue9 = "Start Fires"
    dataTable9 = {}
    rageUiCall7 = RageUI
    rageUiCall7 = rageUiCall7.BadgeStyle
    rageUiCall7 = rageUiCall7.Key
    dataTable9.RightBadge = rageUiCall7
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
    end
    workValue19 = RMenu
    workValue23 = workValue19
    workValue19 = workValue19.Get
    textValue21 = "lfb"
    textValue23 = "fire"
    workValue19, workValue23, textValue21, textValue23 = workValue19(workValue23, textValue21, textValue23)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23, textValue21, textValue23)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Call Settings"
    textValue9 = "Manage fire call settings"
    dataTable9 = {}
    rageUiCall7 = RageUI
    rageUiCall7 = rageUiCall7.BadgeStyle
    rageUiCall7 = rageUiCall7.Key
    dataTable9.RightBadge = rageUiCall7
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
    end
    workValue19 = RMenu
    workValue23 = workValue19
    workValue19 = workValue19.Get
    textValue21 = "lfb"
    textValue23 = "settings"
    workValue19, workValue23, textValue21, textValue23 = workValue19(workValue23, textValue21, textValue23)
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23, textValue21, textValue23)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue7 = "Manage Fires"
    textValue9 = "Manage Fires"
    dataTable9 = {}
    rageUiCall7 = RageUI
    rageUiCall7 = rageUiCall7.BadgeStyle
    rageUiCall7 = rageUiCall7.Key
    dataTable9.RightBadge = rageUiCall7
    rageUiCall7 = true

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32) ===
    function dataTable14(arg12, arg22, arg32)
    end
    workValue19 = RMenu
    workValue23 = workValue19
    workValue19 = workValue19.Get
    textValue21 = "lfb"
    textValue23 = "management"
    workValue19, workValue23, textValue21, textValue23 = workValue19(workValue23, textValue21, textValue23)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23, textValue21, textValue23)
  end

  -- === HELPER FUNCTION: arg7() ===
  function arg7()
    local rageUiCall, textValue7
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "lfb"
  arg5 = "settings"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local rageUiCall, textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue7 = "Toggle Automatic Fires"
    textValue9 = "Toggle automatic fire calls"
    dataTable9 = textValue5
    rageUiCall7 = {}

    -- === HELPER FUNCTION (decompiler name: dataTable14; parameters: arg12, arg22, arg32, arg42) ===
    function dataTable14(arg12, arg22, arg32, arg42)
      textValue5 = arg42
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.List
    textValue7 = "Automatic Fires Size"
    textValue9 = rageUiCall2
    dataTable9 = rageUiCall5
    rageUiCall7 = nil
    dataTable14 = {}
    workValue19 = true

    -- === HELPER FUNCTION (decompiler name: workValue23; parameters: arg12, arg22, arg32, arg42) ===
    function workValue23(arg12, arg22, arg32, arg42)
      local flag25, numberValue15
      if arg22 then
        rageUiCall5 = arg42
        numberValue15 = rageUiCall5
        flag25 = rageUiCall2
        flag25 = flag25[numberValue15]
        rageUiCall4 = flag25
      end
    end
    -- Beginner: Draw a RageUI list selector.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.List
    textValue7 = "Fire Cooldown (minutes)"
    textValue9 = textValue4
    dataTable9 = textValue8
    rageUiCall7 = nil
    dataTable14 = {}
    workValue19 = true

    -- === HELPER FUNCTION (decompiler name: workValue23; parameters: arg12, arg22, arg32, arg42) ===
    function workValue23(arg12, arg22, arg32, arg42)
      local flag25, numberValue15
      if arg22 then
        textValue8 = arg42
        numberValue15 = textValue8
        flag25 = textValue4
        flag25 = flag25[numberValue15]
        rageUiCall3 = flag25
      end
    end
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Button
    textValue7 = "Save Options"
    textValue9 = nil
    dataTable9 = true

    -- === HELPER FUNCTION (decompiler name: rageUiCall7; parameters: arg12, arg22, arg32) ===
    function rageUiCall7(arg12, arg22, arg32)
      local arg42, flag25, numberValue15, numberValue18, flag27
      if arg32 then
        arg42 = TriggerServerEvent
        flag25 = "ba1852bd6b"
        numberValue15 = textValue5
        numberValue18 = rageUiCall4
        flag27 = rageUiCall3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ba1852bd6b".
        arg42(flag25, numberValue15, numberValue18, flag27)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7)
  end

  -- === HELPER FUNCTION: arg7() ===
  function arg7()
    local rageUiCall, textValue7
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "lfb"
  arg5 = "management"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local rageUiCall, textValue7, textValue9, dataTable9, rageUiCall7
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Button
    textValue7 = "Stop Nearby Fires"
    textValue9 = nil
    dataTable9 = true

    -- === HELPER FUNCTION (decompiler name: rageUiCall7; parameters: arg12, arg22, arg32) ===
    function rageUiCall7(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = TriggerServerEvent
        flag25 = "f4afe89b21"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f4afe89b21".
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Button
    textValue7 = "Stop All Fires"
    textValue9 = nil
    dataTable9 = true

    -- === HELPER FUNCTION (decompiler name: rageUiCall7; parameters: arg12, arg22, arg32) ===
    function rageUiCall7(arg12, arg22, arg32)
      local arg42, flag25
      if arg32 then
        arg42 = TriggerServerEvent
        flag25 = "7fb00d47e4"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7fb00d47e4".
        arg42(flag25)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7)
  end

  -- === HELPER FUNCTION: arg7() ===
  function arg7()
    local rageUiCall, textValue7
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "lfb"
  arg5 = "fire"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local rageUiCall, textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23
    rageUiCall = RageUI
    rageUiCall = rageUiCall.List
    textValue7 = "Fire Type"
    textValue9 = textValue2
    dataTable9 = workValue8.fireType
    rageUiCall7 = nil
    dataTable14 = {}
    workValue19 = true

    -- === HELPER FUNCTION (decompiler name: workValue23; parameters: arg12, arg22, arg32, arg42) ===
    function workValue23(arg12, arg22, arg32, arg42)
      if arg22 then
        workValue8.fireType = arg42
      end
    end
    -- Beginner: Draw a RageUI list selector.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.List
    textValue7 = "Fire Size"
    textValue9 = rageUiCall2
    dataTable9 = workValue8.size
    rageUiCall7 = nil
    dataTable14 = {}
    workValue19 = true

    -- === HELPER FUNCTION (decompiler name: workValue23; parameters: arg12, arg22, arg32, arg42) ===
    function workValue23(arg12, arg22, arg32, arg42)
      if arg22 then
        workValue8.size = arg42
      end
    end
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Button
    textValue7 = "Start Fire"
    textValue9 = nil
    dataTable9 = true

    -- === HELPER FUNCTION (decompiler name: rageUiCall7; parameters: arg12, arg22, arg32) ===
    function rageUiCall7(arg12, arg22, arg32)
      local arg42, flag25, numberValue15, numberValue18, flag27, flag29, workValue28, flag, flag2, flag4
      if arg32 then
        arg42 = numberValue2
        arg42 = arg42()
        flag25 = CMG
        flag25 = flag25.getPlayerCoords
        -- Beginner: result below is playerCoords.
        flag25 = flag25()
        numberValue15 = {}
        numberValue15.coords = flag25
        flag27 = workValue8.size
        numberValue18 = rageUiCall2
        numberValue18 = numberValue18[flag27]
        numberValue15.size = numberValue18
        flag27 = workValue8.fireType
        numberValue18 = textValue2
        numberValue18 = numberValue18[flag27]
        numberValue15.type = numberValue18
        numberValue15.active = false
        numberValue18 = TriggerServerEvent
        flag27 = "52c48511f6"
        flag29 = arg42
        workValue28 = numberValue15
        flag = false
        flag2 = false
        flag4 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "52c48511f6".
        numberValue18(flag27, flag29, workValue28, flag, flag2, flag4)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue7, textValue9, dataTable9, rageUiCall7)
  end

  -- === HELPER FUNCTION: arg7() ===
  function arg7()
    local rageUiCall, textValue7
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
end
rageUiCall6(numberValue3, numberValue4, numberValue6, dataTable3)
rageUiCall6 = RegisterNetEvent
numberValue3 = "0630e1e706"
-- Beginner: this function handles network event "0630e1e706".

-- === HELPER FUNCTION (decompiler name: numberValue4; parameters: none) ===
function numberValue4()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "lfb"
  arg5 = "tools"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "lfb"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "lfb"
  arg5 = "water"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "lfb"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0630e1e706".
rageUiCall6(numberValue3, numberValue4)
rageUiCall6 = TriggerServerEvent
numberValue3 = "bae34c691a"
-- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bae34c691a".
rageUiCall6(numberValue3)
rageUiCall6 = {}
numberValue3 = {}
numberValue4 = {}
numberValue6 = {}
dataTable3 = {}
dataTable4 = {}
dataTable5 = {}
dataTable6 = {}
dataTable7 = {}

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: arg1) ===
function numberValue7(arg1)
  local arg2, arg3, arg4
  arg2 = rageUiCall6
  arg2 = arg2[arg1]
  arg2 = arg2.handle
  if nil ~= arg2 then
    arg2 = StopParticleFxLooped
    arg3 = rageUiCall6
    arg3 = arg3[arg1]
    arg3 = arg3.handle
    arg4 = false
    arg2(arg3, arg4)
  end
  arg2 = rageUiCall6
  arg2 = arg2[arg1]
  arg3 = arg2.type
  arg2 = textValue
  arg2 = arg2[arg3]
  arg2 = arg2.smoke
  if arg2 then
    arg2 = rageUiCall6
    arg2 = arg2[arg1]
    arg2 = arg2.smokeHandle
    if nil ~= arg2 then
      arg2 = StopParticleFxLooped
      arg3 = rageUiCall6
      arg3 = arg3[arg1]
      arg3 = arg3.smokeHandle
      arg4 = false
      arg2(arg3, arg4)
    end
  end
  arg2 = rageUiCall6
  arg2 = arg2[arg1]
  arg2.active = false
end
eventRegistration = RegisterNetEvent
dataTable8 = "7a8883ddd6"
-- Beginner: this function handles network event "7a8883ddd6".

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: none) ===
function textValue10()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg1 = pairs
  arg2 = rageUiCall6
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = arg6.active
    if arg7 then
      arg7 = numberValue7
      arg8 = arg5
      arg7(arg8)
    end
    arg7 = rageUiCall6
    arg7[arg5] = nil
  end
  arg1 = {}
  rageUiCall6 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7a8883ddd6".
eventRegistration(dataTable8, textValue10)
eventRegistration = {}
dataTable8 = {}
dataTable8.dict = ""
dataTable8.name = ""
eventRegistration.normal = dataTable8
dataTable8 = {}
dataTable8.dict = "core"
dataTable8.name = "ent_amb_elec_crackle"
eventRegistration.electrical = dataTable8
dataTable8 = RegisterNetEvent
textValue10 = "8797322ab7"
-- Beginner: this function handles network event "8797322ab7".

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1, arg2, arg3) ===
function eventRegistration2(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8
  arg4 = RageUI
  arg4 = arg4.CloseAll
  arg4()
  arg4 = RageUI
  arg4 = arg4.Visible
  arg5 = RMenu
  arg6 = arg5
  arg5 = arg5.Get
  arg7 = "lfb"
  arg8 = "tools"
  -- Beginner: result below is menu.
  arg5 = arg5(arg6, arg7, arg8)
  arg6 = false
  arg4(arg5, arg6)
  arg4 = RageUI
  arg4 = arg4.Visible
  arg5 = RMenu
  arg6 = arg5
  arg5 = arg5.Get
  arg7 = "lfb"
  arg8 = "main"
  -- Beginner: result below is menu.
  arg5 = arg5(arg6, arg7, arg8)
  arg6 = false
  arg4(arg5, arg6)
  arg4 = RageUI
  arg4 = arg4.Visible
  arg5 = RMenu
  arg6 = arg5
  arg5 = arg5.Get
  arg7 = "lfb"
  arg8 = "water"
  -- Beginner: result below is menu.
  arg5 = arg5(arg6, arg7, arg8)
  arg6 = false
  arg4(arg5, arg6)
  arg4 = RageUI
  arg4 = arg4.Visible
  arg5 = RMenu
  arg6 = arg5
  arg5 = arg5.Get
  arg7 = "lfb"
  arg8 = "fire"
  -- Beginner: result below is menu.
  arg5 = arg5(arg6, arg7, arg8)
  arg6 = false
  arg4(arg5, arg6)
  arg4 = RageUI
  arg4 = arg4.Visible
  arg5 = RMenu
  arg6 = arg5
  arg5 = arg5.Get
  arg7 = "lfb"
  arg8 = "management"
  -- Beginner: result below is menu.
  arg5 = arg5(arg6, arg7, arg8)
  arg6 = false
  arg4(arg5, arg6)
  arg4 = RageUI
  arg4 = arg4.Visible
  arg5 = RMenu
  arg6 = arg5
  arg5 = arg5.Get
  arg7 = "lfb"
  arg8 = "settings"
  -- Beginner: result below is menu.
  arg5 = arg5(arg6, arg7, arg8)
  arg6 = false
  arg4(arg5, arg6)
  arg4 = RageUI
  arg4 = arg4.Visible
  arg5 = RMenu
  arg6 = arg5
  arg5 = arg5.Get
  arg7 = "lfb"
  arg8 = "firemain"
  -- Beginner: result below is menu.
  arg5 = arg5(arg6, arg7, arg8)
  arg6 = true
  arg4(arg5, arg6)
  textValue5 = arg1
  rageUiCall3 = arg2
  rageUiCall4 = arg3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8797322ab7".
dataTable8(textValue10, eventRegistration2)
dataTable8 = {}

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: none) ===
function textValue10()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11
  arg1 = pairs
  arg2 = numberValue4
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5 in arg1, arg2, arg3, arg4 do
    arg6 = numberValue4
    arg6 = arg6[arg5]
    arg6 = arg6[4]
    if arg6 then
      arg6 = UseParticleFxAsset
      arg7 = "core"
      arg6(arg7)
      arg6 = SetParticleFxShootoutBoat
      arg7 = 1
      arg6(arg7)
      arg6 = numberValue4
      arg6 = arg6[arg5]
      arg6 = arg6[2]
      arg7 = dataTable8
      arg8 = {}
      arg7[arg5] = arg8
      arg7 = dataTable8
      arg7 = arg7[arg5]
      arg8 = StartParticleFxLoopedAtCoord
      arg9 = "water_cannon_jet"
      workValue27 = arg6.x
      workValue27 = workValue27 + 0.0
      workValue2 = arg6.y
      workValue2 = workValue2 + 0.0
      workValue5 = arg6.z
      workValue5 = workValue5 + 0.7
      flag3 = 50.0
      flag6 = 0.0
      workValue9 = numberValue4
      workValue9 = workValue9[arg5]
      workValue9 = workValue9[3]
      flag7 = 1.0
      flag8 = false
      flag9 = false
      flag10 = false
      flag11 = false
      arg8 = arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11)
      arg7.handle = arg8
      arg7 = dataTable8
      arg7 = arg7[arg5]
      arg8 = StartParticleFxLoopedAtCoord
      arg9 = "water_cannon_spray"
      workValue27 = arg6.x
      workValue27 = workValue27 + 0.0
      workValue2 = arg6.y
      workValue2 = workValue2 + 0.0
      workValue5 = arg6.z
      workValue5 = workValue5 + 0.7
      flag3 = 50.0
      flag6 = 0.0
      workValue9 = numberValue4
      workValue9 = workValue9[arg5]
      workValue9 = workValue9[3]
      flag7 = 1.0
      flag8 = false
      flag9 = false
      flag10 = false
      flag11 = false
      arg8 = arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11)
      arg7.handle2 = arg8
      arg7 = dataTable8
      arg7 = arg7[arg5]
      arg7.pitch = 50.0
    end
  end
end
eventRegistration2 = RegisterNetEvent
eventRegistration3 = "361aa1a3e6"
-- Beginner: this function handles network event "361aa1a3e6".

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) ===
function textValue11(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
  local workValue27
  rageUiCall6 = arg1
  numberValue3 = arg2
  numberValue4 = arg3
  numberValue6 = arg4
  workValue27 = dataTable3
  dataTable3 = workValue27
  dataTable4 = arg6
  dataTable5 = arg7
  dataTable6 = arg8
  dataTable7 = arg9
  workValue27 = textValue10
  workValue27()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "361aa1a3e6".
eventRegistration2(eventRegistration3, textValue11)

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1) ===
function eventRegistration2(arg1)
  local arg2, arg3, arg4
  arg2 = rageUiCall6
  arg2 = arg2[arg1]
  arg2 = arg2.handle
  if nil ~= arg2 then
    arg2 = DoesParticleFxLoopedExist
    arg3 = rageUiCall6
    arg3 = arg3[arg1]
    arg3 = arg3.handle
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = SetParticleFxLoopedScale
      arg3 = rageUiCall6
      arg3 = arg3[arg1]
      arg3 = arg3.handle
      arg4 = rageUiCall6
      arg4 = arg4[arg1]
      arg4 = arg4.size
      arg2(arg3, arg4)
    end
  end
end
eventRegistration3 = RegisterNetEvent
textValue11 = "1d32bc1425"
-- Beginner: this function handles network event "1d32bc1425".

-- === HELPER FUNCTION (decompiler name: flag23; parameters: arg1, arg2, arg3, arg4) ===
function flag23(arg1, arg2, arg3, arg4)
  local arg5, arg6
  if arg3 then
    arg5 = rageUiCall6
    arg5 = arg5[arg1]
    if nil ~= arg5 then
      arg5 = rageUiCall6
      arg5 = arg5[arg1]
      arg5 = arg5.active
      if nil ~= arg5 then
        arg5 = rageUiCall6
        arg5 = arg5[arg1]
        arg5 = arg5.active
        if arg5 then
          arg5 = numberValue7
          arg6 = arg1
          arg5(arg6)
        end
      end
    end
    arg5 = rageUiCall6
    arg5[arg1] = nil
    return
  end
  if arg4 then
    arg5 = rageUiCall6
    arg5 = arg5[arg1]
    if nil ~= arg5 then
      arg5 = arg2.size
      if nil ~= arg5 then
        arg5 = rageUiCall6
        arg5 = arg5[arg1]
        arg6 = arg2.size
        arg5.size = arg6
      end
    end
    arg5 = rageUiCall6
    arg5 = arg5[arg1]
    if nil ~= arg5 then
      arg5 = rageUiCall6
      arg5 = arg5[arg1]
      arg5 = arg5.active
      if arg5 then
        arg5 = eventRegistration2
        arg6 = arg1
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        arg5(arg6)
      end
    end
  else
    arg5 = rageUiCall6
    arg5[arg1] = arg2
  end
end
eventRegistration3(textValue11, flag23)

-- === HELPER FUNCTION (decompiler name: eventRegistration3; parameters: arg1) ===
function eventRegistration3(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8
  arg2 = rageUiCall6
  arg2 = arg2[arg1]
  arg2.active = true
  arg2 = CMG
  arg2 = arg2.loadPtfx
  arg3 = rageUiCall6
  arg3 = arg3[arg1]
  arg4 = arg3.type
  arg3 = textValue
  arg3 = arg3[arg4]
  arg3 = arg3.dict
  arg2(arg3)
  arg2 = UseParticleFxAsset
  arg3 = rageUiCall6
  arg3 = arg3[arg1]
  arg4 = arg3.type
  arg3 = textValue
  arg3 = arg3[arg4]
  arg3 = arg3.dict
  arg2(arg3)
  arg2 = {}
  arg3 = 0.0
  arg4 = 0.0
  arg5 = 0.0
  arg2[1] = arg3
  arg2[2] = arg4
  arg2[3] = arg5
  arg3 = rageUiCall6
  arg3 = arg3[arg1]
  arg4 = StartParticleFxLoopedAtCoord
  arg5 = rageUiCall6
  arg5 = arg5[arg1]
  arg6 = arg5.type
  arg5 = textValue
  arg5 = arg5[arg6]
  arg5 = arg5.name
  arg6 = rageUiCall6
  arg6 = arg6[arg1]
  arg6 = arg6.coords
  arg6 = arg6.x
  arg7 = rageUiCall6
  arg7 = arg7[arg1]
  arg7 = arg7.coords
  arg7 = arg7.y
  arg8 = rageUiCall6
  arg8 = arg8[arg1]
  arg8 = arg8.coords
  arg8 = arg8.z
  arg9 = arg2[1]
  workValue27 = arg2[2]
  workValue2 = arg2[3]
  workValue5 = rageUiCall6
  workValue5 = workValue5[arg1]
  workValue5 = workValue5.size
  flag3 = false
  flag6 = false
  workValue9 = false
  flag7 = false
  arg4 = arg4(arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7)
  arg3.handle = arg4
  arg3 = rageUiCall6
  arg3 = arg3[arg1]
  arg4 = arg3.type
  arg3 = textValue
  arg3 = arg3[arg4]
  arg3 = arg3.smoke
  if arg3 then
    arg3 = CMG
    arg3 = arg3.loadPtfx
    arg4 = rageUiCall6
    arg4 = arg4[arg1]
    arg5 = arg4.type
    arg4 = textValue
    arg4 = arg4[arg5]
    arg5 = arg4.smokeType
    arg4 = eventRegistration
    arg4 = arg4[arg5]
    arg4 = arg4.dict
    arg3(arg4)
    arg3 = UseParticleFxAsset
    arg4 = rageUiCall6
    arg4 = arg4[arg1]
    arg5 = arg4.type
    arg4 = textValue
    arg4 = arg4[arg5]
    arg5 = arg4.smokeType
    arg4 = eventRegistration
    arg4 = arg4[arg5]
    arg4 = arg4.dict
    arg3(arg4)
    arg3 = rageUiCall6
    arg3 = arg3[arg1]
    arg3 = arg3.size
    arg3 = arg3 * 2
    arg4 = rageUiCall6
    arg4 = arg4[arg1]
    arg5 = StartParticleFxLoopedAtCoord
    arg6 = rageUiCall6
    arg6 = arg6[arg1]
    arg7 = arg6.type
    arg6 = textValue
    arg6 = arg6[arg7]
    arg7 = arg6.smokeType
    arg6 = eventRegistration
    arg6 = arg6[arg7]
    arg6 = arg6.name
    arg7 = rageUiCall6
    arg7 = arg7[arg1]
    arg7 = arg7.coords
    arg7 = arg7.x
    arg8 = rageUiCall6
    arg8 = arg8[arg1]
    arg8 = arg8.coords
    arg8 = arg8.y
    arg9 = rageUiCall6
    arg9 = arg9[arg1]
    arg9 = arg9.coords
    arg9 = arg9.z
    workValue27 = arg2[1]
    workValue2 = arg2[2]
    workValue5 = arg2[3]
    flag3 = arg3
    flag6 = false
    workValue9 = false
    flag7 = false
    flag8 = false
    arg5 = arg5(arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8)
    arg4.smokeHandle = arg5
    arg4 = RemoveNamedPtfxAsset
    arg5 = rageUiCall6
    arg5 = arg5[arg1]
    arg6 = arg5.type
    arg5 = textValue
    arg5 = arg5[arg6]
    arg6 = arg5.smokeType
    arg5 = eventRegistration
    arg5 = arg5[arg6]
    arg5 = arg5.dict
    arg4(arg5)
  end
  arg3 = RemoveNamedPtfxAsset
  arg4 = rageUiCall6
  arg4 = arg4[arg1]
  arg5 = arg4.type
  arg4 = textValue
  arg4 = arg4[arg5]
  arg4 = arg4.dict
  arg3(arg4)
end

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
function textValue11()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = rageUiCall6
  if nil == arg2 then
    arg2 = {}
    rageUiCall6 = arg2
  end
  arg2 = pairs
  arg3 = rageUiCall6
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = arg7.coords
    arg8 = arg1 - arg8
    arg8 = #arg8
    arg9 = 350.0
    if arg8 < arg9 then
      arg9 = arg7.active
      if nil ~= arg9 then
        arg9 = arg7.active
        if not arg9 then
          arg9 = eventRegistration3
          workValue27 = arg6
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          arg9(workValue27)
        end
      end
    else
      arg9 = arg7.active
      if arg9 then
        arg9 = numberValue7
        workValue27 = arg6
        arg9(workValue27)
      end
    end
  end
end
flag23 = false
numberValue8 = 0
dataTable10 = {}
numberValue9 = 0
flag24 = false
numberValue10 = 12.0
numberValue11 = 876916270
dataTable11 = {}
eventRegistration4 = {}
eventRegistration4.model = 1938952078
eventRegistration4.bone = ""
dataTable12 = {}
dataTable13 = 2.0
numberValue12 = -18.0
numberValue13 = -0.75
dataTable12[1] = dataTable13
dataTable12[2] = numberValue12
dataTable12[3] = numberValue13
eventRegistration4.offSet = dataTable12
dataTable12 = {}
dataTable13 = 0.0
numberValue12 = 0.0
numberValue13 = 180.0
dataTable12[1] = dataTable13
dataTable12[2] = numberValue12
dataTable12[3] = numberValue13
eventRegistration4.rotation = dataTable12
dataTable12 = {}
dataTable12.model = -638337599
dataTable12.bone = ""
dataTable13 = {}
numberValue12 = 2.0
numberValue13 = -18.0
numberValue14 = -0.75
dataTable13[1] = numberValue12
dataTable13[2] = numberValue13
dataTable13[3] = numberValue14
dataTable12.offSet = dataTable13
dataTable13 = {}
numberValue12 = 0.0
numberValue13 = 0.0
numberValue14 = 180.0
dataTable13[1] = numberValue12
dataTable13[2] = numberValue13
dataTable13[3] = numberValue14
dataTable12.rotation = dataTable13
dataTable13 = {}
dataTable13.model = 725442643
dataTable13.bone = ""
numberValue12 = {}
numberValue13 = 2.0
numberValue14 = -18.0
eventRegistration5 = -0.75
numberValue12[1] = numberValue13
numberValue12[2] = numberValue14
numberValue12[3] = eventRegistration5
dataTable13.offSet = numberValue12
numberValue12 = {}
numberValue13 = 0.0
numberValue14 = 0.0
eventRegistration5 = 180.0
numberValue12[1] = numberValue13
numberValue12[2] = numberValue14
numberValue12[3] = eventRegistration5
dataTable13.rotation = numberValue12
dataTable11[1] = eventRegistration4
dataTable11[2] = dataTable12
dataTable11[3] = dataTable13
eventRegistration4 = RegisterNetEvent
dataTable12 = "37a8aa00f8"
-- Beginner: this function handles network event "37a8aa00f8".

-- === HELPER FUNCTION (decompiler name: dataTable13; parameters: arg1, arg2, arg3) ===
function dataTable13(arg1, arg2, arg3)
  local arg4
  if arg3 then
    arg4 = numberValue3
    arg4[arg1] = nil
    return
  end
  arg4 = numberValue3
  arg4[arg1] = arg2
  arg4 = dataTable10
  arg4 = arg4[arg1]
  if nil ~= arg4 then
    arg4 = dataTable10
    arg4[arg1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "37a8aa00f8".
eventRegistration4(dataTable12, dataTable13)

-- === HELPER FUNCTION (decompiler name: eventRegistration4; parameters: none) ===
function eventRegistration4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = GetOffsetFromEntityInWorldCoords
  arg4 = arg1
  arg5 = 0.0
  arg6 = 10.0
  arg7 = 0.0
  arg3 = arg3(arg4, arg5, arg6, arg7)
  arg4 = StartShapeTestCapsule
  arg5 = arg2.x
  arg6 = arg2.y
  arg7 = arg2.z
  arg8 = arg3.x
  arg9 = arg3.y
  workValue27 = arg3.z
  workValue2 = 10.0
  workValue5 = 2
  flag3 = arg1
  flag6 = 0
  arg4 = arg4(arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6)
  arg5 = GetShapeTestResult
  arg6 = arg4
  arg5, arg6, arg7, arg8, arg9 = arg5(arg6)
  return arg9
end

-- === HELPER FUNCTION (decompiler name: dataTable12; parameters: arg1) ===
function dataTable12(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  if 0 ~= arg2 then
    arg2 = tCMG
    arg2 = arg2.notify
    arg3 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    arg2(arg3)
    return
  end
  arg2 = eventRegistration4
  arg2 = arg2()
  if 0 ~= arg2 and nil ~= arg2 then
    arg3 = NetworkGetNetworkIdFromEntity
    arg4 = arg2
    arg3 = arg3(arg4)
    arg4 = false
    arg5 = pairs
    arg6 = numberValue3
    arg5, arg6, arg7, arg8 = arg5(arg6)
    for arg9, workValue27 in arg5, arg6, arg7, arg8 do
      workValue2 = workValue27[1]
      if workValue2 == arg3 then
        arg4 = true
      end
    end
    if arg1 then
      if arg4 then
        arg5 = tCMG
        arg5 = arg5.notify
        arg6 = "~r~Error~w~: A supply line is already setup on this vehicle"
        arg5(arg6)
      else
        arg5 = GetEntityModel
        arg6 = arg2
        -- Beginner: result below is modelHash.
        arg5 = arg5(arg6)
        arg6 = 0
        arg7 = false
        arg8 = pairs
        arg9 = dataTable11
        arg8, arg9, workValue27, workValue2 = arg8(arg9)
        for workValue5, flag3 in arg8, arg9, workValue27, workValue2 do
          flag6 = flag3.model
          if flag6 == arg5 then
            arg6 = workValue5
            arg7 = true
            break
          end
        end
        if arg7 then
          arg8 = FreezeEntityPosition
          arg9 = arg2
          workValue27 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          arg8(arg9, workValue27)
          arg8 = CMG
          arg8 = arg8.loadModel
          arg9 = numberValue11
          -- Beginner: Request/load a GTA model before spawning or applying it.
          arg8(arg9)
          arg8 = GetEntityCoords
          arg9 = arg2
          -- Beginner: result below is entityCoords.
          arg8 = arg8(arg9)
          arg9 = CMG
          arg9 = arg9.requestEntitySpawn
          workValue27 = "lfb_prop"
          workValue2 = "supply"
          workValue5 = arg8
          arg9(workValue27, workValue2, workValue5)
          arg9 = CreateObject
          workValue27 = numberValue11
          workValue2 = arg8.x
          workValue5 = arg8.y
          flag3 = arg8.z
          flag6 = true
          workValue9 = true
          flag7 = true
          -- Beginner: result below is objectEntity.
          arg9 = arg9(workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7)
          while true do
            workValue27 = DoesEntityExist
            workValue2 = arg9
            workValue27 = workValue27(workValue2)
            if workValue27 then
              break
            end
            workValue27 = Wait
            workValue2 = 0
            workValue27(workValue2)
          end
          workValue27 = TriggerServerEvent
          workValue2 = "3a7f6a2bdf"
          workValue5 = "Supply Line"
          flag3 = GetEntityCoords
          flag6 = arg9
          workValue9 = true
          flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18 = flag3(flag6, workValue9)
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
          workValue27(workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18)
          workValue27 = GetEntityBoneIndexByName
          workValue2 = arg2
          workValue5 = dataTable11
          workValue5 = workValue5[arg6]
          workValue5 = workValue5.bone
          workValue27 = workValue27(workValue2, workValue5)
          workValue2 = FreezeEntityPosition
          workValue5 = arg9
          flag3 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          workValue2(workValue5, flag3)
          workValue2 = AttachEntityToEntity
          workValue5 = arg9
          flag3 = arg2
          flag6 = workValue27
          workValue9 = dataTable11
          workValue9 = workValue9[arg6]
          workValue9 = workValue9.offSet
          workValue9 = workValue9[1]
          flag7 = dataTable11
          flag7 = flag7[arg6]
          flag7 = flag7.offSet
          flag7 = flag7[2]
          flag8 = dataTable11
          flag8 = flag8[arg6]
          flag8 = flag8.offSet
          flag8 = flag8[3]
          flag9 = dataTable11
          flag9 = flag9[arg6]
          flag9 = flag9.rotation
          flag9 = flag9[1]
          flag10 = dataTable11
          flag10 = flag10[arg6]
          flag10 = flag10.rotation
          flag10 = flag10[2]
          flag11 = dataTable11
          flag11 = flag11[arg6]
          flag11 = flag11.rotation
          flag11 = flag11[3]
          flag12 = true
          flag13 = false
          flag14 = true
          flag16 = false
          flag17 = 1
          flag18 = true
          -- Beginner: Attach one entity to another entity.
          workValue2(workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18)
          workValue2 = Wait
          workValue5 = 1000
          workValue2(workValue5)
          workValue2 = NetworkGetNetworkIdFromEntity
          workValue5 = arg9
          workValue2 = workValue2(workValue5)
          workValue5 = numberValue3
          flag3 = {}
          flag6 = arg3
          workValue9 = workValue2
          flag7 = arg8
          flag3[1] = flag6
          flag3[2] = workValue9
          flag3[3] = flag7
          workValue5[arg3] = flag3
          workValue5 = TriggerServerEvent
          flag3 = "37a8aa00f8"
          flag6 = arg3
          workValue9 = numberValue3
          workValue9 = workValue9[arg3]
          flag7 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "37a8aa00f8".
          workValue5(flag3, flag6, workValue9, flag7)
          workValue5 = SetModelAsNoLongerNeeded
          flag3 = numberValue11
          workValue5(flag3)
          workValue5 = tCMG
          workValue5 = workValue5.notify
          flag3 = "~g~Success~w~: Supply line setup"
          -- Beginner: Show a notification to the player.
          workValue5(flag3)
        else
          arg8 = tCMG
          arg8 = arg8.notify
          arg9 = "~r~Error~w~: You cannot setup a supply line on this vehicle"
          arg8(arg9)
        end
      end
    elseif arg4 then
      arg5 = TriggerServerEvent
      arg6 = "37a8aa00f8"
      arg7 = arg3
      arg8 = numberValue3
      arg8 = arg8[arg3]
      arg9 = true
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "37a8aa00f8".
      arg5(arg6, arg7, arg8, arg9)
      arg5 = TriggerServerEvent
      arg6 = "6ebeca9722"
      arg7 = numberValue3
      arg7 = arg7[arg3]
      arg7 = arg7[2]
      arg5(arg6, arg7)
      arg5 = TriggerServerEvent
      arg6 = "9efbf4fd13"
      arg7 = arg3
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9efbf4fd13".
      arg5(arg6, arg7)
      arg5 = numberValue3
      arg5[arg3] = nil
      arg5 = tCMG
      arg5 = arg5.notify
      arg6 = "~g~Success~w~: Supply line removed"
      -- Beginner: Show a notification to the player.
      arg5(arg6)
    else
      arg5 = tCMG
      arg5 = arg5.notify
      arg6 = "~g~Success~w~: No supply line found"
      arg5(arg6)
    end
  else
    arg3 = tCMG
    arg3 = arg3.notify
    arg4 = "~r~Error~w~: No vehicle found"
    -- Beginner: Show a notification to the player.
    arg3(arg4)
  end
end
workValue4 = dataTable12
dataTable12 = 200
dataTable13 = {}
numberValue12 = -1554970529
numberValue13 = false

-- === HELPER FUNCTION (decompiler name: numberValue14; parameters: arg1) ===
function numberValue14(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8
  arg2 = CMG
  arg2 = arg2.getObjectId
  arg3 = dataTable13
  arg3 = arg3[arg1]
  arg3 = arg3[1]
  arg4 = "hoseParticle"
  arg2 = arg2(arg3, arg4)
  if not arg2 then
    return
  end
  arg3 = GetEntityCoords
  arg4 = arg2
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4)
  arg4 = CMG
  arg4 = arg4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg4 = arg4()
  arg4 = arg4 - arg3
  arg4 = #arg4
  if arg4 < 100.0 then
    arg4 = GetSelectedPedWeapon
    arg5 = arg2
    -- Beginner: result below is weaponHash.
    arg4 = arg4(arg5)
    arg5 = numberValue12
    if arg4 == arg5 then
      arg4 = CMG
      arg4 = arg4.loadPtfx
      arg5 = "core"
      arg4(arg5)
      arg4 = UseParticleFxAsset
      arg5 = "core"
      arg4(arg5)
      arg4 = dataTable13
      arg4 = arg4[arg1]
      arg5 = StartParticleFxLoopedOnEntity
      arg6 = "water_cannon_jet"
      arg7 = arg2
      arg8 = 0.2
      arg9 = 0.15
      workValue27 = 0.0
      workValue2 = 0.1
      workValue5 = 0.0
      flag3 = 0.0
      flag6 = 0.7
      workValue9 = false
      flag7 = false
      flag8 = false
      arg5 = arg5(arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8)
      arg4[4] = arg5
      arg4 = UseParticleFxAsset
      arg5 = "core"
      arg4(arg5)
      arg4 = dataTable13
      arg4 = arg4[arg1]
      arg5 = StartParticleFxLoopedOnEntity
      arg6 = "water_cannon_spray"
      arg7 = arg2
      arg8 = 0.2
      arg9 = dataTable13
      arg9 = arg9[arg1]
      arg9 = arg9[2]
      arg9 = arg9 * 0.4
      arg9 = 9.0 + arg9
      workValue27 = 0
      workValue2 = 0.1
      workValue5 = 0.0
      flag3 = 0.0
      flag6 = 0.9
      workValue9 = false
      flag7 = false
      flag8 = false
      arg5 = arg5(arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8)
      arg4[5] = arg5
      arg4 = UseParticleFxAsset
      arg5 = "core"
      arg4(arg5)
      arg4 = dataTable13
      arg4 = arg4[arg1]
      arg5 = StartParticleFxLoopedOnEntity
      arg6 = "water_cannon_spray"
      arg7 = arg2
      arg8 = 0.2
      arg9 = dataTable13
      arg9 = arg9[arg1]
      arg9 = arg9[2]
      arg9 = arg9 * 0.4
      arg9 = 9.0 + arg9
      workValue27 = 0
      workValue2 = 0.1
      workValue5 = 0.0
      flag3 = 0.0
      flag6 = 0.001
      workValue9 = false
      flag7 = false
      flag8 = false
      arg5 = arg5(arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8)
      arg4[6] = arg5
      arg4 = RemoveNamedPtfxAsset
      arg5 = "core"
      arg4(arg5)
    end
  end
end
eventRegistration5 = RegisterNetEvent
textValue13 = "f9185a186f"
-- Beginner: this function handles network event "f9185a186f".

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1, arg2, arg3) ===
function workValue15(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2
  if arg3 then
    arg4 = dataTable13
    arg4 = arg4[arg1]
    if nil ~= arg4 then
      arg4 = dataTable13
      arg4 = arg4[arg1]
      arg4[3] = false
      arg4 = dataTable13
      arg4 = arg4[arg1]
      arg4 = arg4[4]
      if nil ~= arg4 then
        arg4 = StopParticleFxLooped
        arg5 = dataTable13
        arg5 = arg5[arg1]
        arg5 = arg5[4]
        arg6 = false
        arg4(arg5, arg6)
      end
      arg4 = dataTable13
      arg4 = arg4[arg1]
      arg4 = arg4[5]
      if nil ~= arg4 then
        arg4 = StopParticleFxLooped
        arg5 = dataTable13
        arg5 = arg5[arg1]
        arg5 = arg5[5]
        arg6 = false
        arg4(arg5, arg6)
      end
      arg4 = dataTable13
      arg4 = arg4[arg1]
      arg4 = arg4[6]
      if nil ~= arg4 then
        arg4 = StopParticleFxLooped
        arg5 = dataTable13
        arg5 = arg5[arg1]
        arg5 = arg5[6]
        arg6 = false
        arg4(arg5, arg6)
      end
      arg4 = dataTable13
      arg4[arg1] = nil
    end
  else
    arg4 = dataTable13
    arg5 = {}
    arg6 = arg1
    arg7 = arg2
    arg8 = true
    arg9 = 0
    workValue27 = 0
    workValue2 = 0
    arg5[1] = arg6
    arg5[2] = arg7
    arg5[3] = arg8
    arg5[4] = arg9
    arg5[5] = workValue27
    arg5[6] = workValue2
    arg4[arg1] = arg5
    arg4 = numberValue14
    arg5 = arg1
    arg4(arg5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9185a186f".
eventRegistration5(textValue13, workValue15)
eventRegistration5 = 30.0

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: none) ===
function textValue13()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = pairs
  arg3 = rageUiCall6
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = arg7.active
    if arg8 then
      arg8 = arg7.coords
      arg8 = arg1 - arg8
      arg8 = #arg8
      arg9 = eventRegistration5
      if arg8 < arg9 then
        arg8 = GetOffsetFromEntityInWorldCoords
        arg9 = CMG
        arg9 = arg9.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg9 = arg9()
        workValue27 = 0.0
        workValue2 = 3.0
        workValue5 = 0.5
        arg8 = arg8(arg9, workValue27, workValue2, workValue5)
        arg9 = arg7.coords
        arg9 = arg8 - arg9
        arg9 = #arg9
        if arg9 < 7.0 then
          arg9 = math
          arg9 = arg9.random
          workValue27 = 1
          workValue5 = arg7.type
          workValue2 = textValue
          workValue2 = workValue2[workValue5]
          workValue2 = workValue2.chance
          arg9 = arg9(workValue27, workValue2)
          if 1 == arg9 then
            workValue27 = arg7.size
            workValue27 = workValue27 * 0.92
            workValue2 = 0.5
            if workValue27 < workValue2 then
              workValue2 = TriggerServerEvent
              workValue5 = "52c48511f6"
              flag3 = arg6
              flag6 = rageUiCall6
              flag6 = flag6[arg6]
              workValue9 = true
              flag7 = false
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "52c48511f6".
              workValue2(workValue5, flag3, flag6, workValue9, flag7)
              workValue2 = Wait
              workValue5 = 5000
              workValue2(workValue5)
              break
            end
            workValue2 = rageUiCall6
            workValue2 = workValue2[arg6]
            workValue2.size = workValue27
            workValue2 = TriggerServerEvent
            workValue5 = "52c48511f6"
            flag3 = arg6
            flag6 = rageUiCall6
            flag6 = flag6[arg6]
            workValue9 = false
            flag7 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "52c48511f6".
            workValue2(workValue5, flag3, flag6, workValue9, flag7)
            workValue2 = Wait
            workValue5 = 5000
            workValue2(workValue5)
            break
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getNetId
  arg3 = arg1
  arg4 = "handleHose()"
  arg2 = arg2(arg3, arg4)
  arg3 = TriggerServerEvent
  arg4 = "9ebdb3b947"
  arg5 = arg2
  arg6 = 0.0
  arg7 = false
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9ebdb3b947".
  arg3(arg4, arg5, arg6, arg7)
  arg3 = true
  numberValue13 = arg3
  while true do
    arg3 = numberValue13
    if not arg3 then
      break
    end
    arg3 = DisableControlAction
    arg4 = 0
    arg5 = 24
    arg6 = true
    arg3(arg4, arg5, arg6)
    arg3 = DecorSetFloat
    arg4 = arg1
    arg5 = "135893ed9f"
    arg6 = GetGameplayCamRelativePitch
    arg6, arg7 = arg6()
    arg3(arg4, arg5, arg6, arg7)
    arg3 = DisablePlayerFiring
    arg4 = CMG
    arg4 = arg4.getPlayerId
    -- Beginner: result below is localPlayerIndex.
    arg4 = arg4()
    arg5 = true
    arg3(arg4, arg5)
    arg3 = textValue13
    arg3()
    arg3 = IsDisabledControlPressed
    arg4 = 0
    arg5 = 24
    arg3 = arg3(arg4, arg5)
    if arg3 then
      arg3 = CMG
      arg3 = arg3.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      arg3 = arg3()
      if 0 == arg3 then
        arg3 = IsPauseMenuActive
        arg3 = arg3()
        if not arg3 then
          arg3 = GetSelectedPedWeapon
          arg4 = arg1
          -- Beginner: result below is weaponHash.
          arg3 = arg3(arg4)
          arg4 = numberValue12
          if arg3 == arg4 then
            arg3 = IsPlayerFreeAiming
            arg4 = CMG
            arg4 = arg4.getPlayerId
            arg4, arg5, arg6, arg7 = arg4()
            arg3 = arg3(arg4, arg5, arg6, arg7)
            if arg3 then
              arg3 = flag23
              if arg3 then
                goto flow_label_81
              end
              arg3 = numberValue9
              if not (arg3 < 1) then
                goto flow_label_81
              end
            end
          end
        end
      end
    end
    arg3 = false
    numberValue13 = arg3
    arg3 = TriggerServerEvent
    arg4 = "9ebdb3b947"
    arg5 = arg2
    arg6 = 0.0
    arg7 = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9ebdb3b947".
    arg3(arg4, arg5, arg6, arg7)
    ::flow_label_81::
    arg3 = Wait
    arg4 = 0
    arg3(arg4)
  end
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = DecorRegister
  arg2 = "135893ed9f"
  arg3 = 1
  arg1(arg2, arg3)
  while true do
    arg1 = CMG
    arg1 = arg1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = CMG
    arg2 = arg2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg2 = arg2()
    arg3 = CMG
    arg3 = arg3.hasClientPermission
    arg4 = "lfb.onduty.permission"
    arg3 = arg3(arg4)
    if arg3 and 0 == arg2 then
      arg3 = GetSelectedPedWeapon
      arg4 = arg1
      -- Beginner: result below is weaponHash.
      arg3 = arg3(arg4)
      arg4 = numberValue12
      if arg3 == arg4 then
        arg4 = IsPlayerFreeAiming
        arg5 = CMG
        arg5 = arg5.getPlayerId
        arg5, arg6, arg7 = arg5()
        arg4 = arg4(arg5, arg6, arg7)
        if arg4 then
          arg4 = true
          flag24 = arg4
          arg4 = DisableControlAction
          arg5 = 0
          arg6 = 24
          arg7 = true
          arg4(arg5, arg6, arg7)
          arg4 = IsDisabledControlPressed
          arg5 = 0
          arg6 = 24
          arg4 = arg4(arg5, arg6)
          if arg4 then
            arg4 = numberValue9
            if not (arg4 > 0) then
              arg4 = flag23
              if not arg4 then
                goto flow_label_54
              end
            end
            arg4 = workValue15
            arg4()
            goto flow_label_58
            ::flow_label_54::
            arg4 = tCMG
            arg4 = arg4.notify
            arg5 = "~r~Notice~w~: You have no active supply of water"
            -- Beginner: Show a notification to the player.
            arg4(arg5)
          end
        end
      end
    end
    ::flow_label_58::
    arg3 = Wait
    arg4 = 0
    arg3(arg4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(cmgCall3)
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2
  while true do
    arg1 = textValue11
    arg1()
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(cmgCall3)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9
  arg1 = pairs
  arg2 = dataTable13
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = arg6[3]
    if arg7 then
      arg7 = DecorGetFloat
      arg8 = CMG
      arg8 = arg8.getObjectId
      arg9 = arg6[1]
      workValue27 = "onTickHosePitch"
      arg8 = arg8(arg9, workValue27)
      if not arg8 then
        arg8 = 0
      end
      arg9 = "135893ed9f"
      arg7 = arg7(arg8, arg9)
      arg8 = arg6[4]
      if nil ~= arg8 then
        arg8 = SetParticleFxLoopedOffsets
        arg9 = arg6[4]
        workValue27 = 0.26
        workValue2 = 0.2
        workValue5 = 0.13
        flag3 = arg7
        flag6 = 0.0
        workValue9 = 0.0
        arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9)
        arg8 = SetParticleFxLoopedOffsets
        arg9 = arg6[5]
        workValue27 = 0.2
        workValue2 = arg7 * 0.4
        workValue2 = 9.5 + workValue2
        workValue5 = -0.6
        flag3 = arg7
        flag6 = 0.0
        workValue9 = 0.8
        arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9)
        arg8 = SetParticleFxLoopedOffsets
        arg9 = arg6[6]
        workValue27 = 0.2
        workValue2 = arg7 * 0.4
        workValue2 = 5.0 + workValue2
        workValue5 = arg7 - 23.0
        flag3 = arg7
        flag6 = 0.0
        workValue9 = 0.0
        arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9)
      end
    end
  end
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
eventRegistration6 = threadCall
textValue14 = "LFB Hose Pitch"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(eventRegistration6, textValue14)
cmgCall3 = RegisterNetEvent
eventRegistration6 = "119add1130"
-- Beginner: this function handles network event "119add1130".

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1, arg2, arg3) ===
function textValue14(arg1, arg2, arg3)
  local arg4
  if arg3 then
    arg4 = numberValue4
    arg4[arg1] = nil
    return
  end
  arg4 = numberValue4
  arg4[arg1] = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "119add1130".
cmgCall3(eventRegistration6, textValue14)
cmgCall3 = RegisterNetEvent
eventRegistration6 = "98484239a1"
-- Beginner: this function handles network event "98484239a1".

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1) ===
function textValue14(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7
  arg2 = numberValue4
  arg2 = arg2[arg1]
  if nil ~= arg2 then
    arg2 = numberValue4
    arg2 = arg2[arg1]
    arg3 = numberValue4
    arg3 = arg3[arg1]
    arg3 = arg3[4]
    arg3 = not arg3
    arg2[4] = arg3
  end
  arg2 = dataTable8
  arg2 = arg2[arg1]
  if nil ~= arg2 then
    arg2 = dataTable8
    arg2 = arg2[arg1]
    arg2 = arg2.handle
    if nil ~= arg2 then
      arg2 = DoesParticleFxLoopedExist
      arg3 = dataTable8
      arg3 = arg3[arg1]
      arg3 = arg3.handle
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = StopParticleFxLooped
        arg3 = dataTable8
        arg3 = arg3[arg1]
        arg3 = arg3.handle
        arg4 = false
        arg2(arg3, arg4)
        arg2 = StopParticleFxLooped
        arg3 = dataTable8
        arg3 = arg3[arg1]
        arg3 = arg3.handle2
        arg4 = false
        arg2(arg3, arg4)
        arg2 = dataTable8
        arg2[arg1] = nil
      end
    end
  end
  arg2 = numberValue4
  arg2 = arg2[arg1]
  arg2 = arg2[4]
  if arg2 then
    arg2 = CMG
    arg2 = arg2.loadPtfx
    arg3 = "core"
    arg2(arg3)
    arg2 = UseParticleFxAsset
    arg3 = "core"
    arg2(arg3)
    arg2 = SetParticleFxShootoutBoat
    arg3 = 1
    arg2(arg3)
    arg2 = numberValue4
    arg2 = arg2[arg1]
    arg2 = arg2[2]
    arg3 = dataTable8
    arg4 = {}
    arg3[arg1] = arg4
    arg3 = dataTable8
    arg3 = arg3[arg1]
    arg3.pitch = 50.0
    arg3 = dataTable8
    arg3 = arg3[arg1]
    arg4 = StartParticleFxLoopedAtCoord
    arg5 = "water_cannon_jet"
    arg6 = arg2.x
    arg7 = arg2.y
    arg8 = arg2.z
    arg9 = 50.0
    workValue27 = 0.0
    workValue2 = numberValue4
    workValue2 = workValue2[arg1]
    workValue2 = workValue2[3]
    workValue5 = 1.0
    flag3 = false
    flag6 = false
    workValue9 = false
    flag7 = false
    arg4 = arg4(arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7)
    arg3.handle = arg4
    arg3 = dataTable8
    arg3 = arg3[arg1]
    arg4 = StartParticleFxLoopedAtCoord
    arg5 = "water_cannon_spray"
    arg6 = arg2.x
    arg7 = arg2.y
    arg8 = arg2.z
    arg9 = 50.0
    workValue27 = 0.0
    workValue2 = numberValue4
    workValue2 = workValue2[arg1]
    workValue2 = workValue2[3]
    workValue5 = 1.0
    flag3 = false
    flag6 = false
    workValue9 = false
    flag7 = false
    arg4 = arg4(arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7)
    arg3.handle2 = arg4
    arg3 = RemoveNamedPtfxAsset
    arg4 = "core"
    arg3(arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "98484239a1".
cmgCall3(eventRegistration6, textValue14)
cmgCall3 = 2087526838

-- === HELPER FUNCTION (decompiler name: eventRegistration6; parameters: arg1) ===
function eventRegistration6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = CMG
  arg3 = arg3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg3 = arg3()
  if 0 ~= arg3 then
    arg4 = tCMG
    arg4 = arg4.notify
    arg5 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    arg4(arg5)
    return
  end
  arg4 = CMG
  arg4 = arg4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg4 = arg4()
  if arg1 then
    arg5 = CMG
    arg5 = arg5.loadModel
    arg6 = cmgCall3
    -- Beginner: Request/load a GTA model before spawning or applying it.
    arg5(arg6)
    arg5 = GetOffsetFromEntityInWorldCoords
    arg6 = arg2
    arg7 = 0.0
    arg8 = 1.5
    arg9 = 0.0
    arg5 = arg5(arg6, arg7, arg8, arg9)
    arg6 = CMG
    arg6 = arg6.requestEntitySpawn
    arg7 = "lfb_prop"
    arg8 = "monitor"
    arg9 = arg5
    arg6(arg7, arg8, arg9)
    arg6 = CreateObject
    arg7 = cmgCall3
    arg8 = arg5.x
    arg9 = arg5.y
    workValue27 = arg5.z
    workValue2 = true
    workValue5 = true
    flag3 = true
    -- Beginner: result below is objectEntity.
    arg6 = arg6(arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3)
    while true do
      arg7 = DoesEntityExist
      arg8 = arg6
      arg7 = arg7(arg8)
      if arg7 then
        break
      end
      arg7 = Wait
      arg8 = 0
      arg7(arg8)
    end
    arg7 = TriggerServerEvent
    arg8 = "3a7f6a2bdf"
    arg9 = "Water Monitor"
    workValue27 = GetEntityCoords
    workValue2 = arg6
    workValue5 = true
    workValue27, workValue2, workValue5, flag3, flag6 = workValue27(workValue2, workValue5)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
    arg7(arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6)
    arg7 = SetEntityCollision
    arg8 = arg6
    arg9 = false
    workValue27 = true
    arg7(arg8, arg9, workValue27)
    arg7 = NetworkGetNetworkIdFromEntity
    arg8 = arg6
    arg7 = arg7(arg8)
    arg8 = PlaceObjectOnGroundProperly
    arg9 = arg6
    arg8(arg9)
    arg8 = FreezeEntityPosition
    arg9 = arg6
    workValue27 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg8(arg9, workValue27)
    arg8 = SetEntityHeading
    arg9 = arg6
    workValue27 = GetEntityHeading
    workValue2 = arg2
    workValue27, workValue2, workValue5, flag3, flag6 = workValue27(workValue2)
    -- Beginner: Change the direction an entity is facing.
    arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6)
    arg8 = GetOffsetFromEntityInWorldCoords
    arg9 = arg6
    workValue27 = 0.1
    workValue2 = 0.22
    workValue5 = 0.7
    arg8 = arg8(arg9, workValue27, workValue2, workValue5)
    arg5 = arg8
    arg8 = numberValue4
    arg9 = {}
    workValue27 = arg7
    workValue2 = arg5
    workValue5 = GetEntityHeading
    flag3 = arg6
    -- Beginner: result below is heading.
    workValue5 = workValue5(flag3)
    flag3 = false
    flag6 = false
    arg9[1] = workValue27
    arg9[2] = workValue2
    arg9[3] = workValue5
    arg9[4] = flag3
    arg9[5] = flag6
    arg8[arg7] = arg9
    arg8 = TriggerServerEvent
    arg9 = "119add1130"
    workValue27 = arg7
    workValue2 = numberValue4
    workValue2 = workValue2[arg7]
    workValue5 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "119add1130".
    arg8(arg9, workValue27, workValue2, workValue5)
    arg8 = SetModelAsNoLongerNeeded
    arg9 = cmgCall3
    arg8(arg9)
    arg8 = tCMG
    arg8 = arg8.notify
    arg9 = "~g~Success~w~: Water monitor setup"
    -- Beginner: Show a notification to the player.
    arg8(arg9)
  else
    arg5 = false
    arg6 = 0
    arg7 = pairs
    arg8 = numberValue4
    arg7, arg8, arg9, workValue27 = arg7(arg8)
    for workValue2, workValue5 in arg7, arg8, arg9, workValue27 do
      flag3 = workValue5[2]
      flag3 = arg4 - flag3
      flag3 = #flag3
      if flag3 < 15.0 then
        arg6 = workValue2
        arg5 = true
        break
      end
    end
    if arg5 then
      arg7 = numberValue4
      arg7 = arg7[arg6]
      arg7 = arg7[4]
      if arg7 then
        arg7 = tCMG
        arg7 = arg7.notify
        arg8 = "~r~Error~w~: This monitor is active and cannot be removed"
        arg7(arg8)
      else
        arg7 = CMG
        arg7 = arg7.getObjectId
        arg8 = numberValue4
        arg8 = arg8[arg6]
        arg8 = arg8[1]
        arg9 = "handleWaterMonitor"
        arg7 = arg7(arg8, arg9)
        arg8 = TriggerServerEvent
        arg9 = "119add1130"
        workValue27 = arg6
        workValue2 = numberValue4
        workValue2 = workValue2[arg6]
        workValue5 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "119add1130".
        arg8(arg9, workValue27, workValue2, workValue5)
        if arg7 then
          arg8 = DoesEntityExist
          arg9 = arg7
          arg8 = arg8(arg9)
          if arg8 then
            arg8 = DeleteEntity
            arg9 = arg7
            -- Beginner: Delete a GTA entity.
            arg8(arg9)
          end
        end
        arg8 = numberValue4
        arg8[arg6] = nil
        arg8 = tCMG
        arg8 = arg8.notify
        arg9 = "~g~Success~w~: Water monitor removed"
        -- Beginner: Show a notification to the player.
        arg8(arg9)
      end
    else
      arg7 = tCMG
      arg7 = arg7.notify
      arg8 = "~r~Error~w~: No water monitor found"
      arg7(arg8)
    end
  end
end
workValue = eventRegistration6
eventRegistration6 = RegisterNetEvent
textValue14 = "aa50955ca8"
-- Beginner: this function handles network event "aa50955ca8".

-- === HELPER FUNCTION (decompiler name: numberValue16; parameters: arg1, arg2) ===
function numberValue16(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8
  arg3 = dataTable8
  arg3 = arg3[arg1]
  if nil ~= arg3 then
    arg3 = dataTable8
    arg3 = arg3[arg1]
    arg3 = arg3.handle
    if nil ~= arg3 then
      arg3 = DoesParticleFxLoopedExist
      arg4 = dataTable8
      arg4 = arg4[arg1]
      arg4 = arg4.handle
      arg3 = arg3(arg4)
      if arg3 then
        arg3 = numberValue4
        arg3 = arg3[arg1]
        arg3 = arg3[2]
        arg4 = StopParticleFxLooped
        arg5 = dataTable8
        arg5 = arg5[arg1]
        arg5 = arg5.handle
        arg6 = false
        arg4(arg5, arg6)
        arg4 = StopParticleFxLooped
        arg5 = dataTable8
        arg5 = arg5[arg1]
        arg5 = arg5.handle2
        arg6 = false
        arg4(arg5, arg6)
        arg4 = dataTable8
        arg4 = arg4[arg1]
        arg5 = dataTable8
        arg5 = arg5[arg1]
        arg5 = arg5.pitch
        arg5 = arg5 + arg2
        arg4.pitch = arg5
        arg4 = RequestNamedPtfxAsset
        arg5 = "core"
        arg4(arg5)
        while true do
          arg4 = HasNamedPtfxAssetLoaded
          arg5 = "core"
          arg4 = arg4(arg5)
          if arg4 then
            break
          end
          arg4 = Wait
          arg5 = 0
          arg4(arg5)
        end
        arg4 = UseParticleFxAsset
        arg5 = "core"
        arg4(arg5)
        arg4 = SetParticleFxShootoutBoat
        arg5 = 1
        arg4(arg5)
        arg4 = dataTable8
        arg4 = arg4[arg1]
        arg5 = StartParticleFxLoopedAtCoord
        arg6 = "water_cannon_jet"
        arg7 = arg3.x
        arg8 = arg3.y
        arg9 = arg3.z
        workValue27 = dataTable8
        workValue27 = workValue27[arg1]
        workValue27 = workValue27.pitch
        workValue2 = 0.0
        workValue5 = numberValue4
        workValue5 = workValue5[arg1]
        workValue5 = workValue5[3]
        flag3 = 1.0
        flag6 = false
        workValue9 = false
        flag7 = false
        flag8 = false
        arg5 = arg5(arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8)
        arg4.handle = arg5
        arg4 = dataTable8
        arg4 = arg4[arg1]
        arg5 = StartParticleFxLoopedAtCoord
        arg6 = "water_cannon_spray"
        arg7 = arg3.x
        arg8 = arg3.y
        arg9 = arg3.z
        workValue27 = dataTable8
        workValue27 = workValue27[arg1]
        workValue27 = workValue27.pitch
        workValue2 = 0.0
        workValue5 = numberValue4
        workValue5 = workValue5[arg1]
        workValue5 = workValue5[3]
        flag3 = 1.0
        flag6 = false
        workValue9 = false
        flag7 = false
        flag8 = false
        arg5 = arg5(arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8)
        arg4.handle2 = arg5
        arg4 = RemoveNamedPtfxAsset
        arg5 = "core"
        arg4(arg5)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "aa50955ca8".
eventRegistration6(textValue14, numberValue16)
eventRegistration6 = 5.0
textValue14 = 5.0
numberValue16 = 3

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg2 = pairs
  arg3 = numberValue3
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = arg7[3]
    arg8 = arg1 - arg8
    arg8 = #arg8
    if arg8 < 25.0 then
      arg9 = true
      return arg9
    end
  end
  arg2 = false
  return arg2
end
threadCall2 = Citizen
threadCall2 = threadCall2.CreateThread

-- === HELPER FUNCTION (decompiler name: threadCall3; parameters: none) ===
function threadCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3
  while true do
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "lfb.onduty.permission"
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = CMG
      arg1 = arg1.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg1 = arg1()
      arg2 = pairs
      arg3 = numberValue4
      arg2, arg3, arg4, arg5 = arg2(arg3)
      for arg6, arg7 in arg2, arg3, arg4, arg5 do
        arg8 = arg7[5]
        if not arg8 then
          arg8 = arg7[2]
          arg8 = arg1 - arg8
          arg8 = #arg8
          arg9 = eventRegistration6
          if arg8 < arg9 then
            arg9 = textValue14
            if arg8 < arg9 then
              arg9 = arg7[4]
              if arg9 then
                arg9 = DisableControlAction
                workValue27 = 0
                workValue2 = 172
                workValue5 = true
                arg9(workValue27, workValue2, workValue5)
                arg9 = DisableControlAction
                workValue27 = 0
                workValue2 = 173
                workValue5 = true
                arg9(workValue27, workValue2, workValue5)
                arg9 = 0.0
                workValue27 = IsDisabledControlPressed
                workValue2 = 0
                workValue5 = 172
                workValue27 = workValue27(workValue2, workValue5)
                if workValue27 then
                  arg9 = arg9 + 15.0
                end
                workValue27 = IsDisabledControlPressed
                workValue2 = 0
                workValue5 = 173
                workValue27 = workValue27(workValue2, workValue5)
                if workValue27 then
                  arg9 = arg9 - 15.0
                end
                if 0.0 ~= arg9 then
                  workValue27 = TriggerServerEvent
                  workValue2 = "cab7906b1d"
                  workValue5 = arg6
                  flag3 = arg9
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cab7906b1d".
                  workValue27(workValue2, workValue5, flag3)
                  workValue27 = Wait
                  workValue2 = 1000
                  workValue27(workValue2)
                end
                workValue27 = DisableControlAction
                workValue2 = 0
                workValue5 = 38
                flag3 = true
                workValue27(workValue2, workValue5, flag3)
                workValue27 = IsDisabledControlPressed
                workValue2 = 0
                workValue5 = 38
                workValue27 = workValue27(workValue2, workValue5)
                if workValue27 then
                  workValue27 = true
                  textValue6 = workValue27
                  workValue27 = TriggerServerEvent
                  workValue2 = "98397e121f"
                  workValue5 = arg6
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "98397e121f".
                  workValue27(workValue2, workValue5)
                  workValue27 = tCMG
                  workValue27 = workValue27.notify
                  workValue2 = "~g~Success~w~: Water monitor toggled"
                  -- Beginner: Show a notification to the player.
                  workValue27(workValue2)
                  workValue27 = Wait
                  workValue2 = numberValue16
                  workValue2 = workValue2 * 1000
                  workValue27(workValue2)
                end
              else
                arg9 = workValue17
                workValue27 = arg1
                arg9 = arg9(workValue27)
                if arg9 then
                  arg9 = DisableControlAction
                  workValue27 = 0
                  workValue2 = 38
                  workValue5 = true
                  arg9(workValue27, workValue2, workValue5)
                  arg9 = IsDisabledControlPressed
                  workValue27 = 0
                  workValue2 = 38
                  arg9 = arg9(workValue27, workValue2)
                  if arg9 then
                    arg9 = TriggerServerEvent
                    workValue27 = "98397e121f"
                    workValue2 = arg6
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "98397e121f".
                    arg9(workValue27, workValue2)
                    arg9 = tCMG
                    arg9 = arg9.notify
                    workValue27 = "~g~Success~w~: Water monitor toggled"
                    -- Beginner: Show a notification to the player.
                    arg9(workValue27)
                    arg9 = Wait
                    workValue27 = numberValue16
                    workValue27 = workValue27 * 1000
                    arg9(workValue27)
                  end
                else
                  arg9 = tCMG
                  arg9 = arg9.notify
                  workValue27 = "~r~Error~w~: No active supply line found to enable this water monitor"
                  -- Beginner: Show a notification to the player.
                  arg9(workValue27)
                end
              end
            else
              arg9 = workValue17
              workValue27 = arg1
              arg9 = arg9(workValue27)
              if arg9 then
                arg9 = false
                workValue27 = false
                textValue6 = workValue27
                while not arg9 do
                  workValue27 = DisableControlAction
                  workValue2 = 0
                  workValue5 = 38
                  flag3 = true
                  workValue27(workValue2, workValue5, flag3)
                  workValue27 = IsDisabledControlPressed
                  workValue2 = 0
                  workValue5 = 38
                  workValue27 = workValue27(workValue2, workValue5)
                  if workValue27 then
                    workValue27 = true
                    textValue6 = workValue27
                    arg9 = true
                  end
                  workValue27 = Wait
                  workValue2 = 0
                  workValue27(workValue2)
                end
                workValue27 = textValue6
                if workValue27 then
                  workValue27 = TriggerServerEvent
                  workValue2 = "98397e121f"
                  workValue5 = arg6
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "98397e121f".
                  workValue27(workValue2, workValue5)
                  workValue27 = tCMG
                  workValue27 = workValue27.notify
                  workValue2 = "~g~Success~w~: Water monitor toggled"
                  -- Beginner: Show a notification to the player.
                  workValue27(workValue2)
                  workValue27 = Wait
                  workValue2 = numberValue16
                  workValue2 = workValue2 * 1000
                  workValue27(workValue2)
                end
              else
                arg9 = tCMG
                arg9 = arg9.notify
                workValue27 = "~r~Error~w~: No active supply line found to enable this water monitor"
                -- Beginner: Show a notification to the player.
                arg9(workValue27)
                arg9 = arg7[4]
                if arg9 then
                  arg9 = DisableControlAction
                  workValue27 = 0
                  workValue2 = 38
                  workValue5 = true
                  arg9(workValue27, workValue2, workValue5)
                  arg9 = IsDisabledControlPressed
                  workValue27 = 0
                  workValue2 = 38
                  arg9 = arg9(workValue27, workValue2)
                  if arg9 then
                    arg9 = true
                    textValue6 = arg9
                    arg9 = TriggerServerEvent
                    workValue27 = "98397e121f"
                    workValue2 = arg6
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "98397e121f".
                    arg9(workValue27, workValue2)
                    arg9 = tCMG
                    arg9 = arg9.notify
                    workValue27 = "~g~Success~w~: Water monitor toggled"
                    -- Beginner: Show a notification to the player.
                    arg9(workValue27)
                    arg9 = Wait
                    workValue27 = numberValue16
                    workValue27 = workValue27 * 1000
                    arg9(workValue27)
                  end
                end
              end
            end
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall2(threadCall3)
threadCall2 = 0
threadCall3 = Citizen
threadCall3 = threadCall3.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6
  while true do
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "lfb.onduty.permission"
    arg1 = arg1(arg2)
    if not arg1 then
      arg1 = false
      flag24 = arg1
    end
    arg1 = flag24
    if arg1 then
      arg1 = numberValue13
      if arg1 then
        arg1 = flag23
        if not arg1 then
          arg1 = numberValue9
          if arg1 < 1 then
            arg1 = 0
            numberValue9 = arg1
            arg1 = tCMG
            arg1 = arg1.notify
            arg2 = "~r~Notice~w~: You have no active supply of water"
            -- Beginner: Show a notification to the player.
            arg1(arg2)
          end
          arg1 = numberValue9
          arg1 = arg1 - 1
          numberValue9 = arg1
        end
        arg1 = Wait
        arg2 = 1000
        arg1(arg2)
      end
      arg1 = numberValue9
      arg2 = dataTable12
      arg1 = arg1 / arg2
      arg1 = arg1 * 100
      threadCall2 = arg1
      arg1 = math
      arg1 = arg1.floor
      arg2 = threadCall2
      arg2 = arg2 + 0.5
      arg1 = arg1(arg2)
      threadCall2 = arg1
      arg1 = threadCall2
      if -1 == arg1 then
        arg1 = 0
        threadCall2 = arg1
      end
      arg1 = flag23
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.getPlayerCoords
        -- Beginner: result below is playerCoords.
        arg1 = arg1()
        arg2 = CMG
        arg2 = arg2.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        arg2 = arg2()
        if 0 == arg2 then
          arg2 = eventRegistration4
          arg2 = arg2()
          arg3 = pairs
          arg4 = numberValue3
          arg3, arg4, arg5, arg6 = arg3(arg4)
          for arg7, arg8 in arg3, arg4, arg5, arg6 do
            arg9 = arg8[3]
            arg9 = arg1 - arg9
            arg9 = #arg9
            workValue27 = numberValue10
            if arg9 < workValue27 then
              workValue27 = false
              workValue2 = Citizen
              workValue2 = workValue2.SetTimeout
              workValue5 = 5000

              -- === HELPER FUNCTION (decompiler name: flag3; parameters: none) ===
              function flag3()
                local rageUiCall, textValue7
                rageUiCall = true
                workValue27 = rageUiCall
              end
              workValue2(workValue5, flag3)
              workValue2 = drawNativeNotification
              workValue5 = "Press ~INPUT_FRONTEND_RDOWN~ to connect to this vehicle"
              -- Beginner: Show a GTA-style notification/help prompt.
              workValue2(workValue5)
              while not workValue27 do
                workValue2 = DisableControlAction
                workValue5 = 0
                flag3 = 191
                flag6 = true
                workValue2(workValue5, flag3, flag6)
                workValue2 = IsDisabledControlJustPressed
                workValue5 = 0
                flag3 = 191
                workValue2 = workValue2(workValue5, flag3)
                if workValue2 then
                  workValue2 = true
                  flag23 = workValue2
                  numberValue8 = arg7
                  workValue2 = tCMG
                  workValue2 = workValue2.notify
                  workValue5 = "~g~Success~w~: You are now connected to this vehicle"
                  -- Beginner: Show a notification to the player.
                  workValue2(workValue5)
                  workValue27 = true
                  workValue2 = dataTable12
                  numberValue9 = workValue2
                  break
                end
                workValue2 = Wait
                workValue5 = 0
                workValue2(workValue5)
              end
            end
          end
          arg3 = flag23
          if not arg3 and 0 ~= arg2 and nil ~= arg2 then
            arg3 = GetEntityModel
            arg4 = arg2
            -- Beginner: result below is modelHash.
            arg3 = arg3(arg4)
            arg4 = false
            arg5 = pairs
            arg6 = dataTable11
            arg5, arg6, arg7, arg8 = arg5(arg6)
            for arg9, workValue27 in arg5, arg6, arg7, arg8 do
              workValue2 = workValue27.model
              if workValue2 == arg3 then
                arg4 = true
                break
              end
            end
            if arg4 then
              arg5 = NetworkGetNetworkIdFromEntity
              arg6 = arg2
              arg5 = arg5(arg6)
              arg6 = false
              arg7 = pairs
              arg8 = dataTable10
              arg7, arg8, arg9, workValue27 = arg7(arg8)
              for workValue2 in arg7, arg8, arg9, workValue27 do
                workValue5 = dataTable10
                workValue5 = workValue5[workValue2]
                if arg5 == workValue5 then
                  arg6 = true
                end
              end
              if not arg6 then
                arg7 = numberValue9
                if arg7 < 1 then
                  arg7 = dataTable12
                  numberValue9 = arg7
                  arg7 = dataTable10
                  arg7[arg5] = arg5
                  arg7 = Citizen
                  arg7 = arg7.SetTimeout
                  arg8 = 180000

                  -- === HELPER FUNCTION: arg9() ===
                  function arg9()
                    local rageUiCall, textValue7
                    textValue7 = arg5
                    rageUiCall = dataTable10
                    rageUiCall[textValue7] = nil
                  end
                  arg7(arg8, arg9)
                  arg7 = tCMG
                  arg7 = arg7.notify
                  arg8 = "~g~Success~w~: You now have a limited supply of water from the nearest vehicle"
                  -- Beginner: Show a notification to the player.
                  arg7(arg8)
                end
              else
                arg7 = numberValue9
                if arg7 < 1 then
                  arg7 = tCMG
                  arg7 = arg7.notify
                  arg8 = "~r~Notice~w~: This vehicle has already supplied you with water, setup a supply line for more"
                  arg7(arg8)
                  arg7 = Wait
                  arg8 = 5000
                  arg7(arg8)
                end
              end
            end
          end
        end
      else
        arg1 = numberValue8
        if 0 ~= arg1 then
          arg2 = numberValue8
          arg1 = numberValue3
          arg1 = arg1[arg2]
          if nil == arg1 then
            arg1 = tCMG
            arg1 = arg1.notify
            arg2 = "~r~Notice~w~: You have now been disconnected from the supply line"
            -- Beginner: Show a notification to the player.
            arg1(arg2)
            arg1 = false
            flag23 = arg1
          end
        end
        arg1 = flag23
        if arg1 then
          arg1 = CMG
          arg1 = arg1.getPlayerCoords
          -- Beginner: result below is playerCoords.
          arg1 = arg1()
          arg3 = numberValue8
          arg2 = numberValue3
          arg2 = arg2[arg3]
          arg2 = arg2[3]
          arg2 = arg1 - arg2
          arg2 = #arg2
          arg3 = 200.0
          if arg2 > arg3 then
            arg3 = false
            flag23 = arg3
            arg3 = 0
            numberValue8 = arg3
            arg3 = tCMG
            arg3 = arg3.notify
            arg4 = "~r~Notice~w~: You have now been disconnected from the supply line"
            arg3(arg4)
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall3(cmgCall4)

-- === HELPER FUNCTION (decompiler name: threadCall3; parameters: none) ===
function threadCall3()
  local arg1, arg2, arg3, arg4
  arg1 = flag24
  if arg1 then
    arg1 = drawNativeText
    arg2 = "~b~Supply Line~w~: "
    arg3 = tostring
    arg4 = threadCall2
    arg3 = arg3(arg4)
    arg4 = "/100 %"
    arg2 = arg2 .. arg3 .. arg4
    -- Beginner: Draw GTA-style text on screen.
    arg1(arg2)
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
numberValue17 = threadCall3
eventRegistration7 = "LFB Hose UI"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(numberValue17, eventRegistration7)
cmgCall4 = {}
numberValue17 = 2.0
eventRegistration7 = RegisterNetEvent
eventRegistration8 = "611bb4aa94"
-- Beginner: this function handles network event "611bb4aa94".

-- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg1) ===
function textValue15(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9
  arg2 = numberValue6
  arg2 = arg2[arg1]
  if nil ~= arg2 then
    arg2 = numberValue6
    arg2 = arg2[arg1]
    arg3 = numberValue6
    arg3 = arg3[arg1]
    arg3 = arg3[8]
    arg3 = not arg3
    arg2[8] = arg3
  end
  arg2 = cmgCall4
  arg2 = arg2[arg1]
  if nil ~= arg2 then
    arg2 = cmgCall4
    arg2 = arg2[arg1]
    arg2 = arg2.handle
    if nil ~= arg2 then
      arg2 = DoesParticleFxLoopedExist
      arg3 = cmgCall4
      arg3 = arg3[arg1]
      arg3 = arg3.handle
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = StopParticleFxLooped
        arg3 = cmgCall4
        arg3 = arg3[arg1]
        arg3 = arg3.handle
        arg4 = false
        arg2(arg3, arg4)
        arg2 = StopParticleFxLooped
        arg3 = cmgCall4
        arg3 = arg3[arg1]
        arg3 = arg3.handle2
        arg4 = false
        arg2(arg3, arg4)
        arg2 = StopParticleFxLooped
        arg3 = cmgCall4
        arg3 = arg3[arg1]
        arg3 = arg3.handle3
        arg4 = false
        arg2(arg3, arg4)
        arg2 = StopParticleFxLooped
        arg3 = cmgCall4
        arg3 = arg3[arg1]
        arg3 = arg3.handle4
        arg4 = false
        arg2(arg3, arg4)
        arg2 = cmgCall4
        arg2[arg1] = nil
      end
    end
  end
  arg2 = numberValue6
  arg2 = arg2[arg1]
  if nil ~= arg2 then
    arg2 = numberValue6
    arg2 = arg2[arg1]
    arg2 = arg2[8]
    if arg2 then
      arg2 = CMG
      arg2 = arg2.loadPtfx
      arg3 = "core"
      arg2(arg3)
      arg2 = UseParticleFxAsset
      arg3 = "core"
      arg2(arg3)
      arg2 = SetParticleFxShootoutBoat
      arg3 = 1
      arg2(arg3)
      arg2 = cmgCall4
      arg3 = {}
      arg2[arg1] = arg3
      arg2 = cmgCall4
      arg2 = arg2[arg1]
      arg3 = StartParticleFxLoopedAtCoord
      arg4 = "water_cannon_jet"
      arg5 = numberValue6
      arg5 = arg5[arg1]
      arg5 = arg5[3]
      arg5 = arg5.x
      arg6 = numberValue6
      arg6 = arg6[arg1]
      arg6 = arg6[3]
      arg6 = arg6.y
      arg7 = numberValue6
      arg7 = arg7[arg1]
      arg7 = arg7[3]
      arg7 = arg7.z
      arg8 = -90.0
      arg9 = 0.0
      workValue27 = 0.0
      workValue2 = numberValue17
      workValue5 = false
      flag3 = false
      flag6 = false
      workValue9 = false
      arg3 = arg3(arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9)
      arg2.handle = arg3
      arg2 = UseParticleFxAsset
      arg3 = "core"
      arg2(arg3)
      arg2 = SetParticleFxShootoutBoat
      arg3 = 1
      arg2(arg3)
      arg2 = cmgCall4
      arg2 = arg2[arg1]
      arg3 = StartParticleFxLoopedAtCoord
      arg4 = "water_cannon_jet"
      arg5 = numberValue6
      arg5 = arg5[arg1]
      arg5 = arg5[4]
      arg5 = arg5.x
      arg6 = numberValue6
      arg6 = arg6[arg1]
      arg6 = arg6[4]
      arg6 = arg6.y
      arg7 = numberValue6
      arg7 = arg7[arg1]
      arg7 = arg7[4]
      arg7 = arg7.z
      arg8 = -90.0
      arg9 = 0.0
      workValue27 = 0.0
      workValue2 = numberValue17
      workValue5 = false
      flag3 = false
      flag6 = false
      workValue9 = false
      arg3 = arg3(arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9)
      arg2.handle2 = arg3
      arg2 = UseParticleFxAsset
      arg3 = "core"
      arg2(arg3)
      arg2 = SetParticleFxShootoutBoat
      arg3 = 1
      arg2(arg3)
      arg2 = cmgCall4
      arg2 = arg2[arg1]
      arg3 = StartParticleFxLoopedAtCoord
      arg4 = "water_cannon_jet"
      arg5 = numberValue6
      arg5 = arg5[arg1]
      arg5 = arg5[5]
      arg5 = arg5.x
      arg6 = numberValue6
      arg6 = arg6[arg1]
      arg6 = arg6[5]
      arg6 = arg6.y
      arg7 = numberValue6
      arg7 = arg7[arg1]
      arg7 = arg7[5]
      arg7 = arg7.z
      arg8 = -90.0
      arg9 = 0.0
      workValue27 = 0.0
      workValue2 = numberValue17
      workValue5 = false
      flag3 = false
      flag6 = false
      workValue9 = false
      arg3 = arg3(arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9)
      arg2.handle3 = arg3
      arg2 = UseParticleFxAsset
      arg3 = "core"
      arg2(arg3)
      arg2 = SetParticleFxShootoutBoat
      arg3 = 1
      arg2(arg3)
      arg2 = cmgCall4
      arg2 = arg2[arg1]
      arg3 = StartParticleFxLoopedAtCoord
      arg4 = "water_cannon_jet"
      arg5 = numberValue6
      arg5 = arg5[arg1]
      arg5 = arg5[6]
      arg5 = arg5.x
      arg6 = numberValue6
      arg6 = arg6[arg1]
      arg6 = arg6[6]
      arg6 = arg6.y
      arg7 = numberValue6
      arg7 = arg7[arg1]
      arg7 = arg7[6]
      arg7 = arg7.z
      arg8 = -90.0
      arg9 = 0.0
      workValue27 = 0.0
      workValue2 = numberValue17
      workValue5 = false
      flag3 = false
      flag6 = false
      workValue9 = false
      arg3 = arg3(arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9)
      arg2.handle4 = arg3
      arg2 = RemoveNamedPtfxAsset
      arg3 = "core"
      arg2(arg3)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "611bb4aa94".
eventRegistration7(eventRegistration8, textValue15)
eventRegistration7 = -431813309

-- === HELPER FUNCTION (decompiler name: eventRegistration8; parameters: arg1) ===
function eventRegistration8(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = CMG
  arg3 = arg3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg3 = arg3()
  if 0 ~= arg3 then
    arg4 = tCMG
    arg4 = arg4.notify
    arg5 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    arg4(arg5)
    return
  end
  arg4 = CMG
  arg4 = arg4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg4 = arg4()
  if arg1 then
    arg5 = CMG
    arg5 = arg5.loadModel
    arg6 = eventRegistration7
    -- Beginner: Request/load a GTA model before spawning or applying it.
    arg5(arg6)
    arg5 = GetOffsetFromEntityInWorldCoords
    arg6 = arg2
    arg7 = 0.0
    arg8 = 5.0
    arg9 = 0.0
    arg5 = arg5(arg6, arg7, arg8, arg9)
    arg6 = CMG
    arg6 = arg6.requestEntitySpawn
    arg7 = "lfb_prop"
    arg8 = "tent"
    arg9 = arg5
    arg6(arg7, arg8, arg9)
    arg6 = CreateObject
    arg7 = eventRegistration7
    arg8 = arg5.x
    arg9 = arg5.y
    workValue27 = arg5.z
    workValue2 = true
    workValue5 = true
    flag3 = true
    -- Beginner: result below is objectEntity.
    arg6 = arg6(arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3)
    while true do
      arg7 = DoesEntityExist
      arg8 = arg6
      arg7 = arg7(arg8)
      if arg7 then
        break
      end
      arg7 = Wait
      arg8 = 0
      arg7(arg8)
    end
    arg7 = TriggerServerEvent
    arg8 = "3a7f6a2bdf"
    arg9 = "Decontamination Tent"
    workValue27 = GetEntityCoords
    workValue2 = arg6
    workValue5 = true
    workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12 = workValue27(workValue2, workValue5)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
    arg7(arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12)
    arg7 = NetworkGetNetworkIdFromEntity
    arg8 = arg6
    arg7 = arg7(arg8)
    arg8 = PlaceObjectOnGroundProperly
    arg9 = arg6
    arg8(arg9)
    arg8 = FreezeEntityPosition
    arg9 = arg6
    workValue27 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg8(arg9, workValue27)
    arg8 = SetEntityHeading
    arg9 = arg6
    workValue27 = GetEntityHeading
    workValue2 = arg2
    workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12 = workValue27(workValue2)
    -- Beginner: Change the direction an entity is facing.
    arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12)
    arg8 = GetOffsetFromEntityInWorldCoords
    arg9 = arg6
    workValue27 = -1.75
    workValue2 = 0.0
    workValue5 = 2.9
    arg8 = arg8(arg9, workValue27, workValue2, workValue5)
    arg9 = GetOffsetFromEntityInWorldCoords
    workValue27 = arg6
    workValue2 = -0.63
    workValue5 = 0.0
    flag3 = 2.9
    arg9 = arg9(workValue27, workValue2, workValue5, flag3)
    workValue27 = GetOffsetFromEntityInWorldCoords
    workValue2 = arg6
    workValue5 = 0.63
    flag3 = 0.0
    flag6 = 2.9
    workValue27 = workValue27(workValue2, workValue5, flag3, flag6)
    workValue2 = GetOffsetFromEntityInWorldCoords
    workValue5 = arg6
    flag3 = 1.75
    flag6 = 0.0
    workValue9 = 2.9
    workValue2 = workValue2(workValue5, flag3, flag6, workValue9)
    workValue5 = numberValue6
    flag3 = {}
    flag6 = arg7
    workValue9 = arg5
    flag7 = arg8
    flag8 = arg9
    flag9 = workValue27
    flag10 = workValue2
    flag11 = GetEntityHeading
    flag12 = arg6
    -- Beginner: result below is heading.
    flag11 = flag11(flag12)
    flag12 = false
    flag3[1] = flag6
    flag3[2] = workValue9
    flag3[3] = flag7
    flag3[4] = flag8
    flag3[5] = flag9
    flag3[6] = flag10
    flag3[7] = flag11
    flag3[8] = flag12
    workValue5[arg7] = flag3
    workValue5 = TriggerServerEvent
    flag3 = "e504a7e25b"
    flag6 = arg7
    workValue9 = numberValue6
    workValue9 = workValue9[arg7]
    flag7 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e504a7e25b".
    workValue5(flag3, flag6, workValue9, flag7)
    workValue5 = SetModelAsNoLongerNeeded
    flag3 = eventRegistration7
    workValue5(flag3)
    workValue5 = tCMG
    workValue5 = workValue5.notify
    flag3 = "~g~Success~w~: Decontamination tent setup"
    -- Beginner: Show a notification to the player.
    workValue5(flag3)
  else
    arg5 = false
    arg6 = 0
    arg7 = pairs
    arg8 = numberValue6
    arg7, arg8, arg9, workValue27 = arg7(arg8)
    for workValue2, workValue5 in arg7, arg8, arg9, workValue27 do
      flag3 = workValue5[2]
      flag3 = arg4 - flag3
      flag3 = #flag3
      if flag3 < 25.0 then
        arg6 = workValue2
        arg5 = true
        break
      end
    end
    if arg5 then
      arg7 = numberValue6
      arg7 = arg7[arg6]
      arg7 = arg7[8]
      if arg7 then
        arg7 = tCMG
        arg7 = arg7.notify
        arg8 = "~r~Error~w~: This decontamination tent is active and cannot be removed"
        arg7(arg8)
      else
        arg7 = CMG
        arg7 = arg7.getObjectId
        arg8 = numberValue6
        arg8 = arg8[arg6]
        arg8 = arg8[1]
        arg9 = "handleDecontaminationTent"
        arg7 = arg7(arg8, arg9)
        arg8 = TriggerServerEvent
        arg9 = "e504a7e25b"
        workValue27 = arg6
        workValue2 = numberValue6
        workValue2 = workValue2[arg6]
        workValue5 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e504a7e25b".
        arg8(arg9, workValue27, workValue2, workValue5)
        if arg7 then
          arg8 = DoesEntityExist
          arg9 = arg7
          arg8 = arg8(arg9)
          if arg8 then
            arg8 = DeleteEntity
            arg9 = arg7
            -- Beginner: Delete a GTA entity.
            arg8(arg9)
          end
        end
        arg8 = numberValue6
        arg8[arg6] = nil
        arg8 = tCMG
        arg8 = arg8.notify
        arg9 = "~g~Success~w~: Decontamination tent removed"
        -- Beginner: Show a notification to the player.
        arg8(arg9)
      end
    else
      arg7 = tCMG
      arg7 = arg7.notify
      arg8 = "~r~Error~w~: No decontamination tent found"
      arg7(arg8)
    end
  end
end
workValue26 = eventRegistration8
eventRegistration8 = RegisterNetEvent
textValue15 = "e504a7e25b"
-- Beginner: this function handles network event "e504a7e25b".

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1, arg2, arg3) ===
function cmgCall5(arg1, arg2, arg3)
  local arg4
  if arg3 then
    arg4 = numberValue6
    arg4[arg1] = nil
    return
  end
  arg4 = numberValue6
  arg4[arg1] = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e504a7e25b".
eventRegistration8(textValue15, cmgCall5)
eventRegistration8 = 15.0

-- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
function textValue15()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "lfb.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = CMG
    arg1 = arg1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg1 = arg1()
    arg2 = pairs
    arg3 = numberValue6
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, arg7 in arg2, arg3, arg4, arg5 do
      arg8 = arg7[2]
      arg8 = arg1 - arg8
      arg8 = #arg8
      arg9 = eventRegistration8
      if arg8 < arg9 then
        arg9 = drawNativeNotification
        workValue27 = "Press ~INPUT_PICKUP~ to toggle the ~b~decontamination showers"
        -- Beginner: Show a GTA-style notification/help prompt.
        arg9(workValue27)
        arg9 = DisableControlAction
        workValue27 = 0
        workValue2 = 38
        workValue5 = true
        arg9(workValue27, workValue2, workValue5)
        arg9 = IsDisabledControlJustPressed
        workValue27 = 0
        workValue2 = 38
        arg9 = arg9(workValue27, workValue2)
        if arg9 then
          arg9 = TriggerServerEvent
          workValue27 = "611bb4aa94"
          workValue2 = arg6
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "611bb4aa94".
          arg9(workValue27, workValue2)
          arg9 = tCMG
          arg9 = arg9.notify
          workValue27 = "~g~Success~w~: Decontamination showers toggled"
          -- Beginner: Show a notification to the player.
          arg9(workValue27)
        end
      end
    end
  end
end
cmgCall5 = CMG
cmgCall5 = cmgCall5.createThreadOnTick
flag26 = textValue15
textValue16 = "LFB Showers"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall5(flag26, textValue16)
cmgCall5 = RegisterNetEvent
flag26 = "0004c6d062"
-- Beginner: this function handles network event "0004c6d062".

-- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg1, arg2, arg3) ===
function textValue16(arg1, arg2, arg3)
  local arg4
  if arg3 then
    arg4 = dataTable3
    arg4[arg1] = nil
    return
  end
  arg4 = dataTable3
  arg4[arg1] = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0004c6d062".
cmgCall5(flag26, textValue16)
cmgCall5 = 1230203395

-- === HELPER FUNCTION (decompiler name: flag26; parameters: arg1) ===
function flag26(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = CMG
  arg3 = arg3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg3 = arg3()
  if 0 ~= arg3 then
    arg4 = tCMG
    arg4 = arg4.notify
    arg5 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    arg4(arg5)
    return
  end
  arg4 = CMG
  arg4 = arg4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg4 = arg4()
  if arg1 then
    arg5 = CMG
    arg5 = arg5.loadModel
    arg6 = cmgCall5
    -- Beginner: Request/load a GTA model before spawning or applying it.
    arg5(arg6)
    arg5 = GetOffsetFromEntityInWorldCoords
    arg6 = arg2
    arg7 = 0.0
    arg8 = 1.5
    arg9 = 0.0
    arg5 = arg5(arg6, arg7, arg8, arg9)
    arg6 = CMG
    arg6 = arg6.requestEntitySpawn
    arg7 = "lfb_prop"
    arg8 = "cushion"
    arg9 = arg5
    arg6(arg7, arg8, arg9)
    arg6 = CreateObject
    arg7 = cmgCall5
    arg8 = arg5.x
    arg9 = arg5.y
    workValue27 = arg5.z
    workValue2 = true
    workValue5 = true
    flag3 = true
    -- Beginner: result below is objectEntity.
    arg6 = arg6(arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3)
    while true do
      arg7 = DoesEntityExist
      arg8 = arg6
      arg7 = arg7(arg8)
      if arg7 then
        break
      end
      arg7 = Wait
      arg8 = 0
      arg7(arg8)
    end
    arg7 = TriggerServerEvent
    arg8 = "3a7f6a2bdf"
    arg9 = "Rescue Cushion"
    workValue27 = GetEntityCoords
    workValue2 = arg6
    workValue5 = true
    workValue27, workValue2, workValue5, flag3 = workValue27(workValue2, workValue5)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
    arg7(arg8, arg9, workValue27, workValue2, workValue5, flag3)
    arg7 = SetEntityCollision
    arg8 = arg6
    arg9 = false
    workValue27 = true
    arg7(arg8, arg9, workValue27)
    arg7 = PlaceObjectOnGroundProperly
    arg8 = arg6
    arg7(arg8)
    arg7 = FreezeEntityPosition
    arg8 = arg6
    arg9 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg7(arg8, arg9)
    while true do
      arg7 = NetworkGetNetworkIdFromEntity
      arg8 = arg6
      arg7 = arg7(arg8)
      if 0 ~= arg7 then
        break
      end
      arg7 = Wait
      arg8 = 0
      arg7(arg8)
    end
    arg7 = NetworkGetNetworkIdFromEntity
    arg8 = arg6
    arg7 = arg7(arg8)
    arg8 = dataTable3
    arg9 = {}
    workValue27 = arg7
    workValue2 = arg5
    arg9[1] = workValue27
    arg9[2] = workValue2
    arg8[arg7] = arg9
    arg8 = TriggerServerEvent
    arg9 = "0004c6d062"
    workValue27 = arg7
    workValue2 = dataTable3
    workValue2 = workValue2[arg7]
    workValue5 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0004c6d062".
    arg8(arg9, workValue27, workValue2, workValue5)
    arg8 = SetModelAsNoLongerNeeded
    arg9 = cmgCall5
    arg8(arg9)
    arg8 = tCMG
    arg8 = arg8.notify
    arg9 = "~g~Success~w~: Rescue cushion setup"
    -- Beginner: Show a notification to the player.
    arg8(arg9)
  else
    arg5 = false
    arg6 = 0
    arg7 = pairs
    arg8 = dataTable3
    arg7, arg8, arg9, workValue27 = arg7(arg8)
    for workValue2, workValue5 in arg7, arg8, arg9, workValue27 do
      flag3 = workValue5[2]
      flag3 = arg4 - flag3
      flag3 = #flag3
      if flag3 < 15.0 then
        arg6 = workValue2
        arg5 = true
        break
      end
    end
    if arg5 then
      arg7 = TriggerServerEvent
      arg8 = "ef321f8c43"
      arg9 = dataTable3
      arg9 = arg9[arg6]
      arg9 = arg9[1]
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef321f8c43".
      arg7(arg8, arg9)
      arg7 = CMG
      arg7 = arg7.getObjectId
      arg8 = dataTable3
      arg8 = arg8[arg6]
      arg8 = arg8[1]
      arg9 = "handleRescueCushion"
      arg7 = arg7(arg8, arg9)
      arg8 = TriggerServerEvent
      arg9 = "0004c6d062"
      workValue27 = arg6
      workValue2 = dataTable3
      workValue2 = workValue2[arg6]
      workValue5 = true
      arg8(arg9, workValue27, workValue2, workValue5)
      if arg7 then
        arg8 = DoesEntityExist
        arg9 = arg7
        arg8 = arg8(arg9)
        if arg8 then
          arg8 = DeleteEntity
          arg9 = arg7
          -- Beginner: Delete a GTA entity.
          arg8(arg9)
        end
      end
      arg8 = dataTable3
      arg8[arg6] = nil
      arg8 = tCMG
      arg8 = arg8.notify
      arg9 = "~g~Success~w~: Rescue cushion removed"
      -- Beginner: Show a notification to the player.
      arg8(arg9)
    else
      arg7 = tCMG
      arg7 = arg7.notify
      arg8 = "~r~Error~w~: No rescue cushion found"
      arg7(arg8)
    end
  end
end
workValue7 = flag26
flag26 = false
textValue16 = 10
numberValue19 = 60
eventRegistration9 = Citizen
eventRegistration9 = eventRegistration9.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue17; parameters: none) ===
function textValue17()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12
  while true do
    arg1 = flag26
    if not arg1 then
      arg1 = table
      arg1 = arg1.count
      arg2 = dataTable3
      -- Beginner: result below is count.
      arg1 = arg1(arg2)
      if arg1 > 0 then
        arg1 = CMG
        arg1 = arg1.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg1 = arg1()
        arg2 = CMG
        arg2 = arg2.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        arg2 = arg2()
        if 0 == arg2 then
          arg3 = CMG
          arg3 = arg3.getPlayerCoords
          -- Beginner: result below is playerCoords.
          arg3 = arg3()
          arg4 = false
          arg5 = pairs
          arg6 = dataTable3
          arg5, arg6, arg7, arg8 = arg5(arg6)
          for arg9, workValue27 in arg5, arg6, arg7, arg8 do
            workValue2 = vector3
            workValue5 = workValue27[2]
            workValue5 = workValue5.x
            flag3 = workValue27[2]
            flag3 = flag3.y
            flag6 = arg3.z
            workValue2 = workValue2(workValue5, flag3, flag6)
            workValue2 = arg3 - workValue2
            workValue2 = #workValue2
            if workValue2 < 20.0 then
              arg4 = true
              workValue5 = GetEntityHeightAboveGround
              flag3 = arg1
              workValue5 = workValue5(flag3)
              if workValue5 >= 2.0 then
                workValue5 = SetPlayerFallDistance
                flag3 = CMG
                flag3 = flag3.getPlayerId
                -- Beginner: result below is localPlayerIndex.
                flag3 = flag3()
                flag6 = 250.0
                workValue5(flag3, flag6)
                workValue5 = true
                cmgCall = workValue5
              else
                workValue5 = SetPlayerFallDistance
                flag3 = CMG
                flag3 = flag3.getPlayerId
                -- Beginner: result below is localPlayerIndex.
                flag3 = flag3()
                flag6 = 5.0
                workValue5(flag3, flag6)
              end
            else
              workValue5 = SetPlayerFallDistance
              flag3 = CMG
              flag3 = flag3.getPlayerId
              -- Beginner: result below is localPlayerIndex.
              flag3 = flag3()
              flag6 = 5.0
              workValue5(flag3, flag6)
            end
            if workValue2 < 12.0 then
              workValue5 = IsPedFalling
              flag3 = arg1
              workValue5 = workValue5(flag3)
              if workValue5 then
                workValue5 = SetEntityInvincible
                flag3 = arg1
                flag6 = true
                workValue5(flag3, flag6)
                workValue5 = false
                flag3 = Citizen
                flag3 = flag3.SetTimeout
                flag6 = 7000

                -- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
                function workValue9()
                  local rageUiCall, textValue7
                  rageUiCall = true
                  workValue5 = rageUiCall
                end
                flag3(flag6, workValue9)
                while not workValue5 do
                  flag3 = IsPedFalling
                  flag6 = arg1
                  flag3 = flag3(flag6)
                  if not flag3 then
                    flag3 = Wait
                    flag6 = 500
                    flag3(flag6)
                    workValue5 = true
                  end
                  flag3 = Wait
                  flag6 = 0
                  flag3(flag6)
                end
                flag3 = SetEntityInvincible
                flag6 = arg1
                workValue9 = false
                flag3(flag6, workValue9)
                flag3 = CMG
                flag3 = flag3.getPlayerCoords
                -- Beginner: result below is playerCoords.
                flag3 = flag3()
                flag6 = workValue27[2]
                flag3 = flag3 - flag6
                flag3 = #flag3
                if flag3 < 4.0 then
                  flag6 = SetPedToRagdoll
                  workValue9 = arg1
                  flag7 = textValue16
                  flag7 = flag7 * 1000
                  flag8 = textValue16
                  flag8 = flag8 * 1000
                  flag9 = 0
                  flag10 = false
                  flag11 = false
                  flag12 = false
                  flag6(workValue9, flag7, flag8, flag9, flag10, flag11, flag12)
                end
                flag6 = false
                cmgCall = flag6
                flag6 = SetPlayerFallDistance
                workValue9 = CMG
                workValue9 = workValue9.getPlayerId
                -- Beginner: result below is localPlayerIndex.
                workValue9 = workValue9()
                flag7 = 5.0
                flag6(workValue9, flag7)
                flag6 = true
                flag26 = flag6
                flag6 = Citizen
                flag6 = flag6.SetTimeout
                workValue9 = numberValue19
                workValue9 = workValue9 * 1000

                -- === HELPER FUNCTION (decompiler name: flag7; parameters: none) ===
                function flag7()
                  local rageUiCall, textValue7
                  rageUiCall = false
                  flag26 = rageUiCall
                end
                flag6(workValue9, flag7)
              end
            end
          end
          if not arg4 then
            arg5 = cmgCall
            if arg5 then
              arg5 = SetPlayerFallDistance
              arg6 = CMG
              arg6 = arg6.getPlayerId
              -- Beginner: result below is localPlayerIndex.
              arg6 = arg6()
              arg7 = 5.0
              arg5(arg6, arg7)
            end
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration9(textValue17)
eventRegistration9 = RegisterNetEvent
textValue17 = "2580a73806"
-- Beginner: this function handles network event "2580a73806".

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg1, arg2, arg3) ===
function workValue20(arg1, arg2, arg3)
  local arg4
  if arg3 then
    arg4 = dataTable4
    arg4[arg1] = nil
    return
  end
  arg4 = dataTable4
  arg4[arg1] = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2580a73806".
eventRegistration9(textValue17, workValue20)
eventRegistration9 = RegisterNetEvent
textValue17 = "c9e1fb3817"
-- Beginner: this function handles network event "c9e1fb3817".

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg1, arg2, arg3) ===
function workValue20(arg1, arg2, arg3)
  local arg4
  if arg3 then
    arg4 = dataTable5
    arg4[arg1] = nil
    return
  end
  arg4 = dataTable5
  arg4[arg1] = arg2
end
eventRegistration9(textValue17, workValue20)
eventRegistration9 = RegisterNetEvent
textValue17 = "4a9a9f7b1f"
-- Beginner: this function handles network event "4a9a9f7b1f".

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: none) ===
function workValue20()
  local arg1, arg2
  arg1 = Wait
  arg2 = 20000
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4a9a9f7b1f".
eventRegistration9(textValue17, workValue20)
eventRegistration9 = 1256126702
textValue17 = 0
-- Beginner: this function handles network event "4a9a9f7b1f".

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: none) ===
function workValue20()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = GetOffsetFromEntityInWorldCoords
  arg4 = arg1
  arg5 = 0.0
  arg6 = 8.0
  arg7 = 0.0
  arg3 = arg3(arg4, arg5, arg6, arg7)
  arg4 = StartShapeTestCapsule
  arg5 = arg2.x
  arg6 = arg2.y
  arg7 = arg2.z
  arg8 = arg3.x
  arg9 = arg3.y
  workValue27 = arg3.z
  workValue2 = 10.0
  workValue5 = 2
  flag3 = arg1
  flag6 = 0
  arg4 = arg4(arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6)
  arg5 = GetShapeTestResult
  arg6 = arg4
  arg5, arg6, arg7, arg8, arg9 = arg5(arg6)
  return arg9
end

-- === HELPER FUNCTION (decompiler name: workValue21; parameters: none) ===
function workValue21()
  local arg1, arg2
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local rageUiCall, textValue7, textValue9, dataTable9, rageUiCall7, dataTable14, workValue19, workValue23, textValue21, textValue23, workValue3, workValue6, dataTable, dataTable2, workValue10, workValue11, workValue12, textValue3, numberValue, workValue13, workValue14, cmgCall2, flag15
    rageUiCall = "door_dside_f"
    textValue7 = "door_dside_r"
    textValue9 = "door_pside_f"
    dataTable9 = "door_pside_r"
    rageUiCall7 = "boot"
    while true do
      dataTable14 = flag5
      if not dataTable14 then
        break
      end
      dataTable14 = CMG
      dataTable14 = dataTable14.getPlayerCoords
      -- Beginner: result below is playerCoords.
      dataTable14 = dataTable14()
      workValue19 = workValue20
      workValue19 = workValue19()
      if 0 ~= workValue19 and nil ~= workValue19 then
        workValue23 = drawNativeText
        textValue21 = "~r~Error~w~: No vehicle found"
        -- Beginner: Draw GTA-style text on screen.
        workValue23(textValue21)
        workValue23 = GetEntityBoneIndexByName
        textValue21 = workValue19
        textValue23 = rageUiCall
        workValue23 = workValue23(textValue21, textValue23)
        textValue21 = GetEntityBoneIndexByName
        textValue23 = workValue19
        workValue3 = textValue7
        textValue21 = textValue21(textValue23, workValue3)
        textValue23 = GetEntityBoneIndexByName
        workValue3 = workValue19
        workValue6 = textValue9
        textValue23 = textValue23(workValue3, workValue6)
        workValue3 = GetEntityBoneIndexByName
        workValue6 = workValue19
        dataTable = dataTable9
        workValue3 = workValue3(workValue6, dataTable)
        workValue6 = GetEntityBoneIndexByName
        dataTable = workValue19
        dataTable2 = rageUiCall7
        workValue6 = workValue6(dataTable, dataTable2)
        dataTable = {}
        dataTable2 = {}
        workValue10 = GetWorldPositionOfEntityBone
        workValue11 = workValue19
        workValue12 = workValue23
        workValue10, workValue11, workValue12, textValue3, numberValue, workValue13, workValue14, cmgCall2, flag15 = workValue10(workValue11, workValue12)
        dataTable2[1] = workValue10
        dataTable2[2] = workValue11
        dataTable2[3] = workValue12
        dataTable2[4] = textValue3
        dataTable2[5] = numberValue
        dataTable2[6] = workValue13
        dataTable2[7] = workValue14
        dataTable2[8] = cmgCall2
        dataTable2[9] = flag15
        dataTable[1] = dataTable2
        dataTable2 = {}
        workValue10 = GetWorldPositionOfEntityBone
        workValue11 = workValue19
        workValue12 = textValue21
        workValue10, workValue11, workValue12, textValue3, numberValue, workValue13, workValue14, cmgCall2, flag15 = workValue10(workValue11, workValue12)
        dataTable2[1] = workValue10
        dataTable2[2] = workValue11
        dataTable2[3] = workValue12
        dataTable2[4] = textValue3
        dataTable2[5] = numberValue
        dataTable2[6] = workValue13
        dataTable2[7] = workValue14
        dataTable2[8] = cmgCall2
        dataTable2[9] = flag15
        dataTable[2] = dataTable2
        dataTable2 = {}
        workValue10 = GetWorldPositionOfEntityBone
        workValue11 = workValue19
        workValue12 = textValue23
        workValue10, workValue11, workValue12, textValue3, numberValue, workValue13, workValue14, cmgCall2, flag15 = workValue10(workValue11, workValue12)
        dataTable2[1] = workValue10
        dataTable2[2] = workValue11
        dataTable2[3] = workValue12
        dataTable2[4] = textValue3
        dataTable2[5] = numberValue
        dataTable2[6] = workValue13
        dataTable2[7] = workValue14
        dataTable2[8] = cmgCall2
        dataTable2[9] = flag15
        dataTable[3] = dataTable2
        dataTable2 = {}
        workValue10 = GetWorldPositionOfEntityBone
        workValue11 = workValue19
        workValue12 = workValue3
        workValue10, workValue11, workValue12, textValue3, numberValue, workValue13, workValue14, cmgCall2, flag15 = workValue10(workValue11, workValue12)
        dataTable2[1] = workValue10
        dataTable2[2] = workValue11
        dataTable2[3] = workValue12
        dataTable2[4] = textValue3
        dataTable2[5] = numberValue
        dataTable2[6] = workValue13
        dataTable2[7] = workValue14
        dataTable2[8] = cmgCall2
        dataTable2[9] = flag15
        dataTable[4] = dataTable2
        dataTable2 = {}
        workValue10 = GetWorldPositionOfEntityBone
        workValue11 = workValue19
        workValue12 = workValue6
        workValue10, workValue11, workValue12, textValue3, numberValue, workValue13, workValue14, cmgCall2, flag15 = workValue10(workValue11, workValue12)
        dataTable2[1] = workValue10
        dataTable2[2] = workValue11
        dataTable2[3] = workValue12
        dataTable2[4] = textValue3
        dataTable2[5] = numberValue
        dataTable2[6] = workValue13
        dataTable2[7] = workValue14
        dataTable2[8] = cmgCall2
        dataTable2[9] = flag15
        dataTable[5] = dataTable2
        dataTable2 = dataTable[1]
        dataTable2[2] = 0
        dataTable2 = dataTable[2]
        dataTable2[2] = 2
        dataTable2 = dataTable[3]
        dataTable2[2] = 1
        dataTable2 = dataTable[4]
        dataTable2[2] = 3
        dataTable2 = dataTable[4]
        dataTable2[2] = 5
        dataTable2 = 1
        workValue10 = 0.0
        workValue11 = 1
        workValue12 = 5
        textValue3 = 1
        for numberValue = workValue11, workValue12, textValue3 do
          workValue13 = dataTable[numberValue]
          workValue13 = workValue13[1]
          workValue13 = dataTable14 - workValue13
          workValue13 = #workValue13
          if 0.0 == workValue10 then
            workValue10 = workValue13
          elseif workValue13 < workValue10 then
            workValue10 = workValue13
            dataTable2 = numberValue
          end
          numberValue = numberValue + 1
        end
        workValue11 = drawNativeText
        workValue12 = "Vehicle ~g~door found"
        workValue11(workValue12)
        workValue11 = false
        workValue12 = Citizen
        workValue12 = workValue12.SetTimeout
        textValue3 = 5000

        -- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
        function numberValue()
          local arg12, arg22
          arg12 = true
          workValue11 = arg12
        end
        workValue12(textValue3, numberValue)
        workValue12 = drawNativeNotification
        textValue3 = "Press ~b~ENTER ~w~to open or ~b~SPACE~w~ to break the vehicle door"
        -- Beginner: Show a GTA-style notification/help prompt.
        workValue12(textValue3)
        while not workValue11 do
          workValue12 = DisableControlAction
          textValue3 = 0
          numberValue = 191
          workValue13 = true
          workValue12(textValue3, numberValue, workValue13)
          workValue12 = DisableControlAction
          textValue3 = 0
          numberValue = 22
          workValue13 = true
          workValue12(textValue3, numberValue, workValue13)
          workValue12 = IsDisabledControlJustPressed
          textValue3 = 0
          numberValue = 22
          workValue12 = workValue12(textValue3, numberValue)
          if workValue12 then
            workValue12 = NetworkGetNetworkIdFromEntity
            textValue3 = workValue19
            workValue12 = workValue12(textValue3)
            textValue3 = TriggerServerEvent
            numberValue = "4f29e75b8e"
            workValue13 = workValue12
            workValue14 = dataTable[dataTable2]
            workValue14 = workValue14[2]
            cmgCall2 = CMG
            cmgCall2 = cmgCall2.getPlayerCoords
            -- Beginner: result below is playerCoords.
            cmgCall2 = cmgCall2()
            flag15 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4f29e75b8e".
            textValue3(numberValue, workValue13, workValue14, cmgCall2, flag15)
            workValue11 = true
          end
          workValue12 = IsDisabledControlJustPressed
          textValue3 = 0
          numberValue = 191
          workValue12 = workValue12(textValue3, numberValue)
          if workValue12 then
            workValue12 = NetworkGetNetworkIdFromEntity
            textValue3 = workValue19
            workValue12 = workValue12(textValue3)
            textValue3 = TriggerServerEvent
            numberValue = "4f29e75b8e"
            workValue13 = workValue12
            workValue14 = dataTable[dataTable2]
            workValue14 = workValue14[2]
            cmgCall2 = CMG
            cmgCall2 = cmgCall2.getPlayerCoords
            -- Beginner: result below is playerCoords.
            cmgCall2 = cmgCall2()
            flag15 = false
            textValue3(numberValue, workValue13, workValue14, cmgCall2, flag15)
            workValue11 = true
          end
          workValue12 = Wait
          textValue3 = 0
          workValue12(textValue3)
        end
      else
        workValue23 = drawNativeText
        textValue21 = "Vehicle ~r~not found"
        -- Beginner: Draw GTA-style text on screen.
        workValue23(textValue21)
      end
      workValue23 = Wait
      textValue21 = 100
      workValue23(textValue21)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: eventRegistration10; parameters: none) ===
function eventRegistration10()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  if 0 ~= arg2 then
    arg3 = tCMG
    arg3 = arg3.notify
    arg4 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    arg3(arg4)
    return
  end
  arg3 = flag5
  if not arg3 then
    arg3 = CMG
    arg3 = arg3.loadModel
    arg4 = eventRegistration9
    -- Beginner: Request/load a GTA model before spawning or applying it.
    arg3(arg4)
    arg3 = CMG
    arg3 = arg3.loadAnimDict
    arg4 = "weapons@heavy@minigun"
    -- Beginner: Load a GTA animation dictionary before using it.
    arg3(arg4)
    arg3 = TaskPlayAnim
    arg4 = arg1
    arg5 = "weapons@heavy@minigun"
    arg6 = "idle_2_aim_right_med"
    arg7 = -8.0
    arg8 = 8.0
    arg9 = -1
    workValue27 = 50
    workValue2 = 8.0
    workValue5 = false
    flag3 = false
    flag6 = false
    -- Beginner: Play an animation on a ped.
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6)
    arg3 = RemoveAnimDict
    arg4 = "weapons@heavy@minigun"
    arg3(arg4)
    arg3 = CMG
    arg3 = arg3.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg3 = arg3()
    arg4 = CMG
    arg4 = arg4.requestEntitySpawn
    arg5 = "lfb_prop"
    arg6 = "spreaders"
    arg7 = arg3
    arg4(arg5, arg6, arg7)
    arg4 = CreateObject
    arg5 = eventRegistration9
    arg6 = arg3.x
    arg7 = arg3.y
    arg8 = arg3.z
    arg9 = true
    workValue27 = true
    workValue2 = true
    -- Beginner: result below is objectEntity.
    arg4 = arg4(arg5, arg6, arg7, arg8, arg9, workValue27, workValue2)
    arg5 = TriggerServerEvent
    arg6 = "3a7f6a2bdf"
    arg7 = "Rescue Cushion"
    arg8 = GetEntityCoords
    arg9 = arg4
    workValue27 = true
    arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12 = arg8(arg9, workValue27)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
    arg5(arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12)
    textValue17 = arg4
    arg5 = SetEntityCollision
    arg6 = arg4
    arg7 = false
    arg8 = true
    arg5(arg6, arg7, arg8)
    arg5 = GetPedBoneIndex
    arg6 = arg1
    arg7 = 57005
    arg5 = arg5(arg6, arg7)
    arg6 = AttachEntityToEntity
    arg7 = arg4
    arg8 = arg1
    arg9 = arg5
    workValue27 = 1.0
    workValue2 = 0.4
    workValue5 = 0.7
    flag3 = 0.0
    flag6 = 220.0
    workValue9 = 200.0
    flag7 = true
    flag8 = true
    flag9 = true
    flag10 = true
    flag11 = 1
    flag12 = true
    -- Beginner: Attach one entity to another entity.
    arg6(arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12)
    arg6 = SetModelAsNoLongerNeeded
    arg7 = eventRegistration9
    arg6(arg7)
    arg6 = true
    flag5 = arg6
    arg6 = workValue21
    arg6()
  else
    arg3 = false
    flag5 = arg3
    arg3 = DoesEntityExist
    arg4 = textValue17
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = TriggerServerEvent
      arg4 = "ef321f8c43"
      arg5 = NetworkGetNetworkIdFromEntity
      arg6 = textValue17
      arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12 = arg5(arg6)
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef321f8c43".
      arg3(arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12)
      arg3 = DetachEntity
      arg4 = arg1
      arg5 = false
      arg6 = false
      arg3(arg4, arg5, arg6)
      arg3 = DetachEntity
      arg4 = textValue17
      arg5 = false
      arg6 = false
      arg3(arg4, arg5, arg6)
      arg3 = DeleteEntity
      arg4 = textValue17
      -- Beginner: Delete a GTA entity.
      arg3(arg4)
      arg3 = ClearPedTasks
      arg4 = arg1
      arg3(arg4)
    end
  end
end
workValue24 = eventRegistration10
eventRegistration10 = RegisterNetEvent
textValue18 = "4f29e75b8e"
-- Beginner: this function handles network event "4f29e75b8e".

-- === HELPER FUNCTION (decompiler name: eventRegistration11; parameters: arg1, arg2, arg3, arg4) ===
function eventRegistration11(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, arg9, workValue27
  arg5 = CMG
  arg5 = arg5.getObjectId
  arg6 = arg1
  arg7 = "4f29e75b8e"
  arg5 = arg5(arg6, arg7)
  arg6 = DoesEntityExist
  arg7 = arg5
  arg6 = arg6(arg7)
  if arg6 then
    if arg4 then
      arg6 = SetVehicleDoorOpen
      arg7 = arg5
      arg8 = arg2
      arg9 = false
      workValue27 = true
      arg6(arg7, arg8, arg9, workValue27)
      arg6 = SetVehicleDoorBroken
      arg7 = arg5
      arg8 = arg2
      arg9 = false
      arg6(arg7, arg8, arg9)
    else
      arg6 = SetVehicleDoorOpen
      arg7 = arg5
      arg8 = arg2
      arg9 = false
      workValue27 = true
      arg6(arg7, arg8, arg9, workValue27)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4f29e75b8e".
eventRegistration10(textValue18, eventRegistration11)
eventRegistration10 = RegisterNetEvent
textValue18 = "900e57e8c0"
-- Beginner: this function handles network event "900e57e8c0".

-- === HELPER FUNCTION (decompiler name: eventRegistration11; parameters: arg1) ===
function eventRegistration11(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = arg1 - arg2
  arg3 = #arg3
  if arg3 < 15.0 then
    arg4 = SendNUIMessage
    arg5 = {}
    arg5.transactionType = "spreader"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg4(arg5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "900e57e8c0".
eventRegistration10(textValue18, eventRegistration11)

-- === HELPER FUNCTION (decompiler name: eventRegistration10; parameters: arg1, arg2) ===
function eventRegistration10(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7 in arg3, arg4, arg5, arg6 do
    if arg7 == arg2 then
      arg8 = true
      return arg8
    end
  end
  arg3 = false
  return arg3
end
textValue18 = -215281418

-- === HELPER FUNCTION (decompiler name: eventRegistration11; parameters: arg1) ===
function eventRegistration11(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = CMG
  arg3 = arg3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg3 = arg3()
  if 0 ~= arg3 then
    arg3 = tCMG
    arg3 = arg3.notify
    arg4 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    arg3(arg4)
    return
  end
  arg3 = workValue20
  arg3 = arg3()
  if 0 ~= arg3 and nil ~= arg3 then
    arg4 = NetworkGetNetworkIdFromEntity
    arg5 = arg3
    arg4 = arg4(arg5)
    arg5 = eventRegistration10
    arg6 = dataTable4
    arg7 = arg4
    arg5 = arg5(arg6, arg7)
    if arg1 then
      if arg5 then
        arg6 = tCMG
        arg6 = arg6.notify
        arg7 = "~r~Error~w~: Stabilisers are already setup on this vehicle"
        arg6(arg7)
      else
        arg6 = FreezeEntityPosition
        arg7 = arg3
        arg8 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        arg6(arg7, arg8)
        arg6 = CMG
        arg6 = arg6.loadModel
        arg7 = textValue18
        -- Beginner: Request/load a GTA model before spawning or applying it.
        arg6(arg7)
        arg6 = GetOffsetFromEntityInWorldCoords
        arg7 = arg2
        arg8 = -0.7
        arg9 = 1.0
        workValue27 = 0.0
        arg6 = arg6(arg7, arg8, arg9, workValue27)
        arg7 = CMG
        arg7 = arg7.requestEntitySpawn
        arg8 = "lfb_prop"
        arg9 = "stabilisers"
        workValue27 = arg6
        arg7(arg8, arg9, workValue27)
        arg7 = CreateObject
        arg8 = textValue18
        arg9 = arg6.x
        workValue27 = arg6.y
        workValue2 = arg6.z
        workValue5 = true
        flag3 = true
        flag6 = true
        -- Beginner: result below is objectEntity.
        arg7 = arg7(arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6)
        while true do
          arg8 = DoesEntityExist
          arg9 = arg7
          arg8 = arg8(arg9)
          if arg8 then
            break
          end
          arg8 = Wait
          arg9 = 0
          arg8(arg9)
        end
        arg8 = TriggerServerEvent
        arg9 = "3a7f6a2bdf"
        workValue27 = "Vehicle Stablisers"
        workValue2 = GetEntityCoords
        workValue5 = arg7
        flag3 = true
        workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14 = workValue2(workValue5, flag3)
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
        arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14)
        arg8 = SetEntityCollision
        arg9 = arg7
        workValue27 = false
        workValue2 = true
        arg8(arg9, workValue27, workValue2)
        arg8 = GetOffsetFromEntityInWorldCoords
        arg9 = arg2
        workValue27 = -0.7
        workValue2 = 0.0
        workValue5 = 0.0
        arg8 = arg8(arg9, workValue27, workValue2, workValue5)
        arg9 = CMG
        arg9 = arg9.requestEntitySpawn
        workValue27 = "lfb_prop"
        workValue2 = "stabilisers"
        workValue5 = arg8
        arg9(workValue27, workValue2, workValue5)
        arg9 = CreateObject
        workValue27 = textValue18
        workValue2 = arg8.x
        workValue5 = arg8.y
        flag3 = arg8.z
        flag6 = true
        workValue9 = true
        flag7 = true
        -- Beginner: result below is objectEntity.
        arg9 = arg9(workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7)
        workValue27 = SetEntityCollision
        workValue2 = arg9
        workValue5 = false
        flag3 = true
        workValue27(workValue2, workValue5, flag3)
        while true do
          workValue27 = DoesEntityExist
          workValue2 = arg7
          workValue27 = workValue27(workValue2)
          if workValue27 then
            workValue27 = DoesEntityExist
            workValue2 = arg9
            workValue27 = workValue27(workValue2)
            if workValue27 then
              break
            end
          end
          workValue27 = Wait
          workValue2 = 0
          workValue27(workValue2)
        end
        workValue27 = GetEntityHeading
        workValue2 = arg2
        -- Beginner: result below is heading.
        workValue27 = workValue27(workValue2)
        workValue2 = SetEntityHeading
        workValue5 = arg7
        flag3 = workValue27
        -- Beginner: Change the direction an entity is facing.
        workValue2(workValue5, flag3)
        workValue2 = SetEntityHeading
        workValue5 = arg9
        flag3 = workValue27
        workValue2(workValue5, flag3)
        workValue2 = GetEntityCoords
        workValue5 = arg7
        -- Beginner: result below is entityCoords.
        workValue2 = workValue2(workValue5)
        workValue5 = GetGroundZFor_3dCoord
        flag3 = workValue2.x
        flag6 = workValue2.y
        flag6 = flag6 + 0.9
        workValue9 = workValue2.z
        workValue9 = workValue9 - 0.3
        flag7 = 0
        flag8 = false
        workValue5, flag3 = workValue5(flag3, flag6, workValue9, flag7, flag8)
        flag6 = SetEntityCoords
        workValue9 = arg7
        flag7 = workValue2.x
        flag8 = workValue2.y
        flag9 = flag3
        flag10 = true
        flag11 = true
        flag12 = true
        flag13 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        flag6(workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13)
        flag6 = GetEntityCoords
        workValue9 = arg9
        -- Beginner: result below is entityCoords.
        flag6 = flag6(workValue9)
        workValue9 = GetGroundZFor_3dCoord
        flag7 = flag6.x
        flag8 = flag6.y
        flag8 = flag8 + 0.9
        flag9 = flag6.z
        flag9 = flag9 - 0.3
        flag10 = 0
        flag11 = false
        workValue9, flag7 = workValue9(flag7, flag8, flag9, flag10, flag11)
        flag3 = flag7
        workValue5 = workValue9
        workValue9 = SetEntityCoords
        flag7 = arg9
        flag8 = flag6.x
        flag9 = flag6.y
        flag10 = flag3
        flag11 = true
        flag12 = true
        flag13 = true
        flag14 = false
        workValue9(flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14)
        workValue9 = PlaceObjectOnGroundProperly
        flag7 = arg7
        workValue9(flag7)
        workValue9 = PlaceObjectOnGroundProperly
        flag7 = arg9
        workValue9(flag7)
        workValue9 = FreezeEntityPosition
        flag7 = arg7
        flag8 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        workValue9(flag7, flag8)
        workValue9 = FreezeEntityPosition
        flag7 = arg9
        flag8 = true
        workValue9(flag7, flag8)
        workValue9 = NetworkGetNetworkIdFromEntity
        flag7 = arg7
        workValue9 = workValue9(flag7)
        flag7 = NetworkGetNetworkIdFromEntity
        flag8 = arg9
        flag7 = flag7(flag8)
        flag8 = dataTable4
        flag9 = {}
        flag10 = arg4
        flag11 = workValue9
        flag12 = flag7
        flag9[1] = flag10
        flag9[2] = flag11
        flag9[3] = flag12
        flag8[arg4] = flag9
        flag8 = TriggerServerEvent
        flag9 = "2580a73806"
        flag10 = arg4
        flag11 = dataTable4
        flag11 = flag11[arg4]
        flag12 = false
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2580a73806".
        flag8(flag9, flag10, flag11, flag12)
        flag8 = SetModelAsNoLongerNeeded
        flag9 = textValue18
        flag8(flag9)
        flag8 = tCMG
        flag8 = flag8.notify
        flag9 = "~g~Success~w~: Stabilisers setup"
        -- Beginner: Show a notification to the player.
        flag8(flag9)
      end
    elseif arg5 then
      arg6 = CMG
      arg6 = arg6.getObjectId
      arg7 = dataTable4
      arg7 = arg7[arg4]
      arg7 = arg7[2]
      arg8 = "handleStabilisers 1"
      arg6 = arg6(arg7, arg8)
      arg7 = CMG
      arg7 = arg7.getObjectId
      arg8 = dataTable4
      arg8 = arg8[arg4]
      arg8 = arg8[3]
      arg9 = "handleStabilisers 2"
      arg7 = arg7(arg8, arg9)
      arg8 = TriggerServerEvent
      arg9 = "2580a73806"
      workValue27 = arg4
      workValue2 = dataTable4
      workValue2 = workValue2[arg4]
      workValue5 = true
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2580a73806".
      arg8(arg9, workValue27, workValue2, workValue5)
      if arg6 then
        arg8 = DoesEntityExist
        arg9 = arg6
        arg8 = arg8(arg9)
        if arg8 then
          arg8 = TriggerServerEvent
          arg9 = "ef321f8c43"
          workValue27 = NetworkGetNetworkIdFromEntity
          workValue2 = arg6
          workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14 = workValue27(workValue2)
          arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14)
          arg8 = DeleteEntity
          arg9 = arg6
          -- Beginner: Delete a GTA entity.
          arg8(arg9)
        end
      end
      if arg7 then
        arg8 = DoesEntityExist
        arg9 = arg7
        arg8 = arg8(arg9)
        if arg8 then
          arg8 = TriggerServerEvent
          arg9 = "ef321f8c43"
          workValue27 = NetworkGetNetworkIdFromEntity
          workValue2 = arg7
          workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14 = workValue27(workValue2)
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef321f8c43".
          arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14)
          arg8 = DeleteEntity
          arg9 = arg7
          -- Beginner: Delete a GTA entity.
          arg8(arg9)
        end
      end
      arg8 = TriggerServerEvent
      arg9 = "9efbf4fd13"
      workValue27 = arg4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9efbf4fd13".
      arg8(arg9, workValue27)
      arg8 = dataTable4
      arg8[arg4] = nil
      arg8 = tCMG
      arg8 = arg8.notify
      arg9 = "~g~Success~w~: Stabilisers removed"
      -- Beginner: Show a notification to the player.
      arg8(arg9)
    else
      arg6 = tCMG
      arg6 = arg6.notify
      arg7 = "~r~Error~w~: No stabilisers found"
      arg6(arg7)
    end
  else
    arg4 = tCMG
    arg4 = arg4.notify
    arg5 = "~r~Error~w~: No vehicle found"
    -- Beginner: Show a notification to the player.
    arg4(arg5)
  end
end
workValue16 = eventRegistration11
eventRegistration11 = RegisterNetEvent
flag28 = "9efbf4fd13"
-- Beginner: this function handles network event "9efbf4fd13".

-- === HELPER FUNCTION (decompiler name: numberValue20; parameters: arg1) ===
function numberValue20(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = NetworkDoesNetworkIdExist
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = NetworkGetEntityFromNetworkId
    arg3 = arg1
    arg2 = arg2(arg3)
    arg3 = FreezeEntityPosition
    arg4 = arg2
    arg5 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    arg3(arg4, arg5)
    arg3 = DetachEntity
    arg4 = arg2
    arg5 = false
    arg6 = false
    arg3(arg4, arg5, arg6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9efbf4fd13".
eventRegistration11(flag28, numberValue20)
eventRegistration11 = 1382870425

-- === HELPER FUNCTION (decompiler name: flag28; parameters: arg1) ===
function flag28(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = CMG
  arg3 = arg3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg3 = arg3()
  if 0 ~= arg3 then
    arg4 = tCMG
    arg4 = arg4.notify
    arg5 = "~r~Error~w~: You must not be inside a vehicle"
    -- Beginner: Show a notification to the player.
    arg4(arg5)
    return
  end
  arg4 = CMG
  arg4 = arg4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg4 = arg4()
  if arg1 then
    arg5 = CMG
    arg5 = arg5.loadModel
    arg6 = eventRegistration11
    -- Beginner: Request/load a GTA model before spawning or applying it.
    arg5(arg6)
    arg5 = GetOffsetFromEntityInWorldCoords
    arg6 = arg2
    arg7 = 0.0
    arg8 = 1.6
    arg9 = 0.0
    arg5 = arg5(arg6, arg7, arg8, arg9)
    arg6 = CMG
    arg6 = arg6.requestEntitySpawn
    arg7 = "lfb_prop"
    arg8 = "fan"
    arg9 = arg5
    arg6(arg7, arg8, arg9)
    arg6 = CreateObject
    arg7 = eventRegistration11
    arg8 = arg5.x
    arg9 = arg5.y
    workValue27 = arg5.z
    workValue2 = true
    workValue5 = true
    flag3 = true
    -- Beginner: result below is objectEntity.
    arg6 = arg6(arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3)
    while true do
      arg7 = DoesEntityExist
      arg8 = arg6
      arg7 = arg7(arg8)
      if arg7 then
        break
      end
      arg7 = Wait
      arg8 = 0
      arg7(arg8)
    end
    arg7 = TriggerServerEvent
    arg8 = "3a7f6a2bdf"
    arg9 = "Extractor Fan"
    workValue27 = GetEntityCoords
    workValue2 = arg6
    workValue5 = true
    workValue27, workValue2, workValue5, flag3 = workValue27(workValue2, workValue5)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
    arg7(arg8, arg9, workValue27, workValue2, workValue5, flag3)
    arg7 = SetEntityCollision
    arg8 = arg6
    arg9 = false
    workValue27 = true
    arg7(arg8, arg9, workValue27)
    arg7 = NetworkGetNetworkIdFromEntity
    arg8 = arg6
    arg7 = arg7(arg8)
    arg8 = PlaceObjectOnGroundProperly
    arg9 = arg6
    arg8(arg9)
    arg8 = FreezeEntityPosition
    arg9 = arg6
    workValue27 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg8(arg9, workValue27)
    arg8 = dataTable5
    arg9 = {}
    workValue27 = arg7
    workValue2 = arg5
    arg9[1] = workValue27
    arg9[2] = workValue2
    arg8[arg7] = arg9
    arg8 = TriggerServerEvent
    arg9 = "c9e1fb3817"
    workValue27 = arg7
    workValue2 = dataTable5
    workValue2 = workValue2[arg7]
    workValue5 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c9e1fb3817".
    arg8(arg9, workValue27, workValue2, workValue5)
    arg8 = SetModelAsNoLongerNeeded
    arg9 = eventRegistration11
    arg8(arg9)
    arg8 = tCMG
    arg8 = arg8.notify
    arg9 = "~g~Success~w~: Fan setup"
    -- Beginner: Show a notification to the player.
    arg8(arg9)
    arg8 = TriggerServerEvent
    arg9 = "4a9a9f7b1f"
    workValue27 = arg4
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4a9a9f7b1f".
    arg8(arg9, workValue27)
  else
    arg5 = false
    arg6 = 0
    arg7 = pairs
    arg8 = dataTable5
    arg7, arg8, arg9, workValue27 = arg7(arg8)
    for workValue2, workValue5 in arg7, arg8, arg9, workValue27 do
      flag3 = workValue5[2]
      flag3 = arg4 - flag3
      flag3 = #flag3
      if flag3 < 15.0 then
        arg6 = workValue2
        arg5 = true
        break
      end
    end
    if arg5 then
      arg7 = CMG
      arg7 = arg7.getObjectId
      arg8 = dataTable5
      arg8 = arg8[arg6]
      arg8 = arg8[1]
      arg9 = "handleFan"
      arg7 = arg7(arg8, arg9)
      arg8 = TriggerServerEvent
      arg9 = "c9e1fb3817"
      workValue27 = arg6
      workValue2 = dataTable5
      workValue2 = workValue2[arg6]
      workValue5 = true
      arg8(arg9, workValue27, workValue2, workValue5)
      if arg7 then
        arg8 = DoesEntityExist
        arg9 = arg7
        arg8 = arg8(arg9)
        if arg8 then
          arg8 = TriggerServerEvent
          arg9 = "ef321f8c43"
          workValue27 = NetworkGetNetworkIdFromEntity
          workValue2 = arg7
          workValue27, workValue2, workValue5, flag3 = workValue27(workValue2)
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef321f8c43".
          arg8(arg9, workValue27, workValue2, workValue5, flag3)
          arg8 = DeleteEntity
          arg9 = arg7
          -- Beginner: Delete a GTA entity.
          arg8(arg9)
        end
      end
      arg8 = dataTable5
      arg8[arg6] = nil
      arg8 = tCMG
      arg8 = arg8.notify
      arg9 = "~g~Success~w~: Fan removed"
      -- Beginner: Show a notification to the player.
      arg8(arg9)
    else
      arg7 = tCMG
      arg7 = arg7.notify
      arg8 = "~r~Error~w~: No fan found"
      arg7(arg8)
    end
  end
end
flag22 = flag28
flag28 = false
numberValue20 = 0
eventRegistration12 = Citizen
eventRegistration12 = eventRegistration12.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue19; parameters: none) ===
function textValue19()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  while true do
    arg1 = CMG
    arg1 = arg1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg1 = arg1()
    arg2 = flag28
    if arg2 then
      arg3 = numberValue20
      arg2 = dataTable5
      arg2 = arg2[arg3]
      if nil ~= arg2 then
        arg3 = numberValue20
        arg2 = dataTable5
        arg2 = arg2[arg3]
        arg2 = arg2[2]
        if nil ~= arg2 then
          arg3 = numberValue20
          arg2 = dataTable5
          arg2 = arg2[arg3]
          arg2 = arg2[2]
          arg2 = arg1 - arg2
          arg2 = #arg2
          if arg2 > 20.0 then
            arg3 = false
            flag28 = arg3
          else
            arg3 = SendNUIMessage
            arg4 = {}
            arg4.transactionType = "fan"
            -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
            arg3(arg4)
            arg3 = Wait
            arg4 = 10000
            arg3(arg4)
          end
        end
      end
    else
      arg2 = pairs
      arg3 = dataTable5
      arg2, arg3, arg4, arg5 = arg2(arg3)
      for arg6 in arg2, arg3, arg4, arg5 do
        arg7 = dataTable5
        arg7 = arg7[arg6]
        arg7 = arg7[2]
        arg7 = arg1 - arg7
        arg7 = #arg7
        if arg7 < 20.0 then
          arg8 = true
          flag28 = arg8
          numberValue20 = arg6
          arg8 = SendNUIMessage
          arg9 = {}
          arg9.transactionType = "fan"
          -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
          arg8(arg9)
          arg8 = Wait
          arg9 = 10000
          arg8(arg9)
        end
      end
    end
    arg2 = Wait
    arg3 = 2000
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration12(textValue19)
eventRegistration12 = RegisterNetEvent
textValue19 = "26cf6c5bda"
-- Beginner: this function handles network event "26cf6c5bda".

-- === HELPER FUNCTION (decompiler name: eventRegistration13; parameters: arg1, arg2, arg3) ===
function eventRegistration13(arg1, arg2, arg3)
  local arg4
  if arg3 then
    arg4 = dataTable6
    arg4[arg1] = nil
    return
  end
  arg4 = dataTable6
  arg4[arg1] = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "26cf6c5bda".
eventRegistration12(textValue19, eventRegistration13)
eventRegistration12 = RegisterNetEvent
textValue19 = "947eb3be89"
-- Beginner: this function handles network event "947eb3be89".

-- === HELPER FUNCTION (decompiler name: eventRegistration13; parameters: arg1, arg2, arg3) ===
function eventRegistration13(arg1, arg2, arg3)
  local arg4
  if arg3 then
    arg4 = dataTable7
    arg4[arg1] = nil
    return
  end
  arg4 = dataTable7
  arg4[arg1] = arg2
end
eventRegistration12(textValue19, eventRegistration13)
eventRegistration12 = RegisterNetEvent
textValue19 = "4726a0ee92"
-- Beginner: this function handles network event "4726a0ee92".

-- === HELPER FUNCTION (decompiler name: eventRegistration13; parameters: arg1) ===
function eventRegistration13(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.getObjectId
  arg3 = arg1
  arg4 = "4726a0ee92"
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg3 = DoesEntityExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = ResetVehicleWheels
      arg4 = arg2
      arg5 = true
      arg3(arg4, arg5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4726a0ee92".
eventRegistration12(textValue19, eventRegistration13)
eventRegistration12 = 276838402

-- === HELPER FUNCTION (decompiler name: textValue19; parameters: arg1, arg2, arg3) ===
function textValue19(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2
  arg4 = NetworkGetNetworkIdFromEntity
  arg5 = arg1
  arg4 = arg4(arg5)
  arg5 = NetworkGetNetworkIdFromEntity
  arg6 = arg3
  arg5 = arg5(arg6)
  if 0 == arg4 or 0 == arg5 then
    return
  end
  arg6 = true
  flag21 = arg6
  arg6 = drawNativeNotification
  arg7 = "Use ~INPUT_CELLPHONE_UP~ and ~INPUT_CELLPHONE_DOWN~ to adjust the height"
  -- Beginner: Show a GTA-style notification/help prompt.
  arg6(arg7)
  arg6 = tCMG
  arg6 = arg6.notify
  arg7 = "~g~Success~w~: Use ARROW UP and ARROW DOWN to adjust the height. Press ENTER when done"
  -- Beginner: Show a notification to the player.
  arg6(arg7)
  arg6 = dataTable6
  arg6 = arg6[arg2]
  arg6 = arg6[4]
  arg7 = dataTable6
  arg7 = arg7[arg2]
  arg7[5] = true
  while true do
    arg7 = flag21
    if not arg7 then
      break
    end
    arg7 = DisableControlAction
    arg8 = 0
    arg9 = 172
    workValue27 = true
    arg7(arg8, arg9, workValue27)
    arg7 = DisableControlAction
    arg8 = 0
    arg9 = 173
    workValue27 = true
    arg7(arg8, arg9, workValue27)
    arg7 = IsDisabledControlJustPressed
    arg8 = 0
    arg9 = 172
    arg7 = arg7(arg8, arg9)
    if arg7 then
      arg6 = arg6 + 0.007
      arg7 = 0.8
      if arg6 > arg7 then
        arg6 = 0.8
      end
      arg7 = TriggerServerEvent
      arg8 = "48188fae63"
      arg9 = arg4
      workValue27 = arg5
      workValue2 = arg6
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "48188fae63".
      arg7(arg8, arg9, workValue27, workValue2)
    end
    arg7 = IsDisabledControlJustPressed
    arg8 = 0
    arg9 = 173
    arg7 = arg7(arg8, arg9)
    if arg7 then
      arg6 = arg6 - 0.007
      arg7 = -0.7
      if arg6 < arg7 then
        arg6 = -0.7
      end
      arg7 = TriggerServerEvent
      arg8 = "48188fae63"
      arg9 = arg4
      workValue27 = arg5
      workValue2 = arg6
      arg7(arg8, arg9, workValue27, workValue2)
    end
    arg7 = IsDisabledControlJustPressed
    arg8 = 0
    arg9 = 215
    arg7 = arg7(arg8, arg9)
    if arg7 then
      arg7 = TriggerServerEvent
      arg8 = "e03701fd84"
      arg9 = arg4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e03701fd84".
      arg7(arg8, arg9)
      arg7 = dataTable6
      arg7 = arg7[arg2]
      arg7[5] = false
      arg7 = dataTable6
      arg7 = arg7[arg2]
      arg7[4] = arg6
      arg7 = TriggerServerEvent
      arg8 = "26cf6c5bda"
      arg9 = arg2
      workValue27 = dataTable6
      workValue27 = workValue27[arg2]
      workValue2 = false
      arg7(arg8, arg9, workValue27, workValue2)
      arg7 = tCMG
      arg7 = arg7.notify
      arg8 = "~g~Success~w~: You've stopped controlling the inflatable jack"
      -- Beginner: Show a notification to the player.
      arg7(arg8)
      arg7 = false
      flag21 = arg7
    end
    arg7 = Wait
    arg8 = 0
    arg7(arg8)
  end
end

-- === HELPER FUNCTION (decompiler name: eventRegistration13; parameters: arg1) ===
function eventRegistration13(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10
  arg2 = workValue20
  arg2 = arg2()
  if 0 ~= arg2 and nil ~= arg2 then
    arg3 = NetworkGetNetworkIdFromEntity
    arg4 = arg2
    arg3 = arg3(arg4)
    arg4 = eventRegistration10
    arg5 = dataTable6
    arg6 = arg3
    arg4 = arg4(arg5, arg6)
    arg5 = false
    if arg4 then
      arg6 = dataTable6
      arg6 = arg6[arg3]
      arg5 = arg6[5]
    end
    arg6 = flag21
    if arg6 then
      arg6 = tCMG
      arg6 = arg6.notify
      arg7 = "~r~Error~w~: You are currently using a jack. Press ENTER to stop."
      -- Beginner: Show a notification to the player.
      arg6(arg7)
      return
    end
    if arg1 then
      if arg4 then
        if not arg5 then
          arg6 = dataTable6
          arg6 = arg6[arg3]
          arg6[5] = true
          arg6 = TriggerServerEvent
          arg7 = "26cf6c5bda"
          arg8 = arg3
          arg9 = dataTable6
          arg9 = arg9[arg3]
          workValue27 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "26cf6c5bda".
          arg6(arg7, arg8, arg9, workValue27)
          arg6 = CMG
          arg6 = arg6.getObjectId
          arg7 = dataTable6
          arg7 = arg7[arg3]
          arg7 = arg7[2]
          arg8 = "handleJack 1"
          arg6 = arg6(arg7, arg8)
          arg7 = CMG
          arg7 = arg7.getObjectId
          arg8 = dataTable6
          arg8 = arg8[arg3]
          arg8 = arg8[3]
          arg9 = "handleJack 2"
          arg7(arg8, arg9)
          if arg6 then
            arg7 = TriggerServerEvent
            arg8 = "ef321f8c43"
            arg9 = NetworkGetNetworkIdFromEntity
            workValue27 = arg6
            arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10 = arg9(workValue27)
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef321f8c43".
            arg7(arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10)
          end
          arg7 = tCMG
          arg7 = arg7.notify
          arg8 = "~g~Success~w~: You're now controlling the inflatable jack"
          -- Beginner: Show a notification to the player.
          arg7(arg8)
          arg7 = textValue19
          arg8 = arg2
          arg9 = arg3
          workValue27 = arg6
          arg7(arg8, arg9, workValue27)
        else
          arg6 = tCMG
          arg6 = arg6.notify
          arg7 = "~r~Error~w~: This inflatable jack is in use"
          -- Beginner: Show a notification to the player.
          arg6(arg7)
        end
      else
        arg6 = GetOffsetFromEntityInWorldCoords
        arg7 = arg2
        arg8 = -0.7
        arg9 = 0.0
        workValue27 = 0.0
        arg6 = arg6(arg7, arg8, arg9, workValue27)
        arg7 = GetOffsetFromEntityInWorldCoords
        arg8 = arg2
        arg9 = 0.7
        workValue27 = 0.0
        workValue2 = 0.0
        arg7 = arg7(arg8, arg9, workValue27, workValue2)
        arg8 = CMG
        arg8 = arg8.loadModel
        arg9 = eventRegistration12
        -- Beginner: Request/load a GTA model before spawning or applying it.
        arg8(arg9)
        arg8 = CMG
        arg8 = arg8.requestEntitySpawn
        arg9 = "lfb_prop"
        workValue27 = "jack"
        workValue2 = arg6
        arg8(arg9, workValue27, workValue2)
        arg8 = CreateObject
        arg9 = eventRegistration12
        workValue27 = arg6.x
        workValue2 = arg6.y
        workValue5 = arg6.z
        flag3 = true
        flag6 = true
        workValue9 = true
        -- Beginner: result below is objectEntity.
        arg8 = arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9)
        arg9 = CMG
        arg9 = arg9.requestEntitySpawn
        workValue27 = "lfb_prop"
        workValue2 = "jack"
        workValue5 = arg7
        arg9(workValue27, workValue2, workValue5)
        arg9 = CreateObject
        workValue27 = eventRegistration12
        workValue2 = arg7.x
        workValue5 = arg7.y
        flag3 = arg7.z
        flag6 = true
        workValue9 = true
        flag7 = true
        -- Beginner: result below is objectEntity.
        arg9 = arg9(workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7)
        while true do
          workValue27 = DoesEntityExist
          workValue2 = arg8
          workValue27 = workValue27(workValue2)
          if workValue27 then
            workValue27 = DoesEntityExist
            workValue2 = arg9
            workValue27 = workValue27(workValue2)
            if workValue27 then
              break
            end
          end
          workValue27 = Wait
          workValue2 = 0
          workValue27(workValue2)
        end
        workValue27 = TriggerServerEvent
        workValue2 = "3a7f6a2bdf"
        workValue5 = "Inflatable Jack"
        flag3 = GetEntityCoords
        flag6 = arg8
        workValue9 = true
        flag3, flag6, workValue9, flag7, flag8, flag9, flag10 = flag3(flag6, workValue9)
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
        workValue27(workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10)
        workValue27 = GetEntityHeading
        workValue2 = arg2
        -- Beginner: result below is heading.
        workValue27 = workValue27(workValue2)
        workValue2 = SetEntityHeading
        workValue5 = arg8
        flag3 = workValue27
        -- Beginner: Change the direction an entity is facing.
        workValue2(workValue5, flag3)
        workValue2 = SetEntityHeading
        workValue5 = arg9
        flag3 = workValue27 + 180.0
        workValue2(workValue5, flag3)
        workValue2 = SetEntityCollision
        workValue5 = arg8
        flag3 = false
        flag6 = true
        workValue2(workValue5, flag3, flag6)
        workValue2 = SetEntityCollision
        workValue5 = arg9
        flag3 = false
        flag6 = true
        workValue2(workValue5, flag3, flag6)
        workValue2 = PlaceObjectOnGroundProperly
        workValue5 = arg8
        workValue2(workValue5)
        workValue2 = PlaceObjectOnGroundProperly
        workValue5 = arg9
        workValue2(workValue5)
        workValue2 = FreezeEntityPosition
        workValue5 = arg8
        flag3 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        workValue2(workValue5, flag3)
        workValue2 = FreezeEntityPosition
        workValue5 = arg9
        flag3 = true
        workValue2(workValue5, flag3)
        workValue2 = NetworkGetNetworkIdFromEntity
        workValue5 = arg8
        workValue2 = workValue2(workValue5)
        workValue5 = NetworkGetNetworkIdFromEntity
        flag3 = arg9
        workValue5 = workValue5(flag3)
        flag3 = dataTable6
        flag6 = {}
        workValue9 = arg3
        flag7 = workValue2
        flag8 = workValue5
        flag9 = -0.3
        flag10 = true
        flag6[1] = workValue9
        flag6[2] = flag7
        flag6[3] = flag8
        flag6[4] = flag9
        flag6[5] = flag10
        flag3[arg3] = flag6
        flag3 = TriggerServerEvent
        flag6 = "26cf6c5bda"
        workValue9 = arg3
        flag7 = dataTable6
        flag7 = flag7[arg3]
        flag8 = false
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "26cf6c5bda".
        flag3(flag6, workValue9, flag7, flag8)
        flag3 = SetModelAsNoLongerNeeded
        flag6 = eventRegistration12
        flag3(flag6)
        flag3 = tCMG
        flag3 = flag3.notify
        flag6 = "~g~Success~w~: Inflatable jack setup"
        -- Beginner: Show a notification to the player.
        flag3(flag6)
        flag3 = textValue19
        flag6 = arg2
        workValue9 = arg3
        flag7 = arg8
        flag3(flag6, workValue9, flag7)
      end
    elseif arg4 then
      if arg5 then
        arg6 = tCMG
        arg6 = arg6.notify
        arg7 = "~r~Error~w~: This inflatable jack is in use"
        -- Beginner: Show a notification to the player.
        arg6(arg7)
      else
        arg6 = CMG
        arg6 = arg6.getObjectId
        arg7 = dataTable6
        arg7 = arg7[arg3]
        arg7 = arg7[2]
        arg8 = "handleJack 3"
        arg6 = arg6(arg7, arg8)
        arg7 = CMG
        arg7 = arg7.getObjectId
        arg8 = dataTable6
        arg8 = arg8[arg3]
        arg8 = arg8[3]
        arg9 = "handleJack 4"
        arg7 = arg7(arg8, arg9)
        arg8 = TriggerServerEvent
        arg9 = "26cf6c5bda"
        workValue27 = arg3
        workValue2 = dataTable6
        workValue2 = workValue2[arg3]
        workValue5 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "26cf6c5bda".
        arg8(arg9, workValue27, workValue2, workValue5)
        if arg6 then
          arg8 = DoesEntityExist
          arg9 = arg6
          arg8 = arg8(arg9)
          if arg8 then
            arg8 = TriggerServerEvent
            arg9 = "ef321f8c43"
            workValue27 = NetworkGetNetworkIdFromEntity
            workValue2 = arg6
            workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10 = workValue27(workValue2)
            arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10)
            arg8 = DeleteEntity
            arg9 = arg6
            -- Beginner: Delete a GTA entity.
            arg8(arg9)
          end
        end
        if arg7 then
          arg8 = DoesEntityExist
          arg9 = arg7
          arg8 = arg8(arg9)
          if arg8 then
            arg8 = TriggerServerEvent
            arg9 = "ef321f8c43"
            workValue27 = NetworkGetNetworkIdFromEntity
            workValue2 = arg7
            workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10 = workValue27(workValue2)
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef321f8c43".
            arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10)
            arg8 = DeleteEntity
            arg9 = arg7
            -- Beginner: Delete a GTA entity.
            arg8(arg9)
          end
        end
        arg8 = TriggerServerEvent
        arg9 = "9efbf4fd13"
        workValue27 = arg3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9efbf4fd13".
        arg8(arg9, workValue27)
        arg8 = dataTable6
        arg8[arg3] = nil
        arg8 = tCMG
        arg8 = arg8.notify
        arg9 = "~g~Success~w~: Inflatable jack removed"
        -- Beginner: Show a notification to the player.
        arg8(arg9)
      end
    else
      arg6 = tCMG
      arg6 = arg6.notify
      arg7 = "~r~Error~w~: No inflatable jack found"
      arg6(arg7)
    end
  else
    arg3 = tCMG
    arg3 = arg3.notify
    arg4 = "~r~Error~w~: No vehicle found"
    -- Beginner: Show a notification to the player.
    arg3(arg4)
  end
end
workValue18 = eventRegistration13
eventRegistration13 = RegisterNetEvent
textValue20 = "48188fae63"
-- Beginner: this function handles network event "48188fae63".

-- === HELPER FUNCTION (decompiler name: numberValue21; parameters: arg1, arg2, arg3) ===
function numberValue21(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12
  arg4 = NetworkDoesNetworkIdExist
  arg5 = arg1
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = NetworkDoesNetworkIdExist
    arg5 = arg2
    arg4 = arg4(arg5)
    if arg4 then
      goto flow_label_12
    end
  end
  return
  ::flow_label_12::
  arg4 = NetworkGetEntityFromNetworkId
  arg5 = arg1
  arg4 = arg4(arg5)
  arg5 = NetworkGetEntityFromNetworkId
  arg6 = arg2
  arg5 = arg5(arg6)
  if 0 == arg4 or 0 == arg5 then
    return
  end
  arg6 = DetachEntity
  arg7 = arg4
  arg8 = false
  arg9 = false
  arg6(arg7, arg8, arg9)
  arg6 = AttachEntityToEntity
  arg7 = arg4
  arg8 = arg5
  arg9 = -1
  workValue27 = 0.7
  workValue2 = 0.0
  workValue5 = arg3
  flag3 = 0.0
  flag6 = 0.0
  workValue9 = 0.0
  flag7 = true
  flag8 = false
  flag9 = true
  flag10 = false
  flag11 = 1
  flag12 = true
  -- Beginner: Attach one entity to another entity.
  arg6(arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "48188fae63".
eventRegistration13(textValue20, numberValue21)
eventRegistration13 = RegisterNetEvent
textValue20 = "e03701fd84"
-- Beginner: this function handles network event "e03701fd84".

-- === HELPER FUNCTION (decompiler name: numberValue21; parameters: arg1) ===
function numberValue21(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = NetworkDoesNetworkIdExist
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg2 = NetworkGetEntityFromNetworkId
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 == arg2 then
    return
  end
  arg3 = DetachEntity
  arg4 = arg2
  arg5 = false
  arg6 = false
  arg3(arg4, arg5, arg6)
  arg3 = FreezeEntityPosition
  arg4 = arg2
  arg5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e03701fd84".
eventRegistration13(textValue20, numberValue21)
eventRegistration13 = 1800372691

-- === HELPER FUNCTION (decompiler name: textValue20; parameters: arg1) ===
function textValue20(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18, flag19, numberValue5, flag20
  arg2 = workValue20
  arg2 = arg2()
  if 0 ~= arg2 and nil ~= arg2 then
    arg3 = NetworkGetNetworkIdFromEntity
    arg4 = arg2
    arg3 = arg3(arg4)
    arg4 = eventRegistration10
    arg5 = dataTable7
    arg6 = arg3
    arg4 = arg4(arg5, arg6)
    if arg1 then
      if arg4 then
        arg5 = tCMG
        arg5 = arg5.notify
        arg6 = "~r~Error~w~: This vehicle already has chocks setup"
        -- Beginner: Show a notification to the player.
        arg5(arg6)
      else
        arg5 = GetEntityCoords
        arg6 = arg2
        -- Beginner: result below is entityCoords.
        arg5 = arg5(arg6)
        arg6 = ResetVehicleWheels
        arg7 = arg2
        arg8 = true
        arg6(arg7, arg8)
        arg6 = CMG
        arg6 = arg6.loadModel
        arg7 = eventRegistration13
        -- Beginner: Request/load a GTA model before spawning or applying it.
        arg6(arg7)
        arg6 = TriggerServerEvent
        arg7 = "4726a0ee92"
        arg8 = arg3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4726a0ee92".
        arg6(arg7, arg8)
        arg6 = CMG
        arg6 = arg6.requestEntitySpawn
        arg7 = "lfb_prop"
        arg8 = "chock"
        arg9 = arg5
        arg6(arg7, arg8, arg9)
        arg6 = CreateObject
        arg7 = eventRegistration13
        arg8 = arg5.x
        arg9 = arg5.y
        workValue27 = arg5.z
        workValue2 = true
        workValue5 = true
        flag3 = true
        -- Beginner: result below is objectEntity.
        arg6 = arg6(arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3)
        arg7 = CMG
        arg7 = arg7.requestEntitySpawn
        arg8 = "lfb_prop"
        arg9 = "chock"
        workValue27 = arg5
        arg7(arg8, arg9, workValue27)
        arg7 = CreateObject
        arg8 = eventRegistration13
        arg9 = arg5.x
        workValue27 = arg5.y
        workValue2 = arg5.z
        workValue5 = true
        flag3 = true
        flag6 = true
        -- Beginner: result below is objectEntity.
        arg7 = arg7(arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6)
        arg8 = CMG
        arg8 = arg8.requestEntitySpawn
        arg9 = "lfb_prop"
        workValue27 = "chock"
        workValue2 = arg5
        arg8(arg9, workValue27, workValue2)
        arg8 = CreateObject
        arg9 = eventRegistration13
        workValue27 = arg5.x
        workValue2 = arg5.y
        workValue5 = arg5.z
        flag3 = true
        flag6 = true
        workValue9 = true
        -- Beginner: result below is objectEntity.
        arg8 = arg8(arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9)
        arg9 = CMG
        arg9 = arg9.requestEntitySpawn
        workValue27 = "lfb_prop"
        workValue2 = "chock"
        workValue5 = arg5
        arg9(workValue27, workValue2, workValue5)
        arg9 = CreateObject
        workValue27 = eventRegistration13
        workValue2 = arg5.x
        workValue5 = arg5.y
        flag3 = arg5.z
        flag6 = true
        workValue9 = true
        flag7 = true
        -- Beginner: result below is objectEntity.
        arg9 = arg9(workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7)
        while true do
          workValue27 = DoesEntityExist
          workValue2 = arg6
          workValue27 = workValue27(workValue2)
          if workValue27 then
            workValue27 = DoesEntityExist
            workValue2 = arg7
            workValue27 = workValue27(workValue2)
            if workValue27 then
              workValue27 = DoesEntityExist
              workValue2 = arg8
              workValue27 = workValue27(workValue2)
              if workValue27 then
                workValue27 = DoesEntityExist
                workValue2 = arg9
                workValue27 = workValue27(workValue2)
                if workValue27 then
                  break
                end
              end
            end
          end
          workValue27 = Wait
          workValue2 = 0
          workValue27(workValue2)
        end
        workValue27 = TriggerServerEvent
        workValue2 = "3a7f6a2bdf"
        workValue5 = "Air Chocks"
        flag3 = GetEntityCoords
        flag6 = arg6
        workValue9 = true
        flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18, flag19, numberValue5, flag20 = flag3(flag6, workValue9)
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a7f6a2bdf".
        workValue27(workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18, flag19, numberValue5, flag20)
        workValue27 = GetEntityBoneIndexByName
        workValue2 = arg2
        workValue5 = "wheel_lf"
        workValue27 = workValue27(workValue2, workValue5)
        workValue2 = GetEntityBoneIndexByName
        workValue5 = arg2
        flag3 = "wheel_lr"
        workValue2 = workValue2(workValue5, flag3)
        workValue5 = GetEntityBoneIndexByName
        flag3 = arg2
        flag6 = "wheel_rf"
        workValue5 = workValue5(flag3, flag6)
        flag3 = GetEntityBoneIndexByName
        flag6 = arg2
        workValue9 = "wheel_rr"
        flag3 = flag3(flag6, workValue9)
        flag6 = FreezeEntityPosition
        workValue9 = arg6
        flag7 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        flag6(workValue9, flag7)
        flag6 = FreezeEntityPosition
        workValue9 = arg7
        flag7 = true
        flag6(workValue9, flag7)
        flag6 = FreezeEntityPosition
        workValue9 = arg8
        flag7 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        flag6(workValue9, flag7)
        flag6 = FreezeEntityPosition
        workValue9 = arg9
        flag7 = true
        flag6(workValue9, flag7)
        flag6 = AttachEntityToEntity
        workValue9 = arg6
        flag7 = arg2
        flag8 = workValue27
        flag9 = -0.05
        flag10 = 0.25
        flag11 = -0.29
        flag12 = 0.0
        flag13 = 0.0
        flag14 = 90.0
        flag16 = true
        flag17 = false
        flag18 = true
        flag19 = false
        numberValue5 = 1
        flag20 = true
        -- Beginner: Attach one entity to another entity.
        flag6(workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18, flag19, numberValue5, flag20)
        flag6 = AttachEntityToEntity
        workValue9 = arg8
        flag7 = arg2
        flag8 = workValue5
        flag9 = -0.05
        flag10 = 0.25
        flag11 = 0.29
        flag12 = 180.0
        flag13 = 0.0
        flag14 = -270.0
        flag16 = true
        flag17 = false
        flag18 = true
        flag19 = false
        numberValue5 = 1
        flag20 = true
        flag6(workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18, flag19, numberValue5, flag20)
        flag6 = AttachEntityToEntity
        workValue9 = arg7
        flag7 = arg2
        flag8 = workValue2
        flag9 = -0.05
        flag10 = -0.25
        flag11 = -0.29
        flag12 = 0.0
        flag13 = 0.0
        flag14 = -90.0
        flag16 = true
        flag17 = false
        flag18 = true
        flag19 = false
        numberValue5 = 1
        flag20 = true
        -- Beginner: Attach one entity to another entity.
        flag6(workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18, flag19, numberValue5, flag20)
        flag6 = AttachEntityToEntity
        workValue9 = arg9
        flag7 = arg2
        flag8 = flag3
        flag9 = -0.05
        flag10 = -0.25
        flag11 = 0.29
        flag12 = 180.0
        flag13 = 0.0
        flag14 = -90.0
        flag16 = true
        flag17 = false
        flag18 = true
        flag19 = false
        numberValue5 = 1
        flag20 = true
        flag6(workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18, flag19, numberValue5, flag20)
        flag6 = SetEntityCollision
        workValue9 = arg6
        flag7 = false
        flag8 = true
        flag6(workValue9, flag7, flag8)
        flag6 = SetEntityCollision
        workValue9 = arg7
        flag7 = false
        flag8 = true
        flag6(workValue9, flag7, flag8)
        flag6 = SetEntityCollision
        workValue9 = arg8
        flag7 = false
        flag8 = true
        flag6(workValue9, flag7, flag8)
        flag6 = SetEntityCollision
        workValue9 = arg9
        flag7 = false
        flag8 = true
        flag6(workValue9, flag7, flag8)
        flag6 = NetworkGetNetworkIdFromEntity
        workValue9 = arg6
        flag6 = flag6(workValue9)
        workValue9 = NetworkGetNetworkIdFromEntity
        flag7 = arg7
        workValue9 = workValue9(flag7)
        flag7 = NetworkGetNetworkIdFromEntity
        flag8 = arg8
        flag7 = flag7(flag8)
        flag8 = NetworkGetNetworkIdFromEntity
        flag9 = arg9
        flag8 = flag8(flag9)
        flag9 = dataTable7
        flag10 = {}
        flag11 = arg3
        flag12 = flag6
        flag13 = workValue9
        flag14 = flag7
        flag16 = flag8
        flag10[1] = flag11
        flag10[2] = flag12
        flag10[3] = flag13
        flag10[4] = flag14
        flag10[5] = flag16
        flag9[arg3] = flag10
        flag9 = TriggerServerEvent
        flag10 = "947eb3be89"
        flag11 = arg3
        flag12 = dataTable7
        flag12 = flag12[arg3]
        flag13 = false
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "947eb3be89".
        flag9(flag10, flag11, flag12, flag13)
        flag9 = SetModelAsNoLongerNeeded
        flag10 = eventRegistration13
        flag9(flag10)
        flag9 = TaskGoStraightToCoord
        flag10 = CMG
        flag10 = flag10.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        flag10 = flag10()
        flag11 = arg5.x
        flag12 = arg5.y
        flag13 = arg5.z
        flag14 = 30.0
        flag16 = 0.5
        flag17 = 0.0
        flag18 = 10.0
        flag9(flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18)
        flag9 = Wait
        flag10 = 2000
        flag9(flag10)
        flag9 = FreezeEntityPosition
        flag10 = arg2
        flag11 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        flag9(flag10, flag11)
        flag9 = tCMG
        flag9 = flag9.notify
        flag10 = "~g~Success~w~: Car chocks setup"
        -- Beginner: Show a notification to the player.
        flag9(flag10)
      end
    elseif arg4 then
      arg5 = Wait
      arg6 = 2000
      arg5(arg6)
      arg5 = CMG
      arg5 = arg5.getObjectId
      arg6 = dataTable7
      arg6 = arg6[arg3]
      arg6 = arg6[2]
      arg7 = "chock1"
      arg5 = arg5(arg6, arg7)
      arg6 = CMG
      arg6 = arg6.getObjectId
      arg7 = dataTable7
      arg7 = arg7[arg3]
      arg7 = arg7[3]
      arg8 = "chock2"
      arg6 = arg6(arg7, arg8)
      arg7 = CMG
      arg7 = arg7.getObjectId
      arg8 = dataTable7
      arg8 = arg8[arg3]
      arg8 = arg8[4]
      arg9 = "chock3"
      arg7 = arg7(arg8, arg9)
      arg8 = CMG
      arg8 = arg8.getObjectId
      arg9 = dataTable7
      arg9 = arg9[arg3]
      arg9 = arg9[5]
      workValue27 = "chock4"
      arg8 = arg8(arg9, workValue27)
      arg9 = Wait
      workValue27 = 1000
      arg9(workValue27)
      if arg5 then
        arg9 = DoesEntityExist
        workValue27 = arg5
        arg9 = arg9(workValue27)
        if arg9 then
          arg9 = DeleteEntity
          workValue27 = arg5
          -- Beginner: Delete a GTA entity.
          arg9(workValue27)
        end
      end
      if arg6 then
        arg9 = DoesEntityExist
        workValue27 = arg6
        arg9 = arg9(workValue27)
        if arg9 then
          arg9 = DeleteEntity
          workValue27 = arg6
          arg9(workValue27)
        end
      end
      if arg7 then
        arg9 = DoesEntityExist
        workValue27 = arg7
        arg9 = arg9(workValue27)
        if arg9 then
          arg9 = DeleteEntity
          workValue27 = arg7
          -- Beginner: Delete a GTA entity.
          arg9(workValue27)
        end
      end
      if arg8 then
        arg9 = DoesEntityExist
        workValue27 = arg8
        arg9 = arg9(workValue27)
        if arg9 then
          arg9 = DeleteEntity
          workValue27 = arg8
          arg9(workValue27)
        end
      end
      arg9 = TriggerServerEvent
      workValue27 = "947eb3be89"
      workValue2 = arg3
      workValue5 = dataTable7
      workValue5 = workValue5[arg3]
      flag3 = true
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "947eb3be89".
      arg9(workValue27, workValue2, workValue5, flag3)
      arg9 = TriggerServerEvent
      workValue27 = "9efbf4fd13"
      workValue2 = arg3
      arg9(workValue27, workValue2)
      arg9 = tCMG
      arg9 = arg9.notify
      workValue27 = "~g~Success~w~: Car chocks removed"
      -- Beginner: Show a notification to the player.
      arg9(workValue27)
    else
      arg5 = tCMG
      arg5 = arg5.notify
      arg6 = "~r~Error~w~: No car chocks found"
      arg5(arg6)
    end
  else
    arg3 = tCMG
    arg3 = arg3.notify
    arg4 = "~r~Error~w~: No vehicle found"
    -- Beginner: Show a notification to the player.
    arg3(arg4)
  end
end
textValue12 = textValue20

-- === HELPER FUNCTION (decompiler name: textValue20; parameters: arg1) ===
function textValue20(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, workValue27
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  arg4 = TriggerServerEvent
  arg5 = "7fef947eae"
  arg6 = arg3
  arg7 = CMG
  arg7 = arg7.getNetId
  arg8 = arg1
  arg9 = "spawnRope(entity)"
  arg7 = arg7(arg8, arg9)
  arg8 = CMG
  arg8 = arg8.getNetId
  arg9 = arg2
  workValue27 = "spawnRope(ped)"
  arg8, arg9, workValue27 = arg8(arg9, workValue27)
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7fef947eae".
  arg4(arg5, arg6, arg7, arg8, arg9, workValue27)
  arg4 = Wait
  arg5 = 2000
  arg4(arg5)
  arg4 = tCMG
  arg4 = arg4.notify
  arg5 = "~g~Success~w~: Rope is now winding"
  -- Beginner: Show a notification to the player.
  arg4(arg5)
end

-- === HELPER FUNCTION (decompiler name: numberValue21; parameters: none) ===
function numberValue21()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg1 = true
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = GiveWeaponToPed
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = -243142012
  arg6 = 1
  arg7 = false
  arg8 = true
  arg3(arg4, arg5, arg6, arg7, arg8)
  arg3 = false
  arg4 = 0
  while arg1 do
    arg5 = CMG
    arg5 = arg5.getPlayerId
    -- Beginner: result below is localPlayerIndex.
    arg5 = arg5()
    arg6 = GetEntityPlayerIsFreeAimingAt
    arg7 = arg5
    arg6, arg7 = arg6(arg7)
    arg8 = IsPedShooting
    arg9 = arg2
    arg8 = arg8(arg9)
    if arg8 then
      if arg6 then
        arg3 = true
        arg4 = arg7
        arg1 = false
        break
      end
      arg3 = false
      break
    end
    arg8 = Wait
    arg9 = 0
    arg8(arg9)
  end
  if arg3 then
    arg5 = tCMG
    arg5 = arg5.notify
    arg6 = "~g~Success~w~: Throw bag deployed"
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    arg5 = textValue20
    arg6 = arg4
    arg5(arg6)
  else
    arg5 = tCMG
    arg5 = arg5.notify
    arg6 = "~r~Error~w~: No player found"
    -- Beginner: Show a notification to the player.
    arg5(arg6)
  end
  arg1 = false
end
workValue22 = numberValue21
numberValue21 = 100
eventRegistration14 = RegisterNetEvent
textValue22 = "7fef947eae"
-- Beginner: this function handles network event "7fef947eae".

-- === HELPER FUNCTION (decompiler name: workValue25; parameters: arg1, arg2, arg3) ===
function workValue25(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9, workValue27, workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18, flag19
  arg4 = CMG
  arg4 = arg4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg4 = arg4()
  arg5 = arg4 - arg1
  arg5 = #arg5
  if arg5 < 30.0 then
    arg6 = RopeLoadTextures
    arg6()
    arg6 = CMG
    arg6 = arg6.getObjectId
    arg7 = arg2
    arg8 = "spawnThrowBag 1"
    arg6 = arg6(arg7, arg8)
    arg7 = CMG
    arg7 = arg7.getObjectId
    arg8 = arg3
    arg9 = "spawnThrowBag 2"
    arg7 = arg7(arg8, arg9)
    arg8 = GetEntityCoords
    arg9 = arg6
    -- Beginner: result below is entityCoords.
    arg8 = arg8(arg9)
    arg9 = GetEntityCoords
    workValue27 = arg6
    -- Beginner: result below is entityCoords.
    arg9 = arg9(workValue27)
    workValue27 = GetEntityCoords
    workValue2 = arg7
    -- Beginner: result below is entityCoords.
    workValue27 = workValue27(workValue2)
    arg9 = arg9 - workValue27
    arg9 = #arg9
    workValue27 = AddRope
    workValue2 = arg1.x
    workValue5 = arg1.y
    flag3 = arg1.z
    flag6 = 0.0
    workValue9 = 0.0
    flag7 = 0.0
    flag8 = arg9
    flag9 = 2
    flag10 = arg9 + 10.0
    flag11 = 1.0
    flag12 = 0
    flag13 = false
    flag14 = false
    flag16 = false
    flag17 = 0
    flag18 = false
    flag19 = 0
    workValue27 = workValue27(workValue2, workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18, flag19)
    workValue2 = AttachEntitiesToRope
    workValue5 = workValue27
    flag3 = arg7
    flag6 = arg6
    workValue9 = arg1.x
    flag7 = arg1.y
    flag8 = arg1.z
    flag8 = flag8 + 0.2
    flag9 = arg8.x
    flag10 = arg8.y
    flag11 = arg8.z
    flag11 = flag11 - 0.6
    flag12 = arg9
    flag13 = true
    flag14 = true
    workValue2(workValue5, flag3, flag6, workValue9, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14)
    workValue2 = StartRopeWinding
    workValue5 = workValue27
    workValue2(workValue5)
    workValue2 = "rcmlastone2leadinout"
    workValue5 = "sas_idle_sit"
    flag3 = "missprologueig_4@hold_head_base"
    flag6 = "hold_head_loop_base_brad"
    workValue9 = FreezeEntityPosition
    flag7 = arg7
    flag8 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    workValue9(flag7, flag8)
    workValue9 = CMG
    workValue9 = workValue9.loadAnimDict
    flag7 = flag3
    -- Beginner: Load a GTA animation dictionary before using it.
    workValue9(flag7)
    workValue9 = TaskPlayAnim
    flag7 = arg7
    flag8 = flag3
    flag9 = flag6
    flag10 = 8.0
    flag11 = -8.0
    flag12 = -1
    flag13 = 1
    flag14 = 0.0
    flag16 = false
    flag17 = false
    flag18 = false
    -- Beginner: Play an animation on a ped.
    workValue9(flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18)
    workValue9 = RemoveAnimDict
    flag7 = flag3
    workValue9(flag7)
    workValue9 = false
    while true do
      flag7 = GetEntityCoords
      flag8 = arg6
      -- Beginner: result below is entityCoords.
      flag7 = flag7(flag8)
      flag8 = GetEntityCoords
      flag9 = arg7
      -- Beginner: result below is entityCoords.
      flag8 = flag8(flag9)
      flag7 = flag7 - flag8
      flag7 = #flag7
      flag8 = 1.4
      if flag7 < flag8 then
        break
      end
      if not workValue9 then
        flag7 = IsPedSwimming
        flag8 = arg6
        flag7 = flag7(flag8)
        if not flag7 then
          workValue9 = true
          flag7 = CMG
          flag7 = flag7.loadAnimDict
          flag8 = workValue2
          -- Beginner: Load a GTA animation dictionary before using it.
          flag7(flag8)
          flag7 = TaskPlayAnim
          flag8 = arg6
          flag9 = workValue2
          flag10 = workValue5
          flag11 = 8.0
          flag12 = -8.0
          flag13 = -1
          flag14 = 1
          flag16 = 0.0
          flag17 = false
          flag18 = false
          flag19 = false
          -- Beginner: Play an animation on a ped.
          flag7(flag8, flag9, flag10, flag11, flag12, flag13, flag14, flag16, flag17, flag18, flag19)
          flag7 = RemoveAnimDict
          flag8 = workValue2
          flag7(flag8)
        end
      end
      flag7 = RopeGetDistanceBetweenEnds
      flag8 = workValue27
      flag7 = flag7(flag8)
      flag8 = 1.4
      if flag7 < flag8 then
        break
      end
      flag8 = RopeForceLength
      flag9 = workValue27
      flag10 = flag7 - 0.1
      flag8(flag9, flag10)
      flag8 = numberValue21
      if flag8 < 0 then
        flag8 = Wait
        flag9 = 0
        flag8(flag9)
      else
        flag8 = Wait
        flag9 = numberValue21
        flag8(flag9)
      end
    end
    flag7 = DeleteRope
    flag8 = workValue27
    flag7(flag8)
    flag7 = ClearPedTasks
    flag8 = arg6
    flag7(flag8)
    flag7 = ClearPedTasks
    flag8 = arg7
    flag7(flag8)
    flag7 = FreezeEntityPosition
    flag8 = arg7
    flag9 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    flag7(flag8, flag9)
    flag7 = RopeUnloadTextures
    flag7()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7fef947eae".
eventRegistration14(textValue22, workValue25)
eventRegistration14 = RegisterNetEvent
textValue22 = "9d1c946a2e"
-- Beginner: this function handles network event "9d1c946a2e".

-- === HELPER FUNCTION (decompiler name: workValue25; parameters: arg1) ===
function workValue25(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = GetGroundZAndNormalFor_3dCoord
  arg3 = arg1.x
  arg4 = arg1.y
  arg5 = arg1.z
  arg2, arg3 = arg2(arg3, arg4, arg5)
  if arg2 then
    arg4 = math
    arg4 = arg4.abs
    arg5 = arg1.z
    arg5 = arg5 - arg3
    arg4 = arg4(arg5)
    if arg4 < 4.0 then
      arg4 = CMG
      arg4 = arg4.isPositionInGreenzone
      arg5 = arg1
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = CMG
        arg4 = arg4.isPositionInRedzone
        arg5 = arg1
        arg4 = arg4(arg5)
        if not arg4 then
          arg4 = TriggerServerEvent
          arg5 = "fe180b3801"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fe180b3801".
          arg4(arg5)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9d1c946a2e".
eventRegistration14(textValue22, workValue25)
