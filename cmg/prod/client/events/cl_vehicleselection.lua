--[[
    LEVEL 1 BEGINNER GUIDE — Vehicleselection
    ==============================================

    File: cmg/prod/client/events/cl_vehicleselection.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Vehicleselection feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 18
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
local dataCollection, cmgOperation2, cmgOperation3, text7, text8, cmgOperation4, text9, text10, rageUiOperation6, text12, text, rageUiOperation, text2, text3, rageUiOperation3, rageUiOperation4, text4, text5
dataCollection = {}
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.registerHudTimerBarProvider
cmgOperation3 = "vehicleSelection"

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = dataCollection.camera
  if not localValue2 then
    return
  end
  localValue2 = dataCollection.duration
  if localValue2 > 5 then
    localValue2 = localValue1.push
    localValue3 = "~y~REMAINING TIME~w~"
    localValue4 = tostring
    localValue5 = dataCollection.duration
    localValue4, localValue5 = localValue4(localValue5)
    localValue2(localValue3, localValue4, localValue5)
  else
    localValue2 = localValue1.push
    localValue3 = "~r~REMAINING TIME~w~"
    localValue4 = tostring
    localValue5 = dataCollection.duration
    localValue4, localValue5 = localValue4(localValue5)
    localValue2(localValue3, localValue4, localValue5)
  end
end
cmgOperation2(cmgOperation3, text7)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, mathHelper, workingValue8
  localValue2 = 5.0
  if localValue1 then
    localValue3 = DoesEntityExist
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = GetModelDimensions
      localValue4 = GetEntityModel
      localValue5 = localValue1
      localValue4, localValue5, localValue6, mathHelper, workingValue8 = localValue4(localValue5)
      localValue3, localValue4 = localValue3(localValue4, localValue5, localValue6, mathHelper, workingValue8)
      localValue5 = localValue3.xy
      localValue6 = localValue4.xy
      localValue5 = localValue5 - localValue6
      localValue5 = #localValue5
      localValue5 = localValue5 / 2.0
      localValue6 = math
      localValue6 = localValue6.max
      mathHelper = localValue2
      workingValue8 = localValue5
      localValue6 = localValue6(mathHelper, workingValue8)
      localValue2 = localValue6
    end
  end
  localValue3 = dataCollection.position
  localValue4 = vector3
  localValue5 = math
  localValue5 = localValue5.cos
  localValue6 = math
  localValue6 = localValue6.rad
  mathHelper = dataCollection.heading
  mathHelper = mathHelper + 70.0
  localValue6, mathHelper, workingValue8 = localValue6(mathHelper)
  localValue5 = localValue5(localValue6, mathHelper, workingValue8)
  localValue6 = math
  localValue6 = localValue6.sin
  mathHelper = math
  mathHelper = mathHelper.rad
  workingValue8 = dataCollection.heading
  workingValue8 = workingValue8 + 70.0
  mathHelper, workingValue8 = mathHelper(workingValue8)
  localValue6 = localValue6(mathHelper, workingValue8)
  mathHelper = 0.0
  localValue4 = localValue4(localValue5, localValue6, mathHelper)
  localValue4 = localValue4 * localValue2
  localValue3 = localValue3 + localValue4
  localValue4 = vector3
  localValue5 = 0.0
  localValue6 = 0.0
  mathHelper = 2.0
  localValue4 = localValue4(localValue5, localValue6, mathHelper)
  localValue3 = localValue3 + localValue4
  return localValue3
end
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function text7(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local mathHelper, workingValue8, stateFlag6, stateFlag7, position, position2, tableHelper2, cmgOperation, number, number2, stateFlag, number3
  dataCollection.position = localValue1
  dataCollection.heading = localValue2
  dataCollection.vehicles = localValue3
  dataCollection.duration = localValue4
  dataCollection.cbVehicleChanged = localValue5
  dataCollection.cbColourChanged = localValue6
  dataCollection.colourListIndex = 1
  dataCollection.lastVehicleName = nil
  dataCollection.selectedVehicleName = nil
  mathHelper = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  mathHelper = mathHelper()
  dataCollection.lastDecreased = mathHelper
  mathHelper = {}
  dataCollection.orders = mathHelper
  mathHelper = IsPlayerControlOn
  workingValue8 = PlayerId
  workingValue8, stateFlag6, stateFlag7, position, position2, tableHelper2, cmgOperation, number, number2, stateFlag, number3 = workingValue8()
  mathHelper = mathHelper(workingValue8, stateFlag6, stateFlag7, position, position2, tableHelper2, cmgOperation, number, number2, stateFlag, number3)
  dataCollection.prevHasControl = mathHelper
  mathHelper = SetPlayerControl
  workingValue8 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  workingValue8 = workingValue8()
  stateFlag6 = false
  stateFlag7 = 0
  mathHelper(workingValue8, stateFlag6, stateFlag7)
  mathHelper = pairs
  workingValue8 = dataCollection.vehicles
  mathHelper, workingValue8, stateFlag6, stateFlag7 = mathHelper(workingValue8)
  for position, position2 in mathHelper, workingValue8, stateFlag6, stateFlag7 do
    tableHelper2 = table
    tableHelper2 = tableHelper2.find
    cmgOperation = dataCollection.orders
    number = position2.level
    tableHelper2 = tableHelper2(cmgOperation, number)
    if not tableHelper2 then
      tableHelper2 = table
      tableHelper2 = tableHelper2.insert
      cmgOperation = dataCollection.orders
      number = position2.level
      tableHelper2(cmgOperation, number)
    end
  end
  mathHelper = table
  mathHelper = mathHelper.sort
  workingValue8 = dataCollection.orders

  -- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: localValue12, localValue22) ===
  function stateFlag6(localValue12, localValue22)
    local text6
    text6 = localValue12 < localValue22
    return text6
  end
  mathHelper(workingValue8, stateFlag6)
  mathHelper = cmgOperation2
  workingValue8 = nil
  mathHelper = mathHelper(workingValue8)
  workingValue8 = CreateCamWithParams
  stateFlag6 = "DEFAULT_SCRIPTED_CAMERA"
  stateFlag7 = mathHelper.x
  position = mathHelper.y
  position2 = mathHelper.z
  tableHelper2 = 0.0
  cmgOperation = 0.0
  number = 0.0
  number2 = 70.0
  stateFlag = false
  number3 = 2
  workingValue8 = workingValue8(stateFlag6, stateFlag7, position, position2, tableHelper2, cmgOperation, number, number2, stateFlag, number3)
  dataCollection.camera = workingValue8
  workingValue8 = SetCamActive
  stateFlag6 = dataCollection.camera
  stateFlag7 = true
  workingValue8(stateFlag6, stateFlag7)
  workingValue8 = PointCamAtCoord
  stateFlag6 = dataCollection.camera
  stateFlag7 = dataCollection.position
  stateFlag7 = stateFlag7.x
  position = dataCollection.position
  position = position.y
  position2 = dataCollection.position
  position2 = position2.z
  workingValue8(stateFlag6, stateFlag7, position, position2)
  workingValue8 = RenderScriptCams
  stateFlag6 = true
  stateFlag7 = false
  position = 0
  position2 = false
  tableHelper2 = false
  workingValue8(stateFlag6, stateFlag7, position, position2, tableHelper2)
  workingValue8 = pairs
  stateFlag6 = dataCollection.vehicles
  workingValue8, stateFlag6, stateFlag7, position = workingValue8(stateFlag6)
  for position2, tableHelper2 in workingValue8, stateFlag6, stateFlag7, position do
    cmgOperation = CMG
    cmgOperation = cmgOperation.loadModel
    number = tableHelper2.model
    -- Beginner: Request/load a GTA model before spawning or applying it.
    cmgOperation(number)
  end
  workingValue8 = RageUI
  workingValue8 = workingValue8.Visible
  stateFlag6 = RMenu
  stateFlag7 = stateFlag6
  stateFlag6 = stateFlag6.Get
  position = "selection"
  position2 = "mainmenu"
  -- Beginner: result below is menu.
  stateFlag6 = stateFlag6(stateFlag7, position, position2)
  stateFlag7 = true
  workingValue8(stateFlag6, stateFlag7)
end
cmgOperation3.startVehicleSelection = text7
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, mathHelper, workingValue8, stateFlag6, stateFlag7, position
  localValue1 = dataCollection.camera
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.Visible
    localValue2 = RMenu
    localValue3 = localValue2
    localValue2 = localValue2.Get
    localValue4 = "selection"
    localValue5 = "mainmenu"
    -- Beginner: result below is menu.
    localValue2 = localValue2(localValue3, localValue4, localValue5)
    localValue3 = false
    localValue1(localValue2, localValue3)
    localValue1 = pairs
    localValue2 = dataCollection.vehicles
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
    for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
      mathHelper = SetModelAsNoLongerNeeded
      workingValue8 = localValue6.model
      mathHelper(workingValue8)
    end
    localValue1 = DeleteEntity
    localValue2 = dataCollection.previewVehicle
    -- Beginner: Delete a GTA entity.
    localValue1(localValue2)
    localValue1 = SetCamActive
    localValue2 = dataCollection.camera
    localValue3 = false
    localValue1(localValue2, localValue3)
    localValue1 = RenderScriptCams
    localValue2 = false
    localValue3 = false
    localValue4 = 0
    localValue5 = false
    localValue6 = false
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
    localValue1 = DestroyCam
    localValue2 = dataCollection.camera
    localValue3 = false
    localValue1(localValue2, localValue3)
    localValue1 = dataCollection.prevHasControl
    if localValue1 then
      localValue1 = SetPlayerControl
      localValue2 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      localValue2 = localValue2()
      localValue3 = true
      localValue4 = 0
      localValue1(localValue2, localValue3, localValue4)
    end
    localValue1 = pairs
    localValue2 = GetActivePlayers
    localValue2, localValue3, localValue4, localValue5, localValue6, mathHelper, workingValue8, stateFlag6, stateFlag7, position = localValue2()
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, mathHelper, workingValue8, stateFlag6, stateFlag7, position)
    for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
      mathHelper = GetPlayerPed
      workingValue8 = localValue6
      -- Beginner: result below is playerPed.
      mathHelper = mathHelper(workingValue8)
      if 0 ~= mathHelper then
        workingValue8 = SetEntityVisible
        stateFlag6 = mathHelper
        stateFlag7 = true
        position = false
        workingValue8(stateFlag6, stateFlag7, position)
      end
    end
  end
  localValue1 = {}
  dataCollection = localValue1
end
cmgOperation3.endVehicleSelection = text7
cmgOperation3 = RegisterNetEvent
text7 = "1239b973de"
-- Beginner: this function handles network event "1239b973de".

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1) ===
function text8(localValue1)
  local localValue2
  dataCollection.votes = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1239b973de".
