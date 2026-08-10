--[[
    Beginner Guide: cl_farming.lua
    ==============================

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
    BEGINNER GUIDE — Farming
    ========================

    File: cmg/prod/client/jobs/cl_farming.lua
    Purpose: This file contains job gameplay.

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

    Config/data used:
      * cfg/cfg_farming

    Network/hash identifiers found: 11
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * farmingJob
      * ~y~Start Job
      * ~r~End Job
      * ~g~You have successfully tendered the field. Return to the warehouse to start another shift!
      * You have the grain trailer attached. You need the rake trailer for your field.

]]
local workValue, cmgCall, dataTable3, dataTable5, workValue17, numberValue18, workValue19, dataTable7, numberValue19, flag20, numberValue, numberValue2, numberValue3, numberValue4, dataTable, flag5, dataTable2, numberValue5, workValue6, workValue8, cmgCall2, textValue2, workValue9, workValue10, workValue11, cmgCall3, workValue12, cmgCall4, textValue3, workValue13, numberValue12, cmgCall5, textValue5, stringHelper2, numberValue15, dataTable4, textValue6, cmgCall6, numberValue17, textValue7
workValue = require
cmgCall = "glm"
workValue = workValue(cmgCall)
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable3 = "cfg/cfg_farming"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable3)
dataTable3 = {}
dataTable5 = {}
workValue17 = nil
numberValue18 = 0
workValue19 = nil
dataTable7 = {}
numberValue19 = 0
flag20 = false
numberValue = 0
numberValue2 = 0
numberValue3 = 0
numberValue4 = 0
dataTable = {}
flag5 = false
dataTable2 = {}
numberValue5 = 0
workValue6 = nil
workValue8 = nil
cmgCall2 = CMG
cmgCall2 = cmgCall2.registerHudTimerBarProvider
textValue2 = "farmingJob"
function workValue9(arg1)
  local arg2, arg3, workValue16
  arg2 = workValue6
  if arg2 then
    arg2 = arg1.push
    arg3 = workValue6
    workValue16 = workValue8
    arg2(arg3, workValue16)
  end
