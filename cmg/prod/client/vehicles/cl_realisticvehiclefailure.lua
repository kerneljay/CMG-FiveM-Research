--[[
    LEVEL 1 BEGINNER GUIDE — Realisticvehiclefailure
    =====================================================

    File: cmg/prod/client/vehicles/cl_realisticvehiclefailure.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: vehicle gameplay and vehicle systems, specifically the Realisticvehiclefailure feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 26
      * Background threads: 0
      * Always-running loops: 3
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
local dataTable, dataTable2, cmgCall, dataTable3, dataTable4, vector3Builder, vector3Builder2, numberValue27, numberValue29, numberValue31, numberValue, numberValue3, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue14, numberValue16, numberValue17, numberValue18, numberValue20, numberValue21, numberValue22, numberValue23, numberValue24, numberValue25, workValue4, mathHelper, gameTime, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, threadCall, workValue24
dataTable = {}
dataTable.deformationMultiplier = -1
dataTable.deformationExponent = 0.7
dataTable.collisionDamageExponent = 0.6
dataTable.damageFactorEngine = 10.0
dataTable.damageFactorBody = 10.0
dataTable.damageFactorPetrolTank = 64.0
dataTable.engineDamageExponent = 0.6
dataTable.weaponsDamageMultiplier = 1.0
dataTable.degradingHealthSpeedFactor = 10
dataTable.cascadingFailureSpeedFactor = 15.0
dataTable.degradingFailureThreshold = 0.0
dataTable.cascadingFailureThreshold = 0.0
dataTable.engineSafeGuard = 150.0
dataTable.torqueMultiplierEnabled = true
dataTable.limpMode = true
dataTable.limpModeMultiplier = 0.005
dataTable.preventVehicleFlip = true
dataTable.sundayDriver = false
dataTable.sundayDriverAcceleratorCurve = 7.5
dataTable.sundayDriverBrakeCurve = 5.0
dataTable.displayBlips = true
dataTable.compatibilityMode = false
dataTable.randomTireBurstInterval = 0
dataTable.chargeForRepairs = true
dataTable.price = 1000.0
dataTable.DamageMultiplier = 2.5
dataTable2 = {}
dataTable2[0] = 1.0
cmgCall = 1.0
dataTable3 = 1.0
dataTable4 = 1.0
vector3Builder = 1.0
vector3Builder2 = 1.0
numberValue27 = 1.0
numberValue29 = 1.3
numberValue31 = 0.25
numberValue = 0.7
numberValue3 = 0.5
numberValue5 = 1.0
numberValue7 = 1.0
numberValue8 = 1.0
numberValue9 = 1.0
numberValue10 = 1.0
numberValue12 = 1.0
numberValue14 = 1.0
numberValue16 = 0.75
numberValue17 = 0.75
numberValue18 = 1.0
numberValue20 = 1.0
numberValue21 = 1.0
dataTable2[1] = cmgCall
dataTable2[2] = dataTable3
dataTable2[3] = dataTable4
dataTable2[4] = vector3Builder
dataTable2[5] = vector3Builder2
dataTable2[6] = numberValue27
dataTable2[7] = numberValue29
dataTable2[8] = numberValue31
dataTable2[9] = numberValue
dataTable2[10] = numberValue3
dataTable2[11] = numberValue5
dataTable2[12] = numberValue7
dataTable2[13] = numberValue8
dataTable2[14] = numberValue9
dataTable2[15] = numberValue10
dataTable2[16] = numberValue12
dataTable2[17] = numberValue14
dataTable2[18] = numberValue16
dataTable2[19] = numberValue17
dataTable2[20] = numberValue18
dataTable2[21] = numberValue20
dataTable2[22] = numberValue21
dataTable.classDamageMultiplier = dataTable2
dataTable2 = false
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
function dataTable3()
  local arg1, arg2
  arg1 = dataTable2
  return arg1
end
cmgCall.isVehicleFailureDisabled = dataTable3
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1) ===
function dataTable3(arg1)
  local arg2
  dataTable2 = arg1
end
cmgCall.setVehicleFailureDisabled = dataTable3
cmgCall = {}
dataTable3 = {}
dataTable4 = {}
dataTable4.name = "Mechanic"
dataTable4.blip = 402
dataTable4.radius = 5.0
vector3Builder = vector3
vector3Builder2 = 1774.0
numberValue27 = 3333.0
numberValue29 = 41.0
vector3Builder = vector3Builder(vector3Builder2, numberValue27, numberValue29)
dataTable4.position = vector3Builder
vector3Builder = vector4
vector3Builder2 = 1776.9522705078
numberValue27 = 3327.7587890625
numberValue29 = 41.433326721191
numberValue31 = 312.74
vector3Builder = vector3Builder(vector3Builder2, numberValue27, numberValue29, numberValue31)
dataTable4.pedPosition = vector3Builder
vector3Builder = {}
vector3Builder.name = "Mechanic"
vector3Builder.blip = 402
vector3Builder.radius = 5.0
vector3Builder2 = vector3
numberValue27 = 1143.0
numberValue29 = -776.0
numberValue31 = 57.0
vector3Builder2 = vector3Builder2(numberValue27, numberValue29, numberValue31)
vector3Builder.position = vector3Builder2
vector3Builder2 = vector4
numberValue27 = 1151.2346191406
numberValue29 = -778.63012695312
numberValue31 = 57.598678588867
numberValue = 58.28
vector3Builder2 = vector3Builder2(numberValue27, numberValue29, numberValue31, numberValue)
vector3Builder.pedPosition = vector3Builder2
vector3Builder2 = {}
vector3Builder2.name = "Mechanic"
vector3Builder2.blip = 402
vector3Builder2.radius = 5.0
numberValue27 = vector3
numberValue29 = 2508.0
numberValue31 = 4103.0
numberValue = 38.0
numberValue27 = numberValue27(numberValue29, numberValue31, numberValue)
vector3Builder2.position = numberValue27
numberValue27 = vector4
numberValue29 = 2506.7048339844
numberValue31 = 4097.9829101562
numberValue = 38.706733703613
numberValue3 = 2.37
numberValue27 = numberValue27(numberValue29, numberValue31, numberValue, numberValue3)
vector3Builder2.pedPosition = numberValue27
numberValue27 = {}
numberValue27.name = "Mechanic"
numberValue27.blip = 402
numberValue27.radius = 5.0
numberValue29 = vector3
numberValue31 = 2006.0
numberValue = 3792.0
numberValue3 = 32.0
numberValue29 = numberValue29(numberValue31, numberValue, numberValue3)
numberValue27.position = numberValue29
numberValue29 = vector4
numberValue31 = 2002.1617431641
numberValue = 3796.1989746094
numberValue3 = 32.180774688721
numberValue5 = 282.57
numberValue29 = numberValue29(numberValue31, numberValue, numberValue3, numberValue5)
numberValue27.pedPosition = numberValue29
numberValue29 = {}
numberValue29.name = "Mechanic"
numberValue29.blip = 402
numberValue29.radius = 5.0
numberValue31 = vector3
numberValue = 484.0
numberValue3 = -1316.0
numberValue5 = 29.0
numberValue31 = numberValue31(numberValue, numberValue3, numberValue5)
numberValue29.position = numberValue31
numberValue31 = vector4
numberValue = 474.15823364258
numberValue3 = -1313.6834716797
numberValue5 = 29.195556640625
numberValue7 = 252.28346252441
numberValue31 = numberValue31(numberValue, numberValue3, numberValue5, numberValue7)
numberValue29.pedPosition = numberValue31
numberValue31 = {}
numberValue31.name = "Mechanic"
numberValue31.blip = 402
numberValue31.radius = 5.0
numberValue = vector3
numberValue3 = -1408.65
numberValue5 = -459.72
numberValue7 = 34.49
numberValue = numberValue(numberValue3, numberValue5, numberValue7)
numberValue31.position = numberValue
numberValue = vector4
numberValue3 = -1402.3912353516
numberValue5 = -452.58462524414
numberValue7 = 34.469604492188
numberValue8 = 206.92913818359
numberValue = numberValue(numberValue3, numberValue5, numberValue7, numberValue8)
numberValue31.pedPosition = numberValue
numberValue = {}
numberValue.name = "Mechanic"
numberValue.blip = 402
numberValue.radius = 5.0
numberValue3 = vector3
numberValue5 = 254.52
numberValue7 = -1800.12
numberValue8 = 27.1
numberValue3 = numberValue3(numberValue5, numberValue7, numberValue8)
numberValue.position = numberValue3
numberValue3 = vector4
numberValue5 = 262.70770263672
numberValue7 = -1794.4088134766
numberValue8 = 27.106201171875
numberValue9 = 76.535430908203
numberValue3 = numberValue3(numberValue5, numberValue7, numberValue8, numberValue9)
numberValue.pedPosition = numberValue3
numberValue3 = {}
numberValue3.name = "Mechanic"
numberValue3.blip = 402
numberValue3.radius = 5.0
numberValue5 = vector3
numberValue7 = 288.0
numberValue8 = -1730.0
numberValue9 = 29.0
numberValue5 = numberValue5(numberValue7, numberValue8, numberValue9)
numberValue3.position = numberValue5
numberValue5 = vector4
numberValue7 = 289.78021240234
numberValue8 = -1721.8286132812
numberValue9 = 29.263061523438
numberValue10 = 195.5905456543
numberValue5 = numberValue5(numberValue7, numberValue8, numberValue9, numberValue10)
numberValue3.pedPosition = numberValue5
numberValue5 = {}
numberValue5.name = "Mechanic"
numberValue5.blip = 402
numberValue5.radius = 5.0
numberValue7 = vector3
numberValue8 = 1910.0
numberValue9 = 3730.35
numberValue10 = 32.4
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue10)
numberValue5.position = numberValue7
numberValue7 = vector4
numberValue8 = 1917.5340576172
numberValue9 = 3727.2790527344
numberValue10 = 32.801513671875
numberValue12 = 107.71653747559
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue10, numberValue12)
numberValue5.pedPosition = numberValue7
numberValue7 = {}
numberValue7.name = "Mechanic"
numberValue7.blip = 402
numberValue7.radius = 5.0
numberValue8 = vector3
numberValue9 = -29.16
numberValue10 = -1679.95
numberValue12 = 29.46
numberValue8 = numberValue8(numberValue9, numberValue10, numberValue12)
numberValue7.position = numberValue8
numberValue8 = vector4
numberValue9 = -34.378021240234
numberValue10 = -1676.5186767578
numberValue12 = 29.482055664062
numberValue14 = 235.27558898926
numberValue8 = numberValue8(numberValue9, numberValue10, numberValue12, numberValue14)
numberValue7.pedPosition = numberValue8
numberValue8 = {}
numberValue8.name = "Mechanic"
numberValue8.blip = 402
numberValue8.radius = 5.0
numberValue9 = vector3
numberValue10 = -198.12
numberValue12 = -1381.97
numberValue14 = 31.26
numberValue9 = numberValue9(numberValue10, numberValue12, numberValue14)
numberValue8.position = numberValue9
numberValue9 = vector4
numberValue10 = -195.50769042969
numberValue12 = -1377.2307128906
numberValue14 = 31.251342773438
numberValue16 = 192.75592041016
numberValue9 = numberValue9(numberValue10, numberValue12, numberValue14, numberValue16)
numberValue8.pedPosition = numberValue9
numberValue9 = {}
numberValue9.name = "Mechanic"
numberValue9.blip = 402
numberValue9.radius = 5.0
numberValue10 = vector3
numberValue12 = 258.0
numberValue14 = 2594.0
numberValue16 = 44.0
numberValue10 = numberValue10(numberValue12, numberValue14, numberValue16)
numberValue9.position = numberValue10
numberValue10 = vector4
numberValue12 = 259.55130004883
numberValue14 = 2586.1047363281
numberValue16 = 44.9541206359861
numberValue17 = 11.14
numberValue10 = numberValue10(numberValue12, numberValue14, numberValue16, numberValue17)
numberValue9.pedPosition = numberValue10
numberValue10 = {}
numberValue10.name = "Mechanic"
numberValue10.blip = 402
numberValue10.radius = 5.0
numberValue12 = vector3
numberValue14 = -32.0
numberValue16 = -1090.0
numberValue17 = 26.0
numberValue12 = numberValue12(numberValue14, numberValue16, numberValue17)
numberValue10.position = numberValue12
numberValue12 = vector4
numberValue14 = -36.834205627441
numberValue16 = -1088.4458007812
numberValue17 = 26.422451019287
numberValue18 = 248.74
numberValue12 = numberValue12(numberValue14, numberValue16, numberValue17, numberValue18)
numberValue10.pedPosition = numberValue12
numberValue12 = {}
numberValue12.name = "Mechanic"
numberValue12.blip = 402
numberValue12.radius = 5.0
numberValue14 = vector3
numberValue16 = -200.0
numberValue17 = -1298.0
numberValue18 = 31.29
numberValue14 = numberValue14(numberValue16, numberValue17, numberValue18)
numberValue12.position = numberValue14
numberValue14 = vector4
numberValue16 = -196.32527160645
numberValue17 = -1297.4505615234
numberValue18 = 31.285034179688
numberValue20 = 130.39370727539
numberValue14 = numberValue14(numberValue16, numberValue17, numberValue18, numberValue20)
numberValue12.pedPosition = numberValue14
numberValue14 = {}
numberValue14.name = "Mechanic"
numberValue14.blip = 402
numberValue14.radius = 5.0
numberValue16 = vector3
numberValue17 = 903.0
numberValue18 = 3563.0
numberValue20 = 34.0
numberValue16 = numberValue16(numberValue17, numberValue18, numberValue20)
numberValue14.position = numberValue16
numberValue16 = vector4
numberValue17 = 902.65588378906
numberValue18 = 3566.1516113281
numberValue20 = 33.794116973877
numberValue21 = 110.31
numberValue16 = numberValue16(numberValue17, numberValue18, numberValue20, numberValue21)
numberValue14.pedPosition = numberValue16
numberValue16 = {}
numberValue16.name = "Mechanic"
numberValue16.blip = 402
numberValue16.radius = 5.0
numberValue17 = vector3
numberValue18 = 434.85
numberValue20 = 3577.52
numberValue21 = 33.23
numberValue17 = numberValue17(numberValue18, numberValue20, numberValue21)
numberValue16.position = numberValue17
numberValue17 = vector4
numberValue18 = 439.26593017578
numberValue20 = 3571.8989257812
numberValue21 = 33.22265625
numberValue22 = 0.0
numberValue17 = numberValue17(numberValue18, numberValue20, numberValue21, numberValue22)
numberValue16.pedPosition = numberValue17
numberValue17 = {}
numberValue17.name = "Mechanic"
numberValue17.blip = 402
numberValue17.radius = 5.0
numberValue18 = vector3
numberValue20 = -394.34808349609
numberValue21 = 6055.6342773438
numberValue22 = 31.500127792358
numberValue18 = numberValue18(numberValue20, numberValue21, numberValue22)
numberValue17.position = numberValue18
numberValue18 = vector4
numberValue20 = -401.18240356445
numberValue21 = 6058.4438476562
numberValue22 = 31.487182617188
numberValue23 = 232.44094848633
numberValue18 = numberValue18(numberValue20, numberValue21, numberValue22, numberValue23)
numberValue17.pedPosition = numberValue18
numberValue18 = {}
numberValue18.name = "Mechanic"
numberValue18.blip = 402
numberValue18.radius = 5.0
numberValue20 = vector3
numberValue21 = 161.84657287598
numberValue22 = 6405.3413085938
numberValue23 = 31.1448802948
numberValue20 = numberValue20(numberValue21, numberValue22, numberValue23)
numberValue18.position = numberValue20
numberValue20 = vector4
numberValue21 = 164.72967529297
numberValue22 = 6412.1142578125
numberValue23 = 31.150146484375
numberValue24 = 172.91339111328
numberValue20 = numberValue20(numberValue21, numberValue22, numberValue23, numberValue24)
numberValue18.pedPosition = numberValue20
dataTable3[1] = dataTable4
dataTable3[2] = vector3Builder
dataTable3[3] = vector3Builder2
dataTable3[4] = numberValue27
dataTable3[5] = numberValue29
dataTable3[6] = numberValue31
dataTable3[7] = numberValue
dataTable3[8] = numberValue3
dataTable3[9] = numberValue5
dataTable3[10] = numberValue7
dataTable3[11] = numberValue8
dataTable3[12] = numberValue9
dataTable3[13] = numberValue10
dataTable3[14] = numberValue12
dataTable3[15] = numberValue14
dataTable3[16] = numberValue16
dataTable3[17] = numberValue17
dataTable3[18] = numberValue18
cmgCall.mechanics = dataTable3
dataTable3 = {}
dataTable4 = "Looks fixed... must be nice!"
vector3Builder = "Duct tape application complete..."
vector3Builder2 = "Zip tie application complete..."
numberValue27 = "I heard kicking your car fixes it..."
numberValue29 = "Super glue fixed everything..."
dataTable3[1] = dataTable4
dataTable3[2] = vector3Builder
dataTable3[3] = vector3Builder2
dataTable3[4] = numberValue27
dataTable3[5] = numberValue29
cmgCall.fixMessages = dataTable3
cmgCall.fixMessageCount = 5
dataTable3 = {}
dataTable4 = "Dave: Bring the car in!"
dataTable3[1] = dataTable4
cmgCall.noFixMessages = dataTable3
cmgCall.noFixMessageCount = 1
dataTable3 = false
dataTable4 = nil
vector3Builder = nil
vector3Builder2 = nil
numberValue27 = 0.0
numberValue29 = 0.0
numberValue31 = 0.0
numberValue = 1.0
numberValue3 = false
numberValue5 = false
numberValue7 = 1000.0
numberValue8 = 1000.0
numberValue9 = 1000.0
numberValue10 = 0.0
numberValue12 = 0.0
numberValue14 = 1000.0
numberValue16 = 1000.0
numberValue17 = 1000.0
numberValue18 = 0.0
numberValue20 = 0.0
numberValue21 = 1000.0
numberValue22 = 1000.0
numberValue23 = 1000.0
numberValue24 = 0.0
numberValue25 = 0.0
workValue4 = nil
mathHelper = math
mathHelper = mathHelper.randomseed
gameTime = GetGameTimer
gameTime, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, threadCall, workValue24 = gameTime()
mathHelper(gameTime, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, threadCall, workValue24)
mathHelper = dataTable.randomTireBurstInterval
mathHelper = mathHelper * 1200
gameTime = dataTable.randomTireBurstInterval
if 0 ~= gameTime then
  gameTime = math
  gameTime = gameTime.random
  workValue6 = mathHelper
  gameTime = gameTime(workValue6)
  workValue4 = gameTime
