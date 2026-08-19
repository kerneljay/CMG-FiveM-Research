--[[
    LEVEL 1 BEGINNER GUIDE — Dvsa
    ==================================

    File: cmg/prod/client/misc/cl_dvsa.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Dvsa feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 88
      * Background threads: 0
      * Always-running loops: 25
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
local cmgOperation, dataCollection, text5, rageUiOperation3, text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9
cmgOperation = TriggerEvent
dataCollection = "chat:addSuggestion"
text5 = "/dl"
rageUiOperation3 = "Manage your driving licence and book a test"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
cmgOperation(dataCollection, text5, rageUiOperation3)
cmgOperation = CMG
dataCollection = {}
cmgOperation.DVSA = dataCollection
cmgOperation = RMenu
cmgOperation = cmgOperation.Add
dataCollection = "dvsa"
text5 = "main"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateMenu
text6 = ""
cmgOperation7 = "CMG Learning Centre"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuHeight
rageUiOperation6 = rageUiOperation6()
rageUiOperation7 = "dvsa_banner"
cmgOperation9 = "dvsa_banner"
rageUiOperation3, text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9 = rageUiOperation3(text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9)
cmgOperation(dataCollection, text5, rageUiOperation3, text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9)
cmgOperation = RMenu
cmgOperation = cmgOperation.Add
dataCollection = "dvsa"
text5 = "surrenderconfirm"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateSubMenu
text6 = RMenu
cmgOperation7 = text6
text6 = text6.Get
rageUiOperation5 = "dvsa"
rageUiOperation6 = "main"
-- Beginner: result below is menu.
text6 = text6(cmgOperation7, rageUiOperation5, rageUiOperation6)
cmgOperation7 = ""
rageUiOperation5 = "~b~Surrender Licence"
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuWidth
rageUiOperation6 = rageUiOperation6()
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuHeight
rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9 = rageUiOperation7()
rageUiOperation3, text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9 = rageUiOperation3(text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9)
cmgOperation(dataCollection, text5, rageUiOperation3, text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9)
cmgOperation = RMenu
cmgOperation = cmgOperation.Add
dataCollection = "dvsa"
text5 = "licence"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateSubMenu
text6 = RMenu
cmgOperation7 = text6
text6 = text6.Get
rageUiOperation5 = "dvsa"
rageUiOperation6 = "main"
-- Beginner: result below is menu.
text6 = text6(cmgOperation7, rageUiOperation5, rageUiOperation6)
cmgOperation7 = ""
rageUiOperation5 = "~b~Driving Licence"
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuWidth
rageUiOperation6 = rageUiOperation6()
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuHeight
rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9 = rageUiOperation7()
rageUiOperation3, text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9 = rageUiOperation3(text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9)
cmgOperation(dataCollection, text5, rageUiOperation3, text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9)
cmgOperation = RMenu
cmgOperation = cmgOperation.Add
dataCollection = "dvsa"
text5 = "tests"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateSubMenu
text6 = RMenu
cmgOperation7 = text6
text6 = text6.Get
rageUiOperation5 = "dvsa"
rageUiOperation6 = "main"
-- Beginner: result below is menu.
text6 = text6(cmgOperation7, rageUiOperation5, rageUiOperation6)
cmgOperation7 = ""
rageUiOperation5 = "~b~Driving Tests"
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuWidth
rageUiOperation6 = rageUiOperation6()
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuHeight
rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9 = rageUiOperation7()
rageUiOperation3, text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9 = rageUiOperation3(text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9)
cmgOperation(dataCollection, text5, rageUiOperation3, text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9)
cmgOperation = RMenu
cmgOperation = cmgOperation.Add
dataCollection = "dvsa"
text5 = "alerts"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateSubMenu
text6 = RMenu
cmgOperation7 = text6
text6 = text6.Get
rageUiOperation5 = "dvsa"
rageUiOperation6 = "main"
-- Beginner: result below is menu.
text6 = text6(cmgOperation7, rageUiOperation5, rageUiOperation6)
cmgOperation7 = ""
rageUiOperation5 = "~b~Alerts"
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuWidth
rageUiOperation6 = rageUiOperation6()
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuHeight
rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9 = rageUiOperation7()
rageUiOperation3, text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9 = rageUiOperation3(text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9)
cmgOperation(dataCollection, text5, rageUiOperation3, text6, cmgOperation7, rageUiOperation5, rageUiOperation6, rageUiOperation7, cmgOperation9, cmgOperation2, workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9)
cmgOperation = {}
dataCollection = {}
text5 = {}
rageUiOperation3 = {}
text6 = false
cmgOperation7 = false
rageUiOperation5 = {}
rageUiOperation6 = nil
rageUiOperation7 = {}
rageUiOperation7.active = false
rageUiOperation7.ped = 0
rageUiOperation7.vehicle = 0
rageUiOperation7.parkingSpace = 0
rageUiOperation7.route = 0
rageUiOperation7.waypoint = 0
rageUiOperation7.blip = 0
rageUiOperation7.serious = 0
rageUiOperation7.minors = 0
cmgOperation9 = {}
rageUiOperation7.minorsReason = cmgOperation9
cmgOperation9 = {}
rageUiOperation7.seriousReason = cmgOperation9
rageUiOperation7.subtitle = ""
cmgOperation9 = CMG
cmgOperation9 = cmgOperation9.loadModule
cmgOperation2 = "cfg/cfg_dvsa"
-- Beginner: result below is config.
cmgOperation9 = cmgOperation9(cmgOperation2)
cmgOperation2 = tCMG
cmgOperation2 = cmgOperation2.addMarker
workingValue = cmgOperation9.test
workingValue = workingValue.reception
workingValue = workingValue.x
workingValue3 = cmgOperation9.test
workingValue3 = workingValue3.reception
workingValue3 = workingValue3.y
workingValue5 = cmgOperation9.test
workingValue5 = workingValue5.reception
workingValue5 = workingValue5.z
workingValue5 = workingValue5 - 0.96
text3 = 1.2
number = 1.2
cmgOperation4 = 1.2
number2 = 0
stateFlag4 = 255
number3 = 125
number4 = 125
cmgOperation5 = 50
text4 = 27
stateFlag8 = true
stateFlag9 = false
stateFlag10 = false
workingValue6 = nil
workingValue7 = nil
number7 = 0.0
number8 = 0.0
number9 = 0.0
-- Beginner: Create a world marker.
cmgOperation2(workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4, number3, number4, cmgOperation5, text4, stateFlag8, stateFlag9, stateFlag10, workingValue6, workingValue7, number7, number8, number9)
cmgOperation2 = tCMG
cmgOperation2 = cmgOperation2.addBlip
workingValue = cmgOperation9.test
workingValue = workingValue.reception
workingValue = workingValue.x
workingValue3 = cmgOperation9.test
workingValue3 = workingValue3.reception
workingValue3 = workingValue3.y
workingValue5 = cmgOperation9.test
workingValue5 = workingValue5.reception
workingValue5 = workingValue5.z
text3 = 523
number = 47
cmgOperation4 = "CMG Learning Centre"
number2 = 1.0
stateFlag4 = false
-- Beginner: Create a minimap blip.
cmgOperation2(workingValue, workingValue3, workingValue5, text3, number, cmgOperation4, number2, stateFlag4)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
  localValue1 = true
  cmgOperation7 = localValue1
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "licence"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "tests"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "alerts"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = false
  cmgOperation7 = localValue1
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2
end
workingValue5 = CMG
workingValue5 = workingValue5.createArea
text3 = "dvsaTestCentre_"
number = cmgOperation9.test
number = number.reception
cmgOperation4 = 1.5
number2 = 6
stateFlag4 = cmgOperation2
number3 = workingValue
number4 = workingValue3
-- Beginner: Create an interaction area around a world position.
workingValue5(text3, number, cmgOperation4, number2, stateFlag4, number3, number4)
workingValue5 = RegisterNetEvent
text3 = "47b6267afd"
-- Beginner: this function handles network event "47b6267afd".

-- === HELPER FUNCTION (decompiler name: number; parameters: localValue1, localValue2, localValue3, localValue4) ===
function number(localValue1, localValue2, localValue3, localValue4)
  local localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5, stateFlag6, number5
  cmgOperation = localValue1
  dataCollection = localValue2
  text5 = localValue3
  rageUiOperation3 = localValue4
  localValue5 = pairs
  modelValue = cmgOperation9.peds
  localValue5, modelValue, workingValue10, text9 = localValue5(modelValue)
  for text11, text13 in localValue5, modelValue, workingValue10, text9 do
    createVector3 = text13.eup
    if not createVector3 then
      createVector3 = vector3
      cmgOperation3 = text13.coords
      cmgOperation3 = cmgOperation3.x
      position = text13.coords
      position = position.y
      position2 = text13.coords
      position2 = position2.z
      position2 = position2 - 1.02
      createVector3 = createVector3(cmgOperation3, position, position2)
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.createDynamicPed
      position = text13.model
      position2 = createVector3
      position3 = text13.heading
      stateFlag = true
      stateFlag2 = "mini@strip_club@idles@bouncer@base"
      stateFlag3 = "base"
      stateFlag5 = 30
      stateFlag6 = false

      -- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
      function number5()
        local localValue12, localValue22
      end
      cmgOperation3(position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5, stateFlag6, number5)
    end
  end
  localValue5 = CMG
  localValue5 = localValue5.loadModel
  modelValue = cmgOperation9.models
  modelValue = modelValue.camera
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue5(modelValue)
  localValue5 = pairs
  modelValue = cmgOperation9.cameras
  localValue5, modelValue, workingValue10, text9 = localValue5(modelValue)
  for text11, text13 in localValue5, modelValue, workingValue10, text9 do
    createVector3 = cmgOperation9.cameras
    createVector3 = createVector3[text11]
    cmgOperation3 = CreateObject
    position = cmgOperation9.models
    position = position.camera
    position2 = text13.coords
    position2 = position2.x
    position3 = text13.coords
    position3 = position3.y
    stateFlag = text13.coords
    stateFlag = stateFlag.z
    stateFlag2 = false
    stateFlag3 = false
    stateFlag5 = false
    -- Beginner: result below is objectEntity.
    cmgOperation3 = cmgOperation3(position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5)
    createVector3.prop = cmgOperation3
    while true do
      createVector3 = DoesEntityExist
      cmgOperation3 = cmgOperation9.cameras
      cmgOperation3 = cmgOperation3[text11]
      cmgOperation3 = cmgOperation3.prop
      createVector3 = createVector3(cmgOperation3)
      if createVector3 then
        break
      end
      createVector3 = Wait
      cmgOperation3 = 0
      createVector3(cmgOperation3)
    end
    createVector3 = PlaceObjectOnGroundProperly
    cmgOperation3 = cmgOperation9.cameras
    cmgOperation3 = cmgOperation3[text11]
    cmgOperation3 = cmgOperation3.prop
    createVector3(cmgOperation3)
    createVector3 = SetEntityHeading
    cmgOperation3 = cmgOperation9.cameras
    cmgOperation3 = cmgOperation3[text11]
    cmgOperation3 = cmgOperation3.prop
    position = text13.heading
    -- Beginner: Change the direction an entity is facing.
    createVector3(cmgOperation3, position)
    createVector3 = FreezeEntityPosition
    cmgOperation3 = cmgOperation9.cameras
    cmgOperation3 = cmgOperation3[text11]
    cmgOperation3 = cmgOperation3.prop
    position = true
    -- Beginner: Freeze or unfreeze an entity in place.
    createVector3(cmgOperation3, position)
    createVector3 = cmgOperation9.cameras
    createVector3 = createVector3[text11]
    createVector3.flashed = false
    createVector3 = cmgOperation9.cameras
    createVector3 = createVector3[text11]
    cmgOperation3 = GetOffsetFromEntityInWorldCoords
    position = cmgOperation9.cameras
    position = position[text11]
    position = position.prop
    position2 = 0.0
    position3 = 7.0
    stateFlag = 0.5
    cmgOperation3 = cmgOperation3(position, position2, position3, stateFlag)
    createVector3.offSet = cmgOperation3
    createVector3 = GetGroundZFor_3dCoord
    cmgOperation3 = cmgOperation9.cameras
    cmgOperation3 = cmgOperation3[text11]
    cmgOperation3 = cmgOperation3.offSet
    cmgOperation3 = cmgOperation3.x
    position = cmgOperation9.cameras
    position = position[text11]
    position = position.offSet
    position = position.y
    position2 = cmgOperation9.cameras
    position2 = position2[text11]
    position2 = position2.offSet
    position2 = position2.z
    position3 = 0
    stateFlag = false
    createVector3, cmgOperation3 = createVector3(cmgOperation3, position, position2, position3, stateFlag)
    position = cmgOperation9.cameras
    position = position[text11]
    position2 = vector3
    position3 = cmgOperation9.cameras
    position3 = position3[text11]
    position3 = position3.offSet
    position3 = position3.x
    stateFlag = cmgOperation9.cameras
    stateFlag = stateFlag[text11]
    stateFlag = stateFlag.offSet
    stateFlag = stateFlag.y
    stateFlag2 = cmgOperation3 + 0.2
    position2 = position2(position3, stateFlag, stateFlag2)
    position.offSet = position2
  end
  localValue5 = SetModelAsNoLongerNeeded
  modelValue = cmgOperation9.models
  modelValue = modelValue.camera
  localValue5(modelValue)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "47b6267afd".
workingValue5(text3, number)
workingValue5 = RegisterNetEvent
text3 = "c32c90c683"
-- Beginner: this function handles network event "c32c90c683".

-- === HELPER FUNCTION (decompiler name: number; parameters: localValue1, localValue2, localValue3, localValue4) ===
function number(localValue1, localValue2, localValue3, localValue4)
  if nil ~= localValue1 then
    cmgOperation = localValue1
  end
  if nil ~= localValue2 then
    dataCollection = localValue2
  end
  if nil ~= localValue3 then
    text5 = localValue3
  end
  if nil ~= localValue4 then
    rageUiOperation3 = localValue4
  end
end
workingValue5(text3, number)
workingValue5 = RegisterNetEvent
text3 = "cb3b7b0160"
-- Beginner: this function handles network event "cb3b7b0160".

-- === HELPER FUNCTION (decompiler name: number; parameters: localValue1, localValue2, localValue3) ===
function number(localValue1, localValue2, localValue3)
  local localValue4, localValue5
  localValue4 = notify
  localValue5 = localValue3
  -- Beginner: Show a notification to the player.
  localValue4(localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cb3b7b0160".
workingValue5(text3, number)
workingValue5 = false
text3 = CMG
-- Beginner: this function handles network event "cb3b7b0160".

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2
  localValue1 = rageUiOperation7
  return localValue1
end
text3.getCurrentDVSATest = number
text3 = RegisterNetEvent
number = "f395e7a334"
-- Beginner: this function handles network event "f395e7a334".

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2
  if localValue1 then
    localValue4 = rageUiOperation7.active
    if localValue4 then
      localValue4 = notify
      localValue5 = "~r~A driving test is already in progress."
      -- Beginner: Show a notification to the player.
      localValue4(localValue5)
      return
    end
    localValue4 = {}
    localValue4.active = false
    localValue4.ped = 0
    localValue4.vehicle = 0
    localValue4.parkingSpace = 0
    localValue4.route = 0
    localValue4.waypoint = 0
    localValue4.blip = 0
    localValue4.serious = 0
    localValue4.minors = 0
    localValue5 = {}
    localValue4.minorsReason = localValue5
    localValue5 = {}
    localValue4.seriousReason = localValue5
    localValue4.subtitle = ""
    localValue5 = true == localValue3
    localValue4.quick = localValue5
    rageUiOperation7 = localValue4
    rageUiOperation7.active = true
    rageUiOperation7.parkingSpace = localValue2
    localValue4 = false
    workingValue5 = localValue4
    rageUiOperation7.serious = 0
    rageUiOperation7.seriousIssued = false
    rageUiOperation7.minors = 0
    localValue4 = nil
    rageUiOperation6 = localValue4
    localValue4 = TriggerServerEvent
    localValue5 = "90aa93a379"
    modelValue = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90aa93a379".
    localValue4(localValue5, modelValue)
    localValue4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue4 = localValue4()
    localValue4 = localValue4 + 10000
    while true do
      localValue5 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue5 = localValue5()
      if not (localValue4 > localValue5) then
        break
      end
      localValue5 = rageUiOperation6
      if nil ~= localValue5 then
        localValue5 = CMG
        localValue5 = localValue5.getPlayerBucket
        localValue5 = localValue5()
        modelValue = rageUiOperation6
        if localValue5 == modelValue then
          break
        end
      end
      localValue5 = Wait
      modelValue = 0
      localValue5(modelValue)
    end
    localValue5 = rageUiOperation6
    if nil ~= localValue5 then
      localValue5 = CMG
      localValue5 = localValue5.getPlayerBucket
      localValue5 = localValue5()
      modelValue = rageUiOperation6
      if localValue5 == modelValue then
        goto continueAtStep90
      end
    end
    rageUiOperation7.active = false
    rageUiOperation7.requested = false
    localValue5 = CMG
    localValue5 = localValue5.notifyPicture
    modelValue = cmgOperation9.images
    modelValue = modelValue.dict
    workingValue10 = cmgOperation9.images
    workingValue10 = workingValue10.govLarge
    text9 = "We could not prepare your test, please try again."
    text11 = "Marcus"
    text13 = "Driving Examiner"
    localValue5(modelValue, workingValue10, text9, text11, text13)
    return
    ::continueAtStep90::
    localValue5 = CMG
    localValue5 = localValue5.spawnVehicle
    modelValue = cmgOperation9.test
    modelValue = modelValue.modelName
    workingValue10 = cmgOperation9.test
    workingValue10 = workingValue10.parkingSpaces
    workingValue10 = workingValue10[localValue2]
    workingValue10 = workingValue10.coords
    workingValue10 = workingValue10.x
    text9 = cmgOperation9.test
    text9 = text9.parkingSpaces
    text9 = text9[localValue2]
    text9 = text9.coords
    text9 = text9.y
    text11 = cmgOperation9.test
    text11 = text11.parkingSpaces
    text11 = text11[localValue2]
    text11 = text11.coords
    text11 = text11.z
    text13 = cmgOperation9.test
    text13 = text13.parkingSpaces
    text13 = text13[localValue2]
    text13 = text13.heading
    createVector3 = true
    cmgOperation3 = false
    localValue5 = localValue5(modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3)
    rageUiOperation7.vehicle = localValue5
    localValue5 = DoesEntityExist
    modelValue = rageUiOperation7.vehicle
    localValue5 = localValue5(modelValue)
    if not localValue5 then
      rageUiOperation7.active = false
      rageUiOperation7.requested = false
      localValue5 = TriggerServerEvent
      modelValue = "90aa93a379"
      workingValue10 = true
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90aa93a379".
      localValue5(modelValue, workingValue10)
      localValue5 = CMG
      localValue5 = localValue5.notifyPicture
      modelValue = cmgOperation9.images
      modelValue = modelValue.dict
      workingValue10 = cmgOperation9.images
      workingValue10 = workingValue10.govLarge
      text9 = "We could not prepare your test vehicle, please try again."
      text11 = "Marcus"
      text13 = "Driving Examiner"
      localValue5(modelValue, workingValue10, text9, text11, text13)
      return
    end
    localValue5 = FreezeEntityPosition
    modelValue = rageUiOperation7.vehicle
    workingValue10 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue5(modelValue, workingValue10)
    localValue5 = SetVehicleDirtLevel
    modelValue = rageUiOperation7.vehicle
    workingValue10 = 0
    localValue5(modelValue, workingValue10)
    localValue5 = SetVehicleRadioEnabled
    modelValue = rageUiOperation7.vehicle
    workingValue10 = false
    localValue5(modelValue, workingValue10)
    localValue5 = CMG
    localValue5 = localValue5.loadModel
    modelValue = cmgOperation9.test
    modelValue = modelValue.examinerModel
    localValue5 = localValue5(modelValue)
    modelValue = rageUiOperation7.quick
    if modelValue then
      modelValue = CreatePed
      workingValue10 = 26
      text9 = localValue5
      text11 = cmgOperation9.test
      text11 = text11.parkingSpaces
      text11 = text11[localValue2]
      text11 = text11.coords
      text11 = text11.x
      text13 = cmgOperation9.test
      text13 = text13.parkingSpaces
      text13 = text13[localValue2]
      text13 = text13.coords
      text13 = text13.y
      createVector3 = cmgOperation9.test
      createVector3 = createVector3.parkingSpaces
      createVector3 = createVector3[localValue2]
      createVector3 = createVector3.coords
      createVector3 = createVector3.z
      cmgOperation3 = cmgOperation9.test
      cmgOperation3 = cmgOperation3.parkingSpaces
      cmgOperation3 = cmgOperation3[localValue2]
      cmgOperation3 = cmgOperation3.heading
      position = false
      position2 = true
      -- Beginner: result below is pedEntity.
      modelValue = modelValue(workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2)
      rageUiOperation7.ped = modelValue
      while true do
        modelValue = DoesEntityExist
        workingValue10 = rageUiOperation7.ped
        modelValue = modelValue(workingValue10)
        if modelValue then
          break
        end
        modelValue = Wait
        workingValue10 = 0
        modelValue(workingValue10)
      end
      modelValue = SetModelAsNoLongerNeeded
      workingValue10 = localValue5
      modelValue(workingValue10)
      modelValue = SetEntityCanBeDamaged
      workingValue10 = rageUiOperation7.ped
      text9 = false
      modelValue(workingValue10, text9)
      modelValue = SetPedAsEnemy
      workingValue10 = rageUiOperation7.ped
      text9 = false
      modelValue(workingValue10, text9)
      modelValue = SetBlockingOfNonTemporaryEvents
      workingValue10 = rageUiOperation7.ped
      text9 = true
      modelValue(workingValue10, text9)
      modelValue = SetPedCanRagdollFromPlayerImpact
      workingValue10 = rageUiOperation7.ped
      text9 = false
      modelValue(workingValue10, text9)
      modelValue = TaskWarpPedIntoVehicle
      workingValue10 = rageUiOperation7.ped
      text9 = rageUiOperation7.vehicle
      text11 = 0
      modelValue(workingValue10, text9, text11)
      modelValue = SetVehicleHasMutedSirens
      workingValue10 = rageUiOperation7.vehicle
      text9 = true
      modelValue(workingValue10, text9)
      modelValue = SetVehicleLightsMode
      workingValue10 = rageUiOperation7.vehicle
      text9 = 0
      modelValue(workingValue10, text9)
      modelValue = CMG
      modelValue = modelValue.DVSA
      modelValue = modelValue.initialMoveOff
      modelValue()
      return
    end
    modelValue = CMG
    modelValue = modelValue.DVSA
    modelValue = modelValue.cameraTransition
    workingValue10 = cmgOperation9.test
    workingValue10 = workingValue10.parkingSpaces
    workingValue10 = workingValue10[localValue2]
    workingValue10 = workingValue10.coords
    modelValue(workingValue10)
    modelValue = CreatePed
    workingValue10 = 26
    text9 = localValue5
    text11 = 218.611
    text13 = -1390.879
    createVector3 = 30.57727
    cmgOperation3 = 321.37
    position = false
    position2 = true
    -- Beginner: result below is pedEntity.
    modelValue = modelValue(workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2)
    rageUiOperation7.ped = modelValue
    while true do
      modelValue = DoesEntityExist
      workingValue10 = rageUiOperation7.ped
      modelValue = modelValue(workingValue10)
      if modelValue then
        break
      end
      modelValue = Wait
      workingValue10 = 0
      modelValue(workingValue10)
    end
    modelValue = SetModelAsNoLongerNeeded
    workingValue10 = localValue5
    modelValue(workingValue10)
    modelValue = SetEntityCanBeDamaged
    workingValue10 = rageUiOperation7.ped
    text9 = false
    modelValue(workingValue10, text9)
    modelValue = SetPedAsEnemy
    workingValue10 = rageUiOperation7.ped
    text9 = false
    modelValue(workingValue10, text9)
    modelValue = SetBlockingOfNonTemporaryEvents
    workingValue10 = rageUiOperation7.ped
    text9 = true
    modelValue(workingValue10, text9)
    modelValue = SetPedCanRagdollFromPlayerImpact
    workingValue10 = rageUiOperation7.ped
    text9 = false
    modelValue(workingValue10, text9)
    modelValue = TaskGoToEntity
    workingValue10 = rageUiOperation7.ped
    text9 = rageUiOperation7.vehicle
    text11 = 10.0
    text13 = 2.0
    createVector3 = 5.0
    cmgOperation3 = 0
    position = 0
    modelValue(workingValue10, text9, text11, text13, createVector3, cmgOperation3, position)
    modelValue = TaskGoToCoordAnyMeans
    workingValue10 = rageUiOperation7.ped
    text9 = cmgOperation9.test
    text9 = text9.parkingSpaces
    text9 = text9[localValue2]
    text9 = text9.coords
    text9 = text9.x
    text11 = cmgOperation9.test
    text11 = text11.parkingSpaces
    text11 = text11[localValue2]
    text11 = text11.coords
    text11 = text11.y
    text13 = cmgOperation9.test
    text13 = text13.parkingSpaces
    text13 = text13[localValue2]
    text13 = text13.coords
    text13 = text13.z
    createVector3 = 6.0
    cmgOperation3 = false
    position = false
    position2 = 786603
    position3 = 1.0
    modelValue(workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3)
    modelValue = SetVehicleEngineOn
    workingValue10 = rageUiOperation7.vehicle
    text9 = false
    text11 = true
    text13 = true
    modelValue(workingValue10, text9, text11, text13)
    modelValue = SetVehicleHasMutedSirens
    workingValue10 = rageUiOperation7.vehicle
    text9 = true
    modelValue(workingValue10, text9)
    modelValue = SetVehicleLightsMode
    workingValue10 = rageUiOperation7.vehicle
    text9 = 0
    modelValue(workingValue10, text9)
    modelValue = Wait
    workingValue10 = 9000
    modelValue(workingValue10)
    modelValue = CMG
    modelValue = modelValue.DVSA
    modelValue = modelValue.dvsaSound
    workingValue10 = "welcome"
    modelValue(workingValue10)
    rageUiOperation7.subtitle = "Hey! I'm ~y~Marcus"
    modelValue = CMG
    modelValue = modelValue.notifyPicture
    workingValue10 = cmgOperation9.images
    workingValue10 = workingValue10.dict
    text9 = cmgOperation9.images
    text9 = text9.govLarge
    text11 = "Your assigned examiner for the test is Marcus."
    text13 = "CMG Learning Centre"
    createVector3 = "UK Government"
    modelValue(workingValue10, text9, text11, text13, createVector3)
    modelValue = CMG
    modelValue = modelValue.loadAnimDict
    workingValue10 = "amb@medic@standing@tendtodead@base"
    -- Beginner: Load a GTA animation dictionary before using it.
    modelValue(workingValue10)
    modelValue = TaskPlayAnim
    workingValue10 = rageUiOperation7.ped
    text9 = "amb@medic@standing@tendtodead@base"
    text11 = "base"
    text13 = 8.0
    createVector3 = 0.0
    cmgOperation3 = -1
    position = 1
    position2 = 0
    position3 = false
    stateFlag = false
    stateFlag2 = false
    -- Beginner: Play an animation on a ped.
    modelValue(workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2)
    modelValue = RemoveAnimDict
    workingValue10 = "amb@medic@standing@tendtodead@base"
    modelValue(workingValue10)
    modelValue = Wait
    workingValue10 = 5000
    modelValue(workingValue10)
    rageUiOperation7.subtitle = "I am a ~b~driving examiner~w~ for the ~b~CMG Learning Centre"
    rageUiOperation7.subtitle = "I'm just inspecting your vehicle"
    modelValue = Wait
    workingValue10 = 5000
    modelValue(workingValue10)
    rageUiOperation7.subtitle = "Thanks for your patience, we'll start shortly"
    modelValue = Wait
    workingValue10 = 7000
    modelValue(workingValue10)
    rageUiOperation7.subtitle = "Your vehicle is ~g~suitable ~w~for the test"
    modelValue = Wait
    workingValue10 = 5000
    modelValue(workingValue10)
    rageUiOperation7.subtitle = "I will now enter the vehicle"
    modelValue = ClearPedTasksImmediately
    workingValue10 = rageUiOperation7.ped
    modelValue(workingValue10)
    modelValue = TaskEnterVehicle
    workingValue10 = rageUiOperation7.ped
    text9 = rageUiOperation7.vehicle
    text11 = 10.0
    text13 = 0
    createVector3 = 5.0
    cmgOperation3 = 0
    position = 0
    modelValue(workingValue10, text9, text11, text13, createVector3, cmgOperation3, position)
    modelValue = Wait
    workingValue10 = 4000
    modelValue(workingValue10)
    modelValue = CMG
    modelValue = modelValue.notifyPicture
    workingValue10 = cmgOperation9.images
    workingValue10 = workingValue10.dict
    text9 = cmgOperation9.images
    text9 = text9.govLarge
    text11 = "You'll now be given information about the test, listen carefully"
    text13 = "CMG Learning Centre"
    createVector3 = "UK Government"
    modelValue(workingValue10, text9, text11, text13, createVector3)
    modelValue = CMG
    modelValue = modelValue.DVSA
    modelValue = modelValue.initialMoveOff
    modelValue()
  else
    localValue4 = CMG
    localValue4 = localValue4.notifyPicture
    localValue5 = cmgOperation9.images
    localValue5 = localValue5.dict
    modelValue = cmgOperation9.images
    modelValue = modelValue.govLarge
    workingValue10 = "We currently have no test availability, please try again shortly."
    text9 = "Marcus"
    text11 = "Driving Examiner"
    localValue4(localValue5, modelValue, workingValue10, text9, text11)
    localValue4 = SetTimeout
    localValue5 = 20000

    -- === HELPER FUNCTION: modelValue() ===
    function modelValue()
      local localValue12, localValue22
      rageUiOperation7.requested = false
    end
    localValue4(localValue5, modelValue)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f395e7a334".
text3(number, cmgOperation4)
text3 = CMG
text3 = text3.DVSA

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10
  localValue1 = rageUiOperation7.quick
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.DVSA
    localValue1 = localValue1.dvsaSound
    localValue2 = "testExplained"
    localValue1(localValue2)
    localValue1 = pairs
    localValue2 = cmgOperation9.notifications
    localValue2 = localValue2.testStartMessages
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
    for localValue5 in localValue1, localValue2, localValue3, localValue4 do
      modelValue = cmgOperation9.notifications
      modelValue = modelValue.testStartMessages
      modelValue = modelValue[localValue5]
      rageUiOperation7.subtitle = modelValue
      modelValue = Wait
      workingValue10 = 4000
      modelValue(workingValue10)
    end
  end
  localValue1 = math
  localValue1 = localValue1.random
  localValue2 = 1
  localValue3 = table
  localValue3 = localValue3.count
  localValue4 = cmgOperation9.test
  localValue4 = localValue4.routes
  localValue3, localValue4, localValue5, modelValue, workingValue10 = localValue3(localValue4)
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10)
  rageUiOperation7.route = localValue1
  localValue1 = SetVehicleEngineOn
  localValue2 = rageUiOperation7.vehicle
  localValue3 = true
  localValue4 = true
  localValue5 = false
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = FreezeEntityPosition
  localValue2 = rageUiOperation7.vehicle
  localValue3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue1(localValue2, localValue3)
  localValue1 = rageUiOperation7.quick
  if not localValue1 then
    localValue1 = Wait
    localValue2 = 2000
    localValue1(localValue2)
  end
  rageUiOperation7.subtitle = "~y~Move off ~w~when you are ready, carrying out good, all round observations"
  localValue1 = CMG
  localValue1 = localValue1.DVSA
  localValue1 = localValue1.handleTestRoute
  localValue1()
end
text3.initialMoveOff = number
text3 = CMG
text3 = text3.DVSA

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5
  localValue1 = false
  localValue2 = tCMG
  localValue2 = localValue2.addBlip
  localValue3 = cmgOperation9.test
  localValue3 = localValue3.routes
  localValue4 = rageUiOperation7.route
  localValue3 = localValue3[localValue4]
  localValue4 = rageUiOperation7.waypoint
  localValue4 = localValue4 + 1
  localValue3 = localValue3[localValue4]
  localValue3 = localValue3.coords
  localValue3 = localValue3.x
  localValue4 = cmgOperation9.test
  localValue4 = localValue4.routes
  localValue5 = rageUiOperation7.route
  localValue4 = localValue4[localValue5]
  localValue5 = rageUiOperation7.waypoint
  localValue5 = localValue5 + 1
  localValue4 = localValue4[localValue5]
  localValue4 = localValue4.coords
  localValue4 = localValue4.y
  localValue5 = cmgOperation9.test
  localValue5 = localValue5.routes
  modelValue = rageUiOperation7.route
  localValue5 = localValue5[modelValue]
  modelValue = rageUiOperation7.waypoint
  modelValue = modelValue + 1
  localValue5 = localValue5[modelValue]
  localValue5 = localValue5.coords
  localValue5 = localValue5.z
  modelValue = 0
  workingValue10 = 38
  text9 = "Waypoint"
  text11 = 1.0
  text13 = false
  localValue2 = localValue2(localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13)
  rageUiOperation7.blip = localValue2
  localValue2 = SetBlipRoute
  localValue3 = rageUiOperation7.blip
  localValue4 = true
  localValue2(localValue3, localValue4)
  localValue2 = SetBlipRouteColour
  localValue3 = rageUiOperation7.blip
  localValue4 = 38
  localValue2(localValue3, localValue4)
  localValue2 = cmgOperation9.test
  localValue2 = localValue2.routes
  localValue3 = rageUiOperation7.route
  localValue2 = localValue2[localValue3]
  localValue3 = rageUiOperation7.waypoint
  localValue3 = localValue3 + 1
  localValue2 = localValue2[localValue3]
  localValue2.speeding = false
  localValue2 = tCMG
  localValue2 = localValue2.addMarker
  localValue3 = cmgOperation9.test
  localValue3 = localValue3.routes
  localValue4 = rageUiOperation7.route
  localValue3 = localValue3[localValue4]
  localValue4 = rageUiOperation7.waypoint
  localValue4 = localValue4 + 1
  localValue3 = localValue3[localValue4]
  localValue3 = localValue3.coords
  localValue3 = localValue3.x
  localValue4 = cmgOperation9.test
  localValue4 = localValue4.routes
  localValue5 = rageUiOperation7.route
  localValue4 = localValue4[localValue5]
  localValue5 = rageUiOperation7.waypoint
  localValue5 = localValue5 + 1
  localValue4 = localValue4[localValue5]
  localValue4 = localValue4.coords
  localValue4 = localValue4.y
  localValue5 = cmgOperation9.test
  localValue5 = localValue5.routes
  modelValue = rageUiOperation7.route
  localValue5 = localValue5[modelValue]
  modelValue = rageUiOperation7.waypoint
  modelValue = modelValue + 1
  localValue5 = localValue5[modelValue]
  localValue5 = localValue5.coords
  localValue5 = localValue5.z
  modelValue = 1.6
  workingValue10 = 1.6
  text9 = 1.6
  text11 = 0
  text13 = 89
  createVector3 = 255
  cmgOperation3 = 200
  position = 50
  position2 = 36
  position3 = true
  stateFlag = true
  localValue2 = localValue2(localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag)
  rageUiOperation7.marker = localValue2
  rageUiOperation7.subtitle = "Follow the ~y~sat nav"
  localValue2 = rageUiOperation7.quick
  if not localValue2 then
    localValue2 = Wait
    localValue3 = 2000
    localValue2(localValue3)
  end
  while true do
    localValue2 = rageUiOperation7.active
    if not localValue2 then
      break
    end
    if not localValue1 then
      localValue2 = cmgOperation9.images
      localValue2 = localValue2.speed30
      localValue3 = cmgOperation9.test
      localValue3 = localValue3.routes
      localValue4 = rageUiOperation7.route
      localValue3 = localValue3[localValue4]
      localValue4 = rageUiOperation7.waypoint
      localValue4 = localValue4 + 1
      localValue3 = localValue3[localValue4]
      localValue3 = localValue3.limit
      if 30.0 == localValue3 then
        localValue3 = cmgOperation9.images
        localValue2 = localValue3.speed30
      end
      localValue3 = cmgOperation9.test
      localValue3 = localValue3.routes
      localValue4 = rageUiOperation7.route
      localValue3 = localValue3[localValue4]
      localValue4 = rageUiOperation7.waypoint
      localValue4 = localValue4 + 1
      localValue3 = localValue3[localValue4]
      localValue3 = localValue3.limit
      if 40.0 == localValue3 then
        localValue3 = cmgOperation9.images
        localValue2 = localValue3.speed40
      end
      localValue3 = cmgOperation9.test
      localValue3 = localValue3.routes
      localValue4 = rageUiOperation7.route
      localValue3 = localValue3[localValue4]
      localValue4 = rageUiOperation7.waypoint
      localValue4 = localValue4 + 1
      localValue3 = localValue3[localValue4]
      localValue3 = localValue3.limit
      if 60.0 == localValue3 then
        localValue3 = cmgOperation9.images
        localValue2 = localValue3.speed60
      end
      localValue3 = cmgOperation9.test
      localValue3 = localValue3.routes
      localValue4 = rageUiOperation7.route
      localValue3 = localValue3[localValue4]
      localValue4 = rageUiOperation7.waypoint
      localValue4 = localValue4 + 1
      localValue3 = localValue3[localValue4]
      localValue3 = localValue3.limit
      if 70.0 == localValue3 then
        localValue3 = cmgOperation9.images
        localValue2 = localValue3.speed70
      end
      localValue3 = HasStreamedTextureDictLoaded
      localValue4 = cmgOperation9.images
      localValue4 = localValue4.dict
      localValue3 = localValue3(localValue4)
      if not localValue3 then
        localValue3 = RequestStreamedTextureDict
        localValue4 = cmgOperation9.images
        localValue4 = localValue4.dict
        localValue5 = false
        localValue3(localValue4, localValue5)
        while true do
          localValue3 = HasStreamedTextureDictLoaded
          localValue4 = cmgOperation9.images
          localValue4 = localValue4.dict
          localValue3 = localValue3(localValue4)
          if localValue3 then
            break
          end
          localValue3 = Wait
          localValue4 = 0
          localValue3(localValue4)
        end
      end
      localValue3 = DrawSprite
      localValue4 = cmgOperation9.images
      localValue4 = localValue4.dict
      localValue5 = localValue2
      modelValue = 0.95
      workingValue10 = 0.77
      text9 = 0.052
      text11 = 0.09
      text13 = 0.05
      createVector3 = 255
      cmgOperation3 = 255
      position = 255
      position2 = 255
      localValue3(localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2)
      localValue3 = CMG
      localValue3 = localValue3.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue3 = localValue3()
      localValue4 = cmgOperation9.test
      localValue4 = localValue4.routes
      localValue5 = rageUiOperation7.route
      localValue4 = localValue4[localValue5]
      localValue5 = rageUiOperation7.waypoint
      localValue5 = localValue5 + 1
      localValue4 = localValue4[localValue5]
      localValue4 = localValue4.coords
      localValue3 = localValue3 - localValue4
      localValue3 = #localValue3
      localValue4 = GetEntitySpeed
      localValue5 = rageUiOperation7.vehicle
      -- Beginner: result below is speed.
      localValue4 = localValue4(localValue5)
      localValue4 = localValue4 * 2.236936
      localValue5 = cmgOperation9.test
      localValue5 = localValue5.routes
      modelValue = rageUiOperation7.route
      localValue5 = localValue5[modelValue]
      modelValue = rageUiOperation7.waypoint
      modelValue = modelValue + 1
      localValue5 = localValue5[modelValue]
      localValue5 = localValue5.limit
      localValue5 = localValue5 + 19.0
      if localValue4 > localValue5 then
        localValue5 = cmgOperation9.test
        localValue5 = localValue5.routes
        modelValue = rageUiOperation7.route
        localValue5 = localValue5[modelValue]
        modelValue = rageUiOperation7.waypoint
        modelValue = modelValue + 1
        localValue5 = localValue5[modelValue]
        localValue5 = localValue5.speeding
        if not localValue5 then
          localValue5 = CMG
          localValue5 = localValue5.DVSA
          localValue5 = localValue5.issueMinor
          modelValue = "Speeding"
          localValue5(modelValue)
          localValue5 = cmgOperation9.test
          localValue5 = localValue5.routes
          modelValue = rageUiOperation7.route
          localValue5 = localValue5[modelValue]
          modelValue = rageUiOperation7.waypoint
          modelValue = modelValue + 1
          localValue5 = localValue5[modelValue]
          localValue5.speeding = true
        else
          localValue5 = cmgOperation9.test
          localValue5 = localValue5.routes
          modelValue = rageUiOperation7.route
          localValue5 = localValue5[modelValue]
          modelValue = rageUiOperation7.waypoint
          modelValue = modelValue + 1
          localValue5 = localValue5[modelValue]
          localValue5 = localValue5.limit
          localValue5 = localValue5 + 85.0
          if localValue4 > localValue5 then
            localValue5 = CMG
            localValue5 = localValue5.DVSA
            localValue5 = localValue5.issueSerious
            modelValue = "Speeding"
            localValue5(modelValue)
            localValue5 = CMG
            localValue5 = localValue5.DVSA
            localValue5 = localValue5.dvsaSound
            modelValue = "slowDownOrTermination"
            localValue5(modelValue)
            rageUiOperation7.subtitle = "You ~r~must ~w~slow down, or risk the test being terminated immediately"
            rageUiOperation7.subtitle = "Follow the ~y~sat nav"
          end
        end
      end
      localValue5 = 3.5
      if localValue3 < localValue5 then
        localValue5 = rageUiOperation7.waypoint
        localValue5 = localValue5 + 1
        rageUiOperation7.waypoint = localValue5
        localValue5 = rageUiOperation7.waypoint
        modelValue = table
        modelValue = modelValue.count
        workingValue10 = cmgOperation9.test
        workingValue10 = workingValue10.routes
        text9 = rageUiOperation7.route
        workingValue10 = workingValue10[text9]
        -- Beginner: result below is count.
        modelValue = modelValue(workingValue10)
        if localValue5 >= modelValue then
          localValue1 = true
          localValue5 = rageUiOperation7.blip
          if 0 ~= localValue5 then
            localValue5 = tCMG
            localValue5 = localValue5.removeBlip
            modelValue = rageUiOperation7.blip
            localValue5(modelValue)
          end
          localValue5 = rageUiOperation7.marker
          if 0 ~= localValue5 then
            localValue5 = tCMG
            localValue5 = localValue5.removeMarker
            modelValue = rageUiOperation7.marker
            localValue5(modelValue)
          end
          localValue5 = CMG
          localValue5 = localValue5.DVSA
          localValue5 = localValue5.returnToTestCentre
          localValue5()
        else
          localValue5 = rageUiOperation7.blip
          if 0 ~= localValue5 then
            localValue5 = rageUiOperation7.blip
            if 0 ~= localValue5 then
              localValue5 = tCMG
              localValue5 = localValue5.removeBlip
              modelValue = rageUiOperation7.blip
              localValue5(modelValue)
            end
          end
          localValue5 = tCMG
          localValue5 = localValue5.addBlip
          modelValue = cmgOperation9.test
          modelValue = modelValue.routes
          workingValue10 = rageUiOperation7.route
          modelValue = modelValue[workingValue10]
          workingValue10 = rageUiOperation7.waypoint
          workingValue10 = workingValue10 + 1
          modelValue = modelValue[workingValue10]
          modelValue = modelValue.coords
          modelValue = modelValue.x
          workingValue10 = cmgOperation9.test
          workingValue10 = workingValue10.routes
          text9 = rageUiOperation7.route
          workingValue10 = workingValue10[text9]
          text9 = rageUiOperation7.waypoint
          text9 = text9 + 1
          workingValue10 = workingValue10[text9]
          workingValue10 = workingValue10.coords
          workingValue10 = workingValue10.y
          text9 = cmgOperation9.test
          text9 = text9.routes
          text11 = rageUiOperation7.route
          text9 = text9[text11]
          text11 = rageUiOperation7.waypoint
          text11 = text11 + 1
          text9 = text9[text11]
          text9 = text9.coords
          text9 = text9.z
          text11 = 0
          text13 = 38
          createVector3 = "Waypoint"
          cmgOperation3 = 1.0
          position = false
          localValue5 = localValue5(modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position)
          rageUiOperation7.blip = localValue5
          localValue5 = SetBlipRoute
          modelValue = rageUiOperation7.blip
          workingValue10 = true
          localValue5(modelValue, workingValue10)
          localValue5 = SetBlipRouteColour
          modelValue = rageUiOperation7.blip
          workingValue10 = 38
          localValue5(modelValue, workingValue10)
          localValue5 = rageUiOperation7.marker
          if 0 ~= localValue5 then
            localValue5 = rageUiOperation7.marker
            if nil ~= localValue5 then
              localValue5 = tCMG
              localValue5 = localValue5.removeMarker
              modelValue = rageUiOperation7.marker
              localValue5(modelValue)
            end
          end
          localValue5 = tCMG
          localValue5 = localValue5.addMarker
          modelValue = cmgOperation9.test
          modelValue = modelValue.routes
          workingValue10 = rageUiOperation7.route
          modelValue = modelValue[workingValue10]
          workingValue10 = rageUiOperation7.waypoint
          workingValue10 = workingValue10 + 1
          modelValue = modelValue[workingValue10]
          modelValue = modelValue.coords
          modelValue = modelValue.x
          workingValue10 = cmgOperation9.test
          workingValue10 = workingValue10.routes
          text9 = rageUiOperation7.route
          workingValue10 = workingValue10[text9]
          text9 = rageUiOperation7.waypoint
          text9 = text9 + 1
          workingValue10 = workingValue10[text9]
          workingValue10 = workingValue10.coords
          workingValue10 = workingValue10.y
          text9 = cmgOperation9.test
          text9 = text9.routes
          text11 = rageUiOperation7.route
          text9 = text9[text11]
          text11 = rageUiOperation7.waypoint
          text11 = text11 + 1
          text9 = text9[text11]
          text9 = text9.coords
          text9 = text9.z
          text11 = 1.6
          text13 = 1.6
          createVector3 = 1.6
          cmgOperation3 = 0
          position = 89
          position2 = 255
          position3 = 200
          stateFlag = 50
          stateFlag2 = 36
          stateFlag3 = true
          stateFlag5 = true
          localValue5 = localValue5(modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5)
          rageUiOperation7.marker = localValue5
          localValue5 = cmgOperation9.test
          localValue5 = localValue5.routes
          modelValue = rageUiOperation7.route
          localValue5 = localValue5[modelValue]
          modelValue = rageUiOperation7.waypoint
          modelValue = modelValue + 1
          localValue5 = localValue5[modelValue]
          localValue5.speeding = false
          localValue5 = Citizen
          localValue5 = localValue5.CreateThread

          -- === HELPER FUNCTION: modelValue() ===
          function modelValue()
            local localValue12, localValue22
            localValue12 = cmgOperation9.test
            localValue12 = localValue12.routes
            localValue22 = rageUiOperation7.route
            localValue12 = localValue12[localValue22]
            localValue22 = rageUiOperation7.waypoint
            localValue12 = localValue12[localValue22]
            localValue12 = localValue12.action
            localValue22 = rageUiOperation7
            localValue12(localValue22)
            rageUiOperation7.subtitle = "Follow the ~y~sat nav"
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue5(modelValue)
        end
      end
    end
    localValue2 = Wait
    localValue3 = 0
    localValue2(localValue3)
  end
end
text3.handleTestRoute = number
text3 = CMG
text3 = text3.DVSA

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5, stateFlag6, number5, number6, stateFlag7
  localValue1 = CMG
  localValue1 = localValue1.DVSA
  localValue1 = localValue1.dvsaSound
  localValue2 = "policePursuitContinue"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.notifyPicture
  localValue2 = cmgOperation9.images
  localValue2 = localValue2.dict
  localValue3 = cmgOperation9.images
  localValue3 = localValue3.govLarge
  localValue4 = "You are required to ~b~move over ~w~to allow a police pursuit to continue."
  localValue5 = "CMG Learning Centre"
  modelValue = "UK Government"
  localValue1(localValue2, localValue3, localValue4, localValue5, modelValue)
  rageUiOperation7.subtitle = "Move ~y~over"
  localValue1 = -344943009
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = localValue1
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue2(localValue3)
  localValue2 = vector3
  localValue3 = 113.0901
  localValue4 = -1226.426
  localValue5 = 37.60364
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = CMG
  localValue3 = localValue3.spawnVehicle
  localValue4 = localValue1
  localValue5 = localValue2.x
  modelValue = localValue2.y
  workingValue10 = localValue2.z
  text9 = 270.93
  text11 = false
  text13 = false
  localValue3 = localValue3(localValue4, localValue5, modelValue, workingValue10, text9, text11, text13)
  while true do
    localValue4 = DoesEntityExist
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      break
    end
    localValue4 = Wait
    localValue5 = 0
    localValue4(localValue5)
  end
  localValue4 = SetModelAsNoLongerNeeded
  localValue5 = localValue1
  localValue4(localValue5)
  localValue4 = 826475330
  localValue5 = CMG
  localValue5 = localValue5.loadModel
  modelValue = localValue4
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue5(modelValue)
  localValue5 = CreatePed
  modelValue = 4
  workingValue10 = localValue4
  text9 = localValue2.x
  text11 = localValue2.y
  text13 = localValue2.z
  createVector3 = 270.93
  cmgOperation3 = false
  position = false
  -- Beginner: result below is pedEntity.
  localValue5 = localValue5(modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position)
  while true do
    modelValue = DoesEntityExist
    workingValue10 = localValue5
    modelValue = modelValue(workingValue10)
    if modelValue then
      break
    end
    modelValue = Wait
    workingValue10 = 0
    modelValue(workingValue10)
  end
  modelValue = SetModelAsNoLongerNeeded
  workingValue10 = localValue4
  modelValue(workingValue10)
  modelValue = SetEntityInvincible
  workingValue10 = localValue5
  text9 = true
  modelValue(workingValue10, text9)
  modelValue = SetPedAlertness
  workingValue10 = localValue5
  text9 = 0.0
  modelValue(workingValue10, text9)
  modelValue = TaskWarpPedIntoVehicle
  workingValue10 = localValue5
  text9 = localValue3
  text11 = -1
  modelValue(workingValue10, text9, text11)
  modelValue = SetVehicleEngineOn
  workingValue10 = localValue3
  text9 = true
  text11 = true
  text13 = false
  modelValue(workingValue10, text9, text11, text13)
  while true do
    modelValue = IsPedInVehicle
    workingValue10 = localValue5
    text9 = localValue3
    text11 = false
    modelValue = modelValue(workingValue10, text9, text11)
    if modelValue then
      break
    end
    modelValue = Wait
    workingValue10 = 0
    modelValue(workingValue10)
  end
  modelValue = vector3
  workingValue10 = 816.9495
  text9 = -1216.404
  text11 = 45.8938
  modelValue = modelValue(workingValue10, text9, text11)
  workingValue10 = TaskVehicleDriveToCoord
  text9 = localValue5
  text11 = localValue3
  text13 = modelValue.x
  createVector3 = modelValue.y
  cmgOperation3 = modelValue.z
  position = 60.0
  position2 = 1.0
  position3 = localValue1
  stateFlag = 786472
  stateFlag2 = 1.0
  stateFlag3 = 0
  workingValue10(text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3)
  workingValue10 = Wait
  text9 = 2000
  workingValue10(text9)
  workingValue10 = 1462516421
  text9 = IsModelValid
  text11 = workingValue10
  text9 = text9(text11)
  if not text9 then
    workingValue10 = 456714581
  end
  text9 = CMG
  text9 = text9.loadModel
  text11 = workingValue10
  -- Beginner: Request/load a GTA model before spawning or applying it.
  text9(text11)
  text9 = CMG
  text9 = text9.spawnVehicle
  text11 = workingValue10
  text13 = localValue2.x
  createVector3 = localValue2.y
  cmgOperation3 = localValue2.z
  position = 270.93
  position2 = false
  position3 = false
  text9 = text9(text11, text13, createVector3, cmgOperation3, position, position2, position3)
  while true do
    text11 = DoesEntityExist
    text13 = text9
    text11 = text11(text13)
    if text11 then
      break
    end
    text11 = Wait
    text13 = 0
    text11(text13)
  end
  text11 = SetModelAsNoLongerNeeded
  text13 = workingValue10
  text11(text13)
  text11 = 1644266841
  text13 = CMG
  text13 = text13.loadModel
  createVector3 = text11
  -- Beginner: Request/load a GTA model before spawning or applying it.
  text13(createVector3)
  text13 = CreatePed
  createVector3 = 4
  cmgOperation3 = text11
  position = localValue2.x
  position2 = localValue2.y
  position3 = localValue2.z
  stateFlag = 270.93
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: result below is pedEntity.
  text13 = text13(createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3)
  while true do
    createVector3 = DoesEntityExist
    cmgOperation3 = text13
    createVector3 = createVector3(cmgOperation3)
    if createVector3 then
      break
    end
    createVector3 = Wait
    cmgOperation3 = 0
    createVector3(cmgOperation3)
  end
  createVector3 = SetModelAsNoLongerNeeded
  cmgOperation3 = text11
  createVector3(cmgOperation3)
  createVector3 = SetEntityInvincible
  cmgOperation3 = text13
  position = true
  createVector3(cmgOperation3, position)
  createVector3 = SetPedAlertness
  cmgOperation3 = text13
  position = 0.0
  createVector3(cmgOperation3, position)
  createVector3 = TaskWarpPedIntoVehicle
  cmgOperation3 = text13
  position = text9
  position2 = -1
  createVector3(cmgOperation3, position, position2)
  createVector3 = SetVehicleEngineOn
  cmgOperation3 = text9
  position = true
  position2 = true
  position3 = false
  createVector3(cmgOperation3, position, position2, position3)
  while true do
    createVector3 = IsPedInVehicle
    cmgOperation3 = text13
    position = text9
    position2 = false
    createVector3 = createVector3(cmgOperation3, position, position2)
    if createVector3 then
      break
    end
    createVector3 = Wait
    cmgOperation3 = 0
    createVector3(cmgOperation3)
  end
  createVector3 = GetSoundId
  -- Beginner: result below is soundHandle.
  createVector3 = createVector3()
  cmgOperation3 = PlaySoundFromEntity
  position = createVector3
  position2 = "VEHICLES_HORNS_SIREN_1"
  position3 = text9
  stateFlag = nil
  stateFlag2 = false
  stateFlag3 = 0
  cmgOperation3(position, position2, position3, stateFlag, stateFlag2, stateFlag3)
  cmgOperation3 = TaskVehicleDriveToCoord
  position = text13
  position2 = text9
  position3 = modelValue.x
  stateFlag = modelValue.y
  stateFlag2 = modelValue.z
  stateFlag3 = 70.0
  stateFlag5 = 1.0
  stateFlag6 = workingValue10
  number5 = 786472
  number6 = 1.0
  stateFlag7 = 0
  cmgOperation3(position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5, stateFlag6, number5, number6, stateFlag7)
  cmgOperation3 = Citizen
  cmgOperation3 = cmgOperation3.SetTimeout
  position = 30000

  -- === HELPER FUNCTION: position2() ===
  function position2()
    local localValue12, localValue22
    localValue12 = DoesEntityExist
    localValue22 = localValue3
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue12 = DeleteEntity
      localValue22 = localValue3
      -- Beginner: Delete a GTA entity.
      localValue12(localValue22)
    end
    localValue12 = DoesEntityExist
    localValue22 = localValue5
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue12 = DeleteEntity
      localValue22 = localValue5
      localValue12(localValue22)
    end
    localValue12 = DoesEntityExist
    localValue22 = text9
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue12 = DeleteEntity
      localValue22 = text9
      -- Beginner: Delete a GTA entity.
      localValue12(localValue22)
    end
    localValue12 = DoesEntityExist
    localValue22 = text13
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue12 = DeleteEntity
      localValue22 = text13
      localValue12(localValue22)
    end
    localValue12 = StopSound
    localValue22 = createVector3
    localValue12(localValue22)
    localValue12 = ReleaseSoundId
    localValue22 = createVector3
    localValue12(localValue22)
  end
  cmgOperation3(position, position2)
end
text3.policeChase = number
text3 = CMG
text3 = text3.DVSA

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2
  localValue1 = GetVehicleEngineHealth
  localValue2 = rageUiOperation7.vehicle
  localValue1 = localValue1(localValue2)
  localValue2 = 700.0
  if localValue1 < localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.DVSA
    localValue2 = localValue2.issueSerious
    localValue3 = "Vehicle Collision"
    localValue2(localValue3)
  end
  localValue2 = true
  localValue3 = rageUiOperation7.serious
  if not (localValue3 > 0) then
    localValue3 = rageUiOperation7.minors
    if not (localValue3 > 15) then
      localValue3 = rageUiOperation7.seriousIssued
      if not localValue3 then
        goto continueAtStep23
      end
    end
  end
  localValue2 = false
  ::continueAtStep23::
  localValue3 = tCMG
  localValue3 = localValue3.addBlip
  localValue4 = cmgOperation9.test
  localValue4 = localValue4.parkingSpaces
  localValue5 = rageUiOperation7.parkingSpace
  localValue4 = localValue4[localValue5]
  localValue4 = localValue4.coords
  localValue4 = localValue4.x
  localValue5 = cmgOperation9.test
  localValue5 = localValue5.parkingSpaces
  modelValue = rageUiOperation7.parkingSpace
  localValue5 = localValue5[modelValue]
  localValue5 = localValue5.coords
  localValue5 = localValue5.y
  modelValue = cmgOperation9.test
  modelValue = modelValue.parkingSpaces
  workingValue10 = rageUiOperation7.parkingSpace
  modelValue = modelValue[workingValue10]
  modelValue = modelValue.coords
  modelValue = modelValue.z
  workingValue10 = 0
  text9 = 81
  text11 = "Waypoint"
  text13 = 1.0
  createVector3 = false
  localValue3 = localValue3(localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3)
  rageUiOperation7.blip = localValue3
  localValue3 = tCMG
  localValue3 = localValue3.addMarker
  localValue4 = cmgOperation9.test
  localValue4 = localValue4.parkingSpaces
  localValue5 = rageUiOperation7.parkingSpace
  localValue4 = localValue4[localValue5]
  localValue4 = localValue4.coords
  localValue4 = localValue4.x
  localValue5 = cmgOperation9.test
  localValue5 = localValue5.parkingSpaces
  modelValue = rageUiOperation7.parkingSpace
  localValue5 = localValue5[modelValue]
  localValue5 = localValue5.coords
  localValue5 = localValue5.y
  modelValue = cmgOperation9.test
  modelValue = modelValue.parkingSpaces
  workingValue10 = rageUiOperation7.parkingSpace
  modelValue = modelValue[workingValue10]
  modelValue = modelValue.coords
  modelValue = modelValue.z
  workingValue10 = 1.2
  text9 = 1.2
  text11 = 1.2
  text13 = 0
  createVector3 = 255
  cmgOperation3 = 125
  position = 125
  position2 = 50
  position3 = 0
  stateFlag = true
  stateFlag2 = true
  localValue3 = localValue3(localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2)
  rageUiOperation7.marker = localValue3
  localValue3 = SetBlipRoute
  localValue4 = rageUiOperation7.blip
  localValue5 = true
  localValue3(localValue4, localValue5)
  localValue3 = SetBlipRouteColour
  localValue4 = rageUiOperation7.blip
  localValue5 = 38
  localValue3(localValue4, localValue5)
  localValue3 = CMG
  localValue3 = localValue3.DVSA
  localValue3 = localValue3.dvsaSound
  localValue4 = "newDestinationSet"
  localValue3(localValue4)
  rageUiOperation7.subtitle = "I've set a ~y~new sat nav destination~w~, please follow it"
  localValue3 = Wait
  localValue4 = 4000
  localValue3(localValue4)
  rageUiOperation7.subtitle = "Follow the ~y~sat nav"
  while true do
    localValue3 = CMG
    localValue3 = localValue3.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue3 = localValue3()
    localValue4 = cmgOperation9.test
    localValue4 = localValue4.parkingSpaces
    localValue5 = rageUiOperation7.parkingSpace
    localValue4 = localValue4[localValue5]
    localValue4 = localValue4.coords
    localValue3 = localValue3 - localValue4
    localValue3 = #localValue3
    if localValue3 < 15.0 then
      rageUiOperation7.subtitle = "Park up at the ~y~waypoint"
      break
    end
    localValue4 = Wait
    localValue5 = 0
    localValue4(localValue5)
  end
  localValue3 = CMG
  localValue3 = localValue3.DVSA
  localValue3 = localValue3.finishTest
  localValue4 = localValue2
  localValue3(localValue4)
end
text3.returnToTestCentre = number

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = DeleteEntity
  localValue2 = rageUiOperation7.vehicle
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = DeleteEntity
  localValue2 = rageUiOperation7.ped
  localValue1(localValue2)
  localValue1 = tCMG
  localValue1 = localValue1.teleport
  if nil ~= localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.teleport
    localValue2 = cmgOperation9.test
    localValue2 = localValue2.finishTestTpCoords
    localValue2 = localValue2.x
    localValue3 = cmgOperation9.test
    localValue3 = localValue3.finishTestTpCoords
    localValue3 = localValue3.y
    localValue4 = cmgOperation9.test
    localValue4 = localValue4.finishTestTpCoords
    localValue4 = localValue4.z
    localValue1(localValue2, localValue3, localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: number; parameters: localValue1, localValue2, localValue3) ===
function number(localValue1, localValue2, localValue3)
  local localValue4, localValue5, modelValue, workingValue10, text9, text11
  localValue4 = nil
  rageUiOperation6 = localValue4
  localValue4 = TriggerServerEvent
  localValue5 = "90aa93a379"
  modelValue = true
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90aa93a379".
  localValue4(localValue5, modelValue)
  if localValue1 then
    localValue4 = TriggerServerEvent
    localValue5 = "9dd6740ca1"
    modelValue = rageUiOperation7.serious
    workingValue10 = rageUiOperation7.minors
    text9 = localValue2
    localValue4(localValue5, modelValue, workingValue10, text9)
    rageUiOperation7.active = false
  else
    localValue4 = TriggerServerEvent
    localValue5 = "7bcdcadbbe"
    modelValue = rageUiOperation7.serious
    workingValue10 = rageUiOperation7.minors
    text9 = localValue3
    text11 = localValue2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7bcdcadbbe".
    localValue4(localValue5, modelValue, workingValue10, text9, text11)
    rageUiOperation7.active = false
  end
  localValue4 = rageUiOperation7.blip
  if 0 ~= localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.removeBlip
    localValue5 = rageUiOperation7.blip
    localValue4(localValue5)
  end
  localValue4 = rageUiOperation7.marker
  if 0 ~= localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.removeMarker
    localValue5 = rageUiOperation7.marker
    localValue4(localValue5)
  end
  localValue4 = ClearGpsPlayerWaypoint
  localValue4()
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.DVSA

-- === HELPER FUNCTION (decompiler name: number2; parameters: localValue1) ===
function number2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3
  rageUiOperation7.subtitle = "Park up ~y~safely"
  while true do
    localValue2 = GetEntitySpeed
    localValue3 = rageUiOperation7.vehicle
    -- Beginner: result below is speed.
    localValue2 = localValue2(localValue3)
    localValue2 = not localValue2
    if 0.0 ~= localValue2 then
      break
    end
    localValue2 = Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = Wait
  localValue3 = 6000
  localValue2(localValue3)
  localValue2 = GetEntitySpeed
  localValue3 = rageUiOperation7.vehicle
  -- Beginner: result below is speed.
  localValue2 = localValue2(localValue3)
  localValue2 = not localValue2
  if 0.0 == localValue2 then
    while true do
      localValue2 = GetEntitySpeed
      localValue3 = rageUiOperation7.vehicle
      -- Beginner: result below is speed.
      localValue2 = localValue2(localValue3)
      localValue2 = not localValue2
      if 0.0 ~= localValue2 then
        break
      end
      localValue2 = Wait
      localValue3 = 0
      localValue2(localValue3)
    end
  end
  localValue2 = Wait
  localValue3 = 3000
  localValue2(localValue3)
  localValue2 = GetEntitySpeed
  localValue3 = rageUiOperation7.vehicle
  -- Beginner: result below is speed.
  localValue2 = localValue2(localValue3)
  localValue2 = not localValue2
  if 0.0 == localValue2 then
    while true do
      localValue2 = GetEntitySpeed
      localValue3 = rageUiOperation7.vehicle
      -- Beginner: result below is speed.
      localValue2 = localValue2(localValue3)
      localValue2 = not localValue2
      if 0.0 ~= localValue2 then
        break
      end
      localValue2 = Wait
      localValue3 = 0
      localValue2(localValue3)
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.DVSA
  localValue2 = localValue2.useTablet
  localValue2()
  localValue2 = CMG
  localValue2 = localValue2.DVSA
  localValue2 = localValue2.dvsaSound
  localValue3 = "completePaperwork"
  localValue2(localValue3)
  rageUiOperation7.subtitle = "Please wait whilst I finish my ~y~paperwork"
  localValue2 = SetVehicleEngineOn
  localValue3 = rageUiOperation7.vehicle
  localValue4 = false
  localValue5 = true
  modelValue = true
  localValue2(localValue3, localValue4, localValue5, modelValue)
  localValue2 = FreezeEntityPosition
  localValue3 = rageUiOperation7.vehicle
  localValue4 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, localValue4)
  localValue2 = Wait
  localValue3 = 10000
  localValue2(localValue3)
  localValue2 = ""
  localValue3 = ""
  if localValue1 then
    localValue4 = CMG
    localValue4 = localValue4.DVSA
    localValue4 = localValue4.dvsaSound
    localValue5 = "testPassed"
    localValue4(localValue5)
    localValue4 = CMG
    localValue4 = localValue4.notifyPicture
    localValue5 = cmgOperation9.images
    localValue5 = localValue5.dict
    modelValue = cmgOperation9.images
    modelValue = modelValue.govLarge
    workingValue10 = "You ~b~passed your test with ~y~"
    text9 = rageUiOperation7.minors
    text11 = " ~w~minors"
    workingValue10 = workingValue10 .. text9 .. text11
    text9 = "UK Government"
    text11 = "CMG Learning Centre"
    localValue4(localValue5, modelValue, workingValue10, text9, text11)
    localValue4 = "Congratulations, you have ~g~passed ~w~your driving test with ~y~"
    localValue5 = rageUiOperation7.minors
    modelValue = " ~w~minors"
    localValue4 = localValue4 .. localValue5 .. modelValue
    rageUiOperation7.subtitle = localValue4
    localValue4 = Wait
    localValue5 = 6000
    localValue4(localValue5)
    rageUiOperation7.subtitle = "This is only the beginning to becoming a ~b~safe ~w~and ~b~confident driver"
    localValue4 = Wait
    localValue5 = 4000
    localValue4(localValue5)
    localValue4 = CMG
    localValue4 = localValue4.DVSA
    localValue4 = localValue4.dvsaSound
    localValue5 = "testPassedGoodbye"
    localValue4(localValue5)
    rageUiOperation7.subtitle = "I would like to add you drove very well and I wish you the best of luck in the future"
    localValue4 = Wait
    localValue5 = 4000
    localValue4(localValue5)
    rageUiOperation7.subtitle = "See you around!"
  else
    localValue4 = CMG
    localValue4 = localValue4.DVSA
    localValue4 = localValue4.dvsaSound
    localValue5 = "testFailed"
    localValue4(localValue5)
    localValue4 = CMG
    localValue4 = localValue4.notifyPicture
    localValue5 = cmgOperation9.images
    localValue5 = localValue5.dict
    modelValue = cmgOperation9.images
    modelValue = modelValue.govLarge
    workingValue10 = "Unfortunately you have ~r~failed your test"
    text9 = "UK Government"
    text11 = "CMG Learning Centre"
    localValue4(localValue5, modelValue, workingValue10, text9, text11)
    rageUiOperation7.subtitle = "Unfortunately you have ~y~failed ~w~your driving test"
    localValue4 = Wait
    localValue5 = 6000
    localValue4(localValue5)
    localValue4 = CMG
    localValue4 = localValue4.notifyPicture
    localValue5 = cmgOperation9.images
    localValue5 = localValue5.dict
    modelValue = cmgOperation9.images
    modelValue = modelValue.govLarge
    workingValue10 = "Your ~r~serious ~w~faults were:"
    text9 = "UK Government"
    text11 = "CMG Learning Centre"
    localValue4(localValue5, modelValue, workingValue10, text9, text11)
    localValue4 = Wait
    localValue5 = 3000
    localValue4(localValue5)
    localValue4 = CMG
    localValue4 = localValue4.DVSA
    localValue4 = localValue4.dvsaSound
    localValue5 = "seriousFaults"
    localValue4(localValue5)
    localValue4 = pairs
    localValue5 = rageUiOperation7.seriousReason
    localValue4, localValue5, modelValue, workingValue10 = localValue4(localValue5)
    for text9 in localValue4, localValue5, modelValue, workingValue10 do
      text11 = localValue3
      text13 = ", "
      createVector3 = rageUiOperation7.seriousReason
      createVector3 = createVector3[text9]
      text11 = text11 .. text13 .. createVector3
      localValue3 = text11
      text11 = tCMG
      text11 = text11.notify
      text13 = "~r~Serious Fault~w~: "
      createVector3 = rageUiOperation7.seriousReason
      createVector3 = createVector3[text9]
      text13 = text13 .. createVector3
      -- Beginner: Show a notification to the player.
      text11(text13)
      text11 = Wait
      text13 = 500
      text11(text13)
    end
    localValue4 = CMG
    localValue4 = localValue4.notifyPicture
    localValue5 = cmgOperation9.images
    localValue5 = localValue5.dict
    modelValue = cmgOperation9.images
    modelValue = modelValue.govLarge
    workingValue10 = "Your ~y~minor ~w~faults were:"
    text9 = "UK Government"
    text11 = "CMG Learning Centre"
    localValue4(localValue5, modelValue, workingValue10, text9, text11)
    localValue4 = Wait
    localValue5 = 3000
    localValue4(localValue5)
    localValue4 = CMG
    localValue4 = localValue4.DVSA
    localValue4 = localValue4.dvsaSound
    localValue5 = "minorFaults"
    localValue4(localValue5)
    localValue4 = pairs
    localValue5 = rageUiOperation7.minorsReason
    localValue4, localValue5, modelValue, workingValue10 = localValue4(localValue5)
    for text9 in localValue4, localValue5, modelValue, workingValue10 do
      text11 = localValue2
      text13 = ", "
      createVector3 = rageUiOperation7.minorsReason
      createVector3 = createVector3[text9]
      text11 = text11 .. text13 .. createVector3
      localValue2 = text11
      text11 = tCMG
      text11 = text11.notify
      text13 = "~y~Minor Fault~w~: "
      createVector3 = rageUiOperation7.minorsReason
      createVector3 = createVector3[text9]
      text13 = text13 .. createVector3
      -- Beginner: Show a notification to the player.
      text11(text13)
      text11 = Wait
      text13 = 500
      text11(text13)
    end
    localValue4 = Wait
    localValue5 = 4000
    localValue4(localValue5)
    localValue4 = CMG
    localValue4 = localValue4.DVSA
    localValue4 = localValue4.dvsaSound
    localValue5 = "testFailedGoodbye"
    localValue4(localValue5)
    rageUiOperation7.subtitle = "We do not fail a candidate lightly and we hope you have the ~b~determination ~w~to improve"
    localValue4 = Wait
    localValue5 = 4000
    localValue4(localValue5)
    rageUiOperation7.subtitle = "I wish you the best of luck in the future and I look forward to seeing you next time"
    localValue4 = Wait
    localValue5 = 4000
    localValue4(localValue5)
    rageUiOperation7.subtitle = "Goodbye!"
    localValue4 = Wait
    localValue5 = 4000
    localValue4(localValue5)
  end
  localValue4 = Wait
  localValue5 = 5000
  localValue4(localValue5)
  localValue4 = text3
  localValue4()
  localValue4 = Wait
  localValue5 = 3000
  localValue4(localValue5)
  localValue4 = SetTimeout
  localValue5 = 20000

  -- === HELPER FUNCTION: modelValue() ===
  function modelValue()
    local localValue12, localValue22
    rageUiOperation7.requested = false
  end
  localValue4(localValue5, modelValue)
  localValue4 = number
  localValue5 = localValue1
  modelValue = localValue2
  workingValue10 = localValue3
  localValue4(localValue5, modelValue, workingValue10)
end
cmgOperation4.finishTest = number2
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.DVSA

-- === HELPER FUNCTION (decompiler name: number2; parameters: localValue1) ===
function number2(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = table
  localValue2 = localValue2.insert
  localValue3 = rageUiOperation7.seriousReason
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
  rageUiOperation7.seriousIssued = true
  localValue2 = rageUiOperation7.serious
  localValue2 = localValue2 + 1
  rageUiOperation7.serious = localValue2
  localValue2 = CMG
  localValue2 = localValue2.DVSA
  localValue2 = localValue2.useTablet
  localValue2()
end
cmgOperation4.issueSerious = number2
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.DVSA

-- === HELPER FUNCTION (decompiler name: number2; parameters: localValue1) ===
function number2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11
  localValue2 = table
  localValue2 = localValue2.insert
  localValue3 = rageUiOperation7.minorsReason
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
  localValue2 = rageUiOperation7.minors
  localValue2 = localValue2 + 1
  rageUiOperation7.minors = localValue2
  localValue2 = 0
  localValue3 = pairs
  localValue4 = rageUiOperation7.minorsReason
  localValue3, localValue4, localValue5, modelValue = localValue3(localValue4)
  for workingValue10 in localValue3, localValue4, localValue5, modelValue do
    text9 = rageUiOperation7.minorsReason
    text9 = text9[workingValue10]
    if "Speeding" == text9 then
      localValue2 = localValue2 + 1
    end
  end
  if 4 == localValue2 then
    localValue3 = CMG
    localValue3 = localValue3.DVSA
    localValue3 = localValue3.issueSerious
    localValue4 = "Speeding"
    localValue3(localValue4)
  else
    localValue3 = CMG
    localValue3 = localValue3.DVSA
    localValue3 = localValue3.useTablet
    localValue3()
  end
end
cmgOperation4.issueMinor = number2
cmgOperation4 = RegisterNetEvent
number2 = "05a6478fe0"
-- Beginner: this function handles network event "05a6478fe0".

-- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
function stateFlag4()
  local localValue1, localValue2
  localValue1 = rageUiOperation7.active
  if localValue1 then
    localValue1 = workingValue5
    if not localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.DVSA
      localValue1 = localValue1.issueSerious
      localValue2 = "Used mobile phone"
      localValue1(localValue2)
      localValue1 = true
      workingValue5 = localValue1
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "05a6478fe0".
cmgOperation4(number2, stateFlag4)
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.DVSA

-- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
function number2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  localValue3 = "Out_Of_Bounds_Timer"
  localValue4 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  localValue5 = true
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = CMG
  localValue1 = localValue1.notifyPicture
  localValue2 = cmgOperation9.images
  localValue2 = localValue2.dict
  localValue3 = cmgOperation9.images
  localValue3 = localValue3.govLarge
  localValue4 = "Listen carefully for directions"
  localValue5 = "Controlled Stop"
  modelValue = "CMG Learning Centre"
  localValue1(localValue2, localValue3, localValue4, localValue5, modelValue)
  localValue1 = false
  localValue2 = false
  localValue3 = CMG
  localValue3 = localValue3.DVSA
  localValue3 = localValue3.dvsaSound
  localValue4 = "controlledStop"
  localValue3(localValue4)
  rageUiOperation7.subtitle = "We will soon carry out a ~b~controlled stop"
  localValue3 = Wait
  localValue4 = 4000
  localValue3(localValue4)
  rageUiOperation7.subtitle = "When it is safe to do so, ~y~pull up ~w~and park safely ~y~on the right hand side ~w~of the road."
  localValue3 = SetTimeout
  localValue4 = 20000

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local localValue12, localValue22
    localValue12 = true
    localValue1 = localValue12
  end
  localValue3(localValue4, localValue5)
  while not localValue1 do
    localValue3 = GetEntitySpeed
    localValue4 = rageUiOperation7.vehicle
    -- Beginner: result below is speed.
    localValue3 = localValue3(localValue4)
    if 0.0 == localValue3 then
      localValue3 = Wait
      localValue4 = 2000
      localValue3(localValue4)
      localValue3 = GetEntitySpeed
      localValue4 = rageUiOperation7.vehicle
      -- Beginner: result below is speed.
      localValue3 = localValue3(localValue4)
      if 0.0 == localValue3 then
        localValue1 = true
        break
      else
        rageUiOperation7.subtitle = "Please pull up ~y~on the right"
      end
    elseif localValue1 then
      rageUiOperation7.subtitle = "Thank you, please move off again when you are ready"
      localValue2 = true
      localValue3 = CMG
      localValue3 = localValue3.DVSA
      localValue3 = localValue3.issueSerious
      localValue4 = "Controlled Stop - Serious"
      localValue3(localValue4)
      break
    end
    localValue3 = Wait
    localValue4 = 0
    localValue3(localValue4)
  end
  localValue3 = Wait
  localValue4 = 2000
  localValue3(localValue4)
  if not localValue2 then
    rageUiOperation7.subtitle = "Thank you, please move off again when you are ready"
  else
    rageUiOperation7.subtitle = "Thank you, please move off again when you are ready"
  end
  localValue3 = CMG
  localValue3 = localValue3.DVSA
  localValue3 = localValue3.dvsaSound
  localValue4 = "moveOffWhenReady"
  localValue3(localValue4)
  localValue3 = Wait
  localValue4 = 2000
  localValue3(localValue4)
  rageUiOperation7.subtitle = "Follow the ~y~sat nav"
  localValue3 = CMG
  localValue3 = localValue3.DVSA
  localValue3 = localValue3.useTablet
  localValue3()
end
cmgOperation4.pullUpOnRight = number2
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.DVSA

-- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
function number2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  localValue3 = "Out_Of_Bounds_Timer"
  localValue4 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  localValue5 = true
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = CMG
  localValue1 = localValue1.notifyPicture
  localValue2 = cmgOperation9.images
  localValue2 = localValue2.dict
  localValue3 = cmgOperation9.images
  localValue3 = localValue3.govLarge
  localValue4 = "Listen carefully for directions"
  localValue5 = "Show Me Question"
  modelValue = "CMG Learning Centre"
  localValue1(localValue2, localValue3, localValue4, localValue5, modelValue)
  rageUiOperation7.subtitle = "I will now ask you one ~y~show me question ~w~while driving"
  localValue1 = CMG
  localValue1 = localValue1.DVSA
  localValue1 = localValue1.dvsaSound
  localValue2 = "askShowMeQuestion"
  localValue1(localValue2)
  localValue1 = Wait
  localValue2 = 6000
  localValue1(localValue2)
  localValue1 = false
  localValue2 = CMG
  localValue2 = localValue2.DVSA
  localValue2 = localValue2.dvsaSound
  localValue3 = "operateMainBeamHeadlights"
  localValue2(localValue3)
  rageUiOperation7.subtitle = "When it is ~y~safe ~w~to do so, show me how you'd ~y~operate the main beam headlights."
  localValue2 = CMG
  localValue2 = localValue2.notifyPicture
  localValue3 = cmgOperation9.images
  localValue3 = localValue3.dict
  localValue4 = cmgOperation9.images
  localValue4 = localValue4.govLarge
  localValue5 = "Turn on your headlights as requested"
  modelValue = "Show Me Question"
  workingValue10 = "CMG Learning Centre"
  localValue2(localValue3, localValue4, localValue5, modelValue, workingValue10)
  localValue2 = SetTimeout
  localValue3 = 20000

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local localValue12, localValue22
    localValue12 = true
    localValue1 = localValue12
  end
  localValue2(localValue3, localValue4)
  localValue2 = false
  while not localValue1 do
    localValue3 = GetVehicleLightsState
    localValue4 = rageUiOperation7.vehicle
    localValue3, localValue4, localValue5 = localValue3(localValue4)
    if localValue5 then
      localValue2 = true
    end
    if localValue5 then
      modelValue = Wait
      workingValue10 = 5000
      modelValue(workingValue10)
      localValue1 = true
    end
    modelValue = Wait
    workingValue10 = 0
    modelValue(workingValue10)
  end
  if not localValue2 then
    localValue3 = CMG
    localValue3 = localValue3.DVSA
    localValue3 = localValue3.issueMinor
    localValue4 = "Show Me - Headlights"
    localValue3(localValue4)
  end
  localValue3 = CMG
  localValue3 = localValue3.DVSA
  localValue3 = localValue3.dvsaSound
  localValue4 = "continueToFollow"
  localValue3(localValue4)
  rageUiOperation7.subtitle = "Thank you, please continue to follow the sat nav"
  localValue3 = Wait
  localValue4 = 2000
  localValue3(localValue4)
  localValue3 = CMG
  localValue3 = localValue3.notifyPicture
  localValue4 = cmgOperation9.images
  localValue4 = localValue4.dict
  localValue5 = cmgOperation9.images
  localValue5 = localValue5.govLarge
  modelValue = "Thank you, the show me question is complete"
  workingValue10 = "Show Me Question"
  text9 = "CMG Learning Centre"
  localValue3(localValue4, localValue5, modelValue, workingValue10, text9)
  rageUiOperation7.subtitle = "Follow the ~y~sat nav"
end
cmgOperation4.operateHeadlights = number2
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.DVSA

-- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
function number2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  localValue3 = "Out_Of_Bounds_Timer"
  localValue4 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  localValue5 = true
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = CMG
  localValue1 = localValue1.DVSA
  localValue1 = localValue1.dvsaSound
  localValue2 = "stopSign"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.notifyPicture
  localValue2 = cmgOperation9.images
  localValue2 = localValue2.dict
  localValue3 = cmgOperation9.images
  localValue3 = localValue3.govLarge
  localValue4 = "You are legally required to stop at this sign"
  localValue5 = "Stop Sign"
  modelValue = "CMG Learning Centre"
  localValue1(localValue2, localValue3, localValue4, localValue5, modelValue)
  localValue1 = false
  localValue2 = false
  localValue3 = Citizen
  localValue3 = localValue3.CreateThread

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local localValue12, localValue22, localValue32
    localValue12 = SetTimeout
    localValue22 = 15000

    -- === HELPER FUNCTION: localValue32() ===
    function localValue32()
      local localValue13, localValue23
      localValue13 = true
      localValue1 = localValue13
    end
    localValue12(localValue22, localValue32)
    while true do
      localValue12 = localValue1
      if localValue12 then
        break
      end
      localValue12 = GetEntitySpeed
      localValue22 = rageUiOperation7.vehicle
      -- Beginner: result below is speed.
      localValue12 = localValue12(localValue22)
      if localValue12 <= 1.0 then
        localValue12 = true
        localValue2 = localValue12
        localValue12 = true
        localValue1 = localValue12
      end
      localValue12 = Wait
      localValue22 = 0
      localValue12(localValue22)
    end
    localValue12 = localValue2
    if not localValue12 then
      localValue12 = CMG
      localValue12 = localValue12.DVSA
      localValue12 = localValue12.issueSerious
      localValue22 = "Failed to yield for a stop sign"
      localValue12(localValue22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue3(localValue4)
end
cmgOperation4.stopSignDetection = number2
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.DVSA

-- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
function number2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  localValue3 = "Out_Of_Bounds_Timer"
  localValue4 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  localValue5 = true
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = CMG
  localValue1 = localValue1.DVSA
  localValue1 = localValue1.dvsaSound
  localValue2 = "emergencyStopIntroduction"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.notifyPicture
  localValue2 = cmgOperation9.images
  localValue2 = localValue2.dict
  localValue3 = cmgOperation9.images
  localValue3 = localValue3.govLarge
  localValue4 = "Listen carefully for directions"
  localValue5 = "Test Instruction"
  modelValue = "CMG Learning Centre"
  localValue1(localValue2, localValue3, localValue4, localValue5, modelValue)
  rageUiOperation7.subtitle = "We will soon carry out an ~y~emergency stop~w~, I will give you a warning before you should stop"
  localValue1 = Wait
  localValue2 = 3000
  localValue1(localValue2)
  rageUiOperation7.subtitle = "You should have practiced this with your ~y~approved driving instructor"
  localValue1 = Wait
  localValue2 = 3000
  localValue1(localValue2)
  rageUiOperation7.subtitle = "When I say ~r~stop ~w~you should react as soon as possible"
  localValue1 = Wait
  localValue2 = math
  localValue2 = localValue2.random
  localValue3 = 7000
  localValue4 = 15000
  localValue2, localValue3, localValue4, localValue5, modelValue = localValue2(localValue3, localValue4)
  localValue1(localValue2, localValue3, localValue4, localValue5, modelValue)
  localValue1 = CMG
  localValue1 = localValue1.DVSA
  localValue1 = localValue1.dvsaSound
  localValue2 = "stopNowMessage"
  localValue1(localValue2)
  rageUiOperation7.subtitle = "~r~STOP ~w~- Perform an emergency stop"
  localValue1 = CMG
  localValue1 = localValue1.notifyPicture
  localValue2 = cmgOperation9.images
  localValue2 = localValue2.dict
  localValue3 = cmgOperation9.images
  localValue3 = localValue3.govLarge
  localValue4 = "Perform an emergency stop immediately"
  localValue5 = "STOP"
  modelValue = "CMG Learning Centre"
  localValue1(localValue2, localValue3, localValue4, localValue5, modelValue)
  localValue1 = Wait
  localValue2 = 3000
  localValue1(localValue2)
  localValue1 = GetEntitySpeed
  localValue2 = rageUiOperation7.vehicle
  -- Beginner: result below is speed.
  localValue1 = localValue1(localValue2)
  localValue1 = not localValue1
  if 0.0 == localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.DVSA
    localValue1 = localValue1.issueMinor
    localValue2 = "ES - Timing"
    localValue1(localValue2)
  else
    rageUiOperation7.subtitle = "~r~STOP ~w~- Remain stopped"
  end
  localValue1 = Wait
  localValue2 = 3000
  localValue1(localValue2)
  localValue1 = GetEntitySpeed
  localValue2 = rageUiOperation7.vehicle
  -- Beginner: result below is speed.
  localValue1 = localValue1(localValue2)
  localValue1 = not localValue1
  if 0.0 == localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.DVSA
    localValue1 = localValue1.issueSerious
    localValue2 = "ES - Failed"
    localValue1(localValue2)
  end
  localValue1 = Wait
  localValue2 = 3000
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.DVSA
  localValue1 = localValue1.dvsaSound
  localValue2 = "moveOffWhenReady"
  localValue1(localValue2)
  rageUiOperation7.subtitle = "Thank you, please continue to follow the sat nav"
  localValue1 = Wait
  localValue2 = 2000
  localValue1(localValue2)
  rageUiOperation7.subtitle = "Follow the ~y~sat nav"
  localValue1 = CMG
  localValue1 = localValue1.DVSA
  localValue1 = localValue1.useTablet
  localValue1()
end
cmgOperation4.emergencyStop = number2
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.DVSA

-- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
function number2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = -1585232418
  localValue1 = localValue1(localValue2)
  localValue2 = CreateObject
  localValue3 = localValue1
  localValue4 = 0
  localValue5 = 0
  modelValue = 0
  workingValue10 = false
  text9 = true
  text11 = true
  -- Beginner: result below is objectEntity.
  localValue2 = localValue2(localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11)
  rageUiOperation7.tabletHandle = localValue2
  localValue2 = SetModelAsNoLongerNeeded
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = AttachEntityToEntity
  localValue3 = rageUiOperation7.tabletHandle
  localValue4 = rageUiOperation7.ped
  localValue5 = GetPedBoneIndex
  modelValue = rageUiOperation7.ped
  workingValue10 = 57005
  localValue5 = localValue5(modelValue, workingValue10)
  modelValue = 0.17
  workingValue10 = 0.1
  text9 = -0.13
  text11 = 24.0
  text13 = 180.0
  createVector3 = 180.0
  cmgOperation3 = true
  position = true
  position2 = false
  position3 = true
  stateFlag = 1
  stateFlag2 = true
  -- Beginner: Attach one entity to another entity.
  localValue2(localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2)
  localValue2 = RequestAnimDict
  localValue3 = "amb@world_human_seat_wall_tablet@female@base"
  localValue2(localValue3)
  while true do
    localValue2 = HasAnimDictLoaded
    localValue3 = "amb@world_human_seat_wall_tablet@female@base"
    localValue2 = localValue2(localValue3)
    if localValue2 then
      break
    end
    localValue2 = Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = TaskPlayAnim
  localValue3 = rageUiOperation7.ped
  localValue4 = "amb@world_human_seat_wall_tablet@female@base"
  localValue5 = "base"
  modelValue = 8.0
  workingValue10 = 1
  text9 = -1
  text11 = 1
  text13 = 1.0
  createVector3 = false
  cmgOperation3 = false
  position = false
  -- Beginner: Play an animation on a ped.
  localValue2(localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position)
  localValue2 = RemoveAnimDict
  localValue3 = "amb@world_human_seat_wall_tablet@female@base"
  localValue2(localValue3)
  localValue2 = SetTimeout
  localValue3 = 9000

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local localValue12, localValue22, localValue32, dataCollection2, rageUiOperation4
    localValue12 = DeleteEntity
    localValue22 = rageUiOperation7.tabletHandle
    -- Beginner: Delete a GTA entity.
    localValue12(localValue22)
    localValue12 = StopAnimTask
    localValue22 = rageUiOperation7.ped
    localValue32 = "amb@world_human_seat_wall_tablet@female@base"
    dataCollection2 = "base"
    rageUiOperation4 = 1.0
    localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4)
  end
  localValue2(localValue3, localValue4)
end
cmgOperation4.useTablet = number2
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.DVSA

-- === HELPER FUNCTION (decompiler name: number2; parameters: localValue1) ===
function number2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2
  localValue2 = NetworkOverrideClockTime
  localValue3 = 9
  localValue4 = 0
  localValue5 = 0
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = CMG
  localValue2 = localValue2.hideAllDisplays
  localValue3 = "dvsaintro"
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = FreezeEntityPosition
  localValue4 = localValue2
  localValue5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(localValue4, localValue5)
  localValue3 = SetFocusPosAndVel
  localValue4 = 239.4198
  localValue5 = -1392.593
  modelValue = 35.75024
  workingValue10 = 0.0
  text9 = 0.0
  text11 = 0.0
  localValue3(localValue4, localValue5, modelValue, workingValue10, text9, text11)
  localValue3 = CreateCameraWithParams
  localValue4 = "DEFAULT_SCRIPTED_CAMERA"
  localValue5 = 239.4198
  modelValue = -1392.593
  workingValue10 = 35.75024
  text9 = 0.0
  text11 = 0.0
  text13 = 0.0
  createVector3 = 65.0
  cmgOperation3 = false
  position = 2
  localValue3 = localValue3(localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position)
  localValue4 = PointCamAtCoord
  localValue5 = localValue3
  modelValue = 218.9802
  workingValue10 = -1390.47
  text9 = 30.57727
  localValue4(localValue5, modelValue, workingValue10, text9)
  localValue4 = SetCamActive
  localValue5 = localValue3
  modelValue = true
  localValue4(localValue5, modelValue)
  localValue4 = RenderScriptCams
  localValue5 = true
  modelValue = true
  workingValue10 = 0
  text9 = true
  text11 = false
  localValue4(localValue5, modelValue, workingValue10, text9, text11)
  rageUiOperation7.subtitle = "This is the ~b~DVSA ~w~test centre. You'll finish your test here."
  localValue4 = Wait
  localValue5 = 7000
  localValue4(localValue5)
  localValue4 = CreateCameraWithParams
  localValue5 = "DEFAULT_SCRIPTED_CAMERA"
  modelValue = 218.7297
  workingValue10 = -1370.44
  text9 = 32.96997
  text11 = 0.0
  text13 = 0.0
  createVector3 = 0.0
  cmgOperation3 = 65.0
  position = false
  position2 = 2
  localValue4 = localValue4(localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2)
  localValue5 = PointCamAtCoord
  modelValue = localValue4
  workingValue10 = localValue1.x
  text9 = localValue1.y
  text11 = localValue1.z
  localValue5(modelValue, workingValue10, text9, text11)
  localValue5 = SetCamActiveWithInterp
  modelValue = localValue4
  workingValue10 = localValue3
  text9 = 10000
  text11 = 5
  text13 = 5
  localValue5(modelValue, workingValue10, text9, text11, text13)
  rageUiOperation7.subtitle = "This is your vehicle in which you'll be ~b~examined~w~."
  localValue5 = Wait
  modelValue = 10000
  localValue5(modelValue)
  localValue5 = DestroyCam
  modelValue = localValue3
  workingValue10 = false
  localValue5(modelValue, workingValue10)
  localValue5 = DestroyCam
  modelValue = localValue4
  workingValue10 = false
  localValue5(modelValue, workingValue10)
  localValue5 = RenderScriptCams
  modelValue = false
  workingValue10 = true
  text9 = 3000
  text11 = true
  text13 = false
  localValue5(modelValue, workingValue10, text9, text11, text13)
  localValue5 = Wait
  modelValue = 5000
  localValue5(modelValue)
  localValue5 = ClearFocus
  localValue5()
  localValue5 = FreezeEntityPosition
  modelValue = localValue2
  workingValue10 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue5(modelValue, workingValue10)
  localValue5 = CMG
  localValue5 = localValue5.showAllDisplays
  modelValue = "dvsaintro"
  localValue5(modelValue)
  rageUiOperation7.subtitle = "Please wait for the ~b~examiner~w~."
end
cmgOperation4.cameraTransition = number2
cmgOperation4 = 0
number2 = RageUI
number2 = number2.CreateWhile
stateFlag4 = 1.0
number3 = RMenu
number4 = number3
number3 = number3.Get
cmgOperation5 = "dvsa"
text4 = "main"
-- Beginner: result below is menu.
number3 = number3(number4, cmgOperation5, text4)
number4 = nil

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: modelValue() ===
  function modelValue()
    local localValue12, localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8, workingValue11, workingValue12, text12, text14
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Driving Licence"
    localValue32 = "View and manage your driving licence"
    dataCollection2 = {}
    rageUiOperation4 = RageUI
    rageUiOperation4 = rageUiOperation4.BadgeStyle
    rageUiOperation4 = rageUiOperation4.Car
    dataCollection2.RightBadge = rageUiOperation4
    rageUiOperation4 = true

    -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
    function workingValue8(localValue13, localValue23, localValue33)
    end
    workingValue11 = RMenu
    workingValue12 = workingValue11
    workingValue11 = workingValue11.Get
    text12 = "dvsa"
    text14 = "licence"
    workingValue11, workingValue12, text12, text14 = workingValue11(workingValue12, text12, text14)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8, workingValue11, workingValue12, text12, text14)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Driving Test"
    localValue32 = "View your driving tests"
    dataCollection2 = {}
    rageUiOperation4 = RageUI
    rageUiOperation4 = rageUiOperation4.BadgeStyle
    rageUiOperation4 = rageUiOperation4.Car
    dataCollection2.RightBadge = rageUiOperation4
    rageUiOperation4 = true

    -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
    function workingValue8(localValue13, localValue23, localValue33)
    end
    workingValue11 = RMenu
    workingValue12 = workingValue11
    workingValue11 = workingValue11.Get
    text12 = "dvsa"
    text14 = "tests"
    workingValue11, workingValue12, text12, text14 = workingValue11(workingValue12, text12, text14)
    localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8, workingValue11, workingValue12, text12, text14)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "CMG Learning Centre Alerts"
    localValue32 = "View alerts received from the CMG Learning Centre"
    dataCollection2 = {}
    rageUiOperation4 = RageUI
    rageUiOperation4 = rageUiOperation4.BadgeStyle
    rageUiOperation4 = rageUiOperation4.Car
    dataCollection2.RightBadge = rageUiOperation4
    rageUiOperation4 = true

    -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
    function workingValue8(localValue13, localValue23, localValue33)
    end
    workingValue11 = RMenu
    workingValue12 = workingValue11
    workingValue11 = workingValue11.Get
    text12 = "dvsa"
    text14 = "alerts"
    workingValue11, workingValue12, text12, text14 = workingValue11(workingValue12, text12, text14)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8, workingValue11, workingValue12, text12, text14)
    localValue12 = cmgOperation7
    if localValue12 then
      localValue12 = rageUiOperation7.active
      if not localValue12 then
        localValue12 = cmgOperation.full
        if not localValue12 then
          localValue12 = cmgOperation.active
          if localValue12 then
            localValue12 = rageUiOperation7.requested
            if not localValue12 then
              localValue12 = RageUI
              localValue12 = localValue12.ButtonWithStyle
              localValue22 = "Begin driving test"
              localValue32 = "Begin your driving test"
              dataCollection2 = {}
              rageUiOperation4 = RageUI
              rageUiOperation4 = rageUiOperation4.BadgeStyle
              rageUiOperation4 = rageUiOperation4.Alert
              dataCollection2.RightBadge = rageUiOperation4
              rageUiOperation4 = "\194\163"
              workingValue8 = getMoneyStringFormatted
              workingValue11 = cmgOperation9.test
              workingValue11 = workingValue11.price
              workingValue8 = workingValue8(workingValue11)
              rageUiOperation4 = rageUiOperation4 .. workingValue8
              dataCollection2.RightLabel = rageUiOperation4
              rageUiOperation4 = true

              -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
              function workingValue8(localValue13, localValue23, localValue33)
                local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
                if localValue33 then
                  cmgOperation6 = cmgOperation.banned
                  if cmgOperation6 then
                    cmgOperation6 = CMG
                    cmgOperation6 = cmgOperation6.notifyPicture
                    text7 = cmgOperation9.images
                    text7 = text7.dict
                    workingValue9 = cmgOperation9.images
                    workingValue9 = workingValue9.govLarge
                    text8 = "Your licence has been suspended"
                    text10 = "UK Government"
                    cmgOperation8 = "CMG Learning Centre"
                    cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
                  else
                    cmgOperation6 = rageUiOperation7.requested
                    if not cmgOperation6 then
                      cmgOperation6 = TriggerServerEvent
                      text7 = "372adfd3e8"
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "372adfd3e8".
                      cmgOperation6(text7)
                      rageUiOperation7.requested = true
                    end
                  end
                  cmgOperation6 = RageUI
                  cmgOperation6 = cmgOperation6.CloseAll
                  cmgOperation6()
                end
              end
              -- Beginner: Draw a selectable RageUI menu button.
              localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8)
            else
              localValue12 = RageUI
              localValue12 = localValue12.ButtonWithStyle
              localValue22 = "No tests available"
              localValue32 = "Try again in a few minutes"
              dataCollection2 = {}
              rageUiOperation4 = RageUI
              rageUiOperation4 = rageUiOperation4.BadgeStyle
              rageUiOperation4 = rageUiOperation4.Alert
              dataCollection2.RightBadge = rageUiOperation4
              rageUiOperation4 = true

              -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
              function workingValue8(localValue13, localValue23, localValue33)
                local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
                if localValue33 then
                  cmgOperation6 = CMG
                  cmgOperation6 = cmgOperation6.notifyPicture
                  text7 = cmgOperation9.images
                  text7 = text7.dict
                  workingValue9 = cmgOperation9.images
                  workingValue9 = workingValue9.govLarge
                  text8 = "We have no tests available, please try again in a few minutes."
                  text10 = "UK Government"
                  cmgOperation8 = "Driving Test"
                  cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
                end
              end
              -- Beginner: Draw a selectable RageUI menu button.
              localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8)
            end
        end
      end
      else
        localValue12 = rageUiOperation7.requested
        if not localValue12 then
          localValue12 = rageUiOperation7.active
          if not localValue12 then
            localValue12 = cmgOperation.full
            if localValue12 then
              localValue12 = cmgOperation.active
              if localValue12 then
                localValue12 = RageUI
                localValue12 = localValue12.ButtonWithStyle
                localValue22 = "Surrender your licence"
                localValue32 = "Surrender your driving licence to the CMG Learning Centre"
                dataCollection2 = {}
                rageUiOperation4 = RageUI
                rageUiOperation4 = rageUiOperation4.BadgeStyle
                rageUiOperation4 = rageUiOperation4.Alert
                dataCollection2.RightBadge = rageUiOperation4
                rageUiOperation4 = true

                -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
                function workingValue8(localValue13, localValue23, localValue33)
                  local cmgOperation6
                  if localValue33 then
                    cmgOperation6 = GetGameTimer
                    -- Beginner: result below is gameTimeMs.
                    cmgOperation6 = cmgOperation6()
                    cmgOperation4 = cmgOperation6
                  end
                end
                workingValue11 = RMenu
                workingValue12 = workingValue11
                workingValue11 = workingValue11.Get
                text12 = "dvsa"
                text14 = "surrenderconfirm"
                workingValue11, workingValue12, text12, text14 = workingValue11(workingValue12, text12, text14)
                localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8, workingValue11, workingValue12, text12, text14)
              end
            end
          end
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "surrenderconfirm"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: modelValue() ===
  function modelValue()
    local localValue12, localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Confirm surrendering of license (READ CAREFULLY)"
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "This will remove your license and make you a learner."
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "This will require you to retake the driving test."
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Confirm Surrender"
    localValue32 = "Confirm you wish to surrender your driving licence to the CMG Learning Centre."
    dataCollection2 = {}
    rageUiOperation4 = RageUI
    rageUiOperation4 = rageUiOperation4.BadgeStyle
    rageUiOperation4 = rageUiOperation4.Alert
    dataCollection2.RightBadge = rageUiOperation4
    rageUiOperation4 = true

    -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
    function workingValue8(localValue13, localValue23, localValue33)
      local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
      if localValue33 then
        cmgOperation6 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        cmgOperation6 = cmgOperation6()
        text7 = cmgOperation4
        cmgOperation6 = cmgOperation6 - text7
        text7 = 5000
        if cmgOperation6 < text7 then
          cmgOperation6 = notify
          text7 = "~r~Please wait 5 seconds and read the confirmation."
          -- Beginner: Show a notification to the player.
          cmgOperation6(text7)
          return
        end
        cmgOperation.full = false
        cmgOperation.active = false
        cmgOperation6 = CMG
        cmgOperation6 = cmgOperation6.notifyPicture
        text7 = cmgOperation9.images
        text7 = text7.dict
        workingValue9 = cmgOperation9.images
        workingValue9 = workingValue9.govLarge
        text8 = "You've surrendered your licence. Your points and offences will remain held."
        text10 = "UK Government"
        cmgOperation8 = "Licence Surrendered"
        cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
        cmgOperation6 = TriggerServerEvent
        text7 = "515fda600c"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "515fda600c".
        cmgOperation6(text7)
        cmgOperation6 = RageUI
        cmgOperation6 = cmgOperation6.Visible
        text7 = RMenu
        workingValue9 = text7
        text7 = text7.Get
        text8 = "dvsa"
        text10 = "main"
        -- Beginner: result below is menu.
        text7 = text7(workingValue9, text8, text10)
        workingValue9 = true
        cmgOperation6(text7, workingValue9)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "licence"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: modelValue() ===
  function modelValue()
    local localValue12, localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8, workingValue11, workingValue12, text12, text14, rageUiOperation, rageUiOperation2
    localValue12 = cmgOperation.full
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Licence Type:"
      localValue32 = "This indiates if you hold a full licence"
      dataCollection2 = {}
      dataCollection2.RightLabel = "Full"
      rageUiOperation4 = RageUI
      rageUiOperation4 = rageUiOperation4.BadgeStyle
      rageUiOperation4 = rageUiOperation4.Car
      dataCollection2.RightBadge = rageUiOperation4
      rageUiOperation4 = true

      -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
      function workingValue8(localValue13, localValue23, localValue33)
        local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
        if localValue33 then
          cmgOperation6 = CMG
          cmgOperation6 = cmgOperation6.notifyPicture
          text7 = cmgOperation9.images
          text7 = text7.dict
          workingValue9 = cmgOperation9.images
          workingValue9 = workingValue9.govLarge
          text8 = "Your licence is full. You have passed your driving test."
          text10 = "UK Government"
          cmgOperation8 = "CMG Learning Centre"
          cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8)
    else
      localValue12 = cmgOperation.banned
      if localValue12 then
        localValue12 = RageUI
        localValue12 = localValue12.ButtonWithStyle
        localValue22 = "Licence Type:"
        localValue32 = "This indiates if you hold a full licence"
        dataCollection2 = {}
        dataCollection2.RightLabel = "Suspended"
        rageUiOperation4 = RageUI
        rageUiOperation4 = rageUiOperation4.BadgeStyle
        rageUiOperation4 = rageUiOperation4.Alert
        dataCollection2.RightBadge = rageUiOperation4
        rageUiOperation4 = true

        -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
        function workingValue8(localValue13, localValue23, localValue33)
          local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
          if localValue33 then
            cmgOperation6 = CMG
            cmgOperation6 = cmgOperation6.notifyPicture
            text7 = cmgOperation9.images
            text7 = text7.dict
            workingValue9 = cmgOperation9.images
            workingValue9 = workingValue9.govLarge
            text8 = "Your licence has been suspended"
            text10 = "UK Government"
            cmgOperation8 = "CMG Learning Centre"
            cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8)
      else
        localValue12 = cmgOperation.active
        if localValue12 then
          localValue12 = RageUI
          localValue12 = localValue12.ButtonWithStyle
          localValue22 = "Licence Type:"
          localValue32 = "This indiates if you hold a full licence"
          dataCollection2 = {}
          dataCollection2.RightLabel = "Provisional"
          rageUiOperation4 = RageUI
          rageUiOperation4 = rageUiOperation4.BadgeStyle
          rageUiOperation4 = rageUiOperation4.Alert
          dataCollection2.RightBadge = rageUiOperation4
          rageUiOperation4 = true

          -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
          function workingValue8(localValue13, localValue23, localValue33)
            local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
            if localValue33 then
              cmgOperation6 = CMG
              cmgOperation6 = cmgOperation6.notifyPicture
              text7 = cmgOperation9.images
              text7 = text7.dict
              workingValue9 = cmgOperation9.images
              workingValue9 = workingValue9.govLarge
              text8 = "Your licence is currently provisional, take a test at the CMG Learning Centre"
              text10 = "UK Government"
              cmgOperation8 = "CMG Learning Centre"
              cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8)
        else
          localValue12 = RageUI
          localValue12 = localValue12.ButtonWithStyle
          localValue22 = "Licence Type:"
          localValue32 = "This indiates if you hold a full licence"
          dataCollection2 = {}
          dataCollection2.RightLabel = "No licence"
          rageUiOperation4 = RageUI
          rageUiOperation4 = rageUiOperation4.BadgeStyle
          rageUiOperation4 = rageUiOperation4.Alert
          dataCollection2.RightBadge = rageUiOperation4
          rageUiOperation4 = true

          -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
          function workingValue8(localValue13, localValue23, localValue33)
            local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
            if localValue33 then
              cmgOperation6 = CMG
              cmgOperation6 = cmgOperation6.notifyPicture
              text7 = cmgOperation9.images
              text7 = text7.dict
              workingValue9 = cmgOperation9.images
              workingValue9 = workingValue9.govLarge
              text8 = "You do not hold a UK Driving licence."
              text10 = "UK Government"
              cmgOperation8 = "CMG Learning Centre"
              cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8)
          localValue12 = text6
          if not localValue12 then
            localValue12 = RageUI
            localValue12 = localValue12.ButtonWithStyle
            localValue22 = "Apply for a provisional licence"
            localValue32 = "Apply for a provisional licence"
            dataCollection2 = {}
            rageUiOperation4 = RageUI
            rageUiOperation4 = rageUiOperation4.BadgeStyle
            rageUiOperation4 = rageUiOperation4.Car
            dataCollection2.RightBadge = rageUiOperation4
            rageUiOperation4 = true

            -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
            function workingValue8(localValue13, localValue23, localValue33)
              local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
              if localValue33 then
                cmgOperation6 = TriggerServerEvent
                text7 = "2161c94134"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2161c94134".
                cmgOperation6(text7)
                cmgOperation6 = true
                text6 = cmgOperation6
                cmgOperation6 = CMG
                cmgOperation6 = cmgOperation6.notifyPicture
                text7 = cmgOperation9.images
                text7 = text7.dict
                workingValue9 = cmgOperation9.images
                workingValue9 = workingValue9.govLarge
                text8 = "We will process your application shortly. Thank you for submitting."
                text10 = "UK Government"
                cmgOperation8 = "CMG Learning Centre"
                cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8)
          end
        end
      end
    end
    localValue12 = cmgOperation.active
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Penalty Points:"
      localValue32 = "This indicates your amount of licence points"
      dataCollection2 = {}
      rageUiOperation4 = cmgOperation.points
      dataCollection2.RightLabel = rageUiOperation4
      rageUiOperation4 = true

      -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
      function workingValue8(localValue13, localValue23, localValue33)
        local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
        if localValue33 then
          cmgOperation6 = CMG
          cmgOperation6 = cmgOperation6.notifyPicture
          text7 = cmgOperation9.images
          text7 = text7.dict
          workingValue9 = cmgOperation9.images
          workingValue9 = workingValue9.govLarge
          text8 = "Your licence currently has "
          text10 = cmgOperation.points
          cmgOperation8 = " penalty points."
          text8 = text8 .. text10 .. cmgOperation8
          text10 = "UK Government"
          cmgOperation8 = "CMG Learning Centre"
          cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Licence Number:"
      localValue32 = "This indicates your licence number"
      dataCollection2 = {}
      rageUiOperation4 = cmgOperation.id
      dataCollection2.RightLabel = rageUiOperation4
      rageUiOperation4 = true

      -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
      function workingValue8(localValue13, localValue23, localValue33)
        local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
        if localValue33 then
          cmgOperation6 = CMG
          cmgOperation6 = cmgOperation6.notifyPicture
          text7 = cmgOperation9.images
          text7 = text7.dict
          workingValue9 = cmgOperation9.images
          workingValue9 = workingValue9.govLarge
          text8 = "Your licence number is "
          text10 = cmgOperation.id
          cmgOperation8 = ", this is issued with your licence."
          text8 = text8 .. text10 .. cmgOperation8
          text10 = "UK Government"
          cmgOperation8 = "CMG Learning Centre"
          cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Licence Issued:"
      localValue32 = "This indicates the date and time of issue"
      dataCollection2 = {}
      rageUiOperation4 = cmgOperation.date
      dataCollection2.RightLabel = rageUiOperation4
      rageUiOperation4 = true

      -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
      function workingValue8(localValue13, localValue23, localValue33)
        local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
        if localValue33 then
          cmgOperation6 = CMG
          cmgOperation6 = cmgOperation6.notifyPicture
          text7 = cmgOperation9.images
          text7 = text7.dict
          workingValue9 = cmgOperation9.images
          workingValue9 = workingValue9.govLarge
          text8 = "Your licence was issued at "
          text10 = cmgOperation.date
          cmgOperation8 = "."
          text8 = text8 .. text10 .. cmgOperation8
          text10 = "UK Government"
          cmgOperation8 = "CMG Learning Centre"
          cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8)
      localValue12 = table
      localValue12 = localValue12.count
      localValue22 = dataCollection
      -- Beginner: result below is count.
      localValue12 = localValue12(localValue22)
      if localValue12 < 0 then
        localValue12 = RageUI
        localValue12 = localValue12.Separator
        localValue22 = "DVSA - Licence Record"
        localValue12(localValue22)
        localValue12 = pairs
        localValue22 = dataCollection
        localValue12, localValue22, localValue32, dataCollection2 = localValue12(localValue22)
        for rageUiOperation4, workingValue8 in localValue12, localValue22, localValue32, dataCollection2 do
          workingValue11 = RageUI
          workingValue11 = workingValue11.ButtonWithStyle
          workingValue12 = workingValue8.offence
          text12 = "Date: "
          text14 = workingValue8.date
          rageUiOperation = " | Type: "
          rageUiOperation2 = workingValue8.type
          text12 = text12 .. text14 .. rageUiOperation .. rageUiOperation2
          text14 = {}
          rageUiOperation = RageUI
          rageUiOperation = rageUiOperation.BadgeStyle
          rageUiOperation = rageUiOperation.Alert
          text14.RightBadge = rageUiOperation
          rageUiOperation = true

          -- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue13, localValue23, localValue33) ===
          function rageUiOperation2(localValue13, localValue23, localValue33)
            local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8, workingValue13, text
            if localValue33 then
              cmgOperation6 = CMG
              cmgOperation6 = cmgOperation6.notifyPicture
              text7 = cmgOperation9.images
              text7 = text7.dict
              workingValue9 = cmgOperation9.images
              workingValue9 = workingValue9.govLarge
              text8 = "You were given "
              text10 = workingValue8.points
              cmgOperation8 = " penalty points on "
              workingValue13 = workingValue8.date
              text = "."
              text8 = text8 .. text10 .. cmgOperation8 .. workingValue13 .. text
              text10 = "UK Government"
              cmgOperation8 = "Offence: "
              workingValue13 = workingValue8.offence
              cmgOperation8 = cmgOperation8 .. workingValue13
              cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          workingValue11(workingValue12, text12, text14, rageUiOperation, rageUiOperation2)
        end
      end
    end
    localValue12 = cmgOperation.full
    if not localValue12 then
      localValue12 = cmgOperation.passDate
      if localValue12 then
        localValue12 = RageUI
        localValue12 = localValue12.ButtonWithStyle
        localValue22 = "Renew full driving license"
        localValue32 = "You previously had a full licence, you can skip the test and purchase a new one for \194\1631,000,000"
        dataCollection2 = {}
        rageUiOperation4 = RageUI
        rageUiOperation4 = rageUiOperation4.BadgeStyle
        rageUiOperation4 = rageUiOperation4.Car
        dataCollection2.RightBadge = rageUiOperation4
        rageUiOperation4 = true

        -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
        function workingValue8(localValue13, localValue23, localValue33)
          local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
          if localValue33 then
            cmgOperation6 = TriggerServerEvent
            text7 = "3887d186ba"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3887d186ba".
            cmgOperation6(text7)
            cmgOperation6 = CMG
            cmgOperation6 = cmgOperation6.notifyPicture
            text7 = cmgOperation9.images
            text7 = text7.dict
            workingValue9 = cmgOperation9.images
            workingValue9 = workingValue9.govLarge
            text8 = "We will process your request shortly. Thank you for submitting."
            text10 = "UK Government"
            cmgOperation8 = "CMG Learning Centre"
            cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        localValue12(localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "tests"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: modelValue() ===
  function modelValue()
    local localValue12, localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8, workingValue11, workingValue12, text12, text14, rageUiOperation, rageUiOperation2, workingValue4
    localValue12 = text5
    if nil ~= localValue12 then
      localValue12 = table
      localValue12 = localValue12.count
      localValue22 = text5
      -- Beginner: result below is count.
      localValue12 = localValue12(localValue22)
      if localValue12 > 0 then
        localValue12 = pairs
        localValue22 = text5
        localValue12, localValue22, localValue32, dataCollection2 = localValue12(localValue22)
        for rageUiOperation4, workingValue8 in localValue12, localValue22, localValue32, dataCollection2 do
          workingValue11 = "~r~FAIL"
          workingValue12 = workingValue8.pass
          if workingValue12 then
            workingValue11 = "~g~PASS"
          end
          workingValue12 = RageUI
          workingValue12 = workingValue12.ButtonWithStyle
          text12 = workingValue8.date
          text14 = " | Result: "
          rageUiOperation = workingValue11
          text12 = text12 .. text14 .. rageUiOperation
          text14 = "~r~Serious Faults~w~: "
          rageUiOperation = workingValue8.serious
          rageUiOperation2 = " | ~b~Minor Faults~w~: "
          workingValue4 = workingValue8.minor
          text14 = text14 .. rageUiOperation .. rageUiOperation2 .. workingValue4
          rageUiOperation = {}
          rageUiOperation2 = RageUI
          rageUiOperation2 = rageUiOperation2.BadgeStyle
          rageUiOperation2 = rageUiOperation2.Alert
          rageUiOperation.RightBadge = rageUiOperation2
          rageUiOperation2 = true

          -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue13, localValue23, localValue33) ===
          function workingValue4(localValue13, localValue23, localValue33)
            local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8, workingValue13, text, workingValue2, text2
            if localValue33 then
              cmgOperation6 = CMG
              cmgOperation6 = cmgOperation6.notifyPicture
              text7 = cmgOperation9.images
              text7 = text7.dict
              workingValue9 = cmgOperation9.images
              workingValue9 = workingValue9.govLarge
              text8 = "Your test result was a "
              text10 = workingValue11
              cmgOperation8 = " ~w~ with "
              workingValue13 = workingValue8.serious
              text = " serious faults and "
              workingValue2 = workingValue8.minor
              text2 = " minor faults."
              text8 = text8 .. text10 .. cmgOperation8 .. workingValue13 .. text .. workingValue2 .. text2
              text10 = "UK Government"
              cmgOperation8 = "Driving Test Result"
              cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
              cmgOperation6 = workingValue8.minor
              if nil ~= cmgOperation6 then
                cmgOperation6 = workingValue8.pass
                if cmgOperation6 then
                  cmgOperation6 = workingValue8.minor
                  if cmgOperation6 > 0 then
                    cmgOperation6 = CMG
                    cmgOperation6 = cmgOperation6.notifyPicture
                    text7 = cmgOperation9.images
                    text7 = text7.dict
                    workingValue9 = cmgOperation9.images
                    workingValue9 = workingValue9.govLarge
                    text8 = "You received "
                    text10 = workingValue8.minor
                    cmgOperation8 = " minors"
                    text8 = text8 .. text10 .. cmgOperation8
                    text10 = "UK Government"
                    cmgOperation8 = "Driving Test Result"
                    cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
                end
              end
              else
                cmgOperation6 = workingValue8.pass
                if not cmgOperation6 then
                  cmgOperation6 = CMG
                  cmgOperation6 = cmgOperation6.notifyPicture
                  text7 = cmgOperation9.images
                  text7 = text7.dict
                  workingValue9 = cmgOperation9.images
                  workingValue9 = workingValue9.govLarge
                  text8 = "Your serious faults were:"
                  text10 = "UK Government"
                  cmgOperation8 = "Driving Test Result"
                  cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
                  cmgOperation6 = workingValue8.seriousReason
                  if nil ~= cmgOperation6 then
                    cmgOperation6 = CMG
                    cmgOperation6 = cmgOperation6.notifyPicture
                    text7 = cmgOperation9.images
                    text7 = text7.dict
                    workingValue9 = cmgOperation9.images
                    workingValue9 = workingValue9.govLarge
                    text8 = "Your serious faults were: "
                    text10 = workingValue8.seriousReason
                    text8 = text8 .. text10
                    text10 = "UK Government"
                    cmgOperation8 = "Driving Test Result"
                    cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
                  end
                  cmgOperation6 = workingValue8.minor
                  if cmgOperation6 > 0 then
                    cmgOperation6 = workingValue8.minorsReason
                    if nil ~= cmgOperation6 then
                      cmgOperation6 = CMG
                      cmgOperation6 = cmgOperation6.notifyPicture
                      text7 = cmgOperation9.images
                      text7 = text7.dict
                      workingValue9 = cmgOperation9.images
                      workingValue9 = workingValue9.govLarge
                      text8 = "You received minors for "
                      text10 = workingValue8.minorsReason
                      text8 = text8 .. text10
                      text10 = "UK Government"
                      cmgOperation8 = "Driving Test Result"
                      cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
                    end
                  end
                end
              end
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          workingValue12(text12, text14, rageUiOperation, rageUiOperation2, workingValue4)
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "alerts"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: modelValue() ===
  function modelValue()
    local localValue12, localValue22, localValue32, dataCollection2, rageUiOperation4, workingValue8, workingValue11, workingValue12, text12, text14, rageUiOperation, rageUiOperation2
    localValue12 = pairs
    localValue22 = rageUiOperation3
    localValue12, localValue22, localValue32, dataCollection2 = localValue12(localValue22)
    for rageUiOperation4, workingValue8 in localValue12, localValue22, localValue32, dataCollection2 do
      workingValue11 = workingValue8.date
      if nil == workingValue11 then
        workingValue8.date = ""
      end
      workingValue11 = RageUI
      workingValue11 = workingValue11.ButtonWithStyle
      workingValue12 = workingValue8.title
      text12 = " "
      text14 = workingValue8.date
      workingValue12 = workingValue12 .. text12 .. text14
      text12 = "Press to read this message"
      text14 = {}
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.BadgeStyle
      rageUiOperation = rageUiOperation.Alert
      text14.RightBadge = rageUiOperation
      rageUiOperation = true

      -- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue13, localValue23, localValue33) ===
      function rageUiOperation2(localValue13, localValue23, localValue33)
        local cmgOperation6, text7, workingValue9, text8, text10, cmgOperation8
        if localValue33 then
          cmgOperation6 = CMG
          cmgOperation6 = cmgOperation6.notifyPicture
          text7 = cmgOperation9.images
          text7 = text7.dict
          workingValue9 = cmgOperation9.images
          workingValue9 = workingValue9.govLarge
          text8 = workingValue8.message
          text10 = "UK Government"
          cmgOperation8 = workingValue8.title
          cmgOperation6(text7, workingValue9, text8, text10, cmgOperation8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue11(workingValue12, text12, text14, rageUiOperation, rageUiOperation2)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10)
