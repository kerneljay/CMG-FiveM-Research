--[[
    Beginner Guide: cl_chef.lua
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
    BEGINNER GUIDE — Chef
    =====================

    File: cmg/prod/client/business/cl_chef.lua
    Purpose: This file contains FiveM client/resource logic.

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
      * cfg/cfg_business

    Network/hash identifiers found: 7
      They are intentionally left unchanged because matching server code may use them.
      * bf3f551598
      * c6cd1a916a
      * 88f2f7f0ea
      * 76d0a73816
      * 2d5eb5712c
      * db9a057a2d
      * 6a31d41cc5

    Example player-facing text in this file:
      * Press ~INPUT_CONTEXT~ to wash your hands
      * Press ~INPUT_CONTEXT~ to pour a drink
      * Press ~INPUT_CONTEXT~ to grill the patties
      * Press ~INPUT_CONTEXT~ to add the sauces
      * Press ~INPUT_CONTEXT~ to view the order list

]]
local cmgCall, textValue, flag2, numberValue5, workValue29, workValue31, workValue32, workValue33, workValue34, workValue35, workValue, workValue2, workValue3, workValue4, workValue5, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue27, textValue3, textValue4, rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue = "cfg/cfg_business"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue)
textValue = nil
flag2 = false
numberValue5 = 0
workValue29 = nil
workValue31 = nil
workValue32 = nil
workValue33 = nil
workValue34 = nil
workValue35 = nil
workValue = nil
workValue2 = nil
workValue3 = nil
workValue4 = nil
workValue5 = nil
workValue7 = nil
workValue8 = nil
workValue9 = nil
workValue10 = nil
workValue11 = nil
workValue12 = nil
workValue13 = nil
workValue14 = nil
workValue15 = nil
workValue16 = nil
workValue17 = nil
workValue18 = nil
workValue19 = nil
workValue20 = nil
workValue21 = nil
function workValue22(arg1)
  local arg2, textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4
  arg2 = arg1.jobMetadata
  textValue = arg2
  arg2 = textValue.washPosition
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.washPosition
    textValue2 = textValue2.x
    workValue28 = textValue.washPosition
    workValue28 = workValue28.y
    workValue30 = textValue.washPosition
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue29 = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_wash"
    workValue28 = textValue.washPosition
    workValue28 = workValue28.xyz
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, arg3, dataTable, textValue8, textValue9, numberValue8
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to wash your hands"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      if arg12 then
        arg12 = CMG
        arg12 = arg12.disableSittingOnChairThisFrame
        arg12()
        arg12 = tCMG
        arg12 = arg12.setCanAnim
        arg22 = false
        arg12(arg22)
        arg12 = true
        flag2 = arg12
        arg12 = tCMG
        arg12 = arg12.playAnim
        arg22 = true
        arg3 = {}
        dataTable = {}
        textValue8 = "switch@michael@wash_face"
        textValue9 = "loop_michael"
        numberValue8 = 1
        dataTable[1] = textValue8
        dataTable[2] = textValue9
        dataTable[3] = numberValue8
        arg3[1] = dataTable
        dataTable = false
        arg12(arg22, arg3, dataTable)
        arg12 = Citizen
        arg12 = arg12.CreateThread
        function arg22()
          local serverEventCall, flag
          serverEventCall = Citizen
          serverEventCall = serverEventCall.Wait
          flag = 3800
          serverEventCall(flag)
          serverEventCall = TriggerServerEvent
          flag = "bf3f551598"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
          serverEventCall(flag)
          serverEventCall = false
          flag2 = serverEventCall
          serverEventCall = tCMG
          serverEventCall = serverEventCall.setCanAnim
          flag = true
          serverEventCall(flag)
          serverEventCall = 0
          numberValue5 = serverEventCall
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        arg12(arg22)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue31 = arg2
  end
  arg2 = textValue.drinksDispensor
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.drinksDispensor
    textValue2 = textValue2.x
    workValue28 = textValue.drinksDispensor
    workValue28 = workValue28.y
    workValue30 = textValue.drinksDispensor
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue32 = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_drinks"
    workValue28 = textValue.drinksDispensor
    workValue28 = workValue28.xyz
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, arg3, dataTable, textValue8
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = numberValue5
      if arg12 > 8 then
        arg12 = notify
        arg22 = "~r~Your hands are dirty. Please wash them."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to pour a drink"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      if arg12 then
        arg12 = CMG
        arg12 = arg12.disableSittingOnChairThisFrame
        arg12()
        arg12 = TriggerServerEvent
        arg22 = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        arg12(arg22)
        arg12 = RageUI
        arg12 = arg12.Visible
        arg22 = RMenu
        arg3 = arg22
        arg22 = arg22.Get
        dataTable = "business"
        textValue8 = "chef_drinks"
        -- Beginner: result below is menu.
        arg22 = arg22(arg3, dataTable, textValue8)
        arg3 = true
        arg12(arg22, arg3)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue33 = arg2
  end
  arg2 = textValue.frierPosition
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.frierPosition
    textValue2 = textValue2.x
    workValue28 = textValue.frierPosition
    workValue28 = workValue28.y
    workValue30 = textValue.frierPosition
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue34 = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_frier"
    workValue28 = textValue.frierPosition
    workValue28 = workValue28.xyz
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, arg3, dataTable, textValue8
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = numberValue5
      if arg12 > 8 then
        arg12 = notify
        arg22 = "~r~Your hands are dirty. Please wash them."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
      arg12 = drawNativeNotification
      arg22 = [[
Press ~INPUT_CONTEXT~ to fry small fries
Press ~INPUT_CONTEXT_SECONDARY~ to fry large fries]]
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = DisableControlAction
      arg22 = 0
      arg3 = 44
      dataTable = true
      arg12(arg22, arg3, dataTable)
      arg12 = DisableControlAction
      arg22 = 0
      arg3 = 52
      dataTable = true
      arg12(arg22, arg3, dataTable)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      arg22 = IsDisabledControlJustPressed
      arg3 = 0
      dataTable = 52
      arg22 = arg22(arg3, dataTable)
      if arg12 or arg22 then
        arg3 = CMG
        arg3 = arg3.disableSittingOnChairThisFrame
        arg3()
        arg3 = TriggerServerEvent
        dataTable = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        arg3(dataTable)
        arg3 = TriggerServerEvent
        dataTable = "c6cd1a916a"
        textValue8 = arg22
        arg3(dataTable, textValue8)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue35 = arg2
  end
  arg2 = textValue.grillPosition
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.grillPosition
    textValue2 = textValue2.x
    workValue28 = textValue.grillPosition
    workValue28 = workValue28.y
    workValue30 = textValue.grillPosition
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_grill"
    workValue28 = textValue.grillPosition
    workValue28 = workValue28.xyz
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, arg3
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = numberValue5
      if arg12 > 8 then
        arg12 = notify
        arg22 = "~r~Your hands are dirty. Please wash them."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to grill the patties"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      if arg12 then
        arg12 = CMG
        arg12 = arg12.disableSittingOnChairThisFrame
        arg12()
        arg12 = TriggerServerEvent
        arg22 = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        arg12(arg22)
        arg12 = TriggerServerEvent
        arg22 = "88f2f7f0ea"
        arg12(arg22)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue2 = arg2
  end
  arg2 = textValue.burgerPosition
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.burgerPosition
    textValue2 = textValue2.x
    workValue28 = textValue.burgerPosition
    workValue28 = workValue28.y
    workValue30 = textValue.burgerPosition
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue3 = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_burger"
    workValue28 = textValue.burgerPosition
    workValue28 = workValue28.xyz
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, arg3, dataTable, textValue8
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = numberValue5
      if arg12 > 8 then
        arg12 = notify
        arg22 = "~r~Your hands are dirty. Please wash them."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
      arg12 = drawNativeNotification
      arg22 = [[
Press ~INPUT_CONTEXT~ to add salad to small burger
Press ~INPUT_CONTEXT_SECONDARY~ to add salad to large burger]]
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = DisableControlAction
      arg22 = 0
      arg3 = 44
      dataTable = true
      arg12(arg22, arg3, dataTable)
      arg12 = DisableControlAction
      arg22 = 0
      arg3 = 52
      dataTable = true
      arg12(arg22, arg3, dataTable)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      arg22 = IsDisabledControlJustPressed
      arg3 = 0
      dataTable = 52
      arg22 = arg22(arg3, dataTable)
      if arg12 or arg22 then
        arg3 = CMG
        arg3 = arg3.disableSittingOnChairThisFrame
        arg3()
        arg3 = TriggerServerEvent
        dataTable = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        arg3(dataTable)
        arg3 = TriggerServerEvent
        dataTable = "76d0a73816"
        textValue8 = arg22
        arg3(dataTable, textValue8)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue4 = arg2
  end
  arg2 = textValue.saucesPosition
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.saucesPosition
    textValue2 = textValue2.x
    workValue28 = textValue.saucesPosition
    workValue28 = workValue28.y
    workValue30 = textValue.saucesPosition
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue5 = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_sauces"
    workValue28 = textValue.saucesPosition
    workValue28 = workValue28.xyz
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, arg3
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = numberValue5
      if arg12 > 8 then
        arg12 = notify
        arg22 = "~r~Your hands are dirty. Please wash them."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to add the sauces"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      if arg12 then
        arg12 = CMG
        arg12 = arg12.disableSittingOnChairThisFrame
        arg12()
        arg12 = TriggerServerEvent
        arg22 = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        arg12(arg22)
        arg12 = TriggerServerEvent
        arg22 = "2d5eb5712c"
        arg12(arg22)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue7 = arg2
  end
  arg2 = textValue.ordersPosition
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.ordersPosition
    textValue2 = textValue2.x
    workValue28 = textValue.ordersPosition
    workValue28 = workValue28.y
    workValue30 = textValue.ordersPosition
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue8 = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_orders"
    workValue28 = textValue.ordersPosition
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
      arg12 = RageUI
      arg12 = arg12.CloseAll
      arg12()
    end
    function numberValue10()
      local arg12, arg22, arg3, dataTable, textValue8
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = numberValue5
      if arg12 > 8 then
        arg12 = notify
        arg22 = "~r~Your hands are dirty. Please wash them."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to view the order list"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      if arg12 then
        arg12 = CMG
        arg12 = arg12.disableSittingOnChairThisFrame
        arg12()
        arg12 = RageUI
        arg12 = arg12.Visible
        arg22 = RMenu
        arg3 = arg22
        arg22 = arg22.Get
        dataTable = "business"
        textValue8 = "chef_vieworders"
        -- Beginner: result below is menu.
        arg22 = arg22(arg3, dataTable, textValue8)
        arg3 = true
        arg12(arg22, arg3)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue9 = arg2
  end
  arg2 = textValue.hotDrinksDispensor
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.hotDrinksDispensor
    textValue2 = textValue2.x
    workValue28 = textValue.hotDrinksDispensor
    workValue28 = workValue28.y
    workValue30 = textValue.hotDrinksDispensor
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue10 = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_hotdrinks"
    workValue28 = textValue.hotDrinksDispensor
    workValue28 = workValue28.xyz
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, arg3, dataTable, textValue8
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = numberValue5
      if arg12 > 8 then
        arg12 = notify
        arg22 = "~r~Your hands are dirty. Please wash them."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to pour a hot drink"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      if arg12 then
        arg12 = CMG
        arg12 = arg12.disableSittingOnChairThisFrame
        arg12()
        arg12 = TriggerServerEvent
        arg22 = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        arg12(arg22)
        arg12 = RageUI
        arg12 = arg12.Visible
        arg22 = RMenu
        arg3 = arg22
        arg22 = arg22.Get
        dataTable = "business"
        textValue8 = "chef_hotdrinks"
        -- Beginner: result below is menu.
        arg22 = arg22(arg3, dataTable, textValue8)
        arg3 = true
        arg12(arg22, arg3)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue11 = arg2
  end
  arg2 = textValue.milkshakeMachine
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.milkshakeMachine
    textValue2 = textValue2.x
    workValue28 = textValue.milkshakeMachine
    workValue28 = workValue28.y
    workValue30 = textValue.milkshakeMachine
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue12 = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_milkshakes"
    workValue28 = textValue.milkshakeMachine
    workValue28 = workValue28.xyz
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, arg3, dataTable, textValue8
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = numberValue5
      if arg12 > 8 then
        arg12 = notify
        arg22 = "~r~Your hands are dirty. Please wash them."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to mix a milkshake"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      if arg12 then
        arg12 = CMG
        arg12 = arg12.disableSittingOnChairThisFrame
        arg12()
        arg12 = TriggerServerEvent
        arg22 = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        arg12(arg22)
        arg12 = RageUI
        arg12 = arg12.Visible
        arg22 = RMenu
        arg3 = arg22
        arg22 = arg22.Get
        dataTable = "business"
        textValue8 = "chef_milkshakes"
        -- Beginner: result below is menu.
        arg22 = arg22(arg3, dataTable, textValue8)
        arg3 = true
        arg12(arg22, arg3)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue13 = arg2
  end
  arg2 = textValue.icecreamMachine
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.icecreamMachine
    textValue2 = textValue2.x
    workValue28 = textValue.icecreamMachine
    workValue28 = workValue28.y
    workValue30 = textValue.icecreamMachine
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue14 = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_icecream"
    workValue28 = textValue.icecreamMachine
    workValue28 = workValue28.xyz
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, arg3, dataTable, textValue8
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = numberValue5
      if arg12 > 8 then
        arg12 = notify
        arg22 = "~r~Your hands are dirty. Please wash them."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to create icecream"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      if arg12 then
        arg12 = CMG
        arg12 = arg12.disableSittingOnChairThisFrame
        arg12()
        arg12 = TriggerServerEvent
        arg22 = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        arg12(arg22)
        arg12 = RageUI
        arg12 = arg12.Visible
        arg22 = RMenu
        arg3 = arg22
        arg22 = arg22.Get
        dataTable = "business"
        textValue8 = "chef_icecreams"
        -- Beginner: result below is menu.
        arg22 = arg22(arg3, dataTable, textValue8)
        arg3 = true
        arg12(arg22, arg3)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue15 = arg2
  end
  arg2 = textValue.cupcakeMachine
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.cupcakeMachine
    textValue2 = textValue2.x
    workValue28 = textValue.cupcakeMachine
    workValue28 = workValue28.y
    workValue30 = textValue.cupcakeMachine
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue16 = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_cupcakes"
    workValue28 = textValue.cupcakeMachine
    workValue28 = workValue28.xyz
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, arg3, dataTable, textValue8
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = numberValue5
      if arg12 > 8 then
        arg12 = notify
        arg22 = "~r~Your hands are dirty. Please wash them."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to create cupcakes"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      if arg12 then
        arg12 = CMG
        arg12 = arg12.disableSittingOnChairThisFrame
        arg12()
        arg12 = TriggerServerEvent
        arg22 = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        arg12(arg22)
        arg12 = RageUI
        arg12 = arg12.Visible
        arg22 = RMenu
        arg3 = arg22
        arg22 = arg22.Get
        dataTable = "business"
        textValue8 = "chef_cupcakes"
        -- Beginner: result below is menu.
        arg22 = arg22(arg3, dataTable, textValue8)
        arg3 = true
        arg12(arg22, arg3)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue17 = arg2
  end
  arg2 = textValue.riceMachine
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.riceMachine
    textValue2 = textValue2.x
    workValue28 = textValue.riceMachine
    workValue28 = workValue28.y
    workValue30 = textValue.riceMachine
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue18 = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_rice"
    workValue28 = textValue.riceMachine
    workValue28 = workValue28.xyz
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, arg3, dataTable, textValue8
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = numberValue5
      if arg12 > 8 then
        arg12 = notify
        arg22 = "~r~Your hands are dirty. Please wash them."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to fry rice"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      if arg12 then
        arg12 = CMG
        arg12 = arg12.disableSittingOnChairThisFrame
        arg12()
        arg12 = TriggerServerEvent
        arg22 = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        arg12(arg22)
        arg12 = RageUI
        arg12 = arg12.Visible
        arg22 = RMenu
        arg3 = arg22
        arg22 = arg22.Get
        dataTable = "business"
        textValue8 = "chef_rice"
        -- Beginner: result below is menu.
        arg22 = arg22(arg3, dataTable, textValue8)
        arg3 = true
        arg12(arg22, arg3)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue19 = arg2
  end
  arg2 = textValue.chineseMachine
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    textValue2 = textValue.chineseMachine
    textValue2 = textValue2.x
    workValue28 = textValue.chineseMachine
    workValue28 = workValue28.y
    workValue30 = textValue.chineseMachine
    workValue30 = workValue30.z
    workValue30 = workValue30 - 1.0
    numberValue6 = 0.4
    numberValue7 = 0.4
    numberValue9 = 0.4
    numberValue10 = 255
    dataTable2 = 255
    numberValue = 0
    numberValue2 = 150
    numberValue3 = 25.0
    numberValue4 = 1
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4)
    workValue20 = arg2
    arg2 = CMG
    arg2 = arg2.createArea
    textValue2 = "business_chinese"
    workValue28 = textValue.chineseMachine
    workValue28 = workValue28.xyz
    workValue30 = 1.5
    numberValue6 = 3.0
    function numberValue7()
      local arg12, arg22
    end
    function numberValue9()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, arg3, dataTable, textValue8
      arg12 = flag2
      if arg12 then
        return
      end
      arg12 = numberValue5
      if arg12 > 8 then
        arg12 = notify
        arg22 = "~r~Your hands are dirty. Please wash them."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to cook food"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg3 = 51
      arg12 = arg12(arg22, arg3)
      if arg12 then
        arg12 = CMG
        arg12 = arg12.disableSittingOnChairThisFrame
        arg12()
        arg12 = TriggerServerEvent
        arg22 = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        arg12(arg22)
        arg12 = RageUI
        arg12 = arg12.Visible
        arg22 = RMenu
        arg3 = arg22
        arg22 = arg22.Get
        dataTable = "business"
        textValue8 = "chef_chinese"
        -- Beginner: result below is menu.
        arg22 = arg22(arg3, dataTable, textValue8)
        arg3 = true
        arg12(arg22, arg3)
      end
    end
    dataTable2 = {}
    arg2 = arg2(textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2)
    workValue21 = arg2
  end
