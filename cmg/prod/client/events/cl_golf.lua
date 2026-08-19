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
local number, number14, number22, stateFlag22, number25, number26, number28, stateFlag23, stateFlag24, number32, number2, stateFlag3, workingValue, workingValue2, workingValue3, workingValue4, text, number11, stateFlag9, number13, number15, number18, dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection5, createVector3, number20, number21, number23, workingValue7, workingValue8, eventHandler, cmgOperation2, workingValue9, text3, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, eventHandlerRegistration, cmgOperation3, workingValue20
number = 0
number14 = 0
number22 = 0
stateFlag22 = false
number25 = 1
number26 = 1
number28 = 1
stateFlag23 = false
stateFlag24 = false
number32 = 0.1
number2 = 0
stateFlag3 = false
workingValue = nil
workingValue2 = nil
workingValue3 = nil
workingValue4 = nil
text = "None"
number11 = 0
stateFlag9 = false
number13 = 0
number15 = 0
number18 = 0
dataCollection = {}
dataCollection.ironshufflehigh = "iron_shuffle_high"
dataCollection.ironshufflelow = "iron_shuffle_low"
dataCollection.ironshuffle = "iron_shuffle"
dataCollection.ironswinghigh = "iron_swing_action_high"
dataCollection.ironswinglow = "iron_swing_action_low"
dataCollection.ironidlehigh = "iron_swing_idle_high"
dataCollection.ironidlelow = "iron_swing_idle_low"
dataCollection.ironidle = "iron_shuffle"
dataCollection.ironswingintro = "iron_swing_intro_high"
dataCollection2 = {}
dataCollection2.puttshufflelow = "iron_shuffle_low"
dataCollection2.puttshuffle = "iron_shuffle"
dataCollection2.puttswinglow = "putt_action_low"
dataCollection2.puttidle = "putt_idle_low"
dataCollection2.puttintro = "putt_intro_low"
dataCollection3 = {}
dataCollection4 = {}
dataCollection4.model = 886428669
dataCollection4.bone = 24816
dataCollection4.x = 0.12
dataCollection4.y = -0.3
dataCollection4.z = 0.0
dataCollection4.xR = -75.0
dataCollection4.yR = 190.0
dataCollection4.zR = 92.0
dataCollection3.golfbag01 = dataCollection4
dataCollection4 = {}
dataCollection4.model = 1750479612
dataCollection4.bone = 57005
dataCollection4.x = 0.0
dataCollection4.y = -0.05
dataCollection4.z = 0.0
dataCollection4.xR = 90.0
dataCollection4.yR = -118.0
dataCollection4.zR = 44.0
dataCollection3.golfputter01 = dataCollection4
dataCollection4 = {}
dataCollection4.model = 334347537
dataCollection4.bone = 57005
dataCollection4.x = 0.125
dataCollection4.y = 0.04
dataCollection4.z = 0.0
dataCollection4.xR = 90.0
dataCollection4.yR = -118.0
dataCollection4.zR = 44.0
dataCollection3.golfiron01 = dataCollection4
dataCollection4 = {}
dataCollection4.model = 334347537
dataCollection4.bone = 57005
dataCollection4.x = 0.126
dataCollection4.y = 0.041
dataCollection4.z = 0.0
dataCollection4.xR = 90.0
dataCollection4.yR = -118.0
dataCollection4.zR = 44.0
dataCollection3.golfiron03 = dataCollection4
dataCollection4 = {}
dataCollection4.model = 334347537
dataCollection4.bone = 57005
dataCollection4.x = 0.127
dataCollection4.y = 0.042
dataCollection4.z = 0.0
dataCollection4.xR = 90.0
dataCollection4.yR = -118.0
dataCollection4.zR = 44.0
dataCollection3.golfiron05 = dataCollection4
dataCollection4 = {}
dataCollection4.model = 334347537
dataCollection4.bone = 57005
dataCollection4.x = 0.128
dataCollection4.y = 0.043
dataCollection4.z = 0.0
dataCollection4.xR = 90.0
dataCollection4.yR = -118.0
dataCollection4.zR = 44.0
dataCollection3.golfiron07 = dataCollection4
dataCollection4 = {}
dataCollection4.model = 1933637837
dataCollection4.bone = 57005
dataCollection4.x = 0.17
dataCollection4.y = 0.04
dataCollection4.z = 0.0
dataCollection4.xR = 90.0
dataCollection4.yR = -118.0
dataCollection4.zR = 44.0
dataCollection3.golfwedge01 = dataCollection4
dataCollection4 = {}
dataCollection4.model = -2141023172
dataCollection4.bone = 57005
dataCollection4.x = 0.14
dataCollection4.y = 0.0
dataCollection4.z = 0.0
dataCollection4.xR = 160.0
dataCollection4.yR = -60.0
dataCollection4.zR = 10.0
dataCollection3.golfdriver01 = dataCollection4
dataCollection4 = {}
dataCollection5 = {}
dataCollection5.par = 5
createVector3 = vector3
number20 = -1371.3370361328
number21 = 173.09497070313
number23 = 57.013027191162
createVector3 = createVector3(number20, number21, number23)
dataCollection5.startHole = createVector3
createVector3 = vector3
number20 = -1114.2274169922
number21 = 220.8424987793
number23 = 63.89478302
createVector3 = createVector3(number20, number21, number23)
dataCollection5.endHole = createVector3
dataCollection4[1] = dataCollection5
dataCollection5 = {}
dataCollection5.par = 4
createVector3 = vector3
number20 = -1107.1888427734
number21 = 156.581298828
number23 = 62.03958129882
createVector3 = createVector3(number20, number21, number23)
dataCollection5.startHole = createVector3
createVector3 = vector3
number20 = -1322.0944824219
number21 = 158.8779296875
number23 = 56.80027008056
createVector3 = createVector3(number20, number21, number23)
dataCollection5.endHole = createVector3
dataCollection4[2] = dataCollection5
dataCollection5 = {}
dataCollection5.par = 3
createVector3 = vector3
number20 = -1312.1020507813
number21 = 125.8329391479
number23 = 56.4341888427
createVector3 = createVector3(number20, number21, number23)
dataCollection5.startHole = createVector3
createVector3 = vector3
number20 = -1237.347412109
number21 = 112.9838562011
number23 = 56.20140075683
createVector3 = createVector3(number20, number21, number23)
dataCollection5.endHole = createVector3
dataCollection4[3] = dataCollection5
dataCollection5 = {}
dataCollection5.par = 4
createVector3 = vector3
number20 = -1216.913208007
number21 = 106.9870910644
number23 = 57.03926086425
createVector3 = createVector3(number20, number21, number23)
dataCollection5.startHole = createVector3
createVector3 = vector3
number20 = -1096.6276855469
number21 = 7.780227184295
number23 = 49.73574447631
createVector3 = createVector3(number20, number21, number23)
dataCollection5.endHole = createVector3
dataCollection4[4] = dataCollection5
dataCollection5 = {}
dataCollection5.par = 4
createVector3 = vector3
number20 = -1097.85961914
number21 = 66.41466522216
number23 = 52.92545700073
createVector3 = createVector3(number20, number21, number23)
dataCollection5.startHole = createVector3
createVector3 = vector3
number20 = -957.4982910156
number21 = -90.37551879882
number23 = 39.2753639221
createVector3 = createVector3(number20, number21, number23)
dataCollection5.endHole = createVector3
dataCollection4[5] = dataCollection5
dataCollection5 = {}
dataCollection5.par = 3
createVector3 = vector3
number20 = -987.7417602539
number21 = -105.0764007568
number23 = 39.585887908936
createVector3 = createVector3(number20, number21, number23)
dataCollection5.startHole = createVector3
createVector3 = vector3
number20 = -1103.506958007
number21 = -115.2364349365
number23 = 40.55868911743
createVector3 = createVector3(number20, number21, number23)
dataCollection5.endHole = createVector3
dataCollection4[6] = dataCollection5
dataCollection5 = {}
dataCollection5.par = 4
createVector3 = vector3
number20 = -1117.0194091797
number21 = -103.8586044311
number23 = 40.8405838012
createVector3 = createVector3(number20, number21, number23)
dataCollection5.startHole = createVector3
createVector3 = vector3
number20 = -1290.536499023
number21 = 2.7952194213867
number23 = 49.34057998657
createVector3 = createVector3(number20, number21, number23)
dataCollection5.endHole = createVector3
dataCollection4[7] = dataCollection5
dataCollection5 = {}
dataCollection5.par = 5
createVector3 = vector3
number20 = -1272.251831054
number21 = 38.04283142089
number23 = 48.72544860839
createVector3 = createVector3(number20, number21, number23)
dataCollection5.startHole = createVector3
createVector3 = vector3
number20 = -1034.80187988
number21 = -83.16706085205
number23 = 43.0353431701
createVector3 = createVector3(number20, number21, number23)
dataCollection5.endHole = createVector3
dataCollection4[8] = dataCollection5
dataCollection5 = {}
dataCollection5.par = 4
createVector3 = vector3
number20 = -1138.319580078
number21 = -0.1342505216598
number23 = 47.98218917846
createVector3 = createVector3(number20, number21, number23)
dataCollection5.startHole = createVector3
createVector3 = vector3
number20 = -1294.685913085
number21 = 83.5762557983
number23 = 53.92817306518
createVector3 = createVector3(number20, number21, number23)
dataCollection5.endHole = createVector3
dataCollection4[9] = dataCollection5

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue1, localValue2, localValue3) ===
function dataCollection5(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8
  localValue4 = BeginTextCommandDisplayHelp
  localValue5 = "STRING"
  localValue4(localValue5)
  localValue4 = AddTextComponentSubstringPlayerName
  localValue5 = localValue1
  localValue4(localValue5)
  localValue4 = EndTextCommandDisplayHelp
  localValue5 = 0
  localValue6 = false
  localValue7 = localValue2
  localValue8 = localValue3
  localValue4(localValue5, localValue6, localValue7, localValue8)
end

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: none) ===
function createVector3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation
  localValue1 = CMG
  localValue1 = localValue1.hideAllDisplays
  localValue2 = "golf"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = SetFocusPosAndVel
  localValue4 = -1364.8052978516
  localValue5 = 166.98794555664
  localValue6 = 58.013092041016
  localValue7 = 0.0
  localValue8 = 0.0
  stateFlag25 = 0.0
  localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25)
  localValue3 = CreateCameraWithParams
  localValue4 = "DEFAULT_SCRIPTED_CAMERA"
  localValue5 = -1364.8052978516
  localValue6 = 166.98794555664
  localValue7 = 64.013092041016
  localValue8 = 0.0
  stateFlag25 = 0.0
  number33 = 0.0
  stateFlag2 = 65.0
  stateFlag4 = false
  stateFlag5 = 2
  localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5)
  localValue4 = PointCamAtCoord
  localValue5 = localValue3
  localValue6 = -1371.0968017578
  localValue7 = 173.33917236328
  localValue8 = 58.013034820557
  localValue4(localValue5, localValue6, localValue7, localValue8)
  localValue4 = SetCamActive
  localValue5 = localValue3
  localValue6 = true
  localValue4(localValue5, localValue6)
  localValue4 = RenderScriptCams
  localValue5 = true
  localValue6 = true
  localValue7 = 0
  localValue8 = true
  stateFlag25 = false
  localValue4(localValue5, localValue6, localValue7, localValue8, stateFlag25)
  localValue4 = CreateCameraWithParams
  localValue5 = "DEFAULT_SCRIPTED_CAMERA"
  localValue6 = -1367.5961914063
  localValue7 = 176.40940856934
  localValue8 = 64.013084411621
  stateFlag25 = 0.0
  number33 = 0.0
  stateFlag2 = 0.0
  stateFlag4 = 65.0
  stateFlag5 = false
  cmgOperation = 2
  localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation)
  localValue5 = PointCamAtCoord
  localValue6 = localValue4
  localValue7 = -1371.0968017578
  localValue8 = 173.33917236328
  stateFlag25 = 58.013034820557
  localValue5(localValue6, localValue7, localValue8, stateFlag25)
  localValue5 = SetCamActiveWithInterp
  localValue6 = localValue4
  localValue7 = localValue3
  localValue8 = 14000
  stateFlag25 = 5
  number33 = 5
  localValue5(localValue6, localValue7, localValue8, stateFlag25, number33)
  localValue5 = dataCollection5
  localValue6 = "To play golf, you must first go to the location of where your ball is (white blip)"
  localValue7 = true
  localValue8 = 8000
  localValue5(localValue6, localValue7, localValue8)
  localValue5 = Wait
  localValue6 = 7000
  localValue5(localValue6)
  localValue5 = dataCollection5
  localValue6 = "Next, you must swing the ball towards the hole (red golf marker on your map)"
  localValue7 = false
  localValue8 = 8000
  localValue5(localValue6, localValue7, localValue8)
  localValue5 = Wait
  localValue6 = 7000
  localValue5(localValue6)
  localValue5 = PointCamAtCoord
  localValue6 = localValue3
  localValue7 = -1114.1766357422
  localValue8 = 220.724609375
  stateFlag25 = 64.893432617188
  localValue5(localValue6, localValue7, localValue8, stateFlag25)
  localValue5 = PointCamAtCoord
  localValue6 = localValue4
  localValue7 = -1114.1766357422
  localValue8 = 220.724609375
  stateFlag25 = 64.893432617188
  localValue5(localValue6, localValue7, localValue8, stateFlag25)
  localValue5 = SetCamCoord
  localValue6 = localValue3
  localValue7 = -1112.6385498047
  localValue8 = 211.25141906738
  stateFlag25 = 64.905075073242
  localValue5(localValue6, localValue7, localValue8, stateFlag25)
  localValue5 = SetCamCoord
  localValue6 = localValue4
  localValue7 = -1108.9538574219
  localValue8 = 223.51953125
  stateFlag25 = 64.759399414063
  localValue5(localValue6, localValue7, localValue8, stateFlag25)
  localValue5 = SetCamActiveWithInterp
  localValue6 = localValue4
  localValue7 = localValue3
  localValue8 = 14000
  stateFlag25 = 5
  number33 = 5
  localValue5(localValue6, localValue7, localValue8, stateFlag25, number33)
  localValue5 = dataCollection5
  localValue6 = "Your aim is to get the ball as close to the hole as possible to finish that hole."
  localValue7 = false
  localValue8 = 8000
  localValue5(localValue6, localValue7, localValue8)
  localValue5 = Wait
  localValue6 = 7000
  localValue5(localValue6)
  localValue5 = dataCollection5
  localValue6 = "Once complete, you will move on to the next hole where a ball is already placed for you. Good luck!"
  localValue7 = false
  localValue8 = 8000
  localValue5(localValue6, localValue7, localValue8)
  localValue5 = Wait
  localValue6 = 7000
  localValue5(localValue6)
  localValue5 = DestroyCam
  localValue6 = localValue3
  localValue7 = false
  localValue5(localValue6, localValue7)
  localValue5 = DestroyCam
  localValue6 = localValue4
  localValue7 = false
  localValue5(localValue6, localValue7)
  localValue5 = RenderScriptCams
  localValue6 = false
  localValue7 = true
  localValue8 = 3000
  stateFlag25 = true
  number33 = false
  localValue5(localValue6, localValue7, localValue8, stateFlag25, number33)
  localValue5 = ClearFocus
  localValue5()
  localValue5 = FreezeEntityPosition
  localValue6 = localValue1
  localValue7 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue5(localValue6, localValue7)
  localValue5 = SetEntityCoords
  localValue6 = localValue1
  localValue7 = localValue2.x
  localValue8 = localValue2.y
  stateFlag25 = localValue2.z
  number33 = true
  stateFlag2 = false
  stateFlag4 = false
  stateFlag5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue5(localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5)
  localValue5 = CMG
  localValue5 = localValue5.showAllDisplays
  localValue6 = "golf"
  localValue5(localValue6)