end
number2(stateFlag4, number3, number4, cmgOperation5)
number2 = RegisterCommand
stateFlag4 = "dl"
-- Beginner: this function is the command handler for "dl".

-- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
function number3()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "licence"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "tests"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "alerts"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "dvsa"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
number4 = false
-- Beginner: Register a chat/console command. Event/command: "dl".
number2(stateFlag4, number3, number4)
number2 = Citizen
number2 = number2.CreateThread

-- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
function stateFlag4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isDevMode
    localValue1 = localValue1()
    if localValue1 then
      return
    end
    localValue1 = rageUiOperation7.active
    if localValue1 then
      localValue1 = DisableControlAction
      localValue2 = 0
      localValue3 = 75
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = DisableControlAction
      localValue2 = 27
      localValue3 = 75
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = rageUiOperation7.subtitle
      if "" ~= localValue1 then
        localValue1 = RageUI
        localValue1 = localValue1.Text
        localValue2 = {}
        localValue3 = rageUiOperation7.subtitle
        localValue2.message = localValue3
        localValue1(localValue2)
      end
    end
    localValue1 = CMG
    localValue1 = localValue1.getPlayerVehicle
    localValue1, localValue2 = localValue1()
    localValue3 = cmgOperation.full
    if not localValue3 then
      localValue3 = cmgOperation.banned
      if not localValue3 then
        localValue3 = rageUiOperation7.active
        if not localValue3 then
          if 0 ~= localValue1 then
            localValue3 = GetPedInVehicleSeat
            localValue4 = localValue1
            localValue5 = -1
            localValue3 = localValue3(localValue4, localValue5)
            localValue4 = CMG
            localValue4 = localValue4.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            localValue4 = localValue4()
            if localValue3 == localValue4 then
              localValue3 = CMG
              localValue3 = localValue3.inEvent
              localValue3 = localValue3()
              if not localValue3 then
                localValue3 = CMG
                localValue3 = localValue3.isEmergencyService
                localValue3 = localValue3()
                if localValue3 then
                  localValue3 = GetVehicleClass
                  localValue4 = localValue1
                  localValue3 = localValue3(localValue4)
                  if 18 == localValue3 then
                    localValue3 = IsVehicleEngineStarting
                    localValue4 = localValue1
                    localValue3 = localValue3(localValue4)
                    if not localValue3 then
                      localValue3 = GetIsVehicleEngineRunning
                      localValue4 = localValue1
                      localValue3 = localValue3(localValue4)
                    end
                    if localValue3 then
                      localValue3 = SetVehicleEngineOn
                      localValue4 = localValue1
                      localValue5 = false
                      modelValue = true
                      workingValue10 = true
                      localValue3(localValue4, localValue5, modelValue, workingValue10)
                      localValue3 = notify
                      localValue4 = "~r~You require a full valid license to drive an emergency vehicle."
                      -- Beginner: Show a notification to the player.
                      localValue3(localValue4)
                    end
                end
                else
                  localValue3 = Entity
                  localValue4 = localValue1
                  localValue3 = localValue3(localValue4)
                  localValue3 = localValue3.state
                  localValue3 = localValue3.isLearner
                  if not localValue3 then
                    localValue3 = NetworkHasControlOfEntity
                    localValue4 = localValue1
                    localValue3 = localValue3(localValue4)
                    if localValue3 then
                      localValue3 = NetworkGetEntityIsNetworked
                      localValue4 = localValue1
                      localValue3 = localValue3(localValue4)
                      if localValue3 then
                        localValue3 = GetEntityModel
                        localValue4 = localValue1
                        -- Beginner: result below is modelHash.
                        localValue3 = localValue3(localValue4)
                        localValue4 = IsThisModelABicycle
                        localValue5 = localValue3
                        localValue4 = localValue4(localValue5)
                        if not localValue4 then
                          localValue4 = IsThisModelAPlane
                          localValue5 = localValue3
                          localValue4 = localValue4(localValue5)
                          if not localValue4 then
                            localValue4 = IsThisModelAHeli
                            localValue5 = localValue3
                            localValue4 = localValue4(localValue5)
                            if not localValue4 then
                              localValue4 = IsThisModelABoat
                              localValue5 = localValue3
                              localValue4 = localValue4(localValue5)
                              if not localValue4 then
                                localValue4 = CMG
                                localValue4 = localValue4.getServerNum
                                localValue4 = localValue4()
                                if 1 == localValue4 then
                                  localValue4 = CMG
                                  localValue4 = localValue4.getPlayerBucket
                                  localValue4 = localValue4()
                                  if 333 ~= localValue4 then
                                    localValue4 = TriggerServerEvent
                                    localValue5 = "fa83d34371"
                                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fa83d34371".
                                    localValue4(localValue5)
                                    localValue4 = CMG
                                    localValue4 = localValue4.notifyPicture
                                    localValue5 = cmgOperation9.images
                                    localValue5 = localValue5.dict
                                    modelValue = cmgOperation9.images
                                    modelValue = modelValue.lPlate
                                    workingValue10 = cmgOperation9.notifications
                                    workingValue10 = workingValue10.lPlatesAdded
                                    text9 = "CMG Learning Centre"
                                    text11 = "Licence Services"
                                    localValue4(localValue5, modelValue, workingValue10, text9, text11)
                                    localValue4 = CMG
                                    localValue4 = localValue4.notifyPicture
                                    localValue5 = cmgOperation9.images
                                    localValue5 = localValue5.dict
                                    modelValue = cmgOperation9.images
                                    modelValue = modelValue.lPlate
                                    workingValue10 = cmgOperation9.notifications
                                    workingValue10 = workingValue10.lPlatesAdded2
                                    text9 = "CMG Learning Centre"
                                    text11 = "Licence Services"
                                    localValue4(localValue5, modelValue, workingValue10, text9, text11)
                                    localValue4 = Citizen
                                    localValue4 = localValue4.Wait
                                    localValue5 = 2000
                                    localValue4(localValue5)
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
    elseif 0 ~= localValue1 and localValue2 then
      localValue3 = rageUiOperation5
      localValue3 = localValue3[localValue1]
      if localValue3 then
        localValue3 = TriggerServerEvent
        localValue4 = "755cc07672"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "755cc07672".
        localValue3(localValue4)
        localValue3 = Citizen
        localValue3 = localValue3.Wait
        localValue4 = 2000
        localValue3(localValue4)
      end
    end
    localValue3 = Wait
    localValue4 = 100
    localValue3(localValue4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
number2(stateFlag4)

-- === HELPER FUNCTION (decompiler name: number2; parameters: localValue1, localValue2, localValue3) ===
function number2(localValue1, localValue2, localValue3)
  local localValue4, localValue5
  localValue4 = CMG
  localValue4 = localValue4.elsDoesVehicleHaveConfig
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = CMG
    localValue4 = localValue4.elsDoesVehicleHaveLightsEnabled
    localValue5 = localValue1
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = false
      return localValue4
    else
      localValue4 = 230.0
      localValue4 = localValue2 > localValue4
      return localValue4
    end
  end
  localValue4 = localValue3 < localValue2
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue1, localValue2) ===
function stateFlag4(localValue1, localValue2)
  local localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5, stateFlag6, number5, number6
  localValue3 = 1
  localValue4 = 2
  localValue5 = 1
  for modelValue = localValue3, localValue4, localValue5 do
    workingValue10 = false
    text9 = Citizen
    text9 = text9.SetTimeout
    text11 = 450

    -- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
    function text13()
      local localValue12, localValue22
      localValue12 = true
      workingValue10 = localValue12
    end
    text9(text11, text13)
    while not workingValue10 do
      text9 = DrawSpotLight
      text11 = localValue1.x
      text13 = localValue1.y
      createVector3 = localValue1.z
      cmgOperation3 = localValue2.x
      position = localValue2.y
      position2 = localValue2.z
      position3 = 221
      stateFlag = 221
      stateFlag2 = 221
      stateFlag3 = 70.0
      stateFlag5 = 70.0
      stateFlag6 = 2.3
      number5 = 25.0
      number6 = 25.6
      text9(text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5, stateFlag6, number5, number6)
      text9 = Wait
      text11 = 0
      text9(text11)
    end
    text9 = Wait
    text11 = 100
    text9(text11)
    modelValue = modelValue + 1
  end