end
function workValue23()
  local arg1, arg2
  arg1 = workValue29
  if arg1 then
    arg1 = workValue31
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue29
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue31
      arg1(arg2)
    end
  end
  arg1 = workValue32
  if arg1 then
    arg1 = workValue33
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue32
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue33
      arg1(arg2)
    end
  end
  arg1 = workValue34
  if arg1 then
    arg1 = workValue35
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue34
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue35
      arg1(arg2)
    end
  end
  arg1 = workValue
  if arg1 then
    arg1 = workValue2
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue2
      arg1(arg2)
    end
  end
  arg1 = workValue3
  if arg1 then
    arg1 = workValue4
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue3
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue4
      arg1(arg2)
    end
  end
  arg1 = workValue5
  if arg1 then
    arg1 = workValue7
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue5
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue7
      arg1(arg2)
    end
  end
  arg1 = workValue8
  if arg1 then
    arg1 = workValue9
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue8
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue9
      arg1(arg2)
    end
  end
  arg1 = workValue10
  if arg1 then
    arg1 = workValue11
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue10
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue11
      arg1(arg2)
    end
  end
  arg1 = workValue12
  if arg1 then
    arg1 = workValue13
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue12
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue13
      arg1(arg2)
    end
  end
  arg1 = workValue14
  if arg1 then
    arg1 = workValue15
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue14
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue15
      arg1(arg2)
    end
  end
  arg1 = workValue16
  if arg1 then
    arg1 = workValue17
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue16
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue17
      arg1(arg2)
    end
  end
  arg1 = workValue18
  if arg1 then
    arg1 = workValue19
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue18
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue19
      arg1(arg2)
    end
  end
  arg1 = workValue20
  if arg1 then
    arg1 = workValue21
    if arg1 then
      arg1 = tCMG
      arg1 = arg1.removeMarker
      arg2 = workValue20
      arg1(arg2)
      arg1 = tCMG
      arg1 = arg1.removeArea
      arg2 = workValue21
      arg1(arg2)
    end
  end
  arg1 = nil
  workValue29 = arg1
  arg1 = nil
  workValue31 = arg1
  arg1 = nil
  workValue32 = arg1
  arg1 = nil
  workValue33 = arg1
  arg1 = nil
  workValue34 = arg1
  arg1 = nil
  workValue35 = arg1
  arg1 = nil
  workValue = arg1
  arg1 = nil
  workValue2 = arg1
  arg1 = nil
  workValue3 = arg1
  arg1 = nil
  workValue4 = arg1
  arg1 = nil
  workValue5 = arg1
  arg1 = nil
  workValue7 = arg1
  arg1 = nil
  workValue10 = arg1
  arg1 = nil
  workValue11 = arg1
  arg1 = nil
  workValue12 = arg1
  arg1 = nil
  workValue13 = arg1
  arg1 = nil
  workValue14 = arg1
  arg1 = nil
  workValue15 = arg1
  arg1 = nil
  workValue16 = arg1
  arg1 = nil
  workValue17 = arg1
  arg1 = false
  flag2 = arg1
  arg1 = 0
  numberValue5 = arg1
  arg1 = nil
  textValue = arg1
