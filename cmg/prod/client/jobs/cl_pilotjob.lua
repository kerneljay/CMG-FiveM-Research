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

    IMPORTANT — this file still contains decompiler temporary names.
      Names like workValue12, textValue4, dataTable7, flag3, cmgCall2,
      arg1/arg2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workValue = GetEntityCoords
        dataTable2 = workValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      I have deliberately NOT mass-renamed these reused temporary variables:
      doing that without full control-flow reconstruction can silently change
      behaviour. Comments/section labels below explain the code safely.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local cmgCall, textValue, dataTable3, flag20, workValue24, workValue29, workValue32, flag23, flag25, flag27, flag, flag3, workValue, flag8, workValue2, workValue3, workValue4, numberValue5, numberValue7, numberValue9, numberValue12, dataTable, dataTable2, workValue5, workValue6, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, workValue21, workValue22, vector3Builder, numberValue20, eventHandlerRegistration, cmgCall3, textValue2, rageUiCall, textValue3, textValue4, rageUiCall2, rageUiCall3, textValue5, textValue6, workValue25, workValue26, eventRegistration, eventRegistration2, textValue7, workValue27, cmgCall4, workValue28, cmgCall6, workValue30, cmgCall7, threadCall, cmgCall8, workValue31, eventRegistration3, textValue8, numberValue25, numberValue26, cmgCall10, textValue9, numberValue27, dataTable4, numberValue28, cmgCall11, textValue10, workValue35, dataTable5, workValue36, workValue37, workValue38, workValue39
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue = "cfg/cfg_pilotjob"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue)
globalOnPilotDuty = false
textValue = cmgCall.fuelStations
dataTable3 = {}
flag20 = false
workValue24 = nil
workValue29 = nil
workValue32 = nil
flag23 = false
flag25 = false
flag27 = false
flag = false
flag3 = false
workValue = nil
flag8 = false
workValue2 = nil
workValue3 = nil
workValue4 = nil
numberValue5 = 0
numberValue7 = 150
numberValue9 = 0
numberValue12 = 0
dataTable = {}
dataTable.x = 0.932
dataTable.y = 0.77
dataTable.width = 0.03
dataTable.height = 0.4
dataTable2 = {}
workValue5 = dataTable.x
dataTable2.x = workValue5
workValue5 = dataTable.y
dataTable2.y = workValue5
workValue5 = dataTable.width
dataTable2.width = workValue5
workValue5 = dataTable.height
dataTable2.height = workValue5
workValue5 = {}
workValue6 = dataTable.x
workValue5.x = workValue6
workValue6 = dataTable.y
workValue8 = dataTable.height
workValue8 = workValue8 / 2
workValue6 = workValue6 - workValue8
workValue5.y = workValue6
workValue6 = dataTable.width
workValue5.width = workValue6
workValue5.height = 0.002
workValue6 = {}
workValue8 = dataTable.x
workValue6.x = workValue8
workValue8 = dataTable.y
workValue9 = dataTable.height
workValue9 = workValue9 / 2
workValue8 = workValue8 + workValue9
workValue6.y = workValue8
workValue8 = dataTable.width
workValue6.width = workValue8
workValue8 = workValue5.height
workValue6.height = workValue8
workValue8 = {}
workValue9 = dataTable.x
workValue10 = dataTable.width
workValue10 = workValue10 / 2
workValue9 = workValue9 - workValue10
workValue8.x = workValue9
workValue9 = dataTable.y
workValue8.y = workValue9
workValue9 = workValue5.height
workValue9 = workValue9 / 2
workValue8.width = workValue9
workValue9 = dataTable.height
workValue10 = workValue5.height
workValue9 = workValue9 + workValue10
workValue8.height = workValue9
workValue9 = {}
workValue10 = dataTable.x
workValue11 = dataTable.width
workValue11 = workValue11 / 2
workValue10 = workValue10 + workValue11
workValue9.x = workValue10
workValue10 = dataTable.y
workValue9.y = workValue10
workValue10 = workValue5.height
workValue10 = workValue10 / 2
workValue9.width = workValue10
workValue10 = dataTable.height
workValue11 = workValue5.height
workValue10 = workValue10 + workValue11
workValue9.height = workValue10
workValue10 = {}
workValue10.x = 0.965
workValue10.y = 0.77
workValue10.width = 0.03
workValue10.height = 0.4
workValue11 = {}
workValue12 = workValue10.x
workValue11.x = workValue12
workValue11.y = 0
workValue12 = workValue10.width
workValue11.width = workValue12
workValue12 = numberValue5 / 150
workValue13 = workValue10.height
workValue12 = workValue12 * workValue13
workValue11.height = workValue12
workValue12 = workValue10.y
workValue13 = workValue10.height
workValue13 = workValue13 / 2
workValue14 = workValue11.height
workValue14 = workValue14 / 2
workValue13 = workValue13 - workValue14
workValue12 = workValue12 + workValue13
workValue11.y = workValue12
workValue12 = {}
workValue13 = workValue10.x
workValue12.x = workValue13
workValue13 = workValue10.y
workValue14 = workValue10.height
workValue14 = workValue14 / 2
workValue13 = workValue13 - workValue14
workValue12.y = workValue13
workValue13 = workValue10.width
workValue12.width = workValue13
workValue12.height = 0.002
workValue13 = {}
workValue14 = workValue10.x
workValue13.x = workValue14
workValue14 = workValue10.y
workValue15 = workValue10.height
workValue15 = workValue15 / 2
workValue14 = workValue14 + workValue15
workValue13.y = workValue14
workValue14 = workValue10.width
workValue13.width = workValue14
workValue14 = workValue12.height
workValue13.height = workValue14
workValue14 = {}
workValue15 = workValue10.x
workValue16 = workValue10.width
workValue16 = workValue16 / 2
workValue15 = workValue15 - workValue16
workValue14.x = workValue15
workValue15 = workValue10.y
workValue14.y = workValue15
workValue15 = workValue12.height
workValue15 = workValue15 / 2
workValue14.width = workValue15
workValue15 = workValue10.height
workValue16 = workValue12.height
workValue15 = workValue15 + workValue16
workValue14.height = workValue15
workValue15 = {}
workValue16 = workValue10.x
workValue17 = workValue10.width
workValue17 = workValue17 / 2
workValue16 = workValue16 + workValue17
workValue15.x = workValue16
workValue16 = workValue10.y
workValue15.y = workValue16
workValue16 = workValue12.height
workValue16 = workValue16 / 2
workValue15.width = workValue16
workValue16 = workValue10.height
workValue17 = workValue12.height
workValue16 = workValue16 + workValue17
workValue15.height = workValue16
workValue16 = {}
workValue16.x = 0.899
workValue16.y = 0.77
workValue16.width = 0.03
workValue16.height = 0.4
workValue17 = {}
workValue18 = workValue16.x
workValue17.x = workValue18
workValue18 = workValue16.y
workValue17.y = workValue18
workValue18 = workValue16.width
workValue17.width = workValue18
workValue18 = workValue16.height
workValue17.height = workValue18
workValue18 = {}
workValue19 = workValue16.x
workValue18.x = workValue19
workValue19 = workValue16.y
workValue20 = workValue16.height
workValue20 = workValue20 / 2
workValue19 = workValue19 - workValue20
workValue18.y = workValue19
workValue19 = workValue16.width
workValue18.width = workValue19
workValue18.height = 0.002
workValue19 = {}
workValue20 = workValue16.x
workValue19.x = workValue20
workValue20 = workValue16.y
workValue21 = workValue16.height
workValue21 = workValue21 / 2
workValue20 = workValue20 + workValue21
workValue19.y = workValue20
workValue20 = workValue16.width
workValue19.width = workValue20
workValue20 = workValue18.height
workValue19.height = workValue20
workValue20 = {}
workValue21 = workValue16.x
workValue22 = workValue16.width
workValue22 = workValue22 / 2
workValue21 = workValue21 - workValue22
workValue20.x = workValue21
workValue21 = workValue16.y
workValue20.y = workValue21
workValue21 = workValue18.height
workValue21 = workValue21 / 2
workValue20.width = workValue21
workValue21 = workValue16.height
workValue22 = workValue18.height
workValue21 = workValue21 + workValue22
workValue20.height = workValue21
workValue21 = {}
workValue22 = workValue16.x
vector3Builder = workValue16.width
vector3Builder = vector3Builder / 2
workValue22 = workValue22 + vector3Builder
workValue21.x = workValue22
workValue22 = workValue16.y
workValue21.y = workValue22
workValue22 = workValue18.height
workValue22 = workValue22 / 2
workValue21.width = workValue22
workValue22 = workValue16.height
vector3Builder = workValue18.height
workValue22 = workValue22 + vector3Builder
workValue21.height = workValue22
workValue22 = 0
vector3Builder = vector3
numberValue20 = 0.0
eventHandlerRegistration = 0.0
cmgCall3 = 0.0
vector3Builder = vector3Builder(numberValue20, eventHandlerRegistration, cmgCall3)
numberValue20 = 0
eventHandlerRegistration = RMenu
eventHandlerRegistration = eventHandlerRegistration.Add
cmgCall3 = "CMGpilotJob"
textValue2 = "atcMenu"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue3 = ""
textValue4 = "Air Traffic Communications"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue5 = "cmg_pilotjob"
textValue6 = "cmg_pilotjob"
rageUiCall, textValue3, textValue4, rageUiCall2, rageUiCall3, textValue5, textValue6, workValue25, workValue26, eventRegistration, eventRegistration2, textValue7, workValue27, cmgCall4, workValue28, cmgCall6, workValue30, cmgCall7, threadCall, cmgCall8, workValue31, eventRegistration3, textValue8, numberValue25, numberValue26, cmgCall10, textValue9, numberValue27, dataTable4, numberValue28, cmgCall11, textValue10, workValue35, dataTable5, workValue36, workValue37, workValue38, workValue39 = rageUiCall(textValue3, textValue4, rageUiCall2, rageUiCall3, textValue5, textValue6)
eventHandlerRegistration(cmgCall3, textValue2, rageUiCall, textValue3, textValue4, rageUiCall2, rageUiCall3, textValue5, textValue6, workValue25, workValue26, eventRegistration, eventRegistration2, textValue7, workValue27, cmgCall4, workValue28, cmgCall6, workValue30, cmgCall7, threadCall, cmgCall8, workValue31, eventRegistration3, textValue8, numberValue25, numberValue26, cmgCall10, textValue9, numberValue27, dataTable4, numberValue28, cmgCall11, textValue10, workValue35, dataTable5, workValue36, workValue37, workValue38, workValue39)
eventHandlerRegistration = AddEventHandler
cmgCall3 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2) ===
function textValue2(arg1, arg2)
  local arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10, flag15, flag17, flag18, flag19, workValue7, numberValue14, numberValue15, numberValue16
  arg3 = cmgCall.startJobLocs
  if arg2 then
    numberValue19 = 1
    numberValue21 = #arg3
    numberValue23 = 1
    for workValue33 = numberValue19, numberValue21, numberValue23 do
      cmgCall12 = tCMG
      cmgCall12 = cmgCall12.addMarker
      position2 = arg3[workValue33]
      position2 = position2.coords
      position2 = position2.x
      position3 = arg3[workValue33]
      position3 = position3.coords
      position3 = position3.y
      position = arg3[workValue33]
      position = position.coords
      position = position.z
      flag4 = 1.0
      flag6 = 1.0
      flag9 = 1.3
      numberValue2 = 10
      numberValue3 = 255
      numberValue4 = 81
      numberValue6 = 170
      numberValue8 = 50
      numberValue10 = 33
      flag15 = false
      flag17 = false
      flag18 = true
      flag19 = nil
      workValue7 = nil
      numberValue14 = 0.0
      numberValue15 = 0.0
      numberValue16 = 0.0
      -- Beginner: Create a world marker.
      cmgCall12(position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10, flag15, flag17, flag18, flag19, workValue7, numberValue14, numberValue15, numberValue16)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(cmgCall3, textValue2)

-- === HELPER FUNCTION: eventHandlerRegistration(...) ===
function eventHandlerRegistration(...)
  local arg1, arg2, arg3
  arg1 = print
  arg2 = "[Pilot Job]"
  arg3 = ...
  arg1(arg2, arg3)
end
cmgCall3 = nil
textValue2 = nil
rageUiCall = nil
textValue3 = nil
textValue4 = nil
rageUiCall2 = nil
rageUiCall3 = nil
textValue5 = nil
textValue6 = nil

-- === HELPER FUNCTION (decompiler name: workValue25; parameters: arg1) ===
function workValue25(arg1)
  local arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8
  arg2 = CMG
  arg2 = arg2.arePilotJobGuidesDisabled
  arg2 = arg2()
  if arg2 then
    return
  end
  arg2 = GetActiveScreenResolution
  arg2, arg3 = arg2()
  numberValue19 = arg3 / arg2
  numberValue21 = 0.08
  if arg1 then
    numberValue23 = 0.35
    if numberValue23 then
      goto flow_label_18
    end
  end
  numberValue23 = 0.65
  ::flow_label_18::
  if arg1 then
    workValue33 = -numberValue21
    workValue33 = workValue33 * numberValue19
    if workValue33 then
      goto flow_label_27
    end
  end
  workValue33 = numberValue21 * numberValue19
  ::flow_label_27::
  cmgCall12 = DrawSprite
  position2 = "pilotjob"
  position3 = "arrow"
  position = numberValue23
  flag4 = 0.5
  flag6 = workValue33
  flag9 = numberValue21
  numberValue2 = 0.0
  numberValue3 = 255
  numberValue4 = 255
  numberValue6 = 255
  numberValue8 = 255
  cmgCall12(position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8)
end

-- === HELPER FUNCTION (decompiler name: workValue26; parameters: arg1, arg2) ===
function workValue26(arg1, arg2)
  local arg3, numberValue19, numberValue21, numberValue23
  arg3 = nil
  if arg1 < arg2 then
    arg3 = arg2 - arg1
  else
    numberValue19 = 360
    numberValue19 = numberValue19 - arg1
    arg3 = numberValue19 + arg2
  end
  numberValue19 = nil
  if arg2 < arg1 then
    numberValue19 = arg1 - arg2
  else
    numberValue21 = 360
    numberValue21 = numberValue21 - arg2
    numberValue19 = numberValue21 + arg1
  end
  numberValue21 = arg3
  numberValue23 = numberValue19
  return numberValue21, numberValue23
end
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: none) ===
function eventRegistration2()
  local arg1, arg2, arg3
  arg1 = RequestStreamedTextureDict
  arg2 = "pilotjob"
  arg3 = false
  arg1(arg2, arg3)
  while true do
    arg1 = HasStreamedTextureDictLoaded
    arg2 = "pilotjob"
    arg1 = arg1(arg2)
    if arg1 then
      break
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(eventRegistration2)
eventRegistration = RegisterNetEvent
eventRegistration2 = "02292c1ca8"
-- Beginner: this function handles network event "02292c1ca8".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1, arg2, arg3) ===
function textValue7(arg1, arg2, arg3)
  local numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10, flag15, flag17, flag18, flag19, workValue7, numberValue14, numberValue15, numberValue16, numberValue17
  workValue3 = arg2
  workValue2 = arg3
  numberValue19 = cmgCall.planeSpawnLocs
  numberValue21 = cmgCall.tugSpawnLocs
  workValue24 = arg1
  globalOnPilotDuty = true
  numberValue23 = CMG
  numberValue23 = numberValue23.getModelGender
  numberValue23 = numberValue23()
  if "male" == numberValue23 then
    numberValue23 = CMG
    numberValue23 = numberValue23.loadCustomisationPreset
    workValue33 = "PilotMale"
    numberValue23(workValue33)
  else
    numberValue23 = CMG
    numberValue23 = numberValue23.loadCustomisationPreset
    workValue33 = "PilotFemale"
    numberValue23(workValue33)
  end
  numberValue23 = Citizen
  numberValue23 = numberValue23.Wait
  workValue33 = 500
  numberValue23(workValue33)
  numberValue23 = CMG
  numberValue23 = numberValue23.requestEntitySpawn
  workValue33 = "pilotjob_airtug"
  numberValue23(workValue33)
  numberValue23 = CMG
  numberValue23 = numberValue23.spawnVehicle
  workValue33 = "airtug"
  cmgCall12 = numberValue21[arg3]
  cmgCall12 = cmgCall12.coords
  cmgCall12 = cmgCall12.x
  position2 = numberValue21[arg3]
  position2 = position2.coords
  position2 = position2.y
  position3 = numberValue21[arg3]
  position3 = position3.coords
  position3 = position3.z
  position = numberValue21[arg3]
  position = position.h
  flag4 = true
  flag6 = true
  flag9 = false
  numberValue23 = numberValue23(workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9)
  workValue32 = numberValue23
  numberValue23 = SetVehicleColours
  workValue33 = workValue32
  cmgCall12 = 89
  position2 = 0
  numberValue23(workValue33, cmgCall12, position2)
  numberValue23 = SetNewWaypoint
  workValue33 = numberValue19[arg2]
  workValue33 = workValue33.coords
  workValue33 = workValue33.x
  cmgCall12 = numberValue19[arg2]
  cmgCall12 = cmgCall12.coords
  cmgCall12 = cmgCall12.y
  numberValue23(workValue33, cmgCall12)
  numberValue23 = CMG
  numberValue23 = numberValue23.drawPlaneScaleForm
  workValue33 = "~g~COLLECT PLANE"
  cmgCall12 = "Collect your plane from the waypoint on your map"
  numberValue23(workValue33, cmgCall12)
  numberValue23 = "Collect your ~b~plane~w~ from the ~y~airport~w~."
  workValue4 = numberValue23
  while true do
    numberValue23 = numberValue19[arg2]
    numberValue23 = numberValue23.coords
    workValue33 = CMG
    workValue33 = workValue33.getPlayerCoords
    -- Beginner: result below is playerCoords.
    workValue33 = workValue33()
    numberValue23 = numberValue23 - workValue33
    numberValue23 = #numberValue23
    workValue33 = 250
    if not (numberValue23 > workValue33) then
      break
    end
    numberValue23 = print
    workValue33 = "Pilot Job - waiting to get to spawn location"
    numberValue23(workValue33)
    numberValue23 = Citizen
    numberValue23 = numberValue23.Wait
    workValue33 = 500
    numberValue23(workValue33)
  end
  numberValue23 = CMG
  numberValue23 = numberValue23.requestEntitySpawn
  workValue33 = "pilotjob_plane"
  numberValue23(workValue33)
  numberValue23 = CMG
  numberValue23 = numberValue23.spawnVehicle
  workValue33 = arg1.spawnName
  cmgCall12 = numberValue19[arg2]
  cmgCall12 = cmgCall12.coords
  cmgCall12 = cmgCall12.x
  position2 = numberValue19[arg2]
  position2 = position2.coords
  position2 = position2.y
  position3 = numberValue19[arg2]
  position3 = position3.coords
  position3 = position3.z
  position = numberValue19[arg2]
  position = position.h
  flag4 = false
  flag6 = true
  flag9 = false
  numberValue23 = numberValue23(workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9)
  workValue29 = numberValue23
  numberValue23 = TriggerServerEvent
  workValue33 = "1e0bbaf6cd"
  cmgCall12 = arg1.spawnName
  position2 = "pilot_job"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
  numberValue23(workValue33, cmgCall12, position2)
  numberValue23 = print
  workValue33 = "Pilot Job - Spawned"
  cmgCall12 = workValue29
  numberValue23(workValue33, cmgCall12)
  numberValue23 = SetLocalPlayerAsGhost
  workValue33 = true
  numberValue23(workValue33)
  numberValue23 = CMG
  numberValue23 = numberValue23.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  numberValue23 = numberValue23()
  workValue33 = SetNetworkVehicleAsGhost
  cmgCall12 = numberValue23
  position2 = true
  workValue33(cmgCall12, position2)
  workValue33 = SetEntityAlpha
  cmgCall12 = numberValue23
  position2 = 255
  position3 = false
  workValue33(cmgCall12, position2, position3)
  workValue33 = GetOffsetFromEntityInWorldCoords
  cmgCall12 = workValue29
  position2 = 0.0
  position3 = 0.0
  position = 6.0
  workValue33 = workValue33(cmgCall12, position2, position3, position)
  cmgCall12 = print
  position2 = "Pilot Job - planeCoords"
  position3 = workValue33
  cmgCall12(position2, position3)
  cmgCall12 = tCMG
  cmgCall12 = cmgCall12.setNamedMarker
  position2 = "planeMarker"
  position3 = workValue33.x
  position = workValue33.y
  flag4 = workValue33.z
  flag6 = 2.0
  flag9 = 2.0
  numberValue2 = 2.3
  numberValue3 = 10
  numberValue4 = 255
  numberValue6 = 81
  numberValue8 = 255
  numberValue10 = 250
  flag15 = 0
  flag17 = false
  flag18 = true
  flag19 = true
  workValue7 = nil
  numberValue14 = nil
  numberValue15 = 0.0
  numberValue16 = 0.0
  numberValue17 = 0.0
  cmgCall12(position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10, flag15, flag17, flag18, flag19, workValue7, numberValue14, numberValue15, numberValue16, numberValue17)
  while true do
    cmgCall12 = IsPedInVehicle
    position2 = CMG
    position2 = position2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    position2 = position2()
    position3 = workValue29
    position = false
    cmgCall12 = cmgCall12(position2, position3, position)
    if cmgCall12 then
      break
    end
    cmgCall12 = DoesEntityExist
    position2 = workValue29
    cmgCall12 = cmgCall12(position2)
    if cmgCall12 then
      cmgCall12 = GetVehicleEngineHealth
      position2 = workValue29
      cmgCall12 = cmgCall12(position2)
      if cmgCall12 <= 0 then
        cmgCall12 = nil
        workValue4 = cmgCall12
        cmgCall12 = tCMG
        cmgCall12 = cmgCall12.removeNamedMarker
        position2 = "planeMarker"
        cmgCall12(position2)
        cmgCall12 = DoesEntityExist
        position2 = workValue32
        cmgCall12 = cmgCall12(position2)
        if cmgCall12 then
          cmgCall12 = DeleteEntity
          position2 = workValue32
          -- Beginner: Delete a GTA entity.
          cmgCall12(position2)
        end
        cmgCall12 = DeleteEntity
        position2 = workValue29
        cmgCall12(position2)
        cmgCall12 = TriggerServerEvent
        position2 = "8ae979e044"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ae979e044".
        cmgCall12(position2)
        return
      end
    else
      cmgCall12 = nil
      workValue4 = cmgCall12
      cmgCall12 = tCMG
      cmgCall12 = cmgCall12.removeNamedMarker
      position2 = "planeMarker"
      cmgCall12(position2)
      cmgCall12 = DoesEntityExist
      position2 = workValue32
      cmgCall12 = cmgCall12(position2)
      if cmgCall12 then
        cmgCall12 = DeleteEntity
        position2 = workValue32
        -- Beginner: Delete a GTA entity.
        cmgCall12(position2)
      end
      cmgCall12 = TriggerServerEvent
      position2 = "8ae979e044"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ae979e044".
      cmgCall12(position2)
      return
    end
    cmgCall12 = Citizen
    cmgCall12 = cmgCall12.Wait
    position2 = 1000
    cmgCall12(position2)
  end
  cmgCall12 = tCMG
  cmgCall12 = cmgCall12.removeNamedMarker
  position2 = "planeMarker"
  cmgCall12(position2)
  cmgCall12 = DeleteEntity
  position2 = workValue32
  -- Beginner: Delete a GTA entity.
  cmgCall12(position2)
  cmgCall12 = nil
  workValue4 = cmgCall12
  cmgCall12 = true
  flag25 = cmgCall12
  cmgCall12 = CMG
  cmgCall12 = cmgCall12.getPilotingFuelCapacityPercent
  if cmgCall12 then
    cmgCall12 = CMG
    cmgCall12 = cmgCall12.getPilotingFuelCapacityPercent
    cmgCall12 = cmgCall12()
    if cmgCall12 then
      goto flow_label_252
    end
  end
  cmgCall12 = 0
  ::flow_label_252::
  position2 = math
  position2 = position2.floor
  position3 = cmgCall12 / 100
  position3 = 1 + position3
  position3 = 150 * position3
  position2 = position2(position3)
  numberValue7 = position2
  position2 = numberValue7
  numberValue5 = position2
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
  position3 = workValue29
  position = false
  flag4 = false
  flag6 = false
  flag9 = false
  numberValue2 = false
  numberValue3 = false
  numberValue4 = false
  numberValue6 = false
  position2(position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6)
  position2 = TriggerServerEvent
  position3 = "229bf66229"
  position = arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "229bf66229".
  position2(position3, position)
  position2 = TriggerServerEvent
  position3 = "e1cb2b3c18"
  position = arg3
  position2(position3, position)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "02292c1ca8".
