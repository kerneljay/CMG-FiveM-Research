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
local stateFlag, stateFlag9, number20, dataCollection4, stateFlag11, createVector3, stateFlag13, stateFlag16, number22, number24, stateFlag3, stateFlag4, stateFlag5, dataCollection, eventHandlerRegistration, cmgOperation, dataCollection3, number9, number10, number12, number14, cmgOperation2, number17, eventHandler, text, workingValue3
stateFlag = false
stateFlag9 = false
number20 = 0
dataCollection4 = {}
stateFlag11 = -1016.9984741211
createVector3 = -3493.4174804688
stateFlag13 = 14.143417358398
stateFlag16 = 58.0
dataCollection4[1] = stateFlag11
dataCollection4[2] = createVector3
dataCollection4[3] = stateFlag13
dataCollection4[4] = stateFlag16
stateFlag11 = false
createVector3 = vector3
stateFlag13 = -1025.3901367188
stateFlag16 = -3474.9365234375
number22 = 14.229237937927
createVector3 = createVector3(stateFlag13, stateFlag16, number22)
stateFlag13 = false
stateFlag16 = false
number22 = 1
number24 = 0
stateFlag3 = false
stateFlag4 = false
stateFlag5 = false
dataCollection = {}
eventHandlerRegistration = {}
cmgOperation = -1058.34765625
dataCollection3 = -3473.3583984375
number9 = 12.327661514282
eventHandlerRegistration[1] = cmgOperation
eventHandlerRegistration[2] = dataCollection3
eventHandlerRegistration[3] = number9
cmgOperation = {}
dataCollection3 = -1035.6046142578
number9 = -3499.1516113281
number10 = 12.330018043518
cmgOperation[1] = dataCollection3
cmgOperation[2] = number9
cmgOperation[3] = number10
dataCollection3 = {}
number9 = -1074.3129882813
number10 = -3446.5241699219
number12 = 12.332399368286
dataCollection3[1] = number9
dataCollection3[2] = number10
dataCollection3[3] = number12
number9 = {}
number10 = -1118.0103759766
number12 = -3510.3559570313
number14 = 12.150929450989
number9[1] = number10
number9[2] = number12
number9[3] = number14
number10 = {}
number12 = -1077.2532958984
number14 = -3523.8186035156
cmgOperation2 = 12.316527366638
number10[1] = number12
number10[2] = number14
number10[3] = cmgOperation2
number12 = {}
number14 = -1059.4982910156
cmgOperation2 = -3534.212890625
number17 = 18.846857070923
number12[1] = number14
number12[2] = cmgOperation2
number12[3] = number17
number14 = {}
cmgOperation2 = -1026.7734375
number17 = -3489.9467773438
eventHandler = 12.344030380249
number14[1] = cmgOperation2
number14[2] = number17
number14[3] = eventHandler
dataCollection[1] = eventHandlerRegistration
dataCollection[2] = cmgOperation
dataCollection[3] = dataCollection3
dataCollection[4] = number9
dataCollection[5] = number10
dataCollection[6] = number12
dataCollection[7] = number14
eventHandlerRegistration = AddEventHandler
cmgOperation = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue1, localValue2) ===
function dataCollection3(localValue1, localValue2)
  local cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25, number, number3, number5, dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8
  if localValue2 then
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.createDynamicPed
    stringHelper = 2007797722
    mathHelper = vector3
    cmgOperation4 = -1026.2969970703
    stateFlag14 = -3476.4011230469
    number21 = 14.329237937927
    mathHelper = mathHelper(cmgOperation4, stateFlag14, number21)
    cmgOperation4 = 0.0
    stateFlag14 = true
    number21 = nil
    number23 = nil
    number25 = 75.0
    number = nil

    -- === HELPER FUNCTION (decompiler name: number3; parameters: localValue12) ===
    function number3(localValue12)
      local workingValue, workingValue4, stateFlag10
      workingValue = FreezeEntityPosition
      workingValue4 = localValue12
      stateFlag10 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      workingValue(workingValue4, stateFlag10)
      workingValue = SetEntityInvincible
      workingValue4 = localValue12
      stateFlag10 = true
      workingValue(workingValue4, stateFlag10)
      workingValue = SetBlockingOfNonTemporaryEvents
      workingValue4 = localValue12
      stateFlag10 = true
      workingValue(workingValue4, stateFlag10)
    end
    cmgOperation3(stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25, number, number3)
    cmgOperation3 = tCMG
    cmgOperation3 = cmgOperation3.addMarker
    stringHelper = createVector3.x
    mathHelper = createVector3.y
    cmgOperation4 = createVector3.z
    stateFlag14 = 0.7
    number21 = 0.7
    number23 = 0.5
    number25 = 0
    number = 125
    number3 = 255
    number5 = 125
    dataCollection2 = 50
    number8 = 20
    stateFlag6 = false
    stateFlag7 = false
    stateFlag8 = true
    -- Beginner: Create a world marker.
    cmgOperation3(stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25, number, number3, number5, dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(cmgOperation, dataCollection3)
eventHandlerRegistration = AddEventHandler
cmgOperation = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue1, localValue2) ===
function dataCollection3(localValue1, localValue2)
  local cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25, number, number3, number5, dataCollection2
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
    function cmgOperation3()
      local localValue12, workingValue
      localValue12 = stateFlag
      if not localValue12 then
        localValue12 = drawNativeNotification
        workingValue = "Press ~INPUT_PICKUP~ to pay \194\1635,000 and compete in a race"
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue12(workingValue)
      else
        localValue12 = drawNativeNotification
        workingValue = "~r~Race in progress, come back later!"
        localValue12(workingValue)
      end
    end

    -- === HELPER FUNCTION: stringHelper() ===
    function stringHelper()
      local localValue12, workingValue
    end

    -- === HELPER FUNCTION: mathHelper() ===
    function mathHelper()
      local localValue12, workingValue, workingValue4
      localValue12 = IsControlJustPressed
      workingValue = 0
      workingValue4 = 38
      localValue12 = localValue12(workingValue, workingValue4)
      if localValue12 then
        localValue12 = stateFlag13
        if not localValue12 then
          localValue12 = TriggerServerEvent
          workingValue = "9ff5ff4d28"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9ff5ff4d28".
          localValue12(workingValue)
        else
          localValue12 = tCMG
          localValue12 = localValue12.notify
          workingValue = "~r~Please wait up to 60 seconds for us to refuel your kart."
          -- Beginner: Show a notification to the player.
          localValue12(workingValue)
        end
      end
    end
    cmgOperation4 = CMG
    cmgOperation4 = cmgOperation4.createArea
    stateFlag14 = "gokart"
    number21 = createVector3
    number23 = 1.5
    number25 = 6
    number = cmgOperation3
    number3 = stringHelper
    number5 = mathHelper
    dataCollection2 = {}
    -- Beginner: Create an interaction area around a world position.
    cmgOperation4(stateFlag14, number21, number23, number25, number, number3, number5, dataCollection2)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(cmgOperation, dataCollection3)