end

-- === HELPER FUNCTION: gameTime() ===
function gameTime()
  local arg1, arg2, arg3, arg4
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetVehiclePedIsIn
  arg3 = arg1
  arg4 = false
  -- Beginner: result below is currentVehicle.
  arg2 = arg2(arg3, arg4)
  dataTable4 = arg2
  arg2 = IsPedInAnyVehicle
  arg3 = arg1
  arg4 = false
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = GetPedInVehicleSeat
    arg3 = dataTable4
    arg4 = -1
    arg2 = arg2(arg3, arg4)
    if arg2 == arg1 then
      arg2 = GetVehicleClass
      arg3 = dataTable4
      arg2 = arg2(arg3)
      if 15 ~= arg2 and 16 ~= arg2 and 21 ~= arg2 and 13 ~= arg2 then
        arg3 = true
        return arg3
      end
    end
  end
  arg2 = false
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2, arg3, arg4, arg5, arg6) ===
function workValue6(arg1, arg2, arg3, arg4, arg5, arg6)
  local flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6
  flag9 = 0.0
  numberValue28 = 0.0
  numberValue30 = 0.0
  numberValue32 = 0.0
  numberValue2 = 0.0
  numberValue4 = 0
  if arg6 > 10.0 then
    arg6 = 10.0
  end
  if arg6 < -10.0 then
    arg6 = -10.0
  end
  arg6 = arg6 * -0.1
  numberValue6 = 10.0
  arg6 = numberValue6 ^ arg6
  if arg1 < arg2 then
    arg1 = arg2
  end
  if arg3 < arg1 then
    arg1 = arg3
  end
  flag9 = arg3 - arg2
  if arg4 < arg5 then
    numberValue28 = arg5 - arg4
  else
    numberValue28 = arg4 - arg5
    numberValue4 = 1
  end
  numberValue30 = arg1 - arg2
  numberValue32 = numberValue30 / flag9
  if arg3 < arg2 then
    numberValue6 = 0
    return numberValue6
  end
  if 0 == numberValue4 then
    numberValue6 = numberValue32 ^ arg6
    numberValue6 = numberValue6 * numberValue28
    numberValue2 = numberValue6 + arg4
  else
    numberValue6 = numberValue32 ^ arg6
    numberValue6 = numberValue6 * numberValue28
    numberValue2 = arg4 - numberValue6
  end
  return numberValue2
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, arg4, arg5, arg6, flag9, numberValue28
  arg1 = math
  arg1 = arg1.random
  arg2 = mathHelper
  arg1 = arg1(arg2)
  arg2 = workValue4
  if arg1 == arg2 then
    arg2 = GetVehicleTyresCanBurst
    arg3 = dataTable4
    arg2 = arg2(arg3)
    if false == arg2 then
      return
    end
    arg2 = GetVehicleNumberOfWheels
    arg3 = dataTable4
    arg2 = arg2(arg3)
    arg3 = nil
    if 2 == arg2 then
      arg4 = math
      arg4 = arg4.random
      arg5 = 2
      arg4 = arg4(arg5)
      arg4 = arg4 - 1
      arg3 = arg4 * 4
    elseif 4 == arg2 then
      arg4 = math
      arg4 = arg4.random
      arg5 = 4
      arg4 = arg4(arg5)
      arg3 = arg4 - 1
      if arg3 > 1 then
        arg3 = arg3 + 2
      end
    elseif 6 == arg2 then
      arg4 = math
      arg4 = arg4.random
      arg5 = 6
      arg4 = arg4(arg5)
      arg3 = arg4 - 1
    else
      arg3 = 0
    end
    arg4 = SetVehicleTyreBurst
    arg5 = dataTable4
    arg6 = arg3
    flag9 = false
    numberValue28 = 1000.0
    arg4(arg5, arg6, flag9, numberValue28)
    arg4 = math
    arg4 = arg4.random
    arg5 = mathHelper
    arg4 = arg4(arg5)
    workValue4 = arg4
  end
