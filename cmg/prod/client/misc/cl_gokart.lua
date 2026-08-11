--[[
    LEVEL 1 BEGINNER GUIDE — Gokart
    ====================================

    File: cmg/prod/client/misc/cl_gokart.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Gokart feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 27
      * Background threads: 0
      * Always-running loops: 6
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
local flag, flag9, numberValue20, dataTable4, flag11, vector3Builder, flag13, flag16, numberValue22, numberValue24, flag3, flag4, flag5, dataTable, eventHandlerRegistration, cmgCall, dataTable3, numberValue9, numberValue10, numberValue12, numberValue14, cmgCall2, numberValue17, eventRegistration, textValue, workValue3
flag = false
flag9 = false
numberValue20 = 0
dataTable4 = {}
flag11 = -1016.9984741211
vector3Builder = -3493.4174804688
flag13 = 14.143417358398
flag16 = 58.0
dataTable4[1] = flag11
dataTable4[2] = vector3Builder
dataTable4[3] = flag13
dataTable4[4] = flag16
flag11 = false
vector3Builder = vector3
flag13 = -1025.3901367188
flag16 = -3474.9365234375
numberValue22 = 14.229237937927
vector3Builder = vector3Builder(flag13, flag16, numberValue22)
flag13 = false
flag16 = false
numberValue22 = 1
numberValue24 = 0
flag3 = false
flag4 = false
flag5 = false
dataTable = {}
eventHandlerRegistration = {}
cmgCall = -1058.34765625
dataTable3 = -3473.3583984375
numberValue9 = 12.327661514282
eventHandlerRegistration[1] = cmgCall
eventHandlerRegistration[2] = dataTable3
eventHandlerRegistration[3] = numberValue9
cmgCall = {}
dataTable3 = -1035.6046142578
numberValue9 = -3499.1516113281
numberValue10 = 12.330018043518
cmgCall[1] = dataTable3
cmgCall[2] = numberValue9
cmgCall[3] = numberValue10
dataTable3 = {}
numberValue9 = -1074.3129882813
numberValue10 = -3446.5241699219
numberValue12 = 12.332399368286
dataTable3[1] = numberValue9
dataTable3[2] = numberValue10
dataTable3[3] = numberValue12
numberValue9 = {}
numberValue10 = -1118.0103759766
numberValue12 = -3510.3559570313
numberValue14 = 12.150929450989
numberValue9[1] = numberValue10
numberValue9[2] = numberValue12
numberValue9[3] = numberValue14
numberValue10 = {}
numberValue12 = -1077.2532958984
numberValue14 = -3523.8186035156
cmgCall2 = 12.316527366638
numberValue10[1] = numberValue12
numberValue10[2] = numberValue14
numberValue10[3] = cmgCall2
numberValue12 = {}
numberValue14 = -1059.4982910156
cmgCall2 = -3534.212890625
numberValue17 = 18.846857070923
numberValue12[1] = numberValue14
numberValue12[2] = cmgCall2
numberValue12[3] = numberValue17
numberValue14 = {}
cmgCall2 = -1026.7734375
numberValue17 = -3489.9467773438
eventRegistration = 12.344030380249
numberValue14[1] = cmgCall2
numberValue14[2] = numberValue17
numberValue14[3] = eventRegistration
dataTable[1] = eventHandlerRegistration
dataTable[2] = cmgCall
dataTable[3] = dataTable3
dataTable[4] = numberValue9
dataTable[5] = numberValue10
dataTable[6] = numberValue12
dataTable[7] = numberValue14
eventHandlerRegistration = AddEventHandler
cmgCall = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1, arg2) ===
function dataTable3(arg1, arg2)
  local cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25, numberValue, numberValue3, numberValue5, dataTable2, numberValue8, flag6, flag7, flag8
  if arg2 then
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.createDynamicPed
    stringHelper = 2007797722
    mathHelper = vector3
    cmgCall4 = -1026.2969970703
    flag14 = -3476.4011230469
    numberValue21 = 14.329237937927
    mathHelper = mathHelper(cmgCall4, flag14, numberValue21)
    cmgCall4 = 0.0
    flag14 = true
    numberValue21 = nil
    numberValue23 = nil
    numberValue25 = 75.0
    numberValue = nil

    -- === HELPER FUNCTION (decompiler name: numberValue3; parameters: arg12) ===
    function numberValue3(arg12)
      local workValue, workValue4, flag10
      workValue = FreezeEntityPosition
      workValue4 = arg12
      flag10 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      workValue(workValue4, flag10)
      workValue = SetEntityInvincible
      workValue4 = arg12
      flag10 = true
      workValue(workValue4, flag10)
      workValue = SetBlockingOfNonTemporaryEvents
      workValue4 = arg12
      flag10 = true
      workValue(workValue4, flag10)
    end
    cmgCall3(stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25, numberValue, numberValue3)
    cmgCall3 = tCMG
    cmgCall3 = cmgCall3.addMarker
    stringHelper = vector3Builder.x
    mathHelper = vector3Builder.y
    cmgCall4 = vector3Builder.z
    flag14 = 0.7
    numberValue21 = 0.7
    numberValue23 = 0.5
    numberValue25 = 0
    numberValue = 125
    numberValue3 = 255
    numberValue5 = 125
    dataTable2 = 50
    numberValue8 = 20
    flag6 = false
    flag7 = false
    flag8 = true
    -- Beginner: Create a world marker.
    cmgCall3(stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25, numberValue, numberValue3, numberValue5, dataTable2, numberValue8, flag6, flag7, flag8)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(cmgCall, dataTable3)
eventHandlerRegistration = AddEventHandler
cmgCall = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1, arg2) ===
function dataTable3(arg1, arg2)
  local cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25, numberValue, numberValue3, numberValue5, dataTable2
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
    function cmgCall3()
      local arg12, workValue
      arg12 = flag
      if not arg12 then
        arg12 = drawNativeNotification
        workValue = "Press ~INPUT_PICKUP~ to pay \194\1635,000 and compete in a race"
        -- Beginner: Show a GTA-style notification/help prompt.
        arg12(workValue)
      else
        arg12 = drawNativeNotification
        workValue = "~r~Race in progress, come back later!"
        arg12(workValue)
      end
    end

    -- === HELPER FUNCTION: stringHelper() ===
    function stringHelper()
      local arg12, workValue
    end

    -- === HELPER FUNCTION: mathHelper() ===
    function mathHelper()
      local arg12, workValue, workValue4
      arg12 = IsControlJustPressed
      workValue = 0
      workValue4 = 38
      arg12 = arg12(workValue, workValue4)
      if arg12 then
        arg12 = flag13
        if not arg12 then
          arg12 = TriggerServerEvent
          workValue = "9ff5ff4d28"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9ff5ff4d28".
          arg12(workValue)
        else
          arg12 = tCMG
          arg12 = arg12.notify
          workValue = "~r~Please wait up to 60 seconds for us to refuel your kart."
          -- Beginner: Show a notification to the player.
          arg12(workValue)
        end
      end
    end
    cmgCall4 = CMG
    cmgCall4 = cmgCall4.createArea
    flag14 = "gokart"
    numberValue21 = vector3Builder
    numberValue23 = 1.5
    numberValue25 = 6
    numberValue = cmgCall3
    numberValue3 = stringHelper
    numberValue5 = mathHelper
    dataTable2 = {}
    -- Beginner: Create an interaction area around a world position.
    cmgCall4(flag14, numberValue21, numberValue23, numberValue25, numberValue, numberValue3, numberValue5, dataTable2)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(cmgCall, dataTable3)
