--[[
    LEVEL 1 BEGINNER GUIDE — Casinomembership
    ==============================================

    File: cmg/prod/client/casino/cl_casinomembership.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: casino gameplay and casino UI/features, specifically the Casinomembership feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 20
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
local dataCollection, dataCollection3, createVector3, text6, rageUiOperation, text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text
dataCollection = {}
dataCollection3 = {}
createVector3 = vector3
text6 = 944.34539794922
rageUiOperation = 61.159976959229
text8 = 80.902641296387
createVector3 = createVector3(text6, rageUiOperation, text8)
dataCollection3.pedPosition = createVector3
dataCollection3.pedHeading = 150.0
createVector3 = vector3
text6 = 943.46997070312
rageUiOperation = 59.663074493408
text8 = 79.922641296387
createVector3 = createVector3(text6, rageUiOperation, text8)
dataCollection3.entryPosition = createVector3
dataCollection[1] = dataCollection3
dataCollection3 = RMenu
dataCollection3 = dataCollection3.Add
createVector3 = "cmgcasinomembership"
text6 = "casino"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text8 = ""
text9 = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "shopui_title_casino"
text = "shopui_title_casino"
rageUiOperation, text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text = rageUiOperation(text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text)
dataCollection3(createVector3, text6, rageUiOperation, text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text)
dataCollection3 = RMenu
createVector3 = dataCollection3
dataCollection3 = dataCollection3.Get
text6 = "cmgcasinomembership"
rageUiOperation = "casino"
-- Beginner: result below is menu.
dataCollection3 = dataCollection3(createVector3, text6, rageUiOperation)
createVector3 = dataCollection3
dataCollection3 = dataCollection3.SetSubtitle
text6 = "~b~MEMBERSHIP"
dataCollection3(createVector3, text6)
dataCollection3 = RMenu
dataCollection3 = dataCollection3.Add
createVector3 = "cmgcasinomembership"
text6 = "confirmadd"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text8 = RMenu
text9 = text8
text8 = text8.Get
rageUiOperation2 = "cmgcasinomembership"
rageUiOperation3 = "casino"
-- Beginner: result below is menu.
text8 = text8(text9, rageUiOperation2, rageUiOperation3)
text9 = ""
rageUiOperation2 = "~b~Are you sure?"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text = rageUiOperation4()
rageUiOperation, text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text = rageUiOperation(text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text)
dataCollection3(createVector3, text6, rageUiOperation, text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text)
dataCollection3 = RMenu
dataCollection3 = dataCollection3.Add
createVector3 = "cmgcasinomembership"
text6 = "confirmremove"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text8 = RMenu
text9 = text8
text8 = text8.Get
rageUiOperation2 = "cmgcasinomembership"
rageUiOperation3 = "casino"
-- Beginner: result below is menu.
text8 = text8(text9, rageUiOperation2, rageUiOperation3)
text9 = ""
rageUiOperation2 = "~b~Are you sure?"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text = rageUiOperation4()
rageUiOperation, text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text = rageUiOperation(text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text)
dataCollection3(createVector3, text6, rageUiOperation, text8, text9, rageUiOperation2, rageUiOperation3, rageUiOperation4, text)
dataCollection3 = RageUI
dataCollection3 = dataCollection3.CreateWhile
createVector3 = 1.0
text6 = RMenu
rageUiOperation = text6
text6 = text6.Get
text8 = "cmgcasinomembership"
text9 = "casino"
-- Beginner: result below is menu.
text6 = text6(rageUiOperation, text8, text9)
rageUiOperation = nil

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, stateFlag2, stateFlag3, stateFlag4, iterator, cmgOperation3
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag2 = localValue2
  localValue2 = localValue2.Get
  stateFlag3 = "cmgcasinomembership"
  stateFlag4 = "casino"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag2, stateFlag3, stateFlag4)
  stateFlag2 = true
  stateFlag3 = true
  stateFlag4 = true

  -- === HELPER FUNCTION: iterator() ===
  function iterator()
    local localValue12, text4, text5, dataCollection4, stateFlag5, workingValue2, workingValue3, workingValue4, text10, text11
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    text4 = "Purchase High Rollers Membership (\194\16310,000,000)"
    text5 = "~g~Allows you to sit at High-Rollers only seats."
    dataCollection4 = {}
    dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag5 = true

    -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue13, localValue22, localValue3) ===
    function workingValue2(localValue13, localValue22, localValue3)
    end
    workingValue3 = RMenu
    workingValue4 = workingValue3
    workingValue3 = workingValue3.Get
    text10 = "cmgcasinomembership"
    text11 = "confirmadd"
    workingValue3, workingValue4, text10, text11 = workingValue3(workingValue4, text10, text11)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(text4, text5, dataCollection4, stateFlag5, workingValue2, workingValue3, workingValue4, text10, text11)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    text4 = "Remove High Rollers Membership (\194\1630)"
    text5 = "~r~This is an irrevocable action, you will not receive any money in return."
    dataCollection4 = {}
    dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag5 = true

    -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue13, localValue22, localValue3) ===
    function workingValue2(localValue13, localValue22, localValue3)
    end
    workingValue3 = RMenu
    workingValue4 = workingValue3
    workingValue3 = workingValue3.Get
    text10 = "cmgcasinomembership"
    text11 = "confirmremove"
    workingValue3, workingValue4, text10, text11 = workingValue3(workingValue4, text10, text11)
    localValue12(text4, text5, dataCollection4, stateFlag5, workingValue2, workingValue3, workingValue4, text10, text11)
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local localValue12, text4
  end
  localValue1(localValue2, stateFlag2, stateFlag3, stateFlag4, iterator, cmgOperation3)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag2 = localValue2
  localValue2 = localValue2.Get
  stateFlag3 = "cmgcasinomembership"
  stateFlag4 = "confirmadd"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag2, stateFlag3, stateFlag4)
  stateFlag2 = true
  stateFlag3 = false
  stateFlag4 = false

  -- === HELPER FUNCTION: iterator() ===
  function iterator()
    local localValue12, text4, text5, dataCollection4, stateFlag5, workingValue2, workingValue3, workingValue4, text10, text11
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    text4 = "No"
    text5 = ""
    dataCollection4 = {}
    dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag5 = true

    -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue13, localValue22, localValue3) ===
    function workingValue2(localValue13, localValue22, localValue3)
      local cmgOperation2, text7
      if localValue3 then
        cmgOperation2 = tCMG
        cmgOperation2 = cmgOperation2.notify
        text7 = "~y~Cancelled!"
        -- Beginner: Show a notification to the player.
        cmgOperation2(text7)
      end
    end
    workingValue3 = RMenu
    workingValue4 = workingValue3
    workingValue3 = workingValue3.Get
    text10 = "cmgcasinomembership"
    text11 = "casino"
    workingValue3, workingValue4, text10, text11 = workingValue3(workingValue4, text10, text11)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(text4, text5, dataCollection4, stateFlag5, workingValue2, workingValue3, workingValue4, text10, text11)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    text4 = "Yes"
    text5 = ""
    dataCollection4 = {}
    dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag5 = true

    -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue13, localValue22, localValue3) ===
    function workingValue2(localValue13, localValue22, localValue3)
      local cmgOperation2, text7
      if localValue3 then
        cmgOperation2 = TriggerServerEvent
        text7 = "9ba72c4963"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9ba72c4963".
        cmgOperation2(text7)
      end
    end
    workingValue3 = RMenu
    workingValue4 = workingValue3
    workingValue3 = workingValue3.Get
    text10 = "cmgcasinomembership"
    text11 = "casino"
    workingValue3, workingValue4, text10, text11 = workingValue3(workingValue4, text10, text11)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(text4, text5, dataCollection4, stateFlag5, workingValue2, workingValue3, workingValue4, text10, text11)
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local localValue12, text4
  end
  localValue1(localValue2, stateFlag2, stateFlag3, stateFlag4, iterator, cmgOperation3)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag2 = localValue2
  localValue2 = localValue2.Get
  stateFlag3 = "cmgcasinomembership"
  stateFlag4 = "confirmremove"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag2, stateFlag3, stateFlag4)
  stateFlag2 = true
  stateFlag3 = false
  stateFlag4 = false

  -- === HELPER FUNCTION: iterator() ===
  function iterator()
    local localValue12, text4, text5, dataCollection4, stateFlag5, workingValue2, workingValue3, workingValue4, text10, text11
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    text4 = "No"
    text5 = ""
    dataCollection4 = {}
    dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag5 = true

    -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue13, localValue22, localValue3) ===
    function workingValue2(localValue13, localValue22, localValue3)
      local cmgOperation2, text7
      if localValue3 then
        cmgOperation2 = tCMG
        cmgOperation2 = cmgOperation2.notify
        text7 = "~y~Cancelled!"
        -- Beginner: Show a notification to the player.
        cmgOperation2(text7)
      end
    end
    workingValue3 = RMenu
    workingValue4 = workingValue3
    workingValue3 = workingValue3.Get
    text10 = "cmgcasinomembership"
    text11 = "casino"
    workingValue3, workingValue4, text10, text11 = workingValue3(workingValue4, text10, text11)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(text4, text5, dataCollection4, stateFlag5, workingValue2, workingValue3, workingValue4, text10, text11)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    text4 = "Yes"
    text5 = ""
    dataCollection4 = {}
    dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag5 = true

    -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue13, localValue22, localValue3) ===
    function workingValue2(localValue13, localValue22, localValue3)
      local cmgOperation2, text7
      if localValue3 then
        cmgOperation2 = TriggerServerEvent
        text7 = "10427dae18"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "10427dae18".
        cmgOperation2(text7)
      end
    end
    workingValue3 = RMenu
    workingValue4 = workingValue3
    workingValue3 = workingValue3.Get
    text10 = "cmgcasinomembership"
    text11 = "casino"
    workingValue3, workingValue4, text10, text11 = workingValue3(workingValue4, text10, text11)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(text4, text5, dataCollection4, stateFlag5, workingValue2, workingValue3, workingValue4, text10, text11)
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local localValue12, text4
  end
  localValue1(localValue2, stateFlag2, stateFlag3, stateFlag4, iterator, cmgOperation3)
