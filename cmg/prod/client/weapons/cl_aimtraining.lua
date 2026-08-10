--[[
    Beginner Guide: cl_aimtraining.lua
    ==================================

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
    BEGINNER GUIDE — Aimtraining
    ============================

    File: cmg/prod/client/weapons/cl_aimtraining.lua
    Purpose: This file contains weapons/combat gameplay.

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

    Config/data used:
      * cfg/cfg_aimtraining
      * cfg/weapons

    Network/hash identifiers found: 10
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * ~y~Select Weapon
      * Select a weapon to test with.
      * ~r~Stop Challenge
      * Stops the challenge immediately. You will not receive any score.
      * ~g~Start Challenge

]]
local cmgCall, cmgCall2, cmgCall3, flag8, dataTable4, workValue22, tableHelper, workValue28, dataTable9, numberValue24, numberValue, numberValue3, numberValue5, numberValue6, numberValue7, workValue4, workValue5, workValue6, workValue7, workValue8, textValue4, textValue5, rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8, textValue9, workValue9, workValue10, workValue12, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, cmgCall4, iterator, eventRegistration, textValue10, dataTable, dataTable2, dataTable3, cmgCall5, stringHelper, textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14, numberValue22, numberValue23, workValue25, workValue26, workValue27, dataTable6
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall2 = "cfg/cfg_aimtraining"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall2)
cmgCall2 = CMG
cmgCall2 = cmgCall2.loadModule
cmgCall3 = "cfg/weapons"
-- Beginner: result below is config.
cmgCall2 = cmgCall2(cmgCall3)
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerDevMenuState
flag8 = "Aim Training"
dataTable4 = {}
dataTable4.drawLines = false
cmgCall3 = cmgCall3(flag8, dataTable4)
flag8 = false
dataTable4 = true
workValue22 = nil
tableHelper = table
tableHelper = tableHelper.copy
workValue28 = cmgCall.defaultSettings
tableHelper = tableHelper(workValue28)
workValue28 = nil
dataTable9 = {}
numberValue24 = 0
numberValue = 0
numberValue3 = 0
numberValue5 = 0
numberValue6 = 0
numberValue7 = 0
workValue4 = nil
function workValue5()
  local arg1, arg2
  arg1 = 0
  numberValue5 = arg1
  arg1 = 0
  numberValue6 = arg1
  arg1 = 0
  numberValue7 = arg1
  arg1 = 0
  numberValue3 = arg1
end
function workValue6()
  local arg1, arg2, arg3, arg4, arg5, workValue23, vector3Builder2
  arg1 = pairs
  arg2 = dataTable9
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5 in arg1, arg2, arg3, arg4 do
    workValue23 = DeleteEntity
    vector3Builder2 = arg5
    -- Beginner: Delete a GTA entity.
    workValue23(vector3Builder2)
  end
  arg1 = table
  arg1 = arg1.clear
  arg2 = dataTable9
  arg1(arg2)
end
function workValue7()
  local arg1, arg2
  arg1 = nil
  workValue28 = arg1
  arg1 = table
  arg1 = arg1.copy
  arg2 = cmgCall.defaultSettings
  arg1 = arg1(arg2)
  tableHelper = arg1
  arg1 = workValue5
  arg1()
  arg1 = workValue6
  arg1()
  arg1 = RemoveAnimDict
  arg2 = cmgCall.runAnim
  arg2 = arg2.dict
  arg1(arg2)
  arg1 = RemoveAnimDict
  arg2 = cmgCall.sideAnim
  arg2 = arg2.dict
  arg1(arg2)
  arg1 = RemoveAnimDict
  arg2 = cmgCall.rollAnims
  arg2 = arg2.dict
  arg1(arg2)
