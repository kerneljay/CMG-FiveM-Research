--[[
    Beginner Guide: cl_anpr.lua
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
    BEGINNER GUIDE — Anpr
    =====================

    File: cmg/prod/client/police/cl_anpr.lua
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

    Commands/command-like entries found:
      * /flagf
      * /flagr
      * flagf
      * flagr
      * anpr
      * lockanpr

    Network/hash identifiers found: 5
      They are intentionally left unchanged because matching server code may use them.
      * 49f6eff747
      * 920f4c13e9
      * 4da4f2889b
      * 42d0ce93ae
      * 66486b9576

    Named framework/network events found:
      * chat:addSuggestion

    Example player-facing text in this file:
      * ~r~Error~w~: You must provide a valid flag reason.

]]
local flag, flag4, textValue4, textValue5, workValue5, workValue6, dataTable3, flag5, flag6, numberValue8, dataTable, vector3Builder, numberValue2, numberValue4, numberValue5, dataTable2, cmgCall2, eventRegistration, textValue3, workValue2
flag = true
flag4 = false
textValue4 = ""
textValue5 = ""
workValue5 = nil
workValue6 = nil
dataTable3 = {}
flag5 = false
flag6 = false
numberValue8 = 0
dataTable = {}
vector3Builder = vector3
numberValue2 = -763.85
numberValue4 = -2182.47
numberValue5 = 15.26
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["New Empire Way"] = vector3Builder
vector3Builder = vector3
numberValue2 = 814.19
numberValue4 = -2623.73
numberValue5 = 52.42
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Elysian Fields FWY Bridge"] = vector3Builder
vector3Builder = vector3
numberValue2 = -498.72
numberValue4 = -2265.92
numberValue5 = 61.43
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["La Puerta FWY Bridge"] = vector3Builder
vector3Builder = vector3
numberValue2 = 1573.21
numberValue4 = -983.65
numberValue5 = 59.78
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Palomino FWY 1"] = vector3Builder
vector3Builder = vector3
numberValue2 = 1307.31
numberValue4 = 599.01
numberValue5 = 80.05
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Los Santos FWY 1"] = vector3Builder
vector3Builder = vector3
numberValue2 = 2118.76
numberValue4 = 1362.79
numberValue5 = 75.37
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Palomino FWY 2"] = vector3Builder
vector3Builder = vector3
numberValue2 = 2113.76
numberValue4 = 2670.4
numberValue5 = 50.46
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Senora FWY 1"] = vector3Builder
vector3Builder = vector3
numberValue2 = -2171.84
numberValue4 = -345.79
numberValue5 = 13.18
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["West Eclipse Blvd/Great Ocean HWY"] = vector3Builder
vector3Builder = vector3
numberValue2 = -2720.0
numberValue4 = 2284.16
numberValue5 = 19.15
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Great Ocean HWY/Route 68"] = vector3Builder
vector3Builder = vector3
numberValue2 = -396.31
numberValue4 = 5976.88
numberValue5 = 31.66
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Great Ocean HWY/Paleto Blvd"] = vector3Builder
vector3Builder = vector3
numberValue2 = 2793.14
numberValue4 = 4408.23
numberValue5 = 49.03
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["East Joshua Road/Senora FWY"] = vector3Builder
vector3Builder = vector3
numberValue2 = -1214.03
numberValue4 = -697.71
numberValue5 = 10.9
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Del Perro Fwy Tunnel"] = vector3Builder
vector3Builder = vector3
numberValue2 = 1064.87
numberValue4 = -1540.35
numberValue5 = 28.19
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Elysian Fields Fwy 1"] = vector3Builder
vector3Builder = vector3
numberValue2 = 317.39
numberValue4 = 1003.02
numberValue5 = 210.36
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Baytree Canyon Rd/Marlowe Dr"] = vector3Builder
vector3Builder = vector3
numberValue2 = -3103.37
numberValue4 = 1184.33
numberValue5 = 20.16
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Great Ocean Hway/Banham Canyon Dr"] = vector3Builder
vector3Builder = vector3
numberValue2 = 727.53
numberValue4 = -2784.06
numberValue5 = 6.25
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Buccaneer Way (Port)"] = vector3Builder
vector3Builder = vector3
numberValue2 = -402.67
numberValue4 = -784.82
numberValue5 = 36.81
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["La Puerta Fwy 1"] = vector3Builder
vector3Builder = vector3
numberValue2 = -756.0
numberValue4 = -1732.56
numberValue5 = 29.15
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Dutch London St/La Puerta"] = vector3Builder
vector3Builder = vector3
numberValue2 = 2437.49
numberValue4 = -183.21
numberValue5 = 87.49
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Palamino Fwy 3"] = vector3Builder
vector3Builder = vector3
numberValue2 = -149.04
numberValue4 = -1183.77
numberValue5 = 37.13
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Olympic Fwy (Above Power St)"] = vector3Builder
vector3Builder = vector3
numberValue2 = 230.74
numberValue4 = -1236.45
numberValue5 = 38.02
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Olympic Fwy (Above Strawberry Ave)"] = vector3Builder
vector3Builder = vector3
numberValue2 = 902.12
numberValue4 = 178.07
numberValue5 = 75.03
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Los Santos Freeway 2"] = vector3Builder
vector3Builder = vector3
numberValue2 = -921.26
numberValue4 = -542.54
numberValue5 = 19.01
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Del Perro Fwy (Under Movie Star Way)"] = vector3Builder
vector3Builder = vector3
numberValue2 = 864.89
numberValue4 = -699.25
numberValue5 = 42.49
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Del Perro Fwy 2"] = vector3Builder
vector3Builder = vector3
numberValue2 = -404.82
numberValue4 = -1289.68
numberValue5 = 21.19
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["La Puerta Fwy (Lower)"] = vector3Builder
vector3Builder = vector3
numberValue2 = -386.18
numberValue4 = -1829.63
numberValue5 = 21.39
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Davis Ave/Alta St"] = vector3Builder
vector3Builder = vector3
numberValue2 = -1549.77
numberValue4 = -801.19
numberValue5 = 13.15
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Equality Way (Exit)"] = vector3Builder
vector3Builder = vector3
numberValue2 = -1577.42
numberValue4 = -726.07
numberValue5 = 18.55
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Equality Way (on-slip)"] = vector3Builder
vector3Builder = vector3
numberValue2 = -3029.89
numberValue4 = 222.96
numberValue5 = 15.89
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Great Ocean Hwy/Inseno Rd 1"] = vector3Builder
vector3Builder = vector3
numberValue2 = -2479.27
numberValue4 = 3660.72
numberValue5 = 13.55
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Great Ocean Hwy/Zancudo Road"] = vector3Builder
vector3Builder = vector3
numberValue2 = -2592.38
numberValue4 = 3120.09
numberValue5 = 14.76
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Great Ocean Hwy/Zancudo Tunnel"] = vector3Builder
vector3Builder = vector3
numberValue2 = -1903.28
numberValue4 = 4614.71
numberValue5 = 56.8
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Great Ocean Hwy/Raton Canyon Bridge"] = vector3Builder
vector3Builder = vector3
numberValue2 = -771.77
numberValue4 = 5491.96
numberValue5 = 34.46
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Great Ocean Hwy/Procopio Promenade"] = vector3Builder
vector3Builder = "Great Ocean Hwy/Paleto Bay Petrol Station"
numberValue2 = vector3
numberValue4 = 179.73
numberValue5 = 6582.76
dataTable2 = 31.63
numberValue2 = numberValue2(numberValue4, numberValue5, dataTable2)
dataTable[vector3Builder] = numberValue2
vector3Builder = vector3
numberValue2 = 149.27
numberValue4 = 6527.46
numberValue5 = 31.46
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Great Ocean Hwy/Procopio Dr"] = vector3Builder
vector3Builder = vector3
numberValue2 = 2119.48
numberValue4 = 6025.09
numberValue5 = 50.85
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Senora Fwy/Braddock Pass (Tunnel)"] = vector3Builder
vector3Builder = vector3
numberValue2 = 2399.84
numberValue4 = 5788.28
numberValue5 = 45.75
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Senora Fwy/Braddock Pass"] = vector3Builder
vector3Builder = vector3
numberValue2 = 2625.67
numberValue4 = 5110.9
numberValue5 = 44.64
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Senora Fwy/Union Rd"] = vector3Builder
vector3Builder = vector3
numberValue2 = 2680.09
numberValue4 = 3178.76
numberValue5 = 52.31
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Senora Fwy 2 (Petrol Station)"] = vector3Builder
vector3Builder = vector3
numberValue2 = 2397.76
numberValue4 = 1210.39
numberValue5 = 58.92
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Senora Way/Palomino Fwy"] = vector3Builder
vector3Builder = vector3
numberValue2 = 1712.54
numberValue4 = 1499.18
numberValue5 = 84.7
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Los Santos Fwy 2"] = vector3Builder
vector3Builder = vector3
numberValue2 = 1880.95
numberValue4 = 2103.13
numberValue5 = 54.48
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Palomino Fwy (Senora Fwy on-slip)"] = vector3Builder
vector3Builder = vector3
numberValue2 = 1811.66
numberValue4 = 2130.67
numberValue5 = 54.47
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Senora Fwy (Palomino Fwy on-slip)"] = vector3Builder
vector3Builder = vector3
numberValue2 = 1769.02
numberValue4 = 2052.5
numberValue5 = 67.2
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Senora Fwy (Los Santos Fwy on-slip)"] = vector3Builder
vector3Builder = vector3
numberValue2 = 1790.68
numberValue4 = 1883.54
numberValue5 = 79.1
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Los Santos Fwy (Senora Fwy on-slip)"] = vector3Builder
vector3Builder = vector3
numberValue2 = 1786.31
numberValue4 = 1601.29
numberValue5 = 83.73
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Los Santos Fwy (Palomino Fwy on-slip)"] = vector3Builder
vector3Builder = vector3
numberValue2 = 2447.68
numberValue4 = 953.36
numberValue5 = 87.08
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Palomino Fwy (Jct Senora Way)"] = vector3Builder
vector3Builder = vector3
numberValue2 = 2585.63
numberValue4 = 360.6
numberValue5 = 108.24
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Palomino Fwy Petrol Station"] = vector3Builder
vector3Builder = vector3
numberValue2 = 770.69
numberValue4 = -1195.34
numberValue5 = 44.95
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Olympic Fwy (Over Popular St)"] = vector3Builder
vector3Builder = vector3
numberValue2 = 1240.24
numberValue4 = -2051.41
numberValue5 = 44.14
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Elysian Fields Fwy/El Rancho Blvd"] = vector3Builder
vector3Builder = vector3
numberValue2 = 688.11
numberValue4 = -166.98
numberValue5 = 48.05
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["Los Santos Fwy (Under Bridge St)"] = vector3Builder
vector3Builder = vector3
numberValue2 = -623.16
numberValue4 = -1720.22
numberValue5 = 37.06
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["La Puerta Fwy (Over South Arsenal St)"] = vector3Builder
vector3Builder = vector3
numberValue2 = -163.66
numberValue4 = -540.73
numberValue5 = 28.02
vector3Builder = vector3Builder(numberValue2, numberValue4, numberValue5)
dataTable["La Puerta Fwy/Del Perro Fwy on-slip"] = vector3Builder
vector3Builder = CMG
function numberValue2(arg1)
  local arg2, workValue4, tableHelper
  arg2 = CMG
  arg2 = arg2.getFlatLicensePlate
  workValue4 = GetVehicleNumberPlateText
  tableHelper = arg1
  workValue4, tableHelper = workValue4(tableHelper)
  arg2 = arg2(workValue4, tableHelper)
  if not arg2 then
    arg2 = "N/A"
  end
  workValue4 = dataTable3
  workValue4 = workValue4[arg2]
  if workValue4 then
    workValue4 = true
    return workValue4
  else
    workValue4 = false
    return workValue4
  end
