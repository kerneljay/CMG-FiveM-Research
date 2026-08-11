--[[
    LEVEL 1 BEGINNER GUIDE — Golf
    ==================================

    File: cmg/prod/client/events/cl_golf.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Golf feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 32
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
local numberValue, numberValue14, numberValue22, flag22, numberValue25, numberValue26, numberValue28, flag23, flag24, numberValue32, numberValue2, flag3, workValue, workValue2, workValue3, workValue4, textValue, numberValue11, flag9, numberValue13, numberValue15, numberValue18, dataTable, dataTable2, dataTable3, dataTable4, dataTable5, vector3Builder, numberValue20, numberValue21, numberValue23, workValue7, workValue8, eventRegistration, cmgCall2, workValue9, textValue3, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, eventHandlerRegistration, cmgCall3, workValue20
numberValue = 0
numberValue14 = 0
numberValue22 = 0
flag22 = false
numberValue25 = 1
numberValue26 = 1
numberValue28 = 1
flag23 = false
flag24 = false
numberValue32 = 0.1
numberValue2 = 0
flag3 = false
workValue = nil
workValue2 = nil
workValue3 = nil
workValue4 = nil
textValue = "None"
numberValue11 = 0
flag9 = false
numberValue13 = 0
numberValue15 = 0
numberValue18 = 0
dataTable = {}
dataTable.ironshufflehigh = "iron_shuffle_high"
dataTable.ironshufflelow = "iron_shuffle_low"
dataTable.ironshuffle = "iron_shuffle"
dataTable.ironswinghigh = "iron_swing_action_high"
dataTable.ironswinglow = "iron_swing_action_low"
dataTable.ironidlehigh = "iron_swing_idle_high"
dataTable.ironidlelow = "iron_swing_idle_low"
dataTable.ironidle = "iron_shuffle"
dataTable.ironswingintro = "iron_swing_intro_high"
dataTable2 = {}
dataTable2.puttshufflelow = "iron_shuffle_low"
dataTable2.puttshuffle = "iron_shuffle"
dataTable2.puttswinglow = "putt_action_low"
dataTable2.puttidle = "putt_idle_low"
dataTable2.puttintro = "putt_intro_low"
dataTable3 = {}
dataTable4 = {}
dataTable4.model = 886428669
dataTable4.bone = 24816
dataTable4.x = 0.12
dataTable4.y = -0.3
dataTable4.z = 0.0
dataTable4.xR = -75.0
dataTable4.yR = 190.0
dataTable4.zR = 92.0
dataTable3.golfbag01 = dataTable4
dataTable4 = {}
dataTable4.model = 1750479612
dataTable4.bone = 57005
dataTable4.x = 0.0
dataTable4.y = -0.05
dataTable4.z = 0.0
dataTable4.xR = 90.0
dataTable4.yR = -118.0
dataTable4.zR = 44.0
dataTable3.golfputter01 = dataTable4
dataTable4 = {}
dataTable4.model = 334347537
dataTable4.bone = 57005
dataTable4.x = 0.125
dataTable4.y = 0.04
dataTable4.z = 0.0
dataTable4.xR = 90.0
dataTable4.yR = -118.0
dataTable4.zR = 44.0
dataTable3.golfiron01 = dataTable4
dataTable4 = {}
dataTable4.model = 334347537
dataTable4.bone = 57005
dataTable4.x = 0.126
dataTable4.y = 0.041
dataTable4.z = 0.0
dataTable4.xR = 90.0
dataTable4.yR = -118.0
dataTable4.zR = 44.0
dataTable3.golfiron03 = dataTable4
dataTable4 = {}
dataTable4.model = 334347537
dataTable4.bone = 57005
dataTable4.x = 0.127
dataTable4.y = 0.042
dataTable4.z = 0.0
dataTable4.xR = 90.0
dataTable4.yR = -118.0
dataTable4.zR = 44.0
dataTable3.golfiron05 = dataTable4
dataTable4 = {}
dataTable4.model = 334347537
dataTable4.bone = 57005
dataTable4.x = 0.128
dataTable4.y = 0.043
dataTable4.z = 0.0
dataTable4.xR = 90.0
dataTable4.yR = -118.0
dataTable4.zR = 44.0
dataTable3.golfiron07 = dataTable4
dataTable4 = {}
dataTable4.model = 1933637837
dataTable4.bone = 57005
dataTable4.x = 0.17
dataTable4.y = 0.04
dataTable4.z = 0.0
dataTable4.xR = 90.0
dataTable4.yR = -118.0
dataTable4.zR = 44.0
dataTable3.golfwedge01 = dataTable4
dataTable4 = {}
dataTable4.model = -2141023172
dataTable4.bone = 57005
dataTable4.x = 0.14
dataTable4.y = 0.0
dataTable4.z = 0.0
dataTable4.xR = 160.0
dataTable4.yR = -60.0
dataTable4.zR = 10.0
dataTable3.golfdriver01 = dataTable4
dataTable4 = {}
dataTable5 = {}
dataTable5.par = 5
vector3Builder = vector3
numberValue20 = -1371.3370361328
numberValue21 = 173.09497070313
numberValue23 = 57.013027191162
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.startHole = vector3Builder
vector3Builder = vector3
numberValue20 = -1114.2274169922
numberValue21 = 220.8424987793
numberValue23 = 63.89478302
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.endHole = vector3Builder
dataTable4[1] = dataTable5
dataTable5 = {}
dataTable5.par = 4
vector3Builder = vector3
numberValue20 = -1107.1888427734
numberValue21 = 156.581298828
numberValue23 = 62.03958129882
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.startHole = vector3Builder
vector3Builder = vector3
numberValue20 = -1322.0944824219
numberValue21 = 158.8779296875
numberValue23 = 56.80027008056
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.endHole = vector3Builder
dataTable4[2] = dataTable5
dataTable5 = {}
dataTable5.par = 3
vector3Builder = vector3
numberValue20 = -1312.1020507813
numberValue21 = 125.8329391479
numberValue23 = 56.4341888427
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.startHole = vector3Builder
vector3Builder = vector3
numberValue20 = -1237.347412109
numberValue21 = 112.9838562011
numberValue23 = 56.20140075683
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.endHole = vector3Builder
dataTable4[3] = dataTable5
dataTable5 = {}
dataTable5.par = 4
vector3Builder = vector3
numberValue20 = -1216.913208007
numberValue21 = 106.9870910644
numberValue23 = 57.03926086425
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.startHole = vector3Builder
vector3Builder = vector3
numberValue20 = -1096.6276855469
numberValue21 = 7.780227184295
numberValue23 = 49.73574447631
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.endHole = vector3Builder
dataTable4[4] = dataTable5
dataTable5 = {}
dataTable5.par = 4
vector3Builder = vector3
numberValue20 = -1097.85961914
numberValue21 = 66.41466522216
numberValue23 = 52.92545700073
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.startHole = vector3Builder
vector3Builder = vector3
numberValue20 = -957.4982910156
numberValue21 = -90.37551879882
numberValue23 = 39.2753639221
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.endHole = vector3Builder
dataTable4[5] = dataTable5
dataTable5 = {}
dataTable5.par = 3
vector3Builder = vector3
numberValue20 = -987.7417602539
numberValue21 = -105.0764007568
numberValue23 = 39.585887908936
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.startHole = vector3Builder
vector3Builder = vector3
numberValue20 = -1103.506958007
numberValue21 = -115.2364349365
numberValue23 = 40.55868911743
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.endHole = vector3Builder
dataTable4[6] = dataTable5
dataTable5 = {}
dataTable5.par = 4
vector3Builder = vector3
numberValue20 = -1117.0194091797
numberValue21 = -103.8586044311
numberValue23 = 40.8405838012
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.startHole = vector3Builder
vector3Builder = vector3
numberValue20 = -1290.536499023
numberValue21 = 2.7952194213867
numberValue23 = 49.34057998657
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.endHole = vector3Builder
dataTable4[7] = dataTable5
dataTable5 = {}
dataTable5.par = 5
vector3Builder = vector3
numberValue20 = -1272.251831054
numberValue21 = 38.04283142089
numberValue23 = 48.72544860839
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.startHole = vector3Builder
vector3Builder = vector3
numberValue20 = -1034.80187988
numberValue21 = -83.16706085205
numberValue23 = 43.0353431701
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.endHole = vector3Builder
dataTable4[8] = dataTable5
dataTable5 = {}
dataTable5.par = 4
vector3Builder = vector3
numberValue20 = -1138.319580078
numberValue21 = -0.1342505216598
numberValue23 = 47.98218917846
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.startHole = vector3Builder
vector3Builder = vector3
numberValue20 = -1294.685913085
numberValue21 = 83.5762557983
numberValue23 = 53.92817306518
vector3Builder = vector3Builder(numberValue20, numberValue21, numberValue23)
dataTable5.endHole = vector3Builder
dataTable4[9] = dataTable5

-- === HELPER FUNCTION (decompiler name: dataTable5; parameters: arg1, arg2, arg3) ===
function dataTable5(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8
  arg4 = BeginTextCommandDisplayHelp
  arg5 = "STRING"
  arg4(arg5)
  arg4 = AddTextComponentSubstringPlayerName
  arg5 = arg1
  arg4(arg5)
  arg4 = EndTextCommandDisplayHelp
  arg5 = 0
  arg6 = false
  arg7 = arg2
  arg8 = arg3
  arg4(arg5, arg6, arg7, arg8)
end

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: none) ===
function vector3Builder()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5, cmgCall
  arg1 = CMG
  arg1 = arg1.hideAllDisplays
  arg2 = "golf"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = SetFocusPosAndVel
  arg4 = -1364.8052978516
  arg5 = 166.98794555664
  arg6 = 58.013092041016
  arg7 = 0.0
  arg8 = 0.0
  flag25 = 0.0
  arg3(arg4, arg5, arg6, arg7, arg8, flag25)
  arg3 = CreateCameraWithParams
  arg4 = "DEFAULT_SCRIPTED_CAMERA"
  arg5 = -1364.8052978516
  arg6 = 166.98794555664
  arg7 = 64.013092041016
  arg8 = 0.0
  flag25 = 0.0
  numberValue33 = 0.0
  flag2 = 65.0
  flag4 = false
  flag5 = 2
  arg3 = arg3(arg4, arg5, arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5)
  arg4 = PointCamAtCoord
  arg5 = arg3
  arg6 = -1371.0968017578
  arg7 = 173.33917236328
  arg8 = 58.013034820557
  arg4(arg5, arg6, arg7, arg8)
  arg4 = SetCamActive
  arg5 = arg3
  arg6 = true
  arg4(arg5, arg6)
  arg4 = RenderScriptCams
  arg5 = true
  arg6 = true
  arg7 = 0
  arg8 = true
  flag25 = false
  arg4(arg5, arg6, arg7, arg8, flag25)
  arg4 = CreateCameraWithParams
  arg5 = "DEFAULT_SCRIPTED_CAMERA"
  arg6 = -1367.5961914063
  arg7 = 176.40940856934
  arg8 = 64.013084411621
  flag25 = 0.0
  numberValue33 = 0.0
  flag2 = 0.0
  flag4 = 65.0
  flag5 = false
  cmgCall = 2
  arg4 = arg4(arg5, arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5, cmgCall)
  arg5 = PointCamAtCoord
  arg6 = arg4
  arg7 = -1371.0968017578
  arg8 = 173.33917236328
  flag25 = 58.013034820557
  arg5(arg6, arg7, arg8, flag25)
  arg5 = SetCamActiveWithInterp
  arg6 = arg4
  arg7 = arg3
  arg8 = 14000
  flag25 = 5
  numberValue33 = 5
  arg5(arg6, arg7, arg8, flag25, numberValue33)
  arg5 = dataTable5
  arg6 = "To play golf, you must first go to the location of where your ball is (white blip)"
  arg7 = true
  arg8 = 8000
  arg5(arg6, arg7, arg8)
  arg5 = Wait
  arg6 = 7000
  arg5(arg6)
  arg5 = dataTable5
  arg6 = "Next, you must swing the ball towards the hole (red golf marker on your map)"
  arg7 = false
  arg8 = 8000
  arg5(arg6, arg7, arg8)
  arg5 = Wait
  arg6 = 7000
  arg5(arg6)
  arg5 = PointCamAtCoord
  arg6 = arg3
  arg7 = -1114.1766357422
  arg8 = 220.724609375
  flag25 = 64.893432617188
  arg5(arg6, arg7, arg8, flag25)
  arg5 = PointCamAtCoord
  arg6 = arg4
  arg7 = -1114.1766357422
  arg8 = 220.724609375
  flag25 = 64.893432617188
  arg5(arg6, arg7, arg8, flag25)
  arg5 = SetCamCoord
  arg6 = arg3
  arg7 = -1112.6385498047
  arg8 = 211.25141906738
  flag25 = 64.905075073242
  arg5(arg6, arg7, arg8, flag25)
  arg5 = SetCamCoord
  arg6 = arg4
  arg7 = -1108.9538574219
  arg8 = 223.51953125
  flag25 = 64.759399414063
  arg5(arg6, arg7, arg8, flag25)
  arg5 = SetCamActiveWithInterp
  arg6 = arg4
  arg7 = arg3
  arg8 = 14000
  flag25 = 5
  numberValue33 = 5
  arg5(arg6, arg7, arg8, flag25, numberValue33)
  arg5 = dataTable5
  arg6 = "Your aim is to get the ball as close to the hole as possible to finish that hole."
  arg7 = false
  arg8 = 8000
  arg5(arg6, arg7, arg8)
  arg5 = Wait
  arg6 = 7000
  arg5(arg6)
  arg5 = dataTable5
  arg6 = "Once complete, you will move on to the next hole where a ball is already placed for you. Good luck!"
  arg7 = false
  arg8 = 8000
  arg5(arg6, arg7, arg8)
  arg5 = Wait
  arg6 = 7000
  arg5(arg6)
  arg5 = DestroyCam
  arg6 = arg3
  arg7 = false
  arg5(arg6, arg7)
  arg5 = DestroyCam
  arg6 = arg4
  arg7 = false
  arg5(arg6, arg7)
  arg5 = RenderScriptCams
  arg6 = false
  arg7 = true
  arg8 = 3000
  flag25 = true
  numberValue33 = false
  arg5(arg6, arg7, arg8, flag25, numberValue33)
  arg5 = ClearFocus
  arg5()
  arg5 = FreezeEntityPosition
  arg6 = arg1
  arg7 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg5(arg6, arg7)
  arg5 = SetEntityCoords
  arg6 = arg1
  arg7 = arg2.x
  arg8 = arg2.y
  flag25 = arg2.z
  numberValue33 = true
  flag2 = false
  flag4 = false
  flag5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg5(arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5)
  arg5 = CMG
  arg5 = arg5.showAllDisplays
  arg6 = "golf"
  arg5(arg6)
end

-- === HELPER FUNCTION (decompiler name: numberValue20; parameters: none) ===
function numberValue20()
  local arg1, arg2
  arg1 = DeleteEntity
  arg2 = numberValue15
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = 0
  numberValue15 = arg1
end

-- === HELPER FUNCTION (decompiler name: numberValue21; parameters: arg1) ===
function numberValue21(arg1)
  local arg2, arg3, arg4, arg5
  if arg1 then
    arg2 = notify
    arg3 = "You have successfully completed all holes in "
    arg4 = tostring
    arg5 = numberValue22
    arg4 = arg4(arg5)
    arg5 = " strokes!"
    arg3 = arg3 .. arg4 .. arg5
    -- Beginner: Show a notification to the player.
    arg2(arg3)
  end
  arg2 = DeleteEntity
  arg3 = numberValue11
  -- Beginner: Delete a GTA entity.
  arg2(arg3)
  arg2 = numberValue20
  arg2()
  arg2 = DeleteObject
  arg3 = numberValue2
  arg2(arg3)
  arg2 = tCMG
  arg2 = arg2.removeBlip
  arg3 = workValue
  arg2(arg3)
  arg2 = tCMG
  arg2 = arg2.removeBlip
  arg3 = workValue2
  arg2(arg3)
  arg2 = tCMG
  arg2 = arg2.removeBlip
  arg3 = workValue4
  arg2(arg3)
  arg2 = tCMG
  arg2 = arg2.removeMarker
  arg3 = workValue3
  arg2(arg3)
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 5000
  arg2(arg3)
  arg2 = 0
  numberValue = arg2
  arg2 = 0
  numberValue14 = arg2
  arg2 = false
  flag22 = arg2
  arg2 = 1
  numberValue25 = arg2
  arg2 = 1
  numberValue26 = arg2
  arg2 = 1
  numberValue28 = arg2
  arg2 = false
  flag23 = arg2
  arg2 = false
  flag24 = arg2
  arg2 = 0
  numberValue11 = arg2
end
numberValue23 = Citizen
numberValue23 = numberValue23.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5
  arg1 = Citizen
  arg1 = arg1.Wait
  arg2 = 5000
  arg1(arg2)
  arg1 = vector3
  arg2 = -1350.1905517578
  arg3 = 134.2918548584
  arg4 = 55.256828308105
  arg1 = arg1(arg2, arg3, arg4)

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local flag, textValue2
    flag = true
    flag9 = flag
  end

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local flag, textValue2
    flag = false
    flag9 = flag
  end

  -- === HELPER FUNCTION: arg4() ===
  function arg4()
    local flag, textValue2, flag21, numberValue24, workValue21, numberValue27, numberValue29, numberValue30, numberValue31, numberValue34, numberValue3, numberValue4, numberValue5, numberValue6, numberValue8, numberValue9, numberValue10, numberValue12, flag11, flag13, numberValue17, flag15, workValue5, workValue6, flag19
    flag = flag22
    if flag then
      flag = dataTable5
      textValue2 = "Press ~INPUT_CONTEXT~ to end golf"
      flag21 = false
      numberValue24 = -1
      flag(textValue2, flag21, numberValue24)
    else
      flag = dataTable5
      textValue2 = "Press ~INPUT_CONTEXT~ to start golf (\194\1635,000)"
      flag21 = false
      numberValue24 = -1
      flag(textValue2, flag21, numberValue24)
    end
    flag = DrawMarker
    textValue2 = 27
    flag21 = arg1.x
    numberValue24 = arg1.y
    workValue21 = arg1.z
    numberValue27 = 0
    numberValue29 = 0
    numberValue30 = 0
    numberValue31 = 0
    numberValue34 = 0
    numberValue3 = 0
    numberValue4 = 1.5
    numberValue5 = 1.5
    numberValue6 = 10.3
    numberValue8 = 0
    numberValue9 = 519
    numberValue10 = 0
    numberValue12 = 105
    flag11 = false
    flag13 = false
    numberValue17 = 2
    flag15 = false
    workValue5 = nil
    workValue6 = nil
    flag19 = false
    flag(textValue2, flag21, numberValue24, workValue21, numberValue27, numberValue29, numberValue30, numberValue31, numberValue34, numberValue3, numberValue4, numberValue5, numberValue6, numberValue8, numberValue9, numberValue10, numberValue12, flag11, flag13, numberValue17, flag15, workValue5, workValue6, flag19)
    flag = IsControlJustPressed
    textValue2 = 1
    flag21 = 38
    flag = flag(textValue2, flag21)
    if flag then
      flag = flag22
      if flag then
        flag = numberValue21
        textValue2 = false
        flag(textValue2)
      else
        flag = TriggerServerEvent
        textValue2 = "f1f0b9bf95"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f1f0b9bf95".
        flag(textValue2)
      end
    end
  end
  arg5 = CMG
  arg5 = arg5.createArea
  arg6 = "golf_course"
  arg7 = arg1
  arg8 = 15
  flag25 = 6
  numberValue33 = arg2
  flag2 = arg3
  flag4 = arg4
  flag5 = {}
  -- Beginner: Create an interaction area around a world position.
  arg5(arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
numberValue23(workValue7)
numberValue23 = 0

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) ===
function workValue7(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local flag25, numberValue33, flag2, flag4, flag5, cmgCall, numberValue7, flag6, flag7, flag8, flag10, flag12, numberValue16, flag14, flag16, flag17, flag18, numberValue19, flag20
  flag25 = numberValue20
  flag25()
  flag25 = arg1
  numberValue33 = SetCurrentPedWeapon
  flag2 = CMG
  flag2 = flag2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag2 = flag2()
  flag4 = 2725352035
  flag5 = true
  numberValue33(flag2, flag4, flag5)
  numberValue33 = GetPedBoneIndex
  flag2 = CMG
  flag2 = flag2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag2 = flag2()
  flag4 = arg2
  numberValue33 = numberValue33(flag2, flag4)
  flag2 = CMG
  flag2 = flag2.loadModel
  flag4 = flag25
  -- Beginner: Request/load a GTA model before spawning or applying it.
  flag2(flag4)
  flag2 = numberValue23
  flag2 = flag2 + 1
  numberValue23 = flag2
  flag2 = CMG
  flag2 = flag2.requestEntitySpawn
  flag4 = numberValue23
  flag4 = flag4 % 2
  if 1 == flag4 then
    flag4 = "golf_attach_prop"
    if flag4 then
      goto flow_label_36
    end
  end
  flag4 = "golf_attach_prop_2"
  ::flow_label_36::
  flag5 = flag25
  flag2(flag4, flag5)
  flag2 = CMG
  flag2 = flag2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  flag2 = flag2()
  flag4 = CreateObject
  flag5 = flag25
  cmgCall = flag2.x
  numberValue7 = flag2.y
  flag6 = flag2.z
  flag7 = true
  flag8 = true
  flag10 = false
  -- Beginner: result below is objectEntity.
  flag4 = flag4(flag5, cmgCall, numberValue7, flag6, flag7, flag8, flag10)
  numberValue15 = flag4
  flag4 = AttachEntityToEntity
  flag5 = numberValue15
  cmgCall = CMG
  cmgCall = cmgCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  numberValue7 = numberValue33
  flag6 = arg3
  flag7 = arg4
  flag8 = arg5
  flag10 = arg6
  flag12 = arg7
  numberValue16 = arg8
  flag14 = true
  flag16 = true
  flag17 = false
  flag18 = false
  numberValue19 = 2
  flag20 = true
  -- Beginner: Attach one entity to another entity.
  flag4(flag5, cmgCall, numberValue7, flag6, flag7, flag8, flag10, flag12, numberValue16, flag14, flag16, flag17, flag18, numberValue19, flag20)
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3
  arg2 = Citizen
  arg2 = arg2.CreateThreadNow

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local flag, textValue2, flag21, numberValue24, workValue21, numberValue27, numberValue29, numberValue30, numberValue31, numberValue34
    flag = workValue7
    flag21 = arg1
    textValue2 = dataTable3
    textValue2 = textValue2[flag21]
    textValue2 = textValue2.model
    numberValue24 = arg1
    flag21 = dataTable3
    flag21 = flag21[numberValue24]
    flag21 = flag21.bone
    workValue21 = arg1
    numberValue24 = dataTable3
    numberValue24 = numberValue24[workValue21]
    numberValue24 = numberValue24.x
    numberValue27 = arg1
    workValue21 = dataTable3
    workValue21 = workValue21[numberValue27]
    workValue21 = workValue21.y
    numberValue29 = arg1
    numberValue27 = dataTable3
    numberValue27 = numberValue27[numberValue29]
    numberValue27 = numberValue27.z
    numberValue30 = arg1
    numberValue29 = dataTable3
    numberValue29 = numberValue29[numberValue30]
    numberValue29 = numberValue29.xR
    numberValue31 = arg1
    numberValue30 = dataTable3
    numberValue30 = numberValue30[numberValue31]
    numberValue30 = numberValue30.yR
    numberValue34 = arg1
    numberValue31 = dataTable3
    numberValue31 = numberValue31[numberValue34]
    numberValue31 = numberValue31.zR
    flag(textValue2, flag21, numberValue24, workValue21, numberValue27, numberValue29, numberValue30, numberValue31)
  end
  arg2(arg3)
end
eventRegistration = RegisterNetEvent
cmgCall2 = "5cbe9d656b"
-- Beginner: this function handles network event "5cbe9d656b".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25
  arg1 = flag22
  if arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.requestEntitySpawn
  arg2 = "golfcart"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.spawnVehicle
  arg2 = "caddy"
  arg3 = -1332.7823486328
  arg4 = 128.18229675293
  arg5 = 56.032329559326
  arg6 = 180
  arg7 = true
  arg8 = true
  flag25 = false
  arg1 = arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25)
  numberValue11 = arg1
  arg1 = AddBlipForEntity
  arg2 = numberValue11
  -- Beginner: result below is blipHandle.
  arg1 = arg1(arg2)
  arg2 = SetBlipSprite
  arg3 = arg1
  arg4 = 326
  arg2(arg3, arg4)
  arg2 = SetBlipColour
  arg3 = arg1
  arg4 = 5
  arg2(arg3, arg4)
  arg2 = true
  flag22 = arg2
  arg2 = SetCurrentPedWeapon
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = 2725352035
  arg5 = false
  arg2(arg3, arg4, arg5)
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 1000
  arg2(arg3)
  arg2 = workValue8
  arg3 = "golfbag01"
  arg2(arg3)
  arg2 = GetResourceKvpInt
  arg3 = "cmg_golf_done_cutscene"
  arg2 = arg2(arg3)
  if 0 == arg2 then
    arg2 = vector3Builder
    arg2()
    arg2 = SetResourceKvpInt
    arg3 = "cmg_golf_done_cutscene"
    arg4 = 1
    arg2(arg3, arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5cbe9d656b".
eventRegistration(cmgCall2, workValue9)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25, numberValue33, flag2
  arg1 = flag22
  if arg1 then
    arg1 = numberValue
    if 0 ~= arg1 then
      arg1 = flag24
      if not arg1 then
        arg1 = DrawRect
        arg2 = 0.5
        arg3 = 0.93
        arg4 = 0.15
        arg5 = 0.04
        arg6 = 0
        arg7 = 0
        arg8 = 0
        flag25 = 140
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25)
        arg1 = "~s~"
        arg2 = numberValue14
        arg3 = "~r~ | ~s~"
        arg4 = numberValue22
        arg5 = "~r~ | ~s~"
        arg6 = textValue
        arg7 = "~r~ | ~s~"
        arg8 = math
        arg8 = arg8.ceil
        flag25 = CMG
        flag25 = flag25.getPlayerCoords
        -- Beginner: result below is playerCoords.
        flag25 = flag25()
        flag2 = numberValue
        numberValue33 = dataTable4
        numberValue33 = numberValue33[flag2]
        numberValue33 = numberValue33.endHole
        flag25 = flag25 - numberValue33
        flag25 = #flag25
        arg8 = arg8(flag25)
        flag25 = " m"
        arg1 = arg1 .. arg2 .. arg3 .. arg4 .. arg5 .. arg6 .. arg7 .. arg8 .. flag25
        arg2 = CMG
        arg2 = arg2.DrawText
        arg3 = 0.448
        arg4 = 0.91
        arg5 = arg1
        arg6 = 0.6
        arg7 = 4
        arg2(arg3, arg4, arg5, arg6, arg7)
      end
    end
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
workValue9 = eventRegistration
textValue3 = "Golf HUD"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(workValue9, textValue3)

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1, arg2, arg3) ===
function cmgCall2(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, flag25, numberValue33, flag2
  arg4 = DeleteObject
  arg5 = numberValue2
  arg4(arg5)
  arg4 = CMG
  arg4 = arg4.requestEntitySpawn
  arg5 = "golf_ball_object"
  arg6 = vector3
  arg7 = arg1
  arg8 = arg2
  flag25 = arg3
  arg6, arg7, arg8, flag25, numberValue33, flag2 = arg6(arg7, arg8, flag25)
  arg4(arg5, arg6, arg7, arg8, flag25, numberValue33, flag2)
  arg4 = CreateObject
  arg5 = -1358020705
  arg6 = arg1
  arg7 = arg2
  arg8 = arg3
  flag25 = true
  numberValue33 = true
  flag2 = false
  -- Beginner: result below is objectEntity.
  arg4 = arg4(arg5, arg6, arg7, arg8, flag25, numberValue33, flag2)
  numberValue2 = arg4
  arg4 = SetEntityRecordsCollisions
  arg5 = numberValue2
  arg6 = true
  arg4(arg5, arg6)
  arg4 = tCMG
  arg4 = arg4.removeBlip
  arg5 = workValue
  arg4(arg5)
  arg4 = tCMG
  arg4 = arg4.addBlip
  arg5 = arg1
  arg6 = arg2
  arg7 = arg3
  arg8 = 161
  flag25 = 0
  numberValue33 = "Golf Ball"
  flag2 = 0.6
  arg4 = arg4(arg5, arg6, arg7, arg8, flag25, numberValue33, flag2)
  workValue = arg4
  arg4 = SetBlipAsShortRange
  arg5 = workValue
  arg6 = false
  arg4(arg5, arg6)
  arg4 = SetBlipDisplay
  arg5 = workValue
  arg6 = 2
  arg4(arg5, arg6)
  arg4 = SetBlipAsFriendly
  arg5 = workValue
  arg6 = true
  arg4(arg5, arg6)
  arg4 = SetEntityCollision
  arg5 = numberValue2
  arg6 = true
  arg7 = true
  arg4(arg5, arg6, arg7)
  arg4 = SetEntityHasGravity
  arg5 = numberValue2
  arg6 = true
  arg4(arg5, arg6)
  arg4 = FreezeEntityPosition
  arg5 = numberValue2
  arg6 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg4(arg5, arg6)
  arg4 = GetEntityHeading
  arg5 = CMG
  arg5 = arg5.getPlayerPed
  arg5, arg6, arg7, arg8, flag25, numberValue33, flag2 = arg5()
  -- Beginner: result below is heading.
  arg4 = arg4(arg5, arg6, arg7, arg8, flag25, numberValue33, flag2)
  arg5 = SetEntityHeading
  arg6 = numberValue2
  arg7 = arg4
  -- Beginner: Change the direction an entity is facing.
  arg5(arg6, arg7)
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = GetEntityHeading
  arg3 = numberValue2
  -- Beginner: result below is heading.
  arg2 = arg2(arg3)
  arg3 = 360.0
  if arg2 >= arg3 then
    arg2 = 0.0
  end
  if arg1 then
    arg3 = SetEntityHeading
    arg4 = numberValue2
    arg5 = arg2 - 0.7
    arg3(arg4, arg5)
  else
    arg3 = SetEntityHeading
    arg4 = numberValue2
    arg5 = arg2 + 0.7
    -- Beginner: Change the direction an entity is facing.
    arg3(arg4, arg5)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25
  arg1 = 20000
  while arg1 > 0 do
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 5
    arg2(arg3)
    arg2 = GetEntityCoords
    arg3 = numberValue2
    -- Beginner: result below is entityCoords.
    arg2 = arg2(arg3)
    arg3 = SetCamCoord
    arg4 = numberValue18
    arg5 = arg2.x
    arg6 = arg2.y
    arg6 = arg6 - 10
    arg7 = arg2.z
    arg7 = arg7 + 9
    arg3(arg4, arg5, arg6, arg7)
    arg3 = PointCamAtEntity
    arg4 = numberValue18
    arg5 = numberValue2
    arg6 = 0.0
    arg7 = 0.0
    arg8 = 0.0
    flag25 = true
    arg3(arg4, arg5, arg6, arg7, arg8, flag25)
    arg1 = arg1 - 1
  end
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = CreateCam
  arg2 = "DEFAULT_SCRIPTED_CAMERA"
  arg3 = true
  -- Beginner: result below is cameraHandle.
  arg1 = arg1(arg2, arg3)
  numberValue18 = arg1
  arg1 = SetCamFov
  arg2 = numberValue18
  arg3 = 90.0
  arg1(arg2, arg3)
  arg1 = RenderScriptCams
  arg2 = true
  arg3 = true
  arg4 = 3
  arg5 = true
  arg6 = false
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = Citizen
  arg1 = arg1.CreateThreadNow
  arg2 = textValue3
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = RenderScriptCams
  arg2 = false
  arg3 = false
  arg4 = 0
  arg5 = true
  arg6 = false
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = DestroyCam
  arg2 = numberValue18
  arg3 = false
  arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
function workValue12()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = false
  flag24 = arg1
  arg1 = numberValue14
  arg1 = arg1 + 1
  numberValue14 = arg1
  arg1 = GetEntityCoords
  arg2 = numberValue2
  -- Beginner: result below is entityCoords.
  arg1 = arg1(arg2)
  arg3 = numberValue
  arg2 = dataTable4
  arg2 = arg2[arg3]
  arg2 = arg2.endHole
  arg2 = arg1 - arg2
  arg2 = #arg2
  arg3 = 1.5
  if arg2 < arg3 then
    arg3 = numberValue14
    arg4 = numberValue22
    arg3 = arg3 + arg4
    numberValue22 = arg3
    arg3 = 0
    numberValue14 = arg3
    arg3 = 1
    numberValue25 = arg3
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    numberValue13 = arg3
    arg3 = true
    arg4 = Citizen
    arg4 = arg4.CreateThread

    -- === HELPER FUNCTION: arg5() ===
    function arg5()
      local flag, textValue2
      flag = Wait
      textValue2 = 3000
      flag(textValue2)
      flag = false
      arg3 = flag
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg4(arg5)
    while arg3 do
      arg4 = drawNativeText
      arg5 = "You got the ball within range!"
      -- Beginner: Draw GTA-style text on screen.
      arg4(arg5)
      arg4 = Citizen
      arg4 = arg4.Wait
      arg5 = 0
      arg4(arg5)
    end
  end
  arg3 = numberValue14
  if arg3 > 12 then
    arg3 = numberValue14
    arg4 = numberValue22
    arg3 = arg3 + arg4
    numberValue22 = arg3
    arg3 = 0
    numberValue14 = arg3
    arg3 = 1
    numberValue25 = arg3
    arg3 = true
    arg4 = Citizen
    arg4 = arg4.CreateThread

    -- === HELPER FUNCTION: arg5() ===
    function arg5()
      local flag, textValue2
      flag = Wait
      textValue2 = 3000
      flag(textValue2)
      flag = false
      arg3 = flag
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg4(arg5)
    while arg3 do
      arg4 = drawNativeText
      arg5 = "You took too many shots.."
      -- Beginner: Draw GTA-style text on screen.
      arg4(arg5)
      arg4 = Citizen
      arg4 = arg4.Wait
      arg5 = 0
      arg4(arg5)
    end
  end
  arg3 = workValue8
  arg4 = "golfbag01"
  arg3(arg4)
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2
  arg1 = numberValue28
  if 3 == arg1 then
    arg1 = workValue8
    arg2 = "golfdriver01"
    arg1(arg2)
    arg1 = "Wood"
    textValue = arg1
  else
    arg1 = numberValue28
    if 2 == arg1 then
      arg1 = workValue8
      arg2 = "golfwedge01"
      arg1(arg2)
      arg1 = "Wedge"
      textValue = arg1
    else
      arg1 = numberValue28
      if 1 == arg1 then
        arg1 = workValue8
        arg2 = "golfiron01"
        arg1(arg2)
        arg1 = "1 Iron"
        textValue = arg1
      else
        arg1 = numberValue28
        if 4 == arg1 then
          arg1 = workValue8
          arg2 = "golfiron03"
          arg1(arg2)
          arg1 = "3 Iron"
          textValue = arg1
        else
          arg1 = numberValue28
          if 5 == arg1 then
            arg1 = workValue8
            arg2 = "golfiron05"
            arg1(arg2)
            arg1 = "5 Iron"
            textValue = arg1
          else
            arg1 = numberValue28
            if 6 == arg1 then
              arg1 = workValue8
              arg2 = "golfiron07"
              arg1(arg2)
              arg1 = "7 Iron"
              textValue = arg1
            else
              arg1 = workValue8
              arg2 = "golfputter01"
              arg1(arg2)
              arg1 = "Putter"
              textValue = arg1
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: arg1) ===
function workValue14(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5, cmgCall
  arg2 = CMG
  arg2 = arg2.loadAnimDict
  arg3 = "mini@golf"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg2(arg3)
  arg2 = IsEntityPlayingAnim
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = "mini@golf"
  arg5 = arg1
  arg6 = 3
  arg2 = arg2(arg3, arg4, arg5, arg6)
  if not arg2 then
    arg2 = GetAnimDuration
    arg3 = "mini@golf"
    arg4 = arg1
    arg2 = arg2(arg3, arg4)
    arg3 = TaskPlayAnim
    arg4 = CMG
    arg4 = arg4.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg4 = arg4()
    arg5 = "mini@golf"
    arg6 = arg1
    arg7 = 1.0
    arg8 = -1.0
    flag25 = arg2
    numberValue33 = 0
    flag2 = 1
    flag4 = false
    flag5 = false
    cmgCall = false
    -- Beginner: Play an animation on a ped.
    arg3(arg4, arg5, arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5, cmgCall)
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = arg2
    arg3(arg4)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, arg2, arg3, arg4
  arg1 = ""
  arg2 = numberValue28
  if 0 == arg2 then
    arg1 = dataTable2.puttidle
  else
    arg2 = IsControlPressed
    arg3 = 1
    arg4 = 38
    arg2 = arg2(arg3, arg4)
    if arg2 then
      arg1 = dataTable.ironidlehigh
    else
      arg1 = dataTable.ironidle
    end
  end
  arg2 = workValue14
  arg3 = arg1
  arg2(arg3)
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 1200
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue16; parameters: none) ===
function workValue16()
  local arg1, arg2
  arg1 = true
  flag23 = arg1
  while true do
    arg1 = flag23
    if not arg1 then
      break
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
    arg1 = workValue15
    arg1()
  end
end

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = 0.0
  arg3 = 0.0
  arg4 = arg1
  if arg4 >= 0.0 and arg4 <= 90.0 then
    arg5 = arg4 / 9.2
    arg5 = arg5 / 10
    arg2 = -1.0 + arg5
    arg6 = 0.0
    arg3 = arg6 - arg5
  end
  if arg4 > 90.0 then
    arg5 = 180.0
    if arg4 <= arg5 then
      arg5 = arg4 - 90.0
      arg6 = arg5 / 9.2
      arg6 = arg6 / 10
      arg2 = 0.0 + arg6
      arg3 = -1.0 + arg6
    end
  end
  arg5 = 180.0
  if arg4 > arg5 then
    arg5 = 270.0
    if arg4 <= arg5 then
      arg5 = arg4 - 180.0
      arg6 = arg5 / 9.2
      arg6 = arg6 / 10
      arg7 = 1.0
      arg2 = arg7 - arg6
      arg3 = 0.0 + arg6
    end
  end
  arg5 = 270.0
  if arg4 > arg5 then
    arg5 = 360.0
    if arg4 <= arg5 then
      arg5 = arg4 - 270.0
      arg6 = arg5 / 9.2
      arg6 = arg6 / 10
      arg7 = 0.0
      arg2 = arg7 - arg6
      arg7 = 1.0
      arg3 = arg7 - arg6
    end
  end
  arg5 = arg2
  arg6 = arg3
  return arg5, arg6
end

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: none) ===
function workValue18()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5
  arg1 = numberValue28
  if 0 ~= arg1 then
    arg1 = workValue10
    arg1()
  end
  arg1 = CMG
  arg1 = arg1.loadPtfx
  arg2 = "scr_minigamegolf"
  arg1(arg2)
  arg1 = UseParticleFxAsset
  arg2 = "scr_minigamegolf"
  arg1(arg2)
  arg1 = StartParticleFxLoopedOnEntity
  arg2 = "scr_golf_ball_trail"
  arg3 = numberValue2
  arg4 = 0.0
  arg5 = 0.0
  arg6 = 0.0
  arg7 = 0.0
  arg8 = 0.0
  flag25 = 0.0
  numberValue33 = 1.0
  flag2 = false
  flag4 = false
  flag5 = false
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5)
  arg1 = false
  arg2 = GetEntityHeading
  arg3 = numberValue2
  -- Beginner: result below is heading.
  arg2 = arg2(arg3)
  arg3 = workValue17
  arg4 = arg2
  arg3, arg4 = arg3(arg4)
  arg5 = FreezeEntityPosition
  arg6 = numberValue2
  arg7 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg5(arg6, arg7)
  arg5 = numberValue32
  arg5 = arg5 / 3
  arg6 = 0.0
  arg7 = numberValue28
  if 0 == arg7 then
    arg7 = numberValue32
    arg7 = arg7 / 3
    numberValue32 = arg7
    arg7 = 5.0
    while true do
      arg8 = numberValue32
      if not (arg7 < arg8) then
        break
      end
      arg8 = SetEntityVelocity
      flag25 = numberValue2
      numberValue33 = arg3 * arg7
      flag2 = arg4 * arg7
      flag4 = -0.1
      arg8(flag25, numberValue33, flag2, flag4)
      arg8 = Citizen
      arg8 = arg8.Wait
      flag25 = 20
      arg8(flag25)
      arg7 = arg7 + 0.3
    end
    arg8 = numberValue32
    numberValue32 = arg8
    while true do
      arg8 = numberValue32
      if not (arg8 > 0) then
        break
      end
      arg8 = SetEntityVelocity
      flag25 = numberValue2
      numberValue33 = numberValue32
      numberValue33 = arg3 * numberValue33
      flag2 = numberValue32
      flag2 = arg4 * flag2
      flag4 = -0.1
      arg8(flag25, numberValue33, flag2, flag4)
      arg8 = Citizen
      arg8 = arg8.Wait
      flag25 = 20
      arg8(flag25)
      arg8 = numberValue32
      arg8 = arg8 - 0.3
      numberValue32 = arg8
    end
  else
    arg7 = numberValue28
    if 1 == arg7 then
      arg7 = numberValue32
      arg7 = arg7 * 1.85
      numberValue32 = arg7
      arg7 = numberValue32
      arg6 = arg7 / 2.6
      arg1 = true
      arg5 = arg5 / 4
    else
      arg7 = numberValue28
      if 3 == arg7 then
        arg7 = numberValue32
        arg7 = arg7 * 2.0
        numberValue32 = arg7
        arg7 = numberValue32
        arg6 = arg7 / 2.6
        arg1 = true
        arg5 = arg5 / 2
      else
        arg7 = numberValue28
        if 2 == arg7 then
          arg7 = numberValue32
          arg7 = arg7 * 1.5
          numberValue32 = arg7
          arg7 = numberValue32
          arg6 = arg7 / 2.1
          arg1 = true
          arg5 = arg5 / 4.5
        else
          arg7 = numberValue28
          if 4 == arg7 then
            arg7 = numberValue32
            arg7 = arg7 * 1.8
            numberValue32 = arg7
            arg7 = numberValue32
            arg6 = arg7 / 2.55
            arg1 = true
            arg5 = arg5 / 5
          else
            arg7 = numberValue28
            if 5 == arg7 then
              arg7 = numberValue32
              arg7 = arg7 * 1.75
              numberValue32 = arg7
              arg7 = numberValue32
              arg6 = arg7 / 2.5
              arg1 = true
              arg5 = arg5 / 5.5
            else
              arg7 = numberValue28
              if 6 == arg7 then
                arg7 = numberValue32
                arg7 = arg7 * 1.7
                numberValue32 = arg7
                arg7 = numberValue32
                arg6 = arg7 / 2.45
                arg1 = true
                arg5 = arg5 / 6.0
              end
            end
          end
        end
      end
    end
  end
  while true do
    arg7 = numberValue32
    if not (arg7 > 0) then
      break
    end
    arg7 = SetEntityVelocity
    arg8 = numberValue2
    flag25 = numberValue32
    flag25 = arg3 * flag25
    numberValue33 = numberValue32
    numberValue33 = arg4 * numberValue33
    flag2 = arg6
    arg7(arg8, flag25, numberValue33, flag2)
    arg7 = Citizen
    arg7 = arg7.Wait
    arg8 = 0
    arg7(arg8)
    arg7 = numberValue32
    arg7 = arg7 - 1
    numberValue32 = arg7
    arg6 = arg6 - 1
  end
  if arg1 then
    while arg5 > 0 do
      arg7 = SetEntityVelocity
      arg8 = numberValue2
      flag25 = arg3 * arg5
      numberValue33 = arg4 * arg5
      flag2 = 0.0
      arg7(arg8, flag25, numberValue33, flag2)
      arg7 = Citizen
      arg7 = arg7.Wait
      arg8 = 5
      arg7(arg8)
      arg5 = arg5 - 1
    end
  end
  arg7 = Citizen
  arg7 = arg7.Wait
  arg8 = 2000
  arg7(arg8)
  arg7 = SetEntityVelocity
  arg8 = numberValue2
  flag25 = 0.0
  numberValue33 = 0.0
  flag2 = 0.0
  arg7(arg8, flag25, numberValue33, flag2)
  arg7 = numberValue28
  if 0 ~= arg7 then
    arg7 = workValue11
    arg7()
  end
  arg7 = GetEntityCoords
  arg8 = numberValue2
  -- Beginner: result below is entityCoords.
  arg7 = arg7(arg8)
  arg8 = cmgCall2
  flag25 = arg7.x
  numberValue33 = arg7.y
  flag2 = arg7.z
  -- Beginner: Run a helper every game frame while this script is active.
  arg8(flag25, numberValue33, flag2)
  arg8 = FreezeEntityPosition
  flag25 = numberValue2
  numberValue33 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg8(flag25, numberValue33)
