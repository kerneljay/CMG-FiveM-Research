--[[
    Beginner Guide: cl_taco.lua
    ===========================

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
    BEGINNER GUIDE — Taco
    =====================

    File: cmg/prod/client/jobs/cl_taco.lua
    Purpose: This file contains job gameplay.

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

    Config/data used:
      * cfg/cfg_taco

    Commands/command-like entries found:
      * taco

    Network/hash identifiers found: 14
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * Taco Job
      * Start Selling
      * Stop Selling
      * Purchase tacos
      * Press ~INPUT_CONTEXT~ to buy tacos

]]
local cmgCall, flag3, workValue3, dataTable, dataTable3, dataTable4, dataTable5, workValue4, dataTable7, numberValue17, numberValue, numberValue2, numberValue4, rageUiCall, tableHelper, rageUiCall2, textValue2, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5, workValue, cmgCall3, textValue6, textValue7, workValue2
cmgCall = CMG
cmgCall = cmgCall.loadModule
flag3 = "cfg/cfg_taco"
-- Beginner: result below is config.
cmgCall = cmgCall(flag3)
flag3 = false
workValue3 = nil
dataTable = {}
dataTable3 = {}
dataTable4 = {}
dataTable5 = {}
dataTable5.isSellingTacos = false
dataTable5.tacoBoxObj = nil
dataTable5.carryingBox = false
workValue4 = cmgCall.tacoPrice
workValue4 = workValue4[1]
dataTable5.tacoPrice = workValue4
dataTable5.lastSentPayEvent = 0
dataTable5.sellerMenu = false
dataTable5.firstTimeTacoTruck = false
workValue4 = nil
dataTable7 = {}
numberValue17 = 1
numberValue = 1
numberValue2 = 100
numberValue4 = 1
for rageUiCall = numberValue, numberValue2, numberValue4 do
  tableHelper = table
  tableHelper = tableHelper.insert
  rageUiCall2 = dataTable7
  textValue2 = rageUiCall
  tableHelper(rageUiCall2, textValue2)
end
function numberValue(arg1)
  local arg2, textValue10, flag8, stringHelper2, flag10
  arg2 = tCMG
  arg2 = arg2.notify
  textValue10 = "~g~Now selling tacos!"
  -- Beginner: Show a notification to the player.
  arg2(textValue10)
  arg2 = SetVehicleDoorOpen
  textValue10 = arg1
  flag8 = 5
  stringHelper2 = true
  flag10 = true
  arg2(textValue10, flag8, stringHelper2, flag10)
  workValue4 = arg1
  dataTable5.isSellingTacos = true
  arg2 = FreezeEntityPosition
  textValue10 = arg1
  flag8 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(textValue10, flag8)
  arg2 = Citizen
  arg2 = arg2.CreateThread
  function textValue10()
    local vehicle, cmgCall2, flag7, dataTable2
    while true do
      vehicle = GetVehiclePedIsIn
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      cmgCall2 = cmgCall2()
      flag7 = false
      -- Beginner: result below is currentVehicle.
      vehicle = vehicle(cmgCall2, flag7)
      cmgCall2 = workValue4
      if vehicle ~= cmgCall2 then
        break
      end
      vehicle = dataTable5.isSellingTacos
      if not vehicle then
        break
      end
      vehicle = Wait
      cmgCall2 = 100
      vehicle(cmgCall2)
    end
    vehicle = tCMG
    vehicle = vehicle.notify
    cmgCall2 = "~r~Stopped selling tacos!"
    -- Beginner: Show a notification to the player.
    vehicle(cmgCall2)
    vehicle = SetVehicleDoorShut
    cmgCall2 = arg1
    flag7 = 5
    dataTable2 = true
    vehicle(cmgCall2, flag7, dataTable2)
    vehicle = FreezeEntityPosition
    cmgCall2 = arg1
    flag7 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    vehicle(cmgCall2, flag7)
    vehicle = nil
    workValue4 = vehicle
    dataTable5.isSellingTacos = false
    vehicle = TriggerServerEvent
    cmgCall2 = "269fa358fc"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "269fa358fc".
    vehicle(cmgCall2)
    vehicle = Wait
    cmgCall2 = 100
    vehicle(cmgCall2)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(textValue10)
end
function numberValue2(arg1)
  local arg2, textValue10, flag8, stringHelper2
  arg2 = SetVehicleDoorShut
  textValue10 = arg1
  flag8 = 5
  stringHelper2 = true
  arg2(textValue10, flag8, stringHelper2)
  arg2 = nil
  workValue4 = arg2
  dataTable5.isSellingTacos = false
  arg2 = TriggerServerEvent
  textValue10 = "269fa358fc"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "269fa358fc".
  arg2(textValue10)
