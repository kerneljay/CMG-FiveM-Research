--[[
    Beginner Guide: cl_garages.lua
    ==============================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Exports:
      * 
cmgCall = cmgCall[threadCall]
threadCall = 

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Garages
    ========================

    File: cmg/prod/client/vehicles/cl_garages.lua
    Purpose: This file contains vehicle-related gameplay.

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

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/cfg_garages
      * cfg/cfg_lscustoms
      * cfg/cfg_vehicles

    Commands/command-like entries found:
      * /car
      * callanambulance
      * car
      * dv

    Network/hash identifiers found: 88
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * CMG:CMG.refreshPlayerGaragePermissions
      * ~y~You have outstanding debt on vehicle payment plans. Please ensure you make weekly payments.
      * ~r~Vehicle does not exist, if you believe this is an error contact a Car Dev on discord.
      * ~b~Rent Management Menu
      * ~b~Vehicles Rented Out

]]
local workValue, textValue10, numberValue9, textValue12, dataTable22, numberValue20, textValue15, textValue16, numberValue23, workValue34, textValue4, workValue4, workValue6, dataTable2, numberValue3, numberValue4, dataTable3, flag4, dataTable4, dataTable5, dataTable6, dataTable7, dataTable8, workValue11, workValue12, vector3Builder, dataTable9, dataTable10, dataTable11, flag5, flag6, dataTable12, dataTable13, workValue14, dataTable14, dataTable15, dataTable16, dataTable17, workValue16, numberValue13, numberValue14, dataTable18, dataTable19, dataTable20, dataTable21, numberValue15, numberValue16, numberValue17, numberValue18, flag10, workValue19, numberValue19, cmgCall7, cmgCall8, eventRegistration2, eventRegistration3, textValue13, workValue20, eventRegistration4, cmgCall9, textValue14, dataTable23, dataTable24, numberValue21, cmgCall10, workValue21, workValue22, workValue23, cmgCall11, numberValue22, workValue25, cmgCall13, workValue26, workValue27, workValue28, workValue29, workValue30, cmgCall14, cmgCall15, workValue31, textValue19, workValue32, textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5
workValue = DecorRegister
textValue10 = "ac76c9d452"
numberValue9 = 3
workValue(textValue10, numberValue9)
workValue = DecorRegister
textValue10 = "0a6cf607ed"
numberValue9 = 3
workValue(textValue10, numberValue9)
workValue = DecorRegister
textValue10 = "5f7af1c5ce"
numberValue9 = 3
workValue(textValue10, numberValue9)
workValue = DecorRegister
textValue10 = "6939027d97"
numberValue9 = 3
workValue(textValue10, numberValue9)
workValue = DecorRegister
textValue10 = "12da94aa7e"
numberValue9 = 3
workValue(textValue10, numberValue9)
workValue = RequestScriptAudioBank
textValue10 = "DLC_ALARM\\ALARMPACK_ONE"
numberValue9 = false
workValue(textValue10, numberValue9)
workValue = CMG
workValue = workValue.loadModule
textValue10 = "cfg/cfg_garages"
-- Beginner: result below is config.
workValue = workValue(textValue10)
textValue10 = CMG
textValue10 = textValue10.loadModule
numberValue9 = "cfg/cfg_lscustoms"
-- Beginner: result below is config.
textValue10 = textValue10(numberValue9)
numberValue9 = CMG
numberValue9 = numberValue9.loadModule
textValue12 = "cfg/cfg_vehicles"
-- Beginner: result below is config.
numberValue9 = numberValue9(textValue12)
textValue12 = 0
dataTable22 = {}
numberValue20 = 0
textValue15 = ""
textValue16 = ""
numberValue23 = 0
workValue34 = nil
textValue4 = ""
workValue4 = nil
workValue6 = nil
dataTable2 = {}
numberValue3 = 0
numberValue4 = 0
dataTable3 = {}
flag4 = false
dataTable4 = {}
dataTable5 = {}
dataTable6 = {}
dataTable7 = {}
dataTable8 = {}
workValue11 = nil
workValue12 = nil
vector3Builder = vector3
dataTable9 = 0.0
dataTable10 = 0.0
dataTable11 = 0.0
vector3Builder = vector3Builder(dataTable9, dataTable10, dataTable11)
dataTable9 = {}
dataTable10 = {}
dataTable10.income = 0
dataTable10.outcome = 0
dataTable11 = {}
flag5 = false
flag6 = false
dataTable12 = {}
dataTable13 = {}
workValue14 = nil
dataTable14 = {}
dataTable15 = {}
dataTable15[0] = ""
dataTable15[1] = ""
dataTable15[2] = ""
dataTable15[3] = ""
dataTable15[4] = ""
dataTable15[5] = ""
dataTable15[6] = "bnr34ffeng"
dataTable15[7] = "ta028viper"
dataTable15[8] = "rotary7"
dataTable15[9] = "lgcy12ferf40"
dataTable15[10] = "v6audiea839"
dataTable15[11] = "n55b30t0"
dataTable15[12] = "fordvoodoo"
dataTable15[13] = "ta103ninjah2r"
dataTable15[14] = "gb811s2"
dataTable15[15] = "gbarcherpro2"
dataTable15[16] = "gbargento2f"
dataTable15[17] = "gbargento7f"
dataTable15[18] = "gbargento7fs"
dataTable15[19] = "gbbanshees2"
dataTable15[20] = "gbbisonhf"
dataTable15[21] = "gbbisonstx"
dataTable15[22] = "gbbriosof"
dataTable15[23] = "gbcheetahs"
dataTable15[24] = "gbclubxr"
dataTable15[25] = "gbcometcl"
dataTable15[26] = "gbcomets1t"
dataTable15[27] = "gbcomets2r"
dataTable15[28] = "gbcomets2rc"
dataTable15[29] = "gbcyphergts"
dataTable15[30] = "gbdominatorgsx"
dataTable15[31] = "gbechelon"
dataTable15[32] = "gbeon"
dataTable15[33] = "gbgresleypol"
dataTable15[34] = "gbgresleystx"
dataTable15[35] = "gbharmann"
dataTable15[36] = "gbhedrakombi"
dataTable15[37] = "gbkomodagt"
dataTable15[38] = "gbmilano"
dataTable15[39] = "gbmogulrs"
dataTable15[40] = "gbmojave"
dataTable15[41] = "gbmugello"
dataTable15[42] = "gbpolargento7f"
dataTable15[43] = "gbpolbanshees2"
dataTable15[44] = "gbpolbisonhf"
dataTable15[45] = "gbpolbisonstx"
dataTable15[46] = "gbpolclubxr"
dataTable15[47] = "gbpolcometcl"
dataTable15[48] = "gbpolcomets2r"
dataTable15[49] = "gbpoldominatorgsx"
dataTable15[50] = "gbpolechelon"
dataTable15[51] = "gbpoleon"
dataTable15[52] = "gbpolhedra"
dataTable15[53] = "gbpolprospero"
dataTable15[54] = "gbpolsentinelgts"
dataTable15[55] = "gbpolsolace"
dataTable15[56] = "gbpolstanierle"
dataTable15[57] = "gbpolstarlight"
dataTable15[58] = "gbpolsultanrsx"
dataTable15[59] = "gbpoltahomagt"
dataTable15[60] = "gbpoltr3s"
dataTable15[61] = "gbpolturismogt"
dataTable15[62] = "gbprospero"
dataTable15[63] = "gbromulus"
dataTable15[64] = "gbronin"
dataTable15[65] = "gbrumina"
dataTable15[66] = "gbsapphire"
dataTable15[67] = "gbschlagenr"
dataTable15[68] = "gbschrauber"
dataTable15[69] = "gbschwartzers"
dataTable15[70] = "gbsentinelgts"
dataTable15[71] = "gbsolace"
dataTable15[72] = "gbsolacev"
dataTable15[73] = "gbstanierle"
dataTable15[74] = "gbstarlight"
dataTable15[75] = "gbsultanrsx"
dataTable15[76] = "gbtahomagt"
dataTable15[77] = "gbtaxieon"
dataTable15[78] = "gbtr3s"
dataTable15[79] = "gbturismogt"
dataTable15[80] = "gbturismogts"
dataTable15[81] = "gbvivant"
dataTable16 = {}
dataTable17 = {}
workValue16 = nil
numberValue13 = 0
numberValue14 = 0
dataTable18 = {}
dataTable19 = {}
dataTable20 = {}
dataTable21 = {}
numberValue15 = 10000
numberValue16 = 1
numberValue17 = 1
numberValue18 = 1
flag10 = true
workValue19 = nil
numberValue19 = 0
cmgCall7 = CMG
function cmgCall8()
  local arg1, arg2
  arg1 = textValue12
  return arg1
