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
local dataCollection, number8, number9, number10, number11, number12, number13, text12, text14, rageUiOperation8, text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4, text5
dataCollection = {}
number8 = 1
number9 = 2
number10 = 3
number11 = 4
number12 = 5
number13 = 6
text12 = 7
text14 = 8
rageUiOperation8 = 9
text = 10
dataCollection[1] = number8
dataCollection[2] = number9
dataCollection[3] = number10
dataCollection[4] = number11
dataCollection[5] = number12
dataCollection[6] = number13
dataCollection[7] = text12
dataCollection[8] = text14
dataCollection[9] = rageUiOperation8
dataCollection[10] = text

-- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
function number8()
  local localValue1, localValue2
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
end

-- === HELPER FUNCTION (decompiler name: number9; parameters: none) ===
function number9()
  local localValue1, localValue2, stateFlag4, stateFlag5, stateFlag6
  localValue1 = RageUI
  localValue1 = localValue1.IsAnyMenuOfTypeVisible
  localValue2 = "business"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = drawNativeNotification
    localValue2 = "Press ~INPUT_CONTEXT~ to use the cash register"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue1(localValue2)
    localValue1 = IsControlJustPressed
    localValue2 = 0
    stateFlag4 = 51
    localValue1 = localValue1(localValue2, stateFlag4)
    if localValue1 then
      localValue1 = RageUI
      localValue1 = localValue1.Visible
      localValue2 = RMenu
      stateFlag4 = localValue2
      localValue2 = localValue2.Get
      stateFlag5 = "business"
      stateFlag6 = "waiter_mainmenu"
      -- Beginner: result below is menu.
      localValue2 = localValue2(stateFlag4, stateFlag5, stateFlag6)
      stateFlag4 = true
      localValue1(localValue2, stateFlag4)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: number10; parameters: localValue1) ===
function number10(localValue1)
  local localValue2, stateFlag4, stateFlag5, stateFlag6, text11, workingValue6, cmgOperation2, cmgOperation3, workingValue9, stringHelper, number, rageUiOperation4, number2, number3, number4, dataCollection4, number5, number6, number7
  localValue2 = localValue1.jobInfo
  stateFlag4 = {}
  localValue2.markers = stateFlag4
  localValue2 = localValue1.jobInfo
  stateFlag4 = {}
  localValue2.areas = stateFlag4
  localValue2 = pairs
  stateFlag4 = localValue1.jobMetadata
  stateFlag4 = stateFlag4.cashRegisterPositions
  localValue2, stateFlag4, stateFlag5, stateFlag6 = localValue2(stateFlag4)
  for text11, workingValue6 in localValue2, stateFlag4, stateFlag5, stateFlag6 do
    cmgOperation2 = tCMG
    cmgOperation2 = cmgOperation2.addMarker
    cmgOperation3 = workingValue6.x
    workingValue9 = workingValue6.y
    stringHelper = workingValue6.z
    stringHelper = stringHelper - 0.6
    number = 0.2
    rageUiOperation4 = 0.2
    number2 = 0.2
    number3 = 255
    number4 = 255
    dataCollection4 = 0
    number5 = 150
    number6 = 25.0
    number7 = 0
    cmgOperation2 = cmgOperation2(cmgOperation3, workingValue9, stringHelper, number, rageUiOperation4, number2, number3, number4, dataCollection4, number5, number6, number7)
    cmgOperation3 = table
    cmgOperation3 = cmgOperation3.insert
    workingValue9 = localValue1.jobInfo
    workingValue9 = workingValue9.markers
    stringHelper = cmgOperation2
    cmgOperation3(workingValue9, stringHelper)
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.createArea
    workingValue9 = "business_waiter_"
    stringHelper = tostring
    number = text11
    stringHelper = stringHelper(number)
    workingValue9 = workingValue9 .. stringHelper
    stringHelper = workingValue6.xyz
    number = 1.0
    rageUiOperation4 = 1.5

    -- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
    function number2()
      local localValue12, localValue22
    end
    number3 = number8
    number4 = number9
    dataCollection4 = {}
    cmgOperation3 = cmgOperation3(workingValue9, stringHelper, number, rageUiOperation4, number2, number3, number4, dataCollection4)
    workingValue9 = table
    workingValue9 = workingValue9.insert
    stringHelper = localValue1.jobInfo
    stringHelper = stringHelper.areas
    number = cmgOperation3
    workingValue9(stringHelper, number)
  end
  localValue2 = TriggerServerEvent
  stateFlag4 = "bf3f551598"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
  localValue2(stateFlag4)
end

-- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
function number11()
  local localValue1, localValue2
end

-- === HELPER FUNCTION (decompiler name: number12; parameters: localValue1) ===
function number12(localValue1)
  local localValue2, stateFlag4, stateFlag5, stateFlag6, text11, workingValue6, cmgOperation2, cmgOperation3
  localValue2 = pairs
  stateFlag4 = localValue1.jobInfo
  stateFlag4 = stateFlag4.markers
  localValue2, stateFlag4, stateFlag5, stateFlag6 = localValue2(stateFlag4)
  for text11, workingValue6 in localValue2, stateFlag4, stateFlag5, stateFlag6 do
    cmgOperation2 = tCMG
    cmgOperation2 = cmgOperation2.removeMarker
    cmgOperation3 = workingValue6
    cmgOperation2(cmgOperation3)
  end
  localValue2 = pairs
  stateFlag4 = localValue1.jobInfo
  stateFlag4 = stateFlag4.areas
  localValue2, stateFlag4, stateFlag5, stateFlag6 = localValue2(stateFlag4)
  for text11, workingValue6 in localValue2, stateFlag4, stateFlag5, stateFlag6 do
    cmgOperation2 = tCMG
    cmgOperation2 = cmgOperation2.removeArea
    cmgOperation3 = workingValue6
    cmgOperation2(cmgOperation3)
  end