eventHandlerRegistration = 55
cmgCall = 30
dataTable3 = false
numberValue9 = 0
numberValue10 = Citizen
numberValue10 = numberValue10.CreateThread

-- === HELPER FUNCTION (decompiler name: numberValue12; parameters: none) ===
function numberValue12()
  local arg1, arg2
  while true do
    arg1 = flag
    if arg1 then
      arg1 = dataTable3
      if arg1 then
        arg1 = cmgCall
        arg1 = arg1 - 1
        cmgCall = arg1
        arg1 = cmgCall
        if arg1 < 1 then
          arg1 = false
          dataTable3 = arg1
        end
      end
    end
    arg1 = flag4
    if arg1 then
      arg1 = numberValue9
      arg1 = arg1 - 1
      numberValue9 = arg1
    end
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
numberValue10(numberValue12)

-- === HELPER FUNCTION (decompiler name: numberValue10; parameters: arg1) ===
function numberValue10(arg1)
  local arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25
  arg2 = tonumber
  cmgCall3 = arg1
  arg2 = arg2(cmgCall3)
  if arg2 <= 0 then
    cmgCall3 = "00:00:00"
    return cmgCall3
  else
    cmgCall3 = string
    cmgCall3 = cmgCall3.format
    stringHelper = "%02.f"
    mathHelper = math
    mathHelper = mathHelper.floor
    cmgCall4 = arg2 / 3600
    mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25 = mathHelper(cmgCall4)
    cmgCall3 = cmgCall3(stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25)
    stringHelper = string
    stringHelper = stringHelper.format
    mathHelper = "%02.f"
    cmgCall4 = math
    cmgCall4 = cmgCall4.floor
    flag14 = arg2 / 60
    numberValue21 = cmgCall3 * 60
    flag14 = flag14 - numberValue21
    cmgCall4, flag14, numberValue21, numberValue23, numberValue25 = cmgCall4(flag14)
    stringHelper = stringHelper(mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25)
    mathHelper = string
    mathHelper = mathHelper.format
    cmgCall4 = "%02.f"
    flag14 = math
    flag14 = flag14.floor
    numberValue21 = cmgCall3 * 3600
    numberValue21 = arg2 - numberValue21
    numberValue23 = stringHelper * 60
    numberValue21 = numberValue21 - numberValue23
    flag14, numberValue21, numberValue23, numberValue25 = flag14(numberValue21)
    mathHelper = mathHelper(cmgCall4, flag14, numberValue21, numberValue23, numberValue25)
    cmgCall4 = cmgCall3
    flag14 = ":"
    numberValue21 = stringHelper
    numberValue23 = ":"
    numberValue25 = mathHelper
    cmgCall4 = cmgCall4 .. flag14 .. numberValue21 .. numberValue23 .. numberValue25
    return cmgCall4
  end