end
cmgCall7.getLastSpawnedGarageVehicleTime = cmgCall8
cmgCall7 = AddEventHandler
cmgCall8 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function eventRegistration2(arg1, arg2)
  local arg3, arg4
  if arg2 then
    arg3 = TriggerServerEvent
    arg4 = "CMG:CMG.refreshPlayerGaragePermissions"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMG:CMG.refreshPlayerGaragePermissions".
    arg3(arg4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgCall7(cmgCall8, eventRegistration2)
cmgCall7 = RegisterNetEvent
cmgCall8 = "f7c0db0592"
-- Beginner: this function handles network event "f7c0db0592".
function eventRegistration2(arg1)
  local arg2
  dataTable22 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f7c0db0592".
cmgCall7(cmgCall8, eventRegistration2)
cmgCall7 = RegisterNetEvent
cmgCall8 = "d9cdde6632"
-- Beginner: this function handles network event "d9cdde6632".
function eventRegistration2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = dataTable20
    iterator2[arg6] = arg7
  end
  arg2 = {}
  dataTable21 = arg2
  arg2 = pairs
  arg3 = dataTable20
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = pairs
    tableHelper2 = arg7.vehicles
    if not tableHelper2 then
      tableHelper2 = {}
    end
    iterator2, tableHelper2, dataTable25, workValue2 = iterator2(tableHelper2)
    for dataTable in iterator2, tableHelper2, dataTable25, workValue2 do
      iterator = dataTable21
      iterator[dataTable] = arg6
    end
  end
  arg2 = {}
  arg3 = ipairs
  arg4 = dataTable18
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, iterator2 in arg3, arg4, arg5, arg6 do
    tableHelper2 = iterator2.isGangGarage
    if tableHelper2 then
      tableHelper2 = table
      tableHelper2 = tableHelper2.insert
      dataTable25 = arg2
      workValue2 = arg7
      tableHelper2(dataTable25, workValue2)
    end
  end
  arg3 = #arg2
  arg4 = 1
  arg5 = -1
  for arg6 = arg3, arg4, arg5 do
    arg7 = table
    arg7 = arg7.remove
    iterator2 = dataTable18
    tableHelper2 = arg2[arg6]
    arg7(iterator2, tableHelper2)
  end
  arg3 = pairs
  arg4 = dataTable20
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, iterator2 in arg3, arg4, arg5, arg6 do
    tableHelper2 = iterator2.gangName
    if not tableHelper2 then
      tableHelper2 = "Gang "
      dataTable25 = arg7
      tableHelper2 = tableHelper2 .. dataTable25
    end
    dataTable25 = {}
    workValue2 = tableHelper2
    dataTable = " Garage"
    workValue2 = workValue2 .. dataTable
    dataTable25.type = workValue2
    dataTable25.class = "vehicle"
    workValue2 = {}
    dataTable25.vehicles = workValue2
    dataTable25.isGangGarage = true
    dataTable25.gangId = arg7
    workValue2 = pairs
    dataTable = iterator2.vehicles
    if not dataTable then
      dataTable = {}
    end
    workValue2, dataTable, iterator, stringHelper = workValue2(dataTable)
    for workValue7, stringHelper2 in workValue2, dataTable, iterator, stringHelper do
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.getVehicleNameFromId
      tableHelper = stringHelper2.vehicleId
      cmgCall3 = cmgCall3(tableHelper)
      tableHelper = table
      tableHelper = tableHelper.insert
      workValue9 = dataTable25.vehicles
      heading = {}
      heading.uuid = workValue7
      workValue10 = stringHelper2.vehicleId
      heading.vehicleId = workValue10
      workValue10 = cmgCall3 or workValue10
      if not cmgCall3 then
        workValue10 = stringHelper2.vehicleId
      end
      heading.name = workValue10
      workValue10 = stringHelper2.fuel
      heading.fuel = workValue10
      tableHelper(workValue9, heading)
    end
    workValue2 = table
    workValue2 = workValue2.sort
    dataTable = dataTable25.vehicles
    function iterator(arg12, arg22)
      local arg32, arg42
      arg32 = arg12.name
      arg42 = arg22.name
      arg32 = arg32 < arg42
      return arg32
    end
    workValue2(dataTable, iterator)
    workValue2 = dataTable25.vehicles
    workValue2 = #workValue2
    if workValue2 > 0 then
      workValue2 = table
      workValue2 = workValue2.insert
      dataTable = dataTable18
      iterator = dataTable25
      workValue2(dataTable, iterator)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d9cdde6632".
cmgCall7(cmgCall8, eventRegistration2)
cmgCall7 = RegisterNetEvent
cmgCall8 = "758f696f69"
-- Beginner: this function handles network event "758f696f69".
function eventRegistration2(arg1)
  local arg2
  dataTable4 = arg1
end
cmgCall7(cmgCall8, eventRegistration2)
cmgCall7 = RegisterNetEvent
cmgCall8 = "4074c74728"
-- Beginner: this function handles network event "4074c74728".
function eventRegistration2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2
  arg2 = CMG
  arg2 = arg2.unpackTable
  arg3 = arg1
  arg4 = {}
  arg5 = "uuid"
  arg6 = "vehicleName"
  arg7 = "rentedBy"
  iterator2 = "hoursLeft"
  arg4[1] = arg5
  arg4[2] = arg6
  arg4[3] = arg7
  arg4[4] = iterator2
  arg2 = arg2(arg3, arg4)
  dataTable5 = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4074c74728".
cmgCall7(cmgCall8, eventRegistration2)
cmgCall7 = RegisterNetEvent
cmgCall8 = "ffdf8f478c"
-- Beginner: this function handles network event "ffdf8f478c".
function eventRegistration2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2
  arg2 = {}
  dataTable6 = arg2
  arg2 = ipairs
  arg3 = arg1 or arg3
  if not arg1 then
    arg3 = {}
  end
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = dataTable6
    iterator2[arg7] = true
  end
end
cmgCall7(cmgCall8, eventRegistration2)
function cmgCall7(arg1)
  local arg2
  arg2 = dataTable6
  arg2 = arg2[arg1]
  arg2 = true == arg2
  return arg2
end
cmgCall8 = "~r~This vehicle is scheduled for auction."
eventRegistration2 = RegisterNetEvent
eventRegistration3 = "710b16ba26"
-- Beginner: this function handles network event "710b16ba26".
function textValue13(arg1)
  local arg2
  dataTable7 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "710b16ba26".
eventRegistration2(eventRegistration3, textValue13)
-- Beginner: this function handles network event "710b16ba26".
function eventRegistration2()
  local arg1, arg2
  arg1 = notify
  arg2 = "~y~You have outstanding debt on vehicle payment plans. Please ensure you make weekly payments."
  -- Beginner: Show a notification to the player.
  arg1(arg2)
end
eventRegistration3 = RegisterNetEvent
textValue13 = "6495e4bcfd"
-- Beginner: this function handles network event "6495e4bcfd".
function workValue20(arg1, arg2)
  local arg3, arg4, arg5
  dataTable8 = arg1
  if arg2 then
    arg3 = SetTimeout
    arg4 = 10000
    arg5 = eventRegistration2
    arg3(arg4, arg5)
    arg3 = SetTimeout
    arg4 = 30000
    arg5 = eventRegistration2
    arg3(arg4, arg5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6495e4bcfd".
eventRegistration3(textValue13, workValue20)
eventRegistration3 = RegisterNetEvent
textValue13 = "47267c0d5c"
-- Beginner: this function handles network event "47267c0d5c".
function workValue20(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = table
  arg2 = arg2.insert
  arg3 = dataTable5
  arg4 = arg1
  arg2(arg3, arg4)
  arg2 = arg1.uuid
  arg3 = numberValue23
  if arg2 == arg3 then
    arg2 = RageUI
    arg2 = arg2.IsAnyMenuOfTypeVisible
    arg3 = "garages"
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = RageUI
      arg2 = arg2.Visible
      arg3 = RMenu
      arg4 = arg3
      arg3 = arg3.Get
      arg5 = "garages"
      arg6 = "mainmenu"
      -- Beginner: result below is menu.
      arg3 = arg3(arg4, arg5, arg6)
      arg4 = true
      arg2(arg3, arg4)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "47267c0d5c".
eventRegistration3(textValue13, workValue20)
eventRegistration3 = RegisterNetEvent
textValue13 = "52c5e9ab6d"
-- Beginner: this function handles network event "52c5e9ab6d".
function workValue20(arg1)
  local arg2, arg3, arg4
  arg2 = table
  arg2 = arg2.insert
  arg3 = dataTable4
  arg4 = arg1
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "52c5e9ab6d".
eventRegistration3(textValue13, workValue20)
eventRegistration3 = RegisterNetEvent
textValue13 = "f70e91482e"
-- Beginner: this function handles network event "f70e91482e".
function workValue20(arg1, arg2)
  local arg3
  arg3 = dataTable16
  arg3[arg1] = arg2
end
eventRegistration3(textValue13, workValue20)
eventRegistration3 = RegisterNetEvent
textValue13 = "72ce12449f"
-- Beginner: this function handles network event "72ce12449f".
function workValue20(arg1, arg2)
  local arg3
  arg3 = dataTable17
  arg3[arg1] = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "72ce12449f".
eventRegistration3(textValue13, workValue20)
eventRegistration3 = RegisterNetEvent
textValue13 = "66ab2aef34"
-- Beginner: this function handles network event "66ab2aef34".
function workValue20(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, iterator2
  arg5 = numberValue14
  if arg5 == arg1 then
    arg5 = {}
    arg6 = arg2
    arg7 = arg3
    iterator2 = arg4
    arg5[1] = arg6
    arg5[2] = arg7
    arg5[3] = iterator2
    workValue16 = arg5
  end
end
eventRegistration3(textValue13, workValue20)
eventRegistration3 = RegisterNetEvent
textValue13 = "514c94a95c"
-- Beginner: this function handles network event "514c94a95c".
function workValue20(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2
  arg2 = pairs
  arg3 = dataTable5
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = arg7.uuid
    if iterator2 == arg1 then
      iterator2 = dataTable5
      iterator2 = iterator2[arg6]
      iterator2 = iterator2.hoursLeft
      if iterator2 > 1 then
        iterator2 = dataTable5
        iterator2 = iterator2[arg6]
        tableHelper2 = dataTable5
        tableHelper2 = tableHelper2[arg6]
        tableHelper2 = tableHelper2.hoursLeft
        tableHelper2 = tableHelper2 - 1
        iterator2.hoursLeft = tableHelper2
      else
        iterator2 = dataTable5
        iterator2[arg6] = nil
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "514c94a95c".
eventRegistration3(textValue13, workValue20)
eventRegistration3 = RegisterNetEvent
textValue13 = "c05ba37ff7"
-- Beginner: this function handles network event "c05ba37ff7".
function workValue20(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2
  arg2 = pairs
  arg3 = dataTable4
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = arg7.uuid
    if iterator2 == arg1 then
      iterator2 = dataTable4
      iterator2 = iterator2[arg6]
      iterator2 = iterator2.hoursLeft
      if iterator2 > 1 then
        iterator2 = dataTable4
        iterator2 = iterator2[arg6]
        tableHelper2 = dataTable4
        tableHelper2 = tableHelper2[arg6]
        tableHelper2 = tableHelper2.hoursLeft
        tableHelper2 = tableHelper2 - 1
        iterator2.hoursLeft = tableHelper2
      else
        iterator2 = dataTable4
        iterator2[arg6] = nil
      end
    end
  end
end
eventRegistration3(textValue13, workValue20)
eventRegistration3 = RegisterNetEvent
textValue13 = "b4785de6ec"
-- Beginner: this function handles network event "b4785de6ec".
function workValue20(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2
  arg2 = pairs
  arg3 = dataTable5
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = arg7.uuid
    if iterator2 == arg1 then
      iterator2 = dataTable5
      iterator2[arg6] = nil
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b4785de6ec".
eventRegistration3(textValue13, workValue20)
eventRegistration3 = RegisterNetEvent
textValue13 = "f61fc6bcb1"
-- Beginner: this function handles network event "f61fc6bcb1".
function workValue20(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2
  arg2 = pairs
  arg3 = dataTable4
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = arg7.uuid
    if iterator2 == arg1 then
      iterator2 = dataTable4
      iterator2[arg6] = nil
    end
  end
end
eventRegistration3(textValue13, workValue20)
eventRegistration3 = CMG
function textValue13(arg1)
  local arg2
  arg2 = dataTable19
  arg2 = arg2[arg1]
  return arg2
end
eventRegistration3.getVehicleInfoFromUUID = textValue13
eventRegistration3 = CMG
function textValue13(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2
  arg2 = pairs
  arg3 = dataTable19
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = arg7.vehicleId
    if iterator2 == arg1 then
      iterator2 = true
      return iterator2
    end
  end
  arg2 = false
  return arg2
end
eventRegistration3.hasLiveVehicleId = textValue13
eventRegistration3 = CMG
function textValue13()
  local arg1, arg2
  arg1 = dataTable19
  return arg1
end
eventRegistration3.getVehicleInfoLookup = textValue13
function eventRegistration3(arg1, arg2)
  local arg3, arg4, arg5, arg6
  if arg2 and "" ~= arg2 then
    arg3 = string
    arg3 = arg3.lower
    arg4 = arg2
    arg3 = arg3(arg4)
    arg4 = string
    arg4 = arg4.lower
    arg5 = arg1
    arg4 = arg4(arg5)
    if arg3 ~= arg4 then
      return arg2
    end
  end
  arg3 = GetHashKey
  arg4 = arg1
  -- Beginner: result below is hash.
  arg3 = arg3(arg4)
  arg4 = IsModelInCdimage
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = GetLabelText
    arg5 = GetDisplayNameFromVehicleModel
    arg6 = arg3
    arg5, arg6 = arg5(arg6)
    arg4 = arg4(arg5, arg6)
    if arg4 and "" ~= arg4 and "NULL" ~= arg4 then
      return arg4
    end
  end
  arg4 = arg2 or arg4
  if nil == arg2 or "" == arg2 or not arg2 then
    arg4 = arg1
  end
  return arg4
end
textValue13 = CMG
function workValue20()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper
  arg1 = {}
  arg2 = pairs
  arg3 = dataTable18
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = pairs
    tableHelper2 = arg7.vehicles
    iterator2, tableHelper2, dataTable25, workValue2 = iterator2(tableHelper2)
    for dataTable, iterator in iterator2, tableHelper2, dataTable25, workValue2 do
      workValue7 = iterator.uuid
      stringHelper = dataTable12
      stringHelper = stringHelper[workValue7]
      workValue7 = stringHelper or workValue7
      if not stringHelper or "" == stringHelper or not stringHelper then
        workValue7 = eventRegistration3
        stringHelper2 = iterator.vehicleId
        cmgCall3 = iterator.name
        workValue7 = workValue7(stringHelper2, cmgCall3)
      end
      stringHelper2 = tostring
      cmgCall3 = iterator.uuid
      stringHelper2 = stringHelper2(cmgCall3)
      cmgCall3 = {}
      tableHelper = arg7.type
      cmgCall3.garage = tableHelper
      cmgCall3.name = workValue7
      arg1[stringHelper2] = cmgCall3
    end
  end
  arg2 = {}
  arg3 = pairs
  arg4 = dataTable9
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, iterator2 in arg3, arg4, arg5, arg6 do
    tableHelper2 = pairs
    dataTable25 = iterator2
    tableHelper2, dataTable25, workValue2, dataTable = tableHelper2(dataTable25)
    for iterator in tableHelper2, dataTable25, workValue2, dataTable do
      stringHelper = tostring
      workValue7 = iterator
      stringHelper = stringHelper(workValue7)
      arg2[stringHelper] = arg7
    end
  end
  arg3 = {}
  arg3.byUuid = arg1
  arg3.folderOf = arg2
  return arg3
end
textValue13.getTradeVehicleGrouping = workValue20
function textValue13(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25
  arg2 = pairs
  arg3 = dataTable19
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = string
    iterator2 = iterator2.lower
    tableHelper2 = arg7.vehicleId
    iterator2 = iterator2(tableHelper2)
    tableHelper2 = string
    tableHelper2 = tableHelper2.lower
    dataTable25 = arg1
    tableHelper2 = tableHelper2(dataTable25)
    if iterator2 == tableHelper2 then
      return arg6
    end
  end
  arg2 = nil
  return arg2
end
function workValue20(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5
  arg3 = pairs
  arg4 = workValue.garages
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, iterator2 in arg3, arg4, arg5, arg6 do
    tableHelper2 = pairs
    dataTable25 = iterator2
    tableHelper2, dataTable25, workValue2, dataTable = tableHelper2(dataTable25)
    for iterator, stringHelper in tableHelper2, dataTable25, workValue2, dataTable do
      workValue7 = string
      workValue7 = workValue7.lower
      stringHelper2 = iterator
      workValue7 = workValue7(stringHelper2)
      stringHelper2 = string
      stringHelper2 = stringHelper2.lower
      cmgCall3 = arg2.vehicleId
      stringHelper2 = stringHelper2(cmgCall3)
      if workValue7 == stringHelper2 then
        workValue7 = nil
        stringHelper2 = pairs
        cmgCall3 = dataTable18
        stringHelper2, cmgCall3, tableHelper, workValue9 = stringHelper2(cmgCall3)
        for heading, workValue10 in stringHelper2, cmgCall3, tableHelper, workValue9 do
          cmgCall5 = workValue10.type
          if cmgCall5 == arg7 then
            workValue7 = workValue10
            break
          end
        end
        if not workValue7 then
          stringHelper2 = {}
          stringHelper2.type = arg7
          cmgCall3 = iterator2._config
          cmgCall3 = cmgCall3.type
          stringHelper2.class = cmgCall3
          cmgCall3 = {}
          stringHelper2.vehicles = cmgCall3
          workValue7 = stringHelper2
          stringHelper2 = table
          stringHelper2 = stringHelper2.insert
          cmgCall3 = dataTable18
          tableHelper = workValue7
          stringHelper2(cmgCall3, tableHelper)
        end
        stringHelper2 = {}
        stringHelper2.uuid = arg1
        cmgCall3 = arg2.vehicleId
        stringHelper2.vehicleId = cmgCall3
        cmgCall3 = stringHelper.name
        stringHelper2.name = cmgCall3
        cmgCall3 = arg2.fuel
        stringHelper2.fuel = cmgCall3
        cmgCall3 = table
        cmgCall3 = cmgCall3.insert
        tableHelper = workValue7.vehicles
        workValue9 = stringHelper2
        cmgCall3(tableHelper, workValue9)
        cmgCall3 = dataTable19
        cmgCall3[arg1] = stringHelper2
        break
      end
    end
  end
end
eventRegistration4 = RegisterNetEvent
cmgCall9 = "d7e6bd6cc0"
-- Beginner: this function handles network event "d7e6bd6cc0".
function textValue14(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9
  arg2 = {}
  dataTable19 = arg2
  arg2 = {}
  dataTable18 = arg2
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = workValue20
    tableHelper2 = arg6
    dataTable25 = arg7
    iterator2(tableHelper2, dataTable25)
  end
  arg2 = table
  arg2 = arg2.sort
  arg3 = dataTable18
  function arg4(arg12, arg22)
    local arg32, arg42
    arg32 = arg12.type
    arg42 = arg22.type
    arg32 = arg32 < arg42
    return arg32
  end
  arg2(arg3, arg4)
  arg2 = pairs
  arg3 = dataTable18
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = table
    iterator2 = iterator2.sort
    tableHelper2 = arg7.vehicles
    function dataTable25(arg12, arg22)
      local arg32, arg42
      arg32 = arg12.name
      arg42 = arg22.name
      arg32 = arg32 < arg42
      return arg32
    end
    iterator2(tableHelper2, dataTable25)
  end
  arg2 = CMG
  arg2 = arg2.getCustomFolders
  arg2 = arg2()
  arg3 = GetResourceKvpInt
  arg4 = "cmg_garagefolders_version"
  arg3 = arg3(arg4)
  arg4 = table
  arg4 = arg4.count
  arg5 = arg2
  -- Beginner: result below is count.
  arg4 = arg4(arg5)
  if arg4 > 0 then
    if 0 == arg3 then
      arg4 = table
      arg4 = arg4.copy
      arg5 = arg2
      arg4 = arg4(arg5)
      arg5 = pairs
      arg6 = arg4
      arg5, arg6, arg7, iterator2 = arg5(arg6)
      for tableHelper2, dataTable25 in arg5, arg6, arg7, iterator2 do
        workValue2 = {}
        dataTable = pairs
        iterator = dataTable25
        dataTable, iterator, stringHelper, workValue7 = dataTable(iterator)
        for stringHelper2 in dataTable, iterator, stringHelper, workValue7 do
          cmgCall3 = textValue13
          tableHelper = stringHelper2
          cmgCall3 = cmgCall3(tableHelper)
          if cmgCall3 then
            workValue2[cmgCall3] = true
          end
        end
        arg4[tableHelper2] = workValue2
      end
      arg2 = arg4
      arg5 = CMG
      arg5 = arg5.saveCustomFolders
      arg6 = 1
      arg5(arg6)
    end
    if 1 == arg3 then
      arg4 = table
      arg4 = arg4.copy
      arg5 = arg2
      arg4 = arg4(arg5)
      arg5 = pairs
      arg6 = arg4
      arg5, arg6, arg7, iterator2 = arg5(arg6)
      for tableHelper2, dataTable25 in arg5, arg6, arg7, iterator2 do
        workValue2 = {}
        dataTable = 0
        iterator = pairs
        stringHelper = dataTable25
        iterator, stringHelper, workValue7, stringHelper2 = iterator(stringHelper)
        for cmgCall3 in iterator, stringHelper, workValue7, stringHelper2 do
          workValue2[cmgCall3] = dataTable
          dataTable = dataTable + 1
        end
        arg4[tableHelper2] = workValue2
      end
      arg2 = arg4
      arg5 = CMG
      arg5 = arg5.saveCustomFolders
      arg6 = 2
      arg5(arg6)
    end
  end
  dataTable9 = arg2
  arg4 = CMG
  arg4 = arg4.getGarageSettings
  arg4 = arg4()
  dataTable11 = arg4
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d7e6bd6cc0".
eventRegistration4(cmgCall9, textValue14)
eventRegistration4 = RegisterNetEvent
cmgCall9 = "5ab691b0b2"
-- Beginner: this function handles network event "5ab691b0b2".
function textValue14(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3
  arg2 = dataTable19
  arg2[arg1] = nil
  arg2 = pairs
  arg3 = dataTable18
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = false
    tableHelper2 = pairs
    dataTable25 = arg7.vehicles
    tableHelper2, dataTable25, workValue2, dataTable = tableHelper2(dataTable25)
    for iterator, stringHelper in tableHelper2, dataTable25, workValue2, dataTable do
      workValue7 = stringHelper.uuid
      if workValue7 == arg1 then
        iterator2 = true
        workValue7 = table
        workValue7 = workValue7.remove
        stringHelper2 = arg7.vehicles
        cmgCall3 = iterator
        workValue7(stringHelper2, cmgCall3)
        break
      end
    end
    if iterator2 then
      tableHelper2 = arg7.vehicles
      tableHelper2 = #tableHelper2
      if 0 == tableHelper2 then
        tableHelper2 = table
        tableHelper2 = tableHelper2.remove
        dataTable25 = dataTable18
        workValue2 = arg6
        tableHelper2(dataTable25, workValue2)
        break
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5ab691b0b2".
eventRegistration4(cmgCall9, textValue14)
eventRegistration4 = RegisterNetEvent
cmgCall9 = "e3d9da6250"
-- Beginner: this function handles network event "e3d9da6250".
function textValue14(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9
  arg4 = workValue20
  arg5 = arg1
  arg6 = {}
  arg6.vehicleId = arg2
  arg6.fuel = arg3
  arg4(arg5, arg6)
  arg4 = pairs
  arg5 = dataTable18
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    dataTable25 = false
    workValue2 = pairs
    dataTable = tableHelper2.vehicles
    workValue2, dataTable, iterator, stringHelper = workValue2(dataTable)
    for workValue7, stringHelper2 in workValue2, dataTable, iterator, stringHelper do
      cmgCall3 = stringHelper2.uuid
      if cmgCall3 == arg1 then
        dataTable25 = true
        cmgCall3 = table
        cmgCall3 = cmgCall3.sort
        tableHelper = tableHelper2.vehicles
        function workValue9(arg12, arg22)
          local arg32, arg42
          arg32 = arg12.name
          arg42 = arg22.name
          arg32 = arg32 < arg42
          return arg32
        end
        cmgCall3(tableHelper, workValue9)
        break
      end
    end
    if dataTable25 then
      workValue2 = table
      workValue2 = workValue2.sort
      dataTable = dataTable18
      function iterator(arg12, arg22)
        local arg32, arg42
        arg32 = arg12.type
        arg42 = arg22.type
        arg32 = arg32 < arg42
        return arg32
      end
      workValue2(dataTable, iterator)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e3d9da6250".
eventRegistration4(cmgCall9, textValue14)
function eventRegistration4(arg1)
  local arg2
  arg2 = dataTable22
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = true
    return arg2
  else
    arg2 = false
    return arg2
  end
end
cmgCall9 = CMG
cmgCall9 = cmgCall9.RegisterClientCallback
textValue14 = "90da0d8135"
function dataTable23()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7
  arg1 = table
  arg1 = arg1.copy
  arg2 = dataTable18
  arg1 = arg1(arg2)
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = eventRegistration4
    tableHelper2 = arg7.type
    iterator2 = iterator2(tableHelper2)
    if iterator2 then
      iterator2 = pairs
      tableHelper2 = arg7.vehicles
      iterator2, tableHelper2, dataTable25, workValue2 = iterator2(tableHelper2)
      for dataTable, iterator in iterator2, tableHelper2, dataTable25, workValue2 do
        workValue7 = iterator.uuid
        stringHelper = dataTable12
        stringHelper = stringHelper[workValue7]
        if stringHelper then
          workValue7 = iterator.uuid
          stringHelper = dataTable12
          stringHelper = stringHelper[workValue7]
          iterator.name = stringHelper
        end
      end
    else
      iterator2 = {}
      arg7.vehicles = iterator2
    end
  end
  return arg1
end
cmgCall9(textValue14, dataTable23)
cmgCall9 = CMG
cmgCall9 = cmgCall9.RegisterClientCallback
textValue14 = "c1d4a26d0d"
function dataTable23()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetInteriorFromEntity
  arg3 = arg1
  -- Beginner: result below is interiorId.
  arg2 = arg2(arg3)
  if arg2 and 0 ~= arg2 then
    arg3 = true
    return arg3
  else
    arg3 = false
    return arg3
  end
end
cmgCall9(textValue14, dataTable23)
function cmgCall9(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = eventRegistration4
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = RageUI
    arg2 = arg2.Visible
    arg3 = RMenu
    arg4 = arg3
    arg3 = arg3.Get
    arg5 = "garages"
    arg6 = "mainmenu"
    -- Beginner: result below is menu.
    arg3 = arg3(arg4, arg5, arg6)
    arg4 = true
    arg2(arg3, arg4)
  end
end
function textValue14()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
end
dataTable23 = {}
dataTable24 = {}
numberValue21 = 0
cmgCall10 = CMG
function workValue21()
  local arg1, arg2
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = numberValue21
  arg1 = arg1 - arg2
  arg2 = 1000
  arg1 = arg1 < arg2
  return arg1
end
cmgCall10.isInsideGarageArea = workValue21
function cmgCall10(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2
  arg3 = arg1.garageId
  arg2 = dataTable23
  arg2 = arg2[arg3]
  if arg2 then
    return
  end
  arg2 = PlaySound
  arg3 = -1
  arg4 = "Hit"
  arg5 = "RESPAWN_SOUNDSET"
  arg6 = false
  arg7 = false
  iterator2 = true
  arg2(arg3, arg4, arg5, arg6, arg7, iterator2)
  arg2 = workValue.garages
  arg3 = arg1.garageType
  arg2 = arg2[arg3]
  arg2 = arg2._config
  arg2 = arg2.type
  textValue4 = arg2
  arg2 = cmgCall9
  arg3 = arg1.garageType
  arg2(arg3)
  arg2 = arg1.position
  vector3Builder = arg2
  arg3 = arg1.garageId
  arg2 = dataTable23
  arg2[arg3] = true
end
function workValue21(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2
  arg3 = arg1.garageId
  arg2 = dataTable23
  arg2 = arg2[arg3]
  if not arg2 then
    return
  end
  arg2 = PlaySound
  arg3 = -1
  arg4 = "Hit"
  arg5 = "RESPAWN_SOUNDSET"
  arg6 = false
  arg7 = false
  iterator2 = true
  arg2(arg3, arg4, arg5, arg6, arg7, iterator2)
  arg2 = textValue14
  arg2()
  arg2 = table
  arg2 = arg2.clear
  arg3 = dataTable24
  arg2(arg3)
  arg3 = arg1.garageId
  arg2 = dataTable23
  arg2[arg3] = false
  arg2 = nil
  workValue4 = arg2
  arg2 = nil
  workValue6 = arg2
end
function workValue22(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = NetworkHasControlOfEntity
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = DeleteEntity
    arg3 = arg1
    -- Beginner: Delete a GTA entity.
    arg2(arg3)
    return
  end
  arg2 = NetworkGetNetworkIdFromEntity
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 ~= arg2 then
    arg3 = TriggerServerEvent
    arg4 = "79ec855d76"
    arg5 = arg2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "79ec855d76".
    arg3(arg4, arg5)
  end
end
function workValue23(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable
  arg2 = arg1.distance
  arg3 = 1.5
  if arg2 < arg3 then
    arg3 = arg1.garageId
    arg2 = dataTable23
    arg2 = arg2[arg3]
    if not arg2 then
      arg2 = cmgCall10
      arg3 = arg1
      arg2(arg3)
    end
  else
    arg3 = arg1.garageId
    arg2 = dataTable23
    arg2 = arg2[arg3]
    if arg2 then
      arg2 = workValue21
      arg3 = arg1
      arg2(arg3)
    end
  end
  arg2 = arg1.type
  if "vehicle" == arg2 then
    arg2 = arg1.disableDelete
    if not arg2 then
      goto flow_label_29
    end
  end
  return
  ::flow_label_29::
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = numberValue21
  arg3 = arg2 - arg3
  arg4 = 1000
  if arg3 < arg4 then
    return
  end
  arg3 = pairs
  arg4 = CMG
  arg4 = arg4.getAllVehicles
  arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable = arg4()
  arg3, arg4, arg5, arg6 = arg3(arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable)
  for arg7, iterator2 in arg3, arg4, arg5, arg6 do
    tableHelper2 = GetEntityCoords
    dataTable25 = iterator2
    workValue2 = true
    -- Beginner: result below is entityCoords.
    tableHelper2 = tableHelper2(dataTable25, workValue2)
    dataTable25 = arg1.position
    tableHelper2 = tableHelper2 - dataTable25
    tableHelper2 = #tableHelper2
    if tableHelper2 < 5.0 then
      tableHelper2 = NetworkGetEntityIsNetworked
      dataTable25 = iterator2
      tableHelper2 = tableHelper2(dataTable25)
      if tableHelper2 then
        tableHelper2 = dataTable24
        tableHelper2 = tableHelper2[iterator2]
        if not tableHelper2 then
          tableHelper2 = 0
        end
        tableHelper2 = tableHelper2 + 1
        dataTable25 = GetPedInVehicleSeat
        workValue2 = iterator2
        dataTable = -1
        dataTable25 = dataTable25(workValue2, dataTable)
        if 0 == dataTable25 then
          dataTable25 = 2
          if dataTable25 then
            goto flow_label_76
          end
        end
        dataTable25 = 10
        ::flow_label_76::
        if tableHelper2 > dataTable25 then
          workValue2 = workValue22
          dataTable = iterator2
          workValue2(dataTable)
        end
        workValue2 = dataTable24
        workValue2[iterator2] = tableHelper2
      end
    end
  end
  numberValue21 = arg2
end
cmgCall11 = CMG
function numberValue22(arg1)
  local arg2
  arg2 = dataTable24
  arg2[arg1] = nil
end
cmgCall11.clearBlockingVehicleCounter = numberValue22
cmgCall11 = CMG
function numberValue22(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper
  arg5 = workValue.garages
  arg5 = arg5[arg1]
  arg6 = assert
  arg7 = arg5
  iterator2 = string
  iterator2 = iterator2.format
  tableHelper2 = "Garage type %s is not defined in garages.lua config"
  dataTable25 = arg1
  iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper = iterator2(tableHelper2, dataTable25)
  arg6(arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper)
  arg6 = arg5._config
  arg7 = assert
  iterator2 = arg6
  tableHelper2 = string
  tableHelper2 = tableHelper2.format
  dataTable25 = "Garage type %s does not have a config entry"
  workValue2 = arg1
  tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper = tableHelper2(dataTable25, workValue2)
  arg7(iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper)
  arg7 = CMG
  arg7 = arg7.generateUUID
  iterator2 = "garages"
  tableHelper2 = 5
  dataTable25 = "alphanumeric"
  arg7 = arg7(iterator2, tableHelper2, dataTable25)
  iterator2 = {}
  tableHelper2 = dataTable14
  tableHelper2[arg7] = iterator2
  tableHelper2 = CMG
  tableHelper2 = tableHelper2.createArea
  dataTable25 = "garage_"
  workValue2 = arg7
  dataTable25 = dataTable25 .. workValue2
  workValue2 = arg2
  dataTable = 10.0
  iterator = 6
  function stringHelper()
    local arg12, arg22
  end
  workValue7 = workValue21
  stringHelper2 = workValue23
  cmgCall3 = {}
  cmgCall3.garageType = arg1
  cmgCall3.garageId = arg7
  cmgCall3.position = arg2
  tableHelper = arg6.type
  cmgCall3.type = tableHelper
  cmgCall3.disableDelete = arg4
  tableHelper2 = tableHelper2(dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3)
  iterator2.areaId = tableHelper2
  tableHelper2 = tCMG
  tableHelper2 = tableHelper2.addPropMarker
  dataTable25 = "bzzz_marker_garage_green_anim"
  workValue2 = arg2.x
  dataTable = arg2.y
  iterator = arg2.z
  stringHelper = 50.0
  tableHelper2 = tableHelper2(dataTable25, workValue2, dataTable, iterator, stringHelper)
  iterator2.marker = tableHelper2
  if arg3 then
    tableHelper2 = tCMG
    tableHelper2 = tableHelper2.addBlip
    dataTable25 = arg2.x
    workValue2 = arg2.y
    dataTable = arg2.z
    iterator = arg6.blipid
    stringHelper = arg6.blipcolor
    workValue7 = arg1
    stringHelper2 = 0.7
    cmgCall3 = false
    tableHelper2 = tableHelper2(dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3)
    iterator2.blip = tableHelper2
  end
  return arg7
end
cmgCall11.createGarage = numberValue22
cmgCall11 = CMG
function numberValue22(arg1)
  local arg2, arg3, arg4
  arg2 = dataTable14
  arg2 = arg2[arg1]
  if not arg2 then
    return
  end
  arg3 = tCMG
  arg3 = arg3.removeArea
  arg4 = arg2.areaId
  arg3(arg4)
  arg3 = tCMG
  arg3 = arg3.removeMarker
  arg4 = arg2.marker
  arg3(arg4)
  arg3 = arg2.blip
  if arg3 then
    arg3 = tCMG
    arg3 = arg3.removeBlip
    arg4 = arg2.blip
    arg3(arg4)
  end
  arg3 = dataTable14
  arg3[arg1] = nil
end
cmgCall11.deleteGarage = numberValue22
cmgCall11 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.
function numberValue22()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6
  arg1 = pairs
  arg2 = workValue.garages
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = pairs
    iterator2 = arg6
    arg7, iterator2, tableHelper2, dataTable25 = arg7(iterator2)
    for workValue2 in arg7, iterator2, tableHelper2, dataTable25 do
      if "_config" == workValue2 then
        dataTable = pairs
        iterator = workValue.garageInstances
        dataTable, iterator, stringHelper, workValue7 = dataTable(iterator)
        for stringHelper2, cmgCall3 in dataTable, iterator, stringHelper, workValue7 do
          tableHelper = table
          tableHelper = tableHelper.unpack
          workValue9 = cmgCall3
          tableHelper, workValue9, heading, workValue10 = tableHelper(workValue9)
          if arg5 == tableHelper then
            cmgCall5 = CMG
            cmgCall5 = cmgCall5.createGarage
            numberValue5 = arg5
            vehicle = workValue9
            stringHelper3 = heading
            numberValue6 = workValue10
            cmgCall5(numberValue5, vehicle, stringHelper3, numberValue6)
          end
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall11(numberValue22)
cmgCall11 = 0
numberValue22 = 0.0
function workValue25(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = DeleteVehicle
  arg3 = GetVehiclePedIsIn
  arg4 = CMG
  arg4 = arg4.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = false
  arg3, arg4, arg5 = arg3(arg4, arg5)
  arg2(arg3, arg4, arg5)
  arg2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.
  function arg3()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2
    arg12 = GetHashKey
    arg22 = arg1
    -- Beginner: result below is hash.
    arg12 = arg12(arg22)
    arg22 = RequestModel
    arg32 = arg12
    arg22(arg32)
    arg22 = 0
    while true do
      arg32 = HasModelLoaded
      arg42 = arg12
      arg32 = arg32(arg42)
      if arg32 then
        break
      end
      arg32 = 200
      if not (arg22 < arg32) then
        break
      end
      arg32 = drawNativeText
      arg42 = "~r~Downloading vehicle model"
      -- Beginner: Draw GTA-style text on screen.
      arg32(arg42)
      arg32 = Wait
      arg42 = 0
      arg32(arg42)
      arg22 = arg22 + 1
    end
    arg32 = HasModelLoaded
    arg42 = arg12
    arg32 = arg32(arg42)
    if arg32 then
      arg32 = CreateVehicle
      arg42 = arg12
      workValue18 = vector3Builder.x
      flag11 = vector3Builder.y
      flag13 = vector3Builder.z
      flag14 = numberValue22
      cmgCall16 = false
      flag17 = false
      -- Beginner: result below is vehicleEntity.
      arg32 = arg32(arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
      arg42 = CMG
      arg42 = arg42.initLocalVehicle
      workValue18 = arg32
      arg42(workValue18)
      arg42 = SetEntityAsMissionEntity
      workValue18 = arg32
      flag11 = false
      flag13 = false
      arg42(workValue18, flag11, flag13)
      arg42 = FreezeEntityPosition
      workValue18 = arg32
      flag11 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      arg42(workValue18, flag11)
      arg42 = SetEntityInvincible
      workValue18 = arg32
      flag11 = true
      arg42(workValue18, flag11)
      arg42 = SetVehicleDoorsLocked
      workValue18 = arg32
      flag11 = 4
      arg42(workValue18, flag11)
      arg42 = SetModelAsNoLongerNeeded
      workValue18 = arg12
      arg42(workValue18)
      arg42 = cmgCall11
      if 0 ~= arg42 then
        arg42 = DestroyCam
        workValue18 = cmgCall11
        flag11 = false
        arg42(workValue18, flag11)
        arg42 = 0
        cmgCall11 = arg42
      end
      arg42 = SetEntityAlpha
      workValue18 = CMG
      workValue18 = workValue18.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workValue18 = workValue18()
      flag11 = 0
      flag13 = false
      arg42(workValue18, flag11, flag13)
      arg42 = FreezeEntityPosition
      workValue18 = CMG
      workValue18 = workValue18.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workValue18 = workValue18()
      flag11 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      arg42(workValue18, flag11)
      arg42 = SetEntityCollision
      workValue18 = CMG
      workValue18 = workValue18.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workValue18 = workValue18()
      flag11 = false
      flag13 = false
      arg42(workValue18, flag11, flag13)
      arg42 = SetEntityCollision
      workValue18 = arg32
      flag11 = false
      flag13 = false
      arg42(workValue18, flag11, flag13)
      arg42 = GetEntityCoords
      workValue18 = CMG
      workValue18 = workValue18.getPlayerPed
      workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2 = workValue18()
      -- Beginner: result below is entityCoords.
      arg42 = arg42(workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2)
      workValue18 = GetEntityRotation
      flag11 = CMG
      flag11 = flag11.getPlayerPed
      flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2 = flag11()
      workValue18 = workValue18(flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2)
      flag11 = CreateCam
      flag13 = "DEFAULT_SCRIPTED_CAMERA"
      flag14 = true
      -- Beginner: result below is cameraHandle.
      flag11 = flag11(flag13, flag14)
      flag13 = vector3
      flag14 = arg42.x
      cmgCall16 = arg42.y
      flag17 = arg42.z
      flag17 = flag17 + 2.0
      flag13 = flag13(flag14, cmgCall16, flag17)
      flag14 = GetEntityForwardVector
      cmgCall16 = CMG
      cmgCall16 = cmgCall16.getPlayerPed
      cmgCall16, flag17, numberValue2, flag, flag2 = cmgCall16()
      flag14 = flag14(cmgCall16, flag17, numberValue2, flag, flag2)
      flag14 = flag14 * 5.0
      flag13 = flag13 - flag14
      flag14 = SetCamActive
      cmgCall16 = flag11
      flag17 = true
      flag14(cmgCall16, flag17)
      flag14 = RenderScriptCams
      cmgCall16 = true
      flag17 = true
      numberValue2 = 500
      flag = true
      flag2 = false
      flag14(cmgCall16, flag17, numberValue2, flag, flag2)
      flag14 = SetCamCoord
      cmgCall16 = flag11
      flag17 = flag13.x
      numberValue2 = flag13.y
      flag = flag13.z
      flag14(cmgCall16, flag17, numberValue2, flag)
      flag14 = SetCamRot
      cmgCall16 = flag11
      flag17 = -20.0
      numberValue2 = workValue18.y
      flag = workValue18.z
      flag2 = 2
      flag14(cmgCall16, flag17, numberValue2, flag, flag2)
      cmgCall11 = flag11
      flag14 = Citizen
      flag14 = flag14.CreateThread
      function cmgCall16()
        local arg13, arg23, arg33
        while true do
          arg13 = DoesEntityExist
          arg23 = arg32
          arg13 = arg13(arg23)
          if not arg13 then
            break
          end
          arg13 = Citizen
          arg13 = arg13.Wait
          arg23 = 25
          arg13(arg23)
          arg13 = numberValue22
          arg13 = arg13 + 1
          arg13 = arg13 % 360
          numberValue22 = arg13
          arg13 = SetEntityHeading
          arg23 = arg32
          arg33 = numberValue22
          -- Beginner: Change the direction an entity is facing.
          arg13(arg23, arg33)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      flag14(cmgCall16)
      flag14 = false
      flag5 = flag14
      flag14 = true
      flag4 = flag14
      numberValue3 = arg32
    else
      arg32 = tCMG
      arg32 = arg32.notify
      arg42 = "~r~Failed to load vehicle."
      -- Beginner: Show a notification to the player.
      arg32(arg42)
      arg32 = -1
      return arg32
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
cmgCall13 = CMG
function workValue26()
  local arg1, arg2
  arg1 = flag4
  return arg1
end
cmgCall13.isPreviewingVehicle = workValue26
function cmgCall13(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = AddBlipForEntity
  arg3 = arg1
  -- Beginner: result below is blipHandle.
  arg2 = arg2(arg3)
  arg3 = SetBlipSprite
  arg4 = arg2
  arg5 = 56
  arg3(arg4, arg5)
  arg3 = SetBlipDisplay
  arg4 = arg2
  arg5 = 4
  arg3(arg4, arg5)
  arg3 = SetBlipScale
  arg4 = arg2
  arg5 = 1.0
  arg3(arg4, arg5)
  arg3 = SetBlipColour
  arg4 = arg2
  arg5 = 2
  arg3(arg4, arg5)
  arg3 = SetBlipAsShortRange
  arg4 = arg2
  arg5 = true
  arg3(arg4, arg5)
end
function workValue26(arg1, arg2, arg3)
  local arg4, arg5
  arg4 = Citizen
  arg4 = arg4.CreateThread
  function arg5()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13
    arg12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg12 = arg12()
    while true do
      arg22 = NetworkGetEntityIsNetworked
      arg32 = arg2
      arg22 = arg22(arg32)
      if arg22 then
        arg22 = NetworkGetNetworkIdFromEntity
        arg32 = arg2
        arg22 = arg22(arg32)
        if 0 ~= arg22 then
          break
        end
      end
      arg22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg22 = arg22()
      arg22 = arg22 - arg12
      arg32 = 10000
      if arg22 > arg32 then
        break
      end
      arg22 = Citizen
      arg22 = arg22.Wait
      arg32 = 0
      arg22(arg32)
    end
    arg22 = NetworkGetNetworkIdFromEntity
    arg32 = arg2
    arg22 = arg22(arg32)
    if 0 ~= arg22 then
      arg32 = TriggerServerEvent
      arg42 = "bf7c06a813"
      workValue18 = arg1
      flag11 = arg22
      flag13 = arg3
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf7c06a813".
      arg32(arg42, workValue18, flag11, flag13)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg4(arg5)
end
function workValue27()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator
  arg1 = {}
  arg2 = pairs
  arg3 = CMG
  arg3 = arg3.getAllVehicles
  arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator = arg3()
  arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = DecorGetInt
    tableHelper2 = arg7
    dataTable25 = "ac76c9d452"
    iterator2 = iterator2(tableHelper2, dataTable25)
    tableHelper2 = DecorGetInt
    dataTable25 = arg7
    workValue2 = "0a6cf607ed"
    tableHelper2 = tableHelper2(dataTable25, workValue2)
    if iterator2 > 0 then
      dataTable25 = CMG
      dataTable25 = dataTable25.getClientUserId
      -- Beginner: result below is userId.
      dataTable25 = dataTable25()
      if iterator2 == dataTable25 and tableHelper2 > 0 then
        dataTable25 = CMG
        dataTable25 = dataTable25.getVehicleIdFromModel
        workValue2 = GetEntityModel
        dataTable = arg7
        workValue2, dataTable, iterator = workValue2(dataTable)
        dataTable25 = dataTable25(workValue2, dataTable, iterator)
        if dataTable25 then
          workValue2 = {}
          dataTable = dataTable25
          iterator = arg7
          workValue2[1] = dataTable
          workValue2[2] = iterator
          arg1[tableHelper2] = workValue2
        end
      end
    end
  end
  return arg1
end
function workValue28(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = true
  arg3 = SetTimeout
  arg4 = 5000
  function arg5()
    local arg12, arg22
    arg12 = false
    arg2 = arg12
  end
  arg3(arg4, arg5)
  while arg2 do
    arg3 = DoesEntityExist
    arg4 = arg1
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = SetLocalPlayerAsGhost
      arg4 = true
      arg3(arg4)
      arg3 = SetNetworkVehicleAsGhost
      arg4 = arg1
      arg5 = true
      arg3(arg4, arg5)
      arg3 = SetEntityAlpha
      arg4 = arg1
      arg5 = 220
      arg6 = false
      arg3(arg4, arg5, arg6)
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = 0
    arg3(arg4)
  end
  arg3 = SetLocalPlayerAsGhost
  arg4 = false
  arg3(arg4)
  arg3 = SetNetworkVehicleAsGhost
  arg4 = arg1
  arg5 = false
  arg3(arg4, arg5)
  arg3 = SetEntityAlpha
  arg4 = arg1
  arg5 = 255
  arg6 = false
  arg3(arg4, arg5, arg6)
  arg3 = ResetEntityAlpha
  arg4 = arg1
  arg3(arg4)
end
function workValue29(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2
  arg2 = dataTable19
  arg2 = arg2[arg1]
  if arg2 then
    return arg2
  end
  arg3 = tonumber
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = arg1
  end
  arg4 = dataTable19
  arg2 = arg4[arg3]
  if arg2 then
    return arg2
  end
  arg4 = dataTable21
  arg4 = arg4[arg1]
  if not arg4 then
    arg4 = dataTable21
    arg4 = arg4[arg3]
  end
  if not arg4 then
    arg5 = nil
    return arg5
  end
  arg5 = dataTable20
  arg5 = arg5[arg4]
  if arg5 then
    arg6 = arg5.vehicles
    if arg6 then
      goto flow_label_36
    end
  end
  arg6 = nil
  return arg6
  ::flow_label_36::
  arg6 = arg5.vehicles
  arg6 = arg6[arg1]
  if not arg6 then
    arg6 = arg5.vehicles
    arg6 = arg6[arg3]
  end
  if not arg6 then
    arg7 = nil
    return arg7
  end
  arg7 = {}
  arg7.uuid = arg1
  iterator2 = arg6.vehicleId
  arg7.vehicleId = iterator2
  iterator2 = CMG
  iterator2 = iterator2.getVehicleNameFromId
  tableHelper2 = arg6.vehicleId
  iterator2 = iterator2(tableHelper2)
  if not iterator2 then
    iterator2 = arg6.vehicleId
  end
  arg7.name = iterator2
  iterator2 = arg6.fuel
  arg7.fuel = iterator2
  return arg7
end
function workValue30(arg1, arg2)
  local arg3, arg4, arg5, arg6
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "table" == arg3 then
    arg3 = arg2.vehicle
    if arg3 then
      goto flow_label_11
    end
  end
  arg3 = nil
  return arg3
  ::flow_label_11::
  arg3 = arg2.vehicle
  arg4 = type
  arg5 = arg3
  arg4 = arg4(arg5)
  if "string" == arg4 then
    arg4 = string
    arg4 = arg4.lower
    arg5 = arg3
    arg4 = arg4(arg5)
    arg3 = arg4
  end
  arg4 = {}
  arg4.uuid = arg1
  arg4.vehicleId = arg3
  arg5 = CMG
  arg5 = arg5.getVehicleNameFromId
  arg6 = arg3
  arg5 = arg5(arg6)
  if not arg5 then
    arg5 = arg3
  end
  arg4.name = arg5
  arg5 = tonumber
  arg6 = arg2.fuel
  arg5 = arg5(arg6)
  if not arg5 then
    arg5 = 0
  end
  arg4.fuel = arg5
  return arg4
end
cmgCall14 = RegisterNetEvent
cmgCall15 = "0cd4f2f872"
-- Beginner: this function handles network event "0cd4f2f872".
function workValue31(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6, workValue13, mathHelper, numberValue7, numberValue8, flag7, flag8, flag9, workValue15, numberValue10, numberValue11, numberValue12
  iterator2 = true == arg7
  tableHelper2 = textValue14
  tableHelper2()
  tableHelper2 = GetVehiclePedIsIn
  dataTable25 = CMG
  dataTable25 = dataTable25.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  dataTable25 = dataTable25()
  workValue2 = false
  -- Beginner: result below is currentVehicle.
  tableHelper2 = tableHelper2(dataTable25, workValue2)
  dataTable25 = numberValue20
  if tableHelper2 == dataTable25 then
    tableHelper2 = DeleteEntity
    dataTable25 = numberValue20
    -- Beginner: Delete a GTA entity.
    tableHelper2(dataTable25)
  end
  tableHelper2 = tCMG
  tableHelper2 = tableHelper2.notify
  dataTable25 = "~g~Loading vehicle, please wait."
  -- Beginner: Show a notification to the player.
  tableHelper2(dataTable25)
  tableHelper2 = workValue29
  dataTable25 = arg1
  tableHelper2 = tableHelper2(dataTable25)
  if not tableHelper2 then
    dataTable25 = workValue30
    workValue2 = arg1
    dataTable = arg2
    dataTable25 = dataTable25(workValue2, dataTable)
    tableHelper2 = dataTable25
  end
  if not tableHelper2 then
    dataTable25 = tCMG
    dataTable25 = dataTable25.notify
    workValue2 = "~r~Could not load vehicle data for spawn."
    dataTable25(workValue2)
    return
  end
  dataTable25 = tableHelper2.vehicleId
  workValue2 = workValue27
  workValue2 = workValue2()
  workValue2 = workValue2[arg1]
  if not workValue2 then
    workValue2 = workValue27
    workValue2 = workValue2()
    dataTable = tonumber
    iterator = arg1
    dataTable = dataTable(iterator)
    workValue2 = workValue2[dataTable]
  end
  if nil ~= workValue2 then
    dataTable = DoesEntityExist
    iterator = workValue2[2]
    dataTable = dataTable(iterator)
    if dataTable then
      goto flow_label_379
    end
  end
  dataTable = CMG
  dataTable = dataTable.loadModel
  iterator = dataTable25
  dataTable = dataTable(iterator)
  if nil == dataTable then
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
  textValue12 = iterator
  iterator = nil
  if arg4 then
    stringHelper = CMG
    stringHelper = stringHelper.getPosition
    stringHelper = stringHelper()
    workValue7 = vector3
    stringHelper2 = 0.0
    cmgCall3 = 0.0
    tableHelper = 0.0
    workValue7 = workValue7(stringHelper2, cmgCall3, tableHelper)
    stringHelper2 = GetNthClosestVehicleNode
    cmgCall3 = stringHelper.x
    tableHelper = stringHelper.y
    workValue9 = stringHelper.z
    heading = 0
    workValue10 = workValue7
    cmgCall5 = 8
    numberValue5 = 8
    vehicle = 8
    stringHelper2, cmgCall3, tableHelper = stringHelper2(cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5, vehicle)
    workValue9 = GetNthClosestVehicleNode
    heading = stringHelper.x
    workValue10 = stringHelper.y
    cmgCall5 = stringHelper.z
    numberValue5 = 15
    workValue9, heading, workValue10 = workValue9(heading, workValue10, cmgCall5, numberValue5)
    cmgCall5 = GetPointOnRoadSide
    numberValue5 = stringHelper.x
    vehicle = stringHelper.y
    stringHelper3 = stringHelper.z
    numberValue6 = 0.0
    cmgCall5, numberValue5, vehicle = cmgCall5(numberValue5, vehicle, stringHelper3, numberValue6)
    stringHelper3 = tostring
    numberValue6 = numberValue5
    stringHelper3 = stringHelper3(numberValue6)
    if "vector3(0, 0, 0)" == stringHelper3 then
      goto flow_label_332
    end
    stringHelper3 = tostring
    numberValue6 = heading
    stringHelper3 = stringHelper3(numberValue6)
    if "vector3(0, 0, 0)" == stringHelper3 then
      goto flow_label_332
    end
    stringHelper3 = CMG
    stringHelper3 = stringHelper3.requestEntitySpawn
    numberValue6 = "garages_valet"
    workValue13 = arg1
    mathHelper = heading
    stringHelper3(numberValue6, workValue13, mathHelper)
    stringHelper3 = CMG
    stringHelper3 = stringHelper3.spawnVehicle
    numberValue6 = dataTable
    workValue13 = heading.x
    mathHelper = heading.y
    numberValue7 = heading.z
    numberValue7 = numberValue7 + 0.5
    numberValue8 = tableHelper or numberValue8
    if not tableHelper then
      numberValue8 = 0.0
    end
    flag7 = false
    flag8 = true
    flag9 = true
    stringHelper3 = stringHelper3(numberValue6, workValue13, mathHelper, numberValue7, numberValue8, flag7, flag8, flag9)
    iterator = stringHelper3
    stringHelper3 = TriggerServerEvent
    numberValue6 = "1e0bbaf6cd"
    workValue13 = dataTable25
    mathHelper = "garage_valet"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
    stringHelper3(numberValue6, workValue13, mathHelper)
    stringHelper3 = CMG
    stringHelper3 = stringHelper3.loadModel
    numberValue6 = 1142162924
    -- Beginner: Request/load a GTA model before spawning or applying it.
    stringHelper3(numberValue6)
    stringHelper3 = SendNUIMessage
    numberValue6 = {}
    workValue13 = "MPCT_AKAA_0"
    mathHelper = math
    mathHelper = mathHelper.random
    numberValue7 = 1
    numberValue8 = 5
    mathHelper = mathHelper(numberValue7, numberValue8)
    workValue13 = workValue13 .. mathHelper
    numberValue6.transactionType = workValue13
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    stringHelper3(numberValue6)
    stringHelper3 = CreatePedInsideVehicle
    numberValue6 = iterator
    workValue13 = 4
    mathHelper = 1142162924
    numberValue7 = -1
    numberValue8 = false
    flag7 = false
    stringHelper3 = stringHelper3(numberValue6, workValue13, mathHelper, numberValue7, numberValue8, flag7)
    numberValue6 = SetModelAsNoLongerNeeded
    workValue13 = 1142162924
    numberValue6(workValue13)
    numberValue6 = TaskVehicleDriveToCoord
    workValue13 = stringHelper3
    mathHelper = iterator
    numberValue7 = numberValue5.x
    numberValue8 = numberValue5.y
    flag7 = numberValue5.z
    flag8 = 15.0
    flag9 = 1.0
    workValue15 = dataTable
    numberValue10 = 786603
    numberValue11 = 5.0
    numberValue12 = 0.0
    numberValue6(workValue13, mathHelper, numberValue7, numberValue8, flag7, flag8, flag9, workValue15, numberValue10, numberValue11, numberValue12)
    numberValue6 = cmgCall13
    workValue13 = iterator
    numberValue6(workValue13)
    numberValue6 = SetTimeout
    workValue13 = 5000
    function mathHelper()
      local arg12, arg22, arg32, arg42
      while true do
        arg12 = GetEntitySpeed
        arg22 = iterator
        -- Beginner: result below is speed.
        arg12 = arg12(arg22)
        if not (arg12 > 5.0) then
          break
        end
        arg12 = Citizen
        arg12 = arg12.Wait
        arg22 = 500
        arg12(arg22)
      end
      arg12 = TaskLeaveVehicle
      arg22 = stringHelper3
      arg32 = iterator
      arg42 = 64
      arg12(arg22, arg32, arg42)
      arg12 = TaskWanderStandard
      arg22 = stringHelper3
      arg32 = 10.0
      arg42 = 10
      arg12(arg22, arg32, arg42)
      arg12 = Wait
      arg22 = 10000
      arg12(arg22)
      arg12 = DeletePed
      arg22 = stringHelper3
      arg12(arg22)
    end
    numberValue6(workValue13, mathHelper)
    numberValue6 = print
    workValue13 = "[CMG] Spawned vehicle with spawncode:"
    mathHelper = tostring
    numberValue7 = dataTable25
    mathHelper = mathHelper(numberValue7)
    workValue13 = workValue13 .. mathHelper
    numberValue6(workValue13)
    numberValue6 = CMG
    numberValue6 = numberValue6.getClientUserId
    -- Beginner: result below is userId.
    numberValue6 = numberValue6()
    if numberValue6 then
      workValue13 = DecorSetInt
      mathHelper = iterator
      numberValue7 = "ac76c9d452"
      numberValue8 = numberValue6
      workValue13(mathHelper, numberValue7, numberValue8)
    end
    workValue13 = DecorSetInt
    mathHelper = iterator
    numberValue7 = "0a6cf607ed"
    numberValue8 = arg1
    workValue13(mathHelper, numberValue7, numberValue8)
    workValue13 = CMG
    workValue13 = workValue13.setVehicleFuel
    mathHelper = iterator
    numberValue7 = tableHelper2.fuel
    workValue13(mathHelper, numberValue7)
    while true do
      workValue13 = CMG
      workValue13 = workValue13.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      workValue13 = workValue13()
      if workValue13 == iterator then
        break
      end
      workValue13 = Wait
      mathHelper = 100
      workValue13(mathHelper)
    end
    workValue13 = tCMG
    workValue13 = workValue13.applyModsOnVehicle
    mathHelper = arg2
    numberValue7 = arg1
    numberValue8 = iterator
    workValue13(mathHelper, numberValue7, numberValue8)
    workValue13 = workValue26
    mathHelper = arg3
    numberValue7 = iterator
    numberValue8 = arg1
    workValue13(mathHelper, numberValue7, numberValue8)
    workValue13 = table
    workValue13 = workValue13.insert
    mathHelper = dataTable3
    numberValue7 = iterator
    workValue13(mathHelper, numberValue7)
  else
    stringHelper = arg5 or stringHelper
    if not arg5 then
      stringHelper = CMG
      stringHelper = stringHelper.getPosition
      stringHelper = stringHelper()
    end
    workValue7 = CMG
    workValue7 = workValue7.requestEntitySpawn
    stringHelper2 = "garages_normal"
    cmgCall3 = arg1
    workValue7(stringHelper2, cmgCall3)
    workValue7 = CMG
    workValue7 = workValue7.spawnVehicle
    stringHelper2 = dataTable
    cmgCall3 = stringHelper.x
    tableHelper = stringHelper.y
    workValue9 = stringHelper.z
    workValue9 = workValue9 + 0.5
    heading = GetEntityHeading
    workValue10 = PlayerPedId
    workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6, workValue13, mathHelper, numberValue7, numberValue8, flag7, flag8, flag9, workValue15, numberValue10, numberValue11, numberValue12 = workValue10()
    -- Beginner: result below is heading.
    heading = heading(workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6, workValue13, mathHelper, numberValue7, numberValue8, flag7, flag8, flag9, workValue15, numberValue10, numberValue11, numberValue12)
    workValue10 = true
    cmgCall5 = true
    numberValue5 = true
    workValue7 = workValue7(stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5)
    iterator = workValue7
    workValue7 = TriggerServerEvent
    stringHelper2 = "1e0bbaf6cd"
    cmgCall3 = dataTable25
    tableHelper = "garage"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
    workValue7(stringHelper2, cmgCall3, tableHelper)
    workValue7 = cmgCall13
    stringHelper2 = iterator
    workValue7(stringHelper2)
    workValue7 = print
    stringHelper2 = "[CMG] Spawned vehicle with spawncode:"
    cmgCall3 = tostring
    tableHelper = dataTable25
    cmgCall3 = cmgCall3(tableHelper)
    stringHelper2 = stringHelper2 .. cmgCall3
    workValue7(stringHelper2)
    workValue7 = CMG
    workValue7 = workValue7.getClientUserId
    -- Beginner: result below is userId.
    workValue7 = workValue7()
    if workValue7 then
      stringHelper2 = DecorSetInt
      cmgCall3 = iterator
      tableHelper = "ac76c9d452"
      workValue9 = workValue7
      stringHelper2(cmgCall3, tableHelper, workValue9)
    end
    stringHelper2 = DecorSetInt
    cmgCall3 = iterator
    tableHelper = "0a6cf607ed"
    workValue9 = arg1
    stringHelper2(cmgCall3, tableHelper, workValue9)
    stringHelper2 = CMG
    stringHelper2 = stringHelper2.setVehicleFuel
    cmgCall3 = iterator
    tableHelper = tableHelper2.fuel
    stringHelper2(cmgCall3, tableHelper)
    stringHelper2 = Citizen
    stringHelper2 = stringHelper2.CreateThreadNow
    function cmgCall3()
      local arg12, arg22
      arg12 = workValue28
      arg22 = iterator
      arg12(arg22)
    end
    stringHelper2(cmgCall3)
    stringHelper2 = tCMG
    stringHelper2 = stringHelper2.applyModsOnVehicle
    cmgCall3 = arg2
    tableHelper = arg1
    workValue9 = iterator
    stringHelper2(cmgCall3, tableHelper, workValue9)
    stringHelper2 = workValue26
    cmgCall3 = arg3
    tableHelper = iterator
    workValue9 = arg1
    stringHelper2(cmgCall3, tableHelper, workValue9)
    stringHelper2 = table
    stringHelper2 = stringHelper2.insert
    cmgCall3 = dataTable3
    tableHelper = iterator
    stringHelper2(cmgCall3, tableHelper)
    if iterator2 then
      stringHelper2 = Citizen
      stringHelper2 = stringHelper2.CreateThread
      function cmgCall3()
        local arg12, arg22, arg32, arg42, workValue18
        arg12 = Citizen
        arg12 = arg12.Wait
        arg22 = 500
        arg12(arg22)
        arg12 = DoesEntityExist
        arg22 = iterator
        arg12 = arg12(arg22)
        if arg12 then
          arg12 = CMG
          arg12 = arg12.enterRemoteLsCustomsFromGarage
          arg22 = iterator
          arg32 = vector3Builder
          arg42 = GetEntityHeading
          workValue18 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workValue18 = workValue18()
          arg42, workValue18 = arg42(workValue18)
          arg12(arg22, arg32, arg42, workValue18)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      stringHelper2(cmgCall3)
    end
  end
  ::flow_label_332::
  stringHelper = SetModelAsNoLongerNeeded
  workValue7 = dataTable
  stringHelper(workValue7)
  if arg6 then
    stringHelper = Citizen
    stringHelper = stringHelper.CreateThread
    function workValue7()
      local arg12, arg22, arg32, arg42, workValue18, flag11
      arg12 = CMG
      arg12 = arg12.notifyPicture
      arg22 = "polnotification"
      arg32 = "lockpick"
      arg42 = "~y~Your vehicle has been lockpicked since it was last taken out of the garage."
      workValue18 = "Garage Notification"
      flag11 = "~r~Lockpick Alert"
      arg12(arg22, arg32, arg42, workValue18, flag11)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    stringHelper(workValue7)
  end
  while true do
    stringHelper = DoesEntityExist
    workValue7 = iterator
    stringHelper = stringHelper(workValue7)
    if not stringHelper then
      break
    end
    stringHelper = CMG
    stringHelper = stringHelper.getVehicleFuel
    workValue7 = iterator
    stringHelper = stringHelper(workValue7)
    workValue7 = tableHelper2.fuel
    if workValue7 ~= stringHelper then
      workValue7 = TriggerServerEvent
      stringHelper2 = "486c23d750"
      cmgCall3 = arg1
      tableHelper = math
      tableHelper = tableHelper.floor
      workValue9 = stringHelper * 1000
      tableHelper = tableHelper(workValue9)
      tableHelper = tableHelper / 1000
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "486c23d750".
      workValue7(stringHelper2, cmgCall3, tableHelper)
      tableHelper2.fuel = stringHelper
      workValue7 = SetEntityInvincible
      stringHelper2 = iterator
      cmgCall3 = false
      workValue7(stringHelper2, cmgCall3)
      workValue7 = SetEntityCanBeDamaged
      stringHelper2 = iterator
      cmgCall3 = true
      workValue7(stringHelper2, cmgCall3)
    end
    workValue7 = Wait
    stringHelper2 = 60000
    workValue7(stringHelper2)
  end
  goto flow_label_383
  ::flow_label_379::
  dataTable = tCMG
  dataTable = dataTable.notify
  iterator = "This vehicle is already out."
  -- Beginner: Show a notification to the player.
  dataTable(iterator)
  ::flow_label_383::
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0cd4f2f872".
cmgCall14(cmgCall15, workValue31)
cmgCall14 = CMG
function cmgCall15(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2
  arg2 = fullPlayerListData
  arg2 = arg2[arg1]
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = fullPlayerListData
  arg2 = arg2[arg1]
  arg2 = arg2[1]
  if not arg2 then
    arg3 = false
    return arg3
  end
  arg3 = GetPlayerFromServerId
  arg4 = arg2
  -- Beginner: result below is playerIndex.
  arg3 = arg3(arg4)
  if arg3 < 0 then
    arg4 = false
    return arg4
  end
  arg4 = GetPlayerPed
  arg5 = arg3
  -- Beginner: result below is playerPed.
  arg4 = arg4(arg5)
  if 0 == arg4 then
    arg5 = false
    return arg5
  end
  arg5 = CMG
  arg5 = arg5.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg5 = arg5()
  arg6 = GetEntityCoords
  arg7 = arg4
  iterator2 = true
  -- Beginner: result below is entityCoords.
  arg6 = arg6(arg7, iterator2)
  arg5 = arg5 - arg6
  arg5 = #arg5
  arg5 = arg5 < 5.0
  return arg5
end
cmgCall14.isUserOnlineAndNearby = cmgCall15
function cmgCall14()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = flag4
  if arg1 then
    arg1 = IsControlJustPressed
    arg2 = 0
    arg3 = 177
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = DeleteVehicle
      arg2 = numberValue3
      arg1(arg2)
      arg1 = 0
      numberValue3 = arg1
      arg1 = 0
      numberValue4 = arg1
      arg1 = false
      flag4 = arg1
      arg1 = DestroyCam
      arg2 = cmgCall11
      arg3 = false
      arg1(arg2, arg3)
      arg1 = RenderScriptCams
      arg2 = false
      arg3 = false
      arg4 = 1
      arg5 = true
      arg6 = true
      arg1(arg2, arg3, arg4, arg5, arg6)
      arg1 = 0
      cmgCall11 = arg1
      arg1 = SetFocusEntity
      arg2 = GetPlayerPed
      arg3 = PlayerId
      arg3, arg4, arg5, arg6 = arg3()
      arg2, arg3, arg4, arg5, arg6 = arg2(arg3, arg4, arg5, arg6)
      arg1(arg2, arg3, arg4, arg5, arg6)
      arg1 = SetEntityAlpha
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = 255
      arg4 = false
      arg1(arg2, arg3, arg4)
      arg1 = FreezeEntityPosition
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      arg1(arg2, arg3)
      arg1 = SetEntityCollision
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = true
      arg4 = true
      arg1(arg2, arg3, arg4)
    end
  end
  arg1 = workValue19
  if arg1 then
    arg1 = workValue19.sellerUserId
    arg2 = CMG
    arg2 = arg2.isUserOnlineAndNearby
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = nil
      workValue19 = arg2
      arg2 = TriggerServerEvent
      arg3 = "17e8eb1c8c"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "17e8eb1c8c".
      arg2(arg3)
      arg2 = RageUI
      arg2 = arg2.CloseAll
      arg2()
      return
    end
  end
end
cmgCall15 = CMG
cmgCall15 = cmgCall15.createThreadOnTick
workValue31 = cmgCall14
textValue19 = "Preview Garage"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall15(workValue31, textValue19)
function cmgCall15(arg1)
  local arg2
  arg2 = "surprise" == arg1
  return arg2
end
function workValue31(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper
  arg2 = pairs
  arg3 = workValue.garages
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = pairs
    tableHelper2 = arg7
    iterator2, tableHelper2, dataTable25, workValue2 = iterator2(tableHelper2)
    for dataTable in iterator2, tableHelper2, dataTable25, workValue2 do
      if "_config" ~= dataTable and dataTable == arg1 then
        iterator = eventRegistration4
        stringHelper = arg6
        iterator = iterator(stringHelper)
        if iterator then
          iterator = textValue4
          stringHelper = arg7._config
          stringHelper = stringHelper.type
          if iterator == stringHelper then
            iterator = true
            return iterator
          end
        end
      end
    end
  end
  arg2 = false
  return arg2
end
function textValue19()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25
  arg1 = {}
  arg2 = pairs
  arg3 = dataTable19
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = table
    iterator2 = iterator2.insert
    tableHelper2 = arg1
    dataTable25 = {}
    dataTable25.uuid = arg6
    dataTable25.info = arg7
    iterator2(tableHelper2, dataTable25)
  end
  arg2 = table
  arg2 = arg2.sort
  arg3 = arg1
  function arg4(arg12, arg22)
    local arg32, arg42
    arg32 = arg12.info
    arg32 = arg32.name
    arg42 = arg22.info
    arg42 = arg42.name
    arg32 = arg32 < arg42
    return arg32
  end
  arg2(arg3, arg4)
  return arg1
end
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "mainmenu"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateMenu
textValue22 = ""
textValue23 = ""
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuWidth
rageUiCall6 = rageUiCall6()
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuHeight
rageUiCall7 = rageUiCall7()
rageUiCall8 = "cmg_garageui"
textValue24 = "cmg_garageui"
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
textValue20 = workValue32
workValue32 = workValue32.Get
textValue21 = "garages"
rageUiCall5 = "mainmenu"
-- Beginner: result below is menu.
workValue32 = workValue32(textValue20, textValue21, rageUiCall5)
textValue20 = workValue32
workValue32 = workValue32.SetSubtitle
textValue21 = "~b~Garages"
workValue32(textValue20, textValue21)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "rentmanager"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "mainmenu"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Rent Management Menu"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "rentedout"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "rentmanager"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Vehicles Rented Out"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "rentedin"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "rentmanager"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Vehicles Renting"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "paymentplanmanager"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "mainmenu"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Payment Plan Management Menu"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "paymentplanout"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "paymentplanmanager"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Vehicles Payment Planned Out"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "paymentplanin"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "paymentplanmanager"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Vehicles Payment Planned In"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "paymentplansummary"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "paymentplanmanager"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Payment Plan Summary"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "paymentplaninfo"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "paymentplanin"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Vehicles Payment Plan Info"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "recentlogs"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "mainmenu"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Recent Logs"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "rentedinfo"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "rentedin"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Vehicles Rent Info"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "listgarages"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "mainmenu"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Garage Management Menu"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "vehiclemenu"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "listgarages"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Vehicle Management Menu"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "spawnmenu"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "vehiclemenu"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Spawn Management Menu"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "paymentplan"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "spawnmenu"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Payment Plan Menu"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "paymentplanoffer"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateMenu
textValue22 = ""
textValue23 = "~b~Payment Plan Offer"
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuWidth
rageUiCall6 = rageUiCall6()
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuHeight
rageUiCall7 = rageUiCall7()
rageUiCall8 = "cmg_garageui"
textValue24 = "cmg_garageui"
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "customfolders"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "listgarages"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Custom Folders Management Menu"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "settings"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "mainmenu"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Settings"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "viewall"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "settings"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~All Vehicles"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "rentonlymenu"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue22 = RMenu
textValue23 = textValue22
textValue22 = textValue22.Get
rageUiCall6 = "garages"
rageUiCall7 = "viewall"
-- Beginner: result below is menu.
textValue22 = textValue22(textValue23, rageUiCall6, rageUiCall7)
textValue23 = ""
rageUiCall6 = "~b~Vehicle Management Menu"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall8()
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
workValue32 = workValue32.Add
textValue20 = "garages"
textValue21 = "confirm"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateMenu
textValue22 = ""
textValue23 = ""
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuWidth
rageUiCall6 = rageUiCall6()
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuHeight
rageUiCall7 = rageUiCall7()
rageUiCall8 = "cmg_garageui"
textValue24 = "cmg_garageui"
rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall5(textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24)
workValue32(textValue20, textValue21, rageUiCall5, textValue22, textValue23, rageUiCall6, rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
workValue32 = RMenu
textValue20 = workValue32
workValue32 = workValue32.Get
textValue21 = "garages"
rageUiCall5 = "confirm"
-- Beginner: result below is menu.
workValue32 = workValue32(textValue20, textValue21, rageUiCall5)
textValue20 = workValue32
workValue32 = workValue32.SetSubtitle
textValue21 = "~b~Are you sure you want to DELETE this vehicle?"
workValue32(textValue20, textValue21)
function workValue32()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7
  arg1 = RageUI
  arg1 = arg1.ButtonWithStyle
  arg2 = "[Create Custom Folder]"
  arg3 = ""
  arg4 = {}
  arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
  arg5 = true
  function arg6(arg12, arg22, arg32)
    local arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag
    if arg32 then
      arg42 = CMG
      arg42 = arg42.GetRageInputText
      workValue18 = "Enter folder name:"
      arg42 = arg42(workValue18)
      if "" ~= arg42 then
        workValue18 = dataTable9
        workValue18 = workValue18[arg42]
        if nil == workValue18 then
          workValue18 = pairs
          flag11 = dataTable9
          workValue18, flag11, flag13, flag14 = workValue18(flag11)
          for cmgCall16 in workValue18, flag11, flag13, flag14 do
            flag17 = string
            flag17 = flag17.lower
            numberValue2 = cmgCall16
            flag17 = flag17(numberValue2)
            numberValue2 = string
            numberValue2 = numberValue2.lower
            flag = arg42
            numberValue2 = numberValue2(flag)
            if flag17 == numberValue2 then
              flag17 = notify
              numberValue2 = "~r~A folder with this name already exists."
              -- Beginner: Show a notification to the player.
              flag17(numberValue2)
              return
            end
          end
          workValue18 = CMG
          workValue18 = workValue18.createCustomFolder
          flag11 = arg42
          workValue18(flag11)
        else
          workValue18 = tCMG
          workValue18 = workValue18.notify
          flag11 = "~r~Folder already exists."
          -- Beginner: Show a notification to the player.
          workValue18(flag11)
        end
      else
        workValue18 = tCMG
        workValue18 = workValue18.notify
        flag11 = "~r~Invalid folder name."
        workValue18(flag11)
      end
    end
  end
  arg7 = RMenu
  iterator2 = arg7
  arg7 = arg7.Get
  tableHelper2 = "garages"
  dataTable25 = "customfolders"
  arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7 = arg7(iterator2, tableHelper2, dataTable25)
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7)
  arg1 = RageUI
  arg1 = arg1.ButtonWithStyle
  arg2 = "[Delete Custom Folder]"
  arg3 = ""
  arg4 = {}
  arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
  arg5 = true
  function arg6(arg12, arg22, arg32)
    local arg42, workValue18, flag11
    if arg32 then
      arg42 = CMG
      arg42 = arg42.GetRageInputText
      workValue18 = "Enter folder name:"
      arg42 = arg42(workValue18)
      if "" ~= arg42 then
        workValue18 = CMG
        workValue18 = workValue18.deleteCustomFolder
        flag11 = arg42
        workValue18(flag11)
      else
        workValue18 = tCMG
        workValue18 = workValue18.notify
        flag11 = "~r~Invalid folder name."
        -- Beginner: Show a notification to the player.
        workValue18(flag11)
      end
    end
  end
  arg7 = RMenu
  iterator2 = arg7
  arg7 = arg7.Get
  tableHelper2 = "garages"
  dataTable25 = "customfolders"
  arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7 = arg7(iterator2, tableHelper2, dataTable25)
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7)
  arg1 = pairsByKeys
  arg2 = dataTable9
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5 in arg1, arg2, arg3, arg4 do
    arg6 = RageUI
    arg6 = arg6.ButtonWithStyle
    arg7 = arg5
    iterator2 = ""
    tableHelper2 = {}
    tableHelper2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataTable25 = true
    function workValue2(arg12, arg22, arg32)
      local arg42
      if arg32 then
        arg42 = nil
        workValue34 = arg42
        arg42 = arg5
        workValue12 = arg42
      end
    end
    dataTable = RMenu
    iterator = dataTable
    dataTable = dataTable.Get
    stringHelper = "garages"
    workValue7 = "vehiclemenu"
    dataTable, iterator, stringHelper, workValue7 = dataTable(iterator, stringHelper, workValue7)
    arg6(arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7)
  end
end
function textValue20(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper
  arg4 = arg1[arg2]
  arg5 = 10000
  arg6 = pairs
  arg7 = arg1
  arg6, arg7, iterator2, tableHelper2 = arg6(arg7)
  for dataTable25, workValue2 in arg6, arg7, iterator2, tableHelper2 do
    if dataTable25 ~= arg2 then
      if arg3 then
        dataTable = 1
        if dataTable then
          goto flow_label_15
        end
      end
      dataTable = -1
      ::flow_label_15::
      dataTable = workValue2 + dataTable
      iterator = math
      iterator = iterator.abs
      stringHelper = arg1[arg2]
      stringHelper = stringHelper - dataTable
      iterator = iterator(stringHelper)
      if arg3 then
        stringHelper = arg1[arg2]
        if dataTable > stringHelper then
          goto flow_label_33
        end
      end
      if not arg3 then
        stringHelper = arg1[arg2]
        ::flow_label_33::
        if dataTable < stringHelper and arg5 > iterator then
          arg4 = dataTable
          arg5 = iterator
        end
      end
    end
  end
  return arg4
end
function textValue21(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7
  if not arg2 then
    arg3 = dataTable11
    arg4 = "hideCustomFolderVehiclesFromOriginalGarages"
    arg3 = arg3[arg4]
    if arg3 then
      arg3 = CMG
      arg3 = arg3.isVehicleInAnyCustomFolder
      arg4 = arg1.uuid
      arg3 = arg3(arg4)
      if arg3 then
        return
      end
    end
  end
  arg3 = cmgCall15
  arg4 = arg1.vehicleId
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = CMG
    arg3 = arg3.hasClientPermission
    arg4 = "admin.tickets"
    arg3 = arg3(arg4)
    if not arg3 then
      return
    end
  end
  arg3 = ""
  arg4 = arg1.fuel
  if arg4 <= 20 then
    arg3 = "~r~"
  else
    arg4 = arg1.fuel
    if arg4 <= 50 then
      arg3 = "~y~"
    else
      arg4 = arg1.fuel
      if arg4 <= 100 then
        arg3 = "~g~"
      end
    end
  end
  arg5 = arg1.uuid
  arg4 = dataTable12
  arg4 = arg4[arg5]
  if not arg4 then
    arg4 = arg1.name
  end
  arg5 = arg3
  arg6 = "Fuel "
  arg7 = tostring
  iterator2 = math
  iterator2 = iterator2.floor
  tableHelper2 = arg1.fuel
  iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7 = iterator2(tableHelper2)
  arg7 = arg7(iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7)
  iterator2 = "%"
  arg5 = arg5 .. arg6 .. arg7 .. iterator2
  arg6 = workValue16
  if arg6 then
    arg6 = arg5
    arg7 = " | Boot "
    iterator2 = tostring
    tableHelper2 = workValue16
    tableHelper2 = tableHelper2[1]
    iterator2 = iterator2(tableHelper2)
    tableHelper2 = "/"
    dataTable25 = tostring
    workValue2 = workValue16
    workValue2 = workValue2[2]
    dataTable25 = dataTable25(workValue2)
    workValue2 = "kg"
    arg6 = arg6 .. arg7 .. iterator2 .. tableHelper2 .. dataTable25 .. workValue2
    arg5 = arg6
    arg6 = workValue16
    arg6 = arg6[3]
    if arg6 then
      arg6 = arg5
      arg7 = " | Has Dirty Cash"
      arg6 = arg6 .. arg7
      arg5 = arg6
    end
  end
  arg6 = RageUI
  arg6 = arg6.ButtonWithStyle
  arg7 = arg4
  iterator2 = arg5
  tableHelper2 = {}
  tableHelper2.RightLabel = "\226\134\146\226\134\146\226\134\146"
  dataTable25 = true
  function workValue2(arg12, arg22, arg32)
    local arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2
    if arg22 then
      arg42 = numberValue3
      if 0 ~= arg42 then
        arg42 = numberValue4
        workValue18 = arg1.vehicleId
        if arg42 == workValue18 then
          goto flow_label_23
        end
      end
      arg42 = flag5
      if not arg42 then
        arg42 = DeleteVehicle
        workValue18 = numberValue3
        arg42(workValue18)
        arg42 = true
        flag5 = arg42
        arg42 = workValue25
        workValue18 = arg1.vehicleId
        arg42(workValue18)
        arg42 = arg1.vehicleId
        numberValue4 = arg42
      end
      ::flow_label_23::
      arg42 = numberValue14
      workValue18 = arg1.uuid
      if arg42 ~= workValue18 then
        arg42 = arg1.uuid
        numberValue14 = arg42
        arg42 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg42 = arg42()
        numberValue13 = arg42
        arg42 = nil
        workValue16 = arg42
      end
      arg42 = numberValue13
      if 0 ~= arg42 then
        arg42 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg42 = arg42()
        workValue18 = numberValue13
        arg42 = arg42 - workValue18
        workValue18 = 250
        if arg42 > workValue18 then
          arg42 = 0
          numberValue13 = arg42
          arg42 = nil
          workValue16 = arg42
          arg42 = TriggerServerEvent
          workValue18 = "a5ea65d755"
          flag11 = arg1.vehicleId
          flag13 = arg1.uuid
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a5ea65d755".
          arg42(workValue18, flag11, flag13)
        end
      end
      arg42 = arg2
      if arg42 then
        arg42 = IsControlPressed
        workValue18 = 0
        flag11 = 209
        arg42 = arg42(workValue18, flag11)
        if arg42 then
          workValue18 = workValue12
          arg42 = dataTable9
          arg42 = arg42[workValue18]
          workValue18 = nil
          flag11 = IsControlJustPressed
          flag13 = 0
          flag14 = 188
          flag11 = flag11(flag13, flag14)
          if flag11 then
            workValue18 = true
          else
            flag11 = IsControlJustPressed
            flag13 = 0
            flag14 = 187
            flag11 = flag11(flag13, flag14)
            if flag11 then
              workValue18 = false
            end
          end
          flag11 = type
          flag13 = workValue18
          flag11 = flag11(flag13)
          if "boolean" == flag11 then
            flag11 = textValue20
            flag13 = arg42
            flag14 = arg1.uuid
            cmgCall16 = workValue18
            flag11 = flag11(flag13, flag14, cmgCall16)
            flag13 = arg1.uuid
            flag13 = arg42[flag13]
            if flag11 ~= flag13 then
              flag13 = pairs
              flag14 = arg42
              flag13, flag14, cmgCall16, flag17 = flag13(flag14)
              for numberValue2, flag in flag13, flag14, cmgCall16, flag17 do
                if not workValue18 or not (flag >= flag11) then
                  if not (not workValue18 and flag <= flag11) then
                    goto flow_label_120
                  end
                  flag2 = arg1.uuid
                  if numberValue2 == flag2 then
                    goto flow_label_120
                  end
                end
                if workValue18 then
                  flag2 = 1
                  if flag2 then
                    goto flow_label_117
                  end
                end
                flag2 = -1
                ::flow_label_117::
                flag2 = flag + flag2
                arg42[numberValue2] = flag2
                ::flow_label_120::
              end
              flag13 = arg1.uuid
              arg42[flag13] = flag11
              flag13 = CMG
              flag13 = flag13.saveCustomFolders
              flag13()
            end
          end
        end
      end
    end
    if arg32 then
      arg42 = arg1.vehicleId
      textValue15 = arg42
      arg42 = arg1.uuid
      numberValue23 = arg42
      workValue18 = arg1.vehicleId
      arg42 = dataTable16
      arg42 = arg42[workValue18]
      if not arg42 then
        arg42 = TriggerServerEvent
        workValue18 = "e7f85609de"
        flag11 = arg1.vehicleId
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7f85609de".
        arg42(workValue18, flag11)
      end
      workValue18 = arg1.uuid
      arg42 = dataTable17
      arg42 = arg42[workValue18]
      if not arg42 then
        arg42 = TriggerServerEvent
        workValue18 = "8f66b92a5f"
        flag11 = arg1.uuid
        arg42(workValue18, flag11)
      end
      arg42 = arg4
      textValue16 = arg42
      arg42 = arg2
      if not arg42 then
        arg42 = nil
        workValue12 = arg42
      end
    end
  end
  dataTable = RMenu
  iterator = dataTable
  dataTable = dataTable.Get
  stringHelper = "garages"
  workValue7 = "spawnmenu"
  dataTable, iterator, stringHelper, workValue7 = dataTable(iterator, stringHelper, workValue7)
  -- Beginner: Draw a selectable RageUI menu button.
  arg6(arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7)
end
rageUiCall5 = {}
function textValue22(arg1)
  local arg2, arg3, arg4
  arg2 = rageUiCall5
  arg2[arg1] = true
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = rageUiCall5
  arg3[arg1] = nil
  if not arg2 then
    arg3 = false
    return arg3
  end
  arg3 = SetModelAsNoLongerNeeded
  arg4 = arg2
  arg3(arg4)
  arg3 = IsModelValid
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = HasModelLoaded
    arg4 = arg2
    arg3 = arg3(arg4)
  end
  return arg3
end
function textValue23(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2
  arg3 = workValue29
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    arg4 = tCMG
    arg4 = arg4.notify
    arg5 = "~r~Vehicle data is out of date. Close and reopen the garage menu."
    -- Beginner: Show a notification to the player.
    arg4(arg5)
    return
  end
  arg5 = arg3.vehicleId
  arg4 = rageUiCall5
  arg4 = arg4[arg5]
  if arg4 then
    arg4 = notify
    arg5 = "~r~Vehicle is being downloaded, please wait."
    arg4(arg5)
    return
  end
  arg4 = textValue22
  arg5 = arg3.vehicleId
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = TriggerServerEvent
    arg5 = "3cee06ce88"
    arg6 = arg3.vehicleId
    arg7 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3cee06ce88".
    arg4(arg5, arg6, arg7)
    return
  end
  arg4 = workValue27
  arg4 = arg4()
  arg4 = arg4[arg1]
  if nil ~= arg4 then
    arg5 = DoesEntityExist
    arg6 = arg4[2]
    arg5 = arg5(arg6)
    if arg5 then
      goto flow_label_47
    end
  end
  arg5 = TriggerServerEvent
  arg6 = "0cd4f2f872"
  arg7 = arg1
  iterator2 = arg2
  arg5(arg6, arg7, iterator2)
  goto flow_label_51
  ::flow_label_47::
  arg5 = tCMG
  arg5 = arg5.notify
  arg6 = "Vehicle is already out!"
  -- Beginner: Show a notification to the player.
  arg5(arg6)
  ::flow_label_51::
end
rageUiCall6 = RageUI
rageUiCall6 = rageUiCall6.CreateWhile
rageUiCall7 = 1.0
rageUiCall8 = RMenu
textValue24 = rageUiCall8
rageUiCall8 = rageUiCall8.Get
textValue25 = "garages"
textValue26 = "mainmenu"
-- Beginner: result below is menu.
rageUiCall8 = rageUiCall8(textValue24, textValue25, textValue26)
textValue24 = nil
function textValue25()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Garages"
    arg32 = textValue16
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "listgarages"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Store Vehicle"
    arg32 = textValue16
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12, cmgCall12, textValue17
      if arg33 then
        vehicle2 = GetVehiclePedIsIn
        cmgCall6 = CMG
        cmgCall6 = cmgCall6.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgCall6 = cmgCall6()
        flag12 = false
        -- Beginner: result below is currentVehicle.
        vehicle2 = vehicle2(cmgCall6, flag12)
        cmgCall6 = DoesEntityExist
        flag12 = vehicle2
        cmgCall6 = cmgCall6(flag12)
        if cmgCall6 then
          cmgCall6 = DecorGetInt
          flag12 = vehicle2
          cmgCall12 = "ac76c9d452"
          cmgCall6 = cmgCall6(flag12, cmgCall12)
          flag12 = DecorGetInt
          cmgCall12 = vehicle2
          textValue17 = "0a6cf607ed"
          flag12 = flag12(cmgCall12, textValue17)
          cmgCall12 = CMG
          cmgCall12 = cmgCall12.getClientUserId
          -- Beginner: result below is userId.
          cmgCall12 = cmgCall12()
          if cmgCall6 == cmgCall12 and flag12 > 0 then
            workValue14 = flag12
          end
          cmgCall12 = DeleteEntity
          textValue17 = vehicle2
          -- Beginner: Delete a GTA entity.
          cmgCall12(textValue17)
        end
      end
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "mainmenu"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
    arg12 = workValue14
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Spawn Last Vehicle"
      arg32 = "Spawns the last owned vehicle that was spawned or stored via the garage menu"
      arg42 = {}
      arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue18 = true
      function flag11(arg13, arg23, arg33)
        local vehicle2, cmgCall6, flag12
        if arg33 then
          vehicle2 = CMG
          vehicle2 = vehicle2.getPlayerCombatTimer
          vehicle2 = vehicle2()
          if vehicle2 > 0 then
            vehicle2 = notify
            cmgCall6 = "~r~You can not spawn a vehicle with a combat timer."
            -- Beginner: Show a notification to the player.
            vehicle2(cmgCall6)
            return
          end
          vehicle2 = CMG
          vehicle2 = vehicle2.isInCustomRace
          vehicle2 = vehicle2()
          if vehicle2 then
            vehicle2 = notify
            cmgCall6 = "~r~You can not spawn new vehicles in a race."
            vehicle2(cmgCall6)
            return
          end
          vehicle2 = CMG
          vehicle2 = vehicle2.getVehicleInfoFromUUID
          cmgCall6 = workValue14
          vehicle2 = vehicle2(cmgCall6)
          if vehicle2 then
            cmgCall6 = vehicle2.vehicleId
            if cmgCall6 then
              cmgCall6 = workValue31
              flag12 = vehicle2.vehicleId
              cmgCall6 = cmgCall6(flag12)
              if cmgCall6 then
                cmgCall6 = Citizen
                cmgCall6 = cmgCall6.CreateThreadNow
                function flag12()
                  local arg14, cmgCall4
                  arg14 = textValue23
                  cmgCall4 = workValue14
                  arg14(cmgCall4)
                end
                cmgCall6(flag12)
              else
                cmgCall6 = notify
                flag12 = "~r~The last vehicle can not be spawned from this type of garage."
                -- Beginner: Show a notification to the player.
                cmgCall6(flag12)
              end
          end
          else
            cmgCall6 = notify
            flag12 = "~r~Can not spawn this vehicle. Do you still own it?"
            cmgCall6(flag12)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, arg42, workValue18, flag11)
    end
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Rent Manager"
    arg32 = textValue16
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "rentmanager"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Payment Plan Manager"
    arg32 = textValue16
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "paymentplanmanager"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "View Recent Logs"
    arg32 = "View logs from the past month."
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
      local vehicle2, cmgCall6
      if arg33 then
        vehicle2 = TriggerServerEvent
        cmgCall6 = "6463b9ec47"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6463b9ec47".
        vehicle2(cmgCall6)
      end
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "recentlogs"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Settings"
    arg32 = ""
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "settings"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~y~Fuel all vehicles. (\194\16325,000)"
    arg32 = textValue16
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12
      if arg33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.isPlusClub
        vehicle2 = vehicle2()
        if not vehicle2 then
          vehicle2 = CMG
          vehicle2 = vehicle2.isPlatClub
          vehicle2 = vehicle2()
          if not vehicle2 then
            goto flow_label_36
          end
        end
        vehicle2 = flag6
        if not vehicle2 then
          vehicle2 = TriggerServerEvent
          cmgCall6 = "bf584d3fa8"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf584d3fa8".
          vehicle2(cmgCall6)
          vehicle2 = true
          flag6 = vehicle2
          vehicle2 = SendNUIMessage
          cmgCall6 = {}
          cmgCall6.transactionType = "playMoney"
          -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
          vehicle2(cmgCall6)
          vehicle2 = SetTimeout
          cmgCall6 = 60000
          function flag12()
            local arg14, cmgCall4
            arg14 = false
            flag6 = arg14
          end
          vehicle2(cmgCall6, flag12)
        else
          vehicle2 = tCMG
          vehicle2 = vehicle2.notify
          cmgCall6 = "~r~You've done this too recently, try again later."
          -- Beginner: Show a notification to the player.
          vehicle2(cmgCall6)
          goto flow_label_44
          ::flow_label_36::
          vehicle2 = tCMG
          vehicle2 = vehicle2.notify
          cmgCall6 = "~y~You need to be a subscriber of CMG Plus or CMG Platinum to use this feature."
          vehicle2(cmgCall6)
          vehicle2 = tCMG
          vehicle2 = vehicle2.notify
          cmgCall6 = "~y~Available @ store.cmgstudios.net"
          -- Beginner: Show a notification to the player.
          vehicle2(cmgCall6)
        end
      end
      ::flow_label_44::
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "rentmanager"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Vehicles Rented Out"
    arg32 = textValue16
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "rentedout"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Vehicles Rented In"
    arg32 = textValue16
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "rentedin"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "paymentplanmanager"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Vehicles Payment Planned Out"
    arg32 = textValue16
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "paymentplanout"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Vehicles Payment Planned In"
    arg32 = textValue16
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "paymentplanin"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Payment Plan Summary"
    arg32 = ""
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
      local vehicle2, cmgCall6
      if arg33 then
        vehicle2 = TriggerServerEvent
        cmgCall6 = "2f22f5216b"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2f22f5216b".
        vehicle2(cmgCall6)
      end
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "paymentplansummary"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "paymentplansummary"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~g~Estimated income of \194\163"
    arg32 = getMoneyStringFormatted
    arg42 = dataTable10.income
    arg32 = arg32(arg42)
    arg42 = " per week"
    arg22 = arg22 .. arg32 .. arg42
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Estimated outflow of \194\163"
    arg32 = getMoneyStringFormatted
    arg42 = dataTable10.outcome
    arg32 = arg32(arg42)
    arg42 = " per week"
    arg22 = arg22 .. arg32 .. arg42
    arg12(arg22)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "paymentplanout"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7, textValue8
    arg12 = pairs
    arg22 = dataTable7
    arg12, arg22, arg32, arg42 = arg12(arg22)
    for workValue18, flag11 in arg12, arg22, arg32, arg42 do
      flag14 = flag11.uuid
      flag13 = dataTable12
      flag13 = flag13[flag14]
      if not flag13 then
        flag13 = flag11.vehicleName
      end
      flag14 = flag11.paymentPlannedBy
      cmgCall16 = RageUI
      cmgCall16 = cmgCall16.ButtonWithStyle
      flag17 = flag13
      numberValue2 = "Payment Planned to "
      flag = flag14
      numberValue2 = numberValue2 .. flag
      flag = {}
      flag.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag2 = true
      function flag3(arg13, arg23, arg33)
        local vehicle2, cmgCall6, flag12, cmgCall12
        if arg33 then
          vehicle2 = nil
          workValue11 = vehicle2
          vehicle2 = TriggerServerEvent
          cmgCall6 = "8e0470d982"
          flag12 = flag11.uuid
          cmgCall12 = flag13
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8e0470d982".
          vehicle2(cmgCall6, flag12, cmgCall12)
        end
      end
      workValue8 = RMenu
      textValue6 = workValue8
      workValue8 = workValue8.Get
      textValue7 = "garages"
      textValue8 = "paymentplaninfo"
      workValue8, textValue6, textValue7, textValue8 = workValue8(textValue6, textValue7, textValue8)
      -- Beginner: Draw a selectable RageUI menu button.
      cmgCall16(flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7, textValue8)
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "paymentplanin"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7, textValue8
    arg12 = pairs
    arg22 = dataTable8
    arg12, arg22, arg32, arg42 = arg12(arg22)
    for workValue18, flag11 in arg12, arg22, arg32, arg42 do
      flag14 = flag11.uuid
      flag13 = dataTable12
      flag13 = flag13[flag14]
      if not flag13 then
        flag13 = flag11.vehicleName
      end
      flag14 = flag11.paymentPlannedBy
      cmgCall16 = RageUI
      cmgCall16 = cmgCall16.ButtonWithStyle
      flag17 = flag13
      numberValue2 = "Payment Planned from "
      flag = flag14
      numberValue2 = numberValue2 .. flag
      flag = {}
      flag.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag2 = true
      function flag3(arg13, arg23, arg33)
        local vehicle2, cmgCall6, flag12, cmgCall12
        if arg33 then
          vehicle2 = nil
          workValue11 = vehicle2
          vehicle2 = TriggerServerEvent
          cmgCall6 = "8e0470d982"
          flag12 = flag11.uuid
          cmgCall12 = flag13
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8e0470d982".
          vehicle2(cmgCall6, flag12, cmgCall12)
        end
      end
      workValue8 = RMenu
      textValue6 = workValue8
      workValue8 = workValue8.Get
      textValue7 = "garages"
      textValue8 = "paymentplaninfo"
      workValue8, textValue6, textValue7, textValue8 = workValue8(textValue6, textValue7, textValue8)
      -- Beginner: Draw a selectable RageUI menu button.
      cmgCall16(flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7, textValue8)
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "recentlogs"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2
    arg12 = pairs
    arg22 = dataTable13
    arg12, arg22, arg32, arg42 = arg12(arg22)
    for workValue18, flag11 in arg12, arg22, arg32, arg42 do
      flag13 = string
      flag13 = flag13.sub
      flag14 = flag11
      cmgCall16 = 1
      flag17 = 50
      flag13 = flag13(flag14, cmgCall16, flag17)
      flag14 = #flag13
      if flag14 >= 50 then
        flag14 = flag13
        cmgCall16 = "..."
        flag14 = flag14 .. cmgCall16
        flag13 = flag14
      end
      flag14 = RageUI
      flag14 = flag14.ButtonWithStyle
      cmgCall16 = flag13
      flag17 = flag11
      numberValue2 = {}
      flag = true
      function flag2()
        local arg13, arg23
      end
      -- Beginner: Draw a selectable RageUI menu button.
      flag14(cmgCall16, flag17, numberValue2, flag, flag2)
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "rentedout"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7, textValue8, textValue9
    arg12 = pairs
    arg22 = dataTable5
    arg12, arg22, arg32, arg42 = arg12(arg22)
    for workValue18, flag11 in arg12, arg22, arg32, arg42 do
      flag14 = flag11.uuid
      flag13 = dataTable12
      flag13 = flag13[flag14]
      if not flag13 then
        flag13 = flag11.vehicleName
      end
      flag14 = flag11.rentedBy
      cmgCall16 = flag11.hoursLeft
      flag17 = RageUI
      flag17 = flag17.ButtonWithStyle
      numberValue2 = flag13
      flag = "Rented to "
      flag2 = flag14
      flag3 = " - "
      workValue8 = cmgCall16
      textValue6 = " hours left!"
      flag = flag .. flag2 .. flag3 .. workValue8 .. textValue6
      flag2 = {}
      flag2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag3 = true
      function workValue8(arg13, arg23, arg33)
        local vehicle2
        if arg33 then
          vehicle2 = flag11
          dataTable2 = vehicle2
          dataTable2.type = "rentingout"
        end
      end
      textValue6 = RMenu
      textValue7 = textValue6
      textValue6 = textValue6.Get
      textValue8 = "garages"
      textValue9 = "rentedinfo"
      textValue6, textValue7, textValue8, textValue9 = textValue6(textValue7, textValue8, textValue9)
      -- Beginner: Draw a selectable RageUI menu button.
      flag17(numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7, textValue8, textValue9)
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "rentedin"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7, textValue8, textValue9
    arg12 = pairs
    arg22 = dataTable4
    arg12, arg22, arg32, arg42 = arg12(arg22)
    for workValue18, flag11 in arg12, arg22, arg32, arg42 do
      flag14 = flag11.uuid
      flag13 = dataTable12
      flag13 = flag13[flag14]
      if not flag13 then
        flag13 = flag11.vehicleName
      end
      flag14 = flag11.rentedBy
      cmgCall16 = flag11.hoursLeft
      flag17 = RageUI
      flag17 = flag17.ButtonWithStyle
      numberValue2 = flag13
      flag = "Rented from "
      flag2 = flag14
      flag3 = " - "
      workValue8 = cmgCall16
      textValue6 = " hours left!"
      flag = flag .. flag2 .. flag3 .. workValue8 .. textValue6
      flag2 = {}
      flag2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag3 = true
      function workValue8(arg13, arg23, arg33)
        local vehicle2
        if arg33 then
          vehicle2 = flag11
          dataTable2 = vehicle2
          dataTable2.type = "rentingin"
        end
      end
      textValue6 = RMenu
      textValue7 = textValue6
      textValue6 = textValue6.Get
      textValue8 = "garages"
      textValue9 = "rentedinfo"
      textValue6, textValue7, textValue8, textValue9 = textValue6(textValue7, textValue8, textValue9)
      -- Beginner: Draw a selectable RageUI menu button.
      flag17(numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7, textValue8, textValue9)
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "rentedinfo"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17
    arg12 = dataTable2.uuid
    arg22 = dataTable2.vehicleName
    arg32 = dataTable2.rentedBy
    arg42 = dataTable2.hoursLeft
    workValue18 = RageUI
    workValue18 = workValue18.Separator
    flag11 = "~y~Rent Info"
    workValue18(flag11)
    workValue18 = RageUI
    workValue18 = workValue18.Separator
    flag11 = "---------"
    workValue18(flag11)
    workValue18 = RageUI
    workValue18 = workValue18.Separator
    flag11 = "Vehicle: "
    flag13 = arg22
    flag11 = flag11 .. flag13
    workValue18(flag11)
    workValue18 = RageUI
    workValue18 = workValue18.Separator
    flag11 = "Rented from: "
    flag13 = arg32
    flag11 = flag11 .. flag13
    workValue18(flag11)
    workValue18 = RageUI
    workValue18 = workValue18.Separator
    flag11 = "Hours Left: "
    flag13 = arg42
    flag11 = flag11 .. flag13
    workValue18(flag11)
    workValue18 = RageUI
    workValue18 = workValue18.ButtonWithStyle
    flag11 = "Request Rent Cancellation"
    flag13 = ""
    flag14 = {}
    flag14.RightLabel = "\226\134\146\226\134\146\226\134\146"
    cmgCall16 = true
    function flag17(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12, cmgCall12, textValue17
      if arg33 then
        vehicle2 = TriggerServerEvent
        cmgCall6 = "3f4752da34"
        flag12 = arg22
        cmgCall12 = arg12
        textValue17 = dataTable2.type
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3f4752da34".
        vehicle2(cmgCall6, flag12, cmgCall12, textValue17)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    workValue18(flag11, flag13, flag14, cmgCall16, flag17)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "paymentplaninfo"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14
    arg12 = workValue11
    if not arg12 then
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~y~Fetching information..."
      arg12(arg22)
      return
    end
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Vehicle: "
    arg32 = workValue11.vehicleName
    arg22 = arg22 .. arg32
    arg12(arg22)
    arg12 = workValue11.sellerUserId
    arg22 = CMG
    arg22 = arg22.getClientUserId
    -- Beginner: result below is userId.
    arg22 = arg22()
    arg12 = arg12 == arg22
    if arg12 then
      arg22 = RageUI
      arg22 = arg22.Separator
      arg32 = "~y~Buying Player: "
      arg42 = workValue11.buyerName
      workValue18 = " ("
      flag11 = tostring
      flag13 = workValue11.buyerUserId
      flag11 = flag11(flag13)
      flag13 = ")"
      arg32 = arg32 .. arg42 .. workValue18 .. flag11 .. flag13
      arg22(arg32)
    else
      arg22 = RageUI
      arg22 = arg22.Separator
      arg32 = "~y~Selling Player: "
      arg42 = workValue11.sellerName
      workValue18 = " ("
      flag11 = tostring
      flag13 = workValue11.sellerUserId
      flag11 = flag11(flag13)
      flag13 = ")"
      arg32 = arg32 .. arg42 .. workValue18 .. flag11 .. flag13
      arg22(arg32)
    end
    arg22 = workValue11.hasPaidThisWeek
    if arg22 then
      arg22 = RageUI
      arg22 = arg22.Separator
      arg32 = "~g~The payment for this week is completed!"
      arg22(arg32)
    else
      arg22 = RageUI
      arg22 = arg22.Separator
      arg32 = "~r~The payment for this week is outstanding."
      arg22(arg32)
    end
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg32 = "Total Price"
    arg42 = "The total amount of money that has to be paid."
    workValue18 = {}
    flag11 = "\194\163"
    flag13 = getMoneyStringFormatted
    flag14 = workValue11.totalPrice
    flag13 = flag13(flag14)
    flag11 = flag11 .. flag13
    workValue18.RightLabel = flag11
    flag11 = true
    function flag13()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg32, arg42, workValue18, flag11, flag13)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg32 = "Amount Paid"
    arg42 = "The amount of money that has been paid so far."
    workValue18 = {}
    flag11 = "\194\163"
    flag13 = getMoneyStringFormatted
    flag14 = workValue11.amountPaid
    flag13 = flag13(flag14)
    flag11 = flag11 .. flag13
    workValue18.RightLabel = flag11
    flag11 = true
    function flag13()
      local arg13, arg23
    end
    arg22(arg32, arg42, workValue18, flag11, flag13)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg32 = "Weeks Remaining"
    arg42 = "The amount of weeks left until the payment plan is paid off."
    workValue18 = {}
    flag11 = tostring
    flag13 = workValue11.weeksRemaining
    flag11 = flag11(flag13)
    flag13 = " week"
    flag14 = workValue11.weeksRemaining
    if flag14 > 1 then
      flag14 = "s"
      if flag14 then
        goto flow_label_107
      end
    end
    flag14 = ""
    ::flow_label_107::
    flag11 = flag11 .. flag13 .. flag14
    workValue18.RightLabel = flag11
    flag11 = true
    function flag13()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg32, arg42, workValue18, flag11, flag13)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg32 = "Missed Weeks Remaining"
    arg42 = "The amount of weeks a missed payment is allowed."
    workValue18 = {}
    flag11 = tostring
    flag13 = workValue11.missedWeeksRemaining
    flag11 = flag11(flag13)
    flag13 = " week"
    flag14 = workValue11.missedWeeksRemaining
    if flag14 > 1 then
      flag14 = "s"
      if flag14 then
        goto flow_label_129
      end
    end
    flag14 = ""
    ::flow_label_129::
    flag11 = flag11 .. flag13 .. flag14
    workValue18.RightLabel = flag11
    flag11 = true
    function flag13()
      local arg13, arg23
    end
    arg22(arg32, arg42, workValue18, flag11, flag13)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg32 = "Week Start Time"
    arg42 = "The time that is considered the start of the week."
    workValue18 = {}
    flag11 = workValue11.weekStartTime
    workValue18.RightLabel = flag11
    flag11 = true
    function flag13()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg32, arg42, workValue18, flag11, flag13)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg32 = "Last Payment Time"
    arg42 = "The time the payment plan last had a payment."
    workValue18 = {}
    flag11 = workValue11.lastPaymentTime
    workValue18.RightLabel = flag11
    flag11 = true
    function flag13()
      local arg13, arg23
    end
    arg22(arg32, arg42, workValue18, flag11, flag13)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg32 = "Failed Return Date"
    arg42 = "The time the vehicle would be returned if no further payments were made (within the hour)."
    workValue18 = {}
    flag11 = workValue11.estimatedReturnDate
    workValue18.RightLabel = flag11
    flag11 = true
    function flag13()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg32, arg42, workValue18, flag11, flag13)
    if not arg12 then
      arg22 = workValue11.hasPaidThisWeek
      if not arg22 then
        arg22 = RageUI
        arg22 = arg22.ButtonWithStyle
        arg32 = "~g~Pay Debt This week"
        arg42 = "You will make a payment of \194\163"
        workValue18 = getMoneyStringFormatted
        flag11 = workValue11.amountPayThisWeek
        workValue18 = workValue18(flag11)
        flag11 = " this week."
        arg42 = arg42 .. workValue18 .. flag11
        workValue18 = {}
        workValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag11 = true
        function flag13(arg13, arg23, arg33)
          local vehicle2, cmgCall6, flag12
          if arg33 then
            vehicle2 = TriggerServerEvent
            cmgCall6 = "54e798dce5"
            flag12 = workValue11.vehicleUUID
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "54e798dce5".
            vehicle2(cmgCall6, flag12)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        arg22(arg32, arg42, workValue18, flag11, flag13)
      else
        arg22 = RageUI
        arg22 = arg22.ButtonWithStyle
        arg32 = "~y~Pay Week In Advance"
        arg42 = "You will make a payment of \194\163"
        workValue18 = getMoneyStringFormatted
        flag11 = workValue11.amountPayThisWeek
        workValue18 = workValue18(flag11)
        flag11 = " for the next week."
        arg42 = arg42 .. workValue18 .. flag11
        workValue18 = {}
        workValue18.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag11 = true
        function flag13(arg13, arg23, arg33)
          local vehicle2, cmgCall6, flag12
          if arg33 then
            vehicle2 = TriggerServerEvent
            cmgCall6 = "54e798dce5"
            flag12 = workValue11.vehicleUUID
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "54e798dce5".
            vehicle2(cmgCall6, flag12)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        arg22(arg32, arg42, workValue18, flag11, flag13)
      end
      arg22 = RageUI
      arg22 = arg22.ButtonWithStyle
      arg32 = "~r~Request Payment Plan Cancellation"
      arg42 = "~r~This will cancel the payment plan and return the vehicle back to the seller. You will not receive any money back from doing this."
      workValue18 = {}
      flag11 = true
      function flag13(arg13, arg23, arg33)
        local vehicle2, cmgCall6, flag12
        if arg33 then
          vehicle2 = TriggerServerEvent
          cmgCall6 = "ce91f872d5"
          flag12 = workValue11.vehicleUUID
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce91f872d5".
          vehicle2(cmgCall6, flag12)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg22(arg32, arg42, workValue18, flag11, flag13)
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "listgarages"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6
    arg12 = dataTable11.showCustomFoldersInGarageMenu
    if not arg12 then
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "[Custom Folders]"
      arg32 = ""
      arg42 = {}
      arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workValue18 = true
      function flag11(arg13, arg23, arg33)
      end
      flag13 = RMenu
      flag14 = flag13
      flag13 = flag13.Get
      cmgCall16 = "garages"
      flag17 = "customfolders"
      flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6 = flag13(flag14, cmgCall16, flag17)
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6)
    else
      arg12 = workValue32
      arg12()
    end
    arg12 = pairs
    arg22 = dataTable18
    arg12, arg22, arg32, arg42 = arg12(arg22)
    for workValue18, flag11 in arg12, arg22, arg32, arg42 do
      flag13 = eventRegistration4
      flag14 = flag11.type
      flag13 = flag13(flag14)
      if not flag13 then
        flag13 = flag11.isGangGarage
        if not flag13 then
          goto flow_label_53
        end
      end
      flag13 = textValue4
      flag14 = flag11.class
      if flag13 == flag14 then
        flag13 = RageUI
        flag13 = flag13.ButtonWithStyle
        flag14 = flag11.type
        cmgCall16 = ""
        flag17 = {}
        flag17.RightLabel = "\226\134\146\226\134\146\226\134\146"
        numberValue2 = true
        function flag(arg13, arg23, arg33)
          local vehicle2, cmgCall6
          if arg33 then
            vehicle2 = flag11
            workValue34 = vehicle2
            vehicle2 = nil
            workValue12 = vehicle2
            vehicle2 = CreateThread
            -- Beginner: this function is the body of a background FiveM thread.
            function cmgCall6()
              local arg14, cmgCall4, textValue11, workValue17
              arg14 = flag11.type
              cmgCall4 = CMG
              cmgCall4 = cmgCall4.TriggerServerCallback
              textValue11 = "d189dbfff3"
              workValue17 = arg14
              cmgCall4 = cmgCall4(textValue11, workValue17)
              textValue11 = workValue34
              if textValue11 then
                textValue11 = workValue34.type
                if textValue11 == arg14 then
                  workValue4 = cmgCall4
                  workValue6 = arg14
                end
              end
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            vehicle2(cmgCall6)
          end
        end
        flag2 = RMenu
        flag3 = flag2
        flag2 = flag2.Get
        workValue8 = "garages"
        textValue6 = "vehiclemenu"
        flag2, flag3, workValue8, textValue6 = flag2(flag3, workValue8, textValue6)
        -- Beginner: Draw a selectable RageUI menu button.
        flag13(flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6)
      end
      ::flow_label_53::
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "customfolders"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22
    arg12 = workValue32
    arg12()
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "spawnmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7
    arg12 = workValue34
    if arg12 then
      arg12 = workValue34.isGangGarage
    end
    if not arg12 then
      arg22 = workValue31
      arg32 = textValue15
      arg22 = arg22(arg32)
      if not arg22 then
        arg22 = RageUI
        arg22 = arg22.Visible
        arg32 = RMenu
        arg42 = arg32
        arg32 = arg32.Get
        workValue18 = "garages"
        flag11 = "mainmenu"
        -- Beginner: result below is menu.
        arg32 = arg32(arg42, workValue18, flag11)
        arg42 = true
        arg22(arg32, arg42)
        return
      end
    end
    arg22 = textValue16
    arg42 = textValue15
    arg32 = dataTable16
    arg32 = arg32[arg42]
    if arg32 then
      arg32 = arg22
      arg42 = " | "
      workValue18 = "Rarity (1:"
      flag11 = tostring
      flag14 = textValue15
      flag13 = dataTable16
      flag13 = flag13[flag14]
      flag11 = flag11(flag13)
      flag13 = ")"
      arg32 = arg32 .. arg42 .. workValue18 .. flag11 .. flag13
      arg22 = arg32
    end
    arg42 = numberValue23
    arg32 = dataTable17
    arg32 = arg32[arg42]
    if arg32 then
      arg32 = arg22
      arg42 = " | Milage ("
      workValue18 = tostring
      flag13 = numberValue23
      flag11 = dataTable17
      flag11 = flag11[flag13]
      workValue18 = workValue18(flag11)
      flag11 = " miles)"
      arg32 = arg32 .. arg42 .. workValue18 .. flag11
      arg22 = arg32
    end
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "Spawn Vehicle"
    workValue18 = arg22
    flag11 = {}
    flag11.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag13 = CMG
    flag13 = flag13.isInsideNoVehicleZone
    flag13 = flag13()
    flag13 = not flag13
    function flag14(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12, cmgCall12, textValue17, flag15, tableHelper3, workValue3, workValue5
      if arg33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.getPlayerCombatTimer
        vehicle2 = vehicle2()
        if vehicle2 > 0 then
          vehicle2 = notify
          cmgCall6 = "~r~You can not spawn a vehicle with a combat timer."
          -- Beginner: Show a notification to the player.
          vehicle2(cmgCall6)
          return
        end
        vehicle2 = CMG
        vehicle2 = vehicle2.isInCustomRace
        vehicle2 = vehicle2()
        if vehicle2 then
          vehicle2 = notify
          cmgCall6 = "~r~You can not spawn new vehicles in a race."
          vehicle2(cmgCall6)
          return
        end
        vehicle2 = pairs
        cmgCall6 = dataTable3
        vehicle2, cmgCall6, flag12, cmgCall12 = vehicle2(cmgCall6)
        for textValue17, flag15 in vehicle2, cmgCall6, flag12, cmgCall12 do
          tableHelper3 = DoesEntityExist
          workValue3 = flag15
          tableHelper3 = tableHelper3(workValue3)
          if not tableHelper3 then
            tableHelper3 = table
            tableHelper3 = tableHelper3.remove
            workValue3 = dataTable3
            workValue5 = textValue17
            tableHelper3(workValue3, workValue5)
          end
        end
        vehicle2 = dataTable3
        vehicle2 = #vehicle2
        if vehicle2 <= 5 then
          vehicle2 = DeleteVehicle
          cmgCall6 = numberValue3
          vehicle2(cmgCall6)
          vehicle2 = 0
          numberValue3 = vehicle2
          vehicle2 = 0
          numberValue4 = vehicle2
          vehicle2 = false
          flag4 = vehicle2
          vehicle2 = DestroyCam
          cmgCall6 = cmgCall11
          flag12 = false
          vehicle2(cmgCall6, flag12)
          vehicle2 = RenderScriptCams
          cmgCall6 = false
          flag12 = false
          cmgCall12 = 1
          textValue17 = true
          flag15 = true
          vehicle2(cmgCall6, flag12, cmgCall12, textValue17, flag15)
          vehicle2 = 0
          cmgCall11 = vehicle2
          vehicle2 = SetFocusEntity
          cmgCall6 = GetPlayerPed
          flag12 = PlayerId
          flag12, cmgCall12, textValue17, flag15, tableHelper3, workValue3, workValue5 = flag12()
          cmgCall6, flag12, cmgCall12, textValue17, flag15, tableHelper3, workValue3, workValue5 = cmgCall6(flag12, cmgCall12, textValue17, flag15, tableHelper3, workValue3, workValue5)
          vehicle2(cmgCall6, flag12, cmgCall12, textValue17, flag15, tableHelper3, workValue3, workValue5)
          vehicle2 = SetEntityAlpha
          cmgCall6 = CMG
          cmgCall6 = cmgCall6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall6 = cmgCall6()
          flag12 = 255
          cmgCall12 = false
          vehicle2(cmgCall6, flag12, cmgCall12)
          vehicle2 = FreezeEntityPosition
          cmgCall6 = CMG
          cmgCall6 = cmgCall6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall6 = cmgCall6()
          flag12 = false
          -- Beginner: Freeze or unfreeze an entity in place.
          vehicle2(cmgCall6, flag12)
          vehicle2 = SetEntityCollision
          cmgCall6 = CMG
          cmgCall6 = cmgCall6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall6 = cmgCall6()
          flag12 = true
          cmgCall12 = true
          vehicle2(cmgCall6, flag12, cmgCall12)
          vehicle2 = Citizen
          vehicle2 = vehicle2.CreateThreadNow
          function cmgCall6()
            local arg14, cmgCall4
            arg14 = textValue23
            cmgCall4 = numberValue23
            arg14(cmgCall4)
          end
          vehicle2(cmgCall6)
          vehicle2 = numberValue23
          workValue14 = vehicle2
        else
          vehicle2 = tCMG
          vehicle2 = vehicle2.notify
          cmgCall6 = "~r~You may only take out a maximum of 5 vehicles at a time."
          -- Beginner: Show a notification to the player.
          vehicle2(cmgCall6)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, workValue18, flag11, flag13, flag14)
    arg32 = textValue4
    arg32 = CMG
    arg32 = arg32.hasClientSkill
    arg42 = "mechanic_remote_ls_customs"
    arg32 = "vehicle" == arg32 and arg32
    arg42 = RageUI
    arg42 = arg42.ButtonWithStyle
    workValue18 = "LS Customs"
    flag11 = "(Skill Required)"
    flag13 = {}
    flag13.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag14 = arg32 or flag14
    if arg32 then
      flag14 = CMG
      flag14 = flag14.isInsideNoVehicleZone
      flag14 = flag14()
      flag14 = not flag14
    end
    function cmgCall16(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12, cmgCall12, textValue17, flag15, tableHelper3, workValue3, workValue5
      if arg33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.getPlayerCombatTimer
        vehicle2 = vehicle2()
        if vehicle2 > 0 then
          vehicle2 = notify
          cmgCall6 = "~r~You can not spawn a vehicle with a combat timer."
          -- Beginner: Show a notification to the player.
          vehicle2(cmgCall6)
          return
        end
        vehicle2 = CMG
        vehicle2 = vehicle2.isInCustomRace
        vehicle2 = vehicle2()
        if vehicle2 then
          vehicle2 = notify
          cmgCall6 = "~r~You can not spawn new vehicles in a race."
          vehicle2(cmgCall6)
          return
        end
        vehicle2 = pairs
        cmgCall6 = dataTable3
        vehicle2, cmgCall6, flag12, cmgCall12 = vehicle2(cmgCall6)
        for textValue17, flag15 in vehicle2, cmgCall6, flag12, cmgCall12 do
          tableHelper3 = DoesEntityExist
          workValue3 = flag15
          tableHelper3 = tableHelper3(workValue3)
          if not tableHelper3 then
            tableHelper3 = table
            tableHelper3 = tableHelper3.remove
            workValue3 = dataTable3
            workValue5 = textValue17
            tableHelper3(workValue3, workValue5)
          end
        end
        vehicle2 = dataTable3
        vehicle2 = #vehicle2
        if vehicle2 <= 5 then
          vehicle2 = DeleteVehicle
          cmgCall6 = numberValue3
          vehicle2(cmgCall6)
          vehicle2 = 0
          numberValue3 = vehicle2
          vehicle2 = 0
          numberValue4 = vehicle2
          vehicle2 = false
          flag4 = vehicle2
          vehicle2 = DestroyCam
          cmgCall6 = cmgCall11
          flag12 = false
          vehicle2(cmgCall6, flag12)
          vehicle2 = RenderScriptCams
          cmgCall6 = false
          flag12 = false
          cmgCall12 = 1
          textValue17 = true
          flag15 = true
          vehicle2(cmgCall6, flag12, cmgCall12, textValue17, flag15)
          vehicle2 = 0
          cmgCall11 = vehicle2
          vehicle2 = SetFocusEntity
          cmgCall6 = GetPlayerPed
          flag12 = PlayerId
          flag12, cmgCall12, textValue17, flag15, tableHelper3, workValue3, workValue5 = flag12()
          cmgCall6, flag12, cmgCall12, textValue17, flag15, tableHelper3, workValue3, workValue5 = cmgCall6(flag12, cmgCall12, textValue17, flag15, tableHelper3, workValue3, workValue5)
          vehicle2(cmgCall6, flag12, cmgCall12, textValue17, flag15, tableHelper3, workValue3, workValue5)
          vehicle2 = SetEntityAlpha
          cmgCall6 = CMG
          cmgCall6 = cmgCall6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall6 = cmgCall6()
          flag12 = 255
          cmgCall12 = false
          vehicle2(cmgCall6, flag12, cmgCall12)
          vehicle2 = FreezeEntityPosition
          cmgCall6 = CMG
          cmgCall6 = cmgCall6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall6 = cmgCall6()
          flag12 = false
          -- Beginner: Freeze or unfreeze an entity in place.
          vehicle2(cmgCall6, flag12)
          vehicle2 = SetEntityCollision
          cmgCall6 = CMG
          cmgCall6 = cmgCall6.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall6 = cmgCall6()
          flag12 = true
          cmgCall12 = true
          vehicle2(cmgCall6, flag12, cmgCall12)
          vehicle2 = Citizen
          vehicle2 = vehicle2.CreateThreadNow
          function cmgCall6()
            local arg14, cmgCall4, textValue11
            arg14 = textValue23
            cmgCall4 = numberValue23
            textValue11 = {}
            textValue11.remoteLsCustoms = true
            arg14(cmgCall4, textValue11)
          end
          vehicle2(cmgCall6)
          vehicle2 = numberValue23
          workValue14 = vehicle2
        else
          vehicle2 = tCMG
          vehicle2 = vehicle2.notify
          cmgCall6 = "~r~You may only take out a maximum of 5 vehicles at a time."
          -- Beginner: Show a notification to the player.
          vehicle2(cmgCall6)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg42(workValue18, flag11, flag13, flag14, cmgCall16)
    arg42 = RageUI
    arg42 = arg42.ButtonWithStyle
    workValue18 = "Open Boot"
    flag11 = arg22
    flag13 = {}
    flag13.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag14 = CMG
    flag14 = flag14.isInGreenzone
    flag14 = flag14()
    function cmgCall16(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12, cmgCall12
      if arg33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.getPlayerCombatTimer
        vehicle2 = vehicle2()
        if vehicle2 > 0 then
          vehicle2 = notify
          cmgCall6 = "~r~You can not open the boot with a combat timer."
          -- Beginner: Show a notification to the player.
          vehicle2(cmgCall6)
          return
        end
        vehicle2 = CMG
        vehicle2 = vehicle2.isInCustomRace
        vehicle2 = vehicle2()
        if vehicle2 then
          vehicle2 = notify
          cmgCall6 = "~r~You can not open the boot in a race."
          vehicle2(cmgCall6)
          return
        end
        vehicle2 = workValue27
        vehicle2 = vehicle2()
        cmgCall6 = numberValue23
        vehicle2 = vehicle2[cmgCall6]
        if vehicle2 then
          cmgCall6 = DoesEntityExist
          flag12 = vehicle2[2]
          cmgCall6 = cmgCall6(flag12)
          if cmgCall6 then
            cmgCall6 = notify
            flag12 = "~r~You can not open the boot of a vehicle that is already out!"
            -- Beginner: Show a notification to the player.
            cmgCall6(flag12)
            return
          end
        end
        cmgCall6 = CMG
        cmgCall6 = cmgCall6.setOpeningBootFromGarage
        cmgCall6()
        cmgCall6 = TriggerServerEvent
        flag12 = "c28fbcd83a"
        cmgCall12 = numberValue23
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c28fbcd83a".
        cmgCall6(flag12, cmgCall12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg42(workValue18, flag11, flag13, flag14, cmgCall16)
    if arg12 then
      arg42 = CMG
      arg42 = arg42.hasGangPermission
      workValue18 = "removegarage"
      arg42 = arg42(workValue18)
      workValue18 = RageUI
      workValue18 = workValue18.ButtonWithStyle
      flag11 = "Remove from Gang Garage"
      flag13 = arg22
      flag14 = {}
      flag14.RightLabel = "\226\134\146\226\134\146\226\134\146"
      cmgCall16 = arg42
      function flag17(arg13, arg23, arg33)
        local vehicle2, cmgCall6, flag12
        if arg33 then
          vehicle2 = arg42
          if vehicle2 then
            vehicle2 = TriggerServerEvent
            cmgCall6 = "00689ace60"
            flag12 = numberValue23
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "00689ace60".
            vehicle2(cmgCall6, flag12)
          end
        end
      end
      numberValue2 = RMenu
      flag = numberValue2
      numberValue2 = numberValue2.Get
      flag2 = "garages"
      flag3 = "spawnmenu"
      numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7 = numberValue2(flag, flag2, flag3)
      -- Beginner: Draw a selectable RageUI menu button.
      workValue18(flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7)
    end
    if not arg12 then
      arg42 = CMG
      arg42 = arg42.canVehicleBeSold
      workValue18 = textValue15
      arg42 = arg42(workValue18)
      if arg42 then
        arg42 = cmgCall7
        workValue18 = numberValue23
        arg42 = arg42(workValue18)
        arg42 = not arg42
      end
      workValue18 = cmgCall7
      flag11 = numberValue23
      workValue18 = workValue18(flag11)
      if workValue18 then
        workValue18 = cmgCall8
        if workValue18 then
          goto flow_label_147
        end
      end
      workValue18 = arg22
      ::flow_label_147::
      flag11 = RageUI
      flag11 = flag11.ButtonWithStyle
      flag13 = "Sell Vehicle to Player"
      flag14 = workValue18
      cmgCall16 = {}
      cmgCall16.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag17 = arg42
      function numberValue2(arg13, arg23, arg33)
        local vehicle2, cmgCall6, flag12
        if arg33 then
          vehicle2 = arg42
          if vehicle2 then
            vehicle2 = CMG
            vehicle2 = vehicle2.displaySellDisclaimer
            cmgCall6 = "vehicle"
            function flag12()
              local arg14, cmgCall4, textValue11
              arg14 = TriggerServerEvent
              cmgCall4 = "0d3561179d"
              textValue11 = numberValue23
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0d3561179d".
              arg14(cmgCall4, textValue11)
            end
            vehicle2(cmgCall6, flag12)
          end
        end
      end
      flag = RMenu
      flag2 = flag
      flag = flag.Get
      flag3 = "garages"
      workValue8 = "spawnmenu"
      flag, flag2, flag3, workValue8, textValue6, textValue7 = flag(flag2, flag3, workValue8)
      -- Beginner: Draw a selectable RageUI menu button.
      flag11(flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7)
      flag11 = RageUI
      flag11 = flag11.ButtonWithStyle
      flag13 = "Rent Vehicle to Player"
      flag14 = arg22
      cmgCall16 = {}
      cmgCall16.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag17 = CMG
      flag17 = flag17.canVehicleBeRented
      numberValue2 = textValue15
      flag17 = flag17(numberValue2)
      function numberValue2(arg13, arg23, arg33)
        local vehicle2, cmgCall6, flag12
        if arg33 then
          vehicle2 = CMG
          vehicle2 = vehicle2.canVehicleBeRented
          cmgCall6 = textValue15
          vehicle2 = vehicle2(cmgCall6)
          if vehicle2 then
            vehicle2 = TriggerServerEvent
            cmgCall6 = "6cf393ee47"
            flag12 = numberValue23
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6cf393ee47".
            vehicle2(cmgCall6, flag12)
          end
        end
      end
      flag = RMenu
      flag2 = flag
      flag = flag.Get
      flag3 = "garages"
      workValue8 = "spawnmenu"
      flag, flag2, flag3, workValue8, textValue6, textValue7 = flag(flag2, flag3, workValue8)
      -- Beginner: Draw a selectable RageUI menu button.
      flag11(flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7)
      flag11 = CMG
      flag11 = flag11.canVehicleBeRented
      flag13 = textValue15
      flag11 = flag11(flag13)
      if flag11 then
        flag11 = cmgCall7
        flag13 = numberValue23
        flag11 = flag11(flag13)
        flag11 = not flag11
      end
      flag13 = cmgCall7
      flag14 = numberValue23
      flag13 = flag13(flag14)
      if flag13 then
        flag13 = cmgCall8
        if flag13 then
          goto flow_label_199
        end
      end
      flag13 = arg22
      ::flow_label_199::
      flag14 = RageUI
      flag14 = flag14.ButtonWithStyle
      cmgCall16 = "Payment Plan Vehicle to Player"
      flag17 = flag13
      numberValue2 = {}
      numberValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag = flag11
      function flag2()
        local arg13, arg23
      end
      flag3 = RMenu
      workValue8 = flag3
      flag3 = flag3.Get
      textValue6 = "garages"
      textValue7 = "paymentplan"
      flag3, workValue8, textValue6, textValue7 = flag3(workValue8, textValue6, textValue7)
      flag14(cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7)
      flag14 = RageUI
      flag14 = flag14.ButtonWithStyle
      cmgCall16 = "Crush Vehicle"
      flag17 = "This will ~r~DELETE ~w~this vehicle from your garage!"
      numberValue2 = {}
      numberValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag = CMG
      flag = flag.canVehicleBeSold
      flag2 = textValue15
      flag = flag(flag2)
      function flag2(arg13, arg23, arg33)
      end
      flag3 = RMenu
      workValue8 = flag3
      flag3 = flag3.Get
      textValue6 = "garages"
      textValue7 = "confirm"
      flag3, workValue8, textValue6, textValue7 = flag3(workValue8, textValue6, textValue7)
      -- Beginner: Draw a selectable RageUI menu button.
      flag14(cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7)
      flag14 = RageUI
      flag14 = flag14.ButtonWithStyle
      cmgCall16 = "Add to custom folder"
      flag17 = arg22
      numberValue2 = {}
      numberValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag = true
      function flag2(arg13, arg23, arg33)
        local vehicle2, cmgCall6, flag12, cmgCall12, textValue17
        if arg33 then
          vehicle2 = CMG
          vehicle2 = vehicle2.GetRageInputText
          cmgCall6 = "Enter folder name:"
          vehicle2 = vehicle2(cmgCall6)
          if vehicle2 then
            cmgCall6 = CMG
            cmgCall6 = cmgCall6.addCarToCustomFolder
            flag12 = numberValue23
            cmgCall12 = textValue16
            textValue17 = vehicle2
            cmgCall6(flag12, cmgCall12, textValue17)
          end
        end
      end
      flag3 = RMenu
      workValue8 = flag3
      flag3 = flag3.Get
      textValue6 = "garages"
      textValue7 = "spawnmenu"
      flag3, workValue8, textValue6, textValue7 = flag3(workValue8, textValue6, textValue7)
      -- Beginner: Draw a selectable RageUI menu button.
      flag14(cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7)
      flag14 = RageUI
      flag14 = flag14.ButtonWithStyle
      cmgCall16 = "Remove from custom folder"
      flag17 = arg22
      numberValue2 = {}
      numberValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag = true
      function flag2(arg13, arg23, arg33)
        local vehicle2, cmgCall6, flag12, cmgCall12
        if arg33 then
          vehicle2 = CMG
          vehicle2 = vehicle2.GetRageInputText
          cmgCall6 = "Enter folder name:"
          vehicle2 = vehicle2(cmgCall6)
          if vehicle2 then
            cmgCall6 = CMG
            cmgCall6 = cmgCall6.removeCarFromCustomFolder
            flag12 = numberValue23
            cmgCall12 = vehicle2
            cmgCall6(flag12, cmgCall12)
          end
        end
      end
      flag3 = RMenu
      workValue8 = flag3
      flag3 = flag3.Get
      textValue6 = "garages"
      textValue7 = "spawnmenu"
      flag3, workValue8, textValue6, textValue7 = flag3(workValue8, textValue6, textValue7)
      -- Beginner: Draw a selectable RageUI menu button.
      flag14(cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7)
      flag14 = RageUI
      flag14 = flag14.ButtonWithStyle
      cmgCall16 = "Assign Custom Name"
      flag17 = "Assigns a custom name for this vehicle that is only visible to you"
      numberValue2 = {}
      numberValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag = true
      function flag2(arg13, arg23, arg33)
        local vehicle2, cmgCall6, flag12, cmgCall12, textValue17
        if arg33 then
          vehicle2 = CMG
          vehicle2 = vehicle2.GetRageInputText
          cmgCall6 = "Enter custom name (blank to remove)"
          vehicle2 = vehicle2(cmgCall6)
          if vehicle2 then
            cmgCall6 = #vehicle2
            if cmgCall6 >= 2 then
              flag12 = numberValue23
              cmgCall6 = dataTable12
              cmgCall6[flag12] = vehicle2
              cmgCall6 = notify
              flag12 = "~g~Custom name set to "
              cmgCall12 = vehicle2
              textValue17 = "."
              flag12 = flag12 .. cmgCall12 .. textValue17
              -- Beginner: Show a notification to the player.
              cmgCall6(flag12)
          end
          else
            flag12 = numberValue23
            cmgCall6 = dataTable12
            cmgCall6[flag12] = nil
            cmgCall6 = notify
            flag12 = "~g~Custom name removed."
            cmgCall6(flag12)
          end
          cmgCall6 = SetResourceKvp
          flag12 = "cmg_custom_vehicle_names"
          cmgCall12 = json
          cmgCall12 = cmgCall12.encode
          textValue17 = dataTable12
          cmgCall12, textValue17 = cmgCall12(textValue17)
          cmgCall6(flag12, cmgCall12, textValue17)
        end
      end
      flag3 = RMenu
      workValue8 = flag3
      flag3 = flag3.Get
      textValue6 = "garages"
      textValue7 = "spawnmenu"
      flag3, workValue8, textValue6, textValue7 = flag3(workValue8, textValue6, textValue7)
      -- Beginner: Draw a selectable RageUI menu button.
      flag14(cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7)
    end
    arg42 = RageUI
    arg42 = arg42.ButtonWithStyle
    workValue18 = "View Remote Dashcam"
    flag11 = arg22
    flag13 = {}
    flag13.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag14 = true
    function cmgCall16(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12
      if arg33 then
        vehicle2 = TriggerServerEvent
        cmgCall6 = "7444109bf3"
        flag12 = numberValue23
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7444109bf3".
        vehicle2(cmgCall6, flag12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg42(workValue18, flag11, flag13, flag14, cmgCall16)
    arg42 = RageUI
    arg42 = arg42.ButtonWithStyle
    workValue18 = "Display Vehicle Blip"
    flag11 = arg22
    flag13 = {}
    flag13.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag14 = true
    function cmgCall16(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12
      if arg33 then
        vehicle2 = TriggerServerEvent
        cmgCall6 = "a30d55e751"
        flag12 = numberValue23
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a30d55e751".
        vehicle2(cmgCall6, flag12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg42(workValue18, flag11, flag13, flag14, cmgCall16)
    if not arg12 then
      arg42 = CMG
      arg42 = arg42.hasGangPermission
      workValue18 = "addgarage"
      arg42 = arg42(workValue18)
      if arg42 then
        arg42 = CMG
        arg42 = arg42.canVehicleBeSold
        workValue18 = textValue15
        arg42 = arg42(workValue18)
        if arg42 then
          arg42 = CMG
          arg42 = arg42.canVehicleBeRented
          workValue18 = textValue15
          arg42 = arg42(workValue18)
          if arg42 then
            workValue18 = numberValue23
            arg42 = dataTable21
            arg42 = arg42[workValue18]
            arg42 = not arg42
          end
        end
      end
      workValue18 = RageUI
      workValue18 = workValue18.ButtonWithStyle
      flag11 = "~p~Move to Gang Garage"
      flag13 = arg22
      flag14 = {}
      flag14.RightLabel = "\226\134\146\226\134\146\226\134\146"
      cmgCall16 = arg42
      function flag17(arg13, arg23, arg33)
        local vehicle2, cmgCall6, flag12
        if arg33 then
          vehicle2 = arg42
          if vehicle2 then
            vehicle2 = TriggerServerEvent
            cmgCall6 = "987b362726"
            flag12 = numberValue23
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "987b362726".
            vehicle2(cmgCall6, flag12)
          end
        end
      end
      numberValue2 = RMenu
      flag = numberValue2
      numberValue2 = numberValue2.Get
      flag2 = "garages"
      flag3 = "spawnmenu"
      numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7 = numberValue2(flag, flag2, flag3)
      -- Beginner: Draw a selectable RageUI menu button.
      workValue18(flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7)
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "paymentplan"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Vehicle: "
    arg32 = CMG
    arg32 = arg32.getVehicleNameFromId
    arg42 = textValue15
    arg32 = arg32(arg42)
    arg22 = arg22 .. arg32
    arg12(arg22)
    function arg12()
      local arg13, arg23
      arg13 = numberValue15
      arg23 = numberValue19
      arg13 = arg13 - arg23
      return arg13
    end
    function arg22()
      local arg13, arg23, arg33
      arg13 = flag10
      if arg13 then
        arg13 = math
        arg13 = arg13.ceil
        arg23 = arg12
        arg23 = arg23()
        arg33 = numberValue16
        arg23 = arg23 / arg33
        arg13 = arg13(arg23)
        numberValue17 = arg13
      else
        arg13 = math
        arg13 = arg13.ceil
        arg23 = arg12
        arg23 = arg23()
        arg33 = numberValue17
        arg23 = arg23 / arg33
        arg13 = arg13(arg23)
        numberValue16 = arg13
        arg13 = numberValue16
        if arg13 > 26 then
          arg13 = 1
          numberValue16 = arg13
          arg13 = true
          flag10 = arg13
          arg13 = arg22
          arg13()
        end
      end
    end
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "Total Price"
    workValue18 = "The total amount of money that will have to be paid before ownership is transferred."
    flag11 = {}
    flag13 = "\194\163"
    flag14 = getMoneyStringFormatted
    cmgCall16 = numberValue15
    flag14 = flag14(cmgCall16)
    flag13 = flag13 .. flag14
    flag11.RightLabel = flag13
    flag13 = true
    function flag14(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12, cmgCall12
      if arg33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.clientPrompt
        cmgCall6 = "Enter Total Price"
        flag12 = ""
        function cmgCall12(arg14)
          local cmgCall4, textValue11, workValue17, mathHelper2, mathHelper3
          cmgCall4 = tonumber
          textValue11 = arg14
          cmgCall4 = cmgCall4(textValue11)
          if cmgCall4 then
            textValue11 = math
            textValue11 = textValue11.type
            workValue17 = cmgCall4
            textValue11 = textValue11(workValue17)
            if "integer" == textValue11 then
              textValue11 = 10000
              if cmgCall4 >= textValue11 then
                textValue11 = 10000000000
                if cmgCall4 <= textValue11 then
                  numberValue15 = cmgCall4
                  textValue11 = math
                  textValue11 = textValue11.min
                  workValue17 = numberValue19
                  mathHelper2 = math
                  mathHelper2 = mathHelper2.floor
                  mathHelper3 = cmgCall4 / 2
                  mathHelper2, mathHelper3 = mathHelper2(mathHelper3)
                  textValue11 = textValue11(workValue17, mathHelper2, mathHelper3)
                  numberValue19 = textValue11
                  textValue11 = arg22
                  textValue11()
              end
            end
          end
          else
            textValue11 = notify
            workValue17 = "~r~Total price must be a whole number between \194\16310,000 and \194\16310,000,000,000."
            -- Beginner: Show a notification to the player.
            textValue11(workValue17)
          end
        end
        vehicle2(cmgCall6, flag12, cmgCall12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, workValue18, flag11, flag13, flag14)
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "Weeks To Pay"
    workValue18 = "The amount of weeks the player has to pay off the plan. Automatically calculated if Pay Amount Per Week is set."
    flag11 = {}
    flag13 = tostring
    flag14 = numberValue16
    flag13 = flag13(flag14)
    flag14 = " week"
    cmgCall16 = numberValue16
    if cmgCall16 > 1 then
      cmgCall16 = "s"
      if cmgCall16 then
        goto flow_label_44
      end
    end
    cmgCall16 = ""
    ::flow_label_44::
    flag13 = flag13 .. flag14 .. cmgCall16
    flag11.RightLabel = flag13
    flag13 = true
    function flag14(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12, cmgCall12
      if arg33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.clientPrompt
        cmgCall6 = "Enter Weeks To Pay"
        flag12 = ""
        function cmgCall12(arg14)
          local cmgCall4, textValue11, workValue17
          cmgCall4 = tonumber
          textValue11 = arg14
          cmgCall4 = cmgCall4(textValue11)
          if cmgCall4 then
            textValue11 = math
            textValue11 = textValue11.type
            workValue17 = cmgCall4
            textValue11 = textValue11(workValue17)
            if "integer" == textValue11 and cmgCall4 >= 1 and cmgCall4 <= 26 then
              numberValue16 = cmgCall4
              textValue11 = math
              textValue11 = textValue11.ceil
              workValue17 = arg12
              workValue17 = workValue17()
              workValue17 = workValue17 / cmgCall4
              textValue11 = textValue11(workValue17)
              numberValue17 = textValue11
              textValue11 = true
              flag10 = textValue11
          end
          else
            textValue11 = notify
            workValue17 = "~r~Total amount of weeks must be a whole number between 1 week and 26 weeks."
            -- Beginner: Show a notification to the player.
            textValue11(workValue17)
          end
        end
        vehicle2(cmgCall6, flag12, cmgCall12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, workValue18, flag11, flag13, flag14)
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "Pay Amount Per Week"
    workValue18 = "The amount of money to pay each week. Automatically calculated if Weekly Pay Amount is set."
    flag11 = {}
    flag13 = "\194\163"
    flag14 = getMoneyStringFormatted
    cmgCall16 = numberValue17
    flag14 = flag14(cmgCall16)
    flag13 = flag13 .. flag14
    flag11.RightLabel = flag13
    flag13 = true
    function flag14(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12, cmgCall12
      if arg33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.clientPrompt
        cmgCall6 = "Enter Amount Per Week"
        flag12 = ""
        function cmgCall12(arg14)
          local cmgCall4, textValue11, workValue17, mathHelper2, mathHelper3, workValue24, textValue18
          cmgCall4 = tonumber
          textValue11 = arg14
          cmgCall4 = cmgCall4(textValue11)
          if cmgCall4 then
            textValue11 = math
            textValue11 = textValue11.type
            workValue17 = cmgCall4
            textValue11 = textValue11(workValue17)
            if "integer" == textValue11 then
              textValue11 = math
              textValue11 = textValue11.ceil
              workValue17 = arg12
              workValue17 = workValue17()
              workValue17 = workValue17 / 26
              textValue11 = textValue11(workValue17)
              if cmgCall4 >= textValue11 then
                textValue11 = arg12
                textValue11 = textValue11()
                if cmgCall4 <= textValue11 then
                  numberValue17 = cmgCall4
                  textValue11 = math
                  textValue11 = textValue11.ceil
                  workValue17 = arg12
                  workValue17 = workValue17()
                  workValue17 = workValue17 / cmgCall4
                  textValue11 = textValue11(workValue17)
                  numberValue16 = textValue11
                  textValue11 = false
                  flag10 = textValue11
              end
            end
          end
          else
            textValue11 = notify
            workValue17 = "~r~Pay amount per week must be a whole number between \194\163"
            mathHelper2 = getMoneyStringFormatted
            mathHelper3 = math
            mathHelper3 = mathHelper3.ceil
            workValue24 = arg12
            workValue24 = workValue24()
            workValue24 = workValue24 / 26
            mathHelper3, workValue24, textValue18 = mathHelper3(workValue24)
            mathHelper2 = mathHelper2(mathHelper3, workValue24, textValue18)
            mathHelper3 = " and \194\163"
            workValue24 = getMoneyStringFormatted
            textValue18 = arg12
            textValue18 = textValue18()
            workValue24 = workValue24(textValue18)
            textValue18 = "."
            workValue17 = workValue17 .. mathHelper2 .. mathHelper3 .. workValue24 .. textValue18
            -- Beginner: Show a notification to the player.
            textValue11(workValue17)
          end
        end
        vehicle2(cmgCall6, flag12, cmgCall12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, workValue18, flag11, flag13, flag14)
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "Maximum Missed Payments"
    workValue18 = "The maximum amount of missed payments in weeks allowed before the payment plan is automatically cancelled."
    flag11 = {}
    flag13 = tostring
    flag14 = numberValue18
    flag13 = flag13(flag14)
    flag14 = " week"
    cmgCall16 = numberValue18
    if cmgCall16 > 1 then
      cmgCall16 = "s"
      if cmgCall16 then
        goto flow_label_81
      end
    end
    cmgCall16 = ""
    ::flow_label_81::
    flag13 = flag13 .. flag14 .. cmgCall16
    flag11.RightLabel = flag13
    flag13 = true
    function flag14(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12, cmgCall12
      if arg33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.clientPrompt
        cmgCall6 = "Enter Maximum Missed Payments"
        flag12 = ""
        function cmgCall12(arg14)
          local cmgCall4, textValue11, workValue17
          cmgCall4 = tonumber
          textValue11 = arg14
          cmgCall4 = cmgCall4(textValue11)
          if cmgCall4 then
            textValue11 = math
            textValue11 = textValue11.type
            workValue17 = cmgCall4
            textValue11 = textValue11(workValue17)
            if "integer" == textValue11 and cmgCall4 >= 1 and cmgCall4 <= 4 then
              numberValue18 = cmgCall4
          end
          else
            textValue11 = notify
            workValue17 = "~r~Total price must be a whole number between 1 week and 4 weeks."
            -- Beginner: Show a notification to the player.
            textValue11(workValue17)
          end
        end
        vehicle2(cmgCall6, flag12, cmgCall12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, workValue18, flag11, flag13, flag14)
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "Initial Deposit"
    workValue18 = "The amount that has to be paid when accepting the offer. Counts towards the total."
    flag11 = {}
    flag13 = "\194\163"
    flag14 = getMoneyStringFormatted
    cmgCall16 = numberValue19
    flag14 = flag14(cmgCall16)
    flag13 = flag13 .. flag14
    flag11.RightLabel = flag13
    flag13 = true
    function flag14(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12, cmgCall12
      if arg33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.clientPrompt
        cmgCall6 = "Enter Initial Deposit"
        flag12 = ""
        function cmgCall12(arg14)
          local cmgCall4, textValue11, workValue17, mathHelper2, mathHelper3, workValue24
          cmgCall4 = tonumber
          textValue11 = arg14
          cmgCall4 = cmgCall4(textValue11)
          if cmgCall4 then
            textValue11 = math
            textValue11 = textValue11.type
            workValue17 = cmgCall4
            textValue11 = textValue11(workValue17)
            if "integer" == textValue11 and cmgCall4 >= 0 then
              textValue11 = numberValue15
              textValue11 = textValue11 / 2
              if cmgCall4 <= textValue11 then
                numberValue19 = cmgCall4
                textValue11 = arg22
                textValue11()
            end
          end
          else
            textValue11 = notify
            workValue17 = "~r~Initial deposit must be a whole number between \194\1630 and \194\163"
            mathHelper2 = getMoneyStringFormatted
            mathHelper3 = math
            mathHelper3 = mathHelper3.floor
            workValue24 = numberValue15
            workValue24 = workValue24 / 2
            mathHelper3, workValue24 = mathHelper3(workValue24)
            mathHelper2 = mathHelper2(mathHelper3, workValue24)
            mathHelper3 = "."
            workValue17 = workValue17 .. mathHelper2 .. mathHelper3
            -- Beginner: Show a notification to the player.
            textValue11(workValue17)
          end
        end
        vehicle2(cmgCall6, flag12, cmgCall12)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, workValue18, flag11, flag13, flag14)
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "~g~Submit To Nearby"
    workValue18 = ""
    flag11 = {}
    flag11.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag13 = true
    function flag14(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12, cmgCall12, textValue17, flag15, tableHelper3
      if arg33 then
        vehicle2 = TriggerServerEvent
        cmgCall6 = "1fb9ace400"
        flag12 = numberValue23
        cmgCall12 = numberValue15
        textValue17 = numberValue16
        flag15 = numberValue18
        tableHelper3 = numberValue19
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1fb9ace400".
        vehicle2(cmgCall6, flag12, cmgCall12, textValue17, flag15, tableHelper3)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, workValue18, flag11, flag13, flag14)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "paymentplanoffer"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16
    arg12 = workValue19
    if not arg12 then
      return
    end
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~Vehicle Offered: "
    arg32 = CMG
    arg32 = arg32.getVehicleNameFromId
    arg42 = workValue19.vehicleId
    arg32 = arg32(arg42)
    arg22 = arg22 .. arg32
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Total Price"
    arg32 = "The total amount of money that you will have to be pay before ownership is transferred."
    arg42 = {}
    workValue18 = "\194\163"
    flag11 = getMoneyStringFormatted
    flag13 = workValue19.totalPrice
    flag11 = flag11(flag13)
    workValue18 = workValue18 .. flag11
    arg42.RightLabel = workValue18
    workValue18 = true
    function flag11()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Weeks To Pay"
    arg32 = "The amount of weeks you have to pay off the plan."
    arg42 = {}
    workValue18 = tostring
    flag11 = workValue19.numWeeks
    workValue18 = workValue18(flag11)
    flag11 = " week"
    flag13 = workValue19.numWeeks
    if flag13 > 1 then
      flag13 = "s"
      if flag13 then
        goto flow_label_46
      end
    end
    flag13 = ""
    ::flow_label_46::
    workValue18 = workValue18 .. flag11 .. flag13
    arg42.RightLabel = workValue18
    workValue18 = true
    function flag11()
      local arg13, arg23
    end
    arg12(arg22, arg32, arg42, workValue18, flag11)
    arg12 = workValue19.totalPrice
    arg22 = workValue19.initialDeposit
    arg12 = arg12 - arg22
    arg22 = math
    arg22 = arg22.ceil
    arg32 = workValue19.numWeeks
    arg32 = arg12 / arg32
    arg22 = arg22(arg32)
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "Pay Amount Per Week"
    workValue18 = "The amount of money you have to pay each week."
    flag11 = {}
    flag13 = "\194\163"
    flag14 = getMoneyStringFormatted
    cmgCall16 = arg22
    flag14 = flag14(cmgCall16)
    flag13 = flag13 .. flag14
    flag11.RightLabel = flag13
    flag13 = true
    function flag14()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, workValue18, flag11, flag13, flag14)
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "Maximum Missed Payments"
    workValue18 = "The maximum amount of missed payments in weeks allowed before the payment plan is automatically cancelled."
    flag11 = {}
    flag13 = tostring
    flag14 = workValue19.maxMissedWeeks
    flag13 = flag13(flag14)
    flag14 = " week"
    cmgCall16 = workValue19.maxMissedWeeks
    if cmgCall16 > 1 then
      cmgCall16 = "s"
      if cmgCall16 then
        goto flow_label_93
      end
    end
    cmgCall16 = ""
    ::flow_label_93::
    flag13 = flag13 .. flag14 .. cmgCall16
    flag11.RightLabel = flag13
    flag13 = true
    function flag14()
      local arg13, arg23
    end
    arg32(arg42, workValue18, flag11, flag13, flag14)
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "Initial Deposit"
    workValue18 = "The amount that has to be paid when accepting the offer. Counts towards the total."
    flag11 = {}
    flag13 = "\194\163"
    flag14 = getMoneyStringFormatted
    cmgCall16 = workValue19.initialDeposit
    flag14 = flag14(cmgCall16)
    flag13 = flag13 .. flag14
    flag11.RightLabel = flag13
    flag13 = true
    function flag14()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, workValue18, flag11, flag13, flag14)
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "~g~Accept Payment Plan"
    workValue18 = ""
    flag11 = {}
    flag11.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag13 = true
    function flag14(arg13, arg23, arg33)
      local vehicle2, cmgCall6
      if arg33 then
        vehicle2 = nil
        workValue19 = vehicle2
        vehicle2 = TriggerServerEvent
        cmgCall6 = "2c17720884"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2c17720884".
        vehicle2(cmgCall6)
        vehicle2 = RageUI
        vehicle2 = vehicle2.CloseAll
        vehicle2()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, workValue18, flag11, flag13, flag14)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "vehiclemenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag
    arg12 = workValue34
    if arg12 then
      arg12 = workValue34.isGangGarage
      if arg12 then
        arg12 = workValue34.gangId
        arg22 = dataTable20
        arg22 = arg22[arg12]
        if arg22 then
          arg32 = table
          arg32 = arg32.count
          arg42 = arg22.vehicles
          if not arg42 then
            arg42 = {}
          end
          -- Beginner: result below is count.
          arg32 = arg32(arg42)
          arg42 = arg22.maxSlots
          if not arg42 then
            arg42 = 0
          end
          if arg32 >= arg42 then
            workValue18 = RageUI
            workValue18 = workValue18.Separator
            flag11 = string
            flag11 = flag11.format
            flag13 = "~r~Gang Garage Slots: %d/%d"
            flag14 = arg32
            cmgCall16 = arg42
            flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag = flag11(flag13, flag14, cmgCall16)
            workValue18(flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag)
          else
            workValue18 = RageUI
            workValue18 = workValue18.Separator
            flag11 = string
            flag11 = flag11.format
            flag13 = "~s~Gang Garage Slots: ~b~%d~s~/~b~%d"
            flag14 = arg32
            cmgCall16 = arg42
            flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag = flag11(flag13, flag14, cmgCall16)
            workValue18(flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag)
          end
        end
    end
    else
      arg12 = workValue34
      if arg12 then
        arg12 = workValue4
        if arg12 then
          arg12 = workValue6
          arg22 = workValue34.type
          if arg12 == arg22 then
            arg12 = workValue4.current
            arg22 = workValue4.cap
            if arg12 > arg22 then
              arg32 = RageUI
              arg32 = arg32.Separator
              arg42 = string
              arg42 = arg42.format
              workValue18 = "~r~Unique Slots | %s: %d/%d"
              flag11 = workValue34.type
              flag13 = arg12
              flag14 = arg22
              arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag = arg42(workValue18, flag11, flag13, flag14)
              arg32(arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag)
            else
              arg32 = RageUI
              arg32 = arg32.Separator
              arg42 = string
              arg42 = arg42.format
              workValue18 = "~s~Unique Slots | %s: ~b~%d~s~/~b~%d"
              flag11 = workValue34.type
              flag13 = arg12
              flag14 = arg22
              arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag = arg42(workValue18, flag11, flag13, flag14)
              arg32(arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag)
            end
          end
        end
      end
    end
    arg12 = workValue34
    if arg12 then
      arg12 = pairs
      arg22 = workValue34.vehicles
      arg12, arg22, arg32, arg42 = arg12(arg22)
      for workValue18, flag11 in arg12, arg22, arg32, arg42 do
        flag13 = textValue21
        flag14 = flag11
        cmgCall16 = false
        flag13(flag14, cmgCall16)
      end
    end
    arg22 = workValue12
    arg12 = dataTable9
    arg12 = arg12[arg22]
    if arg12 then
      arg22 = {}
      arg32 = pairs
      arg42 = arg12
      arg32, arg42, workValue18, flag11 = arg32(arg42)
      for flag13, flag14 in arg32, arg42, workValue18, flag11 do
        cmgCall16 = tonumber
        flag17 = flag13
        cmgCall16 = cmgCall16(flag17)
        flag17 = dataTable19
        cmgCall16 = flag17[cmgCall16]
        if cmgCall16 then
          flag17 = workValue31
          numberValue2 = cmgCall16.vehicleId
          flag17 = flag17(numberValue2)
          if flag17 then
            flag17 = table
            flag17 = flag17.insert
            numberValue2 = arg22
            flag = {}
            flag.priority = flag14
            flag.vehicleInfo = cmgCall16
            flag17(numberValue2, flag)
          end
        end
      end
      arg32 = table
      arg32 = arg32.sort
      arg42 = arg22
      function workValue18(arg13, arg23)
        local arg33, vehicle2
        arg33 = arg13.priority
        vehicle2 = arg23.priority
        arg33 = arg33 > vehicle2
        return arg33
      end
      arg32(arg42, workValue18)
      arg32 = pairs
      arg42 = arg22
      arg32, arg42, workValue18, flag11 = arg32(arg42)
      for flag13, flag14 in arg32, arg42, workValue18, flag11 do
        cmgCall16 = textValue21
        flag17 = flag14.vehicleInfo
        numberValue2 = true
        cmgCall16(flag17, numberValue2)
      end
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "confirm"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "No"
    arg32 = ""
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
      local vehicle2, cmgCall6
      if arg33 then
        vehicle2 = tCMG
        vehicle2 = vehicle2.notify
        cmgCall6 = "~y~Cancelled!"
        -- Beginner: Show a notification to the player.
        vehicle2(cmgCall6)
      end
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "spawnmenu"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Yes"
    arg32 = ""
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12, cmgCall12
      if arg33 then
        vehicle2 = GetVehiclePedIsIn
        cmgCall6 = CMG
        cmgCall6 = cmgCall6.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgCall6 = cmgCall6()
        flag12 = false
        -- Beginner: result below is currentVehicle.
        vehicle2 = vehicle2(cmgCall6, flag12)
        cmgCall6 = DoesEntityExist
        flag12 = vehicle2
        cmgCall6 = cmgCall6(flag12)
        if cmgCall6 then
          cmgCall6 = DeleteEntity
          flag12 = vehicle2
          -- Beginner: Delete a GTA entity.
          cmgCall6(flag12)
        end
        cmgCall6 = CMG
        cmgCall6 = cmgCall6.GetRageInputText
        flag12 = "Please type CONFIRM in all caps to confirm the crushing of this vehicle"
        cmgCall6 = cmgCall6(flag12)
        if "CONFIRM" == cmgCall6 then
          cmgCall6 = TriggerServerEvent
          flag12 = "54472a6cb5"
          cmgCall12 = numberValue23
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "54472a6cb5".
          cmgCall6(flag12, cmgCall12)
        else
          cmgCall6 = tCMG
          cmgCall6 = cmgCall6.notify
          flag12 = "~r~Cancelled vehicle crush!"
          -- Beginner: Show a notification to the player.
          cmgCall6(flag12)
        end
      end
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "spawnmenu"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "settings"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17
    arg12 = RageUI
    arg12 = arg12.Checkbox
    arg22 = "Hide custom folder vehicles"
    arg32 = "This hides these vehicles from their original garage."
    arg42 = dataTable11
    workValue18 = "hideCustomFolderVehiclesFromOriginalGarages"
    arg42 = arg42[workValue18]
    workValue18 = {}
    function flag11(arg13, arg23, arg33)
    end
    function flag13()
      local arg13, arg23
      arg13 = dataTable11
      arg23 = "hideCustomFolderVehiclesFromOriginalGarages"
      arg13[arg23] = true
      arg13 = CMG
      arg13 = arg13.saveGarageSettings
      arg13()
    end
    function flag14()
      local arg13, arg23
      arg13 = dataTable11
      arg23 = "hideCustomFolderVehiclesFromOriginalGarages"
      arg13[arg23] = false
      arg13 = CMG
      arg13 = arg13.saveGarageSettings
      arg13()
    end
    -- Beginner: Draw a RageUI checkbox.
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14)
    arg12 = RageUI
    arg12 = arg12.Checkbox
    arg22 = "Show Custom Folders In Garage Menu"
    arg32 = "~y~This removes the [Custom Folders] menu item, and puts custom folders in the root garages menu."
    arg42 = dataTable11.showCustomFoldersInGarageMenu
    workValue18 = {}
    function flag11(arg13, arg23, arg33)
    end
    function flag13()
      local arg13, arg23
      dataTable11.showCustomFoldersInGarageMenu = true
      arg13 = CMG
      arg13 = arg13.saveGarageSettings
      arg13()
    end
    function flag14()
      local arg13, arg23
      dataTable11.showCustomFoldersInGarageMenu = false
      arg13 = CMG
      arg13 = arg13.saveGarageSettings
      arg13()
    end
    -- Beginner: Draw a RageUI checkbox.
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "View All Vehicles"
    arg32 = "View vehicles for the purpose of selling and renting."
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11()
      local arg13, arg23
    end
    flag13 = RMenu
    flag14 = flag13
    flag13 = flag13.Get
    cmgCall16 = "garages"
    flag17 = "viewall"
    flag13, flag14, cmgCall16, flag17 = flag13(flag14, cmgCall16, flag17)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "viewall"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7
    arg12 = pairs
    arg22 = textValue19
    arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7 = arg22()
    arg12, arg22, arg32, arg42 = arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7)
    for workValue18, flag11 in arg12, arg22, arg32, arg42 do
      flag13 = flag11.info
      flag14 = flag13.uuid
      flag13 = dataTable12
      flag13 = flag13[flag14]
      if not flag13 then
        flag13 = flag11.info
        flag13 = flag13.name
      end
      flag14 = RageUI
      flag14 = flag14.ButtonWithStyle
      cmgCall16 = flag13
      flag17 = ""
      numberValue2 = {}
      numberValue2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag = true
      function flag2(arg13, arg23, arg33)
        local vehicle2
        if arg33 then
          vehicle2 = flag11.uuid
          numberValue23 = vehicle2
          vehicle2 = flag11.info
          vehicle2 = vehicle2.vehicleId
          textValue15 = vehicle2
        end
      end
      flag3 = RMenu
      workValue8 = flag3
      flag3 = flag3.Get
      textValue6 = "garages"
      textValue7 = "rentonlymenu"
      flag3, workValue8, textValue6, textValue7 = flag3(workValue8, textValue6, textValue7)
      -- Beginner: Draw a selectable RageUI menu button.
      flag14(cmgCall16, flag17, numberValue2, flag, flag2, flag3, workValue8, textValue6, textValue7)
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "rentonlymenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3
    arg12 = CMG
    arg12 = arg12.canVehicleBeSold
    arg22 = textValue15
    arg12 = arg12(arg22)
    if arg12 then
      arg12 = cmgCall7
      arg22 = numberValue23
      arg12 = arg12(arg22)
      arg12 = not arg12
    end
    arg22 = cmgCall7
    arg32 = numberValue23
    arg22 = arg22(arg32)
    if arg22 then
      arg22 = cmgCall8
      if arg22 then
        goto flow_label_20
      end
    end
    arg22 = ""
    ::flow_label_20::
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "Sell Vehicle to Player"
    workValue18 = arg22
    flag11 = {}
    flag11.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag13 = arg12
    function flag14(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12
      if arg33 then
        vehicle2 = arg12
        if vehicle2 then
          vehicle2 = TriggerServerEvent
          cmgCall6 = "0d3561179d"
          flag12 = numberValue23
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0d3561179d".
          vehicle2(cmgCall6, flag12)
        end
      end
    end
    cmgCall16 = RMenu
    flag17 = cmgCall16
    cmgCall16 = cmgCall16.Get
    numberValue2 = "garages"
    flag = "viewall"
    cmgCall16, flag17, numberValue2, flag, flag2, flag3 = cmgCall16(flag17, numberValue2, flag)
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3)
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    arg42 = "Rent Vehicle to Player"
    workValue18 = ""
    flag11 = {}
    flag11.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag13 = CMG
    flag13 = flag13.canVehicleBeRented
    flag14 = textValue15
    flag13 = flag13(flag14)
    function flag14(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12
      if arg33 then
        vehicle2 = CMG
        vehicle2 = vehicle2.canVehicleBeRented
        cmgCall6 = textValue15
        vehicle2 = vehicle2(cmgCall6)
        if vehicle2 then
          vehicle2 = TriggerServerEvent
          cmgCall6 = "6cf393ee47"
          flag12 = numberValue23
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6cf393ee47".
          vehicle2(cmgCall6, flag12)
        end
      end
    end
    cmgCall16 = RMenu
    flag17 = cmgCall16
    cmgCall16 = cmgCall16.Get
    numberValue2 = "garages"
    flag = "viewall"
    cmgCall16, flag17, numberValue2, flag, flag2, flag3 = cmgCall16(flag17, numberValue2, flag)
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3)
    arg32 = CMG
    arg32 = arg32.canVehicleBeRented
    arg42 = textValue15
    arg32 = arg32(arg42)
    if arg32 then
      arg32 = cmgCall7
      arg42 = numberValue23
      arg32 = arg32(arg42)
      arg32 = not arg32
    end
    arg42 = cmgCall7
    workValue18 = numberValue23
    arg42 = arg42(workValue18)
    if arg42 then
      arg42 = cmgCall8
      if arg42 then
        goto flow_label_72
      end
    end
    arg42 = ""
    ::flow_label_72::
    workValue18 = RageUI
    workValue18 = workValue18.ButtonWithStyle
    flag11 = "Payment Plan Vehicle to Player"
    flag13 = arg42
    flag14 = {}
    flag14.RightLabel = "\226\134\146\226\134\146\226\134\146"
    cmgCall16 = arg32
    function flag17()
      local arg13, arg23
    end
    numberValue2 = RMenu
    flag = numberValue2
    numberValue2 = numberValue2.Get
    flag2 = "garages"
    flag3 = "paymentplan"
    numberValue2, flag, flag2, flag3 = numberValue2(flag, flag2, flag3)
    workValue18(flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag, flag2, flag3)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
end
rageUiCall6(rageUiCall7, rageUiCall8, textValue24, textValue25)
rageUiCall6 = RMenu
rageUiCall6 = rageUiCall6.Add
rageUiCall7 = "disclaimer"
rageUiCall8 = "main"
textValue24 = RageUI
textValue24 = textValue24.CreateMenu
textValue25 = ""
textValue26 = "~b~Terms And Conditions"
rageUiCall9 = CMG
rageUiCall9 = rageUiCall9.getRageUIMenuWidth
rageUiCall9 = rageUiCall9()
rageUiCall10 = CMG
rageUiCall10 = rageUiCall10.getRageUIMenuHeight
rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall10()
textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = textValue24(textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
rageUiCall6(rageUiCall7, rageUiCall8, textValue24, textValue25, textValue26, rageUiCall9, rageUiCall10, eventRegistration5, eventRegistration6, flag16, workValue33, cmgCall17, cmgCall, threadCall, numberValue, eventRegistration, textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
rageUiCall6 = CMG
function rageUiCall7(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable
  arg3 = false
  arg4 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg4 = arg4()
  arg5 = RageUI
  arg5 = arg5.Visible
  arg6 = RMenu
  arg7 = arg6
  arg6 = arg6.Get
  iterator2 = "disclaimer"
  tableHelper2 = "main"
  -- Beginner: result below is menu.
  arg6 = arg6(arg7, iterator2, tableHelper2)
  arg7 = true
  arg5(arg6, arg7)
  while true do
    arg5 = RageUI
    arg5 = arg5.Visible
    arg6 = RMenu
    arg7 = arg6
    arg6 = arg6.Get
    iterator2 = "disclaimer"
    tableHelper2 = "main"
    arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable = arg6(arg7, iterator2, tableHelper2)
    -- Beginner: result below is menuVisible.
    arg5 = arg5(arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable)
    if not arg5 or arg3 then
      break
    end
    arg5 = math
    arg5 = arg5.floor
    arg6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg6 = arg6()
    arg6 = arg6 - arg4
    arg6 = arg6 / 1000
    arg5 = arg5(arg6)
    arg6 = math
    arg6 = arg6.max
    arg7 = 0
    iterator2 = 3
    iterator2 = iterator2 - arg5
    arg6 = arg6(arg7, iterator2)
    arg7 = RageUI
    arg7 = arg7.IsVisible
    iterator2 = RMenu
    tableHelper2 = iterator2
    iterator2 = iterator2.Get
    dataTable25 = "disclaimer"
    workValue2 = "main"
    -- Beginner: result below is menu.
    iterator2 = iterator2(tableHelper2, dataTable25, workValue2)
    tableHelper2 = true
    dataTable25 = true
    workValue2 = true
    function dataTable()
      local arg12, arg22, arg32, arg42, workValue18, flag11
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~y~Terms of selling the "
      arg32 = arg1
      arg42 = ":"
      arg22 = arg22 .. arg32 .. arg42
      arg12(arg22)
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "Any agreements made between you and the buyer are not covered by CMG"
      arg12(arg22)
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "You forfeit any right to claim the "
      arg32 = arg1
      arg42 = " back after payment"
      arg22 = arg22 .. arg32 .. arg42
      arg12(arg22)
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "You agree the buyer has full discretion over the "
      arg32 = arg1
      arg42 = " hereafter"
      arg22 = arg22 .. arg32 .. arg42
      arg12(arg22)
      arg12 = arg6
      if arg12 > 0 then
        arg12 = RageUI
        arg12 = arg12.ButtonWithStyle
        arg22 = "~r~I agree to the above"
        arg32 = ""
        arg42 = {}
        workValue18 = tostring
        flag11 = arg6
        workValue18 = workValue18(flag11)
        arg42.RightLabel = workValue18
        workValue18 = true
        function flag11()
          local arg13, arg23
        end
        -- Beginner: Draw a selectable RageUI menu button.
        arg12(arg22, arg32, arg42, workValue18, flag11)
      else
        arg12 = RageUI
        arg12 = arg12.ButtonWithStyle
        arg22 = "~g~I agree to the above"
        arg32 = ""
        arg42 = {}
        arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
        workValue18 = true
        function flag11(arg13, arg23, arg33)
          local vehicle2
          if arg33 then
            vehicle2 = true
            arg3 = vehicle2
          end
        end
        arg12(arg22, arg32, arg42, workValue18, flag11)
      end
    end
    arg7(iterator2, tableHelper2, dataTable25, workValue2, dataTable)
    arg7 = Citizen
    arg7 = arg7.Wait
    iterator2 = 0
    arg7(iterator2)
  end
  if arg3 then
    arg5 = arg2
    arg5()
  else
    arg5 = notify
    arg6 = "~r~Sell ended as you did not agree to the terms."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
  end
end
rageUiCall6.displaySellDisclaimer = rageUiCall7
rageUiCall6 = tCMG
function rageUiCall7(arg1)
  local arg2, arg3, arg4, arg5
  if arg1 then
    arg2 = DecorExistOn
    arg3 = arg1
    arg4 = "ac76c9d452"
    arg2 = arg2(arg3, arg4)
    if arg2 then
      arg2 = DecorGetInt
      arg3 = arg1
      arg4 = "ac76c9d452"
      arg2 = arg2(arg3, arg4)
      arg3 = CMG
      arg3 = arg3.getVehicleIdFromModel
      arg4 = GetEntityModel
      arg5 = arg1
      arg4, arg5 = arg4(arg5)
      arg3 = arg3(arg4, arg5)
      if arg3 then
        arg4 = arg2
        arg5 = arg3
        return arg4, arg5
      end
    end
  end
end
rageUiCall6.getVehicleInfos = rageUiCall7
rageUiCall6 = tCMG
function rageUiCall7(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2
  arg2 = CMG
  arg2 = arg2.getObjectId
  arg3 = arg1
  arg4 = "tCMG.getNetworkedVehicleInfos"
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg3 = DecorExistOn
    arg4 = arg2
    arg5 = "ac76c9d452"
    arg3 = arg3(arg4, arg5)
    if arg3 then
      arg3 = DecorGetInt
      arg4 = arg2
      arg5 = "ac76c9d452"
      arg3 = arg3(arg4, arg5)
      arg4 = CMG
      arg4 = arg4.getVehicleIdFromModel
      arg5 = GetEntityModel
      arg6 = arg2
      arg5, arg6, arg7, iterator2 = arg5(arg6)
      arg4 = arg4(arg5, arg6, arg7, iterator2)
      arg5 = DecorGetInt
      arg6 = arg2
      arg7 = "0a6cf607ed"
      arg5 = arg5(arg6, arg7)
      if arg4 and arg5 > 0 then
        arg6 = arg3
        arg7 = arg4
        iterator2 = arg5
        return arg6, arg7, iterator2
      end
    end
  end
end
rageUiCall6.getNetworkedVehicleInfos = rageUiCall7
function rageUiCall6(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable
  arg4 = 0
  arg5 = GetNumModColors
  arg6 = arg1
  arg7 = false
  arg5 = arg5(arg6, arg7)
  arg5 = arg5 - 1
  arg6 = 1
  for arg7 = arg4, arg5, arg6 do
    iterator2 = SetVehicleModColor_1
    tableHelper2 = arg3
    dataTable25 = arg1
    workValue2 = arg7
    dataTable = 0
    iterator2(tableHelper2, dataTable25, workValue2, dataTable)
    iterator2 = GetVehicleColours
    tableHelper2 = arg3
    iterator2 = iterator2(tableHelper2)
    if iterator2 == arg2 then
      return
    end
  end
  arg4 = GetVehicleColours
  arg5 = arg3
  arg4, arg5 = arg4(arg5)
  arg6 = SetVehicleColours
  arg7 = arg3
  iterator2 = arg2
  tableHelper2 = arg5
  arg6(arg7, iterator2, tableHelper2)
end
function rageUiCall7(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2
  arg4 = 0
  arg5 = GetNumModColors
  arg6 = arg1
  arg7 = false
  arg5 = arg5(arg6, arg7)
  arg5 = arg5 - 1
  arg6 = 1
  for arg7 = arg4, arg5, arg6 do
    iterator2 = SetVehicleModColor_2
    tableHelper2 = arg3
    dataTable25 = arg1
    workValue2 = arg7
    iterator2(tableHelper2, dataTable25, workValue2)
    iterator2 = GetVehicleColours
    tableHelper2 = arg3
    iterator2, tableHelper2 = iterator2(tableHelper2)
    if tableHelper2 == arg2 then
      return
    end
  end
  arg4 = SetVehicleColours
  arg5 = arg3
  arg6 = GetVehicleColours
  arg7 = arg3
  arg6 = arg6(arg7)
  arg7 = arg2
  arg4(arg5, arg6, arg7)
end
rageUiCall8 = CMG
function textValue24(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator
  arg3 = 0
  arg4 = pairs
  arg5 = arg1.chrome
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = rageUiCall6
      workValue2 = 5
      dataTable = tonumber
      iterator = iterator2
      dataTable = dataTable(iterator)
      iterator = arg2
      dataTable25(workValue2, dataTable, iterator)
    end
  end
  arg4 = pairs
  arg5 = arg1.classic
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = rageUiCall6
      workValue2 = 0
      dataTable = tonumber
      iterator = iterator2
      dataTable = dataTable(iterator)
      iterator = arg2
      dataTable25(workValue2, dataTable, iterator)
    end
  end
  arg4 = pairs
  arg5 = arg1.matte
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = rageUiCall6
      workValue2 = 3
      dataTable = tonumber
      iterator = iterator2
      dataTable = dataTable(iterator)
      iterator = arg2
      dataTable25(workValue2, dataTable, iterator)
    end
  end
  arg4 = pairs
  arg5 = arg1.metals
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = rageUiCall6
      workValue2 = 4
      dataTable = tonumber
      iterator = iterator2
      dataTable = dataTable(iterator)
      iterator = arg2
      dataTable25(workValue2, dataTable, iterator)
    end
  end
  arg4 = pairs
  arg5 = arg1.metallic
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = rageUiCall6
      workValue2 = 1
      dataTable = tonumber
      iterator = iterator2
      dataTable = dataTable(iterator)
      iterator = arg2
      dataTable25(workValue2, dataTable, iterator)
    end
  end
  arg4 = pairs
  arg5 = arg1.util
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = tonumber
      workValue2 = iterator2
      dataTable25 = dataTable25(workValue2)
      arg3 = dataTable25 or arg3
      if not dataTable25 then
        arg3 = 0
      end
    end
  end
  arg4 = pairs
  arg5 = arg1.chameleon
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = tonumber
      workValue2 = iterator2
      dataTable25 = dataTable25(workValue2)
      arg3 = dataTable25 or arg3
      if not dataTable25 then
        arg3 = 0
      end
    end
  end
  arg4 = arg1.primaryrgb
  if arg4 then
    arg5 = arg4.blue
    if arg5 then
      arg5 = arg4.red
      if arg5 then
        arg5 = arg4.green
        if arg5 then
          arg5 = arg4.active
          if arg5 then
            arg5 = SetVehicleCustomPrimaryColour
            arg6 = arg2
            arg7 = arg4.red
            iterator2 = arg4.green
            tableHelper2 = arg4.blue
            arg5(arg6, arg7, iterator2, tableHelper2)
        end
      end
    end
  end
  elseif 0 ~= arg3 then
    arg5 = GetVehicleColours
    arg6 = arg2
    arg5, arg6 = arg5(arg6)
    arg7 = SetVehicleColours
    iterator2 = arg2
    tableHelper2 = arg3
    dataTable25 = arg6
    arg7(iterator2, tableHelper2, dataTable25)
  end
end
rageUiCall8.applyPrimaryVehicleColours = textValue24
rageUiCall8 = CMG
function textValue24(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator
  arg3 = 0
  arg4 = pairs
  arg5 = arg1.chrome2
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = rageUiCall7
      workValue2 = 5
      dataTable = tonumber
      iterator = iterator2
      dataTable = dataTable(iterator)
      iterator = arg2
      dataTable25(workValue2, dataTable, iterator)
    end
  end
  arg4 = pairs
  arg5 = arg1.classic2
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = rageUiCall7
      workValue2 = 0
      dataTable = tonumber
      iterator = iterator2
      dataTable = dataTable(iterator)
      iterator = arg2
      dataTable25(workValue2, dataTable, iterator)
    end
  end
  arg4 = pairs
  arg5 = arg1.matte2
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = rageUiCall7
      workValue2 = 3
      dataTable = tonumber
      iterator = iterator2
      dataTable = dataTable(iterator)
      iterator = arg2
      dataTable25(workValue2, dataTable, iterator)
    end
  end
  arg4 = pairs
  arg5 = arg1.metal2
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = rageUiCall7
      workValue2 = 4
      dataTable = tonumber
      iterator = iterator2
      dataTable = dataTable(iterator)
      iterator = arg2
      dataTable25(workValue2, dataTable, iterator)
    end
  end
  arg4 = pairs
  arg5 = arg1.metallic2
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = rageUiCall7
      workValue2 = 1
      dataTable = tonumber
      iterator = iterator2
      dataTable = dataTable(iterator)
      iterator = arg2
      dataTable25(workValue2, dataTable, iterator)
    end
  end
  if 0 ~= arg3 then
    arg4 = GetVehicleColours
    arg5 = arg2
    arg4 = arg4(arg5)
    arg5 = SetVehicleColours
    arg6 = arg2
    arg7 = arg4
    iterator2 = arg3
    arg5(arg6, arg7, iterator2)
  end
end
rageUiCall8.applySecondaryVehicleColours = textValue24
function rageUiCall8(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper
  arg3 = {}
  arg4 = 0
  arg5 = 49
  arg6 = 1
  for arg7 = arg4, arg5, arg6 do
    iterator2 = GetVehicleMod
    tableHelper2 = arg1
    dataTable25 = arg7
    iterator2 = iterator2(tableHelper2, dataTable25)
    if iterator2 >= 0 then
      tableHelper2 = GetModTextLabel
      dataTable25 = arg1
      workValue2 = arg7
      dataTable = iterator2
      tableHelper2 = tableHelper2(dataTable25, workValue2, dataTable)
      if tableHelper2 then
        dataTable25 = table
        dataTable25 = dataTable25.insert
        workValue2 = arg3
        dataTable = tableHelper2
        dataTable25(workValue2, dataTable)
        if arg2 then
          dataTable25 = CMG
          dataTable25 = dataTable25.drawDebugText
          workValue2 = "VMT: %s Index: %s Name: %s"
          dataTable = arg7
          iterator = iterator2
          stringHelper = tableHelper2
          dataTable25(workValue2, dataTable, iterator, stringHelper)
        end
      end
    end
  end
  if not arg2 then
    arg4 = #arg3
    if arg4 > 0 then
      arg4 = CMG
      arg4 = arg4.getVehicleIdFromModel
      arg5 = GetEntityModel
      arg6 = arg1
      arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper = arg5(arg6)
      arg4 = arg4(arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper)
      if arg4 then
        arg5 = TriggerServerEvent
        arg6 = "02b1617ec9"
        arg7 = arg4
        iterator2 = arg3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "02b1617ec9".
        arg5(arg6, arg7, iterator2)
      end
    end
  end
end
textValue24 = tCMG
function textValue25(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6, workValue13
  arg4 = pairs
  arg5 = arg1.windowtint
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWindowTint
      workValue2 = arg3
      dataTable = tonumber
      iterator = iterator2
      dataTable = dataTable(iterator)
      if not dataTable then
        dataTable = 0
      end
      dataTable25(workValue2, dataTable)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = SetVehicleModKit
  arg5 = arg3
  arg6 = 0
  arg4(arg5, arg6)
  arg4 = pairs
  arg5 = arg1.sportwheels
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 0
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataTable25(workValue2, dataTable, iterator, stringHelper)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.musclewheels
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 1
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataTable25(workValue2, dataTable, iterator, stringHelper)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.lowriderwheels
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 2
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataTable25(workValue2, dataTable, iterator, stringHelper)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.highendwheels
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 7
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataTable25(workValue2, dataTable, iterator, stringHelper)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.suvwheels
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 3
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataTable25(workValue2, dataTable, iterator, stringHelper)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.offroadwheels
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 4
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataTable25(workValue2, dataTable, iterator, stringHelper)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.tunerwheels
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 6
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataTable25(workValue2, dataTable, iterator, stringHelper)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.bennysonewheels
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 8
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataTable25(workValue2, dataTable, iterator, stringHelper)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.bennystwowheels
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 9
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataTable25(workValue2, dataTable, iterator, stringHelper)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.openwheels
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 10
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataTable25(workValue2, dataTable, iterator, stringHelper)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.streetwheels
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 11
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataTable25(workValue2, dataTable, iterator, stringHelper)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.trackwheels
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 12
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = false
      dataTable25(workValue2, dataTable, iterator, stringHelper)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.frontwheel
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 6
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 23
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = GetVehicleModVariation
      workValue7 = arg3
      stringHelper2 = 23
      stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6, workValue13 = stringHelper(workValue7, stringHelper2)
      dataTable25(workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6, workValue13)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.backwheel
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleWheelType
      workValue2 = arg3
      dataTable = 6
      dataTable25(workValue2, dataTable)
      dataTable25 = CMG
      dataTable25 = dataTable25.setVehicleMod
      workValue2 = arg3
      dataTable = 24
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = GetVehicleModVariation
      workValue7 = arg3
      stringHelper2 = 24
      stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6, workValue13 = stringHelper(workValue7, stringHelper2)
      dataTable25(workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6, workValue13)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = pairs
  arg5 = arg1.wheelaccessories
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 and "[0,0,0]" ~= iterator2 then
      dataTable25 = SetVehicleModKit
      workValue2 = arg3
      dataTable = 0
      dataTable25(workValue2, dataTable)
      dataTable25 = ToggleVehicleMod
      workValue2 = arg3
      dataTable = 20
      iterator = true
      dataTable25(workValue2, dataTable, iterator)
      workValue2 = iterator2
      dataTable25 = iterator2.gsub
      dataTable = "%["
      iterator = ""
      dataTable25 = dataTable25(workValue2, dataTable, iterator)
      iterator2 = dataTable25
      workValue2 = iterator2
      dataTable25 = iterator2.gsub
      dataTable = "]"
      iterator = ""
      dataTable25 = dataTable25(workValue2, dataTable, iterator)
      iterator2 = dataTable25
      dataTable25 = stringsplit
      workValue2 = iterator2
      dataTable = ","
      dataTable25 = dataTable25(workValue2, dataTable)
      workValue2 = SetVehicleTyreSmokeColor
      dataTable = arg3
      iterator = tonumber
      stringHelper = dataTable25[1]
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      stringHelper = tonumber
      workValue7 = dataTable25[2]
      stringHelper = stringHelper(workValue7)
      if not stringHelper then
        stringHelper = 0
      end
      workValue7 = tonumber
      stringHelper2 = dataTable25[3]
      workValue7 = workValue7(stringHelper2)
      if not workValue7 then
        workValue7 = 0
      end
      workValue2(dataTable, iterator, stringHelper, workValue7)
    end
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = CMG
  arg4 = arg4.applyPrimaryVehicleColours
  arg5 = arg1
  arg6 = arg3
  arg4(arg5, arg6)
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = CMG
  arg4 = arg4.applySecondaryVehicleColours
  arg5 = arg1
  arg6 = arg3
  arg4(arg5, arg6)
  arg4 = pairs
  arg5 = arg1.pearlescent
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = GetVehicleExtraColours
      workValue2 = arg3
      dataTable25, workValue2 = dataTable25(workValue2)
      dataTable = SetVehicleExtraColours
      iterator = arg3
      stringHelper = tonumber
      workValue7 = iterator2
      stringHelper = stringHelper(workValue7)
      if not stringHelper then
        stringHelper = 0
      end
      workValue7 = workValue2
      dataTable(iterator, stringHelper, workValue7)
    end
  end
  arg4 = pairs
  arg5 = arg1.wheelcolor
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    if true == tableHelper2 then
      dataTable25 = SetVehicleExtraColours
      workValue2 = arg3
      dataTable = GetVehicleExtraColours
      iterator = arg3
      dataTable = dataTable(iterator)
      iterator = tonumber
      stringHelper = iterator2
      iterator = iterator(stringHelper)
      if not iterator then
        iterator = 0
      end
      dataTable25(workValue2, dataTable, iterator)
    end
  end
  arg4 = 0
  arg5 = pairs
  arg6 = arg1.interiorcolour
  arg5, arg6, arg7, iterator2 = arg5(arg6)
  for tableHelper2, dataTable25 in arg5, arg6, arg7, iterator2 do
    if true == dataTable25 then
      workValue2 = tonumber
      dataTable = tableHelper2
      workValue2 = workValue2(dataTable)
      arg4 = workValue2 or arg4
      if not workValue2 then
        arg4 = 0
      end
    end
  end
  arg5 = SetVehicleInteriorColor
  arg6 = arg3
  arg7 = arg4
  arg5(arg6, arg7)
  arg5 = 0
  arg6 = pairs
  arg7 = arg1.dashboardcolour
  arg6, arg7, iterator2, tableHelper2 = arg6(arg7)
  for dataTable25, workValue2 in arg6, arg7, iterator2, tableHelper2 do
    if true == workValue2 then
      dataTable = tonumber
      iterator = dataTable25
      dataTable = dataTable(iterator)
      arg5 = dataTable or arg5
      if not dataTable then
        arg5 = 0
      end
    end
  end
  arg6 = SetVehicleDashboardColor
  arg7 = arg3
  iterator2 = arg5
  arg6(arg7, iterator2)
  arg6 = GetVehiclePedIsIn
  arg7 = CMG
  arg7 = arg7.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg7 = arg7()
  iterator2 = false
  -- Beginner: result below is currentVehicle.
  arg6 = arg6(arg7, iterator2)
  arg3 = arg6
  arg6 = SetVehicleModKit
  arg7 = arg3
  iterator2 = 0
  arg6(arg7, iterator2)
  arg6 = 0
  arg7 = 48
  iterator2 = 1
  for tableHelper2 = arg6, arg7, iterator2 do
    dataTable25 = tostring
    workValue2 = "mod_"
    dataTable = tableHelper2
    workValue2 = workValue2 .. dataTable
    dataTable25 = dataTable25(workValue2)
    dataTable25 = arg1[dataTable25]
    if nil ~= dataTable25 then
      dataTable25 = pairs
      workValue2 = tostring
      dataTable = "mod_"
      iterator = tableHelper2
      dataTable = dataTable .. iterator
      workValue2 = workValue2(dataTable)
      workValue2 = arg1[workValue2]
      dataTable25, workValue2, dataTable, iterator = dataTable25(workValue2)
      for stringHelper, workValue7 in dataTable25, workValue2, dataTable, iterator do
        if true == workValue7 then
          stringHelper2 = Wait
          cmgCall3 = 0
          stringHelper2(cmgCall3)
          stringHelper2 = tonumber
          cmgCall3 = stringHelper
          stringHelper2 = stringHelper2(cmgCall3)
          if 18 == tableHelper2 then
            cmgCall3 = ToggleVehicleMod
            tableHelper = arg3
            workValue9 = 18
            heading = true
            cmgCall3(tableHelper, workValue9, heading)
          elseif 22 == tableHelper2 then
            cmgCall3 = ToggleVehicleMod
            tableHelper = arg3
            workValue9 = 22
            heading = stringHelper2 > 0
            cmgCall3(tableHelper, workValue9, heading)
          else
            cmgCall3 = CMG
            cmgCall3 = cmgCall3.setVehicleMod
            tableHelper = arg3
            workValue9 = tableHelper2
            heading = stringHelper2 or heading
            if not stringHelper2 then
              heading = 0
            end
            workValue10 = false
            cmgCall3(tableHelper, workValue9, heading, workValue10)
          end
        end
      end
    end
  end
  arg6 = Wait
  arg7 = 0
  arg6(arg7)
  arg6 = CMG
  arg6 = arg6.setVehicleIdNitro
  arg7 = arg2
  iterator2 = arg1.nitro
  arg6(arg7, iterator2)
  arg6 = pairs
  arg7 = arg1.antilag
  arg6, arg7, iterator2, tableHelper2 = arg6(arg7)
  for dataTable25, workValue2 in arg6, arg7, iterator2, tableHelper2 do
    if true == workValue2 then
      dataTable = CMG
      dataTable = dataTable.setVehicleAntiLag
      iterator = arg2
      stringHelper = tonumber
      workValue7 = dataTable25
      stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6, workValue13 = stringHelper(workValue7)
      dataTable(iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6, workValue13)
    end
  end
  arg6 = CMG
  arg6 = arg6.setVehicleIdDriftSuspension
  arg7 = arg2
  iterator2 = arg1.driftsuspension
  arg6(arg7, iterator2)
  arg6 = pairs
  arg7 = arg1.driftsmoke
  arg6, arg7, iterator2, tableHelper2 = arg6(arg7)
  for dataTable25, workValue2 in arg6, arg7, iterator2, tableHelper2 do
    if true == workValue2 then
      dataTable = CMG
      dataTable = dataTable.setVehicleIdDriftSmoke
      iterator = arg2
      stringHelper = tonumber
      workValue7 = dataTable25
      stringHelper = stringHelper(workValue7)
      if not stringHelper then
        stringHelper = 0
      end
      dataTable(iterator, stringHelper)
    end
  end
  arg6 = CMG
  arg6 = arg6.setVehicleIdPlaneSmoke
  arg7 = arg3
  iterator2 = arg2
  tableHelper2 = arg1.planesmokes
  arg6(arg7, iterator2, tableHelper2)
  arg6 = CMG
  arg6 = arg6.setVehicleIdBiometricLock
  arg7 = arg3
  iterator2 = arg1.security
  tableHelper2 = arg1.biometric_users
  arg6(arg7, iterator2, tableHelper2)
  arg6 = CMG
  arg6 = arg6.setVehicleIdStancer
  arg7 = arg3
  iterator2 = arg1.stancer
  arg6(arg7, iterator2)
  arg6 = Wait
  arg7 = 0
  arg6(arg7)
  arg6 = pcall
  function arg7()
    local arg12, arg22, arg32
    arg12 = SetVehicleNumberPlateText
    arg22 = CMG
    arg22 = arg22.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg22 = arg22()
    arg32 = arg1.vehicle_plate
    arg12(arg22, arg32)
  end
  arg6 = arg6(arg7)
  if not arg6 then
    arg7 = print
    iterator2 = "Failed to set the licence plate of your vehicle, please report to a developer. Plate:"
    tableHelper2 = arg1.vehicle_plate
    arg7(iterator2, tableHelper2)
  end
  arg7 = Wait
  iterator2 = 0
  arg7(iterator2)
  arg7 = pairs
  iterator2 = arg1.sounds
  arg7, iterator2, tableHelper2, dataTable25 = arg7(iterator2)
  for workValue2, dataTable in arg7, iterator2, tableHelper2, dataTable25 do
    if true == dataTable then
      iterator = CMG
      iterator = iterator.getVehicleSoundNameFromId
      stringHelper = tonumber
      workValue7 = workValue2
      stringHelper = stringHelper(workValue7)
      if not stringHelper then
        stringHelper = 0
      end
      iterator = iterator(stringHelper)
      stringHelper = GetVehiclePedIsIn
      workValue7 = CMG
      workValue7 = workValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workValue7 = workValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workValue7, stringHelper2)
      workValue7 = ForceVehicleEngineAudio
      stringHelper2 = stringHelper
      cmgCall3 = iterator
      workValue7(stringHelper2, cmgCall3)
      workValue7 = SetTimeout
      stringHelper2 = 500
      function cmgCall3()
        local arg12, arg22, arg32
        arg12 = SetVehicleRadioEnabled
        arg22 = stringHelper
        arg32 = false
        arg12(arg22, arg32)
        arg12 = SetVehRadioStation
        arg22 = stringHelper
        arg32 = "OFF"
        arg12(arg22, arg32)
      end
      workValue7(stringHelper2, cmgCall3)
      workValue7 = DecorSetInt
      stringHelper2 = stringHelper
      cmgCall3 = "6939027d97"
      tableHelper = tonumber
      workValue9 = workValue2
      tableHelper = tableHelper(workValue9)
      if not tableHelper then
        tableHelper = 0
      end
      workValue7(stringHelper2, cmgCall3, tableHelper)
    end
  end
  arg7 = Wait
  iterator2 = 0
  arg7(iterator2)
  arg7 = pairs
  iterator2 = arg1.bulletproof_tires
  arg7, iterator2, tableHelper2, dataTable25 = arg7(iterator2)
  for workValue2, dataTable in arg7, iterator2, tableHelper2, dataTable25 do
    if true == dataTable then
      iterator = DecorSetBool
      stringHelper = GetVehiclePedIsIn
      workValue7 = CMG
      workValue7 = workValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workValue7 = workValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workValue7, stringHelper2)
      workValue7 = "bb6df5797c"
      stringHelper2 = true
      iterator(stringHelper, workValue7, stringHelper2)
    end
  end
  arg7 = Wait
  iterator2 = 0
  arg7(iterator2)
  arg7 = pairs
  iterator2 = arg1.plate_colour
  arg7, iterator2, tableHelper2, dataTable25 = arg7(iterator2)
  for workValue2, dataTable in arg7, iterator2, tableHelper2, dataTable25 do
    if true == dataTable then
      iterator = SetVehicleNumberPlateTextIndex
      stringHelper = GetVehiclePedIsIn
      workValue7 = CMG
      workValue7 = workValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workValue7 = workValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workValue7, stringHelper2)
      workValue7 = tonumber
      stringHelper2 = workValue2
      workValue7 = workValue7(stringHelper2)
      if not workValue7 then
        workValue7 = 0
      end
      iterator(stringHelper, workValue7)
    end
  end
  arg7 = Wait
  iterator2 = 0
  arg7(iterator2)
  arg7 = pairs
  iterator2 = arg1.neonlayout
  arg7, iterator2, tableHelper2, dataTable25 = arg7(iterator2)
  for workValue2, dataTable in arg7, iterator2, tableHelper2, dataTable25 do
    iterator = tonumber
    stringHelper = workValue2
    iterator = iterator(stringHelper)
    if true == dataTable and iterator and iterator > 0 then
      if 1 == iterator then
        stringHelper = SetVehicleNeonLightEnabled
        workValue7 = arg3
        stringHelper2 = 0
        cmgCall3 = true
        stringHelper(workValue7, stringHelper2, cmgCall3)
        stringHelper = SetVehicleNeonLightEnabled
        workValue7 = arg3
        stringHelper2 = 1
        cmgCall3 = true
        stringHelper(workValue7, stringHelper2, cmgCall3)
        stringHelper = SetVehicleNeonLightEnabled
        workValue7 = arg3
        stringHelper2 = 2
        cmgCall3 = true
        stringHelper(workValue7, stringHelper2, cmgCall3)
        stringHelper = SetVehicleNeonLightEnabled
        workValue7 = arg3
        stringHelper2 = 3
        cmgCall3 = true
        stringHelper(workValue7, stringHelper2, cmgCall3)
      elseif 2 == iterator then
        stringHelper = SetVehicleNeonLightEnabled
        workValue7 = arg3
        stringHelper2 = 2
        cmgCall3 = true
        stringHelper(workValue7, stringHelper2, cmgCall3)
        stringHelper = SetVehicleNeonLightEnabled
        workValue7 = arg3
        stringHelper2 = 3
        cmgCall3 = true
        stringHelper(workValue7, stringHelper2, cmgCall3)
      elseif 3 == iterator then
        stringHelper = SetVehicleNeonLightEnabled
        workValue7 = arg3
        stringHelper2 = 0
        cmgCall3 = true
        stringHelper(workValue7, stringHelper2, cmgCall3)
        stringHelper = SetVehicleNeonLightEnabled
        workValue7 = arg3
        stringHelper2 = 1
        cmgCall3 = true
        stringHelper(workValue7, stringHelper2, cmgCall3)
        stringHelper = SetVehicleNeonLightEnabled
        workValue7 = arg3
        stringHelper2 = 2
        cmgCall3 = true
        stringHelper(workValue7, stringHelper2, cmgCall3)
      elseif 4 == iterator then
        stringHelper = SetVehicleNeonLightEnabled
        workValue7 = arg3
        stringHelper2 = 0
        cmgCall3 = true
        stringHelper(workValue7, stringHelper2, cmgCall3)
        stringHelper = SetVehicleNeonLightEnabled
        workValue7 = arg3
        stringHelper2 = 1
        cmgCall3 = true
        stringHelper(workValue7, stringHelper2, cmgCall3)
        stringHelper = SetVehicleNeonLightEnabled
        workValue7 = arg3
        stringHelper2 = 3
        cmgCall3 = true
        stringHelper(workValue7, stringHelper2, cmgCall3)
      end
      stringHelper = arg1.neoncolour
      if stringHelper then
        stringHelper = pairs
        workValue7 = arg1.neoncolour
        stringHelper, workValue7, stringHelper2, cmgCall3 = stringHelper(workValue7)
        for tableHelper, workValue9 in stringHelper, workValue7, stringHelper2, cmgCall3 do
          if true == workValue9 then
            heading = table
            heading = heading.unpack
            workValue10 = textValue10.neonColours
            workValue10 = workValue10[tableHelper]
            heading, workValue10, cmgCall5 = heading(workValue10)
            numberValue5 = SetVehicleNeonLightsColour
            vehicle = GetVehiclePedIsIn
            stringHelper3 = CMG
            stringHelper3 = stringHelper3.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            stringHelper3 = stringHelper3()
            numberValue6 = false
            -- Beginner: result below is currentVehicle.
            vehicle = vehicle(stringHelper3, numberValue6)
            stringHelper3 = heading
            numberValue6 = workValue10
            workValue13 = cmgCall5
            numberValue5(vehicle, stringHelper3, numberValue6, workValue13)
          end
        end
      end
    end
  end
  arg7 = Wait
  iterator2 = 0
  arg7(iterator2)
  arg7 = pairs
  iterator2 = arg1.xenonlights
  arg7, iterator2, tableHelper2, dataTable25 = arg7(iterator2)
  for workValue2, dataTable in arg7, iterator2, tableHelper2, dataTable25 do
    if true == dataTable then
      iterator = SetVehicleXenonLightsColor
      stringHelper = GetVehiclePedIsIn
      workValue7 = CMG
      workValue7 = workValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workValue7 = workValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workValue7, stringHelper2)
      workValue7 = tonumber
      stringHelper2 = workValue2
      workValue7 = workValue7(stringHelper2)
      if not workValue7 then
        workValue7 = 0
      end
      iterator(stringHelper, workValue7)
    end
  end
  arg7 = Wait
  iterator2 = 0
  arg7(iterator2)
  arg7 = pairs
  iterator2 = arg1.liveries
  arg7, iterator2, tableHelper2, dataTable25 = arg7(iterator2)
  for workValue2, dataTable in arg7, iterator2, tableHelper2, dataTable25 do
    if true == dataTable then
      iterator = SetVehicleLivery
      stringHelper = GetVehiclePedIsIn
      workValue7 = CMG
      workValue7 = workValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workValue7 = workValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workValue7, stringHelper2)
      workValue7 = tonumber
      stringHelper2 = workValue2
      workValue7 = workValue7(stringHelper2)
      if not workValue7 then
        workValue7 = 0
      end
      iterator(stringHelper, workValue7)
    end
  end
  arg7 = Wait
  iterator2 = 0
  arg7(iterator2)
  arg7 = pairs
  iterator2 = arg1.extras
  arg7, iterator2, tableHelper2, dataTable25 = arg7(iterator2)
  for workValue2, dataTable in arg7, iterator2, tableHelper2, dataTable25 do
    if true == dataTable then
      iterator = SetVehicleExtra
      stringHelper = GetVehiclePedIsIn
      workValue7 = CMG
      workValue7 = workValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workValue7 = workValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workValue7, stringHelper2)
      workValue7 = tonumber
      stringHelper2 = workValue2
      workValue7 = workValue7(stringHelper2)
      if not workValue7 then
        workValue7 = 0
      end
      stringHelper2 = false
      iterator(stringHelper, workValue7, stringHelper2)
    elseif false == dataTable then
      iterator = SetVehicleExtra
      stringHelper = GetVehiclePedIsIn
      workValue7 = CMG
      workValue7 = workValue7.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workValue7 = workValue7()
      stringHelper2 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(workValue7, stringHelper2)
      workValue7 = tonumber
      stringHelper2 = workValue2
      workValue7 = workValue7(stringHelper2)
      if not workValue7 then
        workValue7 = 0
      end
      stringHelper2 = true
      iterator(stringHelper, workValue7, stringHelper2)
    end
  end
  arg7 = Wait
  iterator2 = 0
  arg7(iterator2)
  arg7 = dataTable19
  arg7 = arg7[arg2]
  if arg7 then
    arg7 = dataTable19
    arg7 = arg7[arg2]
    iterator2 = arg1.fuel
    arg7.fuel = iterator2
  end
  arg7 = CMG
  arg7 = arg7.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg7 = arg7()
  iterator2 = rageUiCall8
  tableHelper2 = arg7
  dataTable25 = false
  iterator2(tableHelper2, dataTable25)
end
textValue24.applyModsOnVehicle = textValue25
textValue24 = CMG
function textValue25(arg1)
  local arg2
  arg2 = dataTable15
  arg2 = arg2[arg1]
  return arg2
end
textValue24.getVehicleSoundNameFromId = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = workValue27
  arg2 = arg2()
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = SetVehicleHasBeenOwnedByPlayer
    arg4 = arg2[2]
    arg5 = false
    arg3(arg4, arg5)
    arg3 = DeleteEntity
    arg4 = arg2[2]
    -- Beginner: Delete a GTA entity.
    arg3(arg4)
    arg3 = tCMG
    arg3 = arg3.notify
    arg4 = "Vehicle stored."
    -- Beginner: Show a notification to the player.
    arg3(arg4)
  end
end
textValue24.despawnGarageVehicle = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper
  arg2 = CMG
  arg2 = arg2.getPosition
  arg2 = arg2()
  arg3 = arg2.x
  arg4 = arg2.y
  arg5 = arg2.z
  arg6 = CMG
  arg6 = arg6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg6 = arg6()
  arg7 = IsPedSittingInAnyVehicle
  iterator2 = arg6
  arg7 = arg7(iterator2)
  if arg7 then
    arg7 = GetVehiclePedIsIn
    iterator2 = arg6
    tableHelper2 = true
    return arg7(iterator2, tableHelper2)
  else
    arg7 = GetClosestVehicle
    iterator2 = arg3 + 1.0E-4
    tableHelper2 = arg4 + 1.0E-4
    dataTable25 = arg5 + 1.0E-4
    workValue2 = arg1 + 1.0E-4
    dataTable = 0
    iterator = 12295
    arg7 = arg7(iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator)
    iterator2 = IsEntityAVehicle
    tableHelper2 = arg7
    iterator2 = iterator2(tableHelper2)
    if not iterator2 then
      iterator2 = GetClosestVehicle
      tableHelper2 = arg3 + 1.0E-4
      dataTable25 = arg4 + 1.0E-4
      workValue2 = arg5 + 1.0E-4
      dataTable = arg1 + 1.0E-4
      iterator = 0
      stringHelper = 7
      iterator2 = iterator2(tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper)
      arg7 = iterator2
    end
    iterator2 = IsEntityAVehicle
    tableHelper2 = arg7
    iterator2 = iterator2(tableHelper2)
    if not iterator2 then
      iterator2 = GetClosestVehicle
      tableHelper2 = arg3 + 1.0E-4
      dataTable25 = arg4 + 1.0E-4
      workValue2 = arg5 + 1.0E-4
      dataTable = arg1 + 1.0E-4
      iterator = 0
      stringHelper = 16384
      iterator2 = iterator2(tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper)
      arg7 = iterator2
    end
    if 0 == arg7 then
      iterator2 = GetVehiclePedIsIn
      tableHelper2 = arg6
      dataTable25 = true
      return iterator2(tableHelper2, dataTable25)
    else
      return arg7
    end
  end
end
textValue24.getNearestVehicle = textValue25
textValue24 = CMG
function textValue25(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = 100
  arg4 = 100
  arg5 = pairs
  arg6 = CMG
  arg6 = arg6.getAllVehicles
  arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable = arg6()
  arg5, arg6, arg7, iterator2 = arg5(arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable)
  for tableHelper2, dataTable25 in arg5, arg6, arg7, iterator2 do
    workValue2 = GetEntityCoords
    dataTable = dataTable25
    -- Beginner: result below is entityCoords.
    workValue2 = workValue2(dataTable)
    dataTable = arg2 - workValue2
    dataTable = #dataTable
    if arg4 > dataTable then
      arg4 = dataTable
      arg3 = dataTable25
    end
  end
  if arg1 >= arg4 then
    return arg3
  else
    arg5 = 0
    return arg5
  end
end
textValue24.getClosestVehicle = textValue25
textValue24 = CMG
function textValue25(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper
  arg3 = 0
  arg4 = 1000000.0
  arg5 = -1
  arg6 = CMG
  arg6 = arg6.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg6 = arg6()
  arg7 = CMG
  arg7 = arg7.getClosestVehicle
  iterator2 = arg1
  arg7 = arg7(iterator2)
  if 0 ~= arg7 then
    iterator2 = GetEntityModel
    tableHelper2 = arg7
    -- Beginner: result below is modelHash.
    iterator2 = iterator2(tableHelper2)
    tableHelper2 = GetVehicleModelNumberOfSeats
    dataTable25 = iterator2
    tableHelper2 = tableHelper2(dataTable25)
    if tableHelper2 > 0 then
      dataTable25 = -1
      workValue2 = tableHelper2 - 2
      dataTable = 1
      for iterator = dataTable25, workValue2, dataTable do
        stringHelper = GetPedInVehicleSeat
        workValue7 = arg7
        stringHelper2 = iterator
        stringHelper = stringHelper(workValue7, stringHelper2)
        if 0 ~= stringHelper then
          workValue7 = GetPedBoneIndex
          stringHelper2 = stringHelper
          cmgCall3 = 0
          workValue7 = workValue7(stringHelper2, cmgCall3)
          if workValue7 > -1 then
            stringHelper2 = GetWorldPositionOfEntityBone
            cmgCall3 = stringHelper
            tableHelper = workValue7
            stringHelper2 = stringHelper2(cmgCall3, tableHelper)
            if arg2 then
              cmgCall3 = arg6.xy
              tableHelper = stringHelper2.xy
              cmgCall3 = cmgCall3 - tableHelper
              cmgCall3 = #cmgCall3
              if cmgCall3 then
                goto flow_label_54
              end
            end
            cmgCall3 = arg6 - stringHelper2
            cmgCall3 = #cmgCall3
            ::flow_label_54::
            if arg4 > cmgCall3 then
              arg3 = stringHelper
              arg4 = cmgCall3
              arg5 = iterator
            end
          end
        end
      end
    end
  end
  iterator2 = arg7
  tableHelper2 = arg3
  dataTable25 = arg5
  workValue2 = arg4
  return iterator2, tableHelper2, dataTable25, workValue2
end
textValue24.getClosestVehicleIncludingPed = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3, arg4
  arg2 = tCMG
  arg2 = arg2.getNearestVehicle
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = IsEntityAVehicle
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = SetVehicleFixed
    arg4 = arg2
    arg3(arg4)
  end
end
textValue24.fixeNearestVehicle = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3, arg4
  arg2 = tCMG
  arg2 = arg2.getNearestVehicle
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = IsEntityAVehicle
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = SetVehicleOnGroundProperly
    arg4 = arg2
    arg3(arg4)
  end
end
textValue24.replaceNearestVehicle = textValue25
textValue24 = tCMG
function textValue25(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator
  arg1 = arg1 + 1.0E-4
  arg2 = arg2 + 1.0E-4
  arg3 = arg3 + 1.0E-4
  arg4 = _ENV
  arg5 = "StartExpensiveSynchronousShapeTestLosProbe"
  arg4 = arg4[arg5]
  arg5 = arg1
  arg6 = arg2
  arg7 = arg3
  iterator2 = arg1
  tableHelper2 = arg2
  dataTable25 = arg3 + 4
  workValue2 = 10
  dataTable = CMG
  dataTable = dataTable.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  dataTable = dataTable()
  iterator = 0
  arg4 = arg4(arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator)
  arg5 = GetShapeTestResult
  arg6 = arg4
  arg5, arg6, arg7, iterator2, tableHelper2 = arg5(arg6)
  return tableHelper2
end
textValue24.getVehicleAtPosition = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper
  arg2 = nil
  arg3 = nil
  arg4 = nil
  arg5 = GetEntityCoords
  arg6 = CMG
  arg6 = arg6.getPlayerPed
  arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper = arg6()
  -- Beginner: result below is entityCoords.
  arg5 = arg5(arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper)
  arg6 = pairs
  arg7 = workValue27
  arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper = arg7()
  arg6, arg7, iterator2, tableHelper2 = arg6(arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper)
  for dataTable25, workValue2 in arg6, arg7, iterator2, tableHelper2 do
    dataTable = GetEntityCoords
    iterator = workValue2[2]
    stringHelper = true
    -- Beginner: result below is entityCoords.
    dataTable = dataTable(iterator, stringHelper)
    dataTable = dataTable - arg5
    dataTable = #dataTable
    iterator = arg1 + 1.0E-4
    if dataTable <= iterator and (not arg2 or arg2 > dataTable) then
      arg2 = dataTable
      arg3 = dataTable25
      arg4 = workValue2[2]
    end
  end
  if arg3 then
    arg6 = DecorGetInt
    arg7 = arg4
    iterator2 = "ac76c9d452"
    arg6 = arg6(arg7, iterator2)
    arg7 = true
    iterator2 = arg3
    tableHelper2 = arg6
    return arg7, iterator2, tableHelper2
  end
  arg6 = false
  return arg6
end
textValue24.getNearestOwnedVehicle = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable
  arg2 = nil
  arg3 = nil
  arg4 = pairs
  arg5 = workValue27
  arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable = arg5()
  arg4, arg5, arg6, arg7 = arg4(arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable)
  for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
    dataTable25 = GetEntityCoords
    workValue2 = tableHelper2[2]
    dataTable = true
    -- Beginner: result below is entityCoords.
    dataTable25 = dataTable25(workValue2, dataTable)
    workValue2 = GetEntityCoords
    dataTable = CMG
    dataTable = dataTable.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    dataTable = dataTable()
    -- Beginner: result below is entityCoords.
    workValue2 = workValue2(dataTable)
    dataTable25 = dataTable25 - workValue2
    dataTable25 = #dataTable25
    workValue2 = arg1 + 1.0E-4
    if dataTable25 <= workValue2 and (not arg2 or arg2 > dataTable25) then
      arg2 = dataTable25
      arg3 = iterator2
    end
  end
  if arg3 then
    arg4 = true
    arg5 = arg3
    return arg4, arg5
  end
  arg4 = false
  return arg4
end
textValue24.getCurrentOwnedVehicle = textValue25
textValue24 = tCMG
function textValue25()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator
  arg1 = pairs
  arg2 = workValue27
  arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator = arg2()
  arg1, arg2, arg3, arg4 = arg1(arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = IsEntityAVehicle
    iterator2 = arg6[2]
    arg7 = arg7(iterator2)
    if arg7 then
      arg7 = table
      arg7 = arg7.unpack
      iterator2 = GetEntityCoords
      tableHelper2 = arg6[2]
      dataTable25 = true
      iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator = iterator2(tableHelper2, dataTable25)
      arg7, iterator2, tableHelper2 = arg7(iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator)
      dataTable25 = true
      workValue2 = arg7
      dataTable = iterator2
      iterator = tableHelper2
      return dataTable25, workValue2, dataTable, iterator
    end
  end
  arg1 = false
  arg2 = 0
  arg3 = 0
  arg4 = 0
  return arg1, arg2, arg3, arg4
end
textValue24.getAnyOwnedVehiclePosition = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2
  arg2 = workValue27
  arg2 = arg2()
  arg2 = arg2[arg1]
  arg3 = 0
  arg4 = 0
  arg5 = 0
  if arg2 then
    arg6 = table
    arg6 = arg6.unpack
    arg7 = GetEntityCoords
    iterator2 = arg2[2]
    tableHelper2 = true
    arg7, iterator2, tableHelper2 = arg7(iterator2, tableHelper2)
    arg6, arg7, iterator2 = arg6(arg7, iterator2, tableHelper2)
    arg5 = iterator2
    arg4 = arg7
    arg3 = arg6
  end
  arg6 = arg3
  arg7 = arg4
  iterator2 = arg5
  return arg6, arg7, iterator2
end
textValue24.getOwnedVehiclePosition = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3
  arg2 = workValue27
  arg2 = arg2()
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = arg2[2]
    return arg3
  end
end
textValue24.getOwnedVehicleHandle = textValue25
textValue24 = tCMG
function textValue25()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = IsPedSittingInAnyVehicle
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = GetVehiclePedIsIn
    arg3 = arg1
    arg4 = false
    -- Beginner: result below is currentVehicle.
    arg2 = arg2(arg3, arg4)
    arg3 = CMG
    arg3 = arg3.inEvent
    arg3 = arg3()
    if not arg3 then
      arg3 = TaskLeaveVehicle
      arg4 = arg1
      arg5 = arg2
      arg6 = 4160
      arg3(arg4, arg5, arg6)
    end
  end
end
textValue24.ejectVehicle = textValue25
textValue24 = tCMG
function textValue25()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = IsPedSittingInAnyVehicle
  arg3 = arg1
  return arg2(arg3)
end
textValue24.isInVehicle = textValue25
textValue24 = tCMG
function textValue25(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2
  arg3 = workValue27
  arg3 = arg3()
  arg3 = arg3[arg1]
  if arg3 then
    arg4 = SetVehicleDoorOpen
    arg5 = arg3[2]
    arg6 = arg2
    arg7 = false
    iterator2 = false
    arg4(arg5, arg6, arg7, iterator2)
  end
end
textValue24.vc_openDoor = textValue25
textValue24 = tCMG
function textValue25(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = workValue27
  arg3 = arg3()
  arg3 = arg3[arg1]
  if arg3 then
    arg4 = SetVehicleDoorShut
    arg5 = arg3[2]
    arg6 = arg2
    arg7 = false
    arg4(arg5, arg6, arg7)
  end
end
textValue24.vc_closeDoor = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3, arg4
  arg2 = workValue27
  arg2 = arg2()
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = DetachVehicleFromTrailer
    arg4 = arg2[2]
    arg3(arg4)
  end
end
textValue24.vc_detachTrailer = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = workValue27
  arg2 = arg2()
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = GetEntityAttachedToTowTruck
    arg4 = arg2[2]
    arg3 = arg3(arg4)
    arg4 = IsEntityAVehicle
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = DetachVehicleFromTowTruck
      arg5 = arg2[2]
      arg6 = arg3
      arg4(arg5, arg6)
    end
  end
end
textValue24.vc_detachTowTruck = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = workValue27
  arg2 = arg2()
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = GetVehicleAttachedToCargobob
    arg4 = arg2[2]
    arg3 = arg3(arg4)
    arg4 = IsEntityAVehicle
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = DetachVehicleFromCargobob
      arg5 = arg2[2]
      arg6 = arg3
      arg4(arg5, arg6)
    end
  end
end
textValue24.vc_detachCargobob = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2
  arg2 = workValue27
  arg2 = arg2()
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = GetIsVehicleEngineRunning
    arg4 = arg2[2]
    arg3 = arg3(arg4)
    arg4 = SetVehicleEngineOn
    arg5 = arg2[2]
    arg6 = not arg3
    arg7 = true
    iterator2 = true
    arg4(arg5, arg6, arg7, iterator2)
    if arg3 then
      arg4 = SetVehicleUndriveable
      arg5 = arg2[2]
      arg6 = true
      arg4(arg5, arg6)
    else
      arg4 = SetVehicleUndriveable
      arg5 = arg2[2]
      arg6 = false
      arg4(arg5, arg6)
    end
  end
end
textValue24.vc_toggleEngine = textValue25
textValue24 = tCMG
function textValue25(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2
  arg2 = workValue27
  arg2 = arg2()
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = arg2[2]
    arg4 = GetVehicleDoorLockStatus
    arg5 = arg3
    arg4 = arg4(arg5)
    arg4 = arg4 >= 2
    arg5 = NetworkGetNetworkIdFromEntity
    arg6 = arg3
    arg5 = arg5(arg6)
    if 0 == arg5 then
      arg6 = tCMG
      arg6 = arg6.notify
      arg7 = "~r~Failed to get ownership of vehicle to lock/unlock."
      -- Beginner: Show a notification to the player.
      arg6(arg7)
    else
      arg6 = tCMG
      arg6 = arg6.notify
      arg7 = "Vehicle "
      if arg4 then
        iterator2 = "unlocked"
        if iterator2 then
          goto flow_label_33
        end
      end
      iterator2 = "locked"
      ::flow_label_33::
      tableHelper2 = "."
      arg7 = arg7 .. iterator2 .. tableHelper2
      arg6(arg7)
      arg6 = NetworkHasControlOfEntity
      arg7 = arg3
      arg6 = arg6(arg7)
      if arg6 then
        arg6 = TriggerEvent
        arg7 = "126d6c2d61"
        iterator2 = arg5
        tableHelper2 = not arg4
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "126d6c2d61".
        arg6(arg7, iterator2, tableHelper2)
      else
        arg6 = TriggerServerEvent
        arg7 = "126d6c2d61"
        iterator2 = arg5
        tableHelper2 = not arg4
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "126d6c2d61".
        arg6(arg7, iterator2, tableHelper2)
      end
    end
  end
end
textValue24.vc_toggleLock = textValue25
textValue24 = RegisterNetEvent
textValue25 = "126d6c2d61"
-- Beginner: this function handles network event "126d6c2d61".
function textValue26(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = NetworkDoesNetworkIdExist
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg3 = NetworkGetEntityFromNetworkId
  arg4 = arg1
  arg3 = arg3(arg4)
  if 0 == arg3 then
    return
  end
  arg4 = NetworkHasControlOfEntity
  arg5 = arg3
  arg4 = arg4(arg5)
  if not arg4 then
    return
  end
  if arg2 then
    arg4 = SetVehicleDoorsLocked
    arg5 = arg3
    arg6 = 2
    arg4(arg5, arg6)
    arg4 = SetVehicleDoorsLockedForAllPlayers
    arg5 = arg3
    arg6 = true
    arg4(arg5, arg6)
  else
    arg4 = SetVehicleDoorsLockedForAllPlayers
    arg5 = arg3
    arg6 = false
    arg4(arg5, arg6)
    arg4 = SetVehicleDoorsLocked
    arg5 = arg3
    arg6 = 1
    arg4(arg5, arg6)
    arg4 = SetVehicleDoorsLockedForPlayer
    arg5 = arg3
    arg6 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    arg6 = arg6()
    arg7 = false
    arg4(arg5, arg6, arg7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "126d6c2d61".
textValue24(textValue25, textValue26)
textValue24 = RegisterNetEvent
textValue25 = "d105efe483"
-- Beginner: this function handles network event "d105efe483".
function textValue26()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = IsPedInAnyVehicle
  arg3 = arg1
  arg4 = true
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = GetVehiclePedIsIn
    arg3 = arg1
    arg4 = false
    -- Beginner: result below is currentVehicle.
    arg2 = arg2(arg3, arg4)
    arg3 = SetVehicleEngineHealth
    arg4 = arg2
    arg5 = 9999
    arg3(arg4, arg5)
    arg3 = SetVehiclePetrolTankHealth
    arg4 = arg2
    arg5 = 9999
    arg3(arg4, arg5)
    arg3 = SetVehicleFixed
    arg4 = arg2
    arg3(arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d105efe483".
textValue24(textValue25, textValue26)
textValue24 = RegisterNetEvent
textValue25 = "53092b8739"
-- Beginner: this function handles network event "53092b8739".
function textValue26()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = IsPedInAnyVehicle
  arg3 = arg1
  arg4 = true
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = GetVehiclePedIsIn
    arg3 = arg1
    arg4 = false
    -- Beginner: result below is currentVehicle.
    arg2 = arg2(arg3, arg4)
    arg3 = SetVehicleEngineHealth
    arg4 = arg2
    arg5 = 9999
    arg3(arg4, arg5)
    arg3 = SetVehiclePetrolTankHealth
    arg4 = arg2
    arg5 = 9999
    arg3(arg4, arg5)
    arg3 = SetVehicleFixed
    arg4 = arg2
    arg3(arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "53092b8739".
textValue24(textValue25, textValue26)
textValue24 = RegisterCommand
textValue25 = "callanambulance"
-- Beginner: this function is the command handler for "callanambulance".
function textValue26()
  local arg1, arg2
  arg1 = tCMG
  arg1 = arg1.notify
  arg2 = "~y~CALL AN AMBULANCE"
  -- Beginner: Show a notification to the player.
  arg1(arg2)
  arg1 = tCMG
  arg1 = arg1.notify
  arg2 = "~y~CALL AN AMBULANCE!"
  arg1(arg2)
  arg1 = tCMG
  arg1 = arg1.notify
  arg2 = "~r~BUT NOT FOR ME."
  -- Beginner: Show a notification to the player.
  arg1(arg2)
  arg1 = SendNUIMessage
  arg2 = {}
  arg2.transactionType = "callanambulance"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg1(arg2)
end
rageUiCall9 = false
-- Beginner: Register a chat/console command. Event/command: "callanambulance".
textValue24(textValue25, textValue26, rageUiCall9)
function textValue24()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "superadmin.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = true
    return arg1
  end
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "admin.spawncar"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = CMG
    arg1 = arg1.isPurge
    arg1 = arg1()
    if not arg1 then
      arg1 = true
      return arg1
    end
  end
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "admin.eventbucket"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = CMG
    arg1 = arg1.getEventBucketId
    arg1 = arg1()
    arg2 = CMG
    arg2 = arg2.getPlayerBucket
    arg2 = arg2()
    if arg1 == arg2 then
      arg1 = true
      return arg1
    end
  end
  arg1 = false
  return arg1
end
textValue25 = RegisterCommand
textValue26 = "car"
-- Beginner: this function is the command handler for "car".
function rageUiCall9(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper
  arg3 = textValue24
  arg3 = arg3()
  if arg3 then
    arg3 = GetEntityCoords
    arg4 = CMG
    arg4 = arg4.getPlayerPed
    arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper = arg4()
    -- Beginner: result below is entityCoords.
    arg3 = arg3(arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper)
    arg4 = vector3
    arg5 = -1341.9575195313
    arg6 = -3032.8686523438
    arg7 = 13.944421768188
    arg4 = arg4(arg5, arg6, arg7)
    arg5 = arg2[1]
    if nil == arg5 then
      arg6 = tCMG
      arg6 = arg6.notify
      arg7 = "~r~No vehicle spawncode specified."
      -- Beginner: Show a notification to the player.
      arg6(arg7)
      return
    end
    if "vwpolo" == arg5 then
      arg6 = CMG
      arg6 = arg6.getClientUserId
      -- Beginner: result below is userId.
      arg6 = arg6()
      if 1 ~= arg6 then
        arg6 = tCMG
        arg6 = arg6.teleport
        arg7 = -807.62481689453
        iterator2 = 172.82191467285
        tableHelper2 = 76.740547180176
        arg6(arg7, iterator2, tableHelper2)
    end
    else
      arg6 = string
      arg6 = arg6.lower
      arg7 = arg5
      arg6 = arg6(arg7)
      if "lloydzlego" ~= arg6 then
        arg6 = string
        arg6 = arg6.lower
        arg7 = arg5
        arg6 = arg6(arg7)
        if "lloydzlego2" ~= arg6 then
          goto flow_label_59
        end
      end
      arg6 = CMG
      arg6 = arg6.getClientUserId
      -- Beginner: result below is userId.
      arg6 = arg6()
      if 71 ~= arg6 then
        arg6 = tCMG
        arg6 = arg6.notify
        arg7 = "~y~Oak's words echoed... There's a time and place for everything, but not now."
        -- Beginner: Show a notification to the player.
        arg6(arg7)
      else
        ::flow_label_59::
        if "redarrow2" == arg5 then
          arg6 = tCMG
          arg6 = arg6.notify
          arg7 = "~y~CALL AN AMBULANCE"
          arg6(arg7)
          arg6 = tCMG
          arg6 = arg6.notify
          arg7 = "~y~CALL AN AMBULANCE"
          -- Beginner: Show a notification to the player.
          arg6(arg7)
          arg6 = tCMG
          arg6 = arg6.notify
          arg7 = "~r~BUT NOT FOR ME."
          arg6(arg7)
          arg6 = SendNUIMessage
          arg7 = {}
          arg7.transactionType = "callanambulance"
          -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
          arg6(arg7)
        else
          arg6 = arg3 - arg4
          arg6 = #arg6
          arg7 = 600.0
          if not (arg6 < arg7) then
            arg6 = CMG
            arg6 = arg6.hasClientPermission
            arg7 = "superadmin.permission"
            arg6 = arg6(arg7)
            if not arg6 then
              arg6 = CMG
              arg6 = arg6.getPlayerBucket
              arg6 = arg6()
              arg7 = CMG
              arg7 = arg7.getEventBucketId
              arg7 = arg7()
              if arg6 ~= arg7 then
                goto flow_label_163
              end
            end
          end
          arg6 = TriggerServerEvent
          arg7 = "1e0bbaf6cd"
          iterator2 = arg5
          tableHelper2 = "/car"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
          arg6(arg7, iterator2, tableHelper2)
          arg6 = CMG
          arg6 = arg6.requestEntitySpawn
          arg7 = "carcommand"
          iterator2 = arg5
          arg6(arg7, iterator2)
          arg6 = CMG
          arg6 = arg6.spawnVehicle
          arg7 = arg5
          iterator2 = arg3.x
          tableHelper2 = arg3.y
          dataTable25 = arg3.z
          workValue2 = GetEntityHeading
          dataTable = CMG
          dataTable = dataTable.getPlayerPed
          dataTable, iterator, stringHelper = dataTable()
          -- Beginner: result below is heading.
          workValue2 = workValue2(dataTable, iterator, stringHelper)
          dataTable = true
          iterator = true
          stringHelper = true
          arg6 = arg6(arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper)
          arg7 = CMG
          arg7 = arg7.initLocalVehicle
          iterator2 = arg6
          arg7(iterator2)
          arg7 = SetVehicleOnGroundProperly
          iterator2 = arg6
          arg7(iterator2)
          arg7 = SetEntityInvincible
          iterator2 = arg6
          tableHelper2 = false
          arg7(iterator2, tableHelper2)
          arg7 = CMG
          arg7 = arg7.applyMaxDefaultModsToVehicle
          iterator2 = arg6
          arg7(iterator2)
          arg7 = SetPedIntoVehicle
          iterator2 = CMG
          iterator2 = iterator2.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          iterator2 = iterator2()
          tableHelper2 = arg6
          dataTable25 = -1
          arg7(iterator2, tableHelper2, dataTable25)
          arg7 = SetModelAsNoLongerNeeded
          iterator2 = GetHashKey
          tableHelper2 = arg5
          iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper = iterator2(tableHelper2)
          arg7(iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper)
          arg7 = SetVehRadioStation
          iterator2 = arg6
          tableHelper2 = "OFF"
          arg7(iterator2, tableHelper2)
          arg7 = Wait
          iterator2 = 500
          arg7(iterator2)
          arg7 = SetVehRadioStation
          iterator2 = arg6
          tableHelper2 = "OFF"
          arg7(iterator2, tableHelper2)
          goto flow_label_167
          ::flow_label_163::
          arg6 = tCMG
          arg6 = arg6.notify
          arg7 = "~r~Vehicles may only be spawned at the airport for testing"
          -- Beginner: Show a notification to the player.
          arg6(arg7)
        end
      end
    end
  end
  ::flow_label_167::
end
rageUiCall10 = false
-- Beginner: Register a chat/console command. Event/command: "car".
textValue25(textValue26, rageUiCall9, rageUiCall10)
textValue25 = RegisterCommand
textValue26 = "dv"
-- Beginner: this function is the command handler for "dv".
function rageUiCall9()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "admin.tickets"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "eventadmin.whitelist"
    arg1 = arg1(arg2)
    if not arg1 then
      goto flow_label_35
    end
    arg1 = CMG
    arg1 = arg1.getPlayerBucket
    arg1 = arg1()
    arg2 = CMG
    arg2 = arg2.getEventBucketId
    arg2 = arg2()
    if arg1 ~= arg2 then
      goto flow_label_35
    end
  end
  arg1 = GetVehiclePedIsIn
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = false
  -- Beginner: result below is currentVehicle.
  arg1 = arg1(arg2, arg3)
  arg2 = NetworkHasControlOfEntity
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = DeleteEntity
    arg3 = arg1
    -- Beginner: Delete a GTA entity.
    arg2(arg3)
  end
  ::flow_label_35::
end
rageUiCall10 = false
-- Beginner: Register a chat/console command. Event/command: "dv".
textValue25(textValue26, rageUiCall9, rageUiCall10)
textValue25 = AddEventHandler
textValue26 = "918c11c450"
-- Beginner: this function runs when client event "918c11c450" fires.
function rageUiCall9(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7
  arg2 = tonumber
  arg3 = DecorGetInt
  arg4 = arg1
  arg5 = "ac76c9d452"
  arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7 = arg3(arg4, arg5)
  arg2 = arg2(arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7)
  arg3 = DecorGetInt
  arg4 = arg1
  arg5 = "0a6cf607ed"
  arg3 = arg3(arg4, arg5)
  if arg2 > 0 and arg3 > 0 then
    arg4 = CMG
    arg4 = arg4.loadAnimDict
    arg5 = "missexile3"
    -- Beginner: Load a GTA animation dictionary before using it.
    arg4(arg5)
    arg4 = TaskPlayAnim
    arg5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg5 = arg5()
    arg6 = "missexile3"
    arg7 = "ex03_dingy_search_case_base_michael"
    iterator2 = 1.0
    tableHelper2 = 8.0
    dataTable25 = 12000
    workValue2 = 1
    dataTable = 1.0
    iterator = false
    stringHelper = false
    workValue7 = false
    -- Beginner: Play an animation on a ped.
    arg4(arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7)
    arg4 = RemoveAnimDict
    arg5 = "missexile3"
    arg4(arg5)
    arg4 = TriggerServerEvent
    arg5 = "d9ee87e5cb"
    arg6 = VehToNet
    arg7 = arg1
    arg6 = arg6(arg7)
    arg7 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d9ee87e5cb".
    arg4(arg5, arg6, arg7)
  else
    arg4 = IsEntityAVehicle
    arg5 = arg1
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = GetEntityAttachedTo
      arg5 = arg1
      arg4 = arg4(arg5)
      if 0 ~= arg4 then
        arg5 = IsEntityAVehicle
        arg6 = arg1
        arg5 = arg5(arg6)
        if arg5 then
          arg5 = NetworkGetNetworkIdFromEntity
          arg6 = arg4
          arg5 = arg5(arg6)
          if arg5 > 0 then
            arg6 = TriggerServerEvent
            arg7 = "3395fde4e7"
            iterator2 = arg5
            arg6(arg7, iterator2)
          end
        end
      end
    end
    arg4 = tCMG
    arg4 = arg4.notify
    arg5 = "~r~Vehicle is not owned by anyone"
    -- Beginner: Show a notification to the player.
    arg4(arg5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "918c11c450".
textValue25(textValue26, rageUiCall9)
textValue25 = RegisterNetEvent
textValue26 = "3b617398d3"
-- Beginner: this function handles network event "3b617398d3".
function rageUiCall9(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator
  arg3 = CMG
  arg3 = arg3.getObjectId
  arg4 = arg1
  arg5 = "3b617398d3"
  arg3 = arg3(arg4, arg5)
  arg4 = GetNumberOfVehicleDoors
  arg5 = arg3
  arg4 = arg4(arg5)
  arg5 = 0
  arg6 = arg4
  arg7 = 1
  for iterator2 = arg5, arg6, arg7 do
    if arg2 then
      tableHelper2 = SetVehicleDoorOpen
      dataTable25 = arg3
      workValue2 = iterator2
      dataTable = false
      iterator = false
      tableHelper2(dataTable25, workValue2, dataTable, iterator)
    else
      tableHelper2 = SetVehicleDoorShut
      dataTable25 = arg3
      workValue2 = iterator2
      dataTable = false
      tableHelper2(dataTable25, workValue2, dataTable)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3b617398d3".
textValue25(textValue26, rageUiCall9)
textValue25 = {}
textValue26 = RegisterNetEvent
rageUiCall9 = "7d90029b70"
-- Beginner: this function handles network event "7d90029b70".
function rageUiCall10(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7
  arg5 = tonumber
  arg6 = arg4
  arg5 = arg5(arg6)
  if not arg5 then
    arg5 = 60000
  end
  arg6 = 1000
  if arg5 < arg6 then
    arg5 = 60000
  end
  arg6 = FreezeEntityPosition
  arg7 = CMG
  arg7 = arg7.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg7 = arg7()
  iterator2 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg6(arg7, iterator2)
  arg6 = RequestAnimDict
  arg7 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
  arg6(arg7)
  while true do
    arg6 = HasAnimDictLoaded
    arg7 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
    arg6 = arg6(arg7)
    if arg6 then
      break
    end
    arg6 = Citizen
    arg6 = arg6.Wait
    arg7 = 0
    arg6(arg7)
  end
  arg6 = true
  arg7 = false
  iterator2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  iterator2 = iterator2()
  tableHelper2 = tCMG
  tableHelper2 = tableHelper2.notify
  dataTable25 = "~g~Lock Picking in progress, you can cancel with [Backspace]."
  -- Beginner: Show a notification to the player.
  tableHelper2(dataTable25)
  tableHelper2 = Citizen
  tableHelper2 = tableHelper2.CreateThread
  function dataTable25()
    local arg12, arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag
    while true do
      arg12 = arg6
      if not arg12 then
        break
      end
      arg12 = IsEntityPlayingAnim
      arg22 = CMG
      arg22 = arg22.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg22 = arg22()
      arg32 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
      arg42 = "machinic_loop_mechandplayer"
      workValue18 = 3
      arg12 = arg12(arg22, arg32, arg42, workValue18)
      if not arg12 then
        arg12 = TaskPlayAnim
        arg22 = CMG
        arg22 = arg22.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg22 = arg22()
        arg32 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
        arg42 = "machinic_loop_mechandplayer"
        workValue18 = 8.0
        flag11 = -8.0
        flag13 = -1
        flag14 = 1
        cmgCall16 = 0
        flag17 = false
        numberValue2 = false
        flag = false
        -- Beginner: Play an animation on a ped.
        arg12(arg22, arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag)
      end
      arg12 = math
      arg12 = arg12.floor
      arg22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg22 = arg22()
      arg32 = iterator2
      arg22 = arg22 - arg32
      arg32 = arg5
      arg22 = arg22 / arg32
      arg22 = arg22 * 100
      arg12 = arg12(arg22)
      arg22 = drawNativeText
      arg32 = "~y~Lock picking - "
      arg42 = arg12
      workValue18 = "%"
      arg32 = arg32 .. arg42 .. workValue18
      -- Beginner: Draw GTA-style text on screen.
      arg22(arg32)
      arg22 = EnableControlAction
      arg32 = 0
      arg42 = 177
      workValue18 = true
      arg22(arg32, arg42, workValue18)
      arg22 = IsControlJustPressed
      arg32 = 0
      arg42 = 177
      arg22 = arg22(arg32, arg42)
      if not arg22 then
        arg22 = IsDisabledControlJustPressed
        arg32 = 0
        arg42 = 177
        arg22 = arg22(arg32, arg42)
        if not arg22 then
          goto flow_label_88
        end
      end
      arg22 = tCMG
      arg22 = arg22.notify
      arg32 = "~r~Lock Picking cancelled."
      -- Beginner: Show a notification to the player.
      arg22(arg32)
      arg22 = false
      arg6 = arg22
      arg22 = true
      arg7 = arg22
      arg22 = ClearPedTasks
      arg32 = CMG
      arg32 = arg32.getPlayerPed
      arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag = arg32()
      arg22(arg32, arg42, workValue18, flag11, flag13, flag14, cmgCall16, flag17, numberValue2, flag)
      arg22 = FreezeEntityPosition
      arg32 = CMG
      arg32 = arg32.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg32 = arg32()
      arg42 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      arg22(arg32, arg42)
      arg22 = TriggerServerEvent
      arg32 = "24bc17d15e"
      arg42 = arg2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "24bc17d15e".
      arg22(arg32, arg42)
      ::flow_label_88::
      arg22 = Wait
      arg32 = 0
      arg22(arg32)
    end
    arg12 = RemoveAnimDict
    arg22 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
    arg12(arg22)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  tableHelper2(dataTable25)
  tableHelper2 = Wait
  dataTable25 = arg5
  tableHelper2(dataTable25)
  tableHelper2 = FreezeEntityPosition
  dataTable25 = CMG
  dataTable25 = dataTable25.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  dataTable25 = dataTable25()
  workValue2 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  tableHelper2(dataTable25, workValue2)
  tableHelper2 = ClearPedTasks
  dataTable25 = CMG
  dataTable25 = dataTable25.getPlayerPed
  dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7 = dataTable25()
  tableHelper2(dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7)
  arg6 = false
  if arg3 and not arg7 then
    tableHelper2 = textValue25
    tableHelper2[arg1] = true
    tableHelper2 = tonumber
    dataTable25 = DecorGetInt
    workValue2 = arg1
    dataTable = "ac76c9d452"
    dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7 = dataTable25(workValue2, dataTable)
    tableHelper2 = tableHelper2(dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7)
    dataTable25 = DecorGetInt
    workValue2 = arg1
    dataTable = "0a6cf607ed"
    dataTable25 = dataTable25(workValue2, dataTable)
    if tableHelper2 > 0 and dataTable25 > 0 then
      workValue2 = TriggerServerEvent
      dataTable = "c8979f62fb"
      iterator = dataTable25
      stringHelper = tableHelper2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c8979f62fb".
      workValue2(dataTable, iterator, stringHelper)
    else
      workValue2 = tCMG
      workValue2 = workValue2.notify
      dataTable = "~r~Vehicle is not owned by anyone"
      -- Beginner: Show a notification to the player.
      workValue2(dataTable)
    end
    workValue2 = NetworkGetNetworkIdFromEntity
    dataTable = arg1
    workValue2 = workValue2(dataTable)
    if 0 ~= workValue2 then
      dataTable = NetworkHasControlOfEntity
      iterator = arg1
      dataTable = dataTable(iterator)
      if dataTable then
        dataTable = TriggerEvent
        iterator = "126d6c2d61"
        stringHelper = workValue2
        workValue7 = false
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "126d6c2d61".
        dataTable(iterator, stringHelper, workValue7)
      else
        dataTable = TriggerServerEvent
        iterator = "126d6c2d61"
        stringHelper = workValue2
        workValue7 = false
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "126d6c2d61".
        dataTable(iterator, stringHelper, workValue7)
      end
      dataTable = TriggerServerEvent
      iterator = "3b617398d3"
      stringHelper = workValue2
      dataTable(iterator, stringHelper)
      dataTable = tCMG
      dataTable = dataTable.notify
      iterator = "Vehicle unlocked."
      -- Beginner: Show a notification to the player.
      dataTable(iterator)
    end
  else
    tableHelper2 = tCMG
    tableHelper2 = tableHelper2.notify
    dataTable25 = "~r~Failed to lockpick vehicle."
    tableHelper2(dataTable25)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7d90029b70".
textValue26(rageUiCall9, rageUiCall10)
textValue26 = {}
rageUiCall9 = RegisterNetEvent
rageUiCall10 = "49b4103abb"
-- Beginner: this function handles network event "49b4103abb".
function eventRegistration5(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable
  arg3 = tonumber
  arg4 = arg2
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = 60000
  end
  arg4 = 1000
  if arg3 < arg4 then
    arg3 = 60000
  end
  arg4 = CMG
  arg4 = arg4.getObjectId
  arg5 = arg1
  arg6 = "49b4103abb"
  arg4 = arg4(arg5, arg6)
  if arg4 then
    arg5 = GetSoundId
    -- Beginner: result below is soundHandle.
    arg5 = arg5()
    arg6 = PlaySoundFromEntity
    arg7 = arg5
    iterator2 = "ALARM_ONE"
    tableHelper2 = arg4
    dataTable25 = "DLC_ALARM_SOUNDSET"
    workValue2 = false
    dataTable = 0
    arg6(arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable)
    arg6 = textValue26
    arg6[arg1] = arg5
    arg6 = SetTimeout
    arg7 = arg3
    function iterator2()
      local arg12, arg22
      arg22 = arg1
      arg12 = textValue26
      arg12 = arg12[arg22]
      if arg12 then
        arg12 = StopSound
        arg22 = arg5
        arg12(arg22)
        arg12 = ReleaseSoundId
        arg22 = arg5
        arg12(arg22)
        arg22 = arg1
        arg12 = textValue26
        arg12[arg22] = nil
      end
    end
    arg6(arg7, iterator2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "49b4103abb".
rageUiCall9(rageUiCall10, eventRegistration5)
rageUiCall9 = RegisterNetEvent
rageUiCall10 = "4b7575ffbe"
-- Beginner: this function handles network event "4b7575ffbe".
function eventRegistration5(arg1)
  local arg2, arg3, arg4
  arg2 = textValue26
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = StopSound
    arg4 = arg2
    arg3(arg4)
    arg3 = ReleaseSoundId
    arg4 = arg2
    arg3(arg4)
    arg3 = textValue26
    arg3[arg1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4b7575ffbe".
rageUiCall9(rageUiCall10, eventRegistration5)
rageUiCall9 = AddEventHandler
rageUiCall10 = "1631601e81"
-- Beginner: this function runs when client event "1631601e81" fires.
function eventRegistration5(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = DecorGetBool
  arg3 = arg1
  arg4 = "6b6dade745"
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = notify
    arg3 = "~r~This vehicle has been towed by Mechanic and can't be lock picked."
    -- Beginner: Show a notification to the player.
    arg2(arg3)
    return
  else
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "aa.onduty.permission"
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = notify
      arg3 = "~r~This action is very illegal."
      arg2(arg3)
      return
    else
      arg2 = tCMG
      arg2 = arg2.isInGreenzone
      arg3 = false
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = notify
        arg3 = "~r~You can not lockpick in a greenzone"
        -- Beginner: Show a notification to the player.
        arg2(arg3)
        return
      end
    end
  end
  arg2 = DecorGetInt
  arg3 = arg1
  arg4 = "0a6cf607ed"
  arg2 = arg2(arg3, arg4)
  if arg2 > 0 then
    arg3 = textValue25
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = TriggerServerEvent
      arg4 = "c8979f62fb"
      arg5 = arg2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c8979f62fb".
      arg3(arg4, arg5)
    else
      arg3 = TriggerServerEvent
      arg4 = "bcccb7ede5"
      arg5 = arg1
      arg6 = VehToNet
      arg7 = arg1
      arg6 = arg6(arg7)
      arg7 = arg2
      arg3(arg4, arg5, arg6, arg7)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "1631601e81".
rageUiCall9(rageUiCall10, eventRegistration5)
rageUiCall9 = CMG
rageUiCall10 = "clientVehicleWasLockpickedThisSession"
function eventRegistration5(arg1)
  local arg2
  arg2 = textValue25
  arg2 = arg2[arg1]
  arg2 = true == arg2
  return arg2
end
rageUiCall9[rageUiCall10] = eventRegistration5
rageUiCall9 = CMG
rageUiCall10 = "getCustomFolders"
function eventRegistration5()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper
  arg1 = GetResourceKvpString
  arg2 = "cmg_garagefolders"
  arg1 = arg1(arg2)
  if nil == arg1 or "null" == arg1 then
    arg1 = "{}"
  end
  arg2 = json
  arg2 = arg2.decode
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = {}
  if arg2 then
    arg4 = pairs
    arg5 = arg2
    arg4, arg5, arg6, arg7 = arg4(arg5)
    for iterator2, tableHelper2 in arg4, arg5, arg6, arg7 do
      dataTable25 = {}
      workValue2 = pairs
      dataTable = tableHelper2
      workValue2, dataTable, iterator, stringHelper = workValue2(dataTable)
      for workValue7, stringHelper2 in workValue2, dataTable, iterator, stringHelper do
        cmgCall3 = tonumber
        tableHelper = workValue7
        cmgCall3 = cmgCall3(tableHelper)
        if cmgCall3 then
          cmgCall3 = tonumber
          tableHelper = workValue7
          cmgCall3 = cmgCall3(tableHelper)
          dataTable25[cmgCall3] = stringHelper2
        end
      end
      arg3[iterator2] = dataTable25
    end
  end
  return arg3
end
rageUiCall9[rageUiCall10] = eventRegistration5
rageUiCall9 = CMG
rageUiCall10 = "isVehicleInAnyCustomFolder"
function eventRegistration5(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2
  arg2 = pairs
  arg3 = dataTable9
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = arg7[arg1]
    if iterator2 then
      iterator2 = true
      return iterator2
    end
  end
  arg2 = false
  return arg2
end
rageUiCall9[rageUiCall10] = eventRegistration5
rageUiCall9 = CMG
rageUiCall10 = "saveCustomFolders"
function eventRegistration5(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = SetResourceKvp
  arg3 = "cmg_garagefolders"
  arg4 = json
  arg4 = arg4.encode
  arg5 = dataTable9
  arg4, arg5 = arg4(arg5)
  arg2(arg3, arg4, arg5)
  arg2 = SetResourceKvpInt
  arg3 = "cmg_garagefolders_version"
  arg4 = arg1 or arg4
  if not arg1 then
    arg4 = 2
  end
  arg2(arg3, arg4)
end
rageUiCall9[rageUiCall10] = eventRegistration5
rageUiCall9 = CMG
rageUiCall10 = "addCarToCustomFolder"
function eventRegistration5(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2
  arg4 = dataTable9
  arg4 = arg4[arg3]
  if arg4 then
    arg4 = 0
    arg5 = pairs
    arg6 = dataTable9
    arg6 = arg6[arg3]
    arg5, arg6, arg7, iterator2 = arg5(arg6)
    for tableHelper2, dataTable25 in arg5, arg6, arg7, iterator2 do
      if dataTable25 > arg4 then
        arg4 = dataTable25
      end
    end
    arg5 = dataTable9
    arg5 = arg5[arg3]
    arg6 = arg4 + 1
    arg5[arg1] = arg6
    arg5 = CMG
    arg5 = arg5.saveCustomFolders
    arg5()
    arg5 = tCMG
    arg5 = arg5.notify
    arg6 = "~g~Added vehicle to custom folder."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
  else
    arg4 = tCMG
    arg4 = arg4.notify
    arg5 = "~r~Failed to add vehicle to folder, folder does not exist?"
    arg4(arg5)
  end
end
rageUiCall9[rageUiCall10] = eventRegistration5
rageUiCall9 = _ENV
rageUiCall10 = "CMG"
rageUiCall9 = rageUiCall9[rageUiCall10]
rageUiCall10 = "removeCarFromCustomFolder"
function eventRegistration5(arg1, arg2)
  local arg3, arg4
  arg3 = dataTable9
  arg3 = arg3[arg2]
  if arg3 then
    arg3 = dataTable9
    arg3 = arg3[arg2]
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = dataTable9
      arg3 = arg3[arg2]
      arg3[arg1] = nil
      arg3 = CMG
      arg3 = arg3.saveCustomFolders
      arg3()
      arg3 = tCMG
      arg3 = arg3.notify
      arg4 = "~g~Removed vehicle from custom folder."
      -- Beginner: Show a notification to the player.
      arg3(arg4)
    else
      arg3 = tCMG
      arg3 = arg3.notify
      arg4 = "~r~Failed to remove vehicle from folder, vehicle not in folder."
      arg3(arg4)
    end
  else
    arg3 = tCMG
    arg3 = arg3.notify
    arg4 = "~r~Failed to remove vehicle from folder, folder does not exist?"
    -- Beginner: Show a notification to the player.
    arg3(arg4)
  end
end
rageUiCall9[rageUiCall10] = eventRegistration5
rageUiCall9 = _ENV
rageUiCall10 = "CMG"
rageUiCall9 = rageUiCall9[rageUiCall10]
rageUiCall10 = "createCustomFolder"
function eventRegistration5(arg1)
  local arg2, arg3, arg4
  arg2 = dataTable9
  arg3 = {}
  arg2[arg1] = arg3
  arg2 = CMG
  arg2 = arg2.saveCustomFolders
  arg2()
  arg2 = tCMG
  arg2 = arg2.notify
  arg3 = "~g~Created "
  arg4 = arg1
  arg3 = arg3 .. arg4
  -- Beginner: Show a notification to the player.
  arg2(arg3)
end
rageUiCall9[rageUiCall10] = eventRegistration5
rageUiCall9 = _ENV
rageUiCall10 = "CMG"
rageUiCall9 = rageUiCall9[rageUiCall10]
rageUiCall10 = "deleteCustomFolder"
function eventRegistration5(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2
  arg2 = pairs
  arg3 = dataTable9
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6 in arg2, arg3, arg4, arg5 do
    arg7 = string
    arg7 = arg7.lower
    iterator2 = arg6
    arg7 = arg7(iterator2)
    iterator2 = string
    iterator2 = iterator2.lower
    tableHelper2 = arg1
    iterator2 = iterator2(tableHelper2)
    if arg7 == iterator2 then
      arg7 = dataTable9
      arg7[arg6] = nil
    end
  end
  arg2 = dataTable9
  arg2[arg1] = nil
  arg2 = CMG
  arg2 = arg2.saveCustomFolders
  arg2()
  arg2 = tCMG
  arg2 = arg2.notify
  arg3 = "~g~Deleted "
  arg4 = arg1
  arg3 = arg3 .. arg4
  -- Beginner: Show a notification to the player.
  arg2(arg3)
end
rageUiCall9[rageUiCall10] = eventRegistration5
rageUiCall9 = _ENV
rageUiCall10 = "CMG"
rageUiCall9 = rageUiCall9[rageUiCall10]
rageUiCall10 = "getGarageSettings"
function eventRegistration5()
  local arg1, arg2, arg3
  arg1 = GetResourceKvpString
  arg2 = "cmg_garagesettings"
  arg1 = arg1(arg2)
  if nil == arg1 or "null" == arg1 then
    arg1 = "{}"
  end
  arg2 = json
  arg2 = arg2.decode
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = {}
  end
  return arg2
end
rageUiCall9[rageUiCall10] = eventRegistration5
rageUiCall9 = _ENV
rageUiCall10 = "CMG"
rageUiCall9 = rageUiCall9[rageUiCall10]
rageUiCall10 = "saveGarageSettings"
function eventRegistration5()
  local arg1, arg2, arg3, arg4
  arg1 = SetResourceKvp
  arg2 = "cmg_garagesettings"
  arg3 = json
  arg3 = arg3.encode
  arg4 = dataTable11
  arg3, arg4 = arg3(arg4)
  arg1(arg2, arg3, arg4)
end
rageUiCall9[rageUiCall10] = eventRegistration5
rageUiCall9 = _ENV
rageUiCall10 = "CMG"
rageUiCall9 = rageUiCall9[rageUiCall10]
rageUiCall10 = "registerCommand"
rageUiCall9 = rageUiCall9[rageUiCall10]
rageUiCall10 = "cleanupgarages"
function eventRegistration5()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9
  arg1 = CMG
  arg1 = arg1.getClientUserId
  -- Beginner: result below is userId.
  arg1 = arg1()
  if 1 == arg1 then
    arg1 = {}
    arg2 = tCMG
    arg2 = arg2.notify
    arg3 = "~y~Y to OK, U to mark as removed"
    -- Beginner: Show a notification to the player.
    arg2(arg3)
    arg2 = 1
    arg3 = workValue.garageInstances
    arg3 = #arg3
    arg4 = 1
    for arg5 = arg2, arg3, arg4 do
      arg6 = workValue.garageInstances
      arg6 = arg6[arg5]
      arg7 = arg6[1]
      iterator2 = arg6[2]
      tableHelper2 = arg6[3]
      dataTable25 = print
      workValue2 = "Checking"
      dataTable = arg7
      dataTable25(workValue2, dataTable)
      dataTable25 = tCMG
      dataTable25 = dataTable25.teleport
      workValue2 = iterator2.x
      dataTable = iterator2.y
      iterator = iterator2.z
      dataTable25(workValue2, dataTable, iterator)
      dataTable25 = true
      while dataTable25 do
        workValue2 = IsControlJustPressed
        dataTable = 0
        iterator = 246
        workValue2 = workValue2(dataTable, iterator)
        if workValue2 then
          workValue2 = tCMG
          workValue2 = workValue2.notify
          dataTable = "~g~This garage is fine."
          -- Beginner: Show a notification to the player.
          workValue2(dataTable)
          workValue2 = table
          workValue2 = workValue2.insert
          dataTable = arg1
          iterator = "{\""
          stringHelper = arg7
          workValue7 = "\", "
          stringHelper2 = tostring
          cmgCall3 = iterator2
          stringHelper2 = stringHelper2(cmgCall3)
          cmgCall3 = ", "
          tableHelper = tostring
          workValue9 = tableHelper2
          tableHelper = tableHelper(workValue9)
          workValue9 = "},"
          iterator = iterator .. stringHelper .. workValue7 .. stringHelper2 .. cmgCall3 .. tableHelper .. workValue9
          workValue2(dataTable, iterator)
          dataTable25 = false
        else
          workValue2 = IsControlJustPressed
          dataTable = 0
          iterator = 303
          workValue2 = workValue2(dataTable, iterator)
          if workValue2 then
            workValue2 = tCMG
            workValue2 = workValue2.notify
            dataTable = "~g~Removing this garage."
            -- Beginner: Show a notification to the player.
            workValue2(dataTable)
            dataTable25 = false
          end
        end
        workValue2 = Wait
        dataTable = 0
        workValue2(dataTable)
      end
    end
    arg2 = TriggerServerEvent
    arg3 = "0d535cac57"
    arg4 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0d535cac57".
    arg2(arg3, arg4)
  end
end
eventRegistration6 = false
rageUiCall9(rageUiCall10, eventRegistration5, eventRegistration6)
rageUiCall9 = AddEventHandler
rageUiCall10 = "9bf490d170"
-- Beginner: this function runs when client event "9bf490d170" fires.
function eventRegistration5()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = SendNUIMessage
  arg2 = {}
  arg3 = "MPCT_ALAA_0"
  arg4 = math
  arg4 = arg4.random
  arg5 = 1
  arg6 = 5
  arg4 = arg4(arg5, arg6)
  arg3 = arg3 .. arg4
  arg2.transactionType = arg3
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg1(arg2)
end
-- Beginner: Register a client-side event handler. Event/command: "9bf490d170".
rageUiCall9(rageUiCall10, eventRegistration5)
rageUiCall9 = 0
function rageUiCall10()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = RenderScriptCams
  arg2 = false
  arg3 = false
  arg4 = 0
  arg5 = false
  arg6 = false
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = DestroyCam
  arg2 = rageUiCall9
  arg3 = false
  arg1(arg2, arg3)
  arg1 = 0
  rageUiCall9 = arg1
  arg1 = DoScreenFadeIn
  arg2 = 0
  arg1(arg2)
  arg1 = ClearFocus
  arg1()
end
eventRegistration5 = RegisterNetEvent
eventRegistration6 = "7444109bf3"
-- Beginner: this function handles network event "7444109bf3".
function flag16(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator
  arg3 = rageUiCall9
  if 0 ~= arg3 then
    arg3 = DestroyCam
    arg4 = rageUiCall9
    arg5 = false
    arg3(arg4, arg5)
    return
  end
  arg3 = DoScreenFadeOut
  arg4 = 0
  arg3(arg4)
  arg3 = CreateCam
  arg4 = "DEFAULT_SCRIPTED_CAMERA"
  arg5 = true
  -- Beginner: result below is cameraHandle.
  arg3 = arg3(arg4, arg5)
  rageUiCall9 = arg3
  arg3 = SetCamActive
  arg4 = rageUiCall9
  arg5 = true
  arg3(arg4, arg5)
  arg3 = SetCamCoord
  arg4 = rageUiCall9
  arg5 = arg1.x
  arg6 = arg1.y
  arg7 = arg1.z
  arg3(arg4, arg5, arg6, arg7)
  arg3 = RenderScriptCams
  arg4 = true
  arg5 = false
  arg6 = 0
  arg7 = true
  iterator2 = true
  arg3(arg4, arg5, arg6, arg7, iterator2)
  arg3 = SetFocusPosAndVel
  arg4 = arg1.x
  arg5 = arg1.y
  arg6 = arg1.z
  arg7 = 0.0
  iterator2 = 0.0
  tableHelper2 = 0.0
  arg3(arg4, arg5, arg6, arg7, iterator2, tableHelper2)
  arg3 = RageUI
  arg3 = arg3.CloseAll
  arg3()
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  while true do
    arg4 = NetworkDoesEntityExistWithNetworkId
    arg5 = arg2
    arg4 = arg4(arg5)
    if arg4 then
      break
    end
    arg4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg4 = arg4()
    arg4 = arg4 - arg3
    arg5 = 5000
    if arg4 > arg5 then
      arg4 = rageUiCall10
      arg4()
      arg4 = notify
      arg5 = "~r~Can not view dashcam of vehicle."
      -- Beginner: Show a notification to the player.
      arg4(arg5)
      return
    end
    arg4 = Citizen
    arg4 = arg4.Wait
    arg5 = 0
    arg4(arg5)
  end
  arg4 = NetworkGetEntityFromNetworkId
  arg5 = arg2
  arg4 = arg4(arg5)
  if 0 == arg4 then
    arg5 = rageUiCall10
    arg5()
    arg5 = notify
    arg6 = "~r~Can not view dashcam of vehicle."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    return
  end
  arg5 = DoScreenFadeIn
  arg6 = 0
  arg5(arg6)
  arg5 = notify
  arg6 = "~g~Viewing your vehicle dashcam."
  -- Beginner: Show a notification to the player.
  arg5(arg6)
  while true do
    arg5 = DoesEntityExist
    arg6 = arg4
    arg5 = arg5(arg6)
    if not arg5 then
      break
    end
    arg5 = IsCamActive
    arg6 = rageUiCall9
    arg5 = arg5(arg6)
    if not arg5 then
      break
    end
    arg5 = IsControlJustPressed
    arg6 = 0
    arg7 = 177
    arg5 = arg5(arg6, arg7)
    if arg5 then
      break
    end
    arg5 = GetWorldPositionOfEntityBone
    arg6 = arg4
    arg7 = GetEntityBoneIndexByName
    iterator2 = arg4
    tableHelper2 = "windscreen"
    arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator = arg7(iterator2, tableHelper2)
    arg5 = arg5(arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator)
    arg6 = GetEntityRotation
    arg7 = arg4
    iterator2 = 2
    arg6 = arg6(arg7, iterator2)
    arg7 = SetCamCoord
    iterator2 = rageUiCall9
    tableHelper2 = arg5.x
    dataTable25 = arg5.y
    workValue2 = arg5.z
    arg7(iterator2, tableHelper2, dataTable25, workValue2)
    arg7 = SetFocusPosAndVel
    iterator2 = arg5.x
    tableHelper2 = arg5.y
    dataTable25 = arg5.z
    workValue2 = 0.0
    dataTable = 0.0
    iterator = 0.0
    arg7(iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator)
    arg7 = SetCamRot
    iterator2 = rageUiCall9
    tableHelper2 = arg6.x
    dataTable25 = arg6.y
    workValue2 = arg6.z
    dataTable = 2
    arg7(iterator2, tableHelper2, dataTable25, workValue2, dataTable)
    arg7 = Citizen
    arg7 = arg7.Wait
    iterator2 = 0
    arg7(iterator2)
  end
  arg5 = notify
  arg6 = "~r~Stopped viewing your vehicle dashcam."
  -- Beginner: Show a notification to the player.
  arg5(arg6)
  arg5 = RenderScriptCams
  arg6 = false
  arg7 = false
  iterator2 = 0
  tableHelper2 = false
  dataTable25 = false
  arg5(arg6, arg7, iterator2, tableHelper2, dataTable25)
  arg5 = DestroyCam
  arg6 = rageUiCall9
  arg7 = false
  arg5(arg6, arg7)
  arg5 = 0
  rageUiCall9 = arg5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7444109bf3".
eventRegistration5(eventRegistration6, flag16)
eventRegistration5 = nil
eventRegistration6 = RegisterNetEvent
flag16 = "a30d55e751"
-- Beginner: this function handles network event "a30d55e751".
function workValue33(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = eventRegistration5
  if 0 ~= arg2 then
    arg2 = RemoveBlip
    arg3 = eventRegistration5
    arg2(arg3)
  end
  if arg1 then
    arg2 = AddBlipForCoord
    arg3 = arg1.x
    arg4 = arg1.y
    arg5 = arg1.z
    -- Beginner: result below is blipHandle.
    arg2 = arg2(arg3, arg4, arg5)
    eventRegistration5 = arg2
    arg2 = SetBlipSprite
    arg3 = eventRegistration5
    arg4 = 56
    arg2(arg3, arg4)
    arg2 = SetBlipScale
    arg3 = eventRegistration5
    arg4 = 1.0
    arg2(arg3, arg4)
    arg2 = SetBlipColour
    arg3 = eventRegistration5
    arg4 = 2
    arg2(arg3, arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a30d55e751".
eventRegistration6(flag16, workValue33)
eventRegistration6 = 0
flag16 = false
workValue33 = _ENV
cmgCall17 = "CMG"
workValue33 = workValue33[cmgCall17]
cmgCall17 = "inBiometricLockedVehicle"
function cmgCall()
  local arg1, arg2
  arg1 = flag16
  return arg1
end
workValue33[cmgCall17] = cmgCall
function workValue33()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25
  arg1 = false
  flag16 = arg1
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  arg1, arg2 = arg1()
  if 0 ~= arg1 and arg2 then
    arg3 = DecorGetBool
    arg4 = arg1
    arg5 = "9d5712766f"
    arg3 = arg3(arg4, arg5)
    if arg3 then
      arg4 = CMG
      arg4 = arg4.getClientUserId
      -- Beginner: result below is userId.
      arg4 = arg4()
      arg5 = Entity
      arg6 = arg1
      arg5 = arg5(arg6)
      arg5 = arg5.state
      arg5 = arg5.biometricUsers
      arg6 = DecorGetInt
      arg7 = arg1
      iterator2 = "ac76c9d452"
      arg6 = arg6(arg7, iterator2)
      if arg4 ~= arg6 then
        if arg5 then
          arg7 = table
          arg7 = arg7.has
          iterator2 = arg5
          tableHelper2 = arg4
          arg7 = arg7(iterator2, tableHelper2)
          if arg7 then
            goto flow_label_138
          end
        end
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 32
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 33
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 34
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 35
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 71
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 72
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 87
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 88
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 129
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 130
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 107
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 108
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 109
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 110
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 111
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 112
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 350
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = DisableControlAction
        iterator2 = 0
        tableHelper2 = 351
        dataTable25 = true
        arg7(iterator2, tableHelper2, dataTable25)
        arg7 = SetVehicleRocketBoostPercentage
        iterator2 = arg1
        tableHelper2 = 0.0
        arg7(iterator2, tableHelper2)
        arg7 = drawNativeText
        iterator2 = "This vehicle is locked biometrically to the owner."
        -- Beginner: Draw GTA-style text on screen.
        arg7(iterator2)
        arg7 = true
        flag16 = arg7
      end
    end
  end
  ::flow_label_138::
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = GetIsTaskActive
  arg5 = arg3
  arg6 = 160
  arg4 = arg4(arg5, arg6)
  if arg4 then
    arg4 = GetVehiclePedIsEntering
    arg5 = arg3
    arg4 = arg4(arg5)
    if 0 ~= arg4 then
      arg5 = GetVehicleDoorLockStatus
      arg6 = arg4
      arg5 = arg5(arg6)
      if 2 == arg5 then
        eventRegistration6 = arg4
      elseif 1 == arg5 then
        arg6 = eventRegistration6
        if arg4 == arg6 then
          arg6 = ClearPedTasks
          arg7 = arg3
          arg6(arg7)
          arg6 = 0
          eventRegistration6 = arg6
        end
      end
    end
  else
    arg4 = 0
    eventRegistration6 = arg4
  end
end
cmgCall17 = DecorRegister
cmgCall = "9d5712766f"
threadCall = 2
cmgCall17(cmgCall, threadCall)
cmgCall17 = _ENV
cmgCall = "CMG"
cmgCall17 = cmgCall17[cmgCall]
cmgCall17 = cmgCall17.createThreadOnTick
cmgCall = workValue33
threadCall = "Biometric Lock"
cmgCall17(cmgCall, threadCall)
cmgCall17 = _ENV
cmgCall = "CMG"
cmgCall17 = cmgCall17[cmgCall]
cmgCall = "setVehicleIdBiometricLock"
function threadCall(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7
  arg4 = arg2["21"]
  if arg4 then
    arg4 = DecorSetBool
    arg5 = arg1
    arg6 = "9d5712766f"
    arg7 = true
    arg4(arg5, arg6, arg7)
  end
  if arg3 then
    arg4 = #arg3
    if arg4 > 0 then
      arg4 = false
      arg5 = NetworkGetEntityIsNetworked
      arg6 = arg1
      arg5 = arg5(arg6)
      if arg5 then
        arg5 = NetworkGetNetworkIdFromEntity
        arg6 = arg1
        arg5 = arg5(arg6)
        if 0 ~= arg5 then
          goto flow_label_26
        end
      end
      arg4 = true
      ::flow_label_26::
      arg5 = Citizen
      arg5 = arg5.CreateThread
      function arg6()
        local arg12, arg22, arg32, arg42, workValue18
        arg12 = Citizen
        arg12 = arg12.Wait
        arg22 = arg4
        if arg22 then
          arg22 = 2500
          if arg22 then
            goto flow_label_10
          end
        end
        arg22 = 0
        ::flow_label_10::
        arg12(arg22)
        arg12 = NetworkGetNetworkIdFromEntity
        arg22 = arg1
        arg12 = arg12(arg22)
        arg22 = TriggerServerEvent
        arg32 = "ee931fcf36"
        arg42 = arg12
        workValue18 = arg3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ee931fcf36".
        arg22(arg32, arg42, workValue18)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg5(arg6)
    end
  end
end
cmgCall17[cmgCall] = threadCall
cmgCall17 = {}
cmgCall = _ENV
threadCall = "Citizen"
cmgCall = cmgCall[threadCall]
threadCall = "CreateThread"
cmgCall = cmgCall[threadCall]
function threadCall()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable
  arg1 = GetResourceKvpString
  arg2 = "cmg_custom_vehicle_names"
  arg1 = arg1(arg2)
  if arg1 and "" ~= arg1 then
    arg2 = json
    arg2 = arg2.decode
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      arg3 = pairs
      arg4 = arg2
      arg3, arg4, arg5, arg6 = arg3(arg4)
      for arg7, iterator2 in arg3, arg4, arg5, arg6 do
        tableHelper2 = tonumber
        dataTable25 = arg7
        tableHelper2 = tableHelper2(dataTable25)
        dataTable25 = dataTable12
        dataTable25[tableHelper2] = iterator2
      end
    end
  end
  while true do
    arg2 = pairs
    arg3 = CMG
    arg3 = arg3.getAllVehicles
    arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable = arg3()
    arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable)
    for arg6, arg7 in arg2, arg3, arg4, arg5 do
      iterator2 = cmgCall17
      iterator2 = iterator2[arg7]
      if not iterator2 then
        iterator2 = DecorExistOn
        tableHelper2 = arg7
        dataTable25 = "6939027d97"
        iterator2 = iterator2(tableHelper2, dataTable25)
        if iterator2 then
          iterator2 = DecorGetInt
          tableHelper2 = arg7
          dataTable25 = "6939027d97"
          iterator2 = iterator2(tableHelper2, dataTable25)
          tableHelper2 = CMG
          tableHelper2 = tableHelper2.getVehicleSoundNameFromId
          dataTable25 = iterator2
          tableHelper2 = tableHelper2(dataTable25)
          dataTable25 = ForceVehicleEngineAudio
          workValue2 = arg7
          dataTable = tableHelper2
          dataTable25(workValue2, dataTable)
          dataTable25 = cmgCall17
          workValue2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          workValue2 = workValue2()
          dataTable25[arg7] = workValue2
        end
      end
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 2000
    arg2(arg3)
  end
end
cmgCall(threadCall)
cmgCall = _ENV
threadCall = "exports"
cmgCall = cmgCall[threadCall]
threadCall = "hasAppliedEngineAudio"
function numberValue(arg1)
  local arg2, arg3, arg4
  arg2 = cmgCall17
  arg2 = arg2[arg1]
  arg3 = arg2 or arg3
  if arg2 then
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    arg3 = arg3 - arg2
    arg4 = 5000
    arg3 = arg3 > arg4
  end
  return arg3
end
cmgCall(threadCall, numberValue)
cmgCall = _ENV
threadCall = "vector3"
cmgCall = cmgCall[threadCall]
threadCall = 0.0
numberValue = 0.0
eventRegistration = 0.0
cmgCall = cmgCall(threadCall, numberValue, eventRegistration)
threadCall = {}
numberValue = _ENV
eventRegistration = "Citizen"
numberValue = numberValue[eventRegistration]
eventRegistration = "CreateThread"
numberValue = numberValue[eventRegistration]
function eventRegistration()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2
  while true do
    arg1 = CMG
    arg1 = arg1.getPlayerVehicle
    arg1, arg2 = arg1()
    arg3 = CMG
    arg3 = arg3.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg3 = arg3()
    if 0 ~= arg1 and arg2 then
      arg4 = DecorGetInt
      arg5 = arg1
      arg6 = "ac76c9d452"
      arg4 = arg4(arg5, arg6)
      arg5 = CMG
      arg5 = arg5.getClientUserId
      -- Beginner: result below is userId.
      arg5 = arg5()
      if arg4 == arg5 then
        arg4 = GetEntityModel
        arg5 = arg1
        -- Beginner: result below is modelHash.
        arg4 = arg4(arg5)
        arg5 = cmgCall
        arg5 = arg5 - arg3
        arg5 = #arg5
        if arg5 < 120.0 then
          arg6 = GetEntitySpeed
          arg7 = arg1
          -- Beginner: result below is speed.
          arg6 = arg6(arg7)
          if arg6 > 5.0 then
            arg6 = threadCall
            arg6 = arg6[arg4]
            if not arg6 then
              arg7 = {}
              arg7.meters = 0.0
              arg7.secondsInVehicle = 0
              arg6 = arg7
              arg7 = threadCall
              arg7[arg4] = arg6
            end
            arg7 = arg6.meters
            arg7 = arg7 + arg5
            arg6.meters = arg7
            arg7 = arg6.secondsInVehicle
            arg7 = arg7 + 1
            arg6.secondsInVehicle = arg7
            arg7 = arg6.secondsInVehicle
            if arg7 >= 30 then
              arg7 = arg6.meters
              if arg7 > 50.0 then
                arg7 = DecorGetInt
                iterator2 = arg1
                tableHelper2 = "0a6cf607ed"
                arg7 = arg7(iterator2, tableHelper2)
                if arg7 > 0 then
                  iterator2 = TriggerServerEvent
                  tableHelper2 = "589dcb122a"
                  dataTable25 = arg7
                  workValue2 = arg6.meters
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "589dcb122a".
                  iterator2(tableHelper2, dataTable25, workValue2)
                end
              end
              arg6.meters = 0.0
              arg6.secondsInVehicle = 0
            end
          end
        end
        cmgCall = arg3
      end
    end
    arg4 = Citizen
    arg4 = arg4.Wait
    arg5 = 1000
    arg4(arg5)
  end
end
numberValue(eventRegistration)
function numberValue(arg1)
  local arg2, arg3
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
eventRegistration = RegisterNetEvent
textValue = "1f270ab7bb"
-- Beginner: this function handles network event "1f270ab7bb".
function textValue2(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = TaskLookAtEntity
  arg5 = arg3
  arg6 = arg1
  arg7 = -1
  iterator2 = 2048
  tableHelper2 = 3
  arg4(arg5, arg6, arg7, iterator2, tableHelper2)
  arg4 = Citizen
  arg4 = arg4.Wait
  arg5 = 3000
  arg4(arg5)
  arg4 = numberValue
  arg5 = arg2
  arg4 = arg4(arg5)
  arg5 = math
  arg5 = arg5.max
  arg6 = 1000
  arg7 = math
  arg7 = arg7.floor
  iterator2 = 12000 * arg4
  arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper = arg7(iterator2)
  arg5 = arg5(arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper)
  arg6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg6 = arg6()
  arg7 = Citizen
  arg7 = arg7.CreateThreadNow
  function iterator2()
    local arg12, arg22, arg32, arg42, workValue18
    arg12 = CMG
    arg12 = arg12.startCircularProgressBar
    arg22 = "Repairing vehicle"
    arg32 = arg5
    arg42 = nil
    function workValue18()
      local arg13, arg23
    end
    arg12(arg22, arg32, arg42, workValue18)
  end
  arg7(iterator2)
  arg7 = Citizen
  arg7 = arg7.Wait
  iterator2 = 0
  arg7(iterator2)
  while true do
    arg7 = GetEntityHealth
    iterator2 = arg3
    -- Beginner: result below is health.
    arg7 = arg7(iterator2)
    if not (arg7 > 102) then
      break
    end
    arg7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg7 = arg7()
    arg7 = arg7 - arg6
    if not (arg5 > arg7) then
      break
    end
    arg7 = IsEntityPlayingAnim
    iterator2 = arg3
    tableHelper2 = "mini@repair"
    dataTable25 = "fixing_a_ped"
    workValue2 = 3
    arg7 = arg7(iterator2, tableHelper2, dataTable25, workValue2)
    if not arg7 then
      arg7 = CMG
      arg7 = arg7.loadAnimDict
      iterator2 = "mini@repair"
      -- Beginner: Load a GTA animation dictionary before using it.
      arg7(iterator2)
      arg7 = TaskPlayAnim
      iterator2 = arg3
      tableHelper2 = "mini@repair"
      dataTable25 = "fixing_a_ped"
      workValue2 = 1.0
      dataTable = 8.0
      iterator = -1
      stringHelper = 49
      workValue7 = 1.0
      stringHelper2 = false
      cmgCall3 = false
      tableHelper = false
      -- Beginner: Play an animation on a ped.
      arg7(iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper)
      arg7 = RemoveAnimDict
      iterator2 = "mini@repair"
      arg7(iterator2)
    end
    arg7 = Citizen
    arg7 = arg7.Wait
    iterator2 = 0
    arg7(iterator2)
  end
  arg7 = CMG
  arg7 = arg7.stopCircularProgressBar
  arg7()
  arg7 = ClearPedTasksImmediately
  iterator2 = arg3
  arg7(iterator2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1f270ab7bb".
eventRegistration(textValue, textValue2)
eventRegistration = RegisterNetEvent
textValue = "68cd4709a6"
-- Beginner: this function handles network event "68cd4709a6".
function textValue2(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2
  arg3 = NetworkDoesNetworkIdExist
  arg4 = arg1
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = NetworkDoesEntityExistWithNetworkId
    arg4 = arg1
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = NetworkGetEntityFromNetworkId
      arg4 = arg1
      arg3 = arg3(arg4)
      if 0 ~= arg3 then
        arg4 = NetworkHasControlOfEntity
        arg5 = arg3
        arg4 = arg4(arg5)
        if arg4 then
          arg4 = SetVehicleDoorOpen
          arg5 = arg3
          arg6 = 4
          arg7 = false
          iterator2 = false
          arg4(arg5, arg6, arg7, iterator2)
          arg4 = FreezeEntityPosition
          arg5 = arg3
          arg6 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          arg4(arg5, arg6)
        end
        arg4 = numberValue
        arg5 = arg2
        arg4 = arg4(arg5)
        arg5 = math
        arg5 = arg5.max
        arg6 = 1000
        arg7 = math
        arg7 = arg7.floor
        iterator2 = 12000 * arg4
        arg7, iterator2 = arg7(iterator2)
        arg5 = arg5(arg6, arg7, iterator2)
        arg6 = Citizen
        arg6 = arg6.Wait
        arg7 = 3000 + arg5
        arg6(arg7)
        arg6 = NetworkHasControlOfEntity
        arg7 = arg3
        arg6 = arg6(arg7)
        if arg6 then
          arg6 = FreezeEntityPosition
          arg7 = arg3
          iterator2 = false
          -- Beginner: Freeze or unfreeze an entity in place.
          arg6(arg7, iterator2)
          arg6 = SetVehicleEngineHealth
          arg7 = arg3
          iterator2 = 9999
          arg6(arg7, iterator2)
          arg6 = SetVehiclePetrolTankHealth
          arg7 = arg3
          iterator2 = 9999
          arg6(arg7, iterator2)
          arg6 = CMG
          arg6 = arg6.setVehicleFixedPreservingFuel
          arg7 = arg3
          arg6(arg7)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "68cd4709a6".
eventRegistration(textValue, textValue2)
eventRegistration = RegisterNetEvent
textValue = "a37e8d69f4"
-- Beginner: this function handles network event "a37e8d69f4".
function textValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2
  arg2 = CMG
  arg2 = arg2.getClosestVehicle
  arg3 = 5.0
  arg2 = arg2(arg3)
  if arg2 and 0 ~= arg2 then
    arg3 = GetPedInVehicleSeat
    arg4 = arg2
    arg5 = -1
    arg3 = arg3(arg4, arg5)
    if 0 == arg3 then
      arg4 = NetworkGetNetworkIdFromEntity
      arg5 = arg2
      arg4 = arg4(arg5)
      if 0 ~= arg4 then
        arg5 = TriggerServerEvent
        arg6 = "a37e8d69f4"
        arg7 = arg4
        iterator2 = arg1
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a37e8d69f4".
        arg5(arg6, arg7, iterator2)
      end
    else
      arg4 = notify
      arg5 = "~r~Can not repair vehicle with a person in the driver seat."
      -- Beginner: Show a notification to the player.
      arg4(arg5)
    end
  else
    arg3 = notify
    arg4 = "~r~No vehicle nearby to repair."
    arg3(arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a37e8d69f4".
eventRegistration(textValue, textValue2)
eventRegistration = RegisterNetEvent
textValue = "e271da7ccf"
-- Beginner: this function handles network event "e271da7ccf".
function textValue2(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9
  arg3 = NetworkDoesNetworkIdExist
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg3 = NetworkGetEntityFromNetworkId
  arg4 = arg1
  arg3 = arg3(arg4)
  if 0 == arg3 then
    return
  end
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = TaskLookAtEntity
  arg6 = arg4
  arg7 = arg3
  iterator2 = -1
  tableHelper2 = 2048
  dataTable25 = 3
  arg5(arg6, arg7, iterator2, tableHelper2, dataTable25)
  arg5 = Citizen
  arg5 = arg5.Wait
  arg6 = 3000
  arg5(arg6)
  arg5 = numberValue
  arg6 = arg2
  arg5 = arg5(arg6)
  arg6 = math
  arg6 = arg6.max
  arg7 = 1000
  iterator2 = math
  iterator2 = iterator2.floor
  tableHelper2 = 28000 * arg5
  iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9 = iterator2(tableHelper2)
  arg6 = arg6(arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9)
  arg7 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg7 = arg7()
  iterator2 = Citizen
  iterator2 = iterator2.CreateThreadNow
  function tableHelper2()
    local arg12, arg22, arg32, arg42, workValue18
    arg12 = CMG
    arg12 = arg12.startCircularProgressBar
    arg22 = "Repairing vehicle"
    arg32 = arg6
    arg42 = nil
    function workValue18()
      local arg13, arg23
    end
    arg12(arg22, arg32, arg42, workValue18)
  end
  iterator2(tableHelper2)
  iterator2 = Citizen
  iterator2 = iterator2.Wait
  tableHelper2 = 0
  iterator2(tableHelper2)
  while true do
    iterator2 = GetEntityHealth
    tableHelper2 = arg4
    -- Beginner: result below is health.
    iterator2 = iterator2(tableHelper2)
    if not (iterator2 > 102) then
      break
    end
    iterator2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    iterator2 = iterator2()
    iterator2 = iterator2 - arg7
    if not (arg6 > iterator2) then
      break
    end
    iterator2 = IsEntityPlayingAnim
    tableHelper2 = arg4
    dataTable25 = "mini@repair"
    workValue2 = "fixing_a_ped"
    dataTable = 3
    iterator2 = iterator2(tableHelper2, dataTable25, workValue2, dataTable)
    if not iterator2 then
      iterator2 = CMG
      iterator2 = iterator2.loadAnimDict
      tableHelper2 = "mini@repair"
      -- Beginner: Load a GTA animation dictionary before using it.
      iterator2(tableHelper2)
      iterator2 = TaskPlayAnim
      tableHelper2 = arg4
      dataTable25 = "mini@repair"
      workValue2 = "fixing_a_ped"
      dataTable = 1.0
      iterator = 8.0
      stringHelper = -1
      workValue7 = 49
      stringHelper2 = 1.0
      cmgCall3 = false
      tableHelper = false
      workValue9 = false
      -- Beginner: Play an animation on a ped.
      iterator2(tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9)
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
  tableHelper2 = arg4
  iterator2(tableHelper2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e271da7ccf".
eventRegistration(textValue, textValue2)
eventRegistration = RegisterNetEvent
textValue = "3afdeeb96c"
-- Beginner: this function handles network event "3afdeeb96c".
function textValue2(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, iterator2
  arg3 = NetworkDoesNetworkIdExist
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg3 = NetworkGetEntityFromNetworkId
  arg4 = arg1
  arg3 = arg3(arg4)
  if 0 == arg3 then
    return
  end
  arg4 = NetworkHasControlOfEntity
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = SetVehicleDoorOpen
    arg5 = arg3
    arg6 = 4
    arg7 = false
    iterator2 = false
    arg4(arg5, arg6, arg7, iterator2)
    arg4 = FreezeEntityPosition
    arg5 = arg3
    arg6 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg4(arg5, arg6)
  end
  arg4 = numberValue
  arg5 = arg2
  arg4 = arg4(arg5)
  arg5 = math
  arg5 = arg5.max
  arg6 = 1000
  arg7 = math
  arg7 = arg7.floor
  iterator2 = 28000 * arg4
  arg7, iterator2 = arg7(iterator2)
  arg5 = arg5(arg6, arg7, iterator2)
  arg6 = Citizen
  arg6 = arg6.Wait
  arg7 = 3000 + arg5
  arg6(arg7)
  arg6 = NetworkHasControlOfEntity
  arg7 = arg3
  arg6 = arg6(arg7)
  if arg6 then
    arg6 = FreezeEntityPosition
    arg7 = arg3
    iterator2 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    arg6(arg7, iterator2)
    arg6 = SetVehicleEngineHealth
    arg7 = arg3
    iterator2 = 9999
    arg6(arg7, iterator2)
    arg6 = SetVehiclePetrolTankHealth
    arg7 = arg3
    iterator2 = 9999
    arg6(arg7, iterator2)
    arg6 = CMG
    arg6 = arg6.setVehicleFixedPreservingFuel
    arg7 = arg3
    arg6(arg7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3afdeeb96c".
eventRegistration(textValue, textValue2)
eventRegistration = RegisterNetEvent
textValue = "82540e2ca1"
-- Beginner: this function handles network event "82540e2ca1".
function textValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6
  workValue19 = arg1
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  arg5 = "garages"
  arg6 = "paymentplanoffer"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, arg5, arg6)
  arg4 = true
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "82540e2ca1".
eventRegistration(textValue, textValue2)
eventRegistration = RegisterNetEvent
textValue = "e728b25029"
-- Beginner: this function handles network event "e728b25029".
function textValue2(arg1)
  local arg2
  arg2 = workValue11
  if arg2 then
    arg2 = workValue11.vehicleName
    if arg2 then
      arg2 = arg1.vehicleName
      if not arg2 then
        arg2 = workValue11.vehicleName
        arg1.vehicleName = arg2
      end
    end
  end
  workValue11 = arg1
end
eventRegistration(textValue, textValue2)
eventRegistration = _ENV
textValue = "RMenu"
eventRegistration = eventRegistration[textValue]
eventRegistration = eventRegistration.Add
textValue = "garages"
textValue2 = "inactivity"
rageUiCall = _ENV
rageUiCall2 = "RageUI"
rageUiCall = rageUiCall[rageUiCall2]
rageUiCall = rageUiCall.CreateMenu
rageUiCall2 = ""
textValue3 = "Vehicle Inactivity"
rageUiCall3 = _ENV
rageUiCall4 = "CMG"
rageUiCall3 = rageUiCall3[rageUiCall4]
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = _ENV
cmgCall2 = "CMG"
rageUiCall4 = rageUiCall4[cmgCall2]
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
cmgCall2 = "cmg_garageui"
textValue5 = "cmg_garageui"
rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5 = rageUiCall(rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
eventRegistration(textValue, textValue2, rageUiCall, rageUiCall2, textValue3, rageUiCall3, rageUiCall4, cmgCall2, textValue5)
eventRegistration = nil
textValue = nil
textValue2 = _ENV
rageUiCall = "RageUI"
textValue2 = textValue2[rageUiCall]
textValue2 = textValue2.CreateWhile
rageUiCall = 1.0
rageUiCall2 = _ENV
textValue3 = "RMenu"
rageUiCall2 = rageUiCall2[textValue3]
rageUiCall3 = "Get"
textValue3 = rageUiCall2
rageUiCall2 = rageUiCall2[rageUiCall3]
rageUiCall3 = "garages"
rageUiCall4 = "inactivity"
rageUiCall2 = rageUiCall2(textValue3, rageUiCall3, rageUiCall4)
textValue3 = nil
function rageUiCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "garages"
  arg5 = "inactivity"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, arg32, arg42, workValue18, flag11
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~The vehicle '"
    arg32 = eventRegistration
    arg42 = "' is inactive."
    arg22 = arg22 .. arg32 .. arg42
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~This occurs to vehicles which aren't used in 1 month."
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~This improves load times and increases performance."
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~To make the vehicle active click the button below."
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~The vehicle will be spawnable from the next restart."
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~g~Activate Vehicle"
    arg32 = ""
    arg42 = {}
    arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue18 = true
    function flag11(arg13, arg23, arg33)
      local vehicle2, cmgCall6, flag12
      if arg33 then
        vehicle2 = TriggerServerEvent
        cmgCall6 = "9b0f552679"
        flag12 = textValue
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9b0f552679".
        vehicle2(cmgCall6, flag12)
        vehicle2 = RageUI
        vehicle2 = vehicle2.CloseAll
        vehicle2()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg42, workValue18, flag11)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
end
textValue2(rageUiCall, rageUiCall2, textValue3, rageUiCall3)
textValue2 = RegisterNetEvent
rageUiCall = "a4cc02a91b"
-- Beginner: this function handles network event "a4cc02a91b".
function rageUiCall2(arg1, arg2)
  dataTable10.income = arg1
  dataTable10.outcome = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a4cc02a91b".
textValue2(rageUiCall, rageUiCall2)
textValue2 = RegisterNetEvent
rageUiCall = "41a06d8fbd"
-- Beginner: this function handles network event "41a06d8fbd".
function rageUiCall2(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  eventRegistration = arg1
  textValue = arg2
  arg3 = RageUI
  arg3 = arg3.Visible
  arg4 = RMenu
  arg5 = arg4
  arg4 = arg4.Get
  arg6 = "garages"
  arg7 = "inactivity"
  -- Beginner: result below is menu.
  arg4 = arg4(arg5, arg6, arg7)
  arg5 = true
  arg3(arg4, arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "41a06d8fbd".
textValue2(rageUiCall, rageUiCall2)
textValue2 = RegisterNetEvent
rageUiCall = "88f392bb4d"
-- Beginner: this function handles network event "88f392bb4d".
function rageUiCall2()
  local arg1, arg2
  arg1 = RageUI
  arg1 = arg1.IsAnyMenuOfTypeVisible
  arg2 = "garages"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.CloseAll
    arg1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "88f392bb4d".
textValue2(rageUiCall, rageUiCall2)
textValue2 = RegisterNetEvent
rageUiCall = "2648b1efcf"
-- Beginner: this function handles network event "2648b1efcf".
function rageUiCall2(arg1)
  local arg2
  dataTable13 = arg1
end
textValue2(rageUiCall, rageUiCall2)
-- Beginner: this function handles network event "2648b1efcf".
function textValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable
  arg2 = "Not Set"
  arg3 = DecorGetInt
  arg4 = arg1
  arg5 = "ac76c9d452"
  arg3 = arg3(arg4, arg5)
  if arg3 > 0 then
    arg4 = tostring
    arg5 = arg3
    arg4 = arg4(arg5)
    arg2 = arg4
  end
  arg4 = GetEntityModel
  arg5 = arg1
  -- Beginner: result below is modelHash.
  arg4 = arg4(arg5)
  arg5 = CMG
  arg5 = arg5.getVehicleIdFromModel
  arg6 = arg4
  arg5 = arg5(arg6)
  if not arg5 then
    arg6 = tostring
    arg7 = arg4
    arg6 = arg6(arg7)
    arg5 = arg6
  end
  arg6 = "Not Set"
  arg7 = DecorGetInt
  iterator2 = arg1
  tableHelper2 = "0a6cf607ed"
  arg7 = arg7(iterator2, tableHelper2)
  if arg7 > 0 then
    iterator2 = tostring
    tableHelper2 = arg7
    iterator2 = iterator2(tableHelper2)
    arg6 = iterator2
  end
  iterator2 = string
  iterator2 = iterator2.format
  tableHelper2 = [[
UserID: %s
Model: %s
UUID: %s]]
  dataTable25 = arg2
  workValue2 = arg5
  dataTable = arg6
  return iterator2(tableHelper2, dataTable25, workValue2, dataTable)
end
rageUiCall = _ENV
rageUiCall2 = "CMG"
rageUiCall = rageUiCall[rageUiCall2]
rageUiCall2 = "registerDevMenuEntityEditor"
rageUiCall = rageUiCall[rageUiCall2]
rageUiCall2 = "Garages"
textValue3 = "vehicle"
rageUiCall3 = textValue2
function rageUiCall4()
  local arg1, arg2
end
rageUiCall(rageUiCall2, textValue3, rageUiCall3, rageUiCall4)
rageUiCall = _ENV
rageUiCall2 = "CMG"
rageUiCall = rageUiCall[rageUiCall2]
rageUiCall2 = "canVehicleBeSold"
function textValue3(arg1)
  local arg2, arg3
  arg2 = numberValue9.whitelisted
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = arg2.blockSelling
    if arg3 then
      arg3 = false
      return arg3
    end
  end
  arg3 = true
  return arg3
end
rageUiCall[rageUiCall2] = textValue3
rageUiCall = _ENV
rageUiCall2 = "CMG"
rageUiCall = rageUiCall[rageUiCall2]
rageUiCall2 = "canVehicleBeRented"
function textValue3(arg1)
  local arg2, arg3
  arg2 = numberValue9.whitelisted
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = arg2.blockRenting
    if arg3 then
      arg3 = false
      return arg3
    end
  end
  arg3 = true
  return arg3
end
rageUiCall[rageUiCall2] = textValue3
rageUiCall = _ENV
rageUiCall2 = "CMG"
rageUiCall = rageUiCall[rageUiCall2]
rageUiCall2 = "isVehicleRemoteControlled"
function textValue3(arg1)
  local arg2
  arg2 = numberValue9.remoteControlledModels
  arg2 = arg2[arg1]
  if not arg2 then
    arg2 = false
  end
  return arg2
end
rageUiCall[rageUiCall2] = textValue3
rageUiCall = _ENV
rageUiCall2 = "CMG"
rageUiCall = rageUiCall[rageUiCall2]
rageUiCall2 = "registerDevMenuState"
rageUiCall = rageUiCall[rageUiCall2]
rageUiCall2 = "Garages"
textValue3 = {}
rageUiCall3 = "drawVehicleModNames"
rageUiCall4 = false
textValue3[rageUiCall3] = rageUiCall4
rageUiCall3 = "drawHeadlightDebug"
rageUiCall4 = false
textValue3[rageUiCall3] = rageUiCall4
rageUiCall3 = "drawNearbyNodes"
rageUiCall4 = false
textValue3[rageUiCall3] = rageUiCall4
rageUiCall = rageUiCall(rageUiCall2, textValue3)
rageUiCall2 = _ENV
textValue3 = "CMG"
rageUiCall2 = rageUiCall2[textValue3]
textValue3 = "registerDevMenuItems"
rageUiCall2 = rageUiCall2[textValue3]
textValue3 = "Garages"
function rageUiCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Upload Current Vehicle Mods"
  arg3 = "Uploads the mods for the vehicle to the server."
  arg4 = true
  function arg5(arg12, arg22, arg32)
    local arg42, workValue18, flag11, flag13
    if arg32 then
      arg42 = CMG
      arg42 = arg42.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      arg42 = arg42()
      if 0 == arg42 then
        workValue18 = notify
        flag11 = "~r~You must be in a vehicle to use this."
        -- Beginner: Show a notification to the player.
        workValue18(flag11)
      else
        workValue18 = rageUiCall8
        flag11 = arg42
        flag13 = false
        workValue18(flag11, flag13)
      end
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, arg4, arg5)
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Draw Vehicle Mod Names"
  arg3 = "Displays current vehicle mods on the screen"
  arg4 = rageUiCall.drawVehicleModNames
  arg5 = {}
  function arg6(arg12, arg22, arg32, arg42)
    rageUiCall.drawVehicleModNames = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Draw Headlight Debug"
  arg3 = "Displays debug information for headlights"
  arg4 = rageUiCall.drawHeadlightDebug
  arg5 = {}
  function arg6(arg12, arg22, arg32, arg42)
    rageUiCall.drawHeadlightDebug = arg42
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Draw Nearby Nodes"
  arg3 = "Draws Nearby Nodes"
  arg4 = rageUiCall.drawNearbyNodes
  arg5 = {}
  function arg6(arg12, arg22, arg32, arg42)
    rageUiCall.drawNearbyNodes = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, arg5, arg6)
end
rageUiCall2(textValue3, rageUiCall3)
rageUiCall2 = _ENV
textValue3 = "CMG"
rageUiCall2 = rageUiCall2[textValue3]
textValue3 = "registerDevMenuThread"
rageUiCall2 = rageUiCall2[textValue3]
textValue3 = "Garages"
function rageUiCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6, workValue13, mathHelper, numberValue7, numberValue8, flag7, flag8, flag9
  arg1 = rageUiCall.drawVehicleModNames
  if arg1 then
    arg1 = CMG
    arg1 = arg1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg1 = arg1()
    if 0 ~= arg1 then
      arg2 = rageUiCall8
      arg3 = arg1
      arg4 = true
      arg2(arg3, arg4)
    end
  end
  arg1 = rageUiCall.drawNearbyNodes
  if arg1 then
    arg1 = CMG
    arg1 = arg1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg1 = arg1()
    arg2 = 1
    arg3 = 50
    arg4 = 1
    for arg5 = arg2, arg3, arg4 do
      arg6 = GetNthClosestVehicleNodeWithHeading
      arg7 = arg1.x
      iterator2 = arg1.y
      tableHelper2 = arg1.z
      dataTable25 = arg5
      workValue2 = nil
      dataTable = 0.0
      iterator = 0
      stringHelper = 1
      workValue7 = 3.0
      stringHelper2 = 0.0
      arg6, arg7, iterator2 = arg6(arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2)
      if arg6 then
        tableHelper2 = vector3
        dataTable25 = 0.0
        workValue2 = 0.0
        dataTable = 0.2
        tableHelper2 = tableHelper2(dataTable25, workValue2, dataTable)
        arg7 = arg7 + tableHelper2
        tableHelper2 = DrawMarker
        dataTable25 = 28
        workValue2 = arg7.x
        dataTable = arg7.y
        iterator = arg7.z
        stringHelper = 0.0
        workValue7 = 0.0
        stringHelper2 = 0.0
        cmgCall3 = 0.0
        tableHelper = 0.0
        workValue9 = 0.0
        heading = 1.5
        workValue10 = 1.5
        cmgCall5 = 1.5
        numberValue5 = 255
        vehicle = 0
        stringHelper3 = 0
        numberValue6 = 100
        workValue13 = false
        mathHelper = false
        numberValue7 = 2
        numberValue8 = false
        flag7 = nil
        flag8 = nil
        flag9 = false
        tableHelper2(dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper, workValue9, heading, workValue10, cmgCall5, numberValue5, vehicle, stringHelper3, numberValue6, workValue13, mathHelper, numberValue7, numberValue8, flag7, flag8, flag9)
        tableHelper2 = CMG
        tableHelper2 = tableHelper2.drawHeadingFromPoint
        dataTable25 = arg7
        workValue2 = math
        workValue2 = workValue2.rad
        dataTable = iterator2
        workValue2 = workValue2(dataTable)
        dataTable = 5.0
        tableHelper2(dataTable25, workValue2, dataTable)
        tableHelper2 = CMG
        tableHelper2 = tableHelper2.DrawText3D
        dataTable25 = arg7
        workValue2 = tostring
        dataTable = arg5
        workValue2 = workValue2(dataTable)
        dataTable = 0.5
        tableHelper2(dataTable25, workValue2, dataTable)
      end
    end
  end
end
rageUiCall2(textValue3, rageUiCall3)
rageUiCall2 = 0
textValue3 = false
function rageUiCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  arg1, arg2 = arg1()
  if 0 == arg1 or not arg2 then
    arg3 = false
    textValue3 = arg3
    return
  end
  arg3 = GetVehicleLightsState
  arg4 = arg1
  arg3, arg4, arg5 = arg3(arg4)
  if 1 == arg5 then
    arg6 = true
    if arg6 then
      goto flow_label_20
      arg5 = arg6 or arg5
    end
  end
  arg5 = false
  ::flow_label_20::
  arg6 = rageUiCall.drawHeadlightDebug
  if arg6 then
    arg6 = CMG
    arg6 = arg6.drawDebugText
    arg7 = "---------- Headlights Fix ----------"
    arg6(arg7)
    arg6 = CMG
    arg6 = arg6.drawDebugText
    arg7 = "Valid: %s On: %s Full Bean: %s"
    iterator2 = arg3
    tableHelper2 = arg4
    dataTable25 = arg5
    arg6(arg7, iterator2, tableHelper2, dataTable25)
    arg6 = CMG
    arg6 = arg6.drawDebugText
    arg7 = "Stored Full Beam: %s"
    iterator2 = textValue3
    arg6(arg7, iterator2)
  end
  arg6 = IsControlJustReleased
  arg7 = 0
  iterator2 = 74
  arg6 = arg6(arg7, iterator2)
  if arg6 then
    arg6 = IsVehicleEngineOn
    arg7 = arg1
    arg6 = arg6(arg7)
    if arg6 then
      arg6 = GetFrameCount
      arg6 = arg6()
      rageUiCall2 = arg6
    end
  end
  arg6 = textValue3
  if arg6 ~= arg5 then
    arg6 = rageUiCall2
    arg7 = GetFrameCount
    arg7 = arg7()
    arg7 = arg7 - 1
    if arg6 == arg7 then
      textValue3 = arg5
      if arg5 then
        arg6 = SetVehicleFullbeam
        arg7 = arg1
        iterator2 = true
        arg6(arg7, iterator2)
        arg6 = SetVehicleLights
        arg7 = arg1
        iterator2 = 3
        arg6(arg7, iterator2)
      end
    end
  end
end
rageUiCall4 = _ENV
cmgCall2 = "CMG"
rageUiCall4 = rageUiCall4[cmgCall2]
rageUiCall4 = rageUiCall4.createThreadOnTick
cmgCall2 = rageUiCall3
textValue5 = "Headlights Fix"
rageUiCall4(cmgCall2, textValue5)
rageUiCall4 = _ENV
cmgCall2 = "Citizen"
rageUiCall4 = rageUiCall4[cmgCall2]
cmgCall2 = "CreateThread"
rageUiCall4 = rageUiCall4[cmgCall2]
function cmgCall2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2
  arg1 = Wait
  arg2 = 1000
  arg1(arg2)
  arg1 = LoadResourceFile
  arg2 = "CMGVeh"
  arg3 = "ci/streamfiles.json"
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg2 = json
    arg2 = arg2.decode
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = {}
    end
    arg3 = pairs
    arg4 = arg2
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7 in arg3, arg4, arg5, arg6 do
      iterator2 = CMG
      iterator2 = iterator2.setStreamFilePreActivatedClient
      tableHelper2 = arg7
      iterator2(tableHelper2)
    end
  end
end
rageUiCall4(cmgCall2)
rageUiCall4 = _ENV
cmgCall2 = "CMG"
rageUiCall4 = rageUiCall4[cmgCall2]
cmgCall2 = "registerStreamFileLoadedCallback"
rageUiCall4 = rageUiCall4[cmgCall2]
function cmgCall2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper
  arg2 = pairs
  arg3 = GetGamePool
  arg4 = "CVehicle"
  arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper = arg3(arg4)
  arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5, arg6, arg7, iterator2, tableHelper2, dataTable25, workValue2, dataTable, iterator, stringHelper, workValue7, stringHelper2, cmgCall3, tableHelper)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    iterator2 = 0
    tableHelper2 = 49
    dataTable25 = 1
    for workValue2 = iterator2, tableHelper2, dataTable25 do
      dataTable = GetVehicleMod
      iterator = arg7
      stringHelper = workValue2
      dataTable = dataTable(iterator, stringHelper)
      if dataTable >= 0 then
        iterator = GetModTextLabel
        stringHelper = arg7
        workValue7 = workValue2
        stringHelper2 = dataTable
        iterator = iterator(stringHelper, workValue7, stringHelper2)
        stringHelper = arg1[iterator]
        if stringHelper then
          stringHelper = SetVehicleMod
          workValue7 = arg7
          stringHelper2 = workValue2
          cmgCall3 = -1
          tableHelper = false
          stringHelper(workValue7, stringHelper2, cmgCall3, tableHelper)
          stringHelper = SetTimeout
          workValue7 = 1000
          function stringHelper2()
            local arg12, arg22, arg32, arg42, workValue18
            arg12 = SetVehicleMod
            arg22 = arg7
            arg32 = workValue2
            arg42 = dataTable
            workValue18 = false
            arg12(arg22, arg32, arg42, workValue18)
          end
          stringHelper(workValue7, stringHelper2)
        end
      end
    end
  end
end
rageUiCall4(cmgCall2)