end

-- === HELPER FUNCTION (decompiler name: number20; parameters: none) ===
function number20()
  local localValue1, localValue2
  localValue1 = DeleteEntity
  localValue2 = number15
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = 0
  number15 = localValue1
end

-- === HELPER FUNCTION (decompiler name: number21; parameters: localValue1) ===
function number21(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  if localValue1 then
    localValue2 = notify
    localValue3 = "You have successfully completed all holes in "
    localValue4 = tostring
    localValue5 = number22
    localValue4 = localValue4(localValue5)
    localValue5 = " strokes!"
    localValue3 = localValue3 .. localValue4 .. localValue5
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
  end
  localValue2 = DeleteEntity
  localValue3 = number11
  -- Beginner: Delete a GTA entity.
  localValue2(localValue3)
  localValue2 = number20
  localValue2()
  localValue2 = DeleteObject
  localValue3 = number2
  localValue2(localValue3)
  localValue2 = tCMG
  localValue2 = localValue2.removeBlip
  localValue3 = workingValue
  localValue2(localValue3)
  localValue2 = tCMG
  localValue2 = localValue2.removeBlip
  localValue3 = workingValue2
  localValue2(localValue3)
  localValue2 = tCMG
  localValue2 = localValue2.removeBlip
  localValue3 = workingValue4
  localValue2(localValue3)
  localValue2 = tCMG
  localValue2 = localValue2.removeMarker
  localValue3 = workingValue3
  localValue2(localValue3)
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = 5000
  localValue2(localValue3)
  localValue2 = 0
  number = localValue2
  localValue2 = 0
  number14 = localValue2
  localValue2 = false
  stateFlag22 = localValue2
  localValue2 = 1
  number25 = localValue2
  localValue2 = 1
  number26 = localValue2
  localValue2 = 1
  number28 = localValue2
  localValue2 = false
  stateFlag23 = localValue2
  localValue2 = false
  stateFlag24 = localValue2
  localValue2 = 0
  number11 = localValue2
end
number23 = Citizen
number23 = number23.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5
  localValue1 = Citizen
  localValue1 = localValue1.Wait
  localValue2 = 5000
  localValue1(localValue2)
  localValue1 = vector3
  localValue2 = -1350.1905517578
  localValue3 = 134.2918548584
  localValue4 = 55.256828308105
  localValue1 = localValue1(localValue2, localValue3, localValue4)

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local stateFlag, text2
    stateFlag = true
    stateFlag9 = stateFlag
  end

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local stateFlag, text2
    stateFlag = false
    stateFlag9 = stateFlag
  end

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local stateFlag, text2, stateFlag21, number24, workingValue21, number27, number29, number30, number31, number34, number3, number4, number5, number6, number8, number9, number10, number12, stateFlag11, stateFlag13, number17, stateFlag15, workingValue5, workingValue6, stateFlag19
    stateFlag = stateFlag22
    if stateFlag then
      stateFlag = dataCollection5
      text2 = "Press ~INPUT_CONTEXT~ to end golf"
      stateFlag21 = false
      number24 = -1
      stateFlag(text2, stateFlag21, number24)
    else
      stateFlag = dataCollection5
      text2 = "Press ~INPUT_CONTEXT~ to start golf (\194\1635,000)"
      stateFlag21 = false
      number24 = -1
      stateFlag(text2, stateFlag21, number24)
    end
    stateFlag = DrawMarker
    text2 = 27
    stateFlag21 = localValue1.x
    number24 = localValue1.y
    workingValue21 = localValue1.z
    number27 = 0
    number29 = 0
    number30 = 0
    number31 = 0
    number34 = 0
    number3 = 0
    number4 = 1.5
    number5 = 1.5
    number6 = 10.3
    number8 = 0
    number9 = 519
    number10 = 0
    number12 = 105
    stateFlag11 = false
    stateFlag13 = false
    number17 = 2
    stateFlag15 = false
    workingValue5 = nil
    workingValue6 = nil
    stateFlag19 = false
    stateFlag(text2, stateFlag21, number24, workingValue21, number27, number29, number30, number31, number34, number3, number4, number5, number6, number8, number9, number10, number12, stateFlag11, stateFlag13, number17, stateFlag15, workingValue5, workingValue6, stateFlag19)
    stateFlag = IsControlJustPressed
    text2 = 1
    stateFlag21 = 38
    stateFlag = stateFlag(text2, stateFlag21)
    if stateFlag then
      stateFlag = stateFlag22
      if stateFlag then
        stateFlag = number21
        text2 = false
        stateFlag(text2)
      else
        stateFlag = TriggerServerEvent
        text2 = "f1f0b9bf95"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f1f0b9bf95".
        stateFlag(text2)
      end
    end
  end
  localValue5 = CMG
  localValue5 = localValue5.createArea
  localValue6 = "golf_course"
  localValue7 = localValue1
  localValue8 = 15
  stateFlag25 = 6
  number33 = localValue2
  stateFlag2 = localValue3
  stateFlag4 = localValue4
  stateFlag5 = {}
  -- Beginner: Create an interaction area around a world position.
  localValue5(localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
number23(workingValue7)
number23 = 0

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8) ===
function workingValue7(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  local stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation, number7, stateFlag6, stateFlag7, stateFlag8, stateFlag10, stateFlag12, number16, stateFlag14, stateFlag16, stateFlag17, stateFlag18, number19, stateFlag20
  stateFlag25 = number20
  stateFlag25()
  stateFlag25 = localValue1
  number33 = SetCurrentPedWeapon
  stateFlag2 = CMG
  stateFlag2 = stateFlag2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag2 = stateFlag2()
  stateFlag4 = 2725352035
  stateFlag5 = true
  number33(stateFlag2, stateFlag4, stateFlag5)
  number33 = GetPedBoneIndex
  stateFlag2 = CMG
  stateFlag2 = stateFlag2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag2 = stateFlag2()
  stateFlag4 = localValue2
  number33 = number33(stateFlag2, stateFlag4)
  stateFlag2 = CMG
  stateFlag2 = stateFlag2.loadModel
  stateFlag4 = stateFlag25
  -- Beginner: Request/load a GTA model before spawning or applying it.
  stateFlag2(stateFlag4)
  stateFlag2 = number23
  stateFlag2 = stateFlag2 + 1
  number23 = stateFlag2
  stateFlag2 = CMG
  stateFlag2 = stateFlag2.requestEntitySpawn
  stateFlag4 = number23
  stateFlag4 = stateFlag4 % 2
  if 1 == stateFlag4 then
    stateFlag4 = "golf_attach_prop"
    if stateFlag4 then
      goto continueAtStep36
    end
  end
  stateFlag4 = "golf_attach_prop_2"
  ::continueAtStep36::
  stateFlag5 = stateFlag25
  stateFlag2(stateFlag4, stateFlag5)
  stateFlag2 = CMG
  stateFlag2 = stateFlag2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  stateFlag2 = stateFlag2()
  stateFlag4 = CreateObject
  stateFlag5 = stateFlag25
  cmgOperation = stateFlag2.x
  number7 = stateFlag2.y
  stateFlag6 = stateFlag2.z
  stateFlag7 = true
  stateFlag8 = true
  stateFlag10 = false
  -- Beginner: result below is objectEntity.
  stateFlag4 = stateFlag4(stateFlag5, cmgOperation, number7, stateFlag6, stateFlag7, stateFlag8, stateFlag10)
  number15 = stateFlag4
  stateFlag4 = AttachEntityToEntity
  stateFlag5 = number15
  cmgOperation = CMG
  cmgOperation = cmgOperation.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  number7 = number33
  stateFlag6 = localValue3
  stateFlag7 = localValue4
  stateFlag8 = localValue5
  stateFlag10 = localValue6
  stateFlag12 = localValue7
  number16 = localValue8
  stateFlag14 = true
  stateFlag16 = true
  stateFlag17 = false
  stateFlag18 = false
  number19 = 2
  stateFlag20 = true
  -- Beginner: Attach one entity to another entity.
  stateFlag4(stateFlag5, cmgOperation, number7, stateFlag6, stateFlag7, stateFlag8, stateFlag10, stateFlag12, number16, stateFlag14, stateFlag16, stateFlag17, stateFlag18, number19, stateFlag20)
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3
  localValue2 = Citizen
  localValue2 = localValue2.CreateThreadNow

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local stateFlag, text2, stateFlag21, number24, workingValue21, number27, number29, number30, number31, number34
    stateFlag = workingValue7
    stateFlag21 = localValue1
    text2 = dataCollection3
    text2 = text2[stateFlag21]
    text2 = text2.model
    number24 = localValue1
    stateFlag21 = dataCollection3
    stateFlag21 = stateFlag21[number24]
    stateFlag21 = stateFlag21.bone
    workingValue21 = localValue1
    number24 = dataCollection3
    number24 = number24[workingValue21]
    number24 = number24.x
    number27 = localValue1
    workingValue21 = dataCollection3
    workingValue21 = workingValue21[number27]
    workingValue21 = workingValue21.y
    number29 = localValue1
    number27 = dataCollection3
    number27 = number27[number29]
    number27 = number27.z
    number30 = localValue1
    number29 = dataCollection3
    number29 = number29[number30]
    number29 = number29.xR
    number31 = localValue1
    number30 = dataCollection3
    number30 = number30[number31]
    number30 = number30.yR
    number34 = localValue1
    number31 = dataCollection3
    number31 = number31[number34]
    number31 = number31.zR
    stateFlag(text2, stateFlag21, number24, workingValue21, number27, number29, number30, number31)
  end
  localValue2(localValue3)
end
eventHandler = RegisterNetEvent
cmgOperation2 = "5cbe9d656b"
-- Beginner: this function handles network event "5cbe9d656b".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25
  localValue1 = stateFlag22
  if localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.requestEntitySpawn
  localValue2 = "golfcart"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.spawnVehicle
  localValue2 = "caddy"
  localValue3 = -1332.7823486328
  localValue4 = 128.18229675293
  localValue5 = 56.032329559326
  localValue6 = 180
  localValue7 = true
  localValue8 = true
  stateFlag25 = false
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25)
  number11 = localValue1
  localValue1 = AddBlipForEntity
  localValue2 = number11
  -- Beginner: result below is blipHandle.
  localValue1 = localValue1(localValue2)
  localValue2 = SetBlipSprite
  localValue3 = localValue1
  localValue4 = 326
  localValue2(localValue3, localValue4)
  localValue2 = SetBlipColour
  localValue3 = localValue1
  localValue4 = 5
  localValue2(localValue3, localValue4)
  localValue2 = true
  stateFlag22 = localValue2
  localValue2 = SetCurrentPedWeapon
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = 2725352035
  localValue5 = false
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = 1000
  localValue2(localValue3)
  localValue2 = workingValue8
  localValue3 = "golfbag01"
  localValue2(localValue3)
  localValue2 = GetResourceKvpInt
  localValue3 = "cmg_golf_done_cutscene"
  localValue2 = localValue2(localValue3)
  if 0 == localValue2 then
    localValue2 = createVector3
    localValue2()
    localValue2 = SetResourceKvpInt
    localValue3 = "cmg_golf_done_cutscene"
    localValue4 = 1
    localValue2(localValue3, localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5cbe9d656b".
eventHandler(cmgOperation2, workingValue9)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2
  localValue1 = stateFlag22
  if localValue1 then
    localValue1 = number
    if 0 ~= localValue1 then
      localValue1 = stateFlag24
      if not localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.5
        localValue3 = 0.93
        localValue4 = 0.15
        localValue5 = 0.04
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        stateFlag25 = 140
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25)
        localValue1 = "~s~"
        localValue2 = number14
        localValue3 = "~r~ | ~s~"
        localValue4 = number22
        localValue5 = "~r~ | ~s~"
        localValue6 = text
        localValue7 = "~r~ | ~s~"
        localValue8 = math
        localValue8 = localValue8.ceil
        stateFlag25 = CMG
        stateFlag25 = stateFlag25.getPlayerCoords
        -- Beginner: result below is playerCoords.
        stateFlag25 = stateFlag25()
        stateFlag2 = number
        number33 = dataCollection4
        number33 = number33[stateFlag2]
        number33 = number33.endHole
        stateFlag25 = stateFlag25 - number33
        stateFlag25 = #stateFlag25
        localValue8 = localValue8(stateFlag25)
        stateFlag25 = " m"
        localValue1 = localValue1 .. localValue2 .. localValue3 .. localValue4 .. localValue5 .. localValue6 .. localValue7 .. localValue8 .. stateFlag25
        localValue2 = CMG
        localValue2 = localValue2.DrawText
        localValue3 = 0.448
        localValue4 = 0.91
        localValue5 = localValue1
        localValue6 = 0.6
        localValue7 = 4
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7)
      end
    end
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
workingValue9 = eventHandler
text3 = "Golf HUD"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(workingValue9, text3)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation2(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2
  localValue4 = DeleteObject
  localValue5 = number2
  localValue4(localValue5)
  localValue4 = CMG
  localValue4 = localValue4.requestEntitySpawn
  localValue5 = "golf_ball_object"
  localValue6 = vector3
  localValue7 = localValue1
  localValue8 = localValue2
  stateFlag25 = localValue3
  localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2 = localValue6(localValue7, localValue8, stateFlag25)
  localValue4(localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2)
  localValue4 = CreateObject
  localValue5 = -1358020705
  localValue6 = localValue1
  localValue7 = localValue2
  localValue8 = localValue3
  stateFlag25 = true
  number33 = true
  stateFlag2 = false
  -- Beginner: result below is objectEntity.
  localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2)
  number2 = localValue4
  localValue4 = SetEntityRecordsCollisions
  localValue5 = number2
  localValue6 = true
  localValue4(localValue5, localValue6)
  localValue4 = tCMG
  localValue4 = localValue4.removeBlip
  localValue5 = workingValue
  localValue4(localValue5)
  localValue4 = tCMG
  localValue4 = localValue4.addBlip
  localValue5 = localValue1
  localValue6 = localValue2
  localValue7 = localValue3
  localValue8 = 161
  stateFlag25 = 0
  number33 = "Golf Ball"
  stateFlag2 = 0.6
  localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2)
  workingValue = localValue4
  localValue4 = SetBlipAsShortRange
  localValue5 = workingValue
  localValue6 = false
  localValue4(localValue5, localValue6)
  localValue4 = SetBlipDisplay
  localValue5 = workingValue
  localValue6 = 2
  localValue4(localValue5, localValue6)
  localValue4 = SetBlipAsFriendly
  localValue5 = workingValue
  localValue6 = true
  localValue4(localValue5, localValue6)
  localValue4 = SetEntityCollision
  localValue5 = number2
  localValue6 = true
  localValue7 = true
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = SetEntityHasGravity
  localValue5 = number2
  localValue6 = true
  localValue4(localValue5, localValue6)
  localValue4 = FreezeEntityPosition
  localValue5 = number2
  localValue6 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue4(localValue5, localValue6)
  localValue4 = GetEntityHeading
  localValue5 = CMG
  localValue5 = localValue5.getPlayerPed
  localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2 = localValue5()
  -- Beginner: result below is heading.
  localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2)
  localValue5 = SetEntityHeading
  localValue6 = number2
  localValue7 = localValue4
  -- Beginner: Change the direction an entity is facing.
  localValue5(localValue6, localValue7)
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = GetEntityHeading
  localValue3 = number2
  -- Beginner: result below is heading.
  localValue2 = localValue2(localValue3)
  localValue3 = 360.0
  if localValue2 >= localValue3 then
    localValue2 = 0.0
  end
  if localValue1 then
    localValue3 = SetEntityHeading
    localValue4 = number2
    localValue5 = localValue2 - 0.7
    localValue3(localValue4, localValue5)
  else
    localValue3 = SetEntityHeading
    localValue4 = number2
    localValue5 = localValue2 + 0.7
    -- Beginner: Change the direction an entity is facing.
    localValue3(localValue4, localValue5)
  end
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25
  localValue1 = 20000
  while localValue1 > 0 do
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 5
    localValue2(localValue3)
    localValue2 = GetEntityCoords
    localValue3 = number2
    -- Beginner: result below is entityCoords.
    localValue2 = localValue2(localValue3)
    localValue3 = SetCamCoord
    localValue4 = number18
    localValue5 = localValue2.x
    localValue6 = localValue2.y
    localValue6 = localValue6 - 10
    localValue7 = localValue2.z
    localValue7 = localValue7 + 9
    localValue3(localValue4, localValue5, localValue6, localValue7)
    localValue3 = PointCamAtEntity
    localValue4 = number18
    localValue5 = number2
    localValue6 = 0.0
    localValue7 = 0.0
    localValue8 = 0.0
    stateFlag25 = true
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25)
    localValue1 = localValue1 - 1
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = CreateCam
  localValue2 = "DEFAULT_SCRIPTED_CAMERA"
  localValue3 = true
  -- Beginner: result below is cameraHandle.
  localValue1 = localValue1(localValue2, localValue3)
  number18 = localValue1
  localValue1 = SetCamFov
  localValue2 = number18
  localValue3 = 90.0
  localValue1(localValue2, localValue3)
  localValue1 = RenderScriptCams
  localValue2 = true
  localValue3 = true
  localValue4 = 3
  localValue5 = true
  localValue6 = false
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = Citizen
  localValue1 = localValue1.CreateThreadNow
  localValue2 = text3
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = RenderScriptCams
  localValue2 = false
  localValue3 = false
  localValue4 = 0
  localValue5 = true
  localValue6 = false
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = DestroyCam
  localValue2 = number18
  localValue3 = false
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = false
  stateFlag24 = localValue1
  localValue1 = number14
  localValue1 = localValue1 + 1
  number14 = localValue1
  localValue1 = GetEntityCoords
  localValue2 = number2
  -- Beginner: result below is entityCoords.
  localValue1 = localValue1(localValue2)
  localValue3 = number
  localValue2 = dataCollection4
  localValue2 = localValue2[localValue3]
  localValue2 = localValue2.endHole
  localValue2 = localValue1 - localValue2
  localValue2 = #localValue2
  localValue3 = 1.5
  if localValue2 < localValue3 then
    localValue3 = number14
    localValue4 = number22
    localValue3 = localValue3 + localValue4
    number22 = localValue3
    localValue3 = 0
    number14 = localValue3
    localValue3 = 1
    number25 = localValue3
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    number13 = localValue3
    localValue3 = true
    localValue4 = Citizen
    localValue4 = localValue4.CreateThread

    -- === HELPER FUNCTION: localValue5() ===
    function localValue5()
      local stateFlag, text2
      stateFlag = Wait
      text2 = 3000
      stateFlag(text2)
      stateFlag = false
      localValue3 = stateFlag
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue4(localValue5)
    while localValue3 do
      localValue4 = drawNativeText
      localValue5 = "You got the ball within range!"
      -- Beginner: Draw GTA-style text on screen.
      localValue4(localValue5)
      localValue4 = Citizen
      localValue4 = localValue4.Wait
      localValue5 = 0
      localValue4(localValue5)
    end
  end
  localValue3 = number14
  if localValue3 > 12 then
    localValue3 = number14
    localValue4 = number22
    localValue3 = localValue3 + localValue4
    number22 = localValue3
    localValue3 = 0
    number14 = localValue3
    localValue3 = 1
    number25 = localValue3
    localValue3 = true
    localValue4 = Citizen
    localValue4 = localValue4.CreateThread

    -- === HELPER FUNCTION: localValue5() ===
    function localValue5()
      local stateFlag, text2
      stateFlag = Wait
      text2 = 3000
      stateFlag(text2)
      stateFlag = false
      localValue3 = stateFlag
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue4(localValue5)
    while localValue3 do
      localValue4 = drawNativeText
      localValue5 = "You took too many shots.."
      -- Beginner: Draw GTA-style text on screen.
      localValue4(localValue5)
      localValue4 = Citizen
      localValue4 = localValue4.Wait
      localValue5 = 0
      localValue4(localValue5)
    end
  end
  localValue3 = workingValue8
  localValue4 = "golfbag01"
  localValue3(localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2
  localValue1 = number28
  if 3 == localValue1 then
    localValue1 = workingValue8
    localValue2 = "golfdriver01"
    localValue1(localValue2)
    localValue1 = "Wood"
    text = localValue1
  else
    localValue1 = number28
    if 2 == localValue1 then
      localValue1 = workingValue8
      localValue2 = "golfwedge01"
      localValue1(localValue2)
      localValue1 = "Wedge"
      text = localValue1
    else
      localValue1 = number28
      if 1 == localValue1 then
        localValue1 = workingValue8
        localValue2 = "golfiron01"
        localValue1(localValue2)
        localValue1 = "1 Iron"
        text = localValue1
      else
        localValue1 = number28
        if 4 == localValue1 then
          localValue1 = workingValue8
          localValue2 = "golfiron03"
          localValue1(localValue2)
          localValue1 = "3 Iron"
          text = localValue1
        else
          localValue1 = number28
          if 5 == localValue1 then
            localValue1 = workingValue8
            localValue2 = "golfiron05"
            localValue1(localValue2)
            localValue1 = "5 Iron"
            text = localValue1
          else
            localValue1 = number28
            if 6 == localValue1 then
              localValue1 = workingValue8
              localValue2 = "golfiron07"
              localValue1(localValue2)
              localValue1 = "7 Iron"
              text = localValue1
            else
              localValue1 = workingValue8
              localValue2 = "golfputter01"
              localValue1(localValue2)
              localValue1 = "Putter"
              text = localValue1
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1) ===
function workingValue14(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation
  localValue2 = CMG
  localValue2 = localValue2.loadAnimDict
  localValue3 = "mini@golf"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue2(localValue3)
  localValue2 = IsEntityPlayingAnim
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = "mini@golf"
  localValue5 = localValue1
  localValue6 = 3
  localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
  if not localValue2 then
    localValue2 = GetAnimDuration
    localValue3 = "mini@golf"
    localValue4 = localValue1
    localValue2 = localValue2(localValue3, localValue4)
    localValue3 = TaskPlayAnim
    localValue4 = CMG
    localValue4 = localValue4.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue4 = localValue4()
    localValue5 = "mini@golf"
    localValue6 = localValue1
    localValue7 = 1.0
    localValue8 = -1.0
    stateFlag25 = localValue2
    number33 = 0
    stateFlag2 = 1
    stateFlag4 = false
    stateFlag5 = false
    cmgOperation = false
    -- Beginner: Play an animation on a ped.
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    localValue4 = localValue2
    localValue3(localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = ""
  localValue2 = number28
  if 0 == localValue2 then
    localValue1 = dataCollection2.puttidle
  else
    localValue2 = IsControlPressed
    localValue3 = 1
    localValue4 = 38
    localValue2 = localValue2(localValue3, localValue4)
    if localValue2 then
      localValue1 = dataCollection.ironidlehigh
    else
      localValue1 = dataCollection.ironidle
    end
  end
  localValue2 = workingValue14
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = 1200
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: none) ===
function workingValue16()
  local localValue1, localValue2
  localValue1 = true
  stateFlag23 = localValue1
  while true do
    localValue1 = stateFlag23
    if not localValue1 then
      break
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
    localValue1 = workingValue15
    localValue1()
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = 0.0
  localValue3 = 0.0
  localValue4 = localValue1
  if localValue4 >= 0.0 and localValue4 <= 90.0 then
    localValue5 = localValue4 / 9.2
    localValue5 = localValue5 / 10
    localValue2 = -1.0 + localValue5
    localValue6 = 0.0
    localValue3 = localValue6 - localValue5
  end
  if localValue4 > 90.0 then
    localValue5 = 180.0
    if localValue4 <= localValue5 then
      localValue5 = localValue4 - 90.0
      localValue6 = localValue5 / 9.2
      localValue6 = localValue6 / 10
      localValue2 = 0.0 + localValue6
      localValue3 = -1.0 + localValue6
    end
  end
  localValue5 = 180.0
  if localValue4 > localValue5 then
    localValue5 = 270.0
    if localValue4 <= localValue5 then
      localValue5 = localValue4 - 180.0
      localValue6 = localValue5 / 9.2
      localValue6 = localValue6 / 10
      localValue7 = 1.0
      localValue2 = localValue7 - localValue6
      localValue3 = 0.0 + localValue6
    end
  end
  localValue5 = 270.0
  if localValue4 > localValue5 then
    localValue5 = 360.0
    if localValue4 <= localValue5 then
      localValue5 = localValue4 - 270.0
      localValue6 = localValue5 / 9.2
      localValue6 = localValue6 / 10
      localValue7 = 0.0
      localValue2 = localValue7 - localValue6
      localValue7 = 1.0
      localValue3 = localValue7 - localValue6
    end
  end
  localValue5 = localValue2
  localValue6 = localValue3
  return localValue5, localValue6
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: none) ===
function workingValue18()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5
  localValue1 = number28
  if 0 ~= localValue1 then
    localValue1 = workingValue10
    localValue1()
  end
  localValue1 = CMG
  localValue1 = localValue1.loadPtfx
  localValue2 = "scr_minigamegolf"
  localValue1(localValue2)
  localValue1 = UseParticleFxAsset
  localValue2 = "scr_minigamegolf"
  localValue1(localValue2)
  localValue1 = StartParticleFxLoopedOnEntity
  localValue2 = "scr_golf_ball_trail"
  localValue3 = number2
  localValue4 = 0.0
  localValue5 = 0.0
  localValue6 = 0.0
  localValue7 = 0.0
  localValue8 = 0.0
  stateFlag25 = 0.0
  number33 = 1.0
  stateFlag2 = false
  stateFlag4 = false
  stateFlag5 = false
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5)
  localValue1 = false
  localValue2 = GetEntityHeading
  localValue3 = number2
  -- Beginner: result below is heading.
  localValue2 = localValue2(localValue3)
  localValue3 = workingValue17
  localValue4 = localValue2
  localValue3, localValue4 = localValue3(localValue4)
  localValue5 = FreezeEntityPosition
  localValue6 = number2
  localValue7 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue5(localValue6, localValue7)
  localValue5 = number32
  localValue5 = localValue5 / 3
  localValue6 = 0.0
  localValue7 = number28
  if 0 == localValue7 then
    localValue7 = number32
    localValue7 = localValue7 / 3
    number32 = localValue7
    localValue7 = 5.0
    while true do
      localValue8 = number32
      if not (localValue7 < localValue8) then
        break
      end
      localValue8 = SetEntityVelocity
      stateFlag25 = number2
      number33 = localValue3 * localValue7
      stateFlag2 = localValue4 * localValue7
      stateFlag4 = -0.1
      localValue8(stateFlag25, number33, stateFlag2, stateFlag4)
      localValue8 = Citizen
      localValue8 = localValue8.Wait
      stateFlag25 = 20
      localValue8(stateFlag25)
      localValue7 = localValue7 + 0.3
    end
    localValue8 = number32
    number32 = localValue8
    while true do
      localValue8 = number32
      if not (localValue8 > 0) then
        break
      end
      localValue8 = SetEntityVelocity
      stateFlag25 = number2
      number33 = number32
      number33 = localValue3 * number33
      stateFlag2 = number32
      stateFlag2 = localValue4 * stateFlag2
      stateFlag4 = -0.1
      localValue8(stateFlag25, number33, stateFlag2, stateFlag4)
      localValue8 = Citizen
      localValue8 = localValue8.Wait
      stateFlag25 = 20
      localValue8(stateFlag25)
      localValue8 = number32
      localValue8 = localValue8 - 0.3
      number32 = localValue8
    end
  else
    localValue7 = number28
    if 1 == localValue7 then
      localValue7 = number32
      localValue7 = localValue7 * 1.85
      number32 = localValue7
      localValue7 = number32
      localValue6 = localValue7 / 2.6
      localValue1 = true
      localValue5 = localValue5 / 4
    else
      localValue7 = number28
      if 3 == localValue7 then
        localValue7 = number32
        localValue7 = localValue7 * 2.0
        number32 = localValue7
        localValue7 = number32
        localValue6 = localValue7 / 2.6
        localValue1 = true
        localValue5 = localValue5 / 2
      else
        localValue7 = number28
        if 2 == localValue7 then
          localValue7 = number32
          localValue7 = localValue7 * 1.5
          number32 = localValue7
          localValue7 = number32
          localValue6 = localValue7 / 2.1
          localValue1 = true
          localValue5 = localValue5 / 4.5
        else
          localValue7 = number28
          if 4 == localValue7 then
            localValue7 = number32
            localValue7 = localValue7 * 1.8
            number32 = localValue7
            localValue7 = number32
            localValue6 = localValue7 / 2.55
            localValue1 = true
            localValue5 = localValue5 / 5
          else
            localValue7 = number28
            if 5 == localValue7 then
              localValue7 = number32
              localValue7 = localValue7 * 1.75
              number32 = localValue7
              localValue7 = number32
              localValue6 = localValue7 / 2.5
              localValue1 = true
              localValue5 = localValue5 / 5.5
            else
              localValue7 = number28
              if 6 == localValue7 then
                localValue7 = number32
                localValue7 = localValue7 * 1.7
                number32 = localValue7
                localValue7 = number32
                localValue6 = localValue7 / 2.45
                localValue1 = true
                localValue5 = localValue5 / 6.0
              end
            end
          end
        end
      end
    end
  end
  while true do
    localValue7 = number32
    if not (localValue7 > 0) then
      break
    end
    localValue7 = SetEntityVelocity
    localValue8 = number2
    stateFlag25 = number32
    stateFlag25 = localValue3 * stateFlag25
    number33 = number32
    number33 = localValue4 * number33
    stateFlag2 = localValue6
    localValue7(localValue8, stateFlag25, number33, stateFlag2)
    localValue7 = Citizen
    localValue7 = localValue7.Wait
    localValue8 = 0
    localValue7(localValue8)
    localValue7 = number32
    localValue7 = localValue7 - 1
    number32 = localValue7
    localValue6 = localValue6 - 1
  end
  if localValue1 then
    while localValue5 > 0 do
      localValue7 = SetEntityVelocity
      localValue8 = number2
      stateFlag25 = localValue3 * localValue5
      number33 = localValue4 * localValue5
      stateFlag2 = 0.0
      localValue7(localValue8, stateFlag25, number33, stateFlag2)
      localValue7 = Citizen
      localValue7 = localValue7.Wait
      localValue8 = 5
      localValue7(localValue8)
      localValue5 = localValue5 - 1
    end
  end
  localValue7 = Citizen
  localValue7 = localValue7.Wait
  localValue8 = 2000
  localValue7(localValue8)
  localValue7 = SetEntityVelocity
  localValue8 = number2
  stateFlag25 = 0.0
  number33 = 0.0
  stateFlag2 = 0.0
  localValue7(localValue8, stateFlag25, number33, stateFlag2)
  localValue7 = number28
  if 0 ~= localValue7 then
    localValue7 = workingValue11
    localValue7()
  end
  localValue7 = GetEntityCoords
  localValue8 = number2
  -- Beginner: result below is entityCoords.
  localValue7 = localValue7(localValue8)
  localValue8 = cmgOperation2
  stateFlag25 = localValue7.x
  number33 = localValue7.y
  stateFlag2 = localValue7.z
  -- Beginner: Run a helper every game frame while this script is active.
  localValue8(stateFlag25, number33, stateFlag2)
  localValue8 = FreezeEntityPosition
  stateFlag25 = number2
  number33 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue8(stateFlag25, number33)
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
function workingValue19()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation, number7, stateFlag6, stateFlag7, stateFlag8, stateFlag10, stateFlag12
  localValue1 = 0.1
  number32 = localValue1
  localValue1 = GetEntityCoords
  localValue2 = number2
  -- Beginner: result below is entityCoords.
  localValue1 = localValue1(localValue2)
  localValue3 = number
  localValue2 = dataCollection4
  localValue2 = localValue2[localValue3]
  localValue2 = localValue2.endHole
  localValue1 = localValue1 - localValue2
  localValue1 = #localValue1
  localValue2 = 200.0
  if localValue1 >= localValue2 then
    localValue2 = 3
    number28 = localValue2
  else
    localValue2 = 150.0
    if localValue1 >= localValue2 then
      localValue2 = 200.0
      if localValue1 < localValue2 then
        localValue2 = 1
        number28 = localValue2
    end
    else
      if localValue1 >= 120.0 then
        localValue2 = 250.0
        if localValue1 < localValue2 then
          localValue2 = 4
          number28 = localValue2
      end
      elseif localValue1 >= 90.0 and localValue1 < 120.0 then
        localValue2 = 5
        number28 = localValue2
      elseif localValue1 >= 50.0 and localValue1 < 90.0 then
        localValue2 = 6
        number28 = localValue2
      elseif localValue1 >= 20.0 and localValue1 < 50.0 then
        localValue2 = 2
        number28 = localValue2
      else
        localValue2 = 0
        number28 = localValue2
      end
    end
  end
  localValue2 = ""
  localValue3 = workingValue13
  localValue3()
  localValue3 = RequestScriptAudioBank
  localValue4 = "GOLF_I"
  localValue5 = false
  localValue3(localValue4, localValue5)
  while true do
    localValue3 = number26
    if 2 ~= localValue3 then
      break
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    localValue4 = 0
    localValue3(localValue4)
    localValue3 = IsControlPressed
    localValue4 = 1
    localValue5 = 38
    localValue3 = localValue3(localValue4, localValue5)
    if localValue3 then
      localValue3 = 0.5
      localValue4 = number32
      if localValue4 > 25 then
        localValue3 = localValue3 + 0.1
      end
      localValue4 = number32
      if localValue4 > 50 then
        localValue3 = localValue3 + 0.2
      end
      localValue4 = number32
      if localValue4 > 75 then
        localValue3 = localValue3 + 0.3
      end
      localValue4 = number32
      localValue4 = localValue4 + localValue3
      number32 = localValue4
      localValue4 = number32
      if localValue4 > 100.0 then
        localValue4 = 1.0
        number32 = localValue4
      end
    end
    localValue3 = number32
    localValue3 = localValue3 * 2
    localValue3 = localValue3 / 1000
    localValue4 = number32
    if localValue4 > 55 then
      localValue4 = number32
      localValue4 = localValue4 / 100
      localValue5 = DrawRect
      localValue6 = 0.5
      localValue7 = 0.93
      localValue8 = localValue3
      stateFlag25 = 0.02
      number33 = math
      number33 = number33.floor
      stateFlag2 = localValue4 * 255
      number33 = number33(stateFlag2)
      stateFlag2 = math
      stateFlag2 = stateFlag2.floor
      stateFlag4 = 1.0
      stateFlag4 = stateFlag4 - localValue4
      stateFlag4 = stateFlag4 * 255
      stateFlag2 = stateFlag2(stateFlag4)
      stateFlag4 = 0
      stateFlag5 = 210
      localValue5(localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5)
    else
      localValue4 = DrawRect
      localValue5 = 0.5
      localValue6 = 0.93
      localValue7 = localValue3
      localValue8 = 0.02
      stateFlag25 = 22
      number33 = 235
      stateFlag2 = 22
      stateFlag4 = 210
      localValue4(localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4)
    end
    localValue4 = drawNativeText
    localValue5 = "Press E to swing, A-D to rotate, Y to swap club."
    -- Beginner: Draw GTA-style text on screen.
    localValue4(localValue5)
    localValue4 = GetEntityCoords
    localValue5 = number2
    -- Beginner: result below is entityCoords.
    localValue4 = localValue4(localValue5)
    localValue5 = DrawLine
    localValue6 = localValue4.x
    localValue7 = localValue4.y
    localValue8 = localValue4.z
    number33 = number
    stateFlag25 = dataCollection4
    stateFlag25 = stateFlag25[number33]
    stateFlag25 = stateFlag25.endHole
    stateFlag25 = stateFlag25.x
    stateFlag2 = number
    number33 = dataCollection4
    number33 = number33[stateFlag2]
    number33 = number33.endHole
    number33 = number33.y
    stateFlag4 = number
    stateFlag2 = dataCollection4
    stateFlag2 = stateFlag2[stateFlag4]
    stateFlag2 = stateFlag2.endHole
    stateFlag2 = stateFlag2.z
    stateFlag4 = 222
    stateFlag5 = 111
    cmgOperation = 111
    number7 = 0.2
    localValue5(localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation, number7)
    localValue5 = IsControlJustPressed
    localValue6 = 1
    localValue7 = 246
    localValue5 = localValue5(localValue6, localValue7)
    if localValue5 then
      localValue5 = number28
      localValue5 = localValue5 + 1
      if localValue5 > 6 then
        localValue5 = 0
      end
      number28 = localValue5
      localValue6 = workingValue13
      localValue6()
    end
    localValue5 = IsControlPressed
    localValue6 = 1
    localValue7 = 34
    localValue5 = localValue5(localValue6, localValue7)
    if localValue5 then
      localValue5 = workingValue9
      localValue6 = true
      -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
      localValue5(localValue6)
    end
    localValue5 = IsControlPressed
    localValue6 = 1
    localValue7 = 9
    localValue5 = localValue5(localValue6, localValue7)
    if localValue5 then
      localValue5 = workingValue9
      localValue6 = false
      localValue5(localValue6)
    end
    localValue5 = number28
    if 0 == localValue5 then
      localValue5 = AttachEntityToEntity
      localValue6 = CMG
      localValue6 = localValue6.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue6 = localValue6()
      localValue7 = number2
      localValue8 = 20
      stateFlag25 = 0.14
      number33 = -0.62
      stateFlag2 = 0.99
      stateFlag4 = 0.0
      stateFlag5 = 0.0
      cmgOperation = 0.0
      number7 = false
      stateFlag6 = false
      stateFlag7 = false
      stateFlag8 = false
      stateFlag10 = 1
      stateFlag12 = true
      -- Beginner: Attach one entity to another entity.
      localValue5(localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation, number7, stateFlag6, stateFlag7, stateFlag8, stateFlag10, stateFlag12)
    else
      localValue5 = number28
      if 3 == localValue5 then
        localValue5 = AttachEntityToEntity
        localValue6 = CMG
        localValue6 = localValue6.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue6 = localValue6()
        localValue7 = number2
        localValue8 = 20
        stateFlag25 = 0.3
        number33 = -0.92
        stateFlag2 = 0.99
        stateFlag4 = 0.0
        stateFlag5 = 0.0
        cmgOperation = 0.0
        number7 = false
        stateFlag6 = false
        stateFlag7 = false
        stateFlag8 = false
        stateFlag10 = 1
        stateFlag12 = true
        localValue5(localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation, number7, stateFlag6, stateFlag7, stateFlag8, stateFlag10, stateFlag12)
      else
        localValue5 = number28
        if 2 == localValue5 then
          localValue5 = AttachEntityToEntity
          localValue6 = CMG
          localValue6 = localValue6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          localValue6 = localValue6()
          localValue7 = number2
          localValue8 = 20
          stateFlag25 = 0.38
          number33 = -0.79
          stateFlag2 = 0.94
          stateFlag4 = 0.0
          stateFlag5 = 0.0
          cmgOperation = 0.0
          number7 = false
          stateFlag6 = false
          stateFlag7 = false
          stateFlag8 = false
          stateFlag10 = 1
          stateFlag12 = true
          -- Beginner: Attach one entity to another entity.
          localValue5(localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation, number7, stateFlag6, stateFlag7, stateFlag8, stateFlag10, stateFlag12)
        else
          localValue5 = AttachEntityToEntity
          localValue6 = CMG
          localValue6 = localValue6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          localValue6 = localValue6()
          localValue7 = number2
          localValue8 = 20
          stateFlag25 = 0.4
          number33 = -0.83
          stateFlag2 = 0.94
          stateFlag4 = 0.0
          stateFlag5 = 0.0
          cmgOperation = 0.0
          number7 = false
          stateFlag6 = false
          stateFlag7 = false
          stateFlag8 = false
          stateFlag10 = 1
          stateFlag12 = true
          localValue5(localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation, number7, stateFlag6, stateFlag7, stateFlag8, stateFlag10, stateFlag12)
        end
      end
    end
    localValue5 = IsControlJustReleased
    localValue6 = 1
    localValue7 = 38
    localValue5 = localValue5(localValue6, localValue7)
    if localValue5 then
      localValue5 = number28
      if 0 == localValue5 then
        localValue2 = dataCollection2.puttswinglow
      else
        localValue2 = dataCollection.ironswinghigh
        localValue5 = workingValue14
        localValue6 = localValue2
        localValue5(localValue6)
        localValue2 = dataCollection.ironswinglow
        localValue5 = workingValue14
        localValue6 = localValue2
        localValue5(localValue6)
        localValue2 = dataCollection.ironswinglow
      end
      localValue5 = 1
      number26 = localValue5
      localValue5 = false
      stateFlag23 = localValue5
      localValue5 = DetachEntity
      localValue6 = CMG
      localValue6 = localValue6.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue6 = localValue6()
      localValue7 = true
      localValue8 = false
      localValue5(localValue6, localValue7, localValue8)
    else
      localValue5 = stateFlag23
      if not localValue5 then
        localValue5 = Citizen
        localValue5 = localValue5.CreateThreadNow
        localValue6 = workingValue16
        localValue5(localValue6)
      end
    end
  end
  localValue3 = PlaySoundFromEntity
  localValue4 = -1
  localValue5 = "GOLF_SWING_FAIRWAY_IRON_LIGHT_MASTER"
  localValue6 = CMG
  localValue6 = localValue6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue6 = localValue6()
  localValue7 = nil
  localValue8 = false
  stateFlag25 = 0
  localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25)
  localValue3 = workingValue14
  localValue4 = localValue2
  localValue3(localValue4)
  localValue3 = workingValue18
  localValue3()
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  localValue4 = 1000
  localValue3(localValue4)
  localValue3 = workingValue12
  localValue3()
