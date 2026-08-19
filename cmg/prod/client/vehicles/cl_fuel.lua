--[[
    LEVEL 1 BEGINNER GUIDE — Fuel
    ==================================

    File: cmg/prod/client/vehicles/cl_fuel.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: vehicle gameplay and vehicle systems, specifically the Fuel feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 18
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
local cmgOperation, backgroundThread, stateFlag7, number2, number3, stateFlag8, cmgOperation3, cmgOperation5, workingValue5, backgroundThread2, dataCollection, eventHandlerRegistration, text, cmgOperation2, text2, text3, workingValue, workingValue2
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
backgroundThread = "cfg/cfg_fuel"
-- Beginner: result below is config.
cmgOperation = cmgOperation(backgroundThread)
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: none) ===
function stateFlag7()
  local localValue1, localValue2, localValue3, workingValue3, text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number, stateFlag, stateFlag2
  localValue1 = pairs
  localValue2 = cmgOperation.stations
  localValue1, localValue2, localValue3, workingValue3 = localValue1(localValue2)
  for text4, number4 in localValue1, localValue2, localValue3, workingValue3 do
    cmgOperation4 = tCMG
    cmgOperation4 = cmgOperation4.addBlip
    workingValue4 = number4.x
    modelHash = number4.y
    workingValue6 = number4.z
    coords = 361
    number = 4
    stateFlag = "Petrol Station"
    stateFlag2 = 0.6
    -- Beginner: Create a minimap blip.
    cmgOperation4(workingValue4, modelHash, workingValue6, coords, number, stateFlag, stateFlag2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(stateFlag7)
backgroundThread = 0
stateFlag7 = false
number2 = 0.0
number3 = 0.0
stateFlag8 = false
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1, localValue2) ===
function cmgOperation5(localValue1, localValue2)
  local localValue3, workingValue3, text4, number4, cmgOperation4
  localValue3 = type
  workingValue3 = localValue2
  localValue3 = localValue3(workingValue3)
  if "number" == localValue3 and localValue2 >= 0 and localValue2 <= 100 then
    localValue3 = SetVehicleFuelLevel
    workingValue3 = localValue1
    text4 = localValue2 + 0.0
    localValue3(workingValue3, text4)
    localValue3 = DecorSetFloat
    workingValue3 = localValue1
    text4 = "145eb2f935"
    number4 = GetVehicleFuelLevel
    cmgOperation4 = localValue1
    number4, cmgOperation4 = number4(cmgOperation4)
    localValue3(workingValue3, text4, number4, cmgOperation4)
  end
end
cmgOperation3.setVehicleFuel = cmgOperation5
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2, localValue3, workingValue3, text4
  localValue2 = nil
  if 0 ~= localValue1 then
    localValue3 = DecorExistOn
    workingValue3 = localValue1
    text4 = "145eb2f935"
    localValue3 = localValue3(workingValue3, text4)
    if localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.getVehicleFuel
      workingValue3 = localValue1
      localValue3 = localValue3(workingValue3)
      localValue2 = localValue3
    end
  end
  localValue3 = SetVehicleFixed
  workingValue3 = localValue1
  localValue3(workingValue3)
  if localValue2 then
    localValue3 = type
    workingValue3 = localValue2
    localValue3 = localValue3(workingValue3)
    if "number" == localValue3 and localValue2 == localValue2 then
      localValue3 = math
      localValue3 = localValue3.huge
      if localValue2 ~= localValue3 then
        localValue3 = math
        localValue3 = localValue3.huge
        localValue3 = -localValue3
        if localValue2 ~= localValue3 and localValue2 >= 0 and localValue2 <= 100 then
          localValue3 = CMG
          localValue3 = localValue3.setVehicleFuel
          workingValue3 = localValue1
          text4 = localValue2
          localValue3(workingValue3, text4)
        end
      end
    end
  end
end
cmgOperation3.setVehicleFixedPreservingFuel = cmgOperation5

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1, localValue2) ===
function cmgOperation3(localValue1, localValue2)
  local localValue3, workingValue3, text4
  localValue3 = localValue2 or nil
  if not localValue2 then
    localValue3 = 0
  end
  workingValue3 = 10
  localValue3 = workingValue3 ^ localValue3
  workingValue3 = math
  workingValue3 = workingValue3.floor
  text4 = localValue1 * localValue3
  text4 = text4 + 0.5
  workingValue3 = workingValue3(text4)
  workingValue3 = workingValue3 / localValue3
  return workingValue3
end
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, workingValue3
  localValue2 = DecorGetFloat
  localValue3 = localValue1
  workingValue3 = "145eb2f935"
  return localValue2(localValue3, workingValue3)