eventRegistration(eventRegistration2, textValue7)
eventRegistration = RegisterNetEvent
eventRegistration2 = "5f151ea19c"
-- Beginner: this function handles network event "5f151ea19c".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1, arg2) ===
function textValue7(arg1, arg2)
  local arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6
  arg3 = tCMG
  arg3 = arg3.removeArea
  numberValue19 = "dropOffPassengers_"
  arg3(numberValue19)
  while true do
    arg3 = IsPedInVehicle
    numberValue19 = CMG
    numberValue19 = numberValue19.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    numberValue19 = numberValue19()
    numberValue21 = workValue29
    numberValue23 = false
    arg3 = arg3(numberValue19, numberValue21, numberValue23)
    if arg3 then
      break
    end
    arg3 = DoesEntityExist
    numberValue19 = workValue29
    arg3 = arg3(numberValue19)
    if arg3 then
      arg3 = GetVehicleEngineHealth
      numberValue19 = workValue29
      arg3 = arg3(numberValue19)
      if arg3 <= 0 then
        arg3 = eventHandlerRegistration
        numberValue19 = "CMG:pilotJobPickupLoc -> engine health (1)"
        numberValue21 = workValue29
        -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobPickupLoc -> engine health (1)".
        arg3(numberValue19, numberValue21)
        return
      end
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    numberValue19 = 500
    arg3(numberValue19)
  end
  arg3 = Citizen
  arg3 = arg3.Wait
  numberValue19 = 2000
  arg3(numberValue19)
  arg3 = SetVehicleEngineOn
  numberValue19 = CMG
  numberValue19 = numberValue19.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  numberValue19 = numberValue19()
  numberValue21 = true
  numberValue23 = false
  workValue33 = false
  arg3(numberValue19, numberValue21, numberValue23, workValue33)
  arg3 = SetVehicleDoorsShut
  numberValue19 = CMG
  numberValue19 = numberValue19.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  numberValue19 = numberValue19()
  numberValue21 = false
  arg3(numberValue19, numberValue21)
  arg3 = FreezeEntityPosition
  numberValue19 = CMG
  numberValue19 = numberValue19.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  numberValue19 = numberValue19()
  numberValue21 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(numberValue19, numberValue21)
  arg3 = CMG
  arg3 = arg3.drawPlaneScaleForm
  numberValue19 = "~g~COLLECT PASSENGERS"
  numberValue21 = string
  numberValue21 = numberValue21.format
  numberValue23 = "Collect Passengers from %s"
  workValue33 = arg1.name
  numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6 = numberValue21(numberValue23, workValue33)
  arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6)
  arg3 = numberValue5
  numberValue19 = numberValue7
  numberValue19 = numberValue19 * 0.2
  if arg3 < numberValue19 then
    arg3 = tCMG
    arg3 = arg3.notify
    numberValue19 = "~r~Remember to fuel your plane!"
    -- Beginner: Show a notification to the player.
    arg3(numberValue19)
  end
  arg3 = arg1.coords
  numberValue19 = CMG
  numberValue19 = numberValue19.getPlayerCoords
  -- Beginner: result below is playerCoords.
  numberValue19 = numberValue19()
  arg3 = arg3 - numberValue19
  arg3 = #arg3
  numberValue19 = 1000
  if arg3 > numberValue19 then
    arg3 = textValue4
    numberValue19 = arg1
    arg3 = arg3(numberValue19)
    if not arg3 then
      arg3 = eventHandlerRegistration
      numberValue19 = "CMG:pilotJobPickupLoc -> not aircraftTakeOffAtc"
      numberValue21 = json
      numberValue21 = numberValue21.encode
      numberValue23 = arg1
      numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6 = numberValue21(numberValue23)
      -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobPickupLoc -> not aircraftTakeOffAtc".
      arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6)
      return
    end
  end
  arg3 = SetNewWaypoint
  numberValue19 = arg1.coords
  numberValue19 = numberValue19.x
  numberValue21 = arg1.coords
  numberValue21 = numberValue21.y
  arg3(numberValue19, numberValue21)
  arg3 = "Fly to the destination ~y~airport~w~."
  workValue4 = arg3
  arg3 = arg1.coords
  numberValue19 = CMG
  numberValue19 = numberValue19.getPlayerCoords
  -- Beginner: result below is playerCoords.
  numberValue19 = numberValue19()
  arg3 = arg3 - numberValue19
  arg3 = #arg3
  numberValue19 = 1500
  if arg3 > numberValue19 then
    while true do
      arg3 = arg1.coords
      numberValue19 = CMG
      numberValue19 = numberValue19.getPlayerCoords
      -- Beginner: result below is playerCoords.
      numberValue19 = numberValue19()
      arg3 = arg3 - numberValue19
      arg3 = #arg3
      numberValue19 = 1500
      if not (arg3 > numberValue19) then
        break
      end
      arg3 = CMG
      arg3 = arg3.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg3 = arg3()
      numberValue19 = GetEntityHeading
      numberValue21 = workValue29
      -- Beginner: result below is heading.
      numberValue19 = numberValue19(numberValue21)
      numberValue21 = 360.0
      numberValue19 = numberValue21 - numberValue19
      numberValue21 = math
      numberValue21 = numberValue21.deg
      numberValue23 = math
      numberValue23 = numberValue23.atan
      workValue33 = arg1.coords
      workValue33 = workValue33.x
      cmgCall12 = arg3.x
      workValue33 = workValue33 - cmgCall12
      cmgCall12 = arg1.coords
      cmgCall12 = cmgCall12.y
      position2 = arg3.y
      cmgCall12 = cmgCall12 - position2
      numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6 = numberValue23(workValue33, cmgCall12)
      numberValue21 = numberValue21(numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6)
      numberValue21 = numberValue21 % 360
      numberValue23 = math
      numberValue23 = numberValue23.abs
      workValue33 = numberValue19 - numberValue21
      numberValue23 = numberValue23(workValue33)
      if numberValue23 > 25 then
        numberValue23 = workValue26
        workValue33 = numberValue21
        cmgCall12 = numberValue19
        numberValue23, workValue33 = numberValue23(workValue33, cmgCall12)
        cmgCall12 = workValue25
        position2 = numberValue23 < workValue33
        cmgCall12(position2)
      end
      numberValue23 = DoesEntityExist
      workValue33 = workValue29
      numberValue23 = numberValue23(workValue33)
      if numberValue23 then
        numberValue23 = GetVehicleEngineHealth
        workValue33 = workValue29
        numberValue23 = numberValue23(workValue33)
        if numberValue23 <= 0 then
          numberValue23 = eventHandlerRegistration
          workValue33 = "CMG:pilotJobPickupLoc -> engine health (2)"
          cmgCall12 = workValue29
          -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobPickupLoc -> engine health (2)".
          numberValue23(workValue33, cmgCall12)
          numberValue23 = nil
          workValue4 = numberValue23
          return
        end
      else
        numberValue23 = eventHandlerRegistration
        workValue33 = "CMG:pilotJobPickupLoc -> no vehicle"
        cmgCall12 = workValue29
        numberValue23(workValue33, cmgCall12)
        numberValue23 = nil
        workValue4 = numberValue23
        return
      end
      numberValue23 = Citizen
      numberValue23 = numberValue23.Wait
      workValue33 = 0
      numberValue23(workValue33)
    end
    arg3 = textValue3
    numberValue19 = arg1
    arg3 = arg3(numberValue19)
    if not arg3 then
      arg3 = eventHandlerRegistration
      numberValue19 = "CMG:pilotJobPickupLoc -> not aircraftLandingAtc"
      numberValue21 = json
      numberValue21 = numberValue21.encode
      numberValue23 = arg1
      numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6 = numberValue21(numberValue23)
      -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobPickupLoc -> not aircraftLandingAtc".
      arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6)
      arg3 = nil
      workValue4 = arg3
      return
    end
  end
  arg3 = nil
  workValue4 = arg3
  arg3 = rageUiCall
  numberValue19 = arg1
  arg3 = arg3(numberValue19)
  if not arg3 then
    arg3 = eventHandlerRegistration
    numberValue19 = "passengerCollectionAtc -> not passengerCollectionAtc"
    numberValue21 = json
    numberValue21 = numberValue21.encode
    numberValue23 = arg1
    numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6 = numberValue21(numberValue23)
    arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6)
    return
  end

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local arg12, cmgCall2
    arg12 = drawNativeNotification
    cmgCall2 = "Press ~INPUT_CONTEXT~ to collect"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg12(cmgCall2)
  end

  -- === HELPER FUNCTION (decompiler name: numberValue19; parameters: none) ===
  function numberValue19()
    local arg12, cmgCall2
  end

  -- === HELPER FUNCTION (decompiler name: numberValue21; parameters: none) ===
  function numberValue21()
    local arg12, cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26
    arg12 = IsControlJustPressed
    cmgCall2 = 0
    numberValue18 = 51
    arg12 = arg12(cmgCall2, numberValue18)
    if arg12 then
      arg12 = IsPedInVehicle
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      cmgCall2 = cmgCall2()
      numberValue18 = workValue29
      flag21 = false
      arg12 = arg12(cmgCall2, numberValue18, flag21)
      if arg12 then
        arg12 = flag3
        if not arg12 then
          arg12 = GetEntitySpeed
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.getPlayerVehicle
          cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26 = cmgCall2()
          -- Beginner: result below is speed.
          arg12 = arg12(cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26)
          arg12 = arg12 * 2.236936
          if arg12 < 5 then
            arg12 = true
            flag3 = arg12
            arg12 = false
            flag = arg12
            arg12 = 1
            cmgCall2 = workValue24.doorsToToggle
            cmgCall2 = #cmgCall2
            numberValue18 = 1
            for flag21 = arg12, cmgCall2, numberValue18 do
              flag22 = SetVehicleDoorOpen
              cmgCall5 = CMG
              cmgCall5 = cmgCall5.getPlayerVehicle
              -- Beginner: result below is currentVehicle.
              cmgCall5 = cmgCall5()
              workValue34 = workValue24.doorsToToggle
              workValue34 = workValue34[flag21]
              flag24 = false
              flag26 = false
              flag22(cmgCall5, workValue34, flag24, flag26)
            end
            arg12 = TriggerServerEvent
            cmgCall2 = "2854d0f57f"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2854d0f57f".
            arg12(cmgCall2)
            arg12 = FreezeEntityPosition
            cmgCall2 = CMG
            cmgCall2 = cmgCall2.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            cmgCall2 = cmgCall2()
            numberValue18 = true
            -- Beginner: Freeze or unfreeze an entity in place.
            arg12(cmgCall2, numberValue18)
            arg12 = SetVehicleEngineOn
            cmgCall2 = CMG
            cmgCall2 = cmgCall2.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            cmgCall2 = cmgCall2()
            numberValue18 = false
            flag21 = true
            flag22 = true
            arg12(cmgCall2, numberValue18, flag21, flag22)
            arg12 = Citizen
            arg12 = arg12.CreateThread

            -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
            function cmgCall2()
              local arg13, arg22, arg32, workValue23
              arg13 = rageUiCall3
              arg22 = true
              arg32 = arg1
              workValue23 = arg2
              arg13(arg22, arg32, workValue23)
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            arg12(cmgCall2)
            arg12 = tCMG
            arg12 = arg12.notify
            cmgCall2 = "~g~Picking up passengers!"
            -- Beginner: Show a notification to the player.
            arg12(cmgCall2)
          else
            arg12 = tCMG
            arg12 = arg12.notify
            cmgCall2 = "~r~You are going too fast!"
            arg12(cmgCall2)
          end
      end
    end
    else
      arg12 = IsControlJustPressed
      cmgCall2 = 0
      numberValue18 = 51
      arg12 = arg12(cmgCall2, numberValue18)
      if arg12 then
        arg12 = IsPedInVehicle
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgCall2 = cmgCall2()
        numberValue18 = workValue29
        flag21 = false
        arg12 = arg12(cmgCall2, numberValue18, flag21)
        if not arg12 then
          arg12 = flag3
          if not arg12 then
            arg12 = tCMG
            arg12 = arg12.notify
            cmgCall2 = "~r~You are not in your plane!"
            -- Beginner: Show a notification to the player.
            arg12(cmgCall2)
          end
        end
      end
    end
  end
  numberValue23 = CMG
  numberValue23 = numberValue23.createArea
  workValue33 = "collectPassengers_"
  cmgCall12 = arg1.coords
  position2 = 80
  position3 = 10
  position = arg3
  flag4 = numberValue19
  flag6 = numberValue21
  -- Beginner: Create an interaction area around a world position.
  numberValue23(workValue33, cmgCall12, position2, position3, position, flag4, flag6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5f151ea19c".
eventRegistration(eventRegistration2, textValue7)
eventRegistration = RegisterNetEvent
eventRegistration2 = "a9dc9ed74f"
-- Beginner: this function handles network event "a9dc9ed74f".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1, arg2) ===
function textValue7(arg1, arg2)
  local arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6
  arg3 = print
  numberValue19 = "triggering collected"
  arg3(numberValue19)
  arg3 = tCMG
  arg3 = arg3.removeArea
  numberValue19 = "collectPassengers_"
  arg3(numberValue19)
  arg3 = CMG
  arg3 = arg3.drawPlaneScaleForm
  numberValue19 = "~y~TRANSPORT PASSENGERS"
  numberValue21 = string
  numberValue21 = numberValue21.format
  numberValue23 = "Transport Passengers to %s"
  workValue33 = arg1.name
  numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6 = numberValue21(numberValue23, workValue33)
  arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6)
  arg3 = numberValue5
  numberValue19 = numberValue7
  numberValue19 = numberValue19 * 0.2
  if arg3 < numberValue19 then
    arg3 = tCMG
    arg3 = arg3.notify
    numberValue19 = "~r~Remember to fuel your plane!"
    -- Beginner: Show a notification to the player.
    arg3(numberValue19)
  end
  arg3 = textValue4
  numberValue19 = arg1
  arg3 = arg3(numberValue19)
  if not arg3 then
    arg3 = eventHandlerRegistration
    numberValue19 = "CMG:pilotJobCollectedPassengers -> not aircraftTakeOffAtc"
    numberValue21 = json
    numberValue21 = numberValue21.encode
    numberValue23 = arg1
    numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6 = numberValue21(numberValue23)
    -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobCollectedPassengers -> not aircraftTakeOffAtc".
    arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6)
    return
  end
  arg3 = SetNewWaypoint
  numberValue19 = arg1.coords
  numberValue19 = numberValue19.x
  numberValue21 = arg1.coords
  numberValue21 = numberValue21.y
  arg3(numberValue19, numberValue21)
  arg3 = "Fly to the destination ~y~airport~w~."
  workValue4 = arg3
  while true do
    arg3 = arg1.coords
    numberValue19 = CMG
    numberValue19 = numberValue19.getPlayerCoords
    -- Beginner: result below is playerCoords.
    numberValue19 = numberValue19()
    arg3 = arg3 - numberValue19
    arg3 = #arg3
    numberValue19 = 1500
    if not (arg3 > numberValue19) then
      break
    end
    arg3 = CMG
    arg3 = arg3.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg3 = arg3()
    numberValue19 = GetEntityHeading
    numberValue21 = workValue29
    -- Beginner: result below is heading.
    numberValue19 = numberValue19(numberValue21)
    numberValue21 = 360.0
    numberValue19 = numberValue21 - numberValue19
    numberValue21 = math
    numberValue21 = numberValue21.deg
    numberValue23 = math
    numberValue23 = numberValue23.atan
    workValue33 = arg1.coords
    workValue33 = workValue33.x
    cmgCall12 = arg3.x
    workValue33 = workValue33 - cmgCall12
    cmgCall12 = arg1.coords
    cmgCall12 = cmgCall12.y
    position2 = arg3.y
    cmgCall12 = cmgCall12 - position2
    numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6 = numberValue23(workValue33, cmgCall12)
    numberValue21 = numberValue21(numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6)
    numberValue21 = numberValue21 % 360
    numberValue23 = math
    numberValue23 = numberValue23.abs
    workValue33 = numberValue19 - numberValue21
    numberValue23 = numberValue23(workValue33)
    if numberValue23 > 25 then
      numberValue23 = workValue26
      workValue33 = numberValue21
      cmgCall12 = numberValue19
      numberValue23, workValue33 = numberValue23(workValue33, cmgCall12)
      cmgCall12 = workValue25
      position2 = numberValue23 < workValue33
      cmgCall12(position2)
    end
    numberValue23 = SetNewWaypoint
    workValue33 = arg1.coords
    workValue33 = workValue33.x
    cmgCall12 = arg1.coords
    cmgCall12 = cmgCall12.y
    numberValue23(workValue33, cmgCall12)
    numberValue23 = DoesEntityExist
    workValue33 = workValue29
    numberValue23 = numberValue23(workValue33)
    if numberValue23 then
      numberValue23 = GetVehicleEngineHealth
      workValue33 = workValue29
      numberValue23 = numberValue23(workValue33)
      if numberValue23 <= 0 then
        numberValue23 = eventHandlerRegistration
        workValue33 = "CMG:pilotJobCollectedPassengers -> engine health"
        cmgCall12 = workValue29
        -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobCollectedPassengers -> engine health".
        numberValue23(workValue33, cmgCall12)
        numberValue23 = nil
        workValue4 = numberValue23
        return
      end
    else
      numberValue23 = eventHandlerRegistration
      workValue33 = "CMG:pilotJobCollectedPassengers -> no vehicle"
      cmgCall12 = workValue29
      numberValue23(workValue33, cmgCall12)
      numberValue23 = nil
      workValue4 = numberValue23
      return
    end
    numberValue23 = Citizen
    numberValue23 = numberValue23.Wait
    workValue33 = 0
    numberValue23(workValue33)
  end
  arg3 = nil
  workValue4 = arg3
  arg3 = textValue3
  numberValue19 = arg1
  arg3 = arg3(numberValue19)
  if not arg3 then
    arg3 = eventHandlerRegistration
    numberValue19 = "CMG:pilotJobCollectedPassengers -> not aircraftLandingAtc"
    numberValue21 = json
    numberValue21 = numberValue21.encode
    numberValue23 = arg1
    numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6 = numberValue21(numberValue23)
    -- Beginner: Register a client-side event handler. Event/command: "CMG:pilotJobCollectedPassengers -> not aircraftLandingAtc".
    arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6)
    return
  end
  arg3 = rageUiCall
  numberValue19 = arg1
  arg3 = arg3(numberValue19)
  if not arg3 then
    arg3 = eventHandlerRegistration
    numberValue19 = "CMG:pilotJobCollectedPassengers -> not passengerCollectionAtc"
    numberValue21 = json
    numberValue21 = numberValue21.encode
    numberValue23 = arg1
    numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6 = numberValue21(numberValue23)
    arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6)
    return
  end

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local arg12, cmgCall2
    arg12 = drawNativeNotification
    cmgCall2 = "Press ~INPUT_CONTEXT~ to deliver"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg12(cmgCall2)
  end

  -- === HELPER FUNCTION (decompiler name: numberValue19; parameters: none) ===
  function numberValue19()
    local arg12, cmgCall2
  end

  -- === HELPER FUNCTION (decompiler name: numberValue21; parameters: none) ===
  function numberValue21()
    local arg12, cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26
    arg12 = IsControlJustPressed
    cmgCall2 = 0
    numberValue18 = 51
    arg12 = arg12(cmgCall2, numberValue18)
    if arg12 then
      arg12 = IsPedInVehicle
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      cmgCall2 = cmgCall2()
      numberValue18 = workValue29
      flag21 = false
      arg12 = arg12(cmgCall2, numberValue18, flag21)
      if arg12 then
        arg12 = flag
        if not arg12 then
          arg12 = true
          flag = arg12
          arg12 = false
          flag3 = arg12
          arg12 = 1
          cmgCall2 = workValue24.doorsToToggle
          cmgCall2 = #cmgCall2
          numberValue18 = 1
          for flag21 = arg12, cmgCall2, numberValue18 do
            flag22 = SetVehicleDoorOpen
            cmgCall5 = CMG
            cmgCall5 = cmgCall5.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            cmgCall5 = cmgCall5()
            workValue34 = workValue24.doorsToToggle
            workValue34 = workValue34[flag21]
            flag24 = false
            flag26 = false
            flag22(cmgCall5, workValue34, flag24, flag26)
          end
          arg12 = TriggerServerEvent
          cmgCall2 = "1f9d117c88"
          numberValue18 = numberValue20
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1f9d117c88".
          arg12(cmgCall2, numberValue18)
          arg12 = 0
          numberValue20 = arg12
          arg12 = SetVehicleEngineOn
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          cmgCall2 = cmgCall2()
          numberValue18 = false
          flag21 = false
          flag22 = false
          arg12(cmgCall2, numberValue18, flag21, flag22)
          arg12 = FreezeEntityPosition
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          cmgCall2 = cmgCall2()
          numberValue18 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          arg12(cmgCall2, numberValue18)
          arg12 = Citizen
          arg12 = arg12.CreateThread

          -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
          function cmgCall2()
            local arg13, arg22, arg32, workValue23
            arg13 = rageUiCall3
            arg22 = false
            arg32 = arg1
            workValue23 = arg2
            arg13(arg22, arg32, workValue23)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg12(cmgCall2)
          arg12 = tCMG
          arg12 = arg12.notify
          cmgCall2 = "~g~Dropping off passengers!"
          -- Beginner: Show a notification to the player.
          arg12(cmgCall2)
      end
    end
    else
      arg12 = IsControlJustPressed
      cmgCall2 = 0
      numberValue18 = 51
      arg12 = arg12(cmgCall2, numberValue18)
      if arg12 then
        arg12 = IsPedInVehicle
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgCall2 = cmgCall2()
        numberValue18 = workValue29
        flag21 = false
        arg12 = arg12(cmgCall2, numberValue18, flag21)
        if not arg12 then
          arg12 = flag
          if not arg12 then
            arg12 = tCMG
            arg12 = arg12.notify
            cmgCall2 = "~r~You are not in your plane!"
            arg12(cmgCall2)
          end
        end
      end
    end
  end
  numberValue23 = CMG
  numberValue23 = numberValue23.createArea
  workValue33 = "dropOffPassengers_"
  cmgCall12 = arg1.coords
  position2 = 80
  position3 = 10
  position = arg3
  flag4 = numberValue19
  flag6 = numberValue21
  -- Beginner: Create an interaction area around a world position.
  numberValue23(workValue33, cmgCall12, position2, position3, position, flag4, flag6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a9dc9ed74f".
eventRegistration(eventRegistration2, textValue7)
eventRegistration = false
eventRegistration2 = RegisterNetEvent
textValue7 = "2fb2e09781"
-- Beginner: this function handles network event "2fb2e09781".

-- === HELPER FUNCTION (decompiler name: workValue27; parameters: arg1, arg2) ===
function workValue27(arg1, arg2)
  local arg3, numberValue19, numberValue21
  numberValue9 = arg1
  numberValue12 = arg2
  arg3 = eventRegistration
  if not arg3 then
    arg3 = true
    eventRegistration = arg3
    arg3 = true
    flag20 = arg3
    arg3 = Citizen
    arg3 = arg3.CreateThread

    -- === HELPER FUNCTION (decompiler name: numberValue19; parameters: none) ===
    function numberValue19()
      local arg12, cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26, flag28, flag2, flag5
      while true do
        arg12 = flag20
        if not arg12 then
          break
        end
        arg12 = IsPedInVehicle
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgCall2 = cmgCall2()
        numberValue18 = workValue29
        flag21 = false
        arg12 = arg12(cmgCall2, numberValue18, flag21)
        if arg12 then
          arg12 = DrawRect
          cmgCall2 = dataTable.x
          numberValue18 = dataTable.y
          flag21 = dataTable.width
          flag22 = dataTable.height
          cmgCall5 = 0
          workValue34 = 0
          flag24 = 0
          flag26 = 120
          arg12(cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26)
          arg12 = DrawRect
          cmgCall2 = dataTable2.x
          numberValue18 = dataTable2.y
          flag21 = dataTable2.width
          flag22 = dataTable2.height
          cmgCall5 = 0
          workValue34 = 200
          flag24 = 0
          flag26 = 255
          arg12(cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26)
          arg12 = DrawRect
          cmgCall2 = workValue5.x
          numberValue18 = workValue5.y
          flag21 = workValue5.width
          flag22 = workValue5.height
          cmgCall5 = 0
          workValue34 = 0
          flag24 = 0
          flag26 = 200
          arg12(cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26)
          arg12 = DrawRect
          cmgCall2 = workValue6.x
          numberValue18 = workValue6.y
          flag21 = workValue6.width
          flag22 = workValue6.height
          cmgCall5 = 0
          workValue34 = 0
          flag24 = 0
          flag26 = 200
          arg12(cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26)
          arg12 = DrawRect
          cmgCall2 = workValue8.x
          numberValue18 = workValue8.y
          flag21 = workValue8.width
          flag22 = workValue8.height
          cmgCall5 = 0
          workValue34 = 0
          flag24 = 0
          flag26 = 200
          arg12(cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26)
          arg12 = DrawRect
          cmgCall2 = workValue9.x
          numberValue18 = workValue9.y
          flag21 = workValue9.width
          flag22 = workValue9.height
          cmgCall5 = 0
          workValue34 = 0
          flag24 = 0
          flag26 = 200
          arg12(cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26)
          arg12 = DrawSprite
          cmgCall2 = "pilotjob"
          numberValue18 = "passengerSprite"
          flag21 = dataTable.x
          flag22 = dataTable.y
          cmgCall5 = 0.022
          workValue34 = 0.045
          flag24 = 0.0
          flag26 = 255
          flag28 = 255
          flag2 = 255
          flag5 = 255
          arg12(cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26, flag28, flag2, flag5)
        end
        arg12 = Wait
        cmgCall2 = 0
        arg12(cmgCall2)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg3(numberValue19)
  end
  arg3 = eventRegistration
  if arg3 then
    arg3 = dataTable2.height
    numberValue19 = numberValue9
    numberValue21 = numberValue12
    numberValue19 = numberValue19 / numberValue21
    numberValue21 = dataTable.height
    numberValue19 = numberValue19 * numberValue21
    dataTable2.height = numberValue19
    numberValue19 = dataTable2.y
    numberValue21 = dataTable2.height
    numberValue21 = numberValue21 - arg3
    numberValue21 = numberValue21 / 2
    numberValue19 = numberValue19 - numberValue21
    dataTable2.y = numberValue19
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2fb2e09781".
eventRegistration2(textValue7, workValue27)
eventRegistration2 = RegisterNetEvent
textValue7 = "9ffaf6daa9"
-- Beginner: this function handles network event "9ffaf6daa9".

-- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
function workValue27()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33
  arg1 = false
  flag25 = arg1
  arg1 = 0
  numberValue9 = arg1
  arg1 = 0
  numberValue5 = arg1
  arg1 = 150
  numberValue7 = arg1
  arg1 = false
  flag27 = arg1
  arg1 = false
  flag = arg1
  arg1 = false
  flag3 = arg1
  arg1 = DeleteCheckpoint
  arg2 = workValue
  arg1(arg2)
  arg1 = DeleteEntity
  arg2 = workValue32
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = DeleteEntity
  arg2 = workValue29
  arg1(arg2)
  arg1 = tCMG
  arg1 = arg1.removeArea
  arg2 = "collectPassengers_"
  arg1(arg2)
  arg1 = tCMG
  arg1 = arg1.removeArea
  arg2 = "dropOffPassengers_"
  arg1(arg2)
  arg1 = 1
  arg2 = dataTable3
  arg2 = #arg2
  arg3 = 1
  for numberValue19 = arg1, arg2, arg3 do
    numberValue21 = DeleteCheckpoint
    numberValue23 = dataTable3
    numberValue23 = numberValue23[numberValue19]
    numberValue21(numberValue23)
    numberValue21 = tCMG
    numberValue21 = numberValue21.removeArea
    numberValue23 = "fuelPlane_"
    workValue33 = numberValue19
    numberValue23 = numberValue23 .. workValue33
    numberValue21(numberValue23)
  end
  arg1 = TriggerServerEvent
  arg2 = "e1cb2b3c18"
  arg3 = workValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1cb2b3c18".
  arg1(arg2, arg3)
  arg1 = TriggerServerEvent
  arg2 = "229bf66229"
  arg3 = workValue3
  arg1(arg2, arg3)
  arg1 = SetLocalPlayerAsGhost
  arg2 = false
  arg1(arg2)
  arg1 = SetEntityAlpha
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = 255
  numberValue19 = false
  arg1(arg2, arg3, numberValue19)
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = SetNetworkVehicleAsGhost
    arg3 = arg1
    numberValue19 = false
    arg2(arg3, numberValue19)
    arg2 = SetEntityAlpha
    arg3 = arg1
    numberValue19 = 255
    numberValue21 = false
    arg2(arg3, numberValue19, numberValue21)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9ffaf6daa9".
eventRegistration2(textValue7, workValue27)
eventRegistration2 = RegisterNetEvent
textValue7 = "b0652830d5"
-- Beginner: this function handles network event "b0652830d5".

-- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
function workValue27()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3
  -- Beginner: this function handles network event "b0652830d5".

  -- === HELPER FUNCTION: arg1() ===
  function arg1()
    local arg12, cmgCall2
    arg12 = drawNativeNotification
    cmgCall2 = "Press ~INPUT_CONTEXT~ to fuel plane"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg12(cmgCall2)
  end
  -- Beginner: this function handles network event "b0652830d5".

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local arg12, cmgCall2
  end

  -- === HELPER FUNCTION: arg3(arg12) ===
  function arg3(arg12)
    local cmgCall2, numberValue18, flag21
    cmgCall2 = GetEntitySpeed
    numberValue18 = CMG
    numberValue18 = numberValue18.getPlayerVehicle
    numberValue18, flag21 = numberValue18()
    -- Beginner: result below is speed.
    cmgCall2 = cmgCall2(numberValue18, flag21)
    if cmgCall2 < 5 then
      cmgCall2 = IsControlJustPressed
      numberValue18 = 0
      flag21 = 51
      cmgCall2 = cmgCall2(numberValue18, flag21)
      if cmgCall2 then
        cmgCall2 = flag27
        if not cmgCall2 then
          cmgCall2 = numberValue5
          numberValue18 = 145
          if cmgCall2 < numberValue18 then
            cmgCall2 = tCMG
            cmgCall2 = cmgCall2.notify
            numberValue18 = "~g~Your plane will begin refuelling shortly"
            -- Beginner: Show a notification to the player.
            cmgCall2(numberValue18)
            cmgCall2 = true
            flag27 = cmgCall2
            cmgCall2 = Citizen
            cmgCall2 = cmgCall2.CreateThread

            -- === HELPER FUNCTION (decompiler name: numberValue18; parameters: none) ===
            function numberValue18()
              local arg13, arg22
              arg13 = textValue6
              arg13()
              arg13 = rageUiCall2
              arg22 = arg12.currentStation
              arg13(arg22)
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            cmgCall2(numberValue18)
        end
      end
      else
        cmgCall2 = IsControlJustPressed
        numberValue18 = 0
        flag21 = 51
        cmgCall2 = cmgCall2(numberValue18, flag21)
        if cmgCall2 then
          cmgCall2 = flag27
          if cmgCall2 then
            cmgCall2 = tCMG
            cmgCall2 = cmgCall2.notify
            numberValue18 = "~r~Your plane is currently being refuelled!"
            -- Beginner: Show a notification to the player.
            cmgCall2(numberValue18)
        end
        else
          cmgCall2 = IsControlJustPressed
          numberValue18 = 0
          flag21 = 51
          cmgCall2 = cmgCall2(numberValue18, flag21)
          if cmgCall2 then
            cmgCall2 = numberValue5
            numberValue18 = 145
            if cmgCall2 >= numberValue18 then
              cmgCall2 = tCMG
              cmgCall2 = cmgCall2.notify
              numberValue18 = "~r~Your plane is full of fuel!"
              cmgCall2(numberValue18)
            end
          end
        end
      end
    else
      cmgCall2 = tCMG
      cmgCall2 = cmgCall2.notify
      numberValue18 = "~r~You are going too fast!"
      -- Beginner: Show a notification to the player.
      cmgCall2(numberValue18)
    end
  end
  numberValue19 = 1
  numberValue21 = textValue
  numberValue21 = #numberValue21
  numberValue23 = 1
  for workValue33 = numberValue19, numberValue21, numberValue23 do
    cmgCall12 = CMG
    cmgCall12 = cmgCall12.createArea
    position2 = "fuelPlane_"
    position3 = workValue33
    position2 = position2 .. position3
    position3 = textValue
    position3 = position3[workValue33]
    position3 = position3.coords
    position = 25
    flag4 = 10
    flag6 = arg1
    flag9 = arg2
    numberValue2 = arg3
    numberValue3 = {}
    numberValue3.currentStation = workValue33
    -- Beginner: Create an interaction area around a world position.
    cmgCall12(position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3)
    cmgCall12 = tCMG
    cmgCall12 = cmgCall12.addBlip
    position2 = textValue
    position2 = position2[workValue33]
    position2 = position2.coords
    position2 = position2.x
    position3 = textValue
    position3 = position3[workValue33]
    position3 = position3.coords
    position3 = position3.y
    position = textValue
    position = position[workValue33]
    position = position.coords
    position = position.z
    flag4 = 361
    flag6 = 46
    flag9 = "Fuel Plane"
    -- Beginner: Create a minimap blip.
    cmgCall12(position2, position3, position, flag4, flag6, flag9)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b0652830d5".
eventRegistration2(textValue7, workValue27)
eventRegistration2 = RegisterNetEvent
textValue7 = "671af762e6"
-- Beginner: this function handles network event "671af762e6".

-- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
function workValue27()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10, flag15, flag17
  -- Beginner: this function handles network event "671af762e6".

  -- === HELPER FUNCTION: arg1() ===
  function arg1()
    local arg12, cmgCall2
    arg12 = drawNativeNotification
    cmgCall2 = "Press ~INPUT_CONTEXT~ to repair your plane"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg12(cmgCall2)
  end
  -- Beginner: this function handles network event "671af762e6".

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local arg12, cmgCall2
  end

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local arg12, cmgCall2, numberValue18, flag21
    arg12 = IsControlJustPressed
    cmgCall2 = 0
    numberValue18 = 51
    arg12 = arg12(cmgCall2, numberValue18)
    if arg12 then
      arg12 = globalOnPilotDuty
      if arg12 then
        arg12 = IsPedInVehicle
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgCall2 = cmgCall2()
        numberValue18 = workValue29
        flag21 = false
        arg12 = arg12(cmgCall2, numberValue18, flag21)
        if arg12 then
          arg12 = GetEntitySpeed
          cmgCall2 = workValue29
          -- Beginner: result below is speed.
          arg12 = arg12(cmgCall2)
          if arg12 < 5.0 then
            arg12 = tCMG
            arg12 = arg12.notify
            cmgCall2 = "~g~Your plane is being repaired!"
            -- Beginner: Show a notification to the player.
            arg12(cmgCall2)
            arg12 = FreezeEntityPosition
            cmgCall2 = workValue29
            numberValue18 = true
            -- Beginner: Freeze or unfreeze an entity in place.
            arg12(cmgCall2, numberValue18)
            arg12 = Citizen
            arg12 = arg12.Wait
            cmgCall2 = 15000
            arg12(cmgCall2)
            arg12 = SetVehicleFixed
            cmgCall2 = workValue29
            arg12(cmgCall2)
            arg12 = SetVehicleEngineHealth
            cmgCall2 = workValue29
            numberValue18 = 1000.0
            arg12(cmgCall2, numberValue18)
            arg12 = SetVehicleBodyHealth
            cmgCall2 = workValue29
            numberValue18 = 1000.0
            arg12(cmgCall2, numberValue18)
            arg12 = SetVehicleDeformationFixed
            cmgCall2 = workValue29
            arg12(cmgCall2)
            arg12 = SetVehiclePetrolTankHealth
            cmgCall2 = workValue29
            numberValue18 = 1000.0
            arg12(cmgCall2, numberValue18)
            arg12 = FreezeEntityPosition
            cmgCall2 = workValue29
            numberValue18 = false
            -- Beginner: Freeze or unfreeze an entity in place.
            arg12(cmgCall2, numberValue18)
            arg12 = tCMG
            arg12 = arg12.notify
            cmgCall2 = "~g~Your plane has been repaired!"
            -- Beginner: Show a notification to the player.
            arg12(cmgCall2)
          else
            arg12 = tCMG
            arg12 = arg12.notify
            cmgCall2 = "~r~You are going too fast!"
            arg12(cmgCall2)
          end
        end
      end
    end
  end
  numberValue19 = cmgCall.planeRepairStations
  numberValue21 = 1
  numberValue23 = #numberValue19
  workValue33 = 1
  for cmgCall12 = numberValue21, numberValue23, workValue33 do
    position2 = CMG
    position2 = position2.createArea
    position3 = "pilotRepairStations_"
    position = cmgCall12
    position3 = position3 .. position
    position = numberValue19[cmgCall12]
    position = position.coords
    flag4 = 25
    flag6 = 10
    flag9 = arg1
    numberValue2 = arg2
    numberValue3 = arg3
    -- Beginner: Create an interaction area around a world position.
    position2(position3, position, flag4, flag6, flag9, numberValue2, numberValue3)
    position2 = tCMG
    position2 = position2.addBlip
    position3 = numberValue19[cmgCall12]
    position3 = position3.coords
    position3 = position3.x
    position = numberValue19[cmgCall12]
    position = position.coords
    position = position.y
    flag4 = numberValue19[cmgCall12]
    flag4 = flag4.coords
    flag4 = flag4.z
    flag6 = 446
    flag9 = 46
    numberValue2 = "Repair Plane"
    -- Beginner: Create a minimap blip.
    position2(position3, position, flag4, flag6, flag9, numberValue2)
    position2 = CreateCheckpoint
    position3 = 47
    position = numberValue19[cmgCall12]
    position = position.coords
    position = position.x
    flag4 = numberValue19[cmgCall12]
    flag4 = flag4.coords
    flag4 = flag4.y
    flag6 = numberValue19[cmgCall12]
    flag6 = flag6.coords
    flag6 = flag6.z
    flag6 = flag6 - 6.5
    flag9 = numberValue19[cmgCall12]
    flag9 = flag9.coords
    flag9 = flag9.x
    numberValue2 = numberValue19[cmgCall12]
    numberValue2 = numberValue2.coords
    numberValue2 = numberValue2.y
    numberValue3 = numberValue19[cmgCall12]
    numberValue3 = numberValue3.coords
    numberValue3 = numberValue3.z
    numberValue4 = 25.0
    numberValue6 = 255
    numberValue8 = 215
    numberValue10 = 0
    flag15 = 150
    flag17 = 0
    position2(position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10, flag15, flag17)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "671af762e6".
eventRegistration2(textValue7, workValue27)

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1) ===
function eventRegistration2(arg1)
  local arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2
  arg2 = true
  while arg2 do
    arg3 = IsPedInVehicle
    numberValue19 = CMG
    numberValue19 = numberValue19.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    numberValue19 = numberValue19()
    numberValue21 = workValue29
    numberValue23 = false
    arg3 = arg3(numberValue19, numberValue21, numberValue23)
    if not arg3 then
      break
    end
    arg3 = RageUI
    arg3 = arg3.Visible
    numberValue19 = RMenu
    numberValue21 = numberValue19
    numberValue19 = numberValue19.Get
    numberValue23 = "CMGpilotJob"
    workValue33 = "atcMenu"
    numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2 = numberValue19(numberValue21, numberValue23, workValue33)
    -- Beginner: result below is menuVisible.
    arg3 = arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2)
    if not arg3 then
      arg3 = RageUI
      arg3 = arg3.Visible
      numberValue19 = RMenu
      numberValue21 = numberValue19
      numberValue19 = numberValue19.Get
      numberValue23 = "CMGpilotJob"
      workValue33 = "atcMenu"
      -- Beginner: result below is menu.
      numberValue19 = numberValue19(numberValue21, numberValue23, workValue33)
      numberValue21 = true
      arg3(numberValue19, numberValue21)
    end
    arg3 = RageUI
    arg3 = arg3.IsVisible
    numberValue19 = RMenu
    numberValue21 = numberValue19
    numberValue19 = numberValue19.Get
    numberValue23 = "CMGpilotJob"
    workValue33 = "atcMenu"
    -- Beginner: result below is menu.
    numberValue19 = numberValue19(numberValue21, numberValue23, workValue33)
    numberValue21 = true
    numberValue23 = false
    workValue33 = true

    -- === HELPER FUNCTION (decompiler name: cmgCall12; parameters: none) ===
    function cmgCall12()
      local arg12, cmgCall2, numberValue18, flag21, flag22
      arg12 = RageUI
      arg12 = arg12.Button
      cmgCall2 = "> Communicate to ATC"
      numberValue18 = arg1
      flag21 = true

      -- === HELPER FUNCTION (decompiler name: flag22; parameters: arg13, arg22, arg32) ===
      function flag22(arg13, arg22, arg32)
        local workValue23, numberValue22, numberValue24, cmgCall9, textValue11
        if arg22 then
          workValue23 = IsControlJustPressed
          numberValue22 = 0
          numberValue24 = 202
          workValue23 = workValue23(numberValue22, numberValue24)
          if not workValue23 then
            workValue23 = IsControlJustPressed
            numberValue22 = 0
            numberValue24 = 194
            workValue23 = workValue23(numberValue22, numberValue24)
            if not workValue23 then
              workValue23 = IsControlJustPressed
              numberValue22 = 0
              numberValue24 = 177
              workValue23 = workValue23(numberValue22, numberValue24)
              if not workValue23 then
                goto flow_label_34
              end
            end
          end
          workValue23 = Citizen
          workValue23 = workValue23.Wait
          numberValue22 = 1000
          workValue23(numberValue22)
          workValue23 = RageUI
          workValue23 = workValue23.Visible
          numberValue22 = RMenu
          numberValue24 = numberValue22
          numberValue22 = numberValue22.Get
          cmgCall9 = "CMGpilotJob"
          textValue11 = "atcMenu"
          -- Beginner: result below is menu.
          numberValue22 = numberValue22(numberValue24, cmgCall9, textValue11)
          numberValue24 = true
          workValue23(numberValue22, numberValue24)
        end
        ::flow_label_34::
        if arg32 then
          workValue23 = false
          arg2 = workValue23
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(cmgCall2, numberValue18, flag21, flag22)
    end

    -- === HELPER FUNCTION: position2() ===
    function position2()
      local arg12, cmgCall2
    end
    arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2)
    arg3 = Wait
    numberValue19 = 0
    arg3(numberValue19)
  end
  arg3 = RageUI
  arg3 = arg3.Visible
  numberValue19 = RMenu
  numberValue21 = numberValue19
  numberValue19 = numberValue19.Get
  numberValue23 = "CMGpilotJob"
  workValue33 = "atcMenu"
  -- Beginner: result below is menu.
  numberValue19 = numberValue19(numberValue21, numberValue23, workValue33)
  numberValue21 = false
  arg3(numberValue19, numberValue21)
  arg3 = RageUI
  arg3 = arg3.CloseAll
  arg3()