end
cmgCall2(textValue2, workValue9)
cmgCall2 = RegisterNetEvent
textValue2 = "9e07b10346"
-- Beginner: this function handles network event "9e07b10346".
function workValue9(arg1, arg2, arg3)
  local workValue16, tableHelper, flag19, coords2
  workValue16 = dataTable3
  workValue16 = workValue16[arg1]
  if workValue16 then
    tableHelper = table
    tableHelper = tableHelper.insert
    flag19 = workValue16
    coords2 = {}
    coords2.position = arg2
    coords2.model = arg3
    coords2.isSliding = true
    coords2.nextCheckTime = 0
    coords2.failedCheckAttempts = 0
    tableHelper(flag19, coords2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9e07b10346".
cmgCall2(textValue2, workValue9)
cmgCall2 = RegisterNetEvent
textValue2 = "c1a89581c1"
-- Beginner: this function handles network event "c1a89581c1".
function workValue9(arg1)
  local arg2, arg3, workValue16, tableHelper, flag19, coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7
  arg2 = dataTable3
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = pairs
    workValue16 = arg2
    arg3, workValue16, tableHelper, flag19 = arg3(workValue16)
    for coords2, workValue21 in arg3, workValue16, tableHelper, flag19 do
      position = workValue21.object
      if position then
        position = workValue21.position
        workValue22 = SetEntityCoordsNoOffset
        flag = workValue21.object
        flag2 = position.x
        modelValue = position.y
        flag3 = position.z
        flag4 = true
        flag6 = false
        flag7 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        workValue22(flag, flag2, modelValue, flag3, flag4, flag6, flag7)
      end
    end
    arg3 = dataTable3
    arg3[arg1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c1a89581c1".
cmgCall2(textValue2, workValue9)
cmgCall2 = RegisterNetEvent
textValue2 = "2ce4151c46"
-- Beginner: this function handles network event "2ce4151c46".
function workValue9(arg1, arg2)
  local arg3, workValue16, tableHelper, flag19, coords2, workValue21, position
  arg3 = pairs
  workValue16 = arg2
  arg3, workValue16, tableHelper, flag19 = arg3(workValue16)
  for coords2, workValue21 in arg3, workValue16, tableHelper, flag19 do
    workValue21.isSliding = false
    workValue21.nextCheckTime = 0
    workValue21.failedCheckAttempts = 0
  end
  arg3 = dataTable3
  arg3[arg1] = arg2
end
cmgCall2(textValue2, workValue9)
function cmgCall2(arg1)
  local arg2, arg3, workValue16
  arg2 = TriggerServerEvent
  arg3 = "2ce4151c46"
  workValue16 = arg1.index
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2ce4151c46".
  arg2(arg3, workValue16)
end
function textValue2(arg1)
  local arg2, arg3, workValue16, tableHelper, flag19, coords2, workValue21, position, workValue22, flag, flag2
  arg3 = arg1.index
  arg2 = dataTable3
  arg2 = arg2[arg3]
  if arg2 then
    arg3 = pairs
    workValue16 = arg2
    arg3, workValue16, tableHelper, flag19 = arg3(workValue16)
    for coords2, workValue21 in arg3, workValue16, tableHelper, flag19 do
      position = SetEntityCollision
      workValue22 = workValue21.object
      flag = false
      flag2 = false
      position(workValue22, flag, flag2)
      position = FreezeEntityPosition
      workValue22 = workValue21.object
      flag = false
      -- Beginner: Freeze or unfreeze an entity in place.
      position(workValue22, flag)
      position = SetEntityAsMissionEntity
      workValue22 = workValue21.object
      flag = false
      flag2 = false
      position(workValue22, flag, flag2)
      position = SetEntityCleanupByEngine
      workValue22 = workValue21.object
      flag = true
      position(workValue22, flag)
      position = SetEntityAsNoLongerNeeded
      workValue22 = workValue21.object
      position(workValue22)
      position = DeleteEntity
      workValue22 = workValue21.object
      -- Beginner: Delete a GTA entity.
      position(workValue22)
    end
    workValue16 = arg1.index
    arg3 = dataTable3
    arg3[workValue16] = nil
  end
end
function workValue9(arg1)
  local arg2, arg3, workValue16, tableHelper, flag19, coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, workValue16, tableHelper = arg2(arg3)
  for flag19, coords2 in arg2, arg3, workValue16, tableHelper do
    workValue21 = coords2.object
    if not workValue21 then
      workValue21 = numberValue19
      position = coords2.nextCheckTime
      if workValue21 > position then
        workValue21 = GetClosestObjectOfType
        position = coords2.position
        position = position.x
        workValue22 = coords2.position
        workValue22 = workValue22.y
        flag = coords2.position
        flag = flag.z
        flag2 = 1.5
        modelValue = coords2.model
        flag3 = true
        flag4 = false
        flag6 = false
        -- Beginner: result below is objectEntity.
        workValue21 = workValue21(position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6)
        if 0 ~= workValue21 then
          position = SetEntityCollision
          workValue22 = workValue21
          flag = false
          flag2 = false
          position(workValue22, flag, flag2)
          position = FreezeEntityPosition
          workValue22 = workValue21
          flag = true
          -- Beginner: Freeze or unfreeze an entity in place.
          position(workValue22, flag)
          position = coords2.isSliding
          if not position then
            position = GetEntityCoords
            workValue22 = workValue21
            flag = true
            -- Beginner: result below is entityCoords.
            position = position(workValue22, flag)
            workValue22 = SetEntityCoords
            flag = workValue21
            flag2 = position.x
            modelValue = position.y
            flag3 = 0.0
            flag4 = false
            flag6 = false
            flag7 = false
            coords = false
            -- Beginner: Move/teleport an entity to new coordinates.
            workValue22(flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords)
          end
          coords2.object = workValue21
          coords2.failedCheckAttempts = 0
        else
          position = coords2.failedCheckAttempts
          if position < 3 then
            workValue22 = position + 1
            coords2.failedCheckAttempts = workValue22
          end
          workValue22 = numberValue19
          flag = math
          flag = flag.random
          flag2 = 1000
          modelValue = position * 1000
          modelValue = 1000 + modelValue
          flag = flag(flag2, modelValue)
          workValue22 = workValue22 + flag
          coords2.nextCheckTime = workValue22
        end
      end
    else
      workValue21 = coords2.isSliding
      if workValue21 then
        workValue21 = DoesEntityExist
        position = coords2.object
        workValue21 = workValue21(position)
        if not workValue21 then
          coords2.object = nil
        else
          workValue21 = GetEntityCoords
          position = coords2.object
          workValue22 = true
          -- Beginner: result below is entityCoords.
          workValue21 = workValue21(position, workValue22)
          position = workValue21.z
          if position > 0.0 then
            position = SetEntityCoords
            workValue22 = coords2.object
            flag = workValue21.x
            flag2 = workValue21.y
            modelValue = workValue21.z
            flag3 = GetFrameTime
            flag3 = flag3()
            flag3 = -2.5 * flag3
            modelValue = modelValue + flag3
            flag3 = false
            flag4 = false
            flag6 = false
            flag7 = false
            position(workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7)
          else
            coords2.isSliding = false
          end
        end
      else
        workValue21 = numberValue19
        position = coords2.nextCheckTime
        if workValue21 > position then
          workValue21 = DoesEntityExist
          position = coords2.object
          workValue21 = workValue21(position)
          if not workValue21 then
            coords2.object = nil
          end
          workValue21 = numberValue19
          position = math
          position = position.random
          workValue22 = 1000
          flag = 2000
          position = position(workValue22, flag)
          workValue21 = workValue21 + position
          coords2.nextCheckTime = workValue21
        end
      end
    end
  end
end
function workValue10(arg1)
  local arg2, arg3, workValue16, tableHelper, flag19, coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  arg2, arg3 = arg2()
  if 0 == arg2 or not arg3 then
    return
  end
  workValue16 = GetEntityModel
  tableHelper = arg2
  -- Beginner: result below is modelHash.
  workValue16 = workValue16(tableHelper)
  if -2076478498 ~= workValue16 then
    return
  end
  tableHelper = GetVehicleTrailerVehicle
  flag19 = arg2
  tableHelper, flag19 = tableHelper(flag19)
  if not tableHelper or 0 == flag19 then
    return
  end
  coords2 = workValue17
  if not coords2 then
    return
  end
  coords2 = workValue17.stage
  if "GROWN" == coords2 then
    coords2 = GetEntityCoords
    workValue21 = flag19
    position = true
    -- Beginner: result below is entityCoords.
    coords2 = coords2(workValue21, position)
    workValue21 = pairs
    position = cmgCall.fieldObjects
    workValue21, position, workValue22, flag = workValue21(position)
    for flag2, modelValue in workValue21, position, workValue22, flag do
      flag3 = GetClosestObjectOfType
      flag4 = coords2.x
      flag6 = coords2.y
      flag7 = coords2.z
      coords = 1.5
      workValue7 = modelValue
      flag8 = true
      flag9 = false
      flag10 = false
      -- Beginner: result below is objectEntity.
      flag3 = flag3(flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10)
      if 0 ~= flag3 then
        flag4 = dataTable5
        flag4 = flag4[flag3]
        if not flag4 then
          flag4 = TriggerServerEvent
          flag6 = "9e07b10346"
          flag7 = arg1.index
          coords = GetEntityCoords
          workValue7 = flag3
          -- Beginner: result below is entityCoords.
          coords = coords(workValue7)
          workValue7 = modelValue
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9e07b10346".
          flag4(flag6, flag7, coords, workValue7)
          flag4 = dataTable5
          flag4[flag3] = true
        end
      end
    end
  else
    coords2 = workValue17.stage
    if "HARVESTED" == coords2 then
      coords2 = GetEntityCoords
      workValue21 = flag19
      position = true
      -- Beginner: result below is entityCoords.
      coords2 = coords2(workValue21, position)
      coords2 = coords2.xy
      workValue21 = pairs
      position = dataTable
      workValue21, position, workValue22, flag = workValue21(position)
      for flag2, modelValue in workValue21, position, workValue22, flag do
        flag3 = modelValue.xy
        flag3 = coords2 - flag3
        flag3 = #flag3
        flag4 = 1.5
        if flag3 < flag4 then
          flag3 = table
          flag3 = flag3.remove
          flag4 = dataTable
          flag6 = flag2
          flag3(flag4, flag6)
          break
        end
      end
    end
  end
end
function workValue11(arg1)
  local arg2, arg3, workValue16
  arg3 = arg1.index
  arg2 = dataTable3
  arg2 = arg2[arg3]
  if arg2 then
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    numberValue19 = arg3
    arg3 = workValue9
    workValue16 = arg2
    arg3(workValue16)
    arg3 = workValue17
    if arg3 then
      arg3 = workValue17.fieldIndex
      workValue16 = arg1.index
      if arg3 == workValue16 then
        arg3 = workValue10
        workValue16 = arg1
        arg3(workValue16)
      end
    end
  end
end
cmgCall3 = pairs
workValue12 = cmgCall.fields
cmgCall3, workValue12, cmgCall4, textValue3 = cmgCall3(workValue12)
for workValue13, numberValue12 in cmgCall3, workValue12, cmgCall4, textValue3 do
  cmgCall5 = CMG
  cmgCall5 = cmgCall5.createArea
  textValue5 = "farming_"
  stringHelper2 = tostring
  numberValue15 = workValue13
  stringHelper2 = stringHelper2(numberValue15)
  textValue5 = textValue5 .. stringHelper2
  stringHelper2 = numberValue12.position
  numberValue15 = 150.0
  dataTable4 = 300.0
  textValue6 = cmgCall2
  cmgCall6 = textValue2
  numberValue17 = workValue11
  textValue7 = numberValue12
  -- Beginner: Create an interaction area around a world position.
  cmgCall5(textValue5, stringHelper2, numberValue15, dataTable4, textValue6, cmgCall6, numberValue17, textValue7)
end
cmgCall3 = Citizen
cmgCall3 = cmgCall3.CreateThread
function workValue12()
  local arg1, arg2
  arg1 = GlobalState
  arg1 = arg1.registeredFarmingArchetypeDefs
  if not arg1 then
    arg1 = RegisterArchetypes
    function arg2()
      local rageUiCall, textValue
      rageUiCall = cmgCall.archetypeDefs
      return rageUiCall
    end
    arg1(arg2)
    arg1 = GlobalState
    arg1.registeredFarmingArchetypeDefs = true
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall3(workValue12)
cmgCall3 = CMG
function workValue12()
  local arg1, arg2, arg3, workValue16, tableHelper, flag19, coords2
  arg1 = PlaySound
  arg2 = -1
  arg3 = "CHECKPOINT_BEHIND"
  workValue16 = "HUD_MINI_GAME_SOUNDSET"
  tableHelper = false
  flag19 = false
  coords2 = true
  arg1(arg2, arg3, workValue16, tableHelper, flag19, coords2)
  arg1 = CMG
  arg1 = arg1.initializeInstructionalJobScaleform
  arg2 = "Welcome to Farming"
  arg3 = "I have set a waypoint to the Farming Warehouse where you can pick up your tractor."
  arg1(arg2, arg3)
  arg1 = SetNewWaypoint
  arg2 = cmgCall.menuPosition
  arg2 = arg2.x
  arg3 = cmgCall.menuPosition
  arg3 = arg3.y
  arg1(arg2, arg3)
end
cmgCall3.displayFarmerInstructions = workValue12
function cmgCall3()
  local arg1, arg2, arg3, workValue16, tableHelper
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue16 = "farming"
  tableHelper = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue16, tableHelper)
  arg3 = true
  arg1(arg2, arg3)
end
function workValue12()
  local arg1, arg2, arg3, workValue16, tableHelper
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue16 = "farming"
  tableHelper = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue16, tableHelper)
  arg3 = false
  arg1(arg2, arg3)
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createArea
textValue3 = "farming_menu"
workValue13 = cmgCall.menuPosition
numberValue12 = 1.5
cmgCall5 = 3.0
textValue5 = cmgCall3
stringHelper2 = workValue12
function numberValue15()
  local arg1, arg2