end

-- === HELPER FUNCTION (decompiler name: number3; parameters: localValue1) ===
function number3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13
  localValue2 = cmgOperation9.cameras
  localValue2 = localValue2[localValue1]
  localValue2.flashed = true
  localValue2 = GetOffsetFromEntityInWorldCoords
  localValue3 = cmgOperation9.cameras
  localValue3 = localValue3[localValue1]
  localValue3 = localValue3.prop
  localValue4 = 0.0
  localValue5 = 12.0
  modelValue = 0.5
  localValue2 = localValue2(localValue3, localValue4, localValue5, modelValue)
  localValue3 = GetGroundZFor_3dCoord
  localValue4 = localValue2.x
  localValue5 = localValue2.y
  modelValue = localValue2.z
  workingValue10 = 0
  text9 = false
  localValue3, localValue4 = localValue3(localValue4, localValue5, modelValue, workingValue10, text9)
  localValue5 = vector3
  modelValue = localValue2.x
  workingValue10 = localValue2.y
  text9 = localValue4
  localValue5 = localValue5(modelValue, workingValue10, text9)
  modelValue = vector3
  workingValue10 = cmgOperation9.cameras
  workingValue10 = workingValue10[localValue1]
  workingValue10 = workingValue10.coords
  workingValue10 = workingValue10.x
  text9 = cmgOperation9.cameras
  text9 = text9[localValue1]
  text9 = text9.coords
  text9 = text9.y
  text11 = cmgOperation9.cameras
  text11 = text11[localValue1]
  text11 = text11.coords
  text11 = text11.z
  text11 = text11 + 3.0
  modelValue = modelValue(workingValue10, text9, text11)
  localValue5 = localValue5 - modelValue
  modelValue = TriggerServerEvent
  workingValue10 = "14d72a10d1"
  text9 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "14d72a10d1".
  modelValue(workingValue10, text9)
  modelValue = Citizen
  modelValue = modelValue.CreateThread

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local localValue12, localValue22, localValue32
    localValue12 = stateFlag4
    localValue22 = cmgOperation9.cameras
    localValue32 = localValue1
    localValue22 = localValue22[localValue32]
    localValue22 = localValue22.coords
    localValue32 = localValue5
    localValue12(localValue22, localValue32)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  modelValue(workingValue10)
  modelValue = Citizen
  modelValue = modelValue.SetTimeout
  workingValue10 = 10000

  -- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
  function text9()
    local localValue12, localValue22
    localValue12 = cmgOperation9.cameras
    localValue22 = localValue1
    localValue12 = localValue12[localValue22]
    localValue12.flashed = false
  end
  modelValue(workingValue10, text9)
  modelValue = PlaySoundFrontend
  workingValue10 = -1
  text9 = "ScreenFlash"
  text11 = "MissionFailedSounds"
  text13 = true
  modelValue(workingValue10, text9, text11, text13)
  modelValue = AnimpostfxPlay
  workingValue10 = "FocusOut"
  text9 = 0
  text11 = false
  modelValue(workingValue10, text9, text11)
  modelValue = Citizen
  modelValue = modelValue.CreateThread

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local localValue12, localValue22
    localValue12 = Wait
    localValue22 = 2000
    localValue12(localValue22)
    localValue12 = AnimpostfxStop
    localValue22 = "FocusOut"
    localValue12(localValue22)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  modelValue(workingValue10)