end
workValue8 = RMenu
workValue8 = workValue8.Add
textValue4 = "aimtraining"
textValue5 = "mainmenu"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue6 = ""
textValue7 = "Aim Training"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_aimtraining"
textValue8 = "aimtraining"
rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8, textValue9, workValue9, workValue10, workValue12, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, cmgCall4, iterator, eventRegistration, textValue10, dataTable, dataTable2, dataTable3, cmgCall5, stringHelper, textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14, numberValue22, numberValue23, workValue25, workValue26, workValue27, dataTable6 = rageUiCall(textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8)
workValue8(textValue4, textValue5, rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8, textValue9, workValue9, workValue10, workValue12, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, cmgCall4, iterator, eventRegistration, textValue10, dataTable, dataTable2, dataTable3, cmgCall5, stringHelper, textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14, numberValue22, numberValue23, workValue25, workValue26, workValue27, dataTable6)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue4 = "aimtraining"
textValue5 = "weapons"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue6 = RMenu
textValue7 = textValue6
textValue6 = textValue6.Get
rageUiCall2 = "aimtraining"
rageUiCall3 = "mainmenu"
-- Beginner: result below is menu.
textValue6 = textValue6(textValue7, rageUiCall2, rageUiCall3)
textValue7 = ""
rageUiCall2 = "Weapons"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue8 = "cmg_aimtraining"
textValue9 = "aimtraining"
rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8, textValue9, workValue9, workValue10, workValue12, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, cmgCall4, iterator, eventRegistration, textValue10, dataTable, dataTable2, dataTable3, cmgCall5, stringHelper, textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14, numberValue22, numberValue23, workValue25, workValue26, workValue27, dataTable6 = rageUiCall(textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8, textValue9)
workValue8(textValue4, textValue5, rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8, textValue9, workValue9, workValue10, workValue12, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, cmgCall4, iterator, eventRegistration, textValue10, dataTable, dataTable2, dataTable3, cmgCall5, stringHelper, textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14, numberValue22, numberValue23, workValue25, workValue26, workValue27, dataTable6)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue4 = "aimtraining"
textValue5 = "challenges"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue6 = RMenu
textValue7 = textValue6
textValue6 = textValue6.Get
rageUiCall2 = "aimtraining"
rageUiCall3 = "mainmenu"
-- Beginner: result below is menu.
textValue6 = textValue6(textValue7, rageUiCall2, rageUiCall3)
textValue7 = ""
rageUiCall2 = "Challenges"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue8 = "cmg_aimtraining"
textValue9 = "aimtraining"
rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8, textValue9, workValue9, workValue10, workValue12, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, cmgCall4, iterator, eventRegistration, textValue10, dataTable, dataTable2, dataTable3, cmgCall5, stringHelper, textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14, numberValue22, numberValue23, workValue25, workValue26, workValue27, dataTable6 = rageUiCall(textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8, textValue9)
workValue8(textValue4, textValue5, rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8, textValue9, workValue9, workValue10, workValue12, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, cmgCall4, iterator, eventRegistration, textValue10, dataTable, dataTable2, dataTable3, cmgCall5, stringHelper, textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14, numberValue22, numberValue23, workValue25, workValue26, workValue27, dataTable6)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue4 = "aimtraining"
textValue5 = "challenge"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue6 = RMenu
textValue7 = textValue6
textValue6 = textValue6.Get
rageUiCall2 = "aimtraining"
rageUiCall3 = "challenges"
-- Beginner: result below is menu.
textValue6 = textValue6(textValue7, rageUiCall2, rageUiCall3)
textValue7 = ""
rageUiCall2 = "View Challenge"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue8 = "cmg_aimtraining"
textValue9 = "aimtraining"
rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8, textValue9, workValue9, workValue10, workValue12, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, cmgCall4, iterator, eventRegistration, textValue10, dataTable, dataTable2, dataTable3, cmgCall5, stringHelper, textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14, numberValue22, numberValue23, workValue25, workValue26, workValue27, dataTable6 = rageUiCall(textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8, textValue9)
workValue8(textValue4, textValue5, rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, rageUiCall4, textValue8, textValue9, workValue9, workValue10, workValue12, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, cmgCall4, iterator, eventRegistration, textValue10, dataTable, dataTable2, dataTable3, cmgCall5, stringHelper, textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14, numberValue22, numberValue23, workValue25, workValue26, workValue27, dataTable6)
workValue8 = RageUI
workValue8 = workValue8.CreateWhile
textValue4 = 1.0
textValue5 = RMenu
rageUiCall = textValue5
textValue5 = textValue5.Get
textValue6 = "aimtraining"
textValue7 = "mainmenu"
-- Beginner: result below is menu.
textValue5 = textValue5(rageUiCall, textValue6, textValue7)
rageUiCall = nil
function textValue6()
  local arg1, arg2, arg3, arg4, arg5, workValue23, vector3Builder2
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "aimtraining"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true
  function workValue23()
    local arg12, arg22, arg32, arg42, textValue12, workValue24, dataTable7, dataTable8, workValue31, textValue15, flag, textValue
    arg12 = workValue28
    if not arg12 then
      arg12 = true
      if arg12 then
        goto flow_label_8
      end
    end
    arg12 = false
    ::flow_label_8::
    if not arg12 then
      arg22 = "Settings can not be edited whilst in a challenge"
      if arg22 then
        goto flow_label_14
      end
    end
    arg22 = nil
    ::flow_label_14::
    arg32 = RageUI
    arg32 = arg32.Checkbox
    arg42 = "Headshots Only"
    textValue12 = arg22 or textValue12
    if not arg22 then
      textValue12 = "Whether to only kill if a headshot happens. When changed your statistics will reset."
    end
    workValue24 = tableHelper.headshotsOnly
    dataTable7 = {}
    function dataTable8(arg13, arg23, arg33, arg43)
      local workValue21
      workValue21 = tableHelper.headshotsOnly
      if workValue21 ~= arg43 then
        workValue21 = arg12
        if workValue21 then
          workValue21 = workValue5
          workValue21()
          tableHelper.headshotsOnly = arg43
        end
      end
    end
    -- Beginner: Draw a RageUI checkbox.
    arg32(arg42, textValue12, workValue24, dataTable7, dataTable8)
    arg32 = RageUI
    arg32 = arg32.List
    arg42 = "Num Targets"
    textValue12 = cmgCall.numTargetsList
    workValue24 = tableHelper.numTargetsCount
    dataTable7 = arg22 or dataTable7
    if not arg22 then
      dataTable7 = "The amount of targets to be active at one time."
    end
    dataTable8 = {}
    workValue31 = arg12
    function textValue15(arg13, arg23, arg33, arg43)
      local workValue21
      workValue21 = tableHelper.numTargetsCount
      if arg43 ~= workValue21 then
        workValue21 = arg12
        if workValue21 then
          tableHelper.numTargetsCount = arg43
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    arg32(arg42, textValue12, workValue24, dataTable7, dataTable8, workValue31, textValue15)
    arg32 = RageUI
    arg32 = arg32.List
    arg42 = "Movement Type"
    textValue12 = cmgCall.movementsList
    workValue24 = tableHelper.movementsIndex
    dataTable7 = arg22 or dataTable7
    if not arg22 then
      dataTable7 = "The type of movement each target should perform."
    end
    dataTable8 = {}
    workValue31 = arg12
    function textValue15(arg13, arg23, arg33, arg43)
      local workValue21
      workValue21 = tableHelper.movementsIndex
      if arg43 ~= workValue21 then
        workValue21 = arg12
        if workValue21 then
          workValue21 = workValue6
          workValue21()
          tableHelper.movementsIndex = arg43
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    arg32(arg42, textValue12, workValue24, dataTable7, dataTable8, workValue31, textValue15)
    arg32 = RageUI
    arg32 = arg32.List
    arg42 = "Distance"
    textValue12 = cmgCall.distanceList
    workValue24 = tableHelper.distanceIndex
    dataTable7 = arg22 or dataTable7
    if not arg22 then
      dataTable7 = "The distance each target should be at."
    end
    dataTable8 = {}
    workValue31 = arg12
    function textValue15(arg13, arg23, arg33, arg43)
      local workValue21
      workValue21 = tableHelper.distanceIndex
      if arg43 ~= workValue21 then
        workValue21 = arg12
        if workValue21 then
          workValue21 = workValue6
          workValue21()
          tableHelper.distanceIndex = arg43
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    arg32(arg42, textValue12, workValue24, dataTable7, dataTable8, workValue31, textValue15)
    arg32 = RageUI
    arg32 = arg32.List
    arg42 = "Movement Speed"
    textValue12 = cmgCall.movementSpeedList
    workValue24 = tableHelper.movementSpeedIndex
    dataTable7 = arg22 or dataTable7
    if not arg22 then
      dataTable7 = "A multiplier for how fast each movement should be"
    end
    dataTable8 = {}
    workValue31 = arg12
    function textValue15(arg13, arg23, arg33, arg43)
      local workValue21
      workValue21 = arg12
      if workValue21 then
        tableHelper.movementSpeedIndex = arg43
      end
    end
    arg32(arg42, textValue12, workValue24, dataTable7, dataTable8, workValue31, textValue15)
    arg32 = RageUI
    arg32 = arg32.Checkbox
    arg42 = "Fast Respawns"
    textValue12 = arg22 or textValue12
    if not arg22 then
      textValue12 = "Whether targets should respawn quickly or at their rate of one per second."
    end
    workValue24 = tableHelper.fastRespawns
    dataTable7 = {}
    function dataTable8(arg13, arg23, arg33, arg43)
      local workValue21
      workValue21 = arg12
      if workValue21 then
        tableHelper.fastRespawns = arg43
      end
    end
    -- Beginner: Draw a RageUI checkbox.
    arg32(arg42, textValue12, workValue24, dataTable7, dataTable8)
    arg32 = RageUI
    arg32 = arg32.Checkbox
    arg42 = "Play Sounds"
    textValue12 = "Plays a sound whether you successfully kill the target."
    workValue24 = dataTable4
    dataTable7 = {}
    function dataTable8(arg13, arg23, arg33, arg43)
      dataTable4 = arg43
    end
    arg32(arg42, textValue12, workValue24, dataTable7, dataTable8)
    arg32 = RageUI
    arg32 = arg32.Button
    arg42 = "~r~Reset Stats"
    textValue12 = "Resets your local statistics for this run."
    workValue24 = true
    function dataTable7(arg13, arg23, arg33)
      local arg43, workValue21
      if arg33 then
        arg43 = workValue28
        if not arg43 then
          arg43 = workValue5
          arg43()
          arg43 = notify
          workValue21 = "~y~Statistics have been reset."
          -- Beginner: Show a notification to the player.
          arg43(workValue21)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, textValue12, workValue24, dataTable7)
    arg32 = workValue28
    if not arg32 then
      arg32 = RageUI
      arg32 = arg32.ButtonWithStyle
      arg42 = "~y~Select Weapon"
      textValue12 = "Select a weapon to test with."
      workValue24 = {}
      workValue24.RightLabel = "\226\134\146\226\134\146\226\134\146"
      dataTable7 = true
      function dataTable8()
        local arg13, arg23
      end
      workValue31 = RMenu
      textValue15 = workValue31
      workValue31 = workValue31.Get
      flag = "aimtraining"
      textValue = "weapons"
      workValue31, textValue15, flag, textValue = workValue31(textValue15, flag, textValue)
      arg32(arg42, textValue12, workValue24, dataTable7, dataTable8, workValue31, textValue15, flag, textValue)
      arg32 = RageUI
      arg32 = arg32.ButtonWithStyle
      arg42 = "~g~View Challenges"
      textValue12 = "View challenges you can compete in. These are recorded and can be viewed against other players."
      workValue24 = {}
      workValue24.RightLabel = "\226\134\146\226\134\146\226\134\146"
      dataTable7 = true
      function dataTable8()
        local arg13, arg23
      end
      workValue31 = RMenu
      textValue15 = workValue31
      workValue31 = workValue31.Get
      flag = "aimtraining"
      textValue = "challenges"
      workValue31, textValue15, flag, textValue = workValue31(textValue15, flag, textValue)
      -- Beginner: Draw a selectable RageUI menu button.
      arg32(arg42, textValue12, workValue24, dataTable7, dataTable8, workValue31, textValue15, flag, textValue)
    else
      arg32 = RageUI
      arg32 = arg32.Button
      arg42 = "~r~Stop Challenge"
      textValue12 = "Stops the challenge immediately. You will not receive any score."
      workValue24 = true
      function dataTable7(arg13, arg23, arg33)
        local arg43, workValue21, flag11
        if arg33 then
          workValue28.isEnding = true
          arg43 = TriggerServerEvent
          workValue21 = "302b46f2b0"
          flag11 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "302b46f2b0".
          arg43(workValue21, flag11)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg32(arg42, textValue12, workValue24, dataTable7)
    end
  end
  function vector3Builder2()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, workValue23, vector3Builder2)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "aimtraining"
  arg5 = "weapons"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true
  function workValue23()
    local arg12, arg22, arg32, arg42, textValue12, workValue24, dataTable7, dataTable8, workValue31, textValue15, flag, textValue
    arg12 = pairs
    arg22 = cmgCall.availableWeapons
    arg12, arg22, arg32, arg42 = arg12(arg22)
    for textValue12, workValue24 in arg12, arg22, arg32, arg42 do
      dataTable7 = cmgCall2.weapons
      dataTable7 = dataTable7[workValue24]
      if dataTable7 then
        dataTable8 = RageUI
        dataTable8 = dataTable8.Button
        workValue31 = dataTable7.name
        textValue15 = ""
        flag = true
        function textValue(arg13, arg23, arg33)
          local arg43, workValue21, flag11
          if arg33 then
            arg43 = TriggerServerEvent
            workValue21 = "c6c2102caf"
            flag11 = workValue24
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c6c2102caf".
            arg43(workValue21, flag11)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        dataTable8(workValue31, textValue15, flag, textValue)
      end
    end
  end
  function vector3Builder2()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, workValue23, vector3Builder2)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "aimtraining"
  arg5 = "challenges"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true
  function workValue23()
    local arg12, arg22, arg32, arg42, textValue12, workValue24, dataTable7, dataTable8, workValue31, textValue15, flag, textValue, workValue2, textValue2, textValue3
    arg12 = pairs
    arg22 = cmgCall.challenges
    arg12, arg22, arg32, arg42 = arg12(arg22)
    for textValue12 in arg12, arg22, arg32, arg42 do
      workValue24 = RageUI
      workValue24 = workValue24.ButtonWithStyle
      dataTable7 = textValue12
      dataTable8 = ""
      workValue31 = {}
      workValue31.RightLabel = "\226\134\146\226\134\146\226\134\146"
      textValue15 = true
      function flag(arg13, arg23, arg33)
        local arg43
        if arg33 then
          arg43 = textValue12
          workValue22 = arg43
        end
      end
      textValue = RMenu
      workValue2 = textValue
      textValue = textValue.Get
      textValue2 = "aimtraining"
      textValue3 = "challenge"
      textValue, workValue2, textValue2, textValue3 = textValue(workValue2, textValue2, textValue3)
      -- Beginner: Draw a selectable RageUI menu button.
      workValue24(dataTable7, dataTable8, workValue31, textValue15, flag, textValue, workValue2, textValue2, textValue3)
    end
  end
  function vector3Builder2()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, workValue23, vector3Builder2)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "aimtraining"
  arg5 = "challenge"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true
  function workValue23()
    local arg12, arg22, arg32, arg42, textValue12, workValue24
    arg12 = cmgCall.challenges
    arg22 = workValue22
    arg12 = arg12[arg22]
    arg22 = assert
    arg32 = arg12
    arg22(arg32)
    arg22 = RageUI
    arg22 = arg22.Separator
    arg32 = string
    arg32 = arg32.format
    arg42 = "~y~%s"
    textValue12 = workValue22
    arg32, arg42, textValue12, workValue24 = arg32(arg42, textValue12)
    arg22(arg32, arg42, textValue12, workValue24)
    arg22 = RageUI
    arg22 = arg22.Separator
    arg32 = string
    arg32 = arg32.format
    arg42 = "Num Targets: %s"
    textValue12 = arg12.numTargets
    arg32, arg42, textValue12, workValue24 = arg32(arg42, textValue12)
    arg22(arg32, arg42, textValue12, workValue24)
    arg22 = RageUI
    arg22 = arg22.Separator
    arg32 = string
    arg32 = arg32.format
    arg42 = "Target Duration: %s seconds"
    textValue12 = math
    textValue12 = textValue12.floor
    workValue24 = arg12.targetDurationMsec
    workValue24 = workValue24 / 1000
    textValue12, workValue24 = textValue12(workValue24)
    arg32, arg42, textValue12, workValue24 = arg32(arg42, textValue12, workValue24)
    arg22(arg32, arg42, textValue12, workValue24)
    arg22 = RageUI
    arg22 = arg22.Separator
    arg32 = string
    arg32 = arg32.format
    arg42 = "Challenge Time: %s seconds"
    textValue12 = math
    textValue12 = textValue12.floor
    workValue24 = arg12.timeToCompleteMsec
    workValue24 = workValue24 / 1000
    textValue12, workValue24 = textValue12(workValue24)
    arg32, arg42, textValue12, workValue24 = arg32(arg42, textValue12, workValue24)
    arg22(arg32, arg42, textValue12, workValue24)
    arg22 = RageUI
    arg22 = arg22.Button
    arg32 = "~g~Start Challenge"
    arg42 = arg12.description
    textValue12 = true
    function workValue24(arg13, arg23, arg33)
      local arg43, workValue21, flag11
      if arg33 then
        arg43 = TriggerServerEvent
        workValue21 = "9a918b808a"
        flag11 = workValue22
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9a918b808a".
        arg43(workValue21, flag11)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg32, arg42, textValue12, workValue24)
  end
  function vector3Builder2()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, workValue23, vector3Builder2)