end
vector3Builder.isVehicleFlagged = numberValue2
vector3Builder = TriggerEvent
numberValue2 = "chat:addSuggestion"
numberValue4 = "/flagf"
numberValue5 = "Flags the front vehicle"
dataTable2 = {}
cmgCall2 = {}
cmgCall2.name = "Reason"
cmgCall2.help = "Flag reason"
dataTable2[1] = cmgCall2
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
vector3Builder(numberValue2, numberValue4, numberValue5, dataTable2)
vector3Builder = TriggerEvent
numberValue2 = "chat:addSuggestion"
numberValue4 = "/flagr"
numberValue5 = "Flags the rear vehicle"
dataTable2 = {}
cmgCall2 = {}
cmgCall2.name = "Reason"
cmgCall2.help = "Flag reason"
dataTable2[1] = cmgCall2
vector3Builder(numberValue2, numberValue4, numberValue5, dataTable2)
vector3Builder = RegisterCommand
numberValue2 = "flagf"
-- Beginner: this function is the command handler for "flagf".
function numberValue4(arg1, arg2)
  local workValue4, tableHelper, textValue6, stringHelper2, workValue7
  workValue4 = textValue4
  if "" ~= workValue4 then
    workValue4 = ""
    tableHelper = table
    tableHelper = tableHelper.count
    textValue6 = arg2
    -- Beginner: result below is count.
    tableHelper = tableHelper(textValue6)
    if 0 ~= tableHelper then
      tableHelper = table
      tableHelper = tableHelper.concat
      textValue6 = arg2
      stringHelper2 = " "
      tableHelper = tableHelper(textValue6, stringHelper2)
      workValue4 = tableHelper
      tableHelper = TriggerServerEvent
      textValue6 = "49f6eff747"
      stringHelper2 = string
      stringHelper2 = stringHelper2.upper
      workValue7 = textValue4
      stringHelper2 = stringHelper2(workValue7)
      workValue7 = workValue4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "49f6eff747".
      tableHelper(textValue6, stringHelper2, workValue7)
    else
      tableHelper = tCMG
      tableHelper = tableHelper.notify
      textValue6 = "~r~Error~w~: You must provide a valid flag reason."
      -- Beginner: Show a notification to the player.
      tableHelper(textValue6)
    end
  end