end
workValue8 = dataTable.torqueMultiplierEnabled
if not workValue8 then
  workValue8 = dataTable.preventVehicleFlip
  if not workValue8 then
    workValue8 = dataTable.limpMode
    if not workValue8 then
      goto flow_label_466
    end
  end
end
workValue8 = Citizen
workValue8 = workValue8.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3, arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6
  while true do
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
    arg1 = dataTable.torqueMultiplierEnabled
    if not arg1 then
      arg1 = dataTable.sundayDriver
      if not arg1 then
        arg1 = dataTable.limpMode
        if not arg1 then
          goto flow_label_218
        end
      end
    end
    arg1 = dataTable2
    if not arg1 then
      arg1 = dataTable3
      if arg1 then
        arg1 = 1.0
        arg2 = dataTable.torqueMultiplierEnabled
        if arg2 then
          arg2 = numberValue9
          arg3 = 900
          if arg2 < arg3 then
            arg2 = numberValue9
            arg2 = arg2 + 200.0
            arg1 = arg2 / 1100
          end
        end
        arg2 = dataTable.sundayDriver
        if arg2 then
          arg2 = GetVehicleClass
          arg3 = dataTable4
          arg2 = arg2(arg3)
          if 14 ~= arg2 then
            arg2 = GetControlValue
            arg3 = 2
            arg4 = 71
            arg2 = arg2(arg3, arg4)
            arg3 = GetControlValue
            arg4 = 2
            arg5 = 72
            arg3 = arg3(arg4, arg5)
            arg4 = GetEntitySpeedVector
            arg5 = dataTable4
            arg6 = true
            arg4 = arg4(arg5, arg6)
            arg4 = arg4.y
            arg5 = numberValue
            if arg4 >= 1.0 then
              if arg2 > 127 then
                arg6 = workValue6
                flag9 = arg2
                numberValue28 = 127.0
                numberValue30 = 254.0
                numberValue32 = 0.1
                numberValue2 = 1.0
                numberValue4 = dataTable.sundayDriverAcceleratorCurve
                numberValue4 = numberValue4 * 2.0
                numberValue6 = 10.0
                numberValue4 = numberValue6 - numberValue4
                arg6 = arg6(flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4)
                arg1 = arg1 * arg6
              end
              if arg3 > 127 then
                arg6 = true
                numberValue3 = arg6
                arg6 = workValue6
                flag9 = arg3
                numberValue28 = 127.0
                numberValue30 = 254.0
                numberValue32 = 0.01
                numberValue2 = numberValue
                numberValue4 = dataTable.sundayDriverBrakeCurve
                numberValue4 = numberValue4 * 2.0
                numberValue6 = 10.0
                numberValue4 = numberValue6 - numberValue4
                arg6 = arg6(flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4)
                arg5 = arg6
              end
            elseif arg4 <= -1.0 then
              if arg3 > 127 then
                arg6 = workValue6
                flag9 = arg3
                numberValue28 = 127.0
                numberValue30 = 254.0
                numberValue32 = 0.1
                numberValue2 = 1.0
                numberValue4 = dataTable.sundayDriverAcceleratorCurve
                numberValue4 = numberValue4 * 2.0
                numberValue6 = 10.0
                numberValue4 = numberValue6 - numberValue4
                arg6 = arg6(flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4)
                arg1 = arg1 * arg6
              end
              if arg2 > 127 then
                arg6 = true
                numberValue5 = arg6
                arg6 = workValue6
                flag9 = arg2
                numberValue28 = 127.0
                numberValue30 = 254.0
                numberValue32 = 0.01
                numberValue2 = numberValue
                numberValue4 = dataTable.sundayDriverBrakeCurve
                numberValue4 = numberValue4 * 2.0
                numberValue6 = 10.0
                numberValue4 = numberValue6 - numberValue4
                arg6 = arg6(flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4)
                arg5 = arg6
              end
            else
              arg6 = GetEntitySpeed
              flag9 = dataTable4
              -- Beginner: result below is speed.
              arg6 = arg6(flag9)
              if arg6 < 1 then
                flag9 = numberValue3
                if true == flag9 then
                  flag9 = DisableControlAction
                  numberValue28 = 2
                  numberValue30 = 72
                  numberValue32 = true
                  flag9(numberValue28, numberValue30, numberValue32)
                  flag9 = SetVehicleForwardSpeed
                  numberValue28 = dataTable4
                  numberValue30 = arg4 * 0.98
                  flag9(numberValue28, numberValue30)
                  flag9 = SetVehicleBrakeLights
                  numberValue28 = dataTable4
                  numberValue30 = true
                  flag9(numberValue28, numberValue30)
                end
                flag9 = numberValue5
                if true == flag9 then
                  flag9 = DisableControlAction
                  numberValue28 = 2
                  numberValue30 = 71
                  numberValue32 = true
                  flag9(numberValue28, numberValue30, numberValue32)
                  flag9 = SetVehicleForwardSpeed
                  numberValue28 = dataTable4
                  numberValue30 = arg4 * 0.98
                  flag9(numberValue28, numberValue30)
                  flag9 = SetVehicleBrakeLights
                  numberValue28 = dataTable4
                  numberValue30 = true
                  flag9(numberValue28, numberValue30)
                end
                flag9 = numberValue3
                if true == flag9 then
                  flag9 = GetDisabledControlNormal
                  numberValue28 = 2
                  numberValue30 = 72
                  flag9 = flag9(numberValue28, numberValue30)
                  if 0 == flag9 then
                    flag9 = false
                    numberValue3 = flag9
                  end
                end
                flag9 = numberValue5
                if true == flag9 then
                  flag9 = GetDisabledControlNormal
                  numberValue28 = 2
                  numberValue30 = 71
                  flag9 = flag9(numberValue28, numberValue30)
                  if 0 == flag9 then
                    flag9 = false
                    numberValue5 = flag9
                  end
                end
              end
            end
            arg6 = numberValue
            arg6 = arg6 - 0.02
            if arg5 > arg6 then
              arg5 = numberValue
            end
            arg6 = SetVehicleHandlingFloat
            flag9 = dataTable4
            numberValue28 = "CHandlingData"
            numberValue30 = "fBrakeForce"
            numberValue32 = arg5
            arg6(flag9, numberValue28, numberValue30, numberValue32)
          end
        end
        arg2 = dataTable.limpMode
        if true == arg2 then
          arg2 = numberValue9
          arg3 = dataTable.engineSafeGuard
          arg3 = arg3 + 5
          if arg2 < arg3 then
            arg1 = dataTable.limpModeMultiplier
          end
        end
        arg2 = SetVehicleCheatPowerIncrease
        arg3 = dataTable4
        arg4 = arg1
        arg2(arg3, arg4)
      end
    end
    ::flow_label_218::
    arg1 = dataTable.preventVehicleFlip
    if arg1 then
      arg1 = dataTable2
      if not arg1 then
        arg1 = GetEntityRoll
        arg2 = dataTable4
        arg1 = arg1(arg2)
        if arg1 > 75.0 or arg1 < -75.0 then
          arg2 = GetEntitySpeed
          arg3 = dataTable4
          -- Beginner: result below is speed.
          arg2 = arg2(arg3)
          if arg2 < 2 then
            arg2 = DisableControlAction
            arg3 = 2
            arg4 = 59
            arg5 = true
            arg2(arg3, arg4, arg5)
            arg2 = DisableControlAction
            arg3 = 2
            arg4 = 60
            arg5 = true
            arg2(arg3, arg4, arg5)
          end
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workValue8(workValue9)
::flow_label_466::
workValue8 = Citizen
workValue8 = workValue8.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3, arg4, arg5, arg6, flag9, numberValue28, numberValue30
  while true do
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 50
    arg1(arg2)
    arg1 = CMG
    arg1 = arg1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = gameTime
    arg2 = arg2()
    if arg2 then
      arg2 = dataTable2
      if not arg2 then
        arg2 = GetVehiclePedIsIn
        arg3 = arg1
        arg4 = false
        -- Beginner: result below is currentVehicle.
        arg2 = arg2(arg3, arg4)
        dataTable4 = arg2
        arg2 = GetVehicleClass
        arg3 = dataTable4
        arg2 = arg2(arg3)
        vector3Builder2 = arg2
        arg2 = GetVehicleEngineHealth
        arg3 = dataTable4
        arg2 = arg2(arg3)
        numberValue8 = arg2
        arg2 = numberValue8
        if 1000 == arg2 then
          arg2 = 1000.0
          numberValue7 = arg2
        end
        arg2 = numberValue8
        numberValue9 = arg2
        arg2 = numberValue7
        arg3 = numberValue8
        arg2 = arg2 - arg3
        numberValue10 = arg2
        arg2 = numberValue10
        arg3 = dataTable.damageFactorEngine
        arg2 = arg2 * arg3
        arg3 = dataTable.classDamageMultiplier
        arg4 = vector3Builder2
        arg3 = arg3[arg4]
        arg2 = arg2 * arg3
        numberValue12 = arg2
        arg2 = GetVehicleBodyHealth
        arg3 = dataTable4
        arg2 = arg2(arg3)
        numberValue16 = arg2
        arg2 = numberValue16
        if 1000 == arg2 then
          arg2 = 1000.0
          numberValue14 = arg2
        end
        arg2 = numberValue16
        numberValue17 = arg2
        arg2 = numberValue14
        arg3 = numberValue16
        arg2 = arg2 - arg3
        numberValue18 = arg2
        arg2 = numberValue18
        arg3 = dataTable.damageFactorBody
        arg2 = arg2 * arg3
        arg3 = dataTable.classDamageMultiplier
        arg4 = vector3Builder2
        arg3 = arg3[arg4]
        arg2 = arg2 * arg3
        numberValue20 = arg2
        arg2 = GetVehiclePetrolTankHealth
        arg3 = dataTable4
        arg2 = arg2(arg3)
        numberValue22 = arg2
        arg2 = dataTable.compatibilityMode
        if arg2 then
          arg2 = numberValue22
          if arg2 < 1 then
            arg2 = numberValue22
            numberValue21 = arg2
          end
        end
        arg2 = numberValue22
        if 1000 == arg2 then
          arg2 = 1000.0
          numberValue21 = arg2
        end
        arg2 = numberValue22
        numberValue23 = arg2
        arg2 = numberValue21
        arg3 = numberValue22
        arg2 = arg2 - arg3
        numberValue24 = arg2
        arg2 = numberValue24
        arg3 = dataTable.damageFactorPetrolTank
        arg2 = arg2 * arg3
        arg3 = dataTable.classDamageMultiplier
        arg4 = vector3Builder2
        arg3 = arg3[arg4]
        arg2 = arg2 * arg3
        numberValue25 = arg2
        arg2 = numberValue8
        arg3 = dataTable.engineSafeGuard
        arg3 = arg3 + 1
        if arg2 > arg3 then
          arg2 = SetVehicleUndriveable
          arg3 = dataTable4
          arg4 = false
          arg2(arg3, arg4)
        end
        arg2 = numberValue8
        arg3 = dataTable.engineSafeGuard
        arg3 = arg3 + 1
        if arg2 <= arg3 then
          arg2 = dataTable.limpMode
          if false == arg2 then
            arg2 = SetVehicleUndriveable
            arg3 = dataTable4
            arg4 = true
            arg2(arg3, arg4)
          end
        end
        arg2 = dataTable4
        arg3 = vector3Builder
        if arg2 ~= arg3 then
          arg2 = false
          dataTable3 = arg2
        end
        arg2 = dataTable3
        if true == arg2 then
          arg2 = numberValue8
          if 1000.0 == arg2 then
            arg2 = numberValue16
            if 1000.0 == arg2 then
              arg2 = numberValue22
            end
          end
          if 1000.0 ~= arg2 then
            arg2 = math
            arg2 = arg2.max
            arg3 = numberValue12
            arg4 = numberValue20
            arg5 = numberValue25
            arg2 = arg2(arg3, arg4, arg5)
            arg3 = numberValue8
            arg4 = dataTable.engineSafeGuard
            arg3 = arg3 - arg4
            if arg2 > arg3 then
              arg2 = arg2 * 0.7
            end
            arg3 = numberValue8
            if arg2 > arg3 then
              arg3 = numberValue8
              arg4 = dataTable.cascadingFailureThreshold
              arg4 = arg4 / 5
              arg2 = arg3 - arg4
            end
            arg3 = numberValue7
            arg3 = arg3 - arg2
            numberValue9 = arg3
            arg3 = numberValue9
            arg4 = dataTable.cascadingFailureThreshold
            arg4 = arg4 + 5
            if arg3 > arg4 then
              arg3 = numberValue9
              arg4 = dataTable.degradingFailureThreshold
              if arg3 < arg4 then
                arg3 = numberValue9
                arg4 = dataTable.degradingHealthSpeedFactor
                arg4 = 0.038 * arg4
                arg3 = arg3 - arg4
                numberValue9 = arg3
              end
            end
            arg3 = numberValue9
            arg4 = dataTable.cascadingFailureThreshold
            if arg3 < arg4 then
              arg3 = numberValue9
              arg4 = dataTable.cascadingFailureSpeedFactor
              arg4 = 0.1 * arg4
              arg3 = arg3 - arg4
              numberValue9 = arg3
            end
            arg3 = numberValue9
            arg4 = dataTable.engineSafeGuard
            if arg3 < arg4 then
              arg3 = dataTable.engineSafeGuard
              numberValue9 = arg3
            end
            arg3 = dataTable.compatibilityMode
            if false == arg3 then
              arg3 = numberValue22
              arg4 = 750
              if arg3 < arg4 then
                arg3 = 750.0
                numberValue23 = arg3
              end
            end
            arg3 = numberValue17
            if arg3 < 0 then
              arg3 = 0.0
              numberValue17 = arg3
            end
          end
        else
          arg2 = CMG
          arg2 = arg2.isVehicleCarDevDamageDisabled
          arg3 = dataTable4
          arg2 = arg2(arg3)
          if not arg2 then
            arg2 = GetVehicleHandlingFloat
            arg3 = dataTable4
            arg4 = "CHandlingData"
            arg5 = "fDeformationDamageMult"
            arg2 = arg2(arg3, arg4, arg5)
            numberValue29 = arg2
            arg2 = GetVehicleHandlingFloat
            arg3 = dataTable4
            arg4 = "CHandlingData"
            arg5 = "fBrakeForce"
            arg2 = arg2(arg3, arg4, arg5)
            numberValue = arg2
            arg2 = numberValue29
            arg3 = dataTable.deformationExponent
            arg2 = arg2 ^ arg3
            arg3 = dataTable.deformationMultiplier
            if -1 ~= arg3 then
              arg3 = SetVehicleHandlingFloat
              arg4 = dataTable4
              arg5 = "CHandlingData"
              arg6 = "fDeformationDamageMult"
              flag9 = dataTable.deformationMultiplier
              flag9 = arg2 * flag9
              arg3(arg4, arg5, arg6, flag9)
            end
            arg3 = dataTable.weaponsDamageMultiplier
            if -1 ~= arg3 then
              arg3 = SetVehicleHandlingFloat
              arg4 = dataTable4
              arg5 = "CHandlingData"
              arg6 = "fWeaponDamageMult"
              flag9 = dataTable.weaponsDamageMultiplier
              numberValue28 = dataTable.damageFactorBody
              flag9 = flag9 / numberValue28
              arg3(arg4, arg5, arg6, flag9)
            end
            arg3 = GetVehicleHandlingFloat
            arg4 = dataTable4
            arg5 = "CHandlingData"
            arg6 = "fCollisionDamageMult"
            arg3 = arg3(arg4, arg5, arg6)
            numberValue27 = arg3
            arg3 = numberValue27
            arg4 = dataTable.collisionDamageExponent
            arg3 = arg3 ^ arg4
            arg4 = SetVehicleHandlingFloat
            arg5 = dataTable4
            arg6 = "CHandlingData"
            flag9 = "fCollisionDamageMult"
            numberValue28 = arg3
            arg4(arg5, arg6, flag9, numberValue28)
            arg4 = GetVehicleHandlingFloat
            arg5 = dataTable4
            arg6 = "CHandlingData"
            flag9 = "fEngineDamageMult"
            arg4 = arg4(arg5, arg6, flag9)
            numberValue31 = arg4
            arg4 = numberValue31
            arg5 = dataTable.engineDamageExponent
            arg4 = arg4 ^ arg5
            arg5 = SetVehicleHandlingFloat
            arg6 = dataTable4
            flag9 = "CHandlingData"
            numberValue28 = "fEngineDamageMult"
            numberValue30 = arg4
            arg5(arg6, flag9, numberValue28, numberValue30)
            arg5 = numberValue16
            arg6 = dataTable.cascadingFailureThreshold
            if arg5 < arg6 then
              arg5 = dataTable.cascadingFailureThreshold
              numberValue17 = arg5
            end
            arg5 = true
            dataTable3 = arg5
          end
        end
        arg2 = numberValue9
        arg3 = numberValue8
        if arg2 ~= arg3 then
          arg2 = SetVehicleEngineHealth
          arg3 = dataTable4
          arg4 = numberValue9
          arg2(arg3, arg4)
        end
        arg2 = numberValue17
        arg3 = numberValue16
        if arg2 ~= arg3 then
          arg2 = SetVehicleBodyHealth
          arg3 = dataTable4
          arg4 = numberValue17
          arg2(arg3, arg4)
        end
        arg2 = numberValue23
        arg3 = numberValue22
        if arg2 ~= arg3 then
          arg2 = SetVehiclePetrolTankHealth
          arg3 = dataTable4
          arg4 = numberValue23
          arg2(arg3, arg4)
        end
        arg2 = numberValue9
        numberValue7 = arg2
        arg2 = numberValue17
        numberValue14 = arg2
        arg2 = numberValue23
        numberValue21 = arg2
        arg2 = dataTable4
        vector3Builder = arg2
        arg2 = dataTable.randomTireBurstInterval
        if 0 ~= arg2 then
          arg2 = GetEntitySpeed
          arg3 = dataTable4
          -- Beginner: result below is speed.
          arg2 = arg2(arg3)
          if arg2 > 10 then
            arg2 = workValue7
            arg2()
          end
        end
    end
    else
      arg2 = dataTable3
      if true == arg2 then
        arg2 = GetVehiclePedIsIn
        arg3 = arg1
        arg4 = true
        -- Beginner: result below is currentVehicle.
        arg2 = arg2(arg3, arg4)
        vector3Builder = arg2
        arg2 = vector3Builder
        if 0 ~= arg2 then
          arg2 = dataTable.deformationMultiplier
          if -1 ~= arg2 then
            arg2 = SetVehicleHandlingFloat
            arg3 = vector3Builder
            arg4 = "CHandlingData"
            arg5 = "fDeformationDamageMult"
            arg6 = numberValue29
            arg2(arg3, arg4, arg5, arg6)
          end
          arg2 = SetVehicleHandlingFloat
          arg3 = vector3Builder
          arg4 = "CHandlingData"
          arg5 = "fBrakeForce"
          arg6 = numberValue
          arg2(arg3, arg4, arg5, arg6)
          arg2 = dataTable.weaponsDamageMultiplier
          if -1 ~= arg2 then
            arg2 = SetVehicleHandlingFloat
            arg3 = vector3Builder
            arg4 = "CHandlingData"
            arg5 = "fWeaponDamageMult"
            arg6 = dataTable.weaponsDamageMultiplier
            arg2(arg3, arg4, arg5, arg6)
          end
          arg2 = SetVehicleHandlingFloat
          arg3 = vector3Builder
          arg4 = "CHandlingData"
          arg5 = "fCollisionDamageMult"
          arg6 = numberValue27
          arg2(arg3, arg4, arg5, arg6)
          arg2 = SetVehicleHandlingFloat
          arg3 = vector3Builder
          arg4 = "CHandlingData"
          arg5 = "fEngineDamageMult"
          arg6 = numberValue31
          arg2(arg3, arg4, arg5, arg6)
        end
      end
      arg2 = false
      dataTable3 = arg2
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workValue8(workValue9)

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = BeginTextCommandDisplayHelp
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentSubstringPlayerName
  arg3 = arg1
  arg2(arg3)
  arg2 = EndTextCommandDisplayHelp
  arg3 = 0
  arg4 = false
  arg5 = false
  arg6 = 0
  arg2(arg3, arg4, arg5, arg6)
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32
  arg2 = GetEntityCoords
  arg3 = arg1
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3)
  arg3 = GetEntityBoneIndexByName
  arg4 = arg1
  arg5 = "bonnet"
  arg3 = arg3(arg4, arg5)
  arg4 = nil
  if -1 ~= arg3 then
    arg5 = GetWorldPositionOfEntityBone
    arg6 = arg1
    flag9 = arg3
    arg5 = arg5(arg6, flag9)
    arg6 = arg5 - arg2
    arg6 = #arg6
    flag9 = 0.75
    if arg6 > flag9 and arg6 < 12.0 then
      arg4 = arg5
    end
  end
  if not arg4 then
    arg5 = GetOffsetFromEntityInWorldCoords
    arg6 = arg1
    flag9 = 0.0
    numberValue28 = 2.4
    numberValue30 = 0.35
    arg5 = arg5(arg6, flag9, numberValue28, numberValue30)
    arg4 = arg5
  end
  arg5 = GetEntityForwardVector
  arg6 = arg1
  arg5 = arg5(arg6)
  arg6 = vector3
  flag9 = arg4.x
  numberValue28 = arg5.x
  numberValue28 = numberValue28 * 1.35
  flag9 = flag9 + numberValue28
  numberValue28 = arg4.y
  numberValue30 = arg5.y
  numberValue30 = numberValue30 * 1.35
  numberValue28 = numberValue28 + numberValue30
  numberValue30 = arg4.z
  numberValue32 = arg5.z
  numberValue32 = numberValue32 * 1.35
  numberValue30 = numberValue30 + numberValue32
  return arg6(flag9, numberValue28, numberValue30)
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2, arg3, arg4) ===
function workValue10(arg1, arg2, arg3, arg4)
  local arg5, arg6, flag9, numberValue28
  arg5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg5 = arg5()
  while true do
    arg6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg6 = arg6()
    arg6 = arg6 - arg5
    if not (arg4 > arg6) then
      break
    end
    arg6 = DoesEntityExist
    flag9 = arg1
    arg6 = arg6(flag9)
    if not arg6 then
      arg6 = false
      return arg6
    end
    arg6 = GetEntityCoords
    flag9 = arg1
    numberValue28 = true
    -- Beginner: result below is entityCoords.
    arg6 = arg6(flag9, numberValue28)
    arg6 = arg6 - arg2
    arg6 = #arg6
    if arg3 >= arg6 then
      arg6 = true
      return arg6
    end
    arg6 = Citizen
    arg6 = arg6.Wait
    flag9 = 0
    arg6(flag9)
  end
  arg6 = GetEntityCoords
  flag9 = arg1
  numberValue28 = true
  -- Beginner: result below is entityCoords.
  arg6 = arg6(flag9, numberValue28)
  arg6 = arg6 - arg2
  arg6 = #arg6
  arg6 = arg3 >= arg6
  return arg6
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1, arg2) ===
function workValue11(arg1, arg2)
  local arg3, arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4
  arg3 = ClearPedTasks
  arg4 = arg1
  arg3(arg4)
  arg3 = SetPedKeepTask
  arg4 = arg1
  arg5 = true
  arg3(arg4, arg5)
  arg3 = TaskFollowNavMeshToCoord
  arg4 = arg1
  arg5 = arg2.x
  arg6 = arg2.y
  flag9 = arg2.z
  numberValue28 = 2.5
  numberValue30 = 35000
  numberValue32 = 1.4
  numberValue2 = false
  numberValue4 = 0.0
  arg3(arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4)
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: arg1, arg2) ===
function workValue12(arg1, arg2)
  local arg3, arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32
  arg3 = ClearPedTasks
  arg4 = arg1
  arg3(arg4)
  arg3 = SetPedKeepTask
  arg4 = arg1
  arg5 = true
  arg3(arg4, arg5)
  arg3 = TaskGoToEntity
  arg4 = arg1
  arg5 = arg2
  arg6 = 22000
  flag9 = 3.0
  numberValue28 = 1.75
  numberValue30 = 0
  numberValue32 = 0
  arg3(arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32)
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg1, arg2) ===
function workValue13(arg1, arg2)
  local arg3, arg4
  arg3 = Citizen
  arg3 = arg3.CreateThread

  -- === HELPER FUNCTION: arg4() ===
  function arg4()
    local workValue, waitCall, workValue5, textValue, numberValue26, flag8
    workValue = arg2
    workValue = workValue / 4
    waitCall = Citizen
    waitCall = waitCall.Wait
    workValue5 = workValue
    waitCall(workValue5)
    waitCall = TaskStartScenarioInPlace
    workValue5 = arg1.ped
    textValue = "WORLD_HUMAN_HAMMERING"
    numberValue26 = 0
    flag8 = true
    waitCall(workValue5, textValue, numberValue26, flag8)
    waitCall = Citizen
    waitCall = waitCall.Wait
    workValue5 = workValue
    waitCall(workValue5)
    waitCall = TaskStartScenarioInPlace
    workValue5 = arg1.ped
    textValue = "WORLD_HUMAN_WELDING"
    numberValue26 = 0
    flag8 = true
    waitCall(workValue5, textValue, numberValue26, flag8)
    waitCall = Citizen
    waitCall = waitCall.Wait
    workValue5 = workValue
    waitCall(workValue5)
    waitCall = TaskStartScenarioInPlace
    workValue5 = arg1.ped
    textValue = "CODE_HUMAN_MEDIC_TIME_OF_DEATH"
    numberValue26 = 0
    flag8 = true
    waitCall(workValue5, textValue, numberValue26, flag8)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg3(arg4)
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3
  arg1 = CMG
  arg2 = "getMechanicRepairStationSpeedPercentClient"
  arg1 = arg1[arg2]
  arg1 = arg1()
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "number" == arg2 and arg1 >= 0 and arg1 <= 50 then
    arg2 = arg1 / 100
    arg3 = 1
    arg2 = arg3 - arg2
    return arg2
  end
  arg2 = 1.0
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = math
  arg2 = arg2.max
  arg3 = 1000
  arg4 = math
  arg4 = arg4.floor
  arg5 = 11000 * arg1
  arg4, arg5 = arg4(arg5)
  return arg2(arg3, arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue16; parameters: arg1, arg2) ===
