--[[
    Beginner Guide: cl_crosshair.lua
    ================================

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
    BEGINNER GUIDE — Crosshair
    ==========================

    File: cmg/prod/client/misc/cl_crosshair.lua
    Purpose: This file contains general gameplay utility.

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
      * cfg/cfg_crosshair

    Commands/command-like entries found:
      * crosshair

    Example player-facing text in this file:
      * Press ~b~ENTER~w~ to enter RGB Red value
      * Enter Red Value (0-255)
      * Press ~b~ENTER~w~ to enter RGB Green value
      * Enter Green Value (0-255)
      * Press ~b~ENTER~w~ to enter RGB Blue value

]]
local cmgCall, flag2, workValue6, workValue7, workValue8, workValue10, rageUiCall4, flag4, textValue7, rageUiCall5, textValue, cmgCall2, rageUiCall2, rageUiCall3, flag, workValue5
cmgCall = CMG
cmgCall = cmgCall.loadModule
flag2 = "cfg/cfg_crosshair"
-- Beginner: result below is config.
cmgCall = cmgCall(flag2)
flag2 = false
function workValue6()
  local arg1, arg2, textValue4, textValue5, tableHelper, labelValue, workValue11, workValue12
  arg1 = 1
  arg2 = 20
  textValue4 = 1
  for textValue5 = arg1, arg2, textValue4 do
    tableHelper = table
    tableHelper = tableHelper.insert
    labelValue = cmgCall.menu
    labelValue = labelValue.length
    labelValue = labelValue.labels
    workValue11 = textValue5
    workValue12 = textValue5
    tableHelper(labelValue, workValue11, workValue12)
    tableHelper = table
    tableHelper = tableHelper.insert
    labelValue = cmgCall.menu
    labelValue = labelValue.thickness
    labelValue = labelValue.labels
    workValue11 = textValue5
    workValue12 = textValue5
    tableHelper(labelValue, workValue11, workValue12)
    tableHelper = table
    tableHelper = tableHelper.insert
    labelValue = cmgCall.menu
    labelValue = labelValue.gap
    labelValue = labelValue.labels
    workValue11 = textValue5
    workValue12 = textValue5
    tableHelper(labelValue, workValue11, workValue12)
  end
