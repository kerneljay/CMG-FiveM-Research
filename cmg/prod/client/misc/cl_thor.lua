--[[
    LEVEL 1 BEGINNER GUIDE — Thor
    ==================================

    File: cmg/prod/client/misc/cl_thor.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Thor feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 6
      * Background threads: 0
      * Always-running loops: 7
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
local workingValue, cmgOperation, text, workingValue5, stateFlag11

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, stateFlag10, playerPed2, playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2
  localValue2 = GetActivePlayers
  localValue2 = localValue2()
  stateFlag10 = -1
  playerPed2 = -1
  playerPed3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed3 = playerPed3()
  coords2 = GetEntityCoords
  iterator = playerPed3
  -- Beginner: result below is entityCoords.
  coords2 = coords2(iterator)
  iterator = ipairs
  number5 = localValue2
  iterator, number5, waitCall, tableHelper = iterator(number5)
  for stateFlag, createVector3 in iterator, number5, waitCall, tableHelper do
    playerPed = GetPlayerPed
    coords = createVector3
    -- Beginner: result below is playerPed.
    playerPed = playerPed(coords)
    if playerPed ~= playerPed3 then
      coords = GetEntityCoords
      workingValue2 = playerPed
      -- Beginner: result below is entityCoords.
      coords = coords(workingValue2)
      workingValue2 = coords - coords2
      workingValue2 = #workingValue2
      if -1 == stateFlag10 or stateFlag10 > workingValue2 then
        playerPed2 = createVector3
        stateFlag10 = workingValue2
      end
    end
  end
  if -1 ~= stateFlag10 and localValue1 >= stateFlag10 then
    return playerPed2
  else
    iterator = nil
    return iterator
  end
end
cmgOperation = RegisterNetEvent
text = "c714651523"
-- Beginner: this function handles network event "c714651523".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, stateFlag10, playerPed2, playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3
  localValue1 = FreezeEntityPosition
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  stateFlag10 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue1(localValue2, stateFlag10)
  localValue1 = Wait
  localValue2 = 2500
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.loadAnimDict
  localValue2 = "ragdoll@human"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue1(localValue2)
  localValue1 = TaskPlayAnim
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  stateFlag10 = "ragdoll@human"
  playerPed2 = "electrocute"
  playerPed3 = 3.0
  coords2 = 1.0
  iterator = -1
  number5 = 1
  waitCall = 0
  tableHelper = false
  stateFlag = false
  createVector3 = false
  -- Beginner: Play an animation on a ped.
  localValue1(localValue2, stateFlag10, playerPed2, playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3)
  localValue1 = RemoveAnimDict
  localValue2 = "ragdoll@human"
  localValue1(localValue2)
  localValue1 = Wait
  localValue2 = 5000
  localValue1(localValue2)
  localValue1 = SetEntityHealth
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  stateFlag10 = 0
  localValue1(localValue2, stateFlag10)
  localValue1 = FreezeEntityPosition
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  stateFlag10 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue1(localValue2, stateFlag10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c714651523".
cmgOperation(text, workingValue5)
cmgOperation = RegisterNetEvent
text = "b96db67b48"
-- Beginner: this function handles network event "b96db67b48".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local stateFlag10, playerPed2, playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6
  stateFlag10 = GetEntityCoords
  playerPed2 = PlayerPedId
  playerPed2, playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6 = playerPed2()
  -- Beginner: result below is entityCoords.
  stateFlag10 = stateFlag10(playerPed2, playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
  stateFlag10 = localValue1 - stateFlag10
  stateFlag10 = #stateFlag10
  if stateFlag10 < 25.0 then
    stateFlag10 = SendNUIMessage
    playerPed2 = {}
    playerPed2.transactionType = "ulimitedpower"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    stateFlag10(playerPed2)
    stateFlag10 = {}
    playerPed2 = 0
    playerPed3 = localValue2 - localValue1
    coords2 = 1
    iterator = 10
    number5 = 1
    for waitCall = coords2, iterator, number5 do
      tableHelper = table
      tableHelper = tableHelper.insert
      stateFlag = stateFlag10
      createVector3 = vector3
      playerPed = playerPed3.x
      playerPed = playerPed / 10
      playerPed = playerPed * waitCall
      coords = playerPed3.y
      coords = coords / 10
      coords = coords * waitCall
      workingValue2 = playerPed3.z
      workingValue2 = workingValue2 / 10
      workingValue2 = workingValue2 * waitCall
      createVector3 = createVector3(playerPed, coords, workingValue2)
      createVector3 = localValue1 + createVector3
      tableHelper(stateFlag, createVector3)
    end
    coords2 = {}
    iterator = pairs
    number5 = stateFlag10
    iterator, number5, waitCall, tableHelper = iterator(number5)
    for stateFlag, createVector3 in iterator, number5, waitCall, tableHelper do
      playerPed = UseParticleFxAsset
      coords = "core"
      playerPed(coords)
      playerPed = StartParticleFxLoopedAtCoord
      coords = "ent_dst_elec_crackle"
      workingValue2 = createVector3.x
      workingValue3 = createVector3.y
      workingValue4 = createVector3.z
      number = 0.0
      number2 = 0.0
      number3 = 0.0
      number4 = 1.2
      stateFlag2 = false
      stateFlag3 = false
      stateFlag4 = false
      stateFlag5 = false
      playerPed = playerPed(coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5)
      coords = table
      coords = coords.insert
      workingValue2 = coords2
      workingValue3 = playerPed
      coords(workingValue2, workingValue3)
    end
    while true do
      iterator = 150
      if not (playerPed2 < iterator) then
        break
      end
      playerPed2 = playerPed2 + 1
      iterator = pairs
      number5 = stateFlag10
      iterator, number5, waitCall, tableHelper = iterator(number5)
      for stateFlag, createVector3 in iterator, number5, waitCall, tableHelper do
        playerPed = UseParticleFxAsset
        coords = "core"
        playerPed(coords)
        playerPed = StartParticleFxLoopedAtCoord
        coords = "sp_foundry_sparks"
        workingValue2 = createVector3.x
        workingValue3 = createVector3.y
        workingValue4 = createVector3.z
        number = 90.0
        number2 = 0.0
        number3 = 0.0
        number4 = 0.3
        stateFlag2 = false
        stateFlag3 = false
        stateFlag4 = false
        stateFlag5 = false
        playerPed = playerPed(coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5)
        coords = UseParticleFxAsset
        workingValue2 = "core"
        coords(workingValue2)
        coords = StartParticleFxLoopedAtCoord
        workingValue2 = "ent_dst_elec_fire_sp"
        workingValue3 = createVector3.x
        workingValue4 = createVector3.y
        number = createVector3.z
        number2 = 0.0
        number3 = 0.0
        number4 = 0.0
        stateFlag2 = 1.0
        stateFlag3 = false
        stateFlag4 = false
        stateFlag5 = false
        stateFlag6 = false
        coords = coords(workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
        workingValue2 = table
        workingValue2 = workingValue2.insert
        workingValue3 = coords2
        workingValue4 = playerPed
        workingValue2(workingValue3, workingValue4)
        workingValue2 = table
        workingValue2 = workingValue2.insert
        workingValue3 = coords2
        workingValue4 = coords
        workingValue2(workingValue3, workingValue4)
      end
      iterator = Wait
      number5 = 50
      iterator(number5)
      iterator = pairs
      number5 = coords2
      iterator, number5, waitCall, tableHelper = iterator(number5)
      for stateFlag, createVector3 in iterator, number5, waitCall, tableHelper do
        playerPed = RemoveParticleFx
        coords = createVector3
        workingValue2 = false
        playerPed(coords, workingValue2)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b96db67b48".
cmgOperation(text, workingValue5)
cmgOperation = RegisterNetEvent
text = "63b35ed831"
-- Beginner: this function handles network event "63b35ed831".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local stateFlag10, playerPed2, playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7
  stateFlag10 = GetEntityCoords
  playerPed2 = PlayerPedId
  playerPed2, playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7 = playerPed2()
  -- Beginner: result below is entityCoords.
  stateFlag10 = stateFlag10(playerPed2, playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
  stateFlag10 = localValue1 - stateFlag10
  stateFlag10 = #stateFlag10
  if stateFlag10 < 25.0 then
    stateFlag10 = {}
    playerPed2 = 0
    playerPed3 = localValue2 - localValue1
    coords2 = 1
    iterator = 10
    number5 = 1
    for waitCall = coords2, iterator, number5 do
      tableHelper = table
      tableHelper = tableHelper.insert
      stateFlag = stateFlag10
      createVector3 = vector3
      playerPed = playerPed3.x
      playerPed = playerPed / 10
      playerPed = playerPed * waitCall
      coords = playerPed3.y
      coords = coords / 10
      coords = coords * waitCall
      workingValue2 = playerPed3.z
      workingValue2 = workingValue2 / 10
      workingValue2 = workingValue2 * waitCall
      createVector3 = createVector3(playerPed, coords, workingValue2)
      createVector3 = localValue1 + createVector3
      tableHelper(stateFlag, createVector3)
    end
    coords2 = CMG
    coords2 = coords2.loadPtfx
    iterator = "core"
    coords2(iterator)
    coords2 = CMG
    coords2 = coords2.loadPtfx
    iterator = "scr_fbi3"
    coords2(iterator)
    coords2 = SendNUIMessage
    iterator = {}
    iterator.transactionType = "wrathofgod"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    coords2(iterator)
    coords2 = {}
    iterator = {}
    number5 = {}
    waitCall = pairs
    tableHelper = stateFlag10
    waitCall, tableHelper, stateFlag, createVector3 = waitCall(tableHelper)
    for playerPed, coords in waitCall, tableHelper, stateFlag, createVector3 do
      workingValue2 = UseParticleFxAsset
      workingValue3 = "core"
      workingValue2(workingValue3)
      workingValue2 = StartParticleFxLoopedAtCoord
      workingValue3 = "ent_dst_elec_crackle"
      workingValue4 = coords.x
      number = coords.y
      number2 = coords.z
      number3 = 0.0
      number4 = 0.0
      stateFlag2 = 0.0
      stateFlag3 = 1.2
      stateFlag4 = false
      stateFlag5 = false
      stateFlag6 = false
      stateFlag7 = false
      workingValue2 = workingValue2(workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
      workingValue3 = table
      workingValue3 = workingValue3.insert
      workingValue4 = coords2
      number = workingValue2
      workingValue3(workingValue4, number)
    end
    while playerPed2 < 20 do
      playerPed2 = playerPed2 + 1
      waitCall = pairs
      tableHelper = stateFlag10
      waitCall, tableHelper, stateFlag, createVector3 = waitCall(tableHelper)
      for playerPed, coords in waitCall, tableHelper, stateFlag, createVector3 do
        workingValue2 = UseParticleFxAsset
        workingValue3 = "core"
        workingValue2(workingValue3)
        workingValue2 = StartParticleFxLoopedAtCoord
        workingValue3 = "sp_foundry_sparks"
        workingValue4 = coords.x
        number = coords.y
        number2 = coords.z
        number3 = 90.0
        number4 = 0.0
        stateFlag2 = 0.0
        stateFlag3 = 0.0
        stateFlag4 = false
        stateFlag5 = false
        stateFlag6 = false
        stateFlag7 = false
        workingValue2 = workingValue2(workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
        workingValue3 = table
        workingValue3 = workingValue3.insert
        workingValue4 = coords2
        number = workingValue2
        workingValue3(workingValue4, number)
      end
      waitCall = Wait
      tableHelper = 400
      waitCall(tableHelper)
      waitCall = pairs
      tableHelper = coords2
      waitCall, tableHelper, stateFlag, createVector3 = waitCall(tableHelper)
      for playerPed, coords in waitCall, tableHelper, stateFlag, createVector3 do
        workingValue2 = RemoveParticleFx
        workingValue3 = coords
        workingValue4 = false
        workingValue2(workingValue3, workingValue4)
      end
      waitCall = pairs
      tableHelper = iterator
      waitCall, tableHelper, stateFlag, createVector3 = waitCall(tableHelper)
      for playerPed, coords in waitCall, tableHelper, stateFlag, createVector3 do
        workingValue2 = RemoveParticleFx
        workingValue3 = coords
        workingValue4 = false
        workingValue2(workingValue3, workingValue4)
      end
    end
    waitCall = pairs
    tableHelper = number5
    waitCall, tableHelper, stateFlag, createVector3 = waitCall(tableHelper)
    for playerPed, coords in waitCall, tableHelper, stateFlag, createVector3 do
      workingValue2 = RemoveParticleFx
      workingValue3 = coords
      workingValue4 = false
      workingValue2(workingValue3, workingValue4)
    end
    waitCall = RemoveNamedPtfxAsset
    tableHelper = "core"
    waitCall(tableHelper)
    waitCall = RemoveNamedPtfxAsset
    tableHelper = "scr_fbi3"
    waitCall(tableHelper)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "63b35ed831".
cmgOperation(text, workingValue5)
cmgOperation = CMG
cmgOperation = cmgOperation.registerCommand
text = "theforce"

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, stateFlag10, playerPed2, playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9
  localValue1 = CMG
  localValue1 = localValue1.getClientUserId
  -- Beginner: result below is userId.
  localValue1 = localValue1()
  if 1 == localValue1 then
    localValue1 = workingValue
    localValue2 = 10
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue2 = GetPlayerServerId
      stateFlag10 = localValue1
      -- Beginner: result below is serverId.
      localValue2 = localValue2(stateFlag10)
      if -1 ~= localValue2 then
        stateFlag10 = HasNamedPtfxAssetLoaded
        playerPed2 = "core"
        stateFlag10 = stateFlag10(playerPed2)
        if not stateFlag10 then
          stateFlag10 = RequestNamedPtfxAsset
          playerPed2 = "core"
          stateFlag10(playerPed2)
          while true do
            stateFlag10 = HasNamedPtfxAssetLoaded
            playerPed2 = "core"
            stateFlag10 = stateFlag10(playerPed2)
            if stateFlag10 then
              break
            end
            stateFlag10 = Wait
            playerPed2 = 0
            stateFlag10(playerPed2)
          end
        end
        stateFlag10 = 0
        playerPed2 = GetEntityCoords
        playerPed3 = PlayerPedId
        playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9 = playerPed3()
        -- Beginner: result below is entityCoords.
        playerPed2 = playerPed2(playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9)
        playerPed3 = GetPlayerPed
        coords2 = localValue1
        -- Beginner: result below is playerPed.
        playerPed3 = playerPed3(coords2)
        coords2 = GetEntityCoords
        iterator = playerPed3
        -- Beginner: result below is entityCoords.
        coords2 = coords2(iterator)
        iterator = {}
        number5 = coords2 - playerPed2
        waitCall = TriggerServerEvent
        tableHelper = "9fd1729b1a"
        stateFlag = localValue2
        createVector3 = playerPed2
        playerPed = coords2
        coords = number5
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9fd1729b1a".
        waitCall(tableHelper, stateFlag, createVector3, playerPed, coords)
        waitCall = 1
        tableHelper = 10
        stateFlag = 1
        for createVector3 = waitCall, tableHelper, stateFlag do
          playerPed = table
          playerPed = playerPed.insert
          coords = iterator
          workingValue2 = vector3
          workingValue3 = number5.x
          workingValue3 = workingValue3 / 10
          workingValue3 = workingValue3 * createVector3
          workingValue4 = number5.y
          workingValue4 = workingValue4 / 10
          workingValue4 = workingValue4 * createVector3
          number = number5.z
          number = number / 10
          number = number * createVector3
          workingValue2 = workingValue2(workingValue3, workingValue4, number)
          workingValue2 = playerPed2 + workingValue2
          playerPed(coords, workingValue2)
        end
        waitCall = SendNUIMessage
        tableHelper = {}
        tableHelper.transactionType = "ulimitedpower"
        -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
        waitCall(tableHelper)
        waitCall = FreezeEntityPosition
        tableHelper = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        tableHelper = tableHelper()
        stateFlag = true
        -- Beginner: Freeze or unfreeze an entity in place.
        waitCall(tableHelper, stateFlag)
        waitCall = CMG
        waitCall = waitCall.loadAnimDict
        tableHelper = "anim@amb@clubhouse@bar@drink@idle_a"
        -- Beginner: Load a GTA animation dictionary before using it.
        waitCall(tableHelper)
        waitCall = TaskPlayAnim
        tableHelper = CMG
        tableHelper = tableHelper.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        tableHelper = tableHelper()
        stateFlag = "anim@amb@clubhouse@bar@drink@idle_a"
        createVector3 = "idle_a_bartender"
        playerPed = 3.0
        coords = 1.0
        workingValue2 = -1
        workingValue3 = 1
        workingValue4 = 0
        number = false
        number2 = false
        number3 = false
        -- Beginner: Play an animation on a ped.
        waitCall(tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3)
        waitCall = RemoveAnimDict
        tableHelper = "anim@amb@clubhouse@bar@drink@idle_a"
        waitCall(tableHelper)
        waitCall = {}
        tableHelper = pairs
        stateFlag = iterator
        tableHelper, stateFlag, createVector3, playerPed = tableHelper(stateFlag)
        for coords, workingValue2 in tableHelper, stateFlag, createVector3, playerPed do
          workingValue3 = UseParticleFxAsset
          workingValue4 = "core"
          workingValue3(workingValue4)
          workingValue3 = StartParticleFxLoopedAtCoord
          workingValue4 = "ent_dst_elec_crackle"
          number = workingValue2.x
          number2 = workingValue2.y
          number3 = workingValue2.z
          number4 = 0.0
          stateFlag2 = 0.0
          stateFlag3 = 0.0
          stateFlag4 = 1.2
          stateFlag5 = false
          stateFlag6 = false
          stateFlag7 = false
          stateFlag8 = false
          workingValue3 = workingValue3(workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
          workingValue4 = table
          workingValue4 = workingValue4.insert
          number = waitCall
          number2 = workingValue3
          workingValue4(number, number2)
        end
        while true do
          tableHelper = 150
          if not (stateFlag10 < tableHelper) then
            break
          end
          stateFlag10 = stateFlag10 + 1
          tableHelper = pairs
          stateFlag = iterator
          tableHelper, stateFlag, createVector3, playerPed = tableHelper(stateFlag)
          for coords, workingValue2 in tableHelper, stateFlag, createVector3, playerPed do
            workingValue3 = UseParticleFxAsset
            workingValue4 = "core"
            workingValue3(workingValue4)
            workingValue3 = StartParticleFxLoopedAtCoord
            workingValue4 = "sp_foundry_sparks"
            number = workingValue2.x
            number2 = workingValue2.y
            number3 = workingValue2.z
            number4 = 90.0
            stateFlag2 = 0.0
            stateFlag3 = 0.0
            stateFlag4 = 0.3
            stateFlag5 = false
            stateFlag6 = false
            stateFlag7 = false
            stateFlag8 = false
            workingValue3 = workingValue3(workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
            workingValue4 = UseParticleFxAsset
            number = "core"
            workingValue4(number)
            workingValue4 = StartParticleFxLoopedAtCoord
            number = "ent_dst_elec_fire_sp"
            number2 = workingValue2.x
            number3 = workingValue2.y
            number4 = workingValue2.z
            stateFlag2 = 0.0
            stateFlag3 = 0.0
            stateFlag4 = 0.0
            stateFlag5 = 1.0
            stateFlag6 = false
            stateFlag7 = false
            stateFlag8 = false
            stateFlag9 = false
            workingValue4 = workingValue4(number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9)
            number = table
            number = number.insert
            number2 = waitCall
            number3 = workingValue3
            number(number2, number3)
            number = table
            number = number.insert
            number2 = waitCall
            number3 = workingValue4
            number(number2, number3)
          end
          tableHelper = Wait
          stateFlag = 50
          tableHelper(stateFlag)
          tableHelper = pairs
          stateFlag = waitCall
          tableHelper, stateFlag, createVector3, playerPed = tableHelper(stateFlag)
          for coords, workingValue2 in tableHelper, stateFlag, createVector3, playerPed do
            workingValue3 = RemoveParticleFx
            workingValue4 = workingValue2
            number = false
            workingValue3(workingValue4, number)
          end
        end
        tableHelper = RemoveNamedPtfxAsset
        stateFlag = "core"
        tableHelper(stateFlag)
        tableHelper = FreezeEntityPosition
        stateFlag = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        stateFlag = stateFlag()
        createVector3 = false
        -- Beginner: Freeze or unfreeze an entity in place.
        tableHelper(stateFlag, createVector3)
        tableHelper = ClearPedTasks
        stateFlag = PlayerPedId
        stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9 = stateFlag()
        tableHelper(stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9)
      else
        stateFlag10 = drawNativeNotification
        playerPed2 = "~r~No one nearby to use the force on!"
        -- Beginner: Show a GTA-style notification/help prompt.
        stateFlag10(playerPed2)
      end
    else
      localValue2 = drawNativeNotification
      stateFlag10 = "~r~No one nearby to use the force on!"
      localValue2(stateFlag10)
    end
  end
end
stateFlag11 = false
cmgOperation(text, workingValue5, stateFlag11)
cmgOperation = RegisterNetEvent
text = "b47f9b0085"
-- Beginner: this function handles network event "b47f9b0085".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, stateFlag10, playerPed2, playerPed3, coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetEntityCoords
  stateFlag10 = localValue1
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(stateFlag10)
  stateFlag10 = -1686040670
  playerPed2 = RequestModel
  playerPed3 = stateFlag10
  playerPed2(playerPed3)
  while true do
    playerPed2 = HasModelLoaded
    playerPed3 = stateFlag10
    playerPed2 = playerPed2(playerPed3)
    if playerPed2 then
      break
    end
    playerPed2 = Wait
    playerPed3 = 0
    playerPed2(playerPed3)
  end
  playerPed2 = -1692214353
  playerPed3 = RequestModel
  coords2 = playerPed2
  playerPed3(coords2)
  while true do
    playerPed3 = HasModelLoaded
    coords2 = playerPed2
    playerPed3 = playerPed3(coords2)
    if playerPed3 then
      break
    end
    playerPed3 = Wait
    coords2 = 0
    playerPed3(coords2)
  end
  playerPed3 = CMG
  playerPed3 = playerPed3.requestEntitySpawn
  coords2 = "kidnap_ped"
  playerPed3(coords2)
  playerPed3 = CreatePed
  coords2 = 0
  iterator = stateFlag10
  number5 = localValue2.x
  number5 = number5 + 1.0
  waitCall = localValue2.y
  tableHelper = localValue2.z
  stateFlag = 0.0
  createVector3 = true
  playerPed = true
  -- Beginner: result below is pedEntity.
  playerPed3 = playerPed3(coords2, iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed)
  coords2 = SetBlockingOfNonTemporaryEvents
  iterator = playerPed3
  number5 = true
  coords2(iterator, number5)
  coords2 = SetPedCanRagdoll
  iterator = playerPed3
  number5 = false
  coords2(iterator, number5)
  coords2 = CMG
  coords2 = coords2.requestEntitySpawn
  iterator = "kidnap_ped2"
  coords2(iterator)
  coords2 = CreatePed
  iterator = 0
  number5 = playerPed2
  waitCall = localValue2.x
  waitCall = waitCall + 1.0
  tableHelper = localValue2.y
  stateFlag = localValue2.z
  createVector3 = 0.0
  playerPed = true
  coords = true
  -- Beginner: result below is pedEntity.
  coords2 = coords2(iterator, number5, waitCall, tableHelper, stateFlag, createVector3, playerPed, coords)
  iterator = SetBlockingOfNonTemporaryEvents
  number5 = coords2
  waitCall = true
  iterator(number5, waitCall)
  iterator = SetPedCanRagdoll
  number5 = coords2
  waitCall = false
  iterator(number5, waitCall)
  iterator = -1346687836
  number5 = GetClosestVehicle
  waitCall = localValue2.x
  tableHelper = localValue2.y
  stateFlag = localValue2.z
  createVector3 = 15.0
  playerPed = iterator
  coords = 70
  number5 = number5(waitCall, tableHelper, stateFlag, createVector3, playerPed, coords)
  waitCall = DoesEntityExist
  tableHelper = number5
  waitCall = waitCall(tableHelper)
  if not waitCall then
    waitCall = RequestModel
    tableHelper = iterator
    waitCall(tableHelper)
    while true do
      waitCall = HasModelLoaded
      tableHelper = iterator
      waitCall = waitCall(tableHelper)
      if waitCall then
        break
      end
      waitCall = Wait
      tableHelper = 0
      waitCall(tableHelper)
    end
    waitCall = CMG
    waitCall = waitCall.requestEntitySpawn
    tableHelper = "kidnap"
    waitCall(tableHelper)
    waitCall = CreateVehicle
    tableHelper = iterator
    stateFlag = localValue2.x
    stateFlag = stateFlag + 3.0
    createVector3 = localValue2.y
    createVector3 = createVector3 + 1.0
    playerPed = localValue2.z
    coords = 0.0
    workingValue2 = true
    workingValue3 = false
    -- Beginner: result below is vehicleEntity.
    waitCall = waitCall(tableHelper, stateFlag, createVector3, playerPed, coords, workingValue2, workingValue3)
    number5 = waitCall
    waitCall = CMG
    waitCall = waitCall.initLocalVehicle
    tableHelper = number5
    waitCall(tableHelper)
  end
  waitCall = GetEntityCoords
  tableHelper = number5
  -- Beginner: result below is entityCoords.
  waitCall = waitCall(tableHelper)
  tableHelper = GetEntityRotation
  stateFlag = number5
  tableHelper = tableHelper(stateFlag)
  stateFlag = "random@kidnap_girl"
  createVector3 = RequestAnimDict
  playerPed = stateFlag
  createVector3(playerPed)
  while true do
    createVector3 = HasAnimDictLoaded
    playerPed = stateFlag
    createVector3 = createVector3(playerPed)
    if createVector3 then
      break
    end
    createVector3 = Wait
    playerPed = 0
    createVector3(playerPed)
  end
  createVector3 = NetworkCreateSynchronisedScene
  playerPed = waitCall.x
  coords = waitCall.y
  workingValue2 = waitCall.z
  workingValue3 = tableHelper.x
  workingValue4 = tableHelper.y
  number = tableHelper.z
  number2 = 2
  number3 = false
  number4 = false
  stateFlag2 = 1.0
  stateFlag3 = 0
  stateFlag4 = 1.0
  createVector3 = createVector3(playerPed, coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4)
  playerPed = NetworkAddPedToSynchronisedScene
  coords = coords2
  workingValue2 = createVector3
  workingValue3 = stateFlag
  workingValue4 = "ig_1_guy1_drag_into_van"
  number = 8.0
  number2 = -4.0
  number3 = 1
  number4 = 16
  stateFlag2 = 0
  stateFlag3 = 0
  playerPed(coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3)
  playerPed = NetworkAddPedToSynchronisedScene
  coords = playerPed3
  workingValue2 = createVector3
  workingValue3 = stateFlag
  workingValue4 = "ig_1_guy2_drag_into_van"
  number = 8.0
  number2 = -4.0
  number3 = 1
  number4 = 16
  stateFlag2 = 0
  stateFlag3 = 0
  playerPed(coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3)
  playerPed = NetworkAddPedToSynchronisedScene
  coords = localValue1
  workingValue2 = createVector3
  workingValue3 = stateFlag
  workingValue4 = "ig_1_girl_drag_into_van"
  number = 8.0
  number2 = -4.0
  number3 = 1
  number4 = 16
  stateFlag2 = 0
  stateFlag3 = 0
  playerPed(coords, workingValue2, workingValue3, workingValue4, number, number2, number3, number4, stateFlag2, stateFlag3)
  playerPed = NetworkAddEntityToSynchronisedScene
  coords = number5
  workingValue2 = createVector3
  workingValue3 = stateFlag
  workingValue4 = "drag_into_van_burr"
  number = 1.0
  number2 = 1.0
  number3 = 1
  playerPed(coords, workingValue2, workingValue3, workingValue4, number, number2, number3)
  playerPed = NetworkStartSynchronisedScene
  coords = createVector3
  playerPed(coords)
  playerPed = PlayAmbientSpeech1
  coords = playerPed3
  workingValue2 = "GENERIC_SHOCKED_HIGH"
  workingValue3 = "SPEECH_PARAMS_FORCE"
  playerPed(coords, workingValue2, workingValue3)
  playerPed = Wait
  coords = GetAnimDuration
  workingValue2 = stateFlag
  workingValue3 = "drag_into_van_burr"
  coords = coords(workingValue2, workingValue3)
  coords = coords * 1000
  playerPed(coords)
  playerPed = ClearPedTasks
  coords = localValue1
  playerPed(coords)
  playerPed = DeleteEntity
  coords = playerPed3
  -- Beginner: Delete a GTA entity.
  playerPed(coords)
  playerPed = DeleteEntity
  coords = coords2
  playerPed(coords)
  playerPed = DeleteEntity
  coords = number5
  -- Beginner: Delete a GTA entity.
  playerPed(coords)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b47f9b0085".
cmgOperation(text, workingValue5)
