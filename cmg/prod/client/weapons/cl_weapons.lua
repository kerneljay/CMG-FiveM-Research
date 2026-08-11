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
local cmgCall, cmgCall3, numberValue2, dataTable2, cmgCall4, dataTable3, textValue3, cmgCall5, workValue14, eventRegistration2, textValue, workValue, cmgCall2, textValue2, eventRegistration, flag, workValue4, flag4
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall3 = "cfg/weapons"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall3)
cmgCall3 = CMG
cmgCall3 = cmgCall3.createCircularBuffer
numberValue2 = 25
dataTable2 = {}
cmgCall4 = 0
dataTable3 = 0
textValue3 = ""
dataTable2[1] = cmgCall4
dataTable2[2] = dataTable3
dataTable2[3] = textValue3
cmgCall3 = cmgCall3(numberValue2, dataTable2)
numberValue2 = 0

-- === HELPER FUNCTION (decompiler name: dataTable2; parameters: arg1) ===
function dataTable2(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = cmgCall3.put
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  arg4 = numberValue2
  arg5 = arg1
  arg2(arg3, arg4, arg5)
  arg2 = numberValue2
  arg2 = arg2 + 1
  numberValue2 = arg2
end
cmgCall4 = Citizen
cmgCall4 = cmgCall4.CreateThread

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
function dataTable3()
  local arg1, arg2, arg3, arg4, arg5, hashValue, workValue12, workValue13, health
  arg1 = pairs
  arg2 = cmgCall.weapons
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, hashValue in arg1, arg2, arg3, arg4 do
    workValue12 = AddTextEntry
    workValue13 = arg5
    health = hashValue.name
    workValue12(workValue13, health)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall4(dataTable3)
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1, arg2) ===
function dataTable3(arg1, arg2)
  local arg3, arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator, workValue2, workValue3, flag2, flag3, workValue5, workValue6, workValue7, workValue8, workValue9
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  if arg2 then
    arg4 = RemoveAllPedWeapons
    arg5 = arg3
    hashValue = true
    arg4(arg5, hashValue)
  end
  arg4 = pairs
  arg5 = arg1
  arg4, arg5, hashValue, workValue12 = arg4(arg5)
  for workValue13, health in arg4, arg5, hashValue, workValue12 do
    hashValue2 = GetHashKey
    numberValue = workValue13
    -- Beginner: result below is hash.
    hashValue2 = hashValue2(numberValue)
    numberValue = health.ammo
    if not numberValue then
      numberValue = 0
    end
    dataTable = GiveWeaponToPed
    iterator = arg3
    workValue2 = hashValue2
    workValue3 = numberValue
    flag2 = false
    flag3 = false
    dataTable(iterator, workValue2, workValue3, flag2, flag3)
    dataTable = health.attachments
    if not dataTable then
      dataTable = {}
    end
    iterator = pairs
    workValue2 = dataTable
    iterator, workValue2, workValue3, flag2 = iterator(workValue2)
    for flag3, workValue5 in iterator, workValue2, workValue3, flag2 do
      workValue6 = GiveWeaponComponentToPed
      workValue7 = arg3
      workValue8 = workValue13
      workValue9 = workValue5
      workValue6(workValue7, workValue8, workValue9)
    end
  end
end
cmgCall4.giveWeapons = dataTable3
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
function dataTable3()
  local arg1, arg2, arg3, arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator, workValue2
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = {}
  arg3 = {}
  arg4 = pairs
  arg5 = cmgCall.weapons
  arg4, arg5, hashValue, workValue12 = arg4(arg5)
  for workValue13, health in arg4, arg5, hashValue, workValue12 do
    hashValue2 = HasPedGotWeapon
    numberValue = arg1
    dataTable = health.hash
    iterator = false
    hashValue2 = hashValue2(numberValue, dataTable, iterator)
    if hashValue2 then
      hashValue2 = health.hash
      if -1569615261 ~= hashValue2 then
        hashValue2 = {}
        numberValue = GetPedAmmoTypeFromWeapon
        dataTable = arg1
        iterator = health.hash
        numberValue = numberValue(dataTable, iterator)
        dataTable = arg2[numberValue]
        if nil == dataTable then
          arg2[numberValue] = true
          dataTable = GetAmmoInPedWeapon
          iterator = arg1
          workValue2 = health.hash
          dataTable = dataTable(iterator, workValue2)
          hashValue2.ammo = dataTable
        else
          hashValue2.ammo = 0
        end
        dataTable = CMG
        dataTable = dataTable.getAllWeaponAttachments
        iterator = workValue13
        dataTable = dataTable(iterator)
        hashValue2.attachments = dataTable
        arg3[workValue13] = hashValue2
      end
    end
  end
  return arg3