end
function workValue7()
  local arg1, arg2, textValue4, textValue5, tableHelper, labelValue, workValue11, workValue12, indexValue, textValue8, textValue2
  arg1 = workValue6
  arg1()
  arg1 = GetResourceKvpInt
  arg2 = "cmg_crosshair_enabled"
  arg1 = arg1(arg2)
  if 0 == arg1 then
    arg2 = cmgCall.options
    arg2.enabled = 0
  else
    arg2 = cmgCall.options
    arg2.enabled = arg1
  end
  arg2 = GetResourceKvpInt
  textValue4 = "cmg_gtaforce_crosshair_enabled"
  arg2 = arg2(textValue4)
  if 0 == arg2 then
    textValue4 = cmgCall.options
    textValue4.forcedGtaCrosshair = 0
  else
    textValue4 = cmgCall.options
    textValue4.forcedGtaCrosshair = arg2
  end
  textValue4 = GetResourceKvpInt
  textValue5 = "cmg_crosshair_center_dot_enabled"
  textValue4 = textValue4(textValue5)
  if 0 == textValue4 then
    textValue5 = cmgCall.options
    textValue5.centerDotEnabled = 1
  else
    textValue5 = cmgCall.options
    textValue5.centerDotEnabled = textValue4
  end
  textValue5 = GetResourceKvpInt
  tableHelper = "cmg_crosshair_visibility"
  textValue5 = textValue5(tableHelper)
  if 0 == textValue5 then
    tableHelper = cmgCall.options
    tableHelper.visibility = 1
  else
    tableHelper = cmgCall.options
    tableHelper.visibility = textValue5
  end
  tableHelper = GetResourceKvpInt
  labelValue = "cmg_crosshair_length"
  tableHelper = tableHelper(labelValue)
  if 0 == tableHelper then
    labelValue = cmgCall.options
    labelValue = labelValue.length
    labelValue.index = 1
    labelValue = cmgCall.options
    labelValue = labelValue.length
    labelValue.value = 0.002
  else
    labelValue = cmgCall.options
    labelValue = labelValue.length
    labelValue.index = tableHelper
    labelValue = cmgCall.options
    labelValue = labelValue.length
    workValue11 = cmgCall.options
    workValue11 = workValue11.length
    workValue11 = workValue11.index
    workValue11 = workValue11 * 0.001
    workValue11 = 0.001 + workValue11
    labelValue.value = workValue11
  end
  labelValue = GetResourceKvpInt
  workValue11 = "cmg_crosshair_thickness"
  labelValue = labelValue(workValue11)
  if 0 == labelValue then
    workValue11 = cmgCall.options
    workValue11 = workValue11.thickness
    workValue11.index = 1
    workValue11 = cmgCall.options
    workValue11 = workValue11.thickness
    workValue11.value = 0.001
  else
    workValue11 = cmgCall.options
    workValue11 = workValue11.thickness
    workValue11.index = labelValue
    workValue11 = cmgCall.options
    workValue11 = workValue11.thickness
    workValue12 = cmgCall.options
    workValue12 = workValue12.thickness
    workValue12 = workValue12.index
    workValue12 = 0.002 * workValue12
    workValue11.value = workValue12
  end
  workValue11 = GetResourceKvpInt
  workValue12 = "cmg_crosshair_gap"
  workValue11 = workValue11(workValue12)
  if 0 == workValue11 then
    workValue12 = cmgCall.options
    workValue12 = workValue12.gap
    workValue12.index = 1
    workValue12 = cmgCall.options
    workValue12 = workValue12.gap
    workValue12.value = 0.0
  else
    workValue12 = cmgCall.options
    workValue12 = workValue12.gap
    workValue12.index = workValue11
    workValue12 = cmgCall.options
    workValue12 = workValue12.gap
    indexValue = cmgCall.options
    indexValue = indexValue.gap
    indexValue = indexValue.index
    indexValue = indexValue * 5.0E-4
    indexValue = indexValue - 5.0E-4
    workValue12.value = indexValue
  end
  workValue12 = GetResourceKvpInt
  indexValue = "cmg_crosshair_red"
  workValue12 = workValue12(indexValue)
  if 0 == workValue12 then
    indexValue = cmgCall.options
    indexValue = indexValue.colour
    indexValue.red = 150
  else
    indexValue = cmgCall.options
    indexValue = indexValue.colour
    indexValue.red = workValue12
  end
  indexValue = GetResourceKvpInt
  textValue8 = "cmg_crosshair_green"
  indexValue = indexValue(textValue8)
  if 0 == indexValue then
    textValue8 = cmgCall.options
    textValue8 = textValue8.colour
    textValue8.green = 150
  else
    textValue8 = cmgCall.options
    textValue8 = textValue8.colour
    textValue8.green = indexValue
  end
  textValue8 = GetResourceKvpInt
  textValue2 = "cmg_crosshair_blue"
  textValue8 = textValue8(textValue2)
  if 0 == textValue8 then
    textValue2 = cmgCall.options
    textValue2 = textValue2.colour
    textValue2.blue = 150
  else
    textValue2 = cmgCall.options
    textValue2 = textValue2.colour
    textValue2.blue = textValue8
  end
end
function workValue8()
  local arg1, arg2, textValue4
  arg1 = SetResourceKvpInt
  arg2 = "cmg_crosshair_enabled"
  textValue4 = cmgCall.options
  textValue4 = textValue4.enabled
  arg1(arg2, textValue4)
  arg1 = SetResourceKvpInt
  arg2 = "cmg_gtaforce_crosshair_enabled"
  textValue4 = cmgCall.options
  textValue4 = textValue4.forcedGtaCrosshair
  arg1(arg2, textValue4)
  arg1 = SetResourceKvpInt
  arg2 = "cmg_crosshair_center_dot_enabled"
  textValue4 = cmgCall.options
  textValue4 = textValue4.centerDotEnabled
  arg1(arg2, textValue4)
  arg1 = SetResourceKvpInt
  arg2 = "cmg_crosshair_visibility"
  textValue4 = cmgCall.options
  textValue4 = textValue4.visibility
  arg1(arg2, textValue4)
  arg1 = SetResourceKvpInt
  arg2 = "cmg_crosshair_length"
  textValue4 = cmgCall.options
  textValue4 = textValue4.length
  textValue4 = textValue4.index
  arg1(arg2, textValue4)
  arg1 = SetResourceKvpInt
  arg2 = "cmg_crosshair_thickness"
  textValue4 = cmgCall.options
  textValue4 = textValue4.thickness
  textValue4 = textValue4.index
  arg1(arg2, textValue4)
  arg1 = SetResourceKvpInt
  arg2 = "cmg_crosshair_gap"
  textValue4 = cmgCall.options
  textValue4 = textValue4.gap
  textValue4 = textValue4.index
  arg1(arg2, textValue4)
  arg1 = SetResourceKvpInt
  arg2 = "cmg_crosshair_red"
  textValue4 = cmgCall.options
  textValue4 = textValue4.colour
  textValue4 = textValue4.red
  arg1(arg2, textValue4)
  arg1 = SetResourceKvpInt
  arg2 = "cmg_crosshair_blue"
  textValue4 = cmgCall.options
  textValue4 = textValue4.colour
  textValue4 = textValue4.blue
  arg1(arg2, textValue4)
  arg1 = SetResourceKvpInt
  arg2 = "cmg_crosshair_green"
  textValue4 = cmgCall.options
  textValue4 = textValue4.colour
  textValue4 = textValue4.green
  arg1(arg2, textValue4)
