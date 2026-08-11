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
local cmgCall, textValue14, textValue15, textValue16, rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue14 = "cfg/cfg_garages"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue14)
textValue14 = RMenu
textValue14 = textValue14.Add
textValue15 = "cardev"
textValue16 = "mainmenu"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue20 = ""
textValue29 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
rageUiCall5 = "cmg_adminui"
textValue6 = "cmg_adminui"
rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = rageUiCall(textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6)
textValue14(textValue15, textValue16, rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5)
textValue14 = RMenu
textValue15 = textValue14
textValue14 = textValue14.Get
textValue16 = "cardev"
rageUiCall = "mainmenu"
-- Beginner: result below is menu.
textValue14 = textValue14(textValue15, textValue16, rageUiCall)
textValue15 = textValue14
textValue14 = textValue14.SetSubtitle
textValue16 = "~b~Car Dev Menu"
textValue14(textValue15, textValue16)
textValue14 = RMenu
textValue14 = textValue14.Add
textValue15 = "cardev"
textValue16 = "vehiclemods"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue20 = RMenu
textValue29 = textValue20
textValue20 = textValue20.Get
rageUiCall3 = "cardev"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue20 = textValue20(textValue29, rageUiCall3, rageUiCall4)
textValue29 = ""
rageUiCall3 = "~b~Vehicle Mods"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = rageUiCall5()
rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = rageUiCall(textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5)
textValue14(textValue15, textValue16, rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5)
textValue14 = RMenu
textValue14 = textValue14.Add
textValue15 = "cardev"
textValue16 = "vehiclemodindexes"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue20 = RMenu
textValue29 = textValue20
textValue20 = textValue20.Get
rageUiCall3 = "cardev"
rageUiCall4 = "vehiclemods"
-- Beginner: result below is menu.
textValue20 = textValue20(textValue29, rageUiCall3, rageUiCall4)
textValue29 = ""
rageUiCall3 = "~b~Vehicle Mod Indexes"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = rageUiCall5()
rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = rageUiCall(textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5)
textValue14(textValue15, textValue16, rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5)
textValue14 = RMenu
textValue14 = textValue14.Add
textValue15 = "cardev"
textValue16 = "extras"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue20 = RMenu
textValue29 = textValue20
textValue20 = textValue20.Get
rageUiCall3 = "cardev"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue20 = textValue20(textValue29, rageUiCall3, rageUiCall4)
textValue29 = ""
rageUiCall3 = "~b~Extras"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = rageUiCall5()
rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = rageUiCall(textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5)
textValue14(textValue15, textValue16, rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5)
textValue14 = RMenu
textValue14 = textValue14.Add
textValue15 = "cardev"
textValue16 = "colours"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue20 = RMenu
textValue29 = textValue20
textValue20 = textValue20.Get
rageUiCall3 = "cardev"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue20 = textValue20(textValue29, rageUiCall3, rageUiCall4)
textValue29 = ""
rageUiCall3 = "~b~Colours"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = rageUiCall5()
rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = rageUiCall(textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5)
textValue14(textValue15, textValue16, rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5)
textValue14 = RMenu
textValue14 = textValue14.Add
textValue15 = "cardev"
textValue16 = "automatedhandling"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue20 = RMenu
textValue29 = textValue20
textValue20 = textValue20.Get
rageUiCall3 = "cardev"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue20 = textValue20(textValue29, rageUiCall3, rageUiCall4)
textValue29 = ""
rageUiCall3 = "~b~Automated Handling"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = rageUiCall5()
rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = rageUiCall(textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5)
textValue14(textValue15, textValue16, rageUiCall, textValue20, textValue29, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5)
textValue14 = false
textValue15 = {}
textValue16 = "speed"
rageUiCall = "drift"
textValue20 = "handling"
textValue29 = "city"
rageUiCall3 = "airport"
rageUiCall4 = "track"
textValue15[1] = textValue16
textValue15[2] = rageUiCall
textValue15[3] = textValue20
textValue15[4] = textValue29
textValue15[5] = rageUiCall3
textValue15[6] = rageUiCall4
textValue16 = {}
rageUiCall = vector3
textValue20 = 2370.8
textValue29 = 2856.58
rageUiCall3 = 40.46
rageUiCall = rageUiCall(textValue20, textValue29, rageUiCall3)
textValue20 = vector3
textValue29 = 974.58
rageUiCall3 = -3006.6
rageUiCall4 = 5.9
textValue20 = textValue20(textValue29, rageUiCall3, rageUiCall4)
textValue29 = vector3
rageUiCall3 = 1894.57
rageUiCall4 = 3823.71
rageUiCall5 = 31.98
textValue29 = textValue29(rageUiCall3, rageUiCall4, rageUiCall5)
rageUiCall3 = vector3
rageUiCall4 = -482.63
rageUiCall5 = -664.24
textValue6 = 32.74
rageUiCall3 = rageUiCall3(rageUiCall4, rageUiCall5, textValue6)
rageUiCall4 = vector3
rageUiCall5 = -1728.25
textValue6 = -2894.99
textValue7 = 13.94
rageUiCall4 = rageUiCall4(rageUiCall5, textValue6, textValue7)
rageUiCall5 = vector3
textValue6 = 2120.2548828125
textValue7 = 2433.7978515625
textValue9 = 152.661499023438
rageUiCall5, textValue6, textValue7, textValue9, flag5, flag6, cmgCall2, dataTable, dataTable2, dataTable3, dataTable4, dataTable6, dataTable7, dataTable8, iterator, dataTable9, dataTable10, dataTable11, dataTable12, tableHelper, dataTable13, dataTable14, vector3Builder, vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = rageUiCall5(textValue6, textValue7, textValue9)
textValue16[1] = rageUiCall
textValue16[2] = textValue20
textValue16[3] = textValue29
textValue16[4] = rageUiCall3
textValue16[5] = rageUiCall4
textValue16[6] = rageUiCall5
textValue16[7] = textValue6
textValue16[8] = textValue7
textValue16[9] = textValue9
textValue16[10] = flag5
textValue16[11] = flag6
textValue16[12] = cmgCall2
textValue16[13] = dataTable
textValue16[14] = dataTable2
textValue16[15] = dataTable3
textValue16[16] = dataTable4
textValue16[17] = dataTable6
textValue16[18] = dataTable7
textValue16[19] = dataTable8
textValue16[20] = iterator
textValue16[21] = dataTable9
textValue16[22] = dataTable10
textValue16[23] = dataTable11
textValue16[24] = dataTable12
textValue16[25] = tableHelper
textValue16[26] = dataTable13
textValue16[27] = dataTable14
textValue16[28] = vector3Builder
textValue16[29] = vector3Builder2
textValue16[30] = dataTable15
textValue16[31] = dataTable16
textValue16[32] = dataTable17
textValue16[33] = dataTable18
textValue16[34] = dataTable19
textValue16[35] = dataTable20
textValue16[36] = tableHelper2
textValue16[37] = dataTable21
textValue16[38] = dataTable22
textValue16[39] = vector3Builder3
textValue16[40] = dataTable23
textValue16[41] = dataTable24
textValue16[42] = dataTable25
textValue16[43] = dataTable26
textValue16[44] = dataTable27
textValue16[45] = dataTable28
textValue16[46] = dataTable29
textValue16[47] = dataTable30
textValue16[48] = dataTable31
textValue16[49] = dataTable32
textValue16[50] = dataTable33
textValue16[51] = dataTable34
textValue16[52] = dataTable35
textValue16[53] = dataTable36
textValue16[54] = dataTable37
textValue16[55] = rageUiCall2
textValue16[56] = dataTable38
textValue16[57] = dataTable39
textValue16[58] = dataTable40
textValue16[59] = dataTable41
textValue16[60] = textValue22
textValue16[61] = textValue23
textValue16[62] = textValue24
textValue16[63] = textValue25
textValue16[64] = textValue26
textValue16[65] = textValue27
textValue16[66] = textValue28
textValue16[67] = textValue30
textValue16[68] = textValue31
textValue16[69] = textValue32
textValue16[70] = textValue33
textValue16[71] = textValue34
textValue16[72] = textValue35
textValue16[73] = textValue36
textValue16[74] = textValue37
textValue16[75] = textValue38
textValue16[76] = textValue39
textValue16[77] = textValue40
textValue16[78] = textValue41
textValue16[79] = textValue42
textValue16[80] = textValue43
textValue16[81] = textValue44
textValue16[82] = textValue45
textValue16[83] = textValue46
textValue16[84] = textValue47
textValue16[85] = textValue48
textValue16[86] = textValue49
textValue16[87] = textValue50
textValue16[88] = textValue51
textValue16[89] = textValue52
textValue16[90] = textValue53
textValue16[91] = textValue54
textValue16[92] = textValue55
textValue16[93] = textValue56
textValue16[94] = textValue57
textValue16[95] = textValue58
textValue16[96] = textValue59
textValue16[97] = textValue
textValue16[98] = textValue2
textValue16[99] = textValue3
textValue16[100] = textValue4
textValue16[101] = textValue5
rageUiCall = 1
textValue20 = {}
textValue29 = "0%"
rageUiCall3 = "10%"
rageUiCall4 = "20%"
rageUiCall5 = "30%"
textValue6 = "40%"
textValue7 = "50%"
textValue9 = "60%"
flag5 = "70%"
flag6 = "80%"
cmgCall2 = "90%"
dataTable = "100%"
textValue20[1] = textValue29
textValue20[2] = rageUiCall3
textValue20[3] = rageUiCall4
textValue20[4] = rageUiCall5
textValue20[5] = textValue6
textValue20[6] = textValue7
textValue20[7] = textValue9
textValue20[8] = flag5
textValue20[9] = flag6
textValue20[10] = cmgCall2
textValue20[11] = dataTable
textValue29 = {}
rageUiCall3 = 0.0
rageUiCall4 = 0.1
rageUiCall5 = 0.2
textValue6 = 0.3
textValue7 = 0.4
textValue9 = 0.5
flag5 = 0.6
flag6 = 0.7
cmgCall2 = 0.8
dataTable = 0.9
dataTable2 = 1.0
textValue29[1] = rageUiCall3
textValue29[2] = rageUiCall4
textValue29[3] = rageUiCall5
textValue29[4] = textValue6
textValue29[5] = textValue7
textValue29[6] = textValue9
textValue29[7] = flag5
textValue29[8] = flag6
textValue29[9] = cmgCall2
textValue29[10] = dataTable
textValue29[11] = dataTable2
rageUiCall3 = 1
rageUiCall4 = 1
rageUiCall5 = {}
textValue6 = false
textValue7 = false
textValue9 = {}
flag5 = true
flag6 = false
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1) ===
function dataTable(arg1)
  local arg2
  arg2 = rageUiCall5
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = true
    if arg2 then
      goto flow_label_9
    end
  end
  arg2 = false
  ::flow_label_9::
  return arg2
end
cmgCall2.isVehicleCarDevDamageDisabled = dataTable
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
function dataTable()
  local arg1, arg2
  arg1 = textValue14
  if arg1 then
    arg1 = flag6
  end
  return arg1
end
cmgCall2.hasCarDevDisabledSpeedCaps = dataTable
cmgCall2 = {}
cmgCall2[0] = "VMT_SPOILER"
cmgCall2[1] = "VMT_BUMPER_F"
cmgCall2[2] = "VMT_BUMPER_R"
cmgCall2[3] = "VMT_SKIRT"
cmgCall2[4] = "VMT_EXHAUST"
cmgCall2[5] = "VMT_CHASSIS"
cmgCall2[6] = "VMT_GRILL"
cmgCall2[7] = "VMT_BONNET"
cmgCall2[8] = "VMT_WING_L"
cmgCall2[9] = "VMT_WING_R"
cmgCall2[10] = "VMT_ROOF"
cmgCall2[11] = "VMT_ENGINE"
cmgCall2[12] = "VMT_BRAKES"
cmgCall2[13] = "VMT_GEARBOX"
cmgCall2[14] = "VMT_HORN"
cmgCall2[15] = "VMT_SUSPENSION"
cmgCall2[16] = "VMT_ARMOUR"
cmgCall2[17] = "VMT_NITROUS"
cmgCall2[18] = "VMT_TURBO"
cmgCall2[19] = "VMT_SUBWOOFER"
cmgCall2[20] = "VMT_TYRE_SMOKE"
cmgCall2[21] = "VMT_HYDRAULICS"
cmgCall2[22] = "VMT_XENON_LIGHTS"
cmgCall2[23] = "VMT_WHEELS"
cmgCall2[24] = "VMT_WHEELS_REAR_OR_HYDRAULICS"
cmgCall2[25] = "VMT_PLTHOLDER"
cmgCall2[26] = "VMT_PLTVANITY"
cmgCall2[27] = "VMT_INTERIOR1"
cmgCall2[28] = "VMT_INTERIOR2"
cmgCall2[29] = "VMT_INTERIOR3"
cmgCall2[30] = "VMT_INTERIOR4"
cmgCall2[31] = "VMT_INTERIOR5"
cmgCall2[32] = "VMT_SEATS"
cmgCall2[33] = "VMT_STEERING"
cmgCall2[34] = "VMT_KNOB"
cmgCall2[35] = "VMT_PLAQUE"
cmgCall2[36] = "VMT_ICE"
cmgCall2[37] = "VMT_TRUNK"
cmgCall2[38] = "VMT_HYDRO"
cmgCall2[39] = "VMT_ENGINEBAY1"
cmgCall2[40] = "VMT_ENGINEBAY2"
cmgCall2[41] = "VMT_ENGINEBAY3"
cmgCall2[42] = "VMT_CHASSIS2"
cmgCall2[43] = "VMT_CHASSIS3"
cmgCall2[44] = "VMT_CHASSIS4"
cmgCall2[45] = "VMT_CHASSIS5"
cmgCall2[46] = "VMT_DOOR_L"
cmgCall2[47] = "VMT_DOOR_R"
cmgCall2[48] = "VMT_LIVERY_MOD"
cmgCall2[49] = "VMT_LIGHTBAR"
dataTable = {}
dataTable2 = {}
dataTable2.name = "fMass"
dataTable2.type = "float"
dataTable3 = {}
dataTable3.name = "fInitialDragCoeff"
dataTable3.type = "float"
dataTable4 = {}
dataTable4.name = "fDownforceModifier"
dataTable4.type = "float"
dataTable6 = {}
dataTable6.name = "fPercentSubmerged"
dataTable6.type = "float"
dataTable7 = {}
dataTable7.name = "vecCentreOfMassOffset"
dataTable7.type = "vector"
dataTable8 = {}
dataTable8.name = "vecInertiaMultiplier"
dataTable8.type = "vector"
iterator = {}
iterator.name = "fDriveBiasFront"
iterator.type = "float"
dataTable9 = {}
dataTable9.name = "nInitialDriveGears"
dataTable9.type = "integer"
dataTable10 = {}
dataTable10.name = "fInitialDriveForce"
dataTable10.type = "float"
dataTable11 = {}
dataTable11.name = "fDriveInertia"
dataTable11.type = "float"
dataTable12 = {}
dataTable12.name = "fClutchChangeRateScaleUpShift"
dataTable12.type = "float"
tableHelper = {}
tableHelper.name = "fClutchChangeRateScaleDownShift"
tableHelper.type = "float"
dataTable13 = {}
dataTable13.name = "fInitialDriveMaxFlatVel"
dataTable13.type = "float"
dataTable14 = {}
dataTable14.name = "fBrakeForce"
dataTable14.type = "float"
vector3Builder = {}
vector3Builder.name = "fBrakeBiasFront"
vector3Builder.type = "float"
vector3Builder2 = {}
vector3Builder2.name = "fHandBrakeForce"
vector3Builder2.type = "float"
dataTable15 = {}
dataTable15.name = "fSteeringLock"
dataTable15.type = "float"
dataTable16 = {}
dataTable16.name = "fTractionCurveMax"
dataTable16.type = "float"
dataTable17 = {}
dataTable17.name = "fTractionCurveMin"
dataTable17.type = "float"
dataTable18 = {}
dataTable18.name = "fTractionCurveLateral"
dataTable18.type = "float"
dataTable19 = {}
dataTable19.name = "fTractionSpringDeltaMax"
dataTable19.type = "float"
dataTable20 = {}
dataTable20.name = "fLowSpeedTractionLossMult"
dataTable20.type = "float"
tableHelper2 = {}
tableHelper2.name = "fCamberStiffnesss"
tableHelper2.type = "float"
dataTable21 = {}
dataTable21.name = "fTractionBiasFront"
dataTable21.type = "float"
dataTable22 = {}
dataTable22.name = "fTractionLossMult"
dataTable22.type = "float"
vector3Builder3 = {}
vector3Builder3.name = "fSuspensionForce"
vector3Builder3.type = "float"
dataTable23 = {}
dataTable23.name = "fSuspensionCompDamp"
dataTable23.type = "float"
dataTable24 = {}
dataTable24.name = "fSuspensionReboundDamp"
dataTable24.type = "float"
dataTable25 = {}
dataTable25.name = "fSuspensionUpperLimit"
dataTable25.type = "float"
dataTable26 = {}
dataTable26.name = "fSuspensionLowerLimit"
dataTable26.type = "float"
dataTable27 = {}
dataTable27.name = "fSuspensionRaise"
dataTable27.type = "float"
dataTable28 = {}
dataTable28.name = "fSuspensionBiasFront"
dataTable28.type = "float"
dataTable29 = {}
dataTable29.name = "fAntiRollBarForce"
dataTable29.type = "float"
dataTable30 = {}
dataTable30.name = "fAntiRollBarBiasFront"
dataTable30.type = "float"
dataTable31 = {}
dataTable31.name = "fRollCentreHeightFront"
dataTable31.type = "float"
dataTable32 = {}
dataTable32.name = "fRollCentreHeightRear"
dataTable32.type = "float"
dataTable33 = {}
dataTable33.name = "fCollisionDamageMult"
dataTable33.type = "float"
dataTable34 = {}
dataTable34.name = "fWeaponDamageMult"
dataTable34.type = "float"
dataTable35 = {}
dataTable35.name = "fDeformationDamageMult"
dataTable35.type = "float"
dataTable36 = {}
dataTable36.name = "fEngineDamageMult"
dataTable36.type = "float"
dataTable37 = {}
dataTable37.name = "fPetrolTankVolume"
dataTable37.type = "float"
rageUiCall2 = {}
rageUiCall2.name = "fOilVolume"
rageUiCall2.type = "float"
dataTable38 = {}
dataTable38.name = "fSeatOffsetDistX"
dataTable38.type = "float"
dataTable39 = {}
dataTable39.name = "fSeatOffsetDistY"
dataTable39.type = "float"
dataTable40 = {}
dataTable40.name = "fSeatOffsetDistZ"
dataTable40.type = "float"
dataTable41 = {}
dataTable41.name = "nMonetaryValue"
dataTable41.type = "integer"
dataTable[1] = dataTable2
dataTable[2] = dataTable3
dataTable[3] = dataTable4
dataTable[4] = dataTable6
dataTable[5] = dataTable7
dataTable[6] = dataTable8
dataTable[7] = iterator
dataTable[8] = dataTable9
dataTable[9] = dataTable10
dataTable[10] = dataTable11
dataTable[11] = dataTable12
dataTable[12] = tableHelper
dataTable[13] = dataTable13
dataTable[14] = dataTable14
dataTable[15] = vector3Builder
dataTable[16] = vector3Builder2
dataTable[17] = dataTable15
dataTable[18] = dataTable16
dataTable[19] = dataTable17
dataTable[20] = dataTable18
dataTable[21] = dataTable19
dataTable[22] = dataTable20
dataTable[23] = tableHelper2
dataTable[24] = dataTable21
dataTable[25] = dataTable22
dataTable[26] = vector3Builder3
dataTable[27] = dataTable23
dataTable[28] = dataTable24
dataTable[29] = dataTable25
dataTable[30] = dataTable26
dataTable[31] = dataTable27
dataTable[32] = dataTable28
dataTable[33] = dataTable29
dataTable[34] = dataTable30
dataTable[35] = dataTable31
dataTable[36] = dataTable32
dataTable[37] = dataTable33
dataTable[38] = dataTable34
dataTable[39] = dataTable35
dataTable[40] = dataTable36
dataTable[41] = dataTable37
dataTable[42] = rageUiCall2
dataTable[43] = dataTable38
dataTable[44] = dataTable39
dataTable[45] = dataTable40
dataTable[46] = dataTable41
dataTable2 = {}
dataTable3 = {}
dataTable3.fMass = 1600.0
dataTable3.fInitialDragCoeff = 2.0
dataTable3.fInitialDriveForce = 0.5
dataTable3.fInitialDriveMaxFlatVel = 400.0
dataTable3.fBrakeForce = 1.5
dataTable3.fHandBrakeForce = 1.5
dataTable3.fCollisionDamageMult = 0.8
dataTable3.fWeaponDamageMult = 1.0
dataTable3.fDeformationDamageMult = 0.8
dataTable3.fEngineDamageMult = 1.0
dataTable2["Super Sport"] = dataTable3
dataTable3 = {}
dataTable3.fMass = 1700.0
dataTable3.fInitialDragCoeff = 1.8
dataTable3.fInitialDriveForce = 0.45
dataTable3.fInitialDriveMaxFlatVel = 400.0
dataTable3.fBrakeForce = 1.5
dataTable3.fHandBrakeForce = 1.5
dataTable3.fCollisionDamageMult = 0.7
dataTable3.fWeaponDamageMult = 1.0
dataTable3.fDeformationDamageMult = 0.7
dataTable3.fEngineDamageMult = 1.0
dataTable2["Police Sport"] = dataTable3
dataTable3 = {}
dataTable3.fMass = 1700.0
dataTable3.fInitialDragCoeff = 4.2
dataTable3.fInitialDriveForce = 0.45
dataTable3.fInitialDriveMaxFlatVel = 350.0
dataTable3.fBrakeForce = 1.5
dataTable3.fHandBrakeForce = 1.5
dataTable3.fCollisionDamageMult = 0.7
dataTable3.fWeaponDamageMult = 1.0
dataTable3.fDeformationDamageMult = 0.7
dataTable3.fEngineDamageMult = 1.0
dataTable2.Sport = dataTable3
dataTable3 = {}
dataTable3.fMass = 1800.0
dataTable3.fInitialDragCoeff = 4.2
dataTable3.fInitialDriveForce = 0.4
dataTable3.fInitialDriveMaxFlatVel = 300.0
dataTable3.fBrakeForce = 1.5
dataTable3.fHandBrakeForce = 1.5
dataTable3.fCollisionDamageMult = 0.6
dataTable3.fWeaponDamageMult = 1.0
dataTable3.fDeformationDamageMult = 0.6
dataTable3.fEngineDamageMult = 1.0
dataTable2.SUV = dataTable3
dataTable3 = {}
dataTable3.fMass = 1800.0
dataTable3.fInitialDragCoeff = 3.0
dataTable3.fInitialDriveForce = 0.3
dataTable3.fInitialDriveMaxFlatVel = 300.0
dataTable3.fBrakeForce = 1.5
dataTable3.fHandBrakeForce = 1.5
dataTable3.fCollisionDamageMult = 0.5
dataTable3.fWeaponDamageMult = 1.0
dataTable3.fDeformationDamageMult = 0.5
dataTable3.fEngineDamageMult = 1.0
dataTable2.Offroader = dataTable3
dataTable3 = {}
dataTable3.fMass = 1800.0
dataTable3.fInitialDragCoeff = 5.0
dataTable3.fInitialDriveForce = 0.375
dataTable3.fInitialDriveMaxFlatVel = 320.0
dataTable3.fBrakeForce = 1.5
dataTable3.fHandBrakeForce = 1.5
dataTable3.fCollisionDamageMult = 0.6
dataTable3.fWeaponDamageMult = 1.0
dataTable3.fDeformationDamageMult = 0.6
dataTable3.fEngineDamageMult = 1.0
dataTable3.fSuspensionForce = 3.0
dataTable3.fSuspensionCompDamp = 1.5
dataTable3.fSuspensionReboundDamp = 1.5
dataTable3.fSuspensionUpperLimit = 0.1
dataTable3.fSuspensionLowerLimit = -0.1
dataTable2["300KG"] = dataTable3
dataTable3 = {}
dataTable4 = {}
dataTable4.fMass = 1400.0
dataTable4.fInitialDragCoeff = 7.0
dataTable4.fInitialDriveForce = 0.4
dataTable4.fInitialDriveMaxFlatVel = 290.0
dataTable4.fDriveInertia = 1.0
dataTable4.fClutchChangeRateScaleUpShift = 6.0
dataTable4.fClutchChangeRateScaleDownShift = 6.0
dataTable4.fBrakeForce = 1.2
dataTable4.fHandBrakeForce = 0.8
dataTable4.fCollisionDamageMult = 0.8
dataTable4.fWeaponDamageMult = 1.0
dataTable4.fDeformationDamageMult = 0.8
dataTable4.fEngineDamageMult = 1.0
dataTable4.fSuspensionForce = 3.0
dataTable4.fSuspensionCompDamp = 1.5
dataTable4.fSuspensionReboundDamp = 1.5
dataTable4.fSuspensionUpperLimit = 0.1
dataTable4.fSuspensionLowerLimit = -0.1
dataTable4.fTractionBiasFront = 0.5
dataTable4.fSteeringLock = 40.0
dataTable4.fTractionCurveMax = 3.5
dataTable4.fTractionCurveMin = 3.5
dataTable4.fTractionCurveLateral = 22.5
dataTable4.fTractionSpringDeltaMax = 0.15
dataTable4.fTractionLossMult = 1.0
dataTable3.Super = dataTable4
dataTable4 = {}
dataTable4.fMass = 1500.0
dataTable4.fInitialDragCoeff = 7.5
dataTable4.fInitialDriveForce = 0.35
dataTable4.fInitialDriveMaxFlatVel = 260.0
dataTable4.fDriveInertia = 1.0
dataTable4.fClutchChangeRateScaleUpShift = 6.0
dataTable4.fClutchChangeRateScaleDownShift = 6.0
dataTable4.fBrakeForce = 1.2
dataTable4.fHandBrakeForce = 0.8
dataTable4.fCollisionDamageMult = 0.7
dataTable4.fWeaponDamageMult = 1.0
dataTable4.fDeformationDamageMult = 0.7
dataTable4.fEngineDamageMult = 1.0
dataTable4.fSuspensionForce = 3.0
dataTable4.fSuspensionCompDamp = 1.5
dataTable4.fSuspensionReboundDamp = 1.5
dataTable4.fSuspensionUpperLimit = 0.1
dataTable4.fSuspensionLowerLimit = -0.1
dataTable4.fTractionBiasFront = 0.5
dataTable4.fSteeringLock = 40.0
dataTable4.fTractionCurveMax = 3.5
dataTable4.fTractionCurveMin = 3.5
dataTable4.fTractionCurveLateral = 22.5
dataTable4.fTractionSpringDeltaMax = 0.15
dataTable4.fTractionLossMult = 1.0
dataTable3["Sport & Sedan"] = dataTable4
dataTable4 = {}
dataTable4.fMass = 1600.0
dataTable4.fInitialDragCoeff = 7.5
dataTable4.fInitialDriveForce = 0.35
dataTable4.fInitialDriveMaxFlatVel = 200.0
dataTable4.fDriveInertia = 0.7
dataTable4.fClutchChangeRateScaleUpShift = 6.0
dataTable4.fClutchChangeRateScaleDownShift = 6.0
dataTable4.fBrakeForce = 1.2
dataTable4.fHandBrakeForce = 0.8
dataTable4.fCollisionDamageMult = 0.7
dataTable4.fWeaponDamageMult = 1.0
dataTable4.fDeformationDamageMult = 0.7
dataTable4.fEngineDamageMult = 1.0
dataTable4.fSuspensionForce = 3.0
dataTable4.fSuspensionCompDamp = 1.5
dataTable4.fSuspensionReboundDamp = 1.5
dataTable4.fSuspensionUpperLimit = 0.1
dataTable4.fSuspensionLowerLimit = -0.1
dataTable4.fTractionBiasFront = 0.5
dataTable4.fSteeringLock = 40.0
dataTable4.fTractionCurveMax = 3.5
dataTable4.fTractionCurveMin = 3.5
dataTable4.fTractionCurveLateral = 22.5
dataTable4.fTractionSpringDeltaMax = 0.15
dataTable4.fTractionLossMult = 1.0
dataTable3.SUV = dataTable4
dataTable4 = {}
dataTable4.fMass = 1600.0
dataTable4.fInitialDragCoeff = 12.0
dataTable4.fInitialDriveForce = 0.3
dataTable4.fInitialDriveMaxFlatVel = 200.0
dataTable4.fDriveInertia = 0.5
dataTable4.fClutchChangeRateScaleUpShift = 6.0
dataTable4.fClutchChangeRateScaleDownShift = 6.0
dataTable4.fBrakeForce = 0.8
dataTable4.fHandBrakeForce = 0.8
dataTable4.fCollisionDamageMult = 0.6
dataTable4.fWeaponDamageMult = 1.0
dataTable4.fDeformationDamageMult = 0.6
dataTable4.fEngineDamageMult = 1.0
dataTable4.fSuspensionForce = 3.0
dataTable4.fSuspensionCompDamp = 1.5
dataTable4.fSuspensionReboundDamp = 1.5
dataTable4.fSuspensionUpperLimit = 0.1
dataTable4.fSuspensionLowerLimit = -0.1
dataTable4.fTractionBiasFront = 0.5
dataTable4.fSteeringLock = 40.0
dataTable4.fTractionCurveMax = 3.5
dataTable4.fTractionCurveMin = 3.5
dataTable4.fTractionCurveLateral = 22.5
dataTable4.fTractionSpringDeltaMax = 0.15
dataTable4.fTractionLossMult = 1.0
dataTable3.Truck = dataTable4
dataTable4 = {}
dataTable4.fMass = 1600.0
dataTable4.fInitialDragCoeff = 6.0
dataTable4.fInitialDriveForce = 0.3
dataTable4.fInitialDriveMaxFlatVel = 200.0
dataTable4.fDriveInertia = 1.0
dataTable4.fClutchChangeRateScaleUpShift = 6.0
dataTable4.fClutchChangeRateScaleDownShift = 6.0
dataTable4.fBrakeForce = 1.2
dataTable4.fHandBrakeForce = 0.8
dataTable4.fCollisionDamageMult = 0.6
dataTable4.fWeaponDamageMult = 1.0
dataTable4.fDeformationDamageMult = 0.6
dataTable4.fEngineDamageMult = 1.0
dataTable4.fSuspensionForce = 3.0
dataTable4.fSuspensionCompDamp = 1.5
dataTable4.fSuspensionReboundDamp = 1.5
dataTable4.fSuspensionUpperLimit = 0.1
dataTable4.fSuspensionLowerLimit = -0.1
dataTable4.fTractionBiasFront = 0.5
dataTable4.fSteeringLock = 40.0
dataTable4.fTractionCurveMax = 3.5
dataTable4.fTractionCurveMin = 3.5
dataTable4.fTractionCurveLateral = 22.5
dataTable4.fTractionSpringDeltaMax = 0.15
dataTable4.fTractionLossMult = 1.0
dataTable3["300KG"] = dataTable4
dataTable4 = {}
dataTable6 = 1
dataTable7 = {}
dataTable8 = 1
iterator = pairs
dataTable9 = dataTable2
iterator, dataTable9, dataTable10, dataTable11 = iterator(dataTable9)
for dataTable12 in iterator, dataTable9, dataTable10, dataTable11 do
  tableHelper = table
  tableHelper = tableHelper.insert
  dataTable13 = dataTable4
  dataTable14 = dataTable12
  tableHelper(dataTable13, dataTable14)