end
dataTable4 = {}
-- Beginner: Create an interaction area around a world position.
cmgCall4(textValue3, workValue13, numberValue12, cmgCall5, textValue5, stringHelper2, numberValue15, dataTable4)
cmgCall4 = tCMG
cmgCall4 = cmgCall4.addMarker
textValue3 = cmgCall.menuPosition
textValue3 = textValue3.x
workValue13 = cmgCall.menuPosition
workValue13 = workValue13.y
numberValue12 = cmgCall.menuPosition
numberValue12 = numberValue12.z
numberValue12 = numberValue12 - 1.0
cmgCall5 = 1.0
textValue5 = 1.0
stringHelper2 = 1.0
numberValue15 = 255
dataTable4 = 0
textValue6 = 0
cmgCall6 = 170
numberValue17 = 50
textValue7 = 27
-- Beginner: Create a world marker.
cmgCall4(textValue3, workValue13, numberValue12, cmgCall5, textValue5, stringHelper2, numberValue15, dataTable4, textValue6, cmgCall6, numberValue17, textValue7)
cmgCall4 = CMG
cmgCall4 = cmgCall4.createDynamicPed
textValue3 = -1806291497
workValue13 = cmgCall.npcPosition
workValue13 = workValue13.xyz
numberValue12 = cmgCall.npcPosition
numberValue12 = numberValue12.w
cmgCall5 = true
textValue5 = nil
stringHelper2 = nil
numberValue15 = 100.0
dataTable4 = false
function textValue6()
  local arg1, arg2
end
cmgCall4(textValue3, workValue13, numberValue12, cmgCall5, textValue5, stringHelper2, numberValue15, dataTable4, textValue6)
cmgCall4 = RMenu
cmgCall4 = cmgCall4.Add
textValue3 = "farming"
workValue13 = "mainmenu"
numberValue12 = RageUI
numberValue12 = numberValue12.CreateMenu
cmgCall5 = "CMG Farming"
textValue5 = "~b~CMG Farming"
stringHelper2 = CMG
stringHelper2 = stringHelper2.getRageUIMenuWidth
stringHelper2 = stringHelper2()
numberValue15 = CMG
numberValue15 = numberValue15.getRageUIMenuHeight
numberValue15, dataTable4, textValue6, cmgCall6, numberValue17, textValue7 = numberValue15()
numberValue12, cmgCall5, textValue5, stringHelper2, numberValue15, dataTable4, textValue6, cmgCall6, numberValue17, textValue7 = numberValue12(cmgCall5, textValue5, stringHelper2, numberValue15, dataTable4, textValue6, cmgCall6, numberValue17, textValue7)
cmgCall4(textValue3, workValue13, numberValue12, cmgCall5, textValue5, stringHelper2, numberValue15, dataTable4, textValue6, cmgCall6, numberValue17, textValue7)
cmgCall4 = RMenu
cmgCall4 = cmgCall4.Add
textValue3 = "farming"
workValue13 = "status"
numberValue12 = RageUI
numberValue12 = numberValue12.CreateSubMenu
cmgCall5 = RMenu
textValue5 = cmgCall5
cmgCall5 = cmgCall5.Get
stringHelper2 = "farming"
numberValue15 = "mainmenu"
-- Beginner: result below is menu.
cmgCall5 = cmgCall5(textValue5, stringHelper2, numberValue15)
textValue5 = "CMG Farming"
stringHelper2 = "~b~CMG Farming"
numberValue15 = CMG
numberValue15 = numberValue15.getRageUIMenuWidth
numberValue15 = numberValue15()
dataTable4 = CMG
dataTable4 = dataTable4.getRageUIMenuHeight
dataTable4, textValue6, cmgCall6, numberValue17, textValue7 = dataTable4()
numberValue12, cmgCall5, textValue5, stringHelper2, numberValue15, dataTable4, textValue6, cmgCall6, numberValue17, textValue7 = numberValue12(cmgCall5, textValue5, stringHelper2, numberValue15, dataTable4, textValue6, cmgCall6, numberValue17, textValue7)
cmgCall4(textValue3, workValue13, numberValue12, cmgCall5, textValue5, stringHelper2, numberValue15, dataTable4, textValue6, cmgCall6, numberValue17, textValue7)
function cmgCall4(arg1)
  local arg2, arg3, workValue16, tableHelper, flag19, coords2, workValue21, position, workValue22
  arg2 = pairs
  arg3 = CMG
  arg3 = arg3.getAllVehicles
  arg3, workValue16, tableHelper, flag19, coords2, workValue21, position, workValue22 = arg3()
  arg2, arg3, workValue16, tableHelper = arg2(arg3, workValue16, tableHelper, flag19, coords2, workValue21, position, workValue22)
  for flag19, coords2 in arg2, arg3, workValue16, tableHelper do
    workValue21 = GetEntityCoords
    position = coords2
    workValue22 = true
    -- Beginner: result below is entityCoords.
    workValue21 = workValue21(position, workValue22)
    workValue21 = workValue21 - arg1
    workValue21 = #workValue21
    if workValue21 < 5.0 then
      workValue21 = false
      return workValue21
    end
  end
  arg2 = true
  return arg2