eventHandlerRegistration = 55
cmgOperation = 30
dataCollection3 = false
number9 = 0
number10 = Citizen
number10 = number10.CreateThread

-- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
function number12()
  local localValue1, localValue2
  while true do
    localValue1 = stateFlag
    if localValue1 then
      localValue1 = dataCollection3
      if localValue1 then
        localValue1 = cmgOperation
        localValue1 = localValue1 - 1
        cmgOperation = localValue1
        localValue1 = cmgOperation
        if localValue1 < 1 then
          localValue1 = false
          dataCollection3 = localValue1
        end
      end
    end
    localValue1 = stateFlag4
    if localValue1 then
      localValue1 = number9
      localValue1 = localValue1 - 1
      number9 = localValue1
    end
    localValue1 = Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
number10(number12)

-- === HELPER FUNCTION (decompiler name: number10; parameters: localValue1) ===
function number10(localValue1)
  local localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25
  localValue2 = tonumber
  cmgOperation3 = localValue1
  localValue2 = localValue2(cmgOperation3)
  if localValue2 <= 0 then
    cmgOperation3 = "00:00:00"
    return cmgOperation3
  else
    cmgOperation3 = string
    cmgOperation3 = cmgOperation3.format
    stringHelper = "%02.f"
    mathHelper = math
    mathHelper = mathHelper.floor
    cmgOperation4 = localValue2 / 3600
    mathHelper, cmgOperation4, stateFlag14, number21, number23, number25 = mathHelper(cmgOperation4)
    cmgOperation3 = cmgOperation3(stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25)
    stringHelper = string
    stringHelper = stringHelper.format
    mathHelper = "%02.f"
    cmgOperation4 = math
    cmgOperation4 = cmgOperation4.floor
    stateFlag14 = localValue2 / 60
    number21 = cmgOperation3 * 60
    stateFlag14 = stateFlag14 - number21
    cmgOperation4, stateFlag14, number21, number23, number25 = cmgOperation4(stateFlag14)
    stringHelper = stringHelper(mathHelper, cmgOperation4, stateFlag14, number21, number23, number25)
    mathHelper = string
    mathHelper = mathHelper.format
    cmgOperation4 = "%02.f"
    stateFlag14 = math
    stateFlag14 = stateFlag14.floor
    number21 = cmgOperation3 * 3600
    number21 = localValue2 - number21
    number23 = stringHelper * 60
    number21 = number21 - number23
    stateFlag14, number21, number23, number25 = stateFlag14(number21)
    mathHelper = mathHelper(cmgOperation4, stateFlag14, number21, number23, number25)
    cmgOperation4 = cmgOperation3
    stateFlag14 = ":"
    number21 = stringHelper
    number23 = ":"
    number25 = mathHelper
    cmgOperation4 = cmgOperation4 .. stateFlag14 .. number21 .. number23 .. number25
    return cmgOperation4
  end
