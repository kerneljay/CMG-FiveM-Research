--[[
    Beginner Guide: cl_scubadiving.lua
    ==================================

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
    BEGINNER GUIDE — Scubadiving
    ============================

    File: cmg/prod/client/jobs/cl_scubadiving.lua
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

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/cfg_scubadiving

    Network/hash identifiers found: 6
      They are intentionally left unchanged because matching server code may use them.
      * 72d27dd1d1
      * e370842c85
      * 64b26a9931
      * 82c23c96fb
      * 15464d9482
      * 78dddcfb46

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * Request Job
      * Boat_Dive_Enter_Player
      * Boat_Dive_Idle_Player
      * Press ~INPUT_PICKUP~ to start Scuba Diving.
      * Boat_Dive_Exit_Player

]]
local cmgCall, dataTable2, numberValue5, flag13, textValue6, numberValue9, workValue4, flag16, workValue5, textValue11, eventHandlerRegistration, rageUiCall, textValue, textValue2, rageUiCall2, rageUiCall3, textValue3, textValue4, numberValue4
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable2 = "cfg/cfg_scubadiving"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable2)
dataTable2 = {}
numberValue5 = 0
flag13 = false
textValue6 = ""
numberValue9 = 0
workValue4 = nil
flag16 = false
workValue5 = RMenu
workValue5 = workValue5.Add
textValue11 = "scubadiving"
eventHandlerRegistration = "main"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue = ""
textValue2 = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue3 = "cmg_scubajob"
textValue4 = "cmg_scubajob"
rageUiCall, textValue, textValue2, rageUiCall2, rageUiCall3, textValue3, textValue4, numberValue4 = rageUiCall(textValue, textValue2, rageUiCall2, rageUiCall3, textValue3, textValue4)
workValue5(textValue11, eventHandlerRegistration, rageUiCall, textValue, textValue2, rageUiCall2, rageUiCall3, textValue3, textValue4, numberValue4)
workValue5 = RMenu
textValue11 = workValue5
workValue5 = workValue5.Get
eventHandlerRegistration = "scubadiving"
rageUiCall = "main"
-- Beginner: result below is menu.
workValue5 = workValue5(textValue11, eventHandlerRegistration, rageUiCall)
textValue11 = workValue5
workValue5 = workValue5.SetSubtitle
eventHandlerRegistration = "~b~Scuba Diving"
workValue5(textValue11, eventHandlerRegistration)
function workValue5()
  local arg1, arg2, flag12, textValue5, textValue7
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  flag12 = arg2
  arg2 = arg2.Get
  textValue5 = "scubadiving"
  textValue7 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(flag12, textValue5, textValue7)
  flag12 = true
  arg1(arg2, flag12)
end
function textValue11()
  local arg1, arg2, flag12, textValue5, textValue7
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  flag12 = arg2
  arg2 = arg2.Get
  textValue5 = "scubadiving"
  textValue7 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(flag12, textValue5, textValue7)
  flag12 = false
  arg1(arg2, flag12)
end
eventHandlerRegistration = AddEventHandler
rageUiCall = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function textValue(arg1, arg2)
  local flag12, textValue5, textValue7, workValue2, flag14, textValue9, textValue10, numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4
  if arg2 then
    flag12 = CMG
    flag12 = flag12.createDynamicPed
    textValue5 = cmgCall.jobPedModel
    textValue7 = cmgCall.jobPedPosition
    workValue2 = cmgCall.jobPedHeading
    flag14 = true
    textValue9 = "mini@strip_club@idles@bouncer@base"
    textValue10 = "base"
    numberValue13 = 100
    flag = false
    function numberValue(arg12)
      local mathHelper, numberValue6, numberValue7, numberValue8, numberValue10, numberValue11, numberValue12
      mathHelper = math
      mathHelper = mathHelper.random
      numberValue6 = 1
      numberValue7 = 15
      mathHelper = mathHelper(numberValue6, numberValue7)
      numberValue6 = SetPedComponentVariation
      numberValue7 = arg12
      numberValue8 = 11
      numberValue10 = 243
      numberValue11 = mathHelper
      numberValue12 = 0
      numberValue6(numberValue7, numberValue8, numberValue10, numberValue11, numberValue12)
      numberValue6 = SetPedComponentVariation
      numberValue7 = arg12
      numberValue8 = 3
      numberValue10 = 123
      numberValue11 = 0
      numberValue12 = 0
      numberValue6(numberValue7, numberValue8, numberValue10, numberValue11, numberValue12)
      numberValue6 = SetPedComponentVariation
      numberValue7 = arg12
      numberValue8 = 4
      numberValue10 = 94
      numberValue11 = mathHelper
      numberValue12 = 0
      numberValue6(numberValue7, numberValue8, numberValue10, numberValue11, numberValue12)
      numberValue6 = SetPedComponentVariation
      numberValue7 = arg12
      numberValue8 = 6
      numberValue10 = 67
      numberValue11 = 1
      numberValue12 = 0
      numberValue6(numberValue7, numberValue8, numberValue10, numberValue11, numberValue12)
      numberValue6 = SetPedComponentVariation
      numberValue7 = arg12
      numberValue8 = 7
      numberValue10 = 40
      numberValue11 = 1
      numberValue12 = 0
      numberValue6(numberValue7, numberValue8, numberValue10, numberValue11, numberValue12)
      numberValue6 = SetPedComponentVariation
      numberValue7 = arg12
      numberValue8 = 8
      numberValue10 = 15
      numberValue11 = 0
      numberValue12 = 1
      numberValue6(numberValue7, numberValue8, numberValue10, numberValue11, numberValue12)
      numberValue6 = SetPedScubaGearVariation
      numberValue7 = arg12
      numberValue6(numberValue7)
    end
    flag12(textValue5, textValue7, workValue2, flag14, textValue9, textValue10, numberValue13, flag, numberValue)
    flag12 = tCMG
    flag12 = flag12.addBlip
    textValue5 = cmgCall.jobPosition
    textValue5 = textValue5.x
    textValue7 = cmgCall.jobPosition
    textValue7 = textValue7.y
    workValue2 = cmgCall.jobPosition
    workValue2 = workValue2.z
    flag14 = 308
    textValue9 = 0
    textValue10 = "Scuba Diving"
    -- Beginner: Create a minimap blip.
    flag12(textValue5, textValue7, workValue2, flag14, textValue9, textValue10)
    flag12 = tCMG
    flag12 = flag12.addMarker
    textValue5 = cmgCall.jobPosition
    textValue5 = textValue5.x
    textValue7 = cmgCall.jobPosition
    textValue7 = textValue7.y
    workValue2 = cmgCall.jobPosition
    workValue2 = workValue2.z
    workValue2 = workValue2 - 0.2
    flag14 = 0.5
    textValue9 = 0.5
    textValue10 = 0.5
    numberValue13 = 0
    flag = 50
    numberValue = 255
    numberValue2 = 170
    dataTable = 50
    numberValue3 = 20
    flag2 = false
    flag3 = false
    flag4 = true
    -- Beginner: Create a world marker.
    flag12(textValue5, textValue7, workValue2, flag14, textValue9, textValue10, numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4)
    function flag12()
      local arg12, mathHelper
      arg12 = workValue5
      arg12()
    end
    function textValue5()
      local arg12, mathHelper
      arg12 = textValue11
      arg12()
    end
    function textValue7()
      local arg12, mathHelper
    end
    workValue2 = CMG
    workValue2 = workValue2.createArea
    flag14 = "scubajob"
    textValue9 = cmgCall.jobPosition
    textValue10 = 1.5
    numberValue13 = 6
    flag = flag12
    numberValue = textValue5
    numberValue2 = textValue7
    dataTable = {}
    -- Beginner: Create an interaction area around a world position.
    workValue2(flag14, textValue9, textValue10, numberValue13, flag, numberValue, numberValue2, dataTable)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(rageUiCall, textValue)
