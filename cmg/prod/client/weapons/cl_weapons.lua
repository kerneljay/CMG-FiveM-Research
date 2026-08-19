--[[
    LEVEL 1 BEGINNER GUIDE — Weapons
    =====================================

    File: cmg/prod/client/weapons/cl_weapons.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: weapon/combat gameplay, specifically the Weapons feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 24
      * Background threads: 0
      * Always-running loops: 2
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
local cmgOperation, cmgOperation3, number2, dataCollection2, cmgOperation4, dataCollection3, text3, cmgOperation5, workingValue14, eventHandler2, text, workingValue, cmgOperation2, text2, eventHandler, stateFlag, workingValue4, stateFlag4
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation3 = "cfg/weapons"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation3)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createCircularBuffer
number2 = 25
dataCollection2 = {}
cmgOperation4 = 0
dataCollection3 = 0
text3 = ""
dataCollection2[1] = cmgOperation4
dataCollection2[2] = dataCollection3
dataCollection2[3] = text3
cmgOperation3 = cmgOperation3(number2, dataCollection2)
number2 = 0

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue1) ===
function dataCollection2(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = cmgOperation3.put
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  localValue4 = number2
  localValue5 = localValue1
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = number2
  localValue2 = localValue2 + 1
  number2 = localValue2
end
cmgOperation4 = Citizen
cmgOperation4 = cmgOperation4.CreateThread

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
function dataCollection3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13, health
  localValue1 = pairs
  localValue2 = cmgOperation.weapons
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, hashValue in localValue1, localValue2, localValue3, localValue4 do
    workingValue12 = AddTextEntry
    workingValue13 = localValue5
    health = hashValue.name
    workingValue12(workingValue13, health)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation4(dataCollection3)
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue1, localValue2) ===
function dataCollection3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator, workingValue2, workingValue3, stateFlag2, stateFlag3, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  if localValue2 then
    localValue4 = RemoveAllPedWeapons
    localValue5 = localValue3
    hashValue = true
    localValue4(localValue5, hashValue)
  end
  localValue4 = pairs
  localValue5 = localValue1
  localValue4, localValue5, hashValue, workingValue12 = localValue4(localValue5)
  for workingValue13, health in localValue4, localValue5, hashValue, workingValue12 do
    hashValue2 = GetHashKey
    number = workingValue13
    -- Beginner: result below is hash.
    hashValue2 = hashValue2(number)
    number = health.ammo
    if not number then
      number = 0
    end
    dataCollection = GiveWeaponToPed
    iterator = localValue3
    workingValue2 = hashValue2
    workingValue3 = number
    stateFlag2 = false
    stateFlag3 = false
    dataCollection(iterator, workingValue2, workingValue3, stateFlag2, stateFlag3)
    dataCollection = health.attachments
    if not dataCollection then
      dataCollection = {}
    end
    iterator = pairs
    workingValue2 = dataCollection
    iterator, workingValue2, workingValue3, stateFlag2 = iterator(workingValue2)
    for stateFlag3, workingValue5 in iterator, workingValue2, workingValue3, stateFlag2 do
      workingValue6 = GiveWeaponComponentToPed
      workingValue7 = localValue3
      workingValue8 = workingValue13
      workingValue9 = workingValue5
      workingValue6(workingValue7, workingValue8, workingValue9)
    end
  end
end
cmgOperation4.giveWeapons = dataCollection3
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
function dataCollection3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator, workingValue2
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = {}
  localValue3 = {}
  localValue4 = pairs
  localValue5 = cmgOperation.weapons
  localValue4, localValue5, hashValue, workingValue12 = localValue4(localValue5)
  for workingValue13, health in localValue4, localValue5, hashValue, workingValue12 do
    hashValue2 = HasPedGotWeapon
    number = localValue1
    dataCollection = health.hash
    iterator = false
    hashValue2 = hashValue2(number, dataCollection, iterator)
    if hashValue2 then
      hashValue2 = health.hash
      if -1569615261 ~= hashValue2 then
        hashValue2 = {}
        number = GetPedAmmoTypeFromWeapon
        dataCollection = localValue1
        iterator = health.hash
        number = number(dataCollection, iterator)
        dataCollection = localValue2[number]
        if nil == dataCollection then
          localValue2[number] = true
          dataCollection = GetAmmoInPedWeapon
          iterator = localValue1
          workingValue2 = health.hash
          dataCollection = dataCollection(iterator, workingValue2)
          hashValue2.ammo = dataCollection
        else
          hashValue2.ammo = 0
        end
        dataCollection = CMG
        dataCollection = dataCollection.getAllWeaponAttachments
        iterator = workingValue13
        dataCollection = dataCollection(iterator)
        hashValue2.attachments = dataCollection
        localValue3[workingValue13] = hashValue2
      end
    end
  end
  return localValue3