end
numberValue5 = false
-- Beginner: Register a chat/console command. Event/command: "flagf".
vector3Builder(numberValue2, numberValue4, numberValue5)
vector3Builder = RegisterCommand
numberValue2 = "flagr"
-- Beginner: this function is the command handler for "flagr".
function numberValue4(arg1, arg2)
  local workValue4, tableHelper, textValue6, stringHelper2, workValue7
  workValue4 = textValue5
  if "" ~= workValue4 then
    workValue4 = ""
    tableHelper = table
    tableHelper = tableHelper.count
    textValue6 = arg2
    -- Beginner: result below is count.
    tableHelper = tableHelper(textValue6)
    if 0 ~= tableHelper then
      tableHelper = table
      tableHelper = tableHelper.concat
      textValue6 = arg2
      stringHelper2 = " "
      tableHelper = tableHelper(textValue6, stringHelper2)
      workValue4 = tableHelper
      tableHelper = TriggerServerEvent
      textValue6 = "49f6eff747"
      stringHelper2 = string
      stringHelper2 = stringHelper2.upper
      workValue7 = textValue5
      stringHelper2 = stringHelper2(workValue7)
      workValue7 = workValue4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "49f6eff747".
      tableHelper(textValue6, stringHelper2, workValue7)
    else
      tableHelper = tCMG
      tableHelper = tableHelper.notify
      textValue6 = "~r~Error~w~: You must provide a valid flag reason."
      -- Beginner: Show a notification to the player.
      tableHelper(textValue6)
    end
  end
