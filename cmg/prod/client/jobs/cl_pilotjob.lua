--[[
    LEVEL 1 BEGINNER GUIDE — Pilotjob
    ======================================

    File: cmg/prod/client/jobs/cl_pilotjob.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Pilotjob feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 69
      * Background threads: 0
      * Always-running loops: 31
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
local cmgOperation, text, dataCollection3, stateFlag20, workingValue24, workingValue29, workingValue32, stateFlag23, stateFlag25, stateFlag27, stateFlag, stateFlag3, workingValue, stateFlag8, workingValue2, workingValue3, workingValue4, number5, number7, number9, number12, dataCollection, dataCollection2, workingValue5, workingValue6, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, createVector3, number20, eventHandlerRegistration, cmgOperation3, text2, rageUiOperation, text3, text4, rageUiOperation2, rageUiOperation3, text5, text6, workingValue25, workingValue26, eventHandler, eventHandler2, text7, workingValue27, cmgOperation4, workingValue28, cmgOperation6, workingValue30, cmgOperation7, backgroundThread, cmgOperation8, workingValue31, eventHandler3, text8, number25, number26, cmgOperation10, text9, number27, dataCollection4, number28, cmgOperation11, text10, workingValue35, dataCollection5, workingValue36, workingValue37, workingValue38, workingValue39
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text = "cfg/cfg_pilotjob"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text)
globalOnPilotDuty = false
text = cmgOperation.fuelStations
dataCollection3 = {}
stateFlag20 = false
workingValue24 = nil
workingValue29 = nil
workingValue32 = nil
stateFlag23 = false
stateFlag25 = false
stateFlag27 = false
stateFlag = false
stateFlag3 = false
workingValue = nil
stateFlag8 = false
workingValue2 = nil
workingValue3 = nil
workingValue4 = nil
number5 = 0
number7 = 150
number9 = 0
number12 = 0
dataCollection = {}
dataCollection.x = 0.932
dataCollection.y = 0.77
dataCollection.width = 0.03
dataCollection.height = 0.4
dataCollection2 = {}
workingValue5 = dataCollection.x
dataCollection2.x = workingValue5
workingValue5 = dataCollection.y
dataCollection2.y = workingValue5
workingValue5 = dataCollection.width
dataCollection2.width = workingValue5
workingValue5 = dataCollection.height
dataCollection2.height = workingValue5
workingValue5 = {}
workingValue6 = dataCollection.x
workingValue5.x = workingValue6
workingValue6 = dataCollection.y
workingValue8 = dataCollection.height
workingValue8 = workingValue8 / 2
workingValue6 = workingValue6 - workingValue8
workingValue5.y = workingValue6
workingValue6 = dataCollection.width
workingValue5.width = workingValue6
workingValue5.height = 0.002
workingValue6 = {}
workingValue8 = dataCollection.x
workingValue6.x = workingValue8
workingValue8 = dataCollection.y
workingValue9 = dataCollection.height
workingValue9 = workingValue9 / 2
workingValue8 = workingValue8 + workingValue9
workingValue6.y = workingValue8
workingValue8 = dataCollection.width
workingValue6.width = workingValue8
workingValue8 = workingValue5.height
workingValue6.height = workingValue8
workingValue8 = {}
workingValue9 = dataCollection.x
workingValue10 = dataCollection.width
workingValue10 = workingValue10 / 2
workingValue9 = workingValue9 - workingValue10
workingValue8.x = workingValue9
workingValue9 = dataCollection.y
workingValue8.y = workingValue9
workingValue9 = workingValue5.height
workingValue9 = workingValue9 / 2
workingValue8.width = workingValue9
workingValue9 = dataCollection.height
workingValue10 = workingValue5.height
workingValue9 = workingValue9 + workingValue10
workingValue8.height = workingValue9
workingValue9 = {}
workingValue10 = dataCollection.x
workingValue11 = dataCollection.width
workingValue11 = workingValue11 / 2
workingValue10 = workingValue10 + workingValue11
workingValue9.x = workingValue10
workingValue10 = dataCollection.y
workingValue9.y = workingValue10
workingValue10 = workingValue5.height
workingValue10 = workingValue10 / 2
workingValue9.width = workingValue10
workingValue10 = dataCollection.height
workingValue11 = workingValue5.height
workingValue10 = workingValue10 + workingValue11
workingValue9.height = workingValue10
workingValue10 = {}
workingValue10.x = 0.965
workingValue10.y = 0.77
workingValue10.width = 0.03
workingValue10.height = 0.4
workingValue11 = {}
workingValue12 = workingValue10.x
workingValue11.x = workingValue12
workingValue11.y = 0
workingValue12 = workingValue10.width
workingValue11.width = workingValue12
workingValue12 = number5 / 150
workingValue13 = workingValue10.height
workingValue12 = workingValue12 * workingValue13
workingValue11.height = workingValue12
workingValue12 = workingValue10.y
workingValue13 = workingValue10.height
workingValue13 = workingValue13 / 2
workingValue14 = workingValue11.height
workingValue14 = workingValue14 / 2
workingValue13 = workingValue13 - workingValue14
workingValue12 = workingValue12 + workingValue13
workingValue11.y = workingValue12
workingValue12 = {}
workingValue13 = workingValue10.x
workingValue12.x = workingValue13
workingValue13 = workingValue10.y
workingValue14 = workingValue10.height
workingValue14 = workingValue14 / 2
workingValue13 = workingValue13 - workingValue14
workingValue12.y = workingValue13
workingValue13 = workingValue10.width
workingValue12.width = workingValue13
workingValue12.height = 0.002
workingValue13 = {}
workingValue14 = workingValue10.x
workingValue13.x = workingValue14
workingValue14 = workingValue10.y
workingValue15 = workingValue10.height
workingValue15 = workingValue15 / 2
workingValue14 = workingValue14 + workingValue15
workingValue13.y = workingValue14
workingValue14 = workingValue10.width
workingValue13.width = workingValue14
workingValue14 = workingValue12.height
workingValue13.height = workingValue14
workingValue14 = {}
workingValue15 = workingValue10.x
workingValue16 = workingValue10.width
workingValue16 = workingValue16 / 2
workingValue15 = workingValue15 - workingValue16
workingValue14.x = workingValue15
workingValue15 = workingValue10.y
workingValue14.y = workingValue15
workingValue15 = workingValue12.height
workingValue15 = workingValue15 / 2
workingValue14.width = workingValue15
workingValue15 = workingValue10.height
workingValue16 = workingValue12.height
workingValue15 = workingValue15 + workingValue16
workingValue14.height = workingValue15
workingValue15 = {}
workingValue16 = workingValue10.x
workingValue17 = workingValue10.width
workingValue17 = workingValue17 / 2
workingValue16 = workingValue16 + workingValue17
workingValue15.x = workingValue16
workingValue16 = workingValue10.y
workingValue15.y = workingValue16
workingValue16 = workingValue12.height
workingValue16 = workingValue16 / 2
workingValue15.width = workingValue16
workingValue16 = workingValue10.height
workingValue17 = workingValue12.height
workingValue16 = workingValue16 + workingValue17
workingValue15.height = workingValue16
workingValue16 = {}
workingValue16.x = 0.899
workingValue16.y = 0.77
workingValue16.width = 0.03
workingValue16.height = 0.4
workingValue17 = {}
workingValue18 = workingValue16.x
workingValue17.x = workingValue18
workingValue18 = workingValue16.y
workingValue17.y = workingValue18
workingValue18 = workingValue16.width
workingValue17.width = workingValue18
workingValue18 = workingValue16.height
workingValue17.height = workingValue18
workingValue18 = {}
workingValue19 = workingValue16.x
workingValue18.x = workingValue19
workingValue19 = workingValue16.y
workingValue20 = workingValue16.height
workingValue20 = workingValue20 / 2
workingValue19 = workingValue19 - workingValue20
workingValue18.y = workingValue19
workingValue19 = workingValue16.width
workingValue18.width = workingValue19
workingValue18.height = 0.002
workingValue19 = {}
workingValue20 = workingValue16.x
workingValue19.x = workingValue20
workingValue20 = workingValue16.y
workingValue21 = workingValue16.height
workingValue21 = workingValue21 / 2
workingValue20 = workingValue20 + workingValue21
workingValue19.y = workingValue20
workingValue20 = workingValue16.width
workingValue19.width = workingValue20
workingValue20 = workingValue18.height
workingValue19.height = workingValue20
workingValue20 = {}
workingValue21 = workingValue16.x
workingValue22 = workingValue16.width
workingValue22 = workingValue22 / 2
workingValue21 = workingValue21 - workingValue22
workingValue20.x = workingValue21
workingValue21 = workingValue16.y
workingValue20.y = workingValue21
workingValue21 = workingValue18.height
workingValue21 = workingValue21 / 2
workingValue20.width = workingValue21
workingValue21 = workingValue16.height
workingValue22 = workingValue18.height
workingValue21 = workingValue21 + workingValue22
workingValue20.height = workingValue21
workingValue21 = {}
workingValue22 = workingValue16.x
createVector3 = workingValue16.width
createVector3 = createVector3 / 2
workingValue22 = workingValue22 + createVector3
workingValue21.x = workingValue22
workingValue22 = workingValue16.y
workingValue21.y = workingValue22
workingValue22 = workingValue18.height
workingValue22 = workingValue22 / 2
workingValue21.width = workingValue22
workingValue22 = workingValue16.height
createVector3 = workingValue18.height
workingValue22 = workingValue22 + createVector3
workingValue21.height = workingValue22
workingValue22 = 0
createVector3 = vector3
number20 = 0.0
eventHandlerRegistration = 0.0
cmgOperation3 = 0.0
createVector3 = createVector3(number20, eventHandlerRegistration, cmgOperation3)
number20 = 0
eventHandlerRegistration = RMenu
eventHandlerRegistration = eventHandlerRegistration.Add
cmgOperation3 = "CMGpilotJob"
text2 = "atcMenu"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text3 = ""
text4 = "Air Traffic Communications"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
text5 = "cmg_pilotjob"
text6 = "cmg_pilotjob"
rageUiOperation, text3, text4, rageUiOperation2, rageUiOperation3, text5, text6, workingValue25, workingValue26, eventHandler, eventHandler2, text7, workingValue27, cmgOperation4, workingValue28, cmgOperation6, workingValue30, cmgOperation7, backgroundThread, cmgOperation8, workingValue31, eventHandler3, text8, number25, number26, cmgOperation10, text9, number27, dataCollection4, number28, cmgOperation11, text10, workingValue35, dataCollection5, workingValue36, workingValue37, workingValue38, workingValue39 = rageUiOperation(text3, text4, rageUiOperation2, rageUiOperation3, text5, text6)
eventHandlerRegistration(cmgOperation3, text2, rageUiOperation, text3, text4, rageUiOperation2, rageUiOperation3, text5, text6, workingValue25, workingValue26, eventHandler, eventHandler2, text7, workingValue27, cmgOperation4, workingValue28, cmgOperation6, workingValue30, cmgOperation7, backgroundThread, cmgOperation8, workingValue31, eventHandler3, text8, number25, number26, cmgOperation10, text9, number27, dataCollection4, number28, cmgOperation11, text10, workingValue35, dataCollection5, workingValue36, workingValue37, workingValue38, workingValue39)
eventHandlerRegistration = AddEventHandler
cmgOperation3 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10, stateFlag15, stateFlag17, stateFlag18, stateFlag19, workingValue7, number14, number15, number16
  localValue3 = cmgOperation.startJobLocs
  if localValue2 then
    number19 = 1
    number21 = #localValue3
    number23 = 1
    for workingValue33 = number19, number21, number23 do
      cmgOperation12 = tCMG
      cmgOperation12 = cmgOperation12.addMarker
      position2 = localValue3[workingValue33]
      position2 = position2.coords
      position2 = position2.x
      position3 = localValue3[workingValue33]
      position3 = position3.coords
      position3 = position3.y
      position = localValue3[workingValue33]
      position = position.coords
      position = position.z
      stateFlag4 = 1.0
      stateFlag6 = 1.0
      stateFlag9 = 1.3
      number2 = 10
      number3 = 255
      number4 = 81
      number6 = 170
      number8 = 50
      number10 = 33
      stateFlag15 = false
      stateFlag17 = false
      stateFlag18 = true
      stateFlag19 = nil
      workingValue7 = nil
      number14 = 0.0
      number15 = 0.0
      number16 = 0.0
      -- Beginner: Create a world marker.
      cmgOperation12(position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10, stateFlag15, stateFlag17, stateFlag18, stateFlag19, workingValue7, number14, number15, number16)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(cmgOperation3, text2)

-- === HELPER FUNCTION: eventHandlerRegistration(...) ===
function eventHandlerRegistration(...)
  local localValue1, localValue2, localValue3
  localValue1 = print
  localValue2 = "[Pilot Job]"
  localValue3 = ...
  localValue1(localValue2, localValue3)
end
cmgOperation3 = nil
text2 = nil
rageUiOperation = nil
text3 = nil
text4 = nil
rageUiOperation2 = nil
rageUiOperation3 = nil
text5 = nil
text6 = nil

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1) ===
function workingValue25(localValue1)
  local localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8
  localValue2 = CMG
  localValue2 = localValue2.arePilotJobGuidesDisabled
  localValue2 = localValue2()
  if localValue2 then
    return
  end
  localValue2 = GetActiveScreenResolution
  localValue2, localValue3 = localValue2()
  number19 = localValue3 / localValue2
  number21 = 0.08
  if localValue1 then
    number23 = 0.35
    if number23 then
      goto continueAtStep18
    end
  end
  number23 = 0.65
  ::continueAtStep18::
  if localValue1 then
    workingValue33 = -number21
    workingValue33 = workingValue33 * number19
    if workingValue33 then
      goto continueAtStep27
    end
  end
  workingValue33 = number21 * number19
  ::continueAtStep27::
  cmgOperation12 = DrawSprite
  position2 = "pilotjob"
  position3 = "arrow"
  position = number23
  stateFlag4 = 0.5
  stateFlag6 = workingValue33
  stateFlag9 = number21
  number2 = 0.0
  number3 = 255
  number4 = 255
  number6 = 255
  number8 = 255
  cmgOperation12(position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8)
end

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue1, localValue2) ===
function workingValue26(localValue1, localValue2)
  local localValue3, number19, number21, number23
  localValue3 = nil
  if localValue1 < localValue2 then
    localValue3 = localValue2 - localValue1
  else
    number19 = 360
    number19 = number19 - localValue1
    localValue3 = number19 + localValue2
  end
  number19 = nil
  if localValue2 < localValue1 then
    number19 = localValue1 - localValue2
  else
    number21 = 360
    number21 = number21 - localValue2
    number19 = number21 + localValue1
  end
  number21 = localValue3
  number23 = number19
  return number21, number23
end
eventHandler = Citizen
eventHandler = eventHandler.CreateThread

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, localValue3
  localValue1 = RequestStreamedTextureDict
  localValue2 = "pilotjob"
  localValue3 = false
  localValue1(localValue2, localValue3)
  while true do
    localValue1 = HasStreamedTextureDictLoaded
    localValue2 = "pilotjob"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(eventHandler2)
