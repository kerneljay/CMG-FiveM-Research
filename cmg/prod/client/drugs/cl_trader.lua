--[[
    LEVEL 1 BEGINNER GUIDE — Trader
    ====================================

    File: cmg/prod/client/drugs/cl_trader.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: drug-related gameplay systems, specifically the Trader feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 37
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
local workingValue, cmgOperation2, text5, workingValue4, dataCollection3, eventHandler, text8, text9, text10, rageUiOperation3, cmgOperation, text, rageUiOperation, rageUiOperation2, workingValue2, workingValue3, number3, number5, number7, number9
workingValue = nil
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.loadModule
text5 = "cfg/cfg_trader"
-- Beginner: result below is config.
cmgOperation2 = cmgOperation2(text5)
text5 = nil
workingValue4 = nil
globalHeroinCommissionPercent = 0
globalLargeArmsCommission = 0
globalLSDNorthCommissionPercent = 0
globalLSDSouthCommissionPercent = 0
globalBlackMarketCommision = 0
dataCollection3 = {}
dataCollection3.Heroin = 0
dataCollection3.LSDNorth = 0
dataCollection3.LSDSouth = 0
dataCollection3.Gold = 0
dataCollection3.Diamond = 0
eventHandler = RegisterNetEvent
text8 = "5afc35de9e"
-- Beginner: this function handles network event "5afc35de9e".

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function text9(localValue1, localValue2, localValue3, localValue4, localValue5)
  globalHeroinCommissionPercent = localValue1
  globalLargeArmsCommission = localValue2
  globalLSDNorthCommissionPercent = localValue3
  globalLSDSouthCommissionPercent = localValue4
  globalBlackMarketCommision = localValue5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5afc35de9e".
eventHandler(text8, text9)
eventHandler = Citizen
eventHandler = eventHandler.CreateThread
-- Beginner: this function handles network event "5afc35de9e".

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, number10, cmgOperation4, position, position2, createVector3, stateFlag, text2, text3, number, stateFlag2, number2, number4, number6, number8, dataCollection, stateFlag3
  localValue1 = pairs
  localValue2 = cmgOperation2.trader
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, number10 in localValue1, localValue2, localValue3, localValue4 do
    cmgOperation4 = tCMG
    cmgOperation4 = cmgOperation4.addMarker
    position = number10.position
    position = position.x
    position2 = number10.position
    position2 = position2.y
    createVector3 = number10.position
    createVector3 = createVector3.z
    stateFlag = 0.7
    text2 = 0.7
    text3 = 0.5
    number = number10.colour
    number = number.r
    stateFlag2 = number10.colour
    stateFlag2 = stateFlag2.g
    number2 = number10.colour
    number2 = number2.b
    number4 = 125
    number6 = 50
    number8 = 29
    dataCollection = true
    stateFlag3 = true
    -- Beginner: Create a world marker.
    cmgOperation4(position, position2, createVector3, stateFlag, text2, text3, number, stateFlag2, number2, number4, number6, number8, dataCollection, stateFlag3)
    cmgOperation4 = CMG
    cmgOperation4 = cmgOperation4.createDynamicPed
    position = number10.dealerModel
    position2 = number10.dealerPos
    createVector3 = vector3
    stateFlag = 0.0
    text2 = 0.0
    text3 = -1.0
    createVector3 = createVector3(stateFlag, text2, text3)
    position2 = position2 + createVector3
    createVector3 = number10.dealerHeading
    stateFlag = true
    text2 = "mini@strip_club@idles@bouncer@base"
    text3 = "base"
    number = 100
    stateFlag2 = false

    -- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
    function number2()
      local localValue12, text4
    end
    cmgOperation4(position, position2, createVector3, stateFlag, text2, text3, number, stateFlag2, number2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(text8)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, localValue4, localValue5, number10, cmgOperation4, position, position2, createVector3, stateFlag, text2, text3, number
  localValue2 = text5
  if not localValue2 then
    return
  end
  localValue2 = text5.name
  if localValue2 ~= localValue1 then
    return
  end
  localValue2 = tostring
  localValue3 = text5.name
  if not localValue3 then
    localValue3 = localValue1
  end
  localValue2 = localValue2(localValue3)
  localValue3 = tonumber
  localValue4 = text5.nominal
  if not localValue4 then
    localValue4 = 0
  end
  localValue3 = localValue3(localValue4)
  localValue4 = tonumber
  localValue5 = text5.grindModifier
  if not localValue5 then
    localValue5 = 1.0
  end
  localValue4 = localValue4(localValue5)
  localValue5 = math
  localValue5 = localValue5.floor
  number10 = text5.static
  if not number10 then
    number10 = 0
  end
  localValue5 = localValue5(number10)
  number10 = tonumber
  cmgOperation4 = text5.commissionPercent
  if not cmgOperation4 then
    cmgOperation4 = 0
  end
  number10 = number10(cmgOperation4)
  cmgOperation4 = tonumber
  position = text5.commissionAmount
  if not position then
    position = 0
  end
  cmgOperation4 = cmgOperation4(position)
  position = math
  position = position.floor
  position2 = text5.final
  if not position2 then
    position2 = 0
  end
  position = position(position2)
  position2 = RageUI
  position2 = position2.Separator
  createVector3 = "~b~%s Price Breakdown~s~"
  stateFlag = createVector3
  createVector3 = createVector3.format
  text2 = localValue2
  createVector3, stateFlag, text2, text3, number = createVector3(stateFlag, text2)
  position2(createVector3, stateFlag, text2, text3, number)
  position2 = RageUI
  position2 = position2.Separator
  createVector3 = "Base Price: \194\163%s"
  stateFlag = createVector3
  createVector3 = createVector3.format
  text2 = getMoneyStringFormatted
  text3 = localValue3
  text2, text3, number = text2(text3)
  createVector3, stateFlag, text2, text3, number = createVector3(stateFlag, text2, text3, number)
  position2(createVector3, stateFlag, text2, text3, number)
  position2 = RageUI
  position2 = position2.Separator
  createVector3 = "Grind Boost: x%.2f"
  stateFlag = createVector3
  createVector3 = createVector3.format
  text2 = localValue4
  createVector3, stateFlag, text2, text3, number = createVector3(stateFlag, text2)
  position2(createVector3, stateFlag, text2, text3, number)
  position2 = RageUI
  position2 = position2.Separator
  createVector3 = "Static: \194\163%s"
  stateFlag = createVector3
  createVector3 = createVector3.format
  text2 = getMoneyStringFormatted
  text3 = localValue5
  text2, text3, number = text2(text3)
  createVector3, stateFlag, text2, text3, number = createVector3(stateFlag, text2, text3, number)
  position2(createVector3, stateFlag, text2, text3, number)
  if number10 > 0 then
    position2 = RageUI
    position2 = position2.Separator
    createVector3 = "Commission: %d%% ( \194\163%s )"
    stateFlag = createVector3
    createVector3 = createVector3.format
    text2 = number10
    text3 = getMoneyStringFormatted
    number = cmgOperation4
    text3, number = text3(number)
    createVector3, stateFlag, text2, text3, number = createVector3(stateFlag, text2, text3, number)
    position2(createVector3, stateFlag, text2, text3, number)
  end
  position2 = RageUI
  position2 = position2.Separator
  createVector3 = "Final Sell Price: ~g~\194\163%s"
  stateFlag = createVector3
  createVector3 = createVector3.format
  text2 = getMoneyStringFormatted
  text3 = position
  text2, text3, number = text2(text3)
  createVector3, stateFlag, text2, text3, number = createVector3(stateFlag, text2, text3, number)
  position2(createVector3, stateFlag, text2, text3, number)
end
text8 = RMenu
text8 = text8.Add
text9 = "trader"
text10 = "seller"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateMenu
cmgOperation = "CMG Trader"
text = " "
rageUiOperation = CMG
rageUiOperation = rageUiOperation.getRageUIMenuWidth
rageUiOperation = rageUiOperation()
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuHeight
rageUiOperation2 = rageUiOperation2()
workingValue2 = nil
workingValue3 = nil
number3 = 0
number5 = 0
number7 = 255
number9 = 255
rageUiOperation3, cmgOperation, text, rageUiOperation, rageUiOperation2, workingValue2, workingValue3, number3, number5, number7, number9 = rageUiOperation3(cmgOperation, text, rageUiOperation, rageUiOperation2, workingValue2, workingValue3, number3, number5, number7, number9)
text8(text9, text10, rageUiOperation3, cmgOperation, text, rageUiOperation, rageUiOperation2, workingValue2, workingValue3, number3, number5, number7, number9)
text8 = RMenu
text8 = text8.Add
text9 = "trader"
text10 = "gold"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateMenu
cmgOperation = "CMG Trader"
text = " "
rageUiOperation = CMG
rageUiOperation = rageUiOperation.getRageUIMenuWidth
rageUiOperation = rageUiOperation()
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuHeight
rageUiOperation2 = rageUiOperation2()
workingValue2 = nil
workingValue3 = nil
number3 = 0
number5 = 0
number7 = 255
number9 = 255
rageUiOperation3, cmgOperation, text, rageUiOperation, rageUiOperation2, workingValue2, workingValue3, number3, number5, number7, number9 = rageUiOperation3(cmgOperation, text, rageUiOperation, rageUiOperation2, workingValue2, workingValue3, number3, number5, number7, number9)
text8(text9, text10, rageUiOperation3, cmgOperation, text, rageUiOperation, rageUiOperation2, workingValue2, workingValue3, number3, number5, number7, number9)
text8 = RMenu
text8 = text8.Add
text9 = "trader"
text10 = "diamond"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateMenu
cmgOperation = "CMG Trader"
text = " "
rageUiOperation = CMG
rageUiOperation = rageUiOperation.getRageUIMenuWidth
rageUiOperation = rageUiOperation()
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuHeight
rageUiOperation2 = rageUiOperation2()
workingValue2 = nil
workingValue3 = nil
number3 = 0
number5 = 0
number7 = 255
number9 = 255
rageUiOperation3, cmgOperation, text, rageUiOperation, rageUiOperation2, workingValue2, workingValue3, number3, number5, number7, number9 = rageUiOperation3(cmgOperation, text, rageUiOperation, rageUiOperation2, workingValue2, workingValue3, number3, number5, number7, number9)
text8(text9, text10, rageUiOperation3, cmgOperation, text, rageUiOperation, rageUiOperation2, workingValue2, workingValue3, number3, number5, number7, number9)
text8 = RageUI
text8 = text8.CreateWhile
text9 = 1.0
text10 = RMenu
rageUiOperation3 = text10
text10 = text10.Get
cmgOperation = "trader"
text = "seller"
-- Beginner: result below is menu.
text10 = text10(rageUiOperation3, cmgOperation, text)
rageUiOperation3 = nil

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2, localValue3, localValue4, localValue5, number10, cmgOperation4
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "trader"
  localValue5 = "gold"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: number10; parameters: none) ===
  function number10()
    local localValue12, text4, text6, dataCollection2, stateFlag4, text7
    localValue12 = workingValue4
    if "Gold" == localValue12 then
      localValue12 = eventHandler
      text4 = "Gold"
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      localValue12(text4)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      text4 = "Sell Gold"
      text6 = ""
      dataCollection2 = {}
      dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag4 = true

      -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
      function text7(localValue13, localValue22, localValue32)
        local vehicle, cmgOperation3, stateFlag5
        if localValue32 then
          vehicle = GetVehiclePedIsIn
          cmgOperation3 = CMG
          cmgOperation3 = cmgOperation3.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation3 = cmgOperation3()
          stateFlag5 = false
          -- Beginner: result below is currentVehicle.
          vehicle = vehicle(cmgOperation3, stateFlag5)
          if 0 == vehicle then
            vehicle = TriggerServerEvent
            cmgOperation3 = "76484dfadb"
            stateFlag5 = false
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "76484dfadb".
            vehicle(cmgOperation3, stateFlag5)
          else
            vehicle = tCMG
            vehicle = vehicle.notify
            cmgOperation3 = "~r~Exit your vehicle."
            -- Beginner: Show a notification to the player.
            vehicle(cmgOperation3)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(text4, text6, dataCollection2, stateFlag4, text7)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      text4 = "Sell All Gold"
      text6 = ""
      dataCollection2 = {}
      dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag4 = true

      -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
      function text7(localValue13, localValue22, localValue32)
        local vehicle, cmgOperation3, stateFlag5
        if localValue32 then
          vehicle = GetVehiclePedIsIn
          cmgOperation3 = CMG
          cmgOperation3 = cmgOperation3.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation3 = cmgOperation3()
          stateFlag5 = false
          -- Beginner: result below is currentVehicle.
          vehicle = vehicle(cmgOperation3, stateFlag5)
          if 0 == vehicle then
            vehicle = TriggerServerEvent
            cmgOperation3 = "76484dfadb"
            stateFlag5 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "76484dfadb".
            vehicle(cmgOperation3, stateFlag5)
          else
            vehicle = tCMG
            vehicle = vehicle.notify
            cmgOperation3 = "~r~Exit your vehicle."
            -- Beginner: Show a notification to the player.
            vehicle(cmgOperation3)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(text4, text6, dataCollection2, stateFlag4, text7)
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
  function cmgOperation4()
    local localValue12, text4
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, number10, cmgOperation4)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "trader"
  localValue5 = "diamond"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: number10; parameters: none) ===
  function number10()
    local localValue12, text4, text6, dataCollection2, stateFlag4, text7
    localValue12 = workingValue4
    if "Diamond" == localValue12 then
      localValue12 = eventHandler
      text4 = "Diamond"
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      localValue12(text4)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      text4 = "Sell Diamond"
      text6 = ""
      dataCollection2 = {}
      dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag4 = true

      -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
      function text7(localValue13, localValue22, localValue32)
        local vehicle, cmgOperation3, stateFlag5
        if localValue32 then
          vehicle = GetVehiclePedIsIn
          cmgOperation3 = CMG
          cmgOperation3 = cmgOperation3.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation3 = cmgOperation3()
          stateFlag5 = false
          -- Beginner: result below is currentVehicle.
          vehicle = vehicle(cmgOperation3, stateFlag5)
          if 0 == vehicle then
            vehicle = TriggerServerEvent
            cmgOperation3 = "5560f9a59e"
            stateFlag5 = false
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5560f9a59e".
            vehicle(cmgOperation3, stateFlag5)
          else
            vehicle = tCMG
            vehicle = vehicle.notify
            cmgOperation3 = "~r~Exit your vehicle."
            -- Beginner: Show a notification to the player.
            vehicle(cmgOperation3)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(text4, text6, dataCollection2, stateFlag4, text7)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      text4 = "Sell All Diamond"
      text6 = ""
      dataCollection2 = {}
      dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag4 = true

      -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
      function text7(localValue13, localValue22, localValue32)
        local vehicle, cmgOperation3, stateFlag5
        if localValue32 then
          vehicle = GetVehiclePedIsIn
          cmgOperation3 = CMG
          cmgOperation3 = cmgOperation3.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation3 = cmgOperation3()
          stateFlag5 = false
          -- Beginner: result below is currentVehicle.
          vehicle = vehicle(cmgOperation3, stateFlag5)
          if 0 == vehicle then
            vehicle = TriggerServerEvent
            cmgOperation3 = "5560f9a59e"
            stateFlag5 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5560f9a59e".
            vehicle(cmgOperation3, stateFlag5)
          else
            vehicle = tCMG
            vehicle = vehicle.notify
            cmgOperation3 = "~r~Exit your vehicle."
            -- Beginner: Show a notification to the player.
            vehicle(cmgOperation3)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(text4, text6, dataCollection2, stateFlag4, text7)
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
  function cmgOperation4()
    local localValue12, text4
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, number10, cmgOperation4)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "trader"
  localValue5 = "seller"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: number10; parameters: none) ===
  function number10()
    local localValue12, text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12
    localValue12 = workingValue
    if "Legal" == localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      text4 = "Gold"
      text6 = ""
      dataCollection2 = {}
      dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag4 = true

      -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
      function text7(localValue13, localValue22, localValue32)
        local vehicle, cmgOperation3, stateFlag5
        if localValue32 then
          vehicle = "Gold"
          workingValue4 = vehicle
          vehicle = TriggerServerEvent
          cmgOperation3 = "c9a176b26c"
          stateFlag5 = "Gold"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c9a176b26c".
          vehicle(cmgOperation3, stateFlag5)
        end
      end
      workingValue5 = RMenu
      workingValue6 = workingValue5
      workingValue5 = workingValue5.Get
      text11 = "trader"
      text12 = "gold"
      workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      text4 = "Diamond"
      text6 = ""
      dataCollection2 = {}
      dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag4 = true

      -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
      function text7(localValue13, localValue22, localValue32)
        local vehicle, cmgOperation3, stateFlag5
        if localValue32 then
          vehicle = "Diamond"
          workingValue4 = vehicle
          vehicle = TriggerServerEvent
          cmgOperation3 = "c9a176b26c"
          stateFlag5 = "Diamond"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c9a176b26c".
          vehicle(cmgOperation3, stateFlag5)
        end
      end
      workingValue5 = RMenu
      workingValue6 = workingValue5
      workingValue5 = workingValue5.Get
      text11 = "trader"
      text12 = "diamond"
      workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
    else
      localValue12 = workingValue
      if "Heroin" == localValue12 then
        localValue12 = eventHandler
        text4 = "Heroin"
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        localValue12(text4)
        localValue12 = RageUI
        localValue12 = localValue12.ButtonWithStyle
        text4 = "Sell Heroin"
        text6 = "\194\163"
        dataCollection2 = getMoneyStringFormatted
        stateFlag4 = dataCollection3.Heroin
        if not stateFlag4 then
          stateFlag4 = 0
        end
        dataCollection2 = dataCollection2(stateFlag4)
        text6 = text6 .. dataCollection2
        dataCollection2 = {}
        dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag4 = true

        -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
        function text7(localValue13, localValue22, localValue32)
          local vehicle, cmgOperation3, stateFlag5
          if localValue32 then
            vehicle = GetVehiclePedIsIn
            cmgOperation3 = CMG
            cmgOperation3 = cmgOperation3.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            cmgOperation3 = cmgOperation3()
            stateFlag5 = false
            -- Beginner: result below is currentVehicle.
            vehicle = vehicle(cmgOperation3, stateFlag5)
            if 0 == vehicle then
              vehicle = TriggerServerEvent
              cmgOperation3 = "9c236f5bf4"
              stateFlag5 = false
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c236f5bf4".
              vehicle(cmgOperation3, stateFlag5)
            else
              vehicle = tCMG
              vehicle = vehicle.notify
              cmgOperation3 = "~r~Exit your vehicle."
              -- Beginner: Show a notification to the player.
              vehicle(cmgOperation3)
            end
          end
        end
        workingValue5 = RMenu
        workingValue6 = workingValue5
        workingValue5 = workingValue5.Get
        text11 = "trader"
        text12 = "seller"
        workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
        -- Beginner: Draw a selectable RageUI menu button.
        localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
        localValue12 = RageUI
        localValue12 = localValue12.ButtonWithStyle
        text4 = "Sell All Heroin"
        text6 = "\194\163"
        dataCollection2 = getMoneyStringFormatted
        stateFlag4 = dataCollection3.Heroin
        if not stateFlag4 then
          stateFlag4 = 0
        end
        dataCollection2 = dataCollection2(stateFlag4)
        text6 = text6 .. dataCollection2
        dataCollection2 = {}
        dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag4 = true

        -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
        function text7(localValue13, localValue22, localValue32)
          local vehicle, cmgOperation3, stateFlag5
          if localValue32 then
            vehicle = GetVehiclePedIsIn
            cmgOperation3 = CMG
            cmgOperation3 = cmgOperation3.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            cmgOperation3 = cmgOperation3()
            stateFlag5 = false
            -- Beginner: result below is currentVehicle.
            vehicle = vehicle(cmgOperation3, stateFlag5)
            if 0 == vehicle then
              vehicle = TriggerServerEvent
              cmgOperation3 = "9c236f5bf4"
              stateFlag5 = true
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c236f5bf4".
              vehicle(cmgOperation3, stateFlag5)
            else
              vehicle = tCMG
              vehicle = vehicle.notify
              cmgOperation3 = "~r~Exit your vehicle."
              -- Beginner: Show a notification to the player.
              vehicle(cmgOperation3)
            end
          end
        end
        workingValue5 = RMenu
        workingValue6 = workingValue5
        workingValue5 = workingValue5.Get
        text11 = "trader"
        text12 = "seller"
        workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
        -- Beginner: Draw a selectable RageUI menu button.
        localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
      else
        localValue12 = workingValue
        if "LSDNorth" == localValue12 then
          localValue12 = eventHandler
          text4 = "LSDNorth"
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue12(text4)
          localValue12 = RageUI
          localValue12 = localValue12.ButtonWithStyle
          text4 = "Sell LSD"
          text6 = "\194\163"
          dataCollection2 = getMoneyStringFormatted
          stateFlag4 = dataCollection3.LSDNorth
          if not stateFlag4 then
            stateFlag4 = 0
          end
          dataCollection2 = dataCollection2(stateFlag4)
          text6 = text6 .. dataCollection2
          dataCollection2 = {}
          dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
          stateFlag4 = true

          -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
          function text7(localValue13, localValue22, localValue32)
            local vehicle, cmgOperation3, stateFlag5
            if localValue32 then
              vehicle = GetVehiclePedIsIn
              cmgOperation3 = CMG
              cmgOperation3 = cmgOperation3.getPlayerPed
              -- Beginner: result below is localPlayerPed.
              cmgOperation3 = cmgOperation3()
              stateFlag5 = false
              -- Beginner: result below is currentVehicle.
              vehicle = vehicle(cmgOperation3, stateFlag5)
              if 0 == vehicle then
                vehicle = TriggerServerEvent
                cmgOperation3 = "e430f7bf39"
                stateFlag5 = false
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e430f7bf39".
                vehicle(cmgOperation3, stateFlag5)
              else
                vehicle = tCMG
                vehicle = vehicle.notify
                cmgOperation3 = "~r~Exit your vehicle."
                -- Beginner: Show a notification to the player.
                vehicle(cmgOperation3)
              end
            end
          end
          workingValue5 = RMenu
          workingValue6 = workingValue5
          workingValue5 = workingValue5.Get
          text11 = "trader"
          text12 = "seller"
          workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
          -- Beginner: Draw a selectable RageUI menu button.
          localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
          localValue12 = RageUI
          localValue12 = localValue12.ButtonWithStyle
          text4 = "Sell All LSD"
          text6 = "\194\163"
          dataCollection2 = getMoneyStringFormatted
          stateFlag4 = dataCollection3.LSDNorth
          if not stateFlag4 then
            stateFlag4 = 0
          end
          dataCollection2 = dataCollection2(stateFlag4)
          text6 = text6 .. dataCollection2
          dataCollection2 = {}
          dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
          stateFlag4 = true

          -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
          function text7(localValue13, localValue22, localValue32)
            local vehicle, cmgOperation3, stateFlag5
            if localValue32 then
              vehicle = GetVehiclePedIsIn
              cmgOperation3 = CMG
              cmgOperation3 = cmgOperation3.getPlayerPed
              -- Beginner: result below is localPlayerPed.
              cmgOperation3 = cmgOperation3()
              stateFlag5 = false
              -- Beginner: result below is currentVehicle.
              vehicle = vehicle(cmgOperation3, stateFlag5)
              if 0 == vehicle then
                vehicle = TriggerServerEvent
                cmgOperation3 = "e430f7bf39"
                stateFlag5 = true
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e430f7bf39".
                vehicle(cmgOperation3, stateFlag5)
              else
                vehicle = tCMG
                vehicle = vehicle.notify
                cmgOperation3 = "~r~Exit your vehicle."
                -- Beginner: Show a notification to the player.
                vehicle(cmgOperation3)
              end
            end
          end
          workingValue5 = RMenu
          workingValue6 = workingValue5
          workingValue5 = workingValue5.Get
          text11 = "trader"
          text12 = "seller"
          workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
          -- Beginner: Draw a selectable RageUI menu button.
          localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
        else
          localValue12 = workingValue
          if "LSDSouth" == localValue12 then
            localValue12 = eventHandler
            text4 = "LSDSouth"
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            localValue12(text4)
            localValue12 = RageUI
            localValue12 = localValue12.ButtonWithStyle
            text4 = "Sell LSD"
            text6 = "\194\163"
            dataCollection2 = getMoneyStringFormatted
            stateFlag4 = dataCollection3.LSDSouth
            if not stateFlag4 then
              stateFlag4 = 0
            end
            dataCollection2 = dataCollection2(stateFlag4)
            text6 = text6 .. dataCollection2
            dataCollection2 = {}
            dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
            stateFlag4 = true

            -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
            function text7(localValue13, localValue22, localValue32)
              local vehicle, cmgOperation3, stateFlag5
              if localValue32 then
                vehicle = GetVehiclePedIsIn
                cmgOperation3 = CMG
                cmgOperation3 = cmgOperation3.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                cmgOperation3 = cmgOperation3()
                stateFlag5 = false
                -- Beginner: result below is currentVehicle.
                vehicle = vehicle(cmgOperation3, stateFlag5)
                if 0 == vehicle then
                  vehicle = TriggerServerEvent
                  cmgOperation3 = "78aa10bf20"
                  stateFlag5 = false
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "78aa10bf20".
                  vehicle(cmgOperation3, stateFlag5)
                else
                  vehicle = tCMG
                  vehicle = vehicle.notify
                  cmgOperation3 = "~r~Exit your vehicle."
                  -- Beginner: Show a notification to the player.
                  vehicle(cmgOperation3)
                end
              end
            end
            workingValue5 = RMenu
            workingValue6 = workingValue5
            workingValue5 = workingValue5.Get
            text11 = "trader"
            text12 = "seller"
            workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
            -- Beginner: Draw a selectable RageUI menu button.
            localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
            localValue12 = RageUI
            localValue12 = localValue12.ButtonWithStyle
            text4 = "Sell All LSD"
            text6 = "\194\163"
            dataCollection2 = getMoneyStringFormatted
            stateFlag4 = dataCollection3.LSDSouth
            if not stateFlag4 then
              stateFlag4 = 0
            end
            dataCollection2 = dataCollection2(stateFlag4)
            text6 = text6 .. dataCollection2
            dataCollection2 = {}
            dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
            stateFlag4 = true

            -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
            function text7(localValue13, localValue22, localValue32)
              local vehicle, cmgOperation3, stateFlag5
              if localValue32 then
                vehicle = GetVehiclePedIsIn
                cmgOperation3 = CMG
                cmgOperation3 = cmgOperation3.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                cmgOperation3 = cmgOperation3()
                stateFlag5 = false
                -- Beginner: result below is currentVehicle.
                vehicle = vehicle(cmgOperation3, stateFlag5)
                if 0 == vehicle then
                  vehicle = TriggerServerEvent
                  cmgOperation3 = "78aa10bf20"
                  stateFlag5 = true
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "78aa10bf20".
                  vehicle(cmgOperation3, stateFlag5)
                else
                  vehicle = tCMG
                  vehicle = vehicle.notify
                  cmgOperation3 = "~r~Exit your vehicle."
                  -- Beginner: Show a notification to the player.
                  vehicle(cmgOperation3)
                end
              end
            end
            workingValue5 = RMenu
            workingValue6 = workingValue5
            workingValue5 = workingValue5.Get
            text11 = "trader"
            text12 = "seller"
            workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
            -- Beginner: Draw a selectable RageUI menu button.
            localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
          else
            localValue12 = workingValue
            if "Fish" == localValue12 then
              localValue12 = RageUI
              localValue12 = localValue12.ButtonWithStyle
              text4 = "Sell Common Fish"
              text6 = ""
              dataCollection2 = {}
              dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              stateFlag4 = true

              -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
              function text7(localValue13, localValue22, localValue32)
                local vehicle, cmgOperation3, stateFlag5
                if localValue32 then
                  vehicle = GetVehiclePedIsIn
                  cmgOperation3 = CMG
                  cmgOperation3 = cmgOperation3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgOperation3 = cmgOperation3()
                  stateFlag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgOperation3, stateFlag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgOperation3 = "2270f7a009"
                    stateFlag5 = "common"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgOperation3, stateFlag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgOperation3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgOperation3)
                  end
                end
              end
              workingValue5 = RMenu
              workingValue6 = workingValue5
              workingValue5 = workingValue5.Get
              text11 = "trader"
              text12 = "seller"
              workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
              -- Beginner: Draw a selectable RageUI menu button.
              localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
              localValue12 = RageUI
              localValue12 = localValue12.ButtonWithStyle
              text4 = "Sell Uncommon Fish"
              text6 = ""
              dataCollection2 = {}
              dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              stateFlag4 = true

              -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
              function text7(localValue13, localValue22, localValue32)
                local vehicle, cmgOperation3, stateFlag5
                if localValue32 then
                  vehicle = GetVehiclePedIsIn
                  cmgOperation3 = CMG
                  cmgOperation3 = cmgOperation3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgOperation3 = cmgOperation3()
                  stateFlag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgOperation3, stateFlag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgOperation3 = "2270f7a009"
                    stateFlag5 = "uncommon"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgOperation3, stateFlag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgOperation3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgOperation3)
                  end
                end
              end
              workingValue5 = RMenu
              workingValue6 = workingValue5
              workingValue5 = workingValue5.Get
              text11 = "trader"
              text12 = "seller"
              workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
              -- Beginner: Draw a selectable RageUI menu button.
              localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
              localValue12 = RageUI
              localValue12 = localValue12.ButtonWithStyle
              text4 = "Sell Rare Fish"
              text6 = ""
              dataCollection2 = {}
              dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              stateFlag4 = true

              -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
              function text7(localValue13, localValue22, localValue32)
                local vehicle, cmgOperation3, stateFlag5
                if localValue32 then
                  vehicle = GetVehiclePedIsIn
                  cmgOperation3 = CMG
                  cmgOperation3 = cmgOperation3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgOperation3 = cmgOperation3()
                  stateFlag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgOperation3, stateFlag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgOperation3 = "2270f7a009"
                    stateFlag5 = "rare"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgOperation3, stateFlag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgOperation3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgOperation3)
                  end
                end
              end
              workingValue5 = RMenu
              workingValue6 = workingValue5
              workingValue5 = workingValue5.Get
              text11 = "trader"
              text12 = "seller"
              workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
              -- Beginner: Draw a selectable RageUI menu button.
              localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
              localValue12 = RageUI
              localValue12 = localValue12.ButtonWithStyle
              text4 = "Sell Very Rare Fish"
              text6 = ""
              dataCollection2 = {}
              dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              stateFlag4 = true

              -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
              function text7(localValue13, localValue22, localValue32)
                local vehicle, cmgOperation3, stateFlag5
                if localValue32 then
                  vehicle = GetVehiclePedIsIn
                  cmgOperation3 = CMG
                  cmgOperation3 = cmgOperation3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgOperation3 = cmgOperation3()
                  stateFlag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgOperation3, stateFlag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgOperation3 = "2270f7a009"
                    stateFlag5 = "veryrare"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgOperation3, stateFlag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgOperation3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgOperation3)
                  end
                end
              end
              workingValue5 = RMenu
              workingValue6 = workingValue5
              workingValue5 = workingValue5.Get
              text11 = "trader"
              text12 = "seller"
              workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
              -- Beginner: Draw a selectable RageUI menu button.
              localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
              localValue12 = RageUI
              localValue12 = localValue12.ButtonWithStyle
              text4 = "Sell Ultra Rare Fish"
              text6 = ""
              dataCollection2 = {}
              dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              stateFlag4 = true

              -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
              function text7(localValue13, localValue22, localValue32)
                local vehicle, cmgOperation3, stateFlag5
                if localValue32 then
                  vehicle = GetVehiclePedIsIn
                  cmgOperation3 = CMG
                  cmgOperation3 = cmgOperation3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgOperation3 = cmgOperation3()
                  stateFlag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgOperation3, stateFlag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgOperation3 = "2270f7a009"
                    stateFlag5 = "ultrarare"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgOperation3, stateFlag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgOperation3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgOperation3)
                  end
                end
              end
              workingValue5 = RMenu
              workingValue6 = workingValue5
              workingValue5 = workingValue5.Get
              text11 = "trader"
              text12 = "seller"
              workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
              -- Beginner: Draw a selectable RageUI menu button.
              localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
              localValue12 = RageUI
              localValue12 = localValue12.ButtonWithStyle
              text4 = "Sell Small Shark Fin"
              text6 = ""
              dataCollection2 = {}
              dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              stateFlag4 = true

              -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
              function text7(localValue13, localValue22, localValue32)
                local vehicle, cmgOperation3, stateFlag5
                if localValue32 then
                  vehicle = GetVehiclePedIsIn
                  cmgOperation3 = CMG
                  cmgOperation3 = cmgOperation3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgOperation3 = cmgOperation3()
                  stateFlag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgOperation3, stateFlag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgOperation3 = "2270f7a009"
                    stateFlag5 = "smallshark"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgOperation3, stateFlag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgOperation3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgOperation3)
                  end
                end
              end
              workingValue5 = RMenu
              workingValue6 = workingValue5
              workingValue5 = workingValue5.Get
              text11 = "trader"
              text12 = "seller"
              workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
              -- Beginner: Draw a selectable RageUI menu button.
              localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
              localValue12 = RageUI
              localValue12 = localValue12.ButtonWithStyle
              text4 = "Sell Medium Shark Fin"
              text6 = ""
              dataCollection2 = {}
              dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              stateFlag4 = true

              -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
              function text7(localValue13, localValue22, localValue32)
                local vehicle, cmgOperation3, stateFlag5
                if localValue32 then
                  vehicle = GetVehiclePedIsIn
                  cmgOperation3 = CMG
                  cmgOperation3 = cmgOperation3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgOperation3 = cmgOperation3()
                  stateFlag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgOperation3, stateFlag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgOperation3 = "2270f7a009"
                    stateFlag5 = "mediumshark"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgOperation3, stateFlag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgOperation3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgOperation3)
                  end
                end
              end
              workingValue5 = RMenu
              workingValue6 = workingValue5
              workingValue5 = workingValue5.Get
              text11 = "trader"
              text12 = "seller"
              workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
              -- Beginner: Draw a selectable RageUI menu button.
              localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
              localValue12 = RageUI
              localValue12 = localValue12.ButtonWithStyle
              text4 = "Sell Large Shark Fin"
              text6 = ""
              dataCollection2 = {}
              dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              stateFlag4 = true

              -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue22, localValue32) ===
              function text7(localValue13, localValue22, localValue32)
                local vehicle, cmgOperation3, stateFlag5
                if localValue32 then
                  vehicle = GetVehiclePedIsIn
                  cmgOperation3 = CMG
                  cmgOperation3 = cmgOperation3.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  cmgOperation3 = cmgOperation3()
                  stateFlag5 = false
                  -- Beginner: result below is currentVehicle.
                  vehicle = vehicle(cmgOperation3, stateFlag5)
                  if 0 == vehicle then
                    vehicle = TriggerServerEvent
                    cmgOperation3 = "2270f7a009"
                    stateFlag5 = "largeshark"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2270f7a009".
                    vehicle(cmgOperation3, stateFlag5)
                  else
                    vehicle = tCMG
                    vehicle = vehicle.notify
                    cmgOperation3 = "~r~Exit your vehicle."
                    -- Beginner: Show a notification to the player.
                    vehicle(cmgOperation3)
                  end
                end
              end
              workingValue5 = RMenu
              workingValue6 = workingValue5
              workingValue5 = workingValue5.Get
              text11 = "trader"
              text12 = "seller"
              workingValue5, workingValue6, text11, text12 = workingValue5(workingValue6, text11, text12)
              -- Beginner: Draw a selectable RageUI menu button.
              localValue12(text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6, text11, text12)
            end
          end
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
  function cmgOperation4()
    local localValue12, text4
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, number10, cmgOperation4)
end
text8(text9, text10, rageUiOperation3, cmgOperation)
text8 = AddEventHandler
text9 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1, localValue2) ===
function text10(localValue1, localValue2)
  local localValue3, localValue4, localValue5, number10, cmgOperation4, position, position2, createVector3, stateFlag, text2, text3, number, stateFlag2, number2, number4, number6, number8, dataCollection, stateFlag3
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, text4
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: localValue4() ===
    function localValue4()
      local localValue12, text4, text6, dataCollection2, stateFlag4
      localValue12 = RageUI
      localValue12 = localValue12.Visible
      text4 = RMenu
      text6 = text4
      text4 = text4.Get
      dataCollection2 = "trader"
      stateFlag4 = "seller"
      -- Beginner: result below is menu.
      text4 = text4(text6, dataCollection2, stateFlag4)
      text6 = false
      localValue12(text4, text6)
      localValue12 = RageUI
      localValue12 = localValue12.CloseAll
      localValue12()
      localValue12 = nil
      text5 = localValue12
      localValue12 = nil
      workingValue4 = localValue12
    end

    -- === HELPER FUNCTION: localValue5(localValue12) ===
    function localValue5(localValue12)
      local text4, text6, dataCollection2, stateFlag4, text7, workingValue5, workingValue6
      text4 = IsControlJustPressed
      text6 = 1
      dataCollection2 = 38
      text4 = text4(text6, dataCollection2)
      if text4 then
        text4 = localValue12.traderName
        workingValue = text4
        text4 = RageUI
        text4 = text4.Visible
        text6 = RMenu
        dataCollection2 = text6
        text6 = text6.Get
        stateFlag4 = "trader"
        text7 = "seller"
        -- Beginner: result below is menu.
        text6 = text6(dataCollection2, stateFlag4, text7)
        dataCollection2 = RageUI
        dataCollection2 = dataCollection2.Visible
        stateFlag4 = RMenu
        text7 = stateFlag4
        stateFlag4 = stateFlag4.Get
        workingValue5 = "trader"
        workingValue6 = "seller"
        stateFlag4, text7, workingValue5, workingValue6 = stateFlag4(text7, workingValue5, workingValue6)
        -- Beginner: result below is menuVisible.
        dataCollection2 = dataCollection2(stateFlag4, text7, workingValue5, workingValue6)
        dataCollection2 = not dataCollection2
        text4(text6, dataCollection2)
        text4 = TriggerServerEvent
        text6 = "c9a176b26c"
        dataCollection2 = workingValue
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c9a176b26c".
        text4(text6, dataCollection2)
      end
      text4 = CMG
      text4 = text4.DrawText3D
      text6 = cmgOperation2.trader
      dataCollection2 = localValue12.traderId
      text6 = text6[dataCollection2]
      text6 = text6.position
      dataCollection2 = "Press [E] to open seller"
      stateFlag4 = 0.2
      text4(text6, dataCollection2, stateFlag4)
    end
    number10 = pairs
    cmgOperation4 = cmgOperation2.trader
    number10, cmgOperation4, position, position2 = number10(cmgOperation4)
    for createVector3, stateFlag in number10, cmgOperation4, position, position2 do
      text2 = CMG
      text2 = text2.createArea
      text3 = "trader_"
      number = createVector3
      text3 = text3 .. number
      number = stateFlag.position
      stateFlag2 = 1.5
      number2 = 6
      number4 = localValue3
      number6 = localValue4
      number8 = localValue5
      dataCollection = {}
      dataCollection.traderId = createVector3
      stateFlag3 = stateFlag.type
      dataCollection.traderName = stateFlag3
      -- Beginner: Create an interaction area around a world position.
      text2(text3, number, stateFlag2, number2, number4, number6, number8, dataCollection)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
text8(text9, text10)
text8 = RegisterNetEvent
text9 = "bbd7e56d6b"
-- Beginner: this function handles network event "bbd7e56d6b".

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function text10(localValue1, localValue2, localValue3, localValue4, localValue5)
  local number10
  number10 = localValue1 or nil
  if not localValue1 then
    number10 = 0
  end
  dataCollection3.Heroin = number10
  number10 = localValue2 or number10
  if not localValue2 then
    number10 = 0
  end
  dataCollection3.LSDNorth = number10
  number10 = localValue3 or number10
  if not localValue3 then
    number10 = 0
  end
  dataCollection3.LSDSouth = number10
  number10 = localValue4 or number10
  if not localValue4 then
    number10 = 0
  end
  dataCollection3.Gold = number10
  number10 = localValue5 or number10
  if not localValue5 then
    number10 = 0
  end
  dataCollection3.Diamond = number10
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bbd7e56d6b".
text8(text9, text10)
text8 = RegisterNetEvent
text9 = "83b7436490"
-- Beginner: this function handles network event "83b7436490".

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1) ===
function text10(localValue1)
  local localValue2
  text5 = localValue1
end
text8(text9, text10)