end
number13 = RMenu
number13 = number13.Add
text12 = "business"
text14 = "waiter_mainmenu"
rageUiOperation8 = RageUI
rageUiOperation8 = rageUiOperation8.CreateMenu
text = ""
cmgOperation = "~b~CMG Business"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = "cmg_marketui"
text4 = "cmg_marketui"
rageUiOperation8, text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4, text5 = rageUiOperation8(text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4)
number13(text12, text14, rageUiOperation8, text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4, text5)
number13 = RMenu
number13 = number13.Add
text12 = "business"
text14 = "waiter_placeorder"
rageUiOperation8 = RageUI
rageUiOperation8 = rageUiOperation8.CreateSubMenu
text = RMenu
cmgOperation = text
text = text.Get
rageUiOperation3 = "business"
rageUiOperation5 = "waiter_mainmenu"
-- Beginner: result below is menu.
text = text(cmgOperation, rageUiOperation3, rageUiOperation5)
cmgOperation = ""
rageUiOperation3 = "~b~CMG Business"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuHeight
rageUiOperation6 = rageUiOperation6()
text4 = "cmg_marketui"
text5 = "cmg_marketui"
rageUiOperation8, text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4, text5 = rageUiOperation8(text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4, text5)
number13(text12, text14, rageUiOperation8, text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4, text5)
number13 = RMenu
number13 = number13.Add
text12 = "business"
text14 = "waiter_additem"
rageUiOperation8 = RageUI
rageUiOperation8 = rageUiOperation8.CreateSubMenu
text = RMenu
cmgOperation = text
text = text.Get
rageUiOperation3 = "business"
rageUiOperation5 = "waiter_placeorder"
-- Beginner: result below is menu.
text = text(cmgOperation, rageUiOperation3, rageUiOperation5)
cmgOperation = ""
rageUiOperation3 = "~b~CMG Business"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuHeight
rageUiOperation6 = rageUiOperation6()
text4 = "cmg_marketui"
text5 = "cmg_marketui"
rageUiOperation8, text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4, text5 = rageUiOperation8(text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4, text5)
number13(text12, text14, rageUiOperation8, text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4, text5)
number13 = RMenu
number13 = number13.Add
text12 = "business"
text14 = "waiter_additemamount"
rageUiOperation8 = RageUI
rageUiOperation8 = rageUiOperation8.CreateSubMenu
text = RMenu
cmgOperation = text
text = text.Get
rageUiOperation3 = "business"
rageUiOperation5 = "waiter_additem"
-- Beginner: result below is menu.
text = text(cmgOperation, rageUiOperation3, rageUiOperation5)
cmgOperation = ""
rageUiOperation3 = "~b~CMG Business"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuHeight
rageUiOperation6 = rageUiOperation6()
text4 = "cmg_marketui"
text5 = "cmg_marketui"
rageUiOperation8, text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4, text5 = rageUiOperation8(text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4, text5)
number13(text12, text14, rageUiOperation8, text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6, text4, text5)

-- === HELPER FUNCTION (decompiler name: number13; parameters: localValue1) ===
function number13(localValue1)
  local localValue2, stateFlag4, stateFlag5
  localValue2 = table
  localValue2 = localValue2.sort
  stateFlag4 = localValue1

  -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: localValue12, localValue22) ===
  function stateFlag5(localValue12, localValue22)
    local workingValue4, text9
    workingValue4 = localValue12.orderId
    text9 = localValue22.orderId
    workingValue4 = workingValue4 > text9
    return workingValue4
  end
  localValue2(stateFlag4, stateFlag5)
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local localValue2, stateFlag4
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  stateFlag4 = localValue1.locationInfo
  stateFlag4 = stateFlag4.jobMarker
  localValue2 = localValue2 - stateFlag4
  localValue2 = #localValue2
  localValue2 = localValue2 < 75.0
  return localValue2