eventHandler = RegisterNetEvent
eventHandler2 = "02292c1ca8"
-- Beginner: this function handles network event "02292c1ca8".

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1, localValue2, localValue3) ===
function text7(localValue1, localValue2, localValue3)
  local number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10, stateFlag15, stateFlag17, stateFlag18, stateFlag19, workingValue7, number14, number15, number16, number17
  workingValue3 = localValue2
  workingValue2 = localValue3
  number19 = cmgOperation.planeSpawnLocs
  number21 = cmgOperation.tugSpawnLocs
  workingValue24 = localValue1
  globalOnPilotDuty = true
  number23 = CMG
  number23 = number23.getModelGender
  number23 = number23()
  if "male" == number23 then
    number23 = CMG
    number23 = number23.loadCustomisationPreset
    workingValue33 = "PilotMale"
    number23(workingValue33)
  else
    number23 = CMG
    number23 = number23.loadCustomisationPreset
    workingValue33 = "PilotFemale"
    number23(workingValue33)
  end
  number23 = Citizen
  number23 = number23.Wait
  workingValue33 = 500
  number23(workingValue33)
  number23 = CMG
  number23 = number23.requestEntitySpawn
  workingValue33 = "pilotjob_airtug"
  number23(workingValue33)
  number23 = CMG
  number23 = number23.spawnVehicle
  workingValue33 = "airtug"
  cmgOperation12 = number21[localValue3]
  cmgOperation12 = cmgOperation12.coords
  cmgOperation12 = cmgOperation12.x
  position2 = number21[localValue3]
  position2 = position2.coords
  position2 = position2.y
  position3 = number21[localValue3]
  position3 = position3.coords
  position3 = position3.z
  position = number21[localValue3]
  position = position.h
  stateFlag4 = true
  stateFlag6 = true
  stateFlag9 = false
  number23 = number23(workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9)
  workingValue32 = number23
  number23 = SetVehicleColours
  workingValue33 = workingValue32
  cmgOperation12 = 89
  position2 = 0
  number23(workingValue33, cmgOperation12, position2)
  number23 = SetNewWaypoint
  workingValue33 = number19[localValue2]
  workingValue33 = workingValue33.coords
  workingValue33 = workingValue33.x
  cmgOperation12 = number19[localValue2]
  cmgOperation12 = cmgOperation12.coords
  cmgOperation12 = cmgOperation12.y
  number23(workingValue33, cmgOperation12)
  number23 = CMG
  number23 = number23.drawPlaneScaleForm
  workingValue33 = "~g~COLLECT PLANE"
  cmgOperation12 = "Collect your plane from the waypoint on your map"
  number23(workingValue33, cmgOperation12)
  number23 = "Collect your ~b~plane~w~ from the ~y~airport~w~."
  workingValue4 = number23
  while true do
    number23 = number19[localValue2]
    number23 = number23.coords
    workingValue33 = CMG
    workingValue33 = workingValue33.getPlayerCoords
    -- Beginner: result below is playerCoords.
    workingValue33 = workingValue33()
    number23 = number23 - workingValue33
    number23 = #number23
    workingValue33 = 250
    if not (number23 > workingValue33) then
      break
    end
    number23 = print
    workingValue33 = "Pilot Job - waiting to get to spawn location"
    number23(workingValue33)
    number23 = Citizen
    number23 = number23.Wait
    workingValue33 = 500
    number23(workingValue33)
  end
  number23 = CMG
  number23 = number23.requestEntitySpawn
  workingValue33 = "pilotjob_plane"
  number23(workingValue33)
  number23 = CMG
  number23 = number23.spawnVehicle
  workingValue33 = localValue1.spawnName
  cmgOperation12 = number19[localValue2]
  cmgOperation12 = cmgOperation12.coords
  cmgOperation12 = cmgOperation12.x
  position2 = number19[localValue2]
  position2 = position2.coords
  position2 = position2.y
  position3 = number19[localValue2]
  position3 = position3.coords
  position3 = position3.z
  position = number19[localValue2]
  position = position.h
  stateFlag4 = false
  stateFlag6 = true
  stateFlag9 = false
  number23 = number23(workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9)
  workingValue29 = number23
  number23 = TriggerServerEvent
  workingValue33 = "1e0bbaf6cd"
  cmgOperation12 = localValue1.spawnName
  position2 = "pilot_job"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
  number23(workingValue33, cmgOperation12, position2)
  number23 = print
  workingValue33 = "Pilot Job - Spawned"
  cmgOperation12 = workingValue29
  number23(workingValue33, cmgOperation12)
  number23 = SetLocalPlayerAsGhost
  workingValue33 = true
  number23(workingValue33)
  number23 = CMG
  number23 = number23.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  number23 = number23()
  workingValue33 = SetNetworkVehicleAsGhost
  cmgOperation12 = number23
  position2 = true
  workingValue33(cmgOperation12, position2)
  workingValue33 = SetEntityAlpha
  cmgOperation12 = number23
  position2 = 255
  position3 = false
  workingValue33(cmgOperation12, position2, position3)
  workingValue33 = GetOffsetFromEntityInWorldCoords
  cmgOperation12 = workingValue29
  position2 = 0.0
  position3 = 0.0
  position = 6.0
  workingValue33 = workingValue33(cmgOperation12, position2, position3, position)
  cmgOperation12 = print
  position2 = "Pilot Job - planeCoords"
  position3 = workingValue33
  cmgOperation12(position2, position3)
  cmgOperation12 = tCMG
  cmgOperation12 = cmgOperation12.setNamedMarker
  position2 = "planeMarker"
  position3 = workingValue33.x
  position = workingValue33.y
  stateFlag4 = workingValue33.z
  stateFlag6 = 2.0
  stateFlag9 = 2.0
  number2 = 2.3
  number3 = 10
  number4 = 255
  number6 = 81
  number8 = 255
  number10 = 250
  stateFlag15 = 0
  stateFlag17 = false
  stateFlag18 = true
  stateFlag19 = true
  workingValue7 = nil
  number14 = nil
  number15 = 0.0
  number16 = 0.0
  number17 = 0.0
  cmgOperation12(position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10, stateFlag15, stateFlag17, stateFlag18, stateFlag19, workingValue7, number14, number15, number16, number17)
  while true do
    cmgOperation12 = IsPedInVehicle
    position2 = CMG
    position2 = position2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    position2 = position2()
    position3 = workingValue29
    position = false
    cmgOperation12 = cmgOperation12(position2, position3, position)
    if cmgOperation12 then
      break
    end
    cmgOperation12 = DoesEntityExist
    position2 = workingValue29
    cmgOperation12 = cmgOperation12(position2)
    if cmgOperation12 then
      cmgOperation12 = GetVehicleEngineHealth
      position2 = workingValue29
      cmgOperation12 = cmgOperation12(position2)
      if cmgOperation12 <= 0 then
        cmgOperation12 = nil
        workingValue4 = cmgOperation12
        cmgOperation12 = tCMG
        cmgOperation12 = cmgOperation12.removeNamedMarker
        position2 = "planeMarker"
        cmgOperation12(position2)
        cmgOperation12 = DoesEntityExist
        position2 = workingValue32
        cmgOperation12 = cmgOperation12(position2)
        if cmgOperation12 then
          cmgOperation12 = DeleteEntity
          position2 = workingValue32
          -- Beginner: Delete a GTA entity.
          cmgOperation12(position2)
        end
        cmgOperation12 = DeleteEntity
        position2 = workingValue29
        cmgOperation12(position2)
        cmgOperation12 = TriggerServerEvent
        position2 = "8ae979e044"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ae979e044".
        cmgOperation12(position2)
        return
      end
    else
      cmgOperation12 = nil
      workingValue4 = cmgOperation12
      cmgOperation12 = tCMG
      cmgOperation12 = cmgOperation12.removeNamedMarker
      position2 = "planeMarker"
      cmgOperation12(position2)
      cmgOperation12 = DoesEntityExist
      position2 = workingValue32
      cmgOperation12 = cmgOperation12(position2)
      if cmgOperation12 then
        cmgOperation12 = DeleteEntity
        position2 = workingValue32
        -- Beginner: Delete a GTA entity.
        cmgOperation12(position2)
      end
      cmgOperation12 = TriggerServerEvent
      position2 = "8ae979e044"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ae979e044".
      cmgOperation12(position2)
      return
    end
    cmgOperation12 = Citizen
    cmgOperation12 = cmgOperation12.Wait
    position2 = 1000
    cmgOperation12(position2)
  end
  cmgOperation12 = tCMG
  cmgOperation12 = cmgOperation12.removeNamedMarker
  position2 = "planeMarker"
  cmgOperation12(position2)
  cmgOperation12 = DeleteEntity
  position2 = workingValue32
  -- Beginner: Delete a GTA entity.
  cmgOperation12(position2)
  cmgOperation12 = nil
  workingValue4 = cmgOperation12
  cmgOperation12 = true
  stateFlag25 = cmgOperation12
  cmgOperation12 = CMG
  cmgOperation12 = cmgOperation12.getPilotingFuelCapacityPercent
  if cmgOperation12 then
    cmgOperation12 = CMG
    cmgOperation12 = cmgOperation12.getPilotingFuelCapacityPercent
    cmgOperation12 = cmgOperation12()
    if cmgOperation12 then
      goto continueAtStep252
    end
  end
  cmgOperation12 = 0
  ::continueAtStep252::
  position2 = math
  position2 = position2.floor
  position3 = cmgOperation12 / 100
  position3 = 1 + position3
  position3 = 150 * position3
  position2 = position2(position3)
  number7 = position2
  position2 = number7
  number5 = position2
  position2 = TriggerEvent
  position3 = "671af762e6"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "671af762e6".
  position2(position3)
  position2 = TriggerEvent
  position3 = "b0652830d5"
  position2(position3)
  position2 = Citizen
  position2 = position2.Wait
  position3 = 10000
  position2(position3)
  position2 = SetEntityProofs
  position3 = workingValue29
  position = false
  stateFlag4 = false
  stateFlag6 = false
  stateFlag9 = false
  number2 = false
  number3 = false
  number4 = false
  number6 = false
  position2(position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6)
  position2 = TriggerServerEvent
  position3 = "229bf66229"
  position = localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "229bf66229".
  position2(position3, position)
  position2 = TriggerServerEvent
  position3 = "e1cb2b3c18"
  position = localValue3
  position2(position3, position)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "02292c1ca8".
