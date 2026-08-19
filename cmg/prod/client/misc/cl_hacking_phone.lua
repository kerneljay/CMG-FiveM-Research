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
local dataCollection, dataCollection12, dataCollection23, dataCollection31, eventHandler, dataCollection32, dataCollection33, dataCollection34, dataCollection35, dataCollection36, dataCollection2, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, dataCollection8, dataCollection9, dataCollection10, dataCollection11, dataCollection13, dataCollection14, dataCollection15, dataCollection16, dataCollection17, dataCollection18, dataCollection19, dataCollection20, dataCollection21, dataCollection22, dataCollection24, dataCollection25, dataCollection26, dataCollection27, dataCollection28, dataCollection29, dataCollection30
dataCollection = {}
dataCollection12 = {}
dataCollection23 = {}
dataCollection23.label = "Street cam 1"
dataCollection31 = {}
dataCollection31.x = 234.53869628906
dataCollection31.y = -394.37854003906
dataCollection31.z = 51.980960845947
dataCollection23.pos = dataCollection31
dataCollection31 = {}
dataCollection31.x = -25.0
dataCollection31.y = 0.0
dataCollection31.z = 0.0
dataCollection23.rot = dataCollection31
dataCollection31 = {}
dataCollection31.label = "Street cam 2"
eventHandler = {}
eventHandler.x = -130.69403076172
eventHandler.y = -237.51498413086
eventHandler.z = 46.375648498535
dataCollection31.pos = eventHandler
eventHandler = {}
eventHandler.x = -25.0
eventHandler.y = 0.0
eventHandler.z = 0.0
dataCollection31.rot = eventHandler
eventHandler = {}
eventHandler.label = "Street cam 3"
dataCollection32 = {}
dataCollection32.x = 228.79537963867
dataCollection32.y = 217.26516723633
dataCollection32.z = 111.65953826904
eventHandler.pos = dataCollection32
dataCollection32 = {}
dataCollection32.x = -25.0
dataCollection32.y = 0.0
dataCollection32.z = 0.0
eventHandler.rot = dataCollection32
dataCollection32 = {}
dataCollection32.label = "Street cam 4"
dataCollection33 = {}
dataCollection33.x = 276.10882568359
dataCollection33.y = 147.8564453125
dataCollection33.z = 108.54515075684
dataCollection32.pos = dataCollection33
dataCollection33 = {}
dataCollection33.x = -25.0
dataCollection33.y = 0.0
dataCollection33.z = 0.0
dataCollection32.rot = dataCollection33
dataCollection33 = {}
dataCollection33.label = "Street cam 5"
dataCollection34 = {}
dataCollection34.x = -697.13793945312
dataCollection34.y = 271.83880615234
dataCollection34.z = 92.289413452148
dataCollection33.pos = dataCollection34
dataCollection34 = {}
dataCollection34.x = -25.0
dataCollection34.y = 0.0
dataCollection34.z = 0.0
dataCollection33.rot = dataCollection34
dataCollection34 = {}
dataCollection34.label = "Street cam 6"
dataCollection35 = {}
dataCollection35.x = -717.26025390625
dataCollection35.y = -157.43000793457
dataCollection35.z = 41.1064453125
dataCollection34.pos = dataCollection35
dataCollection35 = {}
dataCollection35.x = -25.0
dataCollection35.y = 0.0
dataCollection35.z = 0.0
dataCollection34.rot = dataCollection35
dataCollection35 = {}
dataCollection35.label = "Street cam 7"
dataCollection36 = {}
dataCollection36.x = -638.20953369141
dataCollection36.y = -249.96182250977
dataCollection36.z = 42.848964691162
dataCollection35.pos = dataCollection36
dataCollection36 = {}
dataCollection36.x = -25.0
dataCollection36.y = 0.0
dataCollection36.z = 0.0
dataCollection35.rot = dataCollection36
dataCollection36 = {}
dataCollection36.label = "Street cam 8"
dataCollection2 = {}
dataCollection2.x = -2974.3278808594
dataCollection2.y = 395.2333984375
dataCollection2.z = 16.954597473145
dataCollection36.pos = dataCollection2
dataCollection2 = {}
dataCollection2.x = -25.0
dataCollection2.y = 0.0
dataCollection2.z = 0.0
dataCollection36.rot = dataCollection2
dataCollection2 = {}
dataCollection2.label = "Street cam 9"
dataCollection3 = {}
dataCollection3.x = -2966.9111328125
dataCollection3.y = 485.03805541992
dataCollection3.z = 17.149766921997
dataCollection2.pos = dataCollection3
dataCollection3 = {}
dataCollection3.x = -25.0
dataCollection3.y = 0.0
dataCollection3.z = 0.0
dataCollection2.rot = dataCollection3
dataCollection3 = {}
dataCollection3.label = "Street cam 10"
dataCollection4 = {}
dataCollection4.x = -2467.7106933594
dataCollection4.y = -218.71464538574
dataCollection4.z = 23.948993682861
dataCollection3.pos = dataCollection4
dataCollection4 = {}
dataCollection4.x = -25.0
dataCollection4.y = 0.0
dataCollection4.z = 0.0
dataCollection3.rot = dataCollection4
dataCollection4 = {}
dataCollection4.label = "Street cam 11"
dataCollection5 = {}
dataCollection5.x = -202.26121520996
dataCollection5.y = -864.77221679688
dataCollection5.z = 34.702033996582
dataCollection4.pos = dataCollection5
dataCollection5 = {}
dataCollection5.x = -25.0
dataCollection5.y = 0.0
dataCollection5.z = 0.0
dataCollection4.rot = dataCollection5
dataCollection5 = {}
dataCollection5.label = "Street cam 12"
dataCollection6 = {}
dataCollection6.x = 387.98492431641
dataCollection6.y = -974.71929931641
dataCollection6.z = 32.410995483398
dataCollection5.pos = dataCollection6
dataCollection6 = {}
dataCollection6.x = -25.0
dataCollection6.y = 0.0
dataCollection6.z = 0.0
dataCollection5.rot = dataCollection6
dataCollection6 = {}
dataCollection6.label = "Street cam 13"
dataCollection7 = {}
dataCollection7.x = 423.26708984375
dataCollection7.y = -997.22393798828
dataCollection7.z = 33.90548324585
dataCollection6.pos = dataCollection7
dataCollection7 = {}
dataCollection7.x = -25.0
dataCollection7.y = 0.0
dataCollection7.z = 0.0
dataCollection6.rot = dataCollection7
dataCollection7 = {}
dataCollection7.label = "Street cam 14"
dataCollection8 = {}
dataCollection8.x = 438.83123779297
dataCollection8.y = -1000.6759033203
dataCollection8.z = 32.538806915283
dataCollection7.pos = dataCollection8
dataCollection8 = {}
dataCollection8.x = -25.0
dataCollection8.y = 0.0
dataCollection8.z = 0.0
dataCollection7.rot = dataCollection8
dataCollection8 = {}
dataCollection8.label = "Street cam 15"
dataCollection9 = {}
dataCollection9.x = 467.33630371094
dataCollection9.y = -1015.2039794922
dataCollection9.z = 30.915859222412
dataCollection8.pos = dataCollection9
dataCollection9 = {}
dataCollection9.x = -25.0
dataCollection9.y = 0.0
dataCollection9.z = 0.0
dataCollection8.rot = dataCollection9
dataCollection9 = {}
dataCollection9.label = "Street cam 16"
dataCollection10 = {}
dataCollection10.x = 490.38217163086
dataCollection10.y = -1024.0905761719
dataCollection10.z = 31.309572219849
dataCollection9.pos = dataCollection10
dataCollection10 = {}
dataCollection10.x = -25.0
dataCollection10.y = 0.0
dataCollection10.z = 0.0
dataCollection9.rot = dataCollection10
dataCollection10 = {}
dataCollection10.label = "Street cam 17"
dataCollection11 = {}
dataCollection11.x = 489.91595458984
dataCollection11.y = -1003.3515625
dataCollection11.z = 29.712303161621
dataCollection10.pos = dataCollection11
dataCollection11 = {}
dataCollection11.x = -25.0
dataCollection11.y = 0.0
dataCollection11.z = 0.0
dataCollection10.rot = dataCollection11
dataCollection11 = {}
dataCollection11.label = "Street cam 18"
dataCollection13 = {}
dataCollection13.x = 481.11560058594
dataCollection13.y = -977.43322753906
dataCollection13.z = 29.869251251221
dataCollection11.pos = dataCollection13
dataCollection13 = {}
dataCollection13.x = -25.0
dataCollection13.y = 0.0
dataCollection13.z = 0.0
dataCollection11.rot = dataCollection13
dataCollection13 = {}
dataCollection13.label = "Street cam 19"
dataCollection14 = {}
dataCollection14.x = 432.4736328125
dataCollection14.y = -656.77960205078
dataCollection14.z = 30.912614822388
dataCollection13.pos = dataCollection14
dataCollection14 = {}
dataCollection14.x = -25.0
dataCollection14.y = 0.0
dataCollection14.z = 0.0
dataCollection13.rot = dataCollection14
dataCollection14 = {}
dataCollection14.label = "Street cam 20"
dataCollection15 = {}
dataCollection15.x = 353.97552490234
dataCollection15.y = -600.77154541016
dataCollection15.z = 32.244640350342
dataCollection14.pos = dataCollection15
dataCollection15 = {}
dataCollection15.x = -25.0
dataCollection15.y = 0.0
dataCollection15.z = 0.0
dataCollection14.rot = dataCollection15
dataCollection15 = {}
dataCollection15.label = "Street cam 21"
dataCollection16 = {}
dataCollection16.x = -128.30404663086
dataCollection16.y = -1023.4191894531
dataCollection16.z = 35.994411468506
dataCollection15.pos = dataCollection16
dataCollection16 = {}
dataCollection16.x = -25.0
dataCollection16.y = 0.0
dataCollection16.z = 0.0
dataCollection15.rot = dataCollection16
dataCollection16 = {}
dataCollection16.label = "Street cam 22"
dataCollection17 = {}
dataCollection17.x = -62.237995147705
dataCollection17.y = -1101.1270751953
dataCollection17.z = 32.561504364014
dataCollection16.pos = dataCollection17
dataCollection17 = {}
dataCollection17.x = -25.0
dataCollection17.y = 0.0
dataCollection17.z = 0.0
dataCollection16.rot = dataCollection17
dataCollection17 = {}
dataCollection17.label = "Street cam 23"
dataCollection18 = {}
dataCollection18.x = 24.420116424561
dataCollection18.y = -1350.7467041016
dataCollection18.z = 32.561325073242
dataCollection17.pos = dataCollection18
dataCollection18 = {}
dataCollection18.x = -25.0
dataCollection18.y = 0.0
dataCollection18.z = 0.0
dataCollection17.rot = dataCollection18
dataCollection18 = {}
dataCollection18.label = "Street cam 24"
dataCollection19 = {}
dataCollection19.x = 102.72190856934
dataCollection19.y = -1318.4841308594
dataCollection19.z = 33.93473815918
dataCollection18.pos = dataCollection19
dataCollection19 = {}
dataCollection19.x = -25.0
dataCollection19.y = 0.0
dataCollection19.z = 0.0
dataCollection18.rot = dataCollection19
dataCollection19 = {}
dataCollection19.label = "Street cam 25"
dataCollection20 = {}
dataCollection20.x = 68.04532623291
dataCollection20.y = -1720.1014404297
dataCollection20.z = 34.036998748779
dataCollection19.pos = dataCollection20
dataCollection20 = {}
dataCollection20.x = -25.0
dataCollection20.y = 0.0
dataCollection20.z = 0.0
dataCollection19.rot = dataCollection20
dataCollection20 = {}
dataCollection20.label = "Street cam 26"
dataCollection21 = {}
dataCollection21.x = -59.932559967041
dataCollection21.y = -1752.037109375
dataCollection21.z = 31.550285339355
dataCollection20.pos = dataCollection21
dataCollection21 = {}
dataCollection21.x = -25.0
dataCollection21.y = 0.0
dataCollection21.z = 0.0
dataCollection20.rot = dataCollection21
dataCollection21 = {}
dataCollection21.label = "Street cam 27"
dataCollection22 = {}
dataCollection22.x = 1301.2156982422
dataCollection22.y = 4317.45703125
dataCollection22.z = 41.211765289307
dataCollection21.pos = dataCollection22
dataCollection22 = {}
dataCollection22.x = -25.0
dataCollection22.y = 0.0
dataCollection22.z = 0.0
dataCollection21.rot = dataCollection22
dataCollection22 = {}
dataCollection22.label = "Street cam 28"
dataCollection24 = {}
dataCollection24.x = 3550.9475097656
dataCollection24.y = 3651.6000976562
dataCollection24.z = 46.954288482666
dataCollection22.pos = dataCollection24
dataCollection24 = {}
dataCollection24.x = -25.0
dataCollection24.y = 0.0
dataCollection24.z = 0.0
dataCollection22.rot = dataCollection24
dataCollection24 = {}
dataCollection24.label = "Street cam 29"
dataCollection25 = {}
dataCollection25.x = 1727.2385253906
dataCollection25.y = 6412.2392578125
dataCollection25.z = 36.611518859863
dataCollection24.pos = dataCollection25
dataCollection25 = {}
dataCollection25.x = -25.0
dataCollection25.y = 0.0
dataCollection25.z = 0.0
dataCollection24.rot = dataCollection25
dataCollection25 = {}
dataCollection25.label = "Street cam 30"
dataCollection26 = {}
dataCollection26.x = 130.58874511719
dataCollection26.y = 6525.1376953125
dataCollection26.z = 35.731548309326
dataCollection25.pos = dataCollection26
dataCollection26 = {}
dataCollection26.x = -25.0
dataCollection26.y = 0.0
dataCollection26.z = 0.0
dataCollection25.rot = dataCollection26
dataCollection26 = {}
dataCollection26.label = "Street cam 31"
dataCollection27 = {}
dataCollection27.x = -434.53747558594
dataCollection27.y = 6011.1416015625
dataCollection27.z = 34.472328186035
dataCollection26.pos = dataCollection27
dataCollection27 = {}
dataCollection27.x = -25.0
dataCollection27.y = 0.0
dataCollection27.z = 0.0
dataCollection26.rot = dataCollection27
dataCollection27 = {}
dataCollection27.label = "Street cam 32"
dataCollection28 = {}
dataCollection28.x = -1099.2557373047
dataCollection28.y = 4911.3217773438
dataCollection28.z = 218.9635925293
dataCollection27.pos = dataCollection28
dataCollection28 = {}
dataCollection28.x = -25.0
dataCollection28.y = 0.0
dataCollection28.z = 0.0
dataCollection27.rot = dataCollection28
dataCollection28 = {}
dataCollection28.label = "Street cam 33"
dataCollection29 = {}
dataCollection29.x = 1487.5465087891
dataCollection29.y = 6354.9409179688
dataCollection29.z = 27.180263519287
dataCollection28.pos = dataCollection29
dataCollection29 = {}
dataCollection29.x = -25.0
dataCollection29.y = 0.0
dataCollection29.z = 0.0
dataCollection28.rot = dataCollection29
dataCollection29 = {}
dataCollection29.label = "Street cam 34"
dataCollection30 = {}
dataCollection30.x = 232.71536254883
dataCollection30.y = -591.38494873047
dataCollection30.z = 47.335529327393
dataCollection29.pos = dataCollection30
dataCollection30 = {}
dataCollection30.x = -25.0
dataCollection30.y = 0.0
dataCollection30.z = 0.0
dataCollection29.rot = dataCollection30
dataCollection12[1] = dataCollection23
dataCollection12[2] = dataCollection31
dataCollection12[3] = eventHandler
dataCollection12[4] = dataCollection32
dataCollection12[5] = dataCollection33
dataCollection12[6] = dataCollection34
dataCollection12[7] = dataCollection35
dataCollection12[8] = dataCollection36
dataCollection12[9] = dataCollection2
dataCollection12[10] = dataCollection3
dataCollection12[11] = dataCollection4
dataCollection12[12] = dataCollection5
dataCollection12[13] = dataCollection6
dataCollection12[14] = dataCollection7
dataCollection12[15] = dataCollection8
dataCollection12[16] = dataCollection9
dataCollection12[17] = dataCollection10
dataCollection12[18] = dataCollection11
dataCollection12[19] = dataCollection13
dataCollection12[20] = dataCollection14
dataCollection12[21] = dataCollection15
dataCollection12[22] = dataCollection16
dataCollection12[23] = dataCollection17
dataCollection12[24] = dataCollection18
dataCollection12[25] = dataCollection19
dataCollection12[26] = dataCollection20
dataCollection12[27] = dataCollection21
dataCollection12[28] = dataCollection22
dataCollection12[29] = dataCollection24
dataCollection12[30] = dataCollection25
dataCollection12[31] = dataCollection26
dataCollection12[32] = dataCollection27
dataCollection12[33] = dataCollection28
dataCollection12[34] = dataCollection29