end
number12 = CMG
number12 = number12.registerHudTimerBarProvider
number14 = "goKart"

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, cmgOperation3, stringHelper, mathHelper
  localValue2 = stateFlag16
  if localValue2 then
    localValue2 = localValue1.push
    cmgOperation3 = "LAP:"
    stringHelper = number22
    mathHelper = "/3"
    stringHelper = stringHelper .. mathHelper
    localValue2(cmgOperation3, stringHelper)
    localValue2 = localValue1.push
    cmgOperation3 = "TIME:"
    stringHelper = number10
    mathHelper = number24
    stringHelper, mathHelper = stringHelper(mathHelper)
    localValue2(cmgOperation3, stringHelper, mathHelper)
  end
  localValue2 = stateFlag4
  if localValue2 then
    localValue2 = localValue1.push
    cmgOperation3 = "ENDING IN:"
    stringHelper = tostring
    mathHelper = number9
    stringHelper, mathHelper = stringHelper(mathHelper)
    localValue2(cmgOperation3, stringHelper, mathHelper)
  end
end
number12(number14, cmgOperation2)
number12 = false

-- === HELPER FUNCTION (decompiler name: number14; parameters: none) ===
function number14()
  local localValue1, localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25, number, number3, number5
  localValue1 = stateFlag9
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = drawNativeNotification
    cmgOperation3 = "Press ~INPUT_CELLPHONE_LEFT~ or ~INPUT_CELLPHONE_RIGHT~ to change colour!"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue2(cmgOperation3)
    localValue2 = IsControlJustPressed
    cmgOperation3 = 0
    stringHelper = 174
    localValue2 = localValue2(cmgOperation3, stringHelper)
    if localValue2 then
      localValue2 = eventHandlerRegistration
      localValue2 = localValue2 - 1
      eventHandlerRegistration = localValue2
      localValue2 = eventHandlerRegistration
      if localValue2 < 29 then
        localValue2 = 140
        eventHandlerRegistration = localValue2
      end
      localValue2 = SetVehicleColours
      cmgOperation3 = GetVehiclePedIsIn
      stringHelper = localValue1
      mathHelper = false
      -- Beginner: result below is currentVehicle.
      cmgOperation3 = cmgOperation3(stringHelper, mathHelper)
      stringHelper = eventHandlerRegistration
      mathHelper = 0
      localValue2(cmgOperation3, stringHelper, mathHelper)
    end
    localValue2 = IsControlJustPressed
    cmgOperation3 = 0
    stringHelper = 175
    localValue2 = localValue2(cmgOperation3, stringHelper)
    if localValue2 then
      localValue2 = eventHandlerRegistration
      localValue2 = localValue2 + 1
      eventHandlerRegistration = localValue2
      localValue2 = eventHandlerRegistration
      cmgOperation3 = 140
      if localValue2 > cmgOperation3 then
        localValue2 = 29
        eventHandlerRegistration = localValue2
      end
      localValue2 = SetVehicleColours
      cmgOperation3 = GetVehiclePedIsIn
      stringHelper = localValue1
      mathHelper = false
      -- Beginner: result below is currentVehicle.
      cmgOperation3 = cmgOperation3(stringHelper, mathHelper)
      stringHelper = eventHandlerRegistration
      mathHelper = 0
      localValue2(cmgOperation3, stringHelper, mathHelper)
    end
  end
  localValue1 = stateFlag11
  if localValue1 then
    localValue1 = GetVehicleEngineHealth
    localValue2 = number20
    localValue1 = localValue1(localValue2)
    localValue2 = 150
    if localValue1 <= localValue2 then
      localValue1 = number12
      if not localValue1 then
        localValue1 = true
        number12 = localValue1
        localValue1 = Citizen
        localValue1 = localValue1.CreateThread

        -- === HELPER FUNCTION: localValue2() ===
        function localValue2()
          local localValue12, workingValue, workingValue4, stateFlag10, stateFlag12, workingValue5, stateFlag15, stateFlag17, stateFlag18, stringHelper2
          localValue12 = CMG
          localValue12 = localValue12.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          localValue12 = localValue12()
          workingValue = DoScreenFadeOut
          workingValue4 = 2000
          workingValue(workingValue4)
          workingValue = NetworkFadeOutEntity
          workingValue4 = localValue12
          stateFlag10 = true
          stateFlag12 = false
          workingValue(workingValue4, stateFlag10, stateFlag12)
          workingValue = Wait
          workingValue4 = 2000
          workingValue(workingValue4)
          workingValue = SetEntityCoords
          workingValue4 = number20
          stateFlag10 = dataCollection4
          stateFlag10 = stateFlag10[1]
          stateFlag12 = dataCollection4
          stateFlag12 = stateFlag12[2]
          workingValue5 = dataCollection4
          workingValue5 = workingValue5[3]
          stateFlag15 = false
          stateFlag17 = false
          stateFlag18 = false
          stringHelper2 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          workingValue(workingValue4, stateFlag10, stateFlag12, workingValue5, stateFlag15, stateFlag17, stateFlag18, stringHelper2)
          workingValue = SetEntityHeading
          workingValue4 = number20
          stateFlag10 = dataCollection4
          stateFlag10 = stateFlag10[4]
          -- Beginner: Change the direction an entity is facing.
          workingValue(workingValue4, stateFlag10)
          workingValue = SetEntityHeading
          workingValue4 = localValue12
          stateFlag10 = dataCollection4
          stateFlag10 = stateFlag10[4]
          workingValue(workingValue4, stateFlag10)
          workingValue = SetVehicleEngineHealth
          workingValue4 = number20
          stateFlag10 = 1000.0
          workingValue(workingValue4, stateFlag10)
          workingValue = NetworkFadeInEntity
          workingValue4 = localValue12
          stateFlag10 = false
          workingValue(workingValue4, stateFlag10)
          workingValue = DoScreenFadeIn
          workingValue4 = 2000
          workingValue(workingValue4)
          workingValue = false
          number12 = workingValue
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        localValue1(localValue2)
      end
    end
    localValue1 = DisableControlAction
    localValue2 = 0
    cmgOperation3 = 75
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
    localValue1 = DisableControlAction
    localValue2 = 0
    cmgOperation3 = 49
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
  end
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = cmgOperation
    if localValue1 > 0 then
      localValue1 = DrawAdvancedText
      localValue2 = 0.6
      cmgOperation3 = 0.88
      stringHelper = 0.005
      mathHelper = 0.0028
      cmgOperation4 = 0.64
      stateFlag14 = "Race starting in "
      number21 = cmgOperation
      number23 = "  seconds!"
      stateFlag14 = stateFlag14 .. number21 .. number23
      number21 = 36
      number23 = 146
      number25 = 36
      number = 255
      number3 = 7
      number5 = 0
      localValue1(localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25, number, number3, number5)
    end
  end
  localValue1 = CMG
  localValue1 = localValue1.setHudTimerBarProviderActive
  localValue2 = "goKart"
  cmgOperation3 = stateFlag16
  if not cmgOperation3 then
    cmgOperation3 = stateFlag4
  end
  localValue1(localValue2, cmgOperation3)
  localValue1 = stateFlag5
  if localValue1 then
    localValue1 = DisableAllControlActions
    localValue2 = 0
    localValue1(localValue2)
    localValue1 = EnableControlAction
    localValue2 = 0
    cmgOperation3 = 0
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
    localValue1 = EnableControlAction
    localValue2 = 0
    cmgOperation3 = 1
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
    localValue1 = EnableControlAction
    localValue2 = 0
    cmgOperation3 = 2
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
    localValue1 = EnableControlAction
    localValue2 = 0
    cmgOperation3 = 3
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
    localValue1 = EnableControlAction
    localValue2 = 0
    cmgOperation3 = 4
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
    localValue1 = EnableControlAction
    localValue2 = 0
    cmgOperation3 = 5
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
    localValue1 = EnableControlAction
    localValue2 = 0
    cmgOperation3 = 6
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
    localValue1 = EnableControlAction
    localValue2 = 0
    cmgOperation3 = 7
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
    localValue1 = EnableControlAction
    localValue2 = 0
    cmgOperation3 = 245
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
    localValue1 = EnableControlAction
    localValue2 = 0
    cmgOperation3 = 246
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
    localValue1 = EnableControlAction
    localValue2 = 0
    cmgOperation3 = 249
    stringHelper = true
    localValue1(localValue2, cmgOperation3, stringHelper)
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
number17 = number14
eventHandler = "Go Karting"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(number17, eventHandler)
cmgOperation2 = RegisterNetEvent
number17 = "d627b794a4"
-- Beginner: this function handles network event "d627b794a4".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25
  cmgOperation = localValue1
  localValue2 = true
  stateFlag = localValue2
  localValue2 = true
  dataCollection3 = localValue2
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  cmgOperation3 = -1913161790
  localValue2 = localValue2(cmgOperation3)
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.requestEntitySpawn
  stringHelper = "gokart"
  cmgOperation3(stringHelper)
  cmgOperation3 = CreateVehicle
  stringHelper = localValue2
  mathHelper = -1002.2916870117
  cmgOperation4 = -3488.869140625
  stateFlag14 = 14.22924041748
  number21 = 0.0
  number23 = true
  number25 = false
  -- Beginner: result below is vehicleEntity.
  cmgOperation3 = cmgOperation3(stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25)
  number20 = cmgOperation3
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.initLocalVehicle
  stringHelper = number20
  cmgOperation3(stringHelper)
  cmgOperation3 = TaskWarpPedIntoVehicle
  stringHelper = CMG
  stringHelper = stringHelper.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stringHelper = stringHelper()
  mathHelper = number20
  cmgOperation4 = -1
  cmgOperation3(stringHelper, mathHelper, cmgOperation4)
  cmgOperation3 = FreezeEntityPosition
  stringHelper = number20
  mathHelper = true
  -- Beginner: Freeze or unfreeze an entity in place.
  cmgOperation3(stringHelper, mathHelper)
  cmgOperation3 = FreezeEntityPosition
  stringHelper = CMG
  stringHelper = stringHelper.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stringHelper = stringHelper()
  mathHelper = true
  cmgOperation3(stringHelper, mathHelper)
  cmgOperation3 = true
  stateFlag9 = cmgOperation3
  cmgOperation3 = TriggerServerEvent
  stringHelper = "1da4cc4327"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1da4cc4327".
  cmgOperation3(stringHelper)
  cmgOperation3 = SetModelAsNoLongerNeeded
  stringHelper = localValue2
  cmgOperation3(stringHelper)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d627b794a4".
