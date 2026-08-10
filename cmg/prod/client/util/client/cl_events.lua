--[[
    Beginner Guide: cl_events.lua
    =============================

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
    BEGINNER GUIDE — Events
    =======================

    File: cmg/prod/client/util/client/cl_events.lua
    Purpose: This file contains shared utility code.

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

    Network/hash identifiers found: 17
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * Event Menu
      * Minimum Players: %s
      * Maximum Players: %s
      * ~g~Start Event
      * ~y~Start Event And Leave

]]
local dataTable, dataTable2, dataTable4, dataTable5, textValue8, flag9, numberValue48, flag12, dataTable7, flag13, workValue, textValue, textValue3, rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54
dataTable = {}
dataTable2 = {}
dataTable.players = dataTable2
dataTable.isActive = false
dataTable2 = {}
dataTable.data = dataTable2
dataTable.minigameId = 0
dataTable.minigameName = ""
dataTable.drawPlayersTimeBar = true
dataTable.musicString = ""
dataTable.playMusic = false
currentEvent = dataTable
dataTable = {}
dataTable2 = {}
dataTable4 = {}
dataTable5 = {}
textValue8 = ""
flag9 = false
numberValue48 = 0
flag12 = false
dataTable7 = {}
flag13 = false
workValue = RMenu
workValue = workValue.Add
textValue = "cmgevents"
textValue3 = "main"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue4 = ""
textValue6 = "Event Menu"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_events"
textValue7 = "cmg_events"
rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54 = rageUiCall(textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7)
workValue(textValue, textValue3, rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54)
workValue = RMenu
workValue = workValue.Add
textValue = "cmgevents"
textValue3 = "categoryInfo"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue4 = RMenu
textValue6 = textValue4
textValue4 = textValue4.Get
rageUiCall2 = "cmgevents"
rageUiCall3 = "main"
-- Beginner: result below is menu.
textValue4 = textValue4(textValue6, rageUiCall2, rageUiCall3)
textValue6 = ""
rageUiCall2 = "Category"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue7 = "cmg_events"
dataTable3 = "cmg_events"
rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54 = rageUiCall(textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3)
workValue(textValue, textValue3, rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54)
workValue = RMenu
workValue = workValue.Add
textValue = "cmgevents"
textValue3 = "secondary"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue4 = RMenu
textValue6 = textValue4
textValue4 = textValue4.Get
rageUiCall2 = "cmgevents"
rageUiCall3 = "main"
-- Beginner: result below is menu.
textValue4 = textValue4(textValue6, rageUiCall2, rageUiCall3)
textValue6 = ""
rageUiCall2 = "Event Menu"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue7 = "cmg_events"
dataTable3 = "cmg_events"
rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54 = rageUiCall(textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3)
workValue(textValue, textValue3, rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54)
workValue = RMenu
workValue = workValue.Add
textValue = "cmgevents"
textValue3 = "players"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue4 = ""
textValue6 = "Players"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_events"
textValue7 = "cmg_events"
rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54 = rageUiCall(textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7)
workValue(textValue, textValue3, rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54)
workValue = RMenu
workValue = workValue.Add
textValue = "cmgevents"
textValue3 = "players2"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue4 = ""
textValue6 = "Players"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_events"
textValue7 = "cmg_events"
rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54 = rageUiCall(textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7)
workValue(textValue, textValue3, rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54)
workValue = RMenu
workValue = workValue.Add
textValue = "cmgevents"
textValue3 = "client"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue4 = ""
textValue6 = "CMG Events"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_events"
textValue7 = "cmg_events"
rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54 = rageUiCall(textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7)
workValue(textValue, textValue3, rageUiCall, textValue4, textValue6, rageUiCall2, rageUiCall3, rageUiCall4, textValue7, dataTable3, vector4Builder, vector4Builder2, vector4Builder3, vector4Builder4, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54)
workValue = RegisterNetEvent
textValue = "ceccc29483"
-- Beginner: this function handles network event "ceccc29483".
function textValue3(arg1)
  local arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3
  arg2 = table
  arg2 = arg2.count
  arg3 = dataTable
  -- Beginner: result below is count.
  arg2 = arg2(arg3)
  if 0 == arg2 then
    dataTable = arg1
    arg2 = pairs
    arg3 = dataTable
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, flag10 in arg2, arg3, arg4, arg5 do
      iterator2 = pairs
      workValue8 = flag10
      iterator2, workValue8, flag14, iterator = iterator2(workValue8)
      for textValue2, numberValue2 in iterator2, workValue8, flag14, iterator do
        tableHelper = table
        tableHelper = tableHelper.insert
        flag2 = dataTable7
        flag3 = numberValue2
        tableHelper(flag2, flag3)
      end
    end
    arg2 = table
    arg2 = arg2.sort
    arg3 = dataTable7
    function arg4(arg12, arg22)
      local arg32, workValue4
      arg32 = arg12.minigameName
      workValue4 = arg22.minigameName
      arg32 = arg32 < workValue4
      return arg32
    end
    arg2(arg3, arg4)
  end
  arg2 = currentEvent
  arg2 = arg2.isManager
  if true == arg2 then
    arg2 = RageUI
    arg2 = arg2.CloseAll
    arg2()
    arg2 = RageUI
    arg2 = arg2.Visible
    arg3 = RMenu
    arg4 = arg3
    arg3 = arg3.Get
    arg5 = "cmgevents"
    arg6 = "players"
    -- Beginner: result below is menu.
    arg3 = arg3(arg4, arg5, arg6)
    arg4 = true
    arg2(arg3, arg4)
  else
    arg2 = RageUI
    arg2 = arg2.Visible
    arg3 = RMenu
    arg4 = arg3
    arg3 = arg3.Get
    arg5 = "cmgevents"
    arg6 = "main"
    arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3 = arg3(arg4, arg5, arg6)
    -- Beginner: result below is menuVisible.
    arg2 = arg2(arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3)
    if arg2 then
      arg2 = RageUI
      arg2 = arg2.CloseAll
      arg2()
    else
      arg2 = RageUI
      arg2 = arg2.CloseAll
      arg2()
      arg2 = RageUI
      arg2 = arg2.Visible
      arg3 = RMenu
      arg4 = arg3
      arg3 = arg3.Get
      arg5 = "cmgevents"
      arg6 = "main"
      -- Beginner: result below is menu.
      arg3 = arg3(arg4, arg5, arg6)
      arg4 = true
      arg2(arg3, arg4)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ceccc29483".
