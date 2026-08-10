--[[
    Beginner Guide: cl_heli.lua
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
    BEGINNER GUIDE — Heli
    =====================

    File: cmg/prod/client/police/cl_heli.lua
    Purpose: This file contains police gameplay.

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

    Network/hash identifiers found: 1
      They are intentionally left unchanged because matching server code may use them.
      * 9c20140c50

]]
local numberValue, numberValue6, numberValue25, numberValue33, numberValue35, numberValue37, numberValue39, numberValue41, numberValue42, numberValue44, flag, flag2, flag3, numberValue2, flag4, numberValue3, dataTable, cmgCall, numberValue4, numberValue5, numberValue7, numberValue8, numberValue9, numberValue11, numberValue13, numberValue15, numberValue17, numberValue19, numberValue21, numberValue23, numberValue26, numberValue27, numberValue28, numberValue29, numberValue30, numberValue31, threadCall, eventRegistration, cmgCall2, numberValue32, textValue2
numberValue = 80.0
numberValue6 = 10.0
numberValue25 = 7.0
numberValue33 = 7.0
numberValue35 = 7.0
numberValue37 = 51
numberValue39 = 25
numberValue41 = 154
numberValue42 = 74
numberValue44 = 22
flag = false
flag2 = false
flag3 = false
numberValue2 = 0
flag4 = false
numberValue3 = 0
dataTable = {}
cmgCall = 837858166
numberValue4 = -1572900542
numberValue5 = 1457987098
numberValue7 = 1783593694
numberValue8 = 903317905
numberValue9 = 895755432
numberValue11 = -1519555388
numberValue13 = -1634501443
numberValue15 = -1758441398
numberValue17 = 353883353
numberValue19 = -877280795
numberValue21 = -16554230
numberValue23 = 1790592407
numberValue26 = 1729276197
numberValue27 = 465590640
numberValue28 = 263279933
numberValue29 = -93312325
numberValue30 = -1159615601
numberValue31 = -1504773962
threadCall = -1412094181
eventRegistration = 1875232888
cmgCall2 = 1418659670
numberValue32 = 295054921
dataTable[1] = cmgCall
dataTable[2] = numberValue4
dataTable[3] = numberValue5
dataTable[4] = numberValue7
dataTable[5] = numberValue8
dataTable[6] = numberValue9
dataTable[7] = numberValue11
dataTable[8] = numberValue13
dataTable[9] = numberValue15
dataTable[10] = numberValue17
dataTable[11] = numberValue19
dataTable[12] = numberValue21
dataTable[13] = numberValue23
dataTable[14] = numberValue26
dataTable[15] = numberValue27
dataTable[16] = numberValue28
dataTable[17] = numberValue29
dataTable[18] = numberValue30
dataTable[19] = numberValue31
dataTable[20] = threadCall
dataTable[21] = eventRegistration
dataTable[22] = cmgCall2
dataTable[23] = numberValue32
cmgCall = CMG
function numberValue4()
  local arg1, arg2
  arg1 = flag
  return arg1
end
cmgCall.isPlayerRappeling = numberValue4
cmgCall = CMG
function numberValue4()
  local arg1, arg2
  arg1 = flag2
  return arg1
end
cmgCall.isPlayerInPoliceHeli = numberValue4
cmgCall = numberValue + numberValue6
cmgCall = cmgCall * 0.5
numberValue4 = 0
function numberValue5(arg1)
  local arg2, textValue
  arg2 = GetEntityHeightAboveGround
  textValue = arg1
  arg2 = arg2(textValue)
  textValue = 1.5
  arg2 = arg2 > textValue
  return arg2
end
function numberValue7()
  local arg1, arg2, textValue
  arg1 = BeginScaleformMovieMethod
  arg2 = numberValue2
  textValue = "SET_CAMERA_TYPE"
  arg1(arg2, textValue)
  arg1 = numberValue4
  if 0 == arg1 then
    arg1 = SetNightvision
    arg2 = true
    arg1(arg2)
    arg1 = 1
    numberValue4 = arg1
    arg1 = ScaleformMovieMethodAddParamInt
    arg2 = 3
    arg1(arg2)
  else
    arg1 = numberValue4
    if 1 == arg1 then
      arg1 = SetNightvision
      arg2 = false
      arg1(arg2)
      arg1 = SetSeethrough
      arg2 = true
      arg1(arg2)
      arg1 = 2
      numberValue4 = arg1
      arg1 = ScaleformMovieMethodAddParamInt
      arg2 = 2
      arg1(arg2)
    else
      arg1 = SetSeethrough
      arg2 = false
      arg1(arg2)
      arg1 = 0
      numberValue4 = arg1
      arg1 = ScaleformMovieMethodAddParamInt
      arg2 = 1
      arg1(arg2)
    end
  end
  arg1 = EndScaleformMovieMethod
  arg1()
end
function numberValue8()
  local arg1, arg2
  arg1 = HideHelpTextThisFrame
  arg1()
  arg1 = HideHudAndRadarThisFrame
  arg1()
  arg1 = HideHudComponentThisFrame
  arg2 = 19
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 1
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 2
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 3
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 4
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 13
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 11
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 12
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 15
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 18
  arg1(arg2)
end
function numberValue9(arg1, arg2)
  local textValue, numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle
  textValue = GetDisabledControlNormal
  numberValue34 = 0
  numberValue36 = 220
  textValue = textValue(numberValue34, numberValue36)
  numberValue34 = GetDisabledControlNormal
  numberValue36 = 0
  numberValue38 = 221
  numberValue34 = numberValue34(numberValue36, numberValue38)
  numberValue36 = GetCamRot
  numberValue38 = arg1
  numberValue40 = 2
  numberValue36 = numberValue36(numberValue38, numberValue40)
  if 0.0 ~= textValue or 0.0 ~= numberValue34 then
    numberValue38 = numberValue36.z
    numberValue40 = textValue * -1.0
    mathHelper = numberValue35
    numberValue40 = numberValue40 * mathHelper
    mathHelper = arg2 + 0.1
    numberValue40 = numberValue40 * mathHelper
    numberValue38 = numberValue38 + numberValue40
    numberValue40 = math
    numberValue40 = numberValue40.max
    mathHelper = math
    mathHelper = mathHelper.min
    numberValue43 = 20.0
    workValue3 = numberValue36.x
    workValue = numberValue34 * -1.0
    workValue2 = numberValue33
    workValue = workValue * workValue2
    workValue2 = arg2 + 0.1
    workValue = workValue * workValue2
    workValue3 = workValue3 + workValue
    mathHelper = mathHelper(numberValue43, workValue3)
    numberValue43 = -89.5
    numberValue40 = numberValue40(mathHelper, numberValue43)
    mathHelper = SetCamRot
    numberValue43 = arg1
    workValue3 = numberValue40
    workValue = 0.0
    workValue2 = numberValue38
    vehicle = 2
    mathHelper(numberValue43, workValue3, workValue, workValue2, vehicle)
  end
