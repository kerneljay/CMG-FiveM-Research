--[[
    LEVEL 1 BEGINNER GUIDE — Prison Toilet Escape
    ==================================================

    File: cmg/prod/client/hmp/cl_prisonToiletEscape.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: prison gameplay, specifically the Prison Toilet Escape feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 12
      * Background threads: 0
      * Always-running loops: 4
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
local dataTable, numberValue2, workValue7, flag5, workValue9, workValue10, workValue11, workValue12, dataTable2, eventRegistration, textValue, workValue2
dataTable = {}
numberValue2 = 305960317
dataTable[numberValue2] = true
numberValue2 = -652984928
dataTable[numberValue2] = true
numberValue2 = -930879665
dataTable[numberValue2] = true
numberValue2 = -1228586030
dataTable[numberValue2] = true
numberValue2 = 1872312775
dataTable[numberValue2] = true
numberValue2 = 1561564488
dataTable[numberValue2] = true
numberValue2 = false
workValue7 = nil
flag5 = false
workValue9 = nil

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2) ===
function workValue10(arg1, arg2)
  local arg3, workValue8, textValue2, flag6, flag7, numberValue5, flag10, coords2, workValue
  arg3 = {}
  if not arg2 then
    arg2 = 2.0
  end
  workValue8 = GetGamePool
  textValue2 = "CObject"
  workValue8 = workValue8(textValue2)
  textValue2 = 1
  flag6 = #workValue8
  flag7 = 1
  for numberValue5 = textValue2, flag6, flag7 do
    flag10 = workValue8[numberValue5]
    coords2 = GetEntityCoords
    workValue = flag10
    -- Beginner: result below is entityCoords.
    coords2 = coords2(workValue)
    coords2 = coords2 - arg1
    coords2 = #coords2
    if arg2 > coords2 then
      coords2 = GetEntityModel
      workValue = flag10
      -- Beginner: result below is modelHash.
      coords2 = coords2(workValue)
      workValue = dataTable
      coords2 = workValue[coords2]
      if coords2 then
        coords2 = #arg3
        coords2 = coords2 + 1
        arg3[coords2] = flag10
      end
    end
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1) ===
function workValue11(arg1)
  local arg2, arg3
  arg2 = true
  numberValue2 = arg2
  arg2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local coords, playerPed, numberValue3, iterator, numberValue4, textValue3, flag8, flag9, workValue13, workValue14
    while true do
      coords = numberValue2
      if not coords then
        break
      end
      coords = GetEntityCoords
      playerPed = PlayerPedId
      playerPed, numberValue3, iterator, numberValue4, textValue3, flag8, flag9, workValue13, workValue14 = playerPed()
      -- Beginner: result below is entityCoords.
      coords = coords(playerPed, numberValue3, iterator, numberValue4, textValue3, flag8, flag9, workValue13, workValue14)
      playerPed = CMG
      playerPed = playerPed.isPlayerInPrison
      playerPed = playerPed()
      if not playerPed then
        playerPed = false
        flag5 = playerPed
        playerPed = nil
        workValue7 = playerPed
      else
        playerPed = nil
        numberValue3 = workValue10
        iterator = coords
        numberValue4 = 2.5
        numberValue3 = numberValue3(iterator, numberValue4)
        iterator = ipairs
        numberValue4 = numberValue3
        iterator, numberValue4, textValue3, flag8 = iterator(numberValue4)
        for flag9, workValue13 in iterator, numberValue4, textValue3, flag8 do
          playerPed = workValue13
          break
        end
        if playerPed then
          iterator = true
          flag5 = iterator
          workValue7 = playerPed
        else
          iterator = false
          flag5 = iterator
          iterator = nil
          workValue7 = iterator
        end
      end
      playerPed = Wait
      numberValue3 = 200
      playerPed(numberValue3)
    end
    coords = false
    flag5 = coords
    coords = nil
    workValue7 = coords
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
  arg2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local coords, playerPed, numberValue3
    while true do
      coords = numberValue2
      if not coords then
        break
      end
      coords = IsControlJustPressed
      playerPed = 0
      numberValue3 = 38
      coords = coords(playerPed, numberValue3)
      playerPed = workValue7
      if playerPed then
        playerPed = flag5
        if playerPed then
          playerPed = CMG
          playerPed = playerPed.isPlayerInPrison
          playerPed = playerPed()
          if playerPed and coords then
            playerPed = false
            flag5 = playerPed
            playerPed = arg1
            numberValue3 = workValue7
            playerPed(numberValue3)
          end
        end
      end
      playerPed = Wait
      numberValue3 = 0
      playerPed(numberValue3)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
  arg2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local coords, playerPed
    while true do
      coords = numberValue2
      if not coords then
        break
      end
      coords = flag5
      if coords then
        coords = workValue7
        if coords then
          coords = CMG
          coords = coords.isPlayerInPrison
          coords = coords()
          if coords then
            coords = drawNativeNotification
            playerPed = "Press ~INPUT_CONTEXT~ to start your escape"
            -- Beginner: Show a GTA-style notification/help prompt.
            coords(playerPed)
          end
        end
      end
      coords = Wait
      playerPed = 0
      coords(playerPed)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
