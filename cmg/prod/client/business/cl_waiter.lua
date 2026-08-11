--[[
    LEVEL 1 BEGINNER GUIDE — Waiter
    ====================================

    File: cmg/prod/client/business/cl_waiter.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: business gameplay and business job logic, specifically the Waiter feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 32
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
local dataTable, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, textValue12, textValue14, rageUiCall8, textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4, textValue5
dataTable = {}
numberValue8 = 1
numberValue9 = 2
numberValue10 = 3
numberValue11 = 4
numberValue12 = 5
numberValue13 = 6
textValue12 = 7
textValue14 = 8
rageUiCall8 = 9
textValue = 10
dataTable[1] = numberValue8
dataTable[2] = numberValue9
dataTable[3] = numberValue10
dataTable[4] = numberValue11
dataTable[5] = numberValue12
dataTable[6] = numberValue13
dataTable[7] = textValue12
dataTable[8] = textValue14
dataTable[9] = rageUiCall8
dataTable[10] = textValue

-- === HELPER FUNCTION (decompiler name: numberValue8; parameters: none) ===
function numberValue8()
  local arg1, arg2
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
end

-- === HELPER FUNCTION (decompiler name: numberValue9; parameters: none) ===
function numberValue9()
  local arg1, arg2, flag4, flag5, flag6
  arg1 = RageUI
  arg1 = arg1.IsAnyMenuOfTypeVisible
  arg2 = "business"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = drawNativeNotification
    arg2 = "Press ~INPUT_CONTEXT~ to use the cash register"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg1(arg2)
    arg1 = IsControlJustPressed
    arg2 = 0
    flag4 = 51
    arg1 = arg1(arg2, flag4)
    if arg1 then
      arg1 = RageUI
      arg1 = arg1.Visible
      arg2 = RMenu
      flag4 = arg2
      arg2 = arg2.Get
      flag5 = "business"
      flag6 = "waiter_mainmenu"
      -- Beginner: result below is menu.
      arg2 = arg2(flag4, flag5, flag6)
      flag4 = true
      arg1(arg2, flag4)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: numberValue10; parameters: arg1) ===
function numberValue10(arg1)
  local arg2, flag4, flag5, flag6, textValue11, workValue6, cmgCall2, cmgCall3, workValue9, stringHelper, numberValue, rageUiCall4, numberValue2, numberValue3, numberValue4, dataTable4, numberValue5, numberValue6, numberValue7
  arg2 = arg1.jobInfo
  flag4 = {}
  arg2.markers = flag4
  arg2 = arg1.jobInfo
  flag4 = {}
  arg2.areas = flag4
  arg2 = pairs
  flag4 = arg1.jobMetadata
  flag4 = flag4.cashRegisterPositions
  arg2, flag4, flag5, flag6 = arg2(flag4)
  for textValue11, workValue6 in arg2, flag4, flag5, flag6 do
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.addMarker
    cmgCall3 = workValue6.x
    workValue9 = workValue6.y
    stringHelper = workValue6.z
    stringHelper = stringHelper - 0.6
    numberValue = 0.2
    rageUiCall4 = 0.2
    numberValue2 = 0.2
    numberValue3 = 255
    numberValue4 = 255
    dataTable4 = 0
    numberValue5 = 150
    numberValue6 = 25.0
    numberValue7 = 0
    cmgCall2 = cmgCall2(cmgCall3, workValue9, stringHelper, numberValue, rageUiCall4, numberValue2, numberValue3, numberValue4, dataTable4, numberValue5, numberValue6, numberValue7)
    cmgCall3 = table
    cmgCall3 = cmgCall3.insert
    workValue9 = arg1.jobInfo
    workValue9 = workValue9.markers
    stringHelper = cmgCall2
    cmgCall3(workValue9, stringHelper)
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.createArea
    workValue9 = "business_waiter_"
    stringHelper = tostring
    numberValue = textValue11
    stringHelper = stringHelper(numberValue)
    workValue9 = workValue9 .. stringHelper
    stringHelper = workValue6.xyz
    numberValue = 1.0
    rageUiCall4 = 1.5

    -- === HELPER FUNCTION (decompiler name: numberValue2; parameters: none) ===
    function numberValue2()
      local arg12, arg22
    end
    numberValue3 = numberValue8
    numberValue4 = numberValue9
    dataTable4 = {}
    cmgCall3 = cmgCall3(workValue9, stringHelper, numberValue, rageUiCall4, numberValue2, numberValue3, numberValue4, dataTable4)
    workValue9 = table
    workValue9 = workValue9.insert
    stringHelper = arg1.jobInfo
    stringHelper = stringHelper.areas
    numberValue = cmgCall3
    workValue9(stringHelper, numberValue)
  end
  arg2 = TriggerServerEvent
  flag4 = "bf3f551598"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
  arg2(flag4)
end

-- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
function numberValue11()
  local arg1, arg2
end

-- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg1) ===
function numberValue12(arg1)
  local arg2, flag4, flag5, flag6, textValue11, workValue6, cmgCall2, cmgCall3
  arg2 = pairs
  flag4 = arg1.jobInfo
  flag4 = flag4.markers
  arg2, flag4, flag5, flag6 = arg2(flag4)
  for textValue11, workValue6 in arg2, flag4, flag5, flag6 do
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.removeMarker
    cmgCall3 = workValue6
    cmgCall2(cmgCall3)
  end
  arg2 = pairs
  flag4 = arg1.jobInfo
  flag4 = flag4.areas
  arg2, flag4, flag5, flag6 = arg2(flag4)
  for textValue11, workValue6 in arg2, flag4, flag5, flag6 do
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.removeArea
    cmgCall3 = workValue6
    cmgCall2(cmgCall3)
  end
end
numberValue13 = RMenu
numberValue13 = numberValue13.Add
textValue12 = "business"
textValue14 = "waiter_mainmenu"
rageUiCall8 = RageUI
rageUiCall8 = rageUiCall8.CreateMenu
textValue = ""
cmgCall = "~b~CMG Business"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
rageUiCall6 = "cmg_marketui"
textValue4 = "cmg_marketui"
rageUiCall8, textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4, textValue5 = rageUiCall8(textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4)
numberValue13(textValue12, textValue14, rageUiCall8, textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4, textValue5)
numberValue13 = RMenu
numberValue13 = numberValue13.Add
textValue12 = "business"
textValue14 = "waiter_placeorder"
rageUiCall8 = RageUI
rageUiCall8 = rageUiCall8.CreateSubMenu
textValue = RMenu
cmgCall = textValue
textValue = textValue.Get
rageUiCall3 = "business"
rageUiCall5 = "waiter_mainmenu"
-- Beginner: result below is menu.
textValue = textValue(cmgCall, rageUiCall3, rageUiCall5)
cmgCall = ""
rageUiCall3 = "~b~CMG Business"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuHeight
rageUiCall6 = rageUiCall6()
textValue4 = "cmg_marketui"
textValue5 = "cmg_marketui"
rageUiCall8, textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4, textValue5 = rageUiCall8(textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4, textValue5)
numberValue13(textValue12, textValue14, rageUiCall8, textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4, textValue5)
numberValue13 = RMenu
numberValue13 = numberValue13.Add
textValue12 = "business"
textValue14 = "waiter_additem"
rageUiCall8 = RageUI
rageUiCall8 = rageUiCall8.CreateSubMenu
textValue = RMenu
cmgCall = textValue
textValue = textValue.Get
rageUiCall3 = "business"
rageUiCall5 = "waiter_placeorder"
-- Beginner: result below is menu.
textValue = textValue(cmgCall, rageUiCall3, rageUiCall5)
cmgCall = ""
rageUiCall3 = "~b~CMG Business"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuHeight
rageUiCall6 = rageUiCall6()
textValue4 = "cmg_marketui"
textValue5 = "cmg_marketui"
rageUiCall8, textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4, textValue5 = rageUiCall8(textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4, textValue5)
numberValue13(textValue12, textValue14, rageUiCall8, textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4, textValue5)
numberValue13 = RMenu
numberValue13 = numberValue13.Add
textValue12 = "business"
textValue14 = "waiter_additemamount"
rageUiCall8 = RageUI
rageUiCall8 = rageUiCall8.CreateSubMenu
textValue = RMenu
cmgCall = textValue
textValue = textValue.Get
rageUiCall3 = "business"
rageUiCall5 = "waiter_additem"
-- Beginner: result below is menu.
textValue = textValue(cmgCall, rageUiCall3, rageUiCall5)
cmgCall = ""
rageUiCall3 = "~b~CMG Business"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuHeight
rageUiCall6 = rageUiCall6()
textValue4 = "cmg_marketui"
textValue5 = "cmg_marketui"
rageUiCall8, textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4, textValue5 = rageUiCall8(textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4, textValue5)
numberValue13(textValue12, textValue14, rageUiCall8, textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6, textValue4, textValue5)

-- === HELPER FUNCTION (decompiler name: numberValue13; parameters: arg1) ===
function numberValue13(arg1)
  local arg2, flag4, flag5
  arg2 = table
  arg2 = arg2.sort
  flag4 = arg1

  -- === HELPER FUNCTION (decompiler name: flag5; parameters: arg12, arg22) ===
  function flag5(arg12, arg22)
    local workValue4, textValue9
    workValue4 = arg12.orderId
    textValue9 = arg22.orderId
    workValue4 = workValue4 > textValue9
    return workValue4
  end
  arg2(flag4, flag5)
  return arg1
end

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg1) ===
function textValue12(arg1)
  local arg2, flag4
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  flag4 = arg1.locationInfo
  flag4 = flag4.jobMarker
  arg2 = arg2 - flag4
  arg2 = #arg2
  arg2 = arg2 < 75.0
  return arg2
end
textValue14 = RageUI
textValue14 = textValue14.CreateWhile
rageUiCall8 = 1.0
textValue = RMenu
cmgCall = textValue
textValue = textValue.Get
rageUiCall3 = "business"
rageUiCall5 = "waiter_mainmenu"
-- Beginner: result below is menu.
textValue = textValue(cmgCall, rageUiCall3, rageUiCall5)
cmgCall = nil

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: none) ===
function rageUiCall3()
  local arg1, arg2, flag4, flag5, flag6, textValue11
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag5 = "business"
  flag6 = "waiter_mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag5, flag6)
  flag4 = true
  flag5 = false
  flag6 = true

  -- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
  function textValue11()
    local arg12, arg22, workValue4, textValue9, dataTable5, dataTable7, flag7, workValue7, workValue8, cmgCall4, textValue2
    arg12 = CMG
    arg12 = arg12.getUserBusinessData
    arg22 = "waiter"
    arg12 = arg12(arg22)
    if arg12 then
      arg22 = textValue12
      workValue4 = arg12
      arg22 = arg22(workValue4)
      if arg22 then
        goto flow_label_16
      end
    end
    arg22 = RageUI
    arg22 = arg22.CloseAll
    arg22()
    return
    ::flow_label_16::
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    workValue4 = "~g~Place Order"
    textValue9 = ""
    dataTable5 = {}
    dataTable5.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataTable7 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg13, arg23, arg3) ===
    function flag7(arg13, arg23, arg3)
      local arg4, dataTable6
      if arg3 then
        arg4 = arg12.jobInfo
        dataTable6 = {}
        arg4.addedItems = dataTable6
      end
    end
    workValue7 = RMenu
    workValue8 = workValue7
    workValue7 = workValue7.Get
    cmgCall4 = "business"
    textValue2 = "waiter_placeorder"
    workValue7, workValue8, cmgCall4, textValue2 = workValue7(workValue8, cmgCall4, textValue2)
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(workValue4, textValue9, dataTable5, dataTable7, flag7, workValue7, workValue8, cmgCall4, textValue2)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    workValue4 = "~y~View Orders"
    textValue9 = ""
    dataTable5 = {}
    dataTable5.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataTable7 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: none) ===
    function flag7()
      local arg13, arg23
    end
    workValue7 = RMenu
    workValue8 = workValue7
    workValue7 = workValue7.Get
    cmgCall4 = "business"
    textValue2 = "waiter_vieworders"
    workValue7, workValue8, cmgCall4, textValue2 = workValue7(workValue8, cmgCall4, textValue2)
    arg22(workValue4, textValue9, dataTable5, dataTable7, flag7, workValue7, workValue8, cmgCall4, textValue2)
  end
  arg1(arg2, flag4, flag5, flag6, textValue11)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag5 = "business"
  flag6 = "waiter_placeorder"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag5, flag6)
  flag4 = true
  flag5 = false
  flag6 = true

  -- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
  function textValue11()
    local arg12, arg22, workValue4, textValue9, dataTable5, dataTable7, flag7, workValue7, workValue8, cmgCall4, textValue2, rageUiCall2, stringHelper3, textValue3, dataTable3, flag3, workValue2, textValue7
    arg12 = CMG
    arg12 = arg12.getUserBusinessData
    arg22 = "waiter"
    arg12 = arg12(arg22)
    if arg12 then
      arg22 = textValue12
      workValue4 = arg12
      arg22 = arg22(workValue4)
      if arg22 then
        goto flow_label_16
      end
    end
    arg22 = RageUI
    arg22 = arg22.CloseAll
    arg22()
    return
    ::flow_label_16::
    arg22 = 0
    workValue4 = pairs
    textValue9 = arg12.jobInfo
    textValue9 = textValue9.addedItems
    workValue4, textValue9, dataTable5, dataTable7 = workValue4(textValue9)
    for flag7, workValue7 in workValue4, textValue9, dataTable5, dataTable7 do
      workValue8 = arg12.locationInfo
      workValue8 = workValue8.items
      workValue8 = workValue8[flag7]
      cmgCall4 = CMG
      cmgCall4 = cmgCall4.getBusinessPriceOverrides
      textValue2 = arg12.name
      cmgCall4 = cmgCall4(textValue2)
      cmgCall4 = cmgCall4[flag7]
      if not cmgCall4 then
        cmgCall4 = arg12.jobMetadata
        cmgCall4 = cmgCall4.sellableItems
        cmgCall4 = cmgCall4[flag7]
      end
      textValue2 = cmgCall4 * workValue7
      arg22 = arg22 + textValue2
      rageUiCall2 = RageUI
      rageUiCall2 = rageUiCall2.ButtonWithStyle
      stringHelper3 = tostring
      textValue3 = workValue7
      stringHelper3 = stringHelper3(textValue3)
      textValue3 = "x "
      dataTable3 = workValue8[1]
      stringHelper3 = stringHelper3 .. textValue3 .. dataTable3
      textValue3 = ""
      dataTable3 = {}
      flag3 = "\194\163"
      workValue2 = getMoneyStringFormatted
      textValue7 = textValue2
      workValue2 = workValue2(textValue7)
      flag3 = flag3 .. workValue2
      dataTable3.RightLabel = flag3
      flag3 = true

      -- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
      function workValue2()
        local arg13, arg23
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall2(stringHelper3, textValue3, dataTable3, flag3, workValue2)
    end
    workValue4 = RageUI
    workValue4 = workValue4.ButtonWithStyle
    textValue9 = "~y~Add Item"
    dataTable5 = ""
    dataTable7 = {}
    dataTable7.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag7 = true

    -- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg13, arg23, arg3) ===
    function workValue7(arg13, arg23, arg3)
      local arg4, dataTable6, nameValue
      if arg3 then
        arg4 = TriggerServerEvent
        dataTable6 = "e76e0858eb"
        nameValue = arg12.name
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e76e0858eb".
        arg4(dataTable6, nameValue)
      end
    end
    workValue8 = RMenu
    cmgCall4 = workValue8
    workValue8 = workValue8.Get
    textValue2 = "business"
    rageUiCall2 = "waiter_additem"
    workValue8, cmgCall4, textValue2, rageUiCall2, stringHelper3, textValue3, dataTable3, flag3, workValue2, textValue7 = workValue8(cmgCall4, textValue2, rageUiCall2)
    -- Beginner: Draw a selectable RageUI menu button.
    workValue4(textValue9, dataTable5, dataTable7, flag7, workValue7, workValue8, cmgCall4, textValue2, rageUiCall2, stringHelper3, textValue3, dataTable3, flag3, workValue2, textValue7)
    workValue4 = table
    workValue4 = workValue4.count
    textValue9 = arg12.jobInfo
    textValue9 = textValue9.addedItems
    -- Beginner: result below is count.
    workValue4 = workValue4(textValue9)
    if workValue4 > 0 then
      workValue4 = RageUI
      workValue4 = workValue4.ButtonWithStyle
      textValue9 = "~g~Request Payment Now"
      dataTable5 = "This takes payment now, and should be used for customers in the restaurant."
      dataTable7 = {}
      flag7 = "\194\163"
      workValue7 = getMoneyStringFormatted
      workValue8 = arg22
      workValue7 = workValue7(workValue8)
      flag7 = flag7 .. workValue7
      dataTable7.RightLabel = flag7
      flag7 = true

      -- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg13, arg23, arg3) ===
      function workValue7(arg13, arg23, arg3)
        local arg4, dataTable6, nameValue
        if arg3 then
          arg4 = TriggerServerEvent
          dataTable6 = "79eec4ec28"
          nameValue = arg12.jobInfo
          nameValue = nameValue.addedItems
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "79eec4ec28".
          arg4(dataTable6, nameValue)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      workValue4(textValue9, dataTable5, dataTable7, flag7, workValue7)
      workValue4 = RageUI
      workValue4 = workValue4.ButtonWithStyle
      textValue9 = "~g~Request Payment Later"
      dataTable5 = "This takes payment later, and should be used when delivering to a location outside the complex (takeaways)."
      dataTable7 = {}
      flag7 = "\194\163"
      workValue7 = getMoneyStringFormatted
      workValue8 = arg22
      workValue7 = workValue7(workValue8)
      flag7 = flag7 .. workValue7
      dataTable7.RightLabel = flag7
      flag7 = true

      -- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg13, arg23, arg3) ===
      function workValue7(arg13, arg23, arg3)
        local arg4, dataTable6, nameValue
        if arg3 then
          arg4 = TriggerServerEvent
          dataTable6 = "09b7549346"
          nameValue = arg12.jobInfo
          nameValue = nameValue.addedItems
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "09b7549346".
          arg4(dataTable6, nameValue)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      workValue4(textValue9, dataTable5, dataTable7, flag7, workValue7)
    end
  end
  arg1(arg2, flag4, flag5, flag6, textValue11)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag5 = "business"
  flag6 = "waiter_additem"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag5, flag6)
  flag4 = true
  flag5 = false
  flag6 = true

  -- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
  function textValue11()
    local arg12, arg22, workValue4, textValue9, dataTable5, dataTable7, flag7, workValue7, workValue8, cmgCall4, textValue2, rageUiCall2, stringHelper3, textValue3, dataTable3, flag3, workValue2, textValue7, textValue8
    arg12 = CMG
    arg12 = arg12.getUserBusinessData
    arg22 = "waiter"
    arg12 = arg12(arg22)
    if arg12 then
      arg22 = textValue12
      workValue4 = arg12
      arg22 = arg22(workValue4)
      if arg22 then
        goto flow_label_16
      end
    end
    arg22 = RageUI
    arg22 = arg22.CloseAll
    arg22()
    return
    ::flow_label_16::
    arg22 = pairs
    workValue4 = arg12.jobMetadata
    workValue4 = workValue4.sellableItems
    arg22, workValue4, textValue9, dataTable5 = arg22(workValue4)
    for dataTable7, flag7 in arg22, workValue4, textValue9, dataTable5 do
      workValue7 = arg12.locationInfo
      workValue7 = workValue7.items
      workValue7 = workValue7[dataTable7]
      if workValue7 then
        workValue8 = CMG
        workValue8 = workValue8.getBusinessPriceOverrides
        cmgCall4 = arg12.name
        workValue8 = workValue8(cmgCall4)
        workValue8 = workValue8[dataTable7]
        if not workValue8 then
          workValue8 = flag7
        end
        cmgCall4 = RageUI
        cmgCall4 = cmgCall4.ButtonWithStyle
        textValue2 = "Add "
        rageUiCall2 = workValue7[1]
        textValue2 = textValue2 .. rageUiCall2
        rageUiCall2 = ""
        stringHelper3 = {}
        textValue3 = "\194\163"
        dataTable3 = getMoneyStringFormatted
        flag3 = workValue8
        dataTable3 = dataTable3(flag3)
        textValue3 = textValue3 .. dataTable3
        stringHelper3.RightLabel = textValue3
        textValue3 = true

        -- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg13, arg23, arg3) ===
        function dataTable3(arg13, arg23, arg3)
          local arg4, dataTable6
          if arg3 then
            arg4 = arg12.jobInfo
            dataTable6 = dataTable7
            arg4.lastPickedItemId = dataTable6
            arg4 = arg12.jobInfo
            arg4.pickedItemAmount = 1
          end
        end
        flag3 = RMenu
        workValue2 = flag3
        flag3 = flag3.Get
        textValue7 = "business"
        textValue8 = "waiter_additemamount"
        flag3, workValue2, textValue7, textValue8 = flag3(workValue2, textValue7, textValue8)
        -- Beginner: Draw a selectable RageUI menu button.
        cmgCall4(textValue2, rageUiCall2, stringHelper3, textValue3, dataTable3, flag3, workValue2, textValue7, textValue8)
      end
    end
  end
  arg1(arg2, flag4, flag5, flag6, textValue11)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag5 = "business"
  flag6 = "waiter_additemamount"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag5, flag6)
  flag4 = true
  flag5 = false
  flag6 = true

  -- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
  function textValue11()
    local arg12, arg22, workValue4, textValue9, dataTable5, dataTable7, flag7, workValue7, workValue8, cmgCall4, textValue2
    arg12 = CMG
    arg12 = arg12.getUserBusinessData
    arg22 = "waiter"
    arg12 = arg12(arg22)
    if arg12 then
      arg22 = textValue12
      workValue4 = arg12
      arg22 = arg22(workValue4)
      if arg22 then
        goto flow_label_16
      end
    end
    arg22 = RageUI
    arg22 = arg22.CloseAll
    arg22()
    return
    ::flow_label_16::
    arg22 = RageUI
    arg22 = arg22.List
    workValue4 = "Amount To Add"
    textValue9 = dataTable
    dataTable5 = arg12.jobInfo
    dataTable5 = dataTable5.pickedItemAmount
    dataTable7 = ""
    flag7 = {}
    workValue7 = true

    -- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg13, arg23, arg3, arg4) ===
    function workValue8(arg13, arg23, arg3, arg4)
      local dataTable6
      dataTable6 = arg12.jobInfo
      dataTable6.pickedItemAmount = arg4
    end
    -- Beginner: Draw a RageUI list selector.
    arg22(workValue4, textValue9, dataTable5, dataTable7, flag7, workValue7, workValue8)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    workValue4 = "~g~Add Item To Order"
    textValue9 = ""
    dataTable5 = {}
    dataTable5.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataTable7 = true

    -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg13, arg23, arg3) ===
    function flag7(arg13, arg23, arg3)
      local arg4, dataTable6, nameValue, stringHelper4
      if arg3 then
        arg4 = arg12.jobInfo
        arg4 = arg4.addedItems
        dataTable6 = arg12.jobInfo
        dataTable6 = dataTable6.lastPickedItemId
        nameValue = arg12.jobInfo
        stringHelper4 = nameValue.pickedItemAmount
        nameValue = dataTable
        nameValue = nameValue[stringHelper4]
        arg4[dataTable6] = nameValue
        arg4 = TriggerServerEvent
        dataTable6 = "e76e0858eb"
        nameValue = arg12.name
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e76e0858eb".
        arg4(dataTable6, nameValue)
      end
    end
    workValue7 = RMenu
    workValue8 = workValue7
    workValue7 = workValue7.Get
    cmgCall4 = "business"
    textValue2 = "waiter_placeorder"
    workValue7, workValue8, cmgCall4, textValue2 = workValue7(workValue8, cmgCall4, textValue2)
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(workValue4, textValue9, dataTable5, dataTable7, flag7, workValue7, workValue8, cmgCall4, textValue2)
  end
  arg1(arg2, flag4, flag5, flag6, textValue11)
end
textValue14(rageUiCall8, textValue, cmgCall, rageUiCall3)
textValue14 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiCall8; parameters: arg1, arg2) ===
function rageUiCall8(arg1, arg2)
  local flag4, flag5, flag6, textValue11, workValue6, cmgCall2, cmgCall3, workValue9, stringHelper, numberValue, rageUiCall4
  flag4 = arg1
  flag5 = "_vieworders"
  flag4 = flag4 .. flag5
  flag5 = arg1
  flag6 = "_vieworder"
  flag5 = flag5 .. flag6
  if arg2 then
    flag6 = RMenu
    flag6 = flag6.Add
    textValue11 = "business"
    workValue6 = flag4
    cmgCall2 = RageUI
    cmgCall2 = cmgCall2.CreateSubMenu
    cmgCall3 = RMenu
    workValue9 = cmgCall3
    cmgCall3 = cmgCall3.Get
    stringHelper = "business"
    numberValue = arg2
    -- Beginner: result below is menu.
    cmgCall3 = cmgCall3(workValue9, stringHelper, numberValue)
    workValue9 = ""
    stringHelper = "~b~CMG Business"
    numberValue = CMG
    numberValue = numberValue.getRageUIMenuWidth
    numberValue = numberValue()
    rageUiCall4 = CMG
    rageUiCall4 = rageUiCall4.getRageUIMenuHeight
    rageUiCall4 = rageUiCall4()
    cmgCall2, cmgCall3, workValue9, stringHelper, numberValue, rageUiCall4 = cmgCall2(cmgCall3, workValue9, stringHelper, numberValue, rageUiCall4)
    flag6(textValue11, workValue6, cmgCall2, cmgCall3, workValue9, stringHelper, numberValue, rageUiCall4)
  else
    flag6 = RMenu
    flag6 = flag6.Add
    textValue11 = "business"
    workValue6 = flag4
    cmgCall2 = RageUI
    cmgCall2 = cmgCall2.CreateMenu
    cmgCall3 = ""
    workValue9 = "~b~CMG Business"
    stringHelper = CMG
    stringHelper = stringHelper.getRageUIMenuWidth
    stringHelper = stringHelper()
    numberValue = CMG
    numberValue = numberValue.getRageUIMenuHeight
    numberValue, rageUiCall4 = numberValue()
    cmgCall2, cmgCall3, workValue9, stringHelper, numberValue, rageUiCall4 = cmgCall2(cmgCall3, workValue9, stringHelper, numberValue, rageUiCall4)
    flag6(textValue11, workValue6, cmgCall2, cmgCall3, workValue9, stringHelper, numberValue, rageUiCall4)
  end
  flag6 = RMenu
  flag6 = flag6.Add
  textValue11 = "business"
  workValue6 = flag5
  cmgCall2 = RageUI
  cmgCall2 = cmgCall2.CreateSubMenu
  cmgCall3 = RMenu
  workValue9 = cmgCall3
  cmgCall3 = cmgCall3.Get
  stringHelper = "business"
  numberValue = flag4
  -- Beginner: result below is menu.
  cmgCall3 = cmgCall3(workValue9, stringHelper, numberValue)
  workValue9 = ""
  stringHelper = "~b~CMG Business"
  numberValue = CMG
  numberValue = numberValue.getRageUIMenuWidth
  numberValue = numberValue()
  rageUiCall4 = CMG
  rageUiCall4 = rageUiCall4.getRageUIMenuHeight
  rageUiCall4 = rageUiCall4()
  cmgCall2, cmgCall3, workValue9, stringHelper, numberValue, rageUiCall4 = cmgCall2(cmgCall3, workValue9, stringHelper, numberValue, rageUiCall4)
  flag6(textValue11, workValue6, cmgCall2, cmgCall3, workValue9, stringHelper, numberValue, rageUiCall4)
  flag6 = RageUI
  flag6 = flag6.CreateWhile
  textValue11 = 1.0
  workValue6 = RMenu
  cmgCall2 = workValue6
  workValue6 = workValue6.Get
  cmgCall3 = "business"
  workValue9 = flag4
  -- Beginner: result below is menu.
  workValue6 = workValue6(cmgCall2, cmgCall3, workValue9)
  cmgCall2 = nil

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local arg12, arg22, workValue4, textValue9, dataTable5, dataTable7
    arg12 = RageUI
    arg12 = arg12.IsVisible
    arg22 = RMenu
    workValue4 = arg22
    arg22 = arg22.Get
    textValue9 = "business"
    dataTable5 = flag4
    -- Beginner: result below is menu.
    arg22 = arg22(workValue4, textValue9, dataTable5)
    workValue4 = true
    textValue9 = false
    dataTable5 = true

    -- === HELPER FUNCTION (decompiler name: dataTable7; parameters: none) ===
    function dataTable7()
      local arg13, arg23, arg3, arg4, dataTable6, nameValue, stringHelper4, textValue13, rageUiCall7, workValue10, rageUiCall, stringHelper2, flag, dataTable2, flag2, workValue, textValue6, workValue3
      arg13 = CMG
      arg13 = arg13.getUserBusinessData
      arg23 = arg1
      arg13 = arg13(arg23)
      if arg13 then
        arg23 = arg1
        if "waiter" ~= arg23 then
          goto flow_label_19
        end
        arg23 = textValue12
        arg3 = arg13
        arg23 = arg23(arg3)
        if arg23 then
          goto flow_label_19
        end
      end
      arg23 = RageUI
      arg23 = arg23.CloseAll
      arg23()
      return
      ::flow_label_19::
      arg23 = arg13.state
      arg23 = arg23.orders
      arg23 = #arg23
      if 0 == arg23 then
        arg23 = RageUI
        arg23 = arg23.Separator
        arg3 = "~r~No orders to display."
        arg23(arg3)
      end
      arg23 = pairs
      arg3 = numberValue13
      arg4 = arg13.state
      arg4 = arg4.orders
      arg3, arg4, dataTable6, nameValue, stringHelper4, textValue13, rageUiCall7, workValue10, rageUiCall, stringHelper2, flag, dataTable2, flag2, workValue, textValue6, workValue3 = arg3(arg4)
      arg23, arg3, arg4, dataTable6 = arg23(arg3, arg4, dataTable6, nameValue, stringHelper4, textValue13, rageUiCall7, workValue10, rageUiCall, stringHelper2, flag, dataTable2, flag2, workValue, textValue6, workValue3)
      for nameValue, stringHelper4 in arg23, arg3, arg4, dataTable6 do
        textValue13 = stringHelper4.isCompleted
        if textValue13 then
          textValue13 = "~g~"
          if textValue13 then
            goto flow_label_42
          end
        end
        textValue13 = "~y~"
        ::flow_label_42::
        rageUiCall7 = RageUI
        rageUiCall7 = rageUiCall7.ButtonWithStyle
        workValue10 = textValue13
        rageUiCall = "View Order #"
        stringHelper2 = tostring
        flag = stringHelper4.orderId
        stringHelper2 = stringHelper2(flag)
        workValue10 = workValue10 .. rageUiCall .. stringHelper2
        rageUiCall = ""
        stringHelper2 = {}
        stringHelper2.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag = true

        -- === HELPER FUNCTION (decompiler name: dataTable2; parameters: arg14, arg24, arg32) ===
        function dataTable2(arg14, arg24, arg32)
          local serverEventCall, textValue10
          if arg32 then
            serverEventCall = arg13.jobInfo
            textValue10 = stringHelper4
            serverEventCall.selectedOrderInfo = textValue10
          end
        end
        flag2 = RMenu
        workValue = flag2
        flag2 = flag2.Get
        textValue6 = "business"
        workValue3 = flag5
        flag2, workValue, textValue6, workValue3 = flag2(workValue, textValue6, workValue3)
        -- Beginner: Draw a selectable RageUI menu button.
        rageUiCall7(workValue10, rageUiCall, stringHelper2, flag, dataTable2, flag2, workValue, textValue6, workValue3)
      end
    end
    arg12(arg22, workValue4, textValue9, dataTable5, dataTable7)
    arg12 = RageUI
    arg12 = arg12.IsVisible
    arg22 = RMenu
    workValue4 = arg22
    arg22 = arg22.Get
    textValue9 = "business"
    dataTable5 = flag5
    -- Beginner: result below is menu.
    arg22 = arg22(workValue4, textValue9, dataTable5)
    workValue4 = true
    textValue9 = false
    dataTable5 = true

    -- === HELPER FUNCTION (decompiler name: dataTable7; parameters: none) ===
    function dataTable7()
      local arg13, arg23, arg3, arg4, dataTable6, nameValue, stringHelper4, textValue13, rageUiCall7, workValue10, rageUiCall, stringHelper2, flag, dataTable2, flag2, workValue
      arg13 = CMG
      arg13 = arg13.getUserBusinessData
      arg23 = arg1
      arg13 = arg13(arg23)
      if arg13 then
        arg23 = arg1
        if "waiter" ~= arg23 then
          goto flow_label_19
        end
        arg23 = textValue12
        arg3 = arg13
        arg23 = arg23(arg3)
        if arg23 then
          goto flow_label_19
        end
      end
      arg23 = RageUI
      arg23 = arg23.CloseAll
      arg23()
      return
      ::flow_label_19::
      arg23 = arg13.jobInfo
      arg23 = arg23.selectedOrderInfo
      arg3 = arg23.isCompleted
      if arg3 then
        arg3 = "~g~"
        if arg3 then
          goto flow_label_28
        end
      end
      arg3 = "~y~"
      ::flow_label_28::
      arg4 = RageUI
      arg4 = arg4.Separator
      dataTable6 = arg3
      nameValue = "Order #"
      stringHelper4 = tostring
      textValue13 = arg23.orderId
      stringHelper4 = stringHelper4(textValue13)
      textValue13 = " - "
      rageUiCall7 = arg23.timeCreated
      dataTable6 = dataTable6 .. nameValue .. stringHelper4 .. textValue13 .. rageUiCall7
      arg4(dataTable6)
      arg4 = arg23.hasPaid
      if arg4 then
        arg4 = RageUI
        arg4 = arg4.Separator
        dataTable6 = "~g~Payment Paid (Total \194\163"
        nameValue = getMoneyStringFormatted
        stringHelper4 = arg23.totalPrice
        nameValue = nameValue(stringHelper4)
        stringHelper4 = ")"
        dataTable6 = dataTable6 .. nameValue .. stringHelper4
        arg4(dataTable6)
      else
        arg4 = RageUI
        arg4 = arg4.Separator
        dataTable6 = "~r~Payment Pending (Total \194\163"
        nameValue = getMoneyStringFormatted
        stringHelper4 = arg23.totalPrice
        nameValue = nameValue(stringHelper4)
        stringHelper4 = ")"
        dataTable6 = dataTable6 .. nameValue .. stringHelper4
        arg4(dataTable6)
      end
      arg4 = pairs
      dataTable6 = arg23.items
      arg4, dataTable6, nameValue, stringHelper4 = arg4(dataTable6)
      for textValue13, rageUiCall7 in arg4, dataTable6, nameValue, stringHelper4 do
        workValue10 = arg13.locationInfo
        workValue10 = workValue10.items
        workValue10 = workValue10[textValue13]
        rageUiCall = RageUI
        rageUiCall = rageUiCall.ButtonWithStyle
        stringHelper2 = tostring
        flag = rageUiCall7
        stringHelper2 = stringHelper2(flag)
        flag = "x "
        dataTable2 = workValue10[1]
        stringHelper2 = stringHelper2 .. flag .. dataTable2
        flag = ""
        dataTable2 = {}
        flag2 = true

        -- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
        function workValue()
          local arg14, arg24
        end
        -- Beginner: Draw a selectable RageUI menu button.
        rageUiCall(stringHelper2, flag, dataTable2, flag2, workValue)
      end
      arg4 = arg1
      if "manager" ~= arg4 then
        arg4 = arg1
        if "waiter" ~= arg4 then
          arg4 = arg1
          if "delivery" ~= arg4 then
            goto flow_label_121
          end
        end
      end
      arg4 = arg23.hasPaid
      if not arg4 then
        arg4 = RageUI
        arg4 = arg4.ButtonWithStyle
        dataTable6 = "~g~Request Nearby Payment"
        nameValue = ""
        stringHelper4 = {}
        stringHelper4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        textValue13 = true

        -- === HELPER FUNCTION (decompiler name: rageUiCall7; parameters: arg14, arg24, arg32) ===
        function rageUiCall7(arg14, arg24, arg32)
          local serverEventCall, textValue10, workValue5
          if arg32 then
            serverEventCall = TriggerServerEvent
            textValue10 = "d5eac1b64e"
            workValue5 = arg23.orderId
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d5eac1b64e".
            serverEventCall(textValue10, workValue5)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        arg4(dataTable6, nameValue, stringHelper4, textValue13, rageUiCall7)
      else
        arg4 = arg23.isCompleted
        if not arg4 then
          arg4 = RageUI
          arg4 = arg4.ButtonWithStyle
          dataTable6 = "~g~Mark As Completed"
          nameValue = ""
          stringHelper4 = {}
          stringHelper4.RightLabel = "\226\134\146\226\134\146\226\134\146"
          textValue13 = true

          -- === HELPER FUNCTION (decompiler name: rageUiCall7; parameters: arg14, arg24, arg32) ===
          function rageUiCall7(arg14, arg24, arg32)
            local serverEventCall, textValue10, workValue5
            if arg32 then
              serverEventCall = TriggerServerEvent
              textValue10 = "9e28ed4893"
              workValue5 = arg23.orderId
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9e28ed4893".
              serverEventCall(textValue10, workValue5)
              arg23.isCompleted = true
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          arg4(dataTable6, nameValue, stringHelper4, textValue13, rageUiCall7)
        end
      end
      ::flow_label_121::
    end
    arg12(arg22, workValue4, textValue9, dataTable5, dataTable7)
  end
  flag6(textValue11, workValue6, cmgCall2, cmgCall3)
end
textValue14.addGenericBusinessOrderView = rageUiCall8
textValue14 = CMG
textValue14 = textValue14.addGenericBusinessOrderView
rageUiCall8 = "waiter"
textValue = "waiter_mainmenu"
textValue14(rageUiCall8, textValue)
textValue14 = RegisterNetEvent
rageUiCall8 = "7aa155f442"
-- Beginner: this function handles network event "7aa155f442".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, flag4, flag5, flag6
  arg1 = CMG
  arg1 = arg1.getUserBusinessData
  arg2 = "waiter"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = ExecuteCommand
    arg2 = "e notepad"
    arg1(arg2)
    arg1 = RageUI
    arg1 = arg1.Visible
    arg2 = RMenu
    flag4 = arg2
    arg2 = arg2.Get
    flag5 = "business"
    flag6 = "waiter_mainmenu"
    -- Beginner: result below is menu.
    arg2 = arg2(flag4, flag5, flag6)
    flag4 = true
    arg1(arg2, flag4)
    arg1 = TriggerServerEvent
    arg2 = "bf3f551598"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7aa155f442".
textValue14(rageUiCall8, textValue)
textValue14 = {}
rageUiCall8 = {}
rageUiCall8.init = numberValue10
rageUiCall8.tick = numberValue11
rageUiCall8.finish = numberValue12
rageUiCall8.next = "main"
textValue14.main = rageUiCall8
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.registerBusinessJob
textValue = "waiter"
cmgCall = nil
rageUiCall3 = "main"
rageUiCall5 = textValue14
rageUiCall6 = nil
rageUiCall8(textValue, cmgCall, rageUiCall3, rageUiCall5, rageUiCall6)