end
function numberValue11(arg1)
  local arg2, textValue, numberValue34, numberValue36
  arg2 = IsControlJustPressed
  textValue = 0
  numberValue34 = 241
  arg2 = arg2(textValue, numberValue34)
  if arg2 then
    arg2 = math
    arg2 = arg2.max
    textValue = cmgCall
    numberValue34 = numberValue25
    textValue = textValue - numberValue34
    numberValue34 = numberValue6
    arg2 = arg2(textValue, numberValue34)
    cmgCall = arg2
  end
  arg2 = IsControlJustPressed
  textValue = 0
  numberValue34 = 242
  arg2 = arg2(textValue, numberValue34)
  if arg2 then
    arg2 = math
    arg2 = arg2.min
    textValue = cmgCall
    numberValue34 = numberValue25
    textValue = textValue + numberValue34
    numberValue34 = numberValue
    arg2 = arg2(textValue, numberValue34)
    cmgCall = arg2
  end
  arg2 = GetCamFov
  textValue = arg1
  arg2 = arg2(textValue)
  textValue = math
  textValue = textValue.abs
  numberValue34 = cmgCall
  numberValue34 = numberValue34 - arg2
  textValue = textValue(numberValue34)
  numberValue34 = 0.1
  if textValue < numberValue34 then
    cmgCall = arg2
  end
  textValue = SetCamFov
  numberValue34 = arg1
  numberValue36 = cmgCall
  numberValue36 = numberValue36 - arg2
  numberValue36 = numberValue36 * 0.05
  numberValue36 = arg2 + numberValue36
  textValue(numberValue34, numberValue36)
end
function numberValue13(arg1)
  local arg2, textValue, numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43
  arg2 = math
  arg2 = arg2.rad
  textValue = arg1.z
  arg2 = arg2(textValue)
  textValue = math
  textValue = textValue.rad
  numberValue34 = arg1.x
  textValue = textValue(numberValue34)
  numberValue34 = math
  numberValue34 = numberValue34.abs
  numberValue36 = math
  numberValue36 = numberValue36.cos
  numberValue38 = textValue
  numberValue36, numberValue38, numberValue40, mathHelper, numberValue43 = numberValue36(numberValue38)
  numberValue34 = numberValue34(numberValue36, numberValue38, numberValue40, mathHelper, numberValue43)
  numberValue36 = vector3
  numberValue38 = math
  numberValue38 = numberValue38.sin
  numberValue40 = arg2
  numberValue38 = numberValue38(numberValue40)
  numberValue38 = -numberValue38
  numberValue38 = numberValue38 * numberValue34
  numberValue40 = math
  numberValue40 = numberValue40.cos
  mathHelper = arg2
  numberValue40 = numberValue40(mathHelper)
  numberValue40 = numberValue40 * numberValue34
  mathHelper = math
  mathHelper = mathHelper.sin
  numberValue43 = textValue
  mathHelper, numberValue43 = mathHelper(numberValue43)
  return numberValue36(numberValue38, numberValue40, mathHelper, numberValue43)
end
function numberValue15(arg1)
  local arg2, textValue, numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle, playerPed, flag5
  arg2 = GetCamCoord
  textValue = arg1
  arg2 = arg2(textValue)
  textValue = numberValue13
  numberValue34 = GetCamRot
  numberValue36 = arg1
  numberValue38 = 2
  numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle, playerPed, flag5 = numberValue34(numberValue36, numberValue38)
  textValue = textValue(numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle, playerPed, flag5)
  numberValue34 = textValue * 200.0
  numberValue34 = arg2 + numberValue34
  numberValue36 = _ENV
  numberValue38 = "StartExpensiveSynchronousShapeTestLosProbe"
  numberValue36 = numberValue36[numberValue38]
  numberValue38 = arg2.x
  numberValue40 = arg2.y
  mathHelper = arg2.z
  numberValue43 = numberValue34.x
  workValue3 = numberValue34.y
  workValue = numberValue34.z
  workValue2 = 10
  vehicle = GetVehiclePedIsIn
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  flag5 = false
  -- Beginner: result below is currentVehicle.
  vehicle = vehicle(playerPed, flag5)
  playerPed = 0
  numberValue36 = numberValue36(numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle, playerPed)
  numberValue38 = GetShapeTestResult
  numberValue40 = numberValue36
  numberValue38, numberValue40, mathHelper, numberValue43, workValue3 = numberValue38(numberValue40)
  if workValue3 > 0 then
    workValue = IsEntityAVehicle
    workValue2 = workValue3
    workValue = workValue(workValue2)
    if workValue then
      return workValue3
  end
  else
    workValue = nil
    return workValue
  end
end
function numberValue17(arg1)
  local arg2, textValue, numberValue34, numberValue36
  arg1 = arg1 + 2000
  arg2 = math
  arg2 = arg2.floor
  textValue = arg1 / 40
  arg2 = arg2(textValue)
  arg1 = arg2
  arg2 = math
  arg2 = arg2.max
  textValue = math
  textValue = textValue.min
  numberValue34 = arg1
  numberValue36 = 99
  textValue = textValue(numberValue34, numberValue36)
  numberValue34 = 0
  return arg2(textValue, numberValue34)
