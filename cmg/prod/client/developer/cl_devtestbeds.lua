--[[
    LEVEL 1 BEGINNER GUIDE — Devtestbeds
    =========================================

    File: cmg/prod/client/developer/cl_devtestbeds.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: developer/admin testing utilities, specifically the Devtestbeds feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 11
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
local dataCollection, dataCollection2, number25, createVector32, dataCollection3, number56, dataCollection4, dataCollection5, number61, number64, text, workingValue
dataCollection = {}
dataCollection2 = {}
number25 = 0
createVector32 = vector3
dataCollection3 = 0.0
number56 = 0.0
dataCollection4 = 0.0
createVector32 = createVector32(dataCollection3, number56, dataCollection4)
dataCollection3 = {}
number56 = 1885233650
dataCollection4 = {}
dataCollection5 = {}
number61 = 672
number64 = 547
dataCollection5[1] = number61
dataCollection5[2] = number64
dataCollection4[11] = dataCollection5
dataCollection5 = {}
number61 = 332
number64 = 251
dataCollection5[1] = number61
dataCollection5[2] = number64
dataCollection4[4] = dataCollection5
dataCollection5 = {}
number61 = 277
number64 = 230
dataCollection5[1] = number61
dataCollection5[2] = number64
dataCollection4[0] = dataCollection5
dataCollection5 = {}
number61 = 151
dataCollection5[1] = number61
dataCollection4[6] = dataCollection5
dataCollection3[number56] = dataCollection4
number56 = -1667301416
dataCollection4 = {}
dataCollection5 = {}
number61 = 716
number64 = 547
dataCollection5[1] = number61
dataCollection5[2] = number64
dataCollection4[11] = dataCollection5
dataCollection5 = {}
number61 = 348
number64 = 218
dataCollection5[1] = number61
dataCollection5[2] = number64
dataCollection4[4] = dataCollection5
dataCollection5 = {}
number61 = 263
dataCollection5[1] = number61
dataCollection4[0] = dataCollection5
dataCollection5 = {}
number61 = 159
dataCollection5[1] = number61
dataCollection4[6] = dataCollection5
dataCollection3[number56] = dataCollection4

-- === HELPER FUNCTION (decompiler name: number56; parameters: localValue1, localValue2, localValue3) ===
function number56(localValue1, localValue2, localValue3)
  local number38, number49, number57, number58, iterator, number62, number65, number, cmgOperation, mathHelper, cmgOperation2, mathHelper2, createVector3, workingValue2, cmgOperation3, number10, cmgOperation4, stateFlag, stateFlag2, stateFlag3, stateFlag4, workingValue3, number18, stateFlag5, mathHelper3, workingValue4, number23, workingValue5, workingValue6, mathHelper4, number29, number31
  number38 = 8
  number49 = 6.0
  number57 = 0
  number58 = 0
  iterator = ipairs
  number62 = localValue2
  iterator, number62, number65, number = iterator(number62)
  for cmgOperation, mathHelper in iterator, number62, number65, number do
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.loadModel
    mathHelper2 = mathHelper
    -- Beginner: Request/load a GTA model before spawning or applying it.
    cmgOperation2(mathHelper2)
    cmgOperation2 = cmgOperation % number38
    mathHelper2 = math
    mathHelper2 = mathHelper2.floor
    createVector3 = cmgOperation / number38
    mathHelper2 = mathHelper2(createVector3)
    createVector3 = vector3
    workingValue2 = cmgOperation2 * number49
    cmgOperation3 = mathHelper2 * number49
    number10 = 0.0
    createVector3 = createVector3(workingValue2, cmgOperation3, number10)
    createVector3 = localValue1 + createVector3
    workingValue2 = CreateVehicle
    cmgOperation3 = mathHelper
    number10 = createVector3.x
    cmgOperation4 = createVector3.y
    stateFlag = createVector3.z
    stateFlag2 = 0.0
    stateFlag3 = false
    stateFlag4 = false
    -- Beginner: result below is vehicleEntity.
    workingValue2 = workingValue2(cmgOperation3, number10, cmgOperation4, stateFlag, stateFlag2, stateFlag3, stateFlag4)
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.initLocalVehicle
    number10 = workingValue2
    cmgOperation3(number10)
    cmgOperation3 = SetVehicleOnGroundProperly
    number10 = workingValue2
    cmgOperation3(number10)
    cmgOperation3 = SetVehicleEngineOn
    number10 = workingValue2
    cmgOperation4 = true
    stateFlag = true
    stateFlag2 = false
    cmgOperation3(number10, cmgOperation4, stateFlag, stateFlag2)
    cmgOperation3 = table
    cmgOperation3 = cmgOperation3.insert
    number10 = dataCollection
    cmgOperation4 = workingValue2
    cmgOperation3(number10, cmgOperation4)
    if localValue3 then
      cmgOperation3 = cmgOperation % 2
      cmgOperation3 = 0 == cmgOperation3
      if cmgOperation3 then
        number10 = 1885233650
        if number10 then
          goto continueAtStep70
        end
      end
      number10 = -1667301416
      ::continueAtStep70::
      cmgOperation4 = CMG
      cmgOperation4 = cmgOperation4.loadModel
      stateFlag = number10
      -- Beginner: Request/load a GTA model before spawning or applying it.
      cmgOperation4(stateFlag)
      if cmgOperation3 then
        number57 = number57 + 1
      else
        number58 = number58 + 1
      end
      cmgOperation4 = CreatePed
      stateFlag = 0
      stateFlag2 = number10
      stateFlag3 = createVector3.x
      stateFlag4 = createVector3.y
      workingValue3 = createVector3.z
      number18 = 0.0
      stateFlag5 = false
      mathHelper3 = false
      -- Beginner: result below is pedEntity.
      cmgOperation4 = cmgOperation4(stateFlag, stateFlag2, stateFlag3, stateFlag4, workingValue3, number18, stateFlag5, mathHelper3)
      stateFlag = pairs
      stateFlag2 = dataCollection3
      stateFlag2 = stateFlag2[number10]
      stateFlag, stateFlag2, stateFlag3, stateFlag4 = stateFlag(stateFlag2)
      for workingValue3, number18 in stateFlag, stateFlag2, stateFlag3, stateFlag4 do
        stateFlag5 = number57 or stateFlag5
        if not cmgOperation3 or not number57 then
          stateFlag5 = number58
        end
        mathHelper3 = stateFlag5 % 2
        mathHelper3 = mathHelper3 + 1
        workingValue4 = number18[mathHelper3]
        if not workingValue4 then
          workingValue4 = number18[1]
        end
        number23 = SetPedComponentVariation
        workingValue5 = cmgOperation4
        workingValue6 = workingValue3
        mathHelper4 = math
        mathHelper4 = mathHelper4.floor
        number29 = stateFlag5 / 2
        mathHelper4 = mathHelper4(number29)
        mathHelper4 = workingValue4 + mathHelper4
        number29 = 0
        number31 = 0
        number23(workingValue5, workingValue6, mathHelper4, number29, number31)
      end
      stateFlag = SetPedIntoVehicle
      stateFlag2 = cmgOperation4
      stateFlag3 = workingValue2
      stateFlag4 = -1
      stateFlag(stateFlag2, stateFlag3, stateFlag4)
      stateFlag = table
      stateFlag = stateFlag.insert
      stateFlag2 = dataCollection2
      stateFlag3 = cmgOperation4
      stateFlag(stateFlag2, stateFlag3)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1) ===
function dataCollection4(localValue1)
  local localValue2, localValue3, number38, number49, number57, number58, iterator, number62, number65, number, cmgOperation, mathHelper, cmgOperation2, mathHelper2, createVector3, workingValue2, cmgOperation3, number10, cmgOperation4, stateFlag, stateFlag2, stateFlag3, stateFlag4, workingValue3, number18, stateFlag5, mathHelper3, workingValue4, number23
  localValue2 = 8
  localValue3 = 2.0
  number38 = 0
  number49 = 0
  number57 = 1
  number58 = 120
  iterator = 1
  for number62 = number57, number58, iterator do
    number65 = number62 % 2
    number65 = 0 == number65
    if number65 then
      number = 1885233650
      if number then
        goto continueAtStep21
      end
    end
    number = -1667301416
    ::continueAtStep21::
    cmgOperation = CMG
    cmgOperation = cmgOperation.loadModel
    mathHelper = number
    -- Beginner: Request/load a GTA model before spawning or applying it.
    cmgOperation(mathHelper)
    if number65 then
      number38 = number38 + 1
    else
      number49 = number49 + 1
    end
    cmgOperation = number62 % localValue2
    mathHelper = math
    mathHelper = mathHelper.floor
    cmgOperation2 = number62 / localValue2
    mathHelper = mathHelper(cmgOperation2)
    cmgOperation2 = vector3
    mathHelper2 = cmgOperation * localValue3
    createVector3 = mathHelper * localValue3
    workingValue2 = 0.0
    cmgOperation2 = cmgOperation2(mathHelper2, createVector3, workingValue2)
    cmgOperation2 = localValue1 + cmgOperation2
    mathHelper2 = CreatePed
    createVector3 = 0
    workingValue2 = number
    cmgOperation3 = cmgOperation2.x
    number10 = cmgOperation2.y
    cmgOperation4 = cmgOperation2.z
    stateFlag = 0.0
    stateFlag2 = false
    stateFlag3 = false
    -- Beginner: result below is pedEntity.
    mathHelper2 = mathHelper2(createVector3, workingValue2, cmgOperation3, number10, cmgOperation4, stateFlag, stateFlag2, stateFlag3)
    createVector3 = pairs
    workingValue2 = dataCollection3
    workingValue2 = workingValue2[number]
    createVector3, workingValue2, cmgOperation3, number10 = createVector3(workingValue2)
    for cmgOperation4, stateFlag in createVector3, workingValue2, cmgOperation3, number10 do
      stateFlag2 = number38 or stateFlag2
      if not number65 or not number38 then
        stateFlag2 = number49
      end
      stateFlag3 = stateFlag2 % 2
      stateFlag3 = stateFlag3 + 1
      stateFlag4 = stateFlag[stateFlag3]
      if not stateFlag4 then
        stateFlag4 = stateFlag[1]
      end
      workingValue3 = SetPedComponentVariation
      number18 = mathHelper2
      stateFlag5 = cmgOperation4
      mathHelper3 = math
      mathHelper3 = mathHelper3.floor
      workingValue4 = stateFlag2 / 2
      mathHelper3 = mathHelper3(workingValue4)
      mathHelper3 = stateFlag4 + mathHelper3
      workingValue4 = 0
      number23 = 0
      workingValue3(number18, stateFlag5, mathHelper3, workingValue4, number23)
    end
    createVector3 = table
    createVector3 = createVector3.insert
    workingValue2 = dataCollection2
    cmgOperation3 = mathHelper2
    createVector3(workingValue2, cmgOperation3)
  end
end

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue1, localValue2) ===
function dataCollection5(localValue1, localValue2)
  local localValue3, number38, number49, number57, number58, iterator, number62, number65, number, cmgOperation, mathHelper
  localValue3 = CreateCamWithParams
  number38 = "DEFAULT_SCRIPTED_CAMERA"
  number49 = localValue1.x
  number57 = localValue1.y
  number58 = localValue1.z
  iterator = localValue2.x
  number62 = localValue2.y
  number65 = localValue2.z
  number = 50.0
  cmgOperation = true
  mathHelper = 2
  localValue3 = localValue3(number38, number49, number57, number58, iterator, number62, number65, number, cmgOperation, mathHelper)
  number25 = localValue3
  localValue3 = RenderScriptCams
  number38 = true
  number49 = false
  number57 = 0
  number58 = false
  iterator = false
  localValue3(number38, number49, number57, number58, iterator)
  localValue3 = SetFocusPosAndVel
  number38 = localValue1.x
  number49 = localValue1.y
  number57 = localValue1.z
  number58 = 0.0
  iterator = 0.0
  number62 = 0.0
  localValue3(number38, number49, number57, number58, iterator, number62)
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  createVector32 = localValue3
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  number38 = SetEntityCoords
  number49 = localValue3
  number57 = localValue1.x
  number58 = localValue1.y
  iterator = localValue1.z
  iterator = iterator - 2.0
  number62 = true
  number65 = false
  number = false
  cmgOperation = false
  -- Beginner: Move/teleport an entity to new coordinates.
  number38(number49, number57, number58, iterator, number62, number65, number, cmgOperation)
  number38 = FreezeEntityPosition
  number49 = localValue3
  number57 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  number38(number49, number57)
  number38 = SetEntityVisible
  number49 = localValue3
  number57 = false
  number58 = false
  number38(number49, number57, number58)
  number38 = CMG
  number38 = number38.hideAllDisplays
  number49 = "testbeds"
  number38(number49)
  number38 = RageUI
  number38 = number38.CloseAll
  number38()
