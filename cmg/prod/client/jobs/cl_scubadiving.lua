--[[
    LEVEL 1 BEGINNER GUIDE — Scubadiving
    =========================================

    File: cmg/prod/client/jobs/cl_scubadiving.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Scubadiving feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 25
      * Background threads: 0
      * Always-running loops: 5
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
local cmgOperation, dataCollection2, number5, stateFlag13, text6, number9, workingValue4, stateFlag16, workingValue5, text11, eventHandlerRegistration, rageUiOperation, text, text2, rageUiOperation2, rageUiOperation3, text3, text4, number4
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection2 = "cfg/cfg_scubadiving"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection2)
dataCollection2 = {}
number5 = 0
stateFlag13 = false
text6 = ""
number9 = 0
workingValue4 = nil
stateFlag16 = false
workingValue5 = RMenu
workingValue5 = workingValue5.Add
text11 = "scubadiving"
eventHandlerRegistration = "main"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text = ""
text2 = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
text3 = "cmg_scubajob"
text4 = "cmg_scubajob"
rageUiOperation, text, text2, rageUiOperation2, rageUiOperation3, text3, text4, number4 = rageUiOperation(text, text2, rageUiOperation2, rageUiOperation3, text3, text4)
workingValue5(text11, eventHandlerRegistration, rageUiOperation, text, text2, rageUiOperation2, rageUiOperation3, text3, text4, number4)
workingValue5 = RMenu
text11 = workingValue5
workingValue5 = workingValue5.Get
eventHandlerRegistration = "scubadiving"
rageUiOperation = "main"
-- Beginner: result below is menu.
workingValue5 = workingValue5(text11, eventHandlerRegistration, rageUiOperation)
text11 = workingValue5
workingValue5 = workingValue5.SetSubtitle
eventHandlerRegistration = "~b~Scuba Diving"
workingValue5(text11, eventHandlerRegistration)

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, stateFlag12, text5, text7
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  stateFlag12 = localValue2
  localValue2 = localValue2.Get
  text5 = "scubadiving"
  text7 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag12, text5, text7)
  stateFlag12 = true
  localValue1(localValue2, stateFlag12)
end

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, stateFlag12, text5, text7
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  stateFlag12 = localValue2
  localValue2 = localValue2.Get
  text5 = "scubadiving"
  text7 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag12, text5, text7)
  stateFlag12 = false
  localValue1(localValue2, stateFlag12)
end
eventHandlerRegistration = AddEventHandler
rageUiOperation = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local stateFlag12, text5, text7, workingValue2, stateFlag14, text9, text10, number13, stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4
  if localValue2 then
    stateFlag12 = CMG
    stateFlag12 = stateFlag12.createDynamicPed
    text5 = cmgOperation.jobPedModel
    text7 = cmgOperation.jobPedPosition
    workingValue2 = cmgOperation.jobPedHeading
    stateFlag14 = true
    text9 = "mini@strip_club@idles@bouncer@base"
    text10 = "base"
    number13 = 100
    stateFlag = false

    -- === HELPER FUNCTION (decompiler name: number; parameters: localValue12) ===
    function number(localValue12)
      local mathHelper, number6, number7, number8, number10, number11, number12
      mathHelper = math
      mathHelper = mathHelper.random
      number6 = 1
      number7 = 15
      mathHelper = mathHelper(number6, number7)
      number6 = SetPedComponentVariation
      number7 = localValue12
      number8 = 11
      number10 = 243
      number11 = mathHelper
      number12 = 0
      number6(number7, number8, number10, number11, number12)
      number6 = SetPedComponentVariation
      number7 = localValue12
      number8 = 3
      number10 = 123
      number11 = 0
      number12 = 0
      number6(number7, number8, number10, number11, number12)
      number6 = SetPedComponentVariation
      number7 = localValue12
      number8 = 4
      number10 = 94
      number11 = mathHelper
      number12 = 0
      number6(number7, number8, number10, number11, number12)
      number6 = SetPedComponentVariation
      number7 = localValue12
      number8 = 6
      number10 = 67
      number11 = 1
      number12 = 0
      number6(number7, number8, number10, number11, number12)
      number6 = SetPedComponentVariation
      number7 = localValue12
      number8 = 7
      number10 = 40
      number11 = 1
      number12 = 0
      number6(number7, number8, number10, number11, number12)
      number6 = SetPedComponentVariation
      number7 = localValue12
      number8 = 8
      number10 = 15
      number11 = 0
      number12 = 1
      number6(number7, number8, number10, number11, number12)
      number6 = SetPedScubaGearVariation
      number7 = localValue12
      number6(number7)
    end
    stateFlag12(text5, text7, workingValue2, stateFlag14, text9, text10, number13, stateFlag, number)
    stateFlag12 = tCMG
    stateFlag12 = stateFlag12.addBlip
    text5 = cmgOperation.jobPosition
    text5 = text5.x
    text7 = cmgOperation.jobPosition
    text7 = text7.y
    workingValue2 = cmgOperation.jobPosition
    workingValue2 = workingValue2.z
    stateFlag14 = 308
    text9 = 0
    text10 = "Scuba Diving"
    -- Beginner: Create a minimap blip.
    stateFlag12(text5, text7, workingValue2, stateFlag14, text9, text10)
    stateFlag12 = tCMG
    stateFlag12 = stateFlag12.addMarker
    text5 = cmgOperation.jobPosition
    text5 = text5.x
    text7 = cmgOperation.jobPosition
    text7 = text7.y
    workingValue2 = cmgOperation.jobPosition
    workingValue2 = workingValue2.z
    workingValue2 = workingValue2 - 0.2
    stateFlag14 = 0.5
    text9 = 0.5
    text10 = 0.5
    number13 = 0
    stateFlag = 50
    number = 255
    number2 = 170
    dataCollection = 50
    number3 = 20
    stateFlag2 = false
    stateFlag3 = false
    stateFlag4 = true
    -- Beginner: Create a world marker.
    stateFlag12(text5, text7, workingValue2, stateFlag14, text9, text10, number13, stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4)

    -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: none) ===
    function stateFlag12()
      local localValue12, mathHelper
      localValue12 = workingValue5
      localValue12()
    end

    -- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
    function text5()
      local localValue12, mathHelper
      localValue12 = text11
      localValue12()
    end

    -- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
    function text7()
      local localValue12, mathHelper
    end
    workingValue2 = CMG
    workingValue2 = workingValue2.createArea
    stateFlag14 = "scubajob"
    text9 = cmgOperation.jobPosition
    text10 = 1.5
    number13 = 6
    stateFlag = stateFlag12
    number = text5
    number2 = text7
    dataCollection = {}
    -- Beginner: Create an interaction area around a world position.
    workingValue2(stateFlag14, text9, text10, number13, stateFlag, number, number2, dataCollection)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(rageUiOperation, text)
