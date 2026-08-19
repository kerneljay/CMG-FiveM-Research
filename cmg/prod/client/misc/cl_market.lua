--[[
    LEVEL 1 BEGINNER GUIDE — Market
    ====================================

    File: cmg/prod/client/misc/cl_market.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Market feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 21
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
local workingValue, dataCollection3, dataCollection4, rageUiOperation, text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, tableHelper, text, stringHelper, workingValue4
workingValue = RMenu
workingValue = workingValue.Add
dataCollection3 = "cmgmarket"
dataCollection4 = "main"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text8 = ""
text9 = "Items"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_marketui"
text11 = "cmg_marketui"
rageUiOperation, text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, tableHelper, text, stringHelper, workingValue4 = rageUiOperation(text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11)
workingValue(dataCollection3, dataCollection4, rageUiOperation, text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, tableHelper, text, stringHelper, workingValue4)
workingValue = RMenu
workingValue = workingValue.Add
dataCollection3 = "cmgmarket"
dataCollection4 = "amount"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text8 = RMenu
text9 = text8
text8 = text8.Get
rageUiOperation2 = "cmgmarket"
rageUiOperation3 = "main"
-- Beginner: result below is menu.
text8 = text8(text9, rageUiOperation2, rageUiOperation3)
text9 = ""
rageUiOperation2 = " "
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text11, tableHelper, text, stringHelper, workingValue4 = rageUiOperation4()
rageUiOperation, text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, tableHelper, text, stringHelper, workingValue4 = rageUiOperation(text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, tableHelper, text, stringHelper, workingValue4)
workingValue(dataCollection3, dataCollection4, rageUiOperation, text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, tableHelper, text, stringHelper, workingValue4)
workingValue = {}
workingValue.menuOpen = false
workingValue.currentMenu = 0
dataCollection3 = {}
workingValue.markets = dataCollection3
dataCollection3 = {}
workingValue.marketsTypes = dataCollection3
workingValue.distanceToMarket = 0
dataCollection3 = {}
workingValue.currentMarket = dataCollection3
workingValue.amountIndex = 1
dataCollection3 = {}
workingValue.selectedItem = dataCollection3
dataCollection3 = {}
workingValue.itemNames = dataCollection3
workingValue.currentMarketId = ""
dataCollection3 = {}
dataCollection4 = {}
rageUiOperation = {}
text8 = {}
text9 = {}
rageUiOperation2 = 1
rageUiOperation3 = 100
rageUiOperation4 = 1
for text11 = rageUiOperation2, rageUiOperation3, rageUiOperation4 do
  tableHelper = table
  tableHelper = tableHelper.insert
  text = text9
  stringHelper = tostring
  workingValue4 = text11
  stringHelper, workingValue4 = stringHelper(workingValue4)
  tableHelper(text, stringHelper, workingValue4)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1) ===
function rageUiOperation2(localValue1)
  local localValue2, localValue3, text6, stateFlag4, cmgOperation3, workingValue8, cmgOperation5, workingValue11, text12, tableHelper2, workingValue2, dataCollection
  localValue2 = {}
  localValue3 = pairs
  text6 = localValue1
  localValue3, text6, stateFlag4, cmgOperation3 = localValue3(text6)
  for workingValue8, cmgOperation5 in localValue3, text6, stateFlag4, cmgOperation3 do
    workingValue11 = cmgOperation5
    text12 = 1
    tableHelper2 = type
    workingValue2 = cmgOperation5
    tableHelper2 = tableHelper2(workingValue2)
    if "table" == tableHelper2 then
      workingValue11 = cmgOperation5.price
      text12 = cmgOperation5.amountGiven
    end
    if "_config" ~= workingValue8 then
      tableHelper2 = table
      tableHelper2 = tableHelper2.insert
      workingValue2 = localValue2
      dataCollection = {}
      dataCollection.itemId = workingValue8
      dataCollection.price = workingValue11
      dataCollection.amountGiven = text12
      tableHelper2(workingValue2, dataCollection)
    end
  end
  localValue3 = table
  localValue3 = localValue3.sort
  text6 = localValue2

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22) ===
  function stateFlag4(localValue12, localValue22)
    local workingValue6, text7
    workingValue6 = localValue12.price
    text7 = localValue22.price
    workingValue6 = workingValue6 < text7
    return workingValue6
  end
  localValue3(text6, stateFlag4)
  localValue3 = 0

  -- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
  function text6()
    local localValue12, localValue22, workingValue6
    localValue12 = localValue3
    localValue12 = localValue12 + 1
    localValue3 = localValue12
    localValue22 = localValue3
    localValue12 = localValue2
    localValue12 = localValue12[localValue22]
    if localValue12 then
      localValue12 = 0
      workingValue6 = localValue3
      localValue22 = localValue2
      localValue22 = localValue22[workingValue6]
      return localValue12, localValue22
    else
      localValue12 = nil
      localValue22 = nil
      return localValue12, localValue22
    end
  end
  return text6
