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
local dataTable, cmgCall2, cmgCall3, textValue7, textValue8, cmgCall4, textValue9, textValue10, rageUiCall6, textValue12, textValue, rageUiCall, textValue2, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5
dataTable = {}
cmgCall2 = CMG
cmgCall2 = cmgCall2.registerHudTimerBarProvider
cmgCall3 = "vehicleSelection"

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1) ===
function textValue7(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = dataTable.camera
  if not arg2 then
    return
  end
  arg2 = dataTable.duration
  if arg2 > 5 then
    arg2 = arg1.push
    arg3 = "~y~REMAINING TIME~w~"
    arg4 = tostring
    arg5 = dataTable.duration
    arg4, arg5 = arg4(arg5)
    arg2(arg3, arg4, arg5)
  else
    arg2 = arg1.push
    arg3 = "~r~REMAINING TIME~w~"
    arg4 = tostring
    arg5 = dataTable.duration
    arg4, arg5 = arg4(arg5)
    arg2(arg3, arg4, arg5)
  end
end
cmgCall2(cmgCall3, textValue7)

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3, arg4, arg5, arg6, mathHelper, workValue8
  arg2 = 5.0
  if arg1 then
    arg3 = DoesEntityExist
    arg4 = arg1
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = GetModelDimensions
      arg4 = GetEntityModel
      arg5 = arg1
      arg4, arg5, arg6, mathHelper, workValue8 = arg4(arg5)
      arg3, arg4 = arg3(arg4, arg5, arg6, mathHelper, workValue8)
      arg5 = arg3.xy
      arg6 = arg4.xy
      arg5 = arg5 - arg6
      arg5 = #arg5
      arg5 = arg5 / 2.0
      arg6 = math
      arg6 = arg6.max
      mathHelper = arg2
      workValue8 = arg5
      arg6 = arg6(mathHelper, workValue8)
      arg2 = arg6
    end
  end
  arg3 = dataTable.position
  arg4 = vector3
  arg5 = math
  arg5 = arg5.cos
  arg6 = math
  arg6 = arg6.rad
  mathHelper = dataTable.heading
  mathHelper = mathHelper + 70.0
  arg6, mathHelper, workValue8 = arg6(mathHelper)
  arg5 = arg5(arg6, mathHelper, workValue8)
  arg6 = math
  arg6 = arg6.sin
  mathHelper = math
  mathHelper = mathHelper.rad
  workValue8 = dataTable.heading
  workValue8 = workValue8 + 70.0
  mathHelper, workValue8 = mathHelper(workValue8)
  arg6 = arg6(mathHelper, workValue8)
  mathHelper = 0.0
  arg4 = arg4(arg5, arg6, mathHelper)
  arg4 = arg4 * arg2
  arg3 = arg3 + arg4
  arg4 = vector3
  arg5 = 0.0
  arg6 = 0.0
  mathHelper = 2.0
  arg4 = arg4(arg5, arg6, mathHelper)
  arg3 = arg3 + arg4
  return arg3
end
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1, arg2, arg3, arg4, arg5, arg6) ===
function textValue7(arg1, arg2, arg3, arg4, arg5, arg6)
  local mathHelper, workValue8, flag6, flag7, position, position2, tableHelper2, cmgCall, numberValue, numberValue2, flag, numberValue3
  dataTable.position = arg1
  dataTable.heading = arg2
  dataTable.vehicles = arg3
  dataTable.duration = arg4
  dataTable.cbVehicleChanged = arg5
  dataTable.cbColourChanged = arg6
  dataTable.colourListIndex = 1
  dataTable.lastVehicleName = nil
  dataTable.selectedVehicleName = nil
  mathHelper = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  mathHelper = mathHelper()
  dataTable.lastDecreased = mathHelper
  mathHelper = {}
  dataTable.orders = mathHelper
  mathHelper = IsPlayerControlOn
  workValue8 = PlayerId
  workValue8, flag6, flag7, position, position2, tableHelper2, cmgCall, numberValue, numberValue2, flag, numberValue3 = workValue8()
  mathHelper = mathHelper(workValue8, flag6, flag7, position, position2, tableHelper2, cmgCall, numberValue, numberValue2, flag, numberValue3)
  dataTable.prevHasControl = mathHelper
  mathHelper = SetPlayerControl
  workValue8 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  workValue8 = workValue8()
  flag6 = false
  flag7 = 0
  mathHelper(workValue8, flag6, flag7)
  mathHelper = pairs
  workValue8 = dataTable.vehicles
  mathHelper, workValue8, flag6, flag7 = mathHelper(workValue8)
  for position, position2 in mathHelper, workValue8, flag6, flag7 do
    tableHelper2 = table
    tableHelper2 = tableHelper2.find
    cmgCall = dataTable.orders
    numberValue = position2.level
    tableHelper2 = tableHelper2(cmgCall, numberValue)
    if not tableHelper2 then
      tableHelper2 = table
      tableHelper2 = tableHelper2.insert
      cmgCall = dataTable.orders
      numberValue = position2.level
      tableHelper2(cmgCall, numberValue)
    end
  end
  mathHelper = table
  mathHelper = mathHelper.sort
  workValue8 = dataTable.orders

  -- === HELPER FUNCTION (decompiler name: flag6; parameters: arg12, arg22) ===
  function flag6(arg12, arg22)
    local textValue6
    textValue6 = arg12 < arg22
    return textValue6
  end
  mathHelper(workValue8, flag6)
  mathHelper = cmgCall2
  workValue8 = nil
  mathHelper = mathHelper(workValue8)
  workValue8 = CreateCamWithParams
  flag6 = "DEFAULT_SCRIPTED_CAMERA"
  flag7 = mathHelper.x
  position = mathHelper.y
  position2 = mathHelper.z
  tableHelper2 = 0.0
  cmgCall = 0.0
  numberValue = 0.0
  numberValue2 = 70.0
  flag = false
  numberValue3 = 2
  workValue8 = workValue8(flag6, flag7, position, position2, tableHelper2, cmgCall, numberValue, numberValue2, flag, numberValue3)
  dataTable.camera = workValue8
  workValue8 = SetCamActive
  flag6 = dataTable.camera
  flag7 = true
  workValue8(flag6, flag7)
  workValue8 = PointCamAtCoord
  flag6 = dataTable.camera
  flag7 = dataTable.position
  flag7 = flag7.x
  position = dataTable.position
  position = position.y
  position2 = dataTable.position
  position2 = position2.z
  workValue8(flag6, flag7, position, position2)
  workValue8 = RenderScriptCams
  flag6 = true
  flag7 = false
  position = 0
  position2 = false
  tableHelper2 = false
  workValue8(flag6, flag7, position, position2, tableHelper2)
  workValue8 = pairs
  flag6 = dataTable.vehicles
  workValue8, flag6, flag7, position = workValue8(flag6)
  for position2, tableHelper2 in workValue8, flag6, flag7, position do
    cmgCall = CMG
    cmgCall = cmgCall.loadModel
    numberValue = tableHelper2.model
    -- Beginner: Request/load a GTA model before spawning or applying it.
    cmgCall(numberValue)
  end
  workValue8 = RageUI
  workValue8 = workValue8.Visible
  flag6 = RMenu
  flag7 = flag6
  flag6 = flag6.Get
  position = "selection"
  position2 = "mainmenu"
  -- Beginner: result below is menu.
  flag6 = flag6(flag7, position, position2)
  flag7 = true
  workValue8(flag6, flag7)