end
function textValue3(arg1)
  local arg2, arg3, workValue16, tableHelper, flag19, coords2, workValue21, position, workValue22, flag, flag2, modelValue
  arg2 = 0
  arg3 = 100.0
  workValue16 = pairs
  tableHelper = CMG
  tableHelper = tableHelper.getAllVehicles
  tableHelper, flag19, coords2, workValue21, position, workValue22, flag, flag2, modelValue = tableHelper()
  workValue16, tableHelper, flag19, coords2 = workValue16(tableHelper, flag19, coords2, workValue21, position, workValue22, flag, flag2, modelValue)
  for workValue21, position in workValue16, tableHelper, flag19, coords2 do
    workValue22 = GetEntityModel
    flag = position
    -- Beginner: result below is modelHash.
    workValue22 = workValue22(flag)
    if workValue22 == arg1 then
      workValue22 = GetEntityAttachedTo
      flag = position
      workValue22 = workValue22(flag)
      if 0 == workValue22 then
        workValue22 = CMG
        workValue22 = workValue22.getPlayerCoords
        -- Beginner: result below is playerCoords.
        workValue22 = workValue22()
        flag = GetEntityCoords
        flag2 = position
        modelValue = true
        -- Beginner: result below is entityCoords.
        flag = flag(flag2, modelValue)
        workValue22 = workValue22 - flag
        workValue22 = #workValue22
        if arg3 > workValue22 then
          arg2 = position
          arg3 = workValue22
        end
      end
    end
  end
  if 0 ~= arg2 then
    workValue16 = GetEntityCoords
    tableHelper = arg2
    flag19 = true
    -- Beginner: result below is entityCoords.
    workValue16 = workValue16(tableHelper, flag19)
    tableHelper = SetNewWaypoint
    flag19 = workValue16.x
    coords2 = workValue16.y
    tableHelper(flag19, coords2)
  end
end
function workValue13()
  local arg1, arg2, arg3, workValue16, tableHelper, flag19, coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  numberValue18 = arg1
  arg1 = pairs
  arg2 = dataTable7
  arg1, arg2, arg3, workValue16 = arg1(arg2)
  for tableHelper, flag19 in arg1, arg2, arg3, workValue16 do
    coords2 = DoesEntityExist
    workValue21 = flag19
    coords2 = coords2(workValue21)
    if coords2 then
      coords2 = GetEntityModel
      workValue21 = flag19
      -- Beginner: result below is modelHash.
      coords2 = coords2(workValue21)
      coords2 = -2076478498 ~= coords2
      workValue21 = NetworkHasControlOfEntity
      position = flag19
      workValue21 = workValue21(position)
      if workValue21 and coords2 then
        workValue21 = DeleteEntity
        position = flag19
        -- Beginner: Delete a GTA entity.
        workValue21(position)
      end
      if coords2 then
        workValue21 = GetBlipFromEntity
        position = flag19
        workValue21 = workValue21(position)
        position = DoesBlipExist
        workValue22 = workValue21
        position = position(workValue22)
        if position then
          position = RemoveBlip
          workValue22 = workValue21
          position(workValue22)
        end
      end
    end
  end
  arg1 = false
  arg2 = pairs
  arg3 = cmgCall.tractorSpawnPositions
  arg2, arg3, workValue16, tableHelper = arg2(arg3)
  for flag19, coords2 in arg2, arg3, workValue16, tableHelper do
    workValue21 = cmgCall4
    position = coords2.xyz
    workValue21 = workValue21(position)
    if workValue21 then
      workValue21 = CMG
      workValue21 = workValue21.requestEntitySpawn
      position = "farming_tractor"
      workValue22 = coords2.xyz
      workValue21(position, workValue22)
      workValue21 = CMG
      workValue21 = workValue21.spawnVehicle
      position = -2076478498
      workValue22 = coords2.x
      flag = coords2.y
      flag2 = coords2.z
      modelValue = coords2.w
      flag3 = false
      flag4 = true
      flag6 = true
      workValue21 = workValue21(position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6)
      position = table
      position = position.insert
      workValue22 = dataTable7
      flag = workValue21
      position(workValue22, flag)
      position = AddBlipForEntity
      workValue22 = workValue21
      -- Beginner: result below is blipHandle.
      position = position(workValue22)
      workValue22 = SetBlipSprite
      flag = position
      flag2 = 477
      workValue22(flag, flag2)
      workValue22 = SetBlipColour
      flag = position
      flag2 = 5
      workValue22(flag, flag2)
      arg1 = true
      break
    end
  end
  arg2 = false
  arg3 = pairs
  workValue16 = cmgCall.trailerSpawnPositions
  arg3, workValue16, tableHelper, flag19 = arg3(workValue16)
  for coords2, workValue21 in arg3, workValue16, tableHelper, flag19 do
    position = cmgCall4
    workValue22 = workValue21.xyz
    position = position(workValue22)
    if position then
      position = false
      workValue22 = workValue17
      if workValue22 then
        workValue22 = workValue17.stage
        if "HARVESTED" == workValue22 then
          position = true
        end
      end
      workValue22 = CMG
      workValue22 = workValue22.requestEntitySpawn
      flag = "farming_trailer"
      flag2 = workValue21.xyz
      modelValue = position
      workValue22(flag, flag2, modelValue)
      workValue22 = CMG
      workValue22 = workValue22.spawnVehicle
      if position then
        flag = cmgCall.grainModel
        if flag then
          goto flow_label_137
        end
      end
      flag = cmgCall.rakeModel
      ::flow_label_137::
      flag2 = workValue21.x
      modelValue = workValue21.y
      flag3 = workValue21.z
      flag4 = workValue21.w
      flag6 = false
      flag7 = true
      coords = true
      workValue22 = workValue22(flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords)
      flag = table
      flag = flag.insert
      flag2 = dataTable7
      modelValue = workValue22
      flag(flag2, modelValue)
      flag = AddBlipForEntity
      flag2 = workValue22
      -- Beginner: result below is blipHandle.
      flag = flag(flag2)
      flag2 = SetBlipSprite
      modelValue = flag
      flag3 = 479
      flag2(modelValue, flag3)
      flag2 = SetBlipColour
      modelValue = flag
      flag3 = 5
      flag2(modelValue, flag3)
      arg2 = true
      break
    end
  end
  if not arg1 then
    arg3 = notify
    workValue16 = "~r~Unable to spawn tractor. There is no available space left."
    -- Beginner: Show a notification to the player.
    arg3(workValue16)
  end
  if not arg2 then
    arg3 = notify
    workValue16 = "~r~Unable to spawn trailer. There is no available space left."
    arg3(workValue16)
  end