end
function workValue10(arg1, arg2)
  local textValue4, textValue5, tableHelper
  textValue4 = CMG
  textValue4 = textValue4.GetRageInputInt
  textValue5 = arg1
  textValue4 = textValue4(textValue5)
  textValue5 = type
  tableHelper = textValue4
  textValue5 = textValue5(tableHelper)
  if "number" == textValue5 then
    textValue5 = 255
    if textValue4 <= textValue5 and textValue4 >= 1 then
      return textValue4
  end
  else
    return arg2
  end
end
rageUiCall4 = RMenu
rageUiCall4 = rageUiCall4.Add
flag4 = "cmgcrosshair"
textValue7 = "main"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateMenu
textValue = "Crosshair"
cmgCall2 = "~b~CMG Crosshair Customisation "
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
flag = nil
workValue5 = nil
rageUiCall5, textValue, cmgCall2, rageUiCall2, rageUiCall3, flag, workValue5 = rageUiCall5(textValue, cmgCall2, rageUiCall2, rageUiCall3, flag, workValue5)
rageUiCall4(flag4, textValue7, rageUiCall5, textValue, cmgCall2, rageUiCall2, rageUiCall3, flag, workValue5)
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateWhile
flag4 = 1.0
textValue7 = RMenu
rageUiCall5 = textValue7
textValue7 = textValue7.Get
textValue = "cmgcrosshair"
cmgCall2 = "main"
-- Beginner: result below is menu.
textValue7 = textValue7(rageUiCall5, textValue, cmgCall2)
rageUiCall5 = nil
function textValue()
  local arg1, arg2, textValue4, textValue5, tableHelper, labelValue
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue4 = arg2
  arg2 = arg2.Get
  textValue5 = "cmgcrosshair"
  tableHelper = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue4, textValue5, tableHelper)
  textValue4 = true
  textValue5 = true
  tableHelper = true
  function labelValue()
    local rageUiCall, textValue3, dataTable, numberValue2, dataTable2, dataTable3, flag3, workValue13
    rageUiCall = flag2
    if not rageUiCall then
      rageUiCall = true
      flag2 = rageUiCall
    end
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue3 = "Use Custom Crosshair"
    dataTable = ""
    numberValue2 = cmgCall.options
    numberValue2 = numberValue2.enabled
    numberValue2 = 1 == numberValue2
    dataTable2 = {}
    function dataTable3()
      local arg12, arg22
    end
    function flag3()
      local arg12, arg22
      arg12 = cmgCall.options
      arg12.enabled = 1
      arg12 = workValue8
      arg12()
    end
    function workValue13()
      local arg12, arg22
      arg12 = cmgCall.options
      arg12.enabled = 0
      arg12 = workValue8
      arg12()
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiCall(textValue3, dataTable, numberValue2, dataTable2, dataTable3, flag3, workValue13)
    rageUiCall = cmgCall.options
    rageUiCall = rageUiCall.enabled
    if 1 == rageUiCall then
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Separator
      textValue3 = "~b~Crosshair Options"
      rageUiCall(textValue3)
      rageUiCall = RageUI
      rageUiCall = rageUiCall.List
      textValue3 = "Center Dot"
      dataTable = {}
      numberValue2 = "Enabled"
      dataTable2 = "Disabled"
      dataTable[1] = numberValue2
      dataTable[2] = dataTable2
      numberValue2 = cmgCall.options
      numberValue2 = numberValue2.centerDotEnabled
      dataTable2 = nil
      dataTable3 = {}
      flag3 = true
      function workValue13(arg12, arg22, arg3, arg4)
        local workValue9
        if arg22 then
          workValue9 = cmgCall.options
          workValue9 = workValue9.centerDotEnabled
          if workValue9 ~= arg4 then
            workValue9 = cmgCall.options
            workValue9.centerDotEnabled = arg4
            workValue9 = workValue8
            workValue9()
          end
        end
      end
      -- Beginner: Draw a RageUI list selector.
      rageUiCall(textValue3, dataTable, numberValue2, dataTable2, dataTable3, flag3, workValue13)
      rageUiCall = RageUI
      rageUiCall = rageUiCall.List
      textValue3 = "Visibility"
      dataTable = {}
      numberValue2 = "Always"
      dataTable2 = "While Aiming"
      dataTable[1] = numberValue2
      dataTable[2] = dataTable2
      numberValue2 = cmgCall.options
      numberValue2 = numberValue2.visibility
      dataTable2 = nil
      dataTable3 = {}
      flag3 = true
      function workValue13(arg12, arg22, arg3, arg4)
        local workValue9
        if arg22 then
          workValue9 = cmgCall.options
          workValue9 = workValue9.visibility
          if workValue9 ~= arg4 then
            workValue9 = cmgCall.options
            workValue9.visibility = arg4
            workValue9 = workValue8
            workValue9()
          end
        end
      end
      -- Beginner: Draw a RageUI list selector.
      rageUiCall(textValue3, dataTable, numberValue2, dataTable2, dataTable3, flag3, workValue13)
      rageUiCall = RageUI
      rageUiCall = rageUiCall.List
      textValue3 = "Length"
      dataTable = cmgCall.menu
      dataTable = dataTable.length
      dataTable = dataTable.labels
      numberValue2 = cmgCall.options
      numberValue2 = numberValue2.length
      numberValue2 = numberValue2.index
      dataTable2 = nil
      dataTable3 = {}
      flag3 = true
      function workValue13(arg12, arg22, arg3, arg4)
        local workValue9, numberValue3
        if arg22 then
          workValue9 = cmgCall.options
          workValue9 = workValue9.length
          workValue9 = workValue9.index
          if workValue9 ~= arg4 then
            workValue9 = cmgCall.options
            workValue9 = workValue9.length
            workValue9.index = arg4
            workValue9 = cmgCall.options
            workValue9 = workValue9.length
            numberValue3 = arg4 * 0.001
            numberValue3 = 0.001 + numberValue3
            workValue9.value = numberValue3
            workValue9 = workValue8
            workValue9()
          end
        end
      end
      -- Beginner: Draw a RageUI list selector.
      rageUiCall(textValue3, dataTable, numberValue2, dataTable2, dataTable3, flag3, workValue13)
      rageUiCall = RageUI
      rageUiCall = rageUiCall.List
      textValue3 = "Thickness"
      dataTable = cmgCall.menu
      dataTable = dataTable.thickness
      dataTable = dataTable.labels
      numberValue2 = cmgCall.options
      numberValue2 = numberValue2.thickness
      numberValue2 = numberValue2.index
      dataTable2 = nil
      dataTable3 = {}
      flag3 = true
      function workValue13(arg12, arg22, arg3, arg4)
        local workValue9, numberValue3
        if arg22 then
          workValue9 = cmgCall.options
          workValue9 = workValue9.thickness
          workValue9 = workValue9.index
          if workValue9 ~= arg4 then
            workValue9 = cmgCall.options
            workValue9 = workValue9.thickness
            workValue9.index = arg4
            workValue9 = cmgCall.options
            workValue9 = workValue9.thickness
            numberValue3 = 0.002 * arg4
            workValue9.value = numberValue3
            workValue9 = workValue8
            workValue9()
          end
        end
      end
      -- Beginner: Draw a RageUI list selector.
      rageUiCall(textValue3, dataTable, numberValue2, dataTable2, dataTable3, flag3, workValue13)
      rageUiCall = RageUI
      rageUiCall = rageUiCall.List
      textValue3 = "Gap"
      dataTable = cmgCall.menu
      dataTable = dataTable.gap
      dataTable = dataTable.labels
      numberValue2 = cmgCall.options
      numberValue2 = numberValue2.gap
      numberValue2 = numberValue2.index
      dataTable2 = nil
      dataTable3 = {}
      flag3 = true
      function workValue13(arg12, arg22, arg3, arg4)
        local workValue9, numberValue3
        if arg22 then
          workValue9 = cmgCall.options
          workValue9 = workValue9.gap
          workValue9 = workValue9.index
          if workValue9 ~= arg4 then
            workValue9 = cmgCall.options
            workValue9 = workValue9.gap
            workValue9.index = arg4
            workValue9 = cmgCall.options
            workValue9 = workValue9.gap
            numberValue3 = arg4 * 5.0E-4
            numberValue3 = numberValue3 - 5.0E-4
            workValue9.value = numberValue3
            workValue9 = workValue8
            workValue9()
          end
        end
      end
      -- Beginner: Draw a RageUI list selector.
      rageUiCall(textValue3, dataTable, numberValue2, dataTable2, dataTable3, flag3, workValue13)
      rageUiCall = RageUI
      rageUiCall = rageUiCall.SliderProgress
      textValue3 = "Red ["
      dataTable = cmgCall.options
      dataTable = dataTable.colour
      dataTable = dataTable.red
      numberValue2 = "]"
      textValue3 = textValue3 .. dataTable .. numberValue2
      dataTable = cmgCall.options
      dataTable = dataTable.colour
      dataTable = dataTable.red
      numberValue2 = 255
      dataTable2 = "Press ~b~ENTER~w~ to enter RGB Red value"
      dataTable3 = {}
      flag3 = {}
      flag3.R = 186
      flag3.G = 58
      flag3.B = 48
      flag3.A = 255
      dataTable3.ProgressBackgroundColor = flag3
      flag3 = {}
      flag3.R = 212
      flag3.G = 66
      flag3.B = 55
      flag3.A = 255
      dataTable3.ProgressColor = flag3
      flag3 = true
      function workValue13(arg12, arg22, arg3, arg4)
        local workValue9, numberValue3, textValue6, workValue14
        if arg22 then
          workValue9 = IsControlJustPressed
          numberValue3 = 0
          textValue6 = 22
          workValue9 = workValue9(numberValue3, textValue6)
          if workValue9 then
            workValue9 = cmgCall.options
            workValue9 = workValue9.colour
            numberValue3 = workValue10
            textValue6 = "Enter Red Value (0-255)"
            workValue14 = cmgCall.options
            workValue14 = workValue14.colour
            workValue14 = workValue14.red
            numberValue3 = numberValue3(textValue6, workValue14)
            workValue9.red = numberValue3
            workValue9 = workValue8
            workValue9()
          else
            workValue9 = cmgCall.options
            workValue9 = workValue9.colour
            workValue9 = workValue9.red
            if arg4 ~= workValue9 then
              workValue9 = cmgCall.options
              workValue9 = workValue9.colour
              workValue9.red = arg4
              workValue9 = workValue8
              workValue9()
            end
          end
        end
      end
      rageUiCall(textValue3, dataTable, numberValue2, dataTable2, dataTable3, flag3, workValue13)
      rageUiCall = RageUI
      rageUiCall = rageUiCall.SliderProgress
      textValue3 = "Green ["
      dataTable = cmgCall.options
      dataTable = dataTable.colour
      dataTable = dataTable.green
      numberValue2 = "]"
      textValue3 = textValue3 .. dataTable .. numberValue2
      dataTable = cmgCall.options
      dataTable = dataTable.colour
      dataTable = dataTable.green
      numberValue2 = 255
      dataTable2 = "Press ~b~ENTER~w~ to enter RGB Green value"
      dataTable3 = {}
      flag3 = {}
      flag3.R = 48
      flag3.G = 186
      flag3.B = 108
      flag3.A = 255
      dataTable3.ProgressBackgroundColor = flag3
      flag3 = {}
      flag3.R = 64
      flag3.G = 230
      flag3.B = 136
      flag3.A = 255
      dataTable3.ProgressColor = flag3
      flag3 = true
      function workValue13(arg12, arg22, arg3, arg4)
        local workValue9, numberValue3, textValue6, workValue14
        if arg22 then
          workValue9 = IsControlJustPressed
          numberValue3 = 0
          textValue6 = 22
          workValue9 = workValue9(numberValue3, textValue6)
          if workValue9 then
            workValue9 = cmgCall.options
            workValue9 = workValue9.colour
            numberValue3 = workValue10
            textValue6 = "Enter Green Value (0-255)"
            workValue14 = cmgCall.options
            workValue14 = workValue14.colour
            workValue14 = workValue14.green
            numberValue3 = numberValue3(textValue6, workValue14)
            workValue9.green = numberValue3
            workValue9 = workValue8
            workValue9()
          else
            workValue9 = cmgCall.options
            workValue9 = workValue9.colour
            workValue9 = workValue9.green
            if arg4 ~= workValue9 then
              workValue9 = cmgCall.options
              workValue9 = workValue9.colour
              workValue9.green = arg4
              workValue9 = workValue8
              workValue9()
            end
          end
        end
      end
      rageUiCall(textValue3, dataTable, numberValue2, dataTable2, dataTable3, flag3, workValue13)
      rageUiCall = RageUI
      rageUiCall = rageUiCall.SliderProgress
      textValue3 = "Blue ["
      dataTable = cmgCall.options
      dataTable = dataTable.colour
      dataTable = dataTable.blue
      numberValue2 = "]"
      textValue3 = textValue3 .. dataTable .. numberValue2
      dataTable = cmgCall.options
      dataTable = dataTable.colour
      dataTable = dataTable.blue
      numberValue2 = 255
      dataTable2 = "Press ~b~ENTER~w~ to enter RGB Blue value"
      dataTable3 = {}
      flag3 = {}
      flag3.R = 48
      flag3.G = 69
      flag3.B = 186
      flag3.A = 255
      dataTable3.ProgressBackgroundColor = flag3
      flag3 = {}
      flag3.R = 59
      flag3.G = 86
      flag3.B = 237
      flag3.A = 255
      dataTable3.ProgressColor = flag3
      flag3 = true
      function workValue13(arg12, arg22, arg3, arg4)
        local workValue9, numberValue3, textValue6, workValue14
        if arg22 then
          workValue9 = IsControlJustPressed
          numberValue3 = 0
          textValue6 = 22
          workValue9 = workValue9(numberValue3, textValue6)
          if workValue9 then
            workValue9 = cmgCall.options
            workValue9 = workValue9.colour
            numberValue3 = workValue10
            textValue6 = "Enter Blue Value (0-255)"
            workValue14 = cmgCall.options
            workValue14 = workValue14.colour
            workValue14 = workValue14.blue
            numberValue3 = numberValue3(textValue6, workValue14)
            workValue9.blue = numberValue3
            workValue9 = workValue8
            workValue9()
          else
            workValue9 = cmgCall.options
            workValue9 = workValue9.colour
            workValue9 = workValue9.blue
            if arg4 ~= workValue9 then
              workValue9 = cmgCall.options
              workValue9 = workValue9.colour
              workValue9.blue = arg4
              workValue9 = workValue8
              workValue9()
            end
          end
        end
      end
      rageUiCall(textValue3, dataTable, numberValue2, dataTable2, dataTable3, flag3, workValue13)
    else
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Checkbox
      textValue3 = "Keep GTA Crosshair Enabled"
      dataTable = "Whether the GTA crosshair should be visible at all times."
      numberValue2 = cmgCall.options
      numberValue2 = numberValue2.forcedGtaCrosshair
      numberValue2 = 1 == numberValue2
      dataTable2 = {}
      function dataTable3()
        local arg12, arg22
      end
      function flag3()
        local arg12, arg22
        arg12 = cmgCall.options
        arg12.forcedGtaCrosshair = 1
        arg12 = workValue8
        arg12()
      end
      function workValue13()
        local arg12, arg22
        arg12 = cmgCall.options
        arg12.forcedGtaCrosshair = 0
        arg12 = workValue8
        arg12()
      end
      -- Beginner: Draw a RageUI checkbox.
      rageUiCall(textValue3, dataTable, numberValue2, dataTable2, dataTable3, flag3, workValue13)
    end
  end
  arg1(arg2, textValue4, textValue5, tableHelper, labelValue)