eventHandlerRegistration = RageUI
eventHandlerRegistration = eventHandlerRegistration.CreateWhile
rageUiOperation = 1.0
text = RMenu
text2 = text
text = text.Get
rageUiOperation2 = "scubadiving"
rageUiOperation3 = "main"
-- Beginner: result below is menu.
text = text(text2, rageUiOperation2, rageUiOperation3)
text2 = nil

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2, stateFlag12, text5, text7, workingValue2, stateFlag14
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag12 = localValue2
  localValue2 = localValue2.Get
  text5 = "scubadiving"
  text7 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag12, text5, text7)
  stateFlag12 = true
  text5 = true
  text7 = true

  -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
  function workingValue2()
    local localValue12, mathHelper, number6, number7, number8, number10
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    mathHelper = "Request Job"
    number6 = ""
    number7 = {}
    number7.RightLabel = "\226\134\146\226\134\146\226\134\146"
    number8 = true

    -- === HELPER FUNCTION (decompiler name: number10; parameters: localValue13, localValue22, localValue3) ===
    function number10(localValue13, localValue22, localValue3)
      local serverEventCall, text8
      if localValue3 then
        serverEventCall = stateFlag13
        if not serverEventCall then
          serverEventCall = TriggerServerEvent
          text8 = "72d27dd1d1"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "72d27dd1d1".
          serverEventCall(text8)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(mathHelper, number6, number7, number8, number10)
    localValue12 = number5
    if 0 ~= localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      mathHelper = "Claim Reward"
      number6 = ""
      number7 = {}
      number7.RightLabel = "\226\134\146\226\134\146\226\134\146"
      number8 = true

      -- === HELPER FUNCTION (decompiler name: number10; parameters: localValue13, localValue22, localValue3) ===
      function number10(localValue13, localValue22, localValue3)
        local serverEventCall, text8, workingValue3, stateFlag15
        if localValue3 then
          serverEventCall = TriggerServerEvent
          text8 = "e370842c85"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e370842c85".
          serverEventCall(text8)
          serverEventCall = 0
          number5 = serverEventCall
          serverEventCall = false
          stateFlag13 = serverEventCall
          serverEventCall = false
          stateFlag16 = serverEventCall
          serverEventCall = DoesEntityExist
          text8 = number9
          serverEventCall = serverEventCall(text8)
          if serverEventCall then
            serverEventCall = DeleteVehicle
            text8 = number9
            serverEventCall(text8)
          end
          serverEventCall = tCMG
          serverEventCall = serverEventCall.setCustomization
          text8 = workingValue4
          serverEventCall(text8)
          serverEventCall = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          serverEventCall = serverEventCall()
          text8 = SetEnableScuba
          workingValue3 = serverEventCall
          stateFlag15 = false
          text8(workingValue3, stateFlag15)
          text8 = SetPedMaxTimeUnderwater
          workingValue3 = serverEventCall
          stateFlag15 = 10.0
          text8(workingValue3, stateFlag15)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(mathHelper, number6, number7, number8, number10)
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: none) ===
  function stateFlag14()
    local localValue12, mathHelper
  end
  localValue1(localValue2, stateFlag12, text5, text7, workingValue2, stateFlag14)
end
eventHandlerRegistration(rageUiOperation, text, text2, rageUiOperation2)

-- === HELPER FUNCTION: eventHandlerRegistration() ===
function eventHandlerRegistration()
  local localValue1, localValue2, stateFlag12, text5, text7, workingValue2, stateFlag14, text9
  localValue1 = pairs
  localValue2 = dataCollection2
  localValue1, localValue2, stateFlag12, text5 = localValue1(localValue2)
  for text7, workingValue2 in localValue1, localValue2, stateFlag12, text5 do
    stateFlag14 = tCMG
    stateFlag14 = stateFlag14.removeMarker
    text9 = workingValue2.objectMarker
    stateFlag14(text9)
    stateFlag14 = tCMG
    stateFlag14 = stateFlag14.removeArea
    text9 = workingValue2.objectArea
    stateFlag14(text9)
    stateFlag14 = DoesEntityExist
    text9 = workingValue2.objectId
    stateFlag14 = stateFlag14(text9)
    if stateFlag14 then
      stateFlag14 = DeleteEntity
      text9 = workingValue2.objectId
      -- Beginner: Delete a GTA entity.
      stateFlag14(text9)
    end
  end
  localValue1 = {}
  dataCollection2 = localValue1
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1, localValue2) ===
function rageUiOperation(localValue1, localValue2)
  local stateFlag12, text5, text7, workingValue2
  stateFlag12 = Citizen
  stateFlag12 = stateFlag12.InvokeNative
  text5 = 6304891098843168073
  text7 = localValue1
  workingValue2 = localValue2
  stateFlag12(text5, text7, workingValue2)