end
workValue8(textValue4, textValue5, rageUiCall, textValue6)
function workValue8()
  local arg1, arg2
  arg1 = GetInteriorFromEntity
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  -- Beginner: result below is interiorId.
  arg1 = arg1(arg2)
  if 0 == arg1 then
    arg1 = TriggerServerEvent
    arg2 = "9d2ccf39a9"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9d2ccf39a9".
    arg1(arg2)
    arg1 = false
    return arg1
  end
  arg1 = true
  return arg1
end
function textValue4(arg1)
  local arg2, arg3, arg4, arg5, workValue23
  arg2 = cmgCall.distanceList
  arg3 = tableHelper.distanceIndex
  arg2 = arg2[arg3]
  if "Random" == arg2 then
    arg3 = cmgCall.distanceList
    arg4 = math
    arg4 = arg4.random
    arg5 = 1
    workValue23 = cmgCall.distanceList
    workValue23 = #workValue23
    workValue23 = workValue23 - 1
    arg4 = arg4(arg5, workValue23)
    arg2 = arg3[arg4]
  end
  arg3 = arg1.zones
  arg3 = arg3[arg2]
  arg4 = arg3.min
  arg5 = arg3.max
  return arg4, arg5
end
function textValue5(arg1, arg2)
  local arg3, arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32
  arg3 = math
  arg3 = arg3.floor
  arg4 = arg2.x
  arg5 = arg1.x
  arg4 = arg4 - arg5
  arg4 = arg4 * 10.0
  arg3 = arg3(arg4)
  arg4 = math
  arg4 = arg4.floor
  arg5 = arg2.y
  workValue23 = arg1.y
  arg5 = arg5 - workValue23
  arg5 = arg5 * 10.0
  arg4 = arg4(arg5)
  arg5 = math
  arg5 = arg5.random
  workValue23 = 1
  vector3Builder2 = arg3
  arg5 = arg5(workValue23, vector3Builder2)
  workValue23 = math
  workValue23 = workValue23.random
  vector3Builder2 = 1
  workValue29 = arg4
  workValue23 = workValue23(vector3Builder2, workValue29)
  vector3Builder2 = vector3
  workValue29 = arg1.x
  workValue30 = arg5 / 10.0
  workValue29 = workValue29 + workValue30
  workValue30 = arg1.y
  workValue32 = workValue23 / 10.0
  workValue30 = workValue30 + workValue32
  workValue32 = arg1.z
  return vector3Builder2(workValue29, workValue30, workValue32)
end
function rageUiCall(arg1)
  local arg2, arg3, arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30
  arg2 = pairs
  arg3 = dataTable9
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for workValue23 in arg2, arg3, arg4, arg5 do
    vector3Builder2 = GetEntityCoords
    workValue29 = workValue23
    workValue30 = true
    -- Beginner: result below is entityCoords.
    vector3Builder2 = vector3Builder2(workValue29, workValue30)
    vector3Builder2 = vector3Builder2 - arg1
    vector3Builder2 = #vector3Builder2
    workValue29 = 0.8
    if vector3Builder2 < workValue29 then
      vector3Builder2 = true
      return vector3Builder2
    end
  end
  arg2 = false
  return arg2
end
function textValue6(arg1, arg2, arg3)
  local arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8, flag2, flag3
  if arg3 then
    arg4 = arg3.startTime
    if not arg4 then
      return
    end
    arg4 = arg3.numSpawned
    arg5 = arg3.numTargets
    if arg4 >= arg5 then
      return
    end
  end
  arg4 = table
  arg4 = arg4.count
  arg5 = dataTable9
  -- Beginner: result below is count.
  arg4 = arg4(arg5)
  arg5 = tableHelper.numTargetsCount
  if arg4 > arg5 then
    arg5 = table
    arg5 = arg5.keyat
    workValue23 = dataTable9
    vector3Builder2 = 1
    arg5 = arg5(workValue23, vector3Builder2)
    workValue23 = DeleteEntity
    vector3Builder2 = arg5
    -- Beginner: Delete a GTA entity.
    workValue23(vector3Builder2)
    workValue23 = dataTable9
    workValue23[arg5] = nil
  end
  arg5 = tableHelper.numTargetsCount
  if arg4 == arg5 then
    return
  end
  arg5 = tableHelper.fastRespawns
  if arg5 then
    arg5 = 250
    if arg5 then
      goto flow_label_40
    end
  end
  arg5 = 1000
  ::flow_label_40::
  workValue23 = numberValue
  workValue23 = arg1 - workValue23
  if not (arg5 > workValue23) then
    workValue23 = numberValue24
    workValue23 = arg1 - workValue23
    if not (arg5 > workValue23) then
      goto flow_label_51
    end
  end
  return
  ::flow_label_51::
  workValue23 = math
  workValue23 = workValue23.random
  vector3Builder2 = 1
  workValue29 = 5
  workValue23 = workValue23(vector3Builder2, workValue29)
  if workValue23 <= 4 then
    workValue23 = 1885233650
    if workValue23 then
      goto flow_label_62
    end
  end
  workValue23 = -1667301416
  ::flow_label_62::
  vector3Builder2 = CMG
  vector3Builder2 = vector3Builder2.loadModel
  workValue29 = workValue23
  -- Beginner: Request/load a GTA model before spawning or applying it.
  vector3Builder2(workValue29)
  vector3Builder2 = textValue4
  workValue29 = arg2
  vector3Builder2, workValue29 = vector3Builder2(workValue29)
  workValue30 = textValue5
  workValue32 = vector3Builder2
  numberValue2 = workValue29
  workValue30 = workValue30(workValue32, numberValue2)
  workValue32 = 1
  numberValue2 = 10
  numberValue4 = 1
  for workValue = workValue32, numberValue2, numberValue4 do
    workValue3 = rageUiCall
    mathHelper = workValue30
    workValue3 = workValue3(mathHelper)
    if workValue3 then
      workValue3 = textValue5
      mathHelper = vector3Builder2
      numberValue8 = workValue29
      workValue3 = workValue3(mathHelper, numberValue8)
      workValue30 = workValue3
    end
  end
  workValue32 = CreatePed
  numberValue2 = 0
  numberValue4 = workValue23
  workValue = workValue30.x
  workValue3 = workValue30.y
  mathHelper = workValue30.z
  numberValue8 = arg2.targetForwardHeading
  flag2 = false
  flag3 = false
  -- Beginner: result below is pedEntity.
  workValue32 = workValue32(numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8, flag2, flag3)
  numberValue2 = SetEntityMaxHealth
  numberValue4 = workValue32
  workValue = cmgCall.fakeEntityHealth
  numberValue2(numberValue4, workValue)
  numberValue2 = SetEntityHealth
  numberValue4 = workValue32
  workValue = cmgCall.fakeEntityHealth
  numberValue2(numberValue4, workValue)
  numberValue2 = SetBlockingOfNonTemporaryEvents
  numberValue4 = workValue32
  workValue = true
  numberValue2(numberValue4, workValue)
  numberValue2 = SetPedCanRagdoll
  numberValue4 = workValue32
  workValue = false
  numberValue2(numberValue4, workValue)
  numberValue2 = GetEntityMatrix
  numberValue4 = workValue32
  numberValue2, numberValue4 = numberValue2(numberValue4)
  workValue = cmgCall.movementsList
  workValue3 = tableHelper.movementsIndex
  workValue = workValue[workValue3]
  if "Random" == workValue then
    workValue3 = cmgCall.movementsList
    mathHelper = math
    mathHelper = mathHelper.random
    numberValue8 = 1
    flag2 = cmgCall.movementsList
    flag2 = #flag2
    flag2 = flag2 - 1
    mathHelper = mathHelper(numberValue8, flag2)
    workValue = workValue3[mathHelper]
  end
  workValue3 = dataTable9
  mathHelper = {}
  mathHelper.fowardVector = numberValue2
  mathHelper.rightVector = numberValue4
  mathHelper.movementType = workValue
  mathHelper.isReversed = false
  mathHelper.createdTime = arg1
  workValue3[workValue32] = mathHelper
  numberValue = arg1
  if arg3 then
    workValue3 = arg3.numSpawned
    workValue3 = workValue3 + 1
    arg3.numSpawned = workValue3
  end