end
rageUiCall4(flag4, textValue7, rageUiCall5, textValue)
function rageUiCall4()
  local arg1, arg2, textValue4, textValue5, tableHelper, labelValue, workValue11, workValue12, indexValue, textValue8, textValue2, workValue, workValue2, workValue3, workValue4, numberValue
  arg1 = cmgCall.options
  arg1 = arg1.gap
  arg1 = arg1.value
  arg2 = cmgCall.options
  arg2 = arg2.length
  arg2 = arg2.value
  textValue4 = cmgCall.options
  textValue4 = textValue4.thickness
  textValue4 = textValue4.value
  textValue5 = cmgCall.options
  textValue5 = textValue5.colour
  textValue5 = textValue5.red
  tableHelper = cmgCall.options
  tableHelper = tableHelper.colour
  tableHelper = tableHelper.green
  labelValue = cmgCall.options
  labelValue = labelValue.colour
  labelValue = labelValue.blue
  workValue11 = GetAspectRatio
  workValue12 = false
  workValue11 = workValue11(workValue12)
  workValue12 = cmgCall.options
  workValue12 = workValue12.centerDotEnabled
  if 1 == workValue12 then
    workValue12 = DrawRect
    indexValue = 0.5
    textValue8 = 0.5
    textValue2 = textValue4 / 2
    workValue = textValue4 / 2
    workValue = workValue * workValue11
    workValue2 = textValue5
    workValue3 = tableHelper
    workValue4 = labelValue
    numberValue = 255
    workValue12(indexValue, textValue8, textValue2, workValue, workValue2, workValue3, workValue4, numberValue)
  end
  workValue12 = DrawRect
  indexValue = 0.5
  indexValue = indexValue - arg1
  textValue8 = arg2 / 2
  indexValue = indexValue - textValue8
  textValue8 = 0.5
  textValue2 = arg2
  workValue = textValue4
  workValue2 = textValue5
  workValue3 = tableHelper
  workValue4 = labelValue
  numberValue = 255
  workValue12(indexValue, textValue8, textValue2, workValue, workValue2, workValue3, workValue4, numberValue)
  workValue12 = DrawRect
  indexValue = 0.5 + arg1
  textValue8 = arg2 / 2
  indexValue = indexValue + textValue8
  textValue8 = 0.5
  textValue2 = arg2
  workValue = textValue4
  workValue2 = textValue5
  workValue3 = tableHelper
  workValue4 = labelValue
  numberValue = 255
  workValue12(indexValue, textValue8, textValue2, workValue, workValue2, workValue3, workValue4, numberValue)
  workValue12 = DrawRect
  indexValue = 0.5
  textValue8 = arg1 * workValue11
  textValue2 = 0.5
  textValue8 = textValue2 - textValue8
  textValue2 = arg2 * workValue11
  textValue2 = textValue2 / 2
  textValue8 = textValue8 - textValue2
  textValue2 = textValue4 / workValue11
  workValue = arg2 * workValue11
  workValue2 = textValue5
  workValue3 = tableHelper
  workValue4 = labelValue
  numberValue = 255
  workValue12(indexValue, textValue8, textValue2, workValue, workValue2, workValue3, workValue4, numberValue)
  workValue12 = DrawRect
  indexValue = 0.5
  textValue8 = arg1 * workValue11
  textValue8 = 0.5 + textValue8
  textValue2 = arg2 * workValue11
  textValue2 = textValue2 / 2
  textValue8 = textValue8 + textValue2
  textValue2 = textValue4 / workValue11
  workValue = arg2 * workValue11
  workValue2 = textValue5
  workValue3 = tableHelper
  workValue4 = labelValue
  numberValue = 255
  workValue12(indexValue, textValue8, textValue2, workValue, workValue2, workValue3, workValue4, numberValue)
  workValue12 = HideHudComponentThisFrame
  indexValue = 14
  workValue12(indexValue)
