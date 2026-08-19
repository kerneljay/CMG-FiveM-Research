--[[
    LEVEL 1 BEGINNER GUIDE — Farming
    =====================================

    File: cmg/prod/client/jobs/cl_farming.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Farming feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 37
      * Background threads: 0
      * Always-running loops: 0
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
local workingValue, cmgOperation, dataCollection3, dataCollection5, workingValue17, number18, workingValue19, dataCollection7, number19, stateFlag20, number, number2, number3, number4, dataCollection, stateFlag5, dataCollection2, number5, workingValue6, workingValue8, cmgOperation2, text2, workingValue9, workingValue10, workingValue11, cmgOperation3, workingValue12, cmgOperation4, text3, workingValue13, number12, cmgOperation5, text5, stringHelper2, number15, dataCollection4, text6, cmgOperation6, number17, text7
workingValue = require
cmgOperation = "glm"
workingValue = workingValue(cmgOperation)
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection3 = "cfg/cfg_farming"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection3)
dataCollection3 = {}
dataCollection5 = {}
workingValue17 = nil
number18 = 0
workingValue19 = nil
dataCollection7 = {}
number19 = 0
stateFlag20 = false
number = 0
number2 = 0
number3 = 0
number4 = 0
dataCollection = {}
stateFlag5 = false
dataCollection2 = {}
number5 = 0
workingValue6 = nil
workingValue8 = nil
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.registerHudTimerBarProvider
text2 = "farmingJob"

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, workingValue16
  localValue2 = workingValue6
  if localValue2 then
    localValue2 = localValue1.push
    localValue3 = workingValue6
    workingValue16 = workingValue8
    localValue2(localValue3, workingValue16)
  end
end
cmgOperation2(text2, workingValue9)
cmgOperation2 = RegisterNetEvent
text2 = "9e07b10346"
-- Beginner: this function handles network event "9e07b10346".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2, localValue3) ===
function workingValue9(localValue1, localValue2, localValue3)
  local workingValue16, tableHelper, stateFlag19, coords2
  workingValue16 = dataCollection3
  workingValue16 = workingValue16[localValue1]
  if workingValue16 then
    tableHelper = table
    tableHelper = tableHelper.insert
    stateFlag19 = workingValue16
    coords2 = {}
    coords2.position = localValue2
    coords2.model = localValue3
    coords2.isSliding = true
    coords2.nextCheckTime = 0
    coords2.failedCheckAttempts = 0
    tableHelper(stateFlag19, coords2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9e07b10346".
cmgOperation2(text2, workingValue9)
cmgOperation2 = RegisterNetEvent
text2 = "c1a89581c1"
-- Beginner: this function handles network event "c1a89581c1".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7
  localValue2 = dataCollection3
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = pairs
    workingValue16 = localValue2
    localValue3, workingValue16, tableHelper, stateFlag19 = localValue3(workingValue16)
    for coords2, workingValue21 in localValue3, workingValue16, tableHelper, stateFlag19 do
      position = workingValue21.object
      if position then
        position = workingValue21.position
        workingValue22 = SetEntityCoordsNoOffset
        stateFlag = workingValue21.object
        stateFlag2 = position.x
        modelValue = position.y
        stateFlag3 = position.z
        stateFlag4 = true
        stateFlag6 = false
        stateFlag7 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        workingValue22(stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7)
      end
    end
    localValue3 = dataCollection3
    localValue3[localValue1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c1a89581c1".
cmgOperation2(text2, workingValue9)
cmgOperation2 = RegisterNetEvent
text2 = "2ce4151c46"
-- Beginner: this function handles network event "2ce4151c46".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2) ===
function workingValue9(localValue1, localValue2)
  local localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position
  localValue3 = pairs
  workingValue16 = localValue2
  localValue3, workingValue16, tableHelper, stateFlag19 = localValue3(workingValue16)
  for coords2, workingValue21 in localValue3, workingValue16, tableHelper, stateFlag19 do
    workingValue21.isSliding = false
    workingValue21.nextCheckTime = 0
    workingValue21.failedCheckAttempts = 0
  end
  localValue3 = dataCollection3
  localValue3[localValue1] = localValue2
end
cmgOperation2(text2, workingValue9)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, workingValue16
  localValue2 = TriggerServerEvent
  localValue3 = "2ce4151c46"
  workingValue16 = localValue1.index
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2ce4151c46".
  localValue2(localValue3, workingValue16)
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2
  localValue3 = localValue1.index
  localValue2 = dataCollection3
  localValue2 = localValue2[localValue3]
  if localValue2 then
    localValue3 = pairs
    workingValue16 = localValue2
    localValue3, workingValue16, tableHelper, stateFlag19 = localValue3(workingValue16)
    for coords2, workingValue21 in localValue3, workingValue16, tableHelper, stateFlag19 do
      position = SetEntityCollision
      workingValue22 = workingValue21.object
      stateFlag = false
      stateFlag2 = false
      position(workingValue22, stateFlag, stateFlag2)
      position = FreezeEntityPosition
      workingValue22 = workingValue21.object
      stateFlag = false
      -- Beginner: Freeze or unfreeze an entity in place.
      position(workingValue22, stateFlag)
      position = SetEntityAsMissionEntity
      workingValue22 = workingValue21.object
      stateFlag = false
      stateFlag2 = false
      position(workingValue22, stateFlag, stateFlag2)
      position = SetEntityCleanupByEngine
      workingValue22 = workingValue21.object
      stateFlag = true
      position(workingValue22, stateFlag)
      position = SetEntityAsNoLongerNeeded
      workingValue22 = workingValue21.object
      position(workingValue22)
      position = DeleteEntity
      workingValue22 = workingValue21.object
      -- Beginner: Delete a GTA entity.
      position(workingValue22)
    end
    workingValue16 = localValue1.index
    localValue3 = dataCollection3
    localValue3[workingValue16] = nil
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, workingValue16, tableHelper = localValue2(localValue3)
  for stateFlag19, coords2 in localValue2, localValue3, workingValue16, tableHelper do
    workingValue21 = coords2.object
    if not workingValue21 then
      workingValue21 = number19
      position = coords2.nextCheckTime
      if workingValue21 > position then
        workingValue21 = GetClosestObjectOfType
        position = coords2.position
        position = position.x
        workingValue22 = coords2.position
        workingValue22 = workingValue22.y
        stateFlag = coords2.position
        stateFlag = stateFlag.z
        stateFlag2 = 1.5
        modelValue = coords2.model
        stateFlag3 = true
        stateFlag4 = false
        stateFlag6 = false
        -- Beginner: result below is objectEntity.
        workingValue21 = workingValue21(position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6)
        if 0 ~= workingValue21 then
          position = SetEntityCollision
          workingValue22 = workingValue21
          stateFlag = false
          stateFlag2 = false
          position(workingValue22, stateFlag, stateFlag2)
          position = FreezeEntityPosition
          workingValue22 = workingValue21
          stateFlag = true
          -- Beginner: Freeze or unfreeze an entity in place.
          position(workingValue22, stateFlag)
          position = coords2.isSliding
          if not position then
            position = GetEntityCoords
            workingValue22 = workingValue21
            stateFlag = true
            -- Beginner: result below is entityCoords.
            position = position(workingValue22, stateFlag)
            workingValue22 = SetEntityCoords
            stateFlag = workingValue21
            stateFlag2 = position.x
            modelValue = position.y
            stateFlag3 = 0.0
            stateFlag4 = false
            stateFlag6 = false
            stateFlag7 = false
            coords = false
            -- Beginner: Move/teleport an entity to new coordinates.
            workingValue22(stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords)
          end
          coords2.object = workingValue21
          coords2.failedCheckAttempts = 0
        else
          position = coords2.failedCheckAttempts
          if position < 3 then
            workingValue22 = position + 1
            coords2.failedCheckAttempts = workingValue22
          end
          workingValue22 = number19
          stateFlag = math
          stateFlag = stateFlag.random
          stateFlag2 = 1000
          modelValue = position * 1000
          modelValue = 1000 + modelValue
          stateFlag = stateFlag(stateFlag2, modelValue)
          workingValue22 = workingValue22 + stateFlag
          coords2.nextCheckTime = workingValue22
        end
      end
    else
      workingValue21 = coords2.isSliding
      if workingValue21 then
        workingValue21 = DoesEntityExist
        position = coords2.object
        workingValue21 = workingValue21(position)
        if not workingValue21 then
          coords2.object = nil
        else
          workingValue21 = GetEntityCoords
          position = coords2.object
          workingValue22 = true
          -- Beginner: result below is entityCoords.
          workingValue21 = workingValue21(position, workingValue22)
          position = workingValue21.z
          if position > 0.0 then
            position = SetEntityCoords
            workingValue22 = coords2.object
            stateFlag = workingValue21.x
            stateFlag2 = workingValue21.y
            modelValue = workingValue21.z
            stateFlag3 = GetFrameTime
            stateFlag3 = stateFlag3()
            stateFlag3 = -2.5 * stateFlag3
            modelValue = modelValue + stateFlag3
            stateFlag3 = false
            stateFlag4 = false
            stateFlag6 = false
            stateFlag7 = false
            position(workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7)
          else
            coords2.isSliding = false
          end
        end
      else
        workingValue21 = number19
        position = coords2.nextCheckTime
        if workingValue21 > position then
          workingValue21 = DoesEntityExist
          position = coords2.object
          workingValue21 = workingValue21(position)
          if not workingValue21 then
            coords2.object = nil
          end
          workingValue21 = number19
          position = math
          position = position.random
          workingValue22 = 1000
          stateFlag = 2000
          position = position(workingValue22, stateFlag)
          workingValue21 = workingValue21 + position
          coords2.nextCheckTime = workingValue21
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  localValue2, localValue3 = localValue2()
  if 0 == localValue2 or not localValue3 then
    return
  end
  workingValue16 = GetEntityModel
  tableHelper = localValue2
  -- Beginner: result below is modelHash.
  workingValue16 = workingValue16(tableHelper)
  if -2076478498 ~= workingValue16 then
    return
  end
  tableHelper = GetVehicleTrailerVehicle
  stateFlag19 = localValue2
  tableHelper, stateFlag19 = tableHelper(stateFlag19)
  if not tableHelper or 0 == stateFlag19 then
    return
  end
  coords2 = workingValue17
  if not coords2 then
    return
  end
  coords2 = workingValue17.stage
  if "GROWN" == coords2 then
    coords2 = GetEntityCoords
    workingValue21 = stateFlag19
    position = true
    -- Beginner: result below is entityCoords.
    coords2 = coords2(workingValue21, position)
    workingValue21 = pairs
    position = cmgOperation.fieldObjects
    workingValue21, position, workingValue22, stateFlag = workingValue21(position)
    for stateFlag2, modelValue in workingValue21, position, workingValue22, stateFlag do
      stateFlag3 = GetClosestObjectOfType
      stateFlag4 = coords2.x
      stateFlag6 = coords2.y
      stateFlag7 = coords2.z
      coords = 1.5
      workingValue7 = modelValue
      stateFlag8 = true
      stateFlag9 = false
      stateFlag10 = false
      -- Beginner: result below is objectEntity.
      stateFlag3 = stateFlag3(stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10)
      if 0 ~= stateFlag3 then
        stateFlag4 = dataCollection5
        stateFlag4 = stateFlag4[stateFlag3]
        if not stateFlag4 then
          stateFlag4 = TriggerServerEvent
          stateFlag6 = "9e07b10346"
          stateFlag7 = localValue1.index
          coords = GetEntityCoords
          workingValue7 = stateFlag3
          -- Beginner: result below is entityCoords.
          coords = coords(workingValue7)
          workingValue7 = modelValue
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9e07b10346".
          stateFlag4(stateFlag6, stateFlag7, coords, workingValue7)
          stateFlag4 = dataCollection5
          stateFlag4[stateFlag3] = true
        end
      end
    end
  else
    coords2 = workingValue17.stage
    if "HARVESTED" == coords2 then
      coords2 = GetEntityCoords
      workingValue21 = stateFlag19
      position = true
      -- Beginner: result below is entityCoords.
      coords2 = coords2(workingValue21, position)
      coords2 = coords2.xy
      workingValue21 = pairs
      position = dataCollection
      workingValue21, position, workingValue22, stateFlag = workingValue21(position)
      for stateFlag2, modelValue in workingValue21, position, workingValue22, stateFlag do
        stateFlag3 = modelValue.xy
        stateFlag3 = coords2 - stateFlag3
        stateFlag3 = #stateFlag3
        stateFlag4 = 1.5
        if stateFlag3 < stateFlag4 then
          stateFlag3 = table
          stateFlag3 = stateFlag3.remove
          stateFlag4 = dataCollection
          stateFlag6 = stateFlag2
          stateFlag3(stateFlag4, stateFlag6)
          break
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, workingValue16
  localValue3 = localValue1.index
  localValue2 = dataCollection3
  localValue2 = localValue2[localValue3]
  if localValue2 then
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    number19 = localValue3
    localValue3 = workingValue9
    workingValue16 = localValue2
    localValue3(workingValue16)
    localValue3 = workingValue17
    if localValue3 then
      localValue3 = workingValue17.fieldIndex
      workingValue16 = localValue1.index
      if localValue3 == workingValue16 then
        localValue3 = workingValue10
        workingValue16 = localValue1
        localValue3(workingValue16)
      end
    end
  end
end
cmgOperation3 = pairs
workingValue12 = cmgOperation.fields
cmgOperation3, workingValue12, cmgOperation4, text3 = cmgOperation3(workingValue12)
for workingValue13, number12 in cmgOperation3, workingValue12, cmgOperation4, text3 do
  cmgOperation5 = CMG
  cmgOperation5 = cmgOperation5.createArea
  text5 = "farming_"
  stringHelper2 = tostring
  number15 = workingValue13
  stringHelper2 = stringHelper2(number15)
  text5 = text5 .. stringHelper2
  stringHelper2 = number12.position
  number15 = 150.0
  dataCollection4 = 300.0
  text6 = cmgOperation2
  cmgOperation6 = text2
  number17 = workingValue11
  text7 = number12
  -- Beginner: Create an interaction area around a world position.
  cmgOperation5(text5, stringHelper2, number15, dataCollection4, text6, cmgOperation6, number17, text7)
end
cmgOperation3 = Citizen
cmgOperation3 = cmgOperation3.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2
  localValue1 = GlobalState
  localValue1 = localValue1.registeredFarmingArchetypeDefs
  if not localValue1 then
    localValue1 = RegisterArchetypes

    -- === HELPER FUNCTION: localValue2() ===
    function localValue2()
      local rageUiOperation, text
      rageUiOperation = cmgOperation.archetypeDefs
      return rageUiOperation
    end
    localValue1(localValue2)
    localValue1 = GlobalState
    localValue1.registeredFarmingArchetypeDefs = true
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation3(workingValue12)
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2, localValue3, workingValue16, tableHelper, stateFlag19, coords2
  localValue1 = PlaySound
  localValue2 = -1
  localValue3 = "CHECKPOINT_BEHIND"
  workingValue16 = "HUD_MINI_GAME_SOUNDSET"
  tableHelper = false
  stateFlag19 = false
  coords2 = true
  localValue1(localValue2, localValue3, workingValue16, tableHelper, stateFlag19, coords2)
  localValue1 = CMG
  localValue1 = localValue1.initializeInstructionalJobScaleform
  localValue2 = "Welcome to Farming"
  localValue3 = "I have set a waypoint to the Farming Warehouse where you can pick up your tractor."
  localValue1(localValue2, localValue3)
  localValue1 = SetNewWaypoint
  localValue2 = cmgOperation.menuPosition
  localValue2 = localValue2.x
  localValue3 = cmgOperation.menuPosition
  localValue3 = localValue3.y
  localValue1(localValue2, localValue3)
end
cmgOperation3.displayFarmerInstructions = workingValue12

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, workingValue16, tableHelper
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue16 = "farming"
  tableHelper = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue16, tableHelper)
  localValue3 = true
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2, localValue3, workingValue16, tableHelper
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue16 = "farming"
  tableHelper = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue16, tableHelper)
  localValue3 = false
  localValue1(localValue2, localValue3)
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createArea
text3 = "farming_menu"
workingValue13 = cmgOperation.menuPosition
number12 = 1.5
cmgOperation5 = 3.0
text5 = cmgOperation3
stringHelper2 = workingValue12

