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
local dataCollection, dataCollection2, createVector3, number7, number8, number9, number11, number12, number13, number14, number, workingValue, workingValue2, workingValue3, workingValue4, workingValue5, workingValue6, workingValue7, cmgOperation, text, workingValue8
dataCollection = {}
dataCollection2 = {}
createVector3 = vector3
number7 = -9.8369
number8 = -1474.088
number9 = 29.5453
createVector3 = createVector3(number7, number8, number9)
dataCollection2.position = createVector3
dataCollection2.heading = 5.4894
createVector3 = vector3
number7 = -3.0097
number8 = -1484.3165
number9 = 41.1898
createVector3 = createVector3(number7, number8, number9)
dataCollection2.cameraStartPosition = createVector3
createVector3 = vector3
number7 = 0.5292
number8 = 0.0
number8 = -number8
number9 = 24.6248
createVector3 = createVector3(number7, number8, number9)
dataCollection2.cameraStartRotation = createVector3
createVector3 = vector3
number7 = -13.842
number8 = -1454.4639
number9 = 32.9113
createVector3 = createVector3(number7, number8, number9)
dataCollection2.cameraEndPosition = createVector3
createVector3 = vector3
number7 = -2.4231
number8 = 0.0
number9 = 1.8101
createVector3 = createVector3(number7, number8, number9)
dataCollection2.cameraEndRotation = createVector3
dataCollection2.weather = "EXTRASUNNY"
createVector3 = {}
number7 = vector3
number8 = 806.0358
number9 = 1101.2482
number11 = 306.0945
number7 = number7(number8, number9, number11)
createVector3.position = number7
createVector3.heading = 348.7347
number7 = vector3
number8 = 804.6505
number9 = 1184.0697
number11 = 347.4004
number7 = number7(number8, number9, number11)
createVector3.cameraStartPosition = number7
number7 = vector3
number8 = -7.4378
number9 = 0.0
number9 = -number9
number11 = 110.8038
number7 = number7(number8, number9, number11)
createVector3.cameraStartRotation = number7
number7 = vector3
number8 = 771.2347
number9 = 1091.1151
number11 = 337.3588
number7 = number7(number8, number9, number11)
createVector3.cameraEndPosition = number7
number7 = vector3
number8 = -4.9158
number9 = 0.0
number9 = -number9
number11 = 22.8592
number7 = number7(number8, number9, number11)
createVector3.cameraEndRotation = number7
createVector3.weather = "SMOG"
number7 = {}
number8 = vector3
number9 = 2005.9663
number11 = 3803.6094
number12 = 31.1808
number8 = number8(number9, number11, number12)
number7.position = number8
number7.heading = 60.1616
number8 = vector3
number9 = 1987.1251
number11 = 3810.7661
number12 = 33.2256
number8 = number8(number9, number11, number12)
number7.cameraStartPosition = number8
number8 = vector3
number9 = -2.1421
number11 = 0.0
number11 = -number11
number12 = 37.1211
number8 = number8(number9, number11, number12)
number7.cameraStartRotation = number8
number8 = vector3
number9 = 1967.3821
number11 = 3840.4832
number12 = 54.8269
number8 = number8(number9, number11, number12)
number7.cameraEndPosition = number8
number8 = vector3
number9 = -1.2952
number11 = 0.0
number11 = -number11
number12 = 62.8825
number8 = number8(number9, number11, number12)
number7.cameraEndRotation = number8
number7.weather = "RAIN"
number8 = {}
number9 = vector3
number11 = -1713.2614
number12 = -1077.4807
number13 = 12.0172
number9 = number9(number11, number12, number13)
number8.position = number9
number8.heading = 18.823
number9 = vector3
number11 = -1705.3199
number12 = -1074.6646
number13 = 21.6983
number9 = number9(number11, number12, number13)
number8.cameraStartPosition = number9
number9 = vector3
number11 = 1.5777
number12 = 0.0
number12 = -number12
number13 = -163.0528
number9 = number9(number11, number12, number13)
number8.cameraStartRotation = number9
number9 = vector3
number11 = -1731.1056
number12 = -1098.6263
number13 = 24.3947
number9 = number9(number11, number12, number13)
number8.cameraEndPosition = number9
number9 = vector3
number11 = -3.393
number12 = 0.0
number12 = -number12
number13 = -109.8041
number9 = number9(number11, number12, number13)
number8.cameraEndRotation = number9
number8.weather = "CLEAR"
number9 = {}
number11 = vector3
number12 = -663.8303
number13 = 4484.105
number14 = 69.2669
number11 = number11(number12, number13, number14)
number9.position = number11
number9.heading = 238.4128
number11 = vector3
number12 = -608.3302
number13 = 4463.3027
number14 = 23.4348
number11 = number11(number12, number13, number14)
number9.cameraStartPosition = number11
number11 = vector3
number12 = -1.9612
number13 = 0.0
number14 = -127.5001
number11 = number11(number12, number13, number14)
number9.cameraStartRotation = number11
number11 = vector3
number12 = -615.5822
number13 = 4508.3086
number14 = 110.3908
number11 = number11(number12, number13, number14)
number9.cameraEndPosition = number11
number11 = vector3
number12 = -22.87
number13 = 0.0
number14 = -133.0594
number11 = number11(number12, number13, number14)
number9.cameraEndRotation = number11
number9.weather = "EXTRASUNNY"
number11 = {}
number12 = vector3
number13 = 234.57510375977
number14 = -1144.5062255859
number = 29.47513961792
number12 = number12(number13, number14, number)
number11.position = number12
number11.heading = 0.0
number12 = vector3
number13 = 216.51281738281
number14 = -1282.3959960938
number = 32.077880859375
number12 = number12(number13, number14, number)
number11.cameraStartPosition = number12
number12 = vector3
number13 = -0.98468792438507
number14 = 0.0
number14 = -number14
number = -0.036672409623861
number12 = number12(number13, number14, number)
number11.cameraStartRotation = number12
number12 = vector3
number13 = 241.12530517578
number14 = -995.49108886719
number = 31.893032073975
number12 = number12(number13, number14, number)
number11.cameraEndPosition = number12
number12 = vector3
number13 = 9.3380908966064
number14 = 0.0
number14 = -number14
number = 82.739128112793
number12 = number12(number13, number14, number)
number11.cameraEndRotation = number12
number11.weather = "XMAS"
dataCollection[1] = dataCollection2
dataCollection[2] = createVector3
dataCollection[3] = number7
dataCollection[4] = number8
dataCollection[5] = number9
dataCollection[6] = number11
dataCollection2 = {}
dataCollection2.handle = 0
dataCollection2.name = "pc_bench"
createVector3 = 0
number7 = false
number8 = vector3
number9 = 0.0
number11 = 0.0
number12 = 0.0
number8 = number8(number9, number11, number12)
number9 = {}
number11 = 25
number12 = 1
number13 = 0.0
number14 = {}
number = 1

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, number6, stateFlag2, stateFlag3, number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag, number3, number4
  localValue1 = InvalidateIdleCam
  localValue1()
  localValue1 = InvalidateVehicleIdleCam
  localValue1()
  localValue1 = HideHudAndRadarThisFrame
  localValue1()
  localValue1 = DisableControlAction
  localValue2 = 0
  number6 = 199
  stateFlag2 = true
  localValue1(localValue2, number6, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  number6 = 217
  stateFlag2 = true
  localValue1(localValue2, number6, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  number6 = 211
  stateFlag2 = true
  localValue1(localValue2, number6, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  number6 = 212
  stateFlag2 = true
  localValue1(localValue2, number6, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  number6 = 213
  stateFlag2 = true
  localValue1(localValue2, number6, stateFlag2)
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
  localValue1 = IsScreenFadedOut
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = IsScreenFadingOut
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = IsScreenFadingIn
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = Citizen
        localValue1 = localValue1.InvokeNative
        localValue2 = 8406597705123953709
        number6 = Citizen
        number6 = number6.ResultAsFloat
        number6, stateFlag2, stateFlag3, number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag, number3, number4 = number6()
        localValue1 = localValue1(localValue2, number6, stateFlag2, stateFlag3, number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag, number3, number4)
        localValue2 = 1
        localValue1 = localValue2 / localValue1
        number6 = number
        localValue2 = number14
        localValue2[number6] = localValue1
        localValue2 = number
        localValue2 = localValue2 + 1
        number = localValue2
        number6 = number12
        localValue2 = number9
        localValue2[number6] = localValue1
        localValue2 = number12
        localValue2 = localValue2 + 1
        number12 = localValue2
        localValue2 = number12
        number6 = number11
        if localValue2 > number6 then
          localValue2 = 1
          number12 = localValue2
          localValue2 = 0.0
          number13 = localValue2
          localValue2 = pairs
          number6 = number9
          localValue2, number6, stateFlag2, stateFlag3 = localValue2(number6)
          for number10, stateFlag4 in localValue2, number6, stateFlag2, stateFlag3 do
            stringHelper = number13
            stringHelper = stringHelper + stateFlag4
            number13 = stringHelper
          end
          localValue2 = number13
          number6 = number11
          number6 = number6 + 0.0
          localValue2 = localValue2 / number6
          number13 = localValue2
        end
        localValue2 = number13
        if localValue2 > 0.0 then
          localValue2 = DrawAdvancedText
          number6 = 0.5
          stateFlag2 = 0.8
          stateFlag3 = 0.0
          number10 = 0.0
          stateFlag4 = 2.0
          stringHelper = "FPS:"
          mathHelper = 255
          number15 = 255
          number2 = 255
          stateFlag = 255
          number3 = 0
          number4 = 0
          localValue2(number6, stateFlag2, stateFlag3, number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag, number3, number4)
          localValue2 = DrawAdvancedText
          number6 = 0.65
          stateFlag2 = 0.8
          stateFlag3 = 0.0
          number10 = 0.0
          stateFlag4 = 2.0
          stringHelper = tostring
          mathHelper = math
          mathHelper = mathHelper.round
          number15 = number13
          number2 = 1
          mathHelper, number15, number2, stateFlag, number3, number4 = mathHelper(number15, number2)
          stringHelper = stringHelper(mathHelper, number15, number2, stateFlag, number3, number4)
          mathHelper = 255
          number15 = 255
          number2 = 255
          stateFlag = 255
          number3 = 0
          number4 = 0
          localValue2(number6, stateFlag2, stateFlag3, number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag, number3, number4)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local number6, stateFlag2
  number6 = IsScreenFadedIn
  number6 = number6()
  if not number6 then
    number6 = IsScreenFadingOut
    number6 = number6()
    if not number6 then
      return
    end
  end
  number6 = DoScreenFadeOut
  stateFlag2 = localValue1
  number6(stateFlag2)
  if not localValue2 then
    return
  end
  while true do
    number6 = IsScreenFadedOut
    number6 = number6()
    if number6 then
      break
    end
    number6 = Wait
    stateFlag2 = 0
    number6(stateFlag2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2) ===
function workingValue3(localValue1, localValue2)
  local number6, stateFlag2
  number6 = IsScreenFadedOut
  number6 = number6()
  if not number6 then
    number6 = IsScreenFadingOut
    number6 = number6()
    if not number6 then
      return
    end
  end
  number6 = IsScreenFadingIn
  number6 = number6()
  if not number6 then
    number6 = DoScreenFadeIn
    stateFlag2 = localValue1
    number6(stateFlag2)
  end
  if localValue2 then
    while true do
      number6 = IsScreenFadingIn
      number6 = number6()
      if not number6 then
        break
      end
      number6 = Wait
      stateFlag2 = 0
      number6(stateFlag2)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, number6, stateFlag2, stateFlag3, number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag, number3, number4, number5
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  number6 = workingValue2
  stateFlag2 = 500
  stateFlag3 = true
  number6(stateFlag2, stateFlag3)
  number6 = RenderScriptCams
  stateFlag2 = false
  stateFlag3 = false
  number10 = 0
  stateFlag4 = false
  stringHelper = false
  number6(stateFlag2, stateFlag3, number10, stateFlag4, stringHelper)
  number6 = DestroyAllCams
  stateFlag2 = false
  number6(stateFlag2)
  number6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number6 = number6()
  stateFlag2 = SetEntityCoords
  stateFlag3 = number6
  number10 = localValue2.position
  number10 = number10.x
  stateFlag4 = localValue2.position
  stateFlag4 = stateFlag4.y
  stringHelper = localValue2.position
  stringHelper = stringHelper.z
  mathHelper = true
  number15 = false
  number2 = false
  stateFlag = true
  -- Beginner: Move/teleport an entity to new coordinates.
  stateFlag2(stateFlag3, number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag)
  stateFlag2 = SetEntityHeading
  stateFlag3 = number6
  number10 = localValue2.heading
  -- Beginner: Change the direction an entity is facing.
  stateFlag2(stateFlag3, number10)
  stateFlag2 = FreezeEntityPosition
  stateFlag3 = number6
  number10 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  stateFlag2(stateFlag3, number10)
  stateFlag2 = ForcePedAiAndAnimationUpdate
  stateFlag3 = number6
  number10 = true
  stateFlag4 = true
  stateFlag2(stateFlag3, number10, stateFlag4)
  stateFlag2 = SetGameplayCamRelativePitch
  stateFlag3 = 0.0
  number10 = 1.0
  stateFlag2(stateFlag3, number10)
  stateFlag2 = SetGameplayCamRelativeHeading
  stateFlag3 = 0.0
  stateFlag2(stateFlag3)
  stateFlag2 = ClearArea
  stateFlag3 = localValue2.position
  stateFlag3 = stateFlag3.x
  number10 = localValue2.position
  number10 = number10.y
  stateFlag4 = localValue2.position
  stateFlag4 = stateFlag4.z
  stringHelper = 100.0
  mathHelper = true
  number15 = false
  number2 = false
  stateFlag = false
  stateFlag2(stateFlag3, number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag)
  stateFlag2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag2 = stateFlag2()
  while true do
    stateFlag3 = GetNumberOfStreamingRequests
    stateFlag3 = stateFlag3()
    if not (stateFlag3 > 0) then
      break
    end
    stateFlag3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    stateFlag3 = stateFlag3()
    stateFlag3 = stateFlag3 - stateFlag2
    number10 = 5000
    if stateFlag3 > number10 then
      break
    end
    stateFlag3 = Wait
    number10 = 0
    stateFlag3(number10)
  end
  stateFlag3 = LoadAllObjectsNow
  stateFlag3()
  stateFlag3 = CMG
  stateFlag3 = stateFlag3.setWeather
  number10 = localValue2.weather
  stateFlag4 = false
  stateFlag3(number10, stateFlag4)
  stateFlag3 = CMG
  stateFlag3 = stateFlag3.overrideTime
  number10 = 12
  stateFlag4 = 0
  stringHelper = 0
  stateFlag3(number10, stateFlag4, stringHelper)
  stateFlag3 = CreateCam
  number10 = "DEFAULT_SPLINE_CAMERA"
  stateFlag4 = false
  -- Beginner: result below is cameraHandle.
  stateFlag3 = stateFlag3(number10, stateFlag4)
  createVector3 = stateFlag3
  stateFlag3 = AddCamSplineNode
  number10 = createVector3
  stateFlag4 = localValue2.cameraStartPosition
  stateFlag4 = stateFlag4.x
  stringHelper = localValue2.cameraStartPosition
  stringHelper = stringHelper.y
  mathHelper = localValue2.cameraStartPosition
  mathHelper = mathHelper.z
  number15 = localValue2.cameraStartRotation
  number15 = number15.x
  number2 = localValue2.cameraStartRotation
  number2 = number2.y
  stateFlag = localValue2.cameraStartRotation
  stateFlag = stateFlag.z
  number3 = 15000
  number4 = 3
  number5 = 2
  stateFlag3(number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag, number3, number4, number5)
  stateFlag3 = AddCamSplineNode
  number10 = createVector3
  stateFlag4 = localValue2.cameraEndPosition
  stateFlag4 = stateFlag4.x
  stringHelper = localValue2.cameraEndPosition
  stringHelper = stringHelper.y
  mathHelper = localValue2.cameraEndPosition
  mathHelper = mathHelper.z
  number15 = localValue2.cameraEndRotation
  number15 = number15.x
  number2 = localValue2.cameraEndRotation
  number2 = number2.y
  stateFlag = localValue2.cameraEndRotation
  stateFlag = stateFlag.z
  number3 = 15000
  number4 = 3
  number5 = 2
  stateFlag3(number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag, number3, number4, number5)
  stateFlag3 = SetCamSplinePhase
  number10 = createVector3
  stateFlag4 = 0.0
  stateFlag3(number10, stateFlag4)
  stateFlag3 = SetCamFov
  number10 = createVector3
  stateFlag4 = 50.0
  stateFlag3(number10, stateFlag4)
  stateFlag3 = SetCamSplineSmoothingStyle
  number10 = createVector3
  stateFlag4 = 3
  stateFlag3(number10, stateFlag4)
  stateFlag3 = SetCamActive
  number10 = createVector3
  stateFlag4 = true
  stateFlag3(number10, stateFlag4)
  stateFlag3 = RenderScriptCams
  number10 = true
  stateFlag4 = false
  stringHelper = 0
  mathHelper = false
  number15 = false
  stateFlag3(number10, stateFlag4, stringHelper, mathHelper, number15)
  while true do
    stateFlag3 = GetCamSplinePhase
    number10 = createVector3
    stateFlag3 = stateFlag3(number10)
    number10 = 0.05
    if not (stateFlag3 < number10) then
      break
    end
    stateFlag3 = Wait
    number10 = 0
    stateFlag3(number10)
  end
  stateFlag3 = workingValue3
  number10 = 500
  stateFlag4 = false
  stateFlag3(number10, stateFlag4)
  while true do
    stateFlag3 = GetCamSplinePhase
    number10 = createVector3
    stateFlag3 = stateFlag3(number10)
    number10 = 0.88
    if stateFlag3 > number10 then
      break
    end
    number10 = stateFlag3 - 0.05
    number10 = number10 / 0.83
    stateFlag4 = math
    stateFlag4 = stateFlag4.floor
    stringHelper = 1440 * number10
    stateFlag4 = stateFlag4(stringHelper)
    stateFlag4 = stateFlag4 + 720
    stringHelper = math
    stringHelper = stringHelper.floor
    mathHelper = stateFlag4 / 60
    stringHelper = stringHelper(mathHelper)
    mathHelper = stateFlag4 % 60
    if stringHelper >= 24 then
      stringHelper = stringHelper - 24
    end
    number15 = CMG
    number15 = number15.overrideTime
    number2 = stringHelper
    stateFlag = mathHelper
    number3 = 0
    number15(number2, stateFlag, number3)
    number15 = Wait
    number2 = 0
    number15(number2)
  end
  if 5 ~= localValue1 then
    stateFlag3 = workingValue2
    number10 = 500
    stateFlag4 = true
    stateFlag3(number10, stateFlag4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, number6, stateFlag2, stateFlag3, number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag, number3, number4
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = -1281684762
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue1(localValue2)
  localValue1 = RequestVehicleRecording
  localValue2 = dataCollection2.handle
  number6 = dataCollection2.name
  localValue1(localValue2, number6)
  while true do
    localValue1 = HasVehicleRecordingBeenLoaded
    localValue2 = dataCollection2.handle
    number6 = dataCollection2.name
    localValue1 = localValue1(localValue2, number6)
    if localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = CMG
  localValue1 = localValue1.overrideTime
  localValue2 = 12
  number6 = 0
  stateFlag2 = 0
  localValue1(localValue2, number6, stateFlag2)
  localValue1 = CMG
  localValue1 = localValue1.setWeather
  localValue2 = "EXTRASUNNY"
  localValue1(localValue2)
  localValue1 = GetVehicleRecordingId
  localValue2 = dataCollection2.handle
  number6 = dataCollection2.name
  localValue1 = localValue1(localValue2, number6)
  localValue2 = GetPositionOfVehicleRecordingAtTime
  number6 = localValue1
  stateFlag2 = 4500.0
  stateFlag3 = nil
  localValue2 = localValue2(number6, stateFlag2, stateFlag3)
  number6 = GetRotationOfVehicleRecordingAtTime
  stateFlag2 = localValue1
  stateFlag3 = 4500.0
  number10 = nil
  number6 = number6(stateFlag2, stateFlag3, number10)
  stateFlag2 = CMG
  stateFlag2 = stateFlag2.spawnVehicle
  stateFlag3 = -1281684762
  number10 = localValue2.x
  stateFlag4 = localValue2.y
  stringHelper = localValue2.z
  mathHelper = number6.z
  number15 = false
  number2 = false
  stateFlag = false
  stateFlag2 = stateFlag2(stateFlag3, number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag)
  stateFlag3 = SetEntityInvincible
  number10 = stateFlag2
  stateFlag4 = true
  stateFlag3(number10, stateFlag4)
  stateFlag3 = SetVehicleEngineOn
  number10 = stateFlag2
  stateFlag4 = true
  stringHelper = true
  mathHelper = false
  stateFlag3(number10, stateFlag4, stringHelper, mathHelper)
  stateFlag3 = SetVehicleCanBeVisiblyDamaged
  number10 = stateFlag2
  stateFlag4 = false
  stateFlag3(number10, stateFlag4)
  stateFlag3 = SetVehicleCanBreak
  number10 = stateFlag2
  stateFlag4 = false
  stateFlag3(number10, stateFlag4)
  stateFlag3 = SetEntityProofs
  number10 = stateFlag2
  stateFlag4 = true
  stringHelper = true
  mathHelper = true
  number15 = true
  number2 = true
  stateFlag = true
  number3 = true
  number4 = true
  stateFlag3(number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag, number3, number4)
  stateFlag3 = ControlLandingGear
  number10 = stateFlag2
  stateFlag4 = 3
  stateFlag3(number10, stateFlag4)
  stateFlag3 = SetEntityLodDist
  number10 = stateFlag2
  stateFlag4 = 500
  stateFlag3(number10, stateFlag4)
  stateFlag3 = StartPlaybackRecordedVehicle
  number10 = stateFlag2
  stateFlag4 = dataCollection2.handle
  stringHelper = dataCollection2.name
  mathHelper = true
  stateFlag3(number10, stateFlag4, stringHelper, mathHelper)
  stateFlag3 = SkipTimeInPlaybackRecordedVehicle
  number10 = stateFlag2
  stateFlag4 = 4500.0
  stateFlag3(number10, stateFlag4)
  stateFlag3 = SetPedIntoVehicle
  number10 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number10 = number10()
  stateFlag4 = stateFlag2
  stringHelper = -1
  stateFlag3(number10, stateFlag4, stringHelper)
  stateFlag3 = RenderScriptCams
  number10 = false
  stateFlag4 = true
  stringHelper = 10000
  mathHelper = true
  number15 = false
  stateFlag3(number10, stateFlag4, stringHelper, mathHelper, number15)
  stateFlag3 = workingValue3
  number10 = 500
  stateFlag4 = false
  stateFlag3(number10, stateFlag4)
  while true do
    stateFlag3 = DoesEntityExist
    number10 = stateFlag2
    stateFlag3 = stateFlag3(number10)
    if not stateFlag3 then
      break
    end
    stateFlag3 = SetPlaybackSpeed
    number10 = stateFlag2
    stateFlag4 = 2.0
    stateFlag3(number10, stateFlag4)
    stateFlag3 = SetGameplayCamRelativePitch
    number10 = 0.0
    stateFlag4 = 1.0
    stateFlag3(number10, stateFlag4)
    stateFlag3 = SetGameplayCamRelativeHeading
    number10 = 0.0
    stateFlag3(number10)
    stateFlag3 = math
    stateFlag3 = stateFlag3.floor
    number10 = GetTimePositionInRecording
    stateFlag4 = stateFlag2
    number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag, number3, number4 = number10(stateFlag4)
    stateFlag3 = stateFlag3(number10, stateFlag4, stringHelper, mathHelper, number15, number2, stateFlag, number3, number4)
    number10 = 104000
    if stateFlag3 > number10 then
      break
    end
    number10 = Wait
    stateFlag4 = 0
    number10(stateFlag4)
  end
  stateFlag3 = workingValue2
  number10 = 500
  stateFlag4 = true
  stateFlag3(number10, stateFlag4)
  stateFlag3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stateFlag3 = stateFlag3()
  number10 = DoesEntityExist
  stateFlag4 = stateFlag2
  number10 = number10(stateFlag4)
  if number10 then
    number10 = IsPedInVehicle
    stateFlag4 = stateFlag3
    stringHelper = stateFlag2
    mathHelper = false
    number10 = number10(stateFlag4, stringHelper, mathHelper)
    if number10 then
      number10 = TaskLeaveVehicle
      stateFlag4 = stateFlag3
      stringHelper = stateFlag2
      mathHelper = 16
      number10(stateFlag4, stringHelper, mathHelper)
      number10 = Wait
      stateFlag4 = 0
      number10(stateFlag4)
    end
    number10 = StopPlaybackRecordedVehicle
    stateFlag4 = stateFlag2
    number10(stateFlag4)
    number10 = DeleteEntity
    stateFlag4 = stateFlag2
    -- Beginner: Delete a GTA entity.
    number10(stateFlag4)
  end
  number10 = SetModelAsNoLongerNeeded
  stateFlag4 = -1281684762
  number10(stateFlag4)
  number10 = RemoveVehicleRecording
  stateFlag4 = dataCollection2.handle
  stringHelper = dataCollection2.name
  number10(stateFlag4, stringHelper)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, number6, stateFlag2, stateFlag3, number10
  localValue1 = true
  number7 = localValue1
  localValue1 = table
  localValue1 = localValue1.create
  localValue2 = 60000
  number6 = 0
  localValue1 = localValue1(localValue2, number6)
  number14 = localValue1
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = SetEntityInvincible
  number6 = localValue1
  stateFlag2 = false
  localValue2(number6, stateFlag2)
  localValue2 = GetEntityCoords
  number6 = localValue1
  stateFlag2 = true
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(number6, stateFlag2)
  number8 = localValue2
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  number6 = SetPlayerControl
  stateFlag2 = localValue2
  stateFlag3 = false
  number10 = 0
  number6(stateFlag2, stateFlag3, number10)
  number6 = SetEveryoneIgnorePlayer
  stateFlag2 = localValue2
  stateFlag3 = true
  number6(stateFlag2, stateFlag3)
  number6 = CMG
  number6 = number6.createThreadOnTick
  stateFlag2 = workingValue
  stateFlag3 = "Benchmark"
  -- Beginner: Run a helper every game frame while this script is active.
  number6(stateFlag2, stateFlag3)
  number6 = CMG
  number6 = number6.hideAllDisplays
  stateFlag2 = "benchmark"
  number6(stateFlag2)
  number6 = workingValue2
  stateFlag2 = 500
  stateFlag3 = true
  number6(stateFlag2, stateFlag3)
  number6 = AnimpostfxStopAll
  number6()
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, number6, stateFlag2, stateFlag3, number10, stateFlag4, stringHelper, mathHelper, number15
  localValue1 = CMG
  localValue1 = localValue1.deleteThreadOnTick
  localValue2 = workingValue
  localValue1(localValue2)
  localValue1 = RenderScriptCams
  localValue2 = false
  number6 = false
  stateFlag2 = 0
  stateFlag3 = false
  number10 = false
  localValue1(localValue2, number6, stateFlag2, stateFlag3, number10)
  localValue1 = SetCamActive
  localValue2 = createVector3
  number6 = false
  localValue1(localValue2, number6)
  localValue1 = DestroyCam
  localValue2 = createVector3
  number6 = false
  localValue1(localValue2, number6)
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = SetEntityInvincible
  number6 = localValue1
  stateFlag2 = false
  localValue2(number6, stateFlag2)
  localValue2 = SetEntityCoords
  number6 = localValue1
  stateFlag2 = number8.x
  stateFlag3 = number8.y
  number10 = number8.z
  stateFlag4 = true
  stringHelper = false
  mathHelper = false
  number15 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue2(number6, stateFlag2, stateFlag3, number10, stateFlag4, stringHelper, mathHelper, number15)
  localValue2 = FreezeEntityPosition
  number6 = localValue1
  stateFlag2 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(number6, stateFlag2)
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  number6 = SetPlayerControl
  stateFlag2 = localValue2
  stateFlag3 = true
  number10 = 0
  number6(stateFlag2, stateFlag3, number10)
  number6 = SetEveryoneIgnorePlayer
  stateFlag2 = localValue2
  stateFlag3 = false
  number6(stateFlag2, stateFlag3)
  number6 = workingValue3
  stateFlag2 = 500
  stateFlag3 = false
  number6(stateFlag2, stateFlag3)
  number6 = 0.0
  stateFlag2 = pairs
  stateFlag3 = number14
  stateFlag2, stateFlag3, number10, stateFlag4 = stateFlag2(stateFlag3)
  for stringHelper, mathHelper in stateFlag2, stateFlag3, number10, stateFlag4 do
    number15 = number
    if stringHelper >= number15 then
      break
    end
    number6 = number6 + mathHelper
  end
  stateFlag2 = number
  stateFlag2 = stateFlag2 + 0.0
  number6 = number6 / stateFlag2
  stateFlag2 = math
  stateFlag2 = stateFlag2.round
  stateFlag3 = number6
  number10 = 1
  stateFlag2 = stateFlag2(stateFlag3, number10)
  stateFlag3 = CMG
  stateFlag3 = stateFlag3.showWarningMessage
  number10 = "BENCHMARK"
  stateFlag4 = string
  stateFlag4 = stateFlag4.format
  stringHelper = "Average FPS: %s"
  mathHelper = stateFlag2
  stateFlag4, stringHelper, mathHelper, number15 = stateFlag4(stringHelper, mathHelper)
  stateFlag3(number10, stateFlag4, stringHelper, mathHelper, number15)
  stateFlag3 = TriggerServerEvent
  number10 = "fc507140b6"
  stateFlag4 = stateFlag2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fc507140b6".
  stateFlag3(number10, stateFlag4)
  stateFlag3 = CMG
  stateFlag3 = stateFlag3.cancelOverrideTimeWeather
  stateFlag3()
  stateFlag3 = CMG
  stateFlag3 = stateFlag3.showAllDisplays
  number10 = "benchmark"
  stateFlag3(number10)
  stateFlag3 = table
  stateFlag3 = stateFlag3.clear
  number10 = number9
  stateFlag3(number10)
  stateFlag3 = 1
  number12 = stateFlag3
  stateFlag3 = {}
  number14 = stateFlag3
  stateFlag3 = 1
  number = stateFlag3
  stateFlag3 = false
  number7 = stateFlag3
end
cmgOperation = RegisterNetEvent
text = "1b2bb2e289"
-- Beginner: this function handles network event "1b2bb2e289".

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2
  localValue1 = workingValue6
  localValue1()
  localValue1 = workingValue4
  localValue2 = 1
  localValue1(localValue2)
  localValue1 = workingValue4
  localValue2 = 2
  localValue1(localValue2)
  localValue1 = workingValue4
  localValue2 = 3
  localValue1(localValue2)
  localValue1 = workingValue4
  localValue2 = 4
  localValue1(localValue2)
  localValue1 = workingValue4
  localValue2 = 5
  localValue1(localValue2)
  localValue1 = workingValue5
  localValue1()
  localValue1 = workingValue4
  localValue2 = 6
  localValue1(localValue2)
  localValue1 = workingValue7
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1b2bb2e289".
cmgOperation(text, workingValue8)
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2
  localValue1 = number7
  return localValue1
end
cmgOperation.isBenchmarking = text
cmgOperation = AddEventHandler
text = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 == localValue1 then
    localValue2 = number7
    if localValue2 then
      localValue2 = workingValue7
      localValue2()
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation(text, workingValue8)