end
iterator = pairs
dataTable9 = dataTable3
iterator, dataTable9, dataTable10, dataTable11 = iterator(dataTable9)
for dataTable12 in iterator, dataTable9, dataTable10, dataTable11 do
  tableHelper = table
  tableHelper = tableHelper.insert
  dataTable13 = dataTable7
  dataTable14 = dataTable12
  tableHelper(dataTable13, dataTable14)
end
iterator = {}
dataTable9 = 11
dataTable10 = 12
dataTable11 = 13
dataTable12 = 15
iterator[1] = dataTable9
iterator[2] = dataTable10
iterator[3] = dataTable11
iterator[4] = dataTable12

-- === HELPER FUNCTION (decompiler name: dataTable9; parameters: arg1) ===
function dataTable9(arg1)
  local arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4
  arg2 = {}
  arg3 = pairs
  textValue17 = iterator
  arg3, textValue17, numberValue24, modelHash = arg3(textValue17)
  for cmgCall5, workValue18 in arg3, textValue17, numberValue24, modelHash do
    workValue20 = GetVehicleMod
    workValue21 = arg1
    workValue = workValue18
    workValue20 = workValue20(workValue21, workValue)
    arg2[workValue18] = workValue20
  end
  arg3 = ModifyVehicleTopSpeed
  textValue17 = arg1
  numberValue24 = 1.0
  arg3(textValue17, numberValue24)
  arg3 = CMG
  arg3 = arg3.getTunableValue
  textValue17 = "reapply_mods_hack"
  arg3 = arg3(textValue17)
  if arg3 then
    arg3 = pairs
    textValue17 = arg2
    arg3, textValue17, numberValue24, modelHash = arg3(textValue17)
    for cmgCall5, workValue18 in arg3, textValue17, numberValue24, modelHash do
      if workValue18 >= 0 then
        workValue20 = SetVehicleMod
        workValue21 = arg1
        workValue = cmgCall5
        textValue8 = workValue18
        flag4 = false
        workValue20(workValue21, workValue, textValue8, flag4)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: dataTable10; parameters: arg1, arg2) ===
function dataTable10(arg1, arg2)
  local arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3
  arg3 = dataTable2
  arg3 = arg3[arg1]
  textValue17 = pairs
  numberValue24 = arg3
  textValue17, numberValue24, modelHash, cmgCall5 = textValue17(numberValue24)
  for workValue18, workValue20 in textValue17, numberValue24, modelHash, cmgCall5 do
    workValue21 = type
    workValue = workValue20
    workValue21 = workValue21(workValue)
    if "number" == workValue21 then
      workValue21 = math
      workValue21 = workValue21.type
      workValue = workValue20
      workValue21 = workValue21(workValue)
      if "integer" == workValue21 then
        workValue21 = SetVehicleHandlingInt
        workValue = arg2
        textValue8 = "CHandlingData"
        flag4 = workValue18
        workValue3 = workValue20
        workValue21(workValue, textValue8, flag4, workValue3)
      else
        workValue21 = math
        workValue21 = workValue21.type
        workValue = workValue20
        workValue21 = workValue21(workValue)
        if "float" == workValue21 then
          workValue21 = SetVehicleHandlingFloat
          workValue = arg2
          textValue8 = "CHandlingData"
          flag4 = workValue18
          workValue3 = workValue20
          workValue21(workValue, textValue8, flag4, workValue3)
        end
      end
    else
      workValue21 = type
      workValue = workValue20
      workValue21 = workValue21(workValue)
      if "vector3" == workValue21 then
        workValue21 = SetVehicleHandlingVector
        workValue = arg2
        textValue8 = "CHandlingData"
        flag4 = workValue18
        workValue3 = workValue20
        workValue21(workValue, textValue8, flag4, workValue3)
      end
    end
  end
  textValue17 = dataTable9
  numberValue24 = arg2
  textValue17(numberValue24)
  textValue17 = notify
  numberValue24 = "~g~Baller Handling template applied to vehicle!"
  -- Beginner: Show a notification to the player.
  textValue17(numberValue24)
end

-- === HELPER FUNCTION (decompiler name: dataTable11; parameters: none) ===
function dataTable11()
  local arg1, arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3
  arg1 = GetVehiclePedIsUsing
  arg2 = PlayerPedId
  arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3 = arg2()
  arg1 = arg1(arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3)
  if 0 == arg1 then
    arg2 = notify
    arg3 = "~r~You are not in a vehicle."
    arg2(arg3)
    return
  end
  arg3 = dataTable8
  arg2 = dataTable7
  arg2 = arg2[arg3]
  arg3 = dataTable3
  arg3 = arg3[arg2]
  textValue17 = pairs
  numberValue24 = arg3
  textValue17, numberValue24, modelHash, cmgCall5 = textValue17(numberValue24)
  for workValue18, workValue20 in textValue17, numberValue24, modelHash, cmgCall5 do
    workValue21 = type
    workValue = workValue20
    workValue21 = workValue21(workValue)
    if "number" == workValue21 then
      workValue21 = math
      workValue21 = workValue21.type
      workValue = workValue20
      workValue21 = workValue21(workValue)
      if "integer" == workValue21 then
        workValue21 = SetVehicleHandlingInt
        workValue = arg1
        textValue8 = "CHandlingData"
        flag4 = workValue18
        workValue3 = workValue20
        workValue21(workValue, textValue8, flag4, workValue3)
      else
        workValue21 = math
        workValue21 = workValue21.type
        workValue = workValue20
        workValue21 = workValue21(workValue)
        if "float" == workValue21 then
          workValue21 = SetVehicleHandlingFloat
          workValue = arg1
          textValue8 = "CHandlingData"
          flag4 = workValue18
          workValue3 = workValue20
          workValue21(workValue, textValue8, flag4, workValue3)
        end
      end
    else
      workValue21 = type
      workValue = workValue20
      workValue21 = workValue21(workValue)
      if "vector3" == workValue21 then
        workValue21 = SetVehicleHandlingVector
        workValue = arg1
        textValue8 = "CHandlingData"
        flag4 = workValue18
        workValue3 = workValue20
        workValue21(workValue, textValue8, flag4, workValue3)
      end
    end
  end
  textValue17 = dataTable9
  numberValue24 = arg1
  textValue17(numberValue24)
  textValue17 = notify
  numberValue24 = "~g~Import Handling template applied to vehicle!"
  -- Beginner: Show a notification to the player.
  textValue17(numberValue24)
end
dataTable12 = {}
tableHelper = {}
tableHelper.name = "Black"
tableHelper.colorindex = 0
dataTable13 = {}
dataTable13.name = "White"
dataTable13.colorindex = 112
dataTable14 = {}
dataTable14.name = "Red"
dataTable14.colorindex = 27
vector3Builder = {}
vector3Builder.name = "Orange"
vector3Builder.colorindex = 38
vector3Builder2 = {}
vector3Builder2.name = "Yellow"
vector3Builder2.colorindex = 88
dataTable15 = {}
dataTable15.name = "Green"
dataTable15.colorindex = 92
dataTable16 = {}
dataTable16.name = "Blue"
dataTable16.colorindex = 64
dataTable17 = {}
dataTable17.name = "Pink"
dataTable17.colorindex = 135
dataTable18 = {}
dataTable18.name = "Purple"
dataTable18.colorindex = 142
dataTable12[1] = tableHelper
dataTable12[2] = dataTable13
dataTable12[3] = dataTable14
dataTable12[4] = vector3Builder
dataTable12[5] = vector3Builder2
dataTable12[6] = dataTable15
dataTable12[7] = dataTable16
dataTable12[8] = dataTable17
dataTable12[9] = dataTable18
tableHelper = vector3
dataTable13 = 2120.2885742188
dataTable14 = 2433.8576660156
vector3Builder = 152.3650390625
tableHelper = tableHelper(dataTable13, dataTable14, vector3Builder)
dataTable13 = {}
dataTable14 = {}
vector3Builder = vector3
vector3Builder2 = 2859.890625
dataTable15 = 3530.3603515625
dataTable16 = 54.06075668335
vector3Builder = vector3Builder(vector3Builder2, dataTable15, dataTable16)
vector3Builder2 = vector3
dataTable15 = 2901.5375976562
dataTable16 = 3662.1921386719
dataTable17 = 52.677833557129
vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = vector3Builder2(dataTable15, dataTable16, dataTable17)
dataTable14[1] = vector3Builder
dataTable14[2] = vector3Builder2
dataTable14[3] = dataTable15
dataTable14[4] = dataTable16
dataTable14[5] = dataTable17
dataTable14[6] = dataTable18
dataTable14[7] = dataTable19
dataTable14[8] = dataTable20
dataTable14[9] = tableHelper2
dataTable14[10] = dataTable21
dataTable14[11] = dataTable22
dataTable14[12] = vector3Builder3
dataTable14[13] = dataTable23
dataTable14[14] = dataTable24
dataTable14[15] = dataTable25
dataTable14[16] = dataTable26
dataTable14[17] = dataTable27
dataTable14[18] = dataTable28
dataTable14[19] = dataTable29
dataTable14[20] = dataTable30
dataTable14[21] = dataTable31
dataTable14[22] = dataTable32
dataTable14[23] = dataTable33
dataTable14[24] = dataTable34
dataTable14[25] = dataTable35
dataTable14[26] = dataTable36
dataTable14[27] = dataTable37
dataTable14[28] = rageUiCall2
dataTable14[29] = dataTable38
dataTable14[30] = dataTable39
dataTable14[31] = dataTable40
dataTable14[32] = dataTable41
dataTable14[33] = textValue22
dataTable14[34] = textValue23
dataTable14[35] = textValue24
dataTable14[36] = textValue25
dataTable14[37] = textValue26
dataTable14[38] = textValue27
dataTable14[39] = textValue28
dataTable14[40] = textValue30
dataTable14[41] = textValue31
dataTable14[42] = textValue32
dataTable14[43] = textValue33
dataTable14[44] = textValue34
dataTable14[45] = textValue35
dataTable14[46] = textValue36
dataTable14[47] = textValue37
dataTable14[48] = textValue38
dataTable14[49] = textValue39
dataTable14[50] = textValue40
dataTable14[51] = textValue41
dataTable14[52] = textValue42
dataTable14[53] = textValue43
dataTable14[54] = textValue44
dataTable14[55] = textValue45
dataTable14[56] = textValue46
dataTable14[57] = textValue47
dataTable14[58] = textValue48
dataTable14[59] = textValue49
dataTable14[60] = textValue50
dataTable14[61] = textValue51
dataTable14[62] = textValue52
dataTable14[63] = textValue53
dataTable14[64] = textValue54
dataTable14[65] = textValue55
dataTable14[66] = textValue56
dataTable14[67] = textValue57
dataTable14[68] = textValue58
dataTable14[69] = textValue59
dataTable14[70] = textValue
dataTable14[71] = textValue2
dataTable14[72] = textValue3
dataTable14[73] = textValue4
dataTable14[74] = textValue5
dataTable13["OLD: Super Sport"] = dataTable14
dataTable14 = {}
vector3Builder = vector3
vector3Builder2 = 2907.548828125
dataTable15 = 3684.9208984375
dataTable16 = 52.677875518799
vector3Builder = vector3Builder(vector3Builder2, dataTable15, dataTable16)
vector3Builder2 = vector3
dataTable15 = 2927.6743164062
dataTable16 = 3760.1481933594
dataTable17 = 52.678119659424
vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = vector3Builder2(dataTable15, dataTable16, dataTable17)
dataTable14[1] = vector3Builder
dataTable14[2] = vector3Builder2
dataTable14[3] = dataTable15
dataTable14[4] = dataTable16
dataTable14[5] = dataTable17
dataTable14[6] = dataTable18
dataTable14[7] = dataTable19
dataTable14[8] = dataTable20
dataTable14[9] = tableHelper2
dataTable14[10] = dataTable21
dataTable14[11] = dataTable22
dataTable14[12] = vector3Builder3
dataTable14[13] = dataTable23
dataTable14[14] = dataTable24
dataTable14[15] = dataTable25
dataTable14[16] = dataTable26
dataTable14[17] = dataTable27
dataTable14[18] = dataTable28
dataTable14[19] = dataTable29
dataTable14[20] = dataTable30
dataTable14[21] = dataTable31
dataTable14[22] = dataTable32
dataTable14[23] = dataTable33
dataTable14[24] = dataTable34
dataTable14[25] = dataTable35
dataTable14[26] = dataTable36
dataTable14[27] = dataTable37
dataTable14[28] = rageUiCall2
dataTable14[29] = dataTable38
dataTable14[30] = dataTable39
dataTable14[31] = dataTable40
dataTable14[32] = dataTable41
dataTable14[33] = textValue22
dataTable14[34] = textValue23
dataTable14[35] = textValue24
dataTable14[36] = textValue25
dataTable14[37] = textValue26
dataTable14[38] = textValue27
dataTable14[39] = textValue28
dataTable14[40] = textValue30
dataTable14[41] = textValue31
dataTable14[42] = textValue32
dataTable14[43] = textValue33
dataTable14[44] = textValue34
dataTable14[45] = textValue35
dataTable14[46] = textValue36
dataTable14[47] = textValue37
dataTable14[48] = textValue38
dataTable14[49] = textValue39
dataTable14[50] = textValue40
dataTable14[51] = textValue41
dataTable14[52] = textValue42
dataTable14[53] = textValue43
dataTable14[54] = textValue44
dataTable14[55] = textValue45
dataTable14[56] = textValue46
dataTable14[57] = textValue47
dataTable14[58] = textValue48
dataTable14[59] = textValue49
dataTable14[60] = textValue50
dataTable14[61] = textValue51
dataTable14[62] = textValue52
dataTable14[63] = textValue53
dataTable14[64] = textValue54
dataTable14[65] = textValue55
dataTable14[66] = textValue56
dataTable14[67] = textValue57
dataTable14[68] = textValue58
dataTable14[69] = textValue59
dataTable14[70] = textValue
dataTable14[71] = textValue2
dataTable14[72] = textValue3
dataTable14[73] = textValue4
dataTable14[74] = textValue5
dataTable13["OLD: Police Sport"] = dataTable14
dataTable14 = "OLD: Sport"
vector3Builder = {}
vector3Builder2 = vector3
dataTable15 = 2936.6784667969
dataTable16 = 3972.7023925781
dataTable17 = 51.692615509033
vector3Builder2 = vector3Builder2(dataTable15, dataTable16, dataTable17)
dataTable15 = vector3
dataTable16 = 2877.8898925781
dataTable17 = 4194.3125
dataTable18 = 50.136428833008
dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = dataTable15(dataTable16, dataTable17, dataTable18)
vector3Builder[1] = vector3Builder2
vector3Builder[2] = dataTable15
vector3Builder[3] = dataTable16
vector3Builder[4] = dataTable17
vector3Builder[5] = dataTable18
vector3Builder[6] = dataTable19
vector3Builder[7] = dataTable20
vector3Builder[8] = tableHelper2
vector3Builder[9] = dataTable21
vector3Builder[10] = dataTable22
vector3Builder[11] = vector3Builder3
vector3Builder[12] = dataTable23
vector3Builder[13] = dataTable24
vector3Builder[14] = dataTable25
vector3Builder[15] = dataTable26
vector3Builder[16] = dataTable27
vector3Builder[17] = dataTable28
vector3Builder[18] = dataTable29
vector3Builder[19] = dataTable30
vector3Builder[20] = dataTable31
vector3Builder[21] = dataTable32
vector3Builder[22] = dataTable33
vector3Builder[23] = dataTable34
vector3Builder[24] = dataTable35
vector3Builder[25] = dataTable36
vector3Builder[26] = dataTable37
vector3Builder[27] = rageUiCall2
vector3Builder[28] = dataTable38
vector3Builder[29] = dataTable39
vector3Builder[30] = dataTable40
vector3Builder[31] = dataTable41
vector3Builder[32] = textValue22
vector3Builder[33] = textValue23
vector3Builder[34] = textValue24
vector3Builder[35] = textValue25
vector3Builder[36] = textValue26
vector3Builder[37] = textValue27
vector3Builder[38] = textValue28
vector3Builder[39] = textValue30
vector3Builder[40] = textValue31
vector3Builder[41] = textValue32
vector3Builder[42] = textValue33
vector3Builder[43] = textValue34
vector3Builder[44] = textValue35
vector3Builder[45] = textValue36
vector3Builder[46] = textValue37
vector3Builder[47] = textValue38
vector3Builder[48] = textValue39
vector3Builder[49] = textValue40
vector3Builder[50] = textValue41
vector3Builder[51] = textValue42
vector3Builder[52] = textValue43
vector3Builder[53] = textValue44
vector3Builder[54] = textValue45
vector3Builder[55] = textValue46
vector3Builder[56] = textValue47
vector3Builder[57] = textValue48
vector3Builder[58] = textValue49
vector3Builder[59] = textValue50
vector3Builder[60] = textValue51
vector3Builder[61] = textValue52
vector3Builder[62] = textValue53
vector3Builder[63] = textValue54
vector3Builder[64] = textValue55
vector3Builder[65] = textValue56
vector3Builder[66] = textValue57
vector3Builder[67] = textValue58
vector3Builder[68] = textValue59
vector3Builder[69] = textValue
vector3Builder[70] = textValue2
vector3Builder[71] = textValue3
vector3Builder[72] = textValue4
vector3Builder[73] = textValue5
dataTable13[dataTable14] = vector3Builder
dataTable14 = "OLD: SUV"
vector3Builder = {}
vector3Builder2 = vector3
dataTable15 = 2830.4113769531
dataTable16 = 4340.48046875
dataTable17 = 49.984191894531
vector3Builder2 = vector3Builder2(dataTable15, dataTable16, dataTable17)
dataTable15 = vector3
dataTable16 = 2783.9580078125
dataTable17 = 4498.8803710938
dataTable18 = 47.151454925537
dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = dataTable15(dataTable16, dataTable17, dataTable18)
vector3Builder[1] = vector3Builder2
vector3Builder[2] = dataTable15
vector3Builder[3] = dataTable16
vector3Builder[4] = dataTable17
vector3Builder[5] = dataTable18
vector3Builder[6] = dataTable19
vector3Builder[7] = dataTable20
vector3Builder[8] = tableHelper2
vector3Builder[9] = dataTable21
vector3Builder[10] = dataTable22
vector3Builder[11] = vector3Builder3
vector3Builder[12] = dataTable23
vector3Builder[13] = dataTable24
vector3Builder[14] = dataTable25
vector3Builder[15] = dataTable26
vector3Builder[16] = dataTable27
vector3Builder[17] = dataTable28
vector3Builder[18] = dataTable29
vector3Builder[19] = dataTable30
vector3Builder[20] = dataTable31
vector3Builder[21] = dataTable32
vector3Builder[22] = dataTable33
vector3Builder[23] = dataTable34
vector3Builder[24] = dataTable35
vector3Builder[25] = dataTable36
vector3Builder[26] = dataTable37
vector3Builder[27] = rageUiCall2
vector3Builder[28] = dataTable38
vector3Builder[29] = dataTable39
vector3Builder[30] = dataTable40
vector3Builder[31] = dataTable41
vector3Builder[32] = textValue22
vector3Builder[33] = textValue23
vector3Builder[34] = textValue24
vector3Builder[35] = textValue25
vector3Builder[36] = textValue26
vector3Builder[37] = textValue27
vector3Builder[38] = textValue28
vector3Builder[39] = textValue30
vector3Builder[40] = textValue31
vector3Builder[41] = textValue32
vector3Builder[42] = textValue33
vector3Builder[43] = textValue34
vector3Builder[44] = textValue35
vector3Builder[45] = textValue36
vector3Builder[46] = textValue37
vector3Builder[47] = textValue38
vector3Builder[48] = textValue39
vector3Builder[49] = textValue40
vector3Builder[50] = textValue41
vector3Builder[51] = textValue42
vector3Builder[52] = textValue43
vector3Builder[53] = textValue44
vector3Builder[54] = textValue45
vector3Builder[55] = textValue46
vector3Builder[56] = textValue47
vector3Builder[57] = textValue48
vector3Builder[58] = textValue49
vector3Builder[59] = textValue50
vector3Builder[60] = textValue51
vector3Builder[61] = textValue52
vector3Builder[62] = textValue53
vector3Builder[63] = textValue54
vector3Builder[64] = textValue55
vector3Builder[65] = textValue56
vector3Builder[66] = textValue57
vector3Builder[67] = textValue58
vector3Builder[68] = textValue59
vector3Builder[69] = textValue
vector3Builder[70] = textValue2
vector3Builder[71] = textValue3
vector3Builder[72] = textValue4
vector3Builder[73] = textValue5
dataTable13[dataTable14] = vector3Builder
dataTable14 = "OLD: Semi Offroader"
vector3Builder = {}
vector3Builder2 = vector3
dataTable15 = 2830.4113769531
dataTable16 = 4340.48046875
dataTable17 = 49.984191894531
vector3Builder2 = vector3Builder2(dataTable15, dataTable16, dataTable17)
dataTable15 = vector3
dataTable16 = 2783.9580078125
dataTable17 = 4498.8803710938
dataTable18 = 47.151454925537
dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = dataTable15(dataTable16, dataTable17, dataTable18)
vector3Builder[1] = vector3Builder2
vector3Builder[2] = dataTable15
vector3Builder[3] = dataTable16
vector3Builder[4] = dataTable17
vector3Builder[5] = dataTable18
vector3Builder[6] = dataTable19
vector3Builder[7] = dataTable20
vector3Builder[8] = tableHelper2
vector3Builder[9] = dataTable21
vector3Builder[10] = dataTable22
vector3Builder[11] = vector3Builder3
vector3Builder[12] = dataTable23
vector3Builder[13] = dataTable24
vector3Builder[14] = dataTable25
vector3Builder[15] = dataTable26
vector3Builder[16] = dataTable27
vector3Builder[17] = dataTable28
vector3Builder[18] = dataTable29
vector3Builder[19] = dataTable30
vector3Builder[20] = dataTable31
vector3Builder[21] = dataTable32
vector3Builder[22] = dataTable33
vector3Builder[23] = dataTable34
vector3Builder[24] = dataTable35
vector3Builder[25] = dataTable36
vector3Builder[26] = dataTable37
vector3Builder[27] = rageUiCall2
vector3Builder[28] = dataTable38
vector3Builder[29] = dataTable39
vector3Builder[30] = dataTable40
vector3Builder[31] = dataTable41
vector3Builder[32] = textValue22
vector3Builder[33] = textValue23
vector3Builder[34] = textValue24
vector3Builder[35] = textValue25
vector3Builder[36] = textValue26
vector3Builder[37] = textValue27
vector3Builder[38] = textValue28
vector3Builder[39] = textValue30
vector3Builder[40] = textValue31
vector3Builder[41] = textValue32
vector3Builder[42] = textValue33
vector3Builder[43] = textValue34
vector3Builder[44] = textValue35
vector3Builder[45] = textValue36
vector3Builder[46] = textValue37
vector3Builder[47] = textValue38
vector3Builder[48] = textValue39
vector3Builder[49] = textValue40
vector3Builder[50] = textValue41
vector3Builder[51] = textValue42
vector3Builder[52] = textValue43
vector3Builder[53] = textValue44
vector3Builder[54] = textValue45
vector3Builder[55] = textValue46
vector3Builder[56] = textValue47
vector3Builder[57] = textValue48
vector3Builder[58] = textValue49
vector3Builder[59] = textValue50
vector3Builder[60] = textValue51
vector3Builder[61] = textValue52
vector3Builder[62] = textValue53
vector3Builder[63] = textValue54
vector3Builder[64] = textValue55
vector3Builder[65] = textValue56
vector3Builder[66] = textValue57
vector3Builder[67] = textValue58
vector3Builder[68] = textValue59
vector3Builder[69] = textValue
vector3Builder[70] = textValue2
vector3Builder[71] = textValue3
vector3Builder[72] = textValue4
vector3Builder[73] = textValue5
dataTable13[dataTable14] = vector3Builder
dataTable14 = "OLD: Offroader"
vector3Builder = {}
vector3Builder2 = vector3
dataTable15 = 2934.0314941406
dataTable16 = 3990.6062011719
dataTable17 = 51.546661376953
vector3Builder2 = vector3Builder2(dataTable15, dataTable16, dataTable17)
dataTable15 = vector3
dataTable16 = 2897.0686035156
dataTable17 = 4138.1010742188
dataTable18 = 50.389766693115
dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = dataTable15(dataTable16, dataTable17, dataTable18)
vector3Builder[1] = vector3Builder2
vector3Builder[2] = dataTable15
vector3Builder[3] = dataTable16
vector3Builder[4] = dataTable17
vector3Builder[5] = dataTable18
vector3Builder[6] = dataTable19
vector3Builder[7] = dataTable20
vector3Builder[8] = tableHelper2
vector3Builder[9] = dataTable21
vector3Builder[10] = dataTable22
vector3Builder[11] = vector3Builder3
vector3Builder[12] = dataTable23
vector3Builder[13] = dataTable24
vector3Builder[14] = dataTable25
vector3Builder[15] = dataTable26
vector3Builder[16] = dataTable27
vector3Builder[17] = dataTable28
vector3Builder[18] = dataTable29
vector3Builder[19] = dataTable30
vector3Builder[20] = dataTable31
vector3Builder[21] = dataTable32
vector3Builder[22] = dataTable33
vector3Builder[23] = dataTable34
vector3Builder[24] = dataTable35
vector3Builder[25] = dataTable36
vector3Builder[26] = dataTable37
vector3Builder[27] = rageUiCall2
vector3Builder[28] = dataTable38
vector3Builder[29] = dataTable39
vector3Builder[30] = dataTable40
vector3Builder[31] = dataTable41
vector3Builder[32] = textValue22
vector3Builder[33] = textValue23
vector3Builder[34] = textValue24
vector3Builder[35] = textValue25
vector3Builder[36] = textValue26
vector3Builder[37] = textValue27
vector3Builder[38] = textValue28
vector3Builder[39] = textValue30
vector3Builder[40] = textValue31
vector3Builder[41] = textValue32
vector3Builder[42] = textValue33
vector3Builder[43] = textValue34
vector3Builder[44] = textValue35
vector3Builder[45] = textValue36
vector3Builder[46] = textValue37
vector3Builder[47] = textValue38
vector3Builder[48] = textValue39
vector3Builder[49] = textValue40
vector3Builder[50] = textValue41
vector3Builder[51] = textValue42
vector3Builder[52] = textValue43
vector3Builder[53] = textValue44
vector3Builder[54] = textValue45
vector3Builder[55] = textValue46
vector3Builder[56] = textValue47
vector3Builder[57] = textValue48
vector3Builder[58] = textValue49
vector3Builder[59] = textValue50
vector3Builder[60] = textValue51
vector3Builder[61] = textValue52
vector3Builder[62] = textValue53
vector3Builder[63] = textValue54
vector3Builder[64] = textValue55
vector3Builder[65] = textValue56
vector3Builder[66] = textValue57
vector3Builder[67] = textValue58
vector3Builder[68] = textValue59
vector3Builder[69] = textValue
vector3Builder[70] = textValue2
vector3Builder[71] = textValue3
vector3Builder[72] = textValue4
vector3Builder[73] = textValue5
dataTable13[dataTable14] = vector3Builder
dataTable14 = {}
vector3Builder = vector3
vector3Builder2 = 2118.296875
dataTable15 = 3183.0803222656
dataTable16 = 152.139877319336
vector3Builder = vector3Builder(vector3Builder2, dataTable15, dataTable16)
vector3Builder2 = vector3
dataTable15 = 2120.1213378906
dataTable16 = 3318.7431640625
dataTable17 = 152.665840148926
vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = vector3Builder2(dataTable15, dataTable16, dataTable17)
dataTable14[1] = vector3Builder
dataTable14[2] = vector3Builder2
dataTable14[3] = dataTable15
dataTable14[4] = dataTable16
dataTable14[5] = dataTable17
dataTable14[6] = dataTable18
dataTable14[7] = dataTable19
dataTable14[8] = dataTable20
dataTable14[9] = tableHelper2
dataTable14[10] = dataTable21
dataTable14[11] = dataTable22
dataTable14[12] = vector3Builder3
dataTable14[13] = dataTable23
dataTable14[14] = dataTable24
dataTable14[15] = dataTable25
dataTable14[16] = dataTable26
dataTable14[17] = dataTable27
dataTable14[18] = dataTable28
dataTable14[19] = dataTable29
dataTable14[20] = dataTable30
dataTable14[21] = dataTable31
dataTable14[22] = dataTable32
dataTable14[23] = dataTable33
dataTable14[24] = dataTable34
dataTable14[25] = dataTable35
dataTable14[26] = dataTable36
dataTable14[27] = dataTable37
dataTable14[28] = rageUiCall2
dataTable14[29] = dataTable38
dataTable14[30] = dataTable39
dataTable14[31] = dataTable40
dataTable14[32] = dataTable41
dataTable14[33] = textValue22
dataTable14[34] = textValue23
dataTable14[35] = textValue24
dataTable14[36] = textValue25
dataTable14[37] = textValue26
dataTable14[38] = textValue27
dataTable14[39] = textValue28
dataTable14[40] = textValue30
dataTable14[41] = textValue31
dataTable14[42] = textValue32
dataTable14[43] = textValue33
dataTable14[44] = textValue34
dataTable14[45] = textValue35
dataTable14[46] = textValue36
dataTable14[47] = textValue37
dataTable14[48] = textValue38
dataTable14[49] = textValue39
dataTable14[50] = textValue40
dataTable14[51] = textValue41
dataTable14[52] = textValue42
dataTable14[53] = textValue43
dataTable14[54] = textValue44
dataTable14[55] = textValue45
dataTable14[56] = textValue46
dataTable14[57] = textValue47
dataTable14[58] = textValue48
dataTable14[59] = textValue49
dataTable14[60] = textValue50
dataTable14[61] = textValue51
dataTable14[62] = textValue52
dataTable14[63] = textValue53
dataTable14[64] = textValue54
dataTable14[65] = textValue55
dataTable14[66] = textValue56
dataTable14[67] = textValue57
dataTable14[68] = textValue58
dataTable14[69] = textValue59
dataTable14[70] = textValue
dataTable14[71] = textValue2
dataTable14[72] = textValue3
dataTable14[73] = textValue4
dataTable14[74] = textValue5
dataTable13.Super = dataTable14
dataTable14 = {}
vector3Builder = vector3
vector3Builder2 = 2120.2062988281
dataTable15 = 3327.2893066406
dataTable16 = 152.129135131836
vector3Builder = vector3Builder(vector3Builder2, dataTable15, dataTable16)
vector3Builder2 = vector3
dataTable15 = 2120.1062011719
dataTable16 = 3507.8864746094
dataTable17 = 152.665855407715
vector3Builder2, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = vector3Builder2(dataTable15, dataTable16, dataTable17)
dataTable14[1] = vector3Builder
dataTable14[2] = vector3Builder2
dataTable14[3] = dataTable15
dataTable14[4] = dataTable16
dataTable14[5] = dataTable17
dataTable14[6] = dataTable18
dataTable14[7] = dataTable19
dataTable14[8] = dataTable20
dataTable14[9] = tableHelper2
dataTable14[10] = dataTable21
dataTable14[11] = dataTable22
dataTable14[12] = vector3Builder3
dataTable14[13] = dataTable23
dataTable14[14] = dataTable24
dataTable14[15] = dataTable25
dataTable14[16] = dataTable26
dataTable14[17] = dataTable27
dataTable14[18] = dataTable28
dataTable14[19] = dataTable29
dataTable14[20] = dataTable30
dataTable14[21] = dataTable31
dataTable14[22] = dataTable32
dataTable14[23] = dataTable33
dataTable14[24] = dataTable34
dataTable14[25] = dataTable35
dataTable14[26] = dataTable36
dataTable14[27] = dataTable37
dataTable14[28] = rageUiCall2
dataTable14[29] = dataTable38
dataTable14[30] = dataTable39
dataTable14[31] = dataTable40
dataTable14[32] = dataTable41
dataTable14[33] = textValue22
dataTable14[34] = textValue23
dataTable14[35] = textValue24
dataTable14[36] = textValue25
dataTable14[37] = textValue26
dataTable14[38] = textValue27
dataTable14[39] = textValue28
dataTable14[40] = textValue30
dataTable14[41] = textValue31
dataTable14[42] = textValue32
dataTable14[43] = textValue33
dataTable14[44] = textValue34
dataTable14[45] = textValue35
dataTable14[46] = textValue36
dataTable14[47] = textValue37
dataTable14[48] = textValue38
dataTable14[49] = textValue39
dataTable14[50] = textValue40
dataTable14[51] = textValue41
dataTable14[52] = textValue42
dataTable14[53] = textValue43
dataTable14[54] = textValue44
dataTable14[55] = textValue45
dataTable14[56] = textValue46
dataTable14[57] = textValue47
dataTable14[58] = textValue48
dataTable14[59] = textValue49
dataTable14[60] = textValue50
dataTable14[61] = textValue51
dataTable14[62] = textValue52
dataTable14[63] = textValue53
dataTable14[64] = textValue54
dataTable14[65] = textValue55
dataTable14[66] = textValue56
dataTable14[67] = textValue57
dataTable14[68] = textValue58
dataTable14[69] = textValue59
dataTable14[70] = textValue
dataTable14[71] = textValue2
dataTable14[72] = textValue3
dataTable14[73] = textValue4
dataTable14[74] = textValue5
dataTable13["Police Sport"] = dataTable14
dataTable14 = "Segan/Sport"
vector3Builder = {}
vector3Builder2 = vector3
dataTable15 = 2120.2668457031
dataTable16 = 3520.6560058594
dataTable17 = 152.129661560059
vector3Builder2 = vector3Builder2(dataTable15, dataTable16, dataTable17)
dataTable15 = vector3
dataTable16 = 2120.3317871094
dataTable17 = 3718.7065429688
dataTable18 = 152.66487121582
dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = dataTable15(dataTable16, dataTable17, dataTable18)
vector3Builder[1] = vector3Builder2
vector3Builder[2] = dataTable15
vector3Builder[3] = dataTable16
vector3Builder[4] = dataTable17
vector3Builder[5] = dataTable18
vector3Builder[6] = dataTable19
vector3Builder[7] = dataTable20
vector3Builder[8] = tableHelper2
vector3Builder[9] = dataTable21
vector3Builder[10] = dataTable22
vector3Builder[11] = vector3Builder3
vector3Builder[12] = dataTable23
vector3Builder[13] = dataTable24
vector3Builder[14] = dataTable25
vector3Builder[15] = dataTable26
vector3Builder[16] = dataTable27
vector3Builder[17] = dataTable28
vector3Builder[18] = dataTable29
vector3Builder[19] = dataTable30
vector3Builder[20] = dataTable31
vector3Builder[21] = dataTable32
vector3Builder[22] = dataTable33
vector3Builder[23] = dataTable34
vector3Builder[24] = dataTable35
vector3Builder[25] = dataTable36
vector3Builder[26] = dataTable37
vector3Builder[27] = rageUiCall2
vector3Builder[28] = dataTable38
vector3Builder[29] = dataTable39
vector3Builder[30] = dataTable40
vector3Builder[31] = dataTable41
vector3Builder[32] = textValue22
vector3Builder[33] = textValue23
vector3Builder[34] = textValue24
vector3Builder[35] = textValue25
vector3Builder[36] = textValue26
vector3Builder[37] = textValue27
vector3Builder[38] = textValue28
vector3Builder[39] = textValue30
vector3Builder[40] = textValue31
vector3Builder[41] = textValue32
vector3Builder[42] = textValue33
vector3Builder[43] = textValue34
vector3Builder[44] = textValue35
vector3Builder[45] = textValue36
vector3Builder[46] = textValue37
vector3Builder[47] = textValue38
vector3Builder[48] = textValue39
vector3Builder[49] = textValue40
vector3Builder[50] = textValue41
vector3Builder[51] = textValue42
vector3Builder[52] = textValue43
vector3Builder[53] = textValue44
vector3Builder[54] = textValue45
vector3Builder[55] = textValue46
vector3Builder[56] = textValue47
vector3Builder[57] = textValue48
vector3Builder[58] = textValue49
vector3Builder[59] = textValue50
vector3Builder[60] = textValue51
vector3Builder[61] = textValue52
vector3Builder[62] = textValue53
vector3Builder[63] = textValue54
vector3Builder[64] = textValue55
vector3Builder[65] = textValue56
vector3Builder[66] = textValue57
vector3Builder[67] = textValue58
vector3Builder[68] = textValue59
vector3Builder[69] = textValue
vector3Builder[70] = textValue2
vector3Builder[71] = textValue3
vector3Builder[72] = textValue4
vector3Builder[73] = textValue5
dataTable13[dataTable14] = vector3Builder
dataTable14 = "Semi Offroader"
vector3Builder = {}
vector3Builder2 = vector3
dataTable15 = 2120.537109375
dataTable16 = 3713.6108398438
dataTable17 = 152.128982543945
vector3Builder2 = vector3Builder2(dataTable15, dataTable16, dataTable17)
dataTable15 = vector3
dataTable16 = 2120.3146972656
dataTable17 = 3911.8256835938
dataTable18 = 152.664909362793
dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, tableHelper2, dataTable21, dataTable22, vector3Builder3, dataTable23, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30, dataTable31, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable37, rageUiCall2, dataTable38, dataTable39, dataTable40, dataTable41, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48, textValue49, textValue50, textValue51, textValue52, textValue53, textValue54, textValue55, textValue56, textValue57, textValue58, textValue59, textValue, textValue2, textValue3, textValue4, textValue5 = dataTable15(dataTable16, dataTable17, dataTable18)
vector3Builder[1] = vector3Builder2
vector3Builder[2] = dataTable15
vector3Builder[3] = dataTable16
vector3Builder[4] = dataTable17
vector3Builder[5] = dataTable18
vector3Builder[6] = dataTable19
vector3Builder[7] = dataTable20
vector3Builder[8] = tableHelper2
vector3Builder[9] = dataTable21
vector3Builder[10] = dataTable22
vector3Builder[11] = vector3Builder3
vector3Builder[12] = dataTable23
vector3Builder[13] = dataTable24
vector3Builder[14] = dataTable25
vector3Builder[15] = dataTable26
vector3Builder[16] = dataTable27
vector3Builder[17] = dataTable28
vector3Builder[18] = dataTable29
vector3Builder[19] = dataTable30
vector3Builder[20] = dataTable31
vector3Builder[21] = dataTable32
vector3Builder[22] = dataTable33
vector3Builder[23] = dataTable34
vector3Builder[24] = dataTable35
vector3Builder[25] = dataTable36
vector3Builder[26] = dataTable37
vector3Builder[27] = rageUiCall2
vector3Builder[28] = dataTable38
vector3Builder[29] = dataTable39
vector3Builder[30] = dataTable40
vector3Builder[31] = dataTable41
vector3Builder[32] = textValue22
vector3Builder[33] = textValue23
vector3Builder[34] = textValue24
vector3Builder[35] = textValue25
vector3Builder[36] = textValue26
vector3Builder[37] = textValue27
vector3Builder[38] = textValue28
vector3Builder[39] = textValue30
vector3Builder[40] = textValue31
vector3Builder[41] = textValue32
vector3Builder[42] = textValue33
vector3Builder[43] = textValue34
vector3Builder[44] = textValue35
vector3Builder[45] = textValue36
vector3Builder[46] = textValue37
vector3Builder[47] = textValue38
vector3Builder[48] = textValue39
vector3Builder[49] = textValue40
vector3Builder[50] = textValue41
vector3Builder[51] = textValue42
vector3Builder[52] = textValue43
vector3Builder[53] = textValue44
vector3Builder[54] = textValue45
vector3Builder[55] = textValue46
vector3Builder[56] = textValue47
vector3Builder[57] = textValue48
vector3Builder[58] = textValue49
vector3Builder[59] = textValue50
vector3Builder[60] = textValue51
vector3Builder[61] = textValue52
vector3Builder[62] = textValue53
vector3Builder[63] = textValue54
vector3Builder[64] = textValue55
vector3Builder[65] = textValue56
vector3Builder[66] = textValue57
vector3Builder[67] = textValue58
vector3Builder[68] = textValue59
vector3Builder[69] = textValue
vector3Builder[70] = textValue2
vector3Builder[71] = textValue3
vector3Builder[72] = textValue4
vector3Builder[73] = textValue5
dataTable13[dataTable14] = vector3Builder
dataTable14 = {}
vector3Builder = "startDistance"
vector3Builder2 = vector3
dataTable15 = 2120.0769042969
dataTable16 = 3538.1611328125
dataTable17 = 152.13045501709
vector3Builder2 = vector3Builder2(dataTable15, dataTable16, dataTable17)
vector3Builder2 = tableHelper - vector3Builder2
vector3Builder2 = #vector3Builder2
dataTable14[vector3Builder] = vector3Builder2
vector3Builder = "endDistance"
vector3Builder2 = vector3
dataTable15 = 2120.40234375
dataTable16 = 3736.4074707031
dataTable17 = 152.664390563965
vector3Builder2 = vector3Builder2(dataTable15, dataTable16, dataTable17)
vector3Builder2 = tableHelper - vector3Builder2
vector3Builder2 = #vector3Builder2
dataTable14[vector3Builder] = vector3Builder2
dataTable13.Offroader = dataTable14
dataTable14 = {}
vector3Builder = nil
vector3Builder2 = 1
dataTable15 = {}
dataTable16 = table
dataTable16 = dataTable16.insert
dataTable17 = dataTable15
dataTable18 = "Display None"
dataTable16(dataTable17, dataTable18)
dataTable16 = _ENV
dataTable17 = "pairs"
dataTable16 = dataTable16[dataTable17]
dataTable17 = dataTable13
dataTable16, dataTable17, dataTable18, dataTable19 = dataTable16(dataTable17)
for dataTable20 in dataTable16, dataTable17, dataTable18, dataTable19 do
  tableHelper2 = table
  tableHelper2 = tableHelper2.insert
  dataTable21 = dataTable15
  dataTable22 = dataTable20
  tableHelper2(dataTable21, dataTable22)
