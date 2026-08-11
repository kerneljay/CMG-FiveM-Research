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
local dataTable, dataTable2, numberValue25, vector3Builder2, dataTable3, numberValue56, dataTable4, dataTable5, numberValue61, numberValue64, textValue, workValue
dataTable = {}
dataTable2 = {}
numberValue25 = 0
vector3Builder2 = vector3
dataTable3 = 0.0
numberValue56 = 0.0
dataTable4 = 0.0
vector3Builder2 = vector3Builder2(dataTable3, numberValue56, dataTable4)
dataTable3 = {}
numberValue56 = 1885233650
dataTable4 = {}
dataTable5 = {}
numberValue61 = 672
numberValue64 = 547
dataTable5[1] = numberValue61
dataTable5[2] = numberValue64
dataTable4[11] = dataTable5
dataTable5 = {}
numberValue61 = 332
numberValue64 = 251
dataTable5[1] = numberValue61
dataTable5[2] = numberValue64
dataTable4[4] = dataTable5
dataTable5 = {}
numberValue61 = 277
numberValue64 = 230
dataTable5[1] = numberValue61
dataTable5[2] = numberValue64
dataTable4[0] = dataTable5
dataTable5 = {}
numberValue61 = 151
dataTable5[1] = numberValue61
dataTable4[6] = dataTable5
dataTable3[numberValue56] = dataTable4
numberValue56 = -1667301416
dataTable4 = {}
dataTable5 = {}
numberValue61 = 716
numberValue64 = 547
dataTable5[1] = numberValue61
dataTable5[2] = numberValue64
dataTable4[11] = dataTable5
dataTable5 = {}
numberValue61 = 348
numberValue64 = 218
dataTable5[1] = numberValue61
dataTable5[2] = numberValue64
dataTable4[4] = dataTable5
dataTable5 = {}
numberValue61 = 263
dataTable5[1] = numberValue61
dataTable4[0] = dataTable5
dataTable5 = {}
numberValue61 = 159
dataTable5[1] = numberValue61
dataTable4[6] = dataTable5
dataTable3[numberValue56] = dataTable4

-- === HELPER FUNCTION (decompiler name: numberValue56; parameters: arg1, arg2, arg3) ===
function numberValue56(arg1, arg2, arg3)
  local numberValue38, numberValue49, numberValue57, numberValue58, iterator, numberValue62, numberValue65, numberValue, cmgCall, mathHelper, cmgCall2, mathHelper2, vector3Builder, workValue2, cmgCall3, numberValue10, cmgCall4, flag, flag2, flag3, flag4, workValue3, numberValue18, flag5, mathHelper3, workValue4, numberValue23, workValue5, workValue6, mathHelper4, numberValue29, numberValue31
  numberValue38 = 8
  numberValue49 = 6.0
  numberValue57 = 0
  numberValue58 = 0
  iterator = ipairs
  numberValue62 = arg2
  iterator, numberValue62, numberValue65, numberValue = iterator(numberValue62)
  for cmgCall, mathHelper in iterator, numberValue62, numberValue65, numberValue do
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.loadModel
    mathHelper2 = mathHelper
    -- Beginner: Request/load a GTA model before spawning or applying it.
    cmgCall2(mathHelper2)
    cmgCall2 = cmgCall % numberValue38
    mathHelper2 = math
    mathHelper2 = mathHelper2.floor
    vector3Builder = cmgCall / numberValue38
    mathHelper2 = mathHelper2(vector3Builder)
    vector3Builder = vector3
    workValue2 = cmgCall2 * numberValue49
    cmgCall3 = mathHelper2 * numberValue49
    numberValue10 = 0.0
    vector3Builder = vector3Builder(workValue2, cmgCall3, numberValue10)
    vector3Builder = arg1 + vector3Builder
    workValue2 = CreateVehicle
    cmgCall3 = mathHelper
    numberValue10 = vector3Builder.x
    cmgCall4 = vector3Builder.y
    flag = vector3Builder.z
    flag2 = 0.0
    flag3 = false
    flag4 = false
    -- Beginner: result below is vehicleEntity.
    workValue2 = workValue2(cmgCall3, numberValue10, cmgCall4, flag, flag2, flag3, flag4)
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.initLocalVehicle
    numberValue10 = workValue2
    cmgCall3(numberValue10)
    cmgCall3 = SetVehicleOnGroundProperly
    numberValue10 = workValue2
    cmgCall3(numberValue10)
    cmgCall3 = SetVehicleEngineOn
    numberValue10 = workValue2
    cmgCall4 = true
    flag = true
    flag2 = false
    cmgCall3(numberValue10, cmgCall4, flag, flag2)
    cmgCall3 = table
    cmgCall3 = cmgCall3.insert
    numberValue10 = dataTable
    cmgCall4 = workValue2
    cmgCall3(numberValue10, cmgCall4)
    if arg3 then
      cmgCall3 = cmgCall % 2
      cmgCall3 = 0 == cmgCall3
      if cmgCall3 then
        numberValue10 = 1885233650
        if numberValue10 then
          goto flow_label_70
        end
      end
      numberValue10 = -1667301416
      ::flow_label_70::
      cmgCall4 = CMG
      cmgCall4 = cmgCall4.loadModel
      flag = numberValue10
      -- Beginner: Request/load a GTA model before spawning or applying it.
      cmgCall4(flag)
      if cmgCall3 then
        numberValue57 = numberValue57 + 1
      else
        numberValue58 = numberValue58 + 1
      end
      cmgCall4 = CreatePed
      flag = 0
      flag2 = numberValue10
      flag3 = vector3Builder.x
      flag4 = vector3Builder.y
      workValue3 = vector3Builder.z
      numberValue18 = 0.0
      flag5 = false
      mathHelper3 = false
      -- Beginner: result below is pedEntity.
      cmgCall4 = cmgCall4(flag, flag2, flag3, flag4, workValue3, numberValue18, flag5, mathHelper3)
      flag = pairs
      flag2 = dataTable3
      flag2 = flag2[numberValue10]
      flag, flag2, flag3, flag4 = flag(flag2)
      for workValue3, numberValue18 in flag, flag2, flag3, flag4 do
        flag5 = numberValue57 or flag5
        if not cmgCall3 or not numberValue57 then
          flag5 = numberValue58
        end
        mathHelper3 = flag5 % 2
        mathHelper3 = mathHelper3 + 1
        workValue4 = numberValue18[mathHelper3]
        if not workValue4 then
          workValue4 = numberValue18[1]
        end
        numberValue23 = SetPedComponentVariation
        workValue5 = cmgCall4
        workValue6 = workValue3
        mathHelper4 = math
        mathHelper4 = mathHelper4.floor
        numberValue29 = flag5 / 2
        mathHelper4 = mathHelper4(numberValue29)
        mathHelper4 = workValue4 + mathHelper4
        numberValue29 = 0
        numberValue31 = 0
        numberValue23(workValue5, workValue6, mathHelper4, numberValue29, numberValue31)
      end
      flag = SetPedIntoVehicle
      flag2 = cmgCall4
      flag3 = workValue2
      flag4 = -1
      flag(flag2, flag3, flag4)
      flag = table
      flag = flag.insert
      flag2 = dataTable2
      flag3 = cmgCall4
      flag(flag2, flag3)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg1) ===
