--[[
    Beginner Guide: cl_dvsa.lua
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
    BEGINNER GUIDE — Dvsa
    =====================

    File: cmg/prod/client/misc/cl_dvsa.lua
    Purpose: This file contains general gameplay utility.

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
      * cfg/cfg_dvsa

    Commands/command-like entries found:
      * /dl
      * dl

    Network/hash identifiers found: 20
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * chat:addSuggestion

    Example player-facing text in this file:
      * You ~r~must ~w~slow down, or risk the test being terminated immediately
      * You are required to ~b~move over ~w~to allow a police pursuit to continue.
      * Vehicle Collision
      * You ~b~passed your test with ~y~
      * Controlled Stop - Serious

]]
local cmgCall, dataTable, textValue5, rageUiCall3, textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9
cmgCall = TriggerEvent
dataTable = "chat:addSuggestion"
textValue5 = "/dl"
rageUiCall3 = "Manage your driving licence and book a test"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
cmgCall(dataTable, textValue5, rageUiCall3)
cmgCall = CMG
dataTable = {}
cmgCall.DVSA = dataTable
cmgCall = RMenu
cmgCall = cmgCall.Add
dataTable = "dvsa"
textValue5 = "main"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateMenu
textValue6 = ""
cmgCall7 = "CMG Learning Centre"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuHeight
rageUiCall6 = rageUiCall6()
rageUiCall7 = "dvsa_banner"
cmgCall9 = "dvsa_banner"
rageUiCall3, textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9 = rageUiCall3(textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9)
cmgCall(dataTable, textValue5, rageUiCall3, textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9)
cmgCall = RMenu
cmgCall = cmgCall.Add
dataTable = "dvsa"
textValue5 = "surrenderconfirm"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateSubMenu
textValue6 = RMenu
cmgCall7 = textValue6
textValue6 = textValue6.Get
rageUiCall5 = "dvsa"
rageUiCall6 = "main"
-- Beginner: result below is menu.
textValue6 = textValue6(cmgCall7, rageUiCall5, rageUiCall6)
cmgCall7 = ""
rageUiCall5 = "~b~Surrender Licence"
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuWidth
rageUiCall6 = rageUiCall6()
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuHeight
rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9 = rageUiCall7()
rageUiCall3, textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9 = rageUiCall3(textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9)
cmgCall(dataTable, textValue5, rageUiCall3, textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9)
cmgCall = RMenu
cmgCall = cmgCall.Add
dataTable = "dvsa"
textValue5 = "licence"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateSubMenu
textValue6 = RMenu
cmgCall7 = textValue6
textValue6 = textValue6.Get
rageUiCall5 = "dvsa"
rageUiCall6 = "main"
-- Beginner: result below is menu.
textValue6 = textValue6(cmgCall7, rageUiCall5, rageUiCall6)
cmgCall7 = ""
rageUiCall5 = "~b~Driving Licence"
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuWidth
rageUiCall6 = rageUiCall6()
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuHeight
rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9 = rageUiCall7()
rageUiCall3, textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9 = rageUiCall3(textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9)
cmgCall(dataTable, textValue5, rageUiCall3, textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9)
cmgCall = RMenu
cmgCall = cmgCall.Add
dataTable = "dvsa"
textValue5 = "tests"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateSubMenu
textValue6 = RMenu
cmgCall7 = textValue6
textValue6 = textValue6.Get
rageUiCall5 = "dvsa"
rageUiCall6 = "main"
-- Beginner: result below is menu.
textValue6 = textValue6(cmgCall7, rageUiCall5, rageUiCall6)
cmgCall7 = ""
rageUiCall5 = "~b~Driving Tests"
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuWidth
rageUiCall6 = rageUiCall6()
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuHeight
rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9 = rageUiCall7()
rageUiCall3, textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9 = rageUiCall3(textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9)
cmgCall(dataTable, textValue5, rageUiCall3, textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9)
cmgCall = RMenu
cmgCall = cmgCall.Add
dataTable = "dvsa"
textValue5 = "alerts"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateSubMenu
textValue6 = RMenu
cmgCall7 = textValue6
textValue6 = textValue6.Get
rageUiCall5 = "dvsa"
rageUiCall6 = "main"
-- Beginner: result below is menu.
textValue6 = textValue6(cmgCall7, rageUiCall5, rageUiCall6)
cmgCall7 = ""
rageUiCall5 = "~b~Alerts"
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuWidth
rageUiCall6 = rageUiCall6()
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuHeight
rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9 = rageUiCall7()
rageUiCall3, textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9 = rageUiCall3(textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9)
cmgCall(dataTable, textValue5, rageUiCall3, textValue6, cmgCall7, rageUiCall5, rageUiCall6, rageUiCall7, cmgCall9, cmgCall2, workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9)
cmgCall = {}
dataTable = {}
textValue5 = {}
rageUiCall3 = {}
textValue6 = false
cmgCall7 = false
rageUiCall5 = {}
rageUiCall6 = nil
rageUiCall7 = {}
rageUiCall7.active = false
rageUiCall7.ped = 0
rageUiCall7.vehicle = 0
rageUiCall7.parkingSpace = 0
rageUiCall7.route = 0
rageUiCall7.waypoint = 0
rageUiCall7.blip = 0
rageUiCall7.serious = 0
rageUiCall7.minors = 0
cmgCall9 = {}
rageUiCall7.minorsReason = cmgCall9
cmgCall9 = {}
rageUiCall7.seriousReason = cmgCall9
rageUiCall7.subtitle = ""
cmgCall9 = CMG
cmgCall9 = cmgCall9.loadModule
cmgCall2 = "cfg/cfg_dvsa"
-- Beginner: result below is config.
cmgCall9 = cmgCall9(cmgCall2)
cmgCall2 = tCMG
cmgCall2 = cmgCall2.addMarker
workValue = cmgCall9.test
workValue = workValue.reception
workValue = workValue.x
workValue3 = cmgCall9.test
workValue3 = workValue3.reception
workValue3 = workValue3.y
workValue5 = cmgCall9.test
workValue5 = workValue5.reception
workValue5 = workValue5.z
workValue5 = workValue5 - 0.96
textValue3 = 1.2
numberValue = 1.2
cmgCall4 = 1.2
numberValue2 = 0
flag4 = 255
numberValue3 = 125
numberValue4 = 125
cmgCall5 = 50
textValue4 = 27
flag8 = true
flag9 = false
flag10 = false
workValue6 = nil
workValue7 = nil
numberValue7 = 0.0
numberValue8 = 0.0
numberValue9 = 0.0
-- Beginner: Create a world marker.
cmgCall2(workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4, cmgCall5, textValue4, flag8, flag9, flag10, workValue6, workValue7, numberValue7, numberValue8, numberValue9)
cmgCall2 = tCMG
cmgCall2 = cmgCall2.addBlip
workValue = cmgCall9.test
workValue = workValue.reception
workValue = workValue.x
workValue3 = cmgCall9.test
workValue3 = workValue3.reception
workValue3 = workValue3.y
workValue5 = cmgCall9.test
workValue5 = workValue5.reception
workValue5 = workValue5.z
textValue3 = 523
numberValue = 47
cmgCall4 = "CMG Learning Centre"
numberValue2 = 1.0
flag4 = false
-- Beginner: Create a minimap blip.
cmgCall2(workValue, workValue3, workValue5, textValue3, numberValue, cmgCall4, numberValue2, flag4)
function cmgCall2()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
  arg1 = true
  cmgCall7 = arg1
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "licence"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "tests"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "alerts"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg1(arg2, arg3)
end
function workValue()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
  arg1 = false
  cmgCall7 = arg1
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
end
function workValue3()
  local arg1, arg2
end
workValue5 = CMG
workValue5 = workValue5.createArea
textValue3 = "dvsaTestCentre_"
numberValue = cmgCall9.test
numberValue = numberValue.reception
cmgCall4 = 1.5
numberValue2 = 6
flag4 = cmgCall2
numberValue3 = workValue
numberValue4 = workValue3
-- Beginner: Create an interaction area around a world position.
workValue5(textValue3, numberValue, cmgCall4, numberValue2, flag4, numberValue3, numberValue4)
workValue5 = RegisterNetEvent
textValue3 = "47b6267afd"
-- Beginner: this function handles network event "47b6267afd".
function numberValue(arg1, arg2, arg3, arg4)
  local arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5, flag6, numberValue5
  cmgCall = arg1
  dataTable = arg2
  textValue5 = arg3
  rageUiCall3 = arg4
  arg5 = pairs
  modelValue = cmgCall9.peds
  arg5, modelValue, workValue10, textValue9 = arg5(modelValue)
  for textValue11, textValue13 in arg5, modelValue, workValue10, textValue9 do
    vector3Builder = textValue13.eup
    if not vector3Builder then
      vector3Builder = vector3
      cmgCall3 = textValue13.coords
      cmgCall3 = cmgCall3.x
      position = textValue13.coords
      position = position.y
      position2 = textValue13.coords
      position2 = position2.z
      position2 = position2 - 1.02
      vector3Builder = vector3Builder(cmgCall3, position, position2)
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.createDynamicPed
      position = textValue13.model
      position2 = vector3Builder
      position3 = textValue13.heading
      flag = true
      flag2 = "mini@strip_club@idles@bouncer@base"
      flag3 = "base"
      flag5 = 30
      flag6 = false
      function numberValue5()
        local arg12, arg22
      end
      cmgCall3(position, position2, position3, flag, flag2, flag3, flag5, flag6, numberValue5)
    end
  end
  arg5 = CMG
  arg5 = arg5.loadModel
  modelValue = cmgCall9.models
  modelValue = modelValue.camera
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg5(modelValue)
  arg5 = pairs
  modelValue = cmgCall9.cameras
  arg5, modelValue, workValue10, textValue9 = arg5(modelValue)
  for textValue11, textValue13 in arg5, modelValue, workValue10, textValue9 do
    vector3Builder = cmgCall9.cameras
    vector3Builder = vector3Builder[textValue11]
    cmgCall3 = CreateObject
    position = cmgCall9.models
    position = position.camera
    position2 = textValue13.coords
    position2 = position2.x
    position3 = textValue13.coords
    position3 = position3.y
    flag = textValue13.coords
    flag = flag.z
    flag2 = false
    flag3 = false
    flag5 = false
    -- Beginner: result below is objectEntity.
    cmgCall3 = cmgCall3(position, position2, position3, flag, flag2, flag3, flag5)
    vector3Builder.prop = cmgCall3
    while true do
      vector3Builder = DoesEntityExist
      cmgCall3 = cmgCall9.cameras
      cmgCall3 = cmgCall3[textValue11]
      cmgCall3 = cmgCall3.prop
      vector3Builder = vector3Builder(cmgCall3)
      if vector3Builder then
        break
      end
      vector3Builder = Wait
      cmgCall3 = 0
      vector3Builder(cmgCall3)
    end
    vector3Builder = PlaceObjectOnGroundProperly
    cmgCall3 = cmgCall9.cameras
    cmgCall3 = cmgCall3[textValue11]
    cmgCall3 = cmgCall3.prop
    vector3Builder(cmgCall3)
    vector3Builder = SetEntityHeading
    cmgCall3 = cmgCall9.cameras
    cmgCall3 = cmgCall3[textValue11]
    cmgCall3 = cmgCall3.prop
    position = textValue13.heading
    -- Beginner: Change the direction an entity is facing.
    vector3Builder(cmgCall3, position)
    vector3Builder = FreezeEntityPosition
    cmgCall3 = cmgCall9.cameras
    cmgCall3 = cmgCall3[textValue11]
    cmgCall3 = cmgCall3.prop
    position = true
    -- Beginner: Freeze or unfreeze an entity in place.
    vector3Builder(cmgCall3, position)
    vector3Builder = cmgCall9.cameras
    vector3Builder = vector3Builder[textValue11]
    vector3Builder.flashed = false
    vector3Builder = cmgCall9.cameras
    vector3Builder = vector3Builder[textValue11]
    cmgCall3 = GetOffsetFromEntityInWorldCoords
    position = cmgCall9.cameras
    position = position[textValue11]
    position = position.prop
    position2 = 0.0
    position3 = 7.0
    flag = 0.5
    cmgCall3 = cmgCall3(position, position2, position3, flag)
    vector3Builder.offSet = cmgCall3
    vector3Builder = GetGroundZFor_3dCoord
    cmgCall3 = cmgCall9.cameras
    cmgCall3 = cmgCall3[textValue11]
    cmgCall3 = cmgCall3.offSet
    cmgCall3 = cmgCall3.x
    position = cmgCall9.cameras
    position = position[textValue11]
    position = position.offSet
    position = position.y
    position2 = cmgCall9.cameras
    position2 = position2[textValue11]
    position2 = position2.offSet
    position2 = position2.z
    position3 = 0
    flag = false
    vector3Builder, cmgCall3 = vector3Builder(cmgCall3, position, position2, position3, flag)
    position = cmgCall9.cameras
    position = position[textValue11]
    position2 = vector3
    position3 = cmgCall9.cameras
    position3 = position3[textValue11]
    position3 = position3.offSet
    position3 = position3.x
    flag = cmgCall9.cameras
    flag = flag[textValue11]
    flag = flag.offSet
    flag = flag.y
    flag2 = cmgCall3 + 0.2
    position2 = position2(position3, flag, flag2)
    position.offSet = position2
  end
  arg5 = SetModelAsNoLongerNeeded
  modelValue = cmgCall9.models
  modelValue = modelValue.camera
  arg5(modelValue)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "47b6267afd".
workValue5(textValue3, numberValue)
workValue5 = RegisterNetEvent
textValue3 = "c32c90c683"
-- Beginner: this function handles network event "c32c90c683".
function numberValue(arg1, arg2, arg3, arg4)
  if nil ~= arg1 then
    cmgCall = arg1
  end
  if nil ~= arg2 then
    dataTable = arg2
  end
  if nil ~= arg3 then
    textValue5 = arg3
  end
  if nil ~= arg4 then
    rageUiCall3 = arg4
  end