end

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, stateFlag12, text5, text7, workingValue2, stateFlag14, text9, text10, number13, stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11
  localValue1 = CMG
  localValue1 = localValue1.loadAnimDict
  localValue2 = "missheistchem2"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  stateFlag12 = GetVehiclePedIsIn
  text5 = localValue2
  text7 = false
  -- Beginner: result below is currentVehicle.
  stateFlag12 = stateFlag12(text5, text7)
  text5 = NetworkGetNetworkIdFromEntity
  text7 = stateFlag12
  text5 = text5(text7)
  text7 = GetEntityCoords
  workingValue2 = stateFlag12
  -- Beginner: result below is entityCoords.
  text7 = text7(workingValue2)
  workingValue2 = SetBoatAnchor
  stateFlag14 = stateFlag12
  text9 = true
  workingValue2(stateFlag14, text9)
  workingValue2 = rageUiOperation
  stateFlag14 = stateFlag12
  text9 = true
  workingValue2(stateFlag14, text9)
  workingValue2 = SetVehicleEngineOn
  stateFlag14 = stateFlag12
  text9 = false
  text10 = false
  number13 = false
  workingValue2(stateFlag14, text9, text10, number13)
  workingValue2 = ClearPedTasksImmediately
  stateFlag14 = localValue2
  workingValue2(stateFlag14)
  workingValue2 = CreateSynchronizedScene
  stateFlag14 = 0.0
  text9 = 0.0
  text10 = 0.0
  number13 = 0.0
  stateFlag = 0.0
  number = 0.0
  number2 = 2
  workingValue2 = workingValue2(stateFlag14, text9, text10, number13, stateFlag, number, number2)
  stateFlag14 = TaskSynchronizedScene
  text9 = localValue2
  text10 = workingValue2
  number13 = "missheistchem2"
  stateFlag = "Boat_Dive_Enter_Player"
  number = 1000.0
  number2 = -8.0
  dataCollection = 4
  number3 = 0
  stateFlag2 = 1148846080
  stateFlag3 = 0
  stateFlag14(text9, text10, number13, stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3)
  stateFlag14 = AttachSynchronizedSceneToEntity
  text9 = workingValue2
  text10 = stateFlag12
  number13 = 0
  stateFlag14(text9, text10, number13)
  stateFlag14 = StartAudioScene
  text9 = "FBI_5_DIVE_IN_SYNC_SCENE"
  stateFlag14(text9)
  while true do
    stateFlag14 = IsSynchronizedSceneRunning
    text9 = workingValue2
    stateFlag14 = stateFlag14(text9)
    if not stateFlag14 then
      break
    end
    stateFlag14 = GetSynchronizedScenePhase
    text9 = workingValue2
    stateFlag14 = stateFlag14(text9)
    if not (stateFlag14 < 1.0) then
      break
    end
    stateFlag14 = Wait
    text9 = 0
    stateFlag14(text9)
  end
  stateFlag14 = CreateSynchronizedScene
  text9 = 0.0
  text10 = 0.0
  number13 = 0.0
  stateFlag = 0.0
  number = 0.0
  number2 = 0.0
  dataCollection = 2
  stateFlag14 = stateFlag14(text9, text10, number13, stateFlag, number, number2, dataCollection)
  text9 = TaskSynchronizedScene
  text10 = localValue2
  number13 = stateFlag14
  stateFlag = "missheistchem2"
  number = "Boat_Dive_Idle_Player"
  number2 = 8.0
  dataCollection = -8.0
  number3 = 4
  stateFlag2 = 0
  stateFlag3 = 8.0
  stateFlag4 = 1024
  text9(text10, number13, stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4)
  text9 = AttachSynchronizedSceneToEntity
  text10 = stateFlag14
  number13 = stateFlag12
  stateFlag = 0
  text9(text10, number13, stateFlag)
  text9 = SetSynchronizedSceneLooped
  text10 = stateFlag14
  number13 = true
  text9(text10, number13)
  text9 = CMG
  text9 = text9.getPlayerCoords
  -- Beginner: result below is playerCoords.
  text9 = text9()
  text9 = #text9
  if text9 < 10.0 then
    text9 = SetEntityCoords
    text10 = localValue2
    number13 = localValue1.x
    stateFlag = localValue1.y
    number = localValue1.z
    number2 = true
    dataCollection = false
    number3 = false
    stateFlag2 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    text9(text10, number13, stateFlag, number, number2, dataCollection, number3, stateFlag2)
  end
  text9 = false
  text10 = SetPedScubaGearVariation
  number13 = CMG
  number13 = number13.getPlayerPed
  number13, stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11 = number13()
  text10(number13, stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11)
  text10 = drawNativeNotification
  number13 = "Press ~INPUT_PICKUP~ to start Scuba Diving."
  -- Beginner: Show a GTA-style notification/help prompt.
  text10(number13)
  while not text9 do
    text10 = IsControlJustReleased
    number13 = 1
    stateFlag = 38
    text10 = text10(number13, stateFlag)
    if text10 then
      break
    end
    text10 = Wait
    number13 = 0
    text10(number13)
  end
  text10 = SetPlayerControl
  number13 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  number13 = number13()
  stateFlag = false
  number = 256
  text10(number13, stateFlag, number)
  text10 = CreateSynchronizedScene
  number13 = 0.0
  stateFlag = 0.0
  number = 0.0
  number2 = 0.0
  dataCollection = 0.0
  number3 = 0.0
  stateFlag2 = 2
  text10 = text10(number13, stateFlag, number, number2, dataCollection, number3, stateFlag2)
  stateFlag14 = text10
  text10 = TaskSynchronizedScene
  number13 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number13 = number13()
  stateFlag = stateFlag14
  number = "missheistchem2"
  number2 = "Boat_Dive_Exit_Player"
  dataCollection = 1000.0
  number3 = -8.0
  stateFlag2 = 4
  stateFlag3 = 0
  stateFlag4 = 1148846080
  stateFlag5 = 0
  text10(number13, stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5)
  text10 = AttachSynchronizedSceneToEntity
  number13 = stateFlag14
  stateFlag = stateFlag12
  number = 0
  text10(number13, stateFlag, number)
  text10 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  text10 = text10()
  number13 = false
  stateFlag = false
  number = false
  number2 = CMG
  number2 = number2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  number2 = number2()
  number2 = #number2
  if number2 < 10.0 then
    number2 = SetEntityCoords
    dataCollection = localValue2
    number3 = localValue1.x
    stateFlag2 = localValue1.y
    stateFlag3 = localValue1.z
    stateFlag4 = true
    stateFlag5 = false
    stateFlag6 = false
    stateFlag7 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    number2(dataCollection, number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
  end
  number2 = SetEnableScuba
  dataCollection = localValue2
  number3 = true
  number2(dataCollection, number3)
  number2 = SetPedMaxTimeUnderwater
  dataCollection = localValue2
  number3 = 400.0
  number2(dataCollection, number3)
  while true do
    number2 = IsSynchronizedSceneRunning
    dataCollection = stateFlag14
    number2 = number2(dataCollection)
    if not number2 then
      break
    end
    number2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    number2 = number2()
    number2 = number2 - text10
    dataCollection = 20000
    if not (number2 < dataCollection) then
      break
    end
    number2 = GetSynchronizedScenePhase
    dataCollection = stateFlag14
    number2 = number2(dataCollection)
    dataCollection = 0.147
    if number2 > dataCollection and not number13 then
      number2 = CMG
      number2 = number2.loadPtfx
      dataCollection = "scr_fbi5a"
      number2(dataCollection)
      number2 = StartParticleFxNonLoopedOnEntity
      dataCollection = "scr_fbi5_ped_water_splash"
      number3 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      number3 = number3()
      stateFlag2 = 0.0
      stateFlag3 = 0.0
      stateFlag4 = 0.0
      stateFlag5 = 0.0
      stateFlag6 = 0.0
      stateFlag7 = 0.0
      stateFlag8 = 1065353216
      stateFlag9 = false
      stateFlag10 = false
      stateFlag11 = false
      number2(dataCollection, number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11)
      number2 = RemoveNamedPtfxAsset
      dataCollection = "scr_fbi5a"
      number2(dataCollection)
      number13 = true
    end
    number2 = GetSynchronizedScenePhase
    dataCollection = stateFlag14
    number2 = number2(dataCollection)
    dataCollection = 0.48
    if number2 > dataCollection and not stateFlag then
      number2 = CMG
      number2 = number2.loadPtfx
      dataCollection = "scr_fbi5a"
      number2(dataCollection)
      number2 = StartParticleFxNonLoopedOnEntity
      dataCollection = "water_splash_ped_bubbles"
      number3 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      number3 = number3()
      stateFlag2 = 0.0
      stateFlag3 = 0.0
      stateFlag4 = 0.0
      stateFlag5 = 0.0
      stateFlag6 = 0.0
      stateFlag7 = 0.0
      stateFlag8 = 1065353216
      stateFlag9 = false
      stateFlag10 = false
      stateFlag11 = false
      number2(dataCollection, number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11)
      stateFlag = true
      number2 = DetachEntity
      dataCollection = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      dataCollection = dataCollection()
      number3 = false
      stateFlag2 = false
      number2(dataCollection, number3, stateFlag2)
      number2 = RemoveNamedPtfxAsset
      dataCollection = "scr_fbi5a"
      number2(dataCollection)
    end
    number2 = GetSynchronizedScenePhase
    dataCollection = stateFlag14
    number2 = number2(dataCollection)
    dataCollection = 0.65
    if number2 > dataCollection and not number then
      number = true
      number2 = DetachEntity
      dataCollection = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      dataCollection = dataCollection()
      number3 = false
      stateFlag2 = false
      number2(dataCollection, number3, stateFlag2)
      number2 = TaskPlayAnim
      dataCollection = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      dataCollection = dataCollection()
      number3 = "SWIMMING@scuba"
      stateFlag2 = "dive_run"
      stateFlag3 = 4.0
      stateFlag4 = -1.5
      stateFlag5 = 1000
      stateFlag6 = 131081
      stateFlag7 = 0
      stateFlag8 = false
      stateFlag9 = false
      stateFlag10 = false
      -- Beginner: Play an animation on a ped.
      number2(dataCollection, number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
      number2 = TaskForceMotionState
      dataCollection = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      dataCollection = dataCollection()
      number3 = -1855028596
      stateFlag2 = false
      number2(dataCollection, number3, stateFlag2)
      number2 = TaskGoStraightToCoord
      dataCollection = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      dataCollection = dataCollection()
      number3 = text7.x
      stateFlag2 = text7.y
      stateFlag3 = text7.z
      stateFlag3 = stateFlag3 - 5.0
      stateFlag4 = -7.5
      stateFlag5 = 2
      stateFlag6 = -1
      stateFlag7 = 1193033728
      number2(dataCollection, number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
      number2 = SetPlayerControl
      dataCollection = PlayerId
      -- Beginner: result below is localPlayerIndex.
      dataCollection = dataCollection()
      number3 = true
      stateFlag2 = 256
      number2(dataCollection, number3, stateFlag2)
    end
    number2 = Wait
    dataCollection = 0
    number2(dataCollection)
  end
  number2 = RemoveAnimDict
  dataCollection = "missheistchem2"
  number2(dataCollection)
  number2 = DisposeSynchronizedScene
  dataCollection = stateFlag14
  number2(dataCollection)
  number2 = ClearPedTasksImmediately
  dataCollection = localValue2
  number2(dataCollection)
  number2 = CMG
  number2 = number2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  number2 = number2()
  number2 = #number2
  if number2 < 10.0 then
    number2 = SetEntityCoords
    dataCollection = localValue2
    number3 = localValue1.x
    stateFlag2 = localValue1.y
    stateFlag3 = localValue1.z
    stateFlag4 = true
    stateFlag5 = false
    stateFlag6 = false
    stateFlag7 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    number2(dataCollection, number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
  end
  number2 = false
  while true do
    dataCollection = GetVehiclePedIsIn
    number3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    number3 = number3()
    stateFlag2 = false
    -- Beginner: result below is currentVehicle.
    dataCollection = dataCollection(number3, stateFlag2)
    if dataCollection == stateFlag12 then
      break
    end
    dataCollection = DoesEntityExist
    number3 = stateFlag12
    dataCollection = dataCollection(number3)
    if not dataCollection then
      if not number2 then
        dataCollection = print
        number3 = "[Scuba] Boat has left scope. Previous Entity:"
        stateFlag2 = stateFlag12
        stateFlag3 = "NetID:"
        stateFlag4 = text5
        dataCollection(number3, stateFlag2, stateFlag3, stateFlag4)
        number2 = true
      end
      dataCollection = NetworkDoesEntityExistWithNetworkId
      number3 = text5
      dataCollection = dataCollection(number3)
      if dataCollection then
        dataCollection = NetworkGetEntityFromNetworkId
        number3 = text5
        dataCollection = dataCollection(number3)
        stateFlag12 = dataCollection
        number3 = print
        stateFlag2 = "[Scuba] Boat has come back in to scope. Entity:"
        stateFlag3 = stateFlag12
        stateFlag4 = "NetID:"
        stateFlag5 = text5
        number3(stateFlag2, stateFlag3, stateFlag4, stateFlag5)
        number2 = false
      end
    end
    dataCollection = Wait
    number3 = 250
    dataCollection(number3)
  end
  dataCollection = SetBoatAnchor
  number3 = stateFlag12
  stateFlag2 = false
  dataCollection(number3, stateFlag2)
  dataCollection = rageUiOperation
  number3 = stateFlag12
  stateFlag2 = false
  dataCollection(number3, stateFlag2)
  dataCollection = tCMG
  dataCollection = dataCollection.notify
  number3 = "~g~Scuba Diving job ended, return to HQ to get paid!"
  -- Beginner: Show a notification to the player.
  dataCollection(number3)
  dataCollection = SetNewWaypoint
  number3 = -2195.6926269531
  stateFlag2 = -394.82040405273
  dataCollection(number3, stateFlag2)
  dataCollection = eventHandlerRegistration
  dataCollection()
  dataCollection = number5
  if dataCollection > 6 then
    dataCollection = 6
    number5 = dataCollection
  end
  dataCollection = TriggerServerEvent
  number3 = "64b26a9931"
  stateFlag2 = number5
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "64b26a9931".
  dataCollection(number3, stateFlag2)
end
text2 = {}
rageUiOperation2 = 2
rageUiOperation3 = 160
text3 = 161
text4 = 163
number4 = 167
text2[1] = rageUiOperation2
text2[2] = rageUiOperation3
text2[3] = text3
text2[4] = text4
text2[5] = number4

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1) ===
function rageUiOperation2(localValue1)
  local localValue2, stateFlag12, text5, text7, workingValue2, stateFlag14, text9, text10, number13, stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11
  localValue2 = pairs
  stateFlag12 = localValue1.rewardObjects
  localValue2, stateFlag12, text5, text7 = localValue2(stateFlag12)
  for workingValue2, stateFlag14 in localValue2, stateFlag12, text5, text7 do
    text9 = CMG
    text9 = text9.loadModel
    text10 = stateFlag14.objectModel
    text9 = text9(text10)
    text10 = CreateObject
    number13 = text9
    stateFlag = stateFlag14.objectPosition
    stateFlag = stateFlag.x
    number = stateFlag14.objectPosition
    number = number.y
    number2 = stateFlag14.objectPosition
    number2 = number2.z
    dataCollection = false
    number3 = true
    stateFlag2 = false
    -- Beginner: result below is objectEntity.
    text10 = text10(number13, stateFlag, number, number2, dataCollection, number3, stateFlag2)
    number13 = SetModelAsNoLongerNeeded
    stateFlag = text9
    number13(stateFlag)
    number13 = tCMG
    number13 = number13.addMarker
    stateFlag = stateFlag14.objectPosition
    stateFlag = stateFlag.x
    number = stateFlag14.objectPosition
    number = number.y
    number2 = stateFlag14.objectPosition
    number2 = number2.z
    number2 = number2 + 0.6
    dataCollection = 0.5
    number3 = 0.5
    stateFlag2 = 0.5
    stateFlag3 = 255
    stateFlag4 = 223
    stateFlag5 = 0
    stateFlag6 = 150
    stateFlag7 = 50.0
    stateFlag8 = 0
    stateFlag9 = false
    stateFlag10 = true
    stateFlag11 = true
    number13 = number13(stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11)

    -- === HELPER FUNCTION (decompiler name: stateFlag; parameters: none) ===
    function stateFlag()
      local localValue12, mathHelper
      localValue12 = drawNativeNotification
      mathHelper = "Press ~INPUT_PICKUP~ to collect!"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(mathHelper)
    end

    -- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
    function number()
      local localValue12, mathHelper
    end

    -- === HELPER FUNCTION (decompiler name: number2; parameters: localValue12) ===
    function number2(localValue12)
      local mathHelper, number6, number7
      mathHelper = IsControlJustReleased
      number6 = 1
      number7 = 38
      mathHelper = mathHelper(number6, number7)
      if mathHelper then
        mathHelper = stateFlag13
        if mathHelper then
          mathHelper = tCMG
          mathHelper = mathHelper.notify
          number6 = "~g~Item collected."
          -- Beginner: Show a notification to the player.
          mathHelper(number6)
          mathHelper = number5
          mathHelper = mathHelper + 1
          number5 = mathHelper
          mathHelper = tCMG
          mathHelper = mathHelper.removeMarker
          number7 = localValue12.objectId
          number6 = dataCollection2
          number6 = number6[number7]
          number6 = number6.objectMarker
          mathHelper(number6)
          mathHelper = tCMG
          mathHelper = mathHelper.removeArea
          number7 = localValue12.objectId
          number6 = dataCollection2
          number6 = number6[number7]
          number6 = number6.objectArea
          mathHelper(number6)
          mathHelper = DeleteEntity
          number7 = localValue12.objectId
          number6 = dataCollection2
          number6 = number6[number7]
          number6 = number6.objectId
          -- Beginner: Delete a GTA entity.
          mathHelper(number6)
          number6 = localValue12.objectId
          mathHelper = dataCollection2
          mathHelper = mathHelper[number6]
          mathHelper.objectMarker = nil
          number6 = localValue12.objectId
          mathHelper = dataCollection2
          mathHelper = mathHelper[number6]
          mathHelper.objectArea = nil
          number6 = localValue12.objectId
          mathHelper = dataCollection2
          mathHelper = mathHelper[number6]
          mathHelper.objectId = nil
        end
      end
    end
    dataCollection = CMG
    dataCollection = dataCollection.createArea
    number3 = "scubajob_"
    stateFlag2 = localValue1.name
    stateFlag3 = "_obj_"
    stateFlag4 = workingValue2
    number3 = number3 .. stateFlag2 .. stateFlag3 .. stateFlag4
    stateFlag2 = stateFlag14.objectPosition
    stateFlag3 = 3.0
    stateFlag4 = 3.0
    stateFlag5 = stateFlag
    stateFlag6 = number
    stateFlag7 = number2
    stateFlag8 = {}
    stateFlag8.objectId = workingValue2
    -- Beginner: Create an interaction area around a world position.
    dataCollection(number3, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
    dataCollection = dataCollection2
    number3 = {}
    dataCollection[workingValue2] = number3
    dataCollection = dataCollection2
    dataCollection = dataCollection[workingValue2]
    dataCollection.objectId = text10
    dataCollection = dataCollection2
    dataCollection = dataCollection[workingValue2]
    dataCollection.objectMarker = number13
    dataCollection = dataCollection2
    dataCollection = dataCollection[workingValue2]
    number3 = "scubajob_"
    stateFlag2 = localValue1.name
    stateFlag3 = "_obj_"
    stateFlag4 = workingValue2
    number3 = number3 .. stateFlag2 .. stateFlag3 .. stateFlag4
    dataCollection.objectArea = number3
  end
end
rageUiOperation3 = RegisterNetEvent
text3 = "82c23c96fb"
-- Beginner: this function handles network event "82c23c96fb".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, stateFlag12, text5, text7, workingValue2, stateFlag14, text9, text10, number13, stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4
  localValue2 = true
  stateFlag13 = localValue2
  localValue2 = DoScreenFadeOut
  stateFlag12 = 500
  localValue2(stateFlag12)
  localValue2 = Wait
  stateFlag12 = 600
  localValue2(stateFlag12)
  localValue2 = AddBlipForRadius
  stateFlag12 = localValue1.position
  stateFlag12 = stateFlag12.x
  text5 = localValue1.position
  text5 = text5.y
  text7 = localValue1.position
  text7 = text7.z
  workingValue2 = 250.0
  -- Beginner: result below is blipHandle.
  localValue2 = localValue2(stateFlag12, text5, text7, workingValue2)
  stateFlag12 = SetBlipColour
  text5 = localValue2
  text7 = 30
  stateFlag12(text5, text7)
  stateFlag12 = SetBlipAlpha
  text5 = localValue2
  text7 = 180
  stateFlag12(text5, text7)

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: none) ===
  function stateFlag12()
    local localValue12, mathHelper
    localValue12 = drawNativeNotification
    mathHelper = "Press ~INPUT_DETONATE~ to begin diving!"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue12(mathHelper)
  end

  -- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
  function text5()
    local localValue12, mathHelper
  end

  -- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
  function text7()
    local localValue12, mathHelper, number6, number7, number8, number10, number11, number12, cmgOperation2, text12, workingValue
    localValue12 = IsControlJustReleased
    mathHelper = 1
    number6 = 47
    localValue12 = localValue12(mathHelper, number6)
    if not localValue12 then
      return
    end
    localValue12 = CMG
    localValue12 = localValue12.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue12 = localValue12()
    mathHelper = CMG
    mathHelper = mathHelper.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    mathHelper = mathHelper()
    if 0 ~= mathHelper then
      number6 = DoesEntityExist
      number7 = mathHelper
      number6 = number6(number7)
      if number6 then
        goto continueAtStep26
      end
    end
    number6 = tCMG
    number6 = number6.notify
    number7 = "~r~You must be in a boat to start scuba diving!"
    -- Beginner: Show a notification to the player.
    number6(number7)
    return
    ::continueAtStep26::
    number6 = GetEntityModel
    number7 = mathHelper
    -- Beginner: result below is modelHash.
    number6 = number6(number7)
    if 1033245328 ~= number6 then
      number6 = tCMG
      number6 = number6.notify
      number7 = "~r~You must be in a dinghy to start scuba diving!"
      number6(number7)
      return
    end
    number6 = GetPedInVehicleSeat
    number7 = mathHelper
    number8 = -1
    number6 = number6(number7, number8)
    if number6 ~= localValue12 then
      number6 = tCMG
      number6 = number6.notify
      number7 = "~r~You must be in the driver seat of the dinghy to start scuba diving!"
      -- Beginner: Show a notification to the player.
      number6(number7)
      return
    end
    number6 = pairs
    number7 = text2
    number6, number7, number8, number10 = number6(number7)
    for number11, number12 in number6, number7, number8, number10 do
      cmgOperation2 = GetIsTaskActive
      text12 = localValue12
      workingValue = number12
      cmgOperation2 = cmgOperation2(text12, workingValue)
      if cmgOperation2 then
        cmgOperation2 = tCMG
        cmgOperation2 = cmgOperation2.notify
        text12 = "~r~You must be stationary in the driver seat to start scuba diving!"
        cmgOperation2(text12)
        return
      end
    end
    number6 = TriggerServerEvent
    number7 = "15464d9482"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "15464d9482".
    number6(number7)
    number6 = tCMG
    number6 = number6.removeArea
    number7 = "scubajob_"
    number8 = localValue1.name
    number7 = number7 .. number8
    number6(number7)
    number6 = "~y~Search for treasures and return to your boat when finished"
    text6 = number6
    number6 = rageUiOperation2
    number7 = localValue1
    number6(number7)
    number6 = CreateThread
    number7 = text
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    number6(number7)
  end
  workingValue2 = SetWaypointOff
  workingValue2()
  workingValue2 = tCMG
  workingValue2 = workingValue2.addBlip
  stateFlag14 = localValue1.position
  stateFlag14 = stateFlag14.x
  text9 = localValue1.position
  text9 = text9.y
  text10 = localValue1.position
  text10 = text10.z
  number13 = localValue1.blipId
  stateFlag = localValue1.blipColour
  number = "Scuba Diving"
  workingValue2 = workingValue2(stateFlag14, text9, text10, number13, stateFlag, number)
  stateFlag14 = SetNewWaypoint
  text9 = localValue1.position
  text9 = text9.x
  text10 = localValue1.position
  text10 = text10.y
  stateFlag14(text9, text10)
  stateFlag14 = CMG
  stateFlag14 = stateFlag14.createArea
  text9 = "scubajob_"
  text10 = localValue1.name
  text9 = text9 .. text10
  text10 = localValue1.position
  number13 = 250
  stateFlag = 15
  number = stateFlag12
  number2 = text5
  dataCollection = text7
  number3 = {}
  -- Beginner: Create an interaction area around a world position.
  stateFlag14(text9, text10, number13, stateFlag, number, number2, dataCollection, number3)
  stateFlag14 = tCMG
  stateFlag14 = stateFlag14.getCustomization
  stateFlag14 = stateFlag14()
  workingValue4 = stateFlag14
  stateFlag14 = tCMG
  stateFlag14 = stateFlag14.setCustomization
  text9 = {}
  text9.modelhash = 1885233650
  stateFlag14(text9)
  stateFlag14 = math
  stateFlag14 = stateFlag14.random
  text9 = 1
  text10 = 15
  stateFlag14 = stateFlag14(text9, text10)
  text9 = SetPedComponentVariation
  text10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text10 = text10()
  number13 = 11
  stateFlag = 243
  number = stateFlag14
  number2 = 0
  text9(text10, number13, stateFlag, number, number2)
  text9 = SetPedComponentVariation
  text10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text10 = text10()
  number13 = 3
  stateFlag = 123
  number = 0
  number2 = 0
  text9(text10, number13, stateFlag, number, number2)
  text9 = SetPedComponentVariation
  text10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text10 = text10()
  number13 = 4
  stateFlag = 94
  number = stateFlag14
  number2 = 0
  text9(text10, number13, stateFlag, number, number2)
  text9 = SetPedComponentVariation
  text10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text10 = text10()
  number13 = 6
  stateFlag = 67
  number = 1
  number2 = 0
  text9(text10, number13, stateFlag, number, number2)
  text9 = SetPedComponentVariation
  text10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text10 = text10()
  number13 = 7
  stateFlag = 40
  number = 1
  number2 = 0
  text9(text10, number13, stateFlag, number, number2)
  text9 = SetPedComponentVariation
  text10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text10 = text10()
  number13 = 8
  stateFlag = 15
  number = 0
  number2 = 1
  text9(text10, number13, stateFlag, number, number2)
  text9 = SetPedScubaGearVariation
  text10 = PlayerPedId
  text10, number13, stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4 = text10()
  text9(text10, number13, stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4)
  text9 = Wait
  text10 = 0
  text9(text10)
  text9 = math
  text9 = text9.random
  text10 = localValue1.dinghySpawnPositions
  text10 = #text10
  text9 = text9(text10)
  text10 = localValue1.dinghySpawnPositions
  text10 = text10[text9]
  number13 = SetEntityCoords
  stateFlag = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stateFlag = stateFlag()
  number = text10.x
  number2 = text10.y
  dataCollection = text10.z
  number3 = false
  stateFlag2 = false
  stateFlag3 = false
  stateFlag4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  number13(stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4)
  number13 = CMG
  number13 = number13.requestEntitySpawn
  stateFlag = "scubajob"
  number = localValue1.dinghySpawnPositions
  number = number[text9]
  number13(stateFlag, number)
  number13 = CMG
  number13 = number13.spawnVehicle
  stateFlag = 1033245328
  number = localValue1.dinghySpawnPositions
  number = number[text9]
  number = number.x
  number2 = localValue1.dinghySpawnPositions
  number2 = number2[text9]
  number2 = number2.y
  dataCollection = localValue1.dinghySpawnPositions
  dataCollection = dataCollection[text9]
  dataCollection = dataCollection.z
  number3 = localValue1.dinghySpawnHeading
  stateFlag2 = true
  stateFlag3 = true
  stateFlag4 = true
  number13 = number13(stateFlag, number, number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4)
  number9 = number13
  number13 = AddBlipForEntity
  stateFlag = number9
  -- Beginner: result below is blipHandle.
  number13 = number13(stateFlag)
  stateFlag = SetBlipSprite
  number = number13
  number2 = 427
  stateFlag(number, number2)
  stateFlag = SetBlipDisplay
  number = number13
  number2 = 4
  stateFlag(number, number2)
  stateFlag = SetBlipScale
  number = number13
  number2 = 1.0
  stateFlag(number, number2)
  stateFlag = SetBlipColour
  number = number13
  number2 = 2
  stateFlag(number, number2)
  stateFlag = SetBlipAsShortRange
  number = number13
  number2 = true
  stateFlag(number, number2)
  stateFlag = BeginTextCommandSetBlipName
  number = "STRING"
  stateFlag(number)
  stateFlag = AddTextComponentSubstringPlayerName
  number = "Scuba Dinghy"
  stateFlag(number)
  stateFlag = EndTextCommandSetBlipName
  number = number13
  stateFlag(number)
  stateFlag = Wait
  number = 2000
  stateFlag(number)
  stateFlag = NetworkGetNetworkIdFromEntity
  number = number9
  stateFlag = stateFlag(number)
  number = TriggerServerEvent
  number2 = "78dddcfb46"
  dataCollection = stateFlag
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "78dddcfb46".
  number(number2, dataCollection)
  number = DoScreenFadeIn
  number2 = 2000
  number(number2)
  number = SetPedScubaGearVariation
  number2 = PlayerPedId
  number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4 = number2()
  number(number2, dataCollection, number3, stateFlag2, stateFlag3, stateFlag4)
  number = Citizen
  number = number.CreateThread

  -- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
  function number2()
    local localValue12, mathHelper, number6, number7
    while true do
      localValue12 = stateFlag13
      if not localValue12 then
        break
      end
      localValue12 = stateFlag16
      if localValue12 then
        localValue12 = CMG
        localValue12 = localValue12.drawPlaneScaleForm
        mathHelper = "~r~MISSION FAILED"
        number6 = "Your boat has been destroyed, go get a new one!"
        localValue12(mathHelper, number6)
        localValue12 = stateFlag13
        if localValue12 then
          localValue12 = stateFlag16
          if localValue12 then
            goto continueAtStep19
          end
        end
        return
        ::continueAtStep19::
        localValue12 = SetWaypointOff
        localValue12()
        localValue12 = TriggerServerEvent
        mathHelper = "64b26a9931"
        number6 = 0
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "64b26a9931".
        localValue12(mathHelper, number6)
        localValue12 = TriggerServerEvent
        mathHelper = "e370842c85"
        localValue12(mathHelper)
        localValue12 = 0
        number5 = localValue12
        localValue12 = false
        stateFlag13 = localValue12
        localValue12 = false
        stateFlag16 = localValue12
        localValue12 = tCMG
        localValue12 = localValue12.setCustomization
        mathHelper = workingValue4
        localValue12(mathHelper)
        localValue12 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue12 = localValue12()
        mathHelper = SetEnableScuba
        number6 = localValue12
        number7 = false
        mathHelper(number6, number7)
        mathHelper = SetPedMaxTimeUnderwater
        number6 = localValue12
        number7 = 10.0
        mathHelper(number6, number7)
        mathHelper = eventHandlerRegistration
        mathHelper()
        break
      end
      localValue12 = Wait
      mathHelper = 250
      localValue12(mathHelper)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number(number2)
  number = "~y~Head to the diving location: "
  number2 = localValue1.name
  number = number .. number2
  text6 = number
  while true do
    number = stateFlag13
    if not number then
      break
    end
    number = drawNativeText
    number2 = text6
    -- Beginner: Draw GTA-style text on screen.
    number(number2)
    number = Wait
    number2 = 0
    number(number2)
  end
  number = tCMG
  number = number.removeBlip
  number2 = workingValue2
  number(number2)
  number = RemoveBlip
  number2 = localValue2
  number(number2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "82c23c96fb".
rageUiOperation3(text3, text4)
rageUiOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2
  localValue1 = stateFlag13
  return localValue1
end
rageUiOperation3.isScubaJobInProgress = text3
