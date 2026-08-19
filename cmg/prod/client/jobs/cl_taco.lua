--[[
    LEVEL 1 BEGINNER GUIDE — Taco
    ==================================

    File: cmg/prod/client/jobs/cl_taco.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Taco feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 44
      * Background threads: 0
      * Always-running loops: 4
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
local cmgOperation, stateFlag3, workingValue3, dataCollection, dataCollection3, dataCollection4, dataCollection5, workingValue4, dataCollection7, number17, number, number2, number4, rageUiOperation, tableHelper, rageUiOperation2, text2, text3, rageUiOperation3, rageUiOperation4, text4, text5, workingValue, cmgOperation3, text6, text7, workingValue2
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
stateFlag3 = "cfg/cfg_taco"
-- Beginner: result below is config.
cmgOperation = cmgOperation(stateFlag3)
stateFlag3 = false
workingValue3 = nil
dataCollection = {}
dataCollection3 = {}
dataCollection4 = {}
dataCollection5 = {}
dataCollection5.isSellingTacos = false
dataCollection5.tacoBoxObj = nil
dataCollection5.carryingBox = false
workingValue4 = cmgOperation.tacoPrice
workingValue4 = workingValue4[1]
dataCollection5.tacoPrice = workingValue4
dataCollection5.lastSentPayEvent = 0
dataCollection5.sellerMenu = false
dataCollection5.firstTimeTacoTruck = false
workingValue4 = nil
dataCollection7 = {}
number17 = 1
number = 1
number2 = 100
number4 = 1
for rageUiOperation = number, number2, number4 do
  tableHelper = table
  tableHelper = tableHelper.insert
  rageUiOperation2 = dataCollection7
  text2 = rageUiOperation
  tableHelper(rageUiOperation2, text2)
end

-- === HELPER FUNCTION (decompiler name: number; parameters: localValue1) ===
function number(localValue1)
  local localValue2, text10, stateFlag8, stringHelper2, stateFlag10
  localValue2 = tCMG
  localValue2 = localValue2.notify
  text10 = "~g~Now selling tacos!"
  -- Beginner: Show a notification to the player.
  localValue2(text10)
  localValue2 = SetVehicleDoorOpen
  text10 = localValue1
  stateFlag8 = 5
  stringHelper2 = true
  stateFlag10 = true
  localValue2(text10, stateFlag8, stringHelper2, stateFlag10)
  workingValue4 = localValue1
  dataCollection5.isSellingTacos = true
  localValue2 = FreezeEntityPosition
  text10 = localValue1
  stateFlag8 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(text10, stateFlag8)
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
  function text10()
    local vehicle, cmgOperation2, stateFlag7, dataCollection2
    while true do
      vehicle = GetVehiclePedIsIn
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      cmgOperation2 = cmgOperation2()
      stateFlag7 = false
      -- Beginner: result below is currentVehicle.
      vehicle = vehicle(cmgOperation2, stateFlag7)
      cmgOperation2 = workingValue4
      if vehicle ~= cmgOperation2 then
        break
      end
      vehicle = dataCollection5.isSellingTacos
      if not vehicle then
        break
      end
      vehicle = Wait
      cmgOperation2 = 100
      vehicle(cmgOperation2)
    end
    vehicle = tCMG
    vehicle = vehicle.notify
    cmgOperation2 = "~r~Stopped selling tacos!"
    -- Beginner: Show a notification to the player.
    vehicle(cmgOperation2)
    vehicle = SetVehicleDoorShut
    cmgOperation2 = localValue1
    stateFlag7 = 5
    dataCollection2 = true
    vehicle(cmgOperation2, stateFlag7, dataCollection2)
    vehicle = FreezeEntityPosition
    cmgOperation2 = localValue1
    stateFlag7 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    vehicle(cmgOperation2, stateFlag7)
    vehicle = nil
    workingValue4 = vehicle
    dataCollection5.isSellingTacos = false
    vehicle = TriggerServerEvent
    cmgOperation2 = "269fa358fc"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "269fa358fc".
    vehicle(cmgOperation2)
    vehicle = Wait
    cmgOperation2 = 100
    vehicle(cmgOperation2)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(text10)
end

-- === HELPER FUNCTION (decompiler name: number2; parameters: localValue1) ===
function number2(localValue1)
  local localValue2, text10, stateFlag8, stringHelper2
  localValue2 = SetVehicleDoorShut
  text10 = localValue1
  stateFlag8 = 5
  stringHelper2 = true
  localValue2(text10, stateFlag8, stringHelper2)
  localValue2 = nil
  workingValue4 = localValue2
  dataCollection5.isSellingTacos = false
  localValue2 = TriggerServerEvent
  text10 = "269fa358fc"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "269fa358fc".
  localValue2(text10)
end
number4 = RMenu
number4 = number4.Add
rageUiOperation = "tacojob"
tableHelper = ""
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text2 = ""
text3 = "Taco Job"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text4 = "cmg_taco"
text5 = "tacos_menu"
rageUiOperation2, text2, text3, rageUiOperation3, rageUiOperation4, text4, text5, workingValue, cmgOperation3, text6, text7, workingValue2 = rageUiOperation2(text2, text3, rageUiOperation3, rageUiOperation4, text4, text5)
number4(rageUiOperation, tableHelper, rageUiOperation2, text2, text3, rageUiOperation3, rageUiOperation4, text4, text5, workingValue, cmgOperation3, text6, text7, workingValue2)
number4 = RMenu
number4 = number4.Add
rageUiOperation = "tacocustomer"
tableHelper = ""
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text2 = ""
text3 = "Tacos"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text4 = "cmg_taco"
text5 = "tacos_menu"
rageUiOperation2, text2, text3, rageUiOperation3, rageUiOperation4, text4, text5, workingValue, cmgOperation3, text6, text7, workingValue2 = rageUiOperation2(text2, text3, rageUiOperation3, rageUiOperation4, text4, text5)
number4(rageUiOperation, tableHelper, rageUiOperation2, text2, text3, rageUiOperation3, rageUiOperation4, text4, text5, workingValue, cmgOperation3, text6, text7, workingValue2)

-- === HELPER FUNCTION (decompiler name: number4; parameters: localValue1) ===
function number4(localValue1)
  local localValue2, text10, stateFlag8, stringHelper2, stateFlag10
  localValue2 = cmgOperation.tacoPrice
  localValue2 = localValue2[1]
  if localValue1 < localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.notify
    text10 = "~r~The minimum price per taco is \194\163"
    stateFlag8 = getMoneyStringFormatted
    stringHelper2 = tostring
    stateFlag10 = cmgOperation.tacoPrice
    stateFlag10 = stateFlag10[1]
    stringHelper2, stateFlag10 = stringHelper2(stateFlag10)
    stateFlag8 = stateFlag8(stringHelper2, stateFlag10)
    stringHelper2 = "!"
    text10 = text10 .. stateFlag8 .. stringHelper2
    -- Beginner: Show a notification to the player.
    localValue2(text10)
    localValue2 = cmgOperation.tacoPrice
    localValue2 = localValue2[1]
    return localValue2
  end
  localValue2 = cmgOperation.tacoPrice
  localValue2 = localValue2[2]
  if localValue1 > localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.notify
    text10 = "~r~The maximum price per taco is \194\163"
    stateFlag8 = getMoneyStringFormatted
    stringHelper2 = tostring
    stateFlag10 = cmgOperation.tacoPrice
    stateFlag10 = stateFlag10[2]
    stringHelper2, stateFlag10 = stringHelper2(stateFlag10)
    stateFlag8 = stateFlag8(stringHelper2, stateFlag10)
    stringHelper2 = "!"
    text10 = text10 .. stateFlag8 .. stringHelper2
    localValue2(text10)
    localValue2 = cmgOperation.tacoPrice
    localValue2 = localValue2[2]
    return localValue2
  end
  return localValue1
end
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
tableHelper = 1.0
rageUiOperation2 = RMenu
text2 = rageUiOperation2
rageUiOperation2 = rageUiOperation2.Get
text3 = "tacojob"
rageUiOperation3 = ""
-- Beginner: result below is menu.
rageUiOperation2 = rageUiOperation2(text2, text3, rageUiOperation3)
text2 = nil

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  text10 = localValue2
  localValue2 = localValue2.Get
  stateFlag8 = "tacojob"
  stringHelper2 = ""
  -- Beginner: result below is menu.
  localValue2 = localValue2(text10, stateFlag8, stringHelper2)
  text10 = true
  stateFlag8 = true
  stringHelper2 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: none) ===
  function stateFlag10()
    local vehicle, cmgOperation2, stateFlag7, dataCollection2, stateFlag9, text11, dataCollection6, stateFlag12, workingValue6, workingValue8
    vehicle = RageUI
    vehicle = vehicle.ButtonWithStyle
    cmgOperation2 = "Price Per Taco"
    stateFlag7 = ""
    dataCollection2 = {}
    stateFlag9 = "\194\163"
    text11 = getMoneyStringFormatted
    dataCollection6 = dataCollection5.tacoPrice
    text11 = text11(dataCollection6)
    stateFlag9 = stateFlag9 .. text11
    dataCollection2.RightLabel = stateFlag9
    stateFlag9 = true

    -- === HELPER FUNCTION (decompiler name: text11; parameters: localValue12, localValue22, localValue3) ===
    function text11(localValue12, localValue22, localValue3)
      local localValue4, cmgOperation4, cmgOperation5, stateFlag11
      if localValue3 then
        localValue4 = tonumber
        cmgOperation4 = CMG
        cmgOperation4 = cmgOperation4.GetRageInputText
        cmgOperation5 = "Price Per Taco"
        cmgOperation4, cmgOperation5, stateFlag11 = cmgOperation4(cmgOperation5)
        localValue4 = localValue4(cmgOperation4, cmgOperation5, stateFlag11)
        if localValue4 then
          cmgOperation4 = number4
          cmgOperation5 = localValue4
          cmgOperation4 = cmgOperation4(cmgOperation5)
          dataCollection5.tacoPrice = cmgOperation4
          cmgOperation4 = dataCollection5.isSellingTacos
          if cmgOperation4 then
            cmgOperation4 = TriggerServerEvent
            cmgOperation5 = "b5d6ea283f"
            stateFlag11 = dataCollection5.tacoPrice
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b5d6ea283f".
            cmgOperation4(cmgOperation5, stateFlag11)
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    vehicle(cmgOperation2, stateFlag7, dataCollection2, stateFlag9, text11)
    vehicle = dataCollection5.isSellingTacos
    if not vehicle then
      vehicle = RageUI
      vehicle = vehicle.ButtonWithStyle
      cmgOperation2 = "Start Selling"
      stateFlag7 = ""
      dataCollection2 = {}
      dataCollection2.RightLabel = ""
      stateFlag9 = true

      -- === HELPER FUNCTION (decompiler name: text11; parameters: localValue12, localValue22, localValue3) ===
      function text11(localValue12, localValue22, localValue3)
        local localValue4, cmgOperation4, cmgOperation5, stateFlag11, workingValue5, workingValue7
        if localValue3 then
          localValue4 = GetEntityCoords
          cmgOperation4 = CMG
          cmgOperation4 = cmgOperation4.getPlayerPed
          cmgOperation4, cmgOperation5, stateFlag11, workingValue5, workingValue7 = cmgOperation4()
          -- Beginner: result below is entityCoords.
          localValue4 = localValue4(cmgOperation4, cmgOperation5, stateFlag11, workingValue5, workingValue7)
          cmgOperation4 = GetVehiclePedIsIn
          cmgOperation5 = CMG
          cmgOperation5 = cmgOperation5.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation5 = cmgOperation5()
          stateFlag11 = false
          -- Beginner: result below is currentVehicle.
          cmgOperation4 = cmgOperation4(cmgOperation5, stateFlag11)
          cmgOperation5 = TriggerServerEvent
          stateFlag11 = "5b71435d4a"
          workingValue5 = localValue4
          workingValue7 = dataCollection5.tacoPrice
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5b71435d4a".
          cmgOperation5(stateFlag11, workingValue5, workingValue7)
          cmgOperation5 = number
          stateFlag11 = cmgOperation4
          cmgOperation5(stateFlag11)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      vehicle(cmgOperation2, stateFlag7, dataCollection2, stateFlag9, text11)
    else
      vehicle = CMG
      vehicle = vehicle.getClientUserId
      -- Beginner: result below is userId.
      vehicle = vehicle()
      cmgOperation2 = 0
      stateFlag7 = 0
      dataCollection2 = dataCollection
      dataCollection2 = dataCollection2[vehicle]
      if dataCollection2 then
        dataCollection2 = dataCollection
        dataCollection2 = dataCollection2[vehicle]
        cmgOperation2 = dataCollection2.currentStock
        dataCollection2 = dataCollection
        dataCollection2 = dataCollection2[vehicle]
        stateFlag7 = dataCollection2.totalMoneyMade
      end
      dataCollection2 = RageUI
      dataCollection2 = dataCollection2.ButtonWithStyle
      stateFlag9 = "Current Stock:"
      text11 = ""
      dataCollection6 = {}
      dataCollection6.RightLabel = cmgOperation2
      stateFlag12 = true

      -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
      function workingValue6()
        local localValue12, localValue22
      end
      dataCollection2(stateFlag9, text11, dataCollection6, stateFlag12, workingValue6)
      dataCollection2 = RageUI
      dataCollection2 = dataCollection2.ButtonWithStyle
      stateFlag9 = "Total money made:"
      text11 = ""
      dataCollection6 = {}
      stateFlag12 = "\194\163"
      workingValue6 = getMoneyStringFormatted
      workingValue8 = stateFlag7
      workingValue6 = workingValue6(workingValue8)
      stateFlag12 = stateFlag12 .. workingValue6
      dataCollection6.RightLabel = stateFlag12
      stateFlag12 = true

      -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
      function workingValue6()
        local localValue12, localValue22
      end
      -- Beginner: Draw a selectable RageUI menu button.
      dataCollection2(stateFlag9, text11, dataCollection6, stateFlag12, workingValue6)
      dataCollection2 = RageUI
      dataCollection2 = dataCollection2.ButtonWithStyle
      stateFlag9 = "Stop Selling"
      text11 = ""
      dataCollection6 = {}
      dataCollection6.RightLabel = ""
      stateFlag12 = true

      -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue12, localValue22, localValue3) ===
      function workingValue6(localValue12, localValue22, localValue3)
        local localValue4, cmgOperation4, cmgOperation5
        if localValue3 then
          localValue4 = GetVehiclePedIsIn
          cmgOperation4 = CMG
          cmgOperation4 = cmgOperation4.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation4 = cmgOperation4()
          cmgOperation5 = false
          -- Beginner: result below is currentVehicle.
          localValue4 = localValue4(cmgOperation4, cmgOperation5)
          cmgOperation4 = number2
          cmgOperation5 = localValue4
          cmgOperation4(cmgOperation5)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      dataCollection2(stateFlag9, text11, dataCollection6, stateFlag12, workingValue6)
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
  function cmgOperation6()
    local vehicle, cmgOperation2
  end
  localValue1(localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6)
