--[[
    LEVEL 1 BEGINNER GUIDE — Casinocoinflip
    ============================================

    File: cmg/prod/client/casino/cl_casinocoinflip.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: casino gameplay and casino UI/features, specifically the Casinocoinflip feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 38
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
local number, number7, dataCollection3, stateFlag13, stateFlag14, dataCollection5, stateFlag15, dataCollection6, workingValue10, workingValue11, workingValue, stateFlag2, stateFlag3, dataCollection, dataCollection2, createVector3, number3, number5, number6, eventHandler, text3, stateFlag11, workingValue5, cmgOperation, workingValue6, eventHandler2, text4, text5, rageUiOperation2, text6, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, text9, text10
number = -1
number7 = 1000
dataCollection3 = {}
stateFlag13 = false
stateFlag14 = false
dataCollection5 = {}
stateFlag15 = false
dataCollection6 = {}
workingValue10 = nil
workingValue11 = nil
workingValue = nil
stateFlag2 = false
stateFlag3 = false
dataCollection = {}
dataCollection2 = {}
createVector3 = vector3
number3 = 988.996399
number5 = 57.600464
number6 = 79.980637
createVector3 = createVector3(number3, number5, number6)
dataCollection2.tablePos = createVector3
dataCollection2.tableHeading = 58.000015258789
dataCollection2.distance = 1000.0
dataCollection2.tableModel = 146696221
dataCollection2.textureVariant = 2
dataCollection2.objectId = 0
dataCollection[0] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number3 = 994.685547
number5 = 66.705116
number6 = 79.98053
createVector3 = createVector3(number3, number5, number6)
dataCollection2.tablePos = createVector3
dataCollection2.tableHeading = 57.999980926514
dataCollection2.distance = 1000.0
dataCollection2.tableModel = 146696221
dataCollection2.textureVariant = 2
dataCollection2.objectId = 0
dataCollection[1] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number3 = 988.979065
number5 = 75.723068
number6 = 79.990997
createVector3 = createVector3(number3, number5, number6)
dataCollection2.tablePos = createVector3
dataCollection2.tableHeading = 328.0
dataCollection2.distance = 1000.0
dataCollection2.tableModel = 146696221
dataCollection2.textureVariant = 2
dataCollection2.objectId = 0
dataCollection[2] = dataCollection2
dataCollection2 = {}
createVector3 = vec3
number3 = -1898.087524
number5 = 2075.5
number6 = 143.86203
createVector3 = createVector3(number3, number5, number6)
dataCollection2.tablePos = createVector3
dataCollection2.tableHeading = 229.0
dataCollection2.distance = 1000.0
dataCollection2.tableModel = 146696221
dataCollection2.textureVariant = 2
dataCollection2.objectId = 0
dataCollection[3] = dataCollection2
dataCollection3.coinflipTables = dataCollection

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1) ===
function dataCollection(localValue1)
  local localValue2, number10, workingValue7, number11, number12
  localValue2 = -1
  number10 = 0
  workingValue7 = localValue1
  number11 = 4
  for number12 = number10, workingValue7, number11 do
    localValue2 = localValue2 + 1
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue1) ===
function dataCollection2(localValue1)
  local localValue2
  if 0 == localValue1 then
    localValue2 = 3
    return localValue2
  end
  if 1 == localValue1 then
    localValue2 = 2
    return localValue2
  end
  if 2 == localValue1 then
    localValue2 = 1
    return localValue2
  end
  if 3 == localValue1 then
    localValue2 = 0
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1) ===
function createVector3(localValue1)
  local localValue2
  if 1 == localValue1 then
    localValue2 = 1
    return localValue2
  end
  if 2 == localValue1 then
    localValue2 = 3
    return localValue2
  end
  if 3 == localValue1 then
    localValue2 = 5
    return localValue2
  end
  if 4 == localValue1 then
    localValue2 = 7
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: number3; parameters: localValue1) ===
function number3(localValue1)
  local localValue2
  if -1 ~= localValue1 then
    localValue2 = localValue1 % 4
    return localValue2
  else
    localValue2 = 100
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: number5; parameters: localValue1) ===
function number5(localValue1)
  local localValue2, number10, workingValue7, number11, number12, number13, number14
  localValue2 = dataCollection
  number10 = localValue1
  localValue2 = localValue2(number10)
  number10 = dataCollection3.coinflipTables
  number10 = number10[localValue2]
  number10 = number10.objectId
  workingValue7 = DoesEntityExist
  number11 = number10
  workingValue7 = workingValue7(number11)
  if workingValue7 then
    workingValue7 = number3
    number11 = localValue1
    workingValue7 = workingValue7(number11)
    number11 = createVector3
    number12 = workingValue7
    number11 = number11(number12)
    number12 = GetEntityBonePosition_2
    number13 = number10
    number14 = number11
    return number12(number13, number14)
  else
    workingValue7 = vector3
    number11 = 0.0
    number12 = 0.0
    number13 = 0.0
    return workingValue7(number11, number12, number13)
  end
end

-- === HELPER FUNCTION (decompiler name: number6; parameters: localValue1) ===
function number6(localValue1)
  local localValue2, number10, workingValue7, number11, number12, number13, number14, tableHelper3
  localValue2 = dataCollection
  number10 = localValue1
  localValue2 = localValue2(number10)
  number10 = dataCollection3.coinflipTables
  number10 = number10[localValue2]
  number10 = number10.objectId
  workingValue7 = DoesEntityExist
  number11 = number10
  workingValue7 = workingValue7(number11)
  if workingValue7 then
    workingValue7 = number3
    number11 = localValue1
    workingValue7 = workingValue7(number11)
    number11 = dataCollection2
    number12 = workingValue7
    number11 = number11(number12)
    workingValue7 = number11 + 1
    if 3 == workingValue7 then
      number11 = GetEntityBoneRotation
      number12 = number10
      number13 = createVector3
      number14 = workingValue7
      number13, number14, tableHelper3 = number13(number14)
      number11 = number11(number12, number13, number14, tableHelper3)
      number12 = vector3
      number13 = 0.0
      number14 = 0.0
      tableHelper3 = 40.0
      number12 = number12(number13, number14, tableHelper3)
      number11 = number11 + number12
      return number11
    else
      number11 = GetEntityBoneRotation
      number12 = number10
      number13 = createVector3
      number14 = workingValue7
      number13, number14, tableHelper3 = number13(number14)
      return number11(number12, number13, number14, tableHelper3)
    end
  else
    workingValue7 = vector3
    number11 = 0.0
    number12 = 0.0
    number13 = 0.0
    return workingValue7(number11, number12, number13)
  end