end
text14 = RageUI
text14 = text14.CreateWhile
rageUiOperation8 = 1.0
text = RMenu
cmgOperation = text
text = text.Get
rageUiOperation3 = "business"
rageUiOperation5 = "waiter_mainmenu"
-- Beginner: result below is menu.
text = text(cmgOperation, rageUiOperation3, rageUiOperation5)
cmgOperation = nil

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, stateFlag4, stateFlag5, stateFlag6, text11
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag5 = "business"
  stateFlag6 = "waiter_mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag5, stateFlag6)
  stateFlag4 = true
  stateFlag5 = false
  stateFlag6 = true

  -- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
  function text11()
    local localValue12, localValue22, workingValue4, text9, dataCollection5, dataCollection7, stateFlag7, workingValue7, workingValue8, cmgOperation4, text2
    localValue12 = CMG
    localValue12 = localValue12.getUserBusinessData
    localValue22 = "waiter"
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue22 = text12
      workingValue4 = localValue12
      localValue22 = localValue22(workingValue4)
      if localValue22 then
        goto continueAtStep16
      end
    end
    localValue22 = RageUI
    localValue22 = localValue22.CloseAll
    localValue22()
    return
    ::continueAtStep16::
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    workingValue4 = "~g~Place Order"
    text9 = ""
    dataCollection5 = {}
    dataCollection5.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataCollection7 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue13, localValue23, localValue3) ===
    function stateFlag7(localValue13, localValue23, localValue3)
      local localValue4, dataCollection6
      if localValue3 then
        localValue4 = localValue12.jobInfo
        dataCollection6 = {}
        localValue4.addedItems = dataCollection6
      end
    end
    workingValue7 = RMenu
    workingValue8 = workingValue7
    workingValue7 = workingValue7.Get
    cmgOperation4 = "business"
    text2 = "waiter_placeorder"
    workingValue7, workingValue8, cmgOperation4, text2 = workingValue7(workingValue8, cmgOperation4, text2)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(workingValue4, text9, dataCollection5, dataCollection7, stateFlag7, workingValue7, workingValue8, cmgOperation4, text2)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    workingValue4 = "~y~View Orders"
    text9 = ""
    dataCollection5 = {}
    dataCollection5.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataCollection7 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: none) ===
    function stateFlag7()
      local localValue13, localValue23
    end
    workingValue7 = RMenu
    workingValue8 = workingValue7
    workingValue7 = workingValue7.Get
    cmgOperation4 = "business"
    text2 = "waiter_vieworders"
    workingValue7, workingValue8, cmgOperation4, text2 = workingValue7(workingValue8, cmgOperation4, text2)
    localValue22(workingValue4, text9, dataCollection5, dataCollection7, stateFlag7, workingValue7, workingValue8, cmgOperation4, text2)
  end
  localValue1(localValue2, stateFlag4, stateFlag5, stateFlag6, text11)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag5 = "business"
  stateFlag6 = "waiter_placeorder"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag5, stateFlag6)
  stateFlag4 = true
  stateFlag5 = false
  stateFlag6 = true

  -- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
  function text11()
    local localValue12, localValue22, workingValue4, text9, dataCollection5, dataCollection7, stateFlag7, workingValue7, workingValue8, cmgOperation4, text2, rageUiOperation2, stringHelper3, text3, dataCollection3, stateFlag3, workingValue2, text7
    localValue12 = CMG
    localValue12 = localValue12.getUserBusinessData
    localValue22 = "waiter"
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue22 = text12
      workingValue4 = localValue12
      localValue22 = localValue22(workingValue4)
      if localValue22 then
        goto continueAtStep16
      end
    end
    localValue22 = RageUI
    localValue22 = localValue22.CloseAll
    localValue22()
    return
    ::continueAtStep16::
    localValue22 = 0
    workingValue4 = pairs
    text9 = localValue12.jobInfo
    text9 = text9.addedItems
    workingValue4, text9, dataCollection5, dataCollection7 = workingValue4(text9)
    for stateFlag7, workingValue7 in workingValue4, text9, dataCollection5, dataCollection7 do
      workingValue8 = localValue12.locationInfo
      workingValue8 = workingValue8.items
      workingValue8 = workingValue8[stateFlag7]
      cmgOperation4 = CMG
      cmgOperation4 = cmgOperation4.getBusinessPriceOverrides
      text2 = localValue12.name
      cmgOperation4 = cmgOperation4(text2)
      cmgOperation4 = cmgOperation4[stateFlag7]
      if not cmgOperation4 then
        cmgOperation4 = localValue12.jobMetadata
        cmgOperation4 = cmgOperation4.sellableItems
        cmgOperation4 = cmgOperation4[stateFlag7]
      end
      text2 = cmgOperation4 * workingValue7
      localValue22 = localValue22 + text2
      rageUiOperation2 = RageUI
      rageUiOperation2 = rageUiOperation2.ButtonWithStyle
      stringHelper3 = tostring
      text3 = workingValue7
      stringHelper3 = stringHelper3(text3)
      text3 = "x "
      dataCollection3 = workingValue8[1]
      stringHelper3 = stringHelper3 .. text3 .. dataCollection3
      text3 = ""
      dataCollection3 = {}
      stateFlag3 = "\194\163"
      workingValue2 = getMoneyStringFormatted
      text7 = text2
      workingValue2 = workingValue2(text7)
      stateFlag3 = stateFlag3 .. workingValue2
      dataCollection3.RightLabel = stateFlag3
      stateFlag3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
      function workingValue2()
        local localValue13, localValue23
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation2(stringHelper3, text3, dataCollection3, stateFlag3, workingValue2)
    end
    workingValue4 = RageUI
    workingValue4 = workingValue4.ButtonWithStyle
    text9 = "~y~Add Item"
    dataCollection5 = ""
    dataCollection7 = {}
    dataCollection7.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag7 = true

    -- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue13, localValue23, localValue3) ===
    function workingValue7(localValue13, localValue23, localValue3)
      local localValue4, dataCollection6, nameValue
      if localValue3 then
        localValue4 = TriggerServerEvent
        dataCollection6 = "e76e0858eb"
        nameValue = localValue12.name
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e76e0858eb".
        localValue4(dataCollection6, nameValue)
      end
    end
    workingValue8 = RMenu
    cmgOperation4 = workingValue8
    workingValue8 = workingValue8.Get
    text2 = "business"
    rageUiOperation2 = "waiter_additem"
    workingValue8, cmgOperation4, text2, rageUiOperation2, stringHelper3, text3, dataCollection3, stateFlag3, workingValue2, text7 = workingValue8(cmgOperation4, text2, rageUiOperation2)
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue4(text9, dataCollection5, dataCollection7, stateFlag7, workingValue7, workingValue8, cmgOperation4, text2, rageUiOperation2, stringHelper3, text3, dataCollection3, stateFlag3, workingValue2, text7)
    workingValue4 = table
    workingValue4 = workingValue4.count
    text9 = localValue12.jobInfo
    text9 = text9.addedItems
    -- Beginner: result below is count.
    workingValue4 = workingValue4(text9)
    if workingValue4 > 0 then
      workingValue4 = RageUI
      workingValue4 = workingValue4.ButtonWithStyle
      text9 = "~g~Request Payment Now"
      dataCollection5 = "This takes payment now, and should be used for customers in the restaurant."
      dataCollection7 = {}
      stateFlag7 = "\194\163"
      workingValue7 = getMoneyStringFormatted
      workingValue8 = localValue22
      workingValue7 = workingValue7(workingValue8)
      stateFlag7 = stateFlag7 .. workingValue7
      dataCollection7.RightLabel = stateFlag7
      stateFlag7 = true

      -- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue13, localValue23, localValue3) ===
      function workingValue7(localValue13, localValue23, localValue3)
        local localValue4, dataCollection6, nameValue
        if localValue3 then
          localValue4 = TriggerServerEvent
          dataCollection6 = "79eec4ec28"
          nameValue = localValue12.jobInfo
          nameValue = nameValue.addedItems
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "79eec4ec28".
          localValue4(dataCollection6, nameValue)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue4(text9, dataCollection5, dataCollection7, stateFlag7, workingValue7)
      workingValue4 = RageUI
      workingValue4 = workingValue4.ButtonWithStyle
      text9 = "~g~Request Payment Later"
      dataCollection5 = "This takes payment later, and should be used when delivering to a location outside the complex (takeaways)."
      dataCollection7 = {}
      stateFlag7 = "\194\163"
      workingValue7 = getMoneyStringFormatted
      workingValue8 = localValue22
      workingValue7 = workingValue7(workingValue8)
      stateFlag7 = stateFlag7 .. workingValue7
      dataCollection7.RightLabel = stateFlag7
      stateFlag7 = true

      -- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue13, localValue23, localValue3) ===
      function workingValue7(localValue13, localValue23, localValue3)
        local localValue4, dataCollection6, nameValue
        if localValue3 then
          localValue4 = TriggerServerEvent
          dataCollection6 = "09b7549346"
          nameValue = localValue12.jobInfo
          nameValue = nameValue.addedItems
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "09b7549346".
          localValue4(dataCollection6, nameValue)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue4(text9, dataCollection5, dataCollection7, stateFlag7, workingValue7)
    end
  end
  localValue1(localValue2, stateFlag4, stateFlag5, stateFlag6, text11)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag5 = "business"
  stateFlag6 = "waiter_additem"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag5, stateFlag6)
  stateFlag4 = true
  stateFlag5 = false
  stateFlag6 = true

  -- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
  function text11()
    local localValue12, localValue22, workingValue4, text9, dataCollection5, dataCollection7, stateFlag7, workingValue7, workingValue8, cmgOperation4, text2, rageUiOperation2, stringHelper3, text3, dataCollection3, stateFlag3, workingValue2, text7, text8
    localValue12 = CMG
    localValue12 = localValue12.getUserBusinessData
    localValue22 = "waiter"
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue22 = text12
      workingValue4 = localValue12
      localValue22 = localValue22(workingValue4)
      if localValue22 then
        goto continueAtStep16
      end
    end
    localValue22 = RageUI
    localValue22 = localValue22.CloseAll
    localValue22()
    return
    ::continueAtStep16::
    localValue22 = pairs
    workingValue4 = localValue12.jobMetadata
    workingValue4 = workingValue4.sellableItems
    localValue22, workingValue4, text9, dataCollection5 = localValue22(workingValue4)
    for dataCollection7, stateFlag7 in localValue22, workingValue4, text9, dataCollection5 do
      workingValue7 = localValue12.locationInfo
      workingValue7 = workingValue7.items
      workingValue7 = workingValue7[dataCollection7]
      if workingValue7 then
        workingValue8 = CMG
        workingValue8 = workingValue8.getBusinessPriceOverrides
        cmgOperation4 = localValue12.name
        workingValue8 = workingValue8(cmgOperation4)
        workingValue8 = workingValue8[dataCollection7]
        if not workingValue8 then
          workingValue8 = stateFlag7
        end
        cmgOperation4 = RageUI
        cmgOperation4 = cmgOperation4.ButtonWithStyle
        text2 = "Add "
        rageUiOperation2 = workingValue7[1]
        text2 = text2 .. rageUiOperation2
        rageUiOperation2 = ""
        stringHelper3 = {}
        text3 = "\194\163"
        dataCollection3 = getMoneyStringFormatted
        stateFlag3 = workingValue8
        dataCollection3 = dataCollection3(stateFlag3)
        text3 = text3 .. dataCollection3
        stringHelper3.RightLabel = text3
        text3 = true

        -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue13, localValue23, localValue3) ===
        function dataCollection3(localValue13, localValue23, localValue3)
          local localValue4, dataCollection6
          if localValue3 then
            localValue4 = localValue12.jobInfo
            dataCollection6 = dataCollection7
            localValue4.lastPickedItemId = dataCollection6
            localValue4 = localValue12.jobInfo
            localValue4.pickedItemAmount = 1
          end
        end
        stateFlag3 = RMenu
        workingValue2 = stateFlag3
        stateFlag3 = stateFlag3.Get
        text7 = "business"
        text8 = "waiter_additemamount"
        stateFlag3, workingValue2, text7, text8 = stateFlag3(workingValue2, text7, text8)
        -- Beginner: Draw a selectable RageUI menu button.
        cmgOperation4(text2, rageUiOperation2, stringHelper3, text3, dataCollection3, stateFlag3, workingValue2, text7, text8)
      end
    end
  end
  localValue1(localValue2, stateFlag4, stateFlag5, stateFlag6, text11)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag4 = localValue2
  localValue2 = localValue2.Get
  stateFlag5 = "business"
  stateFlag6 = "waiter_additemamount"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag4, stateFlag5, stateFlag6)
  stateFlag4 = true
  stateFlag5 = false
  stateFlag6 = true

  -- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
  function text11()
    local localValue12, localValue22, workingValue4, text9, dataCollection5, dataCollection7, stateFlag7, workingValue7, workingValue8, cmgOperation4, text2
    localValue12 = CMG
    localValue12 = localValue12.getUserBusinessData
    localValue22 = "waiter"
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue22 = text12
      workingValue4 = localValue12
      localValue22 = localValue22(workingValue4)
      if localValue22 then
        goto continueAtStep16
      end
    end
    localValue22 = RageUI
    localValue22 = localValue22.CloseAll
    localValue22()
    return
    ::continueAtStep16::
    localValue22 = RageUI
    localValue22 = localValue22.List
    workingValue4 = "Amount To Add"
    text9 = dataCollection
    dataCollection5 = localValue12.jobInfo
    dataCollection5 = dataCollection5.pickedItemAmount
    dataCollection7 = ""
    stateFlag7 = {}
    workingValue7 = true

    -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue3, localValue4) ===
    function workingValue8(localValue13, localValue23, localValue3, localValue4)
      local dataCollection6
      dataCollection6 = localValue12.jobInfo
      dataCollection6.pickedItemAmount = localValue4
    end
    -- Beginner: Draw a RageUI list selector.
    localValue22(workingValue4, text9, dataCollection5, dataCollection7, stateFlag7, workingValue7, workingValue8)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    workingValue4 = "~g~Add Item To Order"
    text9 = ""
    dataCollection5 = {}
    dataCollection5.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataCollection7 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue13, localValue23, localValue3) ===
    function stateFlag7(localValue13, localValue23, localValue3)
      local localValue4, dataCollection6, nameValue, stringHelper4
      if localValue3 then
        localValue4 = localValue12.jobInfo
        localValue4 = localValue4.addedItems
        dataCollection6 = localValue12.jobInfo
        dataCollection6 = dataCollection6.lastPickedItemId
        nameValue = localValue12.jobInfo
        stringHelper4 = nameValue.pickedItemAmount
        nameValue = dataCollection
        nameValue = nameValue[stringHelper4]
        localValue4[dataCollection6] = nameValue
        localValue4 = TriggerServerEvent
        dataCollection6 = "e76e0858eb"
        nameValue = localValue12.name
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e76e0858eb".
        localValue4(dataCollection6, nameValue)
      end
    end
    workingValue7 = RMenu
    workingValue8 = workingValue7
    workingValue7 = workingValue7.Get
    cmgOperation4 = "business"
    text2 = "waiter_placeorder"
    workingValue7, workingValue8, cmgOperation4, text2 = workingValue7(workingValue8, cmgOperation4, text2)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(workingValue4, text9, dataCollection5, dataCollection7, stateFlag7, workingValue7, workingValue8, cmgOperation4, text2)
  end
  localValue1(localValue2, stateFlag4, stateFlag5, stateFlag6, text11)