workValue(textValue, textValue3)
function workValue(arg1, arg2)
  local arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2
  arg3 = RageUI
  arg3 = arg3.ButtonWithStyle
  arg4 = arg2.mapName
  arg5 = arg2.desc
  arg6 = {}
  arg6.RightLabel = "\226\134\146\226\134\146\226\134\146"
  flag10 = true
  function iterator2(arg12, arg22, arg32)
    local workValue4, workValue5, dataTable6, tableHelper2
    if arg32 then
      workValue4 = arg1
      textValue8 = workValue4
      workValue4 = RMenu
      workValue5 = workValue4
      workValue4 = workValue4.Get
      dataTable6 = "cmgevents"
      tableHelper2 = "secondary"
      -- Beginner: result below is menu.
      workValue4 = workValue4(workValue5, dataTable6, tableHelper2)
      workValue5 = arg2
      workValue4.MetaData = workValue5
    end
  end
  workValue8 = RMenu
  flag14 = workValue8
  workValue8 = workValue8.Get
  iterator = "cmgevents"
  textValue2 = "secondary"
  workValue8, flag14, iterator, textValue2 = workValue8(flag14, iterator, textValue2)
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2)
end
textValue = RageUI
textValue = textValue.CreateWhile
textValue3 = 1.0
rageUiCall = RMenu
textValue4 = rageUiCall
rageUiCall = rageUiCall.Get
textValue6 = "cmgevents"
rageUiCall2 = "main"
-- Beginner: result below is menu.
rageUiCall = rageUiCall(textValue4, textValue6, rageUiCall2)
textValue4 = nil
function textValue6()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgevents"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = false
  function arg6()
    local arg12, arg22, arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3, textValue5, flag4
    arg12 = CMG
    arg12 = arg12.drawEventJoinAndInviteButtons
    arg22 = true
    arg12(arg22)
    arg12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg12 = arg12()
    arg22 = numberValue48
    arg12 = arg12 - arg22
    arg22 = 1000
    if arg12 > arg22 then
      arg12 = TriggerServerEvent
      arg22 = "d72273eadd"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d72273eadd".
      arg12(arg22)
      arg12 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg12 = arg12()
      numberValue48 = arg12
    end
    arg12 = flag12
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~g~There is an event currently running."
      arg12(arg22)
    else
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~r~There are no events currently running."
      arg12(arg22)
    end
    arg12 = pairs
    arg22 = dataTable7
    arg12, arg22, arg32, workValue4 = arg12(arg22)
    for workValue5, dataTable6 in arg12, arg22, arg32, workValue4 do
      tableHelper2 = table
      tableHelper2 = tableHelper2.count
      workValue6 = dataTable6.maps
      -- Beginner: result below is count.
      tableHelper2 = tableHelper2(workValue6)
      if tableHelper2 > 1 then
        tableHelper2 = RageUI
        tableHelper2 = tableHelper2.ButtonWithStyle
        workValue6 = dataTable6.minigameName
        stringHelper = nil
        dataTable8 = {}
        dataTable8.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag = true
        function numberValue(arg13, arg23, arg33)
          local serverEventCall, textValue9, textValue10, flag11
          if arg33 then
            serverEventCall = RMenu
            textValue9 = serverEventCall
            serverEventCall = serverEventCall.Get
            textValue10 = "cmgevents"
            flag11 = "categoryInfo"
            -- Beginner: result below is menu.
            serverEventCall = serverEventCall(textValue9, textValue10, flag11)
            textValue9 = dataTable6
            serverEventCall.MetaData = textValue9
          end
        end
        workValue2 = RMenu
        workValue3 = workValue2
        workValue2 = workValue2.Get
        textValue5 = "cmgevents"
        flag4 = "categoryInfo"
        workValue2, workValue3, textValue5, flag4 = workValue2(workValue3, textValue5, flag4)
        -- Beginner: Draw a selectable RageUI menu button.
        tableHelper2(workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3, textValue5, flag4)
      else
        tableHelper2 = pairs
        workValue6 = dataTable6.maps
        tableHelper2, workValue6, stringHelper, dataTable8 = tableHelper2(workValue6)
        for flag, numberValue in tableHelper2, workValue6, stringHelper, dataTable8 do
          workValue2 = workValue
          workValue3 = dataTable6.minigameName
          textValue5 = numberValue
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          workValue2(workValue3, textValue5)
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
  arg4 = "cmgevents"
  arg5 = "categoryInfo"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = false
  function arg6(arg12)
    local arg22, arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper, dataTable8
    arg22 = pairs
    arg32 = arg12.maps
    arg22, arg32, workValue4, workValue5 = arg22(arg32)
    for dataTable6, tableHelper2 in arg22, arg32, workValue4, workValue5 do
      workValue6 = workValue
      stringHelper = arg12.minigameName
      dataTable8 = tableHelper2
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      workValue6(stringHelper, dataTable8)
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgevents"
  arg5 = "secondary"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = false
  function arg6(arg12)
    local arg22, arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6
    arg22 = RageUI
    arg22 = arg22.Separator
    arg32 = string
    arg32 = arg32.format
    workValue4 = "Minimum Players: %s"
    workValue5 = arg12.minPlayers
    arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6 = arg32(workValue4, workValue5)
    arg22(arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6)
    arg22 = RageUI
    arg22 = arg22.Separator
    arg32 = string
    arg32 = arg32.format
    workValue4 = "Maximum Players: %s"
    workValue5 = arg12.maxPlayers
    arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6 = arg32(workValue4, workValue5)
    arg22(arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6)
    arg22 = nil
    workValue4 = textValue8
    arg32 = dataTable4
    arg32 = arg32[workValue4]
    if arg32 then
      workValue4 = textValue8
      arg32 = dataTable4
      arg32 = arg32[workValue4]
      arg32 = arg32()
      arg22 = arg32
    end
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    workValue4 = "~g~Start Event"
    workValue5 = nil
    dataTable6 = {}
    dataTable6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    tableHelper2 = true
    function workValue6(arg13, arg23, arg33)
      local serverEventCall, textValue9, textValue10, flag11, workValue7
      if arg33 then
        serverEventCall = TriggerServerEvent
        textValue9 = "474d4da41a"
        textValue10 = textValue8
        flag11 = arg12.mapName
        workValue7 = arg22
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "474d4da41a".
        serverEventCall(textValue9, textValue10, flag11, workValue7)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(workValue4, workValue5, dataTable6, tableHelper2, workValue6)
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgevents"
  arg5 = "players"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3, textValue5, flag4
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Admin Options"
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~g~Start Event"
    arg32 = "This will start the event with you joining it."
    workValue4 = {}
    workValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue5 = true
    function dataTable6(arg13, arg23, arg33)
      local serverEventCall, textValue9, textValue10, flag11
      if arg33 then
        serverEventCall = TriggerServerEvent
        textValue9 = "5ba79ce411"
        textValue10 = currentEvent
        textValue10 = textValue10.minigameId
        flag11 = false
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5ba79ce411".
        serverEventCall(textValue9, textValue10, flag11)
        serverEventCall = RageUI
        serverEventCall = serverEventCall.CloseAll
        serverEventCall()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue4, workValue5, dataTable6)
    arg12 = CMG
    arg12 = arg12.hasClientPermission
    arg22 = "eventadmin.canleave"
    arg12 = arg12(arg22)
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "~y~Start Event And Leave"
      arg32 = "This will start the event without you joining it."
      workValue4 = {}
      workValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue5 = true
      function dataTable6(arg13, arg23, arg33)
        local serverEventCall, textValue9, textValue10, flag11
        if arg33 then
          serverEventCall = TriggerServerEvent
          textValue9 = "5ba79ce411"
          textValue10 = currentEvent
          textValue10 = textValue10.minigameId
          flag11 = true
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5ba79ce411".
          serverEventCall(textValue9, textValue10, flag11)
          serverEventCall = RageUI
          serverEventCall = serverEventCall.CloseAll
          serverEventCall()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, workValue4, workValue5, dataTable6)
    end
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~r~Cancel Event"
    arg32 = nil
    workValue4 = {}
    workValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue5 = true
    function dataTable6(arg13, arg23, arg33)
      local serverEventCall, textValue9, textValue10
      if arg33 then
        serverEventCall = TriggerServerEvent
        textValue9 = "f061d958f2"
        textValue10 = currentEvent
        textValue10 = textValue10.minigameId
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f061d958f2".
        serverEventCall(textValue9, textValue10)
        serverEventCall = RageUI
        serverEventCall = serverEventCall.CloseAll
        serverEventCall()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue4, workValue5, dataTable6)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Players ("
    arg32 = table
    arg32 = arg32.count
    workValue4 = currentEvent
    workValue4 = workValue4.players
    -- Beginner: result below is count.
    arg32 = arg32(workValue4)
    workValue4 = ")"
    arg22 = arg22 .. arg32 .. workValue4
    arg12(arg22)
    arg12 = pairs
    arg22 = currentEvent
    arg22 = arg22.players
    arg12, arg22, arg32, workValue4 = arg12(arg22)
    for workValue5, dataTable6 in arg12, arg22, arg32, workValue4 do
      tableHelper2 = RageUI
      tableHelper2 = tableHelper2.ButtonWithStyle
      workValue6 = string
      workValue6 = workValue6.format
      stringHelper = "[%s] %s"
      dataTable8 = dataTable6.source
      flag = dataTable6.name
      workValue6 = workValue6(stringHelper, dataTable8, flag)
      stringHelper = string
      stringHelper = stringHelper.format
      dataTable8 = "Name: %s Temp ID: %s Perm ID: %s"
      flag = dataTable6.name
      numberValue = dataTable6.source
      workValue2 = dataTable6.user_id
      stringHelper = stringHelper(dataTable8, flag, numberValue, workValue2)
      dataTable8 = {}
      dataTable8.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag = true
      function numberValue(arg13, arg23, arg33)
        local serverEventCall, textValue9, textValue10, flag11
        if arg33 then
          serverEventCall = RMenu
          textValue9 = serverEventCall
          serverEventCall = serverEventCall.Get
          textValue10 = "cmgevents"
          flag11 = "players2"
          -- Beginner: result below is menu.
          serverEventCall = serverEventCall(textValue9, textValue10, flag11)
          textValue9 = dataTable6
          serverEventCall.MetaData = textValue9
        end
      end
      workValue2 = RMenu
      workValue3 = workValue2
      workValue2 = workValue2.Get
      textValue5 = "cmgevents"
      flag4 = "players2"
      workValue2, workValue3, textValue5, flag4 = workValue2(workValue3, textValue5, flag4)
      -- Beginner: Draw a selectable RageUI menu button.
      tableHelper2(workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3, textValue5, flag4)
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgevents"
  arg5 = "players2"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6(arg12)
    local arg22, arg32, workValue4, workValue5, dataTable6, tableHelper2
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg32 = "Kick Player From Event"
    workValue4 = nil
    workValue5 = {}
    workValue5.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataTable6 = true
    function tableHelper2(arg13, arg23, arg33)
      local serverEventCall, textValue9, textValue10, flag11
      if arg33 then
        serverEventCall = TriggerServerEvent
        textValue9 = "85f5f18925"
        textValue10 = arg12.source
        flag11 = currentEvent
        flag11 = flag11.minigameId
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "85f5f18925".
        serverEventCall(textValue9, textValue10, flag11)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg32, workValue4, workValue5, dataTable6, tableHelper2)
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgevents"
  arg5 = "client"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper, dataTable8, flag, numberValue, workValue2
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Leave Event"
    arg32 = nil
    workValue4 = {}
    workValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue5 = true
    function dataTable6(arg13, arg23, arg33)
      local serverEventCall, textValue9
      if arg33 then
        serverEventCall = ExecuteCommand
        textValue9 = "leaveevent"
        serverEventCall(textValue9)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue4, workValue5, dataTable6)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Players ("
    arg32 = table
    arg32 = arg32.count
    workValue4 = currentEvent
    workValue4 = workValue4.players
    -- Beginner: result below is count.
    arg32 = arg32(workValue4)
    workValue4 = ")"
    arg22 = arg22 .. arg32 .. workValue4
    arg12(arg22)
    arg12 = pairs
    arg22 = currentEvent
    arg22 = arg22.players
    arg12, arg22, arg32, workValue4 = arg12(arg22)
    for workValue5, dataTable6 in arg12, arg22, arg32, workValue4 do
      tableHelper2 = RageUI
      tableHelper2 = tableHelper2.ButtonWithStyle
      workValue6 = string
      workValue6 = workValue6.format
      stringHelper = "[%s] %s"
      dataTable8 = dataTable6.source
      flag = dataTable6.name
      workValue6 = workValue6(stringHelper, dataTable8, flag)
      stringHelper = string
      stringHelper = stringHelper.format
      dataTable8 = "Name: %s Temp ID: %s Perm ID: %s"
      flag = dataTable6.name
      numberValue = dataTable6.source
      workValue2 = dataTable6.user_id
      stringHelper = stringHelper(dataTable8, flag, numberValue, workValue2)
      dataTable8 = {}
      dataTable8.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag = true
      function numberValue()
        local arg13, arg23
      end
      -- Beginner: Draw a selectable RageUI menu button.
      tableHelper2(workValue6, stringHelper, dataTable8, flag, numberValue)
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
end
textValue(textValue3, rageUiCall, textValue4, textValue6)
textValue = CMG
function textValue3(arg1, arg2)
  local arg3
  arg3 = dataTable2
  arg3[arg1] = arg2
end
textValue.registerMinigameCleanupHandler = textValue3
textValue = CMG
function textValue3(arg1, arg2)
  local arg3
  arg3 = dataTable4
  arg3[arg1] = arg2
end
textValue.registerMinigameOptionsHandler = textValue3
function textValue(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.removeBlipsForPlayer
  arg3 = arg1
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.removePlayerFromLeaderboard
  arg3 = arg1.source
  arg2(arg3)
end
textValue3 = RegisterNetEvent
rageUiCall = "42896e207e"
-- Beginner: this function handles network event "42896e207e".
function textValue4(arg1, arg2, arg3)
  local arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3, flag5, flag6
  arg4 = pairs
  arg5 = currentEvent
  arg5 = arg5.players
  arg4, arg5, arg6, flag10 = arg4(arg5)
  for iterator2, workValue8 in arg4, arg5, arg6, flag10 do
    flag14 = true
    iterator = pairs
    textValue2 = arg1
    iterator, textValue2, numberValue2, tableHelper = iterator(textValue2)
    for flag2, flag3 in iterator, textValue2, numberValue2, tableHelper do
      flag5 = workValue8.source
      flag6 = flag3.source
      if flag5 == flag6 then
        flag14 = false
        break
      end
    end
    if flag14 then
      iterator = textValue
      textValue2 = workValue8
      iterator(textValue2)
    end
  end
  arg4 = pairs
  arg5 = arg1
  arg4, arg5, arg6, flag10 = arg4(arg5)
  for iterator2, workValue8 in arg4, arg5, arg6, flag10 do
    flag14 = {}
    workValue8.data = flag14
  end
  arg4 = currentEvent
  arg4.players = arg1
  arg4 = currentEvent
  arg4.minigameId = arg2
  arg4 = currentEvent
  arg4.minigameName = arg3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "42896e207e".
textValue3(rageUiCall, textValue4)
textValue3 = RegisterNetEvent
rageUiCall = "801f335faa"
-- Beginner: this function handles network event "801f335faa".
function textValue4(arg1)
  local arg2, arg3, arg4
  arg2 = {}
  arg1.data = arg2
  arg2 = table
  arg2 = arg2.add
  arg3 = currentEvent
  arg3 = arg3.players
  arg4 = arg1
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "801f335faa".
textValue3(rageUiCall, textValue4)
textValue3 = RegisterNetEvent
rageUiCall = "39dc35cae6"
-- Beginner: this function handles network event "39dc35cae6".
function textValue4(arg1)
  local arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14
  arg2 = pairs
  arg3 = currentEvent
  arg3 = arg3.players
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, flag10 in arg2, arg3, arg4, arg5 do
    iterator2 = flag10.source
    workValue8 = arg1.source
    if iterator2 == workValue8 then
      iterator2 = textValue
      workValue8 = arg1
      iterator2(workValue8)
      iterator2 = table
      iterator2 = iterator2.remove
      workValue8 = currentEvent
      workValue8 = workValue8.players
      flag14 = arg6
      iterator2(workValue8, flag14)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "39dc35cae6".
textValue3(rageUiCall, textValue4)
textValue3 = RegisterNetEvent
rageUiCall = "5b9d37ca28"
-- Beginner: this function handles network event "5b9d37ca28".
function textValue4()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = currentEvent
  arg1.isManager = true
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgevents"
  arg5 = "players"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5b9d37ca28".
textValue3(rageUiCall, textValue4)
textValue3 = 0
rageUiCall = 0
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2
  arg1 = flag13
  if arg1 then
    arg1 = CMG
    arg1 = arg1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = SetEntityVisible
    arg3 = arg1
    arg4 = false
    arg5 = false
    arg2(arg3, arg4, arg5)
    arg2 = vector3
    arg3 = -77.84175
    arg4 = -1104.633
    arg5 = 33.12158
    arg2 = arg2(arg3, arg4, arg5)
    arg3 = SetFocusPosAndVel
    arg4 = arg2.x
    arg5 = arg2.y
    arg6 = arg2.z
    flag10 = 0.0
    iterator2 = 0.0
    workValue8 = 0.0
    arg3(arg4, arg5, arg6, flag10, iterator2, workValue8)
    arg3 = CreateCameraWithParams
    arg4 = "DEFAULT_SCRIPTED_CAMERA"
    arg5 = -77.84175
    arg6 = -1104.633
    flag10 = 33.12158
    iterator2 = 0.0
    workValue8 = 0.0
    flag14 = 0.0
    iterator = 65.0
    textValue2 = false
    numberValue2 = 2
    arg3 = arg3(arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2)
    textValue3 = arg3
    arg3 = PointCamAtCoord
    arg4 = textValue3
    arg5 = -45.73187
    arg6 = -1097.881
    flag10 = 26.41541
    arg3(arg4, arg5, arg6, flag10)
    arg3 = SetCamActive
    arg4 = textValue3
    arg5 = true
    arg3(arg4, arg5)
    arg3 = RenderScriptCams
    arg4 = true
    arg5 = true
    arg6 = 0
    flag10 = true
    iterator2 = false
    arg3(arg4, arg5, arg6, flag10, iterator2)
    arg3 = CreateCameraWithParams
    arg4 = "DEFAULT_SCRIPTED_CAMERA"
    arg5 = -45.2044
    arg6 = -1128.317
    flag10 = 33.12158
    iterator2 = 0.0
    workValue8 = 0.0
    flag14 = 0.0
    iterator = 65.0
    textValue2 = false
    numberValue2 = 2
    arg3 = arg3(arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2)
    rageUiCall = arg3
    arg3 = PointCamAtCoord
    arg4 = rageUiCall
    arg5 = -45.73187
    arg6 = -1097.881
    flag10 = 26.41541
    arg3(arg4, arg5, arg6, flag10)
    arg3 = SetCamActiveWithInterp
    arg4 = rageUiCall
    arg5 = textValue3
    arg6 = 10000
    flag10 = 5
    iterator2 = 5
    arg3(arg4, arg5, arg6, flag10, iterator2)
    arg3 = Wait
    arg4 = 10000
    arg3(arg4)
    arg3 = flag13
    if arg3 then
      arg3 = ClearFocus
      arg3()
      arg3 = vector3
      arg4 = 177.9429
      arg5 = -901.3582
      arg6 = 46.75317
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetCamCoord
      arg4 = textValue3
      arg5 = arg2.x
      arg6 = arg2.y
      flag10 = arg2.z
      arg3(arg4, arg5, arg6, flag10)
      arg3 = vector3
      arg4 = 178.9451
      arg5 = -991.0022
      arg6 = 47.74731
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetCamCoord
      arg4 = rageUiCall
      arg5 = arg2.x
      arg6 = arg2.y
      flag10 = arg2.z
      arg3(arg4, arg5, arg6, flag10)
      arg3 = vector3
      arg4 = 177.9429
      arg5 = -901.3582
      arg6 = 46.75317
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetFocusPosAndVel
      arg4 = arg2.x
      arg5 = arg2.y
      arg6 = arg2.z
      flag10 = 0.0
      iterator2 = 0.0
      workValue8 = 0.0
      arg3(arg4, arg5, arg6, flag10, iterator2, workValue8)
      arg3 = PointCamAtCoord
      arg4 = textValue3
      arg5 = 195.1253
      arg6 = -933.7582
      flag10 = 30.67834
      arg3(arg4, arg5, arg6, flag10)
      arg3 = PointCamAtCoord
      arg4 = rageUiCall
      arg5 = 195.1253
      arg6 = -933.7582
      flag10 = 30.67834
      arg3(arg4, arg5, arg6, flag10)
      arg3 = SetCamActiveWithInterp
      arg4 = rageUiCall
      arg5 = textValue3
      arg6 = 25000
      flag10 = 5
      iterator2 = 5
      arg3(arg4, arg5, arg6, flag10, iterator2)
      arg3 = Wait
      arg4 = 25000
      arg3(arg4)
    end
    arg3 = flag13
    if arg3 then
      arg3 = ClearFocus
      arg3()
      arg3 = vector3
      arg4 = -3135.257
      arg5 = 1042.998
      arg6 = 30.15601
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetCamCoord
      arg4 = textValue3
      arg5 = arg2.x
      arg6 = arg2.y
      flag10 = arg2.z
      arg3(arg4, arg5, arg6, flag10)
      arg3 = vector3
      arg4 = -3123.837
      arg5 = 1133.525
      arg6 = 30.15601
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetCamCoord
      arg4 = rageUiCall
      arg5 = arg2.x
      arg6 = arg2.y
      flag10 = arg2.z
      arg3(arg4, arg5, arg6, flag10)
      arg3 = vector3
      arg4 = -3147.073
      arg5 = 1088.374
      arg6 = 20.6864
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetFocusPosAndVel
      arg4 = arg2.x
      arg5 = arg2.y
      arg6 = arg2.z
      flag10 = 0.0
      iterator2 = 0.0
      workValue8 = 0.0
      arg3(arg4, arg5, arg6, flag10, iterator2, workValue8)
      arg3 = PointCamAtCoord
      arg4 = textValue3
      arg5 = -3147.073
      arg6 = 1088.374
      flag10 = 20.6864
      arg3(arg4, arg5, arg6, flag10)
      arg3 = PointCamAtCoord
      arg4 = rageUiCall
      arg5 = -3147.073
      arg6 = 1088.374
      flag10 = 20.6864
      arg3(arg4, arg5, arg6, flag10)
      arg3 = SetCamActiveWithInterp
      arg4 = rageUiCall
      arg5 = textValue3
      arg6 = 15000
      flag10 = 5
      iterator2 = 5
      arg3(arg4, arg5, arg6, flag10, iterator2)
      arg3 = Wait
      arg4 = 15000
      arg3(arg4)
    end
    arg3 = flag13
    if arg3 then
      arg3 = ClearFocus
      arg3()
      arg3 = vector3
      arg4 = 598.4967
      arg5 = 1122.923
      arg6 = 364.2878
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetCamCoord
      arg4 = textValue3
      arg5 = arg2.x
      arg6 = arg2.y
      flag10 = arg2.z
      arg3(arg4, arg5, arg6, flag10)
      arg3 = vector3
      arg4 = 819.7582
      arg5 = 1057.543
      arg6 = 364.2878
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetCamCoord
      arg4 = rageUiCall
      arg5 = arg2.x
      arg6 = arg2.y
      flag10 = arg2.z
      arg3(arg4, arg5, arg6, flag10)
      arg3 = vector3
      arg4 = 732.5406
      arg5 = 1195.807
      arg6 = 326.359
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetFocusPosAndVel
      arg4 = arg2.x
      arg5 = arg2.y
      arg6 = arg2.z
      flag10 = 0.0
      iterator2 = 0.0
      workValue8 = 0.0
      arg3(arg4, arg5, arg6, flag10, iterator2, workValue8)
      arg3 = PointCamAtCoord
      arg4 = textValue3
      arg5 = 732.5406
      arg6 = 1195.807
      flag10 = 326.359
      arg3(arg4, arg5, arg6, flag10)
      arg3 = PointCamAtCoord
      arg4 = rageUiCall
      arg5 = 732.5406
      arg6 = 1195.807
      flag10 = 326.359
      arg3(arg4, arg5, arg6, flag10)
      arg3 = SetCamActiveWithInterp
      arg4 = rageUiCall
      arg5 = textValue3
      arg6 = 35000
      flag10 = 5
      iterator2 = 5
      arg3(arg4, arg5, arg6, flag10, iterator2)
      arg3 = Wait
      arg4 = 35000
      arg3(arg4)
    end
    arg3 = flag13
    if arg3 then
      arg3 = ClearFocus
      arg3()
      arg3 = vector3
      arg4 = 1658.914
      arg5 = 2526.369
      arg6 = 69.68567
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetCamCoord
      arg4 = textValue3
      arg5 = arg2.x
      arg6 = arg2.y
      flag10 = arg2.z
      arg3(arg4, arg5, arg6, flag10)
      arg3 = vector3
      arg4 = 1751.934
      arg5 = 2507.947
      arg6 = 69.68567
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetCamCoord
      arg4 = rageUiCall
      arg5 = arg2.x
      arg6 = arg2.y
      flag10 = arg2.z
      arg3(arg4, arg5, arg6, flag10)
      arg3 = vector3
      arg4 = 1708.629
      arg5 = 2547.943
      arg6 = 45.55676
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetFocusPosAndVel
      arg4 = arg2.x
      arg5 = arg2.y
      arg6 = arg2.z
      flag10 = 0.0
      iterator2 = 0.0
      workValue8 = 0.0
      arg3(arg4, arg5, arg6, flag10, iterator2, workValue8)
      arg3 = PointCamAtCoord
      arg4 = textValue3
      arg5 = 1708.629
      arg6 = 2547.943
      flag10 = 45.55676
      arg3(arg4, arg5, arg6, flag10)
      arg3 = PointCamAtCoord
      arg4 = rageUiCall
      arg5 = 1708.629
      arg6 = 2547.943
      flag10 = 45.55676
      arg3(arg4, arg5, arg6, flag10)
      arg3 = SetCamActiveWithInterp
      arg4 = rageUiCall
      arg5 = textValue3
      arg6 = 35000
      flag10 = 5
      iterator2 = 5
      arg3(arg4, arg5, arg6, flag10, iterator2)
      arg3 = Wait
      arg4 = 35000
      arg3(arg4)
    end
    arg3 = flag13
    if arg3 then
      arg3 = ClearFocus
      arg3()
      arg3 = vector3
      arg4 = 1545.191
      arg5 = 6444.29
      arg6 = 35.64905
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetCamCoord
      arg4 = textValue3
      arg5 = arg2.x
      arg6 = arg2.y
      flag10 = arg2.z
      arg3(arg4, arg5, arg6, flag10)
      arg3 = vector3
      arg4 = 1608.475
      arg5 = 6413.301
      arg6 = 35.64905
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetCamCoord
      arg4 = rageUiCall
      arg5 = arg2.x
      arg6 = arg2.y
      flag10 = arg2.z
      arg3(arg4, arg5, arg6, flag10)
      arg3 = vector3
      arg4 = 1588.536
      arg5 = 6456.923
      arg6 = 29.27991
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetFocusPosAndVel
      arg4 = arg2.x
      arg5 = arg2.y
      arg6 = arg2.z
      flag10 = 0.0
      iterator2 = 0.0
      workValue8 = 0.0
      arg3(arg4, arg5, arg6, flag10, iterator2, workValue8)
      arg3 = PointCamAtCoord
      arg4 = textValue3
      arg5 = 1588.536
      arg6 = 6456.923
      flag10 = 29.27991
      arg3(arg4, arg5, arg6, flag10)
      arg3 = PointCamAtCoord
      arg4 = rageUiCall
      arg5 = 1588.536
      arg6 = 6456.923
      flag10 = 29.27991
      arg3(arg4, arg5, arg6, flag10)
      arg3 = SetCamActiveWithInterp
      arg4 = rageUiCall
      arg5 = textValue3
      arg6 = 20000
      flag10 = 5
      iterator2 = 5
      arg3(arg4, arg5, arg6, flag10, iterator2)
      arg3 = Wait
      arg4 = 20000
      arg3(arg4)
    end
    arg3 = flag13
    if arg3 then
      arg3 = ClearFocus
      arg3()
      arg3 = vector3
      arg4 = -134.1758
      arg5 = -834.0527
      arg6 = 321.186
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetCamCoord
      arg4 = textValue3
      arg5 = arg2.x
      arg6 = arg2.y
      flag10 = arg2.z
      arg3(arg4, arg5, arg6, flag10)
      arg3 = vector3
      arg4 = -37.60879
      arg5 = -882.6725
      arg6 = 321.186
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetCamCoord
      arg4 = rageUiCall
      arg5 = arg2.x
      arg6 = arg2.y
      flag10 = arg2.z
      arg3(arg4, arg5, arg6, flag10)
      arg3 = vector3
      arg4 = -73.8989
      arg5 = -817.5824
      arg6 = 319.4843
      arg3 = arg3(arg4, arg5, arg6)
      arg2 = arg3
      arg3 = SetFocusPosAndVel
      arg4 = arg2.x
      arg5 = arg2.y
      arg6 = arg2.z
      flag10 = 0.0
      iterator2 = 0.0
      workValue8 = 0.0
      arg3(arg4, arg5, arg6, flag10, iterator2, workValue8)
      arg3 = PointCamAtCoord
      arg4 = textValue3
      arg5 = -73.8989
      arg6 = -817.5824
      flag10 = 319.4843
      arg3(arg4, arg5, arg6, flag10)
      arg3 = PointCamAtCoord
      arg4 = rageUiCall
      arg5 = -73.8989
      arg6 = -817.5824
      flag10 = 319.4843
      arg3(arg4, arg5, arg6, flag10)
      arg3 = SetCamActiveWithInterp
      arg4 = rageUiCall
      arg5 = textValue3
      arg6 = 25000
      flag10 = 5
      iterator2 = 5
      arg3(arg4, arg5, arg6, flag10, iterator2)
      arg3 = Wait
      arg4 = 25000
      arg3(arg4)
    end
    arg3 = textValue4
    arg3()
  end
end
textValue6 = CMG
function rageUiCall2(arg1)
  local arg2, arg3, arg4, arg5, arg6, flag10
  arg2 = RageUI
  arg2 = arg2.CloseAll
  arg2()
  arg2 = false
  flag13 = arg2
  arg2 = DestroyCam
  arg3 = textValue3
  arg4 = false
  arg2(arg3, arg4)
  arg2 = DestroyCam
  arg3 = rageUiCall
  arg4 = false
  arg2(arg3, arg4)
  if nil == arg1 or true == arg1 then
    arg2 = RenderScriptCams
    arg3 = false
    arg4 = true
    arg5 = 0
    arg6 = true
    flag10 = false
    arg2(arg3, arg4, arg5, arg6, flag10)
  else
    arg2 = RenderScriptCams
    arg3 = false
    arg4 = false
    arg5 = 0
    arg6 = true
    flag10 = false
    arg2(arg3, arg4, arg5, arg6, flag10)
  end
  arg2 = ClearFocus
  arg2()
  arg2 = FreezeEntityPosition
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, arg4)
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = SetEntityVisible
  arg4 = arg2
  arg5 = true
  arg6 = true
  arg3(arg4, arg5, arg6)
end
textValue6.stopEventSequence = rageUiCall2
textValue6 = CMG
function rageUiCall2()
  local arg1, arg2
  arg1 = flag13
  return arg1
end
textValue6.isEventSequenceRunning = rageUiCall2
textValue6 = RegisterNetEvent
rageUiCall2 = "bf52c7582d"
-- Beginner: this function handles network event "bf52c7582d".
function rageUiCall3()
  local arg1, arg2
  arg1 = true
  flag13 = arg1
  arg1 = textValue4
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bf52c7582d".
textValue6(rageUiCall2, rageUiCall3)
textValue6 = RegisterNetEvent
rageUiCall2 = "5ba79ce411"
-- Beginner: this function handles network event "5ba79ce411".
function rageUiCall3(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = CMG
  arg2 = arg2.setVehicleFailureDisabled
  arg3 = true
  arg2(arg3)
  arg2 = currentEvent
  arg2.data = arg1
  arg2 = currentEvent
  arg2.isActive = true
  arg2 = CMG
  arg2 = arg2.setGreenzonesDisabled
  arg3 = true
  arg2(arg3)
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  arg5 = "cmgevents"
  arg6 = "client"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, arg5, arg6)
  arg4 = false
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5ba79ce411".
textValue6(rageUiCall2, rageUiCall3)
textValue6 = "..."
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.registerHudTimerBarProvider
rageUiCall3 = "eventSequencePlayers"
function rageUiCall4(arg1)
  local arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14
  arg2 = currentEvent
  arg2 = arg2.isActive
  if arg2 then
    arg2 = currentEvent
    arg2 = arg2.drawPlayersTimeBar
    if arg2 then
      goto flow_label_10
    end
  end
  return
  ::flow_label_10::
  arg2 = 0
  arg3 = pairs
  arg4 = currentEvent
  arg4 = arg4.players
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for flag10, iterator2 in arg3, arg4, arg5, arg6 do
    workValue8 = type
    flag14 = iterator2.active
    workValue8 = workValue8(flag14)
    if "nil" ~= workValue8 then
      workValue8 = iterator2.active
      if true ~= workValue8 then
        goto flow_label_26
      end
    end
    arg2 = arg2 + 1
    ::flow_label_26::
  end
  arg3 = arg1.push
  arg4 = "~y~PLAYERS:"
  arg5 = tostring
  arg6 = arg2
  arg5, arg6, flag10, iterator2, workValue8, flag14 = arg5(arg6)
  arg3(arg4, arg5, arg6, flag10, iterator2, workValue8, flag14)
end
rageUiCall2(rageUiCall3, rageUiCall4)
function rageUiCall2()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = flag13
  if arg1 then
    arg1 = drawNativeText
    arg2 = "~g~Waiting for event to start"
    arg3 = textValue6
    arg2 = arg2 .. arg3
    -- Beginner: Draw GTA-style text on screen.
    arg1(arg2)
    arg1 = drawNativeNotification
    arg2 = "The command /leaveevent can be used at any time to return back to the main world."
    -- Beginner: Show a GTA-style notification/help prompt.
    arg1(arg2)
    arg1 = RageUI
    arg1 = arg1.Visible
    arg2 = RMenu
    arg3 = arg2
    arg2 = arg2.Get
    arg4 = "cmgevents"
    arg5 = "client"
    arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5)
    -- Beginner: result below is menuVisible.
    arg1 = arg1(arg2, arg3, arg4, arg5)
    if not arg1 then
      arg1 = currentEvent
      arg1 = arg1.isManager
      if not arg1 then
        arg1 = RageUI
        arg1 = arg1.Visible
        arg2 = RMenu
        arg3 = arg2
        arg2 = arg2.Get
        arg4 = "cmgevents"
        arg5 = "client"
        -- Beginner: result below is menu.
        arg2 = arg2(arg3, arg4, arg5)
        arg3 = true
        arg1(arg2, arg3)
    end
    else
      arg1 = RageUI
      arg1 = arg1.Visible
      arg2 = RMenu
      arg3 = arg2
      arg2 = arg2.Get
      arg4 = "cmgevents"
      arg5 = "players"
      arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5)
      -- Beginner: result below is menuVisible.
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if not arg1 then
        arg1 = currentEvent
        arg1 = arg1.isManager
        if arg1 then
          arg1 = RageUI
          arg1 = arg1.Visible
          arg2 = RMenu
          arg3 = arg2
          arg2 = arg2.Get
          arg4 = "cmgevents"
          arg5 = "players"
          -- Beginner: result below is menu.
          arg2 = arg2(arg3, arg4, arg5)
          arg3 = true
          arg1(arg2, arg3)
        end
      end
    end
  end
  arg1 = CMG
  arg1 = arg1.setHudTimerBarProviderActive
  arg2 = "eventSequencePlayers"
  arg3 = currentEvent
  arg3 = arg3.isActive
  arg3 = true == arg3
  arg1(arg2, arg3)
  arg1 = currentEvent
  arg1 = arg1.isActive
  if arg1 then
    arg1 = currentEvent
    arg1 = arg1.drawPlayersTimeBar
    if arg1 then
      arg1 = CMG
      arg1 = arg1.setWeather
      arg2 = "EXTRASUNNY"
      arg1(arg2)
    end
  end