end
numberValue5 = false
-- Beginner: Register a chat/console command. Event/command: "flagr".
vector3Builder(numberValue2, numberValue4, numberValue5)
vector3Builder = RegisterCommand
numberValue2 = "anpr"
-- Beginner: this function is the command handler for "anpr".
function numberValue4()
  local arg1, arg2
  arg1 = flag
  arg1 = not arg1
  flag = arg1
end
numberValue5 = false
vector3Builder(numberValue2, numberValue4, numberValue5)
vector3Builder = RegisterCommand
numberValue2 = "lockanpr"
-- Beginner: this function is the command handler for "lockanpr".
function numberValue4()
  local arg1, arg2
  arg1 = flag4
  arg1 = not arg1
  flag4 = arg1
  arg1 = flag4
  if arg1 then
    arg1 = tCMG
    arg1 = arg1.notify
    arg2 = "ANPR display ~g~locked~w~."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
  else
    arg1 = tCMG
    arg1 = arg1.notify
    arg2 = "ANPR display ~r~unlocked~w~."
    arg1(arg2)
  end
end
numberValue5 = false
-- Beginner: Register a chat/console command. Event/command: "lockanpr".
vector3Builder(numberValue2, numberValue4, numberValue5)
vector3Builder = false
function numberValue2()
  local arg1, arg2, workValue4
  arg1 = IsPedInAnyVehicle
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  workValue4 = false
  arg1 = arg1(arg2, workValue4)
  if arg1 then
    arg1 = GetVehicleClass
    arg2 = CMG
    arg2 = arg2.getPlayerVehicle
    arg2, workValue4 = arg2()
    arg1 = arg1(arg2, workValue4)
    if 18 == arg1 then
      arg1 = CMG
      arg1 = arg1.hasClientPermission
      arg2 = "police.onduty.permission"
      arg1 = arg1(arg2)
      if arg1 then
        arg1 = true
        return arg1
      end
    end
  end
  arg1 = false
  return arg1