eventHandler(eventHandler2, text7)
eventHandler = RegisterNetEvent
eventHandler2 = "5f151ea19c"
-- Beginner: this function handles network event "5f151ea19c".

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1, localValue2) ===
function text7(localValue1, localValue2)
  local localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6
  localValue3 = tCMG
  localValue3 = localValue3.removeArea
  number19 = "dropOffPassengers_"
  localValue3(number19)
  while true do
    localValue3 = IsPedInVehicle
    number19 = CMG
    number19 = number19.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    number19 = number19()
    number21 = workingValue29
    number23 = false
    localValue3 = localValue3(number19, number21, number23)
    if localValue3 then
      break
    end
    localValue3 = DoesEntityExist
    number19 = workingValue29
    localValue3 = localValue3(number19)
    if localValue3 then
      localValue3 = GetVehicleEngineHealth
      number19 = workingValue29
      localValue3 = localValue3(number19)
      if localValue3 <= 0 then
        localValue3 = eventHandlerRegistration
        number19 = "CMG:pilotJobPickupLoc -> engine health (1)"
        number21 = workingValue29
        -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobPickupLoc -> engine health (1)".
        localValue3(number19, number21)
        return
      end
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    number19 = 500
    localValue3(number19)
  end
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  number19 = 2000
  localValue3(number19)
  localValue3 = SetVehicleEngineOn
  number19 = CMG
  number19 = number19.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  number19 = number19()
  number21 = true
  number23 = false
  workingValue33 = false
  localValue3(number19, number21, number23, workingValue33)
  localValue3 = SetVehicleDoorsShut
  number19 = CMG
  number19 = number19.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  number19 = number19()
  number21 = false
  localValue3(number19, number21)
  localValue3 = FreezeEntityPosition
  number19 = CMG
  number19 = number19.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  number19 = number19()
  number21 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(number19, number21)
  localValue3 = CMG
  localValue3 = localValue3.drawPlaneScaleForm
  number19 = "~g~COLLECT PASSENGERS"
  number21 = string
  number21 = number21.format
  number23 = "Collect Passengers from %s"
  workingValue33 = localValue1.name
  number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6 = number21(number23, workingValue33)
  localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
  localValue3 = number5
  number19 = number7
  number19 = number19 * 0.2
  if localValue3 < number19 then
    localValue3 = tCMG
    localValue3 = localValue3.notify
    number19 = "~r~Remember to fuel your plane!"
    -- Beginner: Show a notification to the player.
    localValue3(number19)
  end
  localValue3 = localValue1.coords
  number19 = CMG
  number19 = number19.getPlayerCoords
  -- Beginner: result below is playerCoords.
  number19 = number19()
  localValue3 = localValue3 - number19
  localValue3 = #localValue3
  number19 = 1000
  if localValue3 > number19 then
    localValue3 = text4
    number19 = localValue1
    localValue3 = localValue3(number19)
    if not localValue3 then
      localValue3 = eventHandlerRegistration
      number19 = "CMG:pilotJobPickupLoc -> not aircraftTakeOffAtc"
      number21 = json
      number21 = number21.encode
      number23 = localValue1
      number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6 = number21(number23)
      -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobPickupLoc -> not aircraftTakeOffAtc".
      localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
      return
    end
  end
  localValue3 = SetNewWaypoint
  number19 = localValue1.coords
  number19 = number19.x
  number21 = localValue1.coords
  number21 = number21.y
  localValue3(number19, number21)
  localValue3 = "Fly to the destination ~y~airport~w~."
  workingValue4 = localValue3
  localValue3 = localValue1.coords
  number19 = CMG
  number19 = number19.getPlayerCoords
  -- Beginner: result below is playerCoords.
  number19 = number19()
  localValue3 = localValue3 - number19
  localValue3 = #localValue3
  number19 = 1500
  if localValue3 > number19 then
    while true do
      localValue3 = localValue1.coords
      number19 = CMG
      number19 = number19.getPlayerCoords
      -- Beginner: result below is playerCoords.
      number19 = number19()
      localValue3 = localValue3 - number19
      localValue3 = #localValue3
      number19 = 1500
      if not (localValue3 > number19) then
        break
      end
      localValue3 = CMG
      localValue3 = localValue3.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue3 = localValue3()
      number19 = GetEntityHeading
      number21 = workingValue29
      -- Beginner: result below is heading.
      number19 = number19(number21)
      number21 = 360.0
      number19 = number21 - number19
      number21 = math
      number21 = number21.deg
      number23 = math
      number23 = number23.atan
      workingValue33 = localValue1.coords
      workingValue33 = workingValue33.x
      cmgOperation12 = localValue3.x
      workingValue33 = workingValue33 - cmgOperation12
      cmgOperation12 = localValue1.coords
      cmgOperation12 = cmgOperation12.y
      position2 = localValue3.y
      cmgOperation12 = cmgOperation12 - position2
      number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6 = number23(workingValue33, cmgOperation12)
      number21 = number21(number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
      number21 = number21 % 360
      number23 = math
      number23 = number23.abs
      workingValue33 = number19 - number21
      number23 = number23(workingValue33)
      if number23 > 25 then
        number23 = workingValue26
        workingValue33 = number21
        cmgOperation12 = number19
        number23, workingValue33 = number23(workingValue33, cmgOperation12)
        cmgOperation12 = workingValue25
        position2 = number23 < workingValue33
        cmgOperation12(position2)
      end
      number23 = DoesEntityExist
      workingValue33 = workingValue29
      number23 = number23(workingValue33)
      if number23 then
        number23 = GetVehicleEngineHealth
        workingValue33 = workingValue29
        number23 = number23(workingValue33)
        if number23 <= 0 then
          number23 = eventHandlerRegistration
          workingValue33 = "CMG:pilotJobPickupLoc -> engine health (2)"
          cmgOperation12 = workingValue29
          -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobPickupLoc -> engine health (2)".
          number23(workingValue33, cmgOperation12)
          number23 = nil
          workingValue4 = number23
          return
        end
      else
        number23 = eventHandlerRegistration
        workingValue33 = "CMG:pilotJobPickupLoc -> no vehicle"
        cmgOperation12 = workingValue29
        number23(workingValue33, cmgOperation12)
        number23 = nil
        workingValue4 = number23
        return
      end
      number23 = Citizen
      number23 = number23.Wait
      workingValue33 = 0
      number23(workingValue33)
    end
    localValue3 = text3
    number19 = localValue1
    localValue3 = localValue3(number19)
    if not localValue3 then
      localValue3 = eventHandlerRegistration
      number19 = "CMG:pilotJobPickupLoc -> not aircraftLandingAtc"
      number21 = json
      number21 = number21.encode
      number23 = localValue1
      number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6 = number21(number23)
      -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobPickupLoc -> not aircraftLandingAtc".
      localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
      localValue3 = nil
      workingValue4 = localValue3
      return
    end
  end
  localValue3 = nil
  workingValue4 = localValue3
  localValue3 = rageUiOperation
  number19 = localValue1
  localValue3 = localValue3(number19)
  if not localValue3 then
    localValue3 = eventHandlerRegistration
    number19 = "passengerCollectionAtc -> not passengerCollectionAtc"
    number21 = json
    number21 = number21.encode
    number23 = localValue1
    number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6 = number21(number23)
    localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
    return
  end

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, cmgOperation2
    localValue12 = drawNativeNotification
    cmgOperation2 = "Press ~INPUT_CONTEXT~ to collect"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue12(cmgOperation2)
  end

  -- === HELPER FUNCTION (decompiler name: number19; parameters: none) ===
  function number19()
    local localValue12, cmgOperation2
  end

  -- === HELPER FUNCTION (decompiler name: number21; parameters: none) ===
  function number21()
    local localValue12, cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26
    localValue12 = IsControlJustPressed
    cmgOperation2 = 0
    number18 = 51
    localValue12 = localValue12(cmgOperation2, number18)
    if localValue12 then
      localValue12 = IsPedInVehicle
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      cmgOperation2 = cmgOperation2()
      number18 = workingValue29
      stateFlag21 = false
      localValue12 = localValue12(cmgOperation2, number18, stateFlag21)
      if localValue12 then
        localValue12 = stateFlag3
        if not localValue12 then
          localValue12 = GetEntitySpeed
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.getPlayerVehicle
          cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26 = cmgOperation2()
          -- Beginner: result below is speed.
          localValue12 = localValue12(cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26)
          localValue12 = localValue12 * 2.236936
          if localValue12 < 5 then
            localValue12 = true
            stateFlag3 = localValue12
            localValue12 = false
            stateFlag = localValue12
            localValue12 = 1
            cmgOperation2 = workingValue24.doorsToToggle
            cmgOperation2 = #cmgOperation2
            number18 = 1
            for stateFlag21 = localValue12, cmgOperation2, number18 do
              stateFlag22 = SetVehicleDoorOpen
              cmgOperation5 = CMG
              cmgOperation5 = cmgOperation5.getPlayerVehicle
              -- Beginner: result below is currentVehicle.
              cmgOperation5 = cmgOperation5()
              workingValue34 = workingValue24.doorsToToggle
              workingValue34 = workingValue34[stateFlag21]
              stateFlag24 = false
              stateFlag26 = false
              stateFlag22(cmgOperation5, workingValue34, stateFlag24, stateFlag26)
            end
            localValue12 = TriggerServerEvent
            cmgOperation2 = "2854d0f57f"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2854d0f57f".
            localValue12(cmgOperation2)
            localValue12 = FreezeEntityPosition
            cmgOperation2 = CMG
            cmgOperation2 = cmgOperation2.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            cmgOperation2 = cmgOperation2()
            number18 = true
            -- Beginner: Freeze or unfreeze an entity in place.
            localValue12(cmgOperation2, number18)
            localValue12 = SetVehicleEngineOn
            cmgOperation2 = CMG
            cmgOperation2 = cmgOperation2.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            cmgOperation2 = cmgOperation2()
            number18 = false
            stateFlag21 = true
            stateFlag22 = true
            localValue12(cmgOperation2, number18, stateFlag21, stateFlag22)
            localValue12 = Citizen
            localValue12 = localValue12.CreateThread

            -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
            function cmgOperation2()
              local localValue13, localValue22, localValue32, workingValue23
              localValue13 = rageUiOperation3
              localValue22 = true
              localValue32 = localValue1
              workingValue23 = localValue2
              localValue13(localValue22, localValue32, workingValue23)
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            localValue12(cmgOperation2)
            localValue12 = tCMG
            localValue12 = localValue12.notify
            cmgOperation2 = "~g~Picking up passengers!"
            -- Beginner: Show a notification to the player.
            localValue12(cmgOperation2)
          else
            localValue12 = tCMG
            localValue12 = localValue12.notify
            cmgOperation2 = "~r~You are going too fast!"
            localValue12(cmgOperation2)
          end
      end
    end
    else
      localValue12 = IsControlJustPressed
      cmgOperation2 = 0
      number18 = 51
      localValue12 = localValue12(cmgOperation2, number18)
      if localValue12 then
        localValue12 = IsPedInVehicle
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgOperation2 = cmgOperation2()
        number18 = workingValue29
        stateFlag21 = false
        localValue12 = localValue12(cmgOperation2, number18, stateFlag21)
        if not localValue12 then
          localValue12 = stateFlag3
          if not localValue12 then
            localValue12 = tCMG
            localValue12 = localValue12.notify
            cmgOperation2 = "~r~You are not in your plane!"
            -- Beginner: Show a notification to the player.
            localValue12(cmgOperation2)
          end
        end
      end
    end
  end
  number23 = CMG
  number23 = number23.createArea
  workingValue33 = "collectPassengers_"
  cmgOperation12 = localValue1.coords
  position2 = 80
  position3 = 10
  position = localValue3
  stateFlag4 = number19
  stateFlag6 = number21
  -- Beginner: Create an interaction area around a world position.
  number23(workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5f151ea19c".
eventHandler(eventHandler2, text7)
eventHandler = RegisterNetEvent
eventHandler2 = "a9dc9ed74f"
-- Beginner: this function handles network event "a9dc9ed74f".

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1, localValue2) ===
function text7(localValue1, localValue2)
  local localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6
  localValue3 = print
  number19 = "triggering collected"
  localValue3(number19)
  localValue3 = tCMG
  localValue3 = localValue3.removeArea
  number19 = "collectPassengers_"
  localValue3(number19)
  localValue3 = CMG
  localValue3 = localValue3.drawPlaneScaleForm
  number19 = "~y~TRANSPORT PASSENGERS"
  number21 = string
  number21 = number21.format
  number23 = "Transport Passengers to %s"
  workingValue33 = localValue1.name
  number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6 = number21(number23, workingValue33)
  localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
  localValue3 = number5
  number19 = number7
  number19 = number19 * 0.2
  if localValue3 < number19 then
    localValue3 = tCMG
    localValue3 = localValue3.notify
    number19 = "~r~Remember to fuel your plane!"
    -- Beginner: Show a notification to the player.
    localValue3(number19)
  end
  localValue3 = text4
  number19 = localValue1
  localValue3 = localValue3(number19)
  if not localValue3 then
    localValue3 = eventHandlerRegistration
    number19 = "CMG:pilotJobCollectedPassengers -> not aircraftTakeOffAtc"
    number21 = json
    number21 = number21.encode
    number23 = localValue1
    number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6 = number21(number23)
    -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobCollectedPassengers -> not aircraftTakeOffAtc".
    localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
    return
  end
  localValue3 = SetNewWaypoint
  number19 = localValue1.coords
  number19 = number19.x
  number21 = localValue1.coords
  number21 = number21.y
  localValue3(number19, number21)
  localValue3 = "Fly to the destination ~y~airport~w~."
  workingValue4 = localValue3
  while true do
    localValue3 = localValue1.coords
    number19 = CMG
    number19 = number19.getPlayerCoords
    -- Beginner: result below is playerCoords.
    number19 = number19()
    localValue3 = localValue3 - number19
    localValue3 = #localValue3
    number19 = 1500
    if not (localValue3 > number19) then
      break
    end
    localValue3 = CMG
    localValue3 = localValue3.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue3 = localValue3()
    number19 = GetEntityHeading
    number21 = workingValue29
    -- Beginner: result below is heading.
    number19 = number19(number21)
    number21 = 360.0
    number19 = number21 - number19
    number21 = math
    number21 = number21.deg
    number23 = math
    number23 = number23.atan
    workingValue33 = localValue1.coords
    workingValue33 = workingValue33.x
    cmgOperation12 = localValue3.x
    workingValue33 = workingValue33 - cmgOperation12
    cmgOperation12 = localValue1.coords
    cmgOperation12 = cmgOperation12.y
    position2 = localValue3.y
    cmgOperation12 = cmgOperation12 - position2
    number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6 = number23(workingValue33, cmgOperation12)
    number21 = number21(number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
    number21 = number21 % 360
    number23 = math
    number23 = number23.abs
    workingValue33 = number19 - number21
    number23 = number23(workingValue33)
    if number23 > 25 then
      number23 = workingValue26
      workingValue33 = number21
      cmgOperation12 = number19
      number23, workingValue33 = number23(workingValue33, cmgOperation12)
      cmgOperation12 = workingValue25
      position2 = number23 < workingValue33
      cmgOperation12(position2)
    end
    number23 = SetNewWaypoint
    workingValue33 = localValue1.coords
    workingValue33 = workingValue33.x
    cmgOperation12 = localValue1.coords
    cmgOperation12 = cmgOperation12.y
    number23(workingValue33, cmgOperation12)
    number23 = DoesEntityExist
    workingValue33 = workingValue29
    number23 = number23(workingValue33)
    if number23 then
      number23 = GetVehicleEngineHealth
      workingValue33 = workingValue29
      number23 = number23(workingValue33)
      if number23 <= 0 then
        number23 = eventHandlerRegistration
        workingValue33 = "CMG:pilotJobCollectedPassengers -> engine health"
        cmgOperation12 = workingValue29
        -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobCollectedPassengers -> engine health".
        number23(workingValue33, cmgOperation12)
        number23 = nil
        workingValue4 = number23
        return
      end
    else
      number23 = eventHandlerRegistration
      workingValue33 = "CMG:pilotJobCollectedPassengers -> no vehicle"
      cmgOperation12 = workingValue29
      number23(workingValue33, cmgOperation12)
      number23 = nil
      workingValue4 = number23
      return
    end
    number23 = Citizen
    number23 = number23.Wait
    workingValue33 = 0
    number23(workingValue33)
  end
  localValue3 = nil
  workingValue4 = localValue3
  localValue3 = text3
  number19 = localValue1
  localValue3 = localValue3(number19)
  if not localValue3 then
    localValue3 = eventHandlerRegistration
    number19 = "CMG:pilotJobCollectedPassengers -> not aircraftLandingAtc"
    number21 = json
    number21 = number21.encode
    number23 = localValue1
    number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6 = number21(number23)
    -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobCollectedPassengers -> not aircraftLandingAtc".
    localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
    return
  end
  localValue3 = rageUiOperation
  number19 = localValue1
  localValue3 = localValue3(number19)
  if not localValue3 then
    localValue3 = eventHandlerRegistration
    number19 = "CMG:pilotJobCollectedPassengers -> not passengerCollectionAtc"
    number21 = json
    number21 = number21.encode
    number23 = localValue1
    number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6 = number21(number23)
    localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
    return
  end

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, cmgOperation2
    localValue12 = drawNativeNotification
    cmgOperation2 = "Press ~INPUT_CONTEXT~ to deliver"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue12(cmgOperation2)
  end

  -- === HELPER FUNCTION (decompiler name: number19; parameters: none) ===
  function number19()
    local localValue12, cmgOperation2
  end

  -- === HELPER FUNCTION (decompiler name: number21; parameters: none) ===
  function number21()
    local localValue12, cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26
    localValue12 = IsControlJustPressed
    cmgOperation2 = 0
    number18 = 51
    localValue12 = localValue12(cmgOperation2, number18)
    if localValue12 then
      localValue12 = IsPedInVehicle
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      cmgOperation2 = cmgOperation2()
      number18 = workingValue29
      stateFlag21 = false
      localValue12 = localValue12(cmgOperation2, number18, stateFlag21)
      if localValue12 then
        localValue12 = stateFlag
        if not localValue12 then
          localValue12 = true
          stateFlag = localValue12
          localValue12 = false
          stateFlag3 = localValue12
          localValue12 = 1
          cmgOperation2 = workingValue24.doorsToToggle
          cmgOperation2 = #cmgOperation2
          number18 = 1
          for stateFlag21 = localValue12, cmgOperation2, number18 do
            stateFlag22 = SetVehicleDoorOpen
            cmgOperation5 = CMG
            cmgOperation5 = cmgOperation5.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            cmgOperation5 = cmgOperation5()
            workingValue34 = workingValue24.doorsToToggle
            workingValue34 = workingValue34[stateFlag21]
            stateFlag24 = false
            stateFlag26 = false
            stateFlag22(cmgOperation5, workingValue34, stateFlag24, stateFlag26)
          end
          localValue12 = TriggerServerEvent
          cmgOperation2 = "1f9d117c88"
          number18 = number20
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1f9d117c88".
          localValue12(cmgOperation2, number18)
          localValue12 = 0
          number20 = localValue12
          localValue12 = SetVehicleEngineOn
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          cmgOperation2 = cmgOperation2()
          number18 = false
          stateFlag21 = false
          stateFlag22 = false
          localValue12(cmgOperation2, number18, stateFlag21, stateFlag22)
          localValue12 = FreezeEntityPosition
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          cmgOperation2 = cmgOperation2()
          number18 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          localValue12(cmgOperation2, number18)
          localValue12 = Citizen
          localValue12 = localValue12.CreateThread

          -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
          function cmgOperation2()
            local localValue13, localValue22, localValue32, workingValue23
            localValue13 = rageUiOperation3
            localValue22 = false
            localValue32 = localValue1
            workingValue23 = localValue2
            localValue13(localValue22, localValue32, workingValue23)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue12(cmgOperation2)
          localValue12 = tCMG
          localValue12 = localValue12.notify
          cmgOperation2 = "~g~Dropping off passengers!"
          -- Beginner: Show a notification to the player.
          localValue12(cmgOperation2)
      end
    end
    else
      localValue12 = IsControlJustPressed
      cmgOperation2 = 0
      number18 = 51
      localValue12 = localValue12(cmgOperation2, number18)
      if localValue12 then
        localValue12 = IsPedInVehicle
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgOperation2 = cmgOperation2()
        number18 = workingValue29
        stateFlag21 = false
        localValue12 = localValue12(cmgOperation2, number18, stateFlag21)
        if not localValue12 then
          localValue12 = stateFlag
          if not localValue12 then
            localValue12 = tCMG
            localValue12 = localValue12.notify
            cmgOperation2 = "~r~You are not in your plane!"
            localValue12(cmgOperation2)
          end
        end
      end
    end
  end
  number23 = CMG
  number23 = number23.createArea
  workingValue33 = "dropOffPassengers_"
  cmgOperation12 = localValue1.coords
  position2 = 80
  position3 = 10
  position = localValue3
  stateFlag4 = number19
  stateFlag6 = number21
  -- Beginner: Create an interaction area around a world position.
  number23(workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a9dc9ed74f".
eventHandler(eventHandler2, text7)
eventHandler = false
eventHandler2 = RegisterNetEvent
text7 = "2fb2e09781"
-- Beginner: this function handles network event "2fb2e09781".

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: localValue1, localValue2) ===
function workingValue27(localValue1, localValue2)
  local localValue3, number19, number21
  number9 = localValue1
  number12 = localValue2
  localValue3 = eventHandler
  if not localValue3 then
    localValue3 = true
    eventHandler = localValue3
    localValue3 = true
    stateFlag20 = localValue3
    localValue3 = Citizen
    localValue3 = localValue3.CreateThread

    -- === HELPER FUNCTION (decompiler name: number19; parameters: none) ===
    function number19()
      local localValue12, cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5
      while true do
        localValue12 = stateFlag20
        if not localValue12 then
          break
        end
        localValue12 = IsPedInVehicle
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgOperation2 = cmgOperation2()
        number18 = workingValue29
        stateFlag21 = false
        localValue12 = localValue12(cmgOperation2, number18, stateFlag21)
        if localValue12 then
          localValue12 = DrawRect
          cmgOperation2 = dataCollection.x
          number18 = dataCollection.y
          stateFlag21 = dataCollection.width
          stateFlag22 = dataCollection.height
          cmgOperation5 = 0
          workingValue34 = 0
          stateFlag24 = 0
          stateFlag26 = 120
          localValue12(cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26)
          localValue12 = DrawRect
          cmgOperation2 = dataCollection2.x
          number18 = dataCollection2.y
          stateFlag21 = dataCollection2.width
          stateFlag22 = dataCollection2.height
          cmgOperation5 = 0
          workingValue34 = 200
          stateFlag24 = 0
          stateFlag26 = 255
          localValue12(cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26)
          localValue12 = DrawRect
          cmgOperation2 = workingValue5.x
          number18 = workingValue5.y
          stateFlag21 = workingValue5.width
          stateFlag22 = workingValue5.height
          cmgOperation5 = 0
          workingValue34 = 0
          stateFlag24 = 0
          stateFlag26 = 200
          localValue12(cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26)
          localValue12 = DrawRect
          cmgOperation2 = workingValue6.x
          number18 = workingValue6.y
          stateFlag21 = workingValue6.width
          stateFlag22 = workingValue6.height
          cmgOperation5 = 0
          workingValue34 = 0
          stateFlag24 = 0
          stateFlag26 = 200
          localValue12(cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26)
          localValue12 = DrawRect
          cmgOperation2 = workingValue8.x
          number18 = workingValue8.y
          stateFlag21 = workingValue8.width
          stateFlag22 = workingValue8.height
          cmgOperation5 = 0
          workingValue34 = 0
          stateFlag24 = 0
          stateFlag26 = 200
          localValue12(cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26)
          localValue12 = DrawRect
          cmgOperation2 = workingValue9.x
          number18 = workingValue9.y
          stateFlag21 = workingValue9.width
          stateFlag22 = workingValue9.height
          cmgOperation5 = 0
          workingValue34 = 0
          stateFlag24 = 0
          stateFlag26 = 200
          localValue12(cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26)
          localValue12 = DrawSprite
          cmgOperation2 = "pilotjob"
          number18 = "passengerSprite"
          stateFlag21 = dataCollection.x
          stateFlag22 = dataCollection.y
          cmgOperation5 = 0.022
          workingValue34 = 0.045
          stateFlag24 = 0.0
          stateFlag26 = 255
          stateFlag28 = 255
          stateFlag2 = 255
          stateFlag5 = 255
          localValue12(cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5)
        end
        localValue12 = Wait
        cmgOperation2 = 0
        localValue12(cmgOperation2)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue3(number19)
  end
  localValue3 = eventHandler
  if localValue3 then
    localValue3 = dataCollection2.height
    number19 = number9
    number21 = number12
    number19 = number19 / number21
    number21 = dataCollection.height
    number19 = number19 * number21
    dataCollection2.height = number19
    number19 = dataCollection2.y
    number21 = dataCollection2.height
    number21 = number21 - localValue3
    number21 = number21 / 2
    number19 = number19 - number21
    dataCollection2.y = number19
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2fb2e09781".
eventHandler2(text7, workingValue27)
eventHandler2 = RegisterNetEvent
text7 = "9ffaf6daa9"
-- Beginner: this function handles network event "9ffaf6daa9".

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
function workingValue27()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33
  localValue1 = false
  stateFlag25 = localValue1
  localValue1 = 0
  number9 = localValue1
  localValue1 = 0
  number5 = localValue1
  localValue1 = 150
  number7 = localValue1
  localValue1 = false
  stateFlag27 = localValue1
  localValue1 = false
  stateFlag = localValue1
  localValue1 = false
  stateFlag3 = localValue1
  localValue1 = DeleteCheckpoint
  localValue2 = workingValue
  localValue1(localValue2)
  localValue1 = DeleteEntity
  localValue2 = workingValue32
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = DeleteEntity
  localValue2 = workingValue29
  localValue1(localValue2)
  localValue1 = tCMG
  localValue1 = localValue1.removeArea
  localValue2 = "collectPassengers_"
  localValue1(localValue2)
  localValue1 = tCMG
  localValue1 = localValue1.removeArea
  localValue2 = "dropOffPassengers_"
  localValue1(localValue2)
  localValue1 = 1
  localValue2 = dataCollection3
  localValue2 = #localValue2
  localValue3 = 1
  for number19 = localValue1, localValue2, localValue3 do
    number21 = DeleteCheckpoint
    number23 = dataCollection3
    number23 = number23[number19]
    number21(number23)
    number21 = tCMG
    number21 = number21.removeArea
    number23 = "fuelPlane_"
    workingValue33 = number19
    number23 = number23 .. workingValue33
    number21(number23)
  end
  localValue1 = TriggerServerEvent
  localValue2 = "e1cb2b3c18"
  localValue3 = workingValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1cb2b3c18".
  localValue1(localValue2, localValue3)
  localValue1 = TriggerServerEvent
  localValue2 = "229bf66229"
  localValue3 = workingValue3
  localValue1(localValue2, localValue3)
  localValue1 = SetLocalPlayerAsGhost
  localValue2 = false
  localValue1(localValue2)
  localValue1 = SetEntityAlpha
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = 255
  number19 = false
  localValue1(localValue2, localValue3, number19)
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = SetNetworkVehicleAsGhost
    localValue3 = localValue1
    number19 = false
    localValue2(localValue3, number19)
    localValue2 = SetEntityAlpha
    localValue3 = localValue1
    number19 = 255
    number21 = false
    localValue2(localValue3, number19, number21)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9ffaf6daa9".
eventHandler2(text7, workingValue27)
eventHandler2 = RegisterNetEvent
text7 = "b0652830d5"
-- Beginner: this function handles network event "b0652830d5".

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
function workingValue27()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3
  -- Beginner: this function handles network event "b0652830d5".

  -- === HELPER FUNCTION: localValue1() ===
  function localValue1()
    local localValue12, cmgOperation2
    localValue12 = drawNativeNotification
    cmgOperation2 = "Press ~INPUT_CONTEXT~ to fuel plane"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue12(cmgOperation2)
  end
  -- Beginner: this function handles network event "b0652830d5".

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, cmgOperation2
  end

  -- === HELPER FUNCTION: localValue3(localValue12) ===
  function localValue3(localValue12)
    local cmgOperation2, number18, stateFlag21
    cmgOperation2 = GetEntitySpeed
    number18 = CMG
    number18 = number18.getPlayerVehicle
    number18, stateFlag21 = number18()
    -- Beginner: result below is speed.
    cmgOperation2 = cmgOperation2(number18, stateFlag21)
    if cmgOperation2 < 5 then
      cmgOperation2 = IsControlJustPressed
      number18 = 0
      stateFlag21 = 51
      cmgOperation2 = cmgOperation2(number18, stateFlag21)
      if cmgOperation2 then
        cmgOperation2 = stateFlag27
        if not cmgOperation2 then
          cmgOperation2 = number5
          number18 = 145
          if cmgOperation2 < number18 then
            cmgOperation2 = tCMG
            cmgOperation2 = cmgOperation2.notify
            number18 = "~g~Your plane will begin refuelling shortly"
            -- Beginner: Show a notification to the player.
            cmgOperation2(number18)
            cmgOperation2 = true
            stateFlag27 = cmgOperation2
            cmgOperation2 = Citizen
            cmgOperation2 = cmgOperation2.CreateThread

            -- === HELPER FUNCTION (decompiler name: number18; parameters: none) ===
            function number18()
              local localValue13, localValue22
              localValue13 = text6
              localValue13()
              localValue13 = rageUiOperation2
              localValue22 = localValue12.currentStation
              localValue13(localValue22)
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            cmgOperation2(number18)
        end
      end
      else
        cmgOperation2 = IsControlJustPressed
        number18 = 0
        stateFlag21 = 51
        cmgOperation2 = cmgOperation2(number18, stateFlag21)
        if cmgOperation2 then
          cmgOperation2 = stateFlag27
          if cmgOperation2 then
            cmgOperation2 = tCMG
            cmgOperation2 = cmgOperation2.notify
            number18 = "~r~Your plane is currently being refuelled!"
            -- Beginner: Show a notification to the player.
            cmgOperation2(number18)
        end
        else
          cmgOperation2 = IsControlJustPressed
          number18 = 0
          stateFlag21 = 51
          cmgOperation2 = cmgOperation2(number18, stateFlag21)
          if cmgOperation2 then
            cmgOperation2 = number5
            number18 = 145
            if cmgOperation2 >= number18 then
              cmgOperation2 = tCMG
              cmgOperation2 = cmgOperation2.notify
              number18 = "~r~Your plane is full of fuel!"
              cmgOperation2(number18)
            end
          end
        end
      end
    else
      cmgOperation2 = tCMG
      cmgOperation2 = cmgOperation2.notify
      number18 = "~r~You are going too fast!"
      -- Beginner: Show a notification to the player.
      cmgOperation2(number18)
    end
  end
  number19 = 1
  number21 = text
  number21 = #number21
  number23 = 1
  for workingValue33 = number19, number21, number23 do
    cmgOperation12 = CMG
    cmgOperation12 = cmgOperation12.createArea
    position2 = "fuelPlane_"
    position3 = workingValue33
    position2 = position2 .. position3
    position3 = text
    position3 = position3[workingValue33]
    position3 = position3.coords
    position = 25
    stateFlag4 = 10
    stateFlag6 = localValue1
    stateFlag9 = localValue2
    number2 = localValue3
    number3 = {}
    number3.currentStation = workingValue33
    -- Beginner: Create an interaction area around a world position.
    cmgOperation12(position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3)
    cmgOperation12 = tCMG
    cmgOperation12 = cmgOperation12.addBlip
    position2 = text
    position2 = position2[workingValue33]
    position2 = position2.coords
    position2 = position2.x
    position3 = text
    position3 = position3[workingValue33]
    position3 = position3.coords
    position3 = position3.y
    position = text
    position = position[workingValue33]
    position = position.coords
    position = position.z
    stateFlag4 = 361
    stateFlag6 = 46
    stateFlag9 = "Fuel Plane"
    -- Beginner: Create a minimap blip.
    cmgOperation12(position2, position3, position, stateFlag4, stateFlag6, stateFlag9)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b0652830d5".
eventHandler2(text7, workingValue27)
eventHandler2 = RegisterNetEvent
text7 = "671af762e6"
-- Beginner: this function handles network event "671af762e6".

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
function workingValue27()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10, stateFlag15, stateFlag17
  -- Beginner: this function handles network event "671af762e6".

  -- === HELPER FUNCTION: localValue1() ===
  function localValue1()
    local localValue12, cmgOperation2
    localValue12 = drawNativeNotification
    cmgOperation2 = "Press ~INPUT_CONTEXT~ to repair your plane"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue12(cmgOperation2)
  end
  -- Beginner: this function handles network event "671af762e6".

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, cmgOperation2
  end

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, cmgOperation2, number18, stateFlag21
    localValue12 = IsControlJustPressed
    cmgOperation2 = 0
    number18 = 51
    localValue12 = localValue12(cmgOperation2, number18)
    if localValue12 then
      localValue12 = globalOnPilotDuty
      if localValue12 then
        localValue12 = IsPedInVehicle
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgOperation2 = cmgOperation2()
        number18 = workingValue29
        stateFlag21 = false
        localValue12 = localValue12(cmgOperation2, number18, stateFlag21)
        if localValue12 then
          localValue12 = GetEntitySpeed
          cmgOperation2 = workingValue29
          -- Beginner: result below is speed.
          localValue12 = localValue12(cmgOperation2)
          if localValue12 < 5.0 then
            localValue12 = tCMG
            localValue12 = localValue12.notify
            cmgOperation2 = "~g~Your plane is being repaired!"
            -- Beginner: Show a notification to the player.
            localValue12(cmgOperation2)
            localValue12 = FreezeEntityPosition
            cmgOperation2 = workingValue29
            number18 = true
            -- Beginner: Freeze or unfreeze an entity in place.
            localValue12(cmgOperation2, number18)
            localValue12 = Citizen
            localValue12 = localValue12.Wait
            cmgOperation2 = 15000
            localValue12(cmgOperation2)
            localValue12 = SetVehicleFixed
            cmgOperation2 = workingValue29
            localValue12(cmgOperation2)
            localValue12 = SetVehicleEngineHealth
            cmgOperation2 = workingValue29
            number18 = 1000.0
            localValue12(cmgOperation2, number18)
            localValue12 = SetVehicleBodyHealth
            cmgOperation2 = workingValue29
            number18 = 1000.0
            localValue12(cmgOperation2, number18)
            localValue12 = SetVehicleDeformationFixed
            cmgOperation2 = workingValue29
            localValue12(cmgOperation2)
            localValue12 = SetVehiclePetrolTankHealth
            cmgOperation2 = workingValue29
            number18 = 1000.0
            localValue12(cmgOperation2, number18)
            localValue12 = FreezeEntityPosition
            cmgOperation2 = workingValue29
            number18 = false
            -- Beginner: Freeze or unfreeze an entity in place.
            localValue12(cmgOperation2, number18)
            localValue12 = tCMG
            localValue12 = localValue12.notify
            cmgOperation2 = "~g~Your plane has been repaired!"
            -- Beginner: Show a notification to the player.
            localValue12(cmgOperation2)
          else
            localValue12 = tCMG
            localValue12 = localValue12.notify
            cmgOperation2 = "~r~You are going too fast!"
            localValue12(cmgOperation2)
          end
        end
      end
    end
  end
  number19 = cmgOperation.planeRepairStations
  number21 = 1
  number23 = #number19
  workingValue33 = 1
  for cmgOperation12 = number21, number23, workingValue33 do
    position2 = CMG
    position2 = position2.createArea
    position3 = "pilotRepairStations_"
    position = cmgOperation12
    position3 = position3 .. position
    position = number19[cmgOperation12]
    position = position.coords
    stateFlag4 = 25
    stateFlag6 = 10
    stateFlag9 = localValue1
    number2 = localValue2
    number3 = localValue3
    -- Beginner: Create an interaction area around a world position.
    position2(position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3)
    position2 = tCMG
    position2 = position2.addBlip
    position3 = number19[cmgOperation12]
    position3 = position3.coords
    position3 = position3.x
    position = number19[cmgOperation12]
    position = position.coords
    position = position.y
    stateFlag4 = number19[cmgOperation12]
    stateFlag4 = stateFlag4.coords
    stateFlag4 = stateFlag4.z
    stateFlag6 = 446
    stateFlag9 = 46
    number2 = "Repair Plane"
    -- Beginner: Create a minimap blip.
    position2(position3, position, stateFlag4, stateFlag6, stateFlag9, number2)
    position2 = CreateCheckpoint
    position3 = 47
    position = number19[cmgOperation12]
    position = position.coords
    position = position.x
    stateFlag4 = number19[cmgOperation12]
    stateFlag4 = stateFlag4.coords
    stateFlag4 = stateFlag4.y
    stateFlag6 = number19[cmgOperation12]
    stateFlag6 = stateFlag6.coords
    stateFlag6 = stateFlag6.z
    stateFlag6 = stateFlag6 - 6.5
    stateFlag9 = number19[cmgOperation12]
    stateFlag9 = stateFlag9.coords
    stateFlag9 = stateFlag9.x
    number2 = number19[cmgOperation12]
    number2 = number2.coords
    number2 = number2.y
    number3 = number19[cmgOperation12]
    number3 = number3.coords
    number3 = number3.z
    number4 = 25.0
    number6 = 255
    number8 = 215
    number10 = 0
    stateFlag15 = 150
    stateFlag17 = 0
    position2(position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10, stateFlag15, stateFlag17)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "671af762e6".
eventHandler2(text7, workingValue27)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2
  localValue2 = true
  while localValue2 do
    localValue3 = IsPedInVehicle
    number19 = CMG
    number19 = number19.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    number19 = number19()
    number21 = workingValue29
    number23 = false
    localValue3 = localValue3(number19, number21, number23)
    if not localValue3 then
      break
    end
    localValue3 = RageUI
    localValue3 = localValue3.Visible
    number19 = RMenu
    number21 = number19
    number19 = number19.Get
    number23 = "CMGpilotJob"
    workingValue33 = "atcMenu"
    number19, number21, number23, workingValue33, cmgOperation12, position2 = number19(number21, number23, workingValue33)
    -- Beginner: result below is menuVisible.
    localValue3 = localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2)
    if not localValue3 then
      localValue3 = RageUI
      localValue3 = localValue3.Visible
      number19 = RMenu
      number21 = number19
      number19 = number19.Get
      number23 = "CMGpilotJob"
      workingValue33 = "atcMenu"
      -- Beginner: result below is menu.
      number19 = number19(number21, number23, workingValue33)
      number21 = true
      localValue3(number19, number21)
    end
    localValue3 = RageUI
    localValue3 = localValue3.IsVisible
    number19 = RMenu
    number21 = number19
    number19 = number19.Get
    number23 = "CMGpilotJob"
    workingValue33 = "atcMenu"
    -- Beginner: result below is menu.
    number19 = number19(number21, number23, workingValue33)
    number21 = true
    number23 = false
    workingValue33 = true

    -- === HELPER FUNCTION (decompiler name: cmgOperation12; parameters: none) ===
    function cmgOperation12()
      local localValue12, cmgOperation2, number18, stateFlag21, stateFlag22
      localValue12 = RageUI
      localValue12 = localValue12.Button
      cmgOperation2 = "> Communicate to ATC"
      number18 = localValue1
      stateFlag21 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag22; parameters: localValue13, localValue22, localValue32) ===
      function stateFlag22(localValue13, localValue22, localValue32)
        local workingValue23, number22, number24, cmgOperation9, text11
        if localValue22 then
          workingValue23 = IsControlJustPressed
          number22 = 0
          number24 = 202
          workingValue23 = workingValue23(number22, number24)
          if not workingValue23 then
            workingValue23 = IsControlJustPressed
            number22 = 0
            number24 = 194
            workingValue23 = workingValue23(number22, number24)
            if not workingValue23 then
              workingValue23 = IsControlJustPressed
              number22 = 0
              number24 = 177
              workingValue23 = workingValue23(number22, number24)
              if not workingValue23 then
                goto continueAtStep34
              end
            end
          end
          workingValue23 = Citizen
          workingValue23 = workingValue23.Wait
          number22 = 1000
          workingValue23(number22)
          workingValue23 = RageUI
          workingValue23 = workingValue23.Visible
          number22 = RMenu
          number24 = number22
          number22 = number22.Get
          cmgOperation9 = "CMGpilotJob"
          text11 = "atcMenu"
          -- Beginner: result below is menu.
          number22 = number22(number24, cmgOperation9, text11)
          number24 = true
          workingValue23(number22, number24)
        end
        ::continueAtStep34::
        if localValue32 then
          workingValue23 = false
          localValue2 = workingValue23
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(cmgOperation2, number18, stateFlag21, stateFlag22)
    end

    -- === HELPER FUNCTION: position2() ===
    function position2()
      local localValue12, cmgOperation2
    end
    localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2)
    localValue3 = Wait
    number19 = 0
    localValue3(number19)
  end
  localValue3 = RageUI
  localValue3 = localValue3.Visible
  number19 = RMenu
  number21 = number19
  number19 = number19.Get
  number23 = "CMGpilotJob"
  workingValue33 = "atcMenu"
  -- Beginner: result below is menu.
  number19 = number19(number21, number23, workingValue33)
  number21 = false
  localValue3(number19, number21)
  localValue3 = RageUI
  localValue3 = localValue3.CloseAll
  localValue3()