end
cmgCall3 = eventRegistration2

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: none) ===
function eventRegistration2()
  local arg1, arg2, arg3
  arg1 = GetEntityHeightAboveGround
  arg2 = workValue29
  arg1 = arg1(arg2)
  if arg1 > 10 then
    arg1 = true
    flag23 = arg1
    arg1 = CMG
    arg1 = arg1.drawPlaneScaleForm
    arg2 = "~r~LAND YOUR PLANE"
    arg3 = "You need clearance before taking off!"
    arg1(arg2, arg3)
    while true do
      arg1 = GetEntityHeightAboveGround
      arg2 = workValue29
      arg1 = arg1(arg2)
      if not (arg1 > 10) then
        break
      end
      arg1 = Citizen
      arg1 = arg1.Wait
      arg2 = 500
      arg1(arg2)
    end
    arg1 = false
    flag23 = arg1
  end
end
textValue2 = eventRegistration2

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1) ===
function eventRegistration2(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.arePilotJobGuidesDisabled
  arg2 = arg2()
  if not arg2 then
    arg2 = SendNUIMessage
    arg3 = arg1
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg2(arg3)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1) ===
function textValue7(arg1)
  local arg2, arg3, numberValue19, numberValue21
  arg2 = cmgCall.audios
  arg2 = arg2[arg1]
  if not arg2 then
    return
  end
  arg3 = eventRegistration2
  numberValue19 = arg2.name
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg3(numberValue19)
  arg3 = arg2.subtitle
  workValue4 = arg3
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  while true do
    numberValue19 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    numberValue19 = numberValue19()
    numberValue19 = numberValue19 - arg3
    numberValue21 = arg2.durationMsec
    if not (numberValue19 < numberValue21) then
      break
    end
    numberValue19 = Wait
    numberValue21 = 0
    numberValue19(numberValue21)
  end
  numberValue19 = nil
  workValue4 = numberValue19