-- === HELPER FUNCTION (decompiler name: number15; parameters: none) ===
function number15()
  local localValue1, localValue2
end
dataCollection4 = {}
-- Beginner: Create an interaction area around a world position.
cmgOperation4(text3, workingValue13, number12, cmgOperation5, text5, stringHelper2, number15, dataCollection4)
cmgOperation4 = tCMG
cmgOperation4 = cmgOperation4.addMarker
text3 = cmgOperation.menuPosition
text3 = text3.x
workingValue13 = cmgOperation.menuPosition
workingValue13 = workingValue13.y
number12 = cmgOperation.menuPosition
number12 = number12.z
number12 = number12 - 1.0
cmgOperation5 = 1.0
text5 = 1.0
stringHelper2 = 1.0
number15 = 255
dataCollection4 = 0
text6 = 0
cmgOperation6 = 170
number17 = 50
text7 = 27
-- Beginner: Create a world marker.
cmgOperation4(text3, workingValue13, number12, cmgOperation5, text5, stringHelper2, number15, dataCollection4, text6, cmgOperation6, number17, text7)
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createDynamicPed
text3 = -1806291497
workingValue13 = cmgOperation.npcPosition
workingValue13 = workingValue13.xyz
number12 = cmgOperation.npcPosition
number12 = number12.w
cmgOperation5 = true
text5 = nil
stringHelper2 = nil
number15 = 100.0
dataCollection4 = false

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2
end
cmgOperation4(text3, workingValue13, number12, cmgOperation5, text5, stringHelper2, number15, dataCollection4, text6)
cmgOperation4 = RMenu
cmgOperation4 = cmgOperation4.Add
text3 = "farming"
workingValue13 = "mainmenu"
number12 = RageUI
number12 = number12.CreateMenu
cmgOperation5 = "CMG Farming"
text5 = "~b~CMG Farming"
stringHelper2 = CMG
stringHelper2 = stringHelper2.getRageUIMenuWidth
stringHelper2 = stringHelper2()
number15 = CMG
number15 = number15.getRageUIMenuHeight
number15, dataCollection4, text6, cmgOperation6, number17, text7 = number15()
number12, cmgOperation5, text5, stringHelper2, number15, dataCollection4, text6, cmgOperation6, number17, text7 = number12(cmgOperation5, text5, stringHelper2, number15, dataCollection4, text6, cmgOperation6, number17, text7)
cmgOperation4(text3, workingValue13, number12, cmgOperation5, text5, stringHelper2, number15, dataCollection4, text6, cmgOperation6, number17, text7)
cmgOperation4 = RMenu
cmgOperation4 = cmgOperation4.Add
text3 = "farming"
workingValue13 = "status"
number12 = RageUI
number12 = number12.CreateSubMenu
cmgOperation5 = RMenu
text5 = cmgOperation5
cmgOperation5 = cmgOperation5.Get
stringHelper2 = "farming"
number15 = "mainmenu"
-- Beginner: result below is menu.
cmgOperation5 = cmgOperation5(text5, stringHelper2, number15)
text5 = "CMG Farming"
stringHelper2 = "~b~CMG Farming"
number15 = CMG
number15 = number15.getRageUIMenuWidth
number15 = number15()
dataCollection4 = CMG
dataCollection4 = dataCollection4.getRageUIMenuHeight
dataCollection4, text6, cmgOperation6, number17, text7 = dataCollection4()
number12, cmgOperation5, text5, stringHelper2, number15, dataCollection4, text6, cmgOperation6, number17, text7 = number12(cmgOperation5, text5, stringHelper2, number15, dataCollection4, text6, cmgOperation6, number17, text7)
cmgOperation4(text3, workingValue13, number12, cmgOperation5, text5, stringHelper2, number15, dataCollection4, text6, cmgOperation6, number17, text7)

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22
  localValue2 = pairs
  localValue3 = CMG
  localValue3 = localValue3.getAllVehicles
  localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22 = localValue3()
  localValue2, localValue3, workingValue16, tableHelper = localValue2(localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22)
  for stateFlag19, coords2 in localValue2, localValue3, workingValue16, tableHelper do
    workingValue21 = GetEntityCoords
    position = coords2
    workingValue22 = true
    -- Beginner: result below is entityCoords.
    workingValue21 = workingValue21(position, workingValue22)
    workingValue21 = workingValue21 - localValue1
    workingValue21 = #workingValue21
    if workingValue21 < 5.0 then
      workingValue21 = false
      return workingValue21
    end
  end
  localValue2 = true
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue
  localValue2 = 0
  localValue3 = 100.0
  workingValue16 = pairs
  tableHelper = CMG
  tableHelper = tableHelper.getAllVehicles
  tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue = tableHelper()
  workingValue16, tableHelper, stateFlag19, coords2 = workingValue16(tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue)
  for workingValue21, position in workingValue16, tableHelper, stateFlag19, coords2 do
    workingValue22 = GetEntityModel
    stateFlag = position
    -- Beginner: result below is modelHash.
    workingValue22 = workingValue22(stateFlag)
    if workingValue22 == localValue1 then
      workingValue22 = GetEntityAttachedTo
      stateFlag = position
      workingValue22 = workingValue22(stateFlag)
      if 0 == workingValue22 then
        workingValue22 = CMG
        workingValue22 = workingValue22.getPlayerCoords
        -- Beginner: result below is playerCoords.
        workingValue22 = workingValue22()
        stateFlag = GetEntityCoords
        stateFlag2 = position
        modelValue = true
        -- Beginner: result below is entityCoords.
        stateFlag = stateFlag(stateFlag2, modelValue)
        workingValue22 = workingValue22 - stateFlag
        workingValue22 = #workingValue22
        if localValue3 > workingValue22 then
          localValue2 = position
          localValue3 = workingValue22
        end
      end
    end
  end
  if 0 ~= localValue2 then
    workingValue16 = GetEntityCoords
    tableHelper = localValue2
    stateFlag19 = true
    -- Beginner: result below is entityCoords.
    workingValue16 = workingValue16(tableHelper, stateFlag19)
    tableHelper = SetNewWaypoint
    stateFlag19 = workingValue16.x
    coords2 = workingValue16.y
    tableHelper(stateFlag19, coords2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  number18 = localValue1
  localValue1 = pairs
  localValue2 = dataCollection7
  localValue1, localValue2, localValue3, workingValue16 = localValue1(localValue2)
  for tableHelper, stateFlag19 in localValue1, localValue2, localValue3, workingValue16 do
    coords2 = DoesEntityExist
    workingValue21 = stateFlag19
    coords2 = coords2(workingValue21)
    if coords2 then
      coords2 = GetEntityModel
      workingValue21 = stateFlag19
      -- Beginner: result below is modelHash.
      coords2 = coords2(workingValue21)
      coords2 = -2076478498 ~= coords2
      workingValue21 = NetworkHasControlOfEntity
      position = stateFlag19
      workingValue21 = workingValue21(position)
      if workingValue21 and coords2 then
        workingValue21 = DeleteEntity
        position = stateFlag19
        -- Beginner: Delete a GTA entity.
        workingValue21(position)
      end
      if coords2 then
        workingValue21 = GetBlipFromEntity
        position = stateFlag19
        workingValue21 = workingValue21(position)
        position = DoesBlipExist
        workingValue22 = workingValue21
        position = position(workingValue22)
        if position then
          position = RemoveBlip
          workingValue22 = workingValue21
          position(workingValue22)
        end
      end
    end
  end
  localValue1 = false
  localValue2 = pairs
  localValue3 = cmgOperation.tractorSpawnPositions
  localValue2, localValue3, workingValue16, tableHelper = localValue2(localValue3)
  for stateFlag19, coords2 in localValue2, localValue3, workingValue16, tableHelper do
    workingValue21 = cmgOperation4
    position = coords2.xyz
    workingValue21 = workingValue21(position)
    if workingValue21 then
      workingValue21 = CMG
      workingValue21 = workingValue21.requestEntitySpawn
      position = "farming_tractor"
      workingValue22 = coords2.xyz
      workingValue21(position, workingValue22)
      workingValue21 = CMG
      workingValue21 = workingValue21.spawnVehicle
      position = -2076478498
      workingValue22 = coords2.x
      stateFlag = coords2.y
      stateFlag2 = coords2.z
      modelValue = coords2.w
      stateFlag3 = false
      stateFlag4 = true
      stateFlag6 = true
      workingValue21 = workingValue21(position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6)
      position = table
      position = position.insert
      workingValue22 = dataCollection7
      stateFlag = workingValue21
      position(workingValue22, stateFlag)
      position = AddBlipForEntity
      workingValue22 = workingValue21
      -- Beginner: result below is blipHandle.
      position = position(workingValue22)
      workingValue22 = SetBlipSprite
      stateFlag = position
      stateFlag2 = 477
      workingValue22(stateFlag, stateFlag2)
      workingValue22 = SetBlipColour
      stateFlag = position
      stateFlag2 = 5
      workingValue22(stateFlag, stateFlag2)
      localValue1 = true
      break
    end
  end
  localValue2 = false
  localValue3 = pairs
  workingValue16 = cmgOperation.trailerSpawnPositions
  localValue3, workingValue16, tableHelper, stateFlag19 = localValue3(workingValue16)
  for coords2, workingValue21 in localValue3, workingValue16, tableHelper, stateFlag19 do
    position = cmgOperation4
    workingValue22 = workingValue21.xyz
    position = position(workingValue22)
    if position then
      position = false
      workingValue22 = workingValue17
      if workingValue22 then
        workingValue22 = workingValue17.stage
        if "HARVESTED" == workingValue22 then
          position = true
        end
      end
      workingValue22 = CMG
      workingValue22 = workingValue22.requestEntitySpawn
      stateFlag = "farming_trailer"
      stateFlag2 = workingValue21.xyz
      modelValue = position
      workingValue22(stateFlag, stateFlag2, modelValue)
      workingValue22 = CMG
      workingValue22 = workingValue22.spawnVehicle
      if position then
        stateFlag = cmgOperation.grainModel
        if stateFlag then
          goto continueAtStep137
        end
      end
      stateFlag = cmgOperation.rakeModel
      ::continueAtStep137::
      stateFlag2 = workingValue21.x
      modelValue = workingValue21.y
      stateFlag3 = workingValue21.z
      stateFlag4 = workingValue21.w
      stateFlag6 = false
      stateFlag7 = true
      coords = true
      workingValue22 = workingValue22(stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords)
      stateFlag = table
      stateFlag = stateFlag.insert
      stateFlag2 = dataCollection7
      modelValue = workingValue22
      stateFlag(stateFlag2, modelValue)
      stateFlag = AddBlipForEntity
      stateFlag2 = workingValue22
      -- Beginner: result below is blipHandle.
      stateFlag = stateFlag(stateFlag2)
      stateFlag2 = SetBlipSprite
      modelValue = stateFlag
      stateFlag3 = 479
      stateFlag2(modelValue, stateFlag3)
      stateFlag2 = SetBlipColour
      modelValue = stateFlag
      stateFlag3 = 5
      stateFlag2(modelValue, stateFlag3)
      localValue2 = true
      break
    end
  end
  if not localValue1 then
    localValue3 = notify
    workingValue16 = "~r~Unable to spawn tractor. There is no available space left."
    -- Beginner: Show a notification to the player.
    localValue3(workingValue16)
  end
  if not localValue2 then
    localValue3 = notify
    workingValue16 = "~r~Unable to spawn trailer. There is no available space left."
    localValue3(workingValue16)
  end
end
number12 = {}
number12.GROWN = "Grown & Ready"
number12.HARVESTED = "Harvested"
number12.PLANTED = "Planted"
cmgOperation5 = RageUI
cmgOperation5 = cmgOperation5.CreateWhile
text5 = 1.0
stringHelper2 = RMenu
number15 = stringHelper2
stringHelper2 = stringHelper2.Get
dataCollection4 = "farming"
text6 = "mainmenu"
-- Beginner: result below is menu.
stringHelper2 = stringHelper2(number15, dataCollection4, text6)
number15 = nil

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: none) ===
function dataCollection4()
  local localValue1, localValue2, localValue3, workingValue16, tableHelper, stateFlag19
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue16 = "farming"
  tableHelper = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue16, tableHelper)
  localValue3 = true
  workingValue16 = false
  tableHelper = true

  -- === HELPER FUNCTION (decompiler name: stateFlag19; parameters: none) ===
  function stateFlag19()
    local rageUiOperation, text, text4, dataCollection6, stateFlag18, workingValue18, workingValue20, text9, text10, text11
    rageUiOperation = workingValue17
    if not rageUiOperation then
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.ButtonWithStyle
      text = "~y~Start Job"
      text4 = ""
      dataCollection6 = {}
      dataCollection6.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag18 = true

      -- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue12, localValue22, localValue32) ===
      function workingValue18(localValue12, localValue22, localValue32)
        local gameTime, text8
        if localValue32 then
          gameTime = TriggerServerEvent
          text8 = "10a03c8ecd"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "10a03c8ecd".
          gameTime(text8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation(text, text4, dataCollection6, stateFlag18, workingValue18)
    end
    rageUiOperation = workingValue17
    if rageUiOperation then
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.ButtonWithStyle
      text = "Request Equipment"
      text4 = ""
      dataCollection6 = {}
      dataCollection6.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag18 = true

      -- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue12, localValue22, localValue32) ===
      function workingValue18(localValue12, localValue22, localValue32)
        local gameTime, text8
        if localValue32 then
          gameTime = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          gameTime = gameTime()
          text8 = number18
          gameTime = gameTime - text8
          text8 = 12000
          if gameTime < text8 then
            gameTime = notify
            text8 = "~r~Please wait another 2 minutes before requesting equipment."
            -- Beginner: Show a notification to the player.
            gameTime(text8)
          else
            gameTime = workingValue13
            gameTime()
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation(text, text4, dataCollection6, stateFlag18, workingValue18)
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.ButtonWithStyle
      text = "~r~End Job"
      text4 = ""
      dataCollection6 = {}
      dataCollection6.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag18 = true

      -- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue12, localValue22, localValue32) ===
      function workingValue18(localValue12, localValue22, localValue32)
        local gameTime, text8
        if localValue32 then
          gameTime = TriggerServerEvent
          text8 = "3bea630af8"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3bea630af8".
          gameTime(text8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation(text, text4, dataCollection6, stateFlag18, workingValue18)
    end
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text = "Field Status"
    text4 = ""
    dataCollection6 = {}
    dataCollection6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag18 = true

    -- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue12, localValue22, localValue32) ===
    function workingValue18(localValue12, localValue22, localValue32)
      local gameTime, text8
      if localValue32 then
        gameTime = nil
        workingValue19 = gameTime
        gameTime = TriggerServerEvent
        text8 = "46d9e512b2"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "46d9e512b2".
        gameTime(text8)
      end
    end
    workingValue20 = RMenu
    text9 = workingValue20
    workingValue20 = workingValue20.Get
    text10 = "farming"
    text11 = "status"
    workingValue20, text9, text10, text11 = workingValue20(text9, text10, text11)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text, text4, dataCollection6, stateFlag18, workingValue18, workingValue20, text9, text10, text11)
  end
  localValue1(localValue2, localValue3, workingValue16, tableHelper, stateFlag19)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue16 = "farming"
  tableHelper = "status"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue16, tableHelper)
  localValue3 = true
  workingValue16 = false
  tableHelper = true

  -- === HELPER FUNCTION (decompiler name: stateFlag19; parameters: none) ===
  function stateFlag19()
    local rageUiOperation, text, text4, dataCollection6, stateFlag18, workingValue18, workingValue20, text9, text10, text11, stringHelper, workingValue2, workingValue3, workingValue4, workingValue5
    rageUiOperation = workingValue19
    if rageUiOperation then
      rageUiOperation = pairs
      text = workingValue19
      rageUiOperation, text, text4, dataCollection6 = rageUiOperation(text)
      for stateFlag18, workingValue18 in rageUiOperation, text, text4, dataCollection6 do
        workingValue20 = workingValue18.farmerName
        if workingValue20 then
          workingValue20 = "~y~"
          if workingValue20 then
            goto continueAtStep15
          end
        end
        workingValue20 = "~g~"
        ::continueAtStep15::
        text9 = workingValue18.stage
        if "PLANTED" == text9 then
          workingValue20 = "~r~"
        end
        text9 = ""
        text10 = workingValue18.farmerName
        if text10 then
          text10 = text9
          text11 = "Farmer: "
          stringHelper = workingValue18.farmerName
          text10 = text10 .. text11 .. stringHelper
          text9 = text10
        end
        text10 = workingValue18.timePlanted
        if text10 > 0 then
          text10 = #text9
          if text10 > 0 then
            text10 = text9
            text11 = " | "
            text10 = text10 .. text11
            text9 = text10
          end
          text10 = math
          text10 = text10.min
          text11 = 100
          stringHelper = math
          stringHelper = stringHelper.ceil
          workingValue2 = workingValue18.timeNow
          workingValue3 = workingValue18.timePlanted
          workingValue2 = workingValue2 - workingValue3
          workingValue3 = cmgOperation.growTimeMilliseconds
          workingValue2 = workingValue2 / workingValue3
          workingValue2 = workingValue2 * 100.0
          stringHelper, workingValue2, workingValue3, workingValue4, workingValue5 = stringHelper(workingValue2)
          text10 = text10(text11, stringHelper, workingValue2, workingValue3, workingValue4, workingValue5)
          text11 = text9
          stringHelper = string
          stringHelper = stringHelper.format
          workingValue2 = "%d%% Grown"
          workingValue3 = text10
          stringHelper = stringHelper(workingValue2, workingValue3)
          text11 = text11 .. stringHelper
          text9 = text11
        end
        text10 = RageUI
        text10 = text10.ButtonWithStyle
        text11 = workingValue18.fieldName
        stringHelper = text9
        workingValue2 = {}
        workingValue3 = workingValue20
        workingValue5 = workingValue18.stage
        workingValue4 = number12
        workingValue4 = workingValue4[workingValue5]
        workingValue3 = workingValue3 .. workingValue4
        workingValue2.RightLabel = workingValue3
        workingValue3 = true

        -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue12, localValue22, localValue32) ===
        function workingValue4(localValue12, localValue22, localValue32)
        end
        -- Beginner: Draw a selectable RageUI menu button.
        text10(text11, stringHelper, workingValue2, workingValue3, workingValue4)
      end
    end
  end
  localValue1(localValue2, localValue3, workingValue16, tableHelper, stateFlag19)