function workValue16(arg1, arg2)
  local arg3, arg4, arg5, arg6, flag9
  arg3 = math
  arg3 = arg3.random
  arg4 = 1
  arg5 = 3
  arg3 = arg3(arg4, arg5)
  if 1 == arg3 then
    arg4 = math
    arg4 = arg4.max
    arg5 = 4000
    arg6 = math
    arg6 = arg6.floor
    flag9 = 11000 * arg2
    arg6, flag9 = arg6(flag9)
    arg4 = arg4(arg5, arg6, flag9)
    arg5 = workValue13
    arg6 = arg1
    flag9 = arg4
    arg5(arg6, flag9)
    arg5 = notify
    arg6 = "~g~Dave the mechanic is looking at your car."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = workValue15
    flag9 = arg2
    arg6, flag9 = arg6(flag9)
    arg5(arg6, flag9)
    arg5 = notify
    arg6 = "~g~Dave is working on your car."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
  elseif 2 == arg3 then
    arg4 = math
    arg4 = arg4.max
    arg5 = 4000
    arg6 = math
    arg6 = arg6.floor
    flag9 = 55000 * arg2
    arg6, flag9 = arg6(flag9)
    arg4 = arg4(arg5, arg6, flag9)
    arg5 = workValue13
    arg6 = arg1
    flag9 = arg4
    arg5(arg6, flag9)
    arg5 = notify
    arg6 = "~g~Stef the mechanic is looking at your car."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = workValue15
    flag9 = arg2
    arg6, flag9 = arg6(flag9)
    arg5(arg6, flag9)
    arg5 = notify
    arg6 = "~g~Stef looks confused."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = workValue15
    flag9 = arg2
    arg6, flag9 = arg6(flag9)
    arg5(arg6, flag9)
    arg5 = notify
    arg6 = "~g~Stef starts hitting things with a hammer."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = workValue15
    flag9 = arg2
    arg6, flag9 = arg6(flag9)
    arg5(arg6, flag9)
    arg5 = notify
    arg6 = "~g~Stef goes to look for help."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = workValue15
    flag9 = arg2
    arg6, flag9 = arg6(flag9)
    arg5(arg6, flag9)
    arg5 = notify
    arg6 = "~g~Stef's Manager comes back and starts working on your car."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = workValue15
    flag9 = arg2
    arg6, flag9 = arg6(flag9)
    arg5(arg6, flag9)
    arg5 = notify
    arg6 = "~g~The Manager is also hitting things with a hammer."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
  elseif 3 == arg3 then
    arg4 = math
    arg4 = arg4.max
    arg5 = 4000
    arg6 = math
    arg6 = arg6.floor
    flag9 = 33000 * arg2
    arg6, flag9 = arg6(flag9)
    arg4 = arg4(arg5, arg6, flag9)
    arg5 = workValue13
    arg6 = arg1
    flag9 = arg4
    arg5(arg6, flag9)
    arg5 = notify
    arg6 = "~g~Rob the mechanic is looking at your car."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = workValue15
    flag9 = arg2
    arg6, flag9 = arg6(flag9)
    arg5(arg6, flag9)
    arg5 = notify
    arg6 = "~g~Rob yells for Dave to come look at it."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = workValue15
    flag9 = arg2
    arg6, flag9 = arg6(flag9)
    arg5(arg6, flag9)
    arg5 = notify
    arg6 = "~g~Just look at it."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = workValue15
    flag9 = arg2
    arg6, flag9 = arg6(flag9)
    arg5(arg6, flag9)
    arg5 = notify
    arg6 = "~g~Dave is working on your car."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1, arg2) ===