end
cmgOperation3 = eventHandler2

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, localValue3
  localValue1 = GetEntityHeightAboveGround
  localValue2 = workingValue29
  localValue1 = localValue1(localValue2)
  if localValue1 > 10 then
    localValue1 = true
    stateFlag23 = localValue1
    localValue1 = CMG
    localValue1 = localValue1.drawPlaneScaleForm
    localValue2 = "~r~LAND YOUR PLANE"
    localValue3 = "You need clearance before taking off!"
    localValue1(localValue2, localValue3)
    while true do
      localValue1 = GetEntityHeightAboveGround
      localValue2 = workingValue29
      localValue1 = localValue1(localValue2)
      if not (localValue1 > 10) then
        break
      end
      localValue1 = Citizen
      localValue1 = localValue1.Wait
      localValue2 = 500
      localValue1(localValue2)
    end
    localValue1 = false
    stateFlag23 = localValue1
  end
end
text2 = eventHandler2

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.arePilotJobGuidesDisabled
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = SendNUIMessage
    localValue3 = localValue1
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue2(localValue3)
  end
end

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3, number19, number21
  localValue2 = cmgOperation.audios
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    return
  end
  localValue3 = eventHandler2
  number19 = localValue2.name
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue3(number19)
  localValue3 = localValue2.subtitle
  workingValue4 = localValue3
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  while true do
    number19 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    number19 = number19()
    number19 = number19 - localValue3
    number21 = localValue2.durationMsec
    if not (number19 < number21) then
      break
    end
    number19 = Wait
    number21 = 0
    number19(number21)
  end
  number19 = nil
  workingValue4 = number19
end

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: localValue1) ===
function workingValue27(localValue1)
  local localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2
  localValue2 = text2
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue2()
  localValue2 = number9
  if 0 == localValue2 then
    localValue2 = FreezeEntityPosition
    localValue3 = workingValue29
    number19 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue2(localValue3, number19)
  end
  localValue2 = cmgOperation3
  localValue3 = "Ground Control this is Charlie Mike Golf One Five Four Three Three requesting clearance for taxi to gate 1"
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ground Control this is Charlie Mike Golf One Five Four Three Three requesting clearance for taxi to gate 1".
  localValue2(localValue3)
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = 1500
  localValue2(localValue3)
  localValue2 = text7
  localValue3 = "taxi_gate"
  localValue2(localValue3)
  localValue2 = cmgOperation3
  localValue3 = "Taxi'ing to gate 1 Charlie Mike Golf One Five Four Three Three"
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Taxi'ing to gate 1 Charlie Mike Golf One Five Four Three Three".
  localValue2(localValue3)
  localValue2 = FreezeEntityPosition
  localValue3 = workingValue29
  number19 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, number19)
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = 1500
  localValue2(localValue3)
  localValue2 = SetNewWaypoint
  localValue3 = localValue1.coords
  localValue3 = localValue3.x
  number19 = localValue1.coords
  number19 = number19.y
  localValue2(localValue3, number19)
  localValue2 = CreateCheckpoint
  localValue3 = 47
  number19 = localValue1.coords
  number19 = number19.x
  number21 = localValue1.coords
  number21 = number21.y
  number23 = localValue1.coords
  number23 = number23.z
  number23 = number23 - 10.5
  workingValue33 = localValue1.coords
  workingValue33 = workingValue33.x
  cmgOperation12 = localValue1.coords
  cmgOperation12 = cmgOperation12.y
  position2 = localValue1.coords
  position2 = position2.z
  position3 = 75.0
  position = 255
  stateFlag4 = 215
  stateFlag6 = 0
  stateFlag9 = 150
  number2 = 0
  -- Beginner: result below is checkpointHandle.
  localValue2 = localValue2(localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2)
  workingValue = localValue2
  localValue2 = CMG
  localValue2 = localValue2.drawPlaneScaleForm
  localValue3 = "~g~TAXI YOUR PLANE"
  number19 = "Taxi your plane to the correct gate marked on your GPS"
  localValue2(localValue3, number19)
  localValue2 = "Taxi your ~b~aircraft~w~ to the ~y~gate~w~."
  workingValue4 = localValue2
  while true do
    localValue2 = localValue1.coords
    localValue3 = CMG
    localValue3 = localValue3.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue3 = localValue3()
    localValue2 = localValue2 - localValue3
    localValue2 = #localValue2
    if not (localValue2 > 50) then
      break
    end
    localValue2 = DoesEntityExist
    localValue3 = workingValue29
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = GetVehicleEngineHealth
      localValue3 = workingValue29
      localValue2 = localValue2(localValue3)
      if localValue2 <= 0 then
        localValue2 = nil
        workingValue4 = localValue2
        localValue2 = false
        return localValue2
      end
    else
      localValue2 = nil
      workingValue4 = localValue2
      localValue2 = false
      return localValue2
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 500
    localValue2(localValue3)
  end
  localValue2 = nil
  workingValue4 = localValue2
  localValue2 = DeleteCheckpoint
  localValue3 = workingValue
  localValue2(localValue3)
  localValue2 = number9
  if localValue2 > 0 then
    localValue2 = cmgOperation3
    localValue3 = "Ground Control Charlie Mike Golf One Five Four Three Three taxi to gate 1 complete, requesting passenger disembarkment"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ground Control Charlie Mike Golf One Five Four Three Three taxi to gate 1 complete, requesting passenger disembarkment".
    localValue2(localValue3)
  else
    localValue2 = cmgOperation3
    localValue3 = "Ground Control Charlie Mike Golf One Five Four Three Three taxi to gate 1 complete, requesting passenger boarding to commence"
    localValue2(localValue3)
  end
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = 1500
  localValue2(localValue3)
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = 5000
  localValue2(localValue3)
  localValue2 = cmgOperation3
  localValue3 = "Received, Charlie Mike Golf One Five Four Three Three"
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Received, Charlie Mike Golf One Five Four Three Three".
  localValue2(localValue3)
  localValue2 = true
  return localValue2
end
rageUiOperation = workingValue27

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
function workingValue27()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3
  localValue1 = nil
  localValue2 = 2200.0
  localValue3 = 1
  number19 = cmgOperation.takeOffLocs
  number19 = #number19
  number21 = 1
  for number23 = localValue3, number19, number21 do
    workingValue33 = cmgOperation.takeOffLocs
    workingValue33 = workingValue33[number23]
    workingValue33 = workingValue33.coords
    cmgOperation12 = CMG
    cmgOperation12 = cmgOperation12.getPlayerCoords
    -- Beginner: result below is playerCoords.
    cmgOperation12 = cmgOperation12()
    workingValue33 = workingValue33 - cmgOperation12
    workingValue33 = #workingValue33
    if localValue2 >= workingValue33 then
      cmgOperation12 = cmgOperation.takeOffLocs
      localValue1 = cmgOperation12[number23]
      localValue2 = workingValue33
      break
    end
  end
  if nil ~= localValue1 then
    localValue3 = cmgOperation3
    number19 = "Tower Control this is Charlie Mike Golf One Five Four Three Three entering your airspace now, requesting clearance to land on runway 1"
    localValue3(number19)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    number19 = 1500
    localValue3(number19)
    localValue3 = text7
    number19 = "cleared_landing"
    localValue3(number19)
    localValue3 = "Land on the ~y~airport~w~ runway."
    workingValue4 = localValue3
    localValue3 = CreateCheckpoint
    number19 = 47
    number21 = localValue1.landingCoords
    number21 = number21.x
    number23 = localValue1.landingCoords
    number23 = number23.y
    workingValue33 = localValue1.landingCoords
    workingValue33 = workingValue33.z
    workingValue33 = workingValue33 - 5.0
    cmgOperation12 = localValue1.checkpointHeading
    cmgOperation12 = cmgOperation12.x
    position2 = localValue1.checkpointHeading
    position2 = position2.y
    position3 = localValue1.checkpointHeading
    position3 = position3.z
    position = 75.0
    stateFlag4 = 255
    stateFlag6 = 215
    stateFlag9 = 0
    number2 = 150
    number3 = 0
    -- Beginner: result below is checkpointHandle.
    localValue3 = localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3)
    workingValue = localValue3
    while true do
      localValue3 = CMG
      localValue3 = localValue3.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue3 = localValue3()
      localValue3 = localValue3.z
      number19 = localValue1.landingCoords
      number19 = number19.z
      number21 = workingValue24.landedZ
      number19 = number19 + number21
      if not (localValue3 > number19) then
        break
      end
      localValue3 = DoesEntityExist
      number19 = workingValue29
      localValue3 = localValue3(number19)
      if localValue3 then
        localValue3 = GetVehicleEngineHealth
        number19 = workingValue29
        localValue3 = localValue3(number19)
        if localValue3 <= 0 then
          localValue3 = nil
          workingValue4 = localValue3
          localValue3 = false
          return localValue3
        end
      else
        localValue3 = nil
        workingValue4 = localValue3
        localValue3 = false
        return localValue3
      end
      localValue3 = Citizen
      localValue3 = localValue3.Wait
      number19 = 500
      localValue3(number19)
    end
    while true do
      localValue3 = GetEntitySpeed
      number19 = workingValue29
      -- Beginner: result below is speed.
      localValue3 = localValue3(number19)
      if not (localValue3 > 2.0) then
        break
      end
      localValue3 = DoesEntityExist
      number19 = workingValue29
      localValue3 = localValue3(number19)
      if localValue3 then
        localValue3 = GetVehicleEngineHealth
        number19 = workingValue29
        localValue3 = localValue3(number19)
        if localValue3 <= 0 then
          localValue3 = nil
          workingValue4 = localValue3
          localValue3 = false
          return localValue3
        end
      else
        localValue3 = nil
        workingValue4 = localValue3
        localValue3 = false
        return localValue3
      end
      localValue3 = Citizen
      localValue3 = localValue3.Wait
      number19 = 500
      localValue3(number19)
    end
    localValue3 = DeleteCheckpoint
    number19 = workingValue
    localValue3(number19)
    localValue3 = cmgOperation3
    number19 = string
    number19 = number19.format
    number21 = "Tower Control Charlie Mike Golf One Five Four Three Three has landed on runway one at %s:%s hours"
    number23 = GetClockHours
    number23 = number23()
    workingValue33 = GetClockMinutes
    workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3 = workingValue33()
    number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3 = number19(number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3)
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    number19 = 1500
    localValue3(number19)
    localValue3 = text7
    number19 = "contact_ground"
    localValue3(number19)
    localValue3 = cmgOperation3
    number19 = "Received, contacting ground control Charlie Mike Golf One Five Four Three Three"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Received, contacting ground control Charlie Mike Golf One Five Four Three Three".
    localValue3(number19)
    localValue3 = nil
    workingValue4 = localValue3
    localValue3 = true
    return localValue3
  end
  localValue3 = nil
  workingValue4 = localValue3
  localValue3 = false
  return localValue3