end
cmgOperation5(text5, stringHelper2, number15, dataCollection4)
cmgOperation5 = RegisterNetEvent
text5 = "95c3eb0ca3"
-- Beginner: this function handles network event "95c3eb0ca3".

-- === HELPER FUNCTION: stringHelper2(localValue1) ===
function stringHelper2(localValue1)
  local localValue2
  workingValue19 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "95c3eb0ca3".
cmgOperation5(text5, stringHelper2)
-- Beginner: this function handles network event "95c3eb0ca3".

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position
  localValue1 = pairs
  localValue2 = dataCollection2
  localValue1, localValue2, localValue3, workingValue16 = localValue1(localValue2)
  for tableHelper, stateFlag19 in localValue1, localValue2, localValue3, workingValue16 do
    coords2 = StopParticleFxLooped
    workingValue21 = stateFlag19
    position = true
    coords2(workingValue21, position)
  end
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2
  localValue1 = false
  stateFlag20 = localValue1
  localValue1 = cmgOperation5
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue1()
  localValue1 = workingValue17
  if not localValue1 then
    return
  end
  localValue1 = workingValue17.stage
  if "GROWN" == localValue1 then
    localValue1 = 0
    number = localValue1
    localValue1 = 0
    number2 = localValue1
    localValue1 = 0
    number3 = localValue1
  else
    localValue1 = workingValue17.stage
    if "HARVESTED" == localValue1 then
      localValue1 = 0
      number4 = localValue1
      localValue1 = {}
      dataCollection = localValue1
      localValue1 = false
      stateFlag5 = localValue1
    end
  end
