--[[
    LEVEL 1 BEGINNER GUIDE — Anpr
    ==================================

    File: cmg/prod/client/police/cl_anpr.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Anpr feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 16
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
local stateFlag, stateFlag4, text4, text5, workingValue5, workingValue6, dataCollection3, stateFlag5, stateFlag6, number8, dataCollection, createVector3, number2, number4, number5, dataCollection2, cmgOperation2, eventHandler, text3, workingValue2
stateFlag = true
stateFlag4 = false
text4 = ""
text5 = ""
workingValue5 = nil
workingValue6 = nil
dataCollection3 = {}
stateFlag5 = false
stateFlag6 = false
number8 = 0
dataCollection = {}
createVector3 = vector3
number2 = -763.85
number4 = -2182.47
number5 = 15.26
createVector3 = createVector3(number2, number4, number5)
dataCollection["New Empire Way"] = createVector3
createVector3 = vector3
number2 = 814.19
number4 = -2623.73
number5 = 52.42
createVector3 = createVector3(number2, number4, number5)
dataCollection["Elysian Fields FWY Bridge"] = createVector3
createVector3 = vector3
number2 = -498.72
number4 = -2265.92
number5 = 61.43
createVector3 = createVector3(number2, number4, number5)
dataCollection["La Puerta FWY Bridge"] = createVector3
createVector3 = vector3
number2 = 1573.21
number4 = -983.65
number5 = 59.78
createVector3 = createVector3(number2, number4, number5)
dataCollection["Palomino FWY 1"] = createVector3
createVector3 = vector3
number2 = 1307.31
number4 = 599.01
number5 = 80.05
createVector3 = createVector3(number2, number4, number5)
dataCollection["Los Santos FWY 1"] = createVector3
createVector3 = vector3
number2 = 2118.76
number4 = 1362.79
number5 = 75.37
createVector3 = createVector3(number2, number4, number5)
dataCollection["Palomino FWY 2"] = createVector3
createVector3 = vector3
number2 = 2113.76
number4 = 2670.4
number5 = 50.46
createVector3 = createVector3(number2, number4, number5)
dataCollection["Senora FWY 1"] = createVector3
createVector3 = vector3
number2 = -2171.84
number4 = -345.79
number5 = 13.18
createVector3 = createVector3(number2, number4, number5)
dataCollection["West Eclipse Blvd/Great Ocean HWY"] = createVector3
createVector3 = vector3
number2 = -2720.0
number4 = 2284.16
number5 = 19.15
createVector3 = createVector3(number2, number4, number5)
dataCollection["Great Ocean HWY/Route 68"] = createVector3
createVector3 = vector3
number2 = -396.31
number4 = 5976.88
number5 = 31.66
createVector3 = createVector3(number2, number4, number5)
dataCollection["Great Ocean HWY/Paleto Blvd"] = createVector3
createVector3 = vector3
number2 = 2793.14
number4 = 4408.23
number5 = 49.03
createVector3 = createVector3(number2, number4, number5)
dataCollection["East Joshua Road/Senora FWY"] = createVector3
createVector3 = vector3
number2 = -1214.03
number4 = -697.71
number5 = 10.9
createVector3 = createVector3(number2, number4, number5)
dataCollection["Del Perro Fwy Tunnel"] = createVector3
createVector3 = vector3
number2 = 1064.87
number4 = -1540.35
number5 = 28.19
createVector3 = createVector3(number2, number4, number5)
dataCollection["Elysian Fields Fwy 1"] = createVector3
createVector3 = vector3
number2 = 317.39
number4 = 1003.02
number5 = 210.36
createVector3 = createVector3(number2, number4, number5)
dataCollection["Baytree Canyon Rd/Marlowe Dr"] = createVector3
createVector3 = vector3
number2 = -3103.37
number4 = 1184.33
number5 = 20.16
createVector3 = createVector3(number2, number4, number5)
dataCollection["Great Ocean Hway/Banham Canyon Dr"] = createVector3
createVector3 = vector3
number2 = 727.53
number4 = -2784.06
number5 = 6.25
createVector3 = createVector3(number2, number4, number5)
dataCollection["Buccaneer Way (Port)"] = createVector3
createVector3 = vector3
number2 = -402.67
number4 = -784.82
number5 = 36.81
createVector3 = createVector3(number2, number4, number5)
dataCollection["La Puerta Fwy 1"] = createVector3
createVector3 = vector3
number2 = -756.0
number4 = -1732.56
number5 = 29.15
createVector3 = createVector3(number2, number4, number5)
dataCollection["Dutch London St/La Puerta"] = createVector3
createVector3 = vector3
number2 = 2437.49
number4 = -183.21
number5 = 87.49
createVector3 = createVector3(number2, number4, number5)
dataCollection["Palamino Fwy 3"] = createVector3
createVector3 = vector3
number2 = -149.04
number4 = -1183.77
number5 = 37.13
createVector3 = createVector3(number2, number4, number5)
dataCollection["Olympic Fwy (Above Power St)"] = createVector3
createVector3 = vector3
number2 = 230.74
number4 = -1236.45
number5 = 38.02
createVector3 = createVector3(number2, number4, number5)
dataCollection["Olympic Fwy (Above Strawberry Ave)"] = createVector3
createVector3 = vector3
number2 = 902.12
number4 = 178.07
number5 = 75.03
createVector3 = createVector3(number2, number4, number5)
dataCollection["Los Santos Freeway 2"] = createVector3
createVector3 = vector3
number2 = -921.26
number4 = -542.54
number5 = 19.01
createVector3 = createVector3(number2, number4, number5)
dataCollection["Del Perro Fwy (Under Movie Star Way)"] = createVector3
createVector3 = vector3
number2 = 864.89
number4 = -699.25
number5 = 42.49
createVector3 = createVector3(number2, number4, number5)
dataCollection["Del Perro Fwy 2"] = createVector3
createVector3 = vector3
number2 = -404.82
number4 = -1289.68
number5 = 21.19
createVector3 = createVector3(number2, number4, number5)
dataCollection["La Puerta Fwy (Lower)"] = createVector3
createVector3 = vector3
number2 = -386.18
number4 = -1829.63
number5 = 21.39
createVector3 = createVector3(number2, number4, number5)
dataCollection["Davis Ave/Alta St"] = createVector3
createVector3 = vector3
number2 = -1549.77
number4 = -801.19
number5 = 13.15
createVector3 = createVector3(number2, number4, number5)
dataCollection["Equality Way (Exit)"] = createVector3
createVector3 = vector3
number2 = -1577.42
number4 = -726.07
number5 = 18.55
createVector3 = createVector3(number2, number4, number5)
dataCollection["Equality Way (on-slip)"] = createVector3
createVector3 = vector3
number2 = -3029.89
number4 = 222.96
number5 = 15.89
createVector3 = createVector3(number2, number4, number5)
dataCollection["Great Ocean Hwy/Inseno Rd 1"] = createVector3
createVector3 = vector3
number2 = -2479.27
number4 = 3660.72
number5 = 13.55
createVector3 = createVector3(number2, number4, number5)
dataCollection["Great Ocean Hwy/Zancudo Road"] = createVector3
createVector3 = vector3
number2 = -2592.38
number4 = 3120.09
number5 = 14.76
createVector3 = createVector3(number2, number4, number5)
dataCollection["Great Ocean Hwy/Zancudo Tunnel"] = createVector3
createVector3 = vector3
number2 = -1903.28
number4 = 4614.71
number5 = 56.8
createVector3 = createVector3(number2, number4, number5)
dataCollection["Great Ocean Hwy/Raton Canyon Bridge"] = createVector3
createVector3 = vector3
number2 = -771.77
number4 = 5491.96
number5 = 34.46
createVector3 = createVector3(number2, number4, number5)
dataCollection["Great Ocean Hwy/Procopio Promenade"] = createVector3
createVector3 = "Great Ocean Hwy/Paleto Bay Petrol Station"
number2 = vector3
number4 = 179.73
number5 = 6582.76
dataCollection2 = 31.63
number2 = number2(number4, number5, dataCollection2)
dataCollection[createVector3] = number2
createVector3 = vector3
number2 = 149.27
number4 = 6527.46
number5 = 31.46
createVector3 = createVector3(number2, number4, number5)
dataCollection["Great Ocean Hwy/Procopio Dr"] = createVector3
createVector3 = vector3
number2 = 2119.48
number4 = 6025.09
number5 = 50.85
createVector3 = createVector3(number2, number4, number5)
dataCollection["Senora Fwy/Braddock Pass (Tunnel)"] = createVector3
createVector3 = vector3
number2 = 2399.84
number4 = 5788.28
number5 = 45.75
createVector3 = createVector3(number2, number4, number5)
dataCollection["Senora Fwy/Braddock Pass"] = createVector3
createVector3 = vector3
number2 = 2625.67
number4 = 5110.9
number5 = 44.64
createVector3 = createVector3(number2, number4, number5)
dataCollection["Senora Fwy/Union Rd"] = createVector3
createVector3 = vector3
number2 = 2680.09
number4 = 3178.76
number5 = 52.31
createVector3 = createVector3(number2, number4, number5)
dataCollection["Senora Fwy 2 (Petrol Station)"] = createVector3
createVector3 = vector3
number2 = 2397.76
number4 = 1210.39
number5 = 58.92
createVector3 = createVector3(number2, number4, number5)
dataCollection["Senora Way/Palomino Fwy"] = createVector3
createVector3 = vector3
number2 = 1712.54
number4 = 1499.18
number5 = 84.7
createVector3 = createVector3(number2, number4, number5)
dataCollection["Los Santos Fwy 2"] = createVector3
createVector3 = vector3
number2 = 1880.95
number4 = 2103.13
number5 = 54.48
createVector3 = createVector3(number2, number4, number5)
dataCollection["Palomino Fwy (Senora Fwy on-slip)"] = createVector3
createVector3 = vector3
number2 = 1811.66
number4 = 2130.67
number5 = 54.47
createVector3 = createVector3(number2, number4, number5)
dataCollection["Senora Fwy (Palomino Fwy on-slip)"] = createVector3
createVector3 = vector3
number2 = 1769.02
number4 = 2052.5
number5 = 67.2
createVector3 = createVector3(number2, number4, number5)
dataCollection["Senora Fwy (Los Santos Fwy on-slip)"] = createVector3
createVector3 = vector3
number2 = 1790.68
number4 = 1883.54
number5 = 79.1
createVector3 = createVector3(number2, number4, number5)
dataCollection["Los Santos Fwy (Senora Fwy on-slip)"] = createVector3
createVector3 = vector3
number2 = 1786.31
number4 = 1601.29
number5 = 83.73
createVector3 = createVector3(number2, number4, number5)
dataCollection["Los Santos Fwy (Palomino Fwy on-slip)"] = createVector3
createVector3 = vector3
number2 = 2447.68
number4 = 953.36
number5 = 87.08
createVector3 = createVector3(number2, number4, number5)
dataCollection["Palomino Fwy (Jct Senora Way)"] = createVector3
createVector3 = vector3
number2 = 2585.63
number4 = 360.6
number5 = 108.24
createVector3 = createVector3(number2, number4, number5)
dataCollection["Palomino Fwy Petrol Station"] = createVector3
createVector3 = vector3
number2 = 770.69
number4 = -1195.34
number5 = 44.95
createVector3 = createVector3(number2, number4, number5)
dataCollection["Olympic Fwy (Over Popular St)"] = createVector3
createVector3 = vector3
number2 = 1240.24
number4 = -2051.41
number5 = 44.14
createVector3 = createVector3(number2, number4, number5)
dataCollection["Elysian Fields Fwy/El Rancho Blvd"] = createVector3
createVector3 = vector3
number2 = 688.11
number4 = -166.98
number5 = 48.05
createVector3 = createVector3(number2, number4, number5)
dataCollection["Los Santos Fwy (Under Bridge St)"] = createVector3
createVector3 = vector3
number2 = -623.16
number4 = -1720.22
number5 = 37.06
createVector3 = createVector3(number2, number4, number5)
dataCollection["La Puerta Fwy (Over South Arsenal St)"] = createVector3
createVector3 = vector3
number2 = -163.66
number4 = -540.73
number5 = 28.02
createVector3 = createVector3(number2, number4, number5)
dataCollection["La Puerta Fwy/Del Perro Fwy on-slip"] = createVector3
createVector3 = CMG

-- === HELPER FUNCTION (decompiler name: number2; parameters: localValue1) ===
function number2(localValue1)
  local localValue2, workingValue4, tableHelper
  localValue2 = CMG
  localValue2 = localValue2.getFlatLicensePlate
  workingValue4 = GetVehicleNumberPlateText
  tableHelper = localValue1
  workingValue4, tableHelper = workingValue4(tableHelper)
  localValue2 = localValue2(workingValue4, tableHelper)
  if not localValue2 then
    localValue2 = "N/A"
  end
  workingValue4 = dataCollection3
  workingValue4 = workingValue4[localValue2]
  if workingValue4 then
    workingValue4 = true
    return workingValue4
  else
    workingValue4 = false
    return workingValue4
  end
end
createVector3.isVehicleFlagged = number2
createVector3 = TriggerEvent
number2 = "chat:addSuggestion"
number4 = "/flagf"
number5 = "Flags the front vehicle"
dataCollection2 = {}
cmgOperation2 = {}
cmgOperation2.name = "Reason"
cmgOperation2.help = "Flag reason"
dataCollection2[1] = cmgOperation2
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
createVector3(number2, number4, number5, dataCollection2)
createVector3 = TriggerEvent
number2 = "chat:addSuggestion"
number4 = "/flagr"
number5 = "Flags the rear vehicle"
dataCollection2 = {}
cmgOperation2 = {}
cmgOperation2.name = "Reason"
cmgOperation2.help = "Flag reason"
dataCollection2[1] = cmgOperation2
createVector3(number2, number4, number5, dataCollection2)
createVector3 = RegisterCommand
number2 = "flagf"
-- Beginner: this function is the command handler for "flagf".

-- === HELPER FUNCTION (decompiler name: number4; parameters: localValue1, localValue2) ===
function number4(localValue1, localValue2)
  local workingValue4, tableHelper, text6, stringHelper2, workingValue7
  workingValue4 = text4
  if "" ~= workingValue4 then
    workingValue4 = ""
    tableHelper = table
    tableHelper = tableHelper.count
    text6 = localValue2
    -- Beginner: result below is count.
    tableHelper = tableHelper(text6)
    if 0 ~= tableHelper then
      tableHelper = table
      tableHelper = tableHelper.concat
      text6 = localValue2
      stringHelper2 = " "
      tableHelper = tableHelper(text6, stringHelper2)
      workingValue4 = tableHelper
      tableHelper = TriggerServerEvent
      text6 = "49f6eff747"
      stringHelper2 = string
      stringHelper2 = stringHelper2.upper
      workingValue7 = text4
      stringHelper2 = stringHelper2(workingValue7)
      workingValue7 = workingValue4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "49f6eff747".
      tableHelper(text6, stringHelper2, workingValue7)
    else
      tableHelper = tCMG
      tableHelper = tableHelper.notify
      text6 = "~r~Error~w~: You must provide a valid flag reason."
      -- Beginner: Show a notification to the player.
      tableHelper(text6)
    end
  end
end
number5 = false
-- Beginner: Register a chat/console command. Event/command: "flagf".
createVector3(number2, number4, number5)
createVector3 = RegisterCommand
number2 = "flagr"
-- Beginner: this function is the command handler for "flagr".

-- === HELPER FUNCTION (decompiler name: number4; parameters: localValue1, localValue2) ===
function number4(localValue1, localValue2)
  local workingValue4, tableHelper, text6, stringHelper2, workingValue7
  workingValue4 = text5
  if "" ~= workingValue4 then
    workingValue4 = ""
    tableHelper = table
    tableHelper = tableHelper.count
    text6 = localValue2
    -- Beginner: result below is count.
    tableHelper = tableHelper(text6)
    if 0 ~= tableHelper then
      tableHelper = table
      tableHelper = tableHelper.concat
      text6 = localValue2
      stringHelper2 = " "
      tableHelper = tableHelper(text6, stringHelper2)
      workingValue4 = tableHelper
      tableHelper = TriggerServerEvent
      text6 = "49f6eff747"
      stringHelper2 = string
      stringHelper2 = stringHelper2.upper
      workingValue7 = text5
      stringHelper2 = stringHelper2(workingValue7)
      workingValue7 = workingValue4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "49f6eff747".
      tableHelper(text6, stringHelper2, workingValue7)
    else
      tableHelper = tCMG
      tableHelper = tableHelper.notify
      text6 = "~r~Error~w~: You must provide a valid flag reason."
      -- Beginner: Show a notification to the player.
      tableHelper(text6)
    end
  end
end
number5 = false
-- Beginner: Register a chat/console command. Event/command: "flagr".
createVector3(number2, number4, number5)
createVector3 = RegisterCommand
number2 = "anpr"
-- Beginner: this function is the command handler for "anpr".

-- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
function number4()
  local localValue1, localValue2
  localValue1 = stateFlag
  localValue1 = not localValue1
  stateFlag = localValue1
end
number5 = false
createVector3(number2, number4, number5)
createVector3 = RegisterCommand
number2 = "lockanpr"
-- Beginner: this function is the command handler for "lockanpr".

-- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
function number4()
  local localValue1, localValue2
  localValue1 = stateFlag4
  localValue1 = not localValue1
  stateFlag4 = localValue1
  localValue1 = stateFlag4
  if localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.notify
    localValue2 = "ANPR display ~g~locked~w~."
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
  else
    localValue1 = tCMG
    localValue1 = localValue1.notify
    localValue2 = "ANPR display ~r~unlocked~w~."
    localValue1(localValue2)
  end
end
number5 = false
-- Beginner: Register a chat/console command. Event/command: "lockanpr".
createVector3(number2, number4, number5)
createVector3 = false

-- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
function number2()
  local localValue1, localValue2, workingValue4
  localValue1 = IsPedInAnyVehicle
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  workingValue4 = false
  localValue1 = localValue1(localValue2, workingValue4)
  if localValue1 then
    localValue1 = GetVehicleClass
    localValue2 = CMG
    localValue2 = localValue2.getPlayerVehicle
    localValue2, workingValue4 = localValue2()
    localValue1 = localValue1(localValue2, workingValue4)
    if 18 == localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.hasClientPermission
      localValue2 = "police.onduty.permission"
      localValue1 = localValue1(localValue2)
      if localValue1 then
        localValue1 = true
        return localValue1
      end
    end
  end
  localValue1 = false
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: number4; parameters: localValue1) ===
function number4(localValue1)
  local localValue2, workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text, text2, stateFlag3
  localValue2 = nil
  if "front" == localValue1 then
    localValue2 = 50.0
  elseif "rear" == localValue1 then
    localValue2 = -50.0
  end
  workingValue4 = GetVehiclePedIsIn
  tableHelper = CMG
  tableHelper = tableHelper.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  tableHelper = tableHelper()
  text6 = false
  -- Beginner: result below is currentVehicle.
  workingValue4 = workingValue4(tableHelper, text6)
  tableHelper = GetOffsetFromEntityInWorldCoords
  text6 = workingValue4
  stringHelper2 = 0.0
  workingValue7 = 1.0
  number6 = 0.3
  tableHelper = tableHelper(text6, stringHelper2, workingValue7, number6)
  text6 = GetOffsetFromEntityInWorldCoords
  stringHelper2 = workingValue4
  workingValue7 = 0.0
  number6 = localValue2
  number7 = 0.0
  text6 = text6(stringHelper2, workingValue7, number6, number7)
  stringHelper2 = _ENV
  workingValue7 = "StartExpensiveSynchronousShapeTestLosProbe"
  stringHelper2 = stringHelper2[workingValue7]
  workingValue7 = tableHelper.x
  number6 = tableHelper.y
  number7 = tableHelper.z
  number9 = text6.x
  number = text6.y
  cmgOperation = text6.z
  number3 = 10
  workingValue = workingValue4
  stringHelper = 0
  stringHelper2 = stringHelper2(workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper)
  workingValue7 = GetShapeTestResult
  number6 = stringHelper2
  workingValue7, number6, number7, number9, number = workingValue7(number6)
  if number > 0 then
    cmgOperation = IsEntityAVehicle
    number3 = number
    cmgOperation = cmgOperation(number3)
    if cmgOperation then
      cmgOperation = CMG
      cmgOperation = cmgOperation.getFlatLicensePlate
      number3 = GetVehicleNumberPlateText
      workingValue = number
      number3, workingValue, stringHelper, text, text2, stateFlag3 = number3(workingValue)
      cmgOperation = cmgOperation(number3, workingValue, stringHelper, text, text2, stateFlag3)
      if nil ~= cmgOperation then
        number3 = dataCollection3
        number3 = number3[cmgOperation]
        if nil ~= number3 then
          number3 = dataCollection3
          number3 = number3[cmgOperation]
          workingValue = stateFlag5
          if not workingValue then
            workingValue = PlaySoundFrontend
            stringHelper = -1
            text = "BEEP_GREEN"
            text2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
            stateFlag3 = true
            workingValue(stringHelper, text, text2, stateFlag3)
          end
          workingValue = tCMG
          workingValue = workingValue.notify
          stringHelper = string
          stringHelper = stringHelper.format
          text = "~r~ANPR Alert~w~: Plate ~b~%s ~w~is flagged for:~b~~n~%s"
          text2 = cmgOperation
          stateFlag3 = number3
          stringHelper, text, text2, stateFlag3 = stringHelper(text, text2, stateFlag3)
          -- Beginner: Show a notification to the player.
          workingValue(stringHelper, text, text2, stateFlag3)
          workingValue = true
          stateFlag5 = workingValue
          workingValue = SetTimeout
          stringHelper = 10000

          -- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
          function text()
            local stateFlag2, workingValue3
            stateFlag2 = false
            stateFlag5 = stateFlag2
          end
          workingValue(stringHelper, text)
        end
      end
      return number
  end
  else
    cmgOperation = nil
    return cmgOperation
  end
end

-- === HELPER FUNCTION (decompiler name: number5; parameters: localValue1) ===
function number5(localValue1)
  local localValue2, workingValue4, tableHelper, text6, stringHelper2
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  localValue2, workingValue4 = localValue2()
  if 0 ~= localValue2 and workingValue4 then
    tableHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    tableHelper = tableHelper()
    text6 = number8
    tableHelper = tableHelper - text6
    text6 = 10000
    if tableHelper > text6 then
      tableHelper = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      tableHelper = tableHelper()
      number8 = tableHelper
      tableHelper = TriggerServerEvent
      text6 = "920f4c13e9"
      stringHelper2 = localValue1[1]
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "920f4c13e9".
      tableHelper(text6, stringHelper2)
    end
  end
end
dataCollection2 = Citizen
dataCollection2 = dataCollection2.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text
  localValue1 = DecorRegister
  localValue2 = "4da4f2889b"
  workingValue4 = 2
  localValue1(localValue2, workingValue4)
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, workingValue4, tableHelper = localValue1(localValue2)
  for text6, stringHelper2 in localValue1, localValue2, workingValue4, tableHelper do
    workingValue7 = CMG
    workingValue7 = workingValue7.createArea
    number6 = "anpr_"
    number7 = text6
    number6 = number6 .. number7
    number7 = stringHelper2
    number9 = 28.0
    number = 4.0
    cmgOperation = number5

    -- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
    function number3()
      local stateFlag2, workingValue3
    end

    -- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
    function workingValue()
      local stateFlag2, workingValue3
    end
    stringHelper = {}
    text = text6
    stringHelper[1] = text
    -- Beginner: Create an interaction area around a world position.
    workingValue7(number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper)
  end
  while true do
    localValue1 = stateFlag
    if localValue1 then
      localValue1 = number2
      localValue1 = localValue1()
      createVector3 = localValue1
      localValue1 = createVector3
      if localValue1 then
        localValue1 = number4
        localValue2 = "front"
        localValue1 = localValue1(localValue2)
        workingValue5 = localValue1
        localValue1 = workingValue5
        if localValue1 then
          localValue1 = stateFlag4
          if not localValue1 then
            localValue1 = CMG
            localValue1 = localValue1.getFlatLicensePlate
            localValue2 = GetVehicleNumberPlateText
            workingValue4 = workingValue5
            localValue2, workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text = localValue2(workingValue4)
            localValue1 = localValue1(localValue2, workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text)
            if not localValue1 then
              localValue1 = "N/A"
            end
            text4 = localValue1
            localValue1 = GetLabelText
            localValue2 = GetDisplayNameFromVehicleModel
            workingValue4 = GetEntityModel
            tableHelper = workingValue5
            workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text = workingValue4(tableHelper)
            localValue2, workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text = localValue2(workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text)
            localValue1 = localValue1(localValue2, workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text)
            localValue2 = math
            localValue2 = localValue2.ceil
            workingValue4 = GetEntitySpeed
            tableHelper = workingValue5
            -- Beginner: result below is speed.
            workingValue4 = workingValue4(tableHelper)
            workingValue4 = workingValue4 * 2.236936
            localValue2 = localValue2(workingValue4)
            workingValue4 = CMG
            workingValue4 = workingValue4.uiSendMessage
            tableHelper = {}
            tableHelper.anprSetFront = true
            text6 = text4
            tableHelper.plate = text6
            tableHelper.model = localValue1
            tableHelper.speed = localValue2
            workingValue4(tableHelper)
          end
        end
        localValue1 = number4
        localValue2 = "rear"
        localValue1 = localValue1(localValue2)
        workingValue6 = localValue1
        localValue1 = workingValue6
        if localValue1 then
          localValue1 = stateFlag4
          if not localValue1 then
            localValue1 = CMG
            localValue1 = localValue1.getFlatLicensePlate
            localValue2 = GetVehicleNumberPlateText
            workingValue4 = workingValue6
            localValue2, workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text = localValue2(workingValue4)
            localValue1 = localValue1(localValue2, workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text)
            if not localValue1 then
              localValue1 = "N/A"
            end
            text5 = localValue1
            localValue1 = GetLabelText
            localValue2 = GetDisplayNameFromVehicleModel
            workingValue4 = GetEntityModel
            tableHelper = workingValue6
            workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text = workingValue4(tableHelper)
            localValue2, workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text = localValue2(workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text)
            localValue1 = localValue1(localValue2, workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6, number7, number9, number, cmgOperation, number3, workingValue, stringHelper, text)
            localValue2 = math
            localValue2 = localValue2.ceil
            workingValue4 = GetEntitySpeed
            tableHelper = workingValue6
            -- Beginner: result below is speed.
            workingValue4 = workingValue4(tableHelper)
            workingValue4 = workingValue4 * 2.236936
            localValue2 = localValue2(workingValue4)
            workingValue4 = CMG
            workingValue4 = workingValue4.uiSendMessage
            tableHelper = {}
            tableHelper.anprSetRear = true
            text6 = text5
            tableHelper.plate = text6
            tableHelper.model = localValue1
            tableHelper.speed = localValue2
            workingValue4(tableHelper)
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 250
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
dataCollection2(cmgOperation2)

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = createVector3
    if localValue1 then
      localValue1 = stateFlag6
      if not localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.uiSendMessage
        localValue2 = {}
        localValue2.anprShow = true
        localValue1(localValue2)
        localValue1 = true
        stateFlag6 = localValue1
      end
  end
  else
    localValue1 = stateFlag6
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.uiSendMessage
      localValue2 = {}
      localValue2.anprHide = true
      localValue1(localValue2)
      localValue1 = false
      stateFlag6 = localValue1
    end
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
eventHandler = dataCollection2
text3 = "ANPR"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(eventHandler, text3)
cmgOperation2 = RegisterNetEvent
eventHandler = "42d0ce93ae"
-- Beginner: this function handles network event "42d0ce93ae".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2
  dataCollection3 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "42d0ce93ae".
cmgOperation2(eventHandler, text3)
cmgOperation2 = RegisterNetEvent
eventHandler = "66486b9576"
-- Beginner: this function handles network event "66486b9576".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local workingValue4, tableHelper, text6, stringHelper2, workingValue7
  workingValue4 = NetworkDoesNetworkIdExist
  tableHelper = localValue1
  workingValue4 = workingValue4(tableHelper)
  if workingValue4 then
    workingValue4 = NetworkGetEntityFromNetworkId
    tableHelper = localValue1
    workingValue4 = workingValue4(tableHelper)
    if 0 ~= workingValue4 then
      tableHelper = NetworkHasControlOfEntity
      text6 = workingValue4
      tableHelper = tableHelper(text6)
      if tableHelper then
        if localValue2 then
          tableHelper = DecorSetBool
          text6 = workingValue4
          stringHelper2 = "4da4f2889b"
          workingValue7 = true
          tableHelper(text6, stringHelper2, workingValue7)
        else
          tableHelper = DecorRemove
          text6 = workingValue4
          stringHelper2 = "4da4f2889b"
          tableHelper(text6, stringHelper2)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "66486b9576".
cmgOperation2(eventHandler, text3)
cmgOperation2 = false
eventHandler = RegisterNetEvent
text3 = "920f4c13e9"
-- Beginner: this function handles network event "920f4c13e9".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local workingValue4, tableHelper, text6, stringHelper2, workingValue7, number6
  workingValue4 = dataCollection3
  workingValue4 = workingValue4[localValue1]
  if workingValue4 then
    workingValue4 = CMG
    workingValue4 = workingValue4.uiSendMessage
    tableHelper = {}
    tableHelper.anprSetFixed = true
    tableHelper.plate = localValue1
    tableHelper.location = localValue2
    text6 = string
    text6 = text6.sub
    stringHelper2 = dataCollection3
    stringHelper2 = stringHelper2[localValue1]
    workingValue7 = 1
    number6 = 20
    text6 = text6(stringHelper2, workingValue7, number6)
    tableHelper.marker = text6
    workingValue4(tableHelper)
    workingValue4 = cmgOperation2
    if not workingValue4 then
      workingValue4 = true
      cmgOperation2 = workingValue4
      workingValue4 = CMG
      workingValue4 = workingValue4.uiSendMessage
      tableHelper = {}
      tableHelper.anprFlashFixed = true
      workingValue4(tableHelper)
      workingValue4 = Citizen
      workingValue4 = workingValue4.Wait
      tableHelper = 2000
      workingValue4(tableHelper)
      workingValue4 = false
      cmgOperation2 = workingValue4
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "920f4c13e9".
eventHandler(text3, workingValue2)