end
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateWhile
rageUiOperation4 = 1.0
text11 = RMenu
tableHelper = text11
text11 = text11.Get
text = "cmgmarket"
stringHelper = "main"
-- Beginner: result below is menu.
text11 = text11(tableHelper, text, stringHelper)
tableHelper = nil

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, text6, stateFlag4, cmgOperation3, workingValue8
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text6 = "cmgmarket"
  stateFlag4 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text6, stateFlag4)
  localValue3 = true
  text6 = false
  stateFlag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local localValue12, localValue22, workingValue6, text7, mathHelper2, workingValue7, workingValue9, workingValue10, cmgOperation6, text13, mathHelper, stateFlag, workingValue3, cmgOperation, number3, text2, text3, workingValue5, text4, text5
    localValue12 = false
    localValue22 = rageUiOperation2
    workingValue6 = workingValue.currentMarket
    localValue22, workingValue6, text7, mathHelper2 = localValue22(workingValue6)
    for workingValue7, workingValue9 in localValue22, workingValue6, text7, mathHelper2 do
      workingValue10 = workingValue.currentMarket
      workingValue10 = workingValue10._config
      workingValue10 = workingValue10.lottery
      if workingValue10 and not localValue12 then
        workingValue10 = workingValue9.price
        cmgOperation6 = CMG
        cmgOperation6 = cmgOperation6.getLotteryTicketPrice
        cmgOperation6 = cmgOperation6()
        if workingValue10 > cmgOperation6 then
          workingValue10 = RageUI
          workingValue10 = workingValue10.ButtonWithStyle
          cmgOperation6 = "Lottery Ticket"
          text13 = ""
          mathHelper = {}
          stateFlag = "\194\163"
          workingValue3 = getMoneyStringFormatted
          cmgOperation = CMG
          cmgOperation = cmgOperation.getLotteryTicketPrice
          cmgOperation, number3, text2, text3, workingValue5, text4, text5 = cmgOperation()
          workingValue3 = workingValue3(cmgOperation, number3, text2, text3, workingValue5, text4, text5)
          stateFlag = stateFlag .. workingValue3
          mathHelper.RightLabel = stateFlag
          stateFlag = true

          -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue32) ===
          function workingValue3(localValue13, localValue23, localValue32)
            local localValue4, dataCollection5, cmgOperation4, text10
            if localValue32 then
              localValue4 = RMenu
              dataCollection5 = localValue4
              localValue4 = localValue4.Get
              cmgOperation4 = "cmgmarket"
              text10 = "amount"
              -- Beginner: result below is menu.
              localValue4 = localValue4(dataCollection5, cmgOperation4, text10)
              dataCollection5 = {}
              dataCollection5.item_id = "lottery"
              cmgOperation4 = CMG
              cmgOperation4 = cmgOperation4.getLotteryTicketPrice
              cmgOperation4 = cmgOperation4()
              dataCollection5.price = cmgOperation4
              localValue4.MetaData = dataCollection5
            end
          end
          cmgOperation = RMenu
          number3 = cmgOperation
          cmgOperation = cmgOperation.Get
          text2 = "cmgmarket"
          text3 = "amount"
          cmgOperation, number3, text2, text3, workingValue5, text4, text5 = cmgOperation(number3, text2, text3)
          -- Beginner: Draw a selectable RageUI menu button.
          workingValue10(cmgOperation6, text13, mathHelper, stateFlag, workingValue3, cmgOperation, number3, text2, text3, workingValue5, text4, text5)
          localValue12 = true
        end
      end
      workingValue10 = workingValue.itemNames
      cmgOperation6 = workingValue.currentMarketId
      workingValue10 = workingValue10[cmgOperation6]
      cmgOperation6 = workingValue9.itemId
      workingValue10 = workingValue10[cmgOperation6]
      workingValue10 = workingValue10[1]
      cmgOperation6 = workingValue9.amountGiven
      if cmgOperation6 > 1 then
        cmgOperation6 = tostring
        text13 = workingValue9.amountGiven
        cmgOperation6 = cmgOperation6(text13)
        text13 = "x "
        mathHelper = workingValue10
        cmgOperation6 = cmgOperation6 .. text13 .. mathHelper
        workingValue10 = cmgOperation6
      end
      cmgOperation6 = workingValue9.price
      text13 = workingValue9.itemId
      if "burner_phone" == text13 then
        text13 = CMG
        mathHelper = "getMoneyLaunderingBurnerPhoneDiscountPercentClient"
        text13 = text13[mathHelper]
        text13 = text13()
        if text13 > 0 then
          mathHelper = math
          mathHelper = mathHelper.floor
          stateFlag = workingValue9.price
          workingValue3 = text13 / 100
          cmgOperation = 1
          workingValue3 = cmgOperation - workingValue3
          stateFlag = stateFlag * workingValue3
          mathHelper = mathHelper(stateFlag)
          cmgOperation6 = mathHelper
        end
      end
      text13 = workingValue9.itemId
      if "spraycan" == text13 then
        text13 = CMG
        text13 = text13.getClientGangRpSpraycanDiscountPercent
        text13 = text13()
        if text13 > 0 then
          mathHelper = math
          mathHelper = mathHelper.floor
          stateFlag = workingValue9.price
          workingValue3 = text13 / 100
          cmgOperation = 1
          workingValue3 = cmgOperation - workingValue3
          stateFlag = stateFlag * workingValue3
          mathHelper = mathHelper(stateFlag)
          cmgOperation6 = mathHelper
        end
      end
      text13 = {}
      mathHelper = workingValue9.itemId
      text13.item_id = mathHelper
      text13.price = cmgOperation6
      mathHelper = workingValue.currentMarketId
      text13.marketId = mathHelper
      mathHelper = workingValue.currentMarketId
      if "trapper" == mathHelper then
        mathHelper = CMG
        mathHelper = mathHelper.getTrapperSupplyDiscountPercentClient
        mathHelper = mathHelper()
        if mathHelper > 0 then
          text13.preTrapperUnitPrice = cmgOperation6
          text13.trapperDiscountPct = mathHelper
          stateFlag = math
          stateFlag = stateFlag.max
          workingValue3 = 1
          cmgOperation = math
          cmgOperation = cmgOperation.floor
          number3 = 100
          number3 = number3 - mathHelper
          number3 = cmgOperation6 * number3
          number3 = number3 / 100
          number3 = number3 + 0.5
          cmgOperation, number3, text2, text3, workingValue5, text4, text5 = cmgOperation(number3)
          stateFlag = stateFlag(workingValue3, cmgOperation, number3, text2, text3, workingValue5, text4, text5)
          cmgOperation6 = stateFlag
        end
      end
      mathHelper = RageUI
      mathHelper = mathHelper.ButtonWithStyle
      stateFlag = workingValue10
      workingValue3 = workingValue.itemNames
      cmgOperation = workingValue.currentMarketId
      workingValue3 = workingValue3[cmgOperation]
      cmgOperation = workingValue9.itemId
      workingValue3 = workingValue3[cmgOperation]
      workingValue3 = workingValue3[3]
      cmgOperation = {}
      number3 = "\194\163"
      text2 = getMoneyStringFormatted
      text3 = cmgOperation6
      text2 = text2(text3)
      number3 = number3 .. text2
      cmgOperation.RightLabel = number3
      number3 = true

      -- === HELPER FUNCTION (decompiler name: text2; parameters: localValue13, localValue23, localValue32) ===
      function text2(localValue13, localValue23, localValue32)
        local localValue4, dataCollection5, cmgOperation4, text10
        if localValue32 then
          localValue4 = RMenu
          dataCollection5 = localValue4
          localValue4 = localValue4.Get
          cmgOperation4 = "cmgmarket"
          text10 = "amount"
          -- Beginner: result below is menu.
          localValue4 = localValue4(dataCollection5, cmgOperation4, text10)
          dataCollection5 = text13
          localValue4.MetaData = dataCollection5
        end
      end
      text3 = RMenu
      workingValue5 = text3
      text3 = text3.Get
      text4 = "cmgmarket"
      text5 = "amount"
      text3, workingValue5, text4, text5 = text3(workingValue5, text4, text5)
      mathHelper(stateFlag, workingValue3, cmgOperation, number3, text2, text3, workingValue5, text4, text5)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
  function workingValue8()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, text6, stateFlag4, cmgOperation3, workingValue8)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text6 = "cmgmarket"
  stateFlag4 = "amount"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text6, stateFlag4)
  localValue3 = true
  text6 = false
  stateFlag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue12) ===
  function cmgOperation3(localValue12)
    local localValue22, workingValue6, text7, mathHelper2, workingValue7, workingValue9, workingValue10, cmgOperation6, text13, mathHelper, stateFlag
    localValue22 = localValue12.price
    workingValue6 = workingValue.amountIndex
    localValue22 = localValue22 * workingValue6
    workingValue6 = localValue12.preTrapperUnitPrice
    if workingValue6 then
      workingValue6 = localValue12.trapperDiscountPct
      if workingValue6 then
        workingValue6 = math
        workingValue6 = workingValue6.max
        text7 = 1
        mathHelper2 = math
        mathHelper2 = mathHelper2.floor
        workingValue7 = localValue12.preTrapperUnitPrice
        workingValue9 = workingValue.amountIndex
        workingValue7 = workingValue7 * workingValue9
        workingValue9 = localValue12.trapperDiscountPct
        workingValue10 = 100
        workingValue9 = workingValue10 - workingValue9
        workingValue7 = workingValue7 * workingValue9
        workingValue7 = workingValue7 / 100
        workingValue7 = workingValue7 + 0.5
        mathHelper2, workingValue7, workingValue9, workingValue10, cmgOperation6, text13, mathHelper, stateFlag = mathHelper2(workingValue7)
        workingValue6 = workingValue6(text7, mathHelper2, workingValue7, workingValue9, workingValue10, cmgOperation6, text13, mathHelper, stateFlag)
        localValue22 = workingValue6
      end
    end
    workingValue6 = RageUI
    workingValue6 = workingValue6.List
    text7 = "Amount"
    mathHelper2 = text9
    workingValue7 = workingValue.amountIndex
    workingValue9 = "Current Price: \194\163"
    workingValue10 = getMoneyStringFormatted
    cmgOperation6 = localValue22
    workingValue10 = workingValue10(cmgOperation6)
    workingValue9 = workingValue9 .. workingValue10
    workingValue10 = {}
    cmgOperation6 = true

    -- === HELPER FUNCTION (decompiler name: text13; parameters: localValue13, localValue23, localValue32, localValue4) ===
    function text13(localValue13, localValue23, localValue32, localValue4)
      if localValue23 then
        workingValue.amountIndex = localValue4
      end
    end

    -- === HELPER FUNCTION: mathHelper() ===
    function mathHelper()
      local localValue13, localValue23
    end
    stateFlag = nil
    -- Beginner: Draw a RageUI list selector.
    workingValue6(text7, mathHelper2, workingValue7, workingValue9, workingValue10, cmgOperation6, text13, mathHelper, stateFlag)
    workingValue6 = RageUI
    workingValue6 = workingValue6.Button
    text7 = "Buy"
    mathHelper2 = "Current Price: \194\163"
    workingValue7 = getMoneyStringFormatted
    workingValue9 = localValue22
    workingValue7 = workingValue7(workingValue9)
    mathHelper2 = mathHelper2 .. workingValue7
    workingValue7 = true

    -- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue13, localValue23, localValue32) ===
    function workingValue9(localValue13, localValue23, localValue32)
      local localValue4, dataCollection5, cmgOperation4, text10
      if localValue32 then
        localValue4 = localValue12.item_id
        if "lottery" == localValue4 then
          localValue4 = TriggerServerEvent
          dataCollection5 = "a708fb421f"
          cmgOperation4 = workingValue.amountIndex
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a708fb421f".
          localValue4(dataCollection5, cmgOperation4)
        else
          localValue4 = CMG
          localValue4 = localValue4.purchaseFromMarket
          dataCollection5 = localValue12.marketId
          cmgOperation4 = localValue12.item_id
          text10 = workingValue.amountIndex
          localValue4(dataCollection5, cmgOperation4, text10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue6(text7, mathHelper2, workingValue7, workingValue9)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
  function workingValue8()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, text6, stateFlag4, cmgOperation3, workingValue8)