end
stringHelper2 = RegisterNetEvent
number15 = "8a973949c8"
-- Beginner: this function handles network event "8a973949c8".

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1, localValue2) ===
function dataCollection4(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue17
  if not localValue3 then
    localValue3 = {}
    workingValue17 = localValue3
  end
  workingValue17.fieldIndex = localValue1
  workingValue17.stage = localValue2
  localValue3 = cmgOperation.fields
  localValue3 = localValue3[localValue1]
  workingValue17.config = localValue3
  localValue3 = text5
  localValue3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8a973949c8".
stringHelper2(number15, dataCollection4)
stringHelper2 = RegisterNetEvent
number15 = "a171c01ded"
-- Beginner: this function handles network event "a171c01ded".

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1) ===
function dataCollection4(localValue1)
  local localValue2, localValue3, workingValue16
  localValue2 = assert
  localValue3 = workingValue17
  workingValue16 = "Attempting to set farming job stage whilst allocated field is invalid"
  localValue2(localValue3, workingValue16)
  workingValue17.stage = localValue1
  localValue2 = text5
  localValue2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a171c01ded".
stringHelper2(number15, dataCollection4)
stringHelper2 = RegisterNetEvent
number15 = "3bea630af8"
-- Beginner: this function handles network event "3bea630af8".

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1) ===
function dataCollection4(localValue1)
  local localValue2, localValue3
  localValue2 = nil
  workingValue17 = localValue2
  if localValue1 then
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 5000
    localValue2(localValue3)
    localValue2 = notify
    localValue3 = "~g~You have successfully tendered the field. Return to the warehouse to start another shift!"
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3bea630af8".
stringHelper2(number15, dataCollection4)