end
rageUiOperation(tableHelper, rageUiOperation2, text2, text3)
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
tableHelper = 1.0
rageUiOperation2 = RMenu
text2 = rageUiOperation2
rageUiOperation2 = rageUiOperation2.Get
text3 = "tacocustomer"
rageUiOperation3 = ""
-- Beginner: result below is menu.
rageUiOperation2 = rageUiOperation2(text2, text3, rageUiOperation3)
text2 = nil

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  text10 = localValue2
  localValue2 = localValue2.Get
  stateFlag8 = "tacocustomer"
  stringHelper2 = ""
  -- Beginner: result below is menu.
  localValue2 = localValue2(text10, stateFlag8, stringHelper2)
  text10 = true
  stateFlag8 = true
  stringHelper2 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: none) ===
  function stateFlag10()
    local vehicle, cmgOperation2, stateFlag7, dataCollection2, stateFlag9, text11, dataCollection6, stateFlag12
    vehicle = dataCollection5.isSellingTacos
    if not vehicle then
      vehicle = workingValue3
      if vehicle then
        vehicle = RageUI
        vehicle = vehicle.ButtonWithStyle
        cmgOperation2 = "Price Per Taco"
        stateFlag7 = ""
        dataCollection2 = {}
        stateFlag9 = "\194\163"
        text11 = getMoneyStringFormatted
        stateFlag12 = workingValue3
        dataCollection6 = dataCollection
        dataCollection6 = dataCollection6[stateFlag12]
        dataCollection6 = dataCollection6.amount
        text11 = text11(dataCollection6)
        stateFlag9 = stateFlag9 .. text11
        dataCollection2.RightLabel = stateFlag9
        stateFlag9 = true

        -- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
        function text11()
          local localValue12, localValue22
        end
        -- Beginner: Draw a selectable RageUI menu button.
        vehicle(cmgOperation2, stateFlag7, dataCollection2, stateFlag9, text11)
        vehicle = RageUI
        vehicle = vehicle.List
        cmgOperation2 = "Amount of tacos"
        stateFlag7 = dataCollection7
        dataCollection2 = number17
        stateFlag9 = ""
        text11 = {}
        dataCollection6 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue3, localValue4) ===
        function stateFlag12(localValue12, localValue22, localValue3, localValue4)
          local cmgOperation4
          cmgOperation4 = number17
          if localValue4 ~= cmgOperation4 then
            number17 = localValue4
          end
        end
        -- Beginner: Draw a RageUI list selector.
        vehicle(cmgOperation2, stateFlag7, dataCollection2, stateFlag9, text11, dataCollection6, stateFlag12)
        vehicle = RageUI
        vehicle = vehicle.ButtonWithStyle
        cmgOperation2 = "Purchase tacos"
        stateFlag7 = ""
        dataCollection2 = {}
        dataCollection2.RightLabel = ""
        stateFlag9 = true

        -- === HELPER FUNCTION (decompiler name: text11; parameters: localValue12, localValue22, localValue3) ===
        function text11(localValue12, localValue22, localValue3)
          local localValue4, cmgOperation4, cmgOperation5, stateFlag11
          if localValue3 then
            localValue4 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            localValue4 = localValue4()
            cmgOperation4 = dataCollection5.lastSentPayEvent
            localValue4 = localValue4 - cmgOperation4
            if localValue4 > 50 then
              localValue4 = TriggerServerEvent
              cmgOperation4 = "868ed10012"
              cmgOperation5 = workingValue3
              stateFlag11 = number17
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "868ed10012".
              localValue4(cmgOperation4, cmgOperation5, stateFlag11)
              localValue4 = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              localValue4 = localValue4()
              dataCollection5.lastSentPayEvent = localValue4
            end
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        vehicle(cmgOperation2, stateFlag7, dataCollection2, stateFlag9, text11)
    end
    else
      vehicle = RageUI
      vehicle = vehicle.Visible
      cmgOperation2 = RMenu
      stateFlag7 = cmgOperation2
      cmgOperation2 = cmgOperation2.Get
      dataCollection2 = "tacocustomer"
      stateFlag9 = ""
      -- Beginner: result below is menu.
      cmgOperation2 = cmgOperation2(stateFlag7, dataCollection2, stateFlag9)
      stateFlag7 = true
      vehicle(cmgOperation2, stateFlag7)
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
  function cmgOperation6()
    local vehicle, cmgOperation2
  end
  localValue1(localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6)