end
flag4 = false
textValue7 = false
rageUiCall5 = 0
function textValue()
  local arg1, arg2, textValue4, textValue5, tableHelper
  arg1 = cmgCall.options
  arg1 = arg1.enabled
  if 1 == arg1 then
    arg1 = RageUI
    arg1 = arg1.Visible
    arg2 = RMenu
    textValue4 = arg2
    arg2 = arg2.Get
    textValue5 = "cmgcrosshair"
    tableHelper = "main"
    arg2, textValue4, textValue5, tableHelper = arg2(textValue4, textValue5, tableHelper)
    -- Beginner: result below is menuVisible.
    arg1 = arg1(arg2, textValue4, textValue5, tableHelper)
    if not arg1 then
      arg1 = cmgCall.options
      arg1 = arg1.visibility
      if 1 ~= arg1 then
        goto flow_label_33
      end
    end
    arg1 = IsPlayerFreeAiming
    arg2 = PlayerId
    arg2, textValue4, textValue5, tableHelper = arg2()
    arg1 = arg1(arg2, textValue4, textValue5, tableHelper)
    if arg1 then
      arg1 = CMG
      arg1 = arg1.doesCurrentWeaponHaveScope
      arg1 = arg1()
    end
    if not arg1 then
      arg1 = rageUiCall4
      arg1()
      goto flow_label_78
      ::flow_label_33::
      arg1 = IsPlayerFreeAiming
      arg2 = PlayerId
      arg2, textValue4, textValue5, tableHelper = arg2()
      arg1 = arg1(arg2, textValue4, textValue5, tableHelper)
      if arg1 then
        arg1 = CMG
        arg1 = arg1.doesCurrentWeaponHaveScope
        arg1 = arg1()
        if not arg1 then
          arg1 = rageUiCall4
          arg1()
        end
      end
    end
  else
    arg1 = cmgCall.options
    arg1 = arg1.forcedGtaCrosshair
    if 1 == arg1 then
      arg1 = textValue7
      if not arg1 then
        arg1 = ShowHudComponentThisFrame
        arg2 = 14
        arg1(arg2)
      end
      arg1 = false
      textValue7 = arg1
      arg1 = flag4
      if not arg1 then
        arg1 = true
        flag4 = arg1
        arg1 = GetConvarInt
        arg2 = "profile_reticuleSize"
        textValue4 = -1
        arg1 = arg1(arg2, textValue4)
        arg2 = rageUiCall5
        if arg1 ~= arg2 then
          arg2 = true
          textValue7 = arg2
          rageUiCall5 = arg1
        end
        arg2 = SetTimeout
        textValue4 = 1000
        function textValue5()
          local rageUiCall, textValue3
          rageUiCall = false
          flag4 = rageUiCall
        end
        arg2(textValue4, textValue5)
      end
    end
  end
  ::flow_label_78::