cmgOperation2(number17, eventHandler)
cmgOperation2 = RegisterNetEvent
number17 = "d23cc66588"
-- Beginner: this function handles network event "d23cc66588".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25
  localValue2 = SetEntityCoords
  cmgOperation3 = number20
  stringHelper = localValue1[1]
  mathHelper = localValue1[2]
  cmgOperation4 = localValue1[3]
  stateFlag14 = false
  number21 = false
  number23 = false
  number25 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue2(cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25)
  localValue2 = SetEntityHeading
  cmgOperation3 = number20
  stringHelper = localValue1[4]
  -- Beginner: Change the direction an entity is facing.
  localValue2(cmgOperation3, stringHelper)
  localValue2 = SetEntityHeading
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation3 = cmgOperation3()
  stringHelper = localValue1[4]
  localValue2(cmgOperation3, stringHelper)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d23cc66588".
cmgOperation2(number17, eventHandler)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, workingValue
    while true do
      localValue12 = stateFlag16
      if not localValue12 then
        break
      end
      localValue12 = number24
      localValue12 = localValue12 + 1
      number24 = localValue12
      localValue12 = Wait
      workingValue = 1000
      localValue12(workingValue)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: number17; parameters: none) ===
function number17()
  local localValue1, localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25, number, number3, number5, dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19
  localValue1 = true
  stateFlag16 = localValue1
  localValue1 = 0
  number24 = localValue1
  localValue1 = cmgOperation2
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue1()
  localValue1 = FreezeEntityPosition
  localValue2 = number20
  cmgOperation3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue1(localValue2, cmgOperation3)
  localValue1 = FreezeEntityPosition
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  cmgOperation3 = false
  localValue1(localValue2, cmgOperation3)
  localValue1 = 1
  localValue2 = 3
  cmgOperation3 = 1
  for stringHelper = localValue1, localValue2, cmgOperation3 do
    number22 = stringHelper
    mathHelper = pairs
    cmgOperation4 = dataCollection
    mathHelper, cmgOperation4, stateFlag14, number21 = mathHelper(cmgOperation4)
    for number23, number25 in mathHelper, cmgOperation4, stateFlag14, number21 do
      number3 = number23 + 1
      number = dataCollection
      number = number[number3]
      if nil ~= number then
        number = CreateCheckpoint
        number3 = 1
        number5 = number25[1]
        dataCollection2 = number25[2]
        number8 = number25[3]
        stateFlag7 = number23 + 1
        stateFlag6 = dataCollection
        stateFlag6 = stateFlag6[stateFlag7]
        stateFlag6 = stateFlag6[1]
        stateFlag8 = number23 + 1
        stateFlag7 = dataCollection
        stateFlag7 = stateFlag7[stateFlag8]
        stateFlag7 = stateFlag7[2]
        number11 = number23 + 1
        stateFlag8 = dataCollection
        stateFlag8 = stateFlag8[number11]
        stateFlag8 = stateFlag8[3]
        number11 = 5.0
        number13 = 36
        number15 = 146
        number16 = 36
        number18 = 255
        number19 = 0
        -- Beginner: result below is checkpointHandle.
        number = number(number3, number5, dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19)
        number3 = GetEntityCoords
        number5 = CMG
        number5 = number5.getPlayerPed
        number5, dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19 = number5()
        -- Beginner: result below is entityCoords.
        number3 = number3(number5, dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19)
        number5 = vector3
        dataCollection2 = number25[1]
        number8 = number25[2]
        stateFlag6 = number25[3]
        number5 = number5(dataCollection2, number8, stateFlag6)
        number3 = number3 - number5
        number3 = #number3
        while number3 > 5 do
          number5 = GetEntityCoords
          dataCollection2 = CMG
          dataCollection2 = dataCollection2.getPlayerPed
          dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19 = dataCollection2()
          -- Beginner: result below is entityCoords.
          number5 = number5(dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19)
          dataCollection2 = vector3
          number8 = number25[1]
          stateFlag6 = number25[2]
          stateFlag7 = number25[3]
          dataCollection2 = dataCollection2(number8, stateFlag6, stateFlag7)
          number5 = number5 - dataCollection2
          number3 = #number5
          number5 = Wait
          dataCollection2 = 100
          number5(dataCollection2)
          number5 = stateFlag3
          if number5 then
            number5 = false
            stateFlag3 = number5
            number5 = DeleteCheckpoint
            dataCollection2 = number
            number5(dataCollection2)
            return
          end
        end
        number5 = DeleteCheckpoint
        dataCollection2 = number
        number5(dataCollection2)
      else
        number = CreateCheckpoint
        number3 = 1
        number5 = number25[1]
        dataCollection2 = number25[2]
        number8 = number25[3]
        stateFlag6 = dataCollection
        stateFlag6 = stateFlag6[1]
        stateFlag6 = stateFlag6[1]
        stateFlag7 = dataCollection
        stateFlag7 = stateFlag7[1]
        stateFlag7 = stateFlag7[2]
        stateFlag8 = dataCollection
        stateFlag8 = stateFlag8[1]
        stateFlag8 = stateFlag8[3]
        number11 = 5.0
        number13 = 36
        number15 = 146
        number16 = 36
        number18 = 255
        number19 = 0
        -- Beginner: result below is checkpointHandle.
        number = number(number3, number5, dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19)
        number3 = GetEntityCoords
        number5 = CMG
        number5 = number5.getPlayerPed
        number5, dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19 = number5()
        -- Beginner: result below is entityCoords.
        number3 = number3(number5, dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19)
        number5 = vector3
        dataCollection2 = number25[1]
        number8 = number25[2]
        stateFlag6 = number25[3]
        number5 = number5(dataCollection2, number8, stateFlag6)
        number3 = number3 - number5
        number3 = #number3
        while number3 > 5 do
          number5 = GetEntityCoords
          dataCollection2 = CMG
          dataCollection2 = dataCollection2.getPlayerPed
          dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19 = dataCollection2()
          -- Beginner: result below is entityCoords.
          number5 = number5(dataCollection2, number8, stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19)
          dataCollection2 = vector3
          number8 = number25[1]
          stateFlag6 = number25[2]
          stateFlag7 = number25[3]
          dataCollection2 = dataCollection2(number8, stateFlag6, stateFlag7)
          number5 = number5 - dataCollection2
          number3 = #number5
          number5 = Wait
          dataCollection2 = 100
          number5(dataCollection2)
          number5 = stateFlag3
          if number5 then
            number5 = false
            stateFlag3 = number5
            number5 = DeleteCheckpoint
            dataCollection2 = number
            number5(dataCollection2)
            return
          end
        end
        number5 = DeleteCheckpoint
        dataCollection2 = number
        number5(dataCollection2)
      end
      number = {}
      number3 = number25[1]
      number5 = number25[2]
      dataCollection2 = number25[3]
      number8 = GetEntityHeading
      stateFlag6 = CMG
      stateFlag6 = stateFlag6.getPlayerPed
      stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19 = stateFlag6()
      number8, stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19 = number8(stateFlag6, stateFlag7, stateFlag8, number11, number13, number15, number16, number18, number19)
      number[1] = number3
      number[2] = number5
      number[3] = dataCollection2
      number[4] = number8
      number[5] = stateFlag6
      number[6] = stateFlag7
      number[7] = stateFlag8
      number[8] = number11
      number[9] = number13
      number[10] = number15
      number[11] = number16
      number[12] = number18
      number[13] = number19
      dataCollection4 = number
      number = SetVehicleEngineHealth
      number3 = number20
      number5 = GetVehicleEngineHealth
      dataCollection2 = number20
      number5 = number5(dataCollection2)
      number5 = number5 + 150.0
      number(number3, number5)
    end
    if 3 ~= stringHelper then
      mathHelper = Citizen
      mathHelper = mathHelper.CreateThread

      -- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
      function cmgOperation4()
        local localValue12, workingValue, workingValue4, stateFlag10, stateFlag12, workingValue5, stateFlag15, stateFlag17, stateFlag18
        localValue12 = true
        workingValue = SetTimeout
        workingValue4 = 1000

        -- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: none) ===
        function stateFlag10()
          local stateFlag2, workingValue2
          stateFlag2 = false
          localValue12 = stateFlag2
        end
        workingValue(workingValue4, stateFlag10)
        workingValue = RequestScaleformMovie
        workingValue4 = "mp_big_message_freemode"
        -- Beginner: result below is scaleformHandle.
        workingValue = workingValue(workingValue4)
        while true do
          workingValue4 = HasScaleformMovieLoaded
          stateFlag10 = workingValue
          workingValue4 = workingValue4(stateFlag10)
          if workingValue4 then
            break
          end
          workingValue4 = Citizen
          workingValue4 = workingValue4.Wait
          stateFlag10 = 0
          workingValue4(stateFlag10)
        end
        workingValue4 = BeginScaleformMovieMethod
        stateFlag10 = workingValue
        stateFlag12 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        workingValue4(stateFlag10, stateFlag12)
        workingValue4 = _ENV
        stateFlag10 = "ScaleformMovieMethodAddParamTextureNameString"
        workingValue4 = workingValue4[stateFlag10]
        stateFlag10 = "~g~LAP "
        stateFlag12 = tostring
        workingValue5 = stringHelper
        workingValue5 = workingValue5 + 1
        stateFlag12 = stateFlag12(workingValue5)
        workingValue5 = "/3 "
        stateFlag10 = stateFlag10 .. stateFlag12 .. workingValue5
        workingValue4(stateFlag10)
        workingValue4 = EndScaleformMovieMethod
        workingValue4()
        while localValue12 do
          workingValue4 = Citizen
          workingValue4 = workingValue4.Wait
          stateFlag10 = 0
          workingValue4(stateFlag10)
          workingValue4 = DrawScaleformMovieFullscreen
          stateFlag10 = workingValue
          stateFlag12 = 255
          workingValue5 = 255
          stateFlag15 = 255
          stateFlag17 = 255
          stateFlag18 = 0
          workingValue4(stateFlag10, stateFlag12, workingValue5, stateFlag15, stateFlag17, stateFlag18)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      mathHelper(cmgOperation4)
    end
  end
  localValue1 = false
  stateFlag16 = localValue1
  localValue1 = TriggerServerEvent
  localValue2 = "ed2bdda7a0"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ed2bdda7a0".
  localValue1(localValue2)