end
dataTable16 = table
dataTable16 = dataTable16.insert
dataTable17 = dataTable15
dataTable18 = "Display All"
dataTable16(dataTable17, dataTable18)

-- === HELPER FUNCTION (decompiler name: dataTable16; parameters: none) ===
function dataTable16()
  local arg1, arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8, dataTable5
  arg1 = pairs
  arg2 = dataTable13
  arg1, arg2, arg3, textValue17 = arg1(arg2)
  for numberValue24, modelHash in arg1, arg2, arg3, textValue17 do
    cmgCall5 = modelHash[1]
    if cmgCall5 then
      cmgCall5 = modelHash[2]
      if cmgCall5 then
        cmgCall5 = pairs
        workValue18 = modelHash
        cmgCall5, workValue18, workValue20, workValue21 = cmgCall5(workValue18)
        for workValue, textValue8 in cmgCall5, workValue18, workValue20, workValue21 do
          flag4 = tCMG
          flag4 = flag4.addBlip
          workValue3 = textValue8.x
          nameValue = textValue8.y
          nameValue2 = textValue8.z
          numberValue5 = 1
          if 2 == workValue then
            numberValue7 = 1
            if numberValue7 then
              goto flow_label_27
            end
          end
          numberValue7 = 5
          ::flow_label_27::
          workValue8 = nil
          dataTable5 = 0.4
          flag4 = flag4(workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8, dataTable5)
          workValue3 = table
          workValue3 = workValue3.insert
          nameValue = dataTable14
          nameValue2 = flag4
          workValue3(nameValue, nameValue2)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: dataTable17; parameters: none) ===
function dataTable17()
  local arg1, arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18
  arg1 = pairs
  arg2 = dataTable14
  arg1, arg2, arg3, textValue17 = arg1(arg2)
  for numberValue24, modelHash in arg1, arg2, arg3, textValue17 do
    cmgCall5 = tCMG
    cmgCall5 = cmgCall5.removeBlip
    workValue18 = modelHash
    cmgCall5(workValue18)
  end
  arg1 = RemoveWeaponFromPed
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = -273849285
  arg1(arg2, arg3)
  arg1 = {}
  dataTable14 = arg1
end

-- === HELPER FUNCTION (decompiler name: dataTable18; parameters: none) ===
function dataTable18()
  local arg1, arg2
  arg1 = textValue14
  if arg1 then
    arg1 = CMG
    arg1 = arg1.getPlayerBucket
    arg1 = arg1()
    arg1 = 333 == arg1
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: dataTable19; parameters: arg1) ===
function dataTable19(arg1)
  local arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = GetEntityForwardVector
  textValue17 = PlayerPedId
  textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8 = textValue17()
  arg3 = arg3(textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8)
  textValue17 = GetEntityHeading
  numberValue24 = PlayerPedId
  numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8 = numberValue24()
  -- Beginner: result below is heading.
  textValue17 = textValue17(numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8)
  textValue17 = textValue17 + 90.0
  numberValue24 = pairs
  modelHash = arg1
  numberValue24, modelHash, cmgCall5, workValue18 = numberValue24(modelHash)
  for workValue20, workValue21 in numberValue24, modelHash, cmgCall5, workValue18 do
    workValue = Citizen
    workValue = workValue.Wait
    textValue8 = 250
    workValue(textValue8)
    workValue = dataTable18
    workValue = workValue()
    if not workValue then
      return
    end
    workValue = Citizen
    workValue = workValue.CreateThread

    -- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
    function textValue8()
      local arg12, arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29, flag
      arg12 = GetHashKey
      arg22 = workValue21
      -- Beginner: result below is hash.
      arg12 = arg12(arg22)
      arg22 = CMG
      arg22 = arg22.loadModel
      arg32 = arg12
      -- Beginner: Request/load a GTA model before spawning or applying it.
      arg22(arg32)
      arg22 = arg2
      arg32 = arg3
      arg32 = arg32 * 8.0
      textValue18 = workValue20
      arg32 = arg32 * textValue18
      arg22 = arg22 + arg32
      arg32 = CMG
      arg32 = arg32.requestEntitySpawn
      textValue18 = "cardev_rapid"
      workValue17 = arg12
      flag23 = arg22
      arg32(textValue18, workValue17, flag23)
      arg32 = CMG
      arg32 = arg32.spawnVehicle
      textValue18 = arg12
      workValue17 = arg22.x
      flag23 = arg22.y
      flag25 = arg22.z
      workValue19 = textValue17
      flag28 = false
      flag29 = true
      flag = true
      arg32 = arg32(textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29, flag)
      textValue18 = SetEntityAsMissionEntity
      workValue17 = arg32
      flag23 = true
      flag25 = true
      textValue18(workValue17, flag23, flag25)
      textValue18 = SetModelAsNoLongerNeeded
      workValue17 = arg12
      textValue18(workValue17)
      textValue18 = CMG
      textValue18 = textValue18.initLocalVehicle
      workValue17 = arg32
      textValue18(workValue17)
      textValue18 = SetEntityInvincible
      workValue17 = arg32
      flag23 = false
      textValue18(workValue17, flag23)
      textValue18 = CMG
      textValue18 = textValue18.applyMaxDefaultModsToVehicle
      workValue17 = arg32
      textValue18(workValue17)
      textValue18 = SetVehRadioStation
      workValue17 = arg32
      flag23 = "OFF"
      textValue18(workValue17, flag23)
      textValue18 = dataTable18
      textValue18 = textValue18()
      if not textValue18 then
        textValue18 = DeleteEntity
        workValue17 = arg32
        -- Beginner: Delete a GTA entity.
        textValue18(workValue17)
        return
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    workValue(textValue8)
  end
end
dataTable20 = false
tableHelper2 = {}
dataTable21 = {}
dataTable22 = "Offroader"
dataTable21[1] = dataTable22
dataTable22 = 1
vector3Builder3 = vector3
dataTable23 = 2120.3332519531
dataTable24 = 5278.6479492188
dataTable25 = 152.3650390625
vector3Builder3 = vector3Builder3(dataTable23, dataTable24, dataTable25)
dataTable23 = 0
dataTable24 = 1
dataTable25 = 0
dataTable26 = false
dataTable27 = false
dataTable28 = 0.0
dataTable29 = nil
dataTable30 = 0

-- === HELPER FUNCTION (decompiler name: dataTable31; parameters: none) ===
function dataTable31()
  local arg1, arg2
  arg1 = false
  dataTable20 = arg1
  arg1 = DeleteEntity
  arg2 = dataTable23
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = 0
  dataTable23 = arg1
  arg1 = 1
  dataTable24 = arg1
  arg1 = 0
  dataTable25 = arg1
  arg1 = 0.0
  dataTable28 = arg1
  arg1 = notify
  arg2 = "~r~Automated handling disabled."
  -- Beginner: Show a notification to the player.
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: dataTable32; parameters: none) ===
function dataTable32()
  local arg1, arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20
  arg1 = tableHelper2
  arg1 = #arg1
  if 0 == arg1 then
    arg1 = notify
    arg2 = "~r~No spawncodes set for automated handling."
    arg1(arg2)
    return
  end
  arg1 = false
  arg3 = dataTable22
  arg2 = dataTable21
  arg2 = arg2[arg3]
  arg3 = pairs
  textValue17 = dataTable15
  arg3, textValue17, numberValue24, modelHash = arg3(textValue17)
  for cmgCall5, workValue18 in arg3, textValue17, numberValue24, modelHash do
    if workValue18 == arg2 then
      vector3Builder2 = cmgCall5
      vector3Builder = workValue18
      arg1 = true
      break
    end
  end
  if not arg1 then
    arg3 = notify
    textValue17 = string
    textValue17 = textValue17.format
    numberValue24 = "~r~Unable to find markers for %s. Is this valid?"
    modelHash = arg2
    textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20 = textValue17(numberValue24, modelHash)
    -- Beginner: Show a notification to the player.
    arg3(textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20)
    return
  end
  arg3 = CMG
  arg3 = arg3.getTargetSpeedFromVehicleType
  textValue17 = string
  textValue17 = textValue17.lower
  numberValue24 = arg2
  textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20 = textValue17(numberValue24)
  arg3 = arg3(textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20)
  if not arg3 then
    arg3 = 250.0
  end
  textValue17 = arg3 * 0.44704
  dataTable28 = textValue17
  textValue17 = nil
  dataTable29 = textValue17
  textValue17 = true
  dataTable20 = textValue17
  textValue17 = notify
  numberValue24 = "~g~Automated handling enabled."
  textValue17(numberValue24)
end

-- === HELPER FUNCTION (decompiler name: dataTable33; parameters: arg1) ===
function dataTable33(arg1)
  local arg2, arg3
  arg1 = arg1 * 10000.0
  arg2 = arg1 % 1.0
  arg3 = 0.5
  if arg2 > arg3 then
    arg2 = math
    arg2 = arg2.ceil
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_18
    end
  end
  arg2 = math
  arg2 = arg2.floor
  arg3 = arg1
  arg2 = arg2(arg3)
  ::flow_label_18::
  arg2 = arg2 / 10000.0
  return arg2
end

-- === HELPER FUNCTION (decompiler name: dataTable34; parameters: arg1, arg2, arg3) ===
function dataTable34(arg1, arg2, arg3)
  local textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8
  textValue17 = ""

  -- === HELPER FUNCTION (decompiler name: numberValue24; parameters: arg12) ===
  function numberValue24(arg12)
    local arg22, arg32
    arg22 = textValue17
    if "" ~= arg22 then
      arg22 = textValue17
      arg32 = [[

			]]
      arg22 = arg22 .. arg32
      textValue17 = arg22
    end
    arg22 = textValue17
    arg32 = arg12
    arg22 = arg22 .. arg32
    textValue17 = arg22
  end
  modelHash = pairs
  cmgCall5 = arg2
  modelHash, cmgCall5, workValue18, workValue20 = modelHash(cmgCall5)
  for workValue21, workValue in modelHash, cmgCall5, workValue18, workValue20 do
    textValue8 = workValue.type
    if "float" == textValue8 then
      textValue8 = GetVehicleHandlingFloat
      flag4 = arg1
      workValue3 = arg3
      nameValue = workValue.name
      textValue8 = textValue8(flag4, workValue3, nameValue)
      flag4 = numberValue24
      workValue3 = string
      workValue3 = workValue3.format
      nameValue = "<%s value=\"%s\" />"
      nameValue2 = workValue.name
      numberValue5 = dataTable33
      numberValue7 = textValue8
      numberValue5, numberValue7, workValue8 = numberValue5(numberValue7)
      workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8 = workValue3(nameValue, nameValue2, numberValue5, numberValue7, workValue8)
      flag4(workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8)
    else
      textValue8 = workValue.type
      if "integer" == textValue8 then
        textValue8 = GetVehicleHandlingInt
        flag4 = arg1
        workValue3 = arg3
        nameValue = workValue.name
        textValue8 = textValue8(flag4, workValue3, nameValue)
        flag4 = numberValue24
        workValue3 = string
        workValue3 = workValue3.format
        nameValue = "<%s value=\"%s\" />"
        nameValue2 = workValue.name
        numberValue5 = textValue8
        workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8 = workValue3(nameValue, nameValue2, numberValue5)
        flag4(workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8)
      else
        textValue8 = workValue.type
        if "vector" == textValue8 then
          textValue8 = GetVehicleHandlingVector
          flag4 = arg1
          workValue3 = arg3
          nameValue = workValue.name
          textValue8 = textValue8(flag4, workValue3, nameValue)
          flag4 = numberValue24
          workValue3 = string
          workValue3 = workValue3.format
          nameValue = "<%s x=\"%s\" y=\"%s\" z=\"%s\" />"
          nameValue2 = workValue.name
          numberValue5 = textValue8.x
          numberValue7 = textValue8.y
          workValue8 = textValue8.z
          workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8 = workValue3(nameValue, nameValue2, numberValue5, numberValue7, workValue8)
          flag4(workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8)
        end
      end
    end
  end
  return textValue17
end