function dataTable4(arg1)
  local arg2, arg3, numberValue38, numberValue49, numberValue57, numberValue58, iterator, numberValue62, numberValue65, numberValue, cmgCall, mathHelper, cmgCall2, mathHelper2, vector3Builder, workValue2, cmgCall3, numberValue10, cmgCall4, flag, flag2, flag3, flag4, workValue3, numberValue18, flag5, mathHelper3, workValue4, numberValue23
  arg2 = 8
  arg3 = 2.0
  numberValue38 = 0
  numberValue49 = 0
  numberValue57 = 1
  numberValue58 = 120
  iterator = 1
  for numberValue62 = numberValue57, numberValue58, iterator do
    numberValue65 = numberValue62 % 2
    numberValue65 = 0 == numberValue65
    if numberValue65 then
      numberValue = 1885233650
      if numberValue then
        goto flow_label_21
      end
    end
    numberValue = -1667301416
    ::flow_label_21::
    cmgCall = CMG
    cmgCall = cmgCall.loadModel
    mathHelper = numberValue
    -- Beginner: Request/load a GTA model before spawning or applying it.
    cmgCall(mathHelper)
    if numberValue65 then
      numberValue38 = numberValue38 + 1
    else
      numberValue49 = numberValue49 + 1
    end
    cmgCall = numberValue62 % arg2
    mathHelper = math
    mathHelper = mathHelper.floor
    cmgCall2 = numberValue62 / arg2
    mathHelper = mathHelper(cmgCall2)
    cmgCall2 = vector3
    mathHelper2 = cmgCall * arg3
    vector3Builder = mathHelper * arg3
    workValue2 = 0.0
    cmgCall2 = cmgCall2(mathHelper2, vector3Builder, workValue2)
    cmgCall2 = arg1 + cmgCall2
    mathHelper2 = CreatePed
    vector3Builder = 0
    workValue2 = numberValue
    cmgCall3 = cmgCall2.x
    numberValue10 = cmgCall2.y
    cmgCall4 = cmgCall2.z
    flag = 0.0
    flag2 = false
    flag3 = false
    -- Beginner: result below is pedEntity.
    mathHelper2 = mathHelper2(vector3Builder, workValue2, cmgCall3, numberValue10, cmgCall4, flag, flag2, flag3)
    vector3Builder = pairs
    workValue2 = dataTable3
    workValue2 = workValue2[numberValue]
    vector3Builder, workValue2, cmgCall3, numberValue10 = vector3Builder(workValue2)
    for cmgCall4, flag in vector3Builder, workValue2, cmgCall3, numberValue10 do
      flag2 = numberValue38 or flag2
      if not numberValue65 or not numberValue38 then
        flag2 = numberValue49
      end
      flag3 = flag2 % 2
      flag3 = flag3 + 1
      flag4 = flag[flag3]
      if not flag4 then
        flag4 = flag[1]
      end
      workValue3 = SetPedComponentVariation
      numberValue18 = mathHelper2
      flag5 = cmgCall4
      mathHelper3 = math
      mathHelper3 = mathHelper3.floor
      workValue4 = flag2 / 2
      mathHelper3 = mathHelper3(workValue4)
      mathHelper3 = flag4 + mathHelper3
      workValue4 = 0
      numberValue23 = 0
      workValue3(numberValue18, flag5, mathHelper3, workValue4, numberValue23)
    end
    vector3Builder = table
    vector3Builder = vector3Builder.insert
    workValue2 = dataTable2
    cmgCall3 = mathHelper2
    vector3Builder(workValue2, cmgCall3)
  end