end
function numberValue4(arg1)
  local arg2, workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue, textValue2, flag3
  arg2 = nil
  if "front" == arg1 then
    arg2 = 50.0
  elseif "rear" == arg1 then
    arg2 = -50.0
  end
  workValue4 = GetVehiclePedIsIn
  tableHelper = CMG
  tableHelper = tableHelper.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  tableHelper = tableHelper()
  textValue6 = false
  -- Beginner: result below is currentVehicle.
  workValue4 = workValue4(tableHelper, textValue6)
  tableHelper = GetOffsetFromEntityInWorldCoords
  textValue6 = workValue4
  stringHelper2 = 0.0
  workValue7 = 1.0
  numberValue6 = 0.3
  tableHelper = tableHelper(textValue6, stringHelper2, workValue7, numberValue6)
  textValue6 = GetOffsetFromEntityInWorldCoords
  stringHelper2 = workValue4
  workValue7 = 0.0
  numberValue6 = arg2
  numberValue7 = 0.0
  textValue6 = textValue6(stringHelper2, workValue7, numberValue6, numberValue7)
  stringHelper2 = _ENV
  workValue7 = "StartExpensiveSynchronousShapeTestLosProbe"
  stringHelper2 = stringHelper2[workValue7]
  workValue7 = tableHelper.x
  numberValue6 = tableHelper.y
  numberValue7 = tableHelper.z
  numberValue9 = textValue6.x
  numberValue = textValue6.y
  cmgCall = textValue6.z
  numberValue3 = 10
  workValue = workValue4
  stringHelper = 0
  stringHelper2 = stringHelper2(workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper)
  workValue7 = GetShapeTestResult
  numberValue6 = stringHelper2
  workValue7, numberValue6, numberValue7, numberValue9, numberValue = workValue7(numberValue6)
  if numberValue > 0 then
    cmgCall = IsEntityAVehicle
    numberValue3 = numberValue
    cmgCall = cmgCall(numberValue3)
    if cmgCall then
      cmgCall = CMG
      cmgCall = cmgCall.getFlatLicensePlate
      numberValue3 = GetVehicleNumberPlateText
      workValue = numberValue
      numberValue3, workValue, stringHelper, textValue, textValue2, flag3 = numberValue3(workValue)
      cmgCall = cmgCall(numberValue3, workValue, stringHelper, textValue, textValue2, flag3)
      if nil ~= cmgCall then
        numberValue3 = dataTable3
        numberValue3 = numberValue3[cmgCall]
        if nil ~= numberValue3 then
          numberValue3 = dataTable3
          numberValue3 = numberValue3[cmgCall]
          workValue = flag5
          if not workValue then
            workValue = PlaySoundFrontend
            stringHelper = -1
            textValue = "BEEP_GREEN"
            textValue2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
            flag3 = true
            workValue(stringHelper, textValue, textValue2, flag3)
          end
          workValue = tCMG
          workValue = workValue.notify
          stringHelper = string
          stringHelper = stringHelper.format
          textValue = "~r~ANPR Alert~w~: Plate ~b~%s ~w~is flagged for:~b~~n~%s"
          textValue2 = cmgCall
          flag3 = numberValue3
          stringHelper, textValue, textValue2, flag3 = stringHelper(textValue, textValue2, flag3)
          -- Beginner: Show a notification to the player.
          workValue(stringHelper, textValue, textValue2, flag3)
          workValue = true
          flag5 = workValue
          workValue = SetTimeout
          stringHelper = 10000
          function textValue()
            local flag2, workValue3
            flag2 = false
            flag5 = flag2
          end
          workValue(stringHelper, textValue)
        end
      end
      return numberValue
  end
  else
    cmgCall = nil
    return cmgCall
  end