end
text3 = workingValue27

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
function workingValue27()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3
  localValue1 = nil
  localValue2 = cmgOperation.takeOffLocs
  localValue3 = 1
  number19 = #localValue2
  number21 = 1
  for number23 = localValue3, number19, number21 do
    workingValue33 = localValue2[number23]
    workingValue33 = workingValue33.coords
    cmgOperation12 = CMG
    cmgOperation12 = cmgOperation12.getPlayerCoords
    -- Beginner: result below is playerCoords.
    cmgOperation12 = cmgOperation12()
    workingValue33 = workingValue33 - cmgOperation12
    workingValue33 = #workingValue33
    cmgOperation12 = 500
    if workingValue33 < cmgOperation12 then
      localValue1 = localValue2[number23]
      break
    end
  end
  if nil ~= localValue1 then
    localValue3 = text2
    localValue3()
    localValue3 = FreezeEntityPosition
    number19 = workingValue29
    number21 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue3(number19, number21)
    localValue3 = cmgOperation3
    number19 = "Ground Control this is Charlie Mike Golf One Five Four Three Three at gate 1 requesting clearance for taxi to runway one for departure"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ground Control this is Charlie Mike Golf One Five Four Three Three at gate 1 requesting clearance for taxi to runway one for departure".
    localValue3(number19)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    number19 = 1500
    localValue3(number19)
    localValue3 = text7
    number19 = "taxi_runway"
    localValue3(number19)
    localValue3 = cmgOperation3
    number19 = "Taxi'ing to runway one Charlie Mike Golf One Five Four Three Three"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Taxi'ing to runway one Charlie Mike Golf One Five Four Three Three".
    localValue3(number19)
    localValue3 = FreezeEntityPosition
    number19 = workingValue29
    number21 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue3(number19, number21)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    number19 = 1500
    localValue3(number19)
    localValue3 = "Taxi your ~b~aircraft~w~ to the ~y~runway~w~."
    workingValue4 = localValue3
    localValue3 = SetNewWaypoint
    number19 = localValue1.coords
    number19 = number19.x
    number21 = localValue1.coords
    number21 = number21.y
    localValue3(number19, number21)
    localValue3 = CreateCheckpoint
    number19 = 1
    number21 = localValue1.coords
    number21 = number21.x
    number23 = localValue1.coords
    number23 = number23.y
    workingValue33 = localValue1.coords
    workingValue33 = workingValue33.z
    cmgOperation12 = localValue1.checkpointHeading
    cmgOperation12 = cmgOperation12.x
    position2 = localValue1.checkpointHeading
    position2 = position2.y
    position3 = localValue1.checkpointHeading
    position3 = position3.z
    position = 30.0
    stateFlag4 = 0
    stateFlag6 = 150
    stateFlag9 = 0
    number2 = 150
    number3 = 0
    -- Beginner: result below is checkpointHandle.
    localValue3 = localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3)
    workingValue = localValue3
    localValue3 = CMG
    localValue3 = localValue3.drawPlaneScaleForm
    number19 = "~g~TAXI YOUR PLANE"
    number21 = "Taxi your plane to the correct runway marked on your GPS"
    localValue3(number19, number21)
    while true do
      localValue3 = localValue1.coords
      number19 = CMG
      number19 = number19.getPlayerCoords
      -- Beginner: result below is playerCoords.
      number19 = number19()
      localValue3 = localValue3 - number19
      localValue3 = #localValue3
      if not (localValue3 > 50) then
        break
      end
      localValue3 = DoesEntityExist
      number19 = workingValue29
      localValue3 = localValue3(number19)
      if localValue3 then
        localValue3 = GetVehicleEngineHealth
        number19 = workingValue29
        localValue3 = localValue3(number19)
        if localValue3 <= 0 then
          localValue3 = nil
          workingValue4 = localValue3
          localValue3 = false
          return localValue3
        end
      else
        localValue3 = nil
        workingValue4 = localValue3
        localValue3 = false
        return localValue3
      end
      localValue3 = Citizen
      localValue3 = localValue3.Wait
      number19 = 500
      localValue3(number19)
    end
    while true do
      localValue3 = GetEntityHeading
      number19 = CMG
      number19 = number19.getPlayerVehicle
      number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3 = number19()
      -- Beginner: result below is heading.
      localValue3 = localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3)
      number19 = localValue1.heading
      number19 = number19 + 5
      if localValue3 <= number19 then
        number19 = localValue1.heading
        number19 = number19 - 5
        if localValue3 >= number19 then
          break
        end
      end
      number19 = "Turn your ~b~aircraft~w~ towards the ~y~runway~w~."
      workingValue4 = number19
      number19 = workingValue26
      number21 = localValue1.heading
      number23 = localValue3
      number19, number21 = number19(number21, number23)
      number23 = workingValue25
      workingValue33 = number21 < number19
      number23(workingValue33)
      number23 = Citizen
      number23 = number23.Wait
      workingValue33 = 0
      number23(workingValue33)
    end
    localValue3 = nil
    workingValue4 = localValue3
    localValue3 = DeleteCheckpoint
    number19 = workingValue
    localValue3(number19)
    localValue3 = text2
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    localValue3()
    localValue3 = FreezeEntityPosition
    number19 = workingValue29
    number21 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue3(number19, number21)
    localValue3 = cmgOperation3
    number19 = "Ground Control Charlie Mike Golf One Five Four Three Three, taxi to runway one complete"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ground Control Charlie Mike Golf One Five Four Three Three, taxi to runway one complete".
    localValue3(number19)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    number19 = 1500
    localValue3(number19)
    localValue3 = text7
    number19 = "contact_tower"
    localValue3(number19)
    localValue3 = cmgOperation3
    number19 = "Contacting tower control Charlie Mike Golf One Five Four Three Three"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Contacting tower control Charlie Mike Golf One Five Four Three Three".
    localValue3(number19)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    number19 = 1500
    localValue3(number19)
    localValue3 = cmgOperation3
    number19 = "Tower Control Charlie Mike Golf One Five Four Three Three at runway 1 requesting clearance for take-off"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Tower Control Charlie Mike Golf One Five Four Three Three at runway 1 requesting clearance for take-off".
    localValue3(number19)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    number19 = 1500
    localValue3(number19)
    localValue3 = eventHandler2
    number19 = {}
    number19.transactionType = "pilotSeatbelt"
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    localValue3(number19)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    number19 = 3000
    localValue3(number19)
    localValue3 = text7
    number19 = "take_off"
    localValue3(number19)
    localValue3 = cmgOperation3
    number19 = "Received, preparing for take-off Charlie Mike Golf One Five Four Three"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Received, preparing for take-off Charlie Mike Golf One Five Four Three".
    localValue3(number19)
    localValue3 = FreezeEntityPosition
    number19 = workingValue29
    number21 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue3(number19, number21)
    localValue3 = 0
    number20 = localValue3
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    number19 = 1500
    localValue3(number19)
    localValue3 = true
    return localValue3
  end
  localValue3 = nil
  workingValue4 = localValue3
  localValue3 = false
  return localValue3
end
text4 = workingValue27

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: localValue1) ===
function workingValue27(localValue1)
  local localValue2, localValue3, number19, number21
  localValue2 = SetNetworkVehicleAsGhost
  localValue3 = localValue1
  number19 = true
  localValue2(localValue3, number19)
  localValue2 = SetEntityAlpha
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  number19 = 255
  number21 = false
  localValue2(localValue3, number19, number21)
  localValue2 = SetEntityAlpha
  localValue3 = localValue1
  number19 = 255
  number21 = false
  localValue2(localValue3, number19, number21)