end
numberValue4 = RMenu
numberValue4 = numberValue4.Add
rageUiCall = "tacojob"
tableHelper = ""
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue2 = ""
textValue3 = "Taco Job"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue4 = "cmg_taco"
textValue5 = "tacos_menu"
rageUiCall2, textValue2, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5, workValue, cmgCall3, textValue6, textValue7, workValue2 = rageUiCall2(textValue2, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5)
numberValue4(rageUiCall, tableHelper, rageUiCall2, textValue2, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5, workValue, cmgCall3, textValue6, textValue7, workValue2)
numberValue4 = RMenu
numberValue4 = numberValue4.Add
rageUiCall = "tacocustomer"
tableHelper = ""
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue2 = ""
textValue3 = "Tacos"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue4 = "cmg_taco"
textValue5 = "tacos_menu"
rageUiCall2, textValue2, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5, workValue, cmgCall3, textValue6, textValue7, workValue2 = rageUiCall2(textValue2, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5)
numberValue4(rageUiCall, tableHelper, rageUiCall2, textValue2, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5, workValue, cmgCall3, textValue6, textValue7, workValue2)
function numberValue4(arg1)
  local arg2, textValue10, flag8, stringHelper2, flag10
  arg2 = cmgCall.tacoPrice
  arg2 = arg2[1]
  if arg1 < arg2 then
    arg2 = tCMG
    arg2 = arg2.notify
    textValue10 = "~r~The minimum price per taco is \194\163"
    flag8 = getMoneyStringFormatted
    stringHelper2 = tostring
    flag10 = cmgCall.tacoPrice
    flag10 = flag10[1]
    stringHelper2, flag10 = stringHelper2(flag10)
    flag8 = flag8(stringHelper2, flag10)
    stringHelper2 = "!"
    textValue10 = textValue10 .. flag8 .. stringHelper2
    -- Beginner: Show a notification to the player.
    arg2(textValue10)
    arg2 = cmgCall.tacoPrice
    arg2 = arg2[1]
    return arg2
  end
  arg2 = cmgCall.tacoPrice
  arg2 = arg2[2]
  if arg1 > arg2 then
    arg2 = tCMG
    arg2 = arg2.notify
    textValue10 = "~r~The maximum price per taco is \194\163"
    flag8 = getMoneyStringFormatted
    stringHelper2 = tostring
    flag10 = cmgCall.tacoPrice
    flag10 = flag10[2]
    stringHelper2, flag10 = stringHelper2(flag10)
    flag8 = flag8(stringHelper2, flag10)
    stringHelper2 = "!"
    textValue10 = textValue10 .. flag8 .. stringHelper2
    arg2(textValue10)
    arg2 = cmgCall.tacoPrice
    arg2 = arg2[2]
    return arg2
  end
  return arg1
end
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
tableHelper = 1.0
rageUiCall2 = RMenu
textValue2 = rageUiCall2
rageUiCall2 = rageUiCall2.Get
textValue3 = "tacojob"
rageUiCall3 = ""
-- Beginner: result below is menu.
rageUiCall2 = rageUiCall2(textValue2, textValue3, rageUiCall3)
textValue2 = nil
function textValue3()
  local arg1, arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue10 = arg2
  arg2 = arg2.Get
  flag8 = "tacojob"
  stringHelper2 = ""
  -- Beginner: result below is menu.
  arg2 = arg2(textValue10, flag8, stringHelper2)
  textValue10 = true
  flag8 = true
  stringHelper2 = true
  function flag10()
    local vehicle, cmgCall2, flag7, dataTable2, flag9, textValue11, dataTable6, flag12, workValue6, workValue8
    vehicle = RageUI
    vehicle = vehicle.ButtonWithStyle
    cmgCall2 = "Price Per Taco"
    flag7 = ""
    dataTable2 = {}
    flag9 = "\194\163"
    textValue11 = getMoneyStringFormatted
    dataTable6 = dataTable5.tacoPrice
    textValue11 = textValue11(dataTable6)
    flag9 = flag9 .. textValue11
    dataTable2.RightLabel = flag9
    flag9 = true
    function textValue11(arg12, arg22, arg3)
      local arg4, cmgCall4, cmgCall5, flag11
      if arg3 then
        arg4 = tonumber
        cmgCall4 = CMG
        cmgCall4 = cmgCall4.GetRageInputText
        cmgCall5 = "Price Per Taco"
        cmgCall4, cmgCall5, flag11 = cmgCall4(cmgCall5)
        arg4 = arg4(cmgCall4, cmgCall5, flag11)
        if arg4 then
          cmgCall4 = numberValue4
          cmgCall5 = arg4
          cmgCall4 = cmgCall4(cmgCall5)
          dataTable5.tacoPrice = cmgCall4
          cmgCall4 = dataTable5.isSellingTacos
          if cmgCall4 then
            cmgCall4 = TriggerServerEvent
            cmgCall5 = "b5d6ea283f"
            flag11 = dataTable5.tacoPrice
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b5d6ea283f".
            cmgCall4(cmgCall5, flag11)
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    vehicle(cmgCall2, flag7, dataTable2, flag9, textValue11)
    vehicle = dataTable5.isSellingTacos
    if not vehicle then
      vehicle = RageUI
      vehicle = vehicle.ButtonWithStyle
      cmgCall2 = "Start Selling"
      flag7 = ""
      dataTable2 = {}
      dataTable2.RightLabel = ""
      flag9 = true
      function textValue11(arg12, arg22, arg3)
        local arg4, cmgCall4, cmgCall5, flag11, workValue5, workValue7
        if arg3 then
          arg4 = GetEntityCoords
          cmgCall4 = CMG
          cmgCall4 = cmgCall4.getPlayerPed
          cmgCall4, cmgCall5, flag11, workValue5, workValue7 = cmgCall4()
          -- Beginner: result below is entityCoords.
          arg4 = arg4(cmgCall4, cmgCall5, flag11, workValue5, workValue7)
          cmgCall4 = GetVehiclePedIsIn
          cmgCall5 = CMG
          cmgCall5 = cmgCall5.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall5 = cmgCall5()
          flag11 = false
          -- Beginner: result below is currentVehicle.
          cmgCall4 = cmgCall4(cmgCall5, flag11)
          cmgCall5 = TriggerServerEvent
          flag11 = "5b71435d4a"
          workValue5 = arg4
          workValue7 = dataTable5.tacoPrice
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5b71435d4a".
          cmgCall5(flag11, workValue5, workValue7)
          cmgCall5 = numberValue
          flag11 = cmgCall4
          cmgCall5(flag11)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      vehicle(cmgCall2, flag7, dataTable2, flag9, textValue11)
    else
      vehicle = CMG
      vehicle = vehicle.getClientUserId
      -- Beginner: result below is userId.
      vehicle = vehicle()
      cmgCall2 = 0
      flag7 = 0
      dataTable2 = dataTable
      dataTable2 = dataTable2[vehicle]
      if dataTable2 then
        dataTable2 = dataTable
        dataTable2 = dataTable2[vehicle]
        cmgCall2 = dataTable2.currentStock
        dataTable2 = dataTable
        dataTable2 = dataTable2[vehicle]
        flag7 = dataTable2.totalMoneyMade
      end
      dataTable2 = RageUI
      dataTable2 = dataTable2.ButtonWithStyle
      flag9 = "Current Stock:"
      textValue11 = ""
      dataTable6 = {}
      dataTable6.RightLabel = cmgCall2
      flag12 = true
      function workValue6()
        local arg12, arg22
      end
      dataTable2(flag9, textValue11, dataTable6, flag12, workValue6)
      dataTable2 = RageUI
      dataTable2 = dataTable2.ButtonWithStyle
      flag9 = "Total money made:"
      textValue11 = ""
      dataTable6 = {}
      flag12 = "\194\163"
      workValue6 = getMoneyStringFormatted
      workValue8 = flag7
      workValue6 = workValue6(workValue8)
      flag12 = flag12 .. workValue6
      dataTable6.RightLabel = flag12
      flag12 = true
      function workValue6()
        local arg12, arg22
      end
      -- Beginner: Draw a selectable RageUI menu button.
      dataTable2(flag9, textValue11, dataTable6, flag12, workValue6)
      dataTable2 = RageUI
      dataTable2 = dataTable2.ButtonWithStyle
      flag9 = "Stop Selling"
      textValue11 = ""
      dataTable6 = {}
      dataTable6.RightLabel = ""
      flag12 = true
      function workValue6(arg12, arg22, arg3)
        local arg4, cmgCall4, cmgCall5
        if arg3 then
          arg4 = GetVehiclePedIsIn
          cmgCall4 = CMG
          cmgCall4 = cmgCall4.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall4 = cmgCall4()
          cmgCall5 = false
          -- Beginner: result below is currentVehicle.
          arg4 = arg4(cmgCall4, cmgCall5)
          cmgCall4 = numberValue2
          cmgCall5 = arg4
          cmgCall4(cmgCall5)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      dataTable2(flag9, textValue11, dataTable6, flag12, workValue6)
    end
  end
  function cmgCall6()
    local vehicle, cmgCall2
  end
  arg1(arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6)