end
text14(rageUiOperation8, text, cmgOperation, rageUiOperation3)
text14 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation8; parameters: localValue1, localValue2) ===
function rageUiOperation8(localValue1, localValue2)
  local stateFlag4, stateFlag5, stateFlag6, text11, workingValue6, cmgOperation2, cmgOperation3, workingValue9, stringHelper, number, rageUiOperation4
  stateFlag4 = localValue1
  stateFlag5 = "_vieworders"
  stateFlag4 = stateFlag4 .. stateFlag5
  stateFlag5 = localValue1
  stateFlag6 = "_vieworder"
  stateFlag5 = stateFlag5 .. stateFlag6
  if localValue2 then
    stateFlag6 = RMenu
    stateFlag6 = stateFlag6.Add
    text11 = "business"
    workingValue6 = stateFlag4
    cmgOperation2 = RageUI
    cmgOperation2 = cmgOperation2.CreateSubMenu
    cmgOperation3 = RMenu
    workingValue9 = cmgOperation3
    cmgOperation3 = cmgOperation3.Get
    stringHelper = "business"
    number = localValue2
    -- Beginner: result below is menu.
    cmgOperation3 = cmgOperation3(workingValue9, stringHelper, number)
    workingValue9 = ""
    stringHelper = "~b~CMG Business"
    number = CMG
    number = number.getRageUIMenuWidth
    number = number()
    rageUiOperation4 = CMG
    rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
    rageUiOperation4 = rageUiOperation4()
    cmgOperation2, cmgOperation3, workingValue9, stringHelper, number, rageUiOperation4 = cmgOperation2(cmgOperation3, workingValue9, stringHelper, number, rageUiOperation4)
    stateFlag6(text11, workingValue6, cmgOperation2, cmgOperation3, workingValue9, stringHelper, number, rageUiOperation4)
  else
    stateFlag6 = RMenu
    stateFlag6 = stateFlag6.Add
    text11 = "business"
    workingValue6 = stateFlag4
    cmgOperation2 = RageUI
    cmgOperation2 = cmgOperation2.CreateMenu
    cmgOperation3 = ""
    workingValue9 = "~b~CMG Business"
    stringHelper = CMG
    stringHelper = stringHelper.getRageUIMenuWidth
    stringHelper = stringHelper()
    number = CMG
    number = number.getRageUIMenuHeight
    number, rageUiOperation4 = number()
    cmgOperation2, cmgOperation3, workingValue9, stringHelper, number, rageUiOperation4 = cmgOperation2(cmgOperation3, workingValue9, stringHelper, number, rageUiOperation4)
    stateFlag6(text11, workingValue6, cmgOperation2, cmgOperation3, workingValue9, stringHelper, number, rageUiOperation4)
  end
  stateFlag6 = RMenu
  stateFlag6 = stateFlag6.Add
  text11 = "business"
  workingValue6 = stateFlag5
  cmgOperation2 = RageUI
  cmgOperation2 = cmgOperation2.CreateSubMenu
  cmgOperation3 = RMenu
  workingValue9 = cmgOperation3
  cmgOperation3 = cmgOperation3.Get
  stringHelper = "business"
  number = stateFlag4
  -- Beginner: result below is menu.
  cmgOperation3 = cmgOperation3(workingValue9, stringHelper, number)
  workingValue9 = ""
  stringHelper = "~b~CMG Business"
  number = CMG
  number = number.getRageUIMenuWidth
  number = number()
  rageUiOperation4 = CMG
  rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
  rageUiOperation4 = rageUiOperation4()
  cmgOperation2, cmgOperation3, workingValue9, stringHelper, number, rageUiOperation4 = cmgOperation2(cmgOperation3, workingValue9, stringHelper, number, rageUiOperation4)
  stateFlag6(text11, workingValue6, cmgOperation2, cmgOperation3, workingValue9, stringHelper, number, rageUiOperation4)
  stateFlag6 = RageUI
  stateFlag6 = stateFlag6.CreateWhile
  text11 = 1.0
  workingValue6 = RMenu
  cmgOperation2 = workingValue6
  workingValue6 = workingValue6.Get
  cmgOperation3 = "business"
  workingValue9 = stateFlag4
  -- Beginner: result below is menu.
  workingValue6 = workingValue6(cmgOperation2, cmgOperation3, workingValue9)
  cmgOperation2 = nil

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local localValue12, localValue22, workingValue4, text9, dataCollection5, dataCollection7
    localValue12 = RageUI
    localValue12 = localValue12.IsVisible
    localValue22 = RMenu
    workingValue4 = localValue22
    localValue22 = localValue22.Get
    text9 = "business"
    dataCollection5 = stateFlag4
    -- Beginner: result below is menu.
    localValue22 = localValue22(workingValue4, text9, dataCollection5)
    workingValue4 = true
    text9 = false
    dataCollection5 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
    function dataCollection7()
      local localValue13, localValue23, localValue3, localValue4, dataCollection6, nameValue, stringHelper4, text13, rageUiOperation7, workingValue10, rageUiOperation, stringHelper2, stateFlag, dataCollection2, stateFlag2, workingValue, text6, workingValue3
      localValue13 = CMG
      localValue13 = localValue13.getUserBusinessData
      localValue23 = localValue1
      localValue13 = localValue13(localValue23)
      if localValue13 then
        localValue23 = localValue1
        if "waiter" ~= localValue23 then
          goto continueAtStep19
        end
        localValue23 = text12
        localValue3 = localValue13
        localValue23 = localValue23(localValue3)
        if localValue23 then
          goto continueAtStep19
        end
      end
      localValue23 = RageUI
      localValue23 = localValue23.CloseAll
      localValue23()
      return
      ::continueAtStep19::
      localValue23 = localValue13.state
      localValue23 = localValue23.orders
      localValue23 = #localValue23
      if 0 == localValue23 then
        localValue23 = RageUI
        localValue23 = localValue23.Separator
        localValue3 = "~r~No orders to display."
        localValue23(localValue3)
      end
      localValue23 = pairs
      localValue3 = number13
      localValue4 = localValue13.state
      localValue4 = localValue4.orders
      localValue3, localValue4, dataCollection6, nameValue, stringHelper4, text13, rageUiOperation7, workingValue10, rageUiOperation, stringHelper2, stateFlag, dataCollection2, stateFlag2, workingValue, text6, workingValue3 = localValue3(localValue4)
      localValue23, localValue3, localValue4, dataCollection6 = localValue23(localValue3, localValue4, dataCollection6, nameValue, stringHelper4, text13, rageUiOperation7, workingValue10, rageUiOperation, stringHelper2, stateFlag, dataCollection2, stateFlag2, workingValue, text6, workingValue3)
      for nameValue, stringHelper4 in localValue23, localValue3, localValue4, dataCollection6 do
        text13 = stringHelper4.isCompleted
        if text13 then
          text13 = "~g~"
          if text13 then
            goto continueAtStep42
          end
        end
        text13 = "~y~"
        ::continueAtStep42::
        rageUiOperation7 = RageUI
        rageUiOperation7 = rageUiOperation7.ButtonWithStyle
        workingValue10 = text13
        rageUiOperation = "View Order #"
        stringHelper2 = tostring
        stateFlag = stringHelper4.orderId
        stringHelper2 = stringHelper2(stateFlag)
        workingValue10 = workingValue10 .. rageUiOperation .. stringHelper2
        rageUiOperation = ""
        stringHelper2 = {}
        stringHelper2.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag = true

        -- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue14, localValue24, localValue32) ===
        function dataCollection2(localValue14, localValue24, localValue32)
          local serverEventCall, text10
          if localValue32 then
            serverEventCall = localValue13.jobInfo
            text10 = stringHelper4
            serverEventCall.selectedOrderInfo = text10
          end
        end
        stateFlag2 = RMenu
        workingValue = stateFlag2
        stateFlag2 = stateFlag2.Get
        text6 = "business"
        workingValue3 = stateFlag5
        stateFlag2, workingValue, text6, workingValue3 = stateFlag2(workingValue, text6, workingValue3)
        -- Beginner: Draw a selectable RageUI menu button.
        rageUiOperation7(workingValue10, rageUiOperation, stringHelper2, stateFlag, dataCollection2, stateFlag2, workingValue, text6, workingValue3)
      end
    end
    localValue12(localValue22, workingValue4, text9, dataCollection5, dataCollection7)
    localValue12 = RageUI
    localValue12 = localValue12.IsVisible
    localValue22 = RMenu
    workingValue4 = localValue22
    localValue22 = localValue22.Get
    text9 = "business"
    dataCollection5 = stateFlag5
    -- Beginner: result below is menu.
    localValue22 = localValue22(workingValue4, text9, dataCollection5)
    workingValue4 = true
    text9 = false
    dataCollection5 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
    function dataCollection7()
      local localValue13, localValue23, localValue3, localValue4, dataCollection6, nameValue, stringHelper4, text13, rageUiOperation7, workingValue10, rageUiOperation, stringHelper2, stateFlag, dataCollection2, stateFlag2, workingValue
      localValue13 = CMG
      localValue13 = localValue13.getUserBusinessData
      localValue23 = localValue1
      localValue13 = localValue13(localValue23)
      if localValue13 then
        localValue23 = localValue1
        if "waiter" ~= localValue23 then
          goto continueAtStep19
        end
        localValue23 = text12
        localValue3 = localValue13
        localValue23 = localValue23(localValue3)
        if localValue23 then
          goto continueAtStep19
        end
      end
      localValue23 = RageUI
      localValue23 = localValue23.CloseAll
      localValue23()
      return
      ::continueAtStep19::
      localValue23 = localValue13.jobInfo
      localValue23 = localValue23.selectedOrderInfo
      localValue3 = localValue23.isCompleted
      if localValue3 then
        localValue3 = "~g~"
        if localValue3 then
          goto continueAtStep28
        end
      end
      localValue3 = "~y~"
      ::continueAtStep28::
      localValue4 = RageUI
      localValue4 = localValue4.Separator
      dataCollection6 = localValue3
      nameValue = "Order #"
      stringHelper4 = tostring
      text13 = localValue23.orderId
      stringHelper4 = stringHelper4(text13)
      text13 = " - "
      rageUiOperation7 = localValue23.timeCreated
      dataCollection6 = dataCollection6 .. nameValue .. stringHelper4 .. text13 .. rageUiOperation7
      localValue4(dataCollection6)
      localValue4 = localValue23.hasPaid
      if localValue4 then
        localValue4 = RageUI
        localValue4 = localValue4.Separator
        dataCollection6 = "~g~Payment Paid (Total \194\163"
        nameValue = getMoneyStringFormatted
        stringHelper4 = localValue23.totalPrice
        nameValue = nameValue(stringHelper4)
        stringHelper4 = ")"
        dataCollection6 = dataCollection6 .. nameValue .. stringHelper4
        localValue4(dataCollection6)
      else
        localValue4 = RageUI
        localValue4 = localValue4.Separator
        dataCollection6 = "~r~Payment Pending (Total \194\163"
        nameValue = getMoneyStringFormatted
        stringHelper4 = localValue23.totalPrice
        nameValue = nameValue(stringHelper4)
        stringHelper4 = ")"
        dataCollection6 = dataCollection6 .. nameValue .. stringHelper4
        localValue4(dataCollection6)
      end
      localValue4 = pairs
      dataCollection6 = localValue23.items
      localValue4, dataCollection6, nameValue, stringHelper4 = localValue4(dataCollection6)
      for text13, rageUiOperation7 in localValue4, dataCollection6, nameValue, stringHelper4 do
        workingValue10 = localValue13.locationInfo
        workingValue10 = workingValue10.items
        workingValue10 = workingValue10[text13]
        rageUiOperation = RageUI
        rageUiOperation = rageUiOperation.ButtonWithStyle
        stringHelper2 = tostring
        stateFlag = rageUiOperation7
        stringHelper2 = stringHelper2(stateFlag)
        stateFlag = "x "
        dataCollection2 = workingValue10[1]
        stringHelper2 = stringHelper2 .. stateFlag .. dataCollection2
        stateFlag = ""
        dataCollection2 = {}
        stateFlag2 = true

        -- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
        function workingValue()
          local localValue14, localValue24
        end
        -- Beginner: Draw a selectable RageUI menu button.
        rageUiOperation(stringHelper2, stateFlag, dataCollection2, stateFlag2, workingValue)
      end
      localValue4 = localValue1
      if "manager" ~= localValue4 then
        localValue4 = localValue1
        if "waiter" ~= localValue4 then
          localValue4 = localValue1
          if "delivery" ~= localValue4 then
            goto continueAtStep121
          end
        end
      end
      localValue4 = localValue23.hasPaid
      if not localValue4 then
        localValue4 = RageUI
        localValue4 = localValue4.ButtonWithStyle
        dataCollection6 = "~g~Request Nearby Payment"
        nameValue = ""
        stringHelper4 = {}
        stringHelper4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        text13 = true

        -- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: localValue14, localValue24, localValue32) ===
        function rageUiOperation7(localValue14, localValue24, localValue32)
          local serverEventCall, text10, workingValue5
          if localValue32 then
            serverEventCall = TriggerServerEvent
            text10 = "d5eac1b64e"
            workingValue5 = localValue23.orderId
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d5eac1b64e".
            serverEventCall(text10, workingValue5)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        localValue4(dataCollection6, nameValue, stringHelper4, text13, rageUiOperation7)
      else
        localValue4 = localValue23.isCompleted
        if not localValue4 then
          localValue4 = RageUI
          localValue4 = localValue4.ButtonWithStyle
          dataCollection6 = "~g~Mark As Completed"
          nameValue = ""
          stringHelper4 = {}
          stringHelper4.RightLabel = "\226\134\146\226\134\146\226\134\146"
          text13 = true

          -- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: localValue14, localValue24, localValue32) ===
          function rageUiOperation7(localValue14, localValue24, localValue32)
            local serverEventCall, text10, workingValue5
            if localValue32 then
              serverEventCall = TriggerServerEvent
              text10 = "9e28ed4893"
              workingValue5 = localValue23.orderId
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9e28ed4893".
              serverEventCall(text10, workingValue5)
              localValue23.isCompleted = true
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          localValue4(dataCollection6, nameValue, stringHelper4, text13, rageUiOperation7)
        end
      end
      ::continueAtStep121::
    end
    localValue12(localValue22, workingValue4, text9, dataCollection5, dataCollection7)
  end
  stateFlag6(text11, workingValue6, cmgOperation2, cmgOperation3)