end
function textValue7(arg1)
  local arg2, arg3, arg4, arg5, workValue23, vector3Builder2, workValue29
  arg2 = pairs
  arg3 = dataTable9
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for workValue23 in arg2, arg3, arg4, arg5 do
    vector3Builder2 = GetInteriorFromEntity
    workValue29 = workValue23
    -- Beginner: result below is interiorId.
    vector3Builder2 = vector3Builder2(workValue29)
    if 0 == vector3Builder2 then
      vector3Builder2 = DeleteEntity
      workValue29 = workValue23
      -- Beginner: Delete a GTA entity.
      vector3Builder2(workValue29)
      vector3Builder2 = dataTable9
      vector3Builder2[workValue23] = nil
      if arg1 then
        vector3Builder2 = arg1.numSpawned
        vector3Builder2 = vector3Builder2 - 1
        arg1.numSpawned = vector3Builder2
      end
    end
  end
end
function rageUiCall2(arg1, arg2, arg3)
  local arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8, flag2, flag3, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, flag4, flag5, numberValue18, flag6, workValue11, workValue13, flag7
  arg4 = 10.0
  arg5 = arg3 * arg4
  arg5 = arg2 + arg5
  workValue23 = cmgCall3.drawLines
  if workValue23 then
    workValue23 = DrawLine
    vector3Builder2 = arg2.x
    workValue29 = arg2.y
    workValue30 = arg2.z
    workValue32 = arg5.x
    numberValue2 = arg5.y
    numberValue4 = arg5.z
    workValue = 0
    workValue3 = 255
    mathHelper = 0
    numberValue8 = 255
    workValue23(vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8)
  end
  workValue23 = _ENV
  vector3Builder2 = "StartExpensiveSynchronousShapeTestLosProbe"
  workValue23 = workValue23[vector3Builder2]
  vector3Builder2 = arg2.x
  workValue29 = arg2.y
  workValue30 = arg2.z
  workValue32 = arg5.x
  numberValue2 = arg5.y
  numberValue4 = arg5.z
  workValue = 17
  workValue3 = arg1
  mathHelper = 7
  workValue23 = workValue23(vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper)
  vector3Builder2 = GetShapeTestResult
  workValue29 = workValue23
  vector3Builder2, workValue29, workValue30 = vector3Builder2(workValue29)
  if workValue29 then
    workValue32 = cmgCall3.drawLines
    if workValue32 then
      workValue32 = DrawMarker
      numberValue2 = 28
      numberValue4 = workValue30.x
      workValue = workValue30.y
      workValue3 = workValue30.z
      mathHelper = 0.0
      numberValue8 = 0.0
      flag2 = 0.0
      flag3 = 0.0
      numberValue9 = 0.0
      numberValue10 = 0.0
      numberValue11 = 0.1
      numberValue12 = 0.1
      numberValue13 = 0.1
      numberValue14 = 0
      numberValue15 = 0
      numberValue16 = 255
      numberValue17 = 255
      flag4 = false
      flag5 = false
      numberValue18 = 2
      flag6 = false
      workValue11 = nil
      workValue13 = nil
      flag7 = false
      workValue32(numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8, flag2, flag3, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, flag4, flag5, numberValue18, flag6, workValue11, workValue13, flag7)
    end
    workValue32 = arg2 - workValue30
    workValue32 = #workValue32
    return workValue32
  else
    return arg4
  end
end
function rageUiCall3(arg1, arg2, arg3)
  local arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32
  arg4 = rageUiCall2
  arg5 = arg1
  workValue23 = arg2
  vector3Builder2 = arg3
  arg4 = arg4(arg5, workValue23, vector3Builder2)
  arg5 = rageUiCall2
  workValue23 = arg1
  vector3Builder2 = vector3
  workValue29 = 0.0
  workValue30 = 0.0
  workValue32 = 0.8
  vector3Builder2 = vector3Builder2(workValue29, workValue30, workValue32)
  vector3Builder2 = arg2 - vector3Builder2
  workValue29 = arg3
  arg5 = arg5(workValue23, vector3Builder2, workValue29)
  workValue23 = math
  workValue23 = workValue23.min
  vector3Builder2 = arg4
  workValue29 = arg5
  return workValue23(vector3Builder2, workValue29)
end
function rageUiCall4(arg1, arg2, arg3, arg4, arg5)
  local workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8, flag2
  workValue23 = arg2.isReversed
  if workValue23 then
    arg3 = -arg3
  end
  workValue23 = GetEntityCoords
  vector3Builder2 = arg1
  workValue29 = true
  -- Beginner: result below is entityCoords.
  workValue23 = workValue23(vector3Builder2, workValue29)
  vector3Builder2 = rageUiCall3
  workValue29 = arg1
  workValue30 = workValue23
  workValue32 = arg3
  vector3Builder2 = vector3Builder2(workValue29, workValue30, workValue32)
  if vector3Builder2 < 1.0 then
    workValue29 = arg2.isReversed
    workValue29 = not workValue29
    arg2.isReversed = workValue29
    return
  end
  workValue29 = cmgCall.movementSpeedValues
  workValue30 = tableHelper.movementSpeedIndex
  workValue29 = workValue29[workValue30]
  workValue29 = arg5 * workValue29
  workValue30 = arg3 * workValue29
  workValue30 = workValue30 * arg4
  workValue30 = workValue23 + workValue30
  workValue32 = SetEntityCoordsNoOffset
  numberValue2 = arg1
  numberValue4 = workValue30.x
  workValue = workValue30.y
  workValue3 = workValue30.z
  mathHelper = true
  numberValue8 = false
  flag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workValue32(numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8, flag2)
end
function textValue8(arg1, arg2, arg3)
  local arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper
  arg4 = RequestAnimDict
  arg5 = cmgCall.runAnim
  arg5 = arg5.dict
  arg4(arg5)
  arg4 = IsEntityPlayingAnim
  arg5 = arg1
  workValue23 = cmgCall.runAnim
  workValue23 = workValue23.dict
  vector3Builder2 = cmgCall.runAnim
  vector3Builder2 = vector3Builder2.clip
  workValue29 = 3
  arg4 = arg4(arg5, workValue23, vector3Builder2, workValue29)
  if not arg4 then
    arg4 = TaskPlayAnim
    arg5 = arg1
    workValue23 = cmgCall.runAnim
    workValue23 = workValue23.dict
    vector3Builder2 = cmgCall.runAnim
    vector3Builder2 = vector3Builder2.clip
    workValue29 = 1.0
    workValue30 = 1.0
    workValue32 = -1
    numberValue2 = 1
    numberValue4 = 1.0
    workValue = false
    workValue3 = false
    mathHelper = false
    -- Beginner: Play an animation on a ped.
    arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper)
  end
  arg4 = rageUiCall4
  arg5 = arg1
  workValue23 = arg2
  vector3Builder2 = arg2.fowardVector
  workValue29 = arg3
  workValue30 = 3.0
  arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30)
end
function textValue9(arg1, arg2, arg3)
  local arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper
  arg4 = RequestAnimDict
  arg5 = cmgCall.sideAnim
  arg5 = arg5.dict
  arg4(arg5)
  arg4 = IsEntityPlayingAnim
  arg5 = arg1
  workValue23 = cmgCall.sideAnim
  workValue23 = workValue23.dict
  vector3Builder2 = cmgCall.sideAnim
  vector3Builder2 = vector3Builder2.clip
  workValue29 = 3
  arg4 = arg4(arg5, workValue23, vector3Builder2, workValue29)
  if not arg4 then
    arg4 = TaskPlayAnim
    arg5 = arg1
    workValue23 = cmgCall.sideAnim
    workValue23 = workValue23.dict
    vector3Builder2 = cmgCall.sideAnim
    vector3Builder2 = vector3Builder2.clip
    workValue29 = 1.0
    workValue30 = 1.0
    workValue32 = -1
    numberValue2 = 1
    numberValue4 = 1.0
    workValue = false
    workValue3 = false
    mathHelper = false
    -- Beginner: Play an animation on a ped.
    arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper)
  end
  arg4 = rageUiCall4
  arg5 = arg1
  workValue23 = arg2
  vector3Builder2 = arg2.rightVector
  workValue29 = arg3
  workValue30 = 2.0
  arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30)