eventHandlerRegistration = RageUI
eventHandlerRegistration = eventHandlerRegistration.CreateWhile
rageUiCall = 1.0
textValue = RMenu
textValue2 = textValue
textValue = textValue.Get
rageUiCall2 = "scubadiving"
rageUiCall3 = "main"
-- Beginner: result below is menu.
textValue = textValue(textValue2, rageUiCall2, rageUiCall3)
textValue2 = nil
function rageUiCall2()
  local arg1, arg2, flag12, textValue5, textValue7, workValue2, flag14
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag12 = arg2
  arg2 = arg2.Get
  textValue5 = "scubadiving"
  textValue7 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(flag12, textValue5, textValue7)
  flag12 = true
  textValue5 = true
  textValue7 = true
  function workValue2()
    local arg12, mathHelper, numberValue6, numberValue7, numberValue8, numberValue10
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    mathHelper = "Request Job"
    numberValue6 = ""
    numberValue7 = {}
    numberValue7.RightLabel = "\226\134\146\226\134\146\226\134\146"
    numberValue8 = true
    function numberValue10(arg13, arg22, arg3)
      local serverEventCall, textValue8
      if arg3 then
        serverEventCall = flag13
        if not serverEventCall then
          serverEventCall = TriggerServerEvent
          textValue8 = "72d27dd1d1"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "72d27dd1d1".
          serverEventCall(textValue8)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(mathHelper, numberValue6, numberValue7, numberValue8, numberValue10)
    arg12 = numberValue5
    if 0 ~= arg12 then
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      mathHelper = "Claim Reward"
      numberValue6 = ""
      numberValue7 = {}
      numberValue7.RightLabel = "\226\134\146\226\134\146\226\134\146"
      numberValue8 = true
      function numberValue10(arg13, arg22, arg3)
        local serverEventCall, textValue8, workValue3, flag15
        if arg3 then
          serverEventCall = TriggerServerEvent
          textValue8 = "e370842c85"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e370842c85".
          serverEventCall(textValue8)
          serverEventCall = 0
          numberValue5 = serverEventCall
          serverEventCall = false
          flag13 = serverEventCall
          serverEventCall = false
          flag16 = serverEventCall
          serverEventCall = DoesEntityExist
          textValue8 = numberValue9
          serverEventCall = serverEventCall(textValue8)
          if serverEventCall then
            serverEventCall = DeleteVehicle
            textValue8 = numberValue9
            serverEventCall(textValue8)
          end
          serverEventCall = tCMG
          serverEventCall = serverEventCall.setCustomization
          textValue8 = workValue4
          serverEventCall(textValue8)
          serverEventCall = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          serverEventCall = serverEventCall()
          textValue8 = SetEnableScuba
          workValue3 = serverEventCall
          flag15 = false
          textValue8(workValue3, flag15)
          textValue8 = SetPedMaxTimeUnderwater
          workValue3 = serverEventCall
          flag15 = 10.0
          textValue8(workValue3, flag15)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(mathHelper, numberValue6, numberValue7, numberValue8, numberValue10)
    end
  end
  function flag14()
    local arg12, mathHelper
  end
  arg1(arg2, flag12, textValue5, textValue7, workValue2, flag14)
end
eventHandlerRegistration(rageUiCall, textValue, textValue2, rageUiCall2)
function eventHandlerRegistration()
  local arg1, arg2, flag12, textValue5, textValue7, workValue2, flag14, textValue9
  arg1 = pairs
  arg2 = dataTable2
  arg1, arg2, flag12, textValue5 = arg1(arg2)
  for textValue7, workValue2 in arg1, arg2, flag12, textValue5 do
    flag14 = tCMG
    flag14 = flag14.removeMarker
    textValue9 = workValue2.objectMarker
    flag14(textValue9)
    flag14 = tCMG
    flag14 = flag14.removeArea
    textValue9 = workValue2.objectArea
    flag14(textValue9)
    flag14 = DoesEntityExist
    textValue9 = workValue2.objectId
    flag14 = flag14(textValue9)
    if flag14 then
      flag14 = DeleteEntity
      textValue9 = workValue2.objectId
      -- Beginner: Delete a GTA entity.
      flag14(textValue9)
    end
  end
  arg1 = {}
  dataTable2 = arg1