end
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.createThreadOnTick
rageUiCall4 = rageUiCall2
textValue7 = "Event Sequence"
-- Beginner: Run a helper every game frame while this script is active.
rageUiCall3(rageUiCall4, textValue7)
rageUiCall3 = Citizen
rageUiCall3 = rageUiCall3.CreateThread
function rageUiCall4()
  local arg1, arg2
  while true do
    arg1 = flag13
    if arg1 then
      arg1 = textValue6
      if "..." == arg1 then
        arg1 = "."
        textValue6 = arg1
      else
        arg1 = textValue6
        arg2 = "."
        arg1 = arg1 .. arg2
        textValue6 = arg1
      end
    end
    arg1 = Wait
    arg2 = 500
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiCall3(rageUiCall4)
rageUiCall3 = RegisterNetEvent
rageUiCall4 = "e27d89983c"
-- Beginner: this function handles network event "e27d89983c".
function textValue7(arg1, arg2, arg3, arg4)
  local arg5, arg6, flag10, iterator2, workValue8
  arg5 = CMG
  arg5 = arg5.stopEventSequence
  arg5()
  arg5 = RageUI
  arg5 = arg5.Visible
  arg6 = RMenu
  flag10 = arg6
  arg6 = arg6.Get
  iterator2 = "cmgevents"
  workValue8 = "client"
  -- Beginner: result below is menu.
  arg6 = arg6(flag10, iterator2, workValue8)
  flag10 = false
  arg5(arg6, flag10)
  arg5 = dataTable2
  arg5 = arg5[arg2]
  if arg5 then
    arg5 = dataTable2
    arg5 = arg5[arg2]
    arg5()
  end
  arg5 = CMG
  arg5 = arg5.setVehicleFailureDisabled
  arg6 = false
  arg5(arg6)
  arg5 = CMG
  arg5 = arg5.endVehicleSelection
  arg5()
  arg5 = CMG
  arg5 = arg5.setEventSpectatorMode
  arg6 = false
  arg5(arg6)
  arg5 = CMG
  arg5 = arg5.clearMinigameBounds
  arg5()
  arg5 = CMG
  arg5 = arg5.enableMinigamePlayerBlips
  arg6 = false
  arg5(arg6)
  arg5 = CMG
  arg5 = arg5.enableMinigamePlayerTags
  arg6 = false
  flag10 = false
  arg5(arg6, flag10)
  arg5 = CMG
  arg5 = arg5.setGreenzonesDisabled
  arg6 = false
  arg5(arg6)
  arg5 = CMG
  arg5 = arg5.setPlayerCanOpenLeaderboard
  arg6 = false
  arg5(arg6)
  arg5 = CMG
  arg5 = arg5.clearLeaderboardData
  arg5()
  if arg3 and arg4 then
    arg5 = CMG
    arg5 = arg5.podiumLeaderboard
    arg6 = arg3
    flag10 = arg4
    arg5(arg6, flag10)
  else
    arg5 = CMG
    arg5 = arg5.isPodiumDrawing
    arg5 = arg5()
    if arg5 then
      arg5 = CMG
      arg5 = arg5.callCancelPodium
      arg5()
    end
  end
  arg5 = CMG
  arg5 = arg5.cancelOverrideTimeWeather
  arg5()
  arg5 = {}
  arg6 = {}
  arg5.players = arg6
  arg5.isActive = false
  arg6 = {}
  arg5.data = arg6
  arg5.minigameId = 0
  arg5.drawPlayersTimeBar = true
  arg5.isManager = false
  arg5.musicString = ""
  arg5.playMusic = false
  currentEvent = arg5
  arg5 = true
  flag9 = arg5
  arg5 = Citizen
  arg5 = arg5.Wait
  arg6 = 5000
  arg5(arg6)
  arg5 = false
  flag9 = arg5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e27d89983c".
rageUiCall3(rageUiCall4, textValue7)
rageUiCall3 = CMG
function rageUiCall4(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = FreezeEntityPosition
  arg4 = arg2
  arg5 = arg1
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, arg5)
  arg3 = SetEntityInvincible
  arg4 = arg2
  arg5 = arg1
  arg3(arg4, arg5)
  arg3 = SetEntityVisible
  arg4 = arg2
  arg5 = not arg1
  arg6 = not arg1
  arg3(arg4, arg5, arg6)
end
rageUiCall3.setPlayerInvisible = rageUiCall4
rageUiCall3 = RegisterNetEvent
rageUiCall4 = "bfec1d4544"
-- Beginner: this function handles network event "bfec1d4544".
function textValue7(arg1, arg2)
  local arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator
  arg3 = CMG
  arg3 = arg3.getHideEventAnnouncementFlag
  arg3 = arg3()
  arg4 = CMG
  arg4 = arg4.getPlayerCombatTimer
  arg4 = arg4()
  if 0 == arg4 and "Hidden" ~= arg3 then
    arg4 = CMG
    arg4 = arg4.isInTutorial
    arg4 = arg4()
    if not arg4 then
      arg4 = PlaySound
      arg5 = -1
      arg6 = "CHECKPOINT_PERFECT"
      flag10 = "HUD_MINI_GAME_SOUNDSET"
      iterator2 = false
      workValue8 = 0
      flag14 = true
      arg4(arg5, arg6, flag10, iterator2, workValue8, flag14)
      arg4 = nil
      if "Top" == arg3 then
        arg5 = vector2
        arg6 = 0.5
        flag10 = 0.2
        arg5 = arg5(arg6, flag10)
        arg4 = arg5
      end
      arg5 = CMG
      arg5 = arg5.announceMpBigMsg
      arg6 = "~b~"
      flag10 = arg1
      iterator2 = " event has started!"
      arg6 = arg6 .. flag10 .. iterator2
      flag10 = "/joinevent to enter, Win \194\163500,000! - "
      iterator2 = tostring
      workValue8 = arg2
      iterator2 = iterator2(workValue8)
      workValue8 = " slots available."
      flag10 = flag10 .. iterator2 .. workValue8
      iterator2 = 5000
      workValue8 = nil
      flag14 = nil
      iterator = arg4
      arg5(arg6, flag10, iterator2, workValue8, flag14, iterator)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bfec1d4544".
rageUiCall3(rageUiCall4, textValue7)
rageUiCall3 = CMG
function rageUiCall4(arg1, arg2, arg3, arg4, arg5, arg6)
  local flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2
  if arg4 then
    flag10 = GetSoundId
    -- Beginner: result below is soundHandle.
    flag10 = flag10()
    iterator2 = PlaySoundFrontend
    workValue8 = flag10
    flag14 = "Checkpoint_Teammate"
    iterator = "GTAO_Shepherd_Sounds"
    textValue2 = false
    iterator2(workValue8, flag14, iterator, textValue2)
    iterator2 = ReleaseSoundId
    workValue8 = flag10
    iterator2(workValue8)
  end
  flag10 = Scaleform
  iterator2 = "MP_BIG_MESSAGE_FREEMODE"
  flag10 = flag10(iterator2)
  iterator2 = flag10.RunFunction
  workValue8 = "SHOW_SHARD_WASTED_MP_MESSAGE"
  flag14 = {}
  iterator = arg1
  textValue2 = arg2
  numberValue2 = 0
  tableHelper = false
  flag2 = false
  flag14[1] = iterator
  flag14[2] = textValue2
  flag14[3] = numberValue2
  flag14[4] = tableHelper
  flag14[5] = flag2
  iterator2(workValue8, flag14)
  if arg5 then
    iterator2 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.
    function workValue8()
      local arg12, arg22, arg32, workValue4
      arg12 = false
      arg22 = SetTimeout
      arg32 = arg3
      -- Beginner: this function is the body of a background FiveM thread.
      function workValue4()
        local arg13, arg23
        arg13 = true
        arg12 = arg13
      end
      arg22(arg32, workValue4)
      while not arg12 do
        arg22 = flag10.Render2D
        arg32 = arg6
        arg22(arg32)
        arg22 = Wait
        arg32 = 0
        arg22(arg32)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    iterator2(workValue8)
  else
    iterator2 = false
    workValue8 = SetTimeout
    flag14 = arg3
    function iterator()
      local arg12, arg22
      arg12 = true
      iterator2 = arg12
    end
    workValue8(flag14, iterator)
    while not iterator2 do
      workValue8 = flag10.Render2D
      flag14 = arg6
      workValue8(flag14)
      workValue8 = Wait
      flag14 = 0
      workValue8(flag14)
    end
  end
end
rageUiCall3.announceMpBigMsg = rageUiCall4
rageUiCall3 = RegisterNetEvent
rageUiCall4 = "ac4201c774"
textValue7 = CMG
textValue7 = textValue7.announceMpBigMsg
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ac4201c774".
rageUiCall3(rageUiCall4, textValue7)
rageUiCall3 = CMG
-- Beginner: this function handles network event "ac4201c774".
function rageUiCall4(arg1)
  local arg2, arg3
  arg2 = currentEvent
  arg2.playMusic = true
  arg2 = currentEvent
  arg2.musicString = arg1
  arg2 = TriggerMusicEvent
  arg3 = arg1
  arg2(arg3)
end
rageUiCall3.setEventMusic = rageUiCall4
rageUiCall3 = CMG
function rageUiCall4()
  local arg1, arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14
  arg1 = {}
  arg2 = pairs
  arg3 = currentEvent
  arg3 = arg3.players
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, flag10 in arg2, arg3, arg4, arg5 do
    iterator2 = flag10.active
    if iterator2 then
      iterator2 = table
      iterator2 = iterator2.insert
      workValue8 = arg1
      flag14 = flag10
      iterator2(workValue8, flag14)
    end
  end
  return arg1
end
rageUiCall3.getActiveEventPlayers = rageUiCall4
rageUiCall3 = CMG
function rageUiCall4()
  local arg1, arg2, arg3, arg4, arg5, arg6, flag10, iterator2
  arg1 = GetPlayerServerId
  arg2 = PlayerId
  arg2, arg3, arg4, arg5, arg6, flag10, iterator2 = arg2()
  -- Beginner: result below is serverId.
  arg1 = arg1(arg2, arg3, arg4, arg5, arg6, flag10, iterator2)
  arg2 = pairs
  arg3 = currentEvent
  arg3 = arg3.players
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, flag10 in arg2, arg3, arg4, arg5 do
    iterator2 = flag10.source
    if iterator2 == arg1 then
      return flag10
    end
  end
end
rageUiCall3.getEventLocalPlayer = rageUiCall4
rageUiCall3 = CMG
function rageUiCall4(arg1)
  local arg2, arg3, arg4, arg5, arg6, flag10, iterator2
  arg2 = pairs
  arg3 = currentEvent
  arg3 = arg3.players
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, flag10 in arg2, arg3, arg4, arg5 do
    iterator2 = flag10.source
    if iterator2 == arg1 then
      return flag10
    end
  end
end
rageUiCall3.getEventPlayerFromSrc = rageUiCall4
rageUiCall3 = RegisterNetEvent
rageUiCall4 = "46bdb82845"
-- Beginner: this function handles network event "46bdb82845".
function textValue7(arg1, arg2)
  local arg3
  arg3 = currentEvent
  arg3 = arg3.players
  arg3 = arg3[arg1]
  if arg3 then
    arg3 = currentEvent
    arg3 = arg3.players
    arg3 = arg3[arg1]
    arg3.active = arg2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "46bdb82845".
rageUiCall3(rageUiCall4, textValue7)
rageUiCall3 = false
rageUiCall4 = CMG
function textValue7(arg1)
  local arg2
  rageUiCall3 = arg1
end
rageUiCall4.setEventsUsingNetworkResurrect = textValue7
rageUiCall4 = CMG
function textValue7()
  local arg1, arg2
  arg1 = rageUiCall3
  return arg1
end
rageUiCall4.isEventUsingNetworkResurrect = textValue7
rageUiCall4 = CMG
function textValue7(arg1)
  local arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14
  arg2 = true
  arg3 = -1
  arg4 = -1
  arg5 = arg1 + 1
  arg6 = 255
  flag10 = 0
  iterator2 = Citizen
  iterator2 = iterator2.CreateThread
  function workValue8()
    local arg12, arg22, arg32, workValue4, workValue5
    while true do
      arg12 = arg2
      if not arg12 then
        break
      end
      arg12 = arg5
      if -1 ~= arg12 then
        arg12 = arg5
        arg12 = arg12 - 1
        arg5 = arg12
      end
      arg12 = arg5
      if arg12 > 0 then
        arg12 = PlaySoundFrontend
        arg22 = -1
        arg32 = "3_2_1"
        workValue4 = "HUD_MINI_GAME_SOUNDSET"
        workValue5 = true
        arg12(arg22, arg32, workValue4, workValue5)
      end
      arg12 = arg5
      if 0 == arg12 then
        arg12 = PlaySoundFrontend
        arg22 = -1
        arg32 = "GO"
        workValue4 = "HUD_MINI_GAME_SOUNDSET"
        workValue5 = true
        arg12(arg22, arg32, workValue4, workValue5)
      end
      arg12 = Citizen
      arg12 = arg12.Wait
      arg22 = 1000
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  iterator2(workValue8)
  iterator2 = Scaleform
  workValue8 = "COUNTDOWN"
  iterator2 = iterator2(workValue8)
  workValue8 = Citizen
  workValue8 = workValue8.CreateThread
  function flag14()
    local arg12, arg22, arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper
    while true do
      arg12 = arg2
      if not arg12 then
        break
      end
      arg12 = arg5
      if -1 ~= arg12 then
        arg12 = arg5
        if 0 == arg12 then
          arg12 = iterator2.RunFunction
          arg22 = "SET_MESSAGE"
          arg32 = {}
          workValue4 = "CNTDWN_GO"
          workValue5 = 0
          dataTable6 = 255
          tableHelper2 = 0
          workValue6 = true
          stringHelper = false
          arg32[1] = workValue4
          arg32[2] = workValue5
          arg32[3] = dataTable6
          arg32[4] = tableHelper2
          arg32[5] = workValue6
          arg32[6] = stringHelper
          arg12(arg22, arg32)
        else
          arg12 = arg5
          if arg12 > 0 then
            arg12 = arg5
            arg22 = arg1
            arg22 = arg22 / 2
            if arg12 >= arg22 then
              arg12 = math
              arg12 = arg12.floor
              arg22 = arg3
              arg32 = arg4
              arg22 = arg22 / arg32
              arg32 = 1
              arg22 = arg32 - arg22
              arg22 = 510 * arg22
              arg12 = arg12(arg22)
              flag10 = arg12
            else
              arg12 = arg5
              arg22 = arg1
              arg22 = arg22 / 2
              if arg12 < arg22 then
                arg12 = math
                arg12 = arg12.floor
                arg22 = arg3
                arg32 = arg4
                arg22 = arg22 / arg32
                arg22 = 510 * arg22
                arg12 = arg12(arg22)
                arg6 = arg12
              end
            end
            arg12 = iterator2.RunFunction
            arg22 = "SET_MESSAGE"
            arg32 = {}
            workValue4 = tostring
            workValue5 = arg5
            workValue4 = workValue4(workValue5)
            workValue5 = arg6
            dataTable6 = flag10
            tableHelper2 = 0
            workValue6 = true
            stringHelper = false
            arg32[1] = workValue4
            arg32[2] = workValue5
            arg32[3] = dataTable6
            arg32[4] = tableHelper2
            arg32[5] = workValue6
            arg32[6] = stringHelper
            arg12(arg22, arg32)
          end
        end
        arg12 = iterator2.Render2D
        arg12()
      end
      arg12 = Wait
      arg22 = 0
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  workValue8(flag14)
  while -1 ~= arg5 do
    workValue8 = Citizen
    workValue8 = workValue8.Wait
    flag14 = 1.0
    workValue8(flag14)
  end
  arg2 = false