end
workValue5(textValue3, numberValue)
workValue5 = RegisterNetEvent
textValue3 = "cb3b7b0160"
-- Beginner: this function handles network event "cb3b7b0160".
function numberValue(arg1, arg2, arg3)
  local arg4, arg5
  arg4 = notify
  arg5 = arg3
  -- Beginner: Show a notification to the player.
  arg4(arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cb3b7b0160".
workValue5(textValue3, numberValue)
workValue5 = false
textValue3 = CMG
-- Beginner: this function handles network event "cb3b7b0160".
function numberValue()
  local arg1, arg2
  arg1 = rageUiCall7
  return arg1
end
textValue3.getCurrentDVSATest = numberValue
textValue3 = RegisterNetEvent
numberValue = "f395e7a334"
-- Beginner: this function handles network event "f395e7a334".
function cmgCall4(arg1, arg2, arg3)
  local arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2
  if arg1 then
    arg4 = rageUiCall7.active
    if arg4 then
      arg4 = notify
      arg5 = "~r~A driving test is already in progress."
      -- Beginner: Show a notification to the player.
      arg4(arg5)
      return
    end
    arg4 = {}
    arg4.active = false
    arg4.ped = 0
    arg4.vehicle = 0
    arg4.parkingSpace = 0
    arg4.route = 0
    arg4.waypoint = 0
    arg4.blip = 0
    arg4.serious = 0
    arg4.minors = 0
    arg5 = {}
    arg4.minorsReason = arg5
    arg5 = {}
    arg4.seriousReason = arg5
    arg4.subtitle = ""
    arg5 = true == arg3
    arg4.quick = arg5
    rageUiCall7 = arg4
    rageUiCall7.active = true
    rageUiCall7.parkingSpace = arg2
    arg4 = false
    workValue5 = arg4
    rageUiCall7.serious = 0
    rageUiCall7.seriousIssued = false
    rageUiCall7.minors = 0
    arg4 = nil
    rageUiCall6 = arg4
    arg4 = TriggerServerEvent
    arg5 = "90aa93a379"
    modelValue = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90aa93a379".
    arg4(arg5, modelValue)
    arg4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg4 = arg4()
    arg4 = arg4 + 10000
    while true do
      arg5 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg5 = arg5()
      if not (arg4 > arg5) then
        break
      end
      arg5 = rageUiCall6
      if nil ~= arg5 then
        arg5 = CMG
        arg5 = arg5.getPlayerBucket
        arg5 = arg5()
        modelValue = rageUiCall6
        if arg5 == modelValue then
          break
        end
      end
      arg5 = Wait
      modelValue = 0
      arg5(modelValue)
    end
    arg5 = rageUiCall6
    if nil ~= arg5 then
      arg5 = CMG
      arg5 = arg5.getPlayerBucket
      arg5 = arg5()
      modelValue = rageUiCall6
      if arg5 == modelValue then
        goto flow_label_90
      end
    end
    rageUiCall7.active = false
    rageUiCall7.requested = false
    arg5 = CMG
    arg5 = arg5.notifyPicture
    modelValue = cmgCall9.images
    modelValue = modelValue.dict
    workValue10 = cmgCall9.images
    workValue10 = workValue10.govLarge
    textValue9 = "We could not prepare your test, please try again."
    textValue11 = "Marcus"
    textValue13 = "Driving Examiner"
    arg5(modelValue, workValue10, textValue9, textValue11, textValue13)
    return
    ::flow_label_90::
    arg5 = CMG
    arg5 = arg5.spawnVehicle
    modelValue = cmgCall9.test
    modelValue = modelValue.modelName
    workValue10 = cmgCall9.test
    workValue10 = workValue10.parkingSpaces
    workValue10 = workValue10[arg2]
    workValue10 = workValue10.coords
    workValue10 = workValue10.x
    textValue9 = cmgCall9.test
    textValue9 = textValue9.parkingSpaces
    textValue9 = textValue9[arg2]
    textValue9 = textValue9.coords
    textValue9 = textValue9.y
    textValue11 = cmgCall9.test
    textValue11 = textValue11.parkingSpaces
    textValue11 = textValue11[arg2]
    textValue11 = textValue11.coords
    textValue11 = textValue11.z
    textValue13 = cmgCall9.test
    textValue13 = textValue13.parkingSpaces
    textValue13 = textValue13[arg2]
    textValue13 = textValue13.heading
    vector3Builder = true
    cmgCall3 = false
    arg5 = arg5(modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3)
    rageUiCall7.vehicle = arg5
    arg5 = DoesEntityExist
    modelValue = rageUiCall7.vehicle
    arg5 = arg5(modelValue)
    if not arg5 then
      rageUiCall7.active = false
      rageUiCall7.requested = false
      arg5 = TriggerServerEvent
      modelValue = "90aa93a379"
      workValue10 = true
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90aa93a379".
      arg5(modelValue, workValue10)
      arg5 = CMG
      arg5 = arg5.notifyPicture
      modelValue = cmgCall9.images
      modelValue = modelValue.dict
      workValue10 = cmgCall9.images
      workValue10 = workValue10.govLarge
      textValue9 = "We could not prepare your test vehicle, please try again."
      textValue11 = "Marcus"
      textValue13 = "Driving Examiner"
      arg5(modelValue, workValue10, textValue9, textValue11, textValue13)
      return
    end
    arg5 = FreezeEntityPosition
    modelValue = rageUiCall7.vehicle
    workValue10 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg5(modelValue, workValue10)
    arg5 = SetVehicleDirtLevel
    modelValue = rageUiCall7.vehicle
    workValue10 = 0
    arg5(modelValue, workValue10)
    arg5 = SetVehicleRadioEnabled
    modelValue = rageUiCall7.vehicle
    workValue10 = false
    arg5(modelValue, workValue10)
    arg5 = CMG
    arg5 = arg5.loadModel
    modelValue = cmgCall9.test
    modelValue = modelValue.examinerModel
    arg5 = arg5(modelValue)
    modelValue = rageUiCall7.quick
    if modelValue then
      modelValue = CreatePed
      workValue10 = 26
      textValue9 = arg5
      textValue11 = cmgCall9.test
      textValue11 = textValue11.parkingSpaces
      textValue11 = textValue11[arg2]
      textValue11 = textValue11.coords
      textValue11 = textValue11.x
      textValue13 = cmgCall9.test
      textValue13 = textValue13.parkingSpaces
      textValue13 = textValue13[arg2]
      textValue13 = textValue13.coords
      textValue13 = textValue13.y
      vector3Builder = cmgCall9.test
      vector3Builder = vector3Builder.parkingSpaces
      vector3Builder = vector3Builder[arg2]
      vector3Builder = vector3Builder.coords
      vector3Builder = vector3Builder.z
      cmgCall3 = cmgCall9.test
      cmgCall3 = cmgCall3.parkingSpaces
      cmgCall3 = cmgCall3[arg2]
      cmgCall3 = cmgCall3.heading
      position = false
      position2 = true
      -- Beginner: result below is pedEntity.
      modelValue = modelValue(workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2)
      rageUiCall7.ped = modelValue
      while true do
        modelValue = DoesEntityExist
        workValue10 = rageUiCall7.ped
        modelValue = modelValue(workValue10)
        if modelValue then
          break
        end
        modelValue = Wait
        workValue10 = 0
        modelValue(workValue10)
      end
      modelValue = SetModelAsNoLongerNeeded
      workValue10 = arg5
      modelValue(workValue10)
      modelValue = SetEntityCanBeDamaged
      workValue10 = rageUiCall7.ped
      textValue9 = false
      modelValue(workValue10, textValue9)
      modelValue = SetPedAsEnemy
      workValue10 = rageUiCall7.ped
      textValue9 = false
      modelValue(workValue10, textValue9)
      modelValue = SetBlockingOfNonTemporaryEvents
      workValue10 = rageUiCall7.ped
      textValue9 = true
      modelValue(workValue10, textValue9)
      modelValue = SetPedCanRagdollFromPlayerImpact
      workValue10 = rageUiCall7.ped
      textValue9 = false
      modelValue(workValue10, textValue9)
      modelValue = TaskWarpPedIntoVehicle
      workValue10 = rageUiCall7.ped
      textValue9 = rageUiCall7.vehicle
      textValue11 = 0
      modelValue(workValue10, textValue9, textValue11)
      modelValue = SetVehicleHasMutedSirens
      workValue10 = rageUiCall7.vehicle
      textValue9 = true
      modelValue(workValue10, textValue9)
      modelValue = SetVehicleLightsMode
      workValue10 = rageUiCall7.vehicle
      textValue9 = 0
      modelValue(workValue10, textValue9)
      modelValue = CMG
      modelValue = modelValue.DVSA
      modelValue = modelValue.initialMoveOff
      modelValue()
      return
    end
    modelValue = CMG
    modelValue = modelValue.DVSA
    modelValue = modelValue.cameraTransition
    workValue10 = cmgCall9.test
    workValue10 = workValue10.parkingSpaces
    workValue10 = workValue10[arg2]
    workValue10 = workValue10.coords
    modelValue(workValue10)
    modelValue = CreatePed
    workValue10 = 26
    textValue9 = arg5
    textValue11 = 218.611
    textValue13 = -1390.879
    vector3Builder = 30.57727
    cmgCall3 = 321.37
    position = false
    position2 = true
    -- Beginner: result below is pedEntity.
    modelValue = modelValue(workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2)
    rageUiCall7.ped = modelValue
    while true do
      modelValue = DoesEntityExist
      workValue10 = rageUiCall7.ped
      modelValue = modelValue(workValue10)
      if modelValue then
        break
      end
      modelValue = Wait
      workValue10 = 0
      modelValue(workValue10)
    end
    modelValue = SetModelAsNoLongerNeeded
    workValue10 = arg5
    modelValue(workValue10)
    modelValue = SetEntityCanBeDamaged
    workValue10 = rageUiCall7.ped
    textValue9 = false
    modelValue(workValue10, textValue9)
    modelValue = SetPedAsEnemy
    workValue10 = rageUiCall7.ped
    textValue9 = false
    modelValue(workValue10, textValue9)
    modelValue = SetBlockingOfNonTemporaryEvents
    workValue10 = rageUiCall7.ped
    textValue9 = true
    modelValue(workValue10, textValue9)
    modelValue = SetPedCanRagdollFromPlayerImpact
    workValue10 = rageUiCall7.ped
    textValue9 = false
    modelValue(workValue10, textValue9)
    modelValue = TaskGoToEntity
    workValue10 = rageUiCall7.ped
    textValue9 = rageUiCall7.vehicle
    textValue11 = 10.0
    textValue13 = 2.0
    vector3Builder = 5.0
    cmgCall3 = 0
    position = 0
    modelValue(workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position)
    modelValue = TaskGoToCoordAnyMeans
    workValue10 = rageUiCall7.ped
    textValue9 = cmgCall9.test
    textValue9 = textValue9.parkingSpaces
    textValue9 = textValue9[arg2]
    textValue9 = textValue9.coords
    textValue9 = textValue9.x
    textValue11 = cmgCall9.test
    textValue11 = textValue11.parkingSpaces
    textValue11 = textValue11[arg2]
    textValue11 = textValue11.coords
    textValue11 = textValue11.y
    textValue13 = cmgCall9.test
    textValue13 = textValue13.parkingSpaces
    textValue13 = textValue13[arg2]
    textValue13 = textValue13.coords
    textValue13 = textValue13.z
    vector3Builder = 6.0
    cmgCall3 = false
    position = false
    position2 = 786603
    position3 = 1.0
    modelValue(workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3)
    modelValue = SetVehicleEngineOn
    workValue10 = rageUiCall7.vehicle
    textValue9 = false
    textValue11 = true
    textValue13 = true
    modelValue(workValue10, textValue9, textValue11, textValue13)
    modelValue = SetVehicleHasMutedSirens
    workValue10 = rageUiCall7.vehicle
    textValue9 = true
    modelValue(workValue10, textValue9)
    modelValue = SetVehicleLightsMode
    workValue10 = rageUiCall7.vehicle
    textValue9 = 0
    modelValue(workValue10, textValue9)
    modelValue = Wait
    workValue10 = 9000
    modelValue(workValue10)
    modelValue = CMG
    modelValue = modelValue.DVSA
    modelValue = modelValue.dvsaSound
    workValue10 = "welcome"
    modelValue(workValue10)
    rageUiCall7.subtitle = "Hey! I'm ~y~Marcus"
    modelValue = CMG
    modelValue = modelValue.notifyPicture
    workValue10 = cmgCall9.images
    workValue10 = workValue10.dict
    textValue9 = cmgCall9.images
    textValue9 = textValue9.govLarge
    textValue11 = "Your assigned examiner for the test is Marcus."
    textValue13 = "CMG Learning Centre"
    vector3Builder = "UK Government"
    modelValue(workValue10, textValue9, textValue11, textValue13, vector3Builder)
    modelValue = CMG
    modelValue = modelValue.loadAnimDict
    workValue10 = "amb@medic@standing@tendtodead@base"
    -- Beginner: Load a GTA animation dictionary before using it.
    modelValue(workValue10)
    modelValue = TaskPlayAnim
    workValue10 = rageUiCall7.ped
    textValue9 = "amb@medic@standing@tendtodead@base"
    textValue11 = "base"
    textValue13 = 8.0
    vector3Builder = 0.0
    cmgCall3 = -1
    position = 1
    position2 = 0
    position3 = false
    flag = false
    flag2 = false
    -- Beginner: Play an animation on a ped.
    modelValue(workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2)
    modelValue = RemoveAnimDict
    workValue10 = "amb@medic@standing@tendtodead@base"
    modelValue(workValue10)
    modelValue = Wait
    workValue10 = 5000
    modelValue(workValue10)
    rageUiCall7.subtitle = "I am a ~b~driving examiner~w~ for the ~b~CMG Learning Centre"
    rageUiCall7.subtitle = "I'm just inspecting your vehicle"
    modelValue = Wait
    workValue10 = 5000
    modelValue(workValue10)
    rageUiCall7.subtitle = "Thanks for your patience, we'll start shortly"
    modelValue = Wait
    workValue10 = 7000
    modelValue(workValue10)
    rageUiCall7.subtitle = "Your vehicle is ~g~suitable ~w~for the test"
    modelValue = Wait
    workValue10 = 5000
    modelValue(workValue10)
    rageUiCall7.subtitle = "I will now enter the vehicle"
    modelValue = ClearPedTasksImmediately
    workValue10 = rageUiCall7.ped
    modelValue(workValue10)
    modelValue = TaskEnterVehicle
    workValue10 = rageUiCall7.ped
    textValue9 = rageUiCall7.vehicle
    textValue11 = 10.0
    textValue13 = 0
    vector3Builder = 5.0
    cmgCall3 = 0
    position = 0
    modelValue(workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position)
    modelValue = Wait
    workValue10 = 4000
    modelValue(workValue10)
    modelValue = CMG
    modelValue = modelValue.notifyPicture
    workValue10 = cmgCall9.images
    workValue10 = workValue10.dict
    textValue9 = cmgCall9.images
    textValue9 = textValue9.govLarge
    textValue11 = "You'll now be given information about the test, listen carefully"
    textValue13 = "CMG Learning Centre"
    vector3Builder = "UK Government"
    modelValue(workValue10, textValue9, textValue11, textValue13, vector3Builder)
    modelValue = CMG
    modelValue = modelValue.DVSA
    modelValue = modelValue.initialMoveOff
    modelValue()
  else
    arg4 = CMG
    arg4 = arg4.notifyPicture
    arg5 = cmgCall9.images
    arg5 = arg5.dict
    modelValue = cmgCall9.images
    modelValue = modelValue.govLarge
    workValue10 = "We currently have no test availability, please try again shortly."
    textValue9 = "Marcus"
    textValue11 = "Driving Examiner"
    arg4(arg5, modelValue, workValue10, textValue9, textValue11)
    arg4 = SetTimeout
    arg5 = 20000
    function modelValue()
      local arg12, arg22
      rageUiCall7.requested = false
    end
    arg4(arg5, modelValue)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f395e7a334".
textValue3(numberValue, cmgCall4)
textValue3 = CMG
textValue3 = textValue3.DVSA
function numberValue()
  local arg1, arg2, arg3, arg4, arg5, modelValue, workValue10
  arg1 = rageUiCall7.quick
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.DVSA
    arg1 = arg1.dvsaSound
    arg2 = "testExplained"
    arg1(arg2)
    arg1 = pairs
    arg2 = cmgCall9.notifications
    arg2 = arg2.testStartMessages
    arg1, arg2, arg3, arg4 = arg1(arg2)
    for arg5 in arg1, arg2, arg3, arg4 do
      modelValue = cmgCall9.notifications
      modelValue = modelValue.testStartMessages
      modelValue = modelValue[arg5]
      rageUiCall7.subtitle = modelValue
      modelValue = Wait
      workValue10 = 4000
      modelValue(workValue10)
    end
  end
  arg1 = math
  arg1 = arg1.random
  arg2 = 1
  arg3 = table
  arg3 = arg3.count
  arg4 = cmgCall9.test
  arg4 = arg4.routes
  arg3, arg4, arg5, modelValue, workValue10 = arg3(arg4)
  arg1 = arg1(arg2, arg3, arg4, arg5, modelValue, workValue10)
  rageUiCall7.route = arg1
  arg1 = SetVehicleEngineOn
  arg2 = rageUiCall7.vehicle
  arg3 = true
  arg4 = true
  arg5 = false
  arg1(arg2, arg3, arg4, arg5)
  arg1 = FreezeEntityPosition
  arg2 = rageUiCall7.vehicle
  arg3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg1(arg2, arg3)
  arg1 = rageUiCall7.quick
  if not arg1 then
    arg1 = Wait
    arg2 = 2000
    arg1(arg2)
  end
  rageUiCall7.subtitle = "~y~Move off ~w~when you are ready, carrying out good, all round observations"
  arg1 = CMG
  arg1 = arg1.DVSA
  arg1 = arg1.handleTestRoute
  arg1()
end
textValue3.initialMoveOff = numberValue
textValue3 = CMG
textValue3 = textValue3.DVSA
function numberValue()
  local arg1, arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5
  arg1 = false
  arg2 = tCMG
  arg2 = arg2.addBlip
  arg3 = cmgCall9.test
  arg3 = arg3.routes
  arg4 = rageUiCall7.route
  arg3 = arg3[arg4]
  arg4 = rageUiCall7.waypoint
  arg4 = arg4 + 1
  arg3 = arg3[arg4]
  arg3 = arg3.coords
  arg3 = arg3.x
  arg4 = cmgCall9.test
  arg4 = arg4.routes
  arg5 = rageUiCall7.route
  arg4 = arg4[arg5]
  arg5 = rageUiCall7.waypoint
  arg5 = arg5 + 1
  arg4 = arg4[arg5]
  arg4 = arg4.coords
  arg4 = arg4.y
  arg5 = cmgCall9.test
  arg5 = arg5.routes
  modelValue = rageUiCall7.route
  arg5 = arg5[modelValue]
  modelValue = rageUiCall7.waypoint
  modelValue = modelValue + 1
  arg5 = arg5[modelValue]
  arg5 = arg5.coords
  arg5 = arg5.z
  modelValue = 0
  workValue10 = 38
  textValue9 = "Waypoint"
  textValue11 = 1.0
  textValue13 = false
  arg2 = arg2(arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13)
  rageUiCall7.blip = arg2
  arg2 = SetBlipRoute
  arg3 = rageUiCall7.blip
  arg4 = true
  arg2(arg3, arg4)
  arg2 = SetBlipRouteColour
  arg3 = rageUiCall7.blip
  arg4 = 38
  arg2(arg3, arg4)
  arg2 = cmgCall9.test
  arg2 = arg2.routes
  arg3 = rageUiCall7.route
  arg2 = arg2[arg3]
  arg3 = rageUiCall7.waypoint
  arg3 = arg3 + 1
  arg2 = arg2[arg3]
  arg2.speeding = false
  arg2 = tCMG
  arg2 = arg2.addMarker
  arg3 = cmgCall9.test
  arg3 = arg3.routes
  arg4 = rageUiCall7.route
  arg3 = arg3[arg4]
  arg4 = rageUiCall7.waypoint
  arg4 = arg4 + 1
  arg3 = arg3[arg4]
  arg3 = arg3.coords
  arg3 = arg3.x
  arg4 = cmgCall9.test
  arg4 = arg4.routes
  arg5 = rageUiCall7.route
  arg4 = arg4[arg5]
  arg5 = rageUiCall7.waypoint
  arg5 = arg5 + 1
  arg4 = arg4[arg5]
  arg4 = arg4.coords
  arg4 = arg4.y
  arg5 = cmgCall9.test
  arg5 = arg5.routes
  modelValue = rageUiCall7.route
  arg5 = arg5[modelValue]
  modelValue = rageUiCall7.waypoint
  modelValue = modelValue + 1
  arg5 = arg5[modelValue]
  arg5 = arg5.coords
  arg5 = arg5.z
  modelValue = 1.6
  workValue10 = 1.6
  textValue9 = 1.6
  textValue11 = 0
  textValue13 = 89
  vector3Builder = 255
  cmgCall3 = 200
  position = 50
  position2 = 36
  position3 = true
  flag = true
  arg2 = arg2(arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag)
  rageUiCall7.marker = arg2
  rageUiCall7.subtitle = "Follow the ~y~sat nav"
  arg2 = rageUiCall7.quick
  if not arg2 then
    arg2 = Wait
    arg3 = 2000
    arg2(arg3)
  end
  while true do
    arg2 = rageUiCall7.active
    if not arg2 then
      break
    end
    if not arg1 then
      arg2 = cmgCall9.images
      arg2 = arg2.speed30
      arg3 = cmgCall9.test
      arg3 = arg3.routes
      arg4 = rageUiCall7.route
      arg3 = arg3[arg4]
      arg4 = rageUiCall7.waypoint
      arg4 = arg4 + 1
      arg3 = arg3[arg4]
      arg3 = arg3.limit
      if 30.0 == arg3 then
        arg3 = cmgCall9.images
        arg2 = arg3.speed30
      end
      arg3 = cmgCall9.test
      arg3 = arg3.routes
      arg4 = rageUiCall7.route
      arg3 = arg3[arg4]
      arg4 = rageUiCall7.waypoint
      arg4 = arg4 + 1
      arg3 = arg3[arg4]
      arg3 = arg3.limit
      if 40.0 == arg3 then
        arg3 = cmgCall9.images
        arg2 = arg3.speed40
      end
      arg3 = cmgCall9.test
      arg3 = arg3.routes
      arg4 = rageUiCall7.route
      arg3 = arg3[arg4]
      arg4 = rageUiCall7.waypoint
      arg4 = arg4 + 1
      arg3 = arg3[arg4]
      arg3 = arg3.limit
      if 60.0 == arg3 then
        arg3 = cmgCall9.images
        arg2 = arg3.speed60
      end
      arg3 = cmgCall9.test
      arg3 = arg3.routes
      arg4 = rageUiCall7.route
      arg3 = arg3[arg4]
      arg4 = rageUiCall7.waypoint
      arg4 = arg4 + 1
      arg3 = arg3[arg4]
      arg3 = arg3.limit
      if 70.0 == arg3 then
        arg3 = cmgCall9.images
        arg2 = arg3.speed70
      end
      arg3 = HasStreamedTextureDictLoaded
      arg4 = cmgCall9.images
      arg4 = arg4.dict
      arg3 = arg3(arg4)
      if not arg3 then
        arg3 = RequestStreamedTextureDict
        arg4 = cmgCall9.images
        arg4 = arg4.dict
        arg5 = false
        arg3(arg4, arg5)
        while true do
          arg3 = HasStreamedTextureDictLoaded
          arg4 = cmgCall9.images
          arg4 = arg4.dict
          arg3 = arg3(arg4)
          if arg3 then
            break
          end
          arg3 = Wait
          arg4 = 0
          arg3(arg4)
        end
      end
      arg3 = DrawSprite
      arg4 = cmgCall9.images
      arg4 = arg4.dict
      arg5 = arg2
      modelValue = 0.95
      workValue10 = 0.77
      textValue9 = 0.052
      textValue11 = 0.09
      textValue13 = 0.05
      vector3Builder = 255
      cmgCall3 = 255
      position = 255
      position2 = 255
      arg3(arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2)
      arg3 = CMG
      arg3 = arg3.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg3 = arg3()
      arg4 = cmgCall9.test
      arg4 = arg4.routes
      arg5 = rageUiCall7.route
      arg4 = arg4[arg5]
      arg5 = rageUiCall7.waypoint
      arg5 = arg5 + 1
      arg4 = arg4[arg5]
      arg4 = arg4.coords
      arg3 = arg3 - arg4
      arg3 = #arg3
      arg4 = GetEntitySpeed
      arg5 = rageUiCall7.vehicle
      -- Beginner: result below is speed.
      arg4 = arg4(arg5)
      arg4 = arg4 * 2.236936
      arg5 = cmgCall9.test
      arg5 = arg5.routes
      modelValue = rageUiCall7.route
      arg5 = arg5[modelValue]
      modelValue = rageUiCall7.waypoint
      modelValue = modelValue + 1
      arg5 = arg5[modelValue]
      arg5 = arg5.limit
      arg5 = arg5 + 19.0
      if arg4 > arg5 then
        arg5 = cmgCall9.test
        arg5 = arg5.routes
        modelValue = rageUiCall7.route
        arg5 = arg5[modelValue]
        modelValue = rageUiCall7.waypoint
        modelValue = modelValue + 1
        arg5 = arg5[modelValue]
        arg5 = arg5.speeding
        if not arg5 then
          arg5 = CMG
          arg5 = arg5.DVSA
          arg5 = arg5.issueMinor
          modelValue = "Speeding"
          arg5(modelValue)
          arg5 = cmgCall9.test
          arg5 = arg5.routes
          modelValue = rageUiCall7.route
          arg5 = arg5[modelValue]
          modelValue = rageUiCall7.waypoint
          modelValue = modelValue + 1
          arg5 = arg5[modelValue]
          arg5.speeding = true
        else
          arg5 = cmgCall9.test
          arg5 = arg5.routes
          modelValue = rageUiCall7.route
          arg5 = arg5[modelValue]
          modelValue = rageUiCall7.waypoint
          modelValue = modelValue + 1
          arg5 = arg5[modelValue]
          arg5 = arg5.limit
          arg5 = arg5 + 85.0
          if arg4 > arg5 then
            arg5 = CMG
            arg5 = arg5.DVSA
            arg5 = arg5.issueSerious
            modelValue = "Speeding"
            arg5(modelValue)
            arg5 = CMG
            arg5 = arg5.DVSA
            arg5 = arg5.dvsaSound
            modelValue = "slowDownOrTermination"
            arg5(modelValue)
            rageUiCall7.subtitle = "You ~r~must ~w~slow down, or risk the test being terminated immediately"
            rageUiCall7.subtitle = "Follow the ~y~sat nav"
          end
        end
      end
      arg5 = 3.5
      if arg3 < arg5 then
        arg5 = rageUiCall7.waypoint
        arg5 = arg5 + 1
        rageUiCall7.waypoint = arg5
        arg5 = rageUiCall7.waypoint
        modelValue = table
        modelValue = modelValue.count
        workValue10 = cmgCall9.test
        workValue10 = workValue10.routes
        textValue9 = rageUiCall7.route
        workValue10 = workValue10[textValue9]
        -- Beginner: result below is count.
        modelValue = modelValue(workValue10)
        if arg5 >= modelValue then
          arg1 = true
          arg5 = rageUiCall7.blip
          if 0 ~= arg5 then
            arg5 = tCMG
            arg5 = arg5.removeBlip
            modelValue = rageUiCall7.blip
            arg5(modelValue)
          end
          arg5 = rageUiCall7.marker
          if 0 ~= arg5 then
            arg5 = tCMG
            arg5 = arg5.removeMarker
            modelValue = rageUiCall7.marker
            arg5(modelValue)
          end
          arg5 = CMG
          arg5 = arg5.DVSA
          arg5 = arg5.returnToTestCentre
          arg5()
        else
          arg5 = rageUiCall7.blip
          if 0 ~= arg5 then
            arg5 = rageUiCall7.blip
            if 0 ~= arg5 then
              arg5 = tCMG
              arg5 = arg5.removeBlip
              modelValue = rageUiCall7.blip
              arg5(modelValue)
            end
          end
          arg5 = tCMG
          arg5 = arg5.addBlip
          modelValue = cmgCall9.test
          modelValue = modelValue.routes
          workValue10 = rageUiCall7.route
          modelValue = modelValue[workValue10]
          workValue10 = rageUiCall7.waypoint
          workValue10 = workValue10 + 1
          modelValue = modelValue[workValue10]
          modelValue = modelValue.coords
          modelValue = modelValue.x
          workValue10 = cmgCall9.test
          workValue10 = workValue10.routes
          textValue9 = rageUiCall7.route
          workValue10 = workValue10[textValue9]
          textValue9 = rageUiCall7.waypoint
          textValue9 = textValue9 + 1
          workValue10 = workValue10[textValue9]
          workValue10 = workValue10.coords
          workValue10 = workValue10.y
          textValue9 = cmgCall9.test
          textValue9 = textValue9.routes
          textValue11 = rageUiCall7.route
          textValue9 = textValue9[textValue11]
          textValue11 = rageUiCall7.waypoint
          textValue11 = textValue11 + 1
          textValue9 = textValue9[textValue11]
          textValue9 = textValue9.coords
          textValue9 = textValue9.z
          textValue11 = 0
          textValue13 = 38
          vector3Builder = "Waypoint"
          cmgCall3 = 1.0
          position = false
          arg5 = arg5(modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position)
          rageUiCall7.blip = arg5
          arg5 = SetBlipRoute
          modelValue = rageUiCall7.blip
          workValue10 = true
          arg5(modelValue, workValue10)
          arg5 = SetBlipRouteColour
          modelValue = rageUiCall7.blip
          workValue10 = 38
          arg5(modelValue, workValue10)
          arg5 = rageUiCall7.marker
          if 0 ~= arg5 then
            arg5 = rageUiCall7.marker
            if nil ~= arg5 then
              arg5 = tCMG
              arg5 = arg5.removeMarker
              modelValue = rageUiCall7.marker
              arg5(modelValue)
            end
          end
          arg5 = tCMG
          arg5 = arg5.addMarker
          modelValue = cmgCall9.test
          modelValue = modelValue.routes
          workValue10 = rageUiCall7.route
          modelValue = modelValue[workValue10]
          workValue10 = rageUiCall7.waypoint
          workValue10 = workValue10 + 1
          modelValue = modelValue[workValue10]
          modelValue = modelValue.coords
          modelValue = modelValue.x
          workValue10 = cmgCall9.test
          workValue10 = workValue10.routes
          textValue9 = rageUiCall7.route
          workValue10 = workValue10[textValue9]
          textValue9 = rageUiCall7.waypoint
          textValue9 = textValue9 + 1
          workValue10 = workValue10[textValue9]
          workValue10 = workValue10.coords
          workValue10 = workValue10.y
          textValue9 = cmgCall9.test
          textValue9 = textValue9.routes
          textValue11 = rageUiCall7.route
          textValue9 = textValue9[textValue11]
          textValue11 = rageUiCall7.waypoint
          textValue11 = textValue11 + 1
          textValue9 = textValue9[textValue11]
          textValue9 = textValue9.coords
          textValue9 = textValue9.z
          textValue11 = 1.6
          textValue13 = 1.6
          vector3Builder = 1.6
          cmgCall3 = 0
          position = 89
          position2 = 255
          position3 = 200
          flag = 50
          flag2 = 36
          flag3 = true
          flag5 = true
          arg5 = arg5(modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5)
          rageUiCall7.marker = arg5
          arg5 = cmgCall9.test
          arg5 = arg5.routes
          modelValue = rageUiCall7.route
          arg5 = arg5[modelValue]
          modelValue = rageUiCall7.waypoint
          modelValue = modelValue + 1
          arg5 = arg5[modelValue]
          arg5.speeding = false
          arg5 = Citizen
          arg5 = arg5.CreateThread
          function modelValue()
            local arg12, arg22
            arg12 = cmgCall9.test
            arg12 = arg12.routes
            arg22 = rageUiCall7.route
            arg12 = arg12[arg22]
            arg22 = rageUiCall7.waypoint
            arg12 = arg12[arg22]
            arg12 = arg12.action
            arg22 = rageUiCall7
            arg12(arg22)
            rageUiCall7.subtitle = "Follow the ~y~sat nav"
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg5(modelValue)
        end
      end
    end
    arg2 = Wait
    arg3 = 0
    arg2(arg3)
  end
end
textValue3.handleTestRoute = numberValue
textValue3 = CMG
textValue3 = textValue3.DVSA
function numberValue()
  local arg1, arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5, flag6, numberValue5, numberValue6, flag7
  arg1 = CMG
  arg1 = arg1.DVSA
  arg1 = arg1.dvsaSound
  arg2 = "policePursuitContinue"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.notifyPicture
  arg2 = cmgCall9.images
  arg2 = arg2.dict
  arg3 = cmgCall9.images
  arg3 = arg3.govLarge
  arg4 = "You are required to ~b~move over ~w~to allow a police pursuit to continue."
  arg5 = "CMG Learning Centre"
  modelValue = "UK Government"
  arg1(arg2, arg3, arg4, arg5, modelValue)
  rageUiCall7.subtitle = "Move ~y~over"
  arg1 = -344943009
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = arg1
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg2(arg3)
  arg2 = vector3
  arg3 = 113.0901
  arg4 = -1226.426
  arg5 = 37.60364
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = CMG
  arg3 = arg3.spawnVehicle
  arg4 = arg1
  arg5 = arg2.x
  modelValue = arg2.y
  workValue10 = arg2.z
  textValue9 = 270.93
  textValue11 = false
  textValue13 = false
  arg3 = arg3(arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13)
  while true do
    arg4 = DoesEntityExist
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      break
    end
    arg4 = Wait
    arg5 = 0
    arg4(arg5)
  end
  arg4 = SetModelAsNoLongerNeeded
  arg5 = arg1
  arg4(arg5)
  arg4 = 826475330
  arg5 = CMG
  arg5 = arg5.loadModel
  modelValue = arg4
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg5(modelValue)
  arg5 = CreatePed
  modelValue = 4
  workValue10 = arg4
  textValue9 = arg2.x
  textValue11 = arg2.y
  textValue13 = arg2.z
  vector3Builder = 270.93
  cmgCall3 = false
  position = false
  -- Beginner: result below is pedEntity.
  arg5 = arg5(modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position)
  while true do
    modelValue = DoesEntityExist
    workValue10 = arg5
    modelValue = modelValue(workValue10)
    if modelValue then
      break
    end
    modelValue = Wait
    workValue10 = 0
    modelValue(workValue10)
  end
  modelValue = SetModelAsNoLongerNeeded
  workValue10 = arg4
  modelValue(workValue10)
  modelValue = SetEntityInvincible
  workValue10 = arg5
  textValue9 = true
  modelValue(workValue10, textValue9)
  modelValue = SetPedAlertness
  workValue10 = arg5
  textValue9 = 0.0
  modelValue(workValue10, textValue9)
  modelValue = TaskWarpPedIntoVehicle
  workValue10 = arg5
  textValue9 = arg3
  textValue11 = -1
  modelValue(workValue10, textValue9, textValue11)
  modelValue = SetVehicleEngineOn
  workValue10 = arg3
  textValue9 = true
  textValue11 = true
  textValue13 = false
  modelValue(workValue10, textValue9, textValue11, textValue13)
  while true do
    modelValue = IsPedInVehicle
    workValue10 = arg5
    textValue9 = arg3
    textValue11 = false
    modelValue = modelValue(workValue10, textValue9, textValue11)
    if modelValue then
      break
    end
    modelValue = Wait
    workValue10 = 0
    modelValue(workValue10)
  end
  modelValue = vector3
  workValue10 = 816.9495
  textValue9 = -1216.404
  textValue11 = 45.8938
  modelValue = modelValue(workValue10, textValue9, textValue11)
  workValue10 = TaskVehicleDriveToCoord
  textValue9 = arg5
  textValue11 = arg3
  textValue13 = modelValue.x
  vector3Builder = modelValue.y
  cmgCall3 = modelValue.z
  position = 60.0
  position2 = 1.0
  position3 = arg1
  flag = 786472
  flag2 = 1.0
  flag3 = 0
  workValue10(textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3)
  workValue10 = Wait
  textValue9 = 2000
  workValue10(textValue9)
  workValue10 = 1462516421
  textValue9 = IsModelValid
  textValue11 = workValue10
  textValue9 = textValue9(textValue11)
  if not textValue9 then
    workValue10 = 456714581
  end
  textValue9 = CMG
  textValue9 = textValue9.loadModel
  textValue11 = workValue10
  -- Beginner: Request/load a GTA model before spawning or applying it.
  textValue9(textValue11)
  textValue9 = CMG
  textValue9 = textValue9.spawnVehicle
  textValue11 = workValue10
  textValue13 = arg2.x
  vector3Builder = arg2.y
  cmgCall3 = arg2.z
  position = 270.93
  position2 = false
  position3 = false
  textValue9 = textValue9(textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3)
  while true do
    textValue11 = DoesEntityExist
    textValue13 = textValue9
    textValue11 = textValue11(textValue13)
    if textValue11 then
      break
    end
    textValue11 = Wait
    textValue13 = 0
    textValue11(textValue13)
  end
  textValue11 = SetModelAsNoLongerNeeded
  textValue13 = workValue10
  textValue11(textValue13)
  textValue11 = 1644266841
  textValue13 = CMG
  textValue13 = textValue13.loadModel
  vector3Builder = textValue11
  -- Beginner: Request/load a GTA model before spawning or applying it.
  textValue13(vector3Builder)
  textValue13 = CreatePed
  vector3Builder = 4
  cmgCall3 = textValue11
  position = arg2.x
  position2 = arg2.y
  position3 = arg2.z
  flag = 270.93
  flag2 = false
  flag3 = false
  -- Beginner: result below is pedEntity.
  textValue13 = textValue13(vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3)
  while true do
    vector3Builder = DoesEntityExist
    cmgCall3 = textValue13
    vector3Builder = vector3Builder(cmgCall3)
    if vector3Builder then
      break
    end
    vector3Builder = Wait
    cmgCall3 = 0
    vector3Builder(cmgCall3)
  end
  vector3Builder = SetModelAsNoLongerNeeded
  cmgCall3 = textValue11
  vector3Builder(cmgCall3)
  vector3Builder = SetEntityInvincible
  cmgCall3 = textValue13
  position = true
  vector3Builder(cmgCall3, position)
  vector3Builder = SetPedAlertness
  cmgCall3 = textValue13
  position = 0.0
  vector3Builder(cmgCall3, position)
  vector3Builder = TaskWarpPedIntoVehicle
  cmgCall3 = textValue13
  position = textValue9
  position2 = -1
  vector3Builder(cmgCall3, position, position2)
  vector3Builder = SetVehicleEngineOn
  cmgCall3 = textValue9
  position = true
  position2 = true
  position3 = false
  vector3Builder(cmgCall3, position, position2, position3)
  while true do
    vector3Builder = IsPedInVehicle
    cmgCall3 = textValue13
    position = textValue9
    position2 = false
    vector3Builder = vector3Builder(cmgCall3, position, position2)
    if vector3Builder then
      break
    end
    vector3Builder = Wait
    cmgCall3 = 0
    vector3Builder(cmgCall3)
  end
  vector3Builder = GetSoundId
  -- Beginner: result below is soundHandle.
  vector3Builder = vector3Builder()
  cmgCall3 = PlaySoundFromEntity
  position = vector3Builder
  position2 = "VEHICLES_HORNS_SIREN_1"
  position3 = textValue9
  flag = nil
  flag2 = false
  flag3 = 0
  cmgCall3(position, position2, position3, flag, flag2, flag3)
  cmgCall3 = TaskVehicleDriveToCoord
  position = textValue13
  position2 = textValue9
  position3 = modelValue.x
  flag = modelValue.y
  flag2 = modelValue.z
  flag3 = 70.0
  flag5 = 1.0
  flag6 = workValue10
  numberValue5 = 786472
  numberValue6 = 1.0
  flag7 = 0
  cmgCall3(position, position2, position3, flag, flag2, flag3, flag5, flag6, numberValue5, numberValue6, flag7)
  cmgCall3 = Citizen
  cmgCall3 = cmgCall3.SetTimeout
  position = 30000
  function position2()
    local arg12, arg22
    arg12 = DoesEntityExist
    arg22 = arg3
    arg12 = arg12(arg22)
    if arg12 then
      arg12 = DeleteEntity
      arg22 = arg3
      -- Beginner: Delete a GTA entity.
      arg12(arg22)
    end
    arg12 = DoesEntityExist
    arg22 = arg5
    arg12 = arg12(arg22)
    if arg12 then
      arg12 = DeleteEntity
      arg22 = arg5
      arg12(arg22)
    end
    arg12 = DoesEntityExist
    arg22 = textValue9
    arg12 = arg12(arg22)
    if arg12 then
      arg12 = DeleteEntity
      arg22 = textValue9
      -- Beginner: Delete a GTA entity.
      arg12(arg22)
    end
    arg12 = DoesEntityExist
    arg22 = textValue13
    arg12 = arg12(arg22)
    if arg12 then
      arg12 = DeleteEntity
      arg22 = textValue13
      arg12(arg22)
    end
    arg12 = StopSound
    arg22 = vector3Builder
    arg12(arg22)
    arg12 = ReleaseSoundId
    arg22 = vector3Builder
    arg12(arg22)
  end
  cmgCall3(position, position2)
end
textValue3.policeChase = numberValue
textValue3 = CMG
textValue3 = textValue3.DVSA
function numberValue()
  local arg1, arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2
  arg1 = GetVehicleEngineHealth
  arg2 = rageUiCall7.vehicle
  arg1 = arg1(arg2)
  arg2 = 700.0
  if arg1 < arg2 then
    arg2 = CMG
    arg2 = arg2.DVSA
    arg2 = arg2.issueSerious
    arg3 = "Vehicle Collision"
    arg2(arg3)
  end
  arg2 = true
  arg3 = rageUiCall7.serious
  if not (arg3 > 0) then
    arg3 = rageUiCall7.minors
    if not (arg3 > 15) then
      arg3 = rageUiCall7.seriousIssued
      if not arg3 then
        goto flow_label_23
      end
    end
  end
  arg2 = false
  ::flow_label_23::
  arg3 = tCMG
  arg3 = arg3.addBlip
  arg4 = cmgCall9.test
  arg4 = arg4.parkingSpaces
  arg5 = rageUiCall7.parkingSpace
  arg4 = arg4[arg5]
  arg4 = arg4.coords
  arg4 = arg4.x
  arg5 = cmgCall9.test
  arg5 = arg5.parkingSpaces
  modelValue = rageUiCall7.parkingSpace
  arg5 = arg5[modelValue]
  arg5 = arg5.coords
  arg5 = arg5.y
  modelValue = cmgCall9.test
  modelValue = modelValue.parkingSpaces
  workValue10 = rageUiCall7.parkingSpace
  modelValue = modelValue[workValue10]
  modelValue = modelValue.coords
  modelValue = modelValue.z
  workValue10 = 0
  textValue9 = 81
  textValue11 = "Waypoint"
  textValue13 = 1.0
  vector3Builder = false
  arg3 = arg3(arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder)
  rageUiCall7.blip = arg3
  arg3 = tCMG
  arg3 = arg3.addMarker
  arg4 = cmgCall9.test
  arg4 = arg4.parkingSpaces
  arg5 = rageUiCall7.parkingSpace
  arg4 = arg4[arg5]
  arg4 = arg4.coords
  arg4 = arg4.x
  arg5 = cmgCall9.test
  arg5 = arg5.parkingSpaces
  modelValue = rageUiCall7.parkingSpace
  arg5 = arg5[modelValue]
  arg5 = arg5.coords
  arg5 = arg5.y
  modelValue = cmgCall9.test
  modelValue = modelValue.parkingSpaces
  workValue10 = rageUiCall7.parkingSpace
  modelValue = modelValue[workValue10]
  modelValue = modelValue.coords
  modelValue = modelValue.z
  workValue10 = 1.2
  textValue9 = 1.2
  textValue11 = 1.2
  textValue13 = 0
  vector3Builder = 255
  cmgCall3 = 125
  position = 125
  position2 = 50
  position3 = 0
  flag = true
  flag2 = true
  arg3 = arg3(arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2)
  rageUiCall7.marker = arg3
  arg3 = SetBlipRoute
  arg4 = rageUiCall7.blip
  arg5 = true
  arg3(arg4, arg5)
  arg3 = SetBlipRouteColour
  arg4 = rageUiCall7.blip
  arg5 = 38
  arg3(arg4, arg5)
  arg3 = CMG
  arg3 = arg3.DVSA
  arg3 = arg3.dvsaSound
  arg4 = "newDestinationSet"
  arg3(arg4)
  rageUiCall7.subtitle = "I've set a ~y~new sat nav destination~w~, please follow it"
  arg3 = Wait
  arg4 = 4000
  arg3(arg4)
  rageUiCall7.subtitle = "Follow the ~y~sat nav"
  while true do
    arg3 = CMG
    arg3 = arg3.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg3 = arg3()
    arg4 = cmgCall9.test
    arg4 = arg4.parkingSpaces
    arg5 = rageUiCall7.parkingSpace
    arg4 = arg4[arg5]
    arg4 = arg4.coords
    arg3 = arg3 - arg4
    arg3 = #arg3
    if arg3 < 15.0 then
      rageUiCall7.subtitle = "Park up at the ~y~waypoint"
      break
    end
    arg4 = Wait
    arg5 = 0
    arg4(arg5)
  end
  arg3 = CMG
  arg3 = arg3.DVSA
  arg3 = arg3.finishTest
  arg4 = arg2
  arg3(arg4)
end
textValue3.returnToTestCentre = numberValue
function textValue3()
  local arg1, arg2, arg3, arg4
  arg1 = DeleteEntity
  arg2 = rageUiCall7.vehicle
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = DeleteEntity
  arg2 = rageUiCall7.ped
  arg1(arg2)
  arg1 = tCMG
  arg1 = arg1.teleport
  if nil ~= arg1 then
    arg1 = tCMG
    arg1 = arg1.teleport
    arg2 = cmgCall9.test
    arg2 = arg2.finishTestTpCoords
    arg2 = arg2.x
    arg3 = cmgCall9.test
    arg3 = arg3.finishTestTpCoords
    arg3 = arg3.y
    arg4 = cmgCall9.test
    arg4 = arg4.finishTestTpCoords
    arg4 = arg4.z
    arg1(arg2, arg3, arg4)
  end
end
function numberValue(arg1, arg2, arg3)
  local arg4, arg5, modelValue, workValue10, textValue9, textValue11
  arg4 = nil
  rageUiCall6 = arg4
  arg4 = TriggerServerEvent
  arg5 = "90aa93a379"
  modelValue = true
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90aa93a379".
  arg4(arg5, modelValue)
  if arg1 then
    arg4 = TriggerServerEvent
    arg5 = "9dd6740ca1"
    modelValue = rageUiCall7.serious
    workValue10 = rageUiCall7.minors
    textValue9 = arg2
    arg4(arg5, modelValue, workValue10, textValue9)
    rageUiCall7.active = false
  else
    arg4 = TriggerServerEvent
    arg5 = "7bcdcadbbe"
    modelValue = rageUiCall7.serious
    workValue10 = rageUiCall7.minors
    textValue9 = arg3
    textValue11 = arg2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7bcdcadbbe".
    arg4(arg5, modelValue, workValue10, textValue9, textValue11)
    rageUiCall7.active = false
  end
  arg4 = rageUiCall7.blip
  if 0 ~= arg4 then
    arg4 = tCMG
    arg4 = arg4.removeBlip
    arg5 = rageUiCall7.blip
    arg4(arg5)
  end
  arg4 = rageUiCall7.marker
  if 0 ~= arg4 then
    arg4 = tCMG
    arg4 = arg4.removeMarker
    arg5 = rageUiCall7.marker
    arg4(arg5)
  end
  arg4 = ClearGpsPlayerWaypoint
  arg4()
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.DVSA
function numberValue2(arg1)
  local arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder
  rageUiCall7.subtitle = "Park up ~y~safely"
  while true do
    arg2 = GetEntitySpeed
    arg3 = rageUiCall7.vehicle
    -- Beginner: result below is speed.
    arg2 = arg2(arg3)
    arg2 = not arg2
    if 0.0 ~= arg2 then
      break
    end
    arg2 = Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = Wait
  arg3 = 6000
  arg2(arg3)
  arg2 = GetEntitySpeed
  arg3 = rageUiCall7.vehicle
  -- Beginner: result below is speed.
  arg2 = arg2(arg3)
  arg2 = not arg2
  if 0.0 == arg2 then
    while true do
      arg2 = GetEntitySpeed
      arg3 = rageUiCall7.vehicle
      -- Beginner: result below is speed.
      arg2 = arg2(arg3)
      arg2 = not arg2
      if 0.0 ~= arg2 then
        break
      end
      arg2 = Wait
      arg3 = 0
      arg2(arg3)
    end
  end
  arg2 = Wait
  arg3 = 3000
  arg2(arg3)
  arg2 = GetEntitySpeed
  arg3 = rageUiCall7.vehicle
  -- Beginner: result below is speed.
  arg2 = arg2(arg3)
  arg2 = not arg2
  if 0.0 == arg2 then
    while true do
      arg2 = GetEntitySpeed
      arg3 = rageUiCall7.vehicle
      -- Beginner: result below is speed.
      arg2 = arg2(arg3)
      arg2 = not arg2
      if 0.0 ~= arg2 then
        break
      end
      arg2 = Wait
      arg3 = 0
      arg2(arg3)
    end
  end
  arg2 = CMG
  arg2 = arg2.DVSA
  arg2 = arg2.useTablet
  arg2()
  arg2 = CMG
  arg2 = arg2.DVSA
  arg2 = arg2.dvsaSound
  arg3 = "completePaperwork"
  arg2(arg3)
  rageUiCall7.subtitle = "Please wait whilst I finish my ~y~paperwork"
  arg2 = SetVehicleEngineOn
  arg3 = rageUiCall7.vehicle
  arg4 = false
  arg5 = true
  modelValue = true
  arg2(arg3, arg4, arg5, modelValue)
  arg2 = FreezeEntityPosition
  arg3 = rageUiCall7.vehicle
  arg4 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, arg4)
  arg2 = Wait
  arg3 = 10000
  arg2(arg3)
  arg2 = ""
  arg3 = ""
  if arg1 then
    arg4 = CMG
    arg4 = arg4.DVSA
    arg4 = arg4.dvsaSound
    arg5 = "testPassed"
    arg4(arg5)
    arg4 = CMG
    arg4 = arg4.notifyPicture
    arg5 = cmgCall9.images
    arg5 = arg5.dict
    modelValue = cmgCall9.images
    modelValue = modelValue.govLarge
    workValue10 = "You ~b~passed your test with ~y~"
    textValue9 = rageUiCall7.minors
    textValue11 = " ~w~minors"
    workValue10 = workValue10 .. textValue9 .. textValue11
    textValue9 = "UK Government"
    textValue11 = "CMG Learning Centre"
    arg4(arg5, modelValue, workValue10, textValue9, textValue11)
    arg4 = "Congratulations, you have ~g~passed ~w~your driving test with ~y~"
    arg5 = rageUiCall7.minors
    modelValue = " ~w~minors"
    arg4 = arg4 .. arg5 .. modelValue
    rageUiCall7.subtitle = arg4
    arg4 = Wait
    arg5 = 6000
    arg4(arg5)
    rageUiCall7.subtitle = "This is only the beginning to becoming a ~b~safe ~w~and ~b~confident driver"
    arg4 = Wait
    arg5 = 4000
    arg4(arg5)
    arg4 = CMG
    arg4 = arg4.DVSA
    arg4 = arg4.dvsaSound
    arg5 = "testPassedGoodbye"
    arg4(arg5)
    rageUiCall7.subtitle = "I would like to add you drove very well and I wish you the best of luck in the future"
    arg4 = Wait
    arg5 = 4000
    arg4(arg5)
    rageUiCall7.subtitle = "See you around!"
  else
    arg4 = CMG
    arg4 = arg4.DVSA
    arg4 = arg4.dvsaSound
    arg5 = "testFailed"
    arg4(arg5)
    arg4 = CMG
    arg4 = arg4.notifyPicture
    arg5 = cmgCall9.images
    arg5 = arg5.dict
    modelValue = cmgCall9.images
    modelValue = modelValue.govLarge
    workValue10 = "Unfortunately you have ~r~failed your test"
    textValue9 = "UK Government"
    textValue11 = "CMG Learning Centre"
    arg4(arg5, modelValue, workValue10, textValue9, textValue11)
    rageUiCall7.subtitle = "Unfortunately you have ~y~failed ~w~your driving test"
    arg4 = Wait
    arg5 = 6000
    arg4(arg5)
    arg4 = CMG
    arg4 = arg4.notifyPicture
    arg5 = cmgCall9.images
    arg5 = arg5.dict
    modelValue = cmgCall9.images
    modelValue = modelValue.govLarge
    workValue10 = "Your ~r~serious ~w~faults were:"
    textValue9 = "UK Government"
    textValue11 = "CMG Learning Centre"
    arg4(arg5, modelValue, workValue10, textValue9, textValue11)
    arg4 = Wait
    arg5 = 3000
    arg4(arg5)
    arg4 = CMG
    arg4 = arg4.DVSA
    arg4 = arg4.dvsaSound
    arg5 = "seriousFaults"
    arg4(arg5)
    arg4 = pairs
    arg5 = rageUiCall7.seriousReason
    arg4, arg5, modelValue, workValue10 = arg4(arg5)
    for textValue9 in arg4, arg5, modelValue, workValue10 do
      textValue11 = arg3
      textValue13 = ", "
      vector3Builder = rageUiCall7.seriousReason
      vector3Builder = vector3Builder[textValue9]
      textValue11 = textValue11 .. textValue13 .. vector3Builder
      arg3 = textValue11
      textValue11 = tCMG
      textValue11 = textValue11.notify
      textValue13 = "~r~Serious Fault~w~: "
      vector3Builder = rageUiCall7.seriousReason
      vector3Builder = vector3Builder[textValue9]
      textValue13 = textValue13 .. vector3Builder
      -- Beginner: Show a notification to the player.
      textValue11(textValue13)
      textValue11 = Wait
      textValue13 = 500
      textValue11(textValue13)
    end
    arg4 = CMG
    arg4 = arg4.notifyPicture
    arg5 = cmgCall9.images
    arg5 = arg5.dict
    modelValue = cmgCall9.images
    modelValue = modelValue.govLarge
    workValue10 = "Your ~y~minor ~w~faults were:"
    textValue9 = "UK Government"
    textValue11 = "CMG Learning Centre"
    arg4(arg5, modelValue, workValue10, textValue9, textValue11)
    arg4 = Wait
    arg5 = 3000
    arg4(arg5)
    arg4 = CMG
    arg4 = arg4.DVSA
    arg4 = arg4.dvsaSound
    arg5 = "minorFaults"
    arg4(arg5)
    arg4 = pairs
    arg5 = rageUiCall7.minorsReason
    arg4, arg5, modelValue, workValue10 = arg4(arg5)
    for textValue9 in arg4, arg5, modelValue, workValue10 do
      textValue11 = arg2
      textValue13 = ", "
      vector3Builder = rageUiCall7.minorsReason
      vector3Builder = vector3Builder[textValue9]
      textValue11 = textValue11 .. textValue13 .. vector3Builder
      arg2 = textValue11
      textValue11 = tCMG
      textValue11 = textValue11.notify
      textValue13 = "~y~Minor Fault~w~: "
      vector3Builder = rageUiCall7.minorsReason
      vector3Builder = vector3Builder[textValue9]
      textValue13 = textValue13 .. vector3Builder
      -- Beginner: Show a notification to the player.
      textValue11(textValue13)
      textValue11 = Wait
      textValue13 = 500
      textValue11(textValue13)
    end
    arg4 = Wait
    arg5 = 4000
    arg4(arg5)
    arg4 = CMG
    arg4 = arg4.DVSA
    arg4 = arg4.dvsaSound
    arg5 = "testFailedGoodbye"
    arg4(arg5)
    rageUiCall7.subtitle = "We do not fail a candidate lightly and we hope you have the ~b~determination ~w~to improve"
    arg4 = Wait
    arg5 = 4000
    arg4(arg5)
    rageUiCall7.subtitle = "I wish you the best of luck in the future and I look forward to seeing you next time"
    arg4 = Wait
    arg5 = 4000
    arg4(arg5)
    rageUiCall7.subtitle = "Goodbye!"
    arg4 = Wait
    arg5 = 4000
    arg4(arg5)
  end
  arg4 = Wait
  arg5 = 5000
  arg4(arg5)
  arg4 = textValue3
  arg4()
  arg4 = Wait
  arg5 = 3000
  arg4(arg5)
  arg4 = SetTimeout
  arg5 = 20000
  function modelValue()
    local arg12, arg22
    rageUiCall7.requested = false
  end
  arg4(arg5, modelValue)
  arg4 = numberValue
  arg5 = arg1
  modelValue = arg2
  workValue10 = arg3
  arg4(arg5, modelValue, workValue10)
