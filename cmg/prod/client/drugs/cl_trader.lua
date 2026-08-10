--[[
    Beginner Guide: cl_trader.lua
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
    BEGINNER GUIDE — Trader
    =======================

    File: cmg/prod/client/drugs/cl_trader.lua
    Purpose: This file contains drug gameplay.

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
      * cfg/cfg_trader

    Network/hash identifiers found: 10
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * ~r~Exit your vehicle.
      * Press [E] to open seller

]]
local workValue, cmgCall2, textValue5, workValue4, dataTable3, eventRegistration, textValue8, textValue9, textValue10, rageUiCall3, cmgCall, textValue, rageUiCall, rageUiCall2, workValue2, workValue3, numberValue3, numberValue5, numberValue7, numberValue9
workValue = nil
cmgCall2 = CMG
cmgCall2 = cmgCall2.loadModule
textValue5 = "cfg/cfg_trader"
-- Beginner: result below is config.
cmgCall2 = cmgCall2(textValue5)
textValue5 = nil
workValue4 = nil
globalHeroinCommissionPercent = 0
globalLargeArmsCommission = 0
globalLSDNorthCommissionPercent = 0
globalLSDSouthCommissionPercent = 0
globalBlackMarketCommision = 0
dataTable3 = {}
dataTable3.Heroin = 0
dataTable3.LSDNorth = 0
dataTable3.LSDSouth = 0
dataTable3.Gold = 0
dataTable3.Diamond = 0
eventRegistration = RegisterNetEvent
textValue8 = "5afc35de9e"
-- Beginner: this function handles network event "5afc35de9e".
function textValue9(arg1, arg2, arg3, arg4, arg5)
  globalHeroinCommissionPercent = arg1
  globalLargeArmsCommission = arg2
  globalLSDNorthCommissionPercent = arg3
  globalLSDSouthCommissionPercent = arg4
  globalBlackMarketCommision = arg5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5afc35de9e".