end
rageUiOperation(tableHelper, rageUiOperation2, text2, text3)
rageUiOperation = RegisterNetEvent
tableHelper = "f53a9c58a9"
-- Beginner: this function handles network event "f53a9c58a9".

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1, localValue2) ===
function rageUiOperation2(localValue1, localValue2)
  local text10, stateFlag8
  text10 = dataCollection5.isSellingTacos
  if text10 then
    stateFlag8 = workingValue3
    text10 = dataCollection
    text10 = text10[stateFlag8]
    text10.currentStock = localValue1
    stateFlag8 = workingValue3
    text10 = dataCollection
    text10 = text10[stateFlag8]
    text10.totalMoneyMade = localValue2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f53a9c58a9".
rageUiOperation(tableHelper, rageUiOperation2)
rageUiOperation = RegisterNetEvent
tableHelper = "a269383e94"
-- Beginner: this function handles network event "a269383e94".

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1, localValue2) ===
function rageUiOperation2(localValue1, localValue2)
  local text10
  text10 = dataCollection
  text10 = text10[localValue1]
  text10.amount = localValue2
end
rageUiOperation(tableHelper, rageUiOperation2)
-- Beginner: this function handles network event "a269383e94".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper, number3, number5, number6, text, stateFlag, number7
  -- Beginner: this function handles network event "a269383e94".

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local vehicle, cmgOperation2, stateFlag7, dataCollection2, stateFlag9
    vehicle = dataCollection5.isSellingTacos
    if not vehicle then
      vehicle = workingValue3
      if vehicle then
        vehicle = workingValue3
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.getClientUserId
        -- Beginner: result below is userId.
        cmgOperation2 = cmgOperation2()
        if vehicle ~= cmgOperation2 then
          vehicle = drawNativeNotification
          cmgOperation2 = "Press ~INPUT_CONTEXT~ to buy tacos"
          -- Beginner: Show a GTA-style notification/help prompt.
          vehicle(cmgOperation2)
          vehicle = IsControlJustPressed
          cmgOperation2 = 0
          stateFlag7 = 38
          vehicle = vehicle(cmgOperation2, stateFlag7)
          if vehicle then
            vehicle = RageUI
            vehicle = vehicle.Visible
            cmgOperation2 = RMenu
            stateFlag7 = cmgOperation2
            cmgOperation2 = cmgOperation2.Get
            dataCollection2 = "tacocustomer"
            stateFlag9 = ""
            -- Beginner: result below is menu.
            cmgOperation2 = cmgOperation2(stateFlag7, dataCollection2, stateFlag9)
            stateFlag7 = true
            vehicle(cmgOperation2, stateFlag7)
          end
        end
      end
    end
  end
  if localValue1 then
    text10 = tCMG
    text10 = text10.removeArea
    stateFlag8 = "tacopurchase_"
    stringHelper2 = tostring
    stateFlag10 = localValue1
    stringHelper2 = stringHelper2(stateFlag10)
    stateFlag8 = stateFlag8 .. stringHelper2
    text10(stateFlag8)
  else
    text10 = pairs
    stateFlag8 = dataCollection
    text10, stateFlag8, stringHelper2, stateFlag10 = text10(stateFlag8)
    for cmgOperation6, number16 in text10, stateFlag8, stringHelper2, stateFlag10 do
      cmgOperation7 = tCMG
      cmgOperation7 = cmgOperation7.removeArea
      text12 = "tacopurchase_"
      stringHelper = tostring
      number3 = cmgOperation6
      stringHelper = stringHelper(number3)
      text12 = text12 .. stringHelper
      cmgOperation7(text12)
      cmgOperation7 = number16.position
      if cmgOperation7 then
        cmgOperation7 = CMG
        cmgOperation7 = cmgOperation7.createArea
        text12 = "tacopurchase_"
        stringHelper = tostring
        number3 = cmgOperation6
        stringHelper = stringHelper(number3)
        text12 = text12 .. stringHelper
        stringHelper = number16.position
        number3 = 7.0
        number5 = 5.0
        number6 = nil
        text = nil
        stateFlag = localValue2
        number7 = nil
        -- Beginner: Create an interaction area around a world position.
        cmgOperation7(text12, stringHelper, number3, number5, number6, text, stateFlag, number7)
      end
    end
  end