-- === HELPER FUNCTION (decompiler name: dataCollection23; parameters: none) ===
function dataCollection23()
  local localValue1, workingValue9, workingValue12, workingValue14, workingValue16, workingValue19, workingValue20, workingValue21
  localValue1 = ipairs
  workingValue9 = dataCollection
  localValue1, workingValue9, workingValue12, workingValue14 = localValue1(workingValue9)
  for workingValue16, workingValue19 in localValue1, workingValue9, workingValue12, workingValue14 do
    workingValue20 = DoesBlipExist
    workingValue21 = workingValue19
    workingValue20 = workingValue20(workingValue21)
    if workingValue20 then
      workingValue20 = RemoveBlip
      workingValue21 = workingValue19
      workingValue20(workingValue21)
    end
  end
  localValue1 = {}
  dataCollection = localValue1
end

-- === HELPER FUNCTION (decompiler name: dataCollection31; parameters: localValue1) ===
function dataCollection31(localValue1)
  local workingValue9, workingValue12, workingValue14, workingValue16, workingValue19, workingValue20, workingValue21, workingValue23, workingValue24, workingValue, workingValue2
  if localValue1 then
    workingValue9 = type
    workingValue12 = localValue1
    workingValue9 = workingValue9(workingValue12)
    if "table" == workingValue9 then
      goto continueAtStep10
    end
  end
  workingValue9 = nil
  return workingValue9
  ::continueAtStep10::
  workingValue9 = type
  workingValue12 = localValue1[1]
  workingValue9 = workingValue9(workingValue12)
  if "number" == workingValue9 then
    workingValue9 = localValue1[2]
    if workingValue9 then
      workingValue9 = localValue1[2]
      workingValue12 = tonumber
      workingValue14 = workingValue9.x
      if not workingValue14 then
        workingValue14 = workingValue9[1]
      end
      workingValue12 = workingValue12(workingValue14)
      workingValue14 = tonumber
      workingValue16 = workingValue9.y
      if not workingValue16 then
        workingValue16 = workingValue9[2]
      end
      workingValue14 = workingValue14(workingValue16)
      workingValue16 = tonumber
      workingValue19 = workingValue9.z
      if not workingValue19 then
        workingValue19 = workingValue9[3]
      end
      workingValue16 = workingValue16(workingValue19)
      if not workingValue16 then
        workingValue16 = 0.0
      end
      if not workingValue12 or not workingValue14 then
        workingValue19 = nil
        return workingValue19
      end
      workingValue19 = workingValue12
      workingValue20 = workingValue14
      workingValue21 = workingValue16
      workingValue23 = localValue1[3]
      workingValue24 = localValue1[4]
      workingValue = localValue1[5]
      workingValue2 = localValue1[6]
      return workingValue19, workingValue20, workingValue21, workingValue23, workingValue24, workingValue, workingValue2
    end
  end
  workingValue9 = localValue1.x
  if workingValue9 then
    workingValue9 = tonumber
    workingValue12 = localValue1.x
    workingValue9 = workingValue9(workingValue12)
    workingValue12 = tonumber
    workingValue14 = localValue1.y
    workingValue12 = workingValue12(workingValue14)
    workingValue14 = tonumber
    workingValue16 = localValue1.z
    workingValue14 = workingValue14(workingValue16)
    if not workingValue14 then
      workingValue14 = 0.0
    end
    workingValue16 = localValue1.heading
    workingValue19 = localValue1.dead
    workingValue20 = localValue1.colour
    workingValue21 = localValue1.bucket
    return workingValue9, workingValue12, workingValue14, workingValue16, workingValue19, workingValue20, workingValue21
  end
  workingValue9 = nil
  return workingValue9
