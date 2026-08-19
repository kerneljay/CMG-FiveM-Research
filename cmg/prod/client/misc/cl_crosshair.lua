--[[
    LEVEL 1 BEGINNER GUIDE — Crosshair
    =======================================

    File: cmg/prod/client/misc/cl_crosshair.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Crosshair feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 29
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
local cmgOperation, stateFlag2, workingValue6, workingValue7, workingValue8, workingValue10, rageUiOperation4, stateFlag4, text7, rageUiOperation5, text, cmgOperation2, rageUiOperation2, rageUiOperation3, stateFlag, workingValue5
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
stateFlag2 = "cfg/cfg_crosshair"
-- Beginner: result below is config.
cmgOperation = cmgOperation(stateFlag2)
stateFlag2 = false

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, text4, text5, tableHelper, labelValue, workingValue11, workingValue12
  localValue1 = 1
  localValue2 = 20
  text4 = 1
  for text5 = localValue1, localValue2, text4 do
    tableHelper = table
    tableHelper = tableHelper.insert
    labelValue = cmgOperation.menu
    labelValue = labelValue.length
    labelValue = labelValue.labels
    workingValue11 = text5
    workingValue12 = text5
    tableHelper(labelValue, workingValue11, workingValue12)
    tableHelper = table
    tableHelper = tableHelper.insert
    labelValue = cmgOperation.menu
    labelValue = labelValue.thickness
    labelValue = labelValue.labels
    workingValue11 = text5
    workingValue12 = text5
    tableHelper(labelValue, workingValue11, workingValue12)
    tableHelper = table
    tableHelper = tableHelper.insert
    labelValue = cmgOperation.menu
    labelValue = labelValue.gap
    labelValue = labelValue.labels
    workingValue11 = text5
    workingValue12 = text5
    tableHelper(labelValue, workingValue11, workingValue12)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, text4, text5, tableHelper, labelValue, workingValue11, workingValue12, indexValue, text8, text2
  localValue1 = workingValue6
  localValue1()
  localValue1 = GetResourceKvpInt
  localValue2 = "cmg_crosshair_enabled"
  localValue1 = localValue1(localValue2)
  if 0 == localValue1 then
    localValue2 = cmgOperation.options
    localValue2.enabled = 0
  else
    localValue2 = cmgOperation.options
    localValue2.enabled = localValue1
  end
  localValue2 = GetResourceKvpInt
  text4 = "cmg_gtaforce_crosshair_enabled"
  localValue2 = localValue2(text4)
  if 0 == localValue2 then
    text4 = cmgOperation.options
    text4.forcedGtaCrosshair = 0
  else
    text4 = cmgOperation.options
    text4.forcedGtaCrosshair = localValue2
  end
  text4 = GetResourceKvpInt
  text5 = "cmg_crosshair_center_dot_enabled"
  text4 = text4(text5)
  if 0 == text4 then
    text5 = cmgOperation.options
    text5.centerDotEnabled = 1
  else
    text5 = cmgOperation.options
    text5.centerDotEnabled = text4
  end
  text5 = GetResourceKvpInt
  tableHelper = "cmg_crosshair_visibility"
  text5 = text5(tableHelper)
  if 0 == text5 then
    tableHelper = cmgOperation.options
    tableHelper.visibility = 1
  else
    tableHelper = cmgOperation.options
    tableHelper.visibility = text5
  end
  tableHelper = GetResourceKvpInt
  labelValue = "cmg_crosshair_length"
  tableHelper = tableHelper(labelValue)
  if 0 == tableHelper then
    labelValue = cmgOperation.options
    labelValue = labelValue.length
    labelValue.index = 1
    labelValue = cmgOperation.options
    labelValue = labelValue.length
    labelValue.value = 0.002
  else
    labelValue = cmgOperation.options
    labelValue = labelValue.length
    labelValue.index = tableHelper
    labelValue = cmgOperation.options
    labelValue = labelValue.length
    workingValue11 = cmgOperation.options
    workingValue11 = workingValue11.length
    workingValue11 = workingValue11.index
    workingValue11 = workingValue11 * 0.001
    workingValue11 = 0.001 + workingValue11
    labelValue.value = workingValue11
  end
  labelValue = GetResourceKvpInt
  workingValue11 = "cmg_crosshair_thickness"
  labelValue = labelValue(workingValue11)
  if 0 == labelValue then
    workingValue11 = cmgOperation.options
    workingValue11 = workingValue11.thickness
    workingValue11.index = 1
    workingValue11 = cmgOperation.options
    workingValue11 = workingValue11.thickness
    workingValue11.value = 0.001
  else
    workingValue11 = cmgOperation.options
    workingValue11 = workingValue11.thickness
    workingValue11.index = labelValue
    workingValue11 = cmgOperation.options
    workingValue11 = workingValue11.thickness
    workingValue12 = cmgOperation.options
    workingValue12 = workingValue12.thickness
    workingValue12 = workingValue12.index
    workingValue12 = 0.002 * workingValue12
    workingValue11.value = workingValue12
  end
  workingValue11 = GetResourceKvpInt
  workingValue12 = "cmg_crosshair_gap"
  workingValue11 = workingValue11(workingValue12)
  if 0 == workingValue11 then
    workingValue12 = cmgOperation.options
    workingValue12 = workingValue12.gap
    workingValue12.index = 1
    workingValue12 = cmgOperation.options
    workingValue12 = workingValue12.gap
    workingValue12.value = 0.0
  else
    workingValue12 = cmgOperation.options
    workingValue12 = workingValue12.gap
    workingValue12.index = workingValue11
    workingValue12 = cmgOperation.options
    workingValue12 = workingValue12.gap
    indexValue = cmgOperation.options
    indexValue = indexValue.gap
    indexValue = indexValue.index
    indexValue = indexValue * 5.0E-4
    indexValue = indexValue - 5.0E-4
    workingValue12.value = indexValue
  end
  workingValue12 = GetResourceKvpInt
  indexValue = "cmg_crosshair_red"
  workingValue12 = workingValue12(indexValue)
  if 0 == workingValue12 then
    indexValue = cmgOperation.options
    indexValue = indexValue.colour
    indexValue.red = 150
  else
    indexValue = cmgOperation.options
    indexValue = indexValue.colour
    indexValue.red = workingValue12
  end
  indexValue = GetResourceKvpInt
  text8 = "cmg_crosshair_green"
  indexValue = indexValue(text8)
  if 0 == indexValue then
    text8 = cmgOperation.options
    text8 = text8.colour
    text8.green = 150
  else
    text8 = cmgOperation.options
    text8 = text8.colour
    text8.green = indexValue
  end
  text8 = GetResourceKvpInt
  text2 = "cmg_crosshair_blue"
  text8 = text8(text2)
  if 0 == text8 then
    text2 = cmgOperation.options
    text2 = text2.colour
    text2.blue = 150
  else
    text2 = cmgOperation.options
    text2 = text2.colour
    text2.blue = text8
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, text4
  localValue1 = SetResourceKvpInt
  localValue2 = "cmg_crosshair_enabled"
  text4 = cmgOperation.options
  text4 = text4.enabled
  localValue1(localValue2, text4)
  localValue1 = SetResourceKvpInt
  localValue2 = "cmg_gtaforce_crosshair_enabled"
  text4 = cmgOperation.options
  text4 = text4.forcedGtaCrosshair
  localValue1(localValue2, text4)
  localValue1 = SetResourceKvpInt
  localValue2 = "cmg_crosshair_center_dot_enabled"
  text4 = cmgOperation.options
  text4 = text4.centerDotEnabled
  localValue1(localValue2, text4)
  localValue1 = SetResourceKvpInt
  localValue2 = "cmg_crosshair_visibility"
  text4 = cmgOperation.options
  text4 = text4.visibility
  localValue1(localValue2, text4)
  localValue1 = SetResourceKvpInt
  localValue2 = "cmg_crosshair_length"
  text4 = cmgOperation.options
  text4 = text4.length
  text4 = text4.index
  localValue1(localValue2, text4)
  localValue1 = SetResourceKvpInt
  localValue2 = "cmg_crosshair_thickness"
  text4 = cmgOperation.options
  text4 = text4.thickness
  text4 = text4.index
  localValue1(localValue2, text4)
  localValue1 = SetResourceKvpInt
  localValue2 = "cmg_crosshair_gap"
  text4 = cmgOperation.options
  text4 = text4.gap
  text4 = text4.index
  localValue1(localValue2, text4)
  localValue1 = SetResourceKvpInt
  localValue2 = "cmg_crosshair_red"
  text4 = cmgOperation.options
  text4 = text4.colour
  text4 = text4.red
  localValue1(localValue2, text4)
  localValue1 = SetResourceKvpInt
  localValue2 = "cmg_crosshair_blue"
  text4 = cmgOperation.options
  text4 = text4.colour
  text4 = text4.blue
  localValue1(localValue2, text4)
  localValue1 = SetResourceKvpInt
  localValue2 = "cmg_crosshair_green"
  text4 = cmgOperation.options
  text4 = text4.colour
  text4 = text4.green
  localValue1(localValue2, text4)
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1, localValue2) ===
function workingValue10(localValue1, localValue2)
  local text4, text5, tableHelper
  text4 = CMG
  text4 = text4.GetRageInputInt
  text5 = localValue1
  text4 = text4(text5)
  text5 = type
  tableHelper = text4
  text5 = text5(tableHelper)
  if "number" == text5 then
    text5 = 255
    if text4 <= text5 and text4 >= 1 then
      return text4
  end
  else
    return localValue2
  end
end
rageUiOperation4 = RMenu
rageUiOperation4 = rageUiOperation4.Add
stateFlag4 = "cmgcrosshair"
text7 = "main"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateMenu
text = "Crosshair"
cmgOperation2 = "~b~CMG Crosshair Customisation "
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
stateFlag = nil
workingValue5 = nil
rageUiOperation5, text, cmgOperation2, rageUiOperation2, rageUiOperation3, stateFlag, workingValue5 = rageUiOperation5(text, cmgOperation2, rageUiOperation2, rageUiOperation3, stateFlag, workingValue5)
rageUiOperation4(stateFlag4, text7, rageUiOperation5, text, cmgOperation2, rageUiOperation2, rageUiOperation3, stateFlag, workingValue5)
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateWhile
stateFlag4 = 1.0
text7 = RMenu
rageUiOperation5 = text7
text7 = text7.Get
text = "cmgcrosshair"
cmgOperation2 = "main"
-- Beginner: result below is menu.
text7 = text7(rageUiOperation5, text, cmgOperation2)
rageUiOperation5 = nil

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, text4, text5, tableHelper, labelValue
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  text4 = localValue2
  localValue2 = localValue2.Get
  text5 = "cmgcrosshair"
  tableHelper = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(text4, text5, tableHelper)
  text4 = true
  text5 = true
  tableHelper = true

  -- === HELPER FUNCTION: labelValue() ===
  function labelValue()
    local rageUiOperation, text3, dataCollection, number2, dataCollection2, dataCollection3, stateFlag3, workingValue13
    rageUiOperation = stateFlag2
    if not rageUiOperation then
      rageUiOperation = true
      stateFlag2 = rageUiOperation
    end
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text3 = "Use Custom Crosshair"
    dataCollection = ""
    number2 = cmgOperation.options
    number2 = number2.enabled
    number2 = 1 == number2
    dataCollection2 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
    function dataCollection3()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: none) ===
    function stateFlag3()
      local localValue12, localValue22
      localValue12 = cmgOperation.options
      localValue12.enabled = 1
      localValue12 = workingValue8
      localValue12()
    end

    -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
    function workingValue13()
      local localValue12, localValue22
      localValue12 = cmgOperation.options
      localValue12.enabled = 0
      localValue12 = workingValue8
      localValue12()
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiOperation(text3, dataCollection, number2, dataCollection2, dataCollection3, stateFlag3, workingValue13)
    rageUiOperation = cmgOperation.options
    rageUiOperation = rageUiOperation.enabled
    if 1 == rageUiOperation then
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.Separator
      text3 = "~b~Crosshair Options"
      rageUiOperation(text3)
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.List
      text3 = "Center Dot"
      dataCollection = {}
      number2 = "Enabled"
      dataCollection2 = "Disabled"
      dataCollection[1] = number2
      dataCollection[2] = dataCollection2
      number2 = cmgOperation.options
      number2 = number2.centerDotEnabled
      dataCollection2 = nil
      dataCollection3 = {}
      stateFlag3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue12, localValue22, localValue3, localValue4) ===
      function workingValue13(localValue12, localValue22, localValue3, localValue4)
        local workingValue9
        if localValue22 then
          workingValue9 = cmgOperation.options
          workingValue9 = workingValue9.centerDotEnabled
          if workingValue9 ~= localValue4 then
            workingValue9 = cmgOperation.options
            workingValue9.centerDotEnabled = localValue4
            workingValue9 = workingValue8
            workingValue9()
          end
        end
      end
      -- Beginner: Draw a RageUI list selector.
      rageUiOperation(text3, dataCollection, number2, dataCollection2, dataCollection3, stateFlag3, workingValue13)
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.List
      text3 = "Visibility"
      dataCollection = {}
      number2 = "Always"
      dataCollection2 = "While Aiming"
      dataCollection[1] = number2
      dataCollection[2] = dataCollection2
      number2 = cmgOperation.options
      number2 = number2.visibility
      dataCollection2 = nil
      dataCollection3 = {}
      stateFlag3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue12, localValue22, localValue3, localValue4) ===
      function workingValue13(localValue12, localValue22, localValue3, localValue4)
        local workingValue9
        if localValue22 then
          workingValue9 = cmgOperation.options
          workingValue9 = workingValue9.visibility
          if workingValue9 ~= localValue4 then
            workingValue9 = cmgOperation.options
            workingValue9.visibility = localValue4
            workingValue9 = workingValue8
            workingValue9()
          end
        end
      end
      -- Beginner: Draw a RageUI list selector.
      rageUiOperation(text3, dataCollection, number2, dataCollection2, dataCollection3, stateFlag3, workingValue13)
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.List
      text3 = "Length"
      dataCollection = cmgOperation.menu
      dataCollection = dataCollection.length
      dataCollection = dataCollection.labels
      number2 = cmgOperation.options
      number2 = number2.length
      number2 = number2.index
      dataCollection2 = nil
      dataCollection3 = {}
      stateFlag3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue12, localValue22, localValue3, localValue4) ===
      function workingValue13(localValue12, localValue22, localValue3, localValue4)
        local workingValue9, number3
        if localValue22 then
          workingValue9 = cmgOperation.options
          workingValue9 = workingValue9.length
          workingValue9 = workingValue9.index
          if workingValue9 ~= localValue4 then
            workingValue9 = cmgOperation.options
            workingValue9 = workingValue9.length
            workingValue9.index = localValue4
            workingValue9 = cmgOperation.options
            workingValue9 = workingValue9.length
            number3 = localValue4 * 0.001
            number3 = 0.001 + number3
            workingValue9.value = number3
            workingValue9 = workingValue8
            workingValue9()
          end
        end
      end
      -- Beginner: Draw a RageUI list selector.
      rageUiOperation(text3, dataCollection, number2, dataCollection2, dataCollection3, stateFlag3, workingValue13)
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.List
      text3 = "Thickness"
      dataCollection = cmgOperation.menu
      dataCollection = dataCollection.thickness
      dataCollection = dataCollection.labels
      number2 = cmgOperation.options
      number2 = number2.thickness
      number2 = number2.index
      dataCollection2 = nil
      dataCollection3 = {}
      stateFlag3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue12, localValue22, localValue3, localValue4) ===
      function workingValue13(localValue12, localValue22, localValue3, localValue4)
        local workingValue9, number3
        if localValue22 then
          workingValue9 = cmgOperation.options
          workingValue9 = workingValue9.thickness
          workingValue9 = workingValue9.index
          if workingValue9 ~= localValue4 then
            workingValue9 = cmgOperation.options
            workingValue9 = workingValue9.thickness
            workingValue9.index = localValue4
            workingValue9 = cmgOperation.options
            workingValue9 = workingValue9.thickness
            number3 = 0.002 * localValue4
            workingValue9.value = number3
            workingValue9 = workingValue8
            workingValue9()
          end
        end
      end
      -- Beginner: Draw a RageUI list selector.
      rageUiOperation(text3, dataCollection, number2, dataCollection2, dataCollection3, stateFlag3, workingValue13)
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.List
      text3 = "Gap"
      dataCollection = cmgOperation.menu
      dataCollection = dataCollection.gap
      dataCollection = dataCollection.labels
      number2 = cmgOperation.options
      number2 = number2.gap
      number2 = number2.index
      dataCollection2 = nil
      dataCollection3 = {}
      stateFlag3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue12, localValue22, localValue3, localValue4) ===
      function workingValue13(localValue12, localValue22, localValue3, localValue4)
        local workingValue9, number3
        if localValue22 then
          workingValue9 = cmgOperation.options
          workingValue9 = workingValue9.gap
          workingValue9 = workingValue9.index
          if workingValue9 ~= localValue4 then
            workingValue9 = cmgOperation.options
            workingValue9 = workingValue9.gap
            workingValue9.index = localValue4
            workingValue9 = cmgOperation.options
            workingValue9 = workingValue9.gap
            number3 = localValue4 * 5.0E-4
            number3 = number3 - 5.0E-4
            workingValue9.value = number3
            workingValue9 = workingValue8
            workingValue9()
          end
        end
      end
      -- Beginner: Draw a RageUI list selector.
      rageUiOperation(text3, dataCollection, number2, dataCollection2, dataCollection3, stateFlag3, workingValue13)
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.SliderProgress
      text3 = "Red ["
      dataCollection = cmgOperation.options
      dataCollection = dataCollection.colour
      dataCollection = dataCollection.red
      number2 = "]"
      text3 = text3 .. dataCollection .. number2
      dataCollection = cmgOperation.options
      dataCollection = dataCollection.colour
      dataCollection = dataCollection.red
      number2 = 255
      dataCollection2 = "Press ~b~ENTER~w~ to enter RGB Red value"
      dataCollection3 = {}
      stateFlag3 = {}
      stateFlag3.R = 186
      stateFlag3.G = 58
      stateFlag3.B = 48
      stateFlag3.A = 255
      dataCollection3.ProgressBackgroundColor = stateFlag3
      stateFlag3 = {}
      stateFlag3.R = 212
      stateFlag3.G = 66
      stateFlag3.B = 55
      stateFlag3.A = 255
      dataCollection3.ProgressColor = stateFlag3
      stateFlag3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue12, localValue22, localValue3, localValue4) ===
      function workingValue13(localValue12, localValue22, localValue3, localValue4)
        local workingValue9, number3, text6, workingValue14
        if localValue22 then
          workingValue9 = IsControlJustPressed
          number3 = 0
          text6 = 22
          workingValue9 = workingValue9(number3, text6)
          if workingValue9 then
            workingValue9 = cmgOperation.options
            workingValue9 = workingValue9.colour
            number3 = workingValue10
            text6 = "Enter Red Value (0-255)"
            workingValue14 = cmgOperation.options
            workingValue14 = workingValue14.colour
            workingValue14 = workingValue14.red
            number3 = number3(text6, workingValue14)
            workingValue9.red = number3
            workingValue9 = workingValue8
            workingValue9()
          else
            workingValue9 = cmgOperation.options
            workingValue9 = workingValue9.colour
            workingValue9 = workingValue9.red
            if localValue4 ~= workingValue9 then
              workingValue9 = cmgOperation.options
              workingValue9 = workingValue9.colour
              workingValue9.red = localValue4
              workingValue9 = workingValue8
              workingValue9()
            end
          end
        end
      end
      rageUiOperation(text3, dataCollection, number2, dataCollection2, dataCollection3, stateFlag3, workingValue13)
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.SliderProgress
      text3 = "Green ["
      dataCollection = cmgOperation.options
      dataCollection = dataCollection.colour
      dataCollection = dataCollection.green
      number2 = "]"
      text3 = text3 .. dataCollection .. number2
      dataCollection = cmgOperation.options
      dataCollection = dataCollection.colour
      dataCollection = dataCollection.green
      number2 = 255
      dataCollection2 = "Press ~b~ENTER~w~ to enter RGB Green value"
      dataCollection3 = {}
      stateFlag3 = {}
      stateFlag3.R = 48
      stateFlag3.G = 186
      stateFlag3.B = 108
      stateFlag3.A = 255
      dataCollection3.ProgressBackgroundColor = stateFlag3
      stateFlag3 = {}
      stateFlag3.R = 64
      stateFlag3.G = 230
      stateFlag3.B = 136
      stateFlag3.A = 255
      dataCollection3.ProgressColor = stateFlag3
      stateFlag3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue12, localValue22, localValue3, localValue4) ===
      function workingValue13(localValue12, localValue22, localValue3, localValue4)
        local workingValue9, number3, text6, workingValue14
        if localValue22 then
          workingValue9 = IsControlJustPressed
          number3 = 0
          text6 = 22
          workingValue9 = workingValue9(number3, text6)
          if workingValue9 then
            workingValue9 = cmgOperation.options
            workingValue9 = workingValue9.colour
            number3 = workingValue10
            text6 = "Enter Green Value (0-255)"
            workingValue14 = cmgOperation.options
            workingValue14 = workingValue14.colour
            workingValue14 = workingValue14.green
            number3 = number3(text6, workingValue14)
            workingValue9.green = number3
            workingValue9 = workingValue8
            workingValue9()
          else
            workingValue9 = cmgOperation.options
            workingValue9 = workingValue9.colour
            workingValue9 = workingValue9.green
            if localValue4 ~= workingValue9 then
              workingValue9 = cmgOperation.options
              workingValue9 = workingValue9.colour
              workingValue9.green = localValue4
              workingValue9 = workingValue8
              workingValue9()
            end
          end
        end
      end
      rageUiOperation(text3, dataCollection, number2, dataCollection2, dataCollection3, stateFlag3, workingValue13)
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.SliderProgress
      text3 = "Blue ["
      dataCollection = cmgOperation.options
      dataCollection = dataCollection.colour
      dataCollection = dataCollection.blue
      number2 = "]"
      text3 = text3 .. dataCollection .. number2
      dataCollection = cmgOperation.options
      dataCollection = dataCollection.colour
      dataCollection = dataCollection.blue
      number2 = 255
      dataCollection2 = "Press ~b~ENTER~w~ to enter RGB Blue value"
      dataCollection3 = {}
      stateFlag3 = {}
      stateFlag3.R = 48
      stateFlag3.G = 69
      stateFlag3.B = 186
      stateFlag3.A = 255
      dataCollection3.ProgressBackgroundColor = stateFlag3
      stateFlag3 = {}
      stateFlag3.R = 59
      stateFlag3.G = 86
      stateFlag3.B = 237
      stateFlag3.A = 255
      dataCollection3.ProgressColor = stateFlag3
      stateFlag3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue12, localValue22, localValue3, localValue4) ===
      function workingValue13(localValue12, localValue22, localValue3, localValue4)
        local workingValue9, number3, text6, workingValue14
        if localValue22 then
          workingValue9 = IsControlJustPressed
          number3 = 0
          text6 = 22
          workingValue9 = workingValue9(number3, text6)
          if workingValue9 then
            workingValue9 = cmgOperation.options
            workingValue9 = workingValue9.colour
            number3 = workingValue10
            text6 = "Enter Blue Value (0-255)"
            workingValue14 = cmgOperation.options
            workingValue14 = workingValue14.colour
            workingValue14 = workingValue14.blue
            number3 = number3(text6, workingValue14)
            workingValue9.blue = number3
            workingValue9 = workingValue8
            workingValue9()
          else
            workingValue9 = cmgOperation.options
            workingValue9 = workingValue9.colour
            workingValue9 = workingValue9.blue
            if localValue4 ~= workingValue9 then
              workingValue9 = cmgOperation.options
              workingValue9 = workingValue9.colour
              workingValue9.blue = localValue4
              workingValue9 = workingValue8
              workingValue9()
            end
          end
        end
      end
      rageUiOperation(text3, dataCollection, number2, dataCollection2, dataCollection3, stateFlag3, workingValue13)
    else
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.Checkbox
      text3 = "Keep GTA Crosshair Enabled"
      dataCollection = "Whether the GTA crosshair should be visible at all times."
      number2 = cmgOperation.options
      number2 = number2.forcedGtaCrosshair
      number2 = 1 == number2
      dataCollection2 = {}

      -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
      function dataCollection3()
        local localValue12, localValue22
      end

      -- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: none) ===
      function stateFlag3()
        local localValue12, localValue22
        localValue12 = cmgOperation.options
        localValue12.forcedGtaCrosshair = 1
        localValue12 = workingValue8
        localValue12()
      end

      -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
      function workingValue13()
        local localValue12, localValue22
        localValue12 = cmgOperation.options
        localValue12.forcedGtaCrosshair = 0
        localValue12 = workingValue8
        localValue12()
      end
      -- Beginner: Draw a RageUI checkbox.
      rageUiOperation(text3, dataCollection, number2, dataCollection2, dataCollection3, stateFlag3, workingValue13)
    end
  end
  localValue1(localValue2, text4, text5, tableHelper, labelValue)