end
cmgCall3.startVehicleSelection = textValue7
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, arg4, arg5, arg6, mathHelper, workValue8, flag6, flag7, position
  arg1 = dataTable.camera
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.Visible
    arg2 = RMenu
    arg3 = arg2
    arg2 = arg2.Get
    arg4 = "selection"
    arg5 = "mainmenu"
    -- Beginner: result below is menu.
    arg2 = arg2(arg3, arg4, arg5)
    arg3 = false
    arg1(arg2, arg3)
    arg1 = pairs
    arg2 = dataTable.vehicles
    arg1, arg2, arg3, arg4 = arg1(arg2)
    for arg5, arg6 in arg1, arg2, arg3, arg4 do
      mathHelper = SetModelAsNoLongerNeeded
      workValue8 = arg6.model
      mathHelper(workValue8)
    end
    arg1 = DeleteEntity
    arg2 = dataTable.previewVehicle
    -- Beginner: Delete a GTA entity.
    arg1(arg2)
    arg1 = SetCamActive
    arg2 = dataTable.camera
    arg3 = false
    arg1(arg2, arg3)
    arg1 = RenderScriptCams
    arg2 = false
    arg3 = false
    arg4 = 0
    arg5 = false
    arg6 = false
    arg1(arg2, arg3, arg4, arg5, arg6)
    arg1 = DestroyCam
    arg2 = dataTable.camera
    arg3 = false
    arg1(arg2, arg3)
    arg1 = dataTable.prevHasControl
    if arg1 then
      arg1 = SetPlayerControl
      arg2 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      arg2 = arg2()
      arg3 = true
      arg4 = 0
      arg1(arg2, arg3, arg4)
    end
    arg1 = pairs
    arg2 = GetActivePlayers
    arg2, arg3, arg4, arg5, arg6, mathHelper, workValue8, flag6, flag7, position = arg2()
    arg1, arg2, arg3, arg4 = arg1(arg2, arg3, arg4, arg5, arg6, mathHelper, workValue8, flag6, flag7, position)
    for arg5, arg6 in arg1, arg2, arg3, arg4 do
      mathHelper = GetPlayerPed
      workValue8 = arg6
      -- Beginner: result below is playerPed.
      mathHelper = mathHelper(workValue8)
      if 0 ~= mathHelper then
        workValue8 = SetEntityVisible
        flag6 = mathHelper
        flag7 = true
        position = false
        workValue8(flag6, flag7, position)
      end
    end
  end
  arg1 = {}
  dataTable = arg1