end

-- === HELPER FUNCTION (decompiler name: workValue27; parameters: arg1) ===
function workValue27(arg1)
  local arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2
  arg2 = textValue2
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg2()
  arg2 = numberValue9
  if 0 == arg2 then
    arg2 = FreezeEntityPosition
    arg3 = workValue29
    numberValue19 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg2(arg3, numberValue19)
  end
  arg2 = cmgCall3
  arg3 = "Ground Control this is Charlie Mike Golf One Five Four Three Three requesting clearance for taxi to gate 1"
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ground Control this is Charlie Mike Golf One Five Four Three Three requesting clearance for taxi to gate 1".
  arg2(arg3)
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 1500
  arg2(arg3)
  arg2 = textValue7
  arg3 = "taxi_gate"
  arg2(arg3)
  arg2 = cmgCall3
  arg3 = "Taxi'ing to gate 1 Charlie Mike Golf One Five Four Three Three"
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Taxi'ing to gate 1 Charlie Mike Golf One Five Four Three Three".
  arg2(arg3)
  arg2 = FreezeEntityPosition
  arg3 = workValue29
  numberValue19 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, numberValue19)
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 1500
  arg2(arg3)
  arg2 = SetNewWaypoint
  arg3 = arg1.coords
  arg3 = arg3.x
  numberValue19 = arg1.coords
  numberValue19 = numberValue19.y
  arg2(arg3, numberValue19)
  arg2 = CreateCheckpoint
  arg3 = 47
  numberValue19 = arg1.coords
  numberValue19 = numberValue19.x
  numberValue21 = arg1.coords
  numberValue21 = numberValue21.y
  numberValue23 = arg1.coords
  numberValue23 = numberValue23.z
  numberValue23 = numberValue23 - 10.5
  workValue33 = arg1.coords
  workValue33 = workValue33.x
  cmgCall12 = arg1.coords
  cmgCall12 = cmgCall12.y
  position2 = arg1.coords
  position2 = position2.z
  position3 = 75.0
  position = 255
  flag4 = 215
  flag6 = 0
  flag9 = 150
  numberValue2 = 0
  -- Beginner: result below is checkpointHandle.
  arg2 = arg2(arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2)
  workValue = arg2
  arg2 = CMG
  arg2 = arg2.drawPlaneScaleForm
  arg3 = "~g~TAXI YOUR PLANE"
  numberValue19 = "Taxi your plane to the correct gate marked on your GPS"
  arg2(arg3, numberValue19)
  arg2 = "Taxi your ~b~aircraft~w~ to the ~y~gate~w~."
  workValue4 = arg2
  while true do
    arg2 = arg1.coords
    arg3 = CMG
    arg3 = arg3.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg3 = arg3()
    arg2 = arg2 - arg3
    arg2 = #arg2
    if not (arg2 > 50) then
      break
    end
    arg2 = DoesEntityExist
    arg3 = workValue29
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = GetVehicleEngineHealth
      arg3 = workValue29
      arg2 = arg2(arg3)
      if arg2 <= 0 then
        arg2 = nil
        workValue4 = arg2
        arg2 = false
        return arg2
      end
    else
      arg2 = nil
      workValue4 = arg2
      arg2 = false
      return arg2
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 500
    arg2(arg3)
  end
  arg2 = nil
  workValue4 = arg2
  arg2 = DeleteCheckpoint
  arg3 = workValue
  arg2(arg3)
  arg2 = numberValue9
  if arg2 > 0 then
    arg2 = cmgCall3
    arg3 = "Ground Control Charlie Mike Golf One Five Four Three Three taxi to gate 1 complete, requesting passenger disembarkment"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ground Control Charlie Mike Golf One Five Four Three Three taxi to gate 1 complete, requesting passenger disembarkment".
    arg2(arg3)
  else
    arg2 = cmgCall3
    arg3 = "Ground Control Charlie Mike Golf One Five Four Three Three taxi to gate 1 complete, requesting passenger boarding to commence"
    arg2(arg3)
  end
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 1500
  arg2(arg3)
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 5000
  arg2(arg3)
  arg2 = cmgCall3
  arg3 = "Received, Charlie Mike Golf One Five Four Three Three"
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Received, Charlie Mike Golf One Five Four Three Three".
  arg2(arg3)
  arg2 = true
  return arg2
end
rageUiCall = workValue27

-- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
function workValue27()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3
  arg1 = nil
  arg2 = 2200.0
  arg3 = 1
  numberValue19 = cmgCall.takeOffLocs
  numberValue19 = #numberValue19
  numberValue21 = 1
  for numberValue23 = arg3, numberValue19, numberValue21 do
    workValue33 = cmgCall.takeOffLocs
    workValue33 = workValue33[numberValue23]
    workValue33 = workValue33.coords
    cmgCall12 = CMG
    cmgCall12 = cmgCall12.getPlayerCoords
    -- Beginner: result below is playerCoords.
    cmgCall12 = cmgCall12()
    workValue33 = workValue33 - cmgCall12
    workValue33 = #workValue33
    if arg2 >= workValue33 then
      cmgCall12 = cmgCall.takeOffLocs
      arg1 = cmgCall12[numberValue23]
      arg2 = workValue33
      break
    end
  end
  if nil ~= arg1 then
    arg3 = cmgCall3
    numberValue19 = "Tower Control this is Charlie Mike Golf One Five Four Three Three entering your airspace now, requesting clearance to land on runway 1"
    arg3(numberValue19)
    arg3 = Citizen
    arg3 = arg3.Wait
    numberValue19 = 1500
    arg3(numberValue19)
    arg3 = textValue7
    numberValue19 = "cleared_landing"
    arg3(numberValue19)
    arg3 = "Land on the ~y~airport~w~ runway."
    workValue4 = arg3
    arg3 = CreateCheckpoint
    numberValue19 = 47
    numberValue21 = arg1.landingCoords
    numberValue21 = numberValue21.x
    numberValue23 = arg1.landingCoords
    numberValue23 = numberValue23.y
    workValue33 = arg1.landingCoords
    workValue33 = workValue33.z
    workValue33 = workValue33 - 5.0
    cmgCall12 = arg1.checkpointHeading
    cmgCall12 = cmgCall12.x
    position2 = arg1.checkpointHeading
    position2 = position2.y
    position3 = arg1.checkpointHeading
    position3 = position3.z
    position = 75.0
    flag4 = 255
    flag6 = 215
    flag9 = 0
    numberValue2 = 150
    numberValue3 = 0
    -- Beginner: result below is checkpointHandle.
    arg3 = arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3)
    workValue = arg3
    while true do
      arg3 = CMG
      arg3 = arg3.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg3 = arg3()
      arg3 = arg3.z
      numberValue19 = arg1.landingCoords
      numberValue19 = numberValue19.z
      numberValue21 = workValue24.landedZ
      numberValue19 = numberValue19 + numberValue21
      if not (arg3 > numberValue19) then
        break
      end
      arg3 = DoesEntityExist
      numberValue19 = workValue29
      arg3 = arg3(numberValue19)
      if arg3 then
        arg3 = GetVehicleEngineHealth
        numberValue19 = workValue29
        arg3 = arg3(numberValue19)
        if arg3 <= 0 then
          arg3 = nil
          workValue4 = arg3
          arg3 = false
          return arg3
        end
      else
        arg3 = nil
        workValue4 = arg3
        arg3 = false
        return arg3
      end
      arg3 = Citizen
      arg3 = arg3.Wait
      numberValue19 = 500
      arg3(numberValue19)
    end
    while true do
      arg3 = GetEntitySpeed
      numberValue19 = workValue29
      -- Beginner: result below is speed.
      arg3 = arg3(numberValue19)
      if not (arg3 > 2.0) then
        break
      end
      arg3 = DoesEntityExist
      numberValue19 = workValue29
      arg3 = arg3(numberValue19)
      if arg3 then
        arg3 = GetVehicleEngineHealth
        numberValue19 = workValue29
        arg3 = arg3(numberValue19)
        if arg3 <= 0 then
          arg3 = nil
          workValue4 = arg3
          arg3 = false
          return arg3
        end
      else
        arg3 = nil
        workValue4 = arg3
        arg3 = false
        return arg3
      end
      arg3 = Citizen
      arg3 = arg3.Wait
      numberValue19 = 500
      arg3(numberValue19)
    end
    arg3 = DeleteCheckpoint
    numberValue19 = workValue
    arg3(numberValue19)
    arg3 = cmgCall3
    numberValue19 = string
    numberValue19 = numberValue19.format
    numberValue21 = "Tower Control Charlie Mike Golf One Five Four Three Three has landed on runway one at %s:%s hours"
    numberValue23 = GetClockHours
    numberValue23 = numberValue23()
    workValue33 = GetClockMinutes
    workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3 = workValue33()
    numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3 = numberValue19(numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3)
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3)
    arg3 = Citizen
    arg3 = arg3.Wait
    numberValue19 = 1500
    arg3(numberValue19)
    arg3 = textValue7
    numberValue19 = "contact_ground"
    arg3(numberValue19)
    arg3 = cmgCall3
    numberValue19 = "Received, contacting ground control Charlie Mike Golf One Five Four Three Three"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Received, contacting ground control Charlie Mike Golf One Five Four Three Three".
    arg3(numberValue19)
    arg3 = nil
    workValue4 = arg3
    arg3 = true
    return arg3
  end
  arg3 = nil
  workValue4 = arg3
  arg3 = false
  return arg3
end
textValue3 = workValue27

-- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
function workValue27()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3
  arg1 = nil
  arg2 = cmgCall.takeOffLocs
  arg3 = 1
  numberValue19 = #arg2
  numberValue21 = 1
  for numberValue23 = arg3, numberValue19, numberValue21 do
    workValue33 = arg2[numberValue23]
    workValue33 = workValue33.coords
    cmgCall12 = CMG
    cmgCall12 = cmgCall12.getPlayerCoords
    -- Beginner: result below is playerCoords.
    cmgCall12 = cmgCall12()
    workValue33 = workValue33 - cmgCall12
    workValue33 = #workValue33
    cmgCall12 = 500
    if workValue33 < cmgCall12 then
      arg1 = arg2[numberValue23]
      break
    end
  end
  if nil ~= arg1 then
    arg3 = textValue2
    arg3()
    arg3 = FreezeEntityPosition
    numberValue19 = workValue29
    numberValue21 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg3(numberValue19, numberValue21)
    arg3 = cmgCall3
    numberValue19 = "Ground Control this is Charlie Mike Golf One Five Four Three Three at gate 1 requesting clearance for taxi to runway one for departure"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ground Control this is Charlie Mike Golf One Five Four Three Three at gate 1 requesting clearance for taxi to runway one for departure".
    arg3(numberValue19)
    arg3 = Citizen
    arg3 = arg3.Wait
    numberValue19 = 1500
    arg3(numberValue19)
    arg3 = textValue7
    numberValue19 = "taxi_runway"
    arg3(numberValue19)
    arg3 = cmgCall3
    numberValue19 = "Taxi'ing to runway one Charlie Mike Golf One Five Four Three Three"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Taxi'ing to runway one Charlie Mike Golf One Five Four Three Three".
    arg3(numberValue19)
    arg3 = FreezeEntityPosition
    numberValue19 = workValue29
    numberValue21 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    arg3(numberValue19, numberValue21)
    arg3 = Citizen
    arg3 = arg3.Wait
    numberValue19 = 1500
    arg3(numberValue19)
    arg3 = "Taxi your ~b~aircraft~w~ to the ~y~runway~w~."
    workValue4 = arg3
    arg3 = SetNewWaypoint
    numberValue19 = arg1.coords
    numberValue19 = numberValue19.x
    numberValue21 = arg1.coords
    numberValue21 = numberValue21.y
    arg3(numberValue19, numberValue21)
    arg3 = CreateCheckpoint
    numberValue19 = 1
    numberValue21 = arg1.coords
    numberValue21 = numberValue21.x
    numberValue23 = arg1.coords
    numberValue23 = numberValue23.y
    workValue33 = arg1.coords
    workValue33 = workValue33.z
    cmgCall12 = arg1.checkpointHeading
    cmgCall12 = cmgCall12.x
    position2 = arg1.checkpointHeading
    position2 = position2.y
    position3 = arg1.checkpointHeading
    position3 = position3.z
    position = 30.0
    flag4 = 0
    flag6 = 150
    flag9 = 0
    numberValue2 = 150
    numberValue3 = 0
    -- Beginner: result below is checkpointHandle.
    arg3 = arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3)
    workValue = arg3
    arg3 = CMG
    arg3 = arg3.drawPlaneScaleForm
    numberValue19 = "~g~TAXI YOUR PLANE"
    numberValue21 = "Taxi your plane to the correct runway marked on your GPS"
    arg3(numberValue19, numberValue21)
    while true do
      arg3 = arg1.coords
      numberValue19 = CMG
      numberValue19 = numberValue19.getPlayerCoords
      -- Beginner: result below is playerCoords.
      numberValue19 = numberValue19()
      arg3 = arg3 - numberValue19
      arg3 = #arg3
      if not (arg3 > 50) then
        break
      end
      arg3 = DoesEntityExist
      numberValue19 = workValue29
      arg3 = arg3(numberValue19)
      if arg3 then
        arg3 = GetVehicleEngineHealth
        numberValue19 = workValue29
        arg3 = arg3(numberValue19)
        if arg3 <= 0 then
          arg3 = nil
          workValue4 = arg3
          arg3 = false
          return arg3
        end
      else
        arg3 = nil
        workValue4 = arg3
        arg3 = false
        return arg3
      end
      arg3 = Citizen
      arg3 = arg3.Wait
      numberValue19 = 500
      arg3(numberValue19)
    end
    while true do
      arg3 = GetEntityHeading
      numberValue19 = CMG
      numberValue19 = numberValue19.getPlayerVehicle
      numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3 = numberValue19()
      -- Beginner: result below is heading.
      arg3 = arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3)
      numberValue19 = arg1.heading
      numberValue19 = numberValue19 + 5
      if arg3 <= numberValue19 then
        numberValue19 = arg1.heading
        numberValue19 = numberValue19 - 5
        if arg3 >= numberValue19 then
          break
        end
      end
      numberValue19 = "Turn your ~b~aircraft~w~ towards the ~y~runway~w~."
      workValue4 = numberValue19
      numberValue19 = workValue26
      numberValue21 = arg1.heading
      numberValue23 = arg3
      numberValue19, numberValue21 = numberValue19(numberValue21, numberValue23)
      numberValue23 = workValue25
      workValue33 = numberValue21 < numberValue19
      numberValue23(workValue33)
      numberValue23 = Citizen
      numberValue23 = numberValue23.Wait
      workValue33 = 0
      numberValue23(workValue33)
    end
    arg3 = nil
    workValue4 = arg3
    arg3 = DeleteCheckpoint
    numberValue19 = workValue
    arg3(numberValue19)
    arg3 = textValue2
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    arg3()
    arg3 = FreezeEntityPosition
    numberValue19 = workValue29
    numberValue21 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg3(numberValue19, numberValue21)
    arg3 = cmgCall3
    numberValue19 = "Ground Control Charlie Mike Golf One Five Four Three Three, taxi to runway one complete"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ground Control Charlie Mike Golf One Five Four Three Three, taxi to runway one complete".
    arg3(numberValue19)
    arg3 = Citizen
    arg3 = arg3.Wait
    numberValue19 = 1500
    arg3(numberValue19)
    arg3 = textValue7
    numberValue19 = "contact_tower"
    arg3(numberValue19)
    arg3 = cmgCall3
    numberValue19 = "Contacting tower control Charlie Mike Golf One Five Four Three Three"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Contacting tower control Charlie Mike Golf One Five Four Three Three".
    arg3(numberValue19)
    arg3 = Citizen
    arg3 = arg3.Wait
    numberValue19 = 1500
    arg3(numberValue19)
    arg3 = cmgCall3
    numberValue19 = "Tower Control Charlie Mike Golf One Five Four Three Three at runway 1 requesting clearance for take-off"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Tower Control Charlie Mike Golf One Five Four Three Three at runway 1 requesting clearance for take-off".
    arg3(numberValue19)
    arg3 = Citizen
    arg3 = arg3.Wait
    numberValue19 = 1500
    arg3(numberValue19)
    arg3 = eventRegistration2
    numberValue19 = {}
    numberValue19.transactionType = "pilotSeatbelt"
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    arg3(numberValue19)
    arg3 = Citizen
    arg3 = arg3.Wait
    numberValue19 = 3000
    arg3(numberValue19)
    arg3 = textValue7
    numberValue19 = "take_off"
    arg3(numberValue19)
    arg3 = cmgCall3
    numberValue19 = "Received, preparing for take-off Charlie Mike Golf One Five Four Three"
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Received, preparing for take-off Charlie Mike Golf One Five Four Three".
    arg3(numberValue19)
    arg3 = FreezeEntityPosition
    numberValue19 = workValue29
    numberValue21 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    arg3(numberValue19, numberValue21)
    arg3 = 0
    numberValue20 = arg3
    arg3 = Citizen
    arg3 = arg3.Wait
    numberValue19 = 1500
    arg3(numberValue19)
    arg3 = true
    return arg3
  end
  arg3 = nil
  workValue4 = arg3
  arg3 = false
  return arg3
end
textValue4 = workValue27

-- === HELPER FUNCTION (decompiler name: workValue27; parameters: arg1) ===
function workValue27(arg1)
  local arg2, arg3, numberValue19, numberValue21
  arg2 = SetNetworkVehicleAsGhost
  arg3 = arg1
  numberValue19 = true
  arg2(arg3, numberValue19)
  arg2 = SetEntityAlpha
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  numberValue19 = 255
  numberValue21 = false
  arg2(arg3, numberValue19, numberValue21)
  arg2 = SetEntityAlpha
  arg3 = arg1
  numberValue19 = 255
  numberValue21 = false
  arg2(arg3, numberValue19, numberValue21)
end

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1) ===
function cmgCall4(arg1)
  local arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10, flag15, flag17, flag18
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  arg3 = SetVehicleEngineOn
  numberValue19 = arg2
  numberValue21 = false
  numberValue23 = true
  workValue33 = true
  arg3(numberValue19, numberValue21, numberValue23, workValue33)
  arg3 = SetEntityHeading
  numberValue19 = arg2
  numberValue21 = 149.0
  -- Beginner: Change the direction an entity is facing.
  arg3(numberValue19, numberValue21)
  arg3 = FreezeEntityPosition
  numberValue19 = arg2
  numberValue21 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(numberValue19, numberValue21)
  arg3 = 1644266841
  numberValue19 = CMG
  numberValue19 = numberValue19.getPlayerCoords
  -- Beginner: result below is playerCoords.
  numberValue19 = numberValue19()
  numberValue21 = GetEntityHeading
  numberValue23 = CMG
  numberValue23 = numberValue23.getPlayerPed
  numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10, flag15, flag17, flag18 = numberValue23()
  -- Beginner: result below is heading.
  numberValue21 = numberValue21(numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10, flag15, flag17, flag18)
  while true do
    numberValue23 = HasModelLoaded
    workValue33 = arg3
    numberValue23 = numberValue23(workValue33)
    if numberValue23 then
      break
    end
    numberValue23 = RequestModel
    workValue33 = arg3
    numberValue23(workValue33)
    numberValue23 = Citizen
    numberValue23 = numberValue23.Wait
    workValue33 = 0
    numberValue23(workValue33)
  end
  numberValue23 = CMG
  numberValue23 = numberValue23.spawnVehicle
  workValue33 = "hauler"
  cmgCall12 = textValue
  cmgCall12 = cmgCall12[arg1]
  cmgCall12 = cmgCall12.pedCoords
  cmgCall12 = cmgCall12.x
  position2 = textValue
  position2 = position2[arg1]
  position2 = position2.pedCoords
  position2 = position2.y
  position3 = textValue
  position3 = position3[arg1]
  position3 = position3.pedCoords
  position3 = position3.z
  position = textValue
  position = position[arg1]
  position = position.h
  flag4 = false
  flag6 = false
  numberValue23 = numberValue23(workValue33, cmgCall12, position2, position3, position, flag4, flag6)
  workValue33 = CMG
  workValue33 = workValue33.spawnVehicle
  cmgCall12 = "cmgtankert"
  position2 = textValue
  position2 = position2[arg1]
  position2 = position2.pedCoords
  position2 = position2.x
  position2 = position2 - 3.5
  position3 = textValue
  position3 = position3[arg1]
  position3 = position3.pedCoords
  position3 = position3.y
  position3 = position3 - 5.5
  position = textValue
  position = position[arg1]
  position = position.pedCoords
  position = position.z
  flag4 = textValue
  flag4 = flag4[arg1]
  flag4 = flag4.h
  flag6 = false
  flag9 = false
  workValue33 = workValue33(cmgCall12, position2, position3, position, flag4, flag6, flag9)
  cmgCall12 = workValue27
  position2 = numberValue23
  cmgCall12(position2)
  cmgCall12 = workValue27
  position2 = workValue33
  cmgCall12(position2)
  cmgCall12 = Citizen
  cmgCall12 = cmgCall12.Wait
  position2 = 500
  cmgCall12(position2)
  cmgCall12 = SetEntityInvincible
  position2 = numberValue23
  position3 = true
  cmgCall12(position2, position3)
  cmgCall12 = SetEntityInvincible
  position2 = workValue33
  position3 = true
  cmgCall12(position2, position3)
  cmgCall12 = AttachVehicleToTrailer
  position2 = numberValue23
  position3 = workValue33
  position = 10
  cmgCall12(position2, position3, position)
  cmgCall12 = CreatePedInsideVehicle
  position2 = numberValue23
  position3 = 4
  position = arg3
  flag4 = -1
  flag6 = false
  flag9 = false
  cmgCall12 = cmgCall12(position2, position3, position, flag4, flag6, flag9)
  position2 = SetModelAsNoLongerNeeded
  position3 = arg3
  position2(position3)
  position2 = Citizen
  position2 = position2.Wait
  position3 = 500
  position2(position3)
  position2 = SetEntityInvincible
  position3 = cmgCall12
  position = true
  position2(position3, position)
  position2 = SetPedSteersAroundVehicles
  position3 = cmgCall12
  position = true
  position2(position3, position)
  position2 = SetPedSteersAroundObjects
  position3 = cmgCall12
  position = true
  position2(position3, position)
  position2 = GetEntityModel
  position3 = numberValue23
  -- Beginner: result below is modelHash.
  position2 = position2(position3)
  position3 = TaskVehicleDriveToCoord
  position = cmgCall12
  flag4 = numberValue23
  flag6 = numberValue19.x
  flag9 = workValue24.fuelOffsetX
  flag6 = flag6 + flag9
  flag9 = numberValue19.y
  numberValue2 = workValue24.fuelOffsetY
  flag9 = flag9 + numberValue2
  numberValue2 = numberValue19.z
  numberValue3 = workValue24.fuelOffsetZ
  numberValue2 = numberValue2 + numberValue3
  numberValue3 = 7.5
  numberValue4 = 1.0
  numberValue6 = position2
  numberValue8 = 16777216
  numberValue10 = 1.0
  flag15 = 1
  position3(position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10, flag15)
  position3 = Citizen
  position3 = position3.Wait
  position = 2000
  position3(position)
  position3 = 0
  while true do
    position = GetEntityCoords
    flag4 = numberValue23
    -- Beginner: result below is entityCoords.
    position = position(flag4)
    flag4 = CMG
    flag4 = flag4.getPlayerCoords
    -- Beginner: result below is playerCoords.
    flag4 = flag4()
    position = position - flag4
    position = #position
    if not (position > 25 and position3 < 20) then
      break
    end
    position = SetVehicleEngineOn
    flag4 = arg2
    flag6 = false
    flag9 = true
    numberValue2 = true
    position(flag4, flag6, flag9, numberValue2)
    position = Citizen
    position = position.Wait
    flag4 = 1000
    position(flag4)
    position3 = position3 + 1
  end
  position = Citizen
  position = position.Wait
  flag4 = 5000
  position(flag4)
  position = TaskLeaveVehicle
  flag4 = cmgCall12
  flag6 = numberValue23
  flag9 = 64
  position(flag4, flag6, flag9)
  position = GetEntityCoords
  flag4 = cmgCall12
  -- Beginner: result below is entityCoords.
  position = position(flag4)
  flag4 = Citizen
  flag4 = flag4.Wait
  flag6 = 1000
  flag4(flag6)
  flag4 = TaskGoStraightToCoord
  flag6 = cmgCall12
  flag9 = numberValue19.x
  flag9 = flag9 + 1.5
  numberValue2 = numberValue19.y
  numberValue2 = numberValue2 - 3
  numberValue3 = numberValue19.z
  numberValue4 = 1.0
  numberValue6 = 786603
  numberValue8 = numberValue21
  numberValue10 = 100
  flag4(flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10)
  position3 = 0
  while true do
    flag4 = GetEntityCoords
    flag6 = cmgCall12
    -- Beginner: result below is entityCoords.
    flag4 = flag4(flag6)
    flag4 = flag4.x
    flag6 = numberValue19.x
    flag6 = flag6 + 1.5
    flag4 = flag4 - flag6
    flag6 = 2.1
    if not (flag4 > flag6 and position3 < 12) then
      break
    end
    flag4 = SetVehicleEngineOn
    flag6 = arg2
    flag9 = false
    numberValue2 = true
    numberValue3 = true
    flag4(flag6, flag9, numberValue2, numberValue3)
    flag4 = Citizen
    flag4 = flag4.Wait
    flag6 = 1000
    flag4(flag6)
    position3 = position3 + 1
  end
  flag4 = SetEntityCoords
  flag6 = cmgCall12
  flag9 = numberValue19.x
  flag9 = flag9 + 1.5
  numberValue2 = numberValue19.y
  numberValue3 = numberValue19.z
  numberValue4 = false
  numberValue6 = false
  numberValue8 = false
  numberValue10 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  flag4(flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10)
  while true do
    flag4 = HasAnimDictLoaded
    flag6 = "weapon@w_sp_jerrycan"
    flag4 = flag4(flag6)
    if flag4 then
      break
    end
    flag4 = RequestAnimDict
    flag6 = "weapon@w_sp_jerrycan"
    flag4(flag6)
    flag4 = Citizen
    flag4 = flag4.Wait
    flag6 = 0
    flag4(flag6)
  end
  flag4 = Citizen
  flag4 = flag4.Wait
  flag6 = 1000
  flag4(flag6)
  flag4 = TaskPlayAnim
  flag6 = cmgCall12
  flag9 = "weapon@w_sp_jerrycan"
  numberValue2 = "fire"
  numberValue3 = 8.0
  numberValue4 = -8
  numberValue6 = -1
  numberValue8 = 49
  numberValue10 = 0
  flag15 = false
  flag17 = false
  flag18 = false
  -- Beginner: Play an animation on a ped.
  flag4(flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10, flag15, flag17, flag18)
  flag4 = RemoveAnimDict
  flag6 = "weapon@w_sp_jerrycan"
  flag4(flag6)
  while true do
    flag4 = numberValue5
    flag6 = numberValue7
    if not (flag4 < flag6) then
      break
    end
    flag4 = SetVehicleEngineOn
    flag6 = arg2
    flag9 = false
    numberValue2 = true
    numberValue3 = true
    flag4(flag6, flag9, numberValue2, numberValue3)
    flag4 = numberValue5
    flag4 = flag4 + 1
    numberValue5 = flag4
    flag4 = Citizen
    flag4 = flag4.Wait
    flag6 = 250
    flag4(flag6)
  end
  flag4 = ClearPedTasks
  flag6 = cmgCall12
  flag4(flag6)
  flag4 = TaskGoStraightToCoord
  flag6 = cmgCall12
  flag9 = position.x
  numberValue2 = position.y
  numberValue3 = position.z
  numberValue4 = 1.0
  numberValue6 = -1
  numberValue8 = numberValue21
  numberValue10 = 50
  flag4(flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10)
  flag4 = FreezeEntityPosition
  flag6 = CMG
  flag6 = flag6.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  flag6 = flag6()
  flag9 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  flag4(flag6, flag9)
  flag4 = SetVehicleEngineOn
  flag6 = CMG
  flag6 = flag6.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  flag6 = flag6()
  flag9 = true
  numberValue2 = true
  numberValue3 = true
  flag4(flag6, flag9, numberValue2, numberValue3)
  flag4 = SetVehicleDoorsShut
  flag6 = CMG
  flag6 = flag6.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  flag6 = flag6()
  flag9 = false
  flag4(flag6, flag9)
  flag4 = false
  flag27 = flag4
  position3 = 0
  while true do
    flag4 = position.x
    flag6 = GetEntityCoords
    flag9 = cmgCall12
    -- Beginner: result below is entityCoords.
    flag6 = flag6(flag9)
    flag6 = flag6.x
    flag4 = flag4 - flag6
    flag6 = 0.2
    if not (flag4 < flag6 and position3 < 30) then
      break
    end
    flag4 = Citizen
    flag4 = flag4.Wait
    flag6 = 1000
    flag4(flag6)
    position3 = position3 - 1
  end
  flag4 = TaskEnterVehicle
  flag6 = cmgCall12
  flag9 = numberValue23
  numberValue2 = 1
  numberValue3 = -1
  numberValue4 = 1.0
  numberValue6 = 1
  numberValue8 = 0
  flag4(flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8)
  flag4 = TaskVehicleDriveToCoord
  flag6 = cmgCall12
  flag9 = numberValue23
  numberValue2 = textValue
  numberValue2 = numberValue2[arg1]
  numberValue2 = numberValue2.pedCoords
  numberValue2 = numberValue2.x
  numberValue3 = textValue
  numberValue3 = numberValue3[arg1]
  numberValue3 = numberValue3.pedCoords
  numberValue3 = numberValue3.y
  numberValue4 = textValue
  numberValue4 = numberValue4[arg1]
  numberValue4 = numberValue4.pedCoords
  numberValue4 = numberValue4.z
  numberValue6 = 7.5
  numberValue8 = 1.0
  numberValue10 = position2
  flag15 = 16777216
  flag17 = 1.0
  flag18 = 1
  flag4(flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10, flag15, flag17, flag18)
  flag4 = Citizen
  flag4 = flag4.Wait
  flag6 = 15000
  flag4(flag6)
  flag4 = DeleteEntity
  flag6 = numberValue23
  -- Beginner: Delete a GTA entity.
  flag4(flag6)
  flag4 = DeleteEntity
  flag6 = workValue33
  flag4(flag6)
  flag4 = DeleteEntity
  flag6 = cmgCall12
  -- Beginner: Delete a GTA entity.
  flag4(flag6)