end
eventHandler = RegisterNetEvent
text3 = "44cf61eede"
-- Beginner: this function handles network event "44cf61eede".

-- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue1) ===
function stateFlag11(localValue1)
  local localValue2
  dataCollection5 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "44cf61eede".
eventHandler(text3, stateFlag11)
eventHandler = Citizen
eventHandler = eventHandler.CreateThread
-- Beginner: this function handles network event "44cf61eede".

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, number10, workingValue7, number11, number12, number13, number14, tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4, stateFlag5, stateFlag6
  localValue1 = Wait
  localValue2 = 1000
  localValue1(localValue2)
  localValue1 = TriggerServerEvent
  localValue2 = "0e78755a8d"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0e78755a8d".
  localValue1(localValue2)
  localValue1 = 0
  localValue2 = dataCollection3.coinflipTables
  localValue2 = #localValue2
  number10 = 1
  for workingValue7 = localValue1, localValue2, number10 do
    number11 = dataCollection3.coinflipTables
    number11 = number11[workingValue7]
    number12 = CMG
    number12 = number12.loadModel
    number13 = number11.tableModel
    number12 = number12(number13)
    if number12 then
      number13 = dataCollection3.coinflipTables
      number13 = number13[workingValue7]
      number14 = CreateObjectNoOffset
      tableHelper3 = number11.tableModel
      tableHelper4 = number11.tablePos
      tableHelper4 = tableHelper4.x
      tableHelper = number11.tablePos
      tableHelper = tableHelper.y
      tableHelper2 = number11.tablePos
      tableHelper2 = tableHelper2.z
      stateFlag4 = false
      stateFlag5 = false
      stateFlag6 = false
      -- Beginner: result below is objectEntity.
      number14 = number14(tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4, stateFlag5, stateFlag6)
      number13.objectId = number14
      number13 = SetModelAsNoLongerNeeded
      number14 = number12
      number13(number14)
      number13 = SetEntityHeading
      number14 = dataCollection3.coinflipTables
      number14 = number14[workingValue7]
      number14 = number14.objectId
      tableHelper3 = number11.tableHeading
      -- Beginner: Change the direction an entity is facing.
      number13(number14, tableHelper3)
      number13 = FreezeEntityPosition
      number14 = dataCollection3.coinflipTables
      number14 = number14[workingValue7]
      number14 = number14.objectId
      tableHelper3 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      number13(number14, tableHelper3)
      number13 = SetObjectTextureVariation
      number14 = dataCollection3.coinflipTables
      number14 = number14[workingValue7]
      number14 = number14.objectId
      tableHelper3 = dataCollection3.coinflipTables
      tableHelper3 = tableHelper3[workingValue7]
      tableHelper3 = tableHelper3.textureVariant
      number13(number14, tableHelper3)
    end
  end
  while true do
    localValue1 = 1000
    number7 = localValue1
    localValue1 = -1
    number = localValue1
    localValue1 = GetEntityCoords
    localValue2 = PlayerPedId
    localValue2, number10, workingValue7, number11, number12, number13, number14, tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4, stateFlag5, stateFlag6 = localValue2()
    -- Beginner: result below is entityCoords.
    localValue1 = localValue1(localValue2, number10, workingValue7, number11, number12, number13, number14, tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4, stateFlag5, stateFlag6)
    localValue2 = 0
    number10 = dataCollection3.coinflipTables
    number10 = #number10
    number10 = number10 + 1
    number10 = number10 * 4
    number10 = number10 - 1
    workingValue7 = 1
    for number11 = localValue2, number10, workingValue7 do
      number12 = number5
      number13 = number11
      number12 = number12(number13)
      number13 = vector3
      number14 = 0.0
      tableHelper3 = 0.0
      tableHelper4 = 0.0
      number13 = number13(number14, tableHelper3, tableHelper4)
      if number12 ~= number13 then
        number13 = localValue1 - number12
        number13 = #number13
        number14 = number7
        if number13 < number14 then
          number7 = number13
          number = number11
        end
      end
    end
    localValue2 = Wait
    number10 = 100
    localValue2(number10)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(text3)
