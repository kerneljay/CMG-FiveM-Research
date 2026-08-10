--[[
    Beginner Guide: cl_vehicle_crush_trade.lua
    ==========================================

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
    BEGINNER GUIDE — Vehicle Crush Trade
    ====================================

    File: cmg/prod/client/vehicles/cl_vehicle_crush_trade.lua
    Purpose: This file contains vehicle-related gameplay.

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
      * cfg/cfg_vehicle_crush_trade

    Network/hash identifiers found: 5
      They are intentionally left unchanged because matching server code may use them.
      * 050ddba34e
      * d265cf4800
      * 95c13026d2
      * b51eb93222
      * b09374a264

    Example player-facing text in this file:
      * ~b~Vehicle Lock trade-in
      * You can exchange 
      * You will not own it anymore.
      * You will receive ~g~

]]
local cmgCall, dataTable, numberValue, workValue7, textValue13, numberValue2, workValue11, eventRegistration, textValue19, textValue20, rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, workValue2, textValue7, workValue5, workValue6, dataTable2
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/cfg_vehicle_crush_trade"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
dataTable = {}
numberValue = 0
workValue7 = nil
textValue13 = ""
numberValue2 = 0
function workValue11()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "050ddba34e"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "050ddba34e".
  arg1(arg2)
end
eventRegistration = RegisterNetEvent
textValue19 = "d265cf4800"
-- Beginner: this function handles network event "d265cf4800".
function textValue20(arg1, arg2)
  local dataTable3, textValue11
  dataTable3 = arg1 or nil
  if not arg1 then
    dataTable3 = {}
  end
  dataTable = dataTable3
  dataTable3 = tonumber
  textValue11 = arg2
  dataTable3 = dataTable3(textValue11)
  if not dataTable3 then
    dataTable3 = 0
  end
  numberValue = dataTable3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d265cf4800".
eventRegistration(textValue19, textValue20)
eventRegistration = RMenu
eventRegistration = eventRegistration.Add
textValue19 = "vcrush"
textValue20 = "main"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue = ""
textValue3 = "~b~Vehicle Lock trade-in"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
rageUiCall5 = "cmg_garageui"
textValue6 = "cmg_garageui"
rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, workValue2, textValue7, workValue5, workValue6, dataTable2 = rageUiCall2(textValue, textValue3, rageUiCall3, rageUiCall4, rageUiCall5, textValue6)
eventRegistration(textValue19, textValue20, rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, workValue2, textValue7, workValue5, workValue6, dataTable2)
eventRegistration = RMenu
eventRegistration = eventRegistration.Add
textValue19 = "vcrush"
textValue20 = "crush1"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue = RMenu
textValue3 = textValue
textValue = textValue.Get
rageUiCall3 = "vcrush"
rageUiCall4 = "main"
-- Beginner: result below is menu.
textValue = textValue(textValue3, rageUiCall3, rageUiCall4)
textValue3 = ""
rageUiCall3 = "~o~Confirm (1/2)"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue6, workValue2, textValue7, workValue5, workValue6, dataTable2 = rageUiCall5()
rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, workValue2, textValue7, workValue5, workValue6, dataTable2 = rageUiCall2(textValue, textValue3, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, workValue2, textValue7, workValue5, workValue6, dataTable2)
eventRegistration(textValue19, textValue20, rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, workValue2, textValue7, workValue5, workValue6, dataTable2)
eventRegistration = RMenu
eventRegistration = eventRegistration.Add
textValue19 = "vcrush"
textValue20 = "crush2"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue = RMenu
textValue3 = textValue
textValue = textValue.Get
rageUiCall3 = "vcrush"
rageUiCall4 = "crush1"
-- Beginner: result below is menu.
textValue = textValue(textValue3, rageUiCall3, rageUiCall4)
textValue3 = ""
rageUiCall3 = "~r~Final confirm"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue6, workValue2, textValue7, workValue5, workValue6, dataTable2 = rageUiCall5()
rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, workValue2, textValue7, workValue5, workValue6, dataTable2 = rageUiCall2(textValue, textValue3, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, workValue2, textValue7, workValue5, workValue6, dataTable2)
eventRegistration(textValue19, textValue20, rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, workValue2, textValue7, workValue5, workValue6, dataTable2)
eventRegistration = tonumber
textValue19 = cmgCall.tokensPerLockslotItem
eventRegistration = eventRegistration(textValue19)
if not eventRegistration then
  eventRegistration = 10