end
cmgCall3.endVehicleSelection = textValue7
cmgCall3 = RegisterNetEvent
textValue7 = "1239b973de"
-- Beginner: this function handles network event "1239b973de".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1) ===
function textValue8(arg1)
  local arg2
  dataTable.votes = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1239b973de".
cmgCall3(textValue7, textValue8)
cmgCall3 = {}
textValue7 = "White"
textValue8 = "Black"
cmgCall4 = "Red"
textValue9 = "Green"
textValue10 = "Blue"
rageUiCall6 = "Yellow"
textValue12 = "Purple"
textValue = "Pink"
cmgCall3[1] = textValue7
cmgCall3[2] = textValue8
cmgCall3[3] = cmgCall4
cmgCall3[4] = textValue9
cmgCall3[5] = textValue10
cmgCall3[6] = rageUiCall6
cmgCall3[7] = textValue12
cmgCall3[8] = textValue

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1) ===
function textValue7(arg1)
  local arg2
  if 1 == arg1 then
    arg2 = 111
    return arg2
  elseif 2 == arg1 then
    arg2 = 147
    return arg2
  elseif 3 == arg1 then
    arg2 = 39
    return arg2
  elseif 4 == arg1 then
    arg2 = 92
    return arg2
  elseif 5 == arg1 then
    arg2 = 83
    return arg2
  elseif 6 == arg1 then
    arg2 = 42
    return arg2
  elseif 7 == arg1 then
    arg2 = 145
    return arg2
  elseif 8 == arg1 then
    arg2 = 135
    return arg2
  end