eventHandler = AddEventHandler
text3 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue1) ===
function stateFlag11(localValue1)
  local localValue2, number10, workingValue7, number11, number12, number13, number14, tableHelper3
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = pairs
    number10 = dataCollection3.coinflipTables
    localValue2, number10, workingValue7, number11 = localValue2(number10)
    for number12, number13 in localValue2, number10, workingValue7, number11 do
      number14 = DeleteObject
      tableHelper3 = dataCollection3.coinflipTables
      tableHelper3 = tableHelper3[number12]
      tableHelper3 = tableHelper3.objectId
      number14(tableHelper3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventHandler(text3, stateFlag11)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, number10, workingValue7, number11, number12
  localValue2 = RageUI
  localValue2 = localValue2.CloseAll
  localValue2()
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  number10 = RMenu
  workingValue7 = number10
  number10 = number10.Get
  number11 = "cmgcoinflip"
  number12 = "instructions"
  -- Beginner: result below is menu.
  number10 = number10(workingValue7, number11, number12)
  workingValue7 = localValue1
  localValue2(number10, workingValue7)
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, number10, workingValue7, number11, number12
  localValue2 = RageUI
  localValue2 = localValue2.CloseAll
  localValue2()
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  number10 = RMenu
  workingValue7 = number10
  number10 = number10.Get
  number11 = "cmgcoinflip"
  number12 = "mainmenu"
  -- Beginner: result below is menu.
  number10 = number10(workingValue7, number11, number12)
  workingValue7 = localValue1
  localValue2(number10, workingValue7)
end
stateFlag11 = false

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, number10, workingValue7, number11, number12, number13, number14, tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4
  localValue1 = stateFlag13
  if localValue1 then
    localValue1 = stateFlag3
    if localValue1 then
      localValue1 = TaskPlayAnim
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      number10 = "anim_casino_b@amb@casino@games@shared@player@"
      workingValue7 = "idle_cardgames"
      number11 = 1.0
      number12 = 1.0
      number13 = -1
      number14 = 0
      tableHelper3 = 0.0
      tableHelper4 = false
      tableHelper = false
      tableHelper2 = false
      -- Beginner: Play an animation on a ped.
      localValue1(localValue2, number10, workingValue7, number11, number12, number13, number14, tableHelper3, tableHelper4, tableHelper, tableHelper2)
    end
    localValue1 = stateFlag2
    if not localValue1 then
      localValue1 = IsControlJustPressed
      localValue2 = 0
      number10 = 202
      localValue1 = localValue1(localValue2, number10)
      if localValue1 then
        localValue1 = stateFlag15
        if not localValue1 then
          localValue1 = RageUI
          localValue1 = localValue1.Visible
          localValue2 = RMenu
          number10 = localValue2
          localValue2 = localValue2.Get
          workingValue7 = "cmgcoinflip"
          number11 = "confirm"
          localValue2, number10, workingValue7, number11, number12, number13, number14, tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4 = localValue2(number10, workingValue7, number11)
          -- Beginner: result below is menuVisible.
          localValue1 = localValue1(localValue2, number10, workingValue7, number11, number12, number13, number14, tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4)
          if not localValue1 then
            localValue1 = CMG
            localValue1 = localValue1.loadAnimDict
            localValue2 = "anim_casino_b@amb@casino@games@shared@player@"
            localValue1 = localValue1(localValue2)
            localValue2 = TaskPlayAnim
            number10 = CMG
            number10 = number10.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            number10 = number10()
            workingValue7 = localValue1
            number11 = "sit_exit_left"
            number12 = 1.0
            number13 = 1.0
            number14 = 2500
            tableHelper3 = 0
            tableHelper4 = 0.0
            tableHelper = false
            tableHelper2 = false
            stateFlag4 = false
            localValue2(number10, workingValue7, number11, number12, number13, number14, tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4)
            localValue2 = RemoveAnimDict
            number10 = "anim_casino_b@amb@casino@games@shared@player@"
            localValue2(number10)
            localValue2 = tCMG
            localValue2 = localValue2.setCanAnim
            number10 = true
            localValue2(number10)
            localValue2 = false
            stateFlag13 = localValue2
            localValue2 = true
            stateFlag14 = localValue2
            localValue2 = eventHandler
            number10 = false
            -- Beginner: Register a client-side event handler. Event/command: false.
            localValue2(number10)
            localValue2 = TriggerServerEvent
            number10 = "62da5de2d3"
            workingValue7 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "62da5de2d3".
            localValue2(number10, workingValue7)
            localValue2 = TriggerServerEvent
            number10 = "811c680e2f"
            localValue2(number10)
            localValue2 = {}
            dataCollection6 = localValue2
            localValue2 = false
            stateFlag3 = localValue2
            localValue2 = SetTimeout
            number10 = 5000

            -- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
            function workingValue7()
              local stateFlag, stateFlag10
              stateFlag = false
              stateFlag14 = stateFlag
            end
            localValue2(number10, workingValue7)
          end
        end
      end
    end
    localValue1 = number7
    if localValue1 > 5 then
      localValue1 = ClearHelp
      localValue2 = true
      localValue1(localValue2)
      localValue1 = eventHandler
      localValue2 = false
      -- Beginner: Register a client-side event handler. Event/command: false.
      localValue1(localValue2)
      localValue1 = false
      stateFlag11 = localValue1
      localValue1 = stateFlag13
      if localValue1 then
        localValue1 = tCMG
        localValue1 = localValue1.setCanAnim
        localValue2 = true
        localValue1(localValue2)
        localValue1 = false
        stateFlag13 = localValue1
        localValue1 = true
        stateFlag14 = localValue1
        localValue1 = eventHandler
        localValue2 = false
        -- Beginner: Register a client-side event handler. Event/command: false.
        localValue1(localValue2)
        localValue1 = TriggerServerEvent
        localValue2 = "62da5de2d3"
        number10 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "62da5de2d3".
        localValue1(localValue2, number10)
        localValue1 = TriggerServerEvent
        localValue2 = "811c680e2f"
        localValue1(localValue2)
        localValue1 = false
        stateFlag3 = localValue1
        localValue1 = {}
        dataCollection6 = localValue1
      end
    end
  end
  localValue1 = stateFlag13
  if not localValue1 then
    localValue1 = number
    if -1 ~= localValue1 then
      localValue1 = number7
      if localValue1 < 2 then
        localValue1 = IsControlJustPressed
        localValue2 = 0
        number10 = 38
        localValue1 = localValue1(localValue2, number10)
        if localValue1 then
          localValue1 = TriggerServerEvent
          localValue2 = "0e78755a8d"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0e78755a8d".
          localValue1(localValue2)
          localValue2 = number
          localValue1 = dataCollection5
          localValue1 = localValue1[localValue2]
          if false == localValue1 then
            localValue1 = TriggerServerEvent
            localValue2 = "e3209e9c43"
            number10 = number
            localValue1(localValue2, number10)
          end
        end
      end
    end
  end
  localValue1 = stateFlag13
  if not localValue1 then
    localValue1 = number
    if -1 ~= localValue1 then
      localValue1 = number7
      if localValue1 < 2 then
        localValue1 = stateFlag14
        if not localValue1 then
          localValue2 = number
          localValue1 = dataCollection5
          localValue1 = localValue1[localValue2]
          if false == localValue1 then
            localValue1 = drawNativeNotification
            localValue2 = "Press ~INPUT_PICKUP~ to play Coinflip"
            -- Beginner: Show a GTA-style notification/help prompt.
            localValue1(localValue2)
          else
            localValue1 = drawNativeNotification
            localValue2 = "This seat is taken."
            localValue1(localValue2)
          end
          localValue1 = eventHandler
          localValue2 = true
          -- Beginner: Register a client-side event handler. Event/command: true.
          localValue1(localValue2)
          localValue1 = stateFlag11
          if not localValue1 then
            localValue1 = true
            stateFlag11 = localValue1
            localValue1 = PlaySoundFrontend
            localValue2 = -1
            number10 = "DLC_VW_RULES"
            workingValue7 = "dlc_vw_table_games_frontend_sounds"
            number11 = true
            localValue1(localValue2, number10, workingValue7, number11)
            localValue1 = PlaySoundFrontend
            localValue2 = -1
            number10 = "DLC_VW_WIN_CHIPS"
            workingValue7 = "dlc_vw_table_games_frontend_sounds"
            number11 = true
            localValue1(localValue2, number10, workingValue7, number11)
          end
        end
      end
    end
  end
end
cmgOperation = CMG
cmgOperation = cmgOperation.createThreadOnTick
workingValue6 = workingValue5
eventHandler2 = "Casino Coinflip Tick"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation(workingValue6, eventHandler2)

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: localValue1) ===
function cmgOperation(localValue1)
  local localValue2
  if 0 == localValue1 then
    localValue2 = "sit_enter_left"
    return localValue2
  elseif 1 == localValue1 then
    localValue2 = "sit_enter_left_side"
    return localValue2
  elseif 2 == localValue1 then
    localValue2 = "sit_enter_right_side"
    return localValue2
  end
  localValue2 = "sit_enter_left"
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, number10, workingValue7, number11, number12, number13, number14, tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4, stateFlag5, stateFlag6, number2, number4, stateFlag7, stateFlag8, stateFlag9, number8, number9, stateFlag12
  localValue2 = true
  stateFlag15 = localValue2
  localValue2 = tCMG
  localValue2 = localValue2.setCanAnim
  number10 = false
  localValue2(number10)
  localValue2 = true
  stateFlag13 = localValue2
  localValue2 = true
  stateFlag14 = localValue2
  localValue2 = SetTimeout
  number10 = 2500

  -- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
  function workingValue7()
    local stateFlag, stateFlag10
    stateFlag = false
    stateFlag14 = stateFlag
    stateFlag = eventHandler
    stateFlag10 = false
    -- Beginner: Register a client-side event handler. Event/command: false.
    stateFlag(stateFlag10)
    stateFlag = text3
    stateFlag10 = true
    stateFlag(stateFlag10)
    stateFlag = true
    stateFlag3 = stateFlag
  end
  localValue2(number10, workingValue7)
  localValue2 = drawNativeNotification
  number10 = "Waiting for next game to start..."
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue2(number10)
  localValue2 = {}
  number10 = "anim_casino_b@amb@casino@games@blackjack@dealer"
  workingValue7 = "anim_casino_b@amb@casino@games@shared@dealer@"
  number11 = "anim_casino_b@amb@casino@games@blackjack@player"
  number12 = "anim_casino_b@amb@casino@games@shared@player@"
  localValue2[1] = number10
  localValue2[2] = workingValue7
  localValue2[3] = number11
  localValue2[4] = number12
  number10 = pairs
  workingValue7 = localValue2
  number10, workingValue7, number11, number12 = number10(workingValue7)
  for number13, number14 in number10, workingValue7, number11, number12 do
    tableHelper3 = CMG
    tableHelper3 = tableHelper3.loadAnimDict
    tableHelper4 = number14
    -- Beginner: Load a GTA animation dictionary before using it.
    tableHelper3(tableHelper4)
  end
  number10 = dataCollection
  workingValue7 = localValue1
  number10 = number10(workingValue7)
  workingValue7 = dataCollection3.coinflipTables
  workingValue7 = workingValue7[number10]
  workingValue7 = workingValue7.tablePos
  number11 = number3
  number12 = localValue1
  number11 = number11(number12)
  number12 = GetAnimInitialOffsetPosition
  number13 = "anim_casino_b@amb@casino@games@shared@player@"
  number14 = cmgOperation
  tableHelper3 = number11
  number14 = number14(tableHelper3)
  tableHelper3 = workingValue7.x
  tableHelper4 = workingValue7.y
  tableHelper = workingValue7.z
  tableHelper2 = 0.0
  stateFlag4 = 0.0
  stateFlag5 = 0.0
  stateFlag6 = 0.01
  number2 = 2
  number12 = number12(number13, number14, tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4, stateFlag5, stateFlag6, number2)
  number13 = GetAnimInitialOffsetRotation
  number14 = "anim_casino_b@amb@casino@games@shared@player@"
  tableHelper3 = cmgOperation
  tableHelper4 = number11
  tableHelper3 = tableHelper3(tableHelper4)
  tableHelper4 = workingValue7.x
  tableHelper = workingValue7.y
  tableHelper2 = workingValue7.z
  stateFlag4 = 0.0
  stateFlag5 = 0.0
  stateFlag6 = 0.0
  number2 = 0.01
  number4 = 2
  number13 = number13(number14, tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4, stateFlag5, stateFlag6, number2, number4)
  number14 = TaskGoStraightToCoord
  tableHelper3 = CMG
  tableHelper3 = tableHelper3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  tableHelper3 = tableHelper3()
  tableHelper4 = number12.x
  tableHelper = number12.y
  tableHelper2 = number12.z
  stateFlag4 = 1.0
  stateFlag5 = 5000
  stateFlag6 = number13.z
  number2 = 0.01
  number14(tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4, stateFlag5, stateFlag6, number2)
  number14 = Wait
  tableHelper3 = 500
  number14(tableHelper3)
  number14 = number5
  tableHelper3 = localValue1
  number14 = number14(tableHelper3)
  tableHelper3 = number6
  tableHelper4 = localValue1
  tableHelper3 = tableHelper3(tableHelper4)
  tableHelper4 = NetworkCreateSynchronisedScene
  tableHelper = number14.x
  tableHelper2 = number14.y
  stateFlag4 = number14.z
  stateFlag5 = tableHelper3.x
  stateFlag6 = tableHelper3.y
  number2 = tableHelper3.z
  number4 = 2
  stateFlag7 = true
  stateFlag8 = false
  stateFlag9 = 1065353216
  number8 = 0
  number9 = 1065353216
  tableHelper4 = tableHelper4(tableHelper, tableHelper2, stateFlag4, stateFlag5, stateFlag6, number2, number4, stateFlag7, stateFlag8, stateFlag9, number8, number9)
  tableHelper = NetworkAddPedToSynchronisedScene
  tableHelper2 = CMG
  tableHelper2 = tableHelper2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  tableHelper2 = tableHelper2()
  stateFlag4 = tableHelper4
  stateFlag5 = "anim_casino_b@amb@casino@games@shared@player@"
  stateFlag6 = cmgOperation
  number2 = number11
  stateFlag6 = stateFlag6(number2)
  number2 = 2.0
  number4 = -2.0
  stateFlag7 = 13
  stateFlag8 = 16
  stateFlag9 = 2.0
  number8 = 0
  tableHelper(tableHelper2, stateFlag4, stateFlag5, stateFlag6, number2, number4, stateFlag7, stateFlag8, stateFlag9, number8)
  tableHelper = NetworkStartSynchronisedScene
  tableHelper2 = tableHelper4
  tableHelper(tableHelper2)
  tableHelper = Citizen
  tableHelper = tableHelper.InvokeNative
  tableHelper2 = 8773263032172758242
  stateFlag4 = -2124244681
  tableHelper(tableHelper2, stateFlag4)
  tableHelper = Wait
  tableHelper2 = 6000
  tableHelper(tableHelper2)
  tableHelper = NetworkCreateSynchronisedScene
  tableHelper2 = number14.x
  stateFlag4 = number14.y
  stateFlag5 = number14.z
  stateFlag6 = tableHelper3.x
  number2 = tableHelper3.y
  number4 = tableHelper3.z
  stateFlag7 = 2
  stateFlag8 = true
  stateFlag9 = true
  number8 = 1065353216
  number9 = 0
  stateFlag12 = 1065353216
  tableHelper = tableHelper(tableHelper2, stateFlag4, stateFlag5, stateFlag6, number2, number4, stateFlag7, stateFlag8, stateFlag9, number8, number9, stateFlag12)
  Locali98f_55 = tableHelper
  tableHelper = NetworkAddPedToSynchronisedScene
  tableHelper2 = CMG
  tableHelper2 = tableHelper2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  tableHelper2 = tableHelper2()
  stateFlag4 = Locali98f_55
  stateFlag5 = "anim_casino_b@amb@casino@games@shared@player@"
  stateFlag6 = "idle_cardgames"
  number2 = 2.0
  number4 = -2.0
  stateFlag7 = 13
  stateFlag8 = 16
  stateFlag9 = 1148846080
  number8 = 0
  tableHelper(tableHelper2, stateFlag4, stateFlag5, stateFlag6, number2, number4, stateFlag7, stateFlag8, stateFlag9, number8)
  tableHelper = NetworkStartSynchronisedScene
  tableHelper2 = Locali98f_55
  tableHelper(tableHelper2)
  tableHelper = StartAudioScene
  tableHelper2 = "DLC_VW_Casino_Table_Games"
  tableHelper(tableHelper2)
  tableHelper = Citizen
  tableHelper = tableHelper.InvokeNative
  tableHelper2 = 8773263032172758242
  stateFlag4 = -2124244681
  tableHelper(tableHelper2, stateFlag4)
  tableHelper = false
  stateFlag15 = tableHelper