end
rageUiOperation4(stateFlag4, text7, rageUiOperation5, text)

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, text4, text5, tableHelper, labelValue, workingValue11, workingValue12, indexValue, text8, text2, workingValue, workingValue2, workingValue3, workingValue4, number
  localValue1 = cmgOperation.options
  localValue1 = localValue1.gap
  localValue1 = localValue1.value
  localValue2 = cmgOperation.options
  localValue2 = localValue2.length
  localValue2 = localValue2.value
  text4 = cmgOperation.options
  text4 = text4.thickness
  text4 = text4.value
  text5 = cmgOperation.options
  text5 = text5.colour
  text5 = text5.red
  tableHelper = cmgOperation.options
  tableHelper = tableHelper.colour
  tableHelper = tableHelper.green
  labelValue = cmgOperation.options
  labelValue = labelValue.colour
  labelValue = labelValue.blue
  workingValue11 = GetAspectRatio
  workingValue12 = false
  workingValue11 = workingValue11(workingValue12)
  workingValue12 = cmgOperation.options
  workingValue12 = workingValue12.centerDotEnabled
  if 1 == workingValue12 then
    workingValue12 = DrawRect
    indexValue = 0.5
    text8 = 0.5
    text2 = text4 / 2
    workingValue = text4 / 2
    workingValue = workingValue * workingValue11
    workingValue2 = text5
    workingValue3 = tableHelper
    workingValue4 = labelValue
    number = 255
    workingValue12(indexValue, text8, text2, workingValue, workingValue2, workingValue3, workingValue4, number)
  end
  workingValue12 = DrawRect
  indexValue = 0.5
  indexValue = indexValue - localValue1
  text8 = localValue2 / 2
  indexValue = indexValue - text8
  text8 = 0.5
  text2 = localValue2
  workingValue = text4
  workingValue2 = text5
  workingValue3 = tableHelper
  workingValue4 = labelValue
  number = 255
  workingValue12(indexValue, text8, text2, workingValue, workingValue2, workingValue3, workingValue4, number)
  workingValue12 = DrawRect
  indexValue = 0.5 + localValue1
  text8 = localValue2 / 2
  indexValue = indexValue + text8
  text8 = 0.5
  text2 = localValue2
  workingValue = text4
  workingValue2 = text5
  workingValue3 = tableHelper
  workingValue4 = labelValue
  number = 255
  workingValue12(indexValue, text8, text2, workingValue, workingValue2, workingValue3, workingValue4, number)
  workingValue12 = DrawRect
  indexValue = 0.5
  text8 = localValue1 * workingValue11
  text2 = 0.5
  text8 = text2 - text8
  text2 = localValue2 * workingValue11
  text2 = text2 / 2
  text8 = text8 - text2
  text2 = text4 / workingValue11
  workingValue = localValue2 * workingValue11
  workingValue2 = text5
  workingValue3 = tableHelper
  workingValue4 = labelValue
  number = 255
  workingValue12(indexValue, text8, text2, workingValue, workingValue2, workingValue3, workingValue4, number)
  workingValue12 = DrawRect
  indexValue = 0.5
  text8 = localValue1 * workingValue11
  text8 = 0.5 + text8
  text2 = localValue2 * workingValue11
  text2 = text2 / 2
  text8 = text8 + text2
  text2 = text4 / workingValue11
  workingValue = localValue2 * workingValue11
  workingValue2 = text5
  workingValue3 = tableHelper
  workingValue4 = labelValue
  number = 255
  workingValue12(indexValue, text8, text2, workingValue, workingValue2, workingValue3, workingValue4, number)
  workingValue12 = HideHudComponentThisFrame
  indexValue = 14
  workingValue12(indexValue)