end

-- === HELPER FUNCTION: tableHelper() ===
function tableHelper()
  local localValue1, localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper, number3, number5, number6, text, stateFlag, number7, stateFlag2, number8, number9, number10, number11, number12, stateFlag4, stateFlag5, stateFlag6, text8, text9, number13, number14, number15
  localValue1 = pairs
  localValue2 = dataCollection3
  localValue1, localValue2, text10, stateFlag8 = localValue1(localValue2)
  for stringHelper2, stateFlag10 in localValue1, localValue2, text10, stateFlag8 do
    cmgOperation6 = tCMG
    cmgOperation6 = cmgOperation6.removeMarker
    number16 = stateFlag10
    cmgOperation6(number16)
  end
  localValue1 = pairs
  localValue2 = dataCollection4
  localValue1, localValue2, text10, stateFlag8 = localValue1(localValue2)
  for stringHelper2, stateFlag10 in localValue1, localValue2, text10, stateFlag8 do
    cmgOperation6 = tCMG
    cmgOperation6 = cmgOperation6.removeBlip
    number16 = stateFlag10
    cmgOperation6(number16)
  end
  localValue1 = {}
  dataCollection3 = localValue1
  localValue1 = {}
  dataCollection4 = localValue1
  localValue1 = table
  localValue1 = localValue1.insert
  localValue2 = dataCollection4
  text10 = tCMG
  text10 = text10.addBlip
  stateFlag8 = cmgOperation.boxPickup
  stateFlag8 = stateFlag8.x
  stringHelper2 = cmgOperation.boxPickup
  stringHelper2 = stringHelper2.y
  stateFlag10 = cmgOperation.boxPickup
  stateFlag10 = stateFlag10.z
  cmgOperation6 = 52
  number16 = 17
  cmgOperation7 = "Taco Bomb"
  text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper, number3, number5, number6, text, stateFlag, number7, stateFlag2, number8, number9, number10, number11, number12, stateFlag4, stateFlag5, stateFlag6, text8, text9, number13, number14, number15 = text10(stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7)
  localValue1(localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper, number3, number5, number6, text, stateFlag, number7, stateFlag2, number8, number9, number10, number11, number12, stateFlag4, stateFlag5, stateFlag6, text8, text9, number13, number14, number15)
  localValue1 = RequestStreamedTextureDict
  localValue2 = "tacomarker"
  text10 = true
  localValue1(localValue2, text10)
  while true do
    localValue1 = HasStreamedTextureDictLoaded
    localValue2 = "tacomarker"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, text10, stateFlag8 = localValue1(localValue2)
  for stringHelper2, stateFlag10 in localValue1, localValue2, text10, stateFlag8 do
    cmgOperation6 = stateFlag10.position
    if cmgOperation6 then
      cmgOperation6 = table
      cmgOperation6 = cmgOperation6.insert
      number16 = dataCollection4
      cmgOperation7 = tCMG
      cmgOperation7 = cmgOperation7.addBlip
      text12 = stateFlag10.position
      text12 = text12.x
      stringHelper = stateFlag10.position
      stringHelper = stringHelper.y
      number3 = stateFlag10.position
      number3 = number3.z
      number5 = 52
      number6 = 17
      text = "Taco Seller"
      cmgOperation7, text12, stringHelper, number3, number5, number6, text, stateFlag, number7, stateFlag2, number8, number9, number10, number11, number12, stateFlag4, stateFlag5, stateFlag6, text8, text9, number13, number14, number15 = cmgOperation7(text12, stringHelper, number3, number5, number6, text)
      cmgOperation6(number16, cmgOperation7, text12, stringHelper, number3, number5, number6, text, stateFlag, number7, stateFlag2, number8, number9, number10, number11, number12, stateFlag4, stateFlag5, stateFlag6, text8, text9, number13, number14, number15)
      cmgOperation6 = GetPlayerFromServerId
      number16 = stateFlag10.source
      -- Beginner: result below is playerIndex.
      cmgOperation6 = cmgOperation6(number16)
      if -1 ~= cmgOperation6 then
        number16 = GetVehiclePedIsIn
        cmgOperation7 = GetPlayerPed
        text12 = cmgOperation6
        -- Beginner: result below is playerPed.
        cmgOperation7 = cmgOperation7(text12)
        text12 = false
        -- Beginner: result below is currentVehicle.
        number16 = number16(cmgOperation7, text12)
        cmgOperation7 = GetOffsetFromEntityInWorldCoords
        text12 = number16
        stringHelper = 0.0
        number3 = -2.0
        number5 = 0.0
        cmgOperation7 = cmgOperation7(text12, stringHelper, number3, number5)
        stateFlag10.position = cmgOperation7
        cmgOperation7 = table
        cmgOperation7 = cmgOperation7.insert
        text12 = dataCollection3
        stringHelper = tCMG
        stringHelper = stringHelper.addMarker
        number3 = stateFlag10.position
        number3 = number3.x
        number5 = stateFlag10.position
        number5 = number5.y
        number6 = stateFlag10.position
        number6 = number6.z
        number6 = number6 + 2.5
        text = 1.0
        stateFlag = 1.0
        number7 = 1.0
        stateFlag2 = 255
        number8 = 255
        number9 = 255
        number10 = 255
        number11 = 30
        number12 = 9
        stateFlag4 = true
        stateFlag5 = true
        stateFlag6 = true
        text8 = "tacomarker"
        text9 = "taco"
        number13 = 90.0
        number14 = 0.0
        number15 = 0.0
        stringHelper, number3, number5, number6, text, stateFlag, number7, stateFlag2, number8, number9, number10, number11, number12, stateFlag4, stateFlag5, stateFlag6, text8, text9, number13, number14, number15 = stringHelper(number3, number5, number6, text, stateFlag, number7, stateFlag2, number8, number9, number10, number11, number12, stateFlag4, stateFlag5, stateFlag6, text8, text9, number13, number14, number15)
        cmgOperation7(text12, stringHelper, number3, number5, number6, text, stateFlag, number7, stateFlag2, number8, number9, number10, number11, number12, stateFlag4, stateFlag5, stateFlag6, text8, text9, number13, number14, number15)
      end
    end
  end