-- === HELPER FUNCTION (decompiler name: dataTable35; parameters: arg1) ===
function dataTable35(arg1)
  local arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7
  arg2 = dataTable25
  arg2 = arg1 - arg2
  arg3 = CMG
  arg3 = arg3.drawDebugText
  textValue17 = "Last Spawn Time: %s msec ago"
  numberValue24 = arg2
  arg3(textValue17, numberValue24)
  arg3 = 30000
  if arg2 < arg3 then
    arg3 = DoesEntityExist
    textValue17 = dataTable23
    arg3 = arg3(textValue17)
    if arg3 then
      arg3 = dataTable29
      if nil == arg3 then
        return
      end
    end
  end
  textValue17 = dataTable24
  arg3 = tableHelper2
  arg3 = arg3[textValue17]
  numberValue24 = dataTable22
  textValue17 = dataTable21
  textValue17 = textValue17[numberValue24]
  numberValue24 = dataTable29
  if true == numberValue24 then
    numberValue24 = dataTable24
    numberValue24 = numberValue24 + 1
    dataTable24 = numberValue24
    numberValue24 = 0
    dataTable30 = numberValue24
    numberValue24 = CMG
    numberValue24 = numberValue24.getVehicleTypeFromModel
    modelHash = GetEntityModel
    cmgCall5 = dataTable23
    modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7 = modelHash(cmgCall5)
    numberValue24 = numberValue24(modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7)
    modelHash = dataTable34
    cmgCall5 = dataTable23
    workValue18 = dataTable
    workValue20 = "CHandlingData"
    modelHash = modelHash(cmgCall5, workValue18, workValue20)
    cmgCall5 = TriggerServerEvent
    workValue18 = "ffc09bc489"
    workValue20 = arg3
    workValue21 = numberValue24
    workValue = textValue17
    textValue8 = modelHash
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ffc09bc489".
    cmgCall5(workValue18, workValue20, workValue21, workValue, textValue8)
  end
  numberValue24 = dataTable30
  if numberValue24 > 5 then
    numberValue24 = dataTable24
    numberValue24 = numberValue24 + 1
    dataTable24 = numberValue24
    numberValue24 = 0
    dataTable30 = numberValue24
    numberValue24 = notify
    modelHash = string
    modelHash = modelHash.format
    cmgCall5 = "~r~Failed to adjust vehicle %s, moving to next."
    workValue18 = arg3
    modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7 = modelHash(cmgCall5, workValue18)
    -- Beginner: Show a notification to the player.
    numberValue24(modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7)
  end
  numberValue24 = DeleteEntity
  modelHash = dataTable23
  -- Beginner: Delete a GTA entity.
  numberValue24(modelHash)
  numberValue24 = 0
  dataTable23 = numberValue24
  modelHash = dataTable24
  numberValue24 = tableHelper2
  numberValue24 = numberValue24[modelHash]
  if not numberValue24 then
    modelHash = dataTable31
    modelHash()
    return
  end
  modelHash = CMG
  modelHash = modelHash.loadModel
  cmgCall5 = numberValue24
  modelHash = modelHash(cmgCall5)
  if not modelHash then
    return
  end
  cmgCall5 = math
  cmgCall5 = cmgCall5.atan
  workValue18 = vector3Builder3.x
  workValue20 = tableHelper.x
  workValue18 = workValue18 - workValue20
  workValue20 = vector3Builder3.y
  workValue21 = tableHelper.y
  workValue20 = workValue20 - workValue21
  cmgCall5 = cmgCall5(workValue18, workValue20)
  workValue18 = CMG
  workValue18 = workValue18.spawnVehicle
  workValue20 = modelHash
  workValue21 = tableHelper.x
  workValue = tableHelper.y
  textValue8 = tableHelper.z
  flag4 = math
  flag4 = flag4.deg
  workValue3 = cmgCall5
  flag4 = flag4(workValue3)
  workValue3 = true
  nameValue = false
  nameValue2 = false
  workValue18 = workValue18(workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2)
  if 0 == workValue18 then
    return
  end
  workValue20 = rageUiCall5
  workValue20[workValue18] = true
  workValue20 = SetVehicleEngineOn
  workValue21 = workValue18
  workValue = true
  textValue8 = true
  flag4 = false
  workValue20(workValue21, workValue, textValue8, flag4)
  workValue20 = SetEntityProofs
  workValue21 = workValue18
  workValue = true
  textValue8 = true
  flag4 = true
  workValue3 = true
  nameValue = true
  nameValue2 = true
  numberValue5 = true
  numberValue7 = true
  workValue20(workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7)
  workValue20 = CMG
  workValue20 = workValue20.applyMaxDefaultModsToVehicle
  workValue21 = workValue18
  workValue20(workValue21)
  workValue20 = dataTable10
  workValue21 = textValue17
  workValue = workValue18
  workValue20(workValue21, workValue)
  workValue20 = dataTable30
  workValue20 = workValue20 + 1
  dataTable30 = workValue20
  workValue20 = dataTable30
  if workValue20 > 1 then
    workValue20 = dataTable26
    workValue20 = not workValue20
    workValue21 = dataTable27
    if workValue20 or workValue21 then
      workValue = GetVehicleHandlingFloat
      textValue8 = workValue18
      flag4 = "CHandlingData"
      workValue3 = "fInitialDragCoeff"
      workValue = workValue(textValue8, flag4, workValue3)
      textValue8 = GetVehicleHandlingFloat
      flag4 = workValue18
      workValue3 = "CHandlingData"
      nameValue = "fInitialDriveForce"
      textValue8 = textValue8(flag4, workValue3, nameValue)
      if workValue20 then
        flag4 = -0.05
        if flag4 then
          goto flow_label_175
        end
      end
      flag4 = 0.05
      ::flow_label_175::
      workValue3 = dataTable30
      flag4 = flag4 * workValue3
      workValue = workValue + flag4
      if workValue20 then
        flag4 = -0.01
        if flag4 then
          goto flow_label_186
        end
      end
      flag4 = 0.01
      ::flow_label_186::
      workValue3 = dataTable30
      flag4 = flag4 * workValue3
      textValue8 = textValue8 + flag4
      flag4 = SetVehicleHandlingFloat
      workValue3 = workValue18
      nameValue = "CHandlingData"
      nameValue2 = "fInitialDragCoeff"
      numberValue5 = workValue
      flag4(workValue3, nameValue, nameValue2, numberValue5)
      flag4 = SetVehicleHandlingFloat
      workValue3 = workValue18
      nameValue = "CHandlingData"
      nameValue2 = "fInitialDriveForce"
      numberValue5 = textValue8
      flag4(workValue3, nameValue, nameValue2, numberValue5)
      flag4 = dataTable9
      workValue3 = workValue18
      flag4(workValue3)
    end
  end
  dataTable23 = workValue18
  dataTable25 = arg1
  workValue20 = false
  dataTable26 = workValue20
  workValue20 = false
  dataTable27 = workValue20
  workValue20 = nil
  dataTable29 = workValue20
end

-- === HELPER FUNCTION (decompiler name: dataTable36; parameters: none) ===
function dataTable36()
  local arg1, arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18
  arg2 = vector3Builder
  arg1 = dataTable13
  arg1 = arg1[arg2]
  arg2 = GetEntityCoords
  arg3 = dataTable23
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3)
  arg3 = tableHelper
  arg3 = arg2 - arg3
  arg3 = #arg3
  textValue17 = arg1.startDistance
  if arg3 > textValue17 then
    arg3 = true
    dataTable26 = arg3
  end
  arg3 = GetEntitySpeed
  textValue17 = dataTable23
  -- Beginner: result below is speed.
  arg3 = arg3(textValue17)
  textValue17 = dataTable28
  textValue17 = textValue17 - 1.0
  if arg3 >= textValue17 then
    textValue17 = dataTable29
    if nil == textValue17 then
      textValue17 = dataTable26
      if textValue17 then
        textValue17 = dataTable27
        textValue17 = not textValue17
      end
      dataTable29 = textValue17
    end
  end
  textValue17 = CMG
  textValue17 = textValue17.drawDebugText
  numberValue24 = "Speed: %s Target: %s"
  modelHash = math
  modelHash = modelHash.floor
  cmgCall5 = arg3
  modelHash = modelHash(cmgCall5)
  cmgCall5 = math
  cmgCall5 = cmgCall5.floor
  workValue18 = dataTable28
  cmgCall5, workValue18 = cmgCall5(workValue18)
  textValue17(numberValue24, modelHash, cmgCall5, workValue18)
  textValue17 = tableHelper
  textValue17 = arg2 - textValue17
  textValue17 = #textValue17
  numberValue24 = arg1.endDistance
  if textValue17 > numberValue24 then
    textValue17 = true
    dataTable27 = textValue17
  end
  textValue17 = dataTable27
  if textValue17 then
    textValue17 = false
    dataTable29 = textValue17
  end
  textValue17 = CMG
  textValue17 = textValue17.drawDebugText
  numberValue24 = "Hit Start: %s"
  modelHash = dataTable26
  if modelHash then
    modelHash = "Yes"
    if modelHash then
      goto flow_label_69
    end
  end
  modelHash = "No"
  ::flow_label_69::
  textValue17(numberValue24, modelHash)
  textValue17 = CMG
  textValue17 = textValue17.drawDebugText
  numberValue24 = "Hit End: %s"
  modelHash = dataTable27
  if modelHash then
    modelHash = "Yes"
    if modelHash then
      goto flow_label_80
    end
  end
  modelHash = "No"
  ::flow_label_80::
  textValue17(numberValue24, modelHash)
  textValue17 = "Pending"
  numberValue24 = dataTable29
  if true == numberValue24 then
    textValue17 = "Success"
  else
    numberValue24 = dataTable29
    if false == numberValue24 then
      textValue17 = "Failed"
    end
  end
  numberValue24 = CMG
  numberValue24 = numberValue24.drawDebugText
  modelHash = "Has Done: %s"
  cmgCall5 = textValue17
  numberValue24(modelHash, cmgCall5)
end

-- === HELPER FUNCTION (decompiler name: dataTable37; parameters: none) ===
function dataTable37()
  local arg1, arg2, arg3, textValue17, numberValue24
  arg1 = CMG
  arg1 = arg1.drawDebugText
  arg2 = "----------Automated Handling ----------"
  arg1(arg2)
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = dataTable35
  arg3 = arg1
  arg2(arg3)
  arg2 = dataTable23
  if 0 == arg2 then
    return
  end
  arg2 = SetControlNormal
  arg3 = 0
  textValue17 = 71
  numberValue24 = 1.0
  arg2(arg3, textValue17, numberValue24)
  arg2 = dataTable36
  arg2()
end
rageUiCall2 = CMG
dataTable38 = "applyMaxDefaultModsToVehicle"

-- === HELPER FUNCTION (decompiler name: dataTable39; parameters: arg1) ===
function dataTable39(arg1)
  local arg2, arg3, textValue17, numberValue24, modelHash
  arg2 = SetVehicleModKit
  arg3 = arg1
  textValue17 = 0
  arg2(arg3, textValue17)
  arg2 = CMG
  arg2 = arg2.setVehicleMod
  arg3 = arg1
  textValue17 = 11
  numberValue24 = 2
  modelHash = false
  arg2(arg3, textValue17, numberValue24, modelHash)
  arg2 = CMG
  arg2 = arg2.setVehicleMod
  arg3 = arg1
  textValue17 = 13
  numberValue24 = 2
  modelHash = false
  arg2(arg3, textValue17, numberValue24, modelHash)
  arg2 = CMG
  arg2 = arg2.setVehicleMod
  arg3 = arg1
  textValue17 = 12
  numberValue24 = 2
  modelHash = false
  arg2(arg3, textValue17, numberValue24, modelHash)
  arg2 = CMG
  arg2 = arg2.setVehicleMod
  arg3 = arg1
  textValue17 = 15
  numberValue24 = 3
  modelHash = false
  arg2(arg3, textValue17, numberValue24, modelHash)
  arg2 = ToggleVehicleMod
  arg3 = arg1
  textValue17 = 18
  numberValue24 = true
  arg2(arg3, textValue17, numberValue24)
end
rageUiCall2[dataTable38] = dataTable39
rageUiCall2 = RageUI
dataTable38 = "CreateWhile"
rageUiCall2 = rageUiCall2[dataTable38]
dataTable38 = 1.0
dataTable39 = RMenu
dataTable40 = dataTable39
dataTable39 = dataTable39.Get
dataTable41 = "cardev"
textValue22 = "mainmenu"
-- Beginner: result below is menu.
dataTable39 = dataTable39(dataTable40, dataTable41, textValue22)
dataTable40 = nil