end
rageUiCall(tableHelper, rageUiCall2, textValue2, textValue3)
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
tableHelper = 1.0
rageUiCall2 = RMenu
textValue2 = rageUiCall2
rageUiCall2 = rageUiCall2.Get
textValue3 = "tacocustomer"
rageUiCall3 = ""
-- Beginner: result below is menu.
rageUiCall2 = rageUiCall2(textValue2, textValue3, rageUiCall3)
textValue2 = nil
function textValue3()
  local arg1, arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue10 = arg2
  arg2 = arg2.Get
  flag8 = "tacocustomer"
  stringHelper2 = ""
  -- Beginner: result below is menu.
  arg2 = arg2(textValue10, flag8, stringHelper2)
  textValue10 = true
  flag8 = true
  stringHelper2 = true
  function flag10()
    local vehicle, cmgCall2, flag7, dataTable2, flag9, textValue11, dataTable6, flag12
    vehicle = dataTable5.isSellingTacos
    if not vehicle then
      vehicle = workValue3
      if vehicle then
        vehicle = RageUI
        vehicle = vehicle.ButtonWithStyle
        cmgCall2 = "Price Per Taco"
        flag7 = ""
        dataTable2 = {}
        flag9 = "\194\163"
        textValue11 = getMoneyStringFormatted
        flag12 = workValue3
        dataTable6 = dataTable
        dataTable6 = dataTable6[flag12]
        dataTable6 = dataTable6.amount
        textValue11 = textValue11(dataTable6)
        flag9 = flag9 .. textValue11
        dataTable2.RightLabel = flag9
        flag9 = true
        function textValue11()
          local arg12, arg22
        end
        -- Beginner: Draw a selectable RageUI menu button.
        vehicle(cmgCall2, flag7, dataTable2, flag9, textValue11)
        vehicle = RageUI
        vehicle = vehicle.List
        cmgCall2 = "Amount of tacos"
        flag7 = dataTable7
        dataTable2 = numberValue17
        flag9 = ""
        textValue11 = {}
        dataTable6 = true
        function flag12(arg12, arg22, arg3, arg4)
          local cmgCall4
          cmgCall4 = numberValue17
          if arg4 ~= cmgCall4 then
            numberValue17 = arg4
          end
        end
        -- Beginner: Draw a RageUI list selector.
        vehicle(cmgCall2, flag7, dataTable2, flag9, textValue11, dataTable6, flag12)
        vehicle = RageUI
        vehicle = vehicle.ButtonWithStyle
        cmgCall2 = "Purchase tacos"
        flag7 = ""
        dataTable2 = {}
        dataTable2.RightLabel = ""
        flag9 = true
        function textValue11(arg12, arg22, arg3)
          local arg4, cmgCall4, cmgCall5, flag11
          if arg3 then
            arg4 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            arg4 = arg4()
            cmgCall4 = dataTable5.lastSentPayEvent
            arg4 = arg4 - cmgCall4
            if arg4 > 50 then
              arg4 = TriggerServerEvent
              cmgCall4 = "868ed10012"
              cmgCall5 = workValue3
              flag11 = numberValue17
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "868ed10012".
              arg4(cmgCall4, cmgCall5, flag11)
              arg4 = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              arg4 = arg4()
              dataTable5.lastSentPayEvent = arg4
            end
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        vehicle(cmgCall2, flag7, dataTable2, flag9, textValue11)
    end
    else
      vehicle = RageUI
      vehicle = vehicle.Visible
      cmgCall2 = RMenu
      flag7 = cmgCall2
      cmgCall2 = cmgCall2.Get
      dataTable2 = "tacocustomer"
      flag9 = ""
      -- Beginner: result below is menu.
      cmgCall2 = cmgCall2(flag7, dataTable2, flag9)
      flag7 = true
      vehicle(cmgCall2, flag7)
    end
  end
  function cmgCall6()
    local vehicle, cmgCall2
  end
  arg1(arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6)