end
function numberValue19(arg1, arg2)
  local textValue, numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3
  textValue = math
  textValue = textValue.floor
  numberValue34 = GetEntityHeading
  numberValue36 = arg2
  numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3 = numberValue34(numberValue36)
  textValue = textValue(numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3)
  numberValue34 = GetEntityCoords
  numberValue36 = arg2
  numberValue38 = true
  -- Beginner: result below is entityCoords.
  numberValue34 = numberValue34(numberValue36, numberValue38)
  numberValue36 = math
  numberValue36 = numberValue36.floor
  numberValue38 = numberValue34.z
  numberValue38 = numberValue38 * 3.28084
  numberValue36 = numberValue36(numberValue38)
  numberValue38 = GetEntityCoords
  numberValue40 = arg1
  mathHelper = true
  -- Beginner: result below is entityCoords.
  numberValue38 = numberValue38(numberValue40, mathHelper)
  numberValue40 = math
  numberValue40 = numberValue40.floor
  mathHelper = numberValue34 - numberValue38
  mathHelper = #mathHelper
  numberValue40 = numberValue40(mathHelper)
  mathHelper = BeginScaleformMovieMethod
  numberValue43 = numberValue2
  workValue3 = "SET_TARGET_INFORMATION"
  mathHelper(numberValue43, workValue3)
  mathHelper = ScaleformMovieMethodAddParamInt
  numberValue43 = numberValue17
  workValue3 = numberValue34.x
  numberValue43, workValue3 = numberValue43(workValue3)
  mathHelper(numberValue43, workValue3)
  mathHelper = ScaleformMovieMethodAddParamInt
  numberValue43 = numberValue17
  workValue3 = numberValue34.y
  numberValue43, workValue3 = numberValue43(workValue3)
  mathHelper(numberValue43, workValue3)
  mathHelper = ScaleformMovieMethodAddParamInt
  numberValue43 = textValue
  mathHelper(numberValue43)
  mathHelper = ScaleformMovieMethodAddParamInt
  numberValue43 = numberValue36
  mathHelper(numberValue43)
  mathHelper = ScaleformMovieMethodAddParamInt
  numberValue43 = numberValue40
  mathHelper(numberValue43)
  mathHelper = EndScaleformMovieMethod
  mathHelper()
end
function numberValue21(arg1)
  local arg2, textValue, numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle
  arg2 = GetCamCoord
  textValue = arg1
  arg2 = arg2(textValue)
  textValue = CMG
  textValue = textValue.rotationToDirection
  numberValue34 = GetCamRot
  numberValue36 = arg1
  numberValue38 = 2
  numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle = numberValue34(numberValue36, numberValue38)
  textValue = textValue(numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle)
  textValue = textValue * 500.0
  textValue = arg2 + textValue
  numberValue34 = _ENV
  numberValue36 = "StartExpensiveSynchronousShapeTestLosProbe"
  numberValue34 = numberValue34[numberValue36]
  numberValue36 = arg2.x
  numberValue38 = arg2.y
  numberValue40 = arg2.z
  mathHelper = textValue.x
  numberValue43 = textValue.y
  workValue3 = textValue.z
  workValue = -1
  workValue2 = CMG
  workValue2 = workValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  workValue2 = workValue2()
  vehicle = 4
  numberValue34 = numberValue34(numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle)
  numberValue36 = GetShapeTestResult
  numberValue38 = numberValue34
  numberValue36, numberValue38, numberValue40 = numberValue36(numberValue38)
  if numberValue38 then
    mathHelper = BeginScaleformMovieMethod
    numberValue43 = numberValue2
    workValue3 = "SET_TARGET_INFORMATION"
    mathHelper(numberValue43, workValue3)
    mathHelper = ScaleformMovieMethodAddParamInt
    numberValue43 = numberValue17
    workValue3 = numberValue40.x
    numberValue43, workValue3, workValue, workValue2, vehicle = numberValue43(workValue3)
    mathHelper(numberValue43, workValue3, workValue, workValue2, vehicle)
    mathHelper = ScaleformMovieMethodAddParamInt
    numberValue43 = numberValue17
    workValue3 = numberValue40.y
    numberValue43, workValue3, workValue, workValue2, vehicle = numberValue43(workValue3)
    mathHelper(numberValue43, workValue3, workValue, workValue2, vehicle)
    mathHelper = ScaleformMovieMethodAddParamInt
    numberValue43 = math
    numberValue43 = numberValue43.floor
    workValue3 = GetHeadingFromVector_2d
    workValue = numberValue40.x
    workValue2 = arg2.x
    workValue = workValue - workValue2
    workValue2 = numberValue40.y
    vehicle = arg2.y
    workValue2 = workValue2 - vehicle
    workValue3, workValue, workValue2, vehicle = workValue3(workValue, workValue2)
    numberValue43 = numberValue43(workValue3, workValue, workValue2, vehicle)
    workValue3 = 360
    numberValue43 = workValue3 - numberValue43
    mathHelper(numberValue43)
    mathHelper = ScaleformMovieMethodAddParamInt
    numberValue43 = math
    numberValue43 = numberValue43.floor
    workValue3 = numberValue40.z
    workValue3 = workValue3 * 3.28084
    numberValue43, workValue3, workValue, workValue2, vehicle = numberValue43(workValue3)
    mathHelper(numberValue43, workValue3, workValue, workValue2, vehicle)
    mathHelper = ScaleformMovieMethodAddParamInt
    numberValue43 = math
    numberValue43 = numberValue43.floor
    workValue3 = arg2 - numberValue40
    workValue3 = #workValue3
    numberValue43, workValue3, workValue, workValue2, vehicle = numberValue43(workValue3)
    mathHelper(numberValue43, workValue3, workValue, workValue2, vehicle)
    mathHelper = EndScaleformMovieMethod
    mathHelper()
  end
end
function numberValue23(arg1)
  local arg2, textValue, numberValue34, numberValue36, numberValue38, numberValue40
  arg2 = math
  arg2 = arg2.floor
  textValue = GetEntityHeading
  numberValue34 = arg1
  textValue, numberValue34, numberValue36, numberValue38, numberValue40 = textValue(numberValue34)
  arg2 = arg2(textValue, numberValue34, numberValue36, numberValue38, numberValue40)
  textValue = GetEntityCoords
  numberValue34 = arg1
  numberValue36 = true
  -- Beginner: result below is entityCoords.
  textValue = textValue(numberValue34, numberValue36)
  numberValue34 = math
  numberValue34 = numberValue34.floor
  numberValue36 = textValue.z
  numberValue36 = numberValue36 * 3.28084
  numberValue34 = numberValue34(numberValue36)
  numberValue36 = BeginScaleformMovieMethod
  numberValue38 = numberValue2
  numberValue40 = "SET_AIRCRAFT_INFORMATION"
  numberValue36(numberValue38, numberValue40)
  numberValue36 = ScaleformMovieMethodAddParamInt
  numberValue38 = numberValue17
  numberValue40 = textValue.x
  numberValue38, numberValue40 = numberValue38(numberValue40)
  numberValue36(numberValue38, numberValue40)
  numberValue36 = ScaleformMovieMethodAddParamInt
  numberValue38 = numberValue17
  numberValue40 = textValue.y
  numberValue38, numberValue40 = numberValue38(numberValue40)
  numberValue36(numberValue38, numberValue40)
  numberValue36 = ScaleformMovieMethodAddParamInt
  numberValue38 = arg2
  numberValue36(numberValue38)
  numberValue36 = ScaleformMovieMethodAddParamInt
  numberValue38 = numberValue34
  numberValue36(numberValue38)
  numberValue36 = EndScaleformMovieMethod
  numberValue36()