end
cmgCall4.finishTest = numberValue2
cmgCall4 = CMG
cmgCall4 = cmgCall4.DVSA
function numberValue2(arg1)
  local arg2, arg3, arg4
  arg2 = table
  arg2 = arg2.insert
  arg3 = rageUiCall7.seriousReason
  arg4 = arg1
  arg2(arg3, arg4)
  rageUiCall7.seriousIssued = true
  arg2 = rageUiCall7.serious
  arg2 = arg2 + 1
  rageUiCall7.serious = arg2
  arg2 = CMG
  arg2 = arg2.DVSA
  arg2 = arg2.useTablet
  arg2()
end
cmgCall4.issueSerious = numberValue2
cmgCall4 = CMG
cmgCall4 = cmgCall4.DVSA
function numberValue2(arg1)
  local arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11
  arg2 = table
  arg2 = arg2.insert
  arg3 = rageUiCall7.minorsReason
  arg4 = arg1
  arg2(arg3, arg4)
  arg2 = rageUiCall7.minors
  arg2 = arg2 + 1
  rageUiCall7.minors = arg2
  arg2 = 0
  arg3 = pairs
  arg4 = rageUiCall7.minorsReason
  arg3, arg4, arg5, modelValue = arg3(arg4)
  for workValue10 in arg3, arg4, arg5, modelValue do
    textValue9 = rageUiCall7.minorsReason
    textValue9 = textValue9[workValue10]
    if "Speeding" == textValue9 then
      arg2 = arg2 + 1
    end
  end
  if 4 == arg2 then
    arg3 = CMG
    arg3 = arg3.DVSA
    arg3 = arg3.issueSerious
    arg4 = "Speeding"
    arg3(arg4)
  else
    arg3 = CMG
    arg3 = arg3.DVSA
    arg3 = arg3.useTablet
    arg3()
  end