end
rageUiOperation2 = RegisterNetEvent
text2 = "fc102d5e13"
-- Beginner: this function handles network event "fc102d5e13".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, text10, stateFlag8, stringHelper2, stateFlag10
  localValue2 = workingValue3
  if localValue1 == localValue2 then
    localValue2 = RageUI
    localValue2 = localValue2.Visible
    text10 = RMenu
    stateFlag8 = text10
    text10 = text10.Get
    stringHelper2 = "tacocustomer"
    stateFlag10 = ""
    -- Beginner: result below is menu.
    text10 = text10(stateFlag8, stringHelper2, stateFlag10)
    stateFlag8 = false
    localValue2(text10, stateFlag8)
  end
  localValue2 = dataCollection
  localValue2[localValue1] = nil
  localValue2 = rageUiOperation
  text10 = localValue1
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue2(text10)
  localValue2 = tableHelper
  localValue2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fc102d5e13".
rageUiOperation2(text2, text3)
rageUiOperation2 = RegisterNetEvent
text2 = "36bd827f27"
-- Beginner: this function handles network event "36bd827f27".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2
  dataCollection = localValue1
  localValue2 = rageUiOperation
  localValue2()
  localValue2 = tableHelper
  localValue2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "36bd827f27".
rageUiOperation2(text2, text3)
rageUiOperation2 = RegisterCommand
text2 = "taco"
-- Beginner: this function is the command handler for "taco".

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6
  localValue1 = GetVehiclePedIsIn
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  text10 = false
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1(localValue2, text10)
  localValue2 = GetEntityModel
  text10 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(text10)
  text10 = stateFlag3
  if text10 then
    if 1951180813 == localValue2 then
      dataCollection5.sellerMenu = true
      text10 = RageUI
      text10 = text10.Visible
      stateFlag8 = RMenu
      stringHelper2 = stateFlag8
      stateFlag8 = stateFlag8.Get
      stateFlag10 = "tacojob"
      cmgOperation6 = ""
      -- Beginner: result below is menu.
      stateFlag8 = stateFlag8(stringHelper2, stateFlag10, cmgOperation6)
      stringHelper2 = true
      text10(stateFlag8, stringHelper2)
    else
      text10 = tCMG
      text10 = text10.notify
      stateFlag8 = "~r~You need to be in the taco truck!"
      -- Beginner: Show a notification to the player.
      text10(stateFlag8)
    end
  else
    text10 = tCMG
    text10 = text10.notify
    stateFlag8 = "~r~You do not have the taco seller job!"
    text10(stateFlag8)
  end