end
cmgOperation4.getWeapons = dataCollection3
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
function dataCollection3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = pairs
  localValue3 = cmgOperation.weapons
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for hashValue, workingValue12 in localValue2, localValue3, localValue4, localValue5 do
    workingValue13 = HasPedGotWeapon
    health = localValue1
    hashValue2 = workingValue12.hash
    number = false
    workingValue13 = workingValue13(health, hashValue2, number)
    if workingValue13 then
      workingValue13 = true
      return workingValue13
    end
  end
  localValue2 = false
  return localValue2
end
cmgOperation4.isPlayerArmed = dataCollection3
cmgOperation4 = tCMG

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
function dataCollection3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator, workingValue2
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = {}
  localValue3 = {}
  localValue4 = pairs
  localValue5 = cmgOperation.weapons
  localValue4, localValue5, hashValue, workingValue12 = localValue4(localValue5)
  for workingValue13, health in localValue4, localValue5, hashValue, workingValue12 do
    hashValue2 = HasPedGotWeapon
    number = localValue1
    dataCollection = health.hash
    iterator = false
    hashValue2 = hashValue2(number, dataCollection, iterator)
    if hashValue2 then
      hashValue2 = health.hash
      if -1569615261 ~= hashValue2 then
        hashValue2 = {}
        number = GetPedAmmoTypeFromWeapon
        dataCollection = localValue1
        iterator = health.hash
        number = number(dataCollection, iterator)
        dataCollection = localValue2[number]
        if nil == dataCollection then
          localValue2[number] = true
          dataCollection = GetAmmoInPedWeapon
          iterator = localValue1
          workingValue2 = health.hash
          dataCollection = dataCollection(iterator, workingValue2)
          hashValue2.ammo = dataCollection
        else
          hashValue2.ammo = 0
        end
        dataCollection = CMG
        dataCollection = dataCollection.getAllWeaponAttachments
        iterator = workingValue13
        dataCollection = dataCollection(iterator)
        hashValue2.attachments = dataCollection
        localValue3[workingValue13] = hashValue2
      end
    end
  end
  return localValue3
end
cmgOperation4.getWeapons = dataCollection3
cmgOperation4 = {}
dataCollection3 = {}
text3 = 0
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2
  localValue1 = dataCollection3
  return localValue1
end
cmgOperation5.getCachedWeaponStore = workingValue14

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1, localValue2) ===
function cmgOperation5(localValue1, localValue2)
  local localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = GetPedAmmoTypeFromWeapon
  localValue5 = localValue3
  hashValue = GetHashKey
  workingValue12 = localValue1
  hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator = hashValue(workingValue12)
  localValue4 = localValue4(localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator)
  localValue5 = pairs
  hashValue = CMG
  hashValue = hashValue.getCachedWeaponStore
  hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator = hashValue()
  localValue5, hashValue, workingValue12, workingValue13 = localValue5(hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator)
  for health, hashValue2 in localValue5, hashValue, workingValue12, workingValue13 do
    number = GetPedAmmoTypeFromWeapon
    dataCollection = localValue3
    iterator = hashValue2.weaponHash
    number = number(dataCollection, iterator)
    if number == localValue4 then
      hashValue2.ammo = localValue2
      number = GetFrameCount
      number = number()
      hashValue2.setFrame = number
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetPlayerPed
  localValue3 = -1
  -- Beginner: result below is playerPed.
  localValue2 = localValue2(localValue3)
  localValue3 = string
  localValue3 = localValue3.format
  localValue4 = "(%s, %s, %s, %s, %s, %s, %s, %s)"
  localValue5 = localValue1
  hashValue = localValue2
  workingValue12 = DoesEntityExist
  workingValue13 = localValue1
  workingValue12 = workingValue12(workingValue13)
  workingValue13 = DoesEntityExist
  health = localValue2
  workingValue13 = workingValue13(health)
  health = GetEntityHealth
  hashValue2 = localValue1
  -- Beginner: result below is health.
  health = health(hashValue2)
  hashValue2 = GetEntityHealth
  number = localValue2
  -- Beginner: result below is health.
  hashValue2 = hashValue2(number)
  number = IsEntityDead
  dataCollection = localValue1
  number = number(dataCollection)
  dataCollection = IsEntityDead
  iterator = localValue2
  dataCollection, iterator = dataCollection(iterator)
  return localValue3(localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator)
