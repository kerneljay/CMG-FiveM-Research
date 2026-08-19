--[[
    LEVEL 1 BEGINNER GUIDE — Takehostage
    =========================================

    File: cmg/prod/client/misc/cl_takehostage.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Takehostage feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 15
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
local dataCollection, cmgOperation, backgroundThread, workingValue3, workingValue4, workingValue5, eventHandler, text2, cmgOperation2, stateFlag6, text
dataCollection = {}
cmgOperation = {}
dataCollection.allowedWeapons = cmgOperation
dataCollection.InProgress = false
dataCollection.startTime = 0
dataCollection.type = ""
dataCollection.targetSrc = -1
cmgOperation = {}
cmgOperation.animDict = "anim@gangops@hostage@"
cmgOperation.anim = "perp_idle"
cmgOperation.stateFlag = 49
dataCollection.agressor = cmgOperation
cmgOperation = {}
cmgOperation.animDict = "anim@gangops@hostage@"
cmgOperation.anim = "victim_idle"
cmgOperation.attachX = -0.24
cmgOperation.attachY = 0.11
cmgOperation.attachZ = 0.0
cmgOperation.stateFlag = 49
dataCollection.hostage = cmgOperation
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
backgroundThread = "cfg/weapons"
-- Beginner: result below is config.
cmgOperation = cmgOperation(backgroundThread)
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6
  localValue1 = pairs
  workingValue2 = cmgOperation.weapons
  localValue1, workingValue2, number2, stateFlag5 = localValue1(workingValue2)
  for playerPed2, playerPed3 in localValue1, workingValue2, number2, stateFlag5 do
    tableHelper = playerPed3.class
    if "Pistol" == tableHelper then
      tableHelper = table
      tableHelper = tableHelper.insert
      playerPed4 = dataCollection.allowedWeapons
      workingValue6 = playerPed3.hash
      tableHelper(playerPed4, workingValue6)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(workingValue3)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1) ===
function backgroundThread(localValue1)
  local workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2, playerPed, coords, workingValue
  workingValue2 = GetActivePlayers
  workingValue2 = workingValue2()
  number2 = -1
  stateFlag5 = -1
  playerPed2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed2 = playerPed2()
  playerPed3 = GetEntityCoords
  tableHelper = playerPed2
  -- Beginner: result below is entityCoords.
  playerPed3 = playerPed3(tableHelper)
  tableHelper = ipairs
  playerPed4 = workingValue2
  tableHelper, playerPed4, workingValue6, stateFlag7 = tableHelper(playerPed4)
  for stateFlag, stateFlag2 in tableHelper, playerPed4, workingValue6, stateFlag7 do
    playerPed = GetPlayerPed
    coords = stateFlag2
    -- Beginner: result below is playerPed.
    playerPed = playerPed(coords)
    if playerPed ~= playerPed2 then
      coords = GetEntityCoords
      workingValue = playerPed
      -- Beginner: result below is entityCoords.
      coords = coords(workingValue)
      workingValue = coords - playerPed3
      workingValue = #workingValue
      if -1 == number2 or number2 > workingValue then
        stateFlag5 = stateFlag2
        number2 = workingValue
      end
    end
  end
  if -1 ~= number2 and localValue1 >= number2 then
    return stateFlag5
  else
    tableHelper = nil
    return tableHelper
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local workingValue2, number2
  workingValue2 = HasAnimDictLoaded
  number2 = localValue1
  workingValue2 = workingValue2(number2)
  if not workingValue2 then
    workingValue2 = RequestAnimDict
    number2 = localValue1
    workingValue2(number2)
    while true do
      workingValue2 = HasAnimDictLoaded
      number2 = localValue1
      workingValue2 = workingValue2(number2)
      if workingValue2 then
        break
      end
      workingValue2 = Wait
      number2 = 0
      workingValue2(number2)
    end
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local workingValue2, number2, stateFlag5
  workingValue2 = BeginTextCommandPrint
  number2 = "STRING"
  workingValue2(number2)
  workingValue2 = AddTextComponentSubstringPlayerName
  number2 = localValue1
  workingValue2(number2)
  workingValue2 = EndTextCommandPrint
  number2 = 1000
  stateFlag5 = true
  workingValue2(number2, stateFlag5)
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7
  localValue1 = tCMG
  localValue1 = localValue1.isInGreenzone
  workingValue2 = false
  localValue1 = localValue1(workingValue2)
  if localValue1 then
    return
  end
  localValue1 = ClearPedSecondaryTask
  workingValue2 = PlayerPedId
  workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7 = workingValue2()
  localValue1(workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7)
  localValue1 = DetachEntity
  workingValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue2 = workingValue2()
  number2 = true
  stateFlag5 = false
  localValue1(workingValue2, number2, stateFlag5)
  localValue1 = false
  workingValue2 = nil
  number2 = 1
  stateFlag5 = dataCollection.allowedWeapons
  stateFlag5 = #stateFlag5
  playerPed2 = 1
  for playerPed3 = number2, stateFlag5, playerPed2 do
    tableHelper = HasPedGotWeapon
    playerPed4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed4 = playerPed4()
    workingValue6 = dataCollection.allowedWeapons
    workingValue6 = workingValue6[playerPed3]
    stateFlag7 = false
    tableHelper = tableHelper(playerPed4, workingValue6, stateFlag7)
    if tableHelper then
      tableHelper = GetAmmoInPedWeapon
      playerPed4 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed4 = playerPed4()
      workingValue6 = dataCollection.allowedWeapons
      workingValue6 = workingValue6[playerPed3]
      tableHelper = tableHelper(playerPed4, workingValue6)
      if tableHelper > 0 then
        localValue1 = true
        tableHelper = dataCollection.allowedWeapons
        workingValue2 = tableHelper[playerPed3]
        break
      end
    end
  end
  if not localValue1 or not workingValue2 then
    number2 = drawNativeNotification
    stateFlag5 = "You need a pistol with ammo to take a hostage at gunpoint!"
    -- Beginner: Show a GTA-style notification/help prompt.
    number2(stateFlag5)
  end
  number2 = dataCollection.InProgress
  if not number2 and localValue1 and workingValue2 then
    number2 = backgroundThread
    stateFlag5 = 2
    number2 = number2(stateFlag5)
    if number2 then
      stateFlag5 = GetPlayerServerId
      playerPed2 = number2
      -- Beginner: result below is serverId.
      stateFlag5 = stateFlag5(playerPed2)
      if -1 ~= stateFlag5 then
        playerPed2 = IsEntityPlayingAnim
        playerPed3 = GetPlayerPed
        tableHelper = number2
        -- Beginner: result below is playerPed.
        playerPed3 = playerPed3(tableHelper)
        tableHelper = "missminuteman_1ig_2"
        playerPed4 = "handsup_enter"
        workingValue6 = 3
        playerPed2 = playerPed2(playerPed3, tableHelper, playerPed4, workingValue6)
        if playerPed2 then
          playerPed3 = CMG
          playerPed3 = playerPed3.setWeapon
          tableHelper = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          tableHelper = tableHelper()
          playerPed4 = workingValue2
          workingValue6 = true
          playerPed3(tableHelper, playerPed4, workingValue6)
          dataCollection.InProgress = true
          playerPed3 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          playerPed3 = playerPed3()
          dataCollection.startTime = playerPed3
          dataCollection.targetSrc = stateFlag5
          playerPed3 = TriggerServerEvent
          tableHelper = "4819e496d9"
          playerPed4 = stateFlag5
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4819e496d9".
          playerPed3(tableHelper, playerPed4)
          dataCollection.type = "agressor"
        else
          playerPed3 = drawNativeNotification
          tableHelper = "Player must have his hands up!"
          -- Beginner: Show a GTA-style notification/help prompt.
          playerPed3(tableHelper)
        end
      else
        playerPed2 = drawNativeNotification
        playerPed3 = "~r~No one nearby to take as hostage!"
        playerPed2(playerPed3)
      end
    else
      stateFlag5 = drawNativeNotification
      playerPed2 = "~r~No one nearby to take as hostage!"
      -- Beginner: Show a GTA-style notification/help prompt.
      stateFlag5(playerPed2)
    end
  end
end
eventHandler = RegisterCommand
text2 = "takehostage"
-- Beginner: this function is the command handler for "takehostage".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, workingValue2
  localValue1 = workingValue5
  localValue1()
end
stateFlag6 = false
-- Beginner: Register a chat/console command. Event/command: "takehostage".
eventHandler(text2, cmgOperation2, stateFlag6)
eventHandler = RegisterCommand
text2 = "th"
-- Beginner: this function is the command handler for "th".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, workingValue2
  localValue1 = workingValue5
  localValue1()
end
stateFlag6 = false
-- Beginner: Register a chat/console command. Event/command: "th".
eventHandler(text2, cmgOperation2, stateFlag6)
eventHandler = RegisterNetEvent
text2 = "a44fcfdd31"
-- Beginner: this function handles network event "a44fcfdd31".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2, playerPed, coords, workingValue, stateFlag3, number, stateFlag4
  workingValue2 = GetPlayerPed
  number2 = GetPlayerFromServerId
  stateFlag5 = localValue1
  number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2, playerPed, coords, workingValue, stateFlag3, number, stateFlag4 = number2(stateFlag5)
  -- Beginner: result below is playerPed.
  workingValue2 = workingValue2(number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2, playerPed, coords, workingValue, stateFlag3, number, stateFlag4)
  dataCollection.InProgress = true
  number2 = AttachEntityToEntity
  stateFlag5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stateFlag5 = stateFlag5()
  playerPed2 = workingValue2
  playerPed3 = 0
  tableHelper = dataCollection.hostage
  tableHelper = tableHelper.attachX
  playerPed4 = dataCollection.hostage
  playerPed4 = playerPed4.attachY
  workingValue6 = dataCollection.hostage
  workingValue6 = workingValue6.attachZ
  stateFlag7 = 0.5
  stateFlag = 0.5
  stateFlag2 = 0.0
  playerPed = false
  coords = false
  workingValue = false
  stateFlag3 = false
  number = 2
  stateFlag4 = false
  -- Beginner: Attach one entity to another entity.
  number2(stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2, playerPed, coords, workingValue, stateFlag3, number, stateFlag4)
  dataCollection.type = "hostage"
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a44fcfdd31".
eventHandler(text2, cmgOperation2)
eventHandler = RegisterNetEvent
text2 = "61a80b5faf"
-- Beginner: this function handles network event "61a80b5faf".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2
  dataCollection.InProgress = false
  dataCollection.type = ""
  localValue1 = DetachEntity
  workingValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue2 = workingValue2()
  number2 = true
  stateFlag5 = false
  localValue1(workingValue2, number2, stateFlag5)
  localValue1 = workingValue3
  workingValue2 = "reaction@shove"
  localValue1(workingValue2)
  localValue1 = TaskPlayAnim
  workingValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue2 = workingValue2()
  number2 = "reaction@shove"
  stateFlag5 = "shoved_back"
  playerPed2 = 8.0
  playerPed3 = -8.0
  tableHelper = -1
  playerPed4 = 0
  workingValue6 = 0
  stateFlag7 = false
  stateFlag = false
  stateFlag2 = false
  -- Beginner: Play an animation on a ped.
  localValue1(workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2)
  localValue1 = RemoveAnimDict
  workingValue2 = "reaction@shove"
  localValue1(workingValue2)
  localValue1 = Wait
  workingValue2 = 250
  localValue1(workingValue2)
  localValue1 = ClearPedSecondaryTask
  workingValue2 = PlayerPedId
  workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2 = workingValue2()
  localValue1(workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "61a80b5faf".
eventHandler(text2, cmgOperation2)
eventHandler = RegisterNetEvent
text2 = "f9b5306773"
-- Beginner: this function handles network event "f9b5306773".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2
  dataCollection.InProgress = false
  dataCollection.type = ""
  localValue1 = SetEntityHealth
  workingValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue2 = workingValue2()
  number2 = 0
  localValue1(workingValue2, number2)
  localValue1 = DetachEntity
  workingValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue2 = workingValue2()
  number2 = true
  stateFlag5 = false
  localValue1(workingValue2, number2, stateFlag5)
  localValue1 = workingValue3
  workingValue2 = "anim@gangops@hostage@"
  localValue1(workingValue2)
  localValue1 = TaskPlayAnim
  workingValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue2 = workingValue2()
  number2 = "anim@gangops@hostage@"
  stateFlag5 = "victim_fail"
  playerPed2 = 8.0
  playerPed3 = -8.0
  tableHelper = -1
  playerPed4 = 168
  workingValue6 = 0
  stateFlag7 = false
  stateFlag = false
  stateFlag2 = false
  -- Beginner: Play an animation on a ped.
  localValue1(workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2)
  localValue1 = RemoveAnimDict
  workingValue2 = "anim@gangops@hostage@"
  localValue1(workingValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9b5306773".
eventHandler(text2, cmgOperation2)
eventHandler = RegisterNetEvent
text2 = "1283193220"
-- Beginner: this function handles network event "1283193220".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, workingValue2, number2, stateFlag5
  dataCollection.InProgress = false
  dataCollection.type = ""
  localValue1 = ClearPedSecondaryTask
  workingValue2 = PlayerPedId
  workingValue2, number2, stateFlag5 = workingValue2()
  localValue1(workingValue2, number2, stateFlag5)
  localValue1 = DetachEntity
  workingValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue2 = workingValue2()
  number2 = true
  stateFlag5 = false
  localValue1(workingValue2, number2, stateFlag5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1283193220".
eventHandler(text2, cmgOperation2)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2
  localValue1 = dataCollection.type
  if "agressor" == localValue1 then
    localValue1 = IsEntityPlayingAnim
    workingValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workingValue2 = workingValue2()
    number2 = dataCollection.agressor
    number2 = number2.animDict
    stateFlag5 = dataCollection.agressor
    stateFlag5 = stateFlag5.anim
    playerPed2 = 3
    localValue1 = localValue1(workingValue2, number2, stateFlag5, playerPed2)
    if not localValue1 then
      localValue1 = workingValue3
      workingValue2 = dataCollection.agressor
      workingValue2 = workingValue2.animDict
      localValue1(workingValue2)
      localValue1 = TaskPlayAnim
      workingValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workingValue2 = workingValue2()
      number2 = dataCollection.agressor
      number2 = number2.animDict
      stateFlag5 = dataCollection.agressor
      stateFlag5 = stateFlag5.anim
      playerPed2 = 8.0
      playerPed3 = -8.0
      tableHelper = 100000
      playerPed4 = dataCollection.agressor
      playerPed4 = playerPed4.stateFlag
      workingValue6 = 0
      stateFlag7 = false
      stateFlag = false
      stateFlag2 = false
      -- Beginner: Play an animation on a ped.
      localValue1(workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2)
      localValue1 = RemoveAnimDict
      workingValue2 = dataCollection.agressor
      workingValue2 = workingValue2.animDict
      localValue1(workingValue2)
    end
  else
    localValue1 = dataCollection.type
    if "hostage" == localValue1 then
      localValue1 = IsEntityPlayingAnim
      workingValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workingValue2 = workingValue2()
      number2 = dataCollection.hostage
      number2 = number2.animDict
      stateFlag5 = dataCollection.hostage
      stateFlag5 = stateFlag5.anim
      playerPed2 = 3
      localValue1 = localValue1(workingValue2, number2, stateFlag5, playerPed2)
      if not localValue1 then
        localValue1 = workingValue3
        workingValue2 = dataCollection.hostage
        workingValue2 = workingValue2.animDict
        localValue1(workingValue2)
        localValue1 = TaskPlayAnim
        workingValue2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        workingValue2 = workingValue2()
        number2 = dataCollection.hostage
        number2 = number2.animDict
        stateFlag5 = dataCollection.hostage
        stateFlag5 = stateFlag5.anim
        playerPed2 = 8.0
        playerPed3 = -8.0
        tableHelper = 100000
        playerPed4 = dataCollection.hostage
        playerPed4 = playerPed4.stateFlag
        workingValue6 = 0
        stateFlag7 = false
        stateFlag = false
        stateFlag2 = false
        -- Beginner: Play an animation on a ped.
        localValue1(workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2)
        localValue1 = RemoveAnimDict
        workingValue2 = dataCollection.hostage
        workingValue2 = workingValue2.animDict
        localValue1(workingValue2)
      end
    end
  end
end
text2 = CMG
text2 = text2.createThreadOnTick
cmgOperation2 = eventHandler
stateFlag6 = "Hostage Animation"
-- Beginner: Run a helper every game frame while this script is active.
text2(cmgOperation2, stateFlag6)

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2
  localValue1 = dataCollection.type
  if "agressor" == localValue1 then
    localValue1 = DisableControlAction
    workingValue2 = 0
    number2 = 24
    stateFlag5 = true
    localValue1(workingValue2, number2, stateFlag5)
    localValue1 = DisableControlAction
    workingValue2 = 0
    number2 = 25
    stateFlag5 = true
    localValue1(workingValue2, number2, stateFlag5)
    localValue1 = DisableControlAction
    workingValue2 = 0
    number2 = 47
    stateFlag5 = true
    localValue1(workingValue2, number2, stateFlag5)
    localValue1 = DisableControlAction
    workingValue2 = 0
    number2 = 58
    stateFlag5 = true
    localValue1(workingValue2, number2, stateFlag5)
    localValue1 = DisableControlAction
    workingValue2 = 0
    number2 = 21
    stateFlag5 = true
    localValue1(workingValue2, number2, stateFlag5)
    localValue1 = DisablePlayerFiring
    workingValue2 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    workingValue2 = workingValue2()
    number2 = true
    localValue1(workingValue2, number2)
    localValue1 = workingValue4
    workingValue2 = "Press [G] to release, [H] to kill"
    localValue1(workingValue2)
    localValue1 = IsEntityDead
    workingValue2 = PlayerPedId
    workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2 = workingValue2()
    localValue1 = localValue1(workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2)
    if localValue1 then
      dataCollection.type = ""
      dataCollection.InProgress = false
      localValue1 = workingValue3
      workingValue2 = "reaction@shove"
      localValue1(workingValue2)
      localValue1 = TaskPlayAnim
      workingValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workingValue2 = workingValue2()
      number2 = "reaction@shove"
      stateFlag5 = "shove_var_a"
      playerPed2 = 8.0
      playerPed3 = -8.0
      tableHelper = -1
      playerPed4 = 168
      workingValue6 = 0
      stateFlag7 = false
      stateFlag = false
      stateFlag2 = false
      -- Beginner: Play an animation on a ped.
      localValue1(workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2)
      localValue1 = RemoveAnimDict
      workingValue2 = "reaction@shove"
      localValue1(workingValue2)
      localValue1 = TriggerServerEvent
      workingValue2 = "61a80b5faf"
      number2 = dataCollection.targetSrc
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "61a80b5faf".
      localValue1(workingValue2, number2)
    end
    localValue1 = IsDisabledControlJustPressed
    workingValue2 = 0
    number2 = 47
    localValue1 = localValue1(workingValue2, number2)
    if localValue1 then
      dataCollection.type = ""
      dataCollection.InProgress = false
      localValue1 = workingValue3
      workingValue2 = "reaction@shove"
      localValue1(workingValue2)
      localValue1 = TaskPlayAnim
      workingValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workingValue2 = workingValue2()
      number2 = "reaction@shove"
      stateFlag5 = "shove_var_a"
      playerPed2 = 8.0
      playerPed3 = -8.0
      tableHelper = -1
      playerPed4 = 168
      workingValue6 = 0
      stateFlag7 = false
      stateFlag = false
      stateFlag2 = false
      -- Beginner: Play an animation on a ped.
      localValue1(workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2)
      localValue1 = RemoveAnimDict
      workingValue2 = "reaction@shove"
      localValue1(workingValue2)
      localValue1 = TriggerServerEvent
      workingValue2 = "61a80b5faf"
      number2 = dataCollection.targetSrc
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "61a80b5faf".
      localValue1(workingValue2, number2)
    else
      localValue1 = IsDisabledControlJustPressed
      workingValue2 = 0
      number2 = 74
      localValue1 = localValue1(workingValue2, number2)
      if localValue1 then
        localValue1 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue1 = localValue1()
        workingValue2 = dataCollection.startTime
        localValue1 = localValue1 - workingValue2
        workingValue2 = 4000
        if localValue1 > workingValue2 then
          dataCollection.type = ""
          dataCollection.InProgress = false
          localValue1 = workingValue3
          workingValue2 = "anim@gangops@hostage@"
          localValue1(workingValue2)
          localValue1 = TaskPlayAnim
          workingValue2 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workingValue2 = workingValue2()
          number2 = "anim@gangops@hostage@"
          stateFlag5 = "perp_fail"
          playerPed2 = 8.0
          playerPed3 = -8.0
          tableHelper = -1
          playerPed4 = 168
          workingValue6 = 0
          stateFlag7 = false
          stateFlag = false
          stateFlag2 = false
          -- Beginner: Play an animation on a ped.
          localValue1(workingValue2, number2, stateFlag5, playerPed2, playerPed3, tableHelper, playerPed4, workingValue6, stateFlag7, stateFlag, stateFlag2)
          localValue1 = RemoveAnimDict
          workingValue2 = "anim@gangops@hostage@"
          localValue1(workingValue2)
          localValue1 = TriggerServerEvent
          workingValue2 = "f9b5306773"
          number2 = dataCollection.targetSrc
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9b5306773".
          localValue1(workingValue2, number2)
          localValue1 = Wait
          workingValue2 = 100
          localValue1(workingValue2)
          localValue1 = SetPedShootsAtCoord
          workingValue2 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workingValue2 = workingValue2()
          number2 = 0.0
          stateFlag5 = 0.0
          playerPed2 = 0.0
          playerPed3 = false
          localValue1(workingValue2, number2, stateFlag5, playerPed2, playerPed3)
        end
      end
    end
  else
    localValue1 = dataCollection.type
    if "hostage" == localValue1 then
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 21
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 24
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 25
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 47
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 58
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 263
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 264
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 257
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 140
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 141
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 142
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 143
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 75
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 27
      number2 = 75
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 22
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 32
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 268
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 33
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 269
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 34
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 270
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 35
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
      localValue1 = DisableControlAction
      workingValue2 = 0
      number2 = 271
      stateFlag5 = true
      localValue1(workingValue2, number2, stateFlag5)
    end
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
stateFlag6 = text2
text = "Host Animations"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(stateFlag6, text)
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: none) ===
function stateFlag6()
  local localValue1, workingValue2
  localValue1 = dataCollection.InProgress
  return localValue1
end
cmgOperation2.takeHostageInProgress = stateFlag6
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: none) ===
function stateFlag6()
  local localValue1, workingValue2
  localValue1 = dataCollection.targetSrc
  workingValue2 = dataCollection.type
  return localValue1, workingValue2
end
cmgOperation2.getTakeHostagePlayerAndType = stateFlag6