end
numberValue12 = CMG
numberValue12 = numberValue12.registerHudTimerBarProvider
numberValue14 = "goKart"

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, cmgCall3, stringHelper, mathHelper
  arg2 = flag16
  if arg2 then
    arg2 = arg1.push
    cmgCall3 = "LAP:"
    stringHelper = numberValue22
    mathHelper = "/3"
    stringHelper = stringHelper .. mathHelper
    arg2(cmgCall3, stringHelper)
    arg2 = arg1.push
    cmgCall3 = "TIME:"
    stringHelper = numberValue10
    mathHelper = numberValue24
    stringHelper, mathHelper = stringHelper(mathHelper)
    arg2(cmgCall3, stringHelper, mathHelper)
  end
  arg2 = flag4
  if arg2 then
    arg2 = arg1.push
    cmgCall3 = "ENDING IN:"
    stringHelper = tostring
    mathHelper = numberValue9
    stringHelper, mathHelper = stringHelper(mathHelper)
    arg2(cmgCall3, stringHelper, mathHelper)
  end
end
numberValue12(numberValue14, cmgCall2)
numberValue12 = false

-- === HELPER FUNCTION (decompiler name: numberValue14; parameters: none) ===
function numberValue14()
  local arg1, arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25, numberValue, numberValue3, numberValue5
  arg1 = flag9
  if arg1 then
    arg1 = CMG
    arg1 = arg1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = drawNativeNotification
    cmgCall3 = "Press ~INPUT_CELLPHONE_LEFT~ or ~INPUT_CELLPHONE_RIGHT~ to change colour!"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg2(cmgCall3)
    arg2 = IsControlJustPressed
    cmgCall3 = 0
    stringHelper = 174
    arg2 = arg2(cmgCall3, stringHelper)
    if arg2 then
      arg2 = eventHandlerRegistration
      arg2 = arg2 - 1
      eventHandlerRegistration = arg2
      arg2 = eventHandlerRegistration
      if arg2 < 29 then
        arg2 = 140
        eventHandlerRegistration = arg2
      end
      arg2 = SetVehicleColours
      cmgCall3 = GetVehiclePedIsIn
      stringHelper = arg1
      mathHelper = false
      -- Beginner: result below is currentVehicle.
      cmgCall3 = cmgCall3(stringHelper, mathHelper)
      stringHelper = eventHandlerRegistration
      mathHelper = 0
      arg2(cmgCall3, stringHelper, mathHelper)
    end
    arg2 = IsControlJustPressed
    cmgCall3 = 0
    stringHelper = 175
    arg2 = arg2(cmgCall3, stringHelper)
    if arg2 then
      arg2 = eventHandlerRegistration
      arg2 = arg2 + 1
      eventHandlerRegistration = arg2
      arg2 = eventHandlerRegistration
      cmgCall3 = 140
      if arg2 > cmgCall3 then
        arg2 = 29
        eventHandlerRegistration = arg2
      end
      arg2 = SetVehicleColours
      cmgCall3 = GetVehiclePedIsIn
      stringHelper = arg1
      mathHelper = false
      -- Beginner: result below is currentVehicle.
      cmgCall3 = cmgCall3(stringHelper, mathHelper)
      stringHelper = eventHandlerRegistration
      mathHelper = 0
      arg2(cmgCall3, stringHelper, mathHelper)
    end
  end
  arg1 = flag11
  if arg1 then
    arg1 = GetVehicleEngineHealth
    arg2 = numberValue20
    arg1 = arg1(arg2)
    arg2 = 150
    if arg1 <= arg2 then
      arg1 = numberValue12
      if not arg1 then
        arg1 = true
        numberValue12 = arg1
        arg1 = Citizen
        arg1 = arg1.CreateThread

        -- === HELPER FUNCTION: arg2() ===
        function arg2()
          local arg12, workValue, workValue4, flag10, flag12, workValue5, flag15, flag17, flag18, stringHelper2
          arg12 = CMG
          arg12 = arg12.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          arg12 = arg12()
          workValue = DoScreenFadeOut
          workValue4 = 2000
          workValue(workValue4)
          workValue = NetworkFadeOutEntity
          workValue4 = arg12
          flag10 = true
          flag12 = false
          workValue(workValue4, flag10, flag12)
          workValue = Wait
          workValue4 = 2000
          workValue(workValue4)
          workValue = SetEntityCoords
          workValue4 = numberValue20
          flag10 = dataTable4
          flag10 = flag10[1]
          flag12 = dataTable4
          flag12 = flag12[2]
          workValue5 = dataTable4
          workValue5 = workValue5[3]
          flag15 = false
          flag17 = false
          flag18 = false
          stringHelper2 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          workValue(workValue4, flag10, flag12, workValue5, flag15, flag17, flag18, stringHelper2)
          workValue = SetEntityHeading
          workValue4 = numberValue20
          flag10 = dataTable4
          flag10 = flag10[4]
          -- Beginner: Change the direction an entity is facing.
          workValue(workValue4, flag10)
          workValue = SetEntityHeading
          workValue4 = arg12
          flag10 = dataTable4
          flag10 = flag10[4]
          workValue(workValue4, flag10)
          workValue = SetVehicleEngineHealth
          workValue4 = numberValue20
          flag10 = 1000.0
          workValue(workValue4, flag10)
          workValue = NetworkFadeInEntity
          workValue4 = arg12
          flag10 = false
          workValue(workValue4, flag10)
          workValue = DoScreenFadeIn
          workValue4 = 2000
          workValue(workValue4)
          workValue = false
          numberValue12 = workValue
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        arg1(arg2)
      end
    end
    arg1 = DisableControlAction
    arg2 = 0
    cmgCall3 = 75
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
    arg1 = DisableControlAction
    arg2 = 0
    cmgCall3 = 49
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
  end
  arg1 = flag
  if arg1 then
    arg1 = cmgCall
    if arg1 > 0 then
      arg1 = DrawAdvancedText
      arg2 = 0.6
      cmgCall3 = 0.88
      stringHelper = 0.005
      mathHelper = 0.0028
      cmgCall4 = 0.64
      flag14 = "Race starting in "
      numberValue21 = cmgCall
      numberValue23 = "  seconds!"
      flag14 = flag14 .. numberValue21 .. numberValue23
      numberValue21 = 36
      numberValue23 = 146
      numberValue25 = 36
      numberValue = 255
      numberValue3 = 7
      numberValue5 = 0
      arg1(arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25, numberValue, numberValue3, numberValue5)
    end
  end
  arg1 = CMG
  arg1 = arg1.setHudTimerBarProviderActive
  arg2 = "goKart"
  cmgCall3 = flag16
  if not cmgCall3 then
    cmgCall3 = flag4
  end
  arg1(arg2, cmgCall3)
  arg1 = flag5
  if arg1 then
    arg1 = DisableAllControlActions
    arg2 = 0
    arg1(arg2)
    arg1 = EnableControlAction
    arg2 = 0
    cmgCall3 = 0
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
    arg1 = EnableControlAction
    arg2 = 0
    cmgCall3 = 1
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
    arg1 = EnableControlAction
    arg2 = 0
    cmgCall3 = 2
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
    arg1 = EnableControlAction
    arg2 = 0
    cmgCall3 = 3
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
    arg1 = EnableControlAction
    arg2 = 0
    cmgCall3 = 4
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
    arg1 = EnableControlAction
    arg2 = 0
    cmgCall3 = 5
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
    arg1 = EnableControlAction
    arg2 = 0
    cmgCall3 = 6
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
    arg1 = EnableControlAction
    arg2 = 0
    cmgCall3 = 7
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
    arg1 = EnableControlAction
    arg2 = 0
    cmgCall3 = 245
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
    arg1 = EnableControlAction
    arg2 = 0
    cmgCall3 = 246
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
    arg1 = EnableControlAction
    arg2 = 0
    cmgCall3 = 249
    stringHelper = true
    arg1(arg2, cmgCall3, stringHelper)
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
numberValue17 = numberValue14
eventRegistration = "Go Karting"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(numberValue17, eventRegistration)
cmgCall2 = RegisterNetEvent
numberValue17 = "d627b794a4"
-- Beginner: this function handles network event "d627b794a4".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25
  cmgCall = arg1
  arg2 = true
  flag = arg2
  arg2 = true
  dataTable3 = arg2
  arg2 = CMG
  arg2 = arg2.loadModel
  cmgCall3 = -1913161790
  arg2 = arg2(cmgCall3)
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.requestEntitySpawn
  stringHelper = "gokart"
  cmgCall3(stringHelper)
  cmgCall3 = CreateVehicle
  stringHelper = arg2
  mathHelper = -1002.2916870117
  cmgCall4 = -3488.869140625
  flag14 = 14.22924041748
  numberValue21 = 0.0
  numberValue23 = true
  numberValue25 = false
  -- Beginner: result below is vehicleEntity.
  cmgCall3 = cmgCall3(stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25)
  numberValue20 = cmgCall3
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.initLocalVehicle
  stringHelper = numberValue20
  cmgCall3(stringHelper)
  cmgCall3 = TaskWarpPedIntoVehicle
  stringHelper = CMG
  stringHelper = stringHelper.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stringHelper = stringHelper()
  mathHelper = numberValue20
  cmgCall4 = -1
  cmgCall3(stringHelper, mathHelper, cmgCall4)
  cmgCall3 = FreezeEntityPosition
  stringHelper = numberValue20
  mathHelper = true
  -- Beginner: Freeze or unfreeze an entity in place.
  cmgCall3(stringHelper, mathHelper)
  cmgCall3 = FreezeEntityPosition
  stringHelper = CMG
  stringHelper = stringHelper.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stringHelper = stringHelper()
  mathHelper = true
  cmgCall3(stringHelper, mathHelper)
  cmgCall3 = true
  flag9 = cmgCall3
  cmgCall3 = TriggerServerEvent
  stringHelper = "1da4cc4327"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1da4cc4327".
  cmgCall3(stringHelper)
  cmgCall3 = SetModelAsNoLongerNeeded
  stringHelper = arg2
  cmgCall3(stringHelper)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d627b794a4".