end
rageUiCall(tableHelper, rageUiCall2, textValue2, textValue3)
rageUiCall = RegisterNetEvent
tableHelper = "f53a9c58a9"
-- Beginner: this function handles network event "f53a9c58a9".
function rageUiCall2(arg1, arg2)
  local textValue10, flag8
  textValue10 = dataTable5.isSellingTacos
  if textValue10 then
    flag8 = workValue3
    textValue10 = dataTable
    textValue10 = textValue10[flag8]
    textValue10.currentStock = arg1
    flag8 = workValue3
    textValue10 = dataTable
    textValue10 = textValue10[flag8]
    textValue10.totalMoneyMade = arg2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f53a9c58a9".
rageUiCall(tableHelper, rageUiCall2)
rageUiCall = RegisterNetEvent
tableHelper = "a269383e94"
-- Beginner: this function handles network event "a269383e94".
function rageUiCall2(arg1, arg2)
  local textValue10
  textValue10 = dataTable
  textValue10 = textValue10[arg1]
  textValue10.amount = arg2
end
rageUiCall(tableHelper, rageUiCall2)
-- Beginner: this function handles network event "a269383e94".
function rageUiCall(arg1)
  local arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag, numberValue7
  -- Beginner: this function handles network event "a269383e94".
  function arg2()
    local vehicle, cmgCall2, flag7, dataTable2, flag9
    vehicle = dataTable5.isSellingTacos
    if not vehicle then
      vehicle = workValue3
      if vehicle then
        vehicle = workValue3
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.getClientUserId
        -- Beginner: result below is userId.
        cmgCall2 = cmgCall2()
        if vehicle ~= cmgCall2 then
          vehicle = drawNativeNotification
          cmgCall2 = "Press ~INPUT_CONTEXT~ to buy tacos"
          -- Beginner: Show a GTA-style notification/help prompt.
          vehicle(cmgCall2)
          vehicle = IsControlJustPressed
          cmgCall2 = 0
          flag7 = 38
          vehicle = vehicle(cmgCall2, flag7)
          if vehicle then
            vehicle = RageUI
            vehicle = vehicle.Visible
            cmgCall2 = RMenu
            flag7 = cmgCall2
            cmgCall2 = cmgCall2.Get
            dataTable2 = "tacocustomer"
            flag9 = ""
            -- Beginner: result below is menu.
            cmgCall2 = cmgCall2(flag7, dataTable2, flag9)
            flag7 = true
            vehicle(cmgCall2, flag7)
          end
        end
      end
    end
  end
  if arg1 then
    textValue10 = tCMG
    textValue10 = textValue10.removeArea
    flag8 = "tacopurchase_"
    stringHelper2 = tostring
    flag10 = arg1
    stringHelper2 = stringHelper2(flag10)
    flag8 = flag8 .. stringHelper2
    textValue10(flag8)
  else
    textValue10 = pairs
    flag8 = dataTable
    textValue10, flag8, stringHelper2, flag10 = textValue10(flag8)
    for cmgCall6, numberValue16 in textValue10, flag8, stringHelper2, flag10 do
      cmgCall7 = tCMG
      cmgCall7 = cmgCall7.removeArea
      textValue12 = "tacopurchase_"
      stringHelper = tostring
      numberValue3 = cmgCall6
      stringHelper = stringHelper(numberValue3)
      textValue12 = textValue12 .. stringHelper
      cmgCall7(textValue12)
      cmgCall7 = numberValue16.position
      if cmgCall7 then
        cmgCall7 = CMG
        cmgCall7 = cmgCall7.createArea
        textValue12 = "tacopurchase_"
        stringHelper = tostring
        numberValue3 = cmgCall6
        stringHelper = stringHelper(numberValue3)
        textValue12 = textValue12 .. stringHelper
        stringHelper = numberValue16.position
        numberValue3 = 7.0
        numberValue5 = 5.0
        numberValue6 = nil
        textValue = nil
        flag = arg2
        numberValue7 = nil
        -- Beginner: Create an interaction area around a world position.
        cmgCall7(textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag, numberValue7)
      end
    end
  end