end
text14.addGenericBusinessOrderView = rageUiOperation8
text14 = CMG
text14 = text14.addGenericBusinessOrderView
rageUiOperation8 = "waiter"
text = "waiter_mainmenu"
text14(rageUiOperation8, text)
text14 = RegisterNetEvent
rageUiOperation8 = "7aa155f442"
-- Beginner: this function handles network event "7aa155f442".

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, stateFlag4, stateFlag5, stateFlag6
  localValue1 = CMG
  localValue1 = localValue1.getUserBusinessData
  localValue2 = "waiter"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = ExecuteCommand
    localValue2 = "e notepad"
    localValue1(localValue2)
    localValue1 = RageUI
    localValue1 = localValue1.Visible
    localValue2 = RMenu
    stateFlag4 = localValue2
    localValue2 = localValue2.Get
    stateFlag5 = "business"
    stateFlag6 = "waiter_mainmenu"
    -- Beginner: result below is menu.
    localValue2 = localValue2(stateFlag4, stateFlag5, stateFlag6)
    stateFlag4 = true
    localValue1(localValue2, stateFlag4)
    localValue1 = TriggerServerEvent
    localValue2 = "bf3f551598"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7aa155f442".
text14(rageUiOperation8, text)
text14 = {}
rageUiOperation8 = {}
rageUiOperation8.init = number10
rageUiOperation8.tick = number11
rageUiOperation8.finish = number12
rageUiOperation8.next = "main"
text14.main = rageUiOperation8
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.registerBusinessJob
text = "waiter"
cmgOperation = nil
rageUiOperation3 = "main"
rageUiOperation5 = text14
rageUiOperation6 = nil
rageUiOperation8(text, cmgOperation, rageUiOperation3, rageUiOperation5, rageUiOperation6)