-- === HELPER FUNCTION (decompiler name: dataTable41; parameters: none) ===
function dataTable41()
  local arg1, arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue17 = "cardev"
  numberValue24 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue17, numberValue24)
  arg3 = true
  textValue17 = true
  numberValue24 = true

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local arg12, arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29
    arg12 = dataTable18
    arg12 = arg12()
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Spawn Vehicle (No Mods)"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4, cmgCall4, flag24, flag26
        if arg33 then
          arg4 = CMG
          arg4 = arg4.clientPrompt
          cmgCall4 = "Spawncode:"
          flag24 = ""

          -- === HELPER FUNCTION (decompiler name: flag26; parameters: arg14) ===
          function flag26(arg14)
            local stringHelper3, workValue14, cmgCall3, textValue19, textValue21, flag27, numberValue26, heading, cmgCall6, flag2, flag3
            stringHelper3 = dataTable18
            stringHelper3 = stringHelper3()
            if not stringHelper3 then
              return
            end
            stringHelper3 = string
            stringHelper3 = stringHelper3.gsub
            workValue14 = arg14
            cmgCall3 = "%s+"
            textValue19 = ""
            stringHelper3 = stringHelper3(workValue14, cmgCall3, textValue19)
            arg14 = stringHelper3
            if "" ~= arg14 then
              stringHelper3 = CMG
              stringHelper3 = stringHelper3.getPlayerBucket
              stringHelper3 = stringHelper3()
              if 333 == stringHelper3 then
                stringHelper3 = CMG
                stringHelper3 = stringHelper3.loadModel
                workValue14 = arg14
                stringHelper3 = stringHelper3(workValue14)
                if stringHelper3 then
                  workValue14 = dataTable18
                  workValue14 = workValue14()
                  if workValue14 then
                    goto flow_label_31
                  end
                end
                return
                ::flow_label_31::
                workValue14 = TriggerServerEvent
                cmgCall3 = "1e0bbaf6cd"
                textValue19 = arg14
                textValue21 = "/cardev"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
                workValue14(cmgCall3, textValue19, textValue21)
                workValue14 = CMG
                workValue14 = workValue14.getPlayerCoords
                -- Beginner: result below is playerCoords.
                workValue14 = workValue14()
                cmgCall3 = CMG
                cmgCall3 = cmgCall3.requestEntitySpawn
                textValue19 = "cardev"
                textValue21 = stringHelper3
                cmgCall3(textValue19, textValue21)
                cmgCall3 = CMG
                cmgCall3 = cmgCall3.spawnVehicle
                textValue19 = stringHelper3
                textValue21 = workValue14.x
                flag27 = workValue14.y
                numberValue26 = workValue14.z
                heading = GetEntityHeading
                cmgCall6 = CMG
                cmgCall6 = cmgCall6.getPlayerPed
                cmgCall6, flag2, flag3 = cmgCall6()
                -- Beginner: result below is heading.
                heading = heading(cmgCall6, flag2, flag3)
                cmgCall6 = true
                flag2 = true
                flag3 = true
                cmgCall3 = cmgCall3(textValue19, textValue21, flag27, numberValue26, heading, cmgCall6, flag2, flag3)
                textValue19 = CMG
                textValue19 = textValue19.initLocalVehicle
                textValue21 = cmgCall3
                textValue19(textValue21)
                textValue19 = rageUiCall5
                textValue19[cmgCall3] = true
                textValue19 = SetVehicleOnGroundProperly
                textValue21 = cmgCall3
                textValue19(textValue21)
                textValue19 = SetEntityInvincible
                textValue21 = cmgCall3
                flag27 = false
                textValue19(textValue21, flag27)
                textValue19 = SetPedIntoVehicle
                textValue21 = CMG
                textValue21 = textValue21.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                textValue21 = textValue21()
                flag27 = cmgCall3
                numberValue26 = -1
                textValue19(textValue21, flag27, numberValue26)
                textValue19 = SetModelAsNoLongerNeeded
                textValue21 = stringHelper3
                textValue19(textValue21)
                textValue19 = SetVehRadioStation
                textValue21 = cmgCall3
                flag27 = "OFF"
                textValue19(textValue21, flag27)
                textValue19 = Wait
                textValue21 = 500
                textValue19(textValue21)
                textValue19 = SetVehRadioStation
                textValue21 = cmgCall3
                flag27 = "OFF"
                textValue19(textValue21, flag27)
                textValue19 = dataTable18
                textValue19 = textValue19()
                if not textValue19 then
                  textValue19 = DeleteEntity
                  textValue21 = cmgCall3
                  -- Beginner: Delete a GTA entity.
                  textValue19(textValue21)
                end
              end
            end
          end
          arg4(cmgCall4, flag24, flag26)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Spawn Vehicle (Full Mods)"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4, cmgCall4, flag24, flag26
        if arg33 then
          arg4 = CMG
          arg4 = arg4.clientPrompt
          cmgCall4 = "Spawncode:"
          flag24 = ""

          -- === HELPER FUNCTION (decompiler name: flag26; parameters: arg14) ===
          function flag26(arg14)
            local stringHelper3, workValue14, cmgCall3, textValue19, textValue21, flag27, numberValue26, heading, cmgCall6, flag2, flag3
            stringHelper3 = dataTable18
            stringHelper3 = stringHelper3()
            if not stringHelper3 then
              return
            end
            stringHelper3 = string
            stringHelper3 = stringHelper3.gsub
            workValue14 = arg14
            cmgCall3 = "%s+"
            textValue19 = ""
            stringHelper3 = stringHelper3(workValue14, cmgCall3, textValue19)
            arg14 = stringHelper3
            if "" ~= arg14 then
              stringHelper3 = CMG
              stringHelper3 = stringHelper3.getPlayerBucket
              stringHelper3 = stringHelper3()
              if 333 == stringHelper3 then
                stringHelper3 = CMG
                stringHelper3 = stringHelper3.loadModel
                workValue14 = arg14
                stringHelper3 = stringHelper3(workValue14)
                if stringHelper3 then
                  workValue14 = dataTable18
                  workValue14 = workValue14()
                  if workValue14 then
                    goto flow_label_31
                  end
                end
                return
                ::flow_label_31::
                workValue14 = TriggerServerEvent
                cmgCall3 = "1e0bbaf6cd"
                textValue19 = arg14
                textValue21 = "/cardev"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
                workValue14(cmgCall3, textValue19, textValue21)
                workValue14 = CMG
                workValue14 = workValue14.getPlayerCoords
                -- Beginner: result below is playerCoords.
                workValue14 = workValue14()
                cmgCall3 = CMG
                cmgCall3 = cmgCall3.requestEntitySpawn
                textValue19 = "cardev"
                textValue21 = stringHelper3
                cmgCall3(textValue19, textValue21)
                cmgCall3 = CMG
                cmgCall3 = cmgCall3.spawnVehicle
                textValue19 = stringHelper3
                textValue21 = workValue14.x
                flag27 = workValue14.y
                numberValue26 = workValue14.z
                heading = GetEntityHeading
                cmgCall6 = CMG
                cmgCall6 = cmgCall6.getPlayerPed
                cmgCall6, flag2, flag3 = cmgCall6()
                -- Beginner: result below is heading.
                heading = heading(cmgCall6, flag2, flag3)
                cmgCall6 = true
                flag2 = true
                flag3 = true
                cmgCall3 = cmgCall3(textValue19, textValue21, flag27, numberValue26, heading, cmgCall6, flag2, flag3)
                textValue19 = CMG
                textValue19 = textValue19.initLocalVehicle
                textValue21 = cmgCall3
                textValue19(textValue21)
                textValue19 = rageUiCall5
                textValue19[cmgCall3] = true
                textValue19 = SetVehicleOnGroundProperly
                textValue21 = cmgCall3
                textValue19(textValue21)
                textValue19 = SetEntityInvincible
                textValue21 = cmgCall3
                flag27 = false
                textValue19(textValue21, flag27)
                textValue19 = CMG
                textValue19 = textValue19.applyMaxDefaultModsToVehicle
                textValue21 = cmgCall3
                textValue19(textValue21)
                textValue19 = SetPedIntoVehicle
                textValue21 = CMG
                textValue21 = textValue21.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                textValue21 = textValue21()
                flag27 = cmgCall3
                numberValue26 = -1
                textValue19(textValue21, flag27, numberValue26)
                textValue19 = SetModelAsNoLongerNeeded
                textValue21 = stringHelper3
                textValue19(textValue21)
                textValue19 = SetVehRadioStation
                textValue21 = cmgCall3
                flag27 = "OFF"
                textValue19(textValue21, flag27)
                textValue19 = Wait
                textValue21 = 500
                textValue19(textValue21)
                textValue19 = SetVehRadioStation
                textValue21 = cmgCall3
                flag27 = "OFF"
                textValue19(textValue21, flag27)
                textValue19 = dataTable18
                textValue19 = textValue19()
                if not textValue19 then
                  textValue19 = DeleteEntity
                  textValue21 = cmgCall3
                  -- Beginner: Delete a GTA entity.
                  textValue19(textValue21)
                end
              end
            end
          end
          arg4(cmgCall4, flag24, flag26)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Delete Vehicle"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4, cmgCall4, flag24, flag26, numberValue25
        if arg33 then
          arg4 = GetVehiclePedIsIn
          cmgCall4 = CMG
          cmgCall4 = cmgCall4.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall4 = cmgCall4()
          flag24 = false
          -- Beginner: result below is currentVehicle.
          arg4 = arg4(cmgCall4, flag24)
          cmgCall4 = NetworkGetEntityIsNetworked
          flag24 = arg4
          cmgCall4 = cmgCall4(flag24)
          if cmgCall4 then
            cmgCall4 = NetworkGetNetworkIdFromEntity
            flag24 = arg4
            cmgCall4 = cmgCall4(flag24)
            if 0 ~= cmgCall4 then
              flag24 = TriggerServerEvent
              flag26 = "8d97d3c809"
              numberValue25 = cmgCall4
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8d97d3c809".
              flag24(flag26, numberValue25)
            end
          else
            cmgCall4 = DeleteEntity
            flag24 = arg4
            -- Beginner: Delete a GTA entity.
            cmgCall4(flag24)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Fix Vehicle"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4, cmgCall4, flag24, flag26, numberValue25
        if arg33 then
          arg4 = CMG
          arg4 = arg4.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          arg4 = arg4()
          cmgCall4 = IsPedInAnyVehicle
          flag24 = arg4
          flag26 = true
          cmgCall4 = cmgCall4(flag24, flag26)
          if cmgCall4 then
            cmgCall4 = GetVehiclePedIsIn
            flag24 = arg4
            flag26 = false
            -- Beginner: result below is currentVehicle.
            cmgCall4 = cmgCall4(flag24, flag26)
            flag24 = SetVehicleEngineHealth
            flag26 = cmgCall4
            numberValue25 = 9999
            flag24(flag26, numberValue25)
            flag24 = SetVehiclePetrolTankHealth
            flag26 = cmgCall4
            numberValue25 = 9999
            flag24(flag26, numberValue25)
            flag24 = SetVehicleFixed
            flag26 = cmgCall4
            flag24(flag26)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23)
      arg12 = RageUI
      arg12 = arg12.List
      arg22 = "Teleport"
      arg32 = textValue15
      textValue18 = rageUiCall
      workValue17 = nil
      flag23 = {}
      flag25 = true

      -- === HELPER FUNCTION (decompiler name: workValue19; parameters: arg13, arg23, arg33, arg4) ===
      function workValue19(arg13, arg23, arg33, arg4)
        local cmgCall4, flag24, flag26
        rageUiCall = arg4
        if arg33 then
          cmgCall4 = CMG
          cmgCall4 = cmgCall4.teleport
          flag26 = rageUiCall
          flag24 = textValue16
          flag24 = flag24[flag26]
          flag26 = true
          cmgCall4(flag24, flag26)
        end
      end

      -- === HELPER FUNCTION (decompiler name: flag28; parameters: none) ===
      function flag28()
        local arg13, arg23
      end
      -- Beginner: Draw a RageUI list selector.
      arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28)
      arg12 = CMG
      arg12 = arg12.hasClientPermission
      arg22 = "cardev.whitelisted"
      arg12 = arg12(arg22)
      if arg12 then
        arg12 = RageUI
        arg12 = arg12.List
        arg22 = "Marker Display"
        arg32 = dataTable15
        textValue18 = vector3Builder2
        workValue17 = nil
        flag23 = {}
        flag25 = true

        -- === HELPER FUNCTION (decompiler name: workValue19; parameters: arg13, arg23, arg33, arg4) ===
        function workValue19(arg13, arg23, arg33, arg4)
          local cmgCall4
          cmgCall4 = vector3Builder2
          if arg4 ~= cmgCall4 then
            if 1 == arg4 then
              cmgCall4 = nil
              vector3Builder = cmgCall4
            else
              cmgCall4 = dataTable15
              cmgCall4 = cmgCall4[arg4]
              if cmgCall4 then
                cmgCall4 = dataTable15
                cmgCall4 = cmgCall4[arg4]
                vector3Builder = cmgCall4
              end
            end
            vector3Builder2 = arg4
          end
        end
        arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19)
        arg12 = RageUI
        arg12 = arg12.List
        arg22 = "Apply Baller Template"
        arg32 = dataTable4
        textValue18 = dataTable6
        workValue17 = nil
        flag23 = {}
        flag25 = true

        -- === HELPER FUNCTION (decompiler name: workValue19; parameters: arg13, arg23, arg33, arg4) ===
        function workValue19(arg13, arg23, arg33, arg4)
          local cmgCall4, flag24, flag26, numberValue25, numberValue27
          cmgCall4 = dataTable6
          if arg4 ~= cmgCall4 then
            dataTable6 = arg4
          end
          if arg33 then
            flag24 = dataTable6
            cmgCall4 = dataTable4
            cmgCall4 = cmgCall4[flag24]
            flag24 = CMG
            flag24 = flag24.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            flag24 = flag24()
            if 0 == flag24 then
              flag26 = notify
              numberValue25 = "~r~You are not in a vehicle."
              -- Beginner: Show a notification to the player.
              flag26(numberValue25)
              return
            end
            flag26 = dataTable10
            numberValue25 = cmgCall4
            numberValue27 = flag24
            flag26(numberValue25, numberValue27)
          end
        end
        -- Beginner: Draw a RageUI list selector.
        arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19)
        arg12 = RageUI
        arg12 = arg12.List
        arg22 = "Apply Import Template"
        arg32 = dataTable7
        textValue18 = dataTable8
        workValue17 = nil
        flag23 = {}
        flag25 = true

        -- === HELPER FUNCTION (decompiler name: workValue19; parameters: arg13, arg23, arg33, arg4) ===
        function workValue19(arg13, arg23, arg33, arg4)
          local cmgCall4
          cmgCall4 = dataTable8
          if arg4 ~= cmgCall4 then
            dataTable8 = arg4
          end
          if arg33 then
            cmgCall4 = dataTable11
            cmgCall4()
          end
        end
        -- Beginner: Draw a RageUI list selector.
        arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19)
      end
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Cycle through seats"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4, cmgCall4, flag24, flag26, numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3, workValue4
        if arg33 then
          arg4 = CMG
          arg4 = arg4.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          arg4 = arg4()
          cmgCall4 = IsPedInAnyVehicle
          flag24 = arg4
          flag26 = true
          cmgCall4 = cmgCall4(flag24, flag26)
          if cmgCall4 then
            cmgCall4 = GetVehiclePedIsIn
            flag24 = arg4
            flag26 = false
            -- Beginner: result below is currentVehicle.
            cmgCall4 = cmgCall4(flag24, flag26)
            flag24 = GetVehicleModelNumberOfSeats
            flag26 = GetEntityModel
            numberValue25 = cmgCall4
            flag26, numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3, workValue4 = flag26(numberValue25)
            flag24 = flag24(flag26, numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3, workValue4)
            flag26 = -1
            numberValue25 = flag24 - 2
            numberValue27 = 1
            for dataTable42 = flag26, numberValue25, numberValue27 do
              waitCall = IsVehicleSeatFree
              numberValue2 = cmgCall4
              numberValue3 = dataTable42
              waitCall = waitCall(numberValue2, numberValue3)
              if waitCall then
                waitCall = TaskWarpPedIntoVehicle
                numberValue2 = arg4
                numberValue3 = cmgCall4
                workValue4 = dataTable42
                waitCall(numberValue2, numberValue3, workValue4)
                waitCall = Wait
                numberValue2 = 2000
                waitCall(numberValue2)
              end
            end
          else
            cmgCall4 = tCMG
            cmgCall4 = cmgCall4.notify
            flag24 = "~r~Not in a vehicle."
            -- Beginner: Show a notification to the player.
            cmgCall4(flag24)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Get API Key"
      arg32 = "Gets your API key to be used in localhost. Do not share this key."
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4, cmgCall4
        if arg33 then
          arg4 = TriggerServerEvent
          cmgCall4 = "ff5e215cf8"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ff5e215cf8".
          arg4(cmgCall4)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Vehicle Mods"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4, cmgCall4, flag24, flag26
        if arg33 then
          arg4 = CMG
          arg4 = arg4.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          arg4 = arg4()
          cmgCall4 = IsPedInAnyVehicle
          flag24 = arg4
          flag26 = true
          cmgCall4 = cmgCall4(flag24, flag26)
          if not cmgCall4 then
            cmgCall4 = tCMG
            cmgCall4 = cmgCall4.notify
            flag24 = "~r~Not in a vehicle."
            -- Beginner: Show a notification to the player.
            cmgCall4(flag24)
          end
        end
      end
      flag25 = RMenu
      workValue19 = flag25
      flag25 = flag25.Get
      flag28 = "cardev"
      flag29 = "vehiclemods"
      flag25, workValue19, flag28, flag29 = flag25(workValue19, flag28, flag29)
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Vehicle Extras"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: none) ===
      function flag23()
        local arg13, arg23
      end
      flag25 = RMenu
      workValue19 = flag25
      flag25 = flag25.Get
      flag28 = "cardev"
      flag29 = "extras"
      flag25, workValue19, flag28, flag29 = flag25(workValue19, flag28, flag29)
      arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Vehicle Colours"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: none) ===
      function flag23()
        local arg13, arg23
      end
      flag25 = RMenu
      workValue19 = flag25
      flag25 = flag25.Get
      flag28 = "cardev"
      flag29 = "colours"
      flag25, workValue19, flag28, flag29 = flag25(workValue19, flag28, flag29)
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29)
      arg12 = RageUI
      arg12 = arg12.List
      arg22 = "Dirt Level"
      arg32 = textValue20
      textValue18 = rageUiCall3
      workValue17 = ""
      flag23 = {}
      flag25 = true

      -- === HELPER FUNCTION (decompiler name: workValue19; parameters: arg13, arg23, arg33, arg4) ===
      function workValue19(arg13, arg23, arg33, arg4)
        local cmgCall4, flag24, flag26, numberValue25
        cmgCall4 = rageUiCall3
        if arg4 ~= cmgCall4 then
          rageUiCall3 = arg4
          cmgCall4 = CMG
          cmgCall4 = cmgCall4.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          cmgCall4 = cmgCall4()
          if 0 ~= cmgCall4 then
            flag24 = SetVehicleDirtLevel
            flag26 = cmgCall4
            numberValue25 = textValue29
            numberValue25 = numberValue25[arg4]
            numberValue25 = numberValue25 * 15.0
            flag24(flag26, numberValue25)
          else
            flag24 = tCMG
            flag24 = flag24.notify
            flag26 = "~r~Not in a vehicle."
            -- Beginner: Show a notification to the player.
            flag24(flag26)
          end
        end
      end
      -- Beginner: Draw a RageUI list selector.
      arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Fill Last Vehicle"
      arg32 = "Fills the last vehicle you was in."
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4, cmgCall4, flag24, flag26, numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3, workValue4, workValue6, numberValue4, workValue7, flag7, playerPed, flag8, flag9, flag10, flag11, flag12, flag14, flag16
        if arg33 then
          arg4 = GetVehiclePedIsIn
          cmgCall4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          cmgCall4 = cmgCall4()
          flag24 = true
          -- Beginner: result below is currentVehicle.
          arg4 = arg4(cmgCall4, flag24)
          if 0 == arg4 then
            cmgCall4 = notify
            flag24 = "~r~Can not find the last vehicle."
            -- Beginner: Show a notification to the player.
            cmgCall4(flag24)
            return
          end
          cmgCall4 = CMG
          cmgCall4 = cmgCall4.loadModel
          flag24 = -598109171
          cmgCall4 = cmgCall4(flag24)
          if not cmgCall4 then
            return
          end
          flag24 = CMG
          flag24 = flag24.getPlayerCoords
          -- Beginner: result below is playerCoords.
          flag24 = flag24()
          flag26 = GetEntityHeading
          numberValue25 = PlayerPedId
          numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3, workValue4, workValue6, numberValue4, workValue7, flag7, playerPed, flag8, flag9, flag10, flag11, flag12, flag14, flag16 = numberValue25()
          -- Beginner: result below is heading.
          flag26 = flag26(numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3, workValue4, workValue6, numberValue4, workValue7, flag7, playerPed, flag8, flag9, flag10, flag11, flag12, flag14, flag16)
          numberValue25 = GetEntityModel
          numberValue27 = arg4
          -- Beginner: result below is modelHash.
          numberValue25 = numberValue25(numberValue27)
          numberValue27 = GetVehicleModelNumberOfSeats
          dataTable42 = numberValue25
          numberValue27 = numberValue27(dataTable42)
          dataTable42 = {}
          waitCall = 1
          numberValue2 = numberValue27
          numberValue3 = 1
          for workValue4 = waitCall, numberValue2, numberValue3 do
            workValue6 = CreatePed
            numberValue4 = 0
            workValue7 = cmgCall4
            flag7 = flag24.x
            playerPed = flag24.y
            flag8 = flag24.z
            flag9 = flag26
            flag10 = false
            flag11 = false
            -- Beginner: result below is pedEntity.
            workValue6 = workValue6(numberValue4, workValue7, flag7, playerPed, flag8, flag9, flag10, flag11)
            numberValue4 = SetPedCanRagdoll
            workValue7 = workValue6
            flag7 = false
            numberValue4(workValue7, flag7)
            numberValue4 = SetEntityProofs
            workValue7 = workValue6
            flag7 = true
            playerPed = true
            flag8 = true
            flag9 = true
            flag10 = true
            flag11 = true
            flag12 = true
            flag14 = true
            numberValue4(workValue7, flag7, playerPed, flag8, flag9, flag10, flag11, flag12, flag14)
            numberValue4 = SetEntityCanBeDamaged
            workValue7 = workValue6
            flag7 = false
            numberValue4(workValue7, flag7)
            numberValue4 = SetBlockingOfNonTemporaryEvents
            workValue7 = workValue6
            flag7 = true
            numberValue4(workValue7, flag7)
            numberValue4 = table
            numberValue4 = numberValue4.insert
            workValue7 = dataTable42
            flag7 = workValue6
            numberValue4(workValue7, flag7)
          end
          waitCall = pairs
          numberValue2 = dataTable42
          waitCall, numberValue2, numberValue3, workValue4 = waitCall(numberValue2)
          for workValue6, numberValue4 in waitCall, numberValue2, numberValue3, workValue4 do
            workValue7 = pairs
            flag7 = dataTable42
            workValue7, flag7, playerPed, flag8 = workValue7(flag7)
            for flag9, flag10 in workValue7, flag7, playerPed, flag8 do
              if numberValue4 ~= flag10 then
                flag11 = SetEntityNoCollisionEntity
                flag12 = numberValue4
                flag14 = flag10
                flag16 = false
                flag11(flag12, flag14, flag16)
                flag11 = SetEntityNoCollisionEntity
                flag12 = flag10
                flag14 = numberValue4
                flag16 = false
                flag11(flag12, flag14, flag16)
              end
            end
            workValue7 = SetEntityNoCollisionEntity
            flag7 = numberValue4
            playerPed = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            playerPed = playerPed()
            flag8 = false
            workValue7(flag7, playerPed, flag8)
            workValue7 = TaskEnterVehicle
            flag7 = numberValue4
            playerPed = arg4
            flag8 = -1
            flag9 = workValue6 - 2
            flag10 = 2.0
            flag11 = 1
            flag12 = false
            workValue7(flag7, playerPed, flag8, flag9, flag10, flag11, flag12)
          end
          waitCall = SetTimeout
          numberValue2 = 30000

          -- === HELPER FUNCTION (decompiler name: numberValue3; parameters: none) ===
          function numberValue3()
            local arg14, stringHelper3, workValue14, cmgCall3, textValue19, textValue21, flag27, numberValue26
            arg14 = pairs
            stringHelper3 = dataTable42
            arg14, stringHelper3, workValue14, cmgCall3 = arg14(stringHelper3)
            for textValue19, textValue21 in arg14, stringHelper3, workValue14, cmgCall3 do
              flag27 = DeleteEntity
              numberValue26 = textValue21
              -- Beginner: Delete a GTA entity.
              flag27(numberValue26)
            end
          end
          waitCall(numberValue2, numberValue3)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Give Testing Weapons"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4, cmgCall4, flag24
        if arg33 then
          arg4 = CMG
          arg4 = arg4.giveWeapons
          cmgCall4 = {}
          flag24 = {}
          flag24.ammo = 250
          cmgCall4.WEAPON_GLOCKCMG = flag24
          flag24 = {}
          flag24.ammo = 250
          cmgCall4.WEAPON_REMINGTON700CMG = flag24
          arg4(cmgCall4)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Delete All Cars"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4, cmgCall4, flag24, flag26, numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3
        if arg33 then
          arg4 = 0
          cmgCall4 = 0
          flag24 = pairs
          flag26 = CMG
          flag26 = flag26.getAllVehicles
          flag26, numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3 = flag26()
          flag24, flag26, numberValue25, numberValue27 = flag24(flag26, numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3)
          for dataTable42, waitCall in flag24, flag26, numberValue25, numberValue27 do
            numberValue2 = NetworkGetEntityIsNetworked
            numberValue3 = waitCall
            numberValue2 = numberValue2(numberValue3)
            if numberValue2 then
              numberValue2 = NetworkHasControlOfEntity
              numberValue3 = waitCall
              numberValue2 = numberValue2(numberValue3)
              if numberValue2 then
                numberValue2 = DeleteEntity
                numberValue3 = waitCall
                -- Beginner: Delete a GTA entity.
                numberValue2(numberValue3)
                arg4 = arg4 + 1
              else
                cmgCall4 = cmgCall4 + 1
              end
            end
          end
          flag24 = notify
          flag26 = string
          flag26 = flag26.format
          numberValue25 = "~g~Deleted %d vehicles."
          numberValue27 = arg4
          flag26, numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3 = flag26(numberValue25, numberValue27)
          -- Beginner: Show a notification to the player.
          flag24(flag26, numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3)
          if cmgCall4 > 0 then
            flag24 = notify
            flag26 = string
            flag26 = flag26.format
            numberValue25 = "~r~Unable to delete %d other vehicles due to lack of ownership."
            numberValue27 = cmgCall4
            flag26, numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3 = flag26(numberValue25, numberValue27)
            flag24(flag26, numberValue25, numberValue27, dataTable42, waitCall, numberValue2, numberValue3)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Spawn By Partial Vehicle Name"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4, cmgCall4, flag24, flag26
        if arg33 then
          arg4 = CMG
          arg4 = arg4.clientPrompt
          cmgCall4 = "Enter Partial Spawncode"
          flag24 = ""

          -- === HELPER FUNCTION (decompiler name: flag26; parameters: arg14) ===
          function flag26(arg14)
            local stringHelper3, workValue14, cmgCall3, textValue19, textValue21, flag27, numberValue26, heading, cmgCall6, flag2, flag3, workValue2, workValue5, stringHelper, stringHelper2, hashValue, nameValue3
            stringHelper3 = dataTable18
            stringHelper3 = stringHelper3()
            if not stringHelper3 then
              return
            end
            stringHelper3 = string
            stringHelper3 = stringHelper3.lower
            workValue14 = arg14
            stringHelper3 = stringHelper3(workValue14)
            workValue14 = #stringHelper3
            if workValue14 <= 1 then
              workValue14 = notify
              cmgCall3 = "~r~Enter at last 2 characters for the partial spawncode."
              -- Beginner: Show a notification to the player.
              workValue14(cmgCall3)
              return
            end
            workValue14 = {}
            cmgCall3 = pairs
            textValue19 = cmgCall.garages
            cmgCall3, textValue19, textValue21, flag27 = cmgCall3(textValue19)
            for numberValue26, heading in cmgCall3, textValue19, textValue21, flag27 do
              cmgCall6 = pairs
              flag2 = heading
              cmgCall6, flag2, flag3, workValue2 = cmgCall6(flag2)
              for workValue5, stringHelper in cmgCall6, flag2, flag3, workValue2 do
                if "_config" ~= workValue5 then
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
                    nameValue3 = workValue5
                    hashValue, nameValue3 = hashValue(nameValue3)
                    stringHelper2 = stringHelper2(hashValue, nameValue3)
                    if stringHelper2 then
                      stringHelper2 = table
                      stringHelper2 = stringHelper2.insert
                      hashValue = workValue14
                      nameValue3 = workValue5
                      stringHelper2(hashValue, nameValue3)
                    end
                  end
                end
              end
            end
            cmgCall3 = #workValue14
            if 0 == cmgCall3 then
              cmgCall3 = notify
              textValue19 = "~r~No vehicle names match the provided string."
              -- Beginner: Show a notification to the player.
              cmgCall3(textValue19)
              return
            else
              cmgCall3 = #workValue14
              if cmgCall3 > 100 then
                cmgCall3 = CMG
                cmgCall3 = cmgCall3.getServerNum
                cmgCall3 = cmgCall3()
                if 3 ~= cmgCall3 then
                  cmgCall3 = notify
                  textValue19 = "~r~Unable to spawn over 100 vehicle name matches."
                  cmgCall3(textValue19)
                  return
              end
              else
                cmgCall3 = notify
                textValue19 = "~y~Spawning "
                textValue21 = tostring
                flag27 = #workValue14
                textValue21 = textValue21(flag27)
                flag27 = " vehicle name matches."
                textValue19 = textValue19 .. textValue21 .. flag27
                -- Beginner: Show a notification to the player.
                cmgCall3(textValue19)
              end
            end
            cmgCall3 = dataTable19
            textValue19 = workValue14
            cmgCall3(textValue19)
          end
          arg4(cmgCall4, flag24, flag26)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Spawn By Partial Spawncode"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4, cmgCall4, flag24, flag26
        if arg33 then
          arg4 = CMG
          arg4 = arg4.clientPrompt
          cmgCall4 = "Enter Partial Spawncode"
          flag24 = ""

          -- === HELPER FUNCTION (decompiler name: flag26; parameters: arg14) ===
          function flag26(arg14)
            local stringHelper3, workValue14, cmgCall3, textValue19, textValue21, flag27, numberValue26, heading, cmgCall6, flag2, flag3, workValue2, workValue5, stringHelper, stringHelper2, hashValue
            stringHelper3 = dataTable18
            stringHelper3 = stringHelper3()
            if not stringHelper3 then
              return
            end
            stringHelper3 = string
            stringHelper3 = stringHelper3.lower
            workValue14 = arg14
            stringHelper3 = stringHelper3(workValue14)
            workValue14 = #stringHelper3
            if workValue14 <= 1 then
              workValue14 = notify
              cmgCall3 = "~r~Enter at last 2 characters for the partial spawncode."
              -- Beginner: Show a notification to the player.
              workValue14(cmgCall3)
              return
            end
            workValue14 = {}
            cmgCall3 = pairs
            textValue19 = cmgCall.garages
            cmgCall3, textValue19, textValue21, flag27 = cmgCall3(textValue19)
            for numberValue26, heading in cmgCall3, textValue19, textValue21, flag27 do
              cmgCall6 = pairs
              flag2 = heading
              cmgCall6, flag2, flag3, workValue2 = cmgCall6(flag2)
              for workValue5 in cmgCall6, flag2, flag3, workValue2 do
                if "_config" ~= workValue5 then
                  stringHelper = string
                  stringHelper = stringHelper.match
                  stringHelper2 = string
                  stringHelper2 = stringHelper2.lower
                  hashValue = workValue5
                  stringHelper2 = stringHelper2(hashValue)
                  hashValue = stringHelper3
                  stringHelper = stringHelper(stringHelper2, hashValue)
                  if stringHelper then
                    stringHelper = IsModelValid
                    stringHelper2 = GetHashKey
                    hashValue = workValue5
                    stringHelper2, hashValue = stringHelper2(hashValue)
                    stringHelper = stringHelper(stringHelper2, hashValue)
                    if stringHelper then
                      stringHelper = table
                      stringHelper = stringHelper.insert
                      stringHelper2 = workValue14
                      hashValue = workValue5
                      stringHelper(stringHelper2, hashValue)
                    end
                  end
                end
              end
            end
            cmgCall3 = #workValue14
            if 0 == cmgCall3 then
              cmgCall3 = notify
              textValue19 = "~r~No spawncodes match the provided string."
              -- Beginner: Show a notification to the player.
              cmgCall3(textValue19)
              return
            else
              cmgCall3 = #workValue14
              if cmgCall3 > 100 then
                cmgCall3 = CMG
                cmgCall3 = cmgCall3.getServerNum
                cmgCall3 = cmgCall3()
                if 3 ~= cmgCall3 then
                  cmgCall3 = notify
                  textValue19 = "~r~Unable to spawn over 100 spawncode matches."
                  cmgCall3(textValue19)
                  return
              end
              else
                cmgCall3 = notify
                textValue19 = "~y~Spawning "
                textValue21 = tostring
                flag27 = #workValue14
                textValue21 = textValue21(flag27)
                flag27 = " spawncodes matches."
                textValue19 = textValue19 .. textValue21 .. flag27
                -- Beginner: Show a notification to the player.
                cmgCall3(textValue19)
              end
            end
            cmgCall3 = dataTable19
            textValue19 = workValue14
            cmgCall3(textValue19)
          end
          arg4(cmgCall4, flag24, flag26)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23)
      arg12 = RageUI
      arg12 = arg12.Checkbox
      arg22 = "Show Spawncodes"
      arg32 = "Whether to display spawncodes above each vehicle entity."
      textValue18 = textValue6
      workValue17 = {}

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33, arg4) ===
      function flag23(arg13, arg23, arg33, arg4)
        local cmgCall4
        cmgCall4 = textValue6
        if cmgCall4 ~= arg4 then
          textValue6 = arg4
        end
      end

      -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
      function flag25()
        local arg13, arg23
      end

      -- === HELPER FUNCTION (decompiler name: workValue19; parameters: none) ===
      function workValue19()
        local arg13, arg23
      end
      -- Beginner: Draw a RageUI checkbox.
      arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19)
      arg12 = RageUI
      arg12 = arg12.Checkbox
      arg22 = "Disable Caps"
      arg32 = "Whether to disable the speed caps for vehicles in cardev world."
      textValue18 = flag6
      workValue17 = {}

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33, arg4) ===
      function flag23(arg13, arg23, arg33, arg4)
        local cmgCall4
        cmgCall4 = flag6
        if cmgCall4 ~= arg4 then
          flag6 = arg4
        end
      end

      -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
      function flag25()
        local arg13, arg23
      end

      -- === HELPER FUNCTION (decompiler name: workValue19; parameters: none) ===
      function workValue19()
        local arg13, arg23
      end
      arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19)
      arg12 = RageUI
      arg12 = arg12.Checkbox
      arg22 = "Show 250 Markers"
      arg32 = "Draws a marker every time the car hits 250 MPH."
      textValue18 = textValue7
      workValue17 = {}

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33, arg4) ===
      function flag23(arg13, arg23, arg33, arg4)
        local cmgCall4, flag24
        cmgCall4 = textValue7
        if cmgCall4 ~= arg4 then
          cmgCall4 = true
          flag5 = cmgCall4
          if not arg4 then
            cmgCall4 = table
            cmgCall4 = cmgCall4.clear
            flag24 = textValue9
            cmgCall4(flag24)
          end
          textValue7 = arg4
        end
      end

      -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
      function flag25()
        local arg13, arg23
      end

      -- === HELPER FUNCTION (decompiler name: workValue19; parameters: none) ===
      function workValue19()
        local arg13, arg23
      end
      -- Beginner: Draw a RageUI checkbox.
      arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Automated Handling"
      arg32 = ""
      textValue18 = {}
      textValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: none) ===
      function flag23()
        local arg13, arg23
      end
      flag25 = RMenu
      workValue19 = flag25
      flag25 = flag25.Get
      flag28 = "cardev"
      flag29 = "automatedhandling"
      flag25, workValue19, flag28, flag29 = flag25(workValue19, flag28, flag29)
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29)
      arg12 = RageUI
      arg12 = arg12.Checkbox
      arg22 = "Return to normal Universe"
      arg32 = ""
      textValue18 = textValue14
      workValue17 = {}

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: none) ===
      function flag23()
        local arg13, arg23
      end

      -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
      function flag25()
        local arg13, arg23, arg33
        arg13 = textValue14
        if not arg13 then
          arg13 = dataTable16
          arg13()
        end
        arg13 = true
        textValue14 = arg13
        arg13 = TriggerServerEvent
        arg23 = "d33b8da01f"
        arg33 = textValue14
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d33b8da01f".
        arg13(arg23, arg33)
      end

      -- === HELPER FUNCTION (decompiler name: workValue19; parameters: none) ===
      function workValue19()
        local arg13, arg23, arg33
        arg13 = textValue14
        if arg13 then
          arg13 = dataTable17
          arg13()
        end
        arg13 = false
        textValue14 = arg13
        arg13 = TriggerServerEvent
        arg23 = "d33b8da01f"
        arg33 = textValue14
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d33b8da01f".
        arg13(arg23, arg33)
      end
      -- Beginner: Draw a RageUI checkbox.
      arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19)
    else
      arg12 = RageUI
      arg12 = arg12.Checkbox
      arg22 = "Teleport to Car Dev Universe"
      arg32 = ""
      textValue18 = textValue14
      workValue17 = {}

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: none) ===
      function flag23()
        local arg13, arg23
      end

      -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
      function flag25()
        local arg13, arg23, arg33
        arg13 = textValue14
        if not arg13 then
          arg13 = dataTable16
          arg13()
        end
        arg13 = true
        textValue14 = arg13
        arg13 = TriggerServerEvent
        arg23 = "d33b8da01f"
        arg33 = textValue14
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d33b8da01f".
        arg13(arg23, arg33)
      end

      -- === HELPER FUNCTION (decompiler name: workValue19; parameters: none) ===
      function workValue19()
        local arg13, arg23, arg33
        arg13 = textValue14
        if arg13 then
          arg13 = dataTable17
          arg13()
        end
        arg13 = false
        textValue14 = arg13
        arg13 = TriggerServerEvent
        arg23 = "d33b8da01f"
        arg33 = textValue14
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d33b8da01f".
        arg13(arg23, arg33)
      end
      -- Beginner: Draw a RageUI checkbox.
      arg12(arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19)
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~g~Enter the Car Dev Universe to see more menu options."
      arg12(arg22)
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
  function cmgCall5()
    local arg12, arg22
  end
  arg1(arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue17 = "cardev"
  numberValue24 = "automatedhandling"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue17, numberValue24)
  arg3 = true
  textValue17 = true
  numberValue24 = true

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local arg12, arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29
    arg12 = ""
    arg22 = pairs
    arg32 = tableHelper2
    arg22, arg32, textValue18, workValue17 = arg22(arg32)
    for flag23, flag25 in arg22, arg32, textValue18, workValue17 do
      workValue19 = arg12
      flag28 = flag25
      flag29 = ", "
      workValue19 = workValue19 .. flag28 .. flag29
      arg12 = workValue19
    end
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg32 = "Set Spawncodes"
    textValue18 = string
    textValue18 = textValue18.format
    workValue17 = [[
Current Spawncodes:
%s]]
    flag23 = arg12
    textValue18 = textValue18(workValue17, flag23)
    workValue17 = {}
    flag23 = string
    flag23 = flag23.format
    flag25 = "%s configured"
    workValue19 = tableHelper2
    workValue19 = #workValue19
    flag23 = flag23(flag25, workValue19)
    workValue17.RightLabel = flag23
    flag23 = dataTable20
    flag23 = not flag23

    -- === HELPER FUNCTION (decompiler name: flag25; parameters: arg13, arg23, arg33) ===
    function flag25(arg13, arg23, arg33)
      local arg4, cmgCall4, flag24, flag26
      if arg33 then
        arg4 = CMG
        arg4 = arg4.clientPrompt
        cmgCall4 = "Enter Spawncodes (seperated by comma)"
        flag24 = ""

        -- === HELPER FUNCTION (decompiler name: flag26; parameters: arg14) ===
        function flag26(arg14)
          local stringHelper3, workValue14, cmgCall3, textValue19, textValue21, flag27, numberValue26, heading, cmgCall6, flag2, flag3
          stringHelper3 = string
          stringHelper3 = stringHelper3.gsub
          workValue14 = arg14
          cmgCall3 = "%s+"
          textValue19 = ""
          stringHelper3 = stringHelper3(workValue14, cmgCall3, textValue19)
          arg14 = stringHelper3
          stringHelper3 = string
          stringHelper3 = stringHelper3.lower
          workValue14 = arg14
          stringHelper3 = stringHelper3(workValue14)
          arg14 = stringHelper3
          stringHelper3 = {}
          tableHelper2 = stringHelper3
          stringHelper3 = pairs
          workValue14 = stringsplit
          cmgCall3 = arg14
          textValue19 = ","
          workValue14, cmgCall3, textValue19, textValue21, flag27, numberValue26, heading, cmgCall6, flag2, flag3 = workValue14(cmgCall3, textValue19)
          stringHelper3, workValue14, cmgCall3, textValue19 = stringHelper3(workValue14, cmgCall3, textValue19, textValue21, flag27, numberValue26, heading, cmgCall6, flag2, flag3)
          for textValue21, flag27 in stringHelper3, workValue14, cmgCall3, textValue19 do
            numberValue26 = GetHashKey
            heading = flag27
            -- Beginner: result below is hash.
            numberValue26 = numberValue26(heading)
            heading = IsModelValid
            cmgCall6 = numberValue26
            heading = heading(cmgCall6)
            if not heading then
              heading = notify
              cmgCall6 = string
              cmgCall6 = cmgCall6.format
              flag2 = "~r~Skipping %s due to being an invalid or inactive spawncode."
              flag3 = flag27
              cmgCall6, flag2, flag3 = cmgCall6(flag2, flag3)
              -- Beginner: Show a notification to the player.
              heading(cmgCall6, flag2, flag3)
            else
              heading = table
              heading = heading.insert
              cmgCall6 = tableHelper2
              flag2 = flag27
              heading(cmgCall6, flag2)
            end
          end
        end
        arg4(cmgCall4, flag24, flag26)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg32, textValue18, workValue17, flag23, flag25)
    arg22 = RageUI
    arg22 = arg22.List
    arg32 = "Target Class"
    textValue18 = dataTable21
    workValue17 = dataTable22
    flag23 = "The class the provided spawncodes should be changed to"
    flag25 = {}
    workValue19 = dataTable20
    workValue19 = not workValue19

    -- === HELPER FUNCTION (decompiler name: flag28; parameters: arg13, arg23, arg33, arg4) ===
    function flag28(arg13, arg23, arg33, arg4)
      local cmgCall4
      cmgCall4 = dataTable22
      if arg4 ~= cmgCall4 then
        dataTable22 = arg4
      end
    end
    -- Beginner: Draw a RageUI list selector.
    arg22(arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28)
    arg22 = dataTable20
    if arg22 then
      arg22 = RageUI
      arg22 = arg22.Button
      arg32 = "~r~Stop Automated Handling"
      textValue18 = ""
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4
        if arg33 then
          arg4 = dataTable31
          arg4()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg22(arg32, textValue18, workValue17, flag23)
    else
      arg22 = RageUI
      arg22 = arg22.Button
      arg32 = "~g~Start Automated Handling"
      textValue18 = ""
      workValue17 = true

      -- === HELPER FUNCTION (decompiler name: flag23; parameters: arg13, arg23, arg33) ===
      function flag23(arg13, arg23, arg33)
        local arg4
        if arg33 then
          arg4 = dataTable32
          arg4()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg22(arg32, textValue18, workValue17, flag23)
    end
  end
  arg1(arg2, arg3, textValue17, numberValue24, modelHash)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue17 = "cardev"
  numberValue24 = "vehiclemods"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue17, numberValue24)
  arg3 = true
  textValue17 = true
  numberValue24 = true

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local arg12, arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29, flag, numberValue, textValue10, textValue11, textValue12, textValue13
    arg12 = pairs
    arg22 = cmgCall2
    arg12, arg22, arg32, textValue18 = arg12(arg22)
    for workValue17, flag23 in arg12, arg22, arg32, textValue18 do
      flag25 = GetNumVehicleMods
      workValue19 = CMG
      workValue19 = workValue19.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      workValue19 = workValue19()
      flag28 = workValue17
      flag25 = flag25(workValue19, flag28)
      if flag25 > 0 then
        flag25 = RageUI
        flag25 = flag25.ButtonWithStyle
        workValue19 = flag23
        flag28 = ""
        flag29 = {}
        flag29.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag = true

        -- === HELPER FUNCTION (decompiler name: numberValue; parameters: arg13, arg23, arg33) ===
        function numberValue(arg13, arg23, arg33)
          local arg4
          if arg33 then
            arg4 = workValue17
            rageUiCall4 = arg4
          end
        end
        textValue10 = RMenu
        textValue11 = textValue10
        textValue10 = textValue10.Get
        textValue12 = "cardev"
        textValue13 = "vehiclemodindexes"
        textValue10, textValue11, textValue12, textValue13 = textValue10(textValue11, textValue12, textValue13)
        -- Beginner: Draw a selectable RageUI menu button.
        flag25(workValue19, flag28, flag29, flag, numberValue, textValue10, textValue11, textValue12, textValue13)
      end
    end
  end
  arg1(arg2, arg3, textValue17, numberValue24, modelHash)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue17 = "cardev"
  numberValue24 = "vehiclemodindexes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue17, numberValue24)
  arg3 = true
  textValue17 = true
  numberValue24 = true

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local arg12, arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29, flag, numberValue, textValue10, textValue11
    arg12 = GetNumVehicleMods
    arg22 = CMG
    arg22 = arg22.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg22 = arg22()
    arg32 = rageUiCall4
    arg12 = arg12(arg22, arg32)
    if 0 == arg12 then
      arg12 = RageUI
      arg12 = arg12.Text
      arg22 = {}
      arg22.message = "~r~No available mod indexes for this mod type for this vehicle."
      arg12(arg22)
    else
      arg12 = 0
      arg22 = GetNumVehicleMods
      arg32 = CMG
      arg32 = arg32.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      arg32 = arg32()
      textValue18 = rageUiCall4
      arg22 = arg22(arg32, textValue18)
      arg32 = 1
      for textValue18 = arg12, arg22, arg32 do
        workValue17 = RageUI
        workValue17 = workValue17.ButtonWithStyle
        flag23 = "Mod "
        flag25 = textValue18
        flag23 = flag23 .. flag25
        flag25 = ""
        workValue19 = {}
        workValue19.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag28 = true

        -- === HELPER FUNCTION (decompiler name: flag29; parameters: arg13, arg23, arg33) ===
        function flag29(arg13, arg23, arg33)
          local arg4, cmgCall4, flag24, flag26, numberValue25
          if arg33 then
            arg4 = SetVehicleModKit
            cmgCall4 = CMG
            cmgCall4 = cmgCall4.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            cmgCall4 = cmgCall4()
            flag24 = 0
            arg4(cmgCall4, flag24)
            arg4 = CMG
            arg4 = arg4.setVehicleMod
            cmgCall4 = CMG
            cmgCall4 = cmgCall4.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            cmgCall4 = cmgCall4()
            flag24 = rageUiCall4
            flag26 = textValue18
            numberValue25 = false
            arg4(cmgCall4, flag24, flag26, numberValue25)
          end
        end
        flag = RMenu
        numberValue = flag
        flag = flag.Get
        textValue10 = "cardev"
        textValue11 = "vehiclemodindexes"
        flag, numberValue, textValue10, textValue11 = flag(numberValue, textValue10, textValue11)
        -- Beginner: Draw a selectable RageUI menu button.
        workValue17(flag23, flag25, workValue19, flag28, flag29, flag, numberValue, textValue10, textValue11)
      end
    end
  end
  arg1(arg2, arg3, textValue17, numberValue24, modelHash)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue17 = "cardev"
  numberValue24 = "extras"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue17, numberValue24)
  arg3 = true
  textValue17 = true
  numberValue24 = true

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local arg12, arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29, flag
    arg12 = CMG
    arg12 = arg12.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg12 = arg12()
    arg22 = false
    if 0 ~= arg12 then
      arg32 = 1
      textValue18 = 12
      workValue17 = 1
      for flag23 = arg32, textValue18, workValue17 do
        flag25 = DoesExtraExist
        workValue19 = arg12
        flag28 = flag23
        flag25 = flag25(workValue19, flag28)
        if flag25 then
          arg22 = true
          flag25 = IsVehicleExtraTurnedOn
          workValue19 = arg12
          flag28 = flag23
          flag25 = flag25(workValue19, flag28)
          if flag25 then
            flag25 = RageUI
            flag25 = flag25.Button
            workValue19 = "Disable Extra "
            flag28 = flag23
            workValue19 = workValue19 .. flag28
            flag28 = nil
            flag29 = true

            -- === HELPER FUNCTION (decompiler name: flag; parameters: arg13, arg23, arg33) ===
            function flag(arg13, arg23, arg33)
              local arg4, cmgCall4, flag24, flag26
              if arg33 then
                arg4 = SetVehicleExtra
                cmgCall4 = arg12
                flag24 = flag23
                flag26 = true
                arg4(cmgCall4, flag24, flag26)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            flag25(workValue19, flag28, flag29, flag)
          else
            flag25 = RageUI
            flag25 = flag25.Button
            workValue19 = "Enable Extra "
            flag28 = flag23
            workValue19 = workValue19 .. flag28
            flag28 = nil
            flag29 = true

            -- === HELPER FUNCTION (decompiler name: flag; parameters: arg13, arg23, arg33) ===
            function flag(arg13, arg23, arg33)
              local arg4, cmgCall4, flag24, flag26
              if arg33 then
                arg4 = SetVehicleExtra
                cmgCall4 = arg12
                flag24 = flag23
                flag26 = false
                arg4(cmgCall4, flag24, flag26)
                arg4 = TriggerEvent
                cmgCall4 = "53092b8739"
                -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "53092b8739".
                arg4(cmgCall4)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            flag25(workValue19, flag28, flag29, flag)
          end
        end
      end
    end
    if not arg22 then
      arg32 = RageUI
      arg32 = arg32.Text
      textValue18 = {}
      textValue18.message = "~r~No available extras for this vehicle."
      arg32(textValue18)
    end
  end
  arg1(arg2, arg3, textValue17, numberValue24, modelHash)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue17 = "cardev"
  numberValue24 = "colours"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue17, numberValue24)
  arg3 = true
  textValue17 = true
  numberValue24 = true

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local arg12, arg22, arg32, textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29, flag
    arg12 = pairs
    arg22 = dataTable12
    arg12, arg22, arg32, textValue18 = arg12(arg22)
    for workValue17, flag23 in arg12, arg22, arg32, textValue18 do
      flag25 = RageUI
      flag25 = flag25.Button
      workValue19 = flag23.name
      flag28 = nil
      flag29 = true

      -- === HELPER FUNCTION (decompiler name: flag; parameters: arg13, arg23, arg33) ===
      function flag(arg13, arg23, arg33)
        local arg4, cmgCall4, flag24, flag26
        if arg33 then
          arg4 = SetVehicleColours
          cmgCall4 = CMG
          cmgCall4 = cmgCall4.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          cmgCall4 = cmgCall4()
          flag24 = flag23.colorindex
          flag26 = flag23.colorindex
          arg4(cmgCall4, flag24, flag26)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      flag25(workValue19, flag28, flag29, flag)
    end
  end
  arg1(arg2, arg3, textValue17, numberValue24, modelHash)
