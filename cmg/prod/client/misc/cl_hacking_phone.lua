--[[
    LEVEL 1 BEGINNER GUIDE — Hacking Phone
    ===========================================

    File: cmg/prod/client/misc/cl_hacking_phone.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Hacking Phone feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 8
      * Background threads: 0
      * Always-running loops: 1
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
local dataTable, dataTable12, dataTable23, dataTable31, eventRegistration, dataTable32, dataTable33, dataTable34, dataTable35, dataTable36, dataTable2, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, dataTable8, dataTable9, dataTable10, dataTable11, dataTable13, dataTable14, dataTable15, dataTable16, dataTable17, dataTable18, dataTable19, dataTable20, dataTable21, dataTable22, dataTable24, dataTable25, dataTable26, dataTable27, dataTable28, dataTable29, dataTable30
dataTable = {}
dataTable12 = {}
dataTable23 = {}
dataTable23.label = "Street cam 1"
dataTable31 = {}
dataTable31.x = 234.53869628906
dataTable31.y = -394.37854003906
dataTable31.z = 51.980960845947
dataTable23.pos = dataTable31
dataTable31 = {}
dataTable31.x = -25.0
dataTable31.y = 0.0
dataTable31.z = 0.0
dataTable23.rot = dataTable31
dataTable31 = {}
dataTable31.label = "Street cam 2"
eventRegistration = {}
eventRegistration.x = -130.69403076172
eventRegistration.y = -237.51498413086
eventRegistration.z = 46.375648498535
dataTable31.pos = eventRegistration
eventRegistration = {}
eventRegistration.x = -25.0
eventRegistration.y = 0.0
eventRegistration.z = 0.0
dataTable31.rot = eventRegistration
eventRegistration = {}
eventRegistration.label = "Street cam 3"
dataTable32 = {}
dataTable32.x = 228.79537963867
dataTable32.y = 217.26516723633
dataTable32.z = 111.65953826904
eventRegistration.pos = dataTable32
dataTable32 = {}
dataTable32.x = -25.0
dataTable32.y = 0.0
dataTable32.z = 0.0
eventRegistration.rot = dataTable32
dataTable32 = {}
dataTable32.label = "Street cam 4"
dataTable33 = {}
dataTable33.x = 276.10882568359
dataTable33.y = 147.8564453125
dataTable33.z = 108.54515075684
dataTable32.pos = dataTable33
dataTable33 = {}
dataTable33.x = -25.0
dataTable33.y = 0.0
dataTable33.z = 0.0
dataTable32.rot = dataTable33
dataTable33 = {}
dataTable33.label = "Street cam 5"
dataTable34 = {}
dataTable34.x = -697.13793945312
dataTable34.y = 271.83880615234
dataTable34.z = 92.289413452148
dataTable33.pos = dataTable34
dataTable34 = {}
dataTable34.x = -25.0
dataTable34.y = 0.0
dataTable34.z = 0.0
dataTable33.rot = dataTable34
dataTable34 = {}
dataTable34.label = "Street cam 6"
dataTable35 = {}
dataTable35.x = -717.26025390625
dataTable35.y = -157.43000793457
dataTable35.z = 41.1064453125
dataTable34.pos = dataTable35
dataTable35 = {}
dataTable35.x = -25.0
dataTable35.y = 0.0
dataTable35.z = 0.0
dataTable34.rot = dataTable35
dataTable35 = {}
dataTable35.label = "Street cam 7"
dataTable36 = {}
dataTable36.x = -638.20953369141
dataTable36.y = -249.96182250977
dataTable36.z = 42.848964691162
dataTable35.pos = dataTable36
dataTable36 = {}
dataTable36.x = -25.0
dataTable36.y = 0.0
dataTable36.z = 0.0
dataTable35.rot = dataTable36
dataTable36 = {}
dataTable36.label = "Street cam 8"
dataTable2 = {}
dataTable2.x = -2974.3278808594
dataTable2.y = 395.2333984375
dataTable2.z = 16.954597473145
dataTable36.pos = dataTable2
dataTable2 = {}
dataTable2.x = -25.0
dataTable2.y = 0.0
dataTable2.z = 0.0
dataTable36.rot = dataTable2
dataTable2 = {}
dataTable2.label = "Street cam 9"
dataTable3 = {}
dataTable3.x = -2966.9111328125
dataTable3.y = 485.03805541992
dataTable3.z = 17.149766921997
dataTable2.pos = dataTable3
dataTable3 = {}
dataTable3.x = -25.0
dataTable3.y = 0.0
dataTable3.z = 0.0
dataTable2.rot = dataTable3
dataTable3 = {}
dataTable3.label = "Street cam 10"
dataTable4 = {}
dataTable4.x = -2467.7106933594
dataTable4.y = -218.71464538574
dataTable4.z = 23.948993682861
dataTable3.pos = dataTable4
dataTable4 = {}
dataTable4.x = -25.0
dataTable4.y = 0.0
dataTable4.z = 0.0
dataTable3.rot = dataTable4
dataTable4 = {}
dataTable4.label = "Street cam 11"
dataTable5 = {}
dataTable5.x = -202.26121520996
dataTable5.y = -864.77221679688
dataTable5.z = 34.702033996582
dataTable4.pos = dataTable5
dataTable5 = {}
dataTable5.x = -25.0
dataTable5.y = 0.0
dataTable5.z = 0.0
dataTable4.rot = dataTable5
dataTable5 = {}
dataTable5.label = "Street cam 12"
dataTable6 = {}
dataTable6.x = 387.98492431641
dataTable6.y = -974.71929931641
dataTable6.z = 32.410995483398
dataTable5.pos = dataTable6
dataTable6 = {}
dataTable6.x = -25.0
dataTable6.y = 0.0
dataTable6.z = 0.0
dataTable5.rot = dataTable6
dataTable6 = {}
dataTable6.label = "Street cam 13"
dataTable7 = {}
dataTable7.x = 423.26708984375
dataTable7.y = -997.22393798828
dataTable7.z = 33.90548324585
dataTable6.pos = dataTable7
dataTable7 = {}
dataTable7.x = -25.0
dataTable7.y = 0.0
dataTable7.z = 0.0
dataTable6.rot = dataTable7
dataTable7 = {}
dataTable7.label = "Street cam 14"
dataTable8 = {}
dataTable8.x = 438.83123779297
dataTable8.y = -1000.6759033203
dataTable8.z = 32.538806915283
dataTable7.pos = dataTable8
dataTable8 = {}
dataTable8.x = -25.0
dataTable8.y = 0.0
dataTable8.z = 0.0
dataTable7.rot = dataTable8
dataTable8 = {}
dataTable8.label = "Street cam 15"
dataTable9 = {}
dataTable9.x = 467.33630371094
dataTable9.y = -1015.2039794922
dataTable9.z = 30.915859222412
dataTable8.pos = dataTable9
dataTable9 = {}
dataTable9.x = -25.0
dataTable9.y = 0.0
dataTable9.z = 0.0
dataTable8.rot = dataTable9
dataTable9 = {}
dataTable9.label = "Street cam 16"
dataTable10 = {}
dataTable10.x = 490.38217163086
dataTable10.y = -1024.0905761719
dataTable10.z = 31.309572219849
dataTable9.pos = dataTable10
dataTable10 = {}
dataTable10.x = -25.0
dataTable10.y = 0.0
dataTable10.z = 0.0
dataTable9.rot = dataTable10
dataTable10 = {}
dataTable10.label = "Street cam 17"
dataTable11 = {}
dataTable11.x = 489.91595458984
dataTable11.y = -1003.3515625
dataTable11.z = 29.712303161621
dataTable10.pos = dataTable11
dataTable11 = {}
dataTable11.x = -25.0
dataTable11.y = 0.0
dataTable11.z = 0.0
dataTable10.rot = dataTable11
dataTable11 = {}
dataTable11.label = "Street cam 18"
dataTable13 = {}
dataTable13.x = 481.11560058594
dataTable13.y = -977.43322753906
dataTable13.z = 29.869251251221
dataTable11.pos = dataTable13
dataTable13 = {}
dataTable13.x = -25.0
dataTable13.y = 0.0
dataTable13.z = 0.0
dataTable11.rot = dataTable13
dataTable13 = {}
dataTable13.label = "Street cam 19"
dataTable14 = {}
dataTable14.x = 432.4736328125
dataTable14.y = -656.77960205078
dataTable14.z = 30.912614822388
dataTable13.pos = dataTable14
dataTable14 = {}
dataTable14.x = -25.0
dataTable14.y = 0.0
dataTable14.z = 0.0
dataTable13.rot = dataTable14
dataTable14 = {}
dataTable14.label = "Street cam 20"
dataTable15 = {}
dataTable15.x = 353.97552490234
dataTable15.y = -600.77154541016
dataTable15.z = 32.244640350342
dataTable14.pos = dataTable15
dataTable15 = {}
dataTable15.x = -25.0
dataTable15.y = 0.0
dataTable15.z = 0.0
dataTable14.rot = dataTable15
dataTable15 = {}
dataTable15.label = "Street cam 21"
dataTable16 = {}
dataTable16.x = -128.30404663086
dataTable16.y = -1023.4191894531
dataTable16.z = 35.994411468506
dataTable15.pos = dataTable16
dataTable16 = {}
dataTable16.x = -25.0
dataTable16.y = 0.0
dataTable16.z = 0.0
dataTable15.rot = dataTable16
dataTable16 = {}
dataTable16.label = "Street cam 22"
dataTable17 = {}
dataTable17.x = -62.237995147705
dataTable17.y = -1101.1270751953
dataTable17.z = 32.561504364014
dataTable16.pos = dataTable17
dataTable17 = {}
dataTable17.x = -25.0
dataTable17.y = 0.0
dataTable17.z = 0.0
dataTable16.rot = dataTable17
dataTable17 = {}
dataTable17.label = "Street cam 23"
dataTable18 = {}
dataTable18.x = 24.420116424561
dataTable18.y = -1350.7467041016
dataTable18.z = 32.561325073242
dataTable17.pos = dataTable18
dataTable18 = {}
dataTable18.x = -25.0
dataTable18.y = 0.0
dataTable18.z = 0.0
dataTable17.rot = dataTable18
dataTable18 = {}
dataTable18.label = "Street cam 24"
dataTable19 = {}
dataTable19.x = 102.72190856934
dataTable19.y = -1318.4841308594
dataTable19.z = 33.93473815918
dataTable18.pos = dataTable19
dataTable19 = {}
dataTable19.x = -25.0
dataTable19.y = 0.0
dataTable19.z = 0.0
dataTable18.rot = dataTable19
dataTable19 = {}
dataTable19.label = "Street cam 25"
dataTable20 = {}
dataTable20.x = 68.04532623291
dataTable20.y = -1720.1014404297
dataTable20.z = 34.036998748779
dataTable19.pos = dataTable20
dataTable20 = {}
dataTable20.x = -25.0
dataTable20.y = 0.0
dataTable20.z = 0.0
dataTable19.rot = dataTable20
dataTable20 = {}
dataTable20.label = "Street cam 26"
dataTable21 = {}
dataTable21.x = -59.932559967041
dataTable21.y = -1752.037109375
dataTable21.z = 31.550285339355
dataTable20.pos = dataTable21
dataTable21 = {}
dataTable21.x = -25.0
dataTable21.y = 0.0
dataTable21.z = 0.0
dataTable20.rot = dataTable21
dataTable21 = {}
dataTable21.label = "Street cam 27"
dataTable22 = {}
dataTable22.x = 1301.2156982422
dataTable22.y = 4317.45703125
dataTable22.z = 41.211765289307
dataTable21.pos = dataTable22
dataTable22 = {}
dataTable22.x = -25.0
dataTable22.y = 0.0
dataTable22.z = 0.0
dataTable21.rot = dataTable22
dataTable22 = {}
dataTable22.label = "Street cam 28"
dataTable24 = {}
dataTable24.x = 3550.9475097656
dataTable24.y = 3651.6000976562
dataTable24.z = 46.954288482666
dataTable22.pos = dataTable24
dataTable24 = {}
dataTable24.x = -25.0
dataTable24.y = 0.0
dataTable24.z = 0.0
dataTable22.rot = dataTable24
dataTable24 = {}
dataTable24.label = "Street cam 29"
dataTable25 = {}
dataTable25.x = 1727.2385253906
dataTable25.y = 6412.2392578125
dataTable25.z = 36.611518859863
dataTable24.pos = dataTable25
dataTable25 = {}
dataTable25.x = -25.0
dataTable25.y = 0.0
dataTable25.z = 0.0
dataTable24.rot = dataTable25
dataTable25 = {}
dataTable25.label = "Street cam 30"
dataTable26 = {}
dataTable26.x = 130.58874511719
dataTable26.y = 6525.1376953125
dataTable26.z = 35.731548309326
dataTable25.pos = dataTable26
dataTable26 = {}
dataTable26.x = -25.0
dataTable26.y = 0.0
dataTable26.z = 0.0
dataTable25.rot = dataTable26
dataTable26 = {}
dataTable26.label = "Street cam 31"
dataTable27 = {}
dataTable27.x = -434.53747558594
dataTable27.y = 6011.1416015625
dataTable27.z = 34.472328186035
dataTable26.pos = dataTable27
dataTable27 = {}
dataTable27.x = -25.0
dataTable27.y = 0.0
dataTable27.z = 0.0
dataTable26.rot = dataTable27
dataTable27 = {}
dataTable27.label = "Street cam 32"
dataTable28 = {}
dataTable28.x = -1099.2557373047
dataTable28.y = 4911.3217773438
dataTable28.z = 218.9635925293
dataTable27.pos = dataTable28
dataTable28 = {}
dataTable28.x = -25.0
dataTable28.y = 0.0
dataTable28.z = 0.0
dataTable27.rot = dataTable28
dataTable28 = {}
dataTable28.label = "Street cam 33"
dataTable29 = {}
dataTable29.x = 1487.5465087891
dataTable29.y = 6354.9409179688
dataTable29.z = 27.180263519287
dataTable28.pos = dataTable29
dataTable29 = {}
dataTable29.x = -25.0
dataTable29.y = 0.0
dataTable29.z = 0.0
dataTable28.rot = dataTable29
dataTable29 = {}
dataTable29.label = "Street cam 34"
dataTable30 = {}
dataTable30.x = 232.71536254883
dataTable30.y = -591.38494873047
dataTable30.z = 47.335529327393
dataTable29.pos = dataTable30
dataTable30 = {}
dataTable30.x = -25.0
dataTable30.y = 0.0
dataTable30.z = 0.0
dataTable29.rot = dataTable30
dataTable12[1] = dataTable23
dataTable12[2] = dataTable31
dataTable12[3] = eventRegistration
dataTable12[4] = dataTable32
dataTable12[5] = dataTable33
dataTable12[6] = dataTable34
dataTable12[7] = dataTable35
dataTable12[8] = dataTable36
dataTable12[9] = dataTable2
dataTable12[10] = dataTable3
dataTable12[11] = dataTable4
dataTable12[12] = dataTable5
dataTable12[13] = dataTable6
dataTable12[14] = dataTable7
dataTable12[15] = dataTable8
dataTable12[16] = dataTable9
dataTable12[17] = dataTable10
dataTable12[18] = dataTable11
dataTable12[19] = dataTable13
dataTable12[20] = dataTable14
dataTable12[21] = dataTable15
dataTable12[22] = dataTable16
dataTable12[23] = dataTable17
dataTable12[24] = dataTable18
dataTable12[25] = dataTable19
dataTable12[26] = dataTable20
dataTable12[27] = dataTable21
dataTable12[28] = dataTable22
dataTable12[29] = dataTable24
dataTable12[30] = dataTable25
dataTable12[31] = dataTable26
dataTable12[32] = dataTable27
dataTable12[33] = dataTable28
dataTable12[34] = dataTable29

-- === HELPER FUNCTION (decompiler name: dataTable23; parameters: none) ===
function dataTable23()
  local arg1, workValue9, workValue12, workValue14, workValue16, workValue19, workValue20, workValue21
  arg1 = ipairs
  workValue9 = dataTable
  arg1, workValue9, workValue12, workValue14 = arg1(workValue9)
  for workValue16, workValue19 in arg1, workValue9, workValue12, workValue14 do
    workValue20 = DoesBlipExist
    workValue21 = workValue19
    workValue20 = workValue20(workValue21)
    if workValue20 then
      workValue20 = RemoveBlip
      workValue21 = workValue19
      workValue20(workValue21)
    end
  end
  arg1 = {}
  dataTable = arg1
end

-- === HELPER FUNCTION (decompiler name: dataTable31; parameters: arg1) ===
function dataTable31(arg1)
  local workValue9, workValue12, workValue14, workValue16, workValue19, workValue20, workValue21, workValue23, workValue24, workValue, workValue2
  if arg1 then
    workValue9 = type
    workValue12 = arg1
    workValue9 = workValue9(workValue12)
    if "table" == workValue9 then
      goto flow_label_10
    end
  end
  workValue9 = nil
  return workValue9
  ::flow_label_10::
  workValue9 = type
  workValue12 = arg1[1]
  workValue9 = workValue9(workValue12)
  if "number" == workValue9 then
    workValue9 = arg1[2]
    if workValue9 then
      workValue9 = arg1[2]
      workValue12 = tonumber
      workValue14 = workValue9.x
      if not workValue14 then
        workValue14 = workValue9[1]
      end
      workValue12 = workValue12(workValue14)
      workValue14 = tonumber
      workValue16 = workValue9.y
      if not workValue16 then
        workValue16 = workValue9[2]
      end
      workValue14 = workValue14(workValue16)
      workValue16 = tonumber
      workValue19 = workValue9.z
      if not workValue19 then
        workValue19 = workValue9[3]
      end
      workValue16 = workValue16(workValue19)
      if not workValue16 then
        workValue16 = 0.0
      end
      if not workValue12 or not workValue14 then
        workValue19 = nil
        return workValue19
      end
      workValue19 = workValue12
      workValue20 = workValue14
      workValue21 = workValue16
      workValue23 = arg1[3]
      workValue24 = arg1[4]
      workValue = arg1[5]
      workValue2 = arg1[6]
      return workValue19, workValue20, workValue21, workValue23, workValue24, workValue, workValue2
    end
  end
  workValue9 = arg1.x
  if workValue9 then
    workValue9 = tonumber
    workValue12 = arg1.x
    workValue9 = workValue9(workValue12)
    workValue12 = tonumber
    workValue14 = arg1.y
    workValue12 = workValue12(workValue14)
    workValue14 = tonumber
    workValue16 = arg1.z
    workValue14 = workValue14(workValue16)
    if not workValue14 then
      workValue14 = 0.0
    end
    workValue16 = arg1.heading
    workValue19 = arg1.dead
    workValue20 = arg1.colour
    workValue21 = arg1.bucket
    return workValue9, workValue12, workValue14, workValue16, workValue19, workValue20, workValue21
  end
  workValue9 = nil
  return workValue9
end
eventRegistration = RegisterNetEvent
dataTable32 = "f65acb9738"
-- Beginner: this function handles network event "f65acb9738".

-- === HELPER FUNCTION (decompiler name: dataTable33; parameters: arg1) ===
function dataTable33(arg1)
  local workValue9, workValue12, workValue14, workValue16, workValue19, workValue20, workValue21, workValue23, workValue24, workValue, workValue2, workValue3, workValue4, workValue5, workValue6, numberValue, workValue7, workValue8, numberValue2, numberValue3
  workValue9 = type
  workValue12 = arg1
  workValue9 = workValue9(workValue12)
  if "table" ~= workValue9 then
    return
  end
  workValue9 = CMG
  workValue9 = workValue9.getPlayerBucket
  workValue9 = workValue9()
  workValue12 = dataTable23
  workValue12()
  workValue12 = ipairs
  workValue14 = arg1
  workValue12, workValue14, workValue16, workValue19 = workValue12(workValue14)
  for workValue20, workValue21 in workValue12, workValue14, workValue16, workValue19 do
    workValue23 = dataTable31
    workValue24 = workValue21
    workValue23, workValue24, workValue, workValue2, workValue3, workValue4, workValue5 = workValue23(workValue24)
    if workValue23 and workValue5 == workValue9 then
      workValue6 = AddBlipForCoord
      numberValue = workValue23 + 0.0
      workValue7 = workValue24 + 0.0
      workValue8 = workValue + 0.0
      -- Beginner: result below is blipHandle.
      workValue6 = workValue6(numberValue, workValue7, workValue8)
      numberValue = workValue4 or numberValue
      if not workValue4 then
        numberValue = 3
      end
      if 1 == workValue3 then
        workValue7 = SetBlipSprite
        workValue8 = workValue6
        numberValue2 = 274
        workValue7(workValue8, numberValue2)
      elseif 5 == numberValue then
        workValue7 = SetBlipSprite
        workValue8 = workValue6
        numberValue2 = 15
        workValue7(workValue8, numberValue2)
      else
        workValue7 = SetBlipSprite
        workValue8 = workValue6
        numberValue2 = 1
        workValue7(workValue8, numberValue2)
      end
      workValue7 = SetBlipColour
      workValue8 = workValue6
      numberValue2 = numberValue
      workValue7(workValue8, numberValue2)
      workValue7 = SetBlipScale
      workValue8 = workValue6
      numberValue2 = 0.85
      workValue7(workValue8, numberValue2)
      workValue7 = SetBlipAlpha
      workValue8 = workValue6
      numberValue2 = 255
      workValue7(workValue8, numberValue2)
      workValue7 = ShowHeadingIndicatorOnBlip
      workValue8 = workValue6
      numberValue2 = true
      workValue7(workValue8, numberValue2)
      workValue7 = SetBlipRotation
      workValue8 = workValue6
      numberValue2 = math
      numberValue2 = numberValue2.floor
      numberValue3 = workValue2 or numberValue3
      if not workValue2 then
        numberValue3 = 0.0
      end
      numberValue2, numberValue3 = numberValue2(numberValue3)
      workValue7(workValue8, numberValue2, numberValue3)
      workValue7 = dataTable
      workValue7 = #workValue7
      workValue8 = workValue7 + 1
      workValue7 = dataTable
      workValue7[workValue8] = workValue6
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f65acb9738".
eventRegistration(dataTable32, dataTable33)
eventRegistration = RegisterNetEvent
dataTable32 = "70c51a178a"
-- Beginner: this function handles network event "70c51a178a".

-- === HELPER FUNCTION (decompiler name: dataTable33; parameters: none) ===
function dataTable33()
  local arg1, workValue9
  arg1 = dataTable23
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "70c51a178a".
eventRegistration(dataTable32, dataTable33)
eventRegistration = RegisterNetEvent
dataTable32 = "CMG:hackingPhoneActionResult"
-- Beginner: this function handles network event "CMG:hackingPhoneActionResult".

-- === HELPER FUNCTION (decompiler name: dataTable33; parameters: arg1) ===
function dataTable33(arg1)
  local workValue9, workValue12, workValue14
  if arg1 then
    workValue9 = arg1.message
    if workValue9 then
      workValue9 = arg1.message
      if "" ~= workValue9 then
        workValue9 = arg1.ok
        if workValue9 then
          workValue9 = notify
          workValue12 = "~g~"
          workValue14 = arg1.message
          workValue12 = workValue12 .. workValue14
          -- Beginner: Show a notification to the player.
          workValue9(workValue12)
        else
          workValue9 = notify
          workValue12 = "~r~"
          workValue14 = arg1.message
          workValue12 = workValue12 .. workValue14
          workValue9(workValue12)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "CMG:hackingPhoneActionResult".
eventRegistration(dataTable32, dataTable33)
eventRegistration = 0
dataTable32 = RegisterNetEvent
dataTable33 = "ee4d898632"
-- Beginner: this function handles network event "ee4d898632".

-- === HELPER FUNCTION (decompiler name: dataTable34; parameters: arg1) ===
function dataTable34(arg1)
  local workValue9, workValue12, workValue14, workValue16
  workValue9 = tonumber
  workValue12 = arg1
  workValue9 = workValue9(workValue12)
  if not workValue9 then
    workValue9 = 0
  end
  if workValue9 <= 0 then
    return
  end
  workValue12 = eventRegistration
  workValue12 = workValue12 + 1
  eventRegistration = workValue12
  workValue12 = eventRegistration
  workValue14 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION (decompiler name: workValue16; parameters: none) ===
  function workValue16()
    local playerPed, workValue10, flag3, gameTime, workValue17, flag4, gameTime2, workValue22, numberValue6, numberValue7, flag, flag2
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    workValue10 = FreezeEntityPosition
    flag3 = playerPed
    gameTime = true
    -- Beginner: Freeze or unfreeze an entity in place.
    workValue10(flag3, gameTime)
    workValue10 = DisplayRadar
    flag3 = false
    workValue10(flag3)
    workValue10 = SetTimecycleModifier
    flag3 = "scanline_cam_cheap"
    workValue10(flag3)
    workValue10 = SetTimecycleModifierStrength
    flag3 = 2.0
    workValue10(flag3)
    workValue10 = CreateCam
    flag3 = "DEFAULT_SCRIPTED_CAMERA"
    gameTime = true
    -- Beginner: result below is cameraHandle.
    workValue10 = workValue10(flag3, gameTime)
    flag3 = 1
    gameTime = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    gameTime = gameTime()
    workValue17 = workValue9
    gameTime = gameTime + workValue17

    -- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg12) ===
    function workValue17(arg12)
      local workValue11, workValue13, workValue15, workValue18, numberValue4, flag5, numberValue5
      if not arg12 then
        return
      end
      workValue11 = SetFocusPosAndVel
      workValue13 = arg12.pos
      workValue13 = workValue13.x
      workValue15 = arg12.pos
      workValue15 = workValue15.y
      workValue18 = arg12.pos
      workValue18 = workValue18.z
      numberValue4 = 0.0
      flag5 = 0.0
      numberValue5 = 0.0
      workValue11(workValue13, workValue15, workValue18, numberValue4, flag5, numberValue5)
      workValue11 = SetCamCoord
      workValue13 = workValue10
      workValue15 = arg12.pos
      workValue15 = workValue15.x
      workValue18 = arg12.pos
      workValue18 = workValue18.y
      numberValue4 = arg12.pos
      numberValue4 = numberValue4.z
      workValue11(workValue13, workValue15, workValue18, numberValue4)
      workValue11 = SetCamRot
      workValue13 = workValue10
      workValue15 = arg12.rot
      workValue15 = workValue15.x
      workValue18 = arg12.rot
      workValue18 = workValue18.y
      numberValue4 = arg12.rot
      numberValue4 = numberValue4.z
      flag5 = 2
      workValue11(workValue13, workValue15, workValue18, numberValue4, flag5)
      workValue11 = SetCamFov
      workValue13 = workValue10
      workValue15 = 50.0
      workValue11(workValue13, workValue15)
      workValue11 = RenderScriptCams
      workValue13 = true
      workValue15 = false
      workValue18 = 0
      numberValue4 = true
      flag5 = true
      workValue11(workValue13, workValue15, workValue18, numberValue4, flag5)
    end
    flag4 = true
    while true do
      gameTime2 = workValue12
      workValue22 = eventRegistration
      if gameTime2 ~= workValue22 then
        break
      end
      gameTime2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      gameTime2 = gameTime2()
      if not (gameTime > gameTime2) then
        break
      end
      gameTime2 = dataTable12
      gameTime2 = gameTime2[flag3]
      if not gameTime2 then
        flag3 = 1
        workValue22 = dataTable12
        gameTime2 = workValue22[flag3]
      end
      if flag4 then
        workValue22 = workValue17
        numberValue6 = gameTime2
        workValue22(numberValue6)
        flag4 = false
      end
      workValue22 = IsControlJustPressed
      numberValue6 = 0
      numberValue7 = 194
      workValue22 = workValue22(numberValue6, numberValue7)
      if workValue22 then
        break
      end
      workValue22 = IsControlJustPressed
      numberValue6 = 0
      numberValue7 = 174
      workValue22 = workValue22(numberValue6, numberValue7)
      if workValue22 then
        flag3 = flag3 - 1
        if flag3 < 1 then
          workValue22 = dataTable12
          flag3 = #workValue22
        end
        flag4 = true
      else
        workValue22 = IsControlJustPressed
        numberValue6 = 0
        numberValue7 = 175
        workValue22 = workValue22(numberValue6, numberValue7)
        if workValue22 then
          flag3 = flag3 + 1
          workValue22 = dataTable12
          workValue22 = #workValue22
          if flag3 > workValue22 then
            flag3 = 1
          end
          flag4 = true
        end
      end
      workValue22 = Wait
      numberValue6 = 0
      workValue22(numberValue6)
    end
    gameTime2 = RenderScriptCams
    workValue22 = false
    numberValue6 = false
    numberValue7 = 0
    flag = true
    flag2 = true
    gameTime2(workValue22, numberValue6, numberValue7, flag, flag2)
    gameTime2 = DoesCamExist
    workValue22 = workValue10
    gameTime2 = gameTime2(workValue22)
    if gameTime2 then
      gameTime2 = DestroyCam
      workValue22 = workValue10
      numberValue6 = false
      gameTime2(workValue22, numberValue6)
    end
    gameTime2 = ClearFocus
    gameTime2()
    gameTime2 = ClearTimecycleModifier
    gameTime2()
    gameTime2 = DisplayRadar
    workValue22 = true
    gameTime2(workValue22)
    gameTime2 = workValue12
    workValue22 = eventRegistration
    if gameTime2 == workValue22 then
      gameTime2 = FreezeEntityPosition
      workValue22 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workValue22 = workValue22()
      numberValue6 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      gameTime2(workValue22, numberValue6)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  workValue14(workValue16)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ee4d898632".
dataTable32(dataTable33, dataTable34)