eventRegistration(textValue8, textValue9)
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread
-- Beginner: this function handles network event "5afc35de9e".
function textValue8()
  local arg1, arg2, arg3, arg4, arg5, numberValue10, cmgCall4, position, position2, vector3Builder, flag, textValue2, textValue3, numberValue, flag2, numberValue2, numberValue4, numberValue6, numberValue8, dataTable, flag3
  arg1 = pairs
  arg2 = cmgCall2.trader
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, numberValue10 in arg1, arg2, arg3, arg4 do
    cmgCall4 = tCMG
    cmgCall4 = cmgCall4.addMarker
    position = numberValue10.position
    position = position.x
    position2 = numberValue10.position
    position2 = position2.y
    vector3Builder = numberValue10.position
    vector3Builder = vector3Builder.z
    flag = 0.7
    textValue2 = 0.7
    textValue3 = 0.5
    numberValue = numberValue10.colour
    numberValue = numberValue.r
    flag2 = numberValue10.colour
    flag2 = flag2.g
    numberValue2 = numberValue10.colour
    numberValue2 = numberValue2.b
    numberValue4 = 125
    numberValue6 = 50
    numberValue8 = 29
    dataTable = true
    flag3 = true
    -- Beginner: Create a world marker.
    cmgCall4(position, position2, vector3Builder, flag, textValue2, textValue3, numberValue, flag2, numberValue2, numberValue4, numberValue6, numberValue8, dataTable, flag3)
    cmgCall4 = CMG
    cmgCall4 = cmgCall4.createDynamicPed
    position = numberValue10.dealerModel
    position2 = numberValue10.dealerPos
    vector3Builder = vector3
    flag = 0.0
    textValue2 = 0.0
    textValue3 = -1.0
    vector3Builder = vector3Builder(flag, textValue2, textValue3)
    position2 = position2 + vector3Builder
    vector3Builder = numberValue10.dealerHeading
    flag = true
    textValue2 = "mini@strip_club@idles@bouncer@base"
    textValue3 = "base"
    numberValue = 100
    flag2 = false
    function numberValue2()
      local arg12, textValue4
    end
    cmgCall4(position, position2, vector3Builder, flag, textValue2, textValue3, numberValue, flag2, numberValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(textValue8)
function eventRegistration(arg1)
  local arg2, arg3, arg4, arg5, numberValue10, cmgCall4, position, position2, vector3Builder, flag, textValue2, textValue3, numberValue
  arg2 = textValue5
  if not arg2 then
    return
  end
  arg2 = textValue5.name
  if arg2 ~= arg1 then
    return
  end
  arg2 = tostring
  arg3 = textValue5.name
  if not arg3 then
    arg3 = arg1
  end
  arg2 = arg2(arg3)
  arg3 = tonumber
  arg4 = textValue5.nominal
  if not arg4 then
    arg4 = 0
  end
  arg3 = arg3(arg4)
  arg4 = tonumber
  arg5 = textValue5.grindModifier
  if not arg5 then
    arg5 = 1.0
  end
  arg4 = arg4(arg5)
  arg5 = math
  arg5 = arg5.floor
  numberValue10 = textValue5.static
  if not numberValue10 then
    numberValue10 = 0
  end
  arg5 = arg5(numberValue10)
  numberValue10 = tonumber
  cmgCall4 = textValue5.commissionPercent
  if not cmgCall4 then
    cmgCall4 = 0
  end
  numberValue10 = numberValue10(cmgCall4)
  cmgCall4 = tonumber
  position = textValue5.commissionAmount
  if not position then
    position = 0
  end
  cmgCall4 = cmgCall4(position)
  position = math
  position = position.floor
  position2 = textValue5.final
  if not position2 then
    position2 = 0
  end
  position = position(position2)
  position2 = RageUI
  position2 = position2.Separator
  vector3Builder = "~b~%s Price Breakdown~s~"
  flag = vector3Builder
  vector3Builder = vector3Builder.format
  textValue2 = arg2
  vector3Builder, flag, textValue2, textValue3, numberValue = vector3Builder(flag, textValue2)
  position2(vector3Builder, flag, textValue2, textValue3, numberValue)
  position2 = RageUI
  position2 = position2.Separator
  vector3Builder = "Base Price: \194\163%s"
  flag = vector3Builder
  vector3Builder = vector3Builder.format
  textValue2 = getMoneyStringFormatted
  textValue3 = arg3
  textValue2, textValue3, numberValue = textValue2(textValue3)
  vector3Builder, flag, textValue2, textValue3, numberValue = vector3Builder(flag, textValue2, textValue3, numberValue)
  position2(vector3Builder, flag, textValue2, textValue3, numberValue)
  position2 = RageUI
  position2 = position2.Separator
  vector3Builder = "Grind Boost: x%.2f"
  flag = vector3Builder
  vector3Builder = vector3Builder.format
  textValue2 = arg4
  vector3Builder, flag, textValue2, textValue3, numberValue = vector3Builder(flag, textValue2)
  position2(vector3Builder, flag, textValue2, textValue3, numberValue)
  position2 = RageUI
  position2 = position2.Separator
  vector3Builder = "Static: \194\163%s"
  flag = vector3Builder
  vector3Builder = vector3Builder.format
  textValue2 = getMoneyStringFormatted
  textValue3 = arg5
  textValue2, textValue3, numberValue = textValue2(textValue3)
  vector3Builder, flag, textValue2, textValue3, numberValue = vector3Builder(flag, textValue2, textValue3, numberValue)
  position2(vector3Builder, flag, textValue2, textValue3, numberValue)
  if numberValue10 > 0 then
    position2 = RageUI
    position2 = position2.Separator
    vector3Builder = "Commission: %d%% ( \194\163%s )"
    flag = vector3Builder
    vector3Builder = vector3Builder.format
    textValue2 = numberValue10
    textValue3 = getMoneyStringFormatted
    numberValue = cmgCall4
    textValue3, numberValue = textValue3(numberValue)
    vector3Builder, flag, textValue2, textValue3, numberValue = vector3Builder(flag, textValue2, textValue3, numberValue)
    position2(vector3Builder, flag, textValue2, textValue3, numberValue)
  end
  position2 = RageUI
  position2 = position2.Separator
  vector3Builder = "Final Sell Price: ~g~\194\163%s"
  flag = vector3Builder
  vector3Builder = vector3Builder.format
  textValue2 = getMoneyStringFormatted
  textValue3 = position
  textValue2, textValue3, numberValue = textValue2(textValue3)
  vector3Builder, flag, textValue2, textValue3, numberValue = vector3Builder(flag, textValue2, textValue3, numberValue)
  position2(vector3Builder, flag, textValue2, textValue3, numberValue)
end
textValue8 = RMenu
textValue8 = textValue8.Add
textValue9 = "trader"
textValue10 = "seller"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateMenu
cmgCall = "CMG Trader"
textValue = " "
rageUiCall = CMG
rageUiCall = rageUiCall.getRageUIMenuWidth
rageUiCall = rageUiCall()
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuHeight
rageUiCall2 = rageUiCall2()
workValue2 = nil
workValue3 = nil
numberValue3 = 0
numberValue5 = 0
numberValue7 = 255
numberValue9 = 255
rageUiCall3, cmgCall, textValue, rageUiCall, rageUiCall2, workValue2, workValue3, numberValue3, numberValue5, numberValue7, numberValue9 = rageUiCall3(cmgCall, textValue, rageUiCall, rageUiCall2, workValue2, workValue3, numberValue3, numberValue5, numberValue7, numberValue9)
textValue8(textValue9, textValue10, rageUiCall3, cmgCall, textValue, rageUiCall, rageUiCall2, workValue2, workValue3, numberValue3, numberValue5, numberValue7, numberValue9)
textValue8 = RMenu
textValue8 = textValue8.Add
textValue9 = "trader"
textValue10 = "gold"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateMenu
cmgCall = "CMG Trader"
textValue = " "
rageUiCall = CMG
rageUiCall = rageUiCall.getRageUIMenuWidth
rageUiCall = rageUiCall()
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuHeight
rageUiCall2 = rageUiCall2()
workValue2 = nil
workValue3 = nil
numberValue3 = 0
numberValue5 = 0
numberValue7 = 255
numberValue9 = 255
rageUiCall3, cmgCall, textValue, rageUiCall, rageUiCall2, workValue2, workValue3, numberValue3, numberValue5, numberValue7, numberValue9 = rageUiCall3(cmgCall, textValue, rageUiCall, rageUiCall2, workValue2, workValue3, numberValue3, numberValue5, numberValue7, numberValue9)
textValue8(textValue9, textValue10, rageUiCall3, cmgCall, textValue, rageUiCall, rageUiCall2, workValue2, workValue3, numberValue3, numberValue5, numberValue7, numberValue9)
textValue8 = RMenu
textValue8 = textValue8.Add
textValue9 = "trader"
textValue10 = "diamond"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateMenu
cmgCall = "CMG Trader"
textValue = " "
rageUiCall = CMG
rageUiCall = rageUiCall.getRageUIMenuWidth
rageUiCall = rageUiCall()
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuHeight
rageUiCall2 = rageUiCall2()
workValue2 = nil
workValue3 = nil
numberValue3 = 0
numberValue5 = 0
numberValue7 = 255
numberValue9 = 255
rageUiCall3, cmgCall, textValue, rageUiCall, rageUiCall2, workValue2, workValue3, numberValue3, numberValue5, numberValue7, numberValue9 = rageUiCall3(cmgCall, textValue, rageUiCall, rageUiCall2, workValue2, workValue3, numberValue3, numberValue5, numberValue7, numberValue9)
textValue8(textValue9, textValue10, rageUiCall3, cmgCall, textValue, rageUiCall, rageUiCall2, workValue2, workValue3, numberValue3, numberValue5, numberValue7, numberValue9)
textValue8 = RageUI
textValue8 = textValue8.CreateWhile
textValue9 = 1.0
textValue10 = RMenu
rageUiCall3 = textValue10
textValue10 = textValue10.Get
cmgCall = "trader"
textValue = "seller"
-- Beginner: result below is menu.
textValue10 = textValue10(rageUiCall3, cmgCall, textValue)
rageUiCall3 = nil
function cmgCall()
  local arg1, arg2, arg3, arg4, arg5, numberValue10, cmgCall4
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "trader"
  arg5 = "gold"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function numberValue10()
    local arg12, textValue4, textValue6, dataTable2, flag4, textValue7
    arg12 = workValue4
    if "Gold" == arg12 then
      arg12 = eventRegistration
      textValue4 = "Gold"
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg12(textValue4)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      textValue4 = "Sell Gold"
      textValue6 = ""
      dataTable2 = {}
      dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag4 = true
      function textValue7(arg13, arg22, arg32)
        local vehicle, cmgCall3, flag5
        if arg32 then
          vehicle = GetVehiclePedIsIn
          cmgCall3 = CMG
          cmgCall3 = cmgCall3.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall3 = cmgCall3()
          flag5 = false
          -- Beginner: result below is currentVehicle.
          vehicle = vehicle(cmgCall3, flag5)
          if 0 == vehicle then
            vehicle = TriggerServerEvent
            cmgCall3 = "76484dfadb"
            flag5 = false
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "76484dfadb".
            vehicle(cmgCall3, flag5)
          else
            vehicle = tCMG
            vehicle = vehicle.notify
            cmgCall3 = "~r~Exit your vehicle."
            -- Beginner: Show a notification to the player.
            vehicle(cmgCall3)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(textValue4, textValue6, dataTable2, flag4, textValue7)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      textValue4 = "Sell All Gold"
      textValue6 = ""
      dataTable2 = {}
      dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag4 = true
      function textValue7(arg13, arg22, arg32)
        local vehicle, cmgCall3, flag5
        if arg32 then
          vehicle = GetVehiclePedIsIn
          cmgCall3 = CMG
          cmgCall3 = cmgCall3.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall3 = cmgCall3()
          flag5 = false
          -- Beginner: result below is currentVehicle.
          vehicle = vehicle(cmgCall3, flag5)
          if 0 == vehicle then
            vehicle = TriggerServerEvent
            cmgCall3 = "76484dfadb"
            flag5 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "76484dfadb".
            vehicle(cmgCall3, flag5)
          else
            vehicle = tCMG
            vehicle = vehicle.notify
            cmgCall3 = "~r~Exit your vehicle."
            -- Beginner: Show a notification to the player.
            vehicle(cmgCall3)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(textValue4, textValue6, dataTable2, flag4, textValue7)
    end
  end
  function cmgCall4()
    local arg12, textValue4
  end
  arg1(arg2, arg3, arg4, arg5, numberValue10, cmgCall4)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "trader"
  arg5 = "diamond"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function numberValue10()
    local arg12, textValue4, textValue6, dataTable2, flag4, textValue7
    arg12 = workValue4
    if "Diamond" == arg12 then
      arg12 = eventRegistration
      textValue4 = "Diamond"
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg12(textValue4)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      textValue4 = "Sell Diamond"
      textValue6 = ""
      dataTable2 = {}
      dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag4 = true
      function textValue7(arg13, arg22, arg32)
        local vehicle, cmgCall3, flag5
        if arg32 then
          vehicle = GetVehiclePedIsIn
          cmgCall3 = CMG
          cmgCall3 = cmgCall3.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall3 = cmgCall3()
          flag5 = false
          -- Beginner: result below is currentVehicle.
          vehicle = vehicle(cmgCall3, flag5)
          if 0 == vehicle then
            vehicle = TriggerServerEvent
            cmgCall3 = "5560f9a59e"
            flag5 = false
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5560f9a59e".
            vehicle(cmgCall3, flag5)
          else
            vehicle = tCMG
            vehicle = vehicle.notify
            cmgCall3 = "~r~Exit your vehicle."
            -- Beginner: Show a notification to the player.
            vehicle(cmgCall3)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(textValue4, textValue6, dataTable2, flag4, textValue7)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      textValue4 = "Sell All Diamond"
      textValue6 = ""
      dataTable2 = {}
      dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag4 = true
      function textValue7(arg13, arg22, arg32)
        local vehicle, cmgCall3, flag5
        if arg32 then
          vehicle = GetVehiclePedIsIn
          cmgCall3 = CMG
          cmgCall3 = cmgCall3.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall3 = cmgCall3()
          flag5 = false
          -- Beginner: result below is currentVehicle.
          vehicle = vehicle(cmgCall3, flag5)
          if 0 == vehicle then
            vehicle = TriggerServerEvent
            cmgCall3 = "5560f9a59e"
            flag5 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5560f9a59e".
            vehicle(cmgCall3, flag5)
          else
            vehicle = tCMG
            vehicle = vehicle.notify
            cmgCall3 = "~r~Exit your vehicle."
            -- Beginner: Show a notification to the player.
            vehicle(cmgCall3)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(textValue4, textValue6, dataTable2, flag4, textValue7)
    end
  end
  function cmgCall4()
    local arg12, textValue4
  end
  arg1(arg2, arg3, arg4, arg5, numberValue10, cmgCall4)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "trader"
  arg5 = "seller"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function numberValue10()
    local arg12, textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12
    arg12 = workValue
    if "Legal" == arg12 then
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      textValue4 = "Gold"
      textValue6 = ""
      dataTable2 = {}
      dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag4 = true
      function textValue7(arg13, arg22, arg32)
        local vehicle, cmgCall3, flag5
        if arg32 then
          vehicle = "Gold"
          workValue4 = vehicle
          vehicle = TriggerServerEvent
          cmgCall3 = "c9a176b26c"
          flag5 = "Gold"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c9a176b26c".
          vehicle(cmgCall3, flag5)
        end
      end
      workValue5 = RMenu
      workValue6 = workValue5
      workValue5 = workValue5.Get
      textValue11 = "trader"
      textValue12 = "gold"
      workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      textValue4 = "Diamond"
      textValue6 = ""
      dataTable2 = {}
      dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag4 = true
      function textValue7(arg13, arg22, arg32)
        local vehicle, cmgCall3, flag5
        if arg32 then
          vehicle = "Diamond"
          workValue4 = vehicle
          vehicle = TriggerServerEvent
          cmgCall3 = "c9a176b26c"
          flag5 = "Diamond"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c9a176b26c".
          vehicle(cmgCall3, flag5)
        end
      end
      workValue5 = RMenu
      workValue6 = workValue5
      workValue5 = workValue5.Get
      textValue11 = "trader"
      textValue12 = "diamond"
      workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
    else
      arg12 = workValue
      if "Heroin" == arg12 then
        arg12 = eventRegistration
        textValue4 = "Heroin"
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        arg12(textValue4)
        arg12 = RageUI
        arg12 = arg12.ButtonWithStyle
        textValue4 = "Sell Heroin"
        textValue6 = "\194\163"
        dataTable2 = getMoneyStringFormatted
        flag4 = dataTable3.Heroin
        if not flag4 then
          flag4 = 0
        end
        dataTable2 = dataTable2(flag4)
        textValue6 = textValue6 .. dataTable2
        dataTable2 = {}
        dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag4 = true
        function textValue7(arg13, arg22, arg32)
          local vehicle, cmgCall3, flag5
          if arg32 then
            vehicle = GetVehiclePedIsIn
            cmgCall3 = CMG
            cmgCall3 = cmgCall3.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            cmgCall3 = cmgCall3()
            flag5 = false
            -- Beginner: result below is currentVehicle.
            vehicle = vehicle(cmgCall3, flag5)
            if 0 == vehicle then
              vehicle = TriggerServerEvent
              cmgCall3 = "9c236f5bf4"
              flag5 = false
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c236f5bf4".
              vehicle(cmgCall3, flag5)
            else
              vehicle = tCMG
              vehicle = vehicle.notify
              cmgCall3 = "~r~Exit your vehicle."
              -- Beginner: Show a notification to the player.
              vehicle(cmgCall3)
            end
          end
        end
        workValue5 = RMenu
        workValue6 = workValue5
        workValue5 = workValue5.Get
        textValue11 = "trader"
        textValue12 = "seller"
        workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
        -- Beginner: Draw a selectable RageUI menu button.
        arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
        arg12 = RageUI
        arg12 = arg12.ButtonWithStyle
        textValue4 = "Sell All Heroin"
        textValue6 = "\194\163"
        dataTable2 = getMoneyStringFormatted
        flag4 = dataTable3.Heroin
        if not flag4 then
          flag4 = 0
        end
        dataTable2 = dataTable2(flag4)
        textValue6 = textValue6 .. dataTable2
        dataTable2 = {}
        dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag4 = true
        function textValue7(arg13, arg22, arg32)
          local vehicle, cmgCall3, flag5
          if arg32 then
            vehicle = GetVehiclePedIsIn
            cmgCall3 = CMG
            cmgCall3 = cmgCall3.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            cmgCall3 = cmgCall3()
            flag5 = false
            -- Beginner: result below is currentVehicle.
            vehicle = vehicle(cmgCall3, flag5)
            if 0 == vehicle then
              vehicle = TriggerServerEvent
              cmgCall3 = "9c236f5bf4"
              flag5 = true
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c236f5bf4".
              vehicle(cmgCall3, flag5)
            else
              vehicle = tCMG
              vehicle = vehicle.notify
              cmgCall3 = "~r~Exit your vehicle."
              -- Beginner: Show a notification to the player.
              vehicle(cmgCall3)
            end
          end
        end
        workValue5 = RMenu
        workValue6 = workValue5
        workValue5 = workValue5.Get
        textValue11 = "trader"
        textValue12 = "seller"
        workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
        -- Beginner: Draw a selectable RageUI menu button.
        arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
      else
        arg12 = workValue
        if "LSDNorth" == arg12 then
          arg12 = eventRegistration
          textValue4 = "LSDNorth"
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg12(textValue4)
          arg12 = RageUI
          arg12 = arg12.ButtonWithStyle
          textValue4 = "Sell LSD"
          textValue6 = "\194\163"
          dataTable2 = getMoneyStringFormatted
          flag4 = dataTable3.LSDNorth
          if not flag4 then
            flag4 = 0
          end
          dataTable2 = dataTable2(flag4)
          textValue6 = textValue6 .. dataTable2
          dataTable2 = {}
          dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
          flag4 = true
          function textValue7(arg13, arg22, arg32)
            local vehicle, cmgCall3, flag5
            if arg32 then
              vehicle = GetVehiclePedIsIn
              cmgCall3 = CMG
              cmgCall3 = cmgCall3.getPlayerPed
              -- Beginner: result below is localPlayerPed.
              cmgCall3 = cmgCall3()
              flag5 = false
              -- Beginner: result below is currentVehicle.
              vehicle = vehicle(cmgCall3, flag5)
              if 0 == vehicle then
                vehicle = TriggerServerEvent
                cmgCall3 = "e430f7bf39"
                flag5 = false
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e430f7bf39".
                vehicle(cmgCall3, flag5)
              else
                vehicle = tCMG
                vehicle = vehicle.notify
                cmgCall3 = "~r~Exit your vehicle."
                -- Beginner: Show a notification to the player.
                vehicle(cmgCall3)
              end
            end
          end
          workValue5 = RMenu
          workValue6 = workValue5
          workValue5 = workValue5.Get
          textValue11 = "trader"
          textValue12 = "seller"
          workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
          -- Beginner: Draw a selectable RageUI menu button.
          arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
          arg12 = RageUI
          arg12 = arg12.ButtonWithStyle
          textValue4 = "Sell All LSD"
          textValue6 = "\194\163"
          dataTable2 = getMoneyStringFormatted
          flag4 = dataTable3.LSDNorth
          if not flag4 then
            flag4 = 0
          end
          dataTable2 = dataTable2(flag4)
          textValue6 = textValue6 .. dataTable2
          dataTable2 = {}
          dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
          flag4 = true
          function textValue7(arg13, arg22, arg32)
            local vehicle, cmgCall3, flag5
            if arg32 then
              vehicle = GetVehiclePedIsIn
              cmgCall3 = CMG
              cmgCall3 = cmgCall3.getPlayerPed
              -- Beginner: result below is localPlayerPed.
              cmgCall3 = cmgCall3()
              flag5 = false
              -- Beginner: result below is currentVehicle.
              vehicle = vehicle(cmgCall3, flag5)
              if 0 == vehicle then
                vehicle = TriggerServerEvent
                cmgCall3 = "e430f7bf39"
                flag5 = true
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e430f7bf39".
                vehicle(cmgCall3, flag5)
              else
                vehicle = tCMG
                vehicle = vehicle.notify
                cmgCall3 = "~r~Exit your vehicle."
                -- Beginner: Show a notification to the player.
                vehicle(cmgCall3)
              end
            end
          end
          workValue5 = RMenu
          workValue6 = workValue5
          workValue5 = workValue5.Get
          textValue11 = "trader"
          textValue12 = "seller"
          workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
          -- Beginner: Draw a selectable RageUI menu button.
          arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
        else
          arg12 = workValue
          if "LSDSouth" == arg12 then
            arg12 = eventRegistration
            textValue4 = "LSDSouth"
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            arg12(textValue4)
            arg12 = RageUI
            arg12 = arg12.ButtonWithStyle
            textValue4 = "Sell LSD"
            textValue6 = "\194\163"
            dataTable2 = getMoneyStringFormatted
            flag4 = dataTable3.LSDSouth
            if not flag4 then
              flag4 = 0
            end
            dataTable2 = dataTable2(flag4)
            textValue6 = textValue6 .. dataTable2
            dataTable2 = {}
            dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
            flag4 = true
            function textValue7(arg13, arg22, arg32)
              local vehicle, cmgCall3, flag5
              if arg32 then
                vehicle = GetVehiclePedIsIn
                cmgCall3 = CMG
                cmgCall3 = cmgCall3.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                cmgCall3 = cmgCall3()
                flag5 = false
                -- Beginner: result below is currentVehicle.
                vehicle = vehicle(cmgCall3, flag5)
                if 0 == vehicle then
                  vehicle = TriggerServerEvent
                  cmgCall3 = "78aa10bf20"
                  flag5 = false
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "78aa10bf20".
                  vehicle(cmgCall3, flag5)
                else
                  vehicle = tCMG
                  vehicle = vehicle.notify
                  cmgCall3 = "~r~Exit your vehicle."
                  -- Beginner: Show a notification to the player.
                  vehicle(cmgCall3)
                end
              end
            end
            workValue5 = RMenu
            workValue6 = workValue5
            workValue5 = workValue5.Get
            textValue11 = "trader"
            textValue12 = "seller"
            workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
            -- Beginner: Draw a selectable RageUI menu button.
            arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
            arg12 = RageUI
            arg12 = arg12.ButtonWithStyle
            textValue4 = "Sell All LSD"
            textValue6 = "\194\163"
            dataTable2 = getMoneyStringFormatted
            flag4 = dataTable3.LSDSouth
            if not flag4 then
              flag4 = 0
            end
            dataTable2 = dataTable2(flag4)
            textValue6 = textValue6 .. dataTable2
            dataTable2 = {}
            dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
            flag4 = true
            function textValue7(arg13, arg22, arg32)
              local vehicle, cmgCall3, flag5
              if arg32 then
                vehicle = GetVehiclePedIsIn
                cmgCall3 = CMG
                cmgCall3 = cmgCall3.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                cmgCall3 = cmgCall3()
                flag5 = false
                -- Beginner: result below is currentVehicle.
                vehicle = vehicle(cmgCall3, flag5)
                if 0 == vehicle then
                  vehicle = TriggerServerEvent
                  cmgCall3 = "78aa10bf20"
                  flag5 = true
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "78aa10bf20".
                  vehicle(cmgCall3, flag5)
                else
                  vehicle = tCMG
                  vehicle = vehicle.notify
                  cmgCall3 = "~r~Exit your vehicle."
                  -- Beginner: Show a notification to the player.
                  vehicle(cmgCall3)
                end
              end
            end
            workValue5 = RMenu
            workValue6 = workValue5
            workValue5 = workValue5.Get
            textValue11 = "trader"
            textValue12 = "seller"
            workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
            -- Beginner: Draw a selectable RageUI menu button.
            arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
          else
            arg12 = workValue
            if "Fish" == arg12 then
              arg12 = RageUI
              arg12 = arg12.ButtonWithStyle
              textValue4 = "Sell Common Fish"
              textValue6 = ""
              dataTable2 = {}
              dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              flag4 = true
              function textValue7(arg13, arg22, arg32)
                local vehicle, cmgCall3, flag5
                if arg32 then
                  vehicle = GetVehiclePedIsIn
                  cmgCall3 = CMG
                  cmgCall3 = cmgCall3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgCall3 = cmgCall3()
                  flag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgCall3, flag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgCall3 = "2270f7a009"
                    flag5 = "common"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgCall3, flag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgCall3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgCall3)
                  end
                end
              end
              workValue5 = RMenu
              workValue6 = workValue5
              workValue5 = workValue5.Get
              textValue11 = "trader"
              textValue12 = "seller"
              workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
              -- Beginner: Draw a selectable RageUI menu button.
              arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
              arg12 = RageUI
              arg12 = arg12.ButtonWithStyle
              textValue4 = "Sell Uncommon Fish"
              textValue6 = ""
              dataTable2 = {}
              dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              flag4 = true
              function textValue7(arg13, arg22, arg32)
                local vehicle, cmgCall3, flag5
                if arg32 then
                  vehicle = GetVehiclePedIsIn
                  cmgCall3 = CMG
                  cmgCall3 = cmgCall3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgCall3 = cmgCall3()
                  flag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgCall3, flag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgCall3 = "2270f7a009"
                    flag5 = "uncommon"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgCall3, flag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgCall3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgCall3)
                  end
                end
              end
              workValue5 = RMenu
              workValue6 = workValue5
              workValue5 = workValue5.Get
              textValue11 = "trader"
              textValue12 = "seller"
              workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
              -- Beginner: Draw a selectable RageUI menu button.
              arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
              arg12 = RageUI
              arg12 = arg12.ButtonWithStyle
              textValue4 = "Sell Rare Fish"
              textValue6 = ""
              dataTable2 = {}
              dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              flag4 = true
              function textValue7(arg13, arg22, arg32)
                local vehicle, cmgCall3, flag5
                if arg32 then
                  vehicle = GetVehiclePedIsIn
                  cmgCall3 = CMG
                  cmgCall3 = cmgCall3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgCall3 = cmgCall3()
                  flag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgCall3, flag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgCall3 = "2270f7a009"
                    flag5 = "rare"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgCall3, flag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgCall3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgCall3)
                  end
                end
              end
              workValue5 = RMenu
              workValue6 = workValue5
              workValue5 = workValue5.Get
              textValue11 = "trader"
              textValue12 = "seller"
              workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
              -- Beginner: Draw a selectable RageUI menu button.
              arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
              arg12 = RageUI
              arg12 = arg12.ButtonWithStyle
              textValue4 = "Sell Very Rare Fish"
              textValue6 = ""
              dataTable2 = {}
              dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              flag4 = true
              function textValue7(arg13, arg22, arg32)
                local vehicle, cmgCall3, flag5
                if arg32 then
                  vehicle = GetVehiclePedIsIn
                  cmgCall3 = CMG
                  cmgCall3 = cmgCall3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgCall3 = cmgCall3()
                  flag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgCall3, flag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgCall3 = "2270f7a009"
                    flag5 = "veryrare"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgCall3, flag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgCall3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgCall3)
                  end
                end
              end
              workValue5 = RMenu
              workValue6 = workValue5
              workValue5 = workValue5.Get
              textValue11 = "trader"
              textValue12 = "seller"
              workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
              -- Beginner: Draw a selectable RageUI menu button.
              arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
              arg12 = RageUI
              arg12 = arg12.ButtonWithStyle
              textValue4 = "Sell Ultra Rare Fish"
              textValue6 = ""
              dataTable2 = {}
              dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              flag4 = true
              function textValue7(arg13, arg22, arg32)
                local vehicle, cmgCall3, flag5
                if arg32 then
                  vehicle = GetVehiclePedIsIn
                  cmgCall3 = CMG
                  cmgCall3 = cmgCall3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgCall3 = cmgCall3()
                  flag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgCall3, flag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgCall3 = "2270f7a009"
                    flag5 = "ultrarare"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgCall3, flag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgCall3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgCall3)
                  end
                end
              end
              workValue5 = RMenu
              workValue6 = workValue5
              workValue5 = workValue5.Get
              textValue11 = "trader"
              textValue12 = "seller"
              workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
              -- Beginner: Draw a selectable RageUI menu button.
              arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
              arg12 = RageUI
              arg12 = arg12.ButtonWithStyle
              textValue4 = "Sell Small Shark Fin"
              textValue6 = ""
              dataTable2 = {}
              dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              flag4 = true
              function textValue7(arg13, arg22, arg32)
                local vehicle, cmgCall3, flag5
                if arg32 then
                  vehicle = GetVehiclePedIsIn
                  cmgCall3 = CMG
                  cmgCall3 = cmgCall3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgCall3 = cmgCall3()
                  flag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgCall3, flag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgCall3 = "2270f7a009"
                    flag5 = "smallshark"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgCall3, flag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgCall3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgCall3)
                  end
                end
              end
              workValue5 = RMenu
              workValue6 = workValue5
              workValue5 = workValue5.Get
              textValue11 = "trader"
              textValue12 = "seller"
              workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
              -- Beginner: Draw a selectable RageUI menu button.
              arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
              arg12 = RageUI
              arg12 = arg12.ButtonWithStyle
              textValue4 = "Sell Medium Shark Fin"
              textValue6 = ""
              dataTable2 = {}
              dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              flag4 = true
              function textValue7(arg13, arg22, arg32)
                local vehicle, cmgCall3, flag5
                if arg32 then
                  vehicle = GetVehiclePedIsIn
                  cmgCall3 = CMG
                  cmgCall3 = cmgCall3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgCall3 = cmgCall3()
                  flag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgCall3, flag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgCall3 = "2270f7a009"
                    flag5 = "mediumshark"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgCall3, flag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgCall3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgCall3)
                  end
                end
              end
              workValue5 = RMenu
              workValue6 = workValue5
              workValue5 = workValue5.Get
              textValue11 = "trader"
              textValue12 = "seller"
              workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
              -- Beginner: Draw a selectable RageUI menu button.
              arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
              arg12 = RageUI
              arg12 = arg12.ButtonWithStyle
              textValue4 = "Sell Large Shark Fin"
              textValue6 = ""
              dataTable2 = {}
              dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              flag4 = true
              function textValue7(arg13, arg22, arg32)
                local vehicle, cmgCall3, flag5
                if arg32 then
                  vehicle = GetVehiclePedIsIn
                  cmgCall3 = CMG
                  cmgCall3 = cmgCall3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgCall3 = cmgCall3()
                  flag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgCall3, flag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgCall3 = "2270f7a009"
                    flag5 = "largeshark"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgCall3, flag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgCall3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgCall3)
                  end
                end
              end
              workValue5 = RMenu
              workValue6 = workValue5
              workValue5 = workValue5.Get
              textValue11 = "trader"
              textValue12 = "seller"
              workValue5, workValue6, textValue11, textValue12 = workValue5(workValue6, textValue11, textValue12)
              -- Beginner: Draw a selectable RageUI menu button.
              arg12(textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6, textValue11, textValue12)
            end
          end
        end
      end
    end
  end
  function cmgCall4()
    local arg12, textValue4
  end
  arg1(arg2, arg3, arg4, arg5, numberValue10, cmgCall4)