end
rageUiCall2(dataTable38, dataTable39, dataTable40, dataTable41)

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: none) ===
function rageUiCall2()
  local arg1, arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue17 = "cardev"
  numberValue24 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue17, numberValue24)
  arg3 = RageUI
  arg3 = arg3.Visible
  textValue17 = RMenu
  numberValue24 = textValue17
  textValue17 = textValue17.Get
  modelHash = "cardev"
  cmgCall5 = "mainmenu"
  textValue17, numberValue24, modelHash, cmgCall5 = textValue17(numberValue24, modelHash, cmgCall5)
  -- Beginner: result below is menuVisible.
  arg3 = arg3(textValue17, numberValue24, modelHash, cmgCall5)
  arg3 = not arg3
  arg1(arg2, arg3)
end
dataTable38 = _ENV
dataTable39 = "RegisterCommand"
dataTable38 = dataTable38[dataTable39]
dataTable39 = "cardev"

-- === HELPER FUNCTION (decompiler name: dataTable40; parameters: none) ===
function dataTable40()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "carworld.whitelisted"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = CMG
    arg1 = arg1.isPurge
    arg1 = arg1()
    if not arg1 then
      arg1 = rageUiCall2
      arg1()
    end
  end
end
dataTable41 = false
dataTable38(dataTable39, dataTable40, dataTable41)
dataTable38 = _ENV
dataTable39 = "AddEventHandler"
dataTable38 = dataTable38[dataTable39]
dataTable39 = "919aefda0c"

-- === HELPER FUNCTION (decompiler name: dataTable40; parameters: arg1) ===
function dataTable40(arg1)
  local arg2
  if 333 ~= arg1 then
    arg2 = textValue14
    if arg2 then
      arg2 = RageUI
      arg2 = arg2.CloseAll
      arg2()
      arg2 = dataTable17
      arg2()
      arg2 = false
      textValue14 = arg2
    end
  end
end
dataTable38(dataTable39, dataTable40)
dataTable38 = {}
dataTable39 = "CCarHandlingData"
dataTable40 = {}
dataTable41 = {}
textValue22 = "name"
textValue23 = "fBackEndPopUpCarImpulseMult"
dataTable41[textValue22] = textValue23
textValue22 = "type"
textValue23 = "float"
dataTable41[textValue22] = textValue23
textValue22 = {}
textValue23 = "name"
textValue24 = "fBackEndPopUpBuildingImpulseMult"
textValue22[textValue23] = textValue24
textValue23 = "type"
textValue24 = "float"
textValue22[textValue23] = textValue24
textValue23 = {}
textValue24 = "name"
textValue25 = "fBackEndPopUpMaxDeltaSpeed"
textValue23[textValue24] = textValue25
textValue24 = "type"
textValue25 = "float"
textValue23[textValue24] = textValue25
textValue24 = {}
textValue25 = "name"
textValue26 = "fToeFront"
textValue24[textValue25] = textValue26
textValue25 = "type"
textValue26 = "float"
textValue24[textValue25] = textValue26
textValue25 = {}
textValue26 = "name"
textValue27 = "fToeRear"
textValue25[textValue26] = textValue27
textValue26 = "type"
textValue27 = "float"
textValue25[textValue26] = textValue27
textValue26 = {}
textValue27 = "name"
textValue28 = "fCamberFront"
textValue26[textValue27] = textValue28
textValue27 = "type"
textValue28 = "float"
textValue26[textValue27] = textValue28
textValue27 = {}
textValue28 = "name"
textValue30 = "fCamberRear"
textValue27[textValue28] = textValue30
textValue28 = "type"
textValue30 = "float"
textValue27[textValue28] = textValue30
textValue28 = {}
textValue30 = "name"
textValue31 = "fCastor"
textValue28[textValue30] = textValue31
textValue30 = "type"
textValue31 = "float"
textValue28[textValue30] = textValue31
textValue30 = {}
textValue31 = "name"
textValue32 = "fEngineResistance"
textValue30[textValue31] = textValue32
textValue31 = "type"
textValue32 = "float"
textValue30[textValue31] = textValue32
textValue31 = {}
textValue32 = "name"
textValue33 = "fMaxDriveBiasTransfer"
textValue31[textValue32] = textValue33
textValue32 = "type"
textValue33 = "float"
textValue31[textValue32] = textValue33
textValue32 = {}
textValue33 = "name"
textValue34 = "fJumpForceScale"
textValue32[textValue33] = textValue34
textValue33 = "type"
textValue34 = "float"
textValue32[textValue33] = textValue34
textValue33 = {}
textValue34 = "name"
textValue35 = "fIncreasedRammingForceScale"
textValue33[textValue34] = textValue35
textValue34 = "type"
textValue35 = "float"
textValue33[textValue34] = textValue35
dataTable40[1] = dataTable41
dataTable40[2] = textValue22
dataTable40[3] = textValue23
dataTable40[4] = textValue24
dataTable40[5] = textValue25
dataTable40[6] = textValue26
dataTable40[7] = textValue27
dataTable40[8] = textValue28
dataTable40[9] = textValue30
dataTable40[10] = textValue31
dataTable40[11] = textValue32
dataTable40[12] = textValue33
dataTable38[dataTable39] = dataTable40
dataTable39 = "CTrailerHandlingData"
dataTable40 = {}
dataTable41 = {}
textValue22 = "name"
textValue23 = "fAttachLimitPitch"
dataTable41[textValue22] = textValue23
textValue22 = "type"
textValue23 = "float"
dataTable41[textValue22] = textValue23
textValue22 = {}
textValue23 = "name"
textValue24 = "fAttachLimitRoll"
textValue22[textValue23] = textValue24
textValue23 = "type"
textValue24 = "float"
textValue22[textValue23] = textValue24
textValue23 = {}
textValue24 = "name"
textValue25 = "fAttachLimitYaw"
textValue23[textValue24] = textValue25
textValue24 = "type"
textValue25 = "float"
textValue23[textValue24] = textValue25
textValue24 = {}
textValue25 = "name"
textValue26 = "fUprightSpringConstant"
textValue24[textValue25] = textValue26
textValue25 = "type"
textValue26 = "float"
textValue24[textValue25] = textValue26
textValue25 = {}
textValue26 = "name"
textValue27 = "fUprightDampingConstant"
textValue25[textValue26] = textValue27
textValue26 = "type"
textValue27 = "float"
textValue25[textValue26] = textValue27
textValue26 = {}
textValue27 = "name"
textValue28 = "fAttachedMaxDistance"
textValue26[textValue27] = textValue28
textValue27 = "type"
textValue28 = "float"
textValue26[textValue27] = textValue28
textValue27 = {}
textValue28 = "name"
textValue30 = "fAttachedMaxPenetration"
textValue27[textValue28] = textValue30
textValue28 = "type"
textValue30 = "float"
textValue27[textValue28] = textValue30
textValue28 = {}
textValue30 = "name"
textValue31 = "fAttachRaiseZ"
textValue28[textValue30] = textValue31
textValue30 = "type"
textValue31 = "float"
textValue28[textValue30] = textValue31
textValue30 = {}
textValue31 = "name"
textValue32 = "fPosConstraintMassRatio"
textValue30[textValue31] = textValue32
textValue31 = "type"
textValue32 = "float"
textValue30[textValue31] = textValue32
dataTable40[1] = dataTable41
dataTable40[2] = textValue22
dataTable40[3] = textValue23
dataTable40[4] = textValue24
dataTable40[5] = textValue25
dataTable40[6] = textValue26
dataTable40[7] = textValue27
dataTable40[8] = textValue28
dataTable40[9] = textValue30
dataTable38[dataTable39] = dataTable40
dataTable39 = "CBoatHandlingData"
dataTable40 = {}
dataTable41 = {}
textValue22 = "name"
textValue23 = "fBoxFrontMult"
dataTable41[textValue22] = textValue23
textValue22 = "type"
textValue23 = "float"
dataTable41[textValue22] = textValue23
textValue22 = {}
textValue23 = "name"
textValue24 = "fBoxRearMult"
textValue22[textValue23] = textValue24
textValue23 = "type"
textValue24 = "float"
textValue22[textValue23] = textValue24
textValue23 = {}
textValue24 = "name"
textValue25 = "fBoxSideMult"
textValue23[textValue24] = textValue25
textValue24 = "type"
textValue25 = "float"
textValue23[textValue24] = textValue25
textValue24 = {}
textValue25 = "name"
textValue26 = "fSampleTop"
textValue24[textValue25] = textValue26
textValue25 = "type"
textValue26 = "float"
textValue24[textValue25] = textValue26
textValue25 = {}
textValue26 = "name"
textValue27 = "fSampleBottom"
textValue25[textValue26] = textValue27
textValue26 = "type"
textValue27 = "float"
textValue25[textValue26] = textValue27
textValue26 = {}
textValue27 = "name"
textValue28 = "fSampleBottomTestCorrection"
textValue26[textValue27] = textValue28
textValue27 = "type"
textValue28 = "float"
textValue26[textValue27] = textValue28
textValue27 = {}
textValue28 = "name"
textValue30 = "fAquaplaneForce"
textValue27[textValue28] = textValue30
textValue28 = "type"
textValue30 = "float"
textValue27[textValue28] = textValue30
textValue28 = {}
textValue30 = "name"
textValue31 = "fAquaplanePushWaterMult"
textValue28[textValue30] = textValue31
textValue30 = "type"
textValue31 = "float"
textValue28[textValue30] = textValue31
textValue30 = {}
textValue31 = "name"
textValue32 = "fAquaplanePushWaterCap"
textValue30[textValue31] = textValue32
textValue31 = "type"
textValue32 = "float"
textValue30[textValue31] = textValue32
textValue31 = {}
textValue32 = "name"
textValue33 = "fAquaplanePushWaterApply"
textValue31[textValue32] = textValue33
textValue32 = "type"
textValue33 = "float"
textValue31[textValue32] = textValue33
textValue32 = {}
textValue33 = "name"
textValue34 = "fRudderForce"
textValue32[textValue33] = textValue34
textValue33 = "type"
textValue34 = "float"
textValue32[textValue33] = textValue34
textValue33 = {}
textValue34 = "name"
textValue35 = "fRudderOffsetSubmerge"
textValue33[textValue34] = textValue35
textValue34 = "type"
textValue35 = "float"
textValue33[textValue34] = textValue35
textValue34 = {}
textValue35 = "name"
textValue36 = "fRudderOffsetForce"
textValue34[textValue35] = textValue36
textValue35 = "type"
textValue36 = "float"
textValue34[textValue35] = textValue36
textValue35 = {}
textValue36 = "name"
textValue37 = "fRudderOffsetForceZMult"
textValue35[textValue36] = textValue37
textValue36 = "type"
textValue37 = "float"
textValue35[textValue36] = textValue37
textValue36 = {}
textValue37 = "name"
textValue38 = "fWaveAudioMult"
textValue36[textValue37] = textValue38
textValue37 = "type"
textValue38 = "float"
textValue36[textValue37] = textValue38
textValue37 = {}
textValue38 = "name"
textValue39 = "vecMoveResistance"
textValue37[textValue38] = textValue39
textValue38 = "type"
textValue39 = "vector"
textValue37[textValue38] = textValue39
textValue38 = {}
textValue39 = "name"
textValue40 = "vecTurnResistance"
textValue38[textValue39] = textValue40
textValue39 = "type"
textValue40 = "vector"
textValue38[textValue39] = textValue40
textValue39 = {}
textValue40 = "name"
textValue41 = "fLook_L_R_CamHeight"
textValue39[textValue40] = textValue41
textValue40 = "type"
textValue41 = "float"
textValue39[textValue40] = textValue41
textValue40 = {}
textValue41 = "name"
textValue42 = "fDragCoefficient"
textValue40[textValue41] = textValue42
textValue41 = "type"
textValue42 = "float"
textValue40[textValue41] = textValue42
textValue41 = {}
textValue42 = "name"
textValue43 = "fKeelSphereSize"
textValue41[textValue42] = textValue43
textValue42 = "type"
textValue43 = "float"
textValue41[textValue42] = textValue43
textValue42 = {}
textValue43 = "name"
textValue44 = "fPropRadius"
textValue42[textValue43] = textValue44
textValue43 = "type"
textValue44 = "float"
textValue42[textValue43] = textValue44
textValue43 = {}
textValue44 = "name"
textValue45 = "fLowLodAngOffset"
textValue43[textValue44] = textValue45
textValue44 = "type"
textValue45 = "float"
textValue43[textValue44] = textValue45
textValue44 = {}
textValue45 = "name"
textValue46 = "fLowLodDraughtOffset"
textValue44[textValue45] = textValue46
textValue45 = "type"
textValue46 = "float"
textValue44[textValue45] = textValue46
textValue45 = {}
textValue46 = "name"
textValue47 = "fImpellerOffset"
textValue45[textValue46] = textValue47
textValue46 = "type"
textValue47 = "float"
textValue45[textValue46] = textValue47
textValue46 = {}
textValue47 = "name"
textValue48 = "fImpellerForceMult"
textValue46[textValue47] = textValue48
textValue47 = "type"
textValue48 = "float"
textValue46[textValue47] = textValue48
textValue47 = {}
textValue48 = "name"
textValue49 = "fDinghySphereBuoyConst"
textValue47[textValue48] = textValue49
textValue48 = "type"
textValue49 = "float"
textValue47[textValue48] = textValue49
textValue48 = {}
textValue49 = "name"
textValue50 = "fProwRaiseMult"
textValue48[textValue49] = textValue50
textValue49 = "type"
textValue50 = "float"
textValue48[textValue49] = textValue50
textValue49 = {}
textValue50 = "name"
textValue51 = "fDeepWaterSampleBuoyancyMult"
textValue49[textValue50] = textValue51
textValue50 = "type"
textValue51 = "float"
textValue49[textValue50] = textValue51
textValue50 = {}
textValue51 = "name"
textValue52 = "fTransmissionMultiplier"
textValue50[textValue51] = textValue52
textValue51 = "type"
textValue52 = "float"
textValue50[textValue51] = textValue52
textValue51 = {}
textValue52 = "name"
textValue53 = "fTractionMultiplier"
textValue51[textValue52] = textValue53
textValue52 = "type"
textValue53 = "float"
textValue51[textValue52] = textValue53
dataTable40[1] = dataTable41
dataTable40[2] = textValue22
dataTable40[3] = textValue23
dataTable40[4] = textValue24
dataTable40[5] = textValue25
dataTable40[6] = textValue26
dataTable40[7] = textValue27
dataTable40[8] = textValue28
dataTable40[9] = textValue30
dataTable40[10] = textValue31
dataTable40[11] = textValue32
dataTable40[12] = textValue33
dataTable40[13] = textValue34
dataTable40[14] = textValue35
dataTable40[15] = textValue36
dataTable40[16] = textValue37
dataTable40[17] = textValue38
dataTable40[18] = textValue39
dataTable40[19] = textValue40
dataTable40[20] = textValue41
dataTable40[21] = textValue42
dataTable40[22] = textValue43
dataTable40[23] = textValue44
dataTable40[24] = textValue45
dataTable40[25] = textValue46
dataTable40[26] = textValue47
dataTable40[27] = textValue48
dataTable40[28] = textValue49
dataTable40[29] = textValue50
dataTable40[30] = textValue51
dataTable38[dataTable39] = dataTable40
dataTable39 = "CBikeHandlingData"
dataTable40 = {}
dataTable41 = {}
textValue22 = "name"
textValue23 = "fLeanFwdCOMMult"
dataTable41[textValue22] = textValue23
textValue22 = "type"
textValue23 = "float"
dataTable41[textValue22] = textValue23
textValue22 = {}
textValue23 = "name"
textValue24 = "fLeanFwdForceMult"
textValue22[textValue23] = textValue24
textValue23 = "type"
textValue24 = "float"
textValue22[textValue23] = textValue24
textValue23 = {}
textValue24 = "name"
textValue25 = "fLeanBakCOMMult"
textValue23[textValue24] = textValue25
textValue24 = "type"
textValue25 = "float"
textValue23[textValue24] = textValue25
textValue24 = {}
textValue25 = "name"
textValue26 = "fLeanBakForceMult"
textValue24[textValue25] = textValue26
textValue25 = "type"
textValue26 = "float"
textValue24[textValue25] = textValue26
textValue25 = {}
textValue26 = "name"
textValue27 = "fMaxBankAngle"
textValue25[textValue26] = textValue27
textValue26 = "type"
textValue27 = "float"
textValue25[textValue26] = textValue27
textValue26 = {}
textValue27 = "name"
textValue28 = "fFullAnimAngle"
textValue26[textValue27] = textValue28
textValue27 = "type"
textValue28 = "float"
textValue26[textValue27] = textValue28
textValue27 = {}
textValue28 = "name"
textValue30 = "fDesLeanReturnFrac"
textValue27[textValue28] = textValue30
textValue28 = "type"
textValue30 = "float"
textValue27[textValue28] = textValue30
textValue28 = {}
textValue30 = "name"
textValue31 = "fStickLeanMult"
textValue28[textValue30] = textValue31
textValue30 = "type"
textValue31 = "float"
textValue28[textValue30] = textValue31
textValue30 = {}
textValue31 = "name"
textValue32 = "fBrakingStabilityMult"
textValue30[textValue31] = textValue32
textValue31 = "type"
textValue32 = "float"
textValue30[textValue31] = textValue32
textValue31 = {}
textValue32 = "name"
textValue33 = "fInAirSteerMult"
textValue31[textValue32] = textValue33
textValue32 = "type"
textValue33 = "float"
textValue31[textValue32] = textValue33
textValue32 = {}
textValue33 = "name"
textValue34 = "fWheelieBalancePoint"
textValue32[textValue33] = textValue34
textValue33 = "type"
textValue34 = "float"
textValue32[textValue33] = textValue34
textValue33 = {}
textValue34 = "name"
textValue35 = "fStoppieBalancePoint"
textValue33[textValue34] = textValue35
textValue34 = "type"
textValue35 = "float"
textValue33[textValue34] = textValue35
textValue34 = {}
textValue35 = "name"
textValue36 = "fWheelieSteerMult"
textValue34[textValue35] = textValue36
textValue35 = "type"
textValue36 = "float"
textValue34[textValue35] = textValue36
textValue35 = {}
textValue36 = "name"
textValue37 = "fRearBalanceMult"
textValue35[textValue36] = textValue37
textValue36 = "type"
textValue37 = "float"
textValue35[textValue36] = textValue37
textValue36 = {}
textValue37 = "name"
textValue38 = "fFrontBalanceMult"
textValue36[textValue37] = textValue38
textValue37 = "type"
textValue38 = "float"
textValue36[textValue37] = textValue38
textValue37 = {}
textValue38 = "name"
textValue39 = "fBikeGroundSideFrictionMult"
textValue37[textValue38] = textValue39
textValue38 = "type"
textValue39 = "float"
textValue37[textValue38] = textValue39
textValue38 = {}
textValue39 = "name"
textValue40 = "fBikeWheelGroundSideFrictionMult"
textValue38[textValue39] = textValue40
textValue39 = "type"
textValue40 = "float"
textValue38[textValue39] = textValue40
textValue39 = {}
textValue40 = "name"
textValue41 = "fBikeOnStandLeanAngle"
textValue39[textValue40] = textValue41
textValue40 = "type"
textValue41 = "float"
textValue39[textValue40] = textValue41
textValue40 = {}
textValue41 = "name"
textValue42 = "fBikeOnStandSteerAngle"
textValue40[textValue41] = textValue42
textValue41 = "type"
textValue42 = "float"
textValue40[textValue41] = textValue42
textValue41 = {}
textValue42 = "name"
textValue43 = "fJumpForce"
textValue41[textValue42] = textValue43
textValue42 = "type"
textValue43 = "float"
textValue41[textValue42] = textValue43
dataTable40[1] = dataTable41
dataTable40[2] = textValue22
dataTable40[3] = textValue23
dataTable40[4] = textValue24
dataTable40[5] = textValue25
dataTable40[6] = textValue26
dataTable40[7] = textValue27
dataTable40[8] = textValue28
dataTable40[9] = textValue30
dataTable40[10] = textValue31
dataTable40[11] = textValue32
dataTable40[12] = textValue33
dataTable40[13] = textValue34
dataTable40[14] = textValue35
dataTable40[15] = textValue36
dataTable40[16] = textValue37
dataTable40[17] = textValue38
dataTable40[18] = textValue39
dataTable40[19] = textValue40
dataTable40[20] = textValue41
dataTable38[dataTable39] = dataTable40
dataTable39 = "CSubmarineHandlingData"
dataTable40 = {}
dataTable41 = {}
textValue22 = "name"
textValue23 = "vTurnRes"
dataTable41[textValue22] = textValue23
textValue22 = "type"
textValue23 = "vector"
dataTable41[textValue22] = textValue23
textValue22 = {}
textValue23 = "name"
textValue24 = "fMoveResXY"
textValue22[textValue23] = textValue24
textValue23 = "type"
textValue24 = "float"
textValue22[textValue23] = textValue24
textValue23 = {}
textValue24 = "name"
textValue25 = "fMoveResZ"
textValue23[textValue24] = textValue25
textValue24 = "type"
textValue25 = "float"
textValue23[textValue24] = textValue25
textValue24 = {}
textValue25 = "name"
textValue26 = "fPitchMult"
textValue24[textValue25] = textValue26
textValue25 = "type"
textValue26 = "float"
textValue24[textValue25] = textValue26
textValue25 = {}
textValue26 = "name"
textValue27 = "fPitchAngle"
textValue25[textValue26] = textValue27
textValue26 = "type"
textValue27 = "float"
textValue25[textValue26] = textValue27
textValue26 = {}
textValue27 = "name"
textValue28 = "fYawMult"
textValue26[textValue27] = textValue28
textValue27 = "type"
textValue28 = "float"
textValue26[textValue27] = textValue28
textValue27 = {}
textValue28 = "name"
textValue30 = "fDiveSpeed"
textValue27[textValue28] = textValue30
textValue28 = "type"
textValue30 = "float"
textValue27[textValue28] = textValue30
textValue28 = {}
textValue30 = "name"
textValue31 = "fRollMult"
textValue28[textValue30] = textValue31
textValue30 = "type"
textValue31 = "float"
textValue28[textValue30] = textValue31
textValue30 = {}
textValue31 = "name"
textValue32 = "fRollStab"
textValue30[textValue31] = textValue32
textValue31 = "type"
textValue32 = "float"
textValue30[textValue31] = textValue32
dataTable40[1] = dataTable41
dataTable40[2] = textValue22
dataTable40[3] = textValue23
dataTable40[4] = textValue24
dataTable40[5] = textValue25
dataTable40[6] = textValue26
dataTable40[7] = textValue27
dataTable40[8] = textValue28
dataTable40[9] = textValue30
dataTable38[dataTable39] = dataTable40
dataTable39 = "CSpecialFlightHandlingData"
dataTable40 = {}
dataTable41 = {}
textValue22 = "name"
textValue23 = "vecAngularDamping"
dataTable41[textValue22] = textValue23
textValue22 = "type"
textValue23 = "vector"
dataTable41[textValue22] = textValue23
textValue22 = {}
textValue23 = "name"
textValue24 = "vecAngularDampingMin"
textValue22[textValue23] = textValue24
textValue23 = "type"
textValue24 = "vector"
textValue22[textValue23] = textValue24
textValue23 = {}
textValue24 = "name"
textValue25 = "vecLinearDamping"
textValue23[textValue24] = textValue25
textValue24 = "type"
textValue25 = "vector"
textValue23[textValue24] = textValue25
textValue24 = {}
textValue25 = "name"
textValue26 = "vecLinearDampingMin"
textValue24[textValue25] = textValue26
textValue25 = "type"
textValue26 = "vector"
textValue24[textValue25] = textValue26
textValue25 = {}
textValue26 = "name"
textValue27 = "fLiftCoefficient"
textValue25[textValue26] = textValue27
textValue26 = "type"
textValue27 = "float"
textValue25[textValue26] = textValue27
textValue26 = {}
textValue27 = "name"
textValue28 = "fCriticalLiftAngle"
textValue26[textValue27] = textValue28
textValue27 = "type"
textValue28 = "float"
textValue26[textValue27] = textValue28
textValue27 = {}
textValue28 = "name"
textValue30 = "fInitialLiftAngle"
textValue27[textValue28] = textValue30
textValue28 = "type"
textValue30 = "float"
textValue27[textValue28] = textValue30
textValue28 = {}
textValue30 = "name"
textValue31 = "fMaxLiftAngle"
textValue28[textValue30] = textValue31
textValue30 = "type"
textValue31 = "float"
textValue28[textValue30] = textValue31
textValue30 = {}
textValue31 = "name"
textValue32 = "fDragCoefficient"
textValue30[textValue31] = textValue32
textValue31 = "type"
textValue32 = "float"
textValue30[textValue31] = textValue32
textValue31 = {}
textValue32 = "name"
textValue33 = "fBrakingDrag"
textValue31[textValue32] = textValue33
textValue32 = "type"
textValue33 = "float"
textValue31[textValue32] = textValue33
textValue32 = {}
textValue33 = "name"
textValue34 = "fMaxLiftVelocity"
textValue32[textValue33] = textValue34
textValue33 = "type"
textValue34 = "float"
textValue32[textValue33] = textValue34
textValue33 = {}
textValue34 = "name"
textValue35 = "fMinLiftVelocity"
textValue33[textValue34] = textValue35
textValue34 = "type"
textValue35 = "float"
textValue33[textValue34] = textValue35
textValue34 = {}
textValue35 = "name"
textValue36 = "fRollTorqueScale"
textValue34[textValue35] = textValue36
textValue35 = "type"
textValue36 = "float"
textValue34[textValue35] = textValue36
textValue35 = {}
textValue36 = "name"
textValue37 = "fMaxTorqueVelocity"
textValue35[textValue36] = textValue37
textValue36 = "type"
textValue37 = "float"
textValue35[textValue36] = textValue37
textValue36 = {}
textValue37 = "name"
textValue38 = "fMinTorqueVelocity"
textValue36[textValue37] = textValue38
textValue37 = "type"
textValue38 = "float"
textValue36[textValue37] = textValue38
textValue37 = {}
textValue38 = "name"
textValue39 = "fYawTorqueScale"
textValue37[textValue38] = textValue39
textValue38 = "type"
textValue39 = "float"
textValue37[textValue38] = textValue39
textValue38 = {}
textValue39 = "name"
textValue40 = "fSelfLevelingPitchTorqueScale"
textValue38[textValue39] = textValue40
textValue39 = "type"
textValue40 = "float"
textValue38[textValue39] = textValue40
textValue39 = {}
textValue40 = "name"
textValue41 = "fInitalOverheadAssist"
textValue39[textValue40] = textValue41
textValue40 = "type"
textValue41 = "float"
textValue39[textValue40] = textValue41
textValue40 = {}
textValue41 = "name"
textValue42 = "fMaxPitchTorque"
textValue40[textValue41] = textValue42
textValue41 = "type"
textValue42 = "float"
textValue40[textValue41] = textValue42
textValue41 = {}
textValue42 = "name"
textValue43 = "fMaxSteeringRollTorque"
textValue41[textValue42] = textValue43
textValue42 = "type"
textValue43 = "float"
textValue41[textValue42] = textValue43
textValue42 = {}
textValue43 = "name"
textValue44 = "fPitchTorqueScale"
textValue42[textValue43] = textValue44
textValue43 = "type"
textValue44 = "float"
textValue42[textValue43] = textValue44
textValue43 = {}
textValue44 = "name"
textValue45 = "fSteeringTorqueScale"
textValue43[textValue44] = textValue45
textValue44 = "type"
textValue45 = "float"
textValue43[textValue44] = textValue45
textValue44 = {}
textValue45 = "name"
textValue46 = "fMaxThrust"
textValue44[textValue45] = textValue46
textValue45 = "type"
textValue46 = "float"
textValue44[textValue45] = textValue46
textValue45 = {}
textValue46 = "name"
textValue47 = "fTransitionDuration"
textValue45[textValue46] = textValue47
textValue46 = "type"
textValue47 = "float"
textValue45[textValue46] = textValue47
textValue46 = {}
textValue47 = "name"
textValue48 = "fHoverVelocityScale"
textValue46[textValue47] = textValue48
textValue47 = "type"
textValue48 = "float"
textValue46[textValue47] = textValue48
textValue47 = {}
textValue48 = "name"
textValue49 = "fStabilityAssist"
textValue47[textValue48] = textValue49
textValue48 = "type"
textValue49 = "float"
textValue47[textValue48] = textValue49
textValue48 = {}
textValue49 = "name"
textValue50 = "fMinSpeedForThrustFalloff"
textValue48[textValue49] = textValue50
textValue49 = "type"
textValue50 = "float"
textValue48[textValue49] = textValue50
textValue49 = {}
textValue50 = "name"
textValue51 = "fBrakingThrustScale"
textValue49[textValue50] = textValue51
textValue50 = "type"
textValue51 = "float"
textValue49[textValue50] = textValue51
textValue50 = {}
textValue51 = "name"
textValue52 = "mode"
textValue50[textValue51] = textValue52
textValue51 = "type"
textValue52 = "integer"
textValue50[textValue51] = textValue52
dataTable40[1] = dataTable41
dataTable40[2] = textValue22
dataTable40[3] = textValue23
dataTable40[4] = textValue24
dataTable40[5] = textValue25
dataTable40[6] = textValue26
dataTable40[7] = textValue27
dataTable40[8] = textValue28
dataTable40[9] = textValue30
dataTable40[10] = textValue31
dataTable40[11] = textValue32
dataTable40[12] = textValue33
dataTable40[13] = textValue34
dataTable40[14] = textValue35
dataTable40[15] = textValue36
dataTable40[16] = textValue37
dataTable40[17] = textValue38
dataTable40[18] = textValue39
dataTable40[19] = textValue40
dataTable40[20] = textValue41
dataTable40[21] = textValue42
dataTable40[22] = textValue43
dataTable40[23] = textValue44
dataTable40[24] = textValue45
dataTable40[25] = textValue46
dataTable40[26] = textValue47
dataTable40[27] = textValue48
dataTable40[28] = textValue49
dataTable40[29] = textValue50
dataTable38[dataTable39] = dataTable40
dataTable39 = "CFlyingHandlingData"
dataTable40 = {}
dataTable41 = {}
textValue22 = "name"
textValue23 = "fThrust"
dataTable41[textValue22] = textValue23
textValue22 = "type"
textValue23 = "float"
dataTable41[textValue22] = textValue23
textValue22 = {}
textValue23 = "name"
textValue24 = "fThrustFallOff"
textValue22[textValue23] = textValue24
textValue23 = "type"
textValue24 = "float"
textValue22[textValue23] = textValue24
textValue23 = {}
textValue24 = "name"
textValue25 = "fThrustVectoring"
textValue23[textValue24] = textValue25
textValue24 = "type"
textValue25 = "float"
textValue23[textValue24] = textValue25
textValue24 = {}
textValue25 = "name"
textValue26 = "fInitialThrust"
textValue24[textValue25] = textValue26
textValue25 = "type"
textValue26 = "float"
textValue24[textValue25] = textValue26
textValue25 = {}
textValue26 = "name"
textValue27 = "fInitialThrustFallOff"
textValue25[textValue26] = textValue27
textValue26 = "type"
textValue27 = "float"
textValue25[textValue26] = textValue27
textValue26 = {}
textValue27 = "name"
textValue28 = "fYawMult"
textValue26[textValue27] = textValue28
textValue27 = "type"
textValue28 = "float"
textValue26[textValue27] = textValue28
textValue27 = {}
textValue28 = "name"
textValue30 = "fYawStabilise"
textValue27[textValue28] = textValue30
textValue28 = "type"
textValue30 = "float"
textValue27[textValue28] = textValue30
textValue28 = {}
textValue30 = "name"
textValue31 = "fSideSlipMult"
textValue28[textValue30] = textValue31
textValue30 = "type"
textValue31 = "float"
textValue28[textValue30] = textValue31
textValue30 = {}
textValue31 = "name"
textValue32 = "fInitialYawMult"
textValue30[textValue31] = textValue32
textValue31 = "type"
textValue32 = "float"
textValue30[textValue31] = textValue32
textValue31 = {}
textValue32 = "name"
textValue33 = "fRollMult"
textValue31[textValue32] = textValue33
textValue32 = "type"
textValue33 = "float"
textValue31[textValue32] = textValue33
textValue32 = {}
textValue33 = "name"
textValue34 = "fRollStabilise"
textValue32[textValue33] = textValue34
textValue33 = "type"
textValue34 = "float"
textValue32[textValue33] = textValue34
textValue33 = {}
textValue34 = "name"
textValue35 = "fInitialRollMult"
textValue33[textValue34] = textValue35
textValue34 = "type"
textValue35 = "float"
textValue33[textValue34] = textValue35
textValue34 = {}
textValue35 = "name"
textValue36 = "fPitchMult"
textValue34[textValue35] = textValue36
textValue35 = "type"
textValue36 = "float"
textValue34[textValue35] = textValue36
textValue35 = {}
textValue36 = "name"
textValue37 = "fPitchStabilise"
textValue35[textValue36] = textValue37
textValue36 = "type"
textValue37 = "float"
textValue35[textValue36] = textValue37
textValue36 = {}
textValue37 = "name"
textValue38 = "fFormLiftMult"
textValue36[textValue37] = textValue38
textValue37 = "type"
textValue38 = "float"
textValue36[textValue37] = textValue38
textValue37 = {}
textValue38 = "name"
textValue39 = "fAttackLiftMult"
textValue37[textValue38] = textValue39
textValue38 = "type"
textValue39 = "float"
textValue37[textValue38] = textValue39
textValue38 = {}
textValue39 = "name"
textValue40 = "fAttackDiveMult"
textValue38[textValue39] = textValue40
textValue39 = "type"
textValue40 = "float"
textValue38[textValue39] = textValue40
textValue39 = {}
textValue40 = "name"
textValue41 = "fGearDownDragV"
textValue39[textValue40] = textValue41
textValue40 = "type"
textValue41 = "float"
textValue39[textValue40] = textValue41
textValue40 = {}
textValue41 = "name"
textValue42 = "fGearDownLiftMult"
textValue40[textValue41] = textValue42
textValue41 = "type"
textValue42 = "float"
textValue40[textValue41] = textValue42
textValue41 = {}
textValue42 = "name"
textValue43 = "fWindMult"
textValue41[textValue42] = textValue43
textValue42 = "type"
textValue43 = "float"
textValue41[textValue42] = textValue43
textValue42 = {}
textValue43 = "name"
textValue44 = "fMoveRes"
textValue42[textValue43] = textValue44
textValue43 = "type"
textValue44 = "float"
textValue42[textValue43] = textValue44
textValue43 = {}
textValue44 = "name"
textValue45 = "vecTurnRes"
textValue43[textValue44] = textValue45
textValue44 = "type"
textValue45 = "vector"
textValue43[textValue44] = textValue45
textValue44 = {}
textValue45 = "name"
textValue46 = "vecSpeedRes"
textValue44[textValue45] = textValue46
textValue45 = "type"
textValue46 = "vector"
textValue44[textValue45] = textValue46
textValue45 = {}
textValue46 = "name"
textValue47 = "fGearDoorFrontOpen"
textValue45[textValue46] = textValue47
textValue46 = "type"
textValue47 = "float"
textValue45[textValue46] = textValue47
textValue46 = {}
textValue47 = "name"
textValue48 = "fGearDoorRearOpen"
textValue46[textValue47] = textValue48
textValue47 = "type"
textValue48 = "float"
textValue46[textValue47] = textValue48
textValue47 = {}
textValue48 = "name"
textValue49 = "fGearDoorRearOpen2"
textValue47[textValue48] = textValue49
textValue48 = "type"
textValue49 = "float"
textValue47[textValue48] = textValue49
textValue48 = {}
textValue49 = "name"
textValue50 = "fGearDoorRearMOpen"
textValue48[textValue49] = textValue50
textValue49 = "type"
textValue50 = "float"
textValue48[textValue49] = textValue50
textValue49 = {}
textValue50 = "name"
textValue51 = "fTurublenceMagnitudeMax"
textValue49[textValue50] = textValue51
textValue50 = "type"
textValue51 = "float"
textValue49[textValue50] = textValue51
textValue50 = {}
textValue51 = "name"
textValue52 = "fTurublenceForceMulti"
textValue50[textValue51] = textValue52
textValue51 = "type"
textValue52 = "float"
textValue50[textValue51] = textValue52
textValue51 = {}
textValue52 = "name"
textValue53 = "fTurublenceRollTorqueMulti"
textValue51[textValue52] = textValue53
textValue52 = "type"
textValue53 = "float"
textValue51[textValue52] = textValue53
textValue52 = {}
textValue53 = "name"
textValue54 = "fTurublencePitchTorqueMulti"
textValue52[textValue53] = textValue54
textValue53 = "type"
textValue54 = "float"
textValue52[textValue53] = textValue54
textValue53 = {}
textValue54 = "name"
textValue55 = "fBodyDamageControlEffectMult"
textValue53[textValue54] = textValue55
textValue54 = "type"
textValue55 = "float"
textValue53[textValue54] = textValue55
textValue54 = {}
textValue55 = "name"
textValue56 = "fInputSensitivityForDifficulty"
textValue54[textValue55] = textValue56
textValue55 = "type"
textValue56 = "float"
textValue54[textValue55] = textValue56
textValue55 = {}
textValue56 = "name"
textValue57 = "fOnGroundYawBoostSpeedPeak"
textValue55[textValue56] = textValue57
textValue56 = "type"
textValue57 = "float"
textValue55[textValue56] = textValue57
textValue56 = {}
textValue57 = "name"
textValue58 = "fOnGroundYawBoostSpeedCap"
textValue56[textValue57] = textValue58
textValue57 = "type"
textValue58 = "float"
textValue56[textValue57] = textValue58
textValue57 = {}
textValue58 = "name"
textValue59 = "fEngineOffGlideMulti"
textValue57[textValue58] = textValue59
textValue58 = "type"
textValue59 = "float"
textValue57[textValue58] = textValue59
textValue58 = {}
textValue59 = "name"
textValue = "fAfterburnerEffectRadius"
textValue58[textValue59] = textValue
textValue59 = "type"
textValue = "float"
textValue58[textValue59] = textValue
textValue59 = {}
textValue = "name"
textValue2 = "fAfterburnerEffectDistance"
textValue59[textValue] = textValue2
textValue = "type"
textValue2 = "float"
textValue59[textValue] = textValue2
textValue = {}
textValue2 = "name"
textValue3 = "fAfterburnerEffectForceMulti"
textValue[textValue2] = textValue3
textValue2 = "type"
textValue3 = "float"
textValue[textValue2] = textValue3
textValue2 = {}
textValue3 = "name"
textValue4 = "fSubmergeLevelToPullHeliUnderwater"
textValue2[textValue3] = textValue4
textValue3 = "type"
textValue4 = "float"
textValue2[textValue3] = textValue4
textValue3 = {}
textValue4 = "name"
textValue5 = "fExtraLiftWithRoll"
textValue3[textValue4] = textValue5
textValue4 = "type"
textValue5 = "float"
textValue3[textValue4] = textValue5
dataTable40[1] = dataTable41
dataTable40[2] = textValue22
dataTable40[3] = textValue23
dataTable40[4] = textValue24
dataTable40[5] = textValue25
dataTable40[6] = textValue26
dataTable40[7] = textValue27
dataTable40[8] = textValue28
dataTable40[9] = textValue30
dataTable40[10] = textValue31
dataTable40[11] = textValue32
dataTable40[12] = textValue33
dataTable40[13] = textValue34
dataTable40[14] = textValue35
dataTable40[15] = textValue36
dataTable40[16] = textValue37
dataTable40[17] = textValue38
dataTable40[18] = textValue39
dataTable40[19] = textValue40
dataTable40[20] = textValue41
dataTable40[21] = textValue42
dataTable40[22] = textValue43
dataTable40[23] = textValue44
dataTable40[24] = textValue45
dataTable40[25] = textValue46
dataTable40[26] = textValue47
dataTable40[27] = textValue48
dataTable40[28] = textValue49
dataTable40[29] = textValue50
dataTable40[30] = textValue51
dataTable40[31] = textValue52
dataTable40[32] = textValue53
dataTable40[33] = textValue54
dataTable40[34] = textValue55
dataTable40[35] = textValue56
dataTable40[36] = textValue57
dataTable40[37] = textValue58
dataTable40[38] = textValue59
dataTable40[39] = textValue
dataTable40[40] = textValue2
dataTable40[41] = textValue3
dataTable38[dataTable39] = dataTable40
dataTable39 = "CSeaPlaneHandlingData"
dataTable40 = {}
dataTable41 = {}
textValue22 = "name"
textValue23 = "fLeftPontoonComponentId"
dataTable41[textValue22] = textValue23
textValue22 = "type"
textValue23 = "integer"
dataTable41[textValue22] = textValue23
textValue22 = {}
textValue23 = "name"
textValue24 = "fRightPontoonComponentId"
textValue22[textValue23] = textValue24
textValue23 = "type"
textValue24 = "integer"
textValue22[textValue23] = textValue24
textValue23 = {}
textValue24 = "name"
textValue25 = "fPontoonBuoyConst"
textValue23[textValue24] = textValue25
textValue24 = "type"
textValue25 = "float"
textValue23[textValue24] = textValue25
textValue24 = {}
textValue25 = "name"
textValue26 = "fPontoonSampleSizeFront"
textValue24[textValue25] = textValue26
textValue25 = "type"
textValue26 = "float"
textValue24[textValue25] = textValue26
textValue25 = {}
textValue26 = "name"
textValue27 = "fPontoonSampleSizeMiddle"
textValue25[textValue26] = textValue27
textValue26 = "type"
textValue27 = "float"
textValue25[textValue26] = textValue27
textValue26 = {}
textValue27 = "name"
textValue28 = "fPontoonSampleSizeRear"
textValue26[textValue27] = textValue28
textValue27 = "type"
textValue28 = "float"
textValue26[textValue27] = textValue28
textValue27 = {}
textValue28 = "name"
textValue30 = "fPontoonLengthFractionForSamples"
textValue27[textValue28] = textValue30
textValue28 = "type"
textValue30 = "float"
textValue27[textValue28] = textValue30
textValue28 = {}
textValue30 = "name"
textValue31 = "fPontoonDragCoefficient"
textValue28[textValue30] = textValue31
textValue30 = "type"
textValue31 = "float"
textValue28[textValue30] = textValue31
textValue30 = {}
textValue31 = "name"
textValue32 = "fPontoonVerticalDampingCoefficientUp"
textValue30[textValue31] = textValue32
textValue31 = "type"
textValue32 = "float"
textValue30[textValue31] = textValue32
textValue31 = {}
textValue32 = "name"
textValue33 = "fPontoonVerticalDampingCoefficientDown"
textValue31[textValue32] = textValue33
textValue32 = "type"
textValue33 = "float"
textValue31[textValue32] = textValue33
textValue32 = {}
textValue33 = "name"
textValue34 = "fKeelSphereSize"
textValue32[textValue33] = textValue34
textValue33 = "type"
textValue34 = "float"
textValue32[textValue33] = textValue34
dataTable40[1] = dataTable41
dataTable40[2] = textValue22
dataTable40[3] = textValue23
dataTable40[4] = textValue24
dataTable40[5] = textValue25
dataTable40[6] = textValue26
dataTable40[7] = textValue27
dataTable40[8] = textValue28
dataTable40[9] = textValue30
dataTable40[10] = textValue31
dataTable40[11] = textValue32
dataTable38[dataTable39] = dataTable40
dataTable39 = dataTable
dataTable40 = "CHandlingData"