end
function workValue9(arg1, arg2, arg3)
  local arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper
  arg4 = arg2.currentClipName
  if not arg4 then
    arg4 = cmgCall.rollAnims
    arg4 = arg4.clips
    arg5 = math
    arg5 = arg5.random
    workValue23 = 1
    vector3Builder2 = cmgCall.rollAnims
    vector3Builder2 = vector3Builder2.clips
    vector3Builder2 = #vector3Builder2
    arg5 = arg5(workValue23, vector3Builder2)
    arg4 = arg4[arg5]
    arg2.currentClipName = arg4
  end
  arg4 = RequestAnimDict
  arg5 = cmgCall.rollAnims
  arg5 = arg5.dict
  arg4(arg5)
  arg4 = IsEntityPlayingAnim
  arg5 = arg1
  workValue23 = cmgCall.rollAnims
  workValue23 = workValue23.dict
  vector3Builder2 = arg2.currentClipName
  workValue29 = 3
  arg4 = arg4(arg5, workValue23, vector3Builder2, workValue29)
  if not arg4 then
    arg4 = TaskPlayAnim
    arg5 = arg1
    workValue23 = cmgCall.rollAnims
    workValue23 = workValue23.dict
    vector3Builder2 = arg2.currentClipName
    workValue29 = 1.0
    workValue30 = 1.0
    workValue32 = -1
    numberValue2 = 1
    numberValue4 = 1.0
    workValue = false
    workValue3 = false
    mathHelper = false
    -- Beginner: Play an animation on a ped.
    arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper)
  end
  arg4 = rageUiCall4
  arg5 = arg1
  workValue23 = arg2
  vector3Builder2 = arg2.rightVector
  workValue29 = arg3
  workValue30 = 1.5
  arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30)
end
function workValue10(arg1)
  local arg2, arg3, arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4
  arg2 = GetFrameTime
  arg2 = arg2()
  arg3 = pairs
  arg4 = dataTable9
  arg3, arg4, arg5, workValue23 = arg3(arg4)
  for vector3Builder2, workValue29 in arg3, arg4, arg5, workValue23 do
    workValue30 = workValue29.movementType
    if "Running" == workValue30 then
      workValue30 = textValue8
      workValue32 = vector3Builder2
      numberValue2 = workValue29
      numberValue4 = arg2
      workValue30(workValue32, numberValue2, numberValue4)
    else
      workValue30 = workValue29.movementType
      if "Side To Side" == workValue30 then
        workValue30 = textValue9
        workValue32 = vector3Builder2
        numberValue2 = workValue29
        numberValue4 = arg2
        workValue30(workValue32, numberValue2, numberValue4)
      else
        workValue30 = workValue29.movementType
        if "Rolling" == workValue30 then
          workValue30 = workValue9
          workValue32 = vector3Builder2
          numberValue2 = workValue29
          numberValue4 = arg2
          workValue30(workValue32, numberValue2, numberValue4)
        end
      end
    end
    workValue30 = SetEntityHeading
    workValue32 = vector3Builder2
    numberValue2 = arg1.targetForwardHeading
    -- Beginner: Change the direction an entity is facing.
    workValue30(workValue32, numberValue2)
  end
end
function workValue12(arg1)
  local arg2, arg3, arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8, flag2, flag3, numberValue9
  arg2 = pairs
  arg3 = dataTable9
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for workValue23 in arg2, arg3, arg4, arg5 do
    vector3Builder2 = HasEntityBeenDamagedByAnyPed
    workValue29 = workValue23
    vector3Builder2 = vector3Builder2(workValue29)
    if vector3Builder2 then
      vector3Builder2 = GetPedLastDamageBone
      workValue29 = workValue23
      vector3Builder2, workValue29 = vector3Builder2(workValue29)
      if vector3Builder2 then
        workValue30 = 31086 == workValue29
        workValue32 = tableHelper.headshotsOnly
        if not workValue32 or workValue30 then
          workValue32 = DeleteEntity
          numberValue2 = workValue23
          -- Beginner: Delete a GTA entity.
          workValue32(numberValue2)
          workValue32 = numberValue5
          workValue32 = workValue32 + 1
          numberValue5 = workValue32
          if workValue30 then
            workValue32 = numberValue6
            workValue32 = workValue32 + 1
            numberValue6 = workValue32
          end
          workValue32 = dataTable4
          if workValue32 then
            workValue32 = PlaySoundFrontend
            numberValue2 = -1
            numberValue4 = "Enter_1st"
            workValue = "GTAO_Magnate_Boss_Modes_Soundset"
            workValue3 = false
            workValue32(numberValue2, numberValue4, workValue, workValue3)
          end
          numberValue24 = arg1
          workValue32 = dataTable9
          workValue32[workValue23] = nil
          break
        end
        workValue32 = SetEntityHealth
        numberValue2 = workValue23
        numberValue4 = cmgCall.fakeEntityHealth
        workValue32(numberValue2, numberValue4)
        workValue32 = ClearPedLastDamageBone
        numberValue2 = workValue23
        workValue32(numberValue2)
        workValue32 = ClearPedDecorations
        numberValue2 = workValue23
        workValue32(numberValue2)
      end
      workValue30 = dataTable4
      if workValue30 then
        workValue30 = PlaySoundFrontend
        workValue32 = -1
        numberValue2 = "Enter_1st"
        numberValue4 = "GTAO_Biker_Modes_Soundset"
        workValue = false
        workValue30(workValue32, numberValue2, numberValue4, workValue)
      end
      workValue30 = ClearEntityLastDamageEntity
      workValue32 = workValue23
      workValue30(workValue32)
    end
    vector3Builder2 = CMG
    vector3Builder2 = vector3Builder2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    vector3Builder2 = vector3Builder2()
    workValue29 = GetEntityCoords
    workValue30 = workValue23
    workValue32 = true
    -- Beginner: result below is entityCoords.
    workValue29 = workValue29(workValue30, workValue32)
    workValue30 = cmgCall3.drawLines
    if workValue30 then
      workValue30 = DrawLine
      workValue32 = vector3Builder2.x
      numberValue2 = vector3Builder2.y
      numberValue4 = vector3Builder2.z
      workValue = workValue29.x
      workValue3 = workValue29.y
      mathHelper = workValue29.z
      numberValue8 = 255
      flag2 = 0
      flag3 = 0
      numberValue9 = 255
      workValue30(workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8, flag2, flag3, numberValue9)
    end
  end
end
function workValue14(arg1, arg2)
  local arg3, arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32
  arg3 = pairs
  arg4 = dataTable9
  arg3, arg4, arg5, workValue23 = arg3(arg4)
  for vector3Builder2, workValue29 in arg3, arg4, arg5, workValue23 do
    workValue30 = workValue29.createdTime
    workValue30 = arg2 - workValue30
    workValue32 = arg1.targetDurationMsec
    if workValue30 > workValue32 then
      workValue30 = DeleteEntity
      workValue32 = vector3Builder2
      -- Beginner: Delete a GTA entity.
      workValue30(workValue32)
      workValue30 = dataTable9
      workValue30[vector3Builder2] = nil
    end
  end
end
function workValue15()
  local arg1, arg2, arg3, arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetSelectedPedWeapon
  arg3 = arg1
  -- Beginner: result below is weaponHash.
  arg2 = arg2(arg3)
  arg3 = GetAmmoInClip
  arg4 = arg1
  arg5 = arg2
  workValue23 = 0
  arg3, arg4 = arg3(arg4, arg5, workValue23)
  if not arg3 then
    return
  end
  arg5 = numberValue3
  if arg4 > arg5 then
    numberValue3 = arg4
  end
  arg5 = numberValue3
  arg5 = arg5 - arg4
  if arg5 > 0 then
    workValue23 = numberValue7
    workValue23 = workValue23 + arg5
    numberValue7 = workValue23
    workValue23 = GetMaxAmmoInClip
    vector3Builder2 = arg1
    workValue29 = arg2
    workValue30 = false
    workValue23 = workValue23(vector3Builder2, workValue29, workValue30)
    vector3Builder2 = SetAmmoInClip
    workValue29 = arg1
    workValue30 = arg2
    workValue32 = workValue23
    vector3Builder2(workValue29, workValue30, workValue32)
    numberValue3 = workValue23
  end
end
function workValue16(arg1, arg2)
  local arg3, arg4, arg5, workValue23, vector3Builder2
  arg3 = arg1.timeToCompleteMsec
  arg4 = arg1.startTime
  arg4 = arg2 - arg4
  arg3 = arg3 - arg4
  arg4 = arg1.numTargets
  arg5 = arg1.numSpawned
  arg4 = arg4 - arg5
  arg5 = arg3
  workValue23 = table
  workValue23 = workValue23.count
  vector3Builder2 = dataTable9
  -- Beginner: result below is count.
  workValue23 = workValue23(vector3Builder2)
  workValue23 = arg4 + workValue23
  return arg5, workValue23