end
function numberValue26(arg1)
  local arg2, textValue, numberValue34, numberValue36
  arg2 = GetCamRot
  textValue = arg1
  numberValue34 = 2
  arg2 = arg2(textValue, numberValue34)
  textValue = BeginScaleformMovieMethod
  numberValue34 = numberValue2
  numberValue36 = "SET_CAMERA_PITCH"
  textValue(numberValue34, numberValue36)
  textValue = ScaleformMovieMethodAddParamFloat
  numberValue34 = arg2.x
  textValue(numberValue34)
  textValue = EndScaleformMovieMethod
  textValue()
  textValue = BeginScaleformMovieMethod
  numberValue34 = numberValue2
  numberValue36 = "SET_CAMERA_HEADING"
  textValue(numberValue34, numberValue36)
  textValue = ScaleformMovieMethodAddParamFloat
  numberValue34 = arg2.z
  textValue(numberValue34)
  textValue = EndScaleformMovieMethod
  textValue()
end
function numberValue27(arg1)
  local arg2, textValue, numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue
  arg2 = GetEntityModel
  textValue = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(textValue)
  textValue = GetLabelText
  numberValue34 = GetDisplayNameFromVehicleModel
  numberValue36 = arg2
  numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue = numberValue34(numberValue36)
  textValue = textValue(numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue)
  numberValue34 = CMG
  numberValue34 = numberValue34.getFlatLicensePlate
  numberValue36 = GetVehicleNumberPlateText
  numberValue38 = arg1
  numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue = numberValue36(numberValue38)
  numberValue34 = numberValue34(numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue)
  numberValue36 = CMG
  numberValue36 = numberValue36.DrawText
  numberValue38 = 0.45
  numberValue40 = 0.9
  mathHelper = "Model: "
  numberValue43 = textValue
  workValue3 = [[

Plate: ]]
  workValue = numberValue34
  mathHelper = mathHelper .. numberValue43 .. workValue3 .. workValue
  numberValue43 = 0.55
  numberValue36(numberValue38, numberValue40, mathHelper, numberValue43)
end
function numberValue28()
  local arg1, arg2, textValue, numberValue34, numberValue36
  arg1 = PlaySoundFrontend
  arg2 = -1
  textValue = "BEEP_GREEN"
  numberValue34 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
  numberValue36 = true
  arg1(arg2, textValue, numberValue34, numberValue36)
  arg1 = Citizen
  arg1 = arg1.Wait
  arg2 = 2000
  arg1(arg2)
  arg1 = PlaySoundFrontend
  arg2 = -1
  textValue = "BEEP_GREEN"
  numberValue34 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
  numberValue36 = true
  arg1(arg2, textValue, numberValue34, numberValue36)
end
numberValue29 = 0
function numberValue30(arg1, arg2)
  local textValue, numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle, playerPed
  textValue = GetCamCoord
  numberValue34 = arg1
  textValue = textValue(numberValue34)
  numberValue34 = GetEntityCoords
  numberValue36 = arg2
  numberValue38 = true
  -- Beginner: result below is entityCoords.
  numberValue34 = numberValue34(numberValue36, numberValue38)
  numberValue36 = _ENV
  numberValue38 = "StartExpensiveSynchronousShapeTestLosProbe"
  numberValue36 = numberValue36[numberValue38]
  numberValue38 = textValue.x
  numberValue40 = textValue.y
  mathHelper = textValue.z
  numberValue43 = numberValue34.x
  workValue3 = numberValue34.y
  workValue = numberValue34.z
  workValue2 = 1
  vehicle = arg2
  playerPed = 4
  numberValue36 = numberValue36(numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle, playerPed)
  numberValue38 = GetShapeTestResult
  numberValue40 = numberValue36
  numberValue38, numberValue40 = numberValue38(numberValue40)
  if 0 == numberValue40 then
    mathHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    mathHelper = mathHelper()
    numberValue29 = mathHelper
    mathHelper = true
    return mathHelper
  else
    mathHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    mathHelper = mathHelper()
    numberValue43 = numberValue29
    mathHelper = mathHelper - numberValue43
    numberValue43 = 500
    mathHelper = mathHelper <= numberValue43
    if not mathHelper then
      numberValue43 = notify
      workValue3 = "~r~Lost line of sight to vehicle, tracking deactivated."
      -- Beginner: Show a notification to the player.
      numberValue43(workValue3)
    end
    return mathHelper
  end