end
rageUiCall4.showCountdownTimer = textValue7
rageUiCall4 = CMG
function textValue7(arg1)
  local arg2, arg3
  if arg1 then
    arg2 = table
    arg2 = arg2.count
    arg3 = arg1
    -- Beginner: result below is count.
    arg2 = arg2(arg3)
    if 0 ~= arg2 then
      arg2 = currentEvent
      arg2.bounds = arg1
    end
  end
end
rageUiCall4.setMinigameBounds = textValue7
rageUiCall4 = CMG
function textValue7()
  local arg1, arg2
  arg1 = currentEvent
  arg1.bounds = nil
end
rageUiCall4.clearMinigameBounds = textValue7
function rageUiCall4(arg1)
  local arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3, flag5, flag6
  arg2 = currentEvent
  arg2 = arg2.bounds
  if arg2 then
    arg2 = ipairs
    arg3 = currentEvent
    arg3 = arg3.bounds
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, flag10 in arg2, arg3, arg4, arg5 do
      iterator2 = table
      iterator2 = iterator2.count
      workValue8 = flag10
      -- Beginner: result below is count.
      iterator2 = iterator2(workValue8)
      if 2 == iterator2 then
        iterator2 = IsEntityInArea
        workValue8 = arg1
        flag14 = flag10[1]
        flag14 = flag14.x
        iterator = flag10[1]
        iterator = iterator.y
        textValue2 = flag10[1]
        textValue2 = textValue2.z
        numberValue2 = flag10[2]
        numberValue2 = numberValue2.x
        tableHelper = flag10[2]
        tableHelper = tableHelper.y
        flag2 = flag10[2]
        flag2 = flag2.z
        flag3 = false
        flag5 = true
        flag6 = 0
        iterator2 = iterator2(workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3, flag5, flag6)
        if not iterator2 then
          iterator2 = true
          return iterator2
        end
      end
    end
  end
  arg2 = false
  return arg2