end
cmgCall4.issueMinor = numberValue2
cmgCall4 = RegisterNetEvent
numberValue2 = "05a6478fe0"
-- Beginner: this function handles network event "05a6478fe0".
function flag4()
  local arg1, arg2
  arg1 = rageUiCall7.active
  if arg1 then
    arg1 = workValue5
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.DVSA
      arg1 = arg1.issueSerious
      arg2 = "Used mobile phone"
      arg1(arg2)
      arg1 = true
      workValue5 = arg1
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "05a6478fe0".
cmgCall4(numberValue2, flag4)
cmgCall4 = CMG
cmgCall4 = cmgCall4.DVSA
function numberValue2()
  local arg1, arg2, arg3, arg4, arg5, modelValue
  arg1 = PlaySoundFrontend
  arg2 = -1
  arg3 = "Out_Of_Bounds_Timer"
  arg4 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  arg5 = true
  arg1(arg2, arg3, arg4, arg5)
  arg1 = CMG
  arg1 = arg1.notifyPicture
  arg2 = cmgCall9.images
  arg2 = arg2.dict
  arg3 = cmgCall9.images
  arg3 = arg3.govLarge
  arg4 = "Listen carefully for directions"
  arg5 = "Controlled Stop"
  modelValue = "CMG Learning Centre"
  arg1(arg2, arg3, arg4, arg5, modelValue)
  arg1 = false
  arg2 = false
  arg3 = CMG
  arg3 = arg3.DVSA
  arg3 = arg3.dvsaSound
  arg4 = "controlledStop"
  arg3(arg4)
  rageUiCall7.subtitle = "We will soon carry out a ~b~controlled stop"
  arg3 = Wait
  arg4 = 4000
  arg3(arg4)
  rageUiCall7.subtitle = "When it is safe to do so, ~y~pull up ~w~and park safely ~y~on the right hand side ~w~of the road."
  arg3 = SetTimeout
  arg4 = 20000
  function arg5()
    local arg12, arg22
    arg12 = true
    arg1 = arg12
  end
  arg3(arg4, arg5)
  while not arg1 do
    arg3 = GetEntitySpeed
    arg4 = rageUiCall7.vehicle
    -- Beginner: result below is speed.
    arg3 = arg3(arg4)
    if 0.0 == arg3 then
      arg3 = Wait
      arg4 = 2000
      arg3(arg4)
      arg3 = GetEntitySpeed
      arg4 = rageUiCall7.vehicle
      -- Beginner: result below is speed.
      arg3 = arg3(arg4)
      if 0.0 == arg3 then
        arg1 = true
        break
      else
        rageUiCall7.subtitle = "Please pull up ~y~on the right"
      end
    elseif arg1 then
      rageUiCall7.subtitle = "Thank you, please move off again when you are ready"
      arg2 = true
      arg3 = CMG
      arg3 = arg3.DVSA
      arg3 = arg3.issueSerious
      arg4 = "Controlled Stop - Serious"
      arg3(arg4)
      break
    end
    arg3 = Wait
    arg4 = 0
    arg3(arg4)
  end
  arg3 = Wait
  arg4 = 2000
  arg3(arg4)
  if not arg2 then
    rageUiCall7.subtitle = "Thank you, please move off again when you are ready"
  else
    rageUiCall7.subtitle = "Thank you, please move off again when you are ready"
  end
  arg3 = CMG
  arg3 = arg3.DVSA
  arg3 = arg3.dvsaSound
  arg4 = "moveOffWhenReady"
  arg3(arg4)
  arg3 = Wait
  arg4 = 2000
  arg3(arg4)
  rageUiCall7.subtitle = "Follow the ~y~sat nav"
  arg3 = CMG
  arg3 = arg3.DVSA
  arg3 = arg3.useTablet
  arg3()