end
function tableHelper()
  local arg1, arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag, numberValue7, flag2, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag4, flag5, flag6, textValue8, textValue9, numberValue13, numberValue14, numberValue15
  arg1 = pairs
  arg2 = dataTable3
  arg1, arg2, textValue10, flag8 = arg1(arg2)
  for stringHelper2, flag10 in arg1, arg2, textValue10, flag8 do
    cmgCall6 = tCMG
    cmgCall6 = cmgCall6.removeMarker
    numberValue16 = flag10
    cmgCall6(numberValue16)
  end
  arg1 = pairs
  arg2 = dataTable4
  arg1, arg2, textValue10, flag8 = arg1(arg2)
  for stringHelper2, flag10 in arg1, arg2, textValue10, flag8 do
    cmgCall6 = tCMG
    cmgCall6 = cmgCall6.removeBlip
    numberValue16 = flag10
    cmgCall6(numberValue16)
  end
  arg1 = {}
  dataTable3 = arg1
  arg1 = {}
  dataTable4 = arg1
  arg1 = table
  arg1 = arg1.insert
  arg2 = dataTable4
  textValue10 = tCMG
  textValue10 = textValue10.addBlip
  flag8 = cmgCall.boxPickup
  flag8 = flag8.x
  stringHelper2 = cmgCall.boxPickup
  stringHelper2 = stringHelper2.y
  flag10 = cmgCall.boxPickup
  flag10 = flag10.z
  cmgCall6 = 52
  numberValue16 = 17
  cmgCall7 = "Taco Bomb"
  textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag, numberValue7, flag2, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag4, flag5, flag6, textValue8, textValue9, numberValue13, numberValue14, numberValue15 = textValue10(flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7)
  arg1(arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag, numberValue7, flag2, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag4, flag5, flag6, textValue8, textValue9, numberValue13, numberValue14, numberValue15)
  arg1 = RequestStreamedTextureDict
  arg2 = "tacomarker"
  textValue10 = true
  arg1(arg2, textValue10)
  while true do
    arg1 = HasStreamedTextureDictLoaded
    arg2 = "tacomarker"
    arg1 = arg1(arg2)
    if arg1 then
      break
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, textValue10, flag8 = arg1(arg2)
  for stringHelper2, flag10 in arg1, arg2, textValue10, flag8 do
    cmgCall6 = flag10.position
    if cmgCall6 then
      cmgCall6 = table
      cmgCall6 = cmgCall6.insert
      numberValue16 = dataTable4
      cmgCall7 = tCMG
      cmgCall7 = cmgCall7.addBlip
      textValue12 = flag10.position
      textValue12 = textValue12.x
      stringHelper = flag10.position
      stringHelper = stringHelper.y
      numberValue3 = flag10.position
      numberValue3 = numberValue3.z
      numberValue5 = 52
      numberValue6 = 17
      textValue = "Taco Seller"
      cmgCall7, textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag, numberValue7, flag2, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag4, flag5, flag6, textValue8, textValue9, numberValue13, numberValue14, numberValue15 = cmgCall7(textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue)
      cmgCall6(numberValue16, cmgCall7, textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag, numberValue7, flag2, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag4, flag5, flag6, textValue8, textValue9, numberValue13, numberValue14, numberValue15)
      cmgCall6 = GetPlayerFromServerId
      numberValue16 = flag10.source
      -- Beginner: result below is playerIndex.
      cmgCall6 = cmgCall6(numberValue16)
      if -1 ~= cmgCall6 then
        numberValue16 = GetVehiclePedIsIn
        cmgCall7 = GetPlayerPed
        textValue12 = cmgCall6
        -- Beginner: result below is playerPed.
        cmgCall7 = cmgCall7(textValue12)
        textValue12 = false
        -- Beginner: result below is currentVehicle.
        numberValue16 = numberValue16(cmgCall7, textValue12)
        cmgCall7 = GetOffsetFromEntityInWorldCoords
        textValue12 = numberValue16
        stringHelper = 0.0
        numberValue3 = -2.0
        numberValue5 = 0.0
        cmgCall7 = cmgCall7(textValue12, stringHelper, numberValue3, numberValue5)
        flag10.position = cmgCall7
        cmgCall7 = table
        cmgCall7 = cmgCall7.insert
        textValue12 = dataTable3
        stringHelper = tCMG
        stringHelper = stringHelper.addMarker
        numberValue3 = flag10.position
        numberValue3 = numberValue3.x
        numberValue5 = flag10.position
        numberValue5 = numberValue5.y
        numberValue6 = flag10.position
        numberValue6 = numberValue6.z
        numberValue6 = numberValue6 + 2.5
        textValue = 1.0
        flag = 1.0
        numberValue7 = 1.0
        flag2 = 255
        numberValue8 = 255
        numberValue9 = 255
        numberValue10 = 255
        numberValue11 = 30
        numberValue12 = 9
        flag4 = true
        flag5 = true
        flag6 = true
        textValue8 = "tacomarker"
        textValue9 = "taco"
        numberValue13 = 90.0
        numberValue14 = 0.0
        numberValue15 = 0.0
        stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag, numberValue7, flag2, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag4, flag5, flag6, textValue8, textValue9, numberValue13, numberValue14, numberValue15 = stringHelper(numberValue3, numberValue5, numberValue6, textValue, flag, numberValue7, flag2, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag4, flag5, flag6, textValue8, textValue9, numberValue13, numberValue14, numberValue15)
        cmgCall7(textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag, numberValue7, flag2, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag4, flag5, flag6, textValue8, textValue9, numberValue13, numberValue14, numberValue15)
      end
    end
  end
end
rageUiCall2 = RegisterNetEvent
textValue2 = "fc102d5e13"
-- Beginner: this function handles network event "fc102d5e13".
function textValue3(arg1)
  local arg2, textValue10, flag8, stringHelper2, flag10
  arg2 = workValue3
  if arg1 == arg2 then
    arg2 = RageUI
    arg2 = arg2.Visible
    textValue10 = RMenu
    flag8 = textValue10
    textValue10 = textValue10.Get
    stringHelper2 = "tacocustomer"
    flag10 = ""
    -- Beginner: result below is menu.
    textValue10 = textValue10(flag8, stringHelper2, flag10)
    flag8 = false
    arg2(textValue10, flag8)
  end
  arg2 = dataTable
  arg2[arg1] = nil
  arg2 = rageUiCall
  textValue10 = arg1
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg2(textValue10)
  arg2 = tableHelper
  arg2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fc102d5e13".
rageUiCall2(textValue2, textValue3)
rageUiCall2 = RegisterNetEvent
textValue2 = "36bd827f27"
-- Beginner: this function handles network event "36bd827f27".
function textValue3(arg1)
  local arg2
  dataTable = arg1
  arg2 = rageUiCall
  arg2()
  arg2 = tableHelper
  arg2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "36bd827f27".
rageUiCall2(textValue2, textValue3)
rageUiCall2 = RegisterCommand
textValue2 = "taco"
-- Beginner: this function is the command handler for "taco".
function textValue3()
  local arg1, arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6
  arg1 = GetVehiclePedIsIn
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  textValue10 = false
  -- Beginner: result below is currentVehicle.
  arg1 = arg1(arg2, textValue10)
  arg2 = GetEntityModel
  textValue10 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(textValue10)
  textValue10 = flag3
  if textValue10 then
    if 1951180813 == arg2 then
      dataTable5.sellerMenu = true
      textValue10 = RageUI
      textValue10 = textValue10.Visible
      flag8 = RMenu
      stringHelper2 = flag8
      flag8 = flag8.Get
      flag10 = "tacojob"
      cmgCall6 = ""
      -- Beginner: result below is menu.
      flag8 = flag8(stringHelper2, flag10, cmgCall6)
      stringHelper2 = true
      textValue10(flag8, stringHelper2)
    else
      textValue10 = tCMG
      textValue10 = textValue10.notify
      flag8 = "~r~You need to be in the taco truck!"
      -- Beginner: Show a notification to the player.
      textValue10(flag8)
    end
  else
    textValue10 = tCMG
    textValue10 = textValue10.notify
    flag8 = "~r~You do not have the taco seller job!"
    textValue10(flag8)
  end