end
cmgCall4.getWeapons = dataTable3
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
function dataTable3()
  local arg1, arg2, arg3, arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = pairs
  arg3 = cmgCall.weapons
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for hashValue, workValue12 in arg2, arg3, arg4, arg5 do
    workValue13 = HasPedGotWeapon
    health = arg1
    hashValue2 = workValue12.hash
    numberValue = false
    workValue13 = workValue13(health, hashValue2, numberValue)
    if workValue13 then
      workValue13 = true
      return workValue13
    end
  end
  arg2 = false
  return arg2
end
cmgCall4.isPlayerArmed = dataTable3
cmgCall4 = tCMG

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
function dataTable3()
  local arg1, arg2, arg3, arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator, workValue2
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = {}
  arg3 = {}
  arg4 = pairs
  arg5 = cmgCall.weapons
  arg4, arg5, hashValue, workValue12 = arg4(arg5)
  for workValue13, health in arg4, arg5, hashValue, workValue12 do
    hashValue2 = HasPedGotWeapon
    numberValue = arg1
    dataTable = health.hash
    iterator = false
    hashValue2 = hashValue2(numberValue, dataTable, iterator)
    if hashValue2 then
      hashValue2 = health.hash
      if -1569615261 ~= hashValue2 then
        hashValue2 = {}
        numberValue = GetPedAmmoTypeFromWeapon
        dataTable = arg1
        iterator = health.hash
        numberValue = numberValue(dataTable, iterator)
        dataTable = arg2[numberValue]
        if nil == dataTable then
          arg2[numberValue] = true
          dataTable = GetAmmoInPedWeapon
          iterator = arg1
          workValue2 = health.hash
          dataTable = dataTable(iterator, workValue2)
          hashValue2.ammo = dataTable
        else
          hashValue2.ammo = 0
        end
        dataTable = CMG
        dataTable = dataTable.getAllWeaponAttachments
        iterator = workValue13
        dataTable = dataTable(iterator)
        hashValue2.attachments = dataTable
        arg3[workValue13] = hashValue2
      end
    end
  end
  return arg3
end
cmgCall4.getWeapons = dataTable3
cmgCall4 = {}
dataTable3 = {}
textValue3 = 0
cmgCall5 = CMG

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2
  arg1 = dataTable3
  return arg1
end
cmgCall5.getCachedWeaponStore = workValue14

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1, arg2) ===
function cmgCall5(arg1, arg2)
  local arg3, arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = GetPedAmmoTypeFromWeapon
  arg5 = arg3
  hashValue = GetHashKey
  workValue12 = arg1
  hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator = hashValue(workValue12)
  arg4 = arg4(arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator)
  arg5 = pairs
  hashValue = CMG
  hashValue = hashValue.getCachedWeaponStore
  hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator = hashValue()
  arg5, hashValue, workValue12, workValue13 = arg5(hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator)
  for health, hashValue2 in arg5, hashValue, workValue12, workValue13 do
    numberValue = GetPedAmmoTypeFromWeapon
    dataTable = arg3
    iterator = hashValue2.weaponHash
    numberValue = numberValue(dataTable, iterator)
    if numberValue == arg4 then
      hashValue2.ammo = arg2
      numberValue = GetFrameCount
      numberValue = numberValue()
      hashValue2.setFrame = numberValue
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3, arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetPlayerPed
  arg3 = -1
  -- Beginner: result below is playerPed.
  arg2 = arg2(arg3)
  arg3 = string
  arg3 = arg3.format
  arg4 = "(%s, %s, %s, %s, %s, %s, %s, %s)"
  arg5 = arg1
  hashValue = arg2
  workValue12 = DoesEntityExist
  workValue13 = arg1
  workValue12 = workValue12(workValue13)
  workValue13 = DoesEntityExist
  health = arg2
  workValue13 = workValue13(health)
  health = GetEntityHealth
  hashValue2 = arg1
  -- Beginner: result below is health.
  health = health(hashValue2)
  hashValue2 = GetEntityHealth
  numberValue = arg2
  -- Beginner: result below is health.
  hashValue2 = hashValue2(numberValue)
  numberValue = IsEntityDead
  dataTable = arg1
  numberValue = numberValue(dataTable)
  dataTable = IsEntityDead
  iterator = arg2
  dataTable, iterator = dataTable(iterator)
  return arg3(arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator)
