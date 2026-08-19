--[[
    LEVEL 1 BEGINNER GUIDE — Garages
    =====================================

    File: cmg/prod/client/vehicles/cl_garages.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: vehicle gameplay and vehicle systems, specifically the Garages feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 317
      * Background threads: 0
      * Always-running loops: 15
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
local workingValue, text10, number9, text12, dataCollection22, number20, text15, text16, number23, workingValue34, text4, workingValue4, workingValue6, dataCollection2, number3, number4, dataCollection3, stateFlag4, dataCollection4, dataCollection5, dataCollection6, dataCollection7, dataCollection8, workingValue11, workingValue12, createVector3, dataCollection9, dataCollection10, dataCollection11, stateFlag5, stateFlag6, dataCollection12, dataCollection13, workingValue14, dataCollection14, dataCollection15, dataCollection16, dataCollection17, workingValue16, number13, number14, dataCollection18, dataCollection19, dataCollection20, dataCollection21, number15, number16, number17, number18, stateFlag10, workingValue19, number19, cmgOperation7, cmgOperation8, eventHandler2, eventHandler3, text13, workingValue20, eventHandler4, cmgOperation9, text14, dataCollection23, dataCollection24, number21, cmgOperation10, workingValue21, workingValue22, workingValue23, cmgOperation11, number22, workingValue25, cmgOperation13, workingValue26, workingValue27, workingValue28, workingValue29, workingValue30, cmgOperation14, cmgOperation15, workingValue31, text19, workingValue32, text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5
workingValue = DecorRegister
text10 = "ac76c9d452"
number9 = 3
workingValue(text10, number9)
workingValue = DecorRegister
text10 = "0a6cf607ed"
number9 = 3
workingValue(text10, number9)
workingValue = DecorRegister
text10 = "5f7af1c5ce"
number9 = 3
workingValue(text10, number9)
workingValue = DecorRegister
text10 = "6939027d97"
number9 = 3
workingValue(text10, number9)
workingValue = DecorRegister
text10 = "12da94aa7e"
number9 = 3
workingValue(text10, number9)
workingValue = RequestScriptAudioBank
text10 = "DLC_ALARM\\ALARMPACK_ONE"
number9 = false
workingValue(text10, number9)
workingValue = CMG
workingValue = workingValue.loadModule
text10 = "cfg/cfg_garages"
-- Beginner: result below is config.
workingValue = workingValue(text10)
text10 = CMG
text10 = text10.loadModule
number9 = "cfg/cfg_lscustoms"
-- Beginner: result below is config.
text10 = text10(number9)
number9 = CMG
number9 = number9.loadModule
text12 = "cfg/cfg_vehicles"
-- Beginner: result below is config.
number9 = number9(text12)
text12 = 0
dataCollection22 = {}
number20 = 0
text15 = ""
text16 = ""
number23 = 0
workingValue34 = nil
text4 = ""
workingValue4 = nil
workingValue6 = nil
dataCollection2 = {}
number3 = 0
number4 = 0
dataCollection3 = {}
stateFlag4 = false
dataCollection4 = {}
dataCollection5 = {}
dataCollection6 = {}
dataCollection7 = {}
dataCollection8 = {}
workingValue11 = nil
workingValue12 = nil
createVector3 = vector3
dataCollection9 = 0.0
dataCollection10 = 0.0
dataCollection11 = 0.0
createVector3 = createVector3(dataCollection9, dataCollection10, dataCollection11)
dataCollection9 = {}
dataCollection10 = {}
dataCollection10.income = 0
dataCollection10.outcome = 0
dataCollection11 = {}
stateFlag5 = false
stateFlag6 = false
dataCollection12 = {}
dataCollection13 = {}
workingValue14 = nil
dataCollection14 = {}
dataCollection15 = {}
dataCollection15[0] = ""
dataCollection15[1] = ""
dataCollection15[2] = ""
dataCollection15[3] = ""
dataCollection15[4] = ""
dataCollection15[5] = ""
dataCollection15[6] = "bnr34ffeng"
dataCollection15[7] = "ta028viper"
dataCollection15[8] = "rotary7"
dataCollection15[9] = "lgcy12ferf40"
dataCollection15[10] = "v6audiea839"
dataCollection15[11] = "n55b30t0"
dataCollection15[12] = "fordvoodoo"
dataCollection15[13] = "ta103ninjah2r"
dataCollection15[14] = "gb811s2"
dataCollection15[15] = "gbarcherpro2"
dataCollection15[16] = "gbargento2f"
dataCollection15[17] = "gbargento7f"
dataCollection15[18] = "gbargento7fs"
dataCollection15[19] = "gbbanshees2"
dataCollection15[20] = "gbbisonhf"
dataCollection15[21] = "gbbisonstx"
dataCollection15[22] = "gbbriosof"
dataCollection15[23] = "gbcheetahs"
dataCollection15[24] = "gbclubxr"
dataCollection15[25] = "gbcometcl"
dataCollection15[26] = "gbcomets1t"
dataCollection15[27] = "gbcomets2r"
dataCollection15[28] = "gbcomets2rc"
dataCollection15[29] = "gbcyphergts"
dataCollection15[30] = "gbdominatorgsx"
dataCollection15[31] = "gbechelon"
dataCollection15[32] = "gbeon"
dataCollection15[33] = "gbgresleypol"
dataCollection15[34] = "gbgresleystx"
dataCollection15[35] = "gbharmann"
dataCollection15[36] = "gbhedrakombi"
dataCollection15[37] = "gbkomodagt"
dataCollection15[38] = "gbmilano"
dataCollection15[39] = "gbmogulrs"
dataCollection15[40] = "gbmojave"
dataCollection15[41] = "gbmugello"
dataCollection15[42] = "gbpolargento7f"
dataCollection15[43] = "gbpolbanshees2"
dataCollection15[44] = "gbpolbisonhf"
dataCollection15[45] = "gbpolbisonstx"
dataCollection15[46] = "gbpolclubxr"
dataCollection15[47] = "gbpolcometcl"
dataCollection15[48] = "gbpolcomets2r"
dataCollection15[49] = "gbpoldominatorgsx"
dataCollection15[50] = "gbpolechelon"
dataCollection15[51] = "gbpoleon"
dataCollection15[52] = "gbpolhedra"
dataCollection15[53] = "gbpolprospero"
dataCollection15[54] = "gbpolsentinelgts"
dataCollection15[55] = "gbpolsolace"
dataCollection15[56] = "gbpolstanierle"
dataCollection15[57] = "gbpolstarlight"
dataCollection15[58] = "gbpolsultanrsx"
dataCollection15[59] = "gbpoltahomagt"
dataCollection15[60] = "gbpoltr3s"
dataCollection15[61] = "gbpolturismogt"
dataCollection15[62] = "gbprospero"
dataCollection15[63] = "gbromulus"
dataCollection15[64] = "gbronin"
dataCollection15[65] = "gbrumina"
dataCollection15[66] = "gbsapphire"
dataCollection15[67] = "gbschlagenr"
dataCollection15[68] = "gbschrauber"
dataCollection15[69] = "gbschwartzers"
dataCollection15[70] = "gbsentinelgts"
dataCollection15[71] = "gbsolace"
dataCollection15[72] = "gbsolacev"
dataCollection15[73] = "gbstanierle"
dataCollection15[74] = "gbstarlight"
dataCollection15[75] = "gbsultanrsx"
dataCollection15[76] = "gbtahomagt"
dataCollection15[77] = "gbtaxieon"
dataCollection15[78] = "gbtr3s"
dataCollection15[79] = "gbturismogt"
dataCollection15[80] = "gbturismogts"
dataCollection15[81] = "gbvivant"
dataCollection16 = {}
dataCollection17 = {}
workingValue16 = nil
number13 = 0
number14 = 0
dataCollection18 = {}
dataCollection19 = {}
dataCollection20 = {}
dataCollection21 = {}
number15 = 10000
number16 = 1
number17 = 1
number18 = 1
stateFlag10 = true
workingValue19 = nil
number19 = 0
cmgOperation7 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: none) ===
function cmgOperation8()
  local localValue1, localValue2
  localValue1 = text12
  return localValue1
end
cmgOperation7.getLastSpawnedGarageVehicleTime = cmgOperation8
cmgOperation7 = AddEventHandler
cmgOperation8 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2) ===
function eventHandler2(localValue1, localValue2)
  local localValue3, localValue4
  if localValue2 then
    localValue3 = TriggerServerEvent
    localValue4 = "CMG:CMG.refreshPlayerGaragePermissions"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMG:CMG.refreshPlayerGaragePermissions".
    localValue3(localValue4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgOperation7(cmgOperation8, eventHandler2)
cmgOperation7 = RegisterNetEvent
cmgOperation8 = "f7c0db0592"
-- Beginner: this function handles network event "f7c0db0592".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2
  dataCollection22 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f7c0db0592".
cmgOperation7(cmgOperation8, eventHandler2)
cmgOperation7 = RegisterNetEvent
cmgOperation8 = "d9cdde6632"
-- Beginner: this function handles network event "d9cdde6632".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = dataCollection20
    iterator2[localValue6] = localValue7
  end
  localValue2 = {}
  dataCollection21 = localValue2
  localValue2 = pairs
  localValue3 = dataCollection20
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = pairs
    tableHelper2 = localValue7.vehicles
    if not tableHelper2 then
      tableHelper2 = {}
    end
    iterator2, tableHelper2, dataCollection25, workingValue2 = iterator2(tableHelper2)
    for dataCollection in iterator2, tableHelper2, dataCollection25, workingValue2 do
      iterator = dataCollection21
      iterator[dataCollection] = localValue6
    end
  end
  localValue2 = {}
  localValue3 = ipairs
  localValue4 = dataCollection18
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, iterator2 in localValue3, localValue4, localValue5, localValue6 do
    tableHelper2 = iterator2.isGangGarage
    if tableHelper2 then
      tableHelper2 = table
      tableHelper2 = tableHelper2.insert
      dataCollection25 = localValue2
      workingValue2 = localValue7
      tableHelper2(dataCollection25, workingValue2)
    end
  end
  localValue3 = #localValue2
  localValue4 = 1
  localValue5 = -1
  for localValue6 = localValue3, localValue4, localValue5 do
    localValue7 = table
    localValue7 = localValue7.remove
    iterator2 = dataCollection18
    tableHelper2 = localValue2[localValue6]
    localValue7(iterator2, tableHelper2)
  end
  localValue3 = pairs
  localValue4 = dataCollection20
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, iterator2 in localValue3, localValue4, localValue5, localValue6 do
    tableHelper2 = iterator2.gangName
    if not tableHelper2 then
      tableHelper2 = "Gang "
      dataCollection25 = localValue7
      tableHelper2 = tableHelper2 .. dataCollection25
    end
    dataCollection25 = {}
    workingValue2 = tableHelper2
    dataCollection = " Garage"
    workingValue2 = workingValue2 .. dataCollection
    dataCollection25.type = workingValue2
    dataCollection25.class = "vehicle"
    workingValue2 = {}
    dataCollection25.vehicles = workingValue2
    dataCollection25.isGangGarage = true
    dataCollection25.gangId = localValue7
    workingValue2 = pairs
    dataCollection = iterator2.vehicles
    if not dataCollection then
      dataCollection = {}
    end
    workingValue2, dataCollection, iterator, stringHelper = workingValue2(dataCollection)
    for workingValue7, stringHelper2 in workingValue2, dataCollection, iterator, stringHelper do
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.getVehicleNameFromId
      tableHelper = stringHelper2.vehicleId
      cmgOperation3 = cmgOperation3(tableHelper)
      tableHelper = table
      tableHelper = tableHelper.insert
      workingValue9 = dataCollection25.vehicles
      heading = {}
      heading.uuid = workingValue7
      workingValue10 = stringHelper2.vehicleId
      heading.vehicleId = workingValue10
      workingValue10 = cmgOperation3 or workingValue10
      if not cmgOperation3 then
        workingValue10 = stringHelper2.vehicleId
      end
      heading.name = workingValue10
      workingValue10 = stringHelper2.fuel
      heading.fuel = workingValue10
      tableHelper(workingValue9, heading)
    end
    workingValue2 = table
    workingValue2 = workingValue2.sort
    dataCollection = dataCollection25.vehicles

    -- === HELPER FUNCTION: iterator(localValue12, localValue22) ===
    function iterator(localValue12, localValue22)
      local localValue32, localValue42
      localValue32 = localValue12.name
      localValue42 = localValue22.name
      localValue32 = localValue32 < localValue42
      return localValue32
    end
    workingValue2(dataCollection, iterator)
    workingValue2 = dataCollection25.vehicles
    workingValue2 = #workingValue2
    if workingValue2 > 0 then
      workingValue2 = table
      workingValue2 = workingValue2.insert
      dataCollection = dataCollection18
      iterator = dataCollection25
      workingValue2(dataCollection, iterator)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d9cdde6632".
cmgOperation7(cmgOperation8, eventHandler2)
cmgOperation7 = RegisterNetEvent
cmgOperation8 = "758f696f69"
-- Beginner: this function handles network event "758f696f69".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2
  dataCollection4 = localValue1
end
cmgOperation7(cmgOperation8, eventHandler2)
cmgOperation7 = RegisterNetEvent
cmgOperation8 = "4074c74728"
-- Beginner: this function handles network event "4074c74728".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue2 = CMG
  localValue2 = localValue2.unpackTable
  localValue3 = localValue1
  localValue4 = {}
  localValue5 = "uuid"
  localValue6 = "vehicleName"
  localValue7 = "rentedBy"
  iterator2 = "hoursLeft"
  localValue4[1] = localValue5
  localValue4[2] = localValue6
  localValue4[3] = localValue7
  localValue4[4] = iterator2
  localValue2 = localValue2(localValue3, localValue4)
  dataCollection5 = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4074c74728".
cmgOperation7(cmgOperation8, eventHandler2)
cmgOperation7 = RegisterNetEvent
cmgOperation8 = "ffdf8f478c"
-- Beginner: this function handles network event "ffdf8f478c".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue2 = {}
  dataCollection6 = localValue2
  localValue2 = ipairs
  localValue3 = localValue1 or localValue3
  if not localValue1 then
    localValue3 = {}
  end
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = dataCollection6
    iterator2[localValue7] = true
  end
end
cmgOperation7(cmgOperation8, eventHandler2)

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: localValue1) ===
function cmgOperation7(localValue1)
  local localValue2
  localValue2 = dataCollection6
  localValue2 = localValue2[localValue1]
  localValue2 = true == localValue2
  return localValue2
end
cmgOperation8 = "~r~This vehicle is scheduled for auction."
eventHandler2 = RegisterNetEvent
eventHandler3 = "710b16ba26"
-- Beginner: this function handles network event "710b16ba26".

-- === HELPER FUNCTION (decompiler name: text13; parameters: localValue1) ===
function text13(localValue1)
  local localValue2
  dataCollection7 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "710b16ba26".
eventHandler2(eventHandler3, text13)
-- Beginner: this function handles network event "710b16ba26".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2
  localValue1 = notify
  localValue2 = "~y~You have outstanding debt on vehicle payment plans. Please ensure you make weekly payments."
  -- Beginner: Show a notification to the player.
  localValue1(localValue2)
end
eventHandler3 = RegisterNetEvent
text13 = "6495e4bcfd"
-- Beginner: this function handles network event "6495e4bcfd".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1, localValue2) ===
function workingValue20(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  dataCollection8 = localValue1
  if localValue2 then
    localValue3 = SetTimeout
    localValue4 = 10000
    localValue5 = eventHandler2
    localValue3(localValue4, localValue5)
    localValue3 = SetTimeout
    localValue4 = 30000
    localValue5 = eventHandler2
    localValue3(localValue4, localValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6495e4bcfd".
eventHandler3(text13, workingValue20)
eventHandler3 = RegisterNetEvent
text13 = "47267c0d5c"
-- Beginner: this function handles network event "47267c0d5c".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1) ===
function workingValue20(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = table
  localValue2 = localValue2.insert
  localValue3 = dataCollection5
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
  localValue2 = localValue1.uuid
  localValue3 = number23
  if localValue2 == localValue3 then
    localValue2 = RageUI
    localValue2 = localValue2.IsAnyMenuOfTypeVisible
    localValue3 = "garages"
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = RageUI
      localValue2 = localValue2.Visible
      localValue3 = RMenu
      localValue4 = localValue3
      localValue3 = localValue3.Get
      localValue5 = "garages"
      localValue6 = "mainmenu"
      -- Beginner: result below is menu.
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue4 = true
      localValue2(localValue3, localValue4)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "47267c0d5c".
eventHandler3(text13, workingValue20)
eventHandler3 = RegisterNetEvent
text13 = "52c5e9ab6d"
-- Beginner: this function handles network event "52c5e9ab6d".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1) ===
function workingValue20(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = table
  localValue2 = localValue2.insert
  localValue3 = dataCollection4
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "52c5e9ab6d".
eventHandler3(text13, workingValue20)
eventHandler3 = RegisterNetEvent
text13 = "f70e91482e"
-- Beginner: this function handles network event "f70e91482e".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1, localValue2) ===
function workingValue20(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection16
  localValue3[localValue1] = localValue2
end
eventHandler3(text13, workingValue20)
eventHandler3 = RegisterNetEvent
text13 = "72ce12449f"
-- Beginner: this function handles network event "72ce12449f".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1, localValue2) ===
function workingValue20(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection17
  localValue3[localValue1] = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "72ce12449f".
eventHandler3(text13, workingValue20)
eventHandler3 = RegisterNetEvent
text13 = "66ab2aef34"
-- Beginner: this function handles network event "66ab2aef34".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue20(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, iterator2
  localValue5 = number14
  if localValue5 == localValue1 then
    localValue5 = {}
    localValue6 = localValue2
    localValue7 = localValue3
    iterator2 = localValue4
    localValue5[1] = localValue6
    localValue5[2] = localValue7
    localValue5[3] = iterator2
    workingValue16 = localValue5
  end
end
eventHandler3(text13, workingValue20)
eventHandler3 = RegisterNetEvent
text13 = "514c94a95c"
-- Beginner: this function handles network event "514c94a95c".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1) ===
function workingValue20(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2
  localValue2 = pairs
  localValue3 = dataCollection5
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = localValue7.uuid
    if iterator2 == localValue1 then
      iterator2 = dataCollection5
      iterator2 = iterator2[localValue6]
      iterator2 = iterator2.hoursLeft
      if iterator2 > 1 then
        iterator2 = dataCollection5
        iterator2 = iterator2[localValue6]
        tableHelper2 = dataCollection5
        tableHelper2 = tableHelper2[localValue6]
        tableHelper2 = tableHelper2.hoursLeft
        tableHelper2 = tableHelper2 - 1
        iterator2.hoursLeft = tableHelper2
      else
        iterator2 = dataCollection5
        iterator2[localValue6] = nil
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "514c94a95c".
eventHandler3(text13, workingValue20)
eventHandler3 = RegisterNetEvent
text13 = "c05ba37ff7"
-- Beginner: this function handles network event "c05ba37ff7".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1) ===
function workingValue20(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2
  localValue2 = pairs
  localValue3 = dataCollection4
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = localValue7.uuid
    if iterator2 == localValue1 then
      iterator2 = dataCollection4
      iterator2 = iterator2[localValue6]
      iterator2 = iterator2.hoursLeft
      if iterator2 > 1 then
        iterator2 = dataCollection4
        iterator2 = iterator2[localValue6]
        tableHelper2 = dataCollection4
        tableHelper2 = tableHelper2[localValue6]
        tableHelper2 = tableHelper2.hoursLeft
        tableHelper2 = tableHelper2 - 1
        iterator2.hoursLeft = tableHelper2
      else
        iterator2 = dataCollection4
        iterator2[localValue6] = nil
      end
    end
  end
end
eventHandler3(text13, workingValue20)
eventHandler3 = RegisterNetEvent
text13 = "b4785de6ec"
-- Beginner: this function handles network event "b4785de6ec".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1) ===
function workingValue20(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue2 = pairs
  localValue3 = dataCollection5
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = localValue7.uuid
    if iterator2 == localValue1 then
      iterator2 = dataCollection5
      iterator2[localValue6] = nil
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b4785de6ec".
eventHandler3(text13, workingValue20)
eventHandler3 = RegisterNetEvent
text13 = "f61fc6bcb1"
-- Beginner: this function handles network event "f61fc6bcb1".

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1) ===
function workingValue20(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue2 = pairs
  localValue3 = dataCollection4
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = localValue7.uuid
    if iterator2 == localValue1 then
      iterator2 = dataCollection4
      iterator2[localValue6] = nil
    end
  end
end
eventHandler3(text13, workingValue20)
eventHandler3 = CMG

-- === HELPER FUNCTION (decompiler name: text13; parameters: localValue1) ===
function text13(localValue1)
  local localValue2
  localValue2 = dataCollection19
  localValue2 = localValue2[localValue1]
  return localValue2
end
eventHandler3.getVehicleInfoFromUUID = text13
eventHandler3 = CMG

-- === HELPER FUNCTION (decompiler name: text13; parameters: localValue1) ===
function text13(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue2 = pairs
  localValue3 = dataCollection19
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = localValue7.vehicleId
    if iterator2 == localValue1 then
      iterator2 = true
      return iterator2
    end
  end
  localValue2 = false
  return localValue2
end
eventHandler3.hasLiveVehicleId = text13
eventHandler3 = CMG

-- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
function text13()
  local localValue1, localValue2
  localValue1 = dataCollection19
  return localValue1
end
eventHandler3.getVehicleInfoLookup = text13

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1, localValue2) ===
function eventHandler3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  if localValue2 and "" ~= localValue2 then
    localValue3 = string
    localValue3 = localValue3.lower
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    localValue4 = string
    localValue4 = localValue4.lower
    localValue5 = localValue1
    localValue4 = localValue4(localValue5)
    if localValue3 ~= localValue4 then
      return localValue2
    end
  end
  localValue3 = GetHashKey
  localValue4 = localValue1
  -- Beginner: result below is hash.
  localValue3 = localValue3(localValue4)
  localValue4 = IsModelInCdimage
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = GetLabelText
    localValue5 = GetDisplayNameFromVehicleModel
    localValue6 = localValue3
    localValue5, localValue6 = localValue5(localValue6)
    localValue4 = localValue4(localValue5, localValue6)
    if localValue4 and "" ~= localValue4 and "NULL" ~= localValue4 then
      return localValue4
    end
  end
  localValue4 = localValue2 or localValue4
  if nil == localValue2 or "" == localValue2 or not localValue2 then
    localValue4 = localValue1
  end
  return localValue4
end
text13 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: none) ===
function workingValue20()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper
  localValue1 = {}
  localValue2 = pairs
  localValue3 = dataCollection18
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = pairs
    tableHelper2 = localValue7.vehicles
    iterator2, tableHelper2, dataCollection25, workingValue2 = iterator2(tableHelper2)
    for dataCollection, iterator in iterator2, tableHelper2, dataCollection25, workingValue2 do
      workingValue7 = iterator.uuid
      stringHelper = dataCollection12
      stringHelper = stringHelper[workingValue7]
      workingValue7 = stringHelper or workingValue7
      if not stringHelper or "" == stringHelper or not stringHelper then
        workingValue7 = eventHandler3
        stringHelper2 = iterator.vehicleId
        cmgOperation3 = iterator.name
        workingValue7 = workingValue7(stringHelper2, cmgOperation3)
      end
      stringHelper2 = tostring
      cmgOperation3 = iterator.uuid
      stringHelper2 = stringHelper2(cmgOperation3)
      cmgOperation3 = {}
      tableHelper = localValue7.type
      cmgOperation3.garage = tableHelper
      cmgOperation3.name = workingValue7
      localValue1[stringHelper2] = cmgOperation3
    end
  end
  localValue2 = {}
  localValue3 = pairs
  localValue4 = dataCollection9
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, iterator2 in localValue3, localValue4, localValue5, localValue6 do
    tableHelper2 = pairs
    dataCollection25 = iterator2
    tableHelper2, dataCollection25, workingValue2, dataCollection = tableHelper2(dataCollection25)
    for iterator in tableHelper2, dataCollection25, workingValue2, dataCollection do
      stringHelper = tostring
      workingValue7 = iterator
      stringHelper = stringHelper(workingValue7)
      localValue2[stringHelper] = localValue7
    end
  end
  localValue3 = {}
  localValue3.byUuid = localValue1
  localValue3.folderOf = localValue2
  return localValue3
end
text13.getTradeVehicleGrouping = workingValue20

-- === HELPER FUNCTION (decompiler name: text13; parameters: localValue1) ===
function text13(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25
  localValue2 = pairs
  localValue3 = dataCollection19
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = string
    iterator2 = iterator2.lower
    tableHelper2 = localValue7.vehicleId
    iterator2 = iterator2(tableHelper2)
    tableHelper2 = string
    tableHelper2 = tableHelper2.lower
    dataCollection25 = localValue1
    tableHelper2 = tableHelper2(dataCollection25)
    if iterator2 == tableHelper2 then
      return localValue6
    end
  end
  localValue2 = nil
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1, localValue2) ===
function workingValue20(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5
  localValue3 = pairs
  localValue4 = workingValue.garages
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, iterator2 in localValue3, localValue4, localValue5, localValue6 do
    tableHelper2 = pairs
    dataCollection25 = iterator2
    tableHelper2, dataCollection25, workingValue2, dataCollection = tableHelper2(dataCollection25)
    for iterator, stringHelper in tableHelper2, dataCollection25, workingValue2, dataCollection do
      workingValue7 = string
      workingValue7 = workingValue7.lower
      stringHelper2 = iterator
      workingValue7 = workingValue7(stringHelper2)
      stringHelper2 = string
      stringHelper2 = stringHelper2.lower
      cmgOperation3 = localValue2.vehicleId
      stringHelper2 = stringHelper2(cmgOperation3)
      if workingValue7 == stringHelper2 then
        workingValue7 = nil
        stringHelper2 = pairs
        cmgOperation3 = dataCollection18
        stringHelper2, cmgOperation3, tableHelper, workingValue9 = stringHelper2(cmgOperation3)
        for heading, workingValue10 in stringHelper2, cmgOperation3, tableHelper, workingValue9 do
          cmgOperation5 = workingValue10.type
          if cmgOperation5 == localValue7 then
            workingValue7 = workingValue10
            break
          end
        end
        if not workingValue7 then
          stringHelper2 = {}
          stringHelper2.type = localValue7
          cmgOperation3 = iterator2._config
          cmgOperation3 = cmgOperation3.type
          stringHelper2.class = cmgOperation3
          cmgOperation3 = {}
          stringHelper2.vehicles = cmgOperation3
          workingValue7 = stringHelper2
          stringHelper2 = table
          stringHelper2 = stringHelper2.insert
          cmgOperation3 = dataCollection18
          tableHelper = workingValue7
          stringHelper2(cmgOperation3, tableHelper)
        end
        stringHelper2 = {}
        stringHelper2.uuid = localValue1
        cmgOperation3 = localValue2.vehicleId
        stringHelper2.vehicleId = cmgOperation3
        cmgOperation3 = stringHelper.name
        stringHelper2.name = cmgOperation3
        cmgOperation3 = localValue2.fuel
        stringHelper2.fuel = cmgOperation3
        cmgOperation3 = table
        cmgOperation3 = cmgOperation3.insert
        tableHelper = workingValue7.vehicles
        workingValue9 = stringHelper2
        cmgOperation3(tableHelper, workingValue9)
        cmgOperation3 = dataCollection19
        cmgOperation3[localValue1] = stringHelper2
        break
      end
    end
  end
end
eventHandler4 = RegisterNetEvent
cmgOperation9 = "d7e6bd6cc0"
-- Beginner: this function handles network event "d7e6bd6cc0".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1) ===
function text14(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9
  localValue2 = {}
  dataCollection19 = localValue2
  localValue2 = {}
  dataCollection18 = localValue2
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = workingValue20
    tableHelper2 = localValue6
    dataCollection25 = localValue7
    iterator2(tableHelper2, dataCollection25)
  end
  localValue2 = table
  localValue2 = localValue2.sort
  localValue3 = dataCollection18

  -- === HELPER FUNCTION: localValue4(localValue12, localValue22) ===
  function localValue4(localValue12, localValue22)
    local localValue32, localValue42
    localValue32 = localValue12.type
    localValue42 = localValue22.type
    localValue32 = localValue32 < localValue42
    return localValue32
  end
  localValue2(localValue3, localValue4)
  localValue2 = pairs
  localValue3 = dataCollection18
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = table
    iterator2 = iterator2.sort
    tableHelper2 = localValue7.vehicles

    -- === HELPER FUNCTION (decompiler name: dataCollection25; parameters: localValue12, localValue22) ===
    function dataCollection25(localValue12, localValue22)
      local localValue32, localValue42
      localValue32 = localValue12.name
      localValue42 = localValue22.name
      localValue32 = localValue32 < localValue42
      return localValue32
    end
    iterator2(tableHelper2, dataCollection25)
  end
  localValue2 = CMG
  localValue2 = localValue2.getCustomFolders
  localValue2 = localValue2()
  localValue3 = GetResourceKvpInt
  localValue4 = "cmg_garagefolders_version"
  localValue3 = localValue3(localValue4)
  localValue4 = table
  localValue4 = localValue4.count
  localValue5 = localValue2
  -- Beginner: result below is count.
  localValue4 = localValue4(localValue5)
  if localValue4 > 0 then
    if 0 == localValue3 then
      localValue4 = table
      localValue4 = localValue4.copy
      localValue5 = localValue2
      localValue4 = localValue4(localValue5)
      localValue5 = pairs
      localValue6 = localValue4
      localValue5, localValue6, localValue7, iterator2 = localValue5(localValue6)
      for tableHelper2, dataCollection25 in localValue5, localValue6, localValue7, iterator2 do
        workingValue2 = {}
        dataCollection = pairs
        iterator = dataCollection25
        dataCollection, iterator, stringHelper, workingValue7 = dataCollection(iterator)
        for stringHelper2 in dataCollection, iterator, stringHelper, workingValue7 do
          cmgOperation3 = text13
          tableHelper = stringHelper2
          cmgOperation3 = cmgOperation3(tableHelper)
          if cmgOperation3 then
            workingValue2[cmgOperation3] = true
          end
        end
        localValue4[tableHelper2] = workingValue2
      end
      localValue2 = localValue4
      localValue5 = CMG
      localValue5 = localValue5.saveCustomFolders
      localValue6 = 1
      localValue5(localValue6)
    end
    if 1 == localValue3 then
      localValue4 = table
      localValue4 = localValue4.copy
      localValue5 = localValue2
      localValue4 = localValue4(localValue5)
      localValue5 = pairs
      localValue6 = localValue4
      localValue5, localValue6, localValue7, iterator2 = localValue5(localValue6)
      for tableHelper2, dataCollection25 in localValue5, localValue6, localValue7, iterator2 do
        workingValue2 = {}
        dataCollection = 0
        iterator = pairs
        stringHelper = dataCollection25
        iterator, stringHelper, workingValue7, stringHelper2 = iterator(stringHelper)
        for cmgOperation3 in iterator, stringHelper, workingValue7, stringHelper2 do
          workingValue2[cmgOperation3] = dataCollection
          dataCollection = dataCollection + 1
        end
        localValue4[tableHelper2] = workingValue2
      end
      localValue2 = localValue4
      localValue5 = CMG
      localValue5 = localValue5.saveCustomFolders
      localValue6 = 2
      localValue5(localValue6)
    end
  end
  dataCollection9 = localValue2
  localValue4 = CMG
  localValue4 = localValue4.getGarageSettings
  localValue4 = localValue4()
  dataCollection11 = localValue4
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d7e6bd6cc0".
eventHandler4(cmgOperation9, text14)
eventHandler4 = RegisterNetEvent
cmgOperation9 = "5ab691b0b2"
-- Beginner: this function handles network event "5ab691b0b2".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1) ===
function text14(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3
  localValue2 = dataCollection19
  localValue2[localValue1] = nil
  localValue2 = pairs
  localValue3 = dataCollection18
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = false
    tableHelper2 = pairs
    dataCollection25 = localValue7.vehicles
    tableHelper2, dataCollection25, workingValue2, dataCollection = tableHelper2(dataCollection25)
    for iterator, stringHelper in tableHelper2, dataCollection25, workingValue2, dataCollection do
      workingValue7 = stringHelper.uuid
      if workingValue7 == localValue1 then
        iterator2 = true
        workingValue7 = table
        workingValue7 = workingValue7.remove
        stringHelper2 = localValue7.vehicles
        cmgOperation3 = iterator
        workingValue7(stringHelper2, cmgOperation3)
        break
      end
    end
    if iterator2 then
      tableHelper2 = localValue7.vehicles
      tableHelper2 = #tableHelper2
      if 0 == tableHelper2 then
        tableHelper2 = table
        tableHelper2 = tableHelper2.remove
        dataCollection25 = dataCollection18
        workingValue2 = localValue6
        tableHelper2(dataCollection25, workingValue2)
        break
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5ab691b0b2".
eventHandler4(cmgOperation9, text14)
eventHandler4 = RegisterNetEvent
cmgOperation9 = "e3d9da6250"
-- Beginner: this function handles network event "e3d9da6250".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1, localValue2, localValue3) ===
function text14(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9
  localValue4 = workingValue20
  localValue5 = localValue1
  localValue6 = {}
  localValue6.vehicleId = localValue2
  localValue6.fuel = localValue3
  localValue4(localValue5, localValue6)
  localValue4 = pairs
  localValue5 = dataCollection18
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    dataCollection25 = false
    workingValue2 = pairs
    dataCollection = tableHelper2.vehicles
    workingValue2, dataCollection, iterator, stringHelper = workingValue2(dataCollection)
    for workingValue7, stringHelper2 in workingValue2, dataCollection, iterator, stringHelper do
      cmgOperation3 = stringHelper2.uuid
      if cmgOperation3 == localValue1 then
        dataCollection25 = true
        cmgOperation3 = table
        cmgOperation3 = cmgOperation3.sort
        tableHelper = tableHelper2.vehicles

        -- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue12, localValue22) ===
        function workingValue9(localValue12, localValue22)
          local localValue32, localValue42
          localValue32 = localValue12.name
          localValue42 = localValue22.name
          localValue32 = localValue32 < localValue42
          return localValue32
        end
        cmgOperation3(tableHelper, workingValue9)
        break
      end
    end
    if dataCollection25 then
      workingValue2 = table
      workingValue2 = workingValue2.sort
      dataCollection = dataCollection18

      -- === HELPER FUNCTION: iterator(localValue12, localValue22) ===
      function iterator(localValue12, localValue22)
        local localValue32, localValue42
        localValue32 = localValue12.type
        localValue42 = localValue22.type
        localValue32 = localValue32 < localValue42
        return localValue32
      end
      workingValue2(dataCollection, iterator)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e3d9da6250".
eventHandler4(cmgOperation9, text14)

-- === HELPER FUNCTION (decompiler name: eventHandler4; parameters: localValue1) ===
function eventHandler4(localValue1)
  local localValue2
  localValue2 = dataCollection22
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = true
    return localValue2
  else
    localValue2 = false
    return localValue2
  end
end
cmgOperation9 = CMG
cmgOperation9 = cmgOperation9.RegisterClientCallback
text14 = "90da0d8135"

-- === HELPER FUNCTION (decompiler name: dataCollection23; parameters: none) ===
function dataCollection23()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7
  localValue1 = table
  localValue1 = localValue1.copy
  localValue2 = dataCollection18
  localValue1 = localValue1(localValue2)
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = eventHandler4
    tableHelper2 = localValue7.type
    iterator2 = iterator2(tableHelper2)
    if iterator2 then
      iterator2 = pairs
      tableHelper2 = localValue7.vehicles
      iterator2, tableHelper2, dataCollection25, workingValue2 = iterator2(tableHelper2)
      for dataCollection, iterator in iterator2, tableHelper2, dataCollection25, workingValue2 do
        workingValue7 = iterator.uuid
        stringHelper = dataCollection12
        stringHelper = stringHelper[workingValue7]
        if stringHelper then
          workingValue7 = iterator.uuid
          stringHelper = dataCollection12
          stringHelper = stringHelper[workingValue7]
          iterator.name = stringHelper
        end
      end
    else
      iterator2 = {}
      localValue7.vehicles = iterator2
    end
  end
  return localValue1
end
cmgOperation9(text14, dataCollection23)
cmgOperation9 = CMG
cmgOperation9 = cmgOperation9.RegisterClientCallback
text14 = "c1d4a26d0d"

-- === HELPER FUNCTION (decompiler name: dataCollection23; parameters: none) ===
function dataCollection23()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetInteriorFromEntity
  localValue3 = localValue1
  -- Beginner: result below is interiorId.
  localValue2 = localValue2(localValue3)
  if localValue2 and 0 ~= localValue2 then
    localValue3 = true
    return localValue3
  else
    localValue3 = false
    return localValue3
  end
end
cmgOperation9(text14, dataCollection23)

-- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: localValue1) ===
function cmgOperation9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = eventHandler4
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = RageUI
    localValue2 = localValue2.Visible
    localValue3 = RMenu
    localValue4 = localValue3
    localValue3 = localValue3.Get
    localValue5 = "garages"
    localValue6 = "mainmenu"
    -- Beginner: result below is menu.
    localValue3 = localValue3(localValue4, localValue5, localValue6)
    localValue4 = true
    localValue2(localValue3, localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: text14; parameters: none) ===
function text14()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
end
dataCollection23 = {}
dataCollection24 = {}
number21 = 0
cmgOperation10 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: none) ===
function workingValue21()
  local localValue1, localValue2
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue2 = number21
  localValue1 = localValue1 - localValue2
  localValue2 = 1000
  localValue1 = localValue1 < localValue2
  return localValue1
end
cmgOperation10.isInsideGarageArea = workingValue21

-- === HELPER FUNCTION (decompiler name: cmgOperation10; parameters: localValue1) ===
function cmgOperation10(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue3 = localValue1.garageId
  localValue2 = dataCollection23
  localValue2 = localValue2[localValue3]
  if localValue2 then
    return
  end
  localValue2 = PlaySound
  localValue3 = -1
  localValue4 = "Hit"
  localValue5 = "RESPAWN_SOUNDSET"
  localValue6 = false
  localValue7 = false
  iterator2 = true
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, iterator2)
  localValue2 = workingValue.garages
  localValue3 = localValue1.garageType
  localValue2 = localValue2[localValue3]
  localValue2 = localValue2._config
  localValue2 = localValue2.type
  text4 = localValue2
  localValue2 = cmgOperation9
  localValue3 = localValue1.garageType
  localValue2(localValue3)
  localValue2 = localValue1.position
  createVector3 = localValue2
  localValue3 = localValue1.garageId
  localValue2 = dataCollection23
  localValue2[localValue3] = true
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue1) ===
function workingValue21(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue3 = localValue1.garageId
  localValue2 = dataCollection23
  localValue2 = localValue2[localValue3]
  if not localValue2 then
    return
  end
  localValue2 = PlaySound
  localValue3 = -1
  localValue4 = "Hit"
  localValue5 = "RESPAWN_SOUNDSET"
  localValue6 = false
  localValue7 = false
  iterator2 = true
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, iterator2)
  localValue2 = text14
  localValue2()
  localValue2 = table
  localValue2 = localValue2.clear
  localValue3 = dataCollection24
  localValue2(localValue3)
  localValue3 = localValue1.garageId
  localValue2 = dataCollection23
  localValue2[localValue3] = false
  localValue2 = nil
  workingValue4 = localValue2
  localValue2 = nil
  workingValue6 = localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: localValue1) ===
function workingValue22(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = NetworkHasControlOfEntity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = DeleteEntity
    localValue3 = localValue1
    -- Beginner: Delete a GTA entity.
    localValue2(localValue3)
    return
  end
  localValue2 = NetworkGetNetworkIdFromEntity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 ~= localValue2 then
    localValue3 = TriggerServerEvent
    localValue4 = "79ec855d76"
    localValue5 = localValue2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "79ec855d76".
    localValue3(localValue4, localValue5)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1) ===
function workingValue23(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection
  localValue2 = localValue1.distance
  localValue3 = 1.5
  if localValue2 < localValue3 then
    localValue3 = localValue1.garageId
    localValue2 = dataCollection23
    localValue2 = localValue2[localValue3]
    if not localValue2 then
      localValue2 = cmgOperation10
      localValue3 = localValue1
      localValue2(localValue3)
    end
  else
    localValue3 = localValue1.garageId
    localValue2 = dataCollection23
    localValue2 = localValue2[localValue3]
    if localValue2 then
      localValue2 = workingValue21
      localValue3 = localValue1
      localValue2(localValue3)
    end
  end
  localValue2 = localValue1.type
  if "vehicle" == localValue2 then
    localValue2 = localValue1.disableDelete
    if not localValue2 then
      goto continueAtStep29
    end
  end
  return
  ::continueAtStep29::
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = number21
  localValue3 = localValue2 - localValue3
  localValue4 = 1000
  if localValue3 < localValue4 then
    return
  end
  localValue3 = pairs
  localValue4 = CMG
  localValue4 = localValue4.getAllVehicles
  localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection = localValue4()
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection)
  for localValue7, iterator2 in localValue3, localValue4, localValue5, localValue6 do
    tableHelper2 = GetEntityCoords
    dataCollection25 = iterator2
    workingValue2 = true
    -- Beginner: result below is entityCoords.
    tableHelper2 = tableHelper2(dataCollection25, workingValue2)
    dataCollection25 = localValue1.position
    tableHelper2 = tableHelper2 - dataCollection25
    tableHelper2 = #tableHelper2
    if tableHelper2 < 5.0 then
      tableHelper2 = NetworkGetEntityIsNetworked
      dataCollection25 = iterator2
      tableHelper2 = tableHelper2(dataCollection25)
      if tableHelper2 then
        tableHelper2 = dataCollection24
        tableHelper2 = tableHelper2[iterator2]
        if not tableHelper2 then
          tableHelper2 = 0
        end
        tableHelper2 = tableHelper2 + 1
        dataCollection25 = GetPedInVehicleSeat
        workingValue2 = iterator2
        dataCollection = -1
        dataCollection25 = dataCollection25(workingValue2, dataCollection)
        if 0 == dataCollection25 then
          dataCollection25 = 2
          if dataCollection25 then
            goto continueAtStep76
          end
        end
        dataCollection25 = 10
        ::continueAtStep76::
        if tableHelper2 > dataCollection25 then
          workingValue2 = workingValue22
          dataCollection = iterator2
          workingValue2(dataCollection)
        end
        workingValue2 = dataCollection24
        workingValue2[iterator2] = tableHelper2
      end
    end
  end
  number21 = localValue2
end
cmgOperation11 = CMG

-- === HELPER FUNCTION (decompiler name: number22; parameters: localValue1) ===
function number22(localValue1)
  local localValue2
  localValue2 = dataCollection24
  localValue2[localValue1] = nil
end
cmgOperation11.clearBlockingVehicleCounter = number22
cmgOperation11 = CMG

-- === HELPER FUNCTION (decompiler name: number22; parameters: localValue1, localValue2, localValue3, localValue4) ===
function number22(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper
  localValue5 = workingValue.garages
  localValue5 = localValue5[localValue1]
  localValue6 = assert
  localValue7 = localValue5
  iterator2 = string
  iterator2 = iterator2.format
  tableHelper2 = "Garage type %s is not defined in garages.lua config"
  dataCollection25 = localValue1
  iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper = iterator2(tableHelper2, dataCollection25)
  localValue6(localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper)
  localValue6 = localValue5._config
  localValue7 = assert
  iterator2 = localValue6
  tableHelper2 = string
  tableHelper2 = tableHelper2.format
  dataCollection25 = "Garage type %s does not have a config entry"
  workingValue2 = localValue1
  tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper = tableHelper2(dataCollection25, workingValue2)
  localValue7(iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper)
  localValue7 = CMG
  localValue7 = localValue7.generateUUID
  iterator2 = "garages"
  tableHelper2 = 5
  dataCollection25 = "alphanumeric"
  localValue7 = localValue7(iterator2, tableHelper2, dataCollection25)
  iterator2 = {}
  tableHelper2 = dataCollection14
  tableHelper2[localValue7] = iterator2
  tableHelper2 = CMG
  tableHelper2 = tableHelper2.createArea
  dataCollection25 = "garage_"
  workingValue2 = localValue7
  dataCollection25 = dataCollection25 .. workingValue2
  workingValue2 = localValue2
  dataCollection = 10.0
  iterator = 6

  -- === HELPER FUNCTION: stringHelper() ===
  function stringHelper()
    local localValue12, localValue22
  end
  workingValue7 = workingValue21
  stringHelper2 = workingValue23
  cmgOperation3 = {}
  cmgOperation3.garageType = localValue1
  cmgOperation3.garageId = localValue7
  cmgOperation3.position = localValue2
  tableHelper = localValue6.type
  cmgOperation3.type = tableHelper
  cmgOperation3.disableDelete = localValue4
  tableHelper2 = tableHelper2(dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3)
  iterator2.areaId = tableHelper2
  tableHelper2 = tCMG
  tableHelper2 = tableHelper2.addPropMarker
  dataCollection25 = "bzzz_marker_garage_green_anim"
  workingValue2 = localValue2.x
  dataCollection = localValue2.y
  iterator = localValue2.z
  stringHelper = 50.0
  tableHelper2 = tableHelper2(dataCollection25, workingValue2, dataCollection, iterator, stringHelper)
  iterator2.marker = tableHelper2
  if localValue3 then
    tableHelper2 = tCMG
    tableHelper2 = tableHelper2.addBlip
    dataCollection25 = localValue2.x
    workingValue2 = localValue2.y
    dataCollection = localValue2.z
    iterator = localValue6.blipid
    stringHelper = localValue6.blipcolor
    workingValue7 = localValue1
    stringHelper2 = 0.7
    cmgOperation3 = false
    tableHelper2 = tableHelper2(dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3)
    iterator2.blip = tableHelper2
  end
  return localValue7
end
cmgOperation11.createGarage = number22
cmgOperation11 = CMG

-- === HELPER FUNCTION (decompiler name: number22; parameters: localValue1) ===
function number22(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = dataCollection14
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    return
  end
  localValue3 = tCMG
  localValue3 = localValue3.removeArea
  localValue4 = localValue2.areaId
  localValue3(localValue4)
  localValue3 = tCMG
  localValue3 = localValue3.removeMarker
  localValue4 = localValue2.marker
  localValue3(localValue4)
  localValue3 = localValue2.blip
  if localValue3 then
    localValue3 = tCMG
    localValue3 = localValue3.removeBlip
    localValue4 = localValue2.blip
    localValue3(localValue4)
  end
  localValue3 = dataCollection14
  localValue3[localValue1] = nil
end
cmgOperation11.deleteGarage = number22
cmgOperation11 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: number22; parameters: none) ===
function number22()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6
  localValue1 = pairs
  localValue2 = workingValue.garages
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = pairs
    iterator2 = localValue6
    localValue7, iterator2, tableHelper2, dataCollection25 = localValue7(iterator2)
    for workingValue2 in localValue7, iterator2, tableHelper2, dataCollection25 do
      if "_config" == workingValue2 then
        dataCollection = pairs
        iterator = workingValue.garageInstances
        dataCollection, iterator, stringHelper, workingValue7 = dataCollection(iterator)
        for stringHelper2, cmgOperation3 in dataCollection, iterator, stringHelper, workingValue7 do
          tableHelper = table
          tableHelper = tableHelper.unpack
          workingValue9 = cmgOperation3
          tableHelper, workingValue9, heading, workingValue10 = tableHelper(workingValue9)
          if localValue5 == tableHelper then
            cmgOperation5 = CMG
            cmgOperation5 = cmgOperation5.createGarage
            number5 = localValue5
            vehicle = workingValue9
            stringHelper3 = heading
            number6 = workingValue10
            cmgOperation5(number5, vehicle, stringHelper3, number6)
          end
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation11(number22)
cmgOperation11 = 0
number22 = 0.0

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1) ===
function workingValue25(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = DeleteVehicle
  localValue3 = GetVehiclePedIsIn
  localValue4 = CMG
  localValue4 = localValue4.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = false
  localValue3, localValue4, localValue5 = localValue3(localValue4, localValue5)
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2
    localValue12 = GetHashKey
    localValue22 = localValue1
    -- Beginner: result below is hash.
    localValue12 = localValue12(localValue22)
    localValue22 = RequestModel
    localValue32 = localValue12
    localValue22(localValue32)
    localValue22 = 0
    while true do
      localValue32 = HasModelLoaded
      localValue42 = localValue12
      localValue32 = localValue32(localValue42)
      if localValue32 then
        break
      end
      localValue32 = 200
      if not (localValue22 < localValue32) then
        break
      end
      localValue32 = drawNativeText
      localValue42 = "~r~Downloading vehicle model"
      -- Beginner: Draw GTA-style text on screen.
      localValue32(localValue42)
      localValue32 = Wait
      localValue42 = 0
      localValue32(localValue42)
      localValue22 = localValue22 + 1
    end
    localValue32 = HasModelLoaded
    localValue42 = localValue12
    localValue32 = localValue32(localValue42)
    if localValue32 then
      localValue32 = CreateVehicle
      localValue42 = localValue12
      workingValue18 = createVector3.x
      stateFlag11 = createVector3.y
      stateFlag13 = createVector3.z
      stateFlag14 = number22
      cmgOperation16 = false
      stateFlag17 = false
      -- Beginner: result below is vehicleEntity.
      localValue32 = localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
      localValue42 = CMG
      localValue42 = localValue42.initLocalVehicle
      workingValue18 = localValue32
      localValue42(workingValue18)
      localValue42 = SetEntityAsMissionEntity
      workingValue18 = localValue32
      stateFlag11 = false
      stateFlag13 = false
      localValue42(workingValue18, stateFlag11, stateFlag13)
      localValue42 = FreezeEntityPosition
      workingValue18 = localValue32
      stateFlag11 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      localValue42(workingValue18, stateFlag11)
      localValue42 = SetEntityInvincible
      workingValue18 = localValue32
      stateFlag11 = true
      localValue42(workingValue18, stateFlag11)
      localValue42 = SetVehicleDoorsLocked
      workingValue18 = localValue32
      stateFlag11 = 4
      localValue42(workingValue18, stateFlag11)
      localValue42 = SetModelAsNoLongerNeeded
      workingValue18 = localValue12
      localValue42(workingValue18)
      localValue42 = cmgOperation11
      if 0 ~= localValue42 then
        localValue42 = DestroyCam
        workingValue18 = cmgOperation11
        stateFlag11 = false
        localValue42(workingValue18, stateFlag11)
        localValue42 = 0
        cmgOperation11 = localValue42
      end
      localValue42 = SetEntityAlpha
      workingValue18 = CMG
      workingValue18 = workingValue18.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workingValue18 = workingValue18()
      stateFlag11 = 0
      stateFlag13 = false
      localValue42(workingValue18, stateFlag11, stateFlag13)
      localValue42 = FreezeEntityPosition
      workingValue18 = CMG
      workingValue18 = workingValue18.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workingValue18 = workingValue18()
      stateFlag11 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      localValue42(workingValue18, stateFlag11)
      localValue42 = SetEntityCollision
      workingValue18 = CMG
      workingValue18 = workingValue18.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workingValue18 = workingValue18()
      stateFlag11 = false
      stateFlag13 = false
      localValue42(workingValue18, stateFlag11, stateFlag13)
      localValue42 = SetEntityCollision
      workingValue18 = localValue32
      stateFlag11 = false
      stateFlag13 = false
      localValue42(workingValue18, stateFlag11, stateFlag13)
      localValue42 = GetEntityCoords
      workingValue18 = CMG
      workingValue18 = workingValue18.getPlayerPed
      workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2 = workingValue18()
      -- Beginner: result below is entityCoords.
      localValue42 = localValue42(workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2)
      workingValue18 = GetEntityRotation
      stateFlag11 = CMG
      stateFlag11 = stateFlag11.getPlayerPed
      stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2 = stateFlag11()
      workingValue18 = workingValue18(stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2)
      stateFlag11 = CreateCam
      stateFlag13 = "DEFAULT_SCRIPTED_CAMERA"
      stateFlag14 = true
      -- Beginner: result below is cameraHandle.
      stateFlag11 = stateFlag11(stateFlag13, stateFlag14)
      stateFlag13 = vector3
      stateFlag14 = localValue42.x
      cmgOperation16 = localValue42.y
      stateFlag17 = localValue42.z
      stateFlag17 = stateFlag17 + 2.0
      stateFlag13 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
      stateFlag14 = GetEntityForwardVector
      cmgOperation16 = CMG
      cmgOperation16 = cmgOperation16.getPlayerPed
      cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2 = cmgOperation16()
      stateFlag14 = stateFlag14(cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2)
      stateFlag14 = stateFlag14 * 5.0
      stateFlag13 = stateFlag13 - stateFlag14
      stateFlag14 = SetCamActive
      cmgOperation16 = stateFlag11
      stateFlag17 = true
      stateFlag14(cmgOperation16, stateFlag17)
      stateFlag14 = RenderScriptCams
      cmgOperation16 = true
      stateFlag17 = true
      number2 = 500
      stateFlag = true
      stateFlag2 = false
      stateFlag14(cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2)
      stateFlag14 = SetCamCoord
      cmgOperation16 = stateFlag11
      stateFlag17 = stateFlag13.x
      number2 = stateFlag13.y
      stateFlag = stateFlag13.z
      stateFlag14(cmgOperation16, stateFlag17, number2, stateFlag)
      stateFlag14 = SetCamRot
      cmgOperation16 = stateFlag11
      stateFlag17 = -20.0
      number2 = workingValue18.y
      stateFlag = workingValue18.z
      stateFlag2 = 2
      stateFlag14(cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2)
      cmgOperation11 = stateFlag11
      stateFlag14 = Citizen
      stateFlag14 = stateFlag14.CreateThread

      -- === HELPER FUNCTION (decompiler name: cmgOperation16; parameters: none) ===
      function cmgOperation16()
        local localValue13, localValue23, localValue33
        while true do
          localValue13 = DoesEntityExist
          localValue23 = localValue32
          localValue13 = localValue13(localValue23)
          if not localValue13 then
            break
          end
          localValue13 = Citizen
          localValue13 = localValue13.Wait
          localValue23 = 25
          localValue13(localValue23)
          localValue13 = number22
          localValue13 = localValue13 + 1
          localValue13 = localValue13 % 360
          number22 = localValue13
          localValue13 = SetEntityHeading
          localValue23 = localValue32
          localValue33 = number22
          -- Beginner: Change the direction an entity is facing.
          localValue13(localValue23, localValue33)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      stateFlag14(cmgOperation16)
      stateFlag14 = false
      stateFlag5 = stateFlag14
      stateFlag14 = true
      stateFlag4 = stateFlag14
      number3 = localValue32
    else
      localValue32 = tCMG
      localValue32 = localValue32.notify
      localValue42 = "~r~Failed to load vehicle."
      -- Beginner: Show a notification to the player.
      localValue32(localValue42)
      localValue32 = -1
      return localValue32
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end
cmgOperation13 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: none) ===
function workingValue26()
  local localValue1, localValue2
  localValue1 = stateFlag4
  return localValue1
end
cmgOperation13.isPreviewingVehicle = workingValue26

-- === HELPER FUNCTION (decompiler name: cmgOperation13; parameters: localValue1) ===
function cmgOperation13(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = AddBlipForEntity
  localValue3 = localValue1
  -- Beginner: result below is blipHandle.
  localValue2 = localValue2(localValue3)
  localValue3 = SetBlipSprite
  localValue4 = localValue2
  localValue5 = 56
  localValue3(localValue4, localValue5)
  localValue3 = SetBlipDisplay
  localValue4 = localValue2
  localValue5 = 4
  localValue3(localValue4, localValue5)
  localValue3 = SetBlipScale
  localValue4 = localValue2
  localValue5 = 1.0
  localValue3(localValue4, localValue5)
  localValue3 = SetBlipColour
  localValue4 = localValue2
  localValue5 = 2
  localValue3(localValue4, localValue5)
  localValue3 = SetBlipAsShortRange
  localValue4 = localValue2
  localValue5 = true
  localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue1, localValue2, localValue3) ===
function workingValue26(localValue1, localValue2, localValue3)
  local localValue4, localValue5
  localValue4 = Citizen
  localValue4 = localValue4.CreateThread

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13
    localValue12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue12 = localValue12()
    while true do
      localValue22 = NetworkGetEntityIsNetworked
      localValue32 = localValue2
      localValue22 = localValue22(localValue32)
      if localValue22 then
        localValue22 = NetworkGetNetworkIdFromEntity
        localValue32 = localValue2
        localValue22 = localValue22(localValue32)
        if 0 ~= localValue22 then
          break
        end
      end
      localValue22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue22 = localValue22()
      localValue22 = localValue22 - localValue12
      localValue32 = 10000
      if localValue22 > localValue32 then
        break
      end
      localValue22 = Citizen
      localValue22 = localValue22.Wait
      localValue32 = 0
      localValue22(localValue32)
    end
    localValue22 = NetworkGetNetworkIdFromEntity
    localValue32 = localValue2
    localValue22 = localValue22(localValue32)
    if 0 ~= localValue22 then
      localValue32 = TriggerServerEvent
      localValue42 = "bf7c06a813"
      workingValue18 = localValue1
      stateFlag11 = localValue22
      stateFlag13 = localValue3
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf7c06a813".
      localValue32(localValue42, workingValue18, stateFlag11, stateFlag13)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue4(localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
function workingValue27()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator
  localValue1 = {}
  localValue2 = pairs
  localValue3 = CMG
  localValue3 = localValue3.getAllVehicles
  localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator = localValue3()
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = DecorGetInt
    tableHelper2 = localValue7
    dataCollection25 = "ac76c9d452"
    iterator2 = iterator2(tableHelper2, dataCollection25)
    tableHelper2 = DecorGetInt
    dataCollection25 = localValue7
    workingValue2 = "0a6cf607ed"
    tableHelper2 = tableHelper2(dataCollection25, workingValue2)
    if iterator2 > 0 then
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.getClientUserId
      -- Beginner: result below is userId.
      dataCollection25 = dataCollection25()
      if iterator2 == dataCollection25 and tableHelper2 > 0 then
        dataCollection25 = CMG
        dataCollection25 = dataCollection25.getVehicleIdFromModel
        workingValue2 = GetEntityModel
        dataCollection = localValue7
        workingValue2, dataCollection, iterator = workingValue2(dataCollection)
        dataCollection25 = dataCollection25(workingValue2, dataCollection, iterator)
        if dataCollection25 then
          workingValue2 = {}
          dataCollection = dataCollection25
          iterator = localValue7
          workingValue2[1] = dataCollection
          workingValue2[2] = iterator
          localValue1[tableHelper2] = workingValue2
        end
      end
    end
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue1) ===
function workingValue28(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = true
  localValue3 = SetTimeout
  localValue4 = 5000

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local localValue12, localValue22
    localValue12 = false
    localValue2 = localValue12
  end
  localValue3(localValue4, localValue5)
  while localValue2 do
    localValue3 = DoesEntityExist
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = SetLocalPlayerAsGhost
      localValue4 = true
      localValue3(localValue4)
      localValue3 = SetNetworkVehicleAsGhost
      localValue4 = localValue1
      localValue5 = true
      localValue3(localValue4, localValue5)
      localValue3 = SetEntityAlpha
      localValue4 = localValue1
      localValue5 = 220
      localValue6 = false
      localValue3(localValue4, localValue5, localValue6)
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    localValue4 = 0
    localValue3(localValue4)
  end
  localValue3 = SetLocalPlayerAsGhost
  localValue4 = false
  localValue3(localValue4)
  localValue3 = SetNetworkVehicleAsGhost
  localValue4 = localValue1
  localValue5 = false
  localValue3(localValue4, localValue5)
  localValue3 = SetEntityAlpha
  localValue4 = localValue1
  localValue5 = 255
  localValue6 = false
  localValue3(localValue4, localValue5, localValue6)
  localValue3 = ResetEntityAlpha
  localValue4 = localValue1
  localValue3(localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue29; parameters: localValue1) ===
function workingValue29(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2
  localValue2 = dataCollection19
  localValue2 = localValue2[localValue1]
  if localValue2 then
    return localValue2
  end
  localValue3 = tonumber
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = localValue1
  end
  localValue4 = dataCollection19
  localValue2 = localValue4[localValue3]
  if localValue2 then
    return localValue2
  end
  localValue4 = dataCollection21
  localValue4 = localValue4[localValue1]
  if not localValue4 then
    localValue4 = dataCollection21
    localValue4 = localValue4[localValue3]
  end
  if not localValue4 then
    localValue5 = nil
    return localValue5
  end
  localValue5 = dataCollection20
  localValue5 = localValue5[localValue4]
  if localValue5 then
    localValue6 = localValue5.vehicles
    if localValue6 then
      goto continueAtStep36
    end
  end
  localValue6 = nil
  return localValue6
  ::continueAtStep36::
  localValue6 = localValue5.vehicles
  localValue6 = localValue6[localValue1]
  if not localValue6 then
    localValue6 = localValue5.vehicles
    localValue6 = localValue6[localValue3]
  end
  if not localValue6 then
    localValue7 = nil
    return localValue7
  end
  localValue7 = {}
  localValue7.uuid = localValue1
  iterator2 = localValue6.vehicleId
  localValue7.vehicleId = iterator2
  iterator2 = CMG
  iterator2 = iterator2.getVehicleNameFromId
  tableHelper2 = localValue6.vehicleId
  iterator2 = iterator2(tableHelper2)
  if not iterator2 then
    iterator2 = localValue6.vehicleId
  end
  localValue7.name = iterator2
  iterator2 = localValue6.fuel
  localValue7.fuel = iterator2
  return localValue7
end

-- === HELPER FUNCTION (decompiler name: workingValue30; parameters: localValue1, localValue2) ===
function workingValue30(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "table" == localValue3 then
    localValue3 = localValue2.vehicle
    if localValue3 then
      goto continueAtStep11
    end
  end
  localValue3 = nil
  return localValue3
  ::continueAtStep11::
  localValue3 = localValue2.vehicle
  localValue4 = type
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if "string" == localValue4 then
    localValue4 = string
    localValue4 = localValue4.lower
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    localValue3 = localValue4
  end
  localValue4 = {}
  localValue4.uuid = localValue1
  localValue4.vehicleId = localValue3
  localValue5 = CMG
  localValue5 = localValue5.getVehicleNameFromId
  localValue6 = localValue3
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    localValue5 = localValue3
  end
  localValue4.name = localValue5
  localValue5 = tonumber
  localValue6 = localValue2.fuel
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    localValue5 = 0
  end
  localValue4.fuel = localValue5
  return localValue4
end
cmgOperation14 = RegisterNetEvent
cmgOperation15 = "0cd4f2f872"
-- Beginner: this function handles network event "0cd4f2f872".

-- === HELPER FUNCTION (decompiler name: workingValue31; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function workingValue31(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6, workingValue13, mathHelper, number7, number8, stateFlag7, stateFlag8, stateFlag9, workingValue15, number10, number11, number12
  iterator2 = true == localValue7
  tableHelper2 = text14
  tableHelper2()
  tableHelper2 = GetVehiclePedIsIn
  dataCollection25 = CMG
  dataCollection25 = dataCollection25.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  dataCollection25 = dataCollection25()
  workingValue2 = false
  -- Beginner: result below is currentVehicle.
  tableHelper2 = tableHelper2(dataCollection25, workingValue2)
  dataCollection25 = number20
  if tableHelper2 == dataCollection25 then
    tableHelper2 = DeleteEntity
    dataCollection25 = number20
    -- Beginner: Delete a GTA entity.
    tableHelper2(dataCollection25)
  end
  tableHelper2 = tCMG
  tableHelper2 = tableHelper2.notify
  dataCollection25 = "~g~Loading vehicle, please wait."
  -- Beginner: Show a notification to the player.
  tableHelper2(dataCollection25)
  tableHelper2 = workingValue29
  dataCollection25 = localValue1
  tableHelper2 = tableHelper2(dataCollection25)
  if not tableHelper2 then
    dataCollection25 = workingValue30
    workingValue2 = localValue1
    dataCollection = localValue2
    dataCollection25 = dataCollection25(workingValue2, dataCollection)
    tableHelper2 = dataCollection25
  end
  if not tableHelper2 then
    dataCollection25 = tCMG
    dataCollection25 = dataCollection25.notify
    workingValue2 = "~r~Could not load vehicle data for spawn."
    dataCollection25(workingValue2)
    return
  end
  dataCollection25 = tableHelper2.vehicleId
  workingValue2 = workingValue27
  workingValue2 = workingValue2()
  workingValue2 = workingValue2[localValue1]
  if not workingValue2 then
    workingValue2 = workingValue27
    workingValue2 = workingValue2()
    dataCollection = tonumber
    iterator = localValue1
    dataCollection = dataCollection(iterator)
    workingValue2 = workingValue2[dataCollection]
  end
  if nil ~= workingValue2 then
    dataCollection = DoesEntityExist
    iterator = workingValue2[2]
    dataCollection = dataCollection(iterator)
    if dataCollection then
      goto continueAtStep379
    end
  end
  dataCollection = CMG
  dataCollection = dataCollection.loadModel
  iterator = dataCollection25
  dataCollection = dataCollection(iterator)
  if nil == dataCollection then
    iterator = tCMG
    iterator = iterator.notify
    stringHelper = "~r~Vehicle does not exist, if you believe this is an error contact a Car Dev on discord."
    -- Beginner: Show a notification to the player.
    iterator(stringHelper)
    return
  end
  iterator = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  iterator = iterator()
  text12 = iterator
  iterator = nil
  if localValue4 then
    stringHelper = CMG
    stringHelper = stringHelper.getPosition
    stringHelper = stringHelper()
    workingValue7 = vector3
    stringHelper2 = 0.0
    cmgOperation3 = 0.0
    tableHelper = 0.0
    workingValue7 = workingValue7(stringHelper2, cmgOperation3, tableHelper)
    stringHelper2 = GetNthClosestVehicleNode
    cmgOperation3 = stringHelper.x
    tableHelper = stringHelper.y
    workingValue9 = stringHelper.z
    heading = 0
    workingValue10 = workingValue7
    cmgOperation5 = 8
    number5 = 8
    vehicle = 8
    stringHelper2, cmgOperation3, tableHelper = stringHelper2(cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5, vehicle)
    workingValue9 = GetNthClosestVehicleNode
    heading = stringHelper.x
    workingValue10 = stringHelper.y
    cmgOperation5 = stringHelper.z
    number5 = 15
    workingValue9, heading, workingValue10 = workingValue9(heading, workingValue10, cmgOperation5, number5)
    cmgOperation5 = GetPointOnRoadSide
    number5 = stringHelper.x
    vehicle = stringHelper.y
    stringHelper3 = stringHelper.z
    number6 = 0.0
    cmgOperation5, number5, vehicle = cmgOperation5(number5, vehicle, stringHelper3, number6)
    stringHelper3 = tostring
    number6 = number5
    stringHelper3 = stringHelper3(number6)
    if "vector3(0, 0, 0)" == stringHelper3 then
      goto continueAtStep332
    end
    stringHelper3 = tostring
    number6 = heading
    stringHelper3 = stringHelper3(number6)
    if "vector3(0, 0, 0)" == stringHelper3 then
      goto continueAtStep332
    end
    stringHelper3 = CMG
    stringHelper3 = stringHelper3.requestEntitySpawn
    number6 = "garages_valet"
    workingValue13 = localValue1
    mathHelper = heading
    stringHelper3(number6, workingValue13, mathHelper)
    stringHelper3 = CMG
    stringHelper3 = stringHelper3.spawnVehicle
    number6 = dataCollection
    workingValue13 = heading.x
    mathHelper = heading.y
    number7 = heading.z
    number7 = number7 + 0.5
    number8 = tableHelper or number8
    if not tableHelper then
      number8 = 0.0
    end
    stateFlag7 = false
    stateFlag8 = true
    stateFlag9 = true
    stringHelper3 = stringHelper3(number6, workingValue13, mathHelper, number7, number8, stateFlag7, stateFlag8, stateFlag9)
    iterator = stringHelper3
    stringHelper3 = TriggerServerEvent
    number6 = "1e0bbaf6cd"
    workingValue13 = dataCollection25
    mathHelper = "garage_valet"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
    stringHelper3(number6, workingValue13, mathHelper)
    stringHelper3 = CMG
    stringHelper3 = stringHelper3.loadModel
    number6 = 1142162924
    -- Beginner: Request/load a GTA model before spawning or applying it.
    stringHelper3(number6)
    stringHelper3 = SendNUIMessage
    number6 = {}
    workingValue13 = "MPCT_AKAA_0"
    mathHelper = math
    mathHelper = mathHelper.random
    number7 = 1
    number8 = 5
    mathHelper = mathHelper(number7, number8)
    workingValue13 = workingValue13 .. mathHelper
    number6.transactionType = workingValue13
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    stringHelper3(number6)
    stringHelper3 = CreatePedInsideVehicle
    number6 = iterator
    workingValue13 = 4
    mathHelper = 1142162924
    number7 = -1
    number8 = false
    stateFlag7 = false
    stringHelper3 = stringHelper3(number6, workingValue13, mathHelper, number7, number8, stateFlag7)
    number6 = SetModelAsNoLongerNeeded
    workingValue13 = 1142162924
    number6(workingValue13)
    number6 = TaskVehicleDriveToCoord
    workingValue13 = stringHelper3
    mathHelper = iterator
    number7 = number5.x
    number8 = number5.y
    stateFlag7 = number5.z
    stateFlag8 = 15.0
    stateFlag9 = 1.0
    workingValue15 = dataCollection
    number10 = 786603
    number11 = 5.0
    number12 = 0.0
    number6(workingValue13, mathHelper, number7, number8, stateFlag7, stateFlag8, stateFlag9, workingValue15, number10, number11, number12)
    number6 = cmgOperation13
    workingValue13 = iterator
    number6(workingValue13)
    number6 = SetTimeout
    workingValue13 = 5000

    -- === HELPER FUNCTION: mathHelper() ===
    function mathHelper()
      local localValue12, localValue22, localValue32, localValue42
      while true do
        localValue12 = GetEntitySpeed
        localValue22 = iterator
        -- Beginner: result below is speed.
        localValue12 = localValue12(localValue22)
        if not (localValue12 > 5.0) then
          break
        end
        localValue12 = Citizen
        localValue12 = localValue12.Wait
        localValue22 = 500
        localValue12(localValue22)
      end
      localValue12 = TaskLeaveVehicle
      localValue22 = stringHelper3
      localValue32 = iterator
      localValue42 = 64
      localValue12(localValue22, localValue32, localValue42)
      localValue12 = TaskWanderStandard
      localValue22 = stringHelper3
      localValue32 = 10.0
      localValue42 = 10
      localValue12(localValue22, localValue32, localValue42)
      localValue12 = Wait
      localValue22 = 10000
      localValue12(localValue22)
      localValue12 = DeletePed
      localValue22 = stringHelper3
      localValue12(localValue22)
    end
    number6(workingValue13, mathHelper)
    number6 = print
    workingValue13 = "[CMG] Spawned vehicle with spawncode:"
    mathHelper = tostring
    number7 = dataCollection25
    mathHelper = mathHelper(number7)
    workingValue13 = workingValue13 .. mathHelper
    number6(workingValue13)
    number6 = CMG
    number6 = number6.getClientUserId
    -- Beginner: result below is userId.
    number6 = number6()
    if number6 then
      workingValue13 = DecorSetInt
      mathHelper = iterator
      number7 = "ac76c9d452"
      number8 = number6
      workingValue13(mathHelper, number7, number8)
    end
    workingValue13 = DecorSetInt
    mathHelper = iterator
    number7 = "0a6cf607ed"
    number8 = localValue1
    workingValue13(mathHelper, number7, number8)
    workingValue13 = CMG
    workingValue13 = workingValue13.setVehicleFuel
    mathHelper = iterator
    number7 = tableHelper2.fuel
    workingValue13(mathHelper, number7)
    while true do
      workingValue13 = CMG
      workingValue13 = workingValue13.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      workingValue13 = workingValue13()
      if workingValue13 == iterator then
        break
      end
      workingValue13 = Wait
      mathHelper = 100
      workingValue13(mathHelper)
    end
    workingValue13 = tCMG
    workingValue13 = workingValue13.applyModsOnVehicle
    mathHelper = localValue2
    number7 = localValue1
    number8 = iterator
    workingValue13(mathHelper, number7, number8)
    workingValue13 = workingValue26
    mathHelper = localValue3
    number7 = iterator
    number8 = localValue1
    workingValue13(mathHelper, number7, number8)
    workingValue13 = table
    workingValue13 = workingValue13.insert
    mathHelper = dataCollection3
    number7 = iterator
    workingValue13(mathHelper, number7)
  else
    stringHelper = localValue5 or stringHelper
    if not localValue5 then
      stringHelper = CMG
      stringHelper = stringHelper.getPosition
      stringHelper = stringHelper()
    end
    workingValue7 = CMG
    workingValue7 = workingValue7.requestEntitySpawn
    stringHelper2 = "garages_normal"
    cmgOperation3 = localValue1
    workingValue7(stringHelper2, cmgOperation3)
    workingValue7 = CMG
    workingValue7 = workingValue7.spawnVehicle
    stringHelper2 = dataCollection
    cmgOperation3 = stringHelper.x
    tableHelper = stringHelper.y
    workingValue9 = stringHelper.z
    workingValue9 = workingValue9 + 0.5
    heading = GetEntityHeading
    workingValue10 = PlayerPedId
    workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6, workingValue13, mathHelper, number7, number8, stateFlag7, stateFlag8, stateFlag9, workingValue15, number10, number11, number12 = workingValue10()
    -- Beginner: result below is heading.
    heading = heading(workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6, workingValue13, mathHelper, number7, number8, stateFlag7, stateFlag8, stateFlag9, workingValue15, number10, number11, number12)
    workingValue10 = true
    cmgOperation5 = true
    number5 = true
    workingValue7 = workingValue7(stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5)
    iterator = workingValue7
    workingValue7 = TriggerServerEvent
    stringHelper2 = "1e0bbaf6cd"
    cmgOperation3 = dataCollection25
    tableHelper = "garage"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
    workingValue7(stringHelper2, cmgOperation3, tableHelper)
    workingValue7 = cmgOperation13
    stringHelper2 = iterator
    workingValue7(stringHelper2)
    workingValue7 = print
    stringHelper2 = "[CMG] Spawned vehicle with spawncode:"
    cmgOperation3 = tostring
    tableHelper = dataCollection25
    cmgOperation3 = cmgOperation3(tableHelper)
    stringHelper2 = stringHelper2 .. cmgOperation3
    workingValue7(stringHelper2)
    workingValue7 = CMG
    workingValue7 = workingValue7.getClientUserId
    -- Beginner: result below is userId.
    workingValue7 = workingValue7()
    if workingValue7 then
      stringHelper2 = DecorSetInt
      cmgOperation3 = iterator
      tableHelper = "ac76c9d452"
      workingValue9 = workingValue7
      stringHelper2(cmgOperation3, tableHelper, workingValue9)
    end
    stringHelper2 = DecorSetInt
    cmgOperation3 = iterator
    tableHelper = "0a6cf607ed"
    workingValue9 = localValue1
    stringHelper2(cmgOperation3, tableHelper, workingValue9)
    stringHelper2 = CMG
    stringHelper2 = stringHelper2.setVehicleFuel
    cmgOperation3 = iterator
    tableHelper = tableHelper2.fuel
    stringHelper2(cmgOperation3, tableHelper)
    stringHelper2 = Citizen
    stringHelper2 = stringHelper2.CreateThreadNow

    -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
    function cmgOperation3()
      local localValue12, localValue22
      localValue12 = workingValue28
      localValue22 = iterator
      localValue12(localValue22)
    end
    stringHelper2(cmgOperation3)
    stringHelper2 = tCMG
    stringHelper2 = stringHelper2.applyModsOnVehicle
    cmgOperation3 = localValue2
    tableHelper = localValue1
    workingValue9 = iterator
    stringHelper2(cmgOperation3, tableHelper, workingValue9)
    stringHelper2 = workingValue26
    cmgOperation3 = localValue3
    tableHelper = iterator
    workingValue9 = localValue1
    stringHelper2(cmgOperation3, tableHelper, workingValue9)
    stringHelper2 = table
    stringHelper2 = stringHelper2.insert
    cmgOperation3 = dataCollection3
    tableHelper = iterator
    stringHelper2(cmgOperation3, tableHelper)
    if iterator2 then
      stringHelper2 = Citizen
      stringHelper2 = stringHelper2.CreateThread

      -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
      function cmgOperation3()
        local localValue12, localValue22, localValue32, localValue42, workingValue18
        localValue12 = Citizen
        localValue12 = localValue12.Wait
        localValue22 = 500
        localValue12(localValue22)
        localValue12 = DoesEntityExist
        localValue22 = iterator
        localValue12 = localValue12(localValue22)
        if localValue12 then
          localValue12 = CMG
          localValue12 = localValue12.enterRemoteLsCustomsFromGarage
          localValue22 = iterator
          localValue32 = createVector3
          localValue42 = GetEntityHeading
          workingValue18 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workingValue18 = workingValue18()
          localValue42, workingValue18 = localValue42(workingValue18)
          localValue12(localValue22, localValue32, localValue42, workingValue18)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      stringHelper2(cmgOperation3)
    end
  end
  ::continueAtStep332::
  stringHelper = SetModelAsNoLongerNeeded
  workingValue7 = dataCollection
  stringHelper(workingValue7)
  if localValue6 then
    stringHelper = Citizen
    stringHelper = stringHelper.CreateThread

    -- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
    function workingValue7()
      local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11
      localValue12 = CMG
      localValue12 = localValue12.notifyPicture
      localValue22 = "polnotification"
      localValue32 = "lockpick"
      localValue42 = "~y~Your vehicle has been lockpicked since it was last taken out of the garage."
      workingValue18 = "Garage Notification"
      stateFlag11 = "~r~Lockpick Alert"
      localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    stringHelper(workingValue7)
  end
  while true do
    stringHelper = DoesEntityExist
    workingValue7 = iterator
    stringHelper = stringHelper(workingValue7)
    if not stringHelper then
      break
    end
    stringHelper = CMG
    stringHelper = stringHelper.getVehicleFuel
    workingValue7 = iterator
    stringHelper = stringHelper(workingValue7)
    workingValue7 = tableHelper2.fuel
    if workingValue7 ~= stringHelper then
      workingValue7 = TriggerServerEvent
      stringHelper2 = "486c23d750"
      cmgOperation3 = localValue1
      tableHelper = math
      tableHelper = tableHelper.floor
      workingValue9 = stringHelper * 1000
      tableHelper = tableHelper(workingValue9)
      tableHelper = tableHelper / 1000
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "486c23d750".
      workingValue7(stringHelper2, cmgOperation3, tableHelper)
      tableHelper2.fuel = stringHelper
      workingValue7 = SetEntityInvincible
      stringHelper2 = iterator
      cmgOperation3 = false
      workingValue7(stringHelper2, cmgOperation3)
      workingValue7 = SetEntityCanBeDamaged
      stringHelper2 = iterator
      cmgOperation3 = true
      workingValue7(stringHelper2, cmgOperation3)
    end
    workingValue7 = Wait
    stringHelper2 = 60000
    workingValue7(stringHelper2)
  end
  goto continueAtStep383
  ::continueAtStep379::
  dataCollection = tCMG
  dataCollection = dataCollection.notify
  iterator = "This vehicle is already out."
  -- Beginner: Show a notification to the player.
  dataCollection(iterator)
  ::continueAtStep383::
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0cd4f2f872".
cmgOperation14(cmgOperation15, workingValue31)
cmgOperation14 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation15; parameters: localValue1) ===
function cmgOperation15(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue2 = fullPlayerListData
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = fullPlayerListData
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2[1]
  if not localValue2 then
    localValue3 = false
    return localValue3
  end
  localValue3 = GetPlayerFromServerId
  localValue4 = localValue2
  -- Beginner: result below is playerIndex.
  localValue3 = localValue3(localValue4)
  if localValue3 < 0 then
    localValue4 = false
    return localValue4
  end
  localValue4 = GetPlayerPed
  localValue5 = localValue3
  -- Beginner: result below is playerPed.
  localValue4 = localValue4(localValue5)
  if 0 == localValue4 then
    localValue5 = false
    return localValue5
  end
  localValue5 = CMG
  localValue5 = localValue5.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue5 = localValue5()
  localValue6 = GetEntityCoords
  localValue7 = localValue4
  iterator2 = true
  -- Beginner: result below is entityCoords.
  localValue6 = localValue6(localValue7, iterator2)
  localValue5 = localValue5 - localValue6
  localValue5 = #localValue5
  localValue5 = localValue5 < 5.0
  return localValue5
end
cmgOperation14.isUserOnlineAndNearby = cmgOperation15

-- === HELPER FUNCTION (decompiler name: cmgOperation14; parameters: none) ===
function cmgOperation14()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = stateFlag4
  if localValue1 then
    localValue1 = IsControlJustPressed
    localValue2 = 0
    localValue3 = 177
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = DeleteVehicle
      localValue2 = number3
      localValue1(localValue2)
      localValue1 = 0
      number3 = localValue1
      localValue1 = 0
      number4 = localValue1
      localValue1 = false
      stateFlag4 = localValue1
      localValue1 = DestroyCam
      localValue2 = cmgOperation11
      localValue3 = false
      localValue1(localValue2, localValue3)
      localValue1 = RenderScriptCams
      localValue2 = false
      localValue3 = false
      localValue4 = 1
      localValue5 = true
      localValue6 = true
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
      localValue1 = 0
      cmgOperation11 = localValue1
      localValue1 = SetFocusEntity
      localValue2 = GetPlayerPed
      localValue3 = PlayerId
      localValue3, localValue4, localValue5, localValue6 = localValue3()
      localValue2, localValue3, localValue4, localValue5, localValue6 = localValue2(localValue3, localValue4, localValue5, localValue6)
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
      localValue1 = SetEntityAlpha
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = 255
      localValue4 = false
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = FreezeEntityPosition
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      localValue1(localValue2, localValue3)
      localValue1 = SetEntityCollision
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = true
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
    end
  end
  localValue1 = workingValue19
  if localValue1 then
    localValue1 = workingValue19.sellerUserId
    localValue2 = CMG
    localValue2 = localValue2.isUserOnlineAndNearby
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = nil
      workingValue19 = localValue2
      localValue2 = TriggerServerEvent
      localValue3 = "17e8eb1c8c"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "17e8eb1c8c".
      localValue2(localValue3)
      localValue2 = RageUI
      localValue2 = localValue2.CloseAll
      localValue2()
      return
    end
  end
end
cmgOperation15 = CMG
cmgOperation15 = cmgOperation15.createThreadOnTick
workingValue31 = cmgOperation14
text19 = "Preview Garage"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation15(workingValue31, text19)

-- === HELPER FUNCTION (decompiler name: cmgOperation15; parameters: localValue1) ===
function cmgOperation15(localValue1)
  local localValue2
  localValue2 = "surprise" == localValue1
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue31; parameters: localValue1) ===
function workingValue31(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper
  localValue2 = pairs
  localValue3 = workingValue.garages
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = pairs
    tableHelper2 = localValue7
    iterator2, tableHelper2, dataCollection25, workingValue2 = iterator2(tableHelper2)
    for dataCollection in iterator2, tableHelper2, dataCollection25, workingValue2 do
      if "_config" ~= dataCollection and dataCollection == localValue1 then
        iterator = eventHandler4
        stringHelper = localValue6
        iterator = iterator(stringHelper)
        if iterator then
          iterator = text4
          stringHelper = localValue7._config
          stringHelper = stringHelper.type
          if iterator == stringHelper then
            iterator = true
            return iterator
          end
        end
      end
    end
  end
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text19; parameters: none) ===
function text19()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25
  localValue1 = {}
  localValue2 = pairs
  localValue3 = dataCollection19
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = table
    iterator2 = iterator2.insert
    tableHelper2 = localValue1
    dataCollection25 = {}
    dataCollection25.uuid = localValue6
    dataCollection25.info = localValue7
    iterator2(tableHelper2, dataCollection25)
  end
  localValue2 = table
  localValue2 = localValue2.sort
  localValue3 = localValue1

  -- === HELPER FUNCTION: localValue4(localValue12, localValue22) ===
  function localValue4(localValue12, localValue22)
    local localValue32, localValue42
    localValue32 = localValue12.info
    localValue32 = localValue32.name
    localValue42 = localValue22.info
    localValue42 = localValue42.name
    localValue32 = localValue32 < localValue42
    return localValue32
  end
  localValue2(localValue3, localValue4)
  return localValue1
end
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "mainmenu"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateMenu
text22 = ""
text23 = ""
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuWidth
rageUiOperation6 = rageUiOperation6()
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuHeight
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = "cmg_garageui"
text24 = "cmg_garageui"
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
text20 = workingValue32
workingValue32 = workingValue32.Get
text21 = "garages"
rageUiOperation5 = "mainmenu"
-- Beginner: result below is menu.
workingValue32 = workingValue32(text20, text21, rageUiOperation5)
text20 = workingValue32
workingValue32 = workingValue32.SetSubtitle
text21 = "~b~Garages"
workingValue32(text20, text21)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "rentmanager"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "mainmenu"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Rent Management Menu"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "rentedout"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "rentmanager"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Vehicles Rented Out"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "rentedin"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "rentmanager"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Vehicles Renting"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "paymentplanmanager"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "mainmenu"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Payment Plan Management Menu"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "paymentplanout"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "paymentplanmanager"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Vehicles Payment Planned Out"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "paymentplanin"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "paymentplanmanager"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Vehicles Payment Planned In"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "paymentplansummary"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "paymentplanmanager"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Payment Plan Summary"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "paymentplaninfo"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "paymentplanin"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Vehicles Payment Plan Info"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "recentlogs"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "mainmenu"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Recent Logs"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "rentedinfo"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "rentedin"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Vehicles Rent Info"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "listgarages"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "mainmenu"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Garage Management Menu"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "vehiclemenu"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "listgarages"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Vehicle Management Menu"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "spawnmenu"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "vehiclemenu"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Spawn Management Menu"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "paymentplan"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "spawnmenu"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Payment Plan Menu"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "paymentplanoffer"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateMenu
text22 = ""
text23 = "~b~Payment Plan Offer"
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuWidth
rageUiOperation6 = rageUiOperation6()
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuHeight
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = "cmg_garageui"
text24 = "cmg_garageui"
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "customfolders"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "listgarages"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Custom Folders Management Menu"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "settings"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "mainmenu"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Settings"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "viewall"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "settings"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~All Vehicles"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "rentonlymenu"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text22 = RMenu
text23 = text22
text22 = text22.Get
rageUiOperation6 = "garages"
rageUiOperation7 = "viewall"
-- Beginner: result below is menu.
text22 = text22(text23, rageUiOperation6, rageUiOperation7)
text23 = ""
rageUiOperation6 = "~b~Vehicle Management Menu"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation8()
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
workingValue32 = workingValue32.Add
text20 = "garages"
text21 = "confirm"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateMenu
text22 = ""
text23 = ""
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuWidth
rageUiOperation6 = rageUiOperation6()
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuHeight
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = "cmg_garageui"
text24 = "cmg_garageui"
rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation5(text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24)
workingValue32(text20, text21, rageUiOperation5, text22, text23, rageUiOperation6, rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
workingValue32 = RMenu
text20 = workingValue32
workingValue32 = workingValue32.Get
text21 = "garages"
rageUiOperation5 = "confirm"
-- Beginner: result below is menu.
workingValue32 = workingValue32(text20, text21, rageUiOperation5)
text20 = workingValue32
workingValue32 = workingValue32.SetSubtitle
text21 = "~b~Are you sure you want to DELETE this vehicle?"
workingValue32(text20, text21)

-- === HELPER FUNCTION (decompiler name: workingValue32; parameters: none) ===
function workingValue32()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7
  localValue1 = RageUI
  localValue1 = localValue1.ButtonWithStyle
  localValue2 = "[Create Custom Folder]"
  localValue3 = ""
  localValue4 = {}
  localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
  localValue5 = true

  -- === HELPER FUNCTION: localValue6(localValue12, localValue22, localValue32) ===
  function localValue6(localValue12, localValue22, localValue32)
    local localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag
    if localValue32 then
      localValue42 = CMG
      localValue42 = localValue42.GetRageInputText
      workingValue18 = "Enter folder name:"
      localValue42 = localValue42(workingValue18)
      if "" ~= localValue42 then
        workingValue18 = dataCollection9
        workingValue18 = workingValue18[localValue42]
        if nil == workingValue18 then
          workingValue18 = pairs
          stateFlag11 = dataCollection9
          workingValue18, stateFlag11, stateFlag13, stateFlag14 = workingValue18(stateFlag11)
          for cmgOperation16 in workingValue18, stateFlag11, stateFlag13, stateFlag14 do
            stateFlag17 = string
            stateFlag17 = stateFlag17.lower
            number2 = cmgOperation16
            stateFlag17 = stateFlag17(number2)
            number2 = string
            number2 = number2.lower
            stateFlag = localValue42
            number2 = number2(stateFlag)
            if stateFlag17 == number2 then
              stateFlag17 = notify
              number2 = "~r~A folder with this name already exists."
              -- Beginner: Show a notification to the player.
              stateFlag17(number2)
              return
            end
          end
          workingValue18 = CMG
          workingValue18 = workingValue18.createCustomFolder
          stateFlag11 = localValue42
          workingValue18(stateFlag11)
        else
          workingValue18 = tCMG
          workingValue18 = workingValue18.notify
          stateFlag11 = "~r~Folder already exists."
          -- Beginner: Show a notification to the player.
          workingValue18(stateFlag11)
        end
      else
        workingValue18 = tCMG
        workingValue18 = workingValue18.notify
        stateFlag11 = "~r~Invalid folder name."
        workingValue18(stateFlag11)
      end
    end
  end
  localValue7 = RMenu
  iterator2 = localValue7
  localValue7 = localValue7.Get
  tableHelper2 = "garages"
  dataCollection25 = "customfolders"
  localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7 = localValue7(iterator2, tableHelper2, dataCollection25)
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7)
  localValue1 = RageUI
  localValue1 = localValue1.ButtonWithStyle
  localValue2 = "[Delete Custom Folder]"
  localValue3 = ""
  localValue4 = {}
  localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
  localValue5 = true

  -- === HELPER FUNCTION: localValue6(localValue12, localValue22, localValue32) ===
  function localValue6(localValue12, localValue22, localValue32)
    local localValue42, workingValue18, stateFlag11
    if localValue32 then
      localValue42 = CMG
      localValue42 = localValue42.GetRageInputText
      workingValue18 = "Enter folder name:"
      localValue42 = localValue42(workingValue18)
      if "" ~= localValue42 then
        workingValue18 = CMG
        workingValue18 = workingValue18.deleteCustomFolder
        stateFlag11 = localValue42
        workingValue18(stateFlag11)
      else
        workingValue18 = tCMG
        workingValue18 = workingValue18.notify
        stateFlag11 = "~r~Invalid folder name."
        -- Beginner: Show a notification to the player.
        workingValue18(stateFlag11)
      end
    end
  end
  localValue7 = RMenu
  iterator2 = localValue7
  localValue7 = localValue7.Get
  tableHelper2 = "garages"
  dataCollection25 = "customfolders"
  localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7 = localValue7(iterator2, tableHelper2, dataCollection25)
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7)
  localValue1 = pairsByKeys
  localValue2 = dataCollection9
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5 in localValue1, localValue2, localValue3, localValue4 do
    localValue6 = RageUI
    localValue6 = localValue6.ButtonWithStyle
    localValue7 = localValue5
    iterator2 = ""
    tableHelper2 = {}
    tableHelper2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataCollection25 = true

    -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue12, localValue22, localValue32) ===
    function workingValue2(localValue12, localValue22, localValue32)
      local localValue42
      if localValue32 then
        localValue42 = nil
        workingValue34 = localValue42
        localValue42 = localValue5
        workingValue12 = localValue42
      end
    end
    dataCollection = RMenu
    iterator = dataCollection
    dataCollection = dataCollection.Get
    stringHelper = "garages"
    workingValue7 = "vehiclemenu"
    dataCollection, iterator, stringHelper, workingValue7 = dataCollection(iterator, stringHelper, workingValue7)
    localValue6(localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7)
  end
end

-- === HELPER FUNCTION (decompiler name: text20; parameters: localValue1, localValue2, localValue3) ===
function text20(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper
  localValue4 = localValue1[localValue2]
  localValue5 = 10000
  localValue6 = pairs
  localValue7 = localValue1
  localValue6, localValue7, iterator2, tableHelper2 = localValue6(localValue7)
  for dataCollection25, workingValue2 in localValue6, localValue7, iterator2, tableHelper2 do
    if dataCollection25 ~= localValue2 then
      if localValue3 then
        dataCollection = 1
        if dataCollection then
          goto continueAtStep15
        end
      end
      dataCollection = -1
      ::continueAtStep15::
      dataCollection = workingValue2 + dataCollection
      iterator = math
      iterator = iterator.abs
      stringHelper = localValue1[localValue2]
      stringHelper = stringHelper - dataCollection
      iterator = iterator(stringHelper)
      if localValue3 then
        stringHelper = localValue1[localValue2]
        if dataCollection > stringHelper then
          goto continueAtStep33
        end
      end
      if not localValue3 then
        stringHelper = localValue1[localValue2]
        ::continueAtStep33::
        if dataCollection < stringHelper and localValue5 > iterator then
          localValue4 = dataCollection
          localValue5 = iterator
        end
      end
    end
  end
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: text21; parameters: localValue1, localValue2) ===
function text21(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7
  if not localValue2 then
    localValue3 = dataCollection11
    localValue4 = "hideCustomFolderVehiclesFromOriginalGarages"
    localValue3 = localValue3[localValue4]
    if localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.isVehicleInAnyCustomFolder
      localValue4 = localValue1.uuid
      localValue3 = localValue3(localValue4)
      if localValue3 then
        return
      end
    end
  end
  localValue3 = cmgOperation15
  localValue4 = localValue1.vehicleId
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.hasClientPermission
    localValue4 = "admin.tickets"
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      return
    end
  end
  localValue3 = ""
  localValue4 = localValue1.fuel
  if localValue4 <= 20 then
    localValue3 = "~r~"
  else
    localValue4 = localValue1.fuel
    if localValue4 <= 50 then
      localValue3 = "~y~"
    else
      localValue4 = localValue1.fuel
      if localValue4 <= 100 then
        localValue3 = "~g~"
      end
    end
  end
  localValue5 = localValue1.uuid
  localValue4 = dataCollection12
  localValue4 = localValue4[localValue5]
  if not localValue4 then
    localValue4 = localValue1.name
  end
  localValue5 = localValue3
  localValue6 = "Fuel "
  localValue7 = tostring
  iterator2 = math
  iterator2 = iterator2.floor
  tableHelper2 = localValue1.fuel
  iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7 = iterator2(tableHelper2)
  localValue7 = localValue7(iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7)
  iterator2 = "%"
  localValue5 = localValue5 .. localValue6 .. localValue7 .. iterator2
  localValue6 = workingValue16
  if localValue6 then
    localValue6 = localValue5
    localValue7 = " | Boot "
    iterator2 = tostring
    tableHelper2 = workingValue16
    tableHelper2 = tableHelper2[1]
    iterator2 = iterator2(tableHelper2)
    tableHelper2 = "/"
    dataCollection25 = tostring
    workingValue2 = workingValue16
    workingValue2 = workingValue2[2]
    dataCollection25 = dataCollection25(workingValue2)
    workingValue2 = "kg"
    localValue6 = localValue6 .. localValue7 .. iterator2 .. tableHelper2 .. dataCollection25 .. workingValue2
    localValue5 = localValue6
    localValue6 = workingValue16
    localValue6 = localValue6[3]
    if localValue6 then
      localValue6 = localValue5
      localValue7 = " | Has Dirty Cash"
      localValue6 = localValue6 .. localValue7
      localValue5 = localValue6
    end
  end
  localValue6 = RageUI
  localValue6 = localValue6.ButtonWithStyle
  localValue7 = localValue4
  iterator2 = localValue5
  tableHelper2 = {}
  tableHelper2.RightLabel = "\226\134\146\226\134\146\226\134\146"
  dataCollection25 = true

  -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue12, localValue22, localValue32) ===
  function workingValue2(localValue12, localValue22, localValue32)
    local localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2
    if localValue22 then
      localValue42 = number3
      if 0 ~= localValue42 then
        localValue42 = number4
        workingValue18 = localValue1.vehicleId
        if localValue42 == workingValue18 then
          goto continueAtStep23
        end
      end
      localValue42 = stateFlag5
      if not localValue42 then
        localValue42 = DeleteVehicle
        workingValue18 = number3
        localValue42(workingValue18)
        localValue42 = true
        stateFlag5 = localValue42
        localValue42 = workingValue25
        workingValue18 = localValue1.vehicleId
        localValue42(workingValue18)
        localValue42 = localValue1.vehicleId
        number4 = localValue42
      end
      ::continueAtStep23::
      localValue42 = number14
      workingValue18 = localValue1.uuid
      if localValue42 ~= workingValue18 then
        localValue42 = localValue1.uuid
        number14 = localValue42
        localValue42 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue42 = localValue42()
        number13 = localValue42
        localValue42 = nil
        workingValue16 = localValue42
      end
      localValue42 = number13
      if 0 ~= localValue42 then
        localValue42 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue42 = localValue42()
        workingValue18 = number13
        localValue42 = localValue42 - workingValue18
        workingValue18 = 250
        if localValue42 > workingValue18 then
          localValue42 = 0
          number13 = localValue42
          localValue42 = nil
          workingValue16 = localValue42
          localValue42 = TriggerServerEvent
          workingValue18 = "a5ea65d755"
          stateFlag11 = localValue1.vehicleId
          stateFlag13 = localValue1.uuid
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a5ea65d755".
          localValue42(workingValue18, stateFlag11, stateFlag13)
        end
      end
      localValue42 = localValue2
      if localValue42 then
        localValue42 = IsControlPressed
        workingValue18 = 0
        stateFlag11 = 209
        localValue42 = localValue42(workingValue18, stateFlag11)
        if localValue42 then
          workingValue18 = workingValue12
          localValue42 = dataCollection9
          localValue42 = localValue42[workingValue18]
          workingValue18 = nil
          stateFlag11 = IsControlJustPressed
          stateFlag13 = 0
          stateFlag14 = 188
          stateFlag11 = stateFlag11(stateFlag13, stateFlag14)
          if stateFlag11 then
            workingValue18 = true
          else
            stateFlag11 = IsControlJustPressed
            stateFlag13 = 0
            stateFlag14 = 187
            stateFlag11 = stateFlag11(stateFlag13, stateFlag14)
            if stateFlag11 then
              workingValue18 = false
            end
          end
          stateFlag11 = type
          stateFlag13 = workingValue18
          stateFlag11 = stateFlag11(stateFlag13)
          if "boolean" == stateFlag11 then
            stateFlag11 = text20
            stateFlag13 = localValue42
            stateFlag14 = localValue1.uuid
            cmgOperation16 = workingValue18
            stateFlag11 = stateFlag11(stateFlag13, stateFlag14, cmgOperation16)
            stateFlag13 = localValue1.uuid
            stateFlag13 = localValue42[stateFlag13]
            if stateFlag11 ~= stateFlag13 then
              stateFlag13 = pairs
              stateFlag14 = localValue42
              stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14)
              for number2, stateFlag in stateFlag13, stateFlag14, cmgOperation16, stateFlag17 do
                if not workingValue18 or not (stateFlag >= stateFlag11) then
                  if not (not workingValue18 and stateFlag <= stateFlag11) then
                    goto continueAtStep120
                  end
                  stateFlag2 = localValue1.uuid
                  if number2 == stateFlag2 then
                    goto continueAtStep120
                  end
                end
                if workingValue18 then
                  stateFlag2 = 1
                  if stateFlag2 then
                    goto continueAtStep117
                  end
                end
                stateFlag2 = -1
                ::continueAtStep117::
                stateFlag2 = stateFlag + stateFlag2
                localValue42[number2] = stateFlag2
                ::continueAtStep120::
              end
              stateFlag13 = localValue1.uuid
              localValue42[stateFlag13] = stateFlag11
              stateFlag13 = CMG
              stateFlag13 = stateFlag13.saveCustomFolders
              stateFlag13()
            end
          end
        end
      end
    end
    if localValue32 then
      localValue42 = localValue1.vehicleId
      text15 = localValue42
      localValue42 = localValue1.uuid
      number23 = localValue42
      workingValue18 = localValue1.vehicleId
      localValue42 = dataCollection16
      localValue42 = localValue42[workingValue18]
      if not localValue42 then
        localValue42 = TriggerServerEvent
        workingValue18 = "e7f85609de"
        stateFlag11 = localValue1.vehicleId
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7f85609de".
        localValue42(workingValue18, stateFlag11)
      end
      workingValue18 = localValue1.uuid
      localValue42 = dataCollection17
      localValue42 = localValue42[workingValue18]
      if not localValue42 then
        localValue42 = TriggerServerEvent
        workingValue18 = "8f66b92a5f"
        stateFlag11 = localValue1.uuid
        localValue42(workingValue18, stateFlag11)
      end
      localValue42 = localValue4
      text16 = localValue42
      localValue42 = localValue2
      if not localValue42 then
        localValue42 = nil
        workingValue12 = localValue42
      end
    end
  end
  dataCollection = RMenu
  iterator = dataCollection
  dataCollection = dataCollection.Get
  stringHelper = "garages"
  workingValue7 = "spawnmenu"
  dataCollection, iterator, stringHelper, workingValue7 = dataCollection(iterator, stringHelper, workingValue7)
  -- Beginner: Draw a selectable RageUI menu button.
  localValue6(localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7)
end
rageUiOperation5 = {}

-- === HELPER FUNCTION (decompiler name: text22; parameters: localValue1) ===
function text22(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = rageUiOperation5
  localValue2[localValue1] = true
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = rageUiOperation5
  localValue3[localValue1] = nil
  if not localValue2 then
    localValue3 = false
    return localValue3
  end
  localValue3 = SetModelAsNoLongerNeeded
  localValue4 = localValue2
  localValue3(localValue4)
  localValue3 = IsModelValid
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = HasModelLoaded
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text23; parameters: localValue1, localValue2) ===
function text23(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue3 = workingValue29
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue4 = tCMG
    localValue4 = localValue4.notify
    localValue5 = "~r~Vehicle data is out of date. Close and reopen the garage menu."
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
    return
  end
  localValue5 = localValue3.vehicleId
  localValue4 = rageUiOperation5
  localValue4 = localValue4[localValue5]
  if localValue4 then
    localValue4 = notify
    localValue5 = "~r~Vehicle is being downloaded, please wait."
    localValue4(localValue5)
    return
  end
  localValue4 = text22
  localValue5 = localValue3.vehicleId
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = TriggerServerEvent
    localValue5 = "3cee06ce88"
    localValue6 = localValue3.vehicleId
    localValue7 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3cee06ce88".
    localValue4(localValue5, localValue6, localValue7)
    return
  end
  localValue4 = workingValue27
  localValue4 = localValue4()
  localValue4 = localValue4[localValue1]
  if nil ~= localValue4 then
    localValue5 = DoesEntityExist
    localValue6 = localValue4[2]
    localValue5 = localValue5(localValue6)
    if localValue5 then
      goto continueAtStep47
    end
  end
  localValue5 = TriggerServerEvent
  localValue6 = "0cd4f2f872"
  localValue7 = localValue1
  iterator2 = localValue2
  localValue5(localValue6, localValue7, iterator2)
  goto continueAtStep51
  ::continueAtStep47::
  localValue5 = tCMG
  localValue5 = localValue5.notify
  localValue6 = "Vehicle is already out!"
  -- Beginner: Show a notification to the player.
  localValue5(localValue6)
  ::continueAtStep51::
end
rageUiOperation6 = RageUI
rageUiOperation6 = rageUiOperation6.CreateWhile
rageUiOperation7 = 1.0
rageUiOperation8 = RMenu
text24 = rageUiOperation8
rageUiOperation8 = rageUiOperation8.Get
text25 = "garages"
text26 = "mainmenu"
-- Beginner: result below is menu.
rageUiOperation8 = rageUiOperation8(text24, text25, text26)
text24 = nil

-- === HELPER FUNCTION (decompiler name: text25; parameters: none) ===
function text25()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Garages"
    localValue32 = text16
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "listgarages"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Store Vehicle"
    localValue32 = text16
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12, cmgOperation12, text17
      if localValue33 then
        vehicle2 = GetVehiclePedIsIn
        cmgOperation6 = CMG
        cmgOperation6 = cmgOperation6.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgOperation6 = cmgOperation6()
        stateFlag12 = false
        -- Beginner: result below is currentVehicle.
        vehicle2 = vehicle2(cmgOperation6, stateFlag12)
        cmgOperation6 = DoesEntityExist
        stateFlag12 = vehicle2
        cmgOperation6 = cmgOperation6(stateFlag12)
        if cmgOperation6 then
          cmgOperation6 = DecorGetInt
          stateFlag12 = vehicle2
          cmgOperation12 = "ac76c9d452"
          cmgOperation6 = cmgOperation6(stateFlag12, cmgOperation12)
          stateFlag12 = DecorGetInt
          cmgOperation12 = vehicle2
          text17 = "0a6cf607ed"
          stateFlag12 = stateFlag12(cmgOperation12, text17)
          cmgOperation12 = CMG
          cmgOperation12 = cmgOperation12.getClientUserId
          -- Beginner: result below is userId.
          cmgOperation12 = cmgOperation12()
          if cmgOperation6 == cmgOperation12 and stateFlag12 > 0 then
            workingValue14 = stateFlag12
          end
          cmgOperation12 = DeleteEntity
          text17 = vehicle2
          -- Beginner: Delete a GTA entity.
          cmgOperation12(text17)
        end
      end
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "mainmenu"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
    localValue12 = workingValue14
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Spawn Last Vehicle"
      localValue32 = "Spawns the last owned vehicle that was spawned or stored via the garage menu"
      localValue42 = {}
      localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue18 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag11(localValue13, localValue23, localValue33)
        local vehicle2, cmgOperation6, stateFlag12
        if localValue33 then
          vehicle2 = CMG
          vehicle2 = vehicle2.getPlayerCombatTimer
          vehicle2 = vehicle2()
          if vehicle2 > 0 then
            vehicle2 = notify
            cmgOperation6 = "~r~You can not spawn a vehicle with a combat timer."
            -- Beginner: Show a notification to the player.
            vehicle2(cmgOperation6)
            return
          end
          vehicle2 = CMG
          vehicle2 = vehicle2.isInCustomRace
          vehicle2 = vehicle2()
          if vehicle2 then
            vehicle2 = notify
            cmgOperation6 = "~r~You can not spawn new vehicles in a race."
            vehicle2(cmgOperation6)
            return
          end
          vehicle2 = CMG
          vehicle2 = vehicle2.getVehicleInfoFromUUID
          cmgOperation6 = workingValue14
          vehicle2 = vehicle2(cmgOperation6)
          if vehicle2 then
            cmgOperation6 = vehicle2.vehicleId
            if cmgOperation6 then
              cmgOperation6 = workingValue31
              stateFlag12 = vehicle2.vehicleId
              cmgOperation6 = cmgOperation6(stateFlag12)
              if cmgOperation6 then
                cmgOperation6 = Citizen
                cmgOperation6 = cmgOperation6.CreateThreadNow

                -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: none) ===
                function stateFlag12()
                  local localValue14, cmgOperation4
                  localValue14 = text23
                  cmgOperation4 = workingValue14
                  localValue14(cmgOperation4)
                end
                cmgOperation6(stateFlag12)
              else
                cmgOperation6 = notify
                stateFlag12 = "~r~The last vehicle can not be spawned from this type of garage."
                -- Beginner: Show a notification to the player.
                cmgOperation6(stateFlag12)
              end
          end
          else
            cmgOperation6 = notify
            stateFlag12 = "~r~Can not spawn this vehicle. Do you still own it?"
            cmgOperation6(stateFlag12)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11)
    end
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Rent Manager"
    localValue32 = text16
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "rentmanager"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Payment Plan Manager"
    localValue32 = text16
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "paymentplanmanager"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "View Recent Logs"
    localValue32 = "View logs from the past month."
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6
      if localValue33 then
        vehicle2 = TriggerServerEvent
        cmgOperation6 = "6463b9ec47"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6463b9ec47".
        vehicle2(cmgOperation6)
      end
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "recentlogs"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Settings"
    localValue32 = ""
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "settings"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~y~Fuel all vehicles. (\194\16325,000)"
    localValue32 = text16
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12
      if localValue33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.isPlusClub
        vehicle2 = vehicle2()
        if not vehicle2 then
          vehicle2 = CMG
          vehicle2 = vehicle2.isPlatClub
          vehicle2 = vehicle2()
          if not vehicle2 then
            goto continueAtStep36
          end
        end
        vehicle2 = stateFlag6
        if not vehicle2 then
          vehicle2 = TriggerServerEvent
          cmgOperation6 = "bf584d3fa8"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf584d3fa8".
          vehicle2(cmgOperation6)
          vehicle2 = true
          stateFlag6 = vehicle2
          vehicle2 = SendNUIMessage
          cmgOperation6 = {}
          cmgOperation6.transactionType = "playMoney"
          -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
          vehicle2(cmgOperation6)
          vehicle2 = SetTimeout
          cmgOperation6 = 60000

          -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: none) ===
          function stateFlag12()
            local localValue14, cmgOperation4
            localValue14 = false
            stateFlag6 = localValue14
          end
          vehicle2(cmgOperation6, stateFlag12)
        else
          vehicle2 = tCMG
          vehicle2 = vehicle2.notify
          cmgOperation6 = "~r~You've done this too recently, try again later."
          -- Beginner: Show a notification to the player.
          vehicle2(cmgOperation6)
          goto continueAtStep44
          ::continueAtStep36::
          vehicle2 = tCMG
          vehicle2 = vehicle2.notify
          cmgOperation6 = "~y~You need to be a subscriber of CMG Plus or CMG Platinum to use this feature."
          vehicle2(cmgOperation6)
          vehicle2 = tCMG
          vehicle2 = vehicle2.notify
          cmgOperation6 = "~y~Available @ store.cmgstudios.net"
          -- Beginner: Show a notification to the player.
          vehicle2(cmgOperation6)
        end
      end
      ::continueAtStep44::
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "rentmanager"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Vehicles Rented Out"
    localValue32 = text16
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "rentedout"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Vehicles Rented In"
    localValue32 = text16
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "rentedin"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "paymentplanmanager"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Vehicles Payment Planned Out"
    localValue32 = text16
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "paymentplanout"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Vehicles Payment Planned In"
    localValue32 = text16
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "paymentplanin"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Payment Plan Summary"
    localValue32 = ""
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6
      if localValue33 then
        vehicle2 = TriggerServerEvent
        cmgOperation6 = "2f22f5216b"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2f22f5216b".
        vehicle2(cmgOperation6)
      end
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "paymentplansummary"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "paymentplansummary"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~g~Estimated income of \194\163"
    localValue32 = getMoneyStringFormatted
    localValue42 = dataCollection10.income
    localValue32 = localValue32(localValue42)
    localValue42 = " per week"
    localValue22 = localValue22 .. localValue32 .. localValue42
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Estimated outflow of \194\163"
    localValue32 = getMoneyStringFormatted
    localValue42 = dataCollection10.outcome
    localValue32 = localValue32(localValue42)
    localValue42 = " per week"
    localValue22 = localValue22 .. localValue32 .. localValue42
    localValue12(localValue22)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "paymentplanout"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7, text8
    localValue12 = pairs
    localValue22 = dataCollection7
    localValue12, localValue22, localValue32, localValue42 = localValue12(localValue22)
    for workingValue18, stateFlag11 in localValue12, localValue22, localValue32, localValue42 do
      stateFlag14 = stateFlag11.uuid
      stateFlag13 = dataCollection12
      stateFlag13 = stateFlag13[stateFlag14]
      if not stateFlag13 then
        stateFlag13 = stateFlag11.vehicleName
      end
      stateFlag14 = stateFlag11.paymentPlannedBy
      cmgOperation16 = RageUI
      cmgOperation16 = cmgOperation16.ButtonWithStyle
      stateFlag17 = stateFlag13
      number2 = "Payment Planned to "
      stateFlag = stateFlag14
      number2 = number2 .. stateFlag
      stateFlag = {}
      stateFlag.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag2 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag3(localValue13, localValue23, localValue33)
        local vehicle2, cmgOperation6, stateFlag12, cmgOperation12
        if localValue33 then
          vehicle2 = nil
          workingValue11 = vehicle2
          vehicle2 = TriggerServerEvent
          cmgOperation6 = "8e0470d982"
          stateFlag12 = stateFlag11.uuid
          cmgOperation12 = stateFlag13
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8e0470d982".
          vehicle2(cmgOperation6, stateFlag12, cmgOperation12)
        end
      end
      workingValue8 = RMenu
      text6 = workingValue8
      workingValue8 = workingValue8.Get
      text7 = "garages"
      text8 = "paymentplaninfo"
      workingValue8, text6, text7, text8 = workingValue8(text6, text7, text8)
      -- Beginner: Draw a selectable RageUI menu button.
      cmgOperation16(stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7, text8)
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "paymentplanin"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7, text8
    localValue12 = pairs
    localValue22 = dataCollection8
    localValue12, localValue22, localValue32, localValue42 = localValue12(localValue22)
    for workingValue18, stateFlag11 in localValue12, localValue22, localValue32, localValue42 do
      stateFlag14 = stateFlag11.uuid
      stateFlag13 = dataCollection12
      stateFlag13 = stateFlag13[stateFlag14]
      if not stateFlag13 then
        stateFlag13 = stateFlag11.vehicleName
      end
      stateFlag14 = stateFlag11.paymentPlannedBy
      cmgOperation16 = RageUI
      cmgOperation16 = cmgOperation16.ButtonWithStyle
      stateFlag17 = stateFlag13
      number2 = "Payment Planned from "
      stateFlag = stateFlag14
      number2 = number2 .. stateFlag
      stateFlag = {}
      stateFlag.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag2 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag3(localValue13, localValue23, localValue33)
        local vehicle2, cmgOperation6, stateFlag12, cmgOperation12
        if localValue33 then
          vehicle2 = nil
          workingValue11 = vehicle2
          vehicle2 = TriggerServerEvent
          cmgOperation6 = "8e0470d982"
          stateFlag12 = stateFlag11.uuid
          cmgOperation12 = stateFlag13
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8e0470d982".
          vehicle2(cmgOperation6, stateFlag12, cmgOperation12)
        end
      end
      workingValue8 = RMenu
      text6 = workingValue8
      workingValue8 = workingValue8.Get
      text7 = "garages"
      text8 = "paymentplaninfo"
      workingValue8, text6, text7, text8 = workingValue8(text6, text7, text8)
      -- Beginner: Draw a selectable RageUI menu button.
      cmgOperation16(stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7, text8)
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "recentlogs"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2
    localValue12 = pairs
    localValue22 = dataCollection13
    localValue12, localValue22, localValue32, localValue42 = localValue12(localValue22)
    for workingValue18, stateFlag11 in localValue12, localValue22, localValue32, localValue42 do
      stateFlag13 = string
      stateFlag13 = stateFlag13.sub
      stateFlag14 = stateFlag11
      cmgOperation16 = 1
      stateFlag17 = 50
      stateFlag13 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
      stateFlag14 = #stateFlag13
      if stateFlag14 >= 50 then
        stateFlag14 = stateFlag13
        cmgOperation16 = "..."
        stateFlag14 = stateFlag14 .. cmgOperation16
        stateFlag13 = stateFlag14
      end
      stateFlag14 = RageUI
      stateFlag14 = stateFlag14.ButtonWithStyle
      cmgOperation16 = stateFlag13
      stateFlag17 = stateFlag11
      number2 = {}
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
      function stateFlag2()
        local localValue13, localValue23
      end
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag14(cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2)
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "rentedout"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7, text8, text9
    localValue12 = pairs
    localValue22 = dataCollection5
    localValue12, localValue22, localValue32, localValue42 = localValue12(localValue22)
    for workingValue18, stateFlag11 in localValue12, localValue22, localValue32, localValue42 do
      stateFlag14 = stateFlag11.uuid
      stateFlag13 = dataCollection12
      stateFlag13 = stateFlag13[stateFlag14]
      if not stateFlag13 then
        stateFlag13 = stateFlag11.vehicleName
      end
      stateFlag14 = stateFlag11.rentedBy
      cmgOperation16 = stateFlag11.hoursLeft
      stateFlag17 = RageUI
      stateFlag17 = stateFlag17.ButtonWithStyle
      number2 = stateFlag13
      stateFlag = "Rented to "
      stateFlag2 = stateFlag14
      stateFlag3 = " - "
      workingValue8 = cmgOperation16
      text6 = " hours left!"
      stateFlag = stateFlag .. stateFlag2 .. stateFlag3 .. workingValue8 .. text6
      stateFlag2 = {}
      stateFlag2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
      function workingValue8(localValue13, localValue23, localValue33)
        local vehicle2
        if localValue33 then
          vehicle2 = stateFlag11
          dataCollection2 = vehicle2
          dataCollection2.type = "rentingout"
        end
      end
      text6 = RMenu
      text7 = text6
      text6 = text6.Get
      text8 = "garages"
      text9 = "rentedinfo"
      text6, text7, text8, text9 = text6(text7, text8, text9)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag17(number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7, text8, text9)
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "rentedin"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7, text8, text9
    localValue12 = pairs
    localValue22 = dataCollection4
    localValue12, localValue22, localValue32, localValue42 = localValue12(localValue22)
    for workingValue18, stateFlag11 in localValue12, localValue22, localValue32, localValue42 do
      stateFlag14 = stateFlag11.uuid
      stateFlag13 = dataCollection12
      stateFlag13 = stateFlag13[stateFlag14]
      if not stateFlag13 then
        stateFlag13 = stateFlag11.vehicleName
      end
      stateFlag14 = stateFlag11.rentedBy
      cmgOperation16 = stateFlag11.hoursLeft
      stateFlag17 = RageUI
      stateFlag17 = stateFlag17.ButtonWithStyle
      number2 = stateFlag13
      stateFlag = "Rented from "
      stateFlag2 = stateFlag14
      stateFlag3 = " - "
      workingValue8 = cmgOperation16
      text6 = " hours left!"
      stateFlag = stateFlag .. stateFlag2 .. stateFlag3 .. workingValue8 .. text6
      stateFlag2 = {}
      stateFlag2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag3 = true

      -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue13, localValue23, localValue33) ===
      function workingValue8(localValue13, localValue23, localValue33)
        local vehicle2
        if localValue33 then
          vehicle2 = stateFlag11
          dataCollection2 = vehicle2
          dataCollection2.type = "rentingin"
        end
      end
      text6 = RMenu
      text7 = text6
      text6 = text6.Get
      text8 = "garages"
      text9 = "rentedinfo"
      text6, text7, text8, text9 = text6(text7, text8, text9)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag17(number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7, text8, text9)
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "rentedinfo"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17
    localValue12 = dataCollection2.uuid
    localValue22 = dataCollection2.vehicleName
    localValue32 = dataCollection2.rentedBy
    localValue42 = dataCollection2.hoursLeft
    workingValue18 = RageUI
    workingValue18 = workingValue18.Separator
    stateFlag11 = "~y~Rent Info"
    workingValue18(stateFlag11)
    workingValue18 = RageUI
    workingValue18 = workingValue18.Separator
    stateFlag11 = "---------"
    workingValue18(stateFlag11)
    workingValue18 = RageUI
    workingValue18 = workingValue18.Separator
    stateFlag11 = "Vehicle: "
    stateFlag13 = localValue22
    stateFlag11 = stateFlag11 .. stateFlag13
    workingValue18(stateFlag11)
    workingValue18 = RageUI
    workingValue18 = workingValue18.Separator
    stateFlag11 = "Rented from: "
    stateFlag13 = localValue32
    stateFlag11 = stateFlag11 .. stateFlag13
    workingValue18(stateFlag11)
    workingValue18 = RageUI
    workingValue18 = workingValue18.Separator
    stateFlag11 = "Hours Left: "
    stateFlag13 = localValue42
    stateFlag11 = stateFlag11 .. stateFlag13
    workingValue18(stateFlag11)
    workingValue18 = RageUI
    workingValue18 = workingValue18.ButtonWithStyle
    stateFlag11 = "Request Rent Cancellation"
    stateFlag13 = ""
    stateFlag14 = {}
    stateFlag14.RightLabel = "\226\134\146\226\134\146\226\134\146"
    cmgOperation16 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag17; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag17(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12, cmgOperation12, text17
      if localValue33 then
        vehicle2 = TriggerServerEvent
        cmgOperation6 = "3f4752da34"
        stateFlag12 = localValue22
        cmgOperation12 = localValue12
        text17 = dataCollection2.type
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3f4752da34".
        vehicle2(cmgOperation6, stateFlag12, cmgOperation12, text17)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue18(stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "paymentplaninfo"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14
    localValue12 = workingValue11
    if not localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~y~Fetching information..."
      localValue12(localValue22)
      return
    end
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Vehicle: "
    localValue32 = workingValue11.vehicleName
    localValue22 = localValue22 .. localValue32
    localValue12(localValue22)
    localValue12 = workingValue11.sellerUserId
    localValue22 = CMG
    localValue22 = localValue22.getClientUserId
    -- Beginner: result below is userId.
    localValue22 = localValue22()
    localValue12 = localValue12 == localValue22
    if localValue12 then
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue32 = "~y~Buying Player: "
      localValue42 = workingValue11.buyerName
      workingValue18 = " ("
      stateFlag11 = tostring
      stateFlag13 = workingValue11.buyerUserId
      stateFlag11 = stateFlag11(stateFlag13)
      stateFlag13 = ")"
      localValue32 = localValue32 .. localValue42 .. workingValue18 .. stateFlag11 .. stateFlag13
      localValue22(localValue32)
    else
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue32 = "~y~Selling Player: "
      localValue42 = workingValue11.sellerName
      workingValue18 = " ("
      stateFlag11 = tostring
      stateFlag13 = workingValue11.sellerUserId
      stateFlag11 = stateFlag11(stateFlag13)
      stateFlag13 = ")"
      localValue32 = localValue32 .. localValue42 .. workingValue18 .. stateFlag11 .. stateFlag13
      localValue22(localValue32)
    end
    localValue22 = workingValue11.hasPaidThisWeek
    if localValue22 then
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue32 = "~g~The payment for this week is completed!"
      localValue22(localValue32)
    else
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue32 = "~r~The payment for this week is outstanding."
      localValue22(localValue32)
    end
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue32 = "Total Price"
    localValue42 = "The total amount of money that has to be paid."
    workingValue18 = {}
    stateFlag11 = "\194\163"
    stateFlag13 = getMoneyStringFormatted
    stateFlag14 = workingValue11.totalPrice
    stateFlag13 = stateFlag13(stateFlag14)
    stateFlag11 = stateFlag11 .. stateFlag13
    workingValue18.RightLabel = stateFlag11
    stateFlag11 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
    function stateFlag13()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue32, localValue42, workingValue18, stateFlag11, stateFlag13)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue32 = "Amount Paid"
    localValue42 = "The amount of money that has been paid so far."
    workingValue18 = {}
    stateFlag11 = "\194\163"
    stateFlag13 = getMoneyStringFormatted
    stateFlag14 = workingValue11.amountPaid
    stateFlag13 = stateFlag13(stateFlag14)
    stateFlag11 = stateFlag11 .. stateFlag13
    workingValue18.RightLabel = stateFlag11
    stateFlag11 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
    function stateFlag13()
      local localValue13, localValue23
    end
    localValue22(localValue32, localValue42, workingValue18, stateFlag11, stateFlag13)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue32 = "Weeks Remaining"
    localValue42 = "The amount of weeks left until the payment plan is paid off."
    workingValue18 = {}
    stateFlag11 = tostring
    stateFlag13 = workingValue11.weeksRemaining
    stateFlag11 = stateFlag11(stateFlag13)
    stateFlag13 = " week"
    stateFlag14 = workingValue11.weeksRemaining
    if stateFlag14 > 1 then
      stateFlag14 = "s"
      if stateFlag14 then
        goto continueAtStep107
      end
    end
    stateFlag14 = ""
    ::continueAtStep107::
    stateFlag11 = stateFlag11 .. stateFlag13 .. stateFlag14
    workingValue18.RightLabel = stateFlag11
    stateFlag11 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
    function stateFlag13()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue32, localValue42, workingValue18, stateFlag11, stateFlag13)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue32 = "Missed Weeks Remaining"
    localValue42 = "The amount of weeks a missed payment is allowed."
    workingValue18 = {}
    stateFlag11 = tostring
    stateFlag13 = workingValue11.missedWeeksRemaining
    stateFlag11 = stateFlag11(stateFlag13)
    stateFlag13 = " week"
    stateFlag14 = workingValue11.missedWeeksRemaining
    if stateFlag14 > 1 then
      stateFlag14 = "s"
      if stateFlag14 then
        goto continueAtStep129
      end
    end
    stateFlag14 = ""
    ::continueAtStep129::
    stateFlag11 = stateFlag11 .. stateFlag13 .. stateFlag14
    workingValue18.RightLabel = stateFlag11
    stateFlag11 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
    function stateFlag13()
      local localValue13, localValue23
    end
    localValue22(localValue32, localValue42, workingValue18, stateFlag11, stateFlag13)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue32 = "Week Start Time"
    localValue42 = "The time that is considered the start of the week."
    workingValue18 = {}
    stateFlag11 = workingValue11.weekStartTime
    workingValue18.RightLabel = stateFlag11
    stateFlag11 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
    function stateFlag13()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue32, localValue42, workingValue18, stateFlag11, stateFlag13)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue32 = "Last Payment Time"
    localValue42 = "The time the payment plan last had a payment."
    workingValue18 = {}
    stateFlag11 = workingValue11.lastPaymentTime
    workingValue18.RightLabel = stateFlag11
    stateFlag11 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
    function stateFlag13()
      local localValue13, localValue23
    end
    localValue22(localValue32, localValue42, workingValue18, stateFlag11, stateFlag13)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue32 = "Failed Return Date"
    localValue42 = "The time the vehicle would be returned if no further payments were made (within the hour)."
    workingValue18 = {}
    stateFlag11 = workingValue11.estimatedReturnDate
    workingValue18.RightLabel = stateFlag11
    stateFlag11 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
    function stateFlag13()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue32, localValue42, workingValue18, stateFlag11, stateFlag13)
    if not localValue12 then
      localValue22 = workingValue11.hasPaidThisWeek
      if not localValue22 then
        localValue22 = RageUI
        localValue22 = localValue22.ButtonWithStyle
        localValue32 = "~g~Pay Debt This week"
        localValue42 = "You will make a payment of \194\163"
        workingValue18 = getMoneyStringFormatted
        stateFlag11 = workingValue11.amountPayThisWeek
        workingValue18 = workingValue18(stateFlag11)
        stateFlag11 = " this week."
        localValue42 = localValue42 .. workingValue18 .. stateFlag11
        workingValue18 = {}
        workingValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag11 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: localValue13, localValue23, localValue33) ===
        function stateFlag13(localValue13, localValue23, localValue33)
          local vehicle2, cmgOperation6, stateFlag12
          if localValue33 then
            vehicle2 = TriggerServerEvent
            cmgOperation6 = "54e798dce5"
            stateFlag12 = workingValue11.vehicleUUID
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "54e798dce5".
            vehicle2(cmgOperation6, stateFlag12)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        localValue22(localValue32, localValue42, workingValue18, stateFlag11, stateFlag13)
      else
        localValue22 = RageUI
        localValue22 = localValue22.ButtonWithStyle
        localValue32 = "~y~Pay Week In Advance"
        localValue42 = "You will make a payment of \194\163"
        workingValue18 = getMoneyStringFormatted
        stateFlag11 = workingValue11.amountPayThisWeek
        workingValue18 = workingValue18(stateFlag11)
        stateFlag11 = " for the next week."
        localValue42 = localValue42 .. workingValue18 .. stateFlag11
        workingValue18 = {}
        workingValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag11 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: localValue13, localValue23, localValue33) ===
        function stateFlag13(localValue13, localValue23, localValue33)
          local vehicle2, cmgOperation6, stateFlag12
          if localValue33 then
            vehicle2 = TriggerServerEvent
            cmgOperation6 = "54e798dce5"
            stateFlag12 = workingValue11.vehicleUUID
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "54e798dce5".
            vehicle2(cmgOperation6, stateFlag12)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        localValue22(localValue32, localValue42, workingValue18, stateFlag11, stateFlag13)
      end
      localValue22 = RageUI
      localValue22 = localValue22.ButtonWithStyle
      localValue32 = "~r~Request Payment Plan Cancellation"
      localValue42 = "~r~This will cancel the payment plan and return the vehicle back to the seller. You will not receive any money back from doing this."
      workingValue18 = {}
      stateFlag11 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag13(localValue13, localValue23, localValue33)
        local vehicle2, cmgOperation6, stateFlag12
        if localValue33 then
          vehicle2 = TriggerServerEvent
          cmgOperation6 = "ce91f872d5"
          stateFlag12 = workingValue11.vehicleUUID
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce91f872d5".
          vehicle2(cmgOperation6, stateFlag12)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue22(localValue32, localValue42, workingValue18, stateFlag11, stateFlag13)
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "listgarages"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6
    localValue12 = dataCollection11.showCustomFoldersInGarageMenu
    if not localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "[Custom Folders]"
      localValue32 = ""
      localValue42 = {}
      localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue18 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag11(localValue13, localValue23, localValue33)
      end
      stateFlag13 = RMenu
      stateFlag14 = stateFlag13
      stateFlag13 = stateFlag13.Get
      cmgOperation16 = "garages"
      stateFlag17 = "customfolders"
      stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6)
    else
      localValue12 = workingValue32
      localValue12()
    end
    localValue12 = pairs
    localValue22 = dataCollection18
    localValue12, localValue22, localValue32, localValue42 = localValue12(localValue22)
    for workingValue18, stateFlag11 in localValue12, localValue22, localValue32, localValue42 do
      stateFlag13 = eventHandler4
      stateFlag14 = stateFlag11.type
      stateFlag13 = stateFlag13(stateFlag14)
      if not stateFlag13 then
        stateFlag13 = stateFlag11.isGangGarage
        if not stateFlag13 then
          goto continueAtStep53
        end
      end
      stateFlag13 = text4
      stateFlag14 = stateFlag11.class
      if stateFlag13 == stateFlag14 then
        stateFlag13 = RageUI
        stateFlag13 = stateFlag13.ButtonWithStyle
        stateFlag14 = stateFlag11.type
        cmgOperation16 = ""
        stateFlag17 = {}
        stateFlag17.RightLabel = "\226\134\146\226\134\146\226\134\146"
        number2 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue13, localValue23, localValue33) ===
        function stateFlag(localValue13, localValue23, localValue33)
          local vehicle2, cmgOperation6
          if localValue33 then
            vehicle2 = stateFlag11
            workingValue34 = vehicle2
            vehicle2 = nil
            workingValue12 = vehicle2
            vehicle2 = CreateThread
            -- Beginner: this function is the body of a background FiveM thread.

            -- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
            function cmgOperation6()
              local localValue14, cmgOperation4, text11, workingValue17
              localValue14 = stateFlag11.type
              cmgOperation4 = CMG
              cmgOperation4 = cmgOperation4.TriggerServerCallback
              text11 = "d189dbfff3"
              workingValue17 = localValue14
              cmgOperation4 = cmgOperation4(text11, workingValue17)
              text11 = workingValue34
              if text11 then
                text11 = workingValue34.type
                if text11 == localValue14 then
                  workingValue4 = cmgOperation4
                  workingValue6 = localValue14
                end
              end
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            vehicle2(cmgOperation6)
          end
        end
        stateFlag2 = RMenu
        stateFlag3 = stateFlag2
        stateFlag2 = stateFlag2.Get
        workingValue8 = "garages"
        text6 = "vehiclemenu"
        stateFlag2, stateFlag3, workingValue8, text6 = stateFlag2(stateFlag3, workingValue8, text6)
        -- Beginner: Draw a selectable RageUI menu button.
        stateFlag13(stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6)
      end
      ::continueAtStep53::
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "customfolders"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22
    localValue12 = workingValue32
    localValue12()
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "spawnmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7
    localValue12 = workingValue34
    if localValue12 then
      localValue12 = workingValue34.isGangGarage
    end
    if not localValue12 then
      localValue22 = workingValue31
      localValue32 = text15
      localValue22 = localValue22(localValue32)
      if not localValue22 then
        localValue22 = RageUI
        localValue22 = localValue22.Visible
        localValue32 = RMenu
        localValue42 = localValue32
        localValue32 = localValue32.Get
        workingValue18 = "garages"
        stateFlag11 = "mainmenu"
        -- Beginner: result below is menu.
        localValue32 = localValue32(localValue42, workingValue18, stateFlag11)
        localValue42 = true
        localValue22(localValue32, localValue42)
        return
      end
    end
    localValue22 = text16
    localValue42 = text15
    localValue32 = dataCollection16
    localValue32 = localValue32[localValue42]
    if localValue32 then
      localValue32 = localValue22
      localValue42 = " | "
      workingValue18 = "Rarity (1:"
      stateFlag11 = tostring
      stateFlag14 = text15
      stateFlag13 = dataCollection16
      stateFlag13 = stateFlag13[stateFlag14]
      stateFlag11 = stateFlag11(stateFlag13)
      stateFlag13 = ")"
      localValue32 = localValue32 .. localValue42 .. workingValue18 .. stateFlag11 .. stateFlag13
      localValue22 = localValue32
    end
    localValue42 = number23
    localValue32 = dataCollection17
    localValue32 = localValue32[localValue42]
    if localValue32 then
      localValue32 = localValue22
      localValue42 = " | Milage ("
      workingValue18 = tostring
      stateFlag13 = number23
      stateFlag11 = dataCollection17
      stateFlag11 = stateFlag11[stateFlag13]
      workingValue18 = workingValue18(stateFlag11)
      stateFlag11 = " miles)"
      localValue32 = localValue32 .. localValue42 .. workingValue18 .. stateFlag11
      localValue22 = localValue32
    end
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "Spawn Vehicle"
    workingValue18 = localValue22
    stateFlag11 = {}
    stateFlag11.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag13 = CMG
    stateFlag13 = stateFlag13.isInsideNoVehicleZone
    stateFlag13 = stateFlag13()
    stateFlag13 = not stateFlag13

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag14(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12, cmgOperation12, text17, stateFlag15, tableHelper3, workingValue3, workingValue5
      if localValue33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.getPlayerCombatTimer
        vehicle2 = vehicle2()
        if vehicle2 > 0 then
          vehicle2 = notify
          cmgOperation6 = "~r~You can not spawn a vehicle with a combat timer."
          -- Beginner: Show a notification to the player.
          vehicle2(cmgOperation6)
          return
        end
        vehicle2 = CMG
        vehicle2 = vehicle2.isInCustomRace
        vehicle2 = vehicle2()
        if vehicle2 then
          vehicle2 = notify
          cmgOperation6 = "~r~You can not spawn new vehicles in a race."
          vehicle2(cmgOperation6)
          return
        end
        vehicle2 = pairs
        cmgOperation6 = dataCollection3
        vehicle2, cmgOperation6, stateFlag12, cmgOperation12 = vehicle2(cmgOperation6)
        for text17, stateFlag15 in vehicle2, cmgOperation6, stateFlag12, cmgOperation12 do
          tableHelper3 = DoesEntityExist
          workingValue3 = stateFlag15
          tableHelper3 = tableHelper3(workingValue3)
          if not tableHelper3 then
            tableHelper3 = table
            tableHelper3 = tableHelper3.remove
            workingValue3 = dataCollection3
            workingValue5 = text17
            tableHelper3(workingValue3, workingValue5)
          end
        end
        vehicle2 = dataCollection3
        vehicle2 = #vehicle2
        if vehicle2 <= 5 then
          vehicle2 = DeleteVehicle
          cmgOperation6 = number3
          vehicle2(cmgOperation6)
          vehicle2 = 0
          number3 = vehicle2
          vehicle2 = 0
          number4 = vehicle2
          vehicle2 = false
          stateFlag4 = vehicle2
          vehicle2 = DestroyCam
          cmgOperation6 = cmgOperation11
          stateFlag12 = false
          vehicle2(cmgOperation6, stateFlag12)
          vehicle2 = RenderScriptCams
          cmgOperation6 = false
          stateFlag12 = false
          cmgOperation12 = 1
          text17 = true
          stateFlag15 = true
          vehicle2(cmgOperation6, stateFlag12, cmgOperation12, text17, stateFlag15)
          vehicle2 = 0
          cmgOperation11 = vehicle2
          vehicle2 = SetFocusEntity
          cmgOperation6 = GetPlayerPed
          stateFlag12 = PlayerId
          stateFlag12, cmgOperation12, text17, stateFlag15, tableHelper3, workingValue3, workingValue5 = stateFlag12()
          cmgOperation6, stateFlag12, cmgOperation12, text17, stateFlag15, tableHelper3, workingValue3, workingValue5 = cmgOperation6(stateFlag12, cmgOperation12, text17, stateFlag15, tableHelper3, workingValue3, workingValue5)
          vehicle2(cmgOperation6, stateFlag12, cmgOperation12, text17, stateFlag15, tableHelper3, workingValue3, workingValue5)
          vehicle2 = SetEntityAlpha
          cmgOperation6 = CMG
          cmgOperation6 = cmgOperation6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation6 = cmgOperation6()
          stateFlag12 = 255
          cmgOperation12 = false
          vehicle2(cmgOperation6, stateFlag12, cmgOperation12)
          vehicle2 = FreezeEntityPosition
          cmgOperation6 = CMG
          cmgOperation6 = cmgOperation6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation6 = cmgOperation6()
          stateFlag12 = false
          -- Beginner: Freeze or unfreeze an entity in place.
          vehicle2(cmgOperation6, stateFlag12)
          vehicle2 = SetEntityCollision
          cmgOperation6 = CMG
          cmgOperation6 = cmgOperation6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation6 = cmgOperation6()
          stateFlag12 = true
          cmgOperation12 = true
          vehicle2(cmgOperation6, stateFlag12, cmgOperation12)
          vehicle2 = Citizen
          vehicle2 = vehicle2.CreateThreadNow

          -- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
          function cmgOperation6()
            local localValue14, cmgOperation4
            localValue14 = text23
            cmgOperation4 = number23
            localValue14(cmgOperation4)
          end
          vehicle2(cmgOperation6)
          vehicle2 = number23
          workingValue14 = vehicle2
        else
          vehicle2 = tCMG
          vehicle2 = vehicle2.notify
          cmgOperation6 = "~r~You may only take out a maximum of 5 vehicles at a time."
          -- Beginner: Show a notification to the player.
          vehicle2(cmgOperation6)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
    localValue32 = text4
    localValue32 = CMG
    localValue32 = localValue32.hasClientSkill
    localValue42 = "mechanic_remote_ls_customs"
    localValue32 = "vehicle" == localValue32 and localValue32
    localValue42 = RageUI
    localValue42 = localValue42.ButtonWithStyle
    workingValue18 = "LS Customs"
    stateFlag11 = "(Skill Required)"
    stateFlag13 = {}
    stateFlag13.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag14 = localValue32 or stateFlag14
    if localValue32 then
      stateFlag14 = CMG
      stateFlag14 = stateFlag14.isInsideNoVehicleZone
      stateFlag14 = stateFlag14()
      stateFlag14 = not stateFlag14
    end

    -- === HELPER FUNCTION (decompiler name: cmgOperation16; parameters: localValue13, localValue23, localValue33) ===
    function cmgOperation16(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12, cmgOperation12, text17, stateFlag15, tableHelper3, workingValue3, workingValue5
      if localValue33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.getPlayerCombatTimer
        vehicle2 = vehicle2()
        if vehicle2 > 0 then
          vehicle2 = notify
          cmgOperation6 = "~r~You can not spawn a vehicle with a combat timer."
          -- Beginner: Show a notification to the player.
          vehicle2(cmgOperation6)
          return
        end
        vehicle2 = CMG
        vehicle2 = vehicle2.isInCustomRace
        vehicle2 = vehicle2()
        if vehicle2 then
          vehicle2 = notify
          cmgOperation6 = "~r~You can not spawn new vehicles in a race."
          vehicle2(cmgOperation6)
          return
        end
        vehicle2 = pairs
        cmgOperation6 = dataCollection3
        vehicle2, cmgOperation6, stateFlag12, cmgOperation12 = vehicle2(cmgOperation6)
        for text17, stateFlag15 in vehicle2, cmgOperation6, stateFlag12, cmgOperation12 do
          tableHelper3 = DoesEntityExist
          workingValue3 = stateFlag15
          tableHelper3 = tableHelper3(workingValue3)
          if not tableHelper3 then
            tableHelper3 = table
            tableHelper3 = tableHelper3.remove
            workingValue3 = dataCollection3
            workingValue5 = text17
            tableHelper3(workingValue3, workingValue5)
          end
        end
        vehicle2 = dataCollection3
        vehicle2 = #vehicle2
        if vehicle2 <= 5 then
          vehicle2 = DeleteVehicle
          cmgOperation6 = number3
          vehicle2(cmgOperation6)
          vehicle2 = 0
          number3 = vehicle2
          vehicle2 = 0
          number4 = vehicle2
          vehicle2 = false
          stateFlag4 = vehicle2
          vehicle2 = DestroyCam
          cmgOperation6 = cmgOperation11
          stateFlag12 = false
          vehicle2(cmgOperation6, stateFlag12)
          vehicle2 = RenderScriptCams
          cmgOperation6 = false
          stateFlag12 = false
          cmgOperation12 = 1
          text17 = true
          stateFlag15 = true
          vehicle2(cmgOperation6, stateFlag12, cmgOperation12, text17, stateFlag15)
          vehicle2 = 0
          cmgOperation11 = vehicle2
          vehicle2 = SetFocusEntity
          cmgOperation6 = GetPlayerPed
          stateFlag12 = PlayerId
          stateFlag12, cmgOperation12, text17, stateFlag15, tableHelper3, workingValue3, workingValue5 = stateFlag12()
          cmgOperation6, stateFlag12, cmgOperation12, text17, stateFlag15, tableHelper3, workingValue3, workingValue5 = cmgOperation6(stateFlag12, cmgOperation12, text17, stateFlag15, tableHelper3, workingValue3, workingValue5)
          vehicle2(cmgOperation6, stateFlag12, cmgOperation12, text17, stateFlag15, tableHelper3, workingValue3, workingValue5)
          vehicle2 = SetEntityAlpha
          cmgOperation6 = CMG
          cmgOperation6 = cmgOperation6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation6 = cmgOperation6()
          stateFlag12 = 255
          cmgOperation12 = false
          vehicle2(cmgOperation6, stateFlag12, cmgOperation12)
          vehicle2 = FreezeEntityPosition
          cmgOperation6 = CMG
          cmgOperation6 = cmgOperation6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation6 = cmgOperation6()
          stateFlag12 = false
          -- Beginner: Freeze or unfreeze an entity in place.
          vehicle2(cmgOperation6, stateFlag12)
          vehicle2 = SetEntityCollision
          cmgOperation6 = CMG
          cmgOperation6 = cmgOperation6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation6 = cmgOperation6()
          stateFlag12 = true
          cmgOperation12 = true
          vehicle2(cmgOperation6, stateFlag12, cmgOperation12)
          vehicle2 = Citizen
          vehicle2 = vehicle2.CreateThreadNow

          -- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
          function cmgOperation6()
            local localValue14, cmgOperation4, text11
            localValue14 = text23
            cmgOperation4 = number23
            text11 = {}
            text11.remoteLsCustoms = true
            localValue14(cmgOperation4, text11)
          end
          vehicle2(cmgOperation6)
          vehicle2 = number23
          workingValue14 = vehicle2
        else
          vehicle2 = tCMG
          vehicle2 = vehicle2.notify
          cmgOperation6 = "~r~You may only take out a maximum of 5 vehicles at a time."
          -- Beginner: Show a notification to the player.
          vehicle2(cmgOperation6)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue42(workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16)
    localValue42 = RageUI
    localValue42 = localValue42.ButtonWithStyle
    workingValue18 = "Open Boot"
    stateFlag11 = localValue22
    stateFlag13 = {}
    stateFlag13.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag14 = CMG
    stateFlag14 = stateFlag14.isInGreenzone
    stateFlag14 = stateFlag14()

    -- === HELPER FUNCTION (decompiler name: cmgOperation16; parameters: localValue13, localValue23, localValue33) ===
    function cmgOperation16(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12, cmgOperation12
      if localValue33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.getPlayerCombatTimer
        vehicle2 = vehicle2()
        if vehicle2 > 0 then
          vehicle2 = notify
          cmgOperation6 = "~r~You can not open the boot with a combat timer."
          -- Beginner: Show a notification to the player.
          vehicle2(cmgOperation6)
          return
        end
        vehicle2 = CMG
        vehicle2 = vehicle2.isInCustomRace
        vehicle2 = vehicle2()
        if vehicle2 then
          vehicle2 = notify
          cmgOperation6 = "~r~You can not open the boot in a race."
          vehicle2(cmgOperation6)
          return
        end
        vehicle2 = workingValue27
        vehicle2 = vehicle2()
        cmgOperation6 = number23
        vehicle2 = vehicle2[cmgOperation6]
        if vehicle2 then
          cmgOperation6 = DoesEntityExist
          stateFlag12 = vehicle2[2]
          cmgOperation6 = cmgOperation6(stateFlag12)
          if cmgOperation6 then
            cmgOperation6 = notify
            stateFlag12 = "~r~You can not open the boot of a vehicle that is already out!"
            -- Beginner: Show a notification to the player.
            cmgOperation6(stateFlag12)
            return
          end
        end
        cmgOperation6 = CMG
        cmgOperation6 = cmgOperation6.setOpeningBootFromGarage
        cmgOperation6()
        cmgOperation6 = TriggerServerEvent
        stateFlag12 = "c28fbcd83a"
        cmgOperation12 = number23
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c28fbcd83a".
        cmgOperation6(stateFlag12, cmgOperation12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue42(workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16)
    if localValue12 then
      localValue42 = CMG
      localValue42 = localValue42.hasGangPermission
      workingValue18 = "removegarage"
      localValue42 = localValue42(workingValue18)
      workingValue18 = RageUI
      workingValue18 = workingValue18.ButtonWithStyle
      stateFlag11 = "Remove from Gang Garage"
      stateFlag13 = localValue22
      stateFlag14 = {}
      stateFlag14.RightLabel = "\226\134\146\226\134\146\226\134\146"
      cmgOperation16 = localValue42

      -- === HELPER FUNCTION (decompiler name: stateFlag17; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag17(localValue13, localValue23, localValue33)
        local vehicle2, cmgOperation6, stateFlag12
        if localValue33 then
          vehicle2 = localValue42
          if vehicle2 then
            vehicle2 = TriggerServerEvent
            cmgOperation6 = "00689ace60"
            stateFlag12 = number23
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "00689ace60".
            vehicle2(cmgOperation6, stateFlag12)
          end
        end
      end
      number2 = RMenu
      stateFlag = number2
      number2 = number2.Get
      stateFlag2 = "garages"
      stateFlag3 = "spawnmenu"
      number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7 = number2(stateFlag, stateFlag2, stateFlag3)
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue18(stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7)
    end
    if not localValue12 then
      localValue42 = CMG
      localValue42 = localValue42.canVehicleBeSold
      workingValue18 = text15
      localValue42 = localValue42(workingValue18)
      if localValue42 then
        localValue42 = cmgOperation7
        workingValue18 = number23
        localValue42 = localValue42(workingValue18)
        localValue42 = not localValue42
      end
      workingValue18 = cmgOperation7
      stateFlag11 = number23
      workingValue18 = workingValue18(stateFlag11)
      if workingValue18 then
        workingValue18 = cmgOperation8
        if workingValue18 then
          goto continueAtStep147
        end
      end
      workingValue18 = localValue22
      ::continueAtStep147::
      stateFlag11 = RageUI
      stateFlag11 = stateFlag11.ButtonWithStyle
      stateFlag13 = "Sell Vehicle to Player"
      stateFlag14 = workingValue18
      cmgOperation16 = {}
      cmgOperation16.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag17 = localValue42

      -- === HELPER FUNCTION (decompiler name: number2; parameters: localValue13, localValue23, localValue33) ===
      function number2(localValue13, localValue23, localValue33)
        local vehicle2, cmgOperation6, stateFlag12
        if localValue33 then
          vehicle2 = localValue42
          if vehicle2 then
            vehicle2 = CMG
            vehicle2 = vehicle2.displaySellDisclaimer
            cmgOperation6 = "vehicle"

            -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: none) ===
            function stateFlag12()
              local localValue14, cmgOperation4, text11
              localValue14 = TriggerServerEvent
              cmgOperation4 = "0d3561179d"
              text11 = number23
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0d3561179d".
              localValue14(cmgOperation4, text11)
            end
            vehicle2(cmgOperation6, stateFlag12)
          end
        end
      end
      stateFlag = RMenu
      stateFlag2 = stateFlag
      stateFlag = stateFlag.Get
      stateFlag3 = "garages"
      workingValue8 = "spawnmenu"
      stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7 = stateFlag(stateFlag2, stateFlag3, workingValue8)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag11(stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7)
      stateFlag11 = RageUI
      stateFlag11 = stateFlag11.ButtonWithStyle
      stateFlag13 = "Rent Vehicle to Player"
      stateFlag14 = localValue22
      cmgOperation16 = {}
      cmgOperation16.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag17 = CMG
      stateFlag17 = stateFlag17.canVehicleBeRented
      number2 = text15
      stateFlag17 = stateFlag17(number2)

      -- === HELPER FUNCTION (decompiler name: number2; parameters: localValue13, localValue23, localValue33) ===
      function number2(localValue13, localValue23, localValue33)
        local vehicle2, cmgOperation6, stateFlag12
        if localValue33 then
          vehicle2 = CMG
          vehicle2 = vehicle2.canVehicleBeRented
          cmgOperation6 = text15
          vehicle2 = vehicle2(cmgOperation6)
          if vehicle2 then
            vehicle2 = TriggerServerEvent
            cmgOperation6 = "6cf393ee47"
            stateFlag12 = number23
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6cf393ee47".
            vehicle2(cmgOperation6, stateFlag12)
          end
        end
      end
      stateFlag = RMenu
      stateFlag2 = stateFlag
      stateFlag = stateFlag.Get
      stateFlag3 = "garages"
      workingValue8 = "spawnmenu"
      stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7 = stateFlag(stateFlag2, stateFlag3, workingValue8)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag11(stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7)
      stateFlag11 = CMG
      stateFlag11 = stateFlag11.canVehicleBeRented
      stateFlag13 = text15
      stateFlag11 = stateFlag11(stateFlag13)
      if stateFlag11 then
        stateFlag11 = cmgOperation7
        stateFlag13 = number23
        stateFlag11 = stateFlag11(stateFlag13)
        stateFlag11 = not stateFlag11
      end
      stateFlag13 = cmgOperation7
      stateFlag14 = number23
      stateFlag13 = stateFlag13(stateFlag14)
      if stateFlag13 then
        stateFlag13 = cmgOperation8
        if stateFlag13 then
          goto continueAtStep199
        end
      end
      stateFlag13 = localValue22
      ::continueAtStep199::
      stateFlag14 = RageUI
      stateFlag14 = stateFlag14.ButtonWithStyle
      cmgOperation16 = "Payment Plan Vehicle to Player"
      stateFlag17 = stateFlag13
      number2 = {}
      number2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag = stateFlag11

      -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
      function stateFlag2()
        local localValue13, localValue23
      end
      stateFlag3 = RMenu
      workingValue8 = stateFlag3
      stateFlag3 = stateFlag3.Get
      text6 = "garages"
      text7 = "paymentplan"
      stateFlag3, workingValue8, text6, text7 = stateFlag3(workingValue8, text6, text7)
      stateFlag14(cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7)
      stateFlag14 = RageUI
      stateFlag14 = stateFlag14.ButtonWithStyle
      cmgOperation16 = "Crush Vehicle"
      stateFlag17 = "This will ~r~DELETE ~w~this vehicle from your garage!"
      number2 = {}
      number2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag = CMG
      stateFlag = stateFlag.canVehicleBeSold
      stateFlag2 = text15
      stateFlag = stateFlag(stateFlag2)

      -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag2(localValue13, localValue23, localValue33)
      end
      stateFlag3 = RMenu
      workingValue8 = stateFlag3
      stateFlag3 = stateFlag3.Get
      text6 = "garages"
      text7 = "confirm"
      stateFlag3, workingValue8, text6, text7 = stateFlag3(workingValue8, text6, text7)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag14(cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7)
      stateFlag14 = RageUI
      stateFlag14 = stateFlag14.ButtonWithStyle
      cmgOperation16 = "Add to custom folder"
      stateFlag17 = localValue22
      number2 = {}
      number2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag2(localValue13, localValue23, localValue33)
        local vehicle2, cmgOperation6, stateFlag12, cmgOperation12, text17
        if localValue33 then
          vehicle2 = CMG
          vehicle2 = vehicle2.GetRageInputText
          cmgOperation6 = "Enter folder name:"
          vehicle2 = vehicle2(cmgOperation6)
          if vehicle2 then
            cmgOperation6 = CMG
            cmgOperation6 = cmgOperation6.addCarToCustomFolder
            stateFlag12 = number23
            cmgOperation12 = text16
            text17 = vehicle2
            cmgOperation6(stateFlag12, cmgOperation12, text17)
          end
        end
      end
      stateFlag3 = RMenu
      workingValue8 = stateFlag3
      stateFlag3 = stateFlag3.Get
      text6 = "garages"
      text7 = "spawnmenu"
      stateFlag3, workingValue8, text6, text7 = stateFlag3(workingValue8, text6, text7)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag14(cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7)
      stateFlag14 = RageUI
      stateFlag14 = stateFlag14.ButtonWithStyle
      cmgOperation16 = "Remove from custom folder"
      stateFlag17 = localValue22
      number2 = {}
      number2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag2(localValue13, localValue23, localValue33)
        local vehicle2, cmgOperation6, stateFlag12, cmgOperation12
        if localValue33 then
          vehicle2 = CMG
          vehicle2 = vehicle2.GetRageInputText
          cmgOperation6 = "Enter folder name:"
          vehicle2 = vehicle2(cmgOperation6)
          if vehicle2 then
            cmgOperation6 = CMG
            cmgOperation6 = cmgOperation6.removeCarFromCustomFolder
            stateFlag12 = number23
            cmgOperation12 = vehicle2
            cmgOperation6(stateFlag12, cmgOperation12)
          end
        end
      end
      stateFlag3 = RMenu
      workingValue8 = stateFlag3
      stateFlag3 = stateFlag3.Get
      text6 = "garages"
      text7 = "spawnmenu"
      stateFlag3, workingValue8, text6, text7 = stateFlag3(workingValue8, text6, text7)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag14(cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7)
      stateFlag14 = RageUI
      stateFlag14 = stateFlag14.ButtonWithStyle
      cmgOperation16 = "Assign Custom Name"
      stateFlag17 = "Assigns a custom name for this vehicle that is only visible to you"
      number2 = {}
      number2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag2(localValue13, localValue23, localValue33)
        local vehicle2, cmgOperation6, stateFlag12, cmgOperation12, text17
        if localValue33 then
          vehicle2 = CMG
          vehicle2 = vehicle2.GetRageInputText
          cmgOperation6 = "Enter custom name (blank to remove)"
          vehicle2 = vehicle2(cmgOperation6)
          if vehicle2 then
            cmgOperation6 = #vehicle2
            if cmgOperation6 >= 2 then
              stateFlag12 = number23
              cmgOperation6 = dataCollection12
              cmgOperation6[stateFlag12] = vehicle2
              cmgOperation6 = notify
              stateFlag12 = "~g~Custom name set to "
              cmgOperation12 = vehicle2
              text17 = "."
              stateFlag12 = stateFlag12 .. cmgOperation12 .. text17
              -- Beginner: Show a notification to the player.
              cmgOperation6(stateFlag12)
          end
          else
            stateFlag12 = number23
            cmgOperation6 = dataCollection12
            cmgOperation6[stateFlag12] = nil
            cmgOperation6 = notify
            stateFlag12 = "~g~Custom name removed."
            cmgOperation6(stateFlag12)
          end
          cmgOperation6 = SetResourceKvp
          stateFlag12 = "cmg_custom_vehicle_names"
          cmgOperation12 = json
          cmgOperation12 = cmgOperation12.encode
          text17 = dataCollection12
          cmgOperation12, text17 = cmgOperation12(text17)
          cmgOperation6(stateFlag12, cmgOperation12, text17)
        end
      end
      stateFlag3 = RMenu
      workingValue8 = stateFlag3
      stateFlag3 = stateFlag3.Get
      text6 = "garages"
      text7 = "spawnmenu"
      stateFlag3, workingValue8, text6, text7 = stateFlag3(workingValue8, text6, text7)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag14(cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7)
    end
    localValue42 = RageUI
    localValue42 = localValue42.ButtonWithStyle
    workingValue18 = "View Remote Dashcam"
    stateFlag11 = localValue22
    stateFlag13 = {}
    stateFlag13.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag14 = true

    -- === HELPER FUNCTION (decompiler name: cmgOperation16; parameters: localValue13, localValue23, localValue33) ===
    function cmgOperation16(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12
      if localValue33 then
        vehicle2 = TriggerServerEvent
        cmgOperation6 = "7444109bf3"
        stateFlag12 = number23
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7444109bf3".
        vehicle2(cmgOperation6, stateFlag12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue42(workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16)
    localValue42 = RageUI
    localValue42 = localValue42.ButtonWithStyle
    workingValue18 = "Display Vehicle Blip"
    stateFlag11 = localValue22
    stateFlag13 = {}
    stateFlag13.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag14 = true

    -- === HELPER FUNCTION (decompiler name: cmgOperation16; parameters: localValue13, localValue23, localValue33) ===
    function cmgOperation16(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12
      if localValue33 then
        vehicle2 = TriggerServerEvent
        cmgOperation6 = "a30d55e751"
        stateFlag12 = number23
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a30d55e751".
        vehicle2(cmgOperation6, stateFlag12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue42(workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16)
    if not localValue12 then
      localValue42 = CMG
      localValue42 = localValue42.hasGangPermission
      workingValue18 = "addgarage"
      localValue42 = localValue42(workingValue18)
      if localValue42 then
        localValue42 = CMG
        localValue42 = localValue42.canVehicleBeSold
        workingValue18 = text15
        localValue42 = localValue42(workingValue18)
        if localValue42 then
          localValue42 = CMG
          localValue42 = localValue42.canVehicleBeRented
          workingValue18 = text15
          localValue42 = localValue42(workingValue18)
          if localValue42 then
            workingValue18 = number23
            localValue42 = dataCollection21
            localValue42 = localValue42[workingValue18]
            localValue42 = not localValue42
          end
        end
      end
      workingValue18 = RageUI
      workingValue18 = workingValue18.ButtonWithStyle
      stateFlag11 = "~p~Move to Gang Garage"
      stateFlag13 = localValue22
      stateFlag14 = {}
      stateFlag14.RightLabel = "\226\134\146\226\134\146\226\134\146"
      cmgOperation16 = localValue42

      -- === HELPER FUNCTION (decompiler name: stateFlag17; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag17(localValue13, localValue23, localValue33)
        local vehicle2, cmgOperation6, stateFlag12
        if localValue33 then
          vehicle2 = localValue42
          if vehicle2 then
            vehicle2 = TriggerServerEvent
            cmgOperation6 = "987b362726"
            stateFlag12 = number23
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "987b362726".
            vehicle2(cmgOperation6, stateFlag12)
          end
        end
      end
      number2 = RMenu
      stateFlag = number2
      number2 = number2.Get
      stateFlag2 = "garages"
      stateFlag3 = "spawnmenu"
      number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7 = number2(stateFlag, stateFlag2, stateFlag3)
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue18(stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7)
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "paymentplan"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Vehicle: "
    localValue32 = CMG
    localValue32 = localValue32.getVehicleNameFromId
    localValue42 = text15
    localValue32 = localValue32(localValue42)
    localValue22 = localValue22 .. localValue32
    localValue12(localValue22)

    -- === HELPER FUNCTION: localValue12() ===
    function localValue12()
      local localValue13, localValue23
      localValue13 = number15
      localValue23 = number19
      localValue13 = localValue13 - localValue23
      return localValue13
    end

    -- === HELPER FUNCTION: localValue22() ===
    function localValue22()
      local localValue13, localValue23, localValue33
      localValue13 = stateFlag10
      if localValue13 then
        localValue13 = math
        localValue13 = localValue13.ceil
        localValue23 = localValue12
        localValue23 = localValue23()
        localValue33 = number16
        localValue23 = localValue23 / localValue33
        localValue13 = localValue13(localValue23)
        number17 = localValue13
      else
        localValue13 = math
        localValue13 = localValue13.ceil
        localValue23 = localValue12
        localValue23 = localValue23()
        localValue33 = number17
        localValue23 = localValue23 / localValue33
        localValue13 = localValue13(localValue23)
        number16 = localValue13
        localValue13 = number16
        if localValue13 > 26 then
          localValue13 = 1
          number16 = localValue13
          localValue13 = true
          stateFlag10 = localValue13
          localValue13 = localValue22
          localValue13()
        end
      end
    end
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "Total Price"
    workingValue18 = "The total amount of money that will have to be paid before ownership is transferred."
    stateFlag11 = {}
    stateFlag13 = "\194\163"
    stateFlag14 = getMoneyStringFormatted
    cmgOperation16 = number15
    stateFlag14 = stateFlag14(cmgOperation16)
    stateFlag13 = stateFlag13 .. stateFlag14
    stateFlag11.RightLabel = stateFlag13
    stateFlag13 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag14(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12, cmgOperation12
      if localValue33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.clientPrompt
        cmgOperation6 = "Enter Total Price"
        stateFlag12 = ""

        -- === HELPER FUNCTION (decompiler name: cmgOperation12; parameters: localValue14) ===
        function cmgOperation12(localValue14)
          local cmgOperation4, text11, workingValue17, mathHelper2, mathHelper3
          cmgOperation4 = tonumber
          text11 = localValue14
          cmgOperation4 = cmgOperation4(text11)
          if cmgOperation4 then
            text11 = math
            text11 = text11.type
            workingValue17 = cmgOperation4
            text11 = text11(workingValue17)
            if "integer" == text11 then
              text11 = 10000
              if cmgOperation4 >= text11 then
                text11 = 10000000000
                if cmgOperation4 <= text11 then
                  number15 = cmgOperation4
                  text11 = math
                  text11 = text11.min
                  workingValue17 = number19
                  mathHelper2 = math
                  mathHelper2 = mathHelper2.floor
                  mathHelper3 = cmgOperation4 / 2
                  mathHelper2, mathHelper3 = mathHelper2(mathHelper3)
                  text11 = text11(workingValue17, mathHelper2, mathHelper3)
                  number19 = text11
                  text11 = localValue22
                  text11()
              end
            end
          end
          else
            text11 = notify
            workingValue17 = "~r~Total price must be a whole number between \194\16310,000 and \194\16310,000,000,000."
            -- Beginner: Show a notification to the player.
            text11(workingValue17)
          end
        end
        vehicle2(cmgOperation6, stateFlag12, cmgOperation12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "Weeks To Pay"
    workingValue18 = "The amount of weeks the player has to pay off the plan. Automatically calculated if Pay Amount Per Week is set."
    stateFlag11 = {}
    stateFlag13 = tostring
    stateFlag14 = number16
    stateFlag13 = stateFlag13(stateFlag14)
    stateFlag14 = " week"
    cmgOperation16 = number16
    if cmgOperation16 > 1 then
      cmgOperation16 = "s"
      if cmgOperation16 then
        goto continueAtStep44
      end
    end
    cmgOperation16 = ""
    ::continueAtStep44::
    stateFlag13 = stateFlag13 .. stateFlag14 .. cmgOperation16
    stateFlag11.RightLabel = stateFlag13
    stateFlag13 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag14(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12, cmgOperation12
      if localValue33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.clientPrompt
        cmgOperation6 = "Enter Weeks To Pay"
        stateFlag12 = ""

        -- === HELPER FUNCTION (decompiler name: cmgOperation12; parameters: localValue14) ===
        function cmgOperation12(localValue14)
          local cmgOperation4, text11, workingValue17
          cmgOperation4 = tonumber
          text11 = localValue14
          cmgOperation4 = cmgOperation4(text11)
          if cmgOperation4 then
            text11 = math
            text11 = text11.type
            workingValue17 = cmgOperation4
            text11 = text11(workingValue17)
            if "integer" == text11 and cmgOperation4 >= 1 and cmgOperation4 <= 26 then
              number16 = cmgOperation4
              text11 = math
              text11 = text11.ceil
              workingValue17 = localValue12
              workingValue17 = workingValue17()
              workingValue17 = workingValue17 / cmgOperation4
              text11 = text11(workingValue17)
              number17 = text11
              text11 = true
              stateFlag10 = text11
          end
          else
            text11 = notify
            workingValue17 = "~r~Total amount of weeks must be a whole number between 1 week and 26 weeks."
            -- Beginner: Show a notification to the player.
            text11(workingValue17)
          end
        end
        vehicle2(cmgOperation6, stateFlag12, cmgOperation12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "Pay Amount Per Week"
    workingValue18 = "The amount of money to pay each week. Automatically calculated if Weekly Pay Amount is set."
    stateFlag11 = {}
    stateFlag13 = "\194\163"
    stateFlag14 = getMoneyStringFormatted
    cmgOperation16 = number17
    stateFlag14 = stateFlag14(cmgOperation16)
    stateFlag13 = stateFlag13 .. stateFlag14
    stateFlag11.RightLabel = stateFlag13
    stateFlag13 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag14(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12, cmgOperation12
      if localValue33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.clientPrompt
        cmgOperation6 = "Enter Amount Per Week"
        stateFlag12 = ""

        -- === HELPER FUNCTION (decompiler name: cmgOperation12; parameters: localValue14) ===
        function cmgOperation12(localValue14)
          local cmgOperation4, text11, workingValue17, mathHelper2, mathHelper3, workingValue24, text18
          cmgOperation4 = tonumber
          text11 = localValue14
          cmgOperation4 = cmgOperation4(text11)
          if cmgOperation4 then
            text11 = math
            text11 = text11.type
            workingValue17 = cmgOperation4
            text11 = text11(workingValue17)
            if "integer" == text11 then
              text11 = math
              text11 = text11.ceil
              workingValue17 = localValue12
              workingValue17 = workingValue17()
              workingValue17 = workingValue17 / 26
              text11 = text11(workingValue17)
              if cmgOperation4 >= text11 then
                text11 = localValue12
                text11 = text11()
                if cmgOperation4 <= text11 then
                  number17 = cmgOperation4
                  text11 = math
                  text11 = text11.ceil
                  workingValue17 = localValue12
                  workingValue17 = workingValue17()
                  workingValue17 = workingValue17 / cmgOperation4
                  text11 = text11(workingValue17)
                  number16 = text11
                  text11 = false
                  stateFlag10 = text11
              end
            end
          end
          else
            text11 = notify
            workingValue17 = "~r~Pay amount per week must be a whole number between \194\163"
            mathHelper2 = getMoneyStringFormatted
            mathHelper3 = math
            mathHelper3 = mathHelper3.ceil
            workingValue24 = localValue12
            workingValue24 = workingValue24()
            workingValue24 = workingValue24 / 26
            mathHelper3, workingValue24, text18 = mathHelper3(workingValue24)
            mathHelper2 = mathHelper2(mathHelper3, workingValue24, text18)
            mathHelper3 = " and \194\163"
            workingValue24 = getMoneyStringFormatted
            text18 = localValue12
            text18 = text18()
            workingValue24 = workingValue24(text18)
            text18 = "."
            workingValue17 = workingValue17 .. mathHelper2 .. mathHelper3 .. workingValue24 .. text18
            -- Beginner: Show a notification to the player.
            text11(workingValue17)
          end
        end
        vehicle2(cmgOperation6, stateFlag12, cmgOperation12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "Maximum Missed Payments"
    workingValue18 = "The maximum amount of missed payments in weeks allowed before the payment plan is automatically cancelled."
    stateFlag11 = {}
    stateFlag13 = tostring
    stateFlag14 = number18
    stateFlag13 = stateFlag13(stateFlag14)
    stateFlag14 = " week"
    cmgOperation16 = number18
    if cmgOperation16 > 1 then
      cmgOperation16 = "s"
      if cmgOperation16 then
        goto continueAtStep81
      end
    end
    cmgOperation16 = ""
    ::continueAtStep81::
    stateFlag13 = stateFlag13 .. stateFlag14 .. cmgOperation16
    stateFlag11.RightLabel = stateFlag13
    stateFlag13 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag14(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12, cmgOperation12
      if localValue33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.clientPrompt
        cmgOperation6 = "Enter Maximum Missed Payments"
        stateFlag12 = ""

        -- === HELPER FUNCTION (decompiler name: cmgOperation12; parameters: localValue14) ===
        function cmgOperation12(localValue14)
          local cmgOperation4, text11, workingValue17
          cmgOperation4 = tonumber
          text11 = localValue14
          cmgOperation4 = cmgOperation4(text11)
          if cmgOperation4 then
            text11 = math
            text11 = text11.type
            workingValue17 = cmgOperation4
            text11 = text11(workingValue17)
            if "integer" == text11 and cmgOperation4 >= 1 and cmgOperation4 <= 4 then
              number18 = cmgOperation4
          end
          else
            text11 = notify
            workingValue17 = "~r~Total price must be a whole number between 1 week and 4 weeks."
            -- Beginner: Show a notification to the player.
            text11(workingValue17)
          end
        end
        vehicle2(cmgOperation6, stateFlag12, cmgOperation12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "Initial Deposit"
    workingValue18 = "The amount that has to be paid when accepting the offer. Counts towards the total."
    stateFlag11 = {}
    stateFlag13 = "\194\163"
    stateFlag14 = getMoneyStringFormatted
    cmgOperation16 = number19
    stateFlag14 = stateFlag14(cmgOperation16)
    stateFlag13 = stateFlag13 .. stateFlag14
    stateFlag11.RightLabel = stateFlag13
    stateFlag13 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag14(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12, cmgOperation12
      if localValue33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.clientPrompt
        cmgOperation6 = "Enter Initial Deposit"
        stateFlag12 = ""

        -- === HELPER FUNCTION (decompiler name: cmgOperation12; parameters: localValue14) ===
        function cmgOperation12(localValue14)
          local cmgOperation4, text11, workingValue17, mathHelper2, mathHelper3, workingValue24
          cmgOperation4 = tonumber
          text11 = localValue14
          cmgOperation4 = cmgOperation4(text11)
          if cmgOperation4 then
            text11 = math
            text11 = text11.type
            workingValue17 = cmgOperation4
            text11 = text11(workingValue17)
            if "integer" == text11 and cmgOperation4 >= 0 then
              text11 = number15
              text11 = text11 / 2
              if cmgOperation4 <= text11 then
                number19 = cmgOperation4
                text11 = localValue22
                text11()
            end
          end
          else
            text11 = notify
            workingValue17 = "~r~Initial deposit must be a whole number between \194\1630 and \194\163"
            mathHelper2 = getMoneyStringFormatted
            mathHelper3 = math
            mathHelper3 = mathHelper3.floor
            workingValue24 = number15
            workingValue24 = workingValue24 / 2
            mathHelper3, workingValue24 = mathHelper3(workingValue24)
            mathHelper2 = mathHelper2(mathHelper3, workingValue24)
            mathHelper3 = "."
            workingValue17 = workingValue17 .. mathHelper2 .. mathHelper3
            -- Beginner: Show a notification to the player.
            text11(workingValue17)
          end
        end
        vehicle2(cmgOperation6, stateFlag12, cmgOperation12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "~g~Submit To Nearby"
    workingValue18 = ""
    stateFlag11 = {}
    stateFlag11.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag13 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag14(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12, cmgOperation12, text17, stateFlag15, tableHelper3
      if localValue33 then
        vehicle2 = TriggerServerEvent
        cmgOperation6 = "1fb9ace400"
        stateFlag12 = number23
        cmgOperation12 = number15
        text17 = number16
        stateFlag15 = number18
        tableHelper3 = number19
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1fb9ace400".
        vehicle2(cmgOperation6, stateFlag12, cmgOperation12, text17, stateFlag15, tableHelper3)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "paymentplanoffer"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16
    localValue12 = workingValue19
    if not localValue12 then
      return
    end
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Vehicle Offered: "
    localValue32 = CMG
    localValue32 = localValue32.getVehicleNameFromId
    localValue42 = workingValue19.vehicleId
    localValue32 = localValue32(localValue42)
    localValue22 = localValue22 .. localValue32
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Total Price"
    localValue32 = "The total amount of money that you will have to be pay before ownership is transferred."
    localValue42 = {}
    workingValue18 = "\194\163"
    stateFlag11 = getMoneyStringFormatted
    stateFlag13 = workingValue19.totalPrice
    stateFlag11 = stateFlag11(stateFlag13)
    workingValue18 = workingValue18 .. stateFlag11
    localValue42.RightLabel = workingValue18
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: none) ===
    function stateFlag11()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Weeks To Pay"
    localValue32 = "The amount of weeks you have to pay off the plan."
    localValue42 = {}
    workingValue18 = tostring
    stateFlag11 = workingValue19.numWeeks
    workingValue18 = workingValue18(stateFlag11)
    stateFlag11 = " week"
    stateFlag13 = workingValue19.numWeeks
    if stateFlag13 > 1 then
      stateFlag13 = "s"
      if stateFlag13 then
        goto continueAtStep46
      end
    end
    stateFlag13 = ""
    ::continueAtStep46::
    workingValue18 = workingValue18 .. stateFlag11 .. stateFlag13
    localValue42.RightLabel = workingValue18
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: none) ===
    function stateFlag11()
      local localValue13, localValue23
    end
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11)
    localValue12 = workingValue19.totalPrice
    localValue22 = workingValue19.initialDeposit
    localValue12 = localValue12 - localValue22
    localValue22 = math
    localValue22 = localValue22.ceil
    localValue32 = workingValue19.numWeeks
    localValue32 = localValue12 / localValue32
    localValue22 = localValue22(localValue32)
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "Pay Amount Per Week"
    workingValue18 = "The amount of money you have to pay each week."
    stateFlag11 = {}
    stateFlag13 = "\194\163"
    stateFlag14 = getMoneyStringFormatted
    cmgOperation16 = localValue22
    stateFlag14 = stateFlag14(cmgOperation16)
    stateFlag13 = stateFlag13 .. stateFlag14
    stateFlag11.RightLabel = stateFlag13
    stateFlag13 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: none) ===
    function stateFlag14()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "Maximum Missed Payments"
    workingValue18 = "The maximum amount of missed payments in weeks allowed before the payment plan is automatically cancelled."
    stateFlag11 = {}
    stateFlag13 = tostring
    stateFlag14 = workingValue19.maxMissedWeeks
    stateFlag13 = stateFlag13(stateFlag14)
    stateFlag14 = " week"
    cmgOperation16 = workingValue19.maxMissedWeeks
    if cmgOperation16 > 1 then
      cmgOperation16 = "s"
      if cmgOperation16 then
        goto continueAtStep93
      end
    end
    cmgOperation16 = ""
    ::continueAtStep93::
    stateFlag13 = stateFlag13 .. stateFlag14 .. cmgOperation16
    stateFlag11.RightLabel = stateFlag13
    stateFlag13 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: none) ===
    function stateFlag14()
      local localValue13, localValue23
    end
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "Initial Deposit"
    workingValue18 = "The amount that has to be paid when accepting the offer. Counts towards the total."
    stateFlag11 = {}
    stateFlag13 = "\194\163"
    stateFlag14 = getMoneyStringFormatted
    cmgOperation16 = workingValue19.initialDeposit
    stateFlag14 = stateFlag14(cmgOperation16)
    stateFlag13 = stateFlag13 .. stateFlag14
    stateFlag11.RightLabel = stateFlag13
    stateFlag13 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: none) ===
    function stateFlag14()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "~g~Accept Payment Plan"
    workingValue18 = ""
    stateFlag11 = {}
    stateFlag11.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag13 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag14(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6
      if localValue33 then
        vehicle2 = nil
        workingValue19 = vehicle2
        vehicle2 = TriggerServerEvent
        cmgOperation6 = "2c17720884"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2c17720884".
        vehicle2(cmgOperation6)
        vehicle2 = RageUI
        vehicle2 = vehicle2.CloseAll
        vehicle2()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "vehiclemenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag
    localValue12 = workingValue34
    if localValue12 then
      localValue12 = workingValue34.isGangGarage
      if localValue12 then
        localValue12 = workingValue34.gangId
        localValue22 = dataCollection20
        localValue22 = localValue22[localValue12]
        if localValue22 then
          localValue32 = table
          localValue32 = localValue32.count
          localValue42 = localValue22.vehicles
          if not localValue42 then
            localValue42 = {}
          end
          -- Beginner: result below is count.
          localValue32 = localValue32(localValue42)
          localValue42 = localValue22.maxSlots
          if not localValue42 then
            localValue42 = 0
          end
          if localValue32 >= localValue42 then
            workingValue18 = RageUI
            workingValue18 = workingValue18.Separator
            stateFlag11 = string
            stateFlag11 = stateFlag11.format
            stateFlag13 = "~r~Gang Garage Slots: %d/%d"
            stateFlag14 = localValue32
            cmgOperation16 = localValue42
            stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag = stateFlag11(stateFlag13, stateFlag14, cmgOperation16)
            workingValue18(stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag)
          else
            workingValue18 = RageUI
            workingValue18 = workingValue18.Separator
            stateFlag11 = string
            stateFlag11 = stateFlag11.format
            stateFlag13 = "~s~Gang Garage Slots: ~b~%d~s~/~b~%d"
            stateFlag14 = localValue32
            cmgOperation16 = localValue42
            stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag = stateFlag11(stateFlag13, stateFlag14, cmgOperation16)
            workingValue18(stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag)
          end
        end
    end
    else
      localValue12 = workingValue34
      if localValue12 then
        localValue12 = workingValue4
        if localValue12 then
          localValue12 = workingValue6
          localValue22 = workingValue34.type
          if localValue12 == localValue22 then
            localValue12 = workingValue4.current
            localValue22 = workingValue4.cap
            if localValue12 > localValue22 then
              localValue32 = RageUI
              localValue32 = localValue32.Separator
              localValue42 = string
              localValue42 = localValue42.format
              workingValue18 = "~r~Unique Slots | %s: %d/%d"
              stateFlag11 = workingValue34.type
              stateFlag13 = localValue12
              stateFlag14 = localValue22
              localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag = localValue42(workingValue18, stateFlag11, stateFlag13, stateFlag14)
              localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag)
            else
              localValue32 = RageUI
              localValue32 = localValue32.Separator
              localValue42 = string
              localValue42 = localValue42.format
              workingValue18 = "~s~Unique Slots | %s: ~b~%d~s~/~b~%d"
              stateFlag11 = workingValue34.type
              stateFlag13 = localValue12
              stateFlag14 = localValue22
              localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag = localValue42(workingValue18, stateFlag11, stateFlag13, stateFlag14)
              localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag)
            end
          end
        end
      end
    end
    localValue12 = workingValue34
    if localValue12 then
      localValue12 = pairs
      localValue22 = workingValue34.vehicles
      localValue12, localValue22, localValue32, localValue42 = localValue12(localValue22)
      for workingValue18, stateFlag11 in localValue12, localValue22, localValue32, localValue42 do
        stateFlag13 = text21
        stateFlag14 = stateFlag11
        cmgOperation16 = false
        stateFlag13(stateFlag14, cmgOperation16)
      end
    end
    localValue22 = workingValue12
    localValue12 = dataCollection9
    localValue12 = localValue12[localValue22]
    if localValue12 then
      localValue22 = {}
      localValue32 = pairs
      localValue42 = localValue12
      localValue32, localValue42, workingValue18, stateFlag11 = localValue32(localValue42)
      for stateFlag13, stateFlag14 in localValue32, localValue42, workingValue18, stateFlag11 do
        cmgOperation16 = tonumber
        stateFlag17 = stateFlag13
        cmgOperation16 = cmgOperation16(stateFlag17)
        stateFlag17 = dataCollection19
        cmgOperation16 = stateFlag17[cmgOperation16]
        if cmgOperation16 then
          stateFlag17 = workingValue31
          number2 = cmgOperation16.vehicleId
          stateFlag17 = stateFlag17(number2)
          if stateFlag17 then
            stateFlag17 = table
            stateFlag17 = stateFlag17.insert
            number2 = localValue22
            stateFlag = {}
            stateFlag.priority = stateFlag14
            stateFlag.vehicleInfo = cmgOperation16
            stateFlag17(number2, stateFlag)
          end
        end
      end
      localValue32 = table
      localValue32 = localValue32.sort
      localValue42 = localValue22

      -- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue13, localValue23) ===
      function workingValue18(localValue13, localValue23)
        local localValue33, vehicle2
        localValue33 = localValue13.priority
        vehicle2 = localValue23.priority
        localValue33 = localValue33 > vehicle2
        return localValue33
      end
      localValue32(localValue42, workingValue18)
      localValue32 = pairs
      localValue42 = localValue22
      localValue32, localValue42, workingValue18, stateFlag11 = localValue32(localValue42)
      for stateFlag13, stateFlag14 in localValue32, localValue42, workingValue18, stateFlag11 do
        cmgOperation16 = text21
        stateFlag17 = stateFlag14.vehicleInfo
        number2 = true
        cmgOperation16(stateFlag17, number2)
      end
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "confirm"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "No"
    localValue32 = ""
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6
      if localValue33 then
        vehicle2 = tCMG
        vehicle2 = vehicle2.notify
        cmgOperation6 = "~y~Cancelled!"
        -- Beginner: Show a notification to the player.
        vehicle2(cmgOperation6)
      end
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "spawnmenu"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Yes"
    localValue32 = ""
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12, cmgOperation12
      if localValue33 then
        vehicle2 = GetVehiclePedIsIn
        cmgOperation6 = CMG
        cmgOperation6 = cmgOperation6.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgOperation6 = cmgOperation6()
        stateFlag12 = false
        -- Beginner: result below is currentVehicle.
        vehicle2 = vehicle2(cmgOperation6, stateFlag12)
        cmgOperation6 = DoesEntityExist
        stateFlag12 = vehicle2
        cmgOperation6 = cmgOperation6(stateFlag12)
        if cmgOperation6 then
          cmgOperation6 = DeleteEntity
          stateFlag12 = vehicle2
          -- Beginner: Delete a GTA entity.
          cmgOperation6(stateFlag12)
        end
        cmgOperation6 = CMG
        cmgOperation6 = cmgOperation6.GetRageInputText
        stateFlag12 = "Please type CONFIRM in all caps to confirm the crushing of this vehicle"
        cmgOperation6 = cmgOperation6(stateFlag12)
        if "CONFIRM" == cmgOperation6 then
          cmgOperation6 = TriggerServerEvent
          stateFlag12 = "54472a6cb5"
          cmgOperation12 = number23
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "54472a6cb5".
          cmgOperation6(stateFlag12, cmgOperation12)
        else
          cmgOperation6 = tCMG
          cmgOperation6 = cmgOperation6.notify
          stateFlag12 = "~r~Cancelled vehicle crush!"
          -- Beginner: Show a notification to the player.
          cmgOperation6(stateFlag12)
        end
      end
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "spawnmenu"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "settings"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17
    localValue12 = RageUI
    localValue12 = localValue12.Checkbox
    localValue22 = "Hide custom folder vehicles"
    localValue32 = "This hides these vehicles from their original garage."
    localValue42 = dataCollection11
    workingValue18 = "hideCustomFolderVehiclesFromOriginalGarages"
    localValue42 = localValue42[workingValue18]
    workingValue18 = {}

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
    function stateFlag13()
      local localValue13, localValue23
      localValue13 = dataCollection11
      localValue23 = "hideCustomFolderVehiclesFromOriginalGarages"
      localValue13[localValue23] = true
      localValue13 = CMG
      localValue13 = localValue13.saveGarageSettings
      localValue13()
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: none) ===
    function stateFlag14()
      local localValue13, localValue23
      localValue13 = dataCollection11
      localValue23 = "hideCustomFolderVehiclesFromOriginalGarages"
      localValue13[localValue23] = false
      localValue13 = CMG
      localValue13 = localValue13.saveGarageSettings
      localValue13()
    end
    -- Beginner: Draw a RageUI checkbox.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
    localValue12 = RageUI
    localValue12 = localValue12.Checkbox
    localValue22 = "Show Custom Folders In Garage Menu"
    localValue32 = "~y~This removes the [Custom Folders] menu item, and puts custom folders in the root garages menu."
    localValue42 = dataCollection11.showCustomFoldersInGarageMenu
    workingValue18 = {}

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
    function stateFlag13()
      local localValue13, localValue23
      dataCollection11.showCustomFoldersInGarageMenu = true
      localValue13 = CMG
      localValue13 = localValue13.saveGarageSettings
      localValue13()
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: none) ===
    function stateFlag14()
      local localValue13, localValue23
      dataCollection11.showCustomFoldersInGarageMenu = false
      localValue13 = CMG
      localValue13 = localValue13.saveGarageSettings
      localValue13()
    end
    -- Beginner: Draw a RageUI checkbox.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "View All Vehicles"
    localValue32 = "View vehicles for the purpose of selling and renting."
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: none) ===
    function stateFlag11()
      local localValue13, localValue23
    end
    stateFlag13 = RMenu
    stateFlag14 = stateFlag13
    stateFlag13 = stateFlag13.Get
    cmgOperation16 = "garages"
    stateFlag17 = "viewall"
    stateFlag13, stateFlag14, cmgOperation16, stateFlag17 = stateFlag13(stateFlag14, cmgOperation16, stateFlag17)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "viewall"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7
    localValue12 = pairs
    localValue22 = text19
    localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7 = localValue22()
    localValue12, localValue22, localValue32, localValue42 = localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7)
    for workingValue18, stateFlag11 in localValue12, localValue22, localValue32, localValue42 do
      stateFlag13 = stateFlag11.info
      stateFlag14 = stateFlag13.uuid
      stateFlag13 = dataCollection12
      stateFlag13 = stateFlag13[stateFlag14]
      if not stateFlag13 then
        stateFlag13 = stateFlag11.info
        stateFlag13 = stateFlag13.name
      end
      stateFlag14 = RageUI
      stateFlag14 = stateFlag14.ButtonWithStyle
      cmgOperation16 = stateFlag13
      stateFlag17 = ""
      number2 = {}
      number2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag2(localValue13, localValue23, localValue33)
        local vehicle2
        if localValue33 then
          vehicle2 = stateFlag11.uuid
          number23 = vehicle2
          vehicle2 = stateFlag11.info
          vehicle2 = vehicle2.vehicleId
          text15 = vehicle2
        end
      end
      stateFlag3 = RMenu
      workingValue8 = stateFlag3
      stateFlag3 = stateFlag3.Get
      text6 = "garages"
      text7 = "rentonlymenu"
      stateFlag3, workingValue8, text6, text7 = stateFlag3(workingValue8, text6, text7)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag14(cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3, workingValue8, text6, text7)
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "rentonlymenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3
    localValue12 = CMG
    localValue12 = localValue12.canVehicleBeSold
    localValue22 = text15
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue12 = cmgOperation7
      localValue22 = number23
      localValue12 = localValue12(localValue22)
      localValue12 = not localValue12
    end
    localValue22 = cmgOperation7
    localValue32 = number23
    localValue22 = localValue22(localValue32)
    if localValue22 then
      localValue22 = cmgOperation8
      if localValue22 then
        goto continueAtStep20
      end
    end
    localValue22 = ""
    ::continueAtStep20::
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "Sell Vehicle to Player"
    workingValue18 = localValue22
    stateFlag11 = {}
    stateFlag11.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag13 = localValue12

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag14(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12
      if localValue33 then
        vehicle2 = localValue12
        if vehicle2 then
          vehicle2 = TriggerServerEvent
          cmgOperation6 = "0d3561179d"
          stateFlag12 = number23
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0d3561179d".
          vehicle2(cmgOperation6, stateFlag12)
        end
      end
    end
    cmgOperation16 = RMenu
    stateFlag17 = cmgOperation16
    cmgOperation16 = cmgOperation16.Get
    number2 = "garages"
    stateFlag = "viewall"
    cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3 = cmgOperation16(stateFlag17, number2, stateFlag)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3)
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    localValue42 = "Rent Vehicle to Player"
    workingValue18 = ""
    stateFlag11 = {}
    stateFlag11.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag13 = CMG
    stateFlag13 = stateFlag13.canVehicleBeRented
    stateFlag14 = text15
    stateFlag13 = stateFlag13(stateFlag14)

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag14(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12
      if localValue33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.canVehicleBeRented
        cmgOperation6 = text15
        vehicle2 = vehicle2(cmgOperation6)
        if vehicle2 then
          vehicle2 = TriggerServerEvent
          cmgOperation6 = "6cf393ee47"
          stateFlag12 = number23
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6cf393ee47".
          vehicle2(cmgOperation6, stateFlag12)
        end
      end
    end
    cmgOperation16 = RMenu
    stateFlag17 = cmgOperation16
    cmgOperation16 = cmgOperation16.Get
    number2 = "garages"
    stateFlag = "viewall"
    cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3 = cmgOperation16(stateFlag17, number2, stateFlag)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3)
    localValue32 = CMG
    localValue32 = localValue32.canVehicleBeRented
    localValue42 = text15
    localValue32 = localValue32(localValue42)
    if localValue32 then
      localValue32 = cmgOperation7
      localValue42 = number23
      localValue32 = localValue32(localValue42)
      localValue32 = not localValue32
    end
    localValue42 = cmgOperation7
    workingValue18 = number23
    localValue42 = localValue42(workingValue18)
    if localValue42 then
      localValue42 = cmgOperation8
      if localValue42 then
        goto continueAtStep72
      end
    end
    localValue42 = ""
    ::continueAtStep72::
    workingValue18 = RageUI
    workingValue18 = workingValue18.ButtonWithStyle
    stateFlag11 = "Payment Plan Vehicle to Player"
    stateFlag13 = localValue42
    stateFlag14 = {}
    stateFlag14.RightLabel = "\226\134\146\226\134\146\226\134\146"
    cmgOperation16 = localValue32

    -- === HELPER FUNCTION (decompiler name: stateFlag17; parameters: none) ===
    function stateFlag17()
      local localValue13, localValue23
    end
    number2 = RMenu
    stateFlag = number2
    number2 = number2.Get
    stateFlag2 = "garages"
    stateFlag3 = "paymentplan"
    number2, stateFlag, stateFlag2, stateFlag3 = number2(stateFlag, stateFlag2, stateFlag3)
    workingValue18(stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag, stateFlag2, stateFlag3)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
end
rageUiOperation6(rageUiOperation7, rageUiOperation8, text24, text25)
rageUiOperation6 = RMenu
rageUiOperation6 = rageUiOperation6.Add
rageUiOperation7 = "disclaimer"
rageUiOperation8 = "main"
text24 = RageUI
text24 = text24.CreateMenu
text25 = ""
text26 = "~b~Terms And Conditions"
rageUiOperation9 = CMG
rageUiOperation9 = rageUiOperation9.getRageUIMenuWidth
rageUiOperation9 = rageUiOperation9()
rageUiOperation10 = CMG
rageUiOperation10 = rageUiOperation10.getRageUIMenuHeight
rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation10()
text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = text24(text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
rageUiOperation6(rageUiOperation7, rageUiOperation8, text24, text25, text26, rageUiOperation9, rageUiOperation10, eventHandler5, eventHandler6, stateFlag16, workingValue33, cmgOperation17, cmgOperation, backgroundThread, number, eventHandler, text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
rageUiOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: localValue1, localValue2) ===
function rageUiOperation7(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection
  localValue3 = false
  localValue4 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue4 = localValue4()
  localValue5 = RageUI
  localValue5 = localValue5.Visible
  localValue6 = RMenu
  localValue7 = localValue6
  localValue6 = localValue6.Get
  iterator2 = "disclaimer"
  tableHelper2 = "main"
  -- Beginner: result below is menu.
  localValue6 = localValue6(localValue7, iterator2, tableHelper2)
  localValue7 = true
  localValue5(localValue6, localValue7)
  while true do
    localValue5 = RageUI
    localValue5 = localValue5.Visible
    localValue6 = RMenu
    localValue7 = localValue6
    localValue6 = localValue6.Get
    iterator2 = "disclaimer"
    tableHelper2 = "main"
    localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection = localValue6(localValue7, iterator2, tableHelper2)
    -- Beginner: result below is menuVisible.
    localValue5 = localValue5(localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection)
    if not localValue5 or localValue3 then
      break
    end
    localValue5 = math
    localValue5 = localValue5.floor
    localValue6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue6 = localValue6()
    localValue6 = localValue6 - localValue4
    localValue6 = localValue6 / 1000
    localValue5 = localValue5(localValue6)
    localValue6 = math
    localValue6 = localValue6.max
    localValue7 = 0
    iterator2 = 3
    iterator2 = iterator2 - localValue5
    localValue6 = localValue6(localValue7, iterator2)
    localValue7 = RageUI
    localValue7 = localValue7.IsVisible
    iterator2 = RMenu
    tableHelper2 = iterator2
    iterator2 = iterator2.Get
    dataCollection25 = "disclaimer"
    workingValue2 = "main"
    -- Beginner: result below is menu.
    iterator2 = iterator2(tableHelper2, dataCollection25, workingValue2)
    tableHelper2 = true
    dataCollection25 = true
    workingValue2 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
    function dataCollection()
      local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~y~Terms of selling the "
      localValue32 = localValue1
      localValue42 = ":"
      localValue22 = localValue22 .. localValue32 .. localValue42
      localValue12(localValue22)
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "Any agreements made between you and the buyer are not covered by CMG"
      localValue12(localValue22)
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "You forfeit any right to claim the "
      localValue32 = localValue1
      localValue42 = " back after payment"
      localValue22 = localValue22 .. localValue32 .. localValue42
      localValue12(localValue22)
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "You agree the buyer has full discretion over the "
      localValue32 = localValue1
      localValue42 = " hereafter"
      localValue22 = localValue22 .. localValue32 .. localValue42
      localValue12(localValue22)
      localValue12 = localValue6
      if localValue12 > 0 then
        localValue12 = RageUI
        localValue12 = localValue12.ButtonWithStyle
        localValue22 = "~r~I agree to the above"
        localValue32 = ""
        localValue42 = {}
        workingValue18 = tostring
        stateFlag11 = localValue6
        workingValue18 = workingValue18(stateFlag11)
        localValue42.RightLabel = workingValue18
        workingValue18 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: none) ===
        function stateFlag11()
          local localValue13, localValue23
        end
        -- Beginner: Draw a selectable RageUI menu button.
        localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11)
      else
        localValue12 = RageUI
        localValue12 = localValue12.ButtonWithStyle
        localValue22 = "~g~I agree to the above"
        localValue32 = ""
        localValue42 = {}
        localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
        workingValue18 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
        function stateFlag11(localValue13, localValue23, localValue33)
          local vehicle2
          if localValue33 then
            vehicle2 = true
            localValue3 = vehicle2
          end
        end
        localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11)
      end
    end
    localValue7(iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection)
    localValue7 = Citizen
    localValue7 = localValue7.Wait
    iterator2 = 0
    localValue7(iterator2)
  end
  if localValue3 then
    localValue5 = localValue2
    localValue5()
  else
    localValue5 = notify
    localValue6 = "~r~Sell ended as you did not agree to the terms."
    -- Beginner: Show a notification to the player.
    localValue5(localValue6)
  end
end
rageUiOperation6.displaySellDisclaimer = rageUiOperation7
rageUiOperation6 = tCMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: localValue1) ===
function rageUiOperation7(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  if localValue1 then
    localValue2 = DecorExistOn
    localValue3 = localValue1
    localValue4 = "ac76c9d452"
    localValue2 = localValue2(localValue3, localValue4)
    if localValue2 then
      localValue2 = DecorGetInt
      localValue3 = localValue1
      localValue4 = "ac76c9d452"
      localValue2 = localValue2(localValue3, localValue4)
      localValue3 = CMG
      localValue3 = localValue3.getVehicleIdFromModel
      localValue4 = GetEntityModel
      localValue5 = localValue1
      localValue4, localValue5 = localValue4(localValue5)
      localValue3 = localValue3(localValue4, localValue5)
      if localValue3 then
        localValue4 = localValue2
        localValue5 = localValue3
        return localValue4, localValue5
      end
    end
  end
end
rageUiOperation6.getVehicleInfos = rageUiOperation7
rageUiOperation6 = tCMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: localValue1) ===
function rageUiOperation7(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue2 = CMG
  localValue2 = localValue2.getObjectId
  localValue3 = localValue1
  localValue4 = "tCMG.getNetworkedVehicleInfos"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue3 = DecorExistOn
    localValue4 = localValue2
    localValue5 = "ac76c9d452"
    localValue3 = localValue3(localValue4, localValue5)
    if localValue3 then
      localValue3 = DecorGetInt
      localValue4 = localValue2
      localValue5 = "ac76c9d452"
      localValue3 = localValue3(localValue4, localValue5)
      localValue4 = CMG
      localValue4 = localValue4.getVehicleIdFromModel
      localValue5 = GetEntityModel
      localValue6 = localValue2
      localValue5, localValue6, localValue7, iterator2 = localValue5(localValue6)
      localValue4 = localValue4(localValue5, localValue6, localValue7, iterator2)
      localValue5 = DecorGetInt
      localValue6 = localValue2
      localValue7 = "0a6cf607ed"
      localValue5 = localValue5(localValue6, localValue7)
      if localValue4 and localValue5 > 0 then
        localValue6 = localValue3
        localValue7 = localValue4
        iterator2 = localValue5
        return localValue6, localValue7, iterator2
      end
    end
  end
end
rageUiOperation6.getNetworkedVehicleInfos = rageUiOperation7

-- === HELPER FUNCTION (decompiler name: rageUiOperation6; parameters: localValue1, localValue2, localValue3) ===
function rageUiOperation6(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection
  localValue4 = 0
  localValue5 = GetNumModColors
  localValue6 = localValue1
  localValue7 = false
  localValue5 = localValue5(localValue6, localValue7)
  localValue5 = localValue5 - 1
  localValue6 = 1
  for localValue7 = localValue4, localValue5, localValue6 do
    iterator2 = SetVehicleModColor_1
    tableHelper2 = localValue3
    dataCollection25 = localValue1
    workingValue2 = localValue7
    dataCollection = 0
    iterator2(tableHelper2, dataCollection25, workingValue2, dataCollection)
    iterator2 = GetVehicleColours
    tableHelper2 = localValue3
    iterator2 = iterator2(tableHelper2)
    if iterator2 == localValue2 then
      return
    end
  end
  localValue4 = GetVehicleColours
  localValue5 = localValue3
  localValue4, localValue5 = localValue4(localValue5)
  localValue6 = SetVehicleColours
  localValue7 = localValue3
  iterator2 = localValue2
  tableHelper2 = localValue5
  localValue6(localValue7, iterator2, tableHelper2)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: localValue1, localValue2, localValue3) ===
function rageUiOperation7(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2
  localValue4 = 0
  localValue5 = GetNumModColors
  localValue6 = localValue1
  localValue7 = false
  localValue5 = localValue5(localValue6, localValue7)
  localValue5 = localValue5 - 1
  localValue6 = 1
  for localValue7 = localValue4, localValue5, localValue6 do
    iterator2 = SetVehicleModColor_2
    tableHelper2 = localValue3
    dataCollection25 = localValue1
    workingValue2 = localValue7
    iterator2(tableHelper2, dataCollection25, workingValue2)
    iterator2 = GetVehicleColours
    tableHelper2 = localValue3
    iterator2, tableHelper2 = iterator2(tableHelper2)
    if tableHelper2 == localValue2 then
      return
    end
  end
  localValue4 = SetVehicleColours
  localValue5 = localValue3
  localValue6 = GetVehicleColours
  localValue7 = localValue3
  localValue6 = localValue6(localValue7)
  localValue7 = localValue2
  localValue4(localValue5, localValue6, localValue7)
end
rageUiOperation8 = CMG

-- === HELPER FUNCTION (decompiler name: text24; parameters: localValue1, localValue2) ===
function text24(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator
  localValue3 = 0
  localValue4 = pairs
  localValue5 = localValue1.chrome
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = rageUiOperation6
      workingValue2 = 5
      dataCollection = tonumber
      iterator = iterator2
      dataCollection = dataCollection(iterator)
      iterator = localValue2
      dataCollection25(workingValue2, dataCollection, iterator)
    end
  end
  localValue4 = pairs
  localValue5 = localValue1.classic
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = rageUiOperation6
      workingValue2 = 0
      dataCollection = tonumber
      iterator = iterator2
      dataCollection = dataCollection(iterator)
      iterator = localValue2
      dataCollection25(workingValue2, dataCollection, iterator)
    end
  end
  localValue4 = pairs
  localValue5 = localValue1.matte
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = rageUiOperation6
      workingValue2 = 3
      dataCollection = tonumber
      iterator = iterator2
      dataCollection = dataCollection(iterator)
      iterator = localValue2
      dataCollection25(workingValue2, dataCollection, iterator)
    end
  end
  localValue4 = pairs
  localValue5 = localValue1.metals
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = rageUiOperation6
      workingValue2 = 4
      dataCollection = tonumber
      iterator = iterator2
      dataCollection = dataCollection(iterator)
      iterator = localValue2
      dataCollection25(workingValue2, dataCollection, iterator)
    end
  end
  localValue4 = pairs
  localValue5 = localValue1.metallic
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = rageUiOperation6
      workingValue2 = 1
      dataCollection = tonumber
      iterator = iterator2
      dataCollection = dataCollection(iterator)
      iterator = localValue2
      dataCollection25(workingValue2, dataCollection, iterator)
    end
  end
  localValue4 = pairs
  localValue5 = localValue1.util
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = tonumber
      workingValue2 = iterator2
      dataCollection25 = dataCollection25(workingValue2)
      localValue3 = dataCollection25 or localValue3
      if not dataCollection25 then
        localValue3 = 0
      end
    end
  end
  localValue4 = pairs
  localValue5 = localValue1.chameleon
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = tonumber
      workingValue2 = iterator2
      dataCollection25 = dataCollection25(workingValue2)
      localValue3 = dataCollection25 or localValue3
      if not dataCollection25 then
        localValue3 = 0
      end
    end
  end
  localValue4 = localValue1.primaryrgb
  if localValue4 then
    localValue5 = localValue4.blue
    if localValue5 then
      localValue5 = localValue4.red
      if localValue5 then
        localValue5 = localValue4.green
        if localValue5 then
          localValue5 = localValue4.active
          if localValue5 then
            localValue5 = SetVehicleCustomPrimaryColour
            localValue6 = localValue2
            localValue7 = localValue4.red
            iterator2 = localValue4.green
            tableHelper2 = localValue4.blue
            localValue5(localValue6, localValue7, iterator2, tableHelper2)
        end
      end
    end
  end
  elseif 0 ~= localValue3 then
    localValue5 = GetVehicleColours
    localValue6 = localValue2
    localValue5, localValue6 = localValue5(localValue6)
    localValue7 = SetVehicleColours
    iterator2 = localValue2
    tableHelper2 = localValue3
    dataCollection25 = localValue6
    localValue7(iterator2, tableHelper2, dataCollection25)
  end
end
rageUiOperation8.applyPrimaryVehicleColours = text24
rageUiOperation8 = CMG

-- === HELPER FUNCTION (decompiler name: text24; parameters: localValue1, localValue2) ===
function text24(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator
  localValue3 = 0
  localValue4 = pairs
  localValue5 = localValue1.chrome2
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = rageUiOperation7
      workingValue2 = 5
      dataCollection = tonumber
      iterator = iterator2
      dataCollection = dataCollection(iterator)
      iterator = localValue2
      dataCollection25(workingValue2, dataCollection, iterator)
    end
  end
  localValue4 = pairs
  localValue5 = localValue1.classic2
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = rageUiOperation7
      workingValue2 = 0
      dataCollection = tonumber
      iterator = iterator2
      dataCollection = dataCollection(iterator)
      iterator = localValue2
      dataCollection25(workingValue2, dataCollection, iterator)
    end
  end
  localValue4 = pairs
  localValue5 = localValue1.matte2
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = rageUiOperation7
      workingValue2 = 3
      dataCollection = tonumber
      iterator = iterator2
      dataCollection = dataCollection(iterator)
      iterator = localValue2
      dataCollection25(workingValue2, dataCollection, iterator)
    end
  end
  localValue4 = pairs
  localValue5 = localValue1.metal2
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = rageUiOperation7
      workingValue2 = 4
      dataCollection = tonumber
      iterator = iterator2
      dataCollection = dataCollection(iterator)
      iterator = localValue2
      dataCollection25(workingValue2, dataCollection, iterator)
    end
  end
  localValue4 = pairs
  localValue5 = localValue1.metallic2
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = rageUiOperation7
      workingValue2 = 1
      dataCollection = tonumber
      iterator = iterator2
      dataCollection = dataCollection(iterator)
      iterator = localValue2
      dataCollection25(workingValue2, dataCollection, iterator)
    end
  end
  if 0 ~= localValue3 then
    localValue4 = GetVehicleColours
    localValue5 = localValue2
    localValue4 = localValue4(localValue5)
    localValue5 = SetVehicleColours
    localValue6 = localValue2
    localValue7 = localValue4
    iterator2 = localValue3
    localValue5(localValue6, localValue7, iterator2)
  end
end
rageUiOperation8.applySecondaryVehicleColours = text24

-- === HELPER FUNCTION (decompiler name: rageUiOperation8; parameters: localValue1, localValue2) ===
function rageUiOperation8(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper
  localValue3 = {}
  localValue4 = 0
  localValue5 = 49
  localValue6 = 1
  for localValue7 = localValue4, localValue5, localValue6 do
    iterator2 = GetVehicleMod
    tableHelper2 = localValue1
    dataCollection25 = localValue7
    iterator2 = iterator2(tableHelper2, dataCollection25)
    if iterator2 >= 0 then
      tableHelper2 = GetModTextLabel
      dataCollection25 = localValue1
      workingValue2 = localValue7
      dataCollection = iterator2
      tableHelper2 = tableHelper2(dataCollection25, workingValue2, dataCollection)
      if tableHelper2 then
        dataCollection25 = table
        dataCollection25 = dataCollection25.insert
        workingValue2 = localValue3
        dataCollection = tableHelper2
        dataCollection25(workingValue2, dataCollection)
        if localValue2 then
          dataCollection25 = CMG
          dataCollection25 = dataCollection25.drawDebugText
          workingValue2 = "VMT: %s Index: %s Name: %s"
          dataCollection = localValue7
          iterator = iterator2
          stringHelper = tableHelper2
          dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
        end
      end
    end
  end
  if not localValue2 then
    localValue4 = #localValue3
    if localValue4 > 0 then
      localValue4 = CMG
      localValue4 = localValue4.getVehicleIdFromModel
      localValue5 = GetEntityModel
      localValue6 = localValue1
      localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper = localValue5(localValue6)
      localValue4 = localValue4(localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper)
      if localValue4 then
        localValue5 = TriggerServerEvent
        localValue6 = "02b1617ec9"
        localValue7 = localValue4
        iterator2 = localValue3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "02b1617ec9".
        localValue5(localValue6, localValue7, iterator2)
      end
    end
  end
end
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1, localValue2, localValue3) ===
function text25(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6, workingValue13
  localValue4 = pairs
  localValue5 = localValue1.windowtint
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWindowTint
      workingValue2 = localValue3
      dataCollection = tonumber
      iterator = iterator2
      dataCollection = dataCollection(iterator)
      if not dataCollection then
        dataCollection = 0
      end
      dataCollection25(workingValue2, dataCollection)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = SetVehicleModKit
  localValue5 = localValue3
  localValue6 = 0
  localValue4(localValue5, localValue6)
  localValue4 = pairs
  localValue5 = localValue1.sportwheels
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 0
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.musclewheels
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 1
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.lowriderwheels
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 2
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.highendwheels
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 7
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.suvwheels
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 3
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.offroadwheels
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 4
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.tunerwheels
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 6
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.bennysonewheels
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 8
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.bennystwowheels
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 9
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.openwheels
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 10
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.streetwheels
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 11
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.trackwheels
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 12
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.frontwheel
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 6
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = GetVehicleModVariation
      workingValue7 = localValue3
      stringHelper2 = 23
      stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6, workingValue13 = stringHelper(workingValue7, stringHelper2)
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6, workingValue13)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.backwheel
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleWheelType
      workingValue2 = localValue3
      dataCollection = 6
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = CMG
      dataCollection25 = dataCollection25.setVehicleMod
      workingValue2 = localValue3
      dataCollection = 24
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = GetVehicleModVariation
      workingValue7 = localValue3
      stringHelper2 = 24
      stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6, workingValue13 = stringHelper(workingValue7, stringHelper2)
      dataCollection25(workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6, workingValue13)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = pairs
  localValue5 = localValue1.wheelaccessories
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 and "[0,0,0]" ~= iterator2 then
      dataCollection25 = SetVehicleModKit
      workingValue2 = localValue3
      dataCollection = 0
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = ToggleVehicleMod
      workingValue2 = localValue3
      dataCollection = 20
      iterator = true
      dataCollection25(workingValue2, dataCollection, iterator)
      workingValue2 = iterator2
      dataCollection25 = iterator2.gsub
      dataCollection = "%["
      iterator = ""
      dataCollection25 = dataCollection25(workingValue2, dataCollection, iterator)
      iterator2 = dataCollection25
      workingValue2 = iterator2
      dataCollection25 = iterator2.gsub
      dataCollection = "]"
      iterator = ""
      dataCollection25 = dataCollection25(workingValue2, dataCollection, iterator)
      iterator2 = dataCollection25
      dataCollection25 = stringsplit
      workingValue2 = iterator2
      dataCollection = ","
      dataCollection25 = dataCollection25(workingValue2, dataCollection)
      workingValue2 = SetVehicleTyreSmokeColor
      dataCollection = localValue3
      iterator = tonumber
      stringHelper = dataCollection25[1]
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = tonumber
      workingValue7 = dataCollection25[2]
      stringHelper = stringHelper(workingValue7)
      if not stringHelper then
        stringHelper = 0
      end
      workingValue7 = tonumber
      stringHelper2 = dataCollection25[3]
      workingValue7 = workingValue7(stringHelper2)
      if not workingValue7 then
        workingValue7 = 0
      end
      workingValue2(dataCollection, iterator, stringHelper, workingValue7)
    end
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = CMG
  localValue4 = localValue4.applyPrimaryVehicleColours
  localValue5 = localValue1
  localValue6 = localValue3
  localValue4(localValue5, localValue6)
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = CMG
  localValue4 = localValue4.applySecondaryVehicleColours
  localValue5 = localValue1
  localValue6 = localValue3
  localValue4(localValue5, localValue6)
  localValue4 = pairs
  localValue5 = localValue1.pearlescent
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = GetVehicleExtraColours
      workingValue2 = localValue3
      dataCollection25, workingValue2 = dataCollection25(workingValue2)
      dataCollection = SetVehicleExtraColours
      iterator = localValue3
      stringHelper = tonumber
      workingValue7 = iterator2
      stringHelper = stringHelper(workingValue7)
      if not stringHelper then
        stringHelper = 0
      end
      workingValue7 = workingValue2
      dataCollection(iterator, stringHelper, workingValue7)
    end
  end
  localValue4 = pairs
  localValue5 = localValue1.wheelcolor
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    if true == tableHelper2 then
      dataCollection25 = SetVehicleExtraColours
      workingValue2 = localValue3
      dataCollection = GetVehicleExtraColours
      iterator = localValue3
      dataCollection = dataCollection(iterator)
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      dataCollection25(workingValue2, dataCollection, iterator)
    end
  end
  localValue4 = 0
  localValue5 = pairs
  localValue6 = localValue1.interiorcolour
  localValue5, localValue6, localValue7, iterator2 = localValue5(localValue6)
  for tableHelper2, dataCollection25 in localValue5, localValue6, localValue7, iterator2 do
    if true == dataCollection25 then
      workingValue2 = tonumber
      dataCollection = tableHelper2
      workingValue2 = workingValue2(dataCollection)
      localValue4 = workingValue2 or localValue4
      if not workingValue2 then
        localValue4 = 0
      end
    end
  end
  localValue5 = SetVehicleInteriorColor
  localValue6 = localValue3
  localValue7 = localValue4
  localValue5(localValue6, localValue7)
  localValue5 = 0
  localValue6 = pairs
  localValue7 = localValue1.dashboardcolour
  localValue6, localValue7, iterator2, tableHelper2 = localValue6(localValue7)
  for dataCollection25, workingValue2 in localValue6, localValue7, iterator2, tableHelper2 do
    if true == workingValue2 then
      dataCollection = tonumber
      iterator = dataCollection25
      dataCollection = dataCollection(iterator)
      localValue5 = dataCollection or localValue5
      if not dataCollection then
        localValue5 = 0
      end
    end
  end
  localValue6 = SetVehicleDashboardColor
  localValue7 = localValue3
  iterator2 = localValue5
  localValue6(localValue7, iterator2)
  localValue6 = GetVehiclePedIsIn
  localValue7 = CMG
  localValue7 = localValue7.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue7 = localValue7()
  iterator2 = false
  -- Beginner: result below is currentVehicle.
  localValue6 = localValue6(localValue7, iterator2)
  localValue3 = localValue6
  localValue6 = SetVehicleModKit
  localValue7 = localValue3
  iterator2 = 0
  localValue6(localValue7, iterator2)
  localValue6 = 0
  localValue7 = 48
  iterator2 = 1
  for tableHelper2 = localValue6, localValue7, iterator2 do
    dataCollection25 = tostring
    workingValue2 = "mod_"
    dataCollection = tableHelper2
    workingValue2 = workingValue2 .. dataCollection
    dataCollection25 = dataCollection25(workingValue2)
    dataCollection25 = localValue1[dataCollection25]
    if nil ~= dataCollection25 then
      dataCollection25 = pairs
      workingValue2 = tostring
      dataCollection = "mod_"
      iterator = tableHelper2
      dataCollection = dataCollection .. iterator
      workingValue2 = workingValue2(dataCollection)
      workingValue2 = localValue1[workingValue2]
      dataCollection25, workingValue2, dataCollection, iterator = dataCollection25(workingValue2)
      for stringHelper, workingValue7 in dataCollection25, workingValue2, dataCollection, iterator do
        if true == workingValue7 then
          stringHelper2 = Wait
          cmgOperation3 = 0
          stringHelper2(cmgOperation3)
          stringHelper2 = tonumber
          cmgOperation3 = stringHelper
          stringHelper2 = stringHelper2(cmgOperation3)
          if 18 == tableHelper2 then
            cmgOperation3 = ToggleVehicleMod
            tableHelper = localValue3
            workingValue9 = 18
            heading = true
            cmgOperation3(tableHelper, workingValue9, heading)
          elseif 22 == tableHelper2 then
            cmgOperation3 = ToggleVehicleMod
            tableHelper = localValue3
            workingValue9 = 22
            heading = stringHelper2 > 0
            cmgOperation3(tableHelper, workingValue9, heading)
          else
            cmgOperation3 = CMG
            cmgOperation3 = cmgOperation3.setVehicleMod
            tableHelper = localValue3
            workingValue9 = tableHelper2
            heading = stringHelper2 or heading
            if not stringHelper2 then
              heading = 0
            end
            workingValue10 = false
            cmgOperation3(tableHelper, workingValue9, heading, workingValue10)
          end
        end
      end
    end
  end
  localValue6 = Wait
  localValue7 = 0
  localValue6(localValue7)
  localValue6 = CMG
  localValue6 = localValue6.setVehicleIdNitro
  localValue7 = localValue2
  iterator2 = localValue1.nitro
  localValue6(localValue7, iterator2)
  localValue6 = pairs
  localValue7 = localValue1.antilag
  localValue6, localValue7, iterator2, tableHelper2 = localValue6(localValue7)
  for dataCollection25, workingValue2 in localValue6, localValue7, iterator2, tableHelper2 do
    if true == workingValue2 then
      dataCollection = CMG
      dataCollection = dataCollection.setVehicleAntiLag
      iterator = localValue2
      stringHelper = tonumber
      workingValue7 = dataCollection25
      stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6, workingValue13 = stringHelper(workingValue7)
      dataCollection(iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6, workingValue13)
    end
  end
  localValue6 = CMG
  localValue6 = localValue6.setVehicleIdDriftSuspension
  localValue7 = localValue2
  iterator2 = localValue1.driftsuspension
  localValue6(localValue7, iterator2)
  localValue6 = pairs
  localValue7 = localValue1.driftsmoke
  localValue6, localValue7, iterator2, tableHelper2 = localValue6(localValue7)
  for dataCollection25, workingValue2 in localValue6, localValue7, iterator2, tableHelper2 do
    if true == workingValue2 then
      dataCollection = CMG
      dataCollection = dataCollection.setVehicleIdDriftSmoke
      iterator = localValue2
      stringHelper = tonumber
      workingValue7 = dataCollection25
      stringHelper = stringHelper(workingValue7)
      if not stringHelper then
        stringHelper = 0
      end
      dataCollection(iterator, stringHelper)
    end
  end
  localValue6 = CMG
  localValue6 = localValue6.setVehicleIdPlaneSmoke
  localValue7 = localValue3
  iterator2 = localValue2
  tableHelper2 = localValue1.planesmokes
  localValue6(localValue7, iterator2, tableHelper2)
  localValue6 = CMG
  localValue6 = localValue6.setVehicleIdBiometricLock
  localValue7 = localValue3
  iterator2 = localValue1.security
  tableHelper2 = localValue1.biometric_users
  localValue6(localValue7, iterator2, tableHelper2)
  localValue6 = CMG
  localValue6 = localValue6.setVehicleIdStancer
  localValue7 = localValue3
  iterator2 = localValue1.stancer
  localValue6(localValue7, iterator2)
  localValue6 = Wait
  localValue7 = 0
  localValue6(localValue7)
  localValue6 = pcall

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22, localValue32
    localValue12 = SetVehicleNumberPlateText
    localValue22 = CMG
    localValue22 = localValue22.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue22 = localValue22()
    localValue32 = localValue1.vehicle_plate
    localValue12(localValue22, localValue32)
  end
  localValue6 = localValue6(localValue7)
  if not localValue6 then
    localValue7 = print
    iterator2 = "Failed to set the licence plate of your vehicle, please report to a developer. Plate:"
    tableHelper2 = localValue1.vehicle_plate
    localValue7(iterator2, tableHelper2)
  end
  localValue7 = Wait
  iterator2 = 0
  localValue7(iterator2)
  localValue7 = pairs
  iterator2 = localValue1.sounds
  localValue7, iterator2, tableHelper2, dataCollection25 = localValue7(iterator2)
  for workingValue2, dataCollection in localValue7, iterator2, tableHelper2, dataCollection25 do
    if true == dataCollection then
      iterator = CMG
      iterator = iterator.getVehicleSoundNameFromId
      stringHelper = tonumber
      workingValue7 = workingValue2
      stringHelper = stringHelper(workingValue7)
      if not stringHelper then
        stringHelper = 0
      end
      iterator = iterator(stringHelper)
      stringHelper = GetVehiclePedIsIn
      workingValue7 = CMG
      workingValue7 = workingValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workingValue7 = workingValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workingValue7, stringHelper2)
      workingValue7 = ForceVehicleEngineAudio
      stringHelper2 = stringHelper
      cmgOperation3 = iterator
      workingValue7(stringHelper2, cmgOperation3)
      workingValue7 = SetTimeout
      stringHelper2 = 500

      -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
      function cmgOperation3()
        local localValue12, localValue22, localValue32
        localValue12 = SetVehicleRadioEnabled
        localValue22 = stringHelper
        localValue32 = false
        localValue12(localValue22, localValue32)
        localValue12 = SetVehRadioStation
        localValue22 = stringHelper
        localValue32 = "OFF"
        localValue12(localValue22, localValue32)
      end
      workingValue7(stringHelper2, cmgOperation3)
      workingValue7 = DecorSetInt
      stringHelper2 = stringHelper
      cmgOperation3 = "6939027d97"
      tableHelper = tonumber
      workingValue9 = workingValue2
      tableHelper = tableHelper(workingValue9)
      if not tableHelper then
        tableHelper = 0
      end
      workingValue7(stringHelper2, cmgOperation3, tableHelper)
    end
  end
  localValue7 = Wait
  iterator2 = 0
  localValue7(iterator2)
  localValue7 = pairs
  iterator2 = localValue1.bulletproof_tires
  localValue7, iterator2, tableHelper2, dataCollection25 = localValue7(iterator2)
  for workingValue2, dataCollection in localValue7, iterator2, tableHelper2, dataCollection25 do
    if true == dataCollection then
      iterator = DecorSetBool
      stringHelper = GetVehiclePedIsIn
      workingValue7 = CMG
      workingValue7 = workingValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workingValue7 = workingValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workingValue7, stringHelper2)
      workingValue7 = "bb6df5797c"
      stringHelper2 = true
      iterator(stringHelper, workingValue7, stringHelper2)
    end
  end
  localValue7 = Wait
  iterator2 = 0
  localValue7(iterator2)
  localValue7 = pairs
  iterator2 = localValue1.plate_colour
  localValue7, iterator2, tableHelper2, dataCollection25 = localValue7(iterator2)
  for workingValue2, dataCollection in localValue7, iterator2, tableHelper2, dataCollection25 do
    if true == dataCollection then
      iterator = SetVehicleNumberPlateTextIndex
      stringHelper = GetVehiclePedIsIn
      workingValue7 = CMG
      workingValue7 = workingValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workingValue7 = workingValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workingValue7, stringHelper2)
      workingValue7 = tonumber
      stringHelper2 = workingValue2
      workingValue7 = workingValue7(stringHelper2)
      if not workingValue7 then
        workingValue7 = 0
      end
      iterator(stringHelper, workingValue7)
    end
  end
  localValue7 = Wait
  iterator2 = 0
  localValue7(iterator2)
  localValue7 = pairs
  iterator2 = localValue1.neonlayout
  localValue7, iterator2, tableHelper2, dataCollection25 = localValue7(iterator2)
  for workingValue2, dataCollection in localValue7, iterator2, tableHelper2, dataCollection25 do
    iterator = tonumber
    stringHelper = workingValue2
    iterator = iterator(stringHelper)
    if true == dataCollection and iterator and iterator > 0 then
      if 1 == iterator then
        stringHelper = SetVehicleNeonLightEnabled
        workingValue7 = localValue3
        stringHelper2 = 0
        cmgOperation3 = true
        stringHelper(workingValue7, stringHelper2, cmgOperation3)
        stringHelper = SetVehicleNeonLightEnabled
        workingValue7 = localValue3
        stringHelper2 = 1
        cmgOperation3 = true
        stringHelper(workingValue7, stringHelper2, cmgOperation3)
        stringHelper = SetVehicleNeonLightEnabled
        workingValue7 = localValue3
        stringHelper2 = 2
        cmgOperation3 = true
        stringHelper(workingValue7, stringHelper2, cmgOperation3)
        stringHelper = SetVehicleNeonLightEnabled
        workingValue7 = localValue3
        stringHelper2 = 3
        cmgOperation3 = true
        stringHelper(workingValue7, stringHelper2, cmgOperation3)
      elseif 2 == iterator then
        stringHelper = SetVehicleNeonLightEnabled
        workingValue7 = localValue3
        stringHelper2 = 2
        cmgOperation3 = true
        stringHelper(workingValue7, stringHelper2, cmgOperation3)
        stringHelper = SetVehicleNeonLightEnabled
        workingValue7 = localValue3
        stringHelper2 = 3
        cmgOperation3 = true
        stringHelper(workingValue7, stringHelper2, cmgOperation3)
      elseif 3 == iterator then
        stringHelper = SetVehicleNeonLightEnabled
        workingValue7 = localValue3
        stringHelper2 = 0
        cmgOperation3 = true
        stringHelper(workingValue7, stringHelper2, cmgOperation3)
        stringHelper = SetVehicleNeonLightEnabled
        workingValue7 = localValue3
        stringHelper2 = 1
        cmgOperation3 = true
        stringHelper(workingValue7, stringHelper2, cmgOperation3)
        stringHelper = SetVehicleNeonLightEnabled
        workingValue7 = localValue3
        stringHelper2 = 2
        cmgOperation3 = true
        stringHelper(workingValue7, stringHelper2, cmgOperation3)
      elseif 4 == iterator then
        stringHelper = SetVehicleNeonLightEnabled
        workingValue7 = localValue3
        stringHelper2 = 0
        cmgOperation3 = true
        stringHelper(workingValue7, stringHelper2, cmgOperation3)
        stringHelper = SetVehicleNeonLightEnabled
        workingValue7 = localValue3
        stringHelper2 = 1
        cmgOperation3 = true
        stringHelper(workingValue7, stringHelper2, cmgOperation3)
        stringHelper = SetVehicleNeonLightEnabled
        workingValue7 = localValue3
        stringHelper2 = 3
        cmgOperation3 = true
        stringHelper(workingValue7, stringHelper2, cmgOperation3)
      end
      stringHelper = localValue1.neoncolour
      if stringHelper then
        stringHelper = pairs
        workingValue7 = localValue1.neoncolour
        stringHelper, workingValue7, stringHelper2, cmgOperation3 = stringHelper(workingValue7)
        for tableHelper, workingValue9 in stringHelper, workingValue7, stringHelper2, cmgOperation3 do
          if true == workingValue9 then
            heading = table
            heading = heading.unpack
            workingValue10 = text10.neonColours
            workingValue10 = workingValue10[tableHelper]
            heading, workingValue10, cmgOperation5 = heading(workingValue10)
            number5 = SetVehicleNeonLightsColour
            vehicle = GetVehiclePedIsIn
            stringHelper3 = CMG
            stringHelper3 = stringHelper3.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            stringHelper3 = stringHelper3()
            number6 = false
            -- Beginner: result below is currentVehicle.
            vehicle = vehicle(stringHelper3, number6)
            stringHelper3 = heading
            number6 = workingValue10
            workingValue13 = cmgOperation5
            number5(vehicle, stringHelper3, number6, workingValue13)
          end
        end
      end
    end
  end
  localValue7 = Wait
  iterator2 = 0
  localValue7(iterator2)
  localValue7 = pairs
  iterator2 = localValue1.xenonlights
  localValue7, iterator2, tableHelper2, dataCollection25 = localValue7(iterator2)
  for workingValue2, dataCollection in localValue7, iterator2, tableHelper2, dataCollection25 do
    if true == dataCollection then
      iterator = SetVehicleXenonLightsColor
      stringHelper = GetVehiclePedIsIn
      workingValue7 = CMG
      workingValue7 = workingValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workingValue7 = workingValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workingValue7, stringHelper2)
      workingValue7 = tonumber
      stringHelper2 = workingValue2
      workingValue7 = workingValue7(stringHelper2)
      if not workingValue7 then
        workingValue7 = 0
      end
      iterator(stringHelper, workingValue7)
    end
  end
  localValue7 = Wait
  iterator2 = 0
  localValue7(iterator2)
  localValue7 = pairs
  iterator2 = localValue1.liveries
  localValue7, iterator2, tableHelper2, dataCollection25 = localValue7(iterator2)
  for workingValue2, dataCollection in localValue7, iterator2, tableHelper2, dataCollection25 do
    if true == dataCollection then
      iterator = SetVehicleLivery
      stringHelper = GetVehiclePedIsIn
      workingValue7 = CMG
      workingValue7 = workingValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workingValue7 = workingValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workingValue7, stringHelper2)
      workingValue7 = tonumber
      stringHelper2 = workingValue2
      workingValue7 = workingValue7(stringHelper2)
      if not workingValue7 then
        workingValue7 = 0
      end
      iterator(stringHelper, workingValue7)
    end
  end
  localValue7 = Wait
  iterator2 = 0
  localValue7(iterator2)
  localValue7 = pairs
  iterator2 = localValue1.extras
  localValue7, iterator2, tableHelper2, dataCollection25 = localValue7(iterator2)
  for workingValue2, dataCollection in localValue7, iterator2, tableHelper2, dataCollection25 do
    if true == dataCollection then
      iterator = SetVehicleExtra
      stringHelper = GetVehiclePedIsIn
      workingValue7 = CMG
      workingValue7 = workingValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workingValue7 = workingValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workingValue7, stringHelper2)
      workingValue7 = tonumber
      stringHelper2 = workingValue2
      workingValue7 = workingValue7(stringHelper2)
      if not workingValue7 then
        workingValue7 = 0
      end
      stringHelper2 = false
      iterator(stringHelper, workingValue7, stringHelper2)
    elseif false == dataCollection then
      iterator = SetVehicleExtra
      stringHelper = GetVehiclePedIsIn
      workingValue7 = CMG
      workingValue7 = workingValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workingValue7 = workingValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workingValue7, stringHelper2)
      workingValue7 = tonumber
      stringHelper2 = workingValue2
      workingValue7 = workingValue7(stringHelper2)
      if not workingValue7 then
        workingValue7 = 0
      end
      stringHelper2 = true
      iterator(stringHelper, workingValue7, stringHelper2)
    end
  end
  localValue7 = Wait
  iterator2 = 0
  localValue7(iterator2)
  localValue7 = dataCollection19
  localValue7 = localValue7[localValue2]
  if localValue7 then
    localValue7 = dataCollection19
    localValue7 = localValue7[localValue2]
    iterator2 = localValue1.fuel
    localValue7.fuel = iterator2
  end
  localValue7 = CMG
  localValue7 = localValue7.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue7 = localValue7()
  iterator2 = rageUiOperation8
  tableHelper2 = localValue7
  dataCollection25 = false
  iterator2(tableHelper2, dataCollection25)
end
text24.applyModsOnVehicle = text25
text24 = CMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2
  localValue2 = dataCollection15
  localValue2 = localValue2[localValue1]
  return localValue2
end
text24.getVehicleSoundNameFromId = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = workingValue27
  localValue2 = localValue2()
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = SetVehicleHasBeenOwnedByPlayer
    localValue4 = localValue2[2]
    localValue5 = false
    localValue3(localValue4, localValue5)
    localValue3 = DeleteEntity
    localValue4 = localValue2[2]
    -- Beginner: Delete a GTA entity.
    localValue3(localValue4)
    localValue3 = tCMG
    localValue3 = localValue3.notify
    localValue4 = "Vehicle stored."
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
  end
end
text24.despawnGarageVehicle = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper
  localValue2 = CMG
  localValue2 = localValue2.getPosition
  localValue2 = localValue2()
  localValue3 = localValue2.x
  localValue4 = localValue2.y
  localValue5 = localValue2.z
  localValue6 = CMG
  localValue6 = localValue6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue6 = localValue6()
  localValue7 = IsPedSittingInAnyVehicle
  iterator2 = localValue6
  localValue7 = localValue7(iterator2)
  if localValue7 then
    localValue7 = GetVehiclePedIsIn
    iterator2 = localValue6
    tableHelper2 = true
    return localValue7(iterator2, tableHelper2)
  else
    localValue7 = GetClosestVehicle
    iterator2 = localValue3 + 1.0E-4
    tableHelper2 = localValue4 + 1.0E-4
    dataCollection25 = localValue5 + 1.0E-4
    workingValue2 = localValue1 + 1.0E-4
    dataCollection = 0
    iterator = 12295
    localValue7 = localValue7(iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator)
    iterator2 = IsEntityAVehicle
    tableHelper2 = localValue7
    iterator2 = iterator2(tableHelper2)
    if not iterator2 then
      iterator2 = GetClosestVehicle
      tableHelper2 = localValue3 + 1.0E-4
      dataCollection25 = localValue4 + 1.0E-4
      workingValue2 = localValue5 + 1.0E-4
      dataCollection = localValue1 + 1.0E-4
      iterator = 0
      stringHelper = 7
      iterator2 = iterator2(tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper)
      localValue7 = iterator2
    end
    iterator2 = IsEntityAVehicle
    tableHelper2 = localValue7
    iterator2 = iterator2(tableHelper2)
    if not iterator2 then
      iterator2 = GetClosestVehicle
      tableHelper2 = localValue3 + 1.0E-4
      dataCollection25 = localValue4 + 1.0E-4
      workingValue2 = localValue5 + 1.0E-4
      dataCollection = localValue1 + 1.0E-4
      iterator = 0
      stringHelper = 16384
      iterator2 = iterator2(tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper)
      localValue7 = iterator2
    end
    if 0 == localValue7 then
      iterator2 = GetVehiclePedIsIn
      tableHelper2 = localValue6
      dataCollection25 = true
      return iterator2(tableHelper2, dataCollection25)
    else
      return localValue7
    end
  end
end
text24.getNearestVehicle = text25
text24 = CMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = 100
  localValue4 = 100
  localValue5 = pairs
  localValue6 = CMG
  localValue6 = localValue6.getAllVehicles
  localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection = localValue6()
  localValue5, localValue6, localValue7, iterator2 = localValue5(localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection)
  for tableHelper2, dataCollection25 in localValue5, localValue6, localValue7, iterator2 do
    workingValue2 = GetEntityCoords
    dataCollection = dataCollection25
    -- Beginner: result below is entityCoords.
    workingValue2 = workingValue2(dataCollection)
    dataCollection = localValue2 - workingValue2
    dataCollection = #dataCollection
    if localValue4 > dataCollection then
      localValue4 = dataCollection
      localValue3 = dataCollection25
    end
  end
  if localValue1 >= localValue4 then
    return localValue3
  else
    localValue5 = 0
    return localValue5
  end
end
text24.getClosestVehicle = text25
text24 = CMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1, localValue2) ===
function text25(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper
  localValue3 = 0
  localValue4 = 1000000.0
  localValue5 = -1
  localValue6 = CMG
  localValue6 = localValue6.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue6 = localValue6()
  localValue7 = CMG
  localValue7 = localValue7.getClosestVehicle
  iterator2 = localValue1
  localValue7 = localValue7(iterator2)
  if 0 ~= localValue7 then
    iterator2 = GetEntityModel
    tableHelper2 = localValue7
    -- Beginner: result below is modelHash.
    iterator2 = iterator2(tableHelper2)
    tableHelper2 = GetVehicleModelNumberOfSeats
    dataCollection25 = iterator2
    tableHelper2 = tableHelper2(dataCollection25)
    if tableHelper2 > 0 then
      dataCollection25 = -1
      workingValue2 = tableHelper2 - 2
      dataCollection = 1
      for iterator = dataCollection25, workingValue2, dataCollection do
        stringHelper = GetPedInVehicleSeat
        workingValue7 = localValue7
        stringHelper2 = iterator
        stringHelper = stringHelper(workingValue7, stringHelper2)
        if 0 ~= stringHelper then
          workingValue7 = GetPedBoneIndex
          stringHelper2 = stringHelper
          cmgOperation3 = 0
          workingValue7 = workingValue7(stringHelper2, cmgOperation3)
          if workingValue7 > -1 then
            stringHelper2 = GetWorldPositionOfEntityBone
            cmgOperation3 = stringHelper
            tableHelper = workingValue7
            stringHelper2 = stringHelper2(cmgOperation3, tableHelper)
            if localValue2 then
              cmgOperation3 = localValue6.xy
              tableHelper = stringHelper2.xy
              cmgOperation3 = cmgOperation3 - tableHelper
              cmgOperation3 = #cmgOperation3
              if cmgOperation3 then
                goto continueAtStep54
              end
            end
            cmgOperation3 = localValue6 - stringHelper2
            cmgOperation3 = #cmgOperation3
            ::continueAtStep54::
            if localValue4 > cmgOperation3 then
              localValue3 = stringHelper
              localValue4 = cmgOperation3
              localValue5 = iterator
            end
          end
        end
      end
    end
  end
  iterator2 = localValue7
  tableHelper2 = localValue3
  dataCollection25 = localValue5
  workingValue2 = localValue4
  return iterator2, tableHelper2, dataCollection25, workingValue2
end
text24.getClosestVehicleIncludingPed = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = tCMG
  localValue2 = localValue2.getNearestVehicle
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = IsEntityAVehicle
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = SetVehicleFixed
    localValue4 = localValue2
    localValue3(localValue4)
  end
end
text24.fixeNearestVehicle = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = tCMG
  localValue2 = localValue2.getNearestVehicle
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = IsEntityAVehicle
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = SetVehicleOnGroundProperly
    localValue4 = localValue2
    localValue3(localValue4)
  end
end
text24.replaceNearestVehicle = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1, localValue2, localValue3) ===
function text25(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator
  localValue1 = localValue1 + 1.0E-4
  localValue2 = localValue2 + 1.0E-4
  localValue3 = localValue3 + 1.0E-4
  localValue4 = _ENV
  localValue5 = "StartExpensiveSynchronousShapeTestLosProbe"
  localValue4 = localValue4[localValue5]
  localValue5 = localValue1
  localValue6 = localValue2
  localValue7 = localValue3
  iterator2 = localValue1
  tableHelper2 = localValue2
  dataCollection25 = localValue3 + 4
  workingValue2 = 10
  dataCollection = CMG
  dataCollection = dataCollection.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  dataCollection = dataCollection()
  iterator = 0
  localValue4 = localValue4(localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator)
  localValue5 = GetShapeTestResult
  localValue6 = localValue4
  localValue5, localValue6, localValue7, iterator2, tableHelper2 = localValue5(localValue6)
  return tableHelper2
end
text24.getVehicleAtPosition = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper
  localValue2 = nil
  localValue3 = nil
  localValue4 = nil
  localValue5 = GetEntityCoords
  localValue6 = CMG
  localValue6 = localValue6.getPlayerPed
  localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper = localValue6()
  -- Beginner: result below is entityCoords.
  localValue5 = localValue5(localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper)
  localValue6 = pairs
  localValue7 = workingValue27
  localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper = localValue7()
  localValue6, localValue7, iterator2, tableHelper2 = localValue6(localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper)
  for dataCollection25, workingValue2 in localValue6, localValue7, iterator2, tableHelper2 do
    dataCollection = GetEntityCoords
    iterator = workingValue2[2]
    stringHelper = true
    -- Beginner: result below is entityCoords.
    dataCollection = dataCollection(iterator, stringHelper)
    dataCollection = dataCollection - localValue5
    dataCollection = #dataCollection
    iterator = localValue1 + 1.0E-4
    if dataCollection <= iterator and (not localValue2 or localValue2 > dataCollection) then
      localValue2 = dataCollection
      localValue3 = dataCollection25
      localValue4 = workingValue2[2]
    end
  end
  if localValue3 then
    localValue6 = DecorGetInt
    localValue7 = localValue4
    iterator2 = "ac76c9d452"
    localValue6 = localValue6(localValue7, iterator2)
    localValue7 = true
    iterator2 = localValue3
    tableHelper2 = localValue6
    return localValue7, iterator2, tableHelper2
  end
  localValue6 = false
  return localValue6
end
text24.getNearestOwnedVehicle = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection
  localValue2 = nil
  localValue3 = nil
  localValue4 = pairs
  localValue5 = workingValue27
  localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection = localValue5()
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection)
  for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
    dataCollection25 = GetEntityCoords
    workingValue2 = tableHelper2[2]
    dataCollection = true
    -- Beginner: result below is entityCoords.
    dataCollection25 = dataCollection25(workingValue2, dataCollection)
    workingValue2 = GetEntityCoords
    dataCollection = CMG
    dataCollection = dataCollection.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    dataCollection = dataCollection()
    -- Beginner: result below is entityCoords.
    workingValue2 = workingValue2(dataCollection)
    dataCollection25 = dataCollection25 - workingValue2
    dataCollection25 = #dataCollection25
    workingValue2 = localValue1 + 1.0E-4
    if dataCollection25 <= workingValue2 and (not localValue2 or localValue2 > dataCollection25) then
      localValue2 = dataCollection25
      localValue3 = iterator2
    end
  end
  if localValue3 then
    localValue4 = true
    localValue5 = localValue3
    return localValue4, localValue5
  end
  localValue4 = false
  return localValue4
end
text24.getCurrentOwnedVehicle = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: none) ===
function text25()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator
  localValue1 = pairs
  localValue2 = workingValue27
  localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator = localValue2()
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = IsEntityAVehicle
    iterator2 = localValue6[2]
    localValue7 = localValue7(iterator2)
    if localValue7 then
      localValue7 = table
      localValue7 = localValue7.unpack
      iterator2 = GetEntityCoords
      tableHelper2 = localValue6[2]
      dataCollection25 = true
      iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator = iterator2(tableHelper2, dataCollection25)
      localValue7, iterator2, tableHelper2 = localValue7(iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator)
      dataCollection25 = true
      workingValue2 = localValue7
      dataCollection = iterator2
      iterator = tableHelper2
      return dataCollection25, workingValue2, dataCollection, iterator
    end
  end
  localValue1 = false
  localValue2 = 0
  localValue3 = 0
  localValue4 = 0
  return localValue1, localValue2, localValue3, localValue4
end
text24.getAnyOwnedVehiclePosition = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2
  localValue2 = workingValue27
  localValue2 = localValue2()
  localValue2 = localValue2[localValue1]
  localValue3 = 0
  localValue4 = 0
  localValue5 = 0
  if localValue2 then
    localValue6 = table
    localValue6 = localValue6.unpack
    localValue7 = GetEntityCoords
    iterator2 = localValue2[2]
    tableHelper2 = true
    localValue7, iterator2, tableHelper2 = localValue7(iterator2, tableHelper2)
    localValue6, localValue7, iterator2 = localValue6(localValue7, iterator2, tableHelper2)
    localValue5 = iterator2
    localValue4 = localValue7
    localValue3 = localValue6
  end
  localValue6 = localValue3
  localValue7 = localValue4
  iterator2 = localValue5
  return localValue6, localValue7, iterator2
end
text24.getOwnedVehiclePosition = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue27
  localValue2 = localValue2()
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = localValue2[2]
    return localValue3
  end
end
text24.getOwnedVehicleHandle = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: none) ===
function text25()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = IsPedSittingInAnyVehicle
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = GetVehiclePedIsIn
    localValue3 = localValue1
    localValue4 = false
    -- Beginner: result below is currentVehicle.
    localValue2 = localValue2(localValue3, localValue4)
    localValue3 = CMG
    localValue3 = localValue3.inEvent
    localValue3 = localValue3()
    if not localValue3 then
      localValue3 = TaskLeaveVehicle
      localValue4 = localValue1
      localValue5 = localValue2
      localValue6 = 4160
      localValue3(localValue4, localValue5, localValue6)
    end
  end
end
text24.ejectVehicle = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: none) ===
function text25()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = IsPedSittingInAnyVehicle
  localValue3 = localValue1
  return localValue2(localValue3)
end
text24.isInVehicle = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1, localValue2) ===
function text25(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue3 = workingValue27
  localValue3 = localValue3()
  localValue3 = localValue3[localValue1]
  if localValue3 then
    localValue4 = SetVehicleDoorOpen
    localValue5 = localValue3[2]
    localValue6 = localValue2
    localValue7 = false
    iterator2 = false
    localValue4(localValue5, localValue6, localValue7, iterator2)
  end
end
text24.vc_openDoor = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1, localValue2) ===
function text25(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = workingValue27
  localValue3 = localValue3()
  localValue3 = localValue3[localValue1]
  if localValue3 then
    localValue4 = SetVehicleDoorShut
    localValue5 = localValue3[2]
    localValue6 = localValue2
    localValue7 = false
    localValue4(localValue5, localValue6, localValue7)
  end
end
text24.vc_closeDoor = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue27
  localValue2 = localValue2()
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = DetachVehicleFromTrailer
    localValue4 = localValue2[2]
    localValue3(localValue4)
  end
end
text24.vc_detachTrailer = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = workingValue27
  localValue2 = localValue2()
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = GetEntityAttachedToTowTruck
    localValue4 = localValue2[2]
    localValue3 = localValue3(localValue4)
    localValue4 = IsEntityAVehicle
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = DetachVehicleFromTowTruck
      localValue5 = localValue2[2]
      localValue6 = localValue3
      localValue4(localValue5, localValue6)
    end
  end
end
text24.vc_detachTowTruck = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = workingValue27
  localValue2 = localValue2()
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = GetVehicleAttachedToCargobob
    localValue4 = localValue2[2]
    localValue3 = localValue3(localValue4)
    localValue4 = IsEntityAVehicle
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = DetachVehicleFromCargobob
      localValue5 = localValue2[2]
      localValue6 = localValue3
      localValue4(localValue5, localValue6)
    end
  end
end
text24.vc_detachCargobob = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue2 = workingValue27
  localValue2 = localValue2()
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = GetIsVehicleEngineRunning
    localValue4 = localValue2[2]
    localValue3 = localValue3(localValue4)
    localValue4 = SetVehicleEngineOn
    localValue5 = localValue2[2]
    localValue6 = not localValue3
    localValue7 = true
    iterator2 = true
    localValue4(localValue5, localValue6, localValue7, iterator2)
    if localValue3 then
      localValue4 = SetVehicleUndriveable
      localValue5 = localValue2[2]
      localValue6 = true
      localValue4(localValue5, localValue6)
    else
      localValue4 = SetVehicleUndriveable
      localValue5 = localValue2[2]
      localValue6 = false
      localValue4(localValue5, localValue6)
    end
  end
end
text24.vc_toggleEngine = text25
text24 = tCMG

-- === HELPER FUNCTION (decompiler name: text25; parameters: localValue1) ===
function text25(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2
  localValue2 = workingValue27
  localValue2 = localValue2()
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = localValue2[2]
    localValue4 = GetVehicleDoorLockStatus
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    localValue4 = localValue4 >= 2
    localValue5 = NetworkGetNetworkIdFromEntity
    localValue6 = localValue3
    localValue5 = localValue5(localValue6)
    if 0 == localValue5 then
      localValue6 = tCMG
      localValue6 = localValue6.notify
      localValue7 = "~r~Failed to get ownership of vehicle to lock/unlock."
      -- Beginner: Show a notification to the player.
      localValue6(localValue7)
    else
      localValue6 = tCMG
      localValue6 = localValue6.notify
      localValue7 = "Vehicle "
      if localValue4 then
        iterator2 = "unlocked"
        if iterator2 then
          goto continueAtStep33
        end
      end
      iterator2 = "locked"
      ::continueAtStep33::
      tableHelper2 = "."
      localValue7 = localValue7 .. iterator2 .. tableHelper2
      localValue6(localValue7)
      localValue6 = NetworkHasControlOfEntity
      localValue7 = localValue3
      localValue6 = localValue6(localValue7)
      if localValue6 then
        localValue6 = TriggerEvent
        localValue7 = "126d6c2d61"
        iterator2 = localValue5
        tableHelper2 = not localValue4
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "126d6c2d61".
        localValue6(localValue7, iterator2, tableHelper2)
      else
        localValue6 = TriggerServerEvent
        localValue7 = "126d6c2d61"
        iterator2 = localValue5
        tableHelper2 = not localValue4
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "126d6c2d61".
        localValue6(localValue7, iterator2, tableHelper2)
      end
    end
  end
end
text24.vc_toggleLock = text25
text24 = RegisterNetEvent
text25 = "126d6c2d61"
-- Beginner: this function handles network event "126d6c2d61".

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1, localValue2) ===
function text26(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = NetworkDoesNetworkIdExist
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue3 = NetworkGetEntityFromNetworkId
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    return
  end
  localValue4 = NetworkHasControlOfEntity
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    return
  end
  if localValue2 then
    localValue4 = SetVehicleDoorsLocked
    localValue5 = localValue3
    localValue6 = 2
    localValue4(localValue5, localValue6)
    localValue4 = SetVehicleDoorsLockedForAllPlayers
    localValue5 = localValue3
    localValue6 = true
    localValue4(localValue5, localValue6)
  else
    localValue4 = SetVehicleDoorsLockedForAllPlayers
    localValue5 = localValue3
    localValue6 = false
    localValue4(localValue5, localValue6)
    localValue4 = SetVehicleDoorsLocked
    localValue5 = localValue3
    localValue6 = 1
    localValue4(localValue5, localValue6)
    localValue4 = SetVehicleDoorsLockedForPlayer
    localValue5 = localValue3
    localValue6 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue6 = localValue6()
    localValue7 = false
    localValue4(localValue5, localValue6, localValue7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "126d6c2d61".
text24(text25, text26)
text24 = RegisterNetEvent
text25 = "d105efe483"
-- Beginner: this function handles network event "d105efe483".

-- === HELPER FUNCTION (decompiler name: text26; parameters: none) ===
function text26()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = IsPedInAnyVehicle
  localValue3 = localValue1
  localValue4 = true
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = GetVehiclePedIsIn
    localValue3 = localValue1
    localValue4 = false
    -- Beginner: result below is currentVehicle.
    localValue2 = localValue2(localValue3, localValue4)
    localValue3 = SetVehicleEngineHealth
    localValue4 = localValue2
    localValue5 = 9999
    localValue3(localValue4, localValue5)
    localValue3 = SetVehiclePetrolTankHealth
    localValue4 = localValue2
    localValue5 = 9999
    localValue3(localValue4, localValue5)
    localValue3 = SetVehicleFixed
    localValue4 = localValue2
    localValue3(localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d105efe483".
text24(text25, text26)
text24 = RegisterNetEvent
text25 = "53092b8739"
-- Beginner: this function handles network event "53092b8739".

-- === HELPER FUNCTION (decompiler name: text26; parameters: none) ===
function text26()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = IsPedInAnyVehicle
  localValue3 = localValue1
  localValue4 = true
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = GetVehiclePedIsIn
    localValue3 = localValue1
    localValue4 = false
    -- Beginner: result below is currentVehicle.
    localValue2 = localValue2(localValue3, localValue4)
    localValue3 = SetVehicleEngineHealth
    localValue4 = localValue2
    localValue5 = 9999
    localValue3(localValue4, localValue5)
    localValue3 = SetVehiclePetrolTankHealth
    localValue4 = localValue2
    localValue5 = 9999
    localValue3(localValue4, localValue5)
    localValue3 = SetVehicleFixed
    localValue4 = localValue2
    localValue3(localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "53092b8739".
text24(text25, text26)
text24 = RegisterCommand
text25 = "callanambulance"
-- Beginner: this function is the command handler for "callanambulance".

-- === HELPER FUNCTION (decompiler name: text26; parameters: none) ===
function text26()
  local localValue1, localValue2
  localValue1 = tCMG
  localValue1 = localValue1.notify
  localValue2 = "~y~CALL AN AMBULANCE"
  -- Beginner: Show a notification to the player.
  localValue1(localValue2)
  localValue1 = tCMG
  localValue1 = localValue1.notify
  localValue2 = "~y~CALL AN AMBULANCE!"
  localValue1(localValue2)
  localValue1 = tCMG
  localValue1 = localValue1.notify
  localValue2 = "~r~BUT NOT FOR ME."
  -- Beginner: Show a notification to the player.
  localValue1(localValue2)
  localValue1 = SendNUIMessage
  localValue2 = {}
  localValue2.transactionType = "callanambulance"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue1(localValue2)
end
rageUiOperation9 = false
-- Beginner: Register a chat/console command. Event/command: "callanambulance".
text24(text25, text26, rageUiOperation9)

-- === HELPER FUNCTION (decompiler name: text24; parameters: none) ===
function text24()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "superadmin.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = true
    return localValue1
  end
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "admin.spawncar"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isPurge
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = true
      return localValue1
    end
  end
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "admin.eventbucket"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getEventBucketId
    localValue1 = localValue1()
    localValue2 = CMG
    localValue2 = localValue2.getPlayerBucket
    localValue2 = localValue2()
    if localValue1 == localValue2 then
      localValue1 = true
      return localValue1
    end
  end
  localValue1 = false
  return localValue1
end
text25 = RegisterCommand
text26 = "car"
-- Beginner: this function is the command handler for "car".

-- === HELPER FUNCTION (decompiler name: rageUiOperation9; parameters: localValue1, localValue2) ===
function rageUiOperation9(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper
  localValue3 = text24
  localValue3 = localValue3()
  if localValue3 then
    localValue3 = GetEntityCoords
    localValue4 = CMG
    localValue4 = localValue4.getPlayerPed
    localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper = localValue4()
    -- Beginner: result below is entityCoords.
    localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper)
    localValue4 = vector3
    localValue5 = -1341.9575195313
    localValue6 = -3032.8686523438
    localValue7 = 13.944421768188
    localValue4 = localValue4(localValue5, localValue6, localValue7)
    localValue5 = localValue2[1]
    if nil == localValue5 then
      localValue6 = tCMG
      localValue6 = localValue6.notify
      localValue7 = "~r~No vehicle spawncode specified."
      -- Beginner: Show a notification to the player.
      localValue6(localValue7)
      return
    end
    if "vwpolo" == localValue5 then
      localValue6 = CMG
      localValue6 = localValue6.getClientUserId
      -- Beginner: result below is userId.
      localValue6 = localValue6()
      if 1 ~= localValue6 then
        localValue6 = tCMG
        localValue6 = localValue6.teleport
        localValue7 = -807.62481689453
        iterator2 = 172.82191467285
        tableHelper2 = 76.740547180176
        localValue6(localValue7, iterator2, tableHelper2)
    end
    else
      localValue6 = string
      localValue6 = localValue6.lower
      localValue7 = localValue5
      localValue6 = localValue6(localValue7)
      if "lloydzlego" ~= localValue6 then
        localValue6 = string
        localValue6 = localValue6.lower
        localValue7 = localValue5
        localValue6 = localValue6(localValue7)
        if "lloydzlego2" ~= localValue6 then
          goto continueAtStep59
        end
      end
      localValue6 = CMG
      localValue6 = localValue6.getClientUserId
      -- Beginner: result below is userId.
      localValue6 = localValue6()
      if 71 ~= localValue6 then
        localValue6 = tCMG
        localValue6 = localValue6.notify
        localValue7 = "~y~Oak's words echoed... There's a time and place for everything, but not now."
        -- Beginner: Show a notification to the player.
        localValue6(localValue7)
      else
        ::continueAtStep59::
        if "redarrow2" == localValue5 then
          localValue6 = tCMG
          localValue6 = localValue6.notify
          localValue7 = "~y~CALL AN AMBULANCE"
          localValue6(localValue7)
          localValue6 = tCMG
          localValue6 = localValue6.notify
          localValue7 = "~y~CALL AN AMBULANCE"
          -- Beginner: Show a notification to the player.
          localValue6(localValue7)
          localValue6 = tCMG
          localValue6 = localValue6.notify
          localValue7 = "~r~BUT NOT FOR ME."
          localValue6(localValue7)
          localValue6 = SendNUIMessage
          localValue7 = {}
          localValue7.transactionType = "callanambulance"
          -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
          localValue6(localValue7)
        else
          localValue6 = localValue3 - localValue4
          localValue6 = #localValue6
          localValue7 = 600.0
          if not (localValue6 < localValue7) then
            localValue6 = CMG
            localValue6 = localValue6.hasClientPermission
            localValue7 = "superadmin.permission"
            localValue6 = localValue6(localValue7)
            if not localValue6 then
              localValue6 = CMG
              localValue6 = localValue6.getPlayerBucket
              localValue6 = localValue6()
              localValue7 = CMG
              localValue7 = localValue7.getEventBucketId
              localValue7 = localValue7()
              if localValue6 ~= localValue7 then
                goto continueAtStep163
              end
            end
          end
          localValue6 = TriggerServerEvent
          localValue7 = "1e0bbaf6cd"
          iterator2 = localValue5
          tableHelper2 = "/car"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
          localValue6(localValue7, iterator2, tableHelper2)
          localValue6 = CMG
          localValue6 = localValue6.requestEntitySpawn
          localValue7 = "carcommand"
          iterator2 = localValue5
          localValue6(localValue7, iterator2)
          localValue6 = CMG
          localValue6 = localValue6.spawnVehicle
          localValue7 = localValue5
          iterator2 = localValue3.x
          tableHelper2 = localValue3.y
          dataCollection25 = localValue3.z
          workingValue2 = GetEntityHeading
          dataCollection = CMG
          dataCollection = dataCollection.getPlayerPed
          dataCollection, iterator, stringHelper = dataCollection()
          -- Beginner: result below is heading.
          workingValue2 = workingValue2(dataCollection, iterator, stringHelper)
          dataCollection = true
          iterator = true
          stringHelper = true
          localValue6 = localValue6(localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper)
          localValue7 = CMG
          localValue7 = localValue7.initLocalVehicle
          iterator2 = localValue6
          localValue7(iterator2)
          localValue7 = SetVehicleOnGroundProperly
          iterator2 = localValue6
          localValue7(iterator2)
          localValue7 = SetEntityInvincible
          iterator2 = localValue6
          tableHelper2 = false
          localValue7(iterator2, tableHelper2)
          localValue7 = CMG
          localValue7 = localValue7.applyMaxDefaultModsToVehicle
          iterator2 = localValue6
          localValue7(iterator2)
          localValue7 = SetPedIntoVehicle
          iterator2 = CMG
          iterator2 = iterator2.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          iterator2 = iterator2()
          tableHelper2 = localValue6
          dataCollection25 = -1
          localValue7(iterator2, tableHelper2, dataCollection25)
          localValue7 = SetModelAsNoLongerNeeded
          iterator2 = GetHashKey
          tableHelper2 = localValue5
          iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper = iterator2(tableHelper2)
          localValue7(iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper)
          localValue7 = SetVehRadioStation
          iterator2 = localValue6
          tableHelper2 = "OFF"
          localValue7(iterator2, tableHelper2)
          localValue7 = Wait
          iterator2 = 500
          localValue7(iterator2)
          localValue7 = SetVehRadioStation
          iterator2 = localValue6
          tableHelper2 = "OFF"
          localValue7(iterator2, tableHelper2)
          goto continueAtStep167
          ::continueAtStep163::
          localValue6 = tCMG
          localValue6 = localValue6.notify
          localValue7 = "~r~Vehicles may only be spawned at the airport for testing"
          -- Beginner: Show a notification to the player.
          localValue6(localValue7)
        end
      end
    end
  end
  ::continueAtStep167::
end
rageUiOperation10 = false
-- Beginner: Register a chat/console command. Event/command: "car".
text25(text26, rageUiOperation9, rageUiOperation10)
text25 = RegisterCommand
text26 = "dv"
-- Beginner: this function is the command handler for "dv".

-- === HELPER FUNCTION (decompiler name: rageUiOperation9; parameters: none) ===
function rageUiOperation9()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "admin.tickets"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "eventadmin.whitelist"
    localValue1 = localValue1(localValue2)
    if not localValue1 then
      goto continueAtStep35
    end
    localValue1 = CMG
    localValue1 = localValue1.getPlayerBucket
    localValue1 = localValue1()
    localValue2 = CMG
    localValue2 = localValue2.getEventBucketId
    localValue2 = localValue2()
    if localValue1 ~= localValue2 then
      goto continueAtStep35
    end
  end
  localValue1 = GetVehiclePedIsIn
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = false
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1(localValue2, localValue3)
  localValue2 = NetworkHasControlOfEntity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = DeleteEntity
    localValue3 = localValue1
    -- Beginner: Delete a GTA entity.
    localValue2(localValue3)
  end
  ::continueAtStep35::
end
rageUiOperation10 = false
-- Beginner: Register a chat/console command. Event/command: "dv".
text25(text26, rageUiOperation9, rageUiOperation10)
text25 = AddEventHandler
text26 = "918c11c450"
-- Beginner: this function runs when client event "918c11c450" fires.

-- === HELPER FUNCTION (decompiler name: rageUiOperation9; parameters: localValue1) ===
function rageUiOperation9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7
  localValue2 = tonumber
  localValue3 = DecorGetInt
  localValue4 = localValue1
  localValue5 = "ac76c9d452"
  localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7 = localValue3(localValue4, localValue5)
  localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7)
  localValue3 = DecorGetInt
  localValue4 = localValue1
  localValue5 = "0a6cf607ed"
  localValue3 = localValue3(localValue4, localValue5)
  if localValue2 > 0 and localValue3 > 0 then
    localValue4 = CMG
    localValue4 = localValue4.loadAnimDict
    localValue5 = "missexile3"
    -- Beginner: Load a GTA animation dictionary before using it.
    localValue4(localValue5)
    localValue4 = TaskPlayAnim
    localValue5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue5 = localValue5()
    localValue6 = "missexile3"
    localValue7 = "ex03_dingy_search_case_base_michael"
    iterator2 = 1.0
    tableHelper2 = 8.0
    dataCollection25 = 12000
    workingValue2 = 1
    dataCollection = 1.0
    iterator = false
    stringHelper = false
    workingValue7 = false
    -- Beginner: Play an animation on a ped.
    localValue4(localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7)
    localValue4 = RemoveAnimDict
    localValue5 = "missexile3"
    localValue4(localValue5)
    localValue4 = TriggerServerEvent
    localValue5 = "d9ee87e5cb"
    localValue6 = VehToNet
    localValue7 = localValue1
    localValue6 = localValue6(localValue7)
    localValue7 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d9ee87e5cb".
    localValue4(localValue5, localValue6, localValue7)
  else
    localValue4 = IsEntityAVehicle
    localValue5 = localValue1
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = GetEntityAttachedTo
      localValue5 = localValue1
      localValue4 = localValue4(localValue5)
      if 0 ~= localValue4 then
        localValue5 = IsEntityAVehicle
        localValue6 = localValue1
        localValue5 = localValue5(localValue6)
        if localValue5 then
          localValue5 = NetworkGetNetworkIdFromEntity
          localValue6 = localValue4
          localValue5 = localValue5(localValue6)
          if localValue5 > 0 then
            localValue6 = TriggerServerEvent
            localValue7 = "3395fde4e7"
            iterator2 = localValue5
            localValue6(localValue7, iterator2)
          end
        end
      end
    end
    localValue4 = tCMG
    localValue4 = localValue4.notify
    localValue5 = "~r~Vehicle is not owned by anyone"
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "918c11c450".
text25(text26, rageUiOperation9)
text25 = RegisterNetEvent
text26 = "3b617398d3"
-- Beginner: this function handles network event "3b617398d3".

-- === HELPER FUNCTION (decompiler name: rageUiOperation9; parameters: localValue1, localValue2) ===
function rageUiOperation9(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator
  localValue3 = CMG
  localValue3 = localValue3.getObjectId
  localValue4 = localValue1
  localValue5 = "3b617398d3"
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = GetNumberOfVehicleDoors
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  localValue5 = 0
  localValue6 = localValue4
  localValue7 = 1
  for iterator2 = localValue5, localValue6, localValue7 do
    if localValue2 then
      tableHelper2 = SetVehicleDoorOpen
      dataCollection25 = localValue3
      workingValue2 = iterator2
      dataCollection = false
      iterator = false
      tableHelper2(dataCollection25, workingValue2, dataCollection, iterator)
    else
      tableHelper2 = SetVehicleDoorShut
      dataCollection25 = localValue3
      workingValue2 = iterator2
      dataCollection = false
      tableHelper2(dataCollection25, workingValue2, dataCollection)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3b617398d3".
text25(text26, rageUiOperation9)
text25 = {}
text26 = RegisterNetEvent
rageUiOperation9 = "7d90029b70"
-- Beginner: this function handles network event "7d90029b70".

-- === HELPER FUNCTION (decompiler name: rageUiOperation10; parameters: localValue1, localValue2, localValue3, localValue4) ===
function rageUiOperation10(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7
  localValue5 = tonumber
  localValue6 = localValue4
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    localValue5 = 60000
  end
  localValue6 = 1000
  if localValue5 < localValue6 then
    localValue5 = 60000
  end
  localValue6 = FreezeEntityPosition
  localValue7 = CMG
  localValue7 = localValue7.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue7 = localValue7()
  iterator2 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue6(localValue7, iterator2)
  localValue6 = RequestAnimDict
  localValue7 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
  localValue6(localValue7)
  while true do
    localValue6 = HasAnimDictLoaded
    localValue7 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
    localValue6 = localValue6(localValue7)
    if localValue6 then
      break
    end
    localValue6 = Citizen
    localValue6 = localValue6.Wait
    localValue7 = 0
    localValue6(localValue7)
  end
  localValue6 = true
  localValue7 = false
  iterator2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  iterator2 = iterator2()
  tableHelper2 = tCMG
  tableHelper2 = tableHelper2.notify
  dataCollection25 = "~g~Lock Picking in progress, you can cancel with [Backspace]."
  -- Beginner: Show a notification to the player.
  tableHelper2(dataCollection25)
  tableHelper2 = Citizen
  tableHelper2 = tableHelper2.CreateThread

  -- === HELPER FUNCTION (decompiler name: dataCollection25; parameters: none) ===
  function dataCollection25()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag
    while true do
      localValue12 = localValue6
      if not localValue12 then
        break
      end
      localValue12 = IsEntityPlayingAnim
      localValue22 = CMG
      localValue22 = localValue22.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue22 = localValue22()
      localValue32 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
      localValue42 = "machinic_loop_mechandplayer"
      workingValue18 = 3
      localValue12 = localValue12(localValue22, localValue32, localValue42, workingValue18)
      if not localValue12 then
        localValue12 = TaskPlayAnim
        localValue22 = CMG
        localValue22 = localValue22.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue22 = localValue22()
        localValue32 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
        localValue42 = "machinic_loop_mechandplayer"
        workingValue18 = 8.0
        stateFlag11 = -8.0
        stateFlag13 = -1
        stateFlag14 = 1
        cmgOperation16 = 0
        stateFlag17 = false
        number2 = false
        stateFlag = false
        -- Beginner: Play an animation on a ped.
        localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag)
      end
      localValue12 = math
      localValue12 = localValue12.floor
      localValue22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue22 = localValue22()
      localValue32 = iterator2
      localValue22 = localValue22 - localValue32
      localValue32 = localValue5
      localValue22 = localValue22 / localValue32
      localValue22 = localValue22 * 100
      localValue12 = localValue12(localValue22)
      localValue22 = drawNativeText
      localValue32 = "~y~Lock picking - "
      localValue42 = localValue12
      workingValue18 = "%"
      localValue32 = localValue32 .. localValue42 .. workingValue18
      -- Beginner: Draw GTA-style text on screen.
      localValue22(localValue32)
      localValue22 = EnableControlAction
      localValue32 = 0
      localValue42 = 177
      workingValue18 = true
      localValue22(localValue32, localValue42, workingValue18)
      localValue22 = IsControlJustPressed
      localValue32 = 0
      localValue42 = 177
      localValue22 = localValue22(localValue32, localValue42)
      if not localValue22 then
        localValue22 = IsDisabledControlJustPressed
        localValue32 = 0
        localValue42 = 177
        localValue22 = localValue22(localValue32, localValue42)
        if not localValue22 then
          goto continueAtStep88
        end
      end
      localValue22 = tCMG
      localValue22 = localValue22.notify
      localValue32 = "~r~Lock Picking cancelled."
      -- Beginner: Show a notification to the player.
      localValue22(localValue32)
      localValue22 = false
      localValue6 = localValue22
      localValue22 = true
      localValue7 = localValue22
      localValue22 = ClearPedTasks
      localValue32 = CMG
      localValue32 = localValue32.getPlayerPed
      localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag = localValue32()
      localValue22(localValue32, localValue42, workingValue18, stateFlag11, stateFlag13, stateFlag14, cmgOperation16, stateFlag17, number2, stateFlag)
      localValue22 = FreezeEntityPosition
      localValue32 = CMG
      localValue32 = localValue32.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue32 = localValue32()
      localValue42 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      localValue22(localValue32, localValue42)
      localValue22 = TriggerServerEvent
      localValue32 = "24bc17d15e"
      localValue42 = localValue2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "24bc17d15e".
      localValue22(localValue32, localValue42)
      ::continueAtStep88::
      localValue22 = Wait
      localValue32 = 0
      localValue22(localValue32)
    end
    localValue12 = RemoveAnimDict
    localValue22 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
    localValue12(localValue22)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  tableHelper2(dataCollection25)
  tableHelper2 = Wait
  dataCollection25 = localValue5
  tableHelper2(dataCollection25)
  tableHelper2 = FreezeEntityPosition
  dataCollection25 = CMG
  dataCollection25 = dataCollection25.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  dataCollection25 = dataCollection25()
  workingValue2 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  tableHelper2(dataCollection25, workingValue2)
  tableHelper2 = ClearPedTasks
  dataCollection25 = CMG
  dataCollection25 = dataCollection25.getPlayerPed
  dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7 = dataCollection25()
  tableHelper2(dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7)
  localValue6 = false
  if localValue3 and not localValue7 then
    tableHelper2 = text25
    tableHelper2[localValue1] = true
    tableHelper2 = tonumber
    dataCollection25 = DecorGetInt
    workingValue2 = localValue1
    dataCollection = "ac76c9d452"
    dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7 = dataCollection25(workingValue2, dataCollection)
    tableHelper2 = tableHelper2(dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7)
    dataCollection25 = DecorGetInt
    workingValue2 = localValue1
    dataCollection = "0a6cf607ed"
    dataCollection25 = dataCollection25(workingValue2, dataCollection)
    if tableHelper2 > 0 and dataCollection25 > 0 then
      workingValue2 = TriggerServerEvent
      dataCollection = "c8979f62fb"
      iterator = dataCollection25
      stringHelper = tableHelper2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c8979f62fb".
      workingValue2(dataCollection, iterator, stringHelper)
    else
      workingValue2 = tCMG
      workingValue2 = workingValue2.notify
      dataCollection = "~r~Vehicle is not owned by anyone"
      -- Beginner: Show a notification to the player.
      workingValue2(dataCollection)
    end
    workingValue2 = NetworkGetNetworkIdFromEntity
    dataCollection = localValue1
    workingValue2 = workingValue2(dataCollection)
    if 0 ~= workingValue2 then
      dataCollection = NetworkHasControlOfEntity
      iterator = localValue1
      dataCollection = dataCollection(iterator)
      if dataCollection then
        dataCollection = TriggerEvent
        iterator = "126d6c2d61"
        stringHelper = workingValue2
        workingValue7 = false
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "126d6c2d61".
        dataCollection(iterator, stringHelper, workingValue7)
      else
        dataCollection = TriggerServerEvent
        iterator = "126d6c2d61"
        stringHelper = workingValue2
        workingValue7 = false
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "126d6c2d61".
        dataCollection(iterator, stringHelper, workingValue7)
      end
      dataCollection = TriggerServerEvent
      iterator = "3b617398d3"
      stringHelper = workingValue2
      dataCollection(iterator, stringHelper)
      dataCollection = tCMG
      dataCollection = dataCollection.notify
      iterator = "Vehicle unlocked."
      -- Beginner: Show a notification to the player.
      dataCollection(iterator)
    end
  else
    tableHelper2 = tCMG
    tableHelper2 = tableHelper2.notify
    dataCollection25 = "~r~Failed to lockpick vehicle."
    tableHelper2(dataCollection25)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7d90029b70".
text26(rageUiOperation9, rageUiOperation10)
text26 = {}
rageUiOperation9 = RegisterNetEvent
rageUiOperation10 = "49b4103abb"
-- Beginner: this function handles network event "49b4103abb".

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: localValue1, localValue2) ===
function eventHandler5(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection
  localValue3 = tonumber
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = 60000
  end
  localValue4 = 1000
  if localValue3 < localValue4 then
    localValue3 = 60000
  end
  localValue4 = CMG
  localValue4 = localValue4.getObjectId
  localValue5 = localValue1
  localValue6 = "49b4103abb"
  localValue4 = localValue4(localValue5, localValue6)
  if localValue4 then
    localValue5 = GetSoundId
    -- Beginner: result below is soundHandle.
    localValue5 = localValue5()
    localValue6 = PlaySoundFromEntity
    localValue7 = localValue5
    iterator2 = "ALARM_ONE"
    tableHelper2 = localValue4
    dataCollection25 = "DLC_ALARM_SOUNDSET"
    workingValue2 = false
    dataCollection = 0
    localValue6(localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection)
    localValue6 = text26
    localValue6[localValue1] = localValue5
    localValue6 = SetTimeout
    localValue7 = localValue3

    -- === HELPER FUNCTION: iterator2() ===
    function iterator2()
      local localValue12, localValue22
      localValue22 = localValue1
      localValue12 = text26
      localValue12 = localValue12[localValue22]
      if localValue12 then
        localValue12 = StopSound
        localValue22 = localValue5
        localValue12(localValue22)
        localValue12 = ReleaseSoundId
        localValue22 = localValue5
        localValue12(localValue22)
        localValue22 = localValue1
        localValue12 = text26
        localValue12[localValue22] = nil
      end
    end
    localValue6(localValue7, iterator2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "49b4103abb".
rageUiOperation9(rageUiOperation10, eventHandler5)
rageUiOperation9 = RegisterNetEvent
rageUiOperation10 = "4b7575ffbe"
-- Beginner: this function handles network event "4b7575ffbe".

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: localValue1) ===
function eventHandler5(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = text26
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = StopSound
    localValue4 = localValue2
    localValue3(localValue4)
    localValue3 = ReleaseSoundId
    localValue4 = localValue2
    localValue3(localValue4)
    localValue3 = text26
    localValue3[localValue1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4b7575ffbe".
rageUiOperation9(rageUiOperation10, eventHandler5)
rageUiOperation9 = AddEventHandler
rageUiOperation10 = "1631601e81"
-- Beginner: this function runs when client event "1631601e81" fires.

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: localValue1) ===
function eventHandler5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = DecorGetBool
  localValue3 = localValue1
  localValue4 = "6b6dade745"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = notify
    localValue3 = "~r~This vehicle has been towed by Mechanic and can't be lock picked."
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
    return
  else
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "aa.onduty.permission"
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = notify
      localValue3 = "~r~This action is very illegal."
      localValue2(localValue3)
      return
    else
      localValue2 = tCMG
      localValue2 = localValue2.isInGreenzone
      localValue3 = false
      localValue2 = localValue2(localValue3)
      if localValue2 then
        localValue2 = notify
        localValue3 = "~r~You can not lockpick in a greenzone"
        -- Beginner: Show a notification to the player.
        localValue2(localValue3)
        return
      end
    end
  end
  localValue2 = DecorGetInt
  localValue3 = localValue1
  localValue4 = "0a6cf607ed"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 > 0 then
    localValue3 = text25
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = TriggerServerEvent
      localValue4 = "c8979f62fb"
      localValue5 = localValue2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c8979f62fb".
      localValue3(localValue4, localValue5)
    else
      localValue3 = TriggerServerEvent
      localValue4 = "bcccb7ede5"
      localValue5 = localValue1
      localValue6 = VehToNet
      localValue7 = localValue1
      localValue6 = localValue6(localValue7)
      localValue7 = localValue2
      localValue3(localValue4, localValue5, localValue6, localValue7)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "1631601e81".
rageUiOperation9(rageUiOperation10, eventHandler5)
rageUiOperation9 = CMG
rageUiOperation10 = "clientVehicleWasLockpickedThisSession"

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: localValue1) ===
function eventHandler5(localValue1)
  local localValue2
  localValue2 = text25
  localValue2 = localValue2[localValue1]
  localValue2 = true == localValue2
  return localValue2
end
rageUiOperation9[rageUiOperation10] = eventHandler5
rageUiOperation9 = CMG
rageUiOperation10 = "getCustomFolders"

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: none) ===
function eventHandler5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper
  localValue1 = GetResourceKvpString
  localValue2 = "cmg_garagefolders"
  localValue1 = localValue1(localValue2)
  if nil == localValue1 or "null" == localValue1 then
    localValue1 = "{}"
  end
  localValue2 = json
  localValue2 = localValue2.decode
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = {}
  if localValue2 then
    localValue4 = pairs
    localValue5 = localValue2
    localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
    for iterator2, tableHelper2 in localValue4, localValue5, localValue6, localValue7 do
      dataCollection25 = {}
      workingValue2 = pairs
      dataCollection = tableHelper2
      workingValue2, dataCollection, iterator, stringHelper = workingValue2(dataCollection)
      for workingValue7, stringHelper2 in workingValue2, dataCollection, iterator, stringHelper do
        cmgOperation3 = tonumber
        tableHelper = workingValue7
        cmgOperation3 = cmgOperation3(tableHelper)
        if cmgOperation3 then
          cmgOperation3 = tonumber
          tableHelper = workingValue7
          cmgOperation3 = cmgOperation3(tableHelper)
          dataCollection25[cmgOperation3] = stringHelper2
        end
      end
      localValue3[iterator2] = dataCollection25
    end
  end
  return localValue3
end
rageUiOperation9[rageUiOperation10] = eventHandler5
rageUiOperation9 = CMG
rageUiOperation10 = "isVehicleInAnyCustomFolder"

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: localValue1) ===
function eventHandler5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue2 = pairs
  localValue3 = dataCollection9
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = localValue7[localValue1]
    if iterator2 then
      iterator2 = true
      return iterator2
    end
  end
  localValue2 = false
  return localValue2
end
rageUiOperation9[rageUiOperation10] = eventHandler5
rageUiOperation9 = CMG
rageUiOperation10 = "saveCustomFolders"

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: localValue1) ===
function eventHandler5(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = SetResourceKvp
  localValue3 = "cmg_garagefolders"
  localValue4 = json
  localValue4 = localValue4.encode
  localValue5 = dataCollection9
  localValue4, localValue5 = localValue4(localValue5)
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = SetResourceKvpInt
  localValue3 = "cmg_garagefolders_version"
  localValue4 = localValue1 or localValue4
  if not localValue1 then
    localValue4 = 2
  end
  localValue2(localValue3, localValue4)
end
rageUiOperation9[rageUiOperation10] = eventHandler5
rageUiOperation9 = CMG
rageUiOperation10 = "addCarToCustomFolder"

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: localValue1, localValue2, localValue3) ===
function eventHandler5(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2
  localValue4 = dataCollection9
  localValue4 = localValue4[localValue3]
  if localValue4 then
    localValue4 = 0
    localValue5 = pairs
    localValue6 = dataCollection9
    localValue6 = localValue6[localValue3]
    localValue5, localValue6, localValue7, iterator2 = localValue5(localValue6)
    for tableHelper2, dataCollection25 in localValue5, localValue6, localValue7, iterator2 do
      if dataCollection25 > localValue4 then
        localValue4 = dataCollection25
      end
    end
    localValue5 = dataCollection9
    localValue5 = localValue5[localValue3]
    localValue6 = localValue4 + 1
    localValue5[localValue1] = localValue6
    localValue5 = CMG
    localValue5 = localValue5.saveCustomFolders
    localValue5()
    localValue5 = tCMG
    localValue5 = localValue5.notify
    localValue6 = "~g~Added vehicle to custom folder."
    -- Beginner: Show a notification to the player.
    localValue5(localValue6)
  else
    localValue4 = tCMG
    localValue4 = localValue4.notify
    localValue5 = "~r~Failed to add vehicle to folder, folder does not exist?"
    localValue4(localValue5)
  end
end
rageUiOperation9[rageUiOperation10] = eventHandler5
rageUiOperation9 = _ENV
rageUiOperation10 = "CMG"
rageUiOperation9 = rageUiOperation9[rageUiOperation10]
rageUiOperation10 = "removeCarFromCustomFolder"

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: localValue1, localValue2) ===
function eventHandler5(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = dataCollection9
  localValue3 = localValue3[localValue2]
  if localValue3 then
    localValue3 = dataCollection9
    localValue3 = localValue3[localValue2]
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = dataCollection9
      localValue3 = localValue3[localValue2]
      localValue3[localValue1] = nil
      localValue3 = CMG
      localValue3 = localValue3.saveCustomFolders
      localValue3()
      localValue3 = tCMG
      localValue3 = localValue3.notify
      localValue4 = "~g~Removed vehicle from custom folder."
      -- Beginner: Show a notification to the player.
      localValue3(localValue4)
    else
      localValue3 = tCMG
      localValue3 = localValue3.notify
      localValue4 = "~r~Failed to remove vehicle from folder, vehicle not in folder."
      localValue3(localValue4)
    end
  else
    localValue3 = tCMG
    localValue3 = localValue3.notify
    localValue4 = "~r~Failed to remove vehicle from folder, folder does not exist?"
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
  end
end
rageUiOperation9[rageUiOperation10] = eventHandler5
rageUiOperation9 = _ENV
rageUiOperation10 = "CMG"
rageUiOperation9 = rageUiOperation9[rageUiOperation10]
rageUiOperation10 = "createCustomFolder"

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: localValue1) ===
function eventHandler5(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = dataCollection9
  localValue3 = {}
  localValue2[localValue1] = localValue3
  localValue2 = CMG
  localValue2 = localValue2.saveCustomFolders
  localValue2()
  localValue2 = tCMG
  localValue2 = localValue2.notify
  localValue3 = "~g~Created "
  localValue4 = localValue1
  localValue3 = localValue3 .. localValue4
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
end
rageUiOperation9[rageUiOperation10] = eventHandler5
rageUiOperation9 = _ENV
rageUiOperation10 = "CMG"
rageUiOperation9 = rageUiOperation9[rageUiOperation10]
rageUiOperation10 = "deleteCustomFolder"

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: localValue1) ===
function eventHandler5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2
  localValue2 = pairs
  localValue3 = dataCollection9
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6 in localValue2, localValue3, localValue4, localValue5 do
    localValue7 = string
    localValue7 = localValue7.lower
    iterator2 = localValue6
    localValue7 = localValue7(iterator2)
    iterator2 = string
    iterator2 = iterator2.lower
    tableHelper2 = localValue1
    iterator2 = iterator2(tableHelper2)
    if localValue7 == iterator2 then
      localValue7 = dataCollection9
      localValue7[localValue6] = nil
    end
  end
  localValue2 = dataCollection9
  localValue2[localValue1] = nil
  localValue2 = CMG
  localValue2 = localValue2.saveCustomFolders
  localValue2()
  localValue2 = tCMG
  localValue2 = localValue2.notify
  localValue3 = "~g~Deleted "
  localValue4 = localValue1
  localValue3 = localValue3 .. localValue4
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
end
rageUiOperation9[rageUiOperation10] = eventHandler5
rageUiOperation9 = _ENV
rageUiOperation10 = "CMG"
rageUiOperation9 = rageUiOperation9[rageUiOperation10]
rageUiOperation10 = "getGarageSettings"

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: none) ===
function eventHandler5()
  local localValue1, localValue2, localValue3
  localValue1 = GetResourceKvpString
  localValue2 = "cmg_garagesettings"
  localValue1 = localValue1(localValue2)
  if nil == localValue1 or "null" == localValue1 then
    localValue1 = "{}"
  end
  localValue2 = json
  localValue2 = localValue2.decode
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = {}
  end
  return localValue2
end
rageUiOperation9[rageUiOperation10] = eventHandler5
rageUiOperation9 = _ENV
rageUiOperation10 = "CMG"
rageUiOperation9 = rageUiOperation9[rageUiOperation10]
rageUiOperation10 = "saveGarageSettings"

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: none) ===
function eventHandler5()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = SetResourceKvp
  localValue2 = "cmg_garagesettings"
  localValue3 = json
  localValue3 = localValue3.encode
  localValue4 = dataCollection11
  localValue3, localValue4 = localValue3(localValue4)
  localValue1(localValue2, localValue3, localValue4)
end
rageUiOperation9[rageUiOperation10] = eventHandler5
rageUiOperation9 = _ENV
rageUiOperation10 = "CMG"
rageUiOperation9 = rageUiOperation9[rageUiOperation10]
rageUiOperation10 = "registerCommand"
rageUiOperation9 = rageUiOperation9[rageUiOperation10]
rageUiOperation10 = "cleanupgarages"

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: none) ===
function eventHandler5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9
  localValue1 = CMG
  localValue1 = localValue1.getClientUserId
  -- Beginner: result below is userId.
  localValue1 = localValue1()
  if 1 == localValue1 then
    localValue1 = {}
    localValue2 = tCMG
    localValue2 = localValue2.notify
    localValue3 = "~y~Y to OK, U to mark as removed"
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
    localValue2 = 1
    localValue3 = workingValue.garageInstances
    localValue3 = #localValue3
    localValue4 = 1
    for localValue5 = localValue2, localValue3, localValue4 do
      localValue6 = workingValue.garageInstances
      localValue6 = localValue6[localValue5]
      localValue7 = localValue6[1]
      iterator2 = localValue6[2]
      tableHelper2 = localValue6[3]
      dataCollection25 = print
      workingValue2 = "Checking"
      dataCollection = localValue7
      dataCollection25(workingValue2, dataCollection)
      dataCollection25 = tCMG
      dataCollection25 = dataCollection25.teleport
      workingValue2 = iterator2.x
      dataCollection = iterator2.y
      iterator = iterator2.z
      dataCollection25(workingValue2, dataCollection, iterator)
      dataCollection25 = true
      while dataCollection25 do
        workingValue2 = IsControlJustPressed
        dataCollection = 0
        iterator = 246
        workingValue2 = workingValue2(dataCollection, iterator)
        if workingValue2 then
          workingValue2 = tCMG
          workingValue2 = workingValue2.notify
          dataCollection = "~g~This garage is fine."
          -- Beginner: Show a notification to the player.
          workingValue2(dataCollection)
          workingValue2 = table
          workingValue2 = workingValue2.insert
          dataCollection = localValue1
          iterator = "{\""
          stringHelper = localValue7
          workingValue7 = "\", "
          stringHelper2 = tostring
          cmgOperation3 = iterator2
          stringHelper2 = stringHelper2(cmgOperation3)
          cmgOperation3 = ", "
          tableHelper = tostring
          workingValue9 = tableHelper2
          tableHelper = tableHelper(workingValue9)
          workingValue9 = "},"
          iterator = iterator .. stringHelper .. workingValue7 .. stringHelper2 .. cmgOperation3 .. tableHelper .. workingValue9
          workingValue2(dataCollection, iterator)
          dataCollection25 = false
        else
          workingValue2 = IsControlJustPressed
          dataCollection = 0
          iterator = 303
          workingValue2 = workingValue2(dataCollection, iterator)
          if workingValue2 then
            workingValue2 = tCMG
            workingValue2 = workingValue2.notify
            dataCollection = "~g~Removing this garage."
            -- Beginner: Show a notification to the player.
            workingValue2(dataCollection)
            dataCollection25 = false
          end
        end
        workingValue2 = Wait
        dataCollection = 0
        workingValue2(dataCollection)
      end
    end
    localValue2 = TriggerServerEvent
    localValue3 = "0d535cac57"
    localValue4 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0d535cac57".
    localValue2(localValue3, localValue4)
  end
end
eventHandler6 = false
rageUiOperation9(rageUiOperation10, eventHandler5, eventHandler6)
rageUiOperation9 = AddEventHandler
rageUiOperation10 = "9bf490d170"
-- Beginner: this function runs when client event "9bf490d170" fires.

-- === HELPER FUNCTION (decompiler name: eventHandler5; parameters: none) ===
function eventHandler5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = SendNUIMessage
  localValue2 = {}
  localValue3 = "MPCT_ALAA_0"
  localValue4 = math
  localValue4 = localValue4.random
  localValue5 = 1
  localValue6 = 5
  localValue4 = localValue4(localValue5, localValue6)
  localValue3 = localValue3 .. localValue4
  localValue2.transactionType = localValue3
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue1(localValue2)
end
-- Beginner: Register a client-side event handler. Event/command: "9bf490d170".
rageUiOperation9(rageUiOperation10, eventHandler5)
rageUiOperation9 = 0

-- === HELPER FUNCTION (decompiler name: rageUiOperation10; parameters: none) ===
function rageUiOperation10()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = RenderScriptCams
  localValue2 = false
  localValue3 = false
  localValue4 = 0
  localValue5 = false
  localValue6 = false
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = DestroyCam
  localValue2 = rageUiOperation9
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = 0
  rageUiOperation9 = localValue1
  localValue1 = DoScreenFadeIn
  localValue2 = 0
  localValue1(localValue2)
  localValue1 = ClearFocus
  localValue1()
end
eventHandler5 = RegisterNetEvent
eventHandler6 = "7444109bf3"
-- Beginner: this function handles network event "7444109bf3".

-- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: localValue1, localValue2) ===
function stateFlag16(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator
  localValue3 = rageUiOperation9
  if 0 ~= localValue3 then
    localValue3 = DestroyCam
    localValue4 = rageUiOperation9
    localValue5 = false
    localValue3(localValue4, localValue5)
    return
  end
  localValue3 = DoScreenFadeOut
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = CreateCam
  localValue4 = "DEFAULT_SCRIPTED_CAMERA"
  localValue5 = true
  -- Beginner: result below is cameraHandle.
  localValue3 = localValue3(localValue4, localValue5)
  rageUiOperation9 = localValue3
  localValue3 = SetCamActive
  localValue4 = rageUiOperation9
  localValue5 = true
  localValue3(localValue4, localValue5)
  localValue3 = SetCamCoord
  localValue4 = rageUiOperation9
  localValue5 = localValue1.x
  localValue6 = localValue1.y
  localValue7 = localValue1.z
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = RenderScriptCams
  localValue4 = true
  localValue5 = false
  localValue6 = 0
  localValue7 = true
  iterator2 = true
  localValue3(localValue4, localValue5, localValue6, localValue7, iterator2)
  localValue3 = SetFocusPosAndVel
  localValue4 = localValue1.x
  localValue5 = localValue1.y
  localValue6 = localValue1.z
  localValue7 = 0.0
  iterator2 = 0.0
  tableHelper2 = 0.0
  localValue3(localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2)
  localValue3 = RageUI
  localValue3 = localValue3.CloseAll
  localValue3()
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  while true do
    localValue4 = NetworkDoesEntityExistWithNetworkId
    localValue5 = localValue2
    localValue4 = localValue4(localValue5)
    if localValue4 then
      break
    end
    localValue4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue4 = localValue4()
    localValue4 = localValue4 - localValue3
    localValue5 = 5000
    if localValue4 > localValue5 then
      localValue4 = rageUiOperation10
      localValue4()
      localValue4 = notify
      localValue5 = "~r~Can not view dashcam of vehicle."
      -- Beginner: Show a notification to the player.
      localValue4(localValue5)
      return
    end
    localValue4 = Citizen
    localValue4 = localValue4.Wait
    localValue5 = 0
    localValue4(localValue5)
  end
  localValue4 = NetworkGetEntityFromNetworkId
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  if 0 == localValue4 then
    localValue5 = rageUiOperation10
    localValue5()
    localValue5 = notify
    localValue6 = "~r~Can not view dashcam of vehicle."
    -- Beginner: Show a notification to the player.
    localValue5(localValue6)
    return
  end
  localValue5 = DoScreenFadeIn
  localValue6 = 0
  localValue5(localValue6)
  localValue5 = notify
  localValue6 = "~g~Viewing your vehicle dashcam."
  -- Beginner: Show a notification to the player.
  localValue5(localValue6)
  while true do
    localValue5 = DoesEntityExist
    localValue6 = localValue4
    localValue5 = localValue5(localValue6)
    if not localValue5 then
      break
    end
    localValue5 = IsCamActive
    localValue6 = rageUiOperation9
    localValue5 = localValue5(localValue6)
    if not localValue5 then
      break
    end
    localValue5 = IsControlJustPressed
    localValue6 = 0
    localValue7 = 177
    localValue5 = localValue5(localValue6, localValue7)
    if localValue5 then
      break
    end
    localValue5 = GetWorldPositionOfEntityBone
    localValue6 = localValue4
    localValue7 = GetEntityBoneIndexByName
    iterator2 = localValue4
    tableHelper2 = "windscreen"
    localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator = localValue7(iterator2, tableHelper2)
    localValue5 = localValue5(localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator)
    localValue6 = GetEntityRotation
    localValue7 = localValue4
    iterator2 = 2
    localValue6 = localValue6(localValue7, iterator2)
    localValue7 = SetCamCoord
    iterator2 = rageUiOperation9
    tableHelper2 = localValue5.x
    dataCollection25 = localValue5.y
    workingValue2 = localValue5.z
    localValue7(iterator2, tableHelper2, dataCollection25, workingValue2)
    localValue7 = SetFocusPosAndVel
    iterator2 = localValue5.x
    tableHelper2 = localValue5.y
    dataCollection25 = localValue5.z
    workingValue2 = 0.0
    dataCollection = 0.0
    iterator = 0.0
    localValue7(iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator)
    localValue7 = SetCamRot
    iterator2 = rageUiOperation9
    tableHelper2 = localValue6.x
    dataCollection25 = localValue6.y
    workingValue2 = localValue6.z
    dataCollection = 2
    localValue7(iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection)
    localValue7 = Citizen
    localValue7 = localValue7.Wait
    iterator2 = 0
    localValue7(iterator2)
  end
  localValue5 = notify
  localValue6 = "~r~Stopped viewing your vehicle dashcam."
  -- Beginner: Show a notification to the player.
  localValue5(localValue6)
  localValue5 = RenderScriptCams
  localValue6 = false
  localValue7 = false
  iterator2 = 0
  tableHelper2 = false
  dataCollection25 = false
  localValue5(localValue6, localValue7, iterator2, tableHelper2, dataCollection25)
  localValue5 = DestroyCam
  localValue6 = rageUiOperation9
  localValue7 = false
  localValue5(localValue6, localValue7)
  localValue5 = 0
  rageUiOperation9 = localValue5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7444109bf3".
eventHandler5(eventHandler6, stateFlag16)
eventHandler5 = nil
eventHandler6 = RegisterNetEvent
stateFlag16 = "a30d55e751"
-- Beginner: this function handles network event "a30d55e751".

-- === HELPER FUNCTION (decompiler name: workingValue33; parameters: localValue1) ===
function workingValue33(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = eventHandler5
  if 0 ~= localValue2 then
    localValue2 = RemoveBlip
    localValue3 = eventHandler5
    localValue2(localValue3)
  end
  if localValue1 then
    localValue2 = AddBlipForCoord
    localValue3 = localValue1.x
    localValue4 = localValue1.y
    localValue5 = localValue1.z
    -- Beginner: result below is blipHandle.
    localValue2 = localValue2(localValue3, localValue4, localValue5)
    eventHandler5 = localValue2
    localValue2 = SetBlipSprite
    localValue3 = eventHandler5
    localValue4 = 56
    localValue2(localValue3, localValue4)
    localValue2 = SetBlipScale
    localValue3 = eventHandler5
    localValue4 = 1.0
    localValue2(localValue3, localValue4)
    localValue2 = SetBlipColour
    localValue3 = eventHandler5
    localValue4 = 2
    localValue2(localValue3, localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a30d55e751".
eventHandler6(stateFlag16, workingValue33)
eventHandler6 = 0
stateFlag16 = false
workingValue33 = _ENV
cmgOperation17 = "CMG"
workingValue33 = workingValue33[cmgOperation17]
cmgOperation17 = "inBiometricLockedVehicle"

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2
  localValue1 = stateFlag16
  return localValue1
end
workingValue33[cmgOperation17] = cmgOperation

-- === HELPER FUNCTION (decompiler name: workingValue33; parameters: none) ===
function workingValue33()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25
  localValue1 = false
  stateFlag16 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  localValue1, localValue2 = localValue1()
  if 0 ~= localValue1 and localValue2 then
    localValue3 = DecorGetBool
    localValue4 = localValue1
    localValue5 = "9d5712766f"
    localValue3 = localValue3(localValue4, localValue5)
    if localValue3 then
      localValue4 = CMG
      localValue4 = localValue4.getClientUserId
      -- Beginner: result below is userId.
      localValue4 = localValue4()
      localValue5 = Entity
      localValue6 = localValue1
      localValue5 = localValue5(localValue6)
      localValue5 = localValue5.state
      localValue5 = localValue5.biometricUsers
      localValue6 = DecorGetInt
      localValue7 = localValue1
      iterator2 = "ac76c9d452"
      localValue6 = localValue6(localValue7, iterator2)
      if localValue4 ~= localValue6 then
        if localValue5 then
          localValue7 = table
          localValue7 = localValue7.has
          iterator2 = localValue5
          tableHelper2 = localValue4
          localValue7 = localValue7(iterator2, tableHelper2)
          if localValue7 then
            goto continueAtStep138
          end
        end
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 32
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 33
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 34
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 35
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 71
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 72
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 87
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 88
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 129
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 130
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 107
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 108
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 109
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 110
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 111
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 112
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 350
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 351
        dataCollection25 = true
        localValue7(iterator2, tableHelper2, dataCollection25)
        localValue7 = SetVehicleRocketBoostPercentage
        iterator2 = localValue1
        tableHelper2 = 0.0
        localValue7(iterator2, tableHelper2)
        localValue7 = drawNativeText
        iterator2 = "This vehicle is locked biometrically to the owner."
        -- Beginner: Draw GTA-style text on screen.
        localValue7(iterator2)
        localValue7 = true
        stateFlag16 = localValue7
      end
    end
  end
  ::continueAtStep138::
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = GetIsTaskActive
  localValue5 = localValue3
  localValue6 = 160
  localValue4 = localValue4(localValue5, localValue6)
  if localValue4 then
    localValue4 = GetVehiclePedIsEntering
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if 0 ~= localValue4 then
      localValue5 = GetVehicleDoorLockStatus
      localValue6 = localValue4
      localValue5 = localValue5(localValue6)
      if 2 == localValue5 then
        eventHandler6 = localValue4
      elseif 1 == localValue5 then
        localValue6 = eventHandler6
        if localValue4 == localValue6 then
          localValue6 = ClearPedTasks
          localValue7 = localValue3
          localValue6(localValue7)
          localValue6 = 0
          eventHandler6 = localValue6
        end
      end
    end
  else
    localValue4 = 0
    eventHandler6 = localValue4
  end
end
cmgOperation17 = DecorRegister
cmgOperation = "9d5712766f"
backgroundThread = 2
cmgOperation17(cmgOperation, backgroundThread)
cmgOperation17 = _ENV
cmgOperation = "CMG"
cmgOperation17 = cmgOperation17[cmgOperation]
cmgOperation17 = cmgOperation17.createThreadOnTick
cmgOperation = workingValue33
backgroundThread = "Biometric Lock"
cmgOperation17(cmgOperation, backgroundThread)
cmgOperation17 = _ENV
cmgOperation = "CMG"
cmgOperation17 = cmgOperation17[cmgOperation]
cmgOperation = "setVehicleIdBiometricLock"

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1, localValue2, localValue3) ===
function backgroundThread(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7
  localValue4 = localValue2["21"]
  if localValue4 then
    localValue4 = DecorSetBool
    localValue5 = localValue1
    localValue6 = "9d5712766f"
    localValue7 = true
    localValue4(localValue5, localValue6, localValue7)
  end
  if localValue3 then
    localValue4 = #localValue3
    if localValue4 > 0 then
      localValue4 = false
      localValue5 = NetworkGetEntityIsNetworked
      localValue6 = localValue1
      localValue5 = localValue5(localValue6)
      if localValue5 then
        localValue5 = NetworkGetNetworkIdFromEntity
        localValue6 = localValue1
        localValue5 = localValue5(localValue6)
        if 0 ~= localValue5 then
          goto continueAtStep26
        end
      end
      localValue4 = true
      ::continueAtStep26::
      localValue5 = Citizen
      localValue5 = localValue5.CreateThread

      -- === HELPER FUNCTION: localValue6() ===
      function localValue6()
        local localValue12, localValue22, localValue32, localValue42, workingValue18
        localValue12 = Citizen
        localValue12 = localValue12.Wait
        localValue22 = localValue4
        if localValue22 then
          localValue22 = 2500
          if localValue22 then
            goto continueAtStep10
          end
        end
        localValue22 = 0
        ::continueAtStep10::
        localValue12(localValue22)
        localValue12 = NetworkGetNetworkIdFromEntity
        localValue22 = localValue1
        localValue12 = localValue12(localValue22)
        localValue22 = TriggerServerEvent
        localValue32 = "ee931fcf36"
        localValue42 = localValue12
        workingValue18 = localValue3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ee931fcf36".
        localValue22(localValue32, localValue42, workingValue18)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      localValue5(localValue6)
    end
  end
end
cmgOperation17[cmgOperation] = backgroundThread
cmgOperation17 = {}
cmgOperation = _ENV
backgroundThread = "Citizen"
cmgOperation = cmgOperation[backgroundThread]
backgroundThread = "CreateThread"
cmgOperation = cmgOperation[backgroundThread]

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection
  localValue1 = GetResourceKvpString
  localValue2 = "cmg_custom_vehicle_names"
  localValue1 = localValue1(localValue2)
  if localValue1 and "" ~= localValue1 then
    localValue2 = json
    localValue2 = localValue2.decode
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue3 = pairs
      localValue4 = localValue2
      localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
      for localValue7, iterator2 in localValue3, localValue4, localValue5, localValue6 do
        tableHelper2 = tonumber
        dataCollection25 = localValue7
        tableHelper2 = tableHelper2(dataCollection25)
        dataCollection25 = dataCollection12
        dataCollection25[tableHelper2] = iterator2
      end
    end
  end
  while true do
    localValue2 = pairs
    localValue3 = CMG
    localValue3 = localValue3.getAllVehicles
    localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection = localValue3()
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection)
    for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
      iterator2 = cmgOperation17
      iterator2 = iterator2[localValue7]
      if not iterator2 then
        iterator2 = DecorExistOn
        tableHelper2 = localValue7
        dataCollection25 = "6939027d97"
        iterator2 = iterator2(tableHelper2, dataCollection25)
        if iterator2 then
          iterator2 = DecorGetInt
          tableHelper2 = localValue7
          dataCollection25 = "6939027d97"
          iterator2 = iterator2(tableHelper2, dataCollection25)
          tableHelper2 = CMG
          tableHelper2 = tableHelper2.getVehicleSoundNameFromId
          dataCollection25 = iterator2
          tableHelper2 = tableHelper2(dataCollection25)
          dataCollection25 = ForceVehicleEngineAudio
          workingValue2 = localValue7
          dataCollection = tableHelper2
          dataCollection25(workingValue2, dataCollection)
          dataCollection25 = cmgOperation17
          workingValue2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          workingValue2 = workingValue2()
          dataCollection25[localValue7] = workingValue2
        end
      end
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 2000
    localValue2(localValue3)
  end
end
cmgOperation(backgroundThread)
cmgOperation = _ENV
backgroundThread = "exports"
cmgOperation = cmgOperation[backgroundThread]
backgroundThread = "hasAppliedEngineAudio"

-- === HELPER FUNCTION (decompiler name: number; parameters: localValue1) ===
function number(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = cmgOperation17
  localValue2 = localValue2[localValue1]
  localValue3 = localValue2 or localValue3
  if localValue2 then
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    localValue3 = localValue3 - localValue2
    localValue4 = 5000
    localValue3 = localValue3 > localValue4
  end
  return localValue3
end
cmgOperation(backgroundThread, number)
cmgOperation = _ENV
backgroundThread = "vector3"
cmgOperation = cmgOperation[backgroundThread]
backgroundThread = 0.0
number = 0.0
eventHandler = 0.0
cmgOperation = cmgOperation(backgroundThread, number, eventHandler)
backgroundThread = {}
number = _ENV
eventHandler = "Citizen"
number = number[eventHandler]
eventHandler = "CreateThread"
number = number[eventHandler]

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getPlayerVehicle
    localValue1, localValue2 = localValue1()
    localValue3 = CMG
    localValue3 = localValue3.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue3 = localValue3()
    if 0 ~= localValue1 and localValue2 then
      localValue4 = DecorGetInt
      localValue5 = localValue1
      localValue6 = "ac76c9d452"
      localValue4 = localValue4(localValue5, localValue6)
      localValue5 = CMG
      localValue5 = localValue5.getClientUserId
      -- Beginner: result below is userId.
      localValue5 = localValue5()
      if localValue4 == localValue5 then
        localValue4 = GetEntityModel
        localValue5 = localValue1
        -- Beginner: result below is modelHash.
        localValue4 = localValue4(localValue5)
        localValue5 = cmgOperation
        localValue5 = localValue5 - localValue3
        localValue5 = #localValue5
        if localValue5 < 120.0 then
          localValue6 = GetEntitySpeed
          localValue7 = localValue1
          -- Beginner: result below is speed.
          localValue6 = localValue6(localValue7)
          if localValue6 > 5.0 then
            localValue6 = backgroundThread
            localValue6 = localValue6[localValue4]
            if not localValue6 then
              localValue7 = {}
              localValue7.meters = 0.0
              localValue7.secondsInVehicle = 0
              localValue6 = localValue7
              localValue7 = backgroundThread
              localValue7[localValue4] = localValue6
            end
            localValue7 = localValue6.meters
            localValue7 = localValue7 + localValue5
            localValue6.meters = localValue7
            localValue7 = localValue6.secondsInVehicle
            localValue7 = localValue7 + 1
            localValue6.secondsInVehicle = localValue7
            localValue7 = localValue6.secondsInVehicle
            if localValue7 >= 30 then
              localValue7 = localValue6.meters
              if localValue7 > 50.0 then
                localValue7 = DecorGetInt
                iterator2 = localValue1
                tableHelper2 = "0a6cf607ed"
                localValue7 = localValue7(iterator2, tableHelper2)
                if localValue7 > 0 then
                  iterator2 = TriggerServerEvent
                  tableHelper2 = "589dcb122a"
                  dataCollection25 = localValue7
                  workingValue2 = localValue6.meters
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "589dcb122a".
                  iterator2(tableHelper2, dataCollection25, workingValue2)
                end
              end
              localValue6.meters = 0.0
              localValue6.secondsInVehicle = 0
            end
          end
        end
        cmgOperation = localValue3
      end
    end
    localValue4 = Citizen
    localValue4 = localValue4.Wait
    localValue5 = 1000
    localValue4(localValue5)
  end
end
number(eventHandler)

-- === HELPER FUNCTION (decompiler name: number; parameters: localValue1) ===
function number(localValue1)
  local localValue2, localValue3
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "number" == localValue2 and localValue1 >= 0 and localValue1 <= 50 then
    localValue2 = localValue1 / 100
    localValue3 = 1
    localValue2 = localValue3 - localValue2
    return localValue2
  end
  localValue2 = 1.0
  return localValue2
end
eventHandler = RegisterNetEvent
text = "1f270ab7bb"
-- Beginner: this function handles network event "1f270ab7bb".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = TaskLookAtEntity
  localValue5 = localValue3
  localValue6 = localValue1
  localValue7 = -1
  iterator2 = 2048
  tableHelper2 = 3
  localValue4(localValue5, localValue6, localValue7, iterator2, tableHelper2)
  localValue4 = Citizen
  localValue4 = localValue4.Wait
  localValue5 = 3000
  localValue4(localValue5)
  localValue4 = number
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  localValue5 = math
  localValue5 = localValue5.max
  localValue6 = 1000
  localValue7 = math
  localValue7 = localValue7.floor
  iterator2 = 12000 * localValue4
  localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper = localValue7(iterator2)
  localValue5 = localValue5(localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper)
  localValue6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue6 = localValue6()
  localValue7 = Citizen
  localValue7 = localValue7.CreateThreadNow

  -- === HELPER FUNCTION: iterator2() ===
  function iterator2()
    local localValue12, localValue22, localValue32, localValue42, workingValue18
    localValue12 = CMG
    localValue12 = localValue12.startCircularProgressBar
    localValue22 = "Repairing vehicle"
    localValue32 = localValue5
    localValue42 = nil

    -- === HELPER FUNCTION (decompiler name: workingValue18; parameters: none) ===
    function workingValue18()
      local localValue13, localValue23
    end
    localValue12(localValue22, localValue32, localValue42, workingValue18)
  end
  localValue7(iterator2)
  localValue7 = Citizen
  localValue7 = localValue7.Wait
  iterator2 = 0
  localValue7(iterator2)
  while true do
    localValue7 = GetEntityHealth
    iterator2 = localValue3
    -- Beginner: result below is health.
    localValue7 = localValue7(iterator2)
    if not (localValue7 > 102) then
      break
    end
    localValue7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue7 = localValue7()
    localValue7 = localValue7 - localValue6
    if not (localValue5 > localValue7) then
      break
    end
    localValue7 = IsEntityPlayingAnim
    iterator2 = localValue3
    tableHelper2 = "mini@repair"
    dataCollection25 = "fixing_a_ped"
    workingValue2 = 3
    localValue7 = localValue7(iterator2, tableHelper2, dataCollection25, workingValue2)
    if not localValue7 then
      localValue7 = CMG
      localValue7 = localValue7.loadAnimDict
      iterator2 = "mini@repair"
      -- Beginner: Load a GTA animation dictionary before using it.
      localValue7(iterator2)
      localValue7 = TaskPlayAnim
      iterator2 = localValue3
      tableHelper2 = "mini@repair"
      dataCollection25 = "fixing_a_ped"
      workingValue2 = 1.0
      dataCollection = 8.0
      iterator = -1
      stringHelper = 49
      workingValue7 = 1.0
      stringHelper2 = false
      cmgOperation3 = false
      tableHelper = false
      -- Beginner: Play an animation on a ped.
      localValue7(iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper)
      localValue7 = RemoveAnimDict
      iterator2 = "mini@repair"
      localValue7(iterator2)
    end
    localValue7 = Citizen
    localValue7 = localValue7.Wait
    iterator2 = 0
    localValue7(iterator2)
  end
  localValue7 = CMG
  localValue7 = localValue7.stopCircularProgressBar
  localValue7()
  localValue7 = ClearPedTasksImmediately
  iterator2 = localValue3
  localValue7(iterator2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1f270ab7bb".
eventHandler(text, text2)
eventHandler = RegisterNetEvent
text = "68cd4709a6"
-- Beginner: this function handles network event "68cd4709a6".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue3 = NetworkDoesNetworkIdExist
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = NetworkDoesEntityExistWithNetworkId
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = NetworkGetEntityFromNetworkId
      localValue4 = localValue1
      localValue3 = localValue3(localValue4)
      if 0 ~= localValue3 then
        localValue4 = NetworkHasControlOfEntity
        localValue5 = localValue3
        localValue4 = localValue4(localValue5)
        if localValue4 then
          localValue4 = SetVehicleDoorOpen
          localValue5 = localValue3
          localValue6 = 4
          localValue7 = false
          iterator2 = false
          localValue4(localValue5, localValue6, localValue7, iterator2)
          localValue4 = FreezeEntityPosition
          localValue5 = localValue3
          localValue6 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          localValue4(localValue5, localValue6)
        end
        localValue4 = number
        localValue5 = localValue2
        localValue4 = localValue4(localValue5)
        localValue5 = math
        localValue5 = localValue5.max
        localValue6 = 1000
        localValue7 = math
        localValue7 = localValue7.floor
        iterator2 = 12000 * localValue4
        localValue7, iterator2 = localValue7(iterator2)
        localValue5 = localValue5(localValue6, localValue7, iterator2)
        localValue6 = Citizen
        localValue6 = localValue6.Wait
        localValue7 = 3000 + localValue5
        localValue6(localValue7)
        localValue6 = NetworkHasControlOfEntity
        localValue7 = localValue3
        localValue6 = localValue6(localValue7)
        if localValue6 then
          localValue6 = FreezeEntityPosition
          localValue7 = localValue3
          iterator2 = false
          -- Beginner: Freeze or unfreeze an entity in place.
          localValue6(localValue7, iterator2)
          localValue6 = SetVehicleEngineHealth
          localValue7 = localValue3
          iterator2 = 9999
          localValue6(localValue7, iterator2)
          localValue6 = SetVehiclePetrolTankHealth
          localValue7 = localValue3
          iterator2 = 9999
          localValue6(localValue7, iterator2)
          localValue6 = CMG
          localValue6 = localValue6.setVehicleFixedPreservingFuel
          localValue7 = localValue3
          localValue6(localValue7)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "68cd4709a6".
eventHandler(text, text2)
eventHandler = RegisterNetEvent
text = "a37e8d69f4"
-- Beginner: this function handles network event "a37e8d69f4".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue2 = CMG
  localValue2 = localValue2.getClosestVehicle
  localValue3 = 5.0
  localValue2 = localValue2(localValue3)
  if localValue2 and 0 ~= localValue2 then
    localValue3 = GetPedInVehicleSeat
    localValue4 = localValue2
    localValue5 = -1
    localValue3 = localValue3(localValue4, localValue5)
    if 0 == localValue3 then
      localValue4 = NetworkGetNetworkIdFromEntity
      localValue5 = localValue2
      localValue4 = localValue4(localValue5)
      if 0 ~= localValue4 then
        localValue5 = TriggerServerEvent
        localValue6 = "a37e8d69f4"
        localValue7 = localValue4
        iterator2 = localValue1
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a37e8d69f4".
        localValue5(localValue6, localValue7, iterator2)
      end
    else
      localValue4 = notify
      localValue5 = "~r~Can not repair vehicle with a person in the driver seat."
      -- Beginner: Show a notification to the player.
      localValue4(localValue5)
    end
  else
    localValue3 = notify
    localValue4 = "~r~No vehicle nearby to repair."
    localValue3(localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a37e8d69f4".
eventHandler(text, text2)
eventHandler = RegisterNetEvent
text = "e271da7ccf"
-- Beginner: this function handles network event "e271da7ccf".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9
  localValue3 = NetworkDoesNetworkIdExist
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue3 = NetworkGetEntityFromNetworkId
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    return
  end
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = TaskLookAtEntity
  localValue6 = localValue4
  localValue7 = localValue3
  iterator2 = -1
  tableHelper2 = 2048
  dataCollection25 = 3
  localValue5(localValue6, localValue7, iterator2, tableHelper2, dataCollection25)
  localValue5 = Citizen
  localValue5 = localValue5.Wait
  localValue6 = 3000
  localValue5(localValue6)
  localValue5 = number
  localValue6 = localValue2
  localValue5 = localValue5(localValue6)
  localValue6 = math
  localValue6 = localValue6.max
  localValue7 = 1000
  iterator2 = math
  iterator2 = iterator2.floor
  tableHelper2 = 28000 * localValue5
  iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9 = iterator2(tableHelper2)
  localValue6 = localValue6(localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9)
  localValue7 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue7 = localValue7()
  iterator2 = Citizen
  iterator2 = iterator2.CreateThreadNow

  -- === HELPER FUNCTION: tableHelper2() ===
  function tableHelper2()
    local localValue12, localValue22, localValue32, localValue42, workingValue18
    localValue12 = CMG
    localValue12 = localValue12.startCircularProgressBar
    localValue22 = "Repairing vehicle"
    localValue32 = localValue6
    localValue42 = nil

    -- === HELPER FUNCTION (decompiler name: workingValue18; parameters: none) ===
    function workingValue18()
      local localValue13, localValue23
    end
    localValue12(localValue22, localValue32, localValue42, workingValue18)
  end
  iterator2(tableHelper2)
  iterator2 = Citizen
  iterator2 = iterator2.Wait
  tableHelper2 = 0
  iterator2(tableHelper2)
  while true do
    iterator2 = GetEntityHealth
    tableHelper2 = localValue4
    -- Beginner: result below is health.
    iterator2 = iterator2(tableHelper2)
    if not (iterator2 > 102) then
      break
    end
    iterator2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    iterator2 = iterator2()
    iterator2 = iterator2 - localValue7
    if not (localValue6 > iterator2) then
      break
    end
    iterator2 = IsEntityPlayingAnim
    tableHelper2 = localValue4
    dataCollection25 = "mini@repair"
    workingValue2 = "fixing_a_ped"
    dataCollection = 3
    iterator2 = iterator2(tableHelper2, dataCollection25, workingValue2, dataCollection)
    if not iterator2 then
      iterator2 = CMG
      iterator2 = iterator2.loadAnimDict
      tableHelper2 = "mini@repair"
      -- Beginner: Load a GTA animation dictionary before using it.
      iterator2(tableHelper2)
      iterator2 = TaskPlayAnim
      tableHelper2 = localValue4
      dataCollection25 = "mini@repair"
      workingValue2 = "fixing_a_ped"
      dataCollection = 1.0
      iterator = 8.0
      stringHelper = -1
      workingValue7 = 49
      stringHelper2 = 1.0
      cmgOperation3 = false
      tableHelper = false
      workingValue9 = false
      -- Beginner: Play an animation on a ped.
      iterator2(tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9)
      iterator2 = RemoveAnimDict
      tableHelper2 = "mini@repair"
      iterator2(tableHelper2)
    end
    iterator2 = Citizen
    iterator2 = iterator2.Wait
    tableHelper2 = 0
    iterator2(tableHelper2)
  end
  iterator2 = CMG
  iterator2 = iterator2.stopCircularProgressBar
  iterator2()
  iterator2 = ClearPedTasksImmediately
  tableHelper2 = localValue4
  iterator2(tableHelper2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e271da7ccf".
eventHandler(text, text2)
eventHandler = RegisterNetEvent
text = "3afdeeb96c"
-- Beginner: this function handles network event "3afdeeb96c".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, iterator2
  localValue3 = NetworkDoesNetworkIdExist
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue3 = NetworkGetEntityFromNetworkId
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    return
  end
  localValue4 = NetworkHasControlOfEntity
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = SetVehicleDoorOpen
    localValue5 = localValue3
    localValue6 = 4
    localValue7 = false
    iterator2 = false
    localValue4(localValue5, localValue6, localValue7, iterator2)
    localValue4 = FreezeEntityPosition
    localValue5 = localValue3
    localValue6 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue4(localValue5, localValue6)
  end
  localValue4 = number
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  localValue5 = math
  localValue5 = localValue5.max
  localValue6 = 1000
  localValue7 = math
  localValue7 = localValue7.floor
  iterator2 = 28000 * localValue4
  localValue7, iterator2 = localValue7(iterator2)
  localValue5 = localValue5(localValue6, localValue7, iterator2)
  localValue6 = Citizen
  localValue6 = localValue6.Wait
  localValue7 = 3000 + localValue5
  localValue6(localValue7)
  localValue6 = NetworkHasControlOfEntity
  localValue7 = localValue3
  localValue6 = localValue6(localValue7)
  if localValue6 then
    localValue6 = FreezeEntityPosition
    localValue7 = localValue3
    iterator2 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue6(localValue7, iterator2)
    localValue6 = SetVehicleEngineHealth
    localValue7 = localValue3
    iterator2 = 9999
    localValue6(localValue7, iterator2)
    localValue6 = SetVehiclePetrolTankHealth
    localValue7 = localValue3
    iterator2 = 9999
    localValue6(localValue7, iterator2)
    localValue6 = CMG
    localValue6 = localValue6.setVehicleFixedPreservingFuel
    localValue7 = localValue3
    localValue6(localValue7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3afdeeb96c".
eventHandler(text, text2)
eventHandler = RegisterNetEvent
text = "82540e2ca1"
-- Beginner: this function handles network event "82540e2ca1".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  workingValue19 = localValue1
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  localValue5 = "garages"
  localValue6 = "paymentplanoffer"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue4 = true
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "82540e2ca1".
eventHandler(text, text2)
eventHandler = RegisterNetEvent
text = "e728b25029"
-- Beginner: this function handles network event "e728b25029".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2
  localValue2 = workingValue11
  if localValue2 then
    localValue2 = workingValue11.vehicleName
    if localValue2 then
      localValue2 = localValue1.vehicleName
      if not localValue2 then
        localValue2 = workingValue11.vehicleName
        localValue1.vehicleName = localValue2
      end
    end
  end
  workingValue11 = localValue1
end
eventHandler(text, text2)
eventHandler = _ENV
text = "RMenu"
eventHandler = eventHandler[text]
eventHandler = eventHandler.Add
text = "garages"
text2 = "inactivity"
rageUiOperation = _ENV
rageUiOperation2 = "RageUI"
rageUiOperation = rageUiOperation[rageUiOperation2]
rageUiOperation = rageUiOperation.CreateMenu
rageUiOperation2 = ""
text3 = "Vehicle Inactivity"
rageUiOperation3 = _ENV
rageUiOperation4 = "CMG"
rageUiOperation3 = rageUiOperation3[rageUiOperation4]
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = _ENV
cmgOperation2 = "CMG"
rageUiOperation4 = rageUiOperation4[cmgOperation2]
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
cmgOperation2 = "cmg_garageui"
text5 = "cmg_garageui"
rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5 = rageUiOperation(rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
eventHandler(text, text2, rageUiOperation, rageUiOperation2, text3, rageUiOperation3, rageUiOperation4, cmgOperation2, text5)
eventHandler = nil
text = nil
text2 = _ENV
rageUiOperation = "RageUI"
text2 = text2[rageUiOperation]
text2 = text2.CreateWhile
rageUiOperation = 1.0
rageUiOperation2 = _ENV
text3 = "RMenu"
rageUiOperation2 = rageUiOperation2[text3]
rageUiOperation3 = "Get"
text3 = rageUiOperation2
rageUiOperation2 = rageUiOperation2[rageUiOperation3]
rageUiOperation3 = "garages"
rageUiOperation4 = "inactivity"
rageUiOperation2 = rageUiOperation2(text3, rageUiOperation3, rageUiOperation4)
text3 = nil

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "garages"
  localValue5 = "inactivity"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, localValue42, workingValue18, stateFlag11
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~The vehicle '"
    localValue32 = eventHandler
    localValue42 = "' is inactive."
    localValue22 = localValue22 .. localValue32 .. localValue42
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~This occurs to vehicles which aren't used in 1 month."
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~This improves load times and increases performance."
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~To make the vehicle active click the button below."
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~The vehicle will be spawnable from the next restart."
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~g~Activate Vehicle"
    localValue32 = ""
    localValue42 = {}
    localValue42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue18 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag11(localValue13, localValue23, localValue33)
      local vehicle2, cmgOperation6, stateFlag12
      if localValue33 then
        vehicle2 = TriggerServerEvent
        cmgOperation6 = "9b0f552679"
        stateFlag12 = text
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9b0f552679".
        vehicle2(cmgOperation6, stateFlag12)
        vehicle2 = RageUI
        vehicle2 = vehicle2.CloseAll
        vehicle2()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue42, workingValue18, stateFlag11)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
end
text2(rageUiOperation, rageUiOperation2, text3, rageUiOperation3)
text2 = RegisterNetEvent
rageUiOperation = "a4cc02a91b"
-- Beginner: this function handles network event "a4cc02a91b".

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1, localValue2) ===
function rageUiOperation2(localValue1, localValue2)
  dataCollection10.income = localValue1
  dataCollection10.outcome = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a4cc02a91b".
text2(rageUiOperation, rageUiOperation2)
text2 = RegisterNetEvent
rageUiOperation = "41a06d8fbd"
-- Beginner: this function handles network event "41a06d8fbd".

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1, localValue2) ===
function rageUiOperation2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  eventHandler = localValue1
  text = localValue2
  localValue3 = RageUI
  localValue3 = localValue3.Visible
  localValue4 = RMenu
  localValue5 = localValue4
  localValue4 = localValue4.Get
  localValue6 = "garages"
  localValue7 = "inactivity"
  -- Beginner: result below is menu.
  localValue4 = localValue4(localValue5, localValue6, localValue7)
  localValue5 = true
  localValue3(localValue4, localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "41a06d8fbd".
text2(rageUiOperation, rageUiOperation2)
text2 = RegisterNetEvent
rageUiOperation = "88f392bb4d"
-- Beginner: this function handles network event "88f392bb4d".

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2
  localValue1 = RageUI
  localValue1 = localValue1.IsAnyMenuOfTypeVisible
  localValue2 = "garages"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.CloseAll
    localValue1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "88f392bb4d".
text2(rageUiOperation, rageUiOperation2)
text2 = RegisterNetEvent
rageUiOperation = "2648b1efcf"
-- Beginner: this function handles network event "2648b1efcf".

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1) ===
function rageUiOperation2(localValue1)
  local localValue2
  dataCollection13 = localValue1
end
text2(rageUiOperation, rageUiOperation2)
-- Beginner: this function handles network event "2648b1efcf".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection
  localValue2 = "Not Set"
  localValue3 = DecorGetInt
  localValue4 = localValue1
  localValue5 = "ac76c9d452"
  localValue3 = localValue3(localValue4, localValue5)
  if localValue3 > 0 then
    localValue4 = tostring
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    localValue2 = localValue4
  end
  localValue4 = GetEntityModel
  localValue5 = localValue1
  -- Beginner: result below is modelHash.
  localValue4 = localValue4(localValue5)
  localValue5 = CMG
  localValue5 = localValue5.getVehicleIdFromModel
  localValue6 = localValue4
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    localValue6 = tostring
    localValue7 = localValue4
    localValue6 = localValue6(localValue7)
    localValue5 = localValue6
  end
  localValue6 = "Not Set"
  localValue7 = DecorGetInt
  iterator2 = localValue1
  tableHelper2 = "0a6cf607ed"
  localValue7 = localValue7(iterator2, tableHelper2)
  if localValue7 > 0 then
    iterator2 = tostring
    tableHelper2 = localValue7
    iterator2 = iterator2(tableHelper2)
    localValue6 = iterator2
  end
  iterator2 = string
  iterator2 = iterator2.format
  tableHelper2 = [[
UserID: %s
Model: %s
UUID: %s]]
  dataCollection25 = localValue2
  workingValue2 = localValue5
  dataCollection = localValue6
  return iterator2(tableHelper2, dataCollection25, workingValue2, dataCollection)
end
rageUiOperation = _ENV
rageUiOperation2 = "CMG"
rageUiOperation = rageUiOperation[rageUiOperation2]
rageUiOperation2 = "registerDevMenuEntityEditor"
rageUiOperation = rageUiOperation[rageUiOperation2]
rageUiOperation2 = "Garages"
text3 = "vehicle"
rageUiOperation3 = text2

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2
end
rageUiOperation(rageUiOperation2, text3, rageUiOperation3, rageUiOperation4)
rageUiOperation = _ENV
rageUiOperation2 = "CMG"
rageUiOperation = rageUiOperation[rageUiOperation2]
rageUiOperation2 = "canVehicleBeSold"

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3
  localValue2 = number9.whitelisted
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = localValue2.blockSelling
    if localValue3 then
      localValue3 = false
      return localValue3
    end
  end
  localValue3 = true
  return localValue3
end
rageUiOperation[rageUiOperation2] = text3
rageUiOperation = _ENV
rageUiOperation2 = "CMG"
rageUiOperation = rageUiOperation[rageUiOperation2]
rageUiOperation2 = "canVehicleBeRented"

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3
  localValue2 = number9.whitelisted
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = localValue2.blockRenting
    if localValue3 then
      localValue3 = false
      return localValue3
    end
  end
  localValue3 = true
  return localValue3
end
rageUiOperation[rageUiOperation2] = text3
rageUiOperation = _ENV
rageUiOperation2 = "CMG"
rageUiOperation = rageUiOperation[rageUiOperation2]
rageUiOperation2 = "isVehicleRemoteControlled"

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2
  localValue2 = number9.remoteControlledModels
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue2 = false
  end
  return localValue2
end
rageUiOperation[rageUiOperation2] = text3
rageUiOperation = _ENV
rageUiOperation2 = "CMG"
rageUiOperation = rageUiOperation[rageUiOperation2]
rageUiOperation2 = "registerDevMenuState"
rageUiOperation = rageUiOperation[rageUiOperation2]
rageUiOperation2 = "Garages"
text3 = {}
rageUiOperation3 = "drawVehicleModNames"
rageUiOperation4 = false
text3[rageUiOperation3] = rageUiOperation4
rageUiOperation3 = "drawHeadlightDebug"
rageUiOperation4 = false
text3[rageUiOperation3] = rageUiOperation4
rageUiOperation3 = "drawNearbyNodes"
rageUiOperation4 = false
text3[rageUiOperation3] = rageUiOperation4
rageUiOperation = rageUiOperation(rageUiOperation2, text3)
rageUiOperation2 = _ENV
text3 = "CMG"
rageUiOperation2 = rageUiOperation2[text3]
text3 = "registerDevMenuItems"
rageUiOperation2 = rageUiOperation2[text3]
text3 = "Garages"

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Upload Current Vehicle Mods"
  localValue3 = "Uploads the mods for the vehicle to the server."
  localValue4 = true

  -- === HELPER FUNCTION: localValue5(localValue12, localValue22, localValue32) ===
  function localValue5(localValue12, localValue22, localValue32)
    local localValue42, workingValue18, stateFlag11, stateFlag13
    if localValue32 then
      localValue42 = CMG
      localValue42 = localValue42.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      localValue42 = localValue42()
      if 0 == localValue42 then
        workingValue18 = notify
        stateFlag11 = "~r~You must be in a vehicle to use this."
        -- Beginner: Show a notification to the player.
        workingValue18(stateFlag11)
      else
        workingValue18 = rageUiOperation8
        stateFlag11 = localValue42
        stateFlag13 = false
        workingValue18(stateFlag11, stateFlag13)
      end
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Draw Vehicle Mod Names"
  localValue3 = "Displays current vehicle mods on the screen"
  localValue4 = rageUiOperation.drawVehicleModNames
  localValue5 = {}

  -- === HELPER FUNCTION: localValue6(localValue12, localValue22, localValue32, localValue42) ===
  function localValue6(localValue12, localValue22, localValue32, localValue42)
    rageUiOperation.drawVehicleModNames = localValue42
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Draw Headlight Debug"
  localValue3 = "Displays debug information for headlights"
  localValue4 = rageUiOperation.drawHeadlightDebug
  localValue5 = {}

  -- === HELPER FUNCTION: localValue6(localValue12, localValue22, localValue32, localValue42) ===
  function localValue6(localValue12, localValue22, localValue32, localValue42)
    rageUiOperation.drawHeadlightDebug = localValue42
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Draw Nearby Nodes"
  localValue3 = "Draws Nearby Nodes"
  localValue4 = rageUiOperation.drawNearbyNodes
  localValue5 = {}

  -- === HELPER FUNCTION: localValue6(localValue12, localValue22, localValue32, localValue42) ===
  function localValue6(localValue12, localValue22, localValue32, localValue42)
    rageUiOperation.drawNearbyNodes = localValue42
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
end
rageUiOperation2(text3, rageUiOperation3)
rageUiOperation2 = _ENV
text3 = "CMG"
rageUiOperation2 = rageUiOperation2[text3]
text3 = "registerDevMenuThread"
rageUiOperation2 = rageUiOperation2[text3]
text3 = "Garages"

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6, workingValue13, mathHelper, number7, number8, stateFlag7, stateFlag8, stateFlag9
  localValue1 = rageUiOperation.drawVehicleModNames
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue1 = localValue1()
    if 0 ~= localValue1 then
      localValue2 = rageUiOperation8
      localValue3 = localValue1
      localValue4 = true
      localValue2(localValue3, localValue4)
    end
  end
  localValue1 = rageUiOperation.drawNearbyNodes
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue1 = localValue1()
    localValue2 = 1
    localValue3 = 50
    localValue4 = 1
    for localValue5 = localValue2, localValue3, localValue4 do
      localValue6 = GetNthClosestVehicleNodeWithHeading
      localValue7 = localValue1.x
      iterator2 = localValue1.y
      tableHelper2 = localValue1.z
      dataCollection25 = localValue5
      workingValue2 = nil
      dataCollection = 0.0
      iterator = 0
      stringHelper = 1
      workingValue7 = 3.0
      stringHelper2 = 0.0
      localValue6, localValue7, iterator2 = localValue6(localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2)
      if localValue6 then
        tableHelper2 = vector3
        dataCollection25 = 0.0
        workingValue2 = 0.0
        dataCollection = 0.2
        tableHelper2 = tableHelper2(dataCollection25, workingValue2, dataCollection)
        localValue7 = localValue7 + tableHelper2
        tableHelper2 = DrawMarker
        dataCollection25 = 28
        workingValue2 = localValue7.x
        dataCollection = localValue7.y
        iterator = localValue7.z
        stringHelper = 0.0
        workingValue7 = 0.0
        stringHelper2 = 0.0
        cmgOperation3 = 0.0
        tableHelper = 0.0
        workingValue9 = 0.0
        heading = 1.5
        workingValue10 = 1.5
        cmgOperation5 = 1.5
        number5 = 255
        vehicle = 0
        stringHelper3 = 0
        number6 = 100
        workingValue13 = false
        mathHelper = false
        number7 = 2
        number8 = false
        stateFlag7 = nil
        stateFlag8 = nil
        stateFlag9 = false
        tableHelper2(dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper, workingValue9, heading, workingValue10, cmgOperation5, number5, vehicle, stringHelper3, number6, workingValue13, mathHelper, number7, number8, stateFlag7, stateFlag8, stateFlag9)
        tableHelper2 = CMG
        tableHelper2 = tableHelper2.drawHeadingFromPoint
        dataCollection25 = localValue7
        workingValue2 = math
        workingValue2 = workingValue2.rad
        dataCollection = iterator2
        workingValue2 = workingValue2(dataCollection)
        dataCollection = 5.0
        tableHelper2(dataCollection25, workingValue2, dataCollection)
        tableHelper2 = CMG
        tableHelper2 = tableHelper2.DrawText3D
        dataCollection25 = localValue7
        workingValue2 = tostring
        dataCollection = localValue5
        workingValue2 = workingValue2(dataCollection)
        dataCollection = 0.5
        tableHelper2(dataCollection25, workingValue2, dataCollection)
      end
    end
  end
end
rageUiOperation2(text3, rageUiOperation3)
rageUiOperation2 = 0
text3 = false

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  localValue1, localValue2 = localValue1()
  if 0 == localValue1 or not localValue2 then
    localValue3 = false
    text3 = localValue3
    return
  end
  localValue3 = GetVehicleLightsState
  localValue4 = localValue1
  localValue3, localValue4, localValue5 = localValue3(localValue4)
  if 1 == localValue5 then
    localValue6 = true
    if localValue6 then
      goto continueAtStep20
      localValue5 = localValue6 or localValue5
    end
  end
  localValue5 = false
  ::continueAtStep20::
  localValue6 = rageUiOperation.drawHeadlightDebug
  if localValue6 then
    localValue6 = CMG
    localValue6 = localValue6.drawDebugText
    localValue7 = "---------- Headlights Fix ----------"
    localValue6(localValue7)
    localValue6 = CMG
    localValue6 = localValue6.drawDebugText
    localValue7 = "Valid: %s On: %s Full Bean: %s"
    iterator2 = localValue3
    tableHelper2 = localValue4
    dataCollection25 = localValue5
    localValue6(localValue7, iterator2, tableHelper2, dataCollection25)
    localValue6 = CMG
    localValue6 = localValue6.drawDebugText
    localValue7 = "Stored Full Beam: %s"
    iterator2 = text3
    localValue6(localValue7, iterator2)
  end
  localValue6 = IsControlJustReleased
  localValue7 = 0
  iterator2 = 74
  localValue6 = localValue6(localValue7, iterator2)
  if localValue6 then
    localValue6 = IsVehicleEngineOn
    localValue7 = localValue1
    localValue6 = localValue6(localValue7)
    if localValue6 then
      localValue6 = GetFrameCount
      localValue6 = localValue6()
      rageUiOperation2 = localValue6
    end
  end
  localValue6 = text3
  if localValue6 ~= localValue5 then
    localValue6 = rageUiOperation2
    localValue7 = GetFrameCount
    localValue7 = localValue7()
    localValue7 = localValue7 - 1
    if localValue6 == localValue7 then
      text3 = localValue5
      if localValue5 then
        localValue6 = SetVehicleFullbeam
        localValue7 = localValue1
        iterator2 = true
        localValue6(localValue7, iterator2)
        localValue6 = SetVehicleLights
        localValue7 = localValue1
        iterator2 = 3
        localValue6(localValue7, iterator2)
      end
    end
  end
end
rageUiOperation4 = _ENV
cmgOperation2 = "CMG"
rageUiOperation4 = rageUiOperation4[cmgOperation2]
rageUiOperation4 = rageUiOperation4.createThreadOnTick
cmgOperation2 = rageUiOperation3
text5 = "Headlights Fix"
rageUiOperation4(cmgOperation2, text5)
rageUiOperation4 = _ENV
cmgOperation2 = "Citizen"
rageUiOperation4 = rageUiOperation4[cmgOperation2]
cmgOperation2 = "CreateThread"
rageUiOperation4 = rageUiOperation4[cmgOperation2]

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2
  localValue1 = Wait
  localValue2 = 1000
  localValue1(localValue2)
  localValue1 = LoadResourceFile
  localValue2 = "CMGVeh"
  localValue3 = "ci/streamfiles.json"
  localValue1 = localValue1(localValue2, localValue3)
  if localValue1 then
    localValue2 = json
    localValue2 = localValue2.decode
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = {}
    end
    localValue3 = pairs
    localValue4 = localValue2
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7 in localValue3, localValue4, localValue5, localValue6 do
      iterator2 = CMG
      iterator2 = iterator2.setStreamFilePreActivatedClient
      tableHelper2 = localValue7
      iterator2(tableHelper2)
    end
  end
end
rageUiOperation4(cmgOperation2)
rageUiOperation4 = _ENV
cmgOperation2 = "CMG"
rageUiOperation4 = rageUiOperation4[cmgOperation2]
cmgOperation2 = "registerStreamFileLoadedCallback"
rageUiOperation4 = rageUiOperation4[cmgOperation2]

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper
  localValue2 = pairs
  localValue3 = GetGamePool
  localValue4 = "CVehicle"
  localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper = localValue3(localValue4)
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, iterator2, tableHelper2, dataCollection25, workingValue2, dataCollection, iterator, stringHelper, workingValue7, stringHelper2, cmgOperation3, tableHelper)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = 0
    tableHelper2 = 49
    dataCollection25 = 1
    for workingValue2 = iterator2, tableHelper2, dataCollection25 do
      dataCollection = GetVehicleMod
      iterator = localValue7
      stringHelper = workingValue2
      dataCollection = dataCollection(iterator, stringHelper)
      if dataCollection >= 0 then
        iterator = GetModTextLabel
        stringHelper = localValue7
        workingValue7 = workingValue2
        stringHelper2 = dataCollection
        iterator = iterator(stringHelper, workingValue7, stringHelper2)
        stringHelper = localValue1[iterator]
        if stringHelper then
          stringHelper = SetVehicleMod
          workingValue7 = localValue7
          stringHelper2 = workingValue2
          cmgOperation3 = -1
          tableHelper = false
          stringHelper(workingValue7, stringHelper2, cmgOperation3, tableHelper)
          stringHelper = SetTimeout
          workingValue7 = 1000

          -- === HELPER FUNCTION: stringHelper2() ===
          function stringHelper2()
            local localValue12, localValue22, localValue32, localValue42, workingValue18
            localValue12 = SetVehicleMod
            localValue22 = localValue7
            localValue32 = workingValue2
            localValue42 = dataCollection
            workingValue18 = false
            localValue12(localValue22, localValue32, localValue42, workingValue18)
          end
          stringHelper(workingValue7, stringHelper2)
        end
      end
    end
  end
end
rageUiOperation4(cmgOperation2)