end

-- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
function number4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = GetPedInVehicleSeat
    localValue3 = localValue1
    localValue4 = -1
    localValue2 = localValue2(localValue3, localValue4)
    localValue3 = CMG
    localValue3 = localValue3.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    if localValue2 == localValue3 then
      localValue2 = CMG
      localValue2 = localValue2.inEvent
      localValue2 = localValue2()
      if not localValue2 then
        localValue2 = GetEntitySpeed
        localValue3 = localValue1
        -- Beginner: result below is speed.
        localValue2 = localValue2(localValue3)
        localValue2 = localValue2 * 2.236936
        localValue3 = CMG
        localValue3 = localValue3.getPlayerCoords
        -- Beginner: result below is playerCoords.
        localValue3 = localValue3()
        if nil ~= localValue3 then
          localValue4 = pairs
          localValue5 = cmgOperation9.cameras
          localValue4, localValue5, modelValue, workingValue10 = localValue4(localValue5)
          for text9, text11 in localValue4, localValue5, modelValue, workingValue10 do
            text13 = text11.flashed
            if not text13 then
              text13 = text11.coords
              text13 = localValue3 - text13
              text13 = #text13
              if text13 < 15.0 then
                createVector3 = number2
                cmgOperation3 = localValue1
                position = localValue2
                position2 = text11.limit
                createVector3 = createVector3(cmgOperation3, position, position2)
                if createVector3 then
                  createVector3 = number3
                  cmgOperation3 = text9
                  createVector3(cmgOperation3)
                end
              end
            end
          end
        end
      end
    end
  end