end
eventHandler = RegisterNetEvent
dataCollection32 = "f65acb9738"
-- Beginner: this function handles network event "f65acb9738".

-- === HELPER FUNCTION (decompiler name: dataCollection33; parameters: localValue1) ===
function dataCollection33(localValue1)
  local workingValue9, workingValue12, workingValue14, workingValue16, workingValue19, workingValue20, workingValue21, workingValue23, workingValue24, workingValue, workingValue2, workingValue3, workingValue4, workingValue5, workingValue6, number, workingValue7, workingValue8, number2, number3
  workingValue9 = type
  workingValue12 = localValue1
  workingValue9 = workingValue9(workingValue12)
  if "table" ~= workingValue9 then
    return
  end
  workingValue9 = CMG
  workingValue9 = workingValue9.getPlayerBucket
  workingValue9 = workingValue9()
  workingValue12 = dataCollection23
  workingValue12()
  workingValue12 = ipairs
  workingValue14 = localValue1
  workingValue12, workingValue14, workingValue16, workingValue19 = workingValue12(workingValue14)
  for workingValue20, workingValue21 in workingValue12, workingValue14, workingValue16, workingValue19 do
    workingValue23 = dataCollection31
    workingValue24 = workingValue21
    workingValue23, workingValue24, workingValue, workingValue2, workingValue3, workingValue4, workingValue5 = workingValue23(workingValue24)
    if workingValue23 and workingValue5 == workingValue9 then
      workingValue6 = AddBlipForCoord
      number = workingValue23 + 0.0
      workingValue7 = workingValue24 + 0.0
      workingValue8 = workingValue + 0.0
      -- Beginner: result below is blipHandle.
      workingValue6 = workingValue6(number, workingValue7, workingValue8)
      number = workingValue4 or number
      if not workingValue4 then
        number = 3
      end
      if 1 == workingValue3 then
        workingValue7 = SetBlipSprite
        workingValue8 = workingValue6
        number2 = 274
        workingValue7(workingValue8, number2)
      elseif 5 == number then
        workingValue7 = SetBlipSprite
        workingValue8 = workingValue6
        number2 = 15
        workingValue7(workingValue8, number2)
      else
        workingValue7 = SetBlipSprite
        workingValue8 = workingValue6
        number2 = 1
        workingValue7(workingValue8, number2)
      end
      workingValue7 = SetBlipColour
      workingValue8 = workingValue6
      number2 = number
      workingValue7(workingValue8, number2)
      workingValue7 = SetBlipScale
      workingValue8 = workingValue6
      number2 = 0.85
      workingValue7(workingValue8, number2)
      workingValue7 = SetBlipAlpha
      workingValue8 = workingValue6
      number2 = 255
      workingValue7(workingValue8, number2)
      workingValue7 = ShowHeadingIndicatorOnBlip
      workingValue8 = workingValue6
      number2 = true
      workingValue7(workingValue8, number2)
      workingValue7 = SetBlipRotation
      workingValue8 = workingValue6
      number2 = math
      number2 = number2.floor
      number3 = workingValue2 or number3
      if not workingValue2 then
        number3 = 0.0
      end
      number2, number3 = number2(number3)
      workingValue7(workingValue8, number2, number3)
      workingValue7 = dataCollection
      workingValue7 = #workingValue7
      workingValue8 = workingValue7 + 1
      workingValue7 = dataCollection
      workingValue7[workingValue8] = workingValue6
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f65acb9738".
eventHandler(dataCollection32, dataCollection33)
eventHandler = RegisterNetEvent
dataCollection32 = "70c51a178a"
-- Beginner: this function handles network event "70c51a178a".

