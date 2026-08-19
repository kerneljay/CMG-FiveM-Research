--[[
    LEVEL 1 BEGINNER GUIDE — Vehicle Crush Trade
    =================================================

    File: cmg/prod/client/vehicles/cl_vehicle_crush_trade.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: vehicle gameplay and vehicle systems, specifically the Vehicle Crush Trade feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 19
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
local cmgOperation, dataCollection, number, workingValue7, text13, number2, workingValue11, eventHandler, text19, text20, rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, workingValue2, text7, workingValue5, workingValue6, dataCollection2
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection = "cfg/cfg_vehicle_crush_trade"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection)
dataCollection = {}
number = 0
workingValue7 = nil
text13 = ""
number2 = 0

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "050ddba34e"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "050ddba34e".
  localValue1(localValue2)
end
eventHandler = RegisterNetEvent
text19 = "d265cf4800"
-- Beginner: this function handles network event "d265cf4800".

-- === HELPER FUNCTION (decompiler name: text20; parameters: localValue1, localValue2) ===
function text20(localValue1, localValue2)
  local dataCollection3, text11
  dataCollection3 = localValue1 or nil
  if not localValue1 then
    dataCollection3 = {}
  end
  dataCollection = dataCollection3
  dataCollection3 = tonumber
  text11 = localValue2
  dataCollection3 = dataCollection3(text11)
  if not dataCollection3 then
    dataCollection3 = 0
  end
  number = dataCollection3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d265cf4800".
eventHandler(text19, text20)
eventHandler = RMenu
eventHandler = eventHandler.Add
text19 = "vcrush"
text20 = "main"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text = ""
text3 = "~b~Vehicle Lock trade-in"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = "cmg_garageui"
text6 = "cmg_garageui"
rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, workingValue2, text7, workingValue5, workingValue6, dataCollection2 = rageUiOperation2(text, text3, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6)
eventHandler(text19, text20, rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, workingValue2, text7, workingValue5, workingValue6, dataCollection2)
eventHandler = RMenu
eventHandler = eventHandler.Add
text19 = "vcrush"
text20 = "crush1"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text = RMenu
text3 = text
text = text.Get
rageUiOperation3 = "vcrush"
rageUiOperation4 = "main"
-- Beginner: result below is menu.
text = text(text3, rageUiOperation3, rageUiOperation4)
text3 = ""
rageUiOperation3 = "~o~Confirm (1/2)"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text6, workingValue2, text7, workingValue5, workingValue6, dataCollection2 = rageUiOperation5()
rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, workingValue2, text7, workingValue5, workingValue6, dataCollection2 = rageUiOperation2(text, text3, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, workingValue2, text7, workingValue5, workingValue6, dataCollection2)
eventHandler(text19, text20, rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, workingValue2, text7, workingValue5, workingValue6, dataCollection2)
eventHandler = RMenu
eventHandler = eventHandler.Add
text19 = "vcrush"
text20 = "crush2"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text = RMenu
text3 = text
text = text.Get
rageUiOperation3 = "vcrush"
rageUiOperation4 = "crush1"
-- Beginner: result below is menu.
text = text(text3, rageUiOperation3, rageUiOperation4)
text3 = ""
rageUiOperation3 = "~r~Final confirm"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text6, workingValue2, text7, workingValue5, workingValue6, dataCollection2 = rageUiOperation5()
rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, workingValue2, text7, workingValue5, workingValue6, dataCollection2 = rageUiOperation2(text, text3, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, workingValue2, text7, workingValue5, workingValue6, dataCollection2)
eventHandler(text19, text20, rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, workingValue2, text7, workingValue5, workingValue6, dataCollection2)
eventHandler = tonumber
text19 = cmgOperation.tokensPerLockslotItem
eventHandler = eventHandler(text19)
if not eventHandler then
  eventHandler = 10
end
text19 = tonumber
text20 = cmgOperation.cashRedeemTokenCost
text19 = text19(text20)
if not text19 then
  text19 = 10
end
text20 = tonumber
rageUiOperation2 = cmgOperation.cashRedeemAmount
text20 = text20(rageUiOperation2)
if not text20 then
  text20 = 0
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2, dataCollection3, text11, stateFlag2
  localValue1 = workingValue11
  localValue1()
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  dataCollection3 = localValue2
  localValue2 = localValue2.Get
  text11 = "vcrush"
  stateFlag2 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(dataCollection3, text11, stateFlag2)
  dataCollection3 = true
  localValue1(localValue2, dataCollection3)
end

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2
  localValue1 = RageUI
  localValue1 = localValue1.IsAnyMenuOfTypeVisible
  localValue2 = "vcrush"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.CloseAll
    localValue1()
  end
end
text3 = cmgOperation.areaCenter
rageUiOperation3 = tCMG
rageUiOperation3 = rageUiOperation3.addPropMarker
rageUiOperation4 = "bzzz_marker_garage_green_anim"
rageUiOperation5 = text3.x
text6 = text3.y
workingValue2 = text3.z
workingValue2 = workingValue2 + 1
text7 = 50.0
-- Beginner: Create a prop-style world marker.
rageUiOperation3(rageUiOperation4, rageUiOperation5, text6, workingValue2, text7)
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.createArea
rageUiOperation4 = "vehicle_crush_trade"
rageUiOperation5 = text3
text6 = cmgOperation.areaHalfExtent
if not text6 then
  text6 = 2.0
end
workingValue2 = cmgOperation.areaHeight
if not workingValue2 then
  workingValue2 = 2.5
end
text7 = rageUiOperation2
workingValue5 = text

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2
end
dataCollection2 = {}
-- Beginner: Create an interaction area around a world position.
rageUiOperation3(rageUiOperation4, rageUiOperation5, text6, workingValue2, text7, workingValue5, workingValue6, dataCollection2)
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateWhile
rageUiOperation4 = 1.0
rageUiOperation5 = RMenu
text6 = rageUiOperation5
rageUiOperation5 = rageUiOperation5.Get
workingValue2 = "vcrush"
text7 = "main"
-- Beginner: result below is menu.
rageUiOperation5 = rageUiOperation5(text6, workingValue2, text7)
text6 = nil

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2, dataCollection3, text11, stateFlag2, workingValue10, workingValue12
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  dataCollection3 = localValue2
  localValue2 = localValue2.Get
  text11 = "vcrush"
  stateFlag2 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(dataCollection3, text11, stateFlag2)
  dataCollection3 = true
  text11 = true
  stateFlag2 = true

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local rageUiOperation, text9, stringHelper3, text12, workingValue9, text15, text16, number3, workingValue13, text21, stringHelper, text2, text4, text5, stringHelper2, stateFlag, workingValue, workingValue3, workingValue4, text8, text10
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text9 = "You can exchange "
    stringHelper3 = tostring
    text12 = eventHandler
    stringHelper3 = stringHelper3(text12)
    text12 = " tokens for 1 lock slot"
    text9 = text9 .. stringHelper3 .. text12
    rageUiOperation(text9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text9 = "Lock slot tokens: "
    stringHelper3 = tostring
    text12 = number
    stringHelper3 = stringHelper3(text12)
    text9 = text9 .. stringHelper3
    rageUiOperation(text9)
    rageUiOperation = dataCollection
    rageUiOperation = rageUiOperation[1]
    if nil == rageUiOperation then
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.Separator
      text9 = "~r~No eligible vehicles"
      rageUiOperation(text9)
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.Separator
      text9 = "Locked vehicles only, non lore. up to 1:10"
      rageUiOperation(text9)
    else
      rageUiOperation = ipairs
      text9 = dataCollection
      rageUiOperation, text9, stringHelper3, text12 = rageUiOperation(text9)
      for workingValue9, text15 in rageUiOperation, text9, stringHelper3, text12 do
        text16 = text15.displayName
        if not text16 then
          text16 = text15.vehicleId
          if not text16 then
            text16 = "?"
          end
        end
        number3 = tonumber
        workingValue13 = text15.ratio
        number3 = number3(workingValue13)
        if not number3 then
          number3 = 0
        end
        workingValue13 = text16
        text21 = " ~y~1:"
        stringHelper = tostring
        text2 = number3
        stringHelper = stringHelper(text2)
        text2 = "~s~"
        workingValue13 = workingValue13 .. text21 .. stringHelper .. text2
        text21 = tonumber
        stringHelper = text15.tokens
        text21 = text21(stringHelper)
        if not text21 then
          text21 = 0
        end
        stringHelper = tostring
        text2 = text21
        stringHelper = stringHelper(text2)
        text2 = " Token"
        if 1 == text21 then
          text4 = ""
          if text4 then
            goto continueAtStep71
          end
        end
        text4 = "s"
        ::continueAtStep71::
        stringHelper = stringHelper .. text2 .. text4
        text2 = RageUI
        text2 = text2.ButtonWithStyle
        text4 = workingValue13
        text5 = "Plate: "
        stringHelper2 = tostring
        stateFlag = text15.plate
        if not stateFlag then
          stateFlag = ""
        end
        stringHelper2 = stringHelper2(stateFlag)
        text5 = text5 .. stringHelper2
        stringHelper2 = {}
        stringHelper2.RightLabel = stringHelper
        stateFlag = true

        -- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue12, localValue22, localValue3) ===
        function workingValue(localValue12, localValue22, localValue3)
          local workingValue8
          if localValue3 then
            workingValue8 = text15.uuid
            workingValue7 = workingValue8
            workingValue8 = text15.displayName
            if not workingValue8 then
              workingValue8 = text15.vehicleId
            end
            text13 = workingValue8
            workingValue8 = text15.tokens
            number2 = workingValue8
          end
        end
        workingValue3 = RMenu
        workingValue4 = workingValue3
        workingValue3 = workingValue3.Get
        text8 = "vcrush"
        text10 = "crush1"
        workingValue3, workingValue4, text8, text10 = workingValue3(workingValue4, text8, text10)
        -- Beginner: Draw a selectable RageUI menu button.
        text2(text4, text5, stringHelper2, stateFlag, workingValue, workingValue3, workingValue4, text8, text10)
      end
    end
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text9 = "~b~Exchange "
    stringHelper3 = tostring
    text12 = eventHandler
    stringHelper3 = stringHelper3(text12)
    text12 = " tokens for ~g~1x Lock Slot"
    text9 = text9 .. stringHelper3 .. text12
    stringHelper3 = ""
    text12 = {}
    text12.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue9 = number
    text15 = eventHandler
    workingValue9 = workingValue9 >= text15

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12, localValue22, localValue3) ===
    function text15(localValue12, localValue22, localValue3)
      local workingValue8, text14
      if localValue3 then
        workingValue8 = number
        text14 = eventHandler
        if workingValue8 >= text14 then
          workingValue8 = TriggerServerEvent
          text14 = "95c13026d2"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "95c13026d2".
          workingValue8(text14)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text9, stringHelper3, text12, workingValue9, text15)
    rageUiOperation = text20
    if rageUiOperation > 0 then
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.ButtonWithStyle
      text9 = "~b~Exchange "
      stringHelper3 = tostring
      text12 = text19
      stringHelper3 = stringHelper3(text12)
      text12 = " tokens for ~g~\194\163"
      workingValue9 = getMoneyStringFormatted
      text15 = text20
      workingValue9 = workingValue9(text15)
      text15 = "~s~"
      text9 = text9 .. stringHelper3 .. text12 .. workingValue9 .. text15
      stringHelper3 = ""
      text12 = {}
      text12.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue9 = number
      text15 = text19
      workingValue9 = workingValue9 >= text15

      -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12, localValue22, localValue3) ===
      function text15(localValue12, localValue22, localValue3)
        local workingValue8, text14
        if localValue3 then
          workingValue8 = number
          text14 = text19
          if workingValue8 >= text14 then
            workingValue8 = TriggerServerEvent
            text14 = "b51eb93222"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b51eb93222".
            workingValue8(text14)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation(text9, stringHelper3, text12, workingValue9, text15)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
  function workingValue12()
    local rageUiOperation, text9
  end
  localValue1(localValue2, dataCollection3, text11, stateFlag2, workingValue10, workingValue12)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  dataCollection3 = localValue2
  localValue2 = localValue2.Get
  text11 = "vcrush"
  stateFlag2 = "crush1"
  -- Beginner: result below is menu.
  localValue2 = localValue2(dataCollection3, text11, stateFlag2)
  dataCollection3 = true
  text11 = false
  stateFlag2 = true

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local rageUiOperation, text9, stringHelper3, text12, workingValue9, text15, text16, number3, workingValue13, text21
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text9 = text13
    rageUiOperation(text9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text9 = "~r~YOU LOSE:~s~ this vehicle forever."
    rageUiOperation(text9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text9 = "~g~YOU GET:~s~ +"
    stringHelper3 = tostring
    text12 = number2
    stringHelper3 = stringHelper3(text12)
    text12 = " lock slot token(s)."
    text9 = text9 .. stringHelper3 .. text12
    rageUiOperation(text9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text9 = "Cannot be undone."
    rageUiOperation(text9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text9 = "~y~Continue to final warning"
    stringHelper3 = ""
    text12 = {}
    text12.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue9 = true

    -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
    function text15()
      local localValue12, localValue22
    end
    text16 = RMenu
    number3 = text16
    text16 = text16.Get
    workingValue13 = "vcrush"
    text21 = "crush2"
    text16, number3, workingValue13, text21 = text16(number3, workingValue13, text21)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text9, stringHelper3, text12, workingValue9, text15, text16, number3, workingValue13, text21)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text9 = "~g~Cancel"
    stringHelper3 = ""
    text12 = {}
    text12.RightLabel = ""
    workingValue9 = true

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12, localValue22, localValue3) ===
    function text15(localValue12, localValue22, localValue3)
      local workingValue8, text14, stateFlag3, text17, text18
      if localValue3 then
        workingValue8 = RageUI
        workingValue8 = workingValue8.Visible
        text14 = RMenu
        stateFlag3 = text14
        text14 = text14.Get
        text17 = "vcrush"
        text18 = "main"
        -- Beginner: result below is menu.
        text14 = text14(stateFlag3, text17, text18)
        stateFlag3 = true
        workingValue8(text14, stateFlag3)
      end
    end
    text16 = RMenu
    number3 = text16
    text16 = text16.Get
    workingValue13 = "vcrush"
    text21 = "main"
    text16, number3, workingValue13, text21 = text16(number3, workingValue13, text21)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text9, stringHelper3, text12, workingValue9, text15, text16, number3, workingValue13, text21)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
  function workingValue12()
    local rageUiOperation, text9
  end
  localValue1(localValue2, dataCollection3, text11, stateFlag2, workingValue10, workingValue12)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  dataCollection3 = localValue2
  localValue2 = localValue2.Get
  text11 = "vcrush"
  stateFlag2 = "crush2"
  -- Beginner: result below is menu.
  localValue2 = localValue2(dataCollection3, text11, stateFlag2)
  dataCollection3 = true
  text11 = false
  stateFlag2 = true

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local rageUiOperation, text9, stringHelper3, text12, workingValue9, text15, text16, number3, workingValue13, text21
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text9 = "~r~FINAL"
    rageUiOperation(text9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text9 = "This vehicle will be removed from your garage and scrapped."
    rageUiOperation(text9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text9 = "You will not own it anymore."
    rageUiOperation(text9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text9 = "You will receive ~g~"
    stringHelper3 = tostring
    text12 = number2
    stringHelper3 = stringHelper3(text12)
    text12 = "~s~ lock slot token(s)."
    text9 = text9 .. stringHelper3 .. text12
    rageUiOperation(text9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text9 = "~r~YES - trade-in"
    stringHelper3 = ""
    text12 = {}
    text12.RightLabel = ""
    workingValue9 = workingValue7
    workingValue9 = nil ~= workingValue9

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12, localValue22, localValue3) ===
    function text15(localValue12, localValue22, localValue3)
      local workingValue8, text14, stateFlag3, text17, text18
      if localValue3 then
        workingValue8 = workingValue7
        if workingValue8 then
          workingValue8 = TriggerServerEvent
          text14 = "b09374a264"
          stateFlag3 = workingValue7
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b09374a264".
          workingValue8(text14, stateFlag3)
          workingValue8 = RageUI
          workingValue8 = workingValue8.Visible
          text14 = RMenu
          stateFlag3 = text14
          text14 = text14.Get
          text17 = "vcrush"
          text18 = "main"
          -- Beginner: result below is menu.
          text14 = text14(stateFlag3, text17, text18)
          stateFlag3 = true
          workingValue8(text14, stateFlag3)
          workingValue8 = nil
          workingValue7 = workingValue8
        end
      end
    end
    text16 = RMenu
    number3 = text16
    text16 = text16.Get
    workingValue13 = "vcrush"
    text21 = "main"
    text16, number3, workingValue13, text21 = text16(number3, workingValue13, text21)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text9, stringHelper3, text12, workingValue9, text15, text16, number3, workingValue13, text21)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text9 = "~g~NO - go back"
    stringHelper3 = ""
    text12 = {}
    text12.RightLabel = ""
    workingValue9 = true

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12, localValue22, localValue3) ===
    function text15(localValue12, localValue22, localValue3)
      local workingValue8, text14, stateFlag3, text17, text18
      if localValue3 then
        workingValue8 = RageUI
        workingValue8 = workingValue8.Visible
        text14 = RMenu
        stateFlag3 = text14
        text14 = text14.Get
        text17 = "vcrush"
        text18 = "crush1"
        -- Beginner: result below is menu.
        text14 = text14(stateFlag3, text17, text18)
        stateFlag3 = true
        workingValue8(text14, stateFlag3)
      end
    end
    text16 = RMenu
    number3 = text16
    text16 = text16.Get
    workingValue13 = "vcrush"
    text21 = "crush1"
    text16, number3, workingValue13, text21 = text16(number3, workingValue13, text21)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text9, stringHelper3, text12, workingValue9, text15, text16, number3, workingValue13, text21)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
  function workingValue12()
    local rageUiOperation, text9
  end
  localValue1(localValue2, dataCollection3, text11, stateFlag2, workingValue10, workingValue12)
end
rageUiOperation3(rageUiOperation4, rageUiOperation5, text6, workingValue2)