end
stateFlag4 = false
text7 = false
rageUiOperation5 = 0

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, text4, text5, tableHelper
  localValue1 = cmgOperation.options
  localValue1 = localValue1.enabled
  if 1 == localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.Visible
    localValue2 = RMenu
    text4 = localValue2
    localValue2 = localValue2.Get
    text5 = "cmgcrosshair"
    tableHelper = "main"
    localValue2, text4, text5, tableHelper = localValue2(text4, text5, tableHelper)
    -- Beginner: result below is menuVisible.
    localValue1 = localValue1(localValue2, text4, text5, tableHelper)
    if not localValue1 then
      localValue1 = cmgOperation.options
      localValue1 = localValue1.visibility
      if 1 ~= localValue1 then
        goto continueAtStep33
      end
    end
    localValue1 = IsPlayerFreeAiming
    localValue2 = PlayerId
    localValue2, text4, text5, tableHelper = localValue2()
    localValue1 = localValue1(localValue2, text4, text5, tableHelper)
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.doesCurrentWeaponHaveScope
      localValue1 = localValue1()
    end
    if not localValue1 then
      localValue1 = rageUiOperation4
      localValue1()
      goto continueAtStep78
      ::continueAtStep33::
      localValue1 = IsPlayerFreeAiming
      localValue2 = PlayerId
      localValue2, text4, text5, tableHelper = localValue2()
      localValue1 = localValue1(localValue2, text4, text5, tableHelper)
      if localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.doesCurrentWeaponHaveScope
        localValue1 = localValue1()
        if not localValue1 then
          localValue1 = rageUiOperation4
          localValue1()
        end
      end
    end
  else
    localValue1 = cmgOperation.options
    localValue1 = localValue1.forcedGtaCrosshair
    if 1 == localValue1 then
      localValue1 = text7
      if not localValue1 then
        localValue1 = ShowHudComponentThisFrame
        localValue2 = 14
        localValue1(localValue2)
      end
      localValue1 = false
      text7 = localValue1
      localValue1 = stateFlag4
      if not localValue1 then
        localValue1 = true
        stateFlag4 = localValue1
        localValue1 = GetConvarInt
        localValue2 = "profile_reticuleSize"
        text4 = -1
        localValue1 = localValue1(localValue2, text4)
        localValue2 = rageUiOperation5
        if localValue1 ~= localValue2 then
          localValue2 = true
          text7 = localValue2
          rageUiOperation5 = localValue1
        end
        localValue2 = SetTimeout
        text4 = 1000

        -- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
        function text5()
          local rageUiOperation, text3
          rageUiOperation = false
          stateFlag4 = rageUiOperation
        end
        localValue2(text4, text5)
      end
    end
  end
  ::continueAtStep78::