end
function numberValue31()
  local arg1, arg2, textValue, numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle, playerPed, flag5, flag6, flag7, flag8, flag9, flag10, flag11, flag12, numberValue10, numberValue12, numberValue14, numberValue16, numberValue18, numberValue20, numberValue22, numberValue24
  while true do
    arg1 = flag2
    if arg1 then
      arg1 = CMG
      arg1 = arg1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      arg2 = CMG
      arg2 = arg2.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      arg2 = arg2()
      textValue = numberValue5
      numberValue34 = arg2
      textValue = textValue(numberValue34)
      if textValue then
        textValue = IsControlJustPressed
        numberValue34 = 0
        numberValue36 = numberValue37
        textValue = textValue(numberValue34, numberValue36)
        if textValue then
          textValue = GetEntityModel
          numberValue34 = arg2
          -- Beginner: result below is modelHash.
          textValue = textValue(numberValue34)
          numberValue34 = 1875232888 == textValue
          numberValue36 = CMG
          numberValue36 = numberValue36.hasClientPermission
          numberValue38 = "police.onduty.permission"
          numberValue36 = numberValue36(numberValue38)
          if not numberValue36 then
            numberValue36 = CMG
            numberValue36 = numberValue36.hasClientPermission
            numberValue38 = "nhs.onduty.permission"
            numberValue36 = numberValue36(numberValue38)
            if not numberValue36 then
              numberValue36 = GetPedInVehicleSeat
              numberValue38 = arg2
              numberValue40 = 0
              numberValue36 = numberValue36(numberValue38, numberValue40)
              numberValue36 = CMG
              numberValue36 = numberValue36.hasClientSkill
              numberValue38 = "vigilante_helicopter_thermals"
              numberValue36 = numberValue36 == arg1 and (not numberValue34 or numberValue36)
            end
          end
          if numberValue36 then
            numberValue38 = PlaySoundFrontend
            numberValue40 = -1
            mathHelper = "SELECT"
            numberValue43 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            workValue3 = false
            numberValue38(numberValue40, mathHelper, numberValue43, workValue3)
            numberValue38 = true
            flag3 = numberValue38
          end
        end
        textValue = IsDisabledControlJustPressed
        numberValue34 = 0
        numberValue36 = numberValue41
        textValue = textValue(numberValue34, numberValue36)
        if textValue then
          textValue = GetPedInVehicleSeat
          numberValue34 = arg2
          numberValue36 = -1
          textValue = textValue(numberValue34, numberValue36)
          if textValue ~= arg1 then
            textValue = GetPedInVehicleSeat
            numberValue34 = arg2
            numberValue36 = 0
            textValue = textValue(numberValue34, numberValue36)
            if textValue ~= arg1 then
              textValue = CMG
              textValue = textValue.isHandcuffed
              textValue = textValue()
              if not textValue then
                textValue = true
                flag = textValue
                textValue = PlaySoundFrontend
                numberValue34 = -1
                numberValue36 = "SELECT"
                numberValue38 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                numberValue40 = false
                textValue(numberValue34, numberValue36, numberValue38, numberValue40)
                textValue = TaskRappelFromHeli
                numberValue34 = arg1
                numberValue36 = 1
                textValue(numberValue34, numberValue36)
                textValue = Wait
                numberValue34 = 1000
                textValue(numberValue34)
                textValue = GetSoundId
                -- Beginner: result below is soundHandle.
                textValue = textValue()
                numberValue34 = PlaySoundFrontend
                numberValue36 = textValue
                numberValue38 = "Rappel_Loop"
                numberValue40 = "GTAO_Rappel_Sounds"
                mathHelper = true
                numberValue34(numberValue36, numberValue38, numberValue40, mathHelper)
                while true do
                  numberValue34 = GetIsTaskActive
                  numberValue36 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  numberValue36 = numberValue36()
                  numberValue38 = 49
                  numberValue34 = numberValue34(numberValue36, numberValue38)
                  if not numberValue34 then
                    numberValue34 = GetIsTaskActive
                    numberValue36 = PlayerPedId
                    -- Beginner: result below is localPlayerPed.
                    numberValue36 = numberValue36()
                    numberValue38 = 67
                    numberValue34 = numberValue34(numberValue36, numberValue38)
                    if not numberValue34 then
                      break
                    end
                  end
                  numberValue34 = Wait
                  numberValue36 = 0
                  numberValue34(numberValue36)
                end
                numberValue34 = StopSound
                numberValue36 = textValue
                numberValue34(numberValue36)
                numberValue34 = ReleaseSoundId
                numberValue36 = textValue
                numberValue34(numberValue36)
                numberValue34 = GetSoundId
                -- Beginner: result below is soundHandle.
                numberValue34 = numberValue34()
                numberValue36 = PlaySoundFrontend
                numberValue38 = numberValue34
                numberValue40 = "Rappel_Land"
                mathHelper = "GTAO_Rappel_Sounds"
                numberValue43 = true
                numberValue36(numberValue38, numberValue40, mathHelper, numberValue43)
                numberValue36 = Wait
                numberValue38 = 1000
                numberValue36(numberValue38)
                numberValue36 = ReleaseSoundId
                numberValue38 = numberValue34
                numberValue36(numberValue38)
                numberValue36 = ClearPedTasks
                numberValue38 = PlayerPedId
                numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle, playerPed, flag5, flag6, flag7, flag8, flag9, flag10, flag11, flag12, numberValue10, numberValue12, numberValue14, numberValue16, numberValue18, numberValue20, numberValue22, numberValue24 = numberValue38()
                numberValue36(numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle, playerPed, flag5, flag6, flag7, flag8, flag9, flag10, flag11, flag12, numberValue10, numberValue12, numberValue14, numberValue16, numberValue18, numberValue20, numberValue22, numberValue24)
                numberValue36 = ClearPedTasksImmediately
                numberValue38 = PlayerPedId
                numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle, playerPed, flag5, flag6, flag7, flag8, flag9, flag10, flag11, flag12, numberValue10, numberValue12, numberValue14, numberValue16, numberValue18, numberValue20, numberValue22, numberValue24 = numberValue38()
                numberValue36(numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle, playerPed, flag5, flag6, flag7, flag8, flag9, flag10, flag11, flag12, numberValue10, numberValue12, numberValue14, numberValue16, numberValue18, numberValue20, numberValue22, numberValue24)
              end
            end
          end
        end
      end
    end
    arg1 = flag3
    if arg1 then
      arg1 = SetTimecycleModifier
      arg2 = "heliGunCam"
      arg1(arg2)
      arg1 = SetTimecycleModifierStrength
      arg2 = 0.3
      arg1(arg2)
      arg1 = RequestScaleformMovie
      arg2 = "WESCAM_INTERFACE"
      -- Beginner: result below is scaleformHandle.
      arg1 = arg1(arg2)
      numberValue2 = arg1
      while true do
        arg1 = HasScaleformMovieLoaded
        arg2 = numberValue2
        arg1 = arg1(arg2)
        if arg1 then
          break
        end
        arg1 = Citizen
        arg1 = arg1.Wait
        arg2 = 0
        arg1(arg2)
      end
      arg1 = GetLocalTime
      arg1, arg2, textValue, numberValue34, numberValue36, numberValue38 = arg1()
      numberValue40 = BeginScaleformMovieMethod
      mathHelper = numberValue2
      numberValue43 = "SET_DATE"
      numberValue40(mathHelper, numberValue43)
      numberValue40 = ScaleformMovieMethodAddParamInt
      mathHelper = textValue
      numberValue40(mathHelper)
      numberValue40 = ScaleformMovieMethodAddParamInt
      mathHelper = arg2
      numberValue40(mathHelper)
      numberValue40 = ScaleformMovieMethodAddParamInt
      mathHelper = arg1
      numberValue40(mathHelper)
      numberValue40 = EndScaleformMovieMethod
      numberValue40()
      numberValue40 = CMG
      numberValue40 = numberValue40.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      numberValue40 = numberValue40()
      mathHelper = CMG
      mathHelper = mathHelper.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      mathHelper = mathHelper()
      numberValue43 = CreateCam
      workValue3 = "DEFAULT_SCRIPTED_FLY_CAMERA"
      workValue = true
      -- Beginner: result below is cameraHandle.
      numberValue43 = numberValue43(workValue3, workValue)
      workValue3 = CMG
      workValue3 = workValue3.hideAllDisplays
      workValue = "heli"
      workValue3(workValue)
      workValue3 = AttachCamToEntity
      workValue = numberValue43
      workValue2 = mathHelper
      vehicle = 0.0
      playerPed = 0.0
      flag5 = -2.0
      flag6 = true
      workValue3(workValue, workValue2, vehicle, playerPed, flag5, flag6)
      workValue3 = SetCamRot
      workValue = numberValue43
      workValue2 = 0.0
      vehicle = 0.0
      playerPed = GetEntityHeading
      flag5 = mathHelper
      -- Beginner: result below is heading.
      playerPed = playerPed(flag5)
      flag5 = 2
      workValue3(workValue, workValue2, vehicle, playerPed, flag5)
      workValue3 = SetCamFov
      workValue = numberValue43
      workValue2 = cmgCall
      workValue3(workValue, workValue2)
      workValue3 = RenderScriptCams
      workValue = true
      workValue2 = false
      vehicle = 0
      playerPed = true
      flag5 = false
      workValue3(workValue, workValue2, vehicle, playerPed, flag5)
      workValue3 = nil
      workValue = 0
      while true do
        workValue2 = flag3
        if not workValue2 then
          break
        end
        workValue2 = IsEntityDead
        vehicle = numberValue40
        workValue2 = workValue2(vehicle)
        if workValue2 then
          break
        end
        workValue2 = GetVehiclePedIsIn
        vehicle = numberValue40
        playerPed = false
        -- Beginner: result below is currentVehicle.
        workValue2 = workValue2(vehicle, playerPed)
        if workValue2 ~= mathHelper then
          break
        end
        workValue2 = numberValue5
        vehicle = mathHelper
        workValue2 = workValue2(vehicle)
        if not workValue2 then
          break
        end
        workValue2 = IsDisabledControlJustPressed
        vehicle = 0
        playerPed = numberValue37
        workValue2 = workValue2(vehicle, playerPed)
        if workValue2 then
          workValue2 = PlaySoundFrontend
          vehicle = -1
          playerPed = "SELECT"
          flag5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          flag6 = false
          workValue2(vehicle, playerPed, flag5, flag6)
          workValue2 = false
          flag3 = workValue2
        end
        workValue2 = IsDisabledControlJustPressed
        vehicle = 0
        playerPed = numberValue39
        workValue2 = workValue2(vehicle, playerPed)
        if workValue2 then
          workValue2 = PlaySoundFrontend
          vehicle = -1
          playerPed = "SELECT"
          flag5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          flag6 = false
          workValue2(vehicle, playerPed, flag5, flag6)
          workValue2 = numberValue7
          workValue2()
        end
        workValue2 = 0.0
        if workValue3 then
          vehicle = DoesEntityExist
          playerPed = workValue3
          vehicle = vehicle(playerPed)
          if vehicle then
            vehicle = PointCamAtEntity
            playerPed = numberValue43
            flag5 = workValue3
            flag6 = 0.0
            flag7 = 0.0
            flag8 = 0.0
            flag9 = true
            vehicle(playerPed, flag5, flag6, flag7, flag8, flag9)
            vehicle = numberValue27
            playerPed = workValue3
            vehicle(playerPed)
            vehicle = IsControlJustPressed
            playerPed = 0
            flag5 = numberValue44
            vehicle = vehicle(playerPed, flag5)
            if not vehicle then
              vehicle = numberValue30
              playerPed = numberValue43
              flag5 = workValue3
              vehicle = vehicle(playerPed, flag5)
              if vehicle then
                goto flow_label_369
              end
            end
            vehicle = PlaySoundFrontend
            playerPed = -1
            flag5 = "SELECT"
            flag6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            flag7 = false
            vehicle(playerPed, flag5, flag6, flag7)
            workValue3 = nil
            vehicle = GetCamRot
            playerPed = numberValue43
            flag5 = 2
            vehicle = vehicle(playerPed, flag5)
            playerPed = GetCamFov
            flag5 = numberValue43
            playerPed = playerPed(flag5)
            flag5 = numberValue43
            flag6 = DestroyCam
            flag7 = flag5
            flag8 = false
            flag6(flag7, flag8)
            flag6 = CreateCam
            flag7 = "DEFAULT_SCRIPTED_FLY_CAMERA"
            flag8 = true
            -- Beginner: result below is cameraHandle.
            flag6 = flag6(flag7, flag8)
            numberValue43 = flag6
            flag6 = AttachCamToEntity
            flag7 = numberValue43
            flag8 = mathHelper
            flag9 = 0.0
            flag10 = 0.0
            flag11 = -1.5
            flag12 = true
            flag6(flag7, flag8, flag9, flag10, flag11, flag12)
            flag6 = SetCamRot
            flag7 = numberValue43
            flag8 = vehicle.x
            flag9 = vehicle.y
            flag10 = vehicle.z
            flag11 = 2
            flag6(flag7, flag8, flag9, flag10, flag11)
            flag6 = SetCamFov
            flag7 = numberValue43
            flag8 = playerPed
            flag6(flag7, flag8)
            flag6 = RenderScriptCams
            flag7 = true
            flag8 = false
            flag9 = 0
            flag10 = true
            flag11 = false
            flag6(flag7, flag8, flag9, flag10, flag11)
            ::flow_label_369::
            vehicle = numberValue19
            playerPed = mathHelper
            flag5 = workValue3
            vehicle(playerPed, flag5)
          else
            workValue3 = nil
          end
        else
          vehicle = numberValue
          playerPed = numberValue6
          vehicle = vehicle - playerPed
          playerPed = 1.0
          vehicle = playerPed / vehicle
          playerPed = cmgCall
          flag5 = numberValue6
          playerPed = playerPed - flag5
          workValue2 = vehicle * playerPed
          vehicle = numberValue9
          playerPed = numberValue43
          flag5 = workValue2
          vehicle(playerPed, flag5)
          vehicle = numberValue15
          playerPed = numberValue43
          vehicle = vehicle(playerPed)
          if vehicle then
            playerPed = DoesEntityExist
            flag5 = vehicle
            playerPed = playerPed(flag5)
            if playerPed then
              playerPed = numberValue27
              flag5 = vehicle
              playerPed(flag5)
              playerPed = IsControlJustPressed
              flag5 = 0
              flag6 = numberValue44
              playerPed = playerPed(flag5, flag6)
              if playerPed then
                playerPed = PlaySoundFrontend
                flag5 = -1
                flag6 = "SELECT"
                flag7 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                flag8 = false
                playerPed(flag5, flag6, flag7, flag8)
                playerPed = CMG
                playerPed = playerPed.isVehicleFlagged
                flag5 = vehicle
                playerPed = playerPed(flag5)
                if playerPed then
                  playerPed = Citizen
                  playerPed = playerPed.CreateThread
                  flag5 = numberValue28
                  -- Beginner: Start a separate FiveM thread so this code can run independently.
                  playerPed(flag5)
                end
                workValue3 = vehicle
              end
            end
          end
          playerPed = numberValue21
          flag5 = numberValue43
          playerPed(flag5)
        end
        vehicle = IsControlJustPressed
        playerPed = 0
        flag5 = numberValue42
        vehicle = vehicle(playerPed, flag5)
        if vehicle then
          vehicle = flag4
          vehicle = not vehicle
          flag4 = vehicle
        end
        vehicle = flag4
        if vehicle then
          vehicle = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          vehicle = vehicle()
          playerPed = CMG
          playerPed = playerPed.rotationToDirection
          flag5 = GetCamRot
          flag6 = numberValue43
          flag7 = 2
          flag5, flag6, flag7, flag8, flag9, flag10, flag11, flag12, numberValue10, numberValue12, numberValue14, numberValue16, numberValue18, numberValue20, numberValue22, numberValue24 = flag5(flag6, flag7)
          playerPed = playerPed(flag5, flag6, flag7, flag8, flag9, flag10, flag11, flag12, numberValue10, numberValue12, numberValue14, numberValue16, numberValue18, numberValue20, numberValue22, numberValue24)
          flag5 = numberValue3
          flag5 = vehicle - flag5
          flag6 = 500
          if flag5 >= flag6 then
            flag5 = GetEntityCoords
            flag6 = mathHelper
            flag7 = true
            -- Beginner: result below is entityCoords.
            flag5 = flag5(flag6, flag7)
            flag6 = playerPed * 500.0
            flag5 = flag5 + flag6
            flag6 = TriggerServerEvent
            flag7 = "9c20140c50"
            flag8 = flag5
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c20140c50".
            flag6(flag7, flag8)
            numberValue3 = vehicle
          end
          flag5 = GetEntityCoords
          flag6 = mathHelper
          flag7 = true
          -- Beginner: result below is entityCoords.
          flag5 = flag5(flag6, flag7)
          flag6 = DrawSpotLight
          flag7 = flag5.x
          flag8 = flag5.y
          flag9 = flag5.z
          flag10 = playerPed.x
          flag11 = playerPed.y
          flag12 = playerPed.z
          numberValue10 = 255
          numberValue12 = 255
          numberValue14 = 255
          numberValue16 = 500.0
          numberValue18 = 20.0
          numberValue20 = 5.0
          numberValue22 = 15.0
          numberValue24 = 50.0
          flag6(flag7, flag8, flag9, flag10, flag11, flag12, numberValue10, numberValue12, numberValue14, numberValue16, numberValue18, numberValue20, numberValue22, numberValue24)
        end
        vehicle = numberValue11
        playerPed = numberValue43
        vehicle(playerPed)
        vehicle = numberValue8
        vehicle()
        vehicle = GetLocalTime
        vehicle, playerPed, flag5, flag6, flag7, flag8 = vehicle()
        numberValue38 = flag8
        numberValue36 = flag7
        numberValue34 = flag6
        textValue = flag5
        arg2 = playerPed
        arg1 = vehicle
        if numberValue38 ~= workValue then
          vehicle = BeginScaleformMovieMethod
          playerPed = numberValue2
          flag5 = "SET_TIME"
          vehicle(playerPed, flag5)
          vehicle = ScaleformMovieMethodAddParamInt
          playerPed = numberValue34
          vehicle(playerPed)
          vehicle = ScaleformMovieMethodAddParamInt
          playerPed = numberValue36
          vehicle(playerPed)
          vehicle = ScaleformMovieMethodAddParamInt
          playerPed = numberValue38
          vehicle(playerPed)
          vehicle = EndScaleformMovieMethod
          vehicle()
          workValue = numberValue38
        end
        vehicle = numberValue23
        playerPed = mathHelper
        vehicle(playerPed)
        vehicle = numberValue26
        playerPed = numberValue43
        vehicle(playerPed)
        vehicle = DrawScaleformMovieFullscreen
        playerPed = numberValue2
        flag5 = 255
        flag6 = 255
        flag7 = 255
        flag8 = 255
        flag9 = 0
        vehicle(playerPed, flag5, flag6, flag7, flag8, flag9)
        vehicle = Citizen
        vehicle = vehicle.Wait
        playerPed = 0
        vehicle(playerPed)
      end
      workValue2 = false
      flag3 = workValue2
      workValue2 = ClearTimecycleModifier
      workValue2()
      workValue2 = numberValue
      vehicle = numberValue6
      workValue2 = workValue2 + vehicle
      workValue2 = workValue2 * 0.5
      cmgCall = workValue2
      workValue2 = RenderScriptCams
      vehicle = false
      playerPed = false
      flag5 = 0
      flag6 = true
      flag7 = false
      workValue2(vehicle, playerPed, flag5, flag6, flag7)
      workValue2 = SetScaleformMovieAsNoLongerNeeded
      vehicle = numberValue2
      workValue2(vehicle)
      workValue2 = DestroyCam
      vehicle = numberValue43
      playerPed = false
      workValue2(vehicle, playerPed)
      workValue2 = SetNightvision
      vehicle = false
      workValue2(vehicle)
      workValue2 = SetSeethrough
      vehicle = false
      workValue2(vehicle)
      workValue2 = CMG
      workValue2 = workValue2.showAllDisplays
      vehicle = "heli"
      workValue2(vehicle)
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
threadCall = Citizen
threadCall = threadCall.CreateThread
eventRegistration = numberValue31
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(eventRegistration)
threadCall = Citizen
threadCall = threadCall.CreateThread
function eventRegistration()
  local arg1, arg2, textValue, numberValue34, numberValue36, numberValue38
  while true do
    arg1 = CMG
    arg1 = arg1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = GetVehiclePedIsIn
    textValue = arg1
    numberValue34 = false
    -- Beginner: result below is currentVehicle.
    arg2 = arg2(textValue, numberValue34)
    textValue = GetEntityModel
    numberValue34 = arg2
    -- Beginner: result below is modelHash.
    textValue = textValue(numberValue34)
    numberValue34 = table
    numberValue34 = numberValue34.has
    numberValue36 = dataTable
    numberValue38 = textValue
    numberValue34 = numberValue34(numberValue36, numberValue38)
    if numberValue34 then
      numberValue34 = true
      flag2 = numberValue34
    else
      numberValue34 = false
      flag2 = numberValue34
    end
    numberValue34 = Wait
    numberValue36 = 1000
    numberValue34(numberValue36)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(eventRegistration)