end
rageUiOperation3(rageUiOperation4, text11, tableHelper, text)
rageUiOperation3 = RegisterNetEvent
rageUiOperation4 = "f7338579d9"
-- Beginner: this function handles network event "f7338579d9".

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1) ===
function text11(localValue1)
  local localValue2, localValue3, text6, stateFlag4, cmgOperation3, workingValue8, cmgOperation5, workingValue11, text12, tableHelper2, workingValue2, dataCollection, number, number2, cmgOperation2, number4, number5, dataCollection2, number6, number7, number8, number9, stateFlag2, stateFlag3
  localValue2 = 1
  localValue3 = rageUiOperation
  localValue3 = #localValue3
  text6 = 1
  for stateFlag4 = localValue2, localValue3, text6 do
    cmgOperation3 = tCMG
    cmgOperation3 = cmgOperation3.removeArea
    workingValue8 = rageUiOperation
    workingValue8 = workingValue8[stateFlag4]
    cmgOperation3(workingValue8)
    cmgOperation3 = rageUiOperation
    cmgOperation3[stateFlag4] = nil
  end
  localValue2 = 1
  localValue3 = dataCollection4
  localValue3 = #localValue3
  text6 = 1
  for stateFlag4 = localValue2, localValue3, text6 do
    cmgOperation3 = tCMG
    cmgOperation3 = cmgOperation3.removeMarker
    workingValue8 = dataCollection4
    workingValue8 = workingValue8[stateFlag4]
    cmgOperation3(workingValue8)
  end
  localValue2 = pairs
  localValue3 = text8
  localValue2, localValue3, text6, stateFlag4 = localValue2(localValue3)
  for cmgOperation3, workingValue8 in localValue2, localValue3, text6, stateFlag4 do
    cmgOperation5 = tCMG
    cmgOperation5 = cmgOperation5.removeBlip
    workingValue11 = workingValue8
    cmgOperation5(workingValue11)
  end

  -- === HELPER FUNCTION: localValue2(localValue12) ===
  function localValue2(localValue12)
    local localValue22, workingValue6, text7, mathHelper2, workingValue7
    workingValue6 = localValue12.market_id
    localValue22 = dataCollection3
    localValue22 = localValue22[workingValue6]
    workingValue.currentMarket = localValue22
    localValue22 = localValue12.market_id
    workingValue.currentMarketId = localValue22
    workingValue.menuOpen = true
    localValue22 = RageUI
    localValue22 = localValue22.Visible
    workingValue6 = RMenu
    text7 = workingValue6
    workingValue6 = workingValue6.Get
    mathHelper2 = "cmgmarket"
    workingValue7 = "main"
    -- Beginner: result below is menu.
    workingValue6 = workingValue6(text7, mathHelper2, workingValue7)
    text7 = true
    localValue22(workingValue6, text7)
    localValue22 = workingValue.currentMarket
    localValue22 = localValue22._config
    localValue22 = localValue22.policeEquipment
    if localValue22 then
      localValue22 = RMenu
      workingValue6 = localValue22
      localValue22 = localValue22.Get
      text7 = "cmgmarket"
      mathHelper2 = "main"
      -- Beginner: result below is menu.
      localValue22 = localValue22(workingValue6, text7, mathHelper2)
      workingValue6 = localValue22
      localValue22 = localValue22.SetSpriteBanner
      text7 = "cmg_equipment"
      mathHelper2 = "cmg_equipment"
      localValue22(workingValue6, text7, mathHelper2)
    else
      localValue22 = RMenu
      workingValue6 = localValue22
      localValue22 = localValue22.Get
      text7 = "cmgmarket"
      mathHelper2 = "main"
      -- Beginner: result below is menu.
      localValue22 = localValue22(workingValue6, text7, mathHelper2)
      workingValue6 = localValue22
      localValue22 = localValue22.SetSpriteBanner
      text7 = "cmg_marketui"
      mathHelper2 = "cmg_marketui"
      localValue22(workingValue6, text7, mathHelper2)
    end
  end

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22
    workingValue.menuOpen = false
    localValue12 = RageUI
    localValue12 = localValue12.IsAnyMenuOfTypeVisible
    localValue22 = "cmgmarket"
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.CloseAll
      localValue12()
    end
  end

  -- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
  function text6()
    local localValue12, localValue22
  end
  stateFlag4 = 1
  cmgOperation3 = #localValue1
  workingValue8 = 1
  for cmgOperation5 = stateFlag4, cmgOperation3, workingValue8 do
    workingValue11 = localValue1[cmgOperation5]
    text12 = "market"
    tableHelper2 = localValue1[cmgOperation5]
    tableHelper2 = tableHelper2[1]
    workingValue2 = cmgOperation5
    text12 = text12 .. tableHelper2 .. workingValue2
    tableHelper2 = CMG
    tableHelper2 = tableHelper2.createArea
    workingValue2 = text12
    dataCollection = workingValue11[2]
    number = 1.25
    number2 = 6
    cmgOperation2 = localValue2
    number4 = localValue3
    number5 = text6
    dataCollection2 = {}
    number6 = localValue1[cmgOperation5]
    number6 = number6[1]
    dataCollection2.market_id = number6
    -- Beginner: Create an interaction area around a world position.
    tableHelper2(workingValue2, dataCollection, number, number2, cmgOperation2, number4, number5, dataCollection2)
    tableHelper2 = tCMG
    tableHelper2 = tableHelper2.addMarker
    workingValue2 = workingValue11[2]
    workingValue2 = workingValue2.x
    dataCollection = workingValue11[2]
    dataCollection = dataCollection.y
    number = workingValue11[2]
    number = number.z
    number2 = 0.7
    cmgOperation2 = 0.7
    number4 = 0.5
    number5 = 0
    dataCollection2 = 255
    number6 = 125
    number7 = 125
    number8 = 50
    number9 = 29
    stateFlag2 = true
    stateFlag3 = true
    tableHelper2 = tableHelper2(workingValue2, dataCollection, number, number2, cmgOperation2, number4, number5, dataCollection2, number6, number7, number8, number9, stateFlag2, stateFlag3)
    workingValue2 = rageUiOperation
    workingValue2 = #workingValue2
    dataCollection = workingValue2 + 1
    workingValue2 = rageUiOperation
    workingValue2[dataCollection] = text12
    workingValue2 = dataCollection4
    workingValue2 = #workingValue2
    dataCollection = workingValue2 + 1
    workingValue2 = dataCollection4
    workingValue2[dataCollection] = tableHelper2
    dataCollection = workingValue11[1]
    workingValue2 = dataCollection3
    workingValue2 = workingValue2[dataCollection]
    if workingValue2 then
      dataCollection = workingValue2._config
      if dataCollection then
        number = dataCollection.showBlip
        if number then
          number = table
          number = number.insert
          number2 = text8
          cmgOperation2 = tCMG
          cmgOperation2 = cmgOperation2.addBlip
          number4 = workingValue11[2]
          number4 = number4.x
          number5 = workingValue11[2]
          number5 = number5.y
          dataCollection2 = workingValue11[2]
          dataCollection2 = dataCollection2.z
          number6 = dataCollection.blipid
          number7 = dataCollection.blipcolor
          number8 = nil
          number9 = 0.7
          cmgOperation2, number4, number5, dataCollection2, number6, number7, number8, number9, stateFlag2, stateFlag3 = cmgOperation2(number4, number5, dataCollection2, number6, number7, number8, number9)
          number(number2, cmgOperation2, number4, number5, dataCollection2, number6, number7, number8, number9, stateFlag2, stateFlag3)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f7338579d9".