end
dataCollection3(createVector3, text6, rageUiOperation, text8)

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue1) ===
function dataCollection3(localValue1)
  local localValue2, stateFlag2, stateFlag3, stateFlag4, iterator
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  stateFlag2 = RMenu
  stateFlag3 = stateFlag2
  stateFlag2 = stateFlag2.Get
  stateFlag4 = "cmgcasinomembership"
  iterator = "casino"
  -- Beginner: result below is menu.
  stateFlag2 = stateFlag2(stateFlag3, stateFlag4, iterator)
  stateFlag3 = localValue1
  localValue2(stateFlag2, stateFlag3)
end
createVector3 = Citizen
createVector3 = createVector3.CreateThread

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, stateFlag2, stateFlag3, stateFlag4, iterator, cmgOperation3, number9, workingValue5, number10, stateFlag, cmgOperation, text2, number, workingValue, number2
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, stateFlag2, stateFlag3 = localValue1(localValue2)
  for stateFlag4, iterator in localValue1, localValue2, stateFlag2, stateFlag3 do
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.createDynamicPed
    number9 = -1156746507
    workingValue5 = iterator.pedPosition
    number10 = 175.0
    stateFlag = true
    cmgOperation = "mini@strip_club@idles@bouncer@base"
    text2 = "base"
    number = 75.0
    workingValue = nil

    -- === HELPER FUNCTION (decompiler name: number2; parameters: localValue12) ===
    function number2(localValue12)
      local text4, text5, dataCollection4, stateFlag5, workingValue2, workingValue3, workingValue4, text10
      text4 = SetEntityCanBeDamaged
      text5 = localValue12
      dataCollection4 = false
      text4(text5, dataCollection4)
      text4 = SetPedAsEnemy
      text5 = localValue12
      dataCollection4 = false
      text4(text5, dataCollection4)
      text4 = SetBlockingOfNonTemporaryEvents
      text5 = localValue12
      dataCollection4 = true
      text4(text5, dataCollection4)
      text4 = SetPedResetFlag
      text5 = localValue12
      dataCollection4 = 249
      stateFlag5 = true
      text4(text5, dataCollection4, stateFlag5)
      text4 = SetPedConfigFlag
      text5 = localValue12
      dataCollection4 = 185
      stateFlag5 = true
      text4(text5, dataCollection4, stateFlag5)
      text4 = SetPedConfigFlag
      text5 = localValue12
      dataCollection4 = 108
      stateFlag5 = true
      text4(text5, dataCollection4, stateFlag5)
      text4 = SetPedCanEvasiveDive
      text5 = localValue12
      dataCollection4 = false
      text4(text5, dataCollection4)
      text4 = SetPedCanRagdollFromPlayerImpact
      text5 = localValue12
      dataCollection4 = false
      text4(text5, dataCollection4)
      text4 = SetPedConfigFlag
      text5 = localValue12
      dataCollection4 = 208
      stateFlag5 = true
      text4(text5, dataCollection4, stateFlag5)
      text4 = SetEntityCoordsNoOffset
      text5 = localValue12
      dataCollection4 = iterator.pedPosition
      dataCollection4 = dataCollection4.x
      stateFlag5 = iterator.pedPosition
      stateFlag5 = stateFlag5.y
      workingValue2 = iterator.pedPosition
      workingValue2 = workingValue2.z
      workingValue3 = true
      workingValue4 = false
      text10 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      text4(text5, dataCollection4, stateFlag5, workingValue2, workingValue3, workingValue4, text10)
      text4 = SetEntityHeading
      text5 = localValue12
      dataCollection4 = iterator.pedHeading
      -- Beginner: Change the direction an entity is facing.
      text4(text5, dataCollection4)
      text4 = FreezeEntityPosition
      text5 = localValue12
      dataCollection4 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      text4(text5, dataCollection4)
    end
    cmgOperation3(number9, workingValue5, number10, stateFlag, cmgOperation, text2, number, workingValue, number2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
createVector3(text6)
createVector3 = AddEventHandler
text6 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1, localValue2) ===
function rageUiOperation(localValue1, localValue2)
  local stateFlag2, stateFlag3, stateFlag4, iterator, cmgOperation3, number9, workingValue5, number10, stateFlag, cmgOperation, text2, number, workingValue, number2, number3, text3, number4, dataCollection2, number5, number6, number7, number8
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
    function stateFlag2()
      local localValue12, text4
      localValue12 = dataCollection3
      text4 = true
      localValue12(text4)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: none) ===
    function stateFlag3()
      local localValue12, text4
      localValue12 = dataCollection3
      text4 = false
      localValue12(text4)
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, text4
    end
    iterator = pairs
    cmgOperation3 = dataCollection
    iterator, cmgOperation3, number9, workingValue5 = iterator(cmgOperation3)
    for number10, stateFlag in iterator, cmgOperation3, number9, workingValue5 do
      cmgOperation = tCMG
      cmgOperation = cmgOperation.addBlip
      text2 = stateFlag.entryPosition
      text2 = text2.x
      number = stateFlag.entryPosition
      number = number.y
      workingValue = stateFlag.entryPosition
      workingValue = workingValue.z
      number2 = 682
      number3 = 0
      text3 = "Casino Memberships"
      number4 = 0.7
      dataCollection2 = true
      -- Beginner: Create a minimap blip.
      cmgOperation(text2, number, workingValue, number2, number3, text3, number4, dataCollection2)
      cmgOperation = tCMG
      cmgOperation = cmgOperation.addMarker
      text2 = stateFlag.entryPosition
      text2 = text2.x
      number = stateFlag.entryPosition
      number = number.y
      workingValue = stateFlag.entryPosition
      workingValue = workingValue.z
      number2 = 1.0
      number3 = 1.0
      text3 = 1.0
      number4 = 138
      dataCollection2 = 43
      number5 = 226
      number6 = 70
      number7 = 50
      number8 = 27
      -- Beginner: Create a world marker.
      cmgOperation(text2, number, workingValue, number2, number3, text3, number4, dataCollection2, number5, number6, number7, number8)
      cmgOperation = CMG
      cmgOperation = cmgOperation.createArea
      text2 = "casinomembership_"
      number = number10
      text2 = text2 .. number
      number = stateFlag.entryPosition
      workingValue = 1.5
      number2 = 6
      number3 = stateFlag2
      text3 = stateFlag3
      number4 = stateFlag4
      dataCollection2 = {}
      -- Beginner: Create an interaction area around a world position.
      cmgOperation(text2, number, workingValue, number2, number3, text3, number4, dataCollection2)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
createVector3(text6, rageUiOperation)