end
textValue7 = Citizen
textValue7 = textValue7.CreateThread
function dataTable3()
  local arg1, arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2
  while true do
    arg1 = currentEvent
    arg1 = arg1.bounds
    if arg1 then
      arg1 = CMG
      arg1 = arg1.getEventLocalPlayer
      arg1 = arg1()
      if arg1 then
        arg1 = CMG
        arg1 = arg1.getEventLocalPlayer
        arg1 = arg1()
        arg1 = arg1.active
        if arg1 then
          arg1 = CMG
          arg1 = arg1.isSpectatingEvent
          arg1 = arg1()
          if not arg1 then
            arg1 = GetEntityHealth
            arg2 = PlayerPedId
            arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2 = arg2()
            -- Beginner: result below is health.
            arg1 = arg1(arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2)
            if arg1 > 0 then
              arg1 = rageUiCall4
              arg2 = PlayerPedId
              arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2 = arg2()
              arg1 = arg1(arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2)
              if arg1 then
                arg1 = GetGameTimer
                -- Beginner: result below is gameTimeMs.
                arg1 = arg1()
                arg2 = 5
                arg3 = AnimpostfxPlay
                arg4 = "MP_race_crash"
                arg5 = 5000
                arg6 = false
                arg3(arg4, arg5, arg6)
                arg3 = GetSoundId
                -- Beginner: result below is soundHandle.
                arg3 = arg3()
                arg4 = PlaySound
                arg5 = arg3
                arg6 = "OOB_Timer_Dynamic"
                flag10 = "GTAO_FM_Events_Soundset"
                iterator2 = false
                workValue8 = false
                flag14 = false
                arg4(arg5, arg6, flag10, iterator2, workValue8, flag14)
                arg4 = ReleaseSoundId
                arg5 = arg3
                arg4(arg5)
                while true do
                  arg4 = rageUiCall4
                  arg5 = PlayerPedId
                  arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2 = arg5()
                  arg4 = arg4(arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2)
                  if not arg4 then
                    break
                  end
                  arg4 = GetGameTimer
                  -- Beginner: result below is gameTimeMs.
                  arg4 = arg4()
                  arg4 = arg4 - arg1
                  arg5 = 5000
                  if not (arg4 < arg5) then
                    break
                  end
                  arg4 = CMG
                  arg4 = arg4.announceMpBigMsg
                  arg5 = "~r~Out Of Bounds~w~"
                  arg6 = "Return to the minigame within "
                  flag10 = arg2
                  iterator2 = " seconds or you will explode."
                  arg6 = arg6 .. flag10 .. iterator2
                  flag10 = 1000
                  arg4(arg5, arg6, flag10)
                  arg2 = arg2 - 1
                end
                arg4 = AnimpostfxStopAll
                arg4()
                arg4 = StopSound
                arg5 = arg3
                arg4(arg5)
                arg4 = rageUiCall4
                arg5 = PlayerPedId
                arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2 = arg5()
                arg4 = arg4(arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2)
                if arg4 then
                  arg4 = GetEntityCoords
                  arg5 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  arg5 = arg5()
                  arg6 = true
                  -- Beginner: result below is entityCoords.
                  arg4 = arg4(arg5, arg6)
                  arg5 = AddExplosion
                  arg6 = arg4.x
                  flag10 = arg4.y
                  iterator2 = arg4.z
                  workValue8 = 1
                  flag14 = 1.0
                  iterator = true
                  textValue2 = false
                  numberValue2 = 1.0
                  arg5(arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2)
                  arg5 = SetEntityHealth
                  arg6 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  arg6 = arg6()
                  flag10 = 0
                  arg5(arg6, flag10)
                  arg5 = Wait
                  arg6 = 10000
                  arg5(arg6)
                else
                  arg4 = Wait
                  arg5 = 200
                  arg4(arg5)
                  arg4 = PlaySound
                  arg5 = -1
                  arg6 = "OOB_Cancel"
                  flag10 = "GTAO_FM_Events_Soundset"
                  iterator2 = false
                  workValue8 = 0
                  flag14 = false
                  arg4(arg5, arg6, flag10, iterator2, workValue8, flag14)
                end
              end
            end
          end
        end
      end
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue7(dataTable3)
function textValue7(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.loadPtfx
  arg3 = "proj_indep_firework"
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.loadPtfx
  arg3 = "proj_indep_firework_v2"
  arg2(arg3)
  arg2 = UseParticleFxAsset
  arg3 = "proj_indep_firework"
  arg2(arg3)
  arg2 = UseParticleFxAsset
  arg3 = "proj_indep_firework_v2"
  arg2(arg3)
  arg2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.
  function arg3()
    local arg12, arg22, arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3, textValue5, flag4
    arg12 = 1
    arg22 = 5
    arg32 = 1
    for workValue4 = arg12, arg22, arg32 do
      workValue5 = workValue4 % 2
      if 0 == workValue5 then
        workValue5 = UseParticleFxAsset
        dataTable6 = "proj_indep_firework_v2"
        workValue5(dataTable6)
        workValue5 = StartParticleFxNonLoopedAtCoord
        dataTable6 = "scr_firework_indep_repeat_burst_rwb"
        tableHelper2 = arg1.x
        workValue6 = arg1.y
        stringHelper = arg1.z
        dataTable8 = 0.0
        flag = 0.0
        numberValue = 0.0
        workValue2 = 1.0
        workValue3 = false
        textValue5 = false
        flag4 = false
        workValue5(dataTable6, tableHelper2, workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3, textValue5, flag4)
      else
        workValue5 = UseParticleFxAsset
        dataTable6 = "proj_indep_firework"
        workValue5(dataTable6)
        workValue5 = StartParticleFxNonLoopedAtCoord
        dataTable6 = "scr_indep_firework_air_burst"
        tableHelper2 = arg1.x
        workValue6 = arg1.y
        stringHelper = arg1.z
        dataTable8 = 0.0
        flag = 0.0
        numberValue = 0.0
        workValue2 = 1.0
        workValue3 = false
        textValue5 = false
        flag4 = false
        workValue5(dataTable6, tableHelper2, workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3, textValue5, flag4)
      end
      workValue5 = Wait
      dataTable6 = 1000
      workValue5(dataTable6)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.loadPtfx
  arg3 = "scr_indep_fireworks"
  arg2(arg3)
  arg2 = UseParticleFxAsset
  arg3 = "scr_indep_fireworks"
  arg2(arg3)
  arg2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.
  function arg3()
    local arg12, arg22, arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3, textValue5, flag4
    arg12 = 1
    arg22 = 5
    arg32 = 1
    for workValue4 = arg12, arg22, arg32 do
      workValue5 = UseParticleFxAsset
      dataTable6 = "scr_indep_fireworks"
      workValue5(dataTable6)
      workValue5 = StartParticleFxNonLoopedAtCoord
      dataTable6 = "scr_indep_firework_starburst"
      tableHelper2 = arg1.x
      workValue6 = arg1.y
      stringHelper = arg1.z
      dataTable8 = 0.0
      flag = 0.0
      numberValue = 0.0
      workValue2 = 1.0
      workValue3 = false
      textValue5 = false
      flag4 = false
      workValue5(dataTable6, tableHelper2, workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3, textValue5, flag4)
      workValue5 = Wait
      dataTable6 = 1000
      workValue5(dataTable6)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
dataTable3 = {}
vector4Builder = vector4
vector4Builder2 = 683.82855224609
vector4Builder3 = 570.56701660156
vector4Builder4 = 130.44616699219
numberValue3 = 155.0
vector4Builder = vector4Builder(vector4Builder2, vector4Builder3, vector4Builder4, numberValue3)
vector4Builder2 = vector4
vector4Builder3 = 682.49670410156
vector4Builder4 = 571.10766601562
numberValue3 = 130.44616699219
numberValue4 = 155.0
vector4Builder2 = vector4Builder2(vector4Builder3, vector4Builder4, numberValue3, numberValue4)
vector4Builder3 = vector4
vector4Builder4 = 685.51647949219
numberValue3 = 570.01318359375
numberValue4 = 130.44616699219
numberValue5 = 155.0
vector4Builder3 = vector4Builder3(vector4Builder4, numberValue3, numberValue4, numberValue5)
vector4Builder4 = vector4
numberValue3 = 687.23077392578
numberValue4 = 569.41979980469
numberValue5 = 130.44616699219
numberValue6 = 155.0
vector4Builder4 = vector4Builder4(numberValue3, numberValue4, numberValue5, numberValue6)
numberValue3 = vector4
numberValue4 = 681.44177246094
numberValue5 = 571.45056152344
numberValue6 = 130.44616699219
numberValue7 = 155.0
numberValue3 = numberValue3(numberValue4, numberValue5, numberValue6, numberValue7)
numberValue4 = vector4
numberValue5 = 680.21539306641
numberValue6 = 573.54724121094
numberValue7 = 130.44616699219
numberValue8 = 155.0
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7, numberValue8)
numberValue5 = vector4
numberValue6 = 681.73187255859
numberValue7 = 573.17803955078
numberValue8 = 130.44616699219
numberValue9 = 155.0
numberValue5 = numberValue5(numberValue6, numberValue7, numberValue8, numberValue9)
numberValue6 = vector4
numberValue7 = 683.34063720703
numberValue8 = 572.57141113281
numberValue9 = 130.44616699219
numberValue10 = 155.0
numberValue6 = numberValue6(numberValue7, numberValue8, numberValue9, numberValue10)
numberValue7 = vector4
numberValue8 = 685.09448242188
numberValue9 = 571.8857421875
numberValue10 = 130.44616699219
numberValue11 = 155.0
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue10, numberValue11)
numberValue8 = vector4
numberValue9 = 687.23077392578
numberValue10 = 571.39782714844
numberValue11 = 130.44616699219
numberValue12 = 155.0
numberValue8 = numberValue8(numberValue9, numberValue10, numberValue11, numberValue12)
numberValue9 = vector4
numberValue10 = 689.23516845703
numberValue11 = 570.89672851562
numberValue12 = 130.44616699219
numberValue13 = 155.0
numberValue9 = numberValue9(numberValue10, numberValue11, numberValue12, numberValue13)
numberValue10 = vector4
numberValue11 = 690.96264648438
numberValue12 = 571.43737792969
numberValue13 = 130.44616699219
numberValue14 = 155.0
numberValue10 = numberValue10(numberValue11, numberValue12, numberValue13, numberValue14)
numberValue11 = vector4
numberValue12 = 689.63079833984
numberValue13 = 572.94067382812
numberValue14 = 130.44616699219
numberValue15 = 155.0
numberValue11 = numberValue11(numberValue12, numberValue13, numberValue14, numberValue15)
numberValue12 = vector4
numberValue13 = 687.74505615234
numberValue14 = 573.69232177734
numberValue15 = 130.44616699219
numberValue16 = 155.0
numberValue12 = numberValue12(numberValue13, numberValue14, numberValue15, numberValue16)
numberValue13 = vector4
numberValue14 = 686.10986328125
numberValue15 = 574.33843994141
numberValue16 = 130.44616699219
numberValue17 = 155.0
numberValue13 = numberValue13(numberValue14, numberValue15, numberValue16, numberValue17)
numberValue14 = vector4
numberValue15 = 682.44396972656
numberValue16 = 575.78900146484
numberValue17 = 130.44616699219
numberValue18 = 155.0
numberValue14 = numberValue14(numberValue15, numberValue16, numberValue17, numberValue18)
numberValue15 = vector4
numberValue16 = 680.14947509766
numberValue17 = 572.00439453125
numberValue18 = 130.44616699219
numberValue19 = 155.0
numberValue15 = numberValue15(numberValue16, numberValue17, numberValue18, numberValue19)
numberValue16 = vector4
numberValue17 = 678.93627929688
numberValue18 = 572.57141113281
numberValue19 = 130.44616699219
numberValue20 = 155.0
numberValue16 = numberValue16(numberValue17, numberValue18, numberValue19, numberValue20)
numberValue17 = vector4
numberValue18 = 679.23956298828
numberValue19 = 573.876953125
numberValue20 = 130.44616699219
numberValue21 = 155.0
numberValue17 = numberValue17(numberValue18, numberValue19, numberValue20, numberValue21)
numberValue18 = vector4
numberValue19 = 686.22857666016
numberValue20 = 571.75384521484
numberValue21 = 130.44616699219
numberValue22 = 155.0
numberValue18 = numberValue18(numberValue19, numberValue20, numberValue21, numberValue22)
numberValue19 = vector4
numberValue20 = 688.29888916016
numberValue21 = 571.06811523438
numberValue22 = 130.44616699219
numberValue23 = 155.0
numberValue19 = numberValue19(numberValue20, numberValue21, numberValue22, numberValue23)
numberValue20 = vector4
numberValue21 = 688.57580566406
numberValue22 = 568.95825195312
numberValue23 = 130.44616699219
numberValue24 = 155.0
numberValue20 = numberValue20(numberValue21, numberValue22, numberValue23, numberValue24)
numberValue21 = vector4
numberValue22 = 690.54064941406
numberValue23 = 570.19781494141
numberValue24 = 130.44616699219
numberValue25 = 155.0
numberValue21 = numberValue21(numberValue22, numberValue23, numberValue24, numberValue25)
numberValue22 = vector4
numberValue23 = 689.61755371094
numberValue24 = 571.80657958984
numberValue25 = 130.44616699219
numberValue26 = 155.0
numberValue22 = numberValue22(numberValue23, numberValue24, numberValue25, numberValue26)
numberValue23 = vector4
numberValue24 = 688.41760253906
numberValue25 = 572.34722900391
numberValue26 = 130.44616699219
numberValue27 = 155.0
numberValue23 = numberValue23(numberValue24, numberValue25, numberValue26, numberValue27)
numberValue24 = vector4
numberValue25 = 687.38903808594
numberValue26 = 572.71649169922
numberValue27 = 130.44616699219
numberValue28 = 155.0
numberValue24 = numberValue24(numberValue25, numberValue26, numberValue27, numberValue28)
numberValue25 = vector4
numberValue26 = 686.20220947266
numberValue27 = 573.05932617188
numberValue28 = 130.44616699219
numberValue29 = 155.0
numberValue25 = numberValue25(numberValue26, numberValue27, numberValue28, numberValue29)
numberValue26 = vector4
numberValue27 = 684.96264648438
numberValue28 = 573.37585449219
numberValue29 = 130.44616699219
numberValue30 = 155.0
numberValue26 = numberValue26(numberValue27, numberValue28, numberValue29, numberValue30)
numberValue27 = vector4
numberValue28 = 683.96044921875
numberValue29 = 573.86376953125
numberValue30 = 130.44616699219
numberValue31 = 155.0
numberValue27 = numberValue27(numberValue28, numberValue29, numberValue30, numberValue31)
numberValue28 = vector4
numberValue29 = 682.86596679688
numberValue30 = 574.23297119141
numberValue31 = 130.44616699219
numberValue32 = 155.0
numberValue28 = numberValue28(numberValue29, numberValue30, numberValue31, numberValue32)
numberValue29 = vector4
numberValue30 = 681.876953125
numberValue31 = 574.66815185547
numberValue32 = 130.44616699219
numberValue33 = 155.0
numberValue29 = numberValue29(numberValue30, numberValue31, numberValue32, numberValue33)
numberValue30 = vector4
numberValue31 = 680.82196044922
numberValue32 = 574.98461914062
numberValue33 = 130.44616699219
numberValue34 = 155.0
numberValue30 = numberValue30(numberValue31, numberValue32, numberValue33, numberValue34)
numberValue31 = vector4
numberValue32 = 689.48571777344
numberValue33 = 569.67034912109
numberValue34 = 130.44616699219
numberValue35 = 155.0
numberValue31 = numberValue31(numberValue32, numberValue33, numberValue34, numberValue35)
numberValue32 = vector4
numberValue33 = 688.43078613281
numberValue34 = 570.13189697266
numberValue35 = 130.44616699219
numberValue36 = 155.0
numberValue32 = numberValue32(numberValue33, numberValue34, numberValue35, numberValue36)
numberValue33 = vector4
numberValue34 = 687.01977539062
numberValue35 = 570.65936279297
numberValue36 = 130.44616699219
numberValue37 = 155.0
numberValue33 = numberValue33(numberValue34, numberValue35, numberValue36, numberValue37)
numberValue34 = vector4
numberValue35 = 685.75384521484
numberValue36 = 571.00219726562
numberValue37 = 130.44616699219
numberValue38 = 155.0
numberValue34 = numberValue34(numberValue35, numberValue36, numberValue37, numberValue38)
numberValue35 = vector4
numberValue36 = 684.03955078125
numberValue37 = 571.62200927734
numberValue38 = 130.44616699219
numberValue39 = 155.0
numberValue35 = numberValue35(numberValue36, numberValue37, numberValue38, numberValue39)
numberValue36 = vector4
numberValue37 = 682.73406982422
numberValue38 = 571.9384765625
numberValue39 = 130.44616699219
numberValue40 = 155.0
numberValue36 = numberValue36(numberValue37, numberValue38, numberValue39, numberValue40)
numberValue37 = vector4
numberValue38 = 681.65277099609
numberValue39 = 572.47912597656
numberValue40 = 130.44616699219
numberValue41 = 155.0
numberValue37 = numberValue37(numberValue38, numberValue39, numberValue40, numberValue41)
numberValue38 = vector4
numberValue39 = 680.54504394531
numberValue40 = 572.72967529297
numberValue41 = 130.44616699219
numberValue42 = 155.0
numberValue38 = numberValue38(numberValue39, numberValue40, numberValue41, numberValue42)
numberValue39 = vector4
numberValue40 = 679.47692871094
numberValue41 = 573.00659179688
numberValue42 = 130.44616699219
numberValue43 = 155.0
numberValue39 = numberValue39(numberValue40, numberValue41, numberValue42, numberValue43)
numberValue40 = vector4
numberValue41 = 679.63519287109
numberValue42 = 575.47253417969
numberValue43 = 130.44616699219
numberValue44 = 155.0
numberValue40 = numberValue40(numberValue41, numberValue42, numberValue43, numberValue44)
numberValue41 = vector4
numberValue42 = 689.88134765625
numberValue43 = 568.74725341797
numberValue44 = 130.44616699219
numberValue45 = 155.0
numberValue41 = numberValue41(numberValue42, numberValue43, numberValue44, numberValue45)
numberValue42 = vector4
numberValue43 = 690.87036132812
numberValue44 = 572.50549316406
numberValue45 = 130.44616699219
numberValue46 = 155.0
numberValue42 = numberValue42(numberValue43, numberValue44, numberValue45, numberValue46)
numberValue43 = vector4
numberValue44 = 688.70770263672
numberValue45 = 573.27032470703
numberValue46 = 130.44616699219
numberValue47 = 155.0
numberValue43 = numberValue43(numberValue44, numberValue45, numberValue46, numberValue47)
numberValue44 = vector4
numberValue45 = 684.97583007812
numberValue46 = 574.60217285156
numberValue47 = 130.44616699219
numberValue49 = 155.0
numberValue44 = numberValue44(numberValue45, numberValue46, numberValue47, numberValue49)
numberValue45 = vector4
numberValue46 = 683.73626708984
numberValue47 = 575.05053710938
numberValue49 = 130.44616699219
numberValue50 = 155.0
numberValue45 = numberValue45(numberValue46, numberValue47, numberValue49, numberValue50)
numberValue46 = vector4
numberValue47 = 681.27032470703
numberValue49 = 576.06591796875
numberValue50 = 130.44616699219
numberValue51 = 155.0
numberValue46 = numberValue46(numberValue47, numberValue49, numberValue50, numberValue51)
numberValue47 = vector4
numberValue49 = 680.25494384766
numberValue50 = 576.36926269531
numberValue51 = 130.44616699219
numberValue52 = 155.0
numberValue47 = numberValue47(numberValue49, numberValue50, numberValue51, numberValue52)
numberValue49 = vector4
numberValue50 = 691.54284667969
numberValue51 = 573.53405761719
numberValue52 = 130.44616699219
numberValue53 = 155.0
numberValue49 = numberValue49(numberValue50, numberValue51, numberValue52, numberValue53)
dataTable3[1] = vector4Builder
dataTable3[2] = vector4Builder2
dataTable3[3] = vector4Builder3
dataTable3[4] = vector4Builder4
dataTable3[5] = numberValue3
dataTable3[6] = numberValue4
dataTable3[7] = numberValue5
dataTable3[8] = numberValue6
dataTable3[9] = numberValue7
dataTable3[10] = numberValue8
dataTable3[11] = numberValue9
dataTable3[12] = numberValue10
dataTable3[13] = numberValue11
dataTable3[14] = numberValue12
dataTable3[15] = numberValue13
dataTable3[16] = numberValue14
dataTable3[17] = numberValue15
dataTable3[18] = numberValue16
dataTable3[19] = numberValue17
dataTable3[20] = numberValue18
dataTable3[21] = numberValue19
dataTable3[22] = numberValue20
dataTable3[23] = numberValue21
dataTable3[24] = numberValue22
dataTable3[25] = numberValue23
dataTable3[26] = numberValue24
dataTable3[27] = numberValue25
dataTable3[28] = numberValue26
dataTable3[29] = numberValue27
dataTable3[30] = numberValue28
dataTable3[31] = numberValue29
dataTable3[32] = numberValue30
dataTable3[33] = numberValue31
dataTable3[34] = numberValue32
dataTable3[35] = numberValue33
dataTable3[36] = numberValue34
dataTable3[37] = numberValue35
dataTable3[38] = numberValue36
dataTable3[39] = numberValue37
dataTable3[40] = numberValue38
dataTable3[41] = numberValue39
dataTable3[42] = numberValue40
dataTable3[43] = numberValue41
dataTable3[44] = numberValue42
dataTable3[45] = numberValue43
dataTable3[46] = numberValue44
dataTable3[47] = numberValue45
dataTable3[48] = numberValue46
dataTable3[49] = numberValue47
dataTable3[50] = numberValue49
vector4Builder = vector4
vector4Builder2 = 690.40881347656
vector4Builder3 = 573.9560546875
vector4Builder4 = 130.44616699219
numberValue3 = 155.0
vector4Builder = vector4Builder(vector4Builder2, vector4Builder3, vector4Builder4, numberValue3)
vector4Builder2 = vector4
vector4Builder3 = 689.52526855469
vector4Builder4 = 574.29888916016
numberValue3 = 130.44616699219
numberValue4 = 155.0
vector4Builder2 = vector4Builder2(vector4Builder3, vector4Builder4, numberValue3, numberValue4)
vector4Builder3 = vector4
vector4Builder4 = 688.58898925781
numberValue3 = 574.62860107422
numberValue4 = 130.44616699219
numberValue5 = 155.0
vector4Builder3 = vector4Builder3(vector4Builder4, numberValue3, numberValue4, numberValue5)
vector4Builder4 = vector4
numberValue3 = 687.46813964844
numberValue4 = 575.07690429688
numberValue5 = 130.44616699219
numberValue6 = 155.0
vector4Builder4 = vector4Builder4(numberValue3, numberValue4, numberValue5, numberValue6)
numberValue3 = vector4
numberValue4 = 686.42639160156
numberValue5 = 575.53845214844
numberValue6 = 130.44616699219
numberValue7 = 155.0
numberValue3 = numberValue3(numberValue4, numberValue5, numberValue6, numberValue7)
numberValue4 = vector4
numberValue5 = 685.31866455078
numberValue6 = 575.80218505859
numberValue7 = 130.44616699219
numberValue8 = 155.0
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7, numberValue8)
numberValue5 = vector4
numberValue6 = 684.30328369141
numberValue7 = 576.21099853516
numberValue8 = 130.44616699219
numberValue9 = 155.0
numberValue5 = numberValue5(numberValue6, numberValue7, numberValue8, numberValue9)
numberValue6 = vector4
numberValue7 = 683.31427001953
numberValue8 = 576.67254638672
numberValue9 = 130.44616699219
numberValue10 = 155.0
numberValue6 = numberValue6(numberValue7, numberValue8, numberValue9, numberValue10)
numberValue7 = vector4
numberValue8 = 682.28570556641
numberValue9 = 577.12091064453
numberValue10 = 130.44616699219
numberValue11 = 155.0
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue10, numberValue11)
numberValue8 = vector4
numberValue9 = 681.34942626953
numberValue10 = 577.45056152344
numberValue11 = 130.44616699219
numberValue12 = 155.0
numberValue8 = numberValue8(numberValue9, numberValue10, numberValue11, numberValue12)
numberValue9 = vector4
numberValue10 = 680.28131103516
numberValue11 = 577.79339599609
numberValue12 = 130.44616699219
numberValue13 = 155.0
numberValue9 = numberValue9(numberValue10, numberValue11, numberValue12, numberValue13)
numberValue10 = vector4
numberValue11 = 686.38684082031
numberValue12 = 569.78900146484
numberValue13 = 130.44616699219
numberValue14 = 155.0
numberValue10 = numberValue10(numberValue11, numberValue12, numberValue13, numberValue14)
numberValue11 = vector4
numberValue12 = 684.72528076172
numberValue13 = 570.42199707031
numberValue14 = 130.44616699219
numberValue15 = 155.0
numberValue11 = numberValue11(numberValue12, numberValue13, numberValue14, numberValue15)
numberValue12 = vector4
numberValue13 = 686.99340820312
numberValue14 = 574.0615234375
numberValue15 = 130.44616699219
numberValue16 = 155.0
numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54 = numberValue12(numberValue13, numberValue14, numberValue15, numberValue16)
dataTable3[51] = vector4Builder
dataTable3[52] = vector4Builder2
dataTable3[53] = vector4Builder3
dataTable3[54] = vector4Builder4
dataTable3[55] = numberValue3
dataTable3[56] = numberValue4
dataTable3[57] = numberValue5
dataTable3[58] = numberValue6
dataTable3[59] = numberValue7
dataTable3[60] = numberValue8
dataTable3[61] = numberValue9
dataTable3[62] = numberValue10
dataTable3[63] = numberValue11
dataTable3[64] = numberValue12
dataTable3[65] = numberValue13
dataTable3[66] = numberValue14
dataTable3[67] = numberValue15
dataTable3[68] = numberValue16
dataTable3[69] = numberValue17
dataTable3[70] = numberValue18
dataTable3[71] = numberValue19
dataTable3[72] = numberValue20
dataTable3[73] = numberValue21
dataTable3[74] = numberValue22
dataTable3[75] = numberValue23
dataTable3[76] = numberValue24
dataTable3[77] = numberValue25
dataTable3[78] = numberValue26
dataTable3[79] = numberValue27
dataTable3[80] = numberValue28
dataTable3[81] = numberValue29
dataTable3[82] = numberValue30
dataTable3[83] = numberValue31
dataTable3[84] = numberValue32
dataTable3[85] = numberValue33
dataTable3[86] = numberValue34
dataTable3[87] = numberValue35
dataTable3[88] = numberValue36
dataTable3[89] = numberValue37
dataTable3[90] = numberValue38
dataTable3[91] = numberValue39
dataTable3[92] = numberValue40
dataTable3[93] = numberValue41
dataTable3[94] = numberValue42
dataTable3[95] = numberValue43
dataTable3[96] = numberValue44
dataTable3[97] = numberValue45
dataTable3[98] = numberValue46
dataTable3[99] = numberValue47
dataTable3[100] = numberValue49
dataTable3[101] = numberValue50
dataTable3[102] = numberValue51
dataTable3[103] = numberValue52
dataTable3[104] = numberValue53
dataTable3[105] = numberValue54
vector4Builder = {}
vector4Builder2 = vector4
vector4Builder3 = 696.13189697266
vector4Builder4 = 579.70550537109
numberValue3 = 130.44616699219
numberValue4 = 155.0
vector4Builder2 = vector4Builder2(vector4Builder3, vector4Builder4, numberValue3, numberValue4)
vector4Builder3 = vector4
vector4Builder4 = 694.94506835938
numberValue3 = 580.02197265625
numberValue4 = 130.44616699219
numberValue5 = 155.0
vector4Builder3 = vector4Builder3(vector4Builder4, numberValue3, numberValue4, numberValue5)
vector4Builder4 = vector4
numberValue3 = 693.85052490234
numberValue4 = 580.41760253906
numberValue5 = 130.44616699219
numberValue6 = 155.0
vector4Builder4 = vector4Builder4(numberValue3, numberValue4, numberValue5, numberValue6)
numberValue3 = vector4
numberValue4 = 693.42858886719
numberValue5 = 579.25714111328
numberValue6 = 130.44616699219
numberValue7 = 155.0
numberValue3 = numberValue3(numberValue4, numberValue5, numberValue6, numberValue7)
numberValue4 = vector4
numberValue5 = 694.62860107422
numberValue6 = 578.78240966797
numberValue7 = 130.44616699219
numberValue8 = 155.0
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7, numberValue8)
numberValue5 = vector4
numberValue6 = 695.98681640625
numberValue7 = 578.22857666016
numberValue8 = 130.44616699219
numberValue9 = 155.0
numberValue5 = numberValue5(numberValue6, numberValue7, numberValue8, numberValue9)
numberValue6 = vector4
numberValue7 = 696.27691650391
numberValue8 = 577.21319580078
numberValue9 = 130.44616699219
numberValue10 = 155.0
numberValue6 = numberValue6(numberValue7, numberValue8, numberValue9, numberValue10)
numberValue7 = vector4
numberValue8 = 694.90551757812
numberValue9 = 577.74066162109
numberValue10 = 130.44616699219
numberValue11 = 155.0
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue10, numberValue11)
numberValue8 = vector4
numberValue9 = 696.47473144531
numberValue10 = 577.12091064453
numberValue11 = 130.44616699219
numberValue12 = 155.0
numberValue8 = numberValue8(numberValue9, numberValue10, numberValue11, numberValue12)
numberValue9 = vector4
numberValue10 = 692.51867675781
numberValue11 = 578.22857666016
numberValue12 = 130.44616699219
numberValue13 = 155.0
numberValue9 = numberValue9(numberValue10, numberValue11, numberValue12, numberValue13)
numberValue10 = vector4
numberValue11 = 691.38464355469
numberValue12 = 578.59777832031
numberValue13 = 130.44616699219
numberValue14 = 155.0
numberValue10 = numberValue10(numberValue11, numberValue12, numberValue13, numberValue14)
numberValue11 = vector4
numberValue12 = 692.38684082031
numberValue13 = 579.86376953125
numberValue14 = 130.44616699219
numberValue15 = 155.0
numberValue11 = numberValue11(numberValue12, numberValue13, numberValue14, numberValue15)
numberValue12 = vector4
numberValue13 = 690.98901367188
numberValue14 = 581.01098632812
numberValue15 = 130.44616699219
numberValue16 = 155.0
numberValue12 = numberValue12(numberValue13, numberValue14, numberValue15, numberValue16)
numberValue13 = vector4
numberValue14 = 690.44836425781
numberValue15 = 579.32305908203
numberValue16 = 130.44616699219
numberValue17 = 155.0
numberValue13 = numberValue13(numberValue14, numberValue15, numberValue16, numberValue17)
numberValue14 = vector4
numberValue15 = 697.92529296875
numberValue16 = 581.60437011719
numberValue17 = 130.44616699219
numberValue18 = 155.0
numberValue14 = numberValue14(numberValue15, numberValue16, numberValue17, numberValue18)
numberValue15 = vector4
numberValue16 = 699.16485595703
numberValue17 = 581.02416992188
numberValue18 = 130.44616699219
numberValue19 = 155.0
numberValue15 = numberValue15(numberValue16, numberValue17, numberValue18, numberValue19)
numberValue16 = vector4
numberValue17 = 692.42639160156
numberValue18 = 581.03735351562
numberValue19 = 130.44616699219
numberValue20 = 155.0
numberValue16 = numberValue16(numberValue17, numberValue18, numberValue19, numberValue20)
numberValue17 = vector4
numberValue18 = 690.17144775391
numberValue19 = 581.73626708984
numberValue20 = 130.44616699219
numberValue21 = 155.0
numberValue17 = numberValue17(numberValue18, numberValue19, numberValue20, numberValue21)
numberValue18 = vector4
numberValue19 = 697.17364501953
numberValue20 = 579.21759033203
numberValue21 = 130.44616699219
numberValue22 = 155.0
numberValue18 = numberValue18(numberValue19, numberValue20, numberValue21, numberValue22)
numberValue19 = vector4
numberValue20 = 697.39782714844
numberValue21 = 577.78021240234
numberValue22 = 130.44616699219
numberValue23 = 155.0
numberValue19 = numberValue19(numberValue20, numberValue21, numberValue22, numberValue23)
numberValue20 = vector4
numberValue21 = 697.75384521484
numberValue22 = 576.64617919922
numberValue23 = 130.44616699219
numberValue24 = 155.0
numberValue20 = numberValue20(numberValue21, numberValue22, numberValue23, numberValue24)
numberValue21 = vector4
numberValue22 = 699.24395751953
numberValue23 = 576.0263671875
numberValue24 = 130.44616699219
numberValue25 = 155.0
numberValue21 = numberValue21(numberValue22, numberValue23, numberValue24, numberValue25)
numberValue22 = vector4
numberValue23 = 697.84613037109
numberValue24 = 578.88793945312
numberValue25 = 130.44616699219
numberValue26 = 1155.0
numberValue22 = numberValue22(numberValue23, numberValue24, numberValue25, numberValue26)
numberValue23 = vector4
numberValue24 = 698.92749023438
numberValue25 = 578.58459472656
numberValue26 = 130.44616699219
numberValue27 = 155.0
numberValue23 = numberValue23(numberValue24, numberValue25, numberValue26, numberValue27)
numberValue24 = vector4
numberValue25 = 697.79339599609
numberValue26 = 577.71429443359
numberValue27 = 130.44616699219
numberValue28 = 155.0
numberValue24 = numberValue24(numberValue25, numberValue26, numberValue27, numberValue28)
numberValue25 = vector4
numberValue26 = 699.16485595703
numberValue27 = 577.16046142578
numberValue28 = 130.44616699219
numberValue29 = 155.0
numberValue25 = numberValue25(numberValue26, numberValue27, numberValue28, numberValue29)
numberValue26 = vector4
numberValue27 = 693.66595458984
numberValue28 = 577.89892578125
numberValue29 = 130.44616699219
numberValue30 = 155.0
numberValue26 = numberValue26(numberValue27, numberValue28, numberValue29, numberValue30)
numberValue27 = vector4
numberValue28 = 691.00219726562
numberValue29 = 580.23297119141
numberValue30 = 130.44616699219
numberValue31 = 155.0
numberValue27 = numberValue27(numberValue28, numberValue29, numberValue30, numberValue31)
numberValue28 = vector4
numberValue29 = 689.85498046875
numberValue30 = 580.76043701172
numberValue31 = 130.44616699219
numberValue32 = 155.0
numberValue28 = numberValue28(numberValue29, numberValue30, numberValue31, numberValue32)
numberValue29 = vector4
numberValue30 = 689.47253417969
numberValue31 = 579.66595458984
numberValue32 = 130.44616699219
numberValue33 = 155.0
numberValue29 = numberValue29(numberValue30, numberValue31, numberValue32, numberValue33)
numberValue30 = vector4
numberValue31 = 700.0087890625
numberValue32 = 579.38903808594
numberValue33 = 130.44616699219
numberValue34 = 155.0
numberValue30 = numberValue30(numberValue31, numberValue32, numberValue33, numberValue34)
numberValue31 = vector4
numberValue32 = 698.78240966797
numberValue33 = 579.78460693359
numberValue34 = 130.44616699219
numberValue35 = 155.0
numberValue31 = numberValue31(numberValue32, numberValue33, numberValue34, numberValue35)
numberValue32 = vector4
numberValue33 = 697.912109375
numberValue34 = 580.1142578125
numberValue35 = 130.44616699219
numberValue36 = 155.0
numberValue32 = numberValue32(numberValue33, numberValue34, numberValue35, numberValue36)
numberValue33 = vector4
numberValue34 = 696.97583007812
numberValue35 = 580.50988769531
numberValue36 = 130.44616699219
numberValue37 = 155.0
numberValue33 = numberValue33(numberValue34, numberValue35, numberValue36, numberValue37)
numberValue34 = vector4
numberValue35 = 695.90771484375
numberValue36 = 580.81317138672
numberValue37 = 130.44616699219
numberValue38 = 155.0
numberValue34 = numberValue34(numberValue35, numberValue36, numberValue37, numberValue38)
numberValue35 = vector4
numberValue36 = 694.72088623047
numberValue37 = 581.19561767578
numberValue38 = 130.44616699219
numberValue39 = 155.0
numberValue35 = numberValue35(numberValue36, numberValue37, numberValue38, numberValue39)
numberValue36 = vector4
numberValue37 = 693.59997558594
numberValue38 = 581.61755371094
numberValue39 = 130.44616699219
numberValue40 = 155.0
numberValue36 = numberValue36(numberValue37, numberValue38, numberValue39, numberValue40)
numberValue37 = vector4
numberValue38 = 692.22857666016
numberValue39 = 582.22418212891
numberValue40 = 130.44616699219
numberValue41 = 155.0
numberValue37 = numberValue37(numberValue38, numberValue39, numberValue40, numberValue41)
numberValue38 = vector4
numberValue39 = 690.92309570312
numberValue40 = 582.68572998047
numberValue41 = 130.44616699219
numberValue42 = 155.0
numberValue38 = numberValue38(numberValue39, numberValue40, numberValue41, numberValue42)
numberValue39 = vector4
numberValue40 = 696.83074951172
numberValue41 = 582.0
numberValue42 = 130.44616699219
numberValue43 = 155.0
numberValue39 = numberValue39(numberValue40, numberValue41, numberValue42, numberValue43)
numberValue40 = vector4
numberValue41 = 695.76263427734
numberValue42 = 582.38244628906
numberValue43 = 130.44616699219
numberValue44 = 155.0
numberValue40 = numberValue40(numberValue41, numberValue42, numberValue43, numberValue44)
numberValue41 = vector4
numberValue42 = 694.70770263672
numberValue43 = 582.54064941406
numberValue44 = 130.44616699219
numberValue45 = 155.0
numberValue41 = numberValue41(numberValue42, numberValue43, numberValue44, numberValue45)
numberValue42 = vector4
numberValue43 = 693.30987548828
numberValue44 = 583.01538085938
numberValue45 = 130.44616699219
numberValue46 = 155.0
numberValue42 = numberValue42(numberValue43, numberValue44, numberValue45, numberValue46)
numberValue43 = vector4
numberValue44 = 692.18902587891
numberValue45 = 583.58239746094
numberValue46 = 130.44616699219
numberValue47 = 155.0
numberValue43 = numberValue43(numberValue44, numberValue45, numberValue46, numberValue47)
numberValue44 = vector4
numberValue45 = 690.96264648438
numberValue46 = 583.9912109375
numberValue47 = 130.44616699219
numberValue49 = 155.0
numberValue44 = numberValue44(numberValue45, numberValue46, numberValue47, numberValue49)
numberValue45 = vector4
numberValue46 = 691.41101074219
numberValue47 = 581.78900146484
numberValue49 = 130.44616699219
numberValue50 = 155.0
numberValue45 = numberValue45(numberValue46, numberValue47, numberValue49, numberValue50)
numberValue46 = vector4
numberValue47 = 699.876953125
numberValue49 = 581.67034912109
numberValue50 = 130.44616699219
numberValue51 = 155.0
numberValue46 = numberValue46(numberValue47, numberValue49, numberValue50, numberValue51)
numberValue47 = vector4
numberValue49 = 698.91430664062
numberValue50 = 582.11865234375
numberValue51 = 130.44616699219
numberValue52 = 155.0
numberValue47 = numberValue47(numberValue49, numberValue50, numberValue51, numberValue52)
numberValue49 = vector4
numberValue50 = 697.62200927734
numberValue51 = 582.65936279297
numberValue52 = 130.44616699219
numberValue53 = 155.0
numberValue49 = numberValue49(numberValue50, numberValue51, numberValue52, numberValue53)
numberValue50 = vector4
numberValue51 = 696.52746582031
numberValue52 = 583.06811523438
numberValue53 = 130.44616699219
numberValue54 = 155.0
numberValue50 = numberValue50(numberValue51, numberValue52, numberValue53, numberValue54)
vector4Builder[1] = vector4Builder2
vector4Builder[2] = vector4Builder3
vector4Builder[3] = vector4Builder4
vector4Builder[4] = numberValue3
vector4Builder[5] = numberValue4
vector4Builder[6] = numberValue5
vector4Builder[7] = numberValue6
vector4Builder[8] = numberValue7
vector4Builder[9] = numberValue8
vector4Builder[10] = numberValue9
vector4Builder[11] = numberValue10
vector4Builder[12] = numberValue11
vector4Builder[13] = numberValue12
vector4Builder[14] = numberValue13
vector4Builder[15] = numberValue14
vector4Builder[16] = numberValue15
vector4Builder[17] = numberValue16
vector4Builder[18] = numberValue17
vector4Builder[19] = numberValue18
vector4Builder[20] = numberValue19
vector4Builder[21] = numberValue20
vector4Builder[22] = numberValue21
vector4Builder[23] = numberValue22
vector4Builder[24] = numberValue23
vector4Builder[25] = numberValue24
vector4Builder[26] = numberValue25
vector4Builder[27] = numberValue26
vector4Builder[28] = numberValue27
vector4Builder[29] = numberValue28
vector4Builder[30] = numberValue29
vector4Builder[31] = numberValue30
vector4Builder[32] = numberValue31
vector4Builder[33] = numberValue32
vector4Builder[34] = numberValue33
vector4Builder[35] = numberValue34
vector4Builder[36] = numberValue35
vector4Builder[37] = numberValue36
vector4Builder[38] = numberValue37
vector4Builder[39] = numberValue38
vector4Builder[40] = numberValue39
vector4Builder[41] = numberValue40
vector4Builder[42] = numberValue41
vector4Builder[43] = numberValue42
vector4Builder[44] = numberValue43
vector4Builder[45] = numberValue44
vector4Builder[46] = numberValue45
vector4Builder[47] = numberValue46
vector4Builder[48] = numberValue47
vector4Builder[49] = numberValue49
vector4Builder[50] = numberValue50
vector4Builder2 = vector4
vector4Builder3 = 695.51208496094
vector4Builder4 = 583.34503173828
numberValue3 = 130.44616699219
numberValue4 = 155.0
vector4Builder2 = vector4Builder2(vector4Builder3, vector4Builder4, numberValue3, numberValue4)
vector4Builder3 = vector4
vector4Builder4 = 694.28570556641
numberValue3 = 583.68792724609
numberValue4 = 130.44616699219
numberValue5 = 155.0
vector4Builder3 = vector4Builder3(vector4Builder4, numberValue3, numberValue4, numberValue5)
vector4Builder4 = vector4
numberValue3 = 693.11206054688
numberValue4 = 584.0966796875
numberValue5 = 130.44616699219
numberValue6 = 155.0
vector4Builder4 = vector4Builder4(numberValue3, numberValue4, numberValue5, numberValue6)
numberValue3 = vector4
numberValue4 = 691.9384765625
numberValue5 = 584.59777832031
numberValue6 = 130.44616699219
numberValue7 = 155.0
numberValue3 = numberValue3(numberValue4, numberValue5, numberValue6, numberValue7)
numberValue4 = vector4
numberValue5 = 699.83734130859
numberValue6 = 582.71209716797
numberValue7 = 130.44616699219
numberValue8 = 155.0
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7, numberValue8)
numberValue5 = vector4
numberValue6 = 698.58459472656
numberValue7 = 583.22637939453
numberValue8 = 130.44616699219
numberValue9 = 155.0
numberValue5 = numberValue5(numberValue6, numberValue7, numberValue8, numberValue9)
numberValue6 = vector4
numberValue7 = 697.26593017578
numberValue8 = 583.71429443359
numberValue9 = 130.44616699219
numberValue10 = 155.0
numberValue6 = numberValue6(numberValue7, numberValue8, numberValue9, numberValue10)
numberValue7 = vector4
numberValue8 = 696.22418212891
numberValue9 = 584.03076171875
numberValue10 = 130.49670410156
numberValue11 = 155.0
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue10, numberValue11)
numberValue8 = vector4
numberValue9 = 695.07690429688
numberValue10 = 584.41320800781
numberValue11 = 130.46301269531
numberValue12 = 155.0
numberValue8 = numberValue8(numberValue9, numberValue10, numberValue11, numberValue12)
numberValue9 = vector4
numberValue10 = 693.85052490234
numberValue11 = 584.66375732422
numberValue12 = 130.44616699219
numberValue13 = 155.0
numberValue9 = numberValue9(numberValue10, numberValue11, numberValue12, numberValue13)
numberValue10 = vector4
numberValue11 = 692.78240966797
numberValue12 = 585.11206054688
numberValue13 = 130.44616699219
numberValue14 = 155.0
numberValue10 = numberValue10(numberValue11, numberValue12, numberValue13, numberValue14)
numberValue11 = vector4
numberValue12 = 691.51647949219
numberValue13 = 585.61315917969
numberValue14 = 130.44616699219
numberValue15 = 155.0
numberValue11 = numberValue11(numberValue12, numberValue13, numberValue14, numberValue15)
numberValue12 = vector4
numberValue13 = 699.99560546875
numberValue14 = 578.16265869141
numberValue15 = 130.44616699219
numberValue16 = 155.0
numberValue12 = numberValue12(numberValue13, numberValue14, numberValue15, numberValue16)
numberValue13 = vector4
numberValue14 = 700.15386962891
numberValue15 = 576.75164794922
numberValue16 = 130.44616699219
numberValue17 = 155.0
numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue38, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue49, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54 = numberValue13(numberValue14, numberValue15, numberValue16, numberValue17)
vector4Builder[51] = vector4Builder2
vector4Builder[52] = vector4Builder3
vector4Builder[53] = vector4Builder4
vector4Builder[54] = numberValue3
vector4Builder[55] = numberValue4
vector4Builder[56] = numberValue5
vector4Builder[57] = numberValue6
vector4Builder[58] = numberValue7
vector4Builder[59] = numberValue8
vector4Builder[60] = numberValue9
vector4Builder[61] = numberValue10
vector4Builder[62] = numberValue11
vector4Builder[63] = numberValue12
vector4Builder[64] = numberValue13
vector4Builder[65] = numberValue14
vector4Builder[66] = numberValue15
vector4Builder[67] = numberValue16
vector4Builder[68] = numberValue17
vector4Builder[69] = numberValue18
vector4Builder[70] = numberValue19
vector4Builder[71] = numberValue20
vector4Builder[72] = numberValue21
vector4Builder[73] = numberValue22
vector4Builder[74] = numberValue23
vector4Builder[75] = numberValue24
vector4Builder[76] = numberValue25
vector4Builder[77] = numberValue26
vector4Builder[78] = numberValue27
vector4Builder[79] = numberValue28
vector4Builder[80] = numberValue29
vector4Builder[81] = numberValue30
vector4Builder[82] = numberValue31
vector4Builder[83] = numberValue32
vector4Builder[84] = numberValue33
vector4Builder[85] = numberValue34
vector4Builder[86] = numberValue35
vector4Builder[87] = numberValue36
vector4Builder[88] = numberValue37
vector4Builder[89] = numberValue38
vector4Builder[90] = numberValue39
vector4Builder[91] = numberValue40
vector4Builder[92] = numberValue41
vector4Builder[93] = numberValue42
vector4Builder[94] = numberValue43
vector4Builder[95] = numberValue44
vector4Builder[96] = numberValue45
vector4Builder[97] = numberValue46
vector4Builder[98] = numberValue47
vector4Builder[99] = numberValue49
vector4Builder[100] = numberValue50
vector4Builder[101] = numberValue51
vector4Builder[102] = numberValue52
vector4Builder[103] = numberValue53
vector4Builder[104] = numberValue54
vector4Builder2 = false
vector4Builder3 = _ENV
vector4Builder4 = "CMG"
vector4Builder3 = vector4Builder3[vector4Builder4]
vector4Builder4 = "isPodiumDrawing"
function numberValue3()
  local arg1, arg2
  arg1 = vector4Builder2
  return arg1