function workValue12()
  local arg1, arg2
  arg1 = false
  numberValue2 = arg1
end
dataTable2 = {}
eventRegistration = RegisterNetEvent
textValue = "d73cd69672"
-- Beginner: this function handles network event "d73cd69672".

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2, arg3) ===
function workValue2(arg1, arg2, arg3)
  local workValue8, textValue2, flag6, flag7
  workValue8 = dataTable2
  workValue8 = workValue8[arg3]
  if workValue8 then
    workValue8 = dataTable2
    workValue8 = workValue8[arg3]
    workValue8 = workValue8.remove
    if workValue8 then
      workValue8 = dataTable2
      workValue8 = workValue8[arg3]
      workValue8 = workValue8.remove
      workValue8()
    end
    workValue8 = dataTable2
    workValue8 = workValue8[arg3]
    workValue8 = workValue8.entity
    if workValue8 then
      workValue8 = DoesEntityExist
      textValue2 = dataTable2
      textValue2 = textValue2[arg3]
      textValue2 = textValue2.entity
      workValue8 = workValue8(textValue2)
      if workValue8 then
        workValue8 = SetEntityVisible
        textValue2 = dataTable2
        textValue2 = textValue2[arg3]
        textValue2 = textValue2.entity
        flag6 = true
        flag7 = false
        workValue8(textValue2, flag6, flag7)
        workValue8 = SetEntityCollision
        textValue2 = dataTable2
        textValue2 = textValue2[arg3]
        textValue2 = textValue2.entity
        flag6 = true
        flag7 = true
        workValue8(textValue2, flag6, flag7)
        workValue8 = SetEntityAlpha
        textValue2 = dataTable2
        textValue2 = textValue2[arg3]
        textValue2 = textValue2.entity
        flag6 = 255
        flag7 = false
        workValue8(textValue2, flag6, flag7)
      end
    end
    workValue8 = dataTable2
    workValue8[arg3] = nil
  end
  if arg1 then
    return
  end
  workValue8 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
  function textValue2()
    local coords, playerPed, numberValue3, iterator, numberValue4, textValue3, flag8, flag9, workValue13, workValue14, modelHash, workValue4, workValue5, flag3, flag4
    coords = false
    playerPed = {}
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION (decompiler name: numberValue3; parameters: none) ===
    function numberValue3()
      local flag, workValue6
      flag = true
      coords = flag
    end
    playerPed.remove = numberValue3
    playerPed.entity = nil
    iterator = arg3
    numberValue3 = dataTable2
    numberValue3[iterator] = playerPed
    while not coords do
      numberValue3 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      numberValue3 = numberValue3()
      iterator = GetEntityCoords
      numberValue4 = numberValue3
      -- Beginner: result below is entityCoords.
      iterator = iterator(numberValue4)
      numberValue4 = arg2
      numberValue4 = iterator - numberValue4
      numberValue4 = #numberValue4
      if numberValue4 <= 50 then
        numberValue4 = GetGamePool
        textValue3 = "CObject"
        numberValue4 = numberValue4(textValue3)
        textValue3 = 1
        flag8 = #numberValue4
        flag9 = 1
        for workValue13 = textValue3, flag8, flag9 do
          workValue14 = numberValue4[workValue13]
          modelHash = GetEntityModel
          workValue4 = workValue14
          -- Beginner: result below is modelHash.
          modelHash = modelHash(workValue4)
          workValue4 = dataTable
          workValue4 = workValue4[modelHash]
          if workValue4 then
            workValue4 = Entity
            workValue5 = workValue14
            workValue4 = workValue4(workValue5)
            workValue4 = workValue4.state
            workValue4 = workValue4.isPrisonToilet
            if not workValue4 then
              workValue4 = NetworkGetEntityIsNetworked
              workValue5 = workValue14
              workValue4 = workValue4(workValue5)
              if not workValue4 then
                workValue4 = GetEntityCoords
                workValue5 = workValue14
                -- Beginner: result below is entityCoords.
                workValue4 = workValue4(workValue5)
                workValue5 = arg2
                workValue4 = workValue4 - workValue5
                workValue4 = #workValue4
                if workValue4 < 3.0 then
                  workValue4 = SetEntityVisible
                  workValue5 = workValue14
                  flag3 = false
                  flag4 = false
                  workValue4(workValue5, flag3, flag4)
                  workValue4 = SetEntityCollision
                  workValue5 = workValue14
                  flag3 = false
                  flag4 = false
                  workValue4(workValue5, flag3, flag4)
                  workValue4 = SetEntityAlpha
                  workValue5 = workValue14
                  flag3 = 0
                  flag4 = false
                  workValue4(workValue5, flag3, flag4)
                  playerPed.entity = workValue14
                  break
                end
              end
            end
          end
        end
      else
        numberValue4 = playerPed.entity
        if numberValue4 then
          numberValue4 = DoesEntityExist
          textValue3 = playerPed.entity
          numberValue4 = numberValue4(textValue3)
          if numberValue4 then
            numberValue4 = SetEntityVisible
            textValue3 = playerPed.entity
            flag8 = true
            flag9 = false
            numberValue4(textValue3, flag8, flag9)
            numberValue4 = SetEntityCollision
            textValue3 = playerPed.entity
            flag8 = true
            flag9 = true
            numberValue4(textValue3, flag8, flag9)
            numberValue4 = SetEntityAlpha
            textValue3 = playerPed.entity
            flag8 = 255
            flag9 = false
            numberValue4(textValue3, flag8, flag9)
          end
        end
        playerPed.entity = nil
      end
      numberValue4 = Wait
      textValue3 = 500
      numberValue4(textValue3)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  workValue8(textValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d73cd69672".
eventRegistration(textValue, workValue2)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2, arg3, workValue8, textValue2, flag6, flag7, numberValue5, flag10, coords2, workValue, workValue3, numberValue, flag2
  arg2 = CMG
  arg2 = arg2.isPlayerInPrison
  arg2 = arg2()
  if not arg2 then
    return
  end
  arg2 = workValue9
  if arg2 then
    return
  end
  arg2 = GetEntityCoords
  arg3 = arg1
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3)
  arg3 = GetEntityHeading
  workValue8 = arg1
  -- Beginner: result below is heading.
  arg3 = arg3(workValue8)
  workValue8 = CMG
  workValue8 = workValue8.TriggerServerCallback
  textValue2 = "d939d5b1ea"
  flag6 = arg2.x
  flag7 = arg2.y
  numberValue5 = arg2.z
  flag10 = arg3
  workValue8, textValue2 = workValue8(textValue2, flag6, flag7, numberValue5, flag10)
  if not workValue8 then
    flag6 = tCMG
    flag6 = flag6.notify
    flag7 = "~r~You need a screwdriver to start the toilet escape. Buy one from the canteen."
    -- Beginner: Show a notification to the player.
    flag6(flag7)
    return
  end
  flag6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag6 = flag6()
  flag6 = flag6 + 10000
  while true do
    flag7 = NetworkDoesNetworkIdExist
    numberValue5 = workValue8
    flag7 = flag7(numberValue5)
    if flag7 then
      break
    end
    flag7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    flag7 = flag7()
    if not (flag6 > flag7) then
      break
    end
    flag7 = Wait
    numberValue5 = 0
    flag7(numberValue5)
  end
  flag7 = NetworkDoesNetworkIdExist
  numberValue5 = workValue8
  flag7 = flag7(numberValue5)
  if not flag7 then
    if textValue2 then
      flag7 = TriggerEvent
      numberValue5 = "d73cd69672"
      flag10 = true
      coords2 = arg2
      workValue = textValue2
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "d73cd69672".
      flag7(numberValue5, flag10, coords2, workValue)
    end
    return
  end
  flag7 = Wait
  numberValue5 = 300
  flag7(numberValue5)
  flag7 = NetworkGetEntityFromNetworkId
  numberValue5 = workValue8
  flag7 = flag7(numberValue5)
  numberValue5 = DoesEntityExist
  flag10 = flag7
  numberValue5 = numberValue5(flag10)
  if not numberValue5 then
    if textValue2 then
      numberValue5 = TriggerEvent
      flag10 = "d73cd69672"
      coords2 = true
      workValue = arg2
      workValue3 = textValue2
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "d73cd69672".
      numberValue5(flag10, coords2, workValue, workValue3)
    end
    return
  end
  numberValue5 = SetEntityRotation
  flag10 = flag7
  coords2 = 0.0
  workValue = 0.0
  workValue3 = arg3
  numberValue = 2
  flag2 = true
  numberValue5(flag10, coords2, workValue, workValue3, numberValue, flag2)
  numberValue5 = _G
  numberValue5 = numberValue5.CMG_PrisonToiletScrewGame
  if numberValue5 then
    numberValue5 = _G
    numberValue5 = numberValue5.CMG_PrisonToiletScrewGame
    numberValue5 = numberValue5.new
    flag10 = flag7
    numberValue5 = numberValue5(flag10)
    if numberValue5 then
      goto flow_label_103
    end
  end
  numberValue5 = nil
  ::flow_label_103::
  workValue9 = numberValue5
  numberValue5 = workValue9
  if not numberValue5 then
    if textValue2 then
      numberValue5 = TriggerEvent
      flag10 = "d73cd69672"
      coords2 = true
      workValue = arg2
      workValue3 = textValue2
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "d73cd69672".
      numberValue5(flag10, coords2, workValue, workValue3)
    end
    return
  end
  numberValue5 = workValue9
  flag10 = numberValue5
  numberValue5 = numberValue5.start
  numberValue5(flag10)
  numberValue5 = nil
  workValue9 = numberValue5
end
CMG_prisonToiletStartGame = eventRegistration
eventRegistration = RegisterNetEvent
textValue = "aee0b08546"
-- Beginner: this function handles network event "aee0b08546".

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, arg2
  arg1 = workValue11
  arg2 = CMG_prisonToiletStartGame
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "aee0b08546".
eventRegistration(textValue, workValue2)
eventRegistration = RegisterNetEvent
textValue = "19f123276f"
-- Beginner: this function handles network event "19f123276f".

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, arg2
  arg1 = workValue12
  arg1()
  arg1 = workValue9
  if arg1 then
    arg1 = workValue9.cleanup
    if arg1 then
      arg1 = workValue9
      arg2 = arg1
      arg1 = arg1.cleanup
      arg1(arg2)
    end
  end
  arg1 = nil
  workValue9 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "19f123276f".
eventRegistration(textValue, workValue2)