end
cmgOperation2 = workingValue7
cmgOperation2()
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
rageUiOperation2 = text
rageUiOperation3 = "Crosshair"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(rageUiOperation2, rageUiOperation3)
cmgOperation2 = RegisterCommand
rageUiOperation2 = "crosshair"
-- Beginner: this function is the command handler for "crosshair".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, text4, text5, tableHelper
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  text4 = localValue2
  localValue2 = localValue2.Get
  text5 = "cmgcrosshair"
  tableHelper = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(text4, text5, tableHelper)
  text4 = true
  localValue1(localValue2, text4)
end
stateFlag = false
-- Beginner: Register a chat/console command. Event/command: "crosshair".
cmgOperation2(rageUiOperation2, rageUiOperation3, stateFlag)
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2
  localValue1 = true
  text7 = localValue1
end
cmgOperation2.setHideCrosshairNextFrameHack = rageUiOperation2
cmgOperation2 = {}
rageUiOperation2 = false
rageUiOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue1) ===
function stateFlag(localValue1)
  local localValue2, text4, text5, tableHelper
  localValue2 = true
  rageUiOperation2 = localValue2
  localValue2 = CMG
  localValue2 = localValue2.uiSetFocus
  text4 = true
  text5 = true
  tableHelper = false
  localValue2(text4, text5, tableHelper)
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  text4 = {}
  text4.openMenu = true
  text4.type = localValue1
  localValue2(text4)
end
rageUiOperation3.openRadialMenu = stateFlag
rageUiOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue1, localValue2) ===
function stateFlag(localValue1, localValue2)
  local text4
  text4 = cmgOperation2
  text4[localValue1] = localValue2
end
rageUiOperation3.addRadialMenuHandler = stateFlag
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.uiRegisterCallback
stateFlag = "radialClick"

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, text4, text5, tableHelper
  localValue2 = localValue1.itemid
  text4 = localValue1.menuName
  text5 = cmgOperation2
  text5 = text5[text4]
  if text5 then
    text5 = cmgOperation2
    text5 = text5[text4]
    tableHelper = localValue2
    text5(tableHelper)
  end
end
rageUiOperation3(stateFlag, workingValue5)
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.uiRegisterCallback
stateFlag = "radialClose"

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, text4, text5
  localValue1 = rageUiOperation2
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.uiSetFocus
    localValue2 = false
    text4 = false
    text5 = false
    localValue1(localValue2, text4, text5)
    localValue1 = false
    rageUiOperation2 = localValue1
  end
end
rageUiOperation3(stateFlag, workingValue5)