end
function numberValue5(arg1)
  local arg2, workValue4, tableHelper, textValue6, stringHelper2
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  arg2, workValue4 = arg2()
  if 0 ~= arg2 and workValue4 then
    tableHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    tableHelper = tableHelper()
    textValue6 = numberValue8
    tableHelper = tableHelper - textValue6
    textValue6 = 10000
    if tableHelper > textValue6 then
      tableHelper = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      tableHelper = tableHelper()
      numberValue8 = tableHelper
      tableHelper = TriggerServerEvent
      textValue6 = "920f4c13e9"
      stringHelper2 = arg1[1]
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "920f4c13e9".
      tableHelper(textValue6, stringHelper2)
    end
  end
end
dataTable2 = Citizen
dataTable2 = dataTable2.CreateThread
function cmgCall2()
  local arg1, arg2, workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue
  arg1 = DecorRegister
  arg2 = "4da4f2889b"
  workValue4 = 2
  arg1(arg2, workValue4)
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, workValue4, tableHelper = arg1(arg2)
  for textValue6, stringHelper2 in arg1, arg2, workValue4, tableHelper do
    workValue7 = CMG
    workValue7 = workValue7.createArea
    numberValue6 = "anpr_"
    numberValue7 = textValue6
    numberValue6 = numberValue6 .. numberValue7
    numberValue7 = stringHelper2
    numberValue9 = 28.0
    numberValue = 4.0
    cmgCall = numberValue5
    function numberValue3()
      local flag2, workValue3
    end
    function workValue()
      local flag2, workValue3
    end
    stringHelper = {}
    textValue = textValue6
    stringHelper[1] = textValue
    -- Beginner: Create an interaction area around a world position.
    workValue7(numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper)
  end
  while true do
    arg1 = flag
    if arg1 then
      arg1 = numberValue2
      arg1 = arg1()
      vector3Builder = arg1
      arg1 = vector3Builder
      if arg1 then
        arg1 = numberValue4
        arg2 = "front"
        arg1 = arg1(arg2)
        workValue5 = arg1
        arg1 = workValue5
        if arg1 then
          arg1 = flag4
          if not arg1 then
            arg1 = CMG
            arg1 = arg1.getFlatLicensePlate
            arg2 = GetVehicleNumberPlateText
            workValue4 = workValue5
            arg2, workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue = arg2(workValue4)
            arg1 = arg1(arg2, workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue)
            if not arg1 then
              arg1 = "N/A"
            end
            textValue4 = arg1
            arg1 = GetLabelText
            arg2 = GetDisplayNameFromVehicleModel
            workValue4 = GetEntityModel
            tableHelper = workValue5
            workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue = workValue4(tableHelper)
            arg2, workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue = arg2(workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue)
            arg1 = arg1(arg2, workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue)
            arg2 = math
            arg2 = arg2.ceil
            workValue4 = GetEntitySpeed
            tableHelper = workValue5
            -- Beginner: result below is speed.
            workValue4 = workValue4(tableHelper)
            workValue4 = workValue4 * 2.236936
            arg2 = arg2(workValue4)
            workValue4 = CMG
            workValue4 = workValue4.uiSendMessage
            tableHelper = {}
            tableHelper.anprSetFront = true
            textValue6 = textValue4
            tableHelper.plate = textValue6
            tableHelper.model = arg1
            tableHelper.speed = arg2
            workValue4(tableHelper)
          end
        end
        arg1 = numberValue4
        arg2 = "rear"
        arg1 = arg1(arg2)
        workValue6 = arg1
        arg1 = workValue6
        if arg1 then
          arg1 = flag4
          if not arg1 then
            arg1 = CMG
            arg1 = arg1.getFlatLicensePlate
            arg2 = GetVehicleNumberPlateText
            workValue4 = workValue6
            arg2, workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue = arg2(workValue4)
            arg1 = arg1(arg2, workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue)
            if not arg1 then
              arg1 = "N/A"
            end
            textValue5 = arg1
            arg1 = GetLabelText
            arg2 = GetDisplayNameFromVehicleModel
            workValue4 = GetEntityModel
            tableHelper = workValue6
            workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue = workValue4(tableHelper)
            arg2, workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue = arg2(workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue)
            arg1 = arg1(arg2, workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6, numberValue7, numberValue9, numberValue, cmgCall, numberValue3, workValue, stringHelper, textValue)
            arg2 = math
            arg2 = arg2.ceil
            workValue4 = GetEntitySpeed
            tableHelper = workValue6
            -- Beginner: result below is speed.
            workValue4 = workValue4(tableHelper)
            workValue4 = workValue4 * 2.236936
            arg2 = arg2(workValue4)
            workValue4 = CMG
            workValue4 = workValue4.uiSendMessage
            tableHelper = {}
            tableHelper.anprSetRear = true
            textValue6 = textValue5
            tableHelper.plate = textValue6
            tableHelper.model = arg1
            tableHelper.speed = arg2
            workValue4(tableHelper)
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 250
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
dataTable2(cmgCall2)
function dataTable2()
  local arg1, arg2
  arg1 = flag
  if arg1 then
    arg1 = vector3Builder
    if arg1 then
      arg1 = flag6
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.uiSendMessage
        arg2 = {}
        arg2.anprShow = true
        arg1(arg2)
        arg1 = true
        flag6 = arg1
      end
  end
  else
    arg1 = flag6
    if arg1 then
      arg1 = CMG
      arg1 = arg1.uiSendMessage
      arg2 = {}
      arg2.anprHide = true
      arg1(arg2)
      arg1 = false
      flag6 = arg1
    end
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
eventRegistration = dataTable2
textValue3 = "ANPR"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(eventRegistration, textValue3)
cmgCall2 = RegisterNetEvent
eventRegistration = "42d0ce93ae"
-- Beginner: this function handles network event "42d0ce93ae".
function textValue3(arg1)
  local arg2
  dataTable3 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "42d0ce93ae".