end
rageUiCall3 = false
-- Beginner: Register a chat/console command. Event/command: "taco".
rageUiCall2(textValue2, textValue3, rageUiCall3)
rageUiCall2 = Citizen
rageUiCall2 = rageUiCall2.CreateThread
function textValue2()
  local arg1, arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12
  while true do
    arg1 = GetEntityCoords
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12 = arg2()
    -- Beginner: result below is entityCoords.
    arg1 = arg1(arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12)
    arg2 = pairs
    textValue10 = dataTable
    arg2, textValue10, flag8, stringHelper2 = arg2(textValue10)
    for flag10, cmgCall6 in arg2, textValue10, flag8, stringHelper2 do
      numberValue16 = cmgCall6.position
      if numberValue16 then
        numberValue16 = cmgCall6.position
        numberValue16 = arg1 - numberValue16
        numberValue16 = #numberValue16
        if numberValue16 < 7 then
          workValue3 = flag10
          while true do
            cmgCall7 = GetEntityCoords
            textValue12 = CMG
            textValue12 = textValue12.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            textValue12 = textValue12()
            -- Beginner: result below is entityCoords.
            cmgCall7 = cmgCall7(textValue12)
            textValue12 = cmgCall6.position
            cmgCall7 = cmgCall7 - textValue12
            cmgCall7 = #cmgCall7
            if not (cmgCall7 <= 7) then
              break
            end
            cmgCall7 = Wait
            textValue12 = 100
            cmgCall7(textValue12)
          end
        end
        cmgCall7 = nil
        workValue3 = cmgCall7
      end
    end
    arg2 = Wait
    textValue10 = 3000
    arg2(textValue10)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiCall2(textValue2)
function rageUiCall2()
  local arg1, arg2, textValue10, flag8, stringHelper2, flag10
  arg1 = workValue4
  if arg1 then
    arg1 = SetVehicleEngineOn
    arg2 = workValue4
    textValue10 = false
    flag8 = true
    stringHelper2 = false
    arg1(arg2, textValue10, flag8, stringHelper2)
  end
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = GetEntityModel
    textValue10 = CMG
    textValue10 = textValue10.getPlayerVehicle
    textValue10, flag8, stringHelper2, flag10 = textValue10()
    -- Beginner: result below is modelHash.
    arg2 = arg2(textValue10, flag8, stringHelper2, flag10)
    if 1951180813 == arg2 then
      arg2 = dataTable5.firstTimeTacoTruck
      if not arg2 then
        dataTable5.firstTimeTacoTruck = true
        arg2 = CMG
        arg2 = arg2.initializeInstructionalJobScaleform
        textValue10 = "Taco Seller"
        flag8 = "Head to Taco Bomb to stock up!"
        arg2(textValue10, flag8)
        arg2 = SetNewWaypoint
        textValue10 = cmgCall.boxPickup
        textValue10 = textValue10.x
        flag8 = cmgCall.boxPickup
        flag8 = flag8.y
        arg2(textValue10, flag8)
      end
    else
      arg2 = dataTable5.sellerMenu
      if arg2 then
        dataTable5.sellerMenu = false
        arg2 = RageUI
        arg2 = arg2.Visible
        textValue10 = RMenu
        flag8 = textValue10
        textValue10 = textValue10.Get
        stringHelper2 = "tacojob"
        flag10 = ""
        -- Beginner: result below is menu.
        textValue10 = textValue10(flag8, stringHelper2, flag10)
        flag8 = false
        arg2(textValue10, flag8)
      end
    end
  else
    arg2 = dataTable5.sellerMenu
    if arg2 then
      dataTable5.sellerMenu = false
      arg2 = RageUI
      arg2 = arg2.Visible
      textValue10 = RMenu
      flag8 = textValue10
      textValue10 = textValue10.Get
      stringHelper2 = "tacojob"
      flag10 = ""
      -- Beginner: result below is menu.
      textValue10 = textValue10(flag8, stringHelper2, flag10)
      flag8 = false
      arg2(textValue10, flag8)
    end
  end
end
function textValue2(arg1)
  local arg2, textValue10, flag8, stringHelper2
  arg2 = GetEntityBoneIndexByName
  textValue10 = arg1
  flag8 = "door_pside_r"
  arg2 = arg2(textValue10, flag8)
  textValue10 = GetWorldPositionOfEntityBone
  flag8 = arg1
  stringHelper2 = arg2
  textValue10 = textValue10(flag8, stringHelper2)
  flag8 = CMG
  flag8 = flag8.getPlayerCoords
  -- Beginner: result below is playerCoords.
  flag8 = flag8()
  flag8 = textValue10 - flag8
  flag8 = #flag8
  stringHelper2 = 2.5
  flag8 = flag8 < stringHelper2
  return flag8