rageUiOperation3(rageUiOperation4, text11)
rageUiOperation3 = RegisterNetEvent
rageUiOperation4 = "bc42cc0fbd"
-- Beginner: this function handles network event "bc42cc0fbd".

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1, localValue2) ===
function text11(localValue1, localValue2)
  dataCollection3 = localValue1
  workingValue.itemNames = localValue2
end
rageUiOperation3(rageUiOperation4, text11)
rageUiOperation3 = RegisterNetEvent
rageUiOperation4 = "963a1f4ac7"
-- Beginner: this function handles network event "963a1f4ac7".

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2
  localValue1 = SendNUIMessage
  localValue2 = {}
  localValue2.transactionType = "playMoney"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "963a1f4ac7".
rageUiOperation3(rageUiOperation4, text11)
-- Beginner: this function handles network event "963a1f4ac7".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1) ===
function rageUiOperation3(localValue1)
  local localValue2, localValue3, text6
  localValue2 = TriggerServerEvent
  localValue3 = "0226731f8f"
  text6 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0226731f8f".
  localValue2(localValue3, text6)
end
GetMarketRefund = rageUiOperation3
rageUiOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1, localValue2, localValue3) ===
function rageUiOperation4(localValue1, localValue2, localValue3)
  local text6, stateFlag4, cmgOperation3, workingValue8, cmgOperation5
  text6 = TriggerServerEvent
  stateFlag4 = "6f5c12edde"
  cmgOperation3 = localValue1
  workingValue8 = localValue2
  cmgOperation5 = localValue3
  text6(stateFlag4, cmgOperation3, workingValue8, cmgOperation5)
end
rageUiOperation3.purchaseFromMarket = rageUiOperation4