end

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: none) ===
function workValue19()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5, cmgCall, numberValue7, flag6, flag7, flag8, flag10, flag12
  arg1 = 0.1
  numberValue32 = arg1
  arg1 = GetEntityCoords
  arg2 = numberValue2
  -- Beginner: result below is entityCoords.
  arg1 = arg1(arg2)
  arg3 = numberValue
  arg2 = dataTable4
  arg2 = arg2[arg3]
  arg2 = arg2.endHole
  arg1 = arg1 - arg2
  arg1 = #arg1
  arg2 = 200.0
  if arg1 >= arg2 then
    arg2 = 3
    numberValue28 = arg2
  else
    arg2 = 150.0
    if arg1 >= arg2 then
      arg2 = 200.0
      if arg1 < arg2 then
        arg2 = 1
        numberValue28 = arg2
    end
    else
      if arg1 >= 120.0 then
        arg2 = 250.0
        if arg1 < arg2 then
          arg2 = 4
          numberValue28 = arg2
      end
      elseif arg1 >= 90.0 and arg1 < 120.0 then
        arg2 = 5
        numberValue28 = arg2
      elseif arg1 >= 50.0 and arg1 < 90.0 then
        arg2 = 6
        numberValue28 = arg2
      elseif arg1 >= 20.0 and arg1 < 50.0 then
        arg2 = 2
        numberValue28 = arg2
      else
        arg2 = 0
        numberValue28 = arg2
      end
    end
  end
  arg2 = ""
  arg3 = workValue13
  arg3()
  arg3 = RequestScriptAudioBank
  arg4 = "GOLF_I"
  arg5 = false
  arg3(arg4, arg5)
  while true do
    arg3 = numberValue26
    if 2 ~= arg3 then
      break
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = 0
    arg3(arg4)
    arg3 = IsControlPressed
    arg4 = 1
    arg5 = 38
    arg3 = arg3(arg4, arg5)
    if arg3 then
      arg3 = 0.5
      arg4 = numberValue32
      if arg4 > 25 then
        arg3 = arg3 + 0.1
      end
      arg4 = numberValue32
      if arg4 > 50 then
        arg3 = arg3 + 0.2
      end
      arg4 = numberValue32
      if arg4 > 75 then
        arg3 = arg3 + 0.3
      end
      arg4 = numberValue32
      arg4 = arg4 + arg3
      numberValue32 = arg4
      arg4 = numberValue32
      if arg4 > 100.0 then
        arg4 = 1.0
        numberValue32 = arg4
      end
    end
    arg3 = numberValue32
    arg3 = arg3 * 2
    arg3 = arg3 / 1000
    arg4 = numberValue32
    if arg4 > 55 then
      arg4 = numberValue32
      arg4 = arg4 / 100
      arg5 = DrawRect
      arg6 = 0.5
      arg7 = 0.93
      arg8 = arg3
      flag25 = 0.02
      numberValue33 = math
      numberValue33 = numberValue33.floor
      flag2 = arg4 * 255
      numberValue33 = numberValue33(flag2)
      flag2 = math
      flag2 = flag2.floor
      flag4 = 1.0
      flag4 = flag4 - arg4
      flag4 = flag4 * 255
      flag2 = flag2(flag4)
      flag4 = 0
      flag5 = 210
      arg5(arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5)
    else
      arg4 = DrawRect
      arg5 = 0.5
      arg6 = 0.93
      arg7 = arg3
      arg8 = 0.02
      flag25 = 22
      numberValue33 = 235
      flag2 = 22
      flag4 = 210
      arg4(arg5, arg6, arg7, arg8, flag25, numberValue33, flag2, flag4)
    end
    arg4 = drawNativeText
    arg5 = "Press E to swing, A-D to rotate, Y to swap club."
    -- Beginner: Draw GTA-style text on screen.
    arg4(arg5)
    arg4 = GetEntityCoords
    arg5 = numberValue2
    -- Beginner: result below is entityCoords.
    arg4 = arg4(arg5)
    arg5 = DrawLine
    arg6 = arg4.x
    arg7 = arg4.y
    arg8 = arg4.z
    numberValue33 = numberValue
    flag25 = dataTable4
    flag25 = flag25[numberValue33]
    flag25 = flag25.endHole
    flag25 = flag25.x
    flag2 = numberValue
    numberValue33 = dataTable4
    numberValue33 = numberValue33[flag2]
    numberValue33 = numberValue33.endHole
    numberValue33 = numberValue33.y
    flag4 = numberValue
    flag2 = dataTable4
    flag2 = flag2[flag4]
    flag2 = flag2.endHole
    flag2 = flag2.z
    flag4 = 222
    flag5 = 111
    cmgCall = 111
    numberValue7 = 0.2
    arg5(arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5, cmgCall, numberValue7)
    arg5 = IsControlJustPressed
    arg6 = 1
    arg7 = 246
    arg5 = arg5(arg6, arg7)
    if arg5 then
      arg5 = numberValue28
      arg5 = arg5 + 1
      if arg5 > 6 then
        arg5 = 0
      end
      numberValue28 = arg5
      arg6 = workValue13
      arg6()
    end
    arg5 = IsControlPressed
    arg6 = 1
    arg7 = 34
    arg5 = arg5(arg6, arg7)
    if arg5 then
      arg5 = workValue9
      arg6 = true
      -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
      arg5(arg6)
    end
    arg5 = IsControlPressed
    arg6 = 1
    arg7 = 9
    arg5 = arg5(arg6, arg7)
    if arg5 then
      arg5 = workValue9
      arg6 = false
      arg5(arg6)
    end
    arg5 = numberValue28
    if 0 == arg5 then
      arg5 = AttachEntityToEntity
      arg6 = CMG
      arg6 = arg6.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg6 = arg6()
      arg7 = numberValue2
      arg8 = 20
      flag25 = 0.14
      numberValue33 = -0.62
      flag2 = 0.99
      flag4 = 0.0
      flag5 = 0.0
      cmgCall = 0.0
      numberValue7 = false
      flag6 = false
      flag7 = false
      flag8 = false
      flag10 = 1
      flag12 = true
      -- Beginner: Attach one entity to another entity.
      arg5(arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5, cmgCall, numberValue7, flag6, flag7, flag8, flag10, flag12)
    else
      arg5 = numberValue28
      if 3 == arg5 then
        arg5 = AttachEntityToEntity
        arg6 = CMG
        arg6 = arg6.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg6 = arg6()
        arg7 = numberValue2
        arg8 = 20
        flag25 = 0.3
        numberValue33 = -0.92
        flag2 = 0.99
        flag4 = 0.0
        flag5 = 0.0
        cmgCall = 0.0
        numberValue7 = false
        flag6 = false
        flag7 = false
        flag8 = false
        flag10 = 1
        flag12 = true
        arg5(arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5, cmgCall, numberValue7, flag6, flag7, flag8, flag10, flag12)
      else
        arg5 = numberValue28
        if 2 == arg5 then
          arg5 = AttachEntityToEntity
          arg6 = CMG
          arg6 = arg6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          arg6 = arg6()
          arg7 = numberValue2
          arg8 = 20
          flag25 = 0.38
          numberValue33 = -0.79
          flag2 = 0.94
          flag4 = 0.0
          flag5 = 0.0
          cmgCall = 0.0
          numberValue7 = false
          flag6 = false
          flag7 = false
          flag8 = false
          flag10 = 1
          flag12 = true
          -- Beginner: Attach one entity to another entity.
          arg5(arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5, cmgCall, numberValue7, flag6, flag7, flag8, flag10, flag12)
        else
          arg5 = AttachEntityToEntity
          arg6 = CMG
          arg6 = arg6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          arg6 = arg6()
          arg7 = numberValue2
          arg8 = 20
          flag25 = 0.4
          numberValue33 = -0.83
          flag2 = 0.94
          flag4 = 0.0
          flag5 = 0.0
          cmgCall = 0.0
          numberValue7 = false
          flag6 = false
          flag7 = false
          flag8 = false
          flag10 = 1
          flag12 = true
          arg5(arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5, cmgCall, numberValue7, flag6, flag7, flag8, flag10, flag12)
        end
      end
    end
    arg5 = IsControlJustReleased
    arg6 = 1
    arg7 = 38
    arg5 = arg5(arg6, arg7)
    if arg5 then
      arg5 = numberValue28
      if 0 == arg5 then
        arg2 = dataTable2.puttswinglow
      else
        arg2 = dataTable.ironswinghigh
        arg5 = workValue14
        arg6 = arg2
        arg5(arg6)
        arg2 = dataTable.ironswinglow
        arg5 = workValue14
        arg6 = arg2
        arg5(arg6)
        arg2 = dataTable.ironswinglow
      end
      arg5 = 1
      numberValue26 = arg5
      arg5 = false
      flag23 = arg5
      arg5 = DetachEntity
      arg6 = CMG
      arg6 = arg6.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg6 = arg6()
      arg7 = true
      arg8 = false
      arg5(arg6, arg7, arg8)
    else
      arg5 = flag23
      if not arg5 then
        arg5 = Citizen
        arg5 = arg5.CreateThreadNow
        arg6 = workValue16
        arg5(arg6)
      end
    end
  end
  arg3 = PlaySoundFromEntity
  arg4 = -1
  arg5 = "GOLF_SWING_FAIRWAY_IRON_LIGHT_MASTER"
  arg6 = CMG
  arg6 = arg6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg6 = arg6()
  arg7 = nil
  arg8 = false
  flag25 = 0
  arg3(arg4, arg5, arg6, arg7, arg8, flag25)
  arg3 = workValue14
  arg4 = arg2
  arg3(arg4)
  arg3 = workValue18
  arg3()
  arg3 = Citizen
  arg3 = arg3.Wait
  arg4 = 1000
  arg3(arg4)
  arg3 = workValue12
  arg3()