end
function workValue24()
  local arg1, arg2
end
function workValue25()
  local arg1, arg2
end
function workValue26()
  local arg1, arg2
end
workValue27 = RMenu
workValue27 = workValue27.Add
textValue3 = "business"
textValue4 = "chef_drinks"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue5 = ""
cmgCall2 = "~b~CMG Business"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue6 = "cmg_marketui"
textValue7 = "cmg_marketui"
rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7 = rageUiCall(textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27(textValue3, textValue4, rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27 = RMenu
workValue27 = workValue27.Add
textValue3 = "business"
textValue4 = "chef_hotdrinks"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue5 = ""
cmgCall2 = "~b~CMG Business"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue6 = "cmg_marketui"
textValue7 = "cmg_marketui"
rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7 = rageUiCall(textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27(textValue3, textValue4, rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27 = RMenu
workValue27 = workValue27.Add
textValue3 = "business"
textValue4 = "chef_milkshakes"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue5 = ""
cmgCall2 = "~b~CMG Business"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue6 = "cmg_marketui"
textValue7 = "cmg_marketui"
rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7 = rageUiCall(textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27(textValue3, textValue4, rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27 = RMenu
workValue27 = workValue27.Add
textValue3 = "business"
textValue4 = "chef_icecreams"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue5 = ""
cmgCall2 = "~b~CMG Business"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue6 = "cmg_marketui"
textValue7 = "cmg_marketui"
rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7 = rageUiCall(textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27(textValue3, textValue4, rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27 = RMenu
workValue27 = workValue27.Add
textValue3 = "business"
textValue4 = "chef_cupcakes"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue5 = ""
cmgCall2 = "~b~CMG Business"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue6 = "cmg_marketui"
textValue7 = "cmg_marketui"
rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7 = rageUiCall(textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27(textValue3, textValue4, rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27 = RMenu
workValue27 = workValue27.Add
textValue3 = "business"
textValue4 = "chef_rice"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue5 = ""
cmgCall2 = "~b~CMG Business"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue6 = "cmg_marketui"
textValue7 = "cmg_marketui"
rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7 = rageUiCall(textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27(textValue3, textValue4, rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27 = RMenu
workValue27 = workValue27.Add
textValue3 = "business"
textValue4 = "chef_chinese"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue5 = ""
cmgCall2 = "~b~CMG Business"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue6 = "cmg_marketui"
textValue7 = "cmg_marketui"
rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7 = rageUiCall(textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
workValue27(textValue3, textValue4, rageUiCall, textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6, textValue7)
function workValue27(arg1, arg2)
  local textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4, workValue6
  textValue2 = "Requirements: "
  workValue28 = pairs
  workValue30 = arg2.items
  workValue28, workValue30, numberValue6, numberValue7 = workValue28(workValue30)
  for numberValue9, numberValue10 in workValue28, workValue30, numberValue6, numberValue7 do
    dataTable2 = textValue2
    numberValue = "\n"
    numberValue2 = tostring
    numberValue3 = numberValue10.amount
    numberValue2 = numberValue2(numberValue3)
    numberValue3 = "x "
    numberValue4 = arg1.locationInfo
    numberValue4 = numberValue4.items
    workValue6 = numberValue10.id
    numberValue4 = numberValue4[workValue6]
    numberValue4 = numberValue4[1]
    dataTable2 = dataTable2 .. numberValue .. numberValue2 .. numberValue3 .. numberValue4
    textValue2 = dataTable2
  end
  return textValue2
end
function textValue3(arg1, arg2)
  local textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9, numberValue10, dataTable2, numberValue, numberValue2, numberValue3, numberValue4, workValue6
  textValue2 = pairs
  workValue28 = arg2
  textValue2, workValue28, workValue30, numberValue6 = textValue2(workValue28)
  for numberValue7, numberValue9 in textValue2, workValue28, workValue30, numberValue6 do
    numberValue10 = arg1.locationInfo
    numberValue10 = numberValue10.items
    numberValue10 = numberValue10[numberValue7]
    if numberValue10 then
      dataTable2 = RageUI
      dataTable2 = dataTable2.ButtonWithStyle
      numberValue = numberValue10[1]
      numberValue2 = workValue27
      numberValue3 = arg1
      numberValue4 = numberValue9
      numberValue2 = numberValue2(numberValue3, numberValue4)
      numberValue3 = {}
      numberValue3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      numberValue4 = true
      function workValue6(arg12, arg22, arg3)
        local dataTable, textValue8, textValue9
        if arg3 then
          dataTable = TriggerServerEvent
          textValue8 = "db9a057a2d"
          textValue9 = numberValue7
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "db9a057a2d".
          dataTable(textValue8, textValue9)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      dataTable2(numberValue, numberValue2, numberValue3, numberValue4, workValue6)
    end
  end
end
textValue4 = RageUI
textValue4 = textValue4.CreateWhile
rageUiCall = 1.0
textValue5 = RMenu
cmgCall2 = textValue5
textValue5 = textValue5.Get
rageUiCall2 = "business"
rageUiCall3 = "chef_drinks"
-- Beginner: result below is menu.
textValue5 = textValue5(cmgCall2, rageUiCall2, rageUiCall3)
cmgCall2 = nil
function rageUiCall2()
  local arg1, arg2, textValue2, workValue28, workValue30, numberValue6
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue2 = arg2
  arg2 = arg2.Get
  workValue28 = "business"
  workValue30 = "chef_drinks"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue2, workValue28, workValue30)
  textValue2 = true
  workValue28 = false
  workValue30 = true
  function numberValue6()
    local arg12, arg22, arg3, dataTable
    arg12 = CMG
    arg12 = arg12.getUserBusinessData
    arg22 = "chef"
    arg12 = arg12(arg22)
    if not arg12 then
      arg22 = RageUI
      arg22 = arg22.CloseAll
      arg22()
      return
    end
    arg22 = textValue3
    arg3 = arg12
    dataTable = cmgCall.drinksMachine
    arg22(arg3, dataTable)
  end
  arg1(arg2, textValue2, workValue28, workValue30, numberValue6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue2 = arg2
  arg2 = arg2.Get
  workValue28 = "business"
  workValue30 = "chef_hotdrinks"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue2, workValue28, workValue30)
  textValue2 = true
  workValue28 = false
  workValue30 = true
  function numberValue6()
    local arg12, arg22, arg3, dataTable
    arg12 = CMG
    arg12 = arg12.getUserBusinessData
    arg22 = "chef"
    arg12 = arg12(arg22)
    if not arg12 then
      arg22 = RageUI
      arg22 = arg22.CloseAll
      arg22()
      return
    end
    arg22 = textValue3
    arg3 = arg12
    dataTable = cmgCall.hotDrinksMachine
    arg22(arg3, dataTable)
  end
  arg1(arg2, textValue2, workValue28, workValue30, numberValue6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue2 = arg2
  arg2 = arg2.Get
  workValue28 = "business"
  workValue30 = "chef_milkshakes"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue2, workValue28, workValue30)
  textValue2 = true
  workValue28 = false
  workValue30 = true
  function numberValue6()
    local arg12, arg22, arg3, dataTable
    arg12 = CMG
    arg12 = arg12.getUserBusinessData
    arg22 = "chef"
    arg12 = arg12(arg22)
    if not arg12 then
      arg22 = RageUI
      arg22 = arg22.CloseAll
      arg22()
      return
    end
    arg22 = textValue3
    arg3 = arg12
    dataTable = cmgCall.milkshakeMachine
    arg22(arg3, dataTable)
  end
  arg1(arg2, textValue2, workValue28, workValue30, numberValue6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue2 = arg2
  arg2 = arg2.Get
  workValue28 = "business"
  workValue30 = "chef_icecreams"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue2, workValue28, workValue30)
  textValue2 = true
  workValue28 = false
  workValue30 = true
  function numberValue6()
    local arg12, arg22, arg3, dataTable
    arg12 = CMG
    arg12 = arg12.getUserBusinessData
    arg22 = "chef"
    arg12 = arg12(arg22)
    if not arg12 then
      arg22 = RageUI
      arg22 = arg22.CloseAll
      arg22()
      return
    end
    arg22 = textValue3
    arg3 = arg12
    dataTable = cmgCall.icecreamMachine
    arg22(arg3, dataTable)
  end
  arg1(arg2, textValue2, workValue28, workValue30, numberValue6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue2 = arg2
  arg2 = arg2.Get
  workValue28 = "business"
  workValue30 = "chef_cupcakes"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue2, workValue28, workValue30)
  textValue2 = true
  workValue28 = false
  workValue30 = true
  function numberValue6()
    local arg12, arg22, arg3, dataTable
    arg12 = CMG
    arg12 = arg12.getUserBusinessData
    arg22 = "chef"
    arg12 = arg12(arg22)
    if not arg12 then
      arg22 = RageUI
      arg22 = arg22.CloseAll
      arg22()
      return
    end
    arg22 = textValue3
    arg3 = arg12
    dataTable = cmgCall.cupcakesMachine
    arg22(arg3, dataTable)
  end
  arg1(arg2, textValue2, workValue28, workValue30, numberValue6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue2 = arg2
  arg2 = arg2.Get
  workValue28 = "business"
  workValue30 = "chef_rice"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue2, workValue28, workValue30)
  textValue2 = true
  workValue28 = false
  workValue30 = true
  function numberValue6()
    local arg12, arg22, arg3, dataTable
    arg12 = CMG
    arg12 = arg12.getUserBusinessData
    arg22 = "chef"
    arg12 = arg12(arg22)
    if not arg12 then
      arg22 = RageUI
      arg22 = arg22.CloseAll
      arg22()
      return
    end
    arg22 = textValue3
    arg3 = arg12
    dataTable = cmgCall.riceStation
    arg22(arg3, dataTable)
  end
  arg1(arg2, textValue2, workValue28, workValue30, numberValue6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue2 = arg2
  arg2 = arg2.Get
  workValue28 = "business"
  workValue30 = "chef_chinese"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue2, workValue28, workValue30)
  textValue2 = true
  workValue28 = false
  workValue30 = true
  function numberValue6()
    local arg12, arg22, arg3, dataTable
    arg12 = CMG
    arg12 = arg12.getUserBusinessData
    arg22 = "chef"
    arg12 = arg12(arg22)
    if not arg12 then
      arg22 = RageUI
      arg22 = arg22.CloseAll
      arg22()
      return
    end
    arg22 = textValue3
    arg3 = arg12
    dataTable = cmgCall.chineseCookingStation
    arg22(arg3, dataTable)
  end
  arg1(arg2, textValue2, workValue28, workValue30, numberValue6)
end
textValue4(rageUiCall, textValue5, cmgCall2, rageUiCall2)
textValue4 = RegisterNetEvent
rageUiCall = "6a31d41cc5"
-- Beginner: this function handles network event "6a31d41cc5".
function textValue5()
  local arg1, arg2, textValue2, workValue28, workValue30, numberValue6, numberValue7, numberValue9
  arg1 = tCMG
  arg1 = arg1.setCanAnim
  arg2 = true
  arg1(arg2)
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = FreezeEntityPosition
  textValue2 = arg1
  workValue28 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(textValue2, workValue28)
  arg2 = tCMG
  arg2 = arg2.playAnim
  textValue2 = true
  workValue28 = {}
  workValue30 = {}
  numberValue6 = "anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal"
  numberValue7 = "pour_one"
  numberValue9 = 1
  workValue30[1] = numberValue6
  workValue30[2] = numberValue7
  workValue30[3] = numberValue9
  workValue28[1] = workValue30
  workValue30 = false
  arg2(textValue2, workValue28, workValue30)
  arg2 = FreezeEntityPosition
  textValue2 = arg1
  workValue28 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(textValue2, workValue28)
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  textValue2 = false
  arg2(textValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6a31d41cc5".
textValue4(rageUiCall, textValue5)
textValue4 = RegisterNetEvent
rageUiCall = "c6cd1a916a"
-- Beginner: this function handles network event "c6cd1a916a".
function textValue5()
  local arg1, arg2
end
textValue4(rageUiCall, textValue5)
textValue4 = RegisterNetEvent
rageUiCall = "88f2f7f0ea"
-- Beginner: this function handles network event "88f2f7f0ea".
function textValue5()
  local arg1, arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "88f2f7f0ea".
textValue4(rageUiCall, textValue5)
textValue4 = RegisterNetEvent
rageUiCall = "76d0a73816"
-- Beginner: this function handles network event "76d0a73816".
function textValue5()
  local arg1, arg2
end
textValue4(rageUiCall, textValue5)
textValue4 = RegisterNetEvent
rageUiCall = "2d5eb5712c"
-- Beginner: this function handles network event "2d5eb5712c".
function textValue5()
  local arg1, arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2d5eb5712c".
textValue4(rageUiCall, textValue5)
textValue4 = {}
rageUiCall = {}
rageUiCall.init = workValue24
rageUiCall.tick = workValue25
rageUiCall.finish = workValue26
rageUiCall.next = "main"
textValue4.main = rageUiCall
rageUiCall = CMG
rageUiCall = rageUiCall.registerBusinessJob
textValue5 = "chef"
cmgCall2 = workValue22
rageUiCall2 = "main"
rageUiCall3 = textValue4
textValue6 = workValue23
rageUiCall(textValue5, cmgCall2, rageUiCall2, rageUiCall3, textValue6)
rageUiCall = Citizen
rageUiCall = rageUiCall.Wait
textValue5 = 0
rageUiCall(textValue5)
rageUiCall = CMG
rageUiCall = rageUiCall.addGenericBusinessOrderView
textValue5 = "chef"
cmgCall2 = nil
rageUiCall(textValue5, cmgCall2)