end

-- === HELPER FUNCTION (decompiler name: dataTable5; parameters: arg1, arg2) ===
function dataTable5(arg1, arg2)
  local arg3, numberValue38, numberValue49, numberValue57, numberValue58, iterator, numberValue62, numberValue65, numberValue, cmgCall, mathHelper
  arg3 = CreateCamWithParams
  numberValue38 = "DEFAULT_SCRIPTED_CAMERA"
  numberValue49 = arg1.x
  numberValue57 = arg1.y
  numberValue58 = arg1.z
  iterator = arg2.x
  numberValue62 = arg2.y
  numberValue65 = arg2.z
  numberValue = 50.0
  cmgCall = true
  mathHelper = 2
  arg3 = arg3(numberValue38, numberValue49, numberValue57, numberValue58, iterator, numberValue62, numberValue65, numberValue, cmgCall, mathHelper)
  numberValue25 = arg3
  arg3 = RenderScriptCams
  numberValue38 = true
  numberValue49 = false
  numberValue57 = 0
  numberValue58 = false
  iterator = false
  arg3(numberValue38, numberValue49, numberValue57, numberValue58, iterator)
  arg3 = SetFocusPosAndVel
  numberValue38 = arg1.x
  numberValue49 = arg1.y
  numberValue57 = arg1.z
  numberValue58 = 0.0
  iterator = 0.0
  numberValue62 = 0.0
  arg3(numberValue38, numberValue49, numberValue57, numberValue58, iterator, numberValue62)
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  vector3Builder2 = arg3
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  numberValue38 = SetEntityCoords
  numberValue49 = arg3
  numberValue57 = arg1.x
  numberValue58 = arg1.y
  iterator = arg1.z
  iterator = iterator - 2.0
  numberValue62 = true
  numberValue65 = false
  numberValue = false
  cmgCall = false
  -- Beginner: Move/teleport an entity to new coordinates.
  numberValue38(numberValue49, numberValue57, numberValue58, iterator, numberValue62, numberValue65, numberValue, cmgCall)
  numberValue38 = FreezeEntityPosition
  numberValue49 = arg3
  numberValue57 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  numberValue38(numberValue49, numberValue57)
  numberValue38 = SetEntityVisible
  numberValue49 = arg3
  numberValue57 = false
  numberValue58 = false
  numberValue38(numberValue49, numberValue57, numberValue58)
  numberValue38 = CMG
  numberValue38 = numberValue38.hideAllDisplays
  numberValue49 = "testbeds"
  numberValue38(numberValue49)
  numberValue38 = RageUI
  numberValue38 = numberValue38.CloseAll
  numberValue38()
end

-- === HELPER FUNCTION (decompiler name: numberValue61; parameters: none) ===
function numberValue61()
  local arg1, arg2, arg3, numberValue38, numberValue49, numberValue57, numberValue58, iterator, numberValue62
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, arg3, numberValue38 = arg1(arg2)
  for numberValue49, numberValue57 in arg1, arg2, arg3, numberValue38 do
    numberValue58 = DeleteEntity
    iterator = numberValue57
    -- Beginner: Delete a GTA entity.
    numberValue58(iterator)
  end
  arg1 = table
  arg1 = arg1.clear
  arg2 = dataTable
  arg1(arg2)
  arg1 = pairs
  arg2 = dataTable2
  arg1, arg2, arg3, numberValue38 = arg1(arg2)
  for numberValue49, numberValue57 in arg1, arg2, arg3, numberValue38 do
    numberValue58 = DeleteEntity
    iterator = numberValue57
    -- Beginner: Delete a GTA entity.
    numberValue58(iterator)
  end
  arg1 = table
  arg1 = arg1.clear
  arg2 = dataTable2
  arg1(arg2)
  arg1 = RenderScriptCams
  arg2 = false
  arg3 = false
  numberValue38 = 0
  numberValue49 = false
  numberValue57 = false
  arg1(arg2, arg3, numberValue38, numberValue49, numberValue57)
  arg1 = SetCamActive
  arg2 = numberValue25
  arg3 = false
  arg1(arg2, arg3)
  arg1 = DestroyCam
  arg2 = numberValue25
  arg3 = false
  arg1(arg2, arg3)
  arg1 = 0
  numberValue25 = arg1
  arg1 = SetEntityCoords
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = vector3Builder2.x
  numberValue38 = vector3Builder2.y
  numberValue49 = vector3Builder2.z
  numberValue57 = true
  numberValue58 = false
  iterator = false
  numberValue62 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg1(arg2, arg3, numberValue38, numberValue49, numberValue57, numberValue58, iterator, numberValue62)
  arg1 = FreezeEntityPosition
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg1(arg2, arg3)
  arg1 = SetEntityVisible
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = true
  numberValue38 = true
  arg1(arg2, arg3, numberValue38)
  arg1 = CMG
  arg1 = arg1.showAllDisplays
  arg2 = "testbeds"
  arg1(arg2)