function workValue17(arg1, arg2)
  local arg3, arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6, flag, flag2, flag3
  arg3 = FreezeEntityPosition
  arg4 = arg2
  arg5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, arg5)
  arg3 = SetVehicleEngineOn
  arg4 = arg2
  arg5 = false
  arg6 = true
  flag9 = false
  arg3(arg4, arg5, arg6, flag9)
  arg3 = workValue9
  arg4 = arg2
  arg3 = arg3(arg4)
  arg4 = GetEntityCoords
  arg5 = arg1.ped
  arg6 = true
  -- Beginner: result below is entityCoords.
  arg4 = arg4(arg5, arg6)
  arg5 = workValue11
  arg6 = arg1.ped
  flag9 = arg3
  arg5(arg6, flag9)
  arg5 = workValue10
  arg6 = arg1.ped
  flag9 = arg3
  numberValue28 = 1.65
  numberValue30 = 36000
  arg5 = arg5(arg6, flag9, numberValue28, numberValue30)
  if not arg5 then
    arg5 = workValue12
    arg6 = arg1.ped
    flag9 = arg2
    arg5(arg6, flag9)
    arg5 = workValue10
    arg6 = arg1.ped
    flag9 = arg3
    numberValue28 = 2.75
    numberValue30 = 22000
    arg5(arg6, flag9, numberValue28, numberValue30)
  end
  arg5 = SetPedKeepTask
  arg6 = arg1.ped
  flag9 = false
  arg5(arg6, flag9)
  arg5 = ClearPedTasks
  arg6 = arg1.ped
  arg5(arg6)
  arg5 = TaskLookAtEntity
  arg6 = arg1.ped
  flag9 = arg2
  numberValue28 = -1
  numberValue30 = 2048
  numberValue32 = 3
  arg5(arg6, flag9, numberValue28, numberValue30, numberValue32)
  arg5 = Citizen
  arg5 = arg5.Wait
  arg6 = 2500
  arg5(arg6)
  arg5 = CMG
  arg5 = arg5.loadAnimDict
  arg6 = "missexile3"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg5(arg6)
  arg5 = TaskPlayAnim
  arg6 = arg1.ped
  flag9 = "missexile3"
  numberValue28 = "ex03_dingy_search_case_base_michael"
  numberValue30 = 1.0
  numberValue32 = 8.0
  numberValue2 = -1
  numberValue4 = 1
  numberValue6 = 1.0
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  arg5(arg6, flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6, flag, flag2, flag3)
  arg5 = RemoveAnimDict
  arg6 = "missexile3"
  arg5(arg6)
  arg5 = Citizen
  arg5 = arg5.Wait
  arg6 = 1000
  arg5(arg6)
  arg5 = SetVehicleDoorOpen
  arg6 = arg2
  flag9 = 4
  numberValue28 = false
  numberValue30 = false
  arg5(arg6, flag9, numberValue28, numberValue30)
  arg5 = workValue16
  arg6 = arg1
  flag9 = workValue14
  flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6, flag, flag2, flag3 = flag9()
  arg5(arg6, flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6, flag, flag2, flag3)
  arg5 = ClearPedTasksImmediately
  arg6 = arg1.ped
  arg5(arg6)
  arg5 = SetVehicleDoorShut
  arg6 = arg2
  flag9 = 4
  numberValue28 = false
  arg5(arg6, flag9, numberValue28)
  arg5 = Citizen
  arg5 = arg5.Wait
  arg6 = 1000
  arg5(arg6)
  arg5 = SetVehicleEngineHealth
  arg6 = arg2
  flag9 = 9999
  arg5(arg6, flag9)
  arg5 = SetVehiclePetrolTankHealth
  arg6 = arg2
  flag9 = 9999
  arg5(arg6, flag9)
  arg5 = CMG
  arg5 = arg5.setVehicleFixedPreservingFuel
  arg6 = arg2
  arg5(arg6)
  arg5 = workValue11
  arg6 = arg1.ped
  flag9 = arg4
  arg5(arg6, flag9)
  arg5 = workValue10
  arg6 = arg1.ped
  flag9 = arg4
  numberValue28 = 1.35
  numberValue30 = 36000
  arg5(arg6, flag9, numberValue28, numberValue30)
  arg5 = SetPedKeepTask
  arg6 = arg1.ped
  flag9 = false
  arg5(arg6, flag9)
  arg5 = ClearPedTasks
  arg6 = arg1.ped
  arg5(arg6)
  arg5 = TaskLookAtEntity
  arg6 = arg1.ped
  flag9 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  flag9 = flag9()
  numberValue28 = -1
  numberValue30 = 2048
  numberValue32 = 3
  arg5(arg6, flag9, numberValue28, numberValue30, numberValue32)
  arg1.inUse = false
  arg5 = SetVehicleEngineOn
  arg6 = arg2
  flag9 = true
  numberValue28 = false
  numberValue30 = false
  arg5(arg6, flag9, numberValue28, numberValue30)
  arg5 = FreezeEntityPosition
  arg6 = arg2
  flag9 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg5(arg6, flag9)
  arg5 = TriggerServerEvent
  arg6 = "cadd5c84c8"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cadd5c84c8".
  arg5(arg6)