end

-- === HELPER FUNCTION (decompiler name: number61; parameters: none) ===
function number61()
  local localValue1, localValue2, localValue3, number38, number49, number57, number58, iterator, number62
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, localValue3, number38 = localValue1(localValue2)
  for number49, number57 in localValue1, localValue2, localValue3, number38 do
    number58 = DeleteEntity
    iterator = number57
    -- Beginner: Delete a GTA entity.
    number58(iterator)
  end
  localValue1 = table
  localValue1 = localValue1.clear
  localValue2 = dataCollection
  localValue1(localValue2)
  localValue1 = pairs
  localValue2 = dataCollection2
  localValue1, localValue2, localValue3, number38 = localValue1(localValue2)
  for number49, number57 in localValue1, localValue2, localValue3, number38 do
    number58 = DeleteEntity
    iterator = number57
    -- Beginner: Delete a GTA entity.
    number58(iterator)
  end
  localValue1 = table
  localValue1 = localValue1.clear
  localValue2 = dataCollection2
  localValue1(localValue2)
  localValue1 = RenderScriptCams
  localValue2 = false
  localValue3 = false
  number38 = 0
  number49 = false
  number57 = false
  localValue1(localValue2, localValue3, number38, number49, number57)
  localValue1 = SetCamActive
  localValue2 = number25
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = DestroyCam
  localValue2 = number25
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = 0
  number25 = localValue1
  localValue1 = SetEntityCoords
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = createVector32.x
  number38 = createVector32.y
  number49 = createVector32.z
  number57 = true
  number58 = false
  iterator = false
  number62 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue1(localValue2, localValue3, number38, number49, number57, number58, iterator, number62)
  localValue1 = FreezeEntityPosition
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue1(localValue2, localValue3)
  localValue1 = SetEntityVisible
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = true
  number38 = true
  localValue1(localValue2, localValue3, number38)
  localValue1 = CMG
  localValue1 = localValue1.showAllDisplays
  localValue2 = "testbeds"
  localValue1(localValue2)