end
rageUiOperation3 = false
-- Beginner: Register a chat/console command. Event/command: "taco".
rageUiOperation2(text2, text3, rageUiOperation3)
rageUiOperation2 = Citizen
rageUiOperation2 = rageUiOperation2.CreateThread

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12
  while true do
    localValue1 = GetEntityCoords
    localValue2 = CMG
    localValue2 = localValue2.getPlayerPed
    localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12 = localValue2()
    -- Beginner: result below is entityCoords.
    localValue1 = localValue1(localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12)
    localValue2 = pairs
    text10 = dataCollection
    localValue2, text10, stateFlag8, stringHelper2 = localValue2(text10)
    for stateFlag10, cmgOperation6 in localValue2, text10, stateFlag8, stringHelper2 do
      number16 = cmgOperation6.position
      if number16 then
        number16 = cmgOperation6.position
        number16 = localValue1 - number16
        number16 = #number16
        if number16 < 7 then
          workingValue3 = stateFlag10
          while true do
            cmgOperation7 = GetEntityCoords
            text12 = CMG
            text12 = text12.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            text12 = text12()
            -- Beginner: result below is entityCoords.
            cmgOperation7 = cmgOperation7(text12)
            text12 = cmgOperation6.position
            cmgOperation7 = cmgOperation7 - text12
            cmgOperation7 = #cmgOperation7
            if not (cmgOperation7 <= 7) then
              break
            end
            cmgOperation7 = Wait
            text12 = 100
            cmgOperation7(text12)
          end
        end
        cmgOperation7 = nil
        workingValue3 = cmgOperation7
      end
    end
    localValue2 = Wait
    text10 = 3000
    localValue2(text10)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiOperation2(text2)

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2, text10, stateFlag8, stringHelper2, stateFlag10
  localValue1 = workingValue4
  if localValue1 then
    localValue1 = SetVehicleEngineOn
    localValue2 = workingValue4
    text10 = false
    stateFlag8 = true
    stringHelper2 = false
    localValue1(localValue2, text10, stateFlag8, stringHelper2)
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = GetEntityModel
    text10 = CMG
    text10 = text10.getPlayerVehicle
    text10, stateFlag8, stringHelper2, stateFlag10 = text10()
    -- Beginner: result below is modelHash.
    localValue2 = localValue2(text10, stateFlag8, stringHelper2, stateFlag10)
    if 1951180813 == localValue2 then
      localValue2 = dataCollection5.firstTimeTacoTruck
      if not localValue2 then
        dataCollection5.firstTimeTacoTruck = true
        localValue2 = CMG
        localValue2 = localValue2.initializeInstructionalJobScaleform
        text10 = "Taco Seller"
        stateFlag8 = "Head to Taco Bomb to stock up!"
        localValue2(text10, stateFlag8)
        localValue2 = SetNewWaypoint
        text10 = cmgOperation.boxPickup
        text10 = text10.x
        stateFlag8 = cmgOperation.boxPickup
        stateFlag8 = stateFlag8.y
        localValue2(text10, stateFlag8)
      end
    else
      localValue2 = dataCollection5.sellerMenu
      if localValue2 then
        dataCollection5.sellerMenu = false
        localValue2 = RageUI
        localValue2 = localValue2.Visible
        text10 = RMenu
        stateFlag8 = text10
        text10 = text10.Get
        stringHelper2 = "tacojob"
        stateFlag10 = ""
        -- Beginner: result below is menu.
        text10 = text10(stateFlag8, stringHelper2, stateFlag10)
        stateFlag8 = false
        localValue2(text10, stateFlag8)
      end
    end
  else
    localValue2 = dataCollection5.sellerMenu
    if localValue2 then
      dataCollection5.sellerMenu = false
      localValue2 = RageUI
      localValue2 = localValue2.Visible
      text10 = RMenu
      stateFlag8 = text10
      text10 = text10.Get
      stringHelper2 = "tacojob"
      stateFlag10 = ""
      -- Beginner: result below is menu.
      text10 = text10(stateFlag8, stringHelper2, stateFlag10)
      stateFlag8 = false
      localValue2(text10, stateFlag8)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, text10, stateFlag8, stringHelper2
  localValue2 = GetEntityBoneIndexByName
  text10 = localValue1
  stateFlag8 = "door_pside_r"
  localValue2 = localValue2(text10, stateFlag8)
  text10 = GetWorldPositionOfEntityBone
  stateFlag8 = localValue1
  stringHelper2 = localValue2
  text10 = text10(stateFlag8, stringHelper2)
  stateFlag8 = CMG
  stateFlag8 = stateFlag8.getPlayerCoords
  -- Beginner: result below is playerCoords.
  stateFlag8 = stateFlag8()
  stateFlag8 = text10 - stateFlag8
  stateFlag8 = #stateFlag8
  stringHelper2 = 2.5
  stateFlag8 = stateFlag8 < stringHelper2
  return stateFlag8
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper, number3, number5
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = dataCollection5.carryingBox
  if localValue2 then
    localValue2 = IsEntityPlayingAnim
    text10 = localValue1
    stateFlag8 = "anim@heists@box_carry@"
    stringHelper2 = "idle"
    stateFlag10 = 3
    localValue2 = localValue2(text10, stateFlag8, stringHelper2, stateFlag10)
    if not localValue2 then
      localValue2 = TaskPlayAnim
      text10 = localValue1
      stateFlag8 = "anim@heists@box_carry@"
      stringHelper2 = "idle"
      stateFlag10 = 2.0
      cmgOperation6 = 2.0
      number16 = -1
      cmgOperation7 = 51
      text12 = 0
      stringHelper = false
      number3 = false
      number5 = false
      -- Beginner: Play an animation on a ped.
      localValue2(text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper, number3, number5)
    end
    localValue2 = CMG
    localValue2 = localValue2.getClosestVehicle
    text10 = 7.0
    localValue2 = localValue2(text10)
    text10 = GetEntityModel
    stateFlag8 = localValue2
    -- Beginner: result below is modelHash.
    text10 = text10(stateFlag8)
    if 1951180813 ~= text10 then
      return
    end
    text10 = text2
    stateFlag8 = localValue2
    text10 = text10(stateFlag8)
    if not text10 then
      return
    end
    text10 = drawNativeNotification
    stateFlag8 = "Press ~INPUT_CONTEXT~ to stock tacos."
    -- Beginner: Show a GTA-style notification/help prompt.
    text10(stateFlag8)
    text10 = IsControlJustPressed
    stateFlag8 = 0
    stringHelper2 = 38
    text10 = text10(stateFlag8, stringHelper2)
    if text10 then
      text10 = TriggerServerEvent
      stateFlag8 = "d4d2503493"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d4d2503493".
      text10(stateFlag8)
      text10 = SetVehicleDoorOpen
      stateFlag8 = localValue2
      stringHelper2 = 2
      stateFlag10 = false
      cmgOperation6 = false
      text10(stateFlag8, stringHelper2, stateFlag10, cmgOperation6)
      text10 = SetVehicleDoorOpen
      stateFlag8 = localValue2
      stringHelper2 = 3
      stateFlag10 = false
      cmgOperation6 = false
      text10(stateFlag8, stringHelper2, stateFlag10, cmgOperation6)
      text10 = SetTimeout
      stateFlag8 = 1000

      -- === HELPER FUNCTION: stringHelper2() ===
      function stringHelper2()
        local vehicle, cmgOperation2, stateFlag7, dataCollection2
        vehicle = SetVehicleDoorShut
        cmgOperation2 = localValue2
        stateFlag7 = 2
        dataCollection2 = false
        vehicle(cmgOperation2, stateFlag7, dataCollection2)
        vehicle = SetVehicleDoorShut
        cmgOperation2 = localValue2
        stateFlag7 = 3
        dataCollection2 = false
        vehicle(cmgOperation2, stateFlag7, dataCollection2)
      end
      text10(stateFlag8, stringHelper2)
    end
  else
    localValue2 = CMG
    localValue2 = localValue2.deleteThreadOnTick
    text10 = text3
    localValue2(text10)
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper, number3, number5, number6, text, stateFlag, number7, stateFlag2
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.requestEntitySpawn
  text10 = "taco_box"
  localValue2(text10)
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  text10 = CreateObject
  stateFlag8 = cmgOperation.boxHash
  stringHelper2 = localValue2.x
  stateFlag10 = localValue2.y
  cmgOperation6 = localValue2.z
  number16 = true
  cmgOperation7 = true
  text12 = true
  -- Beginner: result below is objectEntity.
  text10 = text10(stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12)
  dataCollection5.tacoBoxObj = text10
  text10 = CMG
  text10 = text10.loadAnimDict
  stateFlag8 = "anim@heists@box_carry@"
  -- Beginner: Load a GTA animation dictionary before using it.
  text10(stateFlag8)
  text10 = AttachEntityToEntity
  stateFlag8 = dataCollection5.tacoBoxObj
  stringHelper2 = localValue1
  stateFlag10 = GetPedBoneIndex
  cmgOperation6 = localValue1
  number16 = 60309
  stateFlag10 = stateFlag10(cmgOperation6, number16)
  cmgOperation6 = 0.025
  number16 = 0.08
  cmgOperation7 = 0.255
  text12 = -145.0
  stringHelper = 290.0
  number3 = 0.0
  number5 = true
  number6 = true
  text = false
  stateFlag = true
  number7 = 1
  stateFlag2 = true
  -- Beginner: Attach one entity to another entity.
  text10(stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper, number3, number5, number6, text, stateFlag, number7, stateFlag2)
  dataCollection5.carryingBox = true
  text10 = CMG
  text10 = text10.createThreadOnTick
  stateFlag8 = text3
  stringHelper2 = "Taco Box Carry"
  -- Beginner: Run a helper every game frame while this script is active.
  text10(stateFlag8, stringHelper2)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper
  if localValue1 then
    localValue2 = string
    localValue2 = localValue2.len
    text10 = string
    text10 = text10.gsub
    stateFlag8 = localValue1
    stringHelper2 = "~%a~"
    stateFlag10 = ""
    text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper = text10(stateFlag8, stringHelper2, stateFlag10)
    localValue2 = localValue2(text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper)
    text10 = SetTextFont
    stateFlag8 = 0
    text10(stateFlag8)
    text10 = SetTextScale
    stateFlag8 = 0.5
    stringHelper2 = 0.5
    text10(stateFlag8, stringHelper2)
    text10 = SetTextCentre
    stateFlag8 = true
    text10(stateFlag8)
    text10 = SetTextColour
    stateFlag8 = 255
    stringHelper2 = 255
    stateFlag10 = 255
    cmgOperation6 = 255
    text10(stateFlag8, stringHelper2, stateFlag10, cmgOperation6)
    text10 = SetTextJustification
    stateFlag8 = 0
    text10(stateFlag8)
    text10 = BeginTextCommandDisplayText
    stateFlag8 = "STRING"
    text10(stateFlag8)
    text10 = AddTextComponentSubstringPlayerName
    stateFlag8 = localValue1
    text10(stateFlag8)
    text10 = EndTextCommandDisplayText
    stateFlag8 = 0.5
    stringHelper2 = 0.925
    text10(stateFlag8, stringHelper2)
    text10 = DrawRect
    stateFlag8 = 0.5
    stringHelper2 = 0.945
    stateFlag10 = localValue2 * 0.0095
    cmgOperation6 = 0.045
    number16 = 0
    cmgOperation7 = 0
    text12 = 0
    stringHelper = 72
    text10(stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper)
  end
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2
  localValue1 = rageUiOperation4
  localValue2 = "Drop the ~y~box~w~ off at the back of your ~y~taco truck~w~"
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2
  localValue1 = DoesEntityExist
  localValue2 = dataCollection5.tacoBoxObj
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = DeleteEntity
    localValue2 = dataCollection5.tacoBoxObj
    -- Beginner: Delete a GTA entity.
    localValue1(localValue2)
    localValue1 = ClearPedTasks
    localValue2 = CMG
    localValue2 = localValue2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue1(localValue2)
  end
  localValue1 = CMG
  localValue1 = localValue1.deleteThreadOnTick
  localValue2 = text4
  localValue1(localValue2)
  dataCollection5.carryingBox = false
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper, number3, number5, number6, text, stateFlag
  localValue1 = CMG
  localValue1 = localValue1.getModelGender
  localValue1 = localValue1()
  if "male" == localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.loadCustomisationPreset
    localValue2 = "TacoSellerMale"
    localValue1(localValue2)
  else
    localValue1 = CMG
    localValue1 = localValue1.loadCustomisationPreset
    localValue2 = "TacoSellerFemale"
    localValue1(localValue2)
  end
  localValue1 = tCMG
  localValue1 = localValue1.addMarker
  localValue2 = cmgOperation.boxPickup
  localValue2 = localValue2.x
  text10 = cmgOperation.boxPickup
  text10 = text10.y
  stateFlag8 = cmgOperation.boxPickup
  stateFlag8 = stateFlag8.z
  stringHelper2 = 1.0
  stateFlag10 = 1.0
  cmgOperation6 = 1.0
  number16 = 0
  cmgOperation7 = 0
  text12 = 255
  stringHelper = 100
  number3 = 25
  number5 = 27
  number6 = false
  text = false
  stateFlag = true
  -- Beginner: Create a world marker.
  localValue1(localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12, stringHelper, number3, number5, number6, text, stateFlag)

  -- === HELPER FUNCTION: localValue1() ===
  function localValue1()
    local vehicle, cmgOperation2, stateFlag7
    vehicle = CMG
    vehicle = vehicle.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    vehicle = vehicle()
    vehicle = not vehicle
    if 0 == vehicle then
      return
    end
    vehicle = dataCollection5.carryingBox
    if vehicle then
      vehicle = drawNativeNotification
      cmgOperation2 = "Press ~INPUT_CONTEXT~ to return the tacos."
      -- Beginner: Show a GTA-style notification/help prompt.
      vehicle(cmgOperation2)
      vehicle = IsControlJustPressed
      cmgOperation2 = 0
      stateFlag7 = 38
      vehicle = vehicle(cmgOperation2, stateFlag7)
      if vehicle then
        vehicle = TriggerServerEvent
        cmgOperation2 = "9ae8558098"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9ae8558098".
        vehicle(cmgOperation2)
        vehicle = text5
        vehicle()
      end
    else
      vehicle = drawNativeNotification
      cmgOperation2 = "Press ~INPUT_CONTEXT~ to grab a box of tacos."
      -- Beginner: Show a GTA-style notification/help prompt.
      vehicle(cmgOperation2)
      vehicle = IsControlJustPressed
      cmgOperation2 = 0
      stateFlag7 = 38
      vehicle = vehicle(cmgOperation2, stateFlag7)
      if vehicle then
        vehicle = TriggerServerEvent
        cmgOperation2 = "35bd0a4535"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "35bd0a4535".
        vehicle(cmgOperation2)
        vehicle = rageUiOperation3
        vehicle()
        vehicle = CMG
        vehicle = vehicle.createThreadOnTick
        cmgOperation2 = text4
        stateFlag7 = "Taco Stock Text"
        -- Beginner: Run a helper every game frame while this script is active.
        vehicle(cmgOperation2, stateFlag7)
      end
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.createArea
  text10 = "tacostockup"
  stateFlag8 = cmgOperation.boxPickup
  stringHelper2 = 1.5
  stateFlag10 = 5.0
  cmgOperation6 = nil
  number16 = nil
  cmgOperation7 = localValue1
  text12 = nil
  -- Beginner: Create an interaction area around a world position.
  localValue2(text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6, number16, cmgOperation7, text12)