end
cmgCall4.pullUpOnRight = numberValue2
cmgCall4 = CMG
cmgCall4 = cmgCall4.DVSA
function numberValue2()
  local arg1, arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9
  arg1 = PlaySoundFrontend
  arg2 = -1
  arg3 = "Out_Of_Bounds_Timer"
  arg4 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  arg5 = true
  arg1(arg2, arg3, arg4, arg5)
  arg1 = CMG
  arg1 = arg1.notifyPicture
  arg2 = cmgCall9.images
  arg2 = arg2.dict
  arg3 = cmgCall9.images
  arg3 = arg3.govLarge
  arg4 = "Listen carefully for directions"
  arg5 = "Show Me Question"
  modelValue = "CMG Learning Centre"
  arg1(arg2, arg3, arg4, arg5, modelValue)
  rageUiCall7.subtitle = "I will now ask you one ~y~show me question ~w~while driving"
  arg1 = CMG
  arg1 = arg1.DVSA
  arg1 = arg1.dvsaSound
  arg2 = "askShowMeQuestion"
  arg1(arg2)
  arg1 = Wait
  arg2 = 6000
  arg1(arg2)
  arg1 = false
  arg2 = CMG
  arg2 = arg2.DVSA
  arg2 = arg2.dvsaSound
  arg3 = "operateMainBeamHeadlights"
  arg2(arg3)
  rageUiCall7.subtitle = "When it is ~y~safe ~w~to do so, show me how you'd ~y~operate the main beam headlights."
  arg2 = CMG
  arg2 = arg2.notifyPicture
  arg3 = cmgCall9.images
  arg3 = arg3.dict
  arg4 = cmgCall9.images
  arg4 = arg4.govLarge
  arg5 = "Turn on your headlights as requested"
  modelValue = "Show Me Question"
  workValue10 = "CMG Learning Centre"
  arg2(arg3, arg4, arg5, modelValue, workValue10)
  arg2 = SetTimeout
  arg3 = 20000
  function arg4()
    local arg12, arg22
    arg12 = true
    arg1 = arg12
  end
  arg2(arg3, arg4)
  arg2 = false
  while not arg1 do
    arg3 = GetVehicleLightsState
    arg4 = rageUiCall7.vehicle
    arg3, arg4, arg5 = arg3(arg4)
    if arg5 then
      arg2 = true
    end
    if arg5 then
      modelValue = Wait
      workValue10 = 5000
      modelValue(workValue10)
      arg1 = true
    end
    modelValue = Wait
    workValue10 = 0
    modelValue(workValue10)
  end
  if not arg2 then
    arg3 = CMG
    arg3 = arg3.DVSA
    arg3 = arg3.issueMinor
    arg4 = "Show Me - Headlights"
    arg3(arg4)
  end
  arg3 = CMG
  arg3 = arg3.DVSA
  arg3 = arg3.dvsaSound
  arg4 = "continueToFollow"
  arg3(arg4)
  rageUiCall7.subtitle = "Thank you, please continue to follow the sat nav"
  arg3 = Wait
  arg4 = 2000
  arg3(arg4)
  arg3 = CMG
  arg3 = arg3.notifyPicture
  arg4 = cmgCall9.images
  arg4 = arg4.dict
  arg5 = cmgCall9.images
  arg5 = arg5.govLarge
  modelValue = "Thank you, the show me question is complete"
  workValue10 = "Show Me Question"
  textValue9 = "CMG Learning Centre"
  arg3(arg4, arg5, modelValue, workValue10, textValue9)
  rageUiCall7.subtitle = "Follow the ~y~sat nav"
end
cmgCall4.operateHeadlights = numberValue2
cmgCall4 = CMG
cmgCall4 = cmgCall4.DVSA
function numberValue2()
  local arg1, arg2, arg3, arg4, arg5, modelValue
  arg1 = PlaySoundFrontend
  arg2 = -1
  arg3 = "Out_Of_Bounds_Timer"
  arg4 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  arg5 = true
  arg1(arg2, arg3, arg4, arg5)
  arg1 = CMG
  arg1 = arg1.DVSA
  arg1 = arg1.dvsaSound
  arg2 = "stopSign"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.notifyPicture
  arg2 = cmgCall9.images
  arg2 = arg2.dict
  arg3 = cmgCall9.images
  arg3 = arg3.govLarge
  arg4 = "You are legally required to stop at this sign"
  arg5 = "Stop Sign"
  modelValue = "CMG Learning Centre"
  arg1(arg2, arg3, arg4, arg5, modelValue)
  arg1 = false
  arg2 = false
  arg3 = Citizen
  arg3 = arg3.CreateThread
  function arg4()
    local arg12, arg22, arg32
    arg12 = SetTimeout
    arg22 = 15000
    function arg32()
      local arg13, arg23
      arg13 = true
      arg1 = arg13
    end
    arg12(arg22, arg32)
    while true do
      arg12 = arg1
      if arg12 then
        break
      end
      arg12 = GetEntitySpeed
      arg22 = rageUiCall7.vehicle
      -- Beginner: result below is speed.
      arg12 = arg12(arg22)
      if arg12 <= 1.0 then
        arg12 = true
        arg2 = arg12
        arg12 = true
        arg1 = arg12
      end
      arg12 = Wait
      arg22 = 0
      arg12(arg22)
    end
    arg12 = arg2
    if not arg12 then
      arg12 = CMG
      arg12 = arg12.DVSA
      arg12 = arg12.issueSerious
      arg22 = "Failed to yield for a stop sign"
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg3(arg4)
end
cmgCall4.stopSignDetection = numberValue2
cmgCall4 = CMG
cmgCall4 = cmgCall4.DVSA
function numberValue2()
  local arg1, arg2, arg3, arg4, arg5, modelValue
  arg1 = PlaySoundFrontend
  arg2 = -1
  arg3 = "Out_Of_Bounds_Timer"
  arg4 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  arg5 = true
  arg1(arg2, arg3, arg4, arg5)
  arg1 = CMG
  arg1 = arg1.DVSA
  arg1 = arg1.dvsaSound
  arg2 = "emergencyStopIntroduction"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.notifyPicture
  arg2 = cmgCall9.images
  arg2 = arg2.dict
  arg3 = cmgCall9.images
  arg3 = arg3.govLarge
  arg4 = "Listen carefully for directions"
  arg5 = "Test Instruction"
  modelValue = "CMG Learning Centre"
  arg1(arg2, arg3, arg4, arg5, modelValue)
  rageUiCall7.subtitle = "We will soon carry out an ~y~emergency stop~w~, I will give you a warning before you should stop"
  arg1 = Wait
  arg2 = 3000
  arg1(arg2)
  rageUiCall7.subtitle = "You should have practiced this with your ~y~approved driving instructor"
  arg1 = Wait
  arg2 = 3000
  arg1(arg2)
  rageUiCall7.subtitle = "When I say ~r~stop ~w~you should react as soon as possible"
  arg1 = Wait
  arg2 = math
  arg2 = arg2.random
  arg3 = 7000
  arg4 = 15000
  arg2, arg3, arg4, arg5, modelValue = arg2(arg3, arg4)
  arg1(arg2, arg3, arg4, arg5, modelValue)
  arg1 = CMG
  arg1 = arg1.DVSA
  arg1 = arg1.dvsaSound
  arg2 = "stopNowMessage"
  arg1(arg2)
  rageUiCall7.subtitle = "~r~STOP ~w~- Perform an emergency stop"
  arg1 = CMG
  arg1 = arg1.notifyPicture
  arg2 = cmgCall9.images
  arg2 = arg2.dict
  arg3 = cmgCall9.images
  arg3 = arg3.govLarge
  arg4 = "Perform an emergency stop immediately"
  arg5 = "STOP"
  modelValue = "CMG Learning Centre"
  arg1(arg2, arg3, arg4, arg5, modelValue)
  arg1 = Wait
  arg2 = 3000
  arg1(arg2)
  arg1 = GetEntitySpeed
  arg2 = rageUiCall7.vehicle
  -- Beginner: result below is speed.
  arg1 = arg1(arg2)
  arg1 = not arg1
  if 0.0 == arg1 then
    arg1 = CMG
    arg1 = arg1.DVSA
    arg1 = arg1.issueMinor
    arg2 = "ES - Timing"
    arg1(arg2)
  else
    rageUiCall7.subtitle = "~r~STOP ~w~- Remain stopped"
  end
  arg1 = Wait
  arg2 = 3000
  arg1(arg2)
  arg1 = GetEntitySpeed
  arg2 = rageUiCall7.vehicle
  -- Beginner: result below is speed.
  arg1 = arg1(arg2)
  arg1 = not arg1
  if 0.0 == arg1 then
    arg1 = CMG
    arg1 = arg1.DVSA
    arg1 = arg1.issueSerious
    arg2 = "ES - Failed"
    arg1(arg2)
  end
  arg1 = Wait
  arg2 = 3000
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.DVSA
  arg1 = arg1.dvsaSound
  arg2 = "moveOffWhenReady"
  arg1(arg2)
  rageUiCall7.subtitle = "Thank you, please continue to follow the sat nav"
  arg1 = Wait
  arg2 = 2000
  arg1(arg2)
  rageUiCall7.subtitle = "Follow the ~y~sat nav"
  arg1 = CMG
  arg1 = arg1.DVSA
  arg1 = arg1.useTablet
  arg1()
end
cmgCall4.emergencyStop = numberValue2
cmgCall4 = CMG
cmgCall4 = cmgCall4.DVSA
function numberValue2()
  local arg1, arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = -1585232418
  arg1 = arg1(arg2)
  arg2 = CreateObject
  arg3 = arg1
  arg4 = 0
  arg5 = 0
  modelValue = 0
  workValue10 = false
  textValue9 = true
  textValue11 = true
  -- Beginner: result below is objectEntity.
  arg2 = arg2(arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11)
  rageUiCall7.tabletHandle = arg2
  arg2 = SetModelAsNoLongerNeeded
  arg3 = arg1
  arg2(arg3)
  arg2 = AttachEntityToEntity
  arg3 = rageUiCall7.tabletHandle
  arg4 = rageUiCall7.ped
  arg5 = GetPedBoneIndex
  modelValue = rageUiCall7.ped
  workValue10 = 57005
  arg5 = arg5(modelValue, workValue10)
  modelValue = 0.17
  workValue10 = 0.1
  textValue9 = -0.13
  textValue11 = 24.0
  textValue13 = 180.0
  vector3Builder = 180.0
  cmgCall3 = true
  position = true
  position2 = false
  position3 = true
  flag = 1
  flag2 = true
  -- Beginner: Attach one entity to another entity.
  arg2(arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2)
  arg2 = RequestAnimDict
  arg3 = "amb@world_human_seat_wall_tablet@female@base"
  arg2(arg3)
  while true do
    arg2 = HasAnimDictLoaded
    arg3 = "amb@world_human_seat_wall_tablet@female@base"
    arg2 = arg2(arg3)
    if arg2 then
      break
    end
    arg2 = Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = TaskPlayAnim
  arg3 = rageUiCall7.ped
  arg4 = "amb@world_human_seat_wall_tablet@female@base"
  arg5 = "base"
  modelValue = 8.0
  workValue10 = 1
  textValue9 = -1
  textValue11 = 1
  textValue13 = 1.0
  vector3Builder = false
  cmgCall3 = false
  position = false
  -- Beginner: Play an animation on a ped.
  arg2(arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position)
  arg2 = RemoveAnimDict
  arg3 = "amb@world_human_seat_wall_tablet@female@base"
  arg2(arg3)
  arg2 = SetTimeout
  arg3 = 9000
  function arg4()
    local arg12, arg22, arg32, dataTable2, rageUiCall4
    arg12 = DeleteEntity
    arg22 = rageUiCall7.tabletHandle
    -- Beginner: Delete a GTA entity.
    arg12(arg22)
    arg12 = StopAnimTask
    arg22 = rageUiCall7.ped
    arg32 = "amb@world_human_seat_wall_tablet@female@base"
    dataTable2 = "base"
    rageUiCall4 = 1.0
    arg12(arg22, arg32, dataTable2, rageUiCall4)
  end
  arg2(arg3, arg4)
end
cmgCall4.useTablet = numberValue2
cmgCall4 = CMG
cmgCall4 = cmgCall4.DVSA
function numberValue2(arg1)
  local arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2
  arg2 = NetworkOverrideClockTime
  arg3 = 9
  arg4 = 0
  arg5 = 0
  arg2(arg3, arg4, arg5)
  arg2 = CMG
  arg2 = arg2.hideAllDisplays
  arg3 = "dvsaintro"
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = FreezeEntityPosition
  arg4 = arg2
  arg5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, arg5)
  arg3 = SetFocusPosAndVel
  arg4 = 239.4198
  arg5 = -1392.593
  modelValue = 35.75024
  workValue10 = 0.0
  textValue9 = 0.0
  textValue11 = 0.0
  arg3(arg4, arg5, modelValue, workValue10, textValue9, textValue11)
  arg3 = CreateCameraWithParams
  arg4 = "DEFAULT_SCRIPTED_CAMERA"
  arg5 = 239.4198
  modelValue = -1392.593
  workValue10 = 35.75024
  textValue9 = 0.0
  textValue11 = 0.0
  textValue13 = 0.0
  vector3Builder = 65.0
  cmgCall3 = false
  position = 2
  arg3 = arg3(arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position)
  arg4 = PointCamAtCoord
  arg5 = arg3
  modelValue = 218.9802
  workValue10 = -1390.47
  textValue9 = 30.57727
  arg4(arg5, modelValue, workValue10, textValue9)
  arg4 = SetCamActive
  arg5 = arg3
  modelValue = true
  arg4(arg5, modelValue)
  arg4 = RenderScriptCams
  arg5 = true
  modelValue = true
  workValue10 = 0
  textValue9 = true
  textValue11 = false
  arg4(arg5, modelValue, workValue10, textValue9, textValue11)
  rageUiCall7.subtitle = "This is the ~b~DVSA ~w~test centre. You'll finish your test here."
  arg4 = Wait
  arg5 = 7000
  arg4(arg5)
  arg4 = CreateCameraWithParams
  arg5 = "DEFAULT_SCRIPTED_CAMERA"
  modelValue = 218.7297
  workValue10 = -1370.44
  textValue9 = 32.96997
  textValue11 = 0.0
  textValue13 = 0.0
  vector3Builder = 0.0
  cmgCall3 = 65.0
  position = false
  position2 = 2
  arg4 = arg4(arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2)
  arg5 = PointCamAtCoord
  modelValue = arg4
  workValue10 = arg1.x
  textValue9 = arg1.y
  textValue11 = arg1.z
  arg5(modelValue, workValue10, textValue9, textValue11)
  arg5 = SetCamActiveWithInterp
  modelValue = arg4
  workValue10 = arg3
  textValue9 = 10000
  textValue11 = 5
  textValue13 = 5
  arg5(modelValue, workValue10, textValue9, textValue11, textValue13)
  rageUiCall7.subtitle = "This is your vehicle in which you'll be ~b~examined~w~."
  arg5 = Wait
  modelValue = 10000
  arg5(modelValue)
  arg5 = DestroyCam
  modelValue = arg3
  workValue10 = false
  arg5(modelValue, workValue10)
  arg5 = DestroyCam
  modelValue = arg4
  workValue10 = false
  arg5(modelValue, workValue10)
  arg5 = RenderScriptCams
  modelValue = false
  workValue10 = true
  textValue9 = 3000
  textValue11 = true
  textValue13 = false
  arg5(modelValue, workValue10, textValue9, textValue11, textValue13)
  arg5 = Wait
  modelValue = 5000
  arg5(modelValue)
  arg5 = ClearFocus
  arg5()
  arg5 = FreezeEntityPosition
  modelValue = arg2
  workValue10 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg5(modelValue, workValue10)
  arg5 = CMG
  arg5 = arg5.showAllDisplays
  modelValue = "dvsaintro"
  arg5(modelValue)
  rageUiCall7.subtitle = "Please wait for the ~b~examiner~w~."
