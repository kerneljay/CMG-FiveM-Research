--[[
    Beginner Guide: cl_thor.lua
    ===========================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Thor
    =====================

    File: cmg/prod/client/misc/cl_thor.lua
    Purpose: This file contains general gameplay utility.

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

    Network/hash identifiers found: 5
      They are intentionally left unchanged because matching server code may use them.
      * c714651523
      * b96db67b48
      * 63b35ed831
      * 9fd1729b1a
      * b47f9b0085

]]
local workValue, cmgCall, textValue, workValue5, flag11
function workValue(arg1)
  local arg2, flag10, playerPed2, playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed, coords, workValue2
  arg2 = GetActivePlayers
  arg2 = arg2()
  flag10 = -1
  playerPed2 = -1
  playerPed3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed3 = playerPed3()
  coords2 = GetEntityCoords
  iterator = playerPed3
  -- Beginner: result below is entityCoords.
  coords2 = coords2(iterator)
  iterator = ipairs
  numberValue5 = arg2
  iterator, numberValue5, waitCall, tableHelper = iterator(numberValue5)
  for flag, vector3Builder in iterator, numberValue5, waitCall, tableHelper do
    playerPed = GetPlayerPed
    coords = vector3Builder
    -- Beginner: result below is playerPed.
    playerPed = playerPed(coords)
    if playerPed ~= playerPed3 then
      coords = GetEntityCoords
      workValue2 = playerPed
      -- Beginner: result below is entityCoords.
      coords = coords(workValue2)
      workValue2 = coords - coords2
      workValue2 = #workValue2
      if -1 == flag10 or flag10 > workValue2 then
        playerPed2 = vector3Builder
        flag10 = workValue2
      end
    end
  end
  if -1 ~= flag10 and arg1 >= flag10 then
    return playerPed2
  else
    iterator = nil
    return iterator
  end