cmgOperation3(text7, text8)
cmgOperation3 = {}
text7 = "White"
text8 = "Black"
cmgOperation4 = "Red"
text9 = "Green"
text10 = "Blue"
rageUiOperation6 = "Yellow"
text12 = "Purple"
text = "Pink"
cmgOperation3[1] = text7
cmgOperation3[2] = text8
cmgOperation3[3] = cmgOperation4
cmgOperation3[4] = text9
cmgOperation3[5] = text10
cmgOperation3[6] = rageUiOperation6
cmgOperation3[7] = text12
cmgOperation3[8] = text

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2
  if 1 == localValue1 then
    localValue2 = 111
    return localValue2
  elseif 2 == localValue1 then
    localValue2 = 147
    return localValue2
  elseif 3 == localValue1 then
    localValue2 = 39
    return localValue2
  elseif 4 == localValue1 then
    localValue2 = 92
    return localValue2
  elseif 5 == localValue1 then
    localValue2 = 83
    return localValue2
  elseif 6 == localValue1 then
    localValue2 = 42
    return localValue2
  elseif 7 == localValue1 then
    localValue2 = 145
    return localValue2
  elseif 8 == localValue1 then
    localValue2 = 135
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, mathHelper, workingValue8, stateFlag6, stateFlag7, position, position2, tableHelper2
  localValue1 = dataCollection.camera
  if localValue1 then
    localValue1 = DisableAllControlActions
    localValue2 = 0
    localValue1(localValue2)
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    localValue2 = dataCollection.lastDecreased
    localValue2 = localValue1 - localValue2
    localValue3 = 1000
    if localValue2 >= localValue3 then
      localValue2 = dataCollection.duration
      if localValue2 > 0 then
        localValue2 = dataCollection.duration
        localValue2 = localValue2 - 1
        dataCollection.duration = localValue2
      end
      localValue2 = dataCollection.duration
      if localValue2 < 5 then
        localValue2 = PlaySoundFrontend
        localValue3 = -1
        localValue4 = "Checkpoint_Buzz"
        localValue5 = "DLC_AW_Frontend_Sounds"
        localValue6 = false
        localValue2(localValue3, localValue4, localValue5, localValue6)
      end
      dataCollection.lastDecreased = localValue1
    end
    localValue2 = CMG
    localValue2 = localValue2.setHudTimerBarProviderActive
    localValue3 = "vehicleSelection"
    localValue4 = true
    localValue2(localValue3, localValue4)
    localValue2 = RageUI
    localValue2 = localValue2.Visible
    localValue3 = RMenu
    localValue4 = localValue3
    localValue3 = localValue3.Get
    localValue5 = "selection"
    localValue6 = "mainmenu"
    -- Beginner: result below is menu.
    localValue3 = localValue3(localValue4, localValue5, localValue6)
    localValue4 = true
    localValue2(localValue3, localValue4)
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = pairs
    localValue4 = GetActivePlayers
    localValue4, localValue5, localValue6, mathHelper, workingValue8, stateFlag6, stateFlag7, position, position2, tableHelper2 = localValue4()
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4, localValue5, localValue6, mathHelper, workingValue8, stateFlag6, stateFlag7, position, position2, tableHelper2)
    for mathHelper, workingValue8 in localValue3, localValue4, localValue5, localValue6 do
      stateFlag6 = GetPlayerPed
      stateFlag7 = workingValue8
      -- Beginner: result below is playerPed.
      stateFlag6 = stateFlag6(stateFlag7)
      if 0 ~= stateFlag6 then
        stateFlag7 = SetEntityVisible
        position = stateFlag6
        position2 = stateFlag6 == localValue2
        tableHelper2 = false
        stateFlag7(position, position2, tableHelper2)
      end
    end
  else
    localValue1 = CMG
    localValue1 = localValue1.setHudTimerBarProviderActive
    localValue2 = "vehicleSelection"
    localValue3 = false
    localValue1(localValue2, localValue3)
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
text9 = text8
text10 = "Event Vehicle Selection"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(text9, text10)

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2) ===
function cmgOperation4(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, mathHelper, workingValue8, stateFlag6, stateFlag7, position
  dataCollection.lastVehicleName = localValue2
  localValue3 = DeleteEntity
  localValue4 = dataCollection.previewVehicle
  -- Beginner: Delete a GTA entity.
  localValue3(localValue4)
  localValue3 = CMG
  localValue3 = localValue3.spawnVehicle
  localValue4 = localValue1.model
  localValue5 = dataCollection.position
  localValue5 = localValue5.x
  localValue6 = dataCollection.position
  localValue6 = localValue6.y
  mathHelper = dataCollection.position
  mathHelper = mathHelper.z
  workingValue8 = dataCollection.heading
  stateFlag6 = false
  stateFlag7 = false
  position = false
  localValue3 = localValue3(localValue4, localValue5, localValue6, mathHelper, workingValue8, stateFlag6, stateFlag7, position)
  dataCollection.previewVehicle = localValue3
  localValue3 = FreezeEntityPosition
  localValue4 = dataCollection.previewVehicle
  localValue5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(localValue4, localValue5)
  localValue3 = text7
  localValue4 = dataCollection.colourListIndex
  localValue3 = localValue3(localValue4)
  localValue4 = SetVehicleColours
  localValue5 = dataCollection.previewVehicle
  localValue6 = localValue3
  mathHelper = localValue3
  localValue4(localValue5, localValue6, mathHelper)
  localValue4 = SetVehicleEngineOn
  localValue5 = dataCollection.previewVehicle
  localValue6 = true
  mathHelper = true
  workingValue8 = false
  localValue4(localValue5, localValue6, mathHelper, workingValue8)
  localValue4 = SetPedIntoVehicle
  localValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = dataCollection.previewVehicle
  mathHelper = -1
  localValue4(localValue5, localValue6, mathHelper)
  localValue4 = SetVehRadioStation
  localValue5 = dataCollection.previewVehicle
  localValue6 = "OFF"
  localValue4(localValue5, localValue6)
  localValue4 = DoesVehicleHaveLandingGear
  localValue5 = dataCollection.previewVehicle
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = ControlLandingGear
    localValue5 = dataCollection.previewVehicle
    localValue6 = 3
    localValue4(localValue5, localValue6)
  end
  localValue4 = SetHeliBladesFullSpeed
  localValue5 = dataCollection.previewVehicle
  localValue4(localValue5)
  localValue4 = GetEntityCoords
  localValue5 = dataCollection.previewVehicle
  -- Beginner: result below is entityCoords.
  localValue4 = localValue4(localValue5)
  localValue5 = dataCollection.position
  localValue4 = localValue4 - localValue5
  localValue4 = #localValue4
  if localValue4 > 3.0 then
    localValue4 = SetEntityCoordsNoOffset
    localValue5 = dataCollection.previewVehicle
    localValue6 = dataCollection.position
    localValue6 = localValue6.x
    mathHelper = dataCollection.position
    mathHelper = mathHelper.y
    workingValue8 = dataCollection.position
    workingValue8 = workingValue8.z
    stateFlag6 = true
    stateFlag7 = false
    position = false
    -- Beginner: Move/teleport an entity to new coordinates.
    localValue4(localValue5, localValue6, mathHelper, workingValue8, stateFlag6, stateFlag7, position)
  end
  localValue4 = cmgOperation2
  localValue5 = dataCollection.previewVehicle
  localValue4 = localValue4(localValue5)
  localValue5 = SetCamCoord
  localValue6 = dataCollection.camera
  mathHelper = localValue4.x
  workingValue8 = localValue4.y
  stateFlag6 = localValue4.z
  localValue5(localValue6, mathHelper, workingValue8, stateFlag6)
end

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1, localValue2, localValue3) ===
function text9(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, mathHelper
  localValue4 = dataCollection.lastVehicleName
  if nil ~= localValue4 then
    localValue4 = dataCollection.selectedVehicleName
    if nil ~= localValue4 then
      goto continueAtStep26
    end
  end
  dataCollection.selectedVehicleName = localValue2
  localValue4 = dataCollection.cbVehicleChanged
  localValue5 = localValue2
  localValue4(localValue5)
  localValue4 = text7
  localValue5 = dataCollection.colourListIndex
  localValue4 = localValue4(localValue5)
  localValue5 = dataCollection.cbColourChanged
  if localValue5 then
    localValue5 = dataCollection.cbColourChanged
    localValue6 = localValue4
    localValue5(localValue6)
  end
  if localValue3 then
    localValue5 = cmgOperation4
    localValue6 = localValue1
    mathHelper = localValue2
    -- Beginner: Run a helper every game frame while this script is active.
    localValue5(localValue6, mathHelper)
  end
  ::continueAtStep26::
end

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1, localValue2, localValue3, localValue4) ===
function text10(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, mathHelper, workingValue8, stateFlag6
  if localValue1 then
    localValue5 = dataCollection.lastVehicleName
    if localValue4 ~= localValue5 then
      localValue5 = text9
      localValue6 = localValue3
      mathHelper = localValue4
      workingValue8 = false
      localValue5(localValue6, mathHelper, workingValue8)
      localValue5 = cmgOperation4
      localValue6 = localValue3
      mathHelper = localValue4
      -- Beginner: Run a helper every game frame while this script is active.
      localValue5(localValue6, mathHelper)
    end
  end
  if localValue2 then
    dataCollection.selectedVehicleName = localValue4
    localValue5 = AnimpostfxPlay
    localValue6 = "SuccessNeutral"
    mathHelper = 0
    workingValue8 = false
    localValue5(localValue6, mathHelper, workingValue8)
    localValue5 = PlaySoundFrontend
    localValue6 = -1
    mathHelper = "Deliver"
    workingValue8 = "In_And_Out_Attacker_Sounds"
    stateFlag6 = false
    localValue5(localValue6, mathHelper, workingValue8, stateFlag6)
    localValue5 = dataCollection.cbVehicleChanged
    localValue6 = localValue4
    localValue5(localValue6)
  end
  if localValue1 then
    localValue5 = dataCollection.cbColourChanged
    if localValue5 then
      localValue5 = IsDisabledControlJustPressed
      localValue6 = 0
      mathHelper = 22
      localValue5 = localValue5(localValue6, mathHelper)
      if localValue5 then
        localValue5 = dataCollection.colourListIndex
        localValue6 = cmgOperation3
        localValue6 = #localValue6
        if localValue5 == localValue6 then
          dataCollection.colourListIndex = 1
        else
          localValue5 = dataCollection.colourListIndex
          localValue5 = localValue5 + 1
          dataCollection.colourListIndex = localValue5
        end
        localValue5 = text7
        localValue6 = dataCollection.colourListIndex
        localValue5 = localValue5(localValue6)
        localValue6 = dataCollection.cbColourChanged
        mathHelper = localValue5
        localValue6(mathHelper)
        localValue6 = SetVehicleColours
        mathHelper = dataCollection.previewVehicle
        workingValue8 = localValue5
        stateFlag6 = localValue5
        localValue6(mathHelper, workingValue8, stateFlag6)
      end
    end
  end
end
rageUiOperation6 = RMenu
rageUiOperation6 = rageUiOperation6.Add
text12 = "selection"
text = "mainmenu"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text2 = ""
text3 = "Select your vehicle"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text4 = "cmg_minigames_choosevehicle"
text5 = "cmg_minigames_choosevehicle"
rageUiOperation, text2, text3, rageUiOperation3, rageUiOperation4, text4, text5 = rageUiOperation(text2, text3, rageUiOperation3, rageUiOperation4, text4, text5)
rageUiOperation6(text12, text, rageUiOperation, text2, text3, rageUiOperation3, rageUiOperation4, text4, text5)
rageUiOperation6 = RageUI
rageUiOperation6 = rageUiOperation6.CreateWhile
text12 = 1.0
text = RMenu
rageUiOperation = text
text = text.Get
text2 = "selection"
text3 = "mainmenu"
-- Beginner: result below is menu.
text = text(rageUiOperation, text2, text3)
rageUiOperation = nil

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "selection"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, text6, workingValue4, dataCollection4, stateFlag4, iterator, rageUiOperation5, text11, workingValue10, tableHelper, dataCollection2, stringHelper, rageUiOperation2, workingValue, players, stateFlag2, stateFlag3, workingValue2, workingValue3
    localValue12 = dataCollection.votes
    if localValue12 then
      localValue12 = currentEvent
      localValue12 = localValue12.players
      if localValue12 then
        localValue12 = RageUI
        localValue12 = localValue12.Separator
        localValue22 = "Event Options"
        localValue12(localValue22)
        localValue12 = GetPlayerServerId
        localValue22 = PlayerId
        localValue22, text6, workingValue4, dataCollection4, stateFlag4, iterator, rageUiOperation5, text11, workingValue10, tableHelper, dataCollection2, stringHelper, rageUiOperation2, workingValue, players, stateFlag2, stateFlag3, workingValue2, workingValue3 = localValue22()
        -- Beginner: result below is serverId.
        localValue12 = localValue12(localValue22, text6, workingValue4, dataCollection4, stateFlag4, iterator, rageUiOperation5, text11, workingValue10, tableHelper, dataCollection2, stringHelper, rageUiOperation2, workingValue, players, stateFlag2, stateFlag3, workingValue2, workingValue3)
        localValue22 = pairs
        text6 = dataCollection.votes
        localValue22, text6, workingValue4, dataCollection4 = localValue22(text6)
        for stateFlag4, iterator in localValue22, text6, workingValue4, dataCollection4 do
          rageUiOperation5 = RageUI
          rageUiOperation5 = rageUiOperation5.Checkbox
          text11 = "Vote For "
          workingValue10 = stateFlag4
          text11 = text11 .. workingValue10
          workingValue10 = nil
          tableHelper = table
          tableHelper = tableHelper.has
          dataCollection2 = iterator
          stringHelper = localValue12
          tableHelper = tableHelper(dataCollection2, stringHelper)
          dataCollection2 = {}
          stringHelper = string
          stringHelper = stringHelper.format
          rageUiOperation2 = "(%d/%d)"
          workingValue = #iterator
          players = currentEvent
          players = players.players
          players = #players
          stringHelper = stringHelper(rageUiOperation2, workingValue, players)
          dataCollection2.RightLabel = stringHelper

          -- === HELPER FUNCTION: stringHelper() ===
          function stringHelper()
            local localValue13, localValue23
          end

          -- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
          function rageUiOperation2()
            local localValue13, localValue23, localValue32, dataCollection3
            localValue13 = TriggerServerEvent
            localValue23 = "2d1686688d"
            localValue32 = stateFlag4
            dataCollection3 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2d1686688d".
            localValue13(localValue23, localValue32, dataCollection3)
          end

          -- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
          function workingValue()
            local localValue13, localValue23, localValue32, dataCollection3
            localValue13 = TriggerServerEvent
            localValue23 = "2d1686688d"
            localValue32 = stateFlag4
            dataCollection3 = false
            localValue13(localValue23, localValue32, dataCollection3)
          end
          -- Beginner: Draw a RageUI checkbox.
          rageUiOperation5(text11, workingValue10, tableHelper, dataCollection2, stringHelper, rageUiOperation2, workingValue)
        end
        localValue22 = RageUI
        localValue22 = localValue22.Separator
        text6 = "Available Vehicles"
        localValue22(text6)
      end
    end
    localValue12 = currentEvent
    localValue12 = localValue12.data
    localValue12 = localValue12.customSpawncode
    if localValue12 then
      localValue12 = currentEvent
      localValue12 = localValue12.data
      localValue12 = localValue12.customSpawncode
      localValue22 = RageUI
      localValue22 = localValue22.ButtonWithStyle
      text6 = localValue12
      workingValue4 = nil
      dataCollection4 = {}
      dataCollection4.RightLabel = "\226\156\148\239\184\143"
      stateFlag4 = true

      -- === HELPER FUNCTION: iterator(localValue13, localValue23, localValue32) ===
      function iterator(localValue13, localValue23, localValue32)
        local dataCollection3, workingValue5, workingValue6, workingValue7, stateFlag5, workingValue9
        dataCollection3 = {}
        workingValue5 = localValue12
        dataCollection3.model = workingValue5
        workingValue5 = text10
        workingValue6 = localValue23
        workingValue7 = localValue32
        stateFlag5 = dataCollection3
        workingValue9 = localValue12
        workingValue5(workingValue6, workingValue7, stateFlag5, workingValue9)
        workingValue5 = text9
        workingValue6 = dataCollection3
        workingValue7 = localValue12
        stateFlag5 = true
        workingValue5(workingValue6, workingValue7, stateFlag5)
      end
      rageUiOperation5 = nil
      -- Beginner: Draw a selectable RageUI menu button.
      localValue22(text6, workingValue4, dataCollection4, stateFlag4, iterator, rageUiOperation5)
    else
      localValue12 = pairs
      localValue22 = dataCollection.orders
      localValue12, localValue22, text6, workingValue4 = localValue12(localValue22)
      for dataCollection4, stateFlag4 in localValue12, localValue22, text6, workingValue4 do
        iterator = pairs
        rageUiOperation5 = dataCollection.vehicles
        iterator, rageUiOperation5, text11, workingValue10 = iterator(rageUiOperation5)
        for tableHelper, dataCollection2 in iterator, rageUiOperation5, text11, workingValue10 do
          stringHelper = dataCollection2.level
          if stringHelper == stateFlag4 then
            stringHelper = dataCollection.selectedVehicleName
            if tableHelper == stringHelper then
              stringHelper = {}
              stringHelper.RightLabel = "\226\156\148\239\184\143"
              if stringHelper then
                goto continueAtStep96
              end
            end
            stringHelper = {}
            ::continueAtStep96::
            rageUiOperation2 = RageUI
            rageUiOperation2 = rageUiOperation2.ButtonWithStyle
            workingValue = tableHelper
            players = nil
            stateFlag2 = stringHelper
            stateFlag3 = true

            -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue13, localValue23, localValue32) ===
            function workingValue2(localValue13, localValue23, localValue32)
              local dataCollection3, workingValue5, workingValue6, workingValue7, stateFlag5
              dataCollection3 = text10
              workingValue5 = localValue23
              workingValue6 = localValue32
              workingValue7 = dataCollection2
              stateFlag5 = tableHelper
              dataCollection3(workingValue5, workingValue6, workingValue7, stateFlag5)
            end
            workingValue3 = nil
            -- Beginner: Draw a selectable RageUI menu button.
            rageUiOperation2(workingValue, players, stateFlag2, stateFlag3, workingValue2, workingValue3)
            rageUiOperation2 = text9
            workingValue = dataCollection2
            players = tableHelper
            stateFlag2 = true
            rageUiOperation2(workingValue, players, stateFlag2)
          end
        end
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
end
rageUiOperation6(text12, text, rageUiOperation, text2)
rageUiOperation6 = RMenu
text12 = rageUiOperation6
rageUiOperation6 = rageUiOperation6.Get
text = "selection"
rageUiOperation = "mainmenu"
-- Beginner: result below is menu.
rageUiOperation6 = rageUiOperation6(text12, text, rageUiOperation)
text12 = rageUiOperation6
rageUiOperation6 = rageUiOperation6.AddInstructionButton
text = {}
rageUiOperation = "~INPUT_JUMP~"
text2 = "Switch Colour"
text[1] = rageUiOperation
text[2] = text2
rageUiOperation6(text12, text)