end
cmgCall2 = workValue7
cmgCall2()
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
rageUiCall2 = textValue
rageUiCall3 = "Crosshair"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(rageUiCall2, rageUiCall3)
cmgCall2 = RegisterCommand
rageUiCall2 = "crosshair"
-- Beginner: this function is the command handler for "crosshair".
function rageUiCall3()
  local arg1, arg2, textValue4, textValue5, tableHelper
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  textValue4 = arg2
  arg2 = arg2.Get
  textValue5 = "cmgcrosshair"
  tableHelper = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue4, textValue5, tableHelper)
  textValue4 = true
  arg1(arg2, textValue4)
end
flag = false
-- Beginner: Register a chat/console command. Event/command: "crosshair".
cmgCall2(rageUiCall2, rageUiCall3, flag)
cmgCall2 = CMG
function rageUiCall2()
  local arg1, arg2
  arg1 = true
  textValue7 = arg1
end
cmgCall2.setHideCrosshairNextFrameHack = rageUiCall2
cmgCall2 = {}
rageUiCall2 = false
rageUiCall3 = CMG
function flag(arg1)
  local arg2, textValue4, textValue5, tableHelper
  arg2 = true
  rageUiCall2 = arg2
  arg2 = CMG
  arg2 = arg2.uiSetFocus
  textValue4 = true
  textValue5 = true
  tableHelper = false
  arg2(textValue4, textValue5, tableHelper)
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  textValue4 = {}
  textValue4.openMenu = true
  textValue4.type = arg1
  arg2(textValue4)
end
rageUiCall3.openRadialMenu = flag
rageUiCall3 = CMG
function flag(arg1, arg2)
  local textValue4
  textValue4 = cmgCall2
  textValue4[arg1] = arg2
end
rageUiCall3.addRadialMenuHandler = flag
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.uiRegisterCallback
flag = "radialClick"
function workValue5(arg1)
  local arg2, textValue4, textValue5, tableHelper
  arg2 = arg1.itemid
  textValue4 = arg1.menuName
  textValue5 = cmgCall2
  textValue5 = textValue5[textValue4]
  if textValue5 then
    textValue5 = cmgCall2
    textValue5 = textValue5[textValue4]
    tableHelper = arg2
    textValue5(tableHelper)
  end
end
rageUiCall3(flag, workValue5)
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.uiRegisterCallback
flag = "radialClose"
function workValue5()
  local arg1, arg2, textValue4, textValue5
  arg1 = rageUiCall2
  if arg1 then
    arg1 = CMG
    arg1 = arg1.uiSetFocus
    arg2 = false
    textValue4 = false
    textValue5 = false
    arg1(arg2, textValue4, textValue5)
    arg1 = false
    rageUiCall2 = arg1
  end
end
rageUiCall3(flag, workValue5)