end
eventHandler = RegisterNetEvent
text = "efbc8f6d54"
-- Beginner: this function handles network event "efbc8f6d54".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, cmgOperation3, stringHelper, mathHelper
  localValue1 = false
  stateFlag9 = localValue1
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  cmgOperation3 = "5s"
  stringHelper = "MP_MISSION_COUNTDOWN_SOUNDSET"
  mathHelper = false
  localValue1(localValue2, cmgOperation3, stringHelper, mathHelper)
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, workingValue, workingValue4, stateFlag10, stateFlag12, workingValue5, stateFlag15, stateFlag17, stateFlag18, stringHelper2, number2, number4, number6, number7
    localValue12 = 5
    workingValue = 1
    workingValue4 = localValue12
    stateFlag10 = 1
    for stateFlag12 = workingValue, workingValue4, stateFlag10 do
      workingValue5 = true
      stateFlag15 = SetTimeout
      stateFlag17 = 1000

      -- === HELPER FUNCTION (decompiler name: stateFlag18; parameters: none) ===
      function stateFlag18()
        local stateFlag2, workingValue2
        stateFlag2 = false
        workingValue5 = stateFlag2
      end
      stateFlag15(stateFlag17, stateFlag18)
      stateFlag15 = RequestScaleformMovie
      stateFlag17 = "mp_big_message_freemode"
      -- Beginner: result below is scaleformHandle.
      stateFlag15 = stateFlag15(stateFlag17)
      while true do
        stateFlag17 = HasScaleformMovieLoaded
        stateFlag18 = stateFlag15
        stateFlag17 = stateFlag17(stateFlag18)
        if stateFlag17 then
          break
        end
        stateFlag17 = Citizen
        stateFlag17 = stateFlag17.Wait
        stateFlag18 = 0
        stateFlag17(stateFlag18)
      end
      stateFlag17 = BeginScaleformMovieMethod
      stateFlag18 = stateFlag15
      stringHelper2 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      stateFlag17(stateFlag18, stringHelper2)
      stateFlag17 = 5
      stateFlag17 = stateFlag17 - stateFlag12
      if 0 == stateFlag17 then
        stateFlag17 = _ENV
        stateFlag18 = "ScaleformMovieMethodAddParamTextureNameString"
        stateFlag17 = stateFlag17[stateFlag18]
        stateFlag18 = "~g~GO!"
        stateFlag17(stateFlag18)
      else
        stateFlag17 = _ENV
        stateFlag18 = "ScaleformMovieMethodAddParamTextureNameString"
        stateFlag17 = stateFlag17[stateFlag18]
        stateFlag18 = "~g~"
        stringHelper2 = tostring
        number2 = 5
        number2 = number2 - stateFlag12
        stringHelper2 = stringHelper2(number2)
        stateFlag18 = stateFlag18 .. stringHelper2
        stateFlag17(stateFlag18)
      end
      stateFlag17 = EndScaleformMovieMethod
      stateFlag17()
      while workingValue5 do
        stateFlag17 = Citizen
        stateFlag17 = stateFlag17.Wait
        stateFlag18 = 0
        stateFlag17(stateFlag18)
        stateFlag17 = DrawScaleformMovieFullscreen
        stateFlag18 = stateFlag15
        stringHelper2 = 255
        number2 = 255
        number4 = 255
        number6 = 255
        number7 = 0
        stateFlag17(stateFlag18, stringHelper2, number2, number4, number6, number7)
      end
    end
    workingValue = true
    stateFlag11 = workingValue
    workingValue = number17
    workingValue()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "efbc8f6d54".