end
textValue19 = tonumber
textValue20 = cmgCall.cashRedeemTokenCost
textValue19 = textValue19(textValue20)
if not textValue19 then
  textValue19 = 10
end
textValue20 = tonumber
rageUiCall2 = cmgCall.cashRedeemAmount
textValue20 = textValue20(rageUiCall2)
if not textValue20 then
  textValue20 = 0
end
function rageUiCall2()
  local arg1, arg2, dataTable3, textValue11, flag2
  arg1 = workValue11
  arg1()
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  dataTable3 = arg2
  arg2 = arg2.Get
  textValue11 = "vcrush"
  flag2 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(dataTable3, textValue11, flag2)
  dataTable3 = true
  arg1(arg2, dataTable3)
end
function textValue()
  local arg1, arg2
  arg1 = RageUI
  arg1 = arg1.IsAnyMenuOfTypeVisible
  arg2 = "vcrush"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.CloseAll
    arg1()
  end
end
textValue3 = cmgCall.areaCenter
rageUiCall3 = tCMG
rageUiCall3 = rageUiCall3.addPropMarker
rageUiCall4 = "bzzz_marker_garage_green_anim"
rageUiCall5 = textValue3.x
textValue6 = textValue3.y
workValue2 = textValue3.z
workValue2 = workValue2 + 1
textValue7 = 50.0
-- Beginner: Create a prop-style world marker.
rageUiCall3(rageUiCall4, rageUiCall5, textValue6, workValue2, textValue7)
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.createArea
rageUiCall4 = "vehicle_crush_trade"
rageUiCall5 = textValue3
textValue6 = cmgCall.areaHalfExtent
if not textValue6 then
  textValue6 = 2.0
end
workValue2 = cmgCall.areaHeight
if not workValue2 then
  workValue2 = 2.5
end
textValue7 = rageUiCall2
workValue5 = textValue
function workValue6()
  local arg1, arg2