end
function rageUiCall(arg1, arg2)
  local flag12, textValue5, textValue7, workValue2
  flag12 = Citizen
  flag12 = flag12.InvokeNative
  textValue5 = 6304891098843168073
  textValue7 = arg1
  workValue2 = arg2
  flag12(textValue5, textValue7, workValue2)
end
function textValue()
  local arg1, arg2, flag12, textValue5, textValue7, workValue2, flag14, textValue9, textValue10, numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10, flag11
  arg1 = CMG
  arg1 = arg1.loadAnimDict
  arg2 = "missheistchem2"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  flag12 = GetVehiclePedIsIn
  textValue5 = arg2
  textValue7 = false
  -- Beginner: result below is currentVehicle.
  flag12 = flag12(textValue5, textValue7)
  textValue5 = NetworkGetNetworkIdFromEntity
  textValue7 = flag12
  textValue5 = textValue5(textValue7)
  textValue7 = GetEntityCoords
  workValue2 = flag12
  -- Beginner: result below is entityCoords.
  textValue7 = textValue7(workValue2)
  workValue2 = SetBoatAnchor
  flag14 = flag12
  textValue9 = true
  workValue2(flag14, textValue9)
  workValue2 = rageUiCall
  flag14 = flag12
  textValue9 = true
  workValue2(flag14, textValue9)
  workValue2 = SetVehicleEngineOn
  flag14 = flag12
  textValue9 = false
  textValue10 = false
  numberValue13 = false
  workValue2(flag14, textValue9, textValue10, numberValue13)
  workValue2 = ClearPedTasksImmediately
  flag14 = arg2
  workValue2(flag14)
  workValue2 = CreateSynchronizedScene
  flag14 = 0.0
  textValue9 = 0.0
  textValue10 = 0.0
  numberValue13 = 0.0
  flag = 0.0
  numberValue = 0.0
  numberValue2 = 2
  workValue2 = workValue2(flag14, textValue9, textValue10, numberValue13, flag, numberValue, numberValue2)
  flag14 = TaskSynchronizedScene
  textValue9 = arg2
  textValue10 = workValue2
  numberValue13 = "missheistchem2"
  flag = "Boat_Dive_Enter_Player"
  numberValue = 1000.0
  numberValue2 = -8.0
  dataTable = 4
  numberValue3 = 0
  flag2 = 1148846080
  flag3 = 0
  flag14(textValue9, textValue10, numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3)
  flag14 = AttachSynchronizedSceneToEntity
  textValue9 = workValue2
  textValue10 = flag12
  numberValue13 = 0
  flag14(textValue9, textValue10, numberValue13)
  flag14 = StartAudioScene
  textValue9 = "FBI_5_DIVE_IN_SYNC_SCENE"
  flag14(textValue9)
  while true do
    flag14 = IsSynchronizedSceneRunning
    textValue9 = workValue2
    flag14 = flag14(textValue9)
    if not flag14 then
      break
    end
    flag14 = GetSynchronizedScenePhase
    textValue9 = workValue2
    flag14 = flag14(textValue9)
    if not (flag14 < 1.0) then
      break
    end
    flag14 = Wait
    textValue9 = 0
    flag14(textValue9)
  end
  flag14 = CreateSynchronizedScene
  textValue9 = 0.0
  textValue10 = 0.0
  numberValue13 = 0.0
  flag = 0.0
  numberValue = 0.0
  numberValue2 = 0.0
  dataTable = 2
  flag14 = flag14(textValue9, textValue10, numberValue13, flag, numberValue, numberValue2, dataTable)
  textValue9 = TaskSynchronizedScene
  textValue10 = arg2
  numberValue13 = flag14
  flag = "missheistchem2"
  numberValue = "Boat_Dive_Idle_Player"
  numberValue2 = 8.0
  dataTable = -8.0
  numberValue3 = 4
  flag2 = 0
  flag3 = 8.0
  flag4 = 1024
  textValue9(textValue10, numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4)
  textValue9 = AttachSynchronizedSceneToEntity
  textValue10 = flag14
  numberValue13 = flag12
  flag = 0
  textValue9(textValue10, numberValue13, flag)
  textValue9 = SetSynchronizedSceneLooped
  textValue10 = flag14
  numberValue13 = true
  textValue9(textValue10, numberValue13)
  textValue9 = CMG
  textValue9 = textValue9.getPlayerCoords
  -- Beginner: result below is playerCoords.
  textValue9 = textValue9()
  textValue9 = #textValue9
  if textValue9 < 10.0 then
    textValue9 = SetEntityCoords
    textValue10 = arg2
    numberValue13 = arg1.x
    flag = arg1.y
    numberValue = arg1.z
    numberValue2 = true
    dataTable = false
    numberValue3 = false
    flag2 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    textValue9(textValue10, numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2)
  end
  textValue9 = false
  textValue10 = SetPedScubaGearVariation
  numberValue13 = CMG
  numberValue13 = numberValue13.getPlayerPed
  numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10, flag11 = numberValue13()
  textValue10(numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10, flag11)
  textValue10 = drawNativeNotification
  numberValue13 = "Press ~INPUT_PICKUP~ to start Scuba Diving."
  -- Beginner: Show a GTA-style notification/help prompt.
  textValue10(numberValue13)
  while not textValue9 do
    textValue10 = IsControlJustReleased
    numberValue13 = 1
    flag = 38
    textValue10 = textValue10(numberValue13, flag)
    if textValue10 then
      break
    end
    textValue10 = Wait
    numberValue13 = 0
    textValue10(numberValue13)
  end
  textValue10 = SetPlayerControl
  numberValue13 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  numberValue13 = numberValue13()
  flag = false
  numberValue = 256
  textValue10(numberValue13, flag, numberValue)
  textValue10 = CreateSynchronizedScene
  numberValue13 = 0.0
  flag = 0.0
  numberValue = 0.0
  numberValue2 = 0.0
  dataTable = 0.0
  numberValue3 = 0.0
  flag2 = 2
  textValue10 = textValue10(numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2)
  flag14 = textValue10
  textValue10 = TaskSynchronizedScene
  numberValue13 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue13 = numberValue13()
  flag = flag14
  numberValue = "missheistchem2"
  numberValue2 = "Boat_Dive_Exit_Player"
  dataTable = 1000.0
  numberValue3 = -8.0
  flag2 = 4
  flag3 = 0
  flag4 = 1148846080
  flag5 = 0
  textValue10(numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4, flag5)
  textValue10 = AttachSynchronizedSceneToEntity
  numberValue13 = flag14
  flag = flag12
  numberValue = 0
  textValue10(numberValue13, flag, numberValue)
  textValue10 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  textValue10 = textValue10()
  numberValue13 = false
  flag = false
  numberValue = false
  numberValue2 = CMG
  numberValue2 = numberValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  numberValue2 = numberValue2()
  numberValue2 = #numberValue2
  if numberValue2 < 10.0 then
    numberValue2 = SetEntityCoords
    dataTable = arg2
    numberValue3 = arg1.x
    flag2 = arg1.y
    flag3 = arg1.z
    flag4 = true
    flag5 = false
    flag6 = false
    flag7 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    numberValue2(dataTable, numberValue3, flag2, flag3, flag4, flag5, flag6, flag7)
  end
  numberValue2 = SetEnableScuba
  dataTable = arg2
  numberValue3 = true
  numberValue2(dataTable, numberValue3)
  numberValue2 = SetPedMaxTimeUnderwater
  dataTable = arg2
  numberValue3 = 400.0
  numberValue2(dataTable, numberValue3)
  while true do
    numberValue2 = IsSynchronizedSceneRunning
    dataTable = flag14
    numberValue2 = numberValue2(dataTable)
    if not numberValue2 then
      break
    end
    numberValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    numberValue2 = numberValue2()
    numberValue2 = numberValue2 - textValue10
    dataTable = 20000
    if not (numberValue2 < dataTable) then
      break
    end
    numberValue2 = GetSynchronizedScenePhase
    dataTable = flag14
    numberValue2 = numberValue2(dataTable)
    dataTable = 0.147
    if numberValue2 > dataTable and not numberValue13 then
      numberValue2 = CMG
      numberValue2 = numberValue2.loadPtfx
      dataTable = "scr_fbi5a"
      numberValue2(dataTable)
      numberValue2 = StartParticleFxNonLoopedOnEntity
      dataTable = "scr_fbi5_ped_water_splash"
      numberValue3 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      numberValue3 = numberValue3()
      flag2 = 0.0
      flag3 = 0.0
      flag4 = 0.0
      flag5 = 0.0
      flag6 = 0.0
      flag7 = 0.0
      flag8 = 1065353216
      flag9 = false
      flag10 = false
      flag11 = false
      numberValue2(dataTable, numberValue3, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10, flag11)
      numberValue2 = RemoveNamedPtfxAsset
      dataTable = "scr_fbi5a"
      numberValue2(dataTable)
      numberValue13 = true
    end
    numberValue2 = GetSynchronizedScenePhase
    dataTable = flag14
    numberValue2 = numberValue2(dataTable)
    dataTable = 0.48
    if numberValue2 > dataTable and not flag then
      numberValue2 = CMG
      numberValue2 = numberValue2.loadPtfx
      dataTable = "scr_fbi5a"
      numberValue2(dataTable)
      numberValue2 = StartParticleFxNonLoopedOnEntity
      dataTable = "water_splash_ped_bubbles"
      numberValue3 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      numberValue3 = numberValue3()
      flag2 = 0.0
      flag3 = 0.0
      flag4 = 0.0
      flag5 = 0.0
      flag6 = 0.0
      flag7 = 0.0
      flag8 = 1065353216
      flag9 = false
      flag10 = false
      flag11 = false
      numberValue2(dataTable, numberValue3, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10, flag11)
      flag = true
      numberValue2 = DetachEntity
      dataTable = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      dataTable = dataTable()
      numberValue3 = false
      flag2 = false
      numberValue2(dataTable, numberValue3, flag2)
      numberValue2 = RemoveNamedPtfxAsset
      dataTable = "scr_fbi5a"
      numberValue2(dataTable)
    end
    numberValue2 = GetSynchronizedScenePhase
    dataTable = flag14
    numberValue2 = numberValue2(dataTable)
    dataTable = 0.65
    if numberValue2 > dataTable and not numberValue then
      numberValue = true
      numberValue2 = DetachEntity
      dataTable = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      dataTable = dataTable()
      numberValue3 = false
      flag2 = false
      numberValue2(dataTable, numberValue3, flag2)
      numberValue2 = TaskPlayAnim
      dataTable = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      dataTable = dataTable()
      numberValue3 = "SWIMMING@scuba"
      flag2 = "dive_run"
      flag3 = 4.0
      flag4 = -1.5
      flag5 = 1000
      flag6 = 131081
      flag7 = 0
      flag8 = false
      flag9 = false
      flag10 = false
      -- Beginner: Play an animation on a ped.
      numberValue2(dataTable, numberValue3, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10)
      numberValue2 = TaskForceMotionState
      dataTable = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      dataTable = dataTable()
      numberValue3 = -1855028596
      flag2 = false
      numberValue2(dataTable, numberValue3, flag2)
      numberValue2 = TaskGoStraightToCoord
      dataTable = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      dataTable = dataTable()
      numberValue3 = textValue7.x
      flag2 = textValue7.y
      flag3 = textValue7.z
      flag3 = flag3 - 5.0
      flag4 = -7.5
      flag5 = 2
      flag6 = -1
      flag7 = 1193033728
      numberValue2(dataTable, numberValue3, flag2, flag3, flag4, flag5, flag6, flag7)
      numberValue2 = SetPlayerControl
      dataTable = PlayerId
      -- Beginner: result below is localPlayerIndex.
      dataTable = dataTable()
      numberValue3 = true
      flag2 = 256
      numberValue2(dataTable, numberValue3, flag2)
    end
    numberValue2 = Wait
    dataTable = 0
    numberValue2(dataTable)
  end
  numberValue2 = RemoveAnimDict
  dataTable = "missheistchem2"
  numberValue2(dataTable)
  numberValue2 = DisposeSynchronizedScene
  dataTable = flag14
  numberValue2(dataTable)
  numberValue2 = ClearPedTasksImmediately
  dataTable = arg2
  numberValue2(dataTable)
  numberValue2 = CMG
  numberValue2 = numberValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  numberValue2 = numberValue2()
  numberValue2 = #numberValue2
  if numberValue2 < 10.0 then
    numberValue2 = SetEntityCoords
    dataTable = arg2
    numberValue3 = arg1.x
    flag2 = arg1.y
    flag3 = arg1.z
    flag4 = true
    flag5 = false
    flag6 = false
    flag7 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    numberValue2(dataTable, numberValue3, flag2, flag3, flag4, flag5, flag6, flag7)
  end
  numberValue2 = false
  while true do
    dataTable = GetVehiclePedIsIn
    numberValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    numberValue3 = numberValue3()
    flag2 = false
    -- Beginner: result below is currentVehicle.
    dataTable = dataTable(numberValue3, flag2)
    if dataTable == flag12 then
      break
    end
    dataTable = DoesEntityExist
    numberValue3 = flag12
    dataTable = dataTable(numberValue3)
    if not dataTable then
      if not numberValue2 then
        dataTable = print
        numberValue3 = "[Scuba] Boat has left scope. Previous Entity:"
        flag2 = flag12
        flag3 = "NetID:"
        flag4 = textValue5
        dataTable(numberValue3, flag2, flag3, flag4)
        numberValue2 = true
      end
      dataTable = NetworkDoesEntityExistWithNetworkId
      numberValue3 = textValue5
      dataTable = dataTable(numberValue3)
      if dataTable then
        dataTable = NetworkGetEntityFromNetworkId
        numberValue3 = textValue5
        dataTable = dataTable(numberValue3)
        flag12 = dataTable
        numberValue3 = print
        flag2 = "[Scuba] Boat has come back in to scope. Entity:"
        flag3 = flag12
        flag4 = "NetID:"
        flag5 = textValue5
        numberValue3(flag2, flag3, flag4, flag5)
        numberValue2 = false
      end
    end
    dataTable = Wait
    numberValue3 = 250
    dataTable(numberValue3)
  end
  dataTable = SetBoatAnchor
  numberValue3 = flag12
  flag2 = false
  dataTable(numberValue3, flag2)
  dataTable = rageUiCall
  numberValue3 = flag12
  flag2 = false
  dataTable(numberValue3, flag2)
  dataTable = tCMG
  dataTable = dataTable.notify
  numberValue3 = "~g~Scuba Diving job ended, return to HQ to get paid!"
  -- Beginner: Show a notification to the player.
  dataTable(numberValue3)
  dataTable = SetNewWaypoint
  numberValue3 = -2195.6926269531
  flag2 = -394.82040405273
  dataTable(numberValue3, flag2)
  dataTable = eventHandlerRegistration
  dataTable()
  dataTable = numberValue5
  if dataTable > 6 then
    dataTable = 6
    numberValue5 = dataTable
  end
  dataTable = TriggerServerEvent
  numberValue3 = "64b26a9931"
  flag2 = numberValue5
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "64b26a9931".
  dataTable(numberValue3, flag2)