end

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10, stateFlag15, stateFlag17, stateFlag18
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  localValue3 = SetVehicleEngineOn
  number19 = localValue2
  number21 = false
  number23 = true
  workingValue33 = true
  localValue3(number19, number21, number23, workingValue33)
  localValue3 = SetEntityHeading
  number19 = localValue2
  number21 = 149.0
  -- Beginner: Change the direction an entity is facing.
  localValue3(number19, number21)
  localValue3 = FreezeEntityPosition
  number19 = localValue2
  number21 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(number19, number21)
  localValue3 = 1644266841
  number19 = CMG
  number19 = number19.getPlayerCoords
  -- Beginner: result below is playerCoords.
  number19 = number19()
  number21 = GetEntityHeading
  number23 = CMG
  number23 = number23.getPlayerPed
  number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10, stateFlag15, stateFlag17, stateFlag18 = number23()
  -- Beginner: result below is heading.
  number21 = number21(number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10, stateFlag15, stateFlag17, stateFlag18)
  while true do
    number23 = HasModelLoaded
    workingValue33 = localValue3
    number23 = number23(workingValue33)
    if number23 then
      break
    end
    number23 = RequestModel
    workingValue33 = localValue3
    number23(workingValue33)
    number23 = Citizen
    number23 = number23.Wait
    workingValue33 = 0
    number23(workingValue33)
  end
  number23 = CMG
  number23 = number23.spawnVehicle
  workingValue33 = "hauler"
  cmgOperation12 = text
  cmgOperation12 = cmgOperation12[localValue1]
  cmgOperation12 = cmgOperation12.pedCoords
  cmgOperation12 = cmgOperation12.x
  position2 = text
  position2 = position2[localValue1]
  position2 = position2.pedCoords
  position2 = position2.y
  position3 = text
  position3 = position3[localValue1]
  position3 = position3.pedCoords
  position3 = position3.z
  position = text
  position = position[localValue1]
  position = position.h
  stateFlag4 = false
  stateFlag6 = false
  number23 = number23(workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
  workingValue33 = CMG
  workingValue33 = workingValue33.spawnVehicle
  cmgOperation12 = "cmgtankert"
  position2 = text
  position2 = position2[localValue1]
  position2 = position2.pedCoords
  position2 = position2.x
  position2 = position2 - 3.5
  position3 = text
  position3 = position3[localValue1]
  position3 = position3.pedCoords
  position3 = position3.y
  position3 = position3 - 5.5
  position = text
  position = position[localValue1]
  position = position.pedCoords
  position = position.z
  stateFlag4 = text
  stateFlag4 = stateFlag4[localValue1]
  stateFlag4 = stateFlag4.h
  stateFlag6 = false
  stateFlag9 = false
  workingValue33 = workingValue33(cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9)
  cmgOperation12 = workingValue27
  position2 = number23
  cmgOperation12(position2)
  cmgOperation12 = workingValue27
  position2 = workingValue33
  cmgOperation12(position2)
  cmgOperation12 = Citizen
  cmgOperation12 = cmgOperation12.Wait
  position2 = 500
  cmgOperation12(position2)
  cmgOperation12 = SetEntityInvincible
  position2 = number23
  position3 = true
  cmgOperation12(position2, position3)
  cmgOperation12 = SetEntityInvincible
  position2 = workingValue33
  position3 = true
  cmgOperation12(position2, position3)
  cmgOperation12 = AttachVehicleToTrailer
  position2 = number23
  position3 = workingValue33
  position = 10
  cmgOperation12(position2, position3, position)
  cmgOperation12 = CreatePedInsideVehicle
  position2 = number23
  position3 = 4
  position = localValue3
  stateFlag4 = -1
  stateFlag6 = false
  stateFlag9 = false
  cmgOperation12 = cmgOperation12(position2, position3, position, stateFlag4, stateFlag6, stateFlag9)
  position2 = SetModelAsNoLongerNeeded
  position3 = localValue3
  position2(position3)
  position2 = Citizen
  position2 = position2.Wait
  position3 = 500
  position2(position3)
  position2 = SetEntityInvincible
  position3 = cmgOperation12
  position = true
  position2(position3, position)
  position2 = SetPedSteersAroundVehicles
  position3 = cmgOperation12
  position = true
  position2(position3, position)
  position2 = SetPedSteersAroundObjects
  position3 = cmgOperation12
  position = true
  position2(position3, position)
  position2 = GetEntityModel
  position3 = number23
  -- Beginner: result below is modelHash.
  position2 = position2(position3)
  position3 = TaskVehicleDriveToCoord
  position = cmgOperation12
  stateFlag4 = number23
  stateFlag6 = number19.x
  stateFlag9 = workingValue24.fuelOffsetX
  stateFlag6 = stateFlag6 + stateFlag9
  stateFlag9 = number19.y
  number2 = workingValue24.fuelOffsetY
  stateFlag9 = stateFlag9 + number2
  number2 = number19.z
  number3 = workingValue24.fuelOffsetZ
  number2 = number2 + number3
  number3 = 7.5
  number4 = 1.0
  number6 = position2
  number8 = 16777216
  number10 = 1.0
  stateFlag15 = 1
  position3(position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10, stateFlag15)
  position3 = Citizen
  position3 = position3.Wait
  position = 2000
  position3(position)
  position3 = 0
  while true do
    position = GetEntityCoords
    stateFlag4 = number23
    -- Beginner: result below is entityCoords.
    position = position(stateFlag4)
    stateFlag4 = CMG
    stateFlag4 = stateFlag4.getPlayerCoords
    -- Beginner: result below is playerCoords.
    stateFlag4 = stateFlag4()
    position = position - stateFlag4
    position = #position
    if not (position > 25 and position3 < 20) then
      break
    end
    position = SetVehicleEngineOn
    stateFlag4 = localValue2
    stateFlag6 = false
    stateFlag9 = true
    number2 = true
    position(stateFlag4, stateFlag6, stateFlag9, number2)
    position = Citizen
    position = position.Wait
    stateFlag4 = 1000
    position(stateFlag4)
    position3 = position3 + 1
  end
  position = Citizen
  position = position.Wait
  stateFlag4 = 5000
  position(stateFlag4)
  position = TaskLeaveVehicle
  stateFlag4 = cmgOperation12
  stateFlag6 = number23
  stateFlag9 = 64
  position(stateFlag4, stateFlag6, stateFlag9)
  position = GetEntityCoords
  stateFlag4 = cmgOperation12
  -- Beginner: result below is entityCoords.
  position = position(stateFlag4)
  stateFlag4 = Citizen
  stateFlag4 = stateFlag4.Wait
  stateFlag6 = 1000
  stateFlag4(stateFlag6)
  stateFlag4 = TaskGoStraightToCoord
  stateFlag6 = cmgOperation12
  stateFlag9 = number19.x
  stateFlag9 = stateFlag9 + 1.5
  number2 = number19.y
  number2 = number2 - 3
  number3 = number19.z
  number4 = 1.0
  number6 = 786603
  number8 = number21
  number10 = 100
  stateFlag4(stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10)
  position3 = 0
  while true do
    stateFlag4 = GetEntityCoords
    stateFlag6 = cmgOperation12
    -- Beginner: result below is entityCoords.
    stateFlag4 = stateFlag4(stateFlag6)
    stateFlag4 = stateFlag4.x
    stateFlag6 = number19.x
    stateFlag6 = stateFlag6 + 1.5
    stateFlag4 = stateFlag4 - stateFlag6
    stateFlag6 = 2.1
    if not (stateFlag4 > stateFlag6 and position3 < 12) then
      break
    end
    stateFlag4 = SetVehicleEngineOn
    stateFlag6 = localValue2
    stateFlag9 = false
    number2 = true
    number3 = true
    stateFlag4(stateFlag6, stateFlag9, number2, number3)
    stateFlag4 = Citizen
    stateFlag4 = stateFlag4.Wait
    stateFlag6 = 1000
    stateFlag4(stateFlag6)
    position3 = position3 + 1
  end
  stateFlag4 = SetEntityCoords
  stateFlag6 = cmgOperation12
  stateFlag9 = number19.x
  stateFlag9 = stateFlag9 + 1.5
  number2 = number19.y
  number3 = number19.z
  number4 = false
  number6 = false
  number8 = false
  number10 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  stateFlag4(stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10)
  while true do
    stateFlag4 = HasAnimDictLoaded
    stateFlag6 = "weapon@w_sp_jerrycan"
    stateFlag4 = stateFlag4(stateFlag6)
    if stateFlag4 then
      break
    end
    stateFlag4 = RequestAnimDict
    stateFlag6 = "weapon@w_sp_jerrycan"
    stateFlag4(stateFlag6)
    stateFlag4 = Citizen
    stateFlag4 = stateFlag4.Wait
    stateFlag6 = 0
    stateFlag4(stateFlag6)
  end
  stateFlag4 = Citizen
  stateFlag4 = stateFlag4.Wait
  stateFlag6 = 1000
  stateFlag4(stateFlag6)
  stateFlag4 = TaskPlayAnim
  stateFlag6 = cmgOperation12
  stateFlag9 = "weapon@w_sp_jerrycan"
  number2 = "fire"
  number3 = 8.0
  number4 = -8
  number6 = -1
  number8 = 49
  number10 = 0
  stateFlag15 = false
  stateFlag17 = false
  stateFlag18 = false
  -- Beginner: Play an animation on a ped.
  stateFlag4(stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10, stateFlag15, stateFlag17, stateFlag18)
  stateFlag4 = RemoveAnimDict
  stateFlag6 = "weapon@w_sp_jerrycan"
  stateFlag4(stateFlag6)
  while true do
    stateFlag4 = number5
    stateFlag6 = number7
    if not (stateFlag4 < stateFlag6) then
      break
    end
    stateFlag4 = SetVehicleEngineOn
    stateFlag6 = localValue2
    stateFlag9 = false
    number2 = true
    number3 = true
    stateFlag4(stateFlag6, stateFlag9, number2, number3)
    stateFlag4 = number5
    stateFlag4 = stateFlag4 + 1
    number5 = stateFlag4
    stateFlag4 = Citizen
    stateFlag4 = stateFlag4.Wait
    stateFlag6 = 250
    stateFlag4(stateFlag6)
  end
  stateFlag4 = ClearPedTasks
  stateFlag6 = cmgOperation12
  stateFlag4(stateFlag6)
  stateFlag4 = TaskGoStraightToCoord
  stateFlag6 = cmgOperation12
  stateFlag9 = position.x
  number2 = position.y
  number3 = position.z
  number4 = 1.0
  number6 = -1
  number8 = number21
  number10 = 50
  stateFlag4(stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10)
  stateFlag4 = FreezeEntityPosition
  stateFlag6 = CMG
  stateFlag6 = stateFlag6.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  stateFlag6 = stateFlag6()
  stateFlag9 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  stateFlag4(stateFlag6, stateFlag9)
  stateFlag4 = SetVehicleEngineOn
  stateFlag6 = CMG
  stateFlag6 = stateFlag6.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  stateFlag6 = stateFlag6()
  stateFlag9 = true
  number2 = true
  number3 = true
  stateFlag4(stateFlag6, stateFlag9, number2, number3)
  stateFlag4 = SetVehicleDoorsShut
  stateFlag6 = CMG
  stateFlag6 = stateFlag6.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  stateFlag6 = stateFlag6()
  stateFlag9 = false
  stateFlag4(stateFlag6, stateFlag9)
  stateFlag4 = false
  stateFlag27 = stateFlag4
  position3 = 0
  while true do
    stateFlag4 = position.x
    stateFlag6 = GetEntityCoords
    stateFlag9 = cmgOperation12
    -- Beginner: result below is entityCoords.
    stateFlag6 = stateFlag6(stateFlag9)
    stateFlag6 = stateFlag6.x
    stateFlag4 = stateFlag4 - stateFlag6
    stateFlag6 = 0.2
    if not (stateFlag4 < stateFlag6 and position3 < 30) then
      break
    end
    stateFlag4 = Citizen
    stateFlag4 = stateFlag4.Wait
    stateFlag6 = 1000
    stateFlag4(stateFlag6)
    position3 = position3 - 1
  end
  stateFlag4 = TaskEnterVehicle
  stateFlag6 = cmgOperation12
  stateFlag9 = number23
  number2 = 1
  number3 = -1
  number4 = 1.0
  number6 = 1
  number8 = 0
  stateFlag4(stateFlag6, stateFlag9, number2, number3, number4, number6, number8)
  stateFlag4 = TaskVehicleDriveToCoord
  stateFlag6 = cmgOperation12
  stateFlag9 = number23
  number2 = text
  number2 = number2[localValue1]
  number2 = number2.pedCoords
  number2 = number2.x
  number3 = text
  number3 = number3[localValue1]
  number3 = number3.pedCoords
  number3 = number3.y
  number4 = text
  number4 = number4[localValue1]
  number4 = number4.pedCoords
  number4 = number4.z
  number6 = 7.5
  number8 = 1.0
  number10 = position2
  stateFlag15 = 16777216
  stateFlag17 = 1.0
  stateFlag18 = 1
  stateFlag4(stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10, stateFlag15, stateFlag17, stateFlag18)
  stateFlag4 = Citizen
  stateFlag4 = stateFlag4.Wait
  stateFlag6 = 15000
  stateFlag4(stateFlag6)
  stateFlag4 = DeleteEntity
  stateFlag6 = number23
  -- Beginner: Delete a GTA entity.
  stateFlag4(stateFlag6)
  stateFlag4 = DeleteEntity
  stateFlag6 = workingValue33
  stateFlag4(stateFlag6)
  stateFlag4 = DeleteEntity
  stateFlag6 = cmgOperation12
  -- Beginner: Delete a GTA entity.
  stateFlag4(stateFlag6)
end
rageUiOperation2 = cmgOperation4

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation4(localValue1, localValue2, localValue3)
  local number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4
  number19 = Citizen
  number19 = number19.CreateThread

  -- === HELPER FUNCTION (decompiler name: number21; parameters: none) ===
  function number21()
    local localValue12, cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7, number, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, number11, stateFlag16, number13
    localValue12 = GetOffsetFromEntityInWorldCoords
    cmgOperation2 = workingValue29
    number18 = -30.0
    stateFlag21 = 30.0
    stateFlag22 = -3.0
    localValue12 = localValue12(cmgOperation2, number18, stateFlag21, stateFlag22)
    cmgOperation2 = GetEntityHeading
    number18 = workingValue29
    -- Beginner: result below is heading.
    cmgOperation2 = cmgOperation2(number18)
    cmgOperation2 = cmgOperation2 - 180
    if cmgOperation2 < 0.0 then
      cmgOperation2 = 360.0 + cmgOperation2
    end
    number18 = CMG
    number18 = number18.spawnVehicle
    stateFlag21 = "airtug"
    stateFlag22 = localValue12.x
    cmgOperation5 = localValue12.y
    workingValue34 = localValue12.z
    stateFlag24 = cmgOperation2
    stateFlag26 = false
    stateFlag28 = false
    stateFlag2 = false
    number18 = number18(stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2)
    stateFlag21 = SetEntityInvincible
    stateFlag22 = number18
    cmgOperation5 = true
    stateFlag21(stateFlag22, cmgOperation5)
    stateFlag21 = SetVehicleColours
    stateFlag22 = number18
    cmgOperation5 = 89
    workingValue34 = 0
    stateFlag21(stateFlag22, cmgOperation5, workingValue34)
    stateFlag21 = GetOffsetFromEntityInWorldCoords
    stateFlag22 = number18
    cmgOperation5 = 0.0
    workingValue34 = -4.0
    stateFlag24 = 0.0
    stateFlag21 = stateFlag21(stateFlag22, cmgOperation5, workingValue34, stateFlag24)
    stateFlag22 = CMG
    stateFlag22 = stateFlag22.spawnVehicle
    cmgOperation5 = "cmgtugt"
    workingValue34 = stateFlag21.x
    stateFlag24 = stateFlag21.y
    stateFlag26 = stateFlag21.z
    stateFlag28 = localValue2.tugCoords
    stateFlag28 = stateFlag28.w
    stateFlag2 = false
    stateFlag5 = false
    stateFlag7 = false
    stateFlag22 = stateFlag22(cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7)
    cmgOperation5 = workingValue27
    workingValue34 = number18
    cmgOperation5(workingValue34)
    cmgOperation5 = workingValue27
    workingValue34 = stateFlag22
    cmgOperation5(workingValue34)
    cmgOperation5 = 1644266841
    workingValue34 = AttachVehicleToTrailer
    stateFlag24 = number18
    stateFlag26 = stateFlag22
    stateFlag28 = 10
    workingValue34(stateFlag24, stateFlag26, stateFlag28)
    workingValue34 = Wait
    stateFlag24 = 1000
    workingValue34(stateFlag24)
    while true do
      workingValue34 = HasModelLoaded
      stateFlag24 = cmgOperation5
      workingValue34 = workingValue34(stateFlag24)
      if workingValue34 then
        break
      end
      workingValue34 = RequestModel
      stateFlag24 = cmgOperation5
      workingValue34(stateFlag24)
      workingValue34 = Wait
      stateFlag24 = 0
      workingValue34(stateFlag24)
    end
    workingValue34 = CreatePedInsideVehicle
    stateFlag24 = number18
    stateFlag26 = 4
    stateFlag28 = cmgOperation5
    stateFlag2 = -1
    stateFlag5 = false
    stateFlag7 = false
    workingValue34 = workingValue34(stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7)
    stateFlag24 = SetModelAsNoLongerNeeded
    stateFlag26 = cmgOperation5
    stateFlag24(stateFlag26)
    stateFlag24 = GetOffsetFromEntityInWorldCoords
    stateFlag26 = CMG
    stateFlag26 = stateFlag26.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    stateFlag26 = stateFlag26()
    stateFlag28 = -12.0
    stateFlag2 = -5.0
    stateFlag5 = 0.0
    stateFlag24 = stateFlag24(stateFlag26, stateFlag28, stateFlag2, stateFlag5)
    stateFlag26 = GetEntityModel
    stateFlag28 = number18
    -- Beginner: result below is modelHash.
    stateFlag26 = stateFlag26(stateFlag28)
    stateFlag28 = TaskVehicleDriveToCoord
    stateFlag2 = workingValue34
    stateFlag5 = number18
    stateFlag7 = stateFlag24.x
    number = stateFlag24.y
    stateFlag10 = stateFlag24.z
    stateFlag11 = 5.0
    stateFlag12 = 1.0
    stateFlag13 = stateFlag26
    stateFlag14 = 16777216
    number11 = 1.0
    stateFlag16 = 1
    stateFlag28(stateFlag2, stateFlag5, stateFlag7, number, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, number11, stateFlag16)
    stateFlag28 = localValue1
    if stateFlag28 then
      stateFlag28 = 0
      while true do
        stateFlag2 = number9
        stateFlag5 = number12
        if not (stateFlag2 < stateFlag5) then
          break
        end
        stateFlag2 = Wait
        stateFlag5 = 1000
        stateFlag2(stateFlag5)
        stateFlag28 = stateFlag28 + 1
      end
    else
      stateFlag28 = 0
      while true do
        stateFlag2 = number9
        if 0 == stateFlag2 then
          break
        end
        stateFlag2 = Wait
        stateFlag5 = 1000
        stateFlag2(stateFlag5)
        stateFlag28 = stateFlag28 + 1
      end
    end
    stateFlag28 = GetOffsetFromEntityInWorldCoords
    stateFlag2 = CMG
    stateFlag2 = stateFlag2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    stateFlag2 = stateFlag2()
    stateFlag5 = -30.0
    stateFlag7 = -30.0
    number = 0.0
    stateFlag28 = stateFlag28(stateFlag2, stateFlag5, stateFlag7, number)
    stateFlag2 = TaskVehicleDriveToCoord
    stateFlag5 = workingValue34
    stateFlag7 = number18
    number = stateFlag28.x
    stateFlag10 = stateFlag28.y
    stateFlag11 = stateFlag28.z
    stateFlag12 = 5.0
    stateFlag13 = 1.0
    stateFlag14 = stateFlag26
    number11 = 16777216
    stateFlag16 = 1.0
    number13 = 1
    stateFlag2(stateFlag5, stateFlag7, number, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, number11, stateFlag16, number13)
    stateFlag2 = 0
    while stateFlag2 < 30 do
      stateFlag2 = stateFlag2 + 1
      stateFlag5 = Wait
      stateFlag7 = 1000
      stateFlag5(stateFlag7)
    end
    stateFlag5 = DeleteEntity
    stateFlag7 = workingValue34
    -- Beginner: Delete a GTA entity.
    stateFlag5(stateFlag7)
    stateFlag5 = DeleteEntity
    stateFlag7 = number18
    stateFlag5(stateFlag7)
    stateFlag5 = DeleteEntity
    stateFlag7 = stateFlag22
    -- Beginner: Delete a GTA entity.
    stateFlag5(stateFlag7)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number19(number21)
  number19 = {}
  number21 = CMG
  number21 = number21.loadModel
  number23 = 588969535
  number21 = number21(number23)
  if not number21 then
    number21 = 0
  end
  number23 = CMG
  number23 = number23.loadModel
  workingValue33 = 2120901815
  number23 = number23(workingValue33)
  if not number23 then
    number23 = 0
  end
  number19[1] = number21
  number19[2] = number23
  number21 = CMG
  number21 = number21.loadAnimDict
  number23 = "anim@heists@box_carry@"
  -- Beginner: Load a GTA animation dictionary before using it.
  number21(number23)
  number21 = CMG
  number21 = number21.loadModel
  number23 = -517243780
  -- Beginner: Request/load a GTA model before spawning or applying it.
  number21(number23)
  if localValue1 then
    number21 = localValue2.pedCoords
    while true do
      number23 = number9
      workingValue33 = number12
      if not (number23 < workingValue33) then
        break
      end
      number23 = Citizen
      number23 = number23.CreateThread

      -- === HELPER FUNCTION (decompiler name: workingValue33; parameters: none) ===
      function workingValue33()
        local localValue12, cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7, number, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, number11, stateFlag16
        localValue12 = CMG
        localValue12 = localValue12.getPlayerCoords
        -- Beginner: result below is playerCoords.
        localValue12 = localValue12()
        cmgOperation2 = math
        cmgOperation2 = cmgOperation2.random
        number18 = 1
        stateFlag21 = number19
        stateFlag21 = #stateFlag21
        cmgOperation2 = cmgOperation2(number18, stateFlag21)
        number18 = number19
        cmgOperation2 = number18[cmgOperation2]
        number18 = CreatePed
        stateFlag21 = 4
        stateFlag22 = cmgOperation2
        cmgOperation5 = number21.x
        workingValue34 = number21.y
        stateFlag24 = number21.z
        stateFlag26 = 0.0
        stateFlag28 = false
        stateFlag2 = false
        -- Beginner: result below is pedEntity.
        number18 = number18(stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2)
        stateFlag21 = 0
        stateFlag22 = TaskGoStraightToCoord
        cmgOperation5 = number18
        workingValue34 = localValue12.x
        stateFlag24 = localValue12.y
        stateFlag26 = localValue12.z
        stateFlag28 = 2.0
        stateFlag2 = -1
        stateFlag5 = 0.0
        stateFlag7 = 0
        stateFlag22(cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7)
        stateFlag22 = 0
        cmgOperation5 = localValue3
        if cmgOperation5 then
          cmgOperation5 = TaskPlayAnim
          workingValue34 = number18
          stateFlag24 = "anim@heists@box_carry@"
          stateFlag26 = "idle"
          stateFlag28 = 2.0
          stateFlag2 = 2.0
          stateFlag5 = -1
          stateFlag7 = 51
          number = 0
          stateFlag10 = false
          stateFlag11 = false
          stateFlag12 = false
          -- Beginner: Play an animation on a ped.
          cmgOperation5(workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7, number, stateFlag10, stateFlag11, stateFlag12)
          cmgOperation5 = CreateObject
          workingValue34 = -517243780
          stateFlag24 = localValue12.x
          stateFlag26 = localValue12.y
          stateFlag28 = localValue12.z
          stateFlag2 = false
          stateFlag5 = false
          stateFlag7 = false
          -- Beginner: result below is objectEntity.
          cmgOperation5 = cmgOperation5(workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7)
          stateFlag22 = cmgOperation5
          cmgOperation5 = AttachEntityToEntity
          workingValue34 = stateFlag22
          stateFlag24 = number18
          stateFlag26 = GetPedBoneIndex
          stateFlag28 = number18
          stateFlag2 = 60309
          stateFlag26 = stateFlag26(stateFlag28, stateFlag2)
          stateFlag28 = 0.025
          stateFlag2 = 0.08
          stateFlag5 = 0.255
          stateFlag7 = -145.0
          number = 290.0
          stateFlag10 = 0.0
          stateFlag11 = true
          stateFlag12 = true
          stateFlag13 = false
          stateFlag14 = true
          number11 = 1
          stateFlag16 = true
          -- Beginner: Attach one entity to another entity.
          cmgOperation5(workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7, number, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, number11, stateFlag16)
        end
        cmgOperation5 = Citizen
        cmgOperation5 = cmgOperation5.Wait
        workingValue34 = 10000
        cmgOperation5(workingValue34)
        while true do
          cmgOperation5 = GetEntityCoords
          workingValue34 = number18
          -- Beginner: result below is entityCoords.
          cmgOperation5 = cmgOperation5(workingValue34)
          cmgOperation5 = localValue12 - cmgOperation5
          cmgOperation5 = #cmgOperation5
          if not (cmgOperation5 > 10 and stateFlag21 <= 60) then
            break
          end
          cmgOperation5 = Citizen
          cmgOperation5 = cmgOperation5.Wait
          workingValue34 = 1000
          cmgOperation5(workingValue34)
          stateFlag21 = stateFlag21 + 1
        end
        cmgOperation5 = CMG
        cmgOperation5 = cmgOperation5.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgOperation5 = cmgOperation5()
        workingValue34 = 0
        stateFlag24 = GetVehicleModelNumberOfSeats
        stateFlag26 = GetEntityModel
        stateFlag28 = cmgOperation5
        stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7, number, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, number11, stateFlag16 = stateFlag26(stateFlag28)
        stateFlag24 = stateFlag24(stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7, number, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, number11, stateFlag16)
        if stateFlag24 > 2 then
          workingValue34 = 1
        end
        stateFlag24 = TaskEnterVehicle
        stateFlag26 = number18
        stateFlag28 = CMG
        stateFlag28 = stateFlag28.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        stateFlag28 = stateFlag28()
        stateFlag2 = 15000
        stateFlag5 = workingValue34
        stateFlag7 = 2.0
        number = 1
        stateFlag10 = 0
        stateFlag24(stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7, number, stateFlag10)
        stateFlag24 = Citizen
        stateFlag24 = stateFlag24.Wait
        stateFlag26 = 10000
        stateFlag24(stateFlag26)
        stateFlag24 = DeletePed
        stateFlag26 = number18
        stateFlag24(stateFlag26)
        stateFlag24 = DeleteEntity
        stateFlag26 = stateFlag22
        -- Beginner: Delete a GTA entity.
        stateFlag24(stateFlag26)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      number23(workingValue33)
      number23 = Citizen
      number23 = number23.Wait
      workingValue33 = math
      workingValue33 = workingValue33.random
      cmgOperation12 = 8000
      position2 = 13000
      workingValue33, cmgOperation12, position2, position3, position, stateFlag4 = workingValue33(cmgOperation12, position2)
      number23(workingValue33, cmgOperation12, position2, position3, position, stateFlag4)
    end
  else
    while true do
      number21 = number9
      if 0 == number21 then
        break
      end
      number21 = Citizen
      number21 = number21.CreateThread

      -- === HELPER FUNCTION (decompiler name: number23; parameters: none) ===
      function number23()
        local localValue12, cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7, number, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, number11
        localValue12 = GetOffsetFromEntityInWorldCoords
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgOperation2 = cmgOperation2()
        number18 = -15.0
        stateFlag21 = 3.0
        stateFlag22 = 0.0
        localValue12 = localValue12(cmgOperation2, number18, stateFlag21, stateFlag22)
        cmgOperation2 = math
        cmgOperation2 = cmgOperation2.random
        number18 = 1
        stateFlag21 = number19
        stateFlag21 = #stateFlag21
        cmgOperation2 = cmgOperation2(number18, stateFlag21)
        number18 = number19
        cmgOperation2 = number18[cmgOperation2]
        number18 = CreatePedInsideVehicle
        stateFlag21 = CMG
        stateFlag21 = stateFlag21.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        stateFlag21 = stateFlag21()
        stateFlag22 = 4
        cmgOperation5 = cmgOperation2
        workingValue34 = workingValue24.seatPedSitsIn
        stateFlag24 = false
        stateFlag26 = false
        number18 = number18(stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26)
        stateFlag21 = TaskLeaveVehicle
        stateFlag22 = number18
        cmgOperation5 = CMG
        cmgOperation5 = cmgOperation5.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgOperation5 = cmgOperation5()
        workingValue34 = 256
        stateFlag21(stateFlag22, cmgOperation5, workingValue34)
        stateFlag21 = Citizen
        stateFlag21 = stateFlag21.Wait
        stateFlag22 = 3000
        stateFlag21(stateFlag22)
        stateFlag21 = TaskGoStraightToCoord
        stateFlag22 = number18
        cmgOperation5 = localValue12.x
        workingValue34 = localValue12.y
        stateFlag24 = localValue12.z
        stateFlag26 = 2.0
        stateFlag28 = -1
        stateFlag2 = 0.0
        stateFlag5 = 0
        stateFlag21(stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5)
        stateFlag21 = 0
        stateFlag22 = localValue3
        if stateFlag22 then
          stateFlag22 = TaskPlayAnim
          cmgOperation5 = number18
          workingValue34 = "anim@heists@box_carry@"
          stateFlag24 = "idle"
          stateFlag26 = 2.0
          stateFlag28 = 2.0
          stateFlag2 = -1
          stateFlag5 = 51
          stateFlag7 = 0
          number = false
          stateFlag10 = false
          stateFlag11 = false
          -- Beginner: Play an animation on a ped.
          stateFlag22(cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7, number, stateFlag10, stateFlag11)
          stateFlag22 = CreateObject
          cmgOperation5 = -517243780
          workingValue34 = localValue12.x
          stateFlag24 = localValue12.y
          stateFlag26 = localValue12.z
          stateFlag28 = false
          stateFlag2 = false
          stateFlag5 = false
          -- Beginner: result below is objectEntity.
          stateFlag22 = stateFlag22(cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5)
          stateFlag21 = stateFlag22
          stateFlag22 = AttachEntityToEntity
          cmgOperation5 = stateFlag21
          workingValue34 = number18
          stateFlag24 = GetPedBoneIndex
          stateFlag26 = number18
          stateFlag28 = 60309
          stateFlag24 = stateFlag24(stateFlag26, stateFlag28)
          stateFlag26 = 0.025
          stateFlag28 = 0.08
          stateFlag2 = 0.255
          stateFlag5 = -145.0
          stateFlag7 = 290.0
          number = 0.0
          stateFlag10 = true
          stateFlag11 = true
          stateFlag12 = false
          stateFlag13 = true
          stateFlag14 = 1
          number11 = true
          -- Beginner: Attach one entity to another entity.
          stateFlag22(cmgOperation5, workingValue34, stateFlag24, stateFlag26, stateFlag28, stateFlag2, stateFlag5, stateFlag7, number, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, number11)
        end
        stateFlag22 = 0
        while true do
          cmgOperation5 = GetEntityCoords
          workingValue34 = number18
          -- Beginner: result below is entityCoords.
          cmgOperation5 = cmgOperation5(workingValue34)
          cmgOperation5 = localValue12 - cmgOperation5
          cmgOperation5 = #cmgOperation5
          if not (cmgOperation5 > 5 and stateFlag22 <= 30) then
            break
          end
          cmgOperation5 = Citizen
          cmgOperation5 = cmgOperation5.Wait
          workingValue34 = 1000
          cmgOperation5(workingValue34)
          stateFlag22 = stateFlag22 + 1
        end
        cmgOperation5 = DeletePed
        workingValue34 = number18
        cmgOperation5(workingValue34)
        cmgOperation5 = DeleteEntity
        workingValue34 = stateFlag21
        -- Beginner: Delete a GTA entity.
        cmgOperation5(workingValue34)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      number21(number23)
      number21 = Citizen
      number21 = number21.Wait
      number23 = math
      number23 = number23.random
      workingValue33 = 8000
      cmgOperation12 = 13000
      number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4 = number23(workingValue33, cmgOperation12)
      number21(number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4)
    end
  end
  number21 = FreezeEntityPosition
  number23 = CMG
  number23 = number23.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  number23 = number23()
  workingValue33 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  number21(number23, workingValue33)
  number21 = SetVehicleDoorsShut
  number23 = CMG
  number23 = number23.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  number23 = number23()
  workingValue33 = false
  number21(number23, workingValue33)
  number21 = SetVehicleEngineOn
  number23 = CMG
  number23 = number23.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  number23 = number23()
  workingValue33 = true
  cmgOperation12 = false
  position2 = false
  number21(number23, workingValue33, cmgOperation12, position2)
  number21 = pairs
  number23 = number19
  number21, number23, workingValue33, cmgOperation12 = number21(number23)
  for position2, position3 in number21, number23, workingValue33, cmgOperation12 do
    position = SetModelAsNoLongerNeeded
    stateFlag4 = position3
    position(stateFlag4)
  end
  number21 = RemoveAnimDict
  number23 = "anim@heists@box_carry@"
  number21(number23)
  number21 = SetModelAsNoLongerNeeded
  number23 = -517243780
  number21(number23)
end
rageUiOperation3 = cmgOperation4
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue1, localValue2, localValue3) ===
function workingValue28(localValue1, localValue2, localValue3)
  local number19, number21, number23, workingValue33
  number19 = true
  number21 = RequestScaleformMovie
  number23 = "mp_big_message_freemode"
  -- Beginner: result below is scaleformHandle.
  number21 = number21(number23)
  while true do
    number23 = HasScaleformMovieLoaded
    workingValue33 = number21
    number23 = number23(workingValue33)
    if number23 then
      break
    end
    number23 = Wait
    workingValue33 = 0
    number23(workingValue33)
  end
  if not localValue3 then
    number23 = Citizen
    number23 = number23.CreateThread

    -- === HELPER FUNCTION (decompiler name: workingValue33; parameters: none) ===
    function workingValue33()
      local localValue12, cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34
      while true do
        localValue12 = number19
        if not localValue12 then
          break
        end
        localValue12 = Wait
        cmgOperation2 = 0
        localValue12(cmgOperation2)
        localValue12 = BeginScaleformMovieMethod
        cmgOperation2 = number21
        number18 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        localValue12(cmgOperation2, number18)
        localValue12 = _ENV
        cmgOperation2 = "ScaleformMovieMethodAddParamTextureNameString"
        localValue12 = localValue12[cmgOperation2]
        cmgOperation2 = localValue1
        localValue12(cmgOperation2)
        localValue12 = _ENV
        cmgOperation2 = "ScaleformMovieMethodAddParamTextureNameString"
        localValue12 = localValue12[cmgOperation2]
        cmgOperation2 = localValue2
        localValue12(cmgOperation2)
        localValue12 = ScaleformMovieMethodAddParamInt
        cmgOperation2 = 0
        localValue12(cmgOperation2)
        localValue12 = EndScaleformMovieMethod
        localValue12()
        localValue12 = DrawScaleformMovieFullscreen
        cmgOperation2 = number21
        number18 = 255
        stateFlag21 = 255
        stateFlag22 = 255
        cmgOperation5 = 255
        workingValue34 = 0
        localValue12(cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    number23(workingValue33)
    number23 = Citizen
    number23 = number23.Wait
    workingValue33 = 8000
    number23(workingValue33)
    number19 = false
    number23 = false
    stateFlag23 = number23
  else
    number23 = Citizen
    number23 = number23.CreateThread

    -- === HELPER FUNCTION (decompiler name: workingValue33; parameters: none) ===
    function workingValue33()
      local localValue12, cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26
      localValue12 = localValue3
      cmgOperation2 = Citizen
      cmgOperation2 = cmgOperation2.CreateThread

      -- === HELPER FUNCTION (decompiler name: number18; parameters: none) ===
      function number18()
        local localValue13, localValue22
        while true do
          localValue13 = localValue12
          if 0 == localValue13 then
            break
          end
          localValue13 = Wait
          localValue22 = 1000
          localValue13(localValue22)
          localValue13 = localValue12
          localValue13 = localValue13 - 1
          localValue12 = localValue13
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      cmgOperation2(number18)
      while 0 ~= localValue12 do
        cmgOperation2 = Wait
        number18 = 0
        cmgOperation2(number18)
        cmgOperation2 = BeginScaleformMovieMethod
        number18 = number21
        stateFlag21 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        cmgOperation2(number18, stateFlag21)
        cmgOperation2 = _ENV
        number18 = "ScaleformMovieMethodAddParamTextureNameString"
        cmgOperation2 = cmgOperation2[number18]
        number18 = localValue1
        cmgOperation2(number18)
        cmgOperation2 = ""
        number18 = DoesEntityExist
        stateFlag21 = workingValue29
        number18 = number18(stateFlag21)
        if number18 then
          number18 = string
          number18 = number18.format
          stateFlag21 = " (Your plane will be deleted in %s seconds and your shift will end)"
          stateFlag22 = localValue12
          number18 = number18(stateFlag21, stateFlag22)
          cmgOperation2 = number18
        end
        number18 = _ENV
        stateFlag21 = "ScaleformMovieMethodAddParamTextureNameString"
        number18 = number18[stateFlag21]
        stateFlag21 = string
        stateFlag21 = stateFlag21.format
        stateFlag22 = "%s%s"
        cmgOperation5 = localValue2
        workingValue34 = cmgOperation2
        stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26 = stateFlag21(stateFlag22, cmgOperation5, workingValue34)
        number18(stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26)
        number18 = ScaleformMovieMethodAddParamInt
        stateFlag21 = 0
        number18(stateFlag21)
        number18 = EndScaleformMovieMethod
        number18()
        number18 = DrawScaleformMovieFullscreen
        stateFlag21 = number21
        stateFlag22 = 255
        cmgOperation5 = 255
        workingValue34 = 255
        stateFlag24 = 255
        stateFlag26 = 0
        number18(stateFlag21, stateFlag22, cmgOperation5, workingValue34, stateFlag24, stateFlag26)
      end
      cmgOperation2 = false
      stateFlag23 = cmgOperation2
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    number23(workingValue33)
  end
end
cmgOperation4.drawPlaneScaleForm = workingValue28

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8
  localValue1 = 1
  localValue2 = text
  localValue2 = #localValue2
  localValue3 = 1
  for number19 = localValue1, localValue2, localValue3 do
    number21 = dataCollection3
    number23 = CreateCheckpoint
    workingValue33 = 5
    cmgOperation12 = text
    cmgOperation12 = cmgOperation12[number19]
    cmgOperation12 = cmgOperation12.coords
    cmgOperation12 = cmgOperation12.x
    position2 = text
    position2 = position2[number19]
    position2 = position2.coords
    position2 = position2.y
    position3 = text
    position3 = position3[number19]
    position3 = position3.coords
    position3 = position3.z
    position3 = position3 - 3
    position = text
    position = position[number19]
    position = position.coords
    position = position.x
    stateFlag4 = text
    stateFlag4 = stateFlag4[number19]
    stateFlag4 = stateFlag4.coords
    stateFlag4 = stateFlag4.y
    stateFlag6 = text
    stateFlag6 = stateFlag6[number19]
    stateFlag6 = stateFlag6.coords
    stateFlag6 = stateFlag6.z
    stateFlag9 = 30.0
    number2 = 255
    number3 = 215
    number4 = 0
    number6 = 100
    number8 = 0
    -- Beginner: result below is checkpointHandle.
    number23 = number23(workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8)
    number21[number19] = number23
  end
end
text5 = cmgOperation4

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, number19, number21, number23
  localValue1 = 1
  localValue2 = dataCollection3
  localValue2 = #localValue2
  localValue3 = 1
  for number19 = localValue1, localValue2, localValue3 do
    number21 = DeleteCheckpoint
    number23 = dataCollection3
    number23 = number23[number19]
    number21(number23)
  end
  localValue1 = false
  stateFlag8 = localValue1
end
text6 = cmgOperation4

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6
  localValue1 = number20
  localValue2 = CMG
  localValue2 = localValue2.getTunableValue
  localValue3 = "pilot_max_damage"
  localValue2 = localValue2(localValue3)
  localValue1 = localValue1 / localValue2
  if localValue1 > 1.0 then
    localValue1 = 1.0
  end
  localValue2 = workingValue16.height
  localValue2 = localValue1 * localValue2
  workingValue17.height = localValue2
  localValue2 = workingValue16.y
  localValue3 = workingValue16.height
  localValue3 = localValue3 / 2
  number19 = workingValue17.height
  number19 = number19 / 2
  localValue3 = localValue3 - number19
  localValue2 = localValue2 + localValue3
  workingValue17.y = localValue2
  localValue2 = DrawRect
  localValue3 = workingValue16.x
  number19 = workingValue16.y
  number21 = workingValue16.width
  number23 = workingValue16.height
  workingValue33 = 0
  cmgOperation12 = 0
  position2 = 0
  position3 = 120
  localValue2(localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3)
  localValue2 = DrawRect
  localValue3 = workingValue17.x
  number19 = workingValue17.y
  number21 = workingValue17.width
  number23 = workingValue17.height
  workingValue33 = 200
  cmgOperation12 = 0
  position2 = 0
  position3 = 255
  localValue2(localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3)
  localValue2 = DrawRect
  localValue3 = workingValue18.x
  number19 = workingValue18.y
  number21 = workingValue18.width
  number23 = workingValue18.height
  workingValue33 = 0
  cmgOperation12 = 0
  position2 = 0
  position3 = 200
  localValue2(localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3)
  localValue2 = DrawRect
  localValue3 = workingValue19.x
  number19 = workingValue19.y
  number21 = workingValue19.width
  number23 = workingValue19.height
  workingValue33 = 0
  cmgOperation12 = 0
  position2 = 0
  position3 = 200
  localValue2(localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3)
  localValue2 = DrawRect
  localValue3 = workingValue20.x
  number19 = workingValue20.y
  number21 = workingValue20.width
  number23 = workingValue20.height
  workingValue33 = 0
  cmgOperation12 = 0
  position2 = 0
  position3 = 200
  localValue2(localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3)
  localValue2 = DrawRect
  localValue3 = workingValue21.x
  number19 = workingValue21.y
  number21 = workingValue21.width
  number23 = workingValue21.height
  workingValue33 = 0
  cmgOperation12 = 0
  position2 = 0
  position3 = 200
  localValue2(localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3)
  localValue2 = DrawSprite
  localValue3 = "pilotjob"
  number19 = "damageIcon"
  number21 = workingValue16.x
  number23 = workingValue16.y
  workingValue33 = 0.022
  cmgOperation12 = 0.045
  position2 = 0.0
  position3 = 255
  position = 255
  stateFlag4 = 255
  stateFlag6 = 255
  localValue2(localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6)
end

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: none) ===
function workingValue28()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4
  localValue1 = globalOnPilotDuty
  if localValue1 then
    localValue1 = IsPedInVehicle
    localValue2 = CMG
    localValue2 = localValue2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = workingValue29
    number19 = false
    localValue1 = localValue1(localValue2, localValue3, number19)
    if localValue1 then
      localValue1 = number5
      if localValue1 > 0 then
        localValue1 = GetIsVehicleEngineRunning
        localValue2 = CMG
        localValue2 = localValue2.getPlayerVehicle
        localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4 = localValue2()
        localValue1 = localValue1(localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4)
        if localValue1 then
          localValue1 = dataCollection.y
          localValue2 = dataCollection.height
          localValue2 = localValue2 / 2
          localValue3 = workingValue11.height
          localValue3 = localValue3 / 2
          localValue2 = localValue2 - localValue3
          localValue1 = localValue1 + localValue2
          workingValue11.y = localValue1
        end
      end
      localValue1 = DrawRect
      localValue2 = workingValue10.x
      localValue3 = workingValue10.y
      number19 = workingValue10.width
      number21 = dataCollection.height
      number23 = 0
      workingValue33 = 0
      cmgOperation12 = 0
      position2 = 120
      localValue1(localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2)
      localValue1 = DrawRect
      localValue2 = workingValue11.x
      localValue3 = workingValue11.y
      number19 = workingValue11.width
      number21 = workingValue11.height
      number23 = math
      number23 = number23.floor
      workingValue33 = number7
      cmgOperation12 = 200
      workingValue33 = cmgOperation12 / workingValue33
      cmgOperation12 = number5
      workingValue33 = workingValue33 * cmgOperation12
      cmgOperation12 = 200
      workingValue33 = cmgOperation12 - workingValue33
      number23 = number23(workingValue33)
      workingValue33 = math
      workingValue33 = workingValue33.floor
      cmgOperation12 = number7
      position2 = 200
      cmgOperation12 = position2 / cmgOperation12
      position2 = number5
      cmgOperation12 = cmgOperation12 * position2
      workingValue33 = workingValue33(cmgOperation12)
      cmgOperation12 = 0
      position2 = 255
      localValue1(localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2)
      localValue1 = DrawRect
      localValue2 = workingValue12.x
      localValue3 = workingValue12.y
      number19 = workingValue12.width
      number21 = workingValue12.height
      number23 = 0
      workingValue33 = 0
      cmgOperation12 = 0
      position2 = 200
      localValue1(localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2)
      localValue1 = DrawRect
      localValue2 = workingValue13.x
      localValue3 = workingValue13.y
      number19 = workingValue13.width
      number21 = workingValue13.height
      number23 = 0
      workingValue33 = 0
      cmgOperation12 = 0
      position2 = 200
      localValue1(localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2)
      localValue1 = DrawRect
      localValue2 = workingValue14.x
      localValue3 = workingValue14.y
      number19 = workingValue14.width
      number21 = workingValue14.height
      number23 = 0
      workingValue33 = 0
      cmgOperation12 = 0
      position2 = 200
      localValue1(localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2)
      localValue1 = DrawRect
      localValue2 = workingValue15.x
      localValue3 = workingValue15.y
      number19 = workingValue15.width
      number21 = workingValue15.height
      number23 = 0
      workingValue33 = 0
      cmgOperation12 = 0
      position2 = 200
      localValue1(localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2)
      localValue1 = DrawSprite
      localValue2 = "pilotjob"
      localValue3 = "gasCanSprite"
      number19 = workingValue10.x
      number21 = workingValue10.y
      number23 = 0.022
      workingValue33 = 0.045
      cmgOperation12 = 0.0
      position2 = 255
      position3 = 255
      position = 255
      stateFlag4 = 255
      localValue1(localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4)
      localValue1 = cmgOperation4
      localValue1()
    end
  end