end
cmgOperation3 = RegisterNetEvent
text6 = "9023541965"
-- Beginner: this function handles network event "9023541965".

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2
  stateFlag3 = localValue1
  if localValue1 then
    localValue2 = workingValue
    localValue2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9023541965".
cmgOperation3(text6, text7)
cmgOperation3 = CMG
-- Beginner: this function handles network event "9023541965".

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2
  localValue1 = stateFlag3
  return localValue1
end
cmgOperation3.isOnTacoDuty = text6
cmgOperation3 = RegisterNetEvent
text6 = "d4d2503493"
-- Beginner: this function handles network event "d4d2503493".

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2
  localValue1 = text5
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d4d2503493".
cmgOperation3(text6, text7)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
text6 = rageUiOperation2
text7 = "Taco Truck Tick"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(text6, text7)
cmgOperation3 = RegisterNetEvent
text6 = "2dc4a53756"
-- Beginner: this function handles network event "2dc4a53756".

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2
  localValue1 = SendNUIMessage
  localValue2 = {}
  localValue2.transactionType = "playMoney"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2dc4a53756".
cmgOperation3(text6, text7)
-- Beginner: this function handles network event "2dc4a53756".

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6
  localValue1 = PlaySound
  localValue2 = -1
  text10 = "CHECKPOINT_BEHIND"
  stateFlag8 = "HUD_MINI_GAME_SOUNDSET"
  stringHelper2 = false
  stateFlag10 = 0
  cmgOperation6 = true
  localValue1(localValue2, text10, stateFlag8, stringHelper2, stateFlag10, cmgOperation6)
  localValue1 = CMG
  localValue1 = localValue1.initializeInstructionalJobScaleform
  localValue2 = "Taco Seller"
  text10 = "Buy a Taco truck at Simeons!"
  localValue1(localValue2, text10)
  localValue1 = SetNewWaypoint
  localValue2 = -47.174137115479
  text10 = -1109.6021728516
  localValue1(localValue2, text10)
end
text6 = RegisterNetEvent
text7 = "e3a2b4bde0"
-- Beginner: this function handles network event "e3a2b4bde0".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2
  if "Taco Seller" == localValue1 then
    localValue2 = cmgOperation3
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    localValue2()
  end
end
text6(text7, workingValue2)
text6 = AddEventHandler
text7 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = text5
    localValue2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
text6(text7, workingValue2)