end
cmgCall = RegisterNetEvent
textValue = "c714651523"
-- Beginner: this function handles network event "c714651523".
function workValue5()
  local arg1, arg2, flag10, playerPed2, playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder
  arg1 = FreezeEntityPosition
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  flag10 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg1(arg2, flag10)
  arg1 = Wait
  arg2 = 2500
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.loadAnimDict
  arg2 = "ragdoll@human"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg1(arg2)
  arg1 = TaskPlayAnim
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  flag10 = "ragdoll@human"
  playerPed2 = "electrocute"
  playerPed3 = 3.0
  coords2 = 1.0
  iterator = -1
  numberValue5 = 1
  waitCall = 0
  tableHelper = false
  flag = false
  vector3Builder = false
  -- Beginner: Play an animation on a ped.
  arg1(arg2, flag10, playerPed2, playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder)
  arg1 = RemoveAnimDict
  arg2 = "ragdoll@human"
  arg1(arg2)
  arg1 = Wait
  arg2 = 5000
  arg1(arg2)
  arg1 = SetEntityHealth
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  flag10 = 0
  arg1(arg2, flag10)
  arg1 = FreezeEntityPosition
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  flag10 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg1(arg2, flag10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c714651523".
cmgCall(textValue, workValue5)
cmgCall = RegisterNetEvent
textValue = "b96db67b48"
-- Beginner: this function handles network event "b96db67b48".
function workValue5(arg1, arg2)
  local flag10, playerPed2, playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6
  flag10 = GetEntityCoords
  playerPed2 = PlayerPedId
  playerPed2, playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6 = playerPed2()
  -- Beginner: result below is entityCoords.
  flag10 = flag10(playerPed2, playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6)
  flag10 = arg1 - flag10
  flag10 = #flag10
  if flag10 < 25.0 then
    flag10 = SendNUIMessage
    playerPed2 = {}
    playerPed2.transactionType = "ulimitedpower"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    flag10(playerPed2)
    flag10 = {}
    playerPed2 = 0
    playerPed3 = arg2 - arg1
    coords2 = 1
    iterator = 10
    numberValue5 = 1
    for waitCall = coords2, iterator, numberValue5 do
      tableHelper = table
      tableHelper = tableHelper.insert
      flag = flag10
      vector3Builder = vector3
      playerPed = playerPed3.x
      playerPed = playerPed / 10
      playerPed = playerPed * waitCall
      coords = playerPed3.y
      coords = coords / 10
      coords = coords * waitCall
      workValue2 = playerPed3.z
      workValue2 = workValue2 / 10
      workValue2 = workValue2 * waitCall
      vector3Builder = vector3Builder(playerPed, coords, workValue2)
      vector3Builder = arg1 + vector3Builder
      tableHelper(flag, vector3Builder)
    end
    coords2 = {}
    iterator = pairs
    numberValue5 = flag10
    iterator, numberValue5, waitCall, tableHelper = iterator(numberValue5)
    for flag, vector3Builder in iterator, numberValue5, waitCall, tableHelper do
      playerPed = UseParticleFxAsset
      coords = "core"
      playerPed(coords)
      playerPed = StartParticleFxLoopedAtCoord
      coords = "ent_dst_elec_crackle"
      workValue2 = vector3Builder.x
      workValue3 = vector3Builder.y
      workValue4 = vector3Builder.z
      numberValue = 0.0
      numberValue2 = 0.0
      numberValue3 = 0.0
      numberValue4 = 1.2
      flag2 = false
      flag3 = false
      flag4 = false
      flag5 = false
      playerPed = playerPed(coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5)
      coords = table
      coords = coords.insert
      workValue2 = coords2
      workValue3 = playerPed
      coords(workValue2, workValue3)
    end
    while true do
      iterator = 150
      if not (playerPed2 < iterator) then
        break
      end
      playerPed2 = playerPed2 + 1
      iterator = pairs
      numberValue5 = flag10
      iterator, numberValue5, waitCall, tableHelper = iterator(numberValue5)
      for flag, vector3Builder in iterator, numberValue5, waitCall, tableHelper do
        playerPed = UseParticleFxAsset
        coords = "core"
        playerPed(coords)
        playerPed = StartParticleFxLoopedAtCoord
        coords = "sp_foundry_sparks"
        workValue2 = vector3Builder.x
        workValue3 = vector3Builder.y
        workValue4 = vector3Builder.z
        numberValue = 90.0
        numberValue2 = 0.0
        numberValue3 = 0.0
        numberValue4 = 0.3
        flag2 = false
        flag3 = false
        flag4 = false
        flag5 = false
        playerPed = playerPed(coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5)
        coords = UseParticleFxAsset
        workValue2 = "core"
        coords(workValue2)
        coords = StartParticleFxLoopedAtCoord
        workValue2 = "ent_dst_elec_fire_sp"
        workValue3 = vector3Builder.x
        workValue4 = vector3Builder.y
        numberValue = vector3Builder.z
        numberValue2 = 0.0
        numberValue3 = 0.0
        numberValue4 = 0.0
        flag2 = 1.0
        flag3 = false
        flag4 = false
        flag5 = false
        flag6 = false
        coords = coords(workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6)
        workValue2 = table
        workValue2 = workValue2.insert
        workValue3 = coords2
        workValue4 = playerPed
        workValue2(workValue3, workValue4)
        workValue2 = table
        workValue2 = workValue2.insert
        workValue3 = coords2
        workValue4 = coords
        workValue2(workValue3, workValue4)
      end
      iterator = Wait
      numberValue5 = 50
      iterator(numberValue5)
      iterator = pairs
      numberValue5 = coords2
      iterator, numberValue5, waitCall, tableHelper = iterator(numberValue5)
      for flag, vector3Builder in iterator, numberValue5, waitCall, tableHelper do
        playerPed = RemoveParticleFx
        coords = vector3Builder
        workValue2 = false
        playerPed(coords, workValue2)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b96db67b48".
cmgCall(textValue, workValue5)
cmgCall = RegisterNetEvent
textValue = "63b35ed831"
-- Beginner: this function handles network event "63b35ed831".
function workValue5(arg1, arg2)
  local flag10, playerPed2, playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7
  flag10 = GetEntityCoords
  playerPed2 = PlayerPedId
  playerPed2, playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7 = playerPed2()
  -- Beginner: result below is entityCoords.
  flag10 = flag10(playerPed2, playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7)
  flag10 = arg1 - flag10
  flag10 = #flag10
  if flag10 < 25.0 then
    flag10 = {}
    playerPed2 = 0
    playerPed3 = arg2 - arg1
    coords2 = 1
    iterator = 10
    numberValue5 = 1
    for waitCall = coords2, iterator, numberValue5 do
      tableHelper = table
      tableHelper = tableHelper.insert
      flag = flag10
      vector3Builder = vector3
      playerPed = playerPed3.x
      playerPed = playerPed / 10
      playerPed = playerPed * waitCall
      coords = playerPed3.y
      coords = coords / 10
      coords = coords * waitCall
      workValue2 = playerPed3.z
      workValue2 = workValue2 / 10
      workValue2 = workValue2 * waitCall
      vector3Builder = vector3Builder(playerPed, coords, workValue2)
      vector3Builder = arg1 + vector3Builder
      tableHelper(flag, vector3Builder)
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
    numberValue5 = {}
    waitCall = pairs
    tableHelper = flag10
    waitCall, tableHelper, flag, vector3Builder = waitCall(tableHelper)
    for playerPed, coords in waitCall, tableHelper, flag, vector3Builder do
      workValue2 = UseParticleFxAsset
      workValue3 = "core"
      workValue2(workValue3)
      workValue2 = StartParticleFxLoopedAtCoord
      workValue3 = "ent_dst_elec_crackle"
      workValue4 = coords.x
      numberValue = coords.y
      numberValue2 = coords.z
      numberValue3 = 0.0
      numberValue4 = 0.0
      flag2 = 0.0
      flag3 = 1.2
      flag4 = false
      flag5 = false
      flag6 = false
      flag7 = false
      workValue2 = workValue2(workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7)
      workValue3 = table
      workValue3 = workValue3.insert
      workValue4 = coords2
      numberValue = workValue2
      workValue3(workValue4, numberValue)
    end
    while playerPed2 < 20 do
      playerPed2 = playerPed2 + 1
      waitCall = pairs
      tableHelper = flag10
      waitCall, tableHelper, flag, vector3Builder = waitCall(tableHelper)
      for playerPed, coords in waitCall, tableHelper, flag, vector3Builder do
        workValue2 = UseParticleFxAsset
        workValue3 = "core"
        workValue2(workValue3)
        workValue2 = StartParticleFxLoopedAtCoord
        workValue3 = "sp_foundry_sparks"
        workValue4 = coords.x
        numberValue = coords.y
        numberValue2 = coords.z
        numberValue3 = 90.0
        numberValue4 = 0.0
        flag2 = 0.0
        flag3 = 0.0
        flag4 = false
        flag5 = false
        flag6 = false
        flag7 = false
        workValue2 = workValue2(workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7)
        workValue3 = table
        workValue3 = workValue3.insert
        workValue4 = coords2
        numberValue = workValue2
        workValue3(workValue4, numberValue)
      end
      waitCall = Wait
      tableHelper = 400
      waitCall(tableHelper)
      waitCall = pairs
      tableHelper = coords2
      waitCall, tableHelper, flag, vector3Builder = waitCall(tableHelper)
      for playerPed, coords in waitCall, tableHelper, flag, vector3Builder do
        workValue2 = RemoveParticleFx
        workValue3 = coords
        workValue4 = false
        workValue2(workValue3, workValue4)
      end
      waitCall = pairs
      tableHelper = iterator
      waitCall, tableHelper, flag, vector3Builder = waitCall(tableHelper)
      for playerPed, coords in waitCall, tableHelper, flag, vector3Builder do
        workValue2 = RemoveParticleFx
        workValue3 = coords
        workValue4 = false
        workValue2(workValue3, workValue4)
      end
    end
    waitCall = pairs
    tableHelper = numberValue5
    waitCall, tableHelper, flag, vector3Builder = waitCall(tableHelper)
    for playerPed, coords in waitCall, tableHelper, flag, vector3Builder do
      workValue2 = RemoveParticleFx
      workValue3 = coords
      workValue4 = false
      workValue2(workValue3, workValue4)
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
cmgCall(textValue, workValue5)
cmgCall = CMG
cmgCall = cmgCall.registerCommand
textValue = "theforce"
function workValue5()
  local arg1, arg2, flag10, playerPed2, playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9
  arg1 = CMG
  arg1 = arg1.getClientUserId
  -- Beginner: result below is userId.
  arg1 = arg1()
  if 1 == arg1 then
    arg1 = workValue
    arg2 = 10
    arg1 = arg1(arg2)
    if arg1 then
      arg2 = GetPlayerServerId
      flag10 = arg1
      -- Beginner: result below is serverId.
      arg2 = arg2(flag10)
      if -1 ~= arg2 then
        flag10 = HasNamedPtfxAssetLoaded
        playerPed2 = "core"
        flag10 = flag10(playerPed2)
        if not flag10 then
          flag10 = RequestNamedPtfxAsset
          playerPed2 = "core"
          flag10(playerPed2)
          while true do
            flag10 = HasNamedPtfxAssetLoaded
            playerPed2 = "core"
            flag10 = flag10(playerPed2)
            if flag10 then
              break
            end
            flag10 = Wait
            playerPed2 = 0
            flag10(playerPed2)
          end
        end
        flag10 = 0
        playerPed2 = GetEntityCoords
        playerPed3 = PlayerPedId
        playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9 = playerPed3()
        -- Beginner: result below is entityCoords.
        playerPed2 = playerPed2(playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9)
        playerPed3 = GetPlayerPed
        coords2 = arg1
        -- Beginner: result below is playerPed.
        playerPed3 = playerPed3(coords2)
        coords2 = GetEntityCoords
        iterator = playerPed3
        -- Beginner: result below is entityCoords.
        coords2 = coords2(iterator)
        iterator = {}
        numberValue5 = coords2 - playerPed2
        waitCall = TriggerServerEvent
        tableHelper = "9fd1729b1a"
        flag = arg2
        vector3Builder = playerPed2
        playerPed = coords2
        coords = numberValue5
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9fd1729b1a".
        waitCall(tableHelper, flag, vector3Builder, playerPed, coords)
        waitCall = 1
        tableHelper = 10
        flag = 1
        for vector3Builder = waitCall, tableHelper, flag do
          playerPed = table
          playerPed = playerPed.insert
          coords = iterator
          workValue2 = vector3
          workValue3 = numberValue5.x
          workValue3 = workValue3 / 10
          workValue3 = workValue3 * vector3Builder
          workValue4 = numberValue5.y
          workValue4 = workValue4 / 10
          workValue4 = workValue4 * vector3Builder
          numberValue = numberValue5.z
          numberValue = numberValue / 10
          numberValue = numberValue * vector3Builder
          workValue2 = workValue2(workValue3, workValue4, numberValue)
          workValue2 = playerPed2 + workValue2
          playerPed(coords, workValue2)
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
        flag = true
        -- Beginner: Freeze or unfreeze an entity in place.
        waitCall(tableHelper, flag)
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
        flag = "anim@amb@clubhouse@bar@drink@idle_a"
        vector3Builder = "idle_a_bartender"
        playerPed = 3.0
        coords = 1.0
        workValue2 = -1
        workValue3 = 1
        workValue4 = 0
        numberValue = false
        numberValue2 = false
        numberValue3 = false
        -- Beginner: Play an animation on a ped.
        waitCall(tableHelper, flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3)
        waitCall = RemoveAnimDict
        tableHelper = "anim@amb@clubhouse@bar@drink@idle_a"
        waitCall(tableHelper)
        waitCall = {}
        tableHelper = pairs
        flag = iterator
        tableHelper, flag, vector3Builder, playerPed = tableHelper(flag)
        for coords, workValue2 in tableHelper, flag, vector3Builder, playerPed do
          workValue3 = UseParticleFxAsset
          workValue4 = "core"
          workValue3(workValue4)
          workValue3 = StartParticleFxLoopedAtCoord
          workValue4 = "ent_dst_elec_crackle"
          numberValue = workValue2.x
          numberValue2 = workValue2.y
          numberValue3 = workValue2.z
          numberValue4 = 0.0
          flag2 = 0.0
          flag3 = 0.0
          flag4 = 1.2
          flag5 = false
          flag6 = false
          flag7 = false
          flag8 = false
          workValue3 = workValue3(workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7, flag8)
          workValue4 = table
          workValue4 = workValue4.insert
          numberValue = waitCall
          numberValue2 = workValue3
          workValue4(numberValue, numberValue2)
        end
        while true do
          tableHelper = 150
          if not (flag10 < tableHelper) then
            break
          end
          flag10 = flag10 + 1
          tableHelper = pairs
          flag = iterator
          tableHelper, flag, vector3Builder, playerPed = tableHelper(flag)
          for coords, workValue2 in tableHelper, flag, vector3Builder, playerPed do
            workValue3 = UseParticleFxAsset
            workValue4 = "core"
            workValue3(workValue4)
            workValue3 = StartParticleFxLoopedAtCoord
            workValue4 = "sp_foundry_sparks"
            numberValue = workValue2.x
            numberValue2 = workValue2.y
            numberValue3 = workValue2.z
            numberValue4 = 90.0
            flag2 = 0.0
            flag3 = 0.0
            flag4 = 0.3
            flag5 = false
            flag6 = false
            flag7 = false
            flag8 = false
            workValue3 = workValue3(workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7, flag8)
            workValue4 = UseParticleFxAsset
            numberValue = "core"
            workValue4(numberValue)
            workValue4 = StartParticleFxLoopedAtCoord
            numberValue = "ent_dst_elec_fire_sp"
            numberValue2 = workValue2.x
            numberValue3 = workValue2.y
            numberValue4 = workValue2.z
            flag2 = 0.0
            flag3 = 0.0
            flag4 = 0.0
            flag5 = 1.0
            flag6 = false
            flag7 = false
            flag8 = false
            flag9 = false
            workValue4 = workValue4(numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9)
            numberValue = table
            numberValue = numberValue.insert
            numberValue2 = waitCall
            numberValue3 = workValue3
            numberValue(numberValue2, numberValue3)
            numberValue = table
            numberValue = numberValue.insert
            numberValue2 = waitCall
            numberValue3 = workValue4
            numberValue(numberValue2, numberValue3)
          end
          tableHelper = Wait
          flag = 50
          tableHelper(flag)
          tableHelper = pairs
          flag = waitCall
          tableHelper, flag, vector3Builder, playerPed = tableHelper(flag)
          for coords, workValue2 in tableHelper, flag, vector3Builder, playerPed do
            workValue3 = RemoveParticleFx
            workValue4 = workValue2
            numberValue = false
            workValue3(workValue4, numberValue)
          end
        end
        tableHelper = RemoveNamedPtfxAsset
        flag = "core"
        tableHelper(flag)
        tableHelper = FreezeEntityPosition
        flag = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        flag = flag()
        vector3Builder = false
        -- Beginner: Freeze or unfreeze an entity in place.
        tableHelper(flag, vector3Builder)
        tableHelper = ClearPedTasks
        flag = PlayerPedId
        flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9 = flag()
        tableHelper(flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9)
      else
        flag10 = drawNativeNotification
        playerPed2 = "~r~No one nearby to use the force on!"
        -- Beginner: Show a GTA-style notification/help prompt.
        flag10(playerPed2)
      end
    else
      arg2 = drawNativeNotification
      flag10 = "~r~No one nearby to use the force on!"
      arg2(flag10)
    end
  end
end
flag11 = false
cmgCall(textValue, workValue5, flag11)
cmgCall = RegisterNetEvent
textValue = "b47f9b0085"
-- Beginner: this function handles network event "b47f9b0085".
function workValue5()
  local arg1, arg2, flag10, playerPed2, playerPed3, coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetEntityCoords
  flag10 = arg1
  -- Beginner: result below is entityCoords.
  arg2 = arg2(flag10)
  flag10 = -1686040670
  playerPed2 = RequestModel
  playerPed3 = flag10
  playerPed2(playerPed3)
  while true do
    playerPed2 = HasModelLoaded
    playerPed3 = flag10
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
  iterator = flag10
  numberValue5 = arg2.x
  numberValue5 = numberValue5 + 1.0
  waitCall = arg2.y
  tableHelper = arg2.z
  flag = 0.0
  vector3Builder = true
  playerPed = true
  -- Beginner: result below is pedEntity.
  playerPed3 = playerPed3(coords2, iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed)
  coords2 = SetBlockingOfNonTemporaryEvents
  iterator = playerPed3
  numberValue5 = true
  coords2(iterator, numberValue5)
  coords2 = SetPedCanRagdoll
  iterator = playerPed3
  numberValue5 = false
  coords2(iterator, numberValue5)
  coords2 = CMG
  coords2 = coords2.requestEntitySpawn
  iterator = "kidnap_ped2"
  coords2(iterator)
  coords2 = CreatePed
  iterator = 0
  numberValue5 = playerPed2
  waitCall = arg2.x
  waitCall = waitCall + 1.0
  tableHelper = arg2.y
  flag = arg2.z
  vector3Builder = 0.0
  playerPed = true
  coords = true
  -- Beginner: result below is pedEntity.
  coords2 = coords2(iterator, numberValue5, waitCall, tableHelper, flag, vector3Builder, playerPed, coords)
  iterator = SetBlockingOfNonTemporaryEvents
  numberValue5 = coords2
  waitCall = true
  iterator(numberValue5, waitCall)
  iterator = SetPedCanRagdoll
  numberValue5 = coords2
  waitCall = false
  iterator(numberValue5, waitCall)
  iterator = -1346687836
  numberValue5 = GetClosestVehicle
  waitCall = arg2.x
  tableHelper = arg2.y
  flag = arg2.z
  vector3Builder = 15.0
  playerPed = iterator
  coords = 70
  numberValue5 = numberValue5(waitCall, tableHelper, flag, vector3Builder, playerPed, coords)
  waitCall = DoesEntityExist
  tableHelper = numberValue5
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
    flag = arg2.x
    flag = flag + 3.0
    vector3Builder = arg2.y
    vector3Builder = vector3Builder + 1.0
    playerPed = arg2.z
    coords = 0.0
    workValue2 = true
    workValue3 = false
    -- Beginner: result below is vehicleEntity.
    waitCall = waitCall(tableHelper, flag, vector3Builder, playerPed, coords, workValue2, workValue3)
    numberValue5 = waitCall
    waitCall = CMG
    waitCall = waitCall.initLocalVehicle
    tableHelper = numberValue5
    waitCall(tableHelper)
  end
  waitCall = GetEntityCoords
  tableHelper = numberValue5
  -- Beginner: result below is entityCoords.
  waitCall = waitCall(tableHelper)
  tableHelper = GetEntityRotation
  flag = numberValue5
  tableHelper = tableHelper(flag)
  flag = "random@kidnap_girl"
  vector3Builder = RequestAnimDict
  playerPed = flag
  vector3Builder(playerPed)
  while true do
    vector3Builder = HasAnimDictLoaded
    playerPed = flag
    vector3Builder = vector3Builder(playerPed)
    if vector3Builder then
      break
    end
    vector3Builder = Wait
    playerPed = 0
    vector3Builder(playerPed)
  end
  vector3Builder = NetworkCreateSynchronisedScene
  playerPed = waitCall.x
  coords = waitCall.y
  workValue2 = waitCall.z
  workValue3 = tableHelper.x
  workValue4 = tableHelper.y
  numberValue = tableHelper.z
  numberValue2 = 2
  numberValue3 = false
  numberValue4 = false
  flag2 = 1.0
  flag3 = 0
  flag4 = 1.0
  vector3Builder = vector3Builder(playerPed, coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4)
  playerPed = NetworkAddPedToSynchronisedScene
  coords = coords2
  workValue2 = vector3Builder
  workValue3 = flag
  workValue4 = "ig_1_guy1_drag_into_van"
  numberValue = 8.0
  numberValue2 = -4.0
  numberValue3 = 1
  numberValue4 = 16
  flag2 = 0
  flag3 = 0
  playerPed(coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3)
  playerPed = NetworkAddPedToSynchronisedScene
  coords = playerPed3
  workValue2 = vector3Builder
  workValue3 = flag
  workValue4 = "ig_1_guy2_drag_into_van"
  numberValue = 8.0
  numberValue2 = -4.0
  numberValue3 = 1
  numberValue4 = 16
  flag2 = 0
  flag3 = 0
  playerPed(coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3)
  playerPed = NetworkAddPedToSynchronisedScene
  coords = arg1
  workValue2 = vector3Builder
  workValue3 = flag
  workValue4 = "ig_1_girl_drag_into_van"
  numberValue = 8.0
  numberValue2 = -4.0
  numberValue3 = 1
  numberValue4 = 16
  flag2 = 0
  flag3 = 0
  playerPed(coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3)
  playerPed = NetworkAddEntityToSynchronisedScene
  coords = numberValue5
  workValue2 = vector3Builder
  workValue3 = flag
  workValue4 = "drag_into_van_burr"
  numberValue = 1.0
  numberValue2 = 1.0
  numberValue3 = 1
  playerPed(coords, workValue2, workValue3, workValue4, numberValue, numberValue2, numberValue3)
  playerPed = NetworkStartSynchronisedScene
  coords = vector3Builder
  playerPed(coords)
  playerPed = PlayAmbientSpeech1
  coords = playerPed3
  workValue2 = "GENERIC_SHOCKED_HIGH"
  workValue3 = "SPEECH_PARAMS_FORCE"
  playerPed(coords, workValue2, workValue3)
  playerPed = Wait
  coords = GetAnimDuration
  workValue2 = flag
  workValue3 = "drag_into_van_burr"
  coords = coords(workValue2, workValue3)
  coords = coords * 1000
  playerPed(coords)
  playerPed = ClearPedTasks
  coords = arg1
  playerPed(coords)
  playerPed = DeleteEntity
  coords = playerPed3
  -- Beginner: Delete a GTA entity.
  playerPed(coords)
  playerPed = DeleteEntity
  coords = coords2
  playerPed(coords)
  playerPed = DeleteEntity
  coords = numberValue5
  -- Beginner: Delete a GTA entity.
  playerPed(coords)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b47f9b0085".
cmgCall(textValue, workValue5)