-- === HELPER FUNCTION: stringHelper2(localValue1) ===
function stringHelper2(localValue1)
  local localValue2, localValue3, workingValue16, tableHelper, stateFlag19
  localValue2 = workingValue17
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = workingValue.translate
  localValue3 = workingValue.mat4
  workingValue16 = 1.0
  localValue3 = localValue3(workingValue16)
  workingValue16 = workingValue17.config
  workingValue16 = workingValue16.aabbCenter
  workingValue16 = workingValue16 - localValue1
  localValue2 = localValue2(localValue3, workingValue16)
  localValue3 = workingValue.polygon
  localValue3 = localValue3.contains
  workingValue16 = workingValue17.config
  workingValue16 = workingValue16.polygons
  tableHelper = localValue2[4]
  tableHelper = tableHelper.xyz
  stateFlag19 = 100.0
  return localValue3(workingValue16, tableHelper, stateFlag19)
end

-- === HELPER FUNCTION (decompiler name: number15; parameters: localValue1) ===
function number15(localValue1)
  local localValue2, localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14
  localValue2 = GetVehicleTrailerVehicle
  localValue3 = localValue1
  localValue2, localValue3 = localValue2(localValue3)
  if not localValue2 or 0 == localValue3 then
    workingValue16 = text3
    tableHelper = cmgOperation.rakeModel
    workingValue16(tableHelper)
    workingValue16 = drawNativeText
    tableHelper = "Attach the ~y~rake trailer~w~ to your ~y~tractor~w~"
    -- Beginner: Draw GTA-style text on screen.
    workingValue16(tableHelper)
    return
  end
  workingValue16 = GetEntityModel
  tableHelper = localValue3
  -- Beginner: result below is modelHash.
  workingValue16 = workingValue16(tableHelper)
  tableHelper = cmgOperation.rakeModel
  if workingValue16 ~= tableHelper then
    tableHelper = cmgOperation.grainModel
    if workingValue16 == tableHelper then
      tableHelper = drawNativeNotification
      stateFlag19 = "You have the grain trailer attached. You need the rake trailer for your field."
      -- Beginner: Show a GTA-style notification/help prompt.
      tableHelper(stateFlag19)
    end
    tableHelper = drawNativeText
    stateFlag19 = "Detach your current ~y~trailer~w~ at the ~y~warehouse~w~"
    -- Beginner: Draw GTA-style text on screen.
    tableHelper(stateFlag19)
    return
  end
  tableHelper = CMG
  tableHelper = tableHelper.getPlayerCoords
  -- Beginner: result below is playerCoords.
  tableHelper = tableHelper()
  stateFlag19 = stringHelper2
  coords2 = tableHelper
  stateFlag19 = stateFlag19(coords2)
  if not stateFlag19 then
    stateFlag19 = workingValue17
    if stateFlag19 then
      stateFlag19 = drawNativeText
      coords2 = string
      coords2 = coords2.format
      workingValue21 = "Drive to ~y~%s~w~"
      position = workingValue17.config
      position = position.name
      coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14 = coords2(workingValue21, position)
      stateFlag19(coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14)
      stateFlag19 = workingValue17.config
      stateFlag19 = stateFlag19.position
      coords2 = GetGroundZFor_3dCoord
      workingValue21 = stateFlag19.x
      position = stateFlag19.y
      workingValue22 = stateFlag19.z
      stateFlag = nil
      stateFlag2 = false
      coords2, workingValue21 = coords2(workingValue21, position, workingValue22, stateFlag, stateFlag2)
      position = workingValue17.config
      position = position.aabbCenter
      workingValue22 = DrawMarker
      stateFlag = 1
      stateFlag2 = position.x
      modelValue = position.y
      stateFlag3 = workingValue21 or stateFlag3
      if not coords2 or not workingValue21 then
        stateFlag3 = stateFlag19.z
      end
      stateFlag3 = stateFlag3 - 10.0
      stateFlag4 = 0.0
      stateFlag6 = 0.0
      stateFlag7 = 0.0
      coords = 0.0
      workingValue7 = 0.0
      stateFlag8 = 0.0
      stateFlag9 = 15.0
      stateFlag10 = 15.0
      number6 = 125.0
      number7 = 255
      number8 = 255
      number9 = 0
      number10 = 125
      stateFlag11 = false
      stateFlag12 = false
      number11 = 2
      stateFlag13 = false
      number13 = nil
      number14 = nil
      stateFlag14 = false
      workingValue22(stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14)
      workingValue22 = SetNewWaypoint
      stateFlag = position.x
      stateFlag2 = position.y
      workingValue22(stateFlag, stateFlag2)
      workingValue22 = false
      stateFlag20 = workingValue22
      return
    end
  end
  stateFlag19 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag19 = stateFlag19()
  coords2 = number2
  stateFlag19 = stateFlag19 - coords2
  coords2 = 200
  if stateFlag19 > coords2 then
    stateFlag19 = 0
    number = stateFlag19
    stateFlag19 = pairs
    coords2 = GetGamePool
    workingValue21 = "CObject"
    coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14 = coords2(workingValue21)
    stateFlag19, coords2, workingValue21, position = stateFlag19(coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14)
    for workingValue22, stateFlag in stateFlag19, coords2, workingValue21, position do
      stateFlag2 = GetEntityModel
      modelValue = stateFlag
      -- Beginner: result below is modelHash.
      stateFlag2 = stateFlag2(modelValue)
      modelValue = table
      modelValue = modelValue.find
      stateFlag3 = cmgOperation.fieldObjects
      stateFlag4 = stateFlag2
      modelValue = modelValue(stateFlag3, stateFlag4)
      if modelValue then
        modelValue = GetEntityCoords
        stateFlag3 = stateFlag
        -- Beginner: result below is entityCoords.
        modelValue = modelValue(stateFlag3)
        stateFlag3 = modelValue.z
        if stateFlag3 > 5.0 then
          stateFlag3 = stringHelper2
          stateFlag4 = modelValue
          stateFlag3 = stateFlag3(stateFlag4)
          if stateFlag3 then
            stateFlag3 = number
            stateFlag3 = stateFlag3 + 1
            number = stateFlag3
          end
        end
      end
      modelValue = number
      if 0 == modelValue then
        modelValue = number3
        modelValue = modelValue + 1
        number3 = modelValue
      else
        modelValue = 0
        number3 = modelValue
      end
    end
    stateFlag19 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    stateFlag19 = stateFlag19()
    number2 = stateFlag19
  end
  stateFlag19 = number3
  if stateFlag19 > 50 then
    stateFlag19 = stateFlag20
    if not stateFlag19 then
      stateFlag19 = TriggerServerEvent
      coords2 = "a9707ae981"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a9707ae981".
      stateFlag19(coords2)
      stateFlag19 = true
      stateFlag20 = stateFlag19
    end
  else
    stateFlag19 = number3
    if stateFlag19 > 0 then
      stateFlag19 = "~y~REMAINING CROPS"
      workingValue6 = stateFlag19
      stateFlag19 = "NONE"
      workingValue8 = stateFlag19
      stateFlag19 = drawNativeText
      coords2 = "Search the remaining ~y~field~w~ for any crops"
      -- Beginner: Draw GTA-style text on screen.
      stateFlag19(coords2)
    else
      stateFlag19 = "~y~REMAINING CROPS"
      workingValue6 = stateFlag19
      stateFlag19 = tostring
      coords2 = number
      stateFlag19 = stateFlag19(coords2)
      workingValue8 = stateFlag19
      stateFlag19 = drawNativeText
      coords2 = "Harvest the remaining ~y~crops~w~ with your tractor"
      stateFlag19(coords2)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1) ===