end
function textValue3()
  local arg1, arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper, numberValue3, numberValue5
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = dataTable5.carryingBox
  if arg2 then
    arg2 = IsEntityPlayingAnim
    textValue10 = arg1
    flag8 = "anim@heists@box_carry@"
    stringHelper2 = "idle"
    flag10 = 3
    arg2 = arg2(textValue10, flag8, stringHelper2, flag10)
    if not arg2 then
      arg2 = TaskPlayAnim
      textValue10 = arg1
      flag8 = "anim@heists@box_carry@"
      stringHelper2 = "idle"
      flag10 = 2.0
      cmgCall6 = 2.0
      numberValue16 = -1
      cmgCall7 = 51
      textValue12 = 0
      stringHelper = false
      numberValue3 = false
      numberValue5 = false
      -- Beginner: Play an animation on a ped.
      arg2(textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper, numberValue3, numberValue5)
    end
    arg2 = CMG
    arg2 = arg2.getClosestVehicle
    textValue10 = 7.0
    arg2 = arg2(textValue10)
    textValue10 = GetEntityModel
    flag8 = arg2
    -- Beginner: result below is modelHash.
    textValue10 = textValue10(flag8)
    if 1951180813 ~= textValue10 then
      return
    end
    textValue10 = textValue2
    flag8 = arg2
    textValue10 = textValue10(flag8)
    if not textValue10 then
      return
    end
    textValue10 = drawNativeNotification
    flag8 = "Press ~INPUT_CONTEXT~ to stock tacos."
    -- Beginner: Show a GTA-style notification/help prompt.
    textValue10(flag8)
    textValue10 = IsControlJustPressed
    flag8 = 0
    stringHelper2 = 38
    textValue10 = textValue10(flag8, stringHelper2)
    if textValue10 then
      textValue10 = TriggerServerEvent
      flag8 = "d4d2503493"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d4d2503493".
      textValue10(flag8)
      textValue10 = SetVehicleDoorOpen
      flag8 = arg2
      stringHelper2 = 2
      flag10 = false
      cmgCall6 = false
      textValue10(flag8, stringHelper2, flag10, cmgCall6)
      textValue10 = SetVehicleDoorOpen
      flag8 = arg2
      stringHelper2 = 3
      flag10 = false
      cmgCall6 = false
      textValue10(flag8, stringHelper2, flag10, cmgCall6)
      textValue10 = SetTimeout
      flag8 = 1000
      function stringHelper2()
        local vehicle, cmgCall2, flag7, dataTable2
        vehicle = SetVehicleDoorShut
        cmgCall2 = arg2
        flag7 = 2
        dataTable2 = false
        vehicle(cmgCall2, flag7, dataTable2)
        vehicle = SetVehicleDoorShut
        cmgCall2 = arg2
        flag7 = 3
        dataTable2 = false
        vehicle(cmgCall2, flag7, dataTable2)
      end
      textValue10(flag8, stringHelper2)
    end
  else
    arg2 = CMG
    arg2 = arg2.deleteThreadOnTick
    textValue10 = textValue3
    arg2(textValue10)
  end
end
function rageUiCall3()
  local arg1, arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag, numberValue7, flag2
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.requestEntitySpawn
  textValue10 = "taco_box"
  arg2(textValue10)
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  textValue10 = CreateObject
  flag8 = cmgCall.boxHash
  stringHelper2 = arg2.x
  flag10 = arg2.y
  cmgCall6 = arg2.z
  numberValue16 = true
  cmgCall7 = true
  textValue12 = true
  -- Beginner: result below is objectEntity.
  textValue10 = textValue10(flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12)
  dataTable5.tacoBoxObj = textValue10
  textValue10 = CMG
  textValue10 = textValue10.loadAnimDict
  flag8 = "anim@heists@box_carry@"
  -- Beginner: Load a GTA animation dictionary before using it.
  textValue10(flag8)
  textValue10 = AttachEntityToEntity
  flag8 = dataTable5.tacoBoxObj
  stringHelper2 = arg1
  flag10 = GetPedBoneIndex
  cmgCall6 = arg1
  numberValue16 = 60309
  flag10 = flag10(cmgCall6, numberValue16)
  cmgCall6 = 0.025
  numberValue16 = 0.08
  cmgCall7 = 0.255
  textValue12 = -145.0
  stringHelper = 290.0
  numberValue3 = 0.0
  numberValue5 = true
  numberValue6 = true
  textValue = false
  flag = true
  numberValue7 = 1
  flag2 = true
  -- Beginner: Attach one entity to another entity.
  textValue10(flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag, numberValue7, flag2)
  dataTable5.carryingBox = true
  textValue10 = CMG
  textValue10 = textValue10.createThreadOnTick
  flag8 = textValue3
  stringHelper2 = "Taco Box Carry"
  -- Beginner: Run a helper every game frame while this script is active.
  textValue10(flag8, stringHelper2)
end
function rageUiCall4(arg1)
  local arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper
  if arg1 then
    arg2 = string
    arg2 = arg2.len
    textValue10 = string
    textValue10 = textValue10.gsub
    flag8 = arg1
    stringHelper2 = "~%a~"
    flag10 = ""
    textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper = textValue10(flag8, stringHelper2, flag10)
    arg2 = arg2(textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper)
    textValue10 = SetTextFont
    flag8 = 0
    textValue10(flag8)
    textValue10 = SetTextScale
    flag8 = 0.5
    stringHelper2 = 0.5
    textValue10(flag8, stringHelper2)
    textValue10 = SetTextCentre
    flag8 = true
    textValue10(flag8)
    textValue10 = SetTextColour
    flag8 = 255
    stringHelper2 = 255
    flag10 = 255
    cmgCall6 = 255
    textValue10(flag8, stringHelper2, flag10, cmgCall6)
    textValue10 = SetTextJustification
    flag8 = 0
    textValue10(flag8)
    textValue10 = BeginTextCommandDisplayText
    flag8 = "STRING"
    textValue10(flag8)
    textValue10 = AddTextComponentSubstringPlayerName
    flag8 = arg1
    textValue10(flag8)
    textValue10 = EndTextCommandDisplayText
    flag8 = 0.5
    stringHelper2 = 0.925
    textValue10(flag8, stringHelper2)
    textValue10 = DrawRect
    flag8 = 0.5
    stringHelper2 = 0.945
    flag10 = arg2 * 0.0095
    cmgCall6 = 0.045
    numberValue16 = 0
    cmgCall7 = 0
    textValue12 = 0
    stringHelper = 72
    textValue10(flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper)
  end
end
function textValue4()
  local arg1, arg2
  arg1 = rageUiCall4
  arg2 = "Drop the ~y~box~w~ off at the back of your ~y~taco truck~w~"
  arg1(arg2)
end
function textValue5()
  local arg1, arg2
  arg1 = DoesEntityExist
  arg2 = dataTable5.tacoBoxObj
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = DeleteEntity
    arg2 = dataTable5.tacoBoxObj
    -- Beginner: Delete a GTA entity.
    arg1(arg2)
    arg1 = ClearPedTasks
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg1(arg2)
  end
  arg1 = CMG
  arg1 = arg1.deleteThreadOnTick
  arg2 = textValue4
  arg1(arg2)
  dataTable5.carryingBox = false