end
function workValue17(arg1, arg2)
  local arg3, arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue
  arg3 = CMG
  arg3 = arg3.createTimerBars
  -- Beginner: result below is timerBars.
  arg3 = arg3()
  arg4 = numberValue5
  if arg1 then
    arg4 = arg1.numSpawned
  end
  if arg4 > 0 then
    arg5 = numberValue6
    arg5 = arg4 - arg5
    arg5 = arg5 / arg4
    workValue23 = 1.0
    arg5 = workValue23 - arg5
    arg5 = arg5 * 100.0
    workValue23 = arg3.push
    vector3Builder2 = "~y~Headshots"
    workValue29 = string
    workValue29 = workValue29.format
    workValue30 = "%s%%"
    workValue32 = math
    workValue32 = workValue32.rounddp
    numberValue2 = arg5
    numberValue4 = 1
    workValue32, numberValue2, numberValue4, workValue = workValue32(numberValue2, numberValue4)
    workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue = workValue29(workValue30, workValue32, numberValue2, numberValue4, workValue)
    workValue23(vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue)
  else
    arg5 = arg3.push
    workValue23 = "~y~Headshots"
    vector3Builder2 = "N/A"
    arg5(workValue23, vector3Builder2)
  end
  arg5 = numberValue7
  if arg1 then
    workValue23 = arg1.numSpawned
    vector3Builder2 = numberValue5
    workValue23 = workValue23 - vector3Builder2
    vector3Builder2 = numberValue7
    arg5 = vector3Builder2 + workValue23
  end
  if arg5 > 0 then
    workValue23 = numberValue5
    workValue23 = arg5 - workValue23
    workValue23 = workValue23 / arg5
    vector3Builder2 = 1.0
    workValue23 = vector3Builder2 - workValue23
    workValue23 = workValue23 * 100.0
    vector3Builder2 = arg3.push
    workValue29 = "~y~Accuracy"
    workValue30 = string
    workValue30 = workValue30.format
    workValue32 = "%s%%"
    numberValue2 = math
    numberValue2 = numberValue2.rounddp
    numberValue4 = workValue23
    workValue = 1
    numberValue2, numberValue4, workValue = numberValue2(numberValue4, workValue)
    workValue30, workValue32, numberValue2, numberValue4, workValue = workValue30(workValue32, numberValue2, numberValue4, workValue)
    vector3Builder2(workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue)
  else
    workValue23 = arg3.push
    vector3Builder2 = "~y~Accuracy"
    workValue29 = "N/A"
    workValue23(vector3Builder2, workValue29)
  end
  if arg1 then
    workValue23 = arg1.startTime
    if workValue23 then
      workValue23 = workValue16
      vector3Builder2 = arg1
      workValue29 = arg2
      workValue23, vector3Builder2 = workValue23(vector3Builder2, workValue29)
      workValue29 = 15000
      if workValue23 < workValue29 then
        workValue29 = "~r~"
        if workValue29 then
          goto flow_label_92
        end
      end
      workValue29 = "~y~"
      ::flow_label_92::
      workValue30 = arg3.push
      workValue32 = string
      workValue32 = workValue32.format
      numberValue2 = "%sCountdown"
      numberValue4 = workValue29
      workValue32 = workValue32(numberValue2, numberValue4)
      numberValue2 = tostring
      numberValue4 = math
      numberValue4 = numberValue4.floor
      workValue = workValue23 / 1000
      numberValue4, workValue = numberValue4(workValue)
      numberValue2, numberValue4, workValue = numberValue2(numberValue4, workValue)
      workValue30(workValue32, numberValue2, numberValue4, workValue)
      workValue30 = arg3.push
      workValue32 = "~g~Targets Left"
      numberValue2 = tostring
      numberValue4 = vector3Builder2
      numberValue2, numberValue4, workValue = numberValue2(numberValue4)
      workValue30(workValue32, numberValue2, numberValue4, workValue)
    end
  end
  workValue23 = arg3.draw
  workValue23()
end
function workValue18()
  local arg1, arg2, arg3, arg4, arg5, workValue23
  arg1 = RageUI
  arg1 = arg1.IsAnyMenuOfTypeVisible
  arg2 = "aimtraining"
  arg1 = arg1(arg2)
  if not arg1 then
    arg2 = flag8
    if arg2 then
      arg2 = drawNativeNotification
      arg3 = "Press ~INPUT_INTERACTION_MENU~ to bring up the menu again."
      -- Beginner: Show a GTA-style notification/help prompt.
      arg2(arg3)
    end
  end
  if not arg1 then
    arg2 = IsControlJustPressed
    arg3 = 0
    arg4 = 244
    arg2 = arg2(arg3, arg4)
    if arg2 then
      arg2 = RageUI
      arg2 = arg2.Visible
      arg3 = RMenu
      arg4 = arg3
      arg3 = arg3.Get
      arg5 = "aimtraining"
      workValue23 = "mainmenu"
      -- Beginner: result below is menu.
      arg3 = arg3(arg4, arg5, workValue23)
      arg4 = true
      arg2(arg3, arg4)
    end
  end
  flag8 = arg1
end
function workValue19(arg1, arg2)
  local arg3, arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue
  arg3 = arg1.isEnding
  if not arg3 then
    arg3 = arg1.startTime
    if arg3 then
      goto flow_label_8
    end
  end
  return
  ::flow_label_8::
  arg3 = workValue16
  arg4 = arg1
  arg5 = arg2
  arg3, arg4 = arg3(arg4, arg5)
  if 0 == arg4 then
    arg1.isEnding = true
    arg5 = GetHashKey
    workValue23 = tostring
    vector3Builder2 = arg1.token
    workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue = workValue23(vector3Builder2)
    -- Beginner: result below is hash.
    arg5 = arg5(workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue)
    workValue23 = arg1.startTime
    workValue23 = arg2 - workValue23
    vector3Builder2 = TriggerServerEvent
    workValue29 = "5e8e59e7f6"
    workValue30 = arg5
    workValue32 = workValue23
    numberValue2 = numberValue5
    numberValue4 = numberValue6
    workValue = numberValue7
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5e8e59e7f6".
    vector3Builder2(workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue)
  elseif 0 == arg3 then
    workValue28.isEnding = true
    arg5 = TriggerServerEvent
    workValue23 = "302b46f2b0"
    vector3Builder2 = true
    arg5(workValue23, vector3Builder2)
  end
end
function workValue20()
  local arg1, arg2, arg3, arg4, arg5, workValue23
  arg1 = workValue4
  if not arg1 then
    return
  end
  arg1 = cmgCall.locations
  arg2 = workValue4
  arg1 = arg1[arg2]
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = workValue8
  arg3 = arg3()
  if not arg3 then
    return
  end
  arg3 = textValue6
  arg4 = arg2
  arg5 = arg1
  workValue23 = workValue28
  arg3(arg4, arg5, workValue23)
  arg3 = textValue7
  arg4 = workValue28
  arg3(arg4)
  arg3 = workValue10
  arg4 = arg1
  arg3(arg4)
  arg3 = workValue12
  arg4 = arg2
  arg3(arg4)
  arg3 = workValue28
  if arg3 then
    arg3 = workValue14
    arg4 = workValue28
    arg5 = arg2
    arg3(arg4, arg5)
  end
  arg3 = workValue15
  arg3()
  arg3 = workValue17
  arg4 = workValue28
  arg5 = arg2
  arg3(arg4, arg5)
  arg3 = workValue18
  arg3()
  arg3 = workValue28
  if arg3 then
    arg3 = workValue19
    arg4 = workValue28
    arg5 = arg2
    arg3(arg4, arg5)
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
iterator = workValue20
eventRegistration = "Aim Training"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(iterator, eventRegistration)
cmgCall4 = AddEventHandler
iterator = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function eventRegistration(arg1)
  local arg2
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = workValue6
    arg2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall4(iterator, eventRegistration)