cmgCall2(numberValue17, eventRegistration)
cmgCall2 = RegisterNetEvent
numberValue17 = "d23cc66588"
-- Beginner: this function handles network event "d23cc66588".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25
  arg2 = SetEntityCoords
  cmgCall3 = numberValue20
  stringHelper = arg1[1]
  mathHelper = arg1[2]
  cmgCall4 = arg1[3]
  flag14 = false
  numberValue21 = false
  numberValue23 = false
  numberValue25 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg2(cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25)
  arg2 = SetEntityHeading
  cmgCall3 = numberValue20
  stringHelper = arg1[4]
  -- Beginner: Change the direction an entity is facing.
  arg2(cmgCall3, stringHelper)
  arg2 = SetEntityHeading
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall3 = cmgCall3()
  stringHelper = arg1[4]
  arg2(cmgCall3, stringHelper)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d23cc66588".
cmgCall2(numberValue17, eventRegistration)

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local arg12, workValue
    while true do
      arg12 = flag16
      if not arg12 then
        break
      end
      arg12 = numberValue24
      arg12 = arg12 + 1
      numberValue24 = arg12
      arg12 = Wait
      workValue = 1000
      arg12(workValue)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: numberValue17; parameters: none) ===
function numberValue17()
  local arg1, arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25, numberValue, numberValue3, numberValue5, dataTable2, numberValue8, flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19
  arg1 = true
  flag16 = arg1
  arg1 = 0
  numberValue24 = arg1
  arg1 = cmgCall2
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg1()
  arg1 = FreezeEntityPosition
  arg2 = numberValue20
  cmgCall3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg1(arg2, cmgCall3)
  arg1 = FreezeEntityPosition
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  cmgCall3 = false
  arg1(arg2, cmgCall3)
  arg1 = 1
  arg2 = 3
  cmgCall3 = 1
  for stringHelper = arg1, arg2, cmgCall3 do
    numberValue22 = stringHelper
    mathHelper = pairs
    cmgCall4 = dataTable
    mathHelper, cmgCall4, flag14, numberValue21 = mathHelper(cmgCall4)
    for numberValue23, numberValue25 in mathHelper, cmgCall4, flag14, numberValue21 do
      numberValue3 = numberValue23 + 1
      numberValue = dataTable
      numberValue = numberValue[numberValue3]
      if nil ~= numberValue then
        numberValue = CreateCheckpoint
        numberValue3 = 1
        numberValue5 = numberValue25[1]
        dataTable2 = numberValue25[2]
        numberValue8 = numberValue25[3]
        flag7 = numberValue23 + 1
        flag6 = dataTable
        flag6 = flag6[flag7]
        flag6 = flag6[1]
        flag8 = numberValue23 + 1
        flag7 = dataTable
        flag7 = flag7[flag8]
        flag7 = flag7[2]
        numberValue11 = numberValue23 + 1
        flag8 = dataTable
        flag8 = flag8[numberValue11]
        flag8 = flag8[3]
        numberValue11 = 5.0
        numberValue13 = 36
        numberValue15 = 146
        numberValue16 = 36
        numberValue18 = 255
        numberValue19 = 0
        -- Beginner: result below is checkpointHandle.
        numberValue = numberValue(numberValue3, numberValue5, dataTable2, numberValue8, flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19)
        numberValue3 = GetEntityCoords
        numberValue5 = CMG
        numberValue5 = numberValue5.getPlayerPed
        numberValue5, dataTable2, numberValue8, flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19 = numberValue5()
        -- Beginner: result below is entityCoords.
        numberValue3 = numberValue3(numberValue5, dataTable2, numberValue8, flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19)
        numberValue5 = vector3
        dataTable2 = numberValue25[1]
        numberValue8 = numberValue25[2]
        flag6 = numberValue25[3]
        numberValue5 = numberValue5(dataTable2, numberValue8, flag6)
        numberValue3 = numberValue3 - numberValue5
        numberValue3 = #numberValue3
        while numberValue3 > 5 do
          numberValue5 = GetEntityCoords
          dataTable2 = CMG
          dataTable2 = dataTable2.getPlayerPed
          dataTable2, numberValue8, flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19 = dataTable2()
          -- Beginner: result below is entityCoords.
          numberValue5 = numberValue5(dataTable2, numberValue8, flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19)
          dataTable2 = vector3
          numberValue8 = numberValue25[1]
          flag6 = numberValue25[2]
          flag7 = numberValue25[3]
          dataTable2 = dataTable2(numberValue8, flag6, flag7)
          numberValue5 = numberValue5 - dataTable2
          numberValue3 = #numberValue5
          numberValue5 = Wait
          dataTable2 = 100
          numberValue5(dataTable2)
          numberValue5 = flag3
          if numberValue5 then
            numberValue5 = false
            flag3 = numberValue5
            numberValue5 = DeleteCheckpoint
            dataTable2 = numberValue
            numberValue5(dataTable2)
            return
          end
        end
        numberValue5 = DeleteCheckpoint
        dataTable2 = numberValue
        numberValue5(dataTable2)
      else
        numberValue = CreateCheckpoint
        numberValue3 = 1
        numberValue5 = numberValue25[1]
        dataTable2 = numberValue25[2]
        numberValue8 = numberValue25[3]
        flag6 = dataTable
        flag6 = flag6[1]
        flag6 = flag6[1]
        flag7 = dataTable
        flag7 = flag7[1]
        flag7 = flag7[2]
        flag8 = dataTable
        flag8 = flag8[1]
        flag8 = flag8[3]
        numberValue11 = 5.0
        numberValue13 = 36
        numberValue15 = 146
        numberValue16 = 36
        numberValue18 = 255
        numberValue19 = 0
        -- Beginner: result below is checkpointHandle.
        numberValue = numberValue(numberValue3, numberValue5, dataTable2, numberValue8, flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19)
        numberValue3 = GetEntityCoords
        numberValue5 = CMG
        numberValue5 = numberValue5.getPlayerPed
        numberValue5, dataTable2, numberValue8, flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19 = numberValue5()
        -- Beginner: result below is entityCoords.
        numberValue3 = numberValue3(numberValue5, dataTable2, numberValue8, flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19)
        numberValue5 = vector3
        dataTable2 = numberValue25[1]
        numberValue8 = numberValue25[2]
        flag6 = numberValue25[3]
        numberValue5 = numberValue5(dataTable2, numberValue8, flag6)
        numberValue3 = numberValue3 - numberValue5
        numberValue3 = #numberValue3
        while numberValue3 > 5 do
          numberValue5 = GetEntityCoords
          dataTable2 = CMG
          dataTable2 = dataTable2.getPlayerPed
          dataTable2, numberValue8, flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19 = dataTable2()
          -- Beginner: result below is entityCoords.
          numberValue5 = numberValue5(dataTable2, numberValue8, flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19)
          dataTable2 = vector3
          numberValue8 = numberValue25[1]
          flag6 = numberValue25[2]
          flag7 = numberValue25[3]
          dataTable2 = dataTable2(numberValue8, flag6, flag7)
          numberValue5 = numberValue5 - dataTable2
          numberValue3 = #numberValue5
          numberValue5 = Wait
          dataTable2 = 100
          numberValue5(dataTable2)
          numberValue5 = flag3
          if numberValue5 then
            numberValue5 = false
            flag3 = numberValue5
            numberValue5 = DeleteCheckpoint
            dataTable2 = numberValue
            numberValue5(dataTable2)
            return
          end
        end
        numberValue5 = DeleteCheckpoint
        dataTable2 = numberValue
        numberValue5(dataTable2)
      end
      numberValue = {}
      numberValue3 = numberValue25[1]
      numberValue5 = numberValue25[2]
      dataTable2 = numberValue25[3]
      numberValue8 = GetEntityHeading
      flag6 = CMG
      flag6 = flag6.getPlayerPed
      flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19 = flag6()
      numberValue8, flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19 = numberValue8(flag6, flag7, flag8, numberValue11, numberValue13, numberValue15, numberValue16, numberValue18, numberValue19)
      numberValue[1] = numberValue3
      numberValue[2] = numberValue5
      numberValue[3] = dataTable2
      numberValue[4] = numberValue8
      numberValue[5] = flag6
      numberValue[6] = flag7
      numberValue[7] = flag8
      numberValue[8] = numberValue11
      numberValue[9] = numberValue13
      numberValue[10] = numberValue15
      numberValue[11] = numberValue16
      numberValue[12] = numberValue18
      numberValue[13] = numberValue19
      dataTable4 = numberValue
      numberValue = SetVehicleEngineHealth
      numberValue3 = numberValue20
      numberValue5 = GetVehicleEngineHealth
      dataTable2 = numberValue20
      numberValue5 = numberValue5(dataTable2)
      numberValue5 = numberValue5 + 150.0
      numberValue(numberValue3, numberValue5)
    end
    if 3 ~= stringHelper then
      mathHelper = Citizen
      mathHelper = mathHelper.CreateThread

      -- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
      function cmgCall4()
        local arg12, workValue, workValue4, flag10, flag12, workValue5, flag15, flag17, flag18
        arg12 = true
        workValue = SetTimeout
        workValue4 = 1000

        -- === HELPER FUNCTION (decompiler name: flag10; parameters: none) ===
        function flag10()
          local flag2, workValue2
          flag2 = false
          arg12 = flag2
        end
        workValue(workValue4, flag10)
        workValue = RequestScaleformMovie
        workValue4 = "mp_big_message_freemode"
        -- Beginner: result below is scaleformHandle.
        workValue = workValue(workValue4)
        while true do
          workValue4 = HasScaleformMovieLoaded
          flag10 = workValue
          workValue4 = workValue4(flag10)
          if workValue4 then
            break
          end
          workValue4 = Citizen
          workValue4 = workValue4.Wait
          flag10 = 0
          workValue4(flag10)
        end
        workValue4 = BeginScaleformMovieMethod
        flag10 = workValue
        flag12 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        workValue4(flag10, flag12)
        workValue4 = _ENV
        flag10 = "ScaleformMovieMethodAddParamTextureNameString"
        workValue4 = workValue4[flag10]
        flag10 = "~g~LAP "
        flag12 = tostring
        workValue5 = stringHelper
        workValue5 = workValue5 + 1
        flag12 = flag12(workValue5)
        workValue5 = "/3 "
        flag10 = flag10 .. flag12 .. workValue5
        workValue4(flag10)
        workValue4 = EndScaleformMovieMethod
        workValue4()
        while arg12 do
          workValue4 = Citizen
          workValue4 = workValue4.Wait
          flag10 = 0
          workValue4(flag10)
          workValue4 = DrawScaleformMovieFullscreen
          flag10 = workValue
          flag12 = 255
          workValue5 = 255
          flag15 = 255
          flag17 = 255
          flag18 = 0
          workValue4(flag10, flag12, workValue5, flag15, flag17, flag18)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      mathHelper(cmgCall4)
    end
  end
  arg1 = false
  flag16 = arg1
  arg1 = TriggerServerEvent
  arg2 = "ed2bdda7a0"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ed2bdda7a0".
  arg1(arg2)