end
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.createThreadOnTick
text4 = number4
stateFlag8 = "Speed Camera"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation5(text4, stateFlag8)
cmgOperation5 = RegisterNetEvent
text4 = "fd2dfb4859"
-- Beginner: this function handles network event "fd2dfb4859".

-- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: localValue1, localValue2) ===
function stateFlag8(localValue1, localValue2)
  local localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5, stateFlag6, number5, number6
  localValue3 = 1
  localValue4 = 2
  localValue5 = 1
  for modelValue = localValue3, localValue4, localValue5 do
    workingValue10 = false
    text9 = Citizen
    text9 = text9.SetTimeout
    text11 = 450
    -- Beginner: this function handles network event "fd2dfb4859".

    -- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
    function text13()
      local localValue12, localValue22
      localValue12 = true
      workingValue10 = localValue12
    end
    text9(text11, text13)
    while not workingValue10 do
      text9 = DrawSpotLight
      text11 = localValue1.x
      text13 = localValue1.y
      createVector3 = localValue1.z
      cmgOperation3 = localValue2.x
      position = localValue2.y
      position2 = localValue2.z
      position3 = 221
      stateFlag = 221
      stateFlag2 = 221
      stateFlag3 = 70.0
      stateFlag5 = 70.0
      stateFlag6 = 2.3
      number5 = 25.0
      number6 = 25.6
      text9(text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5, stateFlag6, number5, number6)
      text9 = Wait
      text11 = 0
      text9(text11)
    end
    text9 = Wait
    text11 = 100
    text9(text11)
    modelValue = modelValue + 1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fd2dfb4859".