-- === HELPER FUNCTION (decompiler name: dataTable41; parameters: none) ===
function dataTable41()
  local arg1, arg2
  arg1 = {}
  arg2 = {}
  arg1.speedBuffer = arg2
  arg1.speed = 0.0
  arg1.speedDisplay = 0.0
  arg1.accel = 0.0
  arg1.accelDisplay = 0.0
  arg1.decel = 0.0
  arg1.decelDisplay = 0.0
  return arg1
end
textValue22 = false
textValue23 = dataTable41
textValue23 = textValue23()

-- === HELPER FUNCTION (decompiler name: textValue24; parameters: none) ===
function textValue24()
  local arg1, arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  arg2 = GetEntitySpeed
  arg3 = arg1
  -- Beginner: result below is speed.
  arg2 = arg2(arg3)
  arg3 = table
  arg3 = arg3.insert
  textValue17 = textValue23.speedBuffer
  numberValue24 = arg2
  arg3(textValue17, numberValue24)
  arg3 = textValue23.speedBuffer
  arg3 = #arg3
  if arg3 > 100 then
    arg3 = table
    arg3 = arg3.remove
    textValue17 = textValue23.speedBuffer
    numberValue24 = 1
    arg3(textValue17, numberValue24)
  end
  arg3 = 0.0
  textValue17 = 0.0
  numberValue24 = 0
  modelHash = 0
  cmgCall5 = ipairs
  workValue18 = textValue23.speedBuffer
  cmgCall5, workValue18, workValue20, workValue21 = cmgCall5(workValue18)
  for workValue, textValue8 in cmgCall5, workValue18, workValue20, workValue21 do
    if workValue > 1 then
      flag4 = textValue23.speedBuffer
      workValue3 = workValue - 1
      flag4 = flag4[workValue3]
      flag4 = textValue8 - flag4
      if flag4 > 0.0 then
        arg3 = arg3 + flag4
        numberValue24 = numberValue24 + 1
      else
        textValue17 = arg3 + flag4
        modelHash = modelHash + 1
      end
    end
  end
  arg3 = arg3 / numberValue24
  textValue17 = textValue17 / modelHash
  cmgCall5 = math
  cmgCall5 = cmgCall5.max
  workValue18 = textValue23.speed
  workValue20 = arg2
  cmgCall5 = cmgCall5(workValue18, workValue20)
  textValue23.speed = cmgCall5
  cmgCall5 = textValue23.speed
  cmgCall5 = cmgCall5 * 2.236936
  textValue23.speedDisplay = cmgCall5
  cmgCall5 = math
  cmgCall5 = cmgCall5.max
  workValue18 = textValue23.accel
  workValue20 = arg3
  cmgCall5 = cmgCall5(workValue18, workValue20)
  textValue23.accel = cmgCall5
  cmgCall5 = textValue23.accel
  cmgCall5 = cmgCall5 * 60.0
  cmgCall5 = cmgCall5 * 2.236936
  textValue23.accelDisplay = cmgCall5
  cmgCall5 = math
  cmgCall5 = cmgCall5.min
  workValue18 = textValue23.decel
  workValue20 = textValue17
  cmgCall5 = cmgCall5(workValue18, workValue20)
  textValue23.decel = cmgCall5
  cmgCall5 = math
  cmgCall5 = cmgCall5.abs
  workValue18 = textValue23.decel
  cmgCall5 = cmgCall5(workValue18)
  cmgCall5 = cmgCall5 * 60.0
  cmgCall5 = cmgCall5 * 2.236936
  textValue23.decelDisplay = cmgCall5
end

-- === HELPER FUNCTION (decompiler name: textValue25; parameters: arg1) ===
function textValue25(arg1)
  local arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  if 0 == arg2 then
    arg3 = "0.0"
    return arg3
  end
  arg3 = arg1.type
  if "float" == arg3 then
    arg3 = GetVehicleHandlingFloat
    textValue17 = arg2
    numberValue24 = dataTable40
    modelHash = arg1.name
    arg3 = arg3(textValue17, numberValue24, modelHash)
    textValue17 = string
    textValue17 = textValue17.format
    numberValue24 = "%.5f"
    modelHash = arg3
    return textValue17(numberValue24, modelHash)
  else
    arg3 = arg1.type
    if "integer" == arg3 then
      arg3 = GetVehicleHandlingInt
      textValue17 = arg2
      numberValue24 = dataTable40
      modelHash = arg1.name
      arg3 = arg3(textValue17, numberValue24, modelHash)
      textValue17 = tostring
      numberValue24 = arg3
      return textValue17(numberValue24)
    else
      arg3 = arg1.type
      if "vector" == arg3 then
        arg3 = GetVehicleHandlingVector
        textValue17 = arg2
        numberValue24 = dataTable40
        modelHash = arg1.name
        arg3 = arg3(textValue17, numberValue24, modelHash)
        textValue17 = string
        textValue17 = textValue17.format
        numberValue24 = "%.3f %.3f %.3f"
        modelHash = arg3.x
        cmgCall5 = arg3.y
        workValue18 = arg3.z
        return textValue17(numberValue24, modelHash, cmgCall5, workValue18)
      end
    end
  end
  arg3 = "INVALID"
  return arg3
end

-- === HELPER FUNCTION (decompiler name: textValue26; parameters: arg1) ===
function textValue26(arg1)
  local arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue
  arg2 = CMG
  arg2 = arg2.GetRageInputText
  arg3 = "Enter Value"
  arg2 = arg2(arg3)
  if not arg2 then
    arg3 = notify
    textValue17 = "~r~Input cancelled."
    -- Beginner: Show a notification to the player.
    arg3(textValue17)
    return
  end
  arg3 = CMG
  arg3 = arg3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg3 = arg3()
  textValue17 = arg1.type
  if "float" == textValue17 then
    textValue17 = tonumber
    numberValue24 = arg2
    textValue17 = textValue17(numberValue24)
    if textValue17 then
      numberValue24 = SetVehicleHandlingFloat
      modelHash = arg3
      cmgCall5 = dataTable40
      workValue18 = arg1.name
      workValue20 = textValue17 + 0.0
      numberValue24(modelHash, cmgCall5, workValue18, workValue20)
    else
      numberValue24 = notify
      modelHash = "~r~Can not parse float."
      -- Beginner: Show a notification to the player.
      numberValue24(modelHash)
    end
  else
    textValue17 = arg1.type
    if "integer" == textValue17 then
      textValue17 = tonumber
      numberValue24 = arg2
      textValue17 = textValue17(numberValue24)
      if textValue17 then
        numberValue24 = SetVehicleHandlingInt
        modelHash = arg3
        cmgCall5 = dataTable40
        workValue18 = arg1.name
        workValue20 = math
        workValue20 = workValue20.floor
        workValue21 = textValue17
        workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue = workValue20(workValue21)
        numberValue24(modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue)
      else
        numberValue24 = notify
        modelHash = "~r~Can not parse integer."
        -- Beginner: Show a notification to the player.
        numberValue24(modelHash)
      end
    else
      textValue17 = arg1.type
      if "vector" == textValue17 then
        textValue17 = stringsplit
        numberValue24 = arg2
        modelHash = " "
        textValue17 = textValue17(numberValue24, modelHash)
        if textValue17 then
          numberValue24 = #textValue17
          if numberValue24 >= 3 then
            numberValue24 = tonumber
            modelHash = textValue17[1]
            numberValue24 = numberValue24(modelHash)
            modelHash = tonumber
            cmgCall5 = textValue17[2]
            modelHash = modelHash(cmgCall5)
            cmgCall5 = tonumber
            workValue18 = textValue17[3]
            cmgCall5 = cmgCall5(workValue18)
            if numberValue24 and modelHash and cmgCall5 then
              workValue18 = SetVehicleHandlingVector
              workValue20 = arg3
              workValue21 = dataTable40
              workValue = arg1.name
              textValue8 = vector3
              flag4 = numberValue24 + 0.0
              workValue3 = modelHash + 0.0
              nameValue = cmgCall5 + 0.0
              textValue8, flag4, workValue3, nameValue = textValue8(flag4, workValue3, nameValue)
              workValue18(workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue)
            else
              workValue18 = notify
              workValue20 = "~r~Can not parse vector."
              -- Beginner: Show a notification to the player.
              workValue18(workValue20)
            end
        end
        else
          numberValue24 = notify
          modelHash = "~r~Expected 3 floats."
          numberValue24(modelHash)
        end
      end
    end
  end
  textValue17 = dataTable9
  numberValue24 = arg3
  textValue17(numberValue24)
end

-- === HELPER FUNCTION (decompiler name: textValue27; parameters: none) ===
function textValue27()
  local arg1, arg2, arg3, textValue17, numberValue24
  arg1 = dataTable34
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  arg3 = dataTable39
  textValue17 = dataTable40
  arg1 = arg1(arg2, arg3, textValue17)
  arg2 = CMG
  arg2 = arg2.clientPrompt
  arg3 = "Output (CTRL+A, CTRL+C)"
  textValue17 = arg1

  -- === HELPER FUNCTION (decompiler name: numberValue24; parameters: none) ===
  function numberValue24()
    local arg12, arg22
  end
  arg2(arg3, textValue17, numberValue24)
end

-- === HELPER FUNCTION (decompiler name: textValue28; parameters: arg1) ===
function textValue28(arg1)
  local arg2, arg3
  textValue22 = arg1
  arg2 = CMG
  arg2 = arg2.setCursor
  if arg1 then
    arg3 = 1
    if arg3 then
      goto flow_label_10
    end
  end
  arg3 = 0
  ::flow_label_10::
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.setInGUI
  arg3 = arg1
  arg2(arg3)