end
eventHandlerRegistration = Citizen
eventHandlerRegistration = eventHandlerRegistration.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5, cmgCall, numberValue7, flag6, flag7, flag8, flag10, flag12, numberValue16
  while true do
    arg1 = flag22
    if arg1 then
      arg1 = numberValue25
      if 1 == arg1 then
        arg1 = numberValue
        arg1 = arg1 + 1
        numberValue = arg1
        arg1 = numberValue
        if 10 == arg1 then
          arg1 = numberValue21
          arg2 = true
          arg1(arg2)
        else
          arg1 = tCMG
          arg1 = arg1.removeBlip
          arg2 = workValue4
          arg1(arg2)
          arg1 = tCMG
          arg1 = arg1.removeBlip
          arg2 = workValue2
          arg1(arg2)
          arg1 = tCMG
          arg1 = arg1.removeMarker
          arg2 = workValue3
          arg1(arg2)
          arg1 = tCMG
          arg1 = arg1.addBlip
          arg3 = numberValue
          arg2 = dataTable4
          arg2 = arg2[arg3]
          arg2 = arg2.startHole
          arg2 = arg2.x
          arg4 = numberValue
          arg3 = dataTable4
          arg3 = arg3[arg4]
          arg3 = arg3.startHole
          arg3 = arg3.y
          arg5 = numberValue
          arg4 = dataTable4
          arg4 = arg4[arg5]
          arg4 = arg4.startHole
          arg4 = arg4.z
          arg5 = 161
          arg6 = 1
          arg7 = "Swing Ball"
          arg8 = 1.0
          arg1 = arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
          workValue4 = arg1
          arg1 = SetBlipAsShortRange
          arg2 = workValue4
          arg3 = false
          arg1(arg2, arg3)
          arg1 = SetBlipDisplay
          arg2 = workValue4
          arg3 = 2
          arg1(arg2, arg3)
          arg1 = tCMG
          arg1 = arg1.addBlip
          arg3 = numberValue
          arg2 = dataTable4
          arg2 = arg2[arg3]
          arg2 = arg2.endHole
          arg2 = arg2.x
          arg4 = numberValue
          arg3 = dataTable4
          arg3 = arg3[arg4]
          arg3 = arg3.endHole
          arg3 = arg3.y
          arg5 = numberValue
          arg4 = dataTable4
          arg4 = arg4[arg5]
          arg4 = arg4.endHole
          arg4 = arg4.z
          arg5 = 109
          arg6 = 1
          arg7 = "Hole"
          arg8 = 1.0
          arg1 = arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
          workValue2 = arg1
          arg1 = SetBlipAsShortRange
          arg2 = workValue2
          arg3 = false
          arg1(arg2, arg3)
          arg1 = SetBlipDisplay
          arg2 = workValue2
          arg3 = 2
          arg1(arg2, arg3)
          arg1 = tCMG
          arg1 = arg1.addMarker
          arg3 = numberValue
          arg2 = dataTable4
          arg2 = arg2[arg3]
          arg2 = arg2.endHole
          arg2 = arg2.x
          arg4 = numberValue
          arg3 = dataTable4
          arg3 = arg3[arg4]
          arg3 = arg3.endHole
          arg3 = arg3.y
          arg5 = numberValue
          arg4 = dataTable4
          arg4 = arg4[arg5]
          arg4 = arg4.endHole
          arg4 = arg4.z
          arg4 = arg4 + 1
          arg5 = 0.5
          arg6 = 0.5
          arg7 = 0.5
          arg8 = 10
          flag25 = 255
          numberValue33 = 81
          flag2 = 255
          flag4 = 250
          flag5 = 0
          cmgCall = false
          numberValue7 = true
          flag6 = false
          flag7 = nil
          flag8 = nil
          flag10 = 0.0
          flag12 = 0.0
          numberValue16 = 0.0
          arg1 = arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag25, numberValue33, flag2, flag4, flag5, cmgCall, numberValue7, flag6, flag7, flag8, flag10, flag12, numberValue16)
          workValue3 = arg1
          arg1 = 0
          numberValue25 = arg1
          arg1 = 1
          numberValue26 = arg1
          arg1 = cmgCall2
          arg3 = numberValue
          arg2 = dataTable4
          arg2 = arg2[arg3]
          arg2 = arg2.startHole
          arg2 = arg2.x
          arg4 = numberValue
          arg3 = dataTable4
          arg3 = arg3[arg4]
          arg3 = arg3.startHole
          arg3 = arg3.y
          arg5 = numberValue
          arg4 = dataTable4
          arg4 = arg4[arg5]
          arg4 = arg4.startHole
          arg4 = arg4.z
          -- Beginner: Run a helper every game frame while this script is active.
          arg1(arg2, arg3, arg4)
        end
      else
        arg1 = numberValue26
        if 2 == arg1 then
          arg1 = flag24
          if not arg1 then
            arg1 = flag3
            if not arg1 then
              arg1 = true
              flag24 = arg1
              arg1 = Citizen
              arg1 = arg1.CreateThread

              -- === HELPER FUNCTION: arg2() ===
              function arg2()
                local flag, textValue2
                flag = workValue19
                flag()
              end
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              arg1(arg2)
          end
        end
        else
          arg1 = numberValue26
          if 1 == arg1 then
            arg1 = flag24
            if not arg1 then
              arg1 = flag3
              if not arg1 then
                arg1 = CMG
                arg1 = arg1.getPlayerVehicle
                -- Beginner: result below is currentVehicle.
                arg1 = arg1()
                if 0 == arg1 then
                  arg1 = GetEntityCoords
                  arg2 = numberValue2
                  -- Beginner: result below is entityCoords.
                  arg1 = arg1(arg2)
                  arg2 = CMG
                  arg2 = arg2.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  arg2 = arg2()
                  arg2 = arg2 - arg1
                  arg2 = #arg2
                  if arg2 > 50 then
                    arg2 = flag9
                    if not arg2 then
                      arg2 = GetGameTimer
                      -- Beginner: result below is gameTimeMs.
                      arg2 = arg2()
                      arg3 = numberValue13
                      arg2 = arg2 - arg3
                      arg3 = 15000
                      if arg2 < arg3 then
                        arg2 = dataTable5
                        arg3 = "Move to the next start area."
                        arg4 = false
                        arg5 = -1
                        arg2(arg3, arg4, arg5)
                      else
                        arg2 = dataTable5
                        arg3 = "Move to your ball or press ~g~~INPUT_CONTEXT~~s~ to ball drop if you are stuck."
                        arg4 = false
                        arg5 = -1
                        arg2(arg3, arg4, arg5)
                        arg2 = IsControlJustReleased
                        arg3 = 1
                        arg4 = 38
                        arg2 = arg2(arg3, arg4)
                        if not arg2 then
                          goto flow_label_311
                        end
                        arg2 = true
                        flag3 = arg2
                        while true do
                          arg2 = flag3
                          if not arg2 then
                            goto flow_label_311
                          end
                          arg2 = CMG
                          arg2 = arg2.getPlayerCoords
                          -- Beginner: result below is playerCoords.
                          arg2 = arg2()
                          arg2 = arg2 - arg1
                          arg2 = #arg2
                          if not (arg2 < 100.0) then
                            arg2 = CMG
                            arg2 = arg2.getPlayerCoords
                            -- Beginner: result below is playerCoords.
                            arg2 = arg2()
                            arg2 = arg2.z
                            arg3 = arg1.z
                            arg2 = arg2 - arg3
                            if not (arg2 > 100.0) then
                              goto flow_label_282
                            end
                          end
                          arg2 = CMG
                          arg2 = arg2.getPlayerCoords
                          -- Beginner: result below is playerCoords.
                          arg2 = arg2()
                          arg4 = numberValue
                          arg3 = dataTable4
                          arg3 = arg3[arg4]
                          arg3 = arg3.endHole
                          arg2 = arg2 - arg3
                          arg2 = #arg2
                          if arg2 > 50.0 then
                            arg2 = dataTable5
                            arg3 = "Press ~g~E~s~ to drop here."
                            arg4 = false
                            arg5 = -1
                            arg2(arg3, arg4, arg5)
                            arg2 = IsControlJustReleased
                            arg3 = 1
                            arg4 = 38
                            arg2 = arg2(arg3, arg4)
                            if arg2 then
                              arg2 = false
                              flag3 = arg2
                              arg2 = CMG
                              arg2 = arg2.getPlayerCoords
                              -- Beginner: result below is playerCoords.
                              arg2 = arg2()
                              arg3 = cmgCall2
                              arg4 = arg2.x
                              arg5 = arg2.y
                              arg6 = arg2.z
                              arg6 = arg6 - 1
                              -- Beginner: Run a helper every game frame while this script is active.
                              arg3(arg4, arg5, arg6)
                              arg3 = numberValue14
                              arg3 = arg3 + 1
                              numberValue14 = arg3
                            end
                          else
                            ::flow_label_282::
                            arg2 = dataTable5
                            arg3 = "Press ~g~E~s~ to drop - ~r~ too far from ball or too close to hole."
                            arg4 = false
                            arg5 = -1
                            arg2(arg3, arg4, arg5)
                            arg2 = SetTimeout
                            arg3 = 5000

                            -- === HELPER FUNCTION: arg4() ===
                            function arg4()
                              local flag, textValue2
                              flag = false
                              flag3 = flag
                            end
                            arg2(arg3, arg4)
                          end
                          arg2 = Wait
                          arg3 = 0
                          arg2(arg3)
                        end
                      end
                  end
                  else
                    arg2 = CMG
                    arg2 = arg2.getPlayerCoords
                    -- Beginner: result below is playerCoords.
                    arg2 = arg2()
                    arg2 = arg2 - arg1
                    arg2 = #arg2
                    if arg2 < 2 then
                      arg2 = flag3
                      if not arg2 then
                        arg2 = 2
                        numberValue26 = arg2
                        arg2 = 0
                        numberValue25 = arg2
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
    ::flow_label_311::
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration(cmgCall3)
eventHandlerRegistration = AddEventHandler
cmgCall3 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg1, arg2) ===
function workValue20(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, flag25, numberValue33
  if arg2 then
    arg3 = tCMG
    arg3 = arg3.addBlip
    arg4 = -1350.1905517578
    arg5 = 134.2918548584
    arg6 = 55.556828308105
    arg7 = 109
    arg8 = 68
    flag25 = "Golf Course"
    numberValue33 = 1.0
    -- Beginner: Create a minimap blip.
    arg3(arg4, arg5, arg6, arg7, arg8, flag25, numberValue33)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(cmgCall3, workValue20)