end
eventHandlerRegistration = Citizen
eventHandlerRegistration = eventHandlerRegistration.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation, number7, stateFlag6, stateFlag7, stateFlag8, stateFlag10, stateFlag12, number16
  while true do
    localValue1 = stateFlag22
    if localValue1 then
      localValue1 = number25
      if 1 == localValue1 then
        localValue1 = number
        localValue1 = localValue1 + 1
        number = localValue1
        localValue1 = number
        if 10 == localValue1 then
          localValue1 = number21
          localValue2 = true
          localValue1(localValue2)
        else
          localValue1 = tCMG
          localValue1 = localValue1.removeBlip
          localValue2 = workingValue4
          localValue1(localValue2)
          localValue1 = tCMG
          localValue1 = localValue1.removeBlip
          localValue2 = workingValue2
          localValue1(localValue2)
          localValue1 = tCMG
          localValue1 = localValue1.removeMarker
          localValue2 = workingValue3
          localValue1(localValue2)
          localValue1 = tCMG
          localValue1 = localValue1.addBlip
          localValue3 = number
          localValue2 = dataCollection4
          localValue2 = localValue2[localValue3]
          localValue2 = localValue2.startHole
          localValue2 = localValue2.x
          localValue4 = number
          localValue3 = dataCollection4
          localValue3 = localValue3[localValue4]
          localValue3 = localValue3.startHole
          localValue3 = localValue3.y
          localValue5 = number
          localValue4 = dataCollection4
          localValue4 = localValue4[localValue5]
          localValue4 = localValue4.startHole
          localValue4 = localValue4.z
          localValue5 = 161
          localValue6 = 1
          localValue7 = "Swing Ball"
          localValue8 = 1.0
          localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          workingValue4 = localValue1
          localValue1 = SetBlipAsShortRange
          localValue2 = workingValue4
          localValue3 = false
          localValue1(localValue2, localValue3)
          localValue1 = SetBlipDisplay
          localValue2 = workingValue4
          localValue3 = 2
          localValue1(localValue2, localValue3)
          localValue1 = tCMG
          localValue1 = localValue1.addBlip
          localValue3 = number
          localValue2 = dataCollection4
          localValue2 = localValue2[localValue3]
          localValue2 = localValue2.endHole
          localValue2 = localValue2.x
          localValue4 = number
          localValue3 = dataCollection4
          localValue3 = localValue3[localValue4]
          localValue3 = localValue3.endHole
          localValue3 = localValue3.y
          localValue5 = number
          localValue4 = dataCollection4
          localValue4 = localValue4[localValue5]
          localValue4 = localValue4.endHole
          localValue4 = localValue4.z
          localValue5 = 109
          localValue6 = 1
          localValue7 = "Hole"
          localValue8 = 1.0
          localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          workingValue2 = localValue1
          localValue1 = SetBlipAsShortRange
          localValue2 = workingValue2
          localValue3 = false
          localValue1(localValue2, localValue3)
          localValue1 = SetBlipDisplay
          localValue2 = workingValue2
          localValue3 = 2
          localValue1(localValue2, localValue3)
          localValue1 = tCMG
          localValue1 = localValue1.addMarker
          localValue3 = number
          localValue2 = dataCollection4
          localValue2 = localValue2[localValue3]
          localValue2 = localValue2.endHole
          localValue2 = localValue2.x
          localValue4 = number
          localValue3 = dataCollection4
          localValue3 = localValue3[localValue4]
          localValue3 = localValue3.endHole
          localValue3 = localValue3.y
          localValue5 = number
          localValue4 = dataCollection4
          localValue4 = localValue4[localValue5]
          localValue4 = localValue4.endHole
          localValue4 = localValue4.z
          localValue4 = localValue4 + 1
          localValue5 = 0.5
          localValue6 = 0.5
          localValue7 = 0.5
          localValue8 = 10
          stateFlag25 = 255
          number33 = 81
          stateFlag2 = 255
          stateFlag4 = 250
          stateFlag5 = 0
          cmgOperation = false
          number7 = true
          stateFlag6 = false
          stateFlag7 = nil
          stateFlag8 = nil
          stateFlag10 = 0.0
          stateFlag12 = 0.0
          number16 = 0.0
          localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33, stateFlag2, stateFlag4, stateFlag5, cmgOperation, number7, stateFlag6, stateFlag7, stateFlag8, stateFlag10, stateFlag12, number16)
          workingValue3 = localValue1
          localValue1 = 0
          number25 = localValue1
          localValue1 = 1
          number26 = localValue1
          localValue1 = cmgOperation2
          localValue3 = number
          localValue2 = dataCollection4
          localValue2 = localValue2[localValue3]
          localValue2 = localValue2.startHole
          localValue2 = localValue2.x
          localValue4 = number
          localValue3 = dataCollection4
          localValue3 = localValue3[localValue4]
          localValue3 = localValue3.startHole
          localValue3 = localValue3.y
          localValue5 = number
          localValue4 = dataCollection4
          localValue4 = localValue4[localValue5]
          localValue4 = localValue4.startHole
          localValue4 = localValue4.z
          -- Beginner: Run a helper every game frame while this script is active.
          localValue1(localValue2, localValue3, localValue4)
        end
      else
        localValue1 = number26
        if 2 == localValue1 then
          localValue1 = stateFlag24
          if not localValue1 then
            localValue1 = stateFlag3
            if not localValue1 then
              localValue1 = true
              stateFlag24 = localValue1
              localValue1 = Citizen
              localValue1 = localValue1.CreateThread

              -- === HELPER FUNCTION: localValue2() ===
              function localValue2()
                local stateFlag, text2
                stateFlag = workingValue19
                stateFlag()
              end
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              localValue1(localValue2)
          end
        end
        else
          localValue1 = number26
          if 1 == localValue1 then
            localValue1 = stateFlag24
            if not localValue1 then
              localValue1 = stateFlag3
              if not localValue1 then
                localValue1 = CMG
                localValue1 = localValue1.getPlayerVehicle
                -- Beginner: result below is currentVehicle.
                localValue1 = localValue1()
                if 0 == localValue1 then
                  localValue1 = GetEntityCoords
                  localValue2 = number2
                  -- Beginner: result below is entityCoords.
                  localValue1 = localValue1(localValue2)
                  localValue2 = CMG
                  localValue2 = localValue2.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  localValue2 = localValue2()
                  localValue2 = localValue2 - localValue1
                  localValue2 = #localValue2
                  if localValue2 > 50 then
                    localValue2 = stateFlag9
                    if not localValue2 then
                      localValue2 = GetGameTimer
                      -- Beginner: result below is gameTimeMs.
                      localValue2 = localValue2()
                      localValue3 = number13
                      localValue2 = localValue2 - localValue3
                      localValue3 = 15000
                      if localValue2 < localValue3 then
                        localValue2 = dataCollection5
                        localValue3 = "Move to the next start area."
                        localValue4 = false
                        localValue5 = -1
                        localValue2(localValue3, localValue4, localValue5)
                      else
                        localValue2 = dataCollection5
                        localValue3 = "Move to your ball or press ~g~~INPUT_CONTEXT~~s~ to ball drop if you are stuck."
                        localValue4 = false
                        localValue5 = -1
                        localValue2(localValue3, localValue4, localValue5)
                        localValue2 = IsControlJustReleased
                        localValue3 = 1
                        localValue4 = 38
                        localValue2 = localValue2(localValue3, localValue4)
                        if not localValue2 then
                          goto continueAtStep311
                        end
                        localValue2 = true
                        stateFlag3 = localValue2
                        while true do
                          localValue2 = stateFlag3
                          if not localValue2 then
                            goto continueAtStep311
                          end
                          localValue2 = CMG
                          localValue2 = localValue2.getPlayerCoords
                          -- Beginner: result below is playerCoords.
                          localValue2 = localValue2()
                          localValue2 = localValue2 - localValue1
                          localValue2 = #localValue2
                          if not (localValue2 < 100.0) then
                            localValue2 = CMG
                            localValue2 = localValue2.getPlayerCoords
                            -- Beginner: result below is playerCoords.
                            localValue2 = localValue2()
                            localValue2 = localValue2.z
                            localValue3 = localValue1.z
                            localValue2 = localValue2 - localValue3
                            if not (localValue2 > 100.0) then
                              goto continueAtStep282
                            end
                          end
                          localValue2 = CMG
                          localValue2 = localValue2.getPlayerCoords
                          -- Beginner: result below is playerCoords.
                          localValue2 = localValue2()
                          localValue4 = number
                          localValue3 = dataCollection4
                          localValue3 = localValue3[localValue4]
                          localValue3 = localValue3.endHole
                          localValue2 = localValue2 - localValue3
                          localValue2 = #localValue2
                          if localValue2 > 50.0 then
                            localValue2 = dataCollection5
                            localValue3 = "Press ~g~E~s~ to drop here."
                            localValue4 = false
                            localValue5 = -1
                            localValue2(localValue3, localValue4, localValue5)
                            localValue2 = IsControlJustReleased
                            localValue3 = 1
                            localValue4 = 38
                            localValue2 = localValue2(localValue3, localValue4)
                            if localValue2 then
                              localValue2 = false
                              stateFlag3 = localValue2
                              localValue2 = CMG
                              localValue2 = localValue2.getPlayerCoords
                              -- Beginner: result below is playerCoords.
                              localValue2 = localValue2()
                              localValue3 = cmgOperation2
                              localValue4 = localValue2.x
                              localValue5 = localValue2.y
                              localValue6 = localValue2.z
                              localValue6 = localValue6 - 1
                              -- Beginner: Run a helper every game frame while this script is active.
                              localValue3(localValue4, localValue5, localValue6)
                              localValue3 = number14
                              localValue3 = localValue3 + 1
                              number14 = localValue3
                            end
                          else
                            ::continueAtStep282::
                            localValue2 = dataCollection5
                            localValue3 = "Press ~g~E~s~ to drop - ~r~ too far from ball or too close to hole."
                            localValue4 = false
                            localValue5 = -1
                            localValue2(localValue3, localValue4, localValue5)
                            localValue2 = SetTimeout
                            localValue3 = 5000

                            -- === HELPER FUNCTION: localValue4() ===
                            function localValue4()
                              local stateFlag, text2
                              stateFlag = false
                              stateFlag3 = stateFlag
                            end
                            localValue2(localValue3, localValue4)
                          end
                          localValue2 = Wait
                          localValue3 = 0
                          localValue2(localValue3)
                        end
                      end
                  end
                  else
                    localValue2 = CMG
                    localValue2 = localValue2.getPlayerCoords
                    -- Beginner: result below is playerCoords.
                    localValue2 = localValue2()
                    localValue2 = localValue2 - localValue1
                    localValue2 = #localValue2
                    if localValue2 < 2 then
                      localValue2 = stateFlag3
                      if not localValue2 then
                        localValue2 = 2
                        number26 = localValue2
                        localValue2 = 0
                        number25 = localValue2
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
    ::continueAtStep311::
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration(cmgOperation3)
eventHandlerRegistration = AddEventHandler
cmgOperation3 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1, localValue2) ===
function workingValue20(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33
  if localValue2 then
    localValue3 = tCMG
    localValue3 = localValue3.addBlip
    localValue4 = -1350.1905517578
    localValue5 = 134.2918548584
    localValue6 = 55.556828308105
    localValue7 = 109
    localValue8 = 68
    stateFlag25 = "Golf Course"
    number33 = 1.0
    -- Beginner: Create a minimap blip.
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag25, number33)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(cmgOperation3, workingValue20)