cmgOperation5(text4, stateFlag8)
cmgOperation5 = RegisterNetEvent
text4 = "2d177faeb8"
-- Beginner: this function handles network event "2d177faeb8".

-- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: localValue1) ===
function stateFlag8(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2 = localValue2.getObjectId
  localValue3 = localValue1
  localValue4 = "deletePlate"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue3 = DoesEntityExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = DeleteEntity
      localValue4 = localValue2
      -- Beginner: Delete a GTA entity.
      localValue3(localValue4)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2d177faeb8".
cmgOperation5(text4, stateFlag8)

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5, stateFlag6, number5, number6, stateFlag7
  localValue2 = rageUiOperation5
  localValue2 = localValue2[localValue1]
  if localValue2 then
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = -1652494567
  localValue2 = localValue2(localValue3)
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  localValue4 = CreateObject
  localValue5 = localValue2
  modelValue = localValue3.x
  workingValue10 = localValue3.y
  text9 = localValue3.z
  text11 = false
  text13 = false
  createVector3 = false
  -- Beginner: result below is objectEntity.
  localValue4 = localValue4(localValue5, modelValue, workingValue10, text9, text11, text13, createVector3)
  localValue5 = CreateObject
  modelValue = localValue2
  workingValue10 = localValue3.x
  text9 = localValue3.y
  text11 = localValue3.z
  text13 = false
  createVector3 = false
  cmgOperation3 = false
  -- Beginner: result below is objectEntity.
  localValue5 = localValue5(modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3)
  while true do
    modelValue = DoesEntityExist
    workingValue10 = localValue4
    modelValue = modelValue(workingValue10)
    if modelValue then
      break
    end
    modelValue = DoesEntityExist
    workingValue10 = localValue5
    modelValue = modelValue(workingValue10)
    if modelValue then
      break
    end
    modelValue = Wait
    workingValue10 = 0
    modelValue(workingValue10)
  end
  modelValue = SetModelAsNoLongerNeeded
  workingValue10 = localValue2
  modelValue(workingValue10)
  modelValue = GetEntityBoneIndexByName
  workingValue10 = localValue1
  text9 = "windscreen"
  modelValue = modelValue(workingValue10, text9)
  workingValue10 = AttachEntityToEntity
  text9 = localValue4
  text11 = localValue1
  text13 = modelValue
  createVector3 = 0.0
  cmgOperation3 = 0.3
  position = -0.1
  position2 = -25.0
  position3 = 0.0
  stateFlag = 180.0
  stateFlag2 = true
  stateFlag3 = true
  stateFlag5 = false
  stateFlag6 = true
  number5 = 0
  number6 = true
  -- Beginner: Attach one entity to another entity.
  workingValue10(text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5, stateFlag6, number5, number6)
  workingValue10 = GetEntityBoneIndexByName
  text9 = localValue1
  text11 = "windscreen_r"
  workingValue10 = workingValue10(text9, text11)
  text9 = AttachEntityToEntity
  text11 = localValue5
  text13 = localValue1
  createVector3 = workingValue10
  cmgOperation3 = 0.0
  position = 0.2
  position2 = -0.1
  position3 = -10.0
  stateFlag = 0.0
  stateFlag2 = 0.0
  stateFlag3 = true
  stateFlag5 = true
  stateFlag6 = false
  number5 = true
  number6 = 0
  stateFlag7 = true
  text9(text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5, stateFlag6, number5, number6, stateFlag7)
  text9 = rageUiOperation5
  text11 = {}
  text13 = localValue4
  createVector3 = localValue5
  text11[1] = text13
  text11[2] = createVector3
  text9[localValue1] = text11
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = rageUiOperation5
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = DeleteEntity
    localValue4 = localValue2[1]
    -- Beginner: Delete a GTA entity.
    localValue3(localValue4)
    localValue3 = DeleteEntity
    localValue4 = localValue2[2]
    localValue3(localValue4)
    localValue3 = rageUiOperation5
    localValue3[localValue1] = nil
  end
end
stateFlag8 = AddStateBagChangeHandler
stateFlag9 = "isLearner"
stateFlag10 = nil

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2, localValue3) ===
function workingValue6(localValue1, localValue2, localValue3)
  local localValue4, localValue5, modelValue, workingValue10, text9
  localValue4 = tonumber
  localValue5 = stringsplit
  modelValue = localValue1
  workingValue10 = ":"
  localValue5 = localValue5(modelValue, workingValue10)
  localValue5 = localValue5[2]
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    return
  end
  localValue5 = 0
  while true do
    if localValue5 > 25 then
      return
    else
      modelValue = NetworkDoesEntityExistWithNetworkId
      workingValue10 = localValue4
      modelValue = modelValue(workingValue10)
      if modelValue then
        modelValue = NetworkGetEntityFromNetworkId
        workingValue10 = localValue4
        modelValue = modelValue(workingValue10)
        if 0 ~= modelValue then
          if localValue3 then
            workingValue10 = cmgOperation5
            text9 = modelValue
            -- Beginner: Register a network event handler that the server/other clients can trigger.
            workingValue10(text9)
            break
          end
          workingValue10 = text4
          text9 = modelValue
          workingValue10(text9)
          break
        end
      end
    end
    localValue5 = localValue5 + 1
    modelValue = Citizen
    modelValue = modelValue.Wait
    workingValue10 = 200
    modelValue(workingValue10)
  end