eventHandler(text, workingValue3)
eventHandler = RegisterNetEvent
text = "d99a1e4b69"
-- Beginner: this function handles network event "d99a1e4b69".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25, number, number3
  localValue1 = true
  stateFlag5 = localValue1
  localValue1 = SetVehicleBrake
  localValue2 = number20
  cmgOperation3 = true
  localValue1(localValue2, cmgOperation3)
  localValue1 = Wait
  localValue2 = 5000
  localValue1(localValue2)
  localValue1 = TaskLeaveVehicle
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  cmgOperation3 = number20
  stringHelper = 0
  localValue1(localValue2, cmgOperation3, stringHelper)
  localValue1 = Wait
  localValue2 = 500
  localValue1(localValue2)
  localValue1 = RequestAnimDict
  localValue2 = "anim@arena@celeb@flat@solo@no_props@"
  localValue1(localValue2)
  while true do
    localValue1 = HasAnimDictLoaded
    localValue2 = "anim@arena@celeb@flat@solo@no_props@"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      break
    end
    localValue1 = RequestAnimDict
    localValue2 = "anim@arena@celeb@flat@solo@no_props@"
    localValue1(localValue2)
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = TaskPlayAnim
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  cmgOperation3 = "anim@arena@celeb@flat@solo@no_props@"
  stringHelper = "flip_a_player_a"
  mathHelper = 8.0
  cmgOperation4 = 8.0
  stateFlag14 = -1
  number21 = 1
  number23 = 1.0
  number25 = false
  number = false
  number3 = false
  -- Beginner: Play an animation on a ped.
  localValue1(localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25, number, number3)
  localValue1 = RemoveAnimDict
  localValue2 = "anim@arena@celeb@flat@solo@no_props@"
  localValue1(localValue2)
  localValue1 = SetVehicleBrake
  localValue2 = number20
  cmgOperation3 = false
  localValue1(localValue2, cmgOperation3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d99a1e4b69".
eventHandler(text, workingValue3)
eventHandler = RegisterNetEvent
text = "5be4e0edba"
-- Beginner: this function handles network event "5be4e0edba".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25, number, number3
  localValue1 = true
  stateFlag5 = localValue1
  localValue1 = SetVehicleBrake
  localValue2 = number20
  cmgOperation3 = true
  localValue1(localValue2, cmgOperation3)
  localValue1 = Wait
  localValue2 = 5000
  localValue1(localValue2)
  localValue1 = TaskLeaveVehicle
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  cmgOperation3 = number20
  stringHelper = 0
  localValue1(localValue2, cmgOperation3, stringHelper)
  localValue1 = Wait
  localValue2 = 500
  localValue1(localValue2)
  localValue1 = RequestAnimDict
  localValue2 = "anim@arena@celeb@podium@no_prop@"
  localValue1(localValue2)
  while true do
    localValue1 = HasAnimDictLoaded
    localValue2 = "anim@arena@celeb@podium@no_prop@"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      break
    end
    localValue1 = RequestAnimDict
    localValue2 = "anim@arena@celeb@podium@no_prop@"
    localValue1(localValue2)
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = TaskPlayAnim
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  cmgOperation3 = "anim@arena@celeb@podium@no_prop@"
  stringHelper = "flip_off_a_1st"
  mathHelper = 8.0
  cmgOperation4 = 8.0
  stateFlag14 = -1
  number21 = 1
  number23 = 1.0
  number25 = false
  number = false
  number3 = false
  -- Beginner: Play an animation on a ped.
  localValue1(localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23, number25, number, number3)
  localValue1 = RemoveAnimDict
  localValue2 = "anim@arena@celeb@podium@no_prop@"
  localValue1(localValue2)
  localValue1 = SetVehicleBrake
  localValue2 = number20
  cmgOperation3 = false
  localValue1(localValue2, cmgOperation3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5be4e0edba".
eventHandler(text, workingValue3)
eventHandler = RegisterNetEvent
text = "1fd09ec70e"
-- Beginner: this function handles network event "1fd09ec70e".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23
  localValue1 = true
  stateFlag3 = localValue1
  localValue1 = SetTimeout
  localValue2 = 1000
  -- Beginner: this function handles network event "1fd09ec70e".

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local localValue12, workingValue
    localValue12 = false
    stateFlag3 = localValue12
  end
  localValue1(localValue2, cmgOperation3)
  localValue1 = false
  stateFlag4 = localValue1
  localValue1 = 0
  number9 = localValue1
  localValue1 = false
  stateFlag11 = localValue1
  localValue1 = false
  stateFlag = localValue1
  localValue1 = false
  stateFlag5 = localValue1
  localValue1 = DeleteEntity
  localValue2 = number20
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = SetEntityCoords
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  cmgOperation3 = -1024.3458251953
  stringHelper = -3472.9282226563
  mathHelper = 14.329239845276
  cmgOperation4 = false
  stateFlag14 = false
  number21 = false
  number23 = true
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue1(localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23)
  localValue1 = FreezeEntityPosition
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  cmgOperation3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue1(localValue2, cmgOperation3)
  localValue1 = ClearPedSecondaryTask
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23 = localValue2()
  localValue1(localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14, number21, number23)
  localValue1 = 1
  number22 = localValue1
  localValue1 = 0
  number24 = localValue1
  localValue1 = false
  stateFlag16 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1fd09ec70e".
eventHandler(text, workingValue3)
eventHandler = RegisterNetEvent
text = "e074276d45"
-- Beginner: this function handles network event "e074276d45".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2
  localValue1 = true
  stateFlag4 = localValue1
  localValue1 = 30
  number9 = localValue1
end
eventHandler(text, workingValue3)
eventHandler = Citizen
eventHandler = eventHandler.CreateThread
-- Beginner: this function handles network event "e074276d45".

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14
  localValue1 = tCMG
  localValue1 = localValue1.addBlip
  localValue2 = -1026.2969970703
  cmgOperation3 = -3476.4011230469
  stringHelper = 13.329237937927
  mathHelper = 127
  cmgOperation4 = 3
  stateFlag14 = "Go Karting"
  -- Beginner: Create a minimap blip.
  localValue1(localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14)
  localValue1 = tCMG
  localValue1 = localValue1.addBlip
  localValue2 = -1680.2836914063
  cmgOperation3 = -913.97357177734
  stringHelper = 8.0451745986938
  mathHelper = 136
  cmgOperation4 = 47
  stateFlag14 = "Beach Cinema"
  localValue1(localValue2, cmgOperation3, stringHelper, mathHelper, cmgOperation4, stateFlag14)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(text)