end
eventHandler2 = RegisterNetEvent
text4 = "731deb5940"
-- Beginner: this function handles network event "731deb5940".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local number10, workingValue7
  if localValue2 then
    workingValue7 = localValue2.betId
    number10 = dataCollection6
    number10[workingValue7] = localValue2
  end
  number10 = workingValue6
  workingValue7 = localValue1
  number10(workingValue7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "731deb5940".
eventHandler2(text4, text5)
eventHandler2 = RMenu
eventHandler2 = eventHandler2.Add
text4 = "cmgcoinflip"
text5 = "instructions"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text6 = ""
text8 = "~b~COINFLIP"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = "cmg_coinflip"
text9 = "cmg_coinflip"
rageUiOperation2, text6, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, text9, text10 = rageUiOperation2(text6, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, text9)
eventHandler2(text4, text5, rageUiOperation2, text6, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, text9, text10)
eventHandler2 = RMenu
eventHandler2 = eventHandler2.Add
text4 = "cmgcoinflip"
text5 = "mainmenu"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text6 = ""
text8 = "~b~COINFLIP"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = "cmg_coinflip"
text9 = "cmg_coinflip"
rageUiOperation2, text6, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, text9, text10 = rageUiOperation2(text6, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, text9)
eventHandler2(text4, text5, rageUiOperation2, text6, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, text9, text10)
eventHandler2 = RMenu
eventHandler2 = eventHandler2.Add
text4 = "cmgcoinflip"
text5 = "confirm"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text6 = RMenu
text8 = text6
text6 = text6.Get
rageUiOperation3 = "cmgcoinflip"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text6 = text6(text8, rageUiOperation3, rageUiOperation4)
text8 = ""
rageUiOperation3 = "~b~COINFLIP"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
text9 = "cmg_coinflip"
text10 = "cmg_coinflip"
rageUiOperation2, text6, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, text9, text10 = rageUiOperation2(text6, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, text9, text10)
eventHandler2(text4, text5, rageUiOperation2, text6, text8, rageUiOperation3, rageUiOperation4, rageUiOperation5, text9, text10)
eventHandler2 = RageUI
eventHandler2 = eventHandler2.CreateWhile
text4 = 1.0
text5 = RMenu
rageUiOperation2 = text5
text5 = text5.Get
text6 = "cmgcoinflip"
text8 = "instructions"
-- Beginner: result below is menu.
text5 = text5(rageUiOperation2, text6, text8)
rageUiOperation2 = nil

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, number10, workingValue7, number11, number12, number13
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  number10 = localValue2
  localValue2 = localValue2.Get
  workingValue7 = "cmgcoinflip"
  number11 = "instructions"
  -- Beginner: result below is menu.
  localValue2 = localValue2(number10, workingValue7, number11)
  number10 = true
  workingValue7 = true
  number11 = true

  -- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
  function number12()
    local stateFlag, stateFlag10
    stateFlag = RageUI
    stateFlag = stateFlag.Separator
    stateFlag10 = "Propose a bet, or accept a proposed bet."
    stateFlag(stateFlag10)
    stateFlag = RageUI
    stateFlag = stateFlag.Separator
    stateFlag10 = "Flip a coin against your opponent, winner takes all!"
    stateFlag(stateFlag10)
    stateFlag = RageUI
    stateFlag = stateFlag.Separator
    stateFlag10 = "Minimum \194\163100,000 per coinflip."
    stateFlag(stateFlag10)
  end

  -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
  function number13()
    local stateFlag, stateFlag10
  end
  localValue1(localValue2, number10, workingValue7, number11, number12, number13)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  number10 = localValue2
  localValue2 = localValue2.Get
  workingValue7 = "cmgcoinflip"
  number11 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(number10, workingValue7, number11)
  number10 = true
  workingValue7 = true
  number11 = true

  -- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
  function number12()
    local stateFlag, stateFlag10, text7, dataCollection4, rageUiOperation6, workingValue8, rageUiOperation7, text12, text13, dataCollection7, rageUiOperation, workingValue2, workingValue3, workingValue4, text, text2
    stateFlag = RageUI
    stateFlag = stateFlag.ButtonWithStyle
    stateFlag10 = "Propose Bet"
    text7 = ""
    dataCollection4 = {}
    dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    rageUiOperation6 = true

    -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue12, localValue22, localValue3) ===
    function workingValue8(localValue12, localValue22, localValue3)
      local cmgOperation2, serverEventCall, text11, workingValue9
      if localValue3 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.GetRageInputInt
        serverEventCall = "Bet Amount"
        cmgOperation2 = cmgOperation2(serverEventCall)
        if cmgOperation2 and cmgOperation2 > 0 then
          serverEventCall = TriggerServerEvent
          text11 = "b36ea66630"
          workingValue9 = cmgOperation2
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b36ea66630".
          serverEventCall(text11, workingValue9)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    stateFlag(stateFlag10, text7, dataCollection4, rageUiOperation6, workingValue8)
    stateFlag = RageUI
    stateFlag = stateFlag.Separator
    stateFlag10 = "---"
    stateFlag(stateFlag10)
    stateFlag = table
    stateFlag = stateFlag.count
    stateFlag10 = dataCollection6
    -- Beginner: result below is count.
    stateFlag = stateFlag(stateFlag10)
    if stateFlag > 0 then
      stateFlag = pairs
      stateFlag10 = dataCollection6
      stateFlag, stateFlag10, text7, dataCollection4 = stateFlag(stateFlag10)
      for rageUiOperation6, workingValue8 in stateFlag, stateFlag10, text7, dataCollection4 do
        rageUiOperation7 = RageUI
        rageUiOperation7 = rageUiOperation7.ButtonWithStyle
        text12 = "~y~\194\163"
        text13 = getMoneyStringFormatted
        dataCollection7 = workingValue8.betAmount
        text13 = text13(dataCollection7)
        text12 = text12 .. text13
        text13 = ""
        dataCollection7 = {}
        rageUiOperation = RageUI
        rageUiOperation = rageUiOperation.BadgeStyle
        rageUiOperation = rageUiOperation.GoldMedal
        dataCollection7.RightBadge = rageUiOperation
        rageUiOperation = true

        -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue12, localValue22, localValue3) ===
        function workingValue2(localValue12, localValue22, localValue3)
          local cmgOperation2, serverEventCall, text11
          if localValue3 then
            cmgOperation2 = rageUiOperation6
            workingValue10 = cmgOperation2
            cmgOperation2 = "\194\163"
            serverEventCall = getMoneyStringFormatted
            text11 = workingValue8.betAmount
            serverEventCall = serverEventCall(text11)
            cmgOperation2 = cmgOperation2 .. serverEventCall
            workingValue11 = cmgOperation2
            cmgOperation2 = workingValue8.user_id
            serverEventCall = CMG
            serverEventCall = serverEventCall.getClientUserId
            -- Beginner: result below is userId.
            serverEventCall = serverEventCall()
            if cmgOperation2 == serverEventCall then
              cmgOperation2 = true
              workingValue = cmgOperation2
            else
              cmgOperation2 = false
              workingValue = cmgOperation2
            end
          end
        end
        workingValue3 = RMenu
        workingValue4 = workingValue3
        workingValue3 = workingValue3.Get
        text = "cmgcoinflip"
        text2 = "confirm"
        workingValue3, workingValue4, text, text2 = workingValue3(workingValue4, text, text2)
        -- Beginner: Draw a selectable RageUI menu button.
        rageUiOperation7(text12, text13, dataCollection7, rageUiOperation, workingValue2, workingValue3, workingValue4, text, text2)
      end
    else
      stateFlag = RageUI
      stateFlag = stateFlag.Separator
      stateFlag10 = "~r~No pending bets."
      stateFlag(stateFlag10)
    end
  end

  -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
  function number13()
    local stateFlag, stateFlag10
  end
  localValue1(localValue2, number10, workingValue7, number11, number12, number13)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  number10 = localValue2
  localValue2 = localValue2.Get
  workingValue7 = "cmgcoinflip"
  number11 = "confirm"
  -- Beginner: result below is menu.
  localValue2 = localValue2(number10, workingValue7, number11)
  number10 = true
  workingValue7 = true
  number11 = true

  -- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
  function number12()
    local stateFlag, stateFlag10, text7, dataCollection4, rageUiOperation6, workingValue8, rageUiOperation7, text12, text13, dataCollection7
    stateFlag10 = workingValue10
    stateFlag = dataCollection6
    stateFlag = stateFlag[stateFlag10]
    if not stateFlag then
      stateFlag = RageUI
      stateFlag = stateFlag.GoBack
      stateFlag()
      return
    end
    stateFlag = RageUI
    stateFlag = stateFlag.Separator
    stateFlag10 = "Coinflip "
    text7 = workingValue11
    dataCollection4 = "?"
    stateFlag10 = stateFlag10 .. text7 .. dataCollection4
    stateFlag(stateFlag10)
    stateFlag = workingValue
    if stateFlag then
      stateFlag = RageUI
      stateFlag = stateFlag.Separator
      stateFlag10 = "~y~This is your pending proposal."
      stateFlag(stateFlag10)
      stateFlag = RageUI
      stateFlag = stateFlag.ButtonWithStyle
      stateFlag10 = "Cancel Bet"
      text7 = ""
      dataCollection4 = {}
      rageUiOperation6 = RageUI
      rageUiOperation6 = rageUiOperation6.BadgeStyle
      rageUiOperation6 = rageUiOperation6.Tick
      dataCollection4.RightBadge = rageUiOperation6
      rageUiOperation6 = true

      -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue12, localValue22, localValue3) ===
      function workingValue8(localValue12, localValue22, localValue3)
        local cmgOperation2, serverEventCall
        if localValue3 then
          cmgOperation2 = TriggerServerEvent
          serverEventCall = "62da5de2d3"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "62da5de2d3".
          cmgOperation2(serverEventCall)
        end
      end
      rageUiOperation7 = RMenu
      text12 = rageUiOperation7
      rageUiOperation7 = rageUiOperation7.Get
      text13 = "cmgcoinflip"
      dataCollection7 = "mainmenu"
      rageUiOperation7, text12, text13, dataCollection7 = rageUiOperation7(text12, text13, dataCollection7)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag(stateFlag10, text7, dataCollection4, rageUiOperation6, workingValue8, rageUiOperation7, text12, text13, dataCollection7)
      stateFlag = RageUI
      stateFlag = stateFlag.ButtonWithStyle
      stateFlag10 = "Return"
      text7 = ""
      dataCollection4 = {}
      rageUiOperation6 = RageUI
      rageUiOperation6 = rageUiOperation6.BadgeStyle
      rageUiOperation6 = rageUiOperation6.Alert
      dataCollection4.RightBadge = rageUiOperation6
      rageUiOperation6 = true

      -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue12, localValue22, localValue3) ===
      function workingValue8(localValue12, localValue22, localValue3)
      end
      rageUiOperation7 = RMenu
      text12 = rageUiOperation7
      rageUiOperation7 = rageUiOperation7.Get
      text13 = "cmgcoinflip"
      dataCollection7 = "mainmenu"
      rageUiOperation7, text12, text13, dataCollection7 = rageUiOperation7(text12, text13, dataCollection7)
      stateFlag(stateFlag10, text7, dataCollection4, rageUiOperation6, workingValue8, rageUiOperation7, text12, text13, dataCollection7)
    else
      stateFlag = RageUI
      stateFlag = stateFlag.ButtonWithStyle
      stateFlag10 = "Accept"
      text7 = ""
      dataCollection4 = {}
      rageUiOperation6 = RageUI
      rageUiOperation6 = rageUiOperation6.BadgeStyle
      rageUiOperation6 = rageUiOperation6.Tick
      dataCollection4.RightBadge = rageUiOperation6
      rageUiOperation6 = true

      -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue12, localValue22, localValue3) ===
      function workingValue8(localValue12, localValue22, localValue3)
        local cmgOperation2, serverEventCall, text11
        if localValue3 then
          cmgOperation2 = TriggerServerEvent
          serverEventCall = "8f787c7423"
          text11 = workingValue10
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8f787c7423".
          cmgOperation2(serverEventCall, text11)
        end
      end
      rageUiOperation7 = RMenu
      text12 = rageUiOperation7
      rageUiOperation7 = rageUiOperation7.Get
      text13 = "cmgcoinflip"
      dataCollection7 = "mainmenu"
      rageUiOperation7, text12, text13, dataCollection7 = rageUiOperation7(text12, text13, dataCollection7)
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag(stateFlag10, text7, dataCollection4, rageUiOperation6, workingValue8, rageUiOperation7, text12, text13, dataCollection7)
      stateFlag = RageUI
      stateFlag = stateFlag.ButtonWithStyle
      stateFlag10 = "Decline"
      text7 = ""
      dataCollection4 = {}
      rageUiOperation6 = RageUI
      rageUiOperation6 = rageUiOperation6.BadgeStyle
      rageUiOperation6 = rageUiOperation6.Alert
      dataCollection4.RightBadge = rageUiOperation6
      rageUiOperation6 = true

      -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue12, localValue22, localValue3) ===
      function workingValue8(localValue12, localValue22, localValue3)
      end
      rageUiOperation7 = RMenu
      text12 = rageUiOperation7
      rageUiOperation7 = rageUiOperation7.Get
      text13 = "cmgcoinflip"
      dataCollection7 = "mainmenu"
      rageUiOperation7, text12, text13, dataCollection7 = rageUiOperation7(text12, text13, dataCollection7)
      stateFlag(stateFlag10, text7, dataCollection4, rageUiOperation6, workingValue8, rageUiOperation7, text12, text13, dataCollection7)
    end
  end

  -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
  function number13()
    local stateFlag, stateFlag10
  end
  localValue1(localValue2, number10, workingValue7, number11, number12, number13)