end

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1) ===
function workValue18(arg1)
  local arg2, arg3, arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = 1142162924
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg2(arg3)
  arg2 = CreatePed
  arg3 = 0
  arg4 = 1142162924
  arg5 = arg1.pedPosition
  arg5 = arg5.x
  arg6 = arg1.pedPosition
  arg6 = arg6.y
  flag9 = arg1.pedPosition
  flag9 = flag9.z
  numberValue28 = 0.0
  numberValue30 = false
  numberValue32 = false
  -- Beginner: result below is pedEntity.
  arg2 = arg2(arg3, arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32)
  arg1.ped = arg2
  arg2 = SetModelAsNoLongerNeeded
  arg3 = 1142162924
  arg2(arg3)
  arg2 = SetEntityCanBeDamaged
  arg3 = arg1.ped
  arg4 = false
  arg2(arg3, arg4)
  arg2 = SetEntityCanBeDamagedByRelationshipGroup
  arg3 = arg1.ped
  arg4 = false
  arg5 = 1862763509
  arg2(arg3, arg4, arg5)
  arg2 = SetEntityInvincible
  arg3 = arg1.ped
  arg4 = true
  arg2(arg3, arg4)
  arg2 = SetPedCanRagdoll
  arg3 = arg1.ped
  arg4 = false
  arg2(arg3, arg4)
  arg2 = SetPedCanRagdollFromPlayerImpact
  arg3 = arg1.ped
  arg4 = false
  arg2(arg3, arg4)
  arg2 = SetBlockingOfNonTemporaryEvents
  arg3 = arg1.ped
  arg4 = true
  arg2(arg3, arg4)
  arg2 = SetEntityInvincible
  arg3 = arg1.ped
  arg4 = true
  arg2(arg3, arg4)
