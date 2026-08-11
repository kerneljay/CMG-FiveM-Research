--[[
    LEVEL 1 BEGINNER GUIDE — Clamp
    ===================================

    File: cmg/prod/client/police/cl_clamp.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Clamp feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 4
      * Background threads: 0
      * Always-running loops: 3
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
local dataTable, flag4, textValue2, localEventCall, textValue3, textValue4, textValue5
dataTable = {}
flag4 = "wheel_lf"
textValue2 = "wheel_rf"
localEventCall = "wheel_lr"
textValue3 = "wheel_rr"
dataTable[1] = flag4
dataTable[2] = textValue2
dataTable[3] = localEventCall
dataTable[4] = textValue3
flag4 = false

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2) ===
function textValue2(arg1, arg2)
  local gameTime, gameTime2, numberValue6
  gameTime = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  gameTime = gameTime()
  while true do
    gameTime2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    gameTime2 = gameTime2()
    gameTime2 = gameTime2 - gameTime
    if not (arg2 > gameTime2) then
      break
    end
    gameTime2 = GetEntitySpeed
    numberValue6 = arg1
    -- Beginner: result below is speed.
    gameTime2 = gameTime2(numberValue6)
    numberValue6 = 0.2
    if gameTime2 > numberValue6 then
      gameTime2 = true
      return gameTime2
    end
    gameTime2 = Citizen
    gameTime2 = gameTime2.Wait
    numberValue6 = 0
    gameTime2(numberValue6)
  end
  gameTime2 = false
  return gameTime2
end
localEventCall = RegisterNetEvent
textValue3 = "b9a311db61"
-- Beginner: this function handles network event "b9a311db61".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, gameTime, gameTime2, numberValue6, vector3Builder
  arg1 = flag4
  if arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getClosestVehicle
  arg2 = 7.0
  arg1 = arg1(arg2)
  if arg1 then
    arg2 = NetworkGetEntityIsNetworked
    gameTime = arg1
    arg2 = arg2(gameTime)
    if arg2 then
      goto flow_label_20
    end
  end
  arg2 = notify
  gameTime = "~r~No vehicle found."
  -- Beginner: Show a notification to the player.
  arg2(gameTime)
  return
  ::flow_label_20::
  arg2 = NetworkGetNetworkIdFromEntity
  gameTime = arg1
  arg2 = arg2(gameTime)
  if 0 == arg2 then
    return
  end
  gameTime = TriggerServerEvent
  gameTime2 = "e6da6979c7"
  numberValue6 = arg2
  vector3Builder = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e6da6979c7".
  gameTime(gameTime2, numberValue6, vector3Builder)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b9a311db61".
localEventCall(textValue3, textValue4)
localEventCall = RegisterNetEvent
textValue3 = "1b7e99a63d"
-- Beginner: this function handles network event "1b7e99a63d".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2) ===
function textValue4(arg1, arg2)
  local gameTime, gameTime2, numberValue6, vector3Builder, cmgCall, iterator, textValue6, numberValue7, flag, dataTable2, textValue, numberValue, workValue, workValue2, flag2, flag3, numberValue2, numberValue3, numberValue4, flag5, flag6, flag7, flag8, numberValue5, flag9
  gameTime = CMG
  gameTime = gameTime.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  gameTime = gameTime()
  if 0 ~= gameTime then
    gameTime = notify
    gameTime2 = "~r~You can not clamp whilst in a vehicle."
    -- Beginner: Show a notification to the player.
    gameTime(gameTime2)
    return
  end
  gameTime = GetVehicleClass
  gameTime2 = arg2
  gameTime = gameTime(gameTime2)
  if 14 == gameTime or 15 == gameTime or 18 == gameTime or 21 == gameTime then
    gameTime2 = notify
    numberValue6 = "~r~You can not clamp this vehicle."
    gameTime2(numberValue6)
    return
  end
  gameTime2 = GetEntitySpeed
  numberValue6 = arg2
  -- Beginner: result below is speed.
  gameTime2 = gameTime2(numberValue6)
  numberValue6 = 0.2
  if gameTime2 > numberValue6 then
    gameTime2 = notify
    numberValue6 = "~r~You can not clamp a moving vehicle."
    -- Beginner: Show a notification to the player.
    gameTime2(numberValue6)
    return
  end
  gameTime2 = -1
  numberValue6 = 1.5
  vector3Builder = vector3
  cmgCall = 0.0
  iterator = 0.0
  textValue6 = 0.0
  vector3Builder = vector3Builder(cmgCall, iterator, textValue6)
  cmgCall = CMG
  cmgCall = cmgCall.getPlayerCoords
  -- Beginner: result below is playerCoords.
  cmgCall = cmgCall()
  iterator = pairs
  textValue6 = dataTable
  iterator, textValue6, numberValue7, flag = iterator(textValue6)
  for dataTable2, textValue in iterator, textValue6, numberValue7, flag do
    numberValue = GetEntityBoneIndexByName
    workValue = arg2
    workValue2 = textValue
    numberValue = numberValue(workValue, workValue2)
    if -1 ~= numberValue then
      workValue = GetWorldPositionOfEntityBone
      workValue2 = arg2
      flag2 = numberValue
      workValue = workValue(workValue2, flag2)
      workValue2 = cmgCall - workValue
      workValue2 = #workValue2
      if numberValue6 > workValue2 then
        gameTime2 = numberValue
        numberValue6 = workValue2
        vector3Builder = workValue
      end
    end
  end
  if -1 == gameTime2 then
    iterator = notify
    textValue6 = "~r~You are not nearby to any wheel."
    iterator(textValue6)
    return
  end
  iterator = true
  flag4 = iterator
  iterator = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  iterator = iterator()
  textValue6 = TaskTurnPedToFaceCoord
  numberValue7 = iterator
  flag = vector3Builder.x
  dataTable2 = vector3Builder.y
  textValue = vector3Builder.z
  numberValue = 2000
  textValue6(numberValue7, flag, dataTable2, textValue, numberValue)
  while true do
    textValue6 = GetScriptTaskStatus
    numberValue7 = iterator
    flag = 1464580341
    textValue6 = textValue6(numberValue7, flag)
    if 7 == textValue6 then
      break
    end
    textValue6 = Citizen
    textValue6 = textValue6.Wait
    numberValue7 = 0
    textValue6(numberValue7)
  end
  textValue6 = CMG
  textValue6 = textValue6.loadClipSet
  numberValue7 = "move_ped_crouched"
  textValue6(numberValue7)
  textValue6 = SetPedCanPlayAmbientAnims
  numberValue7 = iterator
  flag = false
  textValue6(numberValue7, flag)
  textValue6 = SetPedCanPlayAmbientBaseAnims
  numberValue7 = iterator
  flag = false
  textValue6(numberValue7, flag)
  textValue6 = SetPedMovementClipset
  numberValue7 = iterator
  flag = "move_ped_crouched"
  dataTable2 = 0.35
  textValue6(numberValue7, flag, dataTable2)
  textValue6 = SetPedStrafeClipset
  numberValue7 = iterator
  flag = "move_ped_crouched_strafing"
  textValue6(numberValue7, flag)
  textValue6 = RemoveClipSet
  numberValue7 = "move_ped_crouched"
  textValue6(numberValue7)
  textValue6 = tCMG
  textValue6 = textValue6.playAnim
  numberValue7 = true
  flag = {}
  dataTable2 = {}
  textValue = "rcmextreme3"
  numberValue = "idle"
  workValue = 1
  dataTable2[1] = textValue
  dataTable2[2] = numberValue
  dataTable2[3] = workValue
  flag[1] = dataTable2
  dataTable2 = true
  textValue6(numberValue7, flag, dataTable2)
  textValue6 = CMG
  textValue6 = textValue6.loadModel
  numberValue7 = -1099035225
  -- Beginner: Request/load a GTA model before spawning or applying it.
  textValue6(numberValue7)
  textValue6 = GetOffsetFromEntityInWorldCoords
  numberValue7 = iterator
  flag = 0.0
  dataTable2 = 0.2
  textValue = 0.0
  textValue6 = textValue6(numberValue7, flag, dataTable2, textValue)
  numberValue7 = CMG
  numberValue7 = numberValue7.requestEntitySpawn
  flag = "clamp_object"
  numberValue7(flag)
  numberValue7 = CreateObject
  flag = -1099035225
  dataTable2 = textValue6.x
  textValue = textValue6.y
  numberValue = textValue6.z
  workValue = true
  workValue2 = true
  flag2 = true
  -- Beginner: result below is objectEntity.
  numberValue7 = numberValue7(flag, dataTable2, textValue, numberValue, workValue, workValue2, flag2)
  flag = SetModelAsNoLongerNeeded
  dataTable2 = -1099035225
  flag(dataTable2)
  flag = PlaceObjectOnGroundProperly
  dataTable2 = numberValue7
  flag(dataTable2)
  flag = FreezeEntityPosition
  dataTable2 = numberValue7
  textValue = true
  -- Beginner: Freeze or unfreeze an entity in place.
  flag(dataTable2, textValue)
  flag = SetEntityRotation
  dataTable2 = numberValue7
  textValue = -90.0
  numberValue = 0.0
  workValue = 0.0
  workValue2 = 2
  flag2 = true
  flag(dataTable2, textValue, numberValue, workValue, workValue2, flag2)
  flag = SetEntityCollision
  dataTable2 = numberValue7
  textValue = false
  numberValue = false
  flag(dataTable2, textValue, numberValue)
  flag = textValue2
  dataTable2 = arg2
  textValue = 4000
  flag = flag(dataTable2, textValue)
  if not flag then
    dataTable2 = SetEntityCollision
    textValue = numberValue7
    numberValue = true
    workValue = true
    dataTable2(textValue, numberValue, workValue)
    dataTable2 = SetEntityHeading
    textValue = numberValue7
    numberValue = 0.0
    -- Beginner: Change the direction an entity is facing.
    dataTable2(textValue, numberValue)
    dataTable2 = SetEntityRotation
    textValue = numberValue7
    numberValue = 60.0
    workValue = 20.0
    workValue2 = 10.0
    flag2 = 1
    flag3 = true
    dataTable2(textValue, numberValue, workValue, workValue2, flag2, flag3)
    dataTable2 = AttachEntityToEntity
    textValue = numberValue7
    numberValue = arg2
    workValue = gameTime2
    workValue2 = -0.1
    flag2 = 0.15
    flag3 = -0.3
    numberValue2 = 180.0
    numberValue3 = 200.0
    numberValue4 = 90.0
    flag5 = true
    flag6 = true
    flag7 = false
    flag8 = false
    numberValue5 = 2
    flag9 = true
    -- Beginner: Attach one entity to another entity.
    dataTable2(textValue, numberValue, workValue, workValue2, flag2, flag3, numberValue2, numberValue3, numberValue4, flag5, flag6, flag7, flag8, numberValue5, flag9)
    dataTable2 = textValue2
    textValue = arg2
    numberValue = 1000
    dataTable2 = dataTable2(textValue, numberValue)
    flag = dataTable2
  end
  dataTable2 = tCMG
  dataTable2 = dataTable2.stopAnim
  textValue = true
  dataTable2(textValue)
  dataTable2 = ResetPedStrafeClipset
  textValue = iterator
  dataTable2(textValue)
  dataTable2 = ResetPedMovementClipset
  textValue = iterator
  numberValue = 0.0
  dataTable2(textValue, numberValue)
  dataTable2 = SetPedCanPlayAmbientAnims
  textValue = iterator
  numberValue = true
  dataTable2(textValue, numberValue)
  dataTable2 = SetPedCanPlayAmbientBaseAnims
  textValue = iterator
  numberValue = true
  dataTable2(textValue, numberValue)
  if not flag then
    dataTable2 = CMG
    dataTable2 = dataTable2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    dataTable2 = dataTable2()
    dataTable2 = dataTable2 - vector3Builder
    dataTable2 = #dataTable2
    if not (dataTable2 > 5.0) then
      goto flow_label_265
    end
  end
  dataTable2 = DeleteEntity
  textValue = numberValue7
  -- Beginner: Delete a GTA entity.
  dataTable2(textValue)
  dataTable2 = notify
  textValue = "~r~Failed to place clamp on vehicle."
  -- Beginner: Show a notification to the player.
  dataTable2(textValue)
  dataTable2 = false
  flag4 = dataTable2
  return
  ::flow_label_265::
  dataTable2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  dataTable2 = dataTable2()
  while true do
    textValue = NetworkGetEntityIsNetworked
    numberValue = numberValue7
    textValue = textValue(numberValue)
    if textValue then
      textValue = NetworkGetNetworkIdFromEntity
      numberValue = numberValue7
      textValue = textValue(numberValue)
      if 0 ~= textValue then
        break
      end
    end
    textValue = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue = textValue()
    textValue = textValue - dataTable2
    numberValue = 3000
    if textValue > numberValue then
      textValue = DeleteEntity
      numberValue = numberValue7
      -- Beginner: Delete a GTA entity.
      textValue(numberValue)
      textValue = false
      flag4 = textValue
      return
    end
    textValue = Citizen
    textValue = textValue.Wait
    numberValue = 0
    textValue(numberValue)
  end
  textValue = NetworkGetNetworkIdFromEntity
  numberValue = numberValue7
  textValue = textValue(numberValue)
  if 0 ~= textValue then
    numberValue = TriggerServerEvent
    workValue = "da3b635d57"
    workValue2 = arg1
    flag2 = textValue
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3b635d57".
    numberValue(workValue, workValue2, flag2)
    numberValue = notify
    workValue = "~y~Vehicle clamped."
    -- Beginner: Show a notification to the player.
    numberValue(workValue)
  end
  numberValue = false
  flag4 = numberValue
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1b7e99a63d".
localEventCall(textValue3, textValue4)
localEventCall = TriggerEvent
textValue3 = "chat:addSuggestion"
textValue4 = "/clamp"
textValue5 = "Clamp the nearest vehicle"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(textValue3, textValue4, textValue5)
localEventCall = RegisterNetEvent
textValue3 = "1f35d11d0c"
-- Beginner: this function handles network event "1f35d11d0c".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2) ===
function textValue4(arg1, arg2)
  local gameTime, gameTime2, numberValue6, vector3Builder
  gameTime = NetworkDoesNetworkIdExist
  gameTime2 = arg1
  gameTime = gameTime(gameTime2)
  if not gameTime then
    return
  end
  gameTime = NetworkGetEntityFromNetworkId
  gameTime2 = arg1
  gameTime = gameTime(gameTime2)
  gameTime2 = DoesEntityExist
  numberValue6 = gameTime
  gameTime2 = gameTime2(numberValue6)
  if not gameTime2 then
    return
  end
  gameTime2 = FreezeEntityPosition
  numberValue6 = gameTime
  vector3Builder = arg2
  -- Beginner: Freeze or unfreeze an entity in place.
  gameTime2(numberValue6, vector3Builder)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1f35d11d0c".
localEventCall(textValue3, textValue4)