end
numberValue12 = {}
numberValue12.GROWN = "Grown & Ready"
numberValue12.HARVESTED = "Harvested"
numberValue12.PLANTED = "Planted"
cmgCall5 = RageUI
cmgCall5 = cmgCall5.CreateWhile
textValue5 = 1.0
stringHelper2 = RMenu
numberValue15 = stringHelper2
stringHelper2 = stringHelper2.Get
dataTable4 = "farming"
textValue6 = "mainmenu"
-- Beginner: result below is menu.
stringHelper2 = stringHelper2(numberValue15, dataTable4, textValue6)
numberValue15 = nil
function dataTable4()
  local arg1, arg2, arg3, workValue16, tableHelper, flag19
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue16 = "farming"
  tableHelper = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue16, tableHelper)
  arg3 = true
  workValue16 = false
  tableHelper = true
  function flag19()
    local rageUiCall, textValue, textValue4, dataTable6, flag18, workValue18, workValue20, textValue9, textValue10, textValue11
    rageUiCall = workValue17
    if not rageUiCall then
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ButtonWithStyle
      textValue = "~y~Start Job"
      textValue4 = ""
      dataTable6 = {}
      dataTable6.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag18 = true
      function workValue18(arg12, arg22, arg32)
        local gameTime, textValue8
        if arg32 then
          gameTime = TriggerServerEvent
          textValue8 = "10a03c8ecd"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "10a03c8ecd".
          gameTime(textValue8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall(textValue, textValue4, dataTable6, flag18, workValue18)
    end
    rageUiCall = workValue17
    if rageUiCall then
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ButtonWithStyle
      textValue = "Request Equipment"
      textValue4 = ""
      dataTable6 = {}
      dataTable6.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag18 = true
      function workValue18(arg12, arg22, arg32)
        local gameTime, textValue8
        if arg32 then
          gameTime = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          gameTime = gameTime()
          textValue8 = numberValue18
          gameTime = gameTime - textValue8
          textValue8 = 12000
          if gameTime < textValue8 then
            gameTime = notify
            textValue8 = "~r~Please wait another 2 minutes before requesting equipment."
            -- Beginner: Show a notification to the player.
            gameTime(textValue8)
          else
            gameTime = workValue13
            gameTime()
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall(textValue, textValue4, dataTable6, flag18, workValue18)
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ButtonWithStyle
      textValue = "~r~End Job"
      textValue4 = ""
      dataTable6 = {}
      dataTable6.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag18 = true
      function workValue18(arg12, arg22, arg32)
        local gameTime, textValue8
        if arg32 then
          gameTime = TriggerServerEvent
          textValue8 = "3bea630af8"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3bea630af8".
          gameTime(textValue8)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall(textValue, textValue4, dataTable6, flag18, workValue18)
    end
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue = "Field Status"
    textValue4 = ""
    dataTable6 = {}
    dataTable6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag18 = true
    function workValue18(arg12, arg22, arg32)
      local gameTime, textValue8
      if arg32 then
        gameTime = nil
        workValue19 = gameTime
        gameTime = TriggerServerEvent
        textValue8 = "46d9e512b2"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "46d9e512b2".
        gameTime(textValue8)
      end
    end
    workValue20 = RMenu
    textValue9 = workValue20
    workValue20 = workValue20.Get
    textValue10 = "farming"
    textValue11 = "status"
    workValue20, textValue9, textValue10, textValue11 = workValue20(textValue9, textValue10, textValue11)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue, textValue4, dataTable6, flag18, workValue18, workValue20, textValue9, textValue10, textValue11)
  end
  arg1(arg2, arg3, workValue16, tableHelper, flag19)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue16 = "farming"
  tableHelper = "status"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue16, tableHelper)
  arg3 = true
  workValue16 = false
  tableHelper = true
  function flag19()
    local rageUiCall, textValue, textValue4, dataTable6, flag18, workValue18, workValue20, textValue9, textValue10, textValue11, stringHelper, workValue2, workValue3, workValue4, workValue5
    rageUiCall = workValue19
    if rageUiCall then
      rageUiCall = pairs
      textValue = workValue19
      rageUiCall, textValue, textValue4, dataTable6 = rageUiCall(textValue)
      for flag18, workValue18 in rageUiCall, textValue, textValue4, dataTable6 do
        workValue20 = workValue18.farmerName
        if workValue20 then
          workValue20 = "~y~"
          if workValue20 then
            goto flow_label_15
          end
        end
        workValue20 = "~g~"
        ::flow_label_15::
        textValue9 = workValue18.stage
        if "PLANTED" == textValue9 then
          workValue20 = "~r~"
        end
        textValue9 = ""
        textValue10 = workValue18.farmerName
        if textValue10 then
          textValue10 = textValue9
          textValue11 = "Farmer: "
          stringHelper = workValue18.farmerName
          textValue10 = textValue10 .. textValue11 .. stringHelper
          textValue9 = textValue10
        end
        textValue10 = workValue18.timePlanted
        if textValue10 > 0 then
          textValue10 = #textValue9
          if textValue10 > 0 then
            textValue10 = textValue9
            textValue11 = " | "
            textValue10 = textValue10 .. textValue11
            textValue9 = textValue10
          end
          textValue10 = math
          textValue10 = textValue10.min
          textValue11 = 100
          stringHelper = math
          stringHelper = stringHelper.ceil
          workValue2 = workValue18.timeNow
          workValue3 = workValue18.timePlanted
          workValue2 = workValue2 - workValue3
          workValue3 = cmgCall.growTimeMilliseconds
          workValue2 = workValue2 / workValue3
          workValue2 = workValue2 * 100.0
          stringHelper, workValue2, workValue3, workValue4, workValue5 = stringHelper(workValue2)
          textValue10 = textValue10(textValue11, stringHelper, workValue2, workValue3, workValue4, workValue5)
          textValue11 = textValue9
          stringHelper = string
          stringHelper = stringHelper.format
          workValue2 = "%d%% Grown"
          workValue3 = textValue10
          stringHelper = stringHelper(workValue2, workValue3)
          textValue11 = textValue11 .. stringHelper
          textValue9 = textValue11
        end
        textValue10 = RageUI
        textValue10 = textValue10.ButtonWithStyle
        textValue11 = workValue18.fieldName
        stringHelper = textValue9
        workValue2 = {}
        workValue3 = workValue20
        workValue5 = workValue18.stage
        workValue4 = numberValue12
        workValue4 = workValue4[workValue5]
        workValue3 = workValue3 .. workValue4
        workValue2.RightLabel = workValue3
        workValue3 = true
        function workValue4(arg12, arg22, arg32)
        end
        -- Beginner: Draw a selectable RageUI menu button.
        textValue10(textValue11, stringHelper, workValue2, workValue3, workValue4)
      end
    end
  end
  arg1(arg2, arg3, workValue16, tableHelper, flag19)