end
eventRegistration = RegisterNetEvent
textValue = "efbc8f6d54"
-- Beginner: this function handles network event "efbc8f6d54".

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2, cmgCall3, stringHelper, mathHelper
  arg1 = false
  flag9 = arg1
  arg1 = PlaySoundFrontend
  arg2 = -1
  cmgCall3 = "5s"
  stringHelper = "MP_MISSION_COUNTDOWN_SOUNDSET"
  mathHelper = false
  arg1(arg2, cmgCall3, stringHelper, mathHelper)
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local arg12, workValue, workValue4, flag10, flag12, workValue5, flag15, flag17, flag18, stringHelper2, numberValue2, numberValue4, numberValue6, numberValue7
    arg12 = 5
    workValue = 1
    workValue4 = arg12
    flag10 = 1
    for flag12 = workValue, workValue4, flag10 do
      workValue5 = true
      flag15 = SetTimeout
      flag17 = 1000

      -- === HELPER FUNCTION (decompiler name: flag18; parameters: none) ===
      function flag18()
        local flag2, workValue2
        flag2 = false
        workValue5 = flag2
      end
      flag15(flag17, flag18)
      flag15 = RequestScaleformMovie
      flag17 = "mp_big_message_freemode"
      -- Beginner: result below is scaleformHandle.
      flag15 = flag15(flag17)
      while true do
        flag17 = HasScaleformMovieLoaded
        flag18 = flag15
        flag17 = flag17(flag18)
        if flag17 then
          break
        end
        flag17 = Citizen
        flag17 = flag17.Wait
        flag18 = 0
        flag17(flag18)
      end
      flag17 = BeginScaleformMovieMethod
      flag18 = flag15
      stringHelper2 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      flag17(flag18, stringHelper2)
      flag17 = 5
      flag17 = flag17 - flag12
      if 0 == flag17 then
        flag17 = _ENV
        flag18 = "ScaleformMovieMethodAddParamTextureNameString"
        flag17 = flag17[flag18]
        flag18 = "~g~GO!"
        flag17(flag18)
      else
        flag17 = _ENV
        flag18 = "ScaleformMovieMethodAddParamTextureNameString"
        flag17 = flag17[flag18]
        flag18 = "~g~"
        stringHelper2 = tostring
        numberValue2 = 5
        numberValue2 = numberValue2 - flag12
        stringHelper2 = stringHelper2(numberValue2)
        flag18 = flag18 .. stringHelper2
        flag17(flag18)
      end
      flag17 = EndScaleformMovieMethod
      flag17()
      while workValue5 do
        flag17 = Citizen
        flag17 = flag17.Wait
        flag18 = 0
        flag17(flag18)
        flag17 = DrawScaleformMovieFullscreen
        flag18 = flag15
        stringHelper2 = 255
        numberValue2 = 255
        numberValue4 = 255
        numberValue6 = 255
        numberValue7 = 0
        flag17(flag18, stringHelper2, numberValue2, numberValue4, numberValue6, numberValue7)
      end
    end
    workValue = true
    flag11 = workValue
    workValue = numberValue17
    workValue()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "efbc8f6d54".
