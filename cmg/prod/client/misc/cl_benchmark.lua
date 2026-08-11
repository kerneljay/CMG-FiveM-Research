--[[
    LEVEL 1 BEGINNER GUIDE — Benchmark
    =======================================

    File: cmg/prod/client/misc/cl_benchmark.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Benchmark feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 10
      * Background threads: 0
      * Always-running loops: 7
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
local dataTable, dataTable2, vector3Builder, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue, workValue, workValue2, workValue3, workValue4, workValue5, workValue6, workValue7, cmgCall, textValue, workValue8
dataTable = {}
dataTable2 = {}
vector3Builder = vector3
numberValue7 = -9.8369
numberValue8 = -1474.088
numberValue9 = 29.5453
vector3Builder = vector3Builder(numberValue7, numberValue8, numberValue9)
dataTable2.position = vector3Builder
dataTable2.heading = 5.4894
vector3Builder = vector3
numberValue7 = -3.0097
numberValue8 = -1484.3165
numberValue9 = 41.1898
vector3Builder = vector3Builder(numberValue7, numberValue8, numberValue9)
dataTable2.cameraStartPosition = vector3Builder
vector3Builder = vector3
numberValue7 = 0.5292
numberValue8 = 0.0
numberValue8 = -numberValue8
numberValue9 = 24.6248
vector3Builder = vector3Builder(numberValue7, numberValue8, numberValue9)
dataTable2.cameraStartRotation = vector3Builder
vector3Builder = vector3
numberValue7 = -13.842
numberValue8 = -1454.4639
numberValue9 = 32.9113
vector3Builder = vector3Builder(numberValue7, numberValue8, numberValue9)
dataTable2.cameraEndPosition = vector3Builder
vector3Builder = vector3
numberValue7 = -2.4231
numberValue8 = 0.0
numberValue9 = 1.8101
vector3Builder = vector3Builder(numberValue7, numberValue8, numberValue9)
dataTable2.cameraEndRotation = vector3Builder
dataTable2.weather = "EXTRASUNNY"
vector3Builder = {}
numberValue7 = vector3
numberValue8 = 806.0358
numberValue9 = 1101.2482
numberValue11 = 306.0945
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue11)
vector3Builder.position = numberValue7
vector3Builder.heading = 348.7347
numberValue7 = vector3
numberValue8 = 804.6505
numberValue9 = 1184.0697
numberValue11 = 347.4004
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue11)
vector3Builder.cameraStartPosition = numberValue7
numberValue7 = vector3
numberValue8 = -7.4378
numberValue9 = 0.0
numberValue9 = -numberValue9
numberValue11 = 110.8038
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue11)
vector3Builder.cameraStartRotation = numberValue7
numberValue7 = vector3
numberValue8 = 771.2347
numberValue9 = 1091.1151
numberValue11 = 337.3588
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue11)
vector3Builder.cameraEndPosition = numberValue7
numberValue7 = vector3
numberValue8 = -4.9158
numberValue9 = 0.0
numberValue9 = -numberValue9
numberValue11 = 22.8592
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue11)
vector3Builder.cameraEndRotation = numberValue7
vector3Builder.weather = "SMOG"
numberValue7 = {}
numberValue8 = vector3
numberValue9 = 2005.9663
numberValue11 = 3803.6094
numberValue12 = 31.1808
numberValue8 = numberValue8(numberValue9, numberValue11, numberValue12)
numberValue7.position = numberValue8
numberValue7.heading = 60.1616
numberValue8 = vector3
numberValue9 = 1987.1251
numberValue11 = 3810.7661
numberValue12 = 33.2256
numberValue8 = numberValue8(numberValue9, numberValue11, numberValue12)
numberValue7.cameraStartPosition = numberValue8
numberValue8 = vector3
numberValue9 = -2.1421
numberValue11 = 0.0
numberValue11 = -numberValue11
numberValue12 = 37.1211
numberValue8 = numberValue8(numberValue9, numberValue11, numberValue12)
numberValue7.cameraStartRotation = numberValue8
numberValue8 = vector3
numberValue9 = 1967.3821
numberValue11 = 3840.4832
numberValue12 = 54.8269
numberValue8 = numberValue8(numberValue9, numberValue11, numberValue12)
numberValue7.cameraEndPosition = numberValue8
numberValue8 = vector3
numberValue9 = -1.2952
numberValue11 = 0.0
numberValue11 = -numberValue11
numberValue12 = 62.8825
numberValue8 = numberValue8(numberValue9, numberValue11, numberValue12)
numberValue7.cameraEndRotation = numberValue8
numberValue7.weather = "RAIN"
numberValue8 = {}
numberValue9 = vector3
numberValue11 = -1713.2614
numberValue12 = -1077.4807
numberValue13 = 12.0172
numberValue9 = numberValue9(numberValue11, numberValue12, numberValue13)
numberValue8.position = numberValue9
numberValue8.heading = 18.823
numberValue9 = vector3
numberValue11 = -1705.3199
numberValue12 = -1074.6646
numberValue13 = 21.6983
numberValue9 = numberValue9(numberValue11, numberValue12, numberValue13)
numberValue8.cameraStartPosition = numberValue9
numberValue9 = vector3
numberValue11 = 1.5777
numberValue12 = 0.0
numberValue12 = -numberValue12
numberValue13 = -163.0528
numberValue9 = numberValue9(numberValue11, numberValue12, numberValue13)
numberValue8.cameraStartRotation = numberValue9
numberValue9 = vector3
numberValue11 = -1731.1056
numberValue12 = -1098.6263
numberValue13 = 24.3947
numberValue9 = numberValue9(numberValue11, numberValue12, numberValue13)
numberValue8.cameraEndPosition = numberValue9
numberValue9 = vector3
numberValue11 = -3.393
numberValue12 = 0.0
numberValue12 = -numberValue12
numberValue13 = -109.8041
numberValue9 = numberValue9(numberValue11, numberValue12, numberValue13)
numberValue8.cameraEndRotation = numberValue9
numberValue8.weather = "CLEAR"
numberValue9 = {}
numberValue11 = vector3
numberValue12 = -663.8303
numberValue13 = 4484.105
numberValue14 = 69.2669
numberValue11 = numberValue11(numberValue12, numberValue13, numberValue14)
numberValue9.position = numberValue11
numberValue9.heading = 238.4128
numberValue11 = vector3
numberValue12 = -608.3302
numberValue13 = 4463.3027
numberValue14 = 23.4348
numberValue11 = numberValue11(numberValue12, numberValue13, numberValue14)
numberValue9.cameraStartPosition = numberValue11
numberValue11 = vector3
numberValue12 = -1.9612
numberValue13 = 0.0
numberValue14 = -127.5001
numberValue11 = numberValue11(numberValue12, numberValue13, numberValue14)
numberValue9.cameraStartRotation = numberValue11
numberValue11 = vector3
numberValue12 = -615.5822
numberValue13 = 4508.3086
numberValue14 = 110.3908
numberValue11 = numberValue11(numberValue12, numberValue13, numberValue14)
numberValue9.cameraEndPosition = numberValue11
numberValue11 = vector3
numberValue12 = -22.87
numberValue13 = 0.0
numberValue14 = -133.0594
numberValue11 = numberValue11(numberValue12, numberValue13, numberValue14)
numberValue9.cameraEndRotation = numberValue11
numberValue9.weather = "EXTRASUNNY"
numberValue11 = {}
numberValue12 = vector3
numberValue13 = 234.57510375977
numberValue14 = -1144.5062255859
numberValue = 29.47513961792
numberValue12 = numberValue12(numberValue13, numberValue14, numberValue)
numberValue11.position = numberValue12
numberValue11.heading = 0.0
numberValue12 = vector3
numberValue13 = 216.51281738281
numberValue14 = -1282.3959960938
numberValue = 32.077880859375
numberValue12 = numberValue12(numberValue13, numberValue14, numberValue)
numberValue11.cameraStartPosition = numberValue12
numberValue12 = vector3
numberValue13 = -0.98468792438507
numberValue14 = 0.0
numberValue14 = -numberValue14
numberValue = -0.036672409623861
numberValue12 = numberValue12(numberValue13, numberValue14, numberValue)
numberValue11.cameraStartRotation = numberValue12
numberValue12 = vector3
numberValue13 = 241.12530517578
numberValue14 = -995.49108886719
numberValue = 31.893032073975
numberValue12 = numberValue12(numberValue13, numberValue14, numberValue)
numberValue11.cameraEndPosition = numberValue12
numberValue12 = vector3
numberValue13 = 9.3380908966064
numberValue14 = 0.0
numberValue14 = -numberValue14
numberValue = 82.739128112793
numberValue12 = numberValue12(numberValue13, numberValue14, numberValue)
numberValue11.cameraEndRotation = numberValue12
numberValue11.weather = "XMAS"
dataTable[1] = dataTable2
dataTable[2] = vector3Builder
dataTable[3] = numberValue7
dataTable[4] = numberValue8
dataTable[5] = numberValue9
dataTable[6] = numberValue11
dataTable2 = {}
dataTable2.handle = 0
dataTable2.name = "pc_bench"
vector3Builder = 0
numberValue7 = false
numberValue8 = vector3
numberValue9 = 0.0
numberValue11 = 0.0
numberValue12 = 0.0
numberValue8 = numberValue8(numberValue9, numberValue11, numberValue12)
numberValue9 = {}
numberValue11 = 25
numberValue12 = 1
numberValue13 = 0.0
numberValue14 = {}
numberValue = 1

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, numberValue6, flag2, flag3, numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4
  arg1 = InvalidateIdleCam
  arg1()
  arg1 = InvalidateVehicleIdleCam
  arg1()
  arg1 = HideHudAndRadarThisFrame
  arg1()
  arg1 = DisableControlAction
  arg2 = 0
  numberValue6 = 199
  flag2 = true
  arg1(arg2, numberValue6, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  numberValue6 = 217
  flag2 = true
  arg1(arg2, numberValue6, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  numberValue6 = 211
  flag2 = true
  arg1(arg2, numberValue6, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  numberValue6 = 212
  flag2 = true
  arg1(arg2, numberValue6, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  numberValue6 = 213
  flag2 = true
  arg1(arg2, numberValue6, flag2)
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
  arg1 = IsScreenFadedOut
  arg1 = arg1()
  if not arg1 then
    arg1 = IsScreenFadingOut
    arg1 = arg1()
    if not arg1 then
      arg1 = IsScreenFadingIn
      arg1 = arg1()
      if not arg1 then
        arg1 = Citizen
        arg1 = arg1.InvokeNative
        arg2 = 8406597705123953709
        numberValue6 = Citizen
        numberValue6 = numberValue6.ResultAsFloat
        numberValue6, flag2, flag3, numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4 = numberValue6()
        arg1 = arg1(arg2, numberValue6, flag2, flag3, numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4)
        arg2 = 1
        arg1 = arg2 / arg1
        numberValue6 = numberValue
        arg2 = numberValue14
        arg2[numberValue6] = arg1
        arg2 = numberValue
        arg2 = arg2 + 1
        numberValue = arg2
        numberValue6 = numberValue12
        arg2 = numberValue9
        arg2[numberValue6] = arg1
        arg2 = numberValue12
        arg2 = arg2 + 1
        numberValue12 = arg2
        arg2 = numberValue12
        numberValue6 = numberValue11
        if arg2 > numberValue6 then
          arg2 = 1
          numberValue12 = arg2
          arg2 = 0.0
          numberValue13 = arg2
          arg2 = pairs
          numberValue6 = numberValue9
          arg2, numberValue6, flag2, flag3 = arg2(numberValue6)
          for numberValue10, flag4 in arg2, numberValue6, flag2, flag3 do
            stringHelper = numberValue13
            stringHelper = stringHelper + flag4
            numberValue13 = stringHelper
          end
          arg2 = numberValue13
          numberValue6 = numberValue11
          numberValue6 = numberValue6 + 0.0
          arg2 = arg2 / numberValue6
          numberValue13 = arg2
        end
        arg2 = numberValue13
        if arg2 > 0.0 then
          arg2 = DrawAdvancedText
          numberValue6 = 0.5
          flag2 = 0.8
          flag3 = 0.0
          numberValue10 = 0.0
          flag4 = 2.0
          stringHelper = "FPS:"
          mathHelper = 255
          numberValue15 = 255
          numberValue2 = 255
          flag = 255
          numberValue3 = 0
          numberValue4 = 0
          arg2(numberValue6, flag2, flag3, numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4)
          arg2 = DrawAdvancedText
          numberValue6 = 0.65
          flag2 = 0.8
          flag3 = 0.0
          numberValue10 = 0.0
          flag4 = 2.0
          stringHelper = tostring
          mathHelper = math
          mathHelper = mathHelper.round
          numberValue15 = numberValue13
          numberValue2 = 1
          mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4 = mathHelper(numberValue15, numberValue2)
          stringHelper = stringHelper(mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4)
          mathHelper = 255
          numberValue15 = 255
          numberValue2 = 255
          flag = 255
          numberValue3 = 0
          numberValue4 = 0
          arg2(numberValue6, flag2, flag3, numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2) ===
function workValue2(arg1, arg2)
  local numberValue6, flag2
  numberValue6 = IsScreenFadedIn
  numberValue6 = numberValue6()
  if not numberValue6 then
    numberValue6 = IsScreenFadingOut
    numberValue6 = numberValue6()
    if not numberValue6 then
      return
    end
  end
  numberValue6 = DoScreenFadeOut
  flag2 = arg1
  numberValue6(flag2)
  if not arg2 then
    return
  end
  while true do
    numberValue6 = IsScreenFadedOut
    numberValue6 = numberValue6()
    if numberValue6 then
      break
    end
    numberValue6 = Wait
    flag2 = 0
    numberValue6(flag2)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local numberValue6, flag2
  numberValue6 = IsScreenFadedOut
  numberValue6 = numberValue6()
  if not numberValue6 then
    numberValue6 = IsScreenFadingOut
    numberValue6 = numberValue6()
    if not numberValue6 then
      return
    end
  end
  numberValue6 = IsScreenFadingIn
  numberValue6 = numberValue6()
  if not numberValue6 then
    numberValue6 = DoScreenFadeIn
    flag2 = arg1
    numberValue6(flag2)
  end
  if arg2 then
    while true do
      numberValue6 = IsScreenFadingIn
      numberValue6 = numberValue6()
      if not numberValue6 then
        break
      end
      numberValue6 = Wait
      flag2 = 0
      numberValue6(flag2)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local arg2, numberValue6, flag2, flag3, numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4, numberValue5
  arg2 = dataTable
  arg2 = arg2[arg1]
  numberValue6 = workValue2
  flag2 = 500
  flag3 = true
  numberValue6(flag2, flag3)
  numberValue6 = RenderScriptCams
  flag2 = false
  flag3 = false
  numberValue10 = 0
  flag4 = false
  stringHelper = false
  numberValue6(flag2, flag3, numberValue10, flag4, stringHelper)
  numberValue6 = DestroyAllCams
  flag2 = false
  numberValue6(flag2)
  numberValue6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue6 = numberValue6()
  flag2 = SetEntityCoords
  flag3 = numberValue6
  numberValue10 = arg2.position
  numberValue10 = numberValue10.x
  flag4 = arg2.position
  flag4 = flag4.y
  stringHelper = arg2.position
  stringHelper = stringHelper.z
  mathHelper = true
  numberValue15 = false
  numberValue2 = false
  flag = true
  -- Beginner: Move/teleport an entity to new coordinates.
  flag2(flag3, numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag)
  flag2 = SetEntityHeading
  flag3 = numberValue6
  numberValue10 = arg2.heading
  -- Beginner: Change the direction an entity is facing.
  flag2(flag3, numberValue10)
  flag2 = FreezeEntityPosition
  flag3 = numberValue6
  numberValue10 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  flag2(flag3, numberValue10)
  flag2 = ForcePedAiAndAnimationUpdate
  flag3 = numberValue6
  numberValue10 = true
  flag4 = true
  flag2(flag3, numberValue10, flag4)
  flag2 = SetGameplayCamRelativePitch
  flag3 = 0.0
  numberValue10 = 1.0
  flag2(flag3, numberValue10)
  flag2 = SetGameplayCamRelativeHeading
  flag3 = 0.0
  flag2(flag3)
  flag2 = ClearArea
  flag3 = arg2.position
  flag3 = flag3.x
  numberValue10 = arg2.position
  numberValue10 = numberValue10.y
  flag4 = arg2.position
  flag4 = flag4.z
  stringHelper = 100.0
  mathHelper = true
  numberValue15 = false
  numberValue2 = false
  flag = false
  flag2(flag3, numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag)
  flag2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag2 = flag2()
  while true do
    flag3 = GetNumberOfStreamingRequests
    flag3 = flag3()
    if not (flag3 > 0) then
      break
    end
    flag3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    flag3 = flag3()
    flag3 = flag3 - flag2
    numberValue10 = 5000
    if flag3 > numberValue10 then
      break
    end
    flag3 = Wait
    numberValue10 = 0
    flag3(numberValue10)
  end
  flag3 = LoadAllObjectsNow
  flag3()
  flag3 = CMG
  flag3 = flag3.setWeather
  numberValue10 = arg2.weather
  flag4 = false
  flag3(numberValue10, flag4)
  flag3 = CMG
  flag3 = flag3.overrideTime
  numberValue10 = 12
  flag4 = 0
  stringHelper = 0
  flag3(numberValue10, flag4, stringHelper)
  flag3 = CreateCam
  numberValue10 = "DEFAULT_SPLINE_CAMERA"
  flag4 = false
  -- Beginner: result below is cameraHandle.
  flag3 = flag3(numberValue10, flag4)
  vector3Builder = flag3
  flag3 = AddCamSplineNode
  numberValue10 = vector3Builder
  flag4 = arg2.cameraStartPosition
  flag4 = flag4.x
  stringHelper = arg2.cameraStartPosition
  stringHelper = stringHelper.y
  mathHelper = arg2.cameraStartPosition
  mathHelper = mathHelper.z
  numberValue15 = arg2.cameraStartRotation
  numberValue15 = numberValue15.x
  numberValue2 = arg2.cameraStartRotation
  numberValue2 = numberValue2.y
  flag = arg2.cameraStartRotation
  flag = flag.z
  numberValue3 = 15000
  numberValue4 = 3
  numberValue5 = 2
  flag3(numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4, numberValue5)
  flag3 = AddCamSplineNode
  numberValue10 = vector3Builder
  flag4 = arg2.cameraEndPosition
  flag4 = flag4.x
  stringHelper = arg2.cameraEndPosition
  stringHelper = stringHelper.y
  mathHelper = arg2.cameraEndPosition
  mathHelper = mathHelper.z
  numberValue15 = arg2.cameraEndRotation
  numberValue15 = numberValue15.x
  numberValue2 = arg2.cameraEndRotation
  numberValue2 = numberValue2.y
  flag = arg2.cameraEndRotation
  flag = flag.z
  numberValue3 = 15000
  numberValue4 = 3
  numberValue5 = 2
  flag3(numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4, numberValue5)
  flag3 = SetCamSplinePhase
  numberValue10 = vector3Builder
  flag4 = 0.0
  flag3(numberValue10, flag4)
  flag3 = SetCamFov
  numberValue10 = vector3Builder
  flag4 = 50.0
  flag3(numberValue10, flag4)
  flag3 = SetCamSplineSmoothingStyle
  numberValue10 = vector3Builder
  flag4 = 3
  flag3(numberValue10, flag4)
  flag3 = SetCamActive
  numberValue10 = vector3Builder
  flag4 = true
  flag3(numberValue10, flag4)
  flag3 = RenderScriptCams
  numberValue10 = true
  flag4 = false
  stringHelper = 0
  mathHelper = false
  numberValue15 = false
  flag3(numberValue10, flag4, stringHelper, mathHelper, numberValue15)
  while true do
    flag3 = GetCamSplinePhase
    numberValue10 = vector3Builder
    flag3 = flag3(numberValue10)
    numberValue10 = 0.05
    if not (flag3 < numberValue10) then
      break
    end
    flag3 = Wait
    numberValue10 = 0
    flag3(numberValue10)
  end
  flag3 = workValue3
  numberValue10 = 500
  flag4 = false
  flag3(numberValue10, flag4)
  while true do
    flag3 = GetCamSplinePhase
    numberValue10 = vector3Builder
    flag3 = flag3(numberValue10)
    numberValue10 = 0.88
    if flag3 > numberValue10 then
      break
    end
    numberValue10 = flag3 - 0.05
    numberValue10 = numberValue10 / 0.83
    flag4 = math
    flag4 = flag4.floor
    stringHelper = 1440 * numberValue10
    flag4 = flag4(stringHelper)
    flag4 = flag4 + 720
    stringHelper = math
    stringHelper = stringHelper.floor
    mathHelper = flag4 / 60
    stringHelper = stringHelper(mathHelper)
    mathHelper = flag4 % 60
    if stringHelper >= 24 then
      stringHelper = stringHelper - 24
    end
    numberValue15 = CMG
    numberValue15 = numberValue15.overrideTime
    numberValue2 = stringHelper
    flag = mathHelper
    numberValue3 = 0
    numberValue15(numberValue2, flag, numberValue3)
    numberValue15 = Wait
    numberValue2 = 0
    numberValue15(numberValue2)
  end
  if 5 ~= arg1 then
    flag3 = workValue2
    numberValue10 = 500
    flag4 = true
    flag3(numberValue10, flag4)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2, numberValue6, flag2, flag3, numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = -1281684762
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg1(arg2)
  arg1 = RequestVehicleRecording
  arg2 = dataTable2.handle
  numberValue6 = dataTable2.name
  arg1(arg2, numberValue6)
  while true do
    arg1 = HasVehicleRecordingBeenLoaded
    arg2 = dataTable2.handle
    numberValue6 = dataTable2.name
    arg1 = arg1(arg2, numberValue6)
    if arg1 then
      break
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = CMG
  arg1 = arg1.overrideTime
  arg2 = 12
  numberValue6 = 0
  flag2 = 0
  arg1(arg2, numberValue6, flag2)
  arg1 = CMG
  arg1 = arg1.setWeather
  arg2 = "EXTRASUNNY"
  arg1(arg2)
  arg1 = GetVehicleRecordingId
  arg2 = dataTable2.handle
  numberValue6 = dataTable2.name
  arg1 = arg1(arg2, numberValue6)
  arg2 = GetPositionOfVehicleRecordingAtTime
  numberValue6 = arg1
  flag2 = 4500.0
  flag3 = nil
  arg2 = arg2(numberValue6, flag2, flag3)
  numberValue6 = GetRotationOfVehicleRecordingAtTime
  flag2 = arg1
  flag3 = 4500.0
  numberValue10 = nil
  numberValue6 = numberValue6(flag2, flag3, numberValue10)
  flag2 = CMG
  flag2 = flag2.spawnVehicle
  flag3 = -1281684762
  numberValue10 = arg2.x
  flag4 = arg2.y
  stringHelper = arg2.z
  mathHelper = numberValue6.z
  numberValue15 = false
  numberValue2 = false
  flag = false
  flag2 = flag2(flag3, numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag)
  flag3 = SetEntityInvincible
  numberValue10 = flag2
  flag4 = true
  flag3(numberValue10, flag4)
  flag3 = SetVehicleEngineOn
  numberValue10 = flag2
  flag4 = true
  stringHelper = true
  mathHelper = false
  flag3(numberValue10, flag4, stringHelper, mathHelper)
  flag3 = SetVehicleCanBeVisiblyDamaged
  numberValue10 = flag2
  flag4 = false
  flag3(numberValue10, flag4)
  flag3 = SetVehicleCanBreak
  numberValue10 = flag2
  flag4 = false
  flag3(numberValue10, flag4)
  flag3 = SetEntityProofs
  numberValue10 = flag2
  flag4 = true
  stringHelper = true
  mathHelper = true
  numberValue15 = true
  numberValue2 = true
  flag = true
  numberValue3 = true
  numberValue4 = true
  flag3(numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4)
  flag3 = ControlLandingGear
  numberValue10 = flag2
  flag4 = 3
  flag3(numberValue10, flag4)
  flag3 = SetEntityLodDist
  numberValue10 = flag2
  flag4 = 500
  flag3(numberValue10, flag4)
  flag3 = StartPlaybackRecordedVehicle
  numberValue10 = flag2
  flag4 = dataTable2.handle
  stringHelper = dataTable2.name
  mathHelper = true
  flag3(numberValue10, flag4, stringHelper, mathHelper)
  flag3 = SkipTimeInPlaybackRecordedVehicle
  numberValue10 = flag2
  flag4 = 4500.0
  flag3(numberValue10, flag4)
  flag3 = SetPedIntoVehicle
  numberValue10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue10 = numberValue10()
  flag4 = flag2
  stringHelper = -1
  flag3(numberValue10, flag4, stringHelper)
  flag3 = RenderScriptCams
  numberValue10 = false
  flag4 = true
  stringHelper = 10000
  mathHelper = true
  numberValue15 = false
  flag3(numberValue10, flag4, stringHelper, mathHelper, numberValue15)
  flag3 = workValue3
  numberValue10 = 500
  flag4 = false
  flag3(numberValue10, flag4)
  while true do
    flag3 = DoesEntityExist
    numberValue10 = flag2
    flag3 = flag3(numberValue10)
    if not flag3 then
      break
    end
    flag3 = SetPlaybackSpeed
    numberValue10 = flag2
    flag4 = 2.0
    flag3(numberValue10, flag4)
    flag3 = SetGameplayCamRelativePitch
    numberValue10 = 0.0
    flag4 = 1.0
    flag3(numberValue10, flag4)
    flag3 = SetGameplayCamRelativeHeading
    numberValue10 = 0.0
    flag3(numberValue10)
    flag3 = math
    flag3 = flag3.floor
    numberValue10 = GetTimePositionInRecording
    flag4 = flag2
    numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4 = numberValue10(flag4)
    flag3 = flag3(numberValue10, flag4, stringHelper, mathHelper, numberValue15, numberValue2, flag, numberValue3, numberValue4)
    numberValue10 = 104000
    if flag3 > numberValue10 then
      break
    end
    numberValue10 = Wait
    flag4 = 0
    numberValue10(flag4)
  end
  flag3 = workValue2
  numberValue10 = 500
  flag4 = true
  flag3(numberValue10, flag4)
  flag3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  flag3 = flag3()
  numberValue10 = DoesEntityExist
  flag4 = flag2
  numberValue10 = numberValue10(flag4)
  if numberValue10 then
    numberValue10 = IsPedInVehicle
    flag4 = flag3
    stringHelper = flag2
    mathHelper = false
    numberValue10 = numberValue10(flag4, stringHelper, mathHelper)
    if numberValue10 then
      numberValue10 = TaskLeaveVehicle
      flag4 = flag3
      stringHelper = flag2
      mathHelper = 16
      numberValue10(flag4, stringHelper, mathHelper)
      numberValue10 = Wait
      flag4 = 0
      numberValue10(flag4)
    end
    numberValue10 = StopPlaybackRecordedVehicle
    flag4 = flag2
    numberValue10(flag4)
    numberValue10 = DeleteEntity
    flag4 = flag2
    -- Beginner: Delete a GTA entity.
    numberValue10(flag4)
  end
  numberValue10 = SetModelAsNoLongerNeeded
  flag4 = -1281684762
  numberValue10(flag4)
  numberValue10 = RemoveVehicleRecording
  flag4 = dataTable2.handle
  stringHelper = dataTable2.name
  numberValue10(flag4, stringHelper)
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2, numberValue6, flag2, flag3, numberValue10
  arg1 = true
  numberValue7 = arg1
  arg1 = table
  arg1 = arg1.create
  arg2 = 60000
  numberValue6 = 0
  arg1 = arg1(arg2, numberValue6)
  numberValue14 = arg1
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = SetEntityInvincible
  numberValue6 = arg1
  flag2 = false
  arg2(numberValue6, flag2)
  arg2 = GetEntityCoords
  numberValue6 = arg1
  flag2 = true
  -- Beginner: result below is entityCoords.
  arg2 = arg2(numberValue6, flag2)
  numberValue8 = arg2
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  numberValue6 = SetPlayerControl
  flag2 = arg2
  flag3 = false
  numberValue10 = 0
  numberValue6(flag2, flag3, numberValue10)
  numberValue6 = SetEveryoneIgnorePlayer
  flag2 = arg2
  flag3 = true
  numberValue6(flag2, flag3)
  numberValue6 = CMG
  numberValue6 = numberValue6.createThreadOnTick
  flag2 = workValue
  flag3 = "Benchmark"
  -- Beginner: Run a helper every game frame while this script is active.
  numberValue6(flag2, flag3)
  numberValue6 = CMG
  numberValue6 = numberValue6.hideAllDisplays
  flag2 = "benchmark"
  numberValue6(flag2)
  numberValue6 = workValue2
  flag2 = 500
  flag3 = true
  numberValue6(flag2, flag3)
  numberValue6 = AnimpostfxStopAll
  numberValue6()
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, numberValue6, flag2, flag3, numberValue10, flag4, stringHelper, mathHelper, numberValue15
  arg1 = CMG
  arg1 = arg1.deleteThreadOnTick
  arg2 = workValue
  arg1(arg2)
  arg1 = RenderScriptCams
  arg2 = false
  numberValue6 = false
  flag2 = 0
  flag3 = false
  numberValue10 = false
  arg1(arg2, numberValue6, flag2, flag3, numberValue10)
  arg1 = SetCamActive
  arg2 = vector3Builder
  numberValue6 = false
  arg1(arg2, numberValue6)
  arg1 = DestroyCam
  arg2 = vector3Builder
  numberValue6 = false
  arg1(arg2, numberValue6)
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = SetEntityInvincible
  numberValue6 = arg1
  flag2 = false
  arg2(numberValue6, flag2)
  arg2 = SetEntityCoords
  numberValue6 = arg1
  flag2 = numberValue8.x
  flag3 = numberValue8.y
  numberValue10 = numberValue8.z
  flag4 = true
  stringHelper = false
  mathHelper = false
  numberValue15 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg2(numberValue6, flag2, flag3, numberValue10, flag4, stringHelper, mathHelper, numberValue15)
  arg2 = FreezeEntityPosition
  numberValue6 = arg1
  flag2 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(numberValue6, flag2)
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  numberValue6 = SetPlayerControl
  flag2 = arg2
  flag3 = true
  numberValue10 = 0
  numberValue6(flag2, flag3, numberValue10)
  numberValue6 = SetEveryoneIgnorePlayer
  flag2 = arg2
  flag3 = false
  numberValue6(flag2, flag3)
  numberValue6 = workValue3
  flag2 = 500
  flag3 = false
  numberValue6(flag2, flag3)
  numberValue6 = 0.0
  flag2 = pairs
  flag3 = numberValue14
  flag2, flag3, numberValue10, flag4 = flag2(flag3)
  for stringHelper, mathHelper in flag2, flag3, numberValue10, flag4 do
    numberValue15 = numberValue
    if stringHelper >= numberValue15 then
      break
    end
    numberValue6 = numberValue6 + mathHelper
  end
  flag2 = numberValue
  flag2 = flag2 + 0.0
  numberValue6 = numberValue6 / flag2
  flag2 = math
  flag2 = flag2.round
  flag3 = numberValue6
  numberValue10 = 1
  flag2 = flag2(flag3, numberValue10)
  flag3 = CMG
  flag3 = flag3.showWarningMessage
  numberValue10 = "BENCHMARK"
  flag4 = string
  flag4 = flag4.format
  stringHelper = "Average FPS: %s"
  mathHelper = flag2
  flag4, stringHelper, mathHelper, numberValue15 = flag4(stringHelper, mathHelper)
  flag3(numberValue10, flag4, stringHelper, mathHelper, numberValue15)
  flag3 = TriggerServerEvent
  numberValue10 = "fc507140b6"
  flag4 = flag2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fc507140b6".
  flag3(numberValue10, flag4)
  flag3 = CMG
  flag3 = flag3.cancelOverrideTimeWeather
  flag3()
  flag3 = CMG
  flag3 = flag3.showAllDisplays
  numberValue10 = "benchmark"
  flag3(numberValue10)
  flag3 = table
  flag3 = flag3.clear
  numberValue10 = numberValue9
  flag3(numberValue10)
  flag3 = 1
  numberValue12 = flag3
  flag3 = {}
  numberValue14 = flag3
  flag3 = 1
  numberValue = flag3
  flag3 = false
  numberValue7 = flag3
end
cmgCall = RegisterNetEvent
textValue = "1b2bb2e289"
-- Beginner: this function handles network event "1b2bb2e289".

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2
  arg1 = workValue6
  arg1()
  arg1 = workValue4
  arg2 = 1
  arg1(arg2)
  arg1 = workValue4
  arg2 = 2
  arg1(arg2)
  arg1 = workValue4
  arg2 = 3
  arg1(arg2)
  arg1 = workValue4
  arg2 = 4
  arg1(arg2)
  arg1 = workValue4
  arg2 = 5
  arg1(arg2)
  arg1 = workValue5
  arg1()
  arg1 = workValue4
  arg2 = 6
  arg1(arg2)
  arg1 = workValue7
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1b2bb2e289".
cmgCall(textValue, workValue8)
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2
  arg1 = numberValue7
  return arg1
end
cmgCall.isBenchmarking = textValue
cmgCall = AddEventHandler
textValue = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 == arg1 then
    arg2 = numberValue7
    if arg2 then
      arg2 = workValue7
      arg2()
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall(textValue, workValue8)