end
vector4Builder3[vector4Builder4] = numberValue3
vector4Builder3 = false
vector4Builder4 = _ENV
numberValue3 = "CMG"
vector4Builder4 = vector4Builder4[numberValue3]
numberValue3 = "callCancelPodium"
function numberValue4()
  local arg1, arg2
  arg1 = true
  vector4Builder3 = arg1
end
vector4Builder4[numberValue3] = numberValue4
vector4Builder4 = _ENV
numberValue3 = "CMG"
vector4Builder4 = vector4Builder4[numberValue3]
numberValue3 = "podiumLeaderboard"
function numberValue4(arg1, arg2)
  local arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7, flag8
  arg3 = SetEntityCoords
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = 686.37365722656
  arg6 = 576.83074951172
  flag10 = 120.44616699219
  iterator2 = false
  workValue8 = false
  flag14 = false
  iterator = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg3(arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator)
  arg3 = true
  vector4Builder2 = arg3
  arg3 = CMG
  arg3 = arg3.setTime
  arg4 = 0
  arg5 = 0
  arg6 = 0
  arg3(arg4, arg5, arg6)
  arg3 = RequestIpl
  arg4 = "stadium"
  arg3(arg4)
  while true do
    arg3 = IsIplActive
    arg4 = "stadium"
    arg3 = arg3(arg4)
    if arg3 then
      break
    end
    arg3 = print
    arg4 = "Loading stadium IPL"
    arg3(arg4)
    arg3 = Wait
    arg4 = 0
    arg3(arg4)
  end
  arg3 = CMG
  arg3 = arg3.hideAllDisplays
  arg4 = "podiumleaderboard"
  arg3(arg4)
  arg3 = CMG
  arg3 = arg3.isDevMode
  arg3 = arg3()
  if not arg3 then
    arg3 = SendNUIMessage
    arg4 = {}
    arg4.transactionType = "celebration_music"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg3(arg4)
  end
  arg3 = {}
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = FreezeEntityPosition
  arg6 = arg4
  flag10 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg5(arg6, flag10)
  arg5 = ClearPedBloodDamage
  arg6 = arg4
  arg5(arg6)
  arg5 = pairs
  arg6 = arg1
  arg5, arg6, flag10, iterator2 = arg5(arg6)
  for workValue8, flag14 in arg5, arg6, flag10, iterator2 do
    iterator = flag14.source
    textValue2 = GetPlayerServerId
    numberValue2 = PlayerId
    numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7, flag8 = numberValue2()
    -- Beginner: result below is serverId.
    textValue2 = textValue2(numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7, flag8)
    if iterator == textValue2 then
      iterator = dataTable3
      iterator = iterator[workValue8]
      if not iterator then
        textValue2 = vector4
        numberValue2 = 686.37365722656
        tableHelper = 576.83074951172
        flag2 = 130.44616699219
        flag3 = 158.74015808105
        textValue2 = textValue2(numberValue2, tableHelper, flag2, flag3)
        iterator = textValue2
      end
      textValue2 = SetEntityCoords
      numberValue2 = arg4
      tableHelper = iterator.x
      flag2 = iterator.y
      flag3 = iterator.z
      flag3 = flag3 - 1
      flag5 = false
      flag6 = false
      flag7 = false
      flag8 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      textValue2(numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7, flag8)
      textValue2 = SetEntityHeading
      numberValue2 = arg4
      tableHelper = iterator.w
      -- Beginner: Change the direction an entity is facing.
      textValue2(numberValue2, tableHelper)
      textValue2 = CreateThread
      -- Beginner: this function is the body of a background FiveM thread.
      function numberValue2()
        local arg12, arg22, arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3
        arg12 = "anim@arena@celeb@flat@solo@no_props@"
        arg22 = "flip_a_player_a"
        arg32 = CMG
        arg32 = arg32.loadAnimDict
        workValue4 = arg12
        -- Beginner: Load a GTA animation dictionary before using it.
        arg32(workValue4)
        while true do
          arg32 = vector4Builder2
          if not arg32 then
            break
          end
          arg32 = SetFocusPosAndVel
          workValue4 = 682.94506835938
          workValue5 = 572.95385742188
          dataTable6 = 131.08642578125
          tableHelper2 = 0.0
          workValue6 = 0.0
          stringHelper = 0.0
          arg32(workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper)
          arg32 = FreezeEntityPosition
          workValue4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workValue4 = workValue4()
          workValue5 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          arg32(workValue4, workValue5)
          arg32 = IsEntityPlayingAnim
          workValue4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workValue4 = workValue4()
          workValue5 = arg12
          dataTable6 = arg22
          tableHelper2 = 3
          arg32 = arg32(workValue4, workValue5, dataTable6, tableHelper2)
          if not arg32 then
            arg32 = TaskPlayAnim
            workValue4 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            workValue4 = workValue4()
            workValue5 = arg12
            dataTable6 = arg22
            tableHelper2 = 8.0
            workValue6 = 8.0
            stringHelper = -1
            dataTable8 = 1
            flag = 1.0
            numberValue = false
            workValue2 = false
            workValue3 = false
            -- Beginner: Play an animation on a ped.
            arg32(workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3)
          end
          arg32 = Wait
          workValue4 = 0
          arg32(workValue4)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      textValue2(numberValue2)
    end
  end
  arg5 = pairs
  arg6 = arg2
  arg5, arg6, flag10, iterator2 = arg5(arg6)
  for workValue8, flag14 in arg5, arg6, flag10, iterator2 do
    iterator = flag14.source
    textValue2 = GetPlayerServerId
    numberValue2 = PlayerId
    numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7, flag8 = numberValue2()
    -- Beginner: result below is serverId.
    textValue2 = textValue2(numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7, flag8)
    if iterator == textValue2 then
      iterator = vector4Builder
      iterator = iterator[workValue8]
      if not iterator then
        textValue2 = vector4
        numberValue2 = 700.52307128906
        tableHelper = 575.68353271484
        flag2 = 130.44616699219
        flag3 = 158.74015808105
        textValue2 = textValue2(numberValue2, tableHelper, flag2, flag3)
        iterator = textValue2
      end
      textValue2 = SetEntityCoords
      numberValue2 = arg4
      tableHelper = iterator.x
      flag2 = iterator.y
      flag3 = iterator.z
      flag3 = flag3 - 1
      flag5 = false
      flag6 = false
      flag7 = false
      flag8 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      textValue2(numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7, flag8)
      textValue2 = SetEntityHeading
      numberValue2 = arg4
      tableHelper = iterator.w
      -- Beginner: Change the direction an entity is facing.
      textValue2(numberValue2, tableHelper)
      textValue2 = CreateThread
      -- Beginner: this function is the body of a background FiveM thread.
      function numberValue2()
        local arg12, arg22, arg32, workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3
        arg12 = "anim_casino_a@amb@casino@games@arcadecabinet@femaleleft"
        arg22 = "lose_big"
        arg32 = CMG
        arg32 = arg32.loadAnimDict
        workValue4 = arg12
        -- Beginner: Load a GTA animation dictionary before using it.
        arg32(workValue4)
        while true do
          arg32 = vector4Builder2
          if not arg32 then
            break
          end
          arg32 = SetFocusPosAndVel
          workValue4 = 682.94506835938
          workValue5 = 572.95385742188
          dataTable6 = 131.08642578125
          tableHelper2 = 0.0
          workValue6 = 0.0
          stringHelper = 0.0
          arg32(workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper)
          arg32 = FreezeEntityPosition
          workValue4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workValue4 = workValue4()
          workValue5 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          arg32(workValue4, workValue5)
          arg32 = IsEntityPlayingAnim
          workValue4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workValue4 = workValue4()
          workValue5 = arg12
          dataTable6 = arg22
          tableHelper2 = 3
          arg32 = arg32(workValue4, workValue5, dataTable6, tableHelper2)
          if not arg32 then
            arg32 = TaskPlayAnim
            workValue4 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            workValue4 = workValue4()
            workValue5 = arg12
            dataTable6 = arg22
            tableHelper2 = 8.0
            workValue6 = 8.0
            stringHelper = -1
            dataTable8 = 1
            flag = 1.0
            numberValue = false
            workValue2 = false
            workValue3 = false
            -- Beginner: Play an animation on a ped.
            arg32(workValue4, workValue5, dataTable6, tableHelper2, workValue6, stringHelper, dataTable8, flag, numberValue, workValue2, workValue3)
          end
          arg32 = Wait
          workValue4 = 0
          arg32(workValue4)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      textValue2(numberValue2)
    end
  end
  arg5 = vector3
  arg6 = 683.83
  flag10 = 570.57
  iterator2 = 130.46
  arg5 = arg5(arg6, flag10, iterator2)
  arg6 = CreateCameraWithParams
  flag10 = "DEFAULT_SCRIPTED_CAMERA"
  iterator2 = 681.29
  workValue8 = 563.62
  flag14 = 141.05
  iterator = 0.0
  textValue2 = 0.0
  numberValue2 = 0.0
  tableHelper = 65.0
  flag2 = false
  flag3 = 2
  arg6 = arg6(flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3)
  flag10 = PointCamAtCoord
  iterator2 = arg6
  workValue8 = arg5.x
  flag14 = arg5.y
  iterator = arg5.z
  iterator = iterator + 10
  flag10(iterator2, workValue8, flag14, iterator)
  flag10 = SetCamActive
  iterator2 = arg6
  workValue8 = true
  flag10(iterator2, workValue8)
  flag10 = RenderScriptCams
  iterator2 = true
  workValue8 = true
  flag14 = 0
  iterator = true
  textValue2 = false
  flag10(iterator2, workValue8, flag14, iterator, textValue2)
  flag10 = CreateCameraWithParams
  iterator2 = "DEFAULT_SCRIPTED_CAMERA"
  workValue8 = 681.29
  flag14 = 563.62
  iterator = 131.05
  textValue2 = 0.0
  numberValue2 = 0.0
  tableHelper = 0.0
  flag2 = 65.0
  flag3 = false
  flag5 = 2
  flag10 = flag10(iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3, flag5)
  iterator2 = PointCamAtCoord
  workValue8 = flag10
  flag14 = arg5.x
  iterator = arg5.y
  textValue2 = arg5.z
  iterator2(workValue8, flag14, iterator, textValue2)
  iterator2 = SetCamActiveWithInterp
  workValue8 = flag10
  flag14 = arg6
  iterator = 10000
  textValue2 = 5
  numberValue2 = 5
  iterator2(workValue8, flag14, iterator, textValue2, numberValue2)
  iterator2 = IsScreenFadedOut
  iterator2 = iterator2()
  if iterator2 then
    iterator2 = DoScreenFadeIn
    workValue8 = 800
    iterator2(workValue8)
  end
  iterator2 = textValue7
  workValue8 = vector3
  flag14 = 0
  iterator = 0
  textValue2 = 5
  workValue8 = workValue8(flag14, iterator, textValue2)
  workValue8 = arg5 + workValue8
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  iterator2(workValue8)
  iterator2 = textValue7
  workValue8 = vector3
  flag14 = 681.34
  iterator = 572.84
  textValue2 = 130.46
  workValue8 = workValue8(flag14, iterator, textValue2)
  flag14 = vector3
  iterator = 0
  textValue2 = 0
  numberValue2 = 5
  flag14 = flag14(iterator, textValue2, numberValue2)
  workValue8 = workValue8 + flag14
  iterator2(workValue8)
  iterator2 = textValue7
  workValue8 = vector3
  flag14 = 686.76
  iterator = 570.71
  textValue2 = 130.46
  workValue8 = workValue8(flag14, iterator, textValue2)
  flag14 = vector3
  iterator = 0
  textValue2 = 0
  numberValue2 = 5
  flag14 = flag14(iterator, textValue2, numberValue2)
  workValue8 = workValue8 + flag14
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  iterator2(workValue8)
  iterator2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  iterator2 = iterator2()
  while true do
    workValue8 = vector4Builder3
    if workValue8 then
      break
    end
    workValue8 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workValue8 = workValue8()
    workValue8 = workValue8 - iterator2
    flag14 = 10000
    if not (workValue8 < flag14) then
      break
    end
    workValue8 = ThefeedHideThisFrame
    workValue8()
    workValue8 = Wait
    flag14 = 0
    workValue8(flag14)
  end
  workValue8 = vector4Builder3
  if not workValue8 then
    workValue8 = CreateCameraWithParams
    flag14 = "DEFAULT_SCRIPTED_CAMERA"
    iterator = 696.13189697266
    textValue2 = 579.70550537109
    numberValue2 = 130.44616699219
    tableHelper = 0.0
    flag2 = 0.0
    flag3 = 0.0
    flag5 = 65.0
    flag6 = false
    flag7 = 2
    workValue8 = workValue8(flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7)
    flag14 = vector3
    iterator = 695.947265625
    textValue2 = 584.84832763672
    numberValue2 = 130.74951171875
    flag14 = flag14(iterator, textValue2, numberValue2)
    iterator = PointCamAtCoord
    textValue2 = workValue8
    numberValue2 = flag14.x
    tableHelper = flag14.y
    flag2 = flag14.z
    iterator(textValue2, numberValue2, tableHelper, flag2)
    iterator = SetCamActiveWithInterp
    textValue2 = workValue8
    numberValue2 = flag10
    tableHelper = 11000
    flag2 = 5
    flag3 = 5
    iterator(textValue2, numberValue2, tableHelper, flag2, flag3)
  end
  workValue8 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  workValue8 = workValue8()
  iterator2 = workValue8
  while true do
    workValue8 = vector4Builder3
    if workValue8 then
      break
    end
    workValue8 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workValue8 = workValue8()
    workValue8 = workValue8 - iterator2
    flag14 = 4000
    if not (workValue8 < flag14) then
      break
    end
    workValue8 = ThefeedHideThisFrame
    workValue8()
    workValue8 = Wait
    flag14 = 0
    workValue8(flag14)
  end
  workValue8 = vector4Builder3
  if not workValue8 then
    workValue8 = DoScreenFadeOut
    flag14 = 2000
    workValue8(flag14)
  end
  workValue8 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  workValue8 = workValue8()
  iterator2 = workValue8
  while true do
    workValue8 = vector4Builder3
    if workValue8 then
      break
    end
    workValue8 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workValue8 = workValue8()
    workValue8 = workValue8 - iterator2
    flag14 = 3000
    if not (workValue8 < flag14) then
      break
    end
    workValue8 = Wait
    flag14 = 0
    workValue8(flag14)
  end
  workValue8 = pairs
  flag14 = arg3
  workValue8, flag14, iterator, textValue2 = workValue8(flag14)
  for numberValue2, tableHelper in workValue8, flag14, iterator, textValue2 do
    flag2 = tCMG
    flag2 = flag2.removeArea
    flag3 = "3dtext_"
    flag5 = tableHelper
    flag3 = flag3 .. flag5
    flag2(flag3)
  end
  workValue8 = ClearPedTasks
  flag14 = arg4
  workValue8(flag14)
  workValue8 = FreezeEntityPosition
  flag14 = arg4
  iterator = false
  -- Beginner: Freeze or unfreeze an entity in place.
  workValue8(flag14, iterator)
  workValue8 = RenderScriptCams
  flag14 = false
  iterator = false
  textValue2 = 1
  numberValue2 = true
  tableHelper = true
  workValue8(flag14, iterator, textValue2, numberValue2, tableHelper)
  workValue8 = DestroyCam
  flag14 = arg6
  iterator = false
  workValue8(flag14, iterator)
  workValue8 = DestroyCam
  flag14 = flag10
  iterator = false
  workValue8(flag14, iterator)
  workValue8 = DestroyAllCams
  flag14 = true
  workValue8(flag14)
  workValue8 = DoScreenFadeIn
  flag14 = 1000
  workValue8(flag14)
  workValue8 = CMG
  workValue8 = workValue8.setTime
  flag14 = 12
  iterator = 0
  textValue2 = 0
  workValue8(flag14, iterator, textValue2)
  workValue8 = ClearTimecycleModifier
  workValue8()
  workValue8 = false
  vector4Builder2 = workValue8
  workValue8 = CMG
  workValue8 = workValue8.showAllDisplays
  flag14 = "podiumleaderboard"
  workValue8(flag14)
  workValue8 = false
  vector4Builder3 = workValue8
  workValue8 = ClearFocus
  workValue8()
  workValue8 = RemoveIpl
  flag14 = "stadium"
  workValue8(flag14)