end
rageUiCall2 = cmgCall4

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3) ===
function cmgCall4(arg1, arg2, arg3)
  local numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4
  numberValue19 = Citizen
  numberValue19 = numberValue19.CreateThread

  -- === HELPER FUNCTION (decompiler name: numberValue21; parameters: none) ===
  function numberValue21()
    local arg12, cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26, flag28, flag2, flag5, flag7, numberValue, flag10, flag11, flag12, flag13, flag14, numberValue11, flag16, numberValue13
    arg12 = GetOffsetFromEntityInWorldCoords
    cmgCall2 = workValue29
    numberValue18 = -30.0
    flag21 = 30.0
    flag22 = -3.0
    arg12 = arg12(cmgCall2, numberValue18, flag21, flag22)
    cmgCall2 = GetEntityHeading
    numberValue18 = workValue29
    -- Beginner: result below is heading.
    cmgCall2 = cmgCall2(numberValue18)
    cmgCall2 = cmgCall2 - 180
    if cmgCall2 < 0.0 then
      cmgCall2 = 360.0 + cmgCall2
    end
    numberValue18 = CMG
    numberValue18 = numberValue18.spawnVehicle
    flag21 = "airtug"
    flag22 = arg12.x
    cmgCall5 = arg12.y
    workValue34 = arg12.z
    flag24 = cmgCall2
    flag26 = false
    flag28 = false
    flag2 = false
    numberValue18 = numberValue18(flag21, flag22, cmgCall5, workValue34, flag24, flag26, flag28, flag2)
    flag21 = SetEntityInvincible
    flag22 = numberValue18
    cmgCall5 = true
    flag21(flag22, cmgCall5)
    flag21 = SetVehicleColours
    flag22 = numberValue18
    cmgCall5 = 89
    workValue34 = 0
    flag21(flag22, cmgCall5, workValue34)
    flag21 = GetOffsetFromEntityInWorldCoords
    flag22 = numberValue18
    cmgCall5 = 0.0
    workValue34 = -4.0
    flag24 = 0.0
    flag21 = flag21(flag22, cmgCall5, workValue34, flag24)
    flag22 = CMG
    flag22 = flag22.spawnVehicle
    cmgCall5 = "cmgtugt"
    workValue34 = flag21.x
    flag24 = flag21.y
    flag26 = flag21.z
    flag28 = arg2.tugCoords
    flag28 = flag28.w
    flag2 = false
    flag5 = false
    flag7 = false
    flag22 = flag22(cmgCall5, workValue34, flag24, flag26, flag28, flag2, flag5, flag7)
    cmgCall5 = workValue27
    workValue34 = numberValue18
    cmgCall5(workValue34)
    cmgCall5 = workValue27
    workValue34 = flag22
    cmgCall5(workValue34)
    cmgCall5 = 1644266841
    workValue34 = AttachVehicleToTrailer
    flag24 = numberValue18
    flag26 = flag22
    flag28 = 10
    workValue34(flag24, flag26, flag28)
    workValue34 = Wait
    flag24 = 1000
    workValue34(flag24)
    while true do
      workValue34 = HasModelLoaded
      flag24 = cmgCall5
      workValue34 = workValue34(flag24)
      if workValue34 then
        break
      end
      workValue34 = RequestModel
      flag24 = cmgCall5
      workValue34(flag24)
      workValue34 = Wait
      flag24 = 0
      workValue34(flag24)
    end
    workValue34 = CreatePedInsideVehicle
    flag24 = numberValue18
    flag26 = 4
    flag28 = cmgCall5
    flag2 = -1
    flag5 = false
    flag7 = false
    workValue34 = workValue34(flag24, flag26, flag28, flag2, flag5, flag7)
    flag24 = SetModelAsNoLongerNeeded
    flag26 = cmgCall5
    flag24(flag26)
    flag24 = GetOffsetFromEntityInWorldCoords
    flag26 = CMG
    flag26 = flag26.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    flag26 = flag26()
    flag28 = -12.0
    flag2 = -5.0
    flag5 = 0.0
    flag24 = flag24(flag26, flag28, flag2, flag5)
    flag26 = GetEntityModel
    flag28 = numberValue18
    -- Beginner: result below is modelHash.
    flag26 = flag26(flag28)
    flag28 = TaskVehicleDriveToCoord
    flag2 = workValue34
    flag5 = numberValue18
    flag7 = flag24.x
    numberValue = flag24.y
    flag10 = flag24.z
    flag11 = 5.0
    flag12 = 1.0
    flag13 = flag26
    flag14 = 16777216
    numberValue11 = 1.0
    flag16 = 1
    flag28(flag2, flag5, flag7, numberValue, flag10, flag11, flag12, flag13, flag14, numberValue11, flag16)
    flag28 = arg1
    if flag28 then
      flag28 = 0
      while true do
        flag2 = numberValue9
        flag5 = numberValue12
        if not (flag2 < flag5) then
          break
        end
        flag2 = Wait
        flag5 = 1000
        flag2(flag5)
        flag28 = flag28 + 1
      end
    else
      flag28 = 0
      while true do
        flag2 = numberValue9
        if 0 == flag2 then
          break
        end
        flag2 = Wait
        flag5 = 1000
        flag2(flag5)
        flag28 = flag28 + 1
      end
    end
    flag28 = GetOffsetFromEntityInWorldCoords
    flag2 = CMG
    flag2 = flag2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    flag2 = flag2()
    flag5 = -30.0
    flag7 = -30.0
    numberValue = 0.0
    flag28 = flag28(flag2, flag5, flag7, numberValue)
    flag2 = TaskVehicleDriveToCoord
    flag5 = workValue34
    flag7 = numberValue18
    numberValue = flag28.x
    flag10 = flag28.y
    flag11 = flag28.z
    flag12 = 5.0
    flag13 = 1.0
    flag14 = flag26
    numberValue11 = 16777216
    flag16 = 1.0
    numberValue13 = 1
    flag2(flag5, flag7, numberValue, flag10, flag11, flag12, flag13, flag14, numberValue11, flag16, numberValue13)
    flag2 = 0
    while flag2 < 30 do
      flag2 = flag2 + 1
      flag5 = Wait
      flag7 = 1000
      flag5(flag7)
    end
    flag5 = DeleteEntity
    flag7 = workValue34
    -- Beginner: Delete a GTA entity.
    flag5(flag7)
    flag5 = DeleteEntity
    flag7 = numberValue18
    flag5(flag7)
    flag5 = DeleteEntity
    flag7 = flag22
    -- Beginner: Delete a GTA entity.
    flag5(flag7)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue19(numberValue21)
  numberValue19 = {}
  numberValue21 = CMG
  numberValue21 = numberValue21.loadModel
  numberValue23 = 588969535
  numberValue21 = numberValue21(numberValue23)
  if not numberValue21 then
    numberValue21 = 0
  end
  numberValue23 = CMG
  numberValue23 = numberValue23.loadModel
  workValue33 = 2120901815
  numberValue23 = numberValue23(workValue33)
  if not numberValue23 then
    numberValue23 = 0
  end
  numberValue19[1] = numberValue21
  numberValue19[2] = numberValue23
  numberValue21 = CMG
  numberValue21 = numberValue21.loadAnimDict
  numberValue23 = "anim@heists@box_carry@"
  -- Beginner: Load a GTA animation dictionary before using it.
  numberValue21(numberValue23)
  numberValue21 = CMG
  numberValue21 = numberValue21.loadModel
  numberValue23 = -517243780
  -- Beginner: Request/load a GTA model before spawning or applying it.
  numberValue21(numberValue23)
  if arg1 then
    numberValue21 = arg2.pedCoords
    while true do
      numberValue23 = numberValue9
      workValue33 = numberValue12
      if not (numberValue23 < workValue33) then
        break
      end
      numberValue23 = Citizen
      numberValue23 = numberValue23.CreateThread

      -- === HELPER FUNCTION (decompiler name: workValue33; parameters: none) ===
      function workValue33()
        local arg12, cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26, flag28, flag2, flag5, flag7, numberValue, flag10, flag11, flag12, flag13, flag14, numberValue11, flag16
        arg12 = CMG
        arg12 = arg12.getPlayerCoords
        -- Beginner: result below is playerCoords.
        arg12 = arg12()
        cmgCall2 = math
        cmgCall2 = cmgCall2.random
        numberValue18 = 1
        flag21 = numberValue19
        flag21 = #flag21
        cmgCall2 = cmgCall2(numberValue18, flag21)
        numberValue18 = numberValue19
        cmgCall2 = numberValue18[cmgCall2]
        numberValue18 = CreatePed
        flag21 = 4
        flag22 = cmgCall2
        cmgCall5 = numberValue21.x
        workValue34 = numberValue21.y
        flag24 = numberValue21.z
        flag26 = 0.0
        flag28 = false
        flag2 = false
        -- Beginner: result below is pedEntity.
        numberValue18 = numberValue18(flag21, flag22, cmgCall5, workValue34, flag24, flag26, flag28, flag2)
        flag21 = 0
        flag22 = TaskGoStraightToCoord
        cmgCall5 = numberValue18
        workValue34 = arg12.x
        flag24 = arg12.y
        flag26 = arg12.z
        flag28 = 2.0
        flag2 = -1
        flag5 = 0.0
        flag7 = 0
        flag22(cmgCall5, workValue34, flag24, flag26, flag28, flag2, flag5, flag7)
        flag22 = 0
        cmgCall5 = arg3
        if cmgCall5 then
          cmgCall5 = TaskPlayAnim
          workValue34 = numberValue18
          flag24 = "anim@heists@box_carry@"
          flag26 = "idle"
          flag28 = 2.0
          flag2 = 2.0
          flag5 = -1
          flag7 = 51
          numberValue = 0
          flag10 = false
          flag11 = false
          flag12 = false
          -- Beginner: Play an animation on a ped.
          cmgCall5(workValue34, flag24, flag26, flag28, flag2, flag5, flag7, numberValue, flag10, flag11, flag12)
          cmgCall5 = CreateObject
          workValue34 = -517243780
          flag24 = arg12.x
          flag26 = arg12.y
          flag28 = arg12.z
          flag2 = false
          flag5 = false
          flag7 = false
          -- Beginner: result below is objectEntity.
          cmgCall5 = cmgCall5(workValue34, flag24, flag26, flag28, flag2, flag5, flag7)
          flag22 = cmgCall5
          cmgCall5 = AttachEntityToEntity
          workValue34 = flag22
          flag24 = numberValue18
          flag26 = GetPedBoneIndex
          flag28 = numberValue18
          flag2 = 60309
          flag26 = flag26(flag28, flag2)
          flag28 = 0.025
          flag2 = 0.08
          flag5 = 0.255
          flag7 = -145.0
          numberValue = 290.0
          flag10 = 0.0
          flag11 = true
          flag12 = true
          flag13 = false
          flag14 = true
          numberValue11 = 1
          flag16 = true
          -- Beginner: Attach one entity to another entity.
          cmgCall5(workValue34, flag24, flag26, flag28, flag2, flag5, flag7, numberValue, flag10, flag11, flag12, flag13, flag14, numberValue11, flag16)
        end
        cmgCall5 = Citizen
        cmgCall5 = cmgCall5.Wait
        workValue34 = 10000
        cmgCall5(workValue34)
        while true do
          cmgCall5 = GetEntityCoords
          workValue34 = numberValue18
          -- Beginner: result below is entityCoords.
          cmgCall5 = cmgCall5(workValue34)
          cmgCall5 = arg12 - cmgCall5
          cmgCall5 = #cmgCall5
          if not (cmgCall5 > 10 and flag21 <= 60) then
            break
          end
          cmgCall5 = Citizen
          cmgCall5 = cmgCall5.Wait
          workValue34 = 1000
          cmgCall5(workValue34)
          flag21 = flag21 + 1
        end
        cmgCall5 = CMG
        cmgCall5 = cmgCall5.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgCall5 = cmgCall5()
        workValue34 = 0
        flag24 = GetVehicleModelNumberOfSeats
        flag26 = GetEntityModel
        flag28 = cmgCall5
        flag26, flag28, flag2, flag5, flag7, numberValue, flag10, flag11, flag12, flag13, flag14, numberValue11, flag16 = flag26(flag28)
        flag24 = flag24(flag26, flag28, flag2, flag5, flag7, numberValue, flag10, flag11, flag12, flag13, flag14, numberValue11, flag16)
        if flag24 > 2 then
          workValue34 = 1
        end
        flag24 = TaskEnterVehicle
        flag26 = numberValue18
        flag28 = CMG
        flag28 = flag28.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        flag28 = flag28()
        flag2 = 15000
        flag5 = workValue34
        flag7 = 2.0
        numberValue = 1
        flag10 = 0
        flag24(flag26, flag28, flag2, flag5, flag7, numberValue, flag10)
        flag24 = Citizen
        flag24 = flag24.Wait
        flag26 = 10000
        flag24(flag26)
        flag24 = DeletePed
        flag26 = numberValue18
        flag24(flag26)
        flag24 = DeleteEntity
        flag26 = flag22
        -- Beginner: Delete a GTA entity.
        flag24(flag26)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      numberValue23(workValue33)
      numberValue23 = Citizen
      numberValue23 = numberValue23.Wait
      workValue33 = math
      workValue33 = workValue33.random
      cmgCall12 = 8000
      position2 = 13000
      workValue33, cmgCall12, position2, position3, position, flag4 = workValue33(cmgCall12, position2)
      numberValue23(workValue33, cmgCall12, position2, position3, position, flag4)
    end
  else
    while true do
      numberValue21 = numberValue9
      if 0 == numberValue21 then
        break
      end
      numberValue21 = Citizen
      numberValue21 = numberValue21.CreateThread

      -- === HELPER FUNCTION (decompiler name: numberValue23; parameters: none) ===
      function numberValue23()
        local arg12, cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26, flag28, flag2, flag5, flag7, numberValue, flag10, flag11, flag12, flag13, flag14, numberValue11
        arg12 = GetOffsetFromEntityInWorldCoords
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgCall2 = cmgCall2()
        numberValue18 = -15.0
        flag21 = 3.0
        flag22 = 0.0
        arg12 = arg12(cmgCall2, numberValue18, flag21, flag22)
        cmgCall2 = math
        cmgCall2 = cmgCall2.random
        numberValue18 = 1
        flag21 = numberValue19
        flag21 = #flag21
        cmgCall2 = cmgCall2(numberValue18, flag21)
        numberValue18 = numberValue19
        cmgCall2 = numberValue18[cmgCall2]
        numberValue18 = CreatePedInsideVehicle
        flag21 = CMG
        flag21 = flag21.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        flag21 = flag21()
        flag22 = 4
        cmgCall5 = cmgCall2
        workValue34 = workValue24.seatPedSitsIn
        flag24 = false
        flag26 = false
        numberValue18 = numberValue18(flag21, flag22, cmgCall5, workValue34, flag24, flag26)
        flag21 = TaskLeaveVehicle
        flag22 = numberValue18
        cmgCall5 = CMG
        cmgCall5 = cmgCall5.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgCall5 = cmgCall5()
        workValue34 = 256
        flag21(flag22, cmgCall5, workValue34)
        flag21 = Citizen
        flag21 = flag21.Wait
        flag22 = 3000
        flag21(flag22)
        flag21 = TaskGoStraightToCoord
        flag22 = numberValue18
        cmgCall5 = arg12.x
        workValue34 = arg12.y
        flag24 = arg12.z
        flag26 = 2.0
        flag28 = -1
        flag2 = 0.0
        flag5 = 0
        flag21(flag22, cmgCall5, workValue34, flag24, flag26, flag28, flag2, flag5)
        flag21 = 0
        flag22 = arg3
        if flag22 then
          flag22 = TaskPlayAnim
          cmgCall5 = numberValue18
          workValue34 = "anim@heists@box_carry@"
          flag24 = "idle"
          flag26 = 2.0
          flag28 = 2.0
          flag2 = -1
          flag5 = 51
          flag7 = 0
          numberValue = false
          flag10 = false
          flag11 = false
          -- Beginner: Play an animation on a ped.
          flag22(cmgCall5, workValue34, flag24, flag26, flag28, flag2, flag5, flag7, numberValue, flag10, flag11)
          flag22 = CreateObject
          cmgCall5 = -517243780
          workValue34 = arg12.x
          flag24 = arg12.y
          flag26 = arg12.z
          flag28 = false
          flag2 = false
          flag5 = false
          -- Beginner: result below is objectEntity.
          flag22 = flag22(cmgCall5, workValue34, flag24, flag26, flag28, flag2, flag5)
          flag21 = flag22
          flag22 = AttachEntityToEntity
          cmgCall5 = flag21
          workValue34 = numberValue18
          flag24 = GetPedBoneIndex
          flag26 = numberValue18
          flag28 = 60309
          flag24 = flag24(flag26, flag28)
          flag26 = 0.025
          flag28 = 0.08
          flag2 = 0.255
          flag5 = -145.0
          flag7 = 290.0
          numberValue = 0.0
          flag10 = true
          flag11 = true
          flag12 = false
          flag13 = true
          flag14 = 1
          numberValue11 = true
          -- Beginner: Attach one entity to another entity.
          flag22(cmgCall5, workValue34, flag24, flag26, flag28, flag2, flag5, flag7, numberValue, flag10, flag11, flag12, flag13, flag14, numberValue11)
        end
        flag22 = 0
        while true do
          cmgCall5 = GetEntityCoords
          workValue34 = numberValue18
          -- Beginner: result below is entityCoords.
          cmgCall5 = cmgCall5(workValue34)
          cmgCall5 = arg12 - cmgCall5
          cmgCall5 = #cmgCall5
          if not (cmgCall5 > 5 and flag22 <= 30) then
            break
          end
          cmgCall5 = Citizen
          cmgCall5 = cmgCall5.Wait
          workValue34 = 1000
          cmgCall5(workValue34)
          flag22 = flag22 + 1
        end
        cmgCall5 = DeletePed
        workValue34 = numberValue18
        cmgCall5(workValue34)
        cmgCall5 = DeleteEntity
        workValue34 = flag21
        -- Beginner: Delete a GTA entity.
        cmgCall5(workValue34)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      numberValue21(numberValue23)
      numberValue21 = Citizen
      numberValue21 = numberValue21.Wait
      numberValue23 = math
      numberValue23 = numberValue23.random
      workValue33 = 8000
      cmgCall12 = 13000
      numberValue23, workValue33, cmgCall12, position2, position3, position, flag4 = numberValue23(workValue33, cmgCall12)
      numberValue21(numberValue23, workValue33, cmgCall12, position2, position3, position, flag4)
    end
  end
  numberValue21 = FreezeEntityPosition
  numberValue23 = CMG
  numberValue23 = numberValue23.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  numberValue23 = numberValue23()
  workValue33 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  numberValue21(numberValue23, workValue33)
  numberValue21 = SetVehicleDoorsShut
  numberValue23 = CMG
  numberValue23 = numberValue23.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  numberValue23 = numberValue23()
  workValue33 = false
  numberValue21(numberValue23, workValue33)
  numberValue21 = SetVehicleEngineOn
  numberValue23 = CMG
  numberValue23 = numberValue23.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  numberValue23 = numberValue23()
  workValue33 = true
  cmgCall12 = false
  position2 = false
  numberValue21(numberValue23, workValue33, cmgCall12, position2)
  numberValue21 = pairs
  numberValue23 = numberValue19
  numberValue21, numberValue23, workValue33, cmgCall12 = numberValue21(numberValue23)
  for position2, position3 in numberValue21, numberValue23, workValue33, cmgCall12 do
    position = SetModelAsNoLongerNeeded
    flag4 = position3
    position(flag4)
  end
  numberValue21 = RemoveAnimDict
  numberValue23 = "anim@heists@box_carry@"
  numberValue21(numberValue23)
  numberValue21 = SetModelAsNoLongerNeeded
  numberValue23 = -517243780
  numberValue21(numberValue23)