threadCall = {}
eventRegistration = RegisterNetEvent
cmgCall2 = "9c20140c50"
-- Beginner: this function handles network event "9c20140c50".
function numberValue32(arg1, arg2)
  local textValue, numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43
  textValue = GetPlayerFromServerId
  numberValue34 = arg1
  -- Beginner: result below is playerIndex.
  textValue = textValue(numberValue34)
  if -1 == textValue then
    return
  end
  numberValue34 = GetPlayerPed
  numberValue36 = textValue
  -- Beginner: result below is playerPed.
  numberValue34 = numberValue34(numberValue36)
  if 0 ~= numberValue34 then
    numberValue36 = CMG
    numberValue36 = numberValue36.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    numberValue36 = numberValue36()
    if numberValue34 ~= numberValue36 then
      goto flow_label_18
    end
  end
  return
  ::flow_label_18::
  numberValue36 = GetVehiclePedIsUsing
  numberValue38 = numberValue34
  numberValue36 = numberValue36(numberValue38)
  if 0 == numberValue36 then
    return
  end
  numberValue38 = threadCall
  numberValue38 = numberValue38[arg1]
  if not numberValue38 then
    numberValue40 = {}
    numberValue40.vehicle = numberValue36
    numberValue40.currentPosition = arg2
    mathHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    mathHelper = mathHelper()
    numberValue40.currentTime = mathHelper
    numberValue38 = numberValue40
    numberValue40 = threadCall
    numberValue40[arg1] = numberValue38
  end
  numberValue40 = numberValue38.currentPosition
  numberValue38.previousPosition = numberValue40
  numberValue40 = numberValue38.currentTime
  numberValue38.previousTime = numberValue40
  numberValue38.currentPosition = arg2
  numberValue40 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  numberValue40 = numberValue40()
  numberValue38.currentTime = numberValue40
  numberValue40 = GetEntityCoords
  mathHelper = numberValue36
  numberValue43 = true
  -- Beginner: result below is entityCoords.
  numberValue40 = numberValue40(mathHelper, numberValue43)
  numberValue38.heliPosition = numberValue40
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9c20140c50".
eventRegistration(cmgCall2, numberValue32)
function eventRegistration()
  local arg1, arg2, textValue, numberValue34, numberValue36, numberValue38, numberValue40, mathHelper, numberValue43, workValue3, workValue, workValue2, vehicle, playerPed, flag5, flag6, flag7, flag8, flag9, flag10, flag11, flag12, numberValue10, numberValue12, numberValue14, numberValue16, numberValue18, numberValue20
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = pairs
  textValue = threadCall
  arg2, textValue, numberValue34, numberValue36 = arg2(textValue)
  for numberValue38, numberValue40 in arg2, textValue, numberValue34, numberValue36 do
    mathHelper = numberValue40.currentTime
    numberValue43 = numberValue40.previousTime
    mathHelper = mathHelper - numberValue43
    numberValue43 = numberValue40.currentTime
    numberValue43 = arg1 - numberValue43
    numberValue43 = numberValue43 / mathHelper
    workValue3 = numberValue40.currentPosition
    workValue = GetEntityCoords
    workValue2 = numberValue40.vehicle
    vehicle = true
    -- Beginner: result below is entityCoords.
    workValue = workValue(workValue2, vehicle)
    workValue2 = numberValue40.heliPosition
    workValue = workValue - workValue2
    workValue3 = workValue3 + workValue
    workValue = numberValue40.previousPosition
    workValue = workValue3 - workValue
    workValue2 = numberValue40.previousPosition
    vehicle = workValue * numberValue43
    workValue2 = workValue2 + vehicle
    vehicle = norm
    playerPed = numberValue40.heliPosition
    playerPed = workValue2 - playerPed
    vehicle = vehicle(playerPed)
    playerPed = DrawSpotLight
    flag5 = numberValue40.heliPosition
    flag5 = flag5.x
    flag6 = numberValue40.heliPosition
    flag6 = flag6.y
    flag7 = numberValue40.heliPosition
    flag7 = flag7.z
    flag8 = vehicle.x
    flag9 = vehicle.y
    flag10 = vehicle.z
    flag11 = 255
    flag12 = 255
    numberValue10 = 255
    numberValue12 = 500.0
    numberValue14 = 20.0
    numberValue16 = 5.0
    numberValue18 = 15.0
    numberValue20 = 50.0
    playerPed(flag5, flag6, flag7, flag8, flag9, flag10, flag11, flag12, numberValue10, numberValue12, numberValue14, numberValue16, numberValue18, numberValue20)
    playerPed = numberValue40.currentTime
    playerPed = arg1 - playerPed
    flag5 = 1250
    if playerPed > flag5 then
      playerPed = threadCall
      playerPed[numberValue38] = nil
    end
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
numberValue32 = eventRegistration
textValue2 = "Interpolate Spotlight"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(numberValue32, textValue2)