end
cmgOperation5.getVehicleFuel = workingValue5

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.getClientDisplayMoney
  localValue1, localValue2 = localValue1()
  localValue3 = localValue1 + localValue2
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, workingValue3, text4, number4, cmgOperation4, workingValue4
  localValue2 = DecorExistOn
  localValue3 = localValue1
  workingValue3 = "145eb2f935"
  localValue2 = localValue2(localValue3, workingValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.setVehicleFuel
    localValue3 = localValue1
    workingValue3 = math
    workingValue3 = workingValue3.random
    text4 = 200
    number4 = 800
    workingValue3 = workingValue3(text4, number4)
    workingValue3 = workingValue3 / 10
    localValue2(localValue3, workingValue3)
  else
    localValue2 = stateFlag8
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.setVehicleFuel
      localValue3 = localValue1
      workingValue3 = CMG
      workingValue3 = workingValue3.getVehicleFuel
      text4 = localValue1
      workingValue3, text4, number4, cmgOperation4, workingValue4 = workingValue3(text4)
      localValue2(localValue3, workingValue3, text4, number4, cmgOperation4, workingValue4)
      localValue2 = true
      stateFlag8 = localValue2
    end
  end
  localValue2 = GetIsVehicleEngineRunning
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = cmgOperation.fuelUsage
    localValue3 = cmgOperation3
    workingValue3 = GetVehicleCurrentRpm
    text4 = localValue1
    workingValue3 = workingValue3(text4)
    text4 = 1
    localValue3 = localValue3(workingValue3, text4)
    localValue2 = localValue2[localValue3]
    if not localValue2 then
      localValue2 = 1.0
    end
    localValue3 = cmgOperation.classes
    workingValue3 = GetVehicleClass
    text4 = localValue1
    workingValue3 = workingValue3(text4)
    localValue3 = localValue3[workingValue3]
    if not localValue3 then
      localValue3 = 1.0
    end
    localValue3 = localValue2 * localValue3
    localValue3 = localValue3 / 10
    workingValue3 = CMG
    workingValue3 = workingValue3.getMechanicFuelUsageReductionPercent
    workingValue3 = workingValue3()
    text4 = workingValue3 / 100
    number4 = 1
    text4 = number4 - text4
    localValue3 = localValue3 * text4
    text4 = CMG
    text4 = text4.setVehicleFuel
    number4 = localValue1
    cmgOperation4 = GetVehicleFuelLevel
    workingValue4 = localValue1
    cmgOperation4 = cmgOperation4(workingValue4)
    cmgOperation4 = cmgOperation4 - localValue3
    text4(number4, cmgOperation4)
  end
  localValue2 = CMG
  localValue2 = localValue2.getVehicleFuel
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = type
  workingValue3 = localValue2
  localValue3 = localValue3(workingValue3)
  if "number" == localValue3 and localValue2 == localValue2 then
    localValue3 = math
    localValue3 = localValue3.huge
    if localValue2 ~= localValue3 then
      localValue3 = math
      localValue3 = localValue3.huge
      localValue3 = -localValue3
      if localValue2 ~= localValue3 then
        goto continueAtStep100
      end
    end
  end
  localValue2 = 0
  ::continueAtStep100::
  localValue3 = SendNUIMessage
  workingValue3 = {}
  workingValue3.showFuel = true
  workingValue3.fuel = localValue2
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue3(workingValue3)
end
backgroundThread2 = Citizen
backgroundThread2 = backgroundThread2.CreateThread

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
function dataCollection()
  local localValue1, localValue2, localValue3, workingValue3, text4
  localValue1 = DecorRegister
  localValue2 = "145eb2f935"
  localValue3 = 1
  localValue1(localValue2, localValue3)
  while true do
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 1000
    localValue1(localValue2)
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = IsPedInAnyVehicle
    localValue3 = localValue1
    workingValue3 = true
    localValue2 = localValue2(localValue3, workingValue3)
    if localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.inEvent
      localValue2 = localValue2()
      if not localValue2 then
        localValue2 = GetVehiclePedIsIn
        localValue3 = localValue1
        workingValue3 = false
        -- Beginner: result below is currentVehicle.
        localValue2 = localValue2(localValue3, workingValue3)
        localValue3 = GetPedInVehicleSeat
        workingValue3 = localValue2
        text4 = -1
        localValue3 = localValue3(workingValue3, text4)
        if localValue3 == localValue1 then
          localValue3 = workingValue5
          workingValue3 = localValue2
          localValue3(workingValue3)
        end
    end
    else
      localValue2 = stateFlag8
      if localValue2 then
        localValue2 = false
        stateFlag8 = localValue2
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread2(dataCollection)

-- === HELPER FUNCTION (decompiler name: backgroundThread2; parameters: none) ===
function backgroundThread2()
  local localValue1, localValue2, localValue3, workingValue3, text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number
  localValue1 = GetEntityCoords
  localValue2 = PlayerPedId
  localValue2, localValue3, workingValue3, text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number = localValue2()
  -- Beginner: result below is entityCoords.
  localValue1 = localValue1(localValue2, localValue3, workingValue3, text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number)
  localValue2 = {}
  localValue3 = ipairs
  workingValue3 = GetGamePool
  text4 = "CObject"
  workingValue3, text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number = workingValue3(text4)
  localValue3, workingValue3, text4, number4 = localValue3(workingValue3, text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number)
  for cmgOperation4, workingValue4 in localValue3, workingValue3, text4, number4 do
    modelHash = GetEntityModel
    workingValue6 = workingValue4
    -- Beginner: result below is modelHash.
    modelHash = modelHash(workingValue6)
    workingValue6 = cmgOperation.pumpModels
    workingValue6 = workingValue6[modelHash]
    if workingValue6 then
      workingValue6 = table
      workingValue6 = workingValue6.insert
      coords = localValue2
      number = workingValue4
      workingValue6(coords, number)
    end
  end
  localValue3 = 0
  workingValue3 = 1000
  text4 = pairs
  number4 = localValue2
  text4, number4, cmgOperation4, workingValue4 = text4(number4)
  for modelHash, workingValue6 in text4, number4, cmgOperation4, workingValue4 do
    coords = GetEntityCoords
    number = workingValue6
    -- Beginner: result below is entityCoords.
    coords = coords(number)
    coords = localValue1 - coords
    coords = #coords
    if workingValue3 > coords then
      workingValue3 = coords
      localValue3 = workingValue6
    end
  end
  text4 = localValue3
  number4 = workingValue3
  return text4, number4
end
dataCollection = {}
eventHandlerRegistration = Citizen
eventHandlerRegistration = eventHandlerRegistration.CreateThread

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, workingValue3, text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6
  localValue1 = pairs
  localValue2 = cmgOperation.dynamicPumps
  localValue1, localValue2, localValue3, workingValue3 = localValue1(localValue2)
  for text4, number4 in localValue1, localValue2, localValue3, workingValue3 do
    cmgOperation4 = CMG
    cmgOperation4 = cmgOperation4.loadModel
    workingValue4 = number4[1]
    -- Beginner: Request/load a GTA model before spawning or applying it.
    cmgOperation4(workingValue4)
    cmgOperation4 = number4[2]
    workingValue4 = CreateObject
    modelHash = number4[1]
    workingValue6 = cmgOperation4.x
    coords = cmgOperation4.y
    number = cmgOperation4.z
    stateFlag = false
    stateFlag2 = false
    stateFlag3 = false
    -- Beginner: result below is objectEntity.
    workingValue4 = workingValue4(modelHash, workingValue6, coords, number, stateFlag, stateFlag2, stateFlag3)
    modelHash = FreezeEntityPosition
    workingValue6 = workingValue4
    coords = true
    -- Beginner: Freeze or unfreeze an entity in place.
    modelHash(workingValue6, coords)
    modelHash = SetEntityCanBeDamaged
    workingValue6 = workingValue4
    coords = false
    modelHash(workingValue6, coords)
    modelHash = SetEntityProofs
    workingValue6 = workingValue4
    coords = true
    number = true
    stateFlag = true
    stateFlag2 = true
    stateFlag3 = true
    stateFlag4 = true
    stateFlag5 = true
    stateFlag6 = true
    modelHash(workingValue6, coords, number, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
    modelHash = SetModelAsNoLongerNeeded
    workingValue6 = number4[1]
    modelHash(workingValue6)
    modelHash = table
    modelHash = modelHash.insert
    workingValue6 = dataCollection
    coords = workingValue4
    modelHash(workingValue6, coords)
  end
  while true do
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 250
    localValue1(localValue2)
    localValue1 = backgroundThread2
    localValue1, localValue2 = localValue1()
    localValue3 = 2.5
    if localValue2 < localValue3 then
      backgroundThread = localValue1
    elseif localValue2 < 10.0 then
      localValue3 = 0
      backgroundThread = localValue3
      localValue3 = Citizen
      localValue3 = localValue3.Wait
      workingValue3 = 500
      localValue3(workingValue3)
    elseif localValue2 < 50.0 then
      localValue3 = 0
      backgroundThread = localValue3
      localValue3 = Citizen
      localValue3 = localValue3.Wait
      workingValue3 = 2500
      localValue3(workingValue3)
    else
      localValue3 = 0
      backgroundThread = localValue3
      localValue3 = Citizen
      localValue3 = localValue3.Wait
      workingValue3 = 5000
      localValue3(workingValue3)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration(text)
eventHandlerRegistration = AddEventHandler
text = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, workingValue3, text4, number4, cmgOperation4, workingValue4, modelHash
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 == localValue1 then
    localValue2 = pairs
    localValue3 = dataCollection
    localValue2, localValue3, workingValue3, text4 = localValue2(localValue3)
    for number4, cmgOperation4 in localValue2, localValue3, workingValue3, text4 do
      workingValue4 = DeleteEntity
      modelHash = cmgOperation4
      -- Beginner: Delete a GTA entity.
      workingValue4(modelHash)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventHandlerRegistration(text, cmgOperation2)
eventHandlerRegistration = AddEventHandler
text = "fuel:startFuelUpTick"
-- Beginner: this function runs when client event "fuel:startFuelUpTick" fires.

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation2(localValue1, localValue2, localValue3)
  local workingValue3, text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number, stateFlag, stateFlag2
  workingValue3 = GetVehicleFuelLevel
  text4 = localValue3
  workingValue3 = workingValue3(text4)
  number2 = workingValue3
  workingValue3 = GetVehicleClass
  text4 = localValue3
  workingValue3 = workingValue3(text4)
  workingValue3 = 18 == workingValue3
  while true do
    text4 = stateFlag7
    if not text4 then
      break
    end
    text4 = Citizen
    text4 = text4.Wait
    number4 = 500
    text4(number4)
    text4 = DecorGetFloat
    number4 = localValue3
    cmgOperation4 = "145eb2f935"
    text4 = text4(number4, cmgOperation4)
    number4 = math
    number4 = number4.random
    cmgOperation4 = 10
    workingValue4 = 20
    number4 = number4(cmgOperation4, workingValue4)
    number4 = number4 / 10.0
    cmgOperation4 = number4 * 10
    if not localValue1 then
      workingValue4 = GetAmmoInPedWeapon
      modelHash = localValue2
      workingValue6 = 883325847
      workingValue4 = workingValue4(modelHash, workingValue6)
      modelHash = number4 * 100
      workingValue4 = workingValue4 - modelHash
      if workingValue4 >= 0 then
        workingValue4 = text4 + number4
        number2 = workingValue4
        workingValue4 = SetPedAmmo
        modelHash = localValue2
        workingValue6 = 883325847
        coords = math
        coords = coords.floor
        number = GetAmmoInPedWeapon
        stateFlag = localValue2
        stateFlag2 = 883325847
        number = number(stateFlag, stateFlag2)
        stateFlag = number4 * 100
        number = number - stateFlag
        coords, number, stateFlag, stateFlag2 = coords(number)
        workingValue4(modelHash, workingValue6, coords, number, stateFlag, stateFlag2)
      else
        workingValue4 = false
        stateFlag7 = workingValue4
      end
    else
      workingValue4 = text4 + number4
      number2 = workingValue4
    end
    workingValue4 = number2
    if workingValue4 > 100.0 then
      workingValue4 = 100.0
      number2 = workingValue4
      workingValue4 = false
      stateFlag7 = workingValue4
    end
    if localValue1 and not workingValue3 then
      workingValue4 = CMG
      workingValue4 = workingValue4.TriggerServerCallback
      modelHash = "49e51ddb66"
      workingValue6 = math
      workingValue6 = workingValue6.floor
      coords = cmgOperation4
      workingValue6 = workingValue6(coords)
      coords = "fuel"
      workingValue4 = workingValue4(modelHash, workingValue6, coords)
      if workingValue4 then
        modelHash = number3
        modelHash = modelHash + cmgOperation4
        number3 = modelHash
        modelHash = CMG
        modelHash = modelHash.setVehicleFuel
        workingValue6 = localValue3
        coords = number2
        modelHash(workingValue6, coords)
      else
        modelHash = false
        stateFlag7 = modelHash
      end
    else
      workingValue4 = number3
      workingValue4 = workingValue4 + cmgOperation4
      number3 = workingValue4
      workingValue4 = CMG
      workingValue4 = workingValue4.setVehicleFuel
      modelHash = localValue3
      workingValue6 = number2
      workingValue4(modelHash, workingValue6)
    end
    workingValue4 = CMG
    workingValue4 = workingValue4.clearBlockingVehicleCounter
    modelHash = localValue3
    workingValue4(modelHash)
  end
  text4 = DecorGetInt
  number4 = localValue3
  cmgOperation4 = "0a6cf607ed"
  text4 = text4(number4, cmgOperation4)
  if text4 > 0 then
    number4 = CMG
    number4 = number4.getVehicleFuel
    cmgOperation4 = localValue3
    number4 = number4(cmgOperation4)
    cmgOperation4 = TriggerServerEvent
    workingValue4 = "486c23d750"
    modelHash = text4
    workingValue6 = math
    workingValue6 = workingValue6.floor
    coords = number4 * 1000
    workingValue6 = workingValue6(coords)
    workingValue6 = workingValue6 / 1000
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "486c23d750".
    cmgOperation4(workingValue4, modelHash, workingValue6)
  end
  number4 = 0.0
  number3 = number4
end
-- Beginner: Register a client-side event handler. Event/command: "fuel:startFuelUpTick".
eventHandlerRegistration(text, cmgOperation2)
eventHandlerRegistration = AddEventHandler
text = "fuel:refuelFromPump"
-- Beginner: this function runs when client event "fuel:refuelFromPump" fires.

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation2(localValue1, localValue2, localValue3)
  local workingValue3, text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number, stateFlag, stateFlag2, stateFlag3, stateFlag4
  workingValue3 = TaskTurnPedToFaceEntity
  text4 = localValue2
  number4 = localValue3
  cmgOperation4 = 1000
  workingValue3(text4, number4, cmgOperation4)
  workingValue3 = Citizen
  workingValue3 = workingValue3.Wait
  text4 = 1000
  workingValue3(text4)
  workingValue3 = SetCurrentPedWeapon
  text4 = localValue2
  number4 = -1569615261
  cmgOperation4 = true
  workingValue3(text4, number4, cmgOperation4)
  workingValue3 = CMG
  workingValue3 = workingValue3.loadAnimDict
  text4 = "timetable@gardener@filling_can"
  -- Beginner: Load a GTA animation dictionary before using it.
  workingValue3(text4)
  workingValue3 = TaskPlayAnim
  text4 = localValue2
  number4 = "timetable@gardener@filling_can"
  cmgOperation4 = "gar_ig_5_filling_can"
  workingValue4 = 2.0
  modelHash = 8.0
  workingValue6 = -1
  coords = 50
  number = 0
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Play an animation on a ped.
  workingValue3(text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number, stateFlag, stateFlag2, stateFlag3)
  workingValue3 = TriggerEvent
  text4 = "fuel:startFuelUpTick"
  number4 = localValue1
  cmgOperation4 = localValue2
  workingValue4 = localValue3
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "fuel:startFuelUpTick".
  workingValue3(text4, number4, cmgOperation4, workingValue4)
  while true do
    workingValue3 = stateFlag7
    if not workingValue3 then
      break
    end
    workingValue3 = Citizen
    workingValue3 = workingValue3.Wait
    text4 = 1
    workingValue3(text4)
    workingValue3 = pairs
    text4 = cmgOperation.disabledKeys
    workingValue3, text4, number4, cmgOperation4 = workingValue3(text4)
    for workingValue4, modelHash in workingValue3, text4, number4, cmgOperation4 do
      workingValue6 = DisableControlAction
      coords = 0
      number = modelHash
      stateFlag = true
      workingValue6(coords, number, stateFlag)
    end
    workingValue3 = GetEntityCoords
    text4 = localValue3
    -- Beginner: result below is entityCoords.
    workingValue3 = workingValue3(text4)
    if localValue1 then
      text4 = GetEntityCoords
      number4 = localValue1
      -- Beginner: result below is entityCoords.
      text4 = text4(number4)
      number4 = ""
      cmgOperation4 = "\n"
      workingValue4 = cmgOperation.translations
      workingValue4 = workingValue4.TotalCost
      modelHash = ": ~g~\194\163"
      workingValue6 = getMoneyStringFormatted
      coords = math
      coords = coords.floor
      number = cmgOperation3
      stateFlag = number3
      stateFlag2 = 1
      number, stateFlag, stateFlag2, stateFlag3, stateFlag4 = number(stateFlag, stateFlag2)
      coords, number, stateFlag, stateFlag2, stateFlag3, stateFlag4 = coords(number, stateFlag, stateFlag2, stateFlag3, stateFlag4)
      workingValue6 = workingValue6(coords, number, stateFlag, stateFlag2, stateFlag3, stateFlag4)
      cmgOperation4 = cmgOperation4 .. workingValue4 .. modelHash .. workingValue6
      number4 = cmgOperation4
      cmgOperation4 = CMG
      cmgOperation4 = cmgOperation4.DrawText3D
      workingValue4 = text4
      modelHash = cmgOperation.translations
      modelHash = modelHash.CancelFuelingPump
      workingValue6 = number4
      modelHash = modelHash .. workingValue6
      workingValue6 = 0.35
      coords = 4
      cmgOperation4(workingValue4, modelHash, workingValue6, coords)
      cmgOperation4 = CMG
      cmgOperation4 = cmgOperation4.DrawText3D
      workingValue4 = vector3
      modelHash = 0.0
      workingValue6 = 0.0
      coords = 0.5
      workingValue4 = workingValue4(modelHash, workingValue6, coords)
      workingValue4 = workingValue3 + workingValue4
      modelHash = cmgOperation3
      workingValue6 = number2
      coords = 1
      modelHash = modelHash(workingValue6, coords)
      workingValue6 = "%"
      modelHash = modelHash .. workingValue6
      workingValue6 = 0.35
      coords = 4
      cmgOperation4(workingValue4, modelHash, workingValue6, coords)
    else
      text4 = CMG
      text4 = text4.DrawText3D
      number4 = vector3
      cmgOperation4 = 0.0
      workingValue4 = 0.0
      modelHash = 0.5
      number4 = number4(cmgOperation4, workingValue4, modelHash)
      number4 = workingValue3 + number4
      cmgOperation4 = cmgOperation.translations
      cmgOperation4 = cmgOperation4.CancelFuelingJerryCan
      workingValue4 = [[

Gas can: ~g~]]
      modelHash = cmgOperation3
      workingValue6 = GetAmmoInPedWeapon
      coords = localValue2
      number = 883325847
      workingValue6 = workingValue6(coords, number)
      workingValue6 = workingValue6 / 4500
      workingValue6 = workingValue6 * 100
      coords = 1
      modelHash = modelHash(workingValue6, coords)
      workingValue6 = "% | Vehicle: "
      coords = cmgOperation3
      number = number2
      stateFlag = 1
      coords = coords(number, stateFlag)
      number = "%"
      cmgOperation4 = cmgOperation4 .. workingValue4 .. modelHash .. workingValue6 .. coords .. number
      workingValue4 = 0.35
      modelHash = 4
      text4(number4, cmgOperation4, workingValue4, modelHash)
    end
    text4 = IsEntityPlayingAnim
    number4 = localValue2
    cmgOperation4 = "timetable@gardener@filling_can"
    workingValue4 = "gar_ig_5_filling_can"
    modelHash = 3
    text4 = text4(number4, cmgOperation4, workingValue4, modelHash)
    if not text4 then
      text4 = TaskPlayAnim
      number4 = localValue2
      cmgOperation4 = "timetable@gardener@filling_can"
      workingValue4 = "gar_ig_5_filling_can"
      modelHash = 2.0
      workingValue6 = 8.0
      coords = -1
      number = 50
      stateFlag = 0
      stateFlag2 = false
      stateFlag3 = false
      stateFlag4 = false
      -- Beginner: Play an animation on a ped.
      text4(number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number, stateFlag, stateFlag2, stateFlag3, stateFlag4)
    end
    text4 = IsControlJustReleased
    number4 = 0
    cmgOperation4 = 38
    text4 = text4(number4, cmgOperation4)
    if not text4 then
      text4 = DoesEntityExist
      number4 = GetPedInVehicleSeat
      cmgOperation4 = localValue3
      workingValue4 = -1
      number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number, stateFlag, stateFlag2, stateFlag3, stateFlag4 = number4(cmgOperation4, workingValue4)
      text4 = text4(number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number, stateFlag, stateFlag2, stateFlag3, stateFlag4)
      if not text4 then
        text4 = backgroundThread
        if 0 == text4 then
          goto continueAtStep188
        end
        text4 = GetEntityHealth
        number4 = localValue1
        -- Beginner: result below is health.
        text4 = text4(number4)
        if not (text4 <= 0) then
          goto continueAtStep188
        end
      end
    end
    text4 = false
    stateFlag7 = text4
    ::continueAtStep188::
  end
  workingValue3 = ClearPedTasks
  text4 = localValue2
  workingValue3(text4)
  workingValue3 = RemoveAnimDict
  text4 = "timetable@gardener@filling_can"
  workingValue3(text4)
end
-- Beginner: Register a client-side event handler. Event/command: "fuel:refuelFromPump".
eventHandlerRegistration(text, cmgOperation2)

-- === HELPER FUNCTION: eventHandlerRegistration(localValue1) ===
function eventHandlerRegistration(localValue1)
  local localValue2, localValue3, workingValue3, text4, number4, cmgOperation4, workingValue4, modelHash
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  localValue3 = GetModelDimensions
  workingValue3 = localValue2
  localValue3, workingValue3 = localValue3(workingValue3)
  text4 = vector3
  number4 = 0.0
  cmgOperation4 = 0.0
  workingValue4 = 0.0
  text4 = text4(number4, cmgOperation4, workingValue4)
  text4 = text4 - localValue3
  text4 = #text4
  number4 = vector3
  cmgOperation4 = 0.0
  workingValue4 = 0.0
  modelHash = 0.0
  number4 = number4(cmgOperation4, workingValue4, modelHash)
  number4 = number4 - workingValue3
  number4 = #number4
  cmgOperation4 = 2.5
  if text4 > cmgOperation4 and text4 < 20.0 then
    return text4
  else
    cmgOperation4 = 2.5
    if number4 > cmgOperation4 and number4 < 20.0 then
      return number4
    end
  end
  cmgOperation4 = 2.5
  return cmgOperation4
end
text = Citizen
text = text.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3, workingValue3, text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number
  while true do
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 1
    localValue1(localValue2)
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = stateFlag7
    if not localValue2 then
      localValue2 = backgroundThread
      if 0 ~= localValue2 then
        localValue2 = GetEntityHealth
        localValue3 = backgroundThread
        -- Beginner: result below is health.
        localValue2 = localValue2(localValue3)
        if localValue2 > 0 then
          goto continueAtStep26
        end
      end
      localValue2 = GetSelectedPedWeapon
      localValue3 = localValue1
      -- Beginner: result below is weaponHash.
      localValue2 = localValue2(localValue3)
      if 883325847 == localValue2 then
        localValue2 = backgroundThread
        if 0 == localValue2 then
          ::continueAtStep26::
          localValue2 = IsPedInAnyVehicle
          localValue3 = localValue1
          workingValue3 = true
          localValue2 = localValue2(localValue3, workingValue3)
          if localValue2 then
            localValue2 = GetPedInVehicleSeat
            localValue3 = GetVehiclePedIsIn
            workingValue3 = localValue1
            text4 = false
            -- Beginner: result below is currentVehicle.
            localValue3 = localValue3(workingValue3, text4)
            workingValue3 = -1
            localValue2 = localValue2(localValue3, workingValue3)
            if localValue2 == localValue1 then
              localValue2 = GetEntityCoords
              localValue3 = backgroundThread
              -- Beginner: result below is entityCoords.
              localValue2 = localValue2(localValue3)
              localValue3 = CMG
              localValue3 = localValue3.DrawText3D
              workingValue3 = vector3
              text4 = 0.0
              number4 = 0.0
              cmgOperation4 = 1.2
              workingValue3 = workingValue3(text4, number4, cmgOperation4)
              workingValue3 = localValue2 + workingValue3
              text4 = cmgOperation.translations
              text4 = text4.ExitVehicle
              number4 = 0.35
              cmgOperation4 = 4
              localValue3(workingValue3, text4, number4, cmgOperation4)
          end
          else
            localValue2 = GetPlayersLastVehicle
            localValue2 = localValue2()
            localValue3 = GetEntityCoords
            workingValue3 = localValue2
            -- Beginner: result below is entityCoords.
            localValue3 = localValue3(workingValue3)
            workingValue3 = DoesEntityExist
            text4 = localValue2
            workingValue3 = workingValue3(text4)
            if workingValue3 then
              workingValue3 = GetEntityCoords
              text4 = localValue1
              -- Beginner: result below is entityCoords.
              workingValue3 = workingValue3(text4)
              workingValue3 = workingValue3 - localValue3
              workingValue3 = #workingValue3
              text4 = eventHandlerRegistration
              number4 = localValue2
              text4 = text4(number4)
              if workingValue3 < text4 then
                workingValue3 = DoesEntityExist
                text4 = GetPedInVehicleSeat
                number4 = localValue2
                cmgOperation4 = -1
                text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number = text4(number4, cmgOperation4)
                workingValue3 = workingValue3(text4, number4, cmgOperation4, workingValue4, modelHash, workingValue6, coords, number)
                if not workingValue3 then
                  workingValue3 = GetEntityCoords
                  text4 = backgroundThread
                  -- Beginner: result below is entityCoords.
                  workingValue3 = workingValue3(text4)
                  text4 = true
                  number4 = GetSelectedPedWeapon
                  cmgOperation4 = localValue1
                  -- Beginner: result below is weaponHash.
                  number4 = number4(cmgOperation4)
                  if 883325847 == number4 then
                    workingValue3 = localValue3
                    number4 = GetAmmoInPedWeapon
                    cmgOperation4 = localValue1
                    workingValue4 = 883325847
                    number4 = number4(cmgOperation4, workingValue4)
                    if number4 < 100 then
                      text4 = false
                    end
                  end
                  number4 = GetVehicleFuelLevel
                  cmgOperation4 = localValue2
                  number4 = number4(cmgOperation4)
                  if number4 < 95 and text4 then
                    number4 = cmgOperation5
                    number4 = number4()
                    if number4 > 0 then
                      cmgOperation4 = CMG
                      cmgOperation4 = cmgOperation4.DrawText3D
                      workingValue4 = vector3
                      modelHash = 0.0
                      workingValue6 = 0.0
                      coords = 1.2
                      workingValue4 = workingValue4(modelHash, workingValue6, coords)
                      workingValue4 = workingValue3 + workingValue4
                      modelHash = cmgOperation.translations
                      modelHash = modelHash.EToRefuel
                      workingValue6 = 0.35
                      coords = 4
                      cmgOperation4(workingValue4, modelHash, workingValue6, coords)
                      cmgOperation4 = IsControlJustReleased
                      workingValue4 = 0
                      modelHash = 38
                      cmgOperation4 = cmgOperation4(workingValue4, modelHash)
                      if cmgOperation4 then
                        cmgOperation4 = true
                        stateFlag7 = cmgOperation4
                        cmgOperation4 = TriggerEvent
                        workingValue4 = "fuel:refuelFromPump"
                        modelHash = backgroundThread
                        workingValue6 = localValue1
                        coords = localValue2
                        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "fuel:refuelFromPump".
                        cmgOperation4(workingValue4, modelHash, workingValue6, coords)
                      end
                    else
                      cmgOperation4 = CMG
                      cmgOperation4 = cmgOperation4.DrawText3D
                      workingValue4 = vector3
                      modelHash = 0.0
                      workingValue6 = 0.0
                      coords = 1.2
                      workingValue4 = workingValue4(modelHash, workingValue6, coords)
                      workingValue4 = workingValue3 + workingValue4
                      modelHash = cmgOperation.translations
                      modelHash = modelHash.NotEnoughCash
                      workingValue6 = 0.35
                      coords = 4
                      cmgOperation4(workingValue4, modelHash, workingValue6, coords)
                    end
                  elseif not text4 then
                    number4 = CMG
                    number4 = number4.DrawText3D
                    cmgOperation4 = vector3
                    workingValue4 = 0.0
                    modelHash = 0.0
                    workingValue6 = 1.2
                    cmgOperation4 = cmgOperation4(workingValue4, modelHash, workingValue6)
                    cmgOperation4 = workingValue3 + cmgOperation4
                    workingValue4 = cmgOperation.translations
                    workingValue4 = workingValue4.JerryCanEmpty
                    modelHash = 0.35
                    workingValue6 = 4
                    number4(cmgOperation4, workingValue4, modelHash, workingValue6)
                  else
                    number4 = CMG
                    number4 = number4.DrawText3D
                    cmgOperation4 = vector3
                    workingValue4 = 0.0
                    modelHash = 0.0
                    workingValue6 = 1.2
                    cmgOperation4 = cmgOperation4(workingValue4, modelHash, workingValue6)
                    cmgOperation4 = workingValue3 + cmgOperation4
                    workingValue4 = cmgOperation.translations
                    workingValue4 = workingValue4.FullTank
                    modelHash = 0.35
                    workingValue6 = 4
                    number4(cmgOperation4, workingValue4, modelHash, workingValue6)
                  end
                end
            end
            else
              workingValue3 = backgroundThread
              if 0 ~= workingValue3 then
                workingValue3 = GetEntityCoords
                text4 = backgroundThread
                -- Beginner: result below is entityCoords.
                workingValue3 = workingValue3(text4)
                text4 = cmgOperation5
                text4 = text4()
                number4 = cmgOperation.jerryCanCost
                if text4 >= number4 then
                  number4 = HasPedGotWeapon
                  cmgOperation4 = localValue1
                  workingValue4 = 883325847
                  modelHash = false
                  number4 = number4(cmgOperation4, workingValue4, modelHash)
                  if not number4 then
                    number4 = CMG
                    number4 = number4.DrawText3D
                    cmgOperation4 = vector3
                    workingValue4 = 0.0
                    modelHash = 0.0
                    workingValue6 = 1.2
                    cmgOperation4 = cmgOperation4(workingValue4, modelHash, workingValue6)
                    cmgOperation4 = workingValue3 + cmgOperation4
                    workingValue4 = cmgOperation.translations
                    workingValue4 = workingValue4.PurchaseJerryCan
                    modelHash = 0.35
                    workingValue6 = 4
                    number4(cmgOperation4, workingValue4, modelHash, workingValue6)
                    number4 = IsControlJustReleased
                    cmgOperation4 = 0
                    workingValue4 = 38
                    number4 = number4(cmgOperation4, workingValue4)
                    if number4 then
                      number4 = CMG
                      number4 = number4.TriggerServerCallback
                      cmgOperation4 = "49e51ddb66"
                      workingValue4 = cmgOperation.jerryCanCost
                      modelHash = "fuel"
                      number4 = number4(cmgOperation4, workingValue4, modelHash)
                      if number4 then
                        cmgOperation4 = GiveWeaponToPed
                        workingValue4 = localValue1
                        modelHash = 883325847
                        workingValue6 = 4500
                        coords = false
                        number = true
                        cmgOperation4(workingValue4, modelHash, workingValue6, coords, number)
                      end
                    end
                  else
                    number4 = cmgOperation3
                    cmgOperation4 = cmgOperation.fuelCost
                    workingValue4 = GetAmmoInPedWeapon
                    modelHash = localValue1
                    workingValue6 = 883325847
                    workingValue4 = workingValue4(modelHash, workingValue6)
                    workingValue4 = workingValue4 / 4500
                    modelHash = 1
                    workingValue4 = modelHash - workingValue4
                    cmgOperation4 = cmgOperation4 * workingValue4
                    number4 = number4(cmgOperation4)
                    if number4 > 0 then
                      cmgOperation4 = CMG
                      cmgOperation4 = cmgOperation4.DrawText3D
                      workingValue4 = vector3
                      modelHash = 0.0
                      workingValue6 = 0.0
                      coords = 1.2
                      workingValue4 = workingValue4(modelHash, workingValue6, coords)
                      workingValue4 = workingValue3 + workingValue4
                      modelHash = cmgOperation.translations
                      modelHash = modelHash.RefillJerryCan
                      workingValue6 = number4
                      modelHash = modelHash .. workingValue6
                      workingValue6 = 0.35
                      coords = 4
                      cmgOperation4(workingValue4, modelHash, workingValue6, coords)
                      cmgOperation4 = IsControlJustReleased
                      workingValue4 = 0
                      modelHash = 38
                      cmgOperation4 = cmgOperation4(workingValue4, modelHash)
                      if cmgOperation4 then
                        cmgOperation4 = CMG
                        cmgOperation4 = cmgOperation4.TriggerServerCallback
                        workingValue4 = "49e51ddb66"
                        modelHash = math
                        modelHash = modelHash.floor
                        workingValue6 = number4
                        modelHash = modelHash(workingValue6)
                        workingValue6 = "fuel"
                        cmgOperation4 = cmgOperation4(workingValue4, modelHash, workingValue6)
                        if cmgOperation4 then
                          workingValue4 = SetPedAmmo
                          modelHash = localValue1
                          workingValue6 = 883325847
                          coords = 4500
                          workingValue4(modelHash, workingValue6, coords)
                        end
                      end
                    else
                      cmgOperation4 = CMG
                      cmgOperation4 = cmgOperation4.DrawText3D
                      workingValue4 = vector3
                      modelHash = 0.0
                      workingValue6 = 0.0
                      coords = 1.2
                      workingValue4 = workingValue4(modelHash, workingValue6, coords)
                      workingValue4 = workingValue3 + workingValue4
                      modelHash = cmgOperation.translations
                      modelHash = modelHash.JerryCanFull
                      workingValue6 = 0.35
                      coords = 4
                      cmgOperation4(workingValue4, modelHash, workingValue6, coords)
                    end
                  end
                else
                  number4 = CMG
                  number4 = number4.DrawText3D
                  cmgOperation4 = vector3
                  workingValue4 = 0.0
                  modelHash = 0.0
                  workingValue6 = 1.2
                  cmgOperation4 = cmgOperation4(workingValue4, modelHash, workingValue6)
                  cmgOperation4 = workingValue3 + cmgOperation4
                  workingValue4 = cmgOperation.translations
                  workingValue4 = workingValue4.NotEnoughCash
                  modelHash = 0.35
                  workingValue6 = 4
                  number4(cmgOperation4, workingValue4, modelHash, workingValue6)
                end
              else
                workingValue3 = Citizen
                workingValue3 = workingValue3.Wait
                text4 = 250
                workingValue3(text4)
              end
            end
          end
      end
    end
    else
      localValue2 = Citizen
      localValue2 = localValue2.Wait
      localValue3 = 250
      localValue2(localValue3)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text(cmgOperation2)
text = Citizen
text = text.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3, workingValue3, text4
  localValue1 = RequestStreamedTextureDict
  localValue2 = "regplates"
  localValue3 = false
  localValue1(localValue2, localValue3)
  while true do
    localValue1 = HasStreamedTextureDictLoaded
    localValue2 = "regplates"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      break
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 1
    localValue1(localValue2)
  end
  localValue1 = AddReplaceTexture
  localValue2 = "vehshare"
  localValue3 = "plate01"
  workingValue3 = "regplates"
  text4 = "plate01"
  localValue1(localValue2, localValue3, workingValue3, text4)
  localValue1 = AddReplaceTexture
  localValue2 = "vehshare"
  localValue3 = "plate01_n"
  workingValue3 = "regplates"
  text4 = "plate01_n"
  localValue1(localValue2, localValue3, workingValue3, text4)
  localValue1 = AddReplaceTexture
  localValue2 = "vehshare"
  localValue3 = "plate02"
  workingValue3 = "regplates"
  text4 = "plate02"
  localValue1(localValue2, localValue3, workingValue3, text4)
  localValue1 = AddReplaceTexture
  localValue2 = "vehshare"
  localValue3 = "plate02_n"
  workingValue3 = "regplates"
  text4 = "plate02_n"
  localValue1(localValue2, localValue3, workingValue3, text4)
  localValue1 = AddReplaceTexture
  localValue2 = "vehshare"
  localValue3 = "plate03"
  workingValue3 = "regplates"
  text4 = "plate03"
  localValue1(localValue2, localValue3, workingValue3, text4)
  localValue1 = AddReplaceTexture
  localValue2 = "vehshare"
  localValue3 = "plate03_n"
  workingValue3 = "regplates"
  text4 = "plate03_n"
  localValue1(localValue2, localValue3, workingValue3, text4)
  localValue1 = AddReplaceTexture
  localValue2 = "vehshare"
  localValue3 = "plate04"
  workingValue3 = "regplates"
  text4 = "plate04"
  localValue1(localValue2, localValue3, workingValue3, text4)
  localValue1 = AddReplaceTexture
  localValue2 = "vehshare"
  localValue3 = "plate04_n"
  workingValue3 = "regplates"
  text4 = "plate04_n"
  localValue1(localValue2, localValue3, workingValue3, text4)
  localValue1 = AddReplaceTexture
  localValue2 = "vehshare"
  localValue3 = "plate05"
  workingValue3 = "regplates"
  text4 = "plate05"
  localValue1(localValue2, localValue3, workingValue3, text4)
  localValue1 = AddReplaceTexture
  localValue2 = "vehshare"
  localValue3 = "plate05_n"
  workingValue3 = "regplates"
  text4 = "plate05_n"
  localValue1(localValue2, localValue3, workingValue3, text4)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text(cmgOperation2)

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, workingValue3, text4, number4
  localValue2 = string
  localValue2 = localValue2.format
  localValue3 = "Fuel Amount: %s%%"
  workingValue3 = math
  workingValue3 = workingValue3.round
  text4 = CMG
  text4 = text4.getVehicleFuel
  number4 = localValue1
  text4 = text4(number4)
  number4 = 1
  workingValue3, text4, number4 = workingValue3(text4, number4)
  return localValue2(localValue3, workingValue3, text4, number4)
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.registerDevMenuEntityEditor
text2 = "Fuel"
text3 = "vehicle"
workingValue = text

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2
end
cmgOperation2(text2, text3, workingValue, workingValue2)