eventRegistration(textValue, workValue3)
eventRegistration = RegisterNetEvent
textValue = "d99a1e4b69"
-- Beginner: this function handles network event "d99a1e4b69".

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25, numberValue, numberValue3
  arg1 = true
  flag5 = arg1
  arg1 = SetVehicleBrake
  arg2 = numberValue20
  cmgCall3 = true
  arg1(arg2, cmgCall3)
  arg1 = Wait
  arg2 = 5000
  arg1(arg2)
  arg1 = TaskLeaveVehicle
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  cmgCall3 = numberValue20
  stringHelper = 0
  arg1(arg2, cmgCall3, stringHelper)
  arg1 = Wait
  arg2 = 500
  arg1(arg2)
  arg1 = RequestAnimDict
  arg2 = "anim@arena@celeb@flat@solo@no_props@"
  arg1(arg2)
  while true do
    arg1 = HasAnimDictLoaded
    arg2 = "anim@arena@celeb@flat@solo@no_props@"
    arg1 = arg1(arg2)
    if arg1 then
      break
    end
    arg1 = RequestAnimDict
    arg2 = "anim@arena@celeb@flat@solo@no_props@"
    arg1(arg2)
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = TaskPlayAnim
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  cmgCall3 = "anim@arena@celeb@flat@solo@no_props@"
  stringHelper = "flip_a_player_a"
  mathHelper = 8.0
  cmgCall4 = 8.0
  flag14 = -1
  numberValue21 = 1
  numberValue23 = 1.0
  numberValue25 = false
  numberValue = false
  numberValue3 = false
  -- Beginner: Play an animation on a ped.
  arg1(arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25, numberValue, numberValue3)
  arg1 = RemoveAnimDict
  arg2 = "anim@arena@celeb@flat@solo@no_props@"
  arg1(arg2)
  arg1 = SetVehicleBrake
  arg2 = numberValue20
  cmgCall3 = false
  arg1(arg2, cmgCall3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d99a1e4b69".
eventRegistration(textValue, workValue3)
eventRegistration = RegisterNetEvent
textValue = "5be4e0edba"
-- Beginner: this function handles network event "5be4e0edba".

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25, numberValue, numberValue3
  arg1 = true
  flag5 = arg1
  arg1 = SetVehicleBrake
  arg2 = numberValue20
  cmgCall3 = true
  arg1(arg2, cmgCall3)
  arg1 = Wait
  arg2 = 5000
  arg1(arg2)
  arg1 = TaskLeaveVehicle
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  cmgCall3 = numberValue20
  stringHelper = 0
  arg1(arg2, cmgCall3, stringHelper)
  arg1 = Wait
  arg2 = 500
  arg1(arg2)
  arg1 = RequestAnimDict
  arg2 = "anim@arena@celeb@podium@no_prop@"
  arg1(arg2)
  while true do
    arg1 = HasAnimDictLoaded
    arg2 = "anim@arena@celeb@podium@no_prop@"
    arg1 = arg1(arg2)
    if arg1 then
      break
    end
    arg1 = RequestAnimDict
    arg2 = "anim@arena@celeb@podium@no_prop@"
    arg1(arg2)
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = TaskPlayAnim
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  cmgCall3 = "anim@arena@celeb@podium@no_prop@"
  stringHelper = "flip_off_a_1st"
  mathHelper = 8.0
  cmgCall4 = 8.0
  flag14 = -1
  numberValue21 = 1
  numberValue23 = 1.0
  numberValue25 = false
  numberValue = false
  numberValue3 = false
  -- Beginner: Play an animation on a ped.
  arg1(arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23, numberValue25, numberValue, numberValue3)
  arg1 = RemoveAnimDict
  arg2 = "anim@arena@celeb@podium@no_prop@"
  arg1(arg2)
  arg1 = SetVehicleBrake
  arg2 = numberValue20
  cmgCall3 = false
  arg1(arg2, cmgCall3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5be4e0edba".
eventRegistration(textValue, workValue3)
eventRegistration = RegisterNetEvent
textValue = "1fd09ec70e"
-- Beginner: this function handles network event "1fd09ec70e".

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23
  arg1 = true
  flag3 = arg1
  arg1 = SetTimeout
  arg2 = 1000
  -- Beginner: this function handles network event "1fd09ec70e".

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local arg12, workValue
    arg12 = false
    flag3 = arg12
  end
  arg1(arg2, cmgCall3)
  arg1 = false
  flag4 = arg1
  arg1 = 0
  numberValue9 = arg1
  arg1 = false
  flag11 = arg1
  arg1 = false
  flag = arg1
  arg1 = false
  flag5 = arg1
  arg1 = DeleteEntity
  arg2 = numberValue20
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = SetEntityCoords
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  cmgCall3 = -1024.3458251953
  stringHelper = -3472.9282226563
  mathHelper = 14.329239845276
  cmgCall4 = false
  flag14 = false
  numberValue21 = false
  numberValue23 = true
  -- Beginner: Move/teleport an entity to new coordinates.
  arg1(arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23)
  arg1 = FreezeEntityPosition
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  cmgCall3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg1(arg2, cmgCall3)
  arg1 = ClearPedSecondaryTask
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23 = arg2()
  arg1(arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14, numberValue21, numberValue23)
  arg1 = 1
  numberValue22 = arg1
  arg1 = 0
  numberValue24 = arg1
  arg1 = false
  flag16 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1fd09ec70e".
eventRegistration(textValue, workValue3)
eventRegistration = RegisterNetEvent
textValue = "e074276d45"
-- Beginner: this function handles network event "e074276d45".

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2
  arg1 = true
  flag4 = arg1
  arg1 = 30
  numberValue9 = arg1
end
eventRegistration(textValue, workValue3)
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread
-- Beginner: this function handles network event "e074276d45".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14
  arg1 = tCMG
  arg1 = arg1.addBlip
  arg2 = -1026.2969970703
  cmgCall3 = -3476.4011230469
  stringHelper = 13.329237937927
  mathHelper = 127
  cmgCall4 = 3
  flag14 = "Go Karting"
  -- Beginner: Create a minimap blip.
  arg1(arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14)
  arg1 = tCMG
  arg1 = arg1.addBlip
  arg2 = -1680.2836914063
  cmgCall3 = -913.97357177734
  stringHelper = 8.0451745986938
  mathHelper = 136
  cmgCall4 = 47
  flag14 = "Beach Cinema"
  arg1(arg2, cmgCall3, stringHelper, mathHelper, cmgCall4, flag14)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(textValue)