cmgCall2(eventRegistration, textValue3)
cmgCall2 = RegisterNetEvent
eventRegistration = "66486b9576"
-- Beginner: this function handles network event "66486b9576".
function textValue3(arg1, arg2)
  local workValue4, tableHelper, textValue6, stringHelper2, workValue7
  workValue4 = NetworkDoesNetworkIdExist
  tableHelper = arg1
  workValue4 = workValue4(tableHelper)
  if workValue4 then
    workValue4 = NetworkGetEntityFromNetworkId
    tableHelper = arg1
    workValue4 = workValue4(tableHelper)
    if 0 ~= workValue4 then
      tableHelper = NetworkHasControlOfEntity
      textValue6 = workValue4
      tableHelper = tableHelper(textValue6)
      if tableHelper then
        if arg2 then
          tableHelper = DecorSetBool
          textValue6 = workValue4
          stringHelper2 = "4da4f2889b"
          workValue7 = true
          tableHelper(textValue6, stringHelper2, workValue7)
        else
          tableHelper = DecorRemove
          textValue6 = workValue4
          stringHelper2 = "4da4f2889b"
          tableHelper(textValue6, stringHelper2)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "66486b9576".
cmgCall2(eventRegistration, textValue3)
cmgCall2 = false
eventRegistration = RegisterNetEvent
textValue3 = "920f4c13e9"
-- Beginner: this function handles network event "920f4c13e9".
function workValue2(arg1, arg2)
  local workValue4, tableHelper, textValue6, stringHelper2, workValue7, numberValue6
  workValue4 = dataTable3
  workValue4 = workValue4[arg1]
  if workValue4 then
    workValue4 = CMG
    workValue4 = workValue4.uiSendMessage
    tableHelper = {}
    tableHelper.anprSetFixed = true
    tableHelper.plate = arg1
    tableHelper.location = arg2
    textValue6 = string
    textValue6 = textValue6.sub
    stringHelper2 = dataTable3
    stringHelper2 = stringHelper2[arg1]
    workValue7 = 1
    numberValue6 = 20
    textValue6 = textValue6(stringHelper2, workValue7, numberValue6)
    tableHelper.marker = textValue6
    workValue4(tableHelper)
    workValue4 = cmgCall2
    if not workValue4 then
      workValue4 = true
      cmgCall2 = workValue4
      workValue4 = CMG
      workValue4 = workValue4.uiSendMessage
      tableHelper = {}
      tableHelper.anprFlashFixed = true
      workValue4(tableHelper)
      workValue4 = Citizen
      workValue4 = workValue4.Wait
      tableHelper = 2000
      workValue4(tableHelper)
      workValue4 = false
      cmgCall2 = workValue4
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "920f4c13e9".
eventRegistration(textValue3, workValue2)