end

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: arg1) ===
function workValue19(arg1)
  local arg2, arg3
  arg2 = DeleteEntity
  arg3 = arg1.ped
  -- Beginner: Delete a GTA entity.
  arg2(arg3)
  arg1.ped = nil
end

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg1) ===
function workValue20(arg1)
  local arg2, arg3, arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6, flag, flag2, flag3, numberValue11, numberValue13, numberValue15, flag4, flag5, numberValue19, flag6, workValue2, workValue3, flag7
  arg2 = arg1.inUse
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.isInsideLsCustoms
    arg2 = arg2()
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      arg2 = arg2()
      if 0 ~= arg2 then
        arg2 = DrawMarker
        arg3 = 1
        arg4 = arg1.position
        arg4 = arg4.x
        arg5 = arg1.position
        arg5 = arg5.y
        arg6 = arg1.position
        arg6 = arg6.z
        arg6 = arg6 - 2.0
        flag9 = 0.0
        numberValue28 = 0.0
        numberValue30 = 0.0
        numberValue32 = 0.0
        numberValue2 = 0.0
        numberValue4 = 0.0
        numberValue6 = arg1.radius
        flag = arg1.radius
        flag2 = 2.0
        flag3 = 62
        numberValue11 = 255
        numberValue13 = 143
        numberValue15 = 140
        flag4 = false
        flag5 = false
        numberValue19 = 2
        flag6 = false
        workValue2 = nil
        workValue3 = nil
        flag7 = false
        arg2(arg3, arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6, flag, flag2, flag3, numberValue11, numberValue13, numberValue15, flag4, flag5, numberValue19, flag6, workValue2, workValue3, flag7)
        arg2 = DrawMarker
        arg3 = 36
        arg4 = arg1.position
        arg4 = arg4.x
        arg5 = arg1.position
        arg5 = arg5.y
        arg6 = arg1.position
        arg6 = arg6.z
        arg6 = arg6 + 1.0
        flag9 = 0.0
        numberValue28 = 0.0
        numberValue30 = 0.0
        numberValue32 = 0.0
        numberValue2 = 0.0
        numberValue4 = 0.0
        numberValue6 = arg1.radius
        numberValue6 = numberValue6 / 2.0
        flag = arg1.radius
        flag = flag / 2.0
        flag2 = arg1.radius
        flag2 = flag2 / 2.0
        flag3 = 62
        numberValue11 = 255
        numberValue13 = 143
        numberValue15 = 140
        flag4 = false
        flag5 = false
        numberValue19 = 2
        flag6 = false
        workValue2 = nil
        workValue3 = nil
        flag7 = false
        arg2(arg3, arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6, flag, flag2, flag3, numberValue11, numberValue13, numberValue15, flag4, flag5, numberValue19, flag6, workValue2, workValue3, flag7)
      end
      arg2 = arg1.ped
      if arg2 then
        arg2 = GetScriptTaskStatus
        arg3 = arg1.ped
        arg4 = -875674219
        arg2 = arg2(arg3, arg4)
        if 7 == arg2 then
          arg2 = TaskTurnPedToFaceEntity
          arg3 = arg1.ped
          arg4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg4 = arg4()
          arg5 = -1
          arg2(arg3, arg4, arg5)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg1) ===