end
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.createThreadOnTick
workingValue30 = workingValue28
cmgOperation7 = "Pilot Fuel UI"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation6(workingValue30, cmgOperation7)
cmgOperation6 = 0

-- === HELPER FUNCTION (decompiler name: workingValue30; parameters: none) ===
function workingValue30()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10
  localValue1 = globalOnPilotDuty
  if localValue1 then
    localValue1 = DoesEntityExist
    localValue2 = workingValue29
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue1 = localValue1()
      cmgOperation6 = localValue1
      localValue1 = CMG
      localValue1 = localValue1.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      localValue1 = localValue1()
      localValue2 = workingValue29
      if localValue1 == localValue2 then
        localValue1 = GetEntityHeightAboveGround
        localValue2 = CMG
        localValue2 = localValue2.getPlayerVehicle
        localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10 = localValue2()
        localValue1 = localValue1(localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6, number8, number10)
        if localValue1 > 60 then
          localValue2 = GetVehicleEngineHealth
          localValue3 = workingValue29
          localValue2 = localValue2(localValue3)
          if localValue2 < 0 then
            localValue2 = stateFlag23
            if not localValue2 then
              localValue2 = true
              stateFlag23 = localValue2
              localValue2 = false
              stateFlag25 = localValue2
              localValue2 = Citizen
              localValue2 = localValue2.CreateThread

              -- === HELPER FUNCTION: localValue3() ===
              function localValue3()
                local localValue12, cmgOperation2, number18
                localValue12 = CMG
                localValue12 = localValue12.drawPlaneScaleForm
                cmgOperation2 = "~r~MISSION FAILED"
                number18 = "You crashed your plane, go get a new one!"
                localValue12(cmgOperation2, number18)
                localValue12 = TriggerServerEvent
                cmgOperation2 = "8ae979e044"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ae979e044".
                localValue12(cmgOperation2)
              end
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              localValue2(localValue3)
            end
          end
        else
          localValue2 = stateFlag23
          if not localValue2 then
            localValue2 = true
            stateFlag23 = localValue2
            localValue2 = Citizen
            localValue2 = localValue2.CreateThread

            -- === HELPER FUNCTION: localValue3() ===
            function localValue3()
              local localValue12, cmgOperation2, number18, stateFlag21, stateFlag22, cmgOperation5, workingValue34
              localValue12 = false
              cmgOperation2 = 1
              number18 = cmgOperation.takeOffLocs
              number18 = #number18
              stateFlag21 = 1
              for stateFlag22 = cmgOperation2, number18, stateFlag21 do
                cmgOperation5 = cmgOperation.takeOffLocs
                cmgOperation5 = cmgOperation5[stateFlag22]
                cmgOperation5 = cmgOperation5.coords
                workingValue34 = CMG
                workingValue34 = workingValue34.getPlayerCoords
                -- Beginner: result below is playerCoords.
                workingValue34 = workingValue34()
                cmgOperation5 = cmgOperation5 - workingValue34
                cmgOperation5 = #cmgOperation5
                workingValue34 = 1500
                if cmgOperation5 < workingValue34 then
                  localValue12 = true
                end
              end
              if not localValue12 then
                cmgOperation2 = eventHandler2
                number18 = {}
                number18.transactionType = "pilotPullUpAlarm"
                -- Beginner: Register a network event handler that the server/other clients can trigger.
                cmgOperation2(number18)
                cmgOperation2 = CMG
                cmgOperation2 = cmgOperation2.drawPlaneScaleForm
                number18 = "~r~ LOW ALTITUDE"
                stateFlag21 = "Low altitude warning, Pull up!"
                cmgOperation2(number18, stateFlag21)
              end
              cmgOperation2 = false
              stateFlag23 = cmgOperation2
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            localValue2(localValue3)
          end
        end
        localValue2 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue2 = localValue2()
        localValue3 = GetEntityVelocity
        number19 = workingValue29
        localValue3 = localValue3(number19)
        number19 = workingValue22
        number19 = localValue2 - number19
        number21 = 1000
        if number19 < number21 then
          number21 = localValue3.z
          number23 = createVector3.z
          number21 = number21 - number23
          number23 = number19 / 1000
          number23 = number21 / number23
          workingValue33 = number23 / 9.81
          cmgOperation12 = -0.05
          if workingValue33 > cmgOperation12 then
            cmgOperation12 = 0.05
            if workingValue33 < cmgOperation12 then
              workingValue33 = 0.0
            end
          end
          cmgOperation12 = false
          position2 = CMG
          position2 = position2.getTunableValue
          position3 = "pilot_gforce_limit"
          position2 = position2(position3)
          if localValue1 > 5.0 then
            if not (workingValue33 > position2) then
              position3 = -position2
              if not (workingValue33 < position3) then
                goto continueAtStep102
              end
            end
            position3 = number20
            position = math
            position = position.abs
            stateFlag4 = workingValue33
            position = position(stateFlag4)
            position = number19 * position
            position3 = position3 + position
            number20 = position3
            cmgOperation12 = true
          end
          ::continueAtStep102::
          if cmgOperation12 then
            position3 = "~r~"
            if position3 then
              goto continueAtStep108
            end
          end
          position3 = ""
          ::continueAtStep108::
          if cmgOperation12 then
            position = 0.8
            if position then
              goto continueAtStep114
            end
          end
          position = 0.4
          ::continueAtStep114::
          stateFlag4 = CMG
          stateFlag4 = stateFlag4.DrawText
          stateFlag6 = 0.75
          stateFlag9 = 0.005
          number2 = position3
          number3 = "Vertical Gs: "
          number4 = tostring
          number6 = math
          number6 = number6.round
          number8 = workingValue33
          number10 = 1
          number6, number8, number10 = number6(number8, number10)
          number4 = number4(number6, number8, number10)
          number2 = number2 .. number3 .. number4
          number3 = position
          stateFlag4(stateFlag6, stateFlag9, number2, number3)
          stateFlag4 = CMG
          stateFlag4 = stateFlag4.isDevMode
          stateFlag4 = stateFlag4()
          if stateFlag4 then
            stateFlag4 = CMG
            stateFlag4 = stateFlag4.DrawText
            stateFlag6 = 0.75
            stateFlag9 = 0.05
            number2 = position3
            number3 = "Damage Counter: "
            number4 = tostring
            number6 = number20
            number4 = number4(number6)
            number2 = number2 .. number3 .. number4
            number3 = position
            stateFlag4(stateFlag6, stateFlag9, number2, number3)
          end
        end
        workingValue22 = localValue2
        createVector3 = localValue3
      else
        localValue1 = stateFlag25
        if localValue1 then
          localValue1 = stateFlag23
          if not localValue1 then
            localValue1 = true
            stateFlag23 = localValue1
            localValue1 = Citizen
            localValue1 = localValue1.CreateThread

            -- === HELPER FUNCTION: localValue2() ===
            function localValue2()
              local localValue12, cmgOperation2, number18, stateFlag21
              localValue12 = CMG
              localValue12 = localValue12.drawPlaneScaleForm
              cmgOperation2 = "~r~WARNING!"
              number18 = "Get back in your plane"
              stateFlag21 = 10
              localValue12(cmgOperation2, number18, stateFlag21)
              localValue12 = Wait
              cmgOperation2 = 10000
              localValue12(cmgOperation2)
              localValue12 = CMG
              localValue12 = localValue12.getPlayerVehicle
              -- Beginner: result below is currentVehicle.
              localValue12 = localValue12()
              cmgOperation2 = workingValue29
              if localValue12 ~= cmgOperation2 then
                localValue12 = DeleteEntity
                cmgOperation2 = workingValue29
                -- Beginner: Delete a GTA entity.
                localValue12(cmgOperation2)
                localValue12 = false
                stateFlag25 = localValue12
                localValue12 = TriggerServerEvent
                cmgOperation2 = "8ae979e044"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ae979e044".
                localValue12(cmgOperation2)
              end
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            localValue1(localValue2)
          end
        end
      end
    else
      localValue1 = stateFlag25
      if localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.getTunableValue
        localValue2 = "pilot_delete_fails"
        localValue1 = localValue1(localValue2)
        if localValue1 then
          localValue1 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue1 = localValue1()
          localValue2 = cmgOperation6
          localValue1 = localValue1 - localValue2
          localValue2 = 10000
          if localValue1 > localValue2 then
            localValue1 = CMG
            localValue1 = localValue1.drawPlaneScaleForm
            localValue2 = "~r~WARNING!"
            localValue3 = "Job ended as plane does not exist"
            number19 = 10
            localValue1(localValue2, localValue3, number19)
            localValue1 = false
            stateFlag25 = localValue1
            localValue1 = TriggerServerEvent
            localValue2 = "8ae979e044"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ae979e044".
            localValue1(localValue2)
          end
        end
      end
    end
    localValue1 = workingValue4
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.arePilotJobGuidesDisabled
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = drawNativeText
        localValue2 = workingValue4
        -- Beginner: Draw GTA-style text on screen.
        localValue1(localValue2)
      end
    end
  end
