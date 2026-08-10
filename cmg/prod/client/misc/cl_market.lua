--[[
    Beginner Guide: cl_market.lua
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
    BEGINNER GUIDE — Market
    =======================

    File: cmg/prod/client/misc/cl_market.lua
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

    Network/hash identifiers found: 6
      They are intentionally left unchanged because matching server code may use them.
      * a708fb421f
      * f7338579d9
      * bc42cc0fbd
      * 963a1f4ac7
      * 0226731f8f
      * 6f5c12edde

]]
local workValue, dataTable3, dataTable4, rageUiCall, textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, tableHelper, textValue, stringHelper, workValue4
workValue = RMenu
workValue = workValue.Add
dataTable3 = "cmgmarket"
dataTable4 = "main"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue8 = ""
textValue9 = "Items"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_marketui"
textValue11 = "cmg_marketui"
rageUiCall, textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, tableHelper, textValue, stringHelper, workValue4 = rageUiCall(textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue11)
workValue(dataTable3, dataTable4, rageUiCall, textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, tableHelper, textValue, stringHelper, workValue4)
workValue = RMenu
workValue = workValue.Add
dataTable3 = "cmgmarket"
dataTable4 = "amount"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue8 = RMenu
textValue9 = textValue8
textValue8 = textValue8.Get
rageUiCall2 = "cmgmarket"
rageUiCall3 = "main"
-- Beginner: result below is menu.
textValue8 = textValue8(textValue9, rageUiCall2, rageUiCall3)
textValue9 = ""
rageUiCall2 = " "
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue11, tableHelper, textValue, stringHelper, workValue4 = rageUiCall4()
rageUiCall, textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, tableHelper, textValue, stringHelper, workValue4 = rageUiCall(textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, tableHelper, textValue, stringHelper, workValue4)
workValue(dataTable3, dataTable4, rageUiCall, textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, tableHelper, textValue, stringHelper, workValue4)
workValue = {}
workValue.menuOpen = false
workValue.currentMenu = 0
dataTable3 = {}
workValue.markets = dataTable3
dataTable3 = {}
workValue.marketsTypes = dataTable3
workValue.distanceToMarket = 0
dataTable3 = {}
workValue.currentMarket = dataTable3
workValue.amountIndex = 1
dataTable3 = {}
workValue.selectedItem = dataTable3
dataTable3 = {}
workValue.itemNames = dataTable3
workValue.currentMarketId = ""
dataTable3 = {}
dataTable4 = {}
rageUiCall = {}
textValue8 = {}
textValue9 = {}
rageUiCall2 = 1
rageUiCall3 = 100
rageUiCall4 = 1
for textValue11 = rageUiCall2, rageUiCall3, rageUiCall4 do
  tableHelper = table
  tableHelper = tableHelper.insert
  textValue = textValue9
  stringHelper = tostring
  workValue4 = textValue11
  stringHelper, workValue4 = stringHelper(workValue4)
  tableHelper(textValue, stringHelper, workValue4)
end
function rageUiCall2(arg1)
  local arg2, arg3, textValue6, flag4, cmgCall3, workValue8, cmgCall5, workValue11, textValue12, tableHelper2, workValue2, dataTable
  arg2 = {}
  arg3 = pairs
  textValue6 = arg1
  arg3, textValue6, flag4, cmgCall3 = arg3(textValue6)
  for workValue8, cmgCall5 in arg3, textValue6, flag4, cmgCall3 do
    workValue11 = cmgCall5
    textValue12 = 1
    tableHelper2 = type
    workValue2 = cmgCall5
    tableHelper2 = tableHelper2(workValue2)
    if "table" == tableHelper2 then
      workValue11 = cmgCall5.price
      textValue12 = cmgCall5.amountGiven
    end
    if "_config" ~= workValue8 then
      tableHelper2 = table
      tableHelper2 = tableHelper2.insert
      workValue2 = arg2
      dataTable = {}
      dataTable.itemId = workValue8
      dataTable.price = workValue11
      dataTable.amountGiven = textValue12
      tableHelper2(workValue2, dataTable)
    end
  end
  arg3 = table
  arg3 = arg3.sort
  textValue6 = arg2
  function flag4(arg12, arg22)
    local workValue6, textValue7
    workValue6 = arg12.price
    textValue7 = arg22.price
    workValue6 = workValue6 < textValue7
    return workValue6
  end
  arg3(textValue6, flag4)
  arg3 = 0
  function textValue6()
    local arg12, arg22, workValue6
    arg12 = arg3
    arg12 = arg12 + 1
    arg3 = arg12
    arg22 = arg3
    arg12 = arg2
    arg12 = arg12[arg22]
    if arg12 then
      arg12 = 0
      workValue6 = arg3
      arg22 = arg2
      arg22 = arg22[workValue6]
      return arg12, arg22
    else
      arg12 = nil
      arg22 = nil
      return arg12, arg22
    end
  end
  return textValue6