end
eventHandler2(text4, text5, rageUiOperation2, text6)
eventHandler2 = AddEventHandler
text4 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local number10, workingValue7
  if localValue2 then
    number10 = TriggerServerEvent
    workingValue7 = "0e78755a8d"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0e78755a8d".
    number10(workingValue7)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandler2(text4, text5)
eventHandler2 = RegisterNetEvent
text4 = "422fe636f4"
-- Beginner: this function handles network event "422fe636f4".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local number10
  number10 = dataCollection6
  number10[localValue1] = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "422fe636f4".
eventHandler2(text4, text5)
eventHandler2 = RegisterNetEvent
text4 = "66c3c7f283"
-- Beginner: this function handles network event "66c3c7f283".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  localValue2 = dataCollection6
  localValue2[localValue1] = nil
end
eventHandler2(text4, text5)
eventHandler2 = RegisterNetEvent
text4 = "a135fcb71f"
-- Beginner: this function handles network event "a135fcb71f".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2
  localValue1 = {}
  dataCollection6 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a135fcb71f".
eventHandler2(text4, text5)
eventHandler2 = RegisterNetEvent
text4 = "8f14d55f05"
-- Beginner: this function handles network event "8f14d55f05".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local number10, workingValue7, number11, number12, number13, number14, tableHelper3, tableHelper4, tableHelper, tableHelper2, stateFlag4, stateFlag5, stateFlag6, number2, number4, stateFlag7, stateFlag8, stateFlag9, number8, number9, stateFlag12
  number10 = true
  stateFlag2 = number10
  number10 = text3
  workingValue7 = false
  number10(workingValue7)
  number10 = SendNUIMessage
  workingValue7 = {}
  workingValue7.transactionType = "jackpotroll"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  number10(workingValue7)
  number10 = Scaleform
  workingValue7 = "MP_BIG_MESSAGE_FREEMODE"
  number10 = number10(workingValue7)
  workingValue7 = false
  number11 = false
  number12 = SetTimeout
  number13 = 10000

  -- === HELPER FUNCTION (decompiler name: number14; parameters: none) ===
  function number14()
    local stateFlag, stateFlag10, text7, dataCollection4
    stateFlag = true
    workingValue7 = stateFlag
    stateFlag = localValue1
    if stateFlag then
      stateFlag = tCMG
      stateFlag = stateFlag.notify
      stateFlag10 = "~g~ You won \194\163"
      text7 = getMoneyStringFormatted
      dataCollection4 = localValue2.amount
      text7 = text7(dataCollection4)
      dataCollection4 = "!"
      stateFlag10 = stateFlag10 .. text7 .. dataCollection4
      -- Beginner: Show a notification to the player.
      stateFlag(stateFlag10)
      stateFlag = SendNUIMessage
      stateFlag10 = {}
      stateFlag10.transactionType = "playCasinoWin"
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      stateFlag(stateFlag10)
    else
      stateFlag = tCMG
      stateFlag = stateFlag.notify
      stateFlag10 = "~r~ You lost \194\163"
      text7 = getMoneyStringFormatted
      dataCollection4 = localValue2.amount
      text7 = text7(dataCollection4)
      dataCollection4 = "!"
      stateFlag10 = stateFlag10 .. text7 .. dataCollection4
      -- Beginner: Show a notification to the player.
      stateFlag(stateFlag10)
      stateFlag = SendNUIMessage
      stateFlag10 = {}
      stateFlag10.transactionType = "playCasinoLose"
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      stateFlag(stateFlag10)
    end
  end
  number12(number13, number14)
  number12 = SetTimeout
  number13 = 15000

  -- === HELPER FUNCTION (decompiler name: number14; parameters: none) ===
  function number14()
    local stateFlag, stateFlag10
    stateFlag = true
    number11 = stateFlag
  end
  number12(number13, number14)
  number12 = false
  number13 = 0.0
  number14 = 2.71828182846
  tableHelper3 = 0.0
  tableHelper4 = CMG
  tableHelper4 = tableHelper4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  tableHelper4 = tableHelper4()
  while not number11 do
    tableHelper = GetFrameTime
    tableHelper = tableHelper()
    tableHelper2 = 0.01 * tableHelper
    number13 = number13 + tableHelper2
    tableHelper2 = -80 * number13
    tableHelper2 = number14 ^ tableHelper2
    stateFlag4 = 1
    tableHelper2 = stateFlag4 - tableHelper2
    stateFlag4 = tableHelper3 + 0.005
    if tableHelper2 > stateFlag4 then
      tableHelper3 = tableHelper2
      number12 = not number12
      stateFlag4 = GetSoundId
      -- Beginner: result below is soundHandle.
      stateFlag4 = stateFlag4()
      stateFlag5 = PlaySoundFromCoord
      stateFlag6 = stateFlag4
      number2 = "Spin_Single_Ticks"
      number4 = tableHelper4.x
      stateFlag7 = tableHelper4.y
      stateFlag8 = tableHelper4.z
      stateFlag9 = "dlc_vw_casino_lucky_wheel_sounds"
      number8 = false
      number9 = 0
      stateFlag12 = false
      stateFlag5(stateFlag6, number2, number4, stateFlag7, stateFlag8, stateFlag9, number8, number9, stateFlag12)
      stateFlag5 = SetTimeout
      stateFlag6 = 100

      -- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
      function number2()
        local stateFlag, stateFlag10
        stateFlag = ReleaseSoundId
        stateFlag10 = stateFlag4
        stateFlag(stateFlag10)
      end
      stateFlag5(stateFlag6, number2)
    end
    if number12 then
      if not workingValue7 then
        stateFlag4 = number10.RunFunction
        stateFlag5 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        stateFlag6 = {}
        number2 = localValue2.winner
        number4 = "Rolling..."
        stateFlag7 = 0
        stateFlag8 = false
        stateFlag9 = false
        stateFlag6[1] = number2
        stateFlag6[2] = number4
        stateFlag6[3] = stateFlag7
        stateFlag6[4] = stateFlag8
        stateFlag6[5] = stateFlag9
        stateFlag4(stateFlag5, stateFlag6)
      end
    elseif not workingValue7 then
      stateFlag4 = number10.RunFunction
      stateFlag5 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      stateFlag6 = {}
      number2 = localValue2.loser
      number4 = "Rolling..."
      stateFlag7 = 0
      stateFlag8 = false
      stateFlag9 = false
      stateFlag6[1] = number2
      stateFlag6[2] = number4
      stateFlag6[3] = stateFlag7
      stateFlag6[4] = stateFlag8
      stateFlag6[5] = stateFlag9
      stateFlag4(stateFlag5, stateFlag6)
    end
    if workingValue7 then
      if localValue1 then
        stateFlag4 = number10.RunFunction
        stateFlag5 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        stateFlag6 = {}
        number2 = localValue2.winner
        number4 = "~g~You WON!"
        stateFlag7 = 0
        stateFlag8 = false
        stateFlag9 = false
        stateFlag6[1] = number2
        stateFlag6[2] = number4
        stateFlag6[3] = stateFlag7
        stateFlag6[4] = stateFlag8
        stateFlag6[5] = stateFlag9
        stateFlag4(stateFlag5, stateFlag6)
      else
        stateFlag4 = number10.RunFunction
        stateFlag5 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        stateFlag6 = {}
        number2 = localValue2.winner
        number4 = "~r~You LOST!"
        stateFlag7 = 0
        stateFlag8 = false
        stateFlag9 = false
        stateFlag6[1] = number2
        stateFlag6[2] = number4
        stateFlag6[3] = stateFlag7
        stateFlag6[4] = stateFlag8
        stateFlag6[5] = stateFlag9
        stateFlag4(stateFlag5, stateFlag6)
      end
    end
    stateFlag4 = number10.Render2D
    stateFlag4()
    stateFlag4 = Wait
    stateFlag5 = 0
    stateFlag4(stateFlag5)
  end
  tableHelper = SetScaleformMovieAsNoLongerNeeded
  tableHelper2 = number10.Handle
  tableHelper(tableHelper2)
  tableHelper = {}
  dataCollection6 = tableHelper
  tableHelper = text3
  tableHelper2 = true
  tableHelper(tableHelper2)
  tableHelper = false
  stateFlag2 = tableHelper
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8f14d55f05".
eventHandler2(text4, text5)