end
cmgCall4.cameraTransition = numberValue2
cmgCall4 = 0
numberValue2 = RageUI
numberValue2 = numberValue2.CreateWhile
flag4 = 1.0
numberValue3 = RMenu
numberValue4 = numberValue3
numberValue3 = numberValue3.Get
cmgCall5 = "dvsa"
textValue4 = "main"
-- Beginner: result below is menu.
numberValue3 = numberValue3(numberValue4, cmgCall5, textValue4)
numberValue4 = nil
function cmgCall5()
  local arg1, arg2, arg3, arg4, arg5, modelValue, workValue10
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true
  function modelValue()
    local arg12, arg22, arg32, dataTable2, rageUiCall4, workValue8, workValue11, workValue12, textValue12, textValue14
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Driving Licence"
    arg32 = "View and manage your driving licence"
    dataTable2 = {}
    rageUiCall4 = RageUI
    rageUiCall4 = rageUiCall4.BadgeStyle
    rageUiCall4 = rageUiCall4.Car
    dataTable2.RightBadge = rageUiCall4
    rageUiCall4 = true
    function workValue8(arg13, arg23, arg33)
    end
    workValue11 = RMenu
    workValue12 = workValue11
    workValue11 = workValue11.Get
    textValue12 = "dvsa"
    textValue14 = "licence"
    workValue11, workValue12, textValue12, textValue14 = workValue11(workValue12, textValue12, textValue14)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8, workValue11, workValue12, textValue12, textValue14)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Driving Test"
    arg32 = "View your driving tests"
    dataTable2 = {}
    rageUiCall4 = RageUI
    rageUiCall4 = rageUiCall4.BadgeStyle
    rageUiCall4 = rageUiCall4.Car
    dataTable2.RightBadge = rageUiCall4
    rageUiCall4 = true
    function workValue8(arg13, arg23, arg33)
    end
    workValue11 = RMenu
    workValue12 = workValue11
    workValue11 = workValue11.Get
    textValue12 = "dvsa"
    textValue14 = "tests"
    workValue11, workValue12, textValue12, textValue14 = workValue11(workValue12, textValue12, textValue14)
    arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8, workValue11, workValue12, textValue12, textValue14)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "CMG Learning Centre Alerts"
    arg32 = "View alerts received from the CMG Learning Centre"
    dataTable2 = {}
    rageUiCall4 = RageUI
    rageUiCall4 = rageUiCall4.BadgeStyle
    rageUiCall4 = rageUiCall4.Car
    dataTable2.RightBadge = rageUiCall4
    rageUiCall4 = true
    function workValue8(arg13, arg23, arg33)
    end
    workValue11 = RMenu
    workValue12 = workValue11
    workValue11 = workValue11.Get
    textValue12 = "dvsa"
    textValue14 = "alerts"
    workValue11, workValue12, textValue12, textValue14 = workValue11(workValue12, textValue12, textValue14)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8, workValue11, workValue12, textValue12, textValue14)
    arg12 = cmgCall7
    if arg12 then
      arg12 = rageUiCall7.active
      if not arg12 then
        arg12 = cmgCall.full
        if not arg12 then
          arg12 = cmgCall.active
          if arg12 then
            arg12 = rageUiCall7.requested
            if not arg12 then
              arg12 = RageUI
              arg12 = arg12.ButtonWithStyle
              arg22 = "Begin driving test"
              arg32 = "Begin your driving test"
              dataTable2 = {}
              rageUiCall4 = RageUI
              rageUiCall4 = rageUiCall4.BadgeStyle
              rageUiCall4 = rageUiCall4.Alert
              dataTable2.RightBadge = rageUiCall4
              rageUiCall4 = "\194\163"
              workValue8 = getMoneyStringFormatted
              workValue11 = cmgCall9.test
              workValue11 = workValue11.price
              workValue8 = workValue8(workValue11)
              rageUiCall4 = rageUiCall4 .. workValue8
              dataTable2.RightLabel = rageUiCall4
              rageUiCall4 = true
              function workValue8(arg13, arg23, arg33)
                local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
                if arg33 then
                  cmgCall6 = cmgCall.banned
                  if cmgCall6 then
                    cmgCall6 = CMG
                    cmgCall6 = cmgCall6.notifyPicture
                    textValue7 = cmgCall9.images
                    textValue7 = textValue7.dict
                    workValue9 = cmgCall9.images
                    workValue9 = workValue9.govLarge
                    textValue8 = "Your licence has been suspended"
                    textValue10 = "UK Government"
                    cmgCall8 = "CMG Learning Centre"
                    cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
                  else
                    cmgCall6 = rageUiCall7.requested
                    if not cmgCall6 then
                      cmgCall6 = TriggerServerEvent
                      textValue7 = "372adfd3e8"
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "372adfd3e8".
                      cmgCall6(textValue7)
                      rageUiCall7.requested = true
                    end
                  end
                  cmgCall6 = RageUI
                  cmgCall6 = cmgCall6.CloseAll
                  cmgCall6()
                end
              end
              -- Beginner: Draw a selectable RageUI menu button.
              arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8)
            else
              arg12 = RageUI
              arg12 = arg12.ButtonWithStyle
              arg22 = "No tests available"
              arg32 = "Try again in a few minutes"
              dataTable2 = {}
              rageUiCall4 = RageUI
              rageUiCall4 = rageUiCall4.BadgeStyle
              rageUiCall4 = rageUiCall4.Alert
              dataTable2.RightBadge = rageUiCall4
              rageUiCall4 = true
              function workValue8(arg13, arg23, arg33)
                local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
                if arg33 then
                  cmgCall6 = CMG
                  cmgCall6 = cmgCall6.notifyPicture
                  textValue7 = cmgCall9.images
                  textValue7 = textValue7.dict
                  workValue9 = cmgCall9.images
                  workValue9 = workValue9.govLarge
                  textValue8 = "We have no tests available, please try again in a few minutes."
                  textValue10 = "UK Government"
                  cmgCall8 = "Driving Test"
                  cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
                end
              end
              -- Beginner: Draw a selectable RageUI menu button.
              arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8)
            end
        end
      end
      else
        arg12 = rageUiCall7.requested
        if not arg12 then
          arg12 = rageUiCall7.active
          if not arg12 then
            arg12 = cmgCall.full
            if arg12 then
              arg12 = cmgCall.active
              if arg12 then
                arg12 = RageUI
                arg12 = arg12.ButtonWithStyle
                arg22 = "Surrender your licence"
                arg32 = "Surrender your driving licence to the CMG Learning Centre"
                dataTable2 = {}
                rageUiCall4 = RageUI
                rageUiCall4 = rageUiCall4.BadgeStyle
                rageUiCall4 = rageUiCall4.Alert
                dataTable2.RightBadge = rageUiCall4
                rageUiCall4 = true
                function workValue8(arg13, arg23, arg33)
                  local cmgCall6
                  if arg33 then
                    cmgCall6 = GetGameTimer
                    -- Beginner: result below is gameTimeMs.
                    cmgCall6 = cmgCall6()
                    cmgCall4 = cmgCall6
                  end
                end
                workValue11 = RMenu
                workValue12 = workValue11
                workValue11 = workValue11.Get
                textValue12 = "dvsa"
                textValue14 = "surrenderconfirm"
                workValue11, workValue12, textValue12, textValue14 = workValue11(workValue12, textValue12, textValue14)
                arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8, workValue11, workValue12, textValue12, textValue14)
              end
            end
          end
        end
      end
    end
  end
  function workValue10()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, modelValue, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "surrenderconfirm"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true
  function modelValue()
    local arg12, arg22, arg32, dataTable2, rageUiCall4, workValue8
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Confirm surrendering of license (READ CAREFULLY)"
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "This will remove your license and make you a learner."
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "This will require you to retake the driving test."
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Confirm Surrender"
    arg32 = "Confirm you wish to surrender your driving licence to the CMG Learning Centre."
    dataTable2 = {}
    rageUiCall4 = RageUI
    rageUiCall4 = rageUiCall4.BadgeStyle
    rageUiCall4 = rageUiCall4.Alert
    dataTable2.RightBadge = rageUiCall4
    rageUiCall4 = true
    function workValue8(arg13, arg23, arg33)
      local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
      if arg33 then
        cmgCall6 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        cmgCall6 = cmgCall6()
        textValue7 = cmgCall4
        cmgCall6 = cmgCall6 - textValue7
        textValue7 = 5000
        if cmgCall6 < textValue7 then
          cmgCall6 = notify
          textValue7 = "~r~Please wait 5 seconds and read the confirmation."
          -- Beginner: Show a notification to the player.
          cmgCall6(textValue7)
          return
        end
        cmgCall.full = false
        cmgCall.active = false
        cmgCall6 = CMG
        cmgCall6 = cmgCall6.notifyPicture
        textValue7 = cmgCall9.images
        textValue7 = textValue7.dict
        workValue9 = cmgCall9.images
        workValue9 = workValue9.govLarge
        textValue8 = "You've surrendered your licence. Your points and offences will remain held."
        textValue10 = "UK Government"
        cmgCall8 = "Licence Surrendered"
        cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
        cmgCall6 = TriggerServerEvent
        textValue7 = "515fda600c"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "515fda600c".
        cmgCall6(textValue7)
        cmgCall6 = RageUI
        cmgCall6 = cmgCall6.Visible
        textValue7 = RMenu
        workValue9 = textValue7
        textValue7 = textValue7.Get
        textValue8 = "dvsa"
        textValue10 = "main"
        -- Beginner: result below is menu.
        textValue7 = textValue7(workValue9, textValue8, textValue10)
        workValue9 = true
        cmgCall6(textValue7, workValue9)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8)
  end
  function workValue10()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, modelValue, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "licence"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true
  function modelValue()
    local arg12, arg22, arg32, dataTable2, rageUiCall4, workValue8, workValue11, workValue12, textValue12, textValue14, rageUiCall, rageUiCall2
    arg12 = cmgCall.full
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Licence Type:"
      arg32 = "This indiates if you hold a full licence"
      dataTable2 = {}
      dataTable2.RightLabel = "Full"
      rageUiCall4 = RageUI
      rageUiCall4 = rageUiCall4.BadgeStyle
      rageUiCall4 = rageUiCall4.Car
      dataTable2.RightBadge = rageUiCall4
      rageUiCall4 = true
      function workValue8(arg13, arg23, arg33)
        local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
        if arg33 then
          cmgCall6 = CMG
          cmgCall6 = cmgCall6.notifyPicture
          textValue7 = cmgCall9.images
          textValue7 = textValue7.dict
          workValue9 = cmgCall9.images
          workValue9 = workValue9.govLarge
          textValue8 = "Your licence is full. You have passed your driving test."
          textValue10 = "UK Government"
          cmgCall8 = "CMG Learning Centre"
          cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8)
    else
      arg12 = cmgCall.banned
      if arg12 then
        arg12 = RageUI
        arg12 = arg12.ButtonWithStyle
        arg22 = "Licence Type:"
        arg32 = "This indiates if you hold a full licence"
        dataTable2 = {}
        dataTable2.RightLabel = "Suspended"
        rageUiCall4 = RageUI
        rageUiCall4 = rageUiCall4.BadgeStyle
        rageUiCall4 = rageUiCall4.Alert
        dataTable2.RightBadge = rageUiCall4
        rageUiCall4 = true
        function workValue8(arg13, arg23, arg33)
          local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
          if arg33 then
            cmgCall6 = CMG
            cmgCall6 = cmgCall6.notifyPicture
            textValue7 = cmgCall9.images
            textValue7 = textValue7.dict
            workValue9 = cmgCall9.images
            workValue9 = workValue9.govLarge
            textValue8 = "Your licence has been suspended"
            textValue10 = "UK Government"
            cmgCall8 = "CMG Learning Centre"
            cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8)
      else
        arg12 = cmgCall.active
        if arg12 then
          arg12 = RageUI
          arg12 = arg12.ButtonWithStyle
          arg22 = "Licence Type:"
          arg32 = "This indiates if you hold a full licence"
          dataTable2 = {}
          dataTable2.RightLabel = "Provisional"
          rageUiCall4 = RageUI
          rageUiCall4 = rageUiCall4.BadgeStyle
          rageUiCall4 = rageUiCall4.Alert
          dataTable2.RightBadge = rageUiCall4
          rageUiCall4 = true
          function workValue8(arg13, arg23, arg33)
            local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
            if arg33 then
              cmgCall6 = CMG
              cmgCall6 = cmgCall6.notifyPicture
              textValue7 = cmgCall9.images
              textValue7 = textValue7.dict
              workValue9 = cmgCall9.images
              workValue9 = workValue9.govLarge
              textValue8 = "Your licence is currently provisional, take a test at the CMG Learning Centre"
              textValue10 = "UK Government"
              cmgCall8 = "CMG Learning Centre"
              cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8)
        else
          arg12 = RageUI
          arg12 = arg12.ButtonWithStyle
          arg22 = "Licence Type:"
          arg32 = "This indiates if you hold a full licence"
          dataTable2 = {}
          dataTable2.RightLabel = "No licence"
          rageUiCall4 = RageUI
          rageUiCall4 = rageUiCall4.BadgeStyle
          rageUiCall4 = rageUiCall4.Alert
          dataTable2.RightBadge = rageUiCall4
          rageUiCall4 = true
          function workValue8(arg13, arg23, arg33)
            local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
            if arg33 then
              cmgCall6 = CMG
              cmgCall6 = cmgCall6.notifyPicture
              textValue7 = cmgCall9.images
              textValue7 = textValue7.dict
              workValue9 = cmgCall9.images
              workValue9 = workValue9.govLarge
              textValue8 = "You do not hold a UK Driving licence."
              textValue10 = "UK Government"
              cmgCall8 = "CMG Learning Centre"
              cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8)
          arg12 = textValue6
          if not arg12 then
            arg12 = RageUI
            arg12 = arg12.ButtonWithStyle
            arg22 = "Apply for a provisional licence"
            arg32 = "Apply for a provisional licence"
            dataTable2 = {}
            rageUiCall4 = RageUI
            rageUiCall4 = rageUiCall4.BadgeStyle
            rageUiCall4 = rageUiCall4.Car
            dataTable2.RightBadge = rageUiCall4
            rageUiCall4 = true
            function workValue8(arg13, arg23, arg33)
              local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
              if arg33 then
                cmgCall6 = TriggerServerEvent
                textValue7 = "2161c94134"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2161c94134".
                cmgCall6(textValue7)
                cmgCall6 = true
                textValue6 = cmgCall6
                cmgCall6 = CMG
                cmgCall6 = cmgCall6.notifyPicture
                textValue7 = cmgCall9.images
                textValue7 = textValue7.dict
                workValue9 = cmgCall9.images
                workValue9 = workValue9.govLarge
                textValue8 = "We will process your application shortly. Thank you for submitting."
                textValue10 = "UK Government"
                cmgCall8 = "CMG Learning Centre"
                cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8)
          end
        end
      end
    end
    arg12 = cmgCall.active
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Penalty Points:"
      arg32 = "This indicates your amount of licence points"
      dataTable2 = {}
      rageUiCall4 = cmgCall.points
      dataTable2.RightLabel = rageUiCall4
      rageUiCall4 = true
      function workValue8(arg13, arg23, arg33)
        local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
        if arg33 then
          cmgCall6 = CMG
          cmgCall6 = cmgCall6.notifyPicture
          textValue7 = cmgCall9.images
          textValue7 = textValue7.dict
          workValue9 = cmgCall9.images
          workValue9 = workValue9.govLarge
          textValue8 = "Your licence currently has "
          textValue10 = cmgCall.points
          cmgCall8 = " penalty points."
          textValue8 = textValue8 .. textValue10 .. cmgCall8
          textValue10 = "UK Government"
          cmgCall8 = "CMG Learning Centre"
          cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Licence Number:"
      arg32 = "This indicates your licence number"
      dataTable2 = {}
      rageUiCall4 = cmgCall.id
      dataTable2.RightLabel = rageUiCall4
      rageUiCall4 = true
      function workValue8(arg13, arg23, arg33)
        local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
        if arg33 then
          cmgCall6 = CMG
          cmgCall6 = cmgCall6.notifyPicture
          textValue7 = cmgCall9.images
          textValue7 = textValue7.dict
          workValue9 = cmgCall9.images
          workValue9 = workValue9.govLarge
          textValue8 = "Your licence number is "
          textValue10 = cmgCall.id
          cmgCall8 = ", this is issued with your licence."
          textValue8 = textValue8 .. textValue10 .. cmgCall8
          textValue10 = "UK Government"
          cmgCall8 = "CMG Learning Centre"
          cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Licence Issued:"
      arg32 = "This indicates the date and time of issue"
      dataTable2 = {}
      rageUiCall4 = cmgCall.date
      dataTable2.RightLabel = rageUiCall4
      rageUiCall4 = true
      function workValue8(arg13, arg23, arg33)
        local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
        if arg33 then
          cmgCall6 = CMG
          cmgCall6 = cmgCall6.notifyPicture
          textValue7 = cmgCall9.images
          textValue7 = textValue7.dict
          workValue9 = cmgCall9.images
          workValue9 = workValue9.govLarge
          textValue8 = "Your licence was issued at "
          textValue10 = cmgCall.date
          cmgCall8 = "."
          textValue8 = textValue8 .. textValue10 .. cmgCall8
          textValue10 = "UK Government"
          cmgCall8 = "CMG Learning Centre"
          cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8)
      arg12 = table
      arg12 = arg12.count
      arg22 = dataTable
      -- Beginner: result below is count.
      arg12 = arg12(arg22)
      if arg12 < 0 then
        arg12 = RageUI
        arg12 = arg12.Separator
        arg22 = "DVSA - Licence Record"
        arg12(arg22)
        arg12 = pairs
        arg22 = dataTable
        arg12, arg22, arg32, dataTable2 = arg12(arg22)
        for rageUiCall4, workValue8 in arg12, arg22, arg32, dataTable2 do
          workValue11 = RageUI
          workValue11 = workValue11.ButtonWithStyle
          workValue12 = workValue8.offence
          textValue12 = "Date: "
          textValue14 = workValue8.date
          rageUiCall = " | Type: "
          rageUiCall2 = workValue8.type
          textValue12 = textValue12 .. textValue14 .. rageUiCall .. rageUiCall2
          textValue14 = {}
          rageUiCall = RageUI
          rageUiCall = rageUiCall.BadgeStyle
          rageUiCall = rageUiCall.Alert
          textValue14.RightBadge = rageUiCall
          rageUiCall = true
          function rageUiCall2(arg13, arg23, arg33)
            local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8, workValue13, textValue
            if arg33 then
              cmgCall6 = CMG
              cmgCall6 = cmgCall6.notifyPicture
              textValue7 = cmgCall9.images
              textValue7 = textValue7.dict
              workValue9 = cmgCall9.images
              workValue9 = workValue9.govLarge
              textValue8 = "You were given "
              textValue10 = workValue8.points
              cmgCall8 = " penalty points on "
              workValue13 = workValue8.date
              textValue = "."
              textValue8 = textValue8 .. textValue10 .. cmgCall8 .. workValue13 .. textValue
              textValue10 = "UK Government"
              cmgCall8 = "Offence: "
              workValue13 = workValue8.offence
              cmgCall8 = cmgCall8 .. workValue13
              cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          workValue11(workValue12, textValue12, textValue14, rageUiCall, rageUiCall2)
        end
      end
    end
    arg12 = cmgCall.full
    if not arg12 then
      arg12 = cmgCall.passDate
      if arg12 then
        arg12 = RageUI
        arg12 = arg12.ButtonWithStyle
        arg22 = "Renew full driving license"
        arg32 = "You previously had a full licence, you can skip the test and purchase a new one for \194\1631,000,000"
        dataTable2 = {}
        rageUiCall4 = RageUI
        rageUiCall4 = rageUiCall4.BadgeStyle
        rageUiCall4 = rageUiCall4.Car
        dataTable2.RightBadge = rageUiCall4
        rageUiCall4 = true
        function workValue8(arg13, arg23, arg33)
          local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
          if arg33 then
            cmgCall6 = TriggerServerEvent
            textValue7 = "3887d186ba"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3887d186ba".
            cmgCall6(textValue7)
            cmgCall6 = CMG
            cmgCall6 = cmgCall6.notifyPicture
            textValue7 = cmgCall9.images
            textValue7 = textValue7.dict
            workValue9 = cmgCall9.images
            workValue9 = workValue9.govLarge
            textValue8 = "We will process your request shortly. Thank you for submitting."
            textValue10 = "UK Government"
            cmgCall8 = "CMG Learning Centre"
            cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        arg12(arg22, arg32, dataTable2, rageUiCall4, workValue8)
      end
    end
  end
  function workValue10()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, modelValue, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "tests"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true
  function modelValue()
    local arg12, arg22, arg32, dataTable2, rageUiCall4, workValue8, workValue11, workValue12, textValue12, textValue14, rageUiCall, rageUiCall2, workValue4
    arg12 = textValue5
    if nil ~= arg12 then
      arg12 = table
      arg12 = arg12.count
      arg22 = textValue5
      -- Beginner: result below is count.
      arg12 = arg12(arg22)
      if arg12 > 0 then
        arg12 = pairs
        arg22 = textValue5
        arg12, arg22, arg32, dataTable2 = arg12(arg22)
        for rageUiCall4, workValue8 in arg12, arg22, arg32, dataTable2 do
          workValue11 = "~r~FAIL"
          workValue12 = workValue8.pass
          if workValue12 then
            workValue11 = "~g~PASS"
          end
          workValue12 = RageUI
          workValue12 = workValue12.ButtonWithStyle
          textValue12 = workValue8.date
          textValue14 = " | Result: "
          rageUiCall = workValue11
          textValue12 = textValue12 .. textValue14 .. rageUiCall
          textValue14 = "~r~Serious Faults~w~: "
          rageUiCall = workValue8.serious
          rageUiCall2 = " | ~b~Minor Faults~w~: "
          workValue4 = workValue8.minor
          textValue14 = textValue14 .. rageUiCall .. rageUiCall2 .. workValue4
          rageUiCall = {}
          rageUiCall2 = RageUI
          rageUiCall2 = rageUiCall2.BadgeStyle
          rageUiCall2 = rageUiCall2.Alert
          rageUiCall.RightBadge = rageUiCall2
          rageUiCall2 = true
          function workValue4(arg13, arg23, arg33)
            local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8, workValue13, textValue, workValue2, textValue2
            if arg33 then
              cmgCall6 = CMG
              cmgCall6 = cmgCall6.notifyPicture
              textValue7 = cmgCall9.images
              textValue7 = textValue7.dict
              workValue9 = cmgCall9.images
              workValue9 = workValue9.govLarge
              textValue8 = "Your test result was a "
              textValue10 = workValue11
              cmgCall8 = " ~w~ with "
              workValue13 = workValue8.serious
              textValue = " serious faults and "
              workValue2 = workValue8.minor
              textValue2 = " minor faults."
              textValue8 = textValue8 .. textValue10 .. cmgCall8 .. workValue13 .. textValue .. workValue2 .. textValue2
              textValue10 = "UK Government"
              cmgCall8 = "Driving Test Result"
              cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
              cmgCall6 = workValue8.minor
              if nil ~= cmgCall6 then
                cmgCall6 = workValue8.pass
                if cmgCall6 then
                  cmgCall6 = workValue8.minor
                  if cmgCall6 > 0 then
                    cmgCall6 = CMG
                    cmgCall6 = cmgCall6.notifyPicture
                    textValue7 = cmgCall9.images
                    textValue7 = textValue7.dict
                    workValue9 = cmgCall9.images
                    workValue9 = workValue9.govLarge
                    textValue8 = "You received "
                    textValue10 = workValue8.minor
                    cmgCall8 = " minors"
                    textValue8 = textValue8 .. textValue10 .. cmgCall8
                    textValue10 = "UK Government"
                    cmgCall8 = "Driving Test Result"
                    cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
                end
              end
              else
                cmgCall6 = workValue8.pass
                if not cmgCall6 then
                  cmgCall6 = CMG
                  cmgCall6 = cmgCall6.notifyPicture
                  textValue7 = cmgCall9.images
                  textValue7 = textValue7.dict
                  workValue9 = cmgCall9.images
                  workValue9 = workValue9.govLarge
                  textValue8 = "Your serious faults were:"
                  textValue10 = "UK Government"
                  cmgCall8 = "Driving Test Result"
                  cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
                  cmgCall6 = workValue8.seriousReason
                  if nil ~= cmgCall6 then
                    cmgCall6 = CMG
                    cmgCall6 = cmgCall6.notifyPicture
                    textValue7 = cmgCall9.images
                    textValue7 = textValue7.dict
                    workValue9 = cmgCall9.images
                    workValue9 = workValue9.govLarge
                    textValue8 = "Your serious faults were: "
                    textValue10 = workValue8.seriousReason
                    textValue8 = textValue8 .. textValue10
                    textValue10 = "UK Government"
                    cmgCall8 = "Driving Test Result"
                    cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
                  end
                  cmgCall6 = workValue8.minor
                  if cmgCall6 > 0 then
                    cmgCall6 = workValue8.minorsReason
                    if nil ~= cmgCall6 then
                      cmgCall6 = CMG
                      cmgCall6 = cmgCall6.notifyPicture
                      textValue7 = cmgCall9.images
                      textValue7 = textValue7.dict
                      workValue9 = cmgCall9.images
                      workValue9 = workValue9.govLarge
                      textValue8 = "You received minors for "
                      textValue10 = workValue8.minorsReason
                      textValue8 = textValue8 .. textValue10
                      textValue10 = "UK Government"
                      cmgCall8 = "Driving Test Result"
                      cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
                    end
                  end
                end
              end
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          workValue12(textValue12, textValue14, rageUiCall, rageUiCall2, workValue4)
        end
      end
    end
  end
  function workValue10()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, modelValue, workValue10)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "alerts"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true
  function modelValue()
    local arg12, arg22, arg32, dataTable2, rageUiCall4, workValue8, workValue11, workValue12, textValue12, textValue14, rageUiCall, rageUiCall2
    arg12 = pairs
    arg22 = rageUiCall3
    arg12, arg22, arg32, dataTable2 = arg12(arg22)
    for rageUiCall4, workValue8 in arg12, arg22, arg32, dataTable2 do
      workValue11 = workValue8.date
      if nil == workValue11 then
        workValue8.date = ""
      end
      workValue11 = RageUI
      workValue11 = workValue11.ButtonWithStyle
      workValue12 = workValue8.title
      textValue12 = " "
      textValue14 = workValue8.date
      workValue12 = workValue12 .. textValue12 .. textValue14
      textValue12 = "Press to read this message"
      textValue14 = {}
      rageUiCall = RageUI
      rageUiCall = rageUiCall.BadgeStyle
      rageUiCall = rageUiCall.Alert
      textValue14.RightBadge = rageUiCall
      rageUiCall = true
      function rageUiCall2(arg13, arg23, arg33)
        local cmgCall6, textValue7, workValue9, textValue8, textValue10, cmgCall8
        if arg33 then
          cmgCall6 = CMG
          cmgCall6 = cmgCall6.notifyPicture
          textValue7 = cmgCall9.images
          textValue7 = textValue7.dict
          workValue9 = cmgCall9.images
          workValue9 = workValue9.govLarge
          textValue8 = workValue8.message
          textValue10 = "UK Government"
          cmgCall8 = workValue8.title
          cmgCall6(textValue7, workValue9, textValue8, textValue10, cmgCall8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      workValue11(workValue12, textValue12, textValue14, rageUiCall, rageUiCall2)
    end
  end
  function workValue10()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, modelValue, workValue10)