end
number64 = CMG
number64 = number64.registerDevMenuItems
text = "Testbeds"

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, number38, number49
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Empty Testbed"
  localValue3 = "Creates a test bed with no vehicles"
  number38 = true

  -- === HELPER FUNCTION (decompiler name: number49; parameters: localValue12, localValue22, localValue32) ===
  function number49(localValue12, localValue22, localValue32)
    local workingValue7, createVector33, createVector34, number59, number60, number63
    if localValue32 then
      workingValue7 = dataCollection5
      createVector33 = vector3
      createVector34 = -1556.5574951172
      number59 = -2741.05859375
      number60 = 23.179716110229
      createVector33 = createVector33(createVector34, number59, number60)
      createVector34 = vector3
      number59 = -14.400593757629
      number60 = -4.4073442495574E-7
      number63 = -43.419734954834
      createVector34, number59, number60, number63 = createVector34(number59, number60, number63)
      workingValue7(createVector33, createVector34, number59, number60, number63)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, number38, number49)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "View Vehicles (CMG)"
  localValue3 = "Creates a test bed of hardcoded spawncodes from CMG"
  number38 = true

  -- === HELPER FUNCTION (decompiler name: number49; parameters: localValue12, localValue22, localValue32) ===
  function number49(localValue12, localValue22, localValue32)
    local workingValue7, createVector33, createVector34, number59, number60, number63, number66, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, number13, number14, number15, number16, number17, number19, number20, number21, number22, number24, number26, number27, number28, number30, number32, number33, number34, number35, number36, number37, number39, number40, number41, number42, number43, number44, number45, number46, number47, number48, number50, number51, number52, number53, number54, number55
    if localValue32 then
      workingValue7 = number56
      createVector33 = vector3
      createVector34 = -1545.5848388672
      number59 = -2728.4724121094
      number60 = 13.94452381134
      createVector33 = createVector33(createVector34, number59, number60)
      createVector34 = {}
      number59 = -591656107
      number60 = -1009308385
      number63 = 934775262
      number66 = -73532343
      number2 = 1279054538
      number3 = -1987080451
      number4 = 1046541171
      number5 = -356772413
      number6 = 2112115937
      number7 = 1744402006
      number8 = -338573826
      number9 = -1440073795
      number11 = -581602444
      number12 = -1110613433
      number13 = -1618641119
      number14 = -686361117
      number15 = 1180067545
      number16 = -1716497127
      number17 = 176767793
      number19 = -1792104722
      number20 = -1517696258
      number21 = 1423182998
      number22 = 541729238
      number24 = 361960151
      number26 = 1318035284
      number27 = -546692846
      number28 = 191208755
      number30 = -1698524521
      number32 = 268464514
      number33 = 1772961451
      number34 = -959123330
      number35 = -1392982098
      number36 = 118843548
      number37 = -1491226698
      number39 = -472912397
      number40 = -1998846971
      number41 = 1564933974
      number42 = 1792287121
      number43 = -119718915
      number44 = -1148674271
      number45 = 1978837259
      number46 = -1998868072
      number47 = 323059884
      number48 = -1663771234
      number50 = 1473119040
      number51 = -288742714
      number52 = -1750300292
      number53 = -1758624382
      number54 = -1289689034
      number55 = 1268711383
      createVector34[1] = number59
      createVector34[2] = number60
      createVector34[3] = number63
      createVector34[4] = number66
      createVector34[5] = number2
      createVector34[6] = number3
      createVector34[7] = number4
      createVector34[8] = number5
      createVector34[9] = number6
      createVector34[10] = number7
      createVector34[11] = number8
      createVector34[12] = number9
      createVector34[13] = number11
      createVector34[14] = number12
      createVector34[15] = number13
      createVector34[16] = number14
      createVector34[17] = number15
      createVector34[18] = number16
      createVector34[19] = number17
      createVector34[20] = number19
      createVector34[21] = number20
      createVector34[22] = number21
      createVector34[23] = number22
      createVector34[24] = number24
      createVector34[25] = number26
      createVector34[26] = number27
      createVector34[27] = number28
      createVector34[28] = number30
      createVector34[29] = number32
      createVector34[30] = number33
      createVector34[31] = number34
      createVector34[32] = number35
      createVector34[33] = number36
      createVector34[34] = number37
      createVector34[35] = number39
      createVector34[36] = number40
      createVector34[37] = number41
      createVector34[38] = number42
      createVector34[39] = number43
      createVector34[40] = number44
      createVector34[41] = number45
      createVector34[42] = number46
      createVector34[43] = number47
      createVector34[44] = number48
      createVector34[45] = number50
      createVector34[46] = number51
      createVector34[47] = number52
      createVector34[48] = number53
      createVector34[49] = number54
      createVector34[50] = number55
      number59 = 1867789750
      number60 = -781483748
      number63 = 242633659
      number66 = -277924201
      number2 = -1531754134
      number3 = -957772333
      number4 = -1075805112
      number5 = -53577316
      number6 = 67014652
      number7 = -184685184
      number8 = 309337572
      createVector34[51] = number59
      createVector34[52] = number60
      createVector34[53] = number63
      createVector34[54] = number66
      createVector34[55] = number2
      createVector34[56] = number3
      createVector34[57] = number4
      createVector34[58] = number5
      createVector34[59] = number6
      createVector34[60] = number7
      createVector34[61] = number8
      number59 = false
      workingValue7(createVector33, createVector34, number59)
      workingValue7 = dataCollection5
      createVector33 = vector3
      createVector34 = -1556.5574951172
      number59 = -2741.05859375
      number60 = 23.179716110229
      createVector33 = createVector33(createVector34, number59, number60)
      createVector34 = vector3
      number59 = -14.400593757629
      number60 = -4.4073442495574E-7
      number63 = -43.419734954834
      createVector34, number59, number60, number63, number66, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, number13, number14, number15, number16, number17, number19, number20, number21, number22, number24, number26, number27, number28, number30, number32, number33, number34, number35, number36, number37, number39, number40, number41, number42, number43, number44, number45, number46, number47, number48, number50, number51, number52, number53, number54, number55 = createVector34(number59, number60, number63)
      workingValue7(createVector33, createVector34, number59, number60, number63, number66, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, number13, number14, number15, number16, number17, number19, number20, number21, number22, number24, number26, number27, number28, number30, number32, number33, number34, number35, number36, number37, number39, number40, number41, number42, number43, number44, number45, number46, number47, number48, number50, number51, number52, number53, number54, number55)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, number38, number49)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "View Vehicles (GTA)"
  localValue3 = "Creates a test bed of hardcoded spawncodes from GTA"
  number38 = true

  -- === HELPER FUNCTION (decompiler name: number49; parameters: localValue12, localValue22, localValue32) ===
  function number49(localValue12, localValue22, localValue32)
    local workingValue7, createVector33, createVector34, number59, number60, number63, number66, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, number13, number14, number15, number16, number17, number19, number20, number21, number22, number24, number26, number27, number28, number30, number32, number33, number34, number35, number36, number37, number39, number40, number41, number42, number43, number44, number45, number46, number47, number48, number50, number51, number52, number53, number54, number55
    if localValue32 then
      workingValue7 = number56
      createVector33 = vector3
      createVector34 = -1545.5848388672
      number59 = -2728.4724121094
      number60 = 13.94452381134
      createVector33 = createVector33(createVector34, number59, number60)
      createVector34 = {}
      number59 = -1216765807
      number60 = -1041692462
      number63 = -1696146015
      number66 = -1311154784
      number2 = -1291952903
      number3 = -591610296
      number4 = 418536135
      number5 = -1297672541
      number6 = -1372848492
      number7 = -142942670
      number8 = -433375717
      number9 = 1034187331
      number11 = 1987142870
      number12 = -1758137366
      number13 = -1934452204
      number14 = 970598228
      number15 = 1663218586
      number16 = 972671128
      number17 = 338562499
      number19 = -1622444098
      number20 = -1403128555
      number21 = -1479664699
      number22 = -1130810103
      number24 = -1842748181
      number26 = -1089039904
      number27 = 75131841
      number28 = 886934177
      number30 = -310465116
      number32 = -431692672
      number33 = -1450650718
      number34 = 1645267888
      number35 = -14495224
      number36 = 788045382
      number37 = -295689028
      number39 = 464687292
      number40 = 1531094468
      number41 = 1762279763
      number42 = 740289177
      number43 = -1242608589
      number44 = 1373123368
      number45 = 1777363799
      number46 = 758895617
      number47 = 633712403
      number48 = -344943009
      number50 = 2006918058
      number51 = -2030171296
      number52 = 1682114128
      number53 = -2119578145
      number54 = -1790546981
      number55 = -2039755226
      createVector34[1] = number59
      createVector34[2] = number60
      createVector34[3] = number63
      createVector34[4] = number66
      createVector34[5] = number2
      createVector34[6] = number3
      createVector34[7] = number4
      createVector34[8] = number5
      createVector34[9] = number6
      createVector34[10] = number7
      createVector34[11] = number8
      createVector34[12] = number9
      createVector34[13] = number11
      createVector34[14] = number12
      createVector34[15] = number13
      createVector34[16] = number14
      createVector34[17] = number15
      createVector34[18] = number16
      createVector34[19] = number17
      createVector34[20] = number19
      createVector34[21] = number20
      createVector34[22] = number21
      createVector34[23] = number22
      createVector34[24] = number24
      createVector34[25] = number26
      createVector34[26] = number27
      createVector34[27] = number28
      createVector34[28] = number30
      createVector34[29] = number32
      createVector34[30] = number33
      createVector34[31] = number34
      createVector34[32] = number35
      createVector34[33] = number36
      createVector34[34] = number37
      createVector34[35] = number39
      createVector34[36] = number40
      createVector34[37] = number41
      createVector34[38] = number42
      createVector34[39] = number43
      createVector34[40] = number44
      createVector34[41] = number45
      createVector34[42] = number46
      createVector34[43] = number47
      createVector34[44] = number48
      createVector34[45] = number50
      createVector34[46] = number51
      createVector34[47] = number52
      createVector34[48] = number53
      createVector34[49] = number54
      createVector34[50] = number55
      number59 = -192961924
      number60 = 600450546
      number63 = 1051415893
      number66 = -1660945322
      number2 = -2124201592
      number3 = 525509695
      number4 = -1943285540
      number5 = 61200530
      number6 = -667151410
      number7 = 234062309
      number8 = -1683328900
      number9 = -2033222435
      number11 = 101905590
      number12 = 579912970
      number13 = 1663810515
      createVector34[51] = number59
      createVector34[52] = number60
      createVector34[53] = number63
      createVector34[54] = number66
      createVector34[55] = number2
      createVector34[56] = number3
      createVector34[57] = number4
      createVector34[58] = number5
      createVector34[59] = number6
      createVector34[60] = number7
      createVector34[61] = number8
      createVector34[62] = number9
      createVector34[63] = number11
      createVector34[64] = number12
      createVector34[65] = number13
      number59 = false
      workingValue7(createVector33, createVector34, number59)
      workingValue7 = dataCollection5
      createVector33 = vector3
      createVector34 = -1556.5574951172
      number59 = -2741.05859375
      number60 = 23.179716110229
      createVector33 = createVector33(createVector34, number59, number60)
      createVector34 = vector3
      number59 = -14.400593757629
      number60 = -4.4073442495574E-7
      number63 = -43.419734954834
      createVector34, number59, number60, number63, number66, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, number13, number14, number15, number16, number17, number19, number20, number21, number22, number24, number26, number27, number28, number30, number32, number33, number34, number35, number36, number37, number39, number40, number41, number42, number43, number44, number45, number46, number47, number48, number50, number51, number52, number53, number54, number55 = createVector34(number59, number60, number63)
      workingValue7(createVector33, createVector34, number59, number60, number63, number66, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, number13, number14, number15, number16, number17, number19, number20, number21, number22, number24, number26, number27, number28, number30, number32, number33, number34, number35, number36, number37, number39, number40, number41, number42, number43, number44, number45, number46, number47, number48, number50, number51, number52, number53, number54, number55)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, number38, number49)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "View Peds (CMG)"
  localValue3 = "Creates a test bed of hardcoded components from CMG"
  number38 = true

  -- === HELPER FUNCTION (decompiler name: number49; parameters: localValue12, localValue22, localValue32) ===
  function number49(localValue12, localValue22, localValue32)
    local workingValue7, createVector33, createVector34, number59, number60, number63
    if localValue32 then
      workingValue7 = dataCollection4
      createVector33 = vector3
      createVector34 = -1545.5848388672
      number59 = -2728.4724121094
      number60 = 13.94452381134
      createVector33, createVector34, number59, number60, number63 = createVector33(createVector34, number59, number60)
      workingValue7(createVector33, createVector34, number59, number60, number63)
      workingValue7 = dataCollection5
      createVector33 = vector3
      createVector34 = -1556.5574951172
      number59 = -2741.05859375
      number60 = 23.179716110229
      createVector33 = createVector33(createVector34, number59, number60)
      createVector34 = vector3
      number59 = -14.400593757629
      number60 = -4.4073442495574E-7
      number63 = -43.419734954834
      createVector34, number59, number60, number63 = createVector34(number59, number60, number63)
      workingValue7(createVector33, createVector34, number59, number60, number63)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, number38, number49)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "View Vehicles & Peds (CMG)"
  localValue3 = "Creates a test bed of hardcoded components from CMG"
  number38 = true

  -- === HELPER FUNCTION (decompiler name: number49; parameters: localValue12, localValue22, localValue32) ===
  function number49(localValue12, localValue22, localValue32)
    local workingValue7, createVector33, createVector34, number59, number60, number63, number66, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, number13, number14, number15, number16, number17, number19, number20, number21, number22, number24, number26, number27, number28, number30, number32, number33, number34, number35, number36, number37, number39, number40, number41, number42, number43, number44, number45, number46, number47, number48, number50, number51, number52, number53, number54, number55
    if localValue32 then
      workingValue7 = number56
      createVector33 = vector3
      createVector34 = -1545.5848388672
      number59 = -2728.4724121094
      number60 = 13.94452381134
      createVector33 = createVector33(createVector34, number59, number60)
      createVector34 = {}
      number59 = -591656107
      number60 = -1009308385
      number63 = 934775262
      number66 = -73532343
      number2 = 1279054538
      number3 = -1987080451
      number4 = 1046541171
      number5 = -356772413
      number6 = 2112115937
      number7 = 1744402006
      number8 = -338573826
      number9 = -1440073795
      number11 = -581602444
      number12 = -1110613433
      number13 = -1618641119
      number14 = -686361117
      number15 = 1180067545
      number16 = -1716497127
      number17 = 176767793
      number19 = -1792104722
      number20 = -1517696258
      number21 = 1423182998
      number22 = 541729238
      number24 = 361960151
      number26 = 1318035284
      number27 = -546692846
      number28 = 191208755
      number30 = -1698524521
      number32 = 268464514
      number33 = 1772961451
      number34 = -959123330
      number35 = -1392982098
      number36 = 118843548
      number37 = -1491226698
      number39 = -472912397
      number40 = -1998846971
      number41 = 1564933974
      number42 = 1792287121
      number43 = -119718915
      number44 = -1148674271
      number45 = 1978837259
      number46 = -1998868072
      number47 = 323059884
      number48 = -1663771234
      number50 = 1473119040
      number51 = -288742714
      number52 = -1750300292
      number53 = -1758624382
      number54 = -1289689034
      number55 = 1268711383
      createVector34[1] = number59
      createVector34[2] = number60
      createVector34[3] = number63
      createVector34[4] = number66
      createVector34[5] = number2
      createVector34[6] = number3
      createVector34[7] = number4
      createVector34[8] = number5
      createVector34[9] = number6
      createVector34[10] = number7
      createVector34[11] = number8
      createVector34[12] = number9
      createVector34[13] = number11
      createVector34[14] = number12
      createVector34[15] = number13
      createVector34[16] = number14
      createVector34[17] = number15
      createVector34[18] = number16
      createVector34[19] = number17
      createVector34[20] = number19
      createVector34[21] = number20
      createVector34[22] = number21
      createVector34[23] = number22
      createVector34[24] = number24
      createVector34[25] = number26
      createVector34[26] = number27
      createVector34[27] = number28
      createVector34[28] = number30
      createVector34[29] = number32
      createVector34[30] = number33
      createVector34[31] = number34
      createVector34[32] = number35
      createVector34[33] = number36
      createVector34[34] = number37
      createVector34[35] = number39
      createVector34[36] = number40
      createVector34[37] = number41
      createVector34[38] = number42
      createVector34[39] = number43
      createVector34[40] = number44
      createVector34[41] = number45
      createVector34[42] = number46
      createVector34[43] = number47
      createVector34[44] = number48
      createVector34[45] = number50
      createVector34[46] = number51
      createVector34[47] = number52
      createVector34[48] = number53
      createVector34[49] = number54
      createVector34[50] = number55
      number59 = 1867789750
      number60 = -781483748
      number63 = 242633659
      number66 = -277924201
      number2 = -1531754134
      number3 = -957772333
      number4 = -1075805112
      number5 = -53577316
      number6 = 67014652
      number7 = -184685184
      number8 = 309337572
      createVector34[51] = number59
      createVector34[52] = number60
      createVector34[53] = number63
      createVector34[54] = number66
      createVector34[55] = number2
      createVector34[56] = number3
      createVector34[57] = number4
      createVector34[58] = number5
      createVector34[59] = number6
      createVector34[60] = number7
      createVector34[61] = number8
      number59 = true
      workingValue7(createVector33, createVector34, number59)
      workingValue7 = dataCollection5
      createVector33 = vector3
      createVector34 = -1556.5574951172
      number59 = -2741.05859375
      number60 = 23.179716110229
      createVector33 = createVector33(createVector34, number59, number60)
      createVector34 = vector3
      number59 = -14.400593757629
      number60 = -4.4073442495574E-7
      number63 = -43.419734954834
      createVector34, number59, number60, number63, number66, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, number13, number14, number15, number16, number17, number19, number20, number21, number22, number24, number26, number27, number28, number30, number32, number33, number34, number35, number36, number37, number39, number40, number41, number42, number43, number44, number45, number46, number47, number48, number50, number51, number52, number53, number54, number55 = createVector34(number59, number60, number63)
      workingValue7(createVector33, createVector34, number59, number60, number63, number66, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, number13, number14, number15, number16, number17, number19, number20, number21, number22, number24, number26, number27, number28, number30, number32, number33, number34, number35, number36, number37, number39, number40, number41, number42, number43, number44, number45, number46, number47, number48, number50, number51, number52, number53, number54, number55)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, number38, number49)
end
number64(text, workingValue)
number64 = CMG
number64 = number64.registerDevMenuThread
text = "Testbeds"

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3
  localValue1 = number25
  if 0 == localValue1 then
    return
  end
  localValue1 = drawNativeNotification
  localValue2 = "Press ~INPUT_CONTEXT~ to exit the test bed."
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue1(localValue2)
  localValue1 = IsControlJustPressed
  localValue2 = 0
  localValue3 = 51
  localValue1 = localValue1(localValue2, localValue3)
  if localValue1 then
    localValue1 = number61
    localValue1()
  end
end
number64(text, workingValue)