end
cmgOperation7 = CMG
cmgOperation7 = cmgOperation7.createThreadOnTick
backgroundThread = workingValue30
cmgOperation8 = "Pilot Plane Check"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation7(backgroundThread, cmgOperation8)

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4
  localValue1 = {}
  localValue2 = pairs
  localValue3 = GetGamePool
  number19 = "CVehicle"
  localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4 = localValue3(number19)
  localValue2, localValue3, number19, number21 = localValue2(localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4)
  for number23, workingValue33 in localValue2, localValue3, number19, number21 do
    cmgOperation12 = GetEntityModel
    position2 = workingValue33
    -- Beginner: result below is modelHash.
    cmgOperation12 = cmgOperation12(position2)
    position2 = IsThisModelAHeli
    position3 = cmgOperation12
    position2 = position2(position3)
    if not position2 then
      position2 = IsThisModelAPlane
      position3 = cmgOperation12
      position2 = position2(position3)
      if not position2 then
        goto continueAtStep27
      end
    end
    position2 = table
    position2 = position2.insert
    position3 = localValue1
    position = workingValue33
    position2(position3, position)
    ::continueAtStep27::
  end
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, number19, number21 = localValue2(localValue3)
  for number23, workingValue33 in localValue2, localValue3, number19, number21 do
    cmgOperation12 = pairs
    position2 = localValue1
    cmgOperation12, position2, position3, position = cmgOperation12(position2)
    for stateFlag4, stateFlag6 in cmgOperation12, position2, position3, position do
      if workingValue33 ~= stateFlag6 then
        stateFlag9 = SetEntityNoCollisionEntity
        number2 = workingValue33
        number3 = stateFlag6
        number4 = true
        stateFlag9(number2, number3, number4)
      end
    end
    cmgOperation12 = DisableCamCollisionForEntity
    position2 = workingValue33
    cmgOperation12(position2)
  end
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: none) ===
function cmgOperation8()
  local localValue1, localValue2, localValue3, number19, number21
  while true do
    localValue1 = globalOnPilotDuty
    if localValue1 then
      localValue1 = cmgOperation7
      -- Beginner: Run a helper every game frame while this script is active.
      localValue1()
      localValue1 = IsPedInVehicle
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = workingValue29
      number19 = false
      localValue1 = localValue1(localValue2, localValue3, number19)
      if localValue1 then
        localValue1 = number5
        if localValue1 > 0 then
          localValue1 = GetIsVehicleEngineRunning
          localValue2 = CMG
          localValue2 = localValue2.getPlayerVehicle
          localValue2, localValue3, number19, number21 = localValue2()
          localValue1 = localValue1(localValue2, localValue3, number19, number21)
          if localValue1 then
            localValue1 = Wait
            localValue2 = math
            localValue2 = localValue2.random
            localValue3 = 6000
            number19 = 10000
            localValue2, localValue3, number19, number21 = localValue2(localValue3, number19)
            localValue1(localValue2, localValue3, number19, number21)
            localValue1 = number5
            localValue1 = localValue1 - 1
            number5 = localValue1
        end
      end
      else
        localValue1 = IsPedInVehicle
        localValue2 = CMG
        localValue2 = localValue2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue2 = localValue2()
        localValue3 = workingValue29
        number19 = false
        localValue1 = localValue1(localValue2, localValue3, number19)
        if localValue1 then
          localValue1 = number5
          if 0 == localValue1 then
            localValue1 = GetIsVehicleEngineRunning
            localValue2 = CMG
            localValue2 = localValue2.getPlayerVehicle
            localValue2, localValue3, number19, number21 = localValue2()
            localValue1 = localValue1(localValue2, localValue3, number19, number21)
            if localValue1 then
              localValue1 = SetVehicleEngineOn
              localValue2 = CMG
              localValue2 = localValue2.getPlayerVehicle
              -- Beginner: result below is currentVehicle.
              localValue2 = localValue2()
              localValue3 = false
              number19 = true
              number21 = true
              localValue1(localValue2, localValue3, number19, number21)
            end
          end
        end
      end
      localValue1 = IsPedInVehicle
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = workingValue29
      number19 = false
      localValue1 = localValue1(localValue2, localValue3, number19)
      if localValue1 then
        localValue1 = number5
        localValue2 = number7
        localValue2 = localValue2 * 0.2
        if localValue1 <= localValue2 then
          localValue1 = stateFlag8
          if not localValue1 then
            localValue1 = stateFlag27
            if not localValue1 then
              localValue1 = true
              stateFlag8 = localValue1
              localValue1 = text5
              localValue1()
            end
          end
        end
      end
      localValue1 = number5
      localValue2 = number7
      localValue1 = localValue1 / localValue2
      localValue2 = dataCollection.height
      localValue1 = localValue1 * localValue2
      workingValue11.height = localValue1
      localValue1 = dataCollection.y
      localValue2 = dataCollection.height
      localValue2 = localValue2 / 2
      localValue3 = workingValue11.height
      localValue3 = localValue3 / 2
      localValue2 = localValue2 - localValue3
      localValue1 = localValue1 + localValue2
      workingValue11.y = localValue1
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(cmgOperation8)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2
  localValue1 = globalOnPilotDuty
  if localValue1 then
    localValue1 = IsPedInVehicle
    localValue2 = CMG
    localValue2 = localValue2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = workingValue29
    number19 = false
    localValue1 = localValue1(localValue2, localValue3, number19)
    if not localValue1 then
      localValue1 = DoesEntityExist
      localValue2 = workingValue29
      localValue1 = localValue1(localValue2)
      if not localValue1 then
        goto continueAtStep118
      end
    end
    localValue1 = CMG
    localValue1 = localValue1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = CMG
    localValue2 = localValue2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue2 = localValue2()
    localValue3 = DoesEntityExist
    number19 = localValue2
    localValue3 = localValue3(number19)
    if localValue3 then
      localValue3 = IsThisModelAPlane
      number19 = GetEntityModel
      number21 = localValue2
      number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2 = number19(number21)
      localValue3 = localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2)
      if localValue3 then
        goto continueAtStep37
      end
    end
    localValue2 = workingValue29
    ::continueAtStep37::
    localValue3 = GetActivePlayers
    localValue3 = localValue3()
    number19 = pairs
    number21 = CMG
    number21 = number21.getAllVehicles
    number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2 = number21()
    number19, number21, number23, workingValue33 = number19(number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2)
    for cmgOperation12, position2 in number19, number21, number23, workingValue33 do
      position3 = SetEntityNoCollisionEntity
      position = localValue1
      stateFlag4 = position2
      stateFlag6 = true
      position3(position, stateFlag4, stateFlag6)
      position3 = SetEntityNoCollisionEntity
      position = position2
      stateFlag4 = localValue1
      stateFlag6 = true
      position3(position, stateFlag4, stateFlag6)
      position3 = SetEntityNoCollisionEntity
      position = localValue2
      stateFlag4 = position2
      stateFlag6 = true
      position3(position, stateFlag4, stateFlag6)
      position3 = SetEntityNoCollisionEntity
      position = position2
      stateFlag4 = localValue2
      stateFlag6 = true
      position3(position, stateFlag4, stateFlag6)
    end
    number19 = pairs
    number21 = localValue3
    number19, number21, number23, workingValue33 = number19(number21)
    for cmgOperation12, position2 in number19, number21, number23, workingValue33 do
      position3 = GetPlayerPed
      position = position2
      -- Beginner: result below is playerPed.
      position3 = position3(position)
      position = GetVehiclePedIsIn
      stateFlag4 = position3
      stateFlag6 = true
      -- Beginner: result below is currentVehicle.
      position = position(stateFlag4, stateFlag6)
      if position then
        stateFlag4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        stateFlag4 = stateFlag4()
        if position3 ~= stateFlag4 then
          stateFlag4 = SetEntityNoCollisionEntity
          stateFlag6 = localValue1
          stateFlag9 = position
          number2 = true
          stateFlag4(stateFlag6, stateFlag9, number2)
          stateFlag4 = SetEntityNoCollisionEntity
          stateFlag6 = position
          stateFlag9 = localValue1
          number2 = true
          stateFlag4(stateFlag6, stateFlag9, number2)
          stateFlag4 = SetEntityNoCollisionEntity
          stateFlag6 = localValue2
          stateFlag9 = position
          number2 = true
          stateFlag4(stateFlag6, stateFlag9, number2)
          stateFlag4 = SetEntityNoCollisionEntity
          stateFlag6 = position
          stateFlag9 = localValue2
          number2 = true
          stateFlag4(stateFlag6, stateFlag9, number2)
        end
      end
      stateFlag4 = SetEntityNoCollisionEntity
      stateFlag6 = position3
      stateFlag9 = localValue2
      number2 = true
      stateFlag4(stateFlag6, stateFlag9, number2)
      stateFlag4 = SetEntityNoCollisionEntity
      stateFlag6 = localValue2
      stateFlag9 = position3
      number2 = true
      stateFlag4(stateFlag6, stateFlag9, number2)
    end
  end
  ::continueAtStep118::
end
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.createThreadOnTick
workingValue31 = backgroundThread
eventHandler3 = "Pilot Collision Disable"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation8(workingValue31, eventHandler3)
cmgOperation8 = nil

-- === HELPER FUNCTION (decompiler name: workingValue31; parameters: none) ===
function workingValue31()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12
  localValue1 = cmgOperation8
  if localValue1 then
    localValue1 = pairs
    localValue2 = cmgOperation8
    localValue1, localValue2, localValue3, number19 = localValue1(localValue2)
    for number21, number23 in localValue1, localValue2, localValue3, number19 do
      workingValue33 = RemoveBlip
      cmgOperation12 = number23
      workingValue33(cmgOperation12)
    end
  end
  localValue1 = nil
  cmgOperation8 = localValue1
end
eventHandler3 = RegisterNetEvent
text8 = "8bd13f474f"
-- Beginner: this function handles network event "8bd13f474f".

-- === HELPER FUNCTION (decompiler name: number25; parameters: localValue1) ===
function number25(localValue1)
  local localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9
  localValue2 = workingValue31
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2()
  localValue2 = {}
  cmgOperation8 = localValue2
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, number19, number21 = localValue2(localValue3)
  for number23, workingValue33 in localValue2, localValue3, number19, number21 do
    cmgOperation12 = CMG
    cmgOperation12 = cmgOperation12.getLocalPlayerSrc
    cmgOperation12 = cmgOperation12()
    if cmgOperation12 ~= number23 then
      cmgOperation12 = table
      cmgOperation12 = cmgOperation12.unpack
      position2 = workingValue33
      cmgOperation12, position2 = cmgOperation12(position2)
      position3 = AddBlipForCoord
      position = cmgOperation12.x
      stateFlag4 = cmgOperation12.y
      stateFlag6 = cmgOperation12.z
      -- Beginner: result below is blipHandle.
      position3 = position3(position, stateFlag4, stateFlag6)
      position = SetBlipSprite
      stateFlag4 = position3
      stateFlag6 = 307
      position(stateFlag4, stateFlag6)
      position = SetBlipRotation
      stateFlag4 = position3
      stateFlag6 = math
      stateFlag6 = stateFlag6.floor
      stateFlag9 = position2
      stateFlag6, stateFlag9 = stateFlag6(stateFlag9)
      position(stateFlag4, stateFlag6, stateFlag9)
      position = table
      position = position.insert
      stateFlag4 = cmgOperation8
      stateFlag6 = position3
      position(stateFlag4, stateFlag6)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8bd13f474f".
eventHandler3(text8, number25)
eventHandler3 = RegisterNetEvent
text8 = "cecfb38548"
-- Beginner: this function handles network event "cecfb38548".

-- === HELPER FUNCTION (decompiler name: number25; parameters: none) ===
function number25()
  local localValue1, localValue2
  localValue1 = workingValue31
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cecfb38548".
eventHandler3(text8, number25)
eventHandler3 = vector3
text8 = -1335.5045166016
number25 = -2851.1315917969
number26 = 13.94490814209
eventHandler3 = eventHandler3(text8, number25, number26)
text8 = 500.0

-- === HELPER FUNCTION (decompiler name: number25; parameters: localValue1, localValue2) ===
function number25(localValue1, localValue2)
  local localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3
  localValue3 = GetVehicleModelNumberOfSeats
  number19 = localValue2
  localValue3 = localValue3(number19)
  if 0 == localValue3 then
    number19 = false
    return number19
  end
  number19 = -1
  number21 = localValue3 - 2
  number23 = 1
  for workingValue33 = number19, number21, number23 do
    cmgOperation12 = IsVehicleSeatFree
    position2 = localValue1
    position3 = workingValue33
    cmgOperation12 = cmgOperation12(position2, position3)
    if not cmgOperation12 then
      cmgOperation12 = false
      return cmgOperation12
    end
  end
  number19 = true
  return number19
end

-- === HELPER FUNCTION (decompiler name: number26; parameters: none) ===
function number26()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4
  localValue1 = math
  localValue1 = localValue1.floor
  localValue2 = GetNetworkTime
  -- Beginner: result below is networkTime.
  localValue2 = localValue2()
  localValue2 = localValue2 / 1000
  localValue1 = localValue1(localValue2)
  localValue2 = localValue1 % 60
  if 0 ~= localValue2 then
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.getTunableValue
  localValue3 = "clear_airport"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue2 = GetVehiclePedIsIn
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  number19 = true
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2(localValue3, number19)
  if 0 ~= localValue2 then
    localValue3 = GetEntityCoords
    number19 = localValue2
    number21 = true
    -- Beginner: result below is entityCoords.
    localValue3 = localValue3(number19, number21)
    number19 = CMG
    number19 = number19.getPlayerCoords
    -- Beginner: result below is playerCoords.
    number19 = number19()
    localValue3 = localValue3 - number19
    localValue3 = #localValue3
    if localValue3 > 25.0 then
      localValue2 = 0
    end
  end
  localValue3 = pairs
  number19 = CMG
  number19 = number19.getAllVehicles
  number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4 = number19()
  localValue3, number19, number21, number23 = localValue3(number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4)
  for workingValue33, cmgOperation12 in localValue3, number19, number21, number23 do
    position2 = NetworkGetEntityIsNetworked
    position3 = cmgOperation12
    position2 = position2(position3)
    if position2 then
      position2 = NetworkHasControlOfEntity
      position3 = cmgOperation12
      position2 = position2(position3)
      if position2 and cmgOperation12 ~= localValue2 then
        position2 = GetEntityModel
        position3 = cmgOperation12
        -- Beginner: result below is modelHash.
        position2 = position2(position3)
        position3 = IsThisModelAHeli
        position = position2
        position3 = position3(position)
        if not position3 then
          position3 = IsThisModelAPlane
          position = position2
          position3 = position3(position)
          if not position3 and 1560980623 ~= position2 then
            position3 = number25
            position = cmgOperation12
            stateFlag4 = position2
            position3 = position3(position, stateFlag4)
            if position3 then
              position3 = GetEntityAttachedTo
              position = cmgOperation12
              position3 = position3(position)
              if 0 == position3 then
                position3 = DeleteEntity
                position = cmgOperation12
                -- Beginner: Delete a GTA entity.
                position3(position)
              end
            end
          end
        end
      end
    end
  end
end
cmgOperation10 = CMG
cmgOperation10 = cmgOperation10.createArea
text9 = "pilot_clear_area"
number27 = eventHandler3
dataCollection4 = text8
number28 = text8

-- === HELPER FUNCTION (decompiler name: cmgOperation11; parameters: none) ===
function cmgOperation11()
  local localValue1, localValue2
end

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2
end
workingValue35 = number26
dataCollection5 = {}
-- Beginner: Create an interaction area around a world position.
cmgOperation10(text9, number27, dataCollection4, number28, cmgOperation11, text10, workingValue35, dataCollection5)
cmgOperation10 = vector3
text9 = 3070.2856445312
number27 = -4729.2885742188
dataCollection4 = 15.261543273926
cmgOperation10 = cmgOperation10(text9, number27, dataCollection4)
text9 = 200.0
number27 = 0
dataCollection4 = {}
number28 = 1246158990
cmgOperation11 = -2133399564
dataCollection4[1] = number28
dataCollection4[2] = cmgOperation11

-- === HELPER FUNCTION (decompiler name: number28; parameters: none) ===
function number28()
  local localValue1, localValue2, localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue2 = number27
  localValue2 = localValue1 - localValue2
  localValue3 = 1000
  if localValue2 < localValue3 then
    return
  end
  localValue2 = pairs
  localValue3 = GetGamePool
  number19 = "CObject"
  localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6 = localValue3(number19)
  localValue2, localValue3, number19, number21 = localValue2(localValue3, number19, number21, number23, workingValue33, cmgOperation12, position2, position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6)
  for number23, workingValue33 in localValue2, localValue3, number19, number21 do
    cmgOperation12 = GetEntityModel
    position2 = workingValue33
    -- Beginner: result below is modelHash.
    cmgOperation12 = cmgOperation12(position2)
    position2 = table
    position2 = position2.has
    position3 = dataCollection4
    position = cmgOperation12
    position2 = position2(position3, position)
    if position2 then
      position2 = SetEntityCanBeDamaged
      position3 = workingValue33
      position = false
      position2(position3, position)
      position2 = SetEntityProofs
      position3 = workingValue33
      position = true
      stateFlag4 = true
      stateFlag6 = true
      stateFlag9 = true
      number2 = false
      number3 = false
      number4 = false
      number6 = false
      position2(position3, position, stateFlag4, stateFlag6, stateFlag9, number2, number3, number4, number6)
    end
  end
  number27 = localValue1
end
cmgOperation11 = CMG
cmgOperation11 = cmgOperation11.createArea
text10 = "no_explosion_props"
workingValue35 = cmgOperation10
dataCollection5 = text9
workingValue36 = text9

-- === HELPER FUNCTION (decompiler name: workingValue37; parameters: none) ===
function workingValue37()
  local localValue1, localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue38; parameters: none) ===
function workingValue38()
  local localValue1, localValue2
end
workingValue39 = number28
-- Beginner: Create an interaction area around a world position.
cmgOperation11(text10, workingValue35, dataCollection5, workingValue36, workingValue37, workingValue38, workingValue39)