-- Beginner: this function runs when client event "onResourceStop" fires.
function cmgCall4(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.getPlayerBucket
  arg2 = arg2()
  if 0 ~= arg2 then
    return
  end
  arg2 = drawNativeNotification
  arg3 = "Press ~INPUT_CONTEXT~ to enter aim training."
  -- Beginner: Show a GTA-style notification/help prompt.
  arg2(arg3)
  arg2 = IsControlJustPressed
  arg3 = 0
  arg4 = 51
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = TriggerServerEvent
    arg3 = "8068631044"
    arg4 = arg1.locationName
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8068631044".
    arg2(arg3, arg4)
  end
end
iterator = pairs
eventRegistration = cmgCall.locations
iterator, eventRegistration, textValue10, dataTable = iterator(eventRegistration)
for dataTable2, dataTable3 in iterator, eventRegistration, textValue10, dataTable do
  cmgCall5 = CMG
  cmgCall5 = cmgCall5.createArea
  stringHelper = string
  stringHelper = stringHelper.format
  textValue11 = "aimtraining_%s_enter"
  numberValue19 = dataTable2
  stringHelper = stringHelper(textValue11, numberValue19)
  textValue11 = dataTable3.enterPosition
  numberValue19 = 1.5
  numberValue20 = 2.0
  function position()
    local arg1, arg2
  end
  function textValue13()
    local arg1, arg2
  end
  flag9 = cmgCall4
  dataTable5 = {}
  dataTable5.locationName = dataTable2
  -- Beginner: Create an interaction area around a world position.
  cmgCall5(stringHelper, textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5)
  cmgCall5 = tCMG
  cmgCall5 = cmgCall5.addBlip
  stringHelper = dataTable3.enterPosition
  stringHelper = stringHelper.x
  textValue11 = dataTable3.enterPosition
  textValue11 = textValue11.y
  numberValue19 = dataTable3.enterPosition
  numberValue19 = numberValue19.z
  numberValue20 = 390
  position = nil
  textValue13 = "Aim Training"
  -- Beginner: Create a minimap blip.
  cmgCall5(stringHelper, textValue11, numberValue19, numberValue20, position, textValue13)
end
iterator = pairs
eventRegistration = cmgCall.lockedDoors
iterator, eventRegistration, textValue10, dataTable = iterator(eventRegistration)
for dataTable2, dataTable3 in iterator, eventRegistration, textValue10, dataTable do
  cmgCall5 = GetHashKey
  stringHelper = string
  stringHelper = stringHelper.format
  textValue11 = "aimtraining_%s"
  numberValue19 = dataTable2
  stringHelper, textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14, numberValue22, numberValue23, workValue25, workValue26, workValue27, dataTable6 = stringHelper(textValue11, numberValue19)
  -- Beginner: result below is hash.
  cmgCall5 = cmgCall5(stringHelper, textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14, numberValue22, numberValue23, workValue25, workValue26, workValue27, dataTable6)
  stringHelper = AddDoorToSystem
  textValue11 = cmgCall5
  numberValue19 = dataTable3.modelHash
  numberValue20 = dataTable3.position
  numberValue20 = numberValue20.x
  position = dataTable3.position
  position = position.y
  textValue13 = dataTable3.position
  textValue13 = textValue13.z
  flag9 = false
  dataTable5 = false
  vector3Builder = false
  stringHelper(textValue11, numberValue19, numberValue20, position, textValue13, flag9, dataTable5, vector3Builder)
  stringHelper = DoorSystemSetDoorState
  textValue11 = cmgCall5
  numberValue19 = 4
  numberValue20 = false
  position = false
  stringHelper(textValue11, numberValue19, numberValue20, position)
end
function iterator()
  local arg1, arg2, arg3
  arg1 = drawNativeNotification
  arg2 = "Press ~INPUT_CONTEXT~ to enter leave training."
  -- Beginner: Show a GTA-style notification/help prompt.
  arg1(arg2)
  arg1 = IsControlJustPressed
  arg2 = 0
  arg3 = 51
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = TriggerServerEvent
    arg2 = "9d2ccf39a9"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9d2ccf39a9".
    arg1(arg2)
  end
end
eventRegistration = RegisterNetEvent
textValue10 = "671e105ec5"
-- Beginner: this function handles network event "671e105ec5".
function dataTable(arg1)
  local arg2, arg3, arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2
  arg2 = workValue4
  workValue4 = arg1
  arg3 = workValue4
  if arg3 then
    arg3 = cmgCall.locations
    arg4 = workValue4
    arg3 = arg3[arg4]
    arg4 = tCMG
    arg4 = arg4.teleport
    arg5 = arg3.leavePosition
    arg5 = arg5.x
    workValue23 = arg3.leavePosition
    workValue23 = workValue23.y
    vector3Builder2 = arg3.leavePosition
    vector3Builder2 = vector3Builder2.z
    workValue29 = false
    arg4(arg5, workValue23, vector3Builder2, workValue29)
    arg4 = RageUI
    arg4 = arg4.Visible
    arg5 = RMenu
    workValue23 = arg5
    arg5 = arg5.Get
    vector3Builder2 = "aimtraining"
    workValue29 = "mainmenu"
    -- Beginner: result below is menu.
    arg5 = arg5(workValue23, vector3Builder2, workValue29)
    workValue23 = true
    arg4(arg5, workValue23)
    arg4 = CMG
    arg4 = arg4.createArea
    arg5 = "aimtraining_leave"
    workValue23 = arg3.leavePosition
    vector3Builder2 = 1.5
    workValue29 = 2.0
    function workValue30()
      local arg12, arg22
    end
    function workValue32()
      local arg12, arg22
    end
    numberValue2 = iterator
    -- Beginner: Create an interaction area around a world position.
    arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2)
    arg4 = CMG
    arg4 = arg4.setSwitchGunEnabled
    arg5 = false
    arg4(arg5)
  else
    arg3 = workValue7
    arg3()
    arg3 = cmgCall.locations
    arg3 = arg3[arg2]
    arg4 = tCMG
    arg4 = arg4.teleport
    arg5 = arg3.enterPosition
    arg5 = arg5.x
    workValue23 = arg3.enterPosition
    workValue23 = workValue23.y
    vector3Builder2 = arg3.enterPosition
    vector3Builder2 = vector3Builder2.z
    workValue29 = false
    arg4(arg5, workValue23, vector3Builder2, workValue29)
    arg4 = RageUI
    arg4 = arg4.Visible
    arg5 = RMenu
    workValue23 = arg5
    arg5 = arg5.Get
    vector3Builder2 = "aimtraining"
    workValue29 = "mainmenu"
    -- Beginner: result below is menu.
    arg5 = arg5(workValue23, vector3Builder2, workValue29)
    workValue23 = false
    arg4(arg5, workValue23)
    arg4 = tCMG
    arg4 = arg4.removeArea
    arg5 = "aimtraining_leave"
    arg4(arg5)
    arg4 = CMG
    arg4 = arg4.setSwitchGunEnabled
    arg5 = true
    arg4(arg5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "671e105ec5".
eventRegistration(textValue10, dataTable)
eventRegistration = CMG
eventRegistration = eventRegistration.registerDevMenuItems
textValue10 = "Aim Training"
function dataTable()
  local arg1, arg2, arg3, arg4, arg5, workValue23
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Debug Lines"
  arg3 = "Whether to draw debug lines for the targets."
  arg4 = cmgCall3.drawLines
  arg5 = {}
  function workValue23(arg12, arg22, arg32, arg42)
    cmgCall3.drawLines = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, arg5, workValue23)