end
vector4Builder4[numberValue3] = numberValue4
vector4Builder4 = RegisterNetEvent
numberValue3 = "e8f7c0a2e4"
-- Beginner: this function handles network event "e8f7c0a2e4".
function numberValue4(arg1, arg2)
  local arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7, flag8
  arg3 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.
  function arg4()
    local arg12, arg22
    arg12 = CMG
    arg12 = arg12.activateSlowMo
    arg12()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg3(arg4)
  arg3 = {}
  arg4 = Scaleform
  arg5 = "MP_CELEBRATION"
  arg4 = arg4(arg5)
  arg3[1] = arg4
  arg4 = Scaleform
  arg5 = "MP_CELEBRATION_BG"
  arg4 = arg4(arg5)
  arg3[2] = arg4
  arg4 = Scaleform
  arg5 = "MP_CELEBRATION_FG"
  arg4 = arg4(arg5)
  arg3[3] = arg4
  arg4 = ipairs
  arg5 = arg3
  arg4, arg5, arg6, flag10 = arg4(arg5)
  for iterator2, workValue8 in arg4, arg5, arg6, flag10 do
    flag14 = workValue8.RunFunction
    iterator = "CLEANUP"
    textValue2 = {}
    numberValue2 = "WINNER"
    textValue2[1] = numberValue2
    flag14(iterator, textValue2)
    flag14 = workValue8.RunFunction
    iterator = "CREATE_STAT_WALL"
    textValue2 = {}
    numberValue2 = "WINNER"
    tableHelper = "HUD_COLOUR_BLACK"
    flag2 = "70.0"
    textValue2[1] = numberValue2
    textValue2[2] = tableHelper
    textValue2[3] = flag2
    flag14(iterator, textValue2)
    if arg2 then
      flag14 = workValue8.RunFunction
      iterator = "ADD_POSITION_TO_WALL"
      textValue2 = {}
      numberValue2 = "WINNER"
      tableHelper = arg2
      flag2 = "1ST"
      flag3 = false
      flag5 = false
      textValue2[1] = numberValue2
      textValue2[2] = tableHelper
      textValue2[3] = flag2
      textValue2[4] = flag3
      textValue2[5] = flag5
      flag14(iterator, textValue2)
    end
    flag14 = workValue8.RunFunction
    iterator = "ADD_WINNER_TO_WALL"
    textValue2 = {}
    numberValue2 = "WINNER"
    tableHelper = "CELEB_WINNER"
    flag2 = arg1
    flag3 = ""
    flag5 = 0
    flag6 = false
    flag7 = ""
    flag8 = false
    textValue2[1] = numberValue2
    textValue2[2] = tableHelper
    textValue2[3] = flag2
    textValue2[4] = flag3
    textValue2[5] = flag5
    textValue2[6] = flag6
    textValue2[7] = flag7
    textValue2[8] = flag8
    flag14(iterator, textValue2)
    flag14 = workValue8.RunFunction
    iterator = "ADD_BACKGROUND_TO_WALL"
    textValue2 = {}
    numberValue2 = "WINNER"
    tableHelper = 75
    flag2 = 0
    textValue2[1] = numberValue2
    textValue2[2] = tableHelper
    textValue2[3] = flag2
    flag14(iterator, textValue2)
    flag14 = workValue8.RunFunction
    iterator = "SHOW_STAT_WALL"
    textValue2 = {}
    numberValue2 = "WINNER"
    textValue2[1] = numberValue2
    flag14(iterator, textValue2)
  end
  arg4 = true
  arg5 = SetTimeout
  arg6 = 10000
  function flag10()
    local arg12, arg22
    arg12 = false
    arg4 = arg12
  end
  arg5(arg6, flag10)
  arg5 = CMG
  arg5 = arg5.hideAllDisplays
  arg6 = "celebrationscreen"
  arg5(arg6)
  while arg4 do
    arg5 = DrawScaleformMovieFullscreenMasked
    arg6 = arg3[2]
    arg6 = arg6.Handle
    flag10 = arg3[3]
    flag10 = flag10.Handle
    iterator2 = 255
    workValue8 = 255
    flag14 = 255
    iterator = 255
    arg5(arg6, flag10, iterator2, workValue8, flag14, iterator)
    arg5 = arg3[1]
    arg5 = arg5.Render2D
    arg5()
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = 0
    arg5(arg6)
  end
  arg5 = CMG
  arg5 = arg5.showAllDisplays
  arg6 = "celebrationscreen"
  arg5(arg6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e8f7c0a2e4".
vector4Builder4(numberValue3, numberValue4)
vector4Builder4 = false
numberValue3 = CMG
numberValue4 = "activateSlowMo"
function numberValue5()
  local arg1, arg2, arg3
  arg1 = true
  vector4Builder4 = arg1
  arg1 = SetSpecialAbility
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  arg3 = 2
  arg1(arg2, arg3)
  arg1 = SpecialAbilityActivate
  arg2 = PlayerId
  arg2, arg3 = arg2()
  arg1(arg2, arg3)
  arg1 = Wait
  arg2 = 1000
  arg1(arg2)
  arg1 = false
  vector4Builder4 = arg1
  arg1 = SpecialAbilityDeplete
  arg2 = PlayerId
  arg2, arg3 = arg2()
  arg1(arg2, arg3)
  arg1 = Citizen
  arg1 = arg1.InvokeNative
  arg2 = -4466441394195262849
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  arg1(arg2, arg3)
end
numberValue3[numberValue4] = numberValue5
numberValue3 = CMG
numberValue4 = "isInSlowMo"
function numberValue5()
  local arg1, arg2
  arg1 = vector4Builder4
  return arg1
end
numberValue3[numberValue4] = numberValue5
function numberValue3(arg1)
  local arg2, arg3
  arg2 = arg1 % 6
  if 0 == arg2 then
    arg3 = 3
    return arg3
  elseif 1 == arg2 then
    arg3 = 5
    return arg3
  elseif 2 == arg2 then
    arg3 = 17
    return arg3
  elseif 3 == arg2 then
    arg3 = 11
    return arg3
  elseif 4 == arg2 then
    arg3 = 14
    return arg3
  elseif 5 == arg2 then
    arg3 = 8
    return arg3
  elseif 6 == arg2 then
    arg3 = 1
    return arg3
  end
end
numberValue4 = nil
numberValue5 = nil
numberValue6 = false
numberValue7 = false
numberValue8 = CMG
numberValue9 = "enableMinigamePlayerBlips"
function numberValue10(arg1, arg2, arg3, arg4)
  local arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2
  numberValue4 = arg2
  arg5 = arg3 or arg5
  if not arg3 then
    function arg5()
      local arg12, arg22
      arg12 = true
      return arg12
    end
  end
  numberValue5 = arg5
  numberValue6 = arg1
  if not arg1 then
    arg5 = ipairs
    arg6 = currentEvent
    arg6 = arg6.players
    arg5, arg6, flag10, iterator2 = arg5(arg6)
    for workValue8, flag14 in arg5, arg6, flag10, iterator2 do
      iterator = CMG
      iterator = iterator.removeBlipsForPlayer
      textValue2 = flag14
      iterator(textValue2)
    end
  end
  arg5 = DisplayPlayerNameTagsOnBlips
  arg6 = arg1
  arg5(arg6)
  arg5 = arg4 or arg5
  if not arg4 then
    arg5 = false
  end
  numberValue7 = arg5
end
numberValue8[numberValue9] = numberValue10
numberValue8 = {}
numberValue9 = _ENV
numberValue10 = "CMG"
numberValue9 = numberValue9[numberValue10]
numberValue10 = "forceCleanupPlayerBlips"
function numberValue11()
  local arg1, arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper
  arg1 = pairs
  arg2 = numberValue8
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    flag10 = pairs
    iterator2 = arg6
    flag10, iterator2, workValue8, flag14 = flag10(iterator2)
    for iterator, textValue2 in flag10, iterator2, workValue8, flag14 do
      numberValue2 = DoesBlipExist
      tableHelper = textValue2
      numberValue2 = numberValue2(tableHelper)
      if numberValue2 then
        numberValue2 = RemoveBlip
        tableHelper = textValue2
        numberValue2(tableHelper)
      end
    end
  end
end
numberValue9[numberValue10] = numberValue11
numberValue9 = _ENV
numberValue10 = "CMG"
numberValue9 = numberValue9[numberValue10]
numberValue10 = "removeBlipsForPlayer"
function numberValue11(arg1)
  local arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14
  arg2 = arg1.blip
  if arg2 then
    arg2 = RemoveBlip
    arg3 = arg1.blip
    arg2(arg3)
  end
  arg3 = arg1.source
  arg2 = numberValue8
  arg2 = arg2[arg3]
  if arg2 then
    arg3 = pairs
    arg4 = arg2
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for flag10, iterator2 in arg3, arg4, arg5, arg6 do
      workValue8 = RemoveBlip
      flag14 = iterator2
      workValue8(flag14)
    end
  end
  arg3 = GetPlayerFromServerId
  arg4 = arg1.source
  -- Beginner: result below is playerIndex.
  arg3 = arg3(arg4)
  if -1 == arg3 then
    return
  end
  arg4 = GetPlayerPed
  arg5 = arg3
  -- Beginner: result below is playerPed.
  arg4 = arg4(arg5)
  if 0 == arg4 then
    return
  end
  arg5 = GetBlipFromEntity
  arg6 = arg4
  arg5 = arg5(arg6)
  arg6 = DoesBlipExist
  flag10 = arg5
  arg6 = arg6(flag10)
  if arg6 then
    arg6 = RemoveBlip
    flag10 = arg5
    arg6(flag10)
  end
end
numberValue9[numberValue10] = numberValue11
numberValue9 = _ENV
numberValue10 = "CreateThread"
numberValue9 = numberValue9[numberValue10]
function numberValue10()
  local arg1, arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2
  while true do
    arg1 = numberValue6
    if arg1 then
      arg1 = GetActivePlayers
      arg1 = arg1()
      arg2 = ipairs
      arg3 = currentEvent
      arg3 = arg3.players
      arg2, arg3, arg4, arg5 = arg2(arg3)
      for arg6, flag10 in arg2, arg3, arg4, arg5 do
        iterator2 = GetPlayerFromServerId
        workValue8 = flag10.source
        -- Beginner: result below is playerIndex.
        iterator2 = iterator2(workValue8)
        if -1 ~= iterator2 then
          workValue8 = PlayerId
          -- Beginner: result below is localPlayerIndex.
          workValue8 = workValue8()
          if iterator2 ~= workValue8 then
            workValue8 = table
            workValue8 = workValue8.has
            flag14 = arg1
            iterator = iterator2
            workValue8 = workValue8(flag14, iterator)
            if workValue8 then
              workValue8 = GetPlayerPed
              flag14 = iterator2
              -- Beginner: result below is playerPed.
              workValue8 = workValue8(flag14)
              flag14 = GetBlipFromEntity
              iterator = workValue8
              flag14 = flag14(iterator)
              iterator = IsEntityVisible
              textValue2 = workValue8
              iterator = iterator(textValue2)
              if iterator then
                iterator = flag10.active
                if iterator then
                  iterator = numberValue5
                  textValue2 = flag10.source
                  iterator = iterator(textValue2)
                  if iterator then
                    iterator = flag10.blip
                    if iterator then
                      iterator = flag10.blip
                      if flag14 == iterator then
                        goto flow_label_131
                      end
                    end
                    iterator = flag10.blip
                    if iterator then
                      iterator = RemoveBlip
                      textValue2 = flag10.blip
                      iterator(textValue2)
                    end
                    iterator = DoesBlipExist
                    textValue2 = flag14
                    iterator = iterator(textValue2)
                    if iterator then
                      iterator = RemoveBlip
                      textValue2 = flag14
                      iterator(textValue2)
                    end
                    iterator = AddBlipForEntity
                    textValue2 = workValue8
                    -- Beginner: result below is blipHandle.
                    iterator = iterator(textValue2)
                    numberValue2 = flag10.source
                    textValue2 = numberValue8
                    textValue2 = textValue2[numberValue2]
                    if not textValue2 then
                      numberValue2 = flag10.source
                      textValue2 = numberValue8
                      tableHelper = {}
                      textValue2[numberValue2] = tableHelper
                    end
                    textValue2 = table
                    textValue2 = textValue2.insert
                    tableHelper = flag10.source
                    numberValue2 = numberValue8
                    numberValue2 = numberValue2[tableHelper]
                    tableHelper = iterator
                    textValue2(numberValue2, tableHelper)
                    textValue2 = SetBlipSprite
                    numberValue2 = iterator
                    tableHelper = 1
                    textValue2(numberValue2, tableHelper)
                    textValue2 = SetBlipCategory
                    numberValue2 = iterator
                    tableHelper = 7
                    textValue2(numberValue2, tableHelper)
                    textValue2 = numberValue4
                    if textValue2 then
                      textValue2 = SetBlipColour
                      numberValue2 = iterator
                      tableHelper = numberValue4
                      flag2 = flag10.source
                      tableHelper, flag2 = tableHelper(flag2)
                      textValue2(numberValue2, tableHelper, flag2)
                    else
                      textValue2 = SetBlipColour
                      numberValue2 = iterator
                      tableHelper = numberValue3
                      flag2 = flag10.source
                      tableHelper, flag2 = tableHelper(flag2)
                      textValue2(numberValue2, tableHelper, flag2)
                    end
                    textValue2 = numberValue7
                    if not textValue2 then
                      textValue2 = ShowHeadingIndicatorOnBlip
                      numberValue2 = iterator
                      tableHelper = true
                      textValue2(numberValue2, tableHelper)
                    end
                    textValue2 = BeginTextCommandSetBlipName
                    numberValue2 = "STRING"
                    textValue2(numberValue2)
                    textValue2 = AddTextComponentSubstringPlayerName
                    numberValue2 = CMG
                    numberValue2 = numberValue2.getPlayerName
                    tableHelper = iterator2
                    numberValue2, tableHelper, flag2 = numberValue2(tableHelper)
                    textValue2(numberValue2, tableHelper, flag2)
                    textValue2 = EndTextCommandSetBlipName
                    numberValue2 = iterator
                    textValue2(numberValue2)
                    flag10.blip = iterator
                    goto flow_label_193
                    ::flow_label_131::
                    iterator = IsEntityDead
                    textValue2 = workValue8
                    iterator = iterator(textValue2)
                    if iterator then
                      iterator = 274
                      if iterator then
                        goto flow_label_140
                      end
                    end
                    iterator = 1
                    ::flow_label_140::
                    textValue2 = GetBlipSprite
                    numberValue2 = flag10.blip
                    textValue2 = textValue2(numberValue2)
                    if textValue2 ~= iterator then
                      textValue2 = SetBlipSprite
                      numberValue2 = flag10.blip
                      tableHelper = iterator
                      textValue2(numberValue2, tableHelper)
                      textValue2 = numberValue4
                      if textValue2 then
                        textValue2 = SetBlipColour
                        numberValue2 = flag10.blip
                        tableHelper = numberValue4
                        flag2 = flag10.source
                        tableHelper, flag2 = tableHelper(flag2)
                        textValue2(numberValue2, tableHelper, flag2)
                      else
                        textValue2 = SetBlipColour
                        numberValue2 = flag10.blip
                        tableHelper = numberValue3
                        flag2 = flag10.source
                        tableHelper, flag2 = tableHelper(flag2)
                        textValue2(numberValue2, tableHelper, flag2)
                      end
                      textValue2 = BeginTextCommandSetBlipName
                      numberValue2 = "STRING"
                      textValue2(numberValue2)
                      textValue2 = AddTextComponentSubstringPlayerName
                      numberValue2 = CMG
                      numberValue2 = numberValue2.getPlayerName
                      tableHelper = iterator2
                      numberValue2, tableHelper, flag2 = numberValue2(tableHelper)
                      textValue2(numberValue2, tableHelper, flag2)
                      textValue2 = EndTextCommandSetBlipName
                      numberValue2 = flag10.blip
                      textValue2(numberValue2)
                    end
                end
              end
              else
                iterator = flag10.blip
                if iterator then
                  iterator = RemoveBlip
                  textValue2 = flag10.blip
                  iterator(textValue2)
                  flag10.blip = nil
                end
                iterator = DoesBlipExist
                textValue2 = flag14
                iterator = iterator(textValue2)
                if iterator then
                  iterator = RemoveBlip
                  textValue2 = flag14
                  iterator(textValue2)
                end
              end
            end
          end
        end
        ::flow_label_193::
      end
    end
    arg1 = Wait
    arg2 = 100
    arg1(arg2)
  end
end
numberValue9(numberValue10)
function numberValue9(arg1)
  local arg2, arg3
  arg2 = arg1 % 6
  if 0 == arg2 then
    arg3 = 9
    return arg3
  elseif 1 == arg2 then
    arg3 = 12
    return arg3
  elseif 2 == arg2 then
    arg3 = 15
    return arg3
  elseif 3 == arg2 then
    arg3 = 18
    return arg3
  elseif 4 == arg2 then
    arg3 = 21
    return arg3
  elseif 5 == arg2 then
    arg3 = 24
    return arg3
  elseif 6 == arg2 then
    arg3 = 6
    return arg3
  end
end
numberValue10 = nil
numberValue11 = nil
numberValue12 = false
numberValue13 = false
numberValue14 = _ENV
numberValue15 = "CMG"
numberValue14 = numberValue14[numberValue15]
numberValue15 = "enableMinigamePlayerTags"
function numberValue16(arg1, arg2, arg3, arg4)
  local arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2
  numberValue10 = arg3
  numberValue11 = arg4
  numberValue13 = arg2
  numberValue12 = arg1
  if not arg1 then
    arg5 = ipairs
    arg6 = currentEvent
    arg6 = arg6.players
    arg5, arg6, flag10, iterator2 = arg5(arg6)
    for workValue8, flag14 in arg5, arg6, flag10, iterator2 do
      iterator = flag14.tag
      if iterator then
        iterator = RemoveMpGamerTag
        textValue2 = flag14.tag
        iterator(textValue2)
        flag14.tag = nil
      end
    end
  end
end
numberValue14[numberValue15] = numberValue16
numberValue14 = _ENV
numberValue15 = "CMG"
numberValue14 = numberValue14[numberValue15]
numberValue15 = "isEventPlayerTagEnabled"
function numberValue16()
  local arg1, arg2
  arg1 = numberValue12
  return arg1
end
numberValue14[numberValue15] = numberValue16
numberValue14 = _ENV
numberValue15 = "CreateThread"
numberValue14 = numberValue14[numberValue15]
function numberValue15()
  local arg1, arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3, flag5, flag6
  while true do
    arg1 = numberValue12
    if arg1 then
      arg1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      arg2 = ipairs
      arg3 = currentEvent
      arg3 = arg3.players
      arg2, arg3, arg4, arg5 = arg2(arg3)
      for arg6, flag10 in arg2, arg3, arg4, arg5 do
        iterator2 = GetPlayerFromServerId
        workValue8 = flag10.source
        -- Beginner: result below is playerIndex.
        iterator2 = iterator2(workValue8)
        if -1 ~= iterator2 then
          workValue8 = PlayerId
          -- Beginner: result below is localPlayerIndex.
          workValue8 = workValue8()
          if iterator2 ~= workValue8 then
            workValue8 = GetPlayerPed
            flag14 = iterator2
            -- Beginner: result below is playerPed.
            workValue8 = workValue8(flag14)
            flag14 = HasEntityClearLosToEntity
            iterator = arg1
            textValue2 = workValue8
            numberValue2 = 17
            flag14 = flag14(iterator, textValue2, numberValue2)
            if not flag14 then
              flag14 = CMG
              flag14 = flag14.isSpectatingEvent
              flag14 = flag14()
            end
            if flag14 then
              iterator = IsEntityVisible
              textValue2 = workValue8
              iterator = iterator(textValue2)
              if iterator then
                iterator = flag10.active
                if iterator then
                  iterator = flag10.tag
                  if iterator then
                    iterator = IsMpGamerTagActive
                    textValue2 = flag10.tag
                    iterator = iterator(textValue2)
                  end
                  if not iterator then
                    iterator = nil
                    textValue2 = numberValue11
                    if textValue2 then
                      textValue2 = CreateFakeMpGamerTag
                      numberValue2 = workValue8
                      tableHelper = numberValue11
                      flag2 = flag10
                      tableHelper = tableHelper(flag2)
                      flag2 = false
                      flag3 = false
                      flag5 = ""
                      flag6 = 0
                      textValue2 = textValue2(numberValue2, tableHelper, flag2, flag3, flag5, flag6)
                      iterator = textValue2
                    else
                      textValue2 = CreateFakeMpGamerTag
                      numberValue2 = workValue8
                      tableHelper = CMG
                      tableHelper = tableHelper.getPlayerName
                      flag2 = iterator2
                      tableHelper = tableHelper(flag2)
                      flag2 = false
                      flag3 = false
                      flag5 = ""
                      flag6 = 0
                      textValue2 = textValue2(numberValue2, tableHelper, flag2, flag3, flag5, flag6)
                      iterator = textValue2
                    end
                    textValue2 = numberValue10
                    if textValue2 then
                      textValue2 = SetMpGamerTagColour
                      numberValue2 = iterator
                      tableHelper = 0
                      flag2 = numberValue10
                      flag3 = flag10.source
                      flag2, flag3, flag5, flag6 = flag2(flag3)
                      textValue2(numberValue2, tableHelper, flag2, flag3, flag5, flag6)
                    else
                      textValue2 = SetMpGamerTagColour
                      numberValue2 = iterator
                      tableHelper = 0
                      flag2 = numberValue9
                      flag3 = flag10.source
                      flag2, flag3, flag5, flag6 = flag2(flag3)
                      textValue2(numberValue2, tableHelper, flag2, flag3, flag5, flag6)
                    end
                    textValue2 = SetMpGamerTagColour
                    numberValue2 = iterator
                    tableHelper = 29
                    flag2 = 6
                    textValue2(numberValue2, tableHelper, flag2)
                    textValue2 = numberValue13
                    if textValue2 then
                      textValue2 = SetMpGamerTagHealthBarColour
                      numberValue2 = iterator
                      tableHelper = 18
                      textValue2(numberValue2, tableHelper)
                      textValue2 = SetMpGamerTagAlpha
                      numberValue2 = iterator
                      tableHelper = 2
                      flag2 = 255
                      textValue2(numberValue2, tableHelper, flag2)
                      textValue2 = SetMpGamerTagVisibility
                      numberValue2 = iterator
                      tableHelper = 2
                      flag2 = true
                      textValue2(numberValue2, tableHelper, flag2)
                    end
                    flag10.tag = iterator
                  end
              end
            end
            else
              iterator = flag10.tag
              if iterator then
                iterator = RemoveMpGamerTag
                textValue2 = flag10.tag
                iterator(textValue2)
                flag10.tag = nil
              end
            end
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 100
    arg1(arg2)
  end
end
numberValue14(numberValue15)
numberValue14 = _ENV
numberValue15 = "CMG"
numberValue14 = numberValue14[numberValue15]
numberValue15 = "setEventIntroMessage"
function numberValue16(arg1, arg2, arg3)
  local arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7, flag8
  arg4 = EnableAllControlActions
  arg5 = 0
  arg4(arg5)
  arg4 = GetSoundId
  -- Beginner: result below is soundHandle.
  arg4 = arg4()
  arg5 = PlaySoundFrontend
  arg6 = arg4
  flag10 = "Frontend_Beast_Freeze_Screen"
  iterator2 = "FM_Events_Sasquatch_Sounds"
  workValue8 = false
  arg5(arg6, flag10, iterator2, workValue8)
  arg5 = ReleaseSoundId
  arg6 = arg4
  arg5(arg6)
  arg5 = HasStreamedTextureDictLoaded
  arg6 = "cmgui"
  arg5 = arg5(arg6)
  if not arg5 then
    arg5 = RequestStreamedTextureDict
    arg6 = "cmgui"
    flag10 = false
    arg5(arg6, flag10)
    while true do
      arg5 = HasStreamedTextureDictLoaded
      arg6 = "cmgui"
      arg5 = arg5(arg6)
      if arg5 then
        break
      end
      arg5 = Wait
      arg6 = 0
      arg5(arg6)
    end
  end
  arg5 = CMG
  arg5 = arg5.hideAllDisplays
  arg6 = "intromessage"
  arg5(arg6)
  arg5 = 0.0
  arg6 = 0.55
  flag10 = true
  if 0 == arg3 then
  else
    iterator2 = SetTimeout
    workValue8 = arg3 or workValue8
    if not arg3 then
      workValue8 = 5000
    end
    function flag14()
      local arg12, arg22
      arg12 = false
      flag10 = arg12
    end
    iterator2(workValue8, flag14)
    while flag10 do
      iterator2 = Wait
      workValue8 = 0
      iterator2(workValue8)
      if arg5 < arg6 then
        arg5 = arg5 + 0.01
      end
      iterator2 = DrawAdvancedTextNoOutline
      workValue8 = 0.283
      flag14 = 0.807
      flag14 = flag14 - arg6
      flag14 = flag14 + arg5
      iterator = 0.005
      textValue2 = 0.0028
      numberValue2 = 1.25
      tableHelper = arg1
      flag2 = 171
      flag3 = 34
      flag5 = 35
      flag6 = 255
      flag7 = CMG
      flag7 = flag7.getFontId
      flag8 = "Akrobat-ExtraBold"
      flag7 = flag7(flag8)
      flag8 = 0
      iterator2(workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7, flag8)
      iterator2 = DrawAdvancedTextNoOutline
      workValue8 = 0.488
      flag14 = 0.883
      flag14 = flag14 - arg6
      flag14 = flag14 + arg5
      iterator = 0.005
      textValue2 = 0.0028
      numberValue2 = 1.03
      tableHelper = arg2
      flag2 = 255
      flag3 = 255
      flag5 = 255
      flag6 = 255
      flag7 = 1
      flag8 = 0
      iterator2(workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7, flag8)
      iterator2 = DrawSprite
      workValue8 = "cmgui"
      flag14 = "slanted_rect"
      iterator = 0.5
      textValue2 = arg5
      numberValue2 = 1.0
      tableHelper = 1.0
      flag2 = 0.0
      flag3 = 255
      flag5 = 255
      flag6 = 255
      flag7 = 180
      iterator2(workValue8, flag14, iterator, textValue2, numberValue2, tableHelper, flag2, flag3, flag5, flag6, flag7)
    end
  end
  iterator2 = CMG
  iterator2 = iterator2.showAllDisplays
  workValue8 = "intromessage"
  iterator2(workValue8)
end
numberValue14[numberValue15] = numberValue16
numberValue14 = _ENV
numberValue15 = "CMG"
numberValue14 = numberValue14[numberValue15]
numberValue15 = "inEvent"
function numberValue16()
  local arg1, arg2
  arg1 = currentEvent
  arg1 = arg1.isActive
  if not arg1 then
    arg1 = flag13
    if not arg1 then
      arg1 = flag9
    end
  end
  return arg1
end
numberValue14[numberValue15] = numberValue16
numberValue14 = RegisterNetEvent
numberValue15 = "86634fecb2"
-- Beginner: this function handles network event "86634fecb2".
function numberValue16(arg1)
  local arg2
  flag12 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "86634fecb2".
numberValue14(numberValue15, numberValue16)
numberValue14 = _ENV
numberValue15 = "CMG"
numberValue14 = numberValue14[numberValue15]
numberValue15 = "getClientEventData"
-- Beginner: this function handles network event "86634fecb2".
function numberValue16(arg1)
  local arg2
  arg2 = currentEvent
  return arg2
end
numberValue14[numberValue15] = numberValue16
function numberValue14()
  local arg1, arg2, arg3, arg4, arg5, arg6, flag10, iterator2, workValue8, flag14, iterator
  arg1 = currentEvent
  if arg1 then
    arg1 = currentEvent
    arg1 = arg1.isActive
    if arg1 then
      goto flow_label_9
    end
  end
  return
  ::flow_label_9::
  arg1 = pairs
  arg2 = currentEvent
  arg2 = arg2.players
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    flag10 = GetPlayerFromServerId
    iterator2 = arg6.source
    -- Beginner: result below is playerIndex.
    flag10 = flag10(iterator2)
    if -1 ~= flag10 then
      iterator2 = GetPlayerPed
      workValue8 = flag10
      -- Beginner: result below is playerPed.
      iterator2 = iterator2(workValue8)
      if -1 ~= iterator2 then
        workValue8 = IsPedShooting
        flag14 = iterator2
        workValue8 = workValue8(flag14)
        if workValue8 then
          flag14 = arg6.source
          workValue8 = dataTable5
          workValue8 = workValue8[flag14]
          if not workValue8 then
            flag14 = arg6.source
            workValue8 = dataTable5
            workValue8[flag14] = true
            workValue8 = SetTimeout
            flag14 = 1000
            function iterator()
              local arg12, arg22
              arg22 = arg6.source
              arg12 = dataTable5
              arg12[arg22] = false
            end
            workValue8(flag14, iterator)
          end
        end
      end
    end
  end
end
numberValue15 = _ENV
numberValue16 = "CMG"
numberValue15 = numberValue15[numberValue16]
numberValue15 = numberValue15.createThreadOnTick
numberValue16 = numberValue14
numberValue17 = "Event Shots Finder"
numberValue15(numberValue16, numberValue17)
numberValue15 = _ENV
numberValue16 = "CMG"
numberValue15 = numberValue15[numberValue16]
numberValue16 = "hasPlayerShotInEvent"
function numberValue17(arg1)
  local arg2
  arg2 = dataTable5
  arg2 = arg2[arg1]
  if not arg2 then
    arg2 = false
  end
  return arg2
end
numberValue15[numberValue16] = numberValue17