end
cmgCall5(textValue5, stringHelper2, numberValue15, dataTable4)
cmgCall5 = RegisterNetEvent
textValue5 = "95c3eb0ca3"
-- Beginner: this function handles network event "95c3eb0ca3".
function stringHelper2(arg1)
  local arg2
  workValue19 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "95c3eb0ca3".
cmgCall5(textValue5, stringHelper2)
-- Beginner: this function handles network event "95c3eb0ca3".
function cmgCall5()
  local arg1, arg2, arg3, workValue16, tableHelper, flag19, coords2, workValue21, position
  arg1 = pairs
  arg2 = dataTable2
  arg1, arg2, arg3, workValue16 = arg1(arg2)
  for tableHelper, flag19 in arg1, arg2, arg3, workValue16 do
    coords2 = StopParticleFxLooped
    workValue21 = flag19
    position = true
    coords2(workValue21, position)
  end
end
function textValue5()
  local arg1, arg2
  arg1 = false
  flag20 = arg1
  arg1 = cmgCall5
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg1()
  arg1 = workValue17
  if not arg1 then
    return
  end
  arg1 = workValue17.stage
  if "GROWN" == arg1 then
    arg1 = 0
    numberValue = arg1
    arg1 = 0
    numberValue2 = arg1
    arg1 = 0
    numberValue3 = arg1
  else
    arg1 = workValue17.stage
    if "HARVESTED" == arg1 then
      arg1 = 0
      numberValue4 = arg1
      arg1 = {}
      dataTable = arg1
      arg1 = false
      flag5 = arg1
    end
  end
end
stringHelper2 = RegisterNetEvent
numberValue15 = "8a973949c8"
-- Beginner: this function handles network event "8a973949c8".
function dataTable4(arg1, arg2)
  local arg3
  arg3 = workValue17
  if not arg3 then
    arg3 = {}
    workValue17 = arg3
  end
  workValue17.fieldIndex = arg1
  workValue17.stage = arg2
  arg3 = cmgCall.fields
  arg3 = arg3[arg1]
  workValue17.config = arg3
  arg3 = textValue5
  arg3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8a973949c8".
stringHelper2(numberValue15, dataTable4)
stringHelper2 = RegisterNetEvent
numberValue15 = "a171c01ded"
-- Beginner: this function handles network event "a171c01ded".
function dataTable4(arg1)
  local arg2, arg3, workValue16
  arg2 = assert
  arg3 = workValue17
  workValue16 = "Attempting to set farming job stage whilst allocated field is invalid"
  arg2(arg3, workValue16)
  workValue17.stage = arg1
  arg2 = textValue5
  arg2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a171c01ded".
stringHelper2(numberValue15, dataTable4)
stringHelper2 = RegisterNetEvent
numberValue15 = "3bea630af8"
-- Beginner: this function handles network event "3bea630af8".
function dataTable4(arg1)
  local arg2, arg3
  arg2 = nil
  workValue17 = arg2
  if arg1 then
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 5000
    arg2(arg3)
    arg2 = notify
    arg3 = "~g~You have successfully tendered the field. Return to the warehouse to start another shift!"
    -- Beginner: Show a notification to the player.
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3bea630af8".
stringHelper2(numberValue15, dataTable4)
function stringHelper2(arg1)
  local arg2, arg3, workValue16, tableHelper, flag19
  arg2 = workValue17
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = workValue.translate
  arg3 = workValue.mat4
  workValue16 = 1.0
  arg3 = arg3(workValue16)
  workValue16 = workValue17.config
  workValue16 = workValue16.aabbCenter
  workValue16 = workValue16 - arg1
  arg2 = arg2(arg3, workValue16)
  arg3 = workValue.polygon
  arg3 = arg3.contains
  workValue16 = workValue17.config
  workValue16 = workValue16.polygons
  tableHelper = arg2[4]
  tableHelper = tableHelper.xyz
  flag19 = 100.0
  return arg3(workValue16, tableHelper, flag19)
end
function numberValue15(arg1)
  local arg2, arg3, workValue16, tableHelper, flag19, coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14
  arg2 = GetVehicleTrailerVehicle
  arg3 = arg1
  arg2, arg3 = arg2(arg3)
  if not arg2 or 0 == arg3 then
    workValue16 = textValue3
    tableHelper = cmgCall.rakeModel
    workValue16(tableHelper)
    workValue16 = drawNativeText
    tableHelper = "Attach the ~y~rake trailer~w~ to your ~y~tractor~w~"
    -- Beginner: Draw GTA-style text on screen.
    workValue16(tableHelper)
    return
  end
  workValue16 = GetEntityModel
  tableHelper = arg3
  -- Beginner: result below is modelHash.
  workValue16 = workValue16(tableHelper)
  tableHelper = cmgCall.rakeModel
  if workValue16 ~= tableHelper then
    tableHelper = cmgCall.grainModel
    if workValue16 == tableHelper then
      tableHelper = drawNativeNotification
      flag19 = "You have the grain trailer attached. You need the rake trailer for your field."
      -- Beginner: Show a GTA-style notification/help prompt.
      tableHelper(flag19)
    end
    tableHelper = drawNativeText
    flag19 = "Detach your current ~y~trailer~w~ at the ~y~warehouse~w~"
    -- Beginner: Draw GTA-style text on screen.
    tableHelper(flag19)
    return
  end
  tableHelper = CMG
  tableHelper = tableHelper.getPlayerCoords
  -- Beginner: result below is playerCoords.
  tableHelper = tableHelper()
  flag19 = stringHelper2
  coords2 = tableHelper
  flag19 = flag19(coords2)
  if not flag19 then
    flag19 = workValue17
    if flag19 then
      flag19 = drawNativeText
      coords2 = string
      coords2 = coords2.format
      workValue21 = "Drive to ~y~%s~w~"
      position = workValue17.config
      position = position.name
      coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14 = coords2(workValue21, position)
      flag19(coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14)
      flag19 = workValue17.config
      flag19 = flag19.position
      coords2 = GetGroundZFor_3dCoord
      workValue21 = flag19.x
      position = flag19.y
      workValue22 = flag19.z
      flag = nil
      flag2 = false
      coords2, workValue21 = coords2(workValue21, position, workValue22, flag, flag2)
      position = workValue17.config
      position = position.aabbCenter
      workValue22 = DrawMarker
      flag = 1
      flag2 = position.x
      modelValue = position.y
      flag3 = workValue21 or flag3
      if not coords2 or not workValue21 then
        flag3 = flag19.z
      end
      flag3 = flag3 - 10.0
      flag4 = 0.0
      flag6 = 0.0
      flag7 = 0.0
      coords = 0.0
      workValue7 = 0.0
      flag8 = 0.0
      flag9 = 15.0
      flag10 = 15.0
      numberValue6 = 125.0
      numberValue7 = 255
      numberValue8 = 255
      numberValue9 = 0
      numberValue10 = 125
      flag11 = false
      flag12 = false
      numberValue11 = 2
      flag13 = false
      numberValue13 = nil
      numberValue14 = nil
      flag14 = false
      workValue22(flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14)
      workValue22 = SetNewWaypoint
      flag = position.x
      flag2 = position.y
      workValue22(flag, flag2)
      workValue22 = false
      flag20 = workValue22
      return
    end
  end
  flag19 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag19 = flag19()
  coords2 = numberValue2
  flag19 = flag19 - coords2
  coords2 = 200
  if flag19 > coords2 then
    flag19 = 0
    numberValue = flag19
    flag19 = pairs
    coords2 = GetGamePool
    workValue21 = "CObject"
    coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14 = coords2(workValue21)
    flag19, coords2, workValue21, position = flag19(coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14)
    for workValue22, flag in flag19, coords2, workValue21, position do
      flag2 = GetEntityModel
      modelValue = flag
      -- Beginner: result below is modelHash.
      flag2 = flag2(modelValue)
      modelValue = table
      modelValue = modelValue.find
      flag3 = cmgCall.fieldObjects
      flag4 = flag2
      modelValue = modelValue(flag3, flag4)
      if modelValue then
        modelValue = GetEntityCoords
        flag3 = flag
        -- Beginner: result below is entityCoords.
        modelValue = modelValue(flag3)
        flag3 = modelValue.z
        if flag3 > 5.0 then
          flag3 = stringHelper2
          flag4 = modelValue
          flag3 = flag3(flag4)
          if flag3 then
            flag3 = numberValue
            flag3 = flag3 + 1
            numberValue = flag3
          end
        end
      end
      modelValue = numberValue
      if 0 == modelValue then
        modelValue = numberValue3
        modelValue = modelValue + 1
        numberValue3 = modelValue
      else
        modelValue = 0
        numberValue3 = modelValue
      end
    end
    flag19 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    flag19 = flag19()
    numberValue2 = flag19
  end
  flag19 = numberValue3
  if flag19 > 50 then
    flag19 = flag20
    if not flag19 then
      flag19 = TriggerServerEvent
      coords2 = "a9707ae981"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a9707ae981".
      flag19(coords2)
      flag19 = true
      flag20 = flag19
    end
  else
    flag19 = numberValue3
    if flag19 > 0 then
      flag19 = "~y~REMAINING CROPS"
      workValue6 = flag19
      flag19 = "NONE"
      workValue8 = flag19
      flag19 = drawNativeText
      coords2 = "Search the remaining ~y~field~w~ for any crops"
      -- Beginner: Draw GTA-style text on screen.
      flag19(coords2)
    else
      flag19 = "~y~REMAINING CROPS"
      workValue6 = flag19
      flag19 = tostring
      coords2 = numberValue
      flag19 = flag19(coords2)
      workValue8 = flag19
      flag19 = drawNativeText
      coords2 = "Harvest the remaining ~y~crops~w~ with your tractor"
      flag19(coords2)
    end
  end