end
eventHandler2 = RegisterNetEvent
text = "d962c43598"
-- Beginner: this function handles network event "d962c43598".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function workingValue(localValue1, localValue2, localValue3, localValue4, localValue5)
  local hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator, workingValue2
  hashValue = GiveWeaponToPed
  workingValue12 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue12 = workingValue12()
  workingValue13 = localValue2
  health = math
  health = health.floor
  hashValue2 = localValue3
  health = health(hashValue2)
  hashValue2 = false
  number = localValue4
  hashValue(workingValue12, workingValue13, health, hashValue2, number)
  hashValue = dataCollection2
  workingValue12 = string
  workingValue12 = workingValue12.format
  workingValue13 = "addWeaponStore(%s, %s, %s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  health = localValue1
  hashValue2 = localValue2
  number = localValue5
  dataCollection = json
  dataCollection = dataCollection.encode
  iterator = dataCollection3
  dataCollection = dataCollection(iterator)
  iterator = json
  iterator = iterator.encode
  workingValue2 = CMG
  workingValue2 = workingValue2.getWeapons
  workingValue2 = workingValue2()
  iterator = iterator(workingValue2)
  workingValue2 = workingValue14
  workingValue2 = workingValue2()
  workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator, workingValue2 = workingValue12(workingValue13, health, hashValue2, number, dataCollection, iterator, workingValue2)
  hashValue(workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator, workingValue2)
  hashValue = dataCollection3
  hashValue = hashValue[localValue1]
  if not hashValue then
    hashValue = dataCollection3
    workingValue12 = {}
    workingValue12.weaponHash = localValue2
    workingValue12.ammo = 0
    workingValue13 = GetFrameCount
    workingValue13 = workingValue13()
    workingValue12.setFrame = workingValue13
    hashValue[localValue1] = workingValue12
    hashValue = cmgOperation5
    workingValue12 = localValue1
    workingValue13 = 0
    hashValue(workingValue12, workingValue13)
  end
  text3 = localValue5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d962c43598".