-- === HELPER FUNCTION (decompiler name: dataCollection33; parameters: none) ===
function dataCollection33()
  local localValue1, workingValue9
  localValue1 = dataCollection23
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "70c51a178a".
eventHandler(dataCollection32, dataCollection33)
eventHandler = RegisterNetEvent
dataCollection32 = "CMG:hackingPhoneActionResult"
-- Beginner: this function handles network event "CMG:hackingPhoneActionResult".

-- === HELPER FUNCTION (decompiler name: dataCollection33; parameters: localValue1) ===
function dataCollection33(localValue1)
  local workingValue9, workingValue12, workingValue14
  if localValue1 then
    workingValue9 = localValue1.message
    if workingValue9 then
      workingValue9 = localValue1.message
      if "" ~= workingValue9 then
        workingValue9 = localValue1.ok
        if workingValue9 then
          workingValue9 = notify
          workingValue12 = "~g~"
          workingValue14 = localValue1.message
          workingValue12 = workingValue12 .. workingValue14
          -- Beginner: Show a notification to the player.
          workingValue9(workingValue12)
        else
          workingValue9 = notify
          workingValue12 = "~r~"
          workingValue14 = localValue1.message
          workingValue12 = workingValue12 .. workingValue14
          workingValue9(workingValue12)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "CMG:hackingPhoneActionResult".