end
stateFlag8(stateFlag9, stateFlag10, workingValue6)
stateFlag8 = Citizen
stateFlag8 = stateFlag8.CreateThread

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
function stateFlag9()
  local localValue1, localValue2, localValue3, localValue4, localValue5, modelValue, workingValue10, text9
  while true do
    localValue1 = pairs
    localValue2 = rageUiOperation5
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
    for localValue5, modelValue in localValue1, localValue2, localValue3, localValue4 do
      workingValue10 = DoesEntityExist
      text9 = localValue5
      workingValue10 = workingValue10(text9)
      if not workingValue10 then
        workingValue10 = DeleteEntity
        text9 = modelValue[1]
        -- Beginner: Delete a GTA entity.
        workingValue10(text9)
        workingValue10 = DeleteEntity
        text9 = modelValue[2]
        workingValue10(text9)
        workingValue10 = rageUiOperation5
        workingValue10[localValue5] = nil
      end
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
stateFlag8(stateFlag9)
stateFlag8 = CMG
stateFlag8 = stateFlag8.DVSA

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function stateFlag9(localValue1, localValue2, localValue3, localValue4, localValue5)
  local modelValue, workingValue10, text9, text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5
  modelValue = CMG
  modelValue = modelValue.loadModel
  workingValue10 = localValue1
  -- Beginner: Request/load a GTA model before spawning or applying it.
  modelValue(workingValue10)
  modelValue = CMG
  modelValue = modelValue.spawnVehicle
  workingValue10 = localValue1
  text9 = localValue3.x
  text11 = localValue3.y
  text13 = localValue3.z
  createVector3 = localValue5
  cmgOperation3 = false
  position = false
  modelValue = modelValue(workingValue10, text9, text11, text13, createVector3, cmgOperation3, position)
  while true do
    workingValue10 = DoesEntityExist
    text9 = modelValue
    workingValue10 = workingValue10(text9)
    if workingValue10 then
      break
    end
    workingValue10 = Wait
    text9 = 0
    workingValue10(text9)
  end
  workingValue10 = SetModelAsNoLongerNeeded
  text9 = localValue1
  workingValue10(text9)
  workingValue10 = CMG
  workingValue10 = workingValue10.loadModel
  text9 = localValue2
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workingValue10(text9)
  workingValue10 = CreatePed
  text9 = 4
  text11 = localValue2
  text13 = localValue3.x
  createVector3 = localValue3.y
  cmgOperation3 = localValue3.z
  position = localValue5
  position2 = false
  position3 = false
  -- Beginner: result below is pedEntity.
  workingValue10 = workingValue10(text9, text11, text13, createVector3, cmgOperation3, position, position2, position3)
  while true do
    text9 = DoesEntityExist
    text11 = workingValue10
    text9 = text9(text11)
    if text9 then
      break
    end
    text9 = Wait
    text11 = 0
    text9(text11)
  end
  text9 = SetModelAsNoLongerNeeded
  text11 = localValue2
  text9(text11)
  text9 = SetEntityInvincible
  text11 = workingValue10
  text13 = true
  text9(text11, text13)
  text9 = SetPedAlertness
  text11 = workingValue10
  text13 = 0.0
  text9(text11, text13)
  text9 = TaskWarpPedIntoVehicle
  text11 = workingValue10
  text13 = modelValue
  createVector3 = -1
  text9(text11, text13, createVector3)
  text9 = SetVehicleEngineOn
  text11 = modelValue
  text13 = true
  createVector3 = true
  cmgOperation3 = false
  text9(text11, text13, createVector3, cmgOperation3)
  while true do
    text9 = IsPedInVehicle
    text11 = workingValue10
    text13 = modelValue
    createVector3 = false
    text9 = text9(text11, text13, createVector3)
    if text9 then
      break
    end
    text9 = Wait
    text11 = 0
    text9(text11)
  end
  text9 = TaskVehicleDriveToCoord
  text11 = workingValue10
  text13 = modelValue
  createVector3 = localValue4.x
  cmgOperation3 = localValue4.y
  position = localValue4.z
  position2 = 30.0
  position3 = 1.0
  stateFlag = localValue1
  stateFlag2 = 786472
  stateFlag3 = 1.0
  stateFlag5 = 1
  text9(text11, text13, createVector3, cmgOperation3, position, position2, position3, stateFlag, stateFlag2, stateFlag3, stateFlag5)
  text9 = Citizen
  text9 = text9.SetTimeout
  text11 = 20000

  -- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
  function text13()
    local localValue12, localValue22
    localValue12 = DoesEntityExist
    localValue22 = modelValue
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue12 = DeleteEntity
      localValue22 = modelValue
      -- Beginner: Delete a GTA entity.
      localValue12(localValue22)
    end
    localValue12 = DoesEntityExist
    localValue22 = workingValue10
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue12 = DeleteEntity
      localValue22 = workingValue10
      localValue12(localValue22)
    end
  end
  text9(text11, text13)