end
function dataTable4(arg1)
  local arg2, arg3, workValue16, tableHelper, flag19, coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14, flag15, numberValue16, flag16, workValue14, workValue15, flag17
  arg2 = GetVehicleTrailerVehicle
  arg3 = arg1
  arg2, arg3 = arg2(arg3)
  if not arg2 or 0 == arg3 then
    workValue16 = textValue3
    tableHelper = cmgCall.grainModel
    workValue16(tableHelper)
    workValue16 = drawNativeText
    tableHelper = "Attach the ~y~grain trailer~w~ to your ~y~tractor~w~"
    -- Beginner: Draw GTA-style text on screen.
    workValue16(tableHelper)
    workValue16 = cmgCall5
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    workValue16()
    return
  end
  workValue16 = GetEntityModel
  tableHelper = arg3
  -- Beginner: result below is modelHash.
  workValue16 = workValue16(tableHelper)
  tableHelper = cmgCall.grainModel
  if workValue16 ~= tableHelper then
    tableHelper = cmgCall.rakeModel
    if workValue16 == tableHelper then
      tableHelper = drawNativeNotification
      flag19 = "You have the rake trailer attached. You need the grain trailer for your field."
      -- Beginner: Show a GTA-style notification/help prompt.
      tableHelper(flag19)
    end
    tableHelper = drawNativeText
    flag19 = "Detach your current ~y~trailer~w~ at the ~y~warehouse~w~"
    -- Beginner: Draw GTA-style text on screen.
    tableHelper(flag19)
    tableHelper = cmgCall5
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    tableHelper()
    return
  end
  tableHelper = CMG
  tableHelper = tableHelper.getPlayerCoords
  -- Beginner: result below is playerCoords.
  tableHelper = tableHelper()
  flag19 = stringHelper2
  coords2 = tableHelper
  flag19 = flag19(coords2)
  if not flag19 then
    flag19 = workValue17
    if flag19 then
      flag19 = drawNativeText
      coords2 = string
      coords2 = coords2.format
      workValue21 = "Drive to ~y~%s~w~"
      position = workValue17.config
      position = position.name
      coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14, flag15, numberValue16, flag16, workValue14, workValue15, flag17 = coords2(workValue21, position)
      -- Beginner: Draw GTA-style text on screen.
      flag19(coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14, flag15, numberValue16, flag16, workValue14, workValue15, flag17)
      flag19 = workValue17.config
      flag19 = flag19.position
      coords2 = GetGroundZFor_3dCoord
      workValue21 = flag19.x
      position = flag19.y
      workValue22 = flag19.z
      flag = nil
      flag2 = false
      coords2, workValue21 = coords2(workValue21, position, workValue22, flag, flag2)
      position = workValue17.config
      position = position.aabbCenter
      workValue22 = DrawMarker
      flag = 1
      flag2 = position.x
      modelValue = position.y
      flag3 = workValue21 or flag3
      if not coords2 or not workValue21 then
        flag3 = flag19.z
      end
      flag3 = flag3 - 10.0
      flag4 = 0.0
      flag6 = 0.0
      flag7 = 0.0
      coords = 0.0
      workValue7 = 0.0
      flag8 = 0.0
      flag9 = 15.0
      flag10 = 15.0
      numberValue6 = 125.0
      numberValue7 = 255
      numberValue8 = 255
      numberValue9 = 0
      numberValue10 = 125
      flag11 = false
      flag12 = false
      numberValue11 = 2
      flag13 = false
      numberValue13 = nil
      numberValue14 = nil
      flag14 = false
      workValue22(flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14)
      workValue22 = SetNewWaypoint
      flag = position.x
      flag2 = position.y
      workValue22(flag, flag2)
      workValue22 = false
      flag20 = workValue22
      workValue22 = cmgCall5
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      workValue22()
      return
    end
  end
  flag19 = flag5
  if not flag19 then
    flag19 = pairs
    coords2 = GetGamePool
    workValue21 = "CObject"
    coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14, flag15, numberValue16, flag16, workValue14, workValue15, flag17 = coords2(workValue21)
    flag19, coords2, workValue21, position = flag19(coords2, workValue21, position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14, flag15, numberValue16, flag16, workValue14, workValue15, flag17)
    for workValue22, flag in flag19, coords2, workValue21, position do
      flag2 = GetEntityModel
      modelValue = flag
      -- Beginner: result below is modelHash.
      flag2 = flag2(modelValue)
      modelValue = table
      modelValue = modelValue.find
      flag3 = cmgCall.fieldObjects
      flag4 = flag2
      modelValue = modelValue(flag3, flag4)
      if modelValue then
        modelValue = GetEntityCoords
        flag3 = flag
        -- Beginner: result below is entityCoords.
        modelValue = modelValue(flag3)
        flag3 = modelValue.z
        if flag3 < 5.0 then
          flag3 = stringHelper2
          flag4 = modelValue
          flag3 = flag3(flag4)
          if flag3 then
            flag3 = table
            flag3 = flag3.insert
            flag4 = dataTable
            flag6 = modelValue
            flag3(flag4, flag6)
          end
        end
      end
    end
    flag19 = dataTable
    flag19 = #flag19
    numberValue4 = flag19
    flag19 = true
    flag5 = flag19
  end
  flag19 = dataTable
  flag19 = #flag19
  if flag19 >= 5 then
    flag19 = flag19 - 5
  end
  coords2 = CMG
  coords2 = coords2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  coords2 = coords2()
  workValue21 = pairs
  position = dataTable
  workValue21, position, workValue22, flag = workValue21(position)
  for flag2, modelValue in workValue21, position, workValue22, flag do
    flag3 = dataTable
    flag3 = #flag3
    if not (flag3 < 75) then
      flag3 = coords2 - modelValue
      flag3 = #flag3
      if not (flag3 < 50.0) then
        goto flow_label_208
      end
    end
    flag3 = GetGroundZFor_3dCoord
    flag4 = modelValue.x
    flag6 = modelValue.y
    flag7 = coords2.z
    flag7 = flag7 + 15.0
    coords = nil
    workValue7 = false
    flag3, flag4 = flag3(flag4, flag6, flag7, coords, workValue7)
    flag6 = DrawMarker
    flag7 = 0
    coords = modelValue.x
    workValue7 = modelValue.y
    flag8 = flag4 or flag8
    if not flag3 or not flag4 then
      flag8 = coords2.z
    end
    flag9 = 0.0
    flag10 = 0.0
    numberValue6 = 0.0
    numberValue7 = 0.0
    numberValue8 = 0.0
    numberValue9 = 0.0
    numberValue10 = 0.2
    flag11 = 0.2
    flag12 = 0.2
    numberValue11 = 255
    flag13 = 255
    numberValue13 = 0
    numberValue14 = 155
    flag14 = false
    flag15 = false
    numberValue16 = 2
    flag16 = false
    workValue14 = nil
    workValue15 = nil
    flag17 = false
    flag6(flag7, coords, workValue7, flag8, flag9, flag10, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, flag11, flag12, numberValue11, flag13, numberValue13, numberValue14, flag14, flag15, numberValue16, flag16, workValue14, workValue15, flag17)
    ::flow_label_208::
  end
  workValue21 = dataTable2
  workValue21 = #workValue21
  if workValue21 < 25 then
    workValue21 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workValue21 = workValue21()
    position = numberValue5
    workValue21 = workValue21 - position
    position = 250
    if workValue21 > position then
      workValue21 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      workValue21 = workValue21()
      numberValue5 = workValue21
      workValue21 = CMG
      workValue21 = workValue21.loadPtfx
      position = "core"
      workValue21(position)
      workValue21 = StartParticleFxLoopedOnEntityBone
      position = "ent_amb_fbi_falling_debris"
      workValue22 = arg3
      flag = 0.0
      flag2 = 0.0
      modelValue = 0.0
      flag3 = 0.0
      flag4 = 0.0
      flag6 = 0.0
      flag7 = -1
      coords = 1.0
      workValue7 = false
      flag8 = false
      flag9 = false
      workValue21 = workValue21(position, workValue22, flag, flag2, modelValue, flag3, flag4, flag6, flag7, coords, workValue7, flag8, flag9)
      position = table
      position = position.insert
      workValue22 = dataTable2
      flag = workValue21
      position(workValue22, flag)
    end
  end
  workValue21 = numberValue4
  workValue21 = flag19 / workValue21
  position = 1.0
  workValue21 = position - workValue21
  workValue21 = workValue21 * 100.0
  position = math
  position = position.ceil
  workValue22 = workValue21
  position = position(workValue22)
  workValue22 = "~y~AREA PLANTED"
  workValue6 = workValue22
  workValue22 = string
  workValue22 = workValue22.format
  flag = "%s%%"
  flag2 = position
  workValue22 = workValue22(flag, flag2)
  workValue8 = workValue22
  workValue22 = drawNativeText
  flag = "Drive on the ~y~field~w~ to plant seeds"
  -- Beginner: Draw GTA-style text on screen.
  workValue22(flag)
  if position >= 98 then
    workValue22 = flag20
    if not workValue22 then
      workValue22 = TriggerServerEvent
      flag = "4f5fc9931b"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4f5fc9931b".
      workValue22(flag)
      workValue22 = true
      flag20 = workValue22
    end
  end