end
dataTable2 = {}
-- Beginner: Create an interaction area around a world position.
rageUiCall3(rageUiCall4, rageUiCall5, textValue6, workValue2, textValue7, workValue5, workValue6, dataTable2)
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateWhile
rageUiCall4 = 1.0
rageUiCall5 = RMenu
textValue6 = rageUiCall5
rageUiCall5 = rageUiCall5.Get
workValue2 = "vcrush"
textValue7 = "main"
-- Beginner: result below is menu.
rageUiCall5 = rageUiCall5(textValue6, workValue2, textValue7)
textValue6 = nil
function workValue2()
  local arg1, arg2, dataTable3, textValue11, flag2, workValue10, workValue12
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  dataTable3 = arg2
  arg2 = arg2.Get
  textValue11 = "vcrush"
  flag2 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(dataTable3, textValue11, flag2)
  dataTable3 = true
  textValue11 = true
  flag2 = true
  function workValue10()
    local rageUiCall, textValue9, stringHelper3, textValue12, workValue9, textValue15, textValue16, numberValue3, workValue13, textValue21, stringHelper, textValue2, textValue4, textValue5, stringHelper2, flag, workValue, workValue3, workValue4, textValue8, textValue10
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue9 = "You can exchange "
    stringHelper3 = tostring
    textValue12 = eventRegistration
    stringHelper3 = stringHelper3(textValue12)
    textValue12 = " tokens for 1 lock slot"
    textValue9 = textValue9 .. stringHelper3 .. textValue12
    rageUiCall(textValue9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue9 = "Lock slot tokens: "
    stringHelper3 = tostring
    textValue12 = numberValue
    stringHelper3 = stringHelper3(textValue12)
    textValue9 = textValue9 .. stringHelper3
    rageUiCall(textValue9)
    rageUiCall = dataTable
    rageUiCall = rageUiCall[1]
    if nil == rageUiCall then
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Separator
      textValue9 = "~r~No eligible vehicles"
      rageUiCall(textValue9)
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Separator
      textValue9 = "Locked vehicles only, non lore. up to 1:10"
      rageUiCall(textValue9)
    else
      rageUiCall = ipairs
      textValue9 = dataTable
      rageUiCall, textValue9, stringHelper3, textValue12 = rageUiCall(textValue9)
      for workValue9, textValue15 in rageUiCall, textValue9, stringHelper3, textValue12 do
        textValue16 = textValue15.displayName
        if not textValue16 then
          textValue16 = textValue15.vehicleId
          if not textValue16 then
            textValue16 = "?"
          end
        end
        numberValue3 = tonumber
        workValue13 = textValue15.ratio
        numberValue3 = numberValue3(workValue13)
        if not numberValue3 then
          numberValue3 = 0
        end
        workValue13 = textValue16
        textValue21 = " ~y~1:"
        stringHelper = tostring
        textValue2 = numberValue3
        stringHelper = stringHelper(textValue2)
        textValue2 = "~s~"
        workValue13 = workValue13 .. textValue21 .. stringHelper .. textValue2
        textValue21 = tonumber
        stringHelper = textValue15.tokens
        textValue21 = textValue21(stringHelper)
        if not textValue21 then
          textValue21 = 0
        end
        stringHelper = tostring
        textValue2 = textValue21
        stringHelper = stringHelper(textValue2)
        textValue2 = " Token"
        if 1 == textValue21 then
          textValue4 = ""
          if textValue4 then
            goto flow_label_71
          end
        end
        textValue4 = "s"
        ::flow_label_71::
        stringHelper = stringHelper .. textValue2 .. textValue4
        textValue2 = RageUI
        textValue2 = textValue2.ButtonWithStyle
        textValue4 = workValue13
        textValue5 = "Plate: "
        stringHelper2 = tostring
        flag = textValue15.plate
        if not flag then
          flag = ""
        end
        stringHelper2 = stringHelper2(flag)
        textValue5 = textValue5 .. stringHelper2
        stringHelper2 = {}
        stringHelper2.RightLabel = stringHelper
        flag = true
        function workValue(arg12, arg22, arg3)
          local workValue8
          if arg3 then
            workValue8 = textValue15.uuid
            workValue7 = workValue8
            workValue8 = textValue15.displayName
            if not workValue8 then
              workValue8 = textValue15.vehicleId
            end
            textValue13 = workValue8
            workValue8 = textValue15.tokens
            numberValue2 = workValue8
          end
        end
        workValue3 = RMenu
        workValue4 = workValue3
        workValue3 = workValue3.Get
        textValue8 = "vcrush"
        textValue10 = "crush1"
        workValue3, workValue4, textValue8, textValue10 = workValue3(workValue4, textValue8, textValue10)
        -- Beginner: Draw a selectable RageUI menu button.
        textValue2(textValue4, textValue5, stringHelper2, flag, workValue, workValue3, workValue4, textValue8, textValue10)
      end
    end
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue9 = "~b~Exchange "
    stringHelper3 = tostring
    textValue12 = eventRegistration
    stringHelper3 = stringHelper3(textValue12)
    textValue12 = " tokens for ~g~1x Lock Slot"
    textValue9 = textValue9 .. stringHelper3 .. textValue12
    stringHelper3 = ""
    textValue12 = {}
    textValue12.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue9 = numberValue
    textValue15 = eventRegistration
    workValue9 = workValue9 >= textValue15
    function textValue15(arg12, arg22, arg3)
      local workValue8, textValue14
      if arg3 then
        workValue8 = numberValue
        textValue14 = eventRegistration
        if workValue8 >= textValue14 then
          workValue8 = TriggerServerEvent
          textValue14 = "95c13026d2"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "95c13026d2".
          workValue8(textValue14)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue9, stringHelper3, textValue12, workValue9, textValue15)
    rageUiCall = textValue20
    if rageUiCall > 0 then
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ButtonWithStyle
      textValue9 = "~b~Exchange "
      stringHelper3 = tostring
      textValue12 = textValue19
      stringHelper3 = stringHelper3(textValue12)
      textValue12 = " tokens for ~g~\194\163"
      workValue9 = getMoneyStringFormatted
      textValue15 = textValue20
      workValue9 = workValue9(textValue15)
      textValue15 = "~s~"
      textValue9 = textValue9 .. stringHelper3 .. textValue12 .. workValue9 .. textValue15
      stringHelper3 = ""
      textValue12 = {}
      textValue12.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue9 = numberValue
      textValue15 = textValue19
      workValue9 = workValue9 >= textValue15
      function textValue15(arg12, arg22, arg3)
        local workValue8, textValue14
        if arg3 then
          workValue8 = numberValue
          textValue14 = textValue19
          if workValue8 >= textValue14 then
            workValue8 = TriggerServerEvent
            textValue14 = "b51eb93222"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b51eb93222".
            workValue8(textValue14)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall(textValue9, stringHelper3, textValue12, workValue9, textValue15)
    end
  end
  function workValue12()
    local rageUiCall, textValue9
  end
  arg1(arg2, dataTable3, textValue11, flag2, workValue10, workValue12)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  dataTable3 = arg2
  arg2 = arg2.Get
  textValue11 = "vcrush"
  flag2 = "crush1"
  -- Beginner: result below is menu.
  arg2 = arg2(dataTable3, textValue11, flag2)
  dataTable3 = true
  textValue11 = false
  flag2 = true
  function workValue10()
    local rageUiCall, textValue9, stringHelper3, textValue12, workValue9, textValue15, textValue16, numberValue3, workValue13, textValue21
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue9 = textValue13
    rageUiCall(textValue9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue9 = "~r~YOU LOSE:~s~ this vehicle forever."
    rageUiCall(textValue9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue9 = "~g~YOU GET:~s~ +"
    stringHelper3 = tostring
    textValue12 = numberValue2
    stringHelper3 = stringHelper3(textValue12)
    textValue12 = " lock slot token(s)."
    textValue9 = textValue9 .. stringHelper3 .. textValue12
    rageUiCall(textValue9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue9 = "Cannot be undone."
    rageUiCall(textValue9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue9 = "~y~Continue to final warning"
    stringHelper3 = ""
    textValue12 = {}
    textValue12.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue9 = true
    function textValue15()
      local arg12, arg22
    end
    textValue16 = RMenu
    numberValue3 = textValue16
    textValue16 = textValue16.Get
    workValue13 = "vcrush"
    textValue21 = "crush2"
    textValue16, numberValue3, workValue13, textValue21 = textValue16(numberValue3, workValue13, textValue21)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue9, stringHelper3, textValue12, workValue9, textValue15, textValue16, numberValue3, workValue13, textValue21)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue9 = "~g~Cancel"
    stringHelper3 = ""
    textValue12 = {}
    textValue12.RightLabel = ""
    workValue9 = true
    function textValue15(arg12, arg22, arg3)
      local workValue8, textValue14, flag3, textValue17, textValue18
      if arg3 then
        workValue8 = RageUI
        workValue8 = workValue8.Visible
        textValue14 = RMenu
        flag3 = textValue14
        textValue14 = textValue14.Get
        textValue17 = "vcrush"
        textValue18 = "main"
        -- Beginner: result below is menu.
        textValue14 = textValue14(flag3, textValue17, textValue18)
        flag3 = true
        workValue8(textValue14, flag3)
      end
    end
    textValue16 = RMenu
    numberValue3 = textValue16
    textValue16 = textValue16.Get
    workValue13 = "vcrush"
    textValue21 = "main"
    textValue16, numberValue3, workValue13, textValue21 = textValue16(numberValue3, workValue13, textValue21)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue9, stringHelper3, textValue12, workValue9, textValue15, textValue16, numberValue3, workValue13, textValue21)
  end
  function workValue12()
    local rageUiCall, textValue9
  end
  arg1(arg2, dataTable3, textValue11, flag2, workValue10, workValue12)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  dataTable3 = arg2
  arg2 = arg2.Get
  textValue11 = "vcrush"
  flag2 = "crush2"
  -- Beginner: result below is menu.
  arg2 = arg2(dataTable3, textValue11, flag2)
  dataTable3 = true
  textValue11 = false
  flag2 = true
  function workValue10()
    local rageUiCall, textValue9, stringHelper3, textValue12, workValue9, textValue15, textValue16, numberValue3, workValue13, textValue21
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue9 = "~r~FINAL"
    rageUiCall(textValue9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue9 = "This vehicle will be removed from your garage and scrapped."
    rageUiCall(textValue9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue9 = "You will not own it anymore."
    rageUiCall(textValue9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue9 = "You will receive ~g~"
    stringHelper3 = tostring
    textValue12 = numberValue2
    stringHelper3 = stringHelper3(textValue12)
    textValue12 = "~s~ lock slot token(s)."
    textValue9 = textValue9 .. stringHelper3 .. textValue12
    rageUiCall(textValue9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue9 = "~r~YES - trade-in"
    stringHelper3 = ""
    textValue12 = {}
    textValue12.RightLabel = ""
    workValue9 = workValue7
    workValue9 = nil ~= workValue9
    function textValue15(arg12, arg22, arg3)
      local workValue8, textValue14, flag3, textValue17, textValue18
      if arg3 then
        workValue8 = workValue7
        if workValue8 then
          workValue8 = TriggerServerEvent
          textValue14 = "b09374a264"
          flag3 = workValue7
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b09374a264".
          workValue8(textValue14, flag3)
          workValue8 = RageUI
          workValue8 = workValue8.Visible
          textValue14 = RMenu
          flag3 = textValue14
          textValue14 = textValue14.Get
          textValue17 = "vcrush"
          textValue18 = "main"
          -- Beginner: result below is menu.
          textValue14 = textValue14(flag3, textValue17, textValue18)
          flag3 = true
          workValue8(textValue14, flag3)
          workValue8 = nil
          workValue7 = workValue8
        end
      end
    end
    textValue16 = RMenu
    numberValue3 = textValue16
    textValue16 = textValue16.Get
    workValue13 = "vcrush"
    textValue21 = "main"
    textValue16, numberValue3, workValue13, textValue21 = textValue16(numberValue3, workValue13, textValue21)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue9, stringHelper3, textValue12, workValue9, textValue15, textValue16, numberValue3, workValue13, textValue21)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue9 = "~g~NO - go back"
    stringHelper3 = ""
    textValue12 = {}
    textValue12.RightLabel = ""
    workValue9 = true
    function textValue15(arg12, arg22, arg3)
      local workValue8, textValue14, flag3, textValue17, textValue18
      if arg3 then
        workValue8 = RageUI
        workValue8 = workValue8.Visible
        textValue14 = RMenu
        flag3 = textValue14
        textValue14 = textValue14.Get
        textValue17 = "vcrush"
        textValue18 = "crush1"
        -- Beginner: result below is menu.
        textValue14 = textValue14(flag3, textValue17, textValue18)
        flag3 = true
        workValue8(textValue14, flag3)
      end
    end
    textValue16 = RMenu
    numberValue3 = textValue16
    textValue16 = textValue16.Get
    workValue13 = "vcrush"
    textValue21 = "crush1"
    textValue16, numberValue3, workValue13, textValue21 = textValue16(numberValue3, workValue13, textValue21)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue9, stringHelper3, textValue12, workValue9, textValue15, textValue16, numberValue3, workValue13, textValue21)
  end
  function workValue12()
    local rageUiCall, textValue9
  end
  arg1(arg2, dataTable3, textValue11, flag2, workValue10, workValue12)
end
rageUiCall3(rageUiCall4, rageUiCall5, textValue6, workValue2)