end
rageUiCall3 = cmgCall4
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue28; parameters: arg1, arg2, arg3) ===
function workValue28(arg1, arg2, arg3)
  local numberValue19, numberValue21, numberValue23, workValue33
  numberValue19 = true
  numberValue21 = RequestScaleformMovie
  numberValue23 = "mp_big_message_freemode"
  -- Beginner: result below is scaleformHandle.
  numberValue21 = numberValue21(numberValue23)
  while true do
    numberValue23 = HasScaleformMovieLoaded
    workValue33 = numberValue21
    numberValue23 = numberValue23(workValue33)
    if numberValue23 then
      break
    end
    numberValue23 = Wait
    workValue33 = 0
    numberValue23(workValue33)
  end
  if not arg3 then
    numberValue23 = Citizen
    numberValue23 = numberValue23.CreateThread

    -- === HELPER FUNCTION (decompiler name: workValue33; parameters: none) ===
    function workValue33()
      local arg12, cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34
      while true do
        arg12 = numberValue19
        if not arg12 then
          break
        end
        arg12 = Wait
        cmgCall2 = 0
        arg12(cmgCall2)
        arg12 = BeginScaleformMovieMethod
        cmgCall2 = numberValue21
        numberValue18 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        arg12(cmgCall2, numberValue18)
        arg12 = _ENV
        cmgCall2 = "ScaleformMovieMethodAddParamTextureNameString"
        arg12 = arg12[cmgCall2]
        cmgCall2 = arg1
        arg12(cmgCall2)
        arg12 = _ENV
        cmgCall2 = "ScaleformMovieMethodAddParamTextureNameString"
        arg12 = arg12[cmgCall2]
        cmgCall2 = arg2
        arg12(cmgCall2)
        arg12 = ScaleformMovieMethodAddParamInt
        cmgCall2 = 0
        arg12(cmgCall2)
        arg12 = EndScaleformMovieMethod
        arg12()
        arg12 = DrawScaleformMovieFullscreen
        cmgCall2 = numberValue21
        numberValue18 = 255
        flag21 = 255
        flag22 = 255
        cmgCall5 = 255
        workValue34 = 0
        arg12(cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    numberValue23(workValue33)
    numberValue23 = Citizen
    numberValue23 = numberValue23.Wait
    workValue33 = 8000
    numberValue23(workValue33)
    numberValue19 = false
    numberValue23 = false
    flag23 = numberValue23
  else
    numberValue23 = Citizen
    numberValue23 = numberValue23.CreateThread

    -- === HELPER FUNCTION (decompiler name: workValue33; parameters: none) ===
    function workValue33()
      local arg12, cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34, flag24, flag26
      arg12 = arg3
      cmgCall2 = Citizen
      cmgCall2 = cmgCall2.CreateThread

      -- === HELPER FUNCTION (decompiler name: numberValue18; parameters: none) ===
      function numberValue18()
        local arg13, arg22
        while true do
          arg13 = arg12
          if 0 == arg13 then
            break
          end
          arg13 = Wait
          arg22 = 1000
          arg13(arg22)
          arg13 = arg12
          arg13 = arg13 - 1
          arg12 = arg13
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      cmgCall2(numberValue18)
      while 0 ~= arg12 do
        cmgCall2 = Wait
        numberValue18 = 0
        cmgCall2(numberValue18)
        cmgCall2 = BeginScaleformMovieMethod
        numberValue18 = numberValue21
        flag21 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        cmgCall2(numberValue18, flag21)
        cmgCall2 = _ENV
        numberValue18 = "ScaleformMovieMethodAddParamTextureNameString"
        cmgCall2 = cmgCall2[numberValue18]
        numberValue18 = arg1
        cmgCall2(numberValue18)
        cmgCall2 = ""
        numberValue18 = DoesEntityExist
        flag21 = workValue29
        numberValue18 = numberValue18(flag21)
        if numberValue18 then
          numberValue18 = string
          numberValue18 = numberValue18.format
          flag21 = " (Your plane will be deleted in %s seconds and your shift will end)"
          flag22 = arg12
          numberValue18 = numberValue18(flag21, flag22)
          cmgCall2 = numberValue18
        end
        numberValue18 = _ENV
        flag21 = "ScaleformMovieMethodAddParamTextureNameString"
        numberValue18 = numberValue18[flag21]
        flag21 = string
        flag21 = flag21.format
        flag22 = "%s%s"
        cmgCall5 = arg2
        workValue34 = cmgCall2
        flag21, flag22, cmgCall5, workValue34, flag24, flag26 = flag21(flag22, cmgCall5, workValue34)
        numberValue18(flag21, flag22, cmgCall5, workValue34, flag24, flag26)
        numberValue18 = ScaleformMovieMethodAddParamInt
        flag21 = 0
        numberValue18(flag21)
        numberValue18 = EndScaleformMovieMethod
        numberValue18()
        numberValue18 = DrawScaleformMovieFullscreen
        flag21 = numberValue21
        flag22 = 255
        cmgCall5 = 255
        workValue34 = 255
        flag24 = 255
        flag26 = 0
        numberValue18(flag21, flag22, cmgCall5, workValue34, flag24, flag26)
      end
      cmgCall2 = false
      flag23 = cmgCall2
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    numberValue23(workValue33)
  end
end
cmgCall4.drawPlaneScaleForm = workValue28

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8
  arg1 = 1
  arg2 = textValue
  arg2 = #arg2
  arg3 = 1
  for numberValue19 = arg1, arg2, arg3 do
    numberValue21 = dataTable3
    numberValue23 = CreateCheckpoint
    workValue33 = 5
    cmgCall12 = textValue
    cmgCall12 = cmgCall12[numberValue19]
    cmgCall12 = cmgCall12.coords
    cmgCall12 = cmgCall12.x
    position2 = textValue
    position2 = position2[numberValue19]
    position2 = position2.coords
    position2 = position2.y
    position3 = textValue
    position3 = position3[numberValue19]
    position3 = position3.coords
    position3 = position3.z
    position3 = position3 - 3
    position = textValue
    position = position[numberValue19]
    position = position.coords
    position = position.x
    flag4 = textValue
    flag4 = flag4[numberValue19]
    flag4 = flag4.coords
    flag4 = flag4.y
    flag6 = textValue
    flag6 = flag6[numberValue19]
    flag6 = flag6.coords
    flag6 = flag6.z
    flag9 = 30.0
    numberValue2 = 255
    numberValue3 = 215
    numberValue4 = 0
    numberValue6 = 100
    numberValue8 = 0
    -- Beginner: result below is checkpointHandle.
    numberValue23 = numberValue23(workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8)
    numberValue21[numberValue19] = numberValue23
  end
end
textValue5 = cmgCall4

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23
  arg1 = 1
  arg2 = dataTable3
  arg2 = #arg2
  arg3 = 1
  for numberValue19 = arg1, arg2, arg3 do
    numberValue21 = DeleteCheckpoint
    numberValue23 = dataTable3
    numberValue23 = numberValue23[numberValue19]
    numberValue21(numberValue23)
  end
  arg1 = false
  flag8 = arg1
end
textValue6 = cmgCall4

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6
  arg1 = numberValue20
  arg2 = CMG
  arg2 = arg2.getTunableValue
  arg3 = "pilot_max_damage"
  arg2 = arg2(arg3)
  arg1 = arg1 / arg2
  if arg1 > 1.0 then
    arg1 = 1.0
  end
  arg2 = workValue16.height
  arg2 = arg1 * arg2
  workValue17.height = arg2
  arg2 = workValue16.y
  arg3 = workValue16.height
  arg3 = arg3 / 2
  numberValue19 = workValue17.height
  numberValue19 = numberValue19 / 2
  arg3 = arg3 - numberValue19
  arg2 = arg2 + arg3
  workValue17.y = arg2
  arg2 = DrawRect
  arg3 = workValue16.x
  numberValue19 = workValue16.y
  numberValue21 = workValue16.width
  numberValue23 = workValue16.height
  workValue33 = 0
  cmgCall12 = 0
  position2 = 0
  position3 = 120
  arg2(arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3)
  arg2 = DrawRect
  arg3 = workValue17.x
  numberValue19 = workValue17.y
  numberValue21 = workValue17.width
  numberValue23 = workValue17.height
  workValue33 = 200
  cmgCall12 = 0
  position2 = 0
  position3 = 255
  arg2(arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3)
  arg2 = DrawRect
  arg3 = workValue18.x
  numberValue19 = workValue18.y
  numberValue21 = workValue18.width
  numberValue23 = workValue18.height
  workValue33 = 0
  cmgCall12 = 0
  position2 = 0
  position3 = 200
  arg2(arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3)
  arg2 = DrawRect
  arg3 = workValue19.x
  numberValue19 = workValue19.y
  numberValue21 = workValue19.width
  numberValue23 = workValue19.height
  workValue33 = 0
  cmgCall12 = 0
  position2 = 0
  position3 = 200
  arg2(arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3)
  arg2 = DrawRect
  arg3 = workValue20.x
  numberValue19 = workValue20.y
  numberValue21 = workValue20.width
  numberValue23 = workValue20.height
  workValue33 = 0
  cmgCall12 = 0
  position2 = 0
  position3 = 200
  arg2(arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3)
  arg2 = DrawRect
  arg3 = workValue21.x
  numberValue19 = workValue21.y
  numberValue21 = workValue21.width
  numberValue23 = workValue21.height
  workValue33 = 0
  cmgCall12 = 0
  position2 = 0
  position3 = 200
  arg2(arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3)
  arg2 = DrawSprite
  arg3 = "pilotjob"
  numberValue19 = "damageIcon"
  numberValue21 = workValue16.x
  numberValue23 = workValue16.y
  workValue33 = 0.022
  cmgCall12 = 0.045
  position2 = 0.0
  position3 = 255
  position = 255
  flag4 = 255
  flag6 = 255
  arg2(arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6)
end

-- === HELPER FUNCTION (decompiler name: workValue28; parameters: none) ===
function workValue28()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4
  arg1 = globalOnPilotDuty
  if arg1 then
    arg1 = IsPedInVehicle
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = workValue29
    numberValue19 = false
    arg1 = arg1(arg2, arg3, numberValue19)
    if arg1 then
      arg1 = numberValue5
      if arg1 > 0 then
        arg1 = GetIsVehicleEngineRunning
        arg2 = CMG
        arg2 = arg2.getPlayerVehicle
        arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4 = arg2()
        arg1 = arg1(arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4)
        if arg1 then
          arg1 = dataTable.y
          arg2 = dataTable.height
          arg2 = arg2 / 2
          arg3 = workValue11.height
          arg3 = arg3 / 2
          arg2 = arg2 - arg3
          arg1 = arg1 + arg2
          workValue11.y = arg1
        end
      end
      arg1 = DrawRect
      arg2 = workValue10.x
      arg3 = workValue10.y
      numberValue19 = workValue10.width
      numberValue21 = dataTable.height
      numberValue23 = 0
      workValue33 = 0
      cmgCall12 = 0
      position2 = 120
      arg1(arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2)
      arg1 = DrawRect
      arg2 = workValue11.x
      arg3 = workValue11.y
      numberValue19 = workValue11.width
      numberValue21 = workValue11.height
      numberValue23 = math
      numberValue23 = numberValue23.floor
      workValue33 = numberValue7
      cmgCall12 = 200
      workValue33 = cmgCall12 / workValue33
      cmgCall12 = numberValue5
      workValue33 = workValue33 * cmgCall12
      cmgCall12 = 200
      workValue33 = cmgCall12 - workValue33
      numberValue23 = numberValue23(workValue33)
      workValue33 = math
      workValue33 = workValue33.floor
      cmgCall12 = numberValue7
      position2 = 200
      cmgCall12 = position2 / cmgCall12
      position2 = numberValue5
      cmgCall12 = cmgCall12 * position2
      workValue33 = workValue33(cmgCall12)
      cmgCall12 = 0
      position2 = 255
      arg1(arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2)
      arg1 = DrawRect
      arg2 = workValue12.x
      arg3 = workValue12.y
      numberValue19 = workValue12.width
      numberValue21 = workValue12.height
      numberValue23 = 0
      workValue33 = 0
      cmgCall12 = 0
      position2 = 200
      arg1(arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2)
      arg1 = DrawRect
      arg2 = workValue13.x
      arg3 = workValue13.y
      numberValue19 = workValue13.width
      numberValue21 = workValue13.height
      numberValue23 = 0
      workValue33 = 0
      cmgCall12 = 0
      position2 = 200
      arg1(arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2)
      arg1 = DrawRect
      arg2 = workValue14.x
      arg3 = workValue14.y
      numberValue19 = workValue14.width
      numberValue21 = workValue14.height
      numberValue23 = 0
      workValue33 = 0
      cmgCall12 = 0
      position2 = 200
      arg1(arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2)
      arg1 = DrawRect
      arg2 = workValue15.x
      arg3 = workValue15.y
      numberValue19 = workValue15.width
      numberValue21 = workValue15.height
      numberValue23 = 0
      workValue33 = 0
      cmgCall12 = 0
      position2 = 200
      arg1(arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2)
      arg1 = DrawSprite
      arg2 = "pilotjob"
      arg3 = "gasCanSprite"
      numberValue19 = workValue10.x
      numberValue21 = workValue10.y
      numberValue23 = 0.022
      workValue33 = 0.045
      cmgCall12 = 0.0
      position2 = 255
      position3 = 255
      position = 255
      flag4 = 255
      arg1(arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4)
      arg1 = cmgCall4
      arg1()
    end
  end
end
cmgCall6 = CMG
cmgCall6 = cmgCall6.createThreadOnTick
workValue30 = workValue28
cmgCall7 = "Pilot Fuel UI"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall6(workValue30, cmgCall7)
cmgCall6 = 0

-- === HELPER FUNCTION (decompiler name: workValue30; parameters: none) ===
function workValue30()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10
  arg1 = globalOnPilotDuty
  if arg1 then
    arg1 = DoesEntityExist
    arg2 = workValue29
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg1 = arg1()
      cmgCall6 = arg1
      arg1 = CMG
      arg1 = arg1.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      arg1 = arg1()
      arg2 = workValue29
      if arg1 == arg2 then
        arg1 = GetEntityHeightAboveGround
        arg2 = CMG
        arg2 = arg2.getPlayerVehicle
        arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10 = arg2()
        arg1 = arg1(arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6, numberValue8, numberValue10)
        if arg1 > 60 then
          arg2 = GetVehicleEngineHealth
          arg3 = workValue29
          arg2 = arg2(arg3)
          if arg2 < 0 then
            arg2 = flag23
            if not arg2 then
              arg2 = true
              flag23 = arg2
              arg2 = false
              flag25 = arg2
              arg2 = Citizen
              arg2 = arg2.CreateThread

              -- === HELPER FUNCTION: arg3() ===
              function arg3()
                local arg12, cmgCall2, numberValue18
                arg12 = CMG
                arg12 = arg12.drawPlaneScaleForm
                cmgCall2 = "~r~MISSION FAILED"
                numberValue18 = "You crashed your plane, go get a new one!"
                arg12(cmgCall2, numberValue18)
                arg12 = TriggerServerEvent
                cmgCall2 = "8ae979e044"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ae979e044".
                arg12(cmgCall2)
              end
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              arg2(arg3)
            end
          end
        else
          arg2 = flag23
          if not arg2 then
            arg2 = true
            flag23 = arg2
            arg2 = Citizen
            arg2 = arg2.CreateThread

            -- === HELPER FUNCTION: arg3() ===
            function arg3()
              local arg12, cmgCall2, numberValue18, flag21, flag22, cmgCall5, workValue34
              arg12 = false
              cmgCall2 = 1
              numberValue18 = cmgCall.takeOffLocs
              numberValue18 = #numberValue18
              flag21 = 1
              for flag22 = cmgCall2, numberValue18, flag21 do
                cmgCall5 = cmgCall.takeOffLocs
                cmgCall5 = cmgCall5[flag22]
                cmgCall5 = cmgCall5.coords
                workValue34 = CMG
                workValue34 = workValue34.getPlayerCoords
                -- Beginner: result below is playerCoords.
                workValue34 = workValue34()
                cmgCall5 = cmgCall5 - workValue34
                cmgCall5 = #cmgCall5
                workValue34 = 1500
                if cmgCall5 < workValue34 then
                  arg12 = true
                end
              end
              if not arg12 then
                cmgCall2 = eventRegistration2
                numberValue18 = {}
                numberValue18.transactionType = "pilotPullUpAlarm"
                -- Beginner: Register a network event handler that the server/other clients can trigger.
                cmgCall2(numberValue18)
                cmgCall2 = CMG
                cmgCall2 = cmgCall2.drawPlaneScaleForm
                numberValue18 = "~r~ LOW ALTITUDE"
                flag21 = "Low altitude warning, Pull up!"
                cmgCall2(numberValue18, flag21)
              end
              cmgCall2 = false
              flag23 = cmgCall2
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            arg2(arg3)
          end
        end
        arg2 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg2 = arg2()
        arg3 = GetEntityVelocity
        numberValue19 = workValue29
        arg3 = arg3(numberValue19)
        numberValue19 = workValue22
        numberValue19 = arg2 - numberValue19
        numberValue21 = 1000
        if numberValue19 < numberValue21 then
          numberValue21 = arg3.z
          numberValue23 = vector3Builder.z
          numberValue21 = numberValue21 - numberValue23
          numberValue23 = numberValue19 / 1000
          numberValue23 = numberValue21 / numberValue23
          workValue33 = numberValue23 / 9.81
          cmgCall12 = -0.05
          if workValue33 > cmgCall12 then
            cmgCall12 = 0.05
            if workValue33 < cmgCall12 then
              workValue33 = 0.0
            end
          end
          cmgCall12 = false
          position2 = CMG
          position2 = position2.getTunableValue
          position3 = "pilot_gforce_limit"
          position2 = position2(position3)
          if arg1 > 5.0 then
            if not (workValue33 > position2) then
              position3 = -position2
              if not (workValue33 < position3) then
                goto flow_label_102
              end
            end
            position3 = numberValue20
            position = math
            position = position.abs
            flag4 = workValue33
            position = position(flag4)
            position = numberValue19 * position
            position3 = position3 + position
            numberValue20 = position3
            cmgCall12 = true
          end
          ::flow_label_102::
          if cmgCall12 then
            position3 = "~r~"
            if position3 then
              goto flow_label_108
            end
          end
          position3 = ""
          ::flow_label_108::
          if cmgCall12 then
            position = 0.8
            if position then
              goto flow_label_114
            end
          end
          position = 0.4
          ::flow_label_114::
          flag4 = CMG
          flag4 = flag4.DrawText
          flag6 = 0.75
          flag9 = 0.005
          numberValue2 = position3
          numberValue3 = "Vertical Gs: "
          numberValue4 = tostring
          numberValue6 = math
          numberValue6 = numberValue6.round
          numberValue8 = workValue33
          numberValue10 = 1
          numberValue6, numberValue8, numberValue10 = numberValue6(numberValue8, numberValue10)
          numberValue4 = numberValue4(numberValue6, numberValue8, numberValue10)
          numberValue2 = numberValue2 .. numberValue3 .. numberValue4
          numberValue3 = position
          flag4(flag6, flag9, numberValue2, numberValue3)
          flag4 = CMG
          flag4 = flag4.isDevMode
          flag4 = flag4()
          if flag4 then
            flag4 = CMG
            flag4 = flag4.DrawText
            flag6 = 0.75
            flag9 = 0.05
            numberValue2 = position3
            numberValue3 = "Damage Counter: "
            numberValue4 = tostring
            numberValue6 = numberValue20
            numberValue4 = numberValue4(numberValue6)
            numberValue2 = numberValue2 .. numberValue3 .. numberValue4
            numberValue3 = position
            flag4(flag6, flag9, numberValue2, numberValue3)
          end
        end
        workValue22 = arg2
        vector3Builder = arg3
      else
        arg1 = flag25
        if arg1 then
          arg1 = flag23
          if not arg1 then
            arg1 = true
            flag23 = arg1
            arg1 = Citizen
            arg1 = arg1.CreateThread

            -- === HELPER FUNCTION: arg2() ===
            function arg2()
              local arg12, cmgCall2, numberValue18, flag21
              arg12 = CMG
              arg12 = arg12.drawPlaneScaleForm
              cmgCall2 = "~r~WARNING!"
              numberValue18 = "Get back in your plane"
              flag21 = 10
              arg12(cmgCall2, numberValue18, flag21)
              arg12 = Wait
              cmgCall2 = 10000
              arg12(cmgCall2)
              arg12 = CMG
              arg12 = arg12.getPlayerVehicle
              -- Beginner: result below is currentVehicle.
              arg12 = arg12()
              cmgCall2 = workValue29
              if arg12 ~= cmgCall2 then
                arg12 = DeleteEntity
                cmgCall2 = workValue29
                -- Beginner: Delete a GTA entity.
                arg12(cmgCall2)
                arg12 = false
                flag25 = arg12
                arg12 = TriggerServerEvent
                cmgCall2 = "8ae979e044"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ae979e044".
                arg12(cmgCall2)
              end
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            arg1(arg2)
          end
        end
      end
    else
      arg1 = flag25
      if arg1 then
        arg1 = CMG
        arg1 = arg1.getTunableValue
        arg2 = "pilot_delete_fails"
        arg1 = arg1(arg2)
        if arg1 then
          arg1 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg1 = arg1()
          arg2 = cmgCall6
          arg1 = arg1 - arg2
          arg2 = 10000
          if arg1 > arg2 then
            arg1 = CMG
            arg1 = arg1.drawPlaneScaleForm
            arg2 = "~r~WARNING!"
            arg3 = "Job ended as plane does not exist"
            numberValue19 = 10
            arg1(arg2, arg3, numberValue19)
            arg1 = false
            flag25 = arg1
            arg1 = TriggerServerEvent
            arg2 = "8ae979e044"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ae979e044".
            arg1(arg2)
          end
        end
      end
    end
    arg1 = workValue4
    if arg1 then
      arg1 = CMG
      arg1 = arg1.arePilotJobGuidesDisabled
      arg1 = arg1()
      if not arg1 then
        arg1 = drawNativeText
        arg2 = workValue4
        -- Beginner: Draw GTA-style text on screen.
        arg1(arg2)
      end
    end
  end
end
cmgCall7 = CMG
cmgCall7 = cmgCall7.createThreadOnTick
threadCall = workValue30
cmgCall8 = "Pilot Plane Check"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall7(threadCall, cmgCall8)

-- === HELPER FUNCTION (decompiler name: cmgCall7; parameters: none) ===
function cmgCall7()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4
  arg1 = {}
  arg2 = pairs
  arg3 = GetGamePool
  numberValue19 = "CVehicle"
  arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4 = arg3(numberValue19)
  arg2, arg3, numberValue19, numberValue21 = arg2(arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4)
  for numberValue23, workValue33 in arg2, arg3, numberValue19, numberValue21 do
    cmgCall12 = GetEntityModel
    position2 = workValue33
    -- Beginner: result below is modelHash.
    cmgCall12 = cmgCall12(position2)
    position2 = IsThisModelAHeli
    position3 = cmgCall12
    position2 = position2(position3)
    if not position2 then
      position2 = IsThisModelAPlane
      position3 = cmgCall12
      position2 = position2(position3)
      if not position2 then
        goto flow_label_27
      end
    end
    position2 = table
    position2 = position2.insert
    position3 = arg1
    position = workValue33
    position2(position3, position)
    ::flow_label_27::
  end
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, numberValue19, numberValue21 = arg2(arg3)
  for numberValue23, workValue33 in arg2, arg3, numberValue19, numberValue21 do
    cmgCall12 = pairs
    position2 = arg1
    cmgCall12, position2, position3, position = cmgCall12(position2)
    for flag4, flag6 in cmgCall12, position2, position3, position do
      if workValue33 ~= flag6 then
        flag9 = SetEntityNoCollisionEntity
        numberValue2 = workValue33
        numberValue3 = flag6
        numberValue4 = true
        flag9(numberValue2, numberValue3, numberValue4)
      end
    end
    cmgCall12 = DisableCamCollisionForEntity
    position2 = workValue33
    cmgCall12(position2)
  end
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: none) ===
function cmgCall8()
  local arg1, arg2, arg3, numberValue19, numberValue21
  while true do
    arg1 = globalOnPilotDuty
    if arg1 then
      arg1 = cmgCall7
      -- Beginner: Run a helper every game frame while this script is active.
      arg1()
      arg1 = IsPedInVehicle
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = workValue29
      numberValue19 = false
      arg1 = arg1(arg2, arg3, numberValue19)
      if arg1 then
        arg1 = numberValue5
        if arg1 > 0 then
          arg1 = GetIsVehicleEngineRunning
          arg2 = CMG
          arg2 = arg2.getPlayerVehicle
          arg2, arg3, numberValue19, numberValue21 = arg2()
          arg1 = arg1(arg2, arg3, numberValue19, numberValue21)
          if arg1 then
            arg1 = Wait
            arg2 = math
            arg2 = arg2.random
            arg3 = 6000
            numberValue19 = 10000
            arg2, arg3, numberValue19, numberValue21 = arg2(arg3, numberValue19)
            arg1(arg2, arg3, numberValue19, numberValue21)
            arg1 = numberValue5
            arg1 = arg1 - 1
            numberValue5 = arg1
        end
      end
      else
        arg1 = IsPedInVehicle
        arg2 = CMG
        arg2 = arg2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg2 = arg2()
        arg3 = workValue29
        numberValue19 = false
        arg1 = arg1(arg2, arg3, numberValue19)
        if arg1 then
          arg1 = numberValue5
          if 0 == arg1 then
            arg1 = GetIsVehicleEngineRunning
            arg2 = CMG
            arg2 = arg2.getPlayerVehicle
            arg2, arg3, numberValue19, numberValue21 = arg2()
            arg1 = arg1(arg2, arg3, numberValue19, numberValue21)
            if arg1 then
              arg1 = SetVehicleEngineOn
              arg2 = CMG
              arg2 = arg2.getPlayerVehicle
              -- Beginner: result below is currentVehicle.
              arg2 = arg2()
              arg3 = false
              numberValue19 = true
              numberValue21 = true
              arg1(arg2, arg3, numberValue19, numberValue21)
            end
          end
        end
      end
      arg1 = IsPedInVehicle
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = workValue29
      numberValue19 = false
      arg1 = arg1(arg2, arg3, numberValue19)
      if arg1 then
        arg1 = numberValue5
        arg2 = numberValue7
        arg2 = arg2 * 0.2
        if arg1 <= arg2 then
          arg1 = flag8
          if not arg1 then
            arg1 = flag27
            if not arg1 then
              arg1 = true
              flag8 = arg1
              arg1 = textValue5
              arg1()
            end
          end
        end
      end
      arg1 = numberValue5
      arg2 = numberValue7
      arg1 = arg1 / arg2
      arg2 = dataTable.height
      arg1 = arg1 * arg2
      workValue11.height = arg1
      arg1 = dataTable.y
      arg2 = dataTable.height
      arg2 = arg2 / 2
      arg3 = workValue11.height
      arg3 = arg3 / 2
      arg2 = arg2 - arg3
      arg1 = arg1 + arg2
      workValue11.y = arg1
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(cmgCall8)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2
  arg1 = globalOnPilotDuty
  if arg1 then
    arg1 = IsPedInVehicle
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = workValue29
    numberValue19 = false
    arg1 = arg1(arg2, arg3, numberValue19)
    if not arg1 then
      arg1 = DoesEntityExist
      arg2 = workValue29
      arg1 = arg1(arg2)
      if not arg1 then
        goto flow_label_118
      end
    end
    arg1 = CMG
    arg1 = arg1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = CMG
    arg2 = arg2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg2 = arg2()
    arg3 = DoesEntityExist
    numberValue19 = arg2
    arg3 = arg3(numberValue19)
    if arg3 then
      arg3 = IsThisModelAPlane
      numberValue19 = GetEntityModel
      numberValue21 = arg2
      numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2 = numberValue19(numberValue21)
      arg3 = arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2)
      if arg3 then
        goto flow_label_37
      end
    end
    arg2 = workValue29
    ::flow_label_37::
    arg3 = GetActivePlayers
    arg3 = arg3()
    numberValue19 = pairs
    numberValue21 = CMG
    numberValue21 = numberValue21.getAllVehicles
    numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2 = numberValue21()
    numberValue19, numberValue21, numberValue23, workValue33 = numberValue19(numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2)
    for cmgCall12, position2 in numberValue19, numberValue21, numberValue23, workValue33 do
      position3 = SetEntityNoCollisionEntity
      position = arg1
      flag4 = position2
      flag6 = true
      position3(position, flag4, flag6)
      position3 = SetEntityNoCollisionEntity
      position = position2
      flag4 = arg1
      flag6 = true
      position3(position, flag4, flag6)
      position3 = SetEntityNoCollisionEntity
      position = arg2
      flag4 = position2
      flag6 = true
      position3(position, flag4, flag6)
      position3 = SetEntityNoCollisionEntity
      position = position2
      flag4 = arg2
      flag6 = true
      position3(position, flag4, flag6)
    end
    numberValue19 = pairs
    numberValue21 = arg3
    numberValue19, numberValue21, numberValue23, workValue33 = numberValue19(numberValue21)
    for cmgCall12, position2 in numberValue19, numberValue21, numberValue23, workValue33 do
      position3 = GetPlayerPed
      position = position2
      -- Beginner: result below is playerPed.
      position3 = position3(position)
      position = GetVehiclePedIsIn
      flag4 = position3
      flag6 = true
      -- Beginner: result below is currentVehicle.
      position = position(flag4, flag6)
      if position then
        flag4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        flag4 = flag4()
        if position3 ~= flag4 then
          flag4 = SetEntityNoCollisionEntity
          flag6 = arg1
          flag9 = position
          numberValue2 = true
          flag4(flag6, flag9, numberValue2)
          flag4 = SetEntityNoCollisionEntity
          flag6 = position
          flag9 = arg1
          numberValue2 = true
          flag4(flag6, flag9, numberValue2)
          flag4 = SetEntityNoCollisionEntity
          flag6 = arg2
          flag9 = position
          numberValue2 = true
          flag4(flag6, flag9, numberValue2)
          flag4 = SetEntityNoCollisionEntity
          flag6 = position
          flag9 = arg2
          numberValue2 = true
          flag4(flag6, flag9, numberValue2)
        end
      end
      flag4 = SetEntityNoCollisionEntity
      flag6 = position3
      flag9 = arg2
      numberValue2 = true
      flag4(flag6, flag9, numberValue2)
      flag4 = SetEntityNoCollisionEntity
      flag6 = arg2
      flag9 = position3
      numberValue2 = true
      flag4(flag6, flag9, numberValue2)
    end
  end
  ::flow_label_118::