end
eventRegistration(textValue10, dataTable)
eventRegistration = RegisterNetEvent
textValue10 = "9a918b808a"
-- Beginner: this function handles network event "9a918b808a".
function dataTable(arg1, arg2)
  local arg3, arg4
  arg3 = workValue7
  arg3()
  arg3 = table
  arg3 = arg3.copy
  arg4 = cmgCall.challenges
  arg4 = arg4[arg1]
  arg3 = arg3(arg4)
  workValue28 = arg3
  workValue28.token = arg2
  workValue28.numSpawned = 0
  arg3 = workValue28.settings
  tableHelper = arg3
  arg3 = RageUI
  arg3 = arg3.CloseAll
  arg3()
  arg3 = CMG
  arg3 = arg3.showCountdownTimer
  arg4 = 3
  arg3(arg4)
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  workValue28.startTime = arg3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9a918b808a".
eventRegistration(textValue10, dataTable)
eventRegistration = RegisterNetEvent
textValue10 = "302b46f2b0"
-- Beginner: this function handles network event "302b46f2b0".
function dataTable(arg1, arg2)
  local arg3, arg4
  arg3 = workValue7
  arg3()
  if arg1 then
    arg3 = notify
    arg4 = "~r~Failed to complete challenge in time."
    -- Beginner: Show a notification to the player.
    arg3(arg4)
  elseif arg2 then
    arg3 = notify
    arg4 = "~g~You succesfully completed the challenge!"
    arg3(arg4)
  else
    arg3 = notify
    arg4 = "~y~Challenge stopped by user."
    -- Beginner: Show a notification to the player.
    arg3(arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "302b46f2b0".
eventRegistration(textValue10, dataTable)
eventRegistration = CMG
function textValue10()
  local arg1, arg2
  arg1 = workValue4
  if arg1 then
    arg1 = true
    if arg1 then
      goto flow_label_8
    end
  end
  arg1 = false
  ::flow_label_8::
  return arg1
end
eventRegistration.isAimTraining = textValue10
eventRegistration = 0
textValue10 = 0
dataTable = {}
dataTable2 = {}
dataTable3 = {}
cmgCall5 = 1
function stringHelper(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = IsNamedRendertargetRegistered
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = RegisterNamedRendertarget
    arg4 = arg1
    arg5 = false
    arg3(arg4, arg5)
  end
  arg3 = IsNamedRendertargetLinked
  arg4 = arg2
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = LinkNamedRendertarget
    arg4 = arg2
    arg3(arg4)
  end
  arg3 = IsNamedRendertargetLinked
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = GetNamedRendertargetRenderId
    arg4 = arg1
    return arg3(arg4)
  else
    arg3 = 0
    return arg3
  end
end
function textValue11(arg1)
  local arg2, arg3, arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = cmgCall.statsBoardModel
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg2(arg3)
  arg2 = CreateObject
  arg3 = cmgCall.statsBoardModel
  arg4 = arg1.position
  arg4 = arg4.x
  arg5 = arg1.position
  arg5 = arg5.y
  workValue23 = arg1.position
  workValue23 = workValue23.z
  vector3Builder2 = false
  workValue29 = false
  workValue30 = false
  -- Beginner: result below is objectEntity.
  arg2 = arg2(arg3, arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30)
  eventRegistration = arg2
  arg2 = SetModelAsNoLongerNeeded
  arg3 = cmgCall.statsBoardModel
  arg2(arg3)
  arg2 = SetEntityHeading
  arg3 = eventRegistration
  arg4 = arg1.position
  arg4 = arg4.w
  -- Beginner: Change the direction an entity is facing.
  arg2(arg3, arg4)
  arg2 = SetEntityLodDist
  arg3 = eventRegistration
  arg4 = 75
  arg2(arg3, arg4)
  arg2 = stringHelper
  arg3 = "cmgtv9"
  arg4 = cmgCall.statsBoardModel
  arg2 = arg2(arg3, arg4)
  textValue10 = arg2
  arg2 = TriggerServerEvent
  arg3 = "689c64f285"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "689c64f285".
  arg2(arg3)
end
function numberValue19()
  local arg1, arg2
  arg1 = DeleteEntity
  arg2 = eventRegistration
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = 0
  eventRegistration = arg1
  arg1 = ReleaseNamedRendertarget
  arg2 = "cmgtv9"
  arg1(arg2)
  arg1 = 0
  textValue10 = arg1
end
numberValue20 = {}
position = {}
textValue13 = 255
flag9 = 215
dataTable5 = 0
position[1] = textValue13
position[2] = flag9
position[3] = dataTable5
textValue13 = {}
flag9 = 192
dataTable5 = 192
vector3Builder = 192
textValue13[1] = flag9
textValue13[2] = dataTable5
textValue13[3] = vector3Builder
flag9 = {}
dataTable5 = 140
vector3Builder = 120
numberValue21 = 83
flag9[1] = dataTable5
flag9[2] = vector3Builder
flag9[3] = numberValue21
numberValue20[1] = position
numberValue20[2] = textValue13
numberValue20[3] = flag9
function position(arg1)
  local arg2, arg3, arg4, arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8, flag2, flag3, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, flag4, flag5, numberValue18
  arg2 = arg1.distance
  if arg2 > 50.0 then
    return
  end
  arg2 = SetTextRenderId
  arg3 = textValue10
  arg2(arg3)
  arg2 = SetScriptGfxDrawOrder
  arg3 = 4
  arg2(arg3)
  arg2 = SetScriptGfxDrawBehindPausemenu
  arg3 = true
  arg2(arg3)
  arg2 = "Top Completed"
  arg3 = dataTable3
  arg4 = cmgCall5
  if 2 == arg4 then
    arg2 = "Top Headshots"
    arg3 = dataTable2
  else
    arg4 = cmgCall5
    if 3 == arg4 then
      arg2 = "Top Accuracy"
      arg3 = dataTable
    end
  end
  arg4 = DrawAdvancedText
  arg5 = 0.6
  workValue23 = 0.0
  vector3Builder2 = 0.005
  workValue29 = 0.0028
  workValue30 = 0.7
  workValue32 = arg2
  numberValue2 = 248
  numberValue4 = 246
  workValue = 240
  workValue3 = 200
  mathHelper = 4
  numberValue8 = 0
  arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8)
  arg4 = DrawAdvancedText
  arg5 = 0.1
  workValue23 = 0.17
  vector3Builder2 = 0.005
  workValue29 = 0.0028
  workValue30 = 0.4
  workValue32 = "Name"
  numberValue2 = 248
  numberValue4 = 246
  workValue = 240
  workValue3 = 255
  mathHelper = 4
  numberValue8 = 1
  arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8)
  arg4 = DrawAdvancedText
  arg5 = 0.3
  workValue23 = 0.17
  vector3Builder2 = 0.005
  workValue29 = 0.0028
  workValue30 = 0.4
  workValue32 = "Perm ID"
  numberValue2 = 248
  numberValue4 = 246
  workValue = 240
  workValue3 = 255
  mathHelper = 4
  numberValue8 = 1
  arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8)
  arg4 = DrawAdvancedText
  arg5 = 0.5
  workValue23 = 0.17
  vector3Builder2 = 0.005
  workValue29 = 0.0028
  workValue30 = 0.4
  workValue32 = "Challenge"
  numberValue2 = 248
  numberValue4 = 246
  workValue = 240
  workValue3 = 255
  mathHelper = 4
  numberValue8 = 1
  arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8)
  arg4 = DrawAdvancedText
  arg5 = 0.9
  workValue23 = 0.17
  vector3Builder2 = 0.005
  workValue29 = 0.0028
  workValue30 = 0.4
  workValue32 = "Percent"
  numberValue2 = 248
  numberValue4 = 246
  workValue = 240
  workValue3 = 255
  mathHelper = 4
  numberValue8 = 1
  arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8)
  arg4 = DrawRect
  arg5 = 0.5
  workValue23 = 0.26
  vector3Builder2 = 0.95
  workValue29 = 0.005
  workValue30 = 248
  workValue32 = 246
  numberValue2 = 240
  numberValue4 = 255
  arg4(arg5, workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4)
  arg4 = 1
  arg5 = pairs
  workValue23 = arg3
  arg5, workValue23, vector3Builder2, workValue29 = arg5(workValue23)
  for workValue30, workValue32 in arg5, workValue23, vector3Builder2, workValue29 do
    numberValue2 = pairs
    numberValue4 = workValue32
    numberValue2, numberValue4, workValue, workValue3 = numberValue2(numberValue4)
    for mathHelper, numberValue8 in numberValue2, numberValue4, workValue, workValue3 do
      flag2 = numberValue20
      flag2 = flag2[mathHelper]
      if flag2 and numberValue8 then
        flag3 = DrawAdvancedText
        numberValue9 = 0.1
        numberValue10 = 0.07 * arg4
        numberValue10 = 0.205 + numberValue10
        numberValue11 = 0.005
        numberValue12 = 0.0028
        numberValue13 = 0.34
        numberValue14 = numberValue8[1]
        numberValue15 = flag2[1]
        numberValue16 = flag2[2]
        numberValue17 = flag2[3]
        flag4 = 255
        flag5 = 4
        numberValue18 = 1
        flag3(numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, flag4, flag5, numberValue18)
        flag3 = DrawAdvancedText
        numberValue9 = 0.3
        numberValue10 = 0.07 * arg4
        numberValue10 = 0.205 + numberValue10
        numberValue11 = 0.005
        numberValue12 = 0.0028
        numberValue13 = 0.35
        numberValue14 = numberValue8[2]
        numberValue15 = flag2[1]
        numberValue16 = flag2[2]
        numberValue17 = flag2[3]
        flag4 = 255
        flag5 = 4
        numberValue18 = 1
        flag3(numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, flag4, flag5, numberValue18)
        flag3 = DrawAdvancedText
        numberValue9 = 0.5
        numberValue10 = 0.07 * arg4
        numberValue10 = 0.205 + numberValue10
        numberValue11 = 0.005
        numberValue12 = 0.0028
        numberValue13 = 0.35
        numberValue14 = numberValue8[3]
        numberValue15 = flag2[1]
        numberValue16 = flag2[2]
        numberValue17 = flag2[3]
        flag4 = 255
        flag5 = 4
        numberValue18 = 1
        flag3(numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, flag4, flag5, numberValue18)
        flag3 = DrawAdvancedText
        numberValue9 = 0.9
        numberValue10 = 0.07 * arg4
        numberValue10 = 0.205 + numberValue10
        numberValue11 = 0.005
        numberValue12 = 0.0028
        numberValue13 = 0.35
        numberValue14 = numberValue8[4]
        numberValue15 = flag2[1]
        numberValue16 = flag2[2]
        numberValue17 = flag2[3]
        flag4 = 255
        flag5 = 4
        numberValue18 = 1
        flag3(numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, flag4, flag5, numberValue18)
      end
      arg4 = arg4 + 1
    end
  end
  arg5 = SetTextRenderId
  workValue23 = GetDefaultScriptRendertargetRenderId
  workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8, flag2, flag3, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, flag4, flag5, numberValue18 = workValue23()
  arg5(workValue23, vector3Builder2, workValue29, workValue30, workValue32, numberValue2, numberValue4, workValue, workValue3, mathHelper, numberValue8, flag2, flag3, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, flag4, flag5, numberValue18)
  arg5 = SetScriptGfxDrawBehindPausemenu
  workValue23 = false
  arg5(workValue23)
  arg5 = arg1.distance
  workValue23 = 2.5
  if arg5 < workValue23 then
    arg5 = drawNativeNotification
    workValue23 = "Press ~INPUT_CONTEXT~ to switch page"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg5(workValue23)
    arg5 = IsControlJustPressed
    workValue23 = 0
    vector3Builder2 = 51
    arg5 = arg5(workValue23, vector3Builder2)
    if arg5 then
      arg5 = TriggerServerEvent
      workValue23 = "908ae89bda"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "908ae89bda".
      arg5(workValue23)
    end
  end
end
textValue13 = pairs
flag9 = cmgCall.statsBoardLocations
textValue13, flag9, dataTable5, vector3Builder = textValue13(flag9)
for numberValue21, flag10 in textValue13, flag9, dataTable5, vector3Builder do
  cmgCall6 = CMG
  cmgCall6 = cmgCall6.createArea
  stringHelper2 = string
  stringHelper2 = stringHelper2.format
  textValue14 = "aimtraining_tv_%s"
  numberValue22 = numberValue21
  stringHelper2 = stringHelper2(textValue14, numberValue22)
  textValue14 = flag10.xyz
  numberValue22 = 100.0
  numberValue23 = 500.0
  workValue25 = textValue11
  workValue26 = numberValue19
  workValue27 = position
  dataTable6 = {}
  dataTable6.position = flag10
  -- Beginner: Create an interaction area around a world position.
  cmgCall6(stringHelper2, textValue14, numberValue22, numberValue23, workValue25, workValue26, workValue27, dataTable6)
end
textValue13 = AddEventHandler
flag9 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function dataTable5(arg1)
  local arg2, arg3
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = DoesEntityExist
    arg3 = eventRegistration
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = DeleteEntity
      arg3 = eventRegistration
      -- Beginner: Delete a GTA entity.
      arg2(arg3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
textValue13(flag9, dataTable5)
textValue13 = RegisterNetEvent
flag9 = "50ef81cac8"
-- Beginner: this function handles network event "50ef81cac8".
function dataTable5(arg1, arg2, arg3, arg4)
  dataTable3 = arg1
  dataTable2 = arg2
  dataTable = arg3
  cmgCall5 = arg4
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "50ef81cac8".
textValue13(flag9, dataTable5)
textValue13 = RegisterNetEvent
flag9 = "908ae89bda"
-- Beginner: this function handles network event "908ae89bda".
function dataTable5(arg1)
  local arg2
  cmgCall5 = arg1
end
textValue13(flag9, dataTable5)
-- Beginner: this function handles network event "908ae89bda".
function textValue13()
  local arg1, arg2
  arg1 = drawNativeNotification
  arg2 = "This is not a gun store, look elsewhere."
  -- Beginner: Show a GTA-style notification/help prompt.
  arg1(arg2)
end
flag9 = CMG
flag9 = flag9.createDynamicPed
dataTable5 = -1782092083
vector3Builder = vector3
numberValue21 = 22.523078918457
flag10 = -1105.4901123047
cmgCall6 = 29.785400390625
vector3Builder = vector3Builder(numberValue21, flag10, cmgCall6)
numberValue21 = 161.57479858398
flag10 = true
cmgCall6 = nil
stringHelper2 = nil
textValue14 = 25.0
numberValue22 = nil
function numberValue23()
  local arg1, arg2
end
flag9(dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14, numberValue22, numberValue23)
flag9 = CMG
flag9 = flag9.createArea
dataTable5 = "aim_training_goaway"
vector3Builder = vector3
numberValue21 = 21.84729385376
flag10 = -1106.693359375
cmgCall6 = 29.796985626221
vector3Builder = vector3Builder(numberValue21, flag10, cmgCall6)
numberValue21 = 2.0
flag10 = 2.0
function cmgCall6()
  local arg1, arg2
end
function stringHelper2()
  local arg1, arg2
end
textValue14 = textValue13
-- Beginner: Create an interaction area around a world position.
flag9(dataTable5, vector3Builder, numberValue21, flag10, cmgCall6, stringHelper2, textValue14)