end

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, arg3, arg4, arg5, arg6, mathHelper, workValue8, flag6, flag7, position, position2, tableHelper2
  arg1 = dataTable.camera
  if arg1 then
    arg1 = DisableAllControlActions
    arg2 = 0
    arg1(arg2)
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    arg2 = dataTable.lastDecreased
    arg2 = arg1 - arg2
    arg3 = 1000
    if arg2 >= arg3 then
      arg2 = dataTable.duration
      if arg2 > 0 then
        arg2 = dataTable.duration
        arg2 = arg2 - 1
        dataTable.duration = arg2
      end
      arg2 = dataTable.duration
      if arg2 < 5 then
        arg2 = PlaySoundFrontend
        arg3 = -1
        arg4 = "Checkpoint_Buzz"
        arg5 = "DLC_AW_Frontend_Sounds"
        arg6 = false
        arg2(arg3, arg4, arg5, arg6)
      end
      dataTable.lastDecreased = arg1
    end
    arg2 = CMG
    arg2 = arg2.setHudTimerBarProviderActive
    arg3 = "vehicleSelection"
    arg4 = true
    arg2(arg3, arg4)
    arg2 = RageUI
    arg2 = arg2.Visible
    arg3 = RMenu
    arg4 = arg3
    arg3 = arg3.Get
    arg5 = "selection"
    arg6 = "mainmenu"
    -- Beginner: result below is menu.
    arg3 = arg3(arg4, arg5, arg6)
    arg4 = true
    arg2(arg3, arg4)
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = pairs
    arg4 = GetActivePlayers
    arg4, arg5, arg6, mathHelper, workValue8, flag6, flag7, position, position2, tableHelper2 = arg4()
    arg3, arg4, arg5, arg6 = arg3(arg4, arg5, arg6, mathHelper, workValue8, flag6, flag7, position, position2, tableHelper2)
    for mathHelper, workValue8 in arg3, arg4, arg5, arg6 do
      flag6 = GetPlayerPed
      flag7 = workValue8
      -- Beginner: result below is playerPed.
      flag6 = flag6(flag7)
      if 0 ~= flag6 then
        flag7 = SetEntityVisible
        position = flag6
        position2 = flag6 == arg2
        tableHelper2 = false
        flag7(position, position2, tableHelper2)
      end
    end
  else
    arg1 = CMG
    arg1 = arg1.setHudTimerBarProviderActive
    arg2 = "vehicleSelection"
    arg3 = false
    arg1(arg2, arg3)
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
textValue9 = textValue8
textValue10 = "Event Vehicle Selection"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(textValue9, textValue10)

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2) ===
function cmgCall4(arg1, arg2)
  local arg3, arg4, arg5, arg6, mathHelper, workValue8, flag6, flag7, position
  dataTable.lastVehicleName = arg2
  arg3 = DeleteEntity
  arg4 = dataTable.previewVehicle
  -- Beginner: Delete a GTA entity.
  arg3(arg4)
  arg3 = CMG
  arg3 = arg3.spawnVehicle
  arg4 = arg1.model
  arg5 = dataTable.position
  arg5 = arg5.x
  arg6 = dataTable.position
  arg6 = arg6.y
  mathHelper = dataTable.position
  mathHelper = mathHelper.z
  workValue8 = dataTable.heading
  flag6 = false
  flag7 = false
  position = false
  arg3 = arg3(arg4, arg5, arg6, mathHelper, workValue8, flag6, flag7, position)
  dataTable.previewVehicle = arg3
  arg3 = FreezeEntityPosition
  arg4 = dataTable.previewVehicle
  arg5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, arg5)
  arg3 = textValue7
  arg4 = dataTable.colourListIndex
  arg3 = arg3(arg4)
  arg4 = SetVehicleColours
  arg5 = dataTable.previewVehicle
  arg6 = arg3
  mathHelper = arg3
  arg4(arg5, arg6, mathHelper)
  arg4 = SetVehicleEngineOn
  arg5 = dataTable.previewVehicle
  arg6 = true
  mathHelper = true
  workValue8 = false
  arg4(arg5, arg6, mathHelper, workValue8)
  arg4 = SetPedIntoVehicle
  arg5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = dataTable.previewVehicle
  mathHelper = -1
  arg4(arg5, arg6, mathHelper)
  arg4 = SetVehRadioStation
  arg5 = dataTable.previewVehicle
  arg6 = "OFF"
  arg4(arg5, arg6)
  arg4 = DoesVehicleHaveLandingGear
  arg5 = dataTable.previewVehicle
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = ControlLandingGear
    arg5 = dataTable.previewVehicle
    arg6 = 3
    arg4(arg5, arg6)
  end
  arg4 = SetHeliBladesFullSpeed
  arg5 = dataTable.previewVehicle
  arg4(arg5)
  arg4 = GetEntityCoords
  arg5 = dataTable.previewVehicle
  -- Beginner: result below is entityCoords.
  arg4 = arg4(arg5)
  arg5 = dataTable.position
  arg4 = arg4 - arg5
  arg4 = #arg4
  if arg4 > 3.0 then
    arg4 = SetEntityCoordsNoOffset
    arg5 = dataTable.previewVehicle
    arg6 = dataTable.position
    arg6 = arg6.x
    mathHelper = dataTable.position
    mathHelper = mathHelper.y
    workValue8 = dataTable.position
    workValue8 = workValue8.z
    flag6 = true
    flag7 = false
    position = false
    -- Beginner: Move/teleport an entity to new coordinates.
    arg4(arg5, arg6, mathHelper, workValue8, flag6, flag7, position)
  end
  arg4 = cmgCall2
  arg5 = dataTable.previewVehicle
  arg4 = arg4(arg5)
  arg5 = SetCamCoord
  arg6 = dataTable.camera
  mathHelper = arg4.x
  workValue8 = arg4.y
  flag6 = arg4.z
  arg5(arg6, mathHelper, workValue8, flag6)
end

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg1, arg2, arg3) ===
function textValue9(arg1, arg2, arg3)
  local arg4, arg5, arg6, mathHelper
  arg4 = dataTable.lastVehicleName
  if nil ~= arg4 then
    arg4 = dataTable.selectedVehicleName
    if nil ~= arg4 then
      goto flow_label_26
    end
  end
  dataTable.selectedVehicleName = arg2
  arg4 = dataTable.cbVehicleChanged
  arg5 = arg2
  arg4(arg5)
  arg4 = textValue7
  arg5 = dataTable.colourListIndex
  arg4 = arg4(arg5)
  arg5 = dataTable.cbColourChanged
  if arg5 then
    arg5 = dataTable.cbColourChanged
    arg6 = arg4
    arg5(arg6)
  end
  if arg3 then
    arg5 = cmgCall4
    arg6 = arg1
    mathHelper = arg2
    -- Beginner: Run a helper every game frame while this script is active.
    arg5(arg6, mathHelper)
  end
  ::flow_label_26::
end

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: arg1, arg2, arg3, arg4) ===
function textValue10(arg1, arg2, arg3, arg4)
  local arg5, arg6, mathHelper, workValue8, flag6
  if arg1 then
    arg5 = dataTable.lastVehicleName
    if arg4 ~= arg5 then
      arg5 = textValue9
      arg6 = arg3
      mathHelper = arg4
      workValue8 = false
      arg5(arg6, mathHelper, workValue8)
      arg5 = cmgCall4
      arg6 = arg3
      mathHelper = arg4
      -- Beginner: Run a helper every game frame while this script is active.
      arg5(arg6, mathHelper)
    end
  end
  if arg2 then
    dataTable.selectedVehicleName = arg4
    arg5 = AnimpostfxPlay
    arg6 = "SuccessNeutral"
    mathHelper = 0
    workValue8 = false
    arg5(arg6, mathHelper, workValue8)
    arg5 = PlaySoundFrontend
    arg6 = -1
    mathHelper = "Deliver"
    workValue8 = "In_And_Out_Attacker_Sounds"
    flag6 = false
    arg5(arg6, mathHelper, workValue8, flag6)
    arg5 = dataTable.cbVehicleChanged
    arg6 = arg4
    arg5(arg6)
  end
  if arg1 then
    arg5 = dataTable.cbColourChanged
    if arg5 then
      arg5 = IsDisabledControlJustPressed
      arg6 = 0
      mathHelper = 22
      arg5 = arg5(arg6, mathHelper)
      if arg5 then
        arg5 = dataTable.colourListIndex
        arg6 = cmgCall3
        arg6 = #arg6
        if arg5 == arg6 then
          dataTable.colourListIndex = 1
        else
          arg5 = dataTable.colourListIndex
          arg5 = arg5 + 1
          dataTable.colourListIndex = arg5
        end
        arg5 = textValue7
        arg6 = dataTable.colourListIndex
        arg5 = arg5(arg6)
        arg6 = dataTable.cbColourChanged
        mathHelper = arg5
        arg6(mathHelper)
        arg6 = SetVehicleColours
        mathHelper = dataTable.previewVehicle
        workValue8 = arg5
        flag6 = arg5
        arg6(mathHelper, workValue8, flag6)
      end
    end
  end