end
cmgCall8 = CMG
cmgCall8 = cmgCall8.createThreadOnTick
workValue31 = threadCall
eventRegistration3 = "Pilot Collision Disable"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall8(workValue31, eventRegistration3)
cmgCall8 = nil

-- === HELPER FUNCTION (decompiler name: workValue31; parameters: none) ===
function workValue31()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12
  arg1 = cmgCall8
  if arg1 then
    arg1 = pairs
    arg2 = cmgCall8
    arg1, arg2, arg3, numberValue19 = arg1(arg2)
    for numberValue21, numberValue23 in arg1, arg2, arg3, numberValue19 do
      workValue33 = RemoveBlip
      cmgCall12 = numberValue23
      workValue33(cmgCall12)
    end
  end
  arg1 = nil
  cmgCall8 = arg1
end
eventRegistration3 = RegisterNetEvent
textValue8 = "8bd13f474f"
-- Beginner: this function handles network event "8bd13f474f".

-- === HELPER FUNCTION (decompiler name: numberValue25; parameters: arg1) ===
function numberValue25(arg1)
  local arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9
  arg2 = workValue31
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2()
  arg2 = {}
  cmgCall8 = arg2
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, numberValue19, numberValue21 = arg2(arg3)
  for numberValue23, workValue33 in arg2, arg3, numberValue19, numberValue21 do
    cmgCall12 = CMG
    cmgCall12 = cmgCall12.getLocalPlayerSrc
    cmgCall12 = cmgCall12()
    if cmgCall12 ~= numberValue23 then
      cmgCall12 = table
      cmgCall12 = cmgCall12.unpack
      position2 = workValue33
      cmgCall12, position2 = cmgCall12(position2)
      position3 = AddBlipForCoord
      position = cmgCall12.x
      flag4 = cmgCall12.y
      flag6 = cmgCall12.z
      -- Beginner: result below is blipHandle.
      position3 = position3(position, flag4, flag6)
      position = SetBlipSprite
      flag4 = position3
      flag6 = 307
      position(flag4, flag6)
      position = SetBlipRotation
      flag4 = position3
      flag6 = math
      flag6 = flag6.floor
      flag9 = position2
      flag6, flag9 = flag6(flag9)
      position(flag4, flag6, flag9)
      position = table
      position = position.insert
      flag4 = cmgCall8
      flag6 = position3
      position(flag4, flag6)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8bd13f474f".
eventRegistration3(textValue8, numberValue25)
eventRegistration3 = RegisterNetEvent
textValue8 = "cecfb38548"
-- Beginner: this function handles network event "cecfb38548".

-- === HELPER FUNCTION (decompiler name: numberValue25; parameters: none) ===
function numberValue25()
  local arg1, arg2
  arg1 = workValue31
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cecfb38548".
eventRegistration3(textValue8, numberValue25)
eventRegistration3 = vector3
textValue8 = -1335.5045166016
numberValue25 = -2851.1315917969
numberValue26 = 13.94490814209
eventRegistration3 = eventRegistration3(textValue8, numberValue25, numberValue26)
textValue8 = 500.0

-- === HELPER FUNCTION (decompiler name: numberValue25; parameters: arg1, arg2) ===
function numberValue25(arg1, arg2)
  local arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3
  arg3 = GetVehicleModelNumberOfSeats
  numberValue19 = arg2
  arg3 = arg3(numberValue19)
  if 0 == arg3 then
    numberValue19 = false
    return numberValue19
  end
  numberValue19 = -1
  numberValue21 = arg3 - 2
  numberValue23 = 1
  for workValue33 = numberValue19, numberValue21, numberValue23 do
    cmgCall12 = IsVehicleSeatFree
    position2 = arg1
    position3 = workValue33
    cmgCall12 = cmgCall12(position2, position3)
    if not cmgCall12 then
      cmgCall12 = false
      return cmgCall12
    end
  end
  numberValue19 = true
  return numberValue19
end

-- === HELPER FUNCTION (decompiler name: numberValue26; parameters: none) ===
function numberValue26()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4
  arg1 = math
  arg1 = arg1.floor
  arg2 = GetNetworkTime
  -- Beginner: result below is networkTime.
  arg2 = arg2()
  arg2 = arg2 / 1000
  arg1 = arg1(arg2)
  arg2 = arg1 % 60
  if 0 ~= arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.getTunableValue
  arg3 = "clear_airport"
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg2 = GetVehiclePedIsIn
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  numberValue19 = true
  -- Beginner: result below is currentVehicle.
  arg2 = arg2(arg3, numberValue19)
  if 0 ~= arg2 then
    arg3 = GetEntityCoords
    numberValue19 = arg2
    numberValue21 = true
    -- Beginner: result below is entityCoords.
    arg3 = arg3(numberValue19, numberValue21)
    numberValue19 = CMG
    numberValue19 = numberValue19.getPlayerCoords
    -- Beginner: result below is playerCoords.
    numberValue19 = numberValue19()
    arg3 = arg3 - numberValue19
    arg3 = #arg3
    if arg3 > 25.0 then
      arg2 = 0
    end
  end
  arg3 = pairs
  numberValue19 = CMG
  numberValue19 = numberValue19.getAllVehicles
  numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4 = numberValue19()
  arg3, numberValue19, numberValue21, numberValue23 = arg3(numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4)
  for workValue33, cmgCall12 in arg3, numberValue19, numberValue21, numberValue23 do
    position2 = NetworkGetEntityIsNetworked
    position3 = cmgCall12
    position2 = position2(position3)
    if position2 then
      position2 = NetworkHasControlOfEntity
      position3 = cmgCall12
      position2 = position2(position3)
      if position2 and cmgCall12 ~= arg2 then
        position2 = GetEntityModel
        position3 = cmgCall12
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
            position3 = numberValue25
            position = cmgCall12
            flag4 = position2
            position3 = position3(position, flag4)
            if position3 then
              position3 = GetEntityAttachedTo
              position = cmgCall12
              position3 = position3(position)
              if 0 == position3 then
                position3 = DeleteEntity
                position = cmgCall12
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
cmgCall10 = CMG
cmgCall10 = cmgCall10.createArea
textValue9 = "pilot_clear_area"
numberValue27 = eventRegistration3
dataTable4 = textValue8
numberValue28 = textValue8

-- === HELPER FUNCTION (decompiler name: cmgCall11; parameters: none) ===
function cmgCall11()
  local arg1, arg2
end

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: none) ===
function textValue10()
  local arg1, arg2
end
workValue35 = numberValue26
dataTable5 = {}
-- Beginner: Create an interaction area around a world position.
cmgCall10(textValue9, numberValue27, dataTable4, numberValue28, cmgCall11, textValue10, workValue35, dataTable5)
cmgCall10 = vector3
textValue9 = 3070.2856445312
numberValue27 = -4729.2885742188
dataTable4 = 15.261543273926
cmgCall10 = cmgCall10(textValue9, numberValue27, dataTable4)
textValue9 = 200.0
numberValue27 = 0
dataTable4 = {}
numberValue28 = 1246158990
cmgCall11 = -2133399564
dataTable4[1] = numberValue28
dataTable4[2] = cmgCall11

-- === HELPER FUNCTION (decompiler name: numberValue28; parameters: none) ===
function numberValue28()
  local arg1, arg2, arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = numberValue27
  arg2 = arg1 - arg2
  arg3 = 1000
  if arg2 < arg3 then
    return
  end
  arg2 = pairs
  arg3 = GetGamePool
  numberValue19 = "CObject"
  arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6 = arg3(numberValue19)
  arg2, arg3, numberValue19, numberValue21 = arg2(arg3, numberValue19, numberValue21, numberValue23, workValue33, cmgCall12, position2, position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6)
  for numberValue23, workValue33 in arg2, arg3, numberValue19, numberValue21 do
    cmgCall12 = GetEntityModel
    position2 = workValue33
    -- Beginner: result below is modelHash.
    cmgCall12 = cmgCall12(position2)
    position2 = table
    position2 = position2.has
    position3 = dataTable4
    position = cmgCall12
    position2 = position2(position3, position)
    if position2 then
      position2 = SetEntityCanBeDamaged
      position3 = workValue33
      position = false
      position2(position3, position)
      position2 = SetEntityProofs
      position3 = workValue33
      position = true
      flag4 = true
      flag6 = true
      flag9 = true
      numberValue2 = false
      numberValue3 = false
      numberValue4 = false
      numberValue6 = false
      position2(position3, position, flag4, flag6, flag9, numberValue2, numberValue3, numberValue4, numberValue6)
    end
  end
  numberValue27 = arg1
end
cmgCall11 = CMG
cmgCall11 = cmgCall11.createArea
textValue10 = "no_explosion_props"
workValue35 = cmgCall10
dataTable5 = textValue9
workValue36 = textValue9

-- === HELPER FUNCTION (decompiler name: workValue37; parameters: none) ===
function workValue37()
  local arg1, arg2
end

-- === HELPER FUNCTION (decompiler name: workValue38; parameters: none) ===
function workValue38()
  local arg1, arg2
end
workValue39 = numberValue28
-- Beginner: Create an interaction area around a world position.
cmgCall11(textValue10, workValue35, dataTable5, workValue36, workValue37, workValue38, workValue39)