end
textValue2 = {}
rageUiCall2 = 2
rageUiCall3 = 160
textValue3 = 161
textValue4 = 163
numberValue4 = 167
textValue2[1] = rageUiCall2
textValue2[2] = rageUiCall3
textValue2[3] = textValue3
textValue2[4] = textValue4
textValue2[5] = numberValue4
function rageUiCall2(arg1)
  local arg2, flag12, textValue5, textValue7, workValue2, flag14, textValue9, textValue10, numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10, flag11
  arg2 = pairs
  flag12 = arg1.rewardObjects
  arg2, flag12, textValue5, textValue7 = arg2(flag12)
  for workValue2, flag14 in arg2, flag12, textValue5, textValue7 do
    textValue9 = CMG
    textValue9 = textValue9.loadModel
    textValue10 = flag14.objectModel
    textValue9 = textValue9(textValue10)
    textValue10 = CreateObject
    numberValue13 = textValue9
    flag = flag14.objectPosition
    flag = flag.x
    numberValue = flag14.objectPosition
    numberValue = numberValue.y
    numberValue2 = flag14.objectPosition
    numberValue2 = numberValue2.z
    dataTable = false
    numberValue3 = true
    flag2 = false
    -- Beginner: result below is objectEntity.
    textValue10 = textValue10(numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2)
    numberValue13 = SetModelAsNoLongerNeeded
    flag = textValue9
    numberValue13(flag)
    numberValue13 = tCMG
    numberValue13 = numberValue13.addMarker
    flag = flag14.objectPosition
    flag = flag.x
    numberValue = flag14.objectPosition
    numberValue = numberValue.y
    numberValue2 = flag14.objectPosition
    numberValue2 = numberValue2.z
    numberValue2 = numberValue2 + 0.6
    dataTable = 0.5
    numberValue3 = 0.5
    flag2 = 0.5
    flag3 = 255
    flag4 = 223
    flag5 = 0
    flag6 = 150
    flag7 = 50.0
    flag8 = 0
    flag9 = false
    flag10 = true
    flag11 = true
    numberValue13 = numberValue13(flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10, flag11)
    function flag()
      local arg12, mathHelper
      arg12 = drawNativeNotification
      mathHelper = "Press ~INPUT_PICKUP~ to collect!"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(mathHelper)
    end
    function numberValue()
      local arg12, mathHelper
    end
    function numberValue2(arg12)
      local mathHelper, numberValue6, numberValue7
      mathHelper = IsControlJustReleased
      numberValue6 = 1
      numberValue7 = 38
      mathHelper = mathHelper(numberValue6, numberValue7)
      if mathHelper then
        mathHelper = flag13
        if mathHelper then
          mathHelper = tCMG
          mathHelper = mathHelper.notify
          numberValue6 = "~g~Item collected."
          -- Beginner: Show a notification to the player.
          mathHelper(numberValue6)
          mathHelper = numberValue5
          mathHelper = mathHelper + 1
          numberValue5 = mathHelper
          mathHelper = tCMG
          mathHelper = mathHelper.removeMarker
          numberValue7 = arg12.objectId
          numberValue6 = dataTable2
          numberValue6 = numberValue6[numberValue7]
          numberValue6 = numberValue6.objectMarker
          mathHelper(numberValue6)
          mathHelper = tCMG
          mathHelper = mathHelper.removeArea
          numberValue7 = arg12.objectId
          numberValue6 = dataTable2
          numberValue6 = numberValue6[numberValue7]
          numberValue6 = numberValue6.objectArea
          mathHelper(numberValue6)
          mathHelper = DeleteEntity
          numberValue7 = arg12.objectId
          numberValue6 = dataTable2
          numberValue6 = numberValue6[numberValue7]
          numberValue6 = numberValue6.objectId
          -- Beginner: Delete a GTA entity.
          mathHelper(numberValue6)
          numberValue6 = arg12.objectId
          mathHelper = dataTable2
          mathHelper = mathHelper[numberValue6]
          mathHelper.objectMarker = nil
          numberValue6 = arg12.objectId
          mathHelper = dataTable2
          mathHelper = mathHelper[numberValue6]
          mathHelper.objectArea = nil
          numberValue6 = arg12.objectId
          mathHelper = dataTable2
          mathHelper = mathHelper[numberValue6]
          mathHelper.objectId = nil
        end
      end
    end
    dataTable = CMG
    dataTable = dataTable.createArea
    numberValue3 = "scubajob_"
    flag2 = arg1.name
    flag3 = "_obj_"
    flag4 = workValue2
    numberValue3 = numberValue3 .. flag2 .. flag3 .. flag4
    flag2 = flag14.objectPosition
    flag3 = 3.0
    flag4 = 3.0
    flag5 = flag
    flag6 = numberValue
    flag7 = numberValue2
    flag8 = {}
    flag8.objectId = workValue2
    -- Beginner: Create an interaction area around a world position.
    dataTable(numberValue3, flag2, flag3, flag4, flag5, flag6, flag7, flag8)
    dataTable = dataTable2
    numberValue3 = {}
    dataTable[workValue2] = numberValue3
    dataTable = dataTable2
    dataTable = dataTable[workValue2]
    dataTable.objectId = textValue10
    dataTable = dataTable2
    dataTable = dataTable[workValue2]
    dataTable.objectMarker = numberValue13
    dataTable = dataTable2
    dataTable = dataTable[workValue2]
    numberValue3 = "scubajob_"
    flag2 = arg1.name
    flag3 = "_obj_"
    flag4 = workValue2
    numberValue3 = numberValue3 .. flag2 .. flag3 .. flag4
    dataTable.objectArea = numberValue3
  end