end
numberValue64 = CMG
numberValue64 = numberValue64.registerDevMenuItems
textValue = "Testbeds"

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, numberValue38, numberValue49
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Empty Testbed"
  arg3 = "Creates a test bed with no vehicles"
  numberValue38 = true

  -- === HELPER FUNCTION (decompiler name: numberValue49; parameters: arg12, arg22, arg32) ===
  function numberValue49(arg12, arg22, arg32)
    local workValue7, vector3Builder3, vector3Builder4, numberValue59, numberValue60, numberValue63
    if arg32 then
      workValue7 = dataTable5
      vector3Builder3 = vector3
      vector3Builder4 = -1556.5574951172
      numberValue59 = -2741.05859375
      numberValue60 = 23.179716110229
      vector3Builder3 = vector3Builder3(vector3Builder4, numberValue59, numberValue60)
      vector3Builder4 = vector3
      numberValue59 = -14.400593757629
      numberValue60 = -4.4073442495574E-7
      numberValue63 = -43.419734954834
      vector3Builder4, numberValue59, numberValue60, numberValue63 = vector3Builder4(numberValue59, numberValue60, numberValue63)
      workValue7(vector3Builder3, vector3Builder4, numberValue59, numberValue60, numberValue63)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, numberValue38, numberValue49)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "View Vehicles (CMG)"
  arg3 = "Creates a test bed of hardcoded spawncodes from CMG"
  numberValue38 = true

  -- === HELPER FUNCTION (decompiler name: numberValue49; parameters: arg12, arg22, arg32) ===
  function numberValue49(arg12, arg22, arg32)
    local workValue7, vector3Builder3, vector3Builder4, numberValue59, numberValue60, numberValue63, numberValue66, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue24, numberValue26, numberValue27, numberValue28, numberValue30, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue48, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54, numberValue55
    if arg32 then
      workValue7 = numberValue56
      vector3Builder3 = vector3
      vector3Builder4 = -1545.5848388672
      numberValue59 = -2728.4724121094
      numberValue60 = 13.94452381134
      vector3Builder3 = vector3Builder3(vector3Builder4, numberValue59, numberValue60)
      vector3Builder4 = {}
      numberValue59 = -591656107
      numberValue60 = -1009308385
      numberValue63 = 934775262
      numberValue66 = -73532343
      numberValue2 = 1279054538
      numberValue3 = -1987080451
      numberValue4 = 1046541171
      numberValue5 = -356772413
      numberValue6 = 2112115937
      numberValue7 = 1744402006
      numberValue8 = -338573826
      numberValue9 = -1440073795
      numberValue11 = -581602444
      numberValue12 = -1110613433
      numberValue13 = -1618641119
      numberValue14 = -686361117
      numberValue15 = 1180067545
      numberValue16 = -1716497127
      numberValue17 = 176767793
      numberValue19 = -1792104722
      numberValue20 = -1517696258
      numberValue21 = 1423182998
      numberValue22 = 541729238
      numberValue24 = 361960151
      numberValue26 = 1318035284
      numberValue27 = -546692846
      numberValue28 = 191208755
      numberValue30 = -1698524521
      numberValue32 = 268464514
      numberValue33 = 1772961451
      numberValue34 = -959123330
      numberValue35 = -1392982098
      numberValue36 = 118843548
      numberValue37 = -1491226698
      numberValue39 = -472912397
      numberValue40 = -1998846971
      numberValue41 = 1564933974
      numberValue42 = 1792287121
      numberValue43 = -119718915
      numberValue44 = -1148674271
      numberValue45 = 1978837259
      numberValue46 = -1998868072
      numberValue47 = 323059884
      numberValue48 = -1663771234
      numberValue50 = 1473119040
      numberValue51 = -288742714
      numberValue52 = -1750300292
      numberValue53 = -1758624382
      numberValue54 = -1289689034
      numberValue55 = 1268711383
      vector3Builder4[1] = numberValue59
      vector3Builder4[2] = numberValue60
      vector3Builder4[3] = numberValue63
      vector3Builder4[4] = numberValue66
      vector3Builder4[5] = numberValue2
      vector3Builder4[6] = numberValue3
      vector3Builder4[7] = numberValue4
      vector3Builder4[8] = numberValue5
      vector3Builder4[9] = numberValue6
      vector3Builder4[10] = numberValue7
      vector3Builder4[11] = numberValue8
      vector3Builder4[12] = numberValue9
      vector3Builder4[13] = numberValue11
      vector3Builder4[14] = numberValue12
      vector3Builder4[15] = numberValue13
      vector3Builder4[16] = numberValue14
      vector3Builder4[17] = numberValue15
      vector3Builder4[18] = numberValue16
      vector3Builder4[19] = numberValue17
      vector3Builder4[20] = numberValue19
      vector3Builder4[21] = numberValue20
      vector3Builder4[22] = numberValue21
      vector3Builder4[23] = numberValue22
      vector3Builder4[24] = numberValue24
      vector3Builder4[25] = numberValue26
      vector3Builder4[26] = numberValue27
      vector3Builder4[27] = numberValue28
      vector3Builder4[28] = numberValue30
      vector3Builder4[29] = numberValue32
      vector3Builder4[30] = numberValue33
      vector3Builder4[31] = numberValue34
      vector3Builder4[32] = numberValue35
      vector3Builder4[33] = numberValue36
      vector3Builder4[34] = numberValue37
      vector3Builder4[35] = numberValue39
      vector3Builder4[36] = numberValue40
      vector3Builder4[37] = numberValue41
      vector3Builder4[38] = numberValue42
      vector3Builder4[39] = numberValue43
      vector3Builder4[40] = numberValue44
      vector3Builder4[41] = numberValue45
      vector3Builder4[42] = numberValue46
      vector3Builder4[43] = numberValue47
      vector3Builder4[44] = numberValue48
      vector3Builder4[45] = numberValue50
      vector3Builder4[46] = numberValue51
      vector3Builder4[47] = numberValue52
      vector3Builder4[48] = numberValue53
      vector3Builder4[49] = numberValue54
      vector3Builder4[50] = numberValue55
      numberValue59 = 1867789750
      numberValue60 = -781483748
      numberValue63 = 242633659
      numberValue66 = -277924201
      numberValue2 = -1531754134
      numberValue3 = -957772333
      numberValue4 = -1075805112
      numberValue5 = -53577316
      numberValue6 = 67014652
      numberValue7 = -184685184
      numberValue8 = 309337572
      vector3Builder4[51] = numberValue59
      vector3Builder4[52] = numberValue60
      vector3Builder4[53] = numberValue63
      vector3Builder4[54] = numberValue66
      vector3Builder4[55] = numberValue2
      vector3Builder4[56] = numberValue3
      vector3Builder4[57] = numberValue4
      vector3Builder4[58] = numberValue5
      vector3Builder4[59] = numberValue6
      vector3Builder4[60] = numberValue7
      vector3Builder4[61] = numberValue8
      numberValue59 = false
      workValue7(vector3Builder3, vector3Builder4, numberValue59)
      workValue7 = dataTable5
      vector3Builder3 = vector3
      vector3Builder4 = -1556.5574951172
      numberValue59 = -2741.05859375
      numberValue60 = 23.179716110229
      vector3Builder3 = vector3Builder3(vector3Builder4, numberValue59, numberValue60)
      vector3Builder4 = vector3
      numberValue59 = -14.400593757629
      numberValue60 = -4.4073442495574E-7
      numberValue63 = -43.419734954834
      vector3Builder4, numberValue59, numberValue60, numberValue63, numberValue66, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue24, numberValue26, numberValue27, numberValue28, numberValue30, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue48, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54, numberValue55 = vector3Builder4(numberValue59, numberValue60, numberValue63)
      workValue7(vector3Builder3, vector3Builder4, numberValue59, numberValue60, numberValue63, numberValue66, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue24, numberValue26, numberValue27, numberValue28, numberValue30, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue48, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54, numberValue55)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, numberValue38, numberValue49)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "View Vehicles (GTA)"
  arg3 = "Creates a test bed of hardcoded spawncodes from GTA"
  numberValue38 = true

  -- === HELPER FUNCTION (decompiler name: numberValue49; parameters: arg12, arg22, arg32) ===
  function numberValue49(arg12, arg22, arg32)
    local workValue7, vector3Builder3, vector3Builder4, numberValue59, numberValue60, numberValue63, numberValue66, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue24, numberValue26, numberValue27, numberValue28, numberValue30, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue48, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54, numberValue55
    if arg32 then
      workValue7 = numberValue56
      vector3Builder3 = vector3
      vector3Builder4 = -1545.5848388672
      numberValue59 = -2728.4724121094
      numberValue60 = 13.94452381134
      vector3Builder3 = vector3Builder3(vector3Builder4, numberValue59, numberValue60)
      vector3Builder4 = {}
      numberValue59 = -1216765807
      numberValue60 = -1041692462
      numberValue63 = -1696146015
      numberValue66 = -1311154784
      numberValue2 = -1291952903
      numberValue3 = -591610296
      numberValue4 = 418536135
      numberValue5 = -1297672541
      numberValue6 = -1372848492
      numberValue7 = -142942670
      numberValue8 = -433375717
      numberValue9 = 1034187331
      numberValue11 = 1987142870
      numberValue12 = -1758137366
      numberValue13 = -1934452204
      numberValue14 = 970598228
      numberValue15 = 1663218586
      numberValue16 = 972671128
      numberValue17 = 338562499
      numberValue19 = -1622444098
      numberValue20 = -1403128555
      numberValue21 = -1479664699
      numberValue22 = -1130810103
      numberValue24 = -1842748181
      numberValue26 = -1089039904
      numberValue27 = 75131841
      numberValue28 = 886934177
      numberValue30 = -310465116
      numberValue32 = -431692672
      numberValue33 = -1450650718
      numberValue34 = 1645267888
      numberValue35 = -14495224
      numberValue36 = 788045382
      numberValue37 = -295689028
      numberValue39 = 464687292
      numberValue40 = 1531094468
      numberValue41 = 1762279763
      numberValue42 = 740289177
      numberValue43 = -1242608589
      numberValue44 = 1373123368
      numberValue45 = 1777363799
      numberValue46 = 758895617
      numberValue47 = 633712403
      numberValue48 = -344943009
      numberValue50 = 2006918058
      numberValue51 = -2030171296
      numberValue52 = 1682114128
      numberValue53 = -2119578145
      numberValue54 = -1790546981
      numberValue55 = -2039755226
      vector3Builder4[1] = numberValue59
      vector3Builder4[2] = numberValue60
      vector3Builder4[3] = numberValue63
      vector3Builder4[4] = numberValue66
      vector3Builder4[5] = numberValue2
      vector3Builder4[6] = numberValue3
      vector3Builder4[7] = numberValue4
      vector3Builder4[8] = numberValue5
      vector3Builder4[9] = numberValue6
      vector3Builder4[10] = numberValue7
      vector3Builder4[11] = numberValue8
      vector3Builder4[12] = numberValue9
      vector3Builder4[13] = numberValue11
      vector3Builder4[14] = numberValue12
      vector3Builder4[15] = numberValue13
      vector3Builder4[16] = numberValue14
      vector3Builder4[17] = numberValue15
      vector3Builder4[18] = numberValue16
      vector3Builder4[19] = numberValue17
      vector3Builder4[20] = numberValue19
      vector3Builder4[21] = numberValue20
      vector3Builder4[22] = numberValue21
      vector3Builder4[23] = numberValue22
      vector3Builder4[24] = numberValue24
      vector3Builder4[25] = numberValue26
      vector3Builder4[26] = numberValue27
      vector3Builder4[27] = numberValue28
      vector3Builder4[28] = numberValue30
      vector3Builder4[29] = numberValue32
      vector3Builder4[30] = numberValue33
      vector3Builder4[31] = numberValue34
      vector3Builder4[32] = numberValue35
      vector3Builder4[33] = numberValue36
      vector3Builder4[34] = numberValue37
      vector3Builder4[35] = numberValue39
      vector3Builder4[36] = numberValue40
      vector3Builder4[37] = numberValue41
      vector3Builder4[38] = numberValue42
      vector3Builder4[39] = numberValue43
      vector3Builder4[40] = numberValue44
      vector3Builder4[41] = numberValue45
      vector3Builder4[42] = numberValue46
      vector3Builder4[43] = numberValue47
      vector3Builder4[44] = numberValue48
      vector3Builder4[45] = numberValue50
      vector3Builder4[46] = numberValue51
      vector3Builder4[47] = numberValue52
      vector3Builder4[48] = numberValue53
      vector3Builder4[49] = numberValue54
      vector3Builder4[50] = numberValue55
      numberValue59 = -192961924
      numberValue60 = 600450546
      numberValue63 = 1051415893
      numberValue66 = -1660945322
      numberValue2 = -2124201592
      numberValue3 = 525509695
      numberValue4 = -1943285540
      numberValue5 = 61200530
      numberValue6 = -667151410
      numberValue7 = 234062309
      numberValue8 = -1683328900
      numberValue9 = -2033222435
      numberValue11 = 101905590
      numberValue12 = 579912970
      numberValue13 = 1663810515
      vector3Builder4[51] = numberValue59
      vector3Builder4[52] = numberValue60
      vector3Builder4[53] = numberValue63
      vector3Builder4[54] = numberValue66
      vector3Builder4[55] = numberValue2
      vector3Builder4[56] = numberValue3
      vector3Builder4[57] = numberValue4
      vector3Builder4[58] = numberValue5
      vector3Builder4[59] = numberValue6
      vector3Builder4[60] = numberValue7
      vector3Builder4[61] = numberValue8
      vector3Builder4[62] = numberValue9
      vector3Builder4[63] = numberValue11
      vector3Builder4[64] = numberValue12
      vector3Builder4[65] = numberValue13
      numberValue59 = false
      workValue7(vector3Builder3, vector3Builder4, numberValue59)
      workValue7 = dataTable5
      vector3Builder3 = vector3
      vector3Builder4 = -1556.5574951172
      numberValue59 = -2741.05859375
      numberValue60 = 23.179716110229
      vector3Builder3 = vector3Builder3(vector3Builder4, numberValue59, numberValue60)
      vector3Builder4 = vector3
      numberValue59 = -14.400593757629
      numberValue60 = -4.4073442495574E-7
      numberValue63 = -43.419734954834
      vector3Builder4, numberValue59, numberValue60, numberValue63, numberValue66, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue24, numberValue26, numberValue27, numberValue28, numberValue30, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue48, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54, numberValue55 = vector3Builder4(numberValue59, numberValue60, numberValue63)
      workValue7(vector3Builder3, vector3Builder4, numberValue59, numberValue60, numberValue63, numberValue66, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue24, numberValue26, numberValue27, numberValue28, numberValue30, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue48, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54, numberValue55)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, numberValue38, numberValue49)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "View Peds (CMG)"
  arg3 = "Creates a test bed of hardcoded components from CMG"
  numberValue38 = true

  -- === HELPER FUNCTION (decompiler name: numberValue49; parameters: arg12, arg22, arg32) ===
  function numberValue49(arg12, arg22, arg32)
    local workValue7, vector3Builder3, vector3Builder4, numberValue59, numberValue60, numberValue63
    if arg32 then
      workValue7 = dataTable4
      vector3Builder3 = vector3
      vector3Builder4 = -1545.5848388672
      numberValue59 = -2728.4724121094
      numberValue60 = 13.94452381134
      vector3Builder3, vector3Builder4, numberValue59, numberValue60, numberValue63 = vector3Builder3(vector3Builder4, numberValue59, numberValue60)
      workValue7(vector3Builder3, vector3Builder4, numberValue59, numberValue60, numberValue63)
      workValue7 = dataTable5
      vector3Builder3 = vector3
      vector3Builder4 = -1556.5574951172
      numberValue59 = -2741.05859375
      numberValue60 = 23.179716110229
      vector3Builder3 = vector3Builder3(vector3Builder4, numberValue59, numberValue60)
      vector3Builder4 = vector3
      numberValue59 = -14.400593757629
      numberValue60 = -4.4073442495574E-7
      numberValue63 = -43.419734954834
      vector3Builder4, numberValue59, numberValue60, numberValue63 = vector3Builder4(numberValue59, numberValue60, numberValue63)
      workValue7(vector3Builder3, vector3Builder4, numberValue59, numberValue60, numberValue63)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, numberValue38, numberValue49)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "View Vehicles & Peds (CMG)"
  arg3 = "Creates a test bed of hardcoded components from CMG"
  numberValue38 = true

  -- === HELPER FUNCTION (decompiler name: numberValue49; parameters: arg12, arg22, arg32) ===
  function numberValue49(arg12, arg22, arg32)
    local workValue7, vector3Builder3, vector3Builder4, numberValue59, numberValue60, numberValue63, numberValue66, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue24, numberValue26, numberValue27, numberValue28, numberValue30, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue48, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54, numberValue55
    if arg32 then
      workValue7 = numberValue56
      vector3Builder3 = vector3
      vector3Builder4 = -1545.5848388672
      numberValue59 = -2728.4724121094
      numberValue60 = 13.94452381134
      vector3Builder3 = vector3Builder3(vector3Builder4, numberValue59, numberValue60)
      vector3Builder4 = {}
      numberValue59 = -591656107
      numberValue60 = -1009308385
      numberValue63 = 934775262
      numberValue66 = -73532343
      numberValue2 = 1279054538
      numberValue3 = -1987080451
      numberValue4 = 1046541171
      numberValue5 = -356772413
      numberValue6 = 2112115937
      numberValue7 = 1744402006
      numberValue8 = -338573826
      numberValue9 = -1440073795
      numberValue11 = -581602444
      numberValue12 = -1110613433
      numberValue13 = -1618641119
      numberValue14 = -686361117
      numberValue15 = 1180067545
      numberValue16 = -1716497127
      numberValue17 = 176767793
      numberValue19 = -1792104722
      numberValue20 = -1517696258
      numberValue21 = 1423182998
      numberValue22 = 541729238
      numberValue24 = 361960151
      numberValue26 = 1318035284
      numberValue27 = -546692846
      numberValue28 = 191208755
      numberValue30 = -1698524521
      numberValue32 = 268464514
      numberValue33 = 1772961451
      numberValue34 = -959123330
      numberValue35 = -1392982098
      numberValue36 = 118843548
      numberValue37 = -1491226698
      numberValue39 = -472912397
      numberValue40 = -1998846971
      numberValue41 = 1564933974
      numberValue42 = 1792287121
      numberValue43 = -119718915
      numberValue44 = -1148674271
      numberValue45 = 1978837259
      numberValue46 = -1998868072
      numberValue47 = 323059884
      numberValue48 = -1663771234
      numberValue50 = 1473119040
      numberValue51 = -288742714
      numberValue52 = -1750300292
      numberValue53 = -1758624382
      numberValue54 = -1289689034
      numberValue55 = 1268711383
      vector3Builder4[1] = numberValue59
      vector3Builder4[2] = numberValue60
      vector3Builder4[3] = numberValue63
      vector3Builder4[4] = numberValue66
      vector3Builder4[5] = numberValue2
      vector3Builder4[6] = numberValue3
      vector3Builder4[7] = numberValue4
      vector3Builder4[8] = numberValue5
      vector3Builder4[9] = numberValue6
      vector3Builder4[10] = numberValue7
      vector3Builder4[11] = numberValue8
      vector3Builder4[12] = numberValue9
      vector3Builder4[13] = numberValue11
      vector3Builder4[14] = numberValue12
      vector3Builder4[15] = numberValue13
      vector3Builder4[16] = numberValue14
      vector3Builder4[17] = numberValue15
      vector3Builder4[18] = numberValue16
      vector3Builder4[19] = numberValue17
      vector3Builder4[20] = numberValue19
      vector3Builder4[21] = numberValue20
      vector3Builder4[22] = numberValue21
      vector3Builder4[23] = numberValue22
      vector3Builder4[24] = numberValue24
      vector3Builder4[25] = numberValue26
      vector3Builder4[26] = numberValue27
      vector3Builder4[27] = numberValue28
      vector3Builder4[28] = numberValue30
      vector3Builder4[29] = numberValue32
      vector3Builder4[30] = numberValue33
      vector3Builder4[31] = numberValue34
      vector3Builder4[32] = numberValue35
      vector3Builder4[33] = numberValue36
      vector3Builder4[34] = numberValue37
      vector3Builder4[35] = numberValue39
      vector3Builder4[36] = numberValue40
      vector3Builder4[37] = numberValue41
      vector3Builder4[38] = numberValue42
      vector3Builder4[39] = numberValue43
      vector3Builder4[40] = numberValue44
      vector3Builder4[41] = numberValue45
      vector3Builder4[42] = numberValue46
      vector3Builder4[43] = numberValue47
      vector3Builder4[44] = numberValue48
      vector3Builder4[45] = numberValue50
      vector3Builder4[46] = numberValue51
      vector3Builder4[47] = numberValue52
      vector3Builder4[48] = numberValue53
      vector3Builder4[49] = numberValue54
      vector3Builder4[50] = numberValue55
      numberValue59 = 1867789750
      numberValue60 = -781483748
      numberValue63 = 242633659
      numberValue66 = -277924201
      numberValue2 = -1531754134
      numberValue3 = -957772333
      numberValue4 = -1075805112
      numberValue5 = -53577316
      numberValue6 = 67014652
      numberValue7 = -184685184
      numberValue8 = 309337572
      vector3Builder4[51] = numberValue59
      vector3Builder4[52] = numberValue60
      vector3Builder4[53] = numberValue63
      vector3Builder4[54] = numberValue66
      vector3Builder4[55] = numberValue2
      vector3Builder4[56] = numberValue3
      vector3Builder4[57] = numberValue4
      vector3Builder4[58] = numberValue5
      vector3Builder4[59] = numberValue6
      vector3Builder4[60] = numberValue7
      vector3Builder4[61] = numberValue8
      numberValue59 = true
      workValue7(vector3Builder3, vector3Builder4, numberValue59)
      workValue7 = dataTable5
      vector3Builder3 = vector3
      vector3Builder4 = -1556.5574951172
      numberValue59 = -2741.05859375
      numberValue60 = 23.179716110229
      vector3Builder3 = vector3Builder3(vector3Builder4, numberValue59, numberValue60)
      vector3Builder4 = vector3
      numberValue59 = -14.400593757629
      numberValue60 = -4.4073442495574E-7
      numberValue63 = -43.419734954834
      vector3Builder4, numberValue59, numberValue60, numberValue63, numberValue66, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue24, numberValue26, numberValue27, numberValue28, numberValue30, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue48, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54, numberValue55 = vector3Builder4(numberValue59, numberValue60, numberValue63)
      workValue7(vector3Builder3, vector3Builder4, numberValue59, numberValue60, numberValue63, numberValue66, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue24, numberValue26, numberValue27, numberValue28, numberValue30, numberValue32, numberValue33, numberValue34, numberValue35, numberValue36, numberValue37, numberValue39, numberValue40, numberValue41, numberValue42, numberValue43, numberValue44, numberValue45, numberValue46, numberValue47, numberValue48, numberValue50, numberValue51, numberValue52, numberValue53, numberValue54, numberValue55)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, numberValue38, numberValue49)
end
numberValue64(textValue, workValue)
numberValue64 = CMG
numberValue64 = numberValue64.registerDevMenuThread
textValue = "Testbeds"

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3
  arg1 = numberValue25
  if 0 == arg1 then
    return
  end
  arg1 = drawNativeNotification
  arg2 = "Press ~INPUT_CONTEXT~ to exit the test bed."
  -- Beginner: Show a GTA-style notification/help prompt.
  arg1(arg2)
  arg1 = IsControlJustPressed
  arg2 = 0
  arg3 = 51
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = numberValue61
    arg1()
  end
end
numberValue64(textValue, workValue)