eventHandler2(text, workingValue)
eventHandler2 = RegisterNetEvent
text = "ae100d6cc6"
-- Beginner: this function handles network event "ae100d6cc6".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2, localValue3) ===
function workingValue(localValue1, localValue2, localValue3)
  local localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection
  localValue4 = RemoveWeaponFromPed
  localValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  hashValue = GetHashKey
  workingValue12 = localValue1
  hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection = hashValue(workingValue12)
  localValue4(localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
  localValue4 = dataCollection2
  localValue5 = string
  localValue5 = localValue5.format
  hashValue = "removeWeaponStore(%s, %s, %s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  workingValue12 = localValue1
  workingValue13 = localValue2
  health = localValue3
  hashValue2 = json
  hashValue2 = hashValue2.encode
  number = dataCollection3
  hashValue2 = hashValue2(number)
  number = json
  number = number.encode
  dataCollection = CMG
  dataCollection = dataCollection.getWeapons
  dataCollection = dataCollection()
  number = number(dataCollection)
  dataCollection = workingValue14
  dataCollection = dataCollection()
  localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection = localValue5(hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
  localValue4(localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
  localValue4 = dataCollection3
  localValue4[localValue1] = nil
  if localValue2 then
    localValue4 = SetPedAmmoByType
    localValue5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue5 = localValue5()
    hashValue = GetPedAmmoTypeFromWeapon
    workingValue12 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workingValue12 = workingValue12()
    workingValue13 = GetHashKey
    health = localValue1
    workingValue13, health, hashValue2, number, dataCollection = workingValue13(health)
    hashValue = hashValue(workingValue12, workingValue13, health, hashValue2, number, dataCollection)
    workingValue12 = 0
    localValue4(localValue5, hashValue, workingValue12)
  end
  text3 = localValue3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ae100d6cc6".
eventHandler2(text, workingValue)
eventHandler2 = RegisterNetEvent
text = "51f1965821"
-- Beginner: this function handles network event "51f1965821".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13
  localValue2 = RemoveAllPedWeapons
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = false
  localValue2(localValue3, localValue4)
  localValue2 = dataCollection2
  localValue3 = string
  localValue3 = localValue3.format
  localValue4 = "clearWeaponStore(%s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  localValue5 = localValue1
  hashValue = json
  hashValue = hashValue.encode
  workingValue12 = dataCollection3
  hashValue = hashValue(workingValue12)
  workingValue12 = json
  workingValue12 = workingValue12.encode
  workingValue13 = CMG
  workingValue13 = workingValue13.getWeapons
  workingValue13 = workingValue13()
  workingValue12 = workingValue12(workingValue13)
  workingValue13 = workingValue14
  workingValue13 = workingValue13()
  localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13 = localValue3(localValue4, localValue5, hashValue, workingValue12, workingValue13)
  localValue2(localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13)
  localValue2 = {}
  dataCollection3 = localValue2
  text3 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "51f1965821".
eventHandler2(text, workingValue)
eventHandler2 = {}
text = 911657153
eventHandler2[text] = true
text = 1843015545
eventHandler2[text] = true
text = 1953687840
eventHandler2[text] = true
text = 126349499
eventHandler2[text] = true
text = -2076048660
eventHandler2[text] = true
text = 0

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator, workingValue2
  localValue2 = {}
  localValue3 = cmgOperation3.iterator
  localValue3, localValue4, localValue5, hashValue = localValue3()
  for workingValue12, workingValue13 in localValue3, localValue4, localValue5, hashValue do
    health = workingValue13[1]
    if 0 ~= health then
      health = table
      health = health.insert
      hashValue2 = localValue2
      number = workingValue13
      health(hashValue2, number)
    end
  end
  localValue3 = table
  localValue3 = localValue3.sort
  localValue4 = localValue2

  -- === HELPER FUNCTION: localValue5(localValue12, localValue22) ===
  function localValue5(localValue12, localValue22)
    local workingValue10, workingValue11
    workingValue10 = localValue12[1]
    workingValue11 = localValue22[1]
    if workingValue10 == workingValue11 then
      workingValue10 = localValue12[2]
      workingValue11 = localValue22[2]
      workingValue10 = workingValue10 < workingValue11
      return workingValue10
    else
      workingValue10 = localValue12[1]
      workingValue11 = localValue22[1]
      workingValue10 = workingValue10 < workingValue11
      return workingValue10
    end
  end
  localValue3(localValue4, localValue5)
  if localValue1 then
    localValue3 = TriggerServerEvent
    localValue4 = "b46b0f245b"
    localValue5 = localValue2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b46b0f245b".
    localValue3(localValue4, localValue5)
  else
    localValue3 = pairs
    localValue4 = localValue2
    localValue3, localValue4, localValue5, hashValue = localValue3(localValue4)
    for workingValue12, workingValue13 in localValue3, localValue4, localValue5, hashValue do
      health = print
      hashValue2 = string
      hashValue2 = hashValue2.format
      number = "[DEBUG] %s (%s) -> %s"
      dataCollection = workingValue13[1]
      iterator = workingValue13[2]
      workingValue2 = workingValue13[3]
      hashValue2, number, dataCollection, iterator, workingValue2 = hashValue2(number, dataCollection, iterator, workingValue2)
      health(hashValue2, number, dataCollection, iterator, workingValue2)
    end
  end
end
cmgOperation2 = Citizen
cmgOperation2 = cmgOperation2.CreateThread

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection, iterator, workingValue2, workingValue3, stateFlag2, stateFlag3, workingValue5
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isPlayerCustomisationSetup
    localValue1 = localValue1()
    if localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = Wait
  localValue2 = 0
  localValue1(localValue2)
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getCachedWeaponStore
    localValue1 = localValue1()
    localValue2 = GetFrameCount
    localValue2 = localValue2()
    localValue3 = CMG
    localValue3 = localValue3.isPedScriptGuidChanging
    localValue3 = localValue3()
    if not localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.isPoliceHorse
      localValue3 = localValue3()
    end
    localValue4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue4 = localValue4()
    localValue5 = {}
    hashValue = pairs
    workingValue12 = localValue1
    hashValue, workingValue12, workingValue13, health = hashValue(workingValue12)
    for hashValue2, number in hashValue, workingValue12, workingValue13, health do
      dataCollection = GetPedAmmoTypeFromWeapon
      iterator = localValue4
      workingValue2 = number.weaponHash
      dataCollection = dataCollection(iterator, workingValue2)
      if 0 ~= dataCollection then
        iterator = HasPedGotWeapon
        workingValue2 = localValue4
        workingValue3 = number.weaponHash
        stateFlag2 = false
        iterator = iterator(workingValue2, workingValue3, stateFlag2)
        if iterator then
          iterator = localValue5[dataCollection]
          if nil == iterator then
            localValue5[dataCollection] = true
            iterator = localValue1[hashValue2]
            iterator = iterator.setFrame
            if localValue2 > iterator and not localValue3 then
              iterator = CMG
              iterator = iterator.isInPaintball
              iterator = iterator()
              if not iterator then
                iterator = GetAmmoInPedWeapon
                workingValue2 = localValue4
                workingValue3 = number.weaponHash
                iterator = iterator(workingValue2, workingValue3)
                workingValue2 = localValue1[hashValue2]
                workingValue2 = workingValue2.ammo
                if iterator > workingValue2 then
                  workingValue3 = number.weaponHash
                  workingValue2 = eventHandler2
                  workingValue2 = workingValue2[workingValue3]
                  if not workingValue2 then
                    workingValue2 = CMG
                    workingValue2 = workingValue2.isAimTraining
                    workingValue2 = workingValue2()
                    if not workingValue2 then
                      workingValue2 = CMG
                      workingValue2 = workingValue2.inArena
                      workingValue2 = workingValue2()
                      if not workingValue2 then
                        workingValue2 = CMG
                        workingValue2 = workingValue2.inArenaWarmup
                        workingValue2 = workingValue2()
                        if not workingValue2 then
                          workingValue2 = TriggerServerEvent
                          workingValue3 = "101039c9d0"
                          stateFlag2 = hashValue2
                          stateFlag3 = iterator
                          workingValue5 = localValue1[hashValue2]
                          workingValue5 = workingValue5.ammo
                          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "101039c9d0".
                          workingValue2(workingValue3, stateFlag2, stateFlag3, workingValue5)
                          workingValue2 = workingValue
                          workingValue3 = true
                          workingValue2(workingValue3)
                        end
                      end
                    end
                  end
                end
                if iterator >= 0 then
                  workingValue2 = localValue1[hashValue2]
                  workingValue2.ammo = iterator
                end
              end
            end
          else
            iterator = localValue1[hashValue2]
            iterator.ammo = 0
          end
        end
      end
    end
    hashValue = table
    hashValue = hashValue.contentEquals
    workingValue12 = localValue1
    workingValue13 = cmgOperation4
    hashValue = hashValue(workingValue12, workingValue13)
    if not hashValue then
      hashValue = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      hashValue = hashValue()
      workingValue12 = text
      hashValue = hashValue - workingValue12
      workingValue12 = 5000
      if hashValue >= workingValue12 then
        hashValue = CMG
        hashValue = hashValue.isInPaintball
        hashValue = hashValue()
        if not hashValue then
          hashValue = CMG
          hashValue = hashValue.inArena
          hashValue = hashValue()
          if not hashValue then
            hashValue = CMG
            hashValue = hashValue.inArenaWarmup
            hashValue = hashValue()
            if not hashValue then
              hashValue = TriggerServerEvent
              workingValue12 = "7f0ac25257"
              workingValue13 = localValue1
              health = text3
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7f0ac25257".
              hashValue(workingValue12, workingValue13, health)
              hashValue = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              hashValue = hashValue()
              text = hashValue
            end
          end
        end
      end
    end
    hashValue = table
    hashValue = hashValue.copy
    workingValue12 = localValue1
    hashValue = hashValue(workingValue12)
    cmgOperation4 = hashValue
    hashValue = Wait
    workingValue12 = 2000
    hashValue(workingValue12)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation2(text2)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.registerCommand
text2 = "printweapondebug"

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2
  localValue1 = workingValue
  localValue2 = false
  localValue1(localValue2)
end
stateFlag = false
cmgOperation2(text2, eventHandler, stateFlag)
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3
  localValue1 = RemoveAllPedWeapons
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = false
  localValue1(localValue2, localValue3)
end
cmgOperation2.removeAllWeapons = text2
cmgOperation2 = GetGameTimer
-- Beginner: result below is gameTimeMs.
cmgOperation2 = cmgOperation2()

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = HasPedGotWeapon
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = -1716589765
  localValue4 = false
  localValue1 = localValue1(localValue2, localValue3, localValue4)
  if not localValue1 then
    localValue1 = HasPedGotWeapon
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = -619010992
    localValue4 = false
    localValue1 = localValue1(localValue2, localValue3, localValue4)
    if not localValue1 then
      goto continueAtStep19
    end
  end
  localValue1 = false
  return localValue1
  ::continueAtStep19::
  localValue1 = CMG
  localValue1 = localValue1.isHandcuffed
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = false
    return localValue1
  end
  localValue1 = true
  return localValue1
end
eventHandler = RegisterCommand
stateFlag = "storecurrentweapon"
-- Beginner: this function is the command handler for "storecurrentweapon".

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2
  localValue1 = cmgOperation2
  localValue1 = localValue1 + 3000
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  if localValue1 < localValue2 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    cmgOperation2 = localValue1
    localValue1 = text2
    localValue1 = localValue1()
    if not localValue1 then
      return
    end
    localValue1 = GetCurrentPedWeapon
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = 0
    localValue4 = false
    localValue1, localValue2 = localValue1(localValue2, localValue3, localValue4)
    localValue3 = cmgOperation.weaponHashToModels
    localValue3 = localValue3[localValue2]
    localValue4 = TriggerServerEvent
    localValue5 = "23e533401c"
    hashValue = true
    workingValue12 = false
    workingValue13 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "23e533401c".
    localValue4(localValue5, hashValue, workingValue12, workingValue13)
    localValue4 = dataCollection2
    localValue5 = string
    localValue5 = localValue5.format
    hashValue = "forceStoreSingleWeapon(%s) cachedWeaponStore was %s getWeapons was %s ped is %s"
    workingValue12 = localValue3
    workingValue13 = json
    workingValue13 = workingValue13.encode
    health = dataCollection3
    workingValue13 = workingValue13(health)
    health = json
    health = health.encode
    hashValue2 = CMG
    hashValue2 = hashValue2.getWeapons
    hashValue2 = hashValue2()
    health = health(hashValue2)
    hashValue2 = workingValue14
    hashValue2 = hashValue2()
    localValue5, hashValue, workingValue12, workingValue13, health, hashValue2 = localValue5(hashValue, workingValue12, workingValue13, health, hashValue2)
    localValue4(localValue5, hashValue, workingValue12, workingValue13, health, hashValue2)
  else
    localValue1 = tCMG
    localValue1 = localValue1.notify
    localValue2 = "~r~Store weapons cooldown, please wait."
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
  end
end
stateFlag4 = false
-- Beginner: Register a chat/console command. Event/command: "storecurrentweapon".
eventHandler(stateFlag, workingValue4, stateFlag4)
eventHandler = RegisterCommand
stateFlag = "storeallweapons"
-- Beginner: this function is the command handler for "storeallweapons".

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, hashValue
  localValue1 = cmgOperation2
  localValue1 = localValue1 + 3000
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  if localValue1 < localValue2 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    cmgOperation2 = localValue1
    localValue1 = text2
    localValue1 = localValue1()
    if not localValue1 then
      return
    end
    localValue1 = TriggerServerEvent
    localValue2 = "868d29c333"
    localValue3 = true
    localValue4 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "868d29c333".
    localValue1(localValue2, localValue3, localValue4)
    localValue1 = dataCollection2
    localValue2 = string
    localValue2 = localValue2.format
    localValue3 = "forceStoreWeapons() cachedWeaponStore was %s getWeapons was %s ped is %s"
    localValue4 = json
    localValue4 = localValue4.encode
    localValue5 = dataCollection3
    localValue4 = localValue4(localValue5)
    localValue5 = json
    localValue5 = localValue5.encode
    hashValue = CMG
    hashValue = hashValue.getWeapons
    hashValue = hashValue()
    localValue5 = localValue5(hashValue)
    hashValue = workingValue14
    hashValue = hashValue()
    localValue2, localValue3, localValue4, localValue5, hashValue = localValue2(localValue3, localValue4, localValue5, hashValue)
    localValue1(localValue2, localValue3, localValue4, localValue5, hashValue)
  else
    localValue1 = tCMG
    localValue1 = localValue1.notify
    localValue2 = "~r~Store weapons cooldown, please wait."
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
  end
end
stateFlag4 = false
-- Beginner: Register a chat/console command. Event/command: "storeallweapons".
eventHandler(stateFlag, workingValue4, stateFlag4)
eventHandler = RegisterNetEvent
stateFlag = "cd72e00d12"
-- Beginner: this function handles network event "cd72e00d12".

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2, localValue3) ===
function workingValue4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection
  localValue4 = dataCollection2
  localValue5 = string
  localValue5 = localValue5.format
  hashValue = "addStoredAmmo(%s, %s, %s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  workingValue12 = localValue1
  workingValue13 = localValue2
  health = localValue3
  hashValue2 = json
  hashValue2 = hashValue2.encode
  number = dataCollection3
  hashValue2 = hashValue2(number)
  number = json
  number = number.encode
  dataCollection = CMG
  dataCollection = dataCollection.getWeapons
  dataCollection = dataCollection()
  number = number(dataCollection)
  dataCollection = workingValue14
  dataCollection = dataCollection()
  localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection = localValue5(hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
  localValue4(localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
  localValue4 = dataCollection3
  localValue4 = localValue4[localValue1]
  if localValue4 then
    localValue4 = dataCollection3
    localValue4 = localValue4[localValue1]
    localValue5 = dataCollection3
    localValue5 = localValue5[localValue1]
    localValue5 = localValue5.ammo
    localValue5 = localValue5 + localValue2
    localValue4.ammo = localValue5
    localValue4 = dataCollection3
    localValue4 = localValue4[localValue1]
    localValue5 = GetFrameCount
    localValue5 = localValue5()
    localValue4.setFrame = localValue5
  else
    localValue4 = CMG
    localValue4 = localValue4.logError
    localValue5 = "cd72e00d12"
    hashValue = "Failed to add "
    workingValue12 = tostring
    workingValue13 = localValue2
    workingValue12 = workingValue12(workingValue13)
    workingValue13 = " ammo to "
    health = localValue1
    hashValue = hashValue .. workingValue12 .. workingValue13 .. health
    workingValue12 = json
    workingValue12 = workingValue12.encode
    workingValue13 = dataCollection3
    workingValue12 = workingValue12(workingValue13)
    if not workingValue12 then
      workingValue12 = ""
    end
    localValue4(localValue5, hashValue, workingValue12)
  end
  text3 = localValue3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cd72e00d12".
eventHandler(stateFlag, workingValue4)
eventHandler = RegisterNetEvent
stateFlag = "6af7c62f30"
-- Beginner: this function handles network event "6af7c62f30".

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2, localValue3) ===
function workingValue4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection
  localValue4 = SetPedAmmo
  localValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  hashValue = GetHashKey
  workingValue12 = localValue1
  -- Beginner: result below is hash.
  hashValue = hashValue(workingValue12)
  workingValue12 = math
  workingValue12 = workingValue12.floor
  workingValue13 = localValue2
  workingValue12, workingValue13, health, hashValue2, number, dataCollection = workingValue12(workingValue13)
  localValue4(localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
  localValue4 = dataCollection2
  localValue5 = string
  localValue5 = localValue5.format
  hashValue = "setStoredAmmo(%s, %s, %s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  workingValue12 = localValue1
  workingValue13 = localValue2
  health = localValue3
  hashValue2 = json
  hashValue2 = hashValue2.encode
  number = dataCollection3
  hashValue2 = hashValue2(number)
  number = json
  number = number.encode
  dataCollection = CMG
  dataCollection = dataCollection.getWeapons
  dataCollection = dataCollection()
  number = number(dataCollection)
  dataCollection = workingValue14
  dataCollection = dataCollection()
  localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection = localValue5(hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
  localValue4(localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
  localValue4 = dataCollection3
  localValue4 = localValue4[localValue1]
  if localValue4 then
    localValue4 = cmgOperation5
    localValue5 = localValue1
    hashValue = localValue2
    localValue4(localValue5, hashValue)
  else
    localValue4 = CMG
    localValue4 = localValue4.logError
    localValue5 = "6af7c62f30"
    hashValue = "Failed to set the ammo of "
    workingValue12 = localValue1
    workingValue13 = " to "
    health = tostring
    hashValue2 = localValue2
    health = health(hashValue2)
    hashValue = hashValue .. workingValue12 .. workingValue13 .. health
    workingValue12 = json
    workingValue12 = workingValue12.encode
    workingValue13 = dataCollection3
    workingValue12 = workingValue12(workingValue13)
    if not workingValue12 then
      workingValue12 = ""
    end
    localValue4(localValue5, hashValue, workingValue12)
  end
  text3 = localValue3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6af7c62f30".
eventHandler(stateFlag, workingValue4)
eventHandler = AddEventHandler
stateFlag = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = RemoveAllPedWeapons
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    localValue4 = true
    localValue2(localValue3, localValue4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventHandler(stateFlag, workingValue4)
eventHandler = RegisterNetEvent
stateFlag = "4d5264442d"
-- Beginner: this function handles network event "4d5264442d".

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3, localValue4, localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = IsEntityDead
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = print
    localValue5 = string
    localValue5 = localValue5.format
    hashValue = "[Headshot Fix] Ignoring, local player is already dead."
    workingValue12 = localValue1
    localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection = localValue5(hashValue, workingValue12)
    localValue4(localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
    return
  end
  localValue4 = select
  localValue5 = 2
  hashValue = GetEntityProofs
  workingValue12 = localValue3
  hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection = hashValue(workingValue12)
  localValue4 = localValue4(localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
  if 1 ~= localValue4 then
    localValue4 = GetEntityCanBeDamaged
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = GetPlayerInvincible
      localValue5 = PlayerId
      localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection = localValue5()
      localValue4 = localValue4(localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
      if not localValue4 then
        goto continueAtStep43
      end
    end
  end
  localValue4 = print
  localValue5 = string
  localValue5 = localValue5.format
  hashValue = "[Headshot Fix] Ignoring, local player can not be damaged."
  workingValue12 = localValue1
  localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection = localValue5(hashValue, workingValue12)
  localValue4(localValue5, hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
  return
  ::continueAtStep43::
  localValue4 = GetPlayerFromServerId
  localValue5 = localValue1
  -- Beginner: result below is playerIndex.
  localValue4 = localValue4(localValue5)
  if -1 == localValue4 then
    localValue5 = print
    hashValue = string
    hashValue = hashValue.format
    workingValue12 = "[Headshot Fix] Could not find attacker player index. Player source was %s."
    workingValue13 = localValue1
    hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection = hashValue(workingValue12, workingValue13)
    localValue5(hashValue, workingValue12, workingValue13, health, hashValue2, number, dataCollection)
    return
  end
  localValue5 = GetPlayerPed
  hashValue = localValue4
  -- Beginner: result below is playerPed.
  localValue5 = localValue5(hashValue)
  if 0 == localValue5 then
    hashValue = print
    workingValue12 = string
    workingValue12 = workingValue12.format
    workingValue13 = "[Headshot Fix] Could not find attacker player ped. Player source was %s, player index was %s."
    health = localValue1
    hashValue2 = localValue4
    workingValue12, workingValue13, health, hashValue2, number, dataCollection = workingValue12(workingValue13, health, hashValue2)
    hashValue(workingValue12, workingValue13, health, hashValue2, number, dataCollection)
    return
  end
  hashValue = CMG
  hashValue = hashValue.setPedAndWeaponKilledByOverride
  workingValue12 = localValue5
  workingValue13 = GetHashKey
  health = localValue2
  -- Beginner: result below is hash.
  workingValue13 = workingValue13(health)
  health = true
  hashValue(workingValue12, workingValue13, health)
  hashValue = ApplyDamageToPed
  workingValue12 = localValue3
  workingValue13 = 500
  health = true
  hashValue(workingValue12, workingValue13, health)
  hashValue = print
  workingValue12 = string
  workingValue12 = workingValue12.format
  workingValue13 = "[Headshot Fix] Attacking local player with a %s. Player source was %s, player index was %s, player ped was %s."
  health = localValue2
  hashValue2 = localValue1
  number = localValue4
  dataCollection = localValue5
  workingValue12, workingValue13, health, hashValue2, number, dataCollection = workingValue12(workingValue13, health, hashValue2, number, dataCollection)
  hashValue(workingValue12, workingValue13, health, hashValue2, number, dataCollection)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4d5264442d".
eventHandler(stateFlag, workingValue4)