function workValue21(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = PlayPedAmbientSpeechNative
  arg3 = arg1.ped
  arg4 = "GENERIC_HI_MALE"
  arg5 = "SPEECH_PARAMS_FORCE"
  arg2(arg3, arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue22; parameters: arg1) ===
function workValue22(arg1)
  local arg2
  arg1.inUse = nil
end

-- === HELPER FUNCTION (decompiler name: workValue23; parameters: arg1) ===
function workValue23(arg1)
  local arg2, arg3, arg4, arg5, arg6, flag9, numberValue28
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  arg2, arg3 = arg2()
  if 0 ~= arg2 and arg3 then
    arg4 = CMG
    arg4 = arg4.isInsideLsCustoms
    arg4 = arg4()
    if not arg4 then
      goto flow_label_14
    end
  end
  return
  ::flow_label_14::
  arg4 = arg1.inUse
  if arg4 then
    arg4 = FreezeEntityPosition
    arg5 = arg2
    arg6 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg4(arg5, arg6)
    arg4 = SetVehicleEngineOn
    arg5 = arg2
    arg6 = false
    flag9 = true
    numberValue28 = true
    arg4(arg5, arg6, flag9, numberValue28)
  else
    arg4 = workValue8
    arg5 = "Press ~INPUT_PICKUP~ to have your vehicle repaired."
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg4(arg5)
    arg4 = IsControlJustPressed
    arg5 = 0
    arg6 = 38
    arg4 = arg4(arg5, arg6)
    if arg4 then
      arg4 = GetEntitySpeed
      arg5 = arg2
      -- Beginner: result below is speed.
      arg4 = arg4(arg5)
      if arg4 > 0.0 then
        arg4 = notify
        arg5 = "~r~You must be stationary to repair your vehicle."
        -- Beginner: Show a notification to the player.
        arg4(arg5)
      else
        arg1.inUse = true
        arg4 = Citizen
        arg4 = arg4.CreateThreadNow

        -- === HELPER FUNCTION: arg5() ===
        function arg5()
          local workValue, waitCall, workValue5
          workValue = workValue17
          waitCall = arg1
          workValue5 = arg2
          workValue(waitCall, workValue5)
        end
        arg4(arg5)
      end
    end
  end
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue24; parameters: none) ===
function workValue24()
  local arg1, arg2, arg3, arg4, arg5, arg6, flag9, numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6, flag, flag2
  arg1 = pairs
  arg2 = cmgCall.mechanics
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    flag9 = tCMG
    flag9 = flag9.addBlip
    numberValue28 = arg6.position
    numberValue28 = numberValue28.x
    numberValue30 = arg6.position
    numberValue30 = numberValue30.y
    numberValue32 = arg6.position
    numberValue32 = numberValue32.z
    numberValue2 = arg6.blip
    numberValue4 = 4
    numberValue6 = arg6.name
    flag = 1.0
    -- Beginner: Create a minimap blip.
    flag9(numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6, flag)
    flag9 = CMG
    flag9 = flag9.createArea
    numberValue28 = "mechanic_ped_"
    numberValue30 = arg5
    numberValue28 = numberValue28 .. numberValue30
    numberValue30 = arg6.position
    numberValue32 = 25.0
    numberValue2 = 25.0
    numberValue4 = workValue18
    numberValue6 = workValue19
    flag = workValue20
    flag2 = arg6
    -- Beginner: Create an interaction area around a world position.
    flag9(numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6, flag, flag2)
    flag9 = CMG
    flag9 = flag9.createArea
    numberValue28 = "mechanic_vehicle_"
    numberValue30 = arg5
    numberValue28 = numberValue28 .. numberValue30
    numberValue30 = arg6.position
    numberValue32 = arg6.radius
    numberValue2 = 5.0
    numberValue4 = workValue21
    numberValue6 = workValue22
    flag = workValue23
    flag2 = arg6
    flag9(numberValue28, numberValue30, numberValue32, numberValue2, numberValue4, numberValue6, flag, flag2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(workValue24)