end
numberValue2(flag4, numberValue3, numberValue4, cmgCall5)
numberValue2 = RegisterCommand
flag4 = "dl"
-- Beginner: this function is the command handler for "dl".
function numberValue3()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "licence"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "tests"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "alerts"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "dvsa"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg1(arg2, arg3)
end
numberValue4 = false
-- Beginner: Register a chat/console command. Event/command: "dl".
numberValue2(flag4, numberValue3, numberValue4)
numberValue2 = Citizen
numberValue2 = numberValue2.CreateThread
function flag4()
  local arg1, arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11
  while true do
    arg1 = CMG
    arg1 = arg1.isDevMode
    arg1 = arg1()
    if arg1 then
      return
    end
    arg1 = rageUiCall7.active
    if arg1 then
      arg1 = DisableControlAction
      arg2 = 0
      arg3 = 75
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = DisableControlAction
      arg2 = 27
      arg3 = 75
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = rageUiCall7.subtitle
      if "" ~= arg1 then
        arg1 = RageUI
        arg1 = arg1.Text
        arg2 = {}
        arg3 = rageUiCall7.subtitle
        arg2.message = arg3
        arg1(arg2)
      end
    end
    arg1 = CMG
    arg1 = arg1.getPlayerVehicle
    arg1, arg2 = arg1()
    arg3 = cmgCall.full
    if not arg3 then
      arg3 = cmgCall.banned
      if not arg3 then
        arg3 = rageUiCall7.active
        if not arg3 then
          if 0 ~= arg1 then
            arg3 = GetPedInVehicleSeat
            arg4 = arg1
            arg5 = -1
            arg3 = arg3(arg4, arg5)
            arg4 = CMG
            arg4 = arg4.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            arg4 = arg4()
            if arg3 == arg4 then
              arg3 = CMG
              arg3 = arg3.inEvent
              arg3 = arg3()
              if not arg3 then
                arg3 = CMG
                arg3 = arg3.isEmergencyService
                arg3 = arg3()
                if arg3 then
                  arg3 = GetVehicleClass
                  arg4 = arg1
                  arg3 = arg3(arg4)
                  if 18 == arg3 then
                    arg3 = IsVehicleEngineStarting
                    arg4 = arg1
                    arg3 = arg3(arg4)
                    if not arg3 then
                      arg3 = GetIsVehicleEngineRunning
                      arg4 = arg1
                      arg3 = arg3(arg4)
                    end
                    if arg3 then
                      arg3 = SetVehicleEngineOn
                      arg4 = arg1
                      arg5 = false
                      modelValue = true
                      workValue10 = true
                      arg3(arg4, arg5, modelValue, workValue10)
                      arg3 = notify
                      arg4 = "~r~You require a full valid license to drive an emergency vehicle."
                      -- Beginner: Show a notification to the player.
                      arg3(arg4)
                    end
                end
                else
                  arg3 = Entity
                  arg4 = arg1
                  arg3 = arg3(arg4)
                  arg3 = arg3.state
                  arg3 = arg3.isLearner
                  if not arg3 then
                    arg3 = NetworkHasControlOfEntity
                    arg4 = arg1
                    arg3 = arg3(arg4)
                    if arg3 then
                      arg3 = NetworkGetEntityIsNetworked
                      arg4 = arg1
                      arg3 = arg3(arg4)
                      if arg3 then
                        arg3 = GetEntityModel
                        arg4 = arg1
                        -- Beginner: result below is modelHash.
                        arg3 = arg3(arg4)
                        arg4 = IsThisModelABicycle
                        arg5 = arg3
                        arg4 = arg4(arg5)
                        if not arg4 then
                          arg4 = IsThisModelAPlane
                          arg5 = arg3
                          arg4 = arg4(arg5)
                          if not arg4 then
                            arg4 = IsThisModelAHeli
                            arg5 = arg3
                            arg4 = arg4(arg5)
                            if not arg4 then
                              arg4 = IsThisModelABoat
                              arg5 = arg3
                              arg4 = arg4(arg5)
                              if not arg4 then
                                arg4 = CMG
                                arg4 = arg4.getServerNum
                                arg4 = arg4()
                                if 1 == arg4 then
                                  arg4 = CMG
                                  arg4 = arg4.getPlayerBucket
                                  arg4 = arg4()
                                  if 333 ~= arg4 then
                                    arg4 = TriggerServerEvent
                                    arg5 = "fa83d34371"
                                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fa83d34371".
                                    arg4(arg5)
                                    arg4 = CMG
                                    arg4 = arg4.notifyPicture
                                    arg5 = cmgCall9.images
                                    arg5 = arg5.dict
                                    modelValue = cmgCall9.images
                                    modelValue = modelValue.lPlate
                                    workValue10 = cmgCall9.notifications
                                    workValue10 = workValue10.lPlatesAdded
                                    textValue9 = "CMG Learning Centre"
                                    textValue11 = "Licence Services"
                                    arg4(arg5, modelValue, workValue10, textValue9, textValue11)
                                    arg4 = CMG
                                    arg4 = arg4.notifyPicture
                                    arg5 = cmgCall9.images
                                    arg5 = arg5.dict
                                    modelValue = cmgCall9.images
                                    modelValue = modelValue.lPlate
                                    workValue10 = cmgCall9.notifications
                                    workValue10 = workValue10.lPlatesAdded2
                                    textValue9 = "CMG Learning Centre"
                                    textValue11 = "Licence Services"
                                    arg4(arg5, modelValue, workValue10, textValue9, textValue11)
                                    arg4 = Citizen
                                    arg4 = arg4.Wait
                                    arg5 = 2000
                                    arg4(arg5)
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
      end
    end
    elseif 0 ~= arg1 and arg2 then
      arg3 = rageUiCall5
      arg3 = arg3[arg1]
      if arg3 then
        arg3 = TriggerServerEvent
        arg4 = "755cc07672"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "755cc07672".
        arg3(arg4)
        arg3 = Citizen
        arg3 = arg3.Wait
        arg4 = 2000
        arg3(arg4)
      end
    end
    arg3 = Wait
    arg4 = 100
    arg3(arg4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
numberValue2(flag4)
function numberValue2(arg1, arg2, arg3)
  local arg4, arg5
  arg4 = CMG
  arg4 = arg4.elsDoesVehicleHaveConfig
  arg5 = arg1
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = CMG
    arg4 = arg4.elsDoesVehicleHaveLightsEnabled
    arg5 = arg1
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = false
      return arg4
    else
      arg4 = 230.0
      arg4 = arg2 > arg4
      return arg4
    end
  end
  arg4 = arg3 < arg2
  return arg4
end
function flag4(arg1, arg2)
  local arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5, flag6, numberValue5, numberValue6
  arg3 = 1
  arg4 = 2
  arg5 = 1
  for modelValue = arg3, arg4, arg5 do
    workValue10 = false
    textValue9 = Citizen
    textValue9 = textValue9.SetTimeout
    textValue11 = 450
    function textValue13()
      local arg12, arg22
      arg12 = true
      workValue10 = arg12
    end
    textValue9(textValue11, textValue13)
    while not workValue10 do
      textValue9 = DrawSpotLight
      textValue11 = arg1.x
      textValue13 = arg1.y
      vector3Builder = arg1.z
      cmgCall3 = arg2.x
      position = arg2.y
      position2 = arg2.z
      position3 = 221
      flag = 221
      flag2 = 221
      flag3 = 70.0
      flag5 = 70.0
      flag6 = 2.3
      numberValue5 = 25.0
      numberValue6 = 25.6
      textValue9(textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5, flag6, numberValue5, numberValue6)
      textValue9 = Wait
      textValue11 = 0
      textValue9(textValue11)
    end
    textValue9 = Wait
    textValue11 = 100
    textValue9(textValue11)
    modelValue = modelValue + 1
  end
end
function numberValue3(arg1)
  local arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13
  arg2 = cmgCall9.cameras
  arg2 = arg2[arg1]
  arg2.flashed = true
  arg2 = GetOffsetFromEntityInWorldCoords
  arg3 = cmgCall9.cameras
  arg3 = arg3[arg1]
  arg3 = arg3.prop
  arg4 = 0.0
  arg5 = 12.0
  modelValue = 0.5
  arg2 = arg2(arg3, arg4, arg5, modelValue)
  arg3 = GetGroundZFor_3dCoord
  arg4 = arg2.x
  arg5 = arg2.y
  modelValue = arg2.z
  workValue10 = 0
  textValue9 = false
  arg3, arg4 = arg3(arg4, arg5, modelValue, workValue10, textValue9)
  arg5 = vector3
  modelValue = arg2.x
  workValue10 = arg2.y
  textValue9 = arg4
  arg5 = arg5(modelValue, workValue10, textValue9)
  modelValue = vector3
  workValue10 = cmgCall9.cameras
  workValue10 = workValue10[arg1]
  workValue10 = workValue10.coords
  workValue10 = workValue10.x
  textValue9 = cmgCall9.cameras
  textValue9 = textValue9[arg1]
  textValue9 = textValue9.coords
  textValue9 = textValue9.y
  textValue11 = cmgCall9.cameras
  textValue11 = textValue11[arg1]
  textValue11 = textValue11.coords
  textValue11 = textValue11.z
  textValue11 = textValue11 + 3.0
  modelValue = modelValue(workValue10, textValue9, textValue11)
  arg5 = arg5 - modelValue
  modelValue = TriggerServerEvent
  workValue10 = "14d72a10d1"
  textValue9 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "14d72a10d1".
  modelValue(workValue10, textValue9)
  modelValue = Citizen
  modelValue = modelValue.CreateThread
  function workValue10()
    local arg12, arg22, arg32
    arg12 = flag4
    arg22 = cmgCall9.cameras
    arg32 = arg1
    arg22 = arg22[arg32]
    arg22 = arg22.coords
    arg32 = arg5
    arg12(arg22, arg32)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  modelValue(workValue10)
  modelValue = Citizen
  modelValue = modelValue.SetTimeout
  workValue10 = 10000
  function textValue9()
    local arg12, arg22
    arg12 = cmgCall9.cameras
    arg22 = arg1
    arg12 = arg12[arg22]
    arg12.flashed = false
  end
  modelValue(workValue10, textValue9)
  modelValue = PlaySoundFrontend
  workValue10 = -1
  textValue9 = "ScreenFlash"
  textValue11 = "MissionFailedSounds"
  textValue13 = true
  modelValue(workValue10, textValue9, textValue11, textValue13)
  modelValue = AnimpostfxPlay
  workValue10 = "FocusOut"
  textValue9 = 0
  textValue11 = false
  modelValue(workValue10, textValue9, textValue11)
  modelValue = Citizen
  modelValue = modelValue.CreateThread
  function workValue10()
    local arg12, arg22
    arg12 = Wait
    arg22 = 2000
    arg12(arg22)
    arg12 = AnimpostfxStop
    arg22 = "FocusOut"
    arg12(arg22)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  modelValue(workValue10)
end
function numberValue4()
  local arg1, arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = GetPedInVehicleSeat
    arg3 = arg1
    arg4 = -1
    arg2 = arg2(arg3, arg4)
    arg3 = CMG
    arg3 = arg3.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    if arg2 == arg3 then
      arg2 = CMG
      arg2 = arg2.inEvent
      arg2 = arg2()
      if not arg2 then
        arg2 = GetEntitySpeed
        arg3 = arg1
        -- Beginner: result below is speed.
        arg2 = arg2(arg3)
        arg2 = arg2 * 2.236936
        arg3 = CMG
        arg3 = arg3.getPlayerCoords
        -- Beginner: result below is playerCoords.
        arg3 = arg3()
        if nil ~= arg3 then
          arg4 = pairs
          arg5 = cmgCall9.cameras
          arg4, arg5, modelValue, workValue10 = arg4(arg5)
          for textValue9, textValue11 in arg4, arg5, modelValue, workValue10 do
            textValue13 = textValue11.flashed
            if not textValue13 then
              textValue13 = textValue11.coords
              textValue13 = arg3 - textValue13
              textValue13 = #textValue13
              if textValue13 < 15.0 then
                vector3Builder = numberValue2
                cmgCall3 = arg1
                position = arg2
                position2 = textValue11.limit
                vector3Builder = vector3Builder(cmgCall3, position, position2)
                if vector3Builder then
                  vector3Builder = numberValue3
                  cmgCall3 = textValue9
                  vector3Builder(cmgCall3)
                end
              end
            end
          end
        end
      end
    end
  end
end
cmgCall5 = CMG
cmgCall5 = cmgCall5.createThreadOnTick
textValue4 = numberValue4
flag8 = "Speed Camera"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall5(textValue4, flag8)
cmgCall5 = RegisterNetEvent
textValue4 = "fd2dfb4859"
-- Beginner: this function handles network event "fd2dfb4859".
function flag8(arg1, arg2)
  local arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5, flag6, numberValue5, numberValue6
  arg3 = 1
  arg4 = 2
  arg5 = 1
  for modelValue = arg3, arg4, arg5 do
    workValue10 = false
    textValue9 = Citizen
    textValue9 = textValue9.SetTimeout
    textValue11 = 450
    -- Beginner: this function handles network event "fd2dfb4859".
    function textValue13()
      local arg12, arg22
      arg12 = true
      workValue10 = arg12
    end
    textValue9(textValue11, textValue13)
    while not workValue10 do
      textValue9 = DrawSpotLight
      textValue11 = arg1.x
      textValue13 = arg1.y
      vector3Builder = arg1.z
      cmgCall3 = arg2.x
      position = arg2.y
      position2 = arg2.z
      position3 = 221
      flag = 221
      flag2 = 221
      flag3 = 70.0
      flag5 = 70.0
      flag6 = 2.3
      numberValue5 = 25.0
      numberValue6 = 25.6
      textValue9(textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5, flag6, numberValue5, numberValue6)
      textValue9 = Wait
      textValue11 = 0
      textValue9(textValue11)
    end
    textValue9 = Wait
    textValue11 = 100
    textValue9(textValue11)
    modelValue = modelValue + 1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fd2dfb4859".
cmgCall5(textValue4, flag8)
cmgCall5 = RegisterNetEvent
textValue4 = "2d177faeb8"
-- Beginner: this function handles network event "2d177faeb8".
function flag8(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.getObjectId
  arg3 = arg1
  arg4 = "deletePlate"
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg3 = DoesEntityExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = DeleteEntity
      arg4 = arg2
      -- Beginner: Delete a GTA entity.
      arg3(arg4)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2d177faeb8".
cmgCall5(textValue4, flag8)
function cmgCall5(arg1)
  local arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5, flag6, numberValue5, numberValue6, flag7
  arg2 = rageUiCall5
  arg2 = arg2[arg1]
  if arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = -1652494567
  arg2 = arg2(arg3)
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  arg4 = CreateObject
  arg5 = arg2
  modelValue = arg3.x
  workValue10 = arg3.y
  textValue9 = arg3.z
  textValue11 = false
  textValue13 = false
  vector3Builder = false
  -- Beginner: result below is objectEntity.
  arg4 = arg4(arg5, modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder)
  arg5 = CreateObject
  modelValue = arg2
  workValue10 = arg3.x
  textValue9 = arg3.y
  textValue11 = arg3.z
  textValue13 = false
  vector3Builder = false
  cmgCall3 = false
  -- Beginner: result below is objectEntity.
  arg5 = arg5(modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3)
  while true do
    modelValue = DoesEntityExist
    workValue10 = arg4
    modelValue = modelValue(workValue10)
    if modelValue then
      break
    end
    modelValue = DoesEntityExist
    workValue10 = arg5
    modelValue = modelValue(workValue10)
    if modelValue then
      break
    end
    modelValue = Wait
    workValue10 = 0
    modelValue(workValue10)
  end
  modelValue = SetModelAsNoLongerNeeded
  workValue10 = arg2
  modelValue(workValue10)
  modelValue = GetEntityBoneIndexByName
  workValue10 = arg1
  textValue9 = "windscreen"
  modelValue = modelValue(workValue10, textValue9)
  workValue10 = AttachEntityToEntity
  textValue9 = arg4
  textValue11 = arg1
  textValue13 = modelValue
  vector3Builder = 0.0
  cmgCall3 = 0.3
  position = -0.1
  position2 = -25.0
  position3 = 0.0
  flag = 180.0
  flag2 = true
  flag3 = true
  flag5 = false
  flag6 = true
  numberValue5 = 0
  numberValue6 = true
  -- Beginner: Attach one entity to another entity.
  workValue10(textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5, flag6, numberValue5, numberValue6)
  workValue10 = GetEntityBoneIndexByName
  textValue9 = arg1
  textValue11 = "windscreen_r"
  workValue10 = workValue10(textValue9, textValue11)
  textValue9 = AttachEntityToEntity
  textValue11 = arg5
  textValue13 = arg1
  vector3Builder = workValue10
  cmgCall3 = 0.0
  position = 0.2
  position2 = -0.1
  position3 = -10.0
  flag = 0.0
  flag2 = 0.0
  flag3 = true
  flag5 = true
  flag6 = false
  numberValue5 = true
  numberValue6 = 0
  flag7 = true
  textValue9(textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5, flag6, numberValue5, numberValue6, flag7)
  textValue9 = rageUiCall5
  textValue11 = {}
  textValue13 = arg4
  vector3Builder = arg5
  textValue11[1] = textValue13
  textValue11[2] = vector3Builder
  textValue9[arg1] = textValue11
end
function textValue4(arg1)
  local arg2, arg3, arg4
  arg2 = rageUiCall5
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = DeleteEntity
    arg4 = arg2[1]
    -- Beginner: Delete a GTA entity.
    arg3(arg4)
    arg3 = DeleteEntity
    arg4 = arg2[2]
    arg3(arg4)
    arg3 = rageUiCall5
    arg3[arg1] = nil
  end
end
flag8 = AddStateBagChangeHandler
flag9 = "isLearner"
flag10 = nil
function workValue6(arg1, arg2, arg3)
  local arg4, arg5, modelValue, workValue10, textValue9
  arg4 = tonumber
  arg5 = stringsplit
  modelValue = arg1
  workValue10 = ":"
  arg5 = arg5(modelValue, workValue10)
  arg5 = arg5[2]
  arg4 = arg4(arg5)
  if not arg4 then
    return
  end
  arg5 = 0
  while true do
    if arg5 > 25 then
      return
    else
      modelValue = NetworkDoesEntityExistWithNetworkId
      workValue10 = arg4
      modelValue = modelValue(workValue10)
      if modelValue then
        modelValue = NetworkGetEntityFromNetworkId
        workValue10 = arg4
        modelValue = modelValue(workValue10)
        if 0 ~= modelValue then
          if arg3 then
            workValue10 = cmgCall5
            textValue9 = modelValue
            -- Beginner: Register a network event handler that the server/other clients can trigger.
            workValue10(textValue9)
            break
          end
          workValue10 = textValue4
          textValue9 = modelValue
          workValue10(textValue9)
          break
        end
      end
    end
    arg5 = arg5 + 1
    modelValue = Citizen
    modelValue = modelValue.Wait
    workValue10 = 200
    modelValue(workValue10)
  end
end
flag8(flag9, flag10, workValue6)
flag8 = Citizen
flag8 = flag8.CreateThread
function flag9()
  local arg1, arg2, arg3, arg4, arg5, modelValue, workValue10, textValue9
  while true do
    arg1 = pairs
    arg2 = rageUiCall5
    arg1, arg2, arg3, arg4 = arg1(arg2)
    for arg5, modelValue in arg1, arg2, arg3, arg4 do
      workValue10 = DoesEntityExist
      textValue9 = arg5
      workValue10 = workValue10(textValue9)
      if not workValue10 then
        workValue10 = DeleteEntity
        textValue9 = modelValue[1]
        -- Beginner: Delete a GTA entity.
        workValue10(textValue9)
        workValue10 = DeleteEntity
        textValue9 = modelValue[2]
        workValue10(textValue9)
        workValue10 = rageUiCall5
        workValue10[arg5] = nil
      end
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
flag8(flag9)
flag8 = CMG
flag8 = flag8.DVSA
function flag9(arg1, arg2, arg3, arg4, arg5)
  local modelValue, workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5
  modelValue = CMG
  modelValue = modelValue.loadModel
  workValue10 = arg1
  -- Beginner: Request/load a GTA model before spawning or applying it.
  modelValue(workValue10)
  modelValue = CMG
  modelValue = modelValue.spawnVehicle
  workValue10 = arg1
  textValue9 = arg3.x
  textValue11 = arg3.y
  textValue13 = arg3.z
  vector3Builder = arg5
  cmgCall3 = false
  position = false
  modelValue = modelValue(workValue10, textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position)
  while true do
    workValue10 = DoesEntityExist
    textValue9 = modelValue
    workValue10 = workValue10(textValue9)
    if workValue10 then
      break
    end
    workValue10 = Wait
    textValue9 = 0
    workValue10(textValue9)
  end
  workValue10 = SetModelAsNoLongerNeeded
  textValue9 = arg1
  workValue10(textValue9)
  workValue10 = CMG
  workValue10 = workValue10.loadModel
  textValue9 = arg2
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workValue10(textValue9)
  workValue10 = CreatePed
  textValue9 = 4
  textValue11 = arg2
  textValue13 = arg3.x
  vector3Builder = arg3.y
  cmgCall3 = arg3.z
  position = arg5
  position2 = false
  position3 = false
  -- Beginner: result below is pedEntity.
  workValue10 = workValue10(textValue9, textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3)
  while true do
    textValue9 = DoesEntityExist
    textValue11 = workValue10
    textValue9 = textValue9(textValue11)
    if textValue9 then
      break
    end
    textValue9 = Wait
    textValue11 = 0
    textValue9(textValue11)
  end
  textValue9 = SetModelAsNoLongerNeeded
  textValue11 = arg2
  textValue9(textValue11)
  textValue9 = SetEntityInvincible
  textValue11 = workValue10
  textValue13 = true
  textValue9(textValue11, textValue13)
  textValue9 = SetPedAlertness
  textValue11 = workValue10
  textValue13 = 0.0
  textValue9(textValue11, textValue13)
  textValue9 = TaskWarpPedIntoVehicle
  textValue11 = workValue10
  textValue13 = modelValue
  vector3Builder = -1
  textValue9(textValue11, textValue13, vector3Builder)
  textValue9 = SetVehicleEngineOn
  textValue11 = modelValue
  textValue13 = true
  vector3Builder = true
  cmgCall3 = false
  textValue9(textValue11, textValue13, vector3Builder, cmgCall3)
  while true do
    textValue9 = IsPedInVehicle
    textValue11 = workValue10
    textValue13 = modelValue
    vector3Builder = false
    textValue9 = textValue9(textValue11, textValue13, vector3Builder)
    if textValue9 then
      break
    end
    textValue9 = Wait
    textValue11 = 0
    textValue9(textValue11)
  end
  textValue9 = TaskVehicleDriveToCoord
  textValue11 = workValue10
  textValue13 = modelValue
  vector3Builder = arg4.x
  cmgCall3 = arg4.y
  position = arg4.z
  position2 = 30.0
  position3 = 1.0
  flag = arg1
  flag2 = 786472
  flag3 = 1.0
  flag5 = 1
  textValue9(textValue11, textValue13, vector3Builder, cmgCall3, position, position2, position3, flag, flag2, flag3, flag5)
  textValue9 = Citizen
  textValue9 = textValue9.SetTimeout
  textValue11 = 20000
  function textValue13()
    local arg12, arg22
    arg12 = DoesEntityExist
    arg22 = modelValue
    arg12 = arg12(arg22)
    if arg12 then
      arg12 = DeleteEntity
      arg22 = modelValue
      -- Beginner: Delete a GTA entity.
      arg12(arg22)
    end
    arg12 = DoesEntityExist
    arg22 = workValue10
    arg12 = arg12(arg22)
    if arg12 then
      arg12 = DeleteEntity
      arg22 = workValue10
      arg12(arg22)
    end
  end
  textValue9(textValue11, textValue13)
end
flag8.makeVehicleCrash = flag9
flag8 = CMG
flag8 = flag8.DVSA
function flag9(arg1)
  local arg2, arg3
  arg2 = SendNUIMessage
  arg3 = {}
  arg3.transactionType = arg1
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg2(arg3)
end
flag8.dvsaSound = flag9
flag8 = RegisterNetEvent
flag9 = "15bdccee8a"
-- Beginner: this function handles network event "15bdccee8a".
function flag10(arg1)
  local arg2
  rageUiCall6 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "15bdccee8a".
flag8(flag9, flag10)
flag8 = AddEventHandler
flag9 = "919aefda0c"
-- Beginner: this function runs when client event "919aefda0c" fires.
function flag10(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = rageUiCall6
  if arg2 then
    arg2 = rageUiCall6
    if arg1 ~= arg2 then
      arg2 = textValue3
      arg2()
      arg2 = numberValue
      arg3 = false
      arg4 = ""
      arg5 = ""
      arg2(arg3, arg4, arg5)
      arg2 = notify
      arg3 = "~r~Test cancelled due to unexpected change in bucket."
      -- Beginner: Show a notification to the player.
      arg2(arg3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "919aefda0c".
flag8(flag9, flag10)
flag8 = CMG
flag8 = flag8.registerDevMenuItems
flag9 = "DVSA"
function flag10()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Quick Start Driving Test"
  arg3 = "Starts the driving test instantly (no payment, skips intro dialogue)."
  arg4 = true
  function arg5(arg12, arg22, arg32)
    local dataTable2, rageUiCall4
    if arg32 then
      dataTable2 = TriggerServerEvent
      rageUiCall4 = "fa5a2f254a"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fa5a2f254a".
      dataTable2(rageUiCall4)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, arg4, arg5)
end
flag8(flag9, flag10)