function dataCollection4(localValue1)
  local localValue2, localValue3, workingValue16, tableHelper, stateFlag19, coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14, stateFlag15, number16, stateFlag16, workingValue14, workingValue15, stateFlag17
  localValue2 = GetVehicleTrailerVehicle
  localValue3 = localValue1
  localValue2, localValue3 = localValue2(localValue3)
  if not localValue2 or 0 == localValue3 then
    workingValue16 = text3
    tableHelper = cmgOperation.grainModel
    workingValue16(tableHelper)
    workingValue16 = drawNativeText
    tableHelper = "Attach the ~y~grain trailer~w~ to your ~y~tractor~w~"
    -- Beginner: Draw GTA-style text on screen.
    workingValue16(tableHelper)
    workingValue16 = cmgOperation5
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    workingValue16()
    return
  end
  workingValue16 = GetEntityModel
  tableHelper = localValue3
  -- Beginner: result below is modelHash.
  workingValue16 = workingValue16(tableHelper)
  tableHelper = cmgOperation.grainModel
  if workingValue16 ~= tableHelper then
    tableHelper = cmgOperation.rakeModel
    if workingValue16 == tableHelper then
      tableHelper = drawNativeNotification
      stateFlag19 = "You have the rake trailer attached. You need the grain trailer for your field."
      -- Beginner: Show a GTA-style notification/help prompt.
      tableHelper(stateFlag19)
    end
    tableHelper = drawNativeText
    stateFlag19 = "Detach your current ~y~trailer~w~ at the ~y~warehouse~w~"
    -- Beginner: Draw GTA-style text on screen.
    tableHelper(stateFlag19)
    tableHelper = cmgOperation5
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    tableHelper()
    return
  end
  tableHelper = CMG
  tableHelper = tableHelper.getPlayerCoords
  -- Beginner: result below is playerCoords.
  tableHelper = tableHelper()
  stateFlag19 = stringHelper2
  coords2 = tableHelper
  stateFlag19 = stateFlag19(coords2)
  if not stateFlag19 then
    stateFlag19 = workingValue17
    if stateFlag19 then
      stateFlag19 = drawNativeText
      coords2 = string
      coords2 = coords2.format
      workingValue21 = "Drive to ~y~%s~w~"
      position = workingValue17.config
      position = position.name
      coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14, stateFlag15, number16, stateFlag16, workingValue14, workingValue15, stateFlag17 = coords2(workingValue21, position)
      -- Beginner: Draw GTA-style text on screen.
      stateFlag19(coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14, stateFlag15, number16, stateFlag16, workingValue14, workingValue15, stateFlag17)
      stateFlag19 = workingValue17.config
      stateFlag19 = stateFlag19.position
      coords2 = GetGroundZFor_3dCoord
      workingValue21 = stateFlag19.x
      position = stateFlag19.y
      workingValue22 = stateFlag19.z
      stateFlag = nil
      stateFlag2 = false
      coords2, workingValue21 = coords2(workingValue21, position, workingValue22, stateFlag, stateFlag2)
      position = workingValue17.config
      position = position.aabbCenter
      workingValue22 = DrawMarker
      stateFlag = 1
      stateFlag2 = position.x
      modelValue = position.y
      stateFlag3 = workingValue21 or stateFlag3
      if not coords2 or not workingValue21 then
        stateFlag3 = stateFlag19.z
      end
      stateFlag3 = stateFlag3 - 10.0
      stateFlag4 = 0.0
      stateFlag6 = 0.0
      stateFlag7 = 0.0
      coords = 0.0
      workingValue7 = 0.0
      stateFlag8 = 0.0
      stateFlag9 = 15.0
      stateFlag10 = 15.0
      number6 = 125.0
      number7 = 255
      number8 = 255
      number9 = 0
      number10 = 125
      stateFlag11 = false
      stateFlag12 = false
      number11 = 2
      stateFlag13 = false
      number13 = nil
      number14 = nil
      stateFlag14 = false
      workingValue22(stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14)
      workingValue22 = SetNewWaypoint
      stateFlag = position.x
      stateFlag2 = position.y
      workingValue22(stateFlag, stateFlag2)
      workingValue22 = false
      stateFlag20 = workingValue22
      workingValue22 = cmgOperation5
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      workingValue22()
      return
    end
  end
  stateFlag19 = stateFlag5
  if not stateFlag19 then
    stateFlag19 = pairs
    coords2 = GetGamePool
    workingValue21 = "CObject"
    coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14, stateFlag15, number16, stateFlag16, workingValue14, workingValue15, stateFlag17 = coords2(workingValue21)
    stateFlag19, coords2, workingValue21, position = stateFlag19(coords2, workingValue21, position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14, stateFlag15, number16, stateFlag16, workingValue14, workingValue15, stateFlag17)
    for workingValue22, stateFlag in stateFlag19, coords2, workingValue21, position do
      stateFlag2 = GetEntityModel
      modelValue = stateFlag
      -- Beginner: result below is modelHash.
      stateFlag2 = stateFlag2(modelValue)
      modelValue = table
      modelValue = modelValue.find
      stateFlag3 = cmgOperation.fieldObjects
      stateFlag4 = stateFlag2
      modelValue = modelValue(stateFlag3, stateFlag4)
      if modelValue then
        modelValue = GetEntityCoords
        stateFlag3 = stateFlag
        -- Beginner: result below is entityCoords.
        modelValue = modelValue(stateFlag3)
        stateFlag3 = modelValue.z
        if stateFlag3 < 5.0 then
          stateFlag3 = stringHelper2
          stateFlag4 = modelValue
          stateFlag3 = stateFlag3(stateFlag4)
          if stateFlag3 then
            stateFlag3 = table
            stateFlag3 = stateFlag3.insert
            stateFlag4 = dataCollection
            stateFlag6 = modelValue
            stateFlag3(stateFlag4, stateFlag6)
          end
        end
      end
    end
    stateFlag19 = dataCollection
    stateFlag19 = #stateFlag19
    number4 = stateFlag19
    stateFlag19 = true
    stateFlag5 = stateFlag19
  end
  stateFlag19 = dataCollection
  stateFlag19 = #stateFlag19
  if stateFlag19 >= 5 then
    stateFlag19 = stateFlag19 - 5
  end
  coords2 = CMG
  coords2 = coords2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  coords2 = coords2()
  workingValue21 = pairs
  position = dataCollection
  workingValue21, position, workingValue22, stateFlag = workingValue21(position)
  for stateFlag2, modelValue in workingValue21, position, workingValue22, stateFlag do
    stateFlag3 = dataCollection
    stateFlag3 = #stateFlag3
    if not (stateFlag3 < 75) then
      stateFlag3 = coords2 - modelValue
      stateFlag3 = #stateFlag3
      if not (stateFlag3 < 50.0) then
        goto continueAtStep208
      end
    end
    stateFlag3 = GetGroundZFor_3dCoord
    stateFlag4 = modelValue.x
    stateFlag6 = modelValue.y
    stateFlag7 = coords2.z
    stateFlag7 = stateFlag7 + 15.0
    coords = nil
    workingValue7 = false
    stateFlag3, stateFlag4 = stateFlag3(stateFlag4, stateFlag6, stateFlag7, coords, workingValue7)
    stateFlag6 = DrawMarker
    stateFlag7 = 0
    coords = modelValue.x
    workingValue7 = modelValue.y
    stateFlag8 = stateFlag4 or stateFlag8
    if not stateFlag3 or not stateFlag4 then
      stateFlag8 = coords2.z
    end
    stateFlag9 = 0.0
    stateFlag10 = 0.0
    number6 = 0.0
    number7 = 0.0
    number8 = 0.0
    number9 = 0.0
    number10 = 0.2
    stateFlag11 = 0.2
    stateFlag12 = 0.2
    number11 = 255
    stateFlag13 = 255
    number13 = 0
    number14 = 155
    stateFlag14 = false
    stateFlag15 = false
    number16 = 2
    stateFlag16 = false
    workingValue14 = nil
    workingValue15 = nil
    stateFlag17 = false
    stateFlag6(stateFlag7, coords, workingValue7, stateFlag8, stateFlag9, stateFlag10, number6, number7, number8, number9, number10, stateFlag11, stateFlag12, number11, stateFlag13, number13, number14, stateFlag14, stateFlag15, number16, stateFlag16, workingValue14, workingValue15, stateFlag17)
    ::continueAtStep208::
  end
  workingValue21 = dataCollection2
  workingValue21 = #workingValue21
  if workingValue21 < 25 then
    workingValue21 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workingValue21 = workingValue21()
    position = number5
    workingValue21 = workingValue21 - position
    position = 250
    if workingValue21 > position then
      workingValue21 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      workingValue21 = workingValue21()
      number5 = workingValue21
      workingValue21 = CMG
      workingValue21 = workingValue21.loadPtfx
      position = "core"
      workingValue21(position)
      workingValue21 = StartParticleFxLoopedOnEntityBone
      position = "ent_amb_fbi_falling_debris"
      workingValue22 = localValue3
      stateFlag = 0.0
      stateFlag2 = 0.0
      modelValue = 0.0
      stateFlag3 = 0.0
      stateFlag4 = 0.0
      stateFlag6 = 0.0
      stateFlag7 = -1
      coords = 1.0
      workingValue7 = false
      stateFlag8 = false
      stateFlag9 = false
      workingValue21 = workingValue21(position, workingValue22, stateFlag, stateFlag2, modelValue, stateFlag3, stateFlag4, stateFlag6, stateFlag7, coords, workingValue7, stateFlag8, stateFlag9)
      position = table
      position = position.insert
      workingValue22 = dataCollection2
      stateFlag = workingValue21
      position(workingValue22, stateFlag)
    end
  end
  workingValue21 = number4
  workingValue21 = stateFlag19 / workingValue21
  position = 1.0
  workingValue21 = position - workingValue21
  workingValue21 = workingValue21 * 100.0
  position = math
  position = position.ceil
  workingValue22 = workingValue21
  position = position(workingValue22)
  workingValue22 = "~y~AREA PLANTED"
  workingValue6 = workingValue22
  workingValue22 = string
  workingValue22 = workingValue22.format
  stateFlag = "%s%%"
  stateFlag2 = position
  workingValue22 = workingValue22(stateFlag, stateFlag2)
  workingValue8 = workingValue22
  workingValue22 = drawNativeText
  stateFlag = "Drive on the ~y~field~w~ to plant seeds"
  -- Beginner: Draw GTA-style text on screen.
  workingValue22(stateFlag)
  if position >= 98 then
    workingValue22 = stateFlag20
    if not workingValue22 then
      workingValue22 = TriggerServerEvent
      stateFlag = "4f5fc9931b"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4f5fc9931b".
      workingValue22(stateFlag)
      workingValue22 = true
      stateFlag20 = workingValue22
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, workingValue16, tableHelper
  localValue1 = nil
  workingValue6 = localValue1
  localValue1 = nil
  workingValue8 = localValue1
  localValue1 = workingValue17
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.setHudTimerBarProviderActive
    localValue2 = "farmingJob"
    localValue3 = false
    localValue1(localValue2, localValue3)
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  localValue1, localValue2 = localValue1()
  if 0 == localValue1 or not localValue2 then
    localValue3 = CMG
    localValue3 = localValue3.setHudTimerBarProviderActive
    workingValue16 = "farmingJob"
    tableHelper = false
    localValue3(workingValue16, tableHelper)
    localValue3 = drawNativeText
    workingValue16 = "Enter the ~y~tractor~w~ or request a new one at the ~y~warehouse~w~"
    -- Beginner: Draw GTA-style text on screen.
    localValue3(workingValue16)
    return
  end
  localValue3 = workingValue17.stage
  if "GROWN" == localValue3 then
    localValue3 = number15
    workingValue16 = localValue1
    localValue3(workingValue16)
  else
    localValue3 = workingValue17.stage
    if "HARVESTED" == localValue3 then
      localValue3 = dataCollection4
      workingValue16 = localValue1
      localValue3(workingValue16)
    else
      localValue3 = workingValue17.stage
      if "PLANTED" == localValue3 then
        localValue3 = drawNativeText
        workingValue16 = "Return to the ~y~warehouse~w~ to drop off your equipment"
        -- Beginner: Draw GTA-style text on screen.
        localValue3(workingValue16)
      end
    end
  end
  localValue3 = CMG
  localValue3 = localValue3.setHudTimerBarProviderActive
  workingValue16 = "farmingJob"
  tableHelper = workingValue6
  tableHelper = nil ~= tableHelper
  localValue3(workingValue16, tableHelper)
end
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.createThreadOnTick
number17 = text6
text7 = "Farming"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation6(number17, text7)