end
function textValue6()
  local arg1, arg2, arg3, workValue16, tableHelper
  arg1 = nil
  workValue6 = arg1
  arg1 = nil
  workValue8 = arg1
  arg1 = workValue17
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.setHudTimerBarProviderActive
    arg2 = "farmingJob"
    arg3 = false
    arg1(arg2, arg3)
    return
  end
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  arg1, arg2 = arg1()
  if 0 == arg1 or not arg2 then
    arg3 = CMG
    arg3 = arg3.setHudTimerBarProviderActive
    workValue16 = "farmingJob"
    tableHelper = false
    arg3(workValue16, tableHelper)
    arg3 = drawNativeText
    workValue16 = "Enter the ~y~tractor~w~ or request a new one at the ~y~warehouse~w~"
    -- Beginner: Draw GTA-style text on screen.
    arg3(workValue16)
    return
  end
  arg3 = workValue17.stage
  if "GROWN" == arg3 then
    arg3 = numberValue15
    workValue16 = arg1
    arg3(workValue16)
  else
    arg3 = workValue17.stage
    if "HARVESTED" == arg3 then
      arg3 = dataTable4
      workValue16 = arg1
      arg3(workValue16)
    else
      arg3 = workValue17.stage
      if "PLANTED" == arg3 then
        arg3 = drawNativeText
        workValue16 = "Return to the ~y~warehouse~w~ to drop off your equipment"
        -- Beginner: Draw GTA-style text on screen.
        arg3(workValue16)
      end
    end
  end
  arg3 = CMG
  arg3 = arg3.setHudTimerBarProviderActive
  workValue16 = "farmingJob"
  tableHelper = workValue6
  tableHelper = nil ~= tableHelper
  arg3(workValue16, tableHelper)
end
cmgCall6 = CMG
cmgCall6 = cmgCall6.createThreadOnTick
numberValue17 = textValue6
textValue7 = "Farming"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall6(numberValue17, textValue7)