end
textValue30 = false
textValue31 = false
textValue32 = 0
textValue33 = false
textValue34 = _ENV
textValue35 = "RegisterCommand"
textValue34 = textValue34[textValue35]
textValue35 = "hidecardevdraws"

-- === HELPER FUNCTION (decompiler name: textValue36; parameters: none) ===
function textValue36()
  local arg1, arg2
  arg1 = textValue33
  arg1 = not arg1
  textValue33 = arg1
end
textValue37 = false
textValue34(textValue35, textValue36, textValue37)

-- === HELPER FUNCTION (decompiler name: textValue34; parameters: none) ===
function textValue34()
  local arg1, arg2, arg3, textValue17, numberValue24, modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8, dataTable5, numberValue11, numberValue12, numberValue13, numberValue14, numberValue16, numberValue17, numberValue18, numberValue20, numberValue21, numberValue22, flag18, flag20, numberValue23, flag21, workValue15, workValue16, flag22
  arg1 = dataTable20
  if arg1 then
    arg1 = dataTable37
    arg1()
  end
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  arg1, arg2 = arg1()
  if 0 ~= arg1 then
    if arg2 then
      arg3 = textValue30
      if not arg3 then
        textValue32 = arg1
        arg3 = true
        textValue30 = arg3
      end
      arg3 = textValue31
      if not arg3 then
        arg3 = GetIsTaskActive
        textValue17 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        textValue17 = textValue17()
        numberValue24 = 2
        arg3 = arg3(textValue17, numberValue24)
        if arg3 then
          arg3 = true
          textValue31 = arg3
        end
      end
    end
  else
    arg3 = textValue30
    if arg3 then
      arg3 = textValue31
      if not arg3 then
        arg3 = DoesEntityExist
        textValue17 = textValue32
        arg3 = arg3(textValue17)
        if arg3 then
          arg3 = GetEntityModel
          textValue17 = textValue32
          -- Beginner: result below is modelHash.
          arg3 = arg3(textValue17)
          if 0 ~= arg3 then
            textValue17 = IsThisModelACar
            numberValue24 = arg3
            textValue17 = textValue17(numberValue24)
            if not textValue17 then
              textValue17 = IsThisModelABike
              numberValue24 = arg3
              textValue17 = textValue17(numberValue24)
              if not textValue17 then
                goto flow_label_68
              end
            end
            textValue17 = CMG
            textValue17 = textValue17.getVehicleIdFromModel
            numberValue24 = arg3
            textValue17 = textValue17(numberValue24)
            if textValue17 then
              numberValue24 = TriggerServerEvent
              modelHash = "eb0c2e0a14"
              cmgCall5 = textValue17
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "eb0c2e0a14".
              numberValue24(modelHash, cmgCall5)
            end
          end
        end
      end
      ::flow_label_68::
      arg3 = false
      textValue30 = arg3
      arg3 = false
      textValue31 = arg3
      arg3 = 0
      textValue32 = arg3
    end
  end
  arg3 = textValue14
  if arg3 then
    arg3 = CMG
    arg3 = arg3.getPlayerBucket
    arg3 = arg3()
    if 333 == arg3 then
      goto flow_label_89
    end
  end
  arg3 = textValue22
  if arg3 then
    arg3 = textValue28
    textValue17 = false
    arg3(textValue17)
  end
  return
  ::flow_label_89::
  arg3 = textValue24
  arg3()
  arg3 = CMG
  arg3 = arg3.getFontId
  textValue17 = "Akrobat-ExtraBold"
  arg3 = arg3(textValue17)
  textValue17 = textValue33
  if not textValue17 then
    textValue17 = textValue22
    if textValue17 then
      textValue17 = 0.345
      if textValue17 then
        goto flow_label_105
      end
    end
    textValue17 = 0.505
    ::flow_label_105::
    numberValue24 = DrawAdvancedTextNoOutline
    modelHash = textValue17
    cmgCall5 = 0.055
    workValue18 = 0.005
    workValue20 = 0.02
    workValue21 = 0.35
    workValue = string
    workValue = workValue.format
    textValue8 = "Top Speed: %.5f"
    flag4 = textValue23.speedDisplay
    workValue = workValue(textValue8, flag4)
    textValue8 = 255
    flag4 = 255
    workValue3 = 255
    nameValue = 255
    nameValue2 = arg3
    numberValue5 = 1
    numberValue24(modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5)
    numberValue24 = DrawAdvancedTextNoOutline
    modelHash = textValue17
    cmgCall5 = 0.075
    workValue18 = 0.005
    workValue20 = 0.02
    workValue21 = 0.35
    workValue = string
    workValue = workValue.format
    textValue8 = "Top Acceleration: %.5f"
    flag4 = textValue23.accelDisplay
    workValue = workValue(textValue8, flag4)
    textValue8 = 255
    flag4 = 255
    workValue3 = 255
    nameValue = 255
    nameValue2 = arg3
    numberValue5 = 1
    numberValue24(modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5)
    numberValue24 = DrawAdvancedTextNoOutline
    modelHash = textValue17
    cmgCall5 = 0.095
    workValue18 = 0.005
    workValue20 = 0.02
    workValue21 = 0.35
    workValue = string
    workValue = workValue.format
    textValue8 = "Top Deacceleration: %.5f"
    flag4 = textValue23.decelDisplay
    workValue = workValue(textValue8, flag4)
    textValue8 = 255
    flag4 = 255
    workValue3 = 255
    nameValue = 255
    nameValue2 = arg3
    numberValue5 = 1
    numberValue24(modelHash, cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5)
  end
  textValue17 = DisableControlAction
  numberValue24 = 0
  modelHash = 19
  cmgCall5 = true
  textValue17(numberValue24, modelHash, cmgCall5)
  if 0 ~= arg1 then
    textValue17 = IsDisabledControlJustPressed
    numberValue24 = 0
    modelHash = 19
    textValue17 = textValue17(numberValue24, modelHash)
    if textValue17 then
      textValue17 = CMG
      textValue17 = textValue17.hasClientPermission
      numberValue24 = "cardev.whitelisted"
      textValue17 = textValue17(numberValue24)
      if textValue17 then
        textValue17 = textValue28
        numberValue24 = textValue22
        numberValue24 = not numberValue24
        textValue17(numberValue24)
      end
    end
  end
  textValue17 = CMG
  textValue17 = textValue17.getPlayerCoords
  -- Beginner: result below is playerCoords.
  textValue17 = textValue17()

  -- === HELPER FUNCTION (decompiler name: numberValue24; parameters: arg12, arg22, arg32) ===
  function numberValue24(arg12, arg22, arg32)
    local textValue18, workValue17, flag23, flag25, workValue19, flag28, flag29, flag, numberValue, textValue10, textValue11, textValue12, textValue13, numberValue6, numberValue8, numberValue9, numberValue10, workValue9, workValue10, workValue11, numberValue15, flag13, flag15, numberValue19, flag17, workValue12, workValue13, flag19
    textValue18 = {}
    workValue17 = 255
    flag23 = 255
    flag25 = 0
    textValue18[1] = workValue17
    textValue18[2] = flag23
    textValue18[3] = flag25
    workValue17 = arg12
    flag23 = " Start"
    workValue17 = workValue17 .. flag23
    if 2 == arg22 then
      flag23 = {}
      flag25 = 255
      workValue19 = 0
      flag28 = 0
      flag23[1] = flag25
      flag23[2] = workValue19
      flag23[3] = flag28
      textValue18 = flag23
      flag23 = arg12
      flag25 = " End"
      flag23 = flag23 .. flag25
      workValue17 = flag23
    end
    flag23 = CMG
    flag23 = flag23.getPlayerCoords
    -- Beginner: result below is playerCoords.
    flag23 = flag23()
    flag23 = flag23 - arg32
    flag23 = #flag23
    flag25 = 150.0
    if flag23 < flag25 then
      flag25 = CMG
      flag25 = flag25.DrawText3D
      workValue19 = vector3
      flag28 = 0.0
      flag29 = 0.0
      flag = 1.0
      workValue19 = workValue19(flag28, flag29, flag)
      workValue19 = arg32 + workValue19
      flag28 = workValue17
      flag29 = 0.2
      flag25(workValue19, flag28, flag29)
    end
    flag25 = DrawMarker
    workValue19 = 1
    flag28 = arg32.x
    flag29 = arg32.y
    flag = arg32.z
    flag = flag - 1.5
    numberValue = 0.0
    textValue10 = 0.0
    textValue11 = 0.0
    textValue12 = 0.0
    textValue13 = 0.0
    numberValue6 = 0.0
    numberValue8 = 1.0
    numberValue9 = 1.0
    numberValue10 = 15.0
    workValue9 = textValue18[1]
    workValue10 = textValue18[2]
    workValue11 = textValue18[3]
    numberValue15 = 100
    flag13 = false
    flag15 = false
    numberValue19 = 2
    flag17 = false
    workValue12 = nil
    workValue13 = nil
    flag19 = false
    flag25(workValue19, flag28, flag29, flag, numberValue, textValue10, textValue11, textValue12, textValue13, numberValue6, numberValue8, numberValue9, numberValue10, workValue9, workValue10, workValue11, numberValue15, flag13, flag15, numberValue19, flag17, workValue12, workValue13, flag19)
  end
  modelHash = pairs
  cmgCall5 = dataTable13
  modelHash, cmgCall5, workValue18, workValue20 = modelHash(cmgCall5)
  for workValue21, workValue in modelHash, cmgCall5, workValue18, workValue20 do
    textValue8 = vector3Builder
    if textValue8 then
      textValue8 = vector3Builder
      if "Display All" ~= textValue8 then
        textValue8 = vector3Builder
        if textValue8 ~= workValue21 then
          goto flow_label_254
        end
      end
      textValue8 = workValue[1]
      if textValue8 then
        textValue8 = workValue[2]
        if textValue8 then
          textValue8 = pairs
          flag4 = workValue
          textValue8, flag4, workValue3, nameValue = textValue8(flag4)
          for nameValue2, numberValue5 in textValue8, flag4, workValue3, nameValue do
            numberValue7 = numberValue24
            workValue8 = workValue21
            dataTable5 = nameValue2
            numberValue11 = numberValue5
            numberValue7(workValue8, dataTable5, numberValue11)
          end
      end
      else
        textValue8 = DoesEntityExist
        flag4 = arg1
        textValue8 = textValue8(flag4)
        if textValue8 then
          textValue8 = GetEntityForwardVector
          flag4 = arg1
          textValue8 = textValue8(flag4)
          flag4 = tableHelper
          flag4 = textValue17 - flag4
          flag4 = #flag4
          workValue3 = workValue.startDistance
          workValue3 = workValue3 - flag4
          workValue3 = textValue8 * workValue3
          workValue3 = textValue17 + workValue3
          nameValue = numberValue24
          nameValue2 = workValue21
          numberValue5 = 1
          numberValue7 = workValue3
          nameValue(nameValue2, numberValue5, numberValue7)
          nameValue = workValue.endDistance
          nameValue = nameValue - flag4
          nameValue = textValue8 * nameValue
          nameValue = textValue17 + nameValue
          nameValue2 = numberValue24
          numberValue5 = workValue21
          numberValue7 = 2
          workValue8 = nameValue
          nameValue2(numberValue5, numberValue7, workValue8)
        end
      end
    end
    ::flow_label_254::
  end
  modelHash = textValue6
  if modelHash then
    modelHash = CMG
    modelHash = modelHash.getPlayerCoords
    -- Beginner: result below is playerCoords.
    modelHash = modelHash()
    cmgCall5 = {}
    workValue18 = pairs
    workValue20 = CMG
    workValue20 = workValue20.getAllVehicles
    workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8, dataTable5, numberValue11, numberValue12, numberValue13, numberValue14, numberValue16, numberValue17, numberValue18, numberValue20, numberValue21, numberValue22, flag18, flag20, numberValue23, flag21, workValue15, workValue16, flag22 = workValue20()
    workValue18, workValue20, workValue21, workValue = workValue18(workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8, dataTable5, numberValue11, numberValue12, numberValue13, numberValue14, numberValue16, numberValue17, numberValue18, numberValue20, numberValue21, numberValue22, flag18, flag20, numberValue23, flag21, workValue15, workValue16, flag22)
    for textValue8, flag4 in workValue18, workValue20, workValue21, workValue do
      workValue3 = GetEntityModel
      nameValue = flag4
      -- Beginner: result below is modelHash.
      workValue3 = workValue3(nameValue)
      nameValue = CMG
      nameValue = nameValue.getVehicleIdFromModel
      nameValue2 = workValue3
      nameValue = nameValue(nameValue2)
      nameValue2 = GetEntityCoords
      numberValue5 = flag4
      numberValue7 = true
      -- Beginner: result below is entityCoords.
      nameValue2 = nameValue2(numberValue5, numberValue7)
      numberValue5 = modelHash - nameValue2
      numberValue5 = #numberValue5
      numberValue7 = 250.0
      if numberValue5 < numberValue7 then
        numberValue7 = table
        numberValue7 = numberValue7.insert
        workValue8 = cmgCall5
        dataTable5 = {}
        numberValue11 = nameValue
        numberValue12 = nameValue2
        numberValue13 = numberValue5
        dataTable5[1] = numberValue11
        dataTable5[2] = numberValue12
        dataTable5[3] = numberValue13
        numberValue7(workValue8, dataTable5)
      end
    end
    workValue18 = table
    workValue18 = workValue18.sort
    workValue20 = cmgCall5

    -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22) ===
    function workValue21(arg12, arg22)
      local arg32, textValue18
      arg32 = arg12[3]
      textValue18 = arg22[3]
      arg32 = arg32 < textValue18
      return arg32
    end
    workValue18(workValue20, workValue21)
    workValue18 = pairs
    workValue20 = cmgCall5
    workValue18, workValue20, workValue21, workValue = workValue18(workValue20)
    for textValue8, flag4 in workValue18, workValue20, workValue21, workValue do
      if textValue8 > 20 then
        break
      end
      workValue3 = CMG
      workValue3 = workValue3.DrawText3D
      nameValue = flag4[2]
      nameValue2 = flag4[1]
      if not nameValue2 then
        nameValue2 = "N/A"
      end
      numberValue5 = 0.2
      numberValue7 = nil
      workValue8 = true
      workValue3(nameValue, nameValue2, numberValue5, numberValue7, workValue8)
    end
  end
  modelHash = textValue7
  if modelHash then
    modelHash = GetEntitySpeed
    cmgCall5 = arg1
    -- Beginner: result below is speed.
    modelHash = modelHash(cmgCall5)
    modelHash = modelHash * 2.236936
    cmgCall5 = 249.0
    if modelHash >= cmgCall5 then
      cmgCall5 = flag5
      if cmgCall5 then
        cmgCall5 = table
        cmgCall5 = cmgCall5.insert
        workValue18 = textValue9
        workValue20 = GetEntityCoords
        workValue21 = arg1
        workValue = true
        workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8, dataTable5, numberValue11, numberValue12, numberValue13, numberValue14, numberValue16, numberValue17, numberValue18, numberValue20, numberValue21, numberValue22, flag18, flag20, numberValue23, flag21, workValue15, workValue16, flag22 = workValue20(workValue21, workValue)
        cmgCall5(workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8, dataTable5, numberValue11, numberValue12, numberValue13, numberValue14, numberValue16, numberValue17, numberValue18, numberValue20, numberValue21, numberValue22, flag18, flag20, numberValue23, flag21, workValue15, workValue16, flag22)
        cmgCall5 = false
        flag5 = cmgCall5
    end
    else
      cmgCall5 = 240.0
      if modelHash < cmgCall5 then
        cmgCall5 = true
        flag5 = cmgCall5
      end
    end
    cmgCall5 = pairs
    workValue18 = textValue9
    cmgCall5, workValue18, workValue20, workValue21 = cmgCall5(workValue18)
    for workValue, textValue8 in cmgCall5, workValue18, workValue20, workValue21 do
      flag4 = DrawMarker
      workValue3 = 28
      nameValue = textValue8.x
      nameValue2 = textValue8.y
      numberValue5 = textValue8.z
      numberValue7 = 0.0
      workValue8 = 0.0
      dataTable5 = 0.0
      numberValue11 = 0.0
      numberValue12 = 0.0
      numberValue13 = 0.0
      numberValue14 = 1.0
      numberValue16 = 1.0
      numberValue17 = 1.0
      numberValue18 = 255
      numberValue20 = 0
      numberValue21 = 0
      numberValue22 = 200
      flag18 = false
      flag20 = false
      numberValue23 = 2
      flag21 = false
      workValue15 = nil
      workValue16 = nil
      flag22 = false
      flag4(workValue3, nameValue, nameValue2, numberValue5, numberValue7, workValue8, dataTable5, numberValue11, numberValue12, numberValue13, numberValue14, numberValue16, numberValue17, numberValue18, numberValue20, numberValue21, numberValue22, flag18, flag20, numberValue23, flag21, workValue15, workValue16, flag22)
      flag4 = CMG
      flag4 = flag4.getPlayerCoords
      -- Beginner: result below is playerCoords.
      flag4 = flag4()
      flag4 = flag4 - textValue8
      flag4 = #flag4
      if flag4 < 75.0 then
        flag4 = CMG
        flag4 = flag4.DrawText3D
        workValue3 = textValue8
        nameValue = tostring
        nameValue2 = workValue
        nameValue = nameValue(nameValue2)
        nameValue2 = 0.5
        flag4(workValue3, nameValue, nameValue2)
      end
    end
  end
  modelHash = textValue22
  if modelHash then
    modelHash = CMG
    modelHash = modelHash.hasClientPermission
    cmgCall5 = "cardev.whitelisted"
    modelHash = modelHash(cmgCall5)
    if modelHash then
      goto flow_label_415
    end
  end
  return
  goto flow_label_420
  ::flow_label_415::
  if 0 == arg1 then
    modelHash = textValue28
    cmgCall5 = false
    modelHash(cmgCall5)
  end
  ::flow_label_420::
  modelHash = pairs
  cmgCall5 = dataTable39
  modelHash, cmgCall5, workValue18, workValue20 = modelHash(cmgCall5)
  for workValue21, workValue in modelHash, cmgCall5, workValue18, workValue20 do
    if workValue21 > 23 then
      textValue8 = 1
      if textValue8 then
        goto flow_label_430
      end
    end
    textValue8 = 0
    ::flow_label_430::
    flag4 = textValue8 * 23
    flag4 = workValue21 - flag4
    flag4 = flag4 * 0.0215
    flag4 = 0.14 + flag4
    workValue3 = CursorInArea
    nameValue = textValue8 * 0.27
    nameValue = 0.25 + nameValue
    nameValue2 = textValue8 * 0.27
    nameValue2 = 0.5 + nameValue2
    numberValue5 = flag4
    numberValue7 = flag4 + 0.0215
    workValue3 = workValue3(nameValue, nameValue2, numberValue5, numberValue7)
    if workValue3 then
      nameValue = 100
      if nameValue then
        goto flow_label_457
      end
    end
    nameValue = 255
    ::flow_label_457::
    nameValue2 = DrawAdvancedTextNoOutline
    numberValue5 = textValue8 * 0.27
    numberValue5 = 0.345 + numberValue5
    numberValue7 = flag4
    workValue8 = 0.005
    dataTable5 = 0.02
    numberValue11 = 0.35
    numberValue12 = workValue.name
    numberValue13 = nameValue
    numberValue14 = nameValue
    numberValue16 = 255
    numberValue17 = 255
    numberValue18 = arg3
    numberValue20 = 1
    nameValue2(numberValue5, numberValue7, workValue8, dataTable5, numberValue11, numberValue12, numberValue13, numberValue14, numberValue16, numberValue17, numberValue18, numberValue20)
    nameValue2 = DrawAdvancedTextNoOutline
    numberValue5 = textValue8 * 0.231
    numberValue5 = 0.516 + numberValue5
    numberValue7 = flag4 + 0.001
    workValue8 = 0.005
    dataTable5 = 0.02
    numberValue11 = 0.35
    numberValue12 = textValue25
    numberValue13 = workValue
    numberValue12 = numberValue12(numberValue13)
    numberValue13 = nameValue
    numberValue14 = nameValue
    numberValue16 = 255
    numberValue17 = 255
    numberValue18 = arg3
    numberValue20 = 1
    nameValue2(numberValue5, numberValue7, workValue8, dataTable5, numberValue11, numberValue12, numberValue13, numberValue14, numberValue16, numberValue17, numberValue18, numberValue20)
    if workValue3 then
      nameValue2 = IsDisabledControlJustPressed
      numberValue5 = 0
      numberValue7 = 24
      nameValue2 = nameValue2(numberValue5, numberValue7)
      if nameValue2 then
        nameValue2 = Citizen
        nameValue2 = nameValue2.CreateThreadNow

        -- === HELPER FUNCTION (decompiler name: numberValue5; parameters: none) ===
        function numberValue5()
          local arg12, arg22
          arg12 = textValue26
          arg22 = workValue
          arg12(arg22)
        end
        nameValue2(numberValue5)
      end
    end
  end
  modelHash = DrawRect
  cmgCall5 = 0.465
  workValue18 = 0.415
  workValue20 = 0.09
  workValue21 = 0.495
  workValue = 0
  textValue8 = 0
  flag4 = 0
  workValue3 = 100
  modelHash(cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3)
  modelHash = DrawRect
  cmgCall5 = 0.695
  workValue18 = 0.415
  workValue20 = 0.09
  workValue21 = 0.495
  workValue = 0
  textValue8 = 0
  flag4 = 0
  workValue3 = 100
  modelHash(cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3)
  modelHash = DrawRect
  cmgCall5 = 0.278
  workValue18 = 0.14
  workValue20 = 0.055
  workValue21 = 0.02
  workValue = 255
  textValue8 = 255
  flag4 = 255
  workValue3 = 230
  modelHash(cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3)
  modelHash = DrawAdvancedTextNoOutline
  cmgCall5 = 0.346
  workValue18 = 0.129
  workValue20 = 0.005
  workValue21 = 0.02
  workValue = 0.24
  textValue8 = "Copy Handling"
  flag4 = 0
  workValue3 = 0
  nameValue = 0
  nameValue2 = 255
  numberValue5 = 0
  numberValue7 = 1
  modelHash(cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7)
  modelHash = CursorInArea
  cmgCall5 = 0.25
  workValue18 = 0.31
  workValue20 = 0.12
  workValue21 = 0.15
  modelHash = modelHash(cmgCall5, workValue18, workValue20, workValue21)
  if modelHash then
    modelHash = IsDisabledControlJustPressed
    cmgCall5 = 0
    workValue18 = 24
    modelHash = modelHash(cmgCall5, workValue18)
    if modelHash then
      modelHash = textValue27
      modelHash()
    end
  end
  modelHash = DrawRect
  cmgCall5 = 0.338
  workValue18 = 0.14
  workValue20 = 0.055
  workValue21 = 0.02
  workValue = 255
  textValue8 = 255
  flag4 = 255
  workValue3 = 230
  modelHash(cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3)
  modelHash = DrawAdvancedTextNoOutline
  cmgCall5 = 0.41
  workValue18 = 0.129
  workValue20 = 0.005
  workValue21 = 0.02
  workValue = 0.24
  textValue8 = "Reset Stats"
  flag4 = 0
  workValue3 = 0
  nameValue = 0
  nameValue2 = 255
  numberValue5 = 0
  numberValue7 = 1
  modelHash(cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7)
  modelHash = CursorInArea
  cmgCall5 = 0.31
  workValue18 = 0.37
  workValue20 = 0.12
  workValue21 = 0.15
  modelHash = modelHash(cmgCall5, workValue18, workValue20, workValue21)
  if modelHash then
    modelHash = IsDisabledControlJustPressed
    cmgCall5 = 0
    workValue18 = 24
    modelHash = modelHash(cmgCall5, workValue18)
    if modelHash then
      modelHash = dataTable41
      modelHash = modelHash()
      textValue23 = modelHash
      modelHash = dataTable
      dataTable39 = modelHash
      modelHash = "CHandlingData"
      dataTable40 = modelHash
    end
  end
  modelHash = DrawRect
  cmgCall5 = 0.438
  workValue18 = 0.14
  workValue20 = 0.095
  workValue21 = 0.02
  workValue = 255
  textValue8 = 255
  flag4 = 255
  workValue3 = 230
  modelHash(cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3)
  modelHash = DrawAdvancedTextNoOutline
  cmgCall5 = 0.488
  workValue18 = 0.129
  workValue20 = 0.005
  workValue21 = 0.02
  workValue = 0.24
  textValue8 = string
  textValue8 = textValue8.format
  flag4 = "CMG Damage: %s"
  workValue3 = rageUiCall5
  workValue3 = workValue3[arg1]
  if workValue3 then
    workValue3 = "Disabled"
    if workValue3 then
      goto flow_label_642
    end
  end
  workValue3 = "Enabled"
  ::flow_label_642::
  textValue8 = textValue8(flag4, workValue3)
  flag4 = 0
  workValue3 = 0
  nameValue = 0
  nameValue2 = 255
  numberValue5 = 0
  numberValue7 = 1
  modelHash(cmgCall5, workValue18, workValue20, workValue21, workValue, textValue8, flag4, workValue3, nameValue, nameValue2, numberValue5, numberValue7)
  modelHash = CursorInAreaRect
  cmgCall5 = 0.438
  workValue18 = 0.14
  workValue20 = 0.095
  workValue21 = 0.02
  modelHash = modelHash(cmgCall5, workValue18, workValue20, workValue21)
  if modelHash then
    modelHash = IsDisabledControlJustPressed
    cmgCall5 = 0
    workValue18 = 24
    modelHash = modelHash(cmgCall5, workValue18)
    if modelHash then
      modelHash = rageUiCall5
      cmgCall5 = rageUiCall5
      cmgCall5 = cmgCall5[arg1]
      cmgCall5 = not cmgCall5
      modelHash[arg1] = cmgCall5
    end
  end
  modelHash = 0
  cmgCall5 = pairs
  workValue18 = dataTable38
  cmgCall5, workValue18, workValue20, workValue21 = cmgCall5(workValue18)
  for workValue, textValue8 in cmgCall5, workValue18, workValue20, workValue21 do
    if modelHash >= 4 then
      flag4 = 1
      if flag4 then
        goto flow_label_680
      end
    end
    flag4 = 0
    ::flow_label_680::
    workValue3 = flag4 * 4
    workValue3 = modelHash - workValue3
    workValue3 = workValue3 * 0.125
    nameValue = DrawRect
    nameValue2 = 0.308 + workValue3
    numberValue5 = 0.05 * flag4
    numberValue5 = 0.685 + numberValue5
    numberValue7 = 0.115
    workValue8 = 0.02
    dataTable5 = 255
    numberValue11 = 255
    numberValue12 = 255
    numberValue13 = 230
    nameValue(nameValue2, numberValue5, numberValue7, workValue8, dataTable5, numberValue11, numberValue12, numberValue13)
    nameValue = DrawAdvancedTextNoOutline
    nameValue2 = 0.403 + workValue3
    numberValue5 = 0.05 * flag4
    numberValue5 = 0.675 + numberValue5
    numberValue7 = 0.005
    workValue8 = 0.02
    dataTable5 = 0.24
    numberValue11 = workValue
    numberValue12 = 0
    numberValue13 = 0
    numberValue14 = 0
    numberValue16 = 255
    numberValue17 = 0
    numberValue18 = 0
    nameValue(nameValue2, numberValue5, numberValue7, workValue8, dataTable5, numberValue11, numberValue12, numberValue13, numberValue14, numberValue16, numberValue17, numberValue18)
    nameValue = CursorInArea
    nameValue2 = 0.2505 + workValue3
    numberValue5 = 0.3655 + workValue3
    numberValue7 = flag4 * 0.05
    numberValue7 = 0.665 + numberValue7
    workValue8 = flag4 * 0.05
    workValue8 = 0.705 + workValue8
    nameValue = nameValue(nameValue2, numberValue5, numberValue7, workValue8)
    if nameValue then
      nameValue = IsDisabledControlJustPressed
      nameValue2 = 0
      numberValue5 = 24
      nameValue = nameValue(nameValue2, numberValue5)
      if nameValue then
        dataTable39 = textValue8
        dataTable40 = workValue
      end
    end
    modelHash = modelHash + 1
  end
end
textValue35 = _ENV
textValue36 = "CMG"
textValue35 = textValue35[textValue36]
textValue36 = "createThreadOnTick"
textValue35 = textValue35[textValue36]
textValue36 = textValue34
textValue37 = "Car Dev"
textValue35(textValue36, textValue37)
textValue35 = _ENV
textValue36 = "RegisterNetEvent"
textValue35 = textValue35[textValue36]
textValue36 = "9f1be64859"

-- === HELPER FUNCTION (decompiler name: textValue37; parameters: arg1) ===
function textValue37(arg1)
  local arg2, arg3, textValue17, numberValue24
  arg2 = CMG
  arg2 = arg2.clientPrompt
  arg3 = "Car Dev API Key (CTRL+A & CTRL+C)"
  textValue17 = arg1

  -- === HELPER FUNCTION (decompiler name: numberValue24; parameters: none) ===
  function numberValue24()
    local arg12, arg22
  end
  arg2(arg3, textValue17, numberValue24)
end
textValue35(textValue36, textValue37)