end
function workValue()
  local arg1, arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag
  arg1 = CMG
  arg1 = arg1.getModelGender
  arg1 = arg1()
  if "male" == arg1 then
    arg1 = CMG
    arg1 = arg1.loadCustomisationPreset
    arg2 = "TacoSellerMale"
    arg1(arg2)
  else
    arg1 = CMG
    arg1 = arg1.loadCustomisationPreset
    arg2 = "TacoSellerFemale"
    arg1(arg2)
  end
  arg1 = tCMG
  arg1 = arg1.addMarker
  arg2 = cmgCall.boxPickup
  arg2 = arg2.x
  textValue10 = cmgCall.boxPickup
  textValue10 = textValue10.y
  flag8 = cmgCall.boxPickup
  flag8 = flag8.z
  stringHelper2 = 1.0
  flag10 = 1.0
  cmgCall6 = 1.0
  numberValue16 = 0
  cmgCall7 = 0
  textValue12 = 255
  stringHelper = 100
  numberValue3 = 25
  numberValue5 = 27
  numberValue6 = false
  textValue = false
  flag = true
  -- Beginner: Create a world marker.
  arg1(arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12, stringHelper, numberValue3, numberValue5, numberValue6, textValue, flag)
  function arg1()
    local vehicle, cmgCall2, flag7
    vehicle = CMG
    vehicle = vehicle.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    vehicle = vehicle()
    vehicle = not vehicle
    if 0 == vehicle then
      return
    end
    vehicle = dataTable5.carryingBox
    if vehicle then
      vehicle = drawNativeNotification
      cmgCall2 = "Press ~INPUT_CONTEXT~ to return the tacos."
      -- Beginner: Show a GTA-style notification/help prompt.
      vehicle(cmgCall2)
      vehicle = IsControlJustPressed
      cmgCall2 = 0
      flag7 = 38
      vehicle = vehicle(cmgCall2, flag7)
      if vehicle then
        vehicle = TriggerServerEvent
        cmgCall2 = "9ae8558098"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9ae8558098".
        vehicle(cmgCall2)
        vehicle = textValue5
        vehicle()
      end
    else
      vehicle = drawNativeNotification
      cmgCall2 = "Press ~INPUT_CONTEXT~ to grab a box of tacos."
      -- Beginner: Show a GTA-style notification/help prompt.
      vehicle(cmgCall2)
      vehicle = IsControlJustPressed
      cmgCall2 = 0
      flag7 = 38
      vehicle = vehicle(cmgCall2, flag7)
      if vehicle then
        vehicle = TriggerServerEvent
        cmgCall2 = "35bd0a4535"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "35bd0a4535".
        vehicle(cmgCall2)
        vehicle = rageUiCall3
        vehicle()
        vehicle = CMG
        vehicle = vehicle.createThreadOnTick
        cmgCall2 = textValue4
        flag7 = "Taco Stock Text"
        -- Beginner: Run a helper every game frame while this script is active.
        vehicle(cmgCall2, flag7)
      end
    end
  end
  arg2 = CMG
  arg2 = arg2.createArea
  textValue10 = "tacostockup"
  flag8 = cmgCall.boxPickup
  stringHelper2 = 1.5
  flag10 = 5.0
  cmgCall6 = nil
  numberValue16 = nil
  cmgCall7 = arg1
  textValue12 = nil
  -- Beginner: Create an interaction area around a world position.
  arg2(textValue10, flag8, stringHelper2, flag10, cmgCall6, numberValue16, cmgCall7, textValue12)
end
cmgCall3 = RegisterNetEvent
textValue6 = "9023541965"
-- Beginner: this function handles network event "9023541965".
function textValue7(arg1)
  local arg2
  flag3 = arg1
  if arg1 then
    arg2 = workValue
    arg2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9023541965".
cmgCall3(textValue6, textValue7)
cmgCall3 = CMG
-- Beginner: this function handles network event "9023541965".
function textValue6()
  local arg1, arg2
  arg1 = flag3
  return arg1
end
cmgCall3.isOnTacoDuty = textValue6
cmgCall3 = RegisterNetEvent
textValue6 = "d4d2503493"
-- Beginner: this function handles network event "d4d2503493".
function textValue7()
  local arg1, arg2
  arg1 = textValue5
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d4d2503493".
cmgCall3(textValue6, textValue7)
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
textValue6 = rageUiCall2
textValue7 = "Taco Truck Tick"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(textValue6, textValue7)
cmgCall3 = RegisterNetEvent
textValue6 = "2dc4a53756"
-- Beginner: this function handles network event "2dc4a53756".
function textValue7()
  local arg1, arg2
  arg1 = SendNUIMessage
  arg2 = {}
  arg2.transactionType = "playMoney"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2dc4a53756".
cmgCall3(textValue6, textValue7)
-- Beginner: this function handles network event "2dc4a53756".
function cmgCall3()
  local arg1, arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6
  arg1 = PlaySound
  arg2 = -1
  textValue10 = "CHECKPOINT_BEHIND"
  flag8 = "HUD_MINI_GAME_SOUNDSET"
  stringHelper2 = false
  flag10 = 0
  cmgCall6 = true
  arg1(arg2, textValue10, flag8, stringHelper2, flag10, cmgCall6)
  arg1 = CMG
  arg1 = arg1.initializeInstructionalJobScaleform
  arg2 = "Taco Seller"
  textValue10 = "Buy a Taco truck at Simeons!"
  arg1(arg2, textValue10)
  arg1 = SetNewWaypoint
  arg2 = -47.174137115479
  textValue10 = -1109.6021728516
  arg1(arg2, textValue10)
end
textValue6 = RegisterNetEvent
textValue7 = "e3a2b4bde0"
-- Beginner: this function handles network event "e3a2b4bde0".
function workValue2(arg1)
  local arg2
  if "Taco Seller" == arg1 then
    arg2 = cmgCall3
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    arg2()
  end
end
textValue6(textValue7, workValue2)
textValue6 = AddEventHandler
textValue7 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function workValue2(arg1)
  local arg2
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = textValue5
    arg2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
textValue6(textValue7, workValue2)