end
textValue8(textValue9, textValue10, rageUiCall3, cmgCall)
textValue8 = AddEventHandler
textValue9 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function textValue10(arg1, arg2)
  local arg3, arg4, arg5, numberValue10, cmgCall4, position, position2, vector3Builder, flag, textValue2, textValue3, numberValue, flag2, numberValue2, numberValue4, numberValue6, numberValue8, dataTable, flag3
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function arg3()
      local arg12, textValue4
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function arg4()
      local arg12, textValue4, textValue6, dataTable2, flag4
      arg12 = RageUI
      arg12 = arg12.Visible
      textValue4 = RMenu
      textValue6 = textValue4
      textValue4 = textValue4.Get
      dataTable2 = "trader"
      flag4 = "seller"
      -- Beginner: result below is menu.
      textValue4 = textValue4(textValue6, dataTable2, flag4)
      textValue6 = false
      arg12(textValue4, textValue6)
      arg12 = RageUI
      arg12 = arg12.CloseAll
      arg12()
      arg12 = nil
      textValue5 = arg12
      arg12 = nil
      workValue4 = arg12
    end
    function arg5(arg12)
      local textValue4, textValue6, dataTable2, flag4, textValue7, workValue5, workValue6
      textValue4 = IsControlJustPressed
      textValue6 = 1
      dataTable2 = 38
      textValue4 = textValue4(textValue6, dataTable2)
      if textValue4 then
        textValue4 = arg12.traderName
        workValue = textValue4
        textValue4 = RageUI
        textValue4 = textValue4.Visible
        textValue6 = RMenu
        dataTable2 = textValue6
        textValue6 = textValue6.Get
        flag4 = "trader"
        textValue7 = "seller"
        -- Beginner: result below is menu.
        textValue6 = textValue6(dataTable2, flag4, textValue7)
        dataTable2 = RageUI
        dataTable2 = dataTable2.Visible
        flag4 = RMenu
        textValue7 = flag4
        flag4 = flag4.Get
        workValue5 = "trader"
        workValue6 = "seller"
        flag4, textValue7, workValue5, workValue6 = flag4(textValue7, workValue5, workValue6)
        -- Beginner: result below is menuVisible.
        dataTable2 = dataTable2(flag4, textValue7, workValue5, workValue6)
        dataTable2 = not dataTable2
        textValue4(textValue6, dataTable2)
        textValue4 = TriggerServerEvent
        textValue6 = "c9a176b26c"
        dataTable2 = workValue
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c9a176b26c".
        textValue4(textValue6, dataTable2)
      end
      textValue4 = CMG
      textValue4 = textValue4.DrawText3D
      textValue6 = cmgCall2.trader
      dataTable2 = arg12.traderId
      textValue6 = textValue6[dataTable2]
      textValue6 = textValue6.position
      dataTable2 = "Press [E] to open seller"
      flag4 = 0.2
      textValue4(textValue6, dataTable2, flag4)
    end
    numberValue10 = pairs
    cmgCall4 = cmgCall2.trader
    numberValue10, cmgCall4, position, position2 = numberValue10(cmgCall4)
    for vector3Builder, flag in numberValue10, cmgCall4, position, position2 do
      textValue2 = CMG
      textValue2 = textValue2.createArea
      textValue3 = "trader_"
      numberValue = vector3Builder
      textValue3 = textValue3 .. numberValue
      numberValue = flag.position
      flag2 = 1.5
      numberValue2 = 6
      numberValue4 = arg3
      numberValue6 = arg4
      numberValue8 = arg5
      dataTable = {}
      dataTable.traderId = vector3Builder
      flag3 = flag.type
      dataTable.traderName = flag3
      -- Beginner: Create an interaction area around a world position.
      textValue2(textValue3, numberValue, flag2, numberValue2, numberValue4, numberValue6, numberValue8, dataTable)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