end
eventRegistration2 = RegisterNetEvent
textValue = "d962c43598"
-- Beginner: this function handles network event "d962c43598".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue(arg1, arg2, arg3, arg4, arg5)
  local hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator, workValue2
  hashValue = GiveWeaponToPed
  workValue12 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue12 = workValue12()
  workValue13 = arg2
  health = math
  health = health.floor
  hashValue2 = arg3
  health = health(hashValue2)
  hashValue2 = false
  numberValue = arg4
  hashValue(workValue12, workValue13, health, hashValue2, numberValue)
  hashValue = dataTable2
  workValue12 = string
  workValue12 = workValue12.format
  workValue13 = "addWeaponStore(%s, %s, %s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  health = arg1
  hashValue2 = arg2
  numberValue = arg5
  dataTable = json
  dataTable = dataTable.encode
  iterator = dataTable3
  dataTable = dataTable(iterator)
  iterator = json
  iterator = iterator.encode
  workValue2 = CMG
  workValue2 = workValue2.getWeapons
  workValue2 = workValue2()
  iterator = iterator(workValue2)
  workValue2 = workValue14
  workValue2 = workValue2()
  workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator, workValue2 = workValue12(workValue13, health, hashValue2, numberValue, dataTable, iterator, workValue2)
  hashValue(workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator, workValue2)
  hashValue = dataTable3
  hashValue = hashValue[arg1]
  if not hashValue then
    hashValue = dataTable3
    workValue12 = {}
    workValue12.weaponHash = arg2
    workValue12.ammo = 0
    workValue13 = GetFrameCount
    workValue13 = workValue13()
    workValue12.setFrame = workValue13
    hashValue[arg1] = workValue12
    hashValue = cmgCall5
    workValue12 = arg1
    workValue13 = 0
    hashValue(workValue12, workValue13)
  end
  textValue3 = arg5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d962c43598".