end
stateFlag8.makeVehicleCrash = stateFlag9
stateFlag8 = CMG
stateFlag8 = stateFlag8.DVSA

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1) ===
function stateFlag9(localValue1)
  local localValue2, localValue3
  localValue2 = SendNUIMessage
  localValue3 = {}
  localValue3.transactionType = localValue1
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue2(localValue3)
end
stateFlag8.dvsaSound = stateFlag9
stateFlag8 = RegisterNetEvent
stateFlag9 = "15bdccee8a"
-- Beginner: this function handles network event "15bdccee8a".

-- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: localValue1) ===
function stateFlag10(localValue1)
  local localValue2
  rageUiOperation6 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "15bdccee8a".
stateFlag8(stateFlag9, stateFlag10)
stateFlag8 = AddEventHandler
stateFlag9 = "919aefda0c"
-- Beginner: this function runs when client event "919aefda0c" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: localValue1) ===
function stateFlag10(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = rageUiOperation6
  if localValue2 then
    localValue2 = rageUiOperation6
    if localValue1 ~= localValue2 then
      localValue2 = text3
      localValue2()
      localValue2 = number
      localValue3 = false
      localValue4 = ""
      localValue5 = ""
      localValue2(localValue3, localValue4, localValue5)
      localValue2 = notify
      localValue3 = "~r~Test cancelled due to unexpected change in bucket."
      -- Beginner: Show a notification to the player.
      localValue2(localValue3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "919aefda0c".
stateFlag8(stateFlag9, stateFlag10)
stateFlag8 = CMG
stateFlag8 = stateFlag8.registerDevMenuItems
stateFlag9 = "DVSA"

-- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: none) ===
function stateFlag10()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Quick Start Driving Test"
  localValue3 = "Starts the driving test instantly (no payment, skips intro dialogue)."
  localValue4 = true

  -- === HELPER FUNCTION: localValue5(localValue12, localValue22, localValue32) ===
  function localValue5(localValue12, localValue22, localValue32)
    local dataCollection2, rageUiOperation4
    if localValue32 then
      dataCollection2 = TriggerServerEvent
      rageUiOperation4 = "fa5a2f254a"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fa5a2f254a".
      dataCollection2(rageUiOperation4)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, localValue4, localValue5)
end
stateFlag8(stateFlag9, stateFlag10)