end
rageUiCall3 = RegisterNetEvent
textValue3 = "82c23c96fb"
-- Beginner: this function handles network event "82c23c96fb".
function textValue4(arg1)
  local arg2, flag12, textValue5, textValue7, workValue2, flag14, textValue9, textValue10, numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4
  arg2 = true
  flag13 = arg2
  arg2 = DoScreenFadeOut
  flag12 = 500
  arg2(flag12)
  arg2 = Wait
  flag12 = 600
  arg2(flag12)
  arg2 = AddBlipForRadius
  flag12 = arg1.position
  flag12 = flag12.x
  textValue5 = arg1.position
  textValue5 = textValue5.y
  textValue7 = arg1.position
  textValue7 = textValue7.z
  workValue2 = 250.0
  -- Beginner: result below is blipHandle.
  arg2 = arg2(flag12, textValue5, textValue7, workValue2)
  flag12 = SetBlipColour
  textValue5 = arg2
  textValue7 = 30
  flag12(textValue5, textValue7)
  flag12 = SetBlipAlpha
  textValue5 = arg2
  textValue7 = 180
  flag12(textValue5, textValue7)
  function flag12()
    local arg12, mathHelper
    arg12 = drawNativeNotification
    mathHelper = "Press ~INPUT_DETONATE~ to begin diving!"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg12(mathHelper)
  end
  function textValue5()
    local arg12, mathHelper
  end
  function textValue7()
    local arg12, mathHelper, numberValue6, numberValue7, numberValue8, numberValue10, numberValue11, numberValue12, cmgCall2, textValue12, workValue
    arg12 = IsControlJustReleased
    mathHelper = 1
    numberValue6 = 47
    arg12 = arg12(mathHelper, numberValue6)
    if not arg12 then
      return
    end
    arg12 = CMG
    arg12 = arg12.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg12 = arg12()
    mathHelper = CMG
    mathHelper = mathHelper.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    mathHelper = mathHelper()
    if 0 ~= mathHelper then
      numberValue6 = DoesEntityExist
      numberValue7 = mathHelper
      numberValue6 = numberValue6(numberValue7)
      if numberValue6 then
        goto flow_label_26
      end
    end
    numberValue6 = tCMG
    numberValue6 = numberValue6.notify
    numberValue7 = "~r~You must be in a boat to start scuba diving!"
    -- Beginner: Show a notification to the player.
    numberValue6(numberValue7)
    return
    ::flow_label_26::
    numberValue6 = GetEntityModel
    numberValue7 = mathHelper
    -- Beginner: result below is modelHash.
    numberValue6 = numberValue6(numberValue7)
    if 1033245328 ~= numberValue6 then
      numberValue6 = tCMG
      numberValue6 = numberValue6.notify
      numberValue7 = "~r~You must be in a dinghy to start scuba diving!"
      numberValue6(numberValue7)
      return
    end
    numberValue6 = GetPedInVehicleSeat
    numberValue7 = mathHelper
    numberValue8 = -1
    numberValue6 = numberValue6(numberValue7, numberValue8)
    if numberValue6 ~= arg12 then
      numberValue6 = tCMG
      numberValue6 = numberValue6.notify
      numberValue7 = "~r~You must be in the driver seat of the dinghy to start scuba diving!"
      -- Beginner: Show a notification to the player.
      numberValue6(numberValue7)
      return
    end
    numberValue6 = pairs
    numberValue7 = textValue2
    numberValue6, numberValue7, numberValue8, numberValue10 = numberValue6(numberValue7)
    for numberValue11, numberValue12 in numberValue6, numberValue7, numberValue8, numberValue10 do
      cmgCall2 = GetIsTaskActive
      textValue12 = arg12
      workValue = numberValue12
      cmgCall2 = cmgCall2(textValue12, workValue)
      if cmgCall2 then
        cmgCall2 = tCMG
        cmgCall2 = cmgCall2.notify
        textValue12 = "~r~You must be stationary in the driver seat to start scuba diving!"
        cmgCall2(textValue12)
        return
      end
    end
    numberValue6 = TriggerServerEvent
    numberValue7 = "15464d9482"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "15464d9482".
    numberValue6(numberValue7)
    numberValue6 = tCMG
    numberValue6 = numberValue6.removeArea
    numberValue7 = "scubajob_"
    numberValue8 = arg1.name
    numberValue7 = numberValue7 .. numberValue8
    numberValue6(numberValue7)
    numberValue6 = "~y~Search for treasures and return to your boat when finished"
    textValue6 = numberValue6
    numberValue6 = rageUiCall2
    numberValue7 = arg1
    numberValue6(numberValue7)
    numberValue6 = CreateThread
    numberValue7 = textValue
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    numberValue6(numberValue7)
  end
  workValue2 = SetWaypointOff
  workValue2()
  workValue2 = tCMG
  workValue2 = workValue2.addBlip
  flag14 = arg1.position
  flag14 = flag14.x
  textValue9 = arg1.position
  textValue9 = textValue9.y
  textValue10 = arg1.position
  textValue10 = textValue10.z
  numberValue13 = arg1.blipId
  flag = arg1.blipColour
  numberValue = "Scuba Diving"
  workValue2 = workValue2(flag14, textValue9, textValue10, numberValue13, flag, numberValue)
  flag14 = SetNewWaypoint
  textValue9 = arg1.position
  textValue9 = textValue9.x
  textValue10 = arg1.position
  textValue10 = textValue10.y
  flag14(textValue9, textValue10)
  flag14 = CMG
  flag14 = flag14.createArea
  textValue9 = "scubajob_"
  textValue10 = arg1.name
  textValue9 = textValue9 .. textValue10
  textValue10 = arg1.position
  numberValue13 = 250
  flag = 15
  numberValue = flag12
  numberValue2 = textValue5
  dataTable = textValue7
  numberValue3 = {}
  -- Beginner: Create an interaction area around a world position.
  flag14(textValue9, textValue10, numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3)
  flag14 = tCMG
  flag14 = flag14.getCustomization
  flag14 = flag14()
  workValue4 = flag14
  flag14 = tCMG
  flag14 = flag14.setCustomization
  textValue9 = {}
  textValue9.modelhash = 1885233650
  flag14(textValue9)
  flag14 = math
  flag14 = flag14.random
  textValue9 = 1
  textValue10 = 15
  flag14 = flag14(textValue9, textValue10)
  textValue9 = SetPedComponentVariation
  textValue10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue10 = textValue10()
  numberValue13 = 11
  flag = 243
  numberValue = flag14
  numberValue2 = 0
  textValue9(textValue10, numberValue13, flag, numberValue, numberValue2)
  textValue9 = SetPedComponentVariation
  textValue10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue10 = textValue10()
  numberValue13 = 3
  flag = 123
  numberValue = 0
  numberValue2 = 0
  textValue9(textValue10, numberValue13, flag, numberValue, numberValue2)
  textValue9 = SetPedComponentVariation
  textValue10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue10 = textValue10()
  numberValue13 = 4
  flag = 94
  numberValue = flag14
  numberValue2 = 0
  textValue9(textValue10, numberValue13, flag, numberValue, numberValue2)
  textValue9 = SetPedComponentVariation
  textValue10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue10 = textValue10()
  numberValue13 = 6
  flag = 67
  numberValue = 1
  numberValue2 = 0
  textValue9(textValue10, numberValue13, flag, numberValue, numberValue2)
  textValue9 = SetPedComponentVariation
  textValue10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue10 = textValue10()
  numberValue13 = 7
  flag = 40
  numberValue = 1
  numberValue2 = 0
  textValue9(textValue10, numberValue13, flag, numberValue, numberValue2)
  textValue9 = SetPedComponentVariation
  textValue10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue10 = textValue10()
  numberValue13 = 8
  flag = 15
  numberValue = 0
  numberValue2 = 1
  textValue9(textValue10, numberValue13, flag, numberValue, numberValue2)
  textValue9 = SetPedScubaGearVariation
  textValue10 = PlayerPedId
  textValue10, numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4 = textValue10()
  textValue9(textValue10, numberValue13, flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4)
  textValue9 = Wait
  textValue10 = 0
  textValue9(textValue10)
  textValue9 = math
  textValue9 = textValue9.random
  textValue10 = arg1.dinghySpawnPositions
  textValue10 = #textValue10
  textValue9 = textValue9(textValue10)
  textValue10 = arg1.dinghySpawnPositions
  textValue10 = textValue10[textValue9]
  numberValue13 = SetEntityCoords
  flag = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  flag = flag()
  numberValue = textValue10.x
  numberValue2 = textValue10.y
  dataTable = textValue10.z
  numberValue3 = false
  flag2 = false
  flag3 = false
  flag4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  numberValue13(flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4)
  numberValue13 = CMG
  numberValue13 = numberValue13.requestEntitySpawn
  flag = "scubajob"
  numberValue = arg1.dinghySpawnPositions
  numberValue = numberValue[textValue9]
  numberValue13(flag, numberValue)
  numberValue13 = CMG
  numberValue13 = numberValue13.spawnVehicle
  flag = 1033245328
  numberValue = arg1.dinghySpawnPositions
  numberValue = numberValue[textValue9]
  numberValue = numberValue.x
  numberValue2 = arg1.dinghySpawnPositions
  numberValue2 = numberValue2[textValue9]
  numberValue2 = numberValue2.y
  dataTable = arg1.dinghySpawnPositions
  dataTable = dataTable[textValue9]
  dataTable = dataTable.z
  numberValue3 = arg1.dinghySpawnHeading
  flag2 = true
  flag3 = true
  flag4 = true
  numberValue13 = numberValue13(flag, numberValue, numberValue2, dataTable, numberValue3, flag2, flag3, flag4)
  numberValue9 = numberValue13
  numberValue13 = AddBlipForEntity
  flag = numberValue9
  -- Beginner: result below is blipHandle.
  numberValue13 = numberValue13(flag)
  flag = SetBlipSprite
  numberValue = numberValue13
  numberValue2 = 427
  flag(numberValue, numberValue2)
  flag = SetBlipDisplay
  numberValue = numberValue13
  numberValue2 = 4
  flag(numberValue, numberValue2)
  flag = SetBlipScale
  numberValue = numberValue13
  numberValue2 = 1.0
  flag(numberValue, numberValue2)
  flag = SetBlipColour
  numberValue = numberValue13
  numberValue2 = 2
  flag(numberValue, numberValue2)
  flag = SetBlipAsShortRange
  numberValue = numberValue13
  numberValue2 = true
  flag(numberValue, numberValue2)
  flag = BeginTextCommandSetBlipName
  numberValue = "STRING"
  flag(numberValue)
  flag = AddTextComponentSubstringPlayerName
  numberValue = "Scuba Dinghy"
  flag(numberValue)
  flag = EndTextCommandSetBlipName
  numberValue = numberValue13
  flag(numberValue)
  flag = Wait
  numberValue = 2000
  flag(numberValue)
  flag = NetworkGetNetworkIdFromEntity
  numberValue = numberValue9
  flag = flag(numberValue)
  numberValue = TriggerServerEvent
  numberValue2 = "78dddcfb46"
  dataTable = flag
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "78dddcfb46".
  numberValue(numberValue2, dataTable)
  numberValue = DoScreenFadeIn
  numberValue2 = 2000
  numberValue(numberValue2)
  numberValue = SetPedScubaGearVariation
  numberValue2 = PlayerPedId
  numberValue2, dataTable, numberValue3, flag2, flag3, flag4 = numberValue2()
  numberValue(numberValue2, dataTable, numberValue3, flag2, flag3, flag4)
  numberValue = Citizen
  numberValue = numberValue.CreateThread
  function numberValue2()
    local arg12, mathHelper, numberValue6, numberValue7
    while true do
      arg12 = flag13
      if not arg12 then
        break
      end
      arg12 = flag16
      if arg12 then
        arg12 = CMG
        arg12 = arg12.drawPlaneScaleForm
        mathHelper = "~r~MISSION FAILED"
        numberValue6 = "Your boat has been destroyed, go get a new one!"
        arg12(mathHelper, numberValue6)
        arg12 = flag13
        if arg12 then
          arg12 = flag16
          if arg12 then
            goto flow_label_19
          end
        end
        return
        ::flow_label_19::
        arg12 = SetWaypointOff
        arg12()
        arg12 = TriggerServerEvent
        mathHelper = "64b26a9931"
        numberValue6 = 0
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "64b26a9931".
        arg12(mathHelper, numberValue6)
        arg12 = TriggerServerEvent
        mathHelper = "e370842c85"
        arg12(mathHelper)
        arg12 = 0
        numberValue5 = arg12
        arg12 = false
        flag13 = arg12
        arg12 = false
        flag16 = arg12
        arg12 = tCMG
        arg12 = arg12.setCustomization
        mathHelper = workValue4
        arg12(mathHelper)
        arg12 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg12 = arg12()
        mathHelper = SetEnableScuba
        numberValue6 = arg12
        numberValue7 = false
        mathHelper(numberValue6, numberValue7)
        mathHelper = SetPedMaxTimeUnderwater
        numberValue6 = arg12
        numberValue7 = 10.0
        mathHelper(numberValue6, numberValue7)
        mathHelper = eventHandlerRegistration
        mathHelper()
        break
      end
      arg12 = Wait
      mathHelper = 250
      arg12(mathHelper)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue(numberValue2)
  numberValue = "~y~Head to the diving location: "
  numberValue2 = arg1.name
  numberValue = numberValue .. numberValue2
  textValue6 = numberValue
  while true do
    numberValue = flag13
    if not numberValue then
      break
    end
    numberValue = drawNativeText
    numberValue2 = textValue6
    -- Beginner: Draw GTA-style text on screen.
    numberValue(numberValue2)
    numberValue = Wait
    numberValue2 = 0
    numberValue(numberValue2)
  end
  numberValue = tCMG
  numberValue = numberValue.removeBlip
  numberValue2 = workValue2
  numberValue(numberValue2)
  numberValue = RemoveBlip
  numberValue2 = arg2
  numberValue(numberValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "82c23c96fb".
rageUiCall3(textValue3, textValue4)
rageUiCall3 = CMG
function textValue3()
  local arg1, arg2
  arg1 = flag13
  return arg1
end
rageUiCall3.isScubaJobInProgress = textValue3