eventRegistration2(textValue, workValue)
eventRegistration2 = RegisterNetEvent
textValue = "ae100d6cc6"
-- Beginner: this function handles network event "ae100d6cc6".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2, arg3) ===
function workValue(arg1, arg2, arg3)
  local arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable
  arg4 = RemoveWeaponFromPed
  arg5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  hashValue = GetHashKey
  workValue12 = arg1
  hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable = hashValue(workValue12)
  arg4(arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
  arg4 = dataTable2
  arg5 = string
  arg5 = arg5.format
  hashValue = "removeWeaponStore(%s, %s, %s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  workValue12 = arg1
  workValue13 = arg2
  health = arg3
  hashValue2 = json
  hashValue2 = hashValue2.encode
  numberValue = dataTable3
  hashValue2 = hashValue2(numberValue)
  numberValue = json
  numberValue = numberValue.encode
  dataTable = CMG
  dataTable = dataTable.getWeapons
  dataTable = dataTable()
  numberValue = numberValue(dataTable)
  dataTable = workValue14
  dataTable = dataTable()
  arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable = arg5(hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
  arg4(arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
  arg4 = dataTable3
  arg4[arg1] = nil
  if arg2 then
    arg4 = SetPedAmmoByType
    arg5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg5 = arg5()
    hashValue = GetPedAmmoTypeFromWeapon
    workValue12 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workValue12 = workValue12()
    workValue13 = GetHashKey
    health = arg1
    workValue13, health, hashValue2, numberValue, dataTable = workValue13(health)
    hashValue = hashValue(workValue12, workValue13, health, hashValue2, numberValue, dataTable)
    workValue12 = 0
    arg4(arg5, hashValue, workValue12)
  end
  textValue3 = arg3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ae100d6cc6".
eventRegistration2(textValue, workValue)
eventRegistration2 = RegisterNetEvent
textValue = "51f1965821"
-- Beginner: this function handles network event "51f1965821".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3, arg4, arg5, hashValue, workValue12, workValue13
  arg2 = RemoveAllPedWeapons
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = false
  arg2(arg3, arg4)
  arg2 = dataTable2
  arg3 = string
  arg3 = arg3.format
  arg4 = "clearWeaponStore(%s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  arg5 = arg1
  hashValue = json
  hashValue = hashValue.encode
  workValue12 = dataTable3
  hashValue = hashValue(workValue12)
  workValue12 = json
  workValue12 = workValue12.encode
  workValue13 = CMG
  workValue13 = workValue13.getWeapons
  workValue13 = workValue13()
  workValue12 = workValue12(workValue13)
  workValue13 = workValue14
  workValue13 = workValue13()
  arg3, arg4, arg5, hashValue, workValue12, workValue13 = arg3(arg4, arg5, hashValue, workValue12, workValue13)
  arg2(arg3, arg4, arg5, hashValue, workValue12, workValue13)
  arg2 = {}
  dataTable3 = arg2
  textValue3 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "51f1965821".
eventRegistration2(textValue, workValue)
eventRegistration2 = {}
textValue = 911657153
eventRegistration2[textValue] = true
textValue = 1843015545
eventRegistration2[textValue] = true
textValue = 1953687840
eventRegistration2[textValue] = true
textValue = 126349499
eventRegistration2[textValue] = true
textValue = -2076048660
eventRegistration2[textValue] = true
textValue = 0

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3, arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator, workValue2
  arg2 = {}
  arg3 = cmgCall3.iterator
  arg3, arg4, arg5, hashValue = arg3()
  for workValue12, workValue13 in arg3, arg4, arg5, hashValue do
    health = workValue13[1]
    if 0 ~= health then
      health = table
      health = health.insert
      hashValue2 = arg2
      numberValue = workValue13
      health(hashValue2, numberValue)
    end
  end
  arg3 = table
  arg3 = arg3.sort
  arg4 = arg2

  -- === HELPER FUNCTION: arg5(arg12, arg22) ===
  function arg5(arg12, arg22)
    local workValue10, workValue11
    workValue10 = arg12[1]
    workValue11 = arg22[1]
    if workValue10 == workValue11 then
      workValue10 = arg12[2]
      workValue11 = arg22[2]
      workValue10 = workValue10 < workValue11
      return workValue10
    else
      workValue10 = arg12[1]
      workValue11 = arg22[1]
      workValue10 = workValue10 < workValue11
      return workValue10
    end
  end
  arg3(arg4, arg5)
  if arg1 then
    arg3 = TriggerServerEvent
    arg4 = "b46b0f245b"
    arg5 = arg2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b46b0f245b".
    arg3(arg4, arg5)
  else
    arg3 = pairs
    arg4 = arg2
    arg3, arg4, arg5, hashValue = arg3(arg4)
    for workValue12, workValue13 in arg3, arg4, arg5, hashValue do
      health = print
      hashValue2 = string
      hashValue2 = hashValue2.format
      numberValue = "[DEBUG] %s (%s) -> %s"
      dataTable = workValue13[1]
      iterator = workValue13[2]
      workValue2 = workValue13[3]
      hashValue2, numberValue, dataTable, iterator, workValue2 = hashValue2(numberValue, dataTable, iterator, workValue2)
      health(hashValue2, numberValue, dataTable, iterator, workValue2)
    end
  end
end
cmgCall2 = Citizen
cmgCall2 = cmgCall2.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable, iterator, workValue2, workValue3, flag2, flag3, workValue5
  while true do
    arg1 = CMG
    arg1 = arg1.isPlayerCustomisationSetup
    arg1 = arg1()
    if arg1 then
      break
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = Wait
  arg2 = 0
  arg1(arg2)
  while true do
    arg1 = CMG
    arg1 = arg1.getCachedWeaponStore
    arg1 = arg1()
    arg2 = GetFrameCount
    arg2 = arg2()
    arg3 = CMG
    arg3 = arg3.isPedScriptGuidChanging
    arg3 = arg3()
    if not arg3 then
      arg3 = CMG
      arg3 = arg3.isPoliceHorse
      arg3 = arg3()
    end
    arg4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg4 = arg4()
    arg5 = {}
    hashValue = pairs
    workValue12 = arg1
    hashValue, workValue12, workValue13, health = hashValue(workValue12)
    for hashValue2, numberValue in hashValue, workValue12, workValue13, health do
      dataTable = GetPedAmmoTypeFromWeapon
      iterator = arg4
      workValue2 = numberValue.weaponHash
      dataTable = dataTable(iterator, workValue2)
      if 0 ~= dataTable then
        iterator = HasPedGotWeapon
        workValue2 = arg4
        workValue3 = numberValue.weaponHash
        flag2 = false
        iterator = iterator(workValue2, workValue3, flag2)
        if iterator then
          iterator = arg5[dataTable]
          if nil == iterator then
            arg5[dataTable] = true
            iterator = arg1[hashValue2]
            iterator = iterator.setFrame
            if arg2 > iterator and not arg3 then
              iterator = CMG
              iterator = iterator.isInPaintball
              iterator = iterator()
              if not iterator then
                iterator = GetAmmoInPedWeapon
                workValue2 = arg4
                workValue3 = numberValue.weaponHash
                iterator = iterator(workValue2, workValue3)
                workValue2 = arg1[hashValue2]
                workValue2 = workValue2.ammo
                if iterator > workValue2 then
                  workValue3 = numberValue.weaponHash
                  workValue2 = eventRegistration2
                  workValue2 = workValue2[workValue3]
                  if not workValue2 then
                    workValue2 = CMG
                    workValue2 = workValue2.isAimTraining
                    workValue2 = workValue2()
                    if not workValue2 then
                      workValue2 = CMG
                      workValue2 = workValue2.inArena
                      workValue2 = workValue2()
                      if not workValue2 then
                        workValue2 = CMG
                        workValue2 = workValue2.inArenaWarmup
                        workValue2 = workValue2()
                        if not workValue2 then
                          workValue2 = TriggerServerEvent
                          workValue3 = "101039c9d0"
                          flag2 = hashValue2
                          flag3 = iterator
                          workValue5 = arg1[hashValue2]
                          workValue5 = workValue5.ammo
                          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "101039c9d0".
                          workValue2(workValue3, flag2, flag3, workValue5)
                          workValue2 = workValue
                          workValue3 = true
                          workValue2(workValue3)
                        end
                      end
                    end
                  end
                end
                if iterator >= 0 then
                  workValue2 = arg1[hashValue2]
                  workValue2.ammo = iterator
                end
              end
            end
          else
            iterator = arg1[hashValue2]
            iterator.ammo = 0
          end
        end
      end
    end
    hashValue = table
    hashValue = hashValue.contentEquals
    workValue12 = arg1
    workValue13 = cmgCall4
    hashValue = hashValue(workValue12, workValue13)
    if not hashValue then
      hashValue = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      hashValue = hashValue()
      workValue12 = textValue
      hashValue = hashValue - workValue12
      workValue12 = 5000
      if hashValue >= workValue12 then
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
              workValue12 = "7f0ac25257"
              workValue13 = arg1
              health = textValue3
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7f0ac25257".
              hashValue(workValue12, workValue13, health)
              hashValue = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              hashValue = hashValue()
              textValue = hashValue
            end
          end
        end
      end
    end
    hashValue = table
    hashValue = hashValue.copy
    workValue12 = arg1
    hashValue = hashValue(workValue12)
    cmgCall4 = hashValue
    hashValue = Wait
    workValue12 = 2000
    hashValue(workValue12)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall2(textValue2)
cmgCall2 = CMG
cmgCall2 = cmgCall2.registerCommand
textValue2 = "printweapondebug"

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2
  arg1 = workValue
  arg2 = false
  arg1(arg2)
end
flag = false
cmgCall2(textValue2, eventRegistration, flag)
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3
  arg1 = RemoveAllPedWeapons
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = false
  arg1(arg2, arg3)
end
cmgCall2.removeAllWeapons = textValue2
cmgCall2 = GetGameTimer
-- Beginner: result below is gameTimeMs.
cmgCall2 = cmgCall2()

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4
  arg1 = HasPedGotWeapon
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = -1716589765
  arg4 = false
  arg1 = arg1(arg2, arg3, arg4)
  if not arg1 then
    arg1 = HasPedGotWeapon
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = -619010992
    arg4 = false
    arg1 = arg1(arg2, arg3, arg4)
    if not arg1 then
      goto flow_label_19
    end
  end
  arg1 = false
  return arg1
  ::flow_label_19::
  arg1 = CMG
  arg1 = arg1.isHandcuffed
  arg1 = arg1()
  if arg1 then
    arg1 = false
    return arg1
  end
  arg1 = true
  return arg1
end
eventRegistration = RegisterCommand
flag = "storecurrentweapon"
-- Beginner: this function is the command handler for "storecurrentweapon".

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, arg2, arg3, arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2
  arg1 = cmgCall2
  arg1 = arg1 + 3000
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  if arg1 < arg2 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    cmgCall2 = arg1
    arg1 = textValue2
    arg1 = arg1()
    if not arg1 then
      return
    end
    arg1 = GetCurrentPedWeapon
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = 0
    arg4 = false
    arg1, arg2 = arg1(arg2, arg3, arg4)
    arg3 = cmgCall.weaponHashToModels
    arg3 = arg3[arg2]
    arg4 = TriggerServerEvent
    arg5 = "23e533401c"
    hashValue = true
    workValue12 = false
    workValue13 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "23e533401c".
    arg4(arg5, hashValue, workValue12, workValue13)
    arg4 = dataTable2
    arg5 = string
    arg5 = arg5.format
    hashValue = "forceStoreSingleWeapon(%s) cachedWeaponStore was %s getWeapons was %s ped is %s"
    workValue12 = arg3
    workValue13 = json
    workValue13 = workValue13.encode
    health = dataTable3
    workValue13 = workValue13(health)
    health = json
    health = health.encode
    hashValue2 = CMG
    hashValue2 = hashValue2.getWeapons
    hashValue2 = hashValue2()
    health = health(hashValue2)
    hashValue2 = workValue14
    hashValue2 = hashValue2()
    arg5, hashValue, workValue12, workValue13, health, hashValue2 = arg5(hashValue, workValue12, workValue13, health, hashValue2)
    arg4(arg5, hashValue, workValue12, workValue13, health, hashValue2)
  else
    arg1 = tCMG
    arg1 = arg1.notify
    arg2 = "~r~Store weapons cooldown, please wait."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
  end
end
flag4 = false
-- Beginner: Register a chat/console command. Event/command: "storecurrentweapon".
eventRegistration(flag, workValue4, flag4)
eventRegistration = RegisterCommand
flag = "storeallweapons"
-- Beginner: this function is the command handler for "storeallweapons".

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, arg2, arg3, arg4, arg5, hashValue
  arg1 = cmgCall2
  arg1 = arg1 + 3000
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  if arg1 < arg2 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    cmgCall2 = arg1
    arg1 = textValue2
    arg1 = arg1()
    if not arg1 then
      return
    end
    arg1 = TriggerServerEvent
    arg2 = "868d29c333"
    arg3 = true
    arg4 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "868d29c333".
    arg1(arg2, arg3, arg4)
    arg1 = dataTable2
    arg2 = string
    arg2 = arg2.format
    arg3 = "forceStoreWeapons() cachedWeaponStore was %s getWeapons was %s ped is %s"
    arg4 = json
    arg4 = arg4.encode
    arg5 = dataTable3
    arg4 = arg4(arg5)
    arg5 = json
    arg5 = arg5.encode
    hashValue = CMG
    hashValue = hashValue.getWeapons
    hashValue = hashValue()
    arg5 = arg5(hashValue)
    hashValue = workValue14
    hashValue = hashValue()
    arg2, arg3, arg4, arg5, hashValue = arg2(arg3, arg4, arg5, hashValue)
    arg1(arg2, arg3, arg4, arg5, hashValue)
  else
    arg1 = tCMG
    arg1 = arg1.notify
    arg2 = "~r~Store weapons cooldown, please wait."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
  end
end
flag4 = false
-- Beginner: Register a chat/console command. Event/command: "storeallweapons".
eventRegistration(flag, workValue4, flag4)
eventRegistration = RegisterNetEvent
flag = "cd72e00d12"
-- Beginner: this function handles network event "cd72e00d12".

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1, arg2, arg3) ===
function workValue4(arg1, arg2, arg3)
  local arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable
  arg4 = dataTable2
  arg5 = string
  arg5 = arg5.format
  hashValue = "addStoredAmmo(%s, %s, %s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  workValue12 = arg1
  workValue13 = arg2
  health = arg3
  hashValue2 = json
  hashValue2 = hashValue2.encode
  numberValue = dataTable3
  hashValue2 = hashValue2(numberValue)
  numberValue = json
  numberValue = numberValue.encode
  dataTable = CMG
  dataTable = dataTable.getWeapons
  dataTable = dataTable()
  numberValue = numberValue(dataTable)
  dataTable = workValue14
  dataTable = dataTable()
  arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable = arg5(hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
  arg4(arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
  arg4 = dataTable3
  arg4 = arg4[arg1]
  if arg4 then
    arg4 = dataTable3
    arg4 = arg4[arg1]
    arg5 = dataTable3
    arg5 = arg5[arg1]
    arg5 = arg5.ammo
    arg5 = arg5 + arg2
    arg4.ammo = arg5
    arg4 = dataTable3
    arg4 = arg4[arg1]
    arg5 = GetFrameCount
    arg5 = arg5()
    arg4.setFrame = arg5
  else
    arg4 = CMG
    arg4 = arg4.logError
    arg5 = "cd72e00d12"
    hashValue = "Failed to add "
    workValue12 = tostring
    workValue13 = arg2
    workValue12 = workValue12(workValue13)
    workValue13 = " ammo to "
    health = arg1
    hashValue = hashValue .. workValue12 .. workValue13 .. health
    workValue12 = json
    workValue12 = workValue12.encode
    workValue13 = dataTable3
    workValue12 = workValue12(workValue13)
    if not workValue12 then
      workValue12 = ""
    end
    arg4(arg5, hashValue, workValue12)
  end
  textValue3 = arg3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cd72e00d12".
eventRegistration(flag, workValue4)
eventRegistration = RegisterNetEvent
flag = "6af7c62f30"
-- Beginner: this function handles network event "6af7c62f30".

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1, arg2, arg3) ===
function workValue4(arg1, arg2, arg3)
  local arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable
  arg4 = SetPedAmmo
  arg5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  hashValue = GetHashKey
  workValue12 = arg1
  -- Beginner: result below is hash.
  hashValue = hashValue(workValue12)
  workValue12 = math
  workValue12 = workValue12.floor
  workValue13 = arg2
  workValue12, workValue13, health, hashValue2, numberValue, dataTable = workValue12(workValue13)
  arg4(arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
  arg4 = dataTable2
  arg5 = string
  arg5 = arg5.format
  hashValue = "setStoredAmmo(%s, %s, %s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  workValue12 = arg1
  workValue13 = arg2
  health = arg3
  hashValue2 = json
  hashValue2 = hashValue2.encode
  numberValue = dataTable3
  hashValue2 = hashValue2(numberValue)
  numberValue = json
  numberValue = numberValue.encode
  dataTable = CMG
  dataTable = dataTable.getWeapons
  dataTable = dataTable()
  numberValue = numberValue(dataTable)
  dataTable = workValue14
  dataTable = dataTable()
  arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable = arg5(hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
  arg4(arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
  arg4 = dataTable3
  arg4 = arg4[arg1]
  if arg4 then
    arg4 = cmgCall5
    arg5 = arg1
    hashValue = arg2
    arg4(arg5, hashValue)
  else
    arg4 = CMG
    arg4 = arg4.logError
    arg5 = "6af7c62f30"
    hashValue = "Failed to set the ammo of "
    workValue12 = arg1
    workValue13 = " to "
    health = tostring
    hashValue2 = arg2
    health = health(hashValue2)
    hashValue = hashValue .. workValue12 .. workValue13 .. health
    workValue12 = json
    workValue12 = workValue12.encode
    workValue13 = dataTable3
    workValue12 = workValue12(workValue13)
    if not workValue12 then
      workValue12 = ""
    end
    arg4(arg5, hashValue, workValue12)
  end
  textValue3 = arg3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6af7c62f30".
eventRegistration(flag, workValue4)
eventRegistration = AddEventHandler
flag = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local arg2, arg3, arg4
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = RemoveAllPedWeapons
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    arg4 = true
    arg2(arg3, arg4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventRegistration(flag, workValue4)
eventRegistration = RegisterNetEvent
flag = "4d5264442d"
-- Beginner: this function handles network event "4d5264442d".

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1, arg2) ===
function workValue4(arg1, arg2)
  local arg3, arg4, arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = IsEntityDead
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = print
    arg5 = string
    arg5 = arg5.format
    hashValue = "[Headshot Fix] Ignoring, local player is already dead."
    workValue12 = arg1
    arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable = arg5(hashValue, workValue12)
    arg4(arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
    return
  end
  arg4 = select
  arg5 = 2
  hashValue = GetEntityProofs
  workValue12 = arg3
  hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable = hashValue(workValue12)
  arg4 = arg4(arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
  if 1 ~= arg4 then
    arg4 = GetEntityCanBeDamaged
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = GetPlayerInvincible
      arg5 = PlayerId
      arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable = arg5()
      arg4 = arg4(arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
      if not arg4 then
        goto flow_label_43
      end
    end
  end
  arg4 = print
  arg5 = string
  arg5 = arg5.format
  hashValue = "[Headshot Fix] Ignoring, local player can not be damaged."
  workValue12 = arg1
  arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable = arg5(hashValue, workValue12)
  arg4(arg5, hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
  return
  ::flow_label_43::
  arg4 = GetPlayerFromServerId
  arg5 = arg1
  -- Beginner: result below is playerIndex.
  arg4 = arg4(arg5)
  if -1 == arg4 then
    arg5 = print
    hashValue = string
    hashValue = hashValue.format
    workValue12 = "[Headshot Fix] Could not find attacker player index. Player source was %s."
    workValue13 = arg1
    hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable = hashValue(workValue12, workValue13)
    arg5(hashValue, workValue12, workValue13, health, hashValue2, numberValue, dataTable)
    return
  end
  arg5 = GetPlayerPed
  hashValue = arg4
  -- Beginner: result below is playerPed.
  arg5 = arg5(hashValue)
  if 0 == arg5 then
    hashValue = print
    workValue12 = string
    workValue12 = workValue12.format
    workValue13 = "[Headshot Fix] Could not find attacker player ped. Player source was %s, player index was %s."
    health = arg1
    hashValue2 = arg4
    workValue12, workValue13, health, hashValue2, numberValue, dataTable = workValue12(workValue13, health, hashValue2)
    hashValue(workValue12, workValue13, health, hashValue2, numberValue, dataTable)
    return
  end
  hashValue = CMG
  hashValue = hashValue.setPedAndWeaponKilledByOverride
  workValue12 = arg5
  workValue13 = GetHashKey
  health = arg2
  -- Beginner: result below is hash.
  workValue13 = workValue13(health)
  health = true
  hashValue(workValue12, workValue13, health)
  hashValue = ApplyDamageToPed
  workValue12 = arg3
  workValue13 = 500
  health = true
  hashValue(workValue12, workValue13, health)
  hashValue = print
  workValue12 = string
  workValue12 = workValue12.format
  workValue13 = "[Headshot Fix] Attacking local player with a %s. Player source was %s, player index was %s, player ped was %s."
  health = arg2
  hashValue2 = arg1
  numberValue = arg4
  dataTable = arg5
  workValue12, workValue13, health, hashValue2, numberValue, dataTable = workValue12(workValue13, health, hashValue2, numberValue, dataTable)
  hashValue(workValue12, workValue13, health, hashValue2, numberValue, dataTable)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4d5264442d".
eventRegistration(flag, workValue4)