eventHandler(dataCollection32, dataCollection33)
eventHandler = 0
dataCollection32 = RegisterNetEvent
dataCollection33 = "ee4d898632"
-- Beginner: this function handles network event "ee4d898632".

-- === HELPER FUNCTION (decompiler name: dataCollection34; parameters: localValue1) ===
function dataCollection34(localValue1)
  local workingValue9, workingValue12, workingValue14, workingValue16
  workingValue9 = tonumber
  workingValue12 = localValue1
  workingValue9 = workingValue9(workingValue12)
  if not workingValue9 then
    workingValue9 = 0
  end
  if workingValue9 <= 0 then
    return
  end
  workingValue12 = eventHandler
  workingValue12 = workingValue12 + 1
  eventHandler = workingValue12
  workingValue12 = eventHandler
  workingValue14 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION (decompiler name: workingValue16; parameters: none) ===
  function workingValue16()
    local playerPed, workingValue10, stateFlag3, gameTime, workingValue17, stateFlag4, gameTime2, workingValue22, number6, number7, stateFlag, stateFlag2
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    workingValue10 = FreezeEntityPosition
    stateFlag3 = playerPed
    gameTime = true
    -- Beginner: Freeze or unfreeze an entity in place.
    workingValue10(stateFlag3, gameTime)
    workingValue10 = DisplayRadar
    stateFlag3 = false
    workingValue10(stateFlag3)
    workingValue10 = SetTimecycleModifier
    stateFlag3 = "scanline_cam_cheap"
    workingValue10(stateFlag3)
    workingValue10 = SetTimecycleModifierStrength
    stateFlag3 = 2.0
    workingValue10(stateFlag3)
    workingValue10 = CreateCam
    stateFlag3 = "DEFAULT_SCRIPTED_CAMERA"
    gameTime = true
    -- Beginner: result below is cameraHandle.
    workingValue10 = workingValue10(stateFlag3, gameTime)
    stateFlag3 = 1
    gameTime = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    gameTime = gameTime()
    workingValue17 = workingValue9
    gameTime = gameTime + workingValue17

    -- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue12) ===
    function workingValue17(localValue12)
      local workingValue11, workingValue13, workingValue15, workingValue18, number4, stateFlag5, number5
      if not localValue12 then
        return
      end
      workingValue11 = SetFocusPosAndVel
      workingValue13 = localValue12.pos
      workingValue13 = workingValue13.x
      workingValue15 = localValue12.pos
      workingValue15 = workingValue15.y
      workingValue18 = localValue12.pos
      workingValue18 = workingValue18.z
      number4 = 0.0
      stateFlag5 = 0.0
      number5 = 0.0
      workingValue11(workingValue13, workingValue15, workingValue18, number4, stateFlag5, number5)
      workingValue11 = SetCamCoord
      workingValue13 = workingValue10
      workingValue15 = localValue12.pos
      workingValue15 = workingValue15.x
      workingValue18 = localValue12.pos
      workingValue18 = workingValue18.y
      number4 = localValue12.pos
      number4 = number4.z
      workingValue11(workingValue13, workingValue15, workingValue18, number4)
      workingValue11 = SetCamRot
      workingValue13 = workingValue10
      workingValue15 = localValue12.rot
      workingValue15 = workingValue15.x
      workingValue18 = localValue12.rot
      workingValue18 = workingValue18.y
      number4 = localValue12.rot
      number4 = number4.z
      stateFlag5 = 2
      workingValue11(workingValue13, workingValue15, workingValue18, number4, stateFlag5)
      workingValue11 = SetCamFov
      workingValue13 = workingValue10
      workingValue15 = 50.0
      workingValue11(workingValue13, workingValue15)
      workingValue11 = RenderScriptCams
      workingValue13 = true
      workingValue15 = false
      workingValue18 = 0
      number4 = true
      stateFlag5 = true
      workingValue11(workingValue13, workingValue15, workingValue18, number4, stateFlag5)
    end
    stateFlag4 = true
    while true do
      gameTime2 = workingValue12
      workingValue22 = eventHandler
      if gameTime2 ~= workingValue22 then
        break
      end
      gameTime2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      gameTime2 = gameTime2()
      if not (gameTime > gameTime2) then
        break
      end
      gameTime2 = dataCollection12
      gameTime2 = gameTime2[stateFlag3]
      if not gameTime2 then
        stateFlag3 = 1
        workingValue22 = dataCollection12
        gameTime2 = workingValue22[stateFlag3]
      end
      if stateFlag4 then
        workingValue22 = workingValue17
        number6 = gameTime2
        workingValue22(number6)
        stateFlag4 = false
      end
      workingValue22 = IsControlJustPressed
      number6 = 0
      number7 = 194
      workingValue22 = workingValue22(number6, number7)
      if workingValue22 then
        break
      end
      workingValue22 = IsControlJustPressed
      number6 = 0
      number7 = 174
      workingValue22 = workingValue22(number6, number7)
      if workingValue22 then
        stateFlag3 = stateFlag3 - 1
        if stateFlag3 < 1 then
          workingValue22 = dataCollection12
          stateFlag3 = #workingValue22
        end
        stateFlag4 = true
      else
        workingValue22 = IsControlJustPressed
        number6 = 0
        number7 = 175
        workingValue22 = workingValue22(number6, number7)
        if workingValue22 then
          stateFlag3 = stateFlag3 + 1
          workingValue22 = dataCollection12
          workingValue22 = #workingValue22
          if stateFlag3 > workingValue22 then
            stateFlag3 = 1
          end
          stateFlag4 = true
        end
      end
      workingValue22 = Wait
      number6 = 0
      workingValue22(number6)
    end
    gameTime2 = RenderScriptCams
    workingValue22 = false
    number6 = false
    number7 = 0
    stateFlag = true
    stateFlag2 = true
    gameTime2(workingValue22, number6, number7, stateFlag, stateFlag2)
    gameTime2 = DoesCamExist
    workingValue22 = workingValue10
    gameTime2 = gameTime2(workingValue22)
    if gameTime2 then
      gameTime2 = DestroyCam
      workingValue22 = workingValue10
      number6 = false
      gameTime2(workingValue22, number6)
    end
    gameTime2 = ClearFocus
    gameTime2()
    gameTime2 = ClearTimecycleModifier
    gameTime2()
    gameTime2 = DisplayRadar
    workingValue22 = true
    gameTime2(workingValue22)
    gameTime2 = workingValue12
    workingValue22 = eventHandler
    if gameTime2 == workingValue22 then
      gameTime2 = FreezeEntityPosition
      workingValue22 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workingValue22 = workingValue22()
      number6 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      gameTime2(workingValue22, number6)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  workingValue14(workingValue16)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ee4d898632".
dataCollection32(dataCollection33, dataCollection34)