textValue8(textValue9, textValue10)
textValue8 = RegisterNetEvent
textValue9 = "bbd7e56d6b"
-- Beginner: this function handles network event "bbd7e56d6b".
function textValue10(arg1, arg2, arg3, arg4, arg5)
  local numberValue10
  numberValue10 = arg1 or nil
  if not arg1 then
    numberValue10 = 0
  end
  dataTable3.Heroin = numberValue10
  numberValue10 = arg2 or numberValue10
  if not arg2 then
    numberValue10 = 0
  end
  dataTable3.LSDNorth = numberValue10
  numberValue10 = arg3 or numberValue10
  if not arg3 then
    numberValue10 = 0
  end
  dataTable3.LSDSouth = numberValue10
  numberValue10 = arg4 or numberValue10
  if not arg4 then
    numberValue10 = 0
  end
  dataTable3.Gold = numberValue10
  numberValue10 = arg5 or numberValue10
  if not arg5 then
    numberValue10 = 0
  end
  dataTable3.Diamond = numberValue10
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bbd7e56d6b".
textValue8(textValue9, textValue10)
textValue8 = RegisterNetEvent
textValue9 = "83b7436490"
-- Beginner: this function handles network event "83b7436490".
function textValue10(arg1)
  local arg2
  textValue5 = arg1
end
textValue8(textValue9, textValue10)