end
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateWhile
rageUiCall4 = 1.0
textValue11 = RMenu
tableHelper = textValue11
textValue11 = textValue11.Get
textValue = "cmgmarket"
stringHelper = "main"
-- Beginner: result below is menu.
textValue11 = textValue11(tableHelper, textValue, stringHelper)
tableHelper = nil
function textValue()
  local arg1, arg2, arg3, textValue6, flag4, cmgCall3, workValue8
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue6 = "cmgmarket"
  flag4 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue6, flag4)
  arg3 = true
  textValue6 = false
  flag4 = true
  function cmgCall3()
    local arg12, arg22, workValue6, textValue7, mathHelper2, workValue7, workValue9, workValue10, cmgCall6, textValue13, mathHelper, flag, workValue3, cmgCall, numberValue3, textValue2, textValue3, workValue5, textValue4, textValue5
    arg12 = false
    arg22 = rageUiCall2
    workValue6 = workValue.currentMarket
    arg22, workValue6, textValue7, mathHelper2 = arg22(workValue6)
    for workValue7, workValue9 in arg22, workValue6, textValue7, mathHelper2 do
      workValue10 = workValue.currentMarket
      workValue10 = workValue10._config
      workValue10 = workValue10.lottery
      if workValue10 and not arg12 then
        workValue10 = workValue9.price
        cmgCall6 = CMG
        cmgCall6 = cmgCall6.getLotteryTicketPrice
        cmgCall6 = cmgCall6()
        if workValue10 > cmgCall6 then
          workValue10 = RageUI
          workValue10 = workValue10.ButtonWithStyle
          cmgCall6 = "Lottery Ticket"
          textValue13 = ""
          mathHelper = {}
          flag = "\194\163"
          workValue3 = getMoneyStringFormatted
          cmgCall = CMG
          cmgCall = cmgCall.getLotteryTicketPrice
          cmgCall, numberValue3, textValue2, textValue3, workValue5, textValue4, textValue5 = cmgCall()
          workValue3 = workValue3(cmgCall, numberValue3, textValue2, textValue3, workValue5, textValue4, textValue5)
          flag = flag .. workValue3
          mathHelper.RightLabel = flag
          flag = true
          function workValue3(arg13, arg23, arg32)
            local arg4, dataTable5, cmgCall4, textValue10
            if arg32 then
              arg4 = RMenu
              dataTable5 = arg4
              arg4 = arg4.Get
              cmgCall4 = "cmgmarket"
              textValue10 = "amount"
              -- Beginner: result below is menu.
              arg4 = arg4(dataTable5, cmgCall4, textValue10)
              dataTable5 = {}
              dataTable5.item_id = "lottery"
              cmgCall4 = CMG
              cmgCall4 = cmgCall4.getLotteryTicketPrice
              cmgCall4 = cmgCall4()
              dataTable5.price = cmgCall4
              arg4.MetaData = dataTable5
            end
          end
          cmgCall = RMenu
          numberValue3 = cmgCall
          cmgCall = cmgCall.Get
          textValue2 = "cmgmarket"
          textValue3 = "amount"
          cmgCall, numberValue3, textValue2, textValue3, workValue5, textValue4, textValue5 = cmgCall(numberValue3, textValue2, textValue3)
          -- Beginner: Draw a selectable RageUI menu button.
          workValue10(cmgCall6, textValue13, mathHelper, flag, workValue3, cmgCall, numberValue3, textValue2, textValue3, workValue5, textValue4, textValue5)
          arg12 = true
        end
      end
      workValue10 = workValue.itemNames
      cmgCall6 = workValue.currentMarketId
      workValue10 = workValue10[cmgCall6]
      cmgCall6 = workValue9.itemId
      workValue10 = workValue10[cmgCall6]
      workValue10 = workValue10[1]
      cmgCall6 = workValue9.amountGiven
      if cmgCall6 > 1 then
        cmgCall6 = tostring
        textValue13 = workValue9.amountGiven
        cmgCall6 = cmgCall6(textValue13)
        textValue13 = "x "
        mathHelper = workValue10
        cmgCall6 = cmgCall6 .. textValue13 .. mathHelper
        workValue10 = cmgCall6
      end
      cmgCall6 = workValue9.price
      textValue13 = workValue9.itemId
      if "burner_phone" == textValue13 then
        textValue13 = CMG
        mathHelper = "getMoneyLaunderingBurnerPhoneDiscountPercentClient"
        textValue13 = textValue13[mathHelper]
        textValue13 = textValue13()
        if textValue13 > 0 then
          mathHelper = math
          mathHelper = mathHelper.floor
          flag = workValue9.price
          workValue3 = textValue13 / 100
          cmgCall = 1
          workValue3 = cmgCall - workValue3
          flag = flag * workValue3
          mathHelper = mathHelper(flag)
          cmgCall6 = mathHelper
        end
      end
      textValue13 = workValue9.itemId
      if "spraycan" == textValue13 then
        textValue13 = CMG
        textValue13 = textValue13.getClientGangRpSpraycanDiscountPercent
        textValue13 = textValue13()
        if textValue13 > 0 then
          mathHelper = math
          mathHelper = mathHelper.floor
          flag = workValue9.price
          workValue3 = textValue13 / 100
          cmgCall = 1
          workValue3 = cmgCall - workValue3
          flag = flag * workValue3
          mathHelper = mathHelper(flag)
          cmgCall6 = mathHelper
        end
      end
      textValue13 = {}
      mathHelper = workValue9.itemId
      textValue13.item_id = mathHelper
      textValue13.price = cmgCall6
      mathHelper = workValue.currentMarketId
      textValue13.marketId = mathHelper
      mathHelper = workValue.currentMarketId
      if "trapper" == mathHelper then
        mathHelper = CMG
        mathHelper = mathHelper.getTrapperSupplyDiscountPercentClient
        mathHelper = mathHelper()
        if mathHelper > 0 then
          textValue13.preTrapperUnitPrice = cmgCall6
          textValue13.trapperDiscountPct = mathHelper
          flag = math
          flag = flag.max
          workValue3 = 1
          cmgCall = math
          cmgCall = cmgCall.floor
          numberValue3 = 100
          numberValue3 = numberValue3 - mathHelper
          numberValue3 = cmgCall6 * numberValue3
          numberValue3 = numberValue3 / 100
          numberValue3 = numberValue3 + 0.5
          cmgCall, numberValue3, textValue2, textValue3, workValue5, textValue4, textValue5 = cmgCall(numberValue3)
          flag = flag(workValue3, cmgCall, numberValue3, textValue2, textValue3, workValue5, textValue4, textValue5)
          cmgCall6 = flag
        end
      end
      mathHelper = RageUI
      mathHelper = mathHelper.ButtonWithStyle
      flag = workValue10
      workValue3 = workValue.itemNames
      cmgCall = workValue.currentMarketId
      workValue3 = workValue3[cmgCall]
      cmgCall = workValue9.itemId
      workValue3 = workValue3[cmgCall]
      workValue3 = workValue3[3]
      cmgCall = {}
      numberValue3 = "\194\163"
      textValue2 = getMoneyStringFormatted
      textValue3 = cmgCall6
      textValue2 = textValue2(textValue3)
      numberValue3 = numberValue3 .. textValue2
      cmgCall.RightLabel = numberValue3
      numberValue3 = true
      function textValue2(arg13, arg23, arg32)
        local arg4, dataTable5, cmgCall4, textValue10
        if arg32 then
          arg4 = RMenu
          dataTable5 = arg4
          arg4 = arg4.Get
          cmgCall4 = "cmgmarket"
          textValue10 = "amount"
          -- Beginner: result below is menu.
          arg4 = arg4(dataTable5, cmgCall4, textValue10)
          dataTable5 = textValue13
          arg4.MetaData = dataTable5
        end
      end
      textValue3 = RMenu
      workValue5 = textValue3
      textValue3 = textValue3.Get
      textValue4 = "cmgmarket"
      textValue5 = "amount"
      textValue3, workValue5, textValue4, textValue5 = textValue3(workValue5, textValue4, textValue5)
      mathHelper(flag, workValue3, cmgCall, numberValue3, textValue2, textValue3, workValue5, textValue4, textValue5)
    end
  end
  function workValue8()
    local arg12, arg22
  end
  arg1(arg2, arg3, textValue6, flag4, cmgCall3, workValue8)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue6 = "cmgmarket"
  flag4 = "amount"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue6, flag4)
  arg3 = true
  textValue6 = false
  flag4 = true
  function cmgCall3(arg12)
    local arg22, workValue6, textValue7, mathHelper2, workValue7, workValue9, workValue10, cmgCall6, textValue13, mathHelper, flag
    arg22 = arg12.price
    workValue6 = workValue.amountIndex
    arg22 = arg22 * workValue6
    workValue6 = arg12.preTrapperUnitPrice
    if workValue6 then
      workValue6 = arg12.trapperDiscountPct
      if workValue6 then
        workValue6 = math
        workValue6 = workValue6.max
        textValue7 = 1
        mathHelper2 = math
        mathHelper2 = mathHelper2.floor
        workValue7 = arg12.preTrapperUnitPrice
        workValue9 = workValue.amountIndex
        workValue7 = workValue7 * workValue9
        workValue9 = arg12.trapperDiscountPct
        workValue10 = 100
        workValue9 = workValue10 - workValue9
        workValue7 = workValue7 * workValue9
        workValue7 = workValue7 / 100
        workValue7 = workValue7 + 0.5
        mathHelper2, workValue7, workValue9, workValue10, cmgCall6, textValue13, mathHelper, flag = mathHelper2(workValue7)
        workValue6 = workValue6(textValue7, mathHelper2, workValue7, workValue9, workValue10, cmgCall6, textValue13, mathHelper, flag)
        arg22 = workValue6
      end
    end
    workValue6 = RageUI
    workValue6 = workValue6.List
    textValue7 = "Amount"
    mathHelper2 = textValue9
    workValue7 = workValue.amountIndex
    workValue9 = "Current Price: \194\163"
    workValue10 = getMoneyStringFormatted
    cmgCall6 = arg22
    workValue10 = workValue10(cmgCall6)
    workValue9 = workValue9 .. workValue10
    workValue10 = {}
    cmgCall6 = true
    function textValue13(arg13, arg23, arg32, arg4)
      if arg23 then
        workValue.amountIndex = arg4
      end
    end
    function mathHelper()
      local arg13, arg23
    end
    flag = nil
    -- Beginner: Draw a RageUI list selector.
    workValue6(textValue7, mathHelper2, workValue7, workValue9, workValue10, cmgCall6, textValue13, mathHelper, flag)
    workValue6 = RageUI
    workValue6 = workValue6.Button
    textValue7 = "Buy"
    mathHelper2 = "Current Price: \194\163"
    workValue7 = getMoneyStringFormatted
    workValue9 = arg22
    workValue7 = workValue7(workValue9)
    mathHelper2 = mathHelper2 .. workValue7
    workValue7 = true
    function workValue9(arg13, arg23, arg32)
      local arg4, dataTable5, cmgCall4, textValue10
      if arg32 then
        arg4 = arg12.item_id
        if "lottery" == arg4 then
          arg4 = TriggerServerEvent
          dataTable5 = "a708fb421f"
          cmgCall4 = workValue.amountIndex
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a708fb421f".
          arg4(dataTable5, cmgCall4)
        else
          arg4 = CMG
          arg4 = arg4.purchaseFromMarket
          dataTable5 = arg12.marketId
          cmgCall4 = arg12.item_id
          textValue10 = workValue.amountIndex
          arg4(dataTable5, cmgCall4, textValue10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    workValue6(textValue7, mathHelper2, workValue7, workValue9)
  end
  function workValue8()
    local arg12, arg22
  end
  arg1(arg2, arg3, textValue6, flag4, cmgCall3, workValue8)
end
rageUiCall3(rageUiCall4, textValue11, tableHelper, textValue)
rageUiCall3 = RegisterNetEvent
rageUiCall4 = "f7338579d9"
-- Beginner: this function handles network event "f7338579d9".
function textValue11(arg1)
  local arg2, arg3, textValue6, flag4, cmgCall3, workValue8, cmgCall5, workValue11, textValue12, tableHelper2, workValue2, dataTable, numberValue, numberValue2, cmgCall2, numberValue4, numberValue5, dataTable2, numberValue6, numberValue7, numberValue8, numberValue9, flag2, flag3
  arg2 = 1
  arg3 = rageUiCall
  arg3 = #arg3
  textValue6 = 1
  for flag4 = arg2, arg3, textValue6 do
    cmgCall3 = tCMG
    cmgCall3 = cmgCall3.removeArea
    workValue8 = rageUiCall
    workValue8 = workValue8[flag4]
    cmgCall3(workValue8)
    cmgCall3 = rageUiCall
    cmgCall3[flag4] = nil
  end
  arg2 = 1
  arg3 = dataTable4
  arg3 = #arg3
  textValue6 = 1
  for flag4 = arg2, arg3, textValue6 do
    cmgCall3 = tCMG
    cmgCall3 = cmgCall3.removeMarker
    workValue8 = dataTable4
    workValue8 = workValue8[flag4]
    cmgCall3(workValue8)
  end
  arg2 = pairs
  arg3 = textValue8
  arg2, arg3, textValue6, flag4 = arg2(arg3)
  for cmgCall3, workValue8 in arg2, arg3, textValue6, flag4 do
    cmgCall5 = tCMG
    cmgCall5 = cmgCall5.removeBlip
    workValue11 = workValue8
    cmgCall5(workValue11)
  end
  function arg2(arg12)
    local arg22, workValue6, textValue7, mathHelper2, workValue7
    workValue6 = arg12.market_id
    arg22 = dataTable3
    arg22 = arg22[workValue6]
    workValue.currentMarket = arg22
    arg22 = arg12.market_id
    workValue.currentMarketId = arg22
    workValue.menuOpen = true
    arg22 = RageUI
    arg22 = arg22.Visible
    workValue6 = RMenu
    textValue7 = workValue6
    workValue6 = workValue6.Get
    mathHelper2 = "cmgmarket"
    workValue7 = "main"
    -- Beginner: result below is menu.
    workValue6 = workValue6(textValue7, mathHelper2, workValue7)
    textValue7 = true
    arg22(workValue6, textValue7)
    arg22 = workValue.currentMarket
    arg22 = arg22._config
    arg22 = arg22.policeEquipment
    if arg22 then
      arg22 = RMenu
      workValue6 = arg22
      arg22 = arg22.Get
      textValue7 = "cmgmarket"
      mathHelper2 = "main"
      -- Beginner: result below is menu.
      arg22 = arg22(workValue6, textValue7, mathHelper2)
      workValue6 = arg22
      arg22 = arg22.SetSpriteBanner
      textValue7 = "cmg_equipment"
      mathHelper2 = "cmg_equipment"
      arg22(workValue6, textValue7, mathHelper2)
    else
      arg22 = RMenu
      workValue6 = arg22
      arg22 = arg22.Get
      textValue7 = "cmgmarket"
      mathHelper2 = "main"
      -- Beginner: result below is menu.
      arg22 = arg22(workValue6, textValue7, mathHelper2)
      workValue6 = arg22
      arg22 = arg22.SetSpriteBanner
      textValue7 = "cmg_marketui"
      mathHelper2 = "cmg_marketui"
      arg22(workValue6, textValue7, mathHelper2)
    end
  end
  function arg3()
    local arg12, arg22
    workValue.menuOpen = false
    arg12 = RageUI
    arg12 = arg12.IsAnyMenuOfTypeVisible
    arg22 = "cmgmarket"
    arg12 = arg12(arg22)
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.CloseAll
      arg12()
    end
  end
  function textValue6()
    local arg12, arg22
  end
  flag4 = 1
  cmgCall3 = #arg1
  workValue8 = 1
  for cmgCall5 = flag4, cmgCall3, workValue8 do
    workValue11 = arg1[cmgCall5]
    textValue12 = "market"
    tableHelper2 = arg1[cmgCall5]
    tableHelper2 = tableHelper2[1]
    workValue2 = cmgCall5
    textValue12 = textValue12 .. tableHelper2 .. workValue2
    tableHelper2 = CMG
    tableHelper2 = tableHelper2.createArea
    workValue2 = textValue12
    dataTable = workValue11[2]
    numberValue = 1.25
    numberValue2 = 6
    cmgCall2 = arg2
    numberValue4 = arg3
    numberValue5 = textValue6
    dataTable2 = {}
    numberValue6 = arg1[cmgCall5]
    numberValue6 = numberValue6[1]
    dataTable2.market_id = numberValue6
    -- Beginner: Create an interaction area around a world position.
    tableHelper2(workValue2, dataTable, numberValue, numberValue2, cmgCall2, numberValue4, numberValue5, dataTable2)
    tableHelper2 = tCMG
    tableHelper2 = tableHelper2.addMarker
    workValue2 = workValue11[2]
    workValue2 = workValue2.x
    dataTable = workValue11[2]
    dataTable = dataTable.y
    numberValue = workValue11[2]
    numberValue = numberValue.z
    numberValue2 = 0.7
    cmgCall2 = 0.7
    numberValue4 = 0.5
    numberValue5 = 0
    dataTable2 = 255
    numberValue6 = 125
    numberValue7 = 125
    numberValue8 = 50
    numberValue9 = 29
    flag2 = true
    flag3 = true
    tableHelper2 = tableHelper2(workValue2, dataTable, numberValue, numberValue2, cmgCall2, numberValue4, numberValue5, dataTable2, numberValue6, numberValue7, numberValue8, numberValue9, flag2, flag3)
    workValue2 = rageUiCall
    workValue2 = #workValue2
    dataTable = workValue2 + 1
    workValue2 = rageUiCall
    workValue2[dataTable] = textValue12
    workValue2 = dataTable4
    workValue2 = #workValue2
    dataTable = workValue2 + 1
    workValue2 = dataTable4
    workValue2[dataTable] = tableHelper2
    dataTable = workValue11[1]
    workValue2 = dataTable3
    workValue2 = workValue2[dataTable]
    if workValue2 then
      dataTable = workValue2._config
      if dataTable then
        numberValue = dataTable.showBlip
        if numberValue then
          numberValue = table
          numberValue = numberValue.insert
          numberValue2 = textValue8
          cmgCall2 = tCMG
          cmgCall2 = cmgCall2.addBlip
          numberValue4 = workValue11[2]
          numberValue4 = numberValue4.x
          numberValue5 = workValue11[2]
          numberValue5 = numberValue5.y
          dataTable2 = workValue11[2]
          dataTable2 = dataTable2.z
          numberValue6 = dataTable.blipid
          numberValue7 = dataTable.blipcolor
          numberValue8 = nil
          numberValue9 = 0.7
          cmgCall2, numberValue4, numberValue5, dataTable2, numberValue6, numberValue7, numberValue8, numberValue9, flag2, flag3 = cmgCall2(numberValue4, numberValue5, dataTable2, numberValue6, numberValue7, numberValue8, numberValue9)
          numberValue(numberValue2, cmgCall2, numberValue4, numberValue5, dataTable2, numberValue6, numberValue7, numberValue8, numberValue9, flag2, flag3)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f7338579d9".
rageUiCall3(rageUiCall4, textValue11)
rageUiCall3 = RegisterNetEvent
rageUiCall4 = "bc42cc0fbd"
-- Beginner: this function handles network event "bc42cc0fbd".
function textValue11(arg1, arg2)
  dataTable3 = arg1
  workValue.itemNames = arg2
end
rageUiCall3(rageUiCall4, textValue11)
rageUiCall3 = RegisterNetEvent
rageUiCall4 = "963a1f4ac7"
-- Beginner: this function handles network event "963a1f4ac7".
function textValue11()
  local arg1, arg2
  arg1 = SendNUIMessage
  arg2 = {}
  arg2.transactionType = "playMoney"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "963a1f4ac7".
rageUiCall3(rageUiCall4, textValue11)
-- Beginner: this function handles network event "963a1f4ac7".
function rageUiCall3(arg1)
  local arg2, arg3, textValue6
  arg2 = TriggerServerEvent
  arg3 = "0226731f8f"
  textValue6 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0226731f8f".
  arg2(arg3, textValue6)
end
GetMarketRefund = rageUiCall3
rageUiCall3 = CMG
function rageUiCall4(arg1, arg2, arg3)
  local textValue6, flag4, cmgCall3, workValue8, cmgCall5
  textValue6 = TriggerServerEvent
  flag4 = "6f5c12edde"
  cmgCall3 = arg1
  workValue8 = arg2
  cmgCall5 = arg3
  textValue6(flag4, cmgCall3, workValue8, cmgCall5)
end
rageUiCall3.purchaseFromMarket = rageUiCall4