end
rageUiCall6 = RMenu
rageUiCall6 = rageUiCall6.Add
textValue12 = "selection"
textValue = "mainmenu"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue2 = ""
textValue3 = "Select your vehicle"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue4 = "cmg_minigames_choosevehicle"
textValue5 = "cmg_minigames_choosevehicle"
rageUiCall, textValue2, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5 = rageUiCall(textValue2, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5)
rageUiCall6(textValue12, textValue, rageUiCall, textValue2, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5)
rageUiCall6 = RageUI
rageUiCall6 = rageUiCall6.CreateWhile
textValue12 = 1.0
textValue = RMenu
rageUiCall = textValue
textValue = textValue.Get
textValue2 = "selection"
textValue3 = "mainmenu"
-- Beginner: result below is menu.
textValue = textValue(rageUiCall, textValue2, textValue3)
rageUiCall = nil

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "selection"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, textValue6, workValue4, dataTable4, flag4, iterator, rageUiCall5, textValue11, workValue10, tableHelper, dataTable2, stringHelper, rageUiCall2, workValue, players, flag2, flag3, workValue2, workValue3
    arg12 = dataTable.votes
    if arg12 then
      arg12 = currentEvent
      arg12 = arg12.players
      if arg12 then
        arg12 = RageUI
        arg12 = arg12.Separator
        arg22 = "Event Options"
        arg12(arg22)
        arg12 = GetPlayerServerId
        arg22 = PlayerId
        arg22, textValue6, workValue4, dataTable4, flag4, iterator, rageUiCall5, textValue11, workValue10, tableHelper, dataTable2, stringHelper, rageUiCall2, workValue, players, flag2, flag3, workValue2, workValue3 = arg22()
        -- Beginner: result below is serverId.
        arg12 = arg12(arg22, textValue6, workValue4, dataTable4, flag4, iterator, rageUiCall5, textValue11, workValue10, tableHelper, dataTable2, stringHelper, rageUiCall2, workValue, players, flag2, flag3, workValue2, workValue3)
        arg22 = pairs
        textValue6 = dataTable.votes
        arg22, textValue6, workValue4, dataTable4 = arg22(textValue6)
        for flag4, iterator in arg22, textValue6, workValue4, dataTable4 do
          rageUiCall5 = RageUI
          rageUiCall5 = rageUiCall5.Checkbox
          textValue11 = "Vote For "
          workValue10 = flag4
          textValue11 = textValue11 .. workValue10
          workValue10 = nil
          tableHelper = table
          tableHelper = tableHelper.has
          dataTable2 = iterator
          stringHelper = arg12
          tableHelper = tableHelper(dataTable2, stringHelper)
          dataTable2 = {}
          stringHelper = string
          stringHelper = stringHelper.format
          rageUiCall2 = "(%d/%d)"
          workValue = #iterator
          players = currentEvent
          players = players.players
          players = #players
          stringHelper = stringHelper(rageUiCall2, workValue, players)
          dataTable2.RightLabel = stringHelper

          -- === HELPER FUNCTION: stringHelper() ===
          function stringHelper()
            local arg13, arg23
          end

          -- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: none) ===
          function rageUiCall2()
            local arg13, arg23, arg32, dataTable3
            arg13 = TriggerServerEvent
            arg23 = "2d1686688d"
            arg32 = flag4
            dataTable3 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2d1686688d".
            arg13(arg23, arg32, dataTable3)
          end

          -- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
          function workValue()
            local arg13, arg23, arg32, dataTable3
            arg13 = TriggerServerEvent
            arg23 = "2d1686688d"
            arg32 = flag4
            dataTable3 = false
            arg13(arg23, arg32, dataTable3)
          end
          -- Beginner: Draw a RageUI checkbox.
          rageUiCall5(textValue11, workValue10, tableHelper, dataTable2, stringHelper, rageUiCall2, workValue)
        end
        arg22 = RageUI
        arg22 = arg22.Separator
        textValue6 = "Available Vehicles"
        arg22(textValue6)
      end
    end
    arg12 = currentEvent
    arg12 = arg12.data
    arg12 = arg12.customSpawncode
    if arg12 then
      arg12 = currentEvent
      arg12 = arg12.data
      arg12 = arg12.customSpawncode
      arg22 = RageUI
      arg22 = arg22.ButtonWithStyle
      textValue6 = arg12
      workValue4 = nil
      dataTable4 = {}
      dataTable4.RightLabel = "\226\156\148\239\184\143"
      flag4 = true

      -- === HELPER FUNCTION: iterator(arg13, arg23, arg32) ===
      function iterator(arg13, arg23, arg32)
        local dataTable3, workValue5, workValue6, workValue7, flag5, workValue9
        dataTable3 = {}
        workValue5 = arg12
        dataTable3.model = workValue5
        workValue5 = textValue10
        workValue6 = arg23
        workValue7 = arg32
        flag5 = dataTable3
        workValue9 = arg12
        workValue5(workValue6, workValue7, flag5, workValue9)
        workValue5 = textValue9
        workValue6 = dataTable3
        workValue7 = arg12
        flag5 = true
        workValue5(workValue6, workValue7, flag5)
      end
      rageUiCall5 = nil
      -- Beginner: Draw a selectable RageUI menu button.
      arg22(textValue6, workValue4, dataTable4, flag4, iterator, rageUiCall5)
    else
      arg12 = pairs
      arg22 = dataTable.orders
      arg12, arg22, textValue6, workValue4 = arg12(arg22)
      for dataTable4, flag4 in arg12, arg22, textValue6, workValue4 do
        iterator = pairs
        rageUiCall5 = dataTable.vehicles
        iterator, rageUiCall5, textValue11, workValue10 = iterator(rageUiCall5)
        for tableHelper, dataTable2 in iterator, rageUiCall5, textValue11, workValue10 do
          stringHelper = dataTable2.level
          if stringHelper == flag4 then
            stringHelper = dataTable.selectedVehicleName
            if tableHelper == stringHelper then
              stringHelper = {}
              stringHelper.RightLabel = "\226\156\148\239\184\143"
              if stringHelper then
                goto flow_label_96
              end
            end
            stringHelper = {}
            ::flow_label_96::
            rageUiCall2 = RageUI
            rageUiCall2 = rageUiCall2.ButtonWithStyle
            workValue = tableHelper
            players = nil
            flag2 = stringHelper
            flag3 = true

            -- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg13, arg23, arg32) ===
            function workValue2(arg13, arg23, arg32)
              local dataTable3, workValue5, workValue6, workValue7, flag5
              dataTable3 = textValue10
              workValue5 = arg23
              workValue6 = arg32
              workValue7 = dataTable2
              flag5 = tableHelper
              dataTable3(workValue5, workValue6, workValue7, flag5)
            end
            workValue3 = nil
            -- Beginner: Draw a selectable RageUI menu button.
            rageUiCall2(workValue, players, flag2, flag3, workValue2, workValue3)
            rageUiCall2 = textValue9
            workValue = dataTable2
            players = tableHelper
            flag2 = true
            rageUiCall2(workValue, players, flag2)
          end
        end
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
end
rageUiCall6(textValue12, textValue, rageUiCall, textValue2)
rageUiCall6 = RMenu
textValue12 = rageUiCall6
rageUiCall6 = rageUiCall6.Get
textValue = "selection"
rageUiCall = "mainmenu"
-- Beginner: result below is menu.
rageUiCall6 = rageUiCall6(textValue12, textValue, rageUiCall)
textValue12 = rageUiCall6
rageUiCall6 = rageUiCall6.AddInstructionButton
textValue = {}
rageUiCall = "~INPUT_JUMP~"
textValue2 = "Switch Colour"
textValue[1] = rageUiCall
textValue[2] = textValue2
rageUiCall6(textValue12, textValue)
