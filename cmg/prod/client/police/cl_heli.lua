--[[
    LEVEL 1 BEGINNER GUIDE — Heli
    ==================================

    File: cmg/prod/client/police/cl_heli.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Heli feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 21
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
local number, number6, number25, number33, number35, number37, number39, number41, number42, number44, stateFlag, stateFlag2, stateFlag3, number2, stateFlag4, number3, dataCollection, cmgOperation, number4, number5, number7, number8, number9, number11, number13, number15, number17, number19, number21, number23, number26, number27, number28, number29, number30, number31, backgroundThread, eventHandler, cmgOperation2, number32, text2
number = 80.0
number6 = 10.0
number25 = 7.0
number33 = 7.0
number35 = 7.0
number37 = 51
number39 = 25
number41 = 154
number42 = 74
number44 = 22
stateFlag = false
stateFlag2 = false
stateFlag3 = false
number2 = 0
stateFlag4 = false
number3 = 0
dataCollection = {}
cmgOperation = 837858166
number4 = -1572900542
number5 = 1457987098
number7 = 1783593694
number8 = 903317905
number9 = 895755432
number11 = -1519555388
number13 = -1634501443
number15 = -1758441398
number17 = 353883353
number19 = -877280795
number21 = -16554230
number23 = 1790592407
number26 = 1729276197
number27 = 465590640
number28 = 263279933
number29 = -93312325
number30 = -1159615601
number31 = -1504773962
backgroundThread = -1412094181
eventHandler = 1875232888
cmgOperation2 = 1418659670
number32 = 295054921
dataCollection[1] = cmgOperation
dataCollection[2] = number4
dataCollection[3] = number5
dataCollection[4] = number7
dataCollection[5] = number8
dataCollection[6] = number9
dataCollection[7] = number11
dataCollection[8] = number13
dataCollection[9] = number15
dataCollection[10] = number17
dataCollection[11] = number19
dataCollection[12] = number21
dataCollection[13] = number23
dataCollection[14] = number26
dataCollection[15] = number27
dataCollection[16] = number28
dataCollection[17] = number29
dataCollection[18] = number30
dataCollection[19] = number31
dataCollection[20] = backgroundThread
dataCollection[21] = eventHandler
dataCollection[22] = cmgOperation2
dataCollection[23] = number32
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
function number4()
  local localValue1, localValue2
  localValue1 = stateFlag
  return localValue1
end
cmgOperation.isPlayerRappeling = number4
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
function number4()
  local localValue1, localValue2
  localValue1 = stateFlag2
  return localValue1
end
cmgOperation.isPlayerInPoliceHeli = number4
cmgOperation = number + number6
cmgOperation = cmgOperation * 0.5
number4 = 0

-- === HELPER FUNCTION (decompiler name: number5; parameters: localValue1) ===
function number5(localValue1)
  local localValue2, text
  localValue2 = GetEntityHeightAboveGround
  text = localValue1
  localValue2 = localValue2(text)
  text = 1.5
  localValue2 = localValue2 > text
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, localValue2, text
  localValue1 = BeginScaleformMovieMethod
  localValue2 = number2
  text = "SET_CAMERA_TYPE"
  localValue1(localValue2, text)
  localValue1 = number4
  if 0 == localValue1 then
    localValue1 = SetNightvision
    localValue2 = true
    localValue1(localValue2)
    localValue1 = 1
    number4 = localValue1
    localValue1 = ScaleformMovieMethodAddParamInt
    localValue2 = 3
    localValue1(localValue2)
  else
    localValue1 = number4
    if 1 == localValue1 then
      localValue1 = SetNightvision
      localValue2 = false
      localValue1(localValue2)
      localValue1 = SetSeethrough
      localValue2 = true
      localValue1(localValue2)
      localValue1 = 2
      number4 = localValue1
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 2
      localValue1(localValue2)
    else
      localValue1 = SetSeethrough
      localValue2 = false
      localValue1(localValue2)
      localValue1 = 0
      number4 = localValue1
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 1
      localValue1(localValue2)
    end
  end
  localValue1 = EndScaleformMovieMethod
  localValue1()
end

-- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
function number8()
  local localValue1, localValue2
  localValue1 = HideHelpTextThisFrame
  localValue1()
  localValue1 = HideHudAndRadarThisFrame
  localValue1()
  localValue1 = HideHudComponentThisFrame
  localValue2 = 19
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 1
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 2
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 3
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 4
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 13
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 11
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 12
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 15
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 18
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: number9; parameters: localValue1, localValue2) ===
function number9(localValue1, localValue2)
  local text, number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle
  text = GetDisabledControlNormal
  number34 = 0
  number36 = 220
  text = text(number34, number36)
  number34 = GetDisabledControlNormal
  number36 = 0
  number38 = 221
  number34 = number34(number36, number38)
  number36 = GetCamRot
  number38 = localValue1
  number40 = 2
  number36 = number36(number38, number40)
  if 0.0 ~= text or 0.0 ~= number34 then
    number38 = number36.z
    number40 = text * -1.0
    mathHelper = number35
    number40 = number40 * mathHelper
    mathHelper = localValue2 + 0.1
    number40 = number40 * mathHelper
    number38 = number38 + number40
    number40 = math
    number40 = number40.max
    mathHelper = math
    mathHelper = mathHelper.min
    number43 = 20.0
    workingValue3 = number36.x
    workingValue = number34 * -1.0
    workingValue2 = number33
    workingValue = workingValue * workingValue2
    workingValue2 = localValue2 + 0.1
    workingValue = workingValue * workingValue2
    workingValue3 = workingValue3 + workingValue
    mathHelper = mathHelper(number43, workingValue3)
    number43 = -89.5
    number40 = number40(mathHelper, number43)
    mathHelper = SetCamRot
    number43 = localValue1
    workingValue3 = number40
    workingValue = 0.0
    workingValue2 = number38
    vehicle = 2
    mathHelper(number43, workingValue3, workingValue, workingValue2, vehicle)
  end
end

-- === HELPER FUNCTION (decompiler name: number11; parameters: localValue1) ===
function number11(localValue1)
  local localValue2, text, number34, number36
  localValue2 = IsControlJustPressed
  text = 0
  number34 = 241
  localValue2 = localValue2(text, number34)
  if localValue2 then
    localValue2 = math
    localValue2 = localValue2.max
    text = cmgOperation
    number34 = number25
    text = text - number34
    number34 = number6
    localValue2 = localValue2(text, number34)
    cmgOperation = localValue2
  end
  localValue2 = IsControlJustPressed
  text = 0
  number34 = 242
  localValue2 = localValue2(text, number34)
  if localValue2 then
    localValue2 = math
    localValue2 = localValue2.min
    text = cmgOperation
    number34 = number25
    text = text + number34
    number34 = number
    localValue2 = localValue2(text, number34)
    cmgOperation = localValue2
  end
  localValue2 = GetCamFov
  text = localValue1
  localValue2 = localValue2(text)
  text = math
  text = text.abs
  number34 = cmgOperation
  number34 = number34 - localValue2
  text = text(number34)
  number34 = 0.1
  if text < number34 then
    cmgOperation = localValue2
  end
  text = SetCamFov
  number34 = localValue1
  number36 = cmgOperation
  number36 = number36 - localValue2
  number36 = number36 * 0.05
  number36 = localValue2 + number36
  text(number34, number36)
end

-- === HELPER FUNCTION (decompiler name: number13; parameters: localValue1) ===
function number13(localValue1)
  local localValue2, text, number34, number36, number38, number40, mathHelper, number43
  localValue2 = math
  localValue2 = localValue2.rad
  text = localValue1.z
  localValue2 = localValue2(text)
  text = math
  text = text.rad
  number34 = localValue1.x
  text = text(number34)
  number34 = math
  number34 = number34.abs
  number36 = math
  number36 = number36.cos
  number38 = text
  number36, number38, number40, mathHelper, number43 = number36(number38)
  number34 = number34(number36, number38, number40, mathHelper, number43)
  number36 = vector3
  number38 = math
  number38 = number38.sin
  number40 = localValue2
  number38 = number38(number40)
  number38 = -number38
  number38 = number38 * number34
  number40 = math
  number40 = number40.cos
  mathHelper = localValue2
  number40 = number40(mathHelper)
  number40 = number40 * number34
  mathHelper = math
  mathHelper = mathHelper.sin
  number43 = text
  mathHelper, number43 = mathHelper(number43)
  return number36(number38, number40, mathHelper, number43)
end

-- === HELPER FUNCTION (decompiler name: number15; parameters: localValue1) ===
function number15(localValue1)
  local localValue2, text, number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle, playerPed, stateFlag5
  localValue2 = GetCamCoord
  text = localValue1
  localValue2 = localValue2(text)
  text = number13
  number34 = GetCamRot
  number36 = localValue1
  number38 = 2
  number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle, playerPed, stateFlag5 = number34(number36, number38)
  text = text(number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle, playerPed, stateFlag5)
  number34 = text * 200.0
  number34 = localValue2 + number34
  number36 = _ENV
  number38 = "StartExpensiveSynchronousShapeTestLosProbe"
  number36 = number36[number38]
  number38 = localValue2.x
  number40 = localValue2.y
  mathHelper = localValue2.z
  number43 = number34.x
  workingValue3 = number34.y
  workingValue = number34.z
  workingValue2 = 10
  vehicle = GetVehiclePedIsIn
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  stateFlag5 = false
  -- Beginner: result below is currentVehicle.
  vehicle = vehicle(playerPed, stateFlag5)
  playerPed = 0
  number36 = number36(number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle, playerPed)
  number38 = GetShapeTestResult
  number40 = number36
  number38, number40, mathHelper, number43, workingValue3 = number38(number40)
  if workingValue3 > 0 then
    workingValue = IsEntityAVehicle
    workingValue2 = workingValue3
    workingValue = workingValue(workingValue2)
    if workingValue then
      return workingValue3
  end
  else
    workingValue = nil
    return workingValue
  end
end

-- === HELPER FUNCTION (decompiler name: number17; parameters: localValue1) ===
function number17(localValue1)
  local localValue2, text, number34, number36
  localValue1 = localValue1 + 2000
  localValue2 = math
  localValue2 = localValue2.floor
  text = localValue1 / 40
  localValue2 = localValue2(text)
  localValue1 = localValue2
  localValue2 = math
  localValue2 = localValue2.max
  text = math
  text = text.min
  number34 = localValue1
  number36 = 99
  text = text(number34, number36)
  number34 = 0
  return localValue2(text, number34)
end

-- === HELPER FUNCTION (decompiler name: number19; parameters: localValue1, localValue2) ===
function number19(localValue1, localValue2)
  local text, number34, number36, number38, number40, mathHelper, number43, workingValue3
  text = math
  text = text.floor
  number34 = GetEntityHeading
  number36 = localValue2
  number34, number36, number38, number40, mathHelper, number43, workingValue3 = number34(number36)
  text = text(number34, number36, number38, number40, mathHelper, number43, workingValue3)
  number34 = GetEntityCoords
  number36 = localValue2
  number38 = true
  -- Beginner: result below is entityCoords.
  number34 = number34(number36, number38)
  number36 = math
  number36 = number36.floor
  number38 = number34.z
  number38 = number38 * 3.28084
  number36 = number36(number38)
  number38 = GetEntityCoords
  number40 = localValue1
  mathHelper = true
  -- Beginner: result below is entityCoords.
  number38 = number38(number40, mathHelper)
  number40 = math
  number40 = number40.floor
  mathHelper = number34 - number38
  mathHelper = #mathHelper
  number40 = number40(mathHelper)
  mathHelper = BeginScaleformMovieMethod
  number43 = number2
  workingValue3 = "SET_TARGET_INFORMATION"
  mathHelper(number43, workingValue3)
  mathHelper = ScaleformMovieMethodAddParamInt
  number43 = number17
  workingValue3 = number34.x
  number43, workingValue3 = number43(workingValue3)
  mathHelper(number43, workingValue3)
  mathHelper = ScaleformMovieMethodAddParamInt
  number43 = number17
  workingValue3 = number34.y
  number43, workingValue3 = number43(workingValue3)
  mathHelper(number43, workingValue3)
  mathHelper = ScaleformMovieMethodAddParamInt
  number43 = text
  mathHelper(number43)
  mathHelper = ScaleformMovieMethodAddParamInt
  number43 = number36
  mathHelper(number43)
  mathHelper = ScaleformMovieMethodAddParamInt
  number43 = number40
  mathHelper(number43)
  mathHelper = EndScaleformMovieMethod
  mathHelper()
end

-- === HELPER FUNCTION (decompiler name: number21; parameters: localValue1) ===
function number21(localValue1)
  local localValue2, text, number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle
  localValue2 = GetCamCoord
  text = localValue1
  localValue2 = localValue2(text)
  text = CMG
  text = text.rotationToDirection
  number34 = GetCamRot
  number36 = localValue1
  number38 = 2
  number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle = number34(number36, number38)
  text = text(number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle)
  text = text * 500.0
  text = localValue2 + text
  number34 = _ENV
  number36 = "StartExpensiveSynchronousShapeTestLosProbe"
  number34 = number34[number36]
  number36 = localValue2.x
  number38 = localValue2.y
  number40 = localValue2.z
  mathHelper = text.x
  number43 = text.y
  workingValue3 = text.z
  workingValue = -1
  workingValue2 = CMG
  workingValue2 = workingValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  workingValue2 = workingValue2()
  vehicle = 4
  number34 = number34(number36, number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle)
  number36 = GetShapeTestResult
  number38 = number34
  number36, number38, number40 = number36(number38)
  if number38 then
    mathHelper = BeginScaleformMovieMethod
    number43 = number2
    workingValue3 = "SET_TARGET_INFORMATION"
    mathHelper(number43, workingValue3)
    mathHelper = ScaleformMovieMethodAddParamInt
    number43 = number17
    workingValue3 = number40.x
    number43, workingValue3, workingValue, workingValue2, vehicle = number43(workingValue3)
    mathHelper(number43, workingValue3, workingValue, workingValue2, vehicle)
    mathHelper = ScaleformMovieMethodAddParamInt
    number43 = number17
    workingValue3 = number40.y
    number43, workingValue3, workingValue, workingValue2, vehicle = number43(workingValue3)
    mathHelper(number43, workingValue3, workingValue, workingValue2, vehicle)
    mathHelper = ScaleformMovieMethodAddParamInt
    number43 = math
    number43 = number43.floor
    workingValue3 = GetHeadingFromVector_2d
    workingValue = number40.x
    workingValue2 = localValue2.x
    workingValue = workingValue - workingValue2
    workingValue2 = number40.y
    vehicle = localValue2.y
    workingValue2 = workingValue2 - vehicle
    workingValue3, workingValue, workingValue2, vehicle = workingValue3(workingValue, workingValue2)
    number43 = number43(workingValue3, workingValue, workingValue2, vehicle)
    workingValue3 = 360
    number43 = workingValue3 - number43
    mathHelper(number43)
    mathHelper = ScaleformMovieMethodAddParamInt
    number43 = math
    number43 = number43.floor
    workingValue3 = number40.z
    workingValue3 = workingValue3 * 3.28084
    number43, workingValue3, workingValue, workingValue2, vehicle = number43(workingValue3)
    mathHelper(number43, workingValue3, workingValue, workingValue2, vehicle)
    mathHelper = ScaleformMovieMethodAddParamInt
    number43 = math
    number43 = number43.floor
    workingValue3 = localValue2 - number40
    workingValue3 = #workingValue3
    number43, workingValue3, workingValue, workingValue2, vehicle = number43(workingValue3)
    mathHelper(number43, workingValue3, workingValue, workingValue2, vehicle)
    mathHelper = EndScaleformMovieMethod
    mathHelper()
  end
end

-- === HELPER FUNCTION (decompiler name: number23; parameters: localValue1) ===
function number23(localValue1)
  local localValue2, text, number34, number36, number38, number40
  localValue2 = math
  localValue2 = localValue2.floor
  text = GetEntityHeading
  number34 = localValue1
  text, number34, number36, number38, number40 = text(number34)
  localValue2 = localValue2(text, number34, number36, number38, number40)
  text = GetEntityCoords
  number34 = localValue1
  number36 = true
  -- Beginner: result below is entityCoords.
  text = text(number34, number36)
  number34 = math
  number34 = number34.floor
  number36 = text.z
  number36 = number36 * 3.28084
  number34 = number34(number36)
  number36 = BeginScaleformMovieMethod
  number38 = number2
  number40 = "SET_AIRCRAFT_INFORMATION"
  number36(number38, number40)
  number36 = ScaleformMovieMethodAddParamInt
  number38 = number17
  number40 = text.x
  number38, number40 = number38(number40)
  number36(number38, number40)
  number36 = ScaleformMovieMethodAddParamInt
  number38 = number17
  number40 = text.y
  number38, number40 = number38(number40)
  number36(number38, number40)
  number36 = ScaleformMovieMethodAddParamInt
  number38 = localValue2
  number36(number38)
  number36 = ScaleformMovieMethodAddParamInt
  number38 = number34
  number36(number38)
  number36 = EndScaleformMovieMethod
  number36()
end

-- === HELPER FUNCTION (decompiler name: number26; parameters: localValue1) ===
function number26(localValue1)
  local localValue2, text, number34, number36
  localValue2 = GetCamRot
  text = localValue1
  number34 = 2
  localValue2 = localValue2(text, number34)
  text = BeginScaleformMovieMethod
  number34 = number2
  number36 = "SET_CAMERA_PITCH"
  text(number34, number36)
  text = ScaleformMovieMethodAddParamFloat
  number34 = localValue2.x
  text(number34)
  text = EndScaleformMovieMethod
  text()
  text = BeginScaleformMovieMethod
  number34 = number2
  number36 = "SET_CAMERA_HEADING"
  text(number34, number36)
  text = ScaleformMovieMethodAddParamFloat
  number34 = localValue2.z
  text(number34)
  text = EndScaleformMovieMethod
  text()
end

-- === HELPER FUNCTION (decompiler name: number27; parameters: localValue1) ===
function number27(localValue1)
  local localValue2, text, number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue
  localValue2 = GetEntityModel
  text = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(text)
  text = GetLabelText
  number34 = GetDisplayNameFromVehicleModel
  number36 = localValue2
  number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue = number34(number36)
  text = text(number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue)
  number34 = CMG
  number34 = number34.getFlatLicensePlate
  number36 = GetVehicleNumberPlateText
  number38 = localValue1
  number36, number38, number40, mathHelper, number43, workingValue3, workingValue = number36(number38)
  number34 = number34(number36, number38, number40, mathHelper, number43, workingValue3, workingValue)
  number36 = CMG
  number36 = number36.DrawText
  number38 = 0.45
  number40 = 0.9
  mathHelper = "Model: "
  number43 = text
  workingValue3 = [[

Plate: ]]
  workingValue = number34
  mathHelper = mathHelper .. number43 .. workingValue3 .. workingValue
  number43 = 0.55
  number36(number38, number40, mathHelper, number43)
end

-- === HELPER FUNCTION (decompiler name: number28; parameters: none) ===
function number28()
  local localValue1, localValue2, text, number34, number36
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  text = "BEEP_GREEN"
  number34 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
  number36 = true
  localValue1(localValue2, text, number34, number36)
  localValue1 = Citizen
  localValue1 = localValue1.Wait
  localValue2 = 2000
  localValue1(localValue2)
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  text = "BEEP_GREEN"
  number34 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
  number36 = true
  localValue1(localValue2, text, number34, number36)
end
number29 = 0

-- === HELPER FUNCTION (decompiler name: number30; parameters: localValue1, localValue2) ===
function number30(localValue1, localValue2)
  local text, number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle, playerPed
  text = GetCamCoord
  number34 = localValue1
  text = text(number34)
  number34 = GetEntityCoords
  number36 = localValue2
  number38 = true
  -- Beginner: result below is entityCoords.
  number34 = number34(number36, number38)
  number36 = _ENV
  number38 = "StartExpensiveSynchronousShapeTestLosProbe"
  number36 = number36[number38]
  number38 = text.x
  number40 = text.y
  mathHelper = text.z
  number43 = number34.x
  workingValue3 = number34.y
  workingValue = number34.z
  workingValue2 = 1
  vehicle = localValue2
  playerPed = 4
  number36 = number36(number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle, playerPed)
  number38 = GetShapeTestResult
  number40 = number36
  number38, number40 = number38(number40)
  if 0 == number40 then
    mathHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    mathHelper = mathHelper()
    number29 = mathHelper
    mathHelper = true
    return mathHelper
  else
    mathHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    mathHelper = mathHelper()
    number43 = number29
    mathHelper = mathHelper - number43
    number43 = 500
    mathHelper = mathHelper <= number43
    if not mathHelper then
      number43 = notify
      workingValue3 = "~r~Lost line of sight to vehicle, tracking deactivated."
      -- Beginner: Show a notification to the player.
      number43(workingValue3)
    end
    return mathHelper
  end
end

-- === HELPER FUNCTION (decompiler name: number31; parameters: none) ===
function number31()
  local localValue1, localValue2, text, number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle, playerPed, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, number10, number12, number14, number16, number18, number20, number22, number24
  while true do
    localValue1 = stateFlag2
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      localValue2 = CMG
      localValue2 = localValue2.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      localValue2 = localValue2()
      text = number5
      number34 = localValue2
      text = text(number34)
      if text then
        text = IsControlJustPressed
        number34 = 0
        number36 = number37
        text = text(number34, number36)
        if text then
          text = GetEntityModel
          number34 = localValue2
          -- Beginner: result below is modelHash.
          text = text(number34)
          number34 = 1875232888 == text
          number36 = CMG
          number36 = number36.hasClientPermission
          number38 = "police.onduty.permission"
          number36 = number36(number38)
          if not number36 then
            number36 = CMG
            number36 = number36.hasClientPermission
            number38 = "nhs.onduty.permission"
            number36 = number36(number38)
            if not number36 then
              number36 = GetPedInVehicleSeat
              number38 = localValue2
              number40 = 0
              number36 = number36(number38, number40)
              number36 = CMG
              number36 = number36.hasClientSkill
              number38 = "vigilante_helicopter_thermals"
              number36 = number36 == localValue1 and (not number34 or number36)
            end
          end
          if number36 then
            number38 = PlaySoundFrontend
            number40 = -1
            mathHelper = "SELECT"
            number43 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            workingValue3 = false
            number38(number40, mathHelper, number43, workingValue3)
            number38 = true
            stateFlag3 = number38
          end
        end
        text = IsDisabledControlJustPressed
        number34 = 0
        number36 = number41
        text = text(number34, number36)
        if text then
          text = GetPedInVehicleSeat
          number34 = localValue2
          number36 = -1
          text = text(number34, number36)
          if text ~= localValue1 then
            text = GetPedInVehicleSeat
            number34 = localValue2
            number36 = 0
            text = text(number34, number36)
            if text ~= localValue1 then
              text = CMG
              text = text.isHandcuffed
              text = text()
              if not text then
                text = true
                stateFlag = text
                text = PlaySoundFrontend
                number34 = -1
                number36 = "SELECT"
                number38 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                number40 = false
                text(number34, number36, number38, number40)
                text = TaskRappelFromHeli
                number34 = localValue1
                number36 = 1
                text(number34, number36)
                text = Wait
                number34 = 1000
                text(number34)
                text = GetSoundId
                -- Beginner: result below is soundHandle.
                text = text()
                number34 = PlaySoundFrontend
                number36 = text
                number38 = "Rappel_Loop"
                number40 = "GTAO_Rappel_Sounds"
                mathHelper = true
                number34(number36, number38, number40, mathHelper)
                while true do
                  number34 = GetIsTaskActive
                  number36 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  number36 = number36()
                  number38 = 49
                  number34 = number34(number36, number38)
                  if not number34 then
                    number34 = GetIsTaskActive
                    number36 = PlayerPedId
                    -- Beginner: result below is localPlayerPed.
                    number36 = number36()
                    number38 = 67
                    number34 = number34(number36, number38)
                    if not number34 then
                      break
                    end
                  end
                  number34 = Wait
                  number36 = 0
                  number34(number36)
                end
                number34 = StopSound
                number36 = text
                number34(number36)
                number34 = ReleaseSoundId
                number36 = text
                number34(number36)
                number34 = GetSoundId
                -- Beginner: result below is soundHandle.
                number34 = number34()
                number36 = PlaySoundFrontend
                number38 = number34
                number40 = "Rappel_Land"
                mathHelper = "GTAO_Rappel_Sounds"
                number43 = true
                number36(number38, number40, mathHelper, number43)
                number36 = Wait
                number38 = 1000
                number36(number38)
                number36 = ReleaseSoundId
                number38 = number34
                number36(number38)
                number36 = ClearPedTasks
                number38 = PlayerPedId
                number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle, playerPed, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, number10, number12, number14, number16, number18, number20, number22, number24 = number38()
                number36(number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle, playerPed, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, number10, number12, number14, number16, number18, number20, number22, number24)
                number36 = ClearPedTasksImmediately
                number38 = PlayerPedId
                number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle, playerPed, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, number10, number12, number14, number16, number18, number20, number22, number24 = number38()
                number36(number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle, playerPed, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, number10, number12, number14, number16, number18, number20, number22, number24)
              end
            end
          end
        end
      end
    end
    localValue1 = stateFlag3
    if localValue1 then
      localValue1 = SetTimecycleModifier
      localValue2 = "heliGunCam"
      localValue1(localValue2)
      localValue1 = SetTimecycleModifierStrength
      localValue2 = 0.3
      localValue1(localValue2)
      localValue1 = RequestScaleformMovie
      localValue2 = "WESCAM_INTERFACE"
      -- Beginner: result below is scaleformHandle.
      localValue1 = localValue1(localValue2)
      number2 = localValue1
      while true do
        localValue1 = HasScaleformMovieLoaded
        localValue2 = number2
        localValue1 = localValue1(localValue2)
        if localValue1 then
          break
        end
        localValue1 = Citizen
        localValue1 = localValue1.Wait
        localValue2 = 0
        localValue1(localValue2)
      end
      localValue1 = GetLocalTime
      localValue1, localValue2, text, number34, number36, number38 = localValue1()
      number40 = BeginScaleformMovieMethod
      mathHelper = number2
      number43 = "SET_DATE"
      number40(mathHelper, number43)
      number40 = ScaleformMovieMethodAddParamInt
      mathHelper = text
      number40(mathHelper)
      number40 = ScaleformMovieMethodAddParamInt
      mathHelper = localValue2
      number40(mathHelper)
      number40 = ScaleformMovieMethodAddParamInt
      mathHelper = localValue1
      number40(mathHelper)
      number40 = EndScaleformMovieMethod
      number40()
      number40 = CMG
      number40 = number40.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      number40 = number40()
      mathHelper = CMG
      mathHelper = mathHelper.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      mathHelper = mathHelper()
      number43 = CreateCam
      workingValue3 = "DEFAULT_SCRIPTED_FLY_CAMERA"
      workingValue = true
      -- Beginner: result below is cameraHandle.
      number43 = number43(workingValue3, workingValue)
      workingValue3 = CMG
      workingValue3 = workingValue3.hideAllDisplays
      workingValue = "heli"
      workingValue3(workingValue)
      workingValue3 = AttachCamToEntity
      workingValue = number43
      workingValue2 = mathHelper
      vehicle = 0.0
      playerPed = 0.0
      stateFlag5 = -2.0
      stateFlag6 = true
      workingValue3(workingValue, workingValue2, vehicle, playerPed, stateFlag5, stateFlag6)
      workingValue3 = SetCamRot
      workingValue = number43
      workingValue2 = 0.0
      vehicle = 0.0
      playerPed = GetEntityHeading
      stateFlag5 = mathHelper
      -- Beginner: result below is heading.
      playerPed = playerPed(stateFlag5)
      stateFlag5 = 2
      workingValue3(workingValue, workingValue2, vehicle, playerPed, stateFlag5)
      workingValue3 = SetCamFov
      workingValue = number43
      workingValue2 = cmgOperation
      workingValue3(workingValue, workingValue2)
      workingValue3 = RenderScriptCams
      workingValue = true
      workingValue2 = false
      vehicle = 0
      playerPed = true
      stateFlag5 = false
      workingValue3(workingValue, workingValue2, vehicle, playerPed, stateFlag5)
      workingValue3 = nil
      workingValue = 0
      while true do
        workingValue2 = stateFlag3
        if not workingValue2 then
          break
        end
        workingValue2 = IsEntityDead
        vehicle = number40
        workingValue2 = workingValue2(vehicle)
        if workingValue2 then
          break
        end
        workingValue2 = GetVehiclePedIsIn
        vehicle = number40
        playerPed = false
        -- Beginner: result below is currentVehicle.
        workingValue2 = workingValue2(vehicle, playerPed)
        if workingValue2 ~= mathHelper then
          break
        end
        workingValue2 = number5
        vehicle = mathHelper
        workingValue2 = workingValue2(vehicle)
        if not workingValue2 then
          break
        end
        workingValue2 = IsDisabledControlJustPressed
        vehicle = 0
        playerPed = number37
        workingValue2 = workingValue2(vehicle, playerPed)
        if workingValue2 then
          workingValue2 = PlaySoundFrontend
          vehicle = -1
          playerPed = "SELECT"
          stateFlag5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          stateFlag6 = false
          workingValue2(vehicle, playerPed, stateFlag5, stateFlag6)
          workingValue2 = false
          stateFlag3 = workingValue2
        end
        workingValue2 = IsDisabledControlJustPressed
        vehicle = 0
        playerPed = number39
        workingValue2 = workingValue2(vehicle, playerPed)
        if workingValue2 then
          workingValue2 = PlaySoundFrontend
          vehicle = -1
          playerPed = "SELECT"
          stateFlag5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          stateFlag6 = false
          workingValue2(vehicle, playerPed, stateFlag5, stateFlag6)
          workingValue2 = number7
          workingValue2()
        end
        workingValue2 = 0.0
        if workingValue3 then
          vehicle = DoesEntityExist
          playerPed = workingValue3
          vehicle = vehicle(playerPed)
          if vehicle then
            vehicle = PointCamAtEntity
            playerPed = number43
            stateFlag5 = workingValue3
            stateFlag6 = 0.0
            stateFlag7 = 0.0
            stateFlag8 = 0.0
            stateFlag9 = true
            vehicle(playerPed, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9)
            vehicle = number27
            playerPed = workingValue3
            vehicle(playerPed)
            vehicle = IsControlJustPressed
            playerPed = 0
            stateFlag5 = number44
            vehicle = vehicle(playerPed, stateFlag5)
            if not vehicle then
              vehicle = number30
              playerPed = number43
              stateFlag5 = workingValue3
              vehicle = vehicle(playerPed, stateFlag5)
              if vehicle then
                goto continueAtStep369
              end
            end
            vehicle = PlaySoundFrontend
            playerPed = -1
            stateFlag5 = "SELECT"
            stateFlag6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            stateFlag7 = false
            vehicle(playerPed, stateFlag5, stateFlag6, stateFlag7)
            workingValue3 = nil
            vehicle = GetCamRot
            playerPed = number43
            stateFlag5 = 2
            vehicle = vehicle(playerPed, stateFlag5)
            playerPed = GetCamFov
            stateFlag5 = number43
            playerPed = playerPed(stateFlag5)
            stateFlag5 = number43
            stateFlag6 = DestroyCam
            stateFlag7 = stateFlag5
            stateFlag8 = false
            stateFlag6(stateFlag7, stateFlag8)
            stateFlag6 = CreateCam
            stateFlag7 = "DEFAULT_SCRIPTED_FLY_CAMERA"
            stateFlag8 = true
            -- Beginner: result below is cameraHandle.
            stateFlag6 = stateFlag6(stateFlag7, stateFlag8)
            number43 = stateFlag6
            stateFlag6 = AttachCamToEntity
            stateFlag7 = number43
            stateFlag8 = mathHelper
            stateFlag9 = 0.0
            stateFlag10 = 0.0
            stateFlag11 = -1.5
            stateFlag12 = true
            stateFlag6(stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12)
            stateFlag6 = SetCamRot
            stateFlag7 = number43
            stateFlag8 = vehicle.x
            stateFlag9 = vehicle.y
            stateFlag10 = vehicle.z
            stateFlag11 = 2
            stateFlag6(stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11)
            stateFlag6 = SetCamFov
            stateFlag7 = number43
            stateFlag8 = playerPed
            stateFlag6(stateFlag7, stateFlag8)
            stateFlag6 = RenderScriptCams
            stateFlag7 = true
            stateFlag8 = false
            stateFlag9 = 0
            stateFlag10 = true
            stateFlag11 = false
            stateFlag6(stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11)
            ::continueAtStep369::
            vehicle = number19
            playerPed = mathHelper
            stateFlag5 = workingValue3
            vehicle(playerPed, stateFlag5)
          else
            workingValue3 = nil
          end
        else
          vehicle = number
          playerPed = number6
          vehicle = vehicle - playerPed
          playerPed = 1.0
          vehicle = playerPed / vehicle
          playerPed = cmgOperation
          stateFlag5 = number6
          playerPed = playerPed - stateFlag5
          workingValue2 = vehicle * playerPed
          vehicle = number9
          playerPed = number43
          stateFlag5 = workingValue2
          vehicle(playerPed, stateFlag5)
          vehicle = number15
          playerPed = number43
          vehicle = vehicle(playerPed)
          if vehicle then
            playerPed = DoesEntityExist
            stateFlag5 = vehicle
            playerPed = playerPed(stateFlag5)
            if playerPed then
              playerPed = number27
              stateFlag5 = vehicle
              playerPed(stateFlag5)
              playerPed = IsControlJustPressed
              stateFlag5 = 0
              stateFlag6 = number44
              playerPed = playerPed(stateFlag5, stateFlag6)
              if playerPed then
                playerPed = PlaySoundFrontend
                stateFlag5 = -1
                stateFlag6 = "SELECT"
                stateFlag7 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                stateFlag8 = false
                playerPed(stateFlag5, stateFlag6, stateFlag7, stateFlag8)
                playerPed = CMG
                playerPed = playerPed.isVehicleFlagged
                stateFlag5 = vehicle
                playerPed = playerPed(stateFlag5)
                if playerPed then
                  playerPed = Citizen
                  playerPed = playerPed.CreateThread
                  stateFlag5 = number28
                  -- Beginner: Start a separate FiveM thread so this code can run independently.
                  playerPed(stateFlag5)
                end
                workingValue3 = vehicle
              end
            end
          end
          playerPed = number21
          stateFlag5 = number43
          playerPed(stateFlag5)
        end
        vehicle = IsControlJustPressed
        playerPed = 0
        stateFlag5 = number42
        vehicle = vehicle(playerPed, stateFlag5)
        if vehicle then
          vehicle = stateFlag4
          vehicle = not vehicle
          stateFlag4 = vehicle
        end
        vehicle = stateFlag4
        if vehicle then
          vehicle = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          vehicle = vehicle()
          playerPed = CMG
          playerPed = playerPed.rotationToDirection
          stateFlag5 = GetCamRot
          stateFlag6 = number43
          stateFlag7 = 2
          stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, number10, number12, number14, number16, number18, number20, number22, number24 = stateFlag5(stateFlag6, stateFlag7)
          playerPed = playerPed(stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, number10, number12, number14, number16, number18, number20, number22, number24)
          stateFlag5 = number3
          stateFlag5 = vehicle - stateFlag5
          stateFlag6 = 500
          if stateFlag5 >= stateFlag6 then
            stateFlag5 = GetEntityCoords
            stateFlag6 = mathHelper
            stateFlag7 = true
            -- Beginner: result below is entityCoords.
            stateFlag5 = stateFlag5(stateFlag6, stateFlag7)
            stateFlag6 = playerPed * 500.0
            stateFlag5 = stateFlag5 + stateFlag6
            stateFlag6 = TriggerServerEvent
            stateFlag7 = "9c20140c50"
            stateFlag8 = stateFlag5
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c20140c50".
            stateFlag6(stateFlag7, stateFlag8)
            number3 = vehicle
          end
          stateFlag5 = GetEntityCoords
          stateFlag6 = mathHelper
          stateFlag7 = true
          -- Beginner: result below is entityCoords.
          stateFlag5 = stateFlag5(stateFlag6, stateFlag7)
          stateFlag6 = DrawSpotLight
          stateFlag7 = stateFlag5.x
          stateFlag8 = stateFlag5.y
          stateFlag9 = stateFlag5.z
          stateFlag10 = playerPed.x
          stateFlag11 = playerPed.y
          stateFlag12 = playerPed.z
          number10 = 255
          number12 = 255
          number14 = 255
          number16 = 500.0
          number18 = 20.0
          number20 = 5.0
          number22 = 15.0
          number24 = 50.0
          stateFlag6(stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, number10, number12, number14, number16, number18, number20, number22, number24)
        end
        vehicle = number11
        playerPed = number43
        vehicle(playerPed)
        vehicle = number8
        vehicle()
        vehicle = GetLocalTime
        vehicle, playerPed, stateFlag5, stateFlag6, stateFlag7, stateFlag8 = vehicle()
        number38 = stateFlag8
        number36 = stateFlag7
        number34 = stateFlag6
        text = stateFlag5
        localValue2 = playerPed
        localValue1 = vehicle
        if number38 ~= workingValue then
          vehicle = BeginScaleformMovieMethod
          playerPed = number2
          stateFlag5 = "SET_TIME"
          vehicle(playerPed, stateFlag5)
          vehicle = ScaleformMovieMethodAddParamInt
          playerPed = number34
          vehicle(playerPed)
          vehicle = ScaleformMovieMethodAddParamInt
          playerPed = number36
          vehicle(playerPed)
          vehicle = ScaleformMovieMethodAddParamInt
          playerPed = number38
          vehicle(playerPed)
          vehicle = EndScaleformMovieMethod
          vehicle()
          workingValue = number38
        end
        vehicle = number23
        playerPed = mathHelper
        vehicle(playerPed)
        vehicle = number26
        playerPed = number43
        vehicle(playerPed)
        vehicle = DrawScaleformMovieFullscreen
        playerPed = number2
        stateFlag5 = 255
        stateFlag6 = 255
        stateFlag7 = 255
        stateFlag8 = 255
        stateFlag9 = 0
        vehicle(playerPed, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9)
        vehicle = Citizen
        vehicle = vehicle.Wait
        playerPed = 0
        vehicle(playerPed)
      end
      workingValue2 = false
      stateFlag3 = workingValue2
      workingValue2 = ClearTimecycleModifier
      workingValue2()
      workingValue2 = number
      vehicle = number6
      workingValue2 = workingValue2 + vehicle
      workingValue2 = workingValue2 * 0.5
      cmgOperation = workingValue2
      workingValue2 = RenderScriptCams
      vehicle = false
      playerPed = false
      stateFlag5 = 0
      stateFlag6 = true
      stateFlag7 = false
      workingValue2(vehicle, playerPed, stateFlag5, stateFlag6, stateFlag7)
      workingValue2 = SetScaleformMovieAsNoLongerNeeded
      vehicle = number2
      workingValue2(vehicle)
      workingValue2 = DestroyCam
      vehicle = number43
      playerPed = false
      workingValue2(vehicle, playerPed)
      workingValue2 = SetNightvision
      vehicle = false
      workingValue2(vehicle)
      workingValue2 = SetSeethrough
      vehicle = false
      workingValue2(vehicle)
      workingValue2 = CMG
      workingValue2 = workingValue2.showAllDisplays
      vehicle = "heli"
      workingValue2(vehicle)
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread
eventHandler = number31
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(eventHandler)
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, text, number34, number36, number38
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = GetVehiclePedIsIn
    text = localValue1
    number34 = false
    -- Beginner: result below is currentVehicle.
    localValue2 = localValue2(text, number34)
    text = GetEntityModel
    number34 = localValue2
    -- Beginner: result below is modelHash.
    text = text(number34)
    number34 = table
    number34 = number34.has
    number36 = dataCollection
    number38 = text
    number34 = number34(number36, number38)
    if number34 then
      number34 = true
      stateFlag2 = number34
    else
      number34 = false
      stateFlag2 = number34
    end
    number34 = Wait
    number36 = 1000
    number34(number36)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(eventHandler)
backgroundThread = {}
eventHandler = RegisterNetEvent
cmgOperation2 = "9c20140c50"
-- Beginner: this function handles network event "9c20140c50".

-- === HELPER FUNCTION (decompiler name: number32; parameters: localValue1, localValue2) ===
function number32(localValue1, localValue2)
  local text, number34, number36, number38, number40, mathHelper, number43
  text = GetPlayerFromServerId
  number34 = localValue1
  -- Beginner: result below is playerIndex.
  text = text(number34)
  if -1 == text then
    return
  end
  number34 = GetPlayerPed
  number36 = text
  -- Beginner: result below is playerPed.
  number34 = number34(number36)
  if 0 ~= number34 then
    number36 = CMG
    number36 = number36.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    number36 = number36()
    if number34 ~= number36 then
      goto continueAtStep18
    end
  end
  return
  ::continueAtStep18::
  number36 = GetVehiclePedIsUsing
  number38 = number34
  number36 = number36(number38)
  if 0 == number36 then
    return
  end
  number38 = backgroundThread
  number38 = number38[localValue1]
  if not number38 then
    number40 = {}
    number40.vehicle = number36
    number40.currentPosition = localValue2
    mathHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    mathHelper = mathHelper()
    number40.currentTime = mathHelper
    number38 = number40
    number40 = backgroundThread
    number40[localValue1] = number38
  end
  number40 = number38.currentPosition
  number38.previousPosition = number40
  number40 = number38.currentTime
  number38.previousTime = number40
  number38.currentPosition = localValue2
  number40 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  number40 = number40()
  number38.currentTime = number40
  number40 = GetEntityCoords
  mathHelper = number36
  number43 = true
  -- Beginner: result below is entityCoords.
  number40 = number40(mathHelper, number43)
  number38.heliPosition = number40
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9c20140c50".
eventHandler(cmgOperation2, number32)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, text, number34, number36, number38, number40, mathHelper, number43, workingValue3, workingValue, workingValue2, vehicle, playerPed, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, number10, number12, number14, number16, number18, number20
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue2 = pairs
  text = backgroundThread
  localValue2, text, number34, number36 = localValue2(text)
  for number38, number40 in localValue2, text, number34, number36 do
    mathHelper = number40.currentTime
    number43 = number40.previousTime
    mathHelper = mathHelper - number43
    number43 = number40.currentTime
    number43 = localValue1 - number43
    number43 = number43 / mathHelper
    workingValue3 = number40.currentPosition
    workingValue = GetEntityCoords
    workingValue2 = number40.vehicle
    vehicle = true
    -- Beginner: result below is entityCoords.
    workingValue = workingValue(workingValue2, vehicle)
    workingValue2 = number40.heliPosition
    workingValue = workingValue - workingValue2
    workingValue3 = workingValue3 + workingValue
    workingValue = number40.previousPosition
    workingValue = workingValue3 - workingValue
    workingValue2 = number40.previousPosition
    vehicle = workingValue * number43
    workingValue2 = workingValue2 + vehicle
    vehicle = norm
    playerPed = number40.heliPosition
    playerPed = workingValue2 - playerPed
    vehicle = vehicle(playerPed)
    playerPed = DrawSpotLight
    stateFlag5 = number40.heliPosition
    stateFlag5 = stateFlag5.x
    stateFlag6 = number40.heliPosition
    stateFlag6 = stateFlag6.y
    stateFlag7 = number40.heliPosition
    stateFlag7 = stateFlag7.z
    stateFlag8 = vehicle.x
    stateFlag9 = vehicle.y
    stateFlag10 = vehicle.z
    stateFlag11 = 255
    stateFlag12 = 255
    number10 = 255
    number12 = 500.0
    number14 = 20.0
    number16 = 5.0
    number18 = 15.0
    number20 = 50.0
    playerPed(stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, number10, number12, number14, number16, number18, number20)
    playerPed = number40.currentTime
    playerPed = localValue1 - playerPed
    stateFlag5 = 1250
    if playerPed > stateFlag5 then
      playerPed = backgroundThread
      playerPed[number38] = nil
    end
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
number32 = eventHandler
text2 = "Interpolate